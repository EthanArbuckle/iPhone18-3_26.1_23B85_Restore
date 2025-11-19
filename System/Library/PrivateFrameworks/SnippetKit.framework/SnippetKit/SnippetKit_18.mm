uint64_t getEnumTagSinglePayload for RFImage.Source.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF9)
  {
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

    v5 = (*a1 | (v4 << 8)) - 8;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v5 = v6 - 8;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for RFImage.Source.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_26A288DA4(unsigned __int8 *a1, int a2)
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

  return OUTLINED_FUNCTION_79(a1);
}

_BYTE *sub_26A288DF0(_BYTE *result, int a2, int a3)
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

unint64_t sub_26A288EA0()
{
  result = qword_2803713A8;
  if (!qword_2803713A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803713A8);
  }

  return result;
}

unint64_t sub_26A288EF8()
{
  result = qword_2803713B0;
  if (!qword_2803713B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803713B0);
  }

  return result;
}

unint64_t sub_26A288F50()
{
  result = qword_2803713B8;
  if (!qword_2803713B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803713B8);
  }

  return result;
}

unint64_t sub_26A288FA8()
{
  result = qword_2803713C0;
  if (!qword_2803713C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803713C0);
  }

  return result;
}

unint64_t sub_26A289000()
{
  result = qword_2803713C8;
  if (!qword_2803713C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803713C8);
  }

  return result;
}

unint64_t sub_26A289058()
{
  result = qword_2803713D0;
  if (!qword_2803713D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803713D0);
  }

  return result;
}

unint64_t sub_26A2890B0()
{
  result = qword_2803713D8;
  if (!qword_2803713D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803713D8);
  }

  return result;
}

unint64_t sub_26A289108()
{
  result = qword_2803713E0;
  if (!qword_2803713E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803713E0);
  }

  return result;
}

unint64_t sub_26A289160()
{
  result = qword_2803713E8;
  if (!qword_2803713E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803713E8);
  }

  return result;
}

unint64_t sub_26A2891B8()
{
  result = qword_2803713F0;
  if (!qword_2803713F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803713F0);
  }

  return result;
}

unint64_t sub_26A289210()
{
  result = qword_2803713F8;
  if (!qword_2803713F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803713F8);
  }

  return result;
}

unint64_t sub_26A289268()
{
  result = qword_280371400;
  if (!qword_280371400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280371400);
  }

  return result;
}

unint64_t sub_26A2892C0()
{
  result = qword_280371408;
  if (!qword_280371408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280371408);
  }

  return result;
}

unint64_t sub_26A289318()
{
  result = qword_280371410;
  if (!qword_280371410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280371410);
  }

  return result;
}

unint64_t sub_26A289370()
{
  result = qword_280371418;
  if (!qword_280371418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280371418);
  }

  return result;
}

unint64_t sub_26A2893C8()
{
  result = qword_280371420;
  if (!qword_280371420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280371420);
  }

  return result;
}

unint64_t sub_26A289420()
{
  result = qword_280371428;
  if (!qword_280371428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280371428);
  }

  return result;
}

unint64_t sub_26A289478()
{
  result = qword_280371430;
  if (!qword_280371430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280371430);
  }

  return result;
}

unint64_t sub_26A2894D0()
{
  result = qword_280371438;
  if (!qword_280371438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280371438);
  }

  return result;
}

unint64_t sub_26A289528()
{
  result = qword_280371440;
  if (!qword_280371440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280371440);
  }

  return result;
}

unint64_t sub_26A289580()
{
  result = qword_280371448;
  if (!qword_280371448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280371448);
  }

  return result;
}

unint64_t sub_26A2895D8()
{
  result = qword_280371450;
  if (!qword_280371450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280371450);
  }

  return result;
}

unint64_t sub_26A289630()
{
  result = qword_280371458;
  if (!qword_280371458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280371458);
  }

  return result;
}

unint64_t sub_26A289688()
{
  result = qword_280371460;
  if (!qword_280371460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280371460);
  }

  return result;
}

unint64_t sub_26A2896E0()
{
  result = qword_280371468;
  if (!qword_280371468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280371468);
  }

  return result;
}

unint64_t sub_26A289738()
{
  result = qword_280371470;
  if (!qword_280371470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280371470);
  }

  return result;
}

unint64_t sub_26A289790()
{
  result = qword_280371478;
  if (!qword_280371478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280371478);
  }

  return result;
}

unint64_t sub_26A2897E8()
{
  result = qword_280371480;
  if (!qword_280371480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280371480);
  }

  return result;
}

unint64_t sub_26A289840()
{
  result = qword_280371488;
  if (!qword_280371488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280371488);
  }

  return result;
}

unint64_t sub_26A289898()
{
  result = qword_280371490;
  if (!qword_280371490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280371490);
  }

  return result;
}

unint64_t sub_26A2898F0()
{
  result = qword_280371498;
  if (!qword_280371498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280371498);
  }

  return result;
}

unint64_t sub_26A289948()
{
  result = qword_2803714A0;
  if (!qword_2803714A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803714A0);
  }

  return result;
}

unint64_t sub_26A2899A0()
{
  result = qword_2803714A8;
  if (!qword_2803714A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803714A8);
  }

  return result;
}

unint64_t sub_26A2899F8()
{
  result = qword_2803714B0;
  if (!qword_2803714B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803714B0);
  }

  return result;
}

unint64_t sub_26A289A50()
{
  result = qword_2803714B8;
  if (!qword_2803714B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803714B8);
  }

  return result;
}

unint64_t sub_26A289AA8()
{
  result = qword_2803714C0;
  if (!qword_2803714C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803714C0);
  }

  return result;
}

unint64_t sub_26A289B00()
{
  result = qword_2803714C8;
  if (!qword_2803714C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803714C8);
  }

  return result;
}

unint64_t sub_26A289B58()
{
  result = qword_2803714D0;
  if (!qword_2803714D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803714D0);
  }

  return result;
}

unint64_t sub_26A289BB0()
{
  result = qword_2803714D8;
  if (!qword_2803714D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803714D8);
  }

  return result;
}

unint64_t sub_26A289C08()
{
  result = qword_2803714E0;
  if (!qword_2803714E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803714E0);
  }

  return result;
}

unint64_t sub_26A289C60()
{
  result = qword_2803714E8;
  if (!qword_2803714E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803714E8);
  }

  return result;
}

unint64_t sub_26A289CB8()
{
  result = qword_2803714F0;
  if (!qword_2803714F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803714F0);
  }

  return result;
}

unint64_t sub_26A289D10()
{
  result = qword_2803714F8;
  if (!qword_2803714F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803714F8);
  }

  return result;
}

unint64_t sub_26A289D68()
{
  result = qword_280371500;
  if (!qword_280371500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280371500);
  }

  return result;
}

unint64_t sub_26A289DC0()
{
  result = qword_280371508;
  if (!qword_280371508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280371508);
  }

  return result;
}

unint64_t sub_26A289E18()
{
  result = qword_280371510;
  if (!qword_280371510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280371510);
  }

  return result;
}

unint64_t sub_26A289E70()
{
  result = qword_280371518;
  if (!qword_280371518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280371518);
  }

  return result;
}

unint64_t sub_26A289EC8()
{
  result = qword_280371520;
  if (!qword_280371520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280371520);
  }

  return result;
}

unint64_t sub_26A289F20()
{
  result = qword_280371528;
  if (!qword_280371528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280371528);
  }

  return result;
}

unint64_t sub_26A289F78()
{
  result = qword_280371530;
  if (!qword_280371530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280371530);
  }

  return result;
}

unint64_t sub_26A289FD0()
{
  result = qword_280371538;
  if (!qword_280371538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280371538);
  }

  return result;
}

unint64_t sub_26A28A028()
{
  result = qword_280371540;
  if (!qword_280371540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280371540);
  }

  return result;
}

unint64_t sub_26A28A080()
{
  result = qword_280371548;
  if (!qword_280371548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280371548);
  }

  return result;
}

unint64_t sub_26A28A0D8()
{
  result = qword_280371550;
  if (!qword_280371550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280371550);
  }

  return result;
}

unint64_t sub_26A28A130()
{
  result = qword_280371558;
  if (!qword_280371558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280371558);
  }

  return result;
}

unint64_t sub_26A28A188()
{
  result = qword_280371560;
  if (!qword_280371560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280371560);
  }

  return result;
}

unint64_t sub_26A28A1E0()
{
  result = qword_280371568;
  if (!qword_280371568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280371568);
  }

  return result;
}

unint64_t sub_26A28A238()
{
  result = qword_280371570;
  if (!qword_280371570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280371570);
  }

  return result;
}

unint64_t sub_26A28A290()
{
  result = qword_280371578;
  if (!qword_280371578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280371578);
  }

  return result;
}

unint64_t sub_26A28A2E8()
{
  result = qword_280371580;
  if (!qword_280371580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280371580);
  }

  return result;
}

unint64_t sub_26A28A340()
{
  result = qword_280371588;
  if (!qword_280371588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280371588);
  }

  return result;
}

unint64_t sub_26A28A398()
{
  result = qword_280371590;
  if (!qword_280371590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280371590);
  }

  return result;
}

unint64_t sub_26A28A3F0()
{
  result = qword_280371598;
  if (!qword_280371598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280371598);
  }

  return result;
}

unint64_t sub_26A28A448()
{
  result = qword_2803715A0;
  if (!qword_2803715A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803715A0);
  }

  return result;
}

unint64_t sub_26A28A4A0()
{
  result = qword_2803715A8;
  if (!qword_2803715A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803715A8);
  }

  return result;
}

unint64_t sub_26A28A4F8()
{
  result = qword_2803715B0;
  if (!qword_2803715B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803715B0);
  }

  return result;
}

unint64_t sub_26A28A550()
{
  result = qword_2803715B8;
  if (!qword_2803715B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803715B8);
  }

  return result;
}

unint64_t sub_26A28A5A8()
{
  result = qword_2803715C0;
  if (!qword_2803715C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803715C0);
  }

  return result;
}

unint64_t sub_26A28A600()
{
  result = qword_2803715C8;
  if (!qword_2803715C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803715C8);
  }

  return result;
}

unint64_t sub_26A28A658()
{
  result = qword_2803715D0;
  if (!qword_2803715D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803715D0);
  }

  return result;
}

unint64_t sub_26A28A6B0()
{
  result = qword_2803715D8;
  if (!qword_2803715D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803715D8);
  }

  return result;
}

unint64_t sub_26A28A708()
{
  result = qword_2803715E0;
  if (!qword_2803715E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803715E0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_16_17()
{

  return sub_26A424FF4();
}

uint64_t OUTLINED_FUNCTION_44_11()
{

  return sub_26A2824D8();
}

uint64_t OUTLINED_FUNCTION_48_13()
{

  return sub_26A425574();
}

uint64_t OUTLINED_FUNCTION_57_9()
{

  return sub_26A424F24();
}

uint64_t OUTLINED_FUNCTION_60_8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;
  return 0;
}

uint64_t OUTLINED_FUNCTION_64_7()
{
  result = v0;
  v3 = *(v1 - 200);
  return result;
}

uint64_t OUTLINED_FUNCTION_71_5()
{
  *(v1 - 136) = v0;
  v3 = *(v1 - 120);

  return sub_26A425034();
}

uint64_t OUTLINED_FUNCTION_76_6()
{
  *(v3 - 144) = v2;
  *(v3 - 136) = v1;
  *(v3 - 88) = v0;
  v5 = *(v3 - 96);

  return sub_26A425074();
}

uint64_t OUTLINED_FUNCTION_77_4()
{
  v3 = *(v0 - 104);
  v2 = *(v0 - 96);
  v4 = *(v0 - 136);
  v5 = *(v0 - 88);

  return sub_26A425114();
}

uint64_t OUTLINED_FUNCTION_78_6()
{
  v3 = *(v0 - 104);
  v2 = *(v0 - 96);
  v4 = *(v0 - 112);
  v5 = *(v0 - 88);

  return sub_26A425114();
}

uint64_t OUTLINED_FUNCTION_82_7()
{
  v2 = *(v0 - 144);

  return sub_26A425034();
}

uint64_t OUTLINED_FUNCTION_93_3()
{

  return swift_unknownObjectRelease();
}

uint64_t OUTLINED_FUNCTION_94_4()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_95_4()
{
  v3 = *(v0 - 168);
  v2 = *(v0 - 160);

  return sub_26A4250A4();
}

Swift::String __swiftcall ButtonContainer.description(redacted:)(Swift::Bool redacted)
{
  OUTLINED_FUNCTION_76();
  v2 = v1;
  v3 = type metadata accessor for _ProtoCustomCanvas();
  v4 = OUTLINED_FUNCTION_41(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_11();
  v246 = v7;
  v262 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CD58, &unk_26A437B60);
  OUTLINED_FUNCTION_12(v262);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v10);
  v277 = v243 - v11;
  OUTLINED_FUNCTION_45();
  v12 = type metadata accessor for CustomCanvas();
  v13 = OUTLINED_FUNCTION_41(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_48();
  v272 = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036EC48, &unk_26A4385C0);
  v20 = OUTLINED_FUNCTION_41(v19);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_8();
  v267 = v23;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_48();
  v268 = v25;
  v26 = OUTLINED_FUNCTION_45();
  v266 = type metadata accessor for _ProtoButton(v26);
  v27 = OUTLINED_FUNCTION_12(v266);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_48();
  v260 = v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CD38, &qword_26A437B70);
  v33 = OUTLINED_FUNCTION_41(v32);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v36);
  v265 = v243 - v37;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v38);
  v40 = v243 - v39;
  MEMORY[0x28223BE20](v41);
  v43 = v243 - v42;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CF20, &qword_26A426AA8);
  v45 = OUTLINED_FUNCTION_12(v44);
  v47 = *(v46 + 64);
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v48);
  v50 = v243 - v49;
  v51 = type metadata accessor for PlayerButton();
  v52 = OUTLINED_FUNCTION_41(v51);
  v54 = *(v53 + 64);
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_48();
  v274 = v57;
  OUTLINED_FUNCTION_45();
  v273 = type metadata accessor for Button();
  v58 = OUTLINED_FUNCTION_12(v273);
  v60 = *(v59 + 64);
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_11();
  v255 = v61;
  v62 = OUTLINED_FUNCTION_45();
  v63 = type metadata accessor for ButtonContainer.ButtonItem(v62);
  v64 = OUTLINED_FUNCTION_24(v63);
  v66 = v65;
  v68 = *(v67 + 64);
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_8();
  v279 = v69;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v70);
  OUTLINED_FUNCTION_48();
  v280 = v71;
  ButtonContainer.buttons.getter();
  v73 = v72;
  v74 = *(v72 + 16);
  if (!v74)
  {

    v78 = MEMORY[0x277D84F90];
    goto LABEL_100;
  }

  v275 = v50;
  v271 = v44;
  v264 = v43;
  v254 = v40;
  v284 = MEMORY[0x277D84F90];
  sub_26A10D50C();
  v75 = *(v66 + 80);
  OUTLINED_FUNCTION_166_0();
  v243[1] = v73;
  v77 = v73 + v76;
  v78 = v284;
  v278 = *(v66 + 72);
  v252 = 0x800000026A446720;
  v251 = 0x800000026A446740;
  v253 = v2 & 1;
  v245 = xmmword_26A437B50;
  v244 = xmmword_26A437B40;
  v250 = xmmword_26A4263A0;
  v247 = xmmword_26A437B30;
  v249 = xmmword_26A437B20;
  v248 = xmmword_26A437B10;
  v270 = v2;
  v269 = v63;
  while (2)
  {
    sub_26A28EB90();
    sub_26A28EB90();
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        sub_26A28EBE4();
        OUTLINED_FUNCTION_37_8();
        v89 = v256;
        sub_26A28EB90();
        if (v2)
        {
          _ProtoPlayerButton.redactedProto.getter(v257);
        }

        else
        {
          sub_26A28EB90();
        }

        v113 = v266;
        v114 = v275;
        OUTLINED_FUNCTION_37_8();
        v115 = v258;
        sub_26A28EBE4();
        v116 = v271;
        *(v115 + *(v271 + 32)) = v253;
        OUTLINED_FUNCTION_10_25();
        sub_26A28EC38(v89, v117);
        *(v115 + *(v116 + 28)) = MEMORY[0x277D84F90];
        sub_26A28EC90(v115, v114);
        v118 = type metadata accessor for _ProtoPlayerButton(0);
        v119 = *(v118 + 20);
        v120 = v268;
        sub_26A10FD9C();
        OUTLINED_FUNCTION_37(v120, 1, v113);
        if (v121)
        {
          v122 = v260;
          _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
          v123 = *(v113 + 20);
          if (qword_28036C428 != -1)
          {
            swift_once();
          }

          *(v122 + v123) = qword_280371710;
          EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v268, 1, v113);

          if (EnumTagSinglePayload != 1)
          {
            sub_26A0E48F0(v268, &qword_28036EC48, &unk_26A4385C0);
          }
        }

        else
        {
          sub_26A28EBE4();
        }

        sub_26A28EBE4();
        v125 = OUTLINED_FUNCTION_17_13();
        v126 = v273;
        __swift_storeEnumTagSinglePayload(v125, v127, v128, v273);
        v129 = v254;
        sub_26A10FD9C();
        OUTLINED_FUNCTION_37(v129, 1, v126);
        v130 = v263;
        if (v121)
        {
          v131 = OUTLINED_FUNCTION_161();
          sub_26A0E48F0(v131, v132, &qword_26A437B70);
          sub_26A0E48F0(v129, &qword_28036CD38, &qword_26A437B70);
          v133 = v275;
        }

        else
        {
          v134 = v271;
          v135 = v275;
          v136 = Button.description(redacted:)(v275[*(v271 + 32)]);
          OUTLINED_FUNCTION_4_27();
          sub_26A28EC38(v129, v137);
          v138 = (v136._object >> 56) & 0xF;
          if ((v136._object & 0x2000000000000000) == 0)
          {
            v138 = v136._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
          }

          if (v138)
          {
            v139 = *(v134 + 28);
            v140 = *(v135 + v139);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v230 = *(v140 + 16);
              OUTLINED_FUNCTION_14_13();
              sub_26A166CCC();
              v140 = v231;
            }

            v142 = *(v140 + 16);
            v141 = *(v140 + 24);
            v276 = v139;
            if (v142 >= v141 >> 1)
            {
              OUTLINED_FUNCTION_33_11();
              sub_26A166CCC();
              v140 = v232;
            }

            sub_26A0E48F0(v264, &qword_28036CD38, &qword_26A437B70);
            *(v140 + 16) = v142 + 1;
            OUTLINED_FUNCTION_35_15((v140 + 32 * v142));
            v143[3] = v136;
            v133 = v275;
            *&v275[v276] = v140;
            v113 = v266;
            v130 = v263;
          }

          else
          {

            sub_26A0E48F0(v264, &qword_28036CD38, &qword_26A437B70);
            v113 = v266;
            v133 = v135;
          }
        }

        v197 = *(v118 + 24);
        v198 = v267;
        sub_26A10FD9C();
        OUTLINED_FUNCTION_37(v198, 1, v113);
        if (v121)
        {
          _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
          v199 = v130;
          v200 = *(v113 + 20);
          if (qword_28036C428 != -1)
          {
            swift_once();
          }

          *(v199 + v200) = qword_280371710;
          v201 = __swift_getEnumTagSinglePayload(v198, 1, v113);

          if (v201 != 1)
          {
            sub_26A0E48F0(v267, &qword_28036EC48, &unk_26A4385C0);
          }
        }

        else
        {
          sub_26A28EBE4();
        }

        v202 = v265;
        sub_26A28EBE4();
        v203 = v273;
        __swift_storeEnumTagSinglePayload(v202, 0, 1, v273);
        v204 = v259;
        sub_26A10FD9C();
        OUTLINED_FUNCTION_37(v204, 1, v203);
        if (v121)
        {
          sub_26A0E48F0(v202, &qword_28036CD38, &qword_26A437B70);
          v205 = v204;
LABEL_93:
          sub_26A0E48F0(v205, &qword_28036CD38, &qword_26A437B70);
          goto LABEL_94;
        }

        v206 = v271;
        v207 = Button.description(redacted:)(*(v133 + *(v271 + 32)));
        OUTLINED_FUNCTION_4_27();
        sub_26A28EC38(v204, v208);
        v209 = (v207._object >> 56) & 0xF;
        if ((v207._object & 0x2000000000000000) == 0)
        {
          v209 = v207._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
        }

        if (!v209)
        {

          v205 = v265;
          goto LABEL_93;
        }

        v210 = *(v206 + 28);
        v211 = *(v133 + v210);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v233 = *(v211 + 16);
          OUTLINED_FUNCTION_14_13();
          sub_26A166CCC();
          v211 = v234;
        }

        v212 = *(v211 + 16);
        if (v212 >= *(v211 + 24) >> 1)
        {
          OUTLINED_FUNCTION_33_11();
          sub_26A166CCC();
          v211 = v235;
        }

        sub_26A0E48F0(v265, &qword_28036CD38, &qword_26A437B70);
        *(v211 + 16) = v212 + 1;
        OUTLINED_FUNCTION_35_15((v211 + 32 * v212));
        v213[3] = v207;
        v133 = v275;
        *&v275[v210] = v211;
LABEL_94:
        sub_26A0F8ED8();
        countAndFlagsBits = v214;
        object = v215;
        OUTLINED_FUNCTION_10_25();
        sub_26A28EC38(v274, v216);
        OUTLINED_FUNCTION_0_41();
        sub_26A28EC38(v280, v217);
        sub_26A0E48F0(v133, &qword_28036CF20, &qword_26A426AA8);
        LOBYTE(v2) = v270;
LABEL_95:
        v284 = v78;
        v218 = *(v78 + 16);
        if (v218 >= *(v78 + 24) >> 1)
        {
          OUTLINED_FUNCTION_33_11();
          sub_26A10D50C();
          v78 = v284;
        }

        *(v78 + 16) = v218 + 1;
        v219 = v78 + 16 * v218;
        *(v219 + 32) = countAndFlagsBits;
        *(v219 + 40) = object;
        v77 += v278;
        if (--v74)
        {
          continue;
        }

LABEL_100:
        v282 = v78;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB68, &qword_26A426580);
        sub_26A10D548();
        v236 = sub_26A424B54();
        v238 = v237;

        v282 = 0;
        v283 = 0xE000000000000000;
        sub_26A424EF4();

        v282 = 0xD000000000000022;
        v283 = 0x800000026A4495C0;
        v239 = sub_26A31B838(v236, v238);
        v241 = v240;

        MEMORY[0x26D65BA70](v239, v241);

        MEMORY[0x26D65BA70](0x290A5D20200ALL, 0xE600000000000000);
        OUTLINED_FUNCTION_75();
LABEL_103:
        result._object = v160;
        result._countAndFlagsBits = v159;
        return result;
      case 2u:
        v85 = v272;
        sub_26A28EBE4();
        OUTLINED_FUNCTION_37_8();
        v86 = v261;
        sub_26A28EB90();
        v87 = *(v85 + 64);
        if (v87)
        {
          sub_26A28EB90();
          v88 = MEMORY[0x277D84F90];
        }

        else
        {
          v90 = *(v86 + 64);
          OUTLINED_FUNCTION_23_20();
          v91 = v246;
          sub_26A28EB90();
          v88 = MEMORY[0x277D84F90];
          if ((v90 & 1) == 0)
          {
            v92 = *(v91 + 8);

            strcpy(v91, "SystemPlugin");
            *(v91 + 13) = 0;
            *(v91 + 14) = -5120;
            v93 = *(v91 + 24);

            *(v91 + 16) = 0x6C6F686563616C50;
            *(v91 + 24) = 0xEB00000000726564;
            v94 = *(v86 + 48);
            v95 = *(v86 + 56);

            OUTLINED_FUNCTION_21_3();
            sub_26A28E6C8();
            v97 = v96;
            v99 = v98;
            sub_26A0E4784(*(v91 + 32), *(v91 + 40));
            *(v91 + 32) = v97;
            *(v91 + 40) = v99;
          }

          sub_26A28EBE4();
        }

        v100 = v277;
        sub_26A28EBE4();
        v101 = v262;
        *(v100 + *(v262 + 32)) = v87 ^ 1;
        OUTLINED_FUNCTION_8_19();
        sub_26A28EC38(v86, v102);
        v103 = v100;
        v276 = *(v101 + 28);
        *(v100 + v276) = v88;
        v104 = *v100;
        v105 = v103[1];
        v106 = HIBYTE(v105) & 0xF;
        if ((v105 & 0x2000000000000000) == 0)
        {
          v106 = v104 & 0xFFFFFFFFFFFFLL;
        }

        if (v106)
        {
          OUTLINED_FUNCTION_28_11();
          MEMORY[0x26D65BA70](v104, v105);
          MEMORY[0x26D65BA70](34, 0xE100000000000000);
          v107 = v282;
          v108 = v283;
          sub_26A16822C();
          v110 = v109;
          v111 = *(v109 + 16);
          if (v111 >= *(v109 + 24) >> 1)
          {
            OUTLINED_FUNCTION_34_11();
            v110 = v225;
          }

          *(v110 + 16) = v111 + 1;
          OUTLINED_FUNCTION_35_15((v110 + 32 * v111));
          *(v112 + 48) = v107;
          *(v112 + 56) = v108;

          v103 = v277;
          *&v277[v276] = v110;
        }

        else
        {
          v110 = v88;
        }

        v145 = v103[2];
        v144 = v103[3];
        OUTLINED_FUNCTION_45_6();
        if (v147)
        {
          OUTLINED_FUNCTION_28_11();
          v148 = OUTLINED_FUNCTION_32_12();
          MEMORY[0x26D65BA70](v148);
          MEMORY[0x26D65BA70](34, 0xE100000000000000);
          v149 = v282;
          v150 = v283;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v226 = *(v110 + 16);
            OUTLINED_FUNCTION_14_13();
            sub_26A16822C();
            v110 = v227;
          }

          v151 = *(v110 + 16);
          if (v151 >= *(v110 + 24) >> 1)
          {
            OUTLINED_FUNCTION_34_11();
            v110 = v228;
          }

          *(v110 + 16) = v151 + 1;
          OUTLINED_FUNCTION_35_15((v110 + 32 * v151));
          *(v152 + 48) = v149;
          *(v152 + 56) = v150;

          v146 = v277;
          *&v277[v276] = v110;
        }

        v153 = *(v146 + 4);
        v154 = *(v146 + 5);
        v282 = 0;
        v283 = 0xE000000000000000;
        v155 = OUTLINED_FUNCTION_161();
        sub_26A0E45C0(v155, v156);
        v157 = OUTLINED_FUNCTION_161();
        sub_26A0E45C0(v157, v158);
        sub_26A424EF4();

        v282 = 0x202A2F2861746144;
        v283 = 0xE800000000000000;
        v161 = 0;
        switch(v154 >> 62)
        {
          case 1uLL:
            LODWORD(v161) = HIDWORD(v153) - v153;
            if (!__OFSUB__(HIDWORD(v153), v153))
            {
              v161 = v161;
              goto LABEL_49;
            }

            __break(1u);
            goto LABEL_102;
          case 2uLL:
            v163 = *(v153 + 16);
            v162 = *(v153 + 24);
            v164 = __OFSUB__(v162, v163);
            v161 = v162 - v163;
            if (!v164)
            {
              goto LABEL_49;
            }

LABEL_102:
            __break(1u);
            goto LABEL_103;
          case 3uLL:
            goto LABEL_49;
          default:
            v161 = BYTE6(v154);
LABEL_49:
            v281 = v161;
            v165 = sub_26A4251B4();
            MEMORY[0x26D65BA70](v165);

            MEMORY[0x26D65BA70](0x2A20736574796220, 0xEA0000000000292FLL);
            v167 = v282;
            v166 = v283;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v220 = *(v110 + 16);
              OUTLINED_FUNCTION_14_13();
              sub_26A16822C();
              v110 = v221;
            }

            v168 = *(v110 + 16);
            if (v168 >= *(v110 + 24) >> 1)
            {
              OUTLINED_FUNCTION_34_11();
              v110 = v222;
            }

            v169 = OUTLINED_FUNCTION_161();
            sub_26A0E4784(v169, v170);
            *(v110 + 16) = v168 + 1;
            OUTLINED_FUNCTION_35_15((v110 + 32 * v168));
            *(v171 + 48) = v167;
            *(v171 + 56) = v166;
            v172 = OUTLINED_FUNCTION_161();
            sub_26A0E4784(v172, v173);
            v174 = v277;
            *&v277[v276] = v110;
            v176 = *(v174 + 48);
            v175 = *(v174 + 56);
            OUTLINED_FUNCTION_45_6();
            if (v178)
            {
              OUTLINED_FUNCTION_28_11();
              v179 = OUTLINED_FUNCTION_32_12();
              MEMORY[0x26D65BA70](v179);
              MEMORY[0x26D65BA70](34, 0xE100000000000000);
              v180 = v282;
              v181 = v283;
              v182 = *(v110 + 16);
              if (v182 >= *(v110 + 24) >> 1)
              {
                OUTLINED_FUNCTION_34_11();
                v110 = v229;
              }

              *(v110 + 16) = v182 + 1;
              OUTLINED_FUNCTION_35_15((v110 + 32 * v182));
              *(v183 + 48) = v180;
              *(v183 + 56) = v181;

              v177 = v276;
              v174 = v277;
              *&v277[v276] = v110;
            }

            if (*(v174 + 65))
            {
              v184 = 1702195828;
            }

            else
            {
              v184 = 0x65736C6166;
            }

            if (*(v174 + 65))
            {
              v185 = 0xE400000000000000;
            }

            else
            {
              v185 = 0xE500000000000000;
            }

            v186 = *(v110 + 16);
            if (v186 >= *(v110 + 24) >> 1)
            {
              OUTLINED_FUNCTION_33_11();
              sub_26A16822C();
              v177 = v276;
              v174 = v277;
              v110 = v223;
            }

            *(v110 + 16) = v186 + 1;
            v187 = (v110 + 32 * v186);
            v187[4] = 0xD000000000000011;
            v187[5] = v252;
            v187[6] = v184;
            v187[7] = v185;
            *(v174 + v177) = v110;
            if (*(v174 + 66))
            {
              v188 = 1702195828;
            }

            else
            {
              v188 = 0x65736C6166;
            }

            if (*(v174 + 66))
            {
              v189 = 0xE400000000000000;
            }

            else
            {
              v189 = 0xE500000000000000;
            }

            v190 = *(v110 + 16);
            if (v190 >= *(v110 + 24) >> 1)
            {
              OUTLINED_FUNCTION_33_11();
              sub_26A16822C();
              v177 = v276;
              v174 = v277;
              v110 = v224;
            }

            *(v110 + 16) = v190 + 1;
            v191 = (v110 + 32 * v190);
            v192 = v251;
            v191[4] = 0xD000000000000017;
            v191[5] = v192;
            v191[6] = v188;
            v191[7] = v189;
            *(v174 + v177) = v110;
            sub_26A1018D0();
            countAndFlagsBits = v193;
            object = v194;
            sub_26A0E48F0(v174, &qword_28036CD58, &unk_26A437B60);
            OUTLINED_FUNCTION_8_19();
            sub_26A28EC38(v272, v195);
            OUTLINED_FUNCTION_0_41();
            sub_26A28EC38(v280, v196);
            LOBYTE(v2) = v270;
            goto LABEL_95;
        }

      case 3u:
        sub_26A28EC38(v280, type metadata accessor for ButtonContainer.ButtonItem);
        object = 0xE700000000000000;
        countAndFlagsBits = 0x6E776F6E6B6E75;
        goto LABEL_95;
      default:
        v79 = v255;
        sub_26A28EBE4();
        v80 = Button.description(redacted:)(v2 & 1);
        countAndFlagsBits = v80._countAndFlagsBits;
        object = v80._object;
        OUTLINED_FUNCTION_4_27();
        sub_26A28EC38(v79, v83);
        OUTLINED_FUNCTION_0_41();
        sub_26A28EC38(v280, v84);
        goto LABEL_95;
    }
  }
}

