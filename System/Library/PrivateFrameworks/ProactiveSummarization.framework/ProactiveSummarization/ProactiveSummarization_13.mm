void *sub_231DBB55C(void *result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
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

      return OUTLINED_FUNCTION_5_5(result, (a2 - 1));
    }

    *(result + 16) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_5_5(result, (a2 - 1));
    }
  }

  return result;
}

uint64_t sub_231DBB5CC()
{
  result = sub_231E0F950();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for EntityKind();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return OUTLINED_FUNCTION_71_5();
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_22ProactiveSummarization0B8PipelineC7RequestV0D4TypeO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_231DBB66C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

void *sub_231DBB6BC(void *result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    result[1] = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_5_5(result, a2);
    }
  }

  return result;
}

void *sub_231DBB70C(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for SummarizationPipeline.Request.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_108(-1);
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return OUTLINED_FUNCTION_108((*a1 | (v4 << 8)) - 3);
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

      return OUTLINED_FUNCTION_108((*a1 | (v4 << 8)) - 3);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_108((*a1 | (v4 << 8)) - 3);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_108(v8);
}

_BYTE *storeEnumTagSinglePayload for SummarizationPipeline.Request.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
          result = OUTLINED_FUNCTION_18_1(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_231DBB8AC(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_108(-1);
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
      return OUTLINED_FUNCTION_108((*a1 | (v4 << 8)) - 2);
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

      return OUTLINED_FUNCTION_108((*a1 | (v4 << 8)) - 2);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_108((*a1 | (v4 << 8)) - 2);
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

  return OUTLINED_FUNCTION_108(v8);
}

_BYTE *sub_231DBB934(_BYTE *result, unsigned int a2, unsigned int a3)
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
          result = OUTLINED_FUNCTION_18_1(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_231DBBA20()
{
  result = qword_27DD844F0[0];
  if (!qword_27DD844F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD844F0);
  }

  return result;
}

unint64_t sub_231DBBA78()
{
  result = qword_27DD84700[0];
  if (!qword_27DD84700[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD84700);
  }

  return result;
}

unint64_t sub_231DBBAD0()
{
  result = qword_27DD84910[0];
  if (!qword_27DD84910[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD84910);
  }

  return result;
}

unint64_t sub_231DBBB28()
{
  result = qword_27DD84A20;
  if (!qword_27DD84A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD84A20);
  }

  return result;
}

unint64_t sub_231DBBB80()
{
  result = qword_27DD84A28[0];
  if (!qword_27DD84A28[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD84A28);
  }

  return result;
}

unint64_t sub_231DBBBD8()
{
  result = qword_27DD84AB0;
  if (!qword_27DD84AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD84AB0);
  }

  return result;
}

unint64_t sub_231DBBC30()
{
  result = qword_27DD84AB8[0];
  if (!qword_27DD84AB8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD84AB8);
  }

  return result;
}

unint64_t sub_231DBBC88()
{
  result = qword_27DD84B40;
  if (!qword_27DD84B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD84B40);
  }

  return result;
}

unint64_t sub_231DBBCE0()
{
  result = qword_27DD84B48[0];
  if (!qword_27DD84B48[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD84B48);
  }

  return result;
}

unint64_t sub_231DBBD38()
{
  result = qword_27DD84BD0;
  if (!qword_27DD84BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD84BD0);
  }

  return result;
}

unint64_t sub_231DBBD90()
{
  result = qword_27DD84BD8[0];
  if (!qword_27DD84BD8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD84BD8);
  }

  return result;
}

uint64_t sub_231DBBDEC()
{
  OUTLINED_FUNCTION_18();
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_38(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_32(v4);

  return sub_231DB4CDC();
}

uint64_t sub_231DBBECC()
{
  OUTLINED_FUNCTION_29();
  v1 = type metadata accessor for EntityKind();
  OUTLINED_FUNCTION_6(v1);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  v6 = type metadata accessor for SummarizationPipeline.Request();
  OUTLINED_FUNCTION_6(v6);
  v9 = *(v8 + 64) + ((v3 + v5 + *(v7 + 80)) & ~*(v7 + 80));
  OUTLINED_FUNCTION_158_2();
  v11 = *(v0 + v10);
  v12 = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_17(v12);
  *v13 = v14;
  v13[1] = sub_231CC6BF8;

  return sub_231DB2C5C();
}

void sub_231DBC00C()
{
  v1 = type metadata accessor for SummarizationPipeline.Request();
  OUTLINED_FUNCTION_6(v1);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  v6 = type metadata accessor for EntityKind();
  OUTLINED_FUNCTION_47(v6);
  v8 = v0 + ((v3 + v5 + *(v7 + 80)) & ~*(v7 + 80));

  sub_231DB4174();
}

uint64_t sub_231DBC0CC()
{
  OUTLINED_FUNCTION_18();
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_38(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_32(v3);

  return sub_231DB4498();
}

uint64_t sub_231DBC180()
{
  OUTLINED_FUNCTION_300_0();
  v2 = v1(0);
  OUTLINED_FUNCTION_12(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_59_0();
  v6(v5);
  return v0;
}

uint64_t sub_231DBC1D8()
{
  OUTLINED_FUNCTION_300_0();
  v2 = v1(0);
  OUTLINED_FUNCTION_12(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_59_0();
  v6(v5);
  return v0;
}

uint64_t sub_231DBC230()
{
  OUTLINED_FUNCTION_29();
  v1 = type metadata accessor for ConversationDeletionInfo(0);
  OUTLINED_FUNCTION_47(v1);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v0 + 32);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_38(v5);
  *v6 = v7;
  v6[1] = sub_231CC6BF8;

  return sub_231DB9900();
}

uint64_t sub_231DBC2FC()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_116_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_17(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_7(v1);

  return v4(v3);
}

uint64_t sub_231DBC3B8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_22_9(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_231DBC40C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConversationDeletionInfo(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_231DBC470()
{
  OUTLINED_FUNCTION_29();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_38(v4);
  *v5 = v6;
  OUTLINED_FUNCTION_32(v5);

  return sub_231DB79F8();
}

uint64_t sub_231DBC50C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_231DBC554()
{
  OUTLINED_FUNCTION_29();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_17(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_128_3(v5);

  return sub_231DACBD8(v7, v8, v9, v10);
}

uint64_t sub_231DBC5E8()
{
  v1 = OUTLINED_FUNCTION_477();
  v3 = v2(v1);
  OUTLINED_FUNCTION_22_9(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t OUTLINED_FUNCTION_10_19()
{
  v1 = v0[46];
  v2 = v0[42];
  v3 = v0[34];
  v4 = *(v0[43] + 32);
  return v0[44];
}

uint64_t OUTLINED_FUNCTION_12_16()
{
  v1 = v0[46];
  v2 = v0[39];
  v3 = v0[34];
  v4 = *(v0[40] + 32);
  return v0[41];
}

uint64_t OUTLINED_FUNCTION_13_16()
{
  *(v0 + 464) = *(v2 + 8);
  *(v0 + 472) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  return v1;
}

void OUTLINED_FUNCTION_17_9()
{
  v2 = v0[58];
  v1 = v0[59];
  v3 = v0[56];
  v4 = v0[52];
  v5 = v0[49];
  v6 = v0[47];
}

uint64_t OUTLINED_FUNCTION_19_10@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[52];
  v4 = v1[49];
  v5 = v1[50];
  v6 = v1[47];
  v7 = v1[48];
  v9 = v1[45];
  v8 = v1[46];
  v1[57] = *(a1 + 8);
}

uint64_t OUTLINED_FUNCTION_24_11()
{
  v3 = v0[52];
  v2 = v0[53];
  v4 = v0[49];
  v5 = v0[46];
  v6 = v0[44];
  v7 = v0[41];
  v8 = v0[38];
  v9 = v0[35];
}

uint64_t OUTLINED_FUNCTION_37_10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X5>, uint64_t a4@<X8>)
{

  return MEMORY[0x2821FD720](a1, 11, 2, a2, a4 | 0x8000000000000000, a3, 50, 2);
}

uint64_t OUTLINED_FUNCTION_40_9()
{
  v3 = v0[38];
  v4 = v0[37];
  v5 = v0[36];
  v6 = v0[35];
}

uint64_t OUTLINED_FUNCTION_56_10(uint64_t *a1)
{
  result = *a1;
  v3 = a1[1];
  return result;
}

void OUTLINED_FUNCTION_81_6()
{

  JUMPOUT(0x23837E1D0);
}

void OUTLINED_FUNCTION_94_6()
{
  v2 = v0[58];
  v1 = v0[59];
  v3 = v0[56];
  v4 = v0[52];
}

uint64_t OUTLINED_FUNCTION_95_6@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{

  return sub_231D593EC(a1, a2, 0, 0, 0, 0, 0, a3);
}

uint64_t OUTLINED_FUNCTION_98_2()
{
  v3 = *(v1 + 8);
  result = v0;
  v5 = *(v2 - 128);
  return result;
}

uint64_t OUTLINED_FUNCTION_99_4()
{
  v3 = v0[37];
  v2 = v0[38];
  v5 = v0[35];
  v4 = v0[36];
  v7 = v0[33];
  v6 = v0[34];
  v9 = v0[29];
  v8 = v0[30];
  v10 = v0[26];
}

uint64_t OUTLINED_FUNCTION_115_6@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 + 8);
  v4 = *(v1 + 16);
}

uint64_t OUTLINED_FUNCTION_126_1()
{

  return sub_231E0F8B0();
}

uint64_t OUTLINED_FUNCTION_134_3()
{

  return sub_231DDC58C(13, v0);
}

uint64_t OUTLINED_FUNCTION_137_1()
{

  return sub_231DDBE24(13, v0);
}

uint64_t OUTLINED_FUNCTION_138_1()
{

  return sub_231DBC180();
}

uint64_t OUTLINED_FUNCTION_139_1()
{

  return sub_231DDC58C(15, v0);
}

uint64_t OUTLINED_FUNCTION_148_1()
{

  return sub_231E11ED0();
}

uint64_t OUTLINED_FUNCTION_152_1()
{
  v3 = v0[40];
  v2 = v0[41];
  v4 = v0[39];

  return sub_231DB0818();
}

uint64_t OUTLINED_FUNCTION_153_2()
{

  return sub_231E11FD0();
}

uint64_t OUTLINED_FUNCTION_180_1()
{
  v3 = v0[40];
  v2 = v0[41];
  v4 = v0[39];
  v5 = v0[31];

  return sub_231DB0818();
}

uint64_t OUTLINED_FUNCTION_181_0()
{
  v2 = *(v0 - 128);

  return sub_231E11FD0();
}

uint64_t OUTLINED_FUNCTION_183_1(float a1)
{
  *v1 = a1;
  v5 = *v2;
  v4 = v2[1];
}

uint64_t OUTLINED_FUNCTION_184_0()
{

  return sub_231E11F30();
}

uint64_t sub_231DBCD4C(uint64_t a1)
{
  if (a1 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_231DBCD74(uint64_t a1, char a2)
{
  sub_231E12220();
  MEMORY[0x23837D730](a2 & 1);
  return sub_231E12250();
}

uint64_t sub_231DBCDB8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_231DBCD4C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_231DBCDE4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_231DBCD64(*v1);
  *a1 = result;
  return result;
}

double sub_231DBCE10(uint64_t a1, uint64_t a2, char a3)
{
  v15[1] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 16);
  v6 = *(a2 + 16);
  if ((a3 & 1) == 0)
  {
    if (v5 == v6)
    {
      v15[0] = NAN;
      vDSP_svesqD((a1 + 32), 1, v15, v5);
      v10 = v15[0];
      v15[0] = NAN;
      vDSP_svesqD((a2 + 32), 1, v15, v5);
      v11 = v15[0];
      v12 = sqrt(v10);
      v13 = sqrt(v11);
      result = 1.0 - sub_231DBCF90(a1, a2, MEMORY[0x277CB8760]) / (v12 * v13 + 2.22044605e-16);
LABEL_9:
      v14 = *MEMORY[0x277D85DE8];
      return result;
    }

LABEL_8:
    result = INFINITY;
    goto LABEL_9;
  }

  if (v5 != v6)
  {
    goto LABEL_8;
  }

  v7 = sub_231DBCF90(a1, a2, MEMORY[0x277CB8750]);
  v8 = *MEMORY[0x277D85DE8];

  return sqrt(v7);
}

double sub_231DBCF90(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t, void *))
{
  v5[1] = *MEMORY[0x277D85DE8];
  if (*(a1 + 16) != *(a2 + 16))
  {
    __break(1u);
  }

  v5[0] = 0x7FF8000000000000;
  a3(a1 + 32, 1, a2 + 32, 1, v5);
  result = *v5;
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_231DBD01C()
{
  result = qword_27DD75310;
  if (!qword_27DD75310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD75310);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DistanceMetric(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_231DBD14C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_27DD74AD0, &qword_231E16C40);
  v1 = *(*(v0 - 8) + 64);
  v2 = MEMORY[0x28223BE20](v0 - 8);
  v4 = &aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &aBlock - v5;
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  v8 = [BiomeLibrary() CarPlay];
  swift_unknownObjectRelease();
  v9 = [v8 Connected];
  swift_unknownObjectRelease();
  v10 = sub_231E115F0();
  v11 = sub_231E0F950();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v11);
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v11);
  v12 = objc_allocWithZone(MEMORY[0x277CF1A50]);
  v13 = sub_231D7076C(v6, v4, 1, 1, 0);
  v14 = [v9 publisherWithUseCase:v10 options:v13];

  v24 = sub_231DBD454;
  v25 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v21 = 1107296256;
  v22 = sub_231D2F010;
  v23 = &block_descriptor_11;
  v15 = _Block_copy(&aBlock);
  v24 = sub_231DBD650;
  v25 = v7;
  aBlock = MEMORY[0x277D85DD0];
  v21 = 1107296256;
  v22 = sub_231D70A18;
  v23 = &block_descriptor_3_2;
  v16 = _Block_copy(&aBlock);

  v17 = [v14 sinkWithCompletion:v15 receiveInput:v16];
  _Block_release(v16);
  _Block_release(v15);

  swift_beginAccess();
  v18 = *(v7 + 16);

  return v18;
}

id sub_231DBD454(void *a1)
{
  v2 = sub_231E10E30();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [a1 error];
  if (result)
  {
    v8 = result;
    v9 = sub_231DC4AB8();
    (*(v3 + 16))(v6, v9, v2);
    v10 = v8;
    v11 = sub_231E10E10();
    v12 = sub_231E11AD0();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      v15 = v10;
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 4) = v16;
      *v14 = v16;
      _os_log_impl(&dword_231CAE000, v11, v12, "Unable to access CarPlay Biome stream: %@", v13, 0xCu);
      sub_231CC340C(v14);
      MEMORY[0x23837E1D0](v14, -1, -1);
      MEMORY[0x23837E1D0](v13, -1, -1);
    }

    else
    {
      v15 = v11;
      v11 = v10;
    }

    return (*(v3 + 8))(v6, v2);
  }

  return result;
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_231DBD650(void *a1)
{
  v2 = [a1 eventBody];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 starting];
  }

  else
  {
    v4 = 0;
  }

  result = swift_beginAccess();
  *(v1 + 16) = v4;
  return result;
}

void sub_231DBD6D4()
{
  OUTLINED_FUNCTION_118();
  v76 = v0;
  v3 = sub_231E10AE0();
  v4 = OUTLINED_FUNCTION_24(v3);
  v74 = v5;
  v75 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_5_17();
  v73 = v8;
  OUTLINED_FUNCTION_3_0();
  v9 = sub_231E10BE0();
  v10 = OUTLINED_FUNCTION_24(v9);
  v71 = v11;
  v72 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_5_17();
  v70 = v14;
  OUTLINED_FUNCTION_3_0();
  v15 = sub_231E10A30();
  v16 = OUTLINED_FUNCTION_24(v15);
  v69 = v17;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_17_10();
  v20 = sub_231E106A0();
  v21 = OUTLINED_FUNCTION_24(v20);
  v23 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_16_12();
  v26 = sub_231E10340();
  v27 = OUTLINED_FUNCTION_24(v26);
  v29 = v28;
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_4_1();
  v34 = v33 - v32;
  v35 = type metadata accessor for EntityKind();
  v36 = OUTLINED_FUNCTION_12(v35);
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_4_1();
  v41 = v40 - v39;
  sub_231CD3AE0(v76, v40 - v39);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      (*(v23 + 32))(v2, v41, v20);
      OUTLINED_FUNCTION_20_15();
      sub_231E11D70();

      OUTLINED_FUNCTION_18_11();
      *&v77 = v66;
      *(&v77 + 1) = v65;
      v67 = sub_231E10690();
      MEMORY[0x23837CC20](v67);

      v68 = *(v23 + 8);
      v58 = OUTLINED_FUNCTION_101_1();
      goto LABEL_9;
    case 2u:
      (*(v69 + 32))(v1, v41, v15);
      OUTLINED_FUNCTION_20_15();
      sub_231E11D70();

      OUTLINED_FUNCTION_18_11();
      *&v77 = v55 + 5;
      *(&v77 + 1) = v54;
      v56 = sub_231E10A20();
      MEMORY[0x23837CC20](v56);

      v57 = *(v69 + 8);
      v58 = OUTLINED_FUNCTION_54_0();
LABEL_9:
      v59(v58);
      break;
    case 3u:
      v47 = v70;
      v46 = v71;
      v60 = OUTLINED_FUNCTION_63_7();
      v49 = v72;
      v61(v60);
      OUTLINED_FUNCTION_20_15();
      sub_231E11D70();

      OUTLINED_FUNCTION_18_11();
      *&v77 = v63 + 18;
      *(&v77 + 1) = v62;
      v53 = sub_231E10BC0();
      goto LABEL_6;
    case 4u:
      v47 = v73;
      v46 = v74;
      v48 = OUTLINED_FUNCTION_63_7();
      v49 = v75;
      v50(v48);
      OUTLINED_FUNCTION_20_15();
      sub_231E11D70();

      OUTLINED_FUNCTION_18_11();
      *&v77 = v52 + 9;
      *(&v77 + 1) = v51;
      v53 = sub_231E10AD0();
LABEL_6:
      MEMORY[0x23837CC90](v53);

      v64 = sub_231E120D0();
      MEMORY[0x23837CC20](v64);

      (*(v46 + 8))(v47, v49);
      break;
    default:
      v42 = *(v29 + 32);
      v43 = OUTLINED_FUNCTION_44_11();
      v44(v43);
      OUTLINED_FUNCTION_20_15();
      sub_231E11D70();

      strcpy(&v77, "Mail with id: ");
      HIBYTE(v77) = -18;
      v45 = sub_231E10000();
      MEMORY[0x23837CC20](v45);

      (*(v29 + 8))(v34, v26);
      break;
  }

  OUTLINED_FUNCTION_113();
}

