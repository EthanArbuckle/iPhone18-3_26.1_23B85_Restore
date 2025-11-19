uint64_t sub_1DCDC9E88()
{
  v1[2] = v1;
  v1[7] = v1 + 18;
  v1[3] = sub_1DCDCB72C;
  v2 = swift_continuation_init();
  v1[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA6338, &qword_1DD0F5898);
  v1[10] = MEMORY[0x1E69E9820];
  v1[11] = 1107296256;
  v1[12] = sub_1DCDC9FA4;
  v1[13] = &block_descriptor_53;
  v1[14] = v2;
  [v0 currentAuthorizationStyle_];

  return MEMORY[0x1EEE6DEC8](v1 + 2);
}

uint64_t sub_1DCDC9FA4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v8 = *v7;
  if (a4)
  {
    v9 = a4;

    return sub_1DCEA2438(v8, v9);
  }

  else
  {
    v11 = *v7;

    return sub_1DCE9B260(v11, a2, a3);
  }
}

uint64_t sub_1DCDCA030(uint64_t a1, double a2)
{
  *(v3 + 24) = a2;
  *(v3 + 16) = a1;
  *(v3 + 32) = *v2;
  return MEMORY[0x1EEE6DFA0](sub_1DCDCA05C, 0, 0);
}

uint64_t sub_1DCDCA05C()
{
  OUTLINED_FUNCTION_42();
  v1 = OUTLINED_FUNCTION_54_2(&unk_1DD0F58A0);
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_1DCDCA0F4;
  v2 = v0[4];
  v3 = v0[3];
  v4 = v0[2];
  v5 = OUTLINED_FUNCTION_10_44();

  return v7(v5);
}

uint64_t sub_1DCDCA0F4()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_32_1();
  v5 = *(v4 + 40);
  v6 = *v3;
  OUTLINED_FUNCTION_27();
  *v7 = v6;

  v10 = *(v6 + 8);
  if (!v1)
  {
    v8 = v2;
    v9 = v0;
  }

  return v10(v8, v9);
}

uint64_t sub_1DCDCA1F0(double a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[2] = v5;
  v5[7] = v5 + 18;
  v5[3] = sub_1DCDCA324;
  v8 = swift_continuation_init();
  v5[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA6338, &qword_1DD0F5898);
  v5[10] = MEMORY[0x1E69E9820];
  v5[11] = 1107296256;
  v5[12] = sub_1DCDC9FA4;
  v5[13] = &block_descriptor_47;
  v5[14] = v8;
  [v4 requestAuthorizationWithStyle:a4 timeout:v5 + 10 completion:a1];

  return MEMORY[0x1EEE6DEC8](v5 + 2);
}

uint64_t sub_1DCDCA324()
{
  OUTLINED_FUNCTION_39();
  v1 = *v0;
  OUTLINED_FUNCTION_15_1();
  *v4 = v2;
  v5 = *v0;
  *v4 = *v0;
  if (*(v3 + 48))
  {
    v6 = *(v3 + 48);
    swift_willThrow();
    v7 = *(v5 + 8);

    return v7();
  }

  else
  {
    v9 = *(v2 + 144);
    v10 = *(v2 + 152);
    v11 = *(v5 + 8);

    return v11(v9, v10);
  }
}

uint64_t sub_1DCDCA458(uint64_t a1, double a2)
{
  *(v3 + 24) = a2;
  *(v3 + 16) = a1;
  *(v3 + 32) = *v2;
  return MEMORY[0x1EEE6DFA0](sub_1DCDCA484, 0, 0);
}

uint64_t sub_1DCDCA484()
{
  OUTLINED_FUNCTION_42();
  v1 = OUTLINED_FUNCTION_54_2(&unk_1DD0F5890);
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_1DCDCB730;
  v2 = v0[4];
  v3 = v0[3];
  v4 = v0[2];
  v5 = OUTLINED_FUNCTION_10_44();

  return v7(v5);
}

uint64_t sub_1DCDCA51C(double a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[2] = v5;
  v5[7] = v5 + 18;
  v5[3] = sub_1DCDCB72C;
  v8 = swift_continuation_init();
  v5[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA6338, &qword_1DD0F5898);
  v5[10] = MEMORY[0x1E69E9820];
  v5[11] = 1107296256;
  v5[12] = sub_1DCDC9FA4;
  v5[13] = &block_descriptor_41;
  v5[14] = v8;
  [v4 requestTemporaryAccuracyAuthorizationWithStyle:a4 timeout:v5 + 10 completion:a1];

  return MEMORY[0x1EEE6DEC8](v5 + 2);
}

uint64_t sub_1DCDCA650(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x1EEE6DFA0](sub_1DCDCA674, 0, 0);
}

uint64_t sub_1DCDCA674()
{
  OUTLINED_FUNCTION_42();
  v1 = OUTLINED_FUNCTION_54_2(&unk_1DD0F5888);
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_1DCB3F98C;
  v2 = v0[2];
  v3 = v0[3];
  v4 = OUTLINED_FUNCTION_10_44();

  return v6(v4);
}

uint64_t sub_1DCDCA704(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[2] = v4;
  v4[3] = sub_1DCDCB738;
  v6 = swift_continuation_init();
  v4[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2638, &qword_1DD0E5C98);
  v4[10] = MEMORY[0x1E69E9820];
  v4[11] = 1107296256;
  v4[12] = sub_1DCC40AF8;
  v4[13] = &block_descriptor_35;
  v4[14] = v6;
  [v3 updateAuthorizationStyleWithUserSelection:a3 completion:v4 + 10];

  return MEMORY[0x1EEE6DEC8](v4 + 2);
}

uint64_t sub_1DCDCA828(char a1)
{
  *(v2 + 32) = a1;
  *(v2 + 16) = *v1;
  return MEMORY[0x1EEE6DFA0](sub_1DCDCA850, 0, 0);
}

uint64_t sub_1DCDCA850()
{
  OUTLINED_FUNCTION_42();
  v1 = OUTLINED_FUNCTION_54_2(&unk_1DD0F5880);
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB81A34;
  v2 = *(v0 + 16);
  v3 = *(v0 + 32);
  v4 = OUTLINED_FUNCTION_10_44();

  return v6(v4);
}

uint64_t sub_1DCDCA8E4(uint64_t a1, uint64_t a2, char a3)
{
  v4[2] = v4;
  v4[3] = sub_1DCDCB738;
  v6 = swift_continuation_init();
  v4[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2638, &qword_1DD0E5C98);
  v4[10] = MEMORY[0x1E69E9820];
  v4[11] = 1107296256;
  v4[12] = sub_1DCC40AF8;
  v4[13] = &block_descriptor_29_0;
  v4[14] = v6;
  [v3 updateTemporaryAuthorizationForAccurateLocation:a3 & 1 completion:v4 + 10];

  return MEMORY[0x1EEE6DEC8](v4 + 2);
}

uint64_t sub_1DCDCAA2C()
{
  OUTLINED_FUNCTION_42();
  v1 = OUTLINED_FUNCTION_54_2(dword_1DD0F5870);
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB81954;
  v2 = *(v0 + 16);
  v3 = OUTLINED_FUNCTION_10_44();

  return v5(v3);
}

uint64_t sub_1DCDCAABC()
{
  v1[2] = v1;
  v1[3] = sub_1DCDCABD0;
  v2 = swift_continuation_init();
  v1[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2638, &qword_1DD0E5C98);
  v1[10] = MEMORY[0x1E69E9820];
  v1[11] = 1107296256;
  v1[12] = sub_1DCC40AF8;
  v1[13] = &block_descriptor_7;
  v1[14] = v2;
  [v0 dismissTCCDialogIfNeeded_];

  return MEMORY[0x1EEE6DEC8](v1 + 2);
}

uint64_t sub_1DCDCABD0()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32_1();
  v2 = *v0;
  if (*(v1 + 48))
  {
    v3 = *(v1 + 48);
    swift_willThrow();
  }

  v4 = *(v2 + 8);

  return v4();
}

uint64_t CLAccuracyAuthorization.debugDescription.getter(uint64_t a1)
{
  v1 = 0xD00000000000001FLL;
  if (a1 == 1)
  {
    v1 = 0xD000000000000010;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return 0x6363416C6C75662ELL;
  }
}

uint64_t related decl e for AFLocationServiceErrorCode.debugDescription.getter()
{
  type metadata accessor for AFLocationServiceError(0);
  sub_1DCDCB02C();
  sub_1DD0DADCC();
  result = 0x6E6F69737365732ELL;
  switch(v5)
  {
    case 0:
      result = 0xD000000000000012;
      break;
    case 1:
      return result;
    case 2:
      result = 0xD000000000000012;
      break;
    case 3:
      result = 0x54746E65696C632ELL;
      break;
    case 4:
      result = 0x6D6954697269732ELL;
      break;
    case 5:
      OUTLINED_FUNCTION_13_14();
      result = v2 + 10;
      break;
    case 6:
      result = 0xD000000000000012;
      break;
    case 7:
      result = 0xD000000000000017;
      break;
    case 8:
      OUTLINED_FUNCTION_13_14();
      result = v4 + 3;
      break;
    case 9:
      OUTLINED_FUNCTION_13_14();
      result = v1 + 6;
      break;
    default:
      OUTLINED_FUNCTION_13_14();
      result = v3 | 0xC;
      break;
  }

  return result;
}

unint64_t sub_1DCDCB02C()
{
  result = qword_1EDE462F8;
  if (!qword_1EDE462F8)
  {
    type metadata accessor for AFLocationServiceError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE462F8);
  }

  return result;
}

unint64_t sub_1DCDCB08C(unint64_t result)
{
  if ((~result & 0xF000000000000006) != 0)
  {
    return sub_1DCBF4488(result);
  }

  return result;
}

unint64_t sub_1DCDCB0A4()
{
  result = qword_1ECCA6330;
  if (!qword_1ECCA6330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA6330);
  }

  return result;
}

uint64_t sub_1DCDCB130()
{
  OUTLINED_FUNCTION_39();
  v2 = v1;
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_30_1(v5);
  *v6 = v7;
  v6[1] = sub_1DCB4AD3C;

  return sub_1DCDC9834(v2, v3, v4, v0 + 32);
}

void sub_1DCDCB1E4(unint64_t *a1)
{
  v1 = *a1;
  if (!((v1 >> 58) & 0xC | (v1 >> 1) & 3))
  {
    sub_1DCBF44A0(v1);
  }
}

unint64_t *sub_1DCDCB200(unint64_t *a1, unint64_t *a2)
{
  v3 = *a2;
  if (!((*a2 >> 58) & 0xC | (*a2 >> 1) & 3))
  {
    sub_1DCBF4488(*a2);
  }

  *a1 = v3;
  return a1;
}

unint64_t *sub_1DCDCB244(unint64_t *a1, unint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = (*a2 >> 58) & 0xC | (*a2 >> 1) & 3;
  if ((v3 >> 58) & 0xC | (v3 >> 1) & 3)
  {
    if (!v5)
    {
      sub_1DCBF4488(*a2);
    }

    *a1 = v4;
  }

  else if (v5)
  {
    sub_1DCBF44A0(v3);
    *a1 = *a2;
  }

  else
  {
    sub_1DCBF4488(*a2);
    v7 = *a1;
    *a1 = v4;
    sub_1DCBF44A0(v7);
  }

  return a1;
}

unint64_t *sub_1DCDCB2D4(unint64_t *a1, unint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  if (!((v3 >> 58) & 0xC | (v3 >> 1) & 3))
  {
    if (!((v4 >> 58) & 0xC | (v4 >> 1) & 3))
    {
      *a1 = v4;
      sub_1DCBF44A0(v3);
      return a1;
    }

    sub_1DCBF44A0(v3);
  }

  *a1 = v4;
  return a1;
}

uint64_t sub_1DCDCB334(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3C && *(a1 + 8))
  {
    return (*a1 + 60);
  }

  v3 = (((*a1 >> 58) >> 4) | (4 * ((*a1 >> 58) & 0xC | (*a1 >> 1) & 3))) ^ 0x3F;
  if (v3 >= 0x3C)
  {
    v3 = -1;
  }

  if (v3 + 1 >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DCDCB390(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3B)
  {
    *result = 0;
    *result = a2 - 60;
    if (a3 >= 0x3C)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3C)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (16 * (a2 ^ 0x3F)) | ((a2 ^ 0x3F) >> 2);
      *result = ((v3 << 58) | (2 * v3)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_1DCDCB3E8(void *a1)
{
  v1 = *a1 >> 58;
  v2 = v1 & 0xC | (*a1 >> 1) & 3;
  if (v2)
  {
    return 64 - ((v1 >> 4) | (4 * v2));
  }

  else
  {
    return 0;
  }
}

unint64_t *sub_1DCDCB414(unint64_t *result, unsigned int a2)
{
  if (a2 > 0x3C)
  {
    v3 = a2 - 61;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (-a2 >> 2) & 0xF | (16 * (-a2 & 0x3F));
    v3 = ((v2 << 58) | (2 * v2)) & 0xF000000000000007;
  }

  *result = v3;
  return result;
}

_BYTE *sub_1DCDCB454(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t *assignWithCopy for PermissionPromptSchemaLogger.LoggedResult(unint64_t *a1, unint64_t *a2)
{
  v3 = *a2;
  sub_1DCBF4488(*a2);
  v4 = *a1;
  *a1 = v3;
  sub_1DCBF44A0(v4);
  return a1;
}

unint64_t *assignWithTake for PermissionPromptSchemaLogger.LoggedResult(unint64_t *a1, unint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;
  sub_1DCBF44A0(v3);
  return a1;
}

uint64_t getEnumTagSinglePayload for PermissionPromptSchemaLogger.LoggedResult(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x3D && *(a1 + 8))
    {
      v2 = *a1 + 60;
    }

    else
    {
      v2 = (((*a1 >> 58) >> 4) | (4 * ((*a1 >> 58) & 0xC | (*a1 >> 1) & 3))) ^ 0x3F;
      if (v2 >= 0x3C)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t storeEnumTagSinglePayload for PermissionPromptSchemaLogger.LoggedResult(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3C)
  {
    *result = a2 - 61;
    if (a3 >= 0x3D)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3D)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0xF | (16 * (-a2 & 0x3F));
      *result = ((v3 << 58) | (2 * v3)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_1DCDCB64C(void *a1)
{
  v1 = *a1 >> 62;
  if (v1 == 3)
  {
    return ((*a1 >> 2) & 0xFFFFFFFE | *a1 & 1) + 3;
  }

  else
  {
    return v1;
  }
}

unint64_t *sub_1DCDCB66C(unint64_t *result, uint64_t a2)
{
  if (a2 < 3)
  {
    v2 = *result & 0xFFFFFFFFFFFFFF9 | (a2 << 62);
  }

  else
  {
    v2 = (4 * (a2 - 3)) & 0x3FFFFFFF8 | (a2 - 3) & 1 | 0xC000000000000000;
  }

  *result = v2;
  return result;
}

unint64_t sub_1DCDCB6B0()
{
  result = qword_1ECCA6340;
  if (!qword_1ECCA6340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA6340);
  }

  return result;
}

uint64_t sub_1DCDCB754(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F7268746C6C6166 && a2 == 0xEB00000000686775;
  if (v4 || (sub_1DD0DF0AC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6B61657262 && a2 == 0xE500000000000000;
    if (v6 || (sub_1DD0DF0AC() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x65756E69746E6F63 && a2 == 0xE800000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_1DD0DF0AC();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1DCDCB86C(char a1)
{
  if (!a1)
  {
    return 0x6F7268746C6C6166;
  }

  if (a1 == 1)
  {
    return 0x6B61657262;
  }

  return 0x65756E69746E6F63;
}

uint64_t sub_1DCDCB8C8(uint64_t a1)
{
  v2 = sub_1DCDCBE84();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DCDCB904(uint64_t a1)
{
  v2 = sub_1DCDCBE84();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DCDCB948@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DCDCB754(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DCDCB970@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DCDCB864();
  *a1 = result;
  return result;
}

uint64_t sub_1DCDCB998(uint64_t a1)
{
  v2 = sub_1DCDCBDDC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DCDCB9D4(uint64_t a1)
{
  v2 = sub_1DCDCBDDC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DCDCBA10(uint64_t a1)
{
  v2 = sub_1DCDCBE30();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DCDCBA4C(uint64_t a1)
{
  v2 = sub_1DCDCBE30();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DCDCBA88(uint64_t a1)
{
  v2 = sub_1DCDCBED8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DCDCBAC4(uint64_t a1)
{
  v2 = sub_1DCDCBED8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void FlowLoopControl.encode(to:)()
{
  OUTLINED_FUNCTION_20_3();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA6348, &qword_1DD0F5A60);
  v5 = OUTLINED_FUNCTION_9(v4);
  v47 = v6;
  v48 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v9, v10);
  OUTLINED_FUNCTION_34_0();
  v46 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA6350, &qword_1DD0F5A68);
  v13 = OUTLINED_FUNCTION_9(v12);
  v44 = v14;
  v45 = v13;
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v17, v18);
  OUTLINED_FUNCTION_34_0();
  v43 = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA6358, &qword_1DD0F5A70);
  v21 = OUTLINED_FUNCTION_9(v20);
  v41 = v22;
  v42 = v21;
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v40 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA6360, &qword_1DD0F5A78);
  OUTLINED_FUNCTION_9(v29);
  v31 = v30;
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v34, v35);
  OUTLINED_FUNCTION_15_3();
  v36 = *v0;
  v37 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_1DCDCBDDC();
  sub_1DD0DF24C();
  if (v36)
  {
    if (v36 == 1)
    {
      sub_1DCDCBE84();
      v28 = v43;
      OUTLINED_FUNCTION_3_72();
      v39 = v44;
      v38 = v45;
    }

    else
    {
      sub_1DCDCBE30();
      v28 = v46;
      OUTLINED_FUNCTION_3_72();
      v39 = v47;
      v38 = v48;
    }
  }

  else
  {
    sub_1DCDCBED8();
    OUTLINED_FUNCTION_3_72();
    v39 = v41;
    v38 = v42;
  }

  (*(v39 + 8))(v28, v38);
  (*(v31 + 8))(v1, v29);
  OUTLINED_FUNCTION_19_19();
}

unint64_t sub_1DCDCBDDC()
{
  result = qword_1ECCA6368;
  if (!qword_1ECCA6368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA6368);
  }

  return result;
}

unint64_t sub_1DCDCBE30()
{
  result = qword_1ECCA6370;
  if (!qword_1ECCA6370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA6370);
  }

  return result;
}

unint64_t sub_1DCDCBE84()
{
  result = qword_1ECCA6378;
  if (!qword_1ECCA6378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA6378);
  }

  return result;
}

unint64_t sub_1DCDCBED8()
{
  result = qword_1ECCA6380;
  if (!qword_1ECCA6380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA6380);
  }

  return result;
}

uint64_t FlowLoopControl.hashValue.getter()
{
  v1 = *v0;
  sub_1DD0DF1DC();
  MEMORY[0x1E12A7840](v1);
  return sub_1DD0DF20C();
}

void FlowLoopControl.init(from:)()
{
  OUTLINED_FUNCTION_20_3();
  v76 = v0;
  v2 = v1;
  v71 = v3;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA6388, &qword_1DD0F5A80);
  OUTLINED_FUNCTION_9(v75);
  v72 = v4;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v7, v8);
  OUTLINED_FUNCTION_34_0();
  v74 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA6390, &qword_1DD0F5A88);
  v11 = OUTLINED_FUNCTION_9(v10);
  v69 = v12;
  v70 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v63 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA6398, &qword_1DD0F5A90);
  OUTLINED_FUNCTION_9(v19);
  v68 = v20;
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v63 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA63A0, &unk_1DD0F5A98);
  OUTLINED_FUNCTION_9(v27);
  v73 = v28;
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v31, v32);
  v34 = &v63 - v33;
  v35 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_1DCDCBDDC();
  v36 = v76;
  sub_1DD0DF23C();
  if (v36)
  {
    goto LABEL_10;
  }

  v65 = v19;
  v66 = v26;
  v67 = v18;
  v38 = v74;
  v37 = v75;
  v76 = v2;
  v39 = sub_1DD0DEF5C();
  sub_1DCB547F8(v39, 0);
  if (v41 == v42 >> 1)
  {
    goto LABEL_9;
  }

  v64 = 0;
  if (v41 < (v42 >> 1))
  {
    LODWORD(v43) = *(v40 + v41);
    sub_1DCB54800(v41 + 1);
    v45 = v44;
    v47 = v46;
    swift_unknownObjectRelease();
    v48 = v45 == v47 >> 1;
    v49 = v72;
    if (v48)
    {
      if (v43)
      {
        if (v43 == 1)
        {
          sub_1DCDCBE84();
          v50 = v67;
          OUTLINED_FUNCTION_12_40();
          v51 = v71;
          v52 = v27;
          v53 = v73;
          swift_unknownObjectRelease();
          (*(v69 + 8))(v50, v70);
          (*(v53 + 8))(v34, v52);
        }

        else
        {
          LODWORD(v70) = v43;
          sub_1DCDCBE30();
          v60 = v64;
          sub_1DD0DEEBC();
          v51 = v71;
          v43 = v27;
          v61 = v73;
          if (v60)
          {
            (*(v73 + 8))(v34, v43);
            swift_unknownObjectRelease();
            v2 = v76;
            goto LABEL_10;
          }

          swift_unknownObjectRelease();
          (*(v49 + 8))(v38, v37);
          (*(v61 + 8))(v34, v43);
          LOBYTE(v43) = v70;
        }
      }

      else
      {
        sub_1DCDCBED8();
        v59 = v66;
        OUTLINED_FUNCTION_12_40();
        swift_unknownObjectRelease();
        (*(v68 + 8))(v59, v65);
        OUTLINED_FUNCTION_6_49();
        v62(v34, v27);
        v51 = v71;
      }

      *v51 = v43;
      __swift_destroy_boxed_opaque_existential_1Tm(v76);
      goto LABEL_11;
    }

LABEL_9:
    v54 = sub_1DD0DECAC();
    swift_allocError();
    v56 = v55;
    v57 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA43D8, &qword_1DD0F0640) + 48);
    *v56 = &type metadata for FlowLoopControl;
    sub_1DD0DEECC();
    OUTLINED_FUNCTION_89_0();
    (*(*(v54 - 8) + 104))(v56, *MEMORY[0x1E69E6AF8], v54);
    swift_willThrow();
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_6_49();
    v58(v34, v27);
    v2 = v76;
LABEL_10:
    __swift_destroy_boxed_opaque_existential_1Tm(v2);
LABEL_11:
    OUTLINED_FUNCTION_19_19();
    return;
  }

  __break(1u);
}

void sub_1DCDCC5B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v8[2] = a3;
  v8[3] = a4;
  v8[4] = a1;
  v8[5] = a2;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCDCC65C(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(a1 + 16) == 0;
  *(v1 + 24) = 0;
  *(v1 + 32) = v2;
  return v1;
}

void sub_1DCDCC67C(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 24);
  if (*(v1 + 32) == 1)
  {
    v12 = 0;
    memset(v11, 0, sizeof(v11));
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA6460, &unk_1DD0F5F90);
    a1[3] = v4;
    a1[4] = &protocol witness table for Conclude<A>;
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(a1);
    v6 = v4[7];
    *(boxed_opaque_existential_1Tm + v6) = v3;
    v7 = v4[8];
    sub_1DCBD0C2C(v11, boxed_opaque_existential_1Tm + v7);
    *(boxed_opaque_existential_1Tm + v4[9]) = 0;
    boxed_opaque_existential_1Tm[3] = &type metadata for FlowLoopControl;
    *boxed_opaque_existential_1Tm = *(boxed_opaque_existential_1Tm + v6);
    sub_1DCBD0C9C(v11);
    sub_1DCBD0C2C(boxed_opaque_existential_1Tm + v7, (boxed_opaque_existential_1Tm + 4));
    *(boxed_opaque_existential_1Tm + 72) = 0;
    type metadata accessor for FlowActionType(0);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    if ((v3 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v8 = *(v1 + 16);
      if (v3 < *(v8 + 16))
      {
        sub_1DCB17CA0(v8 + 40 * v3 + 32, v10);
        __swift_project_boxed_opaque_existential_1(v10, v10[3]);
        v9 = swift_allocObject();
        *(v9 + 16) = v1;
        *(v9 + 24) = v3;
        sub_1DD0DCF8C();
      }
    }

    __break(1u);
  }
}

