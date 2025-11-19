uint64_t sub_2704D9DD4()
{
  v0 = sub_2705D7EB4();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_2704D9E20(char a1)
{
  if (!a1)
  {
    return 1701736292;
  }

  if (a1 == 1)
  {
    return 0x6C65636E6163;
  }

  return 0x65736F6C63;
}

uint64_t sub_2704D9E8C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2704D9CF4();
  *a1 = result;
  return result;
}

uint64_t sub_2704D9EBC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2704D9D40(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_2704D9FBC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2704D9DD4();
  *a1 = result;
  return result;
}

uint64_t sub_2704D9FEC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2704D9E20(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_2704DA0C8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (sub_2705D8134() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E6F69746361 && a2 == 0xE600000000000000;
    if (v6 || (sub_2705D8134() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
      if (v7 || (sub_2705D8134() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
        if (v8 || (sub_2705D8134() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x7465737361 && a2 == 0xE500000000000000;
          if (v9 || (sub_2705D8134() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0xD000000000000010 && 0x8000000270615070 == a2)
          {

            return 5;
          }

          else
          {
            v11 = sub_2705D8134();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

unint64_t sub_2704DA2B4(char a1)
{
  result = 1701869940;
  switch(a1)
  {
    case 1:
      result = 0x6E6F69746361;
      break;
    case 2:
      result = 0x656C746974;
      break;
    case 3:
      result = 0x696669746E656469;
      break;
    case 4:
      result = 0x7465737361;
      break;
    case 5:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2704DA374(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D4F30);
  OUTLINED_FUNCTION_0();
  v7 = v6;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v8);
  v10 = &v15[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2704DBF2C();
  sub_2705D84C4();
  LOBYTE(v18) = *v3;
  v17[0] = 0;
  sub_2704DC028();
  OUTLINED_FUNCTION_3_49();
  sub_2705D8084();
  if (!v2)
  {
    LOBYTE(v18) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF2D8);
    sub_2703F34FC(&qword_2807CFE98, &qword_2807CFEA0);
    sub_2705D8084();
    v11 = *(v3 + 56);
    v12 = *(v3 + 64);
    v13 = *(v3 + 72);
    v18 = *(v3 + 48);
    v19 = v11;
    v20 = v12;
    v21 = v13;
    v17[0] = 2;
    sub_2703C3A18(v18, v11);
    sub_2703C3970();
    OUTLINED_FUNCTION_3_49();
    sub_2705D8024();
    sub_2703C3A5C(v18, v19);
    v23 = *(v3 + 80);
    v22 = 3;
    sub_2704DC07C();
    OUTLINED_FUNCTION_3_49();
    sub_2705D8024();
    OUTLINED_FUNCTION_10_34(&v18);
    OUTLINED_FUNCTION_10_34(v17);
    v16[359] = 4;
    sub_2704DC0D0(&v18, v16);
    sub_2703BAED8();
    OUTLINED_FUNCTION_3_49();
    sub_2705D8024();
    memcpy(v16, v17, 0x160uLL);
    sub_2703B2934(v16, &qword_2807D2478);
    v15[7] = 5;
    sub_2705D7FF4();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_2704DA698@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D4F10);
  OUTLINED_FUNCTION_0();
  v6 = v5;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_31_0();
  memset(v19, 0, 40);
  memset(v21, 0, sizeof(v21));
  v22 = 0;
  sub_27041F044(v19, v21, &unk_2807CF480);
  v23 = 0u;
  v24 = 0u;
  sub_2704522D0(v29);
  memcpy(v26, v29, sizeof(v26));
  v8 = a1[3];
  v30 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v8);
  sub_2704DBF2C();
  sub_2705D8484();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(v30);
    sub_2703B2934(v21, &qword_2807CF2D8);
    sub_2703C3A5C(v23, *(&v23 + 1));
    OUTLINED_FUNCTION_10_34(v19);
    return sub_2703B2934(v19, &qword_2807D2478);
  }

  else
  {
    sub_2704DBF80();
    OUTLINED_FUNCTION_9_37();
    OUTLINED_FUNCTION_6_44();
    sub_2705D7FA4();
    v20[0] = v19[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF2D8);
    sub_2703F34FC(&qword_2807CFE48, &qword_2807CFE50);
    OUTLINED_FUNCTION_9_37();
    sub_2705D7FA4();
    sub_27041F044(v19, v21, &qword_2807CF2D8);
    sub_2703C3F58();
    OUTLINED_FUNCTION_9_37();
    OUTLINED_FUNCTION_6_44();
    sub_2705D7F44();
    v13 = v19[1];
    v14 = v19[0];
    sub_2703C3A5C(v23, *(&v23 + 1));
    v23 = v14;
    v24 = v13;
    v18[0] = 3;
    sub_2704DBFD4();
    OUTLINED_FUNCTION_9_37();
    OUTLINED_FUNCTION_6_44();
    sub_2705D7F44();
    v25 = v19[0];
    v18[359] = 4;
    sub_2703BAE84();
    OUTLINED_FUNCTION_6_44();
    sub_2705D7F44();
    memcpy(v17, v19, sizeof(v17));
    OUTLINED_FUNCTION_10_34(v18);
    sub_2703B2934(v18, &qword_2807D2478);
    memcpy(v26, v17, sizeof(v26));
    v9 = sub_2705D7F04();
    v11 = v10;
    (*(v6 + 8))(v3, v16);
    v27 = v9;
    v28 = v11;
    sub_270411B50(v20, a2);
    __swift_destroy_boxed_opaque_existential_1(v30);
    return sub_2704113A4(v20);
  }
}

uint64_t sub_2704DAA9C()
{
  v0 = sub_2705D7EB4();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_2704DAAE8(char a1)
{
  result = 0x6E6564646968;
  switch(a1)
  {
    case 1:
      result = OUTLINED_FUNCTION_4_46();
      break;
    case 2:
      result = 0x6C416D6574737973;
      break;
    case 3:
      result = 0x726170736E617274;
      break;
    case 4:
      result = 0xD000000000000019;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2704DABA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2704DA0C8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2704DABC8(uint64_t a1)
{
  v2 = sub_2704DBF2C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2704DAC04(uint64_t a1)
{
  v2 = sub_2704DBF2C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2704DAC94@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2704DAA9C();
  *a1 = result;
  return result;
}

uint64_t sub_2704DACC4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2704DAAE8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_2704DADA0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E61726165707061 && a2 == 0xEA00000000006563;
  if (v4 || (sub_2705D8134() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x726F737365636361 && a2 == 0xED00006D65744979;
    if (v6 || (sub_2705D8134() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 5294388599723750000 && a2 == 0xEB000000006D6574;
      if (v7 || (sub_2705D8134() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x7261646E6F636573 && a2 == 0xED00006D65744979;
        if (v8 || (sub_2705D8134() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000010 && 0x8000000270615030 == a2;
          if (v9 || (sub_2705D8134() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000010 && 0x8000000270615050 == a2;
            if (v10 || (sub_2705D8134() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x7463757274736564 && a2 == 0xEF6D657449657669;
              if (v11 || (sub_2705D8134() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x697461676976616ELL && a2 == 0xEE006D6574496E6FLL;
                if (v12 || (sub_2705D8134() & 1) != 0)
                {

                  return 7;
                }

                else if (a1 == 0x656C746974 && a2 == 0xE500000000000000)
                {

                  return 8;
                }

                else
                {
                  v14 = sub_2705D8134();

                  if (v14)
                  {
                    return 8;
                  }

                  else
                  {
                    return 9;
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_2704DB090(char a1)
{
  result = 0x6E61726165707061;
  switch(a1)
  {
    case 1:
      result = 0x726F737365636361;
      break;
    case 2:
      result = 5294388599723750000;
      break;
    case 3:
      result = 0x7261646E6F636573;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
      result = 0xD000000000000010;
      break;
    case 6:
      result = 0x7463757274736564;
      break;
    case 7:
      result = 0x697461676976616ELL;
      break;
    case 8:
      result = 0x656C746974;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2704DB1D8(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D4ED0);
  OUTLINED_FUNCTION_0();
  v6 = v5;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_31_0();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2704DB928();
  sub_2705D84C4();
  sub_2704DBA8C();
  sub_2705D8024();
  if (!v1)
  {
    sub_2704DBAE0();
    OUTLINED_FUNCTION_1_55();
    OUTLINED_FUNCTION_1_55();
    OUTLINED_FUNCTION_1_55();
    OUTLINED_FUNCTION_1_55();
    OUTLINED_FUNCTION_1_55();
    OUTLINED_FUNCTION_1_55();
    OUTLINED_FUNCTION_1_55();
    sub_2705D7FF4();
  }

  return (*(v6 + 8))(v2, v4);
}

uint64_t sub_2704DB444@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D4EB0);
  OUTLINED_FUNCTION_0();
  v6 = v5;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_31_0();
  v18[0] = 5;
  memset(v19, 0, sizeof(v19));
  v20 = 1;
  bzero(&v21, 0x1C0uLL);
  v22[4] = 1;
  bzero(&v23, 0x1C0uLL);
  v24[4] = 1;
  bzero(&v25, 0x1C0uLL);
  v26[4] = 1;
  bzero(&v27, 0x1C0uLL);
  v28[4] = 1;
  bzero(&v29, 0x1C0uLL);
  v30[4] = 1;
  bzero(&v31, 0x1C0uLL);
  v32[4] = 1;
  bzero(v33, 0x1B0uLL);
  v8 = a1[3];
  v34 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v8);
  sub_2704DB928();
  v9 = v3;
  sub_2705D8484();
  if (!v2)
  {
    sub_2704DB9AC();
    OUTLINED_FUNCTION_6_44();
    sub_2705D7F44();
    v18[0] = v16[0];
    v17 = 1;
    sub_2704DBA00();
    OUTLINED_FUNCTION_6_44();
    sub_2705D7F44();
    sub_27041F044(v16, v19, &qword_2807D1200);
    v17 = 2;
    OUTLINED_FUNCTION_0_53();
    sub_27041F044(v16, v22, &qword_2807D1200);
    v17 = 3;
    OUTLINED_FUNCTION_0_53();
    sub_27041F044(v16, v24, &qword_2807D1200);
    v17 = 4;
    OUTLINED_FUNCTION_0_53();
    sub_27041F044(v16, v26, &qword_2807D1200);
    v17 = 5;
    OUTLINED_FUNCTION_0_53();
    sub_27041F044(v16, v28, &qword_2807D1200);
    v17 = 6;
    OUTLINED_FUNCTION_0_53();
    sub_27041F044(v16, v30, &qword_2807D1200);
    v17 = 7;
    OUTLINED_FUNCTION_0_53();
    sub_27041F044(v16, v32, &qword_2807D1200);
    v16[0] = 8;
    v11 = sub_2705D7F04();
    v13 = v12;
    (*(v6 + 8))(v9, v15);
    v33[52] = v11;
    v33[53] = v13;
    sub_2704DBA54(v18, a2);
  }

  __swift_destroy_boxed_opaque_existential_1(v34);
  return sub_2704DB97C(v18);
}

uint64_t sub_2704DB858@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2704DADA0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2704DB880(uint64_t a1)
{
  v2 = sub_2704DB928();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2704DB8BC(uint64_t a1)
{
  v2 = sub_2704DB928();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_2704DB928()
{
  result = qword_2807D4EB8;
  if (!qword_2807D4EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D4EB8);
  }

  return result;
}

unint64_t sub_2704DB9AC()
{
  result = qword_2807D4EC0;
  if (!qword_2807D4EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D4EC0);
  }

  return result;
}

unint64_t sub_2704DBA00()
{
  result = qword_2807D4EC8;
  if (!qword_2807D4EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D4EC8);
  }

  return result;
}

unint64_t sub_2704DBA8C()
{
  result = qword_2807D4ED8;
  if (!qword_2807D4ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D4ED8);
  }

  return result;
}

unint64_t sub_2704DBAE0()
{
  result = qword_2807D4EE0;
  if (!qword_2807D4EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D4EE0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for NavigationBarModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
        JUMPOUT(0x2704DBC00);
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
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_2704DBC40(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 456))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 32);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2704DBC94(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 440) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 456) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 456) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

unint64_t sub_2704DBD7C()
{
  result = qword_2807D4EE8;
  if (!qword_2807D4EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D4EE8);
  }

  return result;
}

unint64_t sub_2704DBDD4()
{
  result = qword_2807D4EF0;
  if (!qword_2807D4EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D4EF0);
  }

  return result;
}

unint64_t sub_2704DBE2C()
{
  result = qword_2807D4EF8;
  if (!qword_2807D4EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D4EF8);
  }

  return result;
}

unint64_t sub_2704DBE84()
{
  result = qword_2807D4F00;
  if (!qword_2807D4F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D4F00);
  }

  return result;
}

unint64_t sub_2704DBED8()
{
  result = qword_2807D4F08;
  if (!qword_2807D4F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D4F08);
  }

  return result;
}

unint64_t sub_2704DBF2C()
{
  result = qword_2807D4F18;
  if (!qword_2807D4F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D4F18);
  }

  return result;
}

unint64_t sub_2704DBF80()
{
  result = qword_2807D4F20;
  if (!qword_2807D4F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D4F20);
  }

  return result;
}

unint64_t sub_2704DBFD4()
{
  result = qword_2807D4F28;
  if (!qword_2807D4F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D4F28);
  }

  return result;
}

unint64_t sub_2704DC028()
{
  result = qword_2807D4F38;
  if (!qword_2807D4F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D4F38);
  }

  return result;
}

unint64_t sub_2704DC07C()
{
  result = qword_2807D4F40;
  if (!qword_2807D4F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D4F40);
  }

  return result;
}

uint64_t sub_2704DC0D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D2478);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_BYTE *storeEnumTagSinglePayload for NavigationItemModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
        JUMPOUT(0x2704DC20CLL);
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_2704DC244(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x2704DC310);
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

_BYTE *sub_2704DC344(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x2704DC410);
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

unint64_t sub_2704DC448()
{
  result = qword_2807D4F48;
  if (!qword_2807D4F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D4F48);
  }

  return result;
}

unint64_t sub_2704DC4A0()
{
  result = qword_2807D4F50;
  if (!qword_2807D4F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D4F50);
  }

  return result;
}

unint64_t sub_2704DC4F8()
{
  result = qword_2807D4F58;
  if (!qword_2807D4F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D4F58);
  }

  return result;
}

unint64_t sub_2704DC550()
{
  result = qword_2807D4F60;
  if (!qword_2807D4F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D4F60);
  }

  return result;
}

unint64_t sub_2704DC5A8()
{
  result = qword_2807D4F68;
  if (!qword_2807D4F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D4F68);
  }

  return result;
}

unint64_t sub_2704DC5FC()
{
  result = qword_2807D4F70;
  if (!qword_2807D4F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D4F70);
  }

  return result;
}

unint64_t sub_2704DC650()
{
  result = qword_2807D4F78;
  if (!qword_2807D4F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D4F78);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_53()
{

  return sub_2705D7F44();
}

uint64_t OUTLINED_FUNCTION_1_55()
{

  return sub_2705D8024();
}

void *OUTLINED_FUNCTION_10_34(void *a1)
{

  return memcpy(a1, (v1 + 88), 0x160uLL);
}

uint64_t NotificationAuthorizationError.hashValue.getter()
{
  v1 = *v0;
  sub_2705D83B4();
  MEMORY[0x2743A47E0](v1);
  return sub_2705D8414();
}

uint64_t View.notificationAuthorizationPresentation(isPresented:bag:bundleId:metricsOverlay:resultHandler:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v22 = 0;
  sub_2705D5E44();
  v14 = v17;
  v15 = v18;
  v17 = a1;
  v18 = a2;
  v19 = a3;
  v20 = v14;
  v21 = v15;
  MEMORY[0x2743A2010](&v17, a10, &type metadata for NotificationAuthorizationPresentationViewModifier, a11);
}

unint64_t sub_2704DC884()
{
  result = qword_2807D4F80;
  if (!qword_2807D4F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D4F80);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for NotificationAuthorizationError(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x2704DC9A4);
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

uint64_t sub_2704DC9DC()
{
  sub_2705D5044();
  sub_2704DCA40();
  return swift_getWitnessTable();
}

unint64_t sub_2704DCA40()
{
  result = qword_2807D4F88;
  if (!qword_2807D4F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D4F88);
  }

  return result;
}

uint64_t sub_2704DCAC0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D4F90);
  sub_2705D5F24();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D4F98);
  sub_2704DCBF0();
  sub_2705D5BA4();
}

unint64_t sub_2704DCBF0()
{
  result = qword_2807D4FA0;
  if (!qword_2807D4FA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D4F98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D4FA0);
  }

  return result;
}

uint64_t sub_2704DCC54()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D4F98);
  sub_2704DCBF0();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2704DCCCC(uint64_t a1, uint64_t a2, void *a3)
{
  v39 = a2;
  v40 = a3;
  OUTLINED_FUNCTION_21_3();
  v4 = sub_2705D6DE4();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_4_0();
  v10 = v9 - v8;
  v11 = sub_2705D6ED4();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_4_0();
  v42 = sub_2705D6384();
  OUTLINED_FUNCTION_0();
  v13 = v12;
  v15 = MEMORY[0x28223BE20](v14);
  v41 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v38 = &v37 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v43 = &v37 - v20;
  MEMORY[0x28223BE20](v19);
  v22 = &v37 - v21;
  if (v3)
  {
    v23 = v3;
    sub_2705D6EC4();
    sub_2705D6374();
    sub_2705D6914();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF910);
    v24 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_2705DC030;
    v26 = v42;
    (*(v13 + 16))(v25 + v24, v22, v42);
    OUTLINED_FUNCTION_9_7();
    sub_2705D68C4();
    v27 = *(v13 + 8);

    v27(v22, v26);
  }

  else
  {
    sub_2705D6914();
    OUTLINED_FUNCTION_9_7();
    sub_2705D68C4();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF458);
  v28 = [objc_opt_self() ams_sharedAccountStore];
  v45 = sub_2703CACA0(0, &qword_2807D5008);
  v46 = MEMORY[0x277D225B8];
  v44 = v28;
  v37 = v22;
  sub_2705D6374();
  (*(v6 + 16))(v10, v39, v4);
  sub_2705D6374();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D5010);
  v44 = sub_2705D6DA4();
  v29 = v38;
  sub_2705D6374();
  sub_2703CACA0(0, &unk_2807CF460);
  v44 = v40;
  v30 = v40;
  v31 = v41;
  sub_2705D6374();
  sub_2704DD934();

  sub_2705D68E4();

  sub_2705D68E4();

  sub_2705D68E4();

  sub_2705D68E4();

  v32 = sub_2705D68F4();

  v33 = *(v13 + 8);
  v34 = v31;
  v35 = v42;
  v33(v34, v42);
  v33(v29, v35);
  v33(v43, v35);
  v33(v37, v35);
  return v32;
}