void ButtonContainer.buttons.getter()
{
  OUTLINED_FUNCTION_76();
  v1 = type metadata accessor for _ProtoButton_Container.ButtonItem(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v21 - v5;
  v7 = type metadata accessor for ButtonContainer.ButtonItem(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  OUTLINED_FUNCTION_18();
  v10 = *v0;
  v11 = *(*v0 + 16);
  if (v11)
  {
    v22 = MEMORY[0x277D84F90];
    sub_26A10D5AC();
    v12 = v22;
    v13 = *(v2 + 80);
    OUTLINED_FUNCTION_166_0();
    v15 = v10 + v14;
    v16 = *(v2 + 72);
    do
    {
      sub_26A28EB90();
      sub_26A28EB90();
      sub_26A28C3AC();
      OUTLINED_FUNCTION_2_27();
      sub_26A28EC38(v6, v17);
      v22 = v12;
      v18 = *(v12 + 16);
      if (v18 >= *(v12 + 24) >> 1)
      {
        OUTLINED_FUNCTION_33_11();
        sub_26A10D5AC();
        v12 = v22;
      }

      *(v12 + 16) = v18 + 1;
      v19 = *(v8 + 80);
      OUTLINED_FUNCTION_166_0();
      v20 = *(v8 + 72);
      sub_26A28EBE4();
      v15 += v16;
      --v11;
    }

    while (v11);
  }

  OUTLINED_FUNCTION_75();
}

void sub_26A28C3AC()
{
  OUTLINED_FUNCTION_76();
  v1 = v0;
  v56 = v2;
  v55 = type metadata accessor for _ProtoButton_Container.ButtonItem(0);
  v3 = OUTLINED_FUNCTION_12(v55);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_8();
  v54 = v6;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v7);
  v9 = &v52 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036EC48, &unk_26A4385C0);
  OUTLINED_FUNCTION_41(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v13);
  v15 = &v52 - v14;
  v16 = type metadata accessor for _ProtoButton(0);
  v17 = OUTLINED_FUNCTION_12(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_11();
  v53 = v20;
  v21 = OUTLINED_FUNCTION_45();
  v22 = type metadata accessor for _ProtoPlayerButton(v21);
  v23 = OUTLINED_FUNCTION_12(v22);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_18();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C8E8, &qword_26A437B80);
  OUTLINED_FUNCTION_41(v26);
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v29);
  v31 = &v52 - v30;
  v32 = v1;
  sub_26A10FD9C();
  v33 = type metadata accessor for _ProtoButton_Container.ButtonItem.OneOf_Value(0);
  OUTLINED_FUNCTION_37(v31, 1, v33);
  if (v34)
  {
    if (qword_28036C5A0 != -1)
    {
      swift_once();
    }

    v35 = sub_26A424AE4();
    __swift_project_value_buffer(v35, qword_2803A8950);
    OUTLINED_FUNCTION_22_14();
    v36 = v1;
    sub_26A28EB90();
    v37 = sub_26A424AD4();
    v38 = sub_26A424E04();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v57 = v40;
      *v39 = 136315138;
      OUTLINED_FUNCTION_22_14();
      sub_26A28EB90();
      v41 = sub_26A424BC4();
      v43 = v42;
      sub_26A28EC38(v9, type metadata accessor for _ProtoButton_Container.ButtonItem);
      v44 = sub_26A0E8788(v41, v43, &v57);

      *(v39 + 4) = v44;
      _os_log_impl(&dword_26A0B8000, v37, v38, "Malformed protobuf message: %s", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v40);
      MEMORY[0x26D65C950](v40, -1, -1);
      MEMORY[0x26D65C950](v39, -1, -1);

      v45 = v36;
    }

    else
    {

      sub_26A28EC38(v32, type metadata accessor for _ProtoButton_Container.ButtonItem);
      v45 = v9;
    }

    sub_26A28EC38(v45, type metadata accessor for _ProtoButton_Container.ButtonItem);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (!EnumCaseMultiPayload)
    {
      sub_26A28EC38(v1, type metadata accessor for _ProtoButton_Container.ButtonItem);
      OUTLINED_FUNCTION_20_18();
LABEL_19:
      sub_26A28EBE4();
      goto LABEL_20;
    }

    if (EnumCaseMultiPayload == 1)
    {
      sub_26A28EBE4();
      v47 = *(v22 + 20);
      sub_26A10FD9C();
      OUTLINED_FUNCTION_37(v15, 1, v16);
      if (v34)
      {
        v48 = v53;
        _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
        v49 = *(v16 + 20);
        if (qword_28036C428 != -1)
        {
          swift_once();
        }

        v50 = qword_280371710;

        OUTLINED_FUNCTION_2_27();
        sub_26A28EC38(v1, v51);
        OUTLINED_FUNCTION_26_18();
        *(v48 + v49) = v50;
        OUTLINED_FUNCTION_37(v15, 1, v16);
        if (!v34)
        {
          sub_26A0E48F0(v15, &qword_28036EC48, &unk_26A4385C0);
        }
      }

      else
      {
        sub_26A28EC38(v1, type metadata accessor for _ProtoButton_Container.ButtonItem);
        OUTLINED_FUNCTION_26_18();
        OUTLINED_FUNCTION_20_18();
        sub_26A28EBE4();
      }

      goto LABEL_19;
    }

    sub_26A28EC38(v1, type metadata accessor for _ProtoButton_Container.ButtonItem);
    OUTLINED_FUNCTION_37_8();
    sub_26A28EBE4();
  }

LABEL_20:
  type metadata accessor for ButtonContainer.ButtonItem(0);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_75();
}

uint64_t ButtonContainer.init(_:)()
{
  return sub_26A28C938();
}

{
  return sub_26A28C938();
}

uint64_t sub_26A28C938()
{
  type metadata accessor for _ProtoButton_Container(0);
  OUTLINED_FUNCTION_11_21();
  sub_26A28EDB0(v0, v1);
  sub_26A4249C4();
}

uint64_t sub_26A28C9CC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v89 = a4;
  v90 = a5;
  v88 = a3;
  v84 = a1;
  v7 = type metadata accessor for CustomCanvas();
  v8 = OUTLINED_FUNCTION_41(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_11();
  v87 = v11;
  OUTLINED_FUNCTION_45();
  v12 = type metadata accessor for PlayerButton();
  v13 = OUTLINED_FUNCTION_41(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_11();
  v86 = v16;
  OUTLINED_FUNCTION_45();
  v17 = type metadata accessor for Button();
  v18 = OUTLINED_FUNCTION_41(v17);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_11();
  v85 = v21;
  v22 = OUTLINED_FUNCTION_45();
  v93 = type metadata accessor for ButtonContainer.ButtonItem(v22);
  v23 = OUTLINED_FUNCTION_12(v93);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_8();
  v98 = v26;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v27);
  v29 = &v84 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280371600, &qword_26A437B88);
  OUTLINED_FUNCTION_41(v30);
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v33);
  v35 = &v84 - v34;
  v36 = type metadata accessor for _ProtoButton_Container.ButtonItem(0);
  v37 = OUTLINED_FUNCTION_24(v36);
  v91 = v38;
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_11();
  v92 = v41;
  v42 = *(a2 + 16);
  if (v42)
  {
    v43 = a2 + 32;
    v44 = MEMORY[0x277D84F90];
    while (2)
    {
      sub_26A0E5D68(v43, v95);
      v46 = v96;
      v45 = v97;
      __swift_project_boxed_opaque_existential_1(v95, v96);
      (*(v45 + 8))(v46, v45);
      OUTLINED_FUNCTION_9_22();
      sub_26A28EB90();
      switch(swift_getEnumCaseMultiPayload())
      {
        case 1u:
          v47 = v86;
          v64 = sub_26A28EBE4();
          MEMORY[0x28223BE20](v64);
          *(&v84 - 2) = v47;
          OUTLINED_FUNCTION_1_31();
          sub_26A28EDB0(&qword_280371608, v65);
          OUTLINED_FUNCTION_30_9();
          v94 = v5;
          OUTLINED_FUNCTION_0_41();
          sub_26A28EC38(v29, v66);
          v67 = OUTLINED_FUNCTION_17_13();
          __swift_storeEnumTagSinglePayload(v67, v68, v69, v36);
          v54 = type metadata accessor for PlayerButton;
          goto LABEL_8;
        case 2u:
          v47 = v87;
          v55 = sub_26A28EBE4();
          MEMORY[0x28223BE20](v55);
          *(&v84 - 2) = v47;
          OUTLINED_FUNCTION_1_31();
          sub_26A28EDB0(&qword_280371608, v56);
          OUTLINED_FUNCTION_30_9();
          v94 = v5;
          OUTLINED_FUNCTION_0_41();
          sub_26A28EC38(v29, v57);
          v58 = OUTLINED_FUNCTION_17_13();
          __swift_storeEnumTagSinglePayload(v58, v59, v60, v36);
          v54 = type metadata accessor for CustomCanvas;
          goto LABEL_8;
        case 3u:
          sub_26A28EC38(v29, type metadata accessor for ButtonContainer.ButtonItem);
          OUTLINED_FUNCTION_92();
          __swift_storeEnumTagSinglePayload(v61, v62, v63, v36);
          goto LABEL_9;
        default:
          v47 = v85;
          v48 = sub_26A28EBE4();
          MEMORY[0x28223BE20](v48);
          *(&v84 - 2) = v47;
          OUTLINED_FUNCTION_1_31();
          sub_26A28EDB0(&qword_280371608, v49);
          OUTLINED_FUNCTION_30_9();
          v94 = v5;
          OUTLINED_FUNCTION_0_41();
          sub_26A28EC38(v29, v50);
          v51 = OUTLINED_FUNCTION_17_13();
          __swift_storeEnumTagSinglePayload(v51, v52, v53, v36);
          v54 = type metadata accessor for Button;
LABEL_8:
          sub_26A28EC38(v47, v54);
LABEL_9:
          __swift_destroy_boxed_opaque_existential_1(v95);
          if (__swift_getEnumTagSinglePayload(v35, 1, v36) == 1)
          {
            sub_26A0E48F0(v35, &qword_280371600, &qword_26A437B88);
          }

          else
          {
            sub_26A28EBE4();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v75 = *(v44 + 16);
              v76 = OUTLINED_FUNCTION_14_13();
              sub_26A168828(v76, v77, v78, v44);
              v44 = v79;
            }

            v71 = *(v44 + 16);
            v70 = *(v44 + 24);
            if (v71 >= v70 >> 1)
            {
              sub_26A168828(v70 > 1, v71 + 1, 1, v44);
              v44 = v80;
            }

            *(v44 + 16) = v71 + 1;
            v72 = *(v91 + 80);
            OUTLINED_FUNCTION_166_0();
            v74 = *(v73 + 72);
            OUTLINED_FUNCTION_21_16();
            sub_26A28EBE4();
          }

          v43 += 40;
          if (!--v42)
          {
            goto LABEL_19;
          }

          continue;
      }
    }
  }

  v44 = MEMORY[0x277D84F90];
LABEL_19:
  v81 = v84;
  v82 = *v84;

  *v81 = v44;
  return result;
}

uint64_t sub_26A28CFAC(uint64_t a1)
{
  sub_26A0E48F0(a1, &qword_28036C8E8, &qword_26A437B80);
  sub_26A28EB90();
  type metadata accessor for _ProtoButton_Container.ButtonItem.OneOf_Value(0);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_15_19();
  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_26A28D0C0()
{
  OUTLINED_FUNCTION_84_5();
  sub_26A28EB90();
  type metadata accessor for ButtonContainer.ButtonItem(0);

  return swift_storeEnumTagMultiPayload();
}

void static ButtonContainer.ButtonItem.== infix(_:_:)()
{
  OUTLINED_FUNCTION_76();
  v0 = type metadata accessor for CustomCanvas();
  v1 = OUTLINED_FUNCTION_41(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_11();
  v53 = v4;
  OUTLINED_FUNCTION_45();
  v5 = type metadata accessor for PlayerButton();
  v6 = OUTLINED_FUNCTION_41(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_18();
  v11 = v10 - v9;
  v12 = type metadata accessor for Button();
  v13 = OUTLINED_FUNCTION_41(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_11();
  v52 = v16;
  v17 = OUTLINED_FUNCTION_45();
  v18 = type metadata accessor for ButtonContainer.ButtonItem(v17);
  v19 = OUTLINED_FUNCTION_12(v18);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v52 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = &v52 - v25;
  MEMORY[0x28223BE20](v27);
  v29 = &v52 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803715E8, &qword_26A437B78);
  OUTLINED_FUNCTION_41(v30);
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v33);
  v35 = &v52 - v34;
  v37 = *(v36 + 56);
  sub_26A28EB90();
  sub_26A28EB90();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_26A28EB90();
      if (OUTLINED_FUNCTION_52_12() == 1)
      {
        sub_26A28EBE4();
        static _ProtoPlayerButton.== infix(_:_:)();
        sub_26A28EC38(v11, type metadata accessor for PlayerButton);
        v41 = v26;
        v42 = type metadata accessor for PlayerButton;
        goto LABEL_10;
      }

      v38 = type metadata accessor for PlayerButton;
      v39 = v26;
      goto LABEL_13;
    case 2u:
      sub_26A28EB90();
      if (OUTLINED_FUNCTION_52_12() != 2)
      {
        v38 = type metadata accessor for CustomCanvas;
        v39 = v23;
        goto LABEL_13;
      }

      v40 = v53;
      sub_26A28EBE4();
      static _ProtoCustomCanvas.== infix(_:_:)(v23, v40);
      sub_26A28EC38(v40, type metadata accessor for CustomCanvas);
      v41 = v23;
      v42 = type metadata accessor for CustomCanvas;
LABEL_10:
      sub_26A28EC38(v41, v42);
      OUTLINED_FUNCTION_0_41();
      sub_26A28EC38(v35, v43);
      break;
    case 3u:
      if (OUTLINED_FUNCTION_52_12() == 3)
      {
        goto LABEL_19;
      }

      goto LABEL_14;
    default:
      sub_26A28EB90();
      if (OUTLINED_FUNCTION_52_12())
      {
        v38 = type metadata accessor for Button;
        v39 = v29;
LABEL_13:
        sub_26A28EC38(v39, v38);
LABEL_14:
        sub_26A0E48F0(v35, &qword_2803715E8, &qword_26A437B78);
      }

      else
      {
        v44 = v52;
        sub_26A28EBE4();
        v45 = *(type metadata accessor for _ProtoButton(0) + 20);
        if (*&v29[v45] != *(v44 + v45))
        {
          v46 = *&v29[v45];

          sub_26A2A2580();
          v48 = v47;

          if ((v48 & 1) == 0)
          {
            goto LABEL_21;
          }
        }

        sub_26A424794();
        OUTLINED_FUNCTION_24_21();
        sub_26A28EDB0(v49, v50);
        if (sub_26A424B64())
        {
          sub_26A28EC38(v44, type metadata accessor for Button);
          sub_26A28EC38(v29, type metadata accessor for Button);
LABEL_19:
          sub_26A28EC38(v35, type metadata accessor for ButtonContainer.ButtonItem);
        }

        else
        {
LABEL_21:
          sub_26A28EC38(v44, type metadata accessor for Button);
          sub_26A28EC38(v29, type metadata accessor for Button);
          OUTLINED_FUNCTION_0_41();
          sub_26A28EC38(v35, v51);
        }
      }

      break;
  }

  OUTLINED_FUNCTION_75();
}

uint64_t ButtonContainer.ButtonItem.hash(into:)()
{
  v0 = type metadata accessor for CustomCanvas();
  v1 = OUTLINED_FUNCTION_41(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_18();
  v6 = v5 - v4;
  v7 = type metadata accessor for PlayerButton();
  v8 = OUTLINED_FUNCTION_41(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_18();
  v13 = v12 - v11;
  v14 = type metadata accessor for Button();
  v15 = OUTLINED_FUNCTION_41(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_18();
  v20 = v19 - v18;
  v21 = type metadata accessor for ButtonContainer.ButtonItem(0);
  v22 = OUTLINED_FUNCTION_12(v21);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_9_22();
  sub_26A28EB90();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_26A28EBE4();
      MEMORY[0x26D65C340](1);
      type metadata accessor for _ProtoPlayerButton(0);
      sub_26A28EDB0(&qword_2803715F0, type metadata accessor for _ProtoPlayerButton);
      OUTLINED_FUNCTION_84_5();
      sub_26A424B44();
      OUTLINED_FUNCTION_10_25();
      v26 = v13;
      return sub_26A28EC38(v26, v25);
    case 2u:
      sub_26A28EBE4();
      MEMORY[0x26D65C340](2);
      type metadata accessor for _ProtoCustomCanvas();
      sub_26A28EDB0(&qword_28036D5D0, type metadata accessor for _ProtoCustomCanvas);
      OUTLINED_FUNCTION_84_5();
      sub_26A424B44();
      OUTLINED_FUNCTION_8_19();
      v26 = v6;
      return sub_26A28EC38(v26, v25);
    case 3u:
      return MEMORY[0x26D65C340](3);
    default:
      sub_26A28EBE4();
      MEMORY[0x26D65C340](0);
      type metadata accessor for _ProtoButton(0);
      sub_26A28EDB0(&qword_28036F410, type metadata accessor for _ProtoButton);
      OUTLINED_FUNCTION_84_5();
      sub_26A424B44();
      OUTLINED_FUNCTION_4_27();
      v26 = v20;
      return sub_26A28EC38(v26, v25);
  }
}

uint64_t ButtonContainer.ButtonItem.hashValue.getter()
{
  sub_26A425504();
  ButtonContainer.ButtonItem.hash(into:)();
  return sub_26A425554();
}

uint64_t sub_26A28D980()
{
  sub_26A425504();
  ButtonContainer.ButtonItem.hash(into:)();
  return sub_26A425554();
}

BOOL static ButtonContainer.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_26A0DCCA8();
  result = 0;
  if (v4)
  {
    v5 = *(type metadata accessor for _ProtoButton_Container(0) + 20);
    sub_26A424794();
    OUTLINED_FUNCTION_24_21();
    sub_26A28EDB0(v6, v7);
    if (sub_26A424B64())
    {
      return 1;
    }
  }

  return result;
}

uint64_t ButtonContainer.hash(into:)()
{
  type metadata accessor for _ProtoButton_Container(0);
  OUTLINED_FUNCTION_11_21();
  sub_26A28EDB0(v0, v1);

  return sub_26A424B44();
}

uint64_t ButtonContainer.hashValue.getter()
{
  sub_26A425504();
  type metadata accessor for _ProtoButton_Container(0);
  OUTLINED_FUNCTION_11_21();
  sub_26A28EDB0(v0, v1);
  sub_26A424B44();
  return sub_26A425554();
}

uint64_t sub_26A28DB54()
{
  sub_26A425504();
  type metadata accessor for _ProtoButton_Container(0);
  sub_26A28EDB0(&qword_2803715F8, type metadata accessor for _ProtoButton_Container);
  sub_26A424B44();
  return sub_26A425554();
}

uint64_t ButtonContainer.componentProto.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for _ProtoButton_Container(0);
  v3 = OUTLINED_FUNCTION_41(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_18();
  v6 = type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v6);
  v10 = type metadata accessor for _ProtoResponse.Component(0);
  v11 = a1 + *(v10 + 20);
  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v12 = *(v10 + 24);
  type metadata accessor for _ProtoSeparators();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
  OUTLINED_FUNCTION_12_17();
  sub_26A28EB90();
  sub_26A0E48F0(a1, &qword_28036C828, &unk_26A4276D0);
  OUTLINED_FUNCTION_25_18();
  sub_26A28EBE4();
  OUTLINED_FUNCTION_175();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_15_19();
  return __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
}

uint64_t ButtonContainer.asSection()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB40, &qword_26A426510);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A426410;
  *(inited + 56) = type metadata accessor for ButtonContainer(0);
  *(inited + 64) = &protocol witness table for ButtonContainer;
  __swift_allocate_boxed_opaque_existential_1((inited + 32));
  sub_26A28EB90();
  swift_beginAccess();

  sub_26A10BF5C(v1);
  type metadata accessor for _ProtoResponse.Section(0);
  sub_26A28EDB0(&qword_28036CB48, type metadata accessor for _ProtoResponse.Section);
  sub_26A4249C4();

  swift_setDeallocating();
  return sub_26A10C358();
}

void _ProtoButton_Container.redactedProto.getter()
{
  OUTLINED_FUNCTION_76();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for _ProtoCustomCanvas();
  v5 = OUTLINED_FUNCTION_41(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_11();
  v118 = v8;
  v9 = OUTLINED_FUNCTION_45();
  v10 = type metadata accessor for _ProtoPlayerButton(v9);
  v11 = OUTLINED_FUNCTION_41(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_11();
  v117 = v14;
  v15 = OUTLINED_FUNCTION_45();
  v16 = type metadata accessor for _ProtoButton(v15);
  v17 = OUTLINED_FUNCTION_41(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_11();
  v116 = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C8E8, &qword_26A437B80);
  OUTLINED_FUNCTION_41(v21);
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v24);
  v26 = &v114 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280371600, &qword_26A437B88);
  OUTLINED_FUNCTION_41(v27);
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v30);
  v32 = &v114 - v31;
  v33 = type metadata accessor for _ProtoButton_Container.ButtonItem(0);
  v34 = OUTLINED_FUNCTION_24(v33);
  v36 = v35;
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_8();
  v121 = v39;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v40);
  v42 = &v114 - v41;
  OUTLINED_FUNCTION_12_17();
  v115 = v3;
  sub_26A28EB90();
  v43 = *v1;
  v44 = *(*v1 + 16);
  if (v44)
  {
    v45 = MEMORY[0x277D84F90];
    v46 = v43 + ((*(v36 + 80) + 32) & ~*(v36 + 80));
    v47 = *(v36 + 72);
    v119 = (*(v36 + 80) + 32) & ~*(v36 + 80);
    v120 = v47;
    do
    {
      sub_26A28EB90();
      sub_26A10FD9C();
      v48 = type metadata accessor for _ProtoButton_Container.ButtonItem.OneOf_Value(0);
      OUTLINED_FUNCTION_37(v26, 1, v48);
      if (v49)
      {
        sub_26A28EC38(v42, type metadata accessor for _ProtoButton_Container.ButtonItem);
        OUTLINED_FUNCTION_92();
        __swift_storeEnumTagSinglePayload(v50, v51, v52, v33);
      }

      else
      {
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload)
        {
          if (EnumCaseMultiPayload == 1)
          {
            v54 = v117;
            v55 = sub_26A28EBE4();
            OUTLINED_FUNCTION_37_11(v55, v56, v57, v58, v59, v60, v61, v62, v114);
            MEMORY[0x28223BE20](v63);
            *(&v114 - 2) = v54;
            OUTLINED_FUNCTION_1_31();
            sub_26A28EDB0(&qword_280371608, v64);
            OUTLINED_FUNCTION_31_11();
            OUTLINED_FUNCTION_2_27();
            sub_26A28EC38(v42, v65);
            OUTLINED_FUNCTION_15_19();
            __swift_storeEnumTagSinglePayload(v66, v67, v68, v69);
            v70 = type metadata accessor for _ProtoPlayerButton;
          }

          else
          {
            v54 = v118;
            v88 = sub_26A28EBE4();
            OUTLINED_FUNCTION_37_11(v88, v89, v90, v91, v92, v93, v94, v95, v114);
            MEMORY[0x28223BE20](v96);
            *(&v114 - 2) = v54;
            OUTLINED_FUNCTION_1_31();
            sub_26A28EDB0(&qword_280371608, v97);
            OUTLINED_FUNCTION_31_11();
            OUTLINED_FUNCTION_2_27();
            sub_26A28EC38(v42, v98);
            OUTLINED_FUNCTION_15_19();
            __swift_storeEnumTagSinglePayload(v99, v100, v101, v102);
            v70 = type metadata accessor for _ProtoCustomCanvas;
          }

          sub_26A28EC38(v54, v70);
          v47 = v120;
        }

        else
        {
          v71 = v116;
          v72 = sub_26A28EBE4();
          OUTLINED_FUNCTION_37_11(v72, v73, v74, v75, v76, v77, v78, v79, v114);
          MEMORY[0x28223BE20](v80);
          *(&v114 - 2) = v71;
          OUTLINED_FUNCTION_1_31();
          sub_26A28EDB0(&qword_280371608, v81);
          OUTLINED_FUNCTION_31_11();
          OUTLINED_FUNCTION_2_27();
          sub_26A28EC38(v42, v82);
          OUTLINED_FUNCTION_15_19();
          __swift_storeEnumTagSinglePayload(v83, v84, v85, v86);
          v87 = v71;
          v47 = v120;
          sub_26A28EC38(v87, type metadata accessor for _ProtoButton);
        }
      }

      OUTLINED_FUNCTION_37(v32, 1, v33);
      if (v49)
      {
        sub_26A0E48F0(v32, &qword_280371600, &qword_26A437B88);
      }

      else
      {
        sub_26A28EBE4();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v106 = *(v45 + 16);
          v107 = OUTLINED_FUNCTION_14_13();
          sub_26A168828(v107, v108, v109, v45);
          v45 = v110;
        }

        v105 = *(v45 + 16);
        v104 = *(v45 + 24);
        if (v105 >= v104 >> 1)
        {
          sub_26A168828(v104 > 1, v105 + 1, 1, v45);
          v45 = v111;
        }

        *(v45 + 16) = v105 + 1;
        v47 = v120;
        OUTLINED_FUNCTION_21_16();
        sub_26A28EBE4();
      }

      v46 += v47;
      --v44;
    }

    while (v44);
  }

  else
  {
    v45 = MEMORY[0x277D84F90];
  }

  v112 = v115;
  v113 = *v115;

  *v112 = v45;
  OUTLINED_FUNCTION_75();
}