uint64_t type metadata accessor for EntityKind()
{
  result = qword_2814CE230;
  if (!qword_2814CE230)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_231DBDC24()
{
  sub_231DBDCD8();
  v3 = v0;

  MEMORY[0x23837CC20](45, 0xE100000000000000);

  sub_231DBDFFC();

  v1 = OUTLINED_FUNCTION_44_11();
  MEMORY[0x23837CC20](v1);

  return v3;
}

void sub_231DBDCD8()
{
  OUTLINED_FUNCTION_118();
  OUTLINED_FUNCTION_54_8();
  v0 = sub_231E10AE0();
  v1 = OUTLINED_FUNCTION_24(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_5_17();
  OUTLINED_FUNCTION_3_0();
  v4 = sub_231E10BE0();
  v5 = OUTLINED_FUNCTION_24(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_22_10();
  v8 = sub_231E10A30();
  v9 = OUTLINED_FUNCTION_24(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_17_10();
  v12 = sub_231E106A0();
  v13 = OUTLINED_FUNCTION_24(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_16_12();
  v16 = sub_231E10340();
  v17 = OUTLINED_FUNCTION_24(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_21_10();
  v20 = type metadata accessor for EntityKind();
  v21 = OUTLINED_FUNCTION_12(v20);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_33_14(v24);
  OUTLINED_FUNCTION_44_11();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v39 = OUTLINED_FUNCTION_9_17();
      v40(v39);
      sub_231E10690();
      OUTLINED_FUNCTION_5_24();
      v27 = OUTLINED_FUNCTION_101_1();
      goto LABEL_7;
    case 2u:
      v33 = OUTLINED_FUNCTION_8_19();
      v34(v33);
      sub_231E10A20();
      OUTLINED_FUNCTION_5_24();
      v27 = OUTLINED_FUNCTION_54_0();
      goto LABEL_7;
    case 3u:
      v35 = OUTLINED_FUNCTION_7_22();
      v36(v35);
      sub_231E10BC0();
      v37 = OUTLINED_FUNCTION_11_18();
      v38(v37);
      goto LABEL_8;
    case 4u:
      v29 = OUTLINED_FUNCTION_4_22();
      v30(v29);
      sub_231E10AD0();
      v31 = OUTLINED_FUNCTION_12_17();
      v32(v31);
      goto LABEL_8;
    default:
      v25 = OUTLINED_FUNCTION_10_20();
      v26(v25);
      sub_231E10000();
      OUTLINED_FUNCTION_5_24();
      v27 = OUTLINED_FUNCTION_258();
LABEL_7:
      v28(v27);
LABEL_8:
      OUTLINED_FUNCTION_38_11();
      OUTLINED_FUNCTION_113();
      return;
  }
}

void sub_231DBDFFC()
{
  OUTLINED_FUNCTION_118();
  OUTLINED_FUNCTION_54_8();
  v0 = sub_231E10AE0();
  v1 = OUTLINED_FUNCTION_24(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_5_17();
  OUTLINED_FUNCTION_3_0();
  v4 = sub_231E10BE0();
  v5 = OUTLINED_FUNCTION_24(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_22_10();
  v8 = sub_231E10A30();
  v9 = OUTLINED_FUNCTION_24(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_17_10();
  v12 = sub_231E106A0();
  v13 = OUTLINED_FUNCTION_24(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_16_12();
  v16 = sub_231E10340();
  v17 = OUTLINED_FUNCTION_24(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_21_10();
  v20 = type metadata accessor for EntityKind();
  v21 = OUTLINED_FUNCTION_12(v20);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_33_14(v24);
  OUTLINED_FUNCTION_44_11();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v39 = OUTLINED_FUNCTION_9_17();
      v40(v39);
      sub_231E10660();
      OUTLINED_FUNCTION_5_24();
      v27 = OUTLINED_FUNCTION_101_1();
      goto LABEL_7;
    case 2u:
      v33 = OUTLINED_FUNCTION_8_19();
      v34(v33);
      sub_231E109E0();
      OUTLINED_FUNCTION_5_24();
      v27 = OUTLINED_FUNCTION_54_0();
      goto LABEL_7;
    case 3u:
      v35 = OUTLINED_FUNCTION_7_22();
      v36(v35);
      sub_231E10B90();
      v37 = OUTLINED_FUNCTION_11_18();
      v38(v37);
      goto LABEL_8;
    case 4u:
      v29 = OUTLINED_FUNCTION_4_22();
      v30(v29);
      sub_231E10AB0();
      v31 = OUTLINED_FUNCTION_12_17();
      v32(v31);
      goto LABEL_8;
    default:
      v25 = OUTLINED_FUNCTION_10_20();
      v26(v25);
      sub_231E102F0();
      OUTLINED_FUNCTION_5_24();
      v27 = OUTLINED_FUNCTION_258();
LABEL_7:
      v28(v27);
LABEL_8:
      OUTLINED_FUNCTION_38_11();
      OUTLINED_FUNCTION_113();
      return;
  }
}

void sub_231DBE320()
{
  OUTLINED_FUNCTION_118();
  OUTLINED_FUNCTION_54_8();
  v0 = sub_231E10AE0();
  v1 = OUTLINED_FUNCTION_24(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_5_17();
  OUTLINED_FUNCTION_3_0();
  v4 = sub_231E10BE0();
  v5 = OUTLINED_FUNCTION_24(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_22_10();
  v8 = sub_231E10A30();
  v9 = OUTLINED_FUNCTION_24(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_17_10();
  v12 = sub_231E106A0();
  v13 = OUTLINED_FUNCTION_24(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_16_12();
  v16 = sub_231E10340();
  v17 = OUTLINED_FUNCTION_24(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_21_10();
  v20 = type metadata accessor for EntityKind();
  v21 = OUTLINED_FUNCTION_12(v20);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_33_14(v24);
  OUTLINED_FUNCTION_44_11();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v39 = OUTLINED_FUNCTION_9_17();
      v40(v39);
      sub_231E10580();
      OUTLINED_FUNCTION_5_24();
      v27 = OUTLINED_FUNCTION_101_1();
      goto LABEL_7;
    case 2u:
      v33 = OUTLINED_FUNCTION_8_19();
      v34(v33);
      sub_231E10960();
      OUTLINED_FUNCTION_5_24();
      v27 = OUTLINED_FUNCTION_54_0();
      goto LABEL_7;
    case 3u:
      v35 = OUTLINED_FUNCTION_7_22();
      v36(v35);
      sub_231E10B60();
      v37 = OUTLINED_FUNCTION_11_18();
      v38(v37);
      goto LABEL_8;
    case 4u:
      v29 = OUTLINED_FUNCTION_4_22();
      v30(v29);
      sub_231E10A70();
      v31 = OUTLINED_FUNCTION_12_17();
      v32(v31);
      goto LABEL_8;
    default:
      v25 = OUTLINED_FUNCTION_10_20();
      v26(v25);
      sub_231E10140();
      OUTLINED_FUNCTION_5_24();
      v27 = OUTLINED_FUNCTION_258();
LABEL_7:
      v28(v27);
LABEL_8:
      OUTLINED_FUNCTION_38_11();
      OUTLINED_FUNCTION_113();
      return;
  }
}

uint64_t sub_231DBE644(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = sub_231E10A30();
  v6[8] = v7;
  OUTLINED_FUNCTION_6(v7);
  v6[9] = v8;
  v10 = *(v9 + 64);
  v6[10] = OUTLINED_FUNCTION_55();
  v11 = sub_231E106A0();
  v6[11] = v11;
  OUTLINED_FUNCTION_6(v11);
  v6[12] = v12;
  v14 = *(v13 + 64);
  v6[13] = OUTLINED_FUNCTION_55();
  v15 = sub_231E10340();
  v6[14] = v15;
  OUTLINED_FUNCTION_6(v15);
  v6[15] = v16;
  v18 = *(v17 + 64);
  v6[16] = OUTLINED_FUNCTION_55();
  v19 = type metadata accessor for EntityKind();
  v6[17] = v19;
  v20 = *(*(v19 - 8) + 64);
  v6[18] = OUTLINED_FUNCTION_55();
  v21 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v21, v22, v23);
}

uint64_t sub_231DBE7B4()
{
  v1 = v0[17];
  sub_231CD3AE0(v0[7], v0[18]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v3 = v0[18];
  switch(EnumCaseMultiPayload)
  {
    case 1:
      (*(v0[12] + 32))(v0[13], v3, v0[11]);
      v32 = swift_task_alloc();
      v0[22] = v32;
      *v32 = v0;
      v32[1] = sub_231DBEBF0;
      v33 = v0[13];
      v34 = v0[6];
      OUTLINED_FUNCTION_62_5();
      OUTLINED_FUNCTION_66_0();

      return sub_231D6ED64(v35, v36, v37, v38);
    case 2:
      v5 = v0[9];
      v4 = v0[10];
      v6 = v0[8];
      v7 = v0[6];
      v8 = v0[2];
      (*(v5 + 32))(v4, v3, v6);
      v9 = sub_231DF2ACC(v8, v7);
      v11 = v10;
      v13 = v12;
      sub_231D0D3F8(v9, v10, v12);
      sub_231CBA16C(v9, v11, v13);
      (*(v5 + 8))(v4, v6);
      goto LABEL_4;
    case 3:
    case 4:
      sub_231CF1D74(v0[18]);
LABEL_4:
      v14 = v0[18];
      v15 = v0[16];
      v16 = v0[13];
      v17 = v0[10];

      v18 = v0[1];
      OUTLINED_FUNCTION_66_0();

      __asm { BRAA            X2, X16 }

      return result;
    default:
      (*(v0[15] + 32))(v0[16], v3, v0[14]);
      v21 = swift_task_alloc();
      v0[19] = v21;
      *v21 = v0;
      v21[1] = sub_231DBEA30;
      v22 = v0[16];
      v23 = v0[5];
      v24 = v0[6];
      OUTLINED_FUNCTION_62_5();
      OUTLINED_FUNCTION_66_0();

      return sub_231DC5A08(v25, v26, v27, v28, v29);
  }
}

uint64_t sub_231DBEA30(uint64_t a1, uint64_t a2, char a3)
{
  v4 = *v3;
  v5 = *(*v3 + 152);
  v10 = *v3;
  *(v4 + 160) = a1;
  *(v4 + 168) = a2;
  *(v4 + 200) = a3;

  v6 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

void sub_231DBEB2C()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 168);
  v4 = *(v0 + 120);
  v3 = *(v0 + 128);
  v5 = *(v0 + 112);
  v6 = *(v0 + 200);
  v7 = OUTLINED_FUNCTION_37_11();
  sub_231D0D3F8(v7, v8, v9);
  v10 = OUTLINED_FUNCTION_37_11();
  sub_231CBA16C(v10, v11, v12);
  (*(v4 + 8))(v3, v5);
  OUTLINED_FUNCTION_66_6();

  v13 = *(v0 + 8);
  OUTLINED_FUNCTION_66_0();

  __asm { BRAA            X2, X16 }
}

uint64_t sub_231DBEBF0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = *v3;
  v5 = *(*v3 + 176);
  v10 = *v3;
  *(v4 + 184) = a1;
  *(v4 + 192) = a2;
  *(v4 + 201) = a3;

  v6 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

void sub_231DBECEC()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 192);
  v4 = *(v0 + 96);
  v3 = *(v0 + 104);
  v5 = *(v0 + 88);
  v6 = *(v0 + 201);
  v7 = OUTLINED_FUNCTION_37_11();
  sub_231D0D3F8(v7, v8, v9);
  v10 = OUTLINED_FUNCTION_37_11();
  sub_231CBA16C(v10, v11, v12);
  (*(v4 + 8))(v3, v5);
  OUTLINED_FUNCTION_66_6();

  v13 = *(v0 + 8);
  OUTLINED_FUNCTION_66_0();

  __asm { BRAA            X2, X16 }
}

unint64_t sub_231DBEDB0()
{
  v1 = type metadata accessor for EntityKind();
  v2 = OUTLINED_FUNCTION_12(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_65_7(v5);
  v6 = 0x503020100uLL >> (8 * swift_getEnumCaseMultiPayload());
  sub_231CF1D74(v0);
  return v6;
}

uint64_t sub_231DBEE3C()
{
  v1 = type metadata accessor for EntityKind();
  v2 = OUTLINED_FUNCTION_12(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_65_7(v5);
  v6 = qword_231E1FDA0[swift_getEnumCaseMultiPayload()];
  sub_231CF1D74(v0);
  return v6;
}

void sub_231DBEEC0()
{
  OUTLINED_FUNCTION_118();
  v98 = v0;
  v99 = v1;
  v2 = sub_231E10AE0();
  v3 = OUTLINED_FUNCTION_24(v2);
  v96 = v4;
  v97 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_5_17();
  v88 = v7;
  OUTLINED_FUNCTION_3_0();
  v8 = sub_231E10BE0();
  v9 = OUTLINED_FUNCTION_24(v8);
  v94 = v10;
  v95 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_5_17();
  v87 = v13;
  OUTLINED_FUNCTION_3_0();
  v14 = sub_231E10A30();
  v15 = OUTLINED_FUNCTION_24(v14);
  v92 = v16;
  v93 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_5_17();
  v86 = v19;
  OUTLINED_FUNCTION_3_0();
  v20 = sub_231E106A0();
  v21 = OUTLINED_FUNCTION_24(v20);
  v90 = v22;
  v91 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_5_17();
  v85 = v25;
  OUTLINED_FUNCTION_3_0();
  v26 = sub_231E10340();
  v27 = OUTLINED_FUNCTION_24(v26);
  v89 = v28;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_4_1();
  v33 = v32 - v31;
  v34 = type metadata accessor for EntityKind();
  v35 = OUTLINED_FUNCTION_12(v34);
  v37 = *(v36 + 64);
  v38 = MEMORY[0x28223BE20](v35);
  v40 = &v84 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x28223BE20](v38);
  v43 = &v84 - v42;
  v44 = MEMORY[0x28223BE20](v41);
  v46 = &v84 - v45;
  v47 = MEMORY[0x28223BE20](v44);
  v49 = &v84 - v48;
  MEMORY[0x28223BE20](v47);
  v51 = &v84 - v50;
  v52 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75318, &qword_231E1F528) - 8) + 64);
  OUTLINED_FUNCTION_11_2();
  v54 = MEMORY[0x28223BE20](v53);
  v56 = &v84 - v55;
  v57 = *(v54 + 56);
  sub_231CD3AE0(v98, &v84 - v55);
  sub_231CD3AE0(v99, &v56[v57]);
  OUTLINED_FUNCTION_44_11();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_231CD3AE0(v56, v49);
      if (OUTLINED_FUNCTION_59_8() != 1)
      {
        v60 = v91;
        v59 = *(v90 + 8);
        v58 = v49;
        goto LABEL_18;
      }

      v77 = v90;
      v76 = v91;
      OUTLINED_FUNCTION_36_10();
      v78(v85);
      sub_231E10600();
      v79 = *(v77 + 8);
      v80 = OUTLINED_FUNCTION_37_0();
      v79(v80);
      (v79)(v49, v76);
      goto LABEL_13;
    case 2u:
      sub_231CD3AE0(v56, v46);
      if (OUTLINED_FUNCTION_59_8() == 2)
      {
        v67 = v92;
        v66 = v93;
        OUTLINED_FUNCTION_55_8();
        v68(v86, &v56[v57], v66);
        sub_231E109A0();
        v69 = *(v67 + 8);
        v70 = OUTLINED_FUNCTION_37_0();
        v69(v70);
        (v69)(v46, v66);
        goto LABEL_13;
      }

      (*(v92 + 8))(v46, v93);
      goto LABEL_19;
    case 3u:
      sub_231CD3AE0(v56, v43);
      if (OUTLINED_FUNCTION_59_8() == 3)
      {
        v72 = v94;
        v71 = v95;
        OUTLINED_FUNCTION_36_10();
        v73(v87);
        sub_231E10B80();
        v74 = *(v72 + 8);
        v75 = OUTLINED_FUNCTION_37_0();
        v74(v75);
        (v74)(v43, v71);
        goto LABEL_13;
      }

      (*(v94 + 8))(v43, v95);
      goto LABEL_19;
    case 4u:
      sub_231CD3AE0(v56, v40);
      if (OUTLINED_FUNCTION_59_8() == 4)
      {
        v61 = v96;
        OUTLINED_FUNCTION_36_10();
        v62 = v88;
        v63 = v97;
        v64(v88);
        sub_231E10A90();
        v65 = *(v61 + 8);
        v65(v62, v63);
        v65(v40, v63);
        goto LABEL_13;
      }

      (*(v96 + 8))(v40, v97);
      goto LABEL_19;
    default:
      sub_231CD3AE0(v56, v51);
      if (OUTLINED_FUNCTION_59_8())
      {
        v58 = OUTLINED_FUNCTION_41_12();
        v60 = v26;
LABEL_18:
        v59(v58, v60);
LABEL_19:
        sub_231DBF4BC(v56);
      }

      else
      {
        v81 = v89;
        OUTLINED_FUNCTION_36_10();
        v82(v33);
        OUTLINED_FUNCTION_101_1();
        sub_231E101E0();
        v83 = *(v81 + 8);
        v83(v33, v26);
        v83(v51, v26);
LABEL_13:
        sub_231CF1D74(v56);
      }

      OUTLINED_FUNCTION_113();
      return;
  }
}

uint64_t sub_231DBF4BC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75318, &qword_231E1F528);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_231DBF528()
{
  sub_231DC030C();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231DBF560()
{
  sub_231DC030C();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231DBF598(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1818845549 && a2 == 0xE400000000000000;
  if (v3 || (OUTLINED_FUNCTION_15_2() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6567617373656DLL && a2 == 0xE700000000000000;
    if (v6 || (OUTLINED_FUNCTION_15_2() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v8 = a1 == OUTLINED_FUNCTION_58_10() && a2 == v7;
      if (v8 || (OUTLINED_FUNCTION_15_2() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v9 = a1 == 0xD000000000000011 && 0x8000000231E35630 == a2;
        if (v9 || (OUTLINED_FUNCTION_15_2() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == OUTLINED_FUNCTION_56_11() && a2 == v10)
        {

          return 4;
        }

        else
        {
          v12 = OUTLINED_FUNCTION_15_2();

          if (v12)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

uint64_t sub_231DBF6DC(char a1)
{
  result = 1818845549;
  switch(a1)
  {
    case 1:
      result = 0x6567617373656DLL;
      break;
    case 2:
      result = OUTLINED_FUNCTION_58_10();
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    case 4:
      result = OUTLINED_FUNCTION_56_11();
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_231DBF77C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_231DBF598(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_231DBF7B0()
{
  sub_231DC02B8();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231DBF7E8()
{
  sub_231DC02B8();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231DBF820()
{
  sub_231DC045C();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231DBF858()
{
  sub_231DC045C();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231DBF890()
{
  sub_231DC0408();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231DBF8C8()
{
  sub_231DC0408();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231DBF900()
{
  sub_231DC03B4();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231DBF938()
{
  sub_231DC03B4();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231DBF970()
{
  sub_231DC0360();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE718](v0);
}

uint64_t sub_231DBF9A8()
{
  sub_231DC0360();
  v0 = OUTLINED_FUNCTION_10_4();

  return MEMORY[0x2821FE720](v0);
}

uint64_t sub_231DBF9E0(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75320, &qword_231E1F530);
  v4 = OUTLINED_FUNCTION_24(v3);
  v130 = v5;
  v131 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_12_1();
  v127 = v9;
  OUTLINED_FUNCTION_3_0();
  v10 = sub_231E10AE0();
  v11 = OUTLINED_FUNCTION_24(v10);
  v128 = v12;
  v129 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_5_17();
  v126 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75328, &qword_231E1F538);
  v17 = OUTLINED_FUNCTION_24(v16);
  v124 = v18;
  v125 = v17;
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_12_1();
  v121 = v22;
  OUTLINED_FUNCTION_3_0();
  v23 = sub_231E10BE0();
  v24 = OUTLINED_FUNCTION_24(v23);
  v122 = v25;
  v123 = v24;
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_5_17();
  v120 = v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75330, &qword_231E1F540);
  v30 = OUTLINED_FUNCTION_24(v29);
  v118 = v31;
  v119 = v30;
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_12_1();
  v115 = v35;
  OUTLINED_FUNCTION_3_0();
  v36 = sub_231E10A30();
  v37 = OUTLINED_FUNCTION_24(v36);
  v116 = v38;
  v117 = v37;
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_5_17();
  v114 = v41;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75338, &qword_231E1F548);
  OUTLINED_FUNCTION_24(v113);
  v112 = v42;
  v44 = *(v43 + 64);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_12_1();
  v109 = v46;
  OUTLINED_FUNCTION_3_0();
  v111 = sub_231E106A0();
  v47 = OUTLINED_FUNCTION_24(v111);
  v110 = v48;
  v50 = *(v49 + 64);
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_5_17();
  v108 = v51;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75340, &qword_231E1F550);
  OUTLINED_FUNCTION_24(v107);
  v106 = v52;
  v54 = *(v53 + 64);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_64_6();
  v56 = sub_231E10340();
  v57 = OUTLINED_FUNCTION_24(v56);
  v105 = v58;
  v60 = *(v59 + 64);
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_4_1();
  v63 = v62 - v61;
  v64 = type metadata accessor for EntityKind();
  v65 = OUTLINED_FUNCTION_12(v64);
  v67 = *(v66 + 64);
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_4_1();
  v70 = v69 - v68;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75348, &qword_231E1F558);
  OUTLINED_FUNCTION_24(v135);
  v133 = v71;
  v73 = *(v72 + 64);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v74);
  v76 = &v104 - v75;
  v77 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_231DC02B8();
  v134 = v76;
  sub_231E12270();
  sub_231CD3AE0(v132, v70);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v83 = v110;
      OUTLINED_FUNCTION_55_8();
      v84 = v108;
      v82 = v111;
      v100(v108, v70, v111);
      v137 = 1;
      sub_231DC0408();
      v87 = v109;
      OUTLINED_FUNCTION_19_11();
      OUTLINED_FUNCTION_28_10();
      sub_231DC1090(v101, v102);
      OUTLINED_FUNCTION_61_7();
      v90 = v113;
      OUTLINED_FUNCTION_32_9();
      v91 = v112;
      goto LABEL_7;
    case 2u:
      v83 = v116;
      v82 = v117;
      OUTLINED_FUNCTION_55_8();
      v84 = v114;
      v92 = OUTLINED_FUNCTION_51_6();
      v93(v92);
      v138 = 2;
      sub_231DC03B4();
      v87 = v115;
      OUTLINED_FUNCTION_19_11();
      OUTLINED_FUNCTION_30_11();
      sub_231DC1090(v94, v95);
      OUTLINED_FUNCTION_61_7();
      v90 = v119;
      OUTLINED_FUNCTION_32_9();
      v91 = v118;
      goto LABEL_7;
    case 3u:
      v83 = v122;
      v82 = v123;
      OUTLINED_FUNCTION_55_8();
      v84 = v120;
      v96 = OUTLINED_FUNCTION_51_6();
      v97(v96);
      v139 = 3;
      sub_231DC0360();
      v87 = v121;
      OUTLINED_FUNCTION_19_11();
      OUTLINED_FUNCTION_29_9();
      sub_231DC1090(v98, v99);
      OUTLINED_FUNCTION_61_7();
      v90 = v125;
      OUTLINED_FUNCTION_32_9();
      v91 = v124;
      goto LABEL_7;
    case 4u:
      v83 = v128;
      v82 = v129;
      OUTLINED_FUNCTION_55_8();
      v84 = v126;
      v85 = OUTLINED_FUNCTION_51_6();
      v86(v85);
      v140 = 4;
      sub_231DC030C();
      v87 = v127;
      OUTLINED_FUNCTION_19_11();
      OUTLINED_FUNCTION_31_13();
      sub_231DC1090(v88, v89);
      OUTLINED_FUNCTION_61_7();
      v90 = v131;
      OUTLINED_FUNCTION_32_9();
      v91 = v130;
LABEL_7:
      (*(v91 + 8))(v87, v90);
      (*(v83 + 8))(v84, v82);
      break;
    default:
      v78 = v105;
      (*(v105 + 32))(v63, v70, v56);
      v136 = 0;
      sub_231DC045C();
      v70 = v134;
      v77 = v135;
      sub_231E12000();
      OUTLINED_FUNCTION_26_10();
      sub_231DC1090(v79, v80);
      v81 = v107;
      sub_231E12090();
      (*(v106 + 8))(v1, v81);
      (*(v78 + 8))(v63, v56);
      break;
  }

  return (*(v133 + 8))(v70, v77);
}

unint64_t sub_231DC02B8()
{
  result = qword_27DD84DE0;
  if (!qword_27DD84DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD84DE0);
  }

  return result;
}

unint64_t sub_231DC030C()
{
  result = qword_27DD84DE8;
  if (!qword_27DD84DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD84DE8);
  }

  return result;
}

unint64_t sub_231DC0360()
{
  result = qword_27DD84DF0;
  if (!qword_27DD84DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD84DF0);
  }

  return result;
}

unint64_t sub_231DC03B4()
{
  result = qword_27DD84DF8;
  if (!qword_27DD84DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD84DF8);
  }

  return result;
}

unint64_t sub_231DC0408()
{
  result = qword_27DD84E00;
  if (!qword_27DD84E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD84E00);
  }

  return result;
}

unint64_t sub_231DC045C()
{
  result = qword_27DD84E08[0];
  if (!qword_27DD84E08[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD84E08);
  }

  return result;
}

uint64_t sub_231DC04B0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v142 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75378, &qword_231E1F560);
  v140 = OUTLINED_FUNCTION_24(v4);
  v141 = v5;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_12_1();
  v151 = v9;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75380, &qword_231E1F568);
  OUTLINED_FUNCTION_24(v139);
  v147 = v10;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_12_1();
  v146 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75388, &qword_231E1F570);
  v16 = OUTLINED_FUNCTION_24(v15);
  v137 = v17;
  v138 = v16;
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_12_1();
  v145 = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75390, &qword_231E1F578);
  v23 = OUTLINED_FUNCTION_24(v22);
  v135 = v24;
  v136 = v23;
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_12_1();
  v144 = v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75398, &qword_231E1F580);
  v30 = OUTLINED_FUNCTION_24(v29);
  v133 = v31;
  v134 = v30;
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_12_1();
  v143 = v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD753A0, &unk_231E1F588);
  v37 = OUTLINED_FUNCTION_24(v36);
  v149 = v38;
  v150 = v37;
  v40 = *(v39 + 64);
  OUTLINED_FUNCTION_11_2();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_64_6();
  v148 = type metadata accessor for EntityKind();
  v42 = OUTLINED_FUNCTION_12(v148);
  v44 = *(v43 + 64);
  v45 = MEMORY[0x28223BE20](v42);
  v132 = v126 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = MEMORY[0x28223BE20](v45);
  v49 = v126 - v48;
  v50 = MEMORY[0x28223BE20](v47);
  v52 = v126 - v51;
  v53 = MEMORY[0x28223BE20](v50);
  v55 = v126 - v54;
  v56 = MEMORY[0x28223BE20](v53);
  v58 = v126 - v57;
  MEMORY[0x28223BE20](v56);
  v60 = v126 - v59;
  v62 = a1[3];
  v61 = a1[4];
  v152 = a1;
  v63 = OUTLINED_FUNCTION_258();
  __swift_project_boxed_opaque_existential_0(v63, v64);
  sub_231DC02B8();
  v65 = v153;
  sub_231E12260();
  if (v65)
  {
    goto LABEL_10;
  }

  v127 = v55;
  v131 = v52;
  v128 = v58;
  v129 = v49;
  v66 = v150;
  v153 = v60;
  v67 = v2;
  v68 = sub_231E11FE0();
  result = sub_231CCF16C(v68, 0);
  if (v71 == v72 >> 1)
  {
    v74 = v148;
    v73 = v149;
LABEL_9:
    v86 = sub_231E11DC0();
    swift_allocError();
    v88 = v87;
    v89 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD743E8, &qword_231E13D10) + 48);
    *v88 = v74;
    sub_231E11F40();
    sub_231E11DB0();
    (*(*(v86 - 8) + 104))(v88, *MEMORY[0x277D84160], v86);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v73 + 8))(v67, v66);
LABEL_10:
    v90 = v152;
    return __swift_destroy_boxed_opaque_existential_0(v90);
  }

  v130 = v2;
  v126[1] = 0;
  if (v71 < (v72 >> 1))
  {
    v75 = *(v70 + v71);
    sub_231CCF304(v71 + 1, v72 >> 1, result, v70, v71, v72);
    v77 = v76;
    v79 = v78;
    swift_unknownObjectRelease();
    v80 = v153;
    v81 = v131;
    if (v77 == v79 >> 1)
    {
      v82 = v147;
      switch(v75)
      {
        case 1:
          v155 = 1;
          sub_231DC0408();
          OUTLINED_FUNCTION_14_13();
          sub_231E106A0();
          OUTLINED_FUNCTION_28_10();
          sub_231DC1090(v101, v102);
          v81 = v127;
          v103 = v136;
          sub_231E11FD0();
          OUTLINED_FUNCTION_53_8();
          swift_unknownObjectRelease();
          v122 = OUTLINED_FUNCTION_41_12();
          v123(v122, v103);
          v124 = OUTLINED_FUNCTION_3_27();
          v125(v124);
          OUTLINED_FUNCTION_60_7();
          goto LABEL_16;
        case 2:
          v156 = 2;
          sub_231DC03B4();
          OUTLINED_FUNCTION_14_13();
          sub_231E10A30();
          OUTLINED_FUNCTION_30_11();
          sub_231DC1090(v95, v96);
          OUTLINED_FUNCTION_67_7();
          OUTLINED_FUNCTION_53_8();
          swift_unknownObjectRelease();
          v108 = *(v137 + 8);
          v109 = OUTLINED_FUNCTION_101_1();
          v110(v109);
          v111 = OUTLINED_FUNCTION_3_27();
          v112(v111);
          OUTLINED_FUNCTION_60_7();
          goto LABEL_16;
        case 3:
          v157 = 3;
          sub_231DC0360();
          OUTLINED_FUNCTION_14_13();
          sub_231E10BE0();
          OUTLINED_FUNCTION_29_9();
          sub_231DC1090(v97, v98);
          v81 = v129;
          v99 = v139;
          v100 = v146;
          sub_231E11FD0();
          OUTLINED_FUNCTION_53_8();
          swift_unknownObjectRelease();
          (*(v82 + 8))(v100, v99);
          v113 = OUTLINED_FUNCTION_3_27();
          v114(v113);
          OUTLINED_FUNCTION_60_7();
LABEL_16:
          swift_storeEnumTagMultiPayload();
          v121 = v81;
          goto LABEL_17;
        case 4:
          v158 = 4;
          sub_231DC030C();
          OUTLINED_FUNCTION_14_13();
          sub_231E10AE0();
          OUTLINED_FUNCTION_31_13();
          sub_231DC1090(v91, v92);
          v93 = v132;
          v94 = v140;
          sub_231E11FD0();
          OUTLINED_FUNCTION_53_8();
          swift_unknownObjectRelease();
          v104 = OUTLINED_FUNCTION_41_12();
          v105(v104, v94);
          v106 = OUTLINED_FUNCTION_3_27();
          v107(v106);
          swift_storeEnumTagMultiPayload();
          v121 = v93;
LABEL_17:
          v120 = v152;
          break;
        default:
          v154 = 0;
          sub_231DC045C();
          OUTLINED_FUNCTION_14_13();
          sub_231E10340();
          OUTLINED_FUNCTION_26_10();
          sub_231DC1090(v83, v84);
          v85 = v128;
          OUTLINED_FUNCTION_67_7();
          OUTLINED_FUNCTION_53_8();
          swift_unknownObjectRelease();
          v115 = *(v133 + 8);
          v116 = OUTLINED_FUNCTION_101_1();
          v117(v116);
          v118 = OUTLINED_FUNCTION_3_27();
          v119(v118);
          OUTLINED_FUNCTION_60_7();
          swift_storeEnumTagMultiPayload();
          v120 = v152;
          v121 = v85;
          break;
      }

      sub_231DC0FB0(v121, v80);
      sub_231DC0FB0(v80, v142);
      v90 = v120;
      return __swift_destroy_boxed_opaque_existential_0(v90);
    }

    v74 = v148;
    v73 = v149;
    v67 = v130;
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t sub_231DC0F7C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_231DBDC24();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_231DC0FB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EntityKind();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_231DC1090(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_231DC10E0()
{
  result = sub_231E10340();
  if (v1 <= 0x3F)
  {
    result = sub_231E106A0();
    if (v2 <= 0x3F)
    {
      result = sub_231E10A30();
      if (v3 <= 0x3F)
      {
        result = sub_231E10BE0();
        if (v4 <= 0x3F)
        {
          result = sub_231E10AE0();
          if (v5 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for EntityKind.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *_s22ProactiveSummarization10EntityKindO14MailCodingKeysOwst_0(_BYTE *result, int a2, int a3)
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

unint64_t sub_231DC1360()
{
  result = qword_27DD85090[0];
  if (!qword_27DD85090[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD85090);
  }

  return result;
}

unint64_t sub_231DC13B8()
{
  result = qword_27DD852A0[0];
  if (!qword_27DD852A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD852A0);
  }

  return result;
}

unint64_t sub_231DC1410()
{
  result = qword_27DD854B0[0];
  if (!qword_27DD854B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD854B0);
  }

  return result;
}

unint64_t sub_231DC1468()
{
  result = qword_27DD856C0[0];
  if (!qword_27DD856C0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD856C0);
  }

  return result;
}

unint64_t sub_231DC14C0()
{
  result = qword_27DD858D0[0];
  if (!qword_27DD858D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD858D0);
  }

  return result;
}

unint64_t sub_231DC1518()
{
  result = qword_27DD85AE0[0];
  if (!qword_27DD85AE0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD85AE0);
  }

  return result;
}

unint64_t sub_231DC1570()
{
  result = qword_27DD85BF0;
  if (!qword_27DD85BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD85BF0);
  }

  return result;
}

unint64_t sub_231DC15C8()
{
  result = qword_27DD85BF8[0];
  if (!qword_27DD85BF8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD85BF8);
  }

  return result;
}

unint64_t sub_231DC1620()
{
  result = qword_27DD85C80;
  if (!qword_27DD85C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD85C80);
  }

  return result;
}

unint64_t sub_231DC1678()
{
  result = qword_27DD85C88[0];
  if (!qword_27DD85C88[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD85C88);
  }

  return result;
}

unint64_t sub_231DC16D0()
{
  result = qword_27DD85D10;
  if (!qword_27DD85D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD85D10);
  }

  return result;
}

unint64_t sub_231DC1728()
{
  result = qword_27DD85D18[0];
  if (!qword_27DD85D18[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD85D18);
  }

  return result;
}

unint64_t sub_231DC1780()
{
  result = qword_27DD85DA0;
  if (!qword_27DD85DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD85DA0);
  }

  return result;
}

unint64_t sub_231DC17D8()
{
  result = qword_27DD85DA8[0];
  if (!qword_27DD85DA8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD85DA8);
  }

  return result;
}

unint64_t sub_231DC1830()
{
  result = qword_27DD85E30;
  if (!qword_27DD85E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD85E30);
  }

  return result;
}