uint64_t sub_2704DD1E8()
{
  v0 = sub_2705D6384();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_4_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D5000);
  sub_2705D6364();
  sub_2705D6914();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF910);
  v1 = OUTLINED_FUNCTION_4_47();
  *(v1 + 16) = xmmword_2705DC030;
  v2 = OUTLINED_FUNCTION_2_51(v1);
  v3(v2);
  OUTLINED_FUNCTION_9_7();
  v4 = sub_2705D68C4();
  v5 = OUTLINED_FUNCTION_5_50();
  v6(v5);
  return v4;
}

uint64_t sub_2704DD34C()
{
  OUTLINED_FUNCTION_21_3();
  sub_2705D6384();
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_4_0();
  if (v0)
  {
    type metadata accessor for ActionResultHandler();

    sub_2705D6374();
    sub_2705D6914();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF910);
    v2 = OUTLINED_FUNCTION_4_47();
    *(v2 + 16) = xmmword_2705DC030;
    v3 = OUTLINED_FUNCTION_2_51(v2);
    v4(v3);
    OUTLINED_FUNCTION_9_7();
    v5 = sub_2705D68C4();
    v6 = OUTLINED_FUNCTION_5_50();
    v7(v6);
    return v5;
  }

  else
  {
    sub_2705D6914();
    OUTLINED_FUNCTION_9_7();
    return sub_2705D68C4();
  }
}

uint64_t sub_2704DD4A8()
{
  OUTLINED_FUNCTION_21_3();
  v1 = sub_2705D6384();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v4 = MEMORY[0x28223BE20](v3);
  v6 = v20 - v5;
  MEMORY[0x28223BE20](v4);
  v8 = v20 - v7;
  v9 = v0[1];
  v21 = *v0;
  v22 = v9;
  v10 = v0[3];
  v23 = v0[2];
  v24 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807CF490);
  sub_2705D6364();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D4FB0);
  sub_2705D6CD4();
  v20[0] = sub_2705D6CC4();
  v20[1] = MEMORY[0x277D221C0];
  sub_2705D6374();
  sub_2705D69B4();
  v11 = swift_allocObject();
  v12 = v22;
  v11[1] = v21;
  v11[2] = v12;
  v13 = v24;
  v11[3] = v23;
  v11[4] = v13;
  sub_2703CAAEC(&v21, v20, &unk_2807D47E0);
  sub_2705D6364();
  sub_2705D6914();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF910);
  v14 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_2705DC030;
  (*(v2 + 16))(v15 + v14, v8, v1);
  OUTLINED_FUNCTION_9_7();
  sub_2705D68C4();
  sub_2705D68E4();
  v16 = sub_2705D68E4();

  v17 = *(v2 + 8);
  v18 = OUTLINED_FUNCTION_5_50();
  v17(v18);
  (v17)(v6, v1);
  (v17)(v8, v1);
  return v16;
}

uint64_t sub_2704DD7A8()
{
  OUTLINED_FUNCTION_21_3();
  v0 = sub_2705D6384();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_4_0();
  type metadata accessor for MessagePageJavascriptService();
  swift_allocObject();
  v1 = swift_unknownObjectRetain();
  sub_2704AA8BC(v1, 0);

  sub_2705D6374();
  sub_2705D6914();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF910);
  v2 = OUTLINED_FUNCTION_4_47();
  *(v2 + 16) = xmmword_2705DC030;
  v3 = OUTLINED_FUNCTION_2_51(v2);
  v4(v3);
  OUTLINED_FUNCTION_9_7();
  v5 = sub_2705D68C4();

  v6 = OUTLINED_FUNCTION_5_50();
  v7(v6);
  return v5;
}

uint64_t sub_2704DD934()
{
  v0 = sub_2705D6384();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = v12 - v5;
  type metadata accessor for DestinationFactory();
  v12[1] = swift_allocObject();
  sub_2705D6374();
  sub_2705D6654();
  sub_2705D6364();
  sub_2705D6914();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF910);
  v7 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_2705DC030;
  (*(v1 + 16))(v8 + v7, v6, v0);
  sub_2705D68C4();
  v9 = sub_2705D68E4();

  v10 = *(v1 + 8);
  v10(v4, v0);
  v10(v6, v0);
  return v9;
}

uint64_t sub_2704DDB3C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D5020);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v13 - v2;
  v4 = sub_2705D67B4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2705D6654();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2705D6644();
  sub_2703B4F68();
  sub_2705D67C4();
  sub_2705D6614();
  sub_2705D6604();
  (*(v1 + 8))(v3, v0);
  (*(v5 + 8))(v7, v4);
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_2704DDD78@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_2705D6C24();
  v3 = MEMORY[0x277D22188];
  a1[3] = v2;
  a1[4] = v3;
  __swift_allocate_boxed_opaque_existential_1Tm(a1);
  return sub_2705D6C14();
}

uint64_t sub_2704DDDBC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2705D6DE4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2705D6914();
  sub_2705D6904();
  sub_2705D68B4();

  sub_2704DDEB8(a1);
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_2704DDEB8@<X0>(uint64_t a1@<X8>)
{
  v35[1] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807CF490);
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v35[0] = v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v40 = v35 - v6;
  v7 = MEMORY[0x28223BE20](v5);
  v37 = v35 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v36 = v35 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v13 = v35 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = v35 - v14;
  v16 = sub_2705D6DA4();
  v17 = objc_allocWithZone(type metadata accessor for BuyActionImplementation());
  v18 = sub_2703C86D8(v16);
  sub_2705D6914();
  sub_2705D6A14();
  v41 = v18;
  v19 = *(v2 + 16);
  v39 = v15;
  v19(v15, v13, v1);
  sub_2704DEC90(&qword_2807D4FD0, type metadata accessor for BuyActionImplementation);
  sub_2705D69E4();
  v20 = *(v2 + 8);
  v2 += 8;
  v20(v13, v1);

  v21 = v36;
  sub_2705D6A14();
  v38 = v13;
  v22 = v21;
  v19(v13, v21, v1);
  sub_2704DECD8();
  sub_2705D69E4();
  v20(v21, v1);
  v23 = v37;
  sub_2705D6A14();
  v19(v22, v23, v1);
  sub_2704DED2C();
  sub_2705D69E4();
  v20(v23, v1);
  v24 = v40;
  sub_2705D6A14();
  v19(v23, v24, v1);
  sub_2704DED80();
  sub_2705D69E4();
  v20(v24, v1);
  v25 = v35[0];
  sub_2705D6A14();
  v19(v24, v25, v1);
  sub_2704DEDD4();
  sub_2705D69E4();
  v20(v25, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF930);
  v26 = *(v2 + 64);
  v27 = (*(v2 + 72) + 32) & ~*(v2 + 72);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_2705F38E0;
  v29 = v28 + v27;
  v19(v29, v39, v1);
  v19((v29 + v26), v38, v1);
  v30 = v36;
  v19((v29 + 2 * v26), v36, v1);
  v31 = v37;
  v19((v29 + 3 * v26), v37, v1);
  v32 = v29 + 4 * v26;
  v33 = v40;
  v19(v32, v40, v1);
  sub_2703D3E64(v28);
  swift_setDeallocating();
  sub_2704890E4();
  v20(v33, v1);
  v20(v31, v1);
  v20(v30, v1);
  v20(v38, v1);
  return (v20)(v39, v1);
}

uint64_t sub_2704DE3C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a2;
  v64 = sub_2705D6994();
  v62 = *(v64 - 8);
  v3 = MEMORY[0x28223BE20](v64);
  v59 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v60 = &v51 - v5;
  v61 = sub_2705D6CF4();
  v58 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v67 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_2705D6DE4();
  v7 = *(v66 - 8);
  v8 = MEMORY[0x28223BE20](v66);
  v65 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v68 = &v51 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF450);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v56 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v51 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v51 - v17;
  sub_2705D6914();
  sub_2705D6904();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF458);
  sub_2705D68B4();

  sub_2705D6904();
  v19 = sub_2705D6ED4();
  sub_2705D6894();

  if (__swift_getEnumTagSinglePayload(v16, 1, v19) == 1)
  {
    __swift_project_boxed_opaque_existential_1(v74, v74[3]);
    v20 = v18;
    sub_2705D6874();
    if (__swift_getEnumTagSinglePayload(v16, 1, v19) != 1)
    {
      sub_2704DEBD4(v16);
    }
  }

  else
  {
    (*(*(v19 - 8) + 32))(v18, v16, v19);
    v20 = v18;
    __swift_storeEnumTagSinglePayload(v18, 0, 1, v19);
  }

  sub_2705D6904();
  v21 = v68;
  v22 = v66;
  sub_2705D68B4();

  v57 = v7;
  v55 = *(v7 + 16);
  v55(v65, v21, v22);
  sub_2703B4E54(v74, &v70);
  v23 = [objc_opt_self() mainBundle];
  sub_2705D6CE4();
  if (*(a1 + 8) == 1)
  {
    v24 = 0;
    v25 = 0;
LABEL_9:
    v29 = sub_2705D7494();
    sub_27046BFF4(v29);
    v31 = v30;
    v33 = v32;
    v53 = v34;

    sub_2703AE980(v24, v25, 255);
    v52 = v31;
    v25 = v33;
    goto LABEL_10;
  }

  v24 = *(a1 + 24);
  v25 = *(a1 + 32);
  v26 = *(a1 + 40);
  if (v26 == 255)
  {
    goto LABEL_9;
  }

  v27 = *(a1 + 24);
  v28 = *(a1 + 32);
  v53 = *(a1 + 40);
  sub_2703AE9FC(v27, v28, v26);
  v52 = v24;
LABEL_10:
  v54 = v20;
  v35 = v56;
  sub_2703CAAEC(v20, v56, &qword_2807CF450);
  v36 = v65;
  v37 = v68;
  v38 = v66;
  v39 = v55;
  v55(v65, v68, v66);
  v40 = *(a1 + 16);
  v70 = *a1;
  v71 = v40;
  v41 = *(a1 + 48);
  v72 = *(a1 + 32);
  v73 = v41;
  v42 = type metadata accessor for UMMetricsEventRecorder();
  swift_allocObject();
  sub_2703CAAEC(a1, v69, &unk_2807D47E0);
  v43 = sub_27053241C(v35, v36, &v70);
  v39(v36, v37, v38);
  *(&v71 + 1) = &type metadata for UMMetricsEventLinter;
  *&v72 = sub_2704DEC3C();
  *&v70 = v52;
  *(&v70 + 1) = v25;
  LOBYTE(v71) = v53;
  v69[3] = v42;
  v69[4] = sub_2704DEC90(&qword_2807D4FC8, type metadata accessor for UMMetricsEventRecorder);
  v69[0] = v43;

  v44 = v59;
  sub_2705D6984();
  v45 = v60;
  v46 = v67;
  sub_2705D6974();
  v47 = v62;
  v48 = *(v62 + 8);
  v49 = v64;
  v48(v44, v64);
  (*(v47 + 16))(v44, v45, v49);
  sub_2705D69A4();

  v48(v45, v49);
  (*(v58 + 8))(v46, v61);
  (*(v57 + 8))(v68, v38);
  sub_2704DEBD4(v54);
  return __swift_destroy_boxed_opaque_existential_1(v74);
}

uint64_t sub_2704DEB68()
{
  if (*(v0 + 24) != 1)
  {

    v1 = *(v0 + 56);
    if (v1 != 255)
    {
      sub_2703AE630(*(v0 + 40), *(v0 + 48), v1);
    }

    if (*(v0 + 64))
    {
    }
  }

  return swift_deallocObject();
}

uint64_t sub_2704DEBD4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF450);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2704DEC3C()
{
  result = qword_2807D4FC0;
  if (!qword_2807D4FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D4FC0);
  }

  return result;
}

uint64_t sub_2704DEC90(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2704DECD8()
{
  result = qword_2807D4FD8;
  if (!qword_2807D4FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D4FD8);
  }

  return result;
}

unint64_t sub_2704DED2C()
{
  result = qword_2807D4FE0;
  if (!qword_2807D4FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D4FE0);
  }

  return result;
}

unint64_t sub_2704DED80()
{
  result = qword_2807D4FE8;
  if (!qword_2807D4FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D4FE8);
  }

  return result;
}

unint64_t sub_2704DEDD4()
{
  result = qword_2807D4FF0;
  if (!qword_2807D4FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D4FF0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_4_47()
{

  return swift_allocObject();
}

uint64_t sub_2704DEFBC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  sub_2705D7EC4();
  if (v4)
  {

    v12 = 0;
    memset(v11, 0, sizeof(v11));
    sub_2704E17AC(v11);
LABEL_5:
    v7 = sub_2705D7D84();
    swift_allocError();
    v9 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3608);
    *(v9 + 24) = a3;
    *(v9 + 32) = a4();
    sub_2705D7EE4();
    sub_2705D7D44();
    (*(*(v7 - 8) + 104))(v9, *MEMORY[0x277D84158], v7);
    return swift_willThrow();
  }

  sub_2703B291C(v11, v13);
  __swift_project_boxed_opaque_existential_1(v13, v14);
  if (sub_2705D80D4())
  {
    __swift_destroy_boxed_opaque_existential_1(v13);
    goto LABEL_5;
  }

  __swift_mutable_project_boxed_opaque_existential_1(v13, v14);
  sub_270480728();
  sub_2705D80B4();
  return __swift_destroy_boxed_opaque_existential_1(v13);
}

uint64_t sub_2704DF1A8(char a1)
{
  v11 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D5030);
  sub_2705D7EC4();
  if (v1)
  {

    v8 = 0;
    memset(v7, 0, sizeof(v7));
    sub_2704E17AC(v7);
LABEL_5:
    v3 = sub_2705D7D84();
    swift_allocError();
    v5 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3608);
    *(v5 + 24) = &type metadata for OfferButtonModel.ButtonModelsCodingKeys;
    *(v5 + 32) = sub_2704E0854();
    *v5 = a1;
    sub_2705D7EE4();
    sub_2705D7D44();
    (*(*(v3 - 8) + 104))(v5, *MEMORY[0x277D84158], v3);
    return swift_willThrow();
  }

  sub_2703B291C(v7, v9);
  __swift_project_boxed_opaque_existential_1(v9, v10);
  if (sub_2705D80D4())
  {
    __swift_destroy_boxed_opaque_existential_1(v9);
    goto LABEL_5;
  }

  __swift_mutable_project_boxed_opaque_existential_1(v9, v10);
  sub_270480728();
  sub_2705D80B4();
  return __swift_destroy_boxed_opaque_existential_1(v9);
}

UnifiedMessagingKit::OfferButtonModel::Style_optional __swiftcall OfferButtonModel.Style.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2705D7EB4();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t OfferButtonModel.Style.rawValue.getter()
{
  v1 = 1819044208;
  if (*v0 != 1)
  {
    v1 = 1954047348;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656E6961746E6F63;
  }
}

uint64_t sub_2704DF484@<X0>(uint64_t *a1@<X8>)
{
  result = OfferButtonModel.Style.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t OfferButtonModel.action.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  v4 = *(v1 + 24);
  *(a1 + 24) = v4;

  return sub_2703AE9E8(v2, v3, v4);
}

__n128 OfferButtonModel.action.setter(__n128 *a1)
{
  v8 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u8[8];
  v4 = v1->n128_i64[1];
  v5 = v1[1].n128_i64[0];
  v6 = v1[1].n128_i8[8];

  sub_2703AE980(v4, v5, v6);
  result = v8;
  *v1 = v8;
  v1[1].n128_u64[0] = v2;
  v1[1].n128_u8[8] = v3;
  return result;
}

uint64_t OfferButtonModel.title.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[5];
  v3 = v1[6];
  v4 = v1[7];
  *a1 = v1[4];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
}

__n128 OfferButtonModel.title.setter(__n128 *a1)
{
  v5 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u64[1];

  result = v5;
  v1[2] = v5;
  v1[3].n128_u64[0] = v2;
  v1[3].n128_u64[1] = v3;
  return result;
}

__n128 OfferButtonModel.disclaimer.setter(uint64_t a1)
{
  sub_2703C3A5C(*(v1 + 64), *(v1 + 72));
  result = *a1;
  v4 = *(a1 + 16);
  *(v1 + 64) = *a1;
  *(v1 + 80) = v4;
  return result;
}

__n128 OfferButtonModel.subtitle.setter(uint64_t a1)
{
  sub_2703C3A5C(*(v1 + 96), *(v1 + 104));
  result = *a1;
  v4 = *(a1 + 16);
  *(v1 + 96) = *a1;
  *(v1 + 112) = v4;
  return result;
}

__n128 OfferButtonModel.init(action:style:title:disclaimer:subtitle:)@<Q0>(uint64_t a1@<X0>, char *a2@<X1>, __int128 *a3@<X2>, _OWORD *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v9 = *(a1 + 16);
  v10 = *(a1 + 24);
  v11 = *a2;
  v12 = *a3;
  v13 = *(a3 + 2);
  v14 = *(a3 + 3);
  *a6 = *a1;
  *(a6 + 16) = v9;
  *(a6 + 24) = v10;
  *(a6 + 25) = v11;
  *(a6 + 32) = v12;
  *(a6 + 48) = v13;
  *(a6 + 56) = v14;
  v15 = OUTLINED_FUNCTION_5_29();
  sub_2703C3A5C(v15, v16);
  v17 = a4[1];
  *(a6 + 64) = *a4;
  *(a6 + 80) = v17;
  v18 = OUTLINED_FUNCTION_5_29();
  sub_2703C3A5C(v18, v19);
  result = *a5;
  v21 = *(a5 + 16);
  *(a6 + 96) = *a5;
  *(a6 + 112) = v21;
  return result;
}