uint64_t sub_26A28E450(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), void (*a4)(double))
{
  v6 = a3(0);
  OUTLINED_FUNCTION_41(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_39();
  v10 = MEMORY[0x28223BE20](v9);
  a4(v10);
  sub_26A0E48F0(a1, &qword_28036C8E8, &qword_26A437B80);
  OUTLINED_FUNCTION_32_12();
  sub_26A28EBE4();
  type metadata accessor for _ProtoButton_Container.ButtonItem.OneOf_Value(0);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_15_19();
  return __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
}

uint64_t sub_26A28E538(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _ProtoCustomCanvas();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a2 + 64);
  sub_26A28EB90();
  if ((v8 & 1) == 0)
  {
    v9 = *(v7 + 1);

    strcpy(v7, "SystemPlugin");
    v7[13] = 0;
    *(v7 + 7) = -5120;
    v10 = *(v7 + 3);

    *(v7 + 2) = 0x6C6F686563616C50;
    *(v7 + 3) = 0xEB00000000726564;
    v11 = *(a2 + 48);
    v12 = *(a2 + 56);

    sub_26A28E6C8();
    v14 = v13;
    v16 = v15;
    sub_26A0E4784(*(v7 + 4), *(v7 + 5));
    *(v7 + 4) = v14;
    *(v7 + 5) = v16;
  }

  sub_26A0E48F0(a1, &qword_28036C8E8, &qword_26A437B80);
  sub_26A28EBE4();
  v17 = type metadata accessor for _ProtoButton_Container.ButtonItem.OneOf_Value(0);
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v17);
}