unint64_t sub_231DC1888()
{
  result = qword_27DD85E38[0];
  if (!qword_27DD85E38[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD85E38);
  }

  return result;
}

unint64_t sub_231DC18E0()
{
  result = qword_27DD85EC0;
  if (!qword_27DD85EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD85EC0);
  }

  return result;
}

unint64_t sub_231DC1938()
{
  result = qword_27DD85EC8[0];
  if (!qword_27DD85EC8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD85EC8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_7_22()
{
  v2 = *(v1 - 120);
  v3 = *(*(v1 - 128) + 32);
  return v0;
}

uint64_t OUTLINED_FUNCTION_19_11()
{
  v3 = *(v0 - 112);
  v2 = *(v0 - 104);

  return sub_231E12000();
}

uint64_t OUTLINED_FUNCTION_32_9()
{
  v2 = *(v0 - 96);

  return sub_231E12090();
}

uint64_t OUTLINED_FUNCTION_33_14@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v2 - 88);

  return sub_231CD3AE0(v4, v1 - a1);
}

uint64_t OUTLINED_FUNCTION_59_8()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t OUTLINED_FUNCTION_60_7()
{
  result = v0;
  v3 = *(v1 - 136);
  return result;
}

uint64_t OUTLINED_FUNCTION_62_5()
{
  v1 = v0[3];
  v2 = v0[4];
  return v0[2];
}

uint64_t OUTLINED_FUNCTION_65_7@<X0>(uint64_t a1@<X8>)
{

  return sub_231CD3AE0(v2, v1 - a1);
}

uint64_t OUTLINED_FUNCTION_66_6()
{
  v2 = v0[18];
  v3 = v0[16];
  v4 = v0[13];
  v5 = v0[10];
}

uint64_t OUTLINED_FUNCTION_67_7()
{

  return sub_231E11FD0();
}

uint64_t sub_231DC1C8C@<X0>(NSObject *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v92 = a1;
  v93 = a2;
  v94 = a3;
  v4 = sub_231E10760();
  v5 = OUTLINED_FUNCTION_24(v4);
  v83 = v6;
  v84 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_5_17();
  v82 = v9;
  OUTLINED_FUNCTION_3_0();
  v10 = sub_231E10E30();
  v11 = OUTLINED_FUNCTION_24(v10);
  v86 = v12;
  v87 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_5_17();
  v85 = v15;
  OUTLINED_FUNCTION_3_0();
  v16 = sub_231E10FE0();
  v88 = OUTLINED_FUNCTION_24(v16);
  v89 = v17;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v88);
  OUTLINED_FUNCTION_5_17();
  v91 = v20;
  OUTLINED_FUNCTION_3_0();
  v21 = sub_231E10370();
  v22 = OUTLINED_FUNCTION_24(v21);
  v95 = v23;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_3();
  v81 = v26 - v27;
  MEMORY[0x28223BE20](v28);
  v30 = &v80 - v29;
  v31 = sub_231E10400();
  v32 = OUTLINED_FUNCTION_24(v31);
  v34 = v33;
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v32);
  v38 = &v80 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_231E113F0();
  v40 = OUTLINED_FUNCTION_24(v39);
  v42 = v41;
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_3();
  v90 = v45 - v46;
  MEMORY[0x28223BE20](v47);
  v49 = &v80 - v48;
  sub_231E10750();
  (*(v92->isa + 21))(v38, v93);
  (*(v34 + 8))(v38, v31);
  v50 = v3;
  sub_231E10740();
  v51 = v21;
  v52 = v30;
  v53 = (*(v95 + 88))(v30, v21);
  if (v53 == *MEMORY[0x277D422D8])
  {
    (*(v42 + 8))(v49, v39);
    v54 = sub_231E11000();
    v55 = v94;
    v56 = 1;
    return __swift_storeEnumTagSinglePayload(v55, v56, 1, v54);
  }

  v57 = v42;
  v58 = v94;
  if (v53 == *MEMORY[0x277D422E8])
  {
    v59 = v91;
    (*(v89 + 104))(v91, *MEMORY[0x277D4AF88], v88);
    v60 = v90;
    (*(v42 + 16))(v90, v49, v39);
    OUTLINED_FUNCTION_5_25(v59, v60);
    (*(v42 + 8))(v49, v39);
LABEL_22:
    v54 = sub_231E11000();
    v55 = v58;
    v56 = 0;
    return __swift_storeEnumTagSinglePayload(v55, v56, 1, v54);
  }

  if (v53 == *MEMORY[0x277D422D0])
  {
    v61 = MEMORY[0x277D4AF78];
LABEL_21:
    v62 = v91;
    (*(v89 + 104))(v91, *v61, v88);
    v63 = v90;
    (*(v42 + 16))(v90, v49, v39);
    OUTLINED_FUNCTION_5_25(v62, v63);
    (*(v42 + 8))(v49, v39);
    goto LABEL_22;
  }

  if (v53 == *MEMORY[0x277D422F8])
  {
    v61 = MEMORY[0x277D4AF98];
    goto LABEL_21;
  }

  if (v53 == *MEMORY[0x277D42308])
  {
    v61 = MEMORY[0x277D4AFA8];
    goto LABEL_21;
  }

  if (v53 == *MEMORY[0x277D422F0])
  {
    v61 = MEMORY[0x277D4AF90];
    goto LABEL_21;
  }

  if (v53 == *MEMORY[0x277D42310])
  {
    v61 = MEMORY[0x277D4AFB0];
    goto LABEL_21;
  }

  if (v53 == *MEMORY[0x277D422E0])
  {
    v61 = MEMORY[0x277D4AF80];
    goto LABEL_21;
  }

  if (v53 == *MEMORY[0x277D422C8])
  {
    v61 = MEMORY[0x277D4AF70];
    goto LABEL_21;
  }

  if (v53 == *MEMORY[0x277D42300])
  {
    v61 = MEMORY[0x277D4AFA0];
    goto LABEL_21;
  }

  v93 = v51;
  v65 = sub_231CB4EEC();
  (*(v86 + 16))(v85, v65, v87);
  v66 = v82;
  v67 = v83;
  v68 = v84;
  (*(v83 + 16))(v82, v50, v84);
  v69 = sub_231E10E10();
  v70 = sub_231E11AE0();
  if (os_log_type_enabled(v69, v70))
  {
    v90 = swift_slowAlloc();
    *v90 = 134217984;
    v92 = v69;
    v71 = v81;
    LODWORD(v91) = v70;
    sub_231E10740();
    v72 = sub_231E10360();
    v73 = v95;
    v74 = v71;
    v69 = v92;
    (*(v95 + 8))(v74, v93);
    (*(v67 + 8))(v66, v84);
    v75 = v90;
    *(v90 + 4) = v72;
    v76 = v75;
    _os_log_impl(&dword_231CAE000, v69, v91, "Unknown tapback type: %ld", v75, 0xCu);
    MEMORY[0x23837E1D0](v76, -1, -1);
    v77 = v39;
    v78 = v93;
  }

  else
  {
    (*(v67 + 8))(v66, v68);
    v77 = v39;
    v78 = v93;
    v73 = v95;
  }

  (*(v86 + 8))(v85, v87);
  (*(v57 + 8))(v49, v77);
  v79 = sub_231E11000();
  __swift_storeEnumTagSinglePayload(v58, 1, 1, v79);
  return (*(v73 + 8))(v52, v78);
}

uint64_t sub_231DC2418@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v74 = a3;
  v81 = sub_231E107F0();
  v5 = OUTLINED_FUNCTION_24(v81);
  v78 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_5_17();
  v80 = v9;
  OUTLINED_FUNCTION_3_0();
  v79 = sub_231E10EE0();
  v10 = OUTLINED_FUNCTION_24(v79);
  v82 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_5_17();
  v67 = v14;
  OUTLINED_FUNCTION_3_0();
  v15 = sub_231E0F950();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  OUTLINED_FUNCTION_5_17();
  v75 = v17;
  OUTLINED_FUNCTION_3_0();
  v18 = sub_231E10400();
  v19 = OUTLINED_FUNCTION_24(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v19);
  v25 = v63 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_231E113F0();
  v27 = OUTLINED_FUNCTION_24(v26);
  v76 = v28;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_3();
  v33 = v31 - v32;
  MEMORY[0x28223BE20](v34);
  v36 = v63 - v35;
  sub_231E104F0();
  (*(*a1 + 168))(v25, a2);
  (*(v21 + 8))(v25, v18);
  v37 = sub_231E10590();
  v87 = a1;
  v88 = a2;
  v38 = sub_231CD1BA8(sub_231CD1B30, v86, v37);

  v39 = sub_231E105B0();
  v84 = a1;
  v85 = a2;
  v40 = sub_231DC29E8(sub_231DC2FF0, v83, v39);

  v41 = sub_231E10620();
  v71 = sub_231E10690();
  v70 = v42;
  v43 = *(v76 + 16);
  v72 = v33;
  v73 = v36;
  v43(v33, v36, v26);
  sub_231E105C0();
  v44 = sub_231E10530();
  if (!v45)
  {
    v44 = sub_231E10520();
  }

  v46 = v44;
  v47 = v45;
  v69 = sub_231E10640();
  v68 = v48;
  v49 = sub_231E104C0();
  v50 = *(v49 + 16);
  if (v50)
  {
    v63[2] = v47;
    v63[3] = v46;
    v63[4] = v40;
    v64 = v41;
    v65 = v38;
    v66 = v26;
    v89 = MEMORY[0x277D84F90];
    v51 = v49;
    sub_231CD25B8(0, v50, 0);
    v52 = v89;
    v53 = v78 + 16;
    v78 = *(v78 + 16);
    v54 = (*(v53 + 64) + 32) & ~*(v53 + 64);
    v63[1] = v51;
    v55 = v51 + v54;
    v77 = *(v53 + 56);
    v56 = (v53 - 8);
    v57 = v67;
    do
    {
      v58 = v80;
      v59 = v81;
      (v78)(v80, v55, v81);
      sub_231DC4964();
      (*v56)(v58, v59);
      v89 = v52;
      v61 = *(v52 + 16);
      v60 = *(v52 + 24);
      if (v61 >= v60 >> 1)
      {
        sub_231CD25B8(v60 > 1, v61 + 1, 1);
        v52 = v89;
      }

      *(v52 + 16) = v61 + 1;
      (*(v82 + 32))(v52 + ((*(v82 + 80) + 32) & ~*(v82 + 80)) + *(v82 + 72) * v61, v57, v79);
      v55 += v77;
      --v50;
    }

    while (v50);

    v26 = v66;
  }

  else
  {
  }

  sub_231E11010();
  return (*(v76 + 8))(v73, v26);
}

size_t sub_231DC29E8(void (*a1)(unint64_t), uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD753D0, &qword_231E1FDC8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v27 - v8;
  v10 = sub_231E11000();
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v33 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v31 = v15;
  v32 = &v27 - v14;
  v16 = 0;
  v17 = *(a3 + 16);
  v34 = (v15 + 32);
  v35 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v17 == v16)
    {
      return v35;
    }

    v18 = *(sub_231E10760() - 8);
    a1(a3 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v16);
    if (v3)
    {
      break;
    }

    if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
    {
      sub_231CE1118(v9, &qword_27DD753D0, &qword_231E1FDC8);
      ++v16;
    }

    else
    {
      v19 = *v34;
      (*v34)(v32, v9, v10);
      v30 = v19;
      v19(v33, v32, v10);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v35 = sub_231DC2D08(0, *(v35 + 16) + 1, 1, v35);
      }

      v21 = *(v35 + 16);
      v20 = *(v35 + 24);
      v22 = v21 + 1;
      if (v21 >= v20 >> 1)
      {
        v28 = *(v35 + 16);
        v29 = v21 + 1;
        v24 = sub_231DC2D08(v20 > 1, v21 + 1, 1, v35);
        v21 = v28;
        v22 = v29;
        v35 = v24;
      }

      ++v16;
      v23 = v35;
      *(v35 + 16) = v22;
      v30((v23 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v21), v33, v10);
    }
  }

  v25 = v35;

  return v25;
}

size_t sub_231DC2D08(size_t result, uint64_t a2, char a3, uint64_t a4)
{
  v5 = a2;
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 24);
    a2 = v7 >> 1;
    if ((v7 >> 1) < v5)
    {
      if (a2 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if (v8 <= v5)
      {
        a2 = v5;
      }

      else
      {
        a2 = v8;
      }
    }
  }

  v9 = *(a4 + 16);
  v10 = sub_231DC2E2C(v9, a2, &qword_27DD753D8, &unk_231E1FDD0, MEMORY[0x277D4AFB8]);
  v11 = *(sub_231E11000() - 8);
  if (v6)
  {
    v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    sub_231DC2F28(a4 + v12, v9, v10 + v12, MEMORY[0x277D4AFB8]);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_231DC2E2C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v11);
  if (v9)
  {
    if (result - v10 != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * ((result - v10) / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_231DC2F28(unint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void))
{
  if (a3 < a1 || (result = (a4)(0), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    a4(0);
    OUTLINED_FUNCTION_58();

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {
    OUTLINED_FUNCTION_58();

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_231DC3024(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 224) = a4;
  *(v4 + 160) = a2;
  *(v4 + 168) = a3;
  *(v4 + 152) = a1;
  v5 = sub_231E10E30();
  *(v4 + 176) = v5;
  v6 = *(v5 - 8);
  *(v4 + 184) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 192) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_231DC30EC, 0, 0);
}

uint64_t sub_231DC30EC()
{
  v1 = [objc_opt_self() sharedInstance];
  v0[25] = v1;
  sub_231DE8A04(0);
  v2 = sub_231E115F0();
  v0[26] = v2;

  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_231DC3258;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD750D0, &unk_231E1E1D8);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_231D9EE3C;
  v0[13] = &block_descriptor_12;
  v0[14] = v3;
  [v1 fetchUserActivityContentIdentifiersForBundleId:v2 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_231DC3258()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 216) = v2;
  if (v2)
  {
    v3 = sub_231DC3484;
  }

  else
  {
    v3 = sub_231DC3368;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_231DC3368()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 224);
  v3 = *(v0 + 168);
  v15 = *(v0 + 152);
  v4 = *(v0 + 144);

  v5 = swift_task_alloc();
  *(v5 + 16) = v2;
  *(v5 + 24) = v15;
  *(v5 + 40) = v3;
  v6 = sub_231DC364C(sub_231DC3B34, v5, v4);
  v8 = v7;
  v10 = v9;
  v11 = ~v9;

  if (v11)
  {
    sub_231DC3BF4(v6, v8, v10);
  }

  v12 = *(v0 + 192);

  v13 = *(v0 + 8);

  return v13(~v10 != 0);
}

uint64_t sub_231DC3484()
{
  v2 = v0[26];
  v1 = v0[27];
  v3 = v0[24];
  v4 = v0[25];
  v5 = v0[22];
  v6 = v0[23];
  swift_willThrow();

  v7 = sub_231CB4EEC();
  (*(v6 + 16))(v3, v7, v5);
  v8 = v1;
  v9 = sub_231E10E10();
  v10 = sub_231E11AD0();

  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[27];
  if (v11)
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138412290;
    v15 = v12;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 4) = v16;
    *v14 = v16;
    _os_log_impl(&dword_231CAE000, v9, v10, "Unable to fetch current user activity: %@", v13, 0xCu);
    sub_231CC340C(v14);
    MEMORY[0x23837E1D0](v14, -1, -1);
    MEMORY[0x23837E1D0](v13, -1, -1);
  }

  else
  {
  }

  (*(v0[23] + 8))(v0[24], v0[22]);
  v17 = v0[24];

  v18 = v0[1];

  return v18(0);
}

unint64_t sub_231DC364C(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = a3;
  result = sub_231DC3C30(a3);
  v7 = v4 + 56;
  v26 = v4 + 64;
  if (v8)
  {
    __break(1u);
    return 0;
  }

  else
  {
    while (*(v4 + 36) == v6)
    {
      v9 = 1 << *(v4 + 32);
      if (result == v9)
      {
        return 0;
      }

      if ((result & 0x8000000000000000) != 0 || result >= v9)
      {
        goto LABEL_25;
      }

      v28 = v6;
      v10 = result >> 6;
      v11 = 1 << result;
      if ((*(v7 + 8 * (result >> 6)) & (1 << result)) == 0)
      {
        goto LABEL_26;
      }

      v30 = *(v4 + 36);
      v12 = v4;
      v13 = result;
      v14 = (*(v4 + 48) + 16 * result);
      v15 = v14[1];
      v29[0] = *v14;
      v29[1] = v15;

      v16 = a1(v29);

      if (v3)
      {
        return result;
      }

      if (v16)
      {
        return v13;
      }

      v17 = 1 << *(v12 + 32);
      if (v13 >= v17)
      {
        goto LABEL_27;
      }

      v18 = *(v7 + 8 * v10);
      if ((v18 & v11) == 0)
      {
        goto LABEL_28;
      }

      v4 = v12;
      if (*(v12 + 36) != v30)
      {
        goto LABEL_29;
      }

      v19 = v13;
      v20 = v18 & (-2 << (v13 & 0x3F));
      if (v20)
      {
        v17 = __clz(__rbit64(v20)) | v13 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v21 = v10 << 6;
        v22 = v10 + 1;
        v23 = (v26 + 8 * v10);
        while (v22 < (v17 + 63) >> 6)
        {
          v25 = *v23++;
          v24 = v25;
          v21 += 64;
          ++v22;
          if (v25)
          {
            sub_231D5E9D8(v19, v28, 0);
            v17 = __clz(__rbit64(v24)) + v21;
            goto LABEL_19;
          }
        }

        sub_231D5E9D8(v19, v28, 0);
      }

LABEL_19:
      v6 = *(v12 + 36);
      result = v17;
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }

  return result;
}

uint64_t sub_231DC3854(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_27DD74AD0, &qword_231E16C40);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v25 - v15;
  if (sub_231CC8604())
  {
    v17 = 0;
  }

  else
  {
    v18 = sub_231E0F950();
    (*(*(v18 - 8) + 16))(v16, a5, v18);
    __swift_storeEnumTagSinglePayload(v16, 0, 1, v18);
    __swift_storeEnumTagSinglePayload(v14, 1, 1, v18);
    v19 = objc_allocWithZone(MEMORY[0x277CF1A50]);
    v20 = sub_231D7076C(v16, v14, 0, 0, 0);
    type metadata accessor for RecentInteractionDetector();
    v21 = [BiomeLibrary() App];
    swift_unknownObjectRelease();
    v22 = [v21 Intent];
    swift_unknownObjectRelease();
    v23 = [v22 publisherWithOptions_];

    v17 = sub_231D2EC54(a1, a2, a3, a4, v23);
  }

  return v17 & 1;
}

uint64_t sub_231DC3A64(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_231CC2A9C;

  return sub_231DC3024(a1, a2, a3, a4);
}

uint64_t sub_231DC3B34(uint64_t *a1)
{
  v2 = *(v1 + 40);
  v4 = *a1;
  v3 = a1[1];
  if ((*(v1 + 16) & 1) != 0 && *(v1 + 32))
  {
    v11 = *a1;
    v12 = a1[1];
    v9 = *(v1 + 24);
    v10 = *(v1 + 32);
    sub_231CE11D8();
    v5 = OUTLINED_FUNCTION_0_34();
  }

  else
  {
    v6 = *(v1 + 40);
    sub_231E103F0();
    if (v7)
    {
      sub_231CE11D8();
      v5 = OUTLINED_FUNCTION_0_34();
    }

    else
    {
      v5 = 0;
    }
  }

  return v5 & 1;
}

uint64_t sub_231DC3BF4(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_231D5E9D8(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_231DC3C30(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  result = sub_231E11CE0();
  v4 = *(a1 + 36);
  return result;
}

uint64_t sub_231DC3C70(uint64_t a1)
{
  v1 = 0;
  v2 = (a1 + 40);
  v3 = *(a1 + 16) + 1;
  while (--v3)
  {
    v4 = v2 + 2;
    v6 = *(v2 - 1);
    v5 = *v2;

    v7 = sub_231E116F0();

    v2 = v4;
    v8 = __OFADD__(v1, v7);
    v1 += v7;
    if (v8)
    {
      __break(1u);
      return v1;
    }
  }

  return v1;
}

uint64_t sub_231DC3CF0(uint64_t a1)
{
  OUTLINED_FUNCTION_3_28();
  v2 = swift_allocObject();
  sub_231DC3D28(a1);
  return v2;
}

void *sub_231DC3D28(uint64_t a1)
{
  v3 = *(*v1 + 80);
  OUTLINED_FUNCTION_1_0();
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v8);
  v10 = &v13 - v9;
  (*(v5 + 16))(&v13 - v9, a1, v3);
  v11 = sub_231D71CB0(v10, v3);
  (*(v5 + 8))(a1, v3);
  v1[2] = v11;
  return v1;
}

void sub_231DC3E20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  v6 = v3[2];
  v8 = *(*v3 + 80);
  v9 = a3;
  v10 = *(v5 + 88);
  v11 = a1;
  v12 = a2;
  sub_231D72D34(sub_231DC3EB0, &v7, v6, v8, a3);
}

uint64_t sub_231DC3EB0()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  return v1();
}

BOOL sub_231DC3ED8()
{
  v0 = sub_231E11F20();

  return v0 != 0;
}

uint64_t sub_231DC3F24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_0_35();
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837F8];

  return MEMORY[0x2821FE040](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_231DC3F88(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_0_35();
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A0](a1, a2, WitnessTable, v5);
}

uint64_t sub_231DC3FE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_0_35();
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1B0](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_231DC4044(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_0_35();
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A8](a1, a2, a3, WitnessTable, v7);
}

BOOL sub_231DC40A4@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_231DC3ED8();
  *a2 = result;
  return result;
}

uint64_t sub_231DC410C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_231DC3F20();
  *a1 = result & 1;
  return result;
}

uint64_t sub_231DC4138(uint64_t a1)
{
  OUTLINED_FUNCTION_1_28();
  swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1);
}

uint64_t sub_231DC417C(uint64_t a1)
{
  OUTLINED_FUNCTION_1_28();
  swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1);
}

void sub_231DC41C0(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[2];
  v5 = *(*v1 + 80);
  v6 = *(v2 + 96);
  v7 = a1;
  sub_231D72D34(sub_231DC43B0, &v4, v3, v5, MEMORY[0x277D84F78] + 8);
}

