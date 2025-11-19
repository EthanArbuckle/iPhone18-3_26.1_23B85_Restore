uint64_t sub_261A41E1C(uint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v22[0] = result;
      v22[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v14 = v22 + 1;
            while (1)
            {
              v15 = *v14 - 48;
              if (v15 > 9)
              {
                break;
              }

              if (!is_mul_ok(v6, 0xAuLL))
              {
                break;
              }

              v9 = __CFADD__(10 * v6, v15);
              v6 = 10 * v6 + v15;
              if (v9)
              {
                break;
              }

              ++v14;
              if (!--v3)
              {
                goto LABEL_64;
              }
            }
          }

          goto LABEL_63;
        }

LABEL_74:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v17 = v22;
          while (1)
          {
            v18 = *v17 - 48;
            if (v18 > 9)
            {
              break;
            }

            if (!is_mul_ok(v6, 0xAuLL))
            {
              break;
            }

            v9 = __CFADD__(10 * v6, v18);
            v6 = 10 * v6 + v18;
            if (v9)
            {
              break;
            }

            ++v17;
            if (!--v2)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_63;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v22 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            if (!is_mul_ok(v6, 0xAuLL))
            {
              break;
            }

            v9 = 10 * v6 >= v11;
            v6 = 10 * v6 - v11;
            if (!v9)
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_64;
            }
          }
        }

        goto LABEL_63;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_261A85914();
        v3 = v21;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v12 = (result + 1);
              while (1)
              {
                v13 = *v12 - 48;
                if (v13 > 9)
                {
                  goto LABEL_63;
                }

                if (!is_mul_ok(v6, 0xAuLL))
                {
                  goto LABEL_63;
                }

                v9 = __CFADD__(10 * v6, v13);
                v6 = 10 * v6 + v13;
                if (v9)
                {
                  goto LABEL_63;
                }

                ++v12;
                if (!--v3)
                {
                  goto LABEL_64;
                }
              }
            }

            goto LABEL_62;
          }

          goto LABEL_63;
        }

        goto LABEL_73;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v16 = *result - 48;
              if (v16 > 9)
              {
                goto LABEL_63;
              }

              if (!is_mul_ok(v6, 0xAuLL))
              {
                goto LABEL_63;
              }

              v9 = __CFADD__(10 * v6, v16);
              v6 = 10 * v6 + v16;
              if (v9)
              {
                goto LABEL_63;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_64;
              }
            }
          }

          goto LABEL_62;
        }

LABEL_63:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_64;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_63;
              }

              if (!is_mul_ok(v6, 0xAuLL))
              {
                goto LABEL_63;
              }

              v9 = 10 * v6 >= v8;
              v6 = 10 * v6 - v8;
              if (!v9)
              {
                goto LABEL_63;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_64;
              }
            }
          }

LABEL_62:
          LOBYTE(v3) = 0;
LABEL_64:
          v23 = v3;
          v19 = v3;
          goto LABEL_65;
        }

        goto LABEL_63;
      }

      __break(1u);
    }

    __break(1u);
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  v6 = sub_261A47974(result, a2, 10);
  v19 = v20;
LABEL_65:

  if (v19)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

uint64_t sub_261A42124()
{
  sub_261A85C44();
  sub_261A85554();
  return sub_261A85C84();
}

uint64_t sub_261A42198()
{
  sub_261A85C44();
  sub_261A85554();
  return sub_261A85C84();
}

uint64_t sub_261A421EC@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_261A859E4();

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_261A4227C@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_261A859E4();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_261A422EC(uint64_t a1)
{
  v2 = sub_261A4A068();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261A42328(uint64_t a1)
{
  v2 = sub_261A4A068();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_261A42364(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB250, &qword_261A88320);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v14 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_261A4A068();
  sub_261A85CD4();
  v10 = *(v2 + 80);
  v20 = *(v2 + 64);
  v21 = v10;
  v22 = *(v2 + 96);
  v11 = *(v2 + 16);
  v16 = *v2;
  v17 = v11;
  v12 = *(v2 + 48);
  v18 = *(v2 + 32);
  v19 = v12;
  sub_261A4A0BC(v2, v14);
  sub_261A4A0F4();
  sub_261A85B54();
  v14[4] = v20;
  v14[5] = v21;
  v15 = v22;
  v14[0] = v16;
  v14[1] = v17;
  v14[3] = v19;
  v14[2] = v18;
  sub_261A39A74(v14);
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_261A4251C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[0] = a3;
  v13[1] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB298, &qword_261A88340);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_261A4A448();
  sub_261A85CD4();
  v16 = 0;
  sub_261A85B74();
  if (v4)
  {
    return (*(v7 + 8))(v10, v6);
  }

  v15 = 1;
  sub_261A85B14();
  v14 = 2;
  sub_261A85B74();
  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_261A426CC(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB268, &qword_261A88328);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_261A4A2F4();
  sub_261A85CD4();
  v16 = a2;
  v15 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB278, &unk_261A88330);
  sub_261A4A378(&qword_27FECB280, &qword_27FECB278, &unk_261A88330, sub_261A4A348);
  sub_261A85B54();
  if (!v3)
  {
    v16 = a3;
    v15 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB1D8, &qword_261A87D08);
    sub_261A478F8();
    sub_261A85B54();
    LOBYTE(v16) = 2;
    sub_261A85B34();
    LOBYTE(v16) = 3;
    sub_261A85B34();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_261A42918(void *a1)
{
  v7 = v1[4];
  v8 = v1[5];
  v9 = *(v1 + 12);
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  return sub_261A42364(a1);
}

uint64_t sub_261A42964()
{
  v1 = 1701667182;
  if (*v0 != 1)
  {
    v1 = 0x646F69726570;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701080931;
  }
}

uint64_t sub_261A429AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_261A4A148(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_261A429E0(uint64_t a1)
{
  v2 = sub_261A4A448();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261A42A1C(uint64_t a1)
{
  v2 = sub_261A4A448();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_261A42A84()
{
  v1 = *v0;
  sub_261A85C44();
  sub_261A85554();

  return sub_261A85C84();
}

uint64_t sub_261A42B40()
{
  *v0;
  *v0;
  *v0;
  sub_261A85554();
}

uint64_t sub_261A42BE8()
{
  v1 = *v0;
  sub_261A85C44();
  sub_261A85554();

  return sub_261A85C84();
}

uint64_t sub_261A42CA0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_261A4A25C();
  *a2 = result;
  return result;
}

void sub_261A42CD0(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000010;
  v3 = "FixedCounterPMIs";
  v4 = 0xD000000000000021;
  if (*v1 != 2)
  {
    v4 = 0xD000000000000016;
    v3 = "tersPeriodSeconds";
  }

  if (*v1)
  {
    v5 = "ConfiguredCounterGroupPMIs";
  }

  else
  {
    v2 = 0xD00000000000001ALL;
    v5 = "L1D_TLB_MISS_NONSPEC";
  }

  if (*v1 <= 1u)
  {
    v6 = v5;
  }

  else
  {
    v2 = v4;
    v6 = v3;
  }

  *a1 = v2;
  a1[1] = v6 | 0x8000000000000000;
}

unint64_t sub_261A42D4C()
{
  v1 = 0xD000000000000010;
  v2 = 0xD000000000000021;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000016;
  }

  if (!*v0)
  {
    v1 = 0xD00000000000001ALL;
  }

  if (*v0 <= 1u)
  {
    result = v1;
  }

  else
  {
    result = v2;
  }

  *v0;
  return result;
}

uint64_t sub_261A42DC4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_261A4A25C();
  *a1 = result;
  return result;
}