uint64_t sub_1DCDCC86C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1DCB0DF6C(a1, v12);
  result = swift_dynamicCast();
  if (result)
  {
    v7 = v11;
    if (v11 == 1)
    {
      v8 = 1;
LABEL_10:
      *(a2 + 24) = v8;
      *(a2 + 32) = v7;
      return result;
    }
  }

  sub_1DCB0DF6C(a1, v12);
  result = swift_dynamicCast();
  if (result && v11 == 2)
  {
    v7 = 1;
    v8 = 2;
    goto LABEL_10;
  }

  v8 = a3 + 1;
  if (!__OFADD__(a3, 1))
  {
    v9 = *(*(a2 + 16) + 16);
    v10 = v8 < v9;
    v7 = v8 >= v9;
    if (!v10)
    {
      v8 = 0;
    }

    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DCDCC954(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x79646F426E7572 && a2 == 0xE700000000000000;
  if (v4 || (sub_1DD0DF0AC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701736292 && a2 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1DD0DF0AC();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1DCDCCA1C(char a1)
{
  if (a1)
  {
    return 1701736292;
  }

  else
  {
    return 0x79646F426E7572;
  }
}

void sub_1DCDCCA4C()
{
  OUTLINED_FUNCTION_20_3();
  v42 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA6440, &qword_1DD0F5F78);
  v6 = OUTLINED_FUNCTION_9(v5);
  v39 = v7;
  v40 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v10, v11);
  OUTLINED_FUNCTION_34_0();
  v38 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA6448, &qword_1DD0F5F80);
  v14 = OUTLINED_FUNCTION_9(v13);
  v36 = v15;
  v37 = v14;
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v35 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA6450, &qword_1DD0F5F88);
  OUTLINED_FUNCTION_9(v22);
  v24 = v23;
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v27, v28);
  OUTLINED_FUNCTION_15_3();
  v41 = *v0;
  v29 = *(v0 + 8);
  v30 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_1DCDCD9EC();
  sub_1DD0DF24C();
  if (v29 == 1)
  {
    sub_1DCDCDA40();
    v31 = v38;
    sub_1DD0DEF7C();
    sub_1DCDCDB3C();
    v32 = v40;
    sub_1DD0DEFFC();
    OUTLINED_FUNCTION_6_49();
    v34 = v31;
  }

  else
  {
    sub_1DCDCDAE8();
    sub_1DD0DEF7C();
    v32 = v37;
    sub_1DD0DEFEC();
    v33 = *(v36 + 8);
    v34 = v21;
  }

  v33(v34, v32);
  (*(v24 + 8))(v2, v22);
  OUTLINED_FUNCTION_19_19();
}

void sub_1DCDCCD04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, unsigned __int8 a12)
{
  OUTLINED_FUNCTION_20_3();
  v65 = v14;
  v66 = v12;
  v16 = v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA6408, &qword_1DD0F5F60);
  v63[5] = OUTLINED_FUNCTION_9(v17);
  v63[6] = v18;
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v21, v22);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA6410, &qword_1DD0F5F68);
  OUTLINED_FUNCTION_9(v23);
  v63[4] = v24;
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v27, v28);
  OUTLINED_FUNCTION_15_3();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA6418, &qword_1DD0F5F70);
  OUTLINED_FUNCTION_9(v29);
  v64 = v30;
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v33, v34);
  v36 = v63 - v35;
  v37 = v16[4];
  __swift_project_boxed_opaque_existential_1(v16, v16[3]);
  sub_1DCDCD9EC();
  v38 = v66;
  sub_1DD0DF23C();
  if (v38)
  {
    goto LABEL_9;
  }

  v63[2] = v23;
  v63[3] = v13;
  v66 = v16;
  v39 = v65;
  v40 = sub_1DD0DEF5C();
  sub_1DCB547F8(v40, 0);
  if (v42 == v43 >> 1)
  {
LABEL_7:
    v50 = sub_1DD0DECAC();
    swift_allocError();
    v52 = v51;
    v53 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA43D8, &qword_1DD0F0640) + 48);
    *v52 = &type metadata for LoopBodyFlow.State;
    sub_1DD0DEECC();
    OUTLINED_FUNCTION_89_0();
    (*(*(v50 - 8) + 104))(v52, *MEMORY[0x1E69E6AF8], v50);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v64 + 8))(v36, v29);
    v16 = v66;
LABEL_9:
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
LABEL_10:
    OUTLINED_FUNCTION_19_19();
    return;
  }

  v63[1] = 0;
  if (v42 < (v43 >> 1))
  {
    v44 = *(v41 + v42);
    sub_1DCB54800(v42 + 1);
    v46 = v45;
    v48 = v47;
    swift_unknownObjectRelease();
    if (v46 == v48 >> 1)
    {
      v67 = v44;
      if (v44)
      {
        sub_1DCDCDA40();
        OUTLINED_FUNCTION_8_51();
        v49 = v39;
        sub_1DCDCDA94();
        sub_1DD0DEF4C();
        swift_unknownObjectRelease();
        v54 = OUTLINED_FUNCTION_5_63();
        v55(v54);
        v56 = OUTLINED_FUNCTION_2_66();
        v57(v56);
        v58 = a12;
      }

      else
      {
        sub_1DCDCDAE8();
        OUTLINED_FUNCTION_8_51();
        v49 = v39;
        v58 = sub_1DD0DEF3C();
        swift_unknownObjectRelease();
        v59 = OUTLINED_FUNCTION_5_63();
        v60(v59);
        v61 = OUTLINED_FUNCTION_2_66();
        v62(v61);
      }

      *v49 = v58;
      *(v49 + 8) = v67;
      __swift_destroy_boxed_opaque_existential_1Tm(v66);
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_1DCDCD1E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DCDCC954(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DCDCD208(uint64_t a1)
{
  v2 = sub_1DCDCD9EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DCDCD244(uint64_t a1)
{
  v2 = sub_1DCDCD9EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DCDCD280(uint64_t a1)
{
  v2 = sub_1DCDCDA40();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DCDCD2BC(uint64_t a1)
{
  v2 = sub_1DCDCDA40();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DCDCD2F8(uint64_t a1)
{
  v2 = sub_1DCDCDAE8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DCDCD334(uint64_t a1)
{
  v2 = sub_1DCDCDAE8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DCDCD3A0()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1DCDCD3FC@<X0>(char *a1@<X8>)
{
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  result = v3();
  if (result)
  {
    v6 = 2;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  return result;
}

unint64_t sub_1DCDCD43C()
{
  result = qword_1ECCA63A8;
  if (!qword_1ECCA63A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA63A8);
  }

  return result;
}

unint64_t sub_1DCDCD4C4()
{
  result = qword_1ECCA63B0;
  if (!qword_1ECCA63B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA63B8, &qword_1DD0F5BB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA63B0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LoopBodyFlow.State(uint64_t a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for LoopBodyFlow.State(uint64_t result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1DCDCD5C8(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DCDCD6D8()
{
  result = qword_1ECCA63C0;
  if (!qword_1ECCA63C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA63C0);
  }

  return result;
}

unint64_t sub_1DCDCD730()
{
  result = qword_1ECCA63C8;
  if (!qword_1ECCA63C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA63C8);
  }

  return result;
}

unint64_t sub_1DCDCD788()
{
  result = qword_1ECCA63D0;
  if (!qword_1ECCA63D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA63D0);
  }

  return result;
}

unint64_t sub_1DCDCD7E0()
{
  result = qword_1ECCA63D8;
  if (!qword_1ECCA63D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA63D8);
  }

  return result;
}

unint64_t sub_1DCDCD838()
{
  result = qword_1ECCA63E0;
  if (!qword_1ECCA63E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA63E0);
  }

  return result;
}

unint64_t sub_1DCDCD890()
{
  result = qword_1ECCA63E8;
  if (!qword_1ECCA63E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA63E8);
  }

  return result;
}

unint64_t sub_1DCDCD8E8()
{
  result = qword_1ECCA63F0;
  if (!qword_1ECCA63F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA63F0);
  }

  return result;
}

unint64_t sub_1DCDCD940()
{
  result = qword_1ECCA63F8;
  if (!qword_1ECCA63F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA63F8);
  }

  return result;
}

unint64_t sub_1DCDCD998()
{
  result = qword_1ECCA6400;
  if (!qword_1ECCA6400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA6400);
  }

  return result;
}

unint64_t sub_1DCDCD9EC()
{
  result = qword_1ECCA6420;
  if (!qword_1ECCA6420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA6420);
  }

  return result;
}

unint64_t sub_1DCDCDA40()
{
  result = qword_1ECCA6428;
  if (!qword_1ECCA6428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA6428);
  }

  return result;
}

unint64_t sub_1DCDCDA94()
{
  result = qword_1ECCA6430;
  if (!qword_1ECCA6430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA6430);
  }

  return result;
}

unint64_t sub_1DCDCDAE8()
{
  result = qword_1ECCA6438;
  if (!qword_1ECCA6438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA6438);
  }

  return result;
}

unint64_t sub_1DCDCDB3C()
{
  result = qword_1ECCA6458;
  if (!qword_1ECCA6458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA6458);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for LoopBodyFlow.State.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1DCDCDC84(_BYTE *result, int a2, int a3)
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

unint64_t sub_1DCDCDD34()
{
  result = qword_1ECCA6468;
  if (!qword_1ECCA6468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA6468);
  }

  return result;
}

unint64_t sub_1DCDCDD8C()
{
  result = qword_1ECCA6470;
  if (!qword_1ECCA6470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA6470);
  }

  return result;
}

unint64_t sub_1DCDCDDE4()
{
  result = qword_1ECCA6478;
  if (!qword_1ECCA6478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA6478);
  }

  return result;
}

unint64_t sub_1DCDCDE3C()
{
  result = qword_1ECCA6480;
  if (!qword_1ECCA6480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA6480);
  }

  return result;
}

unint64_t sub_1DCDCDE94()
{
  result = qword_1ECCA6488;
  if (!qword_1ECCA6488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA6488);
  }

  return result;
}

unint64_t sub_1DCDCDEEC()
{
  result = qword_1ECCA6490;
  if (!qword_1ECCA6490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA6490);
  }

  return result;
}

unint64_t sub_1DCDCDF44()
{
  result = qword_1ECCA6498;
  if (!qword_1ECCA6498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA6498);
  }

  return result;
}

unint64_t sub_1DCDCDF9C()
{
  result = qword_1ECCA64A0;
  if (!qword_1ECCA64A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA64A0);
  }

  return result;
}

unint64_t sub_1DCDCDFF4()
{
  result = qword_1ECCA64A8[0];
  if (!qword_1ECCA64A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECCA64A8);
  }

  return result;
}

void ActingFlow.map<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_0_1();
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v13 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TransformFlow();
  (*(v6 + 16))(v12, v3, a3);
  swift_getAssociatedTypeWitness();
  sub_1DD0DCF8C();
}

void sub_1DCDCE1A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(v6 + 48);
  v14 = *(v6 + 52);
  swift_allocObject();
  sub_1DCDCE2C8(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_1DCDCE220(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = type metadata accessor for TransformFlow.State();
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

void sub_1DCDCE2C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v23 = a4;
  v24 = a2;
  v11 = *v6;
  v12 = *(a5 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_storeEnumTagSinglePayload(v6 + *(v16 + 104), 1, 1, *(v16 + 80));
  v6[7] = a5;
  v6[8] = a6;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v6 + 4);
  v18 = *(v12 + 16);
  v18(boxed_opaque_existential_1Tm, a1, a5);
  v25[0] = 0;
  v25[1] = 0xE000000000000000;
  sub_1DD0DEC1C();

  strcpy(v25, "TransformFlow<");
  HIBYTE(v25[1]) = -18;
  v18(v15, a1, a5);
  v19 = sub_1DD0DE02C();
  MEMORY[0x1E12A6780](v19);

  MEMORY[0x1E12A6780](62, 0xE100000000000000);
  v20 = v25[1];
  v6[2] = v25[0];
  v6[3] = v20;
  v21 = swift_allocObject();
  v22 = v24;
  v21[2] = v23;
  v21[3] = a5;
  v21[4] = a6;
  v21[5] = v6;
  v21[6] = v22;
  v21[7] = a3;
  v25[3] = type metadata accessor for LifeCycleModifierFlow();
  v25[4] = swift_getWitnessTable();
  sub_1DD0DCF8C();
}

uint64_t sub_1DCDCE568(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v6 = *(*a2 + 80);
  v7 = type metadata accessor for TransformFlow.State();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v15 - v11;
  a3(a1);
  __swift_storeEnumTagSinglePayload(v12, 0, 1, v6);
  v13 = *(*a2 + 104);
  swift_beginAccess();
  (*(v8 + 40))(a2 + v13, v12, v7);
  return swift_endAccess();
}

uint64_t sub_1DCDCE6B0@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 80);
  OUTLINED_FUNCTION_0_1();
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = v26 - v11;
  v13 = type metadata accessor for TransformFlow.State();
  OUTLINED_FUNCTION_0_1();
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = v26 - v20;
  v22 = *(v3 + 104);
  swift_beginAccess();
  (*(v15 + 16))(v21, v1 + v22, v13);
  if (__swift_getEnumTagSinglePayload(v21, 1, v4) == 1)
  {
    swift_beginAccess();
    sub_1DCB17CA0((v1 + 4), v27);
    sub_1DCB17CA0(v27, v26);
    a1[3] = type metadata accessor for Delegate(0);
    a1[4] = &protocol witness table for Delegate;
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(a1);
    sub_1DCAFF9E8(v26, boxed_opaque_existential_1Tm);
    type metadata accessor for FlowActionType(0);
    swift_storeEnumTagMultiPayload();
    return __swift_destroy_boxed_opaque_existential_1Tm(v27);
  }

  else
  {
    (*(v6 + 32))(v12, v21, v4);
    a1[3] = type metadata accessor for Conclude();
    a1[4] = &protocol witness table for Conclude<A>;
    v25 = __swift_allocate_boxed_opaque_existential_1Tm(a1);
    type metadata accessor for TransformFlow();
    OUTLINED_FUNCTION_0_65();
    swift_getWitnessTable();
    ActingFlow.conclude(with:)(v12, v25);
    return (*(v6 + 8))(v12, v4);
  }
}

uint64_t *sub_1DCDCE948()
{
  v1 = *v0;
  v2 = v0[3];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 4);
  v3 = *(*v0 + 104);
  v4 = *(v1 + 80);
  v5 = type metadata accessor for TransformFlow.State();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  return v0;
}

uint64_t sub_1DCDCE9E4()
{
  sub_1DCDCE948();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void *sub_1DCDCEA54(void *a1, void *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  if (*(v6 + 84))
  {
    v7 = *(v6 + 64);
  }

  else
  {
    v7 = *(v6 + 64) + 1;
  }

  if (*(v6 + 80) > 7u || (*(v6 + 80) & 0x100000) != 0 || v7 > 0x18)
  {
    *a1 = *a2;
    sub_1DD0DCF8C();
  }

  if (__swift_getEnumTagSinglePayload(a2, 1, v5))
  {

    return memcpy(a1, a2, v7);
  }

  else
  {
    (*(v6 + 16))(a1, a2, v5);
    __swift_storeEnumTagSinglePayload(a1, 0, 1, v5);
    return a1;
  }
}

uint64_t sub_1DCDCEB8C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = __swift_getEnumTagSinglePayload(a1, 1, v3);
  if (!result)
  {
    v5 = *(*(v3 - 8) + 8);

    return v5(a1, v3);
  }

  return result;
}

void *sub_1DCDCEC08(void *a1, const void *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a2, 1, v5);
  v7 = *(v5 - 8);
  if (EnumTagSinglePayload)
  {
    if (*(v7 + 84))
    {
      v8 = *(v7 + 64);
    }

    else
    {
      v8 = *(v7 + 64) + 1;
    }

    return memcpy(a1, a2, v8);
  }

  else
  {
    (*(v7 + 16))(a1, a2, v5);
    __swift_storeEnumTagSinglePayload(a1, 0, 1, v5);
    return a1;
  }
}

void *sub_1DCDCECE0(void *a1, const void *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, 1, v5);
  v7 = __swift_getEnumTagSinglePayload(a2, 1, v5);
  v8 = *(v5 - 8);
  if (!EnumTagSinglePayload)
  {
    if (v7)
    {
      v11 = v8 + 8;
      (*(v8 + 8))(a1, v5);
      v9 = *(v11 + 76);
      v10 = *(v11 + 56);
      goto LABEL_6;
    }

    (*(v8 + 24))(a1, a2, v5);
    return a1;
  }

  if (!v7)
  {
    (*(v8 + 16))(a1, a2, v5);
    __swift_storeEnumTagSinglePayload(a1, 0, 1, v5);
    return a1;
  }

  v9 = *(v8 + 84);
  v10 = *(v8 + 64);
LABEL_6:
  if (v9)
  {
    v12 = v10;
  }

  else
  {
    v12 = v10 + 1;
  }

  return memcpy(a1, a2, v12);
}

void *sub_1DCDCEE20(void *a1, const void *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a2, 1, v5);
  v7 = *(v5 - 8);
  if (EnumTagSinglePayload)
  {
    if (*(v7 + 84))
    {
      v8 = *(v7 + 64);
    }

    else
    {
      v8 = *(v7 + 64) + 1;
    }

    return memcpy(a1, a2, v8);
  }

  else
  {
    (*(v7 + 32))(a1, a2, v5);
    __swift_storeEnumTagSinglePayload(a1, 0, 1, v5);
    return a1;
  }
}

void *sub_1DCDCEEF8(void *a1, const void *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, 1, v5);
  v7 = __swift_getEnumTagSinglePayload(a2, 1, v5);
  v8 = *(v5 - 8);
  if (!EnumTagSinglePayload)
  {
    if (v7)
    {
      v11 = v8 + 8;
      (*(v8 + 8))(a1, v5);
      v9 = *(v11 + 76);
      v10 = *(v11 + 56);
      goto LABEL_6;
    }

    (*(v8 + 40))(a1, a2, v5);
    return a1;
  }

  if (!v7)
  {
    (*(v8 + 32))(a1, a2, v5);
    __swift_storeEnumTagSinglePayload(a1, 0, 1, v5);
    return a1;
  }

  v9 = *(v8 + 84);
  v10 = *(v8 + 64);
LABEL_6:
  if (v9)
  {
    v12 = v10;
  }

  else
  {
    v12 = v10 + 1;
  }

  return memcpy(a1, a2, v12);
}

uint64_t sub_1DCDCF038(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(*(v4 - 8) + 64);
  if (!v5)
  {
    ++v7;
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v6;
  if (a2 > v6)
  {
    v9 = 8 * v7;
    if (v7 > 3)
    {
      goto LABEL_8;
    }

    v11 = ((v8 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v7);
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v11 <= 0xFF)
      {
        if (v11 < 2)
        {
          goto LABEL_23;
        }

LABEL_8:
        v10 = *(a1 + v7);
        if (!*(a1 + v7))
        {
          goto LABEL_23;
        }

LABEL_15:
        v12 = (v10 - 1) << v9;
        if (v7 > 3)
        {
          v12 = 0;
        }

        if (v7)
        {
          if (v7 > 3)
          {
            LODWORD(v7) = 4;
          }

          switch(v7)
          {
            case 2:
              LODWORD(v7) = *a1;
              break;
            case 3:
              LODWORD(v7) = *a1 | (*(a1 + 2) << 16);
              break;
            case 4:
              LODWORD(v7) = *a1;
              break;
            default:
              LODWORD(v7) = *a1;
              break;
          }
        }

        return v6 + (v7 | v12) + 1;
      }

      v10 = *(a1 + v7);
      if (*(a1 + v7))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_23:
  if (v5 < 2)
  {
    return 0;
  }

  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, v5, v4);
  if (EnumTagSinglePayload >= 2)
  {
    return EnumTagSinglePayload - 1;
  }

  else
  {
    return 0;
  }
}

void sub_1DCDCF1B0(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  if (v9)
  {
    v10 = v9 - 1;
  }

  else
  {
    v10 = 0;
  }

  if (v9)
  {
    v11 = *(v8 + 64);
  }

  else
  {
    v11 = *(v8 + 64) + 1;
  }

  v12 = 8 * v11;
  v13 = a3 >= v10;
  v14 = a3 - v10;
  if (v14 != 0 && v13)
  {
    if (v11 <= 3)
    {
      v15 = ((v14 + ~(-1 << v12)) >> v12) + 1;
      if (HIWORD(v15))
      {
        v6 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v6 = v16;
        }

        else
        {
          v6 = 0;
        }
      }
    }

    else
    {
      v6 = 1;
    }
  }

  if (v10 >= a2)
  {
    switch(v6)
    {
      case 1:
        a1[v11] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 2:
        *&a1[v11] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 3:
LABEL_44:
        __break(1u);
        break;
      case 4:
        *&a1[v11] = 0;
        goto LABEL_30;
      default:
LABEL_30:
        if (a2)
        {
LABEL_31:
          if (v9 >= 2)
          {
            v20 = a2 + 1;

            __swift_storeEnumTagSinglePayload(a1, v20, v9, v7);
          }
        }

        break;
    }
  }

  else
  {
    v17 = ~v10 + a2;
    if (v11 < 4)
    {
      v18 = (v17 >> v12) + 1;
      if (v11)
      {
        v19 = v17 & ~(-1 << v12);
        bzero(a1, v11);
        if (v11 == 3)
        {
          *a1 = v19;
          a1[2] = BYTE2(v19);
        }

        else if (v11 == 2)
        {
          *a1 = v19;
        }

        else
        {
          *a1 = v17;
        }
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v17;
      v18 = 1;
    }

    switch(v6)
    {
      case 1:
        a1[v11] = v18;
        break;
      case 2:
        *&a1[v11] = v18;
        break;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v11] = v18;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1DCDCF40C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 56);
  return sub_1DCDCE568(a1, *(v1 + 40), *(v1 + 48));
}

void ReactiveFlowPlan.map<A>(_:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  OUTLINED_FUNCTION_0_1();
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v10, v11);
  OUTLINED_FUNCTION_16();
  v14 = v13 - v12;
  (*(v15 + 16))(v13 - v12, v16);
  v18[0] = a1;
  v18[1] = a2;
  v19 = 0;
  v17 = type metadata accessor for MapModifier();
  OUTLINED_FUNCTION_0_66();
  swift_getWitnessTable();
  sub_1DCDDC1D8(v14, v18, a3, v17, a4);
  sub_1DD0DCF8C();
}

void ReactiveFlowPlan.map<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_1_1();
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = a4;
  v10[4] = a5;
  v10[5] = a1;
  v10[6] = a2;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCDCF604(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v10 = (a4 + *a4);
  v7 = a4[1];
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_1DCB193FC;

  return v10(a1, a2);
}

uint64_t sub_1DCDCF708(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v3[2];
  v9 = v3[3];
  v10 = v3[4];
  v11 = v3[5];
  v12 = v3[6];
  v13 = swift_task_alloc();
  *(v4 + 16) = v13;
  *v13 = v4;
  v13[1] = sub_1DCB193FC;

  return sub_1DCDCF604(a1, a2, a3, v11);
}

void ReactiveFlowPlan.map<A>(_:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v7 = v6;
  OUTLINED_FUNCTION_0_1();
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v18, v19);
  OUTLINED_FUNCTION_16();
  v22 = v21 - v20;
  OUTLINED_FUNCTION_1_1();
  v23 = swift_allocObject();
  v23[2] = a3;
  v23[3] = a4;
  v23[4] = a5;
  v23[5] = a1;
  v23[6] = a2;
  (*(v15 + 16))(v22, v7, a3);
  v25[0] = sub_1DCDCFB14;
  v25[1] = v23;
  v26 = 1;
  v24 = type metadata accessor for MapModifier();
  OUTLINED_FUNCTION_0_66();
  swift_getWitnessTable();
  sub_1DCDDC1D8(v22, v25, a3, v24, a6);
  sub_1DD0DCF8C();
}