void sub_26A28E6C8()
{
  OUTLINED_FUNCTION_76();
  v1 = v0;
  v3 = v2;
  v46 = *MEMORY[0x277D85DE8];
  *&v43 = v2;
  *(&v43 + 1) = v0;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280371640, &qword_26A437D40);
  if (swift_dynamicCast())
  {
    sub_26A0D671C(v41, &v44);
    __swift_project_boxed_opaque_existential_1(&v44, v45);
    sub_26A4244F4();
    v41[0] = v43;
    __swift_destroy_boxed_opaque_existential_1(&v44);
    goto LABEL_59;
  }

  v42 = 0;
  memset(v41, 0, sizeof(v41));
  sub_26A0E48F0(v41, &qword_280371648, &qword_26A437D48);
  if ((v1 & 0x1000000000000000) != 0)
  {
    goto LABEL_63;
  }

  if ((v1 & 0x2000000000000000) != 0)
  {
    *&v41[0] = v3;
    *(&v41[0] + 1) = v1 & 0xFFFFFFFFFFFFFFLL;
    v4 = v41;
    v5 = HIBYTE(v1) & 0xF;
  }

  else if ((v3 & 0x1000000000000000) != 0)
  {
    v4 = ((v1 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = v3 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = sub_26A424F44();
  }

  sub_26A28F180(v4, v5, &v44);
  v6 = *(&v44 + 1);
  v7 = v44;
  if (*(&v44 + 1) >> 60 != 15)
  {
    v41[0] = v44;
    goto LABEL_59;
  }

  if ((v1 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(v1) & 0xF;
  }

  else
  {
    v8 = v3 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&v41[0] = MEMORY[0x26D65B4C0](v8);
  *(&v41[0] + 1) = v9;
  MEMORY[0x28223BE20](*&v41[0]);
  v10 = sub_26A28F29C(sub_26A28F870);
  v12 = *(&v41[0] + 1) >> 62;
  v13 = v10;
  v15 = v14;
  v17 = v16;
  v18 = BYTE14(v41[0]);
  switch(*(&v41[0] + 1) >> 62)
  {
    case 1:
      LODWORD(v19) = DWORD1(v41[0]) - LODWORD(v41[0]);
      if (__OFSUB__(DWORD1(v41[0]), v41[0]))
      {
        goto LABEL_66;
      }

      v19 = v19;
LABEL_22:
      if (v11 == v19)
      {
        goto LABEL_23;
      }

      if (v12 == 2)
      {
        v18 = *(*&v41[0] + 24);
      }

      else if (v12 == 1)
      {
        v18 = *&v41[0] >> 32;
      }

      goto LABEL_56;
    case 2:
      v21 = *(*&v41[0] + 16);
      v20 = *(*&v41[0] + 24);
      v22 = __OFSUB__(v20, v21);
      v19 = v20 - v21;
      if (!v22)
      {
        goto LABEL_22;
      }

      __break(1u);
LABEL_18:
      if (v11)
      {
        v18 = 0;
LABEL_56:
        if (v18 < v11)
        {
          __break(1u);
LABEL_66:
          __break(1u);
        }

        sub_26A424684();
LABEL_58:

        goto LABEL_59;
      }

LABEL_23:
      v40 = v7;
      LOBYTE(v23) = 0;
      if ((v15 & 0x2000000000000000) != 0)
      {
        v24 = HIBYTE(v15) & 0xF;
      }

      else
      {
        v24 = v10 & 0xFFFFFFFFFFFFLL;
      }

      v25 = (v10 >> 59) & 1;
      if ((v15 & 0x1000000000000000) == 0)
      {
        LOBYTE(v25) = 1;
      }

      v26 = 4 << v25;
      *(&v43 + 7) = 0;
      *&v43 = 0;
      break;
    case 3:
      goto LABEL_18;
    default:
      v19 = BYTE14(v41[0]);
      goto LABEL_22;
  }

  while (4 * v24 != v17 >> 14)
  {
    v27 = v17;
    if ((v17 & 0xC) == v26)
    {
      v31 = OUTLINED_FUNCTION_32_12();
      v27 = sub_26A28F88C(v31, v32, v15);
    }

    v28 = v27 >> 16;
    if (v27 >> 16 >= v24)
    {
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      v8 = sub_26A424C54();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v30 = sub_26A424C84();
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v44 = v13;
      *(&v44 + 1) = v15 & 0xFFFFFFFFFFFFFFLL;
      v30 = *(&v44 + v28);
    }

    else
    {
      v29 = (v15 & 0xFFFFFFFFFFFFFFFLL) + 32;
      if ((v13 & 0x1000000000000000) == 0)
      {
        v29 = sub_26A424F44();
      }

      v30 = *(v29 + v28);
    }

    if ((v17 & 0xC) == v26)
    {
      v33 = OUTLINED_FUNCTION_32_12();
      v17 = sub_26A28F88C(v33, v34, v15);
      if ((v15 & 0x1000000000000000) == 0)
      {
LABEL_41:
        v17 = (v17 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x1000000000000000) == 0)
    {
      goto LABEL_41;
    }

    if (v24 <= v17 >> 16)
    {
      goto LABEL_62;
    }

    OUTLINED_FUNCTION_32_12();
    v17 = sub_26A424C64();
LABEL_46:
    *(&v43 + v23) = v30;
    v23 = v23 + 1;
    if ((v23 >> 8))
    {
      goto LABEL_61;
    }

    if (v23 == 14)
    {
      OUTLINED_FUNCTION_47_10();
      sub_26A4246A4();
      LOBYTE(v23) = 0;
    }
  }

  if (v23)
  {
    OUTLINED_FUNCTION_47_10();
    sub_26A4246A4();
    sub_26A10E794(v40, v6);
    goto LABEL_58;
  }

  sub_26A10E794(v40, v6);
LABEL_59:
  v35 = OUTLINED_FUNCTION_21_3();
  sub_26A0E45C0(v35, v36);

  v37 = OUTLINED_FUNCTION_21_3();
  sub_26A0E4784(v37, v38);
  v39 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_21_3();
  OUTLINED_FUNCTION_75();
}

uint64_t sub_26A28EB90()
{
  OUTLINED_FUNCTION_131_0();
  v2 = v1(0);
  OUTLINED_FUNCTION_12(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_175();
  v6(v5);
  return v0;
}

uint64_t sub_26A28EBE4()
{
  OUTLINED_FUNCTION_131_0();
  v2 = v1(0);
  OUTLINED_FUNCTION_12(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_175();
  v6(v5);
  return v0;
}

uint64_t sub_26A28EC38(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_12(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_26A28EC90(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CF20, &qword_26A426AA8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A28EDB0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26A28EFEC()
{
  result = type metadata accessor for _ProtoButton_Container(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26A28F058()
{
  result = type metadata accessor for Button();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for PlayerButton();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for CustomCanvas();
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_26A28F0F4()
{
  v1 = *(v0 + 16);
  OUTLINED_FUNCTION_23_20();
  return sub_26A28CFAC(v2);
}

uint64_t sub_26A28F180@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (a1 && a2)
  {
    if (a2 <= 14)
    {
      result = sub_26A424624();
      v6 = v12 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = sub_26A4244A4();
      v9 = *(v8 + 48);
      v10 = *(v8 + 52);
      swift_allocObject();
      v11 = sub_26A424464();
      if (a2 >= 0x7FFFFFFF)
      {
        sub_26A424674();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = a2;
        v6 = v11 | 0x8000000000000000;
      }

      else
      {
        result = a2 << 32;
        v6 = v11 | 0x4000000000000000;
      }
    }
  }

  *a3 = result;
  a3[1] = v6;
  return result;
}

void *sub_26A28F248(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[0] = a3;
  v6[1] = a4;
  v5[2] = v6;
  return sub_26A28F720(sub_26A28F948, v5, a1, a2);
}

uint64_t sub_26A28F29C(void *(*a1)(uint64_t *__return_ptr, char *, char *))
{
  v4 = v1;
  v22[2] = *MEMORY[0x277D85DE8];
  v6 = *v1;
  v5 = v1[1];
  switch(v5 >> 62)
  {
    case 1uLL:
      v11 = v5 & 0x3FFFFFFFFFFFFFFFLL;

      sub_26A0E4784(v6, v5);
      *v4 = xmmword_26A426400;
      sub_26A0E4784(0, 0xC000000000000000);
      v12 = v6 >> 32;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_16;
      }

      if (v12 < v6)
      {
        goto LABEL_23;
      }

      if (sub_26A424474() && __OFSUB__(v6, sub_26A424494()))
      {
        goto LABEL_24;
      }

      v13 = sub_26A4244A4();
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      v16 = sub_26A424454();

      v11 = v16;
LABEL_16:
      if (v12 < v6)
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
      }

      v3 = sub_26A28F784(v6, v6 >> 32, a1);

      v10 = v11 | 0x4000000000000000;
      if (v2)
      {
        goto LABEL_18;
      }

      goto LABEL_20;
    case 2uLL:
      v3 = v5 & 0x3FFFFFFFFFFFFFFFLL;

      sub_26A0E4784(v6, v5);
      v20 = v6;
      v21 = v5 & 0x3FFFFFFFFFFFFFFFLL;
      *v4 = xmmword_26A426400;
      sub_26A0E4784(0, 0xC000000000000000);
      sub_26A424634();
      v6 = v20;
      v9 = sub_26A28F784(*(v20 + 16), *(v20 + 24), a1);
      if (v2)
      {
        v10 = v21 | 0x8000000000000000;
LABEL_18:
        *v4 = v6;
        v4[1] = v10;
      }

      else
      {
        v3 = v9;
        v10 = v21 | 0x8000000000000000;
LABEL_20:
        *v4 = v6;
        v4[1] = v10;
      }

LABEL_21:
      v17 = *MEMORY[0x277D85DE8];
      return v3;
    case 3uLL:
      memset(v22, 0, 15);
      a1(&v20, v22, v22);
      if (!v2)
      {
        v3 = v20;
      }

      goto LABEL_21;
    default:
      v3 = v6 >> 8;
      sub_26A0E4784(v6, v5);
      v22[0] = v6;
      LOWORD(v22[1]) = v5;
      BYTE2(v22[1]) = BYTE2(v5);
      BYTE3(v22[1]) = BYTE3(v5);
      BYTE4(v22[1]) = BYTE4(v5);
      BYTE5(v22[1]) = BYTE5(v5);
      BYTE6(v22[1]) = BYTE6(v5);
      a1(&v20, v22, v22 + BYTE6(v5));
      if (!v2)
      {
        v3 = v20;
      }

      v8 = LODWORD(v22[1]) | ((WORD2(v22[1]) | (BYTE6(v22[1]) << 16)) << 32);
      *v4 = v22[0];
      v4[1] = v8;
      goto LABEL_21;
  }
}

uint64_t sub_26A28F660@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v4 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    v5 = 0xC000000000000000;
    goto LABEL_5;
  }

  if (v4 <= 14)
  {
    result = sub_26A424624();
    v5 = v7 & 0xFFFFFFFFFFFFFFLL;
  }

  else if (v4 >= 0x7FFFFFFF)
  {
    result = MEMORY[0x26D65B470]();
    v5 = v8 | 0x8000000000000000;
  }

  else
  {
    result = MEMORY[0x26D65B480]();
    v5 = v6 | 0x4000000000000000;
  }

LABEL_5:
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t sub_26A28F6D8(uint64_t result)
{
  if (result)
  {
    result = sub_26A424F04();
    if ((v1 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_26A28F720(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v6 = a4 - a3;
    v7 = a3;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  result = a1(&v9, v7, v6);
  if (!v4)
  {
    return v9;
  }

  __break(1u);
  return result;
}

char *sub_26A28F784(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_26A424474();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_26A424494();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = sub_26A424484();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

void *sub_26A28F838@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  result = sub_26A28F248(a1, a2, *a3, a3[1]);
  if (!v4)
  {
    *a4 = result;
    a4[1] = v7;
    a4[2] = v8;
    a4[3] = v9;
  }

  return result;
}

uint64_t sub_26A28F88C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_26A424C94();
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
    v5 = MEMORY[0x26D65BAA0](15, a1 >> 16);
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

uint64_t sub_26A28F908@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X2>, uint64_t *a3@<X8>)
{
  v6 = *a2;
  v5 = a2[1];
  result = sub_26A28F6D8(a1);
  if (!v3)
  {
    *a3 = result;
    a3[1] = v8;
    a3[2] = v9;
    a3[3] = v10;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_26_18()
{

  return sub_26A28EC38(v0, type metadata accessor for _ProtoPlayerButton);
}

uint64_t OUTLINED_FUNCTION_28_11()
{
  *(v0 - 112) = 34;
  *(v0 - 104) = 0xE100000000000000;
}

uint64_t OUTLINED_FUNCTION_30_9()
{
  v2 = *(v0 - 128);

  return sub_26A4249C4();
}

uint64_t OUTLINED_FUNCTION_31_11()
{

  return sub_26A4249C4();
}

void OUTLINED_FUNCTION_34_11()
{

  sub_26A16822C();
}

__n128 OUTLINED_FUNCTION_35_15@<Q0>(__n128 *a1@<X8>)
{
  result = *(v1 - 256);
  a1[2] = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_51_11()
{

  return type metadata accessor for _ProtoButton_Container(0);
}

uint64_t OUTLINED_FUNCTION_52_12()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t sub_26A28FDEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, void (*a6)(uint64_t), void (*a7)(uint64_t))
{
  v12 = v7;
  swift_getAtKeyPath();
  v15 = sub_26A12CBBC(v26);
  v17 = v16;
  v18 = HIBYTE(v16) & 0xF;
  if ((v16 & 0x2000000000000000) == 0)
  {
    v18 = v15 & 0xFFFFFFFFFFFFLL;
  }

  if (v18)
  {
    v19 = v15;
    v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a4, a5) + 28);

    a6(v21);
    v22 = *(*(v12 + v20) + 16);
    a7(v22);

    v24 = *(v12 + v20);
    *(v24 + 16) = v22 + 1;
    v25 = (v24 + 32 * v22);
    v25[4] = a2;
    v25[5] = a3;
    v25[6] = v19;
    v25[7] = v17;
    *(v12 + v20) = v24;
  }

  else
  {
  }

  return result;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ColorElement.jsonString(redacted:)(Swift::Bool redacted)
{
  v1 = sub_26A4247D4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_18();
  v6 = v5 - v4;
  sub_26A4247C4();
  type metadata accessor for _ProtoColorElement();
  OUTLINED_FUNCTION_0_42();
  sub_26A291348(v7, v8);
  v9 = sub_26A424954();
  v11 = v10;
  (*(v2 + 8))(v6, v1);
  v12 = v9;
  v13 = v11;
  result._object = v13;
  result._countAndFlagsBits = v12;
  return result;
}

Swift::String __swiftcall ColorElement.description(redacted:)(Swift::Bool redacted)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CBA0, &qword_26A4265B0);
  v5 = OUTLINED_FUNCTION_41(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v34 - v8;
  v10 = type metadata accessor for ColorElement();
  v11 = OUTLINED_FUNCTION_41(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v34 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CCE0, &qword_26A426770);
  v20 = v19 - 8;
  v21 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v34 - v22;
  sub_26A290388(v2, v18);
  sub_26A290388(v18, v15);
  OUTLINED_FUNCTION_3_31();
  sub_26A2911E8(v15, v23);
  v23[*(v20 + 40)] = redacted;
  OUTLINED_FUNCTION_1_32();
  sub_26A291260(v18, v24);
  *&v23[*(v20 + 36)] = MEMORY[0x277D84F90];
  ColorElement.color.getter(v9);
  v25 = type metadata accessor for Color();
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v25);
  sub_26A109CD4();
  sub_26A0E48F0(v9, &qword_28036CBA0, &qword_26A4265B0);
  KeyPath = swift_getKeyPath();
  sub_26A28FDEC(KeyPath, 0x736D6F696469, 0xE600000000000000, &qword_28036CCE0, &qword_26A426770, sub_26A10C71C, sub_26A10CB50);

  sub_26A101AA8();
  v28 = v27;
  v30 = v29;
  sub_26A0E48F0(v23, &qword_28036CCE0, &qword_26A426770);
  v31 = v28;
  v32 = v30;
  result._object = v32;
  result._countAndFlagsBits = v31;
  return result;
}

uint64_t type metadata accessor for ColorElement()
{
  result = qword_28157B530;
  if (!qword_28157B530)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26A290388(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_16_11();
  v6 = v5(v4);
  OUTLINED_FUNCTION_12(v6);
  (*(v7 + 16))(a2, v2);
  return a2;
}

uint64_t ColorElement.color.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CCD8, &unk_26A432950);
  v4 = OUTLINED_FUNCTION_41(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v20 - v7;
  v9 = type metadata accessor for _ProtoColor(0);
  v10 = OUTLINED_FUNCTION_12(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_18();
  v15 = v14 - v13;
  v16 = type metadata accessor for _ProtoColorElement();
  sub_26A291178(v1 + *(v16 + 24), v8);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    v17 = type metadata accessor for _ProtoColor.OneOf_Value(0);
    __swift_storeEnumTagSinglePayload(v15, 1, 1, v17);
    v18 = v15 + *(v9 + 20);
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    if (__swift_getEnumTagSinglePayload(v8, 1, v9) != 1)
    {
      sub_26A0E48F0(v8, &qword_28036CCD8, &unk_26A432950);
    }
  }

  else
  {
    sub_26A2911E8(v8, v15);
  }

  return sub_26A2911E8(v15, a1);
}

void *ColorElement.idioms.getter()
{
  if (*(*v0 + 16))
  {
  }

  else
  {
    return &unk_287B013B0;
  }
}

uint64_t ColorElement.init(_:idioms:)(uint64_t *a1)
{
  type metadata accessor for _ProtoColorElement();
  OUTLINED_FUNCTION_0_42();
  sub_26A291348(v2, v3);
  sub_26A4249C4();

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_26A290674(uint64_t *a1, void *a2)
{
  v4 = type metadata accessor for _ProtoColor(0);
  v5 = OUTLINED_FUNCTION_12(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_18();
  v10 = v9 - v8;
  v11 = type metadata accessor for Color();
  v12 = OUTLINED_FUNCTION_41(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_18();
  v17 = v16 - v15;
  v18 = a2[3];
  v19 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v18);
  (*(v19 + 8))(v18, v19);
  sub_26A2911E8(v17, v10);
  v20 = *(type metadata accessor for _ProtoColorElement() + 24);
  sub_26A0E48F0(a1 + v20, &qword_28036CCD8, &unk_26A432950);
  sub_26A2911E8(v10, a1 + v20);
  __swift_storeEnumTagSinglePayload(a1 + v20, 0, 1, v4);

  v22 = sub_26A419264(v21);
  v23 = *a1;

  *a1 = v22;
  return result;
}

uint64_t static ColorElement.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Color();
  v5 = OUTLINED_FUNCTION_41(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v20 - v11;
  ColorElement.color.getter(&v20 - v11);
  ColorElement.color.getter(v9);
  v13 = static _ProtoColor.== infix(_:_:)();
  sub_26A291260(v9, type metadata accessor for Color);
  sub_26A291260(v12, type metadata accessor for Color);
  if (v13)
  {
    if (*(*a1 + 16))
    {
    }

    else
    {
      v14 = &unk_287B013B0;
    }

    v16 = sub_26A10BE7C(v14);
    if (*(*a2 + 16))
    {
    }

    else
    {
      v17 = &unk_287B013B0;
    }

    v18 = sub_26A10BE7C(v17);
    v15 = sub_26A290AE0(v16, v18);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

void sub_26A29095C(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    OUTLINED_FUNCTION_8_20(a1, a2);
    if (v4)
    {
      v5 = 0;
      v6 = *(v3 + 56);
      v7 = *(v3 + 32);
      OUTLINED_FUNCTION_6_17();
      v10 = v9 & v8;
      v12 = (v11 + 63) >> 6;
      v13 = v2 + 56;
LABEL_5:
      if (v10)
      {
        v14 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_12:
        v17 = *(v3 + 48) + 16 * (v14 | (v5 << 6));
        v18 = *v17;
        v19 = *(v17 + 8);
        v20 = *(v2 + 40);
        sub_26A425504();
        sub_26A0E8CEC();
        sub_26A424B44();
        v21 = sub_26A425554();
        OUTLINED_FUNCTION_5_24(v21);
        if ((*(v13 + v23) >> v22))
        {
          v24 = *(v2 + 48);
          do
          {
            v25 = (v24 + 16 * v22);
            if (*(v25 + 8))
            {
              v26 = *v25 != 0;
            }

            else
            {
              v26 = *v25;
            }

            if (v19)
            {
              if (v18)
              {
                if (v26 == 1)
                {
                  goto LABEL_5;
                }
              }

              else if (!v26)
              {
                goto LABEL_5;
              }
            }

            else if (v26 == v18)
            {
              goto LABEL_5;
            }

            OUTLINED_FUNCTION_10_26();
          }

          while (((*(v13 + v27) >> v22) & 1) != 0);
        }
      }

      else
      {
        v15 = v5;
        while (1)
        {
          v5 = v15 + 1;
          if (__OFADD__(v15, 1))
          {
            break;
          }

          if (v5 >= v12)
          {
            return;
          }

          v16 = *(v3 + 56 + 8 * v5);
          ++v15;
          if (v16)
          {
            v14 = __clz(__rbit64(v16));
            v10 = (v16 - 1) & v16;
            goto LABEL_12;
          }
        }

        __break(1u);
      }
    }
  }
}

uint64_t sub_26A290AE0(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    OUTLINED_FUNCTION_8_20(a1, a2);
    if (!v4)
    {
      return 0;
    }

    v5 = 0;
    v6 = *(v3 + 56);
    v7 = *(v3 + 32);
    OUTLINED_FUNCTION_6_17();
    v10 = v9 & v8;
    v12 = (v11 + 63) >> 6;
    v13 = v2 + 56;
LABEL_5:
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_12:
      v17 = *(v3 + 48) + 16 * (v14 | (v5 << 6));
      v18 = *v17;
      v19 = *(v17 + 8);
      v20 = *(v2 + 40);
      sub_26A425504();
      sub_26A0E8BF0();
      sub_26A424B44();
      v21 = sub_26A425554();
      OUTLINED_FUNCTION_5_24(v21);
      if (((*(v13 + v23) >> v22) & 1) == 0)
      {
        return 0;
      }

      v24 = *(v2 + 48);
      while (1)
      {
        v25 = *(v24 + 16 * v22);
        if (v19)
        {
          switch(v18)
          {
            case 0:
              if (!v25)
              {
                goto LABEL_5;
              }

              goto LABEL_19;
            case 1:
              if (v25 == 1)
              {
                goto LABEL_5;
              }

              goto LABEL_19;
            case 2:
              if (v25 == 2)
              {
                goto LABEL_5;
              }

              goto LABEL_19;
            case 3:
              if (v25 == 3)
              {
                goto LABEL_5;
              }

              goto LABEL_19;
            case 4:
              if (v25 == 4)
              {
                goto LABEL_5;
              }

              goto LABEL_19;
            case 5:
              if (v25 == 5)
              {
                goto LABEL_5;
              }

              goto LABEL_19;
            case 6:
              if (v25 == 6)
              {
                goto LABEL_5;
              }

              goto LABEL_19;
            case 7:
              if (v25 == 7)
              {
                goto LABEL_5;
              }

              goto LABEL_19;
            case 8:
              if (v25 == 8)
              {
                goto LABEL_5;
              }

              goto LABEL_19;
            default:
              goto LABEL_40;
          }
        }

        if (v25 == v18)
        {
          break;
        }

LABEL_19:
        OUTLINED_FUNCTION_10_26();
        if (((*(v13 + v26) >> v22) & 1) == 0)
        {
          return 0;
        }
      }
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
LABEL_40:
        JUMPOUT(0);
      }

      if (v5 >= v12)
      {
        break;
      }

      v16 = *(v3 + 56 + 8 * v5);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_12;
      }
    }
  }

  return 1;
}

uint64_t ColorElement.hash(into:)()
{
  type metadata accessor for _ProtoColorElement();
  OUTLINED_FUNCTION_0_42();
  sub_26A291348(v0, v1);

  return sub_26A424B44();
}

uint64_t ColorElement.hashValue.getter()
{
  sub_26A425504();
  type metadata accessor for _ProtoColorElement();
  OUTLINED_FUNCTION_0_42();
  sub_26A291348(v0, v1);
  sub_26A424B44();
  return sub_26A425554();
}

uint64_t sub_26A290DBC()
{
  sub_26A425504();
  type metadata accessor for _ProtoColorElement();
  sub_26A291348(&qword_280371650, type metadata accessor for _ProtoColorElement);
  sub_26A424B44();
  return sub_26A425554();
}

uint64_t Array<A>.color(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for ColorElement();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  MEMORY[0x28223BE20](v8);
  MEMORY[0x28223BE20](v9);
  v11 = &v43 - v10;
  MEMORY[0x28223BE20](v12);
  MEMORY[0x28223BE20](&v43 - v13);
  v19 = &v43 - v18;
  v20 = *(a2 + 16);
  if (v20)
  {
    v46 = v16;
    v47 = v14;
    v48 = a3;
    v21 = *a1;
    v22 = *(a1 + 8);
    v23 = a2 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
    v24 = *(v15 + 72);
    v43 = v17;
    v44 = v23;
    v45 = v20;
    v25 = v20;
    do
    {
      sub_26A290388(v23, v11);
      v26 = *v11;
      if (*(*v11 + 16))
      {
        v27 = *v11;
      }

      else
      {
        v26 = &unk_287B01FB8;
      }

      v28 = sub_26A165034(v21, v22, v26);

      if (v28)
      {
        v39 = v47;
        sub_26A2911E8(v11, v47);
        sub_26A2911E8(v39, v19);
        a3 = v48;
LABEL_20:
        ColorElement.color.getter(a3);
        OUTLINED_FUNCTION_1_32();
        sub_26A291260(v19, v40);
        v38 = 0;
        goto LABEL_21;
      }

      sub_26A291260(v11, type metadata accessor for ColorElement);
      v23 += v24;
      --v25;
    }

    while (v25);
    v29 = 0;
    a3 = v48;
    v31 = v45;
    v30 = v46;
    v32 = v44;
    do
    {
      sub_26A290388(v32 + v29 * v24, v30);
      if (*(*v30 + 16))
      {
      }

      else
      {
        v33 = &unk_287B01FE8;
      }

      ++v29;
      v34 = v33[2] + 1;
      v35 = 4;
      while (--v34)
      {
        v36 = v33[v35];
        v35 += 2;
        if (!v36)
        {

          OUTLINED_FUNCTION_3_31();
          v19 = v43;
          sub_26A2911E8(v30, v43);
          goto LABEL_20;
        }
      }

      OUTLINED_FUNCTION_1_32();
      sub_26A291260(v30, v37);
      v38 = 1;
    }

    while (v29 != v31);
  }

  else
  {
    v38 = 1;
  }

LABEL_21:
  v41 = type metadata accessor for Color();
  return __swift_storeEnumTagSinglePayload(a3, v38, 1, v41);
}

uint64_t sub_26A291178(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CCD8, &unk_26A432950);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A2911E8(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_16_11();
  v6 = v5(v4);
  OUTLINED_FUNCTION_12(v6);
  (*(v7 + 32))(a2, v2);
  return a2;
}

uint64_t sub_26A291260(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_12(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_26A291348(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26A2913B8()
{
  result = type metadata accessor for _ProtoColorElement();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_8_20(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  v3 = *(a2 + 16);
  return result;
}

uint64_t StandardPlayerButton.playAction.getter@<X0>(uint64_t a1@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_41(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v8);
  v9 = OUTLINED_FUNCTION_17_14();
  v10 = OUTLINED_FUNCTION_12(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_18();
  v13 = OUTLINED_FUNCTION_36_2();
  v14 = type metadata accessor for _ProtoStandardPlayerButton(v13);
  sub_26A132994(v1 + *(v14 + 28), v3);
  OUTLINED_FUNCTION_1_4();
  if (v15)
  {
    OUTLINED_FUNCTION_54_5(MEMORY[0x277D84F90]);
    OUTLINED_FUNCTION_1_4();
    if (!v15)
    {
      sub_26A0E48F0(v3, &off_28036C7C0, &off_26A427400);
    }
  }

  else
  {
    sub_26A292280(v3, v2);
  }

  return sub_26A292280(v2, a1);
}

uint64_t StandardPlayerButton.pauseAction.getter@<X0>(uint64_t a1@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_41(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v8);
  v9 = OUTLINED_FUNCTION_17_14();
  v10 = OUTLINED_FUNCTION_12(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_18();
  v13 = OUTLINED_FUNCTION_36_2();
  v14 = type metadata accessor for _ProtoStandardPlayerButton(v13);
  sub_26A132994(v1 + *(v14 + 32), v3);
  OUTLINED_FUNCTION_1_4();
  if (v15)
  {
    OUTLINED_FUNCTION_54_5(MEMORY[0x277D84F90]);
    OUTLINED_FUNCTION_1_4();
    if (!v15)
    {
      sub_26A0E48F0(v3, &off_28036C7C0, &off_26A427400);
    }
  }

  else
  {
    sub_26A292280(v3, v2);
  }

  return sub_26A292280(v2, a1);
}

uint64_t StandardPlayerButton.componentName.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_175();
}

uint64_t StandardPlayerButton.linkIdentifier.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_175();
}

uint64_t sub_26A2917A8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for _ProtoActionProperty();
  v5 = OUTLINED_FUNCTION_12(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_17();
  v49 = v8 - v9;
  MEMORY[0x28223BE20](v10);
  v51 = (&v48 - v11);
  MEMORY[0x28223BE20](v12);
  v14 = &v48 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  v16 = OUTLINED_FUNCTION_41(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_17();
  v48 = v19 - v20;
  MEMORY[0x28223BE20](v21);
  v23 = &v48 - v22;
  MEMORY[0x28223BE20](v24);
  v26 = &v48 - v25;
  MEMORY[0x28223BE20](v27);
  v29 = &v48 - v28;
  OUTLINED_FUNCTION_3_32();
  v50 = v2;
  sub_26A292228(v2, a1);
  v30 = type metadata accessor for _ProtoStandardPlayerButton(0);
  v31 = *(v30 + 28);
  sub_26A132994(a1 + v31, v29);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v29, 1, v4);
  sub_26A0E48F0(v29, &off_28036C7C0, &off_26A427400);
  if (EnumTagSinglePayload != 1)
  {
    sub_26A132994(v50 + *(v30 + 28), v26);
    OUTLINED_FUNCTION_23(v26);
    if (v33)
    {
      OUTLINED_FUNCTION_13_16();
      OUTLINED_FUNCTION_23(v26);
      if (!v33)
      {
        sub_26A0E48F0(v26, &off_28036C7C0, &off_26A427400);
      }
    }

    else
    {
      sub_26A292280(v26, v14);
    }

    v34 = v51;
    _s10SnippetKit14ActionPropertyV13redactedProtoAA01_fcD0Vvg_0(v51);
    OUTLINED_FUNCTION_5_25();
    sub_26A0E48F0(a1 + v31, &off_28036C7C0, &off_26A427400);
    OUTLINED_FUNCTION_2_28();
    sub_26A292280(v34, v35);
    OUTLINED_FUNCTION_126_0();
    __swift_storeEnumTagSinglePayload(v36, v37, v38, v4);
  }

  v39 = *(v30 + 32);
  sub_26A132994(a1 + v39, v23);
  v40 = __swift_getEnumTagSinglePayload(v23, 1, v4);
  result = sub_26A0E48F0(v23, &off_28036C7C0, &off_26A427400);
  if (v40 != 1)
  {
    v42 = v48;
    sub_26A132994(v50 + *(v30 + 32), v48);
    OUTLINED_FUNCTION_23(v42);
    if (v33)
    {
      OUTLINED_FUNCTION_13_16();
      OUTLINED_FUNCTION_23(v42);
      if (!v33)
      {
        sub_26A0E48F0(v42, &off_28036C7C0, &off_26A427400);
      }
    }

    else
    {
      sub_26A292280(v42, v49);
    }

    v43 = v51;
    _s10SnippetKit14ActionPropertyV13redactedProtoAA01_fcD0Vvg_0(v51);
    OUTLINED_FUNCTION_5_25();
    sub_26A0E48F0(a1 + v39, &off_28036C7C0, &off_26A427400);
    OUTLINED_FUNCTION_2_28();
    sub_26A292280(v43, v44);
    OUTLINED_FUNCTION_126_0();
    return __swift_storeEnumTagSinglePayload(v45, v46, v47, v4);
  }

  return result;
}

uint64_t StandardPlayerButton.init(playAction:pauseAction:componentName:linkIdentifier:)(uint64_t *a1, uint64_t *a2)
{
  type metadata accessor for _ProtoStandardPlayerButton(0);
  OUTLINED_FUNCTION_0_43();
  sub_26A292498(v4, v5);
  sub_26A4249C4();

  __swift_destroy_boxed_opaque_existential_1(a2);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_26A291C50(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v39 = type metadata accessor for _ProtoActionProperty();
  v10 = *(*(v39 - 8) + 64);
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_18();
  v13 = v12 - v11;
  v14 = type metadata accessor for ActionProperty();
  v15 = OUTLINED_FUNCTION_41(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_18();
  v20 = v19 - v18;
  v22 = a2[3];
  v21 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v22);
  (*(v21 + 8))(v22, v21);
  sub_26A292280(v20, v13);
  v23 = type metadata accessor for _ProtoStandardPlayerButton(0);
  v24 = *(v23 + 28);
  sub_26A0E48F0(a1 + v24, &off_28036C7C0, &off_26A427400);
  sub_26A292280(v13, a1 + v24);
  OUTLINED_FUNCTION_126_0();
  __swift_storeEnumTagSinglePayload(v25, v26, v27, v39);
  v28 = a3[3];
  v29 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v28);
  (*(v29 + 8))(v28, v29);
  sub_26A292280(v20, v13);
  v30 = *(v23 + 32);
  sub_26A0E48F0(a1 + v30, &off_28036C7C0, &off_26A427400);
  sub_26A292280(v13, a1 + v30);
  OUTLINED_FUNCTION_126_0();
  __swift_storeEnumTagSinglePayload(v31, v32, v33, v34);
  v35 = a1[1];

  *a1 = a4;
  a1[1] = a5;
  if (a7)
  {
    v37 = a1[3];

    a1[2] = a6;
    a1[3] = a7;
  }

  return result;
}

Swift::String __swiftcall StandardPlayerButton.description(redacted:)(Swift::Bool redacted)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB18, &unk_26A427670);
  OUTLINED_FUNCTION_41(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_36_2();
  v8 = type metadata accessor for StandardPlayerButton();
  v9 = OUTLINED_FUNCTION_41(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_17();
  v14 = v12 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v48 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CF10, &qword_26A437E70);
  OUTLINED_FUNCTION_12(v18);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v21);
  v23 = &v48 - v22;
  sub_26A292228(v1, v17);
  if (redacted)
  {
    sub_26A2917A8(v14);
  }

  else
  {
    sub_26A292228(v17, v14);
  }

  sub_26A292280(v14, v23);
  v23[*(v18 + 32)] = redacted;
  sub_26A292604(v17, type metadata accessor for StandardPlayerButton);
  *&v23[*(v18 + 28)] = MEMORY[0x277D84F90];
  StandardPlayerButton.playAction.getter(v2);
  v24 = type metadata accessor for ActionProperty();
  OUTLINED_FUNCTION_126_0();
  __swift_storeEnumTagSinglePayload(v25, v26, v27, v24);
  sub_26A109978();
  sub_26A0E48F0(v2, &qword_28036CB18, &unk_26A427670);
  StandardPlayerButton.pauseAction.getter(v2);
  OUTLINED_FUNCTION_126_0();
  __swift_storeEnumTagSinglePayload(v28, v29, v30, v24);
  sub_26A109978();
  sub_26A0E48F0(v2, &qword_28036CB18, &unk_26A427670);
  KeyPath = swift_getKeyPath();
  sub_26A0F7EF8(KeyPath, 0x6E656E6F706D6F63, 0xED0000656D614E74, 1, v32, v33, v34, v35, v48, v49);

  v36 = swift_getKeyPath();
  sub_26A0F7EF8(v36, 0x6E6564496B6E696CLL, 0xEE00726569666974, 1, v37, v38, v39, v40, v48, v49);

  sub_26A101188();
  v42 = v41;
  v44 = v43;
  sub_26A0E48F0(v23, &qword_28036CF10, &qword_26A437E70);
  v45 = v42;
  v46 = v44;
  result._object = v46;
  result._countAndFlagsBits = v45;
  return result;
}

uint64_t type metadata accessor for StandardPlayerButton()
{
  result = qword_280371670;
  if (!qword_280371670)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26A292228(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_16_11();
  v5 = v4(v3);
  OUTLINED_FUNCTION_12(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_175();
  v9(v8);
  return a2;
}

uint64_t sub_26A292280(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_16_11();
  v5 = v4(v3);
  OUTLINED_FUNCTION_12(v5);
  v7 = *(v6 + 32);
  v8 = OUTLINED_FUNCTION_175();
  v9(v8);
  return a2;
}

uint64_t StandardPlayerButton.hash(into:)()
{
  type metadata accessor for _ProtoStandardPlayerButton(0);
  OUTLINED_FUNCTION_0_43();
  sub_26A292498(v0, v1);

  return sub_26A424B44();
}

uint64_t StandardPlayerButton.hashValue.getter()
{
  sub_26A425504();
  type metadata accessor for _ProtoStandardPlayerButton(0);
  OUTLINED_FUNCTION_0_43();
  sub_26A292498(v0, v1);
  sub_26A424B44();
  return sub_26A425554();
}

uint64_t sub_26A292498(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26A2924E8()
{
  sub_26A425504();
  type metadata accessor for _ProtoStandardPlayerButton(0);
  sub_26A292498(&qword_280371660, type metadata accessor for _ProtoStandardPlayerButton);
  sub_26A424B44();
  return sub_26A425554();
}

uint64_t sub_26A292598()
{
  result = type metadata accessor for _ProtoStandardPlayerButton(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26A292604(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_12(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_5_25()
{

  return sub_26A292604(v0, type metadata accessor for _ProtoActionProperty);
}

uint64_t OUTLINED_FUNCTION_13_16()
{
  *v0 = v2;
  v0[1] = 0;
  v0[2] = 0xE000000000000000;
  v4 = v0 + *(v1 + 24);

  return _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
}

uint64_t OUTLINED_FUNCTION_17_14()
{

  return type metadata accessor for _ProtoActionProperty();
}

uint64_t BinaryButton.primaryButton.getter()
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036EC48, &unk_26A4385C0);
  OUTLINED_FUNCTION_41(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_19_16();
  v8 = OUTLINED_FUNCTION_12(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_18();
  v11 = OUTLINED_FUNCTION_36_2();
  v12 = type metadata accessor for _ProtoBinaryButton(v11);
  sub_26A2928A4(v0 + *(v12 + 28), v2);
  if (OUTLINED_FUNCTION_95_1() == 1)
  {
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    v13 = *(v7 + 20);
    if (qword_28036C428 != -1)
    {
      OUTLINED_FUNCTION_60_4();
    }

    *(v1 + v13) = qword_280371710;
    v14 = OUTLINED_FUNCTION_95_1();

    if (v14 != 1)
    {
      sub_26A0E48F0(v2, &qword_28036EC48, &unk_26A4385C0);
    }
  }

  else
  {
    sub_26A293AEC();
  }

  return sub_26A293AEC();
}

uint64_t sub_26A2928A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036EC48, &unk_26A4385C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t BinaryButton.secondaryButton.getter()
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036EC48, &unk_26A4385C0);
  OUTLINED_FUNCTION_41(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_19_16();
  v8 = OUTLINED_FUNCTION_12(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_18();
  v11 = OUTLINED_FUNCTION_36_2();
  v12 = type metadata accessor for _ProtoBinaryButton(v11);
  sub_26A2928A4(v0 + *(v12 + 32), v2);
  if (OUTLINED_FUNCTION_95_1() == 1)
  {
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    v13 = *(v7 + 20);
    if (qword_28036C428 != -1)
    {
      OUTLINED_FUNCTION_60_4();
    }

    *(v1 + v13) = qword_280371710;
    v14 = OUTLINED_FUNCTION_95_1();

    if (v14 != 1)
    {
      sub_26A0E48F0(v2, &qword_28036EC48, &unk_26A4385C0);
    }
  }

  else
  {
    sub_26A293AEC();
  }

  return sub_26A293AEC();
}

uint64_t BinaryButton.componentName.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_175();
}

uint64_t BinaryButton.linkIdentifier.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_175();
}

uint64_t _ProtoBinaryButton.redactedProto.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for _ProtoButton(0);
  v3 = OUTLINED_FUNCTION_12(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_17();
  v50 = v6 - v7;
  MEMORY[0x28223BE20](v8);
  v51 = &v48 - v9;
  MEMORY[0x28223BE20](v10);
  v12 = &v48 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036EC48, &unk_26A4385C0);
  v14 = OUTLINED_FUNCTION_41(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_17();
  v49 = v17 - v18;
  MEMORY[0x28223BE20](v19);
  v21 = &v48 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v48 - v23;
  MEMORY[0x28223BE20](v25);
  v27 = &v48 - v26;
  OUTLINED_FUNCTION_2_29();
  sub_26A293CB8();
  v28 = type metadata accessor for _ProtoBinaryButton(0);
  v29 = *(v28 + 28);
  sub_26A2928A4(a1 + v29, v27);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v27, 1, v2);
  sub_26A0E48F0(v27, &qword_28036EC48, &unk_26A4385C0);
  if (EnumTagSinglePayload != 1)
  {
    sub_26A2928A4(a1 + v29, v24);
    if (__swift_getEnumTagSinglePayload(v24, 1, v2) == 1)
    {
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      v31 = *(v2 + 20);
      if (qword_28036C428 != -1)
      {
        OUTLINED_FUNCTION_60_4();
      }

      *&v12[v31] = qword_280371710;
      v32 = __swift_getEnumTagSinglePayload(v24, 1, v2);

      if (v32 != 1)
      {
        sub_26A0E48F0(v24, &qword_28036EC48, &unk_26A4385C0);
      }
    }

    else
    {
      sub_26A293AEC();
    }

    _ProtoButton.redactedProto.getter();
    OUTLINED_FUNCTION_9_23();
    sub_26A293B3C(v12, v33);
    sub_26A0E48F0(a1 + v29, &qword_28036EC48, &unk_26A4385C0);
    OUTLINED_FUNCTION_7_16();
    sub_26A293AEC();
    OUTLINED_FUNCTION_126_0();
    __swift_storeEnumTagSinglePayload(v34, v35, v36, v2);
  }

  v37 = *(v28 + 32);
  sub_26A2928A4(a1 + v37, v21);
  v38 = OUTLINED_FUNCTION_16_18();
  result = sub_26A0E48F0(v21, &qword_28036EC48, &unk_26A4385C0);
  if (v38 != 1)
  {
    v40 = v49;
    sub_26A2928A4(a1 + v37, v49);
    if (OUTLINED_FUNCTION_16_18() == 1)
    {
      v41 = v50;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      v42 = *(v2 + 20);
      if (qword_28036C428 != -1)
      {
        OUTLINED_FUNCTION_60_4();
      }

      *(v41 + v42) = qword_280371710;
      v43 = OUTLINED_FUNCTION_16_18();

      if (v43 != 1)
      {
        sub_26A0E48F0(v40, &qword_28036EC48, &unk_26A4385C0);
      }
    }

    else
    {
      v41 = v50;
      sub_26A293AEC();
    }

    _ProtoButton.redactedProto.getter();
    OUTLINED_FUNCTION_9_23();
    sub_26A293B3C(v41, v44);
    sub_26A0E48F0(a1 + v37, &qword_28036EC48, &unk_26A4385C0);
    OUTLINED_FUNCTION_7_16();
    sub_26A293AEC();
    OUTLINED_FUNCTION_126_0();
    return __swift_storeEnumTagSinglePayload(v45, v46, v47, v2);
  }

  return result;
}

uint64_t BinaryButton.init(primaryButton:secondaryButton:)()
{
  v1 = OUTLINED_FUNCTION_20_19();
  v2 = OUTLINED_FUNCTION_41(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_17();
  v7 = v5 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v18[-v9];
  sub_26A293CB8();
  sub_26A293CB8();
  v11 = type metadata accessor for _ProtoBinaryButton(0);
  v19 = v10;
  v20 = v7;
  v21 = 0;
  v22 = 0xE000000000000000;
  OUTLINED_FUNCTION_3_33();
  sub_26A293B94(v12, v13);
  v23 = 0;
  v24 = 0;
  sub_26A4249C4();
  OUTLINED_FUNCTION_1_33();
  sub_26A293B3C(v0, v14);
  v15 = OUTLINED_FUNCTION_175();
  sub_26A293B3C(v15, v16);
  sub_26A293B3C(v7, v11);
  return sub_26A293B3C(v10, v11);
}

uint64_t BinaryButton.init(primaryButton:secondaryButton:componentName:linkIdentifier:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for _ProtoBinaryButton(0);
  OUTLINED_FUNCTION_3_33();
  sub_26A293B94(v3, v4);
  sub_26A4249C4();

  OUTLINED_FUNCTION_1_33();
  sub_26A293B3C(a2, v5);
  v6 = OUTLINED_FUNCTION_175();
  return sub_26A293B3C(v6, v7);
}

uint64_t sub_26A293164(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = type metadata accessor for _ProtoButton(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_26A293CB8();
  v10 = type metadata accessor for _ProtoBinaryButton(0);
  v11 = *(v10 + 28);
  sub_26A0E48F0(a1 + v11, &qword_28036EC48, &unk_26A4385C0);
  sub_26A293AEC();
  __swift_storeEnumTagSinglePayload(a1 + v11, 0, 1, v8);
  sub_26A293CB8();
  v12 = *(v10 + 32);
  sub_26A0E48F0(a1 + v12, &qword_28036EC48, &unk_26A4385C0);
  sub_26A293AEC();
  __swift_storeEnumTagSinglePayload(a1 + v12, 0, 1, v8);
  v13 = a1[1];

  *a1 = a4;
  a1[1] = a5;
  if (a7)
  {
    v15 = a1[3];

    a1[2] = a6;
    a1[3] = a7;
  }

  return result;
}

uint64_t BinaryButton.init(primaryButton:secondaryButton:componentName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = OUTLINED_FUNCTION_20_19();
  v8 = OUTLINED_FUNCTION_41(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_17();
  v13 = v11 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v24[-v15];
  sub_26A293CB8();
  sub_26A293CB8();
  v17 = type metadata accessor for _ProtoBinaryButton(0);
  v25 = v16;
  v26 = v13;
  v27 = a3;
  v28 = a4;
  OUTLINED_FUNCTION_3_33();
  sub_26A293B94(v18, v19);
  v29 = 0;
  v30 = 0;
  sub_26A4249C4();

  OUTLINED_FUNCTION_1_33();
  sub_26A293B3C(v4, v20);
  v21 = OUTLINED_FUNCTION_175();
  sub_26A293B3C(v21, v22);
  sub_26A293B3C(v13, v17);
  return sub_26A293B3C(v16, v17);
}

Swift::String __swiftcall BinaryButton.description(redacted:)(Swift::Bool redacted)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CD38, &qword_26A437B70);
  OUTLINED_FUNCTION_41(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_36_2();
  v7 = type metadata accessor for BinaryButton();
  v8 = OUTLINED_FUNCTION_41(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_17();
  v13 = v11 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v47 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CF08, &unk_26A426A90);
  OUTLINED_FUNCTION_12(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v20);
  v22 = &v47 - v21;
  OUTLINED_FUNCTION_6_18();
  sub_26A293CB8();
  if (redacted)
  {
    _ProtoBinaryButton.redactedProto.getter(v13);
  }

  else
  {
    sub_26A293CB8();
  }

  sub_26A293AEC();
  v22[*(v17 + 32)] = redacted;
  sub_26A293B3C(v16, type metadata accessor for BinaryButton);
  *&v22[*(v17 + 28)] = MEMORY[0x277D84F90];
  BinaryButton.primaryButton.getter();
  v23 = type metadata accessor for Button();
  OUTLINED_FUNCTION_126_0();
  __swift_storeEnumTagSinglePayload(v24, v25, v26, v23);
  sub_26A109DD8();
  sub_26A0E48F0(v1, &qword_28036CD38, &qword_26A437B70);
  BinaryButton.secondaryButton.getter();
  OUTLINED_FUNCTION_126_0();
  __swift_storeEnumTagSinglePayload(v27, v28, v29, v23);
  sub_26A109DD8();
  sub_26A0E48F0(v1, &qword_28036CD38, &qword_26A437B70);
  KeyPath = swift_getKeyPath();
  sub_26A0F7F98(KeyPath, 0x6E656E6F706D6F63, 0xED0000656D614E74, 1, v31, v32, v33, v34, v47, v48);

  v35 = swift_getKeyPath();
  sub_26A0F8774(v35, 0x6E6564496B6E696CLL, 0xEE00726569666974, 1, v36, v37, v38, v39, v47, v48);

  sub_26A101C80();
  v41 = v40;
  v43 = v42;
  sub_26A0E48F0(v22, &qword_28036CF08, &unk_26A426A90);
  v44 = v41;
  v45 = v43;
  result._object = v45;
  result._countAndFlagsBits = v44;
  return result;
}

uint64_t BinaryButton.componentProto.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for _ProtoBinaryButton(0);
  v3 = OUTLINED_FUNCTION_41(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_18();
  v6 = type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
  __swift_storeEnumTagSinglePayload(a1, 1, 1, v6);
  v7 = type metadata accessor for _ProtoResponse.Component(0);
  v8 = a1 + *(v7 + 20);
  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v9 = *(v7 + 24);
  v10 = type metadata accessor for _ProtoSeparators();
  __swift_storeEnumTagSinglePayload(a1 + v9, 1, 1, v10);
  OUTLINED_FUNCTION_2_29();
  sub_26A293CB8();
  sub_26A0E48F0(a1, &qword_28036C828, &unk_26A4276D0);
  OUTLINED_FUNCTION_8_21();
  sub_26A293AEC();
  OUTLINED_FUNCTION_175();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_126_0();
  return __swift_storeEnumTagSinglePayload(v11, v12, v13, v6);
}

uint64_t BinaryButton.asSection()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB40, &qword_26A426510);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A426410;
  *(inited + 56) = type metadata accessor for BinaryButton();
  *(inited + 64) = &protocol witness table for BinaryButton;
  __swift_allocate_boxed_opaque_existential_1((inited + 32));
  OUTLINED_FUNCTION_6_18();
  sub_26A293CB8();
  swift_beginAccess();

  sub_26A10BF5C(v1);
  type metadata accessor for _ProtoResponse.Section(0);
  sub_26A293B94(&qword_28036CB48, type metadata accessor for _ProtoResponse.Section);
  sub_26A4249C4();

  swift_setDeallocating();
  return sub_26A10C358();
}

uint64_t type metadata accessor for BinaryButton()
{
  result = qword_280371680;
  if (!qword_280371680)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26A293AEC()
{
  v1 = OUTLINED_FUNCTION_39_3();
  v3 = v2(v1);
  OUTLINED_FUNCTION_12(v3);
  v5 = *(v4 + 32);
  v6 = OUTLINED_FUNCTION_175();
  v7(v6);
  return v0;
}

uint64_t sub_26A293B3C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_12(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_26A293B94(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26A293C4C()
{
  result = type metadata accessor for _ProtoBinaryButton(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26A293CB8()
{
  v1 = OUTLINED_FUNCTION_39_3();
  v3 = v2(v1);
  OUTLINED_FUNCTION_12(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_175();
  v7(v6);
  return v0;
}

uint64_t OUTLINED_FUNCTION_16_18()
{

  return __swift_getEnumTagSinglePayload(v1, 1, v0);
}

uint64_t OUTLINED_FUNCTION_19_16()
{

  return type metadata accessor for _ProtoButton(0);
}

uint64_t OUTLINED_FUNCTION_20_19()
{

  return type metadata accessor for Button();
}

uint64_t OUTLINED_FUNCTION_21_17()
{

  return type metadata accessor for _ProtoBinaryButton(0);
}

void HorizontalListStandard.items.getter()
{
  OUTLINED_FUNCTION_76();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280371690, &qword_26A4380D0);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_36_2();
  v7 = type metadata accessor for HorizontalListStandard.Item(v6);
  v40 = *(v7 - 8);
  v8 = *(v40 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_17();
  v41 = v9 - v10;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v11);
  v39 = &v37 - v12;
  v13 = type metadata accessor for _ProtoHorizontalList_Standard.Item(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13 - 8);
  OUTLINED_FUNCTION_18();
  v18 = v17 - v16;
  v19 = 0;
  v20 = *v0;
  v21 = *(*v0 + 16);
  v42 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v21 == v19)
    {
      OUTLINED_FUNCTION_75();
      return;
    }

    if (v19 >= *(v20 + 16))
    {
      break;
    }

    v22 = v20 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v23 = *(v14 + 72);
    sub_26A2941BC();
    sub_26A2941BC();
    v24 = OUTLINED_FUNCTION_95_0();
    __swift_storeEnumTagSinglePayload(v24, v25, v26, v7);
    sub_26A297528(v18, type metadata accessor for _ProtoHorizontalList_Standard.Item);
    OUTLINED_FUNCTION_37(v1, 1, v7);
    if (v27)
    {
      sub_26A0E48F0(v1, &qword_280371690, &qword_26A4380D0);
      ++v19;
    }

    else
    {
      sub_26A297494();
      sub_26A297494();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_26A168868(0, *(v42 + 16) + 1, 1, v42);
        v42 = v35;
      }

      v30 = *(v42 + 16);
      v29 = *(v42 + 24);
      v31 = v30 + 1;
      if (v30 >= v29 >> 1)
      {
        v38 = v30 + 1;
        sub_26A168868(v29 > 1, v30 + 1, 1, v42);
        v31 = v38;
        v42 = v36;
      }

      ++v19;
      v32 = v42;
      *(v42 + 16) = v31;
      v33 = v32 + ((*(v40 + 80) + 32) & ~*(v40 + 80));
      v34 = *(v40 + 72);
      sub_26A297494();
    }
  }

  __break(1u);
}

uint64_t sub_26A2941BC()
{
  OUTLINED_FUNCTION_131_0();
  v2 = v1(0);
  OUTLINED_FUNCTION_12(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_175();
  v6(v5);
  return v0;
}

void HorizontalListStandard.text1.getter()
{
  OUTLINED_FUNCTION_76();
  v30 = v2;
  v3 = type metadata accessor for _ProtoTextProperty(0);
  v4 = OUTLINED_FUNCTION_12(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_18();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  v11 = OUTLINED_FUNCTION_41(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_14_1();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_93_0();
  v15 = *(type metadata accessor for _ProtoHorizontalList_Standard(0) + 28);
  sub_26A10FD9C();
  v16 = 1;
  v17 = OUTLINED_FUNCTION_29_13();
  sub_26A0E48F0(v1, &qword_28036C7B8, &unk_26A425BF0);
  if (v17 != 1)
  {
    sub_26A10FD9C();
    OUTLINED_FUNCTION_38_0();
    if (v18)
    {
      *v9 = MEMORY[0x277D84F90];
      *(v9 + 8) = 0;
      v19 = v9 + v3[7];
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      v20 = v3[8];
      v21 = type metadata accessor for _ProtoActionProperty();
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v22, v23, v24, v21);
      v25 = v3[9];
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v26, v27, v28, v21);
      OUTLINED_FUNCTION_38_0();
      if (!v18)
      {
        sub_26A0E48F0(v0, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      sub_26A297494();
    }

    sub_26A297494();
    v16 = 0;
  }

  v29 = type metadata accessor for TextProperty(0);
  __swift_storeEnumTagSinglePayload(v30, v16, 1, v29);
  OUTLINED_FUNCTION_75();
}

uint64_t HorizontalListStandard.componentName.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return OUTLINED_FUNCTION_175();
}

uint64_t HorizontalListStandard.init(items:text1:componentName:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for _ProtoHorizontalList_Standard(0);
  OUTLINED_FUNCTION_10_27();
  sub_26A297598(v3, v4);
  OUTLINED_FUNCTION_30_3();
  sub_26A4249C4();

  return sub_26A0E48F0(a2, &qword_28036CB08, &unk_26A428720);
}

uint64_t sub_26A294570(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v46 = a4;
  v39 = a3;
  v40 = a1;
  v38 = type metadata accessor for _ProtoTextProperty(0);
  v8 = *(*(v38 - 8) + 64);
  MEMORY[0x28223BE20](v38);
  v37 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TextProperty(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v36 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for HorizontalListStandard.Item(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = type metadata accessor for _ProtoHorizontalList_Standard.Item(0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = *(a2 + 16);
  v20 = MEMORY[0x277D84F90];
  if (v19)
  {
    v34 = a5;
    v35 = v5;
    v43[0] = MEMORY[0x277D84F90];
    sub_26A10D70C();
    v20 = v43[0];
    v21 = a2 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v22 = *(v14 + 72);
    do
    {
      sub_26A2941BC();
      sub_26A297494();
      v43[0] = v20;
      v23 = *(v20 + 16);
      if (v23 >= *(v20 + 24) >> 1)
      {
        sub_26A10D70C();
        v20 = v43[0];
      }

      *(v20 + 16) = v23 + 1;
      v24 = v20 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
      v25 = *(v17 + 72);
      sub_26A297494();
      v21 += v22;
      --v19;
    }

    while (v19);
    a5 = v34;
  }

  v26 = v40;
  v27 = *v40;

  *v26 = v20;
  sub_26A10FD9C();
  if (v42)
  {
    sub_26A0D671C(&v41, v43);
    v28 = v44;
    v29 = v45;
    __swift_project_boxed_opaque_existential_1(v43, v44);
    (*(v29 + 8))(v28, v29);
    sub_26A297494();
    v30 = *(type metadata accessor for _ProtoHorizontalList_Standard(0) + 28);
    sub_26A0E48F0(v26 + v30, &qword_28036C7B8, &unk_26A425BF0);
    sub_26A297494();
    __swift_storeEnumTagSinglePayload(v26 + v30, 0, 1, v38);
    __swift_destroy_boxed_opaque_existential_1(v43);
  }

  else
  {
    sub_26A0E48F0(&v41, &qword_28036CB08, &unk_26A428720);
  }

  v31 = v26[2];

  v26[1] = v46;
  v26[2] = a5;
  return result;
}

uint64_t HorizontalListStandard.init(items:text1:)(uint64_t a1, uint64_t a2)
{
  sub_26A10FD9C();
  type metadata accessor for _ProtoHorizontalList_Standard(0);
  OUTLINED_FUNCTION_10_27();
  sub_26A297598(v3, v4);
  OUTLINED_FUNCTION_30_3();
  sub_26A4249C4();

  sub_26A0E48F0(a2, &qword_28036CB08, &unk_26A428720);
  return sub_26A0E48F0(v6, &qword_28036CB08, &unk_26A428720);
}

uint64_t HorizontalListStandard.Item.style.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + *(type metadata accessor for _ProtoHorizontalList_Standard.Item(0) + 20));
  result = OUTLINED_FUNCTION_142();
  v5 = *(v3 + 24);
  *a1 = *(v3 + 16);
  *(a1 + 8) = v5;
  return result;
}

uint64_t HorizontalListStandard.Item.thumbnail.getter()
{
  v2 = OUTLINED_FUNCTION_41_2();
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_51_1();
  v6 = type metadata accessor for _ProtoVisualProperty();
  v7 = OUTLINED_FUNCTION_12(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_18();
  v10 = OUTLINED_FUNCTION_36_2();
  v11 = *(v0 + *(type metadata accessor for _ProtoHorizontalList_Standard.Item(v10) + 20));
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_54_1();
  v12 = OUTLINED_FUNCTION_107();
  OUTLINED_FUNCTION_37(v12, v13, v6);
  if (v14)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v15 = *(v6 + 32);
    v16 = type metadata accessor for _ProtoActionProperty();
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v17, v18, v19, v16);
    v20 = *(v6 + 36);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v21, v22, v23, v16);
    v24 = OUTLINED_FUNCTION_107();
    OUTLINED_FUNCTION_37(v24, v25, v6);
    if (!v14)
    {
      sub_26A0E48F0(v1, &qword_28036CAE8, &unk_26A426430);
    }
  }

  else
  {
    sub_26A297494();
  }

  return sub_26A297494();
}

uint64_t HorizontalListStandard.Item.text1.getter()
{
  v2 = OUTLINED_FUNCTION_41_2();
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_51_1();
  v7 = type metadata accessor for _ProtoTextProperty(v6);
  v8 = OUTLINED_FUNCTION_12(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_18();
  v11 = OUTLINED_FUNCTION_36_2();
  v12 = *(v0 + *(type metadata accessor for _ProtoHorizontalList_Standard.Item(v11) + 20));
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_54_1();
  v13 = OUTLINED_FUNCTION_107();
  OUTLINED_FUNCTION_37(v13, v14, v7);
  if (v15)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v16 = *(v7 + 32);
    v17 = type metadata accessor for _ProtoActionProperty();
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v18, v19, v20, v17);
    v21 = *(v7 + 36);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v22, v23, v24, v17);
    v25 = OUTLINED_FUNCTION_107();
    OUTLINED_FUNCTION_37(v25, v26, v7);
    if (!v15)
    {
      sub_26A0E48F0(v1, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    sub_26A297494();
  }

  return sub_26A297494();
}

void HorizontalListStandard.Item.text2.getter()
{
  OUTLINED_FUNCTION_76();
  v31 = v3;
  v4 = type metadata accessor for _ProtoTextProperty(0);
  v5 = OUTLINED_FUNCTION_12(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_18();
  v10 = v9 - v8;
  v11 = OUTLINED_FUNCTION_41_2();
  v12 = OUTLINED_FUNCTION_41(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_14_1();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_93_0();
  v16 = *(v0 + *(type metadata accessor for _ProtoHorizontalList_Standard.Item(0) + 20));
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_127_0();
  v17 = 1;
  v18 = OUTLINED_FUNCTION_29_13();
  sub_26A0E48F0(v2, &qword_28036C7B8, &unk_26A425BF0);
  if (v18 != 1)
  {
    sub_26A10FD9C();
    OUTLINED_FUNCTION_38_0();
    if (v19)
    {
      *v10 = MEMORY[0x277D84F90];
      *(v10 + 8) = 0;
      v20 = v10 + v4[7];
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      v21 = v4[8];
      v22 = type metadata accessor for _ProtoActionProperty();
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v23, v24, v25, v22);
      v26 = v4[9];
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v27, v28, v29, v22);
      OUTLINED_FUNCTION_38_0();
      if (!v19)
      {
        sub_26A0E48F0(v1, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      sub_26A297494();
    }

    sub_26A297494();
    v17 = 0;
  }

  v30 = type metadata accessor for TextProperty(0);
  __swift_storeEnumTagSinglePayload(v31, v17, 1, v30);
  OUTLINED_FUNCTION_75();
}

void HorizontalListStandard.Item.action.getter()
{
  OUTLINED_FUNCTION_76();
  v22 = v3;
  v4 = type metadata accessor for _ProtoActionProperty();
  v5 = OUTLINED_FUNCTION_12(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_18();
  v10 = (v9 - v8);
  v11 = OUTLINED_FUNCTION_41_2();
  v12 = OUTLINED_FUNCTION_41(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_14_1();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_93_0();
  v16 = *(v0 + *(type metadata accessor for _ProtoHorizontalList_Standard.Item(0) + 20));
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_127_0();
  v17 = 1;
  v18 = OUTLINED_FUNCTION_29_13();
  sub_26A0E48F0(v2, &off_28036C7C0, &off_26A427400);
  if (v18 != 1)
  {
    sub_26A10FD9C();
    OUTLINED_FUNCTION_38_0();
    if (v19)
    {
      *v10 = MEMORY[0x277D84F90];
      v10[1] = 0;
      v10[2] = 0xE000000000000000;
      v20 = v10 + *(v4 + 24);
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      OUTLINED_FUNCTION_38_0();
      if (!v19)
      {
        sub_26A0E48F0(v1, &off_28036C7C0, &off_26A427400);
      }
    }

    else
    {
      sub_26A297494();
    }

    sub_26A297494();
    v17 = 0;
  }

  v21 = type metadata accessor for ActionProperty();
  __swift_storeEnumTagSinglePayload(v22, v17, 1, v21);
  OUTLINED_FUNCTION_75();
}

uint64_t HorizontalListStandard.Item.componentName.getter()
{
  v1 = (*(v0 + *(type metadata accessor for _ProtoHorizontalList_Standard.Item(0) + 20)) + OBJC_IVAR____TtCVV10SnippetKit29_ProtoHorizontalList_Standard4ItemP33_A9651A94259880D0C56A58101508E59B13_StorageClass__componentName);
  OUTLINED_FUNCTION_142();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

void HorizontalListStandard.Item.redactedProto.getter()
{
  OUTLINED_FUNCTION_76();
  v1 = v0;
  v152 = type metadata accessor for _ProtoTextProperty(0);
  v2 = OUTLINED_FUNCTION_12(v152);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_17();
  v149 = v5 - v6;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_47();
  v148 = v8;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_47();
  v146 = v10;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v11);
  v145 = (v143 - v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  v14 = OUTLINED_FUNCTION_41(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_17();
  v147 = v17 - v18;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_47();
  v150 = v20;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_47();
  v151 = v22;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_47();
  v144 = v24;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v25);
  v26 = type metadata accessor for _ProtoVisualProperty();
  v27 = OUTLINED_FUNCTION_12(v26);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_17();
  v143[0] = v30 - v31;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v32);
  v34 = v143 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  v36 = OUTLINED_FUNCTION_41(v35);
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_17();
  v143[1] = v39 - v40;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v41);
  v43 = v143 - v42;
  MEMORY[0x28223BE20](v44);
  v46 = v143 - v45;
  OUTLINED_FUNCTION_11_22();
  sub_26A2941BC();
  v153 = *(type metadata accessor for _ProtoHorizontalList_Standard.Item(0) + 20);
  v154 = v1;
  v47 = *(v1 + v153);
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_35_1();
  sub_26A10FD9C();
  LODWORD(v1) = __swift_getEnumTagSinglePayload(v46, 1, v26);
  sub_26A0E48F0(v46, &qword_28036CAE8, &unk_26A426430);
  v48 = MEMORY[0x277D84F90];
  if (v1 != 1)
  {
    sub_26A10FD9C();
    OUTLINED_FUNCTION_37(v43, 1, v26);
    if (v49)
    {
      *v34 = v48;
      *(v34 + 4) = 0;
      v50 = &v34[v26[7]];
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      v51 = v26[8];
      v52 = type metadata accessor for _ProtoActionProperty();
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v53, v54, v55, v52);
      v56 = v26[9];
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v57, v58, v59, v52);
      OUTLINED_FUNCTION_37(v43, 1, v26);
      v60 = v154;
      if (!v49)
      {
        sub_26A0E48F0(v43, &qword_28036CAE8, &unk_26A426430);
      }
    }

    else
    {
      sub_26A297494();
      v60 = v154;
    }

    _ProtoVisualProperty.redactedProto.getter();
    sub_26A297528(v34, type metadata accessor for _ProtoVisualProperty);
    v61 = v153;
    v62 = *(v60 + v153);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v64 = *(v60 + v61);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v65 = type metadata accessor for _ProtoHorizontalList_Standard.Item._StorageClass(0);
      v66 = *(v65 + 48);
      v67 = *(v65 + 52);
      swift_allocObject();
      OUTLINED_FUNCTION_30_10();
      *(v60 + v61) = v68;
    }

    sub_26A297494();
    v69 = OUTLINED_FUNCTION_95_0();
    __swift_storeEnumTagSinglePayload(v69, v70, v71, v26);
    swift_beginAccess();
    sub_26A10CF40();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142();
  sub_26A10FD9C();
  v72 = OUTLINED_FUNCTION_107();
  v73 = v152;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v72, v74, v152);
  OUTLINED_FUNCTION_35_1();
  sub_26A0E48F0(v76, v77, v78);
  if (EnumTagSinglePayload != 1)
  {
    v79 = v144;
    sub_26A10FD9C();
    v80 = OUTLINED_FUNCTION_107();
    OUTLINED_FUNCTION_37(v80, v81, v73);
    if (v49)
    {
      v94 = v145;
      *v145 = v48;
      *(v94 + 8) = 0;
      v82 = v94 + v73[7];
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      v83 = v73[8];
      v84 = type metadata accessor for _ProtoActionProperty();
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v85, v86, v87, v84);
      v88 = v73[9];
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v89, v90, v91, v84);
      v92 = OUTLINED_FUNCTION_107();
      OUTLINED_FUNCTION_37(v92, v93, v73);
      v96 = v153;
      v95 = v154;
      if (!v49)
      {
        sub_26A0E48F0(v79, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      v94 = v145;
      sub_26A297494();
      v96 = v153;
      v95 = v154;
    }

    _ProtoTextProperty.redactedProto.getter();
    OUTLINED_FUNCTION_9_24();
    sub_26A297528(v94, v97);
    v98 = *(v95 + v96);
    v99 = swift_isUniquelyReferenced_nonNull_native();
    v100 = *(v95 + v96);
    if ((v99 & 1) == 0)
    {
      v101 = type metadata accessor for _ProtoHorizontalList_Standard.Item._StorageClass(0);
      v102 = *(v101 + 48);
      v103 = *(v101 + 52);
      swift_allocObject();
      OUTLINED_FUNCTION_30_10();
      *(v95 + v96) = v104;
    }

    sub_26A297494();
    v105 = OUTLINED_FUNCTION_95_0();
    __swift_storeEnumTagSinglePayload(v105, v106, v107, v73);
    swift_beginAccess();
    sub_26A10CF40();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142();
  sub_26A10FD9C();
  v108 = OUTLINED_FUNCTION_107();
  v110 = __swift_getEnumTagSinglePayload(v108, v109, v73);
  OUTLINED_FUNCTION_35_1();
  sub_26A0E48F0(v111, v112, v113);
  if (v110 != 1)
  {
    v114 = v147;
    sub_26A10FD9C();
    v115 = OUTLINED_FUNCTION_166_1();
    OUTLINED_FUNCTION_37(v115, v116, v73);
    if (v49)
    {
      v129 = v148;
      *v148 = v48;
      *(v129 + 8) = 0;
      v117 = v129 + v73[7];
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      v118 = v73[8];
      v119 = type metadata accessor for _ProtoActionProperty();
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v120, v121, v122, v119);
      v123 = v73[9];
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v124, v125, v126, v119);
      v127 = OUTLINED_FUNCTION_166_1();
      OUTLINED_FUNCTION_37(v127, v128, v73);
      v130 = v154;
      if (!v49)
      {
        sub_26A0E48F0(v114, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      v129 = v148;
      sub_26A297494();
      v130 = v154;
    }

    _ProtoTextProperty.redactedProto.getter();
    OUTLINED_FUNCTION_9_24();
    sub_26A297528(v129, v131);
    v132 = v153;
    v133 = *(v130 + v153);
    v134 = swift_isUniquelyReferenced_nonNull_native();
    v135 = *(v130 + v132);
    if ((v134 & 1) == 0)
    {
      v136 = type metadata accessor for _ProtoHorizontalList_Standard.Item._StorageClass(0);
      v137 = *(v136 + 48);
      v138 = *(v136 + 52);
      swift_allocObject();
      OUTLINED_FUNCTION_30_10();
      *(v130 + v132) = v139;
    }

    sub_26A297494();
    v140 = OUTLINED_FUNCTION_95_0();
    __swift_storeEnumTagSinglePayload(v140, v141, v142, v73);
    swift_beginAccess();
    sub_26A10CF40();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t HorizontalListStandard.Item.init(style:thumbnail:text1:text2:action:componentName:)(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v9 = *a1;
  v10 = *(a1 + 8);
  type metadata accessor for _ProtoHorizontalList_Standard.Item(0);
  OUTLINED_FUNCTION_0_44();
  sub_26A297598(v11, v12);
  OUTLINED_FUNCTION_30_3();
  sub_26A4249C4();

  sub_26A0E48F0(a5, &qword_28036CAF8, &unk_26A426D30);
  sub_26A0E48F0(a4, &qword_28036CB08, &unk_26A428720);
  __swift_destroy_boxed_opaque_existential_1(a3);
  return __swift_destroy_boxed_opaque_existential_1(a2);
}

uint64_t sub_26A295E7C(uint64_t a1, uint64_t a2, int a3, void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v68 = a8;
  v65 = a7;
  v63 = a6;
  v60 = a4;
  v61 = a5;
  v59 = a3;
  v58 = a2;
  v10 = type metadata accessor for ActionProperty();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v57 = v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v67 = v55 - v15;
  v66 = type metadata accessor for _ProtoActionProperty();
  v16 = *(*(v66 - 8) + 64);
  MEMORY[0x28223BE20](v66);
  v55[1] = v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v56 = v55 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = v55 - v22;
  v62 = type metadata accessor for _ProtoTextProperty(0);
  v24 = *(*(v62 - 8) + 64);
  MEMORY[0x28223BE20](v62);
  v55[0] = v55 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v27 = type metadata accessor for TextProperty(0);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v29 = type metadata accessor for _ProtoVisualProperty();
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29 - 8);
  v31 = type metadata accessor for VisualProperty();
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31 - 8);
  v33 = *(type metadata accessor for _ProtoHorizontalList_Standard.Item(0) + 20);
  v34 = *(a1 + v33);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v36 = *(a1 + v33);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v37 = type metadata accessor for _ProtoHorizontalList_Standard.Item._StorageClass(0);
    v38 = *(v37 + 48);
    v39 = *(v37 + 52);
    swift_allocObject();
    sub_26A1F9840();
    v36 = v40;
    *(a1 + v33) = v40;
  }

  v64 = a9;
  swift_beginAccess();
  *(v36 + 16) = v58;
  *(v36 + 24) = v59 & 1;
  v41 = v60[3];
  v42 = v60[4];
  __swift_project_boxed_opaque_existential_1(v60, v41);
  (*(v42 + 8))(v41, v42);
  sub_26A297494();
  _ProtoHorizontalList_Standard.Item.thumbnail.setter();
  v43 = v61[3];
  v44 = v61[4];
  __swift_project_boxed_opaque_existential_1(v61, v43);
  (*(v44 + 8))(v43, v44);
  sub_26A297494();
  _ProtoHorizontalList_Standard.Item.text1.setter();
  sub_26A10FD9C();
  v45 = v70;
  if (v70)
  {
    v46 = v71;
    __swift_project_boxed_opaque_existential_1(v69, v70);
    (*(v46 + 8))(v45, v46);
    sub_26A297494();
    v47 = v62;
    __swift_storeEnumTagSinglePayload(v23, 0, 1, v62);
    __swift_destroy_boxed_opaque_existential_1(v69);
    if (__swift_getEnumTagSinglePayload(v23, 1, v47) != 1)
    {
      v48 = v55[0];
      sub_26A297494();
      sub_26A2941BC();
      _ProtoHorizontalList_Standard.Item.text2.setter();
      sub_26A297528(v48, type metadata accessor for _ProtoTextProperty);
      goto LABEL_8;
    }
  }

  else
  {
    sub_26A0E48F0(v69, &qword_28036CB08, &unk_26A428720);
    __swift_storeEnumTagSinglePayload(v23, 1, 1, v62);
  }

  sub_26A0E48F0(v23, &qword_28036C7B8, &unk_26A425BF0);
LABEL_8:
  sub_26A10FD9C();
  v49 = v70;
  if (!v70)
  {
    sub_26A0E48F0(v69, &qword_28036CAF8, &unk_26A426D30);
    v51 = v67;
    __swift_storeEnumTagSinglePayload(v67, 1, 1, v66);
    goto LABEL_12;
  }

  v50 = v71;
  __swift_project_boxed_opaque_existential_1(v69, v70);
  (*(v50 + 8))(v49, v50);
  v51 = v67;
  sub_26A297494();
  v52 = v66;
  __swift_storeEnumTagSinglePayload(v51, 0, 1, v66);
  __swift_destroy_boxed_opaque_existential_1(v69);
  if (__swift_getEnumTagSinglePayload(v51, 1, v52) == 1)
  {
LABEL_12:
    sub_26A0E48F0(v51, &off_28036C7C0, &off_26A427400);
    goto LABEL_13;
  }

  v53 = v56;
  sub_26A297494();
  sub_26A2941BC();
  _ProtoHorizontalList_Standard.Item.action.setter();
  sub_26A297528(v53, type metadata accessor for _ProtoActionProperty);
LABEL_13:

  return _ProtoHorizontalList_Standard.Item.componentName.setter();
}

uint64_t HorizontalListStandard.Item.init(style:thumbnail:text1:text2:action:)(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v9 = *a1;
  v10 = *(a1 + 8);
  sub_26A0E5D68(a2, v17);
  sub_26A0E5D68(a3, v16);
  sub_26A10FD9C();
  sub_26A10FD9C();
  type metadata accessor for _ProtoHorizontalList_Standard.Item(0);
  OUTLINED_FUNCTION_0_44();
  sub_26A297598(v11, v12);
  sub_26A4249C4();
  sub_26A0E48F0(a5, &qword_28036CAF8, &unk_26A426D30);
  sub_26A0E48F0(a4, &qword_28036CB08, &unk_26A428720);
  __swift_destroy_boxed_opaque_existential_1(a3);
  __swift_destroy_boxed_opaque_existential_1(a2);
  sub_26A0E48F0(v14, &qword_28036CAF8, &unk_26A426D30);
  sub_26A0E48F0(v15, &qword_28036CB08, &unk_26A428720);
  __swift_destroy_boxed_opaque_existential_1(v16);
  return __swift_destroy_boxed_opaque_existential_1(v17);
}

Swift::String __swiftcall HorizontalListStandard.Item.description(redacted:)(Swift::Bool redacted)
{
  OUTLINED_FUNCTION_76();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB18, &unk_26A427670);
  OUTLINED_FUNCTION_41(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v7);
  v131 = &v123 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v12);
  v13 = OUTLINED_FUNCTION_36_2();
  v127 = type metadata accessor for _ProtoTextProperty(v13);
  v14 = OUTLINED_FUNCTION_12(v127);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_18();
  v128 = v18 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB30, &qword_26A426480);
  v20 = OUTLINED_FUNCTION_41(v19);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_17();
  v130 = v23 - v24;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v25);
  v129 = &v123 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  OUTLINED_FUNCTION_41(v27);
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v30);
  v32 = &v123 - v31;
  v125 = type metadata accessor for _ProtoVisualProperty();
  v33 = OUTLINED_FUNCTION_12(v125);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_18();
  v38 = v37 - v36;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB20, &unk_26A426470);
  OUTLINED_FUNCTION_41(v39);
  v41 = *(v40 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v42);
  v44 = &v123 - v43;
  v45 = type metadata accessor for HorizontalListStandard.Item(0);
  v46 = OUTLINED_FUNCTION_41(v45);
  v48 = *(v47 + 64);
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_14_1();
  MEMORY[0x28223BE20](v49);
  v51 = &v123 - v50;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CEF0, &qword_26A438130);
  OUTLINED_FUNCTION_12(v52);
  v54 = *(v53 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v55);
  v57 = &v123 - v56;
  sub_26A2941BC();
  v126 = v32;
  if (v3)
  {
    HorizontalListStandard.Item.redactedProto.getter();
  }

  else
  {
    sub_26A2941BC();
  }

  sub_26A297494();
  v57[*(v52 + 32)] = v3 & 1;
  sub_26A297528(v51, type metadata accessor for HorizontalListStandard.Item);
  v58 = *(v52 + 28);
  *&v57[v58] = MEMORY[0x277D84F90];
  v134 = 0;
  v135 = 0xE000000000000000;
  v59 = *&v57[*(type metadata accessor for _ProtoHorizontalList_Standard.Item(0) + 20)];
  OUTLINED_FUNCTION_142();
  v60 = *(v59 + 24);
  v132 = *(v59 + 16);
  v133 = v60;
  sub_26A424FA4();
  v61 = v134;
  v62 = v135;
  v63 = HIBYTE(v135) & 0xF;
  if ((v135 & 0x2000000000000000) == 0)
  {
    v63 = v134 & 0xFFFFFFFFFFFFLL;
  }

  if (v63)
  {
    v124 = v1;

    sub_26A166EC4();
    v65 = v64;
    v66 = *(v64 + 16);
    if (v66 >= *(v64 + 24) >> 1)
    {
      sub_26A166EC4();
      v65 = v121;
    }

    *(v65 + 16) = v66 + 1;
    v67 = v65 + 32 * v66;
    *(v67 + 32) = xmmword_26A4380C0;
    *(v67 + 48) = v61;
    *(v67 + 56) = v62;
    *&v57[v58] = v65;
    v1 = v124;
  }

  else
  {
  }

  OUTLINED_FUNCTION_142();
  v68 = v126;
  sub_26A10FD9C();
  v69 = OUTLINED_FUNCTION_166_1();
  v70 = v125;
  OUTLINED_FUNCTION_37(v69, v71, v125);
  v73 = v127;
  v72 = v128;
  if (v74)
  {
    *v38 = MEMORY[0x277D84F90];
    *(v38 + 8) = 0;
    v75 = v38 + v70[7];
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    v124 = v59;
    v76 = v72;
    v77 = v73;
    v78 = v44;
    v79 = v1;
    v80 = v70[8];
    v81 = type metadata accessor for _ProtoActionProperty();
    v1 = v79;
    v44 = v78;
    v73 = v77;
    v72 = v76;
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v82, v83, v84, v81);
    v85 = v70[9];
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v86, v87, v88, v81);
    v89 = OUTLINED_FUNCTION_166_1();
    OUTLINED_FUNCTION_37(v89, v90, v70);
    if (!v74)
    {
      sub_26A0E48F0(v68, &qword_28036CAE8, &unk_26A426430);
    }
  }

  else
  {
    sub_26A297494();
  }

  sub_26A297494();
  v91 = type metadata accessor for VisualProperty();
  __swift_storeEnumTagSinglePayload(v44, 0, 1, v91);
  sub_26A10426C();
  sub_26A0E48F0(v44, &qword_28036CB20, &unk_26A426470);
  OUTLINED_FUNCTION_142();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_37(v1, 1, v73);
  if (v74)
  {
    *v72 = MEMORY[0x277D84F90];
    *(v72 + 8) = 0;
    v92 = v72 + v73[7];
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    v93 = v73[8];
    v94 = type metadata accessor for _ProtoActionProperty();
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v95, v96, v97, v94);
    v98 = v73[9];
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v99, v100, v101, v94);
    OUTLINED_FUNCTION_37(v1, 1, v73);
    if (!v74)
    {
      sub_26A0E48F0(v1, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    sub_26A297494();
  }

  v102 = v129;
  sub_26A297494();
  v103 = type metadata accessor for TextProperty(0);
  __swift_storeEnumTagSinglePayload(v102, 0, 1, v103);
  sub_26A104244();
  OUTLINED_FUNCTION_35_1();
  sub_26A0E48F0(v104, v105, v106);
  HorizontalListStandard.Item.text2.getter();
  sub_26A104244();
  OUTLINED_FUNCTION_35_1();
  sub_26A0E48F0(v107, v108, v109);
  v110 = v131;
  HorizontalListStandard.Item.action.getter();
  sub_26A104140();
  sub_26A0E48F0(v110, &qword_28036CB18, &unk_26A427670);
  swift_getKeyPath();
  OUTLINED_FUNCTION_15_20();
  sub_26A0F7688(v111, v112, v113, v114, v115, v116, v117, v118, v123, v124);

  sub_26A0F9B8C();
  sub_26A0E48F0(v57, &qword_28036CEF0, &qword_26A438130);
  OUTLINED_FUNCTION_175();
  OUTLINED_FUNCTION_75();
  result._object = v120;
  result._countAndFlagsBits = v119;
  return result;
}

uint64_t _ProtoHorizontalList_Standard.Item.Style.description.getter()
{
  v1 = *v0;
  if (*(v0 + 8) == 1)
  {
    v2 = 0x6D49656E696C6E69;
    if (v1 != 1)
    {
      v2 = 0x6D49657261757173;
    }

    if (v1)
    {
      return v2;
    }

    else
    {
      return 0x496465646E756F72;
    }
  }

  else
  {
    sub_26A424EF4();

    strcpy(v5, "Unrecognized(");
    v4 = sub_26A4251B4();
    MEMORY[0x26D65BA70](v4);

    MEMORY[0x26D65BA70](41, 0xE100000000000000);
    return v5[0];
  }
}

uint64_t HorizontalListStandard.Item.hash(into:)()
{
  type metadata accessor for _ProtoHorizontalList_Standard.Item(0);
  OUTLINED_FUNCTION_0_44();
  sub_26A297598(v0, v1);

  return sub_26A424B44();
}

uint64_t HorizontalListStandard.Item.hashValue.getter()
{
  sub_26A425504();
  type metadata accessor for _ProtoHorizontalList_Standard.Item(0);
  OUTLINED_FUNCTION_0_44();
  sub_26A297598(v0, v1);
  sub_26A424B44();
  return sub_26A425554();
}

uint64_t sub_26A297198()
{
  sub_26A425504();
  type metadata accessor for _ProtoHorizontalList_Standard.Item(0);
  sub_26A297598(&qword_28036FA18, type metadata accessor for _ProtoHorizontalList_Standard.Item);
  sub_26A424B44();
  return sub_26A425554();
}

uint64_t HorizontalListStandard.componentProto.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for _ProtoHorizontalList_Standard(0);
  v3 = OUTLINED_FUNCTION_41(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_18();
  v6 = type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v6);
  v10 = type metadata accessor for _ProtoResponse.Component(0);
  v11 = a1 + *(v10 + 20);
  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v12 = *(v10 + 24);
  type metadata accessor for _ProtoSeparators();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
  OUTLINED_FUNCTION_13_17();
  sub_26A2941BC();
  sub_26A0E48F0(a1, &qword_28036C828, &unk_26A4276D0);
  OUTLINED_FUNCTION_12_18();
  sub_26A297494();
  OUTLINED_FUNCTION_175();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v6);
}

uint64_t HorizontalListStandard.asSection()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB40, &qword_26A426510);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A426410;
  *(inited + 56) = type metadata accessor for HorizontalListStandard(0);
  *(inited + 64) = &protocol witness table for HorizontalListStandard;
  __swift_allocate_boxed_opaque_existential_1((inited + 32));
  sub_26A2941BC();
  OUTLINED_FUNCTION_142();

  sub_26A10BF5C(v1);
  type metadata accessor for _ProtoResponse.Section(0);
  sub_26A297598(&qword_28036CB48, type metadata accessor for _ProtoResponse.Section);
  OUTLINED_FUNCTION_30_3();
  sub_26A4249C4();

  swift_setDeallocating();
  return sub_26A10C358();
}

uint64_t sub_26A297494()
{
  OUTLINED_FUNCTION_131_0();
  v2 = v1(0);
  OUTLINED_FUNCTION_12(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_175();
  v6(v5);
  return v0;
}

uint64_t sub_26A297528(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_12(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_26A297598(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26A297770(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_29_13()
{

  return __swift_getEnumTagSinglePayload(v1, 1, v0);
}

void OUTLINED_FUNCTION_30_10()
{

  sub_26A1F9840();
}

uint64_t Visibility.idioms.getter()
{
  v1 = *v0;
  j__swift_bridgeObjectRetain(*v0, *(v0 + 8));
  return v1;
}

uint64_t Visibility.description.getter()
{
  v1 = *(*v0 + 16);
  if (*(v0 + 8))
  {
    if (v1)
    {
      v2 = 2003789939;
LABEL_6:
      v5 = v2 | 0x3A6E6F2800000000;
      v3 = sub_26A12CBBC(*v0);
      MEMORY[0x26D65BA70](v3);

      MEMORY[0x26D65BA70](41, 0xE100000000000000);
      return v5;
    }
  }

  else if (v1)
  {
    v2 = 1701079400;
    goto LABEL_6;
  }

  return 0;
}

uint64_t sub_26A2979F0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 9))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26A297A30(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t SimpleItemRichSearchResult.text1.getter()
{
  v2 = OUTLINED_FUNCTION_41_2();
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_56_3();
  v7 = OUTLINED_FUNCTION_12(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_18();
  v12 = v11 - v10;
  v13 = *(v0 + *(type metadata accessor for _ProtoSimpleItem_RichSearchResult(0) + 20));
  OUTLINED_FUNCTION_142();
  sub_26A10FD9C();
  v14 = OUTLINED_FUNCTION_107();
  OUTLINED_FUNCTION_37(v14, v15, v6);
  if (v16)
  {
    *v12 = MEMORY[0x277D84F90];
    *(v12 + 8) = 0;
    v17 = v12 + v6[7];
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    v18 = v6[8];
    v19 = type metadata accessor for _ProtoActionProperty();
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v20, v21, v22, v19);
    v23 = v6[9];
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v24, v25, v26, v19);
    v27 = OUTLINED_FUNCTION_107();
    OUTLINED_FUNCTION_37(v27, v28, v6);
    if (!v16)
    {
      sub_26A0E48F0(v1, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    sub_26A29BCE0();
  }

  return sub_26A29BCE0();
}

void SimpleItemRichSearchResult.text3.getter()
{
  OUTLINED_FUNCTION_76();
  v4 = OUTLINED_FUNCTION_239(v3);
  v5 = type metadata accessor for _ProtoMultilineTextProperty(v4);
  v6 = OUTLINED_FUNCTION_12(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4_7();
  v9 = OUTLINED_FUNCTION_41_2();
  v10 = OUTLINED_FUNCTION_41(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v13);
  v14 = OUTLINED_FUNCTION_21_18();
  OUTLINED_FUNCTION_241(v14);
  OUTLINED_FUNCTION_23_4();
  OUTLINED_FUNCTION_127_0();
  v15 = OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_62_1(v15, v16);
  if (v0 != 1)
  {
    OUTLINED_FUNCTION_258();
    OUTLINED_FUNCTION_38_0();
    if (v17)
    {
      OUTLINED_FUNCTION_161_0(MEMORY[0x277D84F90]);
      v18 = OUTLINED_FUNCTION_61_1();
      OUTLINED_FUNCTION_1_7(v18);
      if (!v17)
      {
        sub_26A0E48F0(v1, &qword_28036CAE0, &unk_26A4273F0);
      }
    }

    else
    {
      OUTLINED_FUNCTION_57_10();
    }

    OUTLINED_FUNCTION_60_9();
    v2 = 0;
  }

  v19 = type metadata accessor for MultilineTextProperty(0);
  __swift_storeEnumTagSinglePayload(&qword_28036CAE0, v2, 1, v19);
  OUTLINED_FUNCTION_75();
}

void sub_26A297DFC()
{
  OUTLINED_FUNCTION_76();
  v3 = v2;
  v5 = OUTLINED_FUNCTION_239(v4);
  v6 = type metadata accessor for _ProtoTextProperty(v5);
  v7 = OUTLINED_FUNCTION_12(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_4_7();
  v10 = OUTLINED_FUNCTION_41_2();
  v11 = OUTLINED_FUNCTION_41(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v14);
  v15 = OUTLINED_FUNCTION_21_18();
  OUTLINED_FUNCTION_241(v15);
  v16 = *v3;
  OUTLINED_FUNCTION_23_4();
  OUTLINED_FUNCTION_127_0();
  v17 = OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_62_1(v17, v18);
  if (v0 != 1)
  {
    OUTLINED_FUNCTION_258();
    OUTLINED_FUNCTION_38_0();
    if (v19)
    {
      OUTLINED_FUNCTION_161_0(MEMORY[0x277D84F90]);
      v20 = OUTLINED_FUNCTION_61_1();
      OUTLINED_FUNCTION_1_7(v20);
      if (!v19)
      {
        sub_26A0E48F0(v1, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      OUTLINED_FUNCTION_57_10();
    }

    OUTLINED_FUNCTION_60_9();
    v3 = 0;
  }

  v21 = type metadata accessor for TextProperty(0);
  __swift_storeEnumTagSinglePayload(&qword_28036C7B8, v3, 1, v21);
  OUTLINED_FUNCTION_75();
}

void SimpleItemRichSearchResult.text5.getter()
{
  OUTLINED_FUNCTION_76();
  v4 = OUTLINED_FUNCTION_239(v3);
  v5 = type metadata accessor for _ProtoMultilineTextProperty(v4);
  v6 = OUTLINED_FUNCTION_12(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4_7();
  v9 = OUTLINED_FUNCTION_41_2();
  v10 = OUTLINED_FUNCTION_41(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v13);
  v14 = OUTLINED_FUNCTION_21_18();
  OUTLINED_FUNCTION_241(v14);
  OUTLINED_FUNCTION_23_4();
  OUTLINED_FUNCTION_127_0();
  v15 = OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_62_1(v15, v16);
  if (v0 != 1)
  {
    OUTLINED_FUNCTION_258();
    OUTLINED_FUNCTION_38_0();
    if (v17)
    {
      OUTLINED_FUNCTION_161_0(MEMORY[0x277D84F90]);
      v18 = OUTLINED_FUNCTION_61_1();
      OUTLINED_FUNCTION_1_7(v18);
      if (!v17)
      {
        sub_26A0E48F0(v1, &qword_28036CAE0, &unk_26A4273F0);
      }
    }

    else
    {
      OUTLINED_FUNCTION_57_10();
    }

    OUTLINED_FUNCTION_60_9();
    v2 = 0;
  }

  v19 = type metadata accessor for MultilineTextProperty(0);
  __swift_storeEnumTagSinglePayload(&qword_28036CAE0, v2, 1, v19);
  OUTLINED_FUNCTION_75();
}

void SimpleItemRichSearchResult.thumbnail.getter()
{
  OUTLINED_FUNCTION_76();
  OUTLINED_FUNCTION_239(v3);
  v4 = type metadata accessor for _ProtoVisualProperty();
  v5 = OUTLINED_FUNCTION_12(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4_7();
  v8 = OUTLINED_FUNCTION_41_2();
  v9 = OUTLINED_FUNCTION_41(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v12);
  v13 = OUTLINED_FUNCTION_21_18();
  OUTLINED_FUNCTION_241(v13);
  OUTLINED_FUNCTION_23_4();
  OUTLINED_FUNCTION_127_0();
  v14 = OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_62_1(v14, v15);
  if (v0 != 1)
  {
    OUTLINED_FUNCTION_258();
    OUTLINED_FUNCTION_38_0();
    if (v16)
    {
      OUTLINED_FUNCTION_161_0(MEMORY[0x277D84F90]);
      v17 = OUTLINED_FUNCTION_61_1();
      OUTLINED_FUNCTION_1_7(v17);
      if (!v16)
      {
        sub_26A0E48F0(v1, &qword_28036CAE8, &unk_26A426430);
      }
    }

    else
    {
      OUTLINED_FUNCTION_57_10();
    }

    OUTLINED_FUNCTION_60_9();
    v2 = 0;
  }

  v18 = type metadata accessor for VisualProperty();
  __swift_storeEnumTagSinglePayload(&qword_28036CAE8, v2, 1, v18);
  OUTLINED_FUNCTION_75();
}

void SimpleItemRichSearchResult.action.getter()
{
  OUTLINED_FUNCTION_76();
  OUTLINED_FUNCTION_239(v4);
  v5 = type metadata accessor for _ProtoActionProperty();
  v6 = OUTLINED_FUNCTION_12(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4_7();
  v9 = OUTLINED_FUNCTION_41_2();
  v10 = OUTLINED_FUNCTION_41(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v13);
  v14 = OUTLINED_FUNCTION_21_18();
  OUTLINED_FUNCTION_241(v14);
  OUTLINED_FUNCTION_23_4();
  OUTLINED_FUNCTION_127_0();
  v15 = OUTLINED_FUNCTION_51_0();
  sub_26A0E48F0(v15, v16, &off_26A427400);
  if (v0 != 1)
  {
    OUTLINED_FUNCTION_258();
    OUTLINED_FUNCTION_38_0();
    if (v17)
    {
      *v3 = MEMORY[0x277D84F90];
      v3[1] = 0;
      v3[2] = 0xE000000000000000;
      v18 = v3 + *(v5 + 24);
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      OUTLINED_FUNCTION_38_0();
      if (!v17)
      {
        sub_26A0E48F0(v1, &off_28036C7C0, &off_26A427400);
      }
    }

    else
    {
      OUTLINED_FUNCTION_57_10();
    }

    sub_26A29BCE0();
    v2 = 0;
  }

  v19 = type metadata accessor for ActionProperty();
  __swift_storeEnumTagSinglePayload(v20, v2, 1, v19);
  OUTLINED_FUNCTION_75();
}

uint64_t SimpleItemRichSearchResult.componentName.getter()
{
  v1 = (*(v0 + *(type metadata accessor for _ProtoSimpleItem_RichSearchResult(0) + 20)) + OBJC_IVAR____TtCV10SnippetKit33_ProtoSimpleItem_RichSearchResultP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__componentName);
  OUTLINED_FUNCTION_142();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t SimpleItemRichSearchResult.linkIdentifier.getter()
{
  v1 = (*(v0 + *(type metadata accessor for _ProtoSimpleItem_RichSearchResult(0) + 20)) + OBJC_IVAR____TtCV10SnippetKit33_ProtoSimpleItem_RichSearchResultP33_2F3CDF59AD413F1FAB6DECBB49A87C1413_StorageClass__linkIdentifier);
  OUTLINED_FUNCTION_142();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

void _ProtoSimpleItem_RichSearchResult.redactedProto.getter()
{
  OUTLINED_FUNCTION_76();
  v1 = v0;
  v376 = type metadata accessor for _ProtoActionProperty();
  v2 = OUTLINED_FUNCTION_12(v376);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_8();
  v360 = v5;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_48();
  v359 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  v9 = OUTLINED_FUNCTION_41(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_8();
  v361 = v12;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_47();
  v358 = v14;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_48();
  v373 = v16;
  v372 = type metadata accessor for _ProtoVisualProperty();
  v17 = OUTLINED_FUNCTION_12(v372);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_8();
  v356 = v20;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_48();
  v355 = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  v24 = OUTLINED_FUNCTION_41(v23);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_8();
  v357 = v27;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_47();
  v354 = v29;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_48();
  v371 = v31;
  v368 = type metadata accessor for _ProtoMultilineTextProperty(0);
  v32 = OUTLINED_FUNCTION_12(v368);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_8();
  v345 = v35;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_47();
  v344 = v37;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_47();
  v339 = v39;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_48();
  v338 = v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  v43 = OUTLINED_FUNCTION_41(v42);
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_8();
  v342 = v46;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_47();
  v365 = v48;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_47();
  v367 = v50;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_47();
  v336 = v52;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_48();
  v363 = v54;
  v55 = type metadata accessor for _ProtoTextProperty(0);
  v56 = OUTLINED_FUNCTION_12(v55);
  v58 = *(v57 + 64);
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_8();
  v353 = v59;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_47();
  v352 = v61;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_47();
  v350 = v63;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_47();
  v349 = v65;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_47();
  v347 = v67;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_47();
  v346 = v69;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v70);
  OUTLINED_FUNCTION_47();
  v341 = v71;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v72);
  OUTLINED_FUNCTION_47();
  v340 = v73;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v74);
  OUTLINED_FUNCTION_47();
  v335 = v75;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v76);
  OUTLINED_FUNCTION_47();
  v334 = v77;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v78);
  OUTLINED_FUNCTION_47();
  v332[1] = v79;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v80);
  v82 = v332 - v81;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  v84 = OUTLINED_FUNCTION_41(v83);
  v86 = *(v85 + 64);
  MEMORY[0x28223BE20](v84);
  OUTLINED_FUNCTION_8();
  v351 = v87;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v88);
  OUTLINED_FUNCTION_47();
  v370 = v89;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v90);
  OUTLINED_FUNCTION_47();
  v348 = v91;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v92);
  OUTLINED_FUNCTION_47();
  v369 = v93;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v94);
  OUTLINED_FUNCTION_47();
  v343 = v95;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v96);
  OUTLINED_FUNCTION_47();
  v366 = v97;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v98);
  OUTLINED_FUNCTION_47();
  v337 = v99;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v100);
  OUTLINED_FUNCTION_47();
  v364 = v101;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v102);
  OUTLINED_FUNCTION_47();
  v333 = v103;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v104);
  OUTLINED_FUNCTION_47();
  v362 = v105;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v106);
  OUTLINED_FUNCTION_47();
  v377 = v107;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v108);
  v110 = v332 - v109;
  MEMORY[0x28223BE20](v111);
  v113 = v332 - v112;
  OUTLINED_FUNCTION_9_25();
  sub_26A29C124();
  v114 = *(type metadata accessor for _ProtoSimpleItem_RichSearchResult(0) + 20);
  v374 = v1;
  v378 = v114;
  v115 = *(v1 + v114);
  OUTLINED_FUNCTION_142();
  sub_26A10FD9C();
  LODWORD(v1) = OUTLINED_FUNCTION_40_9(v113);
  sub_26A0E48F0(v113, &qword_28036C7B8, &unk_26A425BF0);
  v375 = v55;
  if (v1 != 1)
  {
    sub_26A10FD9C();
    OUTLINED_FUNCTION_2_4(v110);
    if (v116)
    {
      *v82 = MEMORY[0x277D84F90];
      *(v82 + 4) = 0;
      v117 = &v82[v55[7]];
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      v118 = v55[8];
      OUTLINED_FUNCTION_92();
      OUTLINED_FUNCTION_68_3(v119, v120, v121);
      v122 = v55[9];
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v123, v124, v125, v115);
      OUTLINED_FUNCTION_2_4(v110);
      v126 = v374;
      if (!v116)
      {
        sub_26A0E48F0(v110, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      sub_26A29BCE0();
      v126 = v374;
    }

    _ProtoTextProperty.redactedProto.getter();
    OUTLINED_FUNCTION_0_45();
    sub_26A29BD34(v82, v127);
    v128 = v378;
    v129 = *(v126 + v378);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v115 = *(v126 + v128);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v131 = type metadata accessor for _ProtoSimpleItem_RichSearchResult._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v131);
      OUTLINED_FUNCTION_22_15();
      v115 = v132;
      *(v126 + v128) = v132;
    }

    sub_26A29BCE0();
    OUTLINED_FUNCTION_126_0();
    v55 = v375;
    __swift_storeEnumTagSinglePayload(v133, v134, v135, v375);
    OUTLINED_FUNCTION_211();
    sub_26A10CF40();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142();
  v136 = &unk_26A425BF0;
  v137 = v362;
  sub_26A10FD9C();
  v138 = OUTLINED_FUNCTION_40_9(v137);
  sub_26A0E48F0(v137, &qword_28036C7B8, &unk_26A425BF0);
  if (v138 == 1)
  {
    v139 = v374;
  }

  else
  {
    v140 = v333;
    sub_26A10FD9C();
    OUTLINED_FUNCTION_2_4(v140);
    v139 = v374;
    if (v116)
    {
      v150 = v334;
      *v334 = MEMORY[0x277D84F90];
      *(v150 + 8) = 0;
      v141 = v150 + v55[7];
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      v142 = v55[8];
      OUTLINED_FUNCTION_92();
      OUTLINED_FUNCTION_68_3(v143, v144, v145);
      v146 = v55[9];
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v147, v148, v149, v115);
      OUTLINED_FUNCTION_2_4(v140);
      v151 = v378;
      LODWORD(v136) = v335;
      if (!v116)
      {
        sub_26A0E48F0(v140, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      v150 = v334;
      sub_26A29BCE0();
      v151 = v378;
      LODWORD(v136) = v335;
    }

    _ProtoTextProperty.redactedProto.getter();
    OUTLINED_FUNCTION_0_45();
    sub_26A29BD34(v150, v152);
    v153 = *(v139 + v151);
    v154 = swift_isUniquelyReferenced_nonNull_native();
    v115 = *(v139 + v151);
    if ((v154 & 1) == 0)
    {
      v155 = type metadata accessor for _ProtoSimpleItem_RichSearchResult._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v155);
      OUTLINED_FUNCTION_22_15();
      OUTLINED_FUNCTION_35_11(v156);
    }

    sub_26A29BCE0();
    v157 = OUTLINED_FUNCTION_8_4();
    __swift_storeEnumTagSinglePayload(v157, v158, v159, v55);
    OUTLINED_FUNCTION_211();
    OUTLINED_FUNCTION_35_2();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_30_1();
  v160 = OUTLINED_FUNCTION_107();
  v161 = v368;
  __swift_getEnumTagSinglePayload(v160, v162, v368);
  OUTLINED_FUNCTION_17_4();
  if (v136 == 1)
  {
    v163 = v375;
  }

  else
  {
    v164 = v336;
    sub_26A10FD9C();
    OUTLINED_FUNCTION_3_6(v164);
    v165 = v378;
    if (v116)
    {
      v175 = v338;
      *v338 = MEMORY[0x277D84F90];
      *(v175 + 8) = 0;
      v166 = v175 + v161[7];
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      v167 = v161[8];
      OUTLINED_FUNCTION_92();
      OUTLINED_FUNCTION_68_3(v168, v169, v170);
      v171 = v161[9];
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v172, v173, v174, v115);
      OUTLINED_FUNCTION_3_6(v164);
      v163 = v375;
      if (!v116)
      {
        sub_26A0E48F0(v164, &qword_28036CAE0, &unk_26A4273F0);
      }
    }

    else
    {
      v175 = v338;
      sub_26A29BCE0();
      v163 = v375;
    }

    _ProtoMultilineTextProperty.redactedProto.getter();
    OUTLINED_FUNCTION_24_22();
    sub_26A29BD34(v175, v176);
    v177 = *(v139 + v165);
    v178 = swift_isUniquelyReferenced_nonNull_native();
    v115 = *(v139 + v165);
    if ((v178 & 1) == 0)
    {
      v179 = type metadata accessor for _ProtoSimpleItem_RichSearchResult._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v179);
      OUTLINED_FUNCTION_22_15();
      OUTLINED_FUNCTION_35_11(v180);
    }

    sub_26A29BCE0();
    v181 = OUTLINED_FUNCTION_8_4();
    __swift_storeEnumTagSinglePayload(v181, v182, v183, v161);
    OUTLINED_FUNCTION_211();
    OUTLINED_FUNCTION_35_2();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142();
  v184 = v364;
  OUTLINED_FUNCTION_52_7();
  v185 = v163;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v184, 1, v163);
  OUTLINED_FUNCTION_38_2(v184);
  if (EnumTagSinglePayload != 1)
  {
    v187 = v337;
    sub_26A10FD9C();
    OUTLINED_FUNCTION_2_4(v187);
    v188 = v378;
    v189 = v185;
    if (v116)
    {
      v199 = v340;
      *v340 = MEMORY[0x277D84F90];
      *(v199 + 8) = 0;
      v190 = v199 + v189[7];
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      v191 = v189[8];
      OUTLINED_FUNCTION_92();
      OUTLINED_FUNCTION_68_3(v192, v193, v194);
      v195 = v189[9];
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v196, v197, v198, v115);
      OUTLINED_FUNCTION_37(v187, 1, v189);
      if (!v116)
      {
        sub_26A0E48F0(v187, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      v199 = v340;
      sub_26A29BCE0();
    }

    _ProtoTextProperty.redactedProto.getter();
    OUTLINED_FUNCTION_0_45();
    sub_26A29BD34(v199, v200);
    v201 = *(v139 + v188);
    v202 = swift_isUniquelyReferenced_nonNull_native();
    v203 = *(v139 + v188);
    if ((v202 & 1) == 0)
    {
      v204 = type metadata accessor for _ProtoSimpleItem_RichSearchResult._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v204);
      OUTLINED_FUNCTION_22_15();
      OUTLINED_FUNCTION_35_11(v205);
    }

    EnumTagSinglePayload = v377;
    sub_26A29BCE0();
    OUTLINED_FUNCTION_126_0();
    __swift_storeEnumTagSinglePayload(v206, v207, v208, v189);
    OUTLINED_FUNCTION_211();
    sub_26A10CF40();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_30_1();
  v209 = OUTLINED_FUNCTION_107();
  __swift_getEnumTagSinglePayload(v209, v210, v161);
  OUTLINED_FUNCTION_17_4();
  if (EnumTagSinglePayload == 1)
  {
    v211 = v375;
  }

  else
  {
    v212 = v342;
    sub_26A10FD9C();
    OUTLINED_FUNCTION_3_6(v212);
    v213 = v378;
    if (v116)
    {
      v222 = v344;
      *v344 = MEMORY[0x277D84F90];
      *(v222 + 8) = 0;
      v214 = v222 + v161[7];
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      v215 = OUTLINED_FUNCTION_44_0(v161[8]);
      v216 = v376;
      __swift_storeEnumTagSinglePayload(v215, v217, v218, v376);
      v219 = OUTLINED_FUNCTION_44_0(v161[9]);
      __swift_storeEnumTagSinglePayload(v219, v220, v221, v216);
      OUTLINED_FUNCTION_3_6(v212);
      v211 = v375;
      if (!v116)
      {
        sub_26A0E48F0(v212, &qword_28036CAE0, &unk_26A4273F0);
      }
    }

    else
    {
      v222 = v344;
      sub_26A29BCE0();
      v211 = v375;
    }

    _ProtoMultilineTextProperty.redactedProto.getter();
    OUTLINED_FUNCTION_24_22();
    sub_26A29BD34(v222, v223);
    v224 = *(v139 + v213);
    v225 = swift_isUniquelyReferenced_nonNull_native();
    v226 = *(v139 + v213);
    if ((v225 & 1) == 0)
    {
      v227 = type metadata accessor for _ProtoSimpleItem_RichSearchResult._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v227);
      OUTLINED_FUNCTION_22_15();
      OUTLINED_FUNCTION_35_11(v228);
    }

    sub_26A29BCE0();
    v229 = OUTLINED_FUNCTION_8_4();
    __swift_storeEnumTagSinglePayload(v229, v230, v231, v161);
    OUTLINED_FUNCTION_211();
    OUTLINED_FUNCTION_35_2();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142();
  v232 = v366;
  OUTLINED_FUNCTION_52_7();
  v233 = v211;
  v234 = __swift_getEnumTagSinglePayload(v232, 1, v211);
  OUTLINED_FUNCTION_38_2(v232);
  if (v234 != 1)
  {
    v235 = v343;
    sub_26A10FD9C();
    OUTLINED_FUNCTION_2_4(v235);
    v236 = v378;
    if (v116)
    {
      v244 = v346;
      OUTLINED_FUNCTION_39_9(MEMORY[0x277D84F90]);
      v237 = OUTLINED_FUNCTION_44_0(*(v233 + 32));
      v238 = v376;
      __swift_storeEnumTagSinglePayload(v237, v239, v240, v376);
      v241 = OUTLINED_FUNCTION_44_0(*(v233 + 36));
      __swift_storeEnumTagSinglePayload(v241, v242, v243, v238);
      OUTLINED_FUNCTION_2_4(v235);
      if (!v116)
      {
        sub_26A0E48F0(v235, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      v244 = v346;
      sub_26A29BCE0();
    }

    _ProtoTextProperty.redactedProto.getter();
    OUTLINED_FUNCTION_0_45();
    sub_26A29BD34(v244, v245);
    v246 = *(v139 + v236);
    v247 = swift_isUniquelyReferenced_nonNull_native();
    v248 = *(v139 + v236);
    if ((v247 & 1) == 0)
    {
      v249 = type metadata accessor for _ProtoSimpleItem_RichSearchResult._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v249);
      OUTLINED_FUNCTION_22_15();
      OUTLINED_FUNCTION_35_11(v250);
    }

    sub_26A29BCE0();
    v251 = OUTLINED_FUNCTION_8_4();
    __swift_storeEnumTagSinglePayload(v251, v252, v253, v233);
    OUTLINED_FUNCTION_211();
    OUTLINED_FUNCTION_35_2();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142();
  v254 = v369;
  OUTLINED_FUNCTION_52_7();
  v255 = OUTLINED_FUNCTION_40_9(v254);
  OUTLINED_FUNCTION_38_2(v254);
  if (v255 == 1)
  {
    v256 = v376;
  }

  else
  {
    v257 = v348;
    sub_26A10FD9C();
    OUTLINED_FUNCTION_2_4(v257);
    v258 = v378;
    if (v116)
    {
      v266 = v349;
      OUTLINED_FUNCTION_39_9(MEMORY[0x277D84F90]);
      v259 = OUTLINED_FUNCTION_44_0(*(v233 + 32));
      v260 = v376;
      __swift_storeEnumTagSinglePayload(v259, v261, v262, v376);
      v263 = OUTLINED_FUNCTION_44_0(*(v233 + 36));
      __swift_storeEnumTagSinglePayload(v263, v264, v265, v260);
      OUTLINED_FUNCTION_2_4(v257);
      if (!v116)
      {
        sub_26A0E48F0(v257, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      v266 = v349;
      sub_26A29BCE0();
    }

    _ProtoTextProperty.redactedProto.getter();
    OUTLINED_FUNCTION_0_45();
    sub_26A29BD34(v266, v267);
    v268 = *(v139 + v258);
    v269 = swift_isUniquelyReferenced_nonNull_native();
    v270 = *(v139 + v258);
    if ((v269 & 1) == 0)
    {
      v271 = type metadata accessor for _ProtoSimpleItem_RichSearchResult._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v271);
      OUTLINED_FUNCTION_22_15();
      OUTLINED_FUNCTION_35_11(v272);
    }

    v256 = v376;
    sub_26A29BCE0();
    v273 = OUTLINED_FUNCTION_8_4();
    __swift_storeEnumTagSinglePayload(v273, v274, v275, v233);
    OUTLINED_FUNCTION_211();
    OUTLINED_FUNCTION_35_2();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142();
  v276 = v370;
  OUTLINED_FUNCTION_52_7();
  LODWORD(v277) = OUTLINED_FUNCTION_40_9(v276);
  OUTLINED_FUNCTION_38_2(v276);
  if (v277 == 1)
  {
    v278 = v256;
  }

  else
  {
    v279 = v351;
    sub_26A10FD9C();
    OUTLINED_FUNCTION_2_4(v279);
    v280 = v378;
    if (v116)
    {
      v287 = v352;
      OUTLINED_FUNCTION_39_9(MEMORY[0x277D84F90]);
      v281 = OUTLINED_FUNCTION_44_0(*(v233 + 32));
      v278 = v256;
      __swift_storeEnumTagSinglePayload(v281, v282, v283, v256);
      v284 = OUTLINED_FUNCTION_44_0(*(v233 + 36));
      __swift_storeEnumTagSinglePayload(v284, v285, v286, v256);
      OUTLINED_FUNCTION_2_4(v279);
      if (!v116)
      {
        sub_26A0E48F0(v279, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      v287 = v352;
      sub_26A29BCE0();
      v278 = v256;
    }

    _ProtoTextProperty.redactedProto.getter();
    OUTLINED_FUNCTION_0_45();
    sub_26A29BD34(v287, v288);
    v289 = *(v139 + v280);
    v290 = swift_isUniquelyReferenced_nonNull_native();
    v291 = *(v139 + v280);
    if ((v290 & 1) == 0)
    {
      v292 = type metadata accessor for _ProtoSimpleItem_RichSearchResult._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v292);
      OUTLINED_FUNCTION_22_15();
      OUTLINED_FUNCTION_35_11(v293);
    }

    LODWORD(v277) = v377;
    sub_26A29BCE0();
    OUTLINED_FUNCTION_126_0();
    __swift_storeEnumTagSinglePayload(v294, v295, v296, v233);
    OUTLINED_FUNCTION_211();
    sub_26A10CF40();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_30_1();
  v297 = OUTLINED_FUNCTION_107();
  v298 = v372;
  __swift_getEnumTagSinglePayload(v297, v299, v372);
  OUTLINED_FUNCTION_17_4();
  if (v277 != 1)
  {
    v300 = v354;
    sub_26A10FD9C();
    OUTLINED_FUNCTION_37(v300, 1, v298);
    v277 = v378;
    if (v116)
    {
      v308 = v355;
      *v355 = MEMORY[0x277D84F90];
      *(v308 + 8) = 0;
      v301 = v308 + v298[7];
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      v302 = OUTLINED_FUNCTION_44_0(v298[8]);
      __swift_storeEnumTagSinglePayload(v302, v303, v304, v278);
      v305 = OUTLINED_FUNCTION_44_0(v298[9]);
      __swift_storeEnumTagSinglePayload(v305, v306, v307, v278);
      OUTLINED_FUNCTION_37(v300, 1, v298);
      if (!v116)
      {
        sub_26A0E48F0(v300, &qword_28036CAE8, &unk_26A426430);
      }
    }

    else
    {
      v308 = v355;
      sub_26A29BCE0();
    }

    _ProtoVisualProperty.redactedProto.getter();
    sub_26A29BD34(v308, type metadata accessor for _ProtoVisualProperty);
    v309 = *(v139 + v277);
    v310 = swift_isUniquelyReferenced_nonNull_native();
    v311 = *(v139 + v277);
    if ((v310 & 1) == 0)
    {
      v312 = type metadata accessor for _ProtoSimpleItem_RichSearchResult._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v312);
      OUTLINED_FUNCTION_22_15();
      *(v139 + v277) = v313;
    }

    sub_26A29BCE0();
    v314 = OUTLINED_FUNCTION_8_4();
    __swift_storeEnumTagSinglePayload(v314, v315, v316, v298);
    OUTLINED_FUNCTION_211();
    OUTLINED_FUNCTION_35_2();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_30_1();
  v317 = OUTLINED_FUNCTION_107();
  __swift_getEnumTagSinglePayload(v317, v318, v278);
  OUTLINED_FUNCTION_17_4();
  if (v277 != 1)
  {
    v319 = v358;
    sub_26A10FD9C();
    OUTLINED_FUNCTION_3_6(v319);
    v320 = v378;
    if (v116)
    {
      v322 = v359;
      *v359 = MEMORY[0x277D84F90];
      *(v322 + 8) = 0;
      *(v322 + 16) = 0xE000000000000000;
      v321 = v322 + *(v278 + 24);
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      OUTLINED_FUNCTION_3_6(v319);
      v323 = v360;
      if (!v116)
      {
        sub_26A0E48F0(v319, &off_28036C7C0, &off_26A427400);
      }
    }

    else
    {
      v322 = v359;
      sub_26A29BCE0();
      v323 = v360;
    }

    _s10SnippetKit14ActionPropertyV13redactedProtoAA01_fcD0Vvg_0(v323);
    sub_26A29BD34(v322, type metadata accessor for _ProtoActionProperty);
    v324 = *(v139 + v320);
    v325 = swift_isUniquelyReferenced_nonNull_native();
    v326 = *(v139 + v320);
    if ((v325 & 1) == 0)
    {
      v327 = type metadata accessor for _ProtoSimpleItem_RichSearchResult._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v327);
      OUTLINED_FUNCTION_22_15();
      *(v139 + v320) = v328;
    }

    sub_26A29BCE0();
    v329 = OUTLINED_FUNCTION_8_4();
    __swift_storeEnumTagSinglePayload(v329, v330, v331, v278);
    OUTLINED_FUNCTION_211();
    OUTLINED_FUNCTION_35_2();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t SimpleItemRichSearchResult.init(text1:text2:text3:text4:text5:text6:text7:text8:thumbnail:action:componentName:linkIdentifier:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  type metadata accessor for _ProtoSimpleItem_RichSearchResult(0);
  OUTLINED_FUNCTION_27_17();
  sub_26A29C000(v12, v13);
  sub_26A4249C4();

  sub_26A0E48F0(a10, &qword_28036CAF8, &unk_26A426D30);
  sub_26A0E48F0(a9, &qword_28036CB00, &unk_26A426450);
  OUTLINED_FUNCTION_187_0(a8);
  OUTLINED_FUNCTION_187_0(a7);
  OUTLINED_FUNCTION_187_0(a6);
  OUTLINED_FUNCTION_38_2(a5);
  OUTLINED_FUNCTION_187_0(a4);
  OUTLINED_FUNCTION_38_2(a3);
  OUTLINED_FUNCTION_187_0(a2);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_26A299E7C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v145 = a8;
  v143 = a7;
  v141 = a6;
  v135 = a4;
  v136 = a5;
  v133 = a3;
  v132 = a1;
  v16 = type metadata accessor for ActionProperty();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v131 = &v119 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v149 = &v119 - v21;
  v148 = type metadata accessor for _ProtoActionProperty();
  v22 = *(*(v148 - 8) + 64);
  MEMORY[0x28223BE20](v148);
  v127 = &v119 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v128 = &v119 - v25;
  v26 = type metadata accessor for VisualProperty();
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26 - 8);
  v130 = &v119 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29 - 8);
  v147 = &v119 - v31;
  v146 = type metadata accessor for _ProtoVisualProperty();
  v32 = *(*(v146 - 8) + 64);
  MEMORY[0x28223BE20](v146);
  v125 = &v119 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v126 = &v119 - v35;
  v36 = type metadata accessor for MultilineTextProperty(0);
  v37 = *(*(v36 - 8) + 64);
  MEMORY[0x28223BE20](v36 - 8);
  v138 = &v119 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  v40 = *(*(v39 - 8) + 64);
  MEMORY[0x28223BE20](v39 - 8);
  v139 = &v119 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42);
  v44 = &v119 - v43;
  v137 = type metadata accessor for _ProtoMultilineTextProperty(0);
  v45 = *(*(v137 - 8) + 64);
  MEMORY[0x28223BE20](v137);
  v121 = &v119 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v47);
  v129 = &v119 - v48;
  MEMORY[0x28223BE20](v49);
  v119 = &v119 - v50;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  v52 = *(*(v51 - 8) + 64);
  MEMORY[0x28223BE20](v51 - 8);
  v144 = &v119 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v54);
  v142 = &v119 - v55;
  MEMORY[0x28223BE20](v56);
  v140 = &v119 - v57;
  MEMORY[0x28223BE20](v58);
  v134 = &v119 - v59;
  MEMORY[0x28223BE20](v60);
  v62 = &v119 - v61;
  v63 = type metadata accessor for _ProtoTextProperty(0);
  v64 = *(*(v63 - 8) + 64);
  MEMORY[0x28223BE20](v63);
  v124 = &v119 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v66);
  v123 = &v119 - v67;
  MEMORY[0x28223BE20](v68);
  v122 = &v119 - v69;
  MEMORY[0x28223BE20](v70);
  v120 = &v119 - v71;
  MEMORY[0x28223BE20](v72);
  v74 = &v119 - v73;
  MEMORY[0x28223BE20](v75);
  v77 = &v119 - v76;
  v78 = type metadata accessor for TextProperty(0);
  v79 = *(*(v78 - 8) + 64);
  MEMORY[0x28223BE20](v78 - 8);
  v80 = a2[3];
  v81 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v80);
  (*(v81 + 8))(v80, v81);
  sub_26A29BCE0();
  v153 = v77;
  _ProtoSimpleItem_RichSearchResult.text1.setter();
  sub_26A10FD9C();
  v82 = v151;
  if (v151)
  {
    v83 = v152;
    __swift_project_boxed_opaque_existential_1(&v150, v151);
    (*(v83 + 8))(v82, v83);
    sub_26A29BCE0();
    __swift_storeEnumTagSinglePayload(v62, 0, 1, v63);
    __swift_destroy_boxed_opaque_existential_1(&v150);
    if (__swift_getEnumTagSinglePayload(v62, 1, v63) != 1)
    {
      sub_26A29BCE0();
      sub_26A29C124();
      _ProtoSimpleItem_RichSearchResult.text2.setter();
      sub_26A29BD34(v74, type metadata accessor for _ProtoTextProperty);
      goto LABEL_6;
    }
  }

  else
  {
    sub_26A0E48F0(&v150, &qword_28036CB08, &unk_26A428720);
    __swift_storeEnumTagSinglePayload(v62, 1, 1, v63);
  }

  sub_26A0E48F0(v62, &qword_28036C7B8, &unk_26A425BF0);
LABEL_6:
  sub_26A10FD9C();
  v84 = v151;
  if (v151)
  {
    v85 = v152;
    __swift_project_boxed_opaque_existential_1(&v150, v151);
    (*(v85 + 8))(v84, v85);
    sub_26A29BCE0();
    v86 = v137;
    __swift_storeEnumTagSinglePayload(v44, 0, 1, v137);
    __swift_destroy_boxed_opaque_existential_1(&v150);
    if (__swift_getEnumTagSinglePayload(v44, 1, v86) != 1)
    {
      v87 = v119;
      sub_26A29BCE0();
      sub_26A29C124();
      _ProtoSimpleItem_RichSearchResult.text3.setter();
      sub_26A29BD34(v87, type metadata accessor for _ProtoMultilineTextProperty);
      goto LABEL_11;
    }
  }

  else
  {
    sub_26A0E48F0(&v150, &qword_28036CB10, &unk_26A426460);
    v86 = v137;
    __swift_storeEnumTagSinglePayload(v44, 1, 1, v137);
  }

  sub_26A0E48F0(v44, &qword_28036CAE0, &unk_26A4273F0);
LABEL_11:
  sub_26A10FD9C();
  v88 = v151;
  if (v151)
  {
    v89 = v152;
    __swift_project_boxed_opaque_existential_1(&v150, v151);
    (*(v89 + 8))(v88, v89);
    v90 = v134;
    sub_26A29BCE0();
    __swift_storeEnumTagSinglePayload(v90, 0, 1, v63);
    __swift_destroy_boxed_opaque_existential_1(&v150);
    if (__swift_getEnumTagSinglePayload(v90, 1, v63) != 1)
    {
      v91 = v120;
      sub_26A29BCE0();
      sub_26A29C124();
      _ProtoSimpleItem_RichSearchResult.text4.setter();
      sub_26A29BD34(v91, type metadata accessor for _ProtoTextProperty);
      goto LABEL_16;
    }
  }

  else
  {
    sub_26A0E48F0(&v150, &qword_28036CB08, &unk_26A428720);
    v90 = v134;
    __swift_storeEnumTagSinglePayload(v134, 1, 1, v63);
  }

  sub_26A0E48F0(v90, &qword_28036C7B8, &unk_26A425BF0);
LABEL_16:
  sub_26A10FD9C();
  v92 = v151;
  if (v151)
  {
    v93 = v152;
    __swift_project_boxed_opaque_existential_1(&v150, v151);
    (*(v93 + 8))(v92, v93);
    v94 = v139;
    sub_26A29BCE0();
    __swift_storeEnumTagSinglePayload(v94, 0, 1, v86);
    __swift_destroy_boxed_opaque_existential_1(&v150);
    if (__swift_getEnumTagSinglePayload(v94, 1, v86) != 1)
    {
      v95 = v121;
      sub_26A29BCE0();
      sub_26A29C124();
      _ProtoSimpleItem_RichSearchResult.text5.setter();
      sub_26A29BD34(v95, type metadata accessor for _ProtoMultilineTextProperty);
      goto LABEL_21;
    }
  }

  else
  {
    sub_26A0E48F0(&v150, &qword_28036CB10, &unk_26A426460);
    v94 = v139;
    __swift_storeEnumTagSinglePayload(v139, 1, 1, v86);
  }

  sub_26A0E48F0(v94, &qword_28036CAE0, &unk_26A4273F0);
LABEL_21:
  sub_26A10FD9C();
  v96 = v151;
  if (v151)
  {
    v97 = v152;
    __swift_project_boxed_opaque_existential_1(&v150, v151);
    (*(v97 + 8))(v96, v97);
    v98 = v140;
    sub_26A29BCE0();
    __swift_storeEnumTagSinglePayload(v98, 0, 1, v63);
    __swift_destroy_boxed_opaque_existential_1(&v150);
    if (__swift_getEnumTagSinglePayload(v98, 1, v63) != 1)
    {
      v99 = v122;
      sub_26A29BCE0();
      sub_26A29C124();
      _ProtoSimpleItem_RichSearchResult.text6.setter();
      sub_26A29BD34(v99, type metadata accessor for _ProtoTextProperty);
      goto LABEL_26;
    }
  }

  else
  {
    sub_26A0E48F0(&v150, &qword_28036CB08, &unk_26A428720);
    v98 = v140;
    __swift_storeEnumTagSinglePayload(v140, 1, 1, v63);
  }

  sub_26A0E48F0(v98, &qword_28036C7B8, &unk_26A425BF0);
LABEL_26:
  sub_26A10FD9C();
  v100 = v151;
  if (v151)
  {
    v101 = v152;
    __swift_project_boxed_opaque_existential_1(&v150, v151);
    (*(v101 + 8))(v100, v101);
    v102 = v142;
    sub_26A29BCE0();
    __swift_storeEnumTagSinglePayload(v102, 0, 1, v63);
    __swift_destroy_boxed_opaque_existential_1(&v150);
    if (__swift_getEnumTagSinglePayload(v102, 1, v63) != 1)
    {
      v103 = v123;
      sub_26A29BCE0();
      sub_26A29C124();
      _ProtoSimpleItem_RichSearchResult.text7.setter();
      sub_26A29BD34(v103, type metadata accessor for _ProtoTextProperty);
      goto LABEL_31;
    }
  }

  else
  {
    sub_26A0E48F0(&v150, &qword_28036CB08, &unk_26A428720);
    v102 = v142;
    __swift_storeEnumTagSinglePayload(v142, 1, 1, v63);
  }

  sub_26A0E48F0(v102, &qword_28036C7B8, &unk_26A425BF0);
LABEL_31:
  sub_26A10FD9C();
  v104 = v151;
  if (v151)
  {
    v105 = v152;
    __swift_project_boxed_opaque_existential_1(&v150, v151);
    (*(v105 + 8))(v104, v105);
    v106 = v144;
    sub_26A29BCE0();
    __swift_storeEnumTagSinglePayload(v106, 0, 1, v63);
    __swift_destroy_boxed_opaque_existential_1(&v150);
    if (__swift_getEnumTagSinglePayload(v106, 1, v63) != 1)
    {
      v107 = v124;
      sub_26A29BCE0();
      sub_26A29C124();
      _ProtoSimpleItem_RichSearchResult.text8.setter();
      sub_26A29BD34(v107, type metadata accessor for _ProtoTextProperty);
      goto LABEL_36;
    }
  }

  else
  {
    sub_26A0E48F0(&v150, &qword_28036CB08, &unk_26A428720);
    v106 = v144;
    __swift_storeEnumTagSinglePayload(v144, 1, 1, v63);
  }

  sub_26A0E48F0(v106, &qword_28036C7B8, &unk_26A425BF0);
LABEL_36:
  sub_26A10FD9C();
  v108 = v151;
  if (v151)
  {
    v109 = v152;
    __swift_project_boxed_opaque_existential_1(&v150, v151);
    (*(v109 + 8))(v108, v109);
    v110 = v147;
    sub_26A29BCE0();
    v111 = v146;
    __swift_storeEnumTagSinglePayload(v110, 0, 1, v146);
    __swift_destroy_boxed_opaque_existential_1(&v150);
    if (__swift_getEnumTagSinglePayload(v110, 1, v111) != 1)
    {
      v112 = v126;
      sub_26A29BCE0();
      sub_26A29C124();
      _ProtoSimpleItem_RichSearchResult.thumbnail.setter();
      sub_26A29BD34(v112, type metadata accessor for _ProtoVisualProperty);
      goto LABEL_41;
    }
  }

  else
  {
    sub_26A0E48F0(&v150, &qword_28036CB00, &unk_26A426450);
    v110 = v147;
    __swift_storeEnumTagSinglePayload(v147, 1, 1, v146);
  }

  sub_26A0E48F0(v110, &qword_28036CAE8, &unk_26A426430);
LABEL_41:
  sub_26A10FD9C();
  v113 = v151;
  if (v151)
  {
    v114 = v152;
    __swift_project_boxed_opaque_existential_1(&v150, v151);
    (*(v114 + 8))(v113, v114);
    v115 = v149;
    sub_26A29BCE0();
    v116 = v148;
    __swift_storeEnumTagSinglePayload(v115, 0, 1, v148);
    __swift_destroy_boxed_opaque_existential_1(&v150);
    if (__swift_getEnumTagSinglePayload(v115, 1, v116) != 1)
    {
      v117 = v128;
      sub_26A29BCE0();
      sub_26A29C124();
      _ProtoSimpleItem_RichSearchResult.action.setter();
      sub_26A29BD34(v117, type metadata accessor for _ProtoActionProperty);
      goto LABEL_46;
    }
  }

  else
  {
    sub_26A0E48F0(&v150, &qword_28036CAF8, &unk_26A426D30);
    v115 = v149;
    __swift_storeEnumTagSinglePayload(v149, 1, 1, v148);
  }

  sub_26A0E48F0(v115, &off_28036C7C0, &off_26A427400);
LABEL_46:

  result = _ProtoSimpleItem_RichSearchResult.componentName.setter();
  if (a15)
  {

    return _ProtoSimpleItem_RichSearchResult.linkIdentifier.setter();
  }

  return result;
}

void SimpleItemRichSearchResult.init(text1:text2:text3:text4:text5:text6:text7:text8:thumbnail:action:componentName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_76();
  v33 = v22;
  v24 = v23;
  v34 = v26;
  v35 = v25;
  v36 = v28;
  v37 = v27;
  v38 = v30;
  v39 = v29;
  sub_26A0E5D68(v29, v49);
  OUTLINED_FUNCTION_32_1();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_32_1();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_32_1();
  sub_26A10FD9C();
  sub_26A10FD9C();
  type metadata accessor for _ProtoSimpleItem_RichSearchResult(0);
  OUTLINED_FUNCTION_27_17();
  sub_26A29C000(v31, v32);
  sub_26A4249C4();

  sub_26A0E48F0(a22, &qword_28036CAF8, &unk_26A426D30);
  sub_26A0E48F0(a21, &qword_28036CB00, &unk_26A426450);
  OUTLINED_FUNCTION_164_0(v33);
  OUTLINED_FUNCTION_164_0(v24);
  OUTLINED_FUNCTION_164_0(v34);
  sub_26A0E48F0(v35, &qword_28036CB10, &unk_26A426460);
  OUTLINED_FUNCTION_164_0(v36);
  sub_26A0E48F0(v37, &qword_28036CB10, &unk_26A426460);
  OUTLINED_FUNCTION_164_0(v38);
  __swift_destroy_boxed_opaque_existential_1(v39);
  sub_26A0E48F0(v40, &qword_28036CAF8, &unk_26A426D30);
  sub_26A0E48F0(v41, &qword_28036CB00, &unk_26A426450);
  OUTLINED_FUNCTION_164_0(v42);
  OUTLINED_FUNCTION_164_0(v43);
  OUTLINED_FUNCTION_164_0(v44);
  sub_26A0E48F0(v45, &qword_28036CB10, &unk_26A426460);
  OUTLINED_FUNCTION_164_0(&v46);
  sub_26A0E48F0(&v47, &qword_28036CB10, &unk_26A426460);
  OUTLINED_FUNCTION_164_0(&v48);
  __swift_destroy_boxed_opaque_existential_1(v49);
  OUTLINED_FUNCTION_75();
}

Swift::String __swiftcall SimpleItemRichSearchResult.description(redacted:)(Swift::Bool redacted)
{
  OUTLINED_FUNCTION_76();
  v89 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB18, &unk_26A427670);
  OUTLINED_FUNCTION_41(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v8);
  v92 = &v88 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB20, &unk_26A426470);
  OUTLINED_FUNCTION_41(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v13);
  v91 = &v88 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB28, &qword_26A427980);
  OUTLINED_FUNCTION_41(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v18);
  v90 = &v88 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v20);
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v23);
  v24 = OUTLINED_FUNCTION_56_3();
  v25 = OUTLINED_FUNCTION_12(v24);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_18();
  v30 = v29 - v28;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB30, &qword_26A426480);
  v32 = OUTLINED_FUNCTION_41(v31);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32);
  MEMORY[0x28223BE20](v35);
  v37 = &v88 - v36;
  v38 = type metadata accessor for SimpleItemRichSearchResult();
  v39 = OUTLINED_FUNCTION_41(v38);
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v39);
  MEMORY[0x28223BE20](v42);
  v44 = &v88 - v43;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CEE8, &unk_26A426A70);
  OUTLINED_FUNCTION_12(v45);
  v47 = *(v46 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v48);
  v50 = &v88 - v49;
  OUTLINED_FUNCTION_26_19();
  sub_26A29C124();
  if (v4)
  {
    _ProtoSimpleItem_RichSearchResult.redactedProto.getter();
  }

  else
  {
    sub_26A29C124();
  }

  sub_26A29BCE0();
  v50[*(v45 + 32)] = v4 & 1;
  sub_26A29BD34(v44, type metadata accessor for SimpleItemRichSearchResult);
  v51 = MEMORY[0x277D84F90];
  *&v50[*(v45 + 28)] = MEMORY[0x277D84F90];
  v52 = *&v50[*(type metadata accessor for _ProtoSimpleItem_RichSearchResult(0) + 20)];
  OUTLINED_FUNCTION_142();
  sub_26A10FD9C();
  v53 = OUTLINED_FUNCTION_107();
  OUTLINED_FUNCTION_37(v53, v54, v24);
  if (v55)
  {
    *v30 = v51;
    *(v30 + 8) = 0;
    v56 = v30 + v24[7];
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    v57 = v24[8];
    v58 = type metadata accessor for _ProtoActionProperty();
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v59, v60, v61, v58);
    v62 = v24[9];
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v63, v64, v65, v58);
    v66 = OUTLINED_FUNCTION_107();
    OUTLINED_FUNCTION_37(v66, v67, v24);
    if (!v55)
    {
      sub_26A0E48F0(v2, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    sub_26A29BCE0();
  }

  sub_26A29BCE0();
  type metadata accessor for TextProperty(0);
  OUTLINED_FUNCTION_126_0();
  __swift_storeEnumTagSinglePayload(v68, v69, v70, v71);
  OUTLINED_FUNCTION_222();
  sub_26A106754();
  sub_26A0E48F0(v37, &qword_28036CB30, &qword_26A426480);
  SimpleItemRichSearchResult.text2.getter();
  OUTLINED_FUNCTION_222();
  OUTLINED_FUNCTION_55_10();
  OUTLINED_FUNCTION_33_7();
  v72 = v90;
  SimpleItemRichSearchResult.text3.getter();
  OUTLINED_FUNCTION_222();
  sub_26A10672C();
  sub_26A0E48F0(v72, &qword_28036CB28, &qword_26A427980);
  SimpleItemRichSearchResult.text4.getter();
  OUTLINED_FUNCTION_222();
  OUTLINED_FUNCTION_55_10();
  OUTLINED_FUNCTION_33_7();
  SimpleItemRichSearchResult.text5.getter();
  OUTLINED_FUNCTION_222();
  sub_26A10672C();
  sub_26A0E48F0(v72, &qword_28036CB28, &qword_26A427980);
  SimpleItemRichSearchResult.text6.getter();
  OUTLINED_FUNCTION_222();
  OUTLINED_FUNCTION_55_10();
  OUTLINED_FUNCTION_33_7();
  SimpleItemRichSearchResult.text7.getter();
  OUTLINED_FUNCTION_222();
  OUTLINED_FUNCTION_55_10();
  OUTLINED_FUNCTION_33_7();
  SimpleItemRichSearchResult.text8.getter();
  OUTLINED_FUNCTION_222();
  OUTLINED_FUNCTION_55_10();
  OUTLINED_FUNCTION_33_7();
  v73 = v91;
  SimpleItemRichSearchResult.thumbnail.getter();
  sub_26A106704();
  sub_26A0E48F0(v73, &qword_28036CB20, &unk_26A426470);
  v74 = v92;
  SimpleItemRichSearchResult.action.getter();
  sub_26A106600();
  sub_26A0E48F0(v74, &qword_28036CB18, &unk_26A427670);
  KeyPath = swift_getKeyPath();
  sub_26A0F7AC0(KeyPath, 0x6E656E6F706D6F63, 0xED0000656D614E74, 1, v76, v77, v78, v79, v88, v89);

  v80 = swift_getKeyPath();
  sub_26A0F8454(v80, 0x6E6564496B6E696CLL, 0xEE00726569666974, 1, v81, v82, v83, v84, v88, v89);

  sub_26A0FD214();
  sub_26A0E48F0(v50, &qword_28036CEE8, &unk_26A426A70);
  OUTLINED_FUNCTION_175();
  OUTLINED_FUNCTION_75();
  result._object = v86;
  result._countAndFlagsBits = v85;
  return result;
}