uint64_t sub_231DC4258(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16[0] = a5;
  v16[1] = a1;
  type metadata accessor for CodableOSAllocatedUnfairLock.CodingKeys();
  OUTLINED_FUNCTION_1_28();
  swift_getWitnessTable();
  v6 = sub_231E120A0();
  OUTLINED_FUNCTION_1_0();
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = v16 - v12;
  v14 = a2[4];
  __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  sub_231E12270();
  sub_231E12090();
  return (*(v8 + 8))(v13, v6);
}

uint64_t sub_231DC43D0(uint64_t *a1)
{
  OUTLINED_FUNCTION_3_28();
  v2 = swift_allocObject();
  sub_231DC4418(a1);
  return v2;
}

void *sub_231DC4418(uint64_t *a1)
{
  v2 = v1;
  v28 = *v1;
  v4 = *(v28 + 80);
  v25 = *(v4 - 8);
  v5 = *(v25 + 64);
  v6 = MEMORY[0x28223BE20](a1);
  v24[0] = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v27 = v24 - v8;
  v10 = *(v9 + 96);
  v24[1] = *(v9 + 88);
  type metadata accessor for CodableOSAllocatedUnfairLock.CodingKeys();
  OUTLINED_FUNCTION_1_28();
  swift_getWitnessTable();
  sub_231E11FF0();
  OUTLINED_FUNCTION_1_0();
  v26 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v14);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v16 = v29;
  sub_231E12260();
  if (v16)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    v17 = v25;
    v18 = v27;
    sub_231E11FD0();
    v20 = v24[0];
    (*(v17 + 16))(v24[0], v18, v4);
    v21 = sub_231D71CB0(v20, v4);
    (*(v17 + 8))(v18, v4);
    v22 = OUTLINED_FUNCTION_4_23();
    v23(v22);
    v2[2] = v21;
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v2;
}

uint64_t sub_231DC4718()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t sub_231DC4738()
{
  sub_231DC4718();
  OUTLINED_FUNCTION_3_28();

  return swift_deallocClassInstance();
}

uint64_t sub_231DC4764@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_231DC43D0(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

_BYTE *sub_231DC481C(_BYTE *result, int a2, int a3)
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

uint64_t sub_231DC4964()
{
  v0 = sub_231E0FD90();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  sub_231E10790();
  sub_231E107E0();
  sub_231E107A0();
  return sub_231E10ED0();
}

uint64_t sub_231DC4A38()
{
  v0 = sub_231E10E30();
  __swift_allocate_value_buffer(v0, qword_2814CE538);
  OUTLINED_FUNCTION_7_23();
  OUTLINED_FUNCTION_2_28();
  return sub_231E10E20();
}

uint64_t sub_231DC4AF0()
{
  v0 = sub_231E10E30();
  __swift_allocate_value_buffer(v0, qword_2814CE550);
  OUTLINED_FUNCTION_7_23();
  OUTLINED_FUNCTION_2_28();
  return sub_231E10E20();
}

uint64_t sub_231DC4B9C()
{
  v0 = sub_231E10E30();
  __swift_allocate_value_buffer(v0, qword_2814CE580);
  OUTLINED_FUNCTION_7_23();
  OUTLINED_FUNCTION_2_28();
  return sub_231E10E20();
}

uint64_t sub_231DC4D4C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_231E10E30();
  __swift_allocate_value_buffer(v3, a2);
  v4 = OUTLINED_FUNCTION_8();
  __swift_project_value_buffer(v4, v5);
  return sub_231E10E20();
}

uint64_t sub_231DC4DF8()
{
  v0 = sub_231E10E30();
  __swift_allocate_value_buffer(v0, qword_2814CE568);
  OUTLINED_FUNCTION_7_23();
  return sub_231E10E20();
}