void sub_1DCDCF944(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v23 = a2;
  v24 = a3;
  v25 = a7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v14);
  v16 = &v23 - v15;
  v17 = type metadata accessor for Perform();
  (*(v12 + 16))(v16, a1, AssociatedTypeWitness);
  v18 = (*(v12 + 80) + 56) & ~*(v12 + 80);
  v19 = swift_allocObject();
  *(v19 + 2) = a4;
  *(v19 + 3) = a5;
  v20 = v23;
  *(v19 + 4) = a6;
  *(v19 + 5) = v20;
  *(v19 + 6) = v24;
  (*(v12 + 32))(&v19[v18], v16, AssociatedTypeWitness);
  v26 = 0;
  v21 = Perform.__allocating_init(interruptionPolicy:operateWithSideEffect:operation:)();
  v22 = v25;
  v25[3] = v17;
  v22[4] = swift_getWitnessTable();
  *v22 = v21;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCDCFB68(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1DCDCFBBC(uint64_t a1, uint64_t a2, int *a3, uint64_t a4, uint64_t a5)
{
  v12 = (a3 + *a3);
  v9 = a3[1];
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_1DCB4A548;

  return v12(a1, a5, a2);
}

void sub_1DCDCFCD0()
{
  OUTLINED_FUNCTION_4_69();
  OUTLINED_FUNCTION_0_1();
  v1 = *(v0 + 64);
  MEMORY[0x1EEE9AC00](v2, v3);
  OUTLINED_FUNCTION_16();
  (*(v6 + 16))(v5 - v4);
  sub_1DCDCFDB4();
  sub_1DCB9E288();
}

uint64_t sub_1DCDCFDB4()
{
  OUTLINED_FUNCTION_4_69();
  (*(*(v4 - 8) + 32))(v3);
  result = type metadata accessor for MappingPlan();
  v6 = v3 + *(result + 44);
  *v6 = v2;
  *(v6 + 8) = v1;
  *(v6 + 16) = v0 & 1;
  return result;
}

void sub_1DCDCFE44(uint64_t a1, void *a2)
{
  v4 = *v2;
  v3 = v2[1];
  v5 = *(v2 + 16);
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  sub_1DCDCFCD0();
}

uint64_t sub_1DCDCFE74(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = *(swift_getAssociatedTypeWitness() - 8);
  v10 = (*(v9 + 80) + 56) & ~*(v9 + 80);
  v11 = v2[5];
  v12 = v2[6];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_1DCB4A548;

  return sub_1DCDCFBBC(a1, a2, v11, v12, v2 + v10);
}

uint64_t sub_1DCDCFFA8(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void sub_1DCDD0040(void *a1, void *a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  if ((*(v4 + 80) & 0x1000F8) == 0 && ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 17 <= 0x18)
  {
    (*(v4 + 16))(a1, a2);
    v7 = (a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
    v8 = *v7;
    v9 = *(v7 + 8);
    v10 = *(v7 + 16);
    sub_1DCB9E288();
  }

  *a1 = *a2;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCDD0158(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 + 16) - 8) + 8;
  (*v3)();
  v4 = (a1 + *(v3 + 56) + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *v4;
  v6 = *(v4 + 8);
  v7 = *(v4 + 16);

  return sub_1DCB9E2A0();
}

void sub_1DCDD01CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8) + 16;
  (*v4)();
  v5 = (*(v4 + 48) + 7 + a2) & 0xFFFFFFFFFFFFFFF8;
  v6 = *v5;
  v7 = *(v5 + 8);
  v8 = *(v5 + 16);
  sub_1DCB9E288();
}

void sub_1DCDD0268(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8) + 24;
  (*v4)();
  v5 = (*(v4 + 40) + 7 + a2) & 0xFFFFFFFFFFFFFFF8;
  v6 = *v5;
  v7 = *(v5 + 8);
  v8 = *(v5 + 16);
  sub_1DCB9E288();
}

uint64_t sub_1DCDD0310(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  v6 = *(v5 + 32) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v8 + 16);
  *v7 = *v8;
  *(v7 + 16) = v9;
  return a1;
}

uint64_t sub_1DCDD0394(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v8 + 16);
  v10 = *v7;
  v11 = *(v7 + 8);
  v12 = *(v7 + 16);
  *v7 = *v8;
  *(v7 + 16) = v9;
  sub_1DCB9E2A0();
  return a1;
}

uint64_t sub_1DCDD0424(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v5 < 0xFE)
    {
      v16 = *(((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
      if (v16 > 1)
      {
        return (v16 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return __swift_getEnumTagSinglePayload(result, v5, v4);
    }
  }

  else
  {
    v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 17;
    v9 = (a2 - v7 + 255) >> 8;
    if (v8 <= 3)
    {
      v10 = v9 + 1;
    }

    else
    {
      v10 = 2;
    }

    if (v10 >= 0x10000)
    {
      v11 = 4;
    }

    else
    {
      v11 = 2;
    }

    if (v10 < 0x100)
    {
      v11 = 1;
    }

    if (v10 >= 2)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    switch(v12)
    {
      case 1:
        v13 = *(result + v8);
        if (!*(result + v8))
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v13 = *(result + v8);
        if (!*(result + v8))
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v13 = *(result + v8);
        if (!v13)
        {
          goto LABEL_26;
        }

LABEL_22:
        v14 = (v13 - 1) << (8 * v8);
        if (v8 <= 3)
        {
          v15 = *result;
        }

        else
        {
          v14 = 0;
          v15 = *result;
        }

        result = v7 + (v15 | v14) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_1DCDD0570(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 17;
  if (v8 >= a3)
  {
    v14 = 0;
  }

  else
  {
    v11 = (a3 - v8 + 255) >> 8;
    if (v10 <= 3)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }
  }

  if (v8 >= a2)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 3:
LABEL_43:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_30;
      default:
LABEL_30:
        if (a2)
        {
LABEL_31:
          if (v7 < 0xFE)
          {
            v17 = &a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8;
            if (a2 > 0xFE)
            {
              *(v17 + 16) = 0;
              *v17 = (a2 - 255);
              *(v17 + 8) = 0;
            }

            else
            {
              *(v17 + 16) = -a2;
            }
          }

          else
          {

            __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    v15 = ~v8 + a2;
    bzero(a1, ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 17);
    if (v10 <= 3)
    {
      v16 = (v15 >> 8) + 1;
    }

    else
    {
      v16 = 1;
    }

    if (v10 > 3)
    {
      *a1 = v15;
    }

    else
    {
      *a1 = v15;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v16;
        break;
      case 2:
        *&a1[v10] = v16;
        break;
      case 3:
        goto LABEL_43;
      case 4:
        *&a1[v10] = v16;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1DCDD0764(uint64_t a1, uint64_t *a2, uint64_t a3, void (*a4)(void, uint64_t, uint64_t))
{
  v5 = *a2;
  v6 = a2[1];
  v7 = *(a2 + 16);
  a4(*a2, v6, v7);
  *a1 = v5;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7;
  return a1;
}

uint64_t *sub_1DCDD07B4(uint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void, uint64_t, uint64_t), void (*a5)(uint64_t, uint64_t, uint64_t))
{
  v7 = *a2;
  v8 = a2[1];
  v9 = *(a2 + 16);
  a4(*a2, v8, v9);
  v10 = *a1;
  v11 = a1[1];
  v12 = *(a1 + 16);
  *a1 = v7;
  a1[1] = v8;
  *(a1 + 16) = v9;
  a5(v10, v11, v12);
  return a1;
}

uint64_t *sub_1DCDD0820(uint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t))
{
  v5 = *(a2 + 16);
  v6 = *a1;
  v7 = a1[1];
  v8 = *(a1 + 16);
  *a1 = *a2;
  *(a1 + 16) = v5;
  a4(v6, v7, v8);
  return a1;
}

void sub_1DCDD088C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for _FlowPlanEvent();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  OUTLINED_FUNCTION_9_46();
  sub_1DD0DF21C();
  OUTLINED_FUNCTION_9_46();
  sub_1DD0DDB2C();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1DD0DDABC();
  swift_getAssociatedTypeWitness();
  type metadata accessor for _FlowPlanEvent();
  sub_1DD0DDAEC();
  swift_getWitnessTable();
  sub_1DD0DDA9C();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1DD0DDA7C();
  OUTLINED_FUNCTION_0_1();
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v10, v11);
  OUTLINED_FUNCTION_34_0();
  swift_getWitnessTable();
  sub_1DD0DDA5C();
  OUTLINED_FUNCTION_0_1();
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v14, v15);
  OUTLINED_FUNCTION_34_0();
  sub_1DD0DDACC();
  OUTLINED_FUNCTION_0_1();
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v18, v19);
  OUTLINED_FUNCTION_34_0();
  swift_getWitnessTable();
  sub_1DD0DDA5C();
  OUTLINED_FUNCTION_0_1();
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v22, v23);
  OUTLINED_FUNCTION_34_0();
  (*(a4 + 48))(a1, a2, a4);
  v24 = a3;
  v25 = (a1 + *(type metadata accessor for MappingPlan() + 44));
  v27 = *v25;
  v26 = v25[1];
  if (v25[2])
  {
    sub_1DD0DCF8C();
  }

  OUTLINED_FUNCTION_1_1();
  v28 = swift_allocObject();
  v28[2] = a2;
  v28[3] = v24;
  v28[4] = a4;
  v28[5] = v27;
  v28[6] = v26;
  sub_1DCB9E288();
}

uint64_t sub_1DCDD0F38@<X0>(void (*a1)(char *)@<X1>, uint64_t a2@<X2>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  swift_getAssociatedTypeWitness();
  v8 = type metadata accessor for _FlowPlanEvent();
  return sub_1DCD495EC(a1, a2, v8, a3, a4);
}

unint64_t sub_1DCDD0FF4()
{
  swift_getWitnessTable();

  return ReactiveFlowPlan.description.getter();
}

uint64_t sub_1DCDD1048(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1DCDD1084@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 32);
  return sub_1DCDD0F38(*(v1 + 40), *(v1 + 48), *(v1 + 24), a1);
}

char *sub_1DCDD10C0(char *a1, char *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    sub_1DCDD36C4(a1, type metadata accessor for RelationshipLabel);
    type metadata accessor for RelationshipLabel();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    *a1 = *a2;
    *(a1 + 1) = *(a2 + 1);

    if (EnumCaseMultiPayload != 1)
    {
      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2088, &unk_1DD0E4060) + 48);
      v8 = sub_1DD0DB0FC();
      (*(*(v8 - 8) + 16))(&a1[v7], &a2[v7], v8);
    }

    swift_storeEnumTagMultiPayload();
  }

  v9 = *(a3 + 20);
  v10 = &a1[v9];
  v11 = &a2[v9];
  *v10 = *v11;
  v12 = *(v10 + 1);
  *(v10 + 1) = *(v11 + 1);

  return a1;
}

_OWORD *sub_1DCDD11F0(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    sub_1DCDD36C4(a1, type metadata accessor for RelationshipLabel);
    v6 = type metadata accessor for RelationshipLabel();
    if (swift_getEnumCaseMultiPayload())
    {
      memcpy(a1, a2, *(*(v6 - 8) + 64));
    }

    else
    {
      *a1 = *a2;
      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2088, &unk_1DD0E4060) + 48);
      v8 = sub_1DD0DB0FC();
      (*(*(v8 - 8) + 32))(a1 + v7, a2 + v7, v8);
      swift_storeEnumTagMultiPayload();
    }
  }

  v9 = *(a3 + 20);
  v10 = (a1 + v9);
  v11 = (a2 + v9);
  v13 = *v11;
  v12 = v11[1];
  v14 = v10[1];
  *v10 = v13;
  v10[1] = v12;

  return a1;
}

uint64_t sub_1DCDD1380()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA20E8, &unk_1DD0E40F0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v4);
  v6 = &v24 - v5;
  sub_1DD0DC72C();
  v7 = sub_1DD0DBD0C();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    sub_1DCB0E9D8(v6, &qword_1ECCA20E8, &unk_1DD0E40F0);
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v8 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v8, qword_1EDE57E00);
    v9 = sub_1DD0DD8EC();
    v10 = sub_1DD0DE6EC();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1DCAFC000, v9, v10, "Unable to determine domain node from NLIntent", v11, 2u);
      OUTLINED_FUNCTION_80();
    }

    v12 = 0;
  }

  else
  {
    v13 = sub_1DD0DBCFC();
    v15 = v14;
    (*(*(v7 - 8) + 8))(v6, v7);
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v16 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v16, qword_1EDE57E00);

    v17 = sub_1DD0DD8EC();
    v18 = sub_1DD0DE6DC();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v25 = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_1DCB10E9C(v13, v15, &v25);
      _os_log_impl(&dword_1DCAFC000, v17, v18, "MessageUnsetRelationshipFlowConfig testing %s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v20);
      OUTLINED_FUNCTION_80();
      OUTLINED_FUNCTION_80();
    }

    v21 = (v1 + *(type metadata accessor for MessageUnsetRelationshipFlowConfig(0) + 20));
    if (*v21 == v13 && v21[1] == v15)
    {

      v12 = 1;
    }

    else
    {
      v12 = sub_1DD0DF0AC();
    }
  }

  return v12 & 1;
}

uint64_t sub_1DCDD1674@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA6750, &qword_1DD0F6550);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v8 = &v53 - v7;
  v9 = type metadata accessor for SmsIntent(0);
  v10 = OUTLINED_FUNCTION_2(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for SmsIntent.Contact(0);
  v17 = OUTLINED_FUNCTION_2(v16);
  v19 = *(v18 + 64);
  v21 = MEMORY[0x1EEE9AC00](v17, v20);
  v23 = &v53 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v24);
  v26 = &v53 - v25;
  v27 = sub_1DD0DC76C();
  OUTLINED_FUNCTION_2(v27);
  (*(v28 + 16))(v15, a1);
  if (qword_1ECCA12F8 != -1)
  {
    OUTLINED_FUNCTION_8_52();
  }

  OUTLINED_FUNCTION_5_65();
  sub_1DCDD373C(v29, v30);
  OUTLINED_FUNCTION_4_70();
  sub_1DCDD373C(v31, v32);
  v33 = sub_1DD0DBCCC();
  OUTLINED_FUNCTION_1_77();
  sub_1DCDD36C4(v15, v34);
  sub_1DCC62338(v33, v8);

  if (__swift_getEnumTagSinglePayload(v8, 1, v16) == 1)
  {
    result = sub_1DCB0E9D8(v8, &qword_1ECCA6750, &qword_1DD0F6550);
    v36 = 0;
    v37 = 0;
    v38 = 0;
    v39 = 0;
    v40 = 0;
    v41 = 0;
    *a2 = xmmword_1DD0E3FF0;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
  }

  else
  {
    sub_1DCDD3784(v8, v26);
    sub_1DCDD37E8(v26, v23, type metadata accessor for SmsIntent.Contact);
    OUTLINED_FUNCTION_4_70();
    sub_1DCDD373C(v42, v43);
    OUTLINED_FUNCTION_11_43();
    v44 = sub_1DD0DBE8C();
    v55 = v45;
    v56 = v44;
    OUTLINED_FUNCTION_11_43();
    v46 = sub_1DD0DBE6C();
    v53 = v47;
    v54 = v46;
    OUTLINED_FUNCTION_11_43();
    v36 = sub_1DD0DBE4C();
    v37 = v48;
    OUTLINED_FUNCTION_11_43();
    v38 = sub_1DD0DBE5C();
    v39 = v49;
    OUTLINED_FUNCTION_11_43();
    v40 = sub_1DD0DBE7C();
    v41 = v50;
    sub_1DCDD36C4(v26, type metadata accessor for SmsIntent.Contact);
    result = sub_1DCDD36C4(v23, type metadata accessor for SmsIntent.Contact);
    v51 = v55;
    *a2 = v56;
    *(a2 + 8) = v51;
    v52 = v53;
    *(a2 + 16) = v54;
    *(a2 + 24) = v52;
  }

  *(a2 + 32) = v36;
  *(a2 + 40) = v37;
  *(a2 + 48) = v38;
  *(a2 + 56) = v39;
  *(a2 + 64) = v40;
  *(a2 + 72) = v41;
  return result;
}

uint64_t sub_1DCDD19E0(uint64_t a1)
{
  v2 = type metadata accessor for SmsIntent(0);
  v3 = OUTLINED_FUNCTION_2(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1DD0DC76C();
  OUTLINED_FUNCTION_2(v9);
  (*(v10 + 16))(v8, a1);
  if (qword_1ECCA1308 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_5_65();
  sub_1DCDD373C(v11, v12);
  sub_1DD0DBCEC();
  v13 = v22;
  if (v22 == 4)
  {
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v14 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v14, qword_1EDE57E00);
    v15 = sub_1DD0DD8EC();
    v16 = sub_1DD0DE6EC();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_1DCAFC000, v15, v16, "Could not parse confirmation node for smsIntent", v17, 2u);
      OUTLINED_FUNCTION_80();
    }

    OUTLINED_FUNCTION_1_77();
    sub_1DCDD36C4(v8, v18);
    return 0;
  }

  else
  {
    OUTLINED_FUNCTION_1_77();
    sub_1DCDD36C4(v8, v20);
    return 0x10001u >> (8 * v13);
  }
}

uint64_t sub_1DCDD1BD0@<X0>(uint64_t a1@<X8>)
{
  NLContextUpdate.init()(a1);
  v2 = sub_1DCDD1D38(0);
  v4 = v3;
  v5 = *(a1 + 192);

  *(a1 + 184) = v2;
  *(a1 + 192) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA28D0, &unk_1DD0E40C0);
  v6 = swift_allocObject();
  OUTLINED_FUNCTION_13_42(v6, xmmword_1DD0E07C0);
  v7 = OUTLINED_FUNCTION_10_45();
  OUTLINED_FUNCTION_3_74(v7, v8, v9, v10, v11, v12, MEMORY[0x1E69E6158], v13, MEMORY[0x1E69E6158], v7, v7, v7, v22, v23, v24);
  sub_1DD0DEA3C();

  sub_1DCDD1D38(4);
  OUTLINED_FUNCTION_9_47();
  v14 = sub_1DD0DE06C();
  MEMORY[0x1E12A6780](v14);

  v6[2].n128_u64[0] = v25;
  v6[2].n128_u64[1] = v26;
  v15 = *(a1 + 168);

  *(a1 + 168) = v6;
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1DD0E4010;
  *(v16 + 32) = sub_1DCDD1D38(2);
  *(v16 + 40) = v17;
  *(v16 + 48) = sub_1DCDD1D38(3);
  *(v16 + 56) = v18;
  *(v16 + 64) = sub_1DCDD1D38(7);
  *(v16 + 72) = v19;
  v20 = *(a1 + 160);

  *(a1 + 160) = v16;
  *(a1 + 176) = 1;
  return result;
}

unint64_t sub_1DCDD1D38(char a1)
{
  sub_1DD0DEC1C();

  sub_1DCDD27B4(a1);

  sub_1DCB598EC(1);
  v2 = sub_1DD0DE99C();
  v4 = v3;

  sub_1DCB594B0(1uLL);
  sub_1DCB59970();

  sub_1DD0DE11C();

  MEMORY[0x1E12A6780](v2, v4);

  return 0xD000000000000012;
}

uint64_t sub_1DCDD1E5C@<X0>(uint64_t a1@<X8>)
{
  NLContextUpdate.init()(a1);
  v2 = sub_1DCDD1D38(0);
  v4 = v3;
  v5 = *(a1 + 192);

  *(a1 + 184) = v2;
  *(a1 + 192) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA28D0, &unk_1DD0E40C0);
  v6 = swift_allocObject();
  OUTLINED_FUNCTION_13_42(v6, xmmword_1DD0E07C0);
  v7 = OUTLINED_FUNCTION_10_45();
  OUTLINED_FUNCTION_3_74(v7, v8, v9, v10, v11, v12, MEMORY[0x1E69E6158], v13, MEMORY[0x1E69E6158], v7, v7, v7, v23, v24, v25);
  sub_1DD0DEA3C();

  sub_1DCDD1D38(4);
  OUTLINED_FUNCTION_9_47();
  v14 = sub_1DD0DE06C();
  MEMORY[0x1E12A6780](v14);

  v6[2].n128_u64[0] = v26;
  v6[2].n128_u64[1] = v27;
  v15 = *(a1 + 168);

  *(a1 + 168) = v6;
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1DD0E32B0;
  *(v16 + 32) = sub_1DCDD1D38(2);
  *(v16 + 40) = v17;
  *(v16 + 48) = sub_1DCDD1D38(3);
  *(v16 + 56) = v18;
  v19 = *(a1 + 160);

  *(a1 + 160) = v16;
  *(a1 + 176) = 1;
  v20 = sub_1DCDD1FE4();
  v21 = *(a1 + 104);

  *(a1 + 104) = v20;
  return result;
}

uint64_t sub_1DCDD1FE4()
{
  __src[0] = &unk_1F584EF70;
  __src[1] = 1953718636;
  __src[2] = 0xE400000000000000;
  strcpy(&__src[3], "secondToLast");
  BYTE5(__src[4]) = 0;
  HIWORD(__src[4]) = -5120;
  __src[5] = 0x4C6F546472696874;
  __src[6] = 0xEB00000000747361;
  __src[7] = 0xD000000000000013;
  __src[8] = 0x80000001DD11DC00;
  v52 = MEMORY[0x1E69E7CC0];
  v53 = MEMORY[0x1E69E7CC0];
  if (qword_1EDE4F900 != -1)
  {
LABEL_41:
    OUTLINED_FUNCTION_0_0();
  }

  v0 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v0, qword_1EDE57E00);
  v1 = sub_1DD0DD8EC();
  v2 = sub_1DD0DE6DC();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1DCAFC000, v1, v2, "Building display hints for regular contact disambiguation", v3, 2u);
    OUTLINED_FUNCTION_80();
  }

  MEMORY[0x1EEE9AC00](v4, v5);
  sub_1DCC34890();
  v7 = v6;
  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  v45 = *(v6 + 16);
  v10 = 32;
  while (v45 != v8)
  {
    if (v8 >= *(v7 + 16))
    {
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v11 = v7;
    v12 = *(v7 + v10);
    v13 = *(v12 + 16);
    v14 = *(v9 + 16);
    v15 = __OFADD__(v14, v13);

    if (v15)
    {
      goto LABEL_36;
    }

    if (!swift_isUniquelyReferenced_nonNull_native() || v14 + v13 > *(v9 + 24) >> 1)
    {
      sub_1DCE18ECC();
      v9 = v16;
    }

    if (*(v12 + 16))
    {
      if ((*(v9 + 24) >> 1) - *(v9 + 16) < v13)
      {
        goto LABEL_39;
      }

      swift_arrayInitWithCopy();

      v7 = v11;
      if (v13)
      {
        v17 = *(v9 + 16);
        v18 = __OFADD__(v17, v13);
        v19 = v17 + v13;
        if (v18)
        {
          goto LABEL_40;
        }

        *(v9 + 16) = v19;
      }
    }

    else
    {

      v7 = v11;
      if (v13)
      {
        goto LABEL_37;
      }
    }

    v10 += 56;
    ++v8;
  }

  sub_1DCBB9680(v9);
  v20 = *(v7 + 16);
  if (v20)
  {
    v51[0] = MEMORY[0x1E69E7CC0];
    sub_1DCE06C08();
    v21 = v51[0];
    v22 = (v7 + 80);
    do
    {
      v23 = *(v22 - 4);
      v46 = *(v22 - 5);
      v24 = *(v22 - 2);
      v25 = *v22;
      v43 = *(v22 - 1);
      v44 = *(v22 - 3);
      v51[0] = v21;
      v27 = *(v21 + 16);
      v26 = *(v21 + 24);

      if (v27 >= v26 >> 1)
      {
        sub_1DCE06C08();
        v21 = v51[0];
      }

      v22 += 7;
      *(v21 + 16) = v27 + 1;
      v28 = (v21 + 48 * v27);
      v28[4] = v46;
      v28[5] = v23;
      v28[6] = v44;
      v28[7] = v24;
      v28[8] = v43;
      v28[9] = v25;
      --v20;
    }

    while (v20);
  }

  else
  {

    v21 = MEMORY[0x1E69E7CC0];
  }

  sub_1DCBB9718(v21);
  memcpy(v51, __src, 0x48uLL);
  v29 = OrdinalDisplayHintsBuilder.build(for:)(v52);
  sub_1DCC08984(__src);
  sub_1DCBB9680(v29);
  v30 = v53;
  v31 = *(v53 + 16);

  v32 = 0;
  v33 = 32;
  v47 = v30;
  while (v31 != v32)
  {
    if (v32 >= *(v30 + 16))
    {
      goto LABEL_38;
    }

    memcpy(v51, (v30 + v33), 0x60uLL);
    sub_1DCC089D8(v51, v50);
    sub_1DCC089D8(v51, v50);
    v34 = sub_1DD0DD8EC();
    v35 = sub_1DD0DE6DC();
    sub_1DCC08A34(v51);
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = v31;
      v38 = swift_slowAlloc();
      v49 = v38;
      *v36 = 136315138;
      memcpy(v50, v51, sizeof(v50));
      sub_1DCC089D8(v51, &v48);
      v39 = sub_1DD0DE02C();
      v41 = sub_1DCB10E9C(v39, v40, &v49);

      *(v36 + 4) = v41;
      _os_log_impl(&dword_1DCAFC000, v34, v35, "DisplayHint: %s", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v38);
      v31 = v37;
      v30 = v47;
      OUTLINED_FUNCTION_80();
      OUTLINED_FUNCTION_80();
    }

    sub_1DCC08A34(v51);
    v33 += 96;
    ++v32;
  }

  return v30;
}

