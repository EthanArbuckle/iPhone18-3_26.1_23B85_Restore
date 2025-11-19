uint64_t sub_21AF23078(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21AF23098@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, _BYTE *a3@<X8>)
{
  result = (*(*(*(a1 + a2 - 8) + 8) + 16))(*(a1 + a2 - 16));
  *a3 = result & 1;
  return result;
}

__n128 sub_21AF230F4(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

BOOL sub_21AF23100@<W0>(uint64_t a1@<X1>, uint64_t a2@<X2>, _BYTE *a3@<X8>)
{
  result = UDFColumnSchema.visible.getter(*(a1 + a2 - 16), *(*(a1 + a2 - 8) + 8));
  *a3 = result;
  return result;
}

uint64_t sub_21AF23148@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  *a2 = sub_21AF2935C();
}

uint64_t sub_21AF23184(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_21AF28978(v4);
}

uint64_t sub_21AF231C8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 32);
  *a2 = *(v3 + 24);
  a2[1] = v4;
}

uint64_t sub_21AF23238@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t sub_21AF232A0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v3;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  return sub_21AF3F970(v5, a2, *v2);
}

uint64_t sub_21AF232EC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v3;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  return sub_21AF3FA60(v5, a2, *v2);
}

uint64_t sub_21AF23340@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *v3;
  *(a3 + 24) = result;
  *(a3 + 32) = a2;
  *a3 = v4;
  return result;
}

uint64_t sub_21AF23350@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *v3;
  *(a3 + 24) = result;
  *(a3 + 32) = a2;
  *a3 = v4;
  return result;
}

uint64_t sub_21AF23360@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *v3;
  *(a3 + 24) = result;
  *(a3 + 32) = a2;
  *a3 = v4;
  return result;
}

uint64_t sub_21AF23388@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *v3;
  a3[3] = result;
  a3[4] = a2;
  *a3 = v4;
  return result;
}

uint64_t sub_21AF23398(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
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

  *(result + 8) = v3;
  return result;
}

uint64_t sub_21AF233F8(uint64_t a1, uint64_t *a2)
{
  v3 = sub_21AF49560();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v17 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v17 - v13;
  __swift_allocate_value_buffer(v12, a2);
  __swift_project_value_buffer(v3, a2);
  sub_21AF49530();
  sub_21AF49520();
  sub_21AF49540();
  v15 = *(v4 + 8);
  v15(v8, v3);
  v15(v11, v3);
  sub_21AF49550();
  return (v15)(v14, v3);
}

__n128 __swift_memcpy200_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 176);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 160) = v9;
  *(a1 + 176) = v10;
  *(a1 + 144) = result;
  return result;
}

uint64_t sub_21AF235D8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 200))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_21AF23634(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 184) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 200) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 200) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
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

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_21AF237A4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 96))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21AF237C4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
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

  *(result + 96) = v3;
  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_21AF23830(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21AF23850(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
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

  *(result + 24) = v3;
  return result;
}

uint64_t __swift_memcpy12_4(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t sub_21AF238D8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 12))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21AF238F8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *result = (a2 - 1);
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

  *(result + 12) = v3;
  return result;
}

void sub_21AF23938(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

PoirotSQLite::SQLiteDataType __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SQLiteColumnType.getDataType()()
{
  v2 = *v1;
  if (v2 > 0xA)
  {
LABEL_8:
    if (*v1)
    {
      v3 = 2;
    }

    else
    {
      v3 = 1;
    }

    goto LABEL_11;
  }

  if (((1 << v2) & 0x23C) != 0)
  {
    *v0 = 0;
    return result;
  }

  if (((1 << v2) & 0x1C0) == 0)
  {
    if (v2 == 10)
    {
      sub_21AF23A54();
      swift_allocError();
      *v4 = 0xD00000000000003ELL;
      *(v4 + 8) = 0x800000021AF4A410;
      *(v4 + 16) = 0;
      *(v4 + 24) = 4;
      return swift_willThrow();
    }

    goto LABEL_8;
  }

  v3 = 3;
LABEL_11:
  *v0 = v3;
  return result;
}

unint64_t sub_21AF23A54()
{
  result = qword_27CD3ED28;
  if (!qword_27CD3ED28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD3ED28);
  }

  return result;
}

ValueMetadata *SQLiteColumnType.defaultNativeType.getter()
{
  v1 = *v0;
  if (v1 <= 4)
  {
    if (*v0 > 1u)
    {
      v2 = MEMORY[0x277D849A8];
      v3 = MEMORY[0x277D84A28];
      if (v1 != 3)
      {
        v3 = MEMORY[0x277D84CC0];
      }

      v4 = v1 == 2;
      goto LABEL_10;
    }

    if (!*v0)
    {
      return MEMORY[0x277D837D0];
    }

    v6 = MEMORY[0x277CC9318];
    sub_21AF23C38();
    return v6;
  }

  if (*v0 > 7u)
  {
    if (v1 == 8)
    {
      return MEMORY[0x277D839F8];
    }

    if (v1 == 9)
    {
      return MEMORY[0x277D839B0];
    }

    v6 = &type metadata for SQLiteUndefined;
    sub_21AF23BE4();
    return v6;
  }

  v2 = MEMORY[0x277D84D38];
  v3 = MEMORY[0x277D83A90];
  if (v1 != 6)
  {
    v3 = MEMORY[0x277D839F8];
  }

  v4 = v1 == 5;
LABEL_10:
  if (v4)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_21AF23BE4()
{
  result = qword_27CD3ED30;
  if (!qword_27CD3ED30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD3ED30);
  }

  return result;
}

unint64_t sub_21AF23C38()
{
  result = qword_27CD3ED38;
  if (!qword_27CD3ED38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD3ED38);
  }

  return result;
}

PoirotSQLite::SQLiteColumnType_optional __swiftcall SQLiteColumnType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_21AF49B50();

  v5 = 11;
  if (v3 < 0xB)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t SQLiteColumnType.rawValue.getter()
{
  v1 = *v0;
  if (v1 <= 4)
  {
    v7 = 1415071060;
    v8 = 0x3233544E49;
    v9 = 0x3436544E49;
    if (v1 != 3)
    {
      v9 = 0x3233544E4955;
    }

    if (v1 != 2)
    {
      v8 = v9;
    }

    if (*v0)
    {
      v7 = 1112493122;
    }

    if (*v0 <= 1u)
    {
      return v7;
    }

    else
    {
      return v8;
    }
  }

  else
  {
    v2 = 0x454D495445544144;
    v3 = 0x4E41454C4F4F42;
    if (v1 != 9)
    {
      v3 = 5852737;
    }

    if (v1 != 8)
    {
      v2 = v3;
    }

    v4 = 0x3436544E4955;
    v5 = 0x54414F4C46;
    if (v1 != 6)
    {
      v5 = 0x454C42554F44;
    }

    if (v1 != 5)
    {
      v4 = v5;
    }

    if (*v0 <= 7u)
    {
      return v4;
    }

    else
    {
      return v2;
    }
  }
}

unint64_t sub_21AF23E30()
{
  result = qword_27CD3ED40;
  if (!qword_27CD3ED40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD3ED40);
  }

  return result;
}

uint64_t sub_21AF23E84(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 1415071060;
  v3 = a1;
  if (a1 <= 4u)
  {
    v14 = 0xE500000000000000;
    v15 = 0x3233544E49;
    v16 = 0xE500000000000000;
    v17 = 0x3436544E49;
    if (a1 != 3)
    {
      v17 = 0x3233544E4955;
      v16 = 0xE600000000000000;
    }

    if (a1 != 2)
    {
      v15 = v17;
      v14 = v16;
    }

    v18 = 1112493122;
    if (!a1)
    {
      v18 = 1415071060;
    }

    if (a1 <= 1u)
    {
      v12 = v18;
    }

    else
    {
      v12 = v15;
    }

    if (v3 <= 1)
    {
      v13 = 0xE400000000000000;
    }

    else
    {
      v13 = v14;
    }
  }

  else
  {
    v4 = 0xE800000000000000;
    v5 = 0x454D495445544144;
    v6 = 0xE700000000000000;
    v7 = 0x4E41454C4F4F42;
    if (a1 != 9)
    {
      v7 = 5852737;
      v6 = 0xE300000000000000;
    }

    if (a1 != 8)
    {
      v5 = v7;
      v4 = v6;
    }

    v8 = 0xE600000000000000;
    v9 = 0x3436544E4955;
    v10 = 0xE500000000000000;
    v11 = 0x54414F4C46;
    if (a1 != 6)
    {
      v11 = 0x454C42554F44;
      v10 = 0xE600000000000000;
    }

    if (a1 != 5)
    {
      v9 = v11;
      v8 = v10;
    }

    if (a1 <= 7u)
    {
      v12 = v9;
    }

    else
    {
      v12 = v5;
    }

    if (v3 <= 7)
    {
      v13 = v8;
    }

    else
    {
      v13 = v4;
    }
  }

  if (a2 <= 4u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v19 = 0xE500000000000000;
        if (v12 != 0x3233544E49)
        {
          goto LABEL_59;
        }
      }

      else if (a2 == 3)
      {
        v19 = 0xE500000000000000;
        if (v12 != 0x3436544E49)
        {
          goto LABEL_59;
        }
      }

      else
      {
        v19 = 0xE600000000000000;
        if (v12 != 0x3233544E4955)
        {
          goto LABEL_59;
        }
      }

      goto LABEL_56;
    }

    v19 = 0xE400000000000000;
    if (a2)
    {
      if (v12 != 1112493122)
      {
        goto LABEL_59;
      }

      goto LABEL_56;
    }
  }

  else
  {
    if (a2 > 7u)
    {
      if (a2 == 8)
      {
        v19 = 0xE800000000000000;
        if (v12 != 0x454D495445544144)
        {
          goto LABEL_59;
        }
      }

      else if (a2 == 9)
      {
        v19 = 0xE700000000000000;
        if (v12 != 0x4E41454C4F4F42)
        {
          goto LABEL_59;
        }
      }

      else
      {
        v19 = 0xE300000000000000;
        if (v12 != 5852737)
        {
          goto LABEL_59;
        }
      }

      goto LABEL_56;
    }

    if (a2 == 5)
    {
      v19 = 0xE600000000000000;
      if (v12 != 0x3436544E4955)
      {
        goto LABEL_59;
      }

      goto LABEL_56;
    }

    if (a2 == 6)
    {
      v19 = 0xE500000000000000;
      if (v12 != 0x54414F4C46)
      {
        goto LABEL_59;
      }

      goto LABEL_56;
    }

    v19 = 0xE600000000000000;
    v2 = 0x454C42554F44;
  }

  if (v12 != v2)
  {
LABEL_59:
    v20 = sub_21AF49BA0();
    goto LABEL_60;
  }

LABEL_56:
  if (v13 != v19)
  {
    goto LABEL_59;
  }

  v20 = 1;
LABEL_60:

  return v20 & 1;
}

uint64_t sub_21AF24168()
{
  v1 = *v0;
  sub_21AF49C10();
  sub_21AF241B8();
  return sub_21AF49C40();
}

uint64_t sub_21AF241B8()
{
  sub_21AF49750();
}

uint64_t sub_21AF24318()
{
  v1 = *v0;
  sub_21AF49C10();
  sub_21AF241B8();
  return sub_21AF49C40();
}

uint64_t sub_21AF24368@<X0>(uint64_t *a1@<X8>)
{
  result = SQLiteColumnType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_21AF24394()
{
  result = qword_27CD3ED48;
  if (!qword_27CD3ED48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD3ED50, &qword_21AF4B040);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD3ED48);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SQLiteColumnType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SQLiteColumnType(uint64_t result, unsigned int a2, unsigned int a3)
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

BOOL SQLiteColumnDescribing.isValid(_:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 24);
  v7(a2, a3);
  (*(v8 + 24))(&v18 + 2);
  v9 = 1;
  if (BYTE2(v18) > 0xAu)
  {
    goto LABEL_8;
  }

  if (((1 << SBYTE2(v18)) & 0x23C) == 0)
  {
    if (((1 << SBYTE2(v18)) & 0x1C0) != 0)
    {
      v9 = 3;
LABEL_10:
      v17 = v9;
      goto LABEL_11;
    }

    if (BYTE2(v18) == 10)
    {
      goto LABEL_7;
    }

LABEL_8:
    if (BYTE2(v18))
    {
      v9 = 2;
    }

    goto LABEL_10;
  }

  v17 = 0;
LABEL_11:
  v12 = a1[3];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v12);
  (*(v13 + 40))(&v18 + 1, v12, v13);
  if (v3)
  {
    return v11;
  }

  v14 = BYTE1(v18);
  if (BYTE1(v18) != 4)
  {
    return dword_21AF4B120[v14] == dword_21AF4B120[v17];
  }

  v7(a2, a3);
  if (((*(v15 + 32))() & 1) == 0)
  {
    return 0;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  swift_getDynamicType();
  (*(a1[4] + 24))(&v18);
  if (v18 > 0xAu)
  {
    goto LABEL_21;
  }

  if (((1 << v18) & 0x23C) != 0)
  {
    v14 = 0;
    return dword_21AF4B120[v14] == dword_21AF4B120[v17];
  }

  if (((1 << v18) & 0x1C0) != 0)
  {
    v14 = 3;
    return dword_21AF4B120[v14] == dword_21AF4B120[v17];
  }

  if (v18 != 10)
  {
LABEL_21:
    if (v18)
    {
      v14 = 2;
    }

    else
    {
      v14 = 1;
    }

    return dword_21AF4B120[v14] == dword_21AF4B120[v17];
  }

LABEL_7:
  sub_21AF23A54();
  swift_allocError();
  *v10 = 0xD00000000000003ELL;
  *(v10 + 8) = 0x800000021AF4A410;
  *(v10 + 16) = 0;
  *(v10 + 24) = 4;
  swift_willThrow();
  return v11;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

BOOL static SQLiteColumnDescribing.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 32);
  v7 = v6(a3, a4);
  v9 = v8;
  if (v7 == v6(a3, a4) && v9 == v10)
  {

    goto LABEL_8;
  }

  v12 = sub_21AF49BA0();

  result = 0;
  if (v12)
  {
LABEL_8:
    v14 = *(a4 + 24);
    v15 = v14(a3, a4);
    return v15 == v14(a3, a4);
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SQLiteColumnDescribing.ensureValidSQLNameCharacters()()
{
  v1 = (*(v0 + 32))();
  v3 = v2;
  sub_21AF24E90(v1, v2);
  if (!v4)
  {
    goto LABEL_12;
  }

  sub_21AF24ED8(v1, v3);
  if (!v5)
  {
    goto LABEL_11;
  }

  if (qword_27CD3ECD0 != -1)
  {
    swift_once();
  }

  v13 = sub_21AF49560();
  __swift_project_value_buffer(v13, qword_27CD3F1D8);
  sub_21AF24F58();
  sub_21AF499B0();
  v7 = v6;

  if ((v7 & 1) == 0)
  {
LABEL_11:

    goto LABEL_12;
  }

  sub_21AF499B0();
  v9 = v8;

  if ((v9 & 1) == 0)
  {
LABEL_12:

LABEL_13:
    sub_21AF23A54();
    swift_allocError();
    *(v12 + 8) = 0;
    *(v12 + 16) = 0;
    *v12 = 10;
    *(v12 + 24) = 9;
    swift_willThrow();
    return;
  }

  if (qword_27CD3ECC8 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v13, qword_27CD3F1C0);
  sub_21AF499B0();
  v11 = v10;

  if ((v11 & 1) == 0)
  {
    goto LABEL_13;
  }
}

uint64_t SQLiteColumnDescribing<>.init(index:)@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_21AF49A70();
  if (sub_21AF498B0() <= a1)
  {
    v6 = 1;
  }

  else
  {
    sub_21AF498E0();
    v6 = 0;
  }

  return (*(*(a2 - 8) + 56))(a3, v6, 1, a2);
}

uint64_t SQLiteColumnDescribing<>.getColumnIndex()(uint64_t a1, uint64_t a2)
{
  sub_21AF49A70();
  sub_21AF498D0();
  swift_getWitnessTable();
  v3 = *(a2 + 16);
  sub_21AF49930();

  if (v7)
  {
    sub_21AF49870();
    sub_21AF23A54();
    swift_allocError();
    *v4 = v6;
    *(v4 + 8) = v7;
    *(v4 + 16) = 0;
    *(v4 + 24) = 1;
    return swift_willThrow();
  }

  result = v6;
  if (v6 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v6 > 0x7FFFFFFF)
  {
LABEL_7:
    __break(1u);
  }

  return result;
}

uint64_t sub_21AF24E90(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    return sub_21AF49840();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21AF24ED8(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 0;
  }

  sub_21AF49780();
  return sub_21AF49840();
}

unint64_t sub_21AF24F58()
{
  result = qword_27CD3ED58;
  if (!qword_27CD3ED58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD3ED58);
  }

  return result;
}

Swift::OpaquePointer_optional __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SQLiteStatement.nextRowValues()()
{
  v2 = *(v0 + 2);
  v3 = *(v0 + 3);
  v4 = *(v0 + 48);
  v9 = *v0;
  v10 = v2;
  v11 = v3;
  v12 = v0[2];
  v13 = v4;
  SQLiteStatement.nextRow()(v14);
  if (!v1)
  {
    v7 = v14[0];
    if (v14[0])
    {
      v8 = v14[1];
      v14[0] = sub_21AF27268(MEMORY[0x277D84F90]);
      *&v9 = v7;
      *(&v9 + 1) = v8;
      sub_21AF2A71C(&v9, v7, v8, v14);
      v5 = v14[0];
    }

    else
    {
      v5 = 0;
    }
  }

  result.value._rawValue = v5;
  result.is_nil = v6;
  return result;
}

uint64_t sub_21AF250B8(Swift::Int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v24[0] = a4;
  v24[1] = a5;
  result = SQLiteRow.type(at:)(a1);
  if (!v11)
  {
    if (LOBYTE(v21[0]) <= 1u)
    {
      v25 = a6;
      if (LOBYTE(v21[0]))
      {
        v12 = MEMORY[0x277D837D0];
      }

      else
      {
        v12 = MEMORY[0x277D84A28];
      }
    }

    else if (LOBYTE(v21[0]) == 2)
    {
      v25 = a6;
      sub_21AF23C38();
      v12 = MEMORY[0x277CC9318];
    }

    else
    {
      if (LOBYTE(v21[0]) != 3)
      {
        return result;
      }

      v25 = a6;
      v12 = MEMORY[0x277D839F8];
    }

    v13 = swift_conformsToProtocol2();
    if (v13)
    {
      v14 = v13;
      v22 = v12;
      v23 = v13;
      __swift_allocate_boxed_opaque_existential_1(v21);
      SQLiteRow.get<A>(at:type:)(a1, v12, v12, v14);
    }

    else
    {
      result = swift_conformsToProtocol2();
      if (!result)
      {
        return result;
      }

      v22 = v12;
      v23 = result;
      v15 = result;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21);
      SQLiteRow.getNonNull<A>(at:type:)(a1, v12, v15, boxed_opaque_existential_1);
    }

    v17 = v22;
    v18 = v23;
    v19 = __swift_project_boxed_opaque_existential_1(v21, v22);
    v24[3] = v17;
    v24[4] = *(v18 + 8);
    v20 = __swift_allocate_boxed_opaque_existential_1(v24);
    (*(*(v17 - 8) + 16))(v20, v19, v17);

    sub_21AF252DC(v24, a2, a3);
    return __swift_destroy_boxed_opaque_existential_1(v21);
  }

  return result;
}

uint64_t sub_21AF252DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_21AF27418(a1, v10);
    v6 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v3;
    sub_21AF2689C(v10, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v9;
  }

  else
  {
    sub_21AF27498(a1, &qword_27CD3ED78, &qword_21AF4B148);
    sub_21AF26370(a2, a3, v10);

    return sub_21AF27498(v10, &qword_27CD3ED78, &qword_21AF4B148);
  }

  return result;
}

void SQLiteStatement.nextRowValues(matching:)(void *a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 48);
  v31 = *v1;
  *&v32 = v4;
  *(&v32 + 1) = v5;
  v33 = v1[2];
  LOBYTE(v34) = v6;
  SQLiteStatement.nextRow()(&v28);
  if (!v2 && v28)
  {
    v7 = a1[3];
    v8 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v7);
    v9 = (*(v8 + 16))(v7, v8);
    v10 = *(v9 + 16);
    if (v10)
    {
      v35 = MEMORY[0x277D84F90];
      sub_21AF26FCC(0, v10, 0);
      v11 = 0;
      v12 = v35;
      v13 = v9 + 32;
      v27 = v9;
      do
      {
        if (v11 >= *(v9 + 16))
        {
          __break(1u);
          swift_unexpectedError();
          __break(1u);
          return;
        }

        sub_21AF27430(v13, &v28);
        v14 = v29;
        v15 = v30;
        __swift_project_boxed_opaque_existential_1(&v28, v29);
        *&v31 = (*(v15 + 32))(v14, v15);
        *(&v31 + 1) = v16;
        v18 = v29;
        v17 = v30;
        __swift_project_boxed_opaque_existential_1(&v28, v29);
        SQLiteRow.get<A>(from:)(v18, v17, &v32);
        __swift_destroy_boxed_opaque_existential_1(&v28);
        v35 = v12;
        v20 = *(v12 + 16);
        v19 = *(v12 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_21AF26FCC((v19 > 1), v20 + 1, 1);
          v12 = v35;
        }

        ++v11;
        *(v12 + 16) = v20 + 1;
        v21 = v12 + 56 * v20;
        v22 = v31;
        v23 = v32;
        v24 = v33;
        *(v21 + 80) = v34;
        *(v21 + 48) = v23;
        *(v21 + 64) = v24;
        *(v21 + 32) = v22;
        v13 += 40;
        v9 = v27;
      }

      while (v10 != v11);

      if (!*(v12 + 16))
      {
        goto LABEL_14;
      }
    }

    else
    {

      if (!*(MEMORY[0x277D84F90] + 16))
      {
LABEL_14:
        v25 = MEMORY[0x277D84F98];
        goto LABEL_15;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD3ED60, &qword_21AF4B130);
    v25 = sub_21AF49B40();
LABEL_15:
    *&v31 = v25;

    sub_21AF26C08(v26, 1, &v31);

    swift_unknownObjectRelease();
  }
}

