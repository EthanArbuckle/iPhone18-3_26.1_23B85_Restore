unint64_t sub_1CA60E968(uint64_t a1)
{
  result = sub_1CA60E990();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CA60E990()
{
  result = qword_1EC447318;
  if (!qword_1EC447318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447318);
  }

  return result;
}

uint64_t sub_1CA60EA2C(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_5_3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1CA60EA7C(uint64_t a1)
{
  result = sub_1CA60EAA4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CA60EAA4()
{
  result = qword_1EC447328;
  if (!qword_1EC447328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447328);
  }

  return result;
}

unint64_t sub_1CA60EAFC()
{
  result = qword_1EC447330;
  if (!qword_1EC447330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447330);
  }

  return result;
}

uint64_t sub_1CA60EC40(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_56();
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

_BYTE *sub_1CA60EC8C(_BYTE *result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for RowTemplateConditionalParameterState.ConditionalSubjectProcessingError(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1CA60EE1C()
{
  result = qword_1EC447338;
  if (!qword_1EC447338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447338);
  }

  return result;
}

unint64_t sub_1CA60EE70()
{
  result = qword_1EC447340;
  if (!qword_1EC447340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447340);
  }

  return result;
}

unint64_t sub_1CA60EEC4()
{
  result = qword_1EC447358;
  if (!qword_1EC447358)
  {
    sub_1CA948AF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447358);
  }

  return result;
}

unint64_t sub_1CA60EF10()
{
  result = qword_1EC447370;
  if (!qword_1EC447370)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC447368, &qword_1CA98F848);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447370);
  }

  return result;
}

unint64_t sub_1CA60EF8C()
{
  result = qword_1EC447380;
  if (!qword_1EC447380)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC447378, &unk_1CA98F850);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447380);
  }

  return result;
}

unint64_t sub_1CA60F008()
{
  result = qword_1EC447390;
  if (!qword_1EC447390)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC447C20, &unk_1CA991670);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447390);
  }

  return result;
}

unint64_t sub_1CA60F084()
{
  result = qword_1EC4473A0;
  if (!qword_1EC4473A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC447C30, &unk_1CA98F860);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4473A0);
  }

  return result;
}

uint64_t objectdestroyTm_1()
{
  v1 = v0[3];

  v2 = v0[7];

  v3 = v0[9];

  v4 = OUTLINED_FUNCTION_48_7();

  return MEMORY[0x1EEE6BDD0](v4, v5, v6);
}

unint64_t sub_1CA60F140()
{
  result = qword_1EC4473A8;
  if (!qword_1EC4473A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4473A8);
  }

  return result;
}

unint64_t sub_1CA60F194()
{
  result = qword_1EC4473B0;
  if (!qword_1EC4473B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4473B0);
  }

  return result;
}

unint64_t sub_1CA60F1E8()
{
  result = qword_1EC4473B8;
  if (!qword_1EC4473B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4473B8);
  }

  return result;
}

unint64_t sub_1CA60F23C()
{
  result = qword_1EC4473C0;
  if (!qword_1EC4473C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4473C0);
  }

  return result;
}

unint64_t sub_1CA60F290()
{
  result = qword_1EC4473C8;
  if (!qword_1EC4473C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4473C8);
  }

  return result;
}

unint64_t sub_1CA60F2E4()
{
  result = qword_1EC4473F8;
  if (!qword_1EC4473F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4473F0, &unk_1CA991790);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4473F8);
  }

  return result;
}

unint64_t sub_1CA60F360()
{
  result = qword_1EC447408;
  if (!qword_1EC447408)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC447400, &unk_1CA98F880);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447408);
  }

  return result;
}

unint64_t sub_1CA60F3DC()
{
  result = qword_1EC447418;
  if (!qword_1EC447418)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC444E20, &unk_1CA9917A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447418);
  }

  return result;
}

unint64_t sub_1CA60F458()
{
  result = qword_1EC447428;
  if (!qword_1EC447428)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC447420, &unk_1CA98F890);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447428);
  }

  return result;
}

unint64_t sub_1CA60F4D4()
{
  result = qword_1EC447438;
  if (!qword_1EC447438)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC447430, &qword_1CA9917B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447438);
  }

  return result;
}

unint64_t sub_1CA60F550()
{
  result = qword_1EC447448;
  if (!qword_1EC447448)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC447440, &qword_1CA98F8A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447448);
  }

  return result;
}

uint64_t sub_1CA60F5CC()
{
  OUTLINED_FUNCTION_0();
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v4 = OUTLINED_FUNCTION_49_9(v3);

  return sub_1CA60A1E4(v4);
}

uint64_t sub_1CA60F654()
{
  OUTLINED_FUNCTION_0();
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v4 = OUTLINED_FUNCTION_49_9(v3);

  return sub_1CA609C04(v4);
}

uint64_t sub_1CA60F6F8()
{
  OUTLINED_FUNCTION_0();
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v4 = OUTLINED_FUNCTION_49_9(v3);

  return sub_1CA609558(v4);
}

unint64_t sub_1CA60F780()
{
  result = qword_1EC447458;
  if (!qword_1EC447458)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC447450, &qword_1CA98F8F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447458);
  }

  return result;
}

unint64_t sub_1CA60F7FC()
{
  result = qword_1EC447468;
  if (!qword_1EC447468)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC447460, &qword_1CA98F8F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447468);
  }

  return result;
}

unint64_t sub_1CA60F878()
{
  result = qword_1EC447498;
  if (!qword_1EC447498)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC447490, &qword_1CA98F910);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447498);
  }

  return result;
}

unint64_t sub_1CA60F8F4()
{
  result = qword_1EC4474A8;
  if (!qword_1EC4474A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4474A0, &qword_1CA98F918);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4474A8);
  }

  return result;
}

unint64_t sub_1CA60F970()
{
  result = qword_1EC4474C0;
  if (!qword_1EC4474C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4474B8, &qword_1CA98F920);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4474C0);
  }

  return result;
}

unint64_t sub_1CA60F9EC()
{
  result = qword_1EC4474D0;
  if (!qword_1EC4474D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4474C8, &qword_1CA98F928);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4474D0);
  }

  return result;
}

uint64_t objectdestroy_162Tm()
{
  v1 = v0[4];

  v2 = v0[6];

  v3 = v0[8];

  v4 = v0[10];

  OUTLINED_FUNCTION_70_11();

  return MEMORY[0x1EEE6BDD0](v5, v6, v7);
}

unint64_t sub_1CA60FAB4()
{
  result = qword_1EC4474E8;
  if (!qword_1EC4474E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4474E0, &qword_1CA98F930);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4474E8);
  }

  return result;
}

unint64_t sub_1CA60FB30()
{
  result = qword_1EC4474F8;
  if (!qword_1EC4474F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4474F0, &qword_1CA98F938);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4474F8);
  }

  return result;
}

uint64_t objectdestroy_195Tm()
{
  v1 = *(v0 + 24);

  v2 = OUTLINED_FUNCTION_49_5();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

unint64_t sub_1CA60FBEC()
{
  result = qword_1EC447508;
  if (!qword_1EC447508)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC447500, &qword_1CA98F940);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447508);
  }

  return result;
}

unint64_t sub_1CA60FC68()
{
  result = qword_1EC447518;
  if (!qword_1EC447518)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC447510, &qword_1CA98F948);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447518);
  }

  return result;
}

unint64_t sub_1CA60FCE4()
{
  result = qword_1EC447528;
  if (!qword_1EC447528)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC444E40, &qword_1CA98F950);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447528);
  }

  return result;
}

unint64_t sub_1CA60FD60()
{
  result = qword_1EC447538;
  if (!qword_1EC447538)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC447530, &unk_1CA98F958);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447538);
  }

  return result;
}

unint64_t sub_1CA60FDDC()
{
  result = qword_1EC447548;
  if (!qword_1EC447548)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC444E30, &unk_1CA985F40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447548);
  }

  return result;
}

unint64_t sub_1CA60FE58()
{
  result = qword_1EC447558;
  if (!qword_1EC447558)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC447550, &qword_1CA98F968);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447558);
  }

  return result;
}

unint64_t sub_1CA60FED4()
{
  result = qword_1EC447568;
  if (!qword_1EC447568)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC447560, &qword_1CA98F970);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447568);
  }

  return result;
}

unint64_t sub_1CA60FF50()
{
  result = qword_1EC447578;
  if (!qword_1EC447578)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC447570, &qword_1CA98F978);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447578);
  }

  return result;
}

unint64_t sub_1CA60FFCC()
{
  result = qword_1EC447588;
  if (!qword_1EC447588)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC447580, &qword_1CA98F980);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447588);
  }

  return result;
}

unint64_t sub_1CA610048()
{
  result = qword_1EC447598;
  if (!qword_1EC447598)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC447590, &qword_1CA98F988);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447598);
  }

  return result;
}

unint64_t sub_1CA6100C4()
{
  result = qword_1EC4475A8;
  if (!qword_1EC4475A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4475A0, &qword_1CA98F990);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4475A8);
  }

  return result;
}

unint64_t sub_1CA610140()
{
  result = qword_1EC4475B8;
  if (!qword_1EC4475B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4475B0, &qword_1CA98F998);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4475B8);
  }

  return result;
}

unint64_t sub_1CA6101BC()
{
  result = qword_1EC4475C8;
  if (!qword_1EC4475C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4475C0, &qword_1CA98F9A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4475C8);
  }

  return result;
}

unint64_t sub_1CA610238()
{
  result = qword_1EC4475D8;
  if (!qword_1EC4475D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4475D0, &qword_1CA98F9A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4475D8);
  }

  return result;
}

uint64_t sub_1CA6102B4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8) + 16);
  v6 = OUTLINED_FUNCTION_23();
  v7(v6);
  return a2;
}

unint64_t sub_1CA610318()
{
  result = qword_1EC4475E8;
  if (!qword_1EC4475E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4475E0, &qword_1CA98F9B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4475E8);
  }

  return result;
}

unint64_t sub_1CA610394()
{
  result = qword_1EC4475F8;
  if (!qword_1EC4475F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4475F0, &qword_1CA98F9B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4475F8);
  }

  return result;
}

unint64_t sub_1CA610410()
{
  result = qword_1EC447608;
  if (!qword_1EC447608)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC447600, &qword_1CA98F9C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447608);
  }

  return result;
}

unint64_t sub_1CA61048C()
{
  result = qword_1EC447618;
  if (!qword_1EC447618)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC447610, &qword_1CA98F9C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447618);
  }

  return result;
}

unint64_t sub_1CA610508()
{
  result = qword_1EC447628;
  if (!qword_1EC447628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447628);
  }

  return result;
}

unint64_t sub_1CA61055C()
{
  result = qword_1EC447630;
  if (!qword_1EC447630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447630);
  }

  return result;
}

unint64_t sub_1CA6105B0()
{
  result = qword_1EC447638;
  if (!qword_1EC447638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447638);
  }

  return result;
}

unint64_t sub_1CA610604()
{
  result = qword_1EC447640;
  if (!qword_1EC447640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447640);
  }

  return result;
}

unint64_t sub_1CA610658()
{
  result = qword_1EC447648;
  if (!qword_1EC447648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447648);
  }

  return result;
}

unint64_t sub_1CA6106AC()
{
  result = qword_1EC447650;
  if (!qword_1EC447650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447650);
  }

  return result;
}

unint64_t sub_1CA610700()
{
  result = qword_1EC447658;
  if (!qword_1EC447658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447658);
  }

  return result;
}

unint64_t sub_1CA610754()
{
  result = qword_1EC447660;
  if (!qword_1EC447660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447660);
  }

  return result;
}

unint64_t sub_1CA6107A8()
{
  result = qword_1EC447668;
  if (!qword_1EC447668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447668);
  }

  return result;
}

unint64_t sub_1CA6107FC()
{
  result = qword_1EC447670;
  if (!qword_1EC447670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447670);
  }

  return result;
}

unint64_t sub_1CA610850()
{
  result = qword_1EC447678;
  if (!qword_1EC447678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447678);
  }

  return result;
}

unint64_t sub_1CA6108A4()
{
  result = qword_1EC447680;
  if (!qword_1EC447680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447680);
  }

  return result;
}

unint64_t sub_1CA6108F8()
{
  result = qword_1EC447688;
  if (!qword_1EC447688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447688);
  }

  return result;
}

unint64_t sub_1CA61094C()
{
  result = qword_1EC447690;
  if (!qword_1EC447690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447690);
  }

  return result;
}

unint64_t sub_1CA6109A0()
{
  result = qword_1EC447698;
  if (!qword_1EC447698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447698);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_76_7()
{

  return sub_1CA94D5F8();
}

id OUTLINED_FUNCTION_79_5()
{

  return [v0 (v1 + 3248)];
}

uint64_t sub_1CA610AB0(uint64_t a1, char a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    v7 = a3;

    return sub_1CA35FF80(v6, v7);
  }

  else
  {
    v9 = *v5;

    return sub_1CA35E6F0(v9, a2);
  }
}

uint64_t sub_1CA610B34(uint64_t a1, uint64_t a2)
{
  v3[19] = a2;
  v3[20] = v2;
  v3[18] = a1;
  OUTLINED_FUNCTION_90();
  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1CA610B64()
{
  if (v0[19])
  {
    v1 = v0[19];
    if ([swift_unknownObjectRetain() isRunningWithSiriUI])
    {
      v2 = swift_task_alloc();
      v0[21] = v2;
      *v2 = v0;
      v2[1] = sub_1CA610D4C;
      v3 = v0[18];
      OUTLINED_FUNCTION_9_2();

      return sub_1CA6116E0(v4, v5);
    }

    swift_unknownObjectRelease();
    v8 = v0[19];
    v9 = [swift_unknownObjectRetain() isRunningWithExternalUI];
    v10 = v0[19];
    if (v9)
    {
      v11 = swift_task_alloc();
      v0[23] = v11;
      *v11 = v0;
      OUTLINED_FUNCTION_4_51(v11);
      OUTLINED_FUNCTION_9_2();

      return sub_1CA611970(v12, v13);
    }

    v15 = v0[19];
    swift_unknownObjectRelease();
  }

  OUTLINED_FUNCTION_9_34();
  v16 = v0[18];
  v17 = [objc_opt_self() sharedGuard];
  OUTLINED_FUNCTION_8_28(v17);
  v0[2] = v18;
  OUTLINED_FUNCTION_3_51();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443848, &qword_1CA9815E8);
  OUTLINED_FUNCTION_1_46(v19);
  v0[11] = 1107296256;
  OUTLINED_FUNCTION_2_57();
  OUTLINED_FUNCTION_14_30(v20, sel_authenticateForSubject_completion_);
  OUTLINED_FUNCTION_9_2();

  return MEMORY[0x1EEE6DEC8](v21);
}

uint64_t sub_1CA610D4C()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  *v3 = v2;
  v5 = *(v4 + 168);
  *v3 = *v1;
  *(v2 + 225) = v6;
  *(v2 + 176) = v0;

  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1CA610E54()
{
  v1 = *(v0 + 225);
  v2 = *(v0 + 152);
  swift_unknownObjectRelease();
  if (v1 == 2)
  {
    v3 = *(v0 + 152);
    if ([swift_unknownObjectRetain() isRunningWithExternalUI])
    {
      v4 = *(v0 + 152);
      v5 = swift_task_alloc();
      *(v0 + 184) = v5;
      *v5 = v0;
      OUTLINED_FUNCTION_4_51(v5);
      OUTLINED_FUNCTION_9_2();

      return sub_1CA611970(v6, v7);
    }

    else
    {
      OUTLINED_FUNCTION_9_34();
      v14 = *(v0 + 152);
      swift_unknownObjectRelease();
      v15 = *(v0 + 144);
      v16 = [objc_opt_self() sharedGuard];
      OUTLINED_FUNCTION_8_28(v16);
      *(v0 + 16) = v17;
      OUTLINED_FUNCTION_3_51();
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443848, &qword_1CA9815E8);
      OUTLINED_FUNCTION_1_46(v18);
      *(v0 + 88) = 1107296256;
      OUTLINED_FUNCTION_2_57();
      OUTLINED_FUNCTION_14_30(v19, sel_authenticateForSubject_completion_);
      OUTLINED_FUNCTION_9_2();

      return MEMORY[0x1EEE6DEC8](v20);
    }
  }

  else
  {
    *(v0 + 227) = *(v0 + 225) & 1;
    sub_1CA94C838();
    *(v0 + 216) = sub_1CA94C828();
    sub_1CA94C7C8();
    OUTLINED_FUNCTION_0_64();
    OUTLINED_FUNCTION_9_2();

    return MEMORY[0x1EEE6DFA0](v10, v11, v12);
  }
}

uint64_t sub_1CA611014()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  *v3 = v2;
  v5 = *(v4 + 184);
  *v3 = *v1;
  *(v2 + 226) = v6;
  *(v2 + 192) = v0;

  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1CA61111C()
{
  v1 = *(v0 + 226);
  v2 = *(v0 + 152);
  swift_unknownObjectRelease();
  if (v1 == 2)
  {
    OUTLINED_FUNCTION_9_34();
    v3 = *(v0 + 144);
    v4 = [objc_opt_self() sharedGuard];
    OUTLINED_FUNCTION_8_28(v4);
    *(v0 + 16) = v5;
    OUTLINED_FUNCTION_3_51();
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443848, &qword_1CA9815E8);
    OUTLINED_FUNCTION_1_46(v6);
    *(v0 + 88) = 1107296256;
    OUTLINED_FUNCTION_2_57();
    OUTLINED_FUNCTION_14_30(v7, sel_authenticateForSubject_completion_);
    OUTLINED_FUNCTION_9_2();

    return MEMORY[0x1EEE6DEC8](v8);
  }

  else
  {
    *(v0 + 227) = *(v0 + 226) & 1;
    sub_1CA94C838();
    *(v0 + 216) = sub_1CA94C828();
    sub_1CA94C7C8();
    OUTLINED_FUNCTION_0_64();
    OUTLINED_FUNCTION_9_2();

    return MEMORY[0x1EEE6DFA0](v10, v11, v12);
  }
}

uint64_t sub_1CA61126C()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 208) = *(v3 + 48);
  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1CA61136C()
{
  OUTLINED_FUNCTION_0();
  v1 = *(v0 + 224);

  *(v0 + 227) = v1;
  sub_1CA94C838();
  *(v0 + 216) = sub_1CA94C828();
  sub_1CA94C7C8();
  v2 = OUTLINED_FUNCTION_0_64();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1CA6113F0()
{
  OUTLINED_FUNCTION_0();
  v1 = *(v0 + 216);
  v2 = *(v0 + 227);
  v3 = *(v0 + 160);

  sub_1CA611B84();
  v4 = *(v0 + 8);
  v5 = *(v0 + 227);

  return v4(v5);
}

uint64_t sub_1CA611464()
{
  OUTLINED_FUNCTION_0();
  v1 = *(v0 + 152);
  swift_unknownObjectRelease();
  v2 = *(v0 + 176);
  v3 = OUTLINED_FUNCTION_44();

  return v4(v3);
}

uint64_t sub_1CA6114C0()
{
  OUTLINED_FUNCTION_0();
  v1 = *(v0 + 152);
  swift_unknownObjectRelease();
  v2 = *(v0 + 192);
  v3 = OUTLINED_FUNCTION_44();

  return v4(v3);
}

uint64_t sub_1CA61151C()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 208);
  swift_willThrow();

  v3 = *(v0 + 208);
  v4 = OUTLINED_FUNCTION_44();

  return v5(v4);
}

uint64_t sub_1CA611588()
{
  type metadata accessor for LockedAppHub();
  swift_allocObject();
  result = sub_1CA6115C4();
  qword_1EC461678 = result;
  return result;
}

uint64_t sub_1CA6115C4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445D48, &qword_1CA9891C0);
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  *(v0 + 16) = sub_1CA94A038();
  v5 = [objc_opt_self() sharedContext];
  [v5 addApplicationStateObserver:v1 forEvent:1];

  return v1;
}

uint64_t sub_1CA6116E0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1CA611700, 0, 0);
}

uint64_t sub_1CA611700()
{
  v1 = swift_task_alloc();
  OUTLINED_FUNCTION_10_31(v1);
  v2 = *(MEMORY[0x1E69E8920] + 4);
  v3 = swift_task_alloc();
  *(v0 + 40) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4476A0, &qword_1CA98FA10);
  *v3 = v0;
  v3[1] = sub_1CA6117EC;
  v4 = OUTLINED_FUNCTION_12_30();

  return MEMORY[0x1EEE6DE38](v4);
}

uint64_t sub_1CA6117EC()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  v3 = v2;
  OUTLINED_FUNCTION_1();
  *v4 = v3;
  v6 = *(v5 + 40);
  v7 = *v1;
  OUTLINED_FUNCTION_1();
  *v8 = v7;
  *(v3 + 48) = v0;

  if (!v0)
  {
    v9 = *(v3 + 32);
  }

  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1CA611910()
{
  OUTLINED_FUNCTION_0();
  v1 = v0[4];

  v2 = v0[1];
  v3 = v0[6];

  return v2();
}

uint64_t sub_1CA611970(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1CA611990, 0, 0);
}

uint64_t sub_1CA611990()
{
  v1 = swift_task_alloc();
  OUTLINED_FUNCTION_10_31(v1);
  v2 = *(MEMORY[0x1E69E8920] + 4);
  v3 = swift_task_alloc();
  *(v0 + 40) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4476A0, &qword_1CA98FA10);
  *v3 = v0;
  v3[1] = sub_1CA611A7C;
  v4 = OUTLINED_FUNCTION_12_30();

  return MEMORY[0x1EEE6DE38](v4);
}

uint64_t sub_1CA611A7C()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  v3 = v2;
  OUTLINED_FUNCTION_1();
  *v4 = v3;
  v6 = *(v5 + 40);
  v7 = *v1;
  OUTLINED_FUNCTION_1();
  *v8 = v7;
  *(v3 + 48) = v0;

  if (!v0)
  {
    v9 = *(v3 + 32);
  }

  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1CA611BB8()
{
  v1 = [objc_opt_self() sharedContext];
  [v1 removeApplicationStateObserver:v0 forEvent:1];

  v2 = *(v0 + 16);

  return v0;
}

uint64_t sub_1CA611C1C()
{
  sub_1CA611BB8();

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t sub_1CA611C8C(uint64_t a1, void *a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4476A8, &qword_1CA98FA18);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = aBlock - v9;
  if ([a2 respondsToSelector_])
  {
    swift_unknownObjectRetain();
    v11 = [a3 bundleIdentifier];
    sub_1CA94C3A8();

    (*(v7 + 16))(v10, a1, v6);
    v12 = (*(v7 + 80) + 16) & ~*(v7 + 80);
    v13 = swift_allocObject();
    (*(v7 + 32))(v13 + v12, v10, v6);
    v14 = sub_1CA94C368();
    aBlock[4] = sub_1CA612708;
    aBlock[5] = v13;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1CA611EEC;
    aBlock[3] = &block_descriptor_18;
    v15 = _Block_copy(aBlock);

    [a2 handleAppProtectionRequestWithBundleIdentifier:v14 completionHandler:v15];
    _Block_release(v15);

    swift_unknownObjectRelease();
  }

  else
  {
    LOBYTE(aBlock[0]) = 2;
    return sub_1CA94C7E8();
  }
}

void sub_1CA611EEC(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_1CA611F64(int a1, id a2)
{
  if (a2)
  {
    v2 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4476A8, &qword_1CA98FA18);
    return sub_1CA94C7D8();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4476A8, &qword_1CA98FA18);
    return sub_1CA94C7E8();
  }
}

void sub_1CA611FE8(uint64_t a1, void *a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4476A8, &qword_1CA98FA18);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = aBlock - v9;
  if ([a2 respondsToSelector_])
  {
    sub_1CA61227C();
    swift_unknownObjectRetain();
    v11 = [a3 bundleIdentifier];
    sub_1CA94C3A8();

    v12 = sub_1CA51CC38();
    (*(v7 + 16))(v10, a1, v6);
    v13 = (*(v7 + 80) + 16) & ~*(v7 + 80);
    v14 = swift_allocObject();
    (*(v7 + 32))(v14 + v13, v10, v6);
    aBlock[4] = sub_1CA6125F0;
    aBlock[5] = v14;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1CA6122C0;
    aBlock[3] = &block_descriptor_10_0;
    v15 = _Block_copy(aBlock);

    v16 = [a2 performSiriRequest:v12 completionHandler:v15];
    _Block_release(v15);

    swift_unknownObjectRelease();

    if ((v16 & 1) == 0)
    {
      LOBYTE(aBlock[0]) = 2;
      sub_1CA94C7E8();
    }
  }

  else
  {
    LOBYTE(aBlock[0]) = 2;
    sub_1CA94C7E8();
  }
}

unint64_t sub_1CA61227C()
{
  result = qword_1EC4476B0;
  if (!qword_1EC4476B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC4476B0);
  }

  return result;
}

void sub_1CA6122C0(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

void sub_1CA612328(void *a1, uint64_t a2)
{
  v4 = sub_1CA949F78();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  v9 = swift_dynamicCastObjCClass();
  if (v9)
  {
    v10 = v9;
    v11 = a1;
    LOBYTE(v24) = [v10 didUnlock];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4476A8, &qword_1CA98FA18);
    sub_1CA94C7E8();
  }

  else
  {
    v12 = *MEMORY[0x1E69E10B0];
    sub_1CA949C58();
    v13 = a1;
    v14 = sub_1CA949F68();
    v15 = sub_1CA94CC28();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v23[1] = a2;
      v17 = v16;
      v18 = swift_slowAlloc();
      v24 = v18;
      *v17 = 136315138;
      v23[2] = swift_getObjectType();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4476B8, &qword_1CA98FA20);
      v19 = sub_1CA94C408();
      v21 = sub_1CA26B54C(v19, v20, &v24);

      *(v17 + 4) = v21;
      _os_log_impl(&dword_1CA256000, v14, v15, "Received unexpected interaction response of type %s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v18);
      MEMORY[0x1CCAA4BF0](v18, -1, -1);
      MEMORY[0x1CCAA4BF0](v17, -1, -1);
    }

    (*(v5 + 8))(v8, v4);
    v22 = [v13 error];
    if (v22)
    {
      v24 = v22;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4476A8, &qword_1CA98FA18);
      sub_1CA94C7D8();
    }

    else
    {
      LOBYTE(v24) = 2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4476A8, &qword_1CA98FA18);
      sub_1CA94C7E8();
    }
  }
}

void sub_1CA6125F0(void *a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4476A8, &qword_1CA98FA18) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_1CA612328(a1, v4);
}

uint64_t objectdestroyTm_2()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4476A8, &qword_1CA98FA18);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1CA612708(int a1, void *a2)
{
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4476A8, &qword_1CA98FA18) - 8) + 80);

  return sub_1CA611F64(a1, a2);
}