uint64_t sub_1DCDD2568@<X0>(uint64_t a1@<X8>)
{
  NLContextUpdate.init()(a1);
  v2 = sub_1DCDD1D38(0);
  v4 = v3;
  v5 = *(a1 + 192);

  *(a1 + 184) = v2;
  *(a1 + 192) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA28D0, &unk_1DD0E40C0);
  v6 = swift_allocObject();
  OUTLINED_FUNCTION_13_42(v6, xmmword_1DD0E32B0);
  v7 = sub_1DCB1C4D8();
  OUTLINED_FUNCTION_3_74(v7, v8, v9, v10, v11, v12, v13, v14, MEMORY[0x1E69E6158], v7, v7, v7, 95, 0xE100000000000000, 32);
  sub_1DD0DEA3C();

  v24 = sub_1DCDD1D38(4);
  v26 = v15;
  MEMORY[0x1E12A6780](0x2E65756C61562ELL, 0xE700000000000000);
  v16 = sub_1DD0DE06C();
  MEMORY[0x1E12A6780](v16);

  v6[2].n128_u64[0] = v24;
  v6[2].n128_u64[1] = v26;
  sub_1DD0DE06C();
  sub_1DD0DEA3C();

  v25 = sub_1DCDD1D38(4);
  v27 = v17;
  MEMORY[0x1E12A6780](0x2E65756C61562ELL, 0xE700000000000000);
  v18 = sub_1DD0DE06C();
  MEMORY[0x1E12A6780](v18);

  v6[3].n128_u64[0] = v25;
  v6[3].n128_u64[1] = v27;
  v19 = *(a1 + 168);

  *(a1 + 168) = v6;
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1DD0E07C0;
  *(v20 + 32) = sub_1DCDD1D38(4);
  *(v20 + 40) = v21;
  v22 = *(a1 + 160);

  *(a1 + 160) = v20;
  *(a1 + 176) = 1;
  return result;
}

unint64_t sub_1DCDD27B4(char a1)
{
  result = 7564659;
  switch(a1)
  {
    case 1:
    case 2:
      result = 0x61746E6F43736D73;
      break;
    case 3:
      result = 0xD000000000000013;
      break;
    case 4:
      result = 0x69666E6F43736D73;
      break;
    case 5:
      result = 0x6D754E656E6F6870;
      break;
    case 6:
      result = 0x6464416C69616D65;
      break;
    case 7:
      result = 0x54746361746E6F63;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DCDD28B4(uint64_t a1, void *a2)
{
  v4 = sub_1DD003DB0(a2);
  v6 = v5;
  swift_bridgeObjectRelease_n();
  if (v6)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0;
  }

  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0xE000000000000000;
  }

  v9 = sub_1DCDD1D38(1);
  v11 = v10;

  v12 = sub_1DCCC331C(a2);
  if (!v13)
  {
    goto LABEL_15;
  }

  v14 = v12;
  v15 = v13;
  v16 = HIBYTE(v13) & 0xF;
  if ((v13 & 0x2000000000000000) == 0)
  {
    v16 = v12 & 0xFFFFFFFFFFFFLL;
  }

  if (!v16)
  {

LABEL_15:
    v20 = MEMORY[0x1E69E7CC0];
    goto LABEL_16;
  }

  v52 = v7;

  swift_bridgeObjectRelease_n();
  v49 = sub_1DD002414(7);
  v18 = v17;

  sub_1DCB22A50(0, 1);
  sub_1DCB22A50(0, 1);
  sub_1DCE18ECC();
  v20 = v19;
  v21 = *(v19 + 16);
  if (v21 >= *(v19 + 24) >> 1)
  {
    sub_1DCE18ECC();
    v20 = v42;
  }

  *(v20 + 16) = v21 + 1;
  v22 = v20 + 96 * v21;
  v7 = v52;
  *(v22 + 32) = v52;
  *(v22 + 40) = v8;
  *(v22 + 48) = xmmword_1DD0F64E0;
  *(v22 + 64) = v9;
  *(v22 + 72) = v11;
  *(v22 + 80) = v14;
  *(v22 + 88) = v15;
  *(v22 + 96) = xmmword_1DD0E4020;
  *(v22 + 112) = v49;
  *(v22 + 120) = v18;
LABEL_16:
  v23 = sub_1DCC6E534(a2);
  if (v24)
  {
    v25 = v23;
    v26 = v24;
    v27 = HIBYTE(v24) & 0xF;
    if ((v24 & 0x2000000000000000) == 0)
    {
      v27 = v23 & 0xFFFFFFFFFFFFLL;
    }

    if (v27)
    {

      swift_bridgeObjectRelease_n();
      v53 = sub_1DD002414(8);
      v50 = v28;

      sub_1DCB22A50(0, 1);
      sub_1DCB22A50(0, 1);
      v29 = v7;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v43 = *(v20 + 16);
        sub_1DCE18ECC();
        v20 = v44;
      }

      v30 = *(v20 + 16);
      if (v30 >= *(v20 + 24) >> 1)
      {
        sub_1DCE18ECC();
        v20 = v45;
      }

      *(v20 + 16) = v30 + 1;
      v31 = v20 + 96 * v30;
      v7 = v29;
      *(v31 + 32) = v29;
      *(v31 + 40) = v8;
      *(v31 + 48) = xmmword_1DD0F64E0;
      *(v31 + 64) = v9;
      *(v31 + 72) = v11;
      *(v31 + 80) = v25;
      *(v31 + 88) = v26;
      *(v31 + 96) = xmmword_1DD0E4030;
      *(v31 + 112) = v53;
      *(v31 + 120) = v50;
    }

    else
    {
    }
  }

  v32 = sub_1DCC6E540(a2);
  if (v33)
  {
    v34 = v32;
    v35 = v33;
    v36 = HIBYTE(v33) & 0xF;
    if ((v33 & 0x2000000000000000) == 0)
    {
      v36 = v32 & 0xFFFFFFFFFFFFLL;
    }

    if (v36)
    {

      swift_bridgeObjectRelease_n();
      v51 = sub_1DD002414(9);
      v38 = v37;

      sub_1DCB22A50(0, 1);
      sub_1DCB22A50(0, 1);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v46 = *(v20 + 16);
        sub_1DCE18ECC();
        v20 = v47;
      }

      v39 = *(v20 + 16);
      if (v39 >= *(v20 + 24) >> 1)
      {
        sub_1DCE18ECC();
        v20 = v48;
      }

      *(v20 + 16) = v39 + 1;
      v40 = v20 + 96 * v39;
      *(v40 + 32) = v7;
      *(v40 + 40) = v8;
      *(v40 + 48) = xmmword_1DD0F64E0;
      *(v40 + 64) = v9;
      *(v40 + 72) = v11;
      *(v40 + 80) = v34;
      *(v40 + 88) = v35;
      *(v40 + 96) = xmmword_1DD0E4040;
      *(v40 + 112) = v51;
      *(v40 + 120) = v38;
    }

    else
    {
    }
  }

  *a1 = v7;
  *(a1 + 8) = v8;
  *(a1 + 16) = xmmword_1DD0F64E0;
  *(a1 + 32) = v9;
  *(a1 + 40) = v11;
  return v20;
}

void sub_1DCDD2E04()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA20D8, &unk_1DD10A050);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1DD0E32B0;
  if (qword_1ECCA12F8 != -1)
  {
    swift_once();
  }

  v1 = qword_1ECCD2658;
  v2 = sub_1DD0DB95C();
  v3 = MEMORY[0x1E69D1510];
  *(v0 + 56) = v2;
  *(v0 + 64) = v3;
  *(v0 + 32) = v1;
  sub_1DD0DCF8C();
}

void sub_1DCDD2F7C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA20D8, &unk_1DD10A050);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1DD0E07C0;
  if (qword_1ECCA1300 != -1)
  {
    swift_once();
  }

  v1 = qword_1ECCD2660;
  v2 = sub_1DD0DB9AC();
  v3 = MEMORY[0x1E69D1510];
  *(v0 + 56) = v2;
  *(v0 + 64) = v3;
  *(v0 + 32) = v1;
  v4 = sub_1DD0DB95C();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  sub_1DD0DCF8C();
}

uint64_t sub_1DCDD3070()
{
  v0 = sub_1DD0DB9AC();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_1DD0DB99C();
  qword_1ECCD2660 = result;
  return result;
}

uint64_t sub_1DCDD30C4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA6748, &qword_1DD0F6548);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_1DD0DB9BC();
  qword_1ECCD2668 = result;
  return result;
}

void sub_1DCDD3134()
{
  if (qword_1ECCA12F0 != -1)
  {
    swift_once();
  }

  sub_1DD0DCF8C();
}

void sub_1DCDD3190(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1DD0DBD0C();
  OUTLINED_FUNCTION_2(v4);
  (*(v5 + 16))(a2, a1);
  v6 = *(type metadata accessor for SmsIntent.Contact(0) + 20);
  if (qword_1ECCA12F8 != -1)
  {
    OUTLINED_FUNCTION_8_52();
  }

  *(a2 + v6) = qword_1ECCD2658;

  sub_1DD0DCF8C();
}

uint64_t sub_1DCDD3234(uint64_t a1)
{
  v2 = sub_1DCDD373C(&qword_1ECCA6758, type metadata accessor for SmsIntent.Contact);

  return MEMORY[0x1EEE3E098](a1, v2);
}

uint64_t sub_1DCDD32B0(uint64_t a1)
{
  v2 = sub_1DCDD373C(&qword_1ECCA6758, type metadata accessor for SmsIntent.Contact);

  return MEMORY[0x1EEE3E090](a1, v2);
}

uint64_t sub_1DCDD331C()
{
  v0 = sub_1DD0DEE9C();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1DCDD3368(char a1)
{
  result = 7562617;
  switch(a1)
  {
    case 1:
      result = 28526;
      break;
    case 2:
      result = 0x206D7269666E6F63;
      break;
    case 3:
      result = 0x63207463656A6572;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DCDD3408(uint64_t a1)
{
  v2 = sub_1DCDD373C(&qword_1ECCA67C0, type metadata accessor for SmsIntent);

  return MEMORY[0x1EEE3D728](a1, v2);
}

uint64_t sub_1DCDD3484(uint64_t a1)
{
  v2 = sub_1DCDD373C(&qword_1ECCA67C0, type metadata accessor for SmsIntent);

  return MEMORY[0x1EEE3D718](a1, v2);
}

uint64_t sub_1DCDD34F0(uint64_t a1)
{
  v2 = sub_1DCDD373C(&qword_1ECCA67C0, type metadata accessor for SmsIntent);

  return MEMORY[0x1EEE3D720](a1, v2);
}

uint64_t sub_1DCDD3580@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DCDD331C();
  *a2 = result;
  return result;
}

uint64_t sub_1DCDD35B0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DCDD3368(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1DCDD35EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DCDD3BE0();
  v5 = sub_1DCDD3C34();
  v6 = sub_1DCDD3C88();

  return MEMORY[0x1EEE3E530](a1, a2, v4, v5, v6);
}

uint64_t sub_1DCDD3660@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 16);
  result = sub_1DCDD28B4((a2 + 1), *a1);
  *a2 = result;
  return result;
}

uint64_t sub_1DCDD36C4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_2(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1DCDD373C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DCDD3784(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SmsIntent.Contact(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DCDD37E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_2(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

_BYTE *storeEnumTagSinglePayload for SmsConfirmation(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DCDD3A08()
{
  result = qword_1ECCA6790;
  if (!qword_1ECCA6790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA6790);
  }

  return result;
}

unint64_t sub_1DCDD3AA4()
{
  result = qword_1ECCA67A8;
  if (!qword_1ECCA67A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA67A8);
  }

  return result;
}

unint64_t sub_1DCDD3AFC()
{
  result = qword_1ECCA67B0;
  if (!qword_1ECCA67B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA67B0);
  }

  return result;
}

unint64_t sub_1DCDD3BE0()
{
  result = qword_1ECCA67C8;
  if (!qword_1ECCA67C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA67C8);
  }

  return result;
}

unint64_t sub_1DCDD3C34()
{
  result = qword_1ECCA67D0;
  if (!qword_1ECCA67D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA67D0);
  }

  return result;
}

unint64_t sub_1DCDD3C88()
{
  result = qword_1ECCA67D8;
  if (!qword_1ECCA67D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA67D8);
  }

  return result;
}

void sub_1DCDD3D08(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  sub_1DCDD3E0C();
}

void sub_1DCDD3D48()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA67E8, &qword_1DD0F67F0);
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_67(&qword_1ECCA67F0);
  sub_1DD0DCEDC();
}

void sub_1DCDD3E0C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA67E8, &qword_1DD0F67F0);
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_67(&qword_1ECCA67F0);
  sub_1DD0DCF8C();
}

void sub_1DCDD3EB0()
{
  v1 = __swift_coroFrameAllocStub(0x38uLL);
  OUTLINED_FUNCTION_11_5(v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA67E8, &qword_1DD0F67F0);
  *(v0 + 32) = swift_getKeyPath();
  *(v0 + 40) = swift_getKeyPath();
  OUTLINED_FUNCTION_0_67(&qword_1ECCA67F0);
  OUTLINED_FUNCTION_4_71();
  sub_1DD0DCECC();
}

void sub_1DCDD3F6C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA67F8, &qword_1DD0F6840);
  v2 = OUTLINED_FUNCTION_9(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2, v5);
  OUTLINED_FUNCTION_4_1();
  swift_beginAccess();
  v6 = *(v0 + 24);
  v7 = OUTLINED_FUNCTION_3_8();
  v8(v7);
  sub_1DD0DCF8C();
}

void sub_1DCDD4068()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *OUTLINED_FUNCTION_11_5(v2) = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA67F8, &qword_1DD0F6840);
  OUTLINED_FUNCTION_10_46(v3);
  v1[2] = v4;
  v6 = *(v5 + 64);
  v1[3] = __swift_coroFrameAllocStub(v6);
  v1[4] = __swift_coroFrameAllocStub(v6);
  sub_1DCC627B8();
}

void sub_1DCDD4174(uint64_t a1, uint64_t *a2)
{
  sub_1DCDD4314(a1, v4);
  v3 = *a2;
  sub_1DCDD425C(v4);
}

void sub_1DCDD41B0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA6800, &qword_1DD0F6848);
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_67(&qword_1ECCA67F0);
  sub_1DD0DCEDC();
}

void sub_1DCDD425C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA6800, &qword_1DD0F6848);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1DCDD4314(a1, v2);
  OUTLINED_FUNCTION_0_67(&qword_1ECCA67F0);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCDD4314(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA35F8, &qword_1DD0E97A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DCDD4384(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA35F8, &qword_1DD0E97A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1DCDD43EC()
{
  v1 = __swift_coroFrameAllocStub(0x38uLL);
  OUTLINED_FUNCTION_11_5(v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA6800, &qword_1DD0F6848);
  *(v0 + 32) = swift_getKeyPath();
  *(v0 + 40) = swift_getKeyPath();
  OUTLINED_FUNCTION_0_67(&qword_1ECCA67F0);
  OUTLINED_FUNCTION_4_71();
  sub_1DD0DCECC();
}

void sub_1DCDD44AC(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  v3 = *(*a1 + 32);
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t sub_1DCDD4514(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(uint64_t))
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v12 = OUTLINED_FUNCTION_9(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12, v15);
  OUTLINED_FUNCTION_4_1();
  (*(v16 + 16))(v7, a1);
  v17 = *a2;
  return a7(v7);
}

void sub_1DCDD45D4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA6808, &qword_1DD0F68A0);
  v2 = OUTLINED_FUNCTION_9(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2, v5);
  OUTLINED_FUNCTION_4_1();
  swift_beginAccess();
  v6 = *(v0 + 32);
  v7 = OUTLINED_FUNCTION_3_8();
  v8(v7);
  sub_1DD0DCF8C();
}

void sub_1DCDD46D0()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *OUTLINED_FUNCTION_11_5(v2) = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA6808, &qword_1DD0F68A0);
  OUTLINED_FUNCTION_10_46(v3);
  v1[2] = v4;
  v6 = *(v5 + 64);
  v1[3] = __swift_coroFrameAllocStub(v6);
  v1[4] = __swift_coroFrameAllocStub(v6);
  sub_1DCC62954();
}

void sub_1DCDD47B8(uint64_t **a1, char a2, void (*a3)(void *))
{
  v4 = *a1;
  v5 = (*a1)[3];
  v6 = (*a1)[4];
  if (a2)
  {
    v7 = v4[1];
    v8 = v4[2];
    v9 = *v4;
    (*(v8 + 16))((*a1)[3], v6, v7);
    a3(v5);
    (*(v8 + 8))(v6, v7);
  }

  else
  {
    v10 = *v4;
    a3((*a1)[4]);
  }

  free(v6);
  free(v5);

  free(v4);
}

void MetricsEnvironmentProvider.__allocating_init(taskName:eventSender:)()
{
  OUTLINED_FUNCTION_5_66();
  swift_allocObject();
  MetricsEnvironmentProvider.init(taskName:eventSender:)();
}

void MetricsEnvironmentProvider.init(taskName:eventSender:)()
{
  *(v0 + 16) = 0;
  v2 = 0;
  v3 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA67E8, &qword_1DD0F67F0);
  OUTLINED_FUNCTION_73_1(v1);
  OUTLINED_FUNCTION_9_48();
  sub_1DD0DCE9C();
}

void MetricsEnvironmentProvider.__allocating_init(storage:)()
{
  OUTLINED_FUNCTION_5_66();
  swift_allocObject();
  MetricsEnvironmentProvider.init(storage:)();
}

void MetricsEnvironmentProvider.init(storage:)()
{
  *(v0 + 16) = 0;
  v2 = 0;
  v3 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA67E8, &qword_1DD0F67F0);
  OUTLINED_FUNCTION_73_1(v1);
  OUTLINED_FUNCTION_9_48();
  sub_1DD0DCE9C();
}

void *MetricsEnvironmentProvider.deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return v0;
}

uint64_t MetricsEnvironmentProvider.__deallocating_deinit()
{
  MetricsEnvironmentProvider.deinit();
  OUTLINED_FUNCTION_5_66();

  return swift_deallocClassInstance();
}

void sub_1DCDD4BAC()
{
  type metadata accessor for MetricsEnvironmentProvider();

    ;
  }
}

void sub_1DCDD4BF8()
{
  type metadata accessor for MetricsEnvironmentProvider();

  sub_1DD0DCF8C();
}

uint64_t sub_1DCDD4C48@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for MetricsEnvironmentProvider();
  result = sub_1DD0DDAFC();
  *a1 = result;
  return result;
}

void SiriEnvironment.metricsEnvironment.getter()
{
  type metadata accessor for MetricsEnvironmentProvider();
  OUTLINED_FUNCTION_1_78(&qword_1ECCA35F0);

  sub_1DD0DCA7C();
}

uint64_t sub_1DCDD4D04(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MetricsEnvironmentProvider();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double sub_1DCDD4FA8()
{
  type metadata accessor for RefreshableMetricsState();
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  result = 0.0;
  *(v0 + 24) = 0u;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0;
  qword_1EDE57D98 = v0;
  return result;
}

uint64_t sub_1DCDD4FE8()
{
  v0 = type metadata accessor for EnvironmentBackedMetricsState();
  result = swift_allocObject();
  qword_1ECCD2688 = v0;
  unk_1ECCD2690 = &off_1F58640E8;
  qword_1ECCD2670 = result;
  return result;
}

void static Metrics.current.getter()
{
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v0 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v0, qword_1EDE57E00);
  v1 = sub_1DD0DD8EC();
  v2 = sub_1DD0DE6EC();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1DCAFC000, v1, v2, "MetricsState has been deprecated. Please use values provided by SiriEnvironment's 'currentRequest' and 'flowTask' instead.", v3, 2u);
    OUTLINED_FUNCTION_80();
  }

  sub_1DD0DCA6C();
}

void sub_1DCDD5204(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](a1, a2);
  v8 = MEMORY[0x1EEE9AC00](v6, v7);
  v10 = &v29 - v9;
  v12 = MEMORY[0x1EEE9AC00](v8, v11);
  v14 = &v29 - v13;
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = &v29 - v16;
  v18 = *(v4 + 16);
  v18(&v29 - v16, v2, a1);
  type metadata accessor for EnvironmentBackedMetricsState();
  if (swift_dynamicCast() || (v18(v14, v2, a1), type metadata accessor for RefreshableMetricsState(), swift_dynamicCast()))
  {
  }

  else
  {
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v19 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v19, qword_1EDE57E00);
    v18(v10, v2, a1);
    v20 = sub_1DD0DD8EC();
    v21 = sub_1DD0DE6EC();
    if (os_log_type_enabled(v20, v21))
    {
      swift_slowAlloc();
      v30 = OUTLINED_FUNCTION_109();
      *v17 = 136315138;
      v22 = OUTLINED_FUNCTION_19();
      (v18)(v22);
      v23 = sub_1DD0DE02C();
      v25 = v24;
      (*(v4 + 8))(v10, a1);
      v26 = sub_1DCB10E9C(v23, v25, &v30);

      *(v17 + 4) = v26;
      OUTLINED_FUNCTION_53_6(&dword_1DCAFC000, v27, v28, "Ignoring externally provided MetricsState: %s");
      OUTLINED_FUNCTION_57();
      OUTLINED_FUNCTION_80();
    }

    else
    {

      (*(v4 + 8))(v10, a1);
    }
  }
}

void sub_1DCDD556C()
{
  v0 = sub_1DD0DAFDC();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0, v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA9BA0, &qword_1DD0E6280);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v5);
  sub_1DD0DCA6C();
}

double sub_1DCDD599C@<D0>(uint64_t a1@<X8>)
{
  os_unfair_lock_lock(v1 + 4);
  sub_1DCDD67C8(&v1[6], v16);
  os_unfair_lock_unlock(v1 + 4);
  sub_1DCDD67C8(v16, &v13);
  if (v14)
  {
    sub_1DCAFF9E8(&v13, v15);
    sub_1DD0DCA6C();
  }

  sub_1DCB16D50(&v13, &qword_1ECCA6818, &qword_1DD0F69D0);
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v4 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v4, qword_1EDE57E00);

  v5 = sub_1DD0DD8EC();
  v6 = sub_1DD0DE6EC();

  if (os_log_type_enabled(v5, v6))
  {
    swift_slowAlloc();
    v15[0] = OUTLINED_FUNCTION_109();
    *v2 = 136315138;
    v7 = OUTLINED_FUNCTION_19();
    *(v2 + 4) = sub_1DCB10E9C(v7, v8, v9);
    OUTLINED_FUNCTION_53_6(&dword_1DCAFC000, v10, v11, "Uninitialized MetricsState when getting %s, this should not happen");
    OUTLINED_FUNCTION_57();
    OUTLINED_FUNCTION_80();
  }

  sub_1DCB16D50(v16, &qword_1ECCA6818, &qword_1DD0F69D0);
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_1DCDD5D10()
{
  sub_1DCDD599C(v6);
  if (v6[3])
  {
    OUTLINED_FUNCTION_4_38(v6);
    v1 = *(v0 + 8);
    v2 = OUTLINED_FUNCTION_7_1();
    v4 = v3(v2);
    OUTLINED_FUNCTION_6_51(v4);
  }

  else
  {
    sub_1DCB16D50(v6, &qword_1ECCA6818, &qword_1DD0F69D0);
  }

  return OUTLINED_FUNCTION_33_1();
}

uint64_t sub_1DCDD5DA4()
{
  sub_1DCDD599C(v6);
  if (v6[3])
  {
    OUTLINED_FUNCTION_4_38(v6);
    v1 = *(v0 + 16);
    v2 = OUTLINED_FUNCTION_7_1();
    v4 = v3(v2);
    OUTLINED_FUNCTION_6_51(v4);
  }

  else
  {
    sub_1DCB16D50(v6, &qword_1ECCA6818, &qword_1DD0F69D0);
  }

  return OUTLINED_FUNCTION_33_1();
}

uint64_t sub_1DCDD5E48()
{
  OUTLINED_FUNCTION_7_44();
  sub_1DCDD599C(v0);
  if (v7[3])
  {
    OUTLINED_FUNCTION_4_38(v7);
    v2 = *(v1 + 24);
    v3 = OUTLINED_FUNCTION_7_1();
    v5 = v4(v3);
    OUTLINED_FUNCTION_6_51(v5);
  }

  else
  {
    sub_1DCB16D50(v7, &qword_1ECCA6818, &qword_1DD0F69D0);
  }

  return OUTLINED_FUNCTION_33_1();
}