uint64_t type metadata accessor for SimpleItemRichSearchResult()
{
  result = qword_2803716C0;
  if (!qword_2803716C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26A29BCE0()
{
  OUTLINED_FUNCTION_131_0();
  v2 = v1(0);
  OUTLINED_FUNCTION_12(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_175();
  v6(v5);
  return v0;
}

uint64_t sub_26A29BD34(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_12(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t SimpleItemRichSearchResult.componentProto.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for _ProtoSimpleItem_RichSearchResult(0);
  v3 = OUTLINED_FUNCTION_41(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_18();
  v6 = type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v6);
  v10 = type metadata accessor for _ProtoResponse.Component(0);
  v11 = a1 + *(v10 + 20);
  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v12 = *(v10 + 24);
  type metadata accessor for _ProtoSeparators();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
  OUTLINED_FUNCTION_9_25();
  sub_26A29C124();
  sub_26A0E48F0(a1, &qword_28036C828, &unk_26A4276D0);
  OUTLINED_FUNCTION_25_19();
  sub_26A29BCE0();
  OUTLINED_FUNCTION_175();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_126_0();
  return __swift_storeEnumTagSinglePayload(v17, v18, v19, v6);
}

uint64_t SimpleItemRichSearchResult.asSection()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB40, &qword_26A426510);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A426410;
  *(inited + 56) = type metadata accessor for SimpleItemRichSearchResult();
  *(inited + 64) = &protocol witness table for SimpleItemRichSearchResult;
  __swift_allocate_boxed_opaque_existential_1((inited + 32));
  OUTLINED_FUNCTION_26_19();
  sub_26A29C124();
  OUTLINED_FUNCTION_142();

  sub_26A10BF5C(v1);
  type metadata accessor for _ProtoResponse.Section(0);
  sub_26A29C000(&qword_28036CB48, type metadata accessor for _ProtoResponse.Section);
  sub_26A4249C4();

  swift_setDeallocating();
  return sub_26A10C358();
}

uint64_t sub_26A29C000(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26A29C0B8()
{
  result = type metadata accessor for _ProtoSimpleItem_RichSearchResult(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26A29C124()
{
  OUTLINED_FUNCTION_131_0();
  v2 = v1(0);
  OUTLINED_FUNCTION_12(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_175();
  v6(v5);
  return v0;
}

uint64_t OUTLINED_FUNCTION_21_18()
{

  return type metadata accessor for _ProtoSimpleItem_RichSearchResult(0);
}

void OUTLINED_FUNCTION_22_15()
{

  sub_26A275560();
}

void OUTLINED_FUNCTION_55_10()
{

  sub_26A106754();
}

uint64_t OUTLINED_FUNCTION_57_10()
{

  return sub_26A29BCE0();
}

uint64_t OUTLINED_FUNCTION_59_11()
{

  return type metadata accessor for _ProtoSimpleItem_RichSearchResult(0);
}

uint64_t OUTLINED_FUNCTION_60_9()
{

  return sub_26A29BCE0();
}

uint64_t ImageElement.RenderingMode.description.getter()
{
  if (*v0)
  {
    return 0x6574616C706D6574;
  }

  else
  {
    return 0x6C616E696769726FLL;
  }
}

uint64_t ImageElement.RenderingMode.hashValue.getter()
{
  v1 = *v0;
  sub_26A425504();
  MEMORY[0x26D65C340](v1);
  return sub_26A425554();
}

unint64_t sub_26A29C38C()
{
  result = qword_2803716D0;
  if (!qword_2803716D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803716D0);
  }

  return result;
}

_BYTE *_s13RenderingModeOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t UUID.redacted.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803716D8, &qword_26A438498);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v8 - v4;
  sub_26A424704();
  v6 = sub_26A424734();
  result = __swift_getEnumTagSinglePayload(v5, 1, v6);
  if (result != 1)
  {
    return (*(*(v6 - 8) + 32))(a1, v5, v6);
  }

  __break(1u);
  return result;
}

uint64_t URL.redacted.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D500, &qword_26A435570);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v8 - v4;
  sub_26A424604();
  v6 = sub_26A424614();
  result = __swift_getEnumTagSinglePayload(v5, 1, v6);
  if (result != 1)
  {
    return (*(*(v6 - 8) + 32))(a1, v5, v6);
  }

  __break(1u);
  return result;
}

double sub_26A29C770@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_26A426400;
  return result;
}