unint64_t sub_2704DF888(char a1)
{
  result = 0x6E6F69746361;
  switch(a1)
  {
    case 1:
      v3 = 1819898995;
      goto LABEL_5;
    case 2:
      v3 = 1819568500;
LABEL_5:
      result = v3 & 0xFFFF0000FFFFFFFFLL | 0x6500000000;
      break;
    case 3:
      result = 0x6D69616C63736964;
      break;
    case 4:
      result = 0x656C746974627573;
      break;
    default:
      return result;
  }

  return result;
}

BOOL sub_2704DF92C()
{
  v0 = sub_2705D7EB4();

  return v0 != 0;
}

BOOL sub_2704DF974()
{
  v0 = sub_2705D7EB4();

  return v0 != 0;
}

uint64_t sub_2704DF9C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2704E09A4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2704DF9EC(uint64_t a1)
{
  v2 = sub_2704E0854();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2704DFA28(uint64_t a1)
{
  v2 = sub_2704E0854();

  return MEMORY[0x2821FE720](a1, v2);
}

BOOL sub_2704DFA70@<W0>(_BYTE *a1@<X8>)
{
  result = sub_2704DF92C();
  *a1 = result;
  return result;
}

uint64_t sub_2704DFAA4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_27042277C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

BOOL sub_2704DFACC@<W0>(_BYTE *a1@<X8>)
{
  result = sub_2704DF92C();
  *a1 = result;
  return result;
}

uint64_t sub_2704DFAF8(uint64_t a1)
{
  v2 = sub_2704E08FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2704DFB34(uint64_t a1)
{
  v2 = sub_2704E08FC();

  return MEMORY[0x2821FE720](a1, v2);
}

BOOL sub_2704DFB7C@<W0>(_BYTE *a1@<X8>)
{
  result = sub_2704DF974();
  *a1 = result;
  return result;
}

uint64_t sub_2704DFBB0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2703B0BFC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

BOOL sub_2704DFBD8@<W0>(_BYTE *a1@<X8>)
{
  result = sub_2704DF974();
  *a1 = result;
  return result;
}

uint64_t sub_2704DFC04(uint64_t a1)
{
  v2 = sub_2704E0800();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2704DFC40(uint64_t a1)
{
  v2 = sub_2704E0800();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t OfferButtonModel.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v82 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D5028);
  OUTLINED_FUNCTION_0();
  v84 = v4;
  v85 = v3;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v5);
  v86 = &v70 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D5030);
  OUTLINED_FUNCTION_0();
  v87 = v8;
  v88 = v7;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v9);
  v89 = &v70 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D5038);
  OUTLINED_FUNCTION_0();
  v90 = v11;
  v91 = v12;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v13);
  v92 = &v70 - v14;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CEA98);
  OUTLINED_FUNCTION_0();
  v96 = v15;
  v17 = MEMORY[0x28223BE20](v16);
  v83 = (&v70 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v70 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v70 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v70 - v26;
  v28 = MEMORY[0x28223BE20](v25);
  v30 = &v70 - v29;
  MEMORY[0x28223BE20](v28);
  v32 = &v70 - v31;
  v33 = a1[3];
  v95 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v33);
  sub_270480728();
  v34 = v120;
  sub_2705D8484();
  if (v34)
  {
    goto LABEL_4;
  }

  v120 = v27;
  v94 = v24;
  v79 = v21;
  v81 = v30;
  LOBYTE(v98) = 2;
  sub_2704E0800();
  v35 = v93;
  sub_2705D7ED4();
  sub_2704DEFBC(&qword_2807D5038, &unk_2705FD360, &type metadata for OfferButtonModel.ModelsCodingKeys, sub_2704E0800);
  LOBYTE(v98) = 2;
  sub_2704E0854();
  sub_2705D7ED4();
  v36 = v120;
  sub_2704DF1A8(2);
  sub_270530C94(&v98);
  v47 = v96;
  v78 = *(v96 + 1);
  v78(v36, v35);
  if (!v99)
  {
    v37 = sub_2705D7D84();
    swift_allocError();
    v39 = v38;
    v120 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D3608) + 48);
    *(v39 + 24) = &type metadata for OfferButtonModel.CodingKeys;
    *(v39 + 32) = sub_2704E08A8();
    *v39 = 2;
    v40 = v93;
    sub_2705D7EE4();
    sub_2705D7D44();
    (*(*(v37 - 8) + 104))(v39, *MEMORY[0x277D84158], v37);
    swift_willThrow();
    v41 = OUTLINED_FUNCTION_10_35();
    v42(v41);
    v30 = (v47 + 8);
    v43 = *(v47 + 8);
    v43(v81, v40);
    v44 = OUTLINED_FUNCTION_8_38();
    v45(v44);
    v43(v32, v40);
LABEL_4:
    OUTLINED_FUNCTION_4_48();
    v120 = 0;
    v94 = 0;
    __swift_destroy_boxed_opaque_existential_1(v95);
    sub_2703C3A5C(v96, v30);
    return sub_2703C3A5C(0, 0);
  }

  v80 = v99;
  v72 = v98;
  v73 = v100;
  v74 = v101;
  v48 = v94;
  sub_2704DF1A8(4);
  sub_270530C94(&v98);
  v78(v48, v93);
  v75 = v99;
  v76 = v98;
  v120 = v100;
  v94 = v101;
  v49 = OUTLINED_FUNCTION_5_29();
  sub_2703C3A5C(v49, v50);
  sub_2704DF1A8(3);
  v77 = v32;
  sub_270530C94(&v98);
  v51 = OUTLINED_FUNCTION_12_30();
  v52(v51);
  v53 = v99;
  v96 = v98;
  v55 = v100;
  v54 = v101;
  v56 = OUTLINED_FUNCTION_5_29();
  sub_2703C3A5C(v56, v57);
  LOBYTE(v98) = 3;
  sub_2704E08FC();
  sub_2705D7ED4();
  sub_2704E0950();
  sub_2705D7FA4();
  LODWORD(v79) = v98;
  v58 = v83;
  v59 = v89;
  sub_2704DF1A8(0);
  v60 = v87;
  sub_2703ADE54(&v114);
  OUTLINED_FUNCTION_6_45();
  v58();
  v61 = OUTLINED_FUNCTION_7_35();
  v62(v61);
  (*(v60 + 8))(v89, v88);
  (v58)(v81, v59);
  v63 = OUTLINED_FUNCTION_9_38();
  v64(v63);
  (v58)(v77, v59);
  v91 = v115;
  v92 = v114;
  v90 = v116;
  LODWORD(v93) = v117;
  v97[0] = v114;
  v97[1] = v115;
  v97[2] = v116;
  LOBYTE(v97[3]) = v117;
  BYTE1(v97[3]) = v79;
  *(&v97[3] + 2) = v118;
  HIWORD(v97[3]) = v119;
  v65 = v80;
  v97[4] = v72;
  v97[5] = v80;
  v67 = v74;
  v66 = v75;
  v97[6] = v73;
  v97[7] = v74;
  v97[8] = v96;
  v97[9] = v53;
  v97[10] = v55;
  v97[11] = v54;
  v71 = v54;
  v68 = v76;
  v97[12] = v76;
  v97[13] = v75;
  v69 = v94;
  v97[14] = v120;
  v97[15] = v94;
  memcpy(v82, v97, 0x80uLL);
  sub_2704A2980(v97, &v98);
  __swift_destroy_boxed_opaque_existential_1(v95);
  v98 = v92;
  v99 = v91;
  v100 = v90;
  LOBYTE(v101) = v93;
  BYTE1(v101) = v79;
  *(&v101 + 2) = v118;
  HIWORD(v101) = v119;
  v102 = v72;
  v103 = v65;
  v104 = v73;
  v105 = v67;
  v106 = v96;
  v107 = v53;
  v108 = v55;
  v109 = v71;
  v110 = v68;
  v111 = v66;
  v112 = v120;
  v113 = v69;
  return sub_2704A2A2C(&v98);
}

unint64_t sub_2704E0800()
{
  result = qword_2807D5040;
  if (!qword_2807D5040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D5040);
  }

  return result;
}

unint64_t sub_2704E0854()
{
  result = qword_2807D5048;
  if (!qword_2807D5048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D5048);
  }

  return result;
}

unint64_t sub_2704E08A8()
{
  result = qword_2807D5050;
  if (!qword_2807D5050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D5050);
  }

  return result;
}

unint64_t sub_2704E08FC()
{
  result = qword_2807D5058;
  if (!qword_2807D5058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D5058);
  }

  return result;
}

unint64_t sub_2704E0950()
{
  result = qword_2807D5060;
  if (!qword_2807D5060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D5060);
  }

  return result;
}

uint64_t sub_2704E09A4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F69746361 && a2 == 0xE600000000000000;
  if (v4 || (OUTLINED_FUNCTION_5_30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656C797473 && a2 == 0xE500000000000000;
    if (v6 || (OUTLINED_FUNCTION_5_30() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
      if (v7 || (OUTLINED_FUNCTION_5_30() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6D69616C63736964 && a2 == 0xEA00000000007265;
        if (v8 || (OUTLINED_FUNCTION_5_30() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000)
        {

          return 4;
        }

        else
        {
          v10 = OUTLINED_FUNCTION_5_30();

          if (v10)
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

uint64_t sub_2704E0B0C(uint64_t a1)
{
  v2 = sub_2704E08A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2704E0B48(uint64_t a1)
{
  v2 = sub_2704E08A8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t OfferButtonModel.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D5068);
  OUTLINED_FUNCTION_0();
  v43 = v3;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v4);
  v6 = &v30 - v5;
  v7 = *v1;
  v8 = *(v1 + 8);
  v9 = *(v1 + 16);
  v48 = *(v1 + 25);
  v10 = *(v1 + 32);
  v40 = *(v1 + 40);
  v41 = v10;
  v11 = *(v1 + 48);
  v38 = *(v1 + 56);
  v39 = v11;
  v12 = *(v1 + 72);
  v34 = *(v1 + 64);
  v35 = v12;
  v13 = *(v1 + 80);
  v36 = *(v1 + 88);
  v37 = v13;
  v14 = *(v1 + 104);
  v30 = *(v1 + 96);
  v31 = v14;
  v15 = *(v1 + 112);
  v32 = *(v1 + 120);
  v33 = v15;
  v17 = a1[3];
  v16 = a1[4];
  v18 = *(v1 + 24);
  v19 = a1;
  v21 = v20;
  __swift_project_boxed_opaque_existential_1(v19, v17);

  sub_2703AE9E8(v8, v9, v18);
  sub_2704E08A8();
  v22 = v6;
  sub_2705D84C4();
  v44 = v7;
  v45 = v8;
  v46 = v9;
  LOBYTE(v47) = v18;
  v49 = 0;
  sub_2703C38C8();
  v23 = v6;
  v24 = v42;
  sub_2705D8084();
  if (v24)
  {
    OUTLINED_FUNCTION_6_5();
    sub_2703AE980(v18, v6, v16);
    return (*(v43 + 8))(v6, v21);
  }

  else
  {
    v26 = v39;
    v27 = v40;
    v28 = v41;
    OUTLINED_FUNCTION_6_5();
    sub_2703AE980(v18, v23, v16);
    LOBYTE(v44) = v48;
    v49 = 1;
    sub_2704E0EA8();
    sub_2705D8084();
    v44 = v28;
    v45 = v27;
    v46 = v26;
    v47 = v38;
    v49 = 2;
    sub_2703C3970();

    OUTLINED_FUNCTION_1_56();
    sub_2705D8084();

    v44 = v34;
    v45 = v35;
    v46 = v37;
    v47 = v36;
    v49 = 3;
    sub_2703C3A18(v34, v35);
    OUTLINED_FUNCTION_1_56();
    sub_2705D8024();
    sub_2703C3A5C(v44, v45);
    v29 = v43;
    v44 = v30;
    v45 = v31;
    v46 = v33;
    v47 = v32;
    v49 = 4;
    sub_2703C3A18(v30, v31);
    OUTLINED_FUNCTION_1_56();
    sub_2705D8024();
    sub_2703C3A5C(v44, v45);
    return (*(v29 + 8))(v22, v21);
  }
}

unint64_t sub_2704E0EA8()
{
  result = qword_2807D5070;
  if (!qword_2807D5070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D5070);
  }

  return result;
}

unint64_t sub_2704E0F00()
{
  result = qword_2807D5078;
  if (!qword_2807D5078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D5078);
  }

  return result;
}

uint64_t sub_2704E0F84(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 128))
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

uint64_t sub_2704E0FC4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 128) = 1;
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

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for OfferButtonModel.Style(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x2704E1100);
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

_BYTE *sub_2704E1160(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x2704E122CLL);
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

_BYTE *sub_2704E1264(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x2704E1300);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_2704E133C()
{
  result = qword_2807D5080;
  if (!qword_2807D5080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D5080);
  }

  return result;
}

unint64_t sub_2704E1394()
{
  result = qword_2807D5088;
  if (!qword_2807D5088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D5088);
  }

  return result;
}

unint64_t sub_2704E13EC()
{
  result = qword_2807D5090;
  if (!qword_2807D5090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D5090);
  }

  return result;
}

unint64_t sub_2704E1444()
{
  result = qword_2807D5098;
  if (!qword_2807D5098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D5098);
  }

  return result;
}

unint64_t sub_2704E149C()
{
  result = qword_2807D50A0;
  if (!qword_2807D50A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D50A0);
  }

  return result;
}

unint64_t sub_2704E14F4()
{
  result = qword_2807D50A8;
  if (!qword_2807D50A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D50A8);
  }

  return result;
}

unint64_t sub_2704E154C()
{
  result = qword_2807D50B0;
  if (!qword_2807D50B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D50B0);
  }

  return result;
}

unint64_t sub_2704E15A4()
{
  result = qword_2807D50B8;
  if (!qword_2807D50B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D50B8);
  }

  return result;
}

unint64_t sub_2704E15FC()
{
  result = qword_2807D50C0;
  if (!qword_2807D50C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D50C0);
  }

  return result;
}

unint64_t sub_2704E1654()
{
  result = qword_2807D50C8;
  if (!qword_2807D50C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D50C8);
  }

  return result;
}

unint64_t sub_2704E16AC()
{
  result = qword_2807D50D0;
  if (!qword_2807D50D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D50D0);
  }

  return result;
}

unint64_t sub_2704E1704()
{
  result = qword_2807D50D8;
  if (!qword_2807D50D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D50D8);
  }

  return result;
}

unint64_t sub_2704E1758()
{
  result = qword_2807D50E0;
  if (!qword_2807D50E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D50E0);
  }

  return result;
}

uint64_t sub_2704E17AC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D50E8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2704E1814()
{
  result = qword_2807D50F8;
  if (!qword_2807D50F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D50F8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  *a5 = a1;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return sub_2703C3A18(a1, a2);
}

void OUTLINED_FUNCTION_11_32()
{
  v0[5] = 0;
  v0[6] = 0;
  *(v1 - 72) = 0;
  v0[24] = 0;
}

uint64_t sub_2704E192C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for OpenURLAction(0);
  v5 = a2 + v4[5];
  v24 = 0;
  *&v6 = OUTLINED_FUNCTION_34_13();
  *v5 = v6;
  *(v5 + 16) = v6;
  *(v5 + 32) = 0;
  sub_2703F92B0(v23, v5, &unk_2807CF480);
  v7 = a2 + v4[6];
  v24 = 0;
  *&v8 = OUTLINED_FUNCTION_34_13();
  *v7 = v8;
  *(v7 + 16) = v8;
  *(v7 + 32) = 0;
  sub_2703F92B0(v23, v7, &unk_2807CF480);
  sub_2705D6764();
  v9 = *(a1 + 24);
  if (v9 != 254)
  {
    v10 = a1[1];
    v11 = a1[2];
    v19 = *a1;
    v20 = v10;
    v21 = v11;
    v22 = v9;

    sub_2703AE9E8(v10, v11, v9);
    sub_2703B3B04(&v19);
    OUTLINED_FUNCTION_42_6();
    sub_2703C2EFC(v5, &qword_2807CF2D8);
    *v5 = 0u;
    *(v5 + 16) = 0u;
    *(v5 + 32) = 0;
    sub_2703F92B0(v23, v5, &unk_2807CF480);
  }

  v12 = *(a1 + 56);
  if (v12 != 254)
  {
    v13 = a1[5];
    v14 = a1[6];
    v19 = a1[4];
    v20 = v13;
    v21 = v14;
    v22 = v12;

    sub_2703AE9E8(v13, v14, v12);
    sub_2703B3B04(&v19);
    OUTLINED_FUNCTION_40_7();
    sub_2703C2EFC(v7, &qword_2807CF2D8);
    *v7 = 0u;
    *(v7 + 16) = 0u;
    *(v7 + 32) = 0;
    sub_2703F92B0(v23, v7, &unk_2807CF480);
  }

  v15 = *(type metadata accessor for OpenURLActionModel(0) + 24);
  v16 = v4[7];
  sub_2705D4484();
  OUTLINED_FUNCTION_14();
  (*(v17 + 16))(a2 + v16, a1 + v15);
  OUTLINED_FUNCTION_11_33();
  return sub_2704E5EC8();
}

uint64_t sub_2704E1B94(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CEDD0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v4);
  v6 = &v11 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF038);
  sub_2705D7104();
  OUTLINED_FUNCTION_21_3();
  v8 = sub_2705D78D4();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = a1;
  v9[5] = a2;
  v9[6] = v7;

  sub_2704E52D0(0, 0, v6, &unk_2705FDFA8, v9);

  return v7;
}

