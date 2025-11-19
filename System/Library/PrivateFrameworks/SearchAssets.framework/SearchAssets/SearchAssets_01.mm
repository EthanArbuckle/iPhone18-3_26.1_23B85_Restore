uint64_t sub_2157FAE94(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73EC0, &qword_21580D748);
  OUTLINED_FUNCTION_2_2(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v8);
  v10 = &v13[-v9];
  v11 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v11);
  sub_2157FB4D4();
  sub_21580BDF0();
  if (!v1)
  {
    v13[31] = 0;
    v11 = sub_21580BCC0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73EC8, &qword_21580D750);
    v13[15] = 1;
    sub_2157FB528(&qword_28119CC28);
    OUTLINED_FUNCTION_3_2();
    sub_21580BCD0();
    (*(v5 + 8))(v10, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v11;
}

uint64_t sub_2157FB070@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2157FA9B8(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

unint64_t sub_2157FB0C0()
{
  result = qword_28119D010;
  if (!qword_28119D010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28119D010);
  }

  return result;
}

unint64_t sub_2157FB114()
{
  result = qword_28119CDD0;
  if (!qword_28119CDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28119CDD0);
  }

  return result;
}

uint64_t sub_2157FB168(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA73E98, &qword_21580D580);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2157FB1E0()
{
  result = qword_27CA73EB0;
  if (!qword_27CA73EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA73EB0);
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_2157FB250(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2157FB290(uint64_t result, int a2, int a3)
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

unint64_t sub_2157FB2E0()
{
  result = qword_27CA73EB8;
  if (!qword_27CA73EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA73EB8);
  }

  return result;
}

uint64_t sub_2157FB33C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2157FABB8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2157FB364(uint64_t a1)
{
  v2 = sub_2157FB4D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2157FB3A0(uint64_t a1)
{
  v2 = sub_2157FB4D4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2157FB3DC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2157FAE94(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

unint64_t sub_2157FB428()
{
  result = qword_28119D000;
  if (!qword_28119D000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28119D000);
  }

  return result;
}

unint64_t sub_2157FB480()
{
  result = qword_28119D008;
  if (!qword_28119D008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28119D008);
  }

  return result;
}

unint64_t sub_2157FB4D4()
{
  result = qword_28119CDE8;
  if (!qword_28119CDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28119CDE8);
  }

  return result;
}

uint64_t sub_2157FB528(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA73EC8, &qword_21580D750);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2157FB594(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
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

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_2157FB61C(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2157FB6FC()
{
  result = qword_27CA73EE0;
  if (!qword_27CA73EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA73EE0);
  }

  return result;
}

unint64_t sub_2157FB754()
{
  result = qword_28119CDD8;
  if (!qword_28119CDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28119CDD8);
  }

  return result;
}

unint64_t sub_2157FB7AC()
{
  result = qword_28119CDE0;
  if (!qword_28119CDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28119CDE0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_4(uint64_t a1)
{

  return MEMORY[0x2821FDB68](v3 - 88, v3 - 66, v1, v2, a1);
}

uint64_t sub_2157FB87C()
{
  v0 = sub_21580B6F0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v3 = [objc_opt_self() currentLocale];
  sub_21580B6E0();

  v4 = sub_21580B6D0();
  v5 = *(v1 + 8);
  v6 = OUTLINED_FUNCTION_3_3();
  v7(v6);
  return v4;
}

id sub_2157FB994()
{
  result = [objc_opt_self() sharedConfiguration];
  if (result)
  {
    return sub_2157FC448(result);
  }

  return result;
}

id sub_2157FB9F0(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();
  v6 = v5;

  if (v6)
  {
    OUTLINED_FUNCTION_3_3();
    v7 = sub_21580B880();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id sub_2157FBA88(void *a1)
{
  v1 = a1;
  OUTLINED_FUNCTION_3_3();
  sub_2157FBB24();
  v3 = v2;

  if (v3)
  {
    OUTLINED_FUNCTION_3_3();
    v4 = sub_21580B880();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t sub_2157FBB24()
{
  v0 = sub_21580B880();
  v1 = MGCopyAnswer();

  if (!v1)
  {
    return 0;
  }

  if (swift_dynamicCast())
  {
    return v3;
  }

  return 0;
}

uint64_t sub_2157FBBC8()
{
  if (qword_27CA73998 != -1)
  {
    swift_once();
  }

  if (byte_27CA74CB0)
  {
    return 2;
  }

  else
  {
    return 4;
  }
}

uint64_t sub_2157FBC5C()
{
  v1 = sub_2157FC4B8(v0);
  if (v2)
  {
    v3 = objc_opt_self();
    OUTLINED_FUNCTION_27();
    v4 = sub_21580B880();
    v5 = [v3 safariAssistantAssetManagerWithLocale_];

    OUTLINED_FUNCTION_27();
    v6 = sub_21580B880();

    v7 = [v5 assetVersionForLocale_];

    swift_unknownObjectRelease();
    if (v7)
    {
      v1 = sub_21580B890();
    }

    else
    {
      return 0;
    }
  }

  return v1;
}

id sub_2157FC09C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3();
  if (v3)
  {
    v4 = sub_21580B880();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void *sub_2157FC0F8()
{
  v1 = *(v0 + OBJC_IVAR___SATrialExperiment__deploymentID);
  v2 = v1;
  return v1;
}

void *sub_2157FC15C()
{
  v1 = *(v0 + OBJC_IVAR___SATrialExperiment__compatibilityVersion);
  v2 = v1;
  return v1;
}

id _sSo12SADeviceInfoC12SearchAssetsEABycfC_0()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

id SATrialExperiment.init()()
{
  v1 = (v0 + OBJC_IVAR___SATrialExperiment__experimentNamespace);
  *v1 = 0;
  v1[1] = 0;
  v2 = (v0 + OBJC_IVAR___SATrialExperiment__experimentID);
  *v2 = 0;
  v2[1] = 0;
  v3 = (v0 + OBJC_IVAR___SATrialExperiment__treatmentID);
  *v3 = 0;
  v3[1] = 0;
  *(v0 + OBJC_IVAR___SATrialExperiment__deploymentID) = 0;
  *(v0 + OBJC_IVAR___SATrialExperiment__compatibilityVersion) = 0;
  *(v0 + OBJC_IVAR___SATrialExperiment__allocationStatus) = 0;
  v5.super_class = SATrialExperiment;
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t sub_2157FC38C()
{
  result = sub_2157FC3B0();
  byte_27CA74CB0 = result & 1;
  return result;
}

uint64_t sub_2157FC3B0()
{
  v0 = sub_21580B880();
  v1 = MGCopyAnswer();

  if (v1)
  {
    return swift_dynamicCast() & v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2157FC448(void *a1)
{
  v2 = [a1 countryCode];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_21580B890();

  return v3;
}

uint64_t sub_2157FC4B8(void *a1)
{
  v1 = [a1 systemLocale];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_21580B890();

  return v3;
}

uint64_t OUTLINED_FUNCTION_2_4@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + a1);
  v4 = *v3;
  v5 = v3[1];
}

uint64_t getEnumTagSinglePayload for ResourceAccessOutcome(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0x83)
  {
    if (a2 + 125 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 125) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 126;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x7E;
  v5 = v6 - 126;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ResourceAccessOutcome(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 125 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 125) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0x83)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0x82)
  {
    v6 = ((a2 - 131) >> 8) + 1;
    *result = a2 + 125;
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
          *result = a2 + 125;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_2157FC6EC(char a1)
{
  sub_21580BDC0();
  MEMORY[0x216071A90](qword_21580DA40[a1]);
  return sub_21580BDE0();
}

uint64_t sub_2157FC740(uint64_t a1)
{
  sub_21580BDC0();
  MEMORY[0x216071A90](a1);
  return sub_21580BDE0();
}

uint64_t sub_2157FC788()
{
  sub_21580BDC0();
  OUTLINED_FUNCTION_0_4();
  return sub_21580BDE0();
}

uint64_t sub_2157FC7F8(uint64_t a1, char a2)
{
  sub_21580BDC0();
  MEMORY[0x216071A90](qword_21580DA40[a2]);
  return sub_21580BDE0();
}

uint64_t sub_2157FC84C(uint64_t a1, uint64_t a2)
{
  sub_21580BDC0();
  MEMORY[0x216071A90](a2);
  return sub_21580BDE0();
}

uint64_t sub_2157FC890()
{
  sub_21580BDC0();
  OUTLINED_FUNCTION_0_4();
  return sub_21580BDE0();
}

uint64_t sub_2157FC8C8(uint64_t a1)
{
  v3 = a1 - 496;
  if (!(!v2 & v1))
  {
    result = 45;
    switch(v3)
    {
      case 0:
        return 15;
      case 1:
        return 16;
      case 2:
        return 17;
      case 3:
        return 18;
      case 4:
        return 19;
      case 5:
        return 20;
      case 6:
        return 21;
      case 7:
        return 22;
      case 8:
        return 23;
      case 9:
        return 24;
      case 10:
        return 25;
      case 11:
        return 26;
      case 12:
        return 27;
      case 13:
        return 28;
      case 14:
        return 29;
      case 15:
        return 30;
      case 16:
        return 31;
      case 17:
        return 32;
      case 18:
        return 33;
      case 19:
        return 34;
      case 20:
        return 35;
      case 21:
      case 22:
      case 23:
      case 24:
      case 25:
      case 26:
      case 27:
      case 28:
      case 29:
      case 30:
      case 31:
      case 32:
      case 33:
      case 34:
      case 35:
      case 36:
      case 37:
      case 38:
      case 39:
      case 40:
      case 41:
      case 42:
      case 43:
      case 44:
      case 45:
      case 46:
      case 47:
      case 48:
      case 49:
      case 50:
      case 51:
      case 52:
      case 53:
      case 63:
      case 64:
      case 65:
      case 66:
      case 67:
      case 68:
      case 69:
      case 70:
      case 71:
      case 72:
      case 73:
      case 74:
      case 75:
      case 76:
      case 77:
      case 78:
      case 82:
      case 83:
        return 126;
      case 54:
        return 36;
      case 55:
        return 37;
      case 56:
        return 38;
      case 57:
        return 39;
      case 58:
        return 40;
      case 59:
        return 41;
      case 60:
        return 42;
      case 61:
        return 43;
      case 62:
        return 44;
      case 79:
        return result;
      case 80:
        return 46;
      case 81:
        return 47;
      case 84:
        return 48;
      case 85:
        return 49;
      case 86:
        return 50;
      case 87:
        return 51;
      default:
        JUMPOUT(0);
    }
  }

  switch(a1)
  {
    case 700:
      return 56;
    case 701:
      return 57;
    case 702:
      return 58;
    case 1101:
      return 78;
    case 1102:
      return 79;
    case 1200:
      return 80;
    case 1420:
      return 105;
    case 1600:
      return 121;
    case 1601:
      return 122;
    case 1700:
      return 123;
    case 1701:
      return 124;
    case 1702:
      return 125;
  }

  return 126;
}

uint64_t sub_2157FCEE8(uint64_t result)
{
  switch(result)
  {
    case 0:
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
    case 15:
    case 16:
    case 17:
    case 18:
    case 19:
    case 20:
    case 21:
    case 23:
    case 24:
    case 25:
    case 26:
    case 27:
    case 28:
    case 29:
    case 30:
    case 31:
    case 32:
    case 33:
    case 34:
    case 35:
    case 37:
    case 38:
    case 39:
    case 50:
    case 60:
    case 61:
    case 62:
    case 63:
    case 65:
    case 66:
    case 67:
    case 100:
      return result;
    case 22:
    case 36:
    case 40:
    case 41:
    case 42:
    case 43:
    case 44:
    case 45:
    case 46:
    case 47:
    case 48:
    case 49:
    case 51:
    case 52:
    case 53:
    case 54:
    case 55:
    case 56:
    case 57:
    case 58:
    case 59:
    case 64:
    case 68:
    case 69:
    case 70:
    case 71:
    case 72:
    case 73:
    case 74:
    case 75:
    case 76:
    case 77:
    case 78:
    case 79:
    case 80:
    case 81:
    case 82:
    case 83:
    case 84:
    case 85:
    case 86:
    case 87:
    case 88:
    case 89:
    case 90:
    case 91:
    case 92:
    case 93:
    case 94:
    case 95:
    case 96:
    case 97:
    case 98:
    case 99:
      goto LABEL_9;
    default:
      if ((result - 200) >= 3 && (result - 600) >= 3 && (result - 300) >= 2 && (result - 400) >= 2 && result != 500 && result != 700)
      {
LABEL_9:
        result = 0;
      }

      break;
  }

  return result;
}

uint64_t sub_2157FCF8C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2157FC8C8(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_2157FCFB8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2157FCED4(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_2157FD030@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2157FCEE8(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

unint64_t sub_2157FD074()
{
  result = qword_28119D220;
  if (!qword_28119D220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28119D220);
  }

  return result;
}

unint64_t sub_2157FD0CC()
{
  result = qword_27CA73F20;
  if (!qword_27CA73F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA73F20);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_4()
{

  return sub_21580B920();
}

void sub_2157FD158(uint64_t a1)
{
  v1 = *(a1 + 80);
  v2 = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v8 = *(v2 - 8) + 64;
    sub_2157FE62C();
    if (v5 <= 0x3F)
    {
      v9 = *(v4 - 8) + 64;
      v6 = sub_21580B6C0();
      if (v7 <= 0x3F)
      {
        v10 = *(v6 - 8) + 64;
        swift_initClassMetadata2();
      }
    }
  }
}

void *sub_2157FD298()
{
  OUTLINED_FUNCTION_0_5();
  v2 = v1;
  if ((*(v0 + *(v3 + 120)) & 1) == 0)
  {
    (*(v1 + 400))();
  }

  swift_weakDestroy();
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[8];
  v7 = v0[9];

  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_3_1();
  (*(*(*(v2 + 80) - 8) + 8))(v0 + *(v8 + 112));
  OUTLINED_FUNCTION_3_1();

  OUTLINED_FUNCTION_3_1();
  sub_2157FEE4C(v0 + *(v10 + 136), &qword_27CA73F60, &qword_21580E0A0);
  OUTLINED_FUNCTION_3_1();
  v12 = *(v11 + 144);
  v13 = sub_21580B6C0();
  OUTLINED_FUNCTION_6_1(v13);
  (*(v14 + 8))(v0 + v12);
  OUTLINED_FUNCTION_3_1();
  v16 = *(v0 + *(v15 + 152));

  return v0;
}

uint64_t sub_2157FD424()
{
  v1 = v0;
  OUTLINED_FUNCTION_0_5();
  v3 = *(v0 + *(v2 + 152));
  v5 = *(v4 + 80);
  v6 = *(v4 + 88);
  v7 = type metadata accessor for ActivitySpan.ActivityData();

  v36 = v7;
  sub_21580B378(sub_2157FEB30);

  v42 = v38;
  v43 = v39;
  v44 = v40;
  v45 = v41;
  v8 = *(v1 + *(*v1 + 128));
  sub_21580BAC0();
  sub_21580B780();
  sub_21580BAC0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73D60, &unk_21580CEB0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_21580CC20;
  sub_2157FDAEC();
  v10 = sub_21580BC00();
  v12 = v11;
  v13 = MEMORY[0x277D837D0];
  *(v9 + 56) = MEMORY[0x277D837D0];
  v14 = sub_2157EDE30();
  *(v9 + 64) = v14;
  *(v9 + 32) = v10;
  *(v9 + 40) = v12;
  v15 = sub_2157FDA98();
  *(v9 + 96) = v13;
  *(v9 + 104) = v14;
  *(v9 + 72) = v15;
  *(v9 + 80) = v16;
  v17 = sub_2157FDA44();
  *(v9 + 136) = v13;
  *(v9 + 144) = v14;
  v37 = v14;
  *(v9 + 112) = v17;
  *(v9 + 120) = v18;
  sub_21580B780();

  if ((BYTE1(v43) & 1) == 0)
  {
    sub_21580BAC0();
    v19 = OUTLINED_FUNCTION_5_1();
    *(v19 + 16) = xmmword_21580C9B0;
    v20 = sub_21580BC00();
    *(v19 + 56) = MEMORY[0x277D837D0];
    *(v19 + 64) = v14;
    *(v19 + 32) = v20;
    *(v19 + 40) = v21;
    OUTLINED_FUNCTION_3_4();
    sub_21580B780();

    v22 = v44;
    if (v44)
    {

      sub_21580BAC0();
      v23 = OUTLINED_FUNCTION_5_1();
      *(v23 + 16) = xmmword_21580C9B0;
      *(v23 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73F38, &qword_21580DF70);
      *(v23 + 64) = sub_2157EF214(&qword_27CA73F40, &qword_27CA73F38, &qword_21580DF70);
      *(v23 + 32) = v22;
      OUTLINED_FUNCTION_3_4();
      sub_21580B780();
    }
  }

  v24 = *(&v43 + 1);
  if (*(&v43 + 1))
  {

    sub_21580BAC0();
    v25 = OUTLINED_FUNCTION_5_1();
    *(v25 + 16) = xmmword_21580C9B0;
    *(v25 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73F28, &qword_21580E0E0);
    *(v25 + 64) = sub_2157EF214(&qword_27CA73F30, &qword_27CA73F28, &qword_21580E0E0);
    *(v25 + 32) = v24;
    OUTLINED_FUNCTION_3_4();
    sub_21580B780();
  }

  v26 = *(&v44 + 1);
  result = sub_215802A1C(*(&v44 + 1));
  v28 = v36;
  if (result)
  {
    v29 = result;
    if (result < 1)
    {
      __break(1u);
      return result;
    }

    v30 = 0;
    do
    {
      if ((v26 & 0xC000000000000001) != 0)
      {
        MEMORY[0x2160718D0](v30, v26);
      }

      else
      {
        v31 = *(v26 + 8 * v30 + 32);
        swift_unknownObjectRetain();
      }

      ++v30;
      sub_21580BAC0();
      v32 = OUTLINED_FUNCTION_5_1();
      *(v32 + 16) = xmmword_21580C9B0;
      swift_unknownObjectRetain();
      v33 = sub_21580B8E0();
      *(v32 + 56) = MEMORY[0x277D837D0];
      *(v32 + 64) = v37;
      *(v32 + 32) = v33;
      *(v32 + 40) = v34;
      sub_21580B780();
      swift_unknownObjectRelease();
    }

    while (v29 != v30);

    v28 = v36;
  }

  sub_21580BAC0();
  OUTLINED_FUNCTION_3_4();
  sub_21580B780();
  if (sub_2157FDB54())
  {
    sub_21580BAD0();
    OUTLINED_FUNCTION_3_4();
    sub_21580B780();
  }

  OUTLINED_FUNCTION_6_1(v28);
  return (*(v35 + 8))(&v42, v28);
}

uint64_t sub_2157FD9BC(void (*a1)(void))
{
  OUTLINED_FUNCTION_3_1();
  v4 = *(*(v1 + *(v3 + 152)) + 16);

  os_unfair_lock_lock(v4);
  sub_2157FE78C(v1, a1);
  os_unfair_lock_unlock(v4);
}

uint64_t sub_2157FDA44()
{
  OUTLINED_FUNCTION_0_5();
  v1 = *(v0 + 80);
  OUTLINED_FUNCTION_1_5();
  return (*(*(v2 + 88) + 24))();
}

uint64_t sub_2157FDA98()
{
  OUTLINED_FUNCTION_0_5();
  v1 = *(v0 + 80);
  OUTLINED_FUNCTION_1_5();
  return (*(*(v2 + 88) + 32))();
}

uint64_t sub_2157FDAEC()
{
  OUTLINED_FUNCTION_0_5();
  v1 = *(v0 + 112);
  v3 = *(*(v2 + 88) + 40);
  OUTLINED_FUNCTION_1_5();
  return v5(*(v4 + 80));
}

uint64_t sub_2157FDB54()
{
  OUTLINED_FUNCTION_0_5();
  v2 = *(v1 + 80);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v6 = v13 - v5;
  OUTLINED_FUNCTION_1_5();
  (*(v8 + 16))(v6, v0 + *(v7 + 112), v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73F48, &qword_21580DF78);
  if (swift_dynamicCast())
  {
    sub_2157E59C0(v13, v15);
    v9 = v16;
    v10 = v17;
    __swift_project_boxed_opaque_existential_1(v15, v16);
    v11 = (*(v10 + 8))(v9, v10);
    __swift_destroy_boxed_opaque_existential_1(v15);
  }

  else
  {
    v14 = 0;
    memset(v13, 0, sizeof(v13));
    sub_2157FEE4C(v13, &unk_27CA73F50, &unk_21580DF80);
    v11 = 0;
  }

  return v11 & 1;
}

uint64_t sub_2157FDCCC()
{
  v1 = sub_21580B6C0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_3_1();
  (*(v2 + 16))(v5, v0 + *(v6 + 144), v1);
  sub_21580B680();
  return (*(v2 + 8))(v5, v1);
}

uint64_t sub_2157FDE2C()
{
  v1 = v0;
  v2 = *v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73F60, &qword_21580E0A0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v50[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v50[-v9];
  v11 = *(v2 + 80);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v8);
  v16 = &v50[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v14);
  v18 = &v50[-v17];
  v19 = *(v1 + 40);
  v60 = *(v1 + 24);
  v61 = v19;
  v62 = *(v1 + 56);
  v63 = *(v1 + 72);
  v20 = *(&v19 + 1);
  v54 = *(v2 + 88);
  v21 = type metadata accessor for ActivitySpan.ActivityData();
  v22 = *(v21 - 8);
  v23 = *(v22 + 16);
  v53 = v21;
  v23(v55, &v60);
  sub_2157FE7E0(v20);
  if ((BYTE1(v61) & 1) == 0)
  {
    v24 = v62;
    if (v62)
    {
      v52 = *(&v60 + 1);
      v25 = v60;
      v51 = v61;
      OUTLINED_FUNCTION_8_0();
      (*(v12 + 16))(v18, v1 + *(v26 + 112), v11);
      OUTLINED_FUNCTION_8_0();
      v28 = *(v27 + 136);
      swift_beginAccess();
      sub_2157FED98(v1 + v28, v10);
      v29 = sub_21580B7C0();
      result = __swift_getEnumTagSinglePayload(v10, 1, v29);
      if (result != 1)
      {
        v31 = v10;
        OUTLINED_FUNCTION_8_0();
        v33 = *(v1 + *(v32 + 128));

        sub_2157FE4FC(v31, v33, v25, v52, v51, v24, v11, v54);

        (*(v12 + 8))(v18, v11);
        OUTLINED_FUNCTION_6_1(v29);
        (*(v34 + 8))(v31, v29);
        goto LABEL_7;
      }

LABEL_14:
      __break(1u);
      return result;
    }
  }

  OUTLINED_FUNCTION_8_0();
  (*(v12 + 16))(v16, v1 + *(v35 + 112), v11);
  OUTLINED_FUNCTION_8_0();
  v37 = *(v36 + 136);
  swift_beginAccess();
  sub_2157FED98(v1 + v37, v7);
  v38 = sub_21580B7C0();
  result = __swift_getEnumTagSinglePayload(v7, 1, v38);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_8_0();
  sub_2157FE46C(v7, *(v1 + *(v39 + 128)), v11, v54);
  (*(v12 + 8))(v16, v11);
  OUTLINED_FUNCTION_6_1(v38);
  (*(v40 + 8))(v7, v38);
LABEL_7:
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v42 = Strong;
    v43 = type metadata accessor for ActivitySpan();
    sub_2157F9CE0(v1, v42, v43, &off_2827B56D8);
    v58 = 0uLL;
    v59 = 0;
    *&v57[6] = 0;
    *&v57[14] = 0;

    v44 = *(v22 + 8);
    v45 = v53;
    v44(&v60, v53);
    v46 = *(v1 + 40);
    v55[0] = *(v1 + 24);
    v47 = *(v1 + 56);
    v55[1] = v46;
    v55[2] = v47;
    v56 = *(v1 + 72);
    *(v1 + 24) = v58;
    *(v1 + 40) = v59;
    *(v1 + 41) = 1;
    *(v1 + 42) = *v57;
    v48 = MEMORY[0x277D84F90];
    *(v1 + 56) = *&v57[14];
    *(v1 + 64) = v48;
    *(v1 + 72) = 0;
    v44(v55, v45);
    OUTLINED_FUNCTION_8_0();
    *(v1 + *(v49 + 120)) = 1;
    return swift_weakAssign();
  }

  else
  {
    if (sub_2157FDB54())
    {
      sub_21580BAD0();
      sub_21580B780();
    }

    return (*(v22 + 8))(&v60, v53);
  }
}

uint64_t sub_2157FE3CC(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  OUTLINED_FUNCTION_3_1();
  v10 = *(*(v4 + *(v9 + 152)) + 16);

  os_unfair_lock_lock(v10);
  sub_2157FE9B8(v4, a1, a2, a3, a4);
  os_unfair_lock_unlock(v10);
}

uint64_t sub_2157FE46C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_21580BB00();
  (*(a4 + 40))(a3, a4);

  return sub_21580B7A0();
}

void sub_2157FE4FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = sub_21580BB00();
  v17 = (*(a8 + 40))(a7, a8);
  LOBYTE(v20) = a5;
  sub_2157EC660(v16, a2, v17, v18, v19, a1, a3, a4, v20, a6);
}

uint64_t sub_2157FE5BC()
{
  sub_2157FD298();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void sub_2157FE62C()
{
  if (!qword_28119CC60)
  {
    sub_21580B7C0();
    v0 = sub_21580BB40();
    if (!v1)
    {
      atomic_store(v0, &qword_28119CC60);
    }
  }
}

uint64_t sub_2157FE684()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_2157FE6E8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 40);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2157FE728(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2157FE78C(uint64_t result, void (*a2)(void))
{
  if ((*(result + *(*result + 120)) & 1) == 0)
  {
    a2();
    return sub_2157FDE2C();
  }

  return result;
}

void sub_2157FE7E0(uint64_t a1)
{
  if (sub_2157FEB38(a1))
  {
    OUTLINED_FUNCTION_3_1();
    v3 = *(v1 + *(v2 + 128));
    sub_21580BAB0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73D60, &unk_21580CEB0);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_21580CC30;
    v5 = sub_2157FDA98();
    v7 = v6;
    v8 = MEMORY[0x277D837D0];
    *(v4 + 56) = MEMORY[0x277D837D0];
    v9 = sub_2157EDE30();
    *(v4 + 64) = v9;
    *(v4 + 32) = v5;
    *(v4 + 40) = v7;
    sub_2157EDDE0();
    OUTLINED_FUNCTION_7_1();
    v10 = sub_21580B840();
    *(v4 + 96) = v8;
    *(v4 + 104) = v9;
    *(v4 + 72) = v10;
    *(v4 + 80) = v11;
    OUTLINED_FUNCTION_3_4();
    sub_21580B780();

    sub_2157FDA44();
    v12 = sub_2157FDA98();
    v14 = v13;

    MEMORY[0x216071600](46, 0xE100000000000000);
    MEMORY[0x216071600](v12, v14);

    v15 = sub_21580B880();

    OUTLINED_FUNCTION_7_1();
    v16 = sub_21580B820();
    AnalyticsSendEvent();
  }
}

uint64_t sub_2157FE9B8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(a1 + 24) = a2;
  *(a1 + 32) = a3;
  *(a1 + 40) = a4;
  *(a1 + 41) = 0;
  v5 = *(a1 + 56);
  *(a1 + 56) = a5;
}

uint64_t sub_2157FEA04@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v3 = *(a1 + 5);
  v11[0] = *(a1 + 3);
  v11[1] = v3;
  v12 = *(a1 + 7);
  v4 = v12;
  v13 = a1[9];
  v5 = v13;
  *a2 = v11[0];
  *(a2 + 16) = v3;
  *(a2 + 32) = v4;
  *(a2 + 48) = v5;
  v6 = *(v2 + 80);
  v7 = *(v2 + 88);
  v8 = type metadata accessor for ActivitySpan.ActivityData();
  return (*(*(v8 - 8) + 16))(v10, v11, v8);
}

uint64_t sub_2157FEB38(uint64_t a1)
{
  v2 = v1;
  OUTLINED_FUNCTION_0_5();
  v5 = v4;
  v7 = *(v6 + 80);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v10);
  v12 = &v30 - v11;
  (*(v8 + 16))(&v30 - v11, v2 + *(v13 + 112), v7);
  DynamicType = swift_getDynamicType();
  (*(v8 + 8))(v12, v7);
  v16 = dynamic_cast_existential_1_conditional(DynamicType);
  result = 0;
  if (v16)
  {
    if (a1)
    {
      v18 = v15;
      v19 = *(v15 + 16);

      v20 = v19(v16, v18);
      v22 = v21;
      v23 = *(*(v5 + 88) + 16);
      sub_21580B9E0();
      v24 = sub_21580BB60();
      swift_isUniquelyReferenced_nonNull_native();
      v30 = a1;
      sub_2157F9884(v24, v20, v22);

      v25 = v30;
      v26 = (*(v18 + 8))(v16, v18);
      v28 = v27;
      sub_2157FDCCC();
      v29 = sub_21580BA90();
      swift_isUniquelyReferenced_nonNull_native();
      v31 = v25;
      sub_2157F9884(v29, v26, v28);

      return v31;
    }
  }

  return result;
}

uint64_t sub_2157FED98(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73F60, &qword_21580E0A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t dynamic_cast_existential_1_conditional(uint64_t a1)
{
  if (swift_conformsToProtocol2())
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2157FEE4C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_6_1(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_5_1()
{

  return swift_allocObject();
}

uint64_t sub_2157FEF0C()
{
  v0 = sub_21580B7F0();
  __swift_allocate_value_buffer(v0, qword_28119DA40);
  __swift_project_value_buffer(v0, qword_28119DA40);
  return sub_21580B7E0();
}

BOOL sub_2157FEF84(uint64_t a1)
{
  v1 = 0;
  do
  {
    v2 = v1;
    v1 = 1;
  }

  while ((v2 & 1) == 0 && qword_2827B47D0 != a1);
  return (v2 & 1) == 0;
}

uint64_t sub_2157FEFAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  v7 = v6;
  v44 = a4;
  v45 = a6;
  v42 = a5;
  v43 = a3;
  v46 = a2;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73F60, &qword_21580E0A0) - 8) + 64);
  v10 = (MEMORY[0x28223BE20])();
  v12 = &v41[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v14 = &v41[-v13];
  v15 = sub_21580B6C0();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v41[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_weakInit();
  *(v6 + 24) = 0;
  *(v6 + 32) = 0;
  *(v6 + 40) = 256;
  *(v6 + 48) = 0;
  *(v6 + 56) = 0;
  *(v6 + 64) = MEMORY[0x277D84F90];
  *(v6 + 72) = 0;
  *(v6 + 88) = 0;
  sub_2157F74BC(0, &qword_28119CBA0, 0x277D86200);
  v47 = 0xD000000000000010;
  v48 = 0x800000021580F400;
  v51 = 45;
  v52 = 0xE100000000000000;
  v49 = 95;
  v50 = 0xE100000000000000;
  v40 = sub_2157F6758();
  sub_21580BB80();
  *(v6 + 96) = sub_21580BB30();
  v20 = *(*v6 + 136);
  v21 = sub_21580B7C0();
  __swift_storeEnumTagSinglePayload(v7 + v20, 1, 1, v21);
  v22 = *(*v7 + 19);
  type metadata accessor for Locker();
  v23 = swift_allocObject();
  v24 = swift_slowAlloc();
  *(v23 + 16) = v24;
  *v24 = 0;
  *(v7 + v22) = v23;
  sub_21580B6B0();
  v25 = v19;
  v26 = v46;
  (*(v16 + 32))(v7 + *(*v7 + 18), v25, v15);
  swift_weakAssign();
  v7[10] = v26;
  v27 = v7[12];

  sub_21580B7B0();
  __swift_storeEnumTagSinglePayload(v14, 0, 1, v21);
  v28 = *(*v7 + 17);
  swift_beginAccess();
  sub_2158027AC(v14, v7 + v28);
  swift_endAccess();
  v47 = v7;

  v29 = sub_21580B8E0();
  v31 = v30;
  v32 = *(*(a1 + 32) + 16);
  os_unfair_lock_lock(v32);
  sub_2157F92C0(a1, v29, v31, v7, &off_2827B56D8);

  os_unfair_lock_unlock(v32);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v33 = *(a1 + 24);
    ObjectType = swift_getObjectType();
    (*(v33 + 8))(v7, &off_2827B56D8, ObjectType, v33);

    swift_unknownObjectRelease();
  }

  else
  {
  }

  sub_215802A40(v7 + v28, v12, &qword_27CA73F60, &qword_21580E0A0);
  result = __swift_getEnumTagSinglePayload(v12, 1, v21);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v36 = v7[12];
    v37 = sub_21580BB10();
    v38 = sub_2158019C0(v26);
    LOBYTE(v40) = v42;
    sub_2157EC660(v37, v36, v38, v39, 2, v12, v43, v44, v40, v45);

    (*(*(v21 - 8) + 8))(v12, v21);
    sub_2158014F8();

    return v7;
  }

  return result;
}

uint64_t sub_2157FF4A8()
{
  if (*(v0 + 88) != 1)
  {
    (*(*v0 + 400))();
  }

  swift_weakDestroy();
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  v4 = *(v0 + 72);

  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_3_1();
  sub_2157F7220(v0 + *(v5 + 136), &qword_27CA73F60, &qword_21580E0A0);
  OUTLINED_FUNCTION_3_1();
  v7 = *(v6 + 144);
  v8 = sub_21580B6C0();
  OUTLINED_FUNCTION_65(v8);
  (*(v9 + 8))(v0 + v7);
  OUTLINED_FUNCTION_3_1();
  v11 = *(v0 + *(v10 + 152));

  return v0;
}

uint64_t sub_2157FF5B8()
{
  OUTLINED_FUNCTION_3_1();
  v2 = *(*(v0 + *(v1 + 152)) + 16);

  os_unfair_lock_lock(v2);
  v28 = *(v0 + 32);
  v29 = *(v0 + 24);
  v27 = *(v0 + 40);
  v31 = *(v0 + 41);
  v4 = *(v0 + 48);
  v3 = *(v0 + 56);
  v5 = *(v0 + 64);
  v30 = *(v0 + 72);
  swift_unknownObjectRetain();

  v33 = v5;

  os_unfair_lock_unlock(v2);

  v6 = *(v0 + 96);
  sub_21580BAC0();
  OUTLINED_FUNCTION_9_0();
  sub_21580B780();
  sub_21580BAC0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73D60, &unk_21580CEB0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_21580CC20;
  sub_2158019C0(*(v0 + 80));
  v8 = sub_21580BC00();
  v10 = v9;
  v11 = MEMORY[0x277D837D0];
  *(v7 + 56) = MEMORY[0x277D837D0];
  v12 = sub_2157EDE30();
  *(v7 + 32) = v8;
  *(v7 + 40) = v10;
  *(v7 + 96) = v11;
  *(v7 + 104) = v12;
  *(v7 + 64) = v12;
  strcpy((v7 + 72), "networkRequest");
  *(v7 + 87) = -18;
  OUTLINED_FUNCTION_6_0();
  *(v7 + 136) = v11;
  *(v7 + 144) = v13;
  v32 = v13;
  *(v7 + 112) = 0xD000000000000010;
  *(v7 + 120) = v14;
  OUTLINED_FUNCTION_9_0();
  sub_21580B780();

  if ((v31 & 1) == 0)
  {
    sub_21580BAC0();
    v15 = OUTLINED_FUNCTION_7_2();
    *(v15 + 16) = xmmword_21580C9B0;
    v16 = sub_21580BC00();
    *(v15 + 56) = MEMORY[0x277D837D0];
    *(v15 + 64) = v32;
    *(v15 + 32) = v16;
    *(v15 + 40) = v17;
    OUTLINED_FUNCTION_6_2();

    if (v3)
    {

      sub_21580BAC0();
      v18 = OUTLINED_FUNCTION_7_2();
      *(v18 + 16) = xmmword_21580C9B0;
      *(v18 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73F38, &qword_21580DF70);
      *(v18 + 64) = sub_2157EF214(&qword_27CA73F40, &qword_27CA73F38, &qword_21580DF70);
      *(v18 + 32) = v3;
      OUTLINED_FUNCTION_6_2();
    }
  }

  if (v4)
  {

    sub_21580BAC0();
    v19 = OUTLINED_FUNCTION_7_2();
    *(v19 + 16) = xmmword_21580C9B0;
    *(v19 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73F28, &qword_21580E0E0);
    *(v19 + 64) = sub_2157EF214(&qword_27CA73F30, &qword_27CA73F28, &qword_21580E0E0);
    *(v19 + 32) = v4;
    OUTLINED_FUNCTION_6_2();
  }

  result = sub_215802A1C(v33);
  if (result)
  {
    v21 = result;
    if (result < 1)
    {
      __break(1u);
      return result;
    }

    v22 = 0;
    do
    {
      if ((v33 & 0xC000000000000001) != 0)
      {
        MEMORY[0x2160718D0](v22, v33);
      }

      else
      {
        v23 = *(v33 + 8 * v22 + 32);
        swift_unknownObjectRetain();
      }

      ++v22;
      sub_21580BAC0();
      v24 = OUTLINED_FUNCTION_7_0();
      *(v24 + 16) = xmmword_21580C9B0;
      swift_unknownObjectRetain();
      v25 = sub_21580B8E0();
      *(v24 + 56) = MEMORY[0x277D837D0];
      *(v24 + 64) = v32;
      *(v24 + 32) = v25;
      *(v24 + 40) = v26;
      sub_21580B780();
      swift_unknownObjectRelease();
    }

    while (v21 != v22);
  }

  sub_21580BAC0();
  sub_21580B780();
  if (sub_2158008B8(&type metadata for ResourceNetworkActivity, &off_2827B5270, sub_2157EC608))
  {
    sub_21580BAD0();
    sub_21580B780();
  }

  swift_unknownObjectRelease();
}

uint64_t sub_2157FFAD0()
{
  v1 = *(*(v0 + *(*v0 + 152)) + 16);

  os_unfair_lock_lock(v1);
  v25 = *(v0 + 32);
  v26 = *(v0 + 24);
  v24 = *(v0 + 40);
  v28 = *(v0 + 41);
  v3 = *(v0 + 48);
  v2 = *(v0 + 56);
  v4 = *(v0 + 64);
  v27 = *(v0 + 72);
  swift_unknownObjectRetain();

  v30 = v4;

  os_unfair_lock_unlock(v1);

  v5 = *(v0 + 96);
  sub_21580BAC0();
  sub_21580B780();
  sub_21580BAC0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73D60, &unk_21580CEB0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_21580CC20;
  sub_2158019C0(*(v0 + 80));
  v7 = sub_21580BC00();
  v9 = v8;
  v10 = MEMORY[0x277D837D0];
  *(v6 + 56) = MEMORY[0x277D837D0];
  v11 = sub_2157EDE30();
  *(v6 + 32) = v7;
  *(v6 + 40) = v9;
  *(v6 + 96) = v10;
  *(v6 + 104) = v11;
  *(v6 + 64) = v11;
  strcpy((v6 + 72), "resourceAccess");
  *(v6 + 87) = -18;
  *(v6 + 136) = v10;
  *(v6 + 144) = v11;
  v29 = v11;
  *(v6 + 112) = 0xD000000000000010;
  *(v6 + 120) = 0x800000021580F400;
  sub_21580B780();

  if ((v28 & 1) == 0)
  {
    sub_21580BAC0();
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_21580C9B0;
    v13 = sub_21580BC00();
    *(v12 + 56) = MEMORY[0x277D837D0];
    *(v12 + 64) = v29;
    *(v12 + 32) = v13;
    *(v12 + 40) = v14;
    sub_21580B780();

    if (v2)
    {

      sub_21580BAC0();
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_21580C9B0;
      *(v15 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73F38, &qword_21580DF70);
      *(v15 + 64) = sub_2157EF214(&qword_27CA73F40, &qword_27CA73F38, &qword_21580DF70);
      *(v15 + 32) = v2;
      sub_21580B780();
    }
  }

  if (v3)
  {

    sub_21580BAC0();
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_21580C9B0;
    *(v16 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73F28, &qword_21580E0E0);
    *(v16 + 64) = sub_2157EF214(&qword_27CA73F30, &qword_27CA73F28, &qword_21580E0E0);
    *(v16 + 32) = v3;
    sub_21580B780();
  }

  result = sub_215802A1C(v30);
  if (result)
  {
    v18 = result;
    if (result < 1)
    {
      __break(1u);
      return result;
    }

    v19 = 0;
    do
    {
      if ((v30 & 0xC000000000000001) != 0)
      {
        MEMORY[0x2160718D0](v19, v30);
      }

      else
      {
        v20 = *(v30 + 8 * v19 + 32);
        swift_unknownObjectRetain();
      }

      ++v19;
      sub_21580BAC0();
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_21580C9B0;
      swift_unknownObjectRetain();
      v22 = sub_21580B8E0();
      *(v21 + 56) = MEMORY[0x277D837D0];
      *(v21 + 64) = v29;
      *(v21 + 32) = v22;
      *(v21 + 40) = v23;
      sub_21580B780();
      swift_unknownObjectRelease();
    }

    while (v18 != v19);
  }

  sub_21580BAC0();
  sub_21580B780();
  if (sub_2158008B8(&type metadata for ResourceAccessActivity, &off_2827B5728, sub_2157EC630))
  {
    sub_21580BAD0();
    sub_21580B780();
  }

  swift_unknownObjectRelease();
}

uint64_t sub_215800060()
{
  v1 = v0;
  OUTLINED_FUNCTION_3_1();
  v3 = (v0 + *(v2 + 464));
  v4 = *v3;
  v5 = v3[1];
  ObjectType = swift_getObjectType();
  v7 = *(v5 + 16);
  v8 = v7(ObjectType, v5);
  if (v8)
  {
    v9 = v8;
    objc_opt_self();
    v10 = swift_dynamicCastObjCClass();
    if (v10)
    {
      [v10 statusCode];
      if (!(*(v5 + 8))(ObjectType, v5))
      {

        *&result = 0.0;
        return result;
      }

      OUTLINED_FUNCTION_6_0();
      *&v114 = 0xD000000000000021;
      *(&v114 + 1) = v11;
      v12 = sub_21580BBC0();
      OUTLINED_FUNCTION_4_4(v12, v13, v14, v15, v16, v17, v18, v19, v79, v83, v87, v91, v95, v100, v105, v109, v110, v111, v112, v113, v114);
      sub_2157EDE84(&v109);
      if (v115)
      {
        OUTLINED_FUNCTION_2_5();
      }

      else
      {
        sub_2157F7220(&v114, &unk_27CA73D80, &unk_21580D0F0);
      }

      OUTLINED_FUNCTION_6_0();
      *&v114 = 0xD00000000000001DLL;
      *(&v114 + 1) = v42;
      v43 = sub_21580BBC0();
      OUTLINED_FUNCTION_4_4(v43, v44, v45, v46, v47, v48, v49, v50, v80, v84, v88, v92, v96, v101, v106, v109, v110, v111, v112, v113, v114);
      sub_2157EDE84(&v109);
      if (v115)
      {
        OUTLINED_FUNCTION_2_5();
      }

      else
      {
        sub_2157F7220(&v114, &unk_27CA73D80, &unk_21580D0F0);
      }

      OUTLINED_FUNCTION_6_0();
      v97 = v51;
      v52 = sub_21580BBC0();
      OUTLINED_FUNCTION_4_4(v52, v53, v54, v55, v56, v57, v58, v59, v81, v85, v89, 0xD00000000000001BLL, v97, v102, v107, v109, v110, v111, v112, v113, v114);
      sub_2157EDE84(&v109);
      if (v115)
      {
        if (OUTLINED_FUNCTION_2_5())
        {
          v104 = v93;
          goto LABEL_26;
        }
      }

      else
      {
        sub_2157F7220(&v114, &unk_27CA73D80, &unk_21580D0F0);
      }

      OUTLINED_FUNCTION_6_0();
      v98 = v60;
      v61 = sub_21580BBC0();
      OUTLINED_FUNCTION_4_4(v61, v62, v63, v64, v65, v66, v67, v68, v82, v86, v90, 0xD00000000000001BLL, v98, v103, v108, v109, v110, v111, v112, v113, v114);
      sub_2157EDE84(&v109);
      if (v115)
      {
        if (swift_dynamicCast())
        {
LABEL_26:
          v69 = *&v104;
          OUTLINED_FUNCTION_6_0();
          v99 = v70;
          v71 = sub_21580BBC0();
          OUTLINED_FUNCTION_4_4(v71, v72, v73, v74, v75, v76, v77, v78, v82, v86, v90, 0xD00000000000001ALL, v99, v104, v108, v109, v110, v111, v112, v113, v114);

          sub_2157EDE84(&v109);
          if (v115)
          {
            if (OUTLINED_FUNCTION_2_5())
            {
              *&result = v94 - v69;
              return result;
            }
          }

          else
          {
            sub_2157F7220(&v114, &unk_27CA73D80, &unk_21580D0F0);
          }

          goto LABEL_32;
        }
      }

      else
      {
        sub_2157F7220(&v114, &unk_27CA73D80, &unk_21580D0F0);
      }

LABEL_32:
      *&result = 0.0;
      return result;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73D60, &unk_21580CEB0);
  v20 = OUTLINED_FUNCTION_7_0();
  *(v20 + 16) = xmmword_21580C9B0;
  v109 = v7(ObjectType, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA73F90, &qword_21580CEC0);
  v21 = sub_21580B8E0();
  v23 = v22;
  v24 = MEMORY[0x277D837D0];
  *(v20 + 56) = MEMORY[0x277D837D0];
  v25 = sub_2157EDE30();
  *(v20 + 64) = v25;
  *(v20 + 32) = v21;
  *(v20 + 40) = v23;
  OUTLINED_FUNCTION_9_0();
  sub_2158013BC(v26, v27, v28, v29);

  OUTLINED_FUNCTION_8_0();
  v31 = *(*(v1 + *(v30 + 152)) + 16);

  os_unfair_lock_lock(v31);
  if ((*(v1 + 88) & 1) == 0)
  {
    OUTLINED_FUNCTION_8_0();
    v33 = *(v32 + 480);
    v34 = *(v1 + v33);
    if (v34)
    {
      v35 = *(v1 + v33);
      swift_unknownObjectRetain();
      if (nw_activity_is_activated())
      {
        OUTLINED_FUNCTION_8_0();
        *(v1 + *(v36 + 472));
        nw_activity_complete_with_reason();
      }

      else
      {
        v38 = *(v1 + 96);
        sub_21580BAA0();
        v39 = OUTLINED_FUNCTION_7_0();
        *(v39 + 16) = xmmword_21580C9B0;
        v109 = v34;
        swift_unknownObjectRetain();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73D68, &qword_21580E0C0);
        v40 = sub_21580B8E0();
        *(v39 + 56) = v24;
        *(v39 + 64) = v25;
        *(v39 + 32) = v40;
        *(v39 + 40) = v41;
        sub_21580B780();
      }

      swift_unknownObjectRelease();
    }

    sub_215800A48();
  }

  os_unfair_lock_unlock(v31);

  *&result = 0.0;
  return result;
}

void sub_215800608()
{
  if ((v0[88] & 1) == 0)
  {
    v1 = v0;
    v2 = sub_215800060();
    v5 = MEMORY[0x277D837D0];
    if (v6)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73D60, &unk_21580CEB0);
      v7 = OUTLINED_FUNCTION_7_0();
      *(v7 + 16) = xmmword_21580C9B0;
      v8 = &v0[*(*v0 + 464)];
      v9 = *v8;
      v10 = v8[1];
      ObjectType = swift_getObjectType();
      (*(v10 + 16))(ObjectType, v10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA73F90, &qword_21580CEC0);
      v12 = sub_21580B8E0();
      v14 = v13;
      *(v7 + 56) = v5;
      *(v7 + 64) = sub_2157EDE30();
      *(v7 + 32) = v12;
      *(v7 + 40) = v14;
      OUTLINED_FUNCTION_9_0();
      sub_2158013BC(v15, v16, v17, v18);
    }

    else
    {
      (*(*v0 + 568))(v3, v4, *&v2);
    }

    v19 = *(*&v1[*(*v1 + 152)] + 16);

    os_unfair_lock_lock(v19);
    if ((v1[88] & 1) == 0)
    {
      v20 = *(*v1 + 480);
      if (*&v1[v20])
      {
        v21 = *&v1[v20];
        swift_unknownObjectRetain();
        if (nw_activity_is_activated())
        {
          *&v1[*(*v1 + 472)];
          nw_activity_complete_with_reason();
        }

        else
        {
          v22 = *(v1 + 12);
          sub_21580BAA0();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73D60, &unk_21580CEB0);
          v23 = OUTLINED_FUNCTION_7_0();
          *(v23 + 16) = xmmword_21580C9B0;
          swift_unknownObjectRetain();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73D68, &qword_21580E0C0);
          v24 = sub_21580B8E0();
          v26 = v25;
          *(v23 + 56) = v5;
          *(v23 + 64) = sub_2157EDE30();
          *(v23 + 32) = v24;
          *(v23 + 40) = v26;
          sub_21580B780();
        }

        swift_unknownObjectRelease();
      }

      sub_215800A48();
    }

    os_unfair_lock_unlock(v19);
  }

  OUTLINED_FUNCTION_12_1();
}