uint64_t sub_1DCDD5EDC()
{
  OUTLINED_FUNCTION_7_44();
  sub_1DCDD599C(v0);
  v1 = v8;
  if (v8)
  {
    OUTLINED_FUNCTION_4_38(v7);
    v3 = *(v2 + 32);
    v4 = OUTLINED_FUNCTION_7_1();
    v1 = v5(v4);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
  }

  else
  {
    sub_1DCB16D50(v7, &qword_1ECCA6818, &qword_1DD0F69D0);
  }

  return v1;
}

uint64_t sub_1DCDD5F80()
{
  sub_1DCDD599C(v6);
  v0 = v7;
  if (v7)
  {
    OUTLINED_FUNCTION_4_38(v6);
    v2 = *(v1 + 40);
    v3 = OUTLINED_FUNCTION_7_1();
    v0 = v4(v3);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
  }

  else
  {
    sub_1DCB16D50(v6, &qword_1ECCA6818, &qword_1DD0F69D0);
  }

  return v0 & 1;
}

uint64_t sub_1DCDD6024()
{
  OUTLINED_FUNCTION_7_44();
  sub_1DCDD599C(v0);
  if (v7[3])
  {
    OUTLINED_FUNCTION_4_38(v7);
    v2 = *(v1 + 48);
    v3 = OUTLINED_FUNCTION_7_1();
    v5 = v4(v3);
    OUTLINED_FUNCTION_6_51(v5);
  }

  else
  {
    sub_1DCB16D50(v7, &qword_1ECCA6818, &qword_1DD0F69D0);
  }

  return OUTLINED_FUNCTION_33_1();
}

uint64_t sub_1DCDD60B8()
{
  os_unfair_lock_lock(v0 + 4);
  sub_1DCDD6100(&v0[6], &v2);
  os_unfair_lock_unlock(v0 + 4);
  return v2;
}

uint64_t sub_1DCDD6100@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1DCDD67C8(a1, &v33);
  if (v34)
  {
    sub_1DCAFF9E8(&v33, v35);
    *&v33 = 0;
    *(&v33 + 1) = 0xE000000000000000;
    sub_1DD0DEC1C();
    MEMORY[0x1E12A6780](0xD000000000000015, 0x80000001DD11DD30);
    v3 = v36;
    v4 = v37;
    __swift_project_boxed_opaque_existential_1(v35, v36);
    v5 = (*(v4 + 8))(v3, v4);
    if (v6)
    {
      v7 = v6;
    }

    else
    {
      v5 = 7104878;
      v7 = 0xE300000000000000;
    }

    MEMORY[0x1E12A6780](v5, v7);

    MEMORY[0x1E12A6780](0xD000000000000011, 0x80000001DD11DD50);
    v8 = v36;
    v9 = v37;
    __swift_project_boxed_opaque_existential_1(v35, v36);
    v10 = (*(v9 + 16))(v8, v9);
    if (v11)
    {
      v12 = v11;
    }

    else
    {
      v10 = 7104878;
      v12 = 0xE300000000000000;
    }

    MEMORY[0x1E12A6780](v10, v12);

    MEMORY[0x1E12A6780](0xD000000000000015, 0x80000001DD11DD70);
    v13 = v36;
    v14 = v37;
    __swift_project_boxed_opaque_existential_1(v35, v36);
    v15 = (*(v14 + 24))(v13, v14);
    if (v16)
    {
      v17 = v16;
    }

    else
    {
      v15 = 7104878;
      v17 = 0xE300000000000000;
    }

    MEMORY[0x1E12A6780](v15, v17);

    MEMORY[0x1E12A6780](0xD000000000000015, 0x80000001DD11DD90);
    v18 = v36;
    v19 = v37;
    __swift_project_boxed_opaque_existential_1(v35, v36);
    (*(v19 + 32))(v18, v19);
    sub_1DD0DE56C();
    MEMORY[0x1E12A6780](0xD000000000000016, 0x80000001DD11DDB0);
    v20 = v36;
    v21 = v37;
    __swift_project_boxed_opaque_existential_1(v35, v36);
    v22 = (*(v21 + 48))(v20, v21);
    if (v23)
    {
      v24 = v23;
    }

    else
    {
      v22 = 7104878;
      v24 = 0xE300000000000000;
    }

    MEMORY[0x1E12A6780](v22, v24);

    MEMORY[0x1E12A6780](0xD000000000000010, 0x80000001DD11DDD0);
    v25 = v36;
    v26 = v37;
    __swift_project_boxed_opaque_existential_1(v35, v36);
    v27 = (*(v26 + 40))(v25, v26);
    v28 = (v27 & 1) == 0;
    if (v27)
    {
      v29 = 1702195828;
    }

    else
    {
      v29 = 0x65736C6166;
    }

    if (v28)
    {
      v30 = 0xE500000000000000;
    }

    else
    {
      v30 = 0xE400000000000000;
    }

    MEMORY[0x1E12A6780](v29, v30);

    v31 = *(&v33 + 1);
    *a2 = v33;
    result = __swift_destroy_boxed_opaque_existential_1Tm(v35);
  }

  else
  {
    result = sub_1DCB16D50(&v33, &qword_1ECCA6818, &qword_1DD0F69D0);
    v31 = 0x80000001DD11DD10;
    *a2 = 0xD00000000000001CLL;
  }

  a2[1] = v31;
  return result;
}

uint64_t sub_1DCDD6494()
{
  sub_1DCB16D50(v0 + 24, &qword_1ECCA6818, &qword_1DD0F69D0);

  return swift_deallocClassInstance();
}

_BYTE *storeEnumTagSinglePayload for Metrics(_BYTE *result, int a2, int a3)
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

unint64_t sub_1DCDD6770()
{
  result = qword_1EDE4B0C0;
  if (!qword_1EDE4B0C0)
  {
    type metadata accessor for FlowTaskProvider();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE4B0C0);
  }

  return result;
}

uint64_t sub_1DCDD67C8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA6818, &qword_1DD0F69D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DCDD6884(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[13] = a2;
  v3[14] = a3;
  v3[12] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCDD6B24()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v6 = *(v5 + 152);
  v7 = *v1;
  OUTLINED_FUNCTION_27();
  *v8 = v7;
  v3[20] = v0;

  if (!v0)
  {
    v9 = v3[17];
    v10 = v3[18];
    v11 = v3[16];
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_1DCDD6C38()
{
  OUTLINED_FUNCTION_42();
  v1 = v0[15];

  v2 = v0[11];
  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_1DCDD6C9C()
{
  OUTLINED_FUNCTION_39();
  v1 = v0[17];
  v2 = v0[18];
  v4 = v0[15];
  v3 = v0[16];

  v5 = v0[20];
  OUTLINED_FUNCTION_29();

  return v6();
}

uint64_t sub_1DCDD6D1C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v5 = *(v4 + 168);
  v6 = *v1;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  *(v8 + 176) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DCDD6E1C()
{
  v1 = *(v0 + 176);
  OUTLINED_FUNCTION_29();
  return v2();
}

uint64_t sub_1DCDD6E40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[13] = a2;
  v3[14] = a3;
  v3[12] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCDD70E0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v6 = *(v5 + 152);
  v7 = *v1;
  OUTLINED_FUNCTION_27();
  *v8 = v7;
  v3[20] = v0;

  if (!v0)
  {
    v9 = v3[17];
    v10 = v3[18];
    v11 = v3[16];
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_1DCDD71F4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v5 = *(v4 + 168);
  v6 = *v1;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  *(v8 + 176) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DCDD72EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[13] = a2;
  v3[14] = a3;
  v3[12] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCDD7580(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[14] = a4;
  v5[15] = a5;
  v5[12] = a2;
  v5[13] = a3;
  v5[11] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DCDD75A8, 0, 0);
}

uint64_t sub_1DCDD787C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v6 = *(v5 + 160);
  v7 = *v1;
  OUTLINED_FUNCTION_27();
  *v8 = v7;
  v3[21] = v0;

  if (!v0)
  {
    v9 = v3[18];
    v10 = v3[19];
    v11 = v3[17];
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_1DCDD7990()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 128);

  OUTLINED_FUNCTION_29();

  return v2();
}

uint64_t sub_1DCDD79EC()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = *(v1 + 176);
  v3 = *v0;
  OUTLINED_FUNCTION_27();
  *v4 = v3;

  OUTLINED_FUNCTION_29();

  return v5();
}

uint64_t sub_1DCDD7ACC()
{
  OUTLINED_FUNCTION_39();
  v1 = v0[18];
  v2 = v0[19];
  v4 = v0[16];
  v3 = v0[17];

  v5 = v0[21];
  OUTLINED_FUNCTION_29();

  return v6();
}

void sub_1DCDD7B4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  sub_1DD0DCC3C();
}

uint64_t sub_1DCDD7C10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_90();
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v16 = OUTLINED_FUNCTION_42_19();
  __swift_project_value_buffer(v16, qword_1EDE57E00);
  v17 = OUTLINED_FUNCTION_17_26();
  v18(v17);
  v19 = sub_1DD0DD8EC();
  v20 = sub_1DD0DE6DC();
  OUTLINED_FUNCTION_51_14(v20);
  OUTLINED_FUNCTION_84_6();
  if (v21)
  {
    OUTLINED_FUNCTION_151();
    OUTLINED_FUNCTION_52_0();
    OUTLINED_FUNCTION_88_6();
    *v15 = 136315138;
    sub_1DD0DCC1C();
  }

  v22 = OUTLINED_FUNCTION_14_40();
  v23(v22);
  OUTLINED_FUNCTION_3_76();
  v38 = v24;
  v26 = *(v25 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v14 + 72) = v27;
  *v27 = v28;
  OUTLINED_FUNCTION_34_23(v27);
  OUTLINED_FUNCTION_76();

  return v30(v29, v30, v31, v32, v33, v34, v35, v36, a9, v38, a11, a12, a13, a14);
}

uint64_t sub_1DCDD7D9C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v5 = *(v4 + 72);
  v6 = *v1;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  *(v8 + 80) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DCDD7E94()
{
  OUTLINED_FUNCTION_42();
  v1 = v0[8];
  v2 = v0[2];

  v3 = v0[1];

  return v3(v2);
}

void sub_1DCDD7EFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  sub_1DD0DCC3C();
}

uint64_t sub_1DCDD7FC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_90();
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v16 = OUTLINED_FUNCTION_42_19();
  __swift_project_value_buffer(v16, qword_1EDE57E00);
  v17 = OUTLINED_FUNCTION_17_26();
  v18(v17);
  v19 = sub_1DD0DD8EC();
  v20 = sub_1DD0DE6DC();
  OUTLINED_FUNCTION_51_14(v20);
  OUTLINED_FUNCTION_84_6();
  if (v21)
  {
    OUTLINED_FUNCTION_151();
    OUTLINED_FUNCTION_52_0();
    OUTLINED_FUNCTION_88_6();
    *v15 = 136315138;
    sub_1DD0DCC1C();
  }

  v22 = OUTLINED_FUNCTION_14_40();
  v23(v22);
  OUTLINED_FUNCTION_3_76();
  v38 = v24;
  v26 = *(v25 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v14 + 72) = v27;
  *v27 = v28;
  OUTLINED_FUNCTION_34_23(v27);
  OUTLINED_FUNCTION_76();

  return v30(v29, v30, v31, v32, v33, v34, v35, v36, a9, v38, a11, a12, a13, a14);
}

uint64_t sub_1DCDD814C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v5 = *(v4 + 72);
  v6 = *v1;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  *(v8 + 80) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

void sub_1DCDD8244(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  sub_1DD0DCC3C();
}

uint64_t sub_1DCDD8308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_90();
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v16 = OUTLINED_FUNCTION_42_19();
  __swift_project_value_buffer(v16, qword_1EDE57E00);
  v17 = OUTLINED_FUNCTION_17_26();
  v18(v17);
  v19 = sub_1DD0DD8EC();
  v20 = sub_1DD0DE6DC();
  OUTLINED_FUNCTION_51_14(v20);
  OUTLINED_FUNCTION_84_6();
  if (v21)
  {
    OUTLINED_FUNCTION_151();
    OUTLINED_FUNCTION_52_0();
    OUTLINED_FUNCTION_88_6();
    *v15 = 136315138;
    sub_1DD0DCC1C();
  }

  v22 = OUTLINED_FUNCTION_14_40();
  v23(v22);
  OUTLINED_FUNCTION_3_76();
  v40 = v24;
  v26 = *(v25 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  v14[9] = v27;
  *v27 = v28;
  v27[1] = sub_1DCDD84A4;
  v29 = v14[5];
  v30 = v14[2];
  OUTLINED_FUNCTION_76();

  return v32(v31, v32, v33, v34, v35, v36, v37, v38, a9, v40, a11, a12, a13, a14);
}

uint64_t sub_1DCDD84A4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = *(v1 + 72);
  v3 = *(v1 + 64);
  v4 = *v0;
  OUTLINED_FUNCTION_27();
  *v5 = v4;

  OUTLINED_FUNCTION_29();

  return v6();
}

void sub_1DCDD8874()
{
  OUTLINED_FUNCTION_74_0();
  swift_allocObject();
  v0 = OUTLINED_FUNCTION_78_0();
  sub_1DCDD8904(v0, v1, v2, v3);
}

void sub_1DCDD88BC()
{
  OUTLINED_FUNCTION_74_0();
  swift_allocObject();
  v0 = OUTLINED_FUNCTION_78_0();
  sub_1DCDDA110(v0, v1, v2, v3);
}

void sub_1DCDD8904(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[17] = a4;
  v10[14] = a2;
  v10[15] = a1;
  v10[12] = *v4;
  OUTLINED_FUNCTION_0_1();
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10[4] = v10 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DD0DCC3C();
}

uint64_t sub_1DCDD8CE4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 56) = a6;
  *(v8 + 64) = a7;
  *(v8 + 40) = a4;
  *(v8 + 48) = a5;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;
  v9 = *a1;
  *(v8 + 72) = a8;
  *(v8 + 80) = v9;
  *(v8 + 120) = *(a1 + 8);
  *(v8 + 121) = *(a1 + 9);
  *(v8 + 88) = a1[2];
  *(v8 + 122) = *(a1 + 24);
  *(v8 + 123) = *(a1 + 25);
  *(v8 + 124) = *(a1 + 26);
  return MEMORY[0x1EEE6DFA0](sub_1DCDD8D44, 0, 0);
}

uint64_t sub_1DCDD8D44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, char a12)
{
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_90();
  v14 = OUTLINED_FUNCTION_55_12();
  *(v13 + 96) = v14;
  v15 = *(v13 + 64);
  *(v14 + 16) = *(v13 + 48);
  *(v14 + 32) = v15;
  v16 = OUTLINED_FUNCTION_27_22(v14);
  *(v16 + 82) = a12;
  *(v16 + 88) = v12;
  v17 = swift_task_alloc();
  OUTLINED_FUNCTION_82_3(v17);
  type metadata accessor for AnyValueFlow();
  *v12 = v13;
  v12[1] = sub_1DCDD8E20;
  v18 = *(v13 + 32);
  OUTLINED_FUNCTION_87_6();
  OUTLINED_FUNCTION_76();

  return sub_1DCDD7580(v19, v20, v21, v22, v23);
}

uint64_t sub_1DCDD8E20()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v6 = *(v5 + 104);
  v7 = *v1;
  OUTLINED_FUNCTION_27();
  *v8 = v7;
  *(v3 + 112) = v0;

  if (!v0)
  {
    v9 = *(v3 + 96);
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1DCDD8F20(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4, uint64_t a5, int a6, uint64_t a7)
{
  *(v7 + 48) = a1;
  *(v7 + 16) = a3;
  *(v7 + 24) = a4;
  *(v7 + 32) = a5;
  *(v7 + 40) = a6;
  *(v7 + 42) = BYTE2(a6);
  v9 = *(v17 + 8);
  v10 = *(v9 + 24);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v7 + 56) = v12;
  *v12 = v7;
  v12[1] = sub_1DCDD9078;

  return v14(v7 + 16, a7, v16, v9);
}

uint64_t sub_1DCDD9078()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_44();
  v4 = v3;
  OUTLINED_FUNCTION_12_0();
  *v5 = v4;
  v7 = *(v6 + 56);
  v8 = *v2;
  OUTLINED_FUNCTION_27();
  *v9 = v8;
  *(v4 + 64) = v0;

  if (!v0)
  {
    *(v4 + 72) = v1;
  }

  OUTLINED_FUNCTION_101();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1DCDD917C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 56) = a6;
  *(v8 + 64) = a7;
  *(v8 + 40) = a4;
  *(v8 + 48) = a5;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;
  v9 = *a1;
  *(v8 + 72) = a8;
  *(v8 + 80) = v9;
  *(v8 + 120) = *(a1 + 8);
  *(v8 + 121) = *(a1 + 9);
  *(v8 + 88) = a1[2];
  *(v8 + 122) = *(a1 + 24);
  *(v8 + 123) = *(a1 + 25);
  *(v8 + 124) = *(a1 + 26);
  return MEMORY[0x1EEE6DFA0](sub_1DCDD91DC, 0, 0);
}

uint64_t sub_1DCDD91DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, char a12)
{
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_90();
  v14 = OUTLINED_FUNCTION_55_12();
  *(v13 + 96) = v14;
  v15 = *(v13 + 64);
  *(v14 + 16) = *(v13 + 48);
  *(v14 + 32) = v15;
  v16 = OUTLINED_FUNCTION_27_22(v14);
  *(v16 + 82) = a12;
  *(v16 + 88) = v12;
  v17 = swift_task_alloc();
  OUTLINED_FUNCTION_82_3(v17);
  type metadata accessor for AnyValueFlow();
  *v12 = v13;
  v12[1] = sub_1DCDD92B8;
  v18 = *(v13 + 32);
  OUTLINED_FUNCTION_87_6();
  OUTLINED_FUNCTION_76();

  return sub_1DCDD7580(v19, v20, v21, v22, v23);
}

uint64_t sub_1DCDD92B8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v6 = *(v5 + 104);
  v7 = *v1;
  OUTLINED_FUNCTION_27();
  *v8 = v7;
  *(v3 + 112) = v0;

  if (!v0)
  {
    v9 = *(v3 + 96);
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1DCDD93C0()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 96);

  OUTLINED_FUNCTION_29();
  v3 = *(v0 + 112);

  return v2();
}

uint64_t sub_1DCDD941C(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4, uint64_t a5, int a6, uint64_t a7)
{
  *(v7 + 16) = a3;
  *(v7 + 48) = a1;
  *(v7 + 24) = a4;
  *(v7 + 32) = a5;
  *(v7 + 40) = a6;
  *(v7 + 42) = BYTE2(a6);
  v9 = *(v15 + 16);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v7 + 56) = v11;
  *v11 = v7;
  v11[1] = sub_1DCDD9078;

  return v13(v7 + 16, a7);
}

uint64_t sub_1DCDD9570(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 48) = a6;
  *(v7 + 56) = a7;
  *(v7 + 32) = a4;
  *(v7 + 40) = a5;
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  v8 = *a1;
  *(v7 + 104) = *(a1 + 8);
  *(v7 + 105) = *(a1 + 9);
  v9 = a1[2];
  *(v7 + 64) = v8;
  *(v7 + 72) = v9;
  *(v7 + 106) = *(a1 + 24);
  *(v7 + 107) = *(a1 + 25);
  *(v7 + 108) = *(a1 + 26);
  return MEMORY[0x1EEE6DFA0](sub_1DCDD95CC, 0, 0);
}

uint64_t sub_1DCDD95CC()
{
  OUTLINED_FUNCTION_230();
  OUTLINED_FUNCTION_125();
  v1 = *(v0 + 108);
  v2 = *(v0 + 107);
  v3 = *(v0 + 106);
  v4 = *(v0 + 105);
  v5 = *(v0 + 104);
  v7 = *(v0 + 64);
  v6 = *(v0 + 72);
  v8 = *(v0 + 24);
  v9 = swift_task_alloc();
  *(v0 + 80) = v9;
  v10 = *(v0 + 48);
  *(v9 + 16) = *(v0 + 32);
  *(v9 + 32) = v10;
  *(OUTLINED_FUNCTION_27_22(v9) + 82) = v1;
  v11 = swift_task_alloc();
  *(v0 + 88) = v11;
  *v11 = v0;
  v11[1] = sub_1DCDD96AC;
  OUTLINED_FUNCTION_61(*(v0 + 16));
  OUTLINED_FUNCTION_117();

  return sub_1DCDD6884(v12, v13, v14);
}

uint64_t sub_1DCDD96AC()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_44();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v6 = *(v5 + 88);
  v7 = *v1;
  OUTLINED_FUNCTION_27();
  *v8 = v7;
  *(v3 + 96) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_101();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 80);

    v13 = OUTLINED_FUNCTION_45_12();

    return v14(v13);
  }
}

uint64_t sub_1DCDD97D4(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4, uint64_t a5, int a6)
{
  *(v6 + 16) = a3;
  *(v6 + 48) = a1;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5;
  *(v6 + 40) = a6;
  *(v6 + 42) = BYTE2(a6);
  v7 = *(v13 + 24);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v6 + 56) = v9;
  *v9 = v6;
  v9[1] = sub_1DCDD9078;

  return v11(v6 + 16);
}

uint64_t sub_1DCDD9940()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_7_4();
  v1 = *(v0 + 24);
  OUTLINED_FUNCTION_1_9(*(v0 + 16));
  v3 = *(v2 + 4);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_86_0(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_21_24(v5);

  return v8(v7);
}

uint64_t sub_1DCDD99F4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v5 = *(v4 + 80);
  v6 = *v1;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  *(v8 + 88) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v12 = OUTLINED_FUNCTION_130();

    return v13(v12);
  }
}

uint64_t sub_1DCDD9B2C()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_7_4();
  v1 = *(v0 + 40);
  OUTLINED_FUNCTION_1_9(*(v0 + 32));
  v3 = *(v2 + 4);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_86_0(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_21_24(v5);

  return v8(v7);
}

uint64_t sub_1DCDD9BE0(uint64_t *a1)
{
  v3 = *a1;
  *(v2 + 48) = v1;
  *(v2 + 56) = v3;
  *(v2 + 43) = *(a1 + 8);
  *(v2 + 44) = *(a1 + 9);
  *(v2 + 64) = a1[2];
  *(v2 + 45) = *(a1 + 24);
  *(v2 + 46) = *(a1 + 25);
  *(v2 + 47) = *(a1 + 26);
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCDD9C28()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 47);
  v2 = *(v0 + 46);
  v3 = *(v0 + 45);
  v4 = *(v0 + 64);
  v5 = *(v0 + 44);
  v6 = *(v0 + 43);
  v7 = *(v0 + 48);
  v8 = *(v7 + 48);
  v9 = *(v7 + 56);
  *(v0 + 16) = *(v0 + 56);
  *(v0 + 24) = v6;
  *(v0 + 25) = v5;
  *(v0 + 32) = v4;
  *(v0 + 40) = v3;
  *(v0 + 41) = v2;
  *(v0 + 42) = v1;
  v13 = (v8 + *v8);
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v0 + 72) = v11;
  *v11 = v0;
  v11[1] = sub_1DCDD9D50;

  return v13(v0 + 16);
}

uint64_t sub_1DCDD9D50()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v5 = *(v4 + 72);
  v6 = *v1;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  *(v8 + 80) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v12 = OUTLINED_FUNCTION_130();

    return v13(v12);
  }
}

void *sub_1DCDD9E64()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  return v0;
}

uint64_t sub_1DCDD9E94()
{
  sub_1DCDD9E64();

  return swift_deallocClassInstance();
}

uint64_t sub_1DCDD9F28(uint64_t *a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DCDDC1B0;

  return sub_1DCDD9B08(a1, a2);
}

uint64_t sub_1DCDD9FD0(uint64_t *a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DCDDC1B0;

  return sub_1DCDD9BE0(a1);
}

uint64_t sub_1DCDDA068(uint64_t *a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DCDDC1B0;

  return sub_1DCDD991C(a1, a2);
}

void sub_1DCDDA110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[10] = a4;
  v10[6] = a2;
  v10[7] = a1;
  v10[8] = *v4;
  OUTLINED_FUNCTION_0_1();
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10[5] = v9;
  v10[2] = v10 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DD0DCC3C();
}