void SQLiteStatement.nextRowValues(ifMatching:)(void *a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 48);
  v33 = *v1;
  v34 = v4;
  v35 = v5;
  v36 = v1[2];
  v37 = v6;
  SQLiteStatement.nextRow()(v32);
  if (!v2)
  {
    v7 = *&v32[0];
    if (*&v32[0])
    {
      v30 = *(&v32[0] + 1);
      v8 = a1[3];
      v9 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v8);
      v10 = (*(v9 + 16))(v8, v9);
      v11 = sub_21AF27268(MEMORY[0x277D84F90]);
      v12 = *(v10 + 16);
      if (v12)
      {
        v29 = v11;
        v13 = 0;
        v14 = v10 + 32;
        v26 = *(v10 + 16);
        v27 = v10;
        while (v13 < *(v10 + 16))
        {
          sub_21AF27430(v14, &v33);
          *&v32[0] = v7;
          *(&v32[0] + 1) = v30;
          v15 = v35;
          v16 = v36;
          __swift_project_boxed_opaque_existential_1(&v33, v35);
          v17._countAndFlagsBits = (*(v16 + 32))(v15, v16);
          SQLiteRow.columnIndex(for:)(v17);
          if (v18)
          {
          }

          else
          {

            v19 = v35;
            v20 = v36;
            __swift_project_boxed_opaque_existential_1(&v33, v35);
            v21 = (*(v20 + 32))(v19, v20);
            v23 = v22;
            v24 = v35;
            v28 = v36;
            __swift_project_boxed_opaque_existential_1(&v33, v35);
            *&v31[0] = v7;
            *(&v31[0] + 1) = v30;
            SQLiteRow.get<A>(from:)(v24, v28, v32);
            sub_21AF27418(v32, v31);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v38 = v29;
            sub_21AF2689C(v31, v21, v23, isUniquelyReferenced_nonNull_native);

            v29 = v38;
            v12 = v26;
            v10 = v27;
          }

          ++v13;
          __swift_destroy_boxed_opaque_existential_1(&v33);
          v14 += 40;
          if (v12 == v13)
          {
            swift_unknownObjectRelease();

            return;
          }
        }

        __break(1u);
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }
  }
}