uint64_t sub_231DC5000(uint64_t a1, uint64_t *a2, void *a3)
{
  v5 = sub_231E10E30();
  v6 = OUTLINED_FUNCTION_24(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4_1();
  v13 = v12 - v11;
  v14 = sub_231E10DB0();
  __swift_allocate_value_buffer(v14, a2);
  __swift_project_value_buffer(v14, a2);
  if (*a3 != -1)
  {
    OUTLINED_FUNCTION_8();
    swift_once();
  }

  v15 = OUTLINED_FUNCTION_7_23();
  (*(v8 + 16))(v13, v15, v5);
  return sub_231E10D90();
}

uint64_t sub_231DC514C(const char *a1, char a2)
{
  v4 = sub_231E10D80();
  v5 = OUTLINED_FUNCTION_24(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v5);
  MEMORY[0x28223BE20](v10);
  v12 = &v25 - v11;
  sub_231E10DA0();
  sub_231E10D60();
  v13 = sub_231E10DA0();
  v14 = sub_231E11B80();
  result = sub_231E11BE0();
  if ((result & 1) == 0)
  {
    goto LABEL_10;
  }

  if ((a2 & 1) == 0)
  {
    if (a1)
    {
LABEL_9:
      v16 = swift_slowAlloc();
      *v16 = 0;
      v17 = sub_231E10D70();
      _os_signpost_emit_with_name_impl(&dword_231CAE000, v13, v14, v17, a1, " enableTelemetry=YES ", v16, 2u);
      MEMORY[0x23837E1D0](v16, -1, -1);
LABEL_10:

      v18 = *(v7 + 16);
      v19 = OUTLINED_FUNCTION_8();
      v20(v19);
      v21 = sub_231E10DF0();
      v22 = *(v21 + 48);
      v23 = *(v21 + 52);
      swift_allocObject();
      v24 = sub_231E10DE0();
      (*(v7 + 8))(v12, v4);
      return v24;
    }

    __break(1u);
  }

  if (a1 >> 32)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if ((a1 & 0xFFFFF800) != 0xD800)
  {
    if (a1 >> 16 <= 0x10)
    {
      a1 = &v26;
      goto LABEL_9;
    }

    goto LABEL_12;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_231DC5348(const char *a1, char a2)
{
  v3 = sub_231E10DC0();
  v4 = OUTLINED_FUNCTION_24(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_4_1();
  v11 = v10 - v9;
  v12 = sub_231E10D80();
  v13 = OUTLINED_FUNCTION_24(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_4_1();
  v18 = sub_231E10DA0();
  sub_231E10DD0();
  v27 = sub_231E11B70();
  result = sub_231E11BE0();
  if ((result & 1) == 0)
  {
LABEL_13:

    v24 = *(v15 + 8);
    v25 = OUTLINED_FUNCTION_8();
    return v26(v25);
  }

  if ((a2 & 1) == 0)
  {
    v20 = a1;
    if (a1)
    {
LABEL_9:

      sub_231E10E00();

      if ((*(v6 + 88))(v11, v3) == *MEMORY[0x277D85B00])
      {
        v21 = "[Error] Interval already ended";
      }

      else
      {
        (*(v6 + 8))(v11, v3);
        v21 = " enableTelemetry=YES";
      }

      v22 = swift_slowAlloc();
      *v22 = 0;
      v23 = sub_231E10D70();
      _os_signpost_emit_with_name_impl(&dword_231CAE000, v18, v27, v23, v20, v21, v22, 2u);
      MEMORY[0x23837E1D0](v22, -1, -1);
      goto LABEL_13;
    }

    __break(1u);
  }

  if (a1 >> 32)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((a1 & 0xFFFFF800) != 0xD800)
  {
    if (a1 >> 16 <= 0x10)
    {
      v20 = &v29;
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_231DC55B4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 48) = a6;
  *(v7 + 56) = v6;
  *(v7 + 88) = a4;
  *(v7 + 32) = a3;
  *(v7 + 40) = a5;
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  return MEMORY[0x2822009F8](sub_231DC55E0, 0, 0);
}

uint64_t sub_231DC55E0()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 40);
  *(v0 + 64) = sub_231DC514C(*(v0 + 24), *(v0 + 88));
  v8 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  *v4 = v0;
  v4[1] = sub_231DC56EC;
  v5 = *(v0 + 48);
  v6 = *(v0 + 16);

  return v8(v6);
}

uint64_t sub_231DC56EC()
{
  v2 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_231DC5868;
  }

  else
  {
    v3 = sub_231DC5800;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_231DC5800()
{
  OUTLINED_FUNCTION_9_18();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_231DC5868()
{
  OUTLINED_FUNCTION_9_18();

  v1 = *(v0 + 8);
  v2 = *(v0 + 80);

  return v1();
}

uint64_t sub_231DC58D0(const char *a1, uint64_t a2, char a3, void (*a4)(void))
{
  sub_231DC514C(a1, a3);
  a4();
  sub_231DC5348(a1, a3);
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t OUTLINED_FUNCTION_7_23()
{

  return __swift_project_value_buffer(v0, v1);
}

uint64_t sub_231DC5A08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = sub_231E0F950();
  v6[8] = v7;
  OUTLINED_FUNCTION_6(v7);
  v6[9] = v8;
  v10 = *(v9 + 64) + 15;
  v6[10] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74A78, &unk_231E1E3E0) - 8) + 64) + 15;
  v6[11] = swift_task_alloc();
  v12 = sub_231E10070();
  v6[12] = v12;
  OUTLINED_FUNCTION_6(v12);
  v6[13] = v13;
  v15 = *(v14 + 64) + 15;
  v6[14] = swift_task_alloc();
  v6[15] = swift_task_alloc();
  v6[16] = swift_task_alloc();
  v16 = sub_231E10340();
  v6[17] = v16;
  OUTLINED_FUNCTION_6(v16);
  v6[18] = v17;
  v19 = *(v18 + 64) + 15;
  v6[19] = swift_task_alloc();
  v6[20] = swift_task_alloc();
  v20 = sub_231E10E30();
  v6[21] = v20;
  OUTLINED_FUNCTION_6(v20);
  v6[22] = v21;
  v23 = *(v22 + 64) + 15;
  v6[23] = swift_task_alloc();
  v6[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_231DC5C2C, 0, 0);
}

uint64_t sub_231DC5C2C()
{
  v131 = v0;
  v1 = v0[7];
  if ((sub_231CE2244() & 1) == 0)
  {
    v3 = v0[7];
    v4 = sub_231E102B0();
    if (v4 != 2 && (v4 & 1) != 0)
    {
      v2 = 45;
      goto LABEL_35;
    }

    v5 = v0[7];
    v6 = sub_231E10250();
    if (v6 != 2 && (v6 & 1) != 0)
    {
      v7 = v0[24];
      v8 = v0[21];
      v9 = v0[22];
      v10 = v0[20];
      v11 = v0[17];
      v12 = v0[18];
      v13 = v0[7];
      v14 = v0[2];
      v15 = sub_231DC4B64();
      (*(v9 + 16))(v7, v15, v8);
      (*(v12 + 16))(v10, v13, v11);

      v16 = sub_231E10E10();
      v17 = sub_231E11AF0();

      v18 = os_log_type_enabled(v16, v17);
      v19 = v0[24];
      v20 = v0[21];
      v21 = v0[22];
      v22 = v0[20];
      v24 = v0[17];
      v23 = v0[18];
      if (v18)
      {
        v127 = v0[24];
        v25 = v0[2];
        v26 = swift_slowAlloc();
        v130 = swift_slowAlloc();
        *v26 = 136446466;
        v27 = sub_231DDB1E8();
        v125 = v20;
        v29 = sub_231CB5000(v27, v28, &v130);

        *(v26 + 4) = v29;
        *(v26 + 12) = 2082;
        v30 = sub_231E10000();
        v32 = v31;
        (*(v23 + 8))(v22, v24);
        v33 = sub_231CB5000(v30, v32, &v130);

        *(v26 + 14) = v33;
        _os_log_impl(&dword_231CAE000, v16, v17, "%{public}s VIP mail eligible for priority; Mail id: %{public}s", v26, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_30();
        OUTLINED_FUNCTION_30();

        (*(v21 + 8))(v127, v125);
      }

      else
      {

        (*(v23 + 8))(v22, v24);
        (*(v21 + 8))(v19, v20);
      }

      goto LABEL_34;
    }

    v35 = v0[11];
    v34 = v0[12];
    v36 = v0[7];
    sub_231E10110();
    if (__swift_getEnumTagSinglePayload(v35, 1, v34) == 1)
    {
      sub_231D163CC(v0[11]);
    }

    else
    {
      v37 = v0[15];
      v39 = v0[12];
      v38 = v0[13];
      (*(v38 + 32))(v0[16], v0[11], v39);
      sub_231D16434(&qword_2814CB030);
      sub_231E11CC0();
      sub_231D16434(&qword_2814CB038);
      v40 = sub_231E115D0();
      v41 = *(v38 + 8);
      v41(v37, v39);
      if ((v40 & 1) == 0)
      {
        v126 = v41;
        v43 = v0[22];
        v42 = v0[23];
        v44 = v0[21];
        v45 = v0[18];
        v46 = v0[16];
        v121 = v0[17];
        v123 = v0[19];
        v48 = v0[13];
        v47 = v0[14];
        v49 = v0[12];
        v119 = v0[7];
        v50 = v0[2];
        v51 = sub_231DC4B64();
        (*(v43 + 16))(v42, v51, v44);
        (*(v48 + 16))(v47, v46, v49);
        (*(v45 + 16))(v123, v119, v121);

        v52 = sub_231E10E10();
        v53 = sub_231E11AF0();

        v54 = os_log_type_enabled(v52, v53);
        v56 = v0[22];
        v55 = v0[23];
        v57 = v0[21];
        v58 = v0[18];
        v59 = v0[19];
        v124 = v0[17];
        v60 = v0[14];
        v61 = v0[12];
        if (v54)
        {
          v122 = v0[23];
          v62 = v0[2];
          v118 = v53;
          v63 = swift_slowAlloc();
          v130 = swift_slowAlloc();
          *v63 = 136446722;
          v64 = sub_231DDB1E8();
          v120 = v57;
          v66 = sub_231CB5000(v64, v65, &v130);

          *(v63 + 4) = v66;
          *(v63 + 12) = 2082;
          v67 = sub_231E10040();
          v69 = v68;
          v126(v60, v61);
          v70 = sub_231CB5000(v67, v69, &v130);

          *(v63 + 14) = v70;
          *(v63 + 22) = 2082;
          v71 = sub_231E10000();
          v73 = v72;
          (*(v58 + 8))(v59, v124);
          v74 = sub_231CB5000(v71, v73, &v130);

          *(v63 + 24) = v74;
          _os_log_impl(&dword_231CAE000, v52, v118, "%{public}s Mail has categories: %{public}s; id: %{public}s", v63, 0x20u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_30();
          v75 = v126;
          OUTLINED_FUNCTION_30();

          (*(v56 + 8))(v122, v120);
        }

        else
        {

          (*(v58 + 8))(v59, v124);
          v75 = v126;
          v126(v60, v61);
          (*(v56 + 8))(v55, v57);
        }

        v76 = v0[15];
        v77 = v0[16];
        v78 = v0[12];
        sub_231E10020();
        OUTLINED_FUNCTION_90_0();
        v79 = sub_231E11C90();
        v80 = OUTLINED_FUNCTION_90_0();
        v75(v80);
        sub_231E10050();
        OUTLINED_FUNCTION_90_0();
        v81 = sub_231E11C90();
        v82 = OUTLINED_FUNCTION_90_0();
        v75(v82);
        sub_231E10030();
        OUTLINED_FUNCTION_90_0();
        v83 = sub_231E11C90();
        v84 = OUTLINED_FUNCTION_90_0();
        v75(v84);
        if ((v81 & 1) == 0 && (v79 & v83 & 1) == 0)
        {
          (v75)(v0[16], v0[12]);
          v2 = 29;
          goto LABEL_35;
        }

        v85 = v0[5];
        v86 = v85[4];
        __swift_project_boxed_opaque_existential_0(v85, v85[3]);
        v87 = *(v86 + 8);
        v88 = OUTLINED_FUNCTION_25();
        if (v89(v88) & 1) != 0 || (v90 = v0[4], v91 = v90[4], __swift_project_boxed_opaque_existential_0(v90, v90[3]), v92 = *(v91 + 16), v93 = OUTLINED_FUNCTION_25(), (v94(v93)))
        {
          (v75)(v0[16], v0[12]);
        }

        else
        {
          v113 = v0[16];
          v114 = v0[12];
          v115 = *sub_231D70008();

          v116 = sub_231D70048();

          v117 = OUTLINED_FUNCTION_25();
          v75(v117);
          if ((v116 & 1) == 0)
          {
            goto LABEL_3;
          }
        }

        goto LABEL_27;
      }

      v41(v0[16], v0[12]);
    }

    v2 = 38;
    goto LABEL_35;
  }

  if (sub_231D56880(0, v0[6]))
  {
LABEL_3:
    v2 = 41;
    goto LABEL_35;
  }

LABEL_27:
  v95 = v0[7];
  v96 = v0[3];
  v2 = 0;
  if ((sub_231CE2244() & 1) == 0 || !v96)
  {
LABEL_35:
    v129 = v2;
    OUTLINED_FUNCTION_2_29();
    v111 = v110;

    v112 = v0[1];

    return v112(v129, 0, v111);
  }

  v97 = v0[7];
  v98 = v0[3];

  v99 = sub_231E10140();
  v0[25] = v100;
  if (!v100)
  {

LABEL_34:
    v2 = 0;
    goto LABEL_35;
  }

  v101 = v99;
  v102 = v100;
  v103 = v0[10];
  v104 = v0[3];
  sub_231DB0818(v99);
  v105 = *(*v98 + 136);
  v128 = (v105 + *v105);
  v106 = v105[1];
  v107 = swift_task_alloc();
  v0[26] = v107;
  *v107 = v0;
  v107[1] = sub_231DC6590;
  v108 = v0[10];

  return (v128)(v101, v102, v108, 0);
}

uint64_t sub_231DC6590(uint64_t a1, uint64_t a2, char a3)
{
  v4 = *v3;
  v5 = *(*v3 + 208);
  v6 = *(*v3 + 200);
  v7 = *(*v3 + 80);
  v8 = *(*v3 + 72);
  v9 = *(*v3 + 64);
  v14 = *v3;
  *(v4 + 216) = a1;
  *(v4 + 224) = a2;
  *(v4 + 232) = a3;

  v10 = *(v8 + 8);
  v11 = OUTLINED_FUNCTION_25();
  v12(v11);

  return MEMORY[0x2822009F8](sub_231DC670C, 0, 0);
}

uint64_t sub_231DC670C()
{
  v1 = *(v0 + 24);

  v5 = *(v0 + 216);
  v6 = *(v0 + 224);
  OUTLINED_FUNCTION_2_29();
  v2 = *(v0 + 232);

  v3 = *(v0 + 8);

  return v3(v5, v6, v2);
}

uint64_t sub_231DC67E8()
{
  v0 = swift_allocObject();
  v1 = sub_231E112C0();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  *(v0 + 16) = sub_231E112B0();
  return v0;
}

uint64_t sub_231DC683C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75180, &qword_231E13690);
  v2 = OUTLINED_FUNCTION_47(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - v5;
  v7 = sub_231E119F0();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v0;

  sub_231CC3BE0(0, 0, v6, &unk_231E20060, v8);
}

uint64_t sub_231DC691C()
{
  OUTLINED_FUNCTION_18();
  v0[2] = v1;
  v2 = sub_231E11260();
  v0[3] = v2;
  OUTLINED_FUNCTION_6(v2);
  v0[4] = v3;
  v5 = *(v4 + 64);
  v0[5] = OUTLINED_FUNCTION_55();
  v6 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_231DC69C0()
{
  OUTLINED_FUNCTION_29();
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = *(v0[2] + 16);
  (*(v2 + 104))(v1, *MEMORY[0x277D4B168], v3);
  sub_231E112A0();
  (*(v2 + 8))(v1, v3);

  OUTLINED_FUNCTION_19();

  return v5();
}

uint64_t sub_231DC6A74()
{
  OUTLINED_FUNCTION_18();
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_231CBFF60;

  return sub_231DC691C();
}

uint64_t sub_231DC6B04()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_4_24(v1, v2, v3, v4, v5, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74530, &qword_231E17080);
  OUTLINED_FUNCTION_47(v7);
  v9 = *(v8 + 64) + 15;
  v0[33] = swift_task_alloc();
  v0[34] = swift_task_alloc();
  v10 = sub_231E10F20();
  v0[35] = v10;
  OUTLINED_FUNCTION_6(v10);
  v0[36] = v11;
  v13 = *(v12 + 64);
  v0[37] = OUTLINED_FUNCTION_55();
  v14 = sub_231E11050();
  v0[38] = v14;
  OUTLINED_FUNCTION_6(v14);
  v0[39] = v15;
  v17 = *(v16 + 64);
  v0[40] = OUTLINED_FUNCTION_55();
  v18 = sub_231E10F70();
  v0[41] = v18;
  OUTLINED_FUNCTION_6(v18);
  v0[42] = v19;
  v21 = *(v20 + 64);
  v0[43] = OUTLINED_FUNCTION_55();
  v22 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v22, v23, v24);
}

uint64_t sub_231DC6C80()
{
  OUTLINED_FUNCTION_10_21();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD740A8, &unk_231E13540);
  v2 = sub_231E10400();
  OUTLINED_FUNCTION_6(v2);
  v4 = *(v3 + 72);
  *(OUTLINED_FUNCTION_16_13() + 16) = xmmword_231E138E0;
  sub_231E100E0();
  v5 = sub_231E10150();
  sub_231DC7B54(v5);
  sub_231E090CC();
  OUTLINED_FUNCTION_19_12();
  sub_231CD1550(v6, v7, v8);

  v9 = *(v1 + 16);

  sub_231E10F10();
  v10 = *(MEMORY[0x277D4B170] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_58_0();
  *(v0 + 352) = v11;
  *v11 = v12;
  v13 = OUTLINED_FUNCTION_3_30(v11);

  return MEMORY[0x2821AB750](v13);
}

uint64_t sub_231DC6DFC()
{
  OUTLINED_FUNCTION_29();
  v2 = *v1;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v5 = v2[44];
  *v4 = *v1;
  *(v3 + 360) = v0;

  (*(v2[36] + 8))(v2[37], v2[35]);
  OUTLINED_FUNCTION_12_0();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_231DC6F50()
{
  v2 = *(v0 + 336);
  v1 = *(v0 + 344);
  v3 = *(v0 + 320);
  v5 = *(v0 + 304);
  v4 = *(v0 + 312);
  v14 = *(v0 + 296);
  v6 = *(v0 + 264);
  v7 = *(v0 + 272);
  v12 = *(v0 + 328);
  __dst = *(v0 + 216);
  sub_231E11040();
  v9 = v8;
  sub_231E11030();
  sub_231CE1054(v7, v6, &qword_27DD74530, &qword_231E17080);
  sub_231CF4764();
  sub_231CD28C8((v0 + 120), (v0 + 16), v9);
  sub_231CE1118(v7, &qword_27DD74530, &qword_231E17080);
  (*(v4 + 8))(v3, v5);
  (*(v2 + 8))(v1, v12);
  memcpy(__dst, (v0 + 16), 0x68uLL);

  OUTLINED_FUNCTION_19();

  return v10();
}

uint64_t sub_231DC70B8()
{
  OUTLINED_FUNCTION_50_0();
  v1 = v0[40];
  v2 = v0[37];
  v4 = v0[33];
  v3 = v0[34];
  (*(v0[42] + 8))(v0[43], v0[41]);

  OUTLINED_FUNCTION_19();
  v6 = v0[45];

  return v5();
}

uint64_t sub_231DC7168()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_4_24(v1, v2, v3, v4, v5, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74530, &qword_231E17080);
  OUTLINED_FUNCTION_47(v7);
  v9 = *(v8 + 64) + 15;
  v0[33] = swift_task_alloc();
  v0[34] = swift_task_alloc();
  v10 = sub_231E10FB0();
  v0[35] = v10;
  OUTLINED_FUNCTION_6(v10);
  v0[36] = v11;
  v13 = *(v12 + 64);
  v0[37] = OUTLINED_FUNCTION_55();
  v14 = sub_231E11050();
  v0[38] = v14;
  OUTLINED_FUNCTION_6(v14);
  v0[39] = v15;
  v17 = *(v16 + 64);
  v0[40] = OUTLINED_FUNCTION_55();
  v18 = sub_231E11020();
  v0[41] = v18;
  OUTLINED_FUNCTION_6(v18);
  v0[42] = v19;
  v21 = *(v20 + 64);
  v0[43] = OUTLINED_FUNCTION_55();
  v22 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v22, v23, v24);
}

uint64_t sub_231DC72E4()
{
  OUTLINED_FUNCTION_10_21();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD740A8, &unk_231E13540);
  v2 = sub_231E10400();
  OUTLINED_FUNCTION_6(v2);
  v4 = *(v3 + 72);
  *(OUTLINED_FUNCTION_16_13() + 16) = xmmword_231E138E0;
  sub_231E104F0();
  v5 = sub_231E10590();
  sub_231DC7B54(v5);
  sub_231E090CC();
  OUTLINED_FUNCTION_19_12();
  sub_231DC2418(v6, v7, v8);

  v9 = *(v1 + 16);

  sub_231E10FA0();
  v10 = *(MEMORY[0x277D4B178] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_58_0();
  *(v0 + 352) = v11;
  *v11 = v12;
  v13 = OUTLINED_FUNCTION_3_30(v11);

  return MEMORY[0x2821AB758](v13);
}

uint64_t sub_231DC7460()
{
  OUTLINED_FUNCTION_29();
  v2 = *v1;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v5 = v2[44];
  *v4 = *v1;
  *(v3 + 360) = v0;

  (*(v2[36] + 8))(v2[37], v2[35]);
  OUTLINED_FUNCTION_12_0();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_231DC75B4()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_4_24(v1, v2, v3, v4, v5, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74530, &qword_231E17080);
  OUTLINED_FUNCTION_47(v7);
  v9 = *(v8 + 64) + 15;
  v0[33] = swift_task_alloc();
  v0[34] = swift_task_alloc();
  v10 = sub_231E110E0();
  v0[35] = v10;
  OUTLINED_FUNCTION_6(v10);
  v0[36] = v11;
  v13 = *(v12 + 64);
  v0[37] = OUTLINED_FUNCTION_55();
  v14 = sub_231E11050();
  v0[38] = v14;
  OUTLINED_FUNCTION_6(v14);
  v0[39] = v15;
  v17 = *(v16 + 64);
  v0[40] = OUTLINED_FUNCTION_55();
  v18 = sub_231E11110();
  v0[41] = v18;
  OUTLINED_FUNCTION_6(v18);
  v0[42] = v19;
  v21 = *(v20 + 64);
  v0[43] = OUTLINED_FUNCTION_55();
  v22 = OUTLINED_FUNCTION_10();

  return MEMORY[0x2822009F8](v22, v23, v24);
}

uint64_t sub_231DC7730()
{
  v1 = *(v0 + 344);
  v2 = *(v0 + 248);
  v3 = *(v0 + 256);
  v4 = *(v0 + 240);
  v15 = *(v0 + 232);
  v16 = *(v0 + 296);
  v5 = *(v0 + 224);
  v6 = *(v0 + 368);
  type metadata accessor for GenerativeModelsHandleResolver();
  sub_231E10930();
  v7 = sub_231E10970();
  sub_231DC7B54(v7);
  v8 = sub_231E090CC();
  sub_231DF2E4C(v8, v2, v1);

  v9 = *(v3 + 16);

  sub_231E110D0();
  v10 = *(MEMORY[0x277D4B180] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_58_0();
  *(v0 + 352) = v11;
  *v11 = v12;
  v13 = OUTLINED_FUNCTION_3_30(v11);

  return MEMORY[0x2821AB760](v13);
}

uint64_t sub_231DC7890()
{
  OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_2_30(v1);
  swift_task_alloc();
  OUTLINED_FUNCTION_58_0();
  *(v0 + 128) = v2;
  *v2 = v3;
  OUTLINED_FUNCTION_1_30(v2);

  return sub_231DC6B04();
}

uint64_t sub_231DC7928()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v6 = *(v5 + 128);
  v7 = *v1;
  OUTLINED_FUNCTION_4();
  *v8 = v7;

  if (!v0)
  {
    memcpy(*(v3 + 120), (v3 + 16), 0x68uLL);
  }

  v9 = *(v7 + 8);

  return v9();
}

uint64_t sub_231DC7A24()
{
  OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_2_30(v1);
  swift_task_alloc();
  OUTLINED_FUNCTION_58_0();
  *(v0 + 128) = v2;
  *v2 = v3;
  OUTLINED_FUNCTION_1_30(v2);

  return sub_231DC75B4();
}

uint64_t sub_231DC7ABC()
{
  OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_2_30(v1);
  swift_task_alloc();
  OUTLINED_FUNCTION_58_0();
  *(v0 + 128) = v2;
  *v2 = v3;
  OUTLINED_FUNCTION_1_30(v2);

  return sub_231DC7168();
}

uint64_t sub_231DC7B54(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_231DC7C78(result, 1);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v7 = (*(v6 + 24) >> 1) - *(v6 + 16);
  result = sub_231E10400();
  v8 = *(result - 8);
  if (v7 < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = *(v8 + 72);
  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v11 = *(v6 + 16);
  v12 = __OFADD__(v11, v3);
  v13 = v11 + v3;
  if (!v12)
  {
    *(v6 + 16) = v13;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

size_t sub_231DC7C78(uint64_t a1, char a2)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if (!result || a1 > *(v5 + 24) >> 1)
  {
    if (*(v5 + 16) <= a1)
    {
      v7 = a1;
    }

    else
    {
      v7 = *(v5 + 16);
    }

    result = sub_231CFDF64(result, v7, a2 & 1, v5);
    *v2 = result;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_30(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = v2[43];
  result = v2[40];
  v5 = v2[37];
  return result;
}

uint64_t OUTLINED_FUNCTION_10_21()
{
  v2 = *(v0 + 344);
  v4 = *(v0 + 248);
  v3 = *(v0 + 256);
  v5 = *(v0 + 240);
  v9 = *(v0 + 232);
  v10 = *(v0 + 296);
  v6 = *(v0 + 224);
  v8 = *(v0 + 368);

  return type metadata accessor for GenerativeModelsHandleResolver();
}

uint64_t OUTLINED_FUNCTION_16_13()
{
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);

  return swift_allocObject();
}

uint64_t sub_231DC7D98@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

uint64_t sub_231DC7DA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[4] = a4;
  v5[5] = v4;
  v5[2] = a1;
  v5[3] = a3;
  v6 = sub_231E0F950();
  v5[6] = v6;
  v7 = *(v6 - 8);
  v5[7] = v7;
  v8 = *(v7 + 64) + 15;
  v5[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_231DC7E6C, 0, 0);
}

uint64_t sub_231DC7E6C()
{
  if (sub_231D2CF78(1, v0[4], sub_231D2D37C, &type metadata for SummarizationManager.Option, sub_231D2D3D0))
  {
    goto LABEL_15;
  }

  v1 = v0[5];
  v2 = sub_231E10B40();
  v4 = v3;
  v0[9] = v3;
  if (!v3)
  {
    goto LABEL_15;
  }

  v5 = v2;
  sub_231DAA834(v2, v3);
  v7 = v6;
  type metadata accessor for AssetManager();
  sub_231D45490();
  v9 = sub_231D2CF78(v7, v8, sub_231D2D2D4, &type metadata for AppCategoryID, sub_231D2D328);

  if (v9)
  {
LABEL_14:

    goto LABEL_15;
  }

  sub_231D45834();
  v11 = sub_231D24924(v5, v4, v10);

  if (v11)
  {
LABEL_15:
    v21 = v0[8];

    v22 = OUTLINED_FUNCTION_0_20();

    return v23(v22);
  }

  v12 = v0[2];
  if (*v12 < 2)
  {
    goto LABEL_14;
  }

  v13 = sub_231DC3C70(v12[1]);
  result = sub_231DC3C70(v12[2]);
  v15 = __OFADD__(v13, result);
  v16 = v13 + result;
  if (v15)
  {
    __break(1u);
    goto LABEL_22;
  }

  result = sub_231DC3C70(*(v0[2] + 24));
  v15 = __OFADD__(v16, result);
  v17 = v16 + result;
  if (v15)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  result = sub_231DC3C70(*(v0[2] + 32));
  v18 = v17 + result;
  if (__OFADD__(v17, result))
  {
LABEL_23:
    __break(1u);
    return result;
  }

  v19 = sub_231CC8B48();
  if (v20)
  {
    v19 = sub_231D117E8();
  }

  if (v18 < v19)
  {
    goto LABEL_14;
  }

  v24 = v0[8];
  v25 = v0[3];
  sub_231DB0818(v19);
  v26 = *(*v25 + 136);
  v31 = (v26 + *v26);
  v27 = v26[1];
  v28 = swift_task_alloc();
  v0[10] = v28;
  *v28 = v0;
  v28[1] = sub_231D2CDFC;
  v29 = v0[8];
  v30 = v0[3];

  return (v31)(v5, v4, v29, 0);
}

uint64_t sub_231DC81C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 16);
  *(v4 + 16) = *a1;
  *(v4 + 32) = v7;
  *(v4 + 48) = *(a1 + 32);
  v9 = swift_task_alloc();
  *(v4 + 56) = v9;
  *v9 = v4;
  v9[1] = sub_231DC8284;

  return sub_231DC7DA8(v4 + 16, v8, a3, a4);
}

uint64_t sub_231DC8284()
{
  OUTLINED_FUNCTION_1_15();
  v2 = *(v1 + 56);
  v6 = *v0;

  v3 = OUTLINED_FUNCTION_0_20();

  return v4(v3);
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_231DC838C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_231DC83CC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_231DC8424()
{
  type metadata accessor for BundleIdRedactor();
  v0 = swift_allocObject();
  result = sub_231DC89BC();
  qword_2814CE640 = v0;
  return result;
}

uint64_t sub_231DC8460()
{
  v0 = swift_allocObject();
  sub_231DC89BC();
  return v0;
}

uint64_t *sub_231DC8498()
{
  if (qword_2814CD6C0 != -1)
  {
    OUTLINED_FUNCTION_4_25();
  }

  return &qword_2814CE640;
}

uint64_t sub_231DC84D8()
{
  v0 = sub_231E11F20();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_231DC8524(char a1)
{
  result = 0xD000000000000020;
  switch(a1)
  {
    case 1:
      result = 0xD00000000000001ELL;
      break;
    case 2:
      result = 0xD000000000000015;
      break;
    case 3:
      result = 0xD000000000000029;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_231DC85B4(char a1, char a2)
{
  v3 = 0xD000000000000020;
  v4 = "classificationClient";
  v5 = "classificationClient";
  switch(a1)
  {
    case 1:
      v5 = ".lastRolloverDay";
      v3 = 0xD00000000000001ELL;
      break;
    case 2:
      v5 = "BundleIdRedactor.seenBundleIds";
      v3 = 0xD000000000000015;
      break;
    case 3:
      v5 = "BundleIdRedactor.salt";
      v3 = 0xD000000000000029;
      break;
    default:
      break;
  }

  v6 = 0xD000000000000020;
  switch(a2)
  {
    case 1:
      v4 = ".lastRolloverDay";
      v6 = 0xD00000000000001ELL;
      break;
    case 2:
      v4 = "BundleIdRedactor.seenBundleIds";
      v6 = 0xD000000000000015;
      break;
    case 3:
      v4 = "BundleIdRedactor.salt";
      v6 = 0xD000000000000029;
      break;
    default:
      break;
  }

  if (v3 == v6 && (v5 | 0x8000000000000000) == (v4 | 0x8000000000000000))
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_231E12100();
  }

  return v8 & 1;
}

uint64_t sub_231DC86F0()
{
  sub_231E12220();
  sub_231DC8740();
  return sub_231E12250();
}

uint64_t sub_231DC8740()
{
  sub_231E116E0();
}

uint64_t sub_231DC87FC()
{
  sub_231E12220();
  sub_231DC8740();
  return sub_231E12250();
}

uint64_t sub_231DC8840@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_231DC84D8();
  *a2 = result;
  return result;
}

unint64_t sub_231DC8870@<X0>(unint64_t *a1@<X8>)
{
  result = sub_231DC8524(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_231DC88AC(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (!a3)
  {
    if (!a6)
    {
      goto LABEL_11;
    }

    return 0;
  }

  if (a3 != 1)
  {
    switch(a1)
    {
      case 1:
        if (a6 != 2 || a4 != 1)
        {
          return 0;
        }

        break;
      case 2:
        if (a6 != 2 || a4 != 2)
        {
          return 0;
        }

        break;
      case 3:
        if (a6 != 2 || a4 != 3)
        {
          return 0;
        }

        break;
      case 4:
        if (a6 != 2 || a4 != 4)
        {
          return 0;
        }

        break;
      case 5:
        if (a6 != 2 || a4 != 5)
        {
          return 0;
        }

        break;
      default:
        return a6 == 2 && !(a5 | a4);
    }

    return !a5;
  }

  if (a6 != 1)
  {
    return 0;
  }

LABEL_11:
  if (a1 != a4 || a2 != a5)
  {
    return sub_231E12100();
  }

  return 1;
}

uint64_t sub_231DC89BC()
{
  v1 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  *(v0 + 16) = sub_231CC8DEC(0xD00000000000002BLL, 0x8000000231E2E230);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD753E0, &unk_231E201B8);
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  *(v0 + 24) = v2;
  return v0;
}

uint64_t sub_231DC8A40(uint64_t a1, uint64_t a2)
{
  v4 = sub_231E0F950();
  v5 = OUTLINED_FUNCTION_24(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4_1();
  v12 = v11 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74E20, &qword_231E13890);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_231E138E0;
  *(inited + 32) = a1;
  *(inited + 40) = a2;

  sub_231E0F920();
  OUTLINED_FUNCTION_83();
  v14 = sub_231DC8B8C();
  swift_setDeallocating();
  sub_231D51CD0();
  (*(v7 + 8))(v12, v4);
  if (v14[2])
  {
    v16 = v14[4];
    v15 = v14[5];
  }

  else
  {
    v16 = 12324;
  }

  return v16;
}

uint64_t sub_231DC8B8C()
{
  v0 = sub_231DC8D2C();
  v1 = *(v0 + 16);
  if (v1)
  {
    v18 = MEMORY[0x277D84F90];
    sub_231CC686C(0, v1, 0);
    v2 = v18;
    v3 = (v0 + 48);
    do
    {
      v5 = *(v3 - 2);
      v4 = *(v3 - 1);
      if (*v3)
      {
        if (*v3 == 1)
        {
          v6 = OUTLINED_FUNCTION_83();
          sub_231DCA534(v6, v7, 1u);
          v8 = OUTLINED_FUNCTION_83();
          MEMORY[0x23837CC20](v8);
          v9 = OUTLINED_FUNCTION_83();
          sub_231DCA54C(v9, v10, 1u);
          v11 = 2962724;
          v4 = 0xE300000000000000;
        }

        else
        {
          v4 = 0xE200000000000000;
          v11 = 12324;
          v16 = *(v3 - 2);
          switch(v5)
          {
            case 1:
              v11 = 12580;
              break;
            case 2:
              v11 = 12836;
              break;
            case 3:
              v11 = 13092;
              break;
            case 4:
              v11 = 13348;
              break;
            case 5:
              v11 = 13860;
              break;
            default:
              break;
          }
        }
      }

      else
      {
        v12 = *(v3 - 1);

        v11 = v5;
      }

      v14 = *(v18 + 16);
      v13 = *(v18 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_231CC686C((v13 > 1), v14 + 1, 1);
      }

      v3 += 24;
      *(v18 + 16) = v14 + 1;
      v15 = v18 + 16 * v14;
      *(v15 + 32) = v11;
      *(v15 + 40) = v4;
      --v1;
    }

    while (v1);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v2;
}

uint64_t sub_231DC8D2C()
{
  v1 = *(v0 + 24);
  os_unfair_lock_lock(v1 + 4);
  sub_231DCAA28(v2, &v4);
  os_unfair_lock_unlock(v1 + 4);
  return v4;
}

uint64_t sub_231DC8DA0(uint64_t a1, uint64_t *a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v6 = v5;
  v34 = a5;
  v7 = *(a1 + 16);
  if (v7)
  {
    v33 = a3;
    v35 = a4;
    v39 = MEMORY[0x277D84F90];
    v10 = sub_231DCA584(0, v7, 0);
    v11 = v39;
    v12 = (a1 + 40);
    v36 = a2;
    do
    {
      v13 = *(v12 - 1);
      v14 = *v12;
      v15 = *a2;
      v38[0] = v13;
      v38[1] = v14;
      MEMORY[0x28223BE20](v10);
      v32[2] = v38;

      v16 = v6;
      v17 = sub_231D162D0(sub_231D163AC, v32, v15);
      v37 = v16;

      if (v17)
      {
        v18 = 0;
      }

      else
      {
        v19 = *(*a2 + 16);
        if (v19 >= sub_231D127A0())
        {
          v23 = v35;
          if (v35 >> 60 == 15)
          {

            v14 = 0;
            v18 = 2;
            v13 = 4;
          }

          else
          {
            v24 = v33;
            sub_231CF4400(v33, v35);
            v13 = sub_231DCA0FC(v13, v14, v24, v23);
            v26 = v25;
            v18 = v27;
            sub_231CF4340(v24, v23);

            v14 = v26;
          }
        }

        else
        {

          sub_231DCA4A8();
          v20 = *(*a2 + 16);
          v10 = sub_231DCA4F4(v20);
          v18 = 0;
          v21 = *a2;
          *(v21 + 16) = v20 + 1;
          v22 = v21 + 16 * v20;
          *(v22 + 32) = v13;
          *(v22 + 40) = v14;
        }
      }

      v39 = v11;
      v29 = *(v11 + 16);
      v28 = *(v11 + 24);
      if (v29 >= v28 >> 1)
      {
        v10 = sub_231DCA584((v28 > 1), v29 + 1, 1);
        v11 = v39;
      }

      *(v11 + 16) = v29 + 1;
      v30 = v11 + 24 * v29;
      *(v30 + 32) = v13;
      *(v30 + 40) = v14;
      *(v30 + 48) = v18;
      v12 += 2;
      --v7;
      a2 = v36;
      v6 = v37;
    }

    while (v7);
    sub_231CF4340(v33, v35);
  }

  else
  {
    sub_231CF4340(a3, a4);
    v11 = MEMORY[0x277D84F90];
  }

  return v11;
}

void sub_231DC9010(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v181 = a3;
  v172 = sub_231E10E30();
  v8 = OUTLINED_FUNCTION_24(v172);
  v171 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_4_1();
  v170 = v13 - v12;
  v176 = sub_231E0F570();
  v14 = OUTLINED_FUNCTION_24(v176);
  v175 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_4_1();
  v174 = v19 - v18;
  v20 = sub_231E0FA10();
  v21 = OUTLINED_FUNCTION_24(v20);
  v187 = v22;
  v188.n128_u64[0] = v21;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_4_1();
  v183 = (v26 - v25);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75400, &unk_231E20378);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v30 = &v168 - v29;
  v31 = sub_231E0FA70();
  v32 = OUTLINED_FUNCTION_24(v31);
  v182 = v33;
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_4_1();
  v38 = v37 - v36;
  v186 = sub_231E0FA20();
  v39 = OUTLINED_FUNCTION_24(v186);
  v185 = v40;
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_4_1();
  v189 = v44 - v43;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_27DD74AD0, &qword_231E16C40);
  v46 = *(*(v45 - 8) + 64);
  v47 = MEMORY[0x28223BE20](v45 - 8);
  v173 = &v168 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = MEMORY[0x28223BE20](v47);
  v51 = &v168 - v50;
  MEMORY[0x28223BE20](v49);
  v53 = &v168 - v52;
  *&v193 = sub_231E0F950();
  v54 = OUTLINED_FUNCTION_24(v193);
  v191 = v55;
  v57 = *(v56 + 64);
  v58 = MEMORY[0x28223BE20](v54);
  v59 = MEMORY[0x28223BE20](v58);
  v184 = &v168 - v60;
  MEMORY[0x28223BE20](v59);
  v190 = &v168 - v62;
  v177 = a1;
  v63 = *(a1 + 16);
  if (!v63)
  {
    v78 = *(a2 + 16);
    v79 = MEMORY[0x277D84F90];
    if (v78)
    {
      v80 = a4;
      OUTLINED_FUNCTION_2_31(MEMORY[0x277D84F90]);
      v79 = v198;
      v81 = *(v198 + 16);
      v82 = 24 * v81;
      v83 = xmmword_231E201A0;
      do
      {
        v198 = v79;
        v84 = v81 + 1;
        if (v81 >= *(v79 + 24) >> 1)
        {
          v86 = OUTLINED_FUNCTION_5_27();
          v193 = v87;
          sub_231DCA584(v86, v88, v89);
          v83 = v193;
          v79 = v198;
        }

        *(v79 + 16) = v84;
        v85 = v79 + v82;
        *(v85 + 32) = v83;
        *(v85 + 48) = 2;
        v82 += 24;
        v81 = v84;
        --v78;
      }

      while (v78);
      a4 = v80;
    }

    *a4 = v79;
    return;
  }

  v169 = v61;
  v178 = a2;
  v179 = a4;
  v180 = v4;
  v64 = v63;
  v65 = sub_231E115F0();
  v192 = v64;
  v66 = [v64 BOOLForKey_];

  if ((v66 & 1) == 0 && [objc_opt_self() isInternalBuild])
  {
    v67 = v178;
    v68 = *(v178 + 16);
    if (v68)
    {
      OUTLINED_FUNCTION_2_31(MEMORY[0x277D84F90]);
      v69 = v198;
      v70 = (v67 + 40);
      do
      {
        v72 = *(v70 - 1);
        v71 = *v70;
        v198 = v69;
        v74 = *(v69 + 16);
        v73 = *(v69 + 24);

        if (v74 >= v73 >> 1)
        {
          sub_231DCA584((v73 > 1), v74 + 1, 1);
          v69 = v198;
        }

        *(v69 + 16) = v74 + 1;
        v75 = v69 + 24 * v74;
        *(v75 + 32) = v72;
        *(v75 + 40) = v71;
        *(v75 + 48) = 0;
        v70 += 2;
        --v68;
      }

      while (v68);

      goto LABEL_48;
    }

LABEL_47:
    v69 = MEMORY[0x277D84F90];
LABEL_48:
    *v179 = v69;
    return;
  }

  v168 = "classificationClient";
  v76 = sub_231E115F0();
  v77 = [v192 objectForKey_];

  if (v77)
  {
    sub_231E11C80();
    swift_unknownObjectRelease();
  }

  else
  {
    v196 = 0u;
    v197 = 0u;
  }

  v90 = v193;
  v91 = v190;
  OUTLINED_FUNCTION_0_15();
  if (!v92)
  {
    sub_231CE1118(&v198, &dword_27DD741E0, &qword_231E15D70);
    __swift_storeEnumTagSinglePayload(v53, 1, 1, v90);
LABEL_24:
    sub_231E0F890();
    if (__swift_getEnumTagSinglePayload(v53, 1, v90) != 1)
    {
      sub_231CE1118(v53, &dword_27DD74AD0, &qword_231E16C40);
    }

    goto LABEL_26;
  }

  v93 = swift_dynamicCast();
  __swift_storeEnumTagSinglePayload(v53, v93 ^ 1u, 1, v90);
  if (__swift_getEnumTagSinglePayload(v53, 1, v90) == 1)
  {
    goto LABEL_24;
  }

  (*(v191 + 32))(v91, v53, v90);
LABEL_26:
  v94 = v189;
  sub_231E0F9F0();
  sub_231E0FA60();
  if (__swift_getEnumTagSinglePayload(v30, 1, v31) != 1)
  {
    (*(v182 + 32))(v38, v30, v31);
    v69 = v94;
    sub_231E0FA00();
    v95 = v187;
    v96 = *(v187 + 104);
    v97 = v183;
    LODWORD(v182) = *MEMORY[0x277CC9968];
    v98 = v188.n128_u64[0];
    v96(v183);
    sub_231E0F9E0();
    (*(v95 + 8))(v97, v98);
    v99 = v193;
    if (__swift_getEnumTagSinglePayload(v51, 1, v193) == 1)
    {
      sub_231CE1118(v51, &dword_27DD74AD0, &qword_231E16C40);
      if (*(v178 + 16))
      {
        OUTLINED_FUNCTION_2_31(MEMORY[0x277D84F90]);
        OUTLINED_FUNCTION_13_17();
        do
        {
          OUTLINED_FUNCTION_11_19();
          if (v101)
          {
            v103 = OUTLINED_FUNCTION_5_27();
            v188 = v104;
            sub_231DCA584(v103, v105, v106);
            v100 = v188;
            v69 = v198;
          }

          OUTLINED_FUNCTION_6_21(v100);
        }

        while (!v102);

        OUTLINED_FUNCTION_3_31();
        v122(v94, v186);
        (*(v191 + 8))(v190, v193);
        goto LABEL_48;
      }

      OUTLINED_FUNCTION_3_31();
      v125(v94, v186);
      (*(v191 + 8))(v91, v193);
      goto LABEL_47;
    }

    v107 = *(v191 + 32);
    v108 = OUTLINED_FUNCTION_174_2();
    v107(v108);
    if (sub_231E0F8D0())
    {
      v183 = v107;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75408, &qword_231E20388);
      v109 = *(v187 + 72);
      v110 = (*(v187 + 80) + 32) & ~*(v187 + 80);
      v111 = swift_allocObject();
      *(v111 + 16) = xmmword_231E1D9C0;
      v112 = v111 + v110;
      v113 = v188.n128_u64[0];
      (v96)(v112, *MEMORY[0x277CC9988], v188.n128_u64[0]);
      (v96)(v112 + v109, *MEMORY[0x277CC9998], v113);
      (v96)(v112 + 2 * v109, v182, v113);
      sub_231DCA6B8(v111);
      v114 = v174;
      v69 = v189;
      sub_231E0F9C0();

      v115 = v173;
      sub_231E0F9D0();
      (*(v175 + 8))(v114, v176);
      if (__swift_getEnumTagSinglePayload(v115, 1, v99) == 1)
      {
        sub_231CE1118(v115, &dword_27DD74AD0, &qword_231E16C40);
        if (*(v178 + 16))
        {
          OUTLINED_FUNCTION_2_31(MEMORY[0x277D84F90]);
          OUTLINED_FUNCTION_13_17();
          v116 = v189;
          do
          {
            OUTLINED_FUNCTION_11_19();
            if (v101)
            {
              v118 = OUTLINED_FUNCTION_5_27();
              v188 = v119;
              sub_231DCA584(v118, v120, v121);
              v117 = v188;
              v69 = v198;
            }

            OUTLINED_FUNCTION_6_21(v117);
          }

          while (!v102);

          v163 = *(v191 + 8);
          v164 = v193;
          v163(v184, v193);
          OUTLINED_FUNCTION_3_31();
          v165(v116, v186);
          v163(v190, v164);
        }

        else
        {

          v166 = OUTLINED_FUNCTION_7_24();
          MEMORY[0](v166);
          OUTLINED_FUNCTION_3_31();
          v167(v189, v186);
          MEMORY[0](v190, v69);
          v69 = MEMORY[0x277D84F90];
        }

        goto LABEL_48;
      }

      (v183)(v169, v115, v99);
      v126 = sub_231DC4E70();
      v127 = v171;
      v128 = v170;
      v129 = v172;
      (*(v171 + 16))(v170, v126, v172);
      v130 = sub_231E10E10();
      v131 = sub_231E11AF0();
      if (os_log_type_enabled(v130, v131))
      {
        v132 = swift_slowAlloc();
        *v132 = 0;
        MEMORY[0x23837E1D0](v132, -1, -1);
      }

      (*(v127 + 8))(v128, v129);
      v133 = sub_231E115F0();
      v134 = v192;
      [v192 removeObjectForKey_];

      v135 = sub_231E115F0();
      [v134 removeObjectForKey_];

      v136 = v169;
      v137 = sub_231E0F8C0();
      v138 = sub_231E115F0();
      v124 = &selRef_notificationSourceWithIdentifier_;
      [v134 setObject:v137 forKey:v138];

      (*(v191 + 8))(v136, v99);
      v123 = v178;
    }

    else
    {
      v123 = v178;
      v124 = &selRef_notificationSourceWithIdentifier_;
    }

    v139 = OUTLINED_FUNCTION_14_14();
    v140 = [v192 objectForKey_];

    if (v140)
    {
      sub_231E11C80();
      swift_unknownObjectRelease();
    }

    else
    {
      v196 = 0u;
      v197 = 0u;
    }

    OUTLINED_FUNCTION_0_15();
    if (v141)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74460, &qword_231E1C990);
      if (swift_dynamicCast())
      {
        v142 = v194;
        goto LABEL_60;
      }
    }

    else
    {
      sub_231CE1118(&v198, &dword_27DD741E0, &qword_231E15D70);
    }

    v142 = MEMORY[0x277D84F90];
LABEL_60:
    v199 = v142;
    v143 = sub_231E115F0();
    v144 = [v192 objectForKey_];

    if (v144)
    {
      sub_231E11C80();
      swift_unknownObjectRelease();
    }

    else
    {
      v196 = 0u;
      v197 = 0u;
    }

    OUTLINED_FUNCTION_0_15();
    if (v145)
    {
      if (swift_dynamicCast())
      {
        v146 = v194;
        v147 = v195;
LABEL_70:
        v152 = OUTLINED_FUNCTION_174_2();
        sub_231D26DF0(v152, v153);
        v154 = v177;

        v155 = sub_231DC8DA0(v123, &v199, v146, v147, v154);
        v156 = sub_231E11850();
        v157 = OUTLINED_FUNCTION_14_14();
        v158 = v192;
        [v192 v124[90]];

        v159 = OUTLINED_FUNCTION_174_2();
        sub_231CF4340(v159, v160);

        v161 = OUTLINED_FUNCTION_7_24();
        (v157)(v161);
        OUTLINED_FUNCTION_3_31();
        v162(v189, v186);
        (v157)(v190, v146);

        *v179 = v155;
        return;
      }
    }

    else
    {
      sub_231CE1118(&v198, &dword_27DD741E0, &qword_231E15D70);
    }

    v148 = sub_231E118B0();
    *(v148 + 16) = 32;
    *(v148 + 32) = 0u;
    *(v148 + 48) = 0u;
    if (SecRandomCopyBytes(*MEMORY[0x277CDC540], 0x20uLL, (v148 + 32)))
    {

      v146 = 0;
      v147 = 0xF000000000000000;
    }

    else
    {
      v146 = sub_231D26D40(v148 + 32, *(v148 + 16));
      v147 = v149;

      OUTLINED_FUNCTION_174_2();
      v150 = sub_231E0F820();
      v151 = sub_231E115F0();
      [v192 v124[90]];
    }

    goto LABEL_70;
  }

  __break(1u);
}

uint64_t sub_231DCA0FC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v48 = *v5;
  v8 = sub_231E114D0();
  v9 = OUTLINED_FUNCTION_24(v8);
  v51 = v10;
  v52 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_4_1();
  v15 = v14 - v13;
  v16 = sub_231E11500();
  v17 = OUTLINED_FUNCTION_24(v16);
  v49 = v18;
  v50 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_4_1();
  v23 = v22 - v21;
  v24 = sub_231E11670();
  v25 = OUTLINED_FUNCTION_24(v24);
  v27 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_4_1();
  v32 = v31 - v30;
  sub_231E11660();
  sub_231E11630();
  v34 = v33;
  (*(v27 + 8))(v32, v24);
  if (v34 >> 60 == 15)
  {
    return 5;
  }

  sub_231E114F0();
  v36 = OUTLINED_FUNCTION_116_3();
  sub_231CF4400(v36, v37);
  v38 = OUTLINED_FUNCTION_116_3();
  sub_231D27708(v38, v39);
  v40 = OUTLINED_FUNCTION_116_3();
  sub_231CF4340(v40, v41);
  sub_231CF4400(a3, a4);
  sub_231D27708(a3, a4);
  sub_231CF4354(a3, a4);
  v42 = sub_231E114E0();
  MEMORY[0x28223BE20](v42);
  *(&v48 - 2) = v48;
  sub_231E114C0();
  v43 = v53;
  v44 = v54;
  v35 = sub_231E0F830();
  sub_231CF4354(v43, v44);
  v45 = OUTLINED_FUNCTION_116_3();
  sub_231CF4340(v45, v46);
  (*(v51 + 8))(v15, v52);
  (*(v49 + 8))(v23, v50);
  return v35;
}