uint64_t sub_261A42DF8(uint64_t a1)
{
  v2 = sub_261A4A2F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261A42E34(uint64_t a1)
{
  v2 = sub_261A4A2F4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_261A42E70(void *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_261A426CC(a1, *v1, v1[1]);
}

uint64_t sub_261A42EA8()
{
  *v0;
  sub_261A85554();
}

uint64_t sub_261A42FE0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_261A4A2A8();
  *a2 = result;
  return result;
}

void sub_261A43010(uint64_t *a1@<X8>)
{
  v2 = *v1;
  if (v2 <= 2)
  {
    v8 = 0xEC00000073656C70;
    v9 = 0xD000000000000011;
    v10 = 0x8000000261A8DC00;
    if (v2 != 1)
    {
      v9 = 0x65646F435F43504BLL;
      v10 = 0xE900000000000073;
    }

    v11 = v2 == 0;
    if (*v1)
    {
      v12 = v9;
    }

    else
    {
      v12 = 0x6D615372656D6954;
    }

    if (!v11)
    {
      v8 = v10;
    }

    *a1 = v12;
    a1[1] = v8;
  }

  else
  {
    v3 = 0xEA00000000007365;
    v4 = 0x6C706D6153494D50;
    if (v2 != 5)
    {
      v4 = 0xD000000000000017;
      v3 = 0x8000000261A8DC60;
    }

    v5 = 0xD000000000000011;
    v6 = 0x8000000261A8DC20;
    if (v2 != 3)
    {
      v5 = 0xD000000000000010;
      v6 = 0x8000000261A8DC40;
    }

    if (*v1 <= 4u)
    {
      v7 = v5;
    }

    else
    {
      v7 = v4;
    }

    if (*v1 <= 4u)
    {
      v3 = v6;
    }

    *a1 = v7;
    a1[1] = v3;
  }
}

uint64_t sub_261A43114()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v5 = 0xD000000000000011;
    if (v1 != 1)
    {
      v5 = 0x65646F435F43504BLL;
    }

    if (*v0)
    {
      return v5;
    }

    else
    {
      return 0x6D615372656D6954;
    }
  }

  else
  {
    v2 = 0x6C706D6153494D50;
    if (v1 != 5)
    {
      v2 = 0xD000000000000017;
    }

    v3 = 0xD000000000000011;
    if (v1 != 3)
    {
      v3 = 0xD000000000000010;
    }

    if (*v0 <= 4u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_261A43210@<X0>(_BYTE *a1@<X8>)
{
  result = sub_261A4A2A8();
  *a1 = result;
  return result;
}

uint64_t sub_261A43244(uint64_t a1)
{
  v2 = sub_261A47850();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261A43280(uint64_t a1)
{
  v2 = sub_261A47850();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_261A432BC()
{
  sub_261A39AC8(v0, v7);
  v1 = v7[0];
  v2 = v7[1];
  v3 = v7[2];
  v4 = v7[3];
  sub_261A858C4();

  MEMORY[0x2667168A0](v1, v2);
  MEMORY[0x2667168A0](0x6F206B6E75686320, 0xEA00000000002066);
  v5 = sub_261A85B94();
  MEMORY[0x2667168A0](v5);

  MEMORY[0x2667168A0](0x203A736574796220, 0xE800000000000000);
  MEMORY[0x2667168A0](v3, v4);
  return 0xD000000000000011;
}

uint64_t sub_261A43408(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB1C0, &qword_261A87D00);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_261A47850();
  sub_261A85CD4();
  v11 = *(v3 + 12);
  LOBYTE(v20) = 4;
  sub_261A85B64();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v12 = *(v3 + 11);
  LOBYTE(v20) = 3;
  sub_261A85B64();
  v13 = ~*(v3 + 24);
  LOBYTE(v20) = 0;
  sub_261A85B44();
  v14 = *(v3 + 40);
  LOBYTE(v20) = 5;
  sub_261A85B44();
  v15 = *(v3 + 25);
  LOBYTE(v20) = 1;
  sub_261A85B24();
  if (*v3)
  {
    v20 = *v3;
    v19 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB1D8, &qword_261A87D08);
    sub_261A478F8();
    sub_261A85B54();
  }

  v17 = v3[9];
  if (!v17)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v21 = *(v3 + 5);
  v22 = v3[12];
  v20 = v17;
  v19 = 6;
  sub_261A478A4();
  sub_261A85B54();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_261A436C0(uint64_t a1)
{
  v3 = v1;
  v5 = *(v1 + 80);
  v32 = *(v1 + 64);
  v33 = v5;
  v34 = *(v1 + 96);
  v6 = *(v1 + 16);
  v28 = *v1;
  v29 = v6;
  v8 = *(v1 + 32);
  v7 = *(v1 + 48);
  v9 = *(v1 + 64);
  v30 = v8;
  v31 = v7;
  if (v9 >> 60 == 15 || (v10 = *(v3 + 56), sub_261A4777C(v10, v9), sub_261A43874(a1, 20992, 0x696C70207065706BLL, 0xEA00000000007473, v10, v9), result = sub_261A477D0(v10, v9), !v2))
  {
    v12 = sub_261A852E4();
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    sub_261A852D4();
    v25 = v32;
    v26 = v33;
    v27 = v34;
    v21 = v28;
    v22 = v29;
    v23 = v30;
    v24 = v31;
    sub_261A39A18(v3, v20);
    sub_261A476D4();
    v15 = sub_261A852C4();
    if (v2)
    {

      return sub_261A39A74(v3);
    }

    else
    {
      v17 = v15;
      v18 = a1;
      v19 = v16;
      sub_261A43874(v18, 20482, 0x6174656D20434D50, 0xEC00000061746164, v17, v16);
      sub_261A47728(v17, v19);
      sub_261A39A74(v3);
    }
  }

  return result;
}

uint64_t sub_261A43874(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v6 = BYTE6(a6);
  v8 = a4;
  v9 = a3;
  v27 = *MEMORY[0x277D85DE8];
  v10 = a6 >> 62;
  if ((a6 >> 62) > 1)
  {
    if (v10 != 2)
    {
      goto LABEL_20;
    }

    v25 = a4;
    v26 = a3;
    v8 = a1;
    v9 = *(a5 + 16);
    v11 = sub_261A85224();
    if (!v11)
    {
      goto LABEL_13;
    }

    v12 = sub_261A85244();
    v13 = v9 - v12;
    if (!__OFSUB__(v9, v12))
    {
LABEL_12:
      v11 += v13;
      goto LABEL_13;
    }

    __break(1u);
  }

  else if (!v10)
  {
    goto LABEL_20;
  }

  v26 = v9;
  if (a5 > a5 >> 32)
  {
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v25 = v8;
  v11 = sub_261A85224();
  if (v11)
  {
    v14 = sub_261A85244();
    v13 = a5 - v14;
    if (__OFSUB__(a5, v14))
    {
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    goto LABEL_12;
  }

LABEL_13:
  v9 = v26;
  result = sub_261A85234();
  if (v11)
  {
    if (v10 == 2)
    {
      v8 = v25;
      if (__OFSUB__(*(a5 + 24), *(a5 + 16)))
      {
        __break(1u);
      }

LABEL_20:
      result = ktrace_file_append_chunk();
      if (result)
      {
LABEL_34:
        v24 = *MEMORY[0x277D85DE8];
        return result;
      }

      v16 = MEMORY[0x2667166F0]();
      if (strerror(v16))
      {
        v17 = sub_261A855A4();
        v19 = v18;
        if (v10 <= 1)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v19 = 0xE300000000000000;
        v17 = 4144959;
        if (v10 <= 1)
        {
LABEL_23:
          if (!v10)
          {
            v20 = v6;
LABEL_33:
            sub_261A477E4();
            swift_allocError();
            *v23 = v9;
            v23[1] = v8;
            v23[2] = v17;
            v23[3] = v19;
            v23[4] = v20;
            swift_willThrow();

            goto LABEL_34;
          }

          goto LABEL_30;
        }
      }

      if (v10 != 2)
      {
        v20 = 0;
        goto LABEL_33;
      }

      v22 = *(a5 + 16);
      v21 = *(a5 + 24);
      v20 = v21 - v22;
      if (!__OFSUB__(v21, v22))
      {
        goto LABEL_33;
      }

      __break(1u);
LABEL_30:
      if (!__OFSUB__(HIDWORD(a5), a5))
      {
        v20 = HIDWORD(a5) - a5;
        goto LABEL_33;
      }

LABEL_38:
      __break(1u);
    }

    v8 = v25;
    if (!__OFSUB__(HIDWORD(a5), a5))
    {
      goto LABEL_20;
    }

    goto LABEL_36;
  }

  __break(1u);
  return result;
}

uint64_t sub_261A43AC8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v9 = a1[6];
  v10 = a1[7];
  v11 = a1[8];
  if (!a4)
  {
    v12 = &unk_28742FBC0;
LABEL_5:
    v25 = a1[6];
    v26 = v10;
    v27 = v11;
    v13 = sub_261A69FB0(MEMORY[0x277D84F90]);

    result = sub_261A59268(&v25, v12, v13, a2, v28);
    if (!v6)
    {
      CountingMode.Settings.kpc.getter(&v25);

      LODWORD(v24[0]) = v25;
      v24[1] = v26;
      v24[2] = v27;
      v23[0] = v9;
      v23[1] = v10;
      v23[2] = v11;
      sub_261A648C4(v23, a5);
    }

    return result;
  }

  if (a4 == 1)
  {
    v12 = &unk_28742FC60;
    goto LABEL_5;
  }

  v15 = *(a4 + 16);
  v16 = MEMORY[0x277D84F90];
  if (v15)
  {
    v29 = a3;
    v25 = MEMORY[0x277D84F90];
    sub_261A3EF90(0, v15, 0);
    v16 = v25;
    v18 = (a4 + 40);
    while (1)
    {
      v19 = *v18;
      v28[0] = *(v18 - 1);
      v28[1] = v19;

      sub_261A43E54(v28, a2, v23, v24);
      if (v6)
      {
        break;
      }

      v6 = 0;

      v20 = v24[0];
      v25 = v16;
      v22 = *(v16 + 16);
      v21 = *(v16 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_261A3EF90((v21 > 1), v22 + 1, 1);
        v16 = v25;
      }

      *(v16 + 16) = v22 + 1;
      *(v16 + 8 * v22 + 32) = v20;
      v18 += 2;
      if (!--v15)
      {
        a3 = v29;
        goto LABEL_15;
      }
    }
  }

  else
  {
LABEL_15:
    *a5 = 2;
    *(a5 + 8) = v16;
    *(a5 + 16) = a3;
  }
}

unint64_t sub_261A43CFC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (!(a3 >> 62))
  {
    sub_261A858C4();

    v8 = a1;
    MEMORY[0x2667168A0](0xD00000000000002CLL, 0x8000000261A8E340);
    v5 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB1B8, &qword_261A8C910);
    v6 = sub_261A85514();
    MEMORY[0x2667168A0](v6);

    return v8;
  }

  if (a3 >> 62 == 1)
  {
    sub_261A858C4();

    v8 = a1;
    MEMORY[0x2667168A0](0xD00000000000001FLL, 0x8000000261A8E320);
    return v8;
  }

  return 0xD000000000000027;
}

uint64_t sub_261A43E54@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, unint64_t *a4@<X8>)
{
  v7 = *a1;
  v6 = a1[1];
  v8 = *(a2 + 16);
  if (*(v8 + 16))
  {
    result = sub_261A5BD84(*a1, v6);
    if (v10)
    {
      *a4 = *(*(v8 + 56) + 40 * result + 16);
      return result;
    }
  }

  result = sub_261A442C0();
  if (result)
  {

    v11 = sub_261A48EC0(2uLL, v7, v6);
    v13 = v12;
    v15 = v14;
    v17 = v16;

    if ((v11 ^ v13) >> 14)
    {
      v44 = v7;
      v18 = a3;
      v19 = sub_261A48B58(v11, v13, v15, v17, 16);
      if ((v20 & 0x100) != 0)
      {
        v19 = sub_261A4836C(v11, v13, v15, v17, 16);
      }

      v21 = v19;
      v22 = v20;

      if ((v22 & 1) == 0)
      {
        *a4 = v21;
        return result;
      }

      a3 = v18;
      v7 = v44;
    }

    else
    {
    }
  }

  v23 = HIBYTE(v6) & 0xF;
  v24 = v7 & 0xFFFFFFFFFFFFLL;
  if ((v6 & 0x2000000000000000) != 0)
  {
    v25 = HIBYTE(v6) & 0xF;
  }

  else
  {
    v25 = v7 & 0xFFFFFFFFFFFFLL;
  }

  if (!v25)
  {
    goto LABEL_75;
  }

  if ((v6 & 0x1000000000000000) != 0)
  {

    v27 = sub_261A47974(v7, v6, 10);
    v43 = v42;

    if (v43)
    {
      goto LABEL_75;
    }

LABEL_77:
    *a4 = v27;
    return result;
  }

  if ((v6 & 0x2000000000000000) == 0)
  {
    if ((v7 & 0x1000000000000000) != 0)
    {
      result = (v6 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = sub_261A85914();
    }

    v26 = *result;
    if (v26 == 43)
    {
      if (v24 >= 1)
      {
        v23 = v24 - 1;
        if (v24 != 1)
        {
          v27 = 0;
          if (result)
          {
            v33 = (result + 1);
            while (1)
            {
              v34 = *v33 - 48;
              if (v34 > 9)
              {
                goto LABEL_73;
              }

              if (!is_mul_ok(v27, 0xAuLL))
              {
                goto LABEL_73;
              }

              v30 = __CFADD__(10 * v27, v34);
              v27 = 10 * v27 + v34;
              if (v30)
              {
                goto LABEL_73;
              }

              ++v33;
              if (!--v23)
              {
                goto LABEL_74;
              }
            }
          }

          goto LABEL_65;
        }

        goto LABEL_73;
      }

      goto LABEL_82;
    }

    if (v26 != 45)
    {
      if (v24)
      {
        v27 = 0;
        if (result)
        {
          while (1)
          {
            v37 = *result - 48;
            if (v37 > 9)
            {
              goto LABEL_73;
            }

            if (!is_mul_ok(v27, 0xAuLL))
            {
              goto LABEL_73;
            }

            v30 = __CFADD__(10 * v27, v37);
            v27 = 10 * v27 + v37;
            if (v30)
            {
              goto LABEL_73;
            }

            ++result;
            if (!--v24)
            {
              goto LABEL_65;
            }
          }
        }

        goto LABEL_65;
      }

LABEL_73:
      v27 = 0;
      LOBYTE(v23) = 1;
LABEL_74:
      v46 = v23;
      if (v23)
      {
LABEL_75:
        sub_261A49674();
        v40 = swift_allocError();
        *v41 = v7;
        v41[1] = v6;
        v41[2] = 0x4000000000000000;
        swift_willThrow();
        *a3 = v40;
      }

      goto LABEL_77;
    }

    if (v24 >= 1)
    {
      v23 = v24 - 1;
      if (v24 != 1)
      {
        v27 = 0;
        if (result)
        {
          v28 = (result + 1);
          while (1)
          {
            v29 = *v28 - 48;
            if (v29 > 9)
            {
              goto LABEL_73;
            }

            if (!is_mul_ok(v27, 0xAuLL))
            {
              goto LABEL_73;
            }

            v30 = 10 * v27 >= v29;
            v27 = 10 * v27 - v29;
            if (!v30)
            {
              goto LABEL_73;
            }

            ++v28;
            if (!--v23)
            {
              goto LABEL_74;
            }
          }
        }

LABEL_65:
        LOBYTE(v23) = 0;
        goto LABEL_74;
      }

      goto LABEL_73;
    }

    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

  v45[0] = v7;
  v45[1] = v6 & 0xFFFFFFFFFFFFFFLL;
  if (v7 != 43)
  {
    if (v7 != 45)
    {
      if (v23)
      {
        v27 = 0;
        v38 = v45;
        while (1)
        {
          v39 = *v38 - 48;
          if (v39 > 9)
          {
            break;
          }

          if (!is_mul_ok(v27, 0xAuLL))
          {
            break;
          }

          v30 = __CFADD__(10 * v27, v39);
          v27 = 10 * v27 + v39;
          if (v30)
          {
            break;
          }

          ++v38;
          if (!--v23)
          {
            goto LABEL_74;
          }
        }
      }

      goto LABEL_73;
    }

    if (v23)
    {
      if (--v23)
      {
        v27 = 0;
        v31 = v45 + 1;
        while (1)
        {
          v32 = *v31 - 48;
          if (v32 > 9)
          {
            break;
          }

          if (!is_mul_ok(v27, 0xAuLL))
          {
            break;
          }

          v30 = 10 * v27 >= v32;
          v27 = 10 * v27 - v32;
          if (!v30)
          {
            break;
          }

          ++v31;
          if (!--v23)
          {
            goto LABEL_74;
          }
        }
      }

      goto LABEL_73;
    }

    goto LABEL_81;
  }

  if (v23)
  {
    if (--v23)
    {
      v27 = 0;
      v35 = v45 + 1;
      while (1)
      {
        v36 = *v35 - 48;
        if (v36 > 9)
        {
          break;
        }

        if (!is_mul_ok(v27, 0xAuLL))
        {
          break;
        }

        v30 = __CFADD__(10 * v27, v36);
        v27 = 10 * v27 + v36;
        if (v30)
        {
          break;
        }

        ++v35;
        if (!--v23)
        {
          goto LABEL_74;
        }
      }
    }

    goto LABEL_73;
  }

LABEL_83:
  __break(1u);
  return result;
}

uint64_t sub_261A442C0()
{

  v0 = sub_261A855B4();
  if (v1)
  {
    v2 = v0;
    v3 = v1;
    do
    {
      v6 = sub_261A855B4();
      if (!v7)
      {

        return 1;
      }

      if (v2 == v6 && v3 == v7)
      {
      }

      else
      {
        v4 = sub_261A85BA4();

        if ((v4 & 1) == 0)
        {

          goto LABEL_14;
        }
      }

      v2 = sub_261A855B4();
      v3 = v5;
    }

    while (v5);
  }

  sub_261A855B4();
  v9 = v8;

  if (!v9)
  {
    return 1;
  }

LABEL_14:

  return 0;
}

uint64_t sub_261A4441C(uint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (!v2)
  {
    return !v3;
  }

  if (v2 == 1)
  {
    return v3 == 1;
  }

  if (v3 < 2)
  {
    return 0;
  }

  return sub_261A347FC(v2, v3);
}

uint64_t sub_261A4445C()
{
  v1 = *v0;
  if (!*v0)
  {
    return 0x746963696C706D69;
  }

  if (v1 == 1)
  {
    return 0x65636172544150;
  }

  v3 = MEMORY[0x2667169D0](v1, MEMORY[0x277D837D0]);
  MEMORY[0x2667168A0](v3);

  MEMORY[0x2667168A0](41, 0xE100000000000000);
  return 0x28206D6F74737563;
}

uint64_t sub_261A4450C(uint64_t a1)
{
  v3 = v1;
  v5 = sub_261A853D4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_261A853C4();
  v10 = OBJC_IVAR____TtC7Recount9AwimboPMC_logger;
  result = (*(v6 + 32))(v3 + OBJC_IVAR____TtC7Recount9AwimboPMC_logger, v9, v5);
  v12 = *(a1 + 64);
  *(v3 + 72) = *(a1 + 48);
  *(v3 + 88) = v12;
  *(v3 + 104) = *(a1 + 80);
  v13 = *(a1 + 16);
  *(v3 + 24) = *a1;
  v14 = *(a1 + 32);
  *(v3 + 40) = v13;
  *(v3 + 120) = *(a1 + 96);
  *(v3 + 56) = v14;
  v15 = *a1;
  if (*a1)
  {
    v44 = v10;
    v45 = v6;
    if (*(a1 + 32))
    {
      sub_261A39A18(a1, v47);

      v17 = sub_261A449D8(v16);
      v19 = v18;
    }

    else
    {
      sub_261A39A18(a1, v47);

      v17 = 0;
      v19 = 0;
    }

    v46 = v2;
    type metadata accessor for KPCSet();
    swift_allocObject();

    sub_261A3A3BC(3, v15, v17, v19);
    v21 = v20;
    if (qword_27FECAD70 != -1)
    {
      swift_once();
    }

    v49 = v5;
    __swift_project_value_buffer(v5, qword_27FED7CC0);

    v22 = sub_261A853B4();
    v23 = sub_261A85734();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      *&v47[0] = v43;
      *v24 = 136446466;
      v25 = MEMORY[0x2667169D0](v15, MEMORY[0x277D84D38]);
      v27 = v26;

      v28 = sub_261A3E9E8(v25, v27, v47);

      *(v24 + 4) = v28;
      *(v24 + 12) = 2082;
      v29 = sub_261A3A6F0();
      v31 = sub_261A3E9E8(v29, v30, v47);

      *(v24 + 14) = v31;
      _os_log_impl(&dword_261A33000, v22, v23, "Awimbo PMC starting KPC configuration with %{public}s, KPC set %{public}s", v24, 0x16u);
      v32 = v43;
      swift_arrayDestroy();
      MEMORY[0x266717700](v32, -1, -1);
      MEMORY[0x266717700](v24, -1, -1);
    }

    else
    {
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB218, &qword_261A87D58);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_261A87A10;
    *(v33 + 32) = v21;
    type metadata accessor for KPCConfiguration();
    swift_allocObject();

    v34 = v46;
    v35 = sub_261A3ABC8(v33, 0, 0, 1);
    v36 = v49;
    if (v34)
    {
      sub_261A39A74(a1);

      v37 = *(v3 + 72);
      v38 = *(v3 + 104);
      v47[4] = *(v3 + 88);
      v47[5] = v38;
      v48 = *(v3 + 120);
      v39 = *(v3 + 40);
      v47[0] = *(v3 + 24);
      v47[1] = v39;
      v47[2] = *(v3 + 56);
      v47[3] = v37;
      sub_261A39A74(v47);
      (*(v45 + 8))(v3 + v44, v36);
      type metadata accessor for AwimboPMC();
      v40 = *(*v3 + 48);
      v41 = *(*v3 + 52);
      swift_deallocPartialClassInstance();
    }

    else
    {
      v42 = v35;

      sub_261A39A74(a1);
      *(v3 + 16) = v42;
    }

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_261A449D8(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v9 = MEMORY[0x277D84F90];
    sub_261A3F200(0, v2, 0);
    v3 = (a1 + 32);
    v4 = *(v9 + 16);
    do
    {
      v5 = *v3++;
      v6 = v5 != 0;
      v7 = *(v9 + 24);
      if (v4 >= v7 >> 1)
      {
        sub_261A3F200((v7 > 1), v4 + 1, 1);
      }

      *(v9 + 16) = v4 + 1;
      *(v9 + 4 * v4++ + 32) = 16 * v6;
      --v2;
    }

    while (v2);
  }
}

void sub_261A44AB8()
{
  v2 = v1;
  v71[1] = *MEMORY[0x277D85DE8];
  v70 = 0;
  if (!kperf_sample_get())
  {
    v6 = *(v0 + 49);
    if (v6 == 1)
    {
      sub_261A3C430();
      if (v1)
      {
        goto LABEL_47;
      }

      v8 = v7;
      v2 = 0;
      if ((sub_261A3C514() & 1) == 0)
      {
        v63 = v0;
        aBlock = MEMORY[0x277D84F90];
        sub_261A3F200(0, 2, 0);
        v9 = aBlock;
        v11 = *(aBlock + 16);
        v10 = *(aBlock + 24);
        v12 = v10 >> 1;
        v13 = v11 + 1;
        if (v10 >> 1 <= v11)
        {
LABEL_74:
          v60 = v13;
          sub_261A3F200((v10 > 1), v13, 1);
          v13 = v60;
          v9 = aBlock;
          v10 = *(aBlock + 24);
          v12 = v10 >> 1;
        }

        *(v9 + 16) = v13;
        *(v9 + 4 * v11 + 32) = 20971520;
        v14 = v11 + 2;
        if (v12 < v14)
        {
          v61 = v13;
          sub_261A3F200((v10 > 1), v14, 1);
          v13 = v61;
          v9 = aBlock;
        }

        *(v9 + 16) = v14;
        *(v9 + 4 * v13 + 32) = 20971528;
        aBlock = MEMORY[0x277D84F90];
        sub_261A3F200(0, 2, 0);
        v15 = aBlock;
        v17 = *(aBlock + 16);
        v16 = *(aBlock + 24);
        v18 = v16 >> 1;
        v19 = v17 + 1;
        if (v16 >> 1 <= v17)
        {
          sub_261A3F200((v16 > 1), v17 + 1, 1);
          v19 = v17 + 1;
          v15 = aBlock;
          v16 = *(aBlock + 24);
          v18 = v16 >> 1;
        }

        *(v15 + 16) = v19;
        *(v15 + 4 * v17 + 32) = 20971557;
        v20 = v17 + 2;
        if (v18 < v20)
        {
          v62 = v19;
          sub_261A3F200((v16 > 1), v20, 1);
          v19 = v62;
          v15 = aBlock;
        }

        *(v15 + 16) = v20;
        *(v15 + 4 * v19 + 32) = 20971709;
        aBlock = v9;

        sub_261A7F368(v15);
        sub_261A3C29C(aBlock);
        if (v2)
        {

          goto LABEL_47;
        }

        if (!*(v9 + 16))
        {
          __break(1u);
        }

        v28 = *(v9 + 32);

        v68 = nullsub_1;
        v69 = 0;
        aBlock = MEMORY[0x277D85DD0];
        v65 = 1107296256;
        v66 = sub_261A4551C;
        v67 = &block_descriptor_26;
        v29 = _Block_copy(&aBlock);
        ktrace_events_single();
        _Block_release(v29);
        v0 = v63;
      }

      if (!v8)
      {
        v8 = 16;
      }

      LODWORD(aBlock) = 0;
      if (kperf_action_samplers_get() && kperf_action_count_set())
      {
        goto LABEL_34;
      }

      if ((aBlock & 0x20) == 0 && kperf_action_samplers_set())
      {
        goto LABEL_27;
      }

      sub_261A3C33C();
      v31 = v0;
      if (qword_27FECAD70 != -1)
      {
        swift_once();
      }

      v32 = sub_261A853D4();
      __swift_project_value_buffer(v32, qword_27FED7CC0);
      v33 = sub_261A853B4();
      v34 = sub_261A85734();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&dword_261A33000, v33, v34, "Awimbo PMC configured sampling on context-switch", v35, 2u);
        MEMORY[0x266717700](v35, -1, -1);
      }

      v0 = v31;
      if ((*(v31 + 48) & 1) == 0)
      {
        goto LABEL_43;
      }
    }

    else
    {
      v8 = 0;
      if ((*(v0 + 48) & 1) == 0)
      {
LABEL_43:
        v36 = *(v0 + 32);
        v37 = *(v0 + 40);
        if (kperf_timer_count_get())
        {
          v38 = MEMORY[0x2667166F0]();
          sub_261A3C3DC();
          swift_allocError();
          *v39 = v38;
          v40 = 0x65672D746E75;
LABEL_45:
          *(v39 + 8) = 0x6F632D72656D6974;
          *(v39 + 16) = v40 & 0xFFFFFFFFFFFFLL | 0xEF74000000000000;
          goto LABEL_46;
        }

        if (kperf_timer_count_set())
        {
          v41 = MEMORY[0x2667166F0]();
          sub_261A3C3DC();
          swift_allocError();
          *v39 = v41;
          v40 = 0x65732D746E75;
          goto LABEL_45;
        }

        v63 = v0;
        v71[0] = MEMORY[0x277D84F90];
        sub_261A3F2F0(0, 8, 0);
        v11 = 0;
        v42 = v71[0];
        do
        {
          if (kperf_timer_action_get())
          {
            v47 = MEMORY[0x2667166F0]();
            sub_261A3C3DC();
            swift_allocError();
            *v48 = v47;
            *(v48 + 8) = 0xD000000000000010;
            *(v48 + 16) = 0x8000000261A8E3B0;
            swift_willThrow();

            goto LABEL_47;
          }

          v71[0] = v42;
          v44 = *(v42 + 16);
          v43 = *(v42 + 24);
          v45 = v44 + 1;
          if (v44 >= v43 >> 1)
          {
            sub_261A3F2F0((v43 > 1), v44 + 1, 1);
            v45 = v44 + 1;
            v42 = v71[0];
          }

          *(v42 + 16) = v45;
          v46 = v42 + 8 * v44;
          *(v46 + 32) = v11;
          *(v46 + 36) = 0;
          ++v11;
        }

        while (v11 != 8);
        v10 = 0;
        v13 = v42 + 24;
        do
        {
          if (v44 + 1 == v10)
          {

            sub_261A49674();
            swift_allocError();
            *v59 = 0;
            v59[1] = 0;
            v59[2] = 0x8000000000000000;
            goto LABEL_46;
          }

          if (__OFADD__(v10, 1))
          {
            __break(1u);
            goto LABEL_74;
          }

          v49 = *(v13 + 12);
          v13 += 8;
          ++v10;
        }

        while (v49);
        v50 = *v13;

        aBlock = v50;
        if (v6)
        {
          goto LABEL_62;
        }

        LODWORD(v71[0]) = 0;
        if (!kperf_action_samplers_get() || !kperf_action_count_set())
        {
          if (kperf_action_samplers_set())
          {
            goto LABEL_27;
          }

LABEL_62:
          sub_261A3C15C();
          if (v2)
          {
            goto LABEL_47;
          }

          if (qword_27FECAD70 != -1)
          {
            swift_once();
          }

          v51 = sub_261A853D4();
          __swift_project_value_buffer(v51, qword_27FED7CC0);
          v52 = sub_261A853B4();
          v53 = sub_261A85734();
          if (os_log_type_enabled(v52, v53))
          {
            v54 = swift_slowAlloc();
            v55 = swift_slowAlloc();
            v71[0] = v55;
            *v54 = 136446210;
            v56 = sub_261A85D04();
            v58 = sub_261A3E9E8(v56, v57, v71);

            *(v54 + 4) = v58;
            _os_log_impl(&dword_261A33000, v52, v53, "Awimbo PMC configured sampling on timer with period %{public}s", v54, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v55);
            MEMORY[0x266717700](v55, -1, -1);
            MEMORY[0x266717700](v54, -1, -1);
          }

          v0 = v63;
LABEL_21:
          v22 = *(v0 + 16);
          sub_261A3B57C();
          if (!v2)
          {
            v68 = nullsub_1;
            v69 = 0;
            aBlock = MEMORY[0x277D85DD0];
            v65 = 1107296256;
            v66 = sub_261A4551C;
            v67 = &block_descriptor_23;
            v23 = _Block_copy(&aBlock);
            ktrace_events_range();
            _Block_release(v23);
            if (!v70)
            {
              goto LABEL_3;
            }

            goto LABEL_48;
          }

LABEL_47:
          if (!v70)
          {
            goto LABEL_3;
          }

LABEL_48:
          kperf_sample_on();
          goto LABEL_3;
        }

LABEL_34:
        v24 = 0x8000000261A8E370;
        v30 = MEMORY[0x2667166F0]();
        sub_261A3C3DC();
        swift_allocError();
        *v26 = v30;
        v27 = 0xD000000000000010;
        goto LABEL_35;
      }
    }

    if (*(v0 + 56))
    {
      v21 = v6;
    }

    else
    {
      v21 = 1;
    }

    if (v21)
    {
      goto LABEL_21;
    }

    LODWORD(aBlock) = 0;
    if (kperf_action_samplers_get() && kperf_action_count_set())
    {
      goto LABEL_34;
    }

    if (!kperf_action_samplers_set())
    {
      goto LABEL_21;
    }

LABEL_27:
    v24 = 0x8000000261A8E390;
    v25 = MEMORY[0x2667166F0]();
    sub_261A3C3DC();
    swift_allocError();
    *v26 = v25;
    v27 = 0xD000000000000013;
LABEL_35:
    *(v26 + 8) = v27;
    *(v26 + 16) = v24;
LABEL_46:
    swift_willThrow();
    goto LABEL_47;
  }

  v3 = MEMORY[0x2667166F0]();
  sub_261A3C3DC();
  swift_allocError();
  *v4 = v3;
  *(v4 + 8) = 0x672D656C706D6173;
  *(v4 + 16) = 0xEA00000000007465;
  swift_willThrow();
LABEL_3:
  v5 = *MEMORY[0x277D85DE8];
}

uint64_t sub_261A4551C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t sub_261A45588()
{
  v1 = *(v0 + 2);

  v2 = *(v0 + 3);
  v3 = *(v0 + 7);
  v4 = *(v0 + 10);
  v5 = *(v0 + 11);
  v6 = *(v0 + 12);
  v7 = *(v0 + 13);
  v8 = *(v0 + 14);
  v9 = *(v0 + 15);

  sub_261A477D0(v4, v5);
  sub_261A49634(v6);
  v10 = OBJC_IVAR____TtC7Recount9AwimboPMC_logger;
  v11 = sub_261A853D4();
  (*(*(v11 - 8) + 8))(&v0[v10], v11);
  v12 = *(*v0 + 48);
  v13 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v12, v13);
}