uint64_t SQLiteStatement.bind(values:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = v3;
  v42 = a2;
  v5 = *v2;
  v6 = *(v2 + 8);
  v7 = *(v2 + 24);
  v50 = *(v2 + 16);
  v51 = v7;
  v8 = *(v2 + 40);
  v49 = *(v2 + 32);
  v48 = v8;
  v9 = a1 + 64;
  v10 = 1 << *(a1 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a1 + 64);
  v47 = *(v2 + 48);
  v13 = (v10 + 63) >> 6;
  v46 = v6 + 24;
  v45 = v6 + 32;
  v52 = a1;

  v15 = 0;
  v44 = v9;
  v43 = v13;
  if (v12)
  {
    while (1)
    {
      v16 = v15;
LABEL_8:
      v17 = __clz(__rbit64(v12)) | (v16 << 6);
      v18 = (*(v52 + 48) + 16 * v17);
      v20 = *v18;
      v19 = v18[1];
      sub_21AF27430(*(v52 + 56) + 40 * v17, v66);
      v65[0] = v20;
      v65[1] = v19;
      v21 = v67;
      v53 = v68;
      v22 = __swift_project_boxed_opaque_existential_1(v66, v67);
      v69 = &v41;
      v23 = *(*(v21 - 8) + 64);
      MEMORY[0x28223BE20](v22);
      v55 = &v41 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
      v56 = v25;
      v26 = *(v25 + 16);
      v57 = v21;
      v26();
      v58 = 64;
      v59 = 0xE100000000000000;

      MEMORY[0x21CEE5D10](v20, v19);
      v27 = v58;
      v28 = v59;
      ObjectType = swift_getObjectType();
      v30 = (*(v6 + 24))(ObjectType, v6);
      if (v4)
      {

        goto LABEL_15;
      }

      v31 = v30;
      v54 = v28;
      v32 = sub_21AF49720();
      v33 = sqlite3_bind_parameter_index(v31, (v32 + 32));

      if (!v33)
      {
        break;
      }

      (*(v6 + 32))(v33, ObjectType, v6);
      v58 = v5;
      v59 = v6;
      v60 = v50;
      v61 = v51;
      v62 = v49;
      v63 = v48;
      v64 = v47;
      v34 = v55;
      v35 = v57;
      (*(*(v53 + 8) + 8))(&v58, v33, v57);
      v4 = 0;

      v12 &= v12 - 1;
      (*(v56 + 8))(v34, v35);
      result = sub_21AF27498(v65, &qword_27CD3ED68, &qword_21AF4B138);
      v15 = v16;
      v9 = v44;
      v13 = v43;
      if (!v12)
      {
        goto LABEL_5;
      }
    }

    sub_21AF23A54();
    swift_allocError();
    v39 = v54;
    *v40 = v27;
    *(v40 + 8) = v39;
    *(v40 + 16) = 0;
    *(v40 + 24) = 6;
    swift_willThrow();
LABEL_15:
    (*(v56 + 8))(v55, v57);

    return sub_21AF27498(v65, &qword_27CD3ED68, &qword_21AF4B138);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v16 >= v13)
      {

        v36 = v42;
        *v42 = v5;
        v36[1] = v6;
        v37 = v51;
        v36[2] = v50;
        v36[3] = v37;
        v38 = v48;
        v36[4] = v49;
        v36[5] = v38;
        *(v36 + 48) = v47;
        swift_unknownObjectRetain();
      }

      v12 = *(v9 + 8 * v16);
      ++v15;
      if (v12)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t SQLiteStatement.bindIfAny(values:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v37 = a2;
  v4 = *v2;
  v3 = *(v2 + 8);
  v5 = *(v2 + 24);
  v43 = *(v2 + 16);
  v44 = v5;
  v6 = *(v2 + 40);
  v42 = *(v2 + 32);
  v41 = v6;
  v7 = a1 + 64;
  v8 = 1 << *(a1 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a1 + 64);
  v40 = *(v2 + 48);
  v11 = (v8 + 63) >> 6;
  v46 = v3 + 24;
  v39 = v3 + 32;
  v48 = a1;

  v13 = 0;
  v51 = v4;
  v45 = v11;
  v38 = v7;
  while (v10)
  {
LABEL_11:
    v15 = __clz(__rbit64(v10)) | (v13 << 6);
    v16 = (*(v48 + 48) + 16 * v15);
    v18 = *v16;
    v17 = v16[1];
    sub_21AF27430(*(v48 + 56) + 40 * v15, v61);
    v60[0] = v18;
    v60[1] = v17;
    v19 = v62;
    v47 = v63;
    v20 = __swift_project_boxed_opaque_existential_1(v61, v62);
    v50 = &v36;
    v21 = *(*(v19 - 8) + 64);
    MEMORY[0x28223BE20](v20);
    v23 = &v36 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
    v49 = v24;
    v25 = *(v24 + 16);
    v52 = v19;
    v25(v23);
    v53 = 64;
    v54 = 0xE100000000000000;

    MEMORY[0x21CEE5D10](v18, v17);
    ObjectType = swift_getObjectType();
    v27 = v64;
    v28 = (*(v3 + 24))(ObjectType, v3);
    v64 = v27;
    if (v27)
    {
      goto LABEL_18;
    }

    v29 = v28;
    v30 = sub_21AF49720();
    v31 = sqlite3_bind_parameter_index(v29, (v30 + 32));

    if (v31)
    {
      v4 = v51;
      v32 = v64;
      (*(v3 + 32))(v31, ObjectType, v3);
      if (v32)
      {
        v64 = v32;
LABEL_18:

        (*(v49 + 8))(v23, v52);

        return sub_21AF27498(v60, &qword_27CD3ED68, &qword_21AF4B138);
      }

      v53 = v4;
      v54 = v3;
      v55 = v43;
      v56 = v44;
      v57 = v42;
      v58 = v41;
      v59 = v40;
      (*(*(v47 + 8) + 8))(&v53, v31, v52);
      v64 = 0;
      v7 = v38;
    }

    else
    {
      v4 = v51;
    }

    v10 &= v10 - 1;

    (*(v49 + 8))(v23, v52);
    result = sub_21AF27498(v60, &qword_27CD3ED68, &qword_21AF4B138);
    v11 = v45;
  }

  while (1)
  {
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v14 >= v11)
    {

      v33 = v37;
      *v37 = v4;
      v33[1] = v3;
      v34 = v44;
      v33[2] = v43;
      v33[3] = v34;
      v35 = v41;
      v33[4] = v42;
      v33[5] = v35;
      *(v33 + 48) = v40;
      swift_unknownObjectRetain();
    }

    v10 = *(v7 + 8 * v14);
    ++v13;
    if (v10)
    {
      v13 = v14;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_21AF26240(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_21AF49C10();
  sub_21AF49750();
  v6 = sub_21AF49C40();

  return sub_21AF262B8(a1, a2, v6);
}

unint64_t sub_21AF262B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_21AF49BA0())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

double sub_21AF26370@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_21AF26240(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_21AF26A60();
      v12 = v15;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    sub_21AF27418((*(v12 + 56) + 40 * v9), a3);
    sub_21AF266E0(v9, v12);
    *v4 = v12;
  }

  else
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_21AF2641C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD3ED60, &qword_21AF4B130);
  v36 = a2;
  result = sub_21AF49B30();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
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
      v25 = (*(v5 + 56) + 40 * v21);
      if (v36)
      {
        sub_21AF27418(v25, v37);
      }

      else
      {
        sub_21AF27430(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_21AF49C10();
      sub_21AF49750();
      result = sub_21AF49C40();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_21AF27418(v37, *(v8 + 56) + 40 * v16);
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
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

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_21AF266E0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_21AF49A30() + 1) & ~v5;
    do
    {
      v11 = *(a2 + 40);
      v12 = (*(a2 + 48) + 16 * v6);
      v13 = *v12;
      v14 = v12[1];
      sub_21AF49C10();

      sub_21AF49750();
      v15 = sub_21AF49C40();

      v16 = v15 & v7;
      if (v3 >= v8)
      {
        if (v16 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v16 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v16)
      {
LABEL_10:
        v17 = *(a2 + 48);
        v18 = (v17 + 16 * v3);
        v19 = (v17 + 16 * v6);
        if (v3 != v6 || v18 >= v19 + 1)
        {
          *v18 = *v19;
        }

        v20 = *(a2 + 56);
        v21 = v20 + 40 * v3;
        v22 = (v20 + 40 * v6);
        if (v3 != v6 || v21 >= v22 + 40)
        {
          v9 = *v22;
          v10 = v22[1];
          *(v21 + 32) = *(v22 + 4);
          *v21 = v9;
          *(v21 + 16) = v10;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_21AF2689C(__int128 *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_21AF26240(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_21AF26A60();
      v11 = v19;
      goto LABEL_8;
    }

    sub_21AF2641C(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_21AF26240(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_21AF49BC0();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 40 * v11);
    __swift_destroy_boxed_opaque_existential_1(v23);

    return sub_21AF27418(a1, v23);
  }

  else
  {
    sub_21AF269F0(v11, a2, a3, a1, v22);
  }
}

uint64_t sub_21AF269F0(unint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_21AF27418(a4, a5[7] + 40 * a1);
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

void *sub_21AF26A60()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD3ED60, &qword_21AF4B130);
  v2 = *v0;
  v3 = sub_21AF49B20();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 40 * v17;
        sub_21AF27430(*(v2 + 56) + 40 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_21AF27418(v25, *(v4 + 56) + v22);
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

        v1 = v24;
        goto LABEL_21;
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void sub_21AF26C08(uint64_t a1, char a2, void *a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_22;
  }

  sub_21AF274F8(a1 + 32, &v45);
  v8 = v45;
  v7 = v46;
  v43 = v45;
  v44 = v46;
  sub_21AF27418(v47, v42);
  v9 = *a3;
  v10 = sub_21AF26240(v8, v7);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_21AF2641C(v15, a2 & 1);
    v17 = *a3;
    v10 = sub_21AF26240(v8, v7);
    if ((v16 & 1) != (v18 & 1))
    {
LABEL_5:
      sub_21AF49BC0();
      __break(1u);
      goto LABEL_22;
    }

LABEL_8:
    if (v16)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  if (a2)
  {
    goto LABEL_8;
  }

  v20 = v10;
  sub_21AF26A60();
  v10 = v20;
  if (v16)
  {
LABEL_9:
    v19 = swift_allocError();
    swift_willThrow();
    v48 = v19;
    MEMORY[0x21CEE6780](v19);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD3ED88, &qword_21AF4B158);
    if ((swift_dynamicCast() & 1) == 0)
    {

      __swift_destroy_boxed_opaque_existential_1(v42);

      return;
    }

    goto LABEL_26;
  }

LABEL_12:
  v21 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v22 = (v21[6] + 16 * v10);
  *v22 = v8;
  v22[1] = v7;
  sub_21AF27418(v42, v21[7] + 40 * v10);
  v23 = v21[2];
  v14 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (!v14)
  {
    v21[2] = v24;
    if (v4 == 1)
    {
LABEL_22:

      return;
    }

    v25 = a1 + 88;
    v26 = 1;
    while (v26 < *(a1 + 16))
    {
      sub_21AF274F8(v25, &v45);
      v28 = v45;
      v27 = v46;
      v43 = v45;
      v44 = v46;
      sub_21AF27418(v47, v42);
      v29 = *a3;
      v30 = sub_21AF26240(v28, v27);
      v32 = v29[2];
      v33 = (v31 & 1) == 0;
      v14 = __OFADD__(v32, v33);
      v34 = v32 + v33;
      if (v14)
      {
        goto LABEL_23;
      }

      v35 = v31;
      if (v29[3] < v34)
      {
        sub_21AF2641C(v34, 1);
        v36 = *a3;
        v30 = sub_21AF26240(v28, v27);
        if ((v35 & 1) != (v37 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v35)
      {
        goto LABEL_9;
      }

      v38 = *a3;
      *(*a3 + 8 * (v30 >> 6) + 64) |= 1 << v30;
      v39 = (v38[6] + 16 * v30);
      *v39 = v28;
      v39[1] = v27;
      sub_21AF27418(v42, v38[7] + 40 * v30);
      v40 = v38[2];
      v14 = __OFADD__(v40, 1);
      v41 = v40 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v26;
      v38[2] = v41;
      v25 += 56;
      if (v4 == v26)
      {
        goto LABEL_22;
      }
    }

    goto LABEL_25;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  sub_21AF49A60();
  MEMORY[0x21CEE5D10](0xD00000000000001BLL, 0x800000021AF4A490);
  sub_21AF49AF0();
  MEMORY[0x21CEE5D10](39, 0xE100000000000000);
  sub_21AF49B10();
  __break(1u);
}

void *sub_21AF26FCC(void *a1, int64_t a2, char a3)
{
  result = sub_21AF2700C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_21AF26FEC(char *a1, int64_t a2, char a3)
{
  result = sub_21AF2715C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_21AF2700C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD3ED90, &qword_21AF4B160);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[7 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 56 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD3ED80, &qword_21AF4B150);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_21AF2715C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD3ED70, &qword_21AF4B140);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_21AF27268(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD3ED60, &qword_21AF4B130);
    v3 = sub_21AF49B40();
    v4 = a1 + 32;

    while (1)
    {
      sub_21AF274F8(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_21AF26240(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_21AF27418(&v15, v3[7] + 40 * result);
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 56;
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

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_21AF27418(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_21AF27430(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_21AF27498(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_21AF274F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD3ED80, &qword_21AF4B150);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
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

uint64_t *__swift_deallocate_boxed_opaque_existential_1(uint64_t *result)
{
  v1 = *(result[3] - 8);
  if ((*(v1 + 80) & 0x20000) != 0)
  {
    v2 = *result;
    v3 = *(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80));
    JUMPOUT(0x21CEE68E0);
  }

  return result;
}

uint64_t sub_21AF2761C()
{
  v0 = sub_21AF49690();
  __swift_allocate_value_buffer(v0, qword_27CD3F1A8);
  __swift_project_value_buffer(v0, qword_27CD3F1A8);
  return sub_21AF49680();
}

uint64_t SQLiteDataType.defaultNativeType.getter()
{
  v1 = *v0;
  if (v1 <= 1)
  {
    if (*v0)
    {
      return MEMORY[0x277D837D0];
    }

    else
    {
      return MEMORY[0x277D84A28];
    }
  }

  else if (v1 == 2)
  {
    sub_21AF23C38();
    return MEMORY[0x277CC9318];
  }

  else if (v1 == 3)
  {
    return MEMORY[0x277D839F8];
  }

  else
  {
    return 0;
  }
}

PoirotSQLite::SQLiteDataType_optional __swiftcall SQLiteDataType.init(rawValue:)(Swift::Int32 rawValue)
{
  v2 = 0x40201030005uLL >> (8 * rawValue);
  if (rawValue >= 6)
  {
    LOBYTE(v2) = 5;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_21AF277BC()
{
  result = qword_27CD3ED98;
  if (!qword_27CD3ED98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD3ED98);
  }

  return result;
}

uint64_t sub_21AF27810()
{
  v1 = *v0;
  sub_21AF49C10();
  v2 = dword_21AF4B240[v1];
  sub_21AF49C30();
  return sub_21AF49C40();
}

uint64_t sub_21AF27898()
{
  v1 = *v0;
  sub_21AF49C10();
  v2 = dword_21AF4B240[v1];
  sub_21AF49C30();
  return sub_21AF49C40();
}

uint64_t getEnumTagSinglePayload for SQLiteDataType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SQLiteDataType(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t SQLiteDatabase.makeCreateStatement(for:in:with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  result = sub_21AF27B3C(a1, a2, a3, a4, a5, SQLiteSchemaDescribing.makeCreateStatementString(for:in:), a6);
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t SQLiteDatabase.makeSelectStatement(for:in:with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  result = sub_21AF27B3C(a1, a2, a3, a4, a5, SQLiteSchemaDescribing.makeSelectStatementString(for:in:), a6);
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_21AF27B3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t)@<X5>, uint64_t a7@<X8>)
{
  v10 = v7;
  ppStmt[1] = *MEMORY[0x277D85DE8];
  v15 = a5[3];
  v16 = a5[4];
  __swift_project_boxed_opaque_existential_1(a5, v15);
  result = a6(a1, a2, a3, a4, v15, v16);
  if (v8)
  {
    goto LABEL_21;
  }

  v18 = *(v10 + 16);
  if (!v18)
  {

    sub_21AF23A54();
    swift_allocError();
    *(v25 + 16) = 0;
    *v25 = 0;
LABEL_18:
    *(v25 + 8) = 0;
    *(v25 + 24) = 9;
    result = swift_willThrow();
    goto LABEL_21;
  }

  v19 = v10;
  ppStmt[0] = 0;
  v37 = 0;
  v20 = MEMORY[0x28223BE20](result);
  if ((v21 & 0x1000000000000000) != 0)
  {
    goto LABEL_22;
  }

  if ((v21 & 0x2000000000000000) == 0)
  {
    if ((v20 & 0x1000000000000000) != 0)
    {
      v22 = v20;
      v23 = v21;
      v24 = ((v21 & 0xFFFFFFFFFFFFFFFLL) + 32);
      goto LABEL_9;
    }

LABEL_22:
    v22 = v20;
    v23 = v21;
    sub_21AF49A50();
    v26 = *zSql;
    goto LABEL_11;
  }

  v23 = v21;
  v22 = v20;
  *zSql = v20;
  *&zSql[8] = v21 & 0xFFFFFFFFFFFFFFLL;
  v24 = zSql;
LABEL_9:
  v26 = sqlite3_prepare_v3(v18, v24, -1, 0, ppStmt, 0);
  if (v26)
  {
    v37 = sqlite3_error_offset(v18);
  }

LABEL_11:
  if (ppStmt[0] && !v26)
  {
    result = sub_21AF39E8C(v19, ppStmt[0]);
    *a7 = result;
    *(a7 + 8) = v31;
    *(a7 + 16) = v22;
    *(a7 + 24) = v23;
    *(a7 + 32) = xmmword_21AF4B260;
    *(a7 + 48) = 0;
    goto LABEL_21;
  }

  v27 = *(v19 + 16);
  if (!v27)
  {

    sub_21AF23A54();
    swift_allocError();
    *(v25 + 16) = 0;
    *v25 = 4;
    goto LABEL_18;
  }

  if (sqlite3_errmsg(v27))
  {
    v28 = sub_21AF497A0();
    v30 = v29;
  }

  else
  {
    v30 = 0x800000021AF4A500;
    v28 = 0xD000000000000014;
  }

  sub_21AF2FEB4(v22, v23, v37, zSql);
  sub_21AF28218();
  v35 = v39;
  v36 = *zSql;
  swift_allocError();
  *v32 = v26;
  *(v32 + 8) = v28;
  *(v32 + 16) = v30;
  *(v32 + 24) = v22;
  *(v32 + 32) = v23;
  *(v32 + 56) = v35;
  *(v32 + 40) = v36;
  result = swift_willThrow();
LABEL_21:
  v33 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t SQLiteDatabase.makeInsertStatement(for:in:with:values:returningRowId:replacingIfNeeded:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, Swift::Bool a7@<W6>, Swift::Bool a8@<W7>, uint64_t *a9@<X8>)
{
  ppStmt[1] = *MEMORY[0x277D85DE8];
  v15 = a5[4];
  __swift_project_boxed_opaque_existential_1(a5, a5[3]);
  v16._countAndFlagsBits = a1;
  v16._object = a2;
  v17.value._countAndFlagsBits = a3;
  v17.value._object = a4;
  result = SQLiteSchemaDescribing.makeInsertStatementString(for:in:returningRowId:replacingIfNeeded:)(v16, v17, a7, a8)._countAndFlagsBits;
  if (v19)
  {
    goto LABEL_21;
  }

  v20 = *(v38 + 16);
  if (!v20)
  {

    sub_21AF23A54();
    swift_allocError();
    *(v26 + 16) = 0;
    *v26 = 0;
LABEL_18:
    *(v26 + 8) = 0;
    *(v26 + 24) = 9;
    result = swift_willThrow();
    goto LABEL_21;
  }

  ppStmt[0] = 0;
  v40 = 0;
  v21 = MEMORY[0x28223BE20](result);
  if ((v22 & 0x1000000000000000) != 0)
  {
    goto LABEL_22;
  }

  if ((v22 & 0x2000000000000000) == 0)
  {
    if ((v21 & 0x1000000000000000) != 0)
    {
      v23 = v21;
      v24 = v22;
      v25 = ((v22 & 0xFFFFFFFFFFFFFFFLL) + 32);
      goto LABEL_9;
    }

LABEL_22:
    v23 = v21;
    v24 = v22;
    sub_21AF49A50();
    v27 = *zSql;
    goto LABEL_11;
  }

  v24 = v22;
  v23 = v21;
  *zSql = v21;
  *&zSql[8] = v22 & 0xFFFFFFFFFFFFFFLL;
  v25 = zSql;
LABEL_9:
  v27 = sqlite3_prepare_v3(v20, v25, -1, 0, ppStmt, 0);
  if (v27)
  {
    v40 = sqlite3_error_offset(v20);
  }

LABEL_11:
  if (ppStmt[0] && !v27)
  {
    *zSql = sub_21AF39E8C(v38, ppStmt[0]);
    *&zSql[8] = v32;
    *&v42 = v23;
    *(&v42 + 1) = v24;
    v43 = xmmword_21AF4B260;
    v44 = 0;
    SQLiteStatement.bind(values:)(a6, a9);

    result = swift_unknownObjectRelease();
    goto LABEL_21;
  }

  v28 = *(v38 + 16);
  if (!v28)
  {

    sub_21AF23A54();
    swift_allocError();
    *(v26 + 16) = 0;
    *v26 = 4;
    goto LABEL_18;
  }

  if (sqlite3_errmsg(v28))
  {
    v29 = sub_21AF497A0();
    v31 = v30;
  }

  else
  {
    v31 = 0x800000021AF4A500;
    v29 = 0xD000000000000014;
  }

  sub_21AF2FEB4(v23, v24, v40, zSql);
  sub_21AF28218();
  v37 = v42;
  v39 = *zSql;
  swift_allocError();
  *v33 = v27;
  *(v33 + 8) = v29;
  *(v33 + 16) = v31;
  *(v33 + 24) = v23;
  *(v33 + 32) = v24;
  *(v33 + 56) = v37;
  *(v33 + 40) = v39;
  result = swift_willThrow();
LABEL_21:
  v34 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_21AF28218()
{
  result = qword_27CD3EDA0[0];
  if (!qword_27CD3EDA0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CD3EDA0);
  }

  return result;
}

uint64_t SQLiteRow.get<A>(from:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v17[3] = a3;
  v6 = *v3;
  v7 = v3[1];
  v8 = (*(a2 + 24))(a1, a2);
  v10 = v9;
  v17[0] = v6;
  v17[1] = v7;
  v11._countAndFlagsBits = (*(a2 + 32))(a1, a2);
  v12 = SQLiteRow.columnIndex(for:)(v11);
  if (v13)
  {
  }

  v15 = v12;

  v16 = SQLiteColumnDescribing.nullable.getter(a1, a2);
  return (*(v10 + 56))(v17, v15, v16 & 1, v8, v10);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> String.ensureValidSQLNameCharacters()()
{
  v2 = v1;
  v3 = v0;
  sub_21AF24E90(v0, v1);
  if (!v4)
  {
    goto LABEL_12;
  }

  sub_21AF24ED8(v3, v2);
  if (!v5)
  {
    goto LABEL_11;
  }

  if (qword_27CD3ECD0 != -1)
  {
    swift_once();
  }

  v12 = sub_21AF49560();
  __swift_project_value_buffer(v12, qword_27CD3F1D8);
  sub_21AF24F58();
  sub_21AF499B0();
  v7 = v6;

  if ((v7 & 1) == 0)
  {
LABEL_11:

LABEL_12:
    sub_21AF23A54();
    swift_allocError();
    *(v11 + 8) = 0;
    *(v11 + 16) = 0;
    *v11 = 10;
    *(v11 + 24) = 9;
    swift_willThrow();
    return;
  }

  sub_21AF499B0();
  v9 = v8;

  if ((v9 & 1) == 0)
  {
    goto LABEL_12;
  }

  if (qword_27CD3ECC8 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v12, qword_27CD3F1C0);
  sub_21AF499B0();
  if ((v10 & 1) == 0)
  {
    goto LABEL_12;
  }
}

void sub_21AF285C0()
{
  v1 = *v0;
  v2 = v0[1];
  String.ensureValidSQLNameCharacters()();
}

uint64_t sub_21AF286B0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  sub_21AF49A70();
  swift_getKeyPath();
  sub_21AF498D0();
  swift_getWitnessTable();
  v3 = sub_21AF49A90();

  return v3;
}

uint64_t sub_21AF28778()
{
  v1 = *(v0 + 24);
  swift_getAtKeyPath();
  return v3;
}

uint64_t sub_21AF287AC()
{
  v1 = *(*v0 + 288);
  v2 = *(*v0 + 280);
  return swift_getAssociatedTypeWitness();
}

uint64_t SQLiteTableUDF.__allocating_init(style:)(char *a1)
{
  swift_allocObject();
  v3 = *a1;
  return SQLiteVTab.init(style:)(&v3);
}

uint64_t SQLiteTableUDF.__deallocating_deinit()
{
  v0 = SQLiteVTab.deinit();

  return MEMORY[0x2821FE8D8](v0, 41, 7);
}

uint64_t sub_21AF288F4(uint64_t a1, uint64_t (*a2)(void))
{
  result = a2();
  if (!v2)
  {
  }

  return result;
}

uint64_t static SQLiteTableUDF.getTable(forCursor:)(uint64_t a1)
{
  result = sub_21AF292C4(a1);
  if (!v1)
  {
    sub_21AF29254(result);
  }

  return result;
}

uint64_t sub_21AF28950()
{
  sub_21AF2935C();
}

uint64_t sub_21AF28978(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 40);
  *(v1 + 40) = a1;
}

uint64_t sub_21AF289C0(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  swift_beginAccess();
  v9 = v2[5];
  v5 = *(v4 + 160);
  v6 = *(v4 + 152);
  swift_getAssociatedTypeWitness();
  sub_21AF498D0();
  swift_getWitnessTable();
  if (sub_21AF49920())
  {

    swift_beginAccess();
    v7 = v2[5];
    v2[5] = a1;
  }

  else
  {
    result = sub_21AF49B10();
    __break(1u);
  }

  return result;
}

uint64_t sub_21AF28B60()
{
  v1 = *(*v0 + 160);
  v2 = *(*v0 + 152);
  return swift_getAssociatedTypeWitness();
}

uint64_t sub_21AF28BA4()
{
  v2 = v0;
  v3 = *v0;
  swift_beginAccess();
  v15 = v2[5];
  v4 = *(v3 + 160);
  v5 = *(v3 + 152);
  swift_getAssociatedTypeWitness();
  v6 = sub_21AF498D0();
  WitnessTable = swift_getWitnessTable();
  if ((sub_21AF49920() & 1) == 0 || (v8 = v2, (*(*v2 + 208))(), !v1))
  {
    v9 = swift_beginAccess();
    v14 = v2[5];
    MEMORY[0x28223BE20](v9);
    v13[2] = v5;
    v13[3] = v4;

    v11 = sub_21AF2E8F8(sub_21AF2958C, v13, v6, MEMORY[0x277D837D0], MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v10);

    v14 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD3EF28, qword_21AF4C3A0);
    sub_21AF295AC();
    v8 = sub_21AF496A0();
  }

  return v8;
}

uint64_t sub_21AF28DC0@<X0>(void *a1@<X8>)
{
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v3 = *(AssociatedConformanceWitness + 8);
  v4 = *(v3 + 32);
  v5 = swift_checkMetadataState();
  v6 = v4(v5, v3);
  MEMORY[0x21CEE5D10](v6);

  MEMORY[0x21CEE5D10](32, 0xE100000000000000);
  (*(v3 + 24))(v5, v3);
  (*(v7 + 24))(&v14);
  sub_21AF49AF0();
  v8 = (*(AssociatedConformanceWitness + 16))(v5, AssociatedConformanceWitness);
  v9 = (v8 & 1) == 0;
  if (v8)
  {
    v10 = 0x4E454444494820;
  }

  else
  {
    v10 = 0;
  }

  if (v9)
  {
    v11 = 0xE000000000000000;
  }

  else
  {
    v11 = 0xE700000000000000;
  }

  MEMORY[0x21CEE5D10](v10, v11);

  *a1 = v13;
  a1[1] = 0xE000000000000000;
  return result;
}

void *SQLiteTableUDF.BaseConnection.init(_:argc:argv:)(uint64_t a1, int a2, uint64_t a3)
{
  v7 = *(*v3 + 160);
  v8 = *(*v3 + 152);
  swift_getAssociatedTypeWitness();
  v3[5] = sub_21AF49890();
  return SQLiteVTab.Connection.init(_:argc:argv:)(a1, a2, a3);
}

void *SQLiteTableUDF.BaseConnection.deinit()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  return v0;
}

uint64_t SQLiteTableUDF.BaseConnection.__deallocating_deinit()
{
  SQLiteTableUDF.BaseConnection.deinit();

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SQLiteTableUDF.CaseIterableColumnSchemaConnection.configureColumns()()
{
  v1 = *v0;
  v2 = v1[28];
  v3 = v1[27];
  swift_getAssociatedTypeWitness();
  v4 = *(v1[29] + 16);
  sub_21AF49A70();
  sub_21AF289C0(v5);
}

uint64_t SQLiteTableUDF.BaseCursor.__allocating_init(_:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a1;
  return result;
}

uint64_t SQLiteTableUDF.BaseCursor.init(_:)(uint64_t a1)
{
  *(v1 + 16) = 0;
  *(v1 + 24) = a1;
  return v1;
}

uint64_t SQLiteTableUDF.BaseCursor.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t SQLiteTableUDF.BaseCursor.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_21AF29254(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = swift_dynamicCastClass();
  if (!result)
  {
    sub_21AF29610();
    swift_allocError();
    *v3 = 0;
    *(v3 + 4) = 1;
    swift_willThrow();
    return 0;
  }

  return result;
}

uint64_t sub_21AF292C4(uint64_t a1)
{
  v2 = *(a1 + 24);
  v4 = *(v1 + 280);
  v3 = *(v1 + 288);
  swift_getAssociatedTypeWitness();
  result = swift_dynamicCastClass();
  if (!result)
  {
    sub_21AF29610();
    swift_allocError();
    *v6 = 1;
    *(v6 + 4) = 1;
    swift_willThrow();
    return 0;
  }

  return result;
}

uint64_t sub_21AF2958C@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_21AF28DC0(a1);
}

unint64_t sub_21AF295AC()
{
  result = qword_27CD3EF30;
  if (!qword_27CD3EF30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD3EF28, qword_21AF4C3A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD3EF30);
  }

  return result;
}

unint64_t sub_21AF29610()
{
  result = qword_27CD3EF38[0];
  if (!qword_27CD3EF38[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CD3EF38);
  }

  return result;
}

uint64_t __swift_memcpy5_4(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for SQLiteTableUDFError(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 5))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SQLiteTableUDFError(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 4) = 0;
    *result = a2 - 1;
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

  *(result + 5) = v3;
  return result;
}

uint64_t sub_21AF296F4(uint64_t a1)
{
  if (*(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21AF29710(uint64_t result, int a2)
{
  if (a2)
  {
    *result = a2 - 1;
    *(result + 4) = 1;
  }

  else
  {
    *(result + 4) = 0;
  }

  return result;
}

uint64_t SQLiteArgument.init(_:)@<X0>(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  if (result)
  {
    *a2 = result;
  }

  else
  {
    sub_21AF23A54();
    swift_allocError();
    *v2 = xmmword_21AF4B4B0;
    *(v2 + 16) = 0;
    *(v2 + 24) = 4;
    return swift_willThrow();
  }

  return result;
}

Swift::Int8 __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SQLiteArgument.getInt8()()
{
  v1 = sqlite3_value_int(*v0);
  if (v1 >= -128)
  {
    if (v1 > 127)
    {
      __break(1u);
    }
  }

  else
  {
    sub_21AF23A54();
    swift_allocError();
    *(v2 + 8) = 0;
    *(v2 + 16) = 0;
    *v2 = 8;
    *(v2 + 24) = 9;
    LOBYTE(v1) = swift_willThrow();
  }

  return v1;
}

Swift::UInt8 __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SQLiteArgument.getUInt8()()
{
  v1 = sqlite3_value_int(*v0);
  if ((v1 & 0x80000000) != 0)
  {
    goto LABEL_4;
  }

  if (v1 > 0xFF)
  {
    __break(1u);
LABEL_4:
    sub_21AF23A54();
    swift_allocError();
    *(v2 + 8) = 0;
    *(v2 + 16) = 0;
    *v2 = 8;
    *(v2 + 24) = 9;
    LOBYTE(v1) = swift_willThrow();
  }

  return v1;
}

Swift::Int16 __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SQLiteArgument.getInt16()()
{
  v1 = sqlite3_value_int(*v0);
  if (v1 >= -32768)
  {
    if (v1 >= 0x8000)
    {
      __break(1u);
    }
  }

  else
  {
    sub_21AF23A54();
    swift_allocError();
    *(v2 + 8) = 0;
    *(v2 + 16) = 0;
    *v2 = 8;
    *(v2 + 24) = 9;
    LOWORD(v1) = swift_willThrow();
  }

  return v1;
}

Swift::UInt16 __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SQLiteArgument.getUInt16()()
{
  v1 = sqlite3_value_int(*v0);
  if ((v1 & 0x80000000) != 0)
  {
    goto LABEL_4;
  }

  if (HIWORD(v1))
  {
    __break(1u);
LABEL_4:
    sub_21AF23A54();
    swift_allocError();
    *(v2 + 8) = 0;
    *(v2 + 16) = 0;
    *v2 = 8;
    *(v2 + 24) = 9;
    LOWORD(v1) = swift_willThrow();
  }

  return v1;
}

Swift::UInt32 __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SQLiteArgument.getUInt32()()
{
  result = sqlite3_value_int(*v0);
  if ((result & 0x80000000) != 0)
  {
    v2 = result;
    sub_21AF23A54();
    swift_allocError();
    *(v3 + 8) = 0;
    *(v3 + 16) = 0;
    *v3 = 8;
    *(v3 + 24) = 9;
    swift_willThrow();
    return v2;
  }

  return result;
}

sqlite3_int64 sub_21AF29BB8()
{
  result = sqlite3_value_int64(*v0);
  if (result < 0)
  {
    v2 = result;
    sub_21AF23A54();
    swift_allocError();
    *(v3 + 8) = 0;
    *(v3 + 16) = 0;
    *v3 = 8;
    *(v3 + 24) = 9;
    swift_willThrow();
    return v2;
  }

  return result;
}

Swift::Float __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SQLiteArgument.getFloat()()
{
  v1 = sqlite3_value_double(*v0);
  if (fabs(v1) > -3.40282347e38)
  {
    return v1;
  }

  sub_21AF23A54();
  swift_allocError();
  *(v3 + 8) = 0;
  *(v3 + 16) = 0;
  *v3 = 8;
  *(v3 + 24) = 9;
  swift_willThrow();
  return result;
}

uint64_t SQLiteArgument.withUnsafeBytes<A>(_:)(uint64_t (*a1)(const void *, uint64_t))
{
  v3 = *v1;
  v4 = sqlite3_value_blob(*v1);
  if (v4)
  {
    v5 = v4;
    v6 = sqlite3_value_bytes(v3);
    v4 = v5;
  }

  else
  {
    v6 = 0;
  }

  return a1(v4, v6);
}

uint64_t SQLiteArgument.getData()()
{
  v1 = *v0;
  v2 = sqlite3_value_blob(*v0);
  if (v2)
  {
    v3 = v2;
    v4 = sqlite3_value_bytes(v1);
    return sub_21AF2A19C(v3, v4);
  }

  else
  {
    sqlite3_value_type(v1);
    return 0;
  }
}

uint64_t SQLiteArgument.getDataNonNull()()
{
  v1 = *v0;
  v2 = sqlite3_value_blob(v1);
  if (v2)
  {
    v3 = v2;
    v4 = sqlite3_value_bytes(v1);
    return sub_21AF2A19C(v3, v4);
  }

  else if (sqlite3_value_type(v1) == 5)
  {
    sub_21AF23A54();
    swift_allocError();
    *(v6 + 8) = 0;
    *(v6 + 16) = 0;
    *v6 = 6;
    *(v6 + 24) = 9;
    return swift_willThrow();
  }

  else
  {
    return 0;
  }
}

Swift::String_optional __swiftcall SQLiteArgument.getString()()
{
  v1 = sqlite3_value_text(*v0);
  if (v1)
  {
    v1 = sub_21AF497B0();
  }

  else
  {
    v2 = 0;
  }

  result.value._object = v2;
  result.value._countAndFlagsBits = v1;
  return result;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SQLiteArgument.getStringNonNull()()
{
  if (sqlite3_value_text(*v0))
  {
    v1 = sub_21AF497B0();
  }

  else
  {
    sub_21AF23A54();
    swift_allocError();
    *(v3 + 8) = 0;
    *(v3 + 16) = 0;
    *v3 = 6;
    *(v3 + 24) = 9;
    v1 = swift_willThrow();
  }

  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

uint64_t SQLiteArgument.getBase64EncodedData()()
{
  v1 = *v0;
  if ((sqlite3_value_type(*v0) == 4 || sqlite3_value_type(v1) == 3) && sqlite3_value_text(v1) && (sub_21AF497B0(), v2 = sub_21AF495E0(), v4 = v3, , v4 >> 60 != 15))
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t Array<A>.init(_:argc:)(uint64_t result, int a2)
{
  if (!result)
  {
    sub_21AF23A54();
    swift_allocError();
    *v7 = xmmword_21AF4B4C0;
    *(v7 + 16) = 0;
    *(v7 + 24) = 4;
    return swift_willThrow();
  }

  if (a2 < 0)
  {
    goto LABEL_14;
  }

  v2 = a2;
  if (a2)
  {
    v3 = result;
    result = sub_21AF498A0();
    v4 = 0;
    *(result + 16) = v2;
    while (1)
    {
      v5 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v6 = *(v3 + 8 * v4);
      if (!v6)
      {
        v8 = result;
        sub_21AF23A54();
        swift_allocError();
        *v9 = xmmword_21AF4B4B0;
        *(v9 + 16) = 0;
        *(v9 + 24) = 4;
        swift_willThrow();
        *(v8 + 16) = 0;
      }

      *(result + 8 * v4++ + 32) = v6;
      if (v5 == v2)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  result = MEMORY[0x277D84F90];
LABEL_11:
  *(result + 16) = v2;
  return result;
}

uint64_t sub_21AF2A0E4(_BYTE *__src, _BYTE *a2)
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

uint64_t sub_21AF2A19C(_BYTE *a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 <= 14)
  {
    return sub_21AF2A0E4(a1, &a1[a2]);
  }

  v3 = sub_21AF495B0();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_21AF49570();
  if (a2 < 0x7FFFFFFF)
  {
    return a2 << 32;
  }

  sub_21AF495F0();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for SQLiteArgument(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 8))
  {
    return (*a1 + 2);
  }

  if (*a1)
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for SQLiteArgument(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *result = a2 - 2;
    if (a3 >= 2)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = 0;
    }
  }

  return result;
}

PoirotSQLite::SQLiteDataType __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SQLiteRow.type(at:)(Swift::Int at)
{
  v5 = v1;
  v6 = *v2;
  v7 = v2[1];
  ObjectType = swift_getObjectType();
  v9 = (*(v7 + 24))(ObjectType, v7);
  if (!v3)
  {
    if (at < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (at <= 0x7FFFFFFF)
    {
      LODWORD(v9) = sqlite3_column_type(v9, at);
      if ((v9 - 1) >= 5)
      {
        sub_21AF49A60();

        v10 = sub_21AF49B60();
        MEMORY[0x21CEE5D10](v10);

        sub_21AF23A54();
        swift_allocError();
        *v11 = 0xD000000000000013;
        *(v11 + 8) = 0x800000021AF4A670;
        *(v11 + 16) = 0;
        *(v11 + 24) = 4;
        LOBYTE(v9) = swift_willThrow();
      }

      else
      {
        *v5 = 0x402010300uLL >> (8 * (v9 - 1));
      }

      return v9;
    }

    __break(1u);
  }

  return v9;
}

uint64_t SQLiteRow.get<A>(at:type:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v4;
  v8 = *(a4 + 16);
  swift_unknownObjectRetain();
  return v8(&v10, a1, a3, a4);
}

{
  v10 = *v4;
  v8 = *(a4 + 16);
  swift_unknownObjectRetain();
  return v8(&v10, a1, a3, a4);
}

uint64_t SQLiteRow.getNonNull<A>(at:type:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v22 = a4;
  v9 = sub_21AF49990();
  v20 = *(v9 - 8);
  v10 = *(v20 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v19 - v11;
  v21 = *v4;
  v13 = *(a3 + 16);
  swift_unknownObjectRetain();
  result = v13(&v21, a1, a2, a3);
  if (!v5)
  {
    v15 = v20;
    v16 = v22;
    v17 = *(a2 - 8);
    if ((*(v17 + 48))(v12, 1, a2) == 1)
    {
      (*(v15 + 8))(v12, v9);
      sub_21AF23A54();
      swift_allocError();
      *(v18 + 8) = 0;
      *(v18 + 16) = 0;
      *v18 = 6;
      *(v18 + 24) = 9;
      return swift_willThrow();
    }

    else
    {
      return (*(v17 + 32))(v16, v12, a2);
    }
  }

  return result;
}

uint64_t sub_21AF2A71C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *a1;
  v9 = a1[1];
  ObjectType = swift_getObjectType();
  v11 = *(v9 + 24);
  v12 = v11(ObjectType, v9);
  if (v4)
  {
    return swift_unknownObjectRelease();
  }

  result = sqlite3_column_count(v12);
  if ((result & 0x80000000) == 0)
  {
    v20 = a2;
    v14 = result;
    if (result)
    {
      v19 = a4;
      v15 = 0;
      while (v14 != v15)
      {
        v16 = v11(ObjectType, v9);
        result = sqlite3_column_name(v16, v15);
        if (result)
        {
          v17 = sub_21AF497A0();
          sub_21AF250B8(v15, v17, v18, v20, a3, v19);
        }

        if (v14 == ++v15)
        {
          return swift_unknownObjectRelease();
        }
      }

      __break(1u);
      goto LABEL_11;
    }

    return swift_unknownObjectRelease();
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t SQLiteRow.forEachColumn(_:)(void (*a1)(uint64_t, uint64_t, uint64_t))
{
  v5 = *v1;
  v4 = v1[1];
  ObjectType = swift_getObjectType();
  v7 = *(v4 + 24);
  result = v7(ObjectType, v4);
  if (!v2)
  {
    result = sqlite3_column_count(result);
    if ((result & 0x80000000) == 0)
    {
      v15 = a1;
      v9 = result;
      if (!result)
      {
        return result;
      }

      v14 = result;
      v10 = 0;
      while (v9 != v10)
      {
        v11 = v7(ObjectType, v4);
        result = sqlite3_column_name(v11, v10);
        if (result)
        {
          v12 = sub_21AF497A0();
          v15(v10, v12, v13);

          v9 = v14;
        }

        if (v9 == ++v10)
        {
          return result;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

Swift::Int __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SQLiteRow.columnIndex(for:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v5 = v1[1];
  v6 = *v1;
  ObjectType = swift_getObjectType();
  v8 = *(v5 + 24);
  v9 = v8(ObjectType, v5);
  if (v2)
  {
    return countAndFlagsBits;
  }

  v17 = countAndFlagsBits;
  v18 = object;
  result = sqlite3_column_count(v9);
  if ((result & 0x80000000) == 0)
  {
    v11 = result;
    if (result)
    {
      countAndFlagsBits = 0;
      v16 = result;
      while (v11 != countAndFlagsBits)
      {
        v13 = v8(ObjectType, v5);
        result = sqlite3_column_name(v13, countAndFlagsBits);
        if (result)
        {
          if (sub_21AF497A0() == v17 && v14 == v18)
          {

            return countAndFlagsBits;
          }

          v12 = sub_21AF49BA0();

          v11 = v16;
          if (v12)
          {
            return countAndFlagsBits;
          }
        }

        if (v11 == ++countAndFlagsBits)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
      goto LABEL_15;
    }

LABEL_12:
    sub_21AF23A54();
    swift_allocError();
    *v15 = v17;
    *(v15 + 8) = v18;
    *(v15 + 16) = 0;
    *(v15 + 24) = 1;
    swift_willThrow();

    return countAndFlagsBits;
  }

LABEL_15:
  __break(1u);
  return result;
}

Swift::Int __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SQLiteRow.getColumnCount()()
{
  v2 = *v0;
  v3 = v0[1];
  ObjectType = swift_getObjectType();
  result = (*(v3 + 24))(ObjectType, v3);
  if (!v1)
  {
    return sqlite3_column_count(result);
  }

  return result;
}

Swift::String_optional __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SQLiteRow.columnName(for:)(Swift::Int a1)
{
  v4 = *v1;
  v5 = v1[1];
  ObjectType = swift_getObjectType();
  v7 = (*(v5 + 24))(ObjectType, v5);
  if (!v2)
  {
    if (a1 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (a1 <= 0x7FFFFFFF)
    {
      v7 = sqlite3_column_name(v7, a1);
      if (v7)
      {
        v7 = sub_21AF497A0();
      }

      else
      {
        v8 = 0;
      }

      goto LABEL_10;
    }

    __break(1u);
  }

LABEL_10:
  result.value._object = v8;
  result.value._countAndFlagsBits = v7;
  return result;
}

PoirotSQLite::SQLiteDataType __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SQLiteRow.type(for:)(Swift::String a1)
{
  v5 = *v1;
  v6 = v1[1];
  v2 = SQLiteRow.columnIndex(for:)(a1);
  if (!v3)
  {
    LOBYTE(v2) = SQLiteRow.type(at:)(v2);
  }

  return v2;
}

uint64_t SQLiteRow.get<A>(from:type:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = v5[1];
  v15[0] = *v5;
  v15[1] = v10;
  swift_unknownObjectRetain();
  v11._countAndFlagsBits = a1;
  v11._object = a2;
  v12 = SQLiteRow.columnIndex(for:)(v11);
  if (v13)
  {
    return swift_unknownObjectRelease();
  }

  else
  {
    return (*(a5 + 16))(v15, v12, a4, a5);
  }
}

{
  v10 = v5[1];
  v15[0] = *v5;
  v15[1] = v10;
  swift_unknownObjectRetain();
  v11._countAndFlagsBits = a1;
  v11._object = a2;
  v12 = SQLiteRow.columnIndex(for:)(v11);
  if (v13)
  {
    return swift_unknownObjectRelease();
  }

  else
  {
    return (*(a5 + 16))(v15, v12, a4, a5);
  }
}

uint64_t SQLiteRow.getNonNull<A>(at:type:)(Swift::Int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *v4;
  v9 = v4[1];
  v15 = *v4;
  v16 = v9;
  result = SQLiteRow.type(at:)(a1);
  if (!v11)
  {
    if (v14 == 4)
    {
      sub_21AF23A54();
      swift_allocError();
      *(v12 + 8) = 0;
      *(v12 + 16) = 0;
      *v12 = 6;
      *(v12 + 24) = 9;
      return swift_willThrow();
    }

    else
    {
      v15 = v8;
      v16 = v9;
      v13 = *(a4 + 16);
      swift_unknownObjectRetain();
      return v13(&v15, a1, a3, a4);
    }
  }

  return result;
}

uint64_t SQLiteRow.getNonNull<A>(from:type:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return sub_21AF2B1B0(a1, a2, a3, a4, a5, SQLiteRow.getNonNull<A>(at:type:));
}

{
  return sub_21AF2B1B0(a1, a2, a3, a4, a5, SQLiteRow.getNonNull<A>(at:type:));
}

uint64_t SQLiteRow.getNullable<A>(at:type:)@<X0>(Swift::Int a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v9 = *v4;
  v10 = v4[1];
  v14 = *v4;
  v15 = v10;
  result = SQLiteRow.type(at:)(a1);
  if (!v12)
  {
    if (v16 == 4)
    {
      return (*(*(a2 - 8) + 56))(a4, 1, 1, a2);
    }

    else
    {
      v14 = v9;
      v15 = v10;
      v13 = *(a3 + 16);
      swift_unknownObjectRetain();
      v13(&v14, a1, a2, a3);
      return (*(*(a2 - 8) + 56))(a4, 0, 1, a2);
    }
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_21AF2B230(uint64_t *a1, int a2)
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

uint64_t sub_21AF2B278(uint64_t result, int a2, int a3)
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

uint64_t Bool.bind(to:at:)(uint64_t *a1, uint64_t a2, char a3)
{
  v6 = *a1;
  v7 = a1[1];
  ObjectType = swift_getObjectType();
  result = (*(v7 + 24))(ObjectType, v7);
  if (!v3)
  {
    if (a2 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (a2 <= 0x7FFFFFFF)
    {
      result = sqlite3_bind_int(result, a2, a3 & 1);
      if (result)
      {
        v10 = result;
        sub_21AF23A54();
        swift_allocError();
        *v11 = v10;
        *(v11 + 8) = 0xD000000000000012;
        *(v11 + 16) = 0x800000021AF4A690;
        *(v11 + 24) = 0;
        return swift_willThrow();
      }

      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t Float.bind(to:at:)(uint64_t *a1, uint64_t a2, float a3)
{
  v6 = *a1;
  v7 = a1[1];
  ObjectType = swift_getObjectType();
  result = (*(v7 + 24))(ObjectType, v7);
  if (!v3)
  {
    if (a2 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (a2 <= 0x7FFFFFFF)
    {
      result = sqlite3_bind_double(result, a2, a3);
      if (result)
      {
        v10 = result;
        sub_21AF23A54();
        swift_allocError();
        *v11 = v10;
        *(v11 + 8) = 0xD000000000000015;
        *(v11 + 16) = 0x800000021AF4A6B0;
        *(v11 + 24) = 0;
        return swift_willThrow();
      }

      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t Double.bind(to:at:)(uint64_t *a1, uint64_t a2, double a3)
{
  v6 = *a1;
  v7 = a1[1];
  ObjectType = swift_getObjectType();
  result = (*(v7 + 24))(ObjectType, v7);
  if (!v3)
  {
    if (a2 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (a2 <= 0x7FFFFFFF)
    {
      result = sqlite3_bind_double(result, a2, a3);
      if (result)
      {
        v10 = result;
        sub_21AF23A54();
        swift_allocError();
        *v11 = v10;
        *(v11 + 8) = 0xD000000000000015;
        *(v11 + 16) = 0x800000021AF4A6B0;
        *(v11 + 24) = 0;
        return swift_willThrow();
      }

      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t String.bind(to:at:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a1 + 16);
  v13[0] = *a1;
  v13[1] = v8;
  v13[2] = *(a1 + 32);
  v14 = *(a1 + 48);
  sub_21AF2B9B0(v13, v12);
  result = sub_21AF2B7A4(a3, a4, v13, a2);
  if (!v4)
  {
    if (result)
    {
      v10 = result;
      sub_21AF23A54();
      swift_allocError();
      *v11 = v10;
      *(v11 + 8) = 0xD000000000000015;
      *(v11 + 16) = 0x800000021AF4A6D0;
      *(v11 + 24) = 0;
      return swift_willThrow();
    }
  }

  return result;
}

sqlite3_stmt *sub_21AF2B6BC@<X0>(const char *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, _DWORD *a4@<X8>)
{
  v8 = *a2;
  v9 = a2[1];
  ObjectType = swift_getObjectType();
  result = (*(v9 + 24))(ObjectType, v9);
  if (!v4)
  {
    if (a3 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (a3 <= 0x7FFFFFFF)
    {
      if (qword_280B23D90 == -1)
      {
LABEL_5:
        result = sqlite3_bind_text(result, a3, a1, -1, qword_280B23DD0);
        *a4 = result;
        return result;
      }

LABEL_9:
      v12 = result;
      swift_once();
      result = v12;
      goto LABEL_5;
    }

    __break(1u);
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_21AF2B7A4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    v5 = a4;
    if ((a2 & 0x2000000000000000) != 0)
    {
      *v20 = a1;
      v21 = a2 & 0xFFFFFFFFFFFFFFLL;
      v14 = *a3;
      v15 = a3[1];
      ObjectType = swift_getObjectType();
      v11 = (*(v15 + 24))(ObjectType, v15);
      if (!v4)
      {
        if (v5 >= 0xFFFFFFFF80000000)
        {
          if (v5 <= 0x7FFFFFFF)
          {
            if (qword_280B23D90 == -1)
            {
LABEL_16:
              v12 = qword_280B23DD0;
              v13 = v20;
LABEL_17:
              v5 = sqlite3_bind_text(v11, v5, v13, -1, v12);
              sub_21AF2C5C8(a3);
              return v5;
            }

LABEL_25:
            v18 = v11;
            swift_once();
            v11 = v18;
            goto LABEL_16;
          }

          goto LABEL_23;
        }

        __break(1u);
LABEL_22:
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

LABEL_11:
      sub_21AF2C5C8(a3);
      return v5;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v8 = *a3;
      v9 = a3[1];
      v10 = swift_getObjectType();
      v11 = (*(v9 + 24))(v10, v9);
      if (!v4)
      {
        if (v5 >= 0xFFFFFFFF80000000)
        {
          if (v5 <= 0x7FFFFFFF)
          {
            if (qword_280B23D90 != -1)
            {
              v19 = v11;
              swift_once();
              v11 = v19;
            }

            v12 = qword_280B23DD0;
            v13 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
            goto LABEL_17;
          }

          goto LABEL_24;
        }

        goto LABEL_22;
      }

      goto LABEL_11;
    }
  }

  sub_21AF49A50();
  sub_21AF2C5C8(a3);
  if (!v4)
  {
    return v22;
  }

  return v5;
}

uint64_t sub_21AF2BA0C(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v5 = v2[1];
  v7 = *(a1 + 16);
  v12[0] = *a1;
  v12[1] = v7;
  v12[2] = *(a1 + 32);
  v13 = *(a1 + 48);
  sub_21AF2B9B0(v12, v11);
  result = sub_21AF2B7A4(v6, v5, v12, a2);
  if (!v3)
  {
    if (result)
    {
      v9 = result;
      sub_21AF23A54();
      swift_allocError();
      *v10 = v9;
      *(v10 + 8) = 0xD000000000000015;
      *(v10 + 16) = 0x800000021AF4A6D0;
      *(v10 + 24) = 0;
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t Data.bind(to:at:)(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v7 = *(a1 + 16);
  v10[0] = *a1;
  v10[1] = v7;
  v10[2] = *(a1 + 32);
  v11 = *(a1 + 48);
  sub_21AF2B9B0(v10, v9);
  sub_21AF2C54C(a3, a4);
  return sub_21AF2BFF8(a3, a4, v10, a2, a3, a4);
}

uint64_t sub_21AF2BB68(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v4 = v2[1];
  v6 = *(a1 + 16);
  v9[0] = *a1;
  v9[1] = v6;
  v9[2] = *(a1 + 32);
  v10 = *(a1 + 48);
  sub_21AF2B9B0(v9, v8);
  sub_21AF2C54C(v5, v4);
  return sub_21AF2BFF8(v5, v4, v9, a2, v5, v4);
}

sqlite3_stmt *Optional<A>.bind(to:at:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a4;
  v33 = a2;
  v5 = *(a3 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](a1);
  v9 = &v27[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = *(v10 + 16);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v7);
  v16 = &v27[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = *v14;
  v17 = *(v14 + 8);
  v20 = *(v14 + 16);
  v19 = *(v14 + 24);
  v21 = *(v14 + 40);
  v30 = *(v14 + 32);
  v31 = v19;
  v29 = v21;
  v28 = *(v14 + 48);
  (*(v5 + 16))(v9, v22);
  if ((*(v12 + 48))(v9, 1, v11) == 1)
  {
    v23 = v33;
    (*(v5 + 8))(v9, a3);
    ObjectType = swift_getObjectType();
    v25 = v36;
    result = (*(v17 + 24))(ObjectType, v17);
    if (!v25)
    {
      if (v23 < 0xFFFFFFFF80000000)
      {
        __break(1u);
      }

      else if (v23 <= 0x7FFFFFFF)
      {
        return sqlite3_bind_null(result, v23);
      }

      __break(1u);
    }
  }

  else
  {
    (*(v12 + 32))(v16, v9, v11);
    v34[0] = v18;
    v34[1] = v17;
    v34[2] = v20;
    v34[3] = v31;
    v34[4] = v30;
    v34[5] = v29;
    v35 = v28;
    (*(v32 + 8))(v34, v33, v11);
    return (*(v12 + 8))(v16, v11);
  }

  return result;
}

uint64_t RawRepresentable<>.bind(to:at:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16 = a4;
  v17 = a5;
  v18 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v10 = &v15 - v9;
  v15 = *(a1 + 16);
  v12 = *(a1 + 32);
  v11 = *(a1 + 40);
  v13 = *(a1 + 48);
  sub_21AF49870();
  v19[0] = *a1;
  v19[1] = v15;
  v20 = v12;
  v21 = v11;
  v22 = v13;
  (*(v17 + 8))(v19, v18, AssociatedTypeWitness);
  return (*(v7 + 8))(v10, AssociatedTypeWitness);
}

uint64_t sub_21AF2BFF8(uint64_t a1, unint64_t a2, uint64_t *a3, uint64_t a4, unint64_t a5, unint64_t a6)
{
  v7 = v6;
  v52[2] = *MEMORY[0x277D85DE8];
  v12 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
LABEL_11:
    if (v12 == 2)
    {
      v17 = *(a1 + 16);
      v18 = sub_21AF49580();
      if (v18)
      {
        v19 = sub_21AF495A0();
        if (__OFSUB__(v17, v19))
        {
          __break(1u);
LABEL_74:
          __break(1u);
LABEL_75:
          __break(1u);
LABEL_76:
          __break(1u);
LABEL_77:
          __break(1u);
          goto LABEL_78;
        }

        v18 += v17 - v19;
      }

      sub_21AF49590();
      v20 = *a3;
      v21 = a3[1];
      ObjectType = swift_getObjectType();
      a1 = (*(v21 + 24))(ObjectType, v21);
      if (v7)
      {
        goto LABEL_70;
      }

      if (a4 < 0xFFFFFFFF80000000)
      {
        goto LABEL_77;
      }

      if (a4 > 0x7FFFFFFF)
      {
LABEL_80:
        __break(1u);
LABEL_81:
        __break(1u);
LABEL_82:
        __break(1u);
LABEL_83:
        __break(1u);
LABEL_84:
        __break(1u);
        goto LABEL_85;
      }

      v23 = a6 >> 62;
      if ((a6 >> 62) > 1)
      {
        if (v23 != 2)
        {
          goto LABEL_60;
        }

        v39 = *(a5 + 16);
        v38 = *(a5 + 24);
        v7 = v38 - v39;
        if (__OFSUB__(v38, v39))
        {
          goto LABEL_90;
        }

        if (v7 >= 0xFFFFFFFF80000000)
        {
          LODWORD(v29) = 0x7FFFFFFF;
          if (v7 <= 0x7FFFFFFF)
          {
            goto LABEL_65;
          }

          __break(1u);
LABEL_55:
          if (v29 != 2)
          {
            goto LABEL_60;
          }

          v41 = *(a5 + 16);
          v40 = *(a5 + 24);
          v7 = v40 - v41;
          if (__OFSUB__(v40, v41))
          {
LABEL_91:
            __break(1u);
            goto LABEL_92;
          }

          if (v7 >= 0xFFFFFFFF80000000)
          {
            if (v7 <= 0x7FFFFFFF)
            {
              goto LABEL_65;
            }

            __break(1u);
LABEL_60:
            LODWORD(v7) = 0;
            goto LABEL_65;
          }

          goto LABEL_86;
        }

LABEL_85:
        __break(1u);
LABEL_86:
        __break(1u);
        goto LABEL_87;
      }

      if (!v23)
      {
LABEL_32:
        LODWORD(v7) = BYTE6(a6);
LABEL_65:
        if (qword_280B23D90 != -1)
        {
          v51 = a1;
          swift_once();
          a1 = v51;
        }

        v42 = qword_280B23DD0;
        v44 = a4;
        v43 = v18;
        goto LABEL_68;
      }

      v7 = (HIDWORD(a5) - a5);
      if (!__OFSUB__(HIDWORD(a5), a5))
      {
        goto LABEL_65;
      }

      __break(1u);
LABEL_23:
      v24 = a1;
      if (a1 > a1 >> 32)
      {
        __break(1u);
        goto LABEL_72;
      }

      v18 = sub_21AF49580();
      if (!v18)
      {
LABEL_27:
        sub_21AF49590();
        v26 = *a3;
        v27 = a3[1];
        v28 = swift_getObjectType();
        a1 = (*(v27 + 24))(v28, v27);
        if (v7)
        {
          goto LABEL_70;
        }

        if (a4 >= 0xFFFFFFFF80000000)
        {
          if (a4 <= 0x7FFFFFFF)
          {
            v29 = a6 >> 62;
            if ((a6 >> 62) <= 1)
            {
              if (!v29)
              {
                goto LABEL_32;
              }

              LODWORD(v7) = HIDWORD(a5) - a5;
              if (!__OFSUB__(HIDWORD(a5), a5))
              {
                goto LABEL_65;
              }

LABEL_92:
              __break(1u);
            }

            goto LABEL_55;
          }

          goto LABEL_84;
        }

        goto LABEL_81;
      }

      v25 = sub_21AF495A0();
      if (!__OFSUB__(v24, v25))
      {
        v18 += v24 - v25;
        goto LABEL_27;
      }

      goto LABEL_74;
    }

    memset(v52, 0, 14);
    v30 = *a3;
    v31 = a3[1];
    v32 = swift_getObjectType();
    a1 = (*(v31 + 24))(v32, v31);
    if (v7)
    {
      goto LABEL_70;
    }

    if (a4 < 0xFFFFFFFF80000000)
    {
      goto LABEL_76;
    }

    if (a4 > 0x7FFFFFFF)
    {
LABEL_79:
      __break(1u);
      goto LABEL_80;
    }

    v33 = a6 >> 62;
    if ((a6 >> 62) <= 1)
    {
      if (v33)
      {
        LODWORD(v7) = HIDWORD(a5) - a5;
        if (!__OFSUB__(HIDWORD(a5), a5))
        {
          goto LABEL_62;
        }

        goto LABEL_89;
      }

LABEL_38:
      LODWORD(v7) = BYTE6(a6);
      goto LABEL_62;
    }

    goto LABEL_44;
  }

  if (v12)
  {
    goto LABEL_23;
  }

  v52[0] = a1;
  LOWORD(v52[1]) = a2;
  BYTE2(v52[1]) = BYTE2(a2);
  BYTE3(v52[1]) = BYTE3(a2);
  BYTE4(v52[1]) = BYTE4(a2);
  BYTE5(v52[1]) = BYTE5(a2);
  v13 = *a3;
  v14 = a3[1];
  v15 = swift_getObjectType();
  a1 = (*(v14 + 24))(v15, v14);
  if (v6)
  {
    goto LABEL_70;
  }

  if (a4 < 0xFFFFFFFF80000000)
  {
    goto LABEL_75;
  }

  if (a4 > 0x7FFFFFFF)
  {
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  v16 = a6 >> 62;
  if ((a6 >> 62) > 1)
  {
    if (v16 != 2)
    {
      goto LABEL_49;
    }

    v35 = *(a5 + 16);
    v34 = *(a5 + 24);
    v7 = v34 - v35;
    if (__OFSUB__(v34, v35))
    {
LABEL_87:
      __break(1u);
      goto LABEL_88;
    }

    if (v7 < 0xFFFFFFFF80000000)
    {
      goto LABEL_82;
    }

    LODWORD(v33) = 0x7FFFFFFF;
    if (v7 <= 0x7FFFFFFF)
    {
      goto LABEL_62;
    }

    __break(1u);
LABEL_44:
    if (v33 == 2)
    {
      v37 = *(a5 + 16);
      v36 = *(a5 + 24);
      v7 = v36 - v37;
      if (__OFSUB__(v36, v37))
      {
LABEL_88:
        __break(1u);
LABEL_89:
        __break(1u);
LABEL_90:
        __break(1u);
        goto LABEL_91;
      }

      if (v7 < 0xFFFFFFFF80000000)
      {
        goto LABEL_83;
      }

      if (v7 <= 0x7FFFFFFF)
      {
        goto LABEL_62;
      }

      __break(1u);
    }

LABEL_49:
    LODWORD(v7) = 0;
    goto LABEL_62;
  }

  if (!v16)
  {
    goto LABEL_38;
  }

  v12 = HIDWORD(a5);
  v7 = (HIDWORD(a5) - a5);
  if (__OFSUB__(HIDWORD(a5), a5))
  {
    __break(1u);
    goto LABEL_11;
  }

LABEL_62:
  if (qword_280B23D90 != -1)
  {
LABEL_72:
    v50 = a1;
    swift_once();
    a1 = v50;
  }

  v42 = qword_280B23DD0;
  v43 = v52;
  v44 = a4;
LABEL_68:
  v45 = sqlite3_bind_blob(a1, v44, v43, v7, v42);
  if (v45)
  {
    v46 = v45;
    sub_21AF23A54();
    swift_allocError();
    *v47 = v46;
    *(v47 + 8) = 0xD000000000000013;
    *(v47 + 16) = 0x800000021AF4A6F0;
    *(v47 + 24) = 0;
    swift_willThrow();
  }

LABEL_70:
  sub_21AF2C5C8(a3);
  result = sub_21AF2C61C(a5, a6);
  v49 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_21AF2C54C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_21AF2C61C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t Bool.init(with:column:)(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = a1[1];
  ObjectType = swift_getObjectType();
  v7 = (*(v5 + 24))(ObjectType, v5);
  result = swift_unknownObjectRelease();
  if (v2)
  {
    return v9;
  }

  if (a2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (a2 <= 0x7FFFFFFF)
  {
    return sqlite3_column_int(v7, a2) != 0;
  }

  __break(1u);
  return result;
}

uint64_t sub_21AF2C73C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, BOOL *a3@<X8>)
{
  v6 = *a1;
  v7 = a1[1];
  ObjectType = swift_getObjectType();
  v9 = (*(v7 + 24))(ObjectType, v7);
  result = swift_unknownObjectRelease();
  if (!v3)
  {
    if (a2 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (a2 <= 0x7FFFFFFF)
    {
      result = sqlite3_column_int(v9, a2);
      *a3 = result != 0;
      return result;
    }

    __break(1u);
  }

  return result;
}

void Float.init(with:column:)(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = a1[1];
  ObjectType = swift_getObjectType();
  v7 = (*(v5 + 24))(ObjectType, v5);
  swift_unknownObjectRelease();
  if (!v2)
  {
    if (a2 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (a2 <= 0x7FFFFFFF)
    {
      sqlite3_column_double(v7, a2);
      return;
    }

    __break(1u);
  }
}

void sub_21AF2C898(uint64_t *a1@<X0>, uint64_t a2@<X1>, float *a3@<X8>)
{
  v6 = *a1;
  v7 = a1[1];
  ObjectType = swift_getObjectType();
  v9 = (*(v7 + 24))(ObjectType, v7);
  swift_unknownObjectRelease();
  if (!v3)
  {
    if (a2 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (a2 <= 0x7FFFFFFF)
    {
      v10 = sqlite3_column_double(v9, a2);
      *a3 = v10;
      return;
    }

    __break(1u);
  }
}

void Double.init(with:column:)(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = a1[1];
  ObjectType = swift_getObjectType();
  v7 = (*(v5 + 24))(ObjectType, v5);
  swift_unknownObjectRelease();
  if (!v2)
  {
    if (a2 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (a2 <= 0x7FFFFFFF)
    {
      sqlite3_column_double(v7, a2);
      return;
    }

    __break(1u);
  }
}

void sub_21AF2C9EC(uint64_t *a1@<X0>, uint64_t a2@<X1>, double *a3@<X8>)
{
  v6 = *a1;
  v7 = a1[1];
  ObjectType = swift_getObjectType();
  v9 = (*(v7 + 24))(ObjectType, v7);
  swift_unknownObjectRelease();
  if (!v3)
  {
    if (a2 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (a2 <= 0x7FFFFFFF)
    {
      *a3 = sqlite3_column_double(v9, a2);
      return;
    }

    __break(1u);
  }
}

uint64_t RawRepresentable<>.init(with:column:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v30 = a6;
  v11 = sub_21AF49990();
  v31 = *(v11 - 8);
  v12 = *(v31 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v30 - v13;
  v32 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v33 = *(AssociatedTypeWitness - 8);
  v16 = *(v33 + 64);
  v17 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v30 - v20;
  v34 = *a1;
  v22 = v35;
  result = (*(a5 + 16))(&v34, a2, AssociatedTypeWitness, a5);
  if (!v22)
  {
    v24 = v31;
    v35 = 0;
    v25 = v33;
    (*(v33 + 16))(v19, v21, AssociatedTypeWitness);
    sub_21AF49880();
    v26 = *(a3 - 8);
    if ((*(v26 + 48))(v14, 1, a3) == 1)
    {
      (*(v24 + 8))(v14, v11);
      *&v34 = 0;
      *(&v34 + 1) = 0xE000000000000000;
      sub_21AF49A60();
      MEMORY[0x21CEE5D10](0xD000000000000011, 0x800000021AF4A710);
      v27 = sub_21AF49C50();
      MEMORY[0x21CEE5D10](v27);

      MEMORY[0x21CEE5D10](0xD000000000000018, 0x800000021AF4A730);
      sub_21AF49B80();
      v28 = v34;
      sub_21AF23A54();
      swift_allocError();
      *v29 = v28;
      *(v29 + 16) = 0;
      *(v29 + 24) = 4;
      swift_willThrow();
      return (*(v25 + 8))(v21, AssociatedTypeWitness);
    }

    else
    {
      (*(v25 + 8))(v21, AssociatedTypeWitness);
      return (*(v26 + 32))(v30, v14, a3);
    }
  }

  return result;
}

uint64_t sub_21AF2CE48(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v4 + 32);
  *(v4 + 24) = v3;
  *(v4 + 32) = v2;
}

uint64_t sub_21AF2CEA8()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t SQLiteScalarUDF.__allocating_init()()
{
  v0 = swift_allocObject();
  swift_weakInit();
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  return v0;
}

uint64_t SQLiteScalarUDF.init()()
{
  swift_weakInit();
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  return v0;
}

uint64_t sub_21AF2CF98(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = result;
    swift_beginAccess();
    v7 = v3[4];
    v3[3] = v6;
    v3[4] = a2;

    v9 = (*(*v3 + 152))(v8);
    v10 = (*(*v3 + 160))();
    v11 = sub_21AF49720();

    function_v2 = sqlite3_create_function_v2(v4, (v11 + 32), v9, v10, v3, sub_21AF2D454, 0, 0, sub_21AF2D564);

    if (function_v2)
    {
      sub_21AF49A60();

      v13 = sub_21AF49B60();
      MEMORY[0x21CEE5D10](v13);

      v14 = sub_21AF33EB8(0xD00000000000001DLL, 0x800000021AF4A750);
      v16 = v15;

      sub_21AF23A54();
      swift_allocError();
      *v17 = function_v2;
      *(v17 + 8) = v14;
      *(v17 + 16) = v16;
      *(v17 + 24) = 0;
      return swift_willThrow();
    }
  }

  return result;
}

void sub_21AF2D194(sqlite3_context *a1)
{
  if (a1)
  {
    if (sqlite3_user_data(a1))
    {

      v3 = MEMORY[0x28223BE20](v2);
      (*(*v3 + 176))(sub_21AF2DDEC);
    }

    else
    {

      sqlite3_result_error(a1, "Cannot bind to function instance.", -1);
    }
  }
}

uint64_t sub_21AF2D2E4(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  v13 = a2;
  if (!a3)
  {
    sub_21AF23A54();
    swift_allocError();
    *v11 = xmmword_21AF4B4C0;
    *(v11 + 16) = 0;
    *(v11 + 24) = 4;
    return swift_willThrow();
  }

  if (a4 < 0)
  {
    goto LABEL_15;
  }

  v4 = result;
  v5 = a4;
  if (a4)
  {
    result = sub_21AF498A0();
    v7 = result;
    v8 = 0;
    *(result + 16) = v5;
    while (1)
    {
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v10 = *(a3 + 8 * v8);
      if (!v10)
      {
        sub_21AF23A54();
        swift_allocError();
        *v12 = xmmword_21AF4B4B0;
        *(v12 + 16) = 0;
        *(v12 + 24) = 4;
        swift_willThrow();
        *(v7 + 16) = 0;
      }

      *(result + 8 * v8++ + 32) = v10;
      if (v9 == v5)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
    return result;
  }

  v7 = MEMORY[0x277D84F90];
LABEL_11:
  *(v7 + 16) = v5;
  (*(*v4 + 168))(&v13, v7);
}

void sub_21AF2D458(uint64_t a1)
{
  if (a1)
  {
  }

  else
  {
    if (qword_27CD3ECD8 != -1)
    {
      swift_once();
    }

    v1 = sub_21AF49690();
    __swift_project_value_buffer(v1, qword_27CD3F1A8);
    oslog = sub_21AF49670();
    v2 = sub_21AF49980();
    if (os_log_type_enabled(oslog, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&dword_21AF22000, oslog, v2, "Missing function object", v3, 2u);
      MEMORY[0x21CEE68E0](v3, -1, -1);
    }
  }
}

uint64_t sub_21AF2D568(uint64_t result)
{
  v2 = *(result + 16);
  if (v2)
  {
    result = swift_beginAccess();
    if (v1[4])
    {
      v3 = v1[3];
      v4 = *(*v1 + 152);
      v5 = v1[4];

      v7 = v4(v6);
      v8 = (*(*v1 + 160))();
      v9 = sub_21AF49720();

      function = sqlite3_create_function(v2, (v9 + 32), v7, v8, 0, nullsub_2, 0, 0);

      if (function)
      {
        sub_21AF49A60();

        v11 = sub_21AF49B60();
        MEMORY[0x21CEE5D10](v11);

        v12 = sub_21AF33EB8(0xD000000000000020, 0x800000021AF4A770);
        v14 = v13;

        sub_21AF23A54();
        swift_allocError();
        *v15 = function;
        *(v15 + 8) = v12;
        *(v15 + 16) = v14;
        *(v15 + 24) = 0;
        return swift_willThrow();
      }
    }
  }

  return result;
}

uint64_t SQLiteScalarUDF.deinit()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 32);
  if (v2)
  {
    v3 = *(v0 + 24);
    v4 = qword_27CD3ECD8;

    if (v4 != -1)
    {
      swift_once();
    }

    v5 = sub_21AF49690();
    __swift_project_value_buffer(v5, qword_27CD3F1A8);

    v6 = sub_21AF49670();
    v7 = sub_21AF49960();

    if (!os_log_type_enabled(v6, v7))
    {

      goto LABEL_12;
    }

    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v8 = 136315138;
    v10 = sub_21AF39910(v3, v2, &v17);

    *(v8 + 4) = v10;
    _os_log_impl(&dword_21AF22000, v6, v7, "Destroying %s function", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x21CEE68E0](v9, -1, -1);
    v11 = v8;
    goto LABEL_10;
  }

  if (qword_27CD3ECD8 != -1)
  {
    swift_once();
  }

  v12 = sub_21AF49690();
  __swift_project_value_buffer(v12, qword_27CD3F1A8);
  v6 = sub_21AF49670();
  v13 = sub_21AF49960();
  if (os_log_type_enabled(v6, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_21AF22000, v6, v13, "Destroying unregistered function", v14, 2u);
    v11 = v14;
LABEL_10:
    MEMORY[0x21CEE68E0](v11, -1, -1);
  }

LABEL_12:

  swift_weakDestroy();
  v15 = *(v1 + 32);

  return v1;
}

uint64_t SQLiteScalarUDF.__deallocating_deinit()
{
  SQLiteScalarUDF.deinit();

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

void sub_21AF2D9C8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_27CD3ECD8 != -1)
  {
    swift_once();
  }

  v5 = sub_21AF49690();
  __swift_project_value_buffer(v5, qword_27CD3F1A8);

  oslog = sub_21AF49670();
  v6 = sub_21AF49960();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136315650;
    swift_beginAccess();
    if (*(v3 + 32))
    {
      v9 = *(v3 + 24);
      v10 = *(v3 + 32);
    }

    else
    {
      v10 = 0xE90000000000003ELL;
      v9 = 0x6E776F6E6B6E753CLL;
    }

    v11 = sub_21AF39910(v9, v10, &v16);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2048;
    *(v7 + 14) = a2;
    *(v7 + 22) = 2080;
    v12 = sub_21AF49700();
    v14 = sub_21AF39910(v12, v13, &v16);

    *(v7 + 24) = v14;
    _os_log_impl(&dword_21AF22000, oslog, v6, "Function %s received %ld parameter: %s", v7, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x21CEE68E0](v8, -1, -1);
    MEMORY[0x21CEE68E0](v7, -1, -1);
  }

  else
  {
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SQLiteSchemaDescribing.ensureValidSQLNameCharacters()()
{
  v2 = (*(v0 + 16))();
  v3 = v2;
  v4 = *(v2 + 16);
  if (v4)
  {
    v5 = 0;
    v6 = v2 + 32;
    while (v5 < *(v3 + 16))
    {
      sub_21AF27430(v6, v9);
      v8 = v10;
      v7 = v11;
      __swift_project_boxed_opaque_existential_1(v9, v10);
      (*(*(v7 + 8) + 8))(v8);
      if (v1)
      {

        __swift_destroy_boxed_opaque_existential_1(v9);
        return;
      }

      ++v5;
      __swift_destroy_boxed_opaque_existential_1(v9);
      v6 += 40;
      if (v4 == v5)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:
  }
}

uint64_t SQLiteSchema.columns.getter(void *a1)
{
  v2 = a1[2];
  v1 = a1[3];
  v3 = a1[4];
  v4 = a1[5];
  return sub_21AF2DF48();
}

uint64_t sub_21AF2DF18(void *a1)
{
  v2 = a1[2];
  v1 = a1[3];
  v3 = a1[4];
  v4 = a1[5];
  return sub_21AF2DF48();
}

uint64_t sub_21AF2DF48()
{
  sub_21AF49A70();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD3EFC0, &qword_21AF4B6D8);
  v0 = sub_21AF49AE0();

  return v0;
}

uint64_t getEnumTagSinglePayload for SQLiteUndefined(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for SQLiteUndefined(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t _s12PoirotSQLite0B5ErrorO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  LODWORD(v6) = *(a1 + 24);
  v7 = *a2;
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  v10 = *(a2 + 24);
  v47[0] = v3;
  v47[1] = v4;
  v47[2] = v5;
  v48 = v6;
  v49 = v7;
  v50 = v8;
  v51 = v9;
  v52 = v10;
  if (v6 <= 4)
  {
    if (v6 <= 1)
    {
      if (v6)
      {
        if (v10 == 1)
        {
          if (v3 == v7 && v4 == v8)
          {
            LOBYTE(v6) = 1;
            v11 = v3;
            v12 = v4;
            v13 = 1;
            goto LABEL_53;
          }

          v38 = v7;
          v39 = v8;
          v40 = v9;
          v14 = sub_21AF49BA0();
          LOBYTE(v6) = 1;
          v19 = v38;
          v20 = v39;
          v21 = v40;
          v22 = 1;
          goto LABEL_70;
        }
      }

      else if (!v10)
      {
        if (v3 == v7)
        {
          if (v4 == v8 && v5 == v9)
          {
            sub_21AF2E804(v7, v4, v5, 0);
            LOBYTE(v6) = 0;
            v14 = 1;
          }

          else
          {
            v6 = v7;
            v44 = v8;
            v45 = v9;
            v14 = sub_21AF49BA0();
            sub_21AF2E804(v6, v44, v45, 0);
            LOBYTE(v6) = 0;
          }

          goto LABEL_119;
        }

        sub_21AF2E804(v7, v8, v9, 0);
        LOBYTE(v6) = 0;
        goto LABEL_118;
      }
    }

    else if (v6 == 2)
    {
      if (v10 == 2)
      {
        if (v3 == v7 && v4 == v8)
        {
          LOBYTE(v6) = 2;
          v11 = v3;
          v12 = v4;
          v13 = 2;
          goto LABEL_53;
        }

        v16 = v7;
        v17 = v8;
        v18 = v9;
        v14 = sub_21AF49BA0();
        LOBYTE(v6) = 2;
        v19 = v16;
        v20 = v17;
        v21 = v18;
        v22 = 2;
        goto LABEL_70;
      }
    }

    else if (v6 == 3)
    {
      if (v10 == 3)
      {
        if (v3 == v7 && v4 == v8)
        {
          LOBYTE(v6) = 3;
          v11 = v3;
          v12 = v4;
          v13 = 3;
LABEL_53:
          sub_21AF2E804(v11, v12, v9, v13);
          v14 = 1;
LABEL_119:
          sub_21AF2E804(v3, v4, v5, v6);
          goto LABEL_120;
        }

        v26 = v7;
        v27 = v8;
        v28 = v9;
        v14 = sub_21AF49BA0();
        LOBYTE(v6) = 3;
        v19 = v26;
        v20 = v27;
        v21 = v28;
        v22 = 3;
        goto LABEL_70;
      }
    }

    else if (v10 == 4)
    {
      if (v3 == v7 && v4 == v8)
      {
        LOBYTE(v6) = 4;
        v11 = v3;
        v12 = v4;
        v13 = 4;
        goto LABEL_53;
      }

      v32 = v7;
      v33 = v8;
      v34 = v9;
      v14 = sub_21AF49BA0();
      LOBYTE(v6) = 4;
      v19 = v32;
      v20 = v33;
      v21 = v34;
      v22 = 4;
      goto LABEL_70;
    }

    goto LABEL_117;
  }

  if (v6 <= 6)
  {
    if (v6 == 5)
    {
      if (v10 == 5)
      {
        if (v3 == v7 && v4 == v8)
        {
          LOBYTE(v6) = 5;
          v11 = v3;
          v12 = v4;
          v13 = 5;
          goto LABEL_53;
        }

        v35 = v7;
        v36 = v8;
        v37 = v9;
        v14 = sub_21AF49BA0();
        LOBYTE(v6) = 5;
        v19 = v35;
        v20 = v36;
        v21 = v37;
        v22 = 5;
        goto LABEL_70;
      }
    }

    else if (v10 == 6)
    {
      if (v3 == v7 && v4 == v8)
      {
        LOBYTE(v6) = 6;
        v11 = v3;
        v12 = v4;
        v13 = 6;
        goto LABEL_53;
      }

      v41 = v7;
      v42 = v8;
      v43 = v9;
      v14 = sub_21AF49BA0();
      LOBYTE(v6) = 6;
      v19 = v41;
      v20 = v42;
      v21 = v43;
      v22 = 6;
      goto LABEL_70;
    }

    goto LABEL_117;
  }

  if (v6 == 7)
  {
    if (v10 == 7)
    {
      if (v3 == v7 && v4 == v8)
      {
        LOBYTE(v6) = 7;
        v11 = v3;
        v12 = v4;
        v13 = 7;
        goto LABEL_53;
      }

      v23 = v7;
      v24 = v8;
      v25 = v9;
      v14 = sub_21AF49BA0();
      LOBYTE(v6) = 7;
      v19 = v23;
      v20 = v24;
      v21 = v25;
      v22 = 7;
      goto LABEL_70;
    }

    goto LABEL_117;
  }

  if (v6 == 8)
  {
    if (v10 == 8)
    {
      if (v3 == v7 && v4 == v8)
      {
        LOBYTE(v6) = 8;
        v11 = v3;
        v12 = v4;
        v13 = 8;
        goto LABEL_53;
      }

      v29 = v7;
      v30 = v8;
      v31 = v9;
      v14 = sub_21AF49BA0();
      LOBYTE(v6) = 8;
      v19 = v29;
      v20 = v30;
      v21 = v31;
      v22 = 8;
LABEL_70:
      sub_21AF2E804(v19, v20, v21, v22);
      goto LABEL_119;
    }

    goto LABEL_117;
  }

  v15 = v5 | v4;
  if (v5 | v4 | v3)
  {
    if (v3 != 1 || v15)
    {
      if (v3 != 2 || v15)
      {
        if (v3 != 3 || v15)
        {
          if (v3 != 4 || v15)
          {
            if (v3 != 5 || v15)
            {
              if (v3 != 6 || v15)
              {
                if (v3 != 7 || v15)
                {
                  if (v3 != 8 || v15)
                  {
                    if (v3 != 9 || v15)
                    {
                      if (v3 != 10 || v15)
                      {
                        if (v10 != 9 || v7 != 11)
                        {
                          goto LABEL_117;
                        }
                      }

                      else if (v10 != 9 || v7 != 10)
                      {
                        goto LABEL_117;
                      }
                    }

                    else if (v10 != 9 || v7 != 9)
                    {
                      goto LABEL_117;
                    }
                  }

                  else if (v10 != 9 || v7 != 8)
                  {
                    goto LABEL_117;
                  }
                }

                else if (v10 != 9 || v7 != 7)
                {
                  goto LABEL_117;
                }
              }

              else if (v10 != 9 || v7 != 6)
              {
                goto LABEL_117;
              }
            }

            else if (v10 != 9 || v7 != 5)
            {
              goto LABEL_117;
            }
          }

          else if (v10 != 9 || v7 != 4)
          {
            goto LABEL_117;
          }
        }

        else if (v10 != 9 || v7 != 3)
        {
          goto LABEL_117;
        }
      }

      else if (v10 != 9 || v7 != 2)
      {
        goto LABEL_117;
      }
    }

    else if (v10 != 9 || v7 != 1)
    {
      goto LABEL_117;
    }

    if (v9 | v8)
    {
LABEL_117:
      sub_21AF2E804(v7, v8, v9, v10);
LABEL_118:
      v14 = 0;
      goto LABEL_119;
    }
  }

  else if (v10 != 9 || v9 | v8 | v7)
  {
    goto LABEL_117;
  }

  v14 = 1;
LABEL_120:
  sub_21AF2E890(v47);
  return v14 & 1;
}

uint64_t get_enum_tag_for_layout_string_12PoirotSQLite0B5ErrorO(uint64_t a1)
{
  if ((*(a1 + 24) & 0xFu) <= 8)
  {
    return *(a1 + 24) & 0xF;
  }

  else
  {
    return (*a1 + 9);
  }
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_21AF2E748(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF7 && *(a1 + 25))
  {
    return (*a1 + 247);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_21AF2E790(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF6)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 247;
    if (a3 >= 0xF7)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF7)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_21AF2E7D8(uint64_t result, unsigned int a2)
{
  v2 = a2 - 9;
  if (a2 >= 9)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    LOBYTE(a2) = 9;
    *result = v2;
  }

  *(result + 24) = a2;
  return result;
}

uint64_t sub_21AF2E804(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 <= 3u)
  {
    if (a4 >= 4u)
    {
      return result;
    }
  }

  if (a4 > 5u)
  {
    if (a4 != 6 && a4 != 7 && a4 != 8)
    {
      return result;
    }
  }

  if (a4 == 4 || a4 == 5)
  {
  }

  return result;
}

uint64_t sub_21AF2E890(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD3EFC8, &qword_21AF4B8C8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21AF2E8F8(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v36 = a8;
  v45 = a1;
  v46 = a2;
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](a1);
  v47 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v49 = *(AssociatedTypeWitness - 8);
  v16 = *(v49 + 64);
  v17 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v19 = &v34 - v18;
  v20 = *(*(a4 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v43 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_getAssociatedTypeWitness();
  v37 = *(v22 - 8);
  v38 = v22;
  v23 = *(v37 + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v34 - v24;
  v26 = sub_21AF49900();
  if (!v26)
  {
    return sub_21AF49890();
  }

  v48 = v26;
  v52 = sub_21AF49AC0();
  v39 = sub_21AF49AD0();
  sub_21AF49AA0();
  result = sub_21AF498F0();
  if ((v48 & 0x8000000000000000) == 0)
  {
    v34 = v11;
    v35 = a5;
    v28 = 0;
    v40 = (v49 + 16);
    v41 = (v49 + 8);
    v42 = v8;
    while (!__OFADD__(v28, 1))
    {
      v49 = v28 + 1;
      v29 = sub_21AF49940();
      v30 = v19;
      v31 = v19;
      v32 = AssociatedTypeWitness;
      (*v40)(v30);
      v29(v51, 0);
      v33 = v50;
      v45(v31, v47);
      if (v33)
      {
        (*v41)(v31, v32);
        (*(v37 + 8))(v25, v38);

        return (*(v34 + 32))(v36, v47, v35);
      }

      v50 = 0;
      (*v41)(v31, v32);
      sub_21AF49AB0();
      result = sub_21AF49910();
      ++v28;
      v19 = v31;
      if (v49 == v48)
      {
        (*(v37 + 8))(v25, v38);
        return v52;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void SQLiteStatement.nextRowValue<A>()(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v8 = *(v3 + 2);
  v9 = *(v3 + 3);
  v10 = *(v3 + 48);
  v11 = *v3;
  v12 = v8;
  v13 = v9;
  v14 = v3[2];
  v15 = v10;
  SQLiteStatement.nextRow()(&v16);
  if (!v4)
  {
    if (v16)
    {
      v11 = v16;
      (*(a2 + 8))(&v11, a1, a2);
      (*(*(a1 - 8) + 56))(a3, 0, 1, a1);
    }

    else
    {
      (*(*(a1 - 8) + 56))(a3, 1, 1, a1);
    }
  }
}

uint64_t SQLiteStatement.singleRowIfAny<A>()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  return sub_21AF2EFE4(a1, a2, sub_21AF2FB90, a3);
}

{
  return sub_21AF2EFE4(a1, a2, sub_21AF2FBB0, a3);
}

uint64_t sub_21AF2EE50(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_21AF49990();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v16 - v12;
  v16 = *a1;
  v14 = *(a4 + 8);
  swift_unknownObjectRetain();
  result = v14(&v16, a3, a4);
  if (!v4)
  {
    (*(*(a3 - 8) + 56))(v13, 0, 1, a3);
    return (*(v10 + 40))(a2, v13, v9);
  }

  return result;
}

uint64_t sub_21AF2EFE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t *)@<X2>, uint64_t a4@<X8>)
{
  v11 = *(v4 + 2);
  v10 = *(v4 + 3);
  (*(*(a1 - 8) + 56))(a4, 1, 1, a1);
  v18 = *v4;
  v19 = v11;
  v20 = v10;
  v21 = xmmword_21AF4B8D0;
  v22 = 0;
  v15 = a1;
  v16 = a2;
  v17 = a4;

  swift_unknownObjectRetain();
  SQLiteStatement.forEach(_:)(a3, v14);

  if (!v5)
  {
    return swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();
  v12 = sub_21AF49990();
  return (*(*(v12 - 8) + 8))(a4, v12);
}

uint64_t sub_21AF2F134(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_21AF49990();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v16 - v12;
  v16 = *a1;
  v14 = *(a4 + 8);
  swift_unknownObjectRetain();
  result = v14(&v16, a3, a4);
  if (!v4)
  {
    return (*(v10 + 40))(a2, v13, v9);
  }

  return result;
}

uint64_t SQLiteStatement.singleRow<A>()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  return sub_21AF2F2BC(a1, a2, SQLiteStatement.singleRowIfAny<A>(), a3);
}

{
  return sub_21AF2F2BC(a1, a2, SQLiteStatement.singleRowIfAny<A>(), a3);
}

uint64_t sub_21AF2F2BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t, uint64_t)@<X2>, uint64_t a4@<X8>)
{
  v31 = a4;
  v9 = sub_21AF49990();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v26 - v15;
  v17 = *(v4 + 2);
  v18 = *(v4 + 3);
  v19 = *(v4 + 48);
  v26 = *v4;
  v27 = v17;
  v28 = v18;
  v29 = v4[2];
  v30 = v19;
  result = a3(a1, a2);
  if (!v5)
  {
    v21 = v31;
    (*(v10 + 16))(v14, v16, v9);
    v22 = *(a1 - 8);
    v23 = (*(v22 + 48))(v14, 1, a1);
    v24 = *(v10 + 8);
    if (v23 == 1)
    {
      v24(v14, v9);
      sub_21AF23A54();
      swift_allocError();
      *(v25 + 8) = 0;
      *(v25 + 16) = 0;
      *v25 = 5;
      *(v25 + 24) = 9;
      swift_willThrow();
      return (v24)(v16, v9);
    }

    else
    {
      v24(v16, v9);
      return (*(v22 + 32))(v21, v14, a1);
    }
  }

  return result;
}

uint64_t sub_21AF2F534(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(*(a3 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  v12 = *v8;
  v10 = *(v9 + 8);
  swift_unknownObjectRetain();
  result = v10(&v12, a3, a4);
  if (!v4)
  {
    sub_21AF498D0();
    return sub_21AF498C0();
  }

  return result;
}

uint64_t sub_21AF2F63C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 2);
  v9 = *(v3 + 3);
  v10 = *(v3 + 48);
  v15 = *v3;
  v16 = v8;
  v17 = v9;
  v18 = v3[2];
  v19 = v10;
  v14 = sub_21AF49890();
  v13[2] = a1;
  v13[3] = a2;
  v11 = sub_21AF498D0();
  SQLiteStatement.reduce<A>(into:handleRow:)(&v14, a3, v13, v11, &v20);
  if (v4)
  {
  }

  return v20;
}

uint64_t sub_21AF2F704(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v25 = a1;
  v7 = sub_21AF49990();
  v24 = *(v7 - 8);
  v8 = *(v24 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v23 - v10;
  v26 = *(a3 - 8);
  v12 = *(v26 + 64);
  v13 = MEMORY[0x28223BE20](v9);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v23 - v16;
  v27 = *a2;
  v18 = *(a4 + 8);
  swift_unknownObjectRetain();
  v19 = v28;
  result = v18(&v27, a3, a4);
  if (!v19)
  {
    v21 = v24;
    v22 = v26;
    if ((*(v26 + 48))(v11, 1, a3) == 1)
    {
      return (*(v21 + 8))(v11, v7);
    }

    else
    {
      (*(v22 + 32))(v17, v11, a3);
      (*(v22 + 16))(v15, v17, a3);
      sub_21AF498D0();
      sub_21AF498C0();
      return (*(v22 + 8))(v17, a3);
    }
  }

  return result;
}

uint64_t Array<A>.init(with:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v7 = a1[1];
  ObjectType = swift_getObjectType();
  v9 = v6;
  v10 = (*(v7 + 24))(ObjectType, v7);
  if (v3)
  {
    swift_unknownObjectRelease();
    return v9;
  }

  result = sqlite3_column_count(v10);
  if ((result & 0x80000000) == 0)
  {
    v16[1] = 0;
    v16[2] = result;
    MEMORY[0x28223BE20](result);
    v15[2] = a2;
    v15[3] = a3;
    v15[4] = v6;
    v15[5] = v7;
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD3EFD0, &qword_21AF4B8E0);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD3ED88, &qword_21AF4B158);
    v14 = sub_21AF2FC2C();
    v9 = sub_21AF2E8F8(sub_21AF2FC08, v15, v12, a2, v13, v14, MEMORY[0x277D84950], v16);
    swift_unknownObjectRelease();
    return v9;
  }

  __break(1u);
  return result;
}

uint64_t sub_21AF2FACC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v13[1] = a3;
  v10 = *a1;
  v13[0] = a2;
  v11 = *(a5 + 16);
  swift_unknownObjectRetain();
  result = v11(v13, v10, a4, a5);
  if (v6)
  {
    *a6 = v6;
  }

  return result;
}

uint64_t sub_21AF2FB5C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = Array<A>.init(with:)(a1, *(a2 + 16), *(a3 - 8));
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

unint64_t sub_21AF2FC2C()
{
  result = qword_27CD3EFD8;
  if (!qword_27CD3EFD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD3EFD0, &qword_21AF4B8E0);
    sub_21AF2FCB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD3EFD8);
  }

  return result;
}

unint64_t sub_21AF2FCB8()
{
  result = qword_27CD3EFE0;
  if (!qword_27CD3EFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD3EFE0);
  }

  return result;
}

uint64_t SQLiteSyntaxError.Info.line.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

PoirotSQLite::SQLiteSyntaxError::Info __swiftcall SQLiteSyntaxError.Info.init(line:lineNumber:lineOffset:)(Swift::String line, Swift::Int lineNumber, Swift::Int lineOffset)
{
  *v3 = line;
  v3[1]._countAndFlagsBits = lineNumber;
  v3[1]._object = lineOffset;
  result.line = line;
  result.lineOffset = lineOffset;
  result.lineNumber = lineNumber;
  return result;
}

uint64_t sub_21AF2FD58()
{
  result = sub_21AF49770();
  qword_27CD3F1F0 = result;
  return result;
}

uint64_t SQLiteSyntaxError.sqlMessage.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t SQLiteSyntaxError.query.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t SQLiteSyntaxError.errorInfo.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  *a1 = *(v1 + 40);
  *(a1 + 8) = *(v1 + 48);
  *(a1 + 24) = v2;
}

void __swiftcall SQLiteSyntaxError.init(errorCode:sqlMessage:query:info:)(PoirotSQLite::SQLiteSyntaxError *__return_ptr retstr, Swift::Int errorCode, Swift::String sqlMessage, Swift::String query, PoirotSQLite::SQLiteSyntaxError::Info_optional *info)
{
  v5 = *&info->value.lineNumber;
  retstr->errorInfo.value.line = info->value.line;
  retstr->errorCode = errorCode;
  retstr->sqlMessage = sqlMessage;
  retstr->query = query;
  *&retstr->errorInfo.value.lineNumber = v5;
}

void __swiftcall SQLiteSyntaxError.init(errorCode:sqlMessage:query:errorAtOffset:)(PoirotSQLite::SQLiteSyntaxError *__return_ptr retstr, Swift::Int errorCode, Swift::String sqlMessage, Swift::String query, Swift::Int errorAtOffset)
{
  object = query._object;
  countAndFlagsBits = query._countAndFlagsBits;
  v7 = sqlMessage._object;
  v8 = sqlMessage._countAndFlagsBits;
  sub_21AF2FEB4(query._countAndFlagsBits, query._object, errorAtOffset, v13);
  v11 = v13[0];
  v12 = v13[1];
  retstr->errorCode = errorCode;
  retstr->sqlMessage._countAndFlagsBits = v8;
  retstr->sqlMessage._object = v7;
  retstr->query._countAndFlagsBits = countAndFlagsBits;
  retstr->query._object = object;
  retstr->errorInfo.value.line = v11;
  *&retstr->errorInfo.value.lineNumber = v12;
}

unint64_t sub_21AF2FEB4@<X0>(unint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v5 = result;
  v7 = a3 & ~(a3 >> 63);
  v8 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    result = sub_21AF497C0();
    if (result < v7)
    {
LABEL_5:
      *a4 = 0u;
      a4[1] = 0u;
      return result;
    }

    v42 = a4;
    v11 = 4 << ((v5 & 0x800000000000000) != 0);
    v10 = MEMORY[0x21CEE5D70](15, v7, v5, a2);
    if (!(v10 >> 14))
    {
LABEL_7:
      v12 = v5 & 0xFFFFFFFFFFFFLL;
      v13 = v10;
      goto LABEL_42;
    }
  }

  else
  {
    v9 = result & 0xFFFFFFFFFFFFLL;
    if ((a2 & 0x2000000000000000) != 0)
    {
      v9 = HIBYTE(a2) & 0xF;
    }

    if (v9 < a3)
    {
      goto LABEL_5;
    }

    v42 = a4;
    v10 = (v7 << 16) | 4;
    v11 = 8;
    if (!(v10 >> 14))
    {
      goto LABEL_7;
    }
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v14 = v8;
  }

  else
  {
    v14 = v5 & 0xFFFFFFFFFFFFLL;
  }

  v13 = v10;
  do
  {
    while (1)
    {
      v15 = v13;
      if ((v13 & 0xC) == v11)
      {
        v15 = sub_21AF4074C(v13, v5, a2);
        if (v15 < 0x4000)
        {
LABEL_71:
          __break(1u);
LABEL_72:
          __break(1u);
LABEL_73:
          __break(1u);
LABEL_74:
          __break(1u);
LABEL_75:
          __break(1u);
LABEL_76:
          __break(1u);
LABEL_77:
          result = sub_21AF4074C(v13, v5, a2);
          goto LABEL_67;
        }
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        if (v14 < v15 >> 16)
        {
          goto LABEL_74;
        }

        v16 = sub_21AF497E0();
      }

      else
      {
        v16 = (v15 & 0xFFFFFFFFFFFF0000) - 65532;
      }

      if ((v16 & 0xC) == v11)
      {
        v16 = sub_21AF4074C(v16, v5, a2);
      }

      v17 = v16 >> 16;
      if (v16 >> 16 >= v14)
      {
        goto LABEL_72;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v19 = sub_21AF49810();
      }

      else if ((a2 & 0x2000000000000000) != 0)
      {
        v44 = v5;
        v45 = a2 & 0xFFFFFFFFFFFFFFLL;
        v19 = *(&v44 + v17);
      }

      else
      {
        v18 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if ((v5 & 0x1000000000000000) == 0)
        {
          v18 = sub_21AF49A80();
        }

        v19 = *(v18 + v17);
      }

      if (v19 == 10)
      {
        goto LABEL_41;
      }

      if ((v13 & 0xC) == v11)
      {
        break;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        goto LABEL_33;
      }

LABEL_14:
      v13 = (v13 & 0xFFFFFFFFFFFF0000) - 65532;
      if (v13 < 0x4000)
      {
        goto LABEL_41;
      }
    }

    v20 = sub_21AF4074C(v13, v5, a2);
    if (v20 < 0x4000)
    {
      goto LABEL_73;
    }

    v13 = v20;
    if ((a2 & 0x1000000000000000) == 0)
    {
      goto LABEL_14;
    }

LABEL_33:
    if (v14 < v13 >> 16)
    {
      goto LABEL_76;
    }

    v13 = sub_21AF497E0();
  }

  while (v13 >= 0x4000);
LABEL_41:
  v12 = v5 & 0xFFFFFFFFFFFFLL;
LABEL_42:
  if ((a2 & 0x2000000000000000) != 0)
  {
    v14 = v8;
  }

  else
  {
    v14 = v12;
  }

  v21 = 4 * v14;
  if (4 * v14 > v10 >> 14)
  {
    v22 = v10;
    do
    {
      while (1)
      {
        v23 = v22;
        if ((v22 & 0xC) == v11)
        {
          v23 = sub_21AF4074C(v22, v5, a2);
        }

        v24 = v23 >> 16;
        if (v23 >> 16 >= v14)
        {
          __break(1u);
          goto LABEL_71;
        }

        if ((a2 & 0x1000000000000000) != 0)
        {
          v26 = sub_21AF49810();
        }

        else if ((a2 & 0x2000000000000000) != 0)
        {
          v44 = v5;
          v45 = a2 & 0xFFFFFFFFFFFFFFLL;
          v26 = *(&v44 + v24);
        }

        else
        {
          v25 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((v5 & 0x1000000000000000) == 0)
          {
            v25 = sub_21AF49A80();
          }

          v26 = *(v25 + v24);
        }

        if (v26 == 10)
        {
          goto LABEL_66;
        }

        if ((v22 & 0xC) != v11)
        {
          break;
        }

        v22 = sub_21AF4074C(v22, v5, a2);
        if ((a2 & 0x1000000000000000) != 0)
        {
          goto LABEL_61;
        }

LABEL_47:
        v22 = (v22 & 0xFFFFFFFFFFFF0000) + 65540;
        if (v21 <= v22 >> 14)
        {
          goto LABEL_66;
        }
      }

      if ((a2 & 0x1000000000000000) == 0)
      {
        goto LABEL_47;
      }

LABEL_61:
      if (v14 <= v22 >> 16)
      {
        goto LABEL_75;
      }

      v22 = sub_21AF497D0();
    }

    while (v21 > v22 >> 14);
  }

LABEL_66:
  result = v13;
  if ((v13 & 0xC) == v11)
  {
    goto LABEL_77;
  }

LABEL_67:
  if ((v10 & 0xC) != v11)
  {
    if ((a2 & 0x1000000000000000) == 0)
    {
      goto LABEL_69;
    }

LABEL_79:
    if (v14 < result >> 16)
    {
      goto LABEL_115;
    }

    if (v14 >= v10 >> 16)
    {
      v27 = sub_21AF49800();
      goto LABEL_82;
    }

LABEL_116:
    __break(1u);
LABEL_117:
    __break(1u);
    return result;
  }

  v28 = result;
  v10 = sub_21AF4074C(v10, v5, a2);
  result = v28;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_79;
  }

LABEL_69:
  v27 = (v10 >> 16) - (result >> 16);
LABEL_82:
  swift_bridgeObjectRetain_n();
  v29 = sub_21AF49760();
  if (v30 & 1) != 0 || (v31 = v29, , result = sub_21AF49760(), (v32))
  {

    *v42 = 0u;
    v42[1] = 0u;
    return result;
  }

  v43 = result;
  v41 = v27;
  if (v13 >= 0x4000)
  {
    v33 = 1;
    while (1)
    {
      result = v13;
      if ((v13 & 0xC) == v11)
      {
        result = sub_21AF4074C(v13, v5, a2);
      }

      v38 = result >> 16;
      if (result >> 16 >= v14)
      {
        __break(1u);
LABEL_112:
        __break(1u);
LABEL_113:
        __break(1u);
LABEL_114:
        __break(1u);
LABEL_115:
        __break(1u);
        goto LABEL_116;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        result = sub_21AF49810();
      }

      else if ((a2 & 0x2000000000000000) != 0)
      {
        v44 = v5;
        v45 = a2 & 0xFFFFFFFFFFFFFFLL;
        result = *(&v44 + v38);
      }

      else
      {
        v39 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if ((v5 & 0x1000000000000000) == 0)
        {
          v39 = sub_21AF49A80();
        }

        result = *(v39 + v38);
      }

      if (result == 10 && __OFADD__(v33++, 1))
      {
        goto LABEL_113;
      }

      if ((v13 & 0xC) == v11)
      {
        result = sub_21AF4074C(v13, v5, a2);
        if (result < 0x4000)
        {
          goto LABEL_112;
        }

        v13 = result;
        if ((a2 & 0x1000000000000000) == 0)
        {
          goto LABEL_90;
        }

LABEL_105:
        if (v14 < v13 >> 16)
        {
          goto LABEL_114;
        }

        result = sub_21AF497E0();
        v13 = result;
        if (result < 0x4000)
        {
          goto LABEL_87;
        }
      }

      else
      {
        if ((a2 & 0x1000000000000000) != 0)
        {
          goto LABEL_105;
        }

LABEL_90:
        v13 = (v13 & 0xFFFFFFFFFFFF0000) - 65532;
        if (v13 < 0x4000)
        {
          goto LABEL_87;
        }
      }
    }
  }

  v33 = 1;
LABEL_87:
  if (v43 >> 14 < v31 >> 14)
  {
    goto LABEL_117;
  }

  v34 = sub_21AF49860();
  v35 = MEMORY[0x21CEE5CB0](v34);
  v37 = v36;

  *v42 = v35;
  *(v42 + 1) = v37;
  *(v42 + 2) = v33;
  *(v42 + 3) = v41;
  return result;
}

uint64_t SQLiteSyntaxError.description.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  v4 = v0[6];
  if (!v4)
  {
    sub_21AF49A60();

    v14 = sub_21AF49B60();
    MEMORY[0x21CEE5D10](v14);

    MEMORY[0x21CEE5D10](8236, 0xE200000000000000);
    MEMORY[0x21CEE5D10](v1, v3);
    v13 = 0x800000021AF4A830;
    v12 = 0xD000000000000023;
    goto LABEL_9;
  }

  v5 = v0[5];
  v7 = v0[7];
  v6 = v0[8];
  if (v6 < 26)
  {
    sub_21AF49A60();

    v15 = sub_21AF49B60();
    MEMORY[0x21CEE5D10](v15);

    MEMORY[0x21CEE5D10](0x656E696C20746120, 0xE900000000000020);
    v16 = sub_21AF49B60();
    MEMORY[0x21CEE5D10](v16);

    MEMORY[0x21CEE5D10](8236, 0xE200000000000000);
    MEMORY[0x21CEE5D10](v1, v3);
    MEMORY[0x21CEE5D10](10, 0xE100000000000000);
    MEMORY[0x21CEE5D10](v5, v4);
    MEMORY[0x21CEE5D10](10, 0xE100000000000000);
    v17 = sub_21AF49830();
    MEMORY[0x21CEE5D10](v17);

    v12 = 0x727265202D2D2D5ELL;
    v13 = 0xEF6572656820726FLL;
    goto LABEL_9;
  }

  sub_21AF49A60();

  v8 = sub_21AF49B60();
  MEMORY[0x21CEE5D10](v8);

  MEMORY[0x21CEE5D10](0x656E696C20746120, 0xE900000000000020);
  v9 = sub_21AF49B60();
  MEMORY[0x21CEE5D10](v9);

  MEMORY[0x21CEE5D10](8236, 0xE200000000000000);
  MEMORY[0x21CEE5D10](v1, v3);
  MEMORY[0x21CEE5D10](10, 0xE100000000000000);
  MEMORY[0x21CEE5D10](v5, v4);
  result = MEMORY[0x21CEE5D10](10, 0xE100000000000000);
  if (qword_27CD3ECE0 != -1)
  {
    result = swift_once();
  }

  if (!__OFSUB__(v6, qword_27CD3F1F0))
  {
    v11 = sub_21AF49830();
    MEMORY[0x21CEE5D10](v11);

    v12 = 0x656820726F727265;
    v13 = 0xEF5E2D2D2D206572;
LABEL_9:
    MEMORY[0x21CEE5D10](v12, v13);
    return 0x20726F727245;
  }

  __break(1u);
  return result;
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_21AF30884(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_21AF308CC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_21AF30938(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_21AF30980(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SQLiteSchemaDescribing.makeCreateStatementString(for:in:)(Swift::String a1, Swift::String_optional in)
{
  v5 = v3;
  v6 = v2;
  object = in.value._object;
  countAndFlagsBits = in.value._countAndFlagsBits;
  v8 = a1._object;
  v9 = a1._countAndFlagsBits;
  v10 = sub_21AF24E90(a1._countAndFlagsBits, a1._object);
  if (v11)
  {
    v12 = v10;
    v13 = v11;
    v59 = v6;
    v60 = object;
    v14 = sub_21AF24ED8(v9, v8);
    if (!v15)
    {
      goto LABEL_16;
    }

    v16 = v14;
    v17 = v15;
    v57 = v9;
    v58 = v8;
    v56 = v5;
    v61 = v4;
    v64[0] = v12;
    v64[1] = v13;
    if (qword_27CD3ECD0 != -1)
    {
      swift_once();
    }

    v18 = sub_21AF49560();
    __swift_project_value_buffer(v18, qword_27CD3F1D8);
    v19 = sub_21AF24F58();
    sub_21AF499B0();
    v21 = v20;

    if (v21)
    {
      v64[0] = v16;
      v64[1] = v17;
      sub_21AF499B0();
      v23 = v22;

      if (v23)
      {
        v24 = v9;
        v64[0] = v9;
        v64[1] = v8;
        if (qword_27CD3ECC8 != -1)
        {
          goto LABEL_32;
        }

        while (1)
        {
          __swift_project_value_buffer(v18, qword_27CD3F1C0);
          sub_21AF499B0();
          if ((v25 & 1) == 0)
          {
            break;
          }

          if (v60)
          {
            v26 = sub_21AF24E90(countAndFlagsBits, v60);
            if (!v27)
            {
              break;
            }

            v28 = v26;
            v29 = v27;
            v30 = sub_21AF24ED8(countAndFlagsBits, v60);
            if (!v31)
            {
              goto LABEL_16;
            }

            v32 = v30;
            v33 = v31;
            v64[0] = v28;
            v64[1] = v29;
            sub_21AF499B0();
            v18 = v19;
            v35 = v34;

            if ((v35 & 1) == 0)
            {
              goto LABEL_16;
            }

            v64[0] = v32;
            v64[1] = v33;
            sub_21AF499B0();
            v37 = v36;

            if ((v37 & 1) == 0)
            {
              break;
            }

            v64[0] = countAndFlagsBits;
            v64[1] = v60;
            sub_21AF499B0();
            if ((v38 & 1) == 0)
            {
              break;
            }

            v64[0] = countAndFlagsBits;
            v64[1] = v60;

            MEMORY[0x21CEE5D10](46, 0xE100000000000000);
            v19 = v64[0];
            v39 = v64[1];
            v24 = v57;
          }

          else
          {
            v19 = 0;
            v39 = 0xE000000000000000;
          }

          v64[0] = 0;
          v64[1] = 0xE000000000000000;
          sub_21AF49A60();

          strcpy(v64, "CREATE TABLE ");
          HIWORD(v64[1]) = -4864;
          MEMORY[0x21CEE5D10](v19, v39);

          MEMORY[0x21CEE5D10](34, 0xE100000000000000);
          MEMORY[0x21CEE5D10](v24, v58);
          MEMORY[0x21CEE5D10](2629666, 0xE300000000000000);
          v24 = v64[1];
          v66 = v64[0];
          v67 = v64[1];
          v43 = (*(v56 + 16))(v59);
          v44 = *(v43 + 16);
          if (!v44)
          {

            v47 = MEMORY[0x277D84F90];
LABEL_30:
            v64[0] = v47;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD3EF28, qword_21AF4C3A0);
            sub_21AF295AC();
            v52 = sub_21AF496A0();
            v54 = v53;

            MEMORY[0x21CEE5D10](v52, v54);

            MEMORY[0x21CEE5D10](41, 0xE100000000000000);
            v41 = v66;
            v42 = v67;
            goto LABEL_33;
          }

          v60 = v24;
          v68 = MEMORY[0x277D84F90];
          countAndFlagsBits = v44;
          sub_21AF26FEC(0, v44, 0);
          v45 = countAndFlagsBits;
          v46 = 0;
          v47 = v68;
          v48 = v43 + 32;
          while (v46 < *(v43 + 16))
          {
            sub_21AF27430(v48, v64);
            sub_21AF3214C(v64, &v63, v65);
            if (v61)
            {

              __swift_destroy_boxed_opaque_existential_1(v64);

              goto LABEL_33;
            }

            v61 = 0;
            __swift_destroy_boxed_opaque_existential_1(v64);
            v18 = v65[0];
            v19 = v65[1];
            v68 = v47;
            v50 = *(v47 + 16);
            v49 = *(v47 + 24);
            v24 = v50 + 1;
            if (v50 >= v49 >> 1)
            {
              sub_21AF26FEC((v49 > 1), v50 + 1, 1);
              v45 = countAndFlagsBits;
              v47 = v68;
            }

            ++v46;
            *(v47 + 16) = v24;
            v51 = v47 + 16 * v50;
            *(v51 + 32) = v18;
            *(v51 + 40) = v19;
            v48 += 40;
            if (v45 == v46)
            {

              goto LABEL_30;
            }
          }

          __break(1u);
LABEL_32:
          swift_once();
        }
      }
    }

    else
    {
LABEL_16:
    }
  }

  sub_21AF23A54();
  swift_allocError();
  *(v40 + 8) = 0;
  *(v40 + 16) = 0;
  *v40 = 10;
  *(v40 + 24) = 9;
  v41 = swift_willThrow();
LABEL_33:
  result._object = v42;
  result._countAndFlagsBits = v41;
  return result;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SQLiteSchemaDescribing.makeSelectStatementString(for:in:)(Swift::String a1, Swift::String_optional in)
{
  v4 = v3;
  v5 = v2;
  object = in.value._object;
  countAndFlagsBits = in.value._countAndFlagsBits;
  v7 = a1._object;
  v8 = a1._countAndFlagsBits;
  v9 = sub_21AF24E90(a1._countAndFlagsBits, a1._object);
  if (!v10)
  {
    goto LABEL_18;
  }

  v11 = v9;
  v12 = v10;
  v75 = v5;
  v77 = object;
  v13 = sub_21AF24ED8(v8, v7);
  if (!v14)
  {
    goto LABEL_17;
  }

  v15 = v13;
  v16 = v14;
  v73 = v8;
  v74 = v7;
  v79 = v11;
  v80 = v12;
  if (qword_27CD3ECD0 != -1)
  {
    swift_once();
  }

  v17 = sub_21AF49560();
  __swift_project_value_buffer(v17, qword_27CD3F1D8);
  sub_21AF24F58();
  sub_21AF499B0();
  v19 = v18;

  if ((v19 & 1) == 0)
  {
    goto LABEL_17;
  }

  v79 = v15;
  v80 = v16;
  sub_21AF499B0();
  v21 = v20;

  if ((v21 & 1) == 0)
  {
    goto LABEL_18;
  }

  v79 = v8;
  v80 = v7;
  if (qword_27CD3ECC8 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v17, qword_27CD3F1C0);
  sub_21AF499B0();
  if ((v22 & 1) == 0)
  {
    goto LABEL_18;
  }

  if (v77)
  {
    v23 = sub_21AF24E90(countAndFlagsBits, v77);
    if (!v24)
    {
      goto LABEL_18;
    }

    v25 = v23;
    v26 = v24;
    v27 = sub_21AF24ED8(countAndFlagsBits, v77);
    if (v28)
    {
      v29 = v27;
      v30 = v28;
      v79 = v25;
      v80 = v26;
      sub_21AF499B0();
      v32 = v31;

      if (v32)
      {
        v79 = v29;
        v80 = v30;
        sub_21AF499B0();
        v34 = v33;

        if (v34)
        {
          v79 = countAndFlagsBits;
          v80 = v77;
          sub_21AF499B0();
          if (v35)
          {
            v79 = countAndFlagsBits;
            v80 = v77;

            MEMORY[0x21CEE5D10](46, 0xE100000000000000);
            v36 = v77;
            v69 = countAndFlagsBits;
            goto LABEL_20;
          }
        }

LABEL_18:
        sub_21AF23A54();
        swift_allocError();
        *(v37 + 8) = 0;
        *(v37 + 16) = 0;
        *v37 = 10;
        *(v37 + 24) = 9;
        v38 = swift_willThrow();
        goto LABEL_41;
      }
    }

LABEL_17:

    goto LABEL_18;
  }

  v69 = 0;
  v36 = 0xE000000000000000;
LABEL_20:
  v40 = (*(v4 + 16))(v75);
  v41 = *(v40 + 16);
  if (v41)
  {
    v68 = v36;
    v83 = MEMORY[0x277D84F90];
    sub_21AF26FEC(0, v41, 0);
    v42 = 0;
    v43 = v83;
    v38 = v40 + 32;
    v71 = v40;
    v70 = v41;
    while (1)
    {
      v76 = v42;
      if (v42 >= *(v40 + 16))
      {
        break;
      }

      v72 = v38;
      sub_21AF27430(v38, &v79);
      v44 = v81;
      v45 = v82;
      __swift_project_boxed_opaque_existential_1(&v79, v81);
      v46 = (*(v45 + 32))(v44, v45);
      v48 = HIBYTE(v47) & 0xF;
      if ((v47 & 0x2000000000000000) == 0)
      {
        v48 = v46 & 0xFFFFFFFFFFFFLL;
      }

      if (!v48)
      {
        goto LABEL_37;
      }

      sub_21AF49840();
      sub_21AF49780();
      sub_21AF49840();
      sub_21AF499B0();
      v50 = v49;

      if ((v50 & 1) == 0)
      {

LABEL_37:

LABEL_38:

        sub_21AF23A54();
        swift_allocError();
        *(v63 + 8) = 0;
        *(v63 + 16) = 0;
        *v63 = 10;
        *(v63 + 24) = 9;
        swift_willThrow();
        __swift_destroy_boxed_opaque_existential_1(&v79);

        goto LABEL_41;
      }

      sub_21AF499B0();
      v52 = v51;

      if ((v52 & 1) == 0)
      {
        goto LABEL_37;
      }

      sub_21AF499B0();
      v54 = v53;

      if ((v54 & 1) == 0)
      {
        goto LABEL_38;
      }

      v55 = v81;
      v56 = v82;
      __swift_project_boxed_opaque_existential_1(&v79, v81);
      v57 = (*(v56 + 32))(v55, v56);
      v59 = v58;
      __swift_destroy_boxed_opaque_existential_1(&v79);
      v83 = v43;
      v61 = *(v43 + 16);
      v60 = *(v43 + 24);
      if (v61 >= v60 >> 1)
      {
        sub_21AF26FEC((v60 > 1), v61 + 1, 1);
        v43 = v83;
      }

      v42 = v76 + 1;
      *(v43 + 16) = v61 + 1;
      v62 = v43 + 16 * v61;
      *(v62 + 32) = v57;
      *(v62 + 40) = v59;
      v40 = v71;
      v38 = v72 + 40;
      v7 = v74;
      if (v70 == v76 + 1)
      {

        v36 = v68;
        goto LABEL_39;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_39:
    v79 = 0x205443454C4553;
    v80 = 0xE700000000000000;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD3EF28, qword_21AF4C3A0);
    sub_21AF295AC();
    v64 = sub_21AF496A0();
    v66 = v65;

    MEMORY[0x21CEE5D10](v64, v66);

    MEMORY[0x21CEE5D10](v69, v36);

    MEMORY[0x21CEE5D10](34, 0xE100000000000000);

    MEMORY[0x21CEE5D10](v73, v7);

    MEMORY[0x21CEE5D10](34, 0xE100000000000000);

    MEMORY[0x21CEE5D10](0x204D4F524620, 0xE600000000000000);

    v38 = v79;
    v39 = v80;
  }

LABEL_41:
  result._object = v39;
  result._countAndFlagsBits = v38;
  return result;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SQLiteSchemaDescribing.makeInsertStatementString(for:in:returningRowId:replacingIfNeeded:)(Swift::String a1, Swift::String_optional in, Swift::Bool returningRowId, Swift::Bool replacingIfNeeded)
{
  v6 = v5;
  v88 = v4;
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v11 = sub_21AF24E90(a1._countAndFlagsBits, a1._object);
  if (!v12)
  {
    goto LABEL_18;
  }

  v13 = v11;
  v14 = v12;
  v86 = v6;
  v15 = sub_21AF24ED8(countAndFlagsBits, object);
  if (!v16)
  {
    goto LABEL_17;
  }

  v17 = v16;
  v83 = countAndFlagsBits;
  v84 = v15;
  v82 = replacingIfNeeded;
  v81 = returningRowId;
  v94.value._countAndFlagsBits = v13;
  v94.value._object = v14;
  if (qword_27CD3ECD0 != -1)
  {
    swift_once();
  }

  v18 = sub_21AF49560();
  __swift_project_value_buffer(v18, qword_27CD3F1D8);
  sub_21AF24F58();
  sub_21AF499B0();
  v20 = v19;

  if ((v20 & 1) == 0)
  {
    goto LABEL_17;
  }

  v94.value._countAndFlagsBits = v84;
  v94.value._object = v17;
  sub_21AF499B0();
  v22 = v21;

  if ((v22 & 1) == 0)
  {
    goto LABEL_18;
  }

  v23 = object;
  v94.value._countAndFlagsBits = countAndFlagsBits;
  v94.value._object = object;
  if (qword_27CD3ECC8 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v18, qword_27CD3F1C0);
  sub_21AF499B0();
  if ((v24 & 1) == 0)
  {
    goto LABEL_18;
  }

  if (in.value._object)
  {
    v25 = sub_21AF24E90(in.value._countAndFlagsBits, in.value._object);
    if (!v26)
    {
      goto LABEL_18;
    }

    v27 = v25;
    v28 = v26;
    v29 = sub_21AF24ED8(in.value._countAndFlagsBits, in.value._object);
    if (v30)
    {
      v31 = v29;
      v32 = v30;
      v94.value._countAndFlagsBits = v27;
      v94.value._object = v28;
      sub_21AF499B0();
      v34 = v33;

      if (v34)
      {
        v94.value._countAndFlagsBits = v31;
        v94.value._object = v32;
        sub_21AF499B0();
        v36 = v35;

        if (v36)
        {
          v38 = in.value._countAndFlagsBits;
          v37 = in.value._object;
          v94 = in;
          sub_21AF499B0();
          if (v39)
          {
            v94 = in;

            MEMORY[0x21CEE5D10](46, 0xE100000000000000);
            v23 = object;
            goto LABEL_20;
          }
        }

LABEL_18:
        sub_21AF23A54();
        swift_allocError();
        *(v40 + 8) = 0;
        *(v40 + 16) = 0;
        *v40 = 10;
        *(v40 + 24) = 9;
        v41 = swift_willThrow();
        goto LABEL_55;
      }
    }

LABEL_17:

    goto LABEL_18;
  }

  v38 = 0;
  v37 = 0xE000000000000000;
LABEL_20:
  v43 = (*(v86 + 16))(v88);
  v44 = *(v43 + 16);
  v45 = MEMORY[0x277D84F90];
  if (v44)
  {
    v91 = v38;
    v92 = v37;
    v93 = MEMORY[0x277D84F90];
    sub_21AF26FEC(0, v44, 0);
    v46 = v93;
    v47 = v43 + 32;
    do
    {
      sub_21AF27430(v47, &v94);
      v48 = v95;
      v49 = v96;
      __swift_project_boxed_opaque_existential_1(&v94, v95);
      v50 = (*(v49 + 32))(v48, v49);
      v52 = v51;
      __swift_destroy_boxed_opaque_existential_1(&v94.value._countAndFlagsBits);
      v54 = *(v93 + 16);
      v53 = *(v93 + 24);
      if (v54 >= v53 >> 1)
      {
        sub_21AF26FEC((v53 > 1), v54 + 1, 1);
      }

      *(v93 + 16) = v54 + 1;
      v55 = v93 + 16 * v54;
      *(v55 + 32) = v50;
      *(v55 + 40) = v52;
      v47 += 40;
      --v44;
    }

    while (v44);

    v45 = MEMORY[0x277D84F90];
    v38 = v91;
    v37 = v92;
  }

  else
  {

    v46 = MEMORY[0x277D84F90];
  }

  v56 = 0xE000000000000000;
  sub_21AF49A60();

  if (v82)
  {
    v57 = 0x4C50455220524F20;
  }

  else
  {
    v57 = 0;
  }

  if (v82)
  {
    v56 = 0xEB00000000454341;
  }

  MEMORY[0x21CEE5D10](v57, v56);

  MEMORY[0x21CEE5D10](0x204F544E4920, 0xE600000000000000);
  MEMORY[0x21CEE5D10](v38, v37);

  MEMORY[0x21CEE5D10](34, 0xE100000000000000);
  MEMORY[0x21CEE5D10](v83, v23);
  MEMORY[0x21CEE5D10](2629666, 0xE300000000000000);
  v94.value._countAndFlagsBits = 0x545245534E49;
  v94.value._object = 0xE600000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD3EF28, qword_21AF4C3A0);
  sub_21AF295AC();
  v58 = sub_21AF496A0();
  MEMORY[0x21CEE5D10](v58);

  MEMORY[0x21CEE5D10](0x5345554C41562029, 0xEA00000000002820);
  v59 = *(v46 + 16);
  if (v59)
  {
    v97 = v45;
    v85 = v46;
    v41 = sub_21AF26FEC(0, v59, 0);
    v60 = v46;
    v61 = 0;
    v62 = v97;
    v63 = (v46 + 40);
    while (v61 < *(v60 + 16))
    {
      v64 = *(v63 - 1);
      v65 = *v63;
      v66 = HIBYTE(*v63) & 0xFLL;
      if ((*v63 & 0x2000000000000000) == 0)
      {
        v66 = v64 & 0xFFFFFFFFFFFFLL;
      }

      if (!v66)
      {
        v75 = *v63;

        goto LABEL_50;
      }

      v87 = v63;
      v89 = v61;

      sub_21AF49840();
      sub_21AF49780();
      sub_21AF49840();
      sub_21AF499B0();
      v68 = v67;

      if ((v68 & 1) == 0)
      {

LABEL_49:

LABEL_50:

        sub_21AF23A54();
        swift_allocError();
        *(v76 + 8) = 0;
        *(v76 + 16) = 0;
        *v76 = 10;
        *(v76 + 24) = 9;
        swift_willThrow();

        goto LABEL_55;
      }

      sub_21AF499B0();
      v70 = v69;

      if ((v70 & 1) == 0)
      {
        goto LABEL_49;
      }

      sub_21AF499B0();
      if ((v71 & 1) == 0)
      {
        goto LABEL_49;
      }

      MEMORY[0x21CEE5D10](v64, v65);

      v97 = v62;
      v73 = *(v62 + 16);
      v72 = *(v62 + 24);
      if (v73 >= v72 >> 1)
      {
        v41 = sub_21AF26FEC((v72 > 1), v73 + 1, 1);
        v62 = v97;
      }

      v61 = v89 + 1;
      *(v62 + 16) = v73 + 1;
      v74 = v62 + 16 * v73;
      *(v74 + 32) = 64;
      *(v74 + 40) = 0xE100000000000000;
      v63 = v87 + 2;
      v60 = v85;
      if (v59 == v89 + 1)
      {
        goto LABEL_44;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_44:

    v77 = sub_21AF496A0();
    v79 = v78;

    MEMORY[0x21CEE5D10](v77, v79);

    MEMORY[0x21CEE5D10](41, 0xE100000000000000);
    if (v81)
    {
      MEMORY[0x21CEE5D10](0xD000000000000010, 0x800000021AF4A860);
    }

    v41 = v94.value._countAndFlagsBits;
    v42 = v94.value._object;
  }

LABEL_55:
  result._object = v42;
  result._countAndFlagsBits = v41;
  return result;
}

uint64_t sub_21AF3214C@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  v27 = *(v6 + 32);
  v7 = v27(v5, v6);
  v9 = v8;
  sub_21AF24E90(v7, v8);
  if (!v10)
  {
    goto LABEL_12;
  }

  v26 = a3;
  sub_21AF24ED8(v7, v9);
  if (!v11)
  {
    goto LABEL_11;
  }

  if (qword_27CD3ECD0 != -1)
  {
    swift_once();
  }

  v25 = sub_21AF49560();
  __swift_project_value_buffer(v25, qword_27CD3F1D8);
  sub_21AF24F58();
  sub_21AF499B0();
  v13 = v12;

  if ((v13 & 1) == 0)
  {
LABEL_11:

    goto LABEL_12;
  }

  sub_21AF499B0();
  v15 = v14;

  if ((v15 & 1) == 0)
  {
LABEL_12:

    goto LABEL_13;
  }

  if (qword_27CD3ECC8 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v25, qword_27CD3F1C0);
  sub_21AF499B0();
  v17 = v16;

  if (v17)
  {
    v18 = v27(v5, v6);
    MEMORY[0x21CEE5D10](v18);

    MEMORY[0x21CEE5D10](32, 0xE100000000000000);
    v19 = a1[3];
    v20 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v19);
    (*(v20 + 24))(v19, v20);
    (*(v21 + 24))(&v29);
    result = sub_21AF49AF0();
    *v26 = 0;
    v26[1] = 0xE000000000000000;
    return result;
  }

LABEL_13:
  sub_21AF23A54();
  v23 = swift_allocError();
  *(v24 + 8) = 0;
  *(v24 + 16) = 0;
  *v24 = 10;
  *(v24 + 24) = 9;
  result = swift_willThrow();
  *a2 = v23;
  return result;
}

void sub_21AF324C8(sqlite3 *a1)
{
  v1 = sqlite3_close_v2(a1);
  if (v1)
  {
    v2 = v1;
    if (qword_27CD3ECD8 != -1)
    {
      swift_once();
    }

    v3 = sub_21AF49690();
    __swift_project_value_buffer(v3, qword_27CD3F1A8);
    oslog = sub_21AF49670();
    v4 = sub_21AF49970();
    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 67240192;
      *(v5 + 4) = v2;
      _os_log_impl(&dword_21AF22000, oslog, v4, "Close db connection failed with code %{public}d", v5, 8u);
      MEMORY[0x21CEE68E0](v5, -1, -1);
    }
  }
}

uint64_t SQLiteDatabase.__allocating_init()()
{
  v0 = swift_allocObject();
  SQLiteDatabase.init()();
  return v0;
}

uint64_t SQLiteDatabase.init()()
{
  v2 = v0;
  *(v0 + 16) = 0;
  v3 = sub_21AF34588();
  if (v1)
  {
  }

  else
  {
    *(v0 + 16) = v3;
    sub_21AF3503C();
    if (qword_27CD3ECD8 != -1)
    {
      swift_once();
    }

    v5 = sub_21AF49690();
    __swift_project_value_buffer(v5, qword_27CD3F1A8);
    v6 = sub_21AF49670();
    v7 = sub_21AF49960();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_21AF22000, v6, v7, "In-memory db connection opened", v8, 2u);
      MEMORY[0x21CEE68E0](v8, -1, -1);
    }
  }

  return v2;
}

uint64_t SQLiteDatabase.__allocating_init(_:readOnly:requiresAuthentication:)(uint64_t a1, uint64_t a2, char a3)
{
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  v8 = sub_21AF34920(a1, a2, a3);
  if (v3)
  {
  }

  else
  {
    *(v7 + 16) = v8;
    sub_21AF3503C();
  }

  v9 = sub_21AF495D0();
  (*(*(v9 - 8) + 8))(a1, v9);
  return v7;
}

uint64_t SQLiteDatabase.init(_:readOnly:requiresAuthentication:)(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 16) = 0;
  v6 = sub_21AF34920(a1, a2, a3);
  if (v4)
  {
  }

  else
  {
    *(v3 + 16) = v6;
    sub_21AF3503C();
  }

  v7 = sub_21AF495D0();
  (*(*(v7 - 8) + 8))(a1, v7);
  return v3;
}

uint64_t SQLiteDatabase.__allocating_init(connection:)(uint64_t a1)
{
  v2 = swift_allocObject();
  SQLiteDatabase.init(connection:)(a1);
  return v2;
}

uint64_t SQLiteDatabase.init(connection:)(uint64_t a1)
{
  v2 = v1;
  *(v1 + 16) = 0;
  if (a1)
  {
    *(v1 + 16) = a1;
  }

  else
  {
    if (qword_27CD3ECD8 != -1)
    {
      swift_once();
    }

    v3 = sub_21AF49690();
    __swift_project_value_buffer(v3, qword_27CD3F1A8);

    v4 = sub_21AF49670();
    v5 = sub_21AF49970();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v13 = v7;
      *v6 = 136315138;
      type metadata accessor for SQLiteDatabase();

      v8 = sub_21AF49700();
      v10 = sub_21AF39910(v8, v9, &v13);

      *(v6 + 4) = v10;
      _os_log_impl(&dword_21AF22000, v4, v5, "Can't create %s from a nil connection", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v7);
      MEMORY[0x21CEE68E0](v7, -1, -1);
      MEMORY[0x21CEE68E0](v6, -1, -1);
    }

    sub_21AF23A54();
    swift_allocError();
    *v11 = 0xD00000000000002BLL;
    *(v11 + 8) = 0x800000021AF4A880;
    *(v11 + 16) = 0;
    *(v11 + 24) = 4;
    swift_willThrow();
  }

  return v2;
}

uint64_t SQLiteDatabase.deinit()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    sub_21AF324C8(v1);
    *(v0 + 16) = 0;
  }

  return v0;
}

uint64_t SQLiteDatabase.__deallocating_deinit()
{
  v1 = v0;
  v2 = *(v0 + 16);
  if (v2)
  {
    v3 = sqlite3_close_v2(v2);
    if (v3)
    {
      v4 = v3;
      if (qword_27CD3ECD8 != -1)
      {
        swift_once();
      }

      v5 = sub_21AF49690();
      __swift_project_value_buffer(v5, qword_27CD3F1A8);
      v6 = sub_21AF49670();
      v7 = sub_21AF49970();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 67240192;
        *(v8 + 4) = v4;
        _os_log_impl(&dword_21AF22000, v6, v7, "Close db connection failed with code %{public}d", v8, 8u);
        MEMORY[0x21CEE68E0](v8, -1, -1);
      }
    }
  }

  return MEMORY[0x2821FE8D8](v1, 24, 7);
}

uint64_t sub_21AF32C98()
{
  result = *(v0 + 16);
  *(v0 + 16) = 0;
  return result;
}

void sub_21AF32D18()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    sub_21AF324C8(v1);
    *(v0 + 16) = 0;
  }
}

uint64_t sub_21AF32D70(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  ppStmt[1] = *MEMORY[0x277D85DE8];
  v7 = *(v5 + 16);
  if (!v7)
  {
    sub_21AF23A54();
    swift_allocError();
    *(v11 + 16) = 0;
    *v11 = 0;
    goto LABEL_19;
  }

  ppStmt[0] = 0;
  v41 = 0;
  MEMORY[0x28223BE20](a1);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_31;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((a1 & 0x1000000000000000) != 0)
    {
      v14 = v13;
      v15 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
      goto LABEL_9;
    }

LABEL_31:
    v14 = v13;
    sub_21AF49A50();
    v16 = *zSql;
    goto LABEL_11;
  }

  v14 = v13;
  *zSql = a1;
  *&zSql[8] = a2 & 0xFFFFFFFFFFFFFFLL;
  v15 = zSql;
LABEL_9:
  v16 = sqlite3_prepare_v3(v7, v15, -1, v12, ppStmt, 0);
  if (v16)
  {
    v41 = sqlite3_error_offset(v7);
  }

LABEL_11:
  if (!ppStmt[0] || v16)
  {
    v19 = *(v5 + 16);
    if (v19)
    {
      if (sqlite3_errmsg(v19))
      {
        v20 = sub_21AF497A0();
        v22 = v21;
      }

      else
      {
        v22 = 0x800000021AF4A500;
        v20 = 0xD000000000000014;
      }

      sub_21AF2FEB4(a1, a2, v41, zSql);
      v23 = *zSql;
      v24 = v44;
      *zSql = v16;
      *&zSql[8] = v20;
      *&v44 = v22;
      *(&v44 + 1) = a1;
      *v45 = a2;
      *&v45[8] = v23;
      *&v45[24] = v24;
      if (a5)
      {
        v25 = qword_27CD3ECD8;

        if (v25 != -1)
        {
          swift_once();
        }

        v26 = sub_21AF49690();
        __swift_project_value_buffer(v26, qword_27CD3F1A8);
        sub_21AF35270(zSql, v42);
        v27 = sub_21AF49670();
        v28 = sub_21AF49970();
        sub_21AF352CC(zSql);
        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          v30 = swift_slowAlloc();
          *v29 = 138412290;
          sub_21AF28218();
          swift_allocError();
          *v31 = *zSql;
          v32 = *&v45[16];
          v34 = v44;
          v33 = *v45;
          *(v31 + 64) = *&v45[32];
          *(v31 + 32) = v33;
          *(v31 + 48) = v32;
          *(v31 + 16) = v34;
          sub_21AF35270(zSql, v42);
          v35 = _swift_stdlib_bridgeErrorToNSError();
          *(v29 + 4) = v35;
          *v30 = v35;
          _os_log_impl(&dword_21AF22000, v27, v28, "Error preparing SQL statement: %@", v29, 0xCu);
          sub_21AF35320(v30);
          MEMORY[0x21CEE68E0](v30, -1, -1);
          MEMORY[0x21CEE68E0](v29, -1, -1);
        }
      }

      else
      {
      }

      sub_21AF28218();
      swift_allocError();
      *v36 = *zSql;
      v37 = *&v45[16];
      v39 = v44;
      v38 = *v45;
      *(v36 + 64) = *&v45[32];
      *(v36 + 32) = v38;
      *(v36 + 48) = v37;
      *(v36 + 16) = v39;
      goto LABEL_29;
    }

    sub_21AF23A54();
    swift_allocError();
    *(v11 + 16) = 0;
    *v11 = 4;
LABEL_19:
    *(v11 + 8) = 0;
    *(v11 + 24) = 9;
LABEL_29:
    result = swift_willThrow();
    goto LABEL_30;
  }

  result = sub_21AF39E8C(v5, ppStmt[0]);
  if (!v6)
  {
    *v14 = result;
    *(v14 + 8) = v18;
    *(v14 + 16) = a1;
    *(v14 + 24) = a2;
    *(v14 + 32) = xmmword_21AF4B260;
    *(v14 + 48) = a5 & 1;
  }

LABEL_30:
  v40 = *MEMORY[0x277D85DE8];
  return result;
}

const char *sub_21AF331F4@<X0>(const char *zSql@<X0>, sqlite3 *db@<X1>, sqlite3_stmt **ppStmt@<X3>, unsigned int *a4@<X2>, void *a5@<X4>, _DWORD *a6@<X8>)
{
  if ((*a4 & 0x80000000) != 0)
  {
    __break(1u);
  }

  else
  {
    zSql = sqlite3_prepare_v3(db, zSql, -1, *a4, ppStmt, 0);
    v9 = zSql;
    if (zSql)
    {
      zSql = sqlite3_error_offset(db);
      *a5 = zSql;
    }

    *a6 = v9;
  }

  return zSql;
}

void sub_21AF33274(uint64_t a1)
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = *(v1 + 16);
  if (!v3)
  {
    goto LABEL_24;
  }

  ppStmt = 0;
  LODWORD(v31) = 0;
  v30 = 0;
  v5 = MEMORY[0x28223BE20](a1);
  if ((v4 & 0x1000000000000000) != 0)
  {
    sub_21AF49A50();
    v7 = *zSql;
  }

  else
  {
    if ((v4 & 0x2000000000000000) != 0)
    {
      *zSql = 0xD000000000000012;
      *&zSql[8] = v4 & 0xFFFFFFFFFFFFF0;
      v6 = zSql;
    }

    else
    {
      v6 = ((v4 & 0xFFFFFFFFFFFFFF0) + 32);
    }

    v7 = sqlite3_prepare_v3(v3, v6, -1, 0, &ppStmt, 0);
    if (v7)
    {
      v30 = sqlite3_error_offset(v3);
    }
  }

  if (!ppStmt || v7)
  {
    v12 = *(v1 + 16);
    if (v12)
    {
      if (sqlite3_errmsg(v12))
      {
        v13 = sub_21AF497A0();
        v15 = v14;
      }

      else
      {
        v15 = 0x800000021AF4A500;
        v13 = 0xD000000000000014;
      }

      sub_21AF2FEB4(0xD000000000000012, 0x800000021AF4A8B0, v30, zSql);
      sub_21AF28218();
      v29 = *zSql;
      v28 = v34;
      swift_allocError();
      *v16 = v7;
      *(v16 + 8) = v13;
      *(v16 + 16) = v15;
      *(v16 + 24) = 0xD000000000000012;
      *(v16 + 32) = 0x800000021AF4A8B0;
      goto LABEL_18;
    }

LABEL_30:
    sub_21AF23A54();
    swift_allocError();
    *(v25 + 16) = 0;
    *v25 = 4;
    goto LABEL_31;
  }

  v8 = sub_21AF39E8C(v1, ppStmt);
  if (!v2)
  {
    v10 = v1;
    *zSql = v8;
    *&zSql[8] = v9;
    *&v34 = 0xD000000000000012;
    *(&v34 + 1) = 0x800000021AF4A8B0;
    v35 = xmmword_21AF4B260;
    v36 = 0;
    SQLiteStatement.execute()();
    if (v11)
    {
LABEL_12:

      swift_unknownObjectRelease();
      goto LABEL_33;
    }

    v17 = swift_unknownObjectRelease();
    v5(v17);
    v18 = *(v1 + 16);
    if (v18)
    {
      ppStmt = 0;
      *zSql = xmmword_21AF4BA80;
      v19 = sqlite3_prepare_v3(v18, zSql, -1, 0, &ppStmt, 0);
      if (v19)
      {
        v20 = sqlite3_error_offset(v18);
        v21 = *(v10 + 16);
        if (v21)
        {
LABEL_22:
          if (sqlite3_errmsg(v21))
          {
            v22 = sub_21AF497A0();
            v24 = v23;
          }

          else
          {
            v24 = 0x800000021AF4A500;
            v22 = 0xD000000000000014;
          }

          sub_21AF2FEB4(0x3B54494D4D4F43uLL, 0xE700000000000000, v20, zSql);
          sub_21AF28218();
          v29 = *zSql;
          v28 = v34;
          swift_allocError();
          *v16 = v19;
          *(v16 + 8) = v22;
          *(v16 + 16) = v24;
          *(v16 + 24) = 0x3B54494D4D4F43;
          *(v16 + 32) = 0xE700000000000000;
LABEL_18:
          *(v16 + 56) = v28;
          *(v16 + 40) = v29;
LABEL_32:
          swift_willThrow();
          goto LABEL_33;
        }
      }

      else
      {
        if (ppStmt)
        {
          *zSql = sub_21AF39E8C(v10, ppStmt);
          *&zSql[8] = v26;
          *&v34 = 0x3B54494D4D4F43;
          *(&v34 + 1) = 0xE700000000000000;
          v35 = xmmword_21AF4B260;
          v36 = 0;
          SQLiteStatement.execute()();
          goto LABEL_12;
        }

        v20 = 0;
        v21 = *(v10 + 16);
        if (v21)
        {
          goto LABEL_22;
        }
      }

      goto LABEL_30;
    }

LABEL_24:
    sub_21AF23A54();
    swift_allocError();
    *(v25 + 16) = 0;
    *v25 = 0;
LABEL_31:
    *(v25 + 8) = 0;
    *(v25 + 24) = 9;
    goto LABEL_32;
  }

LABEL_33:
  v27 = *MEMORY[0x277D85DE8];
}