uint64_t _ProtoPlayerButton.init()()
{
  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v1 = type metadata accessor for _ProtoPlayerButton(0);
  v2 = *(v1 + 20);
  OUTLINED_FUNCTION_83_7();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v0);
  v6 = *(v1 + 24);
  OUTLINED_FUNCTION_92();

  return __swift_storeEnumTagSinglePayload(v7, v8, v9, v0);
}

void static _ProtoPlayerButton.== infix(_:_:)()
{
  OUTLINED_FUNCTION_76();
  v2 = v1;
  v3 = type metadata accessor for _ProtoButton(0);
  v4 = OUTLINED_FUNCTION_12(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_8();
  v52 = v7;
  OUTLINED_FUNCTION_40();
  v9 = MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_48_14(v9, v10, v11, v12, v13, v14, v15, v16, v52);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036EC48, &unk_26A4385C0);
  v18 = OUTLINED_FUNCTION_41(v17);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_8();
  v53 = v21;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_73_6();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036F098, &qword_26A42C588);
  v24 = OUTLINED_FUNCTION_12(v23);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_8();
  v56 = v27;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v28);
  v30 = &v52 - v29;
  v55 = type metadata accessor for _ProtoPlayerButton(0);
  v31 = *(v55 + 20);
  v32 = *(v23 + 48);
  v57 = v2;
  OUTLINED_FUNCTION_109_3();
  OUTLINED_FUNCTION_109_3();
  OUTLINED_FUNCTION_2_4(v30);
  if (v33)
  {
    OUTLINED_FUNCTION_2_4(&v30[v32]);
    if (!v33)
    {
      goto LABEL_21;
    }

    sub_26A13440C();
  }

  else
  {
    sub_26A10FD9C();
    OUTLINED_FUNCTION_2_4(&v30[v32]);
    if (v33)
    {
      sub_26A2A3044();
      goto LABEL_21;
    }

    v34 = v54;
    sub_26A2A3098();
    v35 = *(v3 + 20);
    if (*(v0 + v35) != *(v34 + v35))
    {
      v36 = *(v0 + v35);

      sub_26A2A2580();
      v38 = v37;

      if ((v38 & 1) == 0)
      {
        sub_26A2A3044();
        OUTLINED_FUNCTION_175();
        sub_26A2A3044();
        goto LABEL_21;
      }
    }

    v39 = sub_26A424794();
    OUTLINED_FUNCTION_0_46();
    sub_26A2A31E8();
    OUTLINED_FUNCTION_133();
    sub_26A424B64();
    OUTLINED_FUNCTION_36_11();
    sub_26A2A3044();
    sub_26A2A3044();
    sub_26A13440C();
    if ((v39 & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  v40 = v56;
  v41 = *(v55 + 24);
  v42 = *(v23 + 48);
  OUTLINED_FUNCTION_78_3();
  OUTLINED_FUNCTION_78_3();
  OUTLINED_FUNCTION_2_4(v40);
  if (v33)
  {
    OUTLINED_FUNCTION_2_4(v40 + v42);
    if (v33)
    {
      sub_26A13440C();
LABEL_27:
      sub_26A424794();
      OUTLINED_FUNCTION_0_46();
      sub_26A2A31E8();
      v45 = sub_26A424B64();
      goto LABEL_23;
    }

    goto LABEL_21;
  }

  v43 = v53;
  sub_26A10FD9C();
  OUTLINED_FUNCTION_2_4(v40 + v42);
  if (v44)
  {
    sub_26A2A3044();
LABEL_21:
    sub_26A13440C();
    goto LABEL_22;
  }

  v46 = v52;
  sub_26A2A3098();
  v47 = *(v3 + 20);
  v48 = *(v43 + v47);
  if (v48 != *(v46 + v47))
  {
    v49 = *(v43 + v47);

    OUTLINED_FUNCTION_175();
    sub_26A2A2580();
    v51 = v50;

    if ((v51 & 1) == 0)
    {
      sub_26A2A3044();
      sub_26A2A3044();
      goto LABEL_21;
    }
  }

  sub_26A424794();
  OUTLINED_FUNCTION_0_46();
  sub_26A2A31E8();
  sub_26A424B64();
  OUTLINED_FUNCTION_35_16();
  sub_26A2A3044();
  sub_26A2A3044();
  sub_26A13440C();
  if (v48)
  {
    goto LABEL_27;
  }

LABEL_22:
  v45 = 0;
LABEL_23:
  OUTLINED_FUNCTION_214_1(v45);
  OUTLINED_FUNCTION_75();
}

void static _ProtoStandardPlayerButton.== infix(_:_:)()
{
  OUTLINED_FUNCTION_76();
  v2 = v1;
  v4 = v3;
  v5 = type metadata accessor for _ProtoActionProperty();
  v6 = OUTLINED_FUNCTION_12(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_8();
  v61 = v9;
  OUTLINED_FUNCTION_40();
  v11 = MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_48_14(v11, v12, v13, v14, v15, v16, v17, v18, v61);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  v20 = OUTLINED_FUNCTION_41(v19);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_8();
  v62 = v23;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v24);
  v26 = (&v61 - v25);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7C8, &qword_26A425C00);
  v28 = OUTLINED_FUNCTION_12(v27);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_8();
  v64 = v31;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_73_6();
  v65 = type metadata accessor for _ProtoStandardPlayerButton(0);
  v66 = v4;
  v33 = *(v65 + 28);
  v34 = *(v27 + 48);
  OUTLINED_FUNCTION_109_3();
  OUTLINED_FUNCTION_109_3();
  OUTLINED_FUNCTION_37(v0, 1, v5);
  if (v45)
  {
    OUTLINED_FUNCTION_37(v0 + v34, 1, v5);
    if (!v45)
    {
      goto LABEL_49;
    }

    v35 = v5;
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_133();
    sub_26A10FD9C();
    OUTLINED_FUNCTION_37(v0 + v34, 1, v5);
    if (v45)
    {
      sub_26A2A3044();
      goto LABEL_49;
    }

    v46 = v63;
    sub_26A2A3098();
    v47 = *v26;
    v48 = *v46;
    sub_26A0E36D8();
    if ((v49 & 1) == 0 || (v26[1] == v46[1] ? (v50 = v26[2] == v46[2]) : (v50 = 0), !v50 && (sub_26A425354() & 1) == 0))
    {
      sub_26A2A3044();
      sub_26A2A3044();
      goto LABEL_49;
    }

    v35 = v5;
    v51 = *(v5 + 24);
    v52 = sub_26A424794();
    OUTLINED_FUNCTION_0_46();
    sub_26A2A31E8();
    sub_26A424B64();
    OUTLINED_FUNCTION_39_13();
    sub_26A2A3044();
    sub_26A2A3044();
    sub_26A13440C();
    if ((v52 & 1) == 0)
    {
      goto LABEL_50;
    }
  }

  v37 = v65;
  v36 = v66;
  v38 = *(v65 + 32);
  v39 = *(v27 + 48);
  v40 = v64;
  OUTLINED_FUNCTION_78_3();
  OUTLINED_FUNCTION_78_3();
  OUTLINED_FUNCTION_2_4(v40);
  if (v45)
  {
    OUTLINED_FUNCTION_2_4(v40 + v39);
    if (v45)
    {
      sub_26A13440C();
      goto LABEL_11;
    }

LABEL_49:
    sub_26A13440C();
LABEL_50:
    v44 = 0;
    goto LABEL_51;
  }

  v53 = v62;
  sub_26A10FD9C();
  OUTLINED_FUNCTION_2_4(v40 + v39);
  if (v54)
  {
    sub_26A2A3044();
    goto LABEL_49;
  }

  v55 = v61;
  sub_26A2A3098();
  v56 = *v53;
  v57 = *v55;
  sub_26A0E36D8();
  if ((v58 & 1) == 0 || (v53[1] == v55[1] ? (v59 = v53[2] == v55[2]) : (v59 = 0), !v59 && (sub_26A425354() & 1) == 0))
  {
    sub_26A2A3044();
    OUTLINED_FUNCTION_44();
    sub_26A2A3044();
    goto LABEL_49;
  }

  v60 = *(v35 + 24);
  sub_26A424794();
  OUTLINED_FUNCTION_0_46();
  sub_26A2A31E8();
  LOBYTE(v60) = sub_26A424B64();
  sub_26A2A3044();
  OUTLINED_FUNCTION_157();
  sub_26A2A3044();
  sub_26A13440C();
  if ((v60 & 1) == 0)
  {
    goto LABEL_50;
  }

LABEL_11:
  v41 = *v36 == *v2 && v36[1] == v2[1];
  if (!v41 && (sub_26A425354() & 1) == 0)
  {
    goto LABEL_50;
  }

  v42 = v36[2] == v2[2] && v36[3] == v2[3];
  if (!v42 && (sub_26A425354() & 1) == 0)
  {
    goto LABEL_50;
  }

  v43 = *(v37 + 24);
  sub_26A424794();
  OUTLINED_FUNCTION_0_46();
  sub_26A2A31E8();
  v44 = OUTLINED_FUNCTION_108_3();
LABEL_51:
  OUTLINED_FUNCTION_214_1(v44);
  OUTLINED_FUNCTION_75();
}

uint64_t _ProtoButton.init()@<X0>(uint64_t a1@<X8>)
{
  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v2 = *(type metadata accessor for _ProtoButton(0) + 20);
  if (qword_28036C428 != -1)
  {
    OUTLINED_FUNCTION_60_4();
  }

  *(a1 + v2) = qword_280371710;
}

uint64_t _ProtoButton.action.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_41_1();
  OUTLINED_FUNCTION_41(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_46();
  v6 = *(v0 + *(type metadata accessor for _ProtoButton(v5) + 20));
  OUTLINED_FUNCTION_142();
  sub_26A10FD9C();
  type metadata accessor for _ProtoActionProperty();
  OUTLINED_FUNCTION_38_0();
  if (v7)
  {
    OUTLINED_FUNCTION_40_0(MEMORY[0x277D84F90]);
    result = OUTLINED_FUNCTION_38_0();
    if (!v7)
    {
      return sub_26A13440C();
    }
  }

  else
  {
    OUTLINED_FUNCTION_44();
    return sub_26A2A3098();
  }

  return result;
}

uint64_t _ProtoButton.label.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_41_1();
  OUTLINED_FUNCTION_41(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  v6 = &v21 - v5;
  OUTLINED_FUNCTION_14_14();
  v8 = *(v0 + v7);
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_58_6();
  v9 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_23(v6);
  if (!v10)
  {
    return sub_26A2A3098();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v11 = *(v9 + 32);
  v12 = type metadata accessor for _ProtoActionProperty();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v12);
  v16 = *(v9 + 36);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v12);
  result = OUTLINED_FUNCTION_23(v6);
  if (!v10)
  {
    return sub_26A13440C();
  }

  return result;
}