uint64_t sub_2158008B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = *(v3 + 80);
  v8[3] = a1;
  v8[4] = a2;
  v8[0] = v5;
  v6 = __swift_project_boxed_opaque_existential_1(v8, a1);
  LOBYTE(a3) = a3(*v6);
  __swift_destroy_boxed_opaque_existential_1(v8);
  return a3 & 1;
}

uint64_t sub_215800918()
{
  v1 = sub_21580B6C0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_3_1();
  (*(v2 + 16))(v5, v0 + *(v6 + 144), v1);
  sub_21580B680();
  return (*(v2 + 8))(v5, v1);
}

uint64_t sub_215800A48()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73F60, &qword_21580E0A0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  MEMORY[0x28223BE20](v4);
  v8 = v38 - v7 + 16;
  v9 = *(v0 + 40);
  v40 = *(v0 + 24);
  v41 = v9;
  v42 = *(v0 + 56);
  v43 = *(v0 + 72);
  v10 = *(&v9 + 1);
  sub_215802A40(&v40, v38, &unk_27CA73FA0, &unk_21580E0C8);
  sub_215801668(v10, 0x526B726F7774656ELL, 0xEE00747365757165);
  if ((BYTE1(v41) & 1) == 0)
  {
    v11 = v42;
    if (v42)
    {
      v12 = v40;
      v13 = v41;
      v14 = *(v1 + 80);
      v15 = *(*v1 + 136);
      swift_beginAccess();
      sub_215802A40(v1 + v15, v8, &qword_27CA73F60, &qword_21580E0A0);
      v16 = sub_21580B7C0();
      result = __swift_getEnumTagSinglePayload(v8, 1, v16);
      if (result != 1)
      {
        v18 = *(v1 + 96);

        v19 = sub_21580BB00();
        v20 = sub_2158019C0(v14);
        LOBYTE(v36) = v13;
        sub_2157EC660(v19, v18, v20, v21, 2, v8, v12, *(&v12 + 1), v36, v11);

        (*(*(v16 - 8) + 8))(v8, v16);
        goto LABEL_7;
      }

LABEL_16:
      __break(1u);
      return result;
    }
  }

  v22 = *(v1 + 80);
  v23 = *(*v1 + 136);
  swift_beginAccess();
  sub_215802A40(v1 + v23, v6, &qword_27CA73F60, &qword_21580E0A0);
  v24 = sub_21580B7C0();
  result = __swift_getEnumTagSinglePayload(v6, 1, v24);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_16;
  }

  v25 = *(v1 + 96);
  sub_21580BB00();
  sub_2158019C0(v22);
  sub_21580B7A0();
  (*(*(v24 - 8) + 8))(v6, v24);