uint64_t type metadata accessor for AwimboPMC()
{
  result = qword_27FECB198;
  if (!qword_27FECB198)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_261A456D8()
{
  result = sub_261A853D4();
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

uint64_t sub_261A457F4(uint64_t a1)
{
  v7 = *(*v1 + 88);
  v8 = *(*v1 + 104);
  v9 = *(*v1 + 120);
  v3 = *(*v1 + 24);
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 56);
  v6 = *(*v1 + 72);
  return sub_261A436C0(a1);
}

unint64_t sub_261A45850(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (!(a3 >> 62))
  {
    sub_261A858C4();

    v8 = a1;
    MEMORY[0x2667168A0](0xD00000000000002CLL, 0x8000000261A8E340);
    v5 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB1B8, &qword_261A8C910);
    v6 = sub_261A85514();
    MEMORY[0x2667168A0](v6);

    return v8;
  }

  if (a3 >> 62 == 1)
  {
    sub_261A858C4();

    v8 = a1;
    MEMORY[0x2667168A0](0xD00000000000001FLL, 0x8000000261A8E320);
    return v8;
  }

  return 0xD000000000000020;
}

uint64_t sub_261A459A8()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

BOOL sub_261A459D8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v8 = *(a2 + 16);
  v7 = *(a2 + 24);
  v9 = *(a2 + 32);
  v10 = *(a2 + 40);
  v11 = *(a2 + 48);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    result = 0;
  }

  else
  {
    v13 = sub_261A85BA4();
    result = 0;
    if ((v13 & 1) == 0)
    {
      return result;
    }
  }

  if (v2 == v8 && v3 == v7 && v4 == v9 && v5 == v10)
  {
    return v6 == v11;
  }

  return result;
}

uint64_t sub_261A45A9C(uint64_t a1, unint64_t a2, char a3, double a4, int8x16_t a5, int8x16_t a6)
{
  a5.i64[0] = a2;
  if (a3)
  {
    *a5.i64 = *&a2 / a1;
  }

  v6 = floor(*a5.i64);
  if (v6 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v6 >= 9.22337204e18)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  *a6.i64 = *a5.i64 - trunc(*a5.i64);
  v7.f64[0] = NAN;
  v7.f64[1] = NAN;
  v8 = *vbslq_s8(vnegq_f64(v7), a6, a5).i64 * 1.0e18;
  if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v8 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_12;
  }

  if (v8 <= -9.22337204e18)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v8 < 9.22337204e18)
  {
    return MEMORY[0x2821FE630](v6, v8);
  }

LABEL_14:
  __break(1u);
  return MEMORY[0x2821FE630](a1, a2);
}

uint64_t sub_261A45B60(uint64_t a1, char a2)
{
  if (a2)
  {
    sub_261A858C4();
    sub_261A85704();
    v2 = 0x8000000261A8E3D0;
    v3 = 0xD000000000000010;
  }

  else
  {
    sub_261A85704();
    v3 = 0x6573206863616520;
    v2 = 0xE900000000000074;
  }

  MEMORY[0x2667168A0](v3, v2);
  return 0;
}

uint64_t sub_261A45C30(void *a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v7 = v6;
  v196 = a3;
  v195 = a2;
  v202 = a1;
  v10 = sub_261A85904();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v183 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v191 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB018, &unk_261A87D10);
  v190 = *(v191 - 8);
  v15 = *(v190 + 64);
  MEMORY[0x28223BE20](v191);
  v187 = &v183 - v16;
  v192 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB020, &qword_261A87880);
  v186 = *(v192 - 8);
  v17 = *(v186 + 64);
  MEMORY[0x28223BE20](v192);
  v184 = &v183 - v18;
  v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB028, &unk_261A87D20);
  v188 = *(v189 - 8);
  v19 = *(v188 + 64);
  MEMORY[0x28223BE20](v189);
  v185 = &v183 - v20;
  v200 = v5;
  *(v5 + 128) = 0;
  v203 = a4;
  v197 = a5;
  if (a5 >> 60 == 15)
  {
    v198 = v6;
    v21 = off_27FECB190;

    v193 = 0;
    v194 = 0x3FE0000000000000;
    v22 = 0xE800000000000000;
    v7 = 0x73746C7561666564;
    goto LABEL_58;
  }

  v23 = sub_261A851B4();
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  swift_allocObject();
  sub_261A4777C(a4, a5);
  v21 = sub_261A851A4();
  sub_261A85164();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB148, &qword_261A879B0);
  sub_261A496DC();
  sub_261A85194();
  if (v6)
  {
    v209 = v6;
    v26 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB1B8, &qword_261A8C910);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v198 = v6;

      v29 = v203;
      v30 = v197;
      sub_261A477D0(v203, v197);
      sub_261A477D0(v29, v30);

      MEMORY[0x2667175A0](v209);
LABEL_73:
      v52 = v200;
LABEL_110:
      MEMORY[0x2667175A0](*(v52 + 128));
      type metadata accessor for AwimboPMI();
      swift_deallocPartialClassInstance();
      return v52;
    }

    MEMORY[0x2667175A0](v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB1F8, &qword_261A87D40);
    sub_261A49760();
    v27 = v203;
    v7 = v197;
    sub_261A85194();
    v198 = 0;
    v31 = v206;
    *&v207[0] = v206;
    v32 = *(v11 + 8);

    v32(v14, v10);
    MEMORY[0x2667175A0](v209);
    v33 = v27;
  }

  else
  {
    v28 = sub_261A41B08(v209);
    v198 = 0;
    v31 = v28;

    *&v207[0] = v31;

    v33 = v203;
  }

  v205 = v21;
  v34 = 0xD000000000000016;
  v35 = v31[2];
  if (!v35)
  {
LABEL_22:

    v43 = v31[2];
    if (!v43)
    {
LABEL_35:
      v193 = 0;
      v194 = 0x3FE0000000000000;
LABEL_36:
      v34 = v197;
      goto LABEL_37;
    }

    v7 = "tersPeriodSeconds";
    v44 = -v43;
    v45 = -32;
    v34 = 4;
    v33 = v203;
    while (1)
    {
      v22 = v34 - 4;
      if (v34 - 4 >= v31[2])
      {
        goto LABEL_142;
      }

      v21 = v31[v34];
      if (v21[2].isa)
      {
        v46 = v31[v34];

        sub_261A5BD84(0xD000000000000016, 0x8000000261A8DBD0);
        v48 = v47;

        if (v48)
        {
          break;
        }
      }

      ++v34;
      v45 -= 8;
      if (v44 + v34 == 4)
      {
        goto LABEL_35;
      }
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_29:
      if (v22 >= v31[2])
      {
        __break(1u);
      }

      else
      {
        v194 = sub_261A488FC(0xD000000000000016, v7 | 0x8000000000000000);
        *&v207[0] = v31;
        if (v49)
        {
LABEL_153:
          __break(1u);
          MEMORY[0x2667175A0](*(v200 + 128));
          type metadata accessor for AwimboPMI();
          result = swift_deallocPartialClassInstance();
          __break(1u);
          return result;
        }

        v33 = v203;
        if (v22 < v31[2])
        {
          v193 = 0;
          if (!*(v31[v34] + 16))
          {
            v34 = v197;
            goto LABEL_34;
          }

          goto LABEL_36;
        }
      }

      __break(1u);
LABEL_151:
      __break(1u);
      goto LABEL_152;
    }

LABEL_148:
    v31 = sub_261A67B00(v31);
    goto LABEL_29;
  }

  v7 = "FixedCounterPMIs";
  v36 = -v35;
  v37 = -32;
  v38 = 4;
  v33 = v203;
  while (1)
  {
    v22 = v38 - 4;
    if ((v38 - 4) >= v31[2])
    {
      goto LABEL_141;
    }

    v21 = v31[v38];
    if (!v21[2].isa)
    {
      goto LABEL_11;
    }

    v39 = v31[v38];

    sub_261A5BD84(0xD000000000000021, 0x8000000261A8DBA0);
    if (v40)
    {
      break;
    }

LABEL_11:
    ++v38;
    v37 -= 8;
    if (v36 + v38 == 4)
    {
      goto LABEL_22;
    }
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v31 = sub_261A67B00(v31);
  }

  if (v22 >= v31[2])
  {
    __break(1u);
LABEL_147:
    __break(1u);
    goto LABEL_148;
  }

  v194 = sub_261A488FC(0xD000000000000021, 0x8000000261A8DBA0);
  *&v207[0] = v31;
  if (v41)
  {
LABEL_152:
    __break(1u);
    goto LABEL_153;
  }

  v34 = v197;
  v33 = v203;
  if (v22 >= v31[2])
  {
    goto LABEL_147;
  }

  v42 = *(v31[v38] + 16);
  v193 = 1;
  if (!v42)
  {
LABEL_34:
    sub_261A3CD64(v22);

    v33 = v203;
  }