uint64_t sub_231DCA414()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t sub_231DCA43C()
{
  sub_231DCA414();

  return swift_deallocClassInstance();
}

void *sub_231DCA470(uint64_t a1, void *(*a2)(uint64_t *__return_ptr))
{
  result = a2(&v4);
  if (!v2)
  {
    return v4;
  }

  return result;
}

char *sub_231DCA4A8()
{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!result)
  {
    result = sub_231CE0B9C(result, *(v1 + 2) + 1, 1, v1);
    *v0 = result;
  }

  return result;
}

char *sub_231DCA4F4(char *result)
{
  v2 = *(*v1 + 3);
  if ((result + 1) > (v2 >> 1))
  {
    result = sub_231CE0B9C((v2 > 1), (result + 1), 1, *v1);
    *v1 = result;
  }

  return result;
}

uint64_t sub_231DCA534(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t sub_231DCA54C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

char *sub_231DCA584(char *a1, int64_t a2, char a3)
{
  result = sub_231DCA5A4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_231DCA5A4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75418, qword_231E203A0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[24 * v8] <= v12)
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_231DCA6B8(uint64_t a1)
{
  v2 = sub_231E0FA10();
  v34 = *(v2 - 8);
  v3 = *(v34 + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v38 = &v29 - v7;
  if (!*(a1 + 16))
  {
    v9 = MEMORY[0x277D84FA0];
    goto LABEL_15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75410, &unk_231E20390);
  result = sub_231E11D50();
  v9 = result;
  v33 = *(a1 + 16);
  if (!v33)
  {
LABEL_15:

    return v9;
  }

  v10 = 0;
  v37 = result + 56;
  v11 = *(v34 + 80);
  v31 = a1;
  v32 = a1 + ((v11 + 32) & ~v11);
  v36 = v34 + 16;
  v12 = (v34 + 8);
  v30 = (v34 + 32);
  while (v10 < *(a1 + 16))
  {
    v13 = *(v34 + 72);
    v35 = v10 + 1;
    v14 = *(v34 + 16);
    v14(v38, v32 + v13 * v10, v2);
    v15 = *(v9 + 40);
    sub_231DCACCC(&qword_2814CBC48, MEMORY[0x277CC99D0]);
    v16 = sub_231E11550();
    v17 = ~(-1 << *(v9 + 32));
    while (1)
    {
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v37 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) == 0)
      {
        break;
      }

      v22 = v9;
      v14(v6, *(v9 + 48) + v18 * v13, v2);
      sub_231DCACCC(&qword_2814CBC40, MEMORY[0x277CC99D0]);
      v23 = sub_231E115D0();
      v24 = *v12;
      (*v12)(v6, v2);
      if (v23)
      {
        result = (v24)(v38, v2);
        v9 = v22;
        goto LABEL_12;
      }

      v16 = v18 + 1;
      v9 = v22;
    }

    v25 = v38;
    *(v37 + 8 * v19) = v21 | v20;
    result = (*v30)(*(v9 + 48) + v18 * v13, v25, v2);
    v26 = *(v9 + 16);
    v27 = __OFADD__(v26, 1);
    v28 = v26 + 1;
    if (v27)
    {
      goto LABEL_17;
    }

    *(v9 + 16) = v28;
LABEL_12:
    v10 = v35;
    a1 = v31;
    if (v35 == v33)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

void *sub_231DCA9FC@<X0>(uint64_t a1@<X0>, void *(*a2)(uint64_t *__return_ptr)@<X1>, void *a3@<X8>)
{
  result = sub_231DCA470(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

unint64_t sub_231DCAA48()
{
  result = qword_27DD753E8;
  if (!qword_27DD753E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD753E8);
  }

  return result;
}

unint64_t sub_231DCAAA0()
{
  result = qword_27DD753F0;
  if (!qword_27DD753F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DD753F8, qword_231E20268);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD753F0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for BundleIdRedactor.Keys(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t get_enum_tag_for_layout_string_22ProactiveSummarization16BundleIdRedactorC6ResultO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_231DCAC20(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 17))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 2)
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

uint64_t sub_231DCAC60(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_231DCACA4(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_231DCACCC(unint64_t *a1, void (*a2)(uint64_t))
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

void OUTLINED_FUNCTION_6_21(__n128 a1)
{
  *(v1 + 16) = v2;
  v5 = (v1 + v3);
  v5[2] = a1;
  v5[3].n128_u8[0] = v4;
}

uint64_t OUTLINED_FUNCTION_7_24()
{
  v1 = *(*(v0 - 208) + 8);
  result = *(v0 - 272);
  v3 = *(v0 - 192);
  return result;
}

uint64_t sub_231DCAD74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v4[33] = a3;
  v4[34] = v3;
  v4[31] = a1;
  v4[32] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD73F98, &unk_231E170E0);
  OUTLINED_FUNCTION_47(v5);
  v7 = *(v6 + 64);
  v4[35] = OUTLINED_FUNCTION_55();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD74C00, &unk_231E203C0);
  OUTLINED_FUNCTION_47(v8);
  v10 = *(v9 + 64);
  v4[36] = OUTLINED_FUNCTION_55();
  v11 = sub_231E10010();
  v4[37] = v11;
  OUTLINED_FUNCTION_6(v11);
  v4[38] = v12;
  v14 = *(v13 + 64);
  v4[39] = OUTLINED_FUNCTION_55();
  v15 = sub_231E11B90();
  v4[40] = v15;
  OUTLINED_FUNCTION_6(v15);
  v4[41] = v16;
  v18 = *(v17 + 64);
  v4[42] = OUTLINED_FUNCTION_55();
  v19 = sub_231E11BA0();
  v4[43] = v19;
  OUTLINED_FUNCTION_6(v19);
  v4[44] = v20;
  v22 = *(v21 + 64);
  v4[45] = OUTLINED_FUNCTION_55();
  v23 = sub_231E10E30();
  v4[46] = v23;
  OUTLINED_FUNCTION_6(v23);
  v4[47] = v24;
  v26 = *(v25 + 64) + 15;
  v4[48] = swift_task_alloc();
  v4[49] = swift_task_alloc();
  v4[50] = swift_task_alloc();
  v4[51] = swift_task_alloc();
  v4[52] = swift_task_alloc();
  v4[53] = swift_task_alloc();
  v4[54] = swift_task_alloc();
  v4[55] = swift_task_alloc();
  v4[56] = swift_task_alloc();
  v4[57] = swift_task_alloc();
  v4[58] = swift_task_alloc();
  v4[59] = swift_task_alloc();
  v4[60] = swift_task_alloc();
  v27 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_231DCB028, 0, 0);
}

uint64_t sub_231DCB028()
{
  v206 = v0;
  v205[1] = *MEMORY[0x277D85DE8];
  v3 = v0[31];
  v4 = sub_231E10140();
  v0[61] = v5;
  v204 = v0;
  if (!v5)
  {
    v34 = v0[50];
    v35 = v0[46];
    v36 = v0[47];
    v37 = v0[33];
    v38 = sub_231CB4EEC();
    (*(v36 + 16))(v34, v38, v35);

    v39 = sub_231E10E10();
    sub_231E11AF0();

    v40 = OUTLINED_FUNCTION_85();
    v41 = v0[50];
    v42 = v0[46];
    v43 = v0[47];
    if (v40)
    {
      v44 = v0[33];
      OUTLINED_FUNCTION_9_1();
      v45 = OUTLINED_FUNCTION_199();
      OUTLINED_FUNCTION_16_14(v45);
      *v1 = 136446210;
      v46 = sub_231DE2398(v44);
      v48 = sub_231CB5000(v46, v47, v205);

      *(v1 + 4) = v48;
      v51 = "%{public}s AppIntentMailFetcher: Unable to fetch mail thread, missing bundleId";
LABEL_9:
      OUTLINED_FUNCTION_9_10(&dword_231CAE000, v49, v50, v51);
      OUTLINED_FUNCTION_2_6();
      OUTLINED_FUNCTION_30();
    }

LABEL_10:

    v62 = *(v43 + 8);
    v63 = OUTLINED_FUNCTION_25();
    v64(v63);
    goto LABEL_70;
  }

  v6 = v4;
  v7 = v5;
  v8 = v0[47];
  v9 = v0[33];
  v10 = v0[31];
  v11 = sub_231E102F0();
  v0[62] = v12;
  v13 = (v8 + 16);
  v14 = v0[46];
  if (!v12)
  {
    v52 = v0[51];

    v53 = sub_231CB4EEC();
    (*v13)(v52, v53, v14);

    v39 = sub_231E10E10();
    sub_231E11AD0();

    v54 = OUTLINED_FUNCTION_85();
    v55 = v0[51];
    v56 = v0[46];
    v43 = v0[47];
    if (v54)
    {
      v57 = v0[33];
      OUTLINED_FUNCTION_9_1();
      v58 = OUTLINED_FUNCTION_199();
      OUTLINED_FUNCTION_16_14(v58);
      *v6 = 136446210;
      v59 = sub_231DE2398(v57);
      v61 = sub_231CB5000(v59, v60, v205);

      *(v6 + 4) = v61;
      v51 = "%{public}s AppIntentMailFetcher: Unable to fetch mail thread, missing conversation id";
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  v181 = v11;
  v183 = v12;
  v192 = v6;
  v15 = v0[60];
  v16 = sub_231CB4EEC();
  v0[63] = v16;
  v17 = *v13;
  v0[64] = *v13;
  v0[65] = v13 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v188 = v17;
  v190 = v16;
  (v17)(v15);

  v18 = sub_231E10E10();
  sub_231E11AF0();
  v197 = v9;

  v19 = OUTLINED_FUNCTION_39_0();
  v20 = v0[60];
  v21 = &off_231E13000;
  v22 = v0[46];
  v23 = v0[47];
  v186 = v7;
  if (v19)
  {
    v201 = v0[60];
    v24 = v0[33];
    OUTLINED_FUNCTION_16_0();
    v2 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    OUTLINED_FUNCTION_16_14(v25);
    *v2 = 136446466;
    v26 = sub_231DE2398(v24);
    v21 = sub_231CB5000(v26, v27, v205);

    *(v2 + 4) = v21;
    *(v2 + 12) = 2080;
    *(v2 + 14) = sub_231CB5000(v6, v7, v205);
    OUTLINED_FUNCTION_3_2();
    _os_log_impl(v28, v29, v30, v31, v32, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_11();

    v33 = *(v23 + 8);
    v33(v201, v22);
  }

  else
  {

    v33 = *(v23 + 8);
    v33(v20, v22);
  }

  v0[66] = v33;
  v65 = v33;
  v66 = v0[59];
  v67 = v0[46];
  v185 = [objc_allocWithZone(MEMORY[0x277D23C38]) initWithOptions_];
  v0[67] = v185;
  v188(v66, v190, v67);

  v68 = sub_231E10E10();
  sub_231E11AC0();

  v69 = OUTLINED_FUNCTION_39_0();
  v70 = v0[59];
  v71 = v0[46];
  v72 = v0[47];
  v184 = v65;
  if (v69)
  {
    v202 = v0[59];
    v73 = v0[33];
    OUTLINED_FUNCTION_9_1();
    v74 = OUTLINED_FUNCTION_17_1();
    OUTLINED_FUNCTION_16_14(v74);
    *v2 = 136446210;
    v75 = sub_231DE2398(v73);
    v21 = sub_231CB5000(v75, v76, v205);

    *(v2 + 4) = v21;
    OUTLINED_FUNCTION_3_2();
    _os_log_impl(v77, v78, v79, v80, v81, 0xCu);
    OUTLINED_FUNCTION_2_6();
    OUTLINED_FUNCTION_11();

    v82 = v202;
  }

  else
  {

    v82 = v70;
  }

  v65(v82, v71);
  v83 = sub_231E115F0();
  v0[26] = 0;
  v84 = [v185 entitiesForBundleIdentifier:v83 error:v0 + 26];

  v85 = v0[26];
  if (!v84)
  {
    v112 = v85;
    v113 = sub_231E0F6F0();

    swift_willThrow();
    if (!v113)
    {
      goto LABEL_59;
    }

    OUTLINED_FUNCTION_14_15();
    v114 = v0[33];
    v115(v112);

    v116 = v113;
    v117 = sub_231E10E10();
    v118 = sub_231E11AD0();

    v119 = OUTLINED_FUNCTION_85();
    v120 = v0[66];
    v121 = v0[49];
    v123 = v0[46];
    v122 = v0[47];
    if (v119)
    {
      v124 = v0[33];
      OUTLINED_FUNCTION_16_0();
      swift_slowAlloc();
      OUTLINED_FUNCTION_28_11();
      v125 = OUTLINED_FUNCTION_49_0();
      OUTLINED_FUNCTION_16_14(v125);
      *v120 = 136446466;
      v126 = sub_231DE2398(v124);
      v128 = OUTLINED_FUNCTION_46_9(v126, v127);

      *(v120 + 4) = v128;
      OUTLINED_FUNCTION_53_9();
      v129 = v113;
      v130 = _swift_stdlib_bridgeErrorToNSError();
      OUTLINED_FUNCTION_56_12(v130);
      _os_log_impl(&dword_231CAE000, v117, v118, "%{public}s AppIntentMailFetcher: Error while fetching messages, error: %@", v120, 0x16u);
      sub_231CC154C(v21, &qword_27DD74D30, &unk_231E13480);
      v0 = v204;
      OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_2_6();
      OUTLINED_FUNCTION_11();
    }

    else
    {
    }

    (v120)(v121, v123);
    goto LABEL_70;
  }

  sub_231CC1784(0, &qword_27DD75450, 0x277D23818);
  v86 = sub_231E11870();
  v87 = v85;

  v88 = sub_231CBA138(v86);
  if (!v88)
  {
LABEL_48:

    v176 = 0;
    goto LABEL_58;
  }

  v89 = v88;
  v90 = 0;
  v91 = v86 & 0xC000000000000001;
  v177 = v86 + 32;
  v178 = v86 & 0xFFFFFFFFFFFFFF8;
  v182 = v86;
  v179 = v86 & 0xC000000000000001;
  v180 = v88;
  while (1)
  {
    if (v91)
    {
      v92 = MEMORY[0x23837D2A0](v90, v86);
    }

    else
    {
      if (v90 >= *(v178 + 16))
      {
        goto LABEL_76;
      }

      v92 = *(v177 + 8 * v90);
    }

    v93 = v92;
    if (__OFADD__(v90++, 1))
    {
      goto LABEL_75;
    }

    v95 = sub_231DD18F8(v92);
    if (v95)
    {
      break;
    }

LABEL_47:

    v0 = v204;
    if (v90 == v89)
    {
      goto LABEL_48;
    }
  }

  v96 = v95;
  v195 = v93;
  v199 = v95 & 0xFFFFFFFFFFFFFF8;
  if (!(v95 >> 62))
  {
    v97 = *((v95 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v97)
    {
      goto LABEL_26;
    }

    goto LABEL_46;
  }

  v97 = sub_231E11ED0();
  if (!v97)
  {
LABEL_46:

    v93 = v195;
    v86 = v182;
    v91 = v179;
    v89 = v180;
    goto LABEL_47;
  }

LABEL_26:
  v98 = 0;
  while (1)
  {
    if ((v96 & 0xC000000000000001) != 0)
    {
      v99 = MEMORY[0x23837D2A0](v98, v96);
    }

    else
    {
      if (v98 >= *(v199 + 16))
      {
        goto LABEL_74;
      }

      v99 = *(v96 + 8 * v98 + 32);
    }

    v100 = v99;
    v101 = v98 + 1;
    if (__OFADD__(v98, 1))
    {
      __break(1u);
LABEL_74:
      __break(1u);
LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
    }

    v102 = sub_231DD1968(v99);
    if (!v103)
    {
      goto LABEL_38;
    }

    if (v102 == 1818845549 && v103 == 0xE400000000000000)
    {
      break;
    }

    v105 = sub_231E12100();

    if (v105)
    {
      goto LABEL_40;
    }

LABEL_38:

LABEL_45:
    ++v98;
    if (v101 == v97)
    {
      goto LABEL_46;
    }
  }

LABEL_40:
  v106 = [v100 name];
  v107 = sub_231E11620();
  v109 = v108;

  if (v107 != 0xD000000000000011 || v109 != 0x8000000231E36F60)
  {
    v111 = sub_231E12100();

    if (v111)
    {
      goto LABEL_57;
    }

    goto LABEL_45;
  }

LABEL_57:

  v0 = v204;
  v176 = v195;
LABEL_58:
  v194 = v176;
  v0[68] = v176;
LABEL_59:
  v188(v0[58], v190, v0[46]);

  v131 = sub_231E10E10();
  v132 = sub_231E11AC0();

  v133 = os_log_type_enabled(v131, v132);
  v134 = v0[58];
  v135 = v0[46];
  v136 = v0[47];
  if (v133)
  {
    v137 = v0[33];
    v138 = OUTLINED_FUNCTION_9_1();
    v139 = swift_slowAlloc();
    v205[0] = v139;
    *v138 = 136446210;
    v140 = sub_231DE2398(v137);
    v142 = sub_231CB5000(v140, v141, v205);

    *(v138 + 4) = v142;
    _os_log_impl(&dword_231CAE000, v131, v132, "%{public}s AppIntentMailFetcher: Finished fetching entities", v138, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v139);
    OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_30();
  }

  v184(v134, v135);
  if (v194)
  {
    v143 = v194;
    v144 = swift_task_alloc();
    v204[69] = v144;
    *v144 = v204;
    v144[1] = sub_231DCBD70;
    v145 = v204[32];
    v146 = *MEMORY[0x277D85DE8];

    return sub_231E01644(v181, v183, v192, v186);
  }

  v0 = v204;
  v148 = v204[52];
  v149 = v204[46];

  v188(v148, v190, v149);

  v150 = sub_231E10E10();
  sub_231E11AD0();

  v151 = OUTLINED_FUNCTION_85();
  v152 = v204[52];
  v153 = v204[46];
  v154 = v204[47];
  if (v151)
  {
    v155 = v204[33];
    OUTLINED_FUNCTION_9_1();
    v156 = OUTLINED_FUNCTION_199();
    OUTLINED_FUNCTION_16_14(v156);
    *v197 = 136446210;
    v157 = sub_231DE2398(v155);
    v159 = sub_231CB5000(v157, v158, v205);

    *(v197 + 4) = v159;
    v0 = v204;
    OUTLINED_FUNCTION_9_10(&dword_231CAE000, v160, v161, "%{public}s AppIntentMailFetcher: Unable to fetch mail thread, missing entity metadata");
    OUTLINED_FUNCTION_2_6();
    OUTLINED_FUNCTION_30();
  }

  v162 = OUTLINED_FUNCTION_25();
  v184(v162, v163);
LABEL_70:
  v165 = v0[59];
  v164 = v0[60];
  v167 = v0[57];
  v166 = v0[58];
  v168 = v204[56];
  v169 = v204[55];
  v170 = v204[54];
  v171 = v204[53];
  v172 = v204[52];
  v173 = v204[51];
  v187 = v204[50];
  v189 = v204[49];
  v191 = v204[48];
  v193 = v204[45];
  v196 = v204[42];
  v198 = v204[39];
  v200 = v204[36];
  v203 = v204[35];

  v174 = v204[1];
  v175 = *MEMORY[0x277D85DE8];

  return v174();
}

uint64_t sub_231DCBD70(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = *v2;
  v5 = *(*v2 + 552);
  v12 = *v2;
  *(*v2 + 560) = v1;

  if (v1)
  {
    v7 = v4[61];
    v6 = v4[62];

    v8 = sub_231DCD3EC;
  }

  else
  {
    v4[71] = a1;
    v8 = sub_231DCBED0;
  }

  v9 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_231DCBED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void (*a14)(uint64_t, void *), uint64_t a15, uint64_t a16, uint64_t a17, uint64_t *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_53_3();
  a29 = v31;
  a30 = v32;
  a28 = v30;
  a19 = *MEMORY[0x277D85DE8];
  v33 = v30[70];
  v34 = v30[65];
  v35 = v30[63];
  v36 = v30[64];
  v37 = v30[57];
  v38 = v30[46];
  v39 = v30[33];
  v40 = v30[31];
  v41 = sub_231D3F7BC(v30[71]);
  v30[72] = v41;
  v30[73] = v33;
  v36(v37, v35, v38);
  swift_bridgeObjectRetain_n();

  v42 = sub_231E10E10();
  sub_231E11AF0();

  v43 = OUTLINED_FUNCTION_39_0();
  v44 = v30[66];
  v45 = v30[57];
  v47 = v30[46];
  v46 = v30[47];
  v123 = v41;
  if (v43)
  {
    v121 = v30[57];
    v48 = v30[33];
    OUTLINED_FUNCTION_16_0();
    swift_slowAlloc();
    a14 = v44;
    v49 = OUTLINED_FUNCTION_17_1();
    a18 = v49;
    *v44 = 136446466;
    v50 = sub_231DE2398(v48);
    v52 = sub_231CB5000(v50, v51, &a18);

    *(v44 + 4) = v52;
    v41 = v123;
    *(v44 + 12) = 2048;
    v53 = *(v123 + 16);

    *(v44 + 14) = v53;

    OUTLINED_FUNCTION_3_2();
    _os_log_impl(v54, v55, v56, v57, v58, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v49);
    OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_11();

    (v44)(v121, v47);
  }

  else
  {
    swift_bridgeObjectRelease_n();

    (v44)(v45, v47);
  }

  v59 = *(v41 + 16);
  v60 = MEMORY[0x277D84F90];
  if (v59)
  {
    a18 = MEMORY[0x277D84F90];
    sub_231E11E30();
    v61 = (v41 + 40);
    do
    {
      v62 = *(v61 - 1);
      v63 = *v61;
      v64 = objc_allocWithZone(MEMORY[0x277D23800]);

      sub_231DCFF5C();
      sub_231E11E10();
      v65 = a18[2];
      sub_231E11E40();
      sub_231E11E50();
      sub_231E11E20();
      v61 += 2;
      --v59;
    }

    while (v59);
    v60 = a18;
  }

  v30[74] = v60;
  v66 = v30[68];
  v68 = v30[44];
  v67 = v30[45];
  v69 = v30[42];
  v70 = v30[43];
  v72 = v30[40];
  v71 = v30[41];
  sub_231CC1784(0, &qword_27DD75420, 0x277D23B90);
  *v67 = v60;
  (*(v68 + 104))(v67, *MEMORY[0x277D23A18], v70);
  *v69 = v66;
  (*(v71 + 104))(v69, *MEMORY[0x277D23A40], v72);
  v73 = objc_allocWithZone(MEMORY[0x277D23C68]);
  v74 = v66;

  [v73 init];
  v75 = sub_231E11BB0();
  v30[75] = v75;
  v76 = [objc_opt_self() policyWithEntityMetadata_];
  v30[76] = v76;
  v30[27] = 0;
  v77 = [v76 connectionWithError_];
  v30[77] = v77;
  v78 = v30[27];
  if (v77)
  {
    v79 = v77;
    v30[2] = v30;
    v30[7] = v30 + 28;
    v30[3] = sub_231DCC5E4;
    v80 = swift_continuation_init();
    v30[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75428, &qword_231E203D0);
    v30[10] = MEMORY[0x277D85DD0];
    v30[11] = 1107296256;
    v30[12] = sub_231D5E410;
    v30[13] = &block_descriptor_13;
    v30[14] = v80;
    v81 = v78;
    [v79 performConfigurableQuery:v75 completionHandler:v30 + 10];
    v82 = *MEMORY[0x277D85DE8];
    OUTLINED_FUNCTION_39();

    return MEMORY[0x282200938](v83);
  }

  else
  {
    v85 = v30[68];
    v122 = v30[67];
    v87 = v30[61];
    v86 = v30[62];
    v88 = v78;

    v89 = sub_231E0F6F0();

    swift_willThrow();
    OUTLINED_FUNCTION_14_15();
    v90 = v30[33];
    v91(v75);

    v92 = v89;
    v93 = sub_231E10E10();
    sub_231E11AD0();

    v94 = OUTLINED_FUNCTION_39_0();
    v95 = v30[66];
    v96 = v30[49];
    v98 = v30[46];
    v97 = v30[47];
    if (v94)
    {
      v99 = v30[33];
      OUTLINED_FUNCTION_16_0();
      swift_slowAlloc();
      v123 = v96;
      OUTLINED_FUNCTION_28_11();
      OUTLINED_FUNCTION_49_0();
      OUTLINED_FUNCTION_31_14();
      *v96 = 136446466;
      v100 = sub_231DE2398(v99);
      a14 = v95;
      v102 = sub_231CB5000(v100, v101, &a18);

      *(v96 + 4) = v102;
      OUTLINED_FUNCTION_53_9();
      v103 = v89;
      v104 = _swift_stdlib_bridgeErrorToNSError();
      OUTLINED_FUNCTION_56_12(v104);
      OUTLINED_FUNCTION_3_2();
      _os_log_impl(v105, v106, v107, v108, v109, 0x16u);
      sub_231CC154C(v88, &qword_27DD74D30, &unk_231E13480);
      OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_2_6();
      OUTLINED_FUNCTION_11();

      a14(v96, v122);
    }

    else
    {

      v110 = OUTLINED_FUNCTION_203_0();
      (v95)(v110);
    }

    OUTLINED_FUNCTION_5_28();
    OUTLINED_FUNCTION_20_16();

    OUTLINED_FUNCTION_32_10();
    v111 = *MEMORY[0x277D85DE8];
    OUTLINED_FUNCTION_39();

    return v113(v112, v113, v114, v115, v116, v117, v118, v119, a9, a10, a11, a12, a13, a14, v122, v123, a17, a18, a19, a20, a21, a22);
  }
}

uint64_t sub_231DCC5E4()
{
  v12 = *MEMORY[0x277D85DE8];
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 624) = v3;
  if (v3)
  {
    v4 = v1[74];
    v5 = v1[72];
    v6 = v1[68];
    v8 = v1[61];
    v7 = v1[62];

    v9 = sub_231DCD6B0;
  }

  else
  {
    v9 = sub_231DCC760;
  }

  v10 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_231DCC760()
{
  v176 = v0;
  v175[1] = *MEMORY[0x277D85DE8];
  v1 = &off_278947000;
  v147 = v0[28];
  v2 = [v147 value];
  v3 = [v2 value];

  sub_231E11C80();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75430, &qword_231E203D8);
  v166 = v0;
  if (OUTLINED_FUNCTION_49_10())
  {
    v4 = v0[47];

    v5 = v0[29];
    v162 = MEMORY[0x277D84F90];
    v174 = MEMORY[0x277D84F90];
    v6 = 0;
    v155 = v5 & 0xC000000000000001;
    v159 = sub_231CBA138(v5);
    v152 = v5 & 0xFFFFFFFFFFFFFF8;
    v148 = v5;
    while (v159 != v6)
    {
      if (v155)
      {
        v7 = MEMORY[0x23837D2A0](v6, v5);
      }

      else
      {
        if (v6 >= *(v152 + 16))
        {
          goto LABEL_50;
        }

        v7 = *(v5 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
      }

      v10 = [v7 v1[350]];
      sub_231E11C80();
      swift_unknownObjectRelease();
      sub_231CC1784(0, &qword_27DD75438, 0x277D237F0);
      if (OUTLINED_FUNCTION_49_10())
      {
        v25 = v0[30];

        MEMORY[0x23837CD40]();
        v26 = *((v174 & 0xFFFFFFFFFFFFFF8) + 0x18);
        if (*((v174 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v26 >> 1)
        {
          OUTLINED_FUNCTION_2_12(v26);
          sub_231E11890();
        }

        sub_231E118C0();
        v162 = v174;
        v6 = v9;
      }

      else
      {
        v167 = v8;
        v11 = v0[65];
        v12 = v0[33];
        (v0[64])(v0[56], v0[63], v0[46]);

        v13 = sub_231E10E10();
        v14 = sub_231E11AD0();

        v15 = os_log_type_enabled(v13, v14);
        v16 = v0[66];
        v17 = v0[56];
        v18 = v0[46];
        if (v15)
        {
          v19 = v0[33];
          OUTLINED_FUNCTION_9_1();
          v150 = v16;
          v20 = OUTLINED_FUNCTION_199();
          v175[0] = v20;
          *v5 = 136446210;
          v21 = sub_231DE2398(v19);
          v23 = v1;
          v24 = sub_231CB5000(v21, v22, v175);

          *(v5 + 4) = v24;
          v1 = v23;
          _os_log_impl(&dword_231CAE000, v13, v14, "%{public}s AppIntentMailFetcher: Skipping entity, failed cast", v5, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v20);
          OUTLINED_FUNCTION_30();
          v5 = v148;
          v0 = v166;
          OUTLINED_FUNCTION_30();

          v150(v17, v18);
        }

        else
        {

          v16(v17, v18);
        }

        ++v6;
      }
    }

    v53 = v0[72];
    v54 = v0[65];
    v55 = v166[64];
    v56 = v166[63];
    v57 = v166[55];
    v58 = v166[46];
    v59 = v166[33];

    v55(v57, v56, v58);
    v61 = v162;
    v60 = v166;
    swift_bridgeObjectRetain_n();

    v62 = sub_231E10E10();
    v63 = sub_231E11AF0();

    v64 = os_log_type_enabled(v62, v63);
    v65 = v166[66];
    v66 = v166[55];
    v67 = v166[46];
    if (v64)
    {
      v169 = v166[66];
      v68 = v166[33];
      OUTLINED_FUNCTION_16_0();
      v69 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      OUTLINED_FUNCTION_16_14(v70);
      *v69 = 136446466;
      v71 = sub_231DE2398(v68);
      v73 = OUTLINED_FUNCTION_46_9(v71, v72);

      *(v69 + 4) = v73;
      v60 = v166;
      *(v69 + 12) = 2048;
      v74 = sub_231CBA138(v162);

      *(v69 + 14) = v74;

      _os_log_impl(&dword_231CAE000, v62, v63, "%{public}s AppIntentMailFetcher: received count entities: %ld", v69, 0x16u);
      OUTLINED_FUNCTION_2_6();
      OUTLINED_FUNCTION_30();

      v75 = OUTLINED_FUNCTION_25();
      v169(v75);
    }

    else
    {
      swift_bridgeObjectRelease_n();

      v77 = OUTLINED_FUNCTION_25();
      v65(v77);
    }

    v78 = v60[38];
    v79 = sub_231CBA138(v162);
    v80 = 0;
    v157 = v78;
    v160 = (v78 + 32);
    v170 = MEMORY[0x277D84F90];
    while (v79 != v80)
    {
      if ((v162 & 0xC000000000000001) != 0)
      {
        v81 = MEMORY[0x23837D2A0](v80, v61);
      }

      else
      {
        if (v80 >= *((v162 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_52;
        }

        v81 = *(v61 + 8 * v80 + 32);
      }

      v82 = v81;
      if (__OFADD__(v80, 1))
      {
        goto LABEL_51;
      }

      v83 = v60[36];
      v84 = v60[37];
      sub_231DCDDB0(v81, v60[33], v83);

      OUTLINED_FUNCTION_8_17(v83, 1, v84);
      if (v85)
      {
        sub_231CC154C(v60[36], &qword_27DD74C00, &unk_231E203C0);
        ++v80;
        v61 = v162;
      }

      else
      {
        v86 = *v160;
        (*v160)(v60[39], v60[36], v60[37]);
        v87 = v170;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v87 = sub_231CC0294(0, *(v170 + 16) + 1, 1, v170, &qword_27DD740A0, &qword_231E1C7A0, MEMORY[0x277D42240], MEMORY[0x277D42240]);
        }

        v90 = *(v87 + 16);
        v89 = *(v87 + 24);
        if (v90 >= v89 >> 1)
        {
          v94 = OUTLINED_FUNCTION_2_12(v89);
          v87 = sub_231CC0294(v94, v90 + 1, 1, v87, &qword_27DD740A0, &qword_231E1C7A0, MEMORY[0x277D42240], MEMORY[0x277D42240]);
        }

        v91 = v166[39];
        v92 = v166[37];
        *(v87 + 16) = v90 + 1;
        v170 = v87;
        v93 = v87 + ((*(v157 + 80) + 32) & ~*(v157 + 80)) + *(v157 + 72) * v90;
        v60 = v166;
        v86(v93, v91, v92);
        ++v80;
        v61 = v162;
      }
    }

    v95 = v60[73];
    v175[0] = sub_231DCD940(v170, v60[31]);

    sub_231DCFFFC(v175);
    if (v95)
    {

      v96 = *MEMORY[0x277D85DE8];
    }

    v98 = v60[74];
    v171 = v60[65];
    v99 = v60[63];
    v164 = v60[64];
    v101 = v60[61];
    v100 = v60[62];
    v102 = v60;
    v103 = v60[54];
    v104 = v102[46];
    v105 = v102[33];

    v106 = v175[0];
    v164(v103, v99, v104);
    swift_retain_n();

    v107 = sub_231E10E10();
    sub_231E11AF0();

    v108 = OUTLINED_FUNCTION_39_0();
    v109 = v102[66];
    v110 = v102[54];
    v111 = v102[46];
    if (v108)
    {
      v172 = v102[66];
      v112 = v102[33];
      OUTLINED_FUNCTION_16_0();
      swift_slowAlloc();
      v113 = OUTLINED_FUNCTION_17_1();
      OUTLINED_FUNCTION_16_14(v113);
      *v104 = 136446466;
      v114 = sub_231DE2398(v112);
      v116 = OUTLINED_FUNCTION_46_9(v114, v115);

      *(v104 + 4) = v116;
      *(v104 + 12) = 2048;
      v117 = *(v106 + 16);

      *(v104 + 14) = v117;

      OUTLINED_FUNCTION_3_2();
      _os_log_impl(v118, v119, v120, v121, v122, 0x16u);
      OUTLINED_FUNCTION_2_6();
      OUTLINED_FUNCTION_11();

      v172(v110, v111);
    }

    else
    {

      v109(v110, v111);
    }

    v123 = v102[77];
    v124 = v102[76];
    v125 = v102[75];
    v126 = v102[68];
    v127 = v102[67];
    v128 = v102[35];
    v129 = v102[31];
    *v128 = v106;
    v130 = *MEMORY[0x277D42288];
    v131 = sub_231E10290();
    OUTLINED_FUNCTION_12(v131);
    (*(v132 + 104))(v128, v130, v131);
    __swift_storeEnumTagSinglePayload(v128, 0, 1, v131);
    sub_231E10090();

    v0 = v102;
  }

  else
  {
    v27 = v0[74];
    v28 = v0[72];
    v29 = v0[65];
    v30 = v0[63];
    v31 = v0[64];
    v33 = v0[61];
    v32 = v0[62];
    v34 = v0[53];
    v35 = v0[46];
    v36 = v0[33];

    v31(v34, v30, v35);

    v37 = sub_231E10E10();
    sub_231E11AD0();

    v38 = OUTLINED_FUNCTION_85();
    v39 = v0[77];
    v40 = v0[76];
    v41 = v0[75];
    v42 = v0[68];
    v163 = v0[67];
    v43 = v0[66];
    v44 = v0[53];
    v45 = v0[46];
    v168 = v0[47];
    if (v38)
    {
      v46 = v0[33];
      OUTLINED_FUNCTION_9_1();
      v156 = v44;
      v47 = OUTLINED_FUNCTION_199();
      v175[0] = v47;
      *v43 = 136446210;
      v48 = sub_231DE2398(v46);
      v153 = v45;
      v50 = OUTLINED_FUNCTION_46_9(v48, v49);

      *(v43 + 4) = v50;
      OUTLINED_FUNCTION_9_10(&dword_231CAE000, v51, v52, "%{public}s AppIntentMailFetcher: Unable to fetch mail thread, missing values from query response");
      __swift_destroy_boxed_opaque_existential_0(v47);
      OUTLINED_FUNCTION_11();
      v0 = v166;
      OUTLINED_FUNCTION_30();

      (v43)(v156, v153);
    }

    else
    {

      v76 = OUTLINED_FUNCTION_203_0();
      (v43)(v76);
    }
  }

  v135 = v0 + 59;
  v134 = v0[59];
  v133 = v135[1];
  v136 = v166[58];
  v137 = v166[57];
  v138 = v166[56];
  v139 = v166[55];
  v140 = v166[54];
  v141 = v166[53];
  v142 = v166[52];
  v143 = v166[51];
  v144 = v166[50];
  v149 = v166[49];
  v151 = v166[48];
  v154 = v166[45];
  v158 = v166[42];
  v161 = v166[39];
  v165 = v166[36];
  v173 = v166[35];

  v145 = v166[1];
  v146 = *MEMORY[0x277D85DE8];

  return v145();
}

uint64_t sub_231DCD3EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_53_3();
  a29 = v31;
  a30 = v32;
  a28 = v30;
  a19 = *MEMORY[0x277D85DE8];
  v33 = *(v30 + 560);
  v34 = *(v30 + 520);
  v35 = *(v30 + 264);
  (*(v30 + 512))(*(v30 + 384), *(v30 + 504), *(v30 + 368));

  v36 = v33;
  v37 = sub_231E10E10();
  sub_231E11AD0();

  v38 = OUTLINED_FUNCTION_39_0();
  v39 = *(v30 + 560);
  v40 = *(v30 + 544);
  v41 = *(v30 + 528);
  v43 = *(v30 + 376);
  v42 = *(v30 + 384);
  v44 = *(v30 + 368);
  if (v38)
  {
    v45 = *(v30 + 264);
    OUTLINED_FUNCTION_16_0();
    v75 = v46;
    swift_slowAlloc();
    OUTLINED_FUNCTION_28_11();
    OUTLINED_FUNCTION_49_0();
    OUTLINED_FUNCTION_31_14();
    *v42 = 136446466;
    v47 = sub_231DE2398(v45);
    v73 = v41;
    v49 = sub_231CB5000(v47, v48, &a18);

    *(v42 + 4) = v49;
    OUTLINED_FUNCTION_53_9();
    v50 = v39;
    v51 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_56_12(v51);
    OUTLINED_FUNCTION_3_2();
    _os_log_impl(v52, v53, v54, v55, v56, 0x16u);
    sub_231CC154C(v43, &qword_27DD74D30, &unk_231E13480);
    OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_2_6();
    OUTLINED_FUNCTION_11();

    v73(v42, a15);
  }

  else
  {

    v57 = OUTLINED_FUNCTION_203_0();
    (v41)(v57);
  }

  OUTLINED_FUNCTION_5_28();
  v70 = v59;
  v71 = v58;
  v72 = *(v30 + 384);
  v74 = *(v30 + 360);
  v76 = *(v30 + 336);
  v77 = *(v30 + 312);
  v78 = *(v30 + 288);
  v79 = *(v30 + 280);

  OUTLINED_FUNCTION_32_10();
  v60 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_39();

  return v62(v61, v62, v63, v64, v65, v66, v67, v68, a9, v70, v71, v72, v74, v76, v77, v78, v79, a18, a19, a20, a21, a22);
}

uint64_t sub_231DCD6B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void (*a14)(uint64_t, uint64_t), uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_53_3();
  a29 = v32;
  a30 = v33;
  a28 = v30;
  a19 = *MEMORY[0x277D85DE8];
  v34 = v30[78];
  v35 = v30[77];
  v36 = v30[76];
  v37 = v30[75];
  v38 = v30[68];
  v39 = v30[67];
  swift_willThrow();

  v40 = v30[78];
  OUTLINED_FUNCTION_14_15();
  v41 = v30[33];
  v42(v35);

  v43 = v40;
  v44 = sub_231E10E10();
  sub_231E11AD0();

  v45 = OUTLINED_FUNCTION_39_0();
  v46 = v30[66];
  v47 = v30[49];
  v49 = v30[46];
  v48 = v30[47];
  if (v45)
  {
    v50 = v30[33];
    OUTLINED_FUNCTION_16_0();
    swift_slowAlloc();
    a16 = v47;
    OUTLINED_FUNCTION_28_11();
    OUTLINED_FUNCTION_49_0();
    OUTLINED_FUNCTION_31_14();
    *v47 = 136446466;
    v51 = sub_231DE2398(v50);
    a14 = v46;
    v53 = sub_231CB5000(v51, v52, &a18);

    *(v47 + 4) = v53;
    OUTLINED_FUNCTION_53_9();
    v54 = v40;
    v55 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_56_12(v55);
    OUTLINED_FUNCTION_3_2();
    _os_log_impl(v56, v57, v58, v59, v60, 0x16u);
    sub_231CC154C(v31, &qword_27DD74D30, &unk_231E13480);
    OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_2_6();
    OUTLINED_FUNCTION_11();

    a14(v47, a15);
  }

  else
  {

    v61 = OUTLINED_FUNCTION_203_0();
    (v46)(v61);
  }

  OUTLINED_FUNCTION_5_28();
  OUTLINED_FUNCTION_20_16();

  OUTLINED_FUNCTION_32_10();
  v62 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_39();

  return v64(v63, v64, v65, v66, v67, v68, v69, v70, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_231DCD940(uint64_t a1, uint64_t a2)
{
  v56 = a2;
  v55 = sub_231E10340();
  v3 = *(v55 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v55);
  v54 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_231E0F950();
  v6 = *(v51 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v51);
  v53 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v52 = &v39 - v10;
  v11 = sub_231E10010();
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v41 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v13);
  v17 = &v39 - v16;
  v18 = 0;
  v58 = *(a1 + 16);
  v48 = (v3 + 16);
  v49 = v19 + 16;
  v46 = (v6 + 8);
  v47 = (v3 + 8);
  v40 = (v19 + 32);
  v50 = v19;
  v43 = (v19 + 8);
  v42 = MEMORY[0x277D84F90];
  v57 = a1;
  while (1)
  {
    if (v58 == v18)
    {

      return v42;
    }

    if (v18 >= *(a1 + 16))
    {
      break;
    }

    v20 = (*(v50 + 80) + 32) & ~*(v50 + 80);
    v44 = *(v50 + 72);
    v45 = v20;
    (*(v50 + 16))(v17, a1 + v20 + v44 * v18, v11);
    v21 = v11;
    v22 = v52;
    sub_231E0FFA0();
    v23 = v54;
    v24 = v55;
    (*v48)(v54, v56, v55);
    v25 = v17;
    v26 = v53;
    sub_231E101B0();
    (*v47)(v23, v24);
    sub_231DD19E0();
    v27 = v51;
    v28 = sub_231E11590();
    v29 = *v46;
    (*v46)(v26, v27);
    v29(v22, v27);
    if (v28)
    {
      result = (*v43)(v25, v21);
      ++v18;
      a1 = v57;
      v11 = v21;
      v17 = v25;
    }

    else
    {
      v31 = v44;
      v30 = v45;
      v32 = *v40;
      (*v40)(v41, v25, v21);
      v33 = v42;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v35 = v33;
      v59 = v33;
      v11 = v21;
      v17 = v25;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_231D41D7C(0, *(v35 + 16) + 1, 1);
        v35 = v59;
      }

      a1 = v57;
      v36 = v31;
      v38 = *(v35 + 16);
      v37 = *(v35 + 24);
      if (v38 >= v37 >> 1)
      {
        v45 = v32;
        sub_231D41D7C(v37 > 1, v38 + 1, 1);
        v32 = v45;
        v35 = v59;
      }

      ++v18;
      *(v35 + 16) = v38 + 1;
      v42 = v35;
      result = v32(v30 + v35 + v38 * v36, v41, v21);
    }
  }

  __break(1u);
  return result;
}

void sub_231DCDDB0(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v296 = a2;
  v273 = a3;
  v4 = sub_231E0F950();
  v5 = OUTLINED_FUNCTION_24(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v12);
  v256 = &v251 - v13;
  v14 = sub_231E10400();
  v15 = OUTLINED_FUNCTION_24(v14);
  v280 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v20);
  v279 = &v251 - v21;
  v22 = sub_231E10E30();
  v23 = OUTLINED_FUNCTION_24(v22);
  v25 = v24;
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_10_0();
  v304 = v33;
  MEMORY[0x28223BE20](v34);
  v297 = &v251 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_27DD74AD0, &qword_231E16C40);
  v37 = OUTLINED_FUNCTION_47(v36);
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_139();
  v308 = v40;
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v45);
  v47 = (&v251 - v46);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_27DD73FA0, &dword_231E13460);
  v49 = OUTLINED_FUNCTION_47(v48);
  v51 = *(v50 + 64);
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_139();
  v309 = v52;
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v56);
  v58 = &v251 - v57;
  v59 = [a1 identifier];
  v60 = [v59 instanceIdentifier];

  v258 = sub_231E11620();
  v272 = v61;

  OUTLINED_FUNCTION_105();
  v307 = v14;
  __swift_storeEnumTagSinglePayload(v62, v63, v64, v14);
  v315 = MEMORY[0x277D84F90];
  v277 = v47;
  OUTLINED_FUNCTION_105();
  v269 = v4;
  __swift_storeEnumTagSinglePayload(v65, v66, v67, v4);
  v68 = [a1 properties];
  sub_231CC1784(0, &qword_27DD75440, 0x277D238D8);
  v69 = sub_231E11870();

  v70 = sub_231CBA138(v69);
  v292 = v7;
  v291 = v70;
  v289 = v58;
  v270 = v25;
  v287 = v69;
  if (!v70)
  {
    OUTLINED_FUNCTION_24_12(&v291);
    v266 = 2;
    v83 = v7;
    OUTLINED_FUNCTION_42_11();
    v86 = v308;
    v81 = v309;
LABEL_160:

    sub_231CC6A58(v289, v81, &dword_27DD73FA0, &dword_231E13460);
    OUTLINED_FUNCTION_8_17(v81, 1, v307);
    if (v84)
    {
      OUTLINED_FUNCTION_23_11();

      OUTLINED_FUNCTION_47_7();
      OUTLINED_FUNCTION_62_6();
      sub_231CC154C(v81, &dword_27DD73FA0, &dword_231E13460);
      sub_231CB4EEC();
      OUTLINED_FUNCTION_6_22();
      v188 = v268;
      v189(v268);

      v190 = sub_231E10E10();
      sub_231E11AF0();

      if (OUTLINED_FUNCTION_33_8())
      {
        OUTLINED_FUNCTION_9_1();
        v191 = OUTLINED_FUNCTION_6_1();
        OUTLINED_FUNCTION_51_7(v191);
        *v60 = 136446210;
        v192 = sub_231DE2398(v4);
        OUTLINED_FUNCTION_63_8(v192, v193);
        OUTLINED_FUNCTION_118_2();
        *(v60 + 1) = v58;
        OUTLINED_FUNCTION_27_11(&dword_231CAE000, v194, v195, "%{public}s AppIntentMailFetcher: Skipping entity, missing sender");
        __swift_destroy_boxed_opaque_existential_0(v81);
        OUTLINED_FUNCTION_30();
        OUTLINED_FUNCTION_30();
      }

      (*(v4 + 8))(v188, v22);
      goto LABEL_186;
    }

    (*(v280 + 32))(v271, v81, v307);
    v196 = OUTLINED_FUNCTION_38_12();
    sub_231CC6A58(v196, v86, v197, v198);
    v199 = v269;
    OUTLINED_FUNCTION_8_17(v86, 1, v269);
    if (v200)
    {
      OUTLINED_FUNCTION_23_11();

      OUTLINED_FUNCTION_47_7();
      OUTLINED_FUNCTION_62_6();
      sub_231CC154C(v86, &dword_27DD74AD0, &qword_231E16C40);
      sub_231CB4EEC();
      OUTLINED_FUNCTION_6_22();
      v201 = v265;
      v202(v265);

      v203 = sub_231E10E10();
      sub_231E11AF0();

      if (OUTLINED_FUNCTION_33_8())
      {
        OUTLINED_FUNCTION_9_1();
        v204 = OUTLINED_FUNCTION_6_1();
        OUTLINED_FUNCTION_51_7(v204);
        *v60 = 136446210;
        v205 = sub_231DE2398(v4);
        OUTLINED_FUNCTION_63_8(v205, v206);
        OUTLINED_FUNCTION_118_2();
        *(v60 + 1) = v58;
        OUTLINED_FUNCTION_27_11(&dword_231CAE000, v207, v208, "%{public}s AppIntentMailFetcher: Skipping entity, missing date");
        __swift_destroy_boxed_opaque_existential_0(v81);
        OUTLINED_FUNCTION_30();
        OUTLINED_FUNCTION_30();
      }

      (*(v4 + 8))(v201, v22);
      goto LABEL_185;
    }

    (v83[4].isa)(v267, v86, v199);
    v209 = v266;
    if (v266 == 2)
    {
      OUTLINED_FUNCTION_23_11();

      OUTLINED_FUNCTION_47_7();
      OUTLINED_FUNCTION_62_6();
      sub_231CB4EEC();
      OUTLINED_FUNCTION_6_22();
      v210(v264);

      v211 = sub_231E10E10();
      sub_231E11AF0();

      if (!OUTLINED_FUNCTION_33_8())
      {

        v231 = OUTLINED_FUNCTION_34_12();
        v232(v231);
        v233 = OUTLINED_FUNCTION_9_19();
        v235 = v199;
LABEL_184:
        v234(v233, v235);
LABEL_185:
        (*(v280 + 8))(v271, v307);
LABEL_186:
        v243 = OUTLINED_FUNCTION_38_12();
        sub_231CC154C(v243, v244, v245);
        sub_231CC154C(v289, &dword_27DD73FA0, &dword_231E13460);
        v230 = 1;
        goto LABEL_187;
      }

      OUTLINED_FUNCTION_9_1();
      v212 = OUTLINED_FUNCTION_6_1();
      OUTLINED_FUNCTION_51_7(v212);
      *v60 = 136446210;
      v213 = sub_231DE2398(v4);
      v214 = v199;
      OUTLINED_FUNCTION_63_8(v213, v215);
      OUTLINED_FUNCTION_118_2();
      *(v60 + 1) = v209;
      v218 = "%{public}s AppIntentMailFetcher: Skipping entity, missing isRead";
    }

    else
    {
      v81 = v274;
      if (v274)
      {
        v219 = (v274 >> 56) & 0xF;
        if ((v274 & 0x2000000000000000) == 0)
        {
          v219 = v262 & 0xFFFFFFFFFFFFLL;
        }

        v220 = v280;
        if (v219)
        {
          v221 = v280;
          v222 = v83;
          v223 = v271;
          v224 = v307;
          (*(v280 + 16))(v259, v271, v307);
          v309 = v315;
          v225 = v267;
          v226 = v269;
          (v222[2].isa)(v260, v267, v269);
          sub_231E0FFF0();
          (v222[1].isa)(v225, v226);
          (*(v221 + 8))(v223, v224);
          v227 = OUTLINED_FUNCTION_38_12();
          sub_231CC154C(v227, v228, v229);
          sub_231CC154C(v289, &dword_27DD73FA0, &dword_231E13460);
          v230 = 0;
LABEL_187:
          v246 = sub_231E10010();
          __swift_storeEnumTagSinglePayload(v273, v230, 1, v246);
          return;
        }

        OUTLINED_FUNCTION_23_11();

        v199 = v269;
      }

      else
      {
        OUTLINED_FUNCTION_23_11();
        v220 = v280;
      }

      OUTLINED_FUNCTION_47_7();
      sub_231CB4EEC();
      OUTLINED_FUNCTION_6_22();
      v236(v261);
      v237 = v296;

      v211 = sub_231E10E10();
      sub_231E11AF0();

      if (!OUTLINED_FUNCTION_33_8())
      {

        v247 = OUTLINED_FUNCTION_34_12();
        v248(v247);
        v249 = OUTLINED_FUNCTION_9_19();
        v250(v249, v199);
        (*(v220 + 8))(v271, v307);
        goto LABEL_186;
      }

      OUTLINED_FUNCTION_9_1();
      v238 = OUTLINED_FUNCTION_6_1();
      OUTLINED_FUNCTION_51_7(v238);
      *v220 = 136446210;
      v239 = sub_231DE2398(v237);
      v214 = v199;
      OUTLINED_FUNCTION_63_8(v239, v240);
      OUTLINED_FUNCTION_118_2();
      *(v220 + 4) = v209;
      v218 = "%{public}s AppIntentMailFetcher: Skipping entity, missing body";
    }

    OUTLINED_FUNCTION_27_11(&dword_231CAE000, v216, v217, v218);
    __swift_destroy_boxed_opaque_existential_0(v81);
    OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_30();

    v241 = OUTLINED_FUNCTION_34_12();
    v242(v241);
    v233 = OUTLINED_FUNCTION_9_19();
    v235 = v214;
    goto LABEL_184;
  }

  OUTLINED_FUNCTION_24_12(&v291);
  OUTLINED_FUNCTION_29_10();
  v290 = v69 & 0xC000000000000001;
  v284 = v69 & 0xFFFFFFFFFFFFFF8;
  v283 = v69 + 32;
  v252 = (v7 + 32);
  v251 = (v7 + 8);
  v305 = v25 + 8;
  v306 = v25 + 16;
  v71 = 0;
  v278 = (v280 + 32);
  *&v72 = 136446466;
  v276 = v72;
  *&v72 = *(v73 + 1008);
  v294 = v72;
  v266 = 2;
  v295 = v22;
  OUTLINED_FUNCTION_42_11();
  while (1)
  {
    if (v290)
    {
      v74 = MEMORY[0x23837D2A0](v71, v287);
    }

    else
    {
      if (v71 >= *(v284 + 16))
      {
        goto LABEL_194;
      }

      v74 = *(v283 + 8 * v71);
    }

    v75 = v74;
    if (__OFADD__(v71++, 1))
    {
      break;
    }

    v77 = [v74 value];
    if (v77)
    {
      v78 = v77;
      v79 = [v77 value];

      sub_231E11C80();
      swift_unknownObjectRelease();
    }

    else
    {
      memset(v314, 0, sizeof(v314));
    }

    v80 = [v75 identifier];
    v81 = sub_231E11620();
    v83 = v82;

    v84 = v81 == v58 && v83 == 0xE600000000000000;
    if (v84 || (v85 = OUTLINED_FUNCTION_13_18(), v86 = v308, (v85 & 1) != 0))
    {

      sub_231CC6A58(v314, &v312, &dword_27DD741E0, &qword_231E15D70);
      v83 = v292;
      v81 = v309;
      v58 = v71;
      if (v313)
      {
        sub_231CC1784(0, &qword_27DD75448, 0x277CD3E90);
        OUTLINED_FUNCTION_40_10();
        if (OUTLINED_FUNCTION_49_10())
        {
          v87 = v310;
        }

        else
        {
          v87 = 0;
        }
      }

      else
      {
        OUTLINED_FUNCTION_48_9(&v312);
        v87 = 0;
      }

      v88 = v288;
      sub_231DCFBE8(v87, v4, v288);

      OUTLINED_FUNCTION_48_9(v314);
      v89 = v289;
      v60 = &dword_27DD73FA0;
      sub_231CC154C(v289, &dword_27DD73FA0, &dword_231E13460);
      sub_231CB37DC(v88, v89, &dword_27DD73FA0, &dword_231E13460);
      v86 = v308;
      v71 = v58;
LABEL_22:
      OUTLINED_FUNCTION_29_10();
      goto LABEL_23;
    }

    v90 = v81 == 28532 && v83 == 0xE200000000000000;
    v286 = v75;
    if (v90 || (OUTLINED_FUNCTION_13_18() & 1) != 0 || (v81 == 25443 ? (v91 = v83 == 0xE200000000000000) : (v91 = 0), (v92 = v275, v91) || (OUTLINED_FUNCTION_13_18() & 1) != 0 || (v81 == 6513506 ? (v93 = v83 == 0xE300000000000000) : (v93 = 0), v93 || (OUTLINED_FUNCTION_13_18() & 1) != 0)))
    {

      v60 = &dword_27DD741E0;
      sub_231CC6A58(v314, &v312, &dword_27DD741E0, &qword_231E15D70);
      v94 = v282;
      v95 = v304;
      v81 = v309;
      v285 = v71;
      if (!v313)
      {
        OUTLINED_FUNCTION_48_9(&v312);
LABEL_59:
        sub_231CB4EEC();
        OUTLINED_FUNCTION_30_12();
        v114(v94);

        OUTLINED_FUNCTION_41_13();
        v116 = v115;
        v83 = sub_231E10E10();
        v117 = sub_231E11AD0();

        if (OUTLINED_FUNCTION_85())
        {
          OUTLINED_FUNCTION_16_0();
          v58 = swift_slowAlloc();
          v4 = swift_slowAlloc();
          v312 = v4;
          *v58 = v276;
          v118 = sub_231DE2398(v296);
          v120 = sub_231CB5000(v118, v119, &v312);

          *(v58 + 4) = v120;
          *(v58 + 12) = 2080;
          v121 = [v116 identifier];
          v60 = sub_231E11620();
          v22 = v122;

          v123 = sub_231CB5000(v60, v22, &v312);
          OUTLINED_FUNCTION_33_15();

          *(v58 + 14) = v123;
          v86 = v308;
          _os_log_impl(&dword_231CAE000, v83, v117, "%{public}s AppIntentMailFetcher: Skipping property '%s' failed cast", v58, 0x16u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_42_11();
          OUTLINED_FUNCTION_30();
          OUTLINED_FUNCTION_29_10();
          OUTLINED_FUNCTION_30();
        }

        OUTLINED_FUNCTION_52_9();
        v124(v94, v22);
        sub_231CC154C(v314, &dword_27DD741E0, &qword_231E15D70);
        OUTLINED_FUNCTION_37_12();
        v81 = v309;
        v71 = v285;
        goto LABEL_23;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD75430, &qword_231E203D8);
      OUTLINED_FUNCTION_40_10();
      if ((OUTLINED_FUNCTION_49_10() & 1) == 0)
      {
        goto LABEL_59;
      }

      v96 = v310;
      v97 = MEMORY[0x277D84F90];
      v310 = MEMORY[0x277D84F90];
      v98 = sub_231CBA138(v96);
      v99 = 0;
      OUTLINED_FUNCTION_39_7(v98);
      v303 = v97;
      v100 = &off_278947000;
      while (1)
      {
        v60 = &dword_231E13460;
        if (v302 == v99)
        {
          break;
        }

        if (v301)
        {
          v101 = MEMORY[0x23837D2A0](v99, v96);
        }

        else
        {
          if (v99 >= *(v300 + 16))
          {
            goto LABEL_190;
          }

          v101 = *(v96 + 8 * v99 + 32);
        }

        v102 = v101;
        if (__OFADD__(v99, 1))
        {
          __break(1u);
LABEL_190:
          __break(1u);
LABEL_191:
          __break(1u);
LABEL_192:
          __break(1u);
          goto LABEL_193;
        }

        v103 = [v101 v100[350]];
        sub_231E11C80();
        swift_unknownObjectRelease();
        sub_231CC1784(0, &qword_27DD75448, 0x277CD3E90);
        if (OUTLINED_FUNCTION_49_10())
        {

          MEMORY[0x23837CD40]();
          v113 = *((v310 & 0xFFFFFFFFFFFFFF8) + 0x18);
          if (*((v310 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v113 >> 1)
          {
            OUTLINED_FUNCTION_2_12(v113);
            sub_231E11890();
          }

          sub_231E118C0();
          v303 = v310;
          ++v99;
          v86 = v308;
        }

        else
        {
          sub_231CB4EEC();
          OUTLINED_FUNCTION_30_12();
          v104 = v297;
          v105(v297);

          v106 = sub_231E10E10();
          v107 = sub_231E11AD0();

          if (os_log_type_enabled(v106, v107))
          {
            OUTLINED_FUNCTION_9_1();
            v108 = OUTLINED_FUNCTION_17_1();
            v312 = v108;
            *v22 = v294;
            v109 = sub_231DE2398(v4);
            v4 = sub_231CB5000(v109, v110, &v312);

            *(v22 + 4) = v4;
            OUTLINED_FUNCTION_42_11();
            _os_log_impl(&dword_231CAE000, v106, v107, "%{public}s AppIntentMailFetcher: Skipping handle, failed cast", v22, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v108);
            OUTLINED_FUNCTION_30();
            OUTLINED_FUNCTION_33_15();
            OUTLINED_FUNCTION_30();

            OUTLINED_FUNCTION_52_9();
            v112 = v104;
            v100 = &off_278947000;
          }

          else
          {

            OUTLINED_FUNCTION_52_9();
            v112 = v104;
          }

          v111(v112, v22);

          v86 = v308;
          ++v99;
        }

        v95 = v304;
        v81 = v309;
      }

      v125 = sub_231CBA138(v303);
      v58 = 0;
      OUTLINED_FUNCTION_39_7(v125);
      v281 = MEMORY[0x277D84F90];
      v126 = v293;
      while (v302 != v58)
      {
        if (v301)
        {
          v127 = MEMORY[0x23837D2A0](v58, v303);
        }

        else
        {
          if (v58 >= *(v300 + 16))
          {
            goto LABEL_192;
          }

          v127 = *(v303 + 8 * v58 + 32);
        }

        if (__OFADD__(v58, 1))
        {
          goto LABEL_191;
        }

        v128 = v127;
        sub_231E08B20(v128, v126);
        OUTLINED_FUNCTION_8_17(v126, 1, v307);
        v299 = v58 + 1;
        if (v84)
        {
          sub_231CB4EEC();
          OUTLINED_FUNCTION_30_12();
          v129(v95);

          v130 = v95;
          v131 = sub_231E10E10();
          v132 = sub_231E11AD0();

          if (os_log_type_enabled(v131, v132))
          {
            OUTLINED_FUNCTION_9_1();
            v22 = OUTLINED_FUNCTION_6_1();
            v312 = v22;
            dword_231E13460 = v294;
            v133 = sub_231DE2398(v4);
            v4 = v134;
            v135 = sub_231CB5000(v133, v134, &v312);
            OUTLINED_FUNCTION_42_11();

            unk_231E13464 = v135;
            _os_log_impl(&dword_231CAE000, v131, v132, "%{public}s AppIntentMailFetcher: Skipping handle, failed to init", &dword_231E13460, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v22);
            OUTLINED_FUNCTION_33_15();
            OUTLINED_FUNCTION_30();
            v60 = &dword_231E13460;
            OUTLINED_FUNCTION_30();
          }

          else
          {
          }

          OUTLINED_FUNCTION_52_9();
          v136(v130, v22);
          v86 = v308;
          v95 = v130;
          v126 = v293;
        }

        else
        {
        }

        v137 = v298;
        sub_231CB37DC(v126, v298, &dword_27DD73FA0, &dword_231E13460);

        OUTLINED_FUNCTION_8_17(v137, 1, v307);
        if (v84)
        {
          sub_231CC154C(v137, &dword_27DD73FA0, &dword_231E13460);
          ++v58;
          v81 = v309;
        }

        else
        {
          v138 = *v278;
          (*v278)(v279, v137, v307);
          v139 = v281;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v81 = v309;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v139 = sub_231CC0294(0, *(v139 + 16) + 1, 1, v139, &qword_27DD740A8, &unk_231E13540, MEMORY[0x277D42328], MEMORY[0x277D42328]);
          }

          v142 = *(v139 + 16);
          v141 = *(v139 + 24);
          if (v142 >= v141 >> 1)
          {
            v144 = OUTLINED_FUNCTION_2_12(v141);
            v139 = sub_231CC0294(v144, v142 + 1, 1, v139, &qword_27DD740A8, &unk_231E13540, MEMORY[0x277D42328], MEMORY[0x277D42328]);
          }

          *(v139 + 16) = v142 + 1;
          v143 = (*(v280 + 80) + 32) & ~*(v280 + 80);
          v281 = v139;
          v138((v139 + v143 + *(v280 + 72) * v142), v279, v307);
          v58 = v299;
          v86 = v308;
          v95 = v304;
          v60 = &dword_231E13460;
        }
      }

      v83 = &v315;
      sub_231DC7B54(v281);
      OUTLINED_FUNCTION_41_13();

      sub_231CC154C(v314, &dword_27DD741E0, &qword_231E15D70);
      OUTLINED_FUNCTION_37_12();
      v71 = v285;
      goto LABEL_22;
    }

    v146 = v81 == 0x7463656A627573 && v83 == 0xE700000000000000;
    if (v146 || (OUTLINED_FUNCTION_13_18() & 1) != 0)
    {

      OUTLINED_FUNCTION_47_7();

      OUTLINED_FUNCTION_4_26();
      if (!v147)
      {
        sub_231CC154C(&v312, &dword_27DD741E0, &qword_231E15D70);
        v263 = 0;
        v152 = &v302;
LABEL_98:
        *(v152 - 32) = 0;
        goto LABEL_23;
      }

      OUTLINED_FUNCTION_40_10();
      v148 = swift_dynamicCast();
      v149 = v310;
      if (!v148)
      {
        v149 = 0;
      }

      v263 = v149;
      if (v148)
      {
        v150 = v311;
      }

      else
      {
        v150 = 0;
      }

      v151 = &v302;
LABEL_96:
      *(v151 - 32) = v150;
      goto LABEL_23;
    }

    v153 = v81 == 2036625250 && v83 == 0xE400000000000000;
    if (v153 || (OUTLINED_FUNCTION_13_18() & 1) != 0)
    {

      OUTLINED_FUNCTION_62_6();

      OUTLINED_FUNCTION_4_26();
      if (!v154)
      {
        sub_231CC154C(&v312, &dword_27DD741E0, &qword_231E15D70);
        v262 = 0;
        v152 = &v303;
        goto LABEL_98;
      }

      OUTLINED_FUNCTION_40_10();
      v155 = swift_dynamicCast();
      v156 = v310;
      if (!v155)
      {
        v156 = 0;
      }

      v262 = v156;
      if (v155)
      {
        v150 = v311;
      }

      else
      {
        v150 = 0;
      }

      v151 = &v303;
      goto LABEL_96;
    }

    v157 = v81 == 0x646165527369 && v83 == 0xE600000000000000;
    if (v157 || (OUTLINED_FUNCTION_13_18() & 1) != 0)
    {

      OUTLINED_FUNCTION_4_26();
      if (v158)
      {
        OUTLINED_FUNCTION_40_10();
        v159 = swift_dynamicCast();
        v160 = v310;
        if (!v159)
        {
          v160 = 2;
        }
      }

      else
      {
        sub_231CC154C(&v312, &dword_27DD741E0, &qword_231E15D70);
        v160 = 2;
      }

      v266 = v160;
      goto LABEL_23;
    }

    v161 = v81 == 0x656D686361747461 && v83 == 0xEB0000000073746ELL;
    if (v161 || (OUTLINED_FUNCTION_13_18() & 1) != 0)
    {
      sub_231CC154C(v314, &dword_27DD741E0, &qword_231E15D70);

      OUTLINED_FUNCTION_37_12();
    }

    else
    {
      v162 = v81 == 0x6563655265746164 && v83 == 0xEC00000064657669;
      if (v162 || (OUTLINED_FUNCTION_13_18() & 1) != 0 || (v81 == 0x746E655365746164 ? (v163 = v83 == 0xE800000000000000) : (v163 = 0), v163))
      {

LABEL_141:
        sub_231CC6A58(v314, &v312, &dword_27DD741E0, &qword_231E15D70);
        v81 = v309;
        v60 = &dword_27DD74AD0;
        if (v313)
        {
          v165 = v257;
          v83 = v269;
          v166 = swift_dynamicCast() ^ 1;
          v167 = v165;
          v168 = 1;
        }

        else
        {
          sub_231CC154C(&v312, &dword_27DD741E0, &qword_231E15D70);
          OUTLINED_FUNCTION_105();
          v83 = v269;
        }

        __swift_storeEnumTagSinglePayload(v167, v166, v168, v83);
        v169 = v256;
        v170 = OUTLINED_FUNCTION_38_12();
        sub_231CC6A58(v170, v92, &dword_27DD74AD0, &qword_231E16C40);
        OUTLINED_FUNCTION_8_17(v92, 1, v83);
        if (v84)
        {
          OUTLINED_FUNCTION_41_13();

          v173 = v257;
        }

        else
        {
          v172 = *v252;
          (*v252)(v169, v92, v83);
          v173 = v257;
          v174 = v255;
          sub_231CC6A58(v257, v255, &dword_27DD74AD0, &qword_231E16C40);
          OUTLINED_FUNCTION_8_17(v174, 1, v83);
          if (!v175)
          {
            v179 = v254;
            v172(v254, v174, v83);
            sub_231DD19E0();
            v180 = v169;
            v181 = sub_231E115A0();
            OUTLINED_FUNCTION_41_13();

            sub_231CC154C(v314, &dword_27DD741E0, &qword_231E15D70);
            v183 = OUTLINED_FUNCTION_38_12();
            sub_231CC154C(v183, &dword_27DD74AD0, &qword_231E16C40);
            if (v181)
            {
              v184 = v179;
            }

            else
            {
              v184 = v180;
            }

            if (v181)
            {
              v185 = v180;
            }

            else
            {
              v185 = v179;
            }

            v81 = v309;
            (*v251)(v184, v83);
            v186 = v253;
            v172(v253, v185, v83);
            v60 = &dword_27DD74AD0;
            __swift_storeEnumTagSinglePayload(v186, 0, 1, v83);
            v187 = v186;
            v173 = v257;
            sub_231CB37DC(v187, v277, &dword_27DD74AD0, &qword_231E16C40);
            goto LABEL_158;
          }

          OUTLINED_FUNCTION_41_13();

          (*v251)(v169, v83);
          v60 = &dword_27DD74AD0;
        }

        sub_231CC154C(v314, &dword_27DD741E0, &qword_231E15D70);
        v83 = v277;
        sub_231CC154C(v277, &dword_27DD74AD0, &qword_231E16C40);
        v177 = OUTLINED_FUNCTION_25();
        sub_231CC154C(v177, v178, &qword_231E16C40);
        sub_231CC6A58(v173, v83, &dword_27DD74AD0, &qword_231E16C40);
LABEL_158:
        OUTLINED_FUNCTION_48_9(v173);
        OUTLINED_FUNCTION_37_12();
        v86 = v308;
        goto LABEL_23;
      }

      v164 = OUTLINED_FUNCTION_13_18();

      if (v164)
      {
        goto LABEL_141;
      }

      sub_231CC154C(v314, &dword_27DD741E0, &qword_231E15D70);

      OUTLINED_FUNCTION_37_12();
      v86 = v308;
    }

    v81 = v309;
LABEL_23:
    if (v71 == v291)
    {
      goto LABEL_160;
    }
  }

LABEL_193:
  __break(1u);
LABEL_194:
  __break(1u);
}