LABEL_7:
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v27 = Strong;
    *&v38[0] = v1;
    v28 = sub_21580B8E0();
    v30 = v29;
    v31 = *(*(v27 + 32) + 16);
    os_unfair_lock_lock(v31);
    sub_2157F941C(v27, v28, v30, v1, &off_2827B56D8);

    os_unfair_lock_unlock(v31);
    if (swift_unknownObjectWeakLoadStrong())
    {
      v32 = *(v27 + 24);
      ObjectType = swift_getObjectType();
      (*(v32 + 16))(v1, &off_2827B56D8, ObjectType, v32);
      swift_unknownObjectRelease();
    }

    LOBYTE(v38[0]) = 1;

    sub_2157F7220(&v40, &unk_27CA73FA0, &unk_21580E0C8);
    v34 = v38[0];
    v35 = *(v1 + 40);
    v38[0] = *(v1 + 24);
    v38[1] = v35;
    v38[2] = *(v1 + 56);
    v39 = *(v1 + 72);
    *(v1 + 24) = 0;
    *(v1 + 32) = 0;
    *(v1 + 40) = 0;
    *(v1 + 41) = v34;
    *(v1 + 48) = 0;
    *(v1 + 56) = 0;
    *(v1 + 64) = MEMORY[0x277D84F90];
    *(v1 + 72) = 0;
    sub_2157F7220(v38, &unk_27CA73FA0, &unk_21580E0C8);
    *(v1 + 88) = 1;
    return swift_weakAssign();
  }

  else
  {
    if (sub_2158008B8(&type metadata for ResourceNetworkActivity, &off_2827B5270, sub_2157EC608))
    {
      sub_21580BAD0();
      sub_21580B780();
    }

    return sub_2157F7220(&v40, &unk_27CA73FA0, &unk_21580E0C8);
  }
}

uint64_t sub_215800F00()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73F60, &qword_21580E0A0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  MEMORY[0x28223BE20](v4);
  v8 = v38 - v7 + 16;
  v9 = *(v0 + 40);
  v40 = *(v0 + 24);
  v41 = v9;
  v42 = *(v0 + 56);
  v43 = *(v0 + 72);
  v10 = *(&v9 + 1);
  sub_215802A40(&v40, v38, &unk_27CA73F78, &qword_21580E0B0);
  sub_215801668(v10, 0x656372756F736572, 0xEE00737365636341);
  if ((BYTE1(v41) & 1) == 0)
  {
    v11 = v42;
    if (v42)
    {
      v12 = v40;
      v13 = v41;
      v14 = *(v1 + 80);
      v15 = *(*v1 + 136);
      swift_beginAccess();
      sub_215802A40(v1 + v15, v8, &qword_27CA73F60, &qword_21580E0A0);
      v16 = sub_21580B7C0();
      result = __swift_getEnumTagSinglePayload(v8, 1, v16);
      if (result != 1)
      {
        v18 = *(v1 + 96);

        v19 = sub_21580BB00();
        v20 = sub_2158019C0(v14);
        LOBYTE(v36) = v13;
        sub_2157EC660(v19, v18, v20, v21, 2, v8, v12, *(&v12 + 1), v36, v11);

        (*(*(v16 - 8) + 8))(v8, v16);
        goto LABEL_7;
      }

LABEL_16:
      __break(1u);
      return result;
    }
  }

  v22 = *(v1 + 80);
  v23 = *(*v1 + 136);
  swift_beginAccess();
  sub_215802A40(v1 + v23, v6, &qword_27CA73F60, &qword_21580E0A0);
  v24 = sub_21580B7C0();
  result = __swift_getEnumTagSinglePayload(v6, 1, v24);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_16;
  }

  v25 = *(v1 + 96);
  sub_21580BB00();
  sub_2158019C0(v22);
  sub_21580B7A0();
  (*(*(v24 - 8) + 8))(v6, v24);
LABEL_7:
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v27 = Strong;
    *&v38[0] = v1;
    v28 = sub_21580B8E0();
    v30 = v29;
    v31 = *(*(v27 + 32) + 16);
    os_unfair_lock_lock(v31);
    sub_2157F941C(v27, v28, v30, v1, &off_2827B56D8);

    os_unfair_lock_unlock(v31);
    if (swift_unknownObjectWeakLoadStrong())
    {
      v32 = *(v27 + 24);
      ObjectType = swift_getObjectType();
      (*(v32 + 16))(v1, &off_2827B56D8, ObjectType, v32);
      swift_unknownObjectRelease();
    }

    LOBYTE(v38[0]) = 1;

    sub_2157F7220(&v40, &unk_27CA73F78, &qword_21580E0B0);
    v34 = v38[0];
    v35 = *(v1 + 40);
    v38[0] = *(v1 + 24);
    v38[1] = v35;
    v38[2] = *(v1 + 56);
    v39 = *(v1 + 72);
    *(v1 + 24) = 0;
    *(v1 + 32) = 0;
    *(v1 + 40) = 0;
    *(v1 + 41) = v34;
    *(v1 + 48) = 0;
    *(v1 + 56) = 0;
    *(v1 + 64) = MEMORY[0x277D84F90];
    *(v1 + 72) = 0;
    sub_2157F7220(v38, &unk_27CA73F78, &qword_21580E0B0);
    *(v1 + 88) = 1;
    return swift_weakAssign();
  }

  else
  {
    if (sub_2158008B8(&type metadata for ResourceAccessActivity, &off_2827B5728, sub_2157EC630))
    {
      sub_21580BAD0();
      sub_21580B780();
    }

    return sub_2157F7220(&v40, &unk_27CA73F78, &qword_21580E0B0);
  }
}

uint64_t sub_2158013BC(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  OUTLINED_FUNCTION_3_1();
  v10 = *(*(v4 + *(v9 + 152)) + 16);

  os_unfair_lock_lock(v10);
  *(v4 + 24) = a1;
  *(v4 + 32) = a2;
  *(v4 + 40) = a3;
  *(v4 + 41) = 0;
  v11 = *(v4 + 56);
  *(v4 + 56) = a4;

  os_unfair_lock_unlock(v10);
}

uint64_t sub_21580146C(uint64_t a1)
{
  OUTLINED_FUNCTION_3_1();
  v4 = *(*(v1 + *(v3 + 152)) + 16);

  os_unfair_lock_lock(v4);
  v5 = *(v1 + 48);
  *(v1 + 48) = a1;

  os_unfair_lock_unlock(v4);
}

uint64_t sub_2158014F8()
{
  v1 = *(v0 + 80);
  v5[3] = &type metadata for ResourceAccessActivity;
  v5[4] = &off_2827B5750;
  v5[0] = v1;
  v2 = __swift_project_boxed_opaque_existential_1(v5, &type metadata for ResourceAccessActivity);
  if (sub_2157FEF84(*v2))
  {
    MEMORY[0x216071600](46, 0xE100000000000000);

    MEMORY[0x216071600](0x656372756F736572, 0xEE00737365636341);

    sub_2158019C0(v1);
    v3 = sub_21580BC00();
    MEMORY[0x216071600](v3);

    MEMORY[0x216071600](46, 0xE100000000000000);

    sub_215801904(0xD000000000000010, 0x800000021580F400, v0);
  }

  return __swift_destroy_boxed_opaque_existential_1(v5);
}

void sub_215801668(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sub_215801808(a1))
  {
    v6 = *(v3 + 96);
    sub_21580BAB0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73D60, &unk_21580CEB0);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_21580CC30;
    v8 = MEMORY[0x277D837D0];
    *(v7 + 56) = MEMORY[0x277D837D0];
    v9 = sub_2157EDE30();
    *(v7 + 64) = v9;
    *(v7 + 32) = a2;
    *(v7 + 40) = a3;
    sub_2157F74BC(0, &qword_28119CBB0, 0x277D82BB8);
    OUTLINED_FUNCTION_11_0();
    v10 = sub_21580B840();
    *(v7 + 96) = v8;
    *(v7 + 104) = v9;
    *(v7 + 72) = v10;
    *(v7 + 80) = v11;
    sub_21580B780();

    OUTLINED_FUNCTION_6_0();
    MEMORY[0x216071600](46, 0xE100000000000000);
    MEMORY[0x216071600](a2, a3);
    v12 = sub_21580B880();

    OUTLINED_FUNCTION_11_0();
    v13 = sub_21580B820();
    AnalyticsSendEvent();

    OUTLINED_FUNCTION_12_1();
  }

  else
  {
    OUTLINED_FUNCTION_12_1();
  }
}

uint64_t sub_215801808(uint64_t result)
{
  if (result)
  {
    v2 = v1;
    v3 = result;
    v4 = *(v2 + 80);

    v5 = sub_21580BB60();
    swift_isUniquelyReferenced_nonNull_native();
    sub_2157F9884(v5, 1701869940, 0xE400000000000000);
    sub_215800918();
    v6 = sub_21580BA90();
    swift_isUniquelyReferenced_nonNull_native();
    sub_2157F9884(v6, 0x6E6F697461727564, 0xE800000000000000);
    return v3;
  }

  return result;
}

uint64_t sub_2158018C8(uint64_t a1, uint64_t a2)
{
  v3 = os_transaction_create();
  v4 = *(a2 + 72);
  *(a2 + 72) = v3;
  return swift_unknownObjectRelease();
}

uint64_t sub_215801904(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x1000000000000000) == 0 && ((a2 & 0x2000000000000000) != 0 || (a1 & 0x1000000000000000) != 0))
  {
    v4 = os_transaction_create();
    v5 = *(a3 + 72);
    *(a3 + 72) = v4;

    return swift_unknownObjectRelease();
  }

  else
  {
    sub_21580BBE0();
  }
}