uint64_t sub_2704E1CC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for ExitAction();
  v9 = OUTLINED_FUNCTION_1_1(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  sub_2704E4F20(a1, &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = a3;
  *(v15 + 24) = a4;
  sub_2704E6374(&v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14);
  *(v15 + ((v13 + v14 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;

  return sub_2704E1B94(&unk_2705FE1D0, v15);
}

uint64_t sub_2704E1E14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OpenURLAction(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  sub_2704E4F20(a1, &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  sub_2704E6374(&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);
  *(v8 + ((v6 + v7 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;

  return sub_2704E1B94(&unk_2705FDF98, v8);
}

uint64_t sub_2704E1F54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  updated = type metadata accessor for UpdateStateAction();
  v7 = OUTLINED_FUNCTION_1_1(updated);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  sub_2704E4F20(a1, &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  sub_2704E6374(&v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12);
  *(v13 + ((v11 + v12 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;

  return sub_2704E1B94(&unk_2705FE1E8, v13);
}

uint64_t sub_2704E209C()
{
  v0[2] = sub_2705D78A4();
  v0[3] = sub_2705D7894();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_2704E217C;

  return sub_27041F4D8();
}

uint64_t sub_2704E217C()
{
  OUTLINED_FUNCTION_23_14();
  OUTLINED_FUNCTION_70();
  OUTLINED_FUNCTION_17_14();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_15();
  *v5 = v4;
  *(v6 + 40) = v0;

  v8 = sub_2705D7844();
  if (v0)
  {
    v9 = sub_2704E6774;
  }

  else
  {
    v9 = sub_2704E6778;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t sub_2704E22C4()
{
  v0[2] = sub_2705D78A4();
  v0[3] = sub_2705D7894();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_2704E217C;

  return sub_2704E4318();
}

uint64_t sub_2704E238C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = sub_2705D78A4();
  v4[3] = sub_2705D7894();
  v9 = swift_task_alloc();
  v4[4] = v9;
  *v9 = v4;
  v9[1] = sub_2704E2464;

  return sub_27053D848(a1, a3, a4, a2);
}

uint64_t sub_2704E2464()
{
  OUTLINED_FUNCTION_23_14();
  OUTLINED_FUNCTION_70();
  OUTLINED_FUNCTION_17_14();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_15();
  *v5 = v4;
  *(v6 + 40) = v0;

  v8 = sub_2705D7844();
  if (v0)
  {
    v9 = sub_2704E2608;
  }

  else
  {
    v9 = sub_2704E25AC;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t sub_2704E25AC()
{
  OUTLINED_FUNCTION_2_2();

  OUTLINED_FUNCTION_1_4();

  return v0();
}

uint64_t sub_2704E2608()
{
  OUTLINED_FUNCTION_2_2();

  OUTLINED_FUNCTION_1_4();

  return v0();
}

void OpenURLActionModel.successAction.getter(void *a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  *a1 = *v1;
  a1[1] = v3;
  a1[2] = v4;
  OUTLINED_FUNCTION_5_8(v2, v3, v4, *(v1 + 24), a1);
}

__n128 OpenURLActionModel.successAction.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_10_3(a1);
  sub_2703AFC10(*v2, *(v2 + 8), *(v2 + 16), *(v2 + 24));
  result = v5;
  *v2 = v5;
  *(v2 + 16) = v1;
  *(v2 + 24) = v3;
  return result;
}

void OpenURLActionModel.failureAction.getter(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  v4 = *(v1 + 48);
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  OUTLINED_FUNCTION_5_8(v2, v3, v4, *(v1 + 56), a1);
}

__n128 OpenURLActionModel.failureAction.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_10_3(a1);
  sub_2703AFC10(*(v2 + 32), *(v2 + 40), *(v2 + 48), *(v2 + 56));
  result = v5;
  *(v2 + 32) = v5;
  *(v2 + 48) = v1;
  *(v2 + 56) = v3;
  return result;
}

uint64_t OpenURLActionModel.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for OpenURLActionModel(0) + 24);
  sub_2705D4484();
  OUTLINED_FUNCTION_14();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t OpenURLActionModel.url.setter()
{
  v2 = OUTLINED_FUNCTION_4_41();
  v3 = *(type metadata accessor for OpenURLActionModel(v2) + 24);
  sub_2705D4484();
  OUTLINED_FUNCTION_14();
  v5 = *(v4 + 40);

  return v5(v1 + v3, v0);
}

uint64_t (*OpenURLActionModel.url.modify())(void, void)
{
  v0 = OUTLINED_FUNCTION_4_41();
  type metadata accessor for OpenURLActionModel(v0);
  return CGSizeMake;
}

uint64_t OpenURLActionModel.init(url:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = -2;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 32) = 0;
  *(a2 + 56) = -2;
  v4 = *(type metadata accessor for OpenURLActionModel(0) + 24);
  sub_2705D4484();
  OUTLINED_FUNCTION_14();
  v6 = *(v5 + 32);

  return v6(a2 + v4, a1);
}

uint64_t sub_2704E2950(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4173736563637573 && a2 == 0xED00006E6F697463;
  if (v4 || (sub_2705D8134() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x416572756C696166 && a2 == 0xED00006E6F697463;
    if (v6 || (sub_2705D8134() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 7107189 && a2 == 0xE300000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_2705D8134();

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

uint64_t sub_2704E2A70(char a1)
{
  if (!a1)
  {
    return 0x4173736563637573;
  }

  if (a1 == 1)
  {
    return 0x416572756C696166;
  }

  return 7107189;
}

uint64_t sub_2704E2AD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2704E2950(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2704E2AF8(uint64_t a1)
{
  v2 = sub_2704E2D58();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2704E2B34(uint64_t a1)
{
  v2 = sub_2704E2D58();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t OpenURLActionModel.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D5100);
  OUTLINED_FUNCTION_0();
  v7 = v6;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v8);
  v10 = &v20 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2704E2D58();
  sub_2705D84C4();
  v11 = *(v3 + 8);
  v12 = *(v3 + 16);
  v13 = *(v3 + 24);
  v22 = *v3;
  v23 = v11;
  v24 = v12;
  v25 = v13;
  v21 = 0;
  sub_2703B4AA0(v22, v11, v12, v13);
  sub_2703C38C8();
  OUTLINED_FUNCTION_26_16();
  OUTLINED_FUNCTION_58_0();
  if (!v2)
  {
    v14 = *(v3 + 40);
    v15 = *(v3 + 48);
    v16 = *(v3 + 56);
    v22 = *(v3 + 32);
    v23 = v14;
    v24 = v15;
    v25 = v16;
    v21 = 1;
    sub_2703B4AA0(v22, v14, v15, v16);
    OUTLINED_FUNCTION_26_16();
    OUTLINED_FUNCTION_58_0();
    type metadata accessor for OpenURLActionModel(0);
    LOBYTE(v22) = 2;
    sub_2705D4484();
    OUTLINED_FUNCTION_0_54();
    sub_2704E3100(v17, v18);
    sub_2705D8084();
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_2704E2D58()
{
  result = qword_2807D5108;
  if (!qword_2807D5108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D5108);
  }

  return result;
}

void OpenURLActionModel.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2705D4484();
  OUTLINED_FUNCTION_0();
  v21 = v5;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4_0();
  v9 = v8 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D5110);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v10);
  v11 = OUTLINED_FUNCTION_37_9();
  v12 = type metadata accessor for OpenURLActionModel(v11);
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_4_0();
  v16 = v15 - v14;
  *v16 = 0;
  *(v16 + 8) = 0;
  *(v16 + 16) = 0;
  *(v16 + 24) = -2;
  *(v16 + 40) = 0;
  *(v16 + 48) = 0;
  *(v16 + 32) = 0;
  *(v16 + 56) = -2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2704E2D58();
  sub_2705D8484();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    sub_2703AFC10(*v16, *(v16 + 8), *(v16 + 16), *(v16 + 24));
    sub_2703AFC10(*(v16 + 32), *(v16 + 40), *(v16 + 48), *(v16 + 56));
  }

  else
  {
    sub_2703C3EB0();
    OUTLINED_FUNCTION_30_13();
    OUTLINED_FUNCTION_3_17();
    *v16 = v23;
    *(v16 + 16) = v24;
    *(v16 + 24) = v25;
    OUTLINED_FUNCTION_30_13();
    OUTLINED_FUNCTION_3_17();
    *(v16 + 32) = v23;
    *(v16 + 48) = v24;
    *(v16 + 56) = v25;
    OUTLINED_FUNCTION_0_54();
    sub_2704E3100(v17, v18);
    sub_2705D7FA4();
    v19 = OUTLINED_FUNCTION_32_9();
    v20(v19);
    (*(v21 + 32))(v16 + *(v12 + 24), v9, v4);
    sub_2704E4F20(v16, a2);
    __swift_destroy_boxed_opaque_existential_1(a1);
    OUTLINED_FUNCTION_11_33();
    sub_2704E5EC8();
  }
}

uint64_t sub_2704E3100(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2704E318C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 236)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFE)
    {
      v5 = 254;
    }

    else
    {
      v5 = *(a1 + 24);
    }

    v6 = (v5 ^ 0xFF) - 1;
    if (v4 <= 0x11)
    {
      return 0;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v10 = sub_2705D4484();
    v11 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v11, a2, v10);
  }
}

uint64_t sub_2704E3230(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 236)
  {
    *(result + 24) = -2 - a2;
  }

  else
  {
    v7 = sub_2705D4484();
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

void sub_2704E32B0()
{
  sub_27042A850();
  if (v0 <= 0x3F)
  {
    sub_2705D4484();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

_BYTE *storeEnumTagSinglePayload for OpenURLActionModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x2704E3400);
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

unint64_t sub_2704E343C()
{
  result = qword_2807D5128;
  if (!qword_2807D5128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D5128);
  }

  return result;
}

unint64_t sub_2704E3494()
{
  result = qword_2807D5130;
  if (!qword_2807D5130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D5130);
  }

  return result;
}

unint64_t sub_2704E34EC()
{
  result = qword_2807D5138;
  if (!qword_2807D5138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D5138);
  }

  return result;
}

uint64_t sub_2704E3574(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_21_3();
  v6 = sub_2705D6774();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = v3;
LABEL_10:

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  if (a2 != 2147483646)
  {
    v7 = sub_2705D4484();
    v8 = v3 + *(a3 + 28);
    goto LABEL_10;
  }

  v9 = *(v3 + *(a3 + 20) + 24);
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  v10 = v9 - 1;
  if (v10 < 0)
  {
    v10 = -1;
  }

  return (v10 + 1);
}

uint64_t sub_2704E3664(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_21_3();
  result = sub_2705D6774();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = v4;
  }

  else
  {
    if (a3 == 2147483646)
    {
      *(v4 + *(a4 + 20) + 24) = a2;
      return result;
    }

    v9 = sub_2705D4484();
    v10 = v4 + *(a4 + 28);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

void sub_2704E3730()
{
  sub_2705D6774();
  if (v0 <= 0x3F)
  {
    sub_2703F16A4();
    if (v1 <= 0x3F)
    {
      sub_2705D4484();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_2704E37DC(uint64_t a1)
{
  result = sub_2704DED2C();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2704E3804(uint64_t a1)
{
  result = sub_2704E3100(&qword_2807CECB0, type metadata accessor for OpenURLAction);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2704E385C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x654D6E6F69746361 && a2 == 0xED00007363697274;
  if (v4 || (sub_2705D8134() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x4173736563637573 && a2 == 0xED00006E6F697463;
    if (v6 || (sub_2705D8134() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x416572756C696166 && a2 == 0xED00006E6F697463;
      if (v7 || (sub_2705D8134() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 7107189 && a2 == 0xE300000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_2705D8134();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_2704E39CC(char a1)
{
  result = 0x654D6E6F69746361;
  switch(a1)
  {
    case 1:
      result = 0x4173736563637573;
      break;
    case 2:
      result = 0x416572756C696166;
      break;
    case 3:
      result = 7107189;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2704E3A6C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D5160);
  OUTLINED_FUNCTION_0();
  v5 = v4;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v6);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2704E5E74();
  sub_2705D84C4();
  v18 = 0;
  sub_2705D6774();
  OUTLINED_FUNCTION_12_31();
  sub_2704E3100(v9, v10);
  OUTLINED_FUNCTION_25_2();
  if (!v1)
  {
    type metadata accessor for OpenURLAction(0);
    v17 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF2D8);
    sub_2703F34FC(&qword_2807CFE98, &qword_2807CFEA0);
    OUTLINED_FUNCTION_19_1();
    v16 = 2;
    OUTLINED_FUNCTION_19_1();
    v15 = 3;
    sub_2705D4484();
    OUTLINED_FUNCTION_0_54();
    sub_2704E3100(v11, v12);
    OUTLINED_FUNCTION_25_2();
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t sub_2704E3CBC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = sub_2705D4484();
  OUTLINED_FUNCTION_0();
  v29 = v3;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_4_0();
  v31 = v6 - v5;
  v35 = sub_2705D6774();
  OUTLINED_FUNCTION_0();
  v33 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_4_0();
  v34 = v10 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D5150);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v11);
  v12 = OUTLINED_FUNCTION_37_9();
  v13 = type metadata accessor for OpenURLAction(v12);
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_4_0();
  v17 = v16 - v15;
  v19 = v16 - v15 + *(v18 + 20);
  v39 = 0;
  v37 = 0u;
  v38 = 0u;
  *v19 = 0u;
  *(v19 + 16) = 0u;
  *(v19 + 32) = 0;
  sub_2703F92B0(&v37, v19, &unk_2807CF480);
  v20 = v17 + *(v13 + 24);
  v39 = 0;
  v37 = 0u;
  v38 = 0u;
  *v20 = 0u;
  *(v20 + 16) = 0u;
  *(v20 + 32) = 0;
  sub_2703F92B0(&v37, v20, &unk_2807CF480);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2704E5E74();
  sub_2705D8484();
  if (v36)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    sub_2703C2EFC(v19, &qword_2807CF2D8);
    return sub_2703C2EFC(v20, &qword_2807CF2D8);
  }

  else
  {
    LOBYTE(v37) = 0;
    OUTLINED_FUNCTION_12_31();
    sub_2704E3100(v21, v22);
    sub_2705D7FA4();
    (*(v33 + 32))(v17, v34, v35);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF2D8);
    v40 = 1;
    sub_2703F34FC(&qword_2807CFE48, &qword_2807CFE50);
    OUTLINED_FUNCTION_27_11();
    sub_2705D7FA4();
    sub_2703F92B0(&v37, v19, &qword_2807CF2D8);
    v40 = 2;
    OUTLINED_FUNCTION_27_11();
    sub_2705D7FA4();
    sub_2703F92B0(&v37, v20, &qword_2807CF2D8);
    LOBYTE(v37) = 3;
    OUTLINED_FUNCTION_0_54();
    sub_2704E3100(v23, v24);
    sub_2705D7FA4();
    v25 = OUTLINED_FUNCTION_22_15();
    v26(v25);
    (*(v29 + 32))(v17 + *(v13 + 28), v31, v32);
    v27 = OUTLINED_FUNCTION_10_36();
    sub_2704E4F20(v27, a2);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_2704E5EC8();
  }
}

uint64_t sub_2704E4200@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2704E385C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2704E4228(uint64_t a1)
{
  v2 = sub_2704E5E74();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2704E4264(uint64_t a1)
{
  v2 = sub_2704E5E74();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2704E4318()
{
  OUTLINED_FUNCTION_2_2();
  v0[13] = v1;
  v0[14] = v2;
  v0[12] = v3;
  v4 = type metadata accessor for OpenURLAction(0);
  v0[15] = v4;
  OUTLINED_FUNCTION_1_1(v4);
  v0[16] = v5;
  v0[17] = *(v6 + 64);
  v0[18] = swift_task_alloc();
  sub_2705D78A4();
  v0[19] = sub_2705D7894();
  v8 = sub_2705D7844();
  v0[20] = v8;
  v0[21] = v7;

  return MEMORY[0x2822009F8](sub_2704E440C, v8, v7);
}

uint64_t sub_2704E440C()
{
  OUTLINED_FUNCTION_67_2();
  v1 = v0[18];
  v3 = v0[15];
  v2 = v0[16];
  v4 = v0[13];
  v5 = OUTLINED_FUNCTION_10_36();
  sub_2704E4F20(v5, v1);
  v6 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v7 = swift_allocObject();
  sub_2704E6374(v1, v7 + v6);
  v8 = swift_allocObject();
  *(v8 + 16) = &unk_2705FDFE0;
  *(v8 + 24) = v7;
  v0[22] = sub_2704E1B94(&unk_2705FDFF0, v8);
  sub_2703FC5C0(v4 + *(v3 + 20), (v0 + 2), &qword_2807CF2D8);
  sub_2703FC5C0(v4 + *(v3 + 24), (v0 + 7), &qword_2807CF2D8);
  sub_2703C7D1C();
  v0[23] = v9;
  sub_2703C2EFC((v0 + 7), &unk_2807CF480);
  sub_2703C2EFC((v0 + 2), &unk_2807CF480);
  v10 = swift_task_alloc();
  v0[24] = v10;
  *v10 = v0;
  v10[1] = sub_2704E45E4;
  v11 = v0[12];

  return MEMORY[0x282180668](v11);
}

uint64_t sub_2704E45E4()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_70();
  v3 = v2;
  OUTLINED_FUNCTION_17_14();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_15();
  *v6 = v5;
  v3[25] = v0;

  if (v0)
  {
    v7 = v3[20];
    v8 = v3[21];
    v9 = sub_2704E475C;
  }

  else
  {

    v7 = v3[20];
    v8 = v3[21];
    v9 = sub_2704E46EC;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_2704E46EC()
{
  OUTLINED_FUNCTION_2_2();

  OUTLINED_FUNCTION_1_4();

  return v0();
}

uint64_t sub_2704E475C()
{
  OUTLINED_FUNCTION_23_14();

  OUTLINED_FUNCTION_1_4();

  return v0();
}

uint64_t sub_2704E47DC(uint64_t a1, uint64_t a2)
{
  v2[42] = a1;
  v2[43] = a2;
  sub_2705D6524();
  v2[44] = swift_task_alloc();
  sub_2705D78A4();
  v2[45] = sub_2705D7894();
  v4 = sub_2705D7844();

  return MEMORY[0x2822009F8](sub_2704E48A0, v4, v3);
}

uint64_t sub_2704E48A0()
{
  v1 = *(v0 + 344);

  v2 = *(type metadata accessor for OpenURLAction(0) + 28);
  v3 = sub_2704E4EB8();
  if ((v3 & 0x100) != 0)
  {
    v13 = v3;
    if (qword_2807CE820 != -1)
    {
      OUTLINED_FUNCTION_15_27();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D42D0);
    OUTLINED_FUNCTION_21_3();
    v14 = sub_2705D6574();
    OUTLINED_FUNCTION_1_1(v14);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_2705E10F0;
    *(v0 + 40) = &type metadata for OpenURLActionImplementation;
    v16 = AMSLogKey();
    if (v16)
    {
      v17 = v16;
      v18 = v0 + 144;
      v19 = sub_2705D7564();
      v21 = v20;

      sub_2705D6514();
      OUTLINED_FUNCTION_12_20();
      __swift_project_boxed_opaque_existential_1((v0 + 16), &type metadata for OpenURLActionImplementation);
      DynamicType = swift_getDynamicType();
      *(v0 + 136) = swift_getMetatypeMetadata();
      *(v0 + 112) = DynamicType;
      sub_2705D64E4();
      sub_2703C2EFC(v0 + 112, &unk_2807D4890);
      sub_2705D6504();
      *(v0 + 168) = MEMORY[0x277D837D0];
      *(v0 + 144) = v19;
      *(v0 + 152) = v21;
    }

    else
    {
      v18 = v0 + 48;
      sub_2705D6514();
      OUTLINED_FUNCTION_12_20();
      __swift_project_boxed_opaque_existential_1((v0 + 16), &type metadata for OpenURLActionImplementation);
      v27 = swift_getDynamicType();
      *(v0 + 72) = swift_getMetatypeMetadata();
      *(v0 + 48) = v27;
    }

    sub_2705D64E4();
    sub_2703C2EFC(v18, &unk_2807D4890);
    sub_2705D6504();
    sub_2705D6534();
    __swift_destroy_boxed_opaque_existential_1(v0 + 16);
    sub_2705D64C4();
    *(v0 + 104) = &type metadata for OpenURLActionImplementation.ActionError;
    *(v0 + 80) = v13 & 1;
    sub_2705D6544();
    sub_2703C2EFC(v0 + 80, &unk_2807D4890);
    sub_27047CF78(v15);
    v26 = MEMORY[0x277D21CA0];
  }

  else
  {
    if (qword_2807CE820 != -1)
    {
      OUTLINED_FUNCTION_15_27();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D42D0);
    OUTLINED_FUNCTION_21_3();
    v4 = sub_2705D6574();
    OUTLINED_FUNCTION_1_1(v4);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_2705E10F0;
    *(v0 + 200) = &type metadata for OpenURLActionImplementation;
    v6 = AMSLogKey();
    if (v6)
    {
      v7 = v6;
      v8 = v0 + 304;
      v9 = sub_2705D7564();
      v11 = v10;

      sub_2705D6514();
      OUTLINED_FUNCTION_12_20();
      __swift_project_boxed_opaque_existential_1((v0 + 176), &type metadata for OpenURLActionImplementation);
      v12 = swift_getDynamicType();
      *(v0 + 296) = swift_getMetatypeMetadata();
      *(v0 + 272) = v12;
      sub_2705D64E4();
      sub_2703C2EFC(v0 + 272, &unk_2807D4890);
      sub_2705D6504();
      *(v0 + 328) = MEMORY[0x277D837D0];
      *(v0 + 304) = v9;
      *(v0 + 312) = v11;
    }

    else
    {
      v8 = v0 + 208;
      sub_2705D6514();
      OUTLINED_FUNCTION_12_20();
      __swift_project_boxed_opaque_existential_1((v0 + 176), &type metadata for OpenURLActionImplementation);
      v23 = swift_getDynamicType();
      *(v0 + 232) = swift_getMetatypeMetadata();
      *(v0 + 208) = v23;
    }

    sub_2705D64E4();
    sub_2703C2EFC(v8, &unk_2807D4890);
    sub_2705D6504();
    sub_2705D6534();
    __swift_destroy_boxed_opaque_existential_1(v0 + 176);
    sub_2705D64C4();
    v24 = sub_2705D4484();
    *(v0 + 264) = v24;
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm((v0 + 240));
    (*(*(v24 - 8) + 16))(boxed_opaque_existential_1Tm, v1 + v2, v24);
    sub_2705D6544();
    sub_2703C2EFC(v0 + 240, &unk_2807D4890);
    sub_27047CF60(v5);
    v26 = MEMORY[0x277D21CA8];
  }

  v28 = *(v0 + 336);

  v29 = *v26;
  sub_2705D6784();
  OUTLINED_FUNCTION_14();
  (*(v30 + 104))(v28, v29);

  OUTLINED_FUNCTION_1_4();

  return v31();
}

uint64_t sub_2704E4EB8()
{
  v0 = objc_opt_self();
  v1 = sub_2705D43C4();
  LODWORD(v0) = [v0 openStandardURL_];

  return v0 ^ 1 | ((v0 ^ 1) << 8);
}

uint64_t sub_2704E4F20(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_21_3();
  v4(v3);
  OUTLINED_FUNCTION_14();
  v5 = OUTLINED_FUNCTION_10_10();
  v6(v5);
  return a2;
}

uint64_t sub_2704E4F78(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a6;
  v8 = sub_2705D6784();
  v6[3] = v8;
  v6[4] = *(v8 - 8);
  v9 = swift_task_alloc();
  v6[5] = v9;
  v12 = (a4 + *a4);
  v10 = swift_task_alloc();
  v6[6] = v10;
  *v10 = v6;
  v10[1] = sub_2704E50D8;

  return v12(v9);
}

uint64_t sub_2704E50D8()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_70();
  OUTLINED_FUNCTION_17_14();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_15();
  *v5 = v4;
  *(v6 + 56) = v0;

  if (v0)
  {
    v7 = sub_2704E5260;
  }

  else
  {
    v7 = sub_2704E51D8;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2704E51D8()
{
  OUTLINED_FUNCTION_23_14();
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  sub_2705D70E4();
  (*(v2 + 8))(v1, v3);

  OUTLINED_FUNCTION_1_4();

  return v4();
}

uint64_t sub_2704E5260()
{
  OUTLINED_FUNCTION_2_2();
  v1 = *(v0 + 56);
  sub_2705D70D4();

  OUTLINED_FUNCTION_1_4();

  return v2();
}

uint64_t sub_2704E52D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CEDD0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v22 - v10;
  sub_2703FC5C0(a3, v22 - v10, &qword_2807CEDD0);
  v12 = sub_2705D78D4();
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    sub_2703C2EFC(v11, &qword_2807CEDD0);
  }

  else
  {
    sub_2705D78C4();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  if (*(a5 + 16))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v13 = sub_2705D7844();
    v15 = v14;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v16 = sub_2705D75F4() + 32;
      v17 = swift_allocObject();
      *(v17 + 16) = a4;
      *(v17 + 24) = a5;

      if (v15 | v13)
      {
        v23[0] = 0;
        v23[1] = 0;
        v18 = v23;
        v23[2] = v13;
        v23[3] = v15;
      }

      else
      {
        v18 = 0;
      }

      v22[1] = 7;
      v22[2] = v18;
      v22[3] = v16;
      v20 = swift_task_create();

      sub_2703C2EFC(a3, &qword_2807CEDD0);

      return v20;
    }
  }

  else
  {
    v13 = 0;
    v15 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_2703C2EFC(a3, &qword_2807CEDD0);
  v19 = swift_allocObject();
  *(v19 + 16) = a4;
  *(v19 + 24) = a5;
  if (v15 | v13)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v13;
    v23[7] = v15;
  }

  return swift_task_create();
}

uint64_t sub_2704E55AC(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2704E6770;

  return v6(a1);
}

uint64_t sub_2704E56A4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_270414FA4;

  return sub_2704E209C();
}

uint64_t sub_2704E5768()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_270414FA4;

  return sub_2704E22C4();
}

uint64_t sub_2704E5818()
{
  type metadata accessor for OpenURLAction(0);
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_45_7();
  OUTLINED_FUNCTION_14();
  (*(v2 + 8))(v1);
  v3 = OUTLINED_FUNCTION_21_18();
  if (v4)
  {
    __swift_destroy_boxed_opaque_existential_1(v3);
  }

  v5 = OUTLINED_FUNCTION_18_16();
  if (v6)
  {
    __swift_destroy_boxed_opaque_existential_1(v5);
  }

  v7 = *(v0 + 28);
  sub_2705D4484();
  OUTLINED_FUNCTION_14();
  (*(v8 + 8))(v1 + v7);

  OUTLINED_FUNCTION_35_11();

  return swift_deallocObject();
}

uint64_t sub_2704E5934()
{
  OUTLINED_FUNCTION_67_2();
  v0 = OUTLINED_FUNCTION_4_41();
  v1 = type metadata accessor for OpenURLAction(v0);
  OUTLINED_FUNCTION_1_1(v1);
  OUTLINED_FUNCTION_20_15();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_12_12(v2);
  *v3 = v4;
  v3[1] = sub_270414FA4;
  v5 = OUTLINED_FUNCTION_19_15();

  return v6(v5);
}

uint64_t sub_2704E5A24()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_2704E5A6C(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_12_12(v8);
  *v9 = v10;
  v9[1] = sub_270414FA4;

  return sub_2704E4F78(a1, v3, v4, v5, v6, v7);
}

uint64_t sub_2704E5B40()
{

  return swift_deallocObject();
}

uint64_t sub_2704E5B78()
{
  OUTLINED_FUNCTION_23_14();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_12_12(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_2_37(v1);

  return v4(v3);
}

uint64_t sub_2704E5C0C()
{
  type metadata accessor for OpenURLAction(0);
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_45_7();
  OUTLINED_FUNCTION_14();
  (*(v2 + 8))(v1);
  v3 = OUTLINED_FUNCTION_21_18();
  if (v4)
  {
    __swift_destroy_boxed_opaque_existential_1(v3);
  }

  v5 = OUTLINED_FUNCTION_18_16();
  if (v6)
  {
    __swift_destroy_boxed_opaque_existential_1(v5);
  }

  v7 = *(v0 + 28);
  sub_2705D4484();
  OUTLINED_FUNCTION_14();
  (*(v8 + 8))(v1 + v7);
  OUTLINED_FUNCTION_35_11();

  return swift_deallocObject();
}

uint64_t sub_2704E5D14()
{
  OUTLINED_FUNCTION_23_14();
  v2 = OUTLINED_FUNCTION_4_41();
  v3 = *(type metadata accessor for OpenURLAction(v2) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_12_12(v5);
  *v6 = v7;
  v6[1] = sub_270411828;

  return sub_2704E47DC(v0, v1 + v4);
}

uint64_t sub_2704E5DE0()
{
  OUTLINED_FUNCTION_23_14();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_12_12(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_2_37(v1);

  return v4(v3);
}

unint64_t sub_2704E5E74()
{
  result = qword_2807D5158;
  if (!qword_2807D5158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D5158);
  }

  return result;
}

uint64_t sub_2704E5EC8()
{
  v1 = OUTLINED_FUNCTION_4_41();
  v2(v1);
  OUTLINED_FUNCTION_14();
  (*(v3 + 8))(v0);
  return v0;
}

_BYTE *storeEnumTagSinglePayload for OpenURLAction.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x2704E5FE8);
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

_BYTE *storeEnumTagSinglePayload for OpenURLActionImplementation.ActionError(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x2704E60ECLL);
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

unint64_t sub_2704E6128()
{
  result = qword_2807D5168;
  if (!qword_2807D5168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D5168);
  }

  return result;
}

unint64_t sub_2704E6180()
{
  result = qword_2807D5170;
  if (!qword_2807D5170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D5170);
  }

  return result;
}

unint64_t sub_2704E61D8()
{
  result = qword_2807D5178;
  if (!qword_2807D5178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D5178);
  }

  return result;
}

unint64_t sub_2704E6230()
{
  result = qword_2807D5180;
  if (!qword_2807D5180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D5180);
  }

  return result;
}

uint64_t sub_2704E6284()
{
  type metadata accessor for ExitAction();
  OUTLINED_FUNCTION_34_0();

  OUTLINED_FUNCTION_45_7();
  OUTLINED_FUNCTION_14();
  (*(v1 + 8))(v0);
  v2 = OUTLINED_FUNCTION_21_18();
  if (v3)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  v4 = OUTLINED_FUNCTION_18_16();
  if (v5)
  {
    __swift_destroy_boxed_opaque_existential_1(v4);
  }

  OUTLINED_FUNCTION_35_11();

  return swift_deallocObject();
}

uint64_t sub_2704E6374(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_21_3();
  v4(v3);
  OUTLINED_FUNCTION_14();
  v5 = OUTLINED_FUNCTION_10_10();
  v6(v5);
  return a2;
}

uint64_t sub_2704E63CC()
{
  OUTLINED_FUNCTION_67_2();
  OUTLINED_FUNCTION_4_41();
  v0 = type metadata accessor for ExitAction();
  OUTLINED_FUNCTION_1_1(v0);
  OUTLINED_FUNCTION_20_15();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_12_12(v1);
  *v2 = v3;
  v2[1] = sub_270414FA4;
  v4 = OUTLINED_FUNCTION_19_15();

  return v5(v4);
}

uint64_t sub_2704E64C0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v8 = *a2;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_270411828;

  return sub_2704E238C(a1, v8, a3, a4);
}

uint64_t sub_2704E6578()
{
  type metadata accessor for UpdateStateAction();
  OUTLINED_FUNCTION_34_0();

  OUTLINED_FUNCTION_45_7();
  OUTLINED_FUNCTION_14();
  (*(v1 + 8))(v0);
  v2 = OUTLINED_FUNCTION_21_18();
  if (v3)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  v4 = OUTLINED_FUNCTION_18_16();
  if (v5)
  {
    __swift_destroy_boxed_opaque_existential_1(v4);
  }

  OUTLINED_FUNCTION_35_11();

  return swift_deallocObject();
}

uint64_t sub_2704E6674()
{
  OUTLINED_FUNCTION_67_2();
  OUTLINED_FUNCTION_4_41();
  updated = type metadata accessor for UpdateStateAction();
  OUTLINED_FUNCTION_1_1(updated);
  OUTLINED_FUNCTION_20_15();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_12_12(v1);
  *v2 = v3;
  v2[1] = sub_270411828;
  v4 = OUTLINED_FUNCTION_19_15();

  return v5(v4);
}

uint64_t OUTLINED_FUNCTION_15_27()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_26_16()
{

  return sub_2705D8024();
}

uint64_t OUTLINED_FUNCTION_30_13()
{

  return sub_2705D7F44();
}

void OUTLINED_FUNCTION_40_7()
{

  sub_2703AFC10(v2, v3, v1, v0);
}

void OUTLINED_FUNCTION_42_6()
{

  sub_2703AFC10(v2, v3, v1, v0);
}

uint64_t OUTLINED_FUNCTION_45_7()
{

  return sub_2705D6774();
}

uint64_t sub_2704E6954(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6449746E657665 && a2 == 0xE700000000000000;
  if (v4 || (sub_2705D8134() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x795468636E75616CLL && a2 == 0xEA00000000006570;
    if (v6 || (sub_2705D8134() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 1701273968 && a2 == 0xE400000000000000;
      if (v7 || (sub_2705D8134() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x73746E65746E6F63 && a2 == 0xE800000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_2705D8134();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_2704E6AB4(char a1)
{
  result = 0x6449746E657665;
  switch(a1)
  {
    case 1:
      result = 0x795468636E75616CLL;
      break;
    case 2:
      result = 1701273968;
      break;
    case 3:
      result = 0x73746E65746E6F63;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2704E6B44(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D51A8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2704E8FEC();
  sub_2705D84C4();
  v14 = 0;
  sub_2705D8034();
  if (!v2)
  {
    v13 = 1;
    sub_2705D7FF4();
    v12 = 2;
    sub_2705D8034();
    v11 = *(v3 + 48);
    v10[15] = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D45F0);
    sub_2704B307C(&qword_2807D4618, sub_2704B30F4);
    sub_2705D8084();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_2704E6D54@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D5198);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2704E8FEC();
  sub_2705D8484();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v28 = 0;
  v9 = sub_2705D7F54();
  v11 = v10;
  v27 = 1;
  v21 = sub_2705D7F04();
  v23 = v12;
  v26 = 2;
  v20 = sub_2705D7F54();
  v22 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D45F0);
  v25 = 3;
  sub_2704B307C(&qword_2807D45F8, sub_27046DEA4);
  sub_2705D7FA4();
  (*(v6 + 8))(v8, v5);
  v15 = v23;
  v14 = v24;

  v16 = v22;

  __swift_destroy_boxed_opaque_existential_1(a1);

  *a2 = v9;
  a2[1] = v11;
  v18 = v20;
  a2[2] = v21;
  a2[3] = v15;
  a2[4] = v18;
  a2[5] = v16;
  a2[6] = v14;
  return result;
}

uint64_t sub_2704E70A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2704E6954(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2704E70C8(uint64_t a1)
{
  v2 = sub_2704E8FEC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2704E7104(uint64_t a1)
{
  v2 = sub_2704E8FEC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2704E7140()
{
  v1 = *v0;

  return v1;
}

double sub_2704E7170@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_2704E6D54(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    result = *&v7;
    *(a2 + 32) = v7;
    *(a2 + 48) = v8;
  }

  return result;
}

void *sub_2704E7204()
{
  v0[2] = 0;
  v0[3] = 0;
  v1 = MEMORY[0x277D84F90];
  v0[4] = 0;
  v0[5] = v1;
  v0[6] = 0;
  swift_weakInit();
  swift_weakAssign();

  return v0;
}

uint64_t sub_2704E725C(uint64_t *a1, uint64_t a2, unsigned __int8 a3)
{
  v4 = v3;
  v6 = *a1;
  v5 = a1[1];
  v7 = a1[2];
  if (a3 < 2u)
  {
    swift_beginAccess();

    OUTLINED_FUNCTION_0_55();
    sub_2704E8CFC(v8);
    OUTLINED_FUNCTION_2_52();
    OUTLINED_FUNCTION_1_57();
    *(v9 + 56) = 1;
    v3[5] = v10;
LABEL_3:
    swift_endAccess();
    return sub_2704E74FC();
  }

  if (a2)
  {
    swift_beginAccess();
    v11 = v3[3];
    if (v11)
    {
      v12 = v3[2];
      v13 = v3[4];
      v14 = v12 == v6 && v11 == v5;
      if (!v14 && (sub_2705D8134() & 1) == 0 || (sub_270463AD0(v13, v7) & 1) == 0)
      {
        OUTLINED_FUNCTION_4_49();

        OUTLINED_FUNCTION_0_55();
        sub_2704E8CFC(v25);
        OUTLINED_FUNCTION_2_52();
        OUTLINED_FUNCTION_1_57();
        *(v26 + 56) = 0;
        goto LABEL_23;
      }

      if (v4[3])
      {
LABEL_24:
        v27 = v4[2];
        v28 = v4[3];
        v4[2] = v6;
        v4[3] = v5;
        v4[4] = v7;

LABEL_25:
        sub_270462E84(v27, v28);
        return sub_2704E74FC();
      }
    }

    OUTLINED_FUNCTION_4_49();

    OUTLINED_FUNCTION_0_55();
    sub_2704E8CFC(v15);
    OUTLINED_FUNCTION_2_52();
    OUTLINED_FUNCTION_1_57();
    *(v17 + 56) = 3;
LABEL_23:
    v4[5] = v16;
    swift_endAccess();
    goto LABEL_24;
  }

  swift_beginAccess();
  v18 = v3[3];
  if (!v18)
  {
    OUTLINED_FUNCTION_4_49();

    OUTLINED_FUNCTION_0_55();
    sub_2704E8CFC(v30);
    OUTLINED_FUNCTION_2_52();
    OUTLINED_FUNCTION_1_57();
    *(v31 + 56) = 3;
    v27 = v3[2];
    v28 = v4[3];
    v4[2] = v6;
    v4[3] = v5;
    v4[4] = v7;
    v4[5] = v32;

    swift_endAccess();
    goto LABEL_25;
  }

  v19 = v3[2];
  v20 = v3[4];
  v21 = v19 == v6 && v18 == v5;
  if (v21 || (sub_2705D8134()) && (sub_270463AD0(v20, v7))
  {
    OUTLINED_FUNCTION_4_49();

    OUTLINED_FUNCTION_0_55();
    sub_2704E8CFC(v22);
    OUTLINED_FUNCTION_2_52();
    OUTLINED_FUNCTION_1_57();
    *(v23 + 56) = 2;
    v4[5] = v24;
    goto LABEL_3;
  }

  return sub_2704E74FC();
}

uint64_t sub_2704E74FC()
{
  v1 = v0;
  v2 = *v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CEDD0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - v4;
  if (v0[6])
  {

    sub_2705D7974();
  }

  v6 = sub_2705D78D4();
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v6);
  sub_2705D78A4();

  v7 = sub_2705D7894();
  v8 = swift_allocObject();
  v9 = MEMORY[0x277D85700];
  v8[2] = v7;
  v8[3] = v9;
  v8[4] = v1;
  v8[5] = v2;
  sub_270482728();
  v1[6] = v10;
}

uint64_t sub_2704E7668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_2705D7DD4();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  sub_2705D78A4();
  v4[6] = sub_2705D7894();
  v7 = sub_2705D7844();
  v4[7] = v7;
  v4[8] = v6;

  return MEMORY[0x2822009F8](sub_2704E775C, v7, v6);
}

uint64_t sub_2704E775C()
{
  OUTLINED_FUNCTION_2_2();
  sub_2705D8304();
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  v1[1] = sub_2704E7824;

  return sub_2704E8810(100000000000000000, 0, 0, 0, 1);
}

uint64_t sub_2704E7824()
{
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_5_15();
  *v4 = v3;
  *v4 = *v1;

  v5 = v2[5];
  v6 = v2[4];
  v7 = v2[3];
  if (v0)
  {

    (*(v6 + 8))(v5, v7);
    v8 = v3[7];
    v9 = v3[8];
    v10 = sub_2704E924C;
  }

  else
  {
    (*(v6 + 8))(v5, v7);
    v8 = v3[7];
    v9 = v3[8];
    v10 = sub_2704E79B0;
  }

  return MEMORY[0x2822009F8](v10, v8, v9);
}

uint64_t sub_2704E79B0()
{
  OUTLINED_FUNCTION_2_2();
  if (sub_2705D7994())
  {

    OUTLINED_FUNCTION_1_4();

    return v1();
  }

  else
  {
    v3 = swift_task_alloc();
    *(v0 + 80) = v3;
    *v3 = v0;
    v3[1] = sub_2704E7A80;

    return sub_2704E7BF4();
  }
}

uint64_t sub_2704E7A80()
{
  OUTLINED_FUNCTION_2_2();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_5_15();
  *v3 = v2;

  v4 = *(v1 + 64);
  v5 = *(v1 + 56);

  return MEMORY[0x2822009F8](sub_2704E7B94, v5, v4);
}

uint64_t sub_2704E7B94()
{
  OUTLINED_FUNCTION_2_2();

  OUTLINED_FUNCTION_1_4();

  return v0();
}

uint64_t sub_2704E7BF4()
{
  v1[5] = v0;
  sub_2705D78A4();
  v1[6] = sub_2705D7894();
  v3 = sub_2705D7844();
  v1[7] = v3;
  v1[8] = v2;

  return MEMORY[0x2822009F8](sub_2704E7C8C, v3, v2);
}

uint64_t sub_2704E7C8C()
{
  v1 = v0[5];
  swift_beginAccess();
  v2 = *(v1 + 40);
  v0[9] = v2;

  v3 = swift_task_alloc();
  v0[10] = v3;
  *v3 = v0;
  v3[1] = sub_2704E7D54;

  return sub_2704E7EFC(v2);
}

uint64_t sub_2704E7D54()
{
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_5_15();
  *v3 = v2;

  v4 = *(v1 + 64);
  v5 = *(v1 + 56);

  return MEMORY[0x2822009F8](sub_2704E7E90, v5, v4);
}

uint64_t sub_2704E7E90()
{
  OUTLINED_FUNCTION_2_2();
  v1 = *(v0 + 40);

  *(v1 + 40) = MEMORY[0x277D84F90];

  OUTLINED_FUNCTION_1_4();

  return v2();
}

uint64_t sub_2704E7EFC(uint64_t a1)
{
  v2[22] = a1;
  v2[23] = v1;
  v2[24] = *v1;
  sub_2705D6524();
  v2[25] = swift_task_alloc();
  sub_2705D78A4();
  v2[26] = sub_2705D7894();
  v4 = sub_2705D7844();
  v2[27] = v4;
  v2[28] = v3;

  return MEMORY[0x2822009F8](sub_2704E7FE8, v4, v3);
}

uint64_t sub_2704E7FE8()
{
  v1 = *(v0[22] + 16);
  if (v1 && (Strong = swift_weakLoadStrong(), (v0[29] = Strong) != 0))
  {
    v19 = v0;
    v3 = v0[22];
    v20 = MEMORY[0x277D84F90];
    sub_2704ADECC(0, v1, 0);
    v4 = (v3 + 56);
    do
    {
      v5 = *(v4 - 3);
      v6 = *(v4 - 2);
      v7 = *(v4 - 1);
      v8 = *v4;
      v4 += 32;

      v9 = 0xE900000000000072;
      v10 = 0uLL;
      v11 = 0x65746E4565676150;
      switch(v8)
      {
        case 1:
          v9 = 0xE800000000000000;
          v11 = 0x7469784565676150;
          break;
        case 2:
          OUTLINED_FUNCTION_7_36();
          v10 = xmmword_2705FE210;
          break;
        case 3:
          OUTLINED_FUNCTION_7_36();
          v10 = xmmword_2705FE200;
          break;
        default:
          break;
      }

      v13 = *(v20 + 16);
      v12 = *(v20 + 24);
      if (v13 >= v12 >> 1)
      {
        v18 = v10;
        sub_2704ADECC(v12 > 1, v13 + 1, 1);
        v10 = v18;
      }

      v19[32] = v20;
      *(v20 + 16) = v13 + 1;
      v14 = v20 + 56 * v13;
      *(v14 + 32) = v11;
      *(v14 + 40) = v9;
      *(v14 + 48) = v10;
      *(v14 + 64) = v5;
      *(v14 + 72) = v6;
      *(v14 + 80) = v7;
      --v1;
    }

    while (v1);
    v19[30] = sub_270493244(v20);
    v17 = swift_task_alloc();
    v19[31] = v17;
    *v17 = v19;
    v17[1] = sub_2704E8274;

    return MessageCenter.record(events:)();
  }

  else
  {

    OUTLINED_FUNCTION_1_4();

    return v15();
  }
}

uint64_t sub_2704E8274()
{
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_5_15();
  *v3 = v2;

  v4 = *(v1 + 224);
  v5 = *(v1 + 216);

  return MEMORY[0x2822009F8](sub_2704E83B0, v5, v4);
}

uint64_t sub_2704E83B0()
{

  if (qword_2807CE830 != -1)
  {
    swift_once();
  }

  v1 = v0[23];
  v2 = v0[24];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D42D0);
  sub_2705D6574();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_2705E6EB0;
  v0[5] = v2;
  v0[2] = v1;

  v4 = AMSLogKey();
  v5 = v0[24];
  if (v4)
  {
    v6 = v4;
    v7 = (v0 + 18);
    v8 = sub_2705D7564();
    v10 = v9;

    sub_2705D6514();
    sub_2705D6504();
    __swift_project_boxed_opaque_existential_1(v0 + 2, v5);
    DynamicType = swift_getDynamicType();
    v0[17] = swift_getMetatypeMetadata();
    v0[14] = DynamicType;
    sub_2705D64E4();
    sub_2704B667C((v0 + 14));
    sub_2705D6504();
    v0[21] = MEMORY[0x277D837D0];
    v0[18] = v8;
    v0[19] = v10;
  }

  else
  {
    v7 = (v0 + 6);
    sub_2705D6514();
    sub_2705D6504();
    __swift_project_boxed_opaque_existential_1(v0 + 2, v5);
    v12 = swift_getDynamicType();
    v0[9] = swift_getMetatypeMetadata();
    v0[6] = v12;
  }

  sub_2705D64E4();
  sub_2704B667C(v7);
  v13 = v0[32];
  sub_2705D6504();
  sub_2705D6534();
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  sub_2705D6514();
  sub_2705D6504();
  v14 = *(v13 + 16);

  v0[13] = MEMORY[0x277D83B88];
  v0[10] = v14;
  sub_2705D64E4();
  sub_2704B667C((v0 + 10));
  sub_2705D6504();
  sub_2705D6534();
  sub_27047CF60(v3);

  OUTLINED_FUNCTION_1_4();

  return v15();
}

uint64_t sub_2704E86E4()
{
  sub_270462E84(*(v0 + 16), *(v0 + 24));

  swift_weakDestroy();
  return v0;
}

uint64_t sub_2704E8728()
{
  sub_2704E86E4();

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

uint64_t sub_2704E8780(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_2704E87C0(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_2704E8810(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_2705D7DC4();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x2822009F8](sub_2704E8910, 0, 0);
}

uint64_t sub_2704E8910()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_2705D7DD4();
  v5 = sub_2704E8EE8(&qword_2807D5188, MEMORY[0x277D85928]);
  sub_2705D82E4();
  sub_2704E8EE8(&qword_2807D5190, MEMORY[0x277D858F8]);
  sub_2705D7DE4();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_2704E8AA0;
  v8 = v0[11];

  return MEMORY[0x2822008C8](v8, v0 + 2, v4, v5);
}

uint64_t sub_2704E8AA0()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v8 = *v1;
  OUTLINED_FUNCTION_5_15();
  *v5 = v8;
  *(v8 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2704E8C50, 0, 0);
  }

  else
  {

    OUTLINED_FUNCTION_1_4();

    return v6();
  }
}

uint64_t sub_2704E8C50()
{
  OUTLINED_FUNCTION_2_2();

  OUTLINED_FUNCTION_1_4();

  return v0();
}

uint64_t sub_2704E8CFC(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result)
  {
    result = a1(result, *(v3 + 16) + 1, 1, v3);
    *v1 = result;
  }

  return result;
}

uint64_t sub_2704E8DA0(uint64_t result, uint64_t (*a2)(BOOL))
{
  v3 = *(*v2 + 24);
  if (result + 1 > (v3 >> 1))
  {
    result = a2(v3 > 1);
    *v2 = result;
  }

  return result;
}

uint64_t sub_2704E8DE8()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_2704E8E28(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2703DF738;

  return sub_2704E7668(a1, v4, v5, v6);
}

uint64_t sub_2704E8EE8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2704E8F4C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFD && *(a1 + 25))
    {
      v2 = *a1 + 252;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 <= 3)
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

uint64_t sub_2704E8F8C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
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

unint64_t sub_2704E8FEC()
{
  result = qword_2807D51A0;
  if (!qword_2807D51A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D51A0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for NavigationEvent.NavigationEventCodable.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x2704E910CLL);
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

unint64_t sub_2704E9148()
{
  result = qword_2807D51B0;
  if (!qword_2807D51B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D51B0);
  }

  return result;
}

unint64_t sub_2704E91A0()
{
  result = qword_2807D51B8;
  if (!qword_2807D51B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D51B8);
  }

  return result;
}

unint64_t sub_2704E91F8()
{
  result = qword_2807D51C0;
  if (!qword_2807D51C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D51C0);
  }

  return result;
}

void OUTLINED_FUNCTION_1_57()
{
  v5 = *(v0 + 40);
  *(v5 + 16) = v4 + 1;
  v6 = (v5 + 32 * v4);
  v6[4] = v3;
  v6[5] = v2;
  v6[6] = v1;
}

uint64_t OUTLINED_FUNCTION_2_52()
{
  v3 = *(*(v0 + 40) + 16);

  return sub_2704E8DA0(v3, v1);
}

uint64_t OUTLINED_FUNCTION_4_49()
{

  return swift_beginAccess();
}

UnifiedMessagingKit::PageMetadata __swiftcall PageMetadata.init(page:content:)(Swift::String page, Swift::OpaquePointer content)
{
  *v2 = page;
  *(v2 + 16) = content;
  result.page = page;
  result.content = content;
  return result;
}

uint64_t static PageMetadata.== infix(_:_:)(void *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (!v2 && (sub_2705D8134() & 1) == 0)
  {
    return 0;
  }

  v3 = OUTLINED_FUNCTION_10_10();

  return sub_270463AD0(v3, v4);
}

uint64_t PageMetadata.Content.id.setter()
{
  OUTLINED_FUNCTION_6_46();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t PageMetadata.Content.type.setter()
{
  OUTLINED_FUNCTION_6_46();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t PageMetadata.Content.parentId.setter()
{
  OUTLINED_FUNCTION_6_46();

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t PageMetadata.Content.parentType.setter()
{
  OUTLINED_FUNCTION_6_46();

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t static PageMetadata.Content.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a1[7];
  v7 = a2[2];
  v8 = a2[3];
  v10 = a2[4];
  v9 = a2[5];
  v11 = *a1 == *a2 && a1[1] == a2[1];
  v12 = a2[7];
  v17 = a2[6];
  v18 = a1[6];
  if (!v11 && (sub_2705D8134() & 1) == 0)
  {
    return 0;
  }

  v13 = v2 == v7 && v4 == v8;
  if (!v13 && (sub_2705D8134() & 1) == 0)
  {
    return 0;
  }

  if (v5)
  {
    if (!v9)
    {
      return 0;
    }

    v14 = v3 == v10 && v5 == v9;
    if (!v14 && (sub_2705D8134() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  if (v6)
  {
    if (v12)
    {
      v15 = v18 == v17 && v6 == v12;
      if (v15 || (sub_2705D8134() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!v12)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_2704E9680(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_2705D8134() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1701869940 && a2 == 0xE400000000000000;
    if (v6 || (sub_2705D8134() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6449746E65726170 && a2 == 0xE800000000000000;
      if (v7 || (sub_2705D8134() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x7954746E65726170 && a2 == 0xEA00000000006570)
      {

        return 3;
      }

      else
      {
        v9 = sub_2705D8134();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_2704E97D8(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 1701869940;
      break;
    case 2:
      result = 0x6449746E65726170;
      break;
    case 3:
      result = 0x7954746E65726170;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2704E9864@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2704E9680(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2704E988C(uint64_t a1)
{
  v2 = sub_2704EA104();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2704E98C8(uint64_t a1)
{
  v2 = sub_2704EA104();

  return MEMORY[0x2821FE720](a1, v2);
}

void PageMetadata.Content.encode(to:)()
{
  OUTLINED_FUNCTION_10_1();
  v15 = v1;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D51E0);
  OUTLINED_FUNCTION_0();
  v6 = v5;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v7);
  v9 = v14 - v8;
  v10 = v0[2];
  v14[5] = v0[3];
  v14[6] = v10;
  v11 = v0[4];
  v14[3] = v0[5];
  v14[4] = v11;
  v12 = v0[6];
  v14[1] = v0[7];
  v14[2] = v12;
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_2704EA104();
  sub_2705D84C4();
  v13 = v15;
  sub_2705D8034();
  if (!v13)
  {
    OUTLINED_FUNCTION_4_50();
    sub_2705D8034();
    OUTLINED_FUNCTION_4_50();
    sub_2705D7FF4();
    OUTLINED_FUNCTION_4_50();
    sub_2705D7FF4();
  }

  (*(v6 + 8))(v9, v4);
  OUTLINED_FUNCTION_11_3();
}

uint64_t PageMetadata.Content.hash(into:)()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 56);
  sub_2705D7634();
  sub_2705D7634();
  if (!v1)
  {
    sub_2705D83D4();
    if (v2)
    {
      goto LABEL_3;
    }

    return sub_2705D83D4();
  }

  sub_2705D83D4();
  sub_2705D7634();
  if (!v2)
  {
    return sub_2705D83D4();
  }

LABEL_3:
  sub_2705D83D4();

  return sub_2705D7634();
}

uint64_t PageMetadata.Content.hashValue.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 56);
  sub_2705D83B4();
  sub_2705D7634();
  sub_2705D7634();
  sub_2705D83D4();
  if (v1)
  {
    sub_2705D7634();
  }

  sub_2705D83D4();
  if (v2)
  {
    sub_2705D7634();
  }

  return sub_2705D8414();
}

void PageMetadata.Content.init(from:)()
{
  OUTLINED_FUNCTION_10_1();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D51F0);
  OUTLINED_FUNCTION_0();
  v7 = v6;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v8);
  v10 = &v23 - v9;
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_2704EA104();
  sub_2705D8484();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    LOBYTE(v29[0]) = 0;
    OUTLINED_FUNCTION_3_51();
    v11 = sub_2705D7F54();
    v25 = v12;
    LOBYTE(v29[0]) = 1;
    OUTLINED_FUNCTION_3_51();
    *&v24 = sub_2705D7F54();
    *(&v24 + 1) = v13;
    LOBYTE(v29[0]) = 2;
    *&v23 = sub_2705D7F04();
    *(&v23 + 1) = v14;
    OUTLINED_FUNCTION_3_51();
    v15 = sub_2705D7F04();
    v17 = v16;
    (*(v7 + 8))(v10, v5);
    v18 = v25;
    *&v26[0] = v11;
    *(&v26[0] + 1) = v25;
    v19 = *(&v23 + 1);
    v20 = v24;
    v26[1] = v24;
    v27 = v23;
    *&v28 = v15;
    *(&v28 + 1) = v17;
    v21 = v24;
    *v4 = v26[0];
    v4[1] = v21;
    v22 = v28;
    v4[2] = v27;
    v4[3] = v22;
    sub_27049A1BC(v26, v29);
    __swift_destroy_boxed_opaque_existential_1(v2);
    v29[0] = v11;
    v29[1] = v18;
    v30 = __PAIR128__(*(&v24 + 1), v20);
    v31 = v23;
    v32 = v19;
    v33 = v15;
    v34 = v17;
    sub_27049A218(v29);
  }

  OUTLINED_FUNCTION_11_3();
}

uint64_t sub_2704E9F1C()
{
  sub_2705D83B4();
  PageMetadata.Content.hash(into:)();
  return sub_2705D8414();
}

uint64_t PageMetadata.page.setter()
{
  OUTLINED_FUNCTION_6_46();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t PageMetadata.content.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

void sub_2704EA054()
{
  qword_2807D51C8 = 0x636972656E6567;
  unk_2807D51D0 = 0xE700000000000000;
  qword_2807D51D8 = MEMORY[0x277D84F90];
}

uint64_t static PageMetadata.generic.getter@<X0>(void *a1@<X8>)
{
  if (qword_2807CE890 != -1)
  {
    swift_once();
  }

  v2 = unk_2807D51D0;
  v3 = qword_2807D51D8;
  *a1 = qword_2807D51C8;
  a1[1] = v2;
  a1[2] = v3;
}

unint64_t sub_2704EA104()
{
  result = qword_2807D51E8;
  if (!qword_2807D51E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D51E8);
  }

  return result;
}

uint64_t sub_2704EA158(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701273968 && a2 == 0xE400000000000000;
  if (v3 || (sub_2705D8134() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_2705D8134();

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

uint64_t sub_2704EA220(char a1)
{
  if (a1)
  {
    return 0x746E65746E6F63;
  }

  else
  {
    return 1701273968;
  }
}

uint64_t sub_2704EA258@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2704EA158(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2704EA280(uint64_t a1)
{
  v2 = sub_2704EA4B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2704EA2BC(uint64_t a1)
{
  v2 = sub_2704EA4B0();

  return MEMORY[0x2821FE720](a1, v2);
}

void PageMetadata.encode(to:)()
{
  OUTLINED_FUNCTION_10_1();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D51F8);
  OUTLINED_FUNCTION_0();
  v11 = v5;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v6);
  v8 = &v9 - v7;
  v10 = *(v0 + 16);
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_2704EA4B0();
  sub_2705D84C4();
  sub_2705D8034();
  if (!v1)
  {
    v12 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D45F0);
    sub_2704EA860(&qword_2807D4618, sub_2704B30F4);
    sub_2705D8084();
  }

  (*(v11 + 8))(v8, v4);
  OUTLINED_FUNCTION_11_3();
}

unint64_t sub_2704EA4B0()
{
  result = qword_2807D5200;
  if (!qword_2807D5200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D5200);
  }

  return result;
}

void PageMetadata.hash(into:)()
{
  sub_2705D7634();
  OUTLINED_FUNCTION_10_10();

  sub_270464040();
}

uint64_t PageMetadata.hashValue.getter()
{
  sub_2705D83B4();
  sub_2705D7634();
  sub_270464040();
  return sub_2705D8414();
}

void PageMetadata.init(from:)()
{
  OUTLINED_FUNCTION_10_1();
  v2 = v1;
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D5208);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v5);
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_2704EA4B0();
  sub_2705D8484();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    v6 = sub_2705D7F54();
    v8 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D45F0);
    sub_2704EA860(&qword_2807D45F8, sub_27046DEA4);
    sub_2705D7FA4();
    v9 = OUTLINED_FUNCTION_2_12();
    v10(v9);
    *v4 = v6;
    v4[1] = v8;
    v4[2] = v11;

    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  OUTLINED_FUNCTION_11_3();
}

uint64_t sub_2704EA7D0()
{
  sub_2705D83B4();
  sub_2705D7634();
  sub_270464040();
  return sub_2705D8414();
}

uint64_t sub_2704EA860(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D45F0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2704EA8DC()
{
  result = qword_2807D5210;
  if (!qword_2807D5210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D5210);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PageMetadata.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x2704EAA20);
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

_BYTE *storeEnumTagSinglePayload for PageMetadata.Content.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x2704EAB24);
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

unint64_t sub_2704EAB60()
{
  result = qword_2807D5218;
  if (!qword_2807D5218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D5218);
  }

  return result;
}

unint64_t sub_2704EABB8()
{
  result = qword_2807D5220;
  if (!qword_2807D5220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D5220);
  }

  return result;
}

unint64_t sub_2704EAC10()
{
  result = qword_2807D5228;
  if (!qword_2807D5228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D5228);
  }

  return result;
}

unint64_t sub_2704EAC68()
{
  result = qword_2807D5230;
  if (!qword_2807D5230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D5230);
  }

  return result;
}

unint64_t sub_2704EACC0()
{
  result = qword_2807D5238;
  if (!qword_2807D5238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D5238);
  }

  return result;
}

unint64_t sub_2704EAD18()
{
  result = qword_2807D5240;
  if (!qword_2807D5240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D5240);
  }

  return result;
}

unint64_t PageMetricsModel.metricsDictionary.getter()
{
  sub_27046CD54();
  v1 = sub_27046C7B8(v0);

  return v1;
}

__n128 PageMetricsModel.init(metrics:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  v2 = a1[1].n128_u8[0];
  result = *a1;
  *a2 = *a1;
  a2[1].n128_u8[0] = v2;
  return result;
}

uint64_t sub_2704EAE1C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x7363697274656DLL && a2 == 0xE700000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_2705D8134();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_2704EAEB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2704EAE1C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_2704EAEDC(uint64_t a1)
{
  v2 = sub_2704EB0C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2704EAF18(uint64_t a1)
{
  v2 = sub_2704EB0C0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PageMetricsModel.encode(to:)(void *a1)
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D5248);
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v7 = &v13 - v6;
  v8 = *v1;
  v9 = *(v1 + 8);
  v10 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2703AE9FC(v8, v9, v10);
  sub_2704EB0C0();
  sub_2705D84C4();
  v14 = v8;
  v15 = v9;
  v16 = v10;
  sub_2703C39C4();
  v11 = v13;
  sub_2705D8084();
  sub_2703AE630(v14, v15, v16);
  return (*(v4 + 8))(v7, v11);
}

unint64_t sub_2704EB0C0()
{
  result = qword_2807D5250;
  if (!qword_2807D5250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D5250);
  }

  return result;
}

uint64_t PageMetricsModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D5258);
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v13 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2704EB0C0();
  sub_2705D8484();
  if (!v2)
  {
    sub_2703C3FAC();
    sub_2705D7FA4();
    (*(v7 + 8))(v10, v5);
    v11 = v14;
    *a2 = v13;
    *(a2 + 16) = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

_BYTE *storeEnumTagSinglePayload for PageMetricsModel.CodingKeys(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x2704EB35CLL);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_2704EB398()
{
  result = qword_2807D5260;
  if (!qword_2807D5260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D5260);
  }

  return result;
}

unint64_t sub_2704EB3F0()
{
  result = qword_2807D5268;
  if (!qword_2807D5268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D5268);
  }

  return result;
}

unint64_t sub_2704EB448()
{
  result = qword_2807D5270;
  if (!qword_2807D5270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D5270);
  }

  return result;
}

uint64_t PageTracker.page.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[3];
  v3 = v1[4];
  *a1 = v1[2];
  a1[1] = v2;
  a1[2] = v3;
}

uint64_t PageTracker.__allocating_init(page:center:)(uint64_t *a1, uint64_t a2)
{
  OUTLINED_FUNCTION_0_56();
  v4 = swift_allocObject();
  PageTracker.init(page:center:)(a1, a2);
  return v4;
}

void *PageTracker.init(page:center:)(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v5 = *a1;
  v6 = a1[1];
  v7 = a1[2];
  v2[2] = *a1;
  v2[3] = v6;
  v2[4] = v7;
  OUTLINED_FUNCTION_0_56();
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = v5;
  v8[4] = v6;
  v8[5] = v7;
  type metadata accessor for ViewTransitionTracker();
  OUTLINED_FUNCTION_0_56();
  swift_allocObject();
  v3[5] = sub_27054C96C(sub_2704EB964, v8);
  v9 = objc_opt_self();

  v10 = [v9 defaultCenter];
  v11 = *MEMORY[0x277D76E48];
  v12 = objc_opt_self();

  v13 = [v12 mainQueue];
  v14 = swift_allocObject();
  swift_weakInit();
  v28 = sub_2704EC540;
  v29 = v14;
  aBlock = MEMORY[0x277D85DD0];
  v25 = 1107296256;
  v26 = sub_2704EBB6C;
  v27 = &block_descriptor_2;
  v15 = _Block_copy(&aBlock);

  v16 = [v10 addObserverForName:v11 object:v3 queue:v13 usingBlock:v15];
  _Block_release(v15);
  swift_unknownObjectRelease();

  v17 = [v9 defaultCenter];
  v18 = *MEMORY[0x277D76E58];

  v19 = [v12 mainQueue];
  v20 = swift_allocObject();
  swift_weakInit();

  v28 = sub_2704EC560;
  v29 = v20;
  aBlock = MEMORY[0x277D85DD0];
  v25 = 1107296256;
  v26 = sub_2704EBB6C;
  v27 = &block_descriptor_7;
  v21 = _Block_copy(&aBlock);

  v22 = [v17 addObserverForName:v18 object:v3 queue:v19 usingBlock:v21];
  _Block_release(v21);

  swift_unknownObjectRelease();

  return v3;
}

uint64_t sub_2704EB880(uint64_t a1, unsigned __int8 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_270487E10();

  v12[0] = a4;
  v12[1] = a5;
  v12[2] = a6;
  sub_2704E725C(v12, a1, a2);
}

uint64_t sub_2704EB920()
{

  OUTLINED_FUNCTION_0_56();

  return swift_deallocObject();
}

uint64_t sub_2704EB9E0(uint64_t a1, uint64_t a2)
{
  sub_2705D7894();

  swift_task_getMainExecutor();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    goto LABEL_8;
  }

  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  sub_2704EC938();
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_8:
    sub_2705D7D04();
    MEMORY[0x2743A3A90](0xD00000000000003FLL, 0x80000002706151B0);
    v8 = sub_2705D8504();
    MEMORY[0x2743A3A90](v8);

    MEMORY[0x2743A3A90](46, 0xE100000000000000);
    result = sub_2705D7E54();
    __break(1u);
  }

  return result;
}

uint64_t sub_2704EBB6C(uint64_t a1)
{
  v2 = sub_2705D4094();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 32);
  sub_2705D4084();

  v6(v5);

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_2704EBCD0(uint64_t a1, char a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    sub_27054C98C(a2 & 1);
  }

  return result;
}

uint64_t PageTracker.deinit()
{

  return v0;
}

uint64_t PageTracker.__deallocating_deinit()
{
  PageTracker.deinit();
  OUTLINED_FUNCTION_0_56();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_2704EBE14(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v5 = a1[1];
  v7 = a1[2];
  KeyPath = swift_getKeyPath();
  v10 = 0;
  v11 = v6;
  v12 = v5;
  v13 = v7;

  MEMORY[0x2743A2010](&KeyPath, a2, &type metadata for PageTrackerModifier, a3);
}

uint64_t sub_2704EBEC8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D5278);
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v4);
  v6 = &v17 - v5;
  v7 = v1[1];
  v20 = *v1;
  v21 = v7;
  v22 = *(v1 + 4);
  v8 = swift_allocObject();
  v9 = v1[1];
  *(v8 + 16) = *v1;
  *(v8 + 32) = v9;
  *(v8 + 48) = *(v1 + 4);
  v10 = &v6[*(v3 + 36)];
  v11 = *(type metadata accessor for DisplayObserverModifier() + 20);
  *&v10[v11] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D0C48);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for ViewTransitionTracker();
  OUTLINED_FUNCTION_0_56();
  swift_allocObject();
  *&v23 = sub_27054C96C(sub_2704EC6C4, v8);
  sub_2704EC6D4(&v20, v19);
  sub_2705D5E44();
  v12 = v19[1];
  *v10 = v19[0];
  *(v10 + 1) = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D5280);
  OUTLINED_FUNCTION_14();
  (*(v13 + 16))(v6, a1);
  v23 = v21;
  v24 = v22;
  v17 = v21;
  v18 = v22;
  v14 = swift_allocObject();
  v15 = v21;
  *(v14 + 16) = v20;
  *(v14 + 32) = v15;
  *(v14 + 48) = v22;
  sub_2704EC6D4(&v20, v19);
  sub_2704EC75C(&v23, v19);
  sub_2704EC7B8();
  sub_2703AECF0();
  sub_2705D5C04();

  return sub_2703C2EFC(v6, &qword_2807D5278);
}

uint64_t sub_2704EC150(uint64_t a1, unsigned __int8 a2, uint64_t *a3)
{
  v6 = sub_2705D5254();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v14[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v20 = *(a3 + 8);
  v19 = *a3;
  v10 = v20;

  if ((v10 & 1) == 0)
  {
    sub_2705D7A84();
    v11 = sub_2705D56A4();
    sub_2705D4C04();

    sub_2705D5244();
    swift_getAtKeyPath();
    sub_2703C2EFC(&v19, &qword_2807D5298);
    (*(v7 + 8))(v9, v6);
  }

  sub_270487E10();

  v17 = *(a3 + 1);
  v18 = a3[4];
  v15 = *(a3 + 1);
  v16 = a3[4];
  sub_2704EC75C(&v17, v14);
  sub_2704E725C(&v15, a1, a2);
}

uint64_t sub_2704EC344(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_2705D5254();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a2;
  v12 = *(a2 + 8);
  v15 = *a3;
  v16 = *(a3 + 8);
  LOBYTE(a3) = v16;

  if ((a3 & 1) == 0)
  {
    sub_2705D7A84();
    v10 = sub_2705D56A4();
    sub_2705D4C04();

    sub_2705D5244();
    swift_getAtKeyPath();
    sub_2703C2EFC(&v15, &qword_2807D5298);
    (*(v6 + 8))(v8, v5);
  }

  sub_270487E10();

  v13 = v9;
  v14 = v12;
  sub_2704E725C(&v13, 1, 2u);
}

uint64_t sub_2704EC508()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2704EC60C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_2704EC64C(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t objectdestroy_11Tm()
{

  return swift_deallocObject();
}

unint64_t sub_2704EC7B8()
{
  result = qword_2807D5288;
  if (!qword_2807D5288)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D5278);
    sub_2704EC844();
    sub_2704EC8A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D5288);
  }

  return result;
}