LABEL_37:
  v50 = *&v207[0];
  v22 = *(*&v207[0] + 16);
  v21 = MEMORY[0x277D84F90];
  if (v22)
  {
    v209 = MEMORY[0x277D84F90];
    sub_261A3F180(0, v22, 0);
    v51 = 0;
    v52 = v50 + 32;
    v21 = v209;
    do
    {
      if (v51 >= *(v50 + 16))
      {
        goto LABEL_131;
      }

      v53 = v21;
      v54 = 0;
      v55 = 0;
      v21 = *(v52 + 8 * v51);
      v56 = v51 + 1;
      v57 = 1 << LOBYTE(v21[4].isa);
      while (1)
      {
        isa = v21[v55 + 8].isa;
        if (isa)
        {
          break;
        }

        ++v55;
        v54 -= 64;
        if ((v57 + 63) >> 6 == v55)
        {
          goto LABEL_144;
        }
      }

      v59 = __clz(__rbit64(isa));
      if (v59 - v57 == v54)
      {
LABEL_144:
        __break(1u);
        goto LABEL_145;
      }

      if (-v54 < 0)
      {
        goto LABEL_132;
      }

      v60 = v59 - v54;
      if (v60 >= v57)
      {
        goto LABEL_133;
      }

      if (((v21[(v55 & 0x3FFFFFFFFFFFFFFLL) + 8].isa >> v59) & 1) == 0)
      {
        goto LABEL_134;
      }

      if (!v21[2].isa)
      {
        goto LABEL_135;
      }

      v61 = (v21[6].isa + 16 * v60);
      v62 = *v61;
      v63 = v61[1];
      v64 = *(v52 + 8 * v51);

      v65 = sub_261A5BD84(v62, v63);
      if ((v66 & 1) == 0)
      {
        goto LABEL_136;
      }

      v67 = *(v21[7].isa + v65);
      v7 = *&v67;

      if ((*&v67 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_137;
      }

      if (v67 <= -9.22337204e18)
      {
        goto LABEL_138;
      }

      if (v67 >= 9.22337204e18)
      {
        goto LABEL_139;
      }

      v21 = v53;
      v209 = v53;
      v68 = *(v53 + 16);
      v69 = v21[3].isa;
      v7 = v68 + 1;
      if (v68 >= v69 >> 1)
      {
        sub_261A3F180((v69 > 1), v68 + 1, 1);
        v21 = v209;
      }

      v21[2].isa = v7;
      v70 = &v21[3 * v68];
      v70[4].isa = v62;
      v70[5].isa = v63;
      v70[6].isa = v67;
      v51 = v56;
    }

    while (v56 != v22);
    v34 = v197;
    v33 = v203;
  }

  sub_261A477D0(v33, v34);

  v22 = 0xE400000000000000;
  v7 = 1701603686;
LABEL_58:
  if (qword_27FECAD70 != -1)
  {
    goto LABEL_143;
  }

  while (2)
  {
    v71 = sub_261A853D4();
    v72 = __swift_project_value_buffer(v71, qword_27FED7CC0);

    v73 = v21;
    v74 = sub_261A853B4();
    v75 = sub_261A85734();

    v76 = os_log_type_enabled(v74, v75);
    v183 = v72;
    if (v76)
    {
      v77 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      *&v207[0] = v78;
      *v77 = 136446722;
      v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB088, &unk_261A87D30);
      v80 = MEMORY[0x2667169D0](v73, v79);
      v205 = v7;
      v82 = sub_261A3E9E8(v80, v81, v207);

      *(v77 + 4) = v82;
      *(v77 + 12) = 2082;
      v83 = sub_261A45B60(v194, v193);
      v7 = sub_261A3E9E8(v83, v84, v207);

      *(v77 + 14) = v7;
      *(v77 + 22) = 2082;
      v85 = sub_261A3E9E8(v205, v22, v207);

      *(v77 + 24) = v85;
      _os_log_impl(&dword_261A33000, v74, v75, "Awimbo PMI using events %{public}s, period %{public}s from %{public}s", v77, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x266717700](v78, -1, -1);
      MEMORY[0x266717700](v77, -1, -1);
    }

    else
    {
    }

    v52 = v200;
    v86 = v73[2].isa;
    if (v86)
    {
      *&v207[0] = MEMORY[0x277D84F90];
      v201 = v73;
      sub_261A3F160(0, v86, 0);
      v87 = v201;
      v88 = 0;
      v21 = *&v207[0];
      v89 = (v201 + 48);
      v199 = v86;
      while (v88 < *(v87 + 16))
      {
        v205 = v21;
        v91 = *(v89 - 2);
        v90 = *(v89 - 1);
        v204 = *v89;
        v21 = v202[2];
        v92 = v21[2].isa;

        if (!v92 || (v93 = sub_261A5BD84(v91, v90), (v94 & 1) == 0))
        {
          sub_261A49674();
          v104 = swift_allocError();
          *v105 = v91;
          v105[1] = v90;
          v105[2] = 0x4000000000000000;
          v198 = v104;
          swift_willThrow();

          sub_261A477D0(v203, v197);

          goto LABEL_73;
        }

        v95 = v21[7].isa + 40 * v93;
        v96 = *v95;
        v97 = *(v95 + 8);
        v22 = *(v95 + 16);
        v7 = *(v95 + 24);
        v98 = *(v95 + 32);

        v99 = v204;
        if ((v204 & 0x8000000000000000) != 0)
        {
          goto LABEL_130;
        }

        v21 = v205;
        *&v207[0] = v205;
        v101 = v205[2].isa;
        v100 = v205[3].isa;
        v102 = (v101 + 1);
        if (v101 >= v100 >> 1)
        {
          v205 = (v101 + 1);
          sub_261A3F160((v100 > 1), v101 + 1, 1);
          v102 = v205;
          v99 = v204;
          v21 = *&v207[0];
        }

        ++v88;
        v21[2].isa = v102;
        v103 = &v21[7 * v101];
        v103[4].isa = v96;
        v103[5].isa = v97;
        v103[6].isa = v22;
        v103[7].isa = v7;
        LOBYTE(v103[8].isa) = v98;
        v103[9].isa = v99;
        LODWORD(v103[10].isa) = 16;
        v89 += 3;
        v87 = v201;
        if (v199 == v88)
        {

          v52 = v200;
          goto LABEL_75;
        }
      }

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
      goto LABEL_140;
    }

    v21 = MEMORY[0x277D84F90];
LABEL_75:
    v106 = v198;
    v7 = sub_261A599DC(v21, v195, v196, 1);
    v198 = v106;
    if (v106)
    {
      sub_261A477D0(v203, v197);

      goto LABEL_110;
    }

    v107 = *(v7 + 16);
    v53 = MEMORY[0x277D84F90];
    if (v107)
    {
      *&v207[0] = MEMORY[0x277D84F90];

      v21 = v207;
      sub_261A85944();
      v108 = 0;
      v201 = v7 + 32;
      v199 = v7;
      v196 = v107;
      while (v108 < *(v7 + 16))
      {
        v110 = *(v201 + 8 * v108);
        v111 = v110[2].isa;
        if (v111)
        {
          v204 = v108;
          v209 = v53;

          sub_261A3EF90(0, v111, 0);
          v22 = v209;
          v112 = v209[2].isa;
          v205 = v110;
          v113 = v110 + 6;
          v114 = v111;
          do
          {
            if (v113[-1].isa)
            {
              v115 = v113->isa;
            }

            else
            {
              v115 = 0;
            }

            v209 = v22;
            v116 = *(v22 + 24);
            if (v112 >= v116 >> 1)
            {
              sub_261A3EF90((v116 > 1), v112 + 1, 1);
              v22 = v209;
            }

            v113 += 7;
            *(v22 + 16) = v112 + 1;
            *(v22 + 8 * v112++ + 32) = v115;
            --v114;
          }

          while (v114);
          v209 = v53;
          sub_261A3EF90(0, v111, 0);
          v117 = v209;
          v118 = v209[2].isa;
          v119 = v205 + 9;
          v120 = v111;
          do
          {
            if (v119[-4].isa)
            {
              v121 = v119->isa;
            }

            else
            {
              v121 = 0;
            }

            v209 = v117;
            v122 = *(v117 + 24);
            if (v118 >= v122 >> 1)
            {
              sub_261A3EF90((v122 > 1), v118 + 1, 1);
              v117 = v209;
            }

            v119 += 7;
            *(v117 + 16) = v118 + 1;
            *(v117 + 8 * v118++ + 32) = v121;
            --v120;
          }

          while (v120);
          v53 = MEMORY[0x277D84F90];
          v209 = MEMORY[0x277D84F90];
          sub_261A3F200(0, v111, 0);
          v123 = v209;
          v124 = v209[2].isa;
          v125 = v205 + 10;
          do
          {
            if (v125[-5].isa)
            {
              v126 = v125->isa;
            }

            else
            {
              v126 = 0;
            }

            v209 = v123;
            v127 = *(v123 + 24);
            if (v124 >= v127 >> 1)
            {
              sub_261A3F200((v127 > 1), v124 + 1, 1);
              v123 = v209;
            }

            v125 += 7;
            *(v123 + 16) = v124 + 1;
            *(v123 + 4 * v124++ + 32) = v126;
            --v111;
          }

          while (v111);
          v7 = v199;
          v107 = v196;
          v108 = v204;
        }

        else
        {
          v128 = *(v201 + 8 * v108);

          v123 = v53;
          v117 = v53;
          v22 = v53;
        }

        ++v108;
        type metadata accessor for KPCSet();
        swift_allocObject();
        sub_261A3A3BC(2, v22, v117, v123);

        v21 = v207;
        sub_261A85924();
        v109 = *(*&v207[0] + 16);
        sub_261A85954();
        sub_261A85964();
        sub_261A85934();
        v52 = v200;
        if (v108 == v107)
        {

          v53 = *&v207[0];
          goto LABEL_106;
        }
      }

LABEL_140:
      __break(1u);
LABEL_141:
      __break(1u);
LABEL_142:
      __break(1u);
LABEL_143:
      swift_once();
      continue;
    }

    break;
  }

LABEL_106:
  v129 = v202[3];
  v130 = v202[4];
  sub_261A496C8(v129, v130);
  sub_261A48C24(v7, *&v194, v193, v129, v130, v210);
  v131 = v210[2];
  *(v52 + 72) = v210[3];
  v132 = v210[5];
  *(v52 + 88) = v210[4];
  *(v52 + 104) = v132;
  v133 = v210[1];
  *(v52 + 24) = v210[0];
  *(v52 + 40) = v133;
  *(v52 + 120) = v211;
  *(v52 + 56) = v131;
  if (!(v53 >> 62))
  {
    v134 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_108;
  }

LABEL_145:
  v134 = sub_261A85994();
LABEL_108:

  v138 = sub_261A45A9C(v134, v194, v193, v135, v136, v137);
  v140 = v139;
  type metadata accessor for KPCConfiguration();
  swift_allocObject();
  v141 = v198;
  v142 = sub_261A3ABC8(v53, v138, v140, 0);
  v198 = v141;
  if (v141)
  {
    sub_261A477D0(v203, v197);

    v143 = *(v52 + 72);
    v144 = *(v52 + 104);
    v207[4] = *(v52 + 88);
    v207[5] = v144;
    v208 = *(v52 + 120);
    v145 = *(v52 + 40);
    v207[0] = *(v52 + 24);
    v207[1] = v145;
    v146 = *(v52 + 56);
    v207[3] = v143;
    v207[2] = v146;
    sub_261A39A74(v207);
    goto LABEL_110;
  }

  *(v52 + 16) = v142;

  v148 = sub_261A853B4();
  v149 = sub_261A85734();

  if (!os_log_type_enabled(v148, v149))
  {
    sub_261A477D0(v203, v197);

    return v52;
  }

  v150 = swift_slowAlloc();
  v151 = swift_slowAlloc();
  v209 = v151;
  *v150 = 136446466;
  v152 = *(v52 + 16);
  v153 = sub_261A3BAC0();
  v155 = sub_261A3E9E8(v153, v154, &v209);

  *(v150 + 4) = v155;
  *(v150 + 12) = 2080;
  v205 = v148;
  LODWORD(v204) = v149;
  v201 = v150;
  v199 = v151;
  if (!v134)
  {

    v156 = MEMORY[0x277D84F90];
    goto LABEL_128;
  }

  *&v207[0] = MEMORY[0x277D84F90];
  sub_261A3EFB0(0, v134 & ~(v134 >> 63), 0);
  if (v134 < 0)
  {
    goto LABEL_151;
  }

  v156 = *&v207[0];
  if ((v53 & 0xC000000000000001) != 0)
  {
    v157 = 0;
    do
    {
      MEMORY[0x266716BE0](v157, v53);
      v158 = sub_261A3A6F0();
      v160 = v159;
      swift_unknownObjectRelease();
      *&v207[0] = v156;
      v162 = v156[2];
      v161 = v156[3];
      if (v162 >= v161 >> 1)
      {
        sub_261A3EFB0((v161 > 1), v162 + 1, 1);
        v156 = *&v207[0];
      }

      ++v157;
      v156[2] = v162 + 1;
      v163 = &v156[2 * v162];
      v163[4] = v158;
      v163[5] = v160;
    }

    while (v134 != v157);
  }

  else
  {
    v164 = 32;
    do
    {
      v165 = *(v53 + v164);

      v166 = sub_261A3A6F0();
      v168 = v167;

      *&v207[0] = v156;
      v170 = v156[2];
      v169 = v156[3];
      if (v170 >= v169 >> 1)
      {
        sub_261A3EFB0((v169 > 1), v170 + 1, 1);
        v156 = *&v207[0];
      }

      v156[2] = v170 + 1;
      v171 = &v156[2 * v170];
      v171[4] = v166;
      v171[5] = v168;
      v164 += 8;
      --v134;
    }

    while (v134);
  }

LABEL_128:
  v206 = v156;
  v172 = v186;
  v173 = v184;
  (*(v186 + 104))(v184, *MEMORY[0x277CC8AF0], v192);
  v174 = v190;
  v175 = v187;
  v176 = v191;
  (*(v190 + 104))(v187, *MEMORY[0x277CC8B10], v191);
  v196 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECAF58, &qword_261A87428);
  sub_261A3BF78(&qword_27FECB038, &qword_27FECAF58, &qword_261A87428);
  v177 = v185;
  sub_261A85154();
  (*(v174 + 8))(v175, v176);
  (*(v172 + 8))(v173, v192);
  sub_261A3BF78(&qword_27FECB040, &qword_27FECB028, &unk_261A87D20);
  v178 = v189;
  sub_261A85674();
  (*(v188 + 8))(v177, v178);

  v179 = sub_261A3E9E8(*&v207[0], *(&v207[0] + 1), &v209);

  v180 = v201;
  *(v201 + 14) = v179;
  v181 = v205;
  _os_log_impl(&dword_261A33000, v205, v204, "Awimbo PMI using KPC configuration %{public}s, KPC sets %s", v180, 0x16u);
  v182 = v199;
  swift_arrayDestroy();
  MEMORY[0x266717700](v182, -1, -1);
  MEMORY[0x266717700](v180, -1, -1);
  sub_261A477D0(v203, v197);

  return v200;
}

void sub_261A473FC()
{
  v1 = *(v0 + 16);
  if (v1[4])
  {
    v2 = v1[4];
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_261A857A4();
    v3 = v1[8];
    sub_261A857C4();
    v4 = v1[9];
    if (v4)
    {
      v5 = v1[9];
      swift_willThrow();
      v6 = v4;
    }

    swift_unknownObjectRelease();
  }

  else
  {
    sub_261A67C34();
  }
}

uint64_t sub_261A47498()
{
  v1 = v0[2];

  v2 = v0[3];
  v3 = v0[7];
  v4 = v0[10];
  v5 = v0[11];
  v6 = v0[12];
  v7 = v0[13];
  v8 = v0[14];
  v9 = v0[15];

  sub_261A477D0(v4, v5);
  sub_261A49634(v6);
  MEMORY[0x2667175A0](v0[16]);

  return MEMORY[0x2821FE8D8](v0, 136, 7);
}

unint64_t get_enum_tag_for_layout_string_7Recount14AwimboPMIErrorO(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0)
  {
    return v1 >> 62;
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy104_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

void sub_261A4760C()
{
  v2 = *(*v0 + 16);
  sub_261A3B57C();
  if (!v1)
  {
    v4[4] = nullsub_1;
    v4[5] = 0;
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 1107296256;
    v4[2] = sub_261A4551C;
    v4[3] = &block_descriptor_0;
    v3 = _Block_copy(v4);
    ktrace_events_range();
    _Block_release(v3);
  }
}

unint64_t sub_261A476D4()
{
  result = qword_27FECB1A8;
  if (!qword_27FECB1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECB1A8);
  }

  return result;
}

uint64_t sub_261A47728(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_261A4777C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_261A477D0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_261A47728(a1, a2);
  }

  return a1;
}

unint64_t sub_261A477E4()
{
  result = qword_27FECB1B0;
  if (!qword_27FECB1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECB1B0);
  }

  return result;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_261A47850()
{
  result = qword_27FECB1C8;
  if (!qword_27FECB1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECB1C8);
  }

  return result;
}

unint64_t sub_261A478A4()
{
  result = qword_27FECB1D0;
  if (!qword_27FECB1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECB1D0);
  }

  return result;
}

unint64_t sub_261A478F8()
{
  result = qword_27FECB1E0;
  if (!qword_27FECB1E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FECB1D8, &qword_261A87D08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECB1E0);
  }

  return result;
}