id sub_1CA6127F0()
{
  v243 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981550;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000013;
  *(inited + 48) = 0x80000001CA9D56B0;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438();
  v6 = v5;
  v7 = sub_1CA94C438();
  v9 = v8;
  v10 = sub_1CA948E58();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v262 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v263 = v12;
  v13 = v234 - v262;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v261 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v264 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v265 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = v234 - v265;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v260 = v20;
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"Description";
  v258 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v21 = swift_initStackObject();
  v242 = xmmword_1CA981310;
  *(v21 + 16) = xmmword_1CA981310;
  *(v21 + 32) = @"DescriptionSummary";
  v22 = @"Description";
  v23 = @"DescriptionSummary";
  v24 = sub_1CA94C438();
  v26 = v25;
  v27 = sub_1CA94C438();
  v29 = v28;
  v257 = v234;
  MEMORY[0x1EEE9AC00](v27);
  v30 = v234 - v262;
  sub_1CA948D98();
  v31 = [v261 bundleURL];
  v259 = inited;
  v32 = v31;
  MEMORY[0x1EEE9AC00](v31);
  v33 = v234 - v265;
  sub_1CA948B68();

  v34 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v35 = sub_1CA2F9F14(v24, v26, v27, v29, 0, 0, v30, v33);
  *(v21 + 64) = v260;
  *(v21 + 40) = v35;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v36 = v258;
  v37 = sub_1CA6B3784();
  v38 = v259;
  v259[15] = v37;
  v38[18] = v36;
  v38[19] = @"IconColor";
  v38[20] = 6579538;
  v38[21] = 0xE300000000000000;
  v39 = MEMORY[0x1E69E6158];
  v38[23] = MEMORY[0x1E69E6158];
  v38[24] = @"IconSymbol";
  v38[25] = 0xD000000000000012;
  v38[26] = 0x80000001CA9D5720;
  v40 = MEMORY[0x1E69E6370];
  v38[28] = v39;
  v38[29] = @"InputPassthrough";
  v38[33] = v40;
  v41 = v40;
  *(v38 + 240) = 0;
  v42 = v38;
  v43 = @"IconColor";
  v44 = @"IconSymbol";
  v45 = @"InputPassthrough";
  v42[34] = sub_1CA94C368();
  *(v42 + 280) = 1;
  v42[38] = v41;
  v42[39] = @"Name";
  v46 = @"Name";
  v257 = sub_1CA94C438();
  v48 = v47;
  v49 = sub_1CA94C438();
  v51 = v50;
  v258 = v234;
  MEMORY[0x1EEE9AC00](v49);
  v52 = v262;
  sub_1CA948D98();
  v53 = v261;
  v54 = [v261 bundleURL];
  MEMORY[0x1EEE9AC00](v54);
  v55 = v234 - v265;
  sub_1CA948B68();

  v56 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v57 = sub_1CA2F9F14(v257, v48, v49, v51, 0, 0, v234 - v52, v55);
  v58 = v259;
  v259[40] = v57;
  v59 = v260;
  v58[43] = v260;
  v58[44] = @"Output";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v60 = swift_initStackObject();
  *(v60 + 16) = xmmword_1CA9813C0;
  *(v60 + 32) = 0x656C7069746C754DLL;
  *(v60 + 40) = 0xE800000000000000;
  *(v60 + 48) = 0;
  *(v60 + 72) = MEMORY[0x1E69E6370];
  *(v60 + 80) = 0x614E74757074754FLL;
  *(v60 + 88) = 0xEA0000000000656DLL;
  v61 = @"Output";
  v62 = sub_1CA94C438();
  v256 = v63;
  v257 = v62;
  v64 = sub_1CA94C438();
  v66 = v65;
  v258 = v234;
  MEMORY[0x1EEE9AC00](v64);
  v67 = v234 - v52;
  sub_1CA948D98();
  v68 = [v53 bundleURL];
  MEMORY[0x1EEE9AC00](v68);
  v69 = v234 - v265;
  sub_1CA948B68();

  v70 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v60 + 96) = sub_1CA2F9F14(v257, v256, v64, v66, 0, 0, v67, v69);
  *(v60 + 120) = v59;
  *(v60 + 128) = 0x7365707954;
  *(v60 + 136) = 0xE500000000000000;
  v252 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v60 + 168) = v252;
  *(v60 + 144) = &unk_1F4A09408;
  v71 = MEMORY[0x1E69E6158];
  v72 = sub_1CA94C1E8();
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v74 = v259;
  v259[45] = v72;
  v74[48] = v73;
  v74[49] = @"Parameters";
  v255 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v258 = swift_allocObject();
  *(v258 + 1) = xmmword_1CA981570;
  v257 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v256 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v75 = swift_allocObject();
  v241 = xmmword_1CA981380;
  *(v75 + 16) = xmmword_1CA981380;
  v251 = 0x80000001CA99C4A0;
  *(v75 + 32) = @"Class";
  *(v75 + 40) = 0xD000000000000016;
  *(v75 + 48) = 0x80000001CA99C4A0;
  *(v75 + 64) = v71;
  *(v75 + 72) = @"DefaultValue";
  *(v75 + 80) = 0x6C616D726F4ELL;
  *(v75 + 88) = 0xE600000000000000;
  *(v75 + 104) = v71;
  *(v75 + 112) = @"Description";
  v76 = @"Class";
  v77 = @"DefaultValue";
  v78 = v76;
  v79 = v77;
  v246 = v78;
  v250 = v79;
  v80 = @"Parameters";
  v81 = @"Description";
  v253 = sub_1CA94C438();
  *&v249 = v82;
  v83 = sub_1CA94C438();
  v85 = v84;
  v254 = v234;
  MEMORY[0x1EEE9AC00](v83);
  v86 = v262;
  sub_1CA948D98();
  v87 = [v261 bundleURL];
  MEMORY[0x1EEE9AC00](v87);
  v88 = v234 - v265;
  sub_1CA948B68();

  v89 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v75 + 120) = sub_1CA2F9F14(v253, v249, v83, v85, 0, 0, v234 - v86, v88);
  *(v75 + 144) = v260;
  *(v75 + 152) = @"Items";
  v254 = swift_allocObject();
  v249 = xmmword_1CA981360;
  *(v254 + 1) = xmmword_1CA981360;
  v248 = @"Items";
  v247 = sub_1CA94C438();
  v245 = v90;
  v91 = sub_1CA94C438();
  v244 = v92;
  v253 = v234;
  MEMORY[0x1EEE9AC00](v91);
  v93 = v234 - v86;
  sub_1CA948D98();
  v94 = v261;
  v95 = [v261 bundleURL];
  MEMORY[0x1EEE9AC00](v95);
  v96 = v265;
  sub_1CA948B68();

  v97 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v98 = sub_1CA2F9F14(v247, v245, v91, v244, 0, 0, v93, v234 - v96);
  v99 = v254;
  v254[4] = v98;
  v247 = sub_1CA94C438();
  v245 = v100;
  v244 = sub_1CA94C438();
  v102 = v101;
  v253 = v234;
  MEMORY[0x1EEE9AC00](v244);
  v103 = v234 - v262;
  sub_1CA948D98();
  v104 = [v94 bundleURL];
  MEMORY[0x1EEE9AC00](v104);
  sub_1CA948B68();

  v105 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v99[5] = sub_1CA2F9F14(v247, v245, v244, v102, 0, 0, v103, v234 - v96);
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443830, &qword_1CA981580);
  v247 = v106;
  *(v75 + 160) = v99;
  *(v75 + 184) = v106;
  *(v75 + 192) = @"Key";
  *(v75 + 200) = 0xD000000000000016;
  *(v75 + 208) = 0x80000001CA9D5A20;
  *(v75 + 224) = MEMORY[0x1E69E6158];
  *(v75 + 232) = @"Label";
  v107 = @"Key";
  v108 = @"Label";
  v109 = v107;
  v110 = v108;
  v244 = v109;
  v240 = v110;
  v111 = sub_1CA94C438();
  v113 = v112;
  v114 = sub_1CA94C438();
  v116 = v115;
  v254 = v234;
  MEMORY[0x1EEE9AC00](v114);
  v117 = v234 - v262;
  sub_1CA948D98();
  v118 = [v261 bundleURL];
  MEMORY[0x1EEE9AC00](v118);
  v119 = v234 - v265;
  sub_1CA948B68();

  v120 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v121 = sub_1CA2F9F14(v111, v113, v114, v116, 0, 0, v117, v119);
  *(v75 + 264) = v260;
  *(v75 + 240) = v121;
  _s3__C3KeyVMa_0(0);
  v254 = v122;
  v253 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  v258[4] = sub_1CA2F864C();
  v123 = swift_allocObject();
  v239 = xmmword_1CA981370;
  *(v123 + 16) = xmmword_1CA981370;
  v124 = v246;
  *(v123 + 32) = v246;
  *(v123 + 40) = 0xD000000000000016;
  v125 = v250;
  *(v123 + 48) = v251;
  v126 = MEMORY[0x1E69E6158];
  *(v123 + 64) = MEMORY[0x1E69E6158];
  *(v123 + 72) = v125;
  *(v123 + 80) = 0x706154206E4FLL;
  *(v123 + 88) = 0xE600000000000000;
  v127 = v248;
  *(v123 + 104) = v126;
  *(v123 + 112) = v127;
  v245 = swift_allocObject();
  *&v245->data = v249;
  v246 = v124;
  v128 = sub_1CA94C438();
  v236 = v129;
  v237 = v128;
  v130 = sub_1CA94C438();
  v235 = v131;
  v238 = v234;
  MEMORY[0x1EEE9AC00](v130);
  v132 = v262;
  sub_1CA948D98();
  v133 = [v261 bundleURL];
  v234[1] = v234;
  MEMORY[0x1EEE9AC00](v133);
  v134 = v265;
  sub_1CA948B68();

  v135 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v136 = sub_1CA2F9F14(v237, v236, v130, v235, 0, 0, v234 - v132, v234 - v134);
  v245[1].isa = v136;
  v137 = sub_1CA94C438();
  v236 = v138;
  v237 = v137;
  v139 = sub_1CA94C438();
  v235 = v140;
  v238 = v234;
  MEMORY[0x1EEE9AC00](v139);
  v141 = v234 - v132;
  sub_1CA948D98();
  v142 = v261;
  v143 = [v261 bundleURL];
  MEMORY[0x1EEE9AC00](v143);
  sub_1CA948B68();

  v144 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v145 = sub_1CA2F9F14(v237, v236, v139, v235, 0, 0, v141, v234 - v134);
  v147 = v244;
  v146 = v245;
  v245[1].info = v145;
  *(v123 + 120) = v146;
  *(v123 + 144) = v247;
  *(v123 + 152) = v147;
  *(v123 + 160) = 0xD000000000000010;
  *(v123 + 168) = 0x80000001CA9D5AD0;
  v148 = v240;
  *(v123 + 184) = MEMORY[0x1E69E6158];
  *(v123 + 192) = v148;
  v244 = v147;
  v245 = v148;
  v238 = sub_1CA94C438();
  v150 = v149;
  v151 = sub_1CA94C438();
  v153 = v152;
  v240 = v234;
  MEMORY[0x1EEE9AC00](v151);
  v154 = v234 - v262;
  sub_1CA948D98();
  v155 = [v142 bundleURL];
  MEMORY[0x1EEE9AC00](v155);
  v156 = v234 - v265;
  sub_1CA948B68();

  v157 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v158 = sub_1CA2F9F14(v238, v150, v151, v153, 0, 0, v154, v156);
  *(v123 + 224) = v260;
  *(v123 + 200) = v158;
  sub_1CA94C1E8();
  v258[5] = sub_1CA2F864C();
  v159 = swift_allocObject();
  *(v159 + 16) = v239;
  *(v159 + 32) = v246;
  *(v159 + 40) = 0xD000000000000016;
  v160 = v250;
  *(v159 + 48) = v251;
  v161 = MEMORY[0x1E69E6158];
  *(v159 + 64) = MEMORY[0x1E69E6158];
  *(v159 + 72) = v160;
  *(v159 + 80) = 0x706154206E4FLL;
  *(v159 + 88) = 0xE600000000000000;
  v162 = v248;
  *(v159 + 104) = v161;
  *(v159 + 112) = v162;
  v255 = swift_allocObject();
  *(v255 + 1) = v249;
  v250 = sub_1CA94C438();
  *&v249 = v163;
  v164 = sub_1CA94C438();
  v248 = v165;
  v251 = v234;
  MEMORY[0x1EEE9AC00](v164);
  v166 = v262;
  sub_1CA948D98();
  v167 = v261;
  v168 = [v261 bundleURL];
  v240 = v234;
  MEMORY[0x1EEE9AC00](v168);
  v169 = v234 - v265;
  sub_1CA948B68();

  v170 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v171 = sub_1CA2F9F14(v250, v249, v164, v248, 0, 0, v234 - v166, v169);
  v255[4] = v171;
  v250 = sub_1CA94C438();
  *&v249 = v172;
  v173 = sub_1CA94C438();
  v248 = v174;
  v251 = v234;
  MEMORY[0x1EEE9AC00](v173);
  sub_1CA948D98();
  v175 = [v167 bundleURL];
  MEMORY[0x1EEE9AC00](v175);
  v176 = v265;
  sub_1CA948B68();

  v177 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v178 = sub_1CA2F9F14(v250, v249, v173, v248, 0, 0, v234 - v166, v234 - v176);
  v179 = v255;
  v255[5] = v178;
  *(v159 + 120) = v179;
  v180 = v244;
  *(v159 + 144) = v247;
  *(v159 + 152) = v180;
  strcpy((v159 + 160), "WFRecordingEnd");
  *(v159 + 175) = -18;
  v181 = v245;
  *(v159 + 184) = MEMORY[0x1E69E6158];
  *(v159 + 192) = v181;
  v182 = sub_1CA94C438();
  v251 = v183;
  v184 = sub_1CA94C438();
  v186 = v185;
  v255 = v234;
  MEMORY[0x1EEE9AC00](v184);
  v187 = v234 - v262;
  sub_1CA948D98();
  v188 = [v261 bundleURL];
  MEMORY[0x1EEE9AC00](v188);
  sub_1CA948B68();

  v189 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v190 = sub_1CA2F9F14(v182, v251, v184, v186, 0, 0, v187, v234 - v176);
  *(v159 + 224) = v260;
  *(v159 + 200) = v190;
  sub_1CA94C1E8();
  v258[6] = sub_1CA2F864C();
  v191 = swift_allocObject();
  *(v191 + 16) = v241;
  *(v191 + 32) = v246;
  *(v191 + 40) = 0xD000000000000020;
  *(v191 + 48) = 0x80000001CA9A44A0;
  v192 = MEMORY[0x1E69E6158];
  *(v191 + 64) = MEMORY[0x1E69E6158];
  *(v191 + 72) = @"DefaultUnit";
  *(v191 + 80) = 7235949;
  *(v191 + 88) = 0xE300000000000000;
  v193 = v244;
  *(v191 + 104) = v192;
  *(v191 + 112) = v193;
  *(v191 + 120) = 0xD000000000000017;
  *(v191 + 128) = 0x80000001CA9D5BD0;
  v194 = v245;
  *(v191 + 144) = v192;
  *(v191 + 152) = v194;
  v195 = @"DefaultUnit";
  v196 = sub_1CA94C438();
  v198 = v197;
  v199 = sub_1CA94C438();
  v201 = v200;
  v256 = v234;
  MEMORY[0x1EEE9AC00](v199);
  v202 = v234 - v262;
  sub_1CA948D98();
  v203 = [v261 bundleURL];
  MEMORY[0x1EEE9AC00](v203);
  v204 = v234 - v265;
  sub_1CA948B68();

  v205 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v191 + 160) = sub_1CA2F9F14(v196, v198, v199, v201, 0, 0, v202, v204);
  *(v191 + 184) = v260;
  *(v191 + 192) = @"PossibleUnits";
  *(v191 + 200) = &unk_1F4A09438;
  *(v191 + 224) = v252;
  *(v191 + 232) = @"RequiredResources";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437F0, &qword_1CA981430);
  v206 = swift_allocObject();
  *(v206 + 16) = v242;
  v207 = @"PossibleUnits";
  v208 = @"RequiredResources";
  *(v206 + 32) = sub_1CA94C1E8();
  *(v191 + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437F8, &qword_1CA981438);
  *(v191 + 240) = v206;
  sub_1CA94C1E8();
  v209 = sub_1CA2F864C();
  v210 = v258;
  v258[7] = v209;
  v211 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v212 = v259;
  v259[50] = v210;
  v212[53] = v211;
  v212[54] = @"ParameterSummary";
  v213 = @"ParameterSummary";
  v214 = sub_1CA94C438();
  v216 = v215;
  v217 = sub_1CA94C438();
  v219 = v218;
  MEMORY[0x1EEE9AC00](v217);
  v220 = v234 - v262;
  sub_1CA948D98();
  v221 = [v261 bundleURL];
  MEMORY[0x1EEE9AC00](v221);
  v222 = v234 - v265;
  sub_1CA948B68();

  v223 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v224 = sub_1CA2F9F14(v214, v216, v217, v219, 0, 0, v220, v222);
  v225 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v226 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v227 = v259;
  v259[55] = v225;
  v227[58] = v226;
  v227[59] = @"RequiredResources";
  v227[60] = &unk_1F4A09508;
  v228 = v252;
  v227[63] = v252;
  v227[64] = @"UserInterfaceClasses";
  v229 = @"RequiredResources";
  v230 = @"UserInterfaceClasses";
  v231 = sub_1CA94C1E8();
  v227[68] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  v227[65] = v231;
  v227[69] = @"UserInterfaces";
  v227[73] = v228;
  v227[70] = &unk_1F4A095C8;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  v232 = @"UserInterfaces";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

void __swiftcall WFWorkflowActionTree.__inheritedInputVariable(for:workflowInputTypes:ignoreInputTypes:)(WFVariable_optional *__return_ptr retstr, WFAction *a2, Swift::OpaquePointer_optional workflowInputTypes, Swift::Bool ignoreInputTypes)
{
  is_nil = workflowInputTypes.is_nil;
  if (workflowInputTypes.value._rawValue)
  {
    v6 = *(workflowInputTypes.value._rawValue + 2);
    if (v6)
    {
      v7 = (workflowInputTypes.value._rawValue + 32);
      sub_1CA25B3D0(0, &qword_1EDB9F790, 0x1E6996D58);
      v8 = MEMORY[0x1E69E7CC0];
      do
      {
        v9 = *v7;
        v10 = swift_dynamicCastMetatype();
        if (v10)
        {
          v11 = v10;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v13 = v8[2];
            sub_1CA2E5130();
            v8 = v14;
          }

          v12 = v8[2];
          if (v12 >= v8[3] >> 1)
          {
            sub_1CA2E5130();
            v8 = v15;
          }

          v8[2] = v12 + 1;
          retstr = &v8[v12];
          *&retstr->is_nil = v11;
        }

        ++v7;
        --v6;
      }

      while (v6);
    }

    else
    {
      v8 = MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
    v8 = 0;
  }

  v16.is_nil = is_nil;
  v16.value._rawValue = v8;
  WFWorkflowActionTree.inheritedInputVariable(for:workflowInputTypes:ignoreInputTypes:)(retstr, a2, v16, ignoreInputTypes);
}

void __swiftcall WFWorkflowActionTree.inheritedInputVariable(for:workflowInputTypes:ignoreInputTypes:)(WFVariable_optional *__return_ptr retstr, WFAction *a2, Swift::OpaquePointer_optional workflowInputTypes, Swift::Bool ignoreInputTypes)
{
  v5 = v4;
  is_nil = workflowInputTypes.is_nil;
  rawValue = workflowInputTypes.value._rawValue;
  v6 = MEMORY[0x1E69E7CD0];
  v64 = MEMORY[0x1E69E7CD0];
  v7 = &selRef_groupedIntermediaryActions;
  v8 = &selRef_metaDataDeviceQueryOperation;
  v58 = a2;
  v9 = v58;
  while (2)
  {
    for (i = v9; ; i = v19)
    {
LABEL_3:
      v11 = [v5 v7[209]];
      if (v11 == sub_1CA948778())
      {

        goto LABEL_49;
      }

      v12 = v64;
      if (!v11)
      {

        if (rawValue && (v42 = WFAction.inputContentClasses.getter(), v43 = WFAction.canHandleInput(of:supportedClasses:includingCoercedTypes:)(rawValue, v42, 1), , v43))
        {
          v44 = objc_allocWithZone(WFShortcutInputVariable);
          v45 = v58;
          sub_1CA615164(v58, 0);
        }

        else
        {
        }

        return;
      }

      if (*(v64 + 16))
      {
        v13 = *(v64 + 40);
        v14 = sub_1CA94D908();
        v15 = ~(-1 << *(v12 + 32));
        while (1)
        {
          v16 = v14 & v15;
          if (((*(v12 + 56 + (((v14 & v15) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v14 & v15)) & 1) == 0)
          {
            break;
          }

          v14 = v16 + 1;
          if (*(*(v12 + 48) + 8 * v16) == i)
          {

            goto LABEL_56;
          }
        }
      }

      sub_1CA369200(&v63, i);
      v17 = sub_1CA614BCC(i);
      if (sub_1CA25B410() != 1)
      {

        goto LABEL_49;
      }

      sub_1CA275D70(0, (v17 & 0xC000000000000001) == 0, v17);
      v18 = (v17 & 0xC000000000000001) != 0 ? MEMORY[0x1CCAA22D0](0, v17) : *(v17 + 32);
      v19 = v18;

      if (![(WFAction *)v19 snappingPassthrough])
      {
        break;
      }
    }

    if ([(WFAction *)v19 blocksSnapping])
    {

LABEL_55:

      goto LABEL_56;
    }

    v20 = [v5 v8[305]];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444800, &qword_1CA984018);
    sub_1CA94C658();

    v21 = sub_1CA25B410();

    if (!v21)
    {
      v22 = [(WFAction *)v19 containedVariables];
      sub_1CA25B3D0(0, &qword_1EC441AC0, off_1E836F4B0);
      v23 = sub_1CA94C658();

      v24 = sub_1CA25B410();
      if (v24)
      {
        v25 = v24;
        v60 = v19;
        v61 = v5;
        v26 = 0;
        v19 = (v23 & 0xFFFFFFFFFFFFFF8);
        v62 = MEMORY[0x1E69E7CC0];
        while (v25 != v26)
        {
          if ((v23 & 0xC000000000000001) != 0)
          {
            v27 = MEMORY[0x1CCAA22D0](v26, v23);
          }

          else
          {
            if (v26 >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_51;
            }

            v27 = *(v23 + 8 * v26 + 32);
          }

          v28 = v27;
          v29 = v26 + 1;
          if (__OFADD__(v26, 1))
          {
            __break(1u);
LABEL_51:
            __break(1u);
            goto LABEL_52;
          }

          v30 = sub_1CA60D308(v27);
          v32 = v31;

          ++v26;
          if (v32)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v35 = *(v62 + 16);
              sub_1CA26DADC();
              v62 = v36;
            }

            v33 = *(v62 + 16);
            if (v33 >= *(v62 + 24) >> 1)
            {
              sub_1CA26DADC();
              v62 = v37;
            }

            *(v62 + 16) = v33 + 1;
            v34 = v62 + 16 * v33;
            *(v34 + 32) = v30;
            *(v34 + 40) = v32;
            v26 = v29;
          }
        }

        v38 = sub_1CA2E2E2C(v62);
        v5 = v61;
        v9 = v60;
        v8 = &selRef_metaDataDeviceQueryOperation;
        if (!v6[2])
        {

          v6 = v38;
          v7 = &selRef_groupedIntermediaryActions;
          continue;
        }

        sub_1CA94C218();
        OUTLINED_FUNCTION_0_65();
        v40 = sub_1CA6152E8(v38, v6, v39, sub_1CA6155C8);

        v41 = *(v40 + 16);

        i = v60;
        v7 = &selRef_groupedIntermediaryActions;
        if (v41)
        {
          goto LABEL_3;
        }
      }

      else
      {

LABEL_49:
      }

LABEL_56:

      return;
    }

    break;
  }

  v46 = [(WFAction *)v19 outputVariableWithVariableProvider:v58 UUIDProvider:0];
  if (!v46)
  {
LABEL_52:

LABEL_54:

    goto LABEL_55;
  }

  v47 = v46;
  v48 = sub_1CA60D308(v46);
  if (!v49)
  {

    i = v47;
    goto LABEL_54;
  }

  if (v6[2])
  {
    v50 = sub_1CA27AF18(v48, v49, v6);

    if (!v50)
    {

      goto LABEL_56;
    }
  }

  else
  {
  }

  if (is_nil)
  {
  }

  else
  {
    v51 = *&v5[OBJC_IVAR___WFWorkflowActionTree_variableAvailability];
    v52 = v5;
    v53 = v19;
    v54 = sub_1CA365410(v53, v51, v52, v53);
    v55 = WFAction.inputContentClasses.getter();
    v56 = WFAction.canHandleInput(of:supportedClasses:includingCoercedTypes:)(v54, v55, 1);

    if (!v56)
    {
    }
  }
}

uint64_t sub_1CA614BCC(uint64_t a1)
{
  v3 = _s17ControlFlowBranchVMa(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v55 = (&v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v50 - v8;
  v10 = _s6LayoutVMa(0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v14 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = (&v50 - v16);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v50 - v18;
  v20 = [v1 indexOfAction_];
  v21 = sub_1CA948778();
  v22 = MEMORY[0x1E69E7CC0];
  if (v20 && v20 != v21)
  {
    v56 = v14;
    sub_1CA285AF8(v19);
    v23 = *(v19 + 4);
    sub_1CA94C218();
    sub_1CA285D14(v19, _s6LayoutVMa);
    if ((v20 & 0x8000000000000000) != 0)
    {
      goto LABEL_33;
    }

    if (v20 >= *(v23 + 16))
    {
LABEL_34:
      __break(1u);
    }

    else
    {
      v50 = v4;
      v24 = v23 + 48 * v20;
      v25 = *(v24 + 32);
      v26 = *(v24 + 48);
      v27 = *(v24 + 56);
      v28 = *(v24 + 64);
      v29 = *(v24 + 72);
      v52 = *(v24 + 40);
      v53 = v26;
      v51 = v27;
      sub_1CA36D94C(v25, v52, v26, v27, v28, v29);

      if (v29)
      {
        if (v29 != 1)
        {
          v57 = v22;
          v36 = *(v53 + 16);
          if (v36)
          {
            v56 = *(v3 + 28);
            v54 = (*(v50 + 80) + 32) & ~*(v50 + 80);
            v37 = v53 + v54;
            v38 = *(v50 + 72);
            sub_1CA94C218();
            while (1)
            {
              sub_1CA36D71C(v37, v9);
              v1 = *&v9[v56];
              sub_1CA94C218();
              sub_1CA285D14(v9, _s17ControlFlowBranchVMa);
              v39 = *(v1 + 16);
              if (v39)
              {
                v40 = (v1 + 40 * v39);
                v4 = *(v40 - 1);
                v41 = *v40;
                v42 = v40[1];
                v22 = v40[2];
                v43 = *(v40 + 24);
                sub_1CA36DA2C(v4, *v40, v42, v22, v43);

                if (v43)
                {
                  if (!*(v42 + 16))
                  {
                    __break(1u);
LABEL_33:
                    __break(1u);
                    goto LABEL_34;
                  }

                  v44 = v55;
                  sub_1CA36D71C(v42 + v54, v55);
                  sub_1CA36D780(v4, v41, v42, v22, 1);
                  v4 = *v44;
                  sub_1CA285D14(v44, _s17ControlFlowBranchVMa);
                }

                v45 = v4;
                MEMORY[0x1CCAA1490]();
                if (*((v57 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v57 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  sub_1CA94C698();
                }

                sub_1CA94C6E8();

                v22 = v57;
              }

              else
              {
              }

              v37 += v38;
              if (!--v36)
              {

                swift_bridgeObjectRelease_n();
                goto LABEL_30;
              }
            }
          }

          goto LABEL_30;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
        v30 = swift_allocObject();
        v22 = v30;
        *(v30 + 16) = xmmword_1CA9813B0;
        if (v28)
        {
          v31 = v53;
          if (*(v53 + 16))
          {
            v32 = *(v53 + ((*(v50 + 80) + 32) & ~*(v50 + 80)));
            *(v30 + 32) = v32;
            v33 = v32;

LABEL_28:

LABEL_30:

            return v22;
          }

          __break(1u);
        }

        else
        {
          v46 = v56;
          sub_1CA285AF8(v56);
          v1 = *v46;
          sub_1CA94C218();
          sub_1CA285D14(v46, _s6LayoutVMa);
          v31 = v20 - 1;
          sub_1CA275D70(v20 - 1, (v1 & 0xC000000000000001) == 0, v1);
          if ((v1 & 0xC000000000000001) == 0)
          {
            v47 = *(v1 + 8 * v31 + 32);
LABEL_27:
            v48 = v47;

            *(v22 + 32) = v48;

            goto LABEL_28;
          }
        }

        v47 = MEMORY[0x1CCAA22D0](v31, v1);
        goto LABEL_27;
      }

      sub_1CA36D9BC(v25, v52, v53, v51, v28, 0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_1CA9813B0;
      sub_1CA285AF8(v17);
      v4 = *v17;
      sub_1CA94C218();
      sub_1CA285D14(v17, _s6LayoutVMa);
      v1 = v20 - 1;
      sub_1CA275D70(v20 - 1, (v4 & 0xC000000000000001) == 0, v4);
      if ((v4 & 0xC000000000000001) == 0)
      {
        v34 = *(v4 + 8 * v1 + 32);
LABEL_12:
        v35 = v34;

        *(v22 + 32) = v35;
        return v22;
      }
    }

    v34 = MEMORY[0x1CCAA22D0](v1, v4);
    goto LABEL_12;
  }

  return v22;
}

id sub_1CA615164(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1CA25B3D0(0, &unk_1EC444CA0, off_1E836F4B8);
    v4 = sub_1CA94C648();
  }

  else
  {
    v4 = 0;
  }

  v5 = [v2 initWithVariableProvider:a1 aggrandizements:v4];
  swift_unknownObjectRelease();

  return v5;
}

uint64_t sub_1CA6151F8()
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_65();
  v3 = *MEMORY[0x1E69E9840];

  return sub_1CA6152E8(v0, v1, v2, sub_1CA6155C8);
}

uint64_t sub_1CA615268(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69E9840];

  return sub_1CA6152E8(a1, a2, sub_1CA61596C, sub_1CA61596C);
}

uint64_t sub_1CA6152E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void *, uint64_t, uint64_t, uint64_t))
{
  v19[1] = *MEMORY[0x1E69E9840];
  v6 = *(a2 + 32);
  v7 = v6 & 0x3F;
  v8 = ((1 << v6) + 63) >> 6;
  v9 = 8 * v8;

  if (v7 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    sub_1CA5C3FA4(0, v8, v19 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0));
    OUTLINED_FUNCTION_1_47();
    v11 = a3();
    if (!v8)
    {
      v12 = v11;

LABEL_4:
      v13 = *MEMORY[0x1E69E9840];
      return v12;
    }

    swift_willThrow();

    __break(1u);
  }

  else
  {
    v9 = swift_slowAlloc();

    OUTLINED_FUNCTION_1_47();
    v12 = sub_1CA615530(v15, v16, v17, v18, a4);

    if (!v8)
    {

      MEMORY[0x1CCAA4BF0](v9, -1, -1);
      goto LABEL_4;
    }
  }

  result = MEMORY[0x1CCAA4BF0](v9, -1, -1);
  __break(1u);
  return result;
}

uint64_t sub_1CA6154B0(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69E9840];

  return sub_1CA6152E8(a1, a2, sub_1CA615D04, sub_1CA615D04);
}

void *sub_1CA615530(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void *, uint64_t, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v10 = a5(v9, a2, a3, a4);

    return v10;
  }

  return result;
}

void sub_1CA6155C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v55 = 0;
    v29 = 0;
    v30 = 1 << *(a3 + 32);
    if (v30 < 64)
    {
      v31 = ~(-1 << v30);
    }

    else
    {
      v31 = -1;
    }

    v32 = v31 & *(a3 + 56);
    v33 = (v30 + 63) >> 6;
    v34 = a4 + 56;