unint64_t sub_2704EC844()
{
  result = qword_2807D5290;
  if (!qword_2807D5290)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D5280);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D5290);
  }

  return result;
}

unint64_t sub_2704EC8A8()
{
  result = qword_2807D4750;
  if (!qword_2807D4750)
  {
    type metadata accessor for DisplayObserverModifier();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D4750);
  }

  return result;
}

uint64_t sub_2704EC980()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D5278);
  sub_2704EC7B8();
  sub_2703AECF0();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2704ECA10(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73646E696BLL && a2 == 0xE500000000000000;
  if (v4 || (sub_2705D8134() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F697461636F6CLL && a2 == 0xE800000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_2705D8134();

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

uint64_t sub_2704ECAD4(char a1)
{
  if (a1)
  {
    return 0x6E6F697461636F6CLL;
  }

  else
  {
    return 0x73646E696BLL;
  }
}

void sub_2704ECB08()
{
  OUTLINED_FUNCTION_10_1();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D53E0);
  OUTLINED_FUNCTION_0();
  v6 = v5;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_30_1();
  OUTLINED_FUNCTION_23_2(v3, v3[3]);
  sub_2704EFD94();
  sub_2705D84C4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D53C8);
  sub_2704EFDE8(&qword_2807D53E8, sub_2704EFEB4);
  sub_2705D8084();
  if (!v0)
  {
    sub_2705D8034();
  }

  (*(v6 + 8))(v1, v4);
  OUTLINED_FUNCTION_11_3();
}

uint64_t sub_2704ECCAC(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D53B8);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_30_1();
  v4 = a1[3];
  OUTLINED_FUNCTION_23_2(a1, v4);
  sub_2704EFD94();
  sub_2705D8484();
  if (!v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D53C8);
    sub_2704EFDE8(&qword_2807D53D0, sub_2704EFE60);
    OUTLINED_FUNCTION_18_17();
    sub_2705D7FA4();
    v4 = v8;
    sub_2705D7F54();
    v6 = OUTLINED_FUNCTION_0_42();
    v7(v6);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v4;
}