unsigned __int8 *sub_261A47974(uint64_t a1, uint64_t a2, int64_t a3)
{
  v68 = a1;
  v69 = a2;

  result = sub_261A85644();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_261A47EF8();
    v38 = v37;

    v5 = v38;
    if ((v38 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_261A85914();
      v7 = v67;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v21 = v7 - 1;
        if (v21)
        {
          v22 = a3 + 48;
          v23 = a3 + 55;
          v24 = a3 + 87;
          if (a3 > 10)
          {
            v22 = 58;
          }

          else
          {
            v24 = 97;
            v23 = 65;
          }

          if (result)
          {
            v13 = 0;
            v25 = result + 1;
            do
            {
              v26 = *v25;
              if (v26 < 0x30 || v26 >= v22)
              {
                if (v26 < 0x41 || v26 >= v23)
                {
                  v17 = 0;
                  if (v26 < 0x61 || v26 >= v24)
                  {
                    goto LABEL_129;
                  }

                  v27 = -87;
                }

                else
                {
                  v27 = -55;
                }
              }

              else
              {
                v27 = -48;
              }

              if (!is_mul_ok(v13, a3))
              {
                goto LABEL_128;
              }

              v28 = v13 * a3;
              v29 = v26 + v27;
              v20 = __CFADD__(v28, v29);
              v13 = v28 + v29;
              if (v20)
              {
                goto LABEL_128;
              }

              ++v25;
              --v21;
            }

            while (v21);
LABEL_66:
            v17 = v13;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

        goto LABEL_128;
      }

      goto LABEL_133;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v30 = a3 + 48;
        v31 = a3 + 55;
        v32 = a3 + 87;
        if (a3 > 10)
        {
          v30 = 58;
        }

        else
        {
          v32 = 97;
          v31 = 65;
        }

        if (result)
        {
          v13 = 0;
          while (1)
          {
            v33 = *result;
            if (v33 < 0x30 || v33 >= v30)
            {
              if (v33 < 0x41 || v33 >= v31)
              {
                v17 = 0;
                if (v33 < 0x61 || v33 >= v32)
                {
                  goto LABEL_129;
                }

                v34 = -87;
              }

              else
              {
                v34 = -55;
              }
            }

            else
            {
              v34 = -48;
            }

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_128;
            }

            v35 = v13 * a3;
            v36 = v33 + v34;
            v20 = __CFADD__(v35, v36);
            v13 = v35 + v36;
            if (v20)
            {
              goto LABEL_128;
            }

            ++result;
            if (!--v7)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_67;
      }

LABEL_128:
      v17 = 0;
      goto LABEL_129;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_129;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_128;
            }

            v18 = v13 * a3;
            v19 = v15 + v16;
            v20 = v18 >= v19;
            v13 = v18 - v19;
            if (!v20)
            {
              goto LABEL_128;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_66;
            }
          }
        }

LABEL_67:
        v17 = 0;
LABEL_129:

        return v17;
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v39 = HIBYTE(v5) & 0xF;
  v68 = v6;
  v69 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v39)
      {
        v41 = 0;
        v59 = a3 + 48;
        v60 = a3 + 55;
        v61 = a3 + 87;
        if (a3 > 10)
        {
          v59 = 58;
        }

        else
        {
          v61 = 97;
          v60 = 65;
        }

        v62 = &v68;
        while (1)
        {
          v63 = *v62;
          if (v63 < 0x30 || v63 >= v59)
          {
            if (v63 < 0x41 || v63 >= v60)
            {
              v17 = 0;
              if (v63 < 0x61 || v63 >= v61)
              {
                goto LABEL_129;
              }

              v64 = -87;
            }

            else
            {
              v64 = -55;
            }
          }

          else
          {
            v64 = -48;
          }

          if (!is_mul_ok(v41, a3))
          {
            goto LABEL_128;
          }

          v65 = v41 * a3;
          v66 = v63 + v64;
          v20 = __CFADD__(v65, v66);
          v41 = v65 + v66;
          if (v20)
          {
            goto LABEL_128;
          }

          v62 = (v62 + 1);
          if (!--v39)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v39)
    {
      v40 = v39 - 1;
      if (v40)
      {
        v41 = 0;
        v42 = a3 + 48;
        v43 = a3 + 55;
        v44 = a3 + 87;
        if (a3 > 10)
        {
          v42 = 58;
        }

        else
        {
          v44 = 97;
          v43 = 65;
        }

        v45 = &v68 + 1;
        while (1)
        {
          v46 = *v45;
          if (v46 < 0x30 || v46 >= v42)
          {
            if (v46 < 0x41 || v46 >= v43)
            {
              v17 = 0;
              if (v46 < 0x61 || v46 >= v44)
              {
                goto LABEL_129;
              }

              v47 = -87;
            }

            else
            {
              v47 = -55;
            }
          }

          else
          {
            v47 = -48;
          }

          if (!is_mul_ok(v41, a3))
          {
            goto LABEL_128;
          }

          v48 = v41 * a3;
          v49 = v46 + v47;
          v20 = v48 >= v49;
          v41 = v48 - v49;
          if (!v20)
          {
            goto LABEL_128;
          }

          ++v45;
          if (!--v40)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v39)
  {
    v50 = v39 - 1;
    if (v50)
    {
      v41 = 0;
      v51 = a3 + 48;
      v52 = a3 + 55;
      v53 = a3 + 87;
      if (a3 > 10)
      {
        v51 = 58;
      }

      else
      {
        v53 = 97;
        v52 = 65;
      }

      v54 = &v68 + 1;
      do
      {
        v55 = *v54;
        if (v55 < 0x30 || v55 >= v51)
        {
          if (v55 < 0x41 || v55 >= v52)
          {
            v17 = 0;
            if (v55 < 0x61 || v55 >= v53)
            {
              goto LABEL_129;
            }

            v56 = -87;
          }

          else
          {
            v56 = -55;
          }
        }

        else
        {
          v56 = -48;
        }

        if (!is_mul_ok(v41, a3))
        {
          goto LABEL_128;
        }

        v57 = v41 * a3;
        v58 = v55 + v56;
        v20 = __CFADD__(v57, v58);
        v41 = v57 + v58;
        if (v20)
        {
          goto LABEL_128;
        }

        ++v54;
        --v50;
      }

      while (v50);
LABEL_127:
      v17 = v41;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

uint64_t sub_261A47EF8()
{
  v0 = sub_261A85654();
  v4 = sub_261A47F78(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_261A47F78(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_261A85544();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_261A85824();
  if (!v9)
  {
    v11 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_261A3EE28(v9, 0);
  v12 = sub_261A480D0(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_261A85544();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_261A85914();
LABEL_4:

  return sub_261A85544();
}

unint64_t sub_261A480D0(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_261A482F0(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_261A85604();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_261A85914();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_261A482F0(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_261A855D4();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_261A482F0(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_261A85614();
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
    v5 = MEMORY[0x2667168F0](15, a1 >> 16);
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

unsigned __int8 *sub_261A4836C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int64_t a5)
{
  v70 = a1;
  v71 = a2;
  v72 = a3;
  v73 = a4;
  sub_261A49888();

  result = sub_261A85644();
  v8 = result;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_261A47EF8();
    v40 = v39;

    v7 = v40;
    if ((v40 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v9 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_261A85914();
      v9 = v69;
    }

    v10 = *result;
    if (v10 == 43)
    {
      if (v9 >= 1)
      {
        v23 = v9 - 1;
        if (v23)
        {
          v24 = a5 + 48;
          v25 = a5 + 55;
          v26 = a5 + 87;
          if (a5 > 10)
          {
            v24 = 58;
          }

          else
          {
            v26 = 97;
            v25 = 65;
          }

          if (result)
          {
            v15 = 0;
            v27 = result + 1;
            do
            {
              v28 = *v27;
              if (v28 < 0x30 || v28 >= v24)
              {
                if (v28 < 0x41 || v28 >= v25)
                {
                  v19 = 0;
                  if (v28 < 0x61 || v28 >= v26)
                  {
                    goto LABEL_129;
                  }

                  v29 = -87;
                }

                else
                {
                  v29 = -55;
                }
              }

              else
              {
                v29 = -48;
              }

              if (!is_mul_ok(v15, a5))
              {
                goto LABEL_128;
              }

              v30 = v15 * a5;
              v31 = v28 + v29;
              v22 = __CFADD__(v30, v31);
              v15 = v30 + v31;
              if (v22)
              {
                goto LABEL_128;
              }

              ++v27;
              --v23;
            }

            while (v23);
LABEL_66:
            v19 = v15;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

        goto LABEL_128;
      }

      goto LABEL_133;
    }

    if (v10 != 45)
    {
      if (v9)
      {
        v32 = a5 + 48;
        v33 = a5 + 55;
        v34 = a5 + 87;
        if (a5 > 10)
        {
          v32 = 58;
        }

        else
        {
          v34 = 97;
          v33 = 65;
        }

        if (result)
        {
          v15 = 0;
          while (1)
          {
            v35 = *result;
            if (v35 < 0x30 || v35 >= v32)
            {
              if (v35 < 0x41 || v35 >= v33)
              {
                v19 = 0;
                if (v35 < 0x61 || v35 >= v34)
                {
                  goto LABEL_129;
                }

                v36 = -87;
              }

              else
              {
                v36 = -55;
              }
            }

            else
            {
              v36 = -48;
            }

            if (!is_mul_ok(v15, a5))
            {
              goto LABEL_128;
            }

            v37 = v15 * a5;
            v38 = v35 + v36;
            v22 = __CFADD__(v37, v38);
            v15 = v37 + v38;
            if (v22)
            {
              goto LABEL_128;
            }

            ++result;
            if (!--v9)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_67;
      }

LABEL_128:
      v19 = 0;
      goto LABEL_129;
    }

    if (v9 >= 1)
    {
      v11 = v9 - 1;
      if (v11)
      {
        v12 = a5 + 48;
        v13 = a5 + 55;
        v14 = a5 + 87;
        if (a5 > 10)
        {
          v12 = 58;
        }

        else
        {
          v14 = 97;
          v13 = 65;
        }

        if (result)
        {
          v15 = 0;
          v16 = result + 1;
          while (1)
          {
            v17 = *v16;
            if (v17 < 0x30 || v17 >= v12)
            {
              if (v17 < 0x41 || v17 >= v13)
              {
                v19 = 0;
                if (v17 < 0x61 || v17 >= v14)
                {
                  goto LABEL_129;
                }

                v18 = -87;
              }

              else
              {
                v18 = -55;
              }
            }

            else
            {
              v18 = -48;
            }

            if (!is_mul_ok(v15, a5))
            {
              goto LABEL_128;
            }

            v20 = v15 * a5;
            v21 = v17 + v18;
            v22 = v20 >= v21;
            v15 = v20 - v21;
            if (!v22)
            {
              goto LABEL_128;
            }

            ++v16;
            if (!--v11)
            {
              goto LABEL_66;
            }
          }
        }

LABEL_67:
        v19 = 0;
LABEL_129:

        return v19;
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v41 = HIBYTE(v7) & 0xF;
  v70 = v8;
  v71 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v41)
      {
        v43 = 0;
        v61 = a5 + 48;
        v62 = a5 + 55;
        v63 = a5 + 87;
        if (a5 > 10)
        {
          v61 = 58;
        }

        else
        {
          v63 = 97;
          v62 = 65;
        }

        v64 = &v70;
        while (1)
        {
          v65 = *v64;
          if (v65 < 0x30 || v65 >= v61)
          {
            if (v65 < 0x41 || v65 >= v62)
            {
              v19 = 0;
              if (v65 < 0x61 || v65 >= v63)
              {
                goto LABEL_129;
              }

              v66 = -87;
            }

            else
            {
              v66 = -55;
            }
          }

          else
          {
            v66 = -48;
          }

          if (!is_mul_ok(v43, a5))
          {
            goto LABEL_128;
          }

          v67 = v43 * a5;
          v68 = v65 + v66;
          v22 = __CFADD__(v67, v68);
          v43 = v67 + v68;
          if (v22)
          {
            goto LABEL_128;
          }

          v64 = (v64 + 1);
          if (!--v41)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v41)
    {
      v42 = v41 - 1;
      if (v42)
      {
        v43 = 0;
        v44 = a5 + 48;
        v45 = a5 + 55;
        v46 = a5 + 87;
        if (a5 > 10)
        {
          v44 = 58;
        }

        else
        {
          v46 = 97;
          v45 = 65;
        }

        v47 = &v70 + 1;
        while (1)
        {
          v48 = *v47;
          if (v48 < 0x30 || v48 >= v44)
          {
            if (v48 < 0x41 || v48 >= v45)
            {
              v19 = 0;
              if (v48 < 0x61 || v48 >= v46)
              {
                goto LABEL_129;
              }

              v49 = -87;
            }

            else
            {
              v49 = -55;
            }
          }

          else
          {
            v49 = -48;
          }

          if (!is_mul_ok(v43, a5))
          {
            goto LABEL_128;
          }

          v50 = v43 * a5;
          v51 = v48 + v49;
          v22 = v50 >= v51;
          v43 = v50 - v51;
          if (!v22)
          {
            goto LABEL_128;
          }

          ++v47;
          if (!--v42)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v41)
  {
    v52 = v41 - 1;
    if (v52)
    {
      v43 = 0;
      v53 = a5 + 48;
      v54 = a5 + 55;
      v55 = a5 + 87;
      if (a5 > 10)
      {
        v53 = 58;
      }

      else
      {
        v55 = 97;
        v54 = 65;
      }

      v56 = &v70 + 1;
      do
      {
        v57 = *v56;
        if (v57 < 0x30 || v57 >= v53)
        {
          if (v57 < 0x41 || v57 >= v54)
          {
            v19 = 0;
            if (v57 < 0x61 || v57 >= v55)
            {
              goto LABEL_129;
            }

            v58 = -87;
          }

          else
          {
            v58 = -55;
          }
        }

        else
        {
          v58 = -48;
        }

        if (!is_mul_ok(v43, a5))
        {
          goto LABEL_128;
        }

        v59 = v43 * a5;
        v60 = v57 + v58;
        v22 = __CFADD__(v59, v60);
        v43 = v59 + v60;
        if (v22)
        {
          goto LABEL_128;
        }

        ++v56;
        --v52;
      }

      while (v52);
LABEL_127:
      v19 = v43;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

uint64_t sub_261A488FC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *v2;
  v5 = sub_261A5BD84(a1, a2);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = v5;
  v8 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v3;
  v14 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_261A74C58();
    v10 = v14;
  }

  v11 = *(*(v10 + 48) + 16 * v7 + 8);

  v12 = *(*(v10 + 56) + 8 * v7);
  sub_261A489A8(v7, v10);
  *v3 = v10;
  return v12;
}

uint64_t sub_261A489A8(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_261A85864() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_261A85C44();

      sub_261A85554();
      v13 = sub_261A85C84();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 8 * v3);
        v20 = (v18 + 8 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_261A48B58(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, int64_t a5)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    result = 0;
    goto LABEL_8;
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v14[0] = a3;
    v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v11 = v14;
  }

  else if ((a3 & 0x1000000000000000) != 0)
  {
    v11 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v11 = sub_261A85914();
  }

  result = sub_261A48F70(v11, a1, a2, a3, a4, a5);
  if (!v5)
  {
    v15 = v13 & 1;
LABEL_8:
    v16 = (a4 & 0x1000000000000000) != 0;
  }

  return result;
}

uint64_t sub_261A48C24@<X0>(uint64_t a1@<X0>, double a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  counter_count = kpc_get_counter_count();
  v9 = kpc_get_counter_count();
  v38 = a1;
  v10 = *(a1 + 16);
  v11 = v10;
  v30 = v9;
  if (a3)
  {
    v29 = a2 / v11;
  }

  else
  {
    v29 = a2;
    a2 = a2 * v11;
  }

  v32 = a2;
  v12 = MEMORY[0x277D84F90];
  if (v10)
  {
    v41 = MEMORY[0x277D84F90];
    result = sub_261A3F080(0, v10, 0);
    v14 = 0;
    v15 = v41;
    v36 = v10;
    v37 = a1 + 32;
    while (v14 < *(v38 + 16))
    {
      v16 = *(v37 + 8 * v14);
      v17 = *(v16 + 16);
      if (v17)
      {
        v39 = v14;
        v40 = v15;

        sub_261A3F0C0(0, v17, 0);
        v18 = v12;
        v19 = (v16 + 40);
        do
        {
          if (*v19)
          {
            v20 = v19[4];
            v21 = v19[1];
            v22 = *v19;
            v23 = *(v19 - 1);
          }

          else
          {
            v21 = 0;
            v22 = 0xE800000000000000;
            v23 = 0x544E4556455F4F4ELL;
            v20 = 1000000000;
          }

          v25 = *(v12 + 16);
          v24 = *(v12 + 24);

          if (v25 >= v24 >> 1)
          {
            sub_261A3F0C0((v24 > 1), v25 + 1, 1);
          }

          *(v12 + 16) = v25 + 1;
          v26 = (v12 + 32 * v25);
          v26[4] = v21;
          v26[5] = v23;
          v26[6] = v22;
          v26[7] = v20;
          v19 += 7;
          --v17;
        }

        while (v17);

        v12 = MEMORY[0x277D84F90];
        v10 = v36;
        v14 = v39;
        v15 = v40;
      }

      else
      {
        v18 = v12;
      }

      v28 = *(v15 + 16);
      v27 = *(v15 + 24);
      if (v28 >= v27 >> 1)
      {
        result = sub_261A3F080((v27 > 1), v28 + 1, 1);
      }

      ++v14;
      *(v15 + 16) = v28 + 1;
      *(v15 + 8 * v28 + 32) = v18;
      if (v14 == v10)
      {

        goto LABEL_22;
      }
    }

    __break(1u);
  }

  else
  {

    v15 = MEMORY[0x277D84F90];
LABEL_22:
    *(a6 + 8) = 0;
    *(a6 + 16) = 0;
    *a6 = 0;
    *(a6 + 24) = 1;
    *(a6 + 25) = 0;
    *(a6 + 32) = 0;
    *(a6 + 40) = 1;
    *(a6 + 44) = counter_count;
    *(a6 + 48) = v30;
    *(a6 + 56) = a4;
    *(a6 + 64) = a5;
    *(a6 + 72) = v15;
    *(a6 + 80) = v12;
    *(a6 + 88) = v32;
    *(a6 + 96) = v29;
  }

  return result;
}

unint64_t sub_261A48EC0(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  result = sub_261A85584();
  if (v6)
  {
    result = v5;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_14;
  }

  return sub_261A85654();
}

uint64_t sub_261A48F70(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, int64_t a6)
{
  v8 = result;
  v9 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;
  v11 = a2 & 0xC;
  v12 = a2;
  if (v11 == v10)
  {
    v14 = a2;
    v15 = a3;
    v16 = a5;
    result = sub_261A482F0(a2, a4, a5);
    a2 = v14;
    a3 = v15;
    a5 = v16;
    v12 = result;
    if ((v16 & 0x1000000000000000) == 0)
    {
LABEL_5:
      v13 = v12 >> 16;
      if (v11 != v10)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
    goto LABEL_5;
  }

  v17 = a4 & 0xFFFFFFFFFFFFLL;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(a5) & 0xF;
  }

  if (v17 < v12 >> 16)
  {
    goto LABEL_96;
  }

  v18 = a2;
  v19 = a3;
  v20 = a5;
  result = sub_261A855F4();
  a5 = v20;
  v13 = result;
  a3 = v19;
  a2 = v18;
  if (v11 == v10)
  {
LABEL_14:
    v21 = a3;
    v22 = a5;
    result = sub_261A482F0(a2, a4, a5);
    a3 = v21;
    a5 = v22;
    a2 = result;
  }

LABEL_6:
  if ((a3 & 0xC) == v10)
  {
    v23 = a2;
    v24 = a5;
    result = sub_261A482F0(a3, a4, a5);
    a2 = v23;
    a5 = v24;
    a3 = result;
    if ((v24 & 0x1000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
LABEL_8:
    result = (a3 >> 16) - (a2 >> 16);
    goto LABEL_21;
  }

  v25 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v25 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (v25 < a2 >> 16)
  {
    goto LABEL_92;
  }

  if (v25 < a3 >> 16)
  {
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  result = sub_261A855F4();
LABEL_21:
  v26 = v13 + result;
  if (__OFADD__(v13, result))
  {
    __break(1u);
    goto LABEL_91;
  }

  if (v26 < v13)
  {
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  v27 = (v13 + v8);
  if (!v8)
  {
    v27 = 0;
  }

  v28 = *v27;
  if (v28 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v41 = a6 + 48;
        v42 = a6 + 55;
        v43 = a6 + 87;
        if (a6 > 10)
        {
          v41 = 58;
        }

        else
        {
          v43 = 97;
          v42 = 65;
        }

        if (v27)
        {
          v32 = 0;
          v44 = v27 + 1;
          v45 = result - 1;
          do
          {
            v46 = *v44;
            if (v46 < 0x30 || v46 >= v41)
            {
              if (v46 < 0x41 || v46 >= v42)
              {
                v37 = 0;
                if (v46 < 0x61 || v46 >= v43)
                {
                  return v37;
                }

                v47 = -87;
              }

              else
              {
                v47 = -55;
              }
            }

            else
            {
              v47 = -48;
            }

            if (!is_mul_ok(v32, a6))
            {
              return 0;
            }

            v48 = v32 * a6;
            v49 = v46 + v47;
            v40 = __CFADD__(v48, v49);
            v32 = v48 + v49;
            if (v40)
            {
              return 0;
            }

            ++v44;
            --v45;
          }

          while (v45);
          return v32;
        }

        return 0;
      }

      return 0;
    }

    goto LABEL_95;
  }

  if (v28 != 45)
  {
    if (v26 != v13)
    {
      v50 = a6 + 48;
      v51 = a6 + 55;
      v52 = a6 + 87;
      if (a6 > 10)
      {
        v50 = 58;
      }

      else
      {
        v52 = 97;
        v51 = 65;
      }

      if (v27)
      {
        v32 = 0;
        while (1)
        {
          v53 = *v27;
          if (v53 < 0x30 || v53 >= v50)
          {
            if (v53 < 0x41 || v53 >= v51)
            {
              v37 = 0;
              if (v53 < 0x61 || v53 >= v52)
              {
                return v37;
              }

              v54 = -87;
            }

            else
            {
              v54 = -55;
            }
          }

          else
          {
            v54 = -48;
          }

          if (!is_mul_ok(v32, a6))
          {
            return 0;
          }

          v55 = v32 * a6;
          v56 = v53 + v54;
          v40 = __CFADD__(v55, v56);
          v32 = v55 + v56;
          if (v40)
          {
            return 0;
          }

          ++v27;
          if (!--result)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v29 = a6 + 48;
      v30 = a6 + 55;
      v31 = a6 + 87;
      if (a6 > 10)
      {
        v29 = 58;
      }

      else
      {
        v31 = 97;
        v30 = 65;
      }

      if (v27)
      {
        v32 = 0;
        v33 = v27 + 1;
        v34 = result - 1;
        while (1)
        {
          v35 = *v33;
          if (v35 < 0x30 || v35 >= v29)
          {
            if (v35 < 0x41 || v35 >= v30)
            {
              v37 = 0;
              if (v35 < 0x61 || v35 >= v31)
              {
                return v37;
              }

              v36 = -87;
            }

            else
            {
              v36 = -55;
            }
          }

          else
          {
            v36 = -48;
          }

          if (!is_mul_ok(v32, a6))
          {
            return 0;
          }

          v38 = v32 * a6;
          v39 = v35 + v36;
          v40 = v38 >= v39;
          v32 = v38 - v39;
          if (!v40)
          {
            return 0;
          }

          ++v33;
          if (!--v34)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
  return result;
}

uint64_t sub_261A493DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 25);
  v6 = *(a1 + 32);

  Silicon.init()(&v33);
  if (v2)
  {
    v38[0] = *a1;
    sub_261A49858(v38);
    return swift_bridgeObjectRelease_n();
  }

  else
  {
    v30 = v35;
    v31 = v36;
    v32 = v37;
    v28 = v33;
    v29 = v34;
    v22 = v35;
    v23 = v36;
    v24[0] = v37;
    *v21 = v33;
    *&v21[16] = v34;
    sub_261A39B98(&v28, v17);
    v8 = sub_261A4D704(v21);
    v9 = *a1;
    v25[2] = v30;
    v25[3] = v31;
    v25[4] = v32;
    v25[0] = v28;
    v25[1] = v29;
    sub_261A43AC8(v25, v8, v6, v9, v26);
    sub_261A38A70(v9);

    sub_261A39BF4(&v28);
    v15 = v27;
    v10 = *(v8 + 32);
    v39 = *(v8 + 24);
    sub_261A496C8(v39, v10);

    LODWORD(v9) = kpc_get_counter_count();
    counter_count = kpc_get_counter_count();

    *v17 = v15;
    *&v17[8] = *(a1 + 8);
    v17[24] = *(a1 + 24);
    v17[25] = v5;
    *&v18 = v6;
    BYTE8(v18) = 0;
    HIDWORD(v18) = v9;
    LODWORD(v19) = counter_count;
    *(&v19 + 1) = v39;
    *v20 = v10;
    memset(&v20[8], 0, 32);
    *v21 = v15;
    *&v21[8] = *&v17[8];
    v21[24] = v17[24];
    v21[25] = v5;
    *&v22 = v6;
    BYTE8(v22) = 0;
    HIDWORD(v22) = v9;
    LODWORD(v23) = counter_count;
    *(&v23 + 1) = v39;
    *&v24[0] = v10;
    *(v24 + 8) = 0u;
    *(&v24[1] + 8) = 0u;
    sub_261A39A18(v17, v16);
    result = sub_261A39A74(v21);
    v12 = *&v20[16];
    *(a2 + 64) = *v20;
    *(a2 + 80) = v12;
    *(a2 + 96) = *&v20[32];
    v13 = *&v17[16];
    *a2 = *v17;
    *(a2 + 16) = v13;
    v14 = v19;
    *(a2 + 32) = v18;
    *(a2 + 48) = v14;
  }

  return result;
}

uint64_t sub_261A49634(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_261A49674()
{
  result = qword_27FECB1E8;
  if (!qword_27FECB1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECB1E8);
  }

  return result;
}

uint64_t sub_261A496C8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_261A4777C(a1, a2);
  }

  return a1;
}

unint64_t sub_261A496DC()
{
  result = qword_27FECB1F0;
  if (!qword_27FECB1F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FECB148, &qword_261A879B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECB1F0);
  }

  return result;
}

unint64_t sub_261A49760()
{
  result = qword_27FECB200;
  if (!qword_27FECB200)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FECB1F8, &qword_261A87D40);
    sub_261A496DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECB200);
  }

  return result;
}

uint64_t sub_261A497E4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB210, &qword_261A87D50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_261A4984C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

unint64_t sub_261A49888()
{
  result = qword_27FECB220;
  if (!qword_27FECB220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECB220);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_7Recount21AwimboPMIMultiplexingVSg_0(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_261A498F4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_261A49948(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_261A499A4(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

__n128 __swift_memcpy52_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_261A499F0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 52))
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

uint64_t sub_261A49A38(uint64_t result, int a2, int a3)
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
      *(result + 52) = 1;
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

    *(result + 52) = 0;
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

uint64_t sub_261A49AA4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_261A49AEC(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_261A49B40(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 24))
  {
    return (*a1 + 126);
  }

  v3 = (((*(a1 + 16) >> 57) >> 5) | (4 * ((*(a1 + 16) >> 57) & 0x18 | *(a1 + 16) & 7))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_261A49BA0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_261A49C0C(uint64_t result, uint64_t a2)
{
  if (a2 < 2)
  {
    *(result + 16) = *(result + 16) & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    *result = (a2 - 2);
    *(result + 8) = xmmword_261A87A20;
  }

  return result;
}

uint64_t sub_261A49C5C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_261A49CA4(uint64_t result, int a2, int a3)
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

uint64_t sub_261A49D00(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 104))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_261A49D60(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 104) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 104) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_261A49DDC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_261A49E24(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_261A49E7C()
{
  result = qword_27FECB228;
  if (!qword_27FECB228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECB228);
  }

  return result;
}

unint64_t sub_261A49EE0(uint64_t a1)
{
  *(a1 + 8) = sub_261A49F10();
  result = sub_261A49F64();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_261A49F10()
{
  result = qword_27FECB230;
  if (!qword_27FECB230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECB230);
  }

  return result;
}

unint64_t sub_261A49F64()
{
  result = qword_27FECB238;
  if (!qword_27FECB238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECB238);
  }

  return result;
}

unint64_t sub_261A49FBC()
{
  result = qword_27FECB240;
  if (!qword_27FECB240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECB240);
  }

  return result;
}

unint64_t sub_261A4A014()
{
  result = qword_27FECB248;
  if (!qword_27FECB248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECB248);
  }

  return result;
}

unint64_t sub_261A4A068()
{
  result = qword_27FECB258;
  if (!qword_27FECB258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECB258);
  }

  return result;
}

unint64_t sub_261A4A0F4()
{
  result = qword_27FECB260;
  if (!qword_27FECB260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECB260);
  }

  return result;
}

uint64_t sub_261A4A148(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701080931 && a2 == 0xE400000000000000;
  if (v3 || (sub_261A85BA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_261A85BA4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x646F69726570 && a2 == 0xE600000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_261A85BA4();

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

uint64_t sub_261A4A25C()
{
  v0 = sub_261A859E4();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_261A4A2A8()
{
  v0 = sub_261A859E4();

  if (v0 >= 7)
  {
    return 7;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_261A4A2F4()
{
  result = qword_27FECB270;
  if (!qword_27FECB270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECB270);
  }

  return result;
}

uint64_t sub_261A4A378(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_261A4A3F4()
{
  result = qword_27FECB290;
  if (!qword_27FECB290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECB290);
  }

  return result;
}

unint64_t sub_261A4A448()
{
  result = qword_27FECB2A0;
  if (!qword_27FECB2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECB2A0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AwimboPMIMultiplexing.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AwimboPMIMultiplexing.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AwimboInfo.CodingKeys(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for AwimboInfo.CodingKeys(_WORD *result, int a2, int a3)
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

unint64_t sub_261A4A6E0()
{
  result = qword_27FECB2A8;
  if (!qword_27FECB2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECB2A8);
  }

  return result;
}

unint64_t sub_261A4A738()
{
  result = qword_27FECB2B0;
  if (!qword_27FECB2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECB2B0);
  }

  return result;
}

unint64_t sub_261A4A790()
{
  result = qword_27FECB2B8;
  if (!qword_27FECB2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECB2B8);
  }

  return result;
}

unint64_t sub_261A4A7E8()
{
  result = qword_27FECB2C0;
  if (!qword_27FECB2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECB2C0);
  }

  return result;
}

unint64_t sub_261A4A840()
{
  result = qword_27FECB2C8;
  if (!qword_27FECB2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECB2C8);
  }

  return result;
}

unint64_t sub_261A4A898()
{
  result = qword_27FECB2D0;
  if (!qword_27FECB2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECB2D0);
  }

  return result;
}

unint64_t sub_261A4A8F0()
{
  result = qword_27FECB2D8;
  if (!qword_27FECB2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECB2D8);
  }

  return result;
}

unint64_t sub_261A4A948()
{
  result = qword_27FECB2E0;
  if (!qword_27FECB2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECB2E0);
  }

  return result;
}

unint64_t sub_261A4A9A0()
{
  result = qword_27FECB2E8;
  if (!qword_27FECB2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECB2E8);
  }

  return result;
}

uint64_t sub_261A4AAA4(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB350, &unk_261A88840);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_261A4DF60();
  sub_261A85CD4();
  v11 = *v3;
  v12 = v3[1];
  v17[15] = 0;
  sub_261A85B14();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v13 = v3[2];
  v17[14] = 1;
  sub_261A85B74();
  v14 = v3[3];
  v17[13] = 2;
  sub_261A85B74();
  v16 = *(v3 + 32);
  v17[12] = 3;
  sub_261A85B24();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_261A4AC64()
{
  v1 = 1701667182;
  v2 = 0x4D7265746E756F63;
  if (*v0 != 2)
  {
    v2 = 0x6E7265746E497369;
  }

  if (*v0)
  {
    v1 = 0x726F7463656C6573;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_261A4ACE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_261A4DBB4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_261A4AD0C(uint64_t a1)
{
  v2 = sub_261A4DF60();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261A4AD48(uint64_t a1)
{
  v2 = sub_261A4DF60();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_261A4AD84@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_261A4DD24(a1, v6);
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

uint64_t sub_261A4ADE4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v6 = *(a2 + 16);
  v5 = *(a2 + 24);
  v7 = *(a2 + 32);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    if (v2 != v6 || v3 != v5)
    {
      return 0;
    }

    return v4 ^ v7 ^ 1u;
  }

  v9 = sub_261A85BA4();
  result = 0;
  if ((v9 & 1) != 0 && v2 == v6 && v3 == v5)
  {
    return v4 ^ v7 ^ 1u;
  }

  return result;
}

unint64_t sub_261A4AEB0()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 3);
  v3 = *(v0 + 10);
  v8 = *v0;
  v9 = v0[3];
  v4 = *(v0 + 8);
  v5 = *(v0 + 9);
  sub_261A858C4();

  v10 = *(v0 + 4);
  v6 = sub_261A68480();
  MEMORY[0x2667168A0](v6);

  return 0xD000000000000026;
}

uint64_t sub_261A4AF88@<X0>(int *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  LODWORD(v46) = a2;
  v48 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECAEC8, &qword_261A8BFE0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v47 = &v44 - v6;
  v7 = sub_261A85314();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_261A85394();
  v49 = *(v12 - 8);
  v13 = v49[8];
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v44 - v17;
  v20 = *a1;
  v19 = a1[1];
  LODWORD(a1) = a1[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB030, &qword_261A88860);
  v21 = swift_allocObject();
  v22 = MEMORY[0x277D84CC0];
  *(v21 + 16) = xmmword_261A886D0;
  v23 = MEMORY[0x277D84D30];
  *(v21 + 56) = v22;
  *(v21 + 64) = v23;
  *(v21 + 32) = v20;
  *(v21 + 96) = v22;
  *(v21 + 104) = v23;
  *(v21 + 72) = v19;
  *(v21 + 136) = v22;
  *(v21 + 144) = v23;
  *(v21 + 112) = a1;
  v24 = sub_261A854D4();
  v26 = v25;
  if ((v46 & 1) == 0)
  {
    v44 = "/usr/local/share/kpep/";
    v33 = *MEMORY[0x277CC91C0];
    v45 = v26;
    v34 = *(v8 + 104);
    v34(v11, v33, v7);
    v46 = v49[7];
    v46(v47, 1, 1, v12);
    sub_261A85374();
    v50 = v24;
    v51 = v45;
    v34(v11, *MEMORY[0x277CC91D8], v7);
    sub_261A4E05C();
    sub_261A85384();
    (*(v8 + 8))(v11, v7);
    v32 = v49[1];
    v32(v16, v12);

    v31 = v18;
    goto LABEL_5;
  }

  v44 = v16;
  v45 = v18;
  v27 = v47;
  v28 = v48;
  if (os_variant_has_internal_content())
  {
    v29 = *(v8 + 104);
    v29(v11, *MEMORY[0x277CC91C0], v7);
    v46 = v49[7];
    v46(v27, 1, 1, v12);
    v30 = v44;
    sub_261A85374();
    v50 = v24;
    v51 = v26;
    v29(v11, *MEMORY[0x277CC91D8], v7);
    sub_261A4E05C();
    v31 = v45;
    sub_261A85384();
    (*(v8 + 8))(v11, v7);
    v32 = v49[1];
    v32(v30, v12);

LABEL_5:
    v35 = [objc_allocWithZone(MEMORY[0x277CCAA00]) init];
    sub_261A85364();
    v36 = sub_261A85494();

    v37 = [v35 fileExistsAtPath_];

    if (v37)
    {
      v38 = v48;
      v39 = v49[4];
      v49 += 4;
      v39(v48, v31, v12);
      v40 = v38;
      v41 = 0;
    }

    else
    {
      v32(v31, v12);
      v40 = v48;
      v41 = 1;
    }

    return (v46)(v40, v41, 1, v12);
  }

  v43 = v49[7];

  return v43(v28, 1, 1, v12);
}

uint64_t sub_261A4B554()
{
  if (*v0)
  {
    result = 1635017060;
  }

  else
  {
    result = 0x456F5473656D616ELL;
  }

  *v0;
  return result;
}

uint64_t sub_261A4B594@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x456F5473656D616ELL && a2 == 0xED000073746E6576;
  if (v6 || (sub_261A85BA4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1635017060 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_261A85BA4();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_261A4B684(uint64_t a1)
{
  v2 = sub_261A4BCDC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261A4B6C0(uint64_t a1)
{
  v2 = sub_261A4BCDC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_261A4B6FC()
{
  v1 = v0[2];

  sub_261A477D0(v0[3], v0[4]);

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

uint64_t sub_261A4B760(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_261A4B7A8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_261A4B7FC(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB2F0, &qword_261A88820);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_261A4BCDC();
  sub_261A85CD4();
  v14 = v3[2];
  v16 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB300, &qword_261A88828);
  sub_261A4BDD8(&qword_27FECB308, sub_261A4BD30);
  sub_261A85B54();
  if (!v2)
  {
    v11 = v3[4];
    v14 = v3[3];
    v15 = v11;
    v16 = 1;
    sub_261A496C8(v14, v11);
    sub_261A4BD84();
    sub_261A85B04();
    sub_261A477D0(v14, v15);
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t *sub_261A4B9E8(uint64_t *a1)
{
  v4 = *v1;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB320, &qword_261A88830);
  v5 = *(v14 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v14);
  v8 = &v13 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_261A4BCDC();
  sub_261A85CB4();
  if (v2)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    v10 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB300, &qword_261A88828);
    v16 = 0;
    sub_261A4BDD8(&qword_27FECB328, sub_261A4BE5C);
    v11 = v14;
    sub_261A85A94();
    v1[2] = v15;
    v16 = 1;
    sub_261A4BEB0();
    sub_261A85A34();
    (*(v10 + 8))(v8, v11);
    *(v1 + 3) = v15;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v1;
}

uint64_t *sub_261A4BC60@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = sub_261A4B9E8(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

unint64_t sub_261A4BCDC()
{
  result = qword_27FECB2F8;
  if (!qword_27FECB2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECB2F8);
  }

  return result;
}

unint64_t sub_261A4BD30()
{
  result = qword_27FECB310;
  if (!qword_27FECB310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECB310);
  }

  return result;
}

unint64_t sub_261A4BD84()
{
  result = qword_27FECB318;
  if (!qword_27FECB318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECB318);
  }

  return result;
}

uint64_t sub_261A4BDD8(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FECB300, &qword_261A88828);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_261A4BE5C()
{
  result = qword_27FECB330;
  if (!qword_27FECB330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECB330);
  }

  return result;
}

unint64_t sub_261A4BEB0()
{
  result = qword_27FECB338;
  if (!qword_27FECB338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECB338);
  }

  return result;
}

unint64_t sub_261A4BF04()
{
  sub_261A4EDF0(v0, v8);
  sub_261A39AC8(v8, v7);
  v4[0] = 0;
  v4[1] = 0xE000000000000000;
  sub_261A858C4();

  v5 = 0xD00000000000001ELL;
  v6 = 0x8000000261A8E510;
  sub_261A39AE0(v7, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB360, &unk_261A88850);
  v1 = sub_261A85514();
  MEMORY[0x2667168A0](v1);

  v2 = v5;
  __swift_destroy_boxed_opaque_existential_1(v7);
  return v2;
}

uint64_t sub_261A4BFD0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x737265746E756F63;
  }

  else
  {
    v4 = 0x7265626D756ELL;
  }

  if (v3)
  {
    v5 = 0xE600000000000000;
  }

  else
  {
    v5 = 0xED00006B73616D5FLL;
  }

  if (*a2)
  {
    v6 = 0x737265746E756F63;
  }

  else
  {
    v6 = 0x7265626D756ELL;
  }

  if (*a2)
  {
    v7 = 0xED00006B73616D5FLL;
  }

  else
  {
    v7 = 0xE600000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_261A85BA4();
  }

  return v9 & 1;
}

uint64_t sub_261A4C080()
{
  v1 = *v0;
  sub_261A85C44();
  sub_261A85554();

  return sub_261A85C84();
}

uint64_t sub_261A4C10C()
{
  *v0;
  sub_261A85554();
}

uint64_t sub_261A4C184()
{
  v1 = *v0;
  sub_261A85C44();
  sub_261A85554();

  return sub_261A85C84();
}

uint64_t sub_261A4C20C@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_261A859E4();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_261A4C26C(uint64_t *a1@<X8>)
{
  v2 = 0x7265626D756ELL;
  if (*v1)
  {
    v2 = 0x737265746E756F63;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xED00006B73616D5FLL;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_261A4C2B4()
{
  if (*v0)
  {
    result = 0x737265746E756F63;
  }

  else
  {
    result = 0x7265626D756ELL;
  }

  *v0;
  return result;
}

uint64_t sub_261A4C2F8@<X0>(char *a1@<X8>)
{
  v2 = sub_261A859E4();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_261A4C35C(uint64_t a1)
{
  v2 = sub_261A4F4C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261A4C398(uint64_t a1)
{
  v2 = sub_261A4F4C8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_261A4C3D4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_261A4E5C0(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5 & 1;
    *(a2 + 16) = v6;
    *(a2 + 24) = v7 & 1;
  }

  return result;
}

uint64_t sub_261A4C420()
{
  v1 = *v0;
  sub_261A85C44();
  sub_261A85554();

  return sub_261A85C84();
}

uint64_t sub_261A4C4F8()
{
  *v0;
  *v0;
  *v0;
  sub_261A85554();
}

uint64_t sub_261A4C5BC()
{
  v1 = *v0;
  sub_261A85C44();
  sub_261A85554();

  return sub_261A85C84();
}

uint64_t sub_261A4C690@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_261A4E788();
  *a2 = result;
  return result;
}

void sub_261A4C6C0(uint64_t *a1@<X8>)
{
  v2 = 0xEE00737265746E75;
  v3 = 0x6F635F6465786966;
  v4 = 0xE700000000000000;
  v5 = 0x73657361696C61;
  if (*v1 != 2)
  {
    v5 = 0x73746E657665;
    v4 = 0xE600000000000000;
  }

  if (*v1)
  {
    v3 = 0x635F6769666E6F63;
    v2 = 0xEF737265746E756FLL;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_261A4C754()
{
  v1 = 0x6F635F6465786966;
  v2 = 0x73657361696C61;
  if (*v0 != 2)
  {
    v2 = 0x73746E657665;
  }

  if (*v0)
  {
    v1 = 0x635F6769666E6F63;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_261A4C7E4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_261A4E788();
  *a1 = result;
  return result;
}

uint64_t sub_261A4C80C(uint64_t a1)
{
  v2 = sub_261A4F198();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261A4C848(uint64_t a1)
{
  v2 = sub_261A4F198();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_261A4C884@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_261A4E7D4(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_261A4C8C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 7696483 && a2 == 0xE300000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_261A85BA4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_261A4C94C(uint64_t a1)
{
  v2 = sub_261A4EFC8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261A4C988(uint64_t a1)
{
  v2 = sub_261A4EFC8();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_261A4C9C4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_261A4EA48(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_261A4C9F4()
{
  sub_261A85C44();
  MEMORY[0x266716F60](0);
  return sub_261A85C84();
}

uint64_t sub_261A4CA38()
{
  sub_261A85C44();
  MEMORY[0x266716F60](0);
  return sub_261A85C84();
}

uint64_t sub_261A4CA8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6D6574737973 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_261A85BA4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_261A4CB10(uint64_t a1)
{
  v2 = sub_261A4ED48();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261A4CB4C(uint64_t a1)
{
  v2 = sub_261A4ED48();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_261A4CB88@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_261A4EBC8(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_261A4CBB8(uint64_t a1, unint64_t a2)
{
  v5 = sub_261A852B4();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  sub_261A852A4();
  sub_261A4DFB4();
  sub_261A85294();
  if (v2)
  {
    v13 = v2;
    v8 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB1B8, &qword_261A8C910);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB360, &unk_261A88850);
    if (swift_dynamicCast())
    {
      MEMORY[0x2667175A0](v2);
      sub_261A39AC8(&v12, v11);
      sub_261A4E008();
      swift_allocError();
      sub_261A39AE0(v11, v9);
      swift_willThrow();

      sub_261A47728(a1, a2);
      __swift_destroy_boxed_opaque_existential_1(v11);
    }

    else
    {

      sub_261A47728(a1, a2);
    }

    return MEMORY[0x2667175A0](v13);
  }

  else
  {

    sub_261A47728(a1, a2);
    return v12;
  }
}

uint64_t sub_261A4CD44(uint64_t a1, char a2, uint64_t a3)
{
  v5 = a1 + 64;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  v9 = (v6 + 63) >> 6;
  v10 = a2 & 1;

  v12 = 0;
  v13 = MEMORY[0x277D84F90];
  if (!v8)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_4:
    while (1)
    {
      v14 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v15 = v14 | (v12 << 6);
      v16 = *(a1 + 56) + 32 * v15;
      if ((*(v16 + 8) & 1) == 0)
      {
        break;
      }

      if (!v8)
      {
        goto LABEL_6;
      }
    }

    v18 = (*(a1 + 48) + 16 * v15);
    v19 = v18[1];
    v26 = *v16;
    v27 = *v18;
    LODWORD(v18) = *(v16 + 24);
    v20 = *(v16 + 16);
    if (v18)
    {
      v20 = a3;
    }

    v25 = v20;
    swift_bridgeObjectRetain_n();
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_261A65C08(0, v13[2] + 1, 1, v13);
      v13 = result;
    }

    v22 = v13[2];
    v21 = v13[3];
    v23 = v22 + 1;
    if (v22 >= v21 >> 1)
    {
      result = sub_261A65C08((v21 > 1), v22 + 1, 1, v13);
      v23 = v22 + 1;
      v13 = result;
    }

    v13[2] = v23;
    v24 = &v13[7 * v22];
    v24[4] = v27;
    v24[5] = v19;
    v24[6] = v27;
    v24[7] = v19;
    v24[8] = v26;
    v24[9] = v25;
    *(v24 + 80) = v10;
  }

  while (v8);
LABEL_6:
  while (1)
  {
    v17 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v17 >= v9)
    {

      return v13;
    }

    v8 = *(v5 + 8 * v17);
    ++v12;
    if (v8)
    {
      v12 = v17;
      goto LABEL_4;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_261A4CEF8(unint64_t result, char a2, void *a3)
{
  v3 = *(result + 16);
  if (v3)
  {
    v5 = (result + 80);
    do
    {
      v15 = *(v5 - 6);
      v14 = *(v5 - 5);
      v17 = *(v5 - 4);
      v16 = *(v5 - 3);
      v19 = *(v5 - 2);
      v18 = *(v5 - 1);
      v20 = *v5;

      if (!v14)
      {
        break;
      }

      v36 = v20;
      v38 = v18;
      v39 = v3;
      v21 = *a3;
      result = sub_261A5BD84(v15, v14);
      v23 = v21[2];
      v24 = (v22 & 1) == 0;
      v25 = __OFADD__(v23, v24);
      v26 = v23 + v24;
      if (v25)
      {
        __break(1u);
LABEL_17:
        __break(1u);
LABEL_18:
        result = sub_261A85BE4();
        __break(1u);
        return result;
      }

      v27 = v22;
      if (v21[3] >= v26)
      {
        if ((a2 & 1) == 0)
        {
          v35 = result;
          sub_261A74AC8();
          result = v35;
        }
      }

      else
      {
        sub_261A75220(v26, a2 & 1);
        v28 = *a3;
        result = sub_261A5BD84(v15, v14);
        if ((v27 & 1) != (v29 & 1))
        {
          goto LABEL_18;
        }
      }

      v30 = *a3;
      if (v27)
      {
        v6 = 40 * result;
        v7 = v30[7] + 40 * result;
        v9 = *v7;
        v8 = *(v7 + 8);
        v10 = *(v7 + 16);
        v11 = *(v7 + 24);
        v37 = *(v7 + 32);

        v12 = v30[7] + v6;
        v13 = *(v12 + 8);
        *v12 = v9;
        *(v12 + 8) = v8;
        *(v12 + 16) = v10;
        *(v12 + 24) = v11;
        *(v12 + 32) = v37;
      }

      else
      {
        v30[(result >> 6) + 8] |= 1 << result;
        v31 = (v30[6] + 16 * result);
        *v31 = v15;
        v31[1] = v14;
        v32 = v30[7] + 40 * result;
        *v32 = v17;
        *(v32 + 8) = v16;
        *(v32 + 16) = v19;
        *(v32 + 24) = v38;
        *(v32 + 32) = v36;
        v33 = v30[2];
        v25 = __OFADD__(v33, 1);
        v34 = v33 + 1;
        if (v25)
        {
          goto LABEL_17;
        }

        v30[2] = v34;
      }

      v5 += 56;
      a2 = 1;
      --v3;
    }

    while (v39 != 1);
  }

  return result;
}

void *sub_261A4D0F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{

  v16 = sub_261A4CD44(a3, a10, a1);

  if (a6)
  {

    v17 = sub_261A4CD44(a7, 1, a1);
  }

  else
  {
    v17 = MEMORY[0x277D84F90];
  }

  v64 = v16;
  sub_261A7F260(v17);
  if (*(v16 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB380, &qword_261A88868);
    v18 = sub_261A859C4();
  }

  else
  {
    v18 = MEMORY[0x277D84F98];
  }

  v64 = v18;
  sub_261A4CEF8(v16, 1, &v64);
  v60 = v10;
  if (v10)
  {
    goto LABEL_36;
  }

  v19 = 0;
  v20 = a2 + 64;
  v21 = 1 << *(a2 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v64;
  v24 = v22 & *(a2 + 64);
  v25 = (v21 + 63) >> 6;
  v63 = a2;
  while (v24)
  {
    v26 = v24;
LABEL_17:
    v24 = (v26 - 1) & v26;
    if (v23[2])
    {
      v28 = __clz(__rbit64(v26)) | (v19 << 6);
      v29 = *(*(a2 + 48) + 16 * v28 + 8);
      v62 = *(*(a2 + 48) + 16 * v28);
      v30 = (*(a2 + 56) + 16 * v28);
      v31 = *v30;
      v32 = v30[1];

      v33 = sub_261A5BD84(v31, v32);
      v35 = v34;

      if (v35)
      {
        v36 = v23[7] + 40 * v33;
        v57 = *(v36 + 16);
        v58 = *(v36 + 24);
        v59 = *(v36 + 32);

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v64 = v23;
        v38 = sub_261A5BD84(v62, v29);
        v40 = v23[2];
        v41 = (v39 & 1) == 0;
        v42 = __OFADD__(v40, v41);
        v43 = v40 + v41;
        if (v42)
        {
          goto LABEL_33;
        }

        v44 = v39;
        if (v23[3] >= v43)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            v45 = v62;
            goto LABEL_26;
          }

          v51 = v38;
          sub_261A74AC8();
          v38 = v51;
          v45 = v62;
          v47 = v59;
          if ((v44 & 1) == 0)
          {
            goto LABEL_29;
          }

LABEL_27:
          v48 = v38;

          v23 = v64;
          v49 = v64[7] + 40 * v48;
          v50 = *(v49 + 8);
          *v49 = v45;
          *(v49 + 8) = v29;
          *(v49 + 16) = v57;
          *(v49 + 24) = v58;
          *(v49 + 32) = v47;

          a2 = v63;
        }

        else
        {
          sub_261A75220(v43, isUniquelyReferenced_nonNull_native);
          v45 = v62;
          v38 = sub_261A5BD84(v62, v29);
          if ((v44 & 1) != (v46 & 1))
          {
            goto LABEL_35;
          }

LABEL_26:
          v47 = v59;
          if (v44)
          {
            goto LABEL_27;
          }

LABEL_29:
          v23 = v64;
          v64[(v38 >> 6) + 8] |= 1 << v38;
          v52 = (v23[6] + 16 * v38);
          *v52 = v45;
          v52[1] = v29;
          v53 = v23[7] + 40 * v38;
          *v53 = v45;
          *(v53 + 8) = v29;
          *(v53 + 16) = v57;
          *(v53 + 24) = v58;
          *(v53 + 32) = v47;
          v54 = v23[2];
          v42 = __OFADD__(v54, 1);
          v55 = v54 + 1;
          if (v42)
          {
            goto LABEL_34;
          }

          v23[2] = v55;
          a2 = v63;
        }
      }

      else
      {

        a2 = v63;
      }
    }
  }

  while (1)
  {
    v27 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v27 >= v25)
    {

      type metadata accessor for EventDictionary();
      result = swift_allocObject();
      result[2] = v23;
      result[3] = a8;
      result[4] = a9;
      return result;
    }

    v26 = *(v20 + 8 * v27);
    ++v19;
    if (v26)
    {
      v19 = v27;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  sub_261A85BE4();
  __break(1u);
LABEL_36:

  MEMORY[0x2667175A0](v60);

  __break(1u);
  return result;
}

void *sub_261A4D4D8(void *result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v9 = result;
  v10 = a2 >> 60;
  v11 = result;
  v12 = a2;
  if (a2 >> 60 == 15)
  {
    if (a4 >> 60 == 15)
    {
      __break(1u);
      return result;
    }

    sub_261A4777C(a3, a4);
    v11 = a3;
    v12 = a4;
  }

  sub_261A4777C(v11, v12);
  sub_261A4777C(v11, v12);
  sub_261A496C8(v9, a2);
  sub_261A4CBB8(v11, v12);
  if (v4)
  {
    sub_261A47728(v11, v12);
    sub_261A47728(v11, v12);
    sub_261A477D0(a3, a4);
    sub_261A477D0(v9, a2);
  }

  else
  {
    v16 = 0;
    if (v10 > 0xE || a4 >> 60 == 15)
    {
      v24 = v11;
      v25 = v12;
      v19 = 0;
      v21 = 0;
      v23 = 0;
    }

    else
    {
      v26 = v13;
      v17 = v15;
      v27 = v14;
      sub_261A4777C(a3, a4);
      sub_261A47728(v11, v12);
      sub_261A4777C(a3, a4);
      v16 = sub_261A4CBB8(a3, a4);
      v19 = v18;
      v21 = v20;
      v23 = v22;
      v24 = a3;
      v25 = a4;
      v14 = v27;
      v15 = v17;
      v13 = v26;
    }

    v5 = sub_261A4D0F4(v13, v14, v15, v16, v19, v21, v23, v24, v25, v10 > 0xE);
    sub_261A47728(v11, v12);
    sub_261A477D0(a3, a4);
    sub_261A477D0(v9, a2);
  }

  return v5;
}

uint64_t sub_261A4D704(__int128 *a1)
{
  v2 = sub_261A85394();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v50 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v48 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECAEC8, &qword_261A8BFE0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v52 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v48 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v48 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v48 - v19;
  v21 = a1[3];
  v57 = a1[2];
  v58 = v21;
  v59 = a1[4];
  v22 = a1[1];
  v55 = *a1;
  v56 = v22;
  v23 = v57;
  LODWORD(a1) = DWORD1(v57);
  v24 = DWORD2(v57);
  *&v54[0] = v57;
  DWORD2(v54[0]) = DWORD2(v57);
  sub_261A4AF88(v54, 0, &v48 - v19);
  *&v54[0] = __PAIR64__(a1, v23);
  DWORD2(v54[0]) = v24;
  v60 = v18;
  sub_261A4AF88(v54, 1, v18);
  v51 = v3;
  v25 = *(v3 + 48);
  if (v25(v20, 1, v2) == 1 && v25(v60, 1, v2) == 1)
  {
    v54[2] = v57;
    v54[3] = v58;
    v54[4] = v59;
    v54[0] = v55;
    v54[1] = v56;
    sub_261A4E0B0();
    swift_allocError();
    sub_261A4E104(v54, v26);
    swift_willThrow();
LABEL_8:
    v34 = v60;
    goto LABEL_16;
  }

  sub_261A39BF4(&v55);
  sub_261A4E18C(v20, v15);
  if (v25(v15, 1, v2) == 1)
  {
    v27 = 0;
    v49 = 0xF000000000000000;
    v28 = v53;
    v29 = v52;
  }

  else
  {
    v30 = v51;
    (*(v51 + 32))(v8, v15, v2);
    v31 = v53;
    v32 = sub_261A853A4();
    v28 = v31;
    v29 = v52;
    if (v31)
    {
      (*(v30 + 8))(v8, v2);
      goto LABEL_8;
    }

    v27 = v32;
    v49 = v33;
    (*(v30 + 8))(v8, v2);
  }

  v34 = v60;
  sub_261A4E18C(v60, v29);
  if (v25(v29, 1, v2) == 1)
  {
    v35 = 0;
    v36 = 0xF000000000000000;
  }

  else
  {
    v37 = v51;
    v38 = v50;
    (*(v51 + 32))(v50, v29, v2);
    v39 = sub_261A853A4();
    if (v28)
    {
      (*(v37 + 8))(v38, v2);
      sub_261A477D0(v27, v49);
      goto LABEL_16;
    }

    v41 = v39;
    v42 = v40;
    v43 = v38;
    v44 = v2;
    v2 = v41;
    v45 = v42;
    (*(v37 + 8))(v43, v44);
    v36 = v45;
    v35 = v2;
  }

  v46 = sub_261A4D4D8(v27, v49, v35, v36);
  if (!v28)
  {
    v2 = v46;
    sub_261A4E124(v20);
    sub_261A4E124(v34);
    return v2;
  }

LABEL_16:
  sub_261A4E124(v20);
  sub_261A4E124(v34);
  return v2;
}

uint64_t sub_261A4DBB4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_261A85BA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726F7463656C6573 && a2 == 0xE800000000000000 || (sub_261A85BA4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4D7265746E756F63 && a2 == 0xEB000000006B7361 || (sub_261A85BA4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E7265746E497369 && a2 == 0xEA00000000006C61)
  {

    return 3;
  }

  else
  {
    v6 = sub_261A85BA4();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_261A4DD24@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB340, &qword_261A88838);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_261A4DF60();
  sub_261A85CB4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v23 = 0;
  v11 = sub_261A85A54();
  v13 = v12;
  v14 = v11;
  v22 = 1;
  v19 = sub_261A85AB4();
  v21 = 2;
  v18 = sub_261A85AB4();
  v20 = 3;
  v15 = sub_261A85A64();
  (*(v6 + 8))(v9, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v14;
  *(a2 + 8) = v13;
  v17 = v18;
  *(a2 + 16) = v19;
  *(a2 + 24) = v17;
  *(a2 + 32) = v15 & 1;
  return result;
}

unint64_t sub_261A4DF60()
{
  result = qword_27FECB348;
  if (!qword_27FECB348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECB348);
  }

  return result;
}

unint64_t sub_261A4DFB4()
{
  result = qword_27FECB358;
  if (!qword_27FECB358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECB358);
  }

  return result;
}

unint64_t sub_261A4E008()
{
  result = qword_27FECB368;
  if (!qword_27FECB368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECB368);
  }

  return result;
}

unint64_t sub_261A4E05C()
{
  result = qword_27FECB370;
  if (!qword_27FECB370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECB370);
  }

  return result;
}

unint64_t sub_261A4E0B0()
{
  result = qword_27FECB378;
  if (!qword_27FECB378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECB378);
  }

  return result;
}

_OWORD *sub_261A4E104(_OWORD *a1, _OWORD *a2)
{
  *a2 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[4];
  a2[3] = a1[3];
  a2[4] = v4;
  a2[1] = v2;
  a2[2] = v3;
  return a2;
}

uint64_t sub_261A4E124(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECAEC8, &qword_261A8BFE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_261A4E18C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECAEC8, &qword_261A8BFE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_261A4E218(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_261A4E260(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_261A4E2C4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_261A4E30C(uint64_t result, int a2, int a3)
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

unint64_t sub_261A4E3AC()
{
  result = qword_27FECB388;
  if (!qword_27FECB388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECB388);
  }

  return result;
}

unint64_t sub_261A4E404()
{
  result = qword_27FECB390;
  if (!qword_27FECB390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECB390);
  }

  return result;
}

unint64_t sub_261A4E464()
{
  result = qword_27FECB398;
  if (!qword_27FECB398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECB398);
  }

  return result;
}

unint64_t sub_261A4E4BC()
{
  result = qword_27FECB3A0;
  if (!qword_27FECB3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECB3A0);
  }

  return result;
}

unint64_t sub_261A4E514()
{
  result = qword_27FECB3A8;
  if (!qword_27FECB3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECB3A8);
  }

  return result;
}

unint64_t sub_261A4E56C()
{
  result = qword_27FECB3B0;
  if (!qword_27FECB3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECB3B0);
  }

  return result;
}

uint64_t sub_261A4E5C0(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB470, &qword_261A89170);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v14[-v6];
  v8 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  sub_261A4F4C8();
  sub_261A85CB4();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v14[31] = 0;
    v8 = sub_261A85A44();
    v10 = v9;
    v14[30] = 1;
    sub_261A85A44();
    v13 = v12;
    (*(v4 + 8))(v7, v3);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v14[24] = v10 & 1;
    v14[8] = v13 & 1;
  }

  return v8;
}

uint64_t sub_261A4E788()
{
  v0 = sub_261A859E4();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_261A4E7D4(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB420, &qword_261A88FC8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_261A4F198();
  sub_261A85CB4();
  LOBYTE(v12) = 0;
  v8 = sub_261A85AB4();
  LOBYTE(v12) = 1;
  sub_261A85AB4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB430, &qword_261A88FD0);
  v11 = 2;
  sub_261A4F1EC();
  sub_261A85A94();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB440, &qword_261A88FD8);
  v11 = 3;
  sub_261A4F268();
  sub_261A85A94();
  (*(v3 + 8))(v6, v2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v8;
}

void *sub_261A4EA48(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB3F0, &qword_261A88E60);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - v6;
  v8 = a1[4];
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_261A4EFC8();
  sub_261A85CB4();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    sub_261A4F01C();
    sub_261A85A94();
    (*(v4 + 8))(v7, v3);
    v9 = v11;
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v9;
}

void *sub_261A4EBC8(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB3B8, &qword_261A88C78);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - v6;
  v8 = a1[4];
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_261A4ED48();
  sub_261A85CB4();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    sub_261A4ED9C();
    sub_261A85A94();
    (*(v4 + 8))(v7, v3);
    v9 = v11;
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v9;
}

unint64_t sub_261A4ED48()
{
  result = qword_27FECB3C0;
  if (!qword_27FECB3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECB3C0);
  }

  return result;
}

unint64_t sub_261A4ED9C()
{
  result = qword_27FECB3C8;
  if (!qword_27FECB3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECB3C8);
  }

  return result;
}

unint64_t sub_261A4EE6C()
{
  result = qword_27FECB3D0;
  if (!qword_27FECB3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECB3D0);
  }

  return result;
}

unint64_t sub_261A4EEC4()
{
  result = qword_27FECB3D8;
  if (!qword_27FECB3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECB3D8);
  }

  return result;
}

unint64_t sub_261A4EF1C()
{
  result = qword_27FECB3E0;
  if (!qword_27FECB3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECB3E0);
  }

  return result;
}

unint64_t sub_261A4EF74()
{
  result = qword_27FECB3E8;
  if (!qword_27FECB3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECB3E8);
  }

  return result;
}

unint64_t sub_261A4EFC8()
{
  result = qword_27FECB3F8;
  if (!qword_27FECB3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECB3F8);
  }

  return result;
}

unint64_t sub_261A4F01C()
{
  result = qword_27FECB400;
  if (!qword_27FECB400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECB400);
  }

  return result;
}

unint64_t sub_261A4F094()
{
  result = qword_27FECB408;
  if (!qword_27FECB408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECB408);
  }

  return result;
}

unint64_t sub_261A4F0EC()
{
  result = qword_27FECB410;
  if (!qword_27FECB410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECB410);
  }

  return result;
}

unint64_t sub_261A4F144()
{
  result = qword_27FECB418;
  if (!qword_27FECB418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECB418);
  }

  return result;
}

unint64_t sub_261A4F198()
{
  result = qword_27FECB428;
  if (!qword_27FECB428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECB428);
  }

  return result;
}

unint64_t sub_261A4F1EC()
{
  result = qword_27FECB438;
  if (!qword_27FECB438)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FECB430, &qword_261A88FD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECB438);
  }

  return result;
}

unint64_t sub_261A4F268()
{
  result = qword_27FECB448;
  if (!qword_27FECB448)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FECB440, &qword_261A88FD8);
    sub_261A4F2F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECB448);
  }

  return result;
}