const char *sub_2158019C0(uint64_t a1)
{
  result = "unknown";
  switch(a1)
  {
    case 0:
      return result;
    case 1:
      result = "configuration";
      break;
    case 2:
      result = "parsecdSearch";
      break;
    case 3:
      result = "parsecdZeroKeyWord";
      break;
    case 4:
      result = "parsecdLookup";
      break;
    case 5:
      result = "parsecdFlight";
      break;
    case 6:
      result = "parsecdMoreResults";
      break;
    case 7:
      result = "parsecdCard";
      break;
    case 8:
      result = "parsecdWarm";
      break;
    case 9:
      result = "bagResourceDownload";
      break;
    case 10:
      result = "pegasusKitVisualSearch";
      break;
    case 11:
      result = "pegasusKitSiriPersonalization";
      break;
    case 12:
      result = "pegasusKitHashtagImages";
      break;
    case 13:
      result = "pegasusKitAssistant";
      break;
    case 14:
      result = "pegasusKitBagFetchXPC";
      break;
    case 15:
      result = "pegasusKitContextFetchXPC";
      break;
    case 16:
      result = "pegasusKitLookup";
      break;
    case 17:
      result = "pegasusKitSpotlightZKW";
      break;
    case 18:
      result = "pegasusKitEngagementSearch";
      break;
    case 19:
      result = "engagementCache";
      break;
    case 20:
      result = "topicCache";
      break;
    case 21:
      result = "pegasusKitIntelligencePlatform";
      break;
    case 22:
    case 36:
    case 40:
    case 41:
    case 42:
    case 43:
    case 44:
    case 45:
    case 46:
    case 47:
    case 48:
    case 49:
    case 51:
    case 52:
    case 53:
    case 54:
    case 55:
    case 56:
    case 57:
    case 58:
    case 59:
    case 64:
    case 68:
    case 69:
    case 70:
    case 71:
    case 72:
    case 73:
    case 74:
    case 75:
    case 76:
    case 77:
    case 78:
    case 79:
    case 80:
    case 81:
    case 82:
    case 83:
    case 84:
    case 85:
    case 86:
    case 87:
    case 88:
    case 89:
    case 90:
    case 91:
    case 92:
    case 93:
    case 94:
    case 95:
    case 96:
    case 97:
    case 98:
    case 99:
      goto LABEL_90;
    case 23:
      result = "pegasusKitIntelligenceFlow";
      break;
    case 24:
      result = "pegasusKitSafariAssistantPrefetch";
      break;
    case 25:
      result = "pegasusKitSafariAssistantSummarize";
      break;
    case 26:
      result = "pegasusKitEncryptedVisualSearch";
      break;
    case 27:
      result = "pegasusKitSportsWatchFace";
      break;
    case 28:
      result = "pegasusKitLookupSearch";
      break;
    case 29:
      result = "pegasusKitEncryptedVisualSearchConfig";
      break;
    case 30:
      result = "pegasusKitSafariSearch";
      break;
    case 31:
      result = "pegasusKitCameraVisualSearch";
      break;
    case 32:
      result = "pegasusKitEncryptedPQAGeo";
      break;
    case 33:
      result = "pegasusKitEncryptedPQAGeoConfig";
      break;
    case 34:
      result = "pegasusKitEncryptedVisualSearchSupportedUsecases";
      break;
    case 35:
      result = "pegasusKitEncryptedPQAGeoSupportedUsecases";
      break;
    case 37:
      result = "pegasusKitFlightUtilities";
      break;
    case 38:
      result = "pegasusKitFlightUtilitiesSubscribe";
      break;
    case 39:
      result = "pegasusKitDeviceExpertSearch";
      break;
    case 50:
      result = "installedAppWhitelist";
      break;
    case 60:
      result = "assetDeliveryPreloadAsset";
      break;
    case 61:
      result = "assetDeliveryPrefilterPrefetch";
      break;
    case 62:
      result = "assetDeliveryGetPreloadedData";
      break;
    case 63:
      result = "assetDeliveryBloomFilter";
      break;
    case 65:
      result = "assetDeliveryRetrieveAsset";
      break;
    case 66:
      result = "assetDeliveryRedact";
      break;
    case 67:
      result = "assetDeliveryFeatureSupported";
      break;
    case 100:
      result = "contextFetchAMSTreatments";
      break;
    default:
      switch(a1)
      {
        case 200:
          result = "feedbackEnumerator";
          break;
        case 201:
          result = "feedbackFileCreation";
          break;
        case 202:
          result = "simpleFeedbackEnumerator";
          break;
        case 300:
          result = "aggregation";
          break;
        case 301:
          result = "uploadaggregates";
          break;
        case 400:
          result = "clientXPCConnection";
          break;
        case 401:
          result = "clientSessionComplete";
          break;
        case 500:
          result = "sbaPlugin";
          break;
        case 600:
          result = "parsecdCloudConnectionSubscribe";
          break;
        case 601:
          result = "parsecdCloudConnectionUnsubscribe";
          break;
        case 602:
          result = "parsecdCloudConnectionFetchLatestPush";
          break;
        case 700:
          result = "parseKeys";
          break;
        default:
LABEL_90:
          result = sub_21580BD50();
          __break(1u);
          break;
      }

      break;
  }

  return result;
}

uint64_t sub_215801DF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v11 = a5 & 1;
  *(v6 + qword_28119D500) = 0;
  *(v6 + qword_28119DA68) = 0;
  v12 = v6 + qword_28119DA60;
  *v12 = 0;
  *(v12 + 8) = 1;
  *(v6 + qword_28119D508) = 0;
  v13 = qword_28119DA58;
  v14 = sub_21580B760();
  v15 = *(v14 - 8);
  (*(v15 + 16))(v6 + v13, a3, v14);
  *v12 = a4;
  *(v12 + 8) = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73D60, &unk_21580CEB0);
  if (a5)
  {
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21580C9B0;
    v17 = sub_21580B740();
    v19 = v18;
    *(inited + 56) = MEMORY[0x277D837D0];
    *(inited + 64) = sub_2157EDE30();
    *(inited + 32) = v17;
    *(inited + 40) = v19;
    v20 = "client=%{signpost.description:attribute,public}s";
    v21 = a1;
    v22 = a2;
    v23 = 48;
    v24 = inited;
  }

  else
  {
    v25 = swift_initStackObject();
    *(v25 + 16) = xmmword_21580CC30;
    v26 = sub_21580B740();
    v28 = v27;
    *(v25 + 56) = MEMORY[0x277D837D0];
    v29 = sub_2157EDE30();
    *(v25 + 32) = v26;
    *(v25 + 40) = v28;
    v30 = MEMORY[0x277D84D90];
    *(v25 + 96) = MEMORY[0x277D84D38];
    *(v25 + 104) = v30;
    *(v25 + 64) = v29;
    *(v25 + 72) = a4;
    v20 = "client=%{signpost.description:attribute,public}s, identifier=%{signpost.description:attribute,public}llu";
    v21 = a1;
    v22 = a2;
    v23 = 104;
    v24 = v25;
  }

  v31 = sub_2157FEFAC(v21, v22, v20, v23, 2, v24);
  (*(v15 + 8))(a3, v14);
  return v31;
}

uint64_t sub_215802000()
{
  v1 = *(v0 + qword_28119DA68);

  v2 = qword_28119DA58;
  v3 = sub_21580B760();
  OUTLINED_FUNCTION_65(v3);
  v5 = *(v4 + 8);

  return v5(v0 + v2);
}

uint64_t sub_21580206C()
{
  if ((*(v0 + 88) & 1) == 0)
  {
    sub_215802470();
  }

  v1 = sub_2157FF4A8();
  v2 = *(v1 + qword_28119DA68);

  v3 = qword_28119DA58;
  v4 = sub_21580B760();
  OUTLINED_FUNCTION_65(v4);
  (*(v5 + 8))(v1 + v3);
  return v1;
}

uint64_t sub_2158020E4()
{
  v0 = sub_21580206C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for ResourceAccessSpan()
{
  result = qword_28119D4E8;
  if (!qword_28119D4E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_215802184()
{
  result = sub_21580B760();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_21580223C()
{
  v1 = *(v0 + 96);
  sub_21580BAC0();
  OUTLINED_FUNCTION_1_6();
  sub_21580B780();
  sub_2157FFAD0();
  sub_21580BAC0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73D60, &unk_21580CEB0);
  v2 = OUTLINED_FUNCTION_7_0();
  *(v2 + 16) = xmmword_21580C9B0;
  v19 = *(v0 + qword_28119D500);
  v3 = sub_21580B8E0();
  v5 = v4;
  v6 = MEMORY[0x277D837D0];
  *(v2 + 56) = MEMORY[0x277D837D0];
  v7 = sub_2157EDE30();
  *(v2 + 64) = v7;
  *(v2 + 32) = v3;
  *(v2 + 40) = v5;
  OUTLINED_FUNCTION_1_6();
  sub_21580B780();

  sub_21580BAC0();
  v8 = OUTLINED_FUNCTION_7_0();
  *(v8 + 16) = xmmword_21580C9B0;
  v17 = *(v0 + qword_28119DA60);
  v18 = *(v0 + qword_28119DA60 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73FB0, &qword_21580E0D8);
  v9 = sub_21580B8E0();
  *(v8 + 56) = v6;
  *(v8 + 64) = v7;
  *(v8 + 32) = v9;
  *(v8 + 40) = v10;
  OUTLINED_FUNCTION_1_6();
  sub_21580B780();

  sub_21580BAC0();
  v11 = OUTLINED_FUNCTION_7_0();
  v12 = *(v0 + qword_28119DA68);
  *(v11 + 16) = xmmword_21580C9B0;
  v13 = v12 == 0;
  v14 = 7562617;
  if (v13)
  {
    v14 = 28526;
  }

  v15 = 0xE300000000000000;
  *(v11 + 56) = v6;
  *(v11 + 64) = v7;
  if (v13)
  {
    v15 = 0xE200000000000000;
  }

  *(v11 + 32) = v14;
  *(v11 + 40) = v15;
  OUTLINED_FUNCTION_1_6();
  sub_21580B780();

  sub_21580BAC0();
  OUTLINED_FUNCTION_1_6();
  return sub_21580B780();
}

void sub_215802470()
{
  if ((*(v0 + 88) & 1) == 0)
  {
    v1 = v0;
    if (*(v0 + qword_28119DA68))
    {

      sub_215800608();
    }

    v2 = MEMORY[0x277D837D0];
    if ((*(v0 + qword_28119D508) & 1) == 0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA73F68, &qword_21580E0A8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_21580CC30;
      *(inited + 32) = 0x726574706F6461;
      *(inited + 40) = 0xE700000000000000;
      sub_21580B750();
      *(inited + 48) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInteger_];
      *(inited + 56) = 0x656D6F6374756FLL;
      *(inited + 64) = 0xE700000000000000;
      *(inited + 72) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInteger_];
      sub_2157F74BC(0, &qword_28119CBC0, 0x277CCABB0);
      v4 = sub_21580B850();
      sub_21580281C(v4);
      v6 = v5;

      sub_21580146C(v6);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73D60, &unk_21580CEB0);
    v7 = OUTLINED_FUNCTION_7_0();
    *(v7 + 16) = xmmword_21580C9B0;
    v17 = *(v0 + qword_28119D500);
    v8 = sub_21580B8E0();
    v10 = v9;
    *(v7 + 56) = v2;
    *(v7 + 64) = sub_2157EDE30();
    *(v7 + 32) = v8;
    *(v7 + 40) = v10;
    OUTLINED_FUNCTION_9_0();
    sub_2158013BC(v11, v12, v13, v14);

    OUTLINED_FUNCTION_8_0();
    v16 = *(*(v1 + *(v15 + 152)) + 16);

    os_unfair_lock_lock(v16);
    if ((*(v1 + 88) & 1) == 0)
    {
      sub_215800F00();
    }

    os_unfair_lock_unlock(v16);
  }
}

unint64_t sub_2158026D4(uint64_t a1)
{
  *(a1 + 8) = sub_215802704();
  result = sub_215802758();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_215802704()
{
  result = qword_28119D230;
  if (!qword_28119D230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28119D230);
  }

  return result;
}

unint64_t sub_215802758()
{
  result = qword_28119D218;
  if (!qword_28119D218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28119D218);
  }

  return result;
}

uint64_t sub_2158027AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73F60, &qword_21580E0A0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_21580281C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73F88, &qword_21580E0B8);
    v2 = sub_21580BC90();
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

  v7 = 0;
  while (v5)
  {
    v8 = v7;
LABEL_12:
    v9 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v10 = v9 | (v8 << 6);
    v11 = (*(a1 + 48) + 16 * v10);
    v13 = *v11;
    v12 = v11[1];
    v14 = *(*(a1 + 56) + 8 * v10);

    v15 = v14;
    v16 = sub_2158090E4(v13, v12);
    v17 = v16;
    if (v18)
    {
      v19 = (v2[6] + 16 * v16);
      v20 = v19[1];
      *v19 = v13;
      v19[1] = v12;

      v21 = v2[7];
      v22 = *(v21 + 8 * v17);
      *(v21 + 8 * v17) = v15;

      v7 = v8;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_19;
      }

      *(v2 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v16;
      v23 = (v2[6] + 16 * v16);
      *v23 = v13;
      v23[1] = v12;
      *(v2[7] + 8 * v16) = v15;
      v24 = v2[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        goto LABEL_20;
      }

      v2[2] = v26;
      v7 = v8;
    }
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v8);
    ++v7;
    if (v5)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
}

uint64_t sub_215802A1C(uint64_t a1)
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

uint64_t sub_215802A40(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t OUTLINED_FUNCTION_2_5()
{

  return swift_dynamicCast();
}

double OUTLINED_FUNCTION_4_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, __int128 a21)
{

  return sub_215803648(&a16, v21, &a21);
}

uint64_t OUTLINED_FUNCTION_6_2()
{

  return sub_21580B780();
}

uint64_t OUTLINED_FUNCTION_7_2()
{

  return swift_allocObject();
}

uint64_t sub_215802B64()
{
  result = sub_21580B880();
  qword_28119DA38 = result;
  return result;
}

uint64_t sub_215802BB4(unsigned int *a1, int a2)
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

_BYTE *sub_215802C04(_BYTE *result, int a2, int a3)
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

uint64_t sub_215802CAC(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, char a5)
{
  v30 = a1;
  v31 = a2;
  v29 = &v30;
  if (sub_215803264(sub_215803340, v28, &unk_2827B4658))
  {

    if (qword_28119CC70 != -1)
    {
      OUTLINED_FUNCTION_1_7();
    }

    v10 = sub_21580B7F0();
    __swift_project_value_buffer(v10, qword_28119DA40);

    v11 = sub_21580B7D0();
    v12 = sub_21580BAC0();

    if (!os_log_type_enabled(v11, v12))
    {

      goto LABEL_11;
    }

    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v30 = v14;
    *v13 = 136642819;
    v15 = sub_215808B34(a1, a2, &v30);

    *(v13 + 4) = v15;
    _os_log_impl(&dword_2157E4000, v11, v12, "asset specifier got unsupported country code %{sensitive}s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    OUTLINED_FUNCTION_3_5();
    goto LABEL_6;
  }

  v30 = a3;
  v31 = a4;
  MEMORY[0x28223BE20](v16);
  v27[2] = &v30;
  if (!sub_215803264(sub_215803374, v27, &unk_2827B4698))
  {
    if (qword_28119CC70 != -1)
    {
      OUTLINED_FUNCTION_1_7();
    }

    v18 = sub_21580B7F0();
    __swift_project_value_buffer(v18, qword_28119DA40);

    v19 = sub_21580B7D0();
    v20 = sub_21580BAC0();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v30 = v22;
      *v21 = 136642819;
      v23 = sub_215808B34(a3, a4, &v30);

      *(v21 + 4) = v23;
      _os_log_impl(&dword_2157E4000, v19, v20, "asset specifier got unsupported locale %{sensitive}s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v22);
      OUTLINED_FUNCTION_3_5();
      OUTLINED_FUNCTION_3_5();
    }

    else
    {
    }

    return 1;
  }

  if (a5)
  {
    return 0;
  }

  if (qword_28119CC70 != -1)
  {
    OUTLINED_FUNCTION_1_7();
  }

  v24 = sub_21580B7F0();
  __swift_project_value_buffer(v24, qword_28119DA40);
  v11 = sub_21580B7D0();
  v25 = sub_21580BAC0();
  if (os_log_type_enabled(v11, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_2157E4000, v11, v25, "asset specifier is disabled by os eligibility", v26, 2u);
LABEL_6:
    OUTLINED_FUNCTION_3_5();
  }

LABEL_11:

  return 1;
}

BOOL sub_215803050()
{
  v0 = sub_21580BCA0();

  return v0 != 0;
}

BOOL sub_2158030A8@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_215803050();
  *a2 = result;
  return result;
}

unint64_t sub_2158030E4()
{
  result = qword_28119CDF0;
  if (!qword_28119CDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28119CDF0);
  }

  return result;
}

BOOL sub_215803138()
{
  v0 = sub_21580BCA0();

  return v0 != 0;
}

BOOL sub_215803180@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_215803138();
  *a2 = result;
  return result;
}

unint64_t sub_2158031CC()
{
  result = qword_28119CFE8;
  if (!qword_28119CFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28119CFE8);
  }

  return result;
}

uint64_t sub_215803220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_21580BD30() & 1;
  }
}

BOOL sub_215803264(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v5 = (a3 + 40);
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = *v5;
    v11[0] = *(v5 - 1);
    v11[1] = v7;

    v8 = a1(v11);
    if (v3)
    {

      return v6 != 0;
    }

    v9 = v8;
    v5 += 2;
  }

  while ((v9 & 1) == 0);
  return v6 != 0;
}

uint64_t OUTLINED_FUNCTION_1_7()
{

  return swift_once();
}

void OUTLINED_FUNCTION_3_5()
{

  JUMPOUT(0x216072190);
}

uint64_t sub_2158033D4()
{
  v1 = *(v0 + 24);
  os_unfair_lock_lock(v1);
  v2 = *(v0 + 16);

  os_unfair_lock_unlock(v1);
  return v2;
}

uint64_t sub_215803414()
{
  v1 = v0[5];
  os_unfair_lock_lock(v1);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  sub_215809F7C(v2, v3);
  os_unfair_lock_unlock(v1);
  return v2;
}

uint64_t sub_215803470()
{
  v1 = *(v0 + 24);
  os_unfair_lock_lock(v1);
  v2 = *(v0 + 16);
  os_unfair_lock_unlock(v1);
  return v2;
}

uint64_t sub_2158034A8()
{
  v1 = *(v0 + 24);
  os_unfair_lock_lock(v1);
  v2 = *(v0 + 16);

  os_unfair_lock_unlock(v1);
  return v2;
}

void sub_2158034E8(char a1)
{
  v3 = *(v1 + 24);
  os_unfair_lock_lock(v3);
  *(v1 + 16) = a1;

  os_unfair_lock_unlock(v3);
}

void sub_215803534(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3[5];
  os_unfair_lock_lock(v7);
  v8 = v3[2];
  v9 = v3[3];
  v10 = v3[4];
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = a3;
  sub_215809C2C(v8, v9);

  os_unfair_lock_unlock(v7);
}

void sub_2158035A0(uint64_t a1)
{
  v3 = *(v1 + 24);
  os_unfair_lock_lock(v3);
  v4 = *(v1 + 16);
  *(v1 + 16) = a1;

  os_unfair_lock_unlock(v3);
}

void sub_2158035F4(uint64_t a1)
{
  v3 = *(v1 + 24);
  os_unfair_lock_lock(v3);
  v4 = *(v1 + 16);
  *(v1 + 16) = a1;

  os_unfair_lock_unlock(v3);
}

double sub_215803648@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  if (*(a2 + 16) && (v5 = sub_2158090A0(a1), (v6 & 1) != 0))
  {
    v7 = *(a2 + 56) + 32 * v5;

    sub_2157F7444(v7, a3);
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

void *sub_2158036AC(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  v2 = sub_215809160();
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  v4 = *(*(a1 + 56) + 8 * v2);
  v5 = v4;
  return v4;
}

uint64_t sub_2158036F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    v3 = sub_2158090E4(a1, a2);
    if (v4)
    {
      OUTLINED_FUNCTION_60_0(v3);
    }
  }

  return OUTLINED_FUNCTION_27();
}

uint64_t sub_215803738(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_2158090E4(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
}

uint64_t sub_215803788(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = sub_2158091C0(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(*(a2 + 56) + 8 * v3);
}

uint64_t sub_2158037D8(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  v2 = sub_215809160();
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  v4 = *(*(a1 + 56) + 8 * v2);
}

uint64_t sub_215803828(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v1 = sub_215809160();
    if (v2)
    {
      OUTLINED_FUNCTION_60_0(v1);
    }
  }

  return OUTLINED_FUNCTION_27();
}

uint64_t sub_21580386C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_2158090E4(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
}

void sub_2158038BC(char a1)
{
  v2 = v1;
  v4 = *(v1 + 16);
  Lock.lock()();
  swift_beginAccess();
  *(v2 + 24) = a1;
  Lock.unlock()();
}

void sub_215803914()
{
  OUTLINED_FUNCTION_65_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73C68, &qword_21580E930);
  OUTLINED_FUNCTION_48(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v11);
  v13 = v25 - v12;
  sub_2157EC008(v5, v25 - v12, &qword_27CA73C68, &qword_21580E930);
  v14 = sub_21580BA60();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);

  if (EnumTagSinglePayload == 1)
  {
    sub_2157EC06C(v13, &qword_27CA73C68, &qword_21580E930);
  }

  else
  {
    sub_21580BA50();
    (*(*(v14 - 8) + 8))(v13, v14);
  }

  v17 = *(v1 + 16);
  v16 = *(v1 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_21580BA10();
    v20 = v19;
    swift_unknownObjectRelease();
    if (v7)
    {
LABEL_6:
      v21 = sub_21580B8F0() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = v3;
      *(v22 + 24) = v1;

      if (v20 | v18)
      {
        v26[0] = 0;
        v26[1] = 0;
        v23 = v26;
        v26[2] = v18;
        v26[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v25[1] = 7;
      v25[2] = v23;
      v25[3] = v21;
      swift_task_create();

      sub_2157EC06C(v5, &qword_27CA73C68, &qword_21580E930);

      goto LABEL_14;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (v7)
    {
      goto LABEL_6;
    }
  }

  sub_2157EC06C(v5, &qword_27CA73C68, &qword_21580E930);
  v24 = swift_allocObject();
  *(v24 + 16) = v3;
  *(v24 + 24) = v1;
  if (v20 | v18)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v18;
    v26[7] = v20;
  }

  swift_task_create();
LABEL_14:
  OUTLINED_FUNCTION_61_0();
}

uint64_t sub_215803BE0()
{
  v1 = *(v0 + 136);

  v2 = sub_215803470();

  return v2 & 1;
}

uint64_t sub_215803C1C(char a1)
{
  v3 = *(v1 + 136);

  sub_2158034E8(a1);
}

uint64_t sub_215803C64()
{
  v1 = *(v0 + 152);

  v2 = sub_215803414();

  return v2;
}

uint64_t sub_215803CB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 152);

  sub_215803534(a1, a2, a3);
}