uint64_t sub_1DCDDA400(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 48) = a6;
  *(v7 + 56) = a7;
  *(v7 + 32) = a4;
  *(v7 + 40) = a5;
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  v8 = *a1;
  *(v7 + 104) = *(a1 + 8);
  *(v7 + 105) = *(a1 + 9);
  v9 = a1[2];
  *(v7 + 64) = v8;
  *(v7 + 72) = v9;
  *(v7 + 106) = *(a1 + 24);
  *(v7 + 107) = *(a1 + 25);
  *(v7 + 108) = *(a1 + 26);
  return MEMORY[0x1EEE6DFA0](sub_1DCDDA45C, 0, 0);
}

uint64_t sub_1DCDDA508(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4, uint64_t a5, int a6, uint64_t a7)
{
  *(v7 + 48) = a1;
  *(v7 + 16) = a3;
  *(v7 + 24) = a4;
  *(v7 + 32) = a5;
  *(v7 + 40) = a6;
  *(v7 + 42) = BYTE2(a6);
  v9 = *(v17 + 8);
  v10 = *(v9 + 24);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v7 + 56) = v12;
  *v12 = v7;
  v12[1] = sub_1DCDD9078;

  return v14(v7 + 16, a7, v16, v9);
}

uint64_t sub_1DCDDA660(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 48) = a6;
  *(v7 + 56) = a7;
  *(v7 + 32) = a4;
  *(v7 + 40) = a5;
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  v8 = *a1;
  *(v7 + 104) = *(a1 + 8);
  *(v7 + 105) = *(a1 + 9);
  v9 = a1[2];
  *(v7 + 64) = v8;
  *(v7 + 72) = v9;
  *(v7 + 106) = *(a1 + 24);
  *(v7 + 107) = *(a1 + 25);
  *(v7 + 108) = *(a1 + 26);
  return MEMORY[0x1EEE6DFA0](sub_1DCDDA6BC, 0, 0);
}

uint64_t sub_1DCDDA768()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_44();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v6 = *(v5 + 88);
  v7 = *v1;
  OUTLINED_FUNCTION_27();
  *v8 = v7;
  *(v3 + 96) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_101();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 80);

    v13 = OUTLINED_FUNCTION_45_12();

    return v14(v13);
  }
}

uint64_t sub_1DCDDA890(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4, uint64_t a5, int a6, uint64_t a7)
{
  *(v7 + 16) = a3;
  *(v7 + 48) = a1;
  *(v7 + 24) = a4;
  *(v7 + 32) = a5;
  *(v7 + 40) = a6;
  *(v7 + 42) = BYTE2(a6);
  v9 = *(v15 + 16);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v7 + 56) = v11;
  *v11 = v7;
  v11[1] = sub_1DCDDA9E4;

  return v13(v7 + 16, a7);
}

uint64_t sub_1DCDDA9E4()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_44();
  v4 = v3;
  OUTLINED_FUNCTION_12_0();
  *v5 = v4;
  v7 = *(v6 + 56);
  v8 = *v2;
  OUTLINED_FUNCTION_27();
  *v9 = v8;
  *(v4 + 64) = v0;

  if (!v0)
  {
    *(v4 + 72) = v1;
  }

  OUTLINED_FUNCTION_101();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1DCDDAAE8()
{
  **(v0 + 48) = *(v0 + 72);
  OUTLINED_FUNCTION_29();
  return v1();
}

uint64_t sub_1DCDDAB3C()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_7_4();
  v1 = *(v0 + 24);
  OUTLINED_FUNCTION_1_9(*(v0 + 16));
  v3 = *(v2 + 4);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_86_0(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_21_24(v5);

  return v8(v7);
}

uint64_t sub_1DCDDABF0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v5 = *(v4 + 80);
  v6 = *v1;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  *(v8 + 88) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v12 = OUTLINED_FUNCTION_130();

    return v13(v12);
  }
}

uint64_t sub_1DCDDAD04()
{
  OUTLINED_FUNCTION_29();
  v1 = *(v0 + 88);
  return v2();
}

uint64_t sub_1DCDDAD28()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return v0;
}

uint64_t sub_1DCDDAD50()
{
  sub_1DCDDAD28();

  return swift_deallocClassInstance();
}

uint64_t sub_1DCDDAD9C(uint64_t *a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DCDDC1B0;

  return sub_1DCDD9B08(a1, a2);
}

uint64_t sub_1DCDDAE44(uint64_t *a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DCDDAEEC;

  return sub_1DCDDAB18(a1, a2);
}

uint64_t sub_1DCDDAEEC()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_19_0();
  v4 = *(v3 + 16);
  v5 = *v2;
  OUTLINED_FUNCTION_27();
  *v6 = v5;

  v8 = *(v5 + 8);
  if (!v1)
  {
    v7 = v0;
  }

  return v8(v7);
}

uint64_t sub_1DCDDAFD8(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1DCDDB014(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void sub_1DCDDB050()
{
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_51_17();
  v1 = *(v0 + 32);
  sub_1DD0DCC3C();
}

void sub_1DCDDB174()
{
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_51_17();
  v1 = *(v0 + 32);
  sub_1DD0DCC3C();
}

uint64_t sub_1DCDDB298()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_19_0();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_27();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_130();

  return v6(v5);
}

void sub_1DCDDB428(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_1DCDDB4D8;

  sub_1DCDD7B4C(a2, a3, a4);
}

uint64_t sub_1DCDDB4D8()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_19_0();
  v4 = v3;
  OUTLINED_FUNCTION_12_0();
  *v5 = v4;
  v7 = *(v6 + 24);
  v8 = *v2;
  OUTLINED_FUNCTION_27();
  *v9 = v8;

  if (!v1)
  {
    **(v4 + 16) = v0;
  }

  v10 = *(v8 + 8);

  return v10();
}

void sub_1DCDDB5CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_1DCDDC194;

  sub_1DCDD7EFC(a2, a3, a4);
}

void sub_1DCDDB67C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_1DCDDC194;

  sub_1DCDD7EFC(a2, a3, a4);
}

uint64_t sub_1DCDDB72C()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_71_7();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_22_24(v1);

  return v4(v3);
}

uint64_t sub_1DCDDB7C4()
{
  result = qword_1ECCA6938;
  if (!qword_1ECCA6938)
  {
    sub_1DD0DD50C();
  }

  return result;
}

void sub_1DCDDB81C()
{
  OUTLINED_FUNCTION_33();
  v2 = v1;
  v3 = v0[2];
  v4 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_11_0(v7);
  *v8 = v9;
  v8[1] = sub_1DCB4AE1C;

  sub_1DCDD8244(v2, v4, v6, v5);
}

uint64_t sub_1DCDDB980()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_71_7();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_22_24(v1);

  return v4(v3);
}

void sub_1DCDDBA18()
{
  OUTLINED_FUNCTION_230();
  OUTLINED_FUNCTION_125();
  OUTLINED_FUNCTION_51_17();
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  sub_1DD0DCC3C();
}

void sub_1DCDDBB38()
{
  OUTLINED_FUNCTION_230();
  OUTLINED_FUNCTION_125();
  OUTLINED_FUNCTION_51_17();
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  sub_1DD0DCC3C();
}

void sub_1DCDDBD40()
{
  OUTLINED_FUNCTION_41();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  sub_1DD0DCC3C();
}

uint64_t sub_1DCDDBE7C()
{
  OUTLINED_FUNCTION_92_5();
  OUTLINED_FUNCTION_51_4();
  v20 = *(v0 + 16);
  v19 = *(v0 + 24);
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  v5 = *(v0 + 64);
  v6 = *(v0 + 72);
  v7 = *(v0 + 80);
  *(v0 + 65);
  *(v0 + 82);
  *(v0 + 81);
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_11_0(v8);
  *v9 = v10;
  v9[1] = sub_1DCB4AE1C;
  OUTLINED_FUNCTION_73();

  return sub_1DCDD97D4(v11, v12, v13, v14, v15, v16);
}

uint64_t sub_1DCDDBF7C()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_71_7();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_22_24(v1);

  return v4(v3);
}

uint64_t sub_1DCDDC014()
{
  OUTLINED_FUNCTION_51_4();
  OUTLINED_FUNCTION_37_22();
  v1 = *(v0 + 88);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_11_0(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_40_18(v3, v5, v6, v7, v8, v9, v10, v11, v21, v22, v23);
  OUTLINED_FUNCTION_73();

  return sub_1DCDD941C(v12, v13, v14, v15, v16, v17, v18);
}

uint64_t sub_1DCDDC0D0()
{
  OUTLINED_FUNCTION_51_4();
  OUTLINED_FUNCTION_37_22();
  v1 = *(v0 + 88);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_11_0(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_40_18(v3, v5, v6, v7, v8, v9, v10, v11, v21, v22, v23);
  OUTLINED_FUNCTION_73();

  return sub_1DCDD8F20(v12, v13, v14, v15, v16, v17, v18);
}

uint64_t OUTLINED_FUNCTION_81_6(uint64_t a1)
{
  *(v1 + 136) = a1;

  return swift_task_alloc();
}

uint64_t sub_1DCDDC1D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 32))(a5, a1);
  v8 = type metadata accessor for ModifiedPlan();
  v9 = *(*(a4 - 8) + 32);
  v10 = a5 + *(v8 + 44);

  return v9(v10, a2, a4);
}

uint64_t ModifiedPlan.body.getter(uint64_t a1)
{
  v2 = *(a1 + 24);
  v1 = *(a1 + 32);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();

  return nullsub_1(AssociatedTypeWitness);
}

uint64_t static ModifiedPlan._buildEventPublisher(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v10);
  v12 = v18 - v11;
  v13 = a1 + *(type metadata accessor for ModifiedPlan() + 44);
  (*(a4 + 40))(a1, a3, a4);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v15 = (*(AssociatedConformanceWitness + 48))(v12, AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(v8 + 8))(v12, AssociatedTypeWitness);
  v18[1] = v15;
  swift_getAssociatedTypeWitness();
  type metadata accessor for _FlowPlanEvent();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  sub_1DD0DDAEC();
  swift_getWitnessTable();
  v16 = sub_1DD0DDBFC();

  return v16;
}

uint64_t sub_1DCDDC5A4(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1DCDDC5E0()
{
  swift_getWitnessTable();

  return ReactiveFlowPlan.description.getter();
}

uint64_t sub_1DCDDC634(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v7 = *(result - 8) + 64;
    v5 = *(a1 + 24);
    result = swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      v8 = *(result - 8) + 64;
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

void *sub_1DCDDC704(void *a1, void *a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = v8;
  v10 = *(v5 + 64) + v8;
  v11 = *(v5 + 80) | v8;
  v12 = v11;
  v13 = v11 & 0x100000;
  if (v12 > 7 || v13 != 0 || (v10 & ~v9) + *(v7 + 64) > 0x18)
  {
    *a1 = *a2;
    sub_1DD0DCF8C();
  }

  v16 = ~v9;
  (*(v5 + 16))(a1, a2);
  (*(v7 + 16))((a1 + v10) & v16, (a2 + v10) & v16, v6);
  return a1;
}

uint64_t sub_1DCDDC860(uint64_t a1, uint64_t a2)
{
  v4 = *(*(a2 + 16) - 8) + 8;
  (*v4)();
  v5 = *(*(a2 + 24) - 8);
  v6 = *(v5 + 8);
  v7 = (*(v4 + 56) + a1 + *(v5 + 80)) & ~*(v5 + 80);

  return v6(v7);
}

uint64_t sub_1DCDDC904(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 16;
  (*v6)();
  v7 = *(*(a3 + 24) - 8);
  (*(v7 + 16))((*(v6 + 48) + *(v7 + 80) + a1) & ~*(v7 + 80), (*(v6 + 48) + *(v7 + 80) + a2) & ~*(v7 + 80));
  return a1;
}

uint64_t sub_1DCDDC9AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 24;
  (*v6)();
  v7 = *(*(a3 + 24) - 8);
  (*(v7 + 24))((*(v6 + 40) + *(v7 + 80) + a1) & ~*(v7 + 80), (*(v6 + 40) + *(v7 + 80) + a2) & ~*(v7 + 80));
  return a1;
}

uint64_t sub_1DCDDCA54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 32;
  (*v6)();
  v7 = *(*(a3 + 24) - 8);
  (*(v7 + 32))((*(v6 + 32) + *(v7 + 80) + a1) & ~*(v7 + 80), (*(v6 + 32) + *(v7 + 80) + a2) & ~*(v7 + 80));
  return a1;
}

uint64_t sub_1DCDDCAFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 40;
  (*v6)();
  v7 = *(*(a3 + 24) - 8);
  (*(v7 + 40))((*(v6 + 24) + *(v7 + 80) + a1) & ~*(v7 + 80), (*(v6 + 24) + *(v7 + 80) + a2) & ~*(v7 + 80));
  return a1;
}

uint64_t sub_1DCDDCBA4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(*(v5 - 8) + 84);
  v7 = *(a3 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(v8 + 80);
  if (v9 <= v6)
  {
    v11 = *(*(v5 - 8) + 84);
  }

  else
  {
    v11 = *(v8 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v12 = *(*(v5 - 8) + 64) + v10;
  v13 = a2 - v11;
  if (a2 <= v11)
  {
LABEL_25:
    if (v6 < v9)
    {
      a1 = ((a1 + v12) & ~v10);
      v6 = *(v8 + 84);
      v5 = v7;
    }

    return __swift_getEnumTagSinglePayload(a1, v6, v5);
  }

  v14 = (v12 & ~v10) + *(*(v7 - 8) + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v17 = ((v13 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v17))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (v17 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (v17 < 2)
    {
LABEL_24:
      if (v11)
      {
        goto LABEL_25;
      }

      return 0;
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_24;
  }

LABEL_14:
  v18 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v18 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v19 = v14;
    }

    else
    {
      v19 = 4;
    }

    switch(v19)
    {
      case 2:
        v20 = *a1;
        break;
      case 3:
        v20 = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        v20 = *a1;
        break;
      default:
        v20 = *a1;
        break;
    }
  }

  else
  {
    v20 = 0;
  }

  return v11 + (v20 | v18) + 1;
}

void sub_1DCDDCD6C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = a1;
  v7 = *(a4 + 16);
  v8 = *(a4 + 24);
  v9 = *(*(v7 - 8) + 84);
  v10 = *(v8 - 8);
  v11 = *(v10 + 84);
  if (v11 <= v9)
  {
    v12 = *(*(v7 - 8) + 84);
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(v10 + 80);
  v14 = *(*(v7 - 8) + 64) + v13;
  v15 = (v14 & ~v13) + *(*(v8 - 8) + 64);
  v16 = 8 * v15;
  v17 = a3 >= v12;
  v18 = a3 - v12;
  if (v18 != 0 && v17)
  {
    if (v15 <= 3)
    {
      v22 = ((v18 + ~(-1 << v16)) >> v16) + 1;
      if (HIWORD(v22))
      {
        v19 = 4;
      }

      else
      {
        if (v22 < 0x100)
        {
          v23 = 1;
        }

        else
        {
          v23 = 2;
        }

        if (v22 >= 2)
        {
          v19 = v23;
        }

        else
        {
          v19 = 0;
        }
      }
    }

    else
    {
      v19 = 1;
    }
  }

  else
  {
    v19 = 0;
  }

  if (v12 >= a2)
  {
    switch(v19)
    {
      case 1:
        a1[v15] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 2:
        *&a1[v15] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 3:
LABEL_42:
        __break(1u);
        break;
      case 4:
        *&a1[v15] = 0;
        goto LABEL_26;
      default:
LABEL_26:
        if (a2)
        {
LABEL_27:
          if (v9 < v11)
          {
            a1 = (&a1[v14] & ~v13);
            v9 = v11;
            v7 = v8;
          }

          __swift_storeEnumTagSinglePayload(a1, a2, v9, v7);
        }

        break;
    }
  }

  else
  {
    v20 = ~v12 + a2;
    if (v15 < 4)
    {
      v21 = (v20 >> v16) + 1;
      if (v15)
      {
        v24 = v20 & ~(-1 << v16);
        bzero(a1, v15);
        if (v15 == 3)
        {
          *v6 = v24;
          v6[2] = BYTE2(v24);
        }

        else if (v15 == 2)
        {
          *v6 = v24;
        }

        else
        {
          *v6 = v20;
        }
      }
    }

    else
    {
      bzero(a1, v15);
      *v6 = v20;
      v21 = 1;
    }

    switch(v19)
    {
      case 1:
        v6[v15] = v21;
        break;
      case 2:
        *&v6[v15] = v21;
        break;
      case 3:
        goto LABEL_42;
      case 4:
        *&v6[v15] = v21;
        break;
      default:
        return;
    }
  }
}

void NamedParseTransformer.resolve()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4228, &unk_1DD0F6E40);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8, v2);
  sub_1DD0DCF7C();
}

void NamedParseTransformer.init(transformer:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4DC8, &qword_1DD0F6E50);
  OUTLINED_FUNCTION_5_67();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  sub_1DCB0E9D8(a2, &qword_1ECCA4DC0, &unk_1DD0EFEA0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  OUTLINED_FUNCTION_3_77();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  LODWORD(a1) = *(type metadata accessor for NamedParseTransformer() + 20);
  sub_1DD0DCF7C();
}

void NamedParseTransformer.init(id:)(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4DC8, &qword_1DD0F6E50);
  OUTLINED_FUNCTION_5_67();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  sub_1DCB0E9D8(a1, &qword_1ECCA4DC0, &unk_1DD0EFEA0);
  OUTLINED_FUNCTION_5_67();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  v10 = *(type metadata accessor for NamedParseTransformer() + 20);
  sub_1DD0DCF7C();
}

void NamedParseTransformer.init(transformer:id:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4DC8, &qword_1DD0F6E50);
  __swift_storeEnumTagSinglePayload(a2, 1, 1, v4);
  sub_1DCB0E9D8(a2, &qword_1ECCA4DC0, &unk_1DD0EFEA0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  __swift_storeEnumTagSinglePayload(a2, 0, 1, v4);
  LODWORD(v4) = *(type metadata accessor for NamedParseTransformer() + 20);
  sub_1DD0DCF7C();
}

uint64_t NamedParseTransformer.resolveAndCache()@<X0>(char *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4DC0, &unk_1DD0EFEA0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v5);
  OUTLINED_FUNCTION_10_2();
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4DC8, &qword_1DD0F6E50);
  v11 = OUTLINED_FUNCTION_9(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v11, v16);
  OUTLINED_FUNCTION_10_2();
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v28 - v19;
  sub_1DCB09910(v1, v9, &qword_1ECCA4DC0, &unk_1DD0EFEA0);
  OUTLINED_FUNCTION_11_44(v9);
  if (v21)
  {
    sub_1DCB0E9D8(v9, &qword_1ECCA4DC0, &unk_1DD0EFEA0);
    NamedParseTransformer.resolve()();
  }

  v22 = *(v13 + 32);
  v22(v20, v9, v10);
  v22(a1, v20, v10);
  OUTLINED_FUNCTION_5_67();
  return __swift_storeEnumTagSinglePayload(v23, v24, v25, v26);
}

void initializeBufferWithCopyOfBuffer for NamedParseTransformer(void *a1, void *a2, uint64_t a3)
{
  if ((*(*(a3 - 8) + 80) & 0x20000) == 0)
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4DC8, &qword_1DD0F6E50);
    if (__swift_getEnumTagSinglePayload(a2, 1, v6))
    {
      v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4DC0, &unk_1DD0EFEA0);
      memcpy(a1, a2, *(*(v7 - 8) + 64));
    }

    else
    {
      (*(*(v6 - 8) + 16))(a1, a2, v6);
      __swift_storeEnumTagSinglePayload(a1, 0, 1, v6);
    }

    v8 = *(a3 + 20);
    sub_1DD0DCF7C();
  }

  *a1 = *a2;
  sub_1DD0DCF8C();
}

void destroy for NamedParseTransformer(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4DC8, &qword_1DD0F6E50);
  if (!__swift_getEnumTagSinglePayload(a1, 1, v4))
  {
    (*(*(v4 - 8) + 8))(a1, v4);
  }

  v5 = *(a2 + 20);
  sub_1DD0DCF7C();
}

void initializeWithCopy for NamedParseTransformer(void *a1, const void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4DC8, &qword_1DD0F6E50);
  if (__swift_getEnumTagSinglePayload(a2, 1, v6))
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4DC0, &unk_1DD0EFEA0);
    memcpy(a1, a2, *(*(v7 - 8) + 64));
  }

  else
  {
    (*(*(v6 - 8) + 16))(a1, a2, v6);
    __swift_storeEnumTagSinglePayload(a1, 0, 1, v6);
  }

  v8 = *(a3 + 20);
  sub_1DD0DCF7C();
}

void assignWithCopy for NamedParseTransformer(void *a1, const void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4DC8, &qword_1DD0F6E50);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, 1, v6);
  v8 = __swift_getEnumTagSinglePayload(a2, 1, v6);
  if (EnumTagSinglePayload)
  {
    if (!v8)
    {
      (*(*(v6 - 8) + 16))(a1, a2, v6);
      __swift_storeEnumTagSinglePayload(a1, 0, 1, v6);
      goto LABEL_7;
    }
  }

  else
  {
    v9 = *(v6 - 8);
    if (!v8)
    {
      (*(v9 + 24))(a1, a2, v6);
LABEL_7:
      v11 = *(a3 + 20);
      sub_1DD0DCF7C();
    }

    (*(v9 + 8))(a1, v6);
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4DC0, &unk_1DD0EFEA0);
  memcpy(a1, a2, *(*(v10 - 8) + 64));
  goto LABEL_7;
}

void initializeWithTake for NamedParseTransformer(void *a1, const void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4DC8, &qword_1DD0F6E50);
  if (__swift_getEnumTagSinglePayload(a2, 1, v6))
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4DC0, &unk_1DD0EFEA0);
    memcpy(a1, a2, *(*(v7 - 8) + 64));
  }

  else
  {
    (*(*(v6 - 8) + 32))(a1, a2, v6);
    __swift_storeEnumTagSinglePayload(a1, 0, 1, v6);
  }

  v8 = *(a3 + 20);
  sub_1DD0DCF7C();
}

void assignWithTake for NamedParseTransformer(void *a1, const void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4DC8, &qword_1DD0F6E50);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, 1, v6);
  v8 = __swift_getEnumTagSinglePayload(a2, 1, v6);
  if (EnumTagSinglePayload)
  {
    if (!v8)
    {
      (*(*(v6 - 8) + 32))(a1, a2, v6);
      __swift_storeEnumTagSinglePayload(a1, 0, 1, v6);
      goto LABEL_7;
    }
  }

  else
  {
    v9 = *(v6 - 8);
    if (!v8)
    {
      (*(v9 + 40))(a1, a2, v6);
LABEL_7:
      v11 = *(a3 + 20);
      sub_1DD0DCF7C();
    }

    (*(v9 + 8))(a1, v6);
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4DC0, &unk_1DD0EFEA0);
  memcpy(a1, a2, *(*(v10 - 8) + 64));
  goto LABEL_7;
}

void sub_1DCDDEA08()
{
  sub_1DCDDEAD0();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    v2 = sub_1DCDDEB34();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_initStructMetadata();
    }
  }
}

void sub_1DCDDEAD0()
{
  if (!qword_1EDE463C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA4DC8, &qword_1DD0F6E50);
    v0 = sub_1DD0DE97C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDE463C0);
    }
  }
}

uint64_t sub_1DCDDEB34()
{
  result = qword_1EDE46350;
  if (!qword_1EDE46350)
  {
    sub_1DD0DCF7C();
  }

  return result;
}

_BYTE *NeedsConfirmationAnswer.init(answeredValue:updatedIntent:)@<X0>(_BYTE *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = *result;
  *(a3 + 8) = a2;
  return result;
}

void NeedsConfirmationFlowStrategy.makeRepromptOnLowConfidence(app:intent:parameterName:multicardinalIndex:intentResolutionResult:itemToConfirm:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  OUTLINED_FUNCTION_20_0(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v13, v14);
  v15 = OUTLINED_FUNCTION_12_8();
  OUTLINED_FUNCTION_11_6(v15);
  OUTLINED_FUNCTION_41_4();
  v16 = swift_allocObject();
  v17 = OUTLINED_FUNCTION_104_3(v16);
  v17[4] = &unk_1DD0F6EE8;
  v17[5] = 0;
  v17[6] = a8;
  v17[7] = a9;
  sub_1DD0DCF8C();
}

void sub_1DCDDEDF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  OUTLINED_FUNCTION_20_0(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v24 - v19;
  v21 = sub_1DD0DE4BC();
  __swift_storeEnumTagSinglePayload(v20, 1, 1, v21);
  OUTLINED_FUNCTION_41_4();
  v22 = swift_allocObject();
  v23 = OUTLINED_FUNCTION_104_3(v22);
  v23[4] = a12;
  v23[5] = 0;
  v23[6] = a7;
  v23[7] = a8;
  sub_1DD0DCF8C();
}