unint64_t sub_261A4F2F4()
{
  result = qword_27FECB450;
  if (!qword_27FECB450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECB450);
  }

  return result;
}

uint64_t sub_261A4F360(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 25))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_261A4F380(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 25) = v3;
  return result;
}

unint64_t sub_261A4F3C4()
{
  result = qword_27FECB458;
  if (!qword_27FECB458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECB458);
  }

  return result;
}

unint64_t sub_261A4F41C()
{
  result = qword_27FECB460;
  if (!qword_27FECB460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECB460);
  }

  return result;
}

unint64_t sub_261A4F474()
{
  result = qword_27FECB468;
  if (!qword_27FECB468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECB468);
  }

  return result;
}

unint64_t sub_261A4F4C8()
{
  result = qword_27FECB478;
  if (!qword_27FECB478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECB478);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CountingMode.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
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

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CountingMode.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_261A4F670()
{
  result = qword_27FECB480;
  if (!qword_27FECB480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECB480);
  }

  return result;
}

unint64_t sub_261A4F6C8()
{
  result = qword_27FECB488;
  if (!qword_27FECB488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECB488);
  }

  return result;
}

unint64_t sub_261A4F720()
{
  result = qword_27FECB490;
  if (!qword_27FECB490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FECB490);
  }

  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_261A4F7C4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_261A4F80C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_261A4F87C(uint64_t a1)
{
  v2 = *(v1 + 72);
  v3 = *(v2 + 16);
  if (!v3)
  {
    return 0;
  }

  v5 = 0;
  v6 = v2 + 32;
  v7 = (a1 + 40);
  while (2)
  {
    v8 = (v6 + 16 * v5);
    v9 = *v8;
    v10 = v8[1];
    ++v5;
    v11 = *(a1 + 16) + 1;
    v12 = v7;
    while (--v11)
    {
      if (*(v12 - 1) != v9 || *v12 != v10)
      {
        v12 += 12;
        if ((sub_261A85BA4() & 1) == 0)
        {
          continue;
        }
      }

      return v9;
    }

    v9 = 0;
    if (v5 != v3)
    {
      continue;
    }

    break;
  }

  return v9;
}