uint64_t sub_215803D18()
{
  v1 = *(v0 + 168);

  v2 = sub_2158034A8();

  return v2;
}

uint64_t sub_215803D54(uint64_t a1)
{
  v3 = *(v1 + 168);

  sub_2158035F4(a1);
}

void sub_215803D9C()
{
  v1 = v0;
  if (qword_28119CC70 != -1)
  {
    OUTLINED_FUNCTION_1_7();
  }

  v2 = sub_21580B7F0();
  __swift_project_value_buffer(v2, qword_28119DA40);
  v3 = sub_21580B7D0();
  v4 = sub_21580BAE0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = OUTLINED_FUNCTION_79();
    *v5 = 0;
    _os_log_impl(&dword_2157E4000, v3, v4, "SafariSummarizationPrefetch - Canceling task if needed", v5, 2u);
    OUTLINED_FUNCTION_8_2();
  }

  if (sub_215803D18())
  {
    sub_21580BA70();
  }

  sub_215803D54(0);
  OUTLINED_FUNCTION_57();
  sub_215803CB8(v6, v7, v8);
  oslog = sub_21580B7D0();
  sub_21580BAE0();
  OUTLINED_FUNCTION_16_0();
  if (os_log_type_enabled(oslog, v9))
  {
    v10 = OUTLINED_FUNCTION_79();
    *v10 = 0;
    _os_log_impl(&dword_2157E4000, oslog, v1, "SafariSummarizationPrefetch - Successfully reset filter", v10, 2u);
    OUTLINED_FUNCTION_12_2();
  }
}

uint64_t sub_215803F34()
{
  v1 = *(v0[5] + 160);
  v2 = *(v1 + 16);

  Lock.lock()();
  swift_beginAccess();
  if (*(v1 + 24))
  {
    Lock.unlock()();

    if (qword_28119CC70 != -1)
    {
      OUTLINED_FUNCTION_1_7();
    }

    v3 = sub_21580B7F0();
    OUTLINED_FUNCTION_29(v3, qword_28119DA40);
    v4 = sub_21580B7D0();
    sub_21580BAE0();
    OUTLINED_FUNCTION_16_0();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = OUTLINED_FUNCTION_79();
      OUTLINED_FUNCTION_25(v6);
      OUTLINED_FUNCTION_18(&dword_2157E4000, v7, v8, "SafariSummarizationPrefetch - Throttling new submission. Loading the url path filter data is already in progress");
      OUTLINED_FUNCTION_7_3();
    }

    OUTLINED_FUNCTION_54_0();

    return v9(0);
  }

  else
  {
    *(v1 + 24) = 1;
    Lock.unlock()();

    if (qword_28119CC70 != -1)
    {
      OUTLINED_FUNCTION_1_7();
    }

    v11 = sub_21580B7F0();
    v0[6] = __swift_project_value_buffer(v11, qword_28119DA40);
    v12 = sub_21580B7D0();
    sub_21580BAE0();
    OUTLINED_FUNCTION_16_0();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = OUTLINED_FUNCTION_79();
      OUTLINED_FUNCTION_25(v14);
      OUTLINED_FUNCTION_18(&dword_2157E4000, v15, v16, "SafariSummarizationPrefetch - Start loading the url path filter data");
      OUTLINED_FUNCTION_7_3();
    }

    v17 = swift_task_alloc();
    v0[7] = v17;
    *v17 = v0;
    v17[1] = sub_215804144;
    v18 = v0[5];

    return sub_215804558();
  }
}

uint64_t sub_215804144()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5();
  v3 = v2;
  v4 = v2[7];
  v12 = *v1;
  v3[8] = v5;
  v3[9] = v6;
  v3[10] = v7;
  v3[11] = v0;

  OUTLINED_FUNCTION_57();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_215804250()
{
  OUTLINED_FUNCTION_31();
  v1 = v0[9];
  v2 = v0[5];

  v3 = sub_215803C64();
  v5 = v0[9];
  if (v4)
  {
    v6 = v3;
    v7 = v4;
    v8 = v0[8];

    sub_215809C2C(v6, v7);
    v9 = v0[9];
    if (v8 == v6 && v7 == v5)
    {

      goto LABEL_14;
    }

    v11 = v0[8];
    v12 = v0[9];
    v13 = sub_21580BD30();

    if (v13)
    {
      v14 = v0[9];
LABEL_14:

      v25 = v0[10];

LABEL_15:
      v26 = 0;
      v27 = v0[5];
      goto LABEL_17;
    }
  }

  else
  {
    v15 = v0[9];
  }

  v16 = sub_21580BA80();
  v17 = v0[10];
  if (v16)
  {
    v18 = v0[6];
    v19 = v0[9];

    v20 = sub_21580B7D0();
    sub_21580BAE0();
    OUTLINED_FUNCTION_16_0();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = OUTLINED_FUNCTION_79();
      OUTLINED_FUNCTION_25(v22);
      OUTLINED_FUNCTION_18(&dword_2157E4000, v23, v24, "SafariSummarizationPrefetch - Task cancelled, skip updating urlRedactPatterns");
      OUTLINED_FUNCTION_7_3();
    }

    goto LABEL_15;
  }

  v27 = v0[5];
  sub_215803CB8(v0[8], v0[9], v0[10]);
  v26 = 1;
LABEL_17:
  sub_215804454(v27);
  OUTLINED_FUNCTION_54_0();

  return v28(v26);
}

uint64_t sub_2158043F0()
{
  OUTLINED_FUNCTION_3();

  sub_215804454(*(v0 + 40));
  OUTLINED_FUNCTION_54_0();

  return v1(0);
}

uint64_t sub_215804454(uint64_t a1)
{
  if (qword_28119CC70 != -1)
  {
    swift_once();
  }

  v2 = sub_21580B7F0();
  __swift_project_value_buffer(v2, qword_28119DA40);
  v3 = sub_21580B7D0();
  v4 = sub_21580BAE0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_2157E4000, v3, v4, "SafariSummarizationPrefetch - Finish loading the url path filter data", v5, 2u);
    MEMORY[0x216072190](v5, -1, -1);
  }

  v6 = *(a1 + 160);

  sub_2158038BC(0);
}

uint64_t sub_215804558()
{
  OUTLINED_FUNCTION_3();
  v1[20] = v0;
  v2 = sub_21580B3E0();
  v1[21] = v2;
  OUTLINED_FUNCTION_6_3(v2);
  v1[22] = v3;
  v5 = *(v4 + 64);
  v1[23] = OUTLINED_FUNCTION_49_0();
  v6 = sub_21580B8D0();
  v1[24] = v6;
  OUTLINED_FUNCTION_6_3(v6);
  v1[25] = v7;
  v9 = *(v8 + 64);
  v1[26] = OUTLINED_FUNCTION_49_0();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73FE8, &qword_21580E968);
  v1[27] = v10;
  OUTLINED_FUNCTION_6_3(v10);
  v1[28] = v11;
  v13 = *(v12 + 64);
  v1[29] = OUTLINED_FUNCTION_49_0();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73FF0, &unk_21580E970);
  v1[30] = v14;
  OUTLINED_FUNCTION_6_3(v14);
  v1[31] = v15;
  v17 = *(v16 + 64);
  v1[32] = OUTLINED_FUNCTION_49_0();
  v18 = sub_21580B5E0();
  v1[33] = v18;
  OUTLINED_FUNCTION_6_3(v18);
  v1[34] = v19;
  v21 = *(v20 + 64) + 15;
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  v22 = sub_21580B700();
  v1[39] = v22;
  OUTLINED_FUNCTION_6_3(v22);
  v1[40] = v23;
  v25 = *(v24 + 64);
  v1[41] = OUTLINED_FUNCTION_49_0();
  v26 = sub_21580B760();
  OUTLINED_FUNCTION_48(v26);
  v28 = *(v27 + 64);
  v1[42] = OUTLINED_FUNCTION_49_0();
  v29 = OUTLINED_FUNCTION_21();

  return MEMORY[0x2822009F8](v29, v30, v31);
}

uint64_t sub_2158047DC()
{
  v92 = v0;
  v1 = *(v0 + 336);
  v2 = *(v0 + 160);
  v3 = *(v2 + 104);
  (*(*(v0 + 320) + 104))(*(v0 + 328), *MEMORY[0x277D39D88], *(v0 + 312));

  sub_21580B770();
  v4 = type metadata accessor for ResourceAccessSpan();
  OUTLINED_FUNCTION_67_0(v4);
  v5 = OUTLINED_FUNCTION_46_0(v3, 60, v1);
  v6 = v5;
  *(v0 + 344) = v5;
  if ((*(v2 + 128) & 1) == 0)
  {
    *(v5 + qword_28119D508) = 1;
  }

  v7 = *(v0 + 160);
  v8 = v7[5];
  if (!v8)
  {
    if (qword_28119CC70 != -1)
    {
      OUTLINED_FUNCTION_1_7();
    }

    v19 = sub_21580B7F0();
    OUTLINED_FUNCTION_29(v19, qword_28119DA40);
    v20 = sub_21580B7D0();
    v21 = sub_21580BAE0();
    if (os_log_type_enabled(v20, v21))
    {
      *OUTLINED_FUNCTION_79() = 0;
      OUTLINED_FUNCTION_17_0();
      _os_log_impl(v22, v23, v24, v25, v26, 2u);
      OUTLINED_FUNCTION_8_2();
    }

    v27 = qword_28119D500;
    v28 = 82;
    goto LABEL_12;
  }

  v9 = v7[4];
  v11 = v7[14];
  v10 = v7[15];
  v12 = v7[6];
  v13 = v7[7];

  v11(v9, v8, v12, v13);

  if (!*(v0 + 80))
  {
    sub_2157EC06C(v0 + 56, &qword_27CA73C10, &qword_21580CB30);
    v27 = qword_28119D500;
    v28 = 97;
LABEL_12:
    *(v6 + v27) = v28;
    sub_215802470();
    sub_215809E5C();
    OUTLINED_FUNCTION_68_0();
    *v29 = 0;
    swift_willThrow();

    goto LABEL_34;
  }

  v14 = *(v0 + 296);
  v15 = *(v0 + 160);
  sub_2157E59C0((v0 + 56), v0 + 16);
  v16 = *__swift_project_boxed_opaque_existential_1((v15 + 64), *(v15 + 88));
  v17 = sub_2157F4884(v14, (v0 + 16), v6);
  *(v0 + 352) = v17;
  *(v0 + 360) = v18;
  v30 = v17;
  v31 = v18;
  v32 = *(v0 + 160);
  (*(*(v0 + 272) + 32))(*(v0 + 304), *(v0 + 296), *(v0 + 264));
  v33 = sub_215803C64();
  if (!v34)
  {
    goto LABEL_19;
  }

  v36 = v33;
  v37 = v34;
  v38 = v35;

  sub_215809C2C(v36, v37);
  if (v30 == v36 && v37 == v31)
  {
  }

  else
  {
    v40 = sub_21580BD30();

    if ((v40 & 1) == 0)
    {
LABEL_19:
      if (qword_28119CC70 != -1)
      {
        OUTLINED_FUNCTION_1_7();
      }

      v41 = *(v0 + 304);
      v42 = *(v0 + 288);
      v43 = *(v0 + 264);
      v44 = *(v0 + 272);
      v45 = sub_21580B7F0();
      v46 = __swift_project_value_buffer(v45, qword_28119DA40);
      *(v0 + 368) = v46;
      *(v0 + 376) = *(v44 + 16);
      *(v0 + 384) = (v44 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v47 = OUTLINED_FUNCTION_27();
      v48(v47);
      v49 = sub_21580B7D0();
      v50 = sub_21580BAE0();
      v51 = os_log_type_enabled(v49, v50);
      v52 = *(v0 + 288);
      v53 = *(v0 + 264);
      v54 = *(v0 + 272);
      if (v51)
      {
        OUTLINED_FUNCTION_35_0();
        v90 = OUTLINED_FUNCTION_32_0();
        v91 = v90;
        *v46 = 136642819;
        sub_21580B5A0();
        v55 = *(v54 + 8);
        v55(v52, v53);
        v56 = OUTLINED_FUNCTION_57_0();
        v59 = sub_215808B34(v56, v57, v58);

        *(v46 + 4) = v59;
        _os_log_impl(&dword_2157E4000, v49, v50, "SafariSummarizationPrefetch - Scanning url path filter jsonl file at path: %{sensitive}s", v46, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v90);
        OUTLINED_FUNCTION_12_2();
        OUTLINED_FUNCTION_8_2();
      }

      else
      {

        v55 = *(v54 + 8);
        v55(v52, v53);
      }

      *(v0 + 392) = v55;
      v69 = *(v0 + 304);
      v70 = *(v0 + 256);
      v72 = *(v0 + 224);
      v71 = *(v0 + 232);
      v73 = *(v0 + 216);
      *(v0 + 400) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73FF8, &qword_21580E980);
      v74 = sub_21580B850();
      sub_21580B5B0();
      sub_21580B510();
      (*(v72 + 8))(v71, v73);
      *(v0 + 448) = *MEMORY[0x277CC86A8];
      *(v0 + 408) = v74;
      *(v0 + 452) = 0;
      sub_215809EB0();
      v75 = *(MEMORY[0x277D856D0] + 4);
      v76 = swift_task_alloc();
      *(v0 + 416) = v76;
      *v76 = v0;
      v77 = OUTLINED_FUNCTION_9_2(v76);

      return MEMORY[0x282200308](v77);
    }
  }

  if (qword_28119CC70 != -1)
  {
    OUTLINED_FUNCTION_1_7();
  }

  v60 = sub_21580B7F0();
  OUTLINED_FUNCTION_29(v60, qword_28119DA40);

  v61 = sub_21580B7D0();
  sub_21580BAE0();

  if (OUTLINED_FUNCTION_66())
  {
    OUTLINED_FUNCTION_35_0();
    v62 = OUTLINED_FUNCTION_32_0();
    v91 = v62;
    *v38 = 136315138;
    v63 = sub_215808B34(v30, v31, &v91);

    *(v38 + 4) = v63;
    OUTLINED_FUNCTION_17_0();
    _os_log_impl(v64, v65, v66, v67, v68, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v62);
    OUTLINED_FUNCTION_3_5();
    OUTLINED_FUNCTION_8_2();
  }

  else
  {
  }

  v78 = *(v0 + 304);
  v79 = *(v0 + 264);
  v80 = *(v0 + 272);
  *(v6 + qword_28119D500) = 96;
  sub_215802470();
  sub_215809E5C();
  OUTLINED_FUNCTION_68_0();
  *v81 = 2;
  swift_willThrow();

  v82 = *(v80 + 8);
  v83 = OUTLINED_FUNCTION_56();
  v84(v83);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
LABEL_34:
  v86 = *(v0 + 328);
  v85 = *(v0 + 336);
  OUTLINED_FUNCTION_10_1();
  v87 = *(v0 + 184);

  OUTLINED_FUNCTION_6();

  return v88();
}