LABEL_28:
    while (v32)
    {
      v35 = __clz(__rbit64(v32));
      v52 = (v32 - 1) & v32;
LABEL_35:
      v50 = v35 | (v29 << 6);
      v38 = (*(v5 + 48) + 16 * v50);
      v40 = *v38;
      v39 = v38[1];
      v41 = *(v4 + 40);
      sub_1CA94D918();
      sub_1CA94C218();
      sub_1CA94C458();
      v42 = sub_1CA94D968();
      v43 = ~(-1 << *(v4 + 32));
      do
      {
        v44 = v42 & v43;
        if (((*(v34 + (((v42 & v43) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v42 & v43)) & 1) == 0)
        {

          v4 = a4;
          v32 = v52;
          goto LABEL_28;
        }

        v45 = (*(a4 + 48) + 16 * v44);
        if (*v45 == v40 && v45[1] == v39)
        {
          break;
        }

        v47 = sub_1CA94D7F8();
        v42 = v44 + 1;
      }

      while ((v47 & 1) == 0);

      *(a1 + ((v50 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v50;
      v28 = __OFADD__(v55++, 1);
      v4 = a4;
      v32 = v52;
      if (v28)
      {
        goto LABEL_50;
      }
    }

    v36 = v29;
    while (1)
    {
      v29 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        break;
      }

      if (v29 >= v33)
      {
LABEL_46:

        sub_1CA6B04B4();
        return;
      }

      v37 = *(v5 + 56 + 8 * v29);
      ++v36;
      if (v37)
      {
        v35 = __clz(__rbit64(v37));
        v52 = (v37 - 1) & v37;
        goto LABEL_35;
      }
    }
  }

  else
  {
    v54 = 0;
    v6 = 0;
    v48 = a4 + 56;
    v7 = 1 << *(a4 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(a4 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = a3 + 56;
    v49 = v10;
LABEL_6:
    while (v9)
    {
      v12 = __clz(__rbit64(v9));
      v51 = (v9 - 1) & v9;
LABEL_13:
      v15 = (*(v4 + 48) + 16 * (v12 | (v6 << 6)));
      v17 = *v15;
      v16 = v15[1];
      v18 = *(v5 + 40);
      sub_1CA94D918();
      sub_1CA94C218();
      sub_1CA94C458();
      v19 = sub_1CA94D968();
      v20 = v5;
      v21 = ~(-1 << *(v5 + 32));
      do
      {
        v22 = v19 & v21;
        v23 = (v19 & v21) >> 6;
        v24 = 1 << (v19 & v21);
        if ((v24 & *(v11 + 8 * v23)) == 0)
        {

          v5 = v20;
          v4 = a4;
          v10 = v49;
          v9 = v51;
          goto LABEL_6;
        }

        v25 = (*(v20 + 48) + 16 * v22);
        if (*v25 == v17 && v25[1] == v16)
        {
          break;
        }

        v27 = sub_1CA94D7F8();
        v19 = v22 + 1;
      }

      while ((v27 & 1) == 0);

      v9 = v51;
      *(a1 + 8 * v23) |= v24;
      v28 = __OFADD__(v54++, 1);
      v5 = v20;
      v4 = a4;
      v10 = v49;
      if (v28)
      {
        goto LABEL_49;
      }
    }

    v13 = v6;
    while (1)
    {
      v6 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
        goto LABEL_46;
      }

      v14 = *(v48 + 8 * v6);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v51 = (v14 - 1) & v14;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
}

void sub_1CA61596C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v49 = 0;
    v25 = 0;
    v42 = a3 + 56;
    v26 = 1 << *(a3 + 32);
    if (v26 < 64)
    {
      v27 = ~(-1 << v26);
    }

    else
    {
      v27 = -1;
    }

    v28 = v27 & *(a3 + 56);
    v29 = (v26 + 63) >> 6;
    v30 = a4 + 56;
    v44 = v29;
LABEL_24:
    while (v28)
    {
      v31 = __clz(__rbit64(v28));
      v51 = (v28 - 1) & v28;
LABEL_31:
      v47 = v31 | (v25 << 6);
      v34 = *(v4 + 40);
      v35 = *(*(v5 + 48) + 8 * v47);
      v36 = sub_1CA94CFC8();
      v37 = ~(-1 << *(v4 + 32));
      do
      {
        v38 = v36 & v37;
        if (((*(v30 + (((v36 & v37) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v36 & v37)) & 1) == 0)
        {

          v4 = a4;
          v29 = v44;
          v28 = v51;
          goto LABEL_24;
        }

        sub_1CA25B3D0(0, &qword_1EDB9F5D0, off_1E836DCF8);
        v39 = *(*(a4 + 48) + 8 * v38);
        v40 = sub_1CA94CFD8();

        v36 = v38 + 1;
      }

      while ((v40 & 1) == 0);

      *(a1 + ((v47 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v47;
      v28 = v51;
      v24 = __OFADD__(v49++, 1);
      v4 = a4;
      v29 = v44;
      if (v24)
      {
        goto LABEL_42;
      }
    }

    v32 = v25;
    while (1)
    {
      v25 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        break;
      }

      if (v25 >= v29)
      {
LABEL_38:

        sub_1CA6B0874();
        return;
      }

      v33 = *(v42 + 8 * v25);
      ++v32;
      if (v33)
      {
        v31 = __clz(__rbit64(v33));
        v51 = (v33 - 1) & v33;
        goto LABEL_31;
      }
    }
  }

  else
  {
    v6 = 0;
    v41 = a4 + 56;
    v7 = 1 << *(a4 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(a4 + 56);
    v10 = (v7 + 63) >> 6;
    v48 = 0;
    v50 = a3 + 56;
    v43 = v10;
LABEL_6:
    while (v9)
    {
      v11 = __clz(__rbit64(v9));
      v46 = (v9 - 1) & v9;
LABEL_13:
      v14 = *(v5 + 40);
      v15 = *(*(v4 + 48) + 8 * (v11 | (v6 << 6)));
      v16 = sub_1CA94CFC8();
      v17 = v5;
      v18 = ~(-1 << *(v5 + 32));
      do
      {
        v19 = v16 & v18;
        v20 = (v16 & v18) >> 6;
        v21 = 1 << (v16 & v18);
        if ((v21 & *(v50 + 8 * v20)) == 0)
        {

          v5 = v17;
          v4 = a4;
          v10 = v43;
          v9 = v46;
          goto LABEL_6;
        }

        sub_1CA25B3D0(0, &qword_1EDB9F5D0, off_1E836DCF8);
        v22 = *(*(v17 + 48) + 8 * v19);
        v23 = sub_1CA94CFD8();

        v16 = v19 + 1;
      }

      while ((v23 & 1) == 0);

      v10 = v43;
      *(a1 + 8 * v20) |= v21;
      v9 = v46;
      v24 = __OFADD__(v48++, 1);
      v5 = v17;
      v4 = a4;
      if (v24)
      {
        goto LABEL_41;
      }
    }

    v12 = v6;
    while (1)
    {
      v6 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
        goto LABEL_38;
      }

      v13 = *(v41 + 8 * v6);
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v46 = (v13 - 1) & v13;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
}

void sub_1CA615D04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a4 + 16) >= *(a3 + 16))
  {
LABEL_19:
    v38 = 0;
    v22 = 0;
    v23 = 1 << *(a3 + 32);
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    else
    {
      v24 = -1;
    }

    v25 = v24 & *(a3 + 56);
    v26 = (v23 + 63) >> 6;
LABEL_23:
    while (v25)
    {
      v27 = __clz(__rbit64(v25));
      v25 &= v25 - 1;
LABEL_30:
      v30 = v27 | (v22 << 6);
      v31 = *(*(a3 + 48) + 8 * v30);
      v32 = *(a4 + 40);
      v33 = sub_1CA94D908();
      v34 = ~(-1 << *(a4 + 32));
      while (1)
      {
        v35 = v33 & v34;
        if (((*(a4 + 56 + (((v33 & v34) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v33 & v34)) & 1) == 0)
        {
          break;
        }

        v33 = v35 + 1;
        if (*(*(a4 + 48) + 8 * v35) == v31)
        {
          *(a1 + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v30;
          v21 = __OFADD__(v38++, 1);
          if (!v21)
          {
            goto LABEL_23;
          }

          __break(1u);
          goto LABEL_36;
        }
      }
    }

    v28 = v22;
    while (1)
    {
      v22 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v22 >= v26)
      {
        goto LABEL_36;
      }

      v29 = *(a3 + 56 + 8 * v22);
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v25 = (v29 - 1) & v29;
        goto LABEL_30;
      }
    }
  }

  else
  {
    v37 = 0;
    v6 = 0;
    v7 = 1 << *(a4 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(a4 + 56);
    v10 = (v7 + 63) >> 6;
LABEL_6:
    while (v9)
    {
      v11 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_13:
      v14 = *(*(a4 + 48) + 8 * (v11 | (v6 << 6)));
      v15 = *(a3 + 40);
      v16 = sub_1CA94D908();
      v17 = ~(-1 << *(a3 + 32));
      while (1)
      {
        v18 = v16 & v17;
        v19 = (v16 & v17) >> 6;
        v20 = 1 << (v16 & v17);
        if ((v20 & *(a3 + 56 + 8 * v19)) == 0)
        {
          break;
        }

        v16 = v18 + 1;
        if (*(*(a3 + 48) + 8 * v18) == v14)
        {
          *(a1 + 8 * v19) |= v20;
          v21 = __OFADD__(v37++, 1);
          if (!v21)
          {
            goto LABEL_6;
          }

          __break(1u);
          goto LABEL_19;
        }
      }
    }

    v12 = v6;
    while (1)
    {
      v6 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
LABEL_36:

        sub_1CA6B0888();
        return;
      }

      v13 = *(a4 + 56 + 8 * v6);
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v9 = (v13 - 1) & v13;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  __break(1u);
}

id sub_1CA615FC8()
{
  v137 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813E0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000011;
  *(inited + 48) = 0x80000001CA9D5C90;
  *(inited + 64) = v1;
  *(inited + 72) = @"AppDefinition";
  v2 = @"ActionClass";
  v3 = @"AppDefinition";
  v4 = sub_1CA94C1E8();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 80) = v4;
  *(inited + 104) = v5;
  *(inited + 112) = @"Description";
  v140 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v6 = swift_initStackObject();
  *(v6 + 16) = xmmword_1CA981310;
  *(v6 + 32) = @"DescriptionSummary";
  v7 = @"Description";
  v8 = @"DescriptionSummary";
  v9 = sub_1CA94C438();
  v141 = v10;
  v11 = sub_1CA94C438();
  v13 = v12;
  v14 = sub_1CA948E58();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v144 = v16;
  v146 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v125 - v146;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v142 = qword_1EDB9F690;
  v18 = [qword_1EDB9F690 bundleURL];
  v19 = sub_1CA948BA8();
  v143 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v145 = (v20 + 15) & 0xFFFFFFFFFFFFFFF0;
  v21 = &v125 - v145;
  sub_1CA948B68();

  v22 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v23 = sub_1CA2F9F14(v9, v141, v11, v13, 0, 0, v17, v21);
  v141 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  *(v6 + 64) = v141;
  *(v6 + 40) = v23;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v24 = v140;
  *(inited + 120) = sub_1CA6B3784();
  *(inited + 144) = v24;
  *(inited + 152) = @"Input";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v25 = swift_initStackObject();
  *(v25 + 16) = xmmword_1CA981350;
  *(v25 + 32) = 0x656C7069746C754DLL;
  *(v25 + 40) = 0xE800000000000000;
  v26 = MEMORY[0x1E69E6370];
  *(v25 + 48) = 1;
  *(v25 + 72) = v26;
  strcpy((v25 + 80), "ParameterKey");
  *(v25 + 93) = 0;
  *(v25 + 94) = -5120;
  *(v25 + 96) = 0x557475706E494657;
  *(v25 + 104) = 0xEA00000000004C52;
  *(v25 + 120) = MEMORY[0x1E69E6158];
  *(v25 + 128) = 0x6465726975716552;
  *(v25 + 136) = 0xE800000000000000;
  *(v25 + 144) = 1;
  *(v25 + 168) = v26;
  *(v25 + 176) = 0x7365707954;
  v27 = v26;
  *(v25 + 184) = 0xE500000000000000;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v25 + 216) = v136;
  *(v25 + 192) = &unk_1F4A09698;
  v28 = @"Input";
  v29 = sub_1CA94C1E8();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  *(inited + 160) = v29;
  *(inited + 184) = v30;
  *(inited + 192) = @"InputPassthrough";
  *(inited + 200) = 1;
  *(inited + 224) = v27;
  *(inited + 232) = @"Name";
  v31 = @"InputPassthrough";
  v32 = @"Name";
  v33 = sub_1CA94C438();
  v35 = v34;
  v36 = sub_1CA94C438();
  v38 = v37;
  v140 = &v125;
  MEMORY[0x1EEE9AC00](v36);
  v39 = &v125 - v146;
  sub_1CA948D98();
  v40 = [v142 bundleURL];
  MEMORY[0x1EEE9AC00](v40);
  v41 = &v125 - v145;
  sub_1CA948B68();

  v42 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 240) = sub_1CA2F9F14(v33, v35, v36, v38, 0, 0, v39, v41);
  *(inited + 264) = v141;
  *(inited + 272) = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v140 = swift_allocObject();
  *(v140 + 1) = xmmword_1CA981360;
  v139 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v43 = swift_initStackObject();
  *(v43 + 16) = xmmword_1CA981370;
  v135 = 0x80000001CA99B500;
  *(v43 + 32) = @"Class";
  *(v43 + 40) = 0xD000000000000014;
  *(v43 + 48) = 0x80000001CA99B500;
  *(v43 + 64) = MEMORY[0x1E69E6158];
  *(v43 + 72) = @"Description";
  v133 = @"Class";
  v44 = @"Parameters";
  v45 = @"Description";
  v46 = sub_1CA94C438();
  v130 = v47;
  v131 = v46;
  v48 = sub_1CA94C438();
  v50 = v49;
  v132 = &v125;
  MEMORY[0x1EEE9AC00](v48);
  v51 = &v125 - v146;
  sub_1CA948D98();
  v52 = [v142 bundleURL];
  v138 = inited;
  MEMORY[0x1EEE9AC00](v52);
  v53 = &v125 - v145;
  sub_1CA948B68();

  v54 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v43 + 80) = sub_1CA2F9F14(v131, v130, v48, v50, 0, 0, v51, v53);
  *(v43 + 104) = v141;
  *(v43 + 112) = @"Key";
  strcpy((v43 + 120), "WFPocketTags");
  *(v43 + 133) = 0;
  *(v43 + 134) = -5120;
  *(v43 + 144) = MEMORY[0x1E69E6158];
  *(v43 + 152) = @"Label";
  v55 = @"Key";
  v56 = @"Label";
  v130 = v55;
  v132 = v56;
  v57 = sub_1CA94C438();
  v128 = v58;
  v129 = v57;
  v59 = sub_1CA94C438();
  v127 = v60;
  v131 = &v125;
  MEMORY[0x1EEE9AC00](v59);
  v61 = &v125 - v146;
  sub_1CA948D98();
  v62 = v142;
  v63 = [v142 bundleURL];
  MEMORY[0x1EEE9AC00](v63);
  v64 = v145;
  sub_1CA948B68();

  v65 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v43 + 160) = sub_1CA2F9F14(v129, v128, v59, v127, 0, 0, v61, &v125 - v64);
  v66 = v141;
  *(v43 + 184) = v141;
  *(v43 + 192) = @"Placeholder";
  v131 = @"Placeholder";
  v67 = sub_1CA94C438();
  v127 = v68;
  v128 = v67;
  v69 = sub_1CA94C438();
  v126 = v70;
  v129 = &v125;
  MEMORY[0x1EEE9AC00](v69);
  v71 = &v125 - v146;
  sub_1CA948D98();
  v72 = [v62 bundleURL];
  MEMORY[0x1EEE9AC00](v72);
  sub_1CA948B68();

  v73 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v74 = sub_1CA2F9F14(v128, v127, v69, v126, 0, 0, v71, &v125 - v64);
  *(v43 + 224) = v66;
  *(v43 + 200) = v74;
  _s3__C3KeyVMa_0(0);
  v129 = v75;
  v128 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  v140[4] = sub_1CA2F864C();
  v76 = swift_allocObject();
  *(v76 + 16) = xmmword_1CA981300;
  *(v76 + 32) = @"AutocapitalizationType";
  *(v76 + 40) = 1701736270;
  *(v76 + 48) = 0xE400000000000000;
  v77 = MEMORY[0x1E69E6158];
  v78 = v133;
  *(v76 + 64) = MEMORY[0x1E69E6158];
  *(v76 + 72) = v78;
  *(v76 + 80) = 0xD000000000000014;
  *(v76 + 88) = v135;
  *(v76 + 104) = v77;
  *(v76 + 112) = @"DisableAutocorrection";
  *(v76 + 120) = 1;
  v79 = v130;
  *(v76 + 144) = MEMORY[0x1E69E6370];
  *(v76 + 152) = v79;
  *(v76 + 160) = 0x557475706E494657;
  *(v76 + 168) = 0xEA00000000004C52;
  *(v76 + 184) = v77;
  *(v76 + 192) = @"KeyboardType";
  *(v76 + 200) = 5001813;
  *(v76 + 208) = 0xE300000000000000;
  v80 = v132;
  *(v76 + 224) = v77;
  *(v76 + 232) = v80;
  v81 = @"AutocapitalizationType";
  v82 = @"DisableAutocorrection";
  v83 = @"KeyboardType";
  v84 = sub_1CA94C438();
  v133 = v85;
  v134 = v84;
  v132 = sub_1CA94C438();
  v87 = v86;
  v135 = &v125;
  MEMORY[0x1EEE9AC00](v132);
  v88 = v146;
  sub_1CA948D98();
  v89 = v62;
  v90 = [v62 bundleURL];
  v130 = &v125;
  MEMORY[0x1EEE9AC00](v90);
  v91 = &v125 - v145;
  sub_1CA948B68();

  v92 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v76 + 240) = sub_1CA2F9F14(v134, v133, v132, v87, 0, 0, &v125 - v88, v91);
  v93 = v141;
  v94 = v131;
  *(v76 + 264) = v141;
  *(v76 + 272) = v94;
  v95 = sub_1CA94C438();
  v133 = v96;
  v134 = v95;
  v97 = sub_1CA94C438();
  v99 = v98;
  v135 = &v125;
  MEMORY[0x1EEE9AC00](v97);
  sub_1CA948D98();
  v100 = [v89 bundleURL];
  MEMORY[0x1EEE9AC00](v100);
  v101 = &v125 - v145;
  sub_1CA948B68();

  v102 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v76 + 280) = sub_1CA2F9F14(v134, v133, v97, v99, 0, 0, &v125 - v88, v101);
  *(v76 + 304) = v93;
  *(v76 + 312) = @"TextContentType";
  *(v76 + 344) = MEMORY[0x1E69E6158];
  *(v76 + 320) = 5001813;
  *(v76 + 328) = 0xE300000000000000;
  v103 = @"TextContentType";
  sub_1CA94C1E8();
  v104 = sub_1CA2F864C();
  v105 = v140;
  v140[5] = v104;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v107 = v138;
  v138[35] = v105;
  v107[38] = v106;
  v107[39] = @"ParameterSummary";
  v108 = @"ParameterSummary";
  v109 = sub_1CA94C438();
  v111 = v110;
  v112 = sub_1CA94C438();
  v114 = v113;
  MEMORY[0x1EEE9AC00](v112);
  v115 = &v125 - v146;
  sub_1CA948D98();
  v116 = [v142 bundleURL];
  MEMORY[0x1EEE9AC00](v116);
  v117 = &v125 - v145;
  sub_1CA948B68();

  v118 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v119 = sub_1CA2F9F14(v109, v111, v112, v114, 0, 0, v115, v117);
  v120 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v121 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v122 = v138;
  v138[40] = v120;
  v122[43] = v121;
  v122[44] = @"RequiredResources";
  v122[48] = v136;
  v122[45] = &unk_1F4A096C8;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  v123 = @"RequiredResources";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA61705C()
{
  v158 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981420;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000016;
  *(inited + 48) = 0x80000001CA9D5E40;
  *(inited + 64) = v1;
  *(inited + 72) = @"Description";
  v165 = inited;
  *&v162 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v2 = swift_initStackObject();
  *(v2 + 16) = xmmword_1CA97EDF0;
  *(v2 + 32) = @"DescriptionResult";
  v3 = @"ActionClass";
  v4 = @"Description";
  v5 = @"DescriptionResult";
  v163 = sub_1CA94C438();
  v164 = v6;
  v7 = sub_1CA94C438();
  v161 = v8;
  v9 = sub_1CA948E58();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v170 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  v11 = v151 - v170;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v12 = qword_1EDB9F690;
  v168 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v167 = v15;
  v169 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = v151 - v169;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v163, v164, v7, v161, 0, 0, v11, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  *(v2 + 40) = v18;
  *(v2 + 64) = v19;
  *(v2 + 72) = @"DescriptionSummary";
  v164 = v19;
  v20 = @"DescriptionSummary";
  v21 = sub_1CA94C438();
  v161 = v22;
  v23 = sub_1CA94C438();
  v25 = v24;
  v163 = v151;
  MEMORY[0x1EEE9AC00](v23);
  v26 = v151 - v170;
  sub_1CA948D98();
  v27 = [v12 bundleURL];
  v166 = v10;
  MEMORY[0x1EEE9AC00](v27);
  v28 = v151 - v169;
  sub_1CA948B68();

  v29 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v30 = sub_1CA2F9F14(v21, v161, v23, v25, 0, 0, v26, v28);
  *(v2 + 104) = v19;
  *(v2 + 80) = v30;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v31 = v162;
  v32 = sub_1CA6B3784();
  v33 = v165;
  v165[10] = v32;
  v33[13] = v31;
  v33[14] = @"Discoverable";
  v34 = MEMORY[0x1E69E6370];
  *(v33 + 120) = 0;
  v33[18] = v34;
  v33[19] = @"IconName";
  v35 = v34;
  v33[20] = 0x70704164756F6C43;
  v33[21] = 0xE800000000000000;
  v36 = MEMORY[0x1E69E6158];
  v33[23] = MEMORY[0x1E69E6158];
  v33[24] = @"Input";
  v37 = v36;
  v38 = v33;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v39 = swift_initStackObject();
  v162 = xmmword_1CA981350;
  *(v39 + 16) = xmmword_1CA981350;
  *(v39 + 32) = 0x656C7069746C754DLL;
  *(v39 + 40) = 0xE800000000000000;
  *(v39 + 48) = 1;
  *(v39 + 72) = v35;
  strcpy((v39 + 80), "ParameterKey");
  *(v39 + 93) = 0;
  *(v39 + 94) = -5120;
  *(v39 + 96) = 0x7475706E494657;
  *(v39 + 104) = 0xE700000000000000;
  *(v39 + 120) = v37;
  *(v39 + 128) = 0x6465726975716552;
  *(v39 + 136) = 0xE800000000000000;
  *(v39 + 144) = 1;
  *(v39 + 168) = v35;
  *(v39 + 176) = 0x7365707954;
  *(v39 + 184) = 0xE500000000000000;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v39 + 216) = v163;
  *(v39 + 192) = &unk_1F4A09708;
  v40 = @"Discoverable";
  v41 = @"IconName";
  v42 = @"Input";
  v43 = sub_1CA94C1E8();
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v161 = v44;
  v38[25] = v43;
  v38[28] = v44;
  v38[29] = @"Name";
  v45 = @"Name";
  v46 = sub_1CA94C438();
  v48 = v47;
  v49 = sub_1CA94C438();
  v51 = v50;
  v159 = v151;
  MEMORY[0x1EEE9AC00](v49);
  v52 = v151 - v170;
  sub_1CA948D98();
  v53 = [v168 bundleURL];
  MEMORY[0x1EEE9AC00](v53);
  v54 = v151 - v169;
  sub_1CA948B68();

  v55 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v56 = sub_1CA2F9F14(v46, v48, v49, v51, 0, 0, v52, v54);
  v58 = v164;
  v57 = v165;
  v165[30] = v56;
  v57[33] = v58;
  v57[34] = @"Output";
  v59 = swift_initStackObject();
  *(v59 + 16) = v162;
  *(v59 + 32) = 0x75736F6C63736944;
  *(v59 + 40) = 0xEF6C6576654C6572;
  *(v59 + 48) = 0x63696C627550;
  *(v59 + 56) = 0xE600000000000000;
  *(v59 + 72) = MEMORY[0x1E69E6158];
  *(v59 + 80) = 0x656C7069746C754DLL;
  *(v59 + 88) = 0xE800000000000000;
  *(v59 + 96) = 1;
  *(v59 + 120) = MEMORY[0x1E69E6370];
  *(v59 + 128) = 0x614E74757074754FLL;
  *(v59 + 136) = 0xEA0000000000656DLL;
  v60 = @"Output";
  v159 = sub_1CA94C438();
  v157 = v61;
  v62 = sub_1CA94C438();
  v64 = v63;
  v160 = v151;
  MEMORY[0x1EEE9AC00](v62);
  v65 = v151 - v170;
  sub_1CA948D98();
  v66 = [v168 bundleURL];
  MEMORY[0x1EEE9AC00](v66);
  v67 = v151 - v169;
  sub_1CA948B68();

  v68 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v59 + 144) = sub_1CA2F9F14(v159, v157, v62, v64, 0, 0, v65, v67);
  *(v59 + 168) = v58;
  *(v59 + 176) = 0x7365707954;
  *(v59 + 216) = v163;
  *(v59 + 184) = 0xE500000000000000;
  *(v59 + 192) = &unk_1F4A09748;
  v69 = MEMORY[0x1E69E6158];
  v70 = sub_1CA94C1E8();
  v71 = v165;
  v165[35] = v70;
  v71[38] = v161;
  v71[39] = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v161 = swift_allocObject();
  v156 = xmmword_1CA981360;
  *(v161 + 16) = xmmword_1CA981360;
  v160 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v72 = swift_allocObject();
  *(v72 + 16) = xmmword_1CA981370;
  *(v72 + 32) = @"Class";
  *(v72 + 40) = 0xD000000000000016;
  *(v72 + 48) = 0x80000001CA99C4A0;
  *(v72 + 64) = v69;
  *(v72 + 72) = @"DefaultValue";
  *(v72 + 80) = 0x65746176697250;
  *(v72 + 88) = 0xE700000000000000;
  *(v72 + 104) = v69;
  *(v72 + 112) = @"Items";
  v159 = swift_allocObject();
  *(v159 + 1) = v156;
  *&v156 = @"Class";
  v73 = @"Parameters";
  v74 = @"DefaultValue";
  v75 = @"Items";
  v76 = sub_1CA94C438();
  v153 = v77;
  v154 = v76;
  v78 = sub_1CA94C438();
  v152 = v79;
  v155 = v151;
  MEMORY[0x1EEE9AC00](v78);
  v80 = v170;
  sub_1CA948D98();
  v81 = v168;
  v82 = [v168 bundleURL];
  v151[1] = v151;
  MEMORY[0x1EEE9AC00](v82);
  v83 = v169;
  sub_1CA948B68();

  v84 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v85 = sub_1CA2F9F14(v154, v153, v78, v152, 0, 0, v151 - v80, v151 - v83);
  v159[4] = v85;
  v86 = sub_1CA94C438();
  v153 = v87;
  v154 = v86;
  v88 = sub_1CA94C438();
  v152 = v89;
  v155 = v151;
  MEMORY[0x1EEE9AC00](v88);
  sub_1CA948D98();
  v90 = [v81 bundleURL];
  MEMORY[0x1EEE9AC00](v90);
  sub_1CA948B68();

  v91 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v92 = sub_1CA2F9F14(v154, v153, v88, v152, 0, 0, v151 - v80, v151 - v83);
  v93 = v159;
  v159[5] = v92;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443830, &qword_1CA981580);
  *(v72 + 120) = v93;
  *(v72 + 144) = v94;
  *(v72 + 152) = @"Key";
  *(v72 + 160) = 0xD000000000000015;
  *(v72 + 168) = 0x80000001CA9D5F80;
  *(v72 + 184) = MEMORY[0x1E69E6158];
  *(v72 + 192) = @"Label";
  v95 = @"Key";
  v96 = @"Label";
  v154 = v95;
  v153 = v96;
  v97 = sub_1CA94C438();
  v99 = v98;
  v100 = sub_1CA94C438();
  v102 = v101;
  v159 = v151;
  MEMORY[0x1EEE9AC00](v100);
  v103 = v151 - v170;
  sub_1CA948D98();
  v104 = [v168 bundleURL];
  MEMORY[0x1EEE9AC00](v104);
  v105 = v151 - v169;
  sub_1CA948B68();

  v106 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v107 = sub_1CA2F9F14(v97, v99, v100, v102, 0, 0, v103, v105);
  *(v72 + 224) = v164;
  *(v72 + 200) = v107;
  _s3__C3KeyVMa_0(0);
  v159 = v108;
  v155 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  *(v161 + 32) = sub_1CA2F864C();
  v109 = swift_allocObject();
  *(v109 + 16) = v162;
  *(v109 + 32) = v156;
  *(v109 + 40) = 0xD000000000000019;
  *(v109 + 48) = 0x80000001CA99B030;
  v110 = MEMORY[0x1E69E6158];
  v111 = v154;
  *(v109 + 64) = MEMORY[0x1E69E6158];
  *(v109 + 72) = v111;
  *(v109 + 80) = 0x7475706E494657;
  *(v109 + 88) = 0xE700000000000000;
  v112 = v153;
  *(v109 + 104) = v110;
  *(v109 + 112) = v112;
  v157 = sub_1CA94C438();
  *&v156 = v113;
  v114 = sub_1CA94C438();
  v154 = v115;
  *&v162 = v151;
  MEMORY[0x1EEE9AC00](v114);
  v116 = v170;
  sub_1CA948D98();
  v117 = v168;
  v118 = [v168 bundleURL];
  v153 = v151;
  MEMORY[0x1EEE9AC00](v118);
  v119 = v169;
  sub_1CA948B68();

  v120 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v109 + 120) = sub_1CA2F9F14(v157, v156, v114, v154, 0, 0, v151 - v116, v151 - v119);
  v121 = v164;
  *(v109 + 144) = v164;
  *(v109 + 152) = @"Placeholder";
  v122 = @"Placeholder";
  v157 = sub_1CA94C438();
  *&v156 = v123;
  v124 = sub_1CA94C438();
  v126 = v125;
  *&v162 = v151;
  MEMORY[0x1EEE9AC00](v124);
  sub_1CA948D98();
  v127 = [v117 bundleURL];
  MEMORY[0x1EEE9AC00](v127);
  sub_1CA948B68();

  v128 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v129 = sub_1CA2F9F14(v157, v156, v124, v126, 0, 0, v151 - v116, v151 - v119);
  *(v109 + 184) = v121;
  *(v109 + 160) = v129;
  sub_1CA94C1E8();
  v130 = sub_1CA2F864C();
  v131 = v161;
  *(v161 + 40) = v130;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v133 = v165;
  v165[40] = v131;
  v133[43] = v132;
  v133[44] = @"ParameterSummary";
  v134 = @"ParameterSummary";
  v135 = sub_1CA94C438();
  v137 = v136;
  v138 = sub_1CA94C438();
  v140 = v139;
  MEMORY[0x1EEE9AC00](v138);
  v141 = v151 - v170;
  sub_1CA948D98();
  v142 = [v168 bundleURL];
  MEMORY[0x1EEE9AC00](v142);
  v143 = v151 - v169;
  sub_1CA948B68();

  v144 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v145 = sub_1CA2F9F14(v135, v137, v138, v140, 0, 0, v141, v143);
  v146 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v147 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v148 = v165;
  v165[45] = v146;
  v148[48] = v147;
  v148[49] = @"RequiredResources";
  v148[53] = v163;
  v148[50] = &unk_1F4A09778;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  v149 = @"RequiredResources";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