void NeedsConfirmationFlowStrategy.makeConfirmationRejectedResponse(app:intent:parameterName:multicardinalIndex:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  OUTLINED_FUNCTION_20_0(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v12, v13);
  v14 = OUTLINED_FUNCTION_12_8();
  OUTLINED_FUNCTION_11_6(v14);
  OUTLINED_FUNCTION_41_4();
  v15 = swift_allocObject();
  v16 = OUTLINED_FUNCTION_104_3(v15);
  v16[4] = &unk_1DD0F6F18;
  v16[5] = 0;
  v16[6] = a6;
  v16[7] = a7;
  sub_1DD0DCF8C();
}

void sub_1DCDDEFCC()
{
  OUTLINED_FUNCTION_42();
  if (qword_1EDE46628 != -1)
  {
    OUTLINED_FUNCTION_58_0();
  }

  v1 = qword_1EDE46630;
  sub_1DCB4E718((v0 + 17));
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 17);
  v0[15] = type metadata accessor for RefreshableDeviceState();
  v0[16] = &protocol witness table for RefreshableDeviceState;
  v0[12] = v1;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCDDF0C0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v6 = *(v5 + 184);
  v7 = *v1;
  OUTLINED_FUNCTION_27();
  *v8 = v7;
  *(v3 + 192) = v0;

  __swift_destroy_boxed_opaque_existential_1Tm((v3 + 96));
  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DCDDF1C0()
{
  OUTLINED_FUNCTION_39();
  v1 = v0[22];
  sub_1DCDED2EC((v0 + 2), v1);
  v3 = v0[7];
  v2 = v0[8];

  sub_1DCCCF318((v0 + 2));
  *(v1 + 40) = v3;
  *(v1 + 48) = v2;
  OUTLINED_FUNCTION_43();

  return v4();
}

void NeedsConfirmationWithCancellationFlowStrategy.makeIntentCancelledByParameterRejectionResponse(app:intent:parameterName:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  OUTLINED_FUNCTION_20_0(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v11, v12);
  v13 = OUTLINED_FUNCTION_12_8();
  OUTLINED_FUNCTION_11_6(v13);
  OUTLINED_FUNCTION_41_4();
  v14 = swift_allocObject();
  v15 = OUTLINED_FUNCTION_104_3(v14);
  v15[4] = &unk_1DD0F6F28;
  v15[5] = 0;
  v15[6] = a5;
  v15[7] = a6;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCDDF314()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AE1C;

  return NeedsConfirmationWithCancellationFlowStrategy.makeIntentCancelledByParameterRejectionResponse(app:intent:parameterName:)();
}

uint64_t NeedsConfirmationWithCancellationFlowStrategy.makeIntentCancelledByParameterRejectionResponse(app:intent:parameterName:)()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_40(v1);

  return sub_1DCEAA8F4();
}

void NeedsConfirmationFlowStrategyAsync.authenticationPolicy.getter(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 32) = &type metadata for FeatureFlagDefinitions.Core;
  *(a1 + 40) = &off_1F585CB38;
  *(a1 + 8) = 0;
}

uint64_t sub_1DCDDF450()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCBCF434;

  return NeedsConfirmationFlowStrategyAsync.shouldRequestUnlockForConfirmation(itemToConfirm:resolveRecord:)();
}

uint64_t sub_1DCDDF4F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v18 = swift_task_alloc();
  *(v9 + 16) = v18;
  *v18 = v9;
  v18[1] = sub_1DCB4AE1C;

  return NeedsConfirmationFlowStrategyAsync.makeRepromptOnEmptyParse(itemToConfirm:resolveRecord:)(a1, a2, a3, a4, a5, v15, v16, v17, a9);
}

uint64_t NeedsConfirmationFlowStrategyAsync.makeRepromptOnEmptyParse(itemToConfirm:resolveRecord:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_145();
  OUTLINED_FUNCTION_41();
  v11 = *(v10 + 32);
  v12 = *(v10 + 40);
  v13 = *(v10 + 48);
  v14 = *(v10 + 16);
  *(v9 + 16) = *v10;
  *(v9 + 32) = v14;
  *(v9 + 48) = v11;
  *(v9 + 56) = v12;
  *(v9 + 64) = v13;
  v16 = *(v15 + 56);
  OUTLINED_FUNCTION_25_1();
  v31 = v17 + *v17;
  v19 = *(v18 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v9 + 72) = v20;
  *v20 = v21;
  v20[1] = sub_1DCDDF704;
  OUTLINED_FUNCTION_48();

  return v27(v22, v23, v24, v25, v26, v27, v28, v29, a9, v31);
}

uint64_t sub_1DCDDF704()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = *(v2 + 72);
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 80) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_29();

    return v10();
  }
}

uint64_t sub_1DCDDF824()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AE1C;

  return NeedsConfirmationFlowStrategyAsync.makeRepromptOnLowConfidence(itemToConfirm:resolveRecord:)();
}

uint64_t NeedsConfirmationFlowStrategyAsync.makeRepromptOnLowConfidence(itemToConfirm:resolveRecord:)()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_40(v1);

  return sub_1DCCDBBA0();
}

uint64_t sub_1DCDDF940()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AE1C;

  return NeedsConfirmationFlowStrategyAsync.makePromptForDeviceUnlock(resolveRecord:)();
}

uint64_t NeedsConfirmationFlowStrategyAsync.makePromptForDeviceUnlock(resolveRecord:)()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_40(v1);

  return sub_1DCCDB478();
}

uint64_t sub_1DCDDFA5C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB4AE1C;

  return NeedsConfirmationFlowStrategyAsync.makeHandoffForAuthenticationResponse(resolveRecord:)(a1);
}

void sub_1DCDDFB0C()
{
  OUTLINED_FUNCTION_42();
  if (qword_1EDE46628 != -1)
  {
    OUTLINED_FUNCTION_58_0();
  }

  v1 = qword_1EDE46630;
  sub_1DCB4E718((v0 + 7));
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  v0[5] = type metadata accessor for RefreshableDeviceState();
  v0[6] = &protocol witness table for RefreshableDeviceState;
  v0[2] = v1;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCDDFC00()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v6 = *(v5 + 104);
  v7 = *v1;
  OUTLINED_FUNCTION_27();
  *v8 = v7;
  *(v3 + 112) = v0;

  __swift_destroy_boxed_opaque_existential_1Tm((v3 + 16));
  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_29();

    return v12();
  }
}

uint64_t sub_1DCDDFD20()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AE1C;

  return NeedsConfirmationFlowStrategyAsync.makeConfirmationRejectedResponse(app:intent:parameter:)();
}

uint64_t NeedsConfirmationFlowStrategyAsync.makeConfirmationRejectedResponse(app:intent:parameter:)()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_40(v1);

  return sub_1DCEAA568();
}

uint64_t NeedsConfirmationFlowStrategyAsync.actionForInputWrapper(_:resolveRecord:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 40) = a5;
  *(v6 + 48) = v5;
  *(v6 + 24) = a2;
  *(v6 + 32) = a4;
  *(v6 + 16) = a1;
  *(v6 + 56) = *a3;
  *(v6 + 72) = *(a3 + 16);
  *(v6 + 80) = *(a3 + 24);
  *(v6 + 104) = *(a3 + 40);
  *(v6 + 96) = *(a3 + 48);
  return OUTLINED_FUNCTION_0_12(sub_1DCDDFE84);
}

uint64_t sub_1DCDDFE84()
{
  OUTLINED_FUNCTION_41();
  v16 = v0;
  v1 = *(v0 + 104);
  v3 = *(v0 + 88);
  v2 = *(v0 + 96);
  v4 = *(v0 + 72);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v7 = *(v0 + 24);
  v8 = *(v0 + 32);
  v9 = *(v0 + 16);
  v12[0] = *(v0 + 56);
  v12[1] = v4;
  v13 = v3;
  v14 = v1;
  v15 = v2;
  (*(v5 + 32))(v7, v12, v8);
  OUTLINED_FUNCTION_29();

  return v10();
}

uint64_t sub_1DCDDFF18()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AE1C;

  return NeedsConfirmationWithCancellationFlowStrategyAsync.makeIntentCancelledByParameterRejectionResponse(app:intent:parameter:)();
}

uint64_t NeedsConfirmationWithCancellationFlowStrategyAsync.makeIntentCancelledByParameterRejectionResponse(app:intent:parameter:)()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_40(v1);

  return sub_1DCEAA8F4();
}

uint64_t sub_1DCDE004C()
{
  OUTLINED_FUNCTION_13();
  v2 = *(v1 + 96);
  OUTLINED_FUNCTION_4_50(v4, v5, *(v3 + 80));
  (*(v6 + 32))(v0 + v7);
  return v0;
}

uint64_t sub_1DCDE00B0()
{
  v1 = *v0;
  OUTLINED_FUNCTION_74_1();
  v3 = *(v2 + 96);
  v5 = *(*(v4 + 88) + 24);
  OUTLINED_FUNCTION_74_1();
  return v7(*(v6 + 80));
}

uint64_t sub_1DCDE011C(uint64_t a1, uint64_t *a2)
{
  v3 = *v2;
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[6];
  OUTLINED_FUNCTION_74_1();
  v10 = *(v9 + 96);
  v12 = *(*(v11 + 88) + 32);
  OUTLINED_FUNCTION_74_1();
  v14 = *(v13 + 80);
  return v15();
}

uint64_t sub_1DCDE019C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 80) = a2;
  *(v4 + 88) = v3;
  *(v4 + 72) = a1;
  *(v4 + 96) = *v3;
  v5 = *(a3 + 16);
  *(v4 + 16) = *a3;
  *(v4 + 32) = v5;
  *(v4 + 48) = *(a3 + 32);
  *(v4 + 64) = *(a3 + 48);
  return OUTLINED_FUNCTION_0_12(sub_1DCDE01F8);
}

uint64_t sub_1DCDE01F8()
{
  OUTLINED_FUNCTION_33();
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  v4 = swift_task_alloc();
  v0[13] = v4;
  v4[2] = v2;
  v4[3] = v0 + 2;
  v4[4] = v3;
  v5 = *(MEMORY[0x1E69E8920] + 4);
  v6 = swift_task_alloc();
  v0[14] = v6;
  v7 = *(v1 + 80);
  v8 = *(*(v1 + 88) + 8);
  swift_getAssociatedTypeWitness();
  type metadata accessor for NeedsConfirmationAnswer();
  OUTLINED_FUNCTION_17();
  *v6 = v9;
  OUTLINED_FUNCTION_83_7();
  OUTLINED_FUNCTION_101();
  OUTLINED_FUNCTION_36();

  return MEMORY[0x1EEE6DE38](v10);
}

uint64_t sub_1DCDE0310()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v6 = *(v5 + 112);
  v7 = *v1;
  OUTLINED_FUNCTION_27();
  *v8 = v7;
  *(v3 + 120) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 104);

    OUTLINED_FUNCTION_29();

    return v13();
  }
}

uint64_t sub_1DCDE042C(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v35 = a4;
  v33 = a1;
  v6 = *a2;
  v34 = *(*a2 + 88);
  v7 = *(v34 + 8);
  v8 = *(v6 + 80);
  swift_getAssociatedTypeWitness();
  type metadata accessor for NeedsConfirmationAnswer();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  v9 = sub_1DD0DE47C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v13 = MEMORY[0x1EEE9AC00](v9, v12);
  v15 = &v28 - v14;
  v16 = *(v8 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v13, v18);
  v20 = &v28 - v19;
  (*(v16 + 16))(&v28 - v19, a2 + *(v6 + 96), v8);
  v21 = a3[2];
  v31 = a3[3];
  v32 = v21;
  if (a3[5])
  {
    v22 = 0;
  }

  else
  {
    v22 = a3[4];
  }

  v23 = *a3;
  v28 = a3[1];
  v29 = a3[6];
  v30 = v22;
  (*(v10 + 16))(v15, v33, v9);
  v24 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v25 = swift_allocObject();
  v26 = v34;
  *(v25 + 16) = v8;
  *(v25 + 24) = v26;
  (*(v10 + 32))(v25 + v24, v15, v9);
  (*(v26 + 40))(v23, v28, v32, v31, v30, v29, v35, sub_1DCDED218, v25, v8, v26);

  return (*(v16 + 8))(v20, v8);
}

uint64_t sub_1DCDE0718(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 16);
  v8 = *a1;
  v9 = v4;
  v5 = *(a4 + 8);
  swift_getAssociatedTypeWitness();
  type metadata accessor for NeedsConfirmationAnswer();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  v6 = sub_1DD0DE47C();
  return sub_1DD05EBE4(&v8, v6);
}

uint64_t sub_1DCDE07B4(uint64_t a1, uint64_t a2)
{
  *(v3 + 72) = a1;
  *(v3 + 80) = v2;
  OUTLINED_FUNCTION_107(v4, a2);
  return OUTLINED_FUNCTION_0_12(sub_1DCDE07E0);
}

uint64_t sub_1DCDE07E0()
{
  OUTLINED_FUNCTION_33();
  v2 = v0[9];
  v1 = v0[10];
  v3 = OUTLINED_FUNCTION_115_2();
  v0[11] = v3;
  v3[2] = v1;
  v3[3] = v0 + 2;
  v3[4] = v2;
  v4 = *(MEMORY[0x1E69E88D0] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  v0[12] = v5;
  *v5 = v6;
  v5[1] = sub_1DCDE08D0;
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_36();

  return MEMORY[0x1EEE6DDE0](v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_1DCDE08D0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = *(v1 + 96);
  v3 = *(v1 + 88);
  v4 = *v0;
  OUTLINED_FUNCTION_27();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1DCDE09E8(uint64_t a1, char *a2, uint64_t *a3, uint64_t a4)
{
  v32 = a1;
  v33 = a4;
  v6 = *a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1C50, &qword_1DD0EA340);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v11 = MEMORY[0x1EEE9AC00](v7, v10);
  v13 = &v26 - v12;
  v14 = v6[10];
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v11, v17);
  v19 = &v26 - v18;
  (*(v15 + 16))(&v26 - v18, &a2[v6[12]], v14);
  v20 = a3[2];
  v30 = a3[3];
  v31 = v20;
  if (a3[5])
  {
    v21 = 0;
  }

  else
  {
    v21 = a3[4];
  }

  v22 = *a3;
  v26 = a3[1];
  v27 = v22;
  v28 = a3[6];
  v29 = v21;
  (*(v8 + 16))(v13, v32, v7);
  v23 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v24 = swift_allocObject();
  (*(v8 + 32))(v24 + v23, v13, v7);
  (*(v6[11] + 48))(v27, v26, v31, v30, v29, v28, v33, sub_1DCBCF650, v24, v14, v6[11]);

  return (*(v15 + 8))(v19, v14);
}

uint64_t sub_1DCDE0CA0()
{
  OUTLINED_FUNCTION_33();
  v2 = v0[10];
  v1 = v0[11];
  v3 = OUTLINED_FUNCTION_115_2();
  OUTLINED_FUNCTION_53_14(v3);
  v4 = *(MEMORY[0x1E69E8920] + 4);
  v5 = swift_task_alloc();
  v0[13] = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  OUTLINED_FUNCTION_17();
  *v5 = v6;
  OUTLINED_FUNCTION_83_7();
  OUTLINED_FUNCTION_9_51();
  OUTLINED_FUNCTION_36();

  return MEMORY[0x1EEE6DE38](v7);
}

uint64_t sub_1DCDE0D80()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v6 = *(v5 + 104);
  v7 = *v1;
  OUTLINED_FUNCTION_27();
  *v8 = v7;
  *(v3 + 112) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 96);

    OUTLINED_FUNCTION_29();

    return v13();
  }
}

uint64_t sub_1DCDE0E9C(uint64_t a1, char *a2, uint64_t *a3, uint64_t a4)
{
  v32 = a1;
  v33 = a4;
  v6 = *a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v11 = MEMORY[0x1EEE9AC00](v7, v10);
  v13 = &v26 - v12;
  v14 = v6[10];
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v11, v17);
  v19 = &v26 - v18;
  (*(v15 + 16))(&v26 - v18, &a2[v6[12]], v14);
  v20 = a3[2];
  v30 = a3[3];
  v31 = v20;
  if (a3[5])
  {
    v21 = 0;
  }

  else
  {
    v21 = a3[4];
  }

  v22 = *a3;
  v26 = a3[1];
  v27 = v22;
  v28 = a3[6];
  v29 = v21;
  (*(v8 + 16))(v13, v32, v7);
  v23 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v24 = swift_allocObject();
  (*(v8 + 32))(v24 + v23, v13, v7);
  (*(v6[11] + 56))(v27, v26, v31, v30, v29, v28, v33, sub_1DCDED198, v24, v14, v6[11]);

  return (*(v15 + 8))(v19, v14);
}

uint64_t sub_1DCDE1154()
{
  OUTLINED_FUNCTION_33();
  v2 = v0[10];
  v1 = v0[11];
  v3 = OUTLINED_FUNCTION_115_2();
  OUTLINED_FUNCTION_53_14(v3);
  v4 = *(MEMORY[0x1E69E8920] + 4);
  v5 = swift_task_alloc();
  v0[13] = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  OUTLINED_FUNCTION_17();
  *v5 = v6;
  OUTLINED_FUNCTION_83_7();
  OUTLINED_FUNCTION_9_51();
  OUTLINED_FUNCTION_36();

  return MEMORY[0x1EEE6DE38](v7);
}

uint64_t sub_1DCDE1234()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v6 = *(v5 + 104);
  v7 = *v1;
  OUTLINED_FUNCTION_27();
  *v8 = v7;
  *(v3 + 112) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 96);

    OUTLINED_FUNCTION_29();

    return v13();
  }
}

uint64_t sub_1DCDE1350(uint64_t a1, char *a2, uint64_t *a3, uint64_t a4)
{
  v32 = a1;
  v33 = a4;
  v6 = *a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v11 = MEMORY[0x1EEE9AC00](v7, v10);
  v13 = &v26 - v12;
  v14 = v6[10];
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v11, v17);
  v19 = &v26 - v18;
  (*(v15 + 16))(&v26 - v18, &a2[v6[12]], v14);
  v20 = a3[2];
  v30 = a3[3];
  v31 = v20;
  if (a3[5])
  {
    v21 = 0;
  }

  else
  {
    v21 = a3[4];
  }

  v22 = *a3;
  v26 = a3[1];
  v27 = v22;
  v28 = a3[6];
  v29 = v21;
  (*(v8 + 16))(v13, v32, v7);
  v23 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v24 = swift_allocObject();
  (*(v8 + 32))(v24 + v23, v13, v7);
  (*(v6[11] + 64))(v27, v26, v31, v30, v29, v28, v33, sub_1DCDED7C8, v24, v14, v6[11]);

  return (*(v15 + 8))(v19, v14);
}

uint64_t sub_1DCDE1608()
{
  OUTLINED_FUNCTION_33();
  v2 = v0[10];
  v1 = v0[11];
  v3 = OUTLINED_FUNCTION_115_2();
  OUTLINED_FUNCTION_53_14(v3);
  v4 = *(MEMORY[0x1E69E8920] + 4);
  v5 = swift_task_alloc();
  v0[13] = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  OUTLINED_FUNCTION_17();
  *v5 = v6;
  OUTLINED_FUNCTION_83_7();
  OUTLINED_FUNCTION_9_51();
  OUTLINED_FUNCTION_36();

  return MEMORY[0x1EEE6DE38](v7);
}

uint64_t sub_1DCDE16E8(uint64_t a1, char *a2, uint64_t *a3, uint64_t a4)
{
  v32 = a1;
  v33 = a4;
  v6 = *a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v11 = MEMORY[0x1EEE9AC00](v7, v10);
  v13 = &v26 - v12;
  v14 = v6[10];
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v11, v17);
  v19 = &v26 - v18;
  (*(v15 + 16))(&v26 - v18, &a2[v6[12]], v14);
  v20 = a3[2];
  v30 = a3[3];
  v31 = v20;
  if (a3[5])
  {
    v21 = 0;
  }

  else
  {
    v21 = a3[4];
  }

  v22 = *a3;
  v26 = a3[1];
  v27 = v22;
  v28 = a3[6];
  v29 = v21;
  (*(v8 + 16))(v13, v32, v7);
  v23 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v24 = swift_allocObject();
  (*(v8 + 32))(v24 + v23, v13, v7);
  (*(v6[11] + 72))(v27, v26, v31, v30, v29, v28, v33, sub_1DCDED7C8, v24, v14, v6[11]);

  return (*(v15 + 8))(v19, v14);
}

uint64_t sub_1DCDE1978(uint64_t a1, uint64_t a2)
{
  *(v3 + 72) = a1;
  *(v3 + 80) = v2;
  OUTLINED_FUNCTION_107(v4, a2);
  return OUTLINED_FUNCTION_0_12(sub_1DCDE19A4);
}

uint64_t sub_1DCDE19A4()
{
  OUTLINED_FUNCTION_39();
  v1 = v0[10];
  v2 = swift_task_alloc();
  v0[11] = v2;
  *(v2 + 16) = v1;
  *(v2 + 24) = v0 + 2;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  v0[12] = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  OUTLINED_FUNCTION_17();
  *v4 = v5;
  OUTLINED_FUNCTION_83_7();
  OUTLINED_FUNCTION_101();
  OUTLINED_FUNCTION_36();

  return MEMORY[0x1EEE6DE38](v6);
}

uint64_t sub_1DCDE1A94(uint64_t a1, char *a2, uint64_t *a3)
{
  v32 = a1;
  v5 = *a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v10 = MEMORY[0x1EEE9AC00](v6, v9);
  v12 = &v25 - v11;
  v13 = v5[10];
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v10, v16);
  v18 = &v25 - v17;
  (*(v14 + 16))(&v25 - v17, &a2[v5[12]], v13);
  v19 = a3[2];
  v30 = a3[3];
  v31 = v19;
  if (a3[5])
  {
    v20 = 0;
  }

  else
  {
    v20 = a3[4];
  }

  v21 = *a3;
  v26 = a3[1];
  v27 = v21;
  v28 = a3[6];
  v29 = v20;
  (*(v7 + 16))(v12, v32, v6);
  v22 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v23 = swift_allocObject();
  (*(v7 + 32))(v23 + v22, v12, v6);
  (*(v5[11] + 80))(v27, v26, v31, v30, v29, v28, sub_1DCDED7C8, v23, v13, v5[11]);

  return (*(v14 + 8))(v18, v13);
}

uint64_t sub_1DCDE1D1C(uint64_t a1, uint64_t a2)
{
  *(v3 + 240) = a1;
  *(v3 + 248) = v2;
  OUTLINED_FUNCTION_107(v4, a2);
  return OUTLINED_FUNCTION_0_12(sub_1DCDE1D48);
}

uint64_t sub_1DCDE1D48()
{
  OUTLINED_FUNCTION_39();
  v1 = v0[31];
  v2 = swift_task_alloc();
  v0[32] = v2;
  *(v2 + 16) = v1;
  *(v2 + 24) = v0 + 2;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  v0[33] = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA5500, &qword_1DD0F20A0);
  OUTLINED_FUNCTION_17();
  *v4 = v5;
  v4[1] = sub_1DCDE1E3C;
  OUTLINED_FUNCTION_101();
  OUTLINED_FUNCTION_36();

  return MEMORY[0x1EEE6DE38](v6);
}

uint64_t sub_1DCDE1E3C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v6 = *(v5 + 264);
  v7 = *v1;
  OUTLINED_FUNCTION_27();
  *v8 = v7;
  *(v3 + 272) = v0;

  if (!v0)
  {
    v9 = *(v3 + 256);
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1DCDE1F3C()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 240);
  sub_1DCB17C3C(v0 + 72, v0 + 128, &qword_1ECCA5500, &qword_1DD0F20A0);
  v2 = *(v0 + 176);

  *(v0 + 216) = *(v0 + 104);
  *(v0 + 184) = *(v0 + 72);
  *(v0 + 200) = *(v0 + 88);
  v3 = *(v0 + 120);
  *(v0 + 232) = v3;
  v4 = *(v0 + 224);
  v1[8] = 0;
  v1[9] = 0;
  sub_1DCAFF9E8((v0 + 128), v1);
  v1[5] = v4;
  v1[6] = v3;
  v1[7] = 0;
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 184));
  OUTLINED_FUNCTION_43();

  return v5();
}

uint64_t sub_1DCDE2000()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 256);

  OUTLINED_FUNCTION_29();
  v3 = *(v0 + 272);

  return v2();
}