uint64_t _ProtoButton.thumbnail.getter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = OUTLINED_FUNCTION_41_1();
  OUTLINED_FUNCTION_41(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  v6 = &v21 - v5;
  OUTLINED_FUNCTION_14_14();
  v8 = *(v0 + v7);
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_58_6();
  v9 = type metadata accessor for _ProtoVisualProperty();
  OUTLINED_FUNCTION_23(v6);
  if (!v10)
  {
    return sub_26A2A3098();
  }

  OUTLINED_FUNCTION_23_2(MEMORY[0x277D84F90]);
  v11 = *(v9 + 32);
  v12 = type metadata accessor for _ProtoActionProperty();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v12);
  v16 = *(v9 + 36);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v12);
  result = OUTLINED_FUNCTION_23(v6);
  if (!v10)
  {
    return sub_26A13440C();
  }

  return result;
}

uint64_t sub_26A29D7EC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  OUTLINED_FUNCTION_14_14();
  v6 = *(v2 + v5) + *a1;
  result = OUTLINED_FUNCTION_75_6();
  v8 = *(v6 + 8);
  *a2 = *v6;
  *(a2 + 8) = v8;
  return result;
}

uint64_t sub_26A29D868(void *a1)
{
  OUTLINED_FUNCTION_14_14();
  v4 = (*(v1 + v3) + *a1);
  OUTLINED_FUNCTION_75_6();
  v6 = *v4;
  v5 = v4[1];

  return OUTLINED_FUNCTION_246();
}