uint64_t sub_1CA6183A4@<X0>(unint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, void *a5@<X8>)
{
  v10 = swift_allocObject();
  v11 = *MEMORY[0x1E69E0FB0];
  v10[2] = sub_1CA94C3A8();
  v10[3] = v12;
  sub_1CA25B3D0(0, a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v10[4] = sub_1CA94C408();
  v10[5] = v13;
  *a5 = v10;
  v14 = *MEMORY[0x1E69DB098];
  v15 = sub_1CA94ADC8();
  OUTLINED_FUNCTION_52(v15);
  return (*(v16 + 104))(a5, v14);
}

void static WFCalendarSubstitutableState.typeDefinition(context:)()
{
  OUTLINED_FUNCTION_37_0();
  v68 = OUTLINED_FUNCTION_30_18(v1);
  v2 = OUTLINED_FUNCTION_52(v68);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_6_2();
  OUTLINED_FUNCTION_25_0();
  v5 = sub_1CA94B5D8();
  v6 = OUTLINED_FUNCTION_18_0(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_6_2();
  OUTLINED_FUNCTION_25_0();
  v66 = sub_1CA94AD08();
  v9 = OUTLINED_FUNCTION_1_0(v66);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_6_0();
  v16 = (v15 - v14);
  v17 = sub_1CA94ADC8();
  v18 = OUTLINED_FUNCTION_1_0(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_6_2();
  v67 = *v0;
  sub_1CA6183A4(&unk_1EC446DA0, off_1E836DEF0, &qword_1EC4476F0, &qword_1CA98FB78, v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443F18, qword_1CA982590);
  v24 = sub_1CA94B538();
  OUTLINED_FUNCTION_12(v24);
  v26 = *(v25 + 72);
  v28 = (*(v27 + 80) + 32) & ~*(v27 + 80);
  *(swift_allocObject() + 16) = xmmword_1CA981310;
  v29 = swift_allocBox();
  v31 = v30;
  v32 = sub_1CA94AD98();
  v33 = swift_allocBox();
  v34 = *MEMORY[0x1E69DB060];
  OUTLINED_FUNCTION_39(v32);
  (*(v35 + 104))();
  *v31 = v33;
  (*(v20 + 104))(v31, *MEMORY[0x1E69DB0B0], v17);
  *v16 = v29;
  (*(v11 + 104))(v16, *MEMORY[0x1E69DAF30], v66);
  sub_1CA94B528();
  v36 = sub_1CA94C438();
  v38 = v37;
  v39 = sub_1CA94C438();
  v41 = v40;
  v42 = sub_1CA948E58();
  v43 = OUTLINED_FUNCTION_18_0(v42);
  v45 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_6_0();
  v48 = v47 - v46;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    OUTLINED_FUNCTION_0_3();
  }

  v49 = [qword_1EDB9F690 bundleURL];
  v50 = sub_1CA948BA8();
  v51 = OUTLINED_FUNCTION_18_0(v50);
  v53 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_6_0();
  v56 = v55 - v54;
  sub_1CA948B68();

  v57 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v58 = sub_1CA2F9F14(v36, v38, v39, v41, 0, 0, v48, v56);
  v59 = [v67 localize_];

  sub_1CA94C3A8();
  OUTLINED_FUNCTION_48_8();
  OUTLINED_FUNCTION_5_44();
  sub_1CA94B5C8();
  sub_1CA61CCF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4468D0, &qword_1CA98BEE8);
  sub_1CA61CD4C();
  OUTLINED_FUNCTION_8_29();
  OUTLINED_FUNCTION_31_12();
  v60 = *MEMORY[0x1E69DAF98];
  v61 = sub_1CA94AD48();
  OUTLINED_FUNCTION_52(v61);
  v63 = *(v62 + 104);
  v64 = OUTLINED_FUNCTION_3_3();
  v65(v64);
  OUTLINED_FUNCTION_36();
}

void static WFCalendarSubstitutableState.parameterState(from:)()
{
  OUTLINED_FUNCTION_108();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4468C0, &qword_1CA988C00);
  OUTLINED_FUNCTION_18_0(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_37_1();
  v8 = sub_1CA94AC88();
  v9 = OUTLINED_FUNCTION_1_0(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_6_0();
  v16 = (v15 - v14);
  v17 = sub_1CA94A9A8();
  v18 = OUTLINED_FUNCTION_1_0(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_62();
  (*(v11 + 16))(v16, v3, v8);
  if ((*(v11 + 88))(v16, v8) == *MEMORY[0x1E69DAE58])
  {
    (*(v11 + 96))(v16, v8);
    v23 = *v16;
    v24 = swift_projectBox();
    (*(v20 + 16))(v0, v24, v17);

    sub_1CA94A978();
    v25 = sub_1CA94B458();
    OUTLINED_FUNCTION_49(v1, 1, v25);
    if (v26)
    {
      sub_1CA27080C(v1, &qword_1EC4468C0, &qword_1CA988C00);
    }

    else
    {
      sub_1CA94B378();
      OUTLINED_FUNCTION_39(v25);
      v30 = *(v29 + 8);
      v31 = OUTLINED_FUNCTION_4_37();
      v32(v31);
    }

    v33 = sub_1CA94A898();
    v35 = v34;
    v36 = objc_allocWithZone(WFEKCalendarDescriptor);
    v37 = OUTLINED_FUNCTION_72_0();
    v39 = sub_1CA61CE04(v37, v38, v33, v35, 0);
    [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_];

    (*(v20 + 8))(v0, v17);
  }

  else
  {
    (*(v11 + 8))(v16, v8);
    sub_1CA61CDB0();
    OUTLINED_FUNCTION_4_0();
    v27 = swift_allocError();
    OUTLINED_FUNCTION_17_19(v27, v28);
  }

  OUTLINED_FUNCTION_24_19();
  OUTLINED_FUNCTION_107();
}

uint64_t WFCalendarSubstitutableState.typedValue(with:)()
{
  OUTLINED_FUNCTION_0();
  v2 = v0;
  v4 = v3;
  v1[2] = v5;
  v1[3] = v2;
  v1[4] = swift_getObjectType();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444A70, &qword_1CA985610);
  OUTLINED_FUNCTION_18_0(v6);
  v8 = *(v7 + 64);
  v1[5] = OUTLINED_FUNCTION_45();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4468C0, &qword_1CA988C00);
  OUTLINED_FUNCTION_18_0(v9);
  v11 = *(v10 + 64);
  v1[6] = OUTLINED_FUNCTION_45();
  v12 = sub_1CA94ADC8();
  OUTLINED_FUNCTION_18_0(v12);
  v14 = *(v13 + 64);
  v15 = OUTLINED_FUNCTION_45();
  v16 = *(v4 + 8);
  v1[7] = v15;
  v1[8] = v16;
  v17 = OUTLINED_FUNCTION_85();

  return MEMORY[0x1EEE6DFA0](v17, v18, v19);
}

uint64_t sub_1CA618D78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t *a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_43_12();
  v23 = [*(v22 + 24) value];
  if (!v23)
  {
    goto LABEL_10;
  }

  v24 = v23;
  v25 = sub_1CA40F058(v23, &selRef_calendarIdentifier);
  if (!v26)
  {

LABEL_10:
    v48 = *(v22 + 48);
    v49 = *(v22 + 56);
    v50 = *(v22 + 40);
    sub_1CA61CDB0();
    OUTLINED_FUNCTION_4_0();
    v51 = swift_allocError();
    OUTLINED_FUNCTION_20_29(v51, v52);
    swift_willThrow();

    OUTLINED_FUNCTION_5();
    goto LABEL_16;
  }

  a17 = v26;
  a18 = v25;
  a16 = v24;
  v27 = sub_1CA40F058(v24, &selRef_calendarTitle);
  v29 = v28;
  sub_1CA94C438();
  if (qword_1EDB9F5F0 != -1)
  {
    OUTLINED_FUNCTION_0_3();
  }

  v30 = *(v22 + 64);
  v31 = qword_1EDB9F690;
  v32 = sub_1CA94C368();
  v33 = sub_1CA94C368();

  v34 = [v31 localizedStringForKey:v32 value:v33 table:0];

  v35 = sub_1CA94C3A8();
  v37 = v36;

  objc_opt_self();
  v38 = swift_dynamicCastObjCClass();
  if (!v38)
  {
    goto LABEL_12;
  }

  v39 = v38;
  v40 = *(v22 + 64);
  v41 = [v39 dataSource];
  if (!v41 || (v42 = v41, v43 = WFVariableSubstitutableParameterStateUpcast(*(v22 + 24)), v44 = [v42 enumeration:v39 localizedLabelForPossibleState:v43], swift_unknownObjectRelease(), v43, !v44))
  {

LABEL_12:
    if (v29)
    {

      v47 = v29;
    }

    else
    {
      v27 = v35;
      v47 = v37;
    }

    goto LABEL_15;
  }

  v45 = *(v22 + 64);
  v27 = sub_1CA94C3A8();
  v47 = v46;

LABEL_15:
  v53 = *(v22 + 56);
  a11 = *(v22 + 48);
  a12 = v53;
  v54 = *(v22 + 32);
  a10 = *(v22 + 40);
  a15 = *(v22 + 16);
  sub_1CA94A9A8();
  v55 = swift_allocBox();
  a13 = v56;
  a14 = v55;
  static TypedValueRepresentableParameterState.typeIdentifier.getter(v53);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447020, &unk_1CA98E5C0);
  v57 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447028, &qword_1CA98FA30) - 8);
  v58 = *(*v57 + 72);
  v59 = (*(*v57 + 80) + 32) & ~*(*v57 + 80);
  v60 = swift_allocObject();
  *(v60 + 16) = xmmword_1CA981310;
  v61 = v60 + v59;
  v62 = v57[14];
  strcpy((v60 + v59), "calendarTitle");
  *(v60 + v59 + 14) = -4864;
  v63 = sub_1CA94AC18();
  v64 = swift_allocBox();
  *v65 = v27;
  v65[1] = v47;
  v66 = *MEMORY[0x1E69DADF0];
  OUTLINED_FUNCTION_39(v63);
  (*(v67 + 104))();
  *(v61 + v62) = v64;
  v68 = *MEMORY[0x1E69DAE70];
  v69 = sub_1CA94AC88();
  OUTLINED_FUNCTION_52(v69);
  v71 = *(v70 + 104);
  (v71)(v61 + v62, v68, v69);
  sub_1CA94C218();
  sub_1CA94C1E8();
  sub_1CA94B2E8();
  OUTLINED_FUNCTION_46();
  __swift_storeEnumTagSinglePayload(v72, v73, v74, v75);
  OUTLINED_FUNCTION_72_0();
  sub_1CA94B338();
  sub_1CA94B458();
  OUTLINED_FUNCTION_89();
  __swift_storeEnumTagSinglePayload(v76, v77, v78, v79);
  sub_1CA94A988();

  *a15 = a14;
  v80 = *MEMORY[0x1E69DAE58];
  v71();

  OUTLINED_FUNCTION_5();
LABEL_16:
  OUTLINED_FUNCTION_202();

  return v82(v81, v82, v83, v84, v85, v86, v87, v88, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_1CA6192B8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1CA308FE0;

  return WFCalendarSubstitutableState.typedValue(with:)();
}

void static WFPodcastSubstitutableState.typeDefinition(context:)()
{
  OUTLINED_FUNCTION_37_0();
  v1 = v0;
  v77 = sub_1CA94AED8();
  v2 = OUTLINED_FUNCTION_52(v77);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_6_2();
  OUTLINED_FUNCTION_25_0();
  v5 = sub_1CA94B5D8();
  v6 = OUTLINED_FUNCTION_18_0(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_6_2();
  OUTLINED_FUNCTION_25_0();
  v9 = sub_1CA94AD08();
  v79 = OUTLINED_FUNCTION_1_0(v9);
  v80 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v79);
  OUTLINED_FUNCTION_6_0();
  v15 = (v14 - v13);
  v16 = sub_1CA94ADC8();
  v17 = OUTLINED_FUNCTION_1_0(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_6_2();
  v76 = *v1;
  sub_1CA6183A4(&qword_1EC446DB8, off_1E836EE48, &qword_1EC4476E8, &qword_1CA98FB70, v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443F18, qword_1CA982590);
  v23 = sub_1CA94B538();
  OUTLINED_FUNCTION_12(v23);
  v75 = *(v24 + 72);
  v26 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  *(swift_allocObject() + 16) = xmmword_1CA9813C0;
  v27 = swift_allocBox();
  v29 = v28;
  v30 = sub_1CA94AD98();
  v31 = swift_allocBox();
  v74 = *MEMORY[0x1E69DB060];
  OUTLINED_FUNCTION_39(v30);
  v73 = *(v32 + 104);
  v73();
  *v29 = v31;
  v78 = *MEMORY[0x1E69DB0B0];
  v71 = *(v19 + 104);
  v71(v29);
  *v15 = v27;
  v33 = *MEMORY[0x1E69DAF30];
  v70 = *(v80 + 104);
  v72 = *MEMORY[0x1E69DAF30];
  v70(v15, v33, v79);
  sub_1CA94B528();
  v34 = swift_allocBox();
  v36 = v35;
  v37 = swift_allocBox();
  (v73)(v38, v74, v30);
  *v36 = v37;
  (v71)(v36, v78, v16);
  *v15 = v34;
  v70(v15, v33, v79);
  OUTLINED_FUNCTION_16_30();
  sub_1CA94B528();
  v39 = swift_allocBox();
  v41 = v40;
  v42 = swift_allocBox();
  (v73)(v43, *MEMORY[0x1E69DB028], v30);
  *v41 = v42;
  (v71)(v41, v78, v16);
  *v15 = v39;
  v70(v15, v72, v79);
  OUTLINED_FUNCTION_40_9();
  sub_1CA94B528();
  sub_1CA94C438();
  OUTLINED_FUNCTION_69_1();
  v44 = sub_1CA94C438();
  v46 = v45;
  v47 = sub_1CA948E58();
  v48 = OUTLINED_FUNCTION_18_0(v47);
  v50 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_26_20();
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    OUTLINED_FUNCTION_0_3();
  }

  v51 = [qword_1EDB9F690 bundleURL];
  v52 = sub_1CA948BA8();
  v53 = OUTLINED_FUNCTION_18_0(v52);
  v55 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_6_0();
  v58 = v57 - v56;
  sub_1CA948B68();

  v59 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v60 = OUTLINED_FUNCTION_23();
  v62 = sub_1CA2F9F14(v60, v61, v44, v46, 0, 0, "Podcast", v58);
  v63 = [v76 localize_];

  sub_1CA94C3A8();
  OUTLINED_FUNCTION_48_8();
  OUTLINED_FUNCTION_5_44();
  sub_1CA94B5C8();
  sub_1CA61CCF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4468D0, &qword_1CA98BEE8);
  sub_1CA61CD4C();
  sub_1CA94D2A8();
  OUTLINED_FUNCTION_31_12();
  v64 = *MEMORY[0x1E69DAF98];
  v65 = sub_1CA94AD48();
  OUTLINED_FUNCTION_52(v65);
  v67 = *(v66 + 104);
  v68 = OUTLINED_FUNCTION_3_3();
  v69(v68);
  OUTLINED_FUNCTION_36();
}

void static WFPodcastSubstitutableState.parameterState(from:)()
{
  OUTLINED_FUNCTION_108();
  v116 = v0;
  v5 = v4;
  v6 = sub_1CA94AC18();
  v7 = OUTLINED_FUNCTION_1_0(v6);
  v118 = v8;
  v119 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_6_2();
  v117 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444C60, &qword_1CA9827D0);
  v13 = OUTLINED_FUNCTION_18_0(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_3_1();
  v114 = v16;
  v18 = MEMORY[0x1EEE9AC00](v17);
  v115 = &v107 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v121 = (&v107 - v20);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4468C0, &qword_1CA988C00);
  OUTLINED_FUNCTION_18_0(v21);
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_18_1();
  v25 = sub_1CA94AC88();
  v26 = OUTLINED_FUNCTION_1_0(v25);
  v28 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_3_1();
  v113 = v31;
  MEMORY[0x1EEE9AC00](v32);
  v34 = (&v107 - v33);
  v35 = sub_1CA94A9A8();
  v36 = OUTLINED_FUNCTION_1_0(v35);
  v38 = v37;
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_62();
  v41 = v5;
  v42 = v28;
  (*(v28 + 16))(v34, v41, v25);
  v43 = *(v28 + 88);
  v44 = OUTLINED_FUNCTION_18_2();
  if (v43(v44) != *MEMORY[0x1E69DAE58])
  {
    v54 = *(v42 + 8);
    v55 = OUTLINED_FUNCTION_18_2();
    v56(v55);
    sub_1CA61CDB0();
    OUTLINED_FUNCTION_4_0();
    v57 = swift_allocError();
    OUTLINED_FUNCTION_17_19(v57, v58);
LABEL_11:
    OUTLINED_FUNCTION_24_19();
    OUTLINED_FUNCTION_107();
    return;
  }

  v110 = v42;
  v45 = *(v42 + 96);
  v46 = OUTLINED_FUNCTION_18_2();
  v108 = v47;
  v109 = v42 + 96;
  v47(v46);
  v48 = *v34;
  v49 = swift_projectBox();
  v111 = v38;
  v112 = v35;
  (*(v38 + 16))(v3, v49, v35);

  sub_1CA94A978();
  v50 = sub_1CA94B458();
  OUTLINED_FUNCTION_49(v2, 1, v50);
  if (v64)
  {
    v51 = &qword_1EC4468C0;
    v52 = &qword_1CA988C00;
    v53 = v2;
LABEL_9:
    sub_1CA27080C(v53, v51, v52);
LABEL_10:
    v66 = v111;
    v65 = v112;
    sub_1CA61CDB0();
    OUTLINED_FUNCTION_4_0();
    v67 = swift_allocError();
    OUTLINED_FUNCTION_20_29(v67, v68);
    swift_willThrow();
    (*(v66 + 8))(v3, v65);
    goto LABEL_11;
  }

  v59 = sub_1CA94B378();
  v61 = v60;
  OUTLINED_FUNCTION_39(v50);
  (*(v62 + 8))(v2, v50);
  v63 = sub_1CA94A968();
  OUTLINED_FUNCTION_16_30();
  sub_1CA3118CC(v63, v121);

  OUTLINED_FUNCTION_49(v121, 1, v25);
  if (v64)
  {

    v51 = &qword_1EC444C60;
    v52 = &qword_1CA9827D0;
    v53 = v121;
    goto LABEL_9;
  }

  v69 = OUTLINED_FUNCTION_18_2();
  v70 = v43(v69);
  if (v70 != *MEMORY[0x1E69DAE70])
  {

    v89 = *(v110 + 8);
    v90 = OUTLINED_FUNCTION_18_2();
    v91(v90);
    goto LABEL_10;
  }

  v107 = v59;
  v71 = OUTLINED_FUNCTION_18_2();
  v108(v71);
  v72 = *v121;
  v73 = swift_projectBox();
  v75 = v117;
  v74 = v118;
  v76 = v119;
  (*(v118 + 16))(v117, v73, v119);
  if ((*(v74 + 88))(v75, v76) != *MEMORY[0x1E69DADF0])
  {

    (*(v74 + 8))(v75, v76);

    goto LABEL_10;
  }

  v122 = v61;
  (*(v74 + 96))(v75, v76);
  v77 = *v75;
  v117 = v75[1];
  v118 = v77;

  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444A90, &qword_1CA9827C0);
  v79 = OUTLINED_FUNCTION_18_0(v78);
  v81 = *(v80 + 64);
  MEMORY[0x1EEE9AC00](v79);
  OUTLINED_FUNCTION_37_1();
  v82 = sub_1CA94A968();
  OUTLINED_FUNCTION_40_9();
  v83 = v115;
  sub_1CA3118CC(v82, v115);

  v84 = v114;
  sub_1CA4FCCB0(v83, v114, &qword_1EC444C60, &qword_1CA9827D0);
  OUTLINED_FUNCTION_49(v84, 1, v25);
  v119 = &v107;
  if (v64)
  {
    sub_1CA27080C(v83, &qword_1EC444C60, &qword_1CA9827D0);
    sub_1CA948BA8();
    OUTLINED_FUNCTION_46();
    __swift_storeEnumTagSinglePayload(v85, v86, v87, v88);
LABEL_21:
    v97 = sub_1CA94A898();
    v99 = v98;
    MEMORY[0x1EEE9AC00](v97);
    v100 = &v107 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_1CA4FCCB0(v43, v100, &qword_1EC444A90, &qword_1CA9827C0);
    v101 = objc_allocWithZone(WFiTunesPodcastObject);
    v102 = @"podcast";
    v103 = sub_1CA61CEB0(v107, v122, v97, v99, v118, v117, v100, v102);
    [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_];

    sub_1CA27080C(v43, &qword_1EC444A90, &qword_1CA9827C0);
    (*(v111 + 8))(v3, v112);
    goto LABEL_11;
  }

  v92 = v110;
  v93 = v113;
  (*(v110 + 32))(v113, v84, v25);
  sub_1CA61A1A4(v93, v43);
  if (!v1)
  {
    v120 = 0;
    v94 = *(v92 + 8);
    v95 = OUTLINED_FUNCTION_72_0();
    v96(v95);
    sub_1CA27080C(v83, &qword_1EC444C60, &qword_1CA9827D0);
    goto LABEL_21;
  }

  v104 = *(v92 + 8);
  v105 = OUTLINED_FUNCTION_72_0();
  v106(v105);
  __break(1u);
}

uint64_t sub_1CA61A1A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1CA94AC18();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1CA94AC88();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = (v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v10 + 16))(v13, a1, v9);
  if ((*(v10 + 88))(v13, v9) != *MEMORY[0x1E69DAE70])
  {
    (*(v10 + 8))(v13, v9);
LABEL_6:
    v19 = sub_1CA948BA8();
    v17 = a2;
    v18 = 1;
    return __swift_storeEnumTagSinglePayload(v17, v18, 1, v19);
  }

  (*(v10 + 96))(v13, v9);
  v14 = *v13;
  v15 = swift_projectBox();
  (*(v5 + 16))(v8, v15, v4);
  if ((*(v5 + 88))(v8, v4) != *MEMORY[0x1E69DADB8])
  {
    (*(v5 + 8))(v8, v4);

    goto LABEL_6;
  }

  (*(v5 + 96))(v8, v4);
  v16 = sub_1CA948BA8();
  (*(*(v16 - 8) + 32))(a2, v8, v16);

  v17 = a2;
  v18 = 0;
  v19 = v16;
  return __swift_storeEnumTagSinglePayload(v17, v18, 1, v19);
}

uint64_t WFPodcastSubstitutableState.typedValue(with:)()
{
  OUTLINED_FUNCTION_0();
  v1[2] = v2;
  v1[3] = v0;
  v1[4] = swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444A70, &qword_1CA985610);
  OUTLINED_FUNCTION_18_0(v3);
  v5 = *(v4 + 64);
  v1[5] = OUTLINED_FUNCTION_45();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4468C0, &qword_1CA988C00);
  OUTLINED_FUNCTION_18_0(v6);
  v8 = *(v7 + 64);
  v1[6] = OUTLINED_FUNCTION_45();
  v9 = sub_1CA94ADC8();
  OUTLINED_FUNCTION_18_0(v9);
  v11 = *(v10 + 64);
  v1[7] = OUTLINED_FUNCTION_45();
  v12 = sub_1CA94AC88();
  v1[8] = v12;
  OUTLINED_FUNCTION_12(v12);
  v1[9] = v13;
  v15 = *(v14 + 64) + 15;
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v16 = OUTLINED_FUNCTION_85();

  return MEMORY[0x1EEE6DFA0](v16, v17, v18);
}

uint64_t sub_1CA61AC38()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1CA308C60;

  return WFPodcastSubstitutableState.typedValue(with:)();
}

void static WFTimeZonePickerParameterState.typeDefinition(context:)()
{
  OUTLINED_FUNCTION_37_0();
  v33 = OUTLINED_FUNCTION_30_18(v2);
  v3 = OUTLINED_FUNCTION_52(v33);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_6_2();
  OUTLINED_FUNCTION_25_0();
  v6 = sub_1CA94B5D8();
  v7 = OUTLINED_FUNCTION_18_0(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_18_1();
  v10 = sub_1CA94ADC8();
  v11 = OUTLINED_FUNCTION_18_0(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_62();
  v32 = *v0;
  sub_1CA6183A4(&qword_1EC4476D8, off_1E836F3C0, &qword_1EC4476E0, &qword_1CA98FB68, v1);
  sub_1CA94C438();
  sub_1CA94C438();
  v14 = sub_1CA948E58();
  v15 = OUTLINED_FUNCTION_18_0(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_6_0();
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    OUTLINED_FUNCTION_0_3();
  }

  v18 = [qword_1EDB9F690 bundleURL];
  v19 = sub_1CA948BA8();
  v20 = OUTLINED_FUNCTION_18_0(v19);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_26_20();
  sub_1CA948B68();

  v23 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v24 = OUTLINED_FUNCTION_13_34();
  v25 = [v32 localize_];

  sub_1CA94C3A8();
  OUTLINED_FUNCTION_48_8();
  OUTLINED_FUNCTION_5_44();
  sub_1CA94B5C8();
  sub_1CA61CCF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4468D0, &qword_1CA98BEE8);
  sub_1CA61CD4C();
  OUTLINED_FUNCTION_8_29();
  OUTLINED_FUNCTION_15_24();
  v26 = *MEMORY[0x1E69DAF98];
  v27 = sub_1CA94AD48();
  OUTLINED_FUNCTION_52(v27);
  v29 = *(v28 + 104);
  v30 = OUTLINED_FUNCTION_3_3();
  v31(v30);
  OUTLINED_FUNCTION_36();
}

void static WFTimeZonePickerParameterState.parameterState(from:)()
{
  OUTLINED_FUNCTION_108();
  v110 = v0;
  v111 = v1;
  v4 = v3;
  v5 = sub_1CA94AC18();
  v6 = OUTLINED_FUNCTION_1_0(v5);
  v113 = v7;
  v114 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_6_2();
  v112 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444C60, &qword_1CA9827D0);
  OUTLINED_FUNCTION_18_0(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v14);
  v115 = (&v99 - v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4468C0, &qword_1CA988C00);
  OUTLINED_FUNCTION_18_0(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_62();
  v20 = sub_1CA94AC88();
  v21 = OUTLINED_FUNCTION_1_0(v20);
  v23 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_6_0();
  v28 = (v27 - v26);
  v29 = sub_1CA94A9A8();
  v30 = OUTLINED_FUNCTION_1_0(v29);
  v32 = v31;
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_6_0();
  v37 = v36 - v35;
  (*(v23 + 16))(v28, v4, v20);
  v38 = *(v23 + 88);
  v39 = OUTLINED_FUNCTION_4_37();
  if (v38(v39) == *MEMORY[0x1E69DAE58])
  {
    v40 = *(v23 + 96);
    v41 = OUTLINED_FUNCTION_4_37();
    v102 = v42;
    v103 = v38;
    v101 = v43;
    v43(v41);
    v44 = *v28;
    v45 = swift_projectBox();
    v108 = v32;
    v109 = v29;
    (*(v32 + 16))(v37, v45, v29);

    sub_1CA94A978();
    v46 = sub_1CA94B458();
    OUTLINED_FUNCTION_49(v2, 1, v46);
    v47 = v37;
    if (v68)
    {
      sub_1CA27080C(v2, &qword_1EC4468C0, &qword_1CA988C00);
      v100 = sub_1CA94A898();
      v106 = v48;
    }

    else
    {
      v100 = sub_1CA94B378();
      v106 = v54;
      OUTLINED_FUNCTION_39(v46);
      (*(v55 + 8))(v2, v46);
    }

    v56 = sub_1CA949248();
    v107 = &v99;
    v57 = OUTLINED_FUNCTION_1_0(v56);
    v104 = v58;
    v60 = *(v59 + 64);
    MEMORY[0x1EEE9AC00](v57);
    v99 = v61;
    v62 = &v99 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
    v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4476C8, &qword_1CA98FA40);
    OUTLINED_FUNCTION_18_0(v63);
    v65 = *(v64 + 64);
    OUTLINED_FUNCTION_29();
    MEMORY[0x1EEE9AC00](v66);
    OUTLINED_FUNCTION_37_1();
    sub_1CA94A898();
    sub_1CA949208();

    OUTLINED_FUNCTION_49(v46, 1, v56);
    v105 = v47;
    if (v68)
    {

      sub_1CA27080C(v46, &qword_1EC4476C8, &qword_1CA98FA40);
    }

    else
    {
      (*(v104 + 32))(v62, v46, v56);
      v67 = sub_1CA94A968();
      sub_1CA3118CC(v67, v115);

      OUTLINED_FUNCTION_49(v115, 1, v20);
      if (v68)
      {
        v69 = *(v104 + 8);
        v70 = OUTLINED_FUNCTION_121();
        v71(v70);

        sub_1CA27080C(v115, &qword_1EC444C60, &qword_1CA9827D0);
      }

      else
      {
        v72 = v104;
        if (v103(v115, v20) == *MEMORY[0x1E69DAE70])
        {
          v101(v115, v20);
          v73 = *v115;
          v74 = swift_projectBox();
          v76 = v112;
          v75 = v113;
          v77 = v114;
          (*(v113 + 16))(v112, v74, v114);
          v78 = (*(v75 + 88))(v76, v77);
          v79 = v108;
          if (v78 == *MEMORY[0x1E69DADB0])
          {
            (*(v75 + 96))(v76, v77);
            v80 = *v76;

            MEMORY[0x1EEE9AC00](v81);
            v83 = &v99 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0);
            (*(v72 + 16))(v83, v62, v56);
            v84 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
            v85 = objc_allocWithZone(WFTimeZoneDescriptor);
            v86 = sub_1CA61CFF8(v83, v100, v106, v84);
            [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_];

            v87 = *(v72 + 8);
            v88 = OUTLINED_FUNCTION_121();
            v89(v88);
            (*(v79 + 8))(v105, v109);
            goto LABEL_18;
          }

          v96 = *(v72 + 8);
          v97 = OUTLINED_FUNCTION_121();
          v98(v97);

          (*(v75 + 8))(v76, v77);

          v93 = v109;
LABEL_17:
          sub_1CA61CDB0();
          OUTLINED_FUNCTION_4_0();
          v94 = swift_allocError();
          OUTLINED_FUNCTION_20_29(v94, v95);
          swift_willThrow();
          (*(v79 + 8))(v105, v93);
          goto LABEL_18;
        }

        v90 = *(v72 + 8);
        v91 = OUTLINED_FUNCTION_121();
        v92(v91);

        (*(v23 + 8))(v115, v20);
      }
    }

    v79 = v108;
    v93 = v109;
    goto LABEL_17;
  }

  v49 = *(v23 + 8);
  v50 = OUTLINED_FUNCTION_4_37();
  v51(v50);
  sub_1CA61CDB0();
  OUTLINED_FUNCTION_4_0();
  v52 = swift_allocError();
  OUTLINED_FUNCTION_17_19(v52, v53);
LABEL_18:
  OUTLINED_FUNCTION_24_19();
  OUTLINED_FUNCTION_107();
}