uint64_t sub_21580501C()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5();
  v3 = v2;
  v4 = v2[52];
  v5 = *v1;
  OUTLINED_FUNCTION_2();
  *v6 = v5;
  v3[53] = v0;

  if (v0)
  {
    v7 = v3[51];
    v8 = v3[45];
  }

  OUTLINED_FUNCTION_57();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_215805148()
{
  v155 = v0;
  v4 = *(v0 + 440);
  if (!v4)
  {
    v30 = *(v0 + 408);
    v31 = *(v0 + 368);
    (*(*(v0 + 248) + 8))(*(v0 + 256), *(v0 + 240));

    v32 = sub_21580B7D0();
    sub_21580BAE0();
    OUTLINED_FUNCTION_16_0();
    v34 = os_log_type_enabled(v32, v33);
    v35 = *(v0 + 408);
    if (v34)
    {
      v36 = OUTLINED_FUNCTION_35_0();
      *v36 = 134217984;
      *(v36 + 4) = *(v35 + 16);

      _os_log_impl(&dword_2157E4000, v32, v30, "SafariSummarizationPrefetch - Made UrlRedactMap with %ld entries", v36, 0xCu);
      OUTLINED_FUNCTION_8_2();
    }

    else
    {
      v51 = *(v0 + 408);
    }

    v52 = 81;
    switch(*(v0 + 452))
    {
      case 0:
        goto LABEL_17;
      case 1:
      case 2:
      case 3:
      case 8:
      case 9:
      case 0xA:
      case 0xB:
      case 0x10:
      case 0x11:
      case 0x12:
      case 0x13:
      case 0x18:
      case 0x19:
      case 0x1A:
      case 0x1B:
LABEL_16:
        v52 = *(v0 + 452);
LABEL_17:
        v53 = *(v0 + 392);
        v54 = *(v0 + 336);
        v55 = *(v0 + 328);
        v57 = *(v0 + 296);
        v56 = *(v0 + 304);
        v58 = *(v0 + 288);
        v60 = *(v0 + 264);
        v59 = *(v0 + 272);
        v140 = *(v0 + 280);
        v143 = *(v0 + 256);
        v147 = *(v0 + 232);
        v150 = *(v0 + 208);
        v152 = *(v0 + 184);
        *(*(v0 + 344) + qword_28119D500) = v52;
        sub_215802470();

        v53(v56, v60);
        __swift_destroy_boxed_opaque_existential_1((v0 + 16));

        v61 = *(v0 + 8);
        v62 = *(v0 + 408);
        v63 = *(v0 + 352);
        v64 = *(v0 + 360);
        OUTLINED_FUNCTION_40_0();

        __asm { BRAA            X4, X16 }

        return result;
      case 4:
      case 5:
      case 6:
      case 7:
      case 0xC:
      case 0xD:
      case 0xE:
      case 0xF:
      case 0x14:
      case 0x15:
      case 0x16:
      case 0x17:
        goto LABEL_65;
      default:
        switch(*(v0 + 452))
        {
          case 'D':
          case 'E':
          case 'F':
          case 'G':
          case 'L':
          case 'M':
          case 'N':
          case 'O':
          case 'T':
          case 'U':
          case 'V':
          case 'W':
            goto LABEL_65;
          case 'Q':
            goto LABEL_17;
          default:
            goto LABEL_16;
        }
    }

    goto LABEL_65;
  }

  if (sub_21580BA80())
  {
    v6 = *(v0 + 400);
    v5 = *(v0 + 408);
    v8 = *(v0 + 360);
    v7 = *(v0 + 368);

    sub_21580B850();

    v9 = sub_21580B7D0();
    sub_21580BAC0();
    OUTLINED_FUNCTION_16_0();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = OUTLINED_FUNCTION_79();
      OUTLINED_FUNCTION_25(v11);
      _os_log_impl(&dword_2157E4000, v9, v6, "SafariSummarizationPrefetch - Task cancelled, exit scanning path filter json file", v4, 2u);
      OUTLINED_FUNCTION_7_3();
    }

    v12 = *(v0 + 344);

    *(v12 + qword_28119D500) = 94;
    sub_215802470();
    sub_215809E5C();
    v13 = OUTLINED_FUNCTION_68_0();
    *v14 = 3;
    swift_willThrow();
    v15 = OUTLINED_FUNCTION_18_1();
    v16(v15);
    sub_21580B850();

    v3(v1, v9, v2);
    v17 = v13;
    v18 = sub_21580B7D0();
    v19 = sub_21580BAC0();

    v20 = os_log_type_enabled(v18, v19);
    v21 = *(v0 + 392);
    v22 = *(v0 + 272);
    v23 = *(v0 + 280);
    v24 = *(v0 + 264);
    if (v20)
    {
      v146 = v19;
      v25 = OUTLINED_FUNCTION_58();
      v142 = OUTLINED_FUNCTION_50_0();
      v149 = OUTLINED_FUNCTION_34_0();
      v154[0] = v149;
      *v25 = 136643075;
      v26 = sub_21580B5A0();
      v2 = v27;
      v28 = OUTLINED_FUNCTION_4_5();
      v21(v28);
      sub_215808B34(v26, v2, v154);

      OUTLINED_FUNCTION_63_0();
      v29 = _swift_stdlib_bridgeErrorToNSError();
      *(v25 + 14) = v29;
      *v142 = v29;
      OUTLINED_FUNCTION_64_0(&dword_2157E4000, "SafariSummarizationPrefetch - Failed while scanning url path filter jsonl file at path: %{sensitive}s, with error: %@", v146);
      sub_2157EC06C(v142, &qword_27CA73DA8, &qword_21580D0D8);
      OUTLINED_FUNCTION_12_2();
      v23 = v149;
      __swift_destroy_boxed_opaque_existential_1(v149);
      OUTLINED_FUNCTION_12_2();
      OUTLINED_FUNCTION_8_2();
    }

    else
    {

      v67 = OUTLINED_FUNCTION_4_5();
      v21(v67);
    }

    OUTLINED_FUNCTION_53_0();
    *(v23 + qword_28119D500) = 91;
    sub_215802470();
    swift_willThrow();

    v68 = OUTLINED_FUNCTION_56();
    v2(v68);
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    v70 = *(v0 + 328);
    v69 = *(v0 + 336);
    OUTLINED_FUNCTION_10_1();
    v71 = *(v0 + 184);

    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_40_0();

    __asm { BRAA            X1, X16 }
  }

  v37 = *(v0 + 432);
  v39 = *(v0 + 200);
  v38 = *(v0 + 208);
  v40 = *(v0 + 192);
  sub_21580B8C0();
  v41 = sub_21580B8A0();
  v43 = v42;

  (*(v39 + 8))(v38, v40);
  if (v43 >> 60 == 15)
  {
    v44 = *(v0 + 368);
    v45 = sub_21580B7D0();
    sub_21580BAC0();
    OUTLINED_FUNCTION_16_0();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = OUTLINED_FUNCTION_79();
      OUTLINED_FUNCTION_25(v47);
      OUTLINED_FUNCTION_18(&dword_2157E4000, v48, v49, "SafariSummarizationPrefetch - Failed to scan line in path filter jsonl file");
      OUTLINED_FUNCTION_7_3();
    }

    v50 = 89;
    goto LABEL_58;
  }

  v74 = *(v0 + 424);
  v75 = *(v0 + 448);
  v77 = *(v0 + 176);
  v76 = *(v0 + 184);
  v78 = *(v0 + 168);
  v79 = sub_21580B420();
  OUTLINED_FUNCTION_67_0(v79);
  sub_21580B410();
  (*(v77 + 104))(v76, v75, v78);
  sub_21580B3F0();
  sub_215809F14();
  sub_21580B400();
  if (v74)
  {
    v80 = *(v0 + 368);

    v81 = OUTLINED_FUNCTION_57_0();
    sub_215809F68(v81, v82);
    v83 = v74;
    v84 = sub_21580B7D0();
    v85 = sub_21580BAC0();
    v86 = OUTLINED_FUNCTION_57_0();
    sub_2157EEF2C(v86, v87);

    if (os_log_type_enabled(v84, v85))
    {
      v88 = *(v0 + 208);
      v89 = OUTLINED_FUNCTION_58();
      v90 = v41;
      v91 = OUTLINED_FUNCTION_50_0();
      v92 = OUTLINED_FUNCTION_34_0();
      v154[0] = v92;
      *v89 = 136643075;
      sub_21580B8C0();
      OUTLINED_FUNCTION_43_0();
      v93 = sub_21580B8B0();
      if (v94)
      {
        v95 = v94;
      }

      else
      {
        v93 = 0;
        v95 = 0xE000000000000000;
      }

      v144 = v43;
      v96 = sub_215808B34(v93, v95, v154);

      *(v89 + 4) = v96;
      *(v89 + 12) = 2112;
      v97 = v74;
      v98 = _swift_stdlib_bridgeErrorToNSError();
      *(v89 + 14) = v98;
      *v91 = v98;
      _os_log_impl(&dword_2157E4000, v84, v85, "SafariSummarizationPrefetch - Failed to deserialize scanned json line %{sensitive}s, with error: %@. Skipping this line", v89, 0x16u);
      sub_2157EC06C(v91, &qword_27CA73DA8, &qword_21580D0D8);
      OUTLINED_FUNCTION_3_5();
      __swift_destroy_boxed_opaque_existential_1(v92);
      OUTLINED_FUNCTION_8_2();
      OUTLINED_FUNCTION_3_5();
      sub_2157EEF2C(v90, v144);
    }

    else
    {

      v125 = OUTLINED_FUNCTION_57_0();
      sub_2157EEF2C(v125, v126);
    }

    v50 = 90;
LABEL_58:
    *(v0 + 452) = v50;
    sub_215809EB0();
    v135 = *(MEMORY[0x277D856D0] + 4);
    v136 = swift_task_alloc();
    *(v0 + 416) = v136;
    *v136 = v0;
    OUTLINED_FUNCTION_9_2();
    OUTLINED_FUNCTION_40_0();

    return MEMORY[0x282200308]();
  }

  v139 = *(v0 + 96);
  v141 = *(v0 + 104);
  v145 = v43;
  v99 = *(v0 + 112);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73EC8, &qword_21580D750);
  v100 = sub_21580B850();
  v148 = *(v99 + 16);
  if (v148)
  {
    v138 = v41;

    v101 = 0;
    v102 = (v99 + 40);
    v153 = v0;
    while (v101 < *(v99 + 16))
    {
      v103 = *(v102 - 1);
      v104 = *v102;
      swift_bridgeObjectRetain_n();
      swift_isUniquelyReferenced_nonNull_native();
      *(v0 + 144) = v100;
      v151 = v103;
      v105 = sub_2158091C0(v103);
      if (__OFADD__(v100[2], (v106 & 1) == 0))
      {
        goto LABEL_62;
      }

      v107 = v105;
      v108 = v106;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA74000, &qword_21580E988);
      if (sub_21580BC30())
      {
        v109 = *(v0 + 144);
        v110 = sub_2158091C0(v151);
        if ((v108 & 1) != (v111 & 1))
        {
          goto LABEL_49;
        }

        v107 = v110;
      }

      v100 = *(v153 + 144);
      if (v108)
      {
        v112 = v100[7];
        v113 = *(v112 + 8 * v107);
        *(v112 + 8 * v107) = v104;
      }

      else
      {
        v100[(v107 >> 6) + 8] |= 1 << v107;
        *(v100[6] + 8 * v107) = v151;
        *(v100[7] + 8 * v107) = v104;

        v114 = v100[2];
        v115 = __OFADD__(v114, 1);
        v116 = v114 + 1;
        if (v115)
        {
          goto LABEL_63;
        }

        v100[2] = v116;
      }

      ++v101;
      v102 += 2;
      v0 = v153;
      if (v148 == v101)
      {

        v41 = v138;
        goto LABEL_43;
      }
    }

    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

LABEL_43:
  v117 = *(v0 + 408);
  swift_isUniquelyReferenced_nonNull_native();
  *(v0 + 152) = v117;
  v118 = sub_2158090E4(v139, v141);
  if (__OFADD__(*(v117 + 16), (v119 & 1) == 0))
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  v120 = v118;
  v121 = v119;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA74008, &unk_21580E990);
  if ((sub_21580BC30() & 1) == 0)
  {
LABEL_53:
    v129 = *(v0 + 152);
    if (v121)
    {
      v130 = v129[7];
      v131 = *(v130 + 8 * v120);
      *(v130 + 8 * v120) = v100;
    }

    else
    {
      v129[(v120 >> 6) + 8] |= 1 << v120;
      v132 = (v129[6] + 16 * v120);
      *v132 = v139;
      v132[1] = v141;
      *(v129[7] + 8 * v120) = v100;
      v133 = v129[2];
      v115 = __OFADD__(v133, 1);
      v134 = v133 + 1;
      if (v115)
      {
LABEL_65:
        __break(1u);
        return MEMORY[0x282200308]();
      }

      v129[2] = v134;
    }

    sub_2157EEF2C(v41, v145);
    v50 = *(v0 + 452);
    *(v0 + 408) = v129;
    goto LABEL_58;
  }

  v122 = *(v0 + 152);
  v123 = sub_2158090E4(v139, v141);
  if ((v121 & 1) == (v124 & 1))
  {
    v120 = v123;
    goto LABEL_53;
  }

LABEL_49:
  OUTLINED_FUNCTION_40_0();

  return sub_21580BD60();
}

uint64_t sub_215805C98()
{
  OUTLINED_FUNCTION_3();
  *(v0 + 136) = *(v0 + 424);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73E00, &unk_21580D160);
  swift_willThrowTypedImpl();
  v1 = OUTLINED_FUNCTION_21();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_215805D20()
{
  v32 = v0;
  v5 = v0[53];
  v6 = OUTLINED_FUNCTION_18_1();
  v7(v6);
  sub_21580B850();

  v4(v2, v1, v3);
  v8 = v5;
  v9 = sub_21580B7D0();
  v10 = sub_21580BAC0();

  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[49];
  v13 = v0[34];
  v14 = v0[35];
  v15 = v0[33];
  if (v11)
  {
    v29 = v10;
    v16 = OUTLINED_FUNCTION_58();
    v28 = OUTLINED_FUNCTION_50_0();
    v30 = OUTLINED_FUNCTION_34_0();
    v31 = v30;
    *v16 = 136643075;
    v17 = sub_21580B5A0();
    v3 = v18;
    v19 = OUTLINED_FUNCTION_4_5();
    v12(v19);
    sub_215808B34(v17, v3, &v31);

    OUTLINED_FUNCTION_63_0();
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 14) = v20;
    *v28 = v20;
    OUTLINED_FUNCTION_64_0(&dword_2157E4000, "SafariSummarizationPrefetch - Failed while scanning url path filter jsonl file at path: %{sensitive}s, with error: %@", v29);
    sub_2157EC06C(v28, &qword_27CA73DA8, &qword_21580D0D8);
    OUTLINED_FUNCTION_12_2();
    v14 = v30;
    __swift_destroy_boxed_opaque_existential_1(v30);
    OUTLINED_FUNCTION_12_2();
    OUTLINED_FUNCTION_8_2();
  }

  else
  {

    v21 = OUTLINED_FUNCTION_4_5();
    v12(v21);
  }

  OUTLINED_FUNCTION_53_0();
  *(v14 + qword_28119D500) = 91;
  sub_215802470();
  swift_willThrow();

  v22 = OUTLINED_FUNCTION_56();
  v3(v22);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v24 = v0[41];
  v23 = v0[42];
  OUTLINED_FUNCTION_10_1();
  v25 = v0[23];

  OUTLINED_FUNCTION_6();

  return v26();
}

uint8_t *sub_215805F9C(uint8_t *a1, unint64_t a2)
{
  v190 = sub_21580B700();
  v4 = OUTLINED_FUNCTION_2_2(v190);
  v188 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7();
  v187 = v9 - v8;
  v10 = sub_21580B760();
  v11 = OUTLINED_FUNCTION_48(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_7();
  v189 = (v15 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73C68, &qword_21580E930);
  OUTLINED_FUNCTION_48(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v19);
  v184 = &v181 - v20;
  v186 = sub_21580B6C0();
  v21 = OUTLINED_FUNCTION_2_2(v186);
  v185 = v22;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_7();
  v27 = v26 - v25;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA73C58, &dword_21580CB68);
  v29 = OUTLINED_FUNCTION_48(v28);
  v31 = *(v30 + 64);
  v32 = MEMORY[0x28223BE20](v29);
  v34 = &v181 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v36 = &v181 - v35;
  v37 = sub_21580B4D0();
  v38 = OUTLINED_FUNCTION_2_2(v37);
  v194 = v39;
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_7();
  v193 = v43 - v42;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73FB8, &unk_21580E8F0);
  OUTLINED_FUNCTION_48(v44);
  v46 = *(v45 + 64);
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v47);
  v49 = &v181 - v48;
  v50 = sub_21580B5E0();
  v51 = OUTLINED_FUNCTION_2_2(v50);
  v53 = v52;
  v55 = *(v54 + 64);
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_7();
  v58 = v57 - v56;
  v191 = a1;
  v195 = a2;
  sub_21580B5C0();
  if (__swift_getEnumTagSinglePayload(v49, 1, v50) == 1)
  {
    sub_2157EC06C(v49, &qword_27CA73FB8, &unk_21580E8F0);
    if (qword_28119CC70 != -1)
    {
      OUTLINED_FUNCTION_1_7();
    }

    v59 = sub_21580B7F0();
    OUTLINED_FUNCTION_29(v59, qword_28119DA40);
    v60 = v195;

    v61 = sub_21580B7D0();
    sub_21580BAC0();

    if (OUTLINED_FUNCTION_69_0())
    {
      v62 = OUTLINED_FUNCTION_35_0();
      v63 = OUTLINED_FUNCTION_34_0();
      v200[0] = v63;
      *v62 = 136642819;
      *(v62 + 4) = sub_215808B34(v191, v60, v200);
      OUTLINED_FUNCTION_62_0(&dword_2157E4000, v64, v65, "SafariSummarizationPrefetch - Invalid URL (%{sensitive}s) found");
      __swift_destroy_boxed_opaque_existential_1(v63);
      OUTLINED_FUNCTION_8_2();
      OUTLINED_FUNCTION_3_5();
    }

    return 0;
  }

  v183 = v53;
  v66 = *(v53 + 32);
  v67 = OUTLINED_FUNCTION_42_0();
  v68(v67);
  sub_21580B4A0();
  v69 = v50;
  v70 = v37;
  if (__swift_getEnumTagSinglePayload(v36, 1, v37) == 1)
  {
    sub_2157EC06C(v36, &unk_27CA73C58, &dword_21580CB68);
    OUTLINED_FUNCTION_55_0();
    __swift_storeEnumTagSinglePayload(v71, v72, v73, v37);
    sub_215808490();
    OUTLINED_FUNCTION_30();
    sub_2157EC06C(v34, &unk_27CA73C58, &dword_21580CB68);
    if (qword_28119CC70 != -1)
    {
      OUTLINED_FUNCTION_1_7();
    }

    v74 = sub_21580B7F0();
    OUTLINED_FUNCTION_29(v74, qword_28119DA40);

    v75 = sub_21580B7D0();
    sub_21580BAB0();

    if (OUTLINED_FUNCTION_66())
    {
      OUTLINED_FUNCTION_35_0();
      v76 = OUTLINED_FUNCTION_32_0();
      v200[0] = v76;
      LODWORD(dword_21580CB68) = 136642819;
      if (v37)
      {
        v77 = a1;
      }

      else
      {
        v77 = 6369134;
      }

      if (v37)
      {
        v78 = v37;
      }

      else
      {
        v78 = 0xE300000000000000;
      }

      v79 = sub_215808B34(v77, v78, v200);

      unk_21580CB6C = v79;
      OUTLINED_FUNCTION_17_0();
      _os_log_impl(v80, v81, v82, v83, v84, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v76);
      OUTLINED_FUNCTION_3_5();
      OUTLINED_FUNCTION_8_2();

      v85 = OUTLINED_FUNCTION_3_6();
      v87 = v50;
      goto LABEL_39;
    }

LABEL_38:
    v85 = OUTLINED_FUNCTION_3_6();
    v87 = v69;
LABEL_39:
    v86(v85, v87);
    return a1;
  }

  v182 = v34;
  (*(v194 + 32))(v193, v36, v37);
  v88 = v192;
  if ((sub_215803BE0() & 1) == 0)
  {
    sub_21580B6B0();
    sub_21580B690();
    v90 = v89;
    (*(v185 + 8))(v27, v186);
    if (v90 < *(v88 + 144))
    {
      if (qword_28119CC70 != -1)
      {
        OUTLINED_FUNCTION_1_7();
      }

      v91 = sub_21580B7F0();
      OUTLINED_FUNCTION_29(v91, qword_28119DA40);

      v92 = sub_21580B7D0();
      sub_21580BAE0();

      if (OUTLINED_FUNCTION_69_0())
      {
        v93 = OUTLINED_FUNCTION_35_0();
        a1 = v70;
        *v93 = 134217984;
        *(v93 + 4) = *(v88 + 144);
        OUTLINED_FUNCTION_37_0();
        _os_log_impl(v94, v95, v96, v97, v98, 0xCu);
        OUTLINED_FUNCTION_3_5();
      }

      v100 = v193;
      v99 = v194;
      v101 = OUTLINED_FUNCTION_28_0(v194);
      v102(v101);
      OUTLINED_FUNCTION_31_0();
      __swift_storeEnumTagSinglePayload(v103, v104, v105, v70);
      sub_215808490();
      OUTLINED_FUNCTION_30();
      sub_2157EC06C(v27, &unk_27CA73C58, &dword_21580CB68);
      (*(v99 + 8))(v100, v70);
      goto LABEL_38;
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      v156 = v193;
      v155 = v194;
      v157 = OUTLINED_FUNCTION_28_0(v194);
      v158(v157);
      OUTLINED_FUNCTION_31_0();
      __swift_storeEnumTagSinglePayload(v159, v160, v161, v37);
      sub_215808490();
      OUTLINED_FUNCTION_30();
      sub_2157EC06C(v27, &unk_27CA73C58, &dword_21580CB68);
      (*(v155 + 8))(v156, v37);
      goto LABEL_38;
    }

    v107 = Strong;
    v108 = *(v88 + 24);
    sub_21580BA60();
    OUTLINED_FUNCTION_55_0();
    __swift_storeEnumTagSinglePayload(v109, v110, v111, v112);
    v113 = swift_allocObject();
    swift_weakInit();
    v114 = swift_allocObject();
    v114[2] = 0;
    v114[3] = 0;
    v114[4] = v113;
    v114[5] = v107;
    v114[6] = v108;
    swift_unknownObjectRetain();
    v69 = v50;
    v70 = v37;
    sub_215803914();
    sub_215803D54(v115);
    swift_unknownObjectRelease();
  }

  v116 = *(v88 + 104);
  (*(v188 + 104))(v187, *MEMORY[0x277D39D88], v190);

  a1 = v189;
  sub_21580B770();
  v117 = type metadata accessor for ResourceAccessSpan();
  OUTLINED_FUNCTION_67_0(v117);
  v118 = OUTLINED_FUNCTION_46_0(v116, 61, a1);
  if ((*(v88 + 128) & 1) == 0)
  {
    *(v118 + qword_28119D508) = 1;
  }

  v119 = *(v88 + 40);
  if (!v119)
  {
    OUTLINED_FUNCTION_44_0(qword_28119D500);
    v133 = v193;
    v132 = v194;
    v134 = *(v194 + 16);
    v135 = v182;
    v136 = OUTLINED_FUNCTION_36_0();
    v137(v136);
    OUTLINED_FUNCTION_31_0();
    __swift_storeEnumTagSinglePayload(v138, v139, v140, v70);
    sub_215808490();
    OUTLINED_FUNCTION_30();

    sub_2157EC06C(v135, &unk_27CA73C58, &dword_21580CB68);
    (*(v132 + 8))(v133, v70);
    goto LABEL_38;
  }

  v120 = v69;
  v121 = *(v88 + 32);
  v123 = *(v88 + 112);
  v122 = *(v88 + 120);
  v124 = *(v88 + 48);
  v125 = *(v88 + 56);

  v123(&v197, v121, v119, v124, v125);

  if (!v198)
  {
    sub_2157EC06C(&v197, &qword_27CA73C10, &qword_21580CB30);
    OUTLINED_FUNCTION_44_0(qword_28119D500);

    (*(v194 + 8))(v193, v70);
    v142 = OUTLINED_FUNCTION_3_6();
    v143(v142, v120);
    return 0;
  }

  sub_2157E59C0(&v197, v200);
  sub_21580B590();
  if (!v126)
  {
LABEL_43:
    if (qword_28119CC70 != -1)
    {
      OUTLINED_FUNCTION_1_7();
    }

    v144 = sub_21580B7F0();
    OUTLINED_FUNCTION_29(v144, qword_28119DA40);
    v145 = v195;

    v146 = sub_21580B7D0();
    sub_21580BAC0();

    if (OUTLINED_FUNCTION_69_0())
    {
      v147 = OUTLINED_FUNCTION_35_0();
      v148 = OUTLINED_FUNCTION_34_0();
      *&v197 = v148;
      *v147 = 136642819;
      *(v147 + 4) = sub_215808B34(v191, v145, &v197);
      OUTLINED_FUNCTION_62_0(&dword_2157E4000, v149, v150, "SafariSummarizationPrefetch - Invalid URL (%{sensitive}s) found");
      __swift_destroy_boxed_opaque_existential_1(v148);
      OUTLINED_FUNCTION_8_2();
      OUTLINED_FUNCTION_3_5();
    }

    v151 = v183;
    OUTLINED_FUNCTION_44_0(qword_28119D500);

    __swift_destroy_boxed_opaque_existential_1(v200);
    (*(v194 + 8))(v193, v70);
    v152 = *(v151 + 8);
    v153 = OUTLINED_FUNCTION_42_0();
    v154(v153);
    return 0;
  }

  v127 = sub_21580B590();
  if (!v128 || (v129 = sub_2157FA264(v127, v128), a1 = v130, , !a1))
  {

    goto LABEL_43;
  }

  v191 = v120;
  v195 = v70;
  v131 = *__swift_project_boxed_opaque_existential_1((v192 + 64), *(v192 + 88));
  sub_2157F3650(v129, a1, v200, v196);
  sub_2157E59C0(v196, &v197);
  sub_215803C1C(1);
  v162 = v198;
  v163 = v199;
  __swift_project_boxed_opaque_existential_1(&v197, v198);
  v164 = (*(v163 + 8))(v129, a1, v162, v163);

  if ((v164 & 1) == 0)
  {

    v171 = v183;
    if (qword_28119CC70 != -1)
    {
      OUTLINED_FUNCTION_1_7();
    }

    v172 = sub_21580B7F0();
    OUTLINED_FUNCTION_29(v172, qword_28119DA40);
    v173 = sub_21580B7D0();
    v174 = sub_21580BAE0();
    if (os_log_type_enabled(v173, v174))
    {
      v175 = OUTLINED_FUNCTION_79();
      OUTLINED_FUNCTION_25(v175);
      OUTLINED_FUNCTION_37_0();
      _os_log_impl(v176, v177, v178, v179, v180, 2u);
      OUTLINED_FUNCTION_7_3();
    }

    OUTLINED_FUNCTION_44_0(qword_28119D500);

    __swift_destroy_boxed_opaque_existential_1(v200);
    (*(v194 + 8))(v193, v195);
    (*(v171 + 8))(v58, v120);
    __swift_destroy_boxed_opaque_existential_1(&v197);
    return 0;
  }

  if (qword_28119CC70 != -1)
  {
    OUTLINED_FUNCTION_1_7();
  }

  v165 = sub_21580B7F0();
  OUTLINED_FUNCTION_29(v165, qword_28119DA40);
  v166 = sub_21580B7D0();
  v167 = sub_21580BAE0();
  if (os_log_type_enabled(v166, v167))
  {
    a1 = OUTLINED_FUNCTION_79();
    *a1 = 0;
    _os_log_impl(&dword_2157E4000, v166, v167, "SafariSummarizationPrefetch - Domain is in allow-list, request eligible", a1, 2u);
    OUTLINED_FUNCTION_3_5();
  }

  v168 = v193;
  sub_215807534();
  OUTLINED_FUNCTION_30();

  OUTLINED_FUNCTION_44_0(qword_28119D500);

  __swift_destroy_boxed_opaque_existential_1(v200);
  (*(v194 + 8))(v168, v195);
  v169 = OUTLINED_FUNCTION_3_6();
  v170(v169, v120);
  __swift_destroy_boxed_opaque_existential_1(&v197);
  return a1;
}