uint64_t sub_261A4F950(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB508, &qword_261A89448);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_261A50664();
  sub_261A85CD4();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v19) = 0;
  sub_261A85B14();
  if (!v2)
  {
    v13 = v3[2];
    v14 = v3[3];
    LOBYTE(v19) = 1;
    sub_261A85B14();
    v15 = v3[4];
    v16 = v3[5];
    LOBYTE(v19) = 2;
    sub_261A85AE4();
    v19 = v3[6];
    HIBYTE(v18) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECAFD0, &qword_261A89450);
    sub_261A506B8();
    sub_261A85B54();
    v19 = v3[7];
    HIBYTE(v18) = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB528, &qword_261A89458);
    sub_261A50790();
    sub_261A85B54();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_261A4FBB8(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB498, &qword_261A89420);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v20 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_261A502B0();
  sub_261A85CD4();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v21) = 0;
  sub_261A85B14();
  if (!v2)
  {
    v13 = v3[2];
    v14 = v3[3];
    LOBYTE(v21) = 1;
    sub_261A85B14();
    v15 = v3[4];
    v16 = v3[5];
    LOBYTE(v21) = 2;
    sub_261A85B14();
    v17 = v3[6];
    v18 = v3[7];
    LOBYTE(v21) = 3;
    sub_261A85AE4();
    v21 = v3[8];
    HIBYTE(v20) = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB4A8, &qword_261A89428);
    sub_261A50304();
    sub_261A85B54();
    v21 = v3[9];
    HIBYTE(v20) = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB4C0, &qword_261A89430);
    sub_261A503DC();
    sub_261A85B54();
    v21 = v3[10];
    HIBYTE(v20) = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB4D8, &qword_261A89438);
    sub_261A504B4();
    sub_261A85B54();
    v21 = v3[11];
    HIBYTE(v20) = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB4F0, &qword_261A89440);
    sub_261A5058C();
    sub_261A85B54();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_261A4FEF0()
{
  v1 = *v0;
  v2 = 1701667182;
  v3 = 0x4D6C616974696E69;
  v4 = 0x7365646F6DLL;
  if (v1 != 3)
  {
    v4 = 0x6D726F6674616C70;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x4E79616C70736964;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_261A4FF98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_261A54188(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_261A4FFC0(uint64_t a1)
{
  v2 = sub_261A50664();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261A4FFFC(uint64_t a1)
{
  v2 = sub_261A50664();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_261A50038@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_261A54348(a1, v7);
  if (!v2)
  {
    v5 = v7[1];
    *a2 = v7[0];
    a2[1] = v5;
    result = *&v8;
    v6 = v9;
    a2[2] = v8;
    a2[3] = v6;
  }

  return result;
}

uint64_t sub_261A50094()
{
  v1 = *v0;
  v2 = 1701667182;
  v3 = 0x6C6F687365726874;
  if (v1 != 6)
  {
    v3 = 0x7372656767697274;
  }

  v4 = 0x7363697274656DLL;
  if (v1 != 4)
  {
    v4 = 0x7379616C70736964;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x736973706F6E7973;
  if (v1 != 2)
  {
    v5 = 0x746E656D75636F64;
  }

  if (*v0)
  {
    v2 = 0x4E79616C70736964;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}