uint64_t WFTimeZonePickerParameterState.typedValue(with:)()
{
  OUTLINED_FUNCTION_0();
  v1[2] = v2;
  v1[3] = v0;
  v1[4] = swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444A70, &qword_1CA985610);
  OUTLINED_FUNCTION_18_0(v3);
  v5 = *(v4 + 64);
  v1[5] = OUTLINED_FUNCTION_45();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4468C0, &qword_1CA988C00);
  OUTLINED_FUNCTION_18_0(v6);
  v8 = *(v7 + 64);
  v1[6] = OUTLINED_FUNCTION_45();
  v9 = sub_1CA94ADC8();
  OUTLINED_FUNCTION_18_0(v9);
  v11 = *(v10 + 64);
  v1[7] = OUTLINED_FUNCTION_45();
  v12 = OUTLINED_FUNCTION_85();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_1CA61B814(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_43_12();
  v23 = [*(v22 + 24) value];
  if (v23)
  {
    v24 = v23;
    v25 = *(v22 + 56);
    a14 = *(v22 + 48);
    a15 = v25;
    v26 = *(v22 + 32);
    a13 = *(v22 + 40);
    a18 = *(v22 + 16);
    sub_1CA94A9A8();
    v27 = swift_allocBox();
    a16 = v28;
    a17 = v27;
    static TypedValueRepresentableParameterState.typeIdentifier.getter(v25);
    v29 = [v24 timeZone];
    v30 = sub_1CA949248();
    OUTLINED_FUNCTION_1_0(v30);
    v32 = v31;
    v34 = *(v33 + 64);
    a12 = OUTLINED_FUNCTION_45();
    sub_1CA949238();

    v35 = sub_1CA949218();
    a10 = v36;
    a11 = v35;
    (*(v32 + 8))(a12, v30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447020, &unk_1CA98E5C0);
    v37 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC447028, &qword_1CA98FA30) - 8);
    v38 = *(*v37 + 72);
    v39 = (*(*v37 + 80) + 32) & ~*(*v37 + 80);
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_1CA981310;
    v41 = (v40 + v39);
    v42 = v37[14];
    *v41 = 0xD000000000000010;
    v41[1] = 0x80000001CA9D6010;
    v43 = sub_1CA94AC18();
    v44 = swift_allocBox();
    v46 = v45;
    v47 = [v24 alCityIdentifier];
    v48 = [v47 integerValue];

    *v46 = v48;
    v49 = *MEMORY[0x1E69DADB0];
    OUTLINED_FUNCTION_39(v43);
    (*(v50 + 104))(v46);
    *(v41 + v42) = v44;
    v51 = *MEMORY[0x1E69DAE70];
    v52 = sub_1CA94AC88();
    OUTLINED_FUNCTION_52(v52);
    v54 = *(v53 + 104);
    (v54)(v41 + v42, v51, v52);
    sub_1CA94C1E8();
    v55 = [v24 localizedCityName];
    sub_1CA94C3A8();

    sub_1CA94B2E8();
    OUTLINED_FUNCTION_46();
    __swift_storeEnumTagSinglePayload(v56, v57, v58, v59);
    sub_1CA94B338();
    sub_1CA94B458();
    OUTLINED_FUNCTION_89();
    __swift_storeEnumTagSinglePayload(v60, v61, v62, v63);
    sub_1CA94A988();

    *a18 = a17;
    v64 = *MEMORY[0x1E69DAE58];
    v54();
  }

  else
  {
    v65 = *(v22 + 48);
    v66 = *(v22 + 56);
    v67 = *(v22 + 40);
    sub_1CA61CDB0();
    OUTLINED_FUNCTION_4_0();
    v68 = swift_allocError();
    OUTLINED_FUNCTION_20_29(v68, v69);
    swift_willThrow();
  }

  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_202();

  return v71(v70, v71, v72, v73, v74, v75, v76, v77, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_1CA61BC80()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1CA308FE0;

  return WFTimeZonePickerParameterState.typedValue(with:)();
}

void static WFAppDescriptorParameterState.typeDefinition(context:)()
{
  OUTLINED_FUNCTION_37_0();
  v33 = OUTLINED_FUNCTION_30_18(v2);
  v3 = OUTLINED_FUNCTION_52(v33);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_6_2();
  OUTLINED_FUNCTION_25_0();
  v6 = sub_1CA94B5D8();
  v7 = OUTLINED_FUNCTION_18_0(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_18_1();
  v10 = sub_1CA94ADC8();
  v11 = OUTLINED_FUNCTION_18_0(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_62();
  v32 = *v0;
  sub_1CA6183A4(&qword_1EC446DE0, off_1E836DE00, &qword_1EC4476D0, &qword_1CA98FB60, v1);
  sub_1CA94C438();
  sub_1CA94C438();
  v14 = sub_1CA948E58();
  v15 = OUTLINED_FUNCTION_18_0(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_6_0();
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    OUTLINED_FUNCTION_0_3();
  }

  v18 = [qword_1EDB9F690 bundleURL];
  v19 = sub_1CA948BA8();
  v20 = OUTLINED_FUNCTION_18_0(v19);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_26_20();
  sub_1CA948B68();

  v23 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v24 = OUTLINED_FUNCTION_13_34();
  v25 = [v32 localize_];

  sub_1CA94C3A8();
  OUTLINED_FUNCTION_48_8();
  OUTLINED_FUNCTION_5_44();
  sub_1CA94B5C8();
  sub_1CA61CCF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4468D0, &qword_1CA98BEE8);
  sub_1CA61CD4C();
  OUTLINED_FUNCTION_8_29();
  OUTLINED_FUNCTION_15_24();
  v26 = *MEMORY[0x1E69DAF98];
  v27 = sub_1CA94AD48();
  OUTLINED_FUNCTION_52(v27);
  v29 = *(v28 + 104);
  v30 = OUTLINED_FUNCTION_3_3();
  v31(v30);
  OUTLINED_FUNCTION_36();
}

void static WFAppDescriptorParameterState.parameterState(from:)()
{
  OUTLINED_FUNCTION_108();
  v83 = v0;
  v2 = v1;
  v3 = sub_1CA94AC18();
  v4 = OUTLINED_FUNCTION_1_0(v3);
  v80 = v5;
  v81 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_6_2();
  v79 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444C60, &qword_1CA9827D0);
  OUTLINED_FUNCTION_18_0(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v72 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4468C0, &qword_1CA988C00);
  OUTLINED_FUNCTION_18_0(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v72 - v19;
  v21 = sub_1CA94AC88();
  v22 = OUTLINED_FUNCTION_1_0(v21);
  v24 = v23;
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_6_0();
  v29 = (v28 - v27);
  v30 = sub_1CA94A9A8();
  v31 = OUTLINED_FUNCTION_1_0(v30);
  v33 = v32;
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_6_0();
  v38 = v37 - v36;
  (*(v24 + 16))(v29, v2, v21);
  v82 = *(v24 + 88);
  if (v82(v29, v21) != *MEMORY[0x1E69DAE58])
  {
    (*(v24 + 8))(v29, v21);
    sub_1CA61CDB0();
    OUTLINED_FUNCTION_4_0();
    swift_allocError();
    *v44 = 1;
    swift_willThrow();
    goto LABEL_18;
  }

  v73 = *(v24 + 96);
  v74 = v24 + 96;
  v73(v29, v21);
  v39 = *v29;
  v40 = swift_projectBox();
  v77 = v33;
  v78 = v30;
  (*(v33 + 16))(v38, v40, v30);

  sub_1CA94A978();
  v41 = sub_1CA94B458();
  OUTLINED_FUNCTION_49(v20, 1, v41);
  v42 = v38;
  if (v43)
  {
    sub_1CA27080C(v20, &qword_1EC4468C0, &qword_1CA988C00);
    v75 = 0;
    v76 = 0;
  }

  else
  {
    v45 = sub_1CA94B378();
    v75 = v46;
    v76 = v45;
    OUTLINED_FUNCTION_39(v41);
    (*(v47 + 8))(v20, v41);
  }

  v48 = sub_1CA94A968();
  sub_1CA3118CC(v48, v14);

  OUTLINED_FUNCTION_49(v14, 1, v21);
  if (v43)
  {
    sub_1CA27080C(v14, &qword_1EC444C60, &qword_1CA9827D0);
LABEL_14:
    v53 = 0;
    v54 = 0;
    goto LABEL_15;
  }

  if (v82(v14, v21) != *MEMORY[0x1E69DAE70])
  {
    (*(v24 + 8))(v14, v21);
    goto LABEL_14;
  }

  v73(v14, v21);
  v48 = *v14;
  v49 = swift_projectBox();
  v51 = v79;
  v50 = v80;
  v52 = v81;
  (*(v80 + 16))(v79, v49, v81);
  if ((*(v50 + 88))(v51, v52) != *MEMORY[0x1E69DADF0])
  {
    (*(v50 + 8))(v51, v52);

    goto LABEL_14;
  }

  (*(v50 + 96))(v51, v52);
  v53 = *v51;
  v54 = v51[1];

LABEL_15:
  v55 = v77;
  v56 = v42;
  sub_1CA94A898();
  OUTLINED_FUNCTION_69_1();
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444A90, &qword_1CA9827C0);
  OUTLINED_FUNCTION_18_0(v57);
  v59 = *(v58 + 64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v60);
  v61 = v42;
  v63 = &v72 - v62;
  sub_1CA948BA8();
  OUTLINED_FUNCTION_46();
  __swift_storeEnumTagSinglePayload(v64, v65, v66, v67);
  v68 = objc_allocWithZone(MEMORY[0x1E696E720]);
  v69 = sub_1CA61D0C0(v76, v75, v48, v56, v53, v54, 0, 0, 0, 0, v63, 0);
  v70 = [objc_opt_self() sharedResolver];
  v71 = [v70 resolvedAppMatchingDescriptor_];

  if (!v71)
  {
    v71 = v69;
  }

  [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_];

  (*(v55 + 8))(v61, v78);
LABEL_18:
  OUTLINED_FUNCTION_107();
}

uint64_t WFAppDescriptorParameterState.typedValue(with:)()
{
  OUTLINED_FUNCTION_0();
  v1[2] = v2;
  v1[3] = v0;
  v1[4] = swift_getObjectType();
  v3 = sub_1CA94ADC8();
  OUTLINED_FUNCTION_18_0(v3);
  v5 = *(v4 + 64);
  v1[5] = OUTLINED_FUNCTION_45();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444A70, &qword_1CA985610);
  OUTLINED_FUNCTION_18_0(v6);
  v8 = *(v7 + 64);
  v1[6] = OUTLINED_FUNCTION_45();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444A78, &qword_1CA985618);
  OUTLINED_FUNCTION_18_0(v9);
  v11 = *(v10 + 64);
  v1[7] = OUTLINED_FUNCTION_45();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4468C0, &qword_1CA988C00);
  OUTLINED_FUNCTION_18_0(v12);
  v14 = *(v13 + 64) + 15;
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v15 = sub_1CA94AC88();
  v1[10] = v15;
  OUTLINED_FUNCTION_12(v15);
  v1[11] = v16;
  v18 = *(v17 + 64) + 15;
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v19 = OUTLINED_FUNCTION_85();

  return MEMORY[0x1EEE6DFA0](v19, v20, v21);
}

uint64_t sub_1CA61C784()
{
  v1 = [*(v0 + 24) value];
  if (v1)
  {
    v2 = v1;
    sub_1CA40F058(v1, &selRef_bundleIdentifier);
    if (v3)
    {
      v4 = *(v0 + 80);
      sub_1CA94C1E8();
      v5 = sub_1CA40F058(v2, &selRef_extensionBundleIdentifier);
      v69 = v2;
      if (v6)
      {
        v7 = v5;
        v8 = v6;
        v10 = *(v0 + 96);
        v9 = *(v0 + 104);
        v12 = *(v0 + 80);
        v11 = *(v0 + 88);
        v13 = sub_1CA94AC18();
        v14 = swift_allocBox();
        *v15 = v7;
        v15[1] = v8;
        v16 = *MEMORY[0x1E69DADF0];
        OUTLINED_FUNCTION_39(v13);
        (*(v17 + 104))();
        *v9 = v14;
        (*(v11 + 104))(v9, *MEMORY[0x1E69DAE70], v12);
        (*(v11 + 32))(v10, v9, v12);
        v2 = v69;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        sub_1CA322244(v10, 0xD000000000000019, 0x80000001CA9D6030, isUniquelyReferenced_nonNull_native, v19, v20, v21, v22, v62, v63);
      }

      sub_1CA40F058(v2, &selRef_localizedName);
      if (v23)
      {
        v24 = objc_opt_self();
        v25 = sub_1CA94C368();
        v26 = [v24 applicationIconImageForBundleIdentifier_];

        if (v26)
        {
          v27 = sub_1CA3A4EE8(v26);
          if (v28 >> 60 != 15)
          {
            v49 = *(v0 + 72);
            v51 = *(v0 + 48);
            v50 = *(v0 + 56);
            *v50 = v27;
            v50[1] = v28;
            v52 = *MEMORY[0x1E69DB380];
            v53 = sub_1CA94B318();
            OUTLINED_FUNCTION_52(v53);
            (*(v54 + 104))(v50, v52, v53);
            OUTLINED_FUNCTION_89();
            __swift_storeEnumTagSinglePayload(v55, v56, v57, v53);
            sub_1CA94B2E8();
            OUTLINED_FUNCTION_46();
            __swift_storeEnumTagSinglePayload(v58, v59, v60, v61);
            sub_1CA94B358();
            v29 = 0;
            goto LABEL_10;
          }
        }
      }

      v29 = 1;
LABEL_10:
      v65 = *(v0 + 104);
      v66 = *(v0 + 96);
      v30 = *(v0 + 88);
      v64 = *(v0 + 80);
      v32 = *(v0 + 64);
      v31 = *(v0 + 72);
      v67 = *(v0 + 56);
      v68 = *(v0 + 48);
      v33 = *(v0 + 32);
      v34 = *(v0 + 40);
      v35 = *(v0 + 16);
      v36 = sub_1CA94B458();
      __swift_storeEnumTagSinglePayload(v31, v29, 1, v36);
      sub_1CA94A9A8();
      v37 = swift_allocBox();
      static TypedValueRepresentableParameterState.typeIdentifier.getter(v34);
      sub_1CA4FCCB0(v31, v32, &qword_1EC4468C0, &qword_1CA988C00);
      sub_1CA94A988();

      sub_1CA27080C(v31, &qword_1EC4468C0, &qword_1CA988C00);
      *v35 = v37;
      (*(v30 + 104))(v35, *MEMORY[0x1E69DAE58], v64);

      OUTLINED_FUNCTION_5();
      goto LABEL_13;
    }
  }

  v39 = *(v0 + 96);
  v40 = *(v0 + 104);
  v42 = *(v0 + 64);
  v41 = *(v0 + 72);
  v44 = *(v0 + 48);
  v43 = *(v0 + 56);
  v45 = *(v0 + 40);
  sub_1CA61CDB0();
  OUTLINED_FUNCTION_4_0();
  v46 = swift_allocError();
  OUTLINED_FUNCTION_20_29(v46, v47);
  swift_willThrow();

  OUTLINED_FUNCTION_5();
LABEL_13:

  return v38();
}

uint64_t sub_1CA61CC5C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1CA308FE0;

  return WFAppDescriptorParameterState.typedValue(with:)();
}

unint64_t sub_1CA61CCF4()
{
  result = qword_1EC4468C8;
  if (!qword_1EC4468C8)
  {
    sub_1CA94AED8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4468C8);
  }

  return result;
}

unint64_t sub_1CA61CD4C()
{
  result = qword_1EC4468D8;
  if (!qword_1EC4468D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4468D0, &qword_1CA98BEE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4468D8);
  }

  return result;
}

unint64_t sub_1CA61CDB0()
{
  result = qword_1EC4476C0;
  if (!qword_1EC4476C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4476C0);
  }

  return result;
}

id sub_1CA61CE04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (!a2)
  {
    v8 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v9 = 0;
    goto LABEL_6;
  }

  v8 = sub_1CA94C368();

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v9 = sub_1CA94C368();

LABEL_6:
  v10 = [v5 initWithCalendarTitle:v8 identifier:v9 RGBAValue:a5];

  return v10;
}

id sub_1CA61CEB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v9 = v8;
  v13 = sub_1CA94C368();

  v14 = sub_1CA94C368();

  if (a6)
  {
    v15 = sub_1CA94C368();
  }

  else
  {
    v15 = 0;
  }

  v16 = sub_1CA948BA8();
  v17 = 0;
  if (__swift_getEnumTagSinglePayload(a7, 1, v16) != 1)
  {
    v17 = sub_1CA948B48();
    (*(*(v16 - 8) + 8))(a7, v16);
  }

  v18 = [v9 initWithName:v13 identifier:v14 podcastUUID:v15 feedURL:v17 kind:a8];

  return v18;
}

id sub_1CA61CFF8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v8 = sub_1CA949228();
  v9 = sub_1CA94C368();

  v10 = [v5 initWithTimeZone:v8 localizedCityName:v9 alCityIdentifier:a4];

  v11 = sub_1CA949248();
  (*(*(v11 - 8) + 8))(a1, v11);
  return v10;
}

id sub_1CA61D0C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a2)
  {
    v15 = sub_1CA94C368();

    if (a4)
    {
      goto LABEL_3;
    }

LABEL_6:
    v16 = 0;
    if (a6)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v15 = 0;
  if (!a4)
  {
    goto LABEL_6;
  }

LABEL_3:
  v16 = sub_1CA94C368();

  if (a6)
  {
LABEL_4:
    v17 = sub_1CA94C368();

    goto LABEL_8;
  }

LABEL_7:
  v17 = 0;
LABEL_8:
  if (a7)
  {
    v18 = sub_1CA94C8E8();
  }

  else
  {
    v18 = 0;
  }

  if (a9)
  {
    v19 = sub_1CA94C368();

    if (a10)
    {
LABEL_13:
      v20 = sub_1CA94C8E8();

      goto LABEL_16;
    }
  }

  else
  {
    v19 = 0;
    if (a10)
    {
      goto LABEL_13;
    }
  }

  v20 = 0;
LABEL_16:
  v21 = sub_1CA948BA8();
  v22 = 0;
  if (__swift_getEnumTagSinglePayload(a11, 1, v21) != 1)
  {
    v22 = sub_1CA948B48();
    (*(*(v21 - 8) + 8))(a11, v21);
  }

  if (a12)
  {
    v23 = sub_1CA94C8E8();
  }

  else
  {
    v23 = 0;
  }

  v24 = [v26 initWithLocalizedName:v15 bundleIdentifier:v16 extensionBundleIdentifier:v17 counterpartIdentifiers:v18 teamIdentifier:v19 supportedIntents:v20 bundleURL:v22 documentTypes:v23];

  return v24;
}

uint64_t sub_1CA61D30C(void *a1)
{
  v2 = [a1 name];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1CA94C3A8();

  return v3;
}

id sub_1CA61D3B0()
{
  sub_1CA2ECC0C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981370;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD00000000000001ALL;
  *(inited + 48) = 0x80000001CA99DB90;
  *(inited + 64) = v1;
  *(inited + 72) = @"AppDefinition";
  v2 = @"ActionClass";
  v3 = @"AppDefinition";
  v4 = sub_1CA94C1E8();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 80) = v4;
  *(inited + 104) = v5;
  *(inited + 112) = @"IconName";
  *(inited + 144) = v1;
  *(inited + 120) = 0xD000000000000017;
  *(inited + 128) = 0x80000001CA9D60A0;
  v6 = @"IconName";
  *(inited + 152) = sub_1CA94C368();
  *(inited + 160) = 0xD000000000000014;
  *(inited + 168) = 0x80000001CA9D60C0;
  *(inited + 184) = v1;
  *(inited + 192) = @"Output";
  v7 = @"Output";
  v8 = sub_1CA94C1E8();
  *(inited + 224) = v5;
  *(inited + 200) = v8;
  type metadata accessor for Key(0);
  sub_1CA2ECC50();
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA61D5D8()
{
  v119 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981450;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000017;
  *(inited + 48) = 0x80000001CA9A9740;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438();
  v6 = v5;
  v7 = sub_1CA94C438();
  v9 = v8;
  v10 = sub_1CA948E58();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v125 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v126 = v12;
  v13 = &v115 - v125;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v123 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v124 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v122 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v115 - v122;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v121 = v20;
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"AppDefinition";
  v21 = @"AppDefinition";
  v22 = sub_1CA94C1E8();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 120) = v22;
  *(inited + 144) = v23;
  *(inited + 152) = @"Description";
  v120 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v24 = swift_initStackObject();
  *(v24 + 16) = xmmword_1CA981310;
  *(v24 + 32) = @"DescriptionSummary";
  v25 = @"Description";
  v26 = @"DescriptionSummary";
  v27 = sub_1CA94C438();
  v117 = v28;
  v29 = sub_1CA94C438();
  v31 = v30;
  v118 = &v115;
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v115 - v125;
  sub_1CA948D98();
  v33 = [v123 bundleURL];
  MEMORY[0x1EEE9AC00](v33);
  v34 = &v115 - v122;
  sub_1CA948B68();

  v35 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v36 = sub_1CA2F9F14(v27, v117, v29, v31, 0, 0, v32, v34);
  *(v24 + 64) = v121;
  *(v24 + 40) = v36;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v37 = v120;
  *(inited + 160) = sub_1CA6B3784();
  *(inited + 184) = v37;
  *(inited + 192) = @"DisabledOnPlatforms";
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  v120 = v38;
  *(inited + 200) = &unk_1F4A09868;
  *(inited + 224) = v38;
  *(inited + 232) = @"LocallyProcessesData";
  v39 = MEMORY[0x1E69E6370];
  *(inited + 240) = 1;
  *(inited + 264) = v39;
  *(inited + 272) = @"Name";
  v40 = @"DisabledOnPlatforms";
  v41 = @"LocallyProcessesData";
  v42 = @"Name";
  v43 = sub_1CA94C438();
  v116 = v44;
  v117 = v43;
  v45 = sub_1CA94C438();
  v47 = v46;
  v118 = &v115;
  MEMORY[0x1EEE9AC00](v45);
  v48 = &v115 - v125;
  sub_1CA948D98();
  v49 = v123;
  v50 = [v123 bundleURL];
  MEMORY[0x1EEE9AC00](v50);
  v51 = v122;
  sub_1CA948B68();

  v52 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 280) = sub_1CA2F9F14(v117, v116, v45, v47, 0, 0, v48, &v115 - v51);
  v53 = v121;
  *(inited + 304) = v121;
  *(inited + 312) = @"Output";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v54 = swift_initStackObject();
  *(v54 + 16) = xmmword_1CA9813C0;
  *(v54 + 32) = 0x656C7069746C754DLL;
  *(v54 + 40) = 0xE800000000000000;
  *(v54 + 48) = 1;
  *(v54 + 72) = MEMORY[0x1E69E6370];
  *(v54 + 80) = 0x614E74757074754FLL;
  *(v54 + 88) = 0xEA0000000000656DLL;
  v55 = @"Output";
  v56 = sub_1CA94C438();
  v116 = v57;
  v117 = v56;
  v58 = sub_1CA94C438();
  v115 = v59;
  v118 = &v115;
  MEMORY[0x1EEE9AC00](v58);
  v60 = &v115 - v125;
  sub_1CA948D98();
  v61 = [v49 bundleURL];
  MEMORY[0x1EEE9AC00](v61);
  sub_1CA948B68();

  v62 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v54 + 96) = sub_1CA2F9F14(v117, v116, v58, v115, 0, 0, v60, &v115 - v51);
  *(v54 + 120) = v53;
  *(v54 + 128) = 0x7365707954;
  *(v54 + 168) = v120;
  *(v54 + 136) = 0xE500000000000000;
  *(v54 + 144) = &unk_1F4A09898;
  v63 = MEMORY[0x1E69E6158];
  v64 = sub_1CA94C1E8();
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  *(inited + 320) = v64;
  *(inited + 344) = v65;
  *(inited + 352) = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v118 = swift_allocObject();
  *(v118 + 1) = xmmword_1CA9813B0;
  v117 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v66 = swift_allocObject();
  *(v66 + 16) = xmmword_1CA981370;
  *(v66 + 32) = @"Class";
  *(v66 + 40) = 0xD000000000000012;
  *(v66 + 48) = 0x80000001CA99B980;
  *(v66 + 64) = v63;
  *(v66 + 72) = @"DefaultValue";
  v67 = MEMORY[0x1E69E6530];
  *(v66 + 80) = 1;
  *(v66 + 104) = v67;
  *(v66 + 112) = @"Key";
  *(v66 + 120) = 0xD000000000000015;
  *(v66 + 128) = 0x80000001CA9A9870;
  *(v66 + 144) = v63;
  *(v66 + 152) = @"StepperDescription";
  v68 = @"Parameters";
  v69 = @"Class";
  v70 = @"DefaultValue";
  v71 = @"Key";
  v72 = @"StepperDescription";
  v73 = sub_1CA94C438();
  v115 = v74;
  v75 = sub_1CA94C438();
  v77 = v76;
  v116 = &v115;
  MEMORY[0x1EEE9AC00](v75);
  v78 = &v115 - v125;
  sub_1CA948D98();
  v79 = [v123 bundleURL];
  MEMORY[0x1EEE9AC00](v79);
  v80 = &v115 - v122;
  sub_1CA948B68();

  v81 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v66 + 160) = sub_1CA2F9F14(v73, v115, v75, v77, 0, 0, v78, v80);
  *(v66 + 184) = v121;
  *(v66 + 192) = @"StepperNoun";
  v82 = @"StepperNoun";
  v83 = sub_1CA94C438();
  v115 = v84;
  v116 = v83;
  v85 = v84;
  v131 = 0;
  v132 = 0xE000000000000000;
  sub_1CA94D408();

  v131 = v83;
  v132 = v85;
  v129 = 10;
  v130 = 0xE100000000000000;
  v127 = 32;
  v128 = 0xE100000000000000;
  sub_1CA27BAF0();
  v131 = sub_1CA94D1B8();
  v132 = v86;
  v87 = MEMORY[0x1CCAA1300](0xD000000000000010, 0x80000001CA99BA10);
  v88 = v131;
  v89 = v132;
  MEMORY[0x1EEE9AC00](v87);
  v90 = &v115 - v125;
  sub_1CA948D98();
  v91 = [v123 bundleURL];
  MEMORY[0x1EEE9AC00](v91);
  v92 = &v115 - v122;
  sub_1CA948B68();

  v93 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v94 = sub_1CA2F9F14(v88, v89, v116, v115, 0, 0, v90, v92);
  *(v66 + 224) = v121;
  *(v66 + 200) = v94;
  _s3__C3KeyVMa_0(0);
  sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  v95 = sub_1CA2F864C();
  v96 = v118;
  v118[4] = v95;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  *(inited + 360) = v96;
  *(inited + 384) = v97;
  *(inited + 392) = @"ParameterSummary";
  v98 = @"ParameterSummary";
  v99 = sub_1CA94C438();
  v101 = v100;
  v102 = sub_1CA94C438();
  v104 = v103;
  v121 = &v115;
  MEMORY[0x1EEE9AC00](v102);
  v105 = &v115 - v125;
  sub_1CA948D98();
  v106 = [v123 bundleURL];
  MEMORY[0x1EEE9AC00](v106);
  v107 = &v115 - v122;
  sub_1CA948B68();

  v108 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v109 = sub_1CA2F9F14(v99, v101, v102, v104, 0, 0, v105, v107);
  v110 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v111 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  *(inited + 400) = v110;
  *(inited + 424) = v111;
  *(inited + 432) = @"RequiredResources";
  *(inited + 464) = v120;
  *(inited + 440) = &unk_1F4A098C8;
  v112 = @"RequiredResources";
  v113 = sub_1CA94C368();
  *(inited + 504) = MEMORY[0x1E69E6158];
  *(inited + 472) = v113;
  *(inited + 480) = 0x6F65646956;
  *(inited + 488) = 0xE500000000000000;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA61E4B0()
{
  v66 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813E0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000017;
  *(inited + 48) = 0x80000001CA9D6260;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438();
  v6 = v5;
  v7 = sub_1CA94C438();
  v9 = v8;
  v10 = sub_1CA948E58();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v71 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v72 = v12;
  v13 = &v60 - v71;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v70 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v68 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v69 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v60 - v69;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v67 = v20;
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"AppDefinition";
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v21 = swift_initStackObject();
  *(v21 + 16) = xmmword_1CA981350;
  v22 = MEMORY[0x1E69E6370];
  *(v21 + 32) = 0xD00000000000001DLL;
  *(v21 + 40) = 0x80000001CA99DA80;
  *(v21 + 48) = 1;
  *(v21 + 72) = v22;
  *(v21 + 80) = 0xD000000000000010;
  *(v21 + 88) = 0x80000001CA993290;
  *(v21 + 96) = 0xD000000000000016;
  *(v21 + 104) = 0x80000001CA9D62B0;
  v23 = MEMORY[0x1E69E6158];
  *(v21 + 120) = MEMORY[0x1E69E6158];
  *(v21 + 128) = 1701667150;
  *(v21 + 136) = 0xE400000000000000;
  *(v21 + 144) = 0x65676E657373654DLL;
  *(v21 + 152) = 0xE900000000000072;
  *(v21 + 168) = v23;
  strcpy((v21 + 176), "TeamIdentifier");
  *(v21 + 216) = v23;
  *(v21 + 191) = -18;
  *(v21 + 192) = 0x4642505454573956;
  *(v21 + 200) = 0xEA0000000000394BLL;
  v24 = @"AppDefinition";
  v25 = sub_1CA94C1E8();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v64 = v26;
  *(inited + 120) = v25;
  *(inited + 144) = v26;
  *(inited + 152) = @"Description";
  v63 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v27 = swift_initStackObject();
  *(v27 + 16) = xmmword_1CA981310;
  *(v27 + 32) = @"DescriptionSummary";
  v28 = @"Description";
  v29 = @"DescriptionSummary";
  v30 = sub_1CA94C438();
  v61 = v31;
  v32 = sub_1CA94C438();
  v34 = v33;
  v62 = &v60;
  MEMORY[0x1EEE9AC00](v32);
  v35 = &v60 - v71;
  sub_1CA948D98();
  v36 = [v70 bundleURL];
  MEMORY[0x1EEE9AC00](v36);
  v37 = &v60 - v69;
  sub_1CA948B68();

  v38 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v39 = sub_1CA2F9F14(v30, v61, v32, v34, 0, 0, v35, v37);
  *(v27 + 64) = v67;
  *(v27 + 40) = v39;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29EBDC(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v40 = v63;
  *(inited + 160) = sub_1CA6B3784();
  *(inited + 184) = v40;
  *(inited + 192) = @"Input";
  v41 = swift_initStackObject();
  *(v41 + 16) = xmmword_1CA9813C0;
  *(v41 + 32) = 0x656C7069746C754DLL;
  *(v41 + 40) = 0xE800000000000000;
  *(v41 + 48) = 0;
  v42 = MEMORY[0x1E69E6370];
  *(v41 + 72) = MEMORY[0x1E69E6370];
  *(v41 + 80) = 0x6465726975716552;
  *(v41 + 88) = 0xE800000000000000;
  *(v41 + 96) = 1;
  *(v41 + 120) = v42;
  *(v41 + 128) = 0x7365707954;
  v43 = v42;
  *(v41 + 136) = 0xE500000000000000;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v41 + 168) = v44;
  *(v41 + 144) = &unk_1F4A098F8;
  v45 = @"Input";
  *(inited + 200) = sub_1CA94C1E8();
  *(inited + 224) = v64;
  *(inited + 232) = @"InputPassthrough";
  *(inited + 240) = 1;
  *(inited + 264) = v43;
  *(inited + 272) = @"Name";
  v46 = @"InputPassthrough";
  v47 = @"Name";
  v48 = sub_1CA94C438();
  v64 = v49;
  v50 = sub_1CA94C438();
  v52 = v51;
  v65 = &v60;
  MEMORY[0x1EEE9AC00](v50);
  v53 = &v60 - v71;
  sub_1CA948D98();
  v54 = [v70 bundleURL];
  MEMORY[0x1EEE9AC00](v54);
  v55 = &v60 - v69;
  sub_1CA948B68();

  v56 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 280) = sub_1CA2F9F14(v48, v64, v50, v52, 0, 0, v53, v55);
  *(inited + 304) = v67;
  *(inited + 312) = @"RequiredResources";
  *(inited + 320) = &unk_1F4A09948;
  *(inited + 344) = v44;
  *(inited + 352) = @"UserInterfaces";
  *(inited + 384) = v44;
  *(inited + 360) = &unk_1F4A09988;
  type metadata accessor for Key(0);
  sub_1CA29EBDC(&qword_1EDB9FB10, type metadata accessor for Key);
  v57 = @"RequiredResources";
  v58 = @"UserInterfaces";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA61ED8C()
{
  v1 = sub_1CA61F3E4(v0);
  if (!v2)
  {
    return 0;
  }

  v3 = v1;
  v4 = v2;
  v5 = objc_allocWithZone(WFUserVisibleString);
  return sub_1CA5920A8(v3, v4, 1, 0xD00000000000001FLL, 0x80000001CA9D63B0);
}