uint64_t sub_215806FD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 40) = a4;
  *(v5 + 48) = a5;
  return MEMORY[0x2822009F8](sub_215806FF0, 0, 0);
}

uint64_t sub_215806FF0()
{
  v23 = v0;
  v2 = v0[5];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[7] = Strong;
  if (Strong)
  {
    v4 = Strong;
    if (qword_28119CC70 != -1)
    {
      OUTLINED_FUNCTION_1_7();
    }

    v5 = sub_21580B7F0();
    v0[8] = OUTLINED_FUNCTION_29(v5, qword_28119DA40);

    v6 = sub_21580B7D0();
    sub_21580BAE0();

    if (OUTLINED_FUNCTION_66())
    {
      OUTLINED_FUNCTION_58();
      v7 = OUTLINED_FUNCTION_32_0();
      v22 = v7;
      *v1 = 136643075;
      v8 = v4[6];
      v9 = v4[7];

      v10 = sub_215808B34(v8, v9, &v22);

      *(v1 + 4) = v10;
      *(v1 + 12) = 2048;
      *(v1 + 14) = v4[18];
      OUTLINED_FUNCTION_17_0();
      _os_log_impl(v11, v12, v13, v14, v15, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v7);
      OUTLINED_FUNCTION_3_5();
      OUTLINED_FUNCTION_8_2();
    }

    v17 = v4[6];
    v16 = v4[7];
    v0[9] = v16;

    v18 = swift_task_alloc();
    v0[10] = v18;
    *v18 = v0;
    v18[1] = sub_215807204;
    v19 = v0[6];

    return sub_2157E6DB0(v17, v16);
  }

  else
  {
    OUTLINED_FUNCTION_6();

    return v21();
  }
}

uint64_t sub_215807204()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5();
  v2 = *(v1 + 80);
  v3 = *(v1 + 72);
  v4 = *v0;
  OUTLINED_FUNCTION_2();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_21();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_215807304()
{
  OUTLINED_FUNCTION_31();
  v3 = *(v2 + 56);
  sub_215803C64();
  v5 = *(v2 + 64);
  if (v6)
  {
    v7 = *(v4 + 16);

    v8 = v7 != 0;
    v9 = sub_21580B7D0();
    v10 = sub_21580BAE0();
    if (!os_log_type_enabled(v9, v10))
    {
      goto LABEL_8;
    }

    v11 = OUTLINED_FUNCTION_50_0();
    *v11 = 67109120;
    *(v11 + 4) = v7 != 0;
    _os_log_impl(&dword_2157E4000, v9, v10, "SafariSummarizationPrefetch - After delegate.didNotFindAssetAfterThrottlingPeriodExpired hasUrlRedactMap %{BOOL}d", v11, 8u);
    goto LABEL_6;
  }

  v9 = sub_21580B7D0();
  sub_21580BAE0();
  OUTLINED_FUNCTION_16_0();
  if (os_log_type_enabled(v9, v12))
  {
    v13 = OUTLINED_FUNCTION_79();
    OUTLINED_FUNCTION_25(v13);
    _os_log_impl(&dword_2157E4000, v9, v0, "SafariSummarizationPrefetch - After delegate.didNotFindAssetAfterThrottlingPeriodExpired, no urlRedactPatterns", v1, 2u);
    v8 = 0;
LABEL_6:
    OUTLINED_FUNCTION_7_3();
    goto LABEL_8;
  }

  v8 = 0;
LABEL_8:
  v14 = *(v2 + 56);
  v15 = *(v2 + 64);

  sub_2158087C8(v8);
  v16 = sub_21580B7D0();
  sub_21580BAE0();
  OUTLINED_FUNCTION_16_0();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = OUTLINED_FUNCTION_79();
    OUTLINED_FUNCTION_25(v18);
    OUTLINED_FUNCTION_18(&dword_2157E4000, v19, v20, "SafariSummarizationPrefetch - Posting notification SafariAssistantFilterDataLoaded");
    OUTLINED_FUNCTION_7_3();
  }

  v21 = [objc_opt_self() defaultCenter];
  if (qword_28119CBE8 != -1)
  {
    swift_once();
  }

  v22 = *(v2 + 56);
  [v21 postNotificationName:qword_28119DA38 object:0];

  sub_215803D54(0);

  OUTLINED_FUNCTION_6();

  return v23();
}

void sub_215807534()
{
  OUTLINED_FUNCTION_65_0();
  v150 = v0;
  v147 = v1;
  v148 = v2;
  v4 = v3;
  v6 = v5;
  v151 = sub_21580B5E0();
  v7 = OUTLINED_FUNCTION_2_2(v151);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_23_1(v12, v137);
  v14 = MEMORY[0x28223BE20](v13);
  v140 = &v137 - v15;
  MEMORY[0x28223BE20](v14);
  v144 = &v137 - v16;
  v143 = sub_21580B700();
  v17 = OUTLINED_FUNCTION_2_2(v143);
  v141 = v18;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_7();
  v23 = v22 - v21;
  v24 = sub_21580B760();
  v25 = OUTLINED_FUNCTION_48(v24);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_7();
  v142 = v29 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA73C58, &dword_21580CB68);
  OUTLINED_FUNCTION_48(v30);
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v33);
  v35 = &v137 - v34;
  v36 = sub_21580B4D0();
  v37 = OUTLINED_FUNCTION_2_2(v36);
  v39 = v38;
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_7();
  v44 = v43 - v42;
  v45 = *(v39 + 16);
  v45(v43 - v42, v4, v36);
  if (sub_21580B480())
  {
    v139 = v9;
    v45(v35, v44, v36);
    OUTLINED_FUNCTION_31_0();
    __swift_storeEnumTagSinglePayload(v46, v47, v48, v36);
    v145 = v6;
    sub_215808490();
    v152 = v49;
    v51 = v50;
    sub_2157EC06C(v35, &unk_27CA73C58, &dword_21580CB68);
    v149 = v51;
    if (v51)
    {
      v153 = v44;
      v137 = v36;
      v138 = v39;
      v52 = v150;
      v53 = sub_215803C64();
      if (v54 && (v56 = v53, v57 = v54, v58 = sub_215803738(v147, v148, v55), sub_215809C2C(v56, v57), v58))
      {
        v59 = *(sub_21580B550() + 16);

        if (v59 < 2)
        {
          v61 = 0;
        }

        else
        {
          v60 = *(sub_21580B550() + 16);

          v61 = v60 - 1;
        }

        v92 = v138;
        v93 = sub_215803788(v61, v58);

        if (v93)
        {

          v94 = *(v52 + 104);
          (*(v141 + 104))(v23, *MEMORY[0x277D39D88], v143);

          v95 = v142;
          sub_21580B770();
          v96 = type metadata accessor for ResourceAccessSpan();
          OUTLINED_FUNCTION_67_0(v96);
          v97 = OUTLINED_FUNCTION_46_0(v94, 66, v95);
          v98 = v97;
          if ((*(v52 + 128) & 1) == 0)
          {
            *(v97 + qword_28119D508) = 1;
          }

          sub_215808004();
          v100 = v99;

          if (!*(v100 + 16))
          {
          }

          v101 = v137;
          v102 = v151;
          v103 = v139;
          v104 = v153;
          sub_21580B490();
          OUTLINED_FUNCTION_44_0(qword_28119D500);
          v45(v35, v104, v101);
          OUTLINED_FUNCTION_31_0();
          __swift_storeEnumTagSinglePayload(v105, v106, v107, v101);
          v108 = v145;
          sub_215808490();
          v152 = v109;
          v111 = v110;
          sub_2157EC06C(v35, &unk_27CA73C58, &dword_21580CB68);
          if (!v111)
          {
            v152 = sub_21580B540();
            v111 = v112;
          }

          v113 = v144;
          if (qword_28119CC70 != -1)
          {
            OUTLINED_FUNCTION_1_7();
          }

          v114 = sub_21580B7F0();
          OUTLINED_FUNCTION_29(v114, qword_28119DA40);
          (*(v103 + 16))(v113, v108, v102);

          v115 = sub_21580B7D0();
          v116 = sub_21580BAE0();

          if (os_log_type_enabled(v115, v116))
          {
            OUTLINED_FUNCTION_58();
            v151 = v98;
            v154 = OUTLINED_FUNCTION_48_0();
            *v103 = 136643075;
            v117 = sub_215808B34(v152, v111, &v154);
            OUTLINED_FUNCTION_39_0(v117);
            v118 = sub_21580B540();
            v119 = *(v103 + 8);
            v120 = OUTLINED_FUNCTION_43_0();
            v121(v120);
            OUTLINED_FUNCTION_47_0();
            OUTLINED_FUNCTION_33_0();

            *(v103 + 14) = v118;
            OUTLINED_FUNCTION_26_0(&dword_2157E4000, v122, v123, "SafariSummarizationPrefetch - Redacted url string %{sensitive}s, from original %{sensitive}s");
            swift_arrayDestroy();
            OUTLINED_FUNCTION_3_5();
            OUTLINED_FUNCTION_7_3();

            (*(v138 + 8))(v153, v137);
          }

          else
          {

            (*(v103 + 8))(v113, v102);
            (*(v138 + 8))(v153, v101);
          }
        }

        else
        {

          if (qword_28119CC70 != -1)
          {
            OUTLINED_FUNCTION_1_7();
          }

          v124 = sub_21580B7F0();
          OUTLINED_FUNCTION_29(v124, qword_28119DA40);
          v125 = v139;
          v126 = v140;
          v127 = v151;
          (*(v139 + 16))(v140, v145, v151);
          v128 = v149;

          v129 = sub_21580B7D0();
          v130 = sub_21580BAE0();

          v131 = os_log_type_enabled(v129, v130);
          v132 = v152;
          if (v131)
          {
            OUTLINED_FUNCTION_58();
            v150 = OUTLINED_FUNCTION_48_0();
            v154 = v150;
            *v125 = 136643075;
            v133 = sub_215808B34(v132, v128, &v154);
            OUTLINED_FUNCTION_39_0(v133);
            sub_21580B540();
            v134 = OUTLINED_FUNCTION_33_0();
            (*(v125 + 8))(v134, v127);
            OUTLINED_FUNCTION_47_0();
            OUTLINED_FUNCTION_33_0();

            *(v125 + 14) = v126;
            OUTLINED_FUNCTION_26_0(&dword_2157E4000, v135, v136, "SafariSummarizationPrefetch - Url unredacted due to no matching url pattern with number of components, return Redacted url string %{sensitive}s, from original url: %{sensitive}s");
            swift_arrayDestroy();
            OUTLINED_FUNCTION_12_2();
            OUTLINED_FUNCTION_7_3();
          }

          else
          {

            (*(v125 + 8))(v126, v127);
          }

          (*(v92 + 8))(v153, v137);
        }
      }

      else
      {

        if (qword_28119CC70 != -1)
        {
          OUTLINED_FUNCTION_1_7();
        }

        v79 = sub_21580B7F0();
        OUTLINED_FUNCTION_29(v79, qword_28119DA40);
        v80 = v139;
        v81 = v146;
        v82 = v151;
        (*(v139 + 16))(v146, v145, v151);

        v83 = sub_21580B7D0();
        v84 = sub_21580BAE0();

        v85 = os_log_type_enabled(v83, v84);
        v86 = v138;
        v87 = v152;
        if (v85)
        {
          OUTLINED_FUNCTION_58();
          v154 = OUTLINED_FUNCTION_48_0();
          *v80 = 136643075;
          v88 = sub_215808B34(v87, v149, &v154);
          OUTLINED_FUNCTION_39_0(v88);
          sub_21580B540();
          v89 = OUTLINED_FUNCTION_33_0();
          (*(v80 + 8))(v89, v82);
          OUTLINED_FUNCTION_47_0();
          OUTLINED_FUNCTION_33_0();

          *(v80 + 14) = v81;
          OUTLINED_FUNCTION_26_0(&dword_2157E4000, v90, v91, "SafariSummarizationPrefetch - Url redacted due to no matching url pattern with domain, return Redacted url string %{sensitive}s, from original url: %{sensitive}s");
          swift_arrayDestroy();
          OUTLINED_FUNCTION_3_5();
          OUTLINED_FUNCTION_7_3();
        }

        else
        {

          (*(v80 + 8))(v81, v82);
        }

        (*(v86 + 8))(v153, v137);
      }
    }

    else
    {
      (*(v39 + 8))(v44, v36);
    }
  }

  else
  {
    v153 = v44;
    OUTLINED_FUNCTION_55_0();
    __swift_storeEnumTagSinglePayload(v62, v63, v64, v36);
    sub_215808490();
    sub_2157EC06C(v35, &unk_27CA73C58, &dword_21580CB68);
    if (qword_28119CC70 != -1)
    {
      OUTLINED_FUNCTION_1_7();
    }

    v65 = sub_21580B7F0();
    OUTLINED_FUNCTION_29(v65, qword_28119DA40);

    v66 = sub_21580B7D0();
    sub_21580BAE0();

    if (OUTLINED_FUNCTION_69_0())
    {
      v67 = OUTLINED_FUNCTION_35_0();
      v68 = OUTLINED_FUNCTION_34_0();
      v154 = v68;
      *v67 = 136642819;
      v69 = v36;

      v70 = OUTLINED_FUNCTION_56();
      v73 = sub_215808B34(v70, v71, v72);

      *(v67 + 4) = v73;
      OUTLINED_FUNCTION_37_0();
      _os_log_impl(v74, v75, v76, v77, v78, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v68);
      OUTLINED_FUNCTION_3_5();
      OUTLINED_FUNCTION_7_3();

      (*(v39 + 8))(v153, v69);
    }

    else
    {

      (*(v39 + 8))(v153, v36);
    }
  }

  OUTLINED_FUNCTION_42_0();
  OUTLINED_FUNCTION_61_0();
}

void sub_215808004()
{
  OUTLINED_FUNCTION_65_0();
  v1 = v0;
  v3 = v2;
  v71 = sub_21580B470();
  v4 = OUTLINED_FUNCTION_2_2(v71);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_23_1(v9, v63);
  MEMORY[0x28223BE20](v10);
  v12 = &v63 - v11;
  v13 = *(v3 + 16);
  v14 = MEMORY[0x277D84F90];
  v69 = v6;
  if (v13)
  {
    v63 = v1;
    v74 = MEMORY[0x277D84F90];
    v15 = OUTLINED_FUNCTION_52_0();
    sub_215809928(v15, v16, v17);
    v14 = v74;
    v19 = *(v6 + 16);
    v18 = v6 + 16;
    v20 = v3 + ((*(v18 + 64) + 32) & ~*(v18 + 64));
    v65 = *(v18 + 56);
    v66 = v19;
    v67 = v18;
    v64 = (v18 - 8);
    do
    {
      v21 = v71;
      v66(v12, v20, v71);
      v22 = sub_21580B450();
      v70 = v23;
      v24 = sub_21580B460();
      v26 = v25;
      (*v64)(v12, v21);
      v74 = v14;
      v28 = *(v14 + 16);
      v27 = *(v14 + 24);
      if (v28 >= v27 >> 1)
      {
        sub_215809928((v27 > 1), v28 + 1, 1);
        v14 = v74;
      }

      *(v14 + 16) = v28 + 1;
      v29 = (v14 + 32 * v28);
      v30 = v70;
      v29[4] = v22;
      v29[5] = v30;
      v29[6] = v24;
      v29[7] = v26;
      v20 += v65;
      --v13;
    }

    while (v13);
    v1 = v63;
  }

  v31 = sub_2158083F8(v14);
  v32 = 0;
  v33 = *(v1 + 16);
  v34 = v1 + 32;
LABEL_8:
  if (v32 == v33)
  {
    v37 = MEMORY[0x277D84F90];
    goto LABEL_18;
  }

  v35 = *(v34 + 16 * v32 + 8);
  v74 = *(v34 + 16 * v32);
  v75 = v35;
  v72 = 44;
  v73 = 0xE100000000000000;
  sub_2157F6758();
  v36 = sub_21580BB70();
  v37 = v36;
  v38 = *(v36 + 16);
  if (!v38)
  {
LABEL_18:
    v44 = *(v37 + 16);
    if (v44)
    {
      v74 = MEMORY[0x277D84F90];
      v45 = OUTLINED_FUNCTION_52_0();
      sub_215809908(v45, v46, v47);
      v48 = v74;
      v70 = v69 + 32;
      v49 = (v37 + 40);
      do
      {
        v51 = *(v49 - 1);
        v50 = *v49;
        v52 = *(v31 + 16);

        if (v52)
        {
          v53 = OUTLINED_FUNCTION_43_0();
          v55 = sub_2158090E4(v53, v54);
          if (v56)
          {
            v57 = (*(v31 + 56) + 16 * v55);
            v59 = *v57;
            v58 = v57[1];
          }
        }

        v60 = v68;
        OUTLINED_FUNCTION_43_0();
        sub_21580B440();

        v74 = v48;
        v62 = *(v48 + 16);
        v61 = *(v48 + 24);
        if (v62 >= v61 >> 1)
        {
          sub_215809908(v61 > 1, v62 + 1, 1);
          v48 = v74;
        }

        *(v48 + 16) = v62 + 1;
        (*(v69 + 32))(v48 + ((*(v69 + 80) + 32) & ~*(v69 + 80)) + *(v69 + 72) * v62, v60, v71);
        v49 += 2;
        --v44;
      }

      while (v44);
    }

    OUTLINED_FUNCTION_61_0();
    return;
  }

  v39 = 0;
  ++v32;
  v40 = (v36 + 40);
  while (v39 < *(v37 + 16))
  {
    if (!*(v31 + 16) || (v42 = *(v40 - 1), v41 = *v40, , sub_2158090E4(v42, v41), LOBYTE(v42) = v43, , (v42 & 1) == 0))
    {

      goto LABEL_8;
    }

    ++v39;
    v40 += 2;
    if (v38 == v39)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
}

uint64_t sub_2158083F8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73FC8, &qword_21580E908);
    v3 = sub_21580BC90();
  }

  else
  {
    v3 = MEMORY[0x277D84F98];
  }

  v6 = v3;
  sub_215809718(a1, 1, &v6);
  v4 = v6;
  if (v1)
  {
  }

  return v4;
}

void sub_215808490()
{
  OUTLINED_FUNCTION_65_0();
  v46 = v0;
  v2 = v1;
  v45 = v3;
  v4 = sub_21580B4D0();
  v5 = OUTLINED_FUNCTION_2_2(v4);
  v44 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73FB8, &unk_21580E8F0);
  OUTLINED_FUNCTION_48(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v15);
  v17 = &v43 - v16;
  v18 = sub_21580B5E0();
  v19 = OUTLINED_FUNCTION_2_2(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_7();
  v26 = v25 - v24;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA73C58, &dword_21580CB68);
  OUTLINED_FUNCTION_48(v27);
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v30);
  v32 = &v43 - v31;
  sub_2157EC008(v2, &v43 - v31, &unk_27CA73C58, &dword_21580CB68);
  if ((v46 & 1) != 0 && !__swift_getEnumTagSinglePayload(v32, 1, v4))
  {
    sub_21580B490();
  }

  if (__swift_getEnumTagSinglePayload(v32, 1, v4))
  {
    OUTLINED_FUNCTION_55_0();
    __swift_storeEnumTagSinglePayload(v33, v34, v35, v18);
  }

  else
  {
    v36 = v44;
    (*(v44 + 16))(v11, v32, v4);
    sub_21580B4B0();
    (*(v36 + 8))(v11, v4);
    if (__swift_getEnumTagSinglePayload(v17, 1, v18) != 1)
    {
      v37 = *(v21 + 32);
      v38 = OUTLINED_FUNCTION_36_0();
      v39(v38);
      goto LABEL_10;
    }
  }

  (*(v21 + 16))(v26, v45, v18);
  if (__swift_getEnumTagSinglePayload(v17, 1, v18) != 1)
  {
    sub_2157EC06C(v17, &qword_27CA73FB8, &unk_21580E8F0);
  }