uint64_t _ProtoButton.action.setter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = *(OUTLINED_FUNCTION_31_12() + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_21_19();
    OUTLINED_FUNCTION_5_3();
    sub_26A2A11E0();
    *(v1 + v6) = v10;
  }

  sub_26A2A3098();
  type metadata accessor for _ProtoActionProperty();
  OUTLINED_FUNCTION_126_0();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  sub_26A10CF40();
  return swift_endAccess();
}

uint64_t _ProtoButton.label.setter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = *(OUTLINED_FUNCTION_31_12() + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_21_19();
    OUTLINED_FUNCTION_5_3();
    sub_26A2A11E0();
    *(v1 + v6) = v10;
  }

  sub_26A2A3098();
  type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_126_0();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  sub_26A10CF40();
  return swift_endAccess();
}

uint64_t _ProtoButton.thumbnail.setter()
{
  OUTLINED_FUNCTION_19_0();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = *(OUTLINED_FUNCTION_31_12() + 20);
  v7 = *(v0 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_21_19();
    OUTLINED_FUNCTION_5_3();
    sub_26A2A11E0();
    *(v1 + v6) = v10;
  }

  sub_26A2A3098();
  type metadata accessor for _ProtoVisualProperty();
  OUTLINED_FUNCTION_126_0();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  sub_26A10CF40();
  return swift_endAccess();
}

uint64_t sub_26A29DBFC(uint64_t *a1, void *a2)
{
  v4 = v2;
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(type metadata accessor for _ProtoButton(0) + 20);
  v8 = *(v2 + v7);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v2 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_21_19();
    OUTLINED_FUNCTION_5_3();
    sub_26A2A11E0();
    v10 = v11;
    *(v4 + v7) = v11;
  }

  v12 = v10 + *a2;
  result = OUTLINED_FUNCTION_26_10();
  *v12 = v5;
  *(v12 + 8) = v6;
  return result;
}

uint64_t sub_26A29DCB0(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = v4;
  OUTLINED_FUNCTION_47_1();
  v8 = *(type metadata accessor for _ProtoButton(0) + 20);
  v9 = *(v4 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v4 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_21_19();
    OUTLINED_FUNCTION_5_3();
    sub_26A2A11E0();
    v11 = v12;
    *(v7 + v8) = v12;
  }

  v13 = (v11 + *a3);
  OUTLINED_FUNCTION_26_10();
  v14 = v13[1];
  *v13 = v5;
  v13[1] = v3;
}

uint64_t static _ProtoButton.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_14_14();
  if (*(a1 + v4) != *(a2 + v4))
  {
    v5 = *(a1 + v4);

    sub_26A2A2580();
    v7 = v6;

    if ((v7 & 1) == 0)
    {
      return 0;
    }
  }

  sub_26A424794();
  OUTLINED_FUNCTION_0_46();
  sub_26A2A31E8();
  OUTLINED_FUNCTION_246();
  return sub_26A424B64() & 1;
}

uint64_t sub_26A29DE3C()
{
  OUTLINED_FUNCTION_19_0();
  v2 = v1;
  v4 = v3;
  OUTLINED_FUNCTION_47_1();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_41(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_14_14();
  v12 = *(v0 + v11);
  v13 = *v4;
  OUTLINED_FUNCTION_142();
  sub_26A10FD9C();
  v2(0);
  v14 = OUTLINED_FUNCTION_166_1();
  OUTLINED_FUNCTION_37(v14, v15, v16);
  if (v17)
  {
    v18 = 0;
  }

  else
  {
    v18 = 1;
  }

  sub_26A13440C();
  return v18;
}

uint64_t _ProtoWatchListButton.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  v1 = a1 + *(type metadata accessor for _ProtoWatchListButton(0) + 20);
  return _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
}

uint64_t _ProtoPlayerButton.playButton.getter@<X0>(int a1@<W8>)
{
  v2 = OUTLINED_FUNCTION_41_1();
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_46();
  v7 = *(type metadata accessor for _ProtoPlayerButton(v6) + 20);
  OUTLINED_FUNCTION_27_18();
  OUTLINED_FUNCTION_83_7();
  OUTLINED_FUNCTION_38_0();
  if (v8)
  {
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    if (qword_28036C428 != -1)
    {
      OUTLINED_FUNCTION_60_4();
    }

    result = OUTLINED_FUNCTION_26_20();
    if (a1 != 1)
    {
      return sub_26A13440C();
    }
  }

  else
  {
    OUTLINED_FUNCTION_44();
    return sub_26A2A3098();
  }

  return result;
}

uint64_t _ProtoStandardPlayerButton.playAction.getter()
{
  v0 = OUTLINED_FUNCTION_41_1();
  OUTLINED_FUNCTION_41(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_46();
  v5 = *(type metadata accessor for _ProtoStandardPlayerButton(v4) + 28);
  OUTLINED_FUNCTION_27_18();
  type metadata accessor for _ProtoActionProperty();
  OUTLINED_FUNCTION_38_0();
  if (v6)
  {
    OUTLINED_FUNCTION_40_0(MEMORY[0x277D84F90]);
    result = OUTLINED_FUNCTION_38_0();
    if (!v6)
    {
      return sub_26A13440C();
    }
  }

  else
  {
    OUTLINED_FUNCTION_44();
    return sub_26A2A3098();
  }

  return result;
}

uint64_t _ProtoStandardPlayerButton.pauseAction.getter()
{
  v0 = OUTLINED_FUNCTION_41_1();
  OUTLINED_FUNCTION_41(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_46();
  v5 = *(type metadata accessor for _ProtoStandardPlayerButton(v4) + 32);
  OUTLINED_FUNCTION_27_18();
  type metadata accessor for _ProtoActionProperty();
  OUTLINED_FUNCTION_38_0();
  if (v6)
  {
    OUTLINED_FUNCTION_40_0(MEMORY[0x277D84F90]);
    result = OUTLINED_FUNCTION_38_0();
    if (!v6)
    {
      return sub_26A13440C();
    }
  }

  else
  {
    OUTLINED_FUNCTION_44();
    return sub_26A2A3098();
  }

  return result;
}

uint64_t _ProtoStandardPlayerButton.playAction.setter()
{
  v0 = OUTLINED_FUNCTION_56_9();
  v1 = *(type metadata accessor for _ProtoStandardPlayerButton(v0) + 28);
  sub_26A13440C();
  OUTLINED_FUNCTION_41_12();
  type metadata accessor for _ProtoActionProperty();
  v2 = OUTLINED_FUNCTION_169();

  return __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t _ProtoStandardPlayerButton.pauseAction.setter()
{
  v0 = OUTLINED_FUNCTION_56_9();
  v1 = *(type metadata accessor for _ProtoStandardPlayerButton(v0) + 32);
  sub_26A13440C();
  OUTLINED_FUNCTION_41_12();
  type metadata accessor for _ProtoActionProperty();
  v2 = OUTLINED_FUNCTION_169();

  return __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t _ProtoBinaryButton.primaryButton.getter@<X0>(int a1@<W8>)
{
  v2 = OUTLINED_FUNCTION_41_1();
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_46();
  v7 = *(type metadata accessor for _ProtoBinaryButton(v6) + 28);
  OUTLINED_FUNCTION_27_18();
  OUTLINED_FUNCTION_83_7();
  OUTLINED_FUNCTION_38_0();
  if (v8)
  {
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    if (qword_28036C428 != -1)
    {
      OUTLINED_FUNCTION_60_4();
    }

    result = OUTLINED_FUNCTION_26_20();
    if (a1 != 1)
    {
      return sub_26A13440C();
    }
  }

  else
  {
    OUTLINED_FUNCTION_44();
    return sub_26A2A3098();
  }

  return result;
}

uint64_t _ProtoBinaryButton.secondaryButton.getter@<X0>(int a1@<W8>)
{
  v2 = OUTLINED_FUNCTION_41_1();
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_46();
  v7 = *(type metadata accessor for _ProtoBinaryButton(v6) + 32);
  OUTLINED_FUNCTION_27_18();
  OUTLINED_FUNCTION_83_7();
  OUTLINED_FUNCTION_38_0();
  if (v8)
  {
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    if (qword_28036C428 != -1)
    {
      OUTLINED_FUNCTION_60_4();
    }

    result = OUTLINED_FUNCTION_26_20();
    if (a1 != 1)
    {
      return sub_26A13440C();
    }
  }

  else
  {
    OUTLINED_FUNCTION_44();
    return sub_26A2A3098();
  }

  return result;
}

uint64_t _ProtoBinaryButton.primaryButton.setter()
{
  v0 = OUTLINED_FUNCTION_56_9();
  v1 = *(type metadata accessor for _ProtoBinaryButton(v0) + 28);
  sub_26A13440C();
  OUTLINED_FUNCTION_9_26();
  type metadata accessor for _ProtoButton(0);
  v2 = OUTLINED_FUNCTION_169();

  return __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t _ProtoBinaryButton.secondaryButton.setter()
{
  v0 = OUTLINED_FUNCTION_56_9();
  v1 = *(type metadata accessor for _ProtoBinaryButton(v0) + 32);
  sub_26A13440C();
  OUTLINED_FUNCTION_9_26();
  type metadata accessor for _ProtoButton(0);
  v2 = OUTLINED_FUNCTION_169();

  return __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t sub_26A29E680()
{
  OUTLINED_FUNCTION_24_23();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_41(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v7);
  v8 = OUTLINED_FUNCTION_50_11();
  v9 = *(v1(v8) + 28);
  OUTLINED_FUNCTION_87();
  sub_26A10FD9C();
  v0(0);
  v10 = OUTLINED_FUNCTION_166_1();
  OUTLINED_FUNCTION_37(v10, v11, v12);
  if (v13)
  {
    v14 = 0;
  }

  else
  {
    v14 = 1;
  }

  OUTLINED_FUNCTION_12_7();
  sub_26A13440C();
  return v14;
}

uint64_t sub_26A29E764()
{
  OUTLINED_FUNCTION_24_23();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_41(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v7);
  v8 = OUTLINED_FUNCTION_50_11();
  v9 = *(v1(v8) + 32);
  OUTLINED_FUNCTION_87();
  sub_26A10FD9C();
  v0(0);
  v10 = OUTLINED_FUNCTION_166_1();
  OUTLINED_FUNCTION_37(v10, v11, v12);
  if (v13)
  {
    v14 = 0;
  }

  else
  {
    v14 = 1;
  }

  OUTLINED_FUNCTION_12_7();
  sub_26A13440C();
  return v14;
}