void sub_1CA61EE08(uint64_t a1)
{
  v2 = v1;
  v23[1] = MEMORY[0x1E69E7CD0];
  if ([v1 customOutputString])
  {
    sub_1CA368D08(v23);
  }

  v3 = [v1 parametersByKey];
  sub_1CA2C2738();
  v4 = sub_1CA94C1C8();

  v5 = 0;
  v6 = 1 << *(v4 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v4 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = v5;
LABEL_11:
    v11 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v12 = v11 | (v10 << 6);
    v13 = (*(v4 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    v16 = *(*(v4 + 56) + 8 * v12);
    sub_1CA94C218();
    v17 = v16;
    v18 = sub_1CA94C368();

    v19 = [v2 parameterStateForKey_];

    if (v19)
    {
      v20 = [v17 userVisibleStringsInParameterState:v19 forUseCase:a1];
      type metadata accessor for WFUserVisibleString();
      sub_1CA3434EC();
      v21 = sub_1CA94C8F8();

      sub_1CA342840(v21);
      swift_unknownObjectRelease();
    }

    else
    {
    }

    v5 = v10;
  }

  while (1)
  {
    v10 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v10 >= v9)
    {

      return;
    }

    v8 = *(v4 + 64 + 8 * v10);
    ++v5;
    if (v8)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
}

void sub_1CA61F0AC(uint64_t a1)
{
  v2 = v1;
  v3 = [v1 customOutputString];
  if (v3)
  {
    v4 = v3;
    sub_1CA311D98(v3, a1);
    if (v5 || (sub_1CA61F3E4(v1), v6))
    {
      v7 = sub_1CA94C368();
    }

    else
    {
      v7 = 0;
    }

    [v1 setOutputName_];
  }

  v8 = [v1 parametersByKey];
  sub_1CA2C2738();
  v9 = sub_1CA94C1C8();

  v10 = 0;
  v12 = v9 + 64;
  v11 = *(v9 + 64);
  v33 = v9;
  v13 = 1 << *(v9 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v11;
  v16 = (v13 + 63) >> 6;
  if ((v14 & v11) != 0)
  {
    goto LABEL_13;
  }

  while (1)
  {
    v17 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
      return;
    }

    if (v17 >= v16)
    {
      break;
    }

    v15 = *(v12 + 8 * v17);
    ++v10;
    if (v15)
    {
      v10 = v17;
      do
      {
LABEL_13:
        v18 = __clz(__rbit64(v15)) | (v10 << 6);
        v19 = (*(v33 + 48) + 16 * v18);
        v21 = *v19;
        v20 = v19[1];
        v22 = *(*(v33 + 56) + 8 * v18);
        sub_1CA94C218();
        v23 = v22;
        v24 = sub_1CA94C368();
        v25 = [v2 parameterStateForKey_];

        if (v25)
        {
          type metadata accessor for WFUserVisibleString();
          sub_1CA3434EC();
          v26 = sub_1CA94C1A8();
          v27 = [v23 rewriteParameterState:v25 withStrings:v26];
          v32 = v23;
          v28 = v2;
          v29 = v27;

          swift_unknownObjectRetain();
          v30 = sub_1CA94C368();

          [v28 setParameterState:v29 forKey:v30];

          swift_unknownObjectRelease();
          v2 = v28;
          swift_unknownObjectRelease_n();
          v23 = v30;
        }

        else
        {
        }

        v15 &= v15 - 1;
      }

      while (v15);
    }
  }
}

uint64_t sub_1CA61F3E4(void *a1)
{
  v1 = [a1 customOutputName];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1CA94C3A8();

  return v3;
}

id sub_1CA61F47C()
{
  v34 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981300;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000019;
  *(inited + 48) = 0x80000001CA9A2900;
  *(inited + 64) = v1;
  *(inited + 72) = @"AppDefinition";
  v2 = @"ActionClass";
  v3 = @"AppDefinition";
  v4 = sub_1CA94C1E8();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 80) = v4;
  v33 = v5;
  *(inited + 104) = v5;
  *(inited + 112) = @"IconColor";
  *(inited + 120) = 0x65676E61724FLL;
  *(inited + 128) = 0xE600000000000000;
  *(inited + 144) = v1;
  *(inited + 152) = @"IconSymbol";
  *(inited + 160) = 0xD000000000000026;
  *(inited + 168) = 0x80000001CA9D3340;
  *(inited + 184) = v1;
  *(inited + 192) = @"LocallyProcessesData";
  v6 = MEMORY[0x1E69E6370];
  *(inited + 200) = 1;
  *(inited + 224) = v6;
  *(inited + 232) = @"Name";
  v7 = @"IconColor";
  v8 = @"IconSymbol";
  v9 = @"LocallyProcessesData";
  v10 = @"Name";
  v11 = sub_1CA94C438();
  v32 = v12;
  v13 = sub_1CA94C438();
  v15 = v14;
  v16 = sub_1CA948E58();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v20 = [qword_1EDB9F690 bundleURL];
  v21 = sub_1CA948BA8();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v24 = &v32 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948B68();

  v25 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v26 = sub_1CA2F9F14(v11, v32, v13, v15, 0, 0, v19, v24);
  v27 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  *(inited + 240) = v26;
  *(inited + 264) = v27;
  *(inited + 272) = @"Output";
  v28 = @"Output";
  v29 = sub_1CA94C1E8();
  *(inited + 304) = v33;
  *(inited + 280) = v29;
  v30 = sub_1CA94C368();
  *(inited + 344) = v1;
  *(inited + 312) = v30;
  *(inited + 320) = 0xD000000000000014;
  *(inited + 328) = 0x80000001CA993510;
  type metadata accessor for Key(0);
  sub_1CA2ECC50();
  sub_1CA94C1E8();
  return sub_1CA332510();
}

uint64_t static AppNameCache.shared.getter()
{
  if (qword_1EDB9F960 != -1)
  {
    swift_once();
  }
}

uint64_t AppNameCache.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

id sub_1CA61F9A4()
{
  v105 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813F0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD00000000000001ALL;
  *(inited + 48) = 0x80000001CA9D6450;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438();
  v6 = v5;
  v7 = sub_1CA94C438();
  v9 = v8;
  v10 = sub_1CA948E58();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v110 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v111 = v12;
  v13 = &v99 - v110;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v109 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v107 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v108 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v99 - v108;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v106 = v20;
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"Description";
  v104 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v21 = swift_initStackObject();
  *(v21 + 16) = xmmword_1CA981310;
  *(v21 + 32) = @"DescriptionSummary";
  v22 = @"Description";
  v23 = @"DescriptionSummary";
  v24 = sub_1CA94C438();
  v102 = v25;
  v26 = sub_1CA94C438();
  v28 = v27;
  *&v103 = &v99;
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v99 - v110;
  sub_1CA948D98();
  v30 = [v109 bundleURL];
  MEMORY[0x1EEE9AC00](v30);
  v31 = &v99 - v108;
  sub_1CA948B68();

  v32 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v33 = sub_1CA2F9F14(v24, v102, v26, v28, 0, 0, v29, v31);
  *(v21 + 64) = v106;
  *(v21 + 40) = v33;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v34 = v104;
  *(inited + 120) = sub_1CA6B3784();
  *(inited + 144) = v34;
  *(inited + 152) = @"IconColor";
  *(inited + 160) = 1702194242;
  *(inited + 168) = 0xE400000000000000;
  v35 = MEMORY[0x1E69E6158];
  *(inited + 184) = MEMORY[0x1E69E6158];
  *(inited + 192) = @"IconSymbol";
  strcpy((inited + 200), "location.fill");
  *(inited + 214) = -4864;
  *(inited + 224) = v35;
  *(inited + 232) = @"Name";
  v36 = @"IconColor";
  v37 = @"IconSymbol";
  v38 = @"Name";
  v39 = sub_1CA94C438();
  v41 = v40;
  v42 = sub_1CA94C438();
  v44 = v43;
  v104 = &v99;
  MEMORY[0x1EEE9AC00](v42);
  v45 = &v99 - v110;
  sub_1CA948D98();
  v46 = [v109 bundleURL];
  MEMORY[0x1EEE9AC00](v46);
  v47 = &v99 - v108;
  sub_1CA948B68();

  v48 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 240) = sub_1CA2F9F14(v39, v41, v42, v44, 0, 0, v45, v47);
  *(inited + 264) = v106;
  *(inited + 272) = @"Output";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v49 = swift_initStackObject();
  v103 = xmmword_1CA9813C0;
  *(v49 + 16) = xmmword_1CA9813C0;
  *(v49 + 32) = 0x656C7069746C754DLL;
  *(v49 + 40) = 0xE800000000000000;
  v50 = MEMORY[0x1E69E6370];
  *(v49 + 48) = 0;
  *(v49 + 72) = v50;
  *(v49 + 80) = 0x614E74757074754FLL;
  *(v49 + 88) = 0xEA0000000000656DLL;
  v51 = @"Output";
  v52 = sub_1CA94C438();
  v102 = v53;
  v54 = sub_1CA94C438();
  v56 = v55;
  v104 = &v99;
  MEMORY[0x1EEE9AC00](v54);
  v57 = &v99 - v110;
  sub_1CA948D98();
  v58 = [v109 bundleURL];
  MEMORY[0x1EEE9AC00](v58);
  v59 = &v99 - v108;
  sub_1CA948B68();

  v60 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v49 + 96) = sub_1CA2F9F14(v52, v102, v54, v56, 0, 0, v57, v59);
  *(v49 + 120) = v106;
  *(v49 + 128) = 0x7365707954;
  *(v49 + 136) = 0xE500000000000000;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v49 + 168) = v104;
  *(v49 + 144) = &unk_1F4A09A38;
  v61 = MEMORY[0x1E69E6158];
  v62 = sub_1CA94C1E8();
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  *(inited + 280) = v62;
  *(inited + 304) = v63;
  *(inited + 312) = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v102 = swift_allocObject();
  *(v102 + 16) = xmmword_1CA9813B0;
  v101 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v64 = swift_initStackObject();
  *(v64 + 16) = v103;
  *(v64 + 32) = @"Class";
  *(v64 + 40) = 0xD00000000000001BLL;
  *(v64 + 48) = 0x80000001CA99C680;
  *(v64 + 64) = v61;
  *(v64 + 72) = @"Key";
  *(v64 + 80) = 0x7963617275636341;
  *(v64 + 88) = 0xE800000000000000;
  *(v64 + 104) = v61;
  *(v64 + 112) = @"Label";
  v65 = @"Parameters";
  v66 = @"Class";
  v67 = @"Key";
  v68 = @"Label";
  v69 = sub_1CA94C438();
  v100 = v70;
  v71 = sub_1CA94C438();
  v73 = v72;
  *&v103 = &v99;
  MEMORY[0x1EEE9AC00](v71);
  v74 = &v99 - v110;
  sub_1CA948D98();
  v75 = [v109 bundleURL];
  MEMORY[0x1EEE9AC00](v75);
  v76 = &v99 - v108;
  sub_1CA948B68();

  v77 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v78 = sub_1CA2F9F14(v69, v100, v71, v73, 0, 0, v74, v76);
  *(v64 + 144) = v106;
  *(v64 + 120) = v78;
  _s3__C3KeyVMa_0(0);
  sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  v79 = sub_1CA2F864C();
  v80 = v102;
  *(v102 + 32) = v79;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  *(inited + 320) = v80;
  *(inited + 344) = v81;
  *(inited + 352) = @"ParameterSummary";
  v82 = @"ParameterSummary";
  v83 = sub_1CA94C438();
  v85 = v84;
  v86 = sub_1CA94C438();
  v88 = v87;
  v106 = &v99;
  MEMORY[0x1EEE9AC00](v86);
  v89 = &v99 - v110;
  sub_1CA948D98();
  v90 = [v109 bundleURL];
  MEMORY[0x1EEE9AC00](v90);
  v91 = &v99 - v108;
  sub_1CA948B68();

  v92 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v93 = sub_1CA2F9F14(v83, v85, v86, v88, 0, 0, v89, v91);
  v94 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v95 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  *(inited + 360) = v94;
  *(inited + 384) = v95;
  *(inited + 392) = @"RequiredResources";
  *(inited + 400) = &unk_1F4A09A68;
  *(inited + 424) = v104;
  *(inited + 432) = @"ResidentCompatible";
  *(inited + 464) = MEMORY[0x1E69E6370];
  *(inited + 440) = 1;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  v96 = @"RequiredResources";
  v97 = @"ResidentCompatible";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA620678()
{
  v288 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981450;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000011;
  *(inited + 48) = 0x80000001CA9D65C0;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v300 = sub_1CA94C438();
  v5 = v4;
  v6 = sub_1CA94C438();
  v8 = v7;
  v9 = sub_1CA948E58();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v302 = v11;
  v304 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = v278 - v304;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v305 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v301 = v15;
  v303 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = v278 - v303;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v300, v5, v6, v8, 0, 0, v12, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v300 = v19;
  *(inited + 80) = v18;
  *(inited + 104) = v19;
  *(inited + 112) = @"Description";
  v298 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v20 = swift_initStackObject();
  *(v20 + 16) = xmmword_1CA9813C0;
  *(v20 + 32) = @"DescriptionInput";
  v21 = @"Description";
  v22 = @"DescriptionInput";
  v23 = sub_1CA94C438();
  *&v296 = v24;
  v25 = sub_1CA94C438();
  v27 = v26;
  v297 = v278;
  MEMORY[0x1EEE9AC00](v25);
  v28 = v278 - v304;
  sub_1CA948D98();
  v29 = [v305 bundleURL];
  MEMORY[0x1EEE9AC00](v29);
  v299 = inited;
  v30 = v303;
  sub_1CA948B68();

  v31 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v20 + 40) = sub_1CA2F9F14(v23, v296, v25, v27, 0, 0, v28, v278 - v30);
  *(v20 + 64) = v300;
  *(v20 + 72) = @"DescriptionResult";
  v32 = @"DescriptionResult";
  v33 = sub_1CA94C438();
  v295 = v34;
  *&v296 = v33;
  v294 = sub_1CA94C438();
  v36 = v35;
  v297 = v278;
  MEMORY[0x1EEE9AC00](v294);
  v37 = v304;
  sub_1CA948D98();
  v38 = [v305 bundleURL];
  MEMORY[0x1EEE9AC00](v38);
  sub_1CA948B68();

  v39 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v20 + 80) = sub_1CA2F9F14(v296, v295, v294, v36, 0, 0, v278 - v37, v278 - v30);
  v40 = v300;
  *(v20 + 104) = v300;
  *(v20 + 112) = @"DescriptionSummary";
  v41 = @"DescriptionSummary";
  v42 = sub_1CA94C438();
  v295 = v43;
  *&v296 = v42;
  v44 = sub_1CA94C438();
  v46 = v45;
  v297 = v278;
  MEMORY[0x1EEE9AC00](v44);
  sub_1CA948D98();
  v47 = [v305 bundleURL];
  MEMORY[0x1EEE9AC00](v47);
  v48 = v278 - v303;
  sub_1CA948B68();

  v49 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v50 = sub_1CA2F9F14(v296, v295, v44, v46, 0, 0, v278 - v37, v48);
  *(v20 + 144) = v40;
  *(v20 + 120) = v50;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v51 = v298;
  v52 = sub_1CA6B3784();
  v53 = v299;
  v299[15] = v52;
  v53[18] = v51;
  v53[19] = @"IconColor";
  v53[20] = 1702194242;
  v53[21] = 0xE400000000000000;
  v54 = MEMORY[0x1E69E6158];
  v53[23] = MEMORY[0x1E69E6158];
  v53[24] = @"IconSymbol";
  v53[25] = 0x69662E6F746F6870;
  v53[26] = 0xEA00000000006C6CLL;
  v53[28] = v54;
  v53[29] = @"Input";
  v55 = v53;
  v297 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v56 = swift_initStackObject();
  v296 = xmmword_1CA981350;
  *(v56 + 16) = xmmword_1CA981350;
  *(v56 + 32) = 0x656C7069746C754DLL;
  *(v56 + 40) = 0xE800000000000000;
  v57 = MEMORY[0x1E69E6370];
  *(v56 + 48) = 1;
  *(v56 + 72) = v57;
  strcpy((v56 + 80), "ParameterKey");
  *(v56 + 93) = 0;
  *(v56 + 94) = -5120;
  *(v56 + 96) = 0x7475706E494657;
  *(v56 + 104) = 0xE700000000000000;
  *(v56 + 120) = v54;
  *(v56 + 128) = 0x6465726975716552;
  *(v56 + 136) = 0xE800000000000000;
  *(v56 + 144) = 1;
  *(v56 + 168) = v57;
  *(v56 + 176) = 0x7365707954;
  v58 = v57;
  *(v56 + 184) = 0xE500000000000000;
  v293 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v56 + 216) = v293;
  *(v56 + 192) = &unk_1F4A09AA8;
  v59 = @"IconColor";
  v60 = @"IconSymbol";
  v61 = @"Input";
  v62 = sub_1CA94C1E8();
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v298 = v63;
  v55[30] = v62;
  v55[33] = v63;
  v55[34] = @"InputPassthrough";
  *(v55 + 280) = 0;
  v55[38] = v58;
  v55[39] = @"Name";
  v64 = @"InputPassthrough";
  v65 = @"Name";
  v66 = sub_1CA94C438();
  v294 = v67;
  v68 = sub_1CA94C438();
  v70 = v69;
  v295 = v278;
  MEMORY[0x1EEE9AC00](v68);
  v71 = v278 - v304;
  sub_1CA948D98();
  v72 = v305;
  v73 = [v305 bundleURL];
  MEMORY[0x1EEE9AC00](v73);
  v74 = v303;
  sub_1CA948B68();

  v75 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v76 = sub_1CA2F9F14(v66, v294, v68, v70, 0, 0, v71, v278 - v74);
  v77 = v299;
  v78 = v300;
  v299[40] = v76;
  v77[43] = v78;
  v77[44] = @"Output";
  v79 = swift_allocObject();
  *(v79 + 16) = v296;
  *(v79 + 32) = 0x75736F6C63736944;
  *(v79 + 40) = 0xEF6C6576654C6572;
  *(v79 + 48) = 0x63696C627550;
  *(v79 + 56) = 0xE600000000000000;
  *(v79 + 72) = MEMORY[0x1E69E6158];
  *(v79 + 80) = 0x656C7069746C754DLL;
  *(v79 + 88) = 0xE800000000000000;
  *(v79 + 96) = 1;
  *(v79 + 120) = MEMORY[0x1E69E6370];
  *(v79 + 128) = 0x614E74757074754FLL;
  *(v79 + 136) = 0xEA0000000000656DLL;
  v80 = @"Output";
  v81 = sub_1CA94C438();
  v294 = v82;
  v295 = v81;
  v83 = sub_1CA94C438();
  v85 = v84;
  v297 = v278;
  MEMORY[0x1EEE9AC00](v83);
  v86 = v278 - v304;
  sub_1CA948D98();
  v87 = [v72 bundleURL];
  MEMORY[0x1EEE9AC00](v87);
  sub_1CA948B68();

  v88 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v79 + 144) = sub_1CA2F9F14(v295, v294, v83, v85, 0, 0, v86, v278 - v74);
  *(v79 + 168) = v78;
  *(v79 + 176) = 0x7365707954;
  *(v79 + 216) = v293;
  *(v79 + 184) = 0xE500000000000000;
  *(v79 + 192) = &unk_1F4A09AD8;
  v89 = MEMORY[0x1E69E6158];
  v90 = sub_1CA94C1E8();
  v91 = v299;
  v299[45] = v90;
  v91[48] = v298;
  v91[49] = @"Parameters";
  v292 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v298 = swift_allocObject();
  v290 = xmmword_1CA981570;
  *(v298 + 16) = xmmword_1CA981570;
  v297 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v294 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v92 = swift_allocObject();
  *(v92 + 16) = v296;
  v286 = 0xD000000000000019;
  v287 = 0x80000001CA99B030;
  *(v92 + 32) = @"Class";
  *(v92 + 40) = 0xD000000000000019;
  *(v92 + 48) = 0x80000001CA99B030;
  *(v92 + 64) = v89;
  *(v92 + 72) = @"Key";
  *(v92 + 80) = 0x7475706E494657;
  *(v92 + 88) = 0xE700000000000000;
  *(v92 + 104) = v89;
  *(v92 + 112) = @"Label";
  v93 = @"Class";
  v94 = @"Key";
  v95 = @"Label";
  v96 = v93;
  v97 = v94;
  v98 = v95;
  v282 = v96;
  v289 = v97;
  v284 = v98;
  v99 = @"Parameters";
  v295 = sub_1CA94C438();
  v291 = v100;
  v101 = sub_1CA94C438();
  *&v285 = v102;
  *&v296 = v278;
  MEMORY[0x1EEE9AC00](v101);
  v103 = v278 - v304;
  sub_1CA948D98();
  v104 = v305;
  v105 = [v305 bundleURL];
  MEMORY[0x1EEE9AC00](v105);
  v106 = v278 - v303;
  sub_1CA948B68();

  v107 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v92 + 120) = sub_1CA2F9F14(v295, v291, v101, v285, 0, 0, v103, v106);
  v108 = v300;
  *(v92 + 144) = v300;
  *(v92 + 152) = @"Placeholder";
  v291 = @"Placeholder";
  v295 = sub_1CA94C438();
  *&v285 = v109;
  v110 = sub_1CA94C438();
  v283 = v111;
  *&v296 = v278;
  MEMORY[0x1EEE9AC00](v110);
  v112 = v304;
  sub_1CA948D98();
  v113 = [v104 bundleURL];
  MEMORY[0x1EEE9AC00](v113);
  v114 = v278 - v303;
  sub_1CA948B68();

  v115 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v116 = sub_1CA2F9F14(v295, v285, v110, v283, 0, 0, v278 - v112, v114);
  *(v92 + 184) = v108;
  *(v92 + 160) = v116;
  _s3__C3KeyVMa_0(0);
  *&v296 = v117;
  v295 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  *(v298 + 32) = sub_1CA2F864C();
  v118 = swift_allocObject();
  v285 = xmmword_1CA981380;
  *(v118 + 16) = xmmword_1CA981380;
  v283 = 0xD000000000000016;
  v119 = v282;
  *(v118 + 32) = v282;
  *(v118 + 40) = 0xD000000000000016;
  *(v118 + 48) = 0x80000001CA99C4A0;
  v120 = MEMORY[0x1E69E6158];
  *(v118 + 64) = MEMORY[0x1E69E6158];
  *(v118 + 72) = @"DefaultValue";
  *(v118 + 80) = 0xD000000000000011;
  *(v118 + 88) = 0x80000001CA99A730;
  *(v118 + 104) = v120;
  *(v118 + 112) = @"DisallowedVariableTypes";
  *(v118 + 120) = &unk_1F4A09B08;
  *(v118 + 144) = v293;
  *(v118 + 152) = @"Items";
  v293 = swift_allocObject();
  *&v293->data = v290;
  *&v290 = v119;
  v121 = @"DefaultValue";
  v122 = @"DisallowedVariableTypes";
  v123 = @"Items";
  v124 = sub_1CA94C438();
  v280 = v125;
  *&v281 = v124;
  v126 = sub_1CA94C438();
  v279 = v127;
  v282 = v278;
  MEMORY[0x1EEE9AC00](v126);
  sub_1CA948D98();
  v128 = v305;
  v129 = [v305 bundleURL];
  MEMORY[0x1EEE9AC00](v129);
  v130 = v278 - v303;
  sub_1CA948B68();

  v131 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v132 = sub_1CA2F9F14(v281, v280, v126, v279, 0, 0, v278 - v112, v130);
  v133 = v293;
  v293[1].isa = v132;
  v134 = sub_1CA94C438();
  v280 = v135;
  *&v281 = v134;
  v279 = sub_1CA94C438();
  v137 = v136;
  v282 = v278;
  MEMORY[0x1EEE9AC00](v279);
  sub_1CA948D98();
  v138 = [v128 bundleURL];
  MEMORY[0x1EEE9AC00](v138);
  v139 = v303;
  sub_1CA948B68();

  v140 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v133[1].info = sub_1CA2F9F14(v281, v280, v279, v137, 0, 0, v278 - v112, v278 - v139);
  v141 = sub_1CA94C438();
  v280 = v142;
  *&v281 = v141;
  v143 = sub_1CA94C438();
  v279 = v144;
  v282 = v278;
  MEMORY[0x1EEE9AC00](v143);
  v145 = v304;
  sub_1CA948D98();
  v146 = v305;
  v147 = [v305 bundleURL];
  v278[1] = v278;
  MEMORY[0x1EEE9AC00](v147);
  sub_1CA948B68();

  v148 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v149 = sub_1CA2F9F14(v281, v280, v143, v279, 0, 0, v278 - v145, v278 - v139);
  v293[1].data = v149;
  v150 = sub_1CA94C438();
  v280 = v151;
  *&v281 = v150;
  v152 = sub_1CA94C438();
  v279 = v153;
  v282 = v278;
  MEMORY[0x1EEE9AC00](v152);
  v154 = v278 - v145;
  sub_1CA948D98();
  v155 = [v146 bundleURL];
  MEMORY[0x1EEE9AC00](v155);
  v156 = v303;
  sub_1CA948B68();

  v157 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v158 = sub_1CA2F9F14(v281, v280, v152, v279, 0, 0, v154, v278 - v156);
  v159 = v293;
  v293[1].length = v158;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443830, &qword_1CA981580);
  *(v118 + 160) = v159;
  v161 = v289;
  *(v118 + 184) = v160;
  *(v118 + 192) = v161;
  *(v118 + 200) = 0x79546B73614D4657;
  *(v118 + 208) = 0xEA00000000006570;
  v162 = v284;
  *(v118 + 224) = MEMORY[0x1E69E6158];
  *(v118 + 232) = v162;
  v289 = v161;
  v293 = v162;
  v282 = sub_1CA94C438();
  v164 = v163;
  v165 = sub_1CA94C438();
  v167 = v166;
  v284 = v278;
  MEMORY[0x1EEE9AC00](v165);
  v168 = v278 - v304;
  sub_1CA948D98();
  v169 = [v305 bundleURL];
  MEMORY[0x1EEE9AC00](v169);
  sub_1CA948B68();

  v170 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v171 = sub_1CA2F9F14(v282, v164, v165, v167, 0, 0, v168, v278 - v156);
  *(v118 + 264) = v300;
  *(v118 + 240) = v171;
  sub_1CA94C1E8();
  *(v298 + 40) = sub_1CA2F864C();
  v172 = swift_allocObject();
  *(v172 + 16) = xmmword_1CA981400;
  v173 = v283;
  *(v172 + 32) = v290;
  *(v172 + 40) = v173;
  *(v172 + 48) = 0x80000001CA99C180;
  *(v172 + 64) = MEMORY[0x1E69E6158];
  *(v172 + 72) = @"Description";
  v283 = @"Description";
  v282 = sub_1CA94C438();
  *&v281 = v174;
  v175 = sub_1CA94C438();
  v280 = v176;
  v284 = v278;
  MEMORY[0x1EEE9AC00](v175);
  v177 = v304;
  sub_1CA948D98();
  v178 = v305;
  v179 = [v305 bundleURL];
  MEMORY[0x1EEE9AC00](v179);
  v180 = v278 - v303;
  sub_1CA948B68();

  v181 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v172 + 80) = sub_1CA2F9F14(v282, v281, v175, v280, 0, 0, v278 - v177, v180);
  v182 = v289;
  *(v172 + 104) = v300;
  *(v172 + 112) = v182;
  v284 = 0xD000000000000012;
  *(v172 + 120) = 0xD000000000000012;
  *(v172 + 128) = 0x80000001CA9D68A0;
  v183 = v293;
  *(v172 + 144) = MEMORY[0x1E69E6158];
  *(v172 + 152) = v183;
  v184 = sub_1CA94C438();
  v280 = v185;
  *&v281 = v184;
  v186 = sub_1CA94C438();
  v279 = v187;
  v282 = v278;
  MEMORY[0x1EEE9AC00](v186);
  sub_1CA948D98();
  v188 = [v178 bundleURL];
  MEMORY[0x1EEE9AC00](v188);
  v189 = v303;
  sub_1CA948B68();

  v190 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v172 + 160) = sub_1CA2F9F14(v281, v280, v186, v279, 0, 0, v278 - v177, v278 - v189);
  v191 = v300;
  v192 = v291;
  *(v172 + 184) = v300;
  *(v172 + 192) = v192;
  v193 = sub_1CA94C438();
  v280 = v194;
  *&v281 = v193;
  v279 = sub_1CA94C438();
  v196 = v195;
  v282 = v278;
  MEMORY[0x1EEE9AC00](v279);
  v197 = v278 - v304;
  sub_1CA948D98();
  v198 = [v305 bundleURL];
  MEMORY[0x1EEE9AC00](v198);
  sub_1CA948B68();

  v199 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v172 + 200) = sub_1CA2F9F14(v281, v280, v279, v196, 0, 0, v197, v278 - v189);
  *(v172 + 224) = v191;
  *(v172 + 232) = @"RequiredResources";
  v282 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437F0, &qword_1CA981430);
  v200 = swift_allocObject();
  v281 = xmmword_1CA981310;
  *(v200 + 16) = xmmword_1CA981310;
  v280 = @"RequiredResources";
  v201 = MEMORY[0x1E69E6158];
  *(v200 + 32) = sub_1CA94C1E8();
  v202 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437F8, &qword_1CA981438);
  v279 = v202;
  *(v172 + 240) = v200;
  *(v172 + 264) = v202;
  *(v172 + 272) = @"TextAlignment";
  *(v172 + 304) = v201;
  *(v172 + 280) = 0x7468676952;
  *(v172 + 288) = 0xE500000000000000;
  v203 = @"TextAlignment";
  sub_1CA94C1E8();
  *(v298 + 48) = sub_1CA2F864C();
  v204 = swift_allocObject();
  *(v204 + 16) = v285;
  v206 = v286;
  v205 = v287;
  *(v204 + 32) = v290;
  *(v204 + 40) = v206;
  *(v204 + 48) = v205;
  v207 = v283;
  *(v204 + 64) = v201;
  *(v204 + 72) = v207;
  *&v290 = sub_1CA94C438();
  v287 = v208;
  v209 = sub_1CA94C438();
  v211 = v210;
  v294 = v278;
  MEMORY[0x1EEE9AC00](v209);
  v212 = v278 - v304;
  sub_1CA948D98();
  v213 = [v305 bundleURL];
  MEMORY[0x1EEE9AC00](v213);
  v214 = v278 - v303;
  sub_1CA948B68();

  v215 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v204 + 80) = sub_1CA2F9F14(v290, v287, v209, v211, 0, 0, v212, v214);
  v216 = v289;
  *(v204 + 104) = v300;
  *(v204 + 112) = v216;
  *(v204 + 120) = 0xD000000000000011;
  *(v204 + 128) = 0x80000001CA9D6B20;
  v217 = v293;
  *(v204 + 144) = MEMORY[0x1E69E6158];
  *(v204 + 152) = v217;
  v293 = sub_1CA94C438();
  *&v290 = v218;
  v219 = sub_1CA94C438();
  v289 = v220;
  v294 = v278;
  MEMORY[0x1EEE9AC00](v219);
  v221 = v304;
  sub_1CA948D98();
  v222 = v305;
  v223 = [v305 bundleURL];
  v287 = v278;
  MEMORY[0x1EEE9AC00](v223);
  v224 = v303;
  sub_1CA948B68();

  v225 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v204 + 160) = sub_1CA2F9F14(v293, v290, v219, v289, 0, 0, v278 - v221, v278 - v224);
  v226 = v291;
  *(v204 + 184) = v300;
  *(v204 + 192) = v226;
  v293 = sub_1CA94C438();
  v291 = v227;
  v228 = sub_1CA94C438();
  *&v290 = v229;
  v294 = v278;
  MEMORY[0x1EEE9AC00](v228);
  sub_1CA948D98();
  v230 = [v222 bundleURL];
  MEMORY[0x1EEE9AC00](v230);
  sub_1CA948B68();

  v231 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v204 + 200) = sub_1CA2F9F14(v293, v291, v228, v290, 0, 0, v278 - v221, v278 - v224);
  v232 = v280;
  *(v204 + 224) = v300;
  *(v204 + 232) = v232;
  v233 = swift_allocObject();
  *(v233 + 16) = v281;
  *(v233 + 32) = sub_1CA94C1E8();
  *(v204 + 264) = v279;
  *(v204 + 240) = v233;
  sub_1CA94C1E8();
  v234 = sub_1CA2F864C();
  v235 = v298;
  *(v298 + 56) = v234;
  v236 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v237 = v299;
  v299[50] = v235;
  v237[53] = v236;
  v237[54] = @"ParameterSummary";
  v298 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v300 = swift_allocObject();
  *(v300 + 16) = xmmword_1CA981470;
  v297 = "Image (WFCustomMaskImage)";
  v238 = @"ParameterSummary";
  v239 = sub_1CA94C438();
  v294 = v240;
  v295 = v239;
  v241 = sub_1CA94C438();
  v293 = v242;
  *&v296 = v278;
  MEMORY[0x1EEE9AC00](v241);
  v243 = v304;
  sub_1CA948D98();
  v244 = [v305 bundleURL];
  MEMORY[0x1EEE9AC00](v244);
  v245 = v303;
  sub_1CA948B68();

  v246 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v247 = sub_1CA2F9F14(v295, v294, v241, v293, 0, 0, v278 - v243, v278 - v245);
  v248 = objc_allocWithZone(WFActionParameterSummaryValue);
  v249 = sub_1CA65DD78(v284, v297 | 0x8000000000000000, v247);
  *(v300 + 32) = v249;
  v297 = "with ${WFMaskType} shape";
  v250 = sub_1CA94C438();
  v294 = v251;
  v295 = v250;
  v252 = sub_1CA94C438();
  v254 = v253;
  *&v296 = v278;
  MEMORY[0x1EEE9AC00](v252);
  sub_1CA948D98();
  v255 = [v305 bundleURL];
  MEMORY[0x1EEE9AC00](v255);
  sub_1CA948B68();

  v256 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v257 = sub_1CA2F9F14(v295, v294, v252, v254, 0, 0, v278 - v243, v278 - v245);
  v258 = objc_allocWithZone(WFActionParameterSummaryValue);
  v259 = sub_1CA65DD78(0xD000000000000032, v297 | 0x8000000000000000, v257);
  v260 = v300;
  *(v300 + 40) = v259;
  v297 = "e} ${WFCustomMaskImage}";
  v261 = sub_1CA94C438();
  v263 = v262;
  v264 = sub_1CA94C438();
  v266 = v265;
  *&v296 = v278;
  MEMORY[0x1EEE9AC00](v264);
  v267 = v278 - v304;
  sub_1CA948D98();
  v268 = [v305 bundleURL];
  MEMORY[0x1EEE9AC00](v268);
  v269 = v278 - v303;
  sub_1CA948B68();

  v270 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v271 = sub_1CA2F9F14(v261, v263, v264, v266, 0, 0, v267, v269);
  v272 = objc_allocWithZone(WFActionParameterSummaryValue);
  *(v260 + 48) = sub_1CA65DD78(0xD000000000000038, v297 | 0x8000000000000000, v271);
  v273 = v298;
  v274 = sub_1CA65AF90();
  v275 = v299;
  v299[55] = v274;
  v275[58] = v273;
  v275[59] = @"ResidentCompatible";
  v275[63] = MEMORY[0x1E69E6370];
  *(v275 + 480) = 1;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  v276 = @"ResidentCompatible";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