LABEL_10:
  v40 = sub_21580B540();
  v42 = v41;
  (*(v21 + 8))(v26, v18);
  v47 = v40;
  v48 = v42;
  sub_2157F6758();
  sub_21580BB90();

  sub_2157EC06C(v32, &unk_27CA73C58, &dword_21580CB68);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_61_0();
}

uint64_t sub_2158087C8(char a1)
{
  v2 = v1;
  v4 = sub_21580B6C0();
  v5 = OUTLINED_FUNCTION_2_2(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7();
  v12 = v11 - v10;
  if (a1)
  {

    return sub_215803C1C(1);
  }

  else
  {
    sub_215803C1C(0);
    v14 = 0.0;
    result = sub_21580BA80();
    if ((result & 1) == 0)
    {
      sub_21580B6B0();
      sub_21580B690();
      v16 = v15;
      result = (*(v7 + 8))(v12, v4);
      v14 = v16 + 3600.0;
    }

    *(v2 + 144) = v14;
  }

  return result;
}

void *sub_2158088F4()
{
  sub_2157E6544((v0 + 2));
  v1 = v0[5];

  v2 = v0[7];

  __swift_destroy_boxed_opaque_existential_1(v0 + 8);
  v3 = v0[13];

  v4 = v0[15];

  v5 = v0[17];

  v6 = v0[19];

  v7 = v0[20];

  v8 = v0[21];

  return v0;
}

uint64_t sub_21580895C()
{
  sub_2158088F4();

  return MEMORY[0x2821FE8D8](v0, 176, 7);
}

uint64_t sub_2158089C4(uint64_t a1, uint64_t a2)
{
  *(*v2 + 24) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

char *sub_215808A0C(char *__src, size_t __len, char *__dst)
{
  if (__dst != __src || &__src[__len] <= __dst)
  {
    return memmove(__dst, __src, __len);
  }

  return __src;
}

uint64_t sub_215808A34(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = sub_21580B470(), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    v7 = sub_21580B470();

    return MEMORY[0x2821FE828](a3, a1, a2, v7);
  }

  else if (a3 != a1)
  {

    return MEMORY[0x2821FE820](a3, a1, a2, result);
  }

  return result;
}

char *sub_215808B08(char *__src, uint64_t a2, char *__dst)
{
  if (__dst != __src || &__src[16 * a2] <= __dst)
  {
    return memmove(__dst, __src, 16 * a2);
  }

  return __src;
}

uint64_t sub_215808B34(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  OUTLINED_FUNCTION_57();
  v9 = sub_215808BF4(v6, v7, v8, 1, a1, a2);
  v10 = v14[0];
  if (v9)
  {
    v11 = v9;

    ObjectType = swift_getObjectType();
    v14[0] = v11;
  }

  else
  {
    ObjectType = MEMORY[0x277D840A0];
    v14[0] = a1;
    v14[1] = a2;
  }

  v12 = *a3;
  if (*a3)
  {
    sub_2157F7444(v14, *a3);
    *a3 = v12 + 32;
  }

  __swift_destroy_boxed_opaque_existential_1(v14);
  return v10;
}

unint64_t sub_215808BF4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_215808CF4(a5, a6);
    *a1 = v9;
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
    result = sub_21580BC20();
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

uint64_t sub_215808CF4(uint64_t a1, unint64_t a2)
{
  v4 = sub_215808D40(a1, a2);
  sub_215808E58(&unk_2827B4738);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_215808D40(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_21580B970())
  {
    result = sub_215808F3C(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_21580BBD0();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_21580BC20();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_215808E58(uint64_t result)
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
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v8 = v4 + v2;
    }

    else
    {
      v8 = v4;
    }

    result = sub_215808FAC(result, v8, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v9 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v9 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v10 = *(v3 + 16);
  v11 = __OFADD__(v10, v2);
  v12 = v10 + v2;
  if (!v11)
  {
    *(v3 + 16) = v12;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_215808F3C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73E68, &qword_21580D4B0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_215808FAC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73E68, &qword_21580D4B0);
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
    if (v10 != a4 || &v13[v8] <= v12)
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

unint64_t sub_2158090A0(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_21580BBA0();

  return sub_215809204(a1, v5);
}

unint64_t sub_2158090E4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_21580BDC0();
  sub_21580B920();
  v6 = sub_21580BDE0();

  return sub_2158092C8(a1, a2, v6);
}

unint64_t sub_215809160()
{
  v1 = *(v0 + 40);
  sub_21580BDC0();
  sub_21580B920();
  v2 = sub_21580BDE0();
  return sub_21580937C(v2);
}

unint64_t sub_2158091C0(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = sub_21580BDB0();

  return sub_2158093A8(a1, v4);
}

unint64_t sub_215809204(uint64_t a1, uint64_t a2)
{
  v4 = ~(-1 << *(v2 + 32));
  for (i = a2 & v4; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v4)
  {
    sub_215809FC0(*(v2 + 48) + 40 * i, v8);
    v6 = MEMORY[0x216071870](v8, a1);
    sub_2157EDE84(v8);
    if (v6)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_2158092C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_21580BD30() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_21580937C(uint64_t a1)
{
  result = a1 & ~(-1 << *(v1 + 32));
  v3 = *(v1 + ((result >> 3) & 0xFFFFFFFFFFFFFF8) + 64) >> result;
  return result;
}

unint64_t sub_2158093A8(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return i;
}

uint64_t sub_215809408(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73FC8, &qword_21580E908);
  v35 = a2;
  result = sub_21580BC80();
  v8 = result;
  if (!*(v5 + 16))
  {
LABEL_33:

LABEL_34:
    *v3 = v8;
    return result;
  }

  v34 = v3;
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
  if (!v13)
  {
LABEL_9:
    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v9 >= v14)
      {
        break;
      }

      v18 = v10[v9];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v13 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_34;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      sub_2158096B4(0, (v33 + 63) >> 6, v5 + 64);
    }

    else
    {
      *v10 = -1 << v33;
    }

    *(v5 + 16) = 0;
    goto LABEL_33;
  }

  while (1)
  {
    v16 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_14:
    v19 = v16 | (v9 << 6);
    v20 = (*(v5 + 48) + 16 * v19);
    v21 = *v20;
    v22 = v20[1];
    v36 = *(*(v5 + 56) + 16 * v19);
    if ((v35 & 1) == 0)
    {
    }

    v23 = *(v8 + 40);
    sub_21580BDC0();
    sub_21580B920();
    result = sub_21580BDE0();
    v24 = -1 << *(v8 + 32);
    v25 = result & ~v24;
    v26 = v25 >> 6;
    if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
    {
      break;
    }

    v27 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v15 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
    v32 = (*(v8 + 48) + 16 * v27);
    *v32 = v21;
    v32[1] = v22;
    *(*(v8 + 56) + 16 * v27) = v36;
    ++*(v8 + 16);
    if (!v13)
    {
      goto LABEL_9;
    }
  }

  v28 = 0;
  v29 = (63 - v24) >> 6;
  while (++v26 != v29 || (v28 & 1) == 0)
  {
    v30 = v26 == v29;
    if (v26 == v29)
    {
      v26 = 0;
    }

    v28 |= v30;
    v31 = *(v15 + 8 * v26);
    if (v31 != -1)
    {
      v27 = __clz(__rbit64(~v31)) + (v26 << 6);
      goto LABEL_25;
    }
  }

LABEL_36:
  __break(1u);
  return result;
}

uint64_t sub_2158096B4(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_21580E780;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_215809718(uint64_t a1, char a2, void *a3)
{
  v4 = 0;
  v32 = *(a1 + 16);
  for (i = (a1 + 56); ; i += 4)
  {
    if (v32 == v4)
    {
    }

    if (v4 >= *(a1 + 16))
    {
      break;
    }

    v34 = v4;
    v7 = *(i - 3);
    v6 = *(i - 2);
    v8 = *(i - 1);
    v9 = *i;
    v10 = *a3;

    v12 = sub_2158090E4(v7, v6);
    v13 = v10[2];
    v14 = (v11 & 1) == 0;
    v15 = v13 + v14;
    if (__OFADD__(v13, v14))
    {
      goto LABEL_17;
    }

    v16 = v11;
    if (v10[3] >= v15)
    {
      if ((a2 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73FD0, &qword_21580E910);
        sub_21580BC40();
      }
    }

    else
    {
      sub_215809408(v15, a2 & 1);
      v17 = *a3;
      v18 = sub_2158090E4(v7, v6);
      if ((v16 & 1) != (v19 & 1))
      {
        goto LABEL_19;
      }

      v12 = v18;
    }

    v20 = *a3;
    if (v16)
    {
      v21 = (v20[7] + 16 * v12);
      v23 = *v21;
      v22 = v21[1];

      v24 = (v20[7] + 16 * v12);
      v25 = v24[1];
      *v24 = v23;
      v24[1] = v22;
    }

    else
    {
      v20[(v12 >> 6) + 8] |= 1 << v12;
      v26 = (v20[6] + 16 * v12);
      *v26 = v7;
      v26[1] = v6;
      v27 = (v20[7] + 16 * v12);
      *v27 = v8;
      v27[1] = v9;
      v28 = v20[2];
      v29 = __OFADD__(v28, 1);
      v30 = v28 + 1;
      if (v29)
      {
        goto LABEL_18;
      }

      v20[2] = v30;
    }

    v4 = v34 + 1;
    a2 = 1;
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_21580BD60();
  __break(1u);
  return result;
}

size_t sub_215809908(size_t a1, int64_t a2, char a3)
{
  result = sub_215809948(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_215809928(void *a1, int64_t a2, char a3)
{
  result = sub_215809AFC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_215809948(size_t result, int64_t a2, char a3, uint64_t a4)
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
LABEL_25:
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
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73FC0, &qword_21580E900);
  v10 = *(sub_21580B470() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_21580B470() - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_215808A34(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_215809AFC(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73FD8, &qword_21580E918);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 32);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[4 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73FE0, &unk_21580E920);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_215809C2C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_215809C70()
{
  OUTLINED_FUNCTION_31();
  v2 = v1;
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_38_0(v8);
  *v9 = v10;
  v9[1] = sub_2157E926C;

  return sub_215806FD0(v2, v3, v4, v5, v6);
}

uint64_t sub_215809D2C()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_38_0(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_15(v4);

  return v7(v6);
}

uint64_t sub_215809DC4()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_38_0(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_15(v4);

  return v7(v6);
}

unint64_t sub_215809E5C()
{
  result = qword_28119CDC8;
  if (!qword_28119CDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28119CDC8);
  }

  return result;
}

unint64_t sub_215809EB0()
{
  result = qword_28119DA30;
  if (!qword_28119DA30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA73FF0, &unk_21580E970);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28119DA30);
  }

  return result;
}

unint64_t sub_215809F14()
{
  result = qword_28119CFF8;
  if (!qword_28119CFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28119CFF8);
  }

  return result;
}

uint64_t sub_215809F68(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_2157EEF98(a1, a2);
  }

  return a1;
}

uint64_t sub_215809F7C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SafariSummarizationPrefetchRequestFilterError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
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

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SafariSummarizationPrefetchRequestFilterError(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_21580A184()
{
  result = qword_27CA74010[0];
  if (!qword_27CA74010[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CA74010);
  }

  return result;
}

void OUTLINED_FUNCTION_7_3()
{

  JUMPOUT(0x216072190);
}

void OUTLINED_FUNCTION_8_2()
{

  JUMPOUT(0x216072190);
}

uint64_t OUTLINED_FUNCTION_9_2(uint64_t a1)
{
  *(a1 + 8) = sub_21580501C;
  v2 = *(v1 + 256);
  v3 = *(v1 + 240);
  return v1 + 120;
}

void OUTLINED_FUNCTION_10_1()
{
  v2 = v0[37];
  v1 = v0[38];
  v4 = v0[35];
  v3 = v0[36];
  v5 = v0[32];
  v6 = v0[29];
  v7 = v0[26];
}

void OUTLINED_FUNCTION_12_2()
{

  JUMPOUT(0x216072190);
}

uint64_t OUTLINED_FUNCTION_18_1()
{
  v1 = v0[50];
  v3 = v0[47];
  v2 = v0[48];
  v4 = v0[46];
  v5 = v0[38];
  v6 = v0[35];
  result = v0[32];
  v8 = v0[33];
  v9 = v0[30];
  v10 = *(v0[31] + 8);
  return result;
}

void OUTLINED_FUNCTION_26_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

uint64_t OUTLINED_FUNCTION_32_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_34_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_35_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_39_0(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 12) = 2085;
  return result;
}

void OUTLINED_FUNCTION_44_0(uint64_t a1@<X8>)
{
  *(v2 + a1) = v1;

  sub_215802470();
}

uint64_t OUTLINED_FUNCTION_46_0(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_215801DF0(a1, a2, a3, 0, 1);
}

uint64_t OUTLINED_FUNCTION_47_0()
{

  return sub_215808B34(v0, v1, (v2 - 88));
}

uint64_t OUTLINED_FUNCTION_48_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_49_0()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_50_0()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_53_0()
{
  v1 = v0[49];
  v2 = v0[43];
  v3 = v0[38];
  v4 = v0[33];
}

uint64_t OUTLINED_FUNCTION_60_0(uint64_t a1)
{
  v3 = (*(v1 + 56) + 16 * a1);
  v4 = *v3;
  v5 = v3[1];
}

void OUTLINED_FUNCTION_62_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

id OUTLINED_FUNCTION_63_0()
{
  *(v1 + 4) = v0;
  *(v1 + 12) = 2112;

  return v2;
}

void OUTLINED_FUNCTION_64_0(void *a1@<X0>, const char *a2@<X3>, os_log_type_t a3@<W8>)
{

  _os_log_impl(a1, v3, a3, a2, v4, 0x16u);
}

BOOL OUTLINED_FUNCTION_66()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t OUTLINED_FUNCTION_67_0(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 52);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_68_0()
{

  return swift_allocError();
}

BOOL OUTLINED_FUNCTION_69_0()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t Lock.__allocating_init()()
{
  v0 = swift_allocObject();
  Lock.init()();
  return v0;
}

uint64_t sub_21580A6A4(uint64_t (*a1)(void))
{
  result = a1(*(v1 + 16));
  if (result)
  {
    __break(1u);
  }

  return result;
}

uint64_t Lock.init()()
{
  v1 = swift_slowAlloc();
  *(v0 + 16) = v1;
  result = pthread_mutex_init(v1, 0);
  if (!result)
  {
    return v0;
  }

  __break(1u);
  return result;
}

uint64_t Lock.__deallocating_deinit()
{
  MEMORY[0x216072190](*(v0 + 16), -1, -1);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

void Lock.withLock<A>(_:)()
{
  OUTLINED_FUNCTION_3_7();
  Lock.lock()();
  v0();
  Lock.unlock()();
}

void Lock.withLockVoid(_:)()
{
  OUTLINED_FUNCTION_3_7();
  Lock.lock()();
  v0();
  Lock.unlock()();
}

uint64_t ConditionLock.__allocating_init(value:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  ConditionLock.init(value:)(a1);
  return v5;
}

uint64_t ConditionLock.init(value:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *(v4 + 112);
  *&v2[v5] = swift_slowAlloc();
  v6 = *(v4 + 80);
  v7 = *(v6 - 8);
  (*(v7 + 16))(&v2[*(*v2 + 96)], a1, v6);
  type metadata accessor for Lock();
  v8 = swift_allocObject();
  Lock.init()();
  *&v2[*(*v2 + 104)] = v8;
  LODWORD(v8) = pthread_cond_init(*&v2[*(*v2 + 112)], 0);
  result = (*(v7 + 8))(a1, v6);
  if (!v8)
  {
    return v2;
  }

  __break(1u);
  return result;
}

uint64_t *ConditionLock.deinit()
{
  v1 = *v0;
  MEMORY[0x216072190](*(v0 + *(*v0 + 112)), -1, -1);
  OUTLINED_FUNCTION_3_1();
  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(v2 + 96));
  OUTLINED_FUNCTION_3_1();
  v4 = *(v0 + *(v3 + 104));

  return v0;
}

uint64_t ConditionLock.__deallocating_deinit()
{
  ConditionLock.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_21580AB04()
{
  OUTLINED_FUNCTION_3_1();
  v2 = *(v0 + *(v1 + 104));
  return v3();
}

void ConditionLock.value.getter(uint64_t a1@<X8>)
{
  v3 = *v1;
  ConditionLock.lock()();
  OUTLINED_FUNCTION_3_1();
  v5 = *(v4 + 96);
  swift_beginAccess();
  (*(*(*(v3 + 80) - 8) + 16))(a1, &v1[v5]);
  ConditionLock.unlock()();
}

uint64_t ConditionLock.lock(whenValue:)()
{
  v1 = v0;
  OUTLINED_FUNCTION_0_5();
  v22 = v3;
  v23 = v2;
  v5 = *(v4 + 80);
  OUTLINED_FUNCTION_2_7();
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v10);
  v12 = &v21 - v11;
  ConditionLock.lock()();
  OUTLINED_FUNCTION_0_5();
  v14 = *(v13 + 96);
  v16 = *(v15 + 112);
  v17 = *(v15 + 104);
  swift_beginAccess();
  v18 = *(v7 + 16);
  while (1)
  {
    v18(v12, v1 + v14, v5);
    v19 = OUTLINED_FUNCTION_4_6(v23, v22);
    result = (*(v7 + 8))(v12, v5);
    if (v19)
    {
      break;
    }

    result = pthread_cond_wait(*(v1 + v16), *(*(v1 + v17) + 16));
    if (result)
    {
      __break(1u);
      return result;
    }
  }

  return result;
}

uint64_t ConditionLock.lock(whenValue:timeoutSeconds:)(uint64_t a1, double a2)
{
  v33 = a1;
  v39 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_5();
  v32 = v4;
  v6 = *(v5 + 80);
  OUTLINED_FUNCTION_2_7();
  v8 = v7;
  v10 = *(v9 + 64);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v31 - v13;
  if (v12 < 0.0)
  {
    __break(1u);
    goto LABEL_14;
  }

  ConditionLock.lock()();
  v15 = a2 * 1000000000.0;
  if ((*&v15 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v15 <= -9.22337204e18)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v15 >= 9.22337204e18)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v38.tv_sec = 0;
  v38.tv_usec = 0;
  gettimeofday(&v38, 0);
  v16 = 1000 * v38.tv_usec;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
  }

  if (__OFADD__(v38.tv_sec, v18 / 1000000000))
  {
    goto LABEL_18;
  }

  v37.tv_sec = v38.tv_sec + v18 / 1000000000;
  v37.tv_nsec = v18 % 1000000000;
  v19 = *v2;
  v20 = *(*v2 + 96);
  v31 = *(*v2 + 112);
  v21 = *(v19 + 104);
  swift_beginAccess();
  v22 = v8 + 16;
  v23 = *(v8 + 16);
  v24 = (v22 - 8);
  do
  {
    v23(v14, &v2[v20], v6);
    v25 = OUTLINED_FUNCTION_4_6(v33, v32);
    (*v24)(v14, v6);
    if (v25)
    {
      goto LABEL_12;
    }

    v26 = pthread_cond_timedwait(*&v2[v31], *(*&v2[v21] + 16), &v37);
  }

  while (!v26);
  if (v26 == 60)
  {
    ConditionLock.unlock()();
LABEL_12:
    v27 = *MEMORY[0x277D85DE8];
    return v25 & 1;
  }

  v35 = 0;
  v36 = 0xE000000000000000;
  v29 = v26;
  sub_21580BBF0();
  MEMORY[0x216071600](0x6520746867756163, 0xED000020726F7272);
  v34 = v29;
  v30 = sub_21580BD10();
  MEMORY[0x216071600](v30);

  MEMORY[0x216071600](0xD000000000000024, 0x8000000215810340);
  result = sub_21580BC60();
  __break(1u);
  return result;
}

uint64_t ConditionLock.unlock(withValue:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 96);
  swift_beginAccess();
  (*(*(*(v3 + 80) - 8) + 24))(v1 + v4, a1);
  swift_endAccess();
  ConditionLock.unlock()();
  OUTLINED_FUNCTION_3_1();
  result = pthread_cond_broadcast(*(v1 + *(v5 + 112)));
  if (result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21580B1D8(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_4_6@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v5 = *(a2 + 88);

  return MEMORY[0x2821FBC88](v3, a1, v2, v5);
}

uint64_t sub_21580B314()
{
  MEMORY[0x216072190](*(v0 + 16), -1, -1);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

void sub_21580B378(void (*a1)(void))
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3);
  a1();

  os_unfair_lock_unlock(v3);
}