uint64_t sub_2704ECEA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2704ECA10(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2704ECED0(uint64_t a1)
{
  v2 = sub_2704EFD94();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2704ECF0C(uint64_t a1)
{
  v2 = sub_2704EFD94();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2704ECF48@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2704ECCAC(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

BOOL sub_2704ECF98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = (a4 + 48);
  v12 = *(a4 + 16) + 1;
  while (--v12)
  {
    v14 = *(v11 - 2);
    v13 = *(v11 - 1);
    if (v13 != a2 || *v11 != a3)
    {
      v11 += 3;
      v13 = sub_2705D8134();
      if ((v13 & 1) == 0)
      {
        continue;
      }
    }

    MEMORY[0x28223BE20](v13);
    v18[2] = a5;
    v18[3] = a6;
    v18[4] = a1;

    v16 = sub_2704ADB94(sub_2704ED1E0, v18, v14);

    return v16;
  }

  return 0;
}

uint64_t sub_2704ED0BC(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = 0xED000064616F6C79;
  v5 = 0x61506E6F74747562;
  if (*a1 != 1)
  {
    v5 = 0xD000000000000017;
    v4 = 0x8000000270612B20;
  }

  if (*a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0x7961506C6562616CLL;
  }

  if (*a1)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xEC00000064616F6CLL;
  }

  swift_getDynamicType();
  if (v6 == (*(a4 + 32))(a3, a4) && v7 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_2705D8134();
  }

  return v12 & 1;
}

uint64_t sub_2704ED204(char a1)
{
  if (!a1)
  {
    return 0x7961506C6562616CLL;
  }

  if (a1 == 1)
  {
    return 0x61506E6F74747562;
  }

  return 0xD000000000000017;
}

uint64_t sub_2704ED2D4()
{
  OUTLINED_FUNCTION_22_8();
  sub_2705D7EB4();
  OUTLINED_FUNCTION_26_8();
  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_2704ED338@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2704ED2D4();
  *a1 = result;
  return result;
}

uint64_t sub_2704ED368()
{
  v1 = OUTLINED_FUNCTION_16_11();
  result = sub_2704ED204(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_2704ED440(char a1)
{
  if (a1)
  {
    return 1954047348;
  }

  else
  {
    return 0x646E696B5FLL;
  }
}

uint64_t sub_2704ED490@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2704EE1C8();
  *a1 = result;
  return result;
}

uint64_t sub_2704ED4C8()
{
  v1 = OUTLINED_FUNCTION_16_11();
  result = sub_2704ED440(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_2704ED4F8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2704EE1C8();
  *a1 = result;
  return result;
}

uint64_t sub_2704ED528(uint64_t a1)
{
  v2 = sub_2704EEF60();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2704ED564(uint64_t a1)
{
  v2 = sub_2704EEF60();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_2704ED5A0()
{
  OUTLINED_FUNCTION_10_1();
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D5398);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_31_0();
  OUTLINED_FUNCTION_23_2(v2, v2[3]);
  sub_2704EEF60();
  sub_2705D84C4();
  OUTLINED_FUNCTION_17_21();
  OUTLINED_FUNCTION_6_1();
  sub_2705D8034();
  if (!v0)
  {
    OUTLINED_FUNCTION_27_2();
    sub_2703F97F4();

    OUTLINED_FUNCTION_6_1();
    sub_2705D8084();
  }

  v4 = OUTLINED_FUNCTION_8_39();
  v5(v4);
  OUTLINED_FUNCTION_11_3();
}

void sub_2704ED760()
{
  OUTLINED_FUNCTION_10_1();
  v2 = v1;
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D52B0);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_23_2(v2, v2[3]);
  sub_2704EEF60();
  OUTLINED_FUNCTION_14_31();
  if (!v0)
  {
    OUTLINED_FUNCTION_27_2();
    sub_2703F92FC();
    sub_2705D7FA4();
    v6 = OUTLINED_FUNCTION_19_16();
    v7(v6);
    *v4 = v8;
    *(v4 + 8) = v9;
    *(v4 + 16) = v10;
    *(v4 + 24) = v11;
    *(v4 + 40) = v12;
    *(v4 + 48) = v13;
  }

  __swift_destroy_boxed_opaque_existential_1(v2);
  OUTLINED_FUNCTION_11_3();
}

uint64_t sub_2704ED90C()
{
  sub_2705D83B4();
  sub_2705D7634();
  return sub_2705D8414();
}

uint64_t sub_2704ED9F0()
{
  OUTLINED_FUNCTION_22_8();
  sub_2705D7EB4();
  OUTLINED_FUNCTION_26_8();
  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_2704EDA6C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2704ED9F0();
  *a1 = result;
  return result;
}

uint64_t sub_2704EDA9C()
{
  v1 = OUTLINED_FUNCTION_16_11();
  result = sub_2704EDA30(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_2704EDACC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2704ED9F0();
  *a1 = result;
  return result;
}

uint64_t sub_2704EDAF4(uint64_t a1)
{
  v2 = sub_2704EF144();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2704EDB30(uint64_t a1)
{
  v2 = sub_2704EF144();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2704EDB6C(void *a1)
{
  v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D53A0);
  OUTLINED_FUNCTION_0();
  v8 = v7;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_31_0();
  OUTLINED_FUNCTION_23_2(a1, a1[3]);
  sub_2704EF144();
  sub_2705D84C4();
  OUTLINED_FUNCTION_13_29();
  OUTLINED_FUNCTION_6_1();
  sub_2705D8034();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF2D8);
    sub_2704EFC78(&qword_2807CFE98, &qword_2807CFEA0);
    OUTLINED_FUNCTION_6_1();
    sub_2705D8084();
    v11 = *(v4 + 40);
    v12 = *(v4 + 48);
    sub_2703F9848(v11, v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D0868);
    sub_2704EFD10();
    OUTLINED_FUNCTION_6_1();
    sub_2705D8084();
    sub_2703F8F8C(v11, v12);
  }

  return (*(v8 + 8))(v3, v6);
}

void sub_2704EDD88()
{
  OUTLINED_FUNCTION_10_1();
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D52E0);
  OUTLINED_FUNCTION_0();
  v8 = v7;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_30_1();
  v18 = 0;
  v16 = 0u;
  v17 = 0u;
  memset(v21, 0, sizeof(v21));
  v22 = 0;
  sub_27041F044(&v16, v21, &unk_2807CF480);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0;
  OUTLINED_FUNCTION_23_2(v3, v3[3]);
  sub_2704EF144();
  sub_2705D8484();
  if (!v0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF2D8);
    OUTLINED_FUNCTION_27_2();
    sub_2704EFC78(&qword_2807CFE48, &qword_2807CFE50);
    OUTLINED_FUNCTION_18_17();
    sub_2705D7FA4();
    sub_27041F044(&v16, v21, &qword_2807CF2D8);
    sub_2703F92FC();
    sub_2705D7FA4();
    v10 = v16;
    v15 = v17;
    v11 = v18;
    v14 = *(&v17 + 1);
    v12 = v19;
    v13 = v20;
    (*(v8 + 8))(v1, v6);
    sub_2703F8F8C(v23, *(&v23 + 1));
    v23 = v10;
    *&v24 = v15;
    *(&v24 + 1) = v14;
    *&v25 = v11;
    *(&v25 + 1) = v12;
    v26 = v13;
    sub_2704EF1C8(v21, v5);
  }

  __swift_destroy_boxed_opaque_existential_1(v3);
  sub_2704EF198(v21);
  OUTLINED_FUNCTION_11_3();
}

uint64_t sub_2704EE08C()
{
  sub_2705D83B4();
  sub_2705D7634();
  return sub_2705D8414();
}

uint64_t sub_2704EE13C()
{
  sub_2705D83B4();
  sub_2705D7634();
  return sub_2705D8414();
}

uint64_t sub_2704EE1C8()
{
  OUTLINED_FUNCTION_22_8();
  sub_2705D7EB4();
  OUTLINED_FUNCTION_26_8();
  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2704EE20C(char a1)
{
  if (a1)
  {
    return 0x64657463656C6573;
  }

  else
  {
    return 0x646E696B5FLL;
  }
}

uint64_t sub_2704EE268@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2704EE1C8();
  *a1 = result;
  return result;
}

uint64_t sub_2704EE2A0()
{
  v1 = OUTLINED_FUNCTION_16_11();
  result = sub_2704EE20C(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_2704EE2D0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2704EE1C8();
  *a1 = result;
  return result;
}

uint64_t sub_2704EE300(uint64_t a1)
{
  v2 = sub_2704EF040();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2704EE33C(uint64_t a1)
{
  v2 = sub_2704EF040();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2704EE378(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D53B0);
  OUTLINED_FUNCTION_0();
  v5 = v4;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v6);
  v8 = &v10[-v7];
  OUTLINED_FUNCTION_23_2(a1, a1[3]);
  sub_2704EF040();
  sub_2705D84C4();
  v10[15] = 0;
  sub_2705D8034();
  if (!v1)
  {
    v10[14] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF140);
    sub_2703AFBC8(&qword_2807CFE90, &qword_2807CF140);
    sub_2705D8084();
  }

  return (*(v5 + 8))(v8, v3);
}

void sub_2704EE52C()
{
  OUTLINED_FUNCTION_10_1();
  v2 = v1;
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D52C8);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_23_2(v2, v2[3]);
  sub_2704EF040();
  OUTLINED_FUNCTION_14_31();
  if (!v0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF140);
    OUTLINED_FUNCTION_27_2();
    sub_2703AFBC8(&qword_2807CFE40, &qword_2807CF140);
    sub_2705D7FA4();
    v6 = OUTLINED_FUNCTION_19_16();
    v7(v6);
    *v4 = v8;
    *(v4 + 16) = v9;
    *(v4 + 32) = v10;
  }

  __swift_destroy_boxed_opaque_existential_1(v2);
  OUTLINED_FUNCTION_11_3();
}