uint64_t sub_1DCDE205C(uint64_t a1, char *a2, uint64_t *a3)
{
  v32 = a1;
  v5 = *a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECCA5508, &unk_1DD0F76F0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v10 = MEMORY[0x1EEE9AC00](v6, v9);
  v12 = &v25 - v11;
  v13 = v5[10];
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v10, v16);
  v18 = &v25 - v17;
  (*(v14 + 16))(&v25 - v17, &a2[v5[12]], v13);
  v19 = a3[2];
  v30 = a3[3];
  v31 = v19;
  if (a3[5])
  {
    v20 = 0;
  }

  else
  {
    v20 = a3[4];
  }

  v21 = *a3;
  v26 = a3[1];
  v27 = v21;
  v28 = a3[6];
  v29 = v20;
  (*(v7 + 16))(v12, v32, v6);
  v22 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v23 = swift_allocObject();
  (*(v7 + 32))(v23 + v22, v12, v6);
  (*(v5[11] + 88))(v27, v26, v31, v30, v29, v28, sub_1DCDED0FC, v23, v13, v5[11]);

  return (*(v14 + 8))(v18, v13);
}

uint64_t sub_1DCDE230C()
{
  OUTLINED_FUNCTION_46_4();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_35_24();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_100_5(v1);
  OUTLINED_FUNCTION_12_6(v2, *(v0 + 24), v3, v4, v5, v6, v7, v8, v9, v10);
  v11 = *(MEMORY[0x1E69E8920] + 4);
  v12 = swift_task_alloc();
  *(v0 + 80) = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  OUTLINED_FUNCTION_17();
  *v12 = v13;
  OUTLINED_FUNCTION_37_1();
  OUTLINED_FUNCTION_9_51();
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_47();

  return MEMORY[0x1EEE6DE38](v14);
}

uint64_t sub_1DCDE23F0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v6 = *(v5 + 80);
  v7 = *v1;
  OUTLINED_FUNCTION_27();
  *v8 = v7;
  *(v3 + 88) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 72);

    OUTLINED_FUNCTION_29();

    return v13();
  }
}

uint64_t sub_1DCDE250C(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  LODWORD(v31) = a8;
  v34 = a5;
  v35 = a6;
  v32 = a3;
  v33 = a4;
  v11 = *a2;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v16 = MEMORY[0x1EEE9AC00](v12, v15);
  v18 = &v30 - v17;
  v30 = v11;
  v19 = *(v11 + 80);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v16, v22);
  v24 = &v30 - v23;
  (*(v20 + 16))(&v30 - v23, &a2[*(v25 + 96)], v19);
  if (v31)
  {
    v26 = 0;
  }

  else
  {
    v26 = a7;
  }

  v31 = v26;
  (*(v13 + 16))(v18, a1, v12);
  v27 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v28 = swift_allocObject();
  (*(v13 + 32))(v28 + v27, v18, v12);
  (*(*(v30 + 88) + 96))(v32, v33, v34, v35, v31, sub_1DCDED7C8, v28, v19, *(v30 + 88));

  return (*(v20 + 8))(v24, v19);
}

uint64_t sub_1DCDE27BC()
{
  OUTLINED_FUNCTION_46_4();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_35_24();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_100_5(v1);
  OUTLINED_FUNCTION_12_6(v2, *(v0 + 24), v3, v4, v5, v6, v7, v8, v9, v10);
  v11 = *(MEMORY[0x1E69E8920] + 4);
  v12 = swift_task_alloc();
  *(v0 + 80) = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  OUTLINED_FUNCTION_17();
  *v12 = v13;
  OUTLINED_FUNCTION_37_1();
  OUTLINED_FUNCTION_9_51();
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_47();

  return MEMORY[0x1EEE6DE38](v14);
}

uint64_t sub_1DCDE28A0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v21 = a5;
  v22 = a6;
  v20 = a4;
  v8 = *a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = &v19 - v13;
  v15 = v8[12];
  (*(v10 + 16))(&v19 - v13, a1, v9);
  v16 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v17 = swift_allocObject();
  (*(v10 + 32))(v17 + v16, v14, v9);
  (*(*(v8[11] + 8) + 16))(a3, v20, v21, v22, sub_1DCDED7C8, v17, v8[10]);
}

uint64_t sub_1DCDE2A64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 40) = a4;
  *(v6 + 48) = v5;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  *(v6 + 16) = a1;
  *(v6 + 56) = *a5;
  *(v6 + 72) = *(a5 + 16);
  *(v6 + 104) = *(a5 + 24);
  return OUTLINED_FUNCTION_0_12(sub_1DCDE2A9C);
}

uint64_t sub_1DCDE2A9C()
{
  OUTLINED_FUNCTION_145();
  OUTLINED_FUNCTION_41();
  v1 = *(v0 + 104);
  v2 = *(v0 + 72);
  v21 = *(v0 + 56);
  v3 = *(v0 + 48);
  v4 = *(v0 + 24);
  v5 = swift_task_alloc();
  *(v0 + 80) = v5;
  OUTLINED_FUNCTION_12_6(v5, *(v0 + 32), v6, v7, v8, v9, v10, v11, v12, v13);
  *(v14 + 72) = v4;
  v15 = *(MEMORY[0x1E69E8920] + 4);
  v16 = swift_task_alloc();
  *(v0 + 88) = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  OUTLINED_FUNCTION_17();
  *v16 = v17;
  OUTLINED_FUNCTION_37_1();
  OUTLINED_FUNCTION_101();
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_48();

  return MEMORY[0x1EEE6DE38](v18);
}

uint64_t sub_1DCDE2BA4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v24 = a5;
  v25 = a6;
  v22 = a9;
  v23 = a4;
  v11 = *a2;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = &v22 - v16;
  v18 = v11[12];
  (*(v13 + 16))(&v22 - v16, a1, v12);
  v19 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v20 = swift_allocObject();
  (*(v13 + 32))(v20 + v19, v17, v12);
  (*(*(v11[11] + 8) + 24))(a3, v23, v24, v25, v22, sub_1DCDED7C8, v20, v11[10], *(v11[11] + 8));
}

uint64_t sub_1DCDE2DD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1DCB4AE1C;

  return sub_1DCDE019C(a1, a2, a3);
}

uint64_t sub_1DCDE2E8C(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DCCC5288;

  return sub_1DCDE07B4(a1, a2);
}

uint64_t sub_1DCDE2F34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1DCB4AE1C;

  return sub_1DCDE0C78(a1, a2, a3);
}

uint64_t sub_1DCDE2FE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1DCB4AE1C;

  return sub_1DCDE112C(a1, a2, a3);
}

uint64_t sub_1DCDE309C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1DCB4AE1C;

  return sub_1DCDE15E0(a1, a2, a3);
}

uint64_t sub_1DCDE3150(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DCB4AE1C;

  return sub_1DCDE1978(a1, a2);
}

uint64_t sub_1DCDE31FC(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DCB4AE1C;

  return sub_1DCDE1D1C(a1, a2);
}

uint64_t sub_1DCDE32A8(unint64_t a1, unint64_t a2, unint64_t a3, __n128 *a4)
{
  v10 = *v4;
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1DCB4AE1C;

  return sub_1DCDE22E4(a1, a2, a3, a4);
}

uint64_t sub_1DCDE336C(unint64_t a1, unint64_t a2, unint64_t a3, __n128 *a4)
{
  v10 = *v4;
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1DCB4AE1C;

  return sub_1DCDE2794(a1, a2, a3, a4);
}

uint64_t sub_1DCDE3430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *v5;
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1DCB4AE1C;

  return sub_1DCDE2A64(a1, a2, a3, a4, a5);
}

uint64_t sub_1DCDE3514(uint64_t a1, void (*a2)(uint64_t))
{
  v4 = OUTLINED_FUNCTION_65_1();
  a2(a1);
  return v4;
}

uint64_t sub_1DCDE3558(uint64_t a1)
{
  OUTLINED_FUNCTION_13();
  v4 = *(v3 + 224);
  OUTLINED_FUNCTION_4_50(v6, v7, *(v5 + 208));
  (*(v8 + 16))(v1 + v9, a1);

  return sub_1DCDE004C();
}

uint64_t sub_1DCDE3600()
{
  OUTLINED_FUNCTION_46_4();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_35_24();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_100_5(v1);
  OUTLINED_FUNCTION_12_6(v2, *(v0 + 24), v3, v4, v5, v6, v7, v8, v9, v10);
  v11 = *(MEMORY[0x1E69E8920] + 4);
  v12 = swift_task_alloc();
  *(v0 + 80) = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  OUTLINED_FUNCTION_17();
  *v12 = v13;
  OUTLINED_FUNCTION_37_1();
  OUTLINED_FUNCTION_9_51();
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_47();

  return MEMORY[0x1EEE6DE38](v14);
}

uint64_t sub_1DCDE36E4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v21 = a5;
  v22 = a6;
  v20 = a4;
  v8 = *a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = &v19 - v13;
  v15 = v8[28];
  (*(v10 + 16))(&v19 - v13, a1, v9);
  v16 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v17 = swift_allocObject();
  (*(v10 + 32))(v17 + v16, v14, v9);
  (*(v8[27] + 16))(a3, v20, v21, v22, sub_1DCDED7C8, v17, v8[26]);
}

uint64_t sub_1DCDE38A4()
{
  OUTLINED_FUNCTION_13();
  v2 = *(v1 + 224);
  OUTLINED_FUNCTION_112(*(v3 + 208));
  return (*(v4 + 8))(v0 + v5);
}

char *sub_1DCDE3910()
{
  v1 = *v0;
  sub_1DCD76698();
  OUTLINED_FUNCTION_66();
  (*(*(*(v1 + 208) - 8) + 8))(&v0[*(v2 + 224)]);
  return v0;
}

uint64_t sub_1DCDE39A0(unint64_t a1, unint64_t a2, unint64_t a3, __n128 *a4)
{
  v10 = *v4;
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1DCB4AE1C;

  return sub_1DCDE35D8(a1, a2, a3, a4);
}

uint64_t sub_1DCDE3A64(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v6 = OUTLINED_FUNCTION_65_1();
  sub_1DCDE3AB0(a1, a2, a3);
  return v6;
}

uint64_t sub_1DCDE3AB0(uint64_t a1, uint64_t a2, __int128 *a3)
{
  OUTLINED_FUNCTION_87_7();
  v20 = *(a2 + 16);
  v6 = *(a2 + 32);
  v7 = *(a2 + 40);
  v8 = *(a2 + 48);
  OUTLINED_FUNCTION_8_2();
  v10 = *(v9 + 96);
  OUTLINED_FUNCTION_4_50(v12, v13, *(v11 + 80));
  (*(v14 + 32))(v3 + v15);
  OUTLINED_FUNCTION_66();
  v17 = v3 + *(v16 + 104);
  *v17 = *a2;
  *(v17 + 16) = v20;
  *(v17 + 32) = v6;
  *(v17 + 40) = v7;
  *(v17 + 48) = v8;
  OUTLINED_FUNCTION_66();
  sub_1DCAFF9E8(a3, v3 + *(v18 + 112));
  return v3;
}

void sub_1DCDE3B98()
{
  OUTLINED_FUNCTION_13();
  v2 = *(v1 + 96);
  v4 = (v0 + *(v3 + 104));
  v9 = *v4;
  v10 = v4[1];
  v11 = v4[2];
  v12 = v4[3];
  v13 = v4[4];
  v14 = *(v4 + 40);
  v15 = v4[6];
  OUTLINED_FUNCTION_8_2();
  v6 = *(*(v5 + 88) + 32);
  OUTLINED_FUNCTION_8_2();
  v8 = *(v7 + 80);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCDE3CC4()
{
  OUTLINED_FUNCTION_42();
  v1[12] = v2;
  v1[13] = v0;
  v1[11] = v3;
  v1[14] = *v0;
  v4 = type metadata accessor for SiriKitEventPayload(0);
  v1[15] = v4;
  OUTLINED_FUNCTION_20_0(v4);
  v6 = *(v5 + 64);
  v1[16] = OUTLINED_FUNCTION_38();
  v7 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCDE3EF0()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32_1();
  v4 = v3;
  OUTLINED_FUNCTION_12_0();
  *v5 = v4;
  v7 = *(v6 + 160);
  v8 = *v1;
  OUTLINED_FUNCTION_27();
  *v9 = v8;
  v4[21] = v0;

  OUTLINED_FUNCTION_92_6();

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1DCDE4004(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_90();
  v15 = *(v14 + 72);
  *(v14 + 200) = v15;
  v16 = *(v14 + 80);
  *(v14 + 176) = v16;
  if (v15 == 2)
  {
    v17 = *(v14 + 128);
    v18 = *(v14 + 88);
    *v18 = 2;
    *(v18 + 8) = v16;

    OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_76();

    return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12, a13, a14);
  }

  else
  {
    v29 = *(v14 + 144);
    v28 = *(v14 + 152);
    v30 = *(v14 + 128);
    v31 = *(v14 + 120);
    v32 = *(v14 + 104);
    v33 = v32 + *(v14 + 136);
    v34 = v15 & 1 | 2;
    type metadata accessor for SiriKitEvent(0);
    *v30 = v34;
    *(v30 + 16) = 0;
    *(v30 + 24) = 0;
    *(v30 + 8) = v29;
    v35 = *(v33 + 16);
    v36 = *(v33 + 24);
    v37 = *(v33 + 32);
    LOBYTE(v33) = *(v33 + 40);
    *(v30 + 32) = v35;
    *(v30 + 40) = v36;
    v38 = v29;

    [v28 itemToConfirm];
    sub_1DD0DEA6C();
    swift_unknownObjectRelease();
    *(v30 + 80) = v37;
    *(v30 + 88) = v33;
    swift_storeEnumTagMultiPayload();
    v39 = OUTLINED_FUNCTION_59_4();
    *(v14 + 184) = SiriKitEvent.__allocating_init(_:builder:)(v39, v40);
    OUTLINED_FUNCTION_114_2((v32 + *(*v32 + 112)));
    OUTLINED_FUNCTION_105_0();
    OUTLINED_FUNCTION_8();
    v53 = v41 + *v41;
    v43 = *(v42 + 4);
    v44 = swift_task_alloc();
    *(v14 + 192) = v44;
    *v44 = v14;
    OUTLINED_FUNCTION_35_7(v44);
    OUTLINED_FUNCTION_76();

    return v48(v45, v46, v47, v48, v49, v50, v51, v52, a9, a10, v53, a12, a13, a14);
  }
}

uint64_t sub_1DCDE421C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = *(v1 + 192);
  v3 = *v0;
  OUTLINED_FUNCTION_27();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1DCDE4300()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 184);

  v2 = *(v0 + 176);
  v3 = *(v0 + 128);
  v4 = *(v0 + 88);
  *v4 = *(v0 + 200);
  *(v4 + 8) = v2;

  OUTLINED_FUNCTION_43();

  return v5();
}

uint64_t sub_1DCDE4374()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 128);

  OUTLINED_FUNCTION_29();
  v3 = *(v0 + 168);

  return v2();
}

uint64_t sub_1DCDE43D0(uint64_t a1, uint64_t a2)
{
  v3[10] = a2;
  v3[11] = v2;
  v3[9] = a1;
  v3[12] = *v2;
  return OUTLINED_FUNCTION_0_12(sub_1DCDE4414);
}

uint64_t sub_1DCDE4554()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32_1();
  v4 = v3;
  OUTLINED_FUNCTION_12_0();
  *v5 = v4;
  v7 = *(v6 + 104);
  v8 = *v2;
  OUTLINED_FUNCTION_27();
  *v9 = v8;
  v4[14] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_76_9();
    v10 = v4[8];

    v11 = OUTLINED_FUNCTION_15_0();

    return MEMORY[0x1EEE6DFA0](v11, v12, v13);
  }

  else
  {
    OUTLINED_FUNCTION_76_9();
    v14 = v4[8];

    v15 = swift_task_alloc();
    v4[15] = v15;
    *v15 = v8;
    v16 = OUTLINED_FUNCTION_37_23(v15);

    return sub_1DCDE47BC(v16, v17);
  }
}

uint64_t sub_1DCDE46DC()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = *(v1 + 120);
  v3 = *v0;
  OUTLINED_FUNCTION_27();
  *v4 = v3;

  OUTLINED_FUNCTION_43();

  return v5();
}

uint64_t sub_1DCDE47BC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for SiriKitEventPayload(0);
  v3[5] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DCDE4854, 0, 0);
}

uint64_t sub_1DCDE4854(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_30_25();
  OUTLINED_FUNCTION_125();
  v14 = v12[5];
  v13 = v12[6];
  v15 = v12[4];
  v16 = v12[2];
  OUTLINED_FUNCTION_114_2((v15 + *(*v15 + 112)));
  type metadata accessor for SiriKitEvent(0);
  sub_1DCB0DF6C(v16, v13);
  v17 = v15 + *(*v15 + 104);
  v18 = *(v17 + 8);
  *(v13 + 40) = 0;
  *(v13 + 48) = 0;
  *(v13 + 32) = v18;
  v19 = *(v17 + 16);
  v20 = *(v17 + 24);
  v21 = *(v17 + 32);
  LOBYTE(v17) = *(v17 + 40);
  *(v13 + 56) = v19;
  *(v13 + 64) = v20;
  *(v13 + 72) = v21;
  *(v13 + 80) = v17;
  swift_storeEnumTagMultiPayload();
  v22 = v18;

  v23 = OUTLINED_FUNCTION_59_4();
  v12[7] = SiriKitEvent.__allocating_init(_:builder:)(v23, v24);
  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_25_1();
  v38 = v25 + *v25;
  v27 = *(v26 + 4);
  v28 = swift_task_alloc();
  v12[8] = v28;
  *v28 = v12;
  OUTLINED_FUNCTION_35_7(v28);
  OUTLINED_FUNCTION_96_0();

  return v32(v29, v30, v31, v32, v33, v34, v35, v36, a9, v38, a11, a12);
}

uint64_t sub_1DCDE49F4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = *(v1 + 64);
  v3 = *(v1 + 56);
  v4 = *v0;
  OUTLINED_FUNCTION_27();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1DCDE4AF4()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 16);
  *(v0 + 88) = 7477;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2468, &unk_1DD0E97C0);
  OUTLINED_FUNCTION_41_4();
  v2 = swift_allocObject();
  *(v0 + 72) = v2;
  *(v2 + 16) = xmmword_1DD0E07C0;
  sub_1DCB0DF6C(v1, v2 + 32);
  v3 = swift_task_alloc();
  *(v0 + 80) = v3;
  *v3 = v0;
  v3[1] = sub_1DCDE4BE8;
  v4 = *(v0 + 32);
  v5 = OUTLINED_FUNCTION_55_2(*(v0 + 24));

  return sub_1DCDE5574(v5, (v0 + 88), v6, v2, 0, 0);
}

uint64_t sub_1DCDE4BE8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = v1[10];
  v3 = v1[9];
  v4 = v1[6];
  v5 = *v0;
  OUTLINED_FUNCTION_27();
  *v6 = v5;

  OUTLINED_FUNCTION_29();

  return v7();
}

uint64_t sub_1DCDE4D00(uint64_t a1, uint64_t a2)
{
  v3[10] = a2;
  v3[11] = v2;
  v3[9] = a1;
  v3[12] = *v2;
  return OUTLINED_FUNCTION_0_12(sub_1DCDE4D44);
}

uint64_t sub_1DCDE4E84()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32_1();
  v4 = v3;
  OUTLINED_FUNCTION_12_0();
  *v5 = v4;
  v7 = *(v6 + 104);
  v8 = *v2;
  OUTLINED_FUNCTION_27();
  *v9 = v8;
  v4[14] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_76_9();
    v10 = v4[8];

    v11 = OUTLINED_FUNCTION_15_0();

    return MEMORY[0x1EEE6DFA0](v11, v12, v13);
  }

  else
  {
    OUTLINED_FUNCTION_76_9();
    v14 = v4[8];

    v15 = swift_task_alloc();
    v4[15] = v15;
    *v15 = v8;
    v16 = OUTLINED_FUNCTION_37_23(v15);

    return sub_1DCDE47BC(v16, v17);
  }
}

uint64_t sub_1DCDE500C(uint64_t a1, uint64_t a2)
{
  v3[10] = a2;
  v3[11] = v2;
  v3[9] = a1;
  v3[12] = *v2;
  return OUTLINED_FUNCTION_0_12(sub_1DCDE5050);
}

uint64_t sub_1DCDE5190(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v2[8] = *v1;
  return OUTLINED_FUNCTION_0_12(sub_1DCDE51D0);
}

uint64_t sub_1DCDE51D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_30_25();
  OUTLINED_FUNCTION_125();
  v14 = v12[7];
  v13 = v12[8];
  OUTLINED_FUNCTION_77();
  v16 = *(v15 + 96);
  v18 = (v14 + *(v17 + 104));
  v19 = *v18;
  v20 = v18[1];
  OUTLINED_FUNCTION_22_25(v18);
  v22 = *(v21 + 80);
  v23 = *(v21 + 88);
  v24 = *(v23 + 96);
  v39 = v23 + 96;

  v38 = v24 + *v24;
  v25 = v24[1];
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  v12[9] = v26;
  *v26 = v27;
  OUTLINED_FUNCTION_64_10(v26);
  OUTLINED_FUNCTION_96_0();

  return v34(v28, v29, v30, v31, v32, v33, v34, v35, v38, v39, a11, a12);
}

uint64_t sub_1DCDE5318()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v6 = *(v5 + 72);
  v7 = *v1;
  OUTLINED_FUNCTION_27();
  *v8 = v7;
  *(v3 + 80) = v0;

  if (v0)
  {
    v9 = *(v3 + 24);

    v10 = OUTLINED_FUNCTION_15_0();

    return MEMORY[0x1EEE6DFA0](v10, v11, v12);
  }

  else
  {
    v13 = *(v3 + 24);

    *(v3 + 41) = 9015;
    v14 = v3 + 41;
    v15 = swift_task_alloc();
    *(v14 + 47) = v15;
    *v15 = v7;
    v15[1] = sub_1DCDE5494;
    v16 = *(v14 + 15);
    v17 = OUTLINED_FUNCTION_55_2(*(v14 + 7));

    return sub_1DCDE5574(v17, v14, v18, 0, 0, 0);
  }
}

uint64_t sub_1DCDE5494()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = *(v1 + 88);
  v3 = *v0;
  OUTLINED_FUNCTION_27();
  *v4 = v3;

  OUTLINED_FUNCTION_43();

  return v5();
}

uint64_t sub_1DCDE5574(uint64_t a1, _BYTE *a2, _BYTE *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 40) = a6;
  *(v7 + 48) = v6;
  *(v7 + 24) = a4;
  *(v7 + 32) = a5;
  *(v7 + 16) = a1;
  v10 = type metadata accessor for SiriKitEventPayload(0);
  *(v7 + 56) = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  *(v7 + 64) = swift_task_alloc();
  *(v7 + 88) = *a2;
  *(v7 + 89) = *a3;

  return MEMORY[0x1EEE6DFA0](sub_1DCDE5630, 0, 0);
}

uint64_t sub_1DCDE5630()
{
  v1 = *(v0 + 16);
  v2 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  if (OUTLINED_FUNCTION_109_1())
  {
    v20 = *(v0 + 89);
    v3 = *(v0 + 88);
    v5 = *(v0 + 56);
    v4 = *(v0 + 64);
    v7 = *(v0 + 40);
    v6 = *(v0 + 48);
    v9 = *(v0 + 24);
    v8 = *(v0 + 32);
    v10 = (v6 + *(*v6 + 112));
    v21 = v10[4];
    __swift_project_boxed_opaque_existential_1(v10, v10[3]);
    type metadata accessor for SiriKitEvent(0);
    *v4 = v3;
    v11 = v6 + *(*v6 + 104);
    v12 = [*(v11 + 8) typeName];
    v13 = sub_1DD0DDFBC();
    v15 = v14;

    *(v4 + 8) = v13;
    *(v4 + 16) = v15;
    *(v4 + 24) = *v11;
    *(v4 + 32) = 0u;
    *(v4 + 48) = 0u;
    *(v4 + 64) = 0u;
    *(v4 + 80) = v9;
    *(v4 + 88) = 0u;
    *(v4 + 104) = 0u;
    *(v4 + 120) = 0u;
    v16 = *(v11 + 24);
    *(v4 + 136) = *(v11 + 16);
    *(v4 + 144) = v16;
    *(v4 + 152) = 0;
    *(v4 + 160) = 0;
    *(v4 + 168) = v8;
    *(v4 + 176) = v7;
    *(v4 + 184) = v20;
    swift_storeEnumTagMultiPayload();

    sub_1DD0DCF8C();
  }

  v17 = *(v0 + 64);

  OUTLINED_FUNCTION_29();

  return v18();
}