uint64_t sub_1CA6229BC(uint64_t a1)
{
  v3 = sub_1CA62E6C4(a1, *v1, *(v1 + 8), *(v1 + 16));
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  sub_1CA623CA4(a1, v13);
  v7 = swift_allocObject();
  v8 = v13[1];
  *(v7 + 16) = v13[0];
  *(v7 + 32) = v8;
  *(v7 + 48) = v13[2];
  v9 = *(v1 + 16);
  *(v7 + 72) = *v1;
  *(v7 + 64) = v14;
  *(v7 + 88) = v9;
  *(v7 + 104) = *(v1 + 32);
  swift_bridgeObjectRetain_n();
  sub_1CA94C218();
  sub_1CA94C218();
  v10 = RowTemplateParameterOptions.variablesDisabled.getter();
  v11 = objc_allocWithZone(type metadata accessor for CalendarUnitPickerParameter());
  sub_1CA623500(1953066613, 0xE400000000000000, v6, sub_1CA623D00, v7, v10 & 1);
  swift_isUniquelyReferenced_nonNull_native();
  *&v13[0] = v3;
  sub_1CA3225FC();
  return *&v13[0];
}

uint64_t sub_1CA622B04(uint64_t a1, void *a2)
{
  sub_1CA43FE30(a1, v7);
  v3 = v8;
  if (v8)
  {
    v4 = v9;
    __swift_project_boxed_opaque_existential_1(v7, v8);
    v5 = (*(v4 + 160))(*a2, a2[1], v3, v4);
    __swift_destroy_boxed_opaque_existential_0(v7);
    if (v5)
    {
      objc_opt_self();
      result = swift_dynamicCastObjCClass();
      if (result)
      {
        return result;
      }

      swift_unknownObjectRelease();
    }
  }

  else
  {
    sub_1CA444194(v7);
  }

  return 0;
}

uint64_t sub_1CA622BBC(uint64_t a1, uint64_t *a2)
{
  v3[2] = a1;
  v3[3] = v2;
  v4 = *a2;
  v5 = a2[1];
  v3[4] = *a2;
  v3[5] = v5;
  v6 = *v2;
  v7 = *(v2 + 8);
  v8 = *(v2 + 16);
  v9 = swift_task_alloc();
  v3[6] = v9;
  *v9 = v3;
  v9[1] = sub_1CA622C80;

  return sub_1CA62EC48(v4, v5, v6, v7);
}

uint64_t sub_1CA622C80(uint64_t a1)
{
  OUTLINED_FUNCTION_3();
  v5 = v4;
  OUTLINED_FUNCTION_1();
  *v6 = v5;
  v8 = *(v7 + 48);
  v9 = *v2;
  OUTLINED_FUNCTION_1();
  *v10 = v9;

  if (v1)
  {
    v11 = *(v9 + 8);

    return v11();
  }

  else
  {
    *(v5 + 56) = a1;
    v13 = OUTLINED_FUNCTION_3_46();

    return MEMORY[0x1EEE6DFA0](v13, v14, v15);
  }
}

uint64_t sub_1CA622DB4()
{
  OUTLINED_FUNCTION_0();
  v1 = *(v0 + 56);
  [*(v0 + 16) setNumber_];

  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  *v2 = v0;
  v2[1] = sub_1CA622E64;
  v4 = *(v0 + 32);
  v3 = *(v0 + 40);
  v5 = *(v0 + 24);

  return sub_1CA623008(v4, v3);
}

uint64_t sub_1CA622E64(uint64_t a1)
{
  OUTLINED_FUNCTION_3();
  v5 = v4;
  OUTLINED_FUNCTION_1();
  *v6 = v5;
  v8 = *(v7 + 64);
  v9 = *v2;
  OUTLINED_FUNCTION_1();
  *v10 = v9;

  if (v1)
  {
    v11 = *(v9 + 8);

    return v11();
  }

  else
  {
    *(v5 + 72) = a1;
    v13 = OUTLINED_FUNCTION_3_46();

    return MEMORY[0x1EEE6DFA0](v13, v14, v15);
  }
}

uint64_t sub_1CA622F98()
{
  OUTLINED_FUNCTION_0();
  v1 = *(v0 + 72);
  [*(v0 + 16) setCalendarUnit_];

  OUTLINED_FUNCTION_5();

  return v2();
}

uint64_t sub_1CA623008(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1CA62302C, 0, 0);
}

uint64_t sub_1CA62302C()
{
  if (*(v0[2] + 16) && (v1 = v0[4], v2 = *(v1 + 24), v3 = *(v1 + 32), v4 = sub_1CA271BF8(), (v5 & 1) != 0))
  {
    v6 = *(*(v0[2] + 56) + 8 * v4);
    v0[5] = v6;
    swift_unknownObjectRetain();
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      swift_unknownObjectRetain();
      v7 = swift_task_alloc();
      v0[6] = v7;
      *v7 = v0;
      v7[1] = sub_1CA6231F4;
      v8 = v0[3];

      return sub_1CA32BB60(v8);
    }

    else
    {
      sub_1CA2A741C();
      swift_allocError();
      *v11 = v6;
      *(v11 + 32) = 1;
      swift_willThrow();
      swift_unknownObjectRetain();
      v12 = v0[5];
      swift_unknownObjectRelease();
      OUTLINED_FUNCTION_5();

      return v13();
    }
  }

  else
  {
    v10 = v0[1];

    return v10(0);
  }
}

uint64_t sub_1CA6231F4()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  *v3 = v2;
  v5 = *(v4 + 48);
  *v3 = *v1;
  *(v2 + 56) = v6;
  *(v2 + 64) = v0;

  if (v0)
  {
    v7 = sub_1CA2BCF10;
  }

  else
  {
    v7 = sub_1CA6232FC;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1CA6232FC()
{
  v1 = v0[7];
  if (!v1)
  {
    v6 = v0[5];
    swift_unknownObjectRelease();
    v4 = 0;
    goto LABEL_5;
  }

  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  v3 = v0[5];
  if (v2)
  {
    v4 = v2;
    v5 = v0[5];
    swift_unknownObjectRelease();
LABEL_5:
    v7 = v0[5];
    swift_unknownObjectRelease();
    v8 = v0[1];

    return v8(v4);
  }

  sub_1CA2A741C();
  swift_allocError();
  v11 = v10;
  *(v10 + 24) = swift_getObjectType();
  *v11 = v1;
  *(v11 + 32) = 2;
  swift_willThrow();
  swift_unknownObjectRelease();
  v12 = v0[5];
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_5();

  return v13();
}

uint64_t sub_1CA623444(uint64_t a1, uint64_t *a2)
{
  v6 = v2[1];
  *(v3 + 16) = *v2;
  *(v3 + 32) = v6;
  *(v3 + 48) = v2[2];
  v7 = swift_task_alloc();
  *(v3 + 64) = v7;
  *v7 = v3;
  v7[1] = sub_1CA5C5FA8;

  return sub_1CA622BBC(a1, a2);
}

id sub_1CA623500(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  *&v6[OBJC_IVAR____TtC11WorkflowKitP33_AD767BEAA88C93AB9397AB9AE1AC0E0B27CalendarUnitPickerParameter_units] = a3;
  v11 = &v6[OBJC_IVAR____TtC11WorkflowKitP33_AD767BEAA88C93AB9397AB9AE1AC0E0B27CalendarUnitPickerParameter_associatedNumberState];
  *v11 = a4;
  *(v11 + 1) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813C0;
  v13 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"Key";
  *(inited + 40) = a1;
  *(inited + 48) = a2;
  *(inited + 64) = v13;
  *(inited + 72) = @"HideClearButton";
  v14 = MEMORY[0x1E69E6370];
  *(inited + 80) = 1;
  *(inited + 104) = v14;
  *(inited + 112) = @"DisallowedVariableTypes";
  if (a6)
  {
    sub_1CA25B3D0(0, &qword_1EC444F20, off_1E836E2F8);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

    v16 = v7;
    v17 = @"Key";
    v18 = @"HideClearButton";
    v19 = @"DisallowedVariableTypes";
    v20 = [ObjCClassFromMetadata allInsertableVariableTypes];
    type metadata accessor for WFVariableType(0);
    sub_1CA514750(&qword_1EC441A60, type metadata accessor for WFVariableType);
    v21 = sub_1CA94C8F8();

    sub_1CA3E4650(v21);
    v23 = v22;
  }

  else
  {

    v24 = @"Key";
    v25 = @"HideClearButton";
    v26 = @"DisallowedVariableTypes";
    v23 = MEMORY[0x1E69E7CC0];
  }

  sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  *(inited + 144) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(inited + 120) = v23;
  _s3__C3KeyVMa_0(0);
  sub_1CA514750(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  v27 = sub_1CA2F864C();
  v30.receiver = v7;
  v30.super_class = type metadata accessor for CalendarUnitPickerParameter();
  v28 = objc_msgSendSuper2(&v30, sel_initWithDefinition_, v27);

  return v28;
}

uint64_t sub_1CA62385C()
{
  v1 = *(v0 + OBJC_IVAR____TtC11WorkflowKitP33_AD767BEAA88C93AB9397AB9AE1AC0E0B27CalendarUnitPickerParameter_units);
  v2 = *(v1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v10 = MEMORY[0x1E69E7CC0];
    sub_1CA94D508();
    v4 = (v1 + 32);
    do
    {
      v5 = *v4++;
      v6 = sub_1CA94D168();
      v7 = [objc_allocWithZone(WFCalendarUnitSubstitutableState) initWithNumber_];

      v8 = WFVariableSubstitutableParameterStateUpcast(v7);
      sub_1CA94D4D8();
      v9 = *(v10 + 16);
      sub_1CA94D518();
      sub_1CA94D528();
      sub_1CA94D4E8();
      --v2;
    }

    while (v2);
    return v10;
  }

  return result;
}

uint64_t sub_1CA623950(void *a1)
{
  sub_1CA25B3D0(0, &qword_1EC447708, off_1E836DEF8);
  swift_getObjCClassFromMetadata();
  if (!WFVariableSubstitutableParameterStateDowncast(a1))
  {
    return 0;
  }

  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (!v3 || (v4 = [v3 number]) == 0)
  {
    swift_unknownObjectRelease();
    return 0;
  }

  v5 = v4;
  v6 = sub_1CA94D158();
  v7 = *(v1 + OBJC_IVAR____TtC11WorkflowKitP33_AD767BEAA88C93AB9397AB9AE1AC0E0B27CalendarUnitPickerParameter_associatedNumberState);
  v8 = *(v1 + OBJC_IVAR____TtC11WorkflowKitP33_AD767BEAA88C93AB9397AB9AE1AC0E0B27CalendarUnitPickerParameter_associatedNumberState + 8);
  v9 = v7();
  v10 = v9;
  if (v9 && (v11 = [v9 decimalNumber]) != 0)
  {
    v12 = v11;
    [v11 decimalValue];
    v13 = v24;
    v14 = v25;
    v15 = v26;

    v16 = 0;
  }

  else
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 1;
  }

  v18 = MEMORY[0x1CCAA1E90](1);
  if (v16)
  {
    v21 = 0;
  }

  else
  {
    v21 = MEMORY[0x1CCAA1EB0](v13, v14, v15, v18, v19, v20);
  }

  v22 = WFLabelForCalendarUnit(v6, v10, v21 & 1);
  v17 = sub_1CA94C3A8();
  swift_unknownObjectRelease();

  return v17;
}

id sub_1CA623BE8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CalendarUnitPickerParameter();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1CA623D0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = sub_1CA94C368();

  v6 = [v4 initWithIdentifier:v5 objectType:a3];

  return v6;
}

uint64_t sub_1CA623D88(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  swift_bridgeObjectRetain_n();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = sub_1CA296348(v4);
    *a1 = v4;
  }

  v6 = *(v4 + 16);
  v8[0] = v4 + 32;
  v8[1] = v6;
  sub_1CA94C218();
  sub_1CA62660C(v8, a2);
  sub_1CA94D4E8();
  return swift_bridgeObjectRelease_n();
}

uint64_t sub_1CA623E2C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (__OFSUB__(a3, a2))
  {
    __break(1u);
  }

  else
  {
    v12[5] = v4;
    v12[6] = v5;
    v8 = result;
    if (a3 - a2 >= *(result + 16))
    {
      v9 = *(result + 16);
    }

    else
    {
      v9 = a3 - a2;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446BE0, &qword_1CA98FFF0);
      v10 = sub_1CA94D688();
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC8];
    }

    v12[0] = v10;
    sub_1CA62641C(v8, a2, a3, 1, v12);
    v11 = v12[0];
    if (v3)
    {
    }

    return v11;
  }

  return result;
}

id sub_1CA624010(uint64_t a1, uint64_t a2, void (*a3)(void), unint64_t *a4, uint64_t *a5)
{
  a3();
  sub_1CA25B3D0(0, a4, a5);
  v7 = sub_1CA94C648();

  return v7;
}

id sub_1CA6240D4(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  ObjectType = swift_getObjectType();
  *&v4[*a3] = a1;
  *&v4[*a4] = a2;
  v11.receiver = v4;
  v11.super_class = ObjectType;
  return objc_msgSendSuper2(&v11, sel_init);
}

uint64_t sub_1CA6241C8()
{
  sub_1CA94D6E8();
  OUTLINED_FUNCTION_87();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1CA624210(char a1)
{
  result = 0x746C7561666564;
  switch(a1)
  {
    case 1:
      result = 1701667182;
      break;
    case 2:
      result = 0x776F6C666B726F77;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    case 4:
      result = 0x456E75527473616CLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1CA6242C0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1CA6241C8();
  *a2 = result;
  return result;
}

unint64_t sub_1CA6242F0@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1CA624210(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

id sub_1CA624334(void *a1, char a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, uint64_t a10, uint64_t a11, char a12, char a13)
{
  ObjectType = swift_getObjectType();
  v20 = &v13[OBJC_IVAR___WFLibraryWorkflowsQuery_limit];
  *v20 = 0;
  v20[8] = 1;
  v21 = &v13[OBJC_IVAR___WFLibraryWorkflowsQuery_nameContaining];
  *v21 = 0;
  v21[1] = 0;
  v22 = &v13[OBJC_IVAR___WFLibraryWorkflowsQuery_nameEqualing];
  *v22 = 0;
  v22[1] = 0;
  v23 = &v13[OBJC_IVAR___WFLibraryWorkflowsQuery_associatedAppBundleIdentifier];
  *v23 = 0;
  v23[1] = 0;
  *&v13[OBJC_IVAR___WFLibraryWorkflowsQuery_workflowQuery] = a1;
  v13[OBJC_IVAR___WFLibraryWorkflowsQuery_sortBy] = a2;
  *v20 = a3;
  v20[8] = a4 & 1;
  *v21 = a5;
  v21[1] = a6;
  *v22 = a7;
  v22[1] = a8;
  v13[OBJC_IVAR___WFLibraryWorkflowsQuery_hasAssociatedAppBundleIdentifier] = a9;
  v24 = v23[1];
  *v23 = a10;
  v23[1] = a11;
  v25 = a1;

  v13[OBJC_IVAR___WFLibraryWorkflowsQuery_isRecentlyModified] = a12;
  v13[OBJC_IVAR___WFLibraryWorkflowsQuery_isRecentlyRun] = a13;
  v31.receiver = v13;
  v31.super_class = ObjectType;
  v26 = objc_msgSendSuper2(&v31, sel_init);

  return v26;
}

uint64_t LibraryWorkflowsQuery.debugDescription.getter()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443850, &qword_1CA9815F0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1CA981310;
  sub_1CA94D408();

  OUTLINED_FUNCTION_6_5();
  v28 = v3;
  v4 = [*(v0 + OBJC_IVAR___WFLibraryWorkflowsQuery_workflowQuery) description];
  v5 = sub_1CA94C3A8();
  v7 = v6;

  MEMORY[0x1CCAA1300](v5, v7);

  *(v2 + 32) = 0xD000000000000010;
  *(v2 + 40) = v28;
  if ((*(v1 + OBJC_IVAR___WFLibraryWorkflowsQuery_limit + 8) & 1) == 0)
  {
    v27 = *(v1 + OBJC_IVAR___WFLibraryWorkflowsQuery_limit);
    v8 = sub_1CA94D798();
    MEMORY[0x1CCAA1300](v8);

    OUTLINED_FUNCTION_2_58();
    if (v9)
    {
      OUTLINED_FUNCTION_0_66();
      v2 = v23;
    }

    OUTLINED_FUNCTION_3_52();
  }

  if (*(v1 + OBJC_IVAR___WFLibraryWorkflowsQuery_nameContaining + 8))
  {
    OUTLINED_FUNCTION_6_44((v1 + OBJC_IVAR___WFLibraryWorkflowsQuery_nameContaining));
    sub_1CA94D408();

    OUTLINED_FUNCTION_6_5();
    OUTLINED_FUNCTION_8_30();

    OUTLINED_FUNCTION_2_58();
    if (v9)
    {
      OUTLINED_FUNCTION_0_66();
      v2 = v20;
    }

    OUTLINED_FUNCTION_3_52();
  }

  if (*(v1 + OBJC_IVAR___WFLibraryWorkflowsQuery_nameEqualing + 8))
  {
    OUTLINED_FUNCTION_6_44((v1 + OBJC_IVAR___WFLibraryWorkflowsQuery_nameEqualing));
    sub_1CA94D408();

    OUTLINED_FUNCTION_8_30();

    OUTLINED_FUNCTION_2_58();
    if (v9)
    {
      OUTLINED_FUNCTION_0_66();
      v2 = v21;
    }

    OUTLINED_FUNCTION_3_52();
  }

  if (*(v1 + OBJC_IVAR___WFLibraryWorkflowsQuery_hasAssociatedAppBundleIdentifier) == 1)
  {
    v10 = *(v2 + 16);
    if (v10 >= *(v2 + 24) >> 1)
    {
      OUTLINED_FUNCTION_0_66();
      v2 = v24;
    }

    OUTLINED_FUNCTION_6_5();
    *(v2 + 16) = v10 + 1;
    v11 = v2 + 16 * v10;
    *(v11 + 32) = 0xD000000000000024;
    *(v11 + 40) = v12;
  }

  if (*(v1 + OBJC_IVAR___WFLibraryWorkflowsQuery_associatedAppBundleIdentifier + 8))
  {
    OUTLINED_FUNCTION_6_44((v1 + OBJC_IVAR___WFLibraryWorkflowsQuery_associatedAppBundleIdentifier));
    sub_1CA94D408();

    OUTLINED_FUNCTION_6_5();
    OUTLINED_FUNCTION_8_30();

    OUTLINED_FUNCTION_2_58();
    if (v9)
    {
      OUTLINED_FUNCTION_0_66();
      v2 = v22;
    }

    OUTLINED_FUNCTION_3_52();
  }

  if (*(v1 + OBJC_IVAR___WFLibraryWorkflowsQuery_isRecentlyModified) == 1)
  {
    v13 = *(v2 + 16);
    if (v13 >= *(v2 + 24) >> 1)
    {
      OUTLINED_FUNCTION_0_66();
      v2 = v25;
    }

    OUTLINED_FUNCTION_6_5();
    *(v2 + 16) = v13 + 1;
    v14 = v2 + 16 * v13;
    *(v14 + 32) = 0xD000000000000014;
    *(v14 + 40) = v15;
  }

  if (*(v1 + OBJC_IVAR___WFLibraryWorkflowsQuery_isRecentlyRun) == 1)
  {
    v16 = *(v2 + 16);
    if (v16 >= *(v2 + 24) >> 1)
    {
      OUTLINED_FUNCTION_0_66();
      v2 = v26;
    }

    *(v2 + 16) = v16 + 1;
    v17 = v2 + 16 * v16;
    *(v17 + 32) = 0x6E65636572207369;
    *(v17 + 40) = 0xEF6E757220796C74;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  sub_1CA26E4D4();
  v18 = sub_1CA94C308();

  return v18;
}

id LibraryWorkflowsQuery.copy(with:)@<X0>(void *a1@<X8>)
{
  a1[3] = swift_getObjectType();
  *a1 = v3;

  return v3;
}

id sub_1CA62490C(uint64_t a1, void *a2)
{
  v4 = v3;
  v5 = v2;
  v7 = sub_1CA949F78();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  Library.performShortcutQuery(query:)(*(v2 + OBJC_IVAR___WFLibraryWorkflowsQuery_workflowQuery));
  if (!v3)
  {
    v69 = v7;
    v12 = v74[0];
    v73 = v74[1];
    sub_1CA94C218();
    v71 = sub_1CA94C648();
    v70 = sub_1CA2718A8(*(v2 + OBJC_IVAR___WFLibraryWorkflowsQuery_sortBy));
    if (*(v2 + OBJC_IVAR___WFLibraryWorkflowsQuery_nameContaining + 8))
    {
      v13 = *(v2 + OBJC_IVAR___WFLibraryWorkflowsQuery_nameContaining);
      v14 = *(v2 + OBJC_IVAR___WFLibraryWorkflowsQuery_nameContaining + 8);
      sub_1CA94C218();
      OUTLINED_FUNCTION_134();
      v15 = sub_1CA94C368();
    }

    else
    {
      v15 = 0;
    }

    v16 = (v2 + OBJC_IVAR___WFLibraryWorkflowsQuery_nameEqualing);
    v17 = *(v2 + OBJC_IVAR___WFLibraryWorkflowsQuery_nameEqualing + 8);
    v68 = v8;
    v72 = a2;
    if (v17)
    {
      v18 = *v16;
      sub_1CA94C218();
      OUTLINED_FUNCTION_134();
      v19 = sub_1CA94C368();
    }

    else
    {
      v19 = 0;
    }

    v20 = *(v5 + OBJC_IVAR___WFLibraryWorkflowsQuery_hasAssociatedAppBundleIdentifier);
    if (*(v5 + OBJC_IVAR___WFLibraryWorkflowsQuery_associatedAppBundleIdentifier + 8))
    {
      v21 = *(v5 + OBJC_IVAR___WFLibraryWorkflowsQuery_associatedAppBundleIdentifier);
      v22 = *(v5 + OBJC_IVAR___WFLibraryWorkflowsQuery_associatedAppBundleIdentifier + 8);
      sub_1CA94C218();
      v23 = sub_1CA94C368();
    }

    else
    {
      v23 = 0;
    }

    v24 = *(v5 + OBJC_IVAR___WFLibraryWorkflowsQuery_isRecentlyModified);
    v25 = *(v5 + OBJC_IVAR___WFLibraryWorkflowsQuery_isRecentlyRun);
    OUTLINED_FUNCTION_15_25();
    BYTE1(v67) = v26;
    LOBYTE(v67) = v27;
    v28 = v71;
    v30 = [v72 visibleReferencesForWorkflowIDs:v71 sortBy:v70 nameContaining:v15 nameEqualing:v19 hasAssociatedAppBundleIdentifier:v20 associatedAppBundleIdentifier:v23 isRecentlyModified:v67 isRecentlyRun:v29 limitTo:?];

    v31 = *(v12 + 16);
    v32 = sub_1CA94C218();
    v33 = sub_1CA623E2C(v32, 0, v31);
    if (*(v33 + 16) != v31)
    {
      v34 = *MEMORY[0x1E69E10B0];
      sub_1CA949C58();
      v35 = sub_1CA949F68();
      v36 = sub_1CA94CC18();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        *v37 = 0;
        _os_log_impl(&dword_1CA256000, v35, v36, "Duplicate shortcut identifiers found in the library, this should not happen", v37, 2u);
        MEMORY[0x1CCAA4BF0](v37, -1, -1);
      }

      (*(v68 + 8))(v11, v69);
    }

    v38 = [v30 descriptors];
    sub_1CA25B3D0(0, &qword_1EDB9F740, off_1E836F5A8);
    sub_1CA94C658();

    sub_1CA94C218();
    v39 = sub_1CA94C218();
    v74[0] = sub_1CA27295C(v39);
    sub_1CA623D88(v74, v33);

    v40 = v74[0];
    if (sub_1CA25B410())
    {
      sub_1CA2E8D58(MEMORY[0x1E69E7CC0], v41, v42, v43, v44, v45, v46, v47, v68, v69);
    }

    else
    {
      v48 = MEMORY[0x1E69E7CD0];
    }

    v74[0] = v48;
    v49 = *(v12 + 16);
    if (v49)
    {
      sub_1CA25B3D0(0, &qword_1EC4417C0, 0x1E69E0A68);
      v50 = (v12 + 40);
      do
      {
        v52 = *(v50 - 1);
        v51 = *v50;
        sub_1CA94C218();
        v53 = OUTLINED_FUNCTION_134();
        v55 = sub_1CA623D0C(v53, v54, 0);
        sub_1CA369DB0(&v75, v55);

        v50 += 2;
        --v49;
      }

      while (v49);
    }

    swift_bridgeObjectRelease_n();
    v56 = v73;
    v57 = *(v73 + 16);
    if (v57)
    {
      sub_1CA25B3D0(0, &qword_1EC4417C0, 0x1E69E0A68);
      v58 = (v56 + 40);
      do
      {
        v60 = *(v58 - 1);
        v59 = *v58;
        sub_1CA94C218();
        v61 = OUTLINED_FUNCTION_134();
        v63 = sub_1CA623D0C(v61, v62, 2);
        sub_1CA369DB0(&v75, v63);

        v58 += 2;
        --v57;
      }

      while (v57);
    }

    sub_1CA25B3D0(0, &qword_1EC441848, 0x1E69E0A70);
    v64 = sub_1CA624E64(0);
    v65 = objc_allocWithZone(type metadata accessor for LibraryWorkflowsQueryResult());
    v4 = sub_1CA6240D4(v40, v64, &OBJC_IVAR___WFLibraryWorkflowsQueryResult_descriptors, &OBJC_IVAR___WFLibraryWorkflowsQueryResult_state);
  }

  return v4;
}

id sub_1CA624E64(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_1CA25B3D0(0, &qword_1EC4417C0, 0x1E69E0A68);
  sub_1CA627754();
  v3 = sub_1CA94C8E8();

  v4 = [v2 initWithObjectType:a1 state:v3];

  return v4;
}

void sub_1CA624F18(uint64_t a1, void *a2)
{
  v4 = v2;
  Library.performShortcutQuery(query:)(*(v2 + OBJC_IVAR___WFLibraryWorkflowsQuery_workflowQuery));
  if (!v3)
  {
    v6 = sub_1CA94C648();

    v24 = sub_1CA2718A8(*(v4 + OBJC_IVAR___WFLibraryWorkflowsQuery_sortBy));
    if (*(v4 + OBJC_IVAR___WFLibraryWorkflowsQuery_nameContaining + 8))
    {
      v7 = *(v4 + OBJC_IVAR___WFLibraryWorkflowsQuery_nameContaining);
      v8 = *(v4 + OBJC_IVAR___WFLibraryWorkflowsQuery_nameContaining + 8);
      sub_1CA94C218();
      v9 = sub_1CA94C368();
    }

    else
    {
      v9 = 0;
    }

    if (*(v4 + OBJC_IVAR___WFLibraryWorkflowsQuery_nameEqualing + 8))
    {
      v10 = *(v4 + OBJC_IVAR___WFLibraryWorkflowsQuery_nameEqualing);
      v11 = *(v4 + OBJC_IVAR___WFLibraryWorkflowsQuery_nameEqualing + 8);
      sub_1CA94C218();
      v12 = sub_1CA94C368();
    }

    else
    {
      v12 = 0;
    }

    v13 = *(v4 + OBJC_IVAR___WFLibraryWorkflowsQuery_hasAssociatedAppBundleIdentifier);
    if (*(v4 + OBJC_IVAR___WFLibraryWorkflowsQuery_associatedAppBundleIdentifier + 8))
    {
      v14 = *(v4 + OBJC_IVAR___WFLibraryWorkflowsQuery_associatedAppBundleIdentifier);
      v15 = *(v4 + OBJC_IVAR___WFLibraryWorkflowsQuery_associatedAppBundleIdentifier + 8);
      sub_1CA94C218();
      v16 = sub_1CA94C368();
    }

    else
    {
      v16 = 0;
    }

    v17 = *(v4 + OBJC_IVAR___WFLibraryWorkflowsQuery_isRecentlyModified);
    v18 = *(v4 + OBJC_IVAR___WFLibraryWorkflowsQuery_isRecentlyRun);
    OUTLINED_FUNCTION_15_25();
    BYTE1(v23) = v19;
    LOBYTE(v23) = v20;
    v22 = [a2 visibleReferencesForWorkflowIDs:v6 sortBy:v24 nameContaining:v9 nameEqualing:v12 hasAssociatedAppBundleIdentifier:v13 associatedAppBundleIdentifier:v16 isRecentlyModified:v23 isRecentlyRun:v21 limitTo:?];

    [v22 count];
    sub_1CA94C988();
  }
}

id sub_1CA625140(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t (*a6)(id, id))
{
  v9 = a3;
  v10 = a4;
  v11 = a1;
  v12 = a6(v9, v10);

  return v12;
}

id sub_1CA62521C(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = a1;
  OUTLINED_FUNCTION_13_35();
  OUTLINED_FUNCTION_1_48();
  return OUTLINED_FUNCTION_11_33(v5, v6, v7, v8, v9, v10, v11, v12, v14, 0, 0, v15, SHIBYTE(v15));
}

id sub_1CA6252B8(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_allocWithZone(v3);
  v7 = a1;
  OUTLINED_FUNCTION_13_35();
  return OUTLINED_FUNCTION_11_33(v8, v9, a3, 0, 0, 0, v10, v11, v13, 0, 0, v14, SHIBYTE(v14));
}

id sub_1CA62538C(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = a1;
  OUTLINED_FUNCTION_1_48();
  return OUTLINED_FUNCTION_11_33(v5, v6, v7, v8, v9, v10, v11, v12, 1, 0, 0, 0, 0);
}

id sub_1CA625454()
{
  OUTLINED_FUNCTION_9_35();
  OUTLINED_FUNCTION_87();
  sub_1CA94C218();
  v3 = v2;
  OUTLINED_FUNCTION_1_48();
  return OUTLINED_FUNCTION_11_33(v4, v5, v6, v7, v8, v9, v10, v11, 1, v1, v0, 0, 0);
}

id sub_1CA6254CC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = objc_allocWithZone(v5);
  sub_1CA94C218();
  v11 = a1;
  OUTLINED_FUNCTION_13_35();
  return OUTLINED_FUNCTION_11_33(v12, v13, a5, 0, a3, a4, v14, v15, v17, 0, 0, v18, SHIBYTE(v18));
}

id sub_1CA6255E8()
{
  OUTLINED_FUNCTION_9_35();
  OUTLINED_FUNCTION_87();
  sub_1CA94C218();
  v3 = v2;
  OUTLINED_FUNCTION_13_35();
  OUTLINED_FUNCTION_1_48();
  return sub_1CA624334(v4, v5, v6, v7, v8, v9, v1, v0, v11, 0, 0, v12, SHIBYTE(v12));
}

id sub_1CA625660(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void))
{
  sub_1CA94C3A8();
  swift_getObjCClassMetadata();
  v8 = a3;
  v9 = a6();

  return v9;
}