uint64_t sub_2704EE6B4()
{
  sub_2705D83B4();
  sub_2705D7634();
  return sub_2705D8414();
}

uint64_t sub_2704EE744()
{
  sub_2705D83B4();
  sub_2705D7634();
  return sub_2705D8414();
}

void *sub_2704EE7C8(void *a1)
{
  i = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, i);
  sub_2705D8444();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    for (i = MEMORY[0x277D84F90]; ; sub_2703B291C(&v9, &i[5 * v5 + 4]))
    {
      OUTLINED_FUNCTION_23_2(v12, v13);
      if (sub_2705D80D4())
      {
        break;
      }

      __swift_mutable_project_boxed_opaque_existential_1(v12, v13);
      sub_2705D80C4();
      sub_2704EE978();
      sub_2704F02C8();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_270499260(0, i[2] + 1, 1, i);
        i = v6;
      }

      v5 = i[2];
      v4 = i[3];
      if (v5 >= v4 >> 1)
      {
        sub_270499260(v4 > 1, v5 + 1, 1, i);
        i = v7;
      }

      __swift_destroy_boxed_opaque_existential_1(v10);
      __swift_destroy_boxed_opaque_existential_1(v11);
      i[2] = v5 + 1;
    }

    __swift_destroy_boxed_opaque_existential_1(v12);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return i;
}