id LibraryWorkflowsQuery.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1CA625808@<X0>(_BYTE *a1@<X8>)
{
  result = OUTLINED_FUNCTION_56();
  *a1 = result;
  return result;
}

uint64_t sub_1CA62583C@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1CA298470(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_1CA62586C@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1CA528440(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_1CA62589C@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1CA2984E0(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_1CA6258D4@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1CA2984E8(*a1);
  *a2 = result;
  a2[1] = BYTE1(result) & 1;
  return result;
}

uint64_t sub_1CA625908@<X0>(char *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1CA298510(*a1);
  *a2 = result;
  a2[1] = BYTE1(result) & 1;
  return result;
}

uint64_t sub_1CA625954@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1CA298540(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_1CA6259C8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1CA297E38(a1);
  *a2 = result;
  return result;
}

id sub_1CA625A08(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_1CA94C368();

  return v5;
}

uint64_t LibraryCollectionsQuery.debugDescription.getter()
{
  sub_1CA94D408();

  v3 = *(v0 + OBJC_IVAR___WFLibraryCollectionsQuery_groupingType);
  v1 = sub_1CA94C408();
  MEMORY[0x1CCAA1300](v1);

  return 0x676E6970756F7267;
}

uint64_t sub_1CA625B30(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr))
{
  a4(v6);
  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  v4 = sub_1CA94D7D8();
  __swift_destroy_boxed_opaque_existential_0(v6);
  return v4;
}

uint64_t sub_1CA625B8C(id a1)
{
  v9 = MEMORY[0x1E69E7CC0];
  v3 = *(v1 + OBJC_IVAR___WFLibraryCollectionsQuery_groupingType);
  if ((v3 & 2) != 0)
  {
    v4 = [a1 collections];
    sub_1CA25B3D0(0, &qword_1EC441850, 0x1E69E0DD0);
    v5 = sub_1CA94C658();

    sub_1CA27E3C0(v5);
  }

  if ((v3 & 4) != 0)
  {
    v6 = [a1 folders];
    sub_1CA25B3D0(0, &qword_1EC441850, 0x1E69E0DD0);
    v7 = sub_1CA94C658();

    sub_1CA27E3C0(v7);
  }

  return v9;
}

id sub_1CA625C88(void *a1)
{
  v1 = sub_1CA625B8C(a1);
  if (sub_1CA25B410())
  {
    sub_1CA2E8D58(MEMORY[0x1E69E7CC0], v2, v3, v4, v5, v6, v7, v8, v26, v27);
  }

  else
  {
    v9 = MEMORY[0x1E69E7CD0];
  }

  v27 = v9;
  v10 = sub_1CA25B410();
  if (!v10)
  {
LABEL_11:
    sub_1CA25B3D0(0, &qword_1EC4417C0, 0x1E69E0A68);
    v21 = sub_1CA94C3A8();
    v23 = sub_1CA623D0C(v21, v22, 2);
    sub_1CA369DB0(&v26, v23);

    sub_1CA25B3D0(0, &qword_1EC441848, 0x1E69E0A70);
    v24 = sub_1CA624E64(2);
    v25 = objc_allocWithZone(type metadata accessor for LibraryCollectionsQueryResult());
    return sub_1CA6240D4(v1, v24, &OBJC_IVAR___WFLibraryCollectionsQueryResult_descriptors, &OBJC_IVAR___WFLibraryCollectionsQueryResult_state);
  }

  v11 = v10;
  result = sub_1CA25B3D0(0, &qword_1EC4417C0, 0x1E69E0A68);
  if (v11 >= 1)
  {
    v13 = 0;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x1CCAA22D0](v13, v1);
      }

      else
      {
        v14 = *(v1 + 8 * v13 + 32);
      }

      v15 = v14;
      ++v13;
      v16 = [v14 identifier];
      v17 = sub_1CA94C3A8();
      v19 = v18;

      v20 = sub_1CA623D0C(v17, v19, 2);
      sub_1CA369DB0(&v26, v20);
    }

    while (v11 != v13);
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

uint64_t sub_1CA625EE0(void *a1)
{
  sub_1CA625B8C(a1);
  sub_1CA25B410();
  OUTLINED_FUNCTION_87();

  return sub_1CA94C988();
}

id sub_1CA625FC8(char a1)
{
  v3 = objc_allocWithZone(v1);
  v3[OBJC_IVAR___WFLibraryCollectionsQuery_groupingType] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

_BYTE *storeEnumTagSinglePayload for LibraryWorkflowsQuery.SortKey(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1CA626268()
{
  result = qword_1EC447780;
  if (!qword_1EC447780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447780);
  }

  return result;
}

unint64_t sub_1CA6262C0()
{
  result = qword_1EC447788;
  if (!qword_1EC447788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447788);
  }

  return result;
}

unint64_t sub_1CA626318()
{
  result = qword_1EC447790;
  if (!qword_1EC447790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447790);
  }

  return result;
}

unint64_t sub_1CA626370()
{
  result = qword_1EC447798;
  if (!qword_1EC447798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC447798);
  }

  return result;
}

unint64_t sub_1CA6263C8()
{
  result = qword_1EC4477A0;
  if (!qword_1EC4477A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4477A0);
  }

  return result;
}

uint64_t sub_1CA62641C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v7 = a2;
  v8 = 0;
  v39 = a2;
  v40 = sub_1CA94C218();
  v9 = (v40 + 40);
  for (i = a3; ; a3 = i)
  {
    v10 = *(v40 + 16);
    if (v8 == v10)
    {
      return swift_bridgeObjectRelease_n();
    }

    if (v8 >= v10)
    {
      break;
    }

    if (a3 == v7)
    {
      return swift_bridgeObjectRelease_n();
    }

    if (a3 < v39)
    {
      goto LABEL_20;
    }

    if (v7 >= a3)
    {
      goto LABEL_21;
    }

    v11 = *(v9 - 1);
    v12 = *v9;
    v13 = v9;
    v14 = *a5;
    sub_1CA94C218();
    v22 = sub_1CA271BF8();
    v23 = v14[2];
    v24 = (v15 & 1) == 0;
    v25 = v23 + v24;
    if (__OFADD__(v23, v24))
    {
      goto LABEL_22;
    }

    v26 = v15;
    if (v14[3] >= v25)
    {
      if ((a4 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444820, &qword_1CA9842F0);
        sub_1CA94D598();
      }
    }

    else
    {
      sub_1CA5C3E0C(v25, a4 & 1, v16, v17, v18, v19, v20, v21, v37, i, v39, SBYTE4(v39));
      v27 = *a5;
      v28 = sub_1CA271BF8();
      if ((v26 & 1) != (v29 & 1))
      {
        goto LABEL_24;
      }

      v22 = v28;
    }

    v30 = *a5;
    if (v26)
    {
      v31 = *(v30[7] + 8 * v22);

      *(v30[7] + 8 * v22) = v31;
    }

    else
    {
      v30[(v22 >> 6) + 8] |= 1 << v22;
      v32 = (v30[6] + 16 * v22);
      *v32 = v11;
      v32[1] = v12;
      *(v30[7] + 8 * v22) = v7;
      v33 = v30[2];
      v34 = __OFADD__(v33, 1);
      v35 = v33 + 1;
      if (v34)
      {
        goto LABEL_23;
      }

      v30[2] = v35;
    }

    v9 = v13 + 2;
    ++v7;
    ++v8;
    a4 = 1;
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_1CA94D878();
  __break(1u);
  return result;
}

uint64_t sub_1CA62660C(uint64_t *a1, uint64_t a2)
{
  v5 = a1[1];
  swift_bridgeObjectRetain_n();
  result = sub_1CA94D778();
  if (result < v5)
  {
    v7 = result;
    v8 = sub_1CA2B8B60(v5 / 2);
    v10[0] = v9;
    v10[1] = (v5 / 2);
    sub_1CA94C218();
    result = sub_1CA6268EC(v10, v11, a1, v7, a2);
    if (v2)
    {
      if (v5 < -1)
      {
        __break(1u);
        goto LABEL_5;
      }
    }

    else if (v5 < -1)
    {
LABEL_12:
      __break(1u);
      return result;
    }

    *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;
    swift_bridgeObjectRelease_n();
  }

LABEL_5:
  if (v5 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v5)
  {
    sub_1CA626738(0, v5, 1, a1, a2);
  }

  return swift_bridgeObjectRelease_n();
}

void sub_1CA626738(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (a3 != a2)
  {
    v29 = *a4;
    v6 = *a4 + 8 * a3 - 8;
    v7 = a1 - a3;
    while (2)
    {
      v27 = v6;
      v28 = a3;
      v8 = *(v29 + 8 * a3);
      v26 = v7;
      do
      {
        v9 = *v6;
        v10 = v8;
        v11 = v9;
        v30 = v10;
        v12 = [v10 identifier];
        sub_1CA94C3A8();

        v13 = [v11 identifier];
        sub_1CA94C3A8();

        if (*(a5 + 16) && (v14 = sub_1CA271BF8(), (v15 & 1) != 0))
        {
          v16 = *(*(a5 + 56) + 8 * v14);
          v17 = 1;
        }

        else
        {
          v16 = 0;
          v17 = 0;
        }

        if (*(a5 + 16) && (v18 = sub_1CA271BF8(), (v19 & 1) != 0))
        {
          v20 = *(*(a5 + 56) + 8 * v18);
          v21 = 1;
        }

        else
        {
          v20 = 0;
          v21 = 0;
        }

        if ((v17 & v21) != 1 || v16 >= v20)
        {
          break;
        }

        if (!v29)
        {
          __break(1u);
          return;
        }

        v23 = *v6;
        v8 = *(v6 + 8);
        *v6 = v8;
        *(v6 + 8) = v23;
        v6 -= 8;
      }

      while (!__CFADD__(v7++, 1));
      a3 = v28 + 1;
      v6 = v27 + 8;
      v7 = v26 - 1;
      if (v28 + 1 != a2)
      {
        continue;
      }

      break;
    }
  }
}

uint64_t sub_1CA6268EC(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6 = a3[1];
  if (v6 < 1)
  {
    swift_bridgeObjectRetain_n();
    v8 = MEMORY[0x1E69E7CC0];
LABEL_114:
    v148 = *a1;
    if (!*a1)
    {
      goto LABEL_157;
    }

    swift_bridgeObjectRetain_n();
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_116:
      v117 = v8 + 16;
      v118 = *(v8 + 16);
      for (i = v8; ; v8 = i)
      {
        if (v118 < 2)
        {

          return swift_bridgeObjectRelease_n();
        }

        v119 = *a3;
        if (!*a3)
        {
          goto LABEL_154;
        }

        v120 = (v8 + 16 * v118);
        v121 = *v120;
        v8 = v117;
        v122 = (v117 + 16 * v118);
        v123 = v122[1];
        v124 = (v119 + 8 * *v120);
        v125 = (v119 + 8 * *v122);
        v153 = (v119 + 8 * v123);
        sub_1CA94C218();
        sub_1CA62725C(v124, v125, v153, v148, a5);
        if (v142)
        {
          break;
        }

        if (v123 < v121)
        {
          goto LABEL_142;
        }

        if (v118 - 2 >= *v8)
        {
          goto LABEL_143;
        }

        v117 = v8;
        *v120 = v121;
        v120[1] = v123;
        v126 = *v8 - v118;
        if (*v8 < v118)
        {
          goto LABEL_144;
        }

        v118 = *v8 - 1;
        memmove(v122, v122 + 2, 16 * v126);
        *v8 = v118;
      }

      swift_bridgeObjectRelease_n();
    }

LABEL_151:
    v8 = sub_1CA627610(v8);
    goto LABEL_116;
  }

  swift_bridgeObjectRetain_n();
  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v143 = a5;
  while (2)
  {
    v9 = v7++;
    if (v7 >= v6)
    {
      goto LABEL_32;
    }

    v134 = v8;
    v8 = *a3;
    v139 = v6;
    v10 = *(*a3 + 8 * v9);
    v149 = *(*a3 + 8 * v7);
    v144 = v7;
    v11 = v10;
    v12 = [v149 identifier];
    v13 = sub_1CA94C3A8();
    v15 = v14;

    v16 = [v11 identifier];
    v17 = sub_1CA94C3A8();
    v19 = v18;

    v20 = sub_1CA311A0C(v13, v15, a5);
    LOBYTE(v13) = v21;

    v22 = sub_1CA311A0C(v17, v19, a5);
    LODWORD(v17) = v23;

    v7 = v144;

    v24 = v139;
    v25 = (v20 < v22) & ~v17;
    if (v13)
    {
      v25 = 0;
    }

    v137 = v25;
    v129 = v9;
    v26 = (v8 + 8 * v9 + 16);
    v132 = 8 * v9;
    for (j = 8 * v9 + 8; ; j += 8)
    {
      v145 = v7++;
      if (v7 >= v24)
      {
        break;
      }

      v28 = *(v26 - 1);
      v150 = v26;
      v29 = *v26;
      v30 = v28;
      v148 = v29;
      v31 = [v29 identifier];
      sub_1CA94C3A8();

      v32 = [v30 identifier];
      sub_1CA94C3A8();

      if (*(a5 + 16) && (v33 = sub_1CA271BF8(), (v34 & 1) != 0))
      {
        v8 = 0;
        v35 = *(*(a5 + 56) + 8 * v33);
      }

      else
      {
        v35 = 0;
        v8 = 1;
      }

      if (!*(a5 + 16) || (v36 = sub_1CA271BF8(), a5 = v143, (v37 & 1) == 0))
      {

LABEL_18:
        v24 = v139;
        v39 = v150;
        if (v137)
        {
          goto LABEL_21;
        }

        goto LABEL_19;
      }

      v38 = *(*(v143 + 56) + 8 * v36);

      if (v8)
      {
        goto LABEL_18;
      }

      v24 = v139;
      v39 = v150;
      if (((v137 ^ (v35 >= v38)) & 1) == 0)
      {
        break;
      }

LABEL_19:
      v26 = v39 + 1;
    }

    if (!v137)
    {
      v8 = v134;
      goto LABEL_31;
    }

LABEL_21:
    v40 = v145;
    v7 = v145 + 1;
    v41 = v129;
    if (v145 + 1 < v129)
    {
      goto LABEL_148;
    }

    if (v129 >= v7)
    {
      v8 = v134;
      v9 = v129;
      goto LABEL_32;
    }

    v42 = v132;
    v8 = v134;
    do
    {
      if (v41 != v40)
      {
        v43 = *a3;
        if (!*a3)
        {
          goto LABEL_155;
        }

        v44 = *(v43 + v42);
        *(v43 + v42) = *(v43 + j);
        *(v43 + j) = v44;
      }

      ++v41;
      j -= 8;
      v42 += 8;
      v65 = v41 < v40--;
    }

    while (v65);
LABEL_31:
    v9 = v129;
LABEL_32:
    v45 = a3[1];
    if (v7 >= v45)
    {
      goto LABEL_60;
    }

    if (__OFSUB__(v7, v9))
    {
      goto LABEL_147;
    }

    if (v7 - v9 >= a4)
    {
LABEL_60:
      if (v7 < v9)
      {
        goto LABEL_146;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v114 = *(v8 + 16);
        sub_1CA2E49C0();
        v8 = v115;
      }

      v68 = *(v8 + 16);
      v69 = v68 + 1;
      if (v68 >= *(v8 + 24) >> 1)
      {
        sub_1CA2E49C0();
        v8 = v116;
      }

      *(v8 + 16) = v69;
      v70 = (v8 + 32);
      v71 = (v8 + 32 + 16 * v68);
      *v71 = v9;
      v71[1] = v7;
      v152 = *a1;
      if (!*a1)
      {
        goto LABEL_156;
      }

      if (!v68)
      {
LABEL_110:
        v6 = a3[1];
        if (v7 >= v6)
        {
          goto LABEL_114;
        }

        continue;
      }

      v147 = v7;
      v148 = (v8 + 32);
      while (1)
      {
        v72 = v69 - 1;
        v73 = &v70[16 * v69 - 16];
        v74 = (v8 + 16 * v69);
        if (v69 >= 4)
        {
          break;
        }

        if (v69 == 3)
        {
          v75 = *(v8 + 32);
          v76 = *(v8 + 40);
          v85 = __OFSUB__(v76, v75);
          v77 = v76 - v75;
          v78 = v85;
LABEL_81:
          if (v78)
          {
            goto LABEL_133;
          }

          v90 = *v74;
          v89 = v74[1];
          v91 = __OFSUB__(v89, v90);
          v92 = v89 - v90;
          v93 = v91;
          if (v91)
          {
            goto LABEL_136;
          }

          v94 = *(v73 + 1);
          v95 = v94 - *v73;
          if (__OFSUB__(v94, *v73))
          {
            goto LABEL_139;
          }

          if (__OFADD__(v92, v95))
          {
            goto LABEL_141;
          }

          if (v92 + v95 >= v77)
          {
            if (v77 < v95)
            {
              v72 = v69 - 2;
            }

            goto LABEL_103;
          }

          goto LABEL_96;
        }

        if (v69 < 2)
        {
          goto LABEL_135;
        }

        v97 = *v74;
        v96 = v74[1];
        v85 = __OFSUB__(v96, v97);
        v92 = v96 - v97;
        v93 = v85;
LABEL_96:
        if (v93)
        {
          goto LABEL_138;
        }

        v99 = *v73;
        v98 = *(v73 + 1);
        v85 = __OFSUB__(v98, v99);
        v100 = v98 - v99;
        if (v85)
        {
          goto LABEL_140;
        }

        if (v100 < v92)
        {
          goto LABEL_110;
        }

LABEL_103:
        if (v72 - 1 >= v69)
        {
          __break(1u);
LABEL_128:
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
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
LABEL_149:
          __break(1u);
          goto LABEL_150;
        }

        v104 = *a3;
        if (!*a3)
        {
          goto LABEL_153;
        }

        v105 = v8;
        v106 = &v70[16 * v72 - 16];
        v107 = *v106;
        v108 = v72;
        v109 = &v70[16 * v72];
        v110 = *(v109 + 1);
        v111 = (v104 + 8 * *v106);
        v112 = (v104 + 8 * *v109);
        v8 = v104 + 8 * v110;
        a5 = v143;
        sub_1CA94C218();
        sub_1CA62725C(v111, v112, v8, v152, v143);
        if (v142)
        {
          swift_bridgeObjectRelease_n();
        }

        if (v110 < v107)
        {
          goto LABEL_128;
        }

        v113 = *(v105 + 16);
        if (v108 > v113)
        {
          goto LABEL_129;
        }

        *v106 = v107;
        *(v106 + 1) = v110;
        if (v108 >= v113)
        {
          goto LABEL_130;
        }

        v69 = v113 - 1;
        memmove(v109, v109 + 16, 16 * (v113 - 1 - v108));
        v8 = v105;
        *(v105 + 16) = v113 - 1;
        v7 = v147;
        v70 = v148;
        a5 = v143;
        if (v113 <= 2)
        {
          goto LABEL_110;
        }
      }

      v79 = &v70[16 * v69];
      v80 = *(v79 - 8);
      v81 = *(v79 - 7);
      v85 = __OFSUB__(v81, v80);
      v82 = v81 - v80;
      if (v85)
      {
        goto LABEL_131;
      }

      v84 = *(v79 - 6);
      v83 = *(v79 - 5);
      v85 = __OFSUB__(v83, v84);
      v77 = v83 - v84;
      v78 = v85;
      if (v85)
      {
        goto LABEL_132;
      }

      v86 = v74[1];
      v87 = v86 - *v74;
      if (__OFSUB__(v86, *v74))
      {
        goto LABEL_134;
      }

      v85 = __OFADD__(v77, v87);
      v88 = v77 + v87;
      if (v85)
      {
        goto LABEL_137;
      }

      if (v88 >= v82)
      {
        v102 = *v73;
        v101 = *(v73 + 1);
        v85 = __OFSUB__(v101, v102);
        v103 = v101 - v102;
        if (v85)
        {
          goto LABEL_145;
        }

        if (v77 < v103)
        {
          v72 = v69 - 2;
        }

        goto LABEL_103;
      }

      goto LABEL_81;
    }

    break;
  }

  v46 = v9 + a4;
  if (__OFADD__(v9, a4))
  {
    goto LABEL_149;
  }

  if (v46 >= v45)
  {
    v46 = a3[1];
  }

  if (v46 < v9)
  {
LABEL_150:
    __break(1u);
    goto LABEL_151;
  }

  if (v7 == v46)
  {
    goto LABEL_60;
  }

  v133 = v46;
  v135 = v8;
  v148 = *a3;
  v47 = *a3 + 8 * v7 - 8;
  v130 = v9;
  v48 = v9 - v7;
LABEL_41:
  v146 = v7;
  v49 = v47;
  v50 = *&v148[8 * v7];
  v138 = v48;
  v140 = v49;
  v51 = v49;
  while (1)
  {
    v52 = *v51;
    v53 = v50;
    v54 = v52;
    v151 = v53;
    v55 = [v53 identifier];
    sub_1CA94C3A8();

    v56 = [v54 identifier];
    sub_1CA94C3A8();

    if (*(a5 + 16) && (v57 = sub_1CA271BF8(), (v58 & 1) != 0))
    {
      v59 = *(*(a5 + 56) + 8 * v57);
      v60 = 1;
    }

    else
    {
      v59 = 0;
      v60 = 0;
    }

    if (*(a5 + 16) && (v61 = sub_1CA271BF8(), (v62 & 1) != 0))
    {
      v63 = *(*(a5 + 56) + 8 * v61);
      v64 = 1;
    }

    else
    {
      v63 = 0;
      v64 = 0;
    }

    v65 = (v60 & v64) == 1 && v59 < v63;
    if (!v65)
    {
LABEL_58:
      v7 = v146 + 1;
      v47 = v140 + 8;
      v48 = v138 - 1;
      if (v146 + 1 == v133)
      {
        v7 = v133;
        v8 = v135;
        v9 = v130;
        goto LABEL_60;
      }

      goto LABEL_41;
    }

    if (!v148)
    {
      break;
    }

    v66 = *v51;
    v50 = *(v51 + 8);
    *v51 = v50;
    *(v51 + 8) = v66;
    v51 -= 8;
    if (__CFADD__(v48++, 1))
    {
      goto LABEL_58;
    }
  }

  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_153:
  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_154:

  __break(1u);
LABEL_155:
  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_156:
  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_157:
  result = swift_bridgeObjectRelease_n();
  __break(1u);
  return result;
}