void sub_2704EE978()
{
  OUTLINED_FUNCTION_10_1();
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D5420);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_31_0();
  OUTLINED_FUNCTION_23_2(v2, v2[3]);
  sub_2704F0488();
  sub_2705D8484();
  if (!v0)
  {
    OUTLINED_FUNCTION_6_1();
    v6 = sub_2705D7F54();
    v8 = v7;
    if (qword_2807CE898 != -1)
    {
      swift_once();
    }

    v9 = sub_2703D82A0(v6, v8, qword_2807D52A0);
    if (v9)
    {
      v10 = v9;

      v10(v2);
      v11 = OUTLINED_FUNCTION_8_39();
      v12(v11);
      sub_2703B8280(v10);
    }

    else
    {
      sub_2705D7D04();

      MEMORY[0x2743A3A90](v6, v8);

      sub_2705D7D84();
      swift_allocError();
      sub_2703AFBC8(&qword_2807D5430, &qword_2807D5420);
      sub_2705D7D34();

      swift_willThrow();
      v4 = OUTLINED_FUNCTION_8_39();
      v5(v4);
    }
  }

  OUTLINED_FUNCTION_11_3();
}

uint64_t sub_2704EEBF8(void *a1, uint64_t a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2705D84A4();
  v4 = (a2 + 32);
  v5 = *(a2 + 16) + 1;
  do
  {
    if (!--v5)
    {
      break;
    }

    v6 = v4 + 5;
    __swift_project_boxed_opaque_existential_1(v4, v4[3]);
    __swift_mutable_project_boxed_opaque_existential_1(v9, v10);
    sub_2705D80E4();
    sub_2705D74D4();
    __swift_destroy_boxed_opaque_existential_1(&v8);
    v4 = v6;
  }

  while (!v2);
  return __swift_destroy_boxed_opaque_existential_1(v9);
}

void *sub_2704EECE8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_2704EE7C8(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_2704EED30()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D5438);
  result = sub_2705D7494();
  qword_2807D52A0 = result;
  return result;
}

void sub_2704EED80()
{
  OUTLINED_FUNCTION_15_28();
  *(v0 + 24) = &unk_288059C60;
  *(v0 + 32) = sub_2704EF094();
  v2 = swift_allocObject();
  OUTLINED_FUNCTION_2_53(v2);
  sub_2704EDD88();
  if (v1)
  {
    __swift_deallocate_boxed_opaque_existential_2(v0);
  }
}

void sub_2704EEDEC()
{
  OUTLINED_FUNCTION_15_28();
  *(v0 + 24) = &unk_288059CE0;
  *(v0 + 32) = sub_2704EEFB4();
  v2 = swift_allocObject();
  OUTLINED_FUNCTION_2_53(v2);
  sub_2704EE52C();
  if (v1)
  {
    __swift_deallocate_boxed_opaque_existential_2(v0);
  }
}

void sub_2704EEE58()
{
  OUTLINED_FUNCTION_15_28();
  *(v0 + 24) = &unk_288059BE0;
  *(v0 + 32) = sub_2704EEEC4();
  v2 = swift_allocObject();
  OUTLINED_FUNCTION_2_53(v2);
  sub_2704ED760();
  if (v1)
  {
    __swift_deallocate_boxed_opaque_existential_2(v0);
  }
}

unint64_t sub_2704EEEC4()
{
  result = qword_2807D52A8;
  if (!qword_2807D52A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D52A8);
  }

  return result;
}

uint64_t sub_2704EEF18()
{

  return swift_deallocObject();
}

unint64_t sub_2704EEF60()
{
  result = qword_2807D52B8;
  if (!qword_2807D52B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D52B8);
  }

  return result;
}

unint64_t sub_2704EEFB4()
{
  result = qword_2807D52C0;
  if (!qword_2807D52C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D52C0);
  }

  return result;
}

uint64_t sub_2704EF008()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocObject();
}

unint64_t sub_2704EF040()
{
  result = qword_2807D52D0;
  if (!qword_2807D52D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D52D0);
  }

  return result;
}

unint64_t sub_2704EF094()
{
  result = qword_2807D52D8;
  if (!qword_2807D52D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D52D8);
  }

  return result;
}

uint64_t sub_2704EF0E8()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  }

  if (*(v0 + 64))
  {
  }

  return swift_deallocObject();
}

unint64_t sub_2704EF144()
{
  result = qword_2807D52E8;
  if (!qword_2807D52E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D52E8);
  }

  return result;
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_2704EF250(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_2704EF290(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2704EF2EC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 89))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2704EF340(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 89) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 89) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_2704EF3C4(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_2704EF404(uint64_t result, int a2, int a3)
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

unint64_t sub_2704EF454()
{
  result = qword_2807D52F0;
  if (!qword_2807D52F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D52F0);
  }

  return result;
}

unint64_t sub_2704EF4AC()
{
  result = qword_2807D52F8;
  if (!qword_2807D52F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D52F8);
  }

  return result;
}

unint64_t sub_2704EF504()
{
  result = qword_2807D5300;
  if (!qword_2807D5300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D5300);
  }

  return result;
}

unint64_t sub_2704EF55C()
{
  result = qword_2807D5308;
  if (!qword_2807D5308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D5308);
  }

  return result;
}

unint64_t sub_2704EF5B4()
{
  result = qword_2807D5310;
  if (!qword_2807D5310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D5310);
  }

  return result;
}

unint64_t sub_2704EF60C()
{
  result = qword_2807D5318;
  if (!qword_2807D5318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D5318);
  }

  return result;
}

unint64_t sub_2704EF664()
{
  result = qword_2807D5320;
  if (!qword_2807D5320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D5320);
  }

  return result;
}

unint64_t sub_2704EF6BC()
{
  result = qword_2807D5328;
  if (!qword_2807D5328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D5328);
  }

  return result;
}

unint64_t sub_2704EF750()
{
  result = qword_2807D5330;
  if (!qword_2807D5330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D5330);
  }

  return result;
}

unint64_t sub_2704EF7A4()
{
  result = qword_2807D5338;
  if (!qword_2807D5338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D5338);
  }

  return result;
}

unint64_t sub_2704EF7F8()
{
  result = qword_2807D5340;
  if (!qword_2807D5340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D5340);
  }

  return result;
}

unint64_t sub_2704EF850()
{
  result = qword_2807D5348;
  if (!qword_2807D5348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D5348);
  }

  return result;
}

unint64_t sub_2704EF8A8()
{
  result = qword_2807D5350;
  if (!qword_2807D5350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D5350);
  }

  return result;
}

unint64_t sub_2704EF93C()
{
  result = qword_2807D5358;
  if (!qword_2807D5358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D5358);
  }

  return result;
}

unint64_t sub_2704EF990()
{
  result = qword_2807D5360;
  if (!qword_2807D5360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D5360);
  }

  return result;
}

unint64_t sub_2704EF9E4()
{
  result = qword_2807D5368;
  if (!qword_2807D5368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D5368);
  }

  return result;
}

unint64_t sub_2704EFA3C()
{
  result = qword_2807D5370;
  if (!qword_2807D5370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D5370);
  }

  return result;
}

unint64_t sub_2704EFA94()
{
  result = qword_2807D5378;
  if (!qword_2807D5378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D5378);
  }

  return result;
}

uint64_t sub_2704EFB28(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a1[1] = a4();
  a1[2] = a5();
  result = a6();
  a1[3] = result;
  return result;
}

unint64_t sub_2704EFB7C()
{
  result = qword_2807D5380;
  if (!qword_2807D5380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D5380);
  }

  return result;
}

unint64_t sub_2704EFBD0()
{
  result = qword_2807D5388;
  if (!qword_2807D5388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D5388);
  }

  return result;
}

unint64_t sub_2704EFC24()
{
  result = qword_2807D5390;
  if (!qword_2807D5390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D5390);
  }

  return result;
}

uint64_t sub_2704EFC78(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807CF2D8);
    sub_2703AFBC8(a2, &qword_2807CF328);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2704EFD10()
{
  result = qword_2807D53A8;
  if (!qword_2807D53A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D0868);
    sub_2703F97F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D53A8);
  }

  return result;
}

unint64_t sub_2704EFD94()
{
  result = qword_2807D53C0;
  if (!qword_2807D53C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D53C0);
  }

  return result;
}

uint64_t sub_2704EFDE8(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807D53C8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2704EFE60()
{
  result = qword_2807D53D8;
  if (!qword_2807D53D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D53D8);
  }

  return result;
}

unint64_t sub_2704EFEB4()
{
  result = qword_2807D53F0;
  if (!qword_2807D53F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807D53F0);
  }

  return result;
}

_BYTE *sub_2704EFF08(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x2704EFFD0);
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
          result = OUTLINED_FUNCTION_14_8(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}