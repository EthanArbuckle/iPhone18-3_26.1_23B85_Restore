void sub_268AB38D4()
{
  OUTLINED_FUNCTION_197();
  OUTLINED_FUNCTION_63_4();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A8258, &qword_268B4D020);
  OUTLINED_FUNCTION_1_15(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_15_19();
  OUTLINED_FUNCTION_11_29();
  sub_268AC2724();
  OUTLINED_FUNCTION_25_13();
  v6 = *v1;
  v16[0] = 0;
  OUTLINED_FUNCTION_2_25();
  sub_268B383B4();
  if (!v0)
  {
    OUTLINED_FUNCTION_14_23();
    OUTLINED_FUNCTION_13_21();
    OUTLINED_FUNCTION_74_4();
    v7 = OUTLINED_FUNCTION_36_9();
    sub_268AC2778(v7, v8);
    sub_268A35520();
    OUTLINED_FUNCTION_18_18();
    sub_268B383A4();
    v9 = OUTLINED_FUNCTION_39_7();
    memcpy(v9, v10, v11);
    sub_268AC1E28(v16, &qword_2802A5C88);
    OUTLINED_FUNCTION_123_1();
    OUTLINED_FUNCTION_6_38();
    sub_268B383B4();
    OUTLINED_FUNCTION_122_1();
    OUTLINED_FUNCTION_6_38();
    sub_268B383B4();
    OUTLINED_FUNCTION_125_1();
    OUTLINED_FUNCTION_6_38();
    sub_268B383B4();
    v12 = v1[92];
    OUTLINED_FUNCTION_156_1();
    OUTLINED_FUNCTION_6_38();
    sub_268B383B4();
    v13 = v1[93];
    OUTLINED_FUNCTION_6_38();
    sub_268B383B4();
  }

  v14 = OUTLINED_FUNCTION_59_3();
  v15(v14);
  OUTLINED_FUNCTION_47_5();
  OUTLINED_FUNCTION_198();
}

void sub_268AB3AB4()
{
  OUTLINED_FUNCTION_197();
  OUTLINED_FUNCTION_64_5();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A83A8, &qword_268B4D0F8);
  OUTLINED_FUNCTION_1(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_24_13();
  OUTLINED_FUNCTION_58_6();
  sub_268AC2724();
  OUTLINED_FUNCTION_21_12();
  if (v1)
  {
    OUTLINED_FUNCTION_55_7();
    __swift_destroy_boxed_opaque_existential_0Tm(v0);
    OUTLINED_FUNCTION_153_1();
    sub_268AC1E28(v15, &qword_2802A5C88);
  }

  else
  {
    v15[0] = 0;
    OUTLINED_FUNCTION_8_19();
    sub_268B38344();
    OUTLINED_FUNCTION_181_1();
    OUTLINED_FUNCTION_22_19(v7);
    sub_268B38344();
    OUTLINED_FUNCTION_178_1();
    OUTLINED_FUNCTION_22_19(v8);
    sub_268B38344();
    v17 = 3;
    sub_268A356BC();
    OUTLINED_FUNCTION_44_7();
    sub_268B38334();
    v16[0] = 0;
    v16[1] = 0;
    v16[2] = 1;
    OUTLINED_FUNCTION_40_10(v16);
    sub_268AC1E28(v16, &qword_2802A5C88);
    OUTLINED_FUNCTION_22_19(4);
    sub_268B38344();
    OUTLINED_FUNCTION_22_19(5);
    sub_268B38344();
    OUTLINED_FUNCTION_22_19(6);
    sub_268B38344();
    OUTLINED_FUNCTION_22_19(7);
    sub_268B38344();
    v15[95] = 8;
    OUTLINED_FUNCTION_8_19();
    sub_268B38344();
    v9 = OUTLINED_FUNCTION_17_19();
    v10(v9);
    v11 = OUTLINED_FUNCTION_84_5();
    sub_268AC2778(v11, v12);
    __swift_destroy_boxed_opaque_existential_0Tm(v0);
    v13 = OUTLINED_FUNCTION_96_5();
    sub_268A97F84(v13);
    memcpy(v2, v14, 0x5EuLL);
  }

  OUTLINED_FUNCTION_198();
}

uint64_t sub_268AB3DF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_268AB34C4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_268AB3E1C(uint64_t a1)
{
  v2 = sub_268AC2724();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_268AB3E58(uint64_t a1)
{
  v2 = sub_268AC2724();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_268AB3F14()
{
  v0 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_132_1();
  v1 = *MEMORY[0x277D85DE8];

  return sub_268AB3F68();
}

uint64_t sub_268AB4158(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x534F497369 && a2 == 0xE500000000000000;
  if (v4 || (sub_268B38444() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1448375145 && a2 == 0xE400000000000000;
    if (v6 || (sub_268B38444() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000012 && 0x8000000268B5B120 == a2;
      if (v7 || (sub_268B38444() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x72656B61657073 && a2 == 0xE700000000000000;
        if (v8 || (sub_268B38444() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD00000000000001CLL && 0x8000000268B5B140 == a2;
          if (v9 || (sub_268B38444() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6F52656D61537369 && a2 == 0xEE00796C6E4F6D6FLL;
            if (v10 || (sub_268B38444() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000014 && 0x8000000268B5B160 == a2;
              if (v11 || (sub_268B38444() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 0x6F4D746165706572 && a2 == 0xEA00000000006564)
              {

                return 7;
              }

              else
              {
                v13 = sub_268B38444();

                if (v13)
                {
                  return 7;
                }

                else
                {
                  return 8;
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_268AB43E4(char a1)
{
  result = 0x534F497369;
  switch(a1)
  {
    case 1:
      result = 1448375145;
      break;
    case 2:
      result = 0xD000000000000012;
      break;
    case 3:
      result = 0x72656B61657073;
      break;
    case 4:
      result = 0xD00000000000001CLL;
      break;
    case 5:
      result = 0x6F52656D61537369;
      break;
    case 6:
      result = 0xD000000000000014;
      break;
    case 7:
      result = 0x6F4D746165706572;
      break;
    default:
      return result;
  }

  return result;
}

void sub_268AB4500()
{
  OUTLINED_FUNCTION_197();
  OUTLINED_FUNCTION_63_4();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A8240, &qword_268B4D018);
  OUTLINED_FUNCTION_1_15(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_15_19();
  OUTLINED_FUNCTION_11_29();
  sub_268AC2644();
  OUTLINED_FUNCTION_25_13();
  v6 = *v1;
  v14[0] = 0;
  OUTLINED_FUNCTION_2_25();
  sub_268B383B4();
  if (!v0)
  {
    OUTLINED_FUNCTION_14_23();
    OUTLINED_FUNCTION_13_21();
    OUTLINED_FUNCTION_74_4();
    v7 = OUTLINED_FUNCTION_36_9();
    sub_268AC2698(v7, v8);
    sub_268A35520();
    OUTLINED_FUNCTION_18_18();
    sub_268B383A4();
    v9 = OUTLINED_FUNCTION_39_7();
    memcpy(v9, v10, v11);
    sub_268AC1E28(v14, &qword_2802A5C88);
    OUTLINED_FUNCTION_123_1();
    OUTLINED_FUNCTION_6_38();
    sub_268B383B4();
    OUTLINED_FUNCTION_122_1();
    OUTLINED_FUNCTION_6_38();
    sub_268B383B4();
    OUTLINED_FUNCTION_125_1();
    OUTLINED_FUNCTION_6_38();
    sub_268B383B4();
    v15 = v1[92];
    sub_268AC26D0();
    OUTLINED_FUNCTION_2_25();
    sub_268B383D4();
  }

  v12 = OUTLINED_FUNCTION_59_3();
  v13(v12);
  OUTLINED_FUNCTION_47_5();
  OUTLINED_FUNCTION_198();
}

void sub_268AB46E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_197();
  OUTLINED_FUNCTION_64_5();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A83B0, &qword_268B4D100);
  OUTLINED_FUNCTION_1(v17);
  v19 = v18;
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_24_13();
  OUTLINED_FUNCTION_58_6();
  sub_268AC2644();
  OUTLINED_FUNCTION_21_12();
  if (v11)
  {
    OUTLINED_FUNCTION_29_15();
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
    v46 = a10;
    v47 = v44;
    v48 = v17;
    v49 = v43;
    v50 = v14;
    v51 = v16;
    v52 = v15;
    v53 = v13;
    v54 = v10;
    v55 = v12;
    LOBYTE(v56) = v19;
    sub_268AC1E28(&v46, &qword_2802A5C88);
  }

  else
  {
    LOBYTE(v46) = 0;
    OUTLINED_FUNCTION_8_19();
    sub_268B38344();
    OUTLINED_FUNCTION_181_1();
    OUTLINED_FUNCTION_67_5(v23);
    sub_268B38344();
    OUTLINED_FUNCTION_178_1();
    OUTLINED_FUNCTION_67_5(v24);
    v25 = sub_268B38344();
    OUTLINED_FUNCTION_177_0(v25);
    OUTLINED_FUNCTION_44_7();
    sub_268B38334();
    OUTLINED_FUNCTION_221_1();
    OUTLINED_FUNCTION_26_16();
    v64[0] = 0;
    v64[1] = 0;
    v64[2] = 1;
    OUTLINED_FUNCTION_40_10(v26);
    sub_268AC1E28(v64, &qword_2802A5C88);
    OUTLINED_FUNCTION_67_5(4);
    sub_268B38344();
    OUTLINED_FUNCTION_222_1();
    OUTLINED_FUNCTION_67_5(v27);
    v33 = sub_268B38344();
    OUTLINED_FUNCTION_67_5(6);
    v32 = sub_268B38344();
    v62 = 7;
    sub_268AC2D98();
    OUTLINED_FUNCTION_44_7();
    sub_268B38364();
    OUTLINED_FUNCTION_64_7();
    OUTLINED_FUNCTION_218_1(0);
    v28 = OUTLINED_FUNCTION_17_19();
    v29(v28);
    v34 = v63;
    OUTLINED_FUNCTION_31_18();
    v45[7] = v15;
    v45[8] = 0;
    v45[9] = v30;
    v45[10] = v12;
    LOBYTE(v45[11]) = v38;
    BYTE1(v45[11]) = v42;
    BYTE2(v45[11]) = v33 & 1;
    BYTE3(v45[11]) = v32 & 1;
    BYTE4(v45[11]) = v31;
    sub_268AC2698(v45, &v46);
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
    LOWORD(v46) = v35;
    BYTE2(v46) = v41;
    v47 = v17;
    v48 = v14;
    v49 = v37;
    v50 = v19;
    v51 = v40;
    v52 = 0;
    v53 = v15;
    v54 = 0;
    v55 = v39;
    v56 = v12;
    v57 = v38;
    v58 = v42;
    v59 = v33 & 1;
    v60 = v32 & 1;
    v61 = v34;
    sub_268A9844C(&v46);
    memcpy(v36, v45, 0x5DuLL);
  }

  OUTLINED_FUNCTION_163_1();
  OUTLINED_FUNCTION_198();
}

uint64_t sub_268AB4A68()
{
  v0 = sub_268B382F4();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_268AB4AB4(char a1)
{
  if (!a1)
  {
    return 1701736302;
  }

  if (a1 == 1)
  {
    return 6647407;
  }

  return 7105633;
}

uint64_t sub_268AB4AFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_268AB4158(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_268AB4B24(uint64_t a1)
{
  v2 = sub_268AC2644();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_268AB4B60(uint64_t a1)
{
  v2 = sub_268AC2644();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_268AB4B9C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  sub_268AB46E4(a1, a2, a3, a4, a5, a6, a7, a8, v11[0], v11[1]);
  if (!v9)
  {
    memcpy(a9, v11, 0x5DuLL);
  }
}

uint64_t sub_268AB4C60@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_268AB4A68();
  *a2 = result;
  return result;
}

uint64_t sub_268AB4C90@<X0>(uint64_t *a1@<X8>)
{
  result = sub_268AB4AB4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_268AB5150(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x736D6F6F72 && a2 == 0xE500000000000000;
  if (v4 || (sub_268B38444() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C62616E457369 && a2 == 0xEE00746165706552)
  {

    return 1;
  }

  else
  {
    v7 = sub_268B38444();

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

uint64_t sub_268AB521C(char a1)
{
  if (a1)
  {
    return 0x656C62616E457369;
  }

  else
  {
    return 0x736D6F6F72;
  }
}

uint64_t sub_268AB52F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_268AB5150(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_268AB5318(uint64_t a1)
{
  v2 = sub_268AC259C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_268AB5354(uint64_t a1)
{
  v2 = sub_268AC259C();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_268AB53D4()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_268AB040C();
}

uint64_t sub_268AB5608(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x534F497369 && a2 == 0xE500000000000000;
  if (v4 || (sub_268B38444() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1448375145 && a2 == 0xE400000000000000;
    if (v6 || (sub_268B38444() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000012 && 0x8000000268B5B120 == a2;
      if (v7 || (sub_268B38444() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x72656B61657073 && a2 == 0xE700000000000000;
        if (v8 || (sub_268B38444() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD00000000000001CLL && 0x8000000268B5B140 == a2;
          if (v9 || (sub_268B38444() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6F52656D61537369 && a2 == 0xEE00796C6E4F6D6FLL;
            if (v10 || (sub_268B38444() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000014 && 0x8000000268B5B160 == a2;
              if (v11 || (sub_268B38444() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 0x45656C6666756873 && a2 == 0xEE0064656C62616ELL)
              {

                return 7;
              }

              else
              {
                v13 = sub_268B38444();

                if (v13)
                {
                  return 7;
                }

                else
                {
                  return 8;
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_268AB5894(char a1)
{
  result = 0x534F497369;
  switch(a1)
  {
    case 1:
      result = 1448375145;
      break;
    case 2:
      result = 0xD000000000000012;
      break;
    case 3:
      result = 0x72656B61657073;
      break;
    case 4:
      result = 0xD00000000000001CLL;
      break;
    case 5:
      result = 0x6F52656D61537369;
      break;
    case 6:
      result = 0xD000000000000014;
      break;
    case 7:
      result = 0x45656C6666756873;
      break;
    default:
      return result;
  }

  return result;
}

void sub_268AB59B8()
{
  OUTLINED_FUNCTION_197();
  OUTLINED_FUNCTION_63_4();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A8210, &qword_268B4D000);
  OUTLINED_FUNCTION_1_15(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_15_19();
  OUTLINED_FUNCTION_11_29();
  sub_268AC2510();
  OUTLINED_FUNCTION_25_13();
  v6 = *v1;
  v15[0] = 0;
  OUTLINED_FUNCTION_2_25();
  sub_268B383B4();
  if (!v0)
  {
    OUTLINED_FUNCTION_14_23();
    OUTLINED_FUNCTION_13_21();
    OUTLINED_FUNCTION_74_4();
    v7 = OUTLINED_FUNCTION_36_9();
    sub_268AC2564(v7, v8);
    sub_268A35520();
    OUTLINED_FUNCTION_18_18();
    sub_268B383A4();
    v9 = OUTLINED_FUNCTION_39_7();
    memcpy(v9, v10, v11);
    sub_268AC1E28(v15, &qword_2802A5C88);
    OUTLINED_FUNCTION_123_1();
    OUTLINED_FUNCTION_6_38();
    sub_268B383B4();
    OUTLINED_FUNCTION_122_1();
    OUTLINED_FUNCTION_6_38();
    sub_268B383B4();
    OUTLINED_FUNCTION_125_1();
    OUTLINED_FUNCTION_6_38();
    sub_268B383B4();
    v12 = v1[92];
    OUTLINED_FUNCTION_156_1();
    OUTLINED_FUNCTION_6_38();
    sub_268B383B4();
  }

  v13 = OUTLINED_FUNCTION_59_3();
  v14(v13);
  OUTLINED_FUNCTION_47_5();
  OUTLINED_FUNCTION_198();
}

void sub_268AB5B7C()
{
  OUTLINED_FUNCTION_197();
  OUTLINED_FUNCTION_64_5();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A83D0, &qword_268B4D118);
  OUTLINED_FUNCTION_1(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_24_13();
  OUTLINED_FUNCTION_58_6();
  sub_268AC2510();
  OUTLINED_FUNCTION_21_12();
  if (v1)
  {
    OUTLINED_FUNCTION_5_17();
    OUTLINED_FUNCTION_147_0();
    __swift_destroy_boxed_opaque_existential_0Tm(v0);
    v6 = OUTLINED_FUNCTION_34_12();
    sub_268A7505C(v6);
  }

  else
  {
    v22 = 0;
    OUTLINED_FUNCTION_8_20();
    sub_268B38344();
    OUTLINED_FUNCTION_4_28(1);
    sub_268B38344();
    OUTLINED_FUNCTION_4_28(2);
    v7 = sub_268B38344();
    OUTLINED_FUNCTION_98_3(v7);
    OUTLINED_FUNCTION_44_7();
    sub_268B38334();
    v8 = v21[14];
    v9 = v21[15];
    v20 = v21[16];
    OUTLINED_FUNCTION_3_43();
    sub_268AC1E28(v21, &qword_2802A5C88);
    OUTLINED_FUNCTION_4_28(4);
    sub_268B38344();
    OUTLINED_FUNCTION_4_28(5);
    sub_268B38344();
    OUTLINED_FUNCTION_4_28(6);
    sub_268B38344();
    OUTLINED_FUNCTION_8_19();
    sub_268B38344();
    v10 = OUTLINED_FUNCTION_142_1();
    v11(v10);
    OUTLINED_FUNCTION_41_6();
    OUTLINED_FUNCTION_93_7();
    OUTLINED_FUNCTION_24_17();
    v13 = OUTLINED_FUNCTION_90_6(v12);
    sub_268AC2564(v13, v14);
    OUTLINED_FUNCTION_138_1(v0);
    v23 = v19;
    OUTLINED_FUNCTION_179_1();
    v24 = v15;
    v25 = v8;
    v26 = v9;
    v27 = v20;
    OUTLINED_FUNCTION_89_6();
    OUTLINED_FUNCTION_23_20();
    OUTLINED_FUNCTION_91_5();
    v16 = OUTLINED_FUNCTION_192_1();
    sub_268A7505C(v16);
    v17 = OUTLINED_FUNCTION_176_1();
    memcpy(v17, v18, 0x5DuLL);
  }

  OUTLINED_FUNCTION_198();
}

uint64_t sub_268AB5EF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_268AB5608(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_268AB5F20(uint64_t a1)
{
  v2 = sub_268AC2510();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_268AB5F5C(uint64_t a1)
{
  v2 = sub_268AC2510();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_268AB6214(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x534F497369 && a2 == 0xE500000000000000;
  if (v4 || (sub_268B38444() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1448375145 && a2 == 0xE400000000000000;
    if (v6 || (sub_268B38444() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000012 && 0x8000000268B5B120 == a2;
      if (v7 || (sub_268B38444() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x72656B61657073 && a2 == 0xE700000000000000;
        if (v8 || (sub_268B38444() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD00000000000001CLL && 0x8000000268B5B140 == a2;
          if (v9 || (sub_268B38444() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6F52656D61537369 && a2 == 0xEE00796C6E4F6D6FLL;
            if (v10 || (sub_268B38444() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000014 && 0x8000000268B5B160 == a2;
              if (v11 || (sub_268B38444() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 0xD000000000000013 && 0x8000000268B5CF00 == a2)
              {

                return 7;
              }

              else
              {
                v13 = sub_268B38444();

                if (v13)
                {
                  return 7;
                }

                else
                {
                  return 8;
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_268AB6494(char a1)
{
  result = 0x534F497369;
  switch(a1)
  {
    case 1:
      result = 1448375145;
      break;
    case 2:
      result = 0xD000000000000012;
      break;
    case 3:
      result = 0x72656B61657073;
      break;
    case 4:
      result = 0xD00000000000001CLL;
      break;
    case 5:
      result = 0x6F52656D61537369;
      break;
    case 6:
      result = 0xD000000000000014;
      break;
    case 7:
      result = 0xD000000000000013;
      break;
    default:
      return result;
  }

  return result;
}

void sub_268AB65B4()
{
  OUTLINED_FUNCTION_197();
  OUTLINED_FUNCTION_63_4();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A8200, &qword_268B4CFF8);
  OUTLINED_FUNCTION_1_15(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_15_19();
  OUTLINED_FUNCTION_11_29();
  sub_268AC2484();
  OUTLINED_FUNCTION_25_13();
  v6 = *v1;
  v16[0] = 0;
  OUTLINED_FUNCTION_2_25();
  sub_268B383B4();
  if (!v0)
  {
    v7 = v1[1];
    v16[0] = 1;
    OUTLINED_FUNCTION_2_25();
    sub_268B383B4();
    v8 = v1[2];
    v16[0] = 2;
    OUTLINED_FUNCTION_2_25();
    sub_268B383B4();
    OUTLINED_FUNCTION_74_4();
    v9 = OUTLINED_FUNCTION_144_1();
    sub_268AC24D8(v9, v10);
    sub_268A35520();
    OUTLINED_FUNCTION_18_18();
    sub_268B383A4();
    OUTLINED_FUNCTION_121_0();
    memcpy(v11, v12, v13);
    sub_268AC1E28(v16, &qword_2802A5C88);
    OUTLINED_FUNCTION_123_1();
    OUTLINED_FUNCTION_2_25();
    sub_268B383B4();
    OUTLINED_FUNCTION_122_1();
    OUTLINED_FUNCTION_2_25();
    sub_268B383B4();
    OUTLINED_FUNCTION_125_1();
    OUTLINED_FUNCTION_2_25();
    sub_268B383B4();
    OUTLINED_FUNCTION_151_1();
    OUTLINED_FUNCTION_6_38();
    sub_268B383D4();
  }

  v14 = OUTLINED_FUNCTION_59_3();
  v15(v14);
  OUTLINED_FUNCTION_47_5();
  OUTLINED_FUNCTION_198();
}

void sub_268AB67D4()
{
  OUTLINED_FUNCTION_197();
  OUTLINED_FUNCTION_64_5();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A83D8, &qword_268B4D120);
  OUTLINED_FUNCTION_1(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_24_13();
  OUTLINED_FUNCTION_58_6();
  sub_268AC2484();
  OUTLINED_FUNCTION_21_12();
  if (v1)
  {
    OUTLINED_FUNCTION_29_15();
    __swift_destroy_boxed_opaque_existential_0Tm(v0);
    OUTLINED_FUNCTION_61_5();
    sub_268AC1E28(v17, &qword_2802A5C88);
  }

  else
  {
    v17[0] = 0;
    OUTLINED_FUNCTION_45_7();
    sub_268B38344();
    OUTLINED_FUNCTION_181_1();
    OUTLINED_FUNCTION_5_16(v6);
    sub_268B38344();
    OUTLINED_FUNCTION_178_1();
    OUTLINED_FUNCTION_5_16(v7);
    v8 = sub_268B38344();
    OUTLINED_FUNCTION_177_0(v8);
    OUTLINED_FUNCTION_44_7();
    sub_268B38334();
    OUTLINED_FUNCTION_221_1();
    OUTLINED_FUNCTION_26_16();
    v18[0] = 0;
    v18[1] = 0;
    v18[2] = 1;
    OUTLINED_FUNCTION_40_10(v9);
    sub_268AC1E28(v18, &qword_2802A5C88);
    OUTLINED_FUNCTION_5_16(4);
    sub_268B38344();
    OUTLINED_FUNCTION_222_1();
    OUTLINED_FUNCTION_5_16(v10);
    sub_268B38344();
    OUTLINED_FUNCTION_5_16(6);
    v11 = sub_268B38344();
    OUTLINED_FUNCTION_168_1(v11);
    OUTLINED_FUNCTION_44_7();
    sub_268B38364();
    OUTLINED_FUNCTION_64_7();
    OUTLINED_FUNCTION_218_1(0);
    v12 = OUTLINED_FUNCTION_17_19();
    v13(v12);
    OUTLINED_FUNCTION_31_18();
    v14 = OUTLINED_FUNCTION_47_8();
    sub_268AC24D8(v14, v15);
    __swift_destroy_boxed_opaque_existential_0Tm(v0);
    v16 = OUTLINED_FUNCTION_37_15();
    sub_268A145AC(v16);
    OUTLINED_FUNCTION_207_1();
  }

  OUTLINED_FUNCTION_163_1();
  OUTLINED_FUNCTION_198();
}

uint64_t sub_268AB6A90(uint64_t a1, uint64_t a2)
{
  if (a1 == 1935893875 && a2 == 0xE400000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_268B38444();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

void sub_268AB6B18()
{
  OUTLINED_FUNCTION_213_1();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A8820, &qword_268B4FB80);
  OUTLINED_FUNCTION_1(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_11_29();
  sub_268AC6174();
  OUTLINED_FUNCTION_92_6();
  sub_268B383C4();
  v4 = OUTLINED_FUNCTION_115_1();
  v5(v4);
  OUTLINED_FUNCTION_212_1();
}

void sub_268AB6C04()
{
  OUTLINED_FUNCTION_213_1();
  OUTLINED_FUNCTION_201_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A8838, &qword_268B4FB88);
  OUTLINED_FUNCTION_1(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_75();
  v6 = v0[3];
  v7 = v0[4];
  OUTLINED_FUNCTION_67_3(v0);
  sub_268AC6174();
  OUTLINED_FUNCTION_75_4();
  if (!v1)
  {
    OUTLINED_FUNCTION_35_10();
    sub_268B38354();
    v8 = OUTLINED_FUNCTION_62_5();
    v9(v8);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v0);
  OUTLINED_FUNCTION_200_1();
  OUTLINED_FUNCTION_212_1();
}

uint64_t sub_268AB6D0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_268AB6214(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_268AB6D34(uint64_t a1)
{
  v2 = sub_268AC2484();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_268AB6D70(uint64_t a1)
{
  v2 = sub_268AC2484();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_268AB6E30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_268AB6A90(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_268AB6E5C(uint64_t a1)
{
  v2 = sub_268AC6174();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_268AB6E98(uint64_t a1)
{
  v2 = sub_268AC6174();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_268AB6ED4(void *a1@<X8>)
{
  sub_268AB6C04();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t sub_268AB7108(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x736D6F6F72 && a2 == 0xE500000000000000;
  if (v4 || (sub_268B38444() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6F46747361467369 && a2 == 0xED00006472617772;
    if (v6 || (sub_268B38444() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x7265486E49736168 && a2 == 0xE900000000000065)
    {

      return 2;
    }

    else
    {
      v8 = sub_268B38444();

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

uint64_t sub_268AB7224(char a1)
{
  if (!a1)
  {
    return 0x736D6F6F72;
  }

  if (a1 == 1)
  {
    return 0x6F46747361467369;
  }

  return 0x7265486E49736168;
}

uint64_t sub_268AB7318@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_268AB7108(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_268AB7340(uint64_t a1)
{
  v2 = sub_268AC2430();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_268AB737C(uint64_t a1)
{
  v2 = sub_268AC2430();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_268AB73FC()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  *(v0 + 9);
  sub_268AB7CC0();
}

uint64_t sub_268AB7644(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x736D6F6F72 && a2 == 0xE500000000000000;
  if (v4 || (sub_268B38444() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F46747361467369 && a2 == 0xED00006472617772)
  {

    return 1;
  }

  else
  {
    v7 = sub_268B38444();

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

uint64_t sub_268AB7710(char a1)
{
  if (a1)
  {
    return 0x6F46747361467369;
  }

  else
  {
    return 0x736D6F6F72;
  }
}

uint64_t sub_268AB77E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_268AB7644(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_268AB780C(uint64_t a1)
{
  v2 = sub_268AC23DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_268AB7848(uint64_t a1)
{
  v2 = sub_268AC23DC();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_268AB78C8()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_268AB040C();
}

uint64_t sub_268AB7AFC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x736D6F6F72 && a2 == 0xE500000000000000;
  if (v4 || (sub_268B38444() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x725070696B537369 && a2 == 0xEE0073756F697665;
    if (v6 || (sub_268B38444() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x7265486E49736168 && a2 == 0xE900000000000065)
    {

      return 2;
    }

    else
    {
      v8 = sub_268B38444();

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

uint64_t sub_268AB7C18(char a1)
{
  if (!a1)
  {
    return 0x736D6F6F72;
  }

  if (a1 == 1)
  {
    return 0x725070696B537369;
  }

  return 0x7265486E49736168;
}

void sub_268AB7CC0()
{
  OUTLINED_FUNCTION_197();
  v7 = OUTLINED_FUNCTION_166_0(v2, v3, v4, v5, v6);
  OUTLINED_FUNCTION_1_15(v7);
  v9 = v8;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_15_19();
  v13 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  v0();
  sub_268B38584();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5B48, &qword_268B416A0);
  OUTLINED_FUNCTION_11_24(&qword_2802A7518);
  OUTLINED_FUNCTION_65_5();
  sub_268B383D4();
  if (!v17)
  {
    OUTLINED_FUNCTION_69_7();
    sub_268B383B4();
    OUTLINED_FUNCTION_69_7();
    sub_268B383B4();
  }

  v14 = *(v9 + 8);
  v15 = OUTLINED_FUNCTION_153_0();
  v16(v15);
  OUTLINED_FUNCTION_203_0();
  OUTLINED_FUNCTION_198();
}

void sub_268AB7E70()
{
  OUTLINED_FUNCTION_197();
  v2 = v1;
  v5 = OUTLINED_FUNCTION_118_1(v3, v4);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_1(v13);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_75();
  v10 = OUTLINED_FUNCTION_30_13();
  v2(v10);
  OUTLINED_FUNCTION_9_19();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5B48, &qword_268B416A0);
  OUTLINED_FUNCTION_10_20(&qword_2802A7610);
  OUTLINED_FUNCTION_158_1();
  OUTLINED_FUNCTION_184_1();
  sub_268B38344();
  v11 = OUTLINED_FUNCTION_115_1();
  v12(v11);
  __swift_destroy_boxed_opaque_existential_0Tm(v0);
  OUTLINED_FUNCTION_198();
}

uint64_t sub_268AB8018@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_268AB7AFC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_268AB8040(uint64_t a1)
{
  v2 = sub_268AC2388();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_268AB807C(uint64_t a1)
{
  v2 = sub_268AC2388();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_268AB80FC()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  *(v0 + 9);
  sub_268AB7CC0();
}

uint64_t sub_268AB8344(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x736D6F6F72 && a2 == 0xE500000000000000;
  if (v4 || (sub_268B38444() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000268B5CEE0 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_268B38444();

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

uint64_t sub_268AB8410(char a1)
{
  if (a1)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x736D6F6F72;
  }
}

uint64_t sub_268AB84DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_268AB8344(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_268AB8504(uint64_t a1)
{
  v2 = sub_268AC2334();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_268AB8540(uint64_t a1)
{
  v2 = sub_268AC2334();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_268AB85C0()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_268AB040C();
}

uint64_t sub_268AB87F4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x736D6F6F72 && a2 == 0xE500000000000000;
  if (v4 || (sub_268B38444() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000010 && 0x8000000268B5CEC0 == a2;
    if (v6 || (sub_268B38444() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x7265486E49736168 && a2 == 0xE900000000000065)
    {

      return 2;
    }

    else
    {
      v8 = sub_268B38444();

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

uint64_t sub_268AB8910(char a1)
{
  if (!a1)
  {
    return 0x736D6F6F72;
  }

  if (a1 == 1)
  {
    return 0xD000000000000010;
  }

  return 0x7265486E49736168;
}

uint64_t sub_268AB89FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_268AB87F4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_268AB8A24(uint64_t a1)
{
  v2 = sub_268AC22E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_268AB8A60(uint64_t a1)
{
  v2 = sub_268AC22E0();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_268AB8AE0()
{
  OUTLINED_FUNCTION_69_5();
  sub_268AB7E70();
  if (!v1)
  {
    *v0 = v2;
    *(v0 + 8) = v3 & 1;
    *(v0 + 9) = HIBYTE(v3) & 1;
  }
}

void sub_268AB8B1C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  *(v0 + 9);
  sub_268AB7CC0();
}

uint64_t sub_268AB8D64(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x736D6F6F72 && a2 == 0xE500000000000000;
  if (v4 || (sub_268B38444() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C62616E457369 && a2 == 0xEF656C6666756853)
  {

    return 1;
  }

  else
  {
    v7 = sub_268B38444();

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

uint64_t sub_268AB8E30(char a1)
{
  if (a1)
  {
    return 0x656C62616E457369;
  }

  else
  {
    return 0x736D6F6F72;
  }
}

uint64_t sub_268AB8F04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_268AB8D64(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_268AB8F2C(uint64_t a1)
{
  v2 = sub_268AC228C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_268AB8F68(uint64_t a1)
{
  v2 = sub_268AC228C();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_268AB8FE8()
{
  OUTLINED_FUNCTION_69_5();
  sub_268AB0598();
  if (!v1)
  {
    *v0 = v2;
    *(v0 + 8) = v3 & 1;
  }
}

void sub_268AB901C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_268AB040C();
}

void sub_268AB9250()
{
  OUTLINED_FUNCTION_197();
  OUTLINED_FUNCTION_63_4();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A8190, &qword_268B4CFB8);
  OUTLINED_FUNCTION_1_15(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_15_19();
  OUTLINED_FUNCTION_11_29();
  sub_268AC2200();
  OUTLINED_FUNCTION_25_13();
  v6 = *v1;
  v14[0] = 0;
  OUTLINED_FUNCTION_2_25();
  sub_268B383B4();
  if (!v0)
  {
    OUTLINED_FUNCTION_14_23();
    OUTLINED_FUNCTION_13_21();
    OUTLINED_FUNCTION_74_4();
    v7 = OUTLINED_FUNCTION_36_9();
    sub_268AC2254(v7, v8);
    sub_268A35520();
    OUTLINED_FUNCTION_18_18();
    sub_268B383A4();
    v9 = OUTLINED_FUNCTION_39_7();
    memcpy(v9, v10, v11);
    sub_268AC1E28(v14, &qword_2802A5C88);
    OUTLINED_FUNCTION_123_1();
    OUTLINED_FUNCTION_6_38();
    sub_268B383B4();
    OUTLINED_FUNCTION_122_1();
    OUTLINED_FUNCTION_6_38();
    sub_268B383B4();
    OUTLINED_FUNCTION_125_1();
    OUTLINED_FUNCTION_6_38();
    sub_268B383B4();
  }

  v12 = OUTLINED_FUNCTION_59_3();
  v13(v12);
  OUTLINED_FUNCTION_47_5();
  OUTLINED_FUNCTION_198();
}

void sub_268AB93FC()
{
  OUTLINED_FUNCTION_197();
  OUTLINED_FUNCTION_64_5();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A8468, &qword_268B4D1A0);
  OUTLINED_FUNCTION_1(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_24_13();
  OUTLINED_FUNCTION_58_6();
  sub_268AC2200();
  OUTLINED_FUNCTION_21_12();
  if (v1)
  {
    OUTLINED_FUNCTION_0_49();
    OUTLINED_FUNCTION_141_1();
    __swift_destroy_boxed_opaque_existential_0Tm(v0);
    v6 = OUTLINED_FUNCTION_36_11();
    sub_268AC2E94(v6);
  }

  else
  {
    v23 = 0;
    OUTLINED_FUNCTION_8_20();
    sub_268B38344();
    OUTLINED_FUNCTION_4_28(1);
    sub_268B38344();
    OUTLINED_FUNCTION_4_28(2);
    v7 = sub_268B38344();
    OUTLINED_FUNCTION_98_3(v7);
    OUTLINED_FUNCTION_44_7();
    sub_268B38334();
    v8 = v22[14];
    v10 = v22[15];
    v9 = v22[16];
    v31 = v22[17];
    v21 = v22[18];
    OUTLINED_FUNCTION_3_43();
    sub_268AC1E28(v22, &qword_2802A5C88);
    OUTLINED_FUNCTION_4_28(4);
    sub_268B38344();
    OUTLINED_FUNCTION_4_28(5);
    sub_268B38344();
    OUTLINED_FUNCTION_8_19();
    sub_268B38344();
    v11 = OUTLINED_FUNCTION_17_19();
    v12(v11);
    OUTLINED_FUNCTION_41_6();
    OUTLINED_FUNCTION_93_7();
    OUTLINED_FUNCTION_24_17();
    v14 = OUTLINED_FUNCTION_119_1(v13);
    sub_268AC2254(v14, v15);
    OUTLINED_FUNCTION_138_1(v0);
    v24 = v20;
    OUTLINED_FUNCTION_179_1();
    v25 = v16;
    v26 = v8;
    v27 = v10;
    v28 = v9;
    v29 = v31;
    v30 = v21;
    OUTLINED_FUNCTION_23_20();
    v17 = OUTLINED_FUNCTION_113_2();
    sub_268AC2E94(v17);
    v18 = OUTLINED_FUNCTION_176_1();
    memcpy(v18, v19, 0x5CuLL);
  }

  OUTLINED_FUNCTION_163_1();
  OUTLINED_FUNCTION_198();
}

uint64_t sub_268AB974C(uint64_t a1)
{
  v2 = sub_268AC2200();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_268AB9788(uint64_t a1)
{
  v2 = sub_268AC2200();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_268AB9A2C()
{
  OUTLINED_FUNCTION_173_1();
  v3 = v3 && v2 == 0xE500000000000000;
  if (v3 || (OUTLINED_FUNCTION_58_1() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v5 = v1 == 1448375145 && v0 == 0xE400000000000000;
    if (v5 || (OUTLINED_FUNCTION_58_1() & 1) != 0)
    {

      return 1;
    }

    else
    {
      OUTLINED_FUNCTION_71_5();
      v7 = v1 == 0xD000000000000012 && v6 == v0;
      if (v7 || (OUTLINED_FUNCTION_58_1() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = v1 == OUTLINED_FUNCTION_157_1() && v0 == 0xE700000000000000;
        if (v8 || (OUTLINED_FUNCTION_58_1() & 1) != 0)
        {

          return 3;
        }

        else
        {
          OUTLINED_FUNCTION_71_5();
          v10 = v1 == 0xD00000000000001CLL && v9 == v0;
          if (v10 || (OUTLINED_FUNCTION_58_1() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v12 = v1 == OUTLINED_FUNCTION_72_4() && v0 == v11;
            if (v12 || (OUTLINED_FUNCTION_58_1() & 1) != 0)
            {

              return 5;
            }

            else
            {
              OUTLINED_FUNCTION_71_5();
              if (v1 == 0xD000000000000014 && v13 == v0)
              {

                return 6;
              }

              else
              {
                OUTLINED_FUNCTION_58_1();
                OUTLINED_FUNCTION_93_4();
                if (v1)
                {
                  return 6;
                }

                else
                {
                  return 7;
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_268AB9BC4(char a1)
{
  switch(a1)
  {
    case 1:
      OUTLINED_FUNCTION_175_1();
      break;
    case 2:
    case 6:
      OUTLINED_FUNCTION_71_5();
      break;
    case 3:
      OUTLINED_FUNCTION_136_1();
      break;
    case 4:
      OUTLINED_FUNCTION_143_1();
      break;
    case 5:
      OUTLINED_FUNCTION_72_4();
      break;
    default:
      return;
  }
}

void sub_268AB9C98()
{
  OUTLINED_FUNCTION_197();
  OUTLINED_FUNCTION_63_4();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A8180, &qword_268B4CFB0);
  OUTLINED_FUNCTION_1_15(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_15_19();
  OUTLINED_FUNCTION_11_29();
  sub_268AC2174();
  OUTLINED_FUNCTION_25_13();
  v6 = *v1;
  v14[0] = 0;
  OUTLINED_FUNCTION_2_25();
  sub_268B383B4();
  if (!v0)
  {
    OUTLINED_FUNCTION_14_23();
    OUTLINED_FUNCTION_13_21();
    OUTLINED_FUNCTION_74_4();
    v7 = OUTLINED_FUNCTION_36_9();
    sub_268AC21C8(v7, v8);
    sub_268A35520();
    OUTLINED_FUNCTION_18_18();
    sub_268B383A4();
    v9 = OUTLINED_FUNCTION_39_7();
    memcpy(v9, v10, v11);
    sub_268AC1E28(v14, &qword_2802A5C88);
    OUTLINED_FUNCTION_123_1();
    OUTLINED_FUNCTION_6_38();
    sub_268B383B4();
    OUTLINED_FUNCTION_122_1();
    OUTLINED_FUNCTION_6_38();
    sub_268B383B4();
    OUTLINED_FUNCTION_125_1();
    OUTLINED_FUNCTION_6_38();
    sub_268B383B4();
  }

  v12 = OUTLINED_FUNCTION_59_3();
  v13(v12);
  OUTLINED_FUNCTION_47_5();
  OUTLINED_FUNCTION_198();
}

void sub_268AB9E44()
{
  OUTLINED_FUNCTION_197();
  OUTLINED_FUNCTION_64_5();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A8470, &qword_268B4D1A8);
  OUTLINED_FUNCTION_1(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_24_13();
  OUTLINED_FUNCTION_58_6();
  sub_268AC2174();
  OUTLINED_FUNCTION_21_12();
  if (v1)
  {
    OUTLINED_FUNCTION_0_49();
    OUTLINED_FUNCTION_141_1();
    __swift_destroy_boxed_opaque_existential_0Tm(v0);
    v6 = OUTLINED_FUNCTION_36_11();
    sub_268AC2EC4(v6);
  }

  else
  {
    v23 = 0;
    OUTLINED_FUNCTION_8_20();
    sub_268B38344();
    OUTLINED_FUNCTION_4_28(1);
    sub_268B38344();
    OUTLINED_FUNCTION_4_28(2);
    v7 = sub_268B38344();
    OUTLINED_FUNCTION_98_3(v7);
    OUTLINED_FUNCTION_44_7();
    sub_268B38334();
    v8 = v22[14];
    v10 = v22[15];
    v9 = v22[16];
    v31 = v22[17];
    v21 = v22[18];
    OUTLINED_FUNCTION_3_43();
    sub_268AC1E28(v22, &qword_2802A5C88);
    OUTLINED_FUNCTION_4_28(4);
    sub_268B38344();
    OUTLINED_FUNCTION_4_28(5);
    sub_268B38344();
    OUTLINED_FUNCTION_8_19();
    sub_268B38344();
    v11 = OUTLINED_FUNCTION_17_19();
    v12(v11);
    OUTLINED_FUNCTION_41_6();
    OUTLINED_FUNCTION_93_7();
    OUTLINED_FUNCTION_24_17();
    v14 = OUTLINED_FUNCTION_119_1(v13);
    sub_268AC21C8(v14, v15);
    OUTLINED_FUNCTION_138_1(v0);
    v24 = v20;
    OUTLINED_FUNCTION_179_1();
    v25 = v16;
    v26 = v8;
    v27 = v10;
    v28 = v9;
    v29 = v31;
    v30 = v21;
    OUTLINED_FUNCTION_23_20();
    v17 = OUTLINED_FUNCTION_113_2();
    sub_268AC2EC4(v17);
    v18 = OUTLINED_FUNCTION_176_1();
    memcpy(v18, v19, 0x5CuLL);
  }

  OUTLINED_FUNCTION_163_1();
  OUTLINED_FUNCTION_198();
}

uint64_t sub_268ABA194(uint64_t a1)
{
  v2 = sub_268AC2174();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_268ABA1D0(uint64_t a1)
{
  v2 = sub_268AC2174();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_268ABA238@<X0>(void *(*a1)(void *__return_ptr)@<X3>, void *a2@<X8>)
{
  result = a1(v5);
  if (!v2)
  {
    return memcpy(a2, v5, 0x5CuLL);
  }

  return result;
}

uint64_t sub_268ABA568(uint64_t a1)
{
  v2 = sub_268AC2120();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_268ABA5A4(uint64_t a1)
{
  v2 = sub_268AC2120();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_268ABA624()
{
  v1 = *v0;
  v2 = v0[1];
  sub_268ABD868();
}

uint64_t sub_268ABA66C()
{
  OUTLINED_FUNCTION_215_0();
  v32 = *MEMORY[0x277D85DE8];
  if (qword_2802A4D30 != -1)
  {
    OUTLINED_FUNCTION_3_35();
  }

  sub_268AC07D8();
  OUTLINED_FUNCTION_172_1();
  if (v0)
  {

LABEL_5:
    v2 = sub_268B37B84();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_87_2();
  objc_opt_self();
  OUTLINED_FUNCTION_29_12();
  sub_268B34554();
  OUTLINED_FUNCTION_126_1();
  v10 = OUTLINED_FUNCTION_50_6(v3, sel_JSONObjectWithData_options_error_, v4, v5, v6, v7, v8, v9, v26, v27, v29, v30);

  if (!v10)
  {
    v12 = v31;
    OUTLINED_FUNCTION_23_15();
    v13 = sub_268B34514();

    swift_willThrow();
    v14 = OUTLINED_FUNCTION_29_12();
    sub_268910B4C(v14, v15);
    goto LABEL_5;
  }

  v11 = v31;
  OUTLINED_FUNCTION_188_1();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5C30, &unk_268B44D70);
  if (OUTLINED_FUNCTION_79_7())
  {
    v2 = v28;
  }

  else
  {
    v2 = sub_268B37B84();
  }

  v16 = OUTLINED_FUNCTION_29_12();
  sub_268910B4C(v16, v17);
LABEL_12:

  sub_268A32DA4(v18, v2);
  OUTLINED_FUNCTION_12_25();
  OUTLINED_FUNCTION_71_5();
  v19 = OUTLINED_FUNCTION_11_23(40);
  OUTLINED_FUNCTION_53_5(v19, v20, v21, v22, v23);

  v25 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_268ABA874()
{
  OUTLINED_FUNCTION_197();
  OUTLINED_FUNCTION_63_4();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A8160, &qword_268B4CFA0);
  OUTLINED_FUNCTION_1_15(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_15_19();
  OUTLINED_FUNCTION_11_29();
  sub_268AC20CC();
  OUTLINED_FUNCTION_25_13();
  v6 = *v1;
  v15[0] = 0;
  OUTLINED_FUNCTION_2_25();
  sub_268B383B4();
  if (!v0)
  {
    OUTLINED_FUNCTION_14_23();
    OUTLINED_FUNCTION_13_21();
    OUTLINED_FUNCTION_74_4();
    v7 = OUTLINED_FUNCTION_36_9();
    sub_268A13FC8(v7, v8);
    sub_268A35520();
    OUTLINED_FUNCTION_18_18();
    sub_268B383A4();
    v9 = OUTLINED_FUNCTION_39_7();
    memcpy(v9, v10, v11);
    sub_268AC1E28(v15, &qword_2802A5C88);
    OUTLINED_FUNCTION_123_1();
    OUTLINED_FUNCTION_6_38();
    sub_268B383B4();
    OUTLINED_FUNCTION_122_1();
    OUTLINED_FUNCTION_6_38();
    sub_268B383B4();
    OUTLINED_FUNCTION_125_1();
    OUTLINED_FUNCTION_6_38();
    sub_268B383B4();
    v12 = v1[92];
    OUTLINED_FUNCTION_156_1();
    OUTLINED_FUNCTION_6_38();
    sub_268B383B4();
  }

  v13 = OUTLINED_FUNCTION_59_3();
  v14(v13);
  OUTLINED_FUNCTION_47_5();
  OUTLINED_FUNCTION_198();
}

void sub_268ABAA38()
{
  OUTLINED_FUNCTION_197();
  OUTLINED_FUNCTION_64_5();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A8478, &qword_268B4D1B0);
  OUTLINED_FUNCTION_1(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_24_13();
  OUTLINED_FUNCTION_58_6();
  sub_268AC20CC();
  OUTLINED_FUNCTION_21_12();
  if (v1)
  {
    OUTLINED_FUNCTION_5_17();
    OUTLINED_FUNCTION_147_0();
    __swift_destroy_boxed_opaque_existential_0Tm(v0);
    v6 = OUTLINED_FUNCTION_34_12();
    sub_2689E9FB8(v6);
  }

  else
  {
    v22 = 0;
    OUTLINED_FUNCTION_8_20();
    sub_268B38344();
    OUTLINED_FUNCTION_4_28(1);
    sub_268B38344();
    OUTLINED_FUNCTION_4_28(2);
    v7 = sub_268B38344();
    OUTLINED_FUNCTION_98_3(v7);
    OUTLINED_FUNCTION_44_7();
    sub_268B38334();
    v8 = v21[14];
    v9 = v21[15];
    v20 = v21[16];
    OUTLINED_FUNCTION_3_43();
    sub_268AC1E28(v21, &qword_2802A5C88);
    OUTLINED_FUNCTION_4_28(4);
    sub_268B38344();
    OUTLINED_FUNCTION_4_28(5);
    sub_268B38344();
    OUTLINED_FUNCTION_4_28(6);
    sub_268B38344();
    OUTLINED_FUNCTION_8_19();
    sub_268B38344();
    v10 = OUTLINED_FUNCTION_142_1();
    v11(v10);
    OUTLINED_FUNCTION_41_6();
    OUTLINED_FUNCTION_93_7();
    OUTLINED_FUNCTION_24_17();
    v13 = OUTLINED_FUNCTION_90_6(v12);
    sub_268A13FC8(v13, v14);
    OUTLINED_FUNCTION_138_1(v0);
    v23 = v19;
    OUTLINED_FUNCTION_179_1();
    v24 = v15;
    v25 = v8;
    v26 = v9;
    v27 = v20;
    OUTLINED_FUNCTION_89_6();
    OUTLINED_FUNCTION_23_20();
    OUTLINED_FUNCTION_91_5();
    v16 = OUTLINED_FUNCTION_192_1();
    sub_2689E9FB8(v16);
    v17 = OUTLINED_FUNCTION_176_1();
    memcpy(v17, v18, 0x5DuLL);
  }

  OUTLINED_FUNCTION_198();
}

uint64_t sub_268ABADAC(uint64_t a1)
{
  v2 = sub_268AC20CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_268ABADE8(uint64_t a1)
{
  v2 = sub_268AC20CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_268ABAEA4()
{
  v0 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_132_1();
  v1 = *MEMORY[0x277D85DE8];

  return sub_268ABAEF8();
}

uint64_t sub_268ABB0EC()
{
  v0 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_132_1();
  v1 = *MEMORY[0x277D85DE8];

  return sub_268ABB140();
}

uint64_t sub_268ABB334(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x534F497369 && a2 == 0xE500000000000000;
  if (v4 || (sub_268B38444() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1448375145 && a2 == 0xE400000000000000;
    if (v6 || (sub_268B38444() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000012 && 0x8000000268B5B120 == a2;
      if (v7 || (sub_268B38444() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x72656B61657073 && a2 == 0xE700000000000000;
        if (v8 || (sub_268B38444() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD00000000000001CLL && 0x8000000268B5B140 == a2;
          if (v9 || (sub_268B38444() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6F52656D61537369 && a2 == 0xEE00796C6E4F6D6FLL;
            if (v10 || (sub_268B38444() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000014 && 0x8000000268B5B160 == a2;
              if (v11 || (sub_268B38444() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 0xD000000000000014 && 0x8000000268B5CEA0 == a2)
              {

                return 7;
              }

              else
              {
                v13 = sub_268B38444();

                if (v13)
                {
                  return 7;
                }

                else
                {
                  return 8;
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_268ABB5B8(char a1)
{
  result = 0x534F497369;
  switch(a1)
  {
    case 1:
      result = 1448375145;
      break;
    case 2:
      result = 0xD000000000000012;
      break;
    case 3:
      result = 0x72656B61657073;
      break;
    case 4:
      result = 0xD00000000000001CLL;
      break;
    case 5:
      result = 0x6F52656D61537369;
      break;
    case 6:
      result = 0xD000000000000014;
      break;
    case 7:
      result = 0xD000000000000014;
      break;
    default:
      return result;
  }

  return result;
}

void sub_268ABB6CC()
{
  OUTLINED_FUNCTION_197();
  OUTLINED_FUNCTION_63_4();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A8148, &qword_268B4CF98);
  OUTLINED_FUNCTION_1_15(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_15_19();
  OUTLINED_FUNCTION_11_29();
  sub_268AC1FEC();
  OUTLINED_FUNCTION_25_13();
  v6 = *v1;
  v16[0] = 0;
  OUTLINED_FUNCTION_2_25();
  sub_268B383B4();
  if (!v0)
  {
    v7 = v1[1];
    v16[0] = 1;
    OUTLINED_FUNCTION_2_25();
    sub_268B383B4();
    v8 = v1[2];
    v16[0] = 2;
    OUTLINED_FUNCTION_2_25();
    sub_268B383B4();
    OUTLINED_FUNCTION_74_4();
    v9 = OUTLINED_FUNCTION_144_1();
    sub_268AC2040(v9, v10);
    sub_268A35520();
    OUTLINED_FUNCTION_18_18();
    sub_268B383A4();
    OUTLINED_FUNCTION_121_0();
    memcpy(v11, v12, v13);
    sub_268AC1E28(v16, &qword_2802A5C88);
    OUTLINED_FUNCTION_123_1();
    OUTLINED_FUNCTION_2_25();
    sub_268B383B4();
    OUTLINED_FUNCTION_122_1();
    OUTLINED_FUNCTION_2_25();
    sub_268B383B4();
    OUTLINED_FUNCTION_125_1();
    OUTLINED_FUNCTION_2_25();
    sub_268B383B4();
    OUTLINED_FUNCTION_151_1();
    OUTLINED_FUNCTION_6_38();
    sub_268B383D4();
  }

  v14 = OUTLINED_FUNCTION_59_3();
  v15(v14);
  OUTLINED_FUNCTION_47_5();
  OUTLINED_FUNCTION_198();
}

void sub_268ABB8EC()
{
  OUTLINED_FUNCTION_197();
  OUTLINED_FUNCTION_64_5();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A8418, &qword_268B4D160);
  OUTLINED_FUNCTION_1(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_24_13();
  OUTLINED_FUNCTION_58_6();
  sub_268AC1FEC();
  OUTLINED_FUNCTION_21_12();
  if (v1)
  {
    OUTLINED_FUNCTION_29_15();
    __swift_destroy_boxed_opaque_existential_0Tm(v0);
    OUTLINED_FUNCTION_61_5();
    sub_268AC1E28(v17, &qword_2802A5C88);
  }

  else
  {
    v17[0] = 0;
    OUTLINED_FUNCTION_45_7();
    sub_268B38344();
    OUTLINED_FUNCTION_181_1();
    OUTLINED_FUNCTION_5_16(v6);
    sub_268B38344();
    OUTLINED_FUNCTION_178_1();
    OUTLINED_FUNCTION_5_16(v7);
    v8 = sub_268B38344();
    OUTLINED_FUNCTION_177_0(v8);
    OUTLINED_FUNCTION_44_7();
    sub_268B38334();
    OUTLINED_FUNCTION_221_1();
    OUTLINED_FUNCTION_26_16();
    v18[0] = 0;
    v18[1] = 0;
    v18[2] = 1;
    OUTLINED_FUNCTION_40_10(v9);
    sub_268AC1E28(v18, &qword_2802A5C88);
    OUTLINED_FUNCTION_5_16(4);
    sub_268B38344();
    OUTLINED_FUNCTION_222_1();
    OUTLINED_FUNCTION_5_16(v10);
    sub_268B38344();
    OUTLINED_FUNCTION_5_16(6);
    v11 = sub_268B38344();
    OUTLINED_FUNCTION_168_1(v11);
    OUTLINED_FUNCTION_44_7();
    sub_268B38364();
    OUTLINED_FUNCTION_64_7();
    OUTLINED_FUNCTION_218_1(0);
    v12 = OUTLINED_FUNCTION_17_19();
    v13(v12);
    OUTLINED_FUNCTION_31_18();
    v14 = OUTLINED_FUNCTION_47_8();
    sub_268AC2040(v14, v15);
    __swift_destroy_boxed_opaque_existential_0Tm(v0);
    v16 = OUTLINED_FUNCTION_37_15();
    sub_268A14558(v16);
    OUTLINED_FUNCTION_207_1();
  }

  OUTLINED_FUNCTION_163_1();
  OUTLINED_FUNCTION_198();
}

uint64_t sub_268ABBBB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_268ABB334(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_268ABBBD8(uint64_t a1)
{
  v2 = sub_268AC1FEC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_268ABBC14(uint64_t a1)
{
  v2 = sub_268AC1FEC();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_268ABBC7C@<X0>(void *(*a1)(void *__return_ptr)@<X3>, void *a2@<X8>)
{
  result = a1(__src);
  if (!v2)
  {
    return memcpy(a2, __src, 0x68uLL);
  }

  return result;
}

uint64_t sub_268ABBF0C()
{
  OUTLINED_FUNCTION_173_1();
  v3 = v3 && v2 == 0xE500000000000000;
  if (v3 || (OUTLINED_FUNCTION_58_1() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v5 = v1 == 1448375145 && v0 == 0xE400000000000000;
    if (v5 || (OUTLINED_FUNCTION_58_1() & 1) != 0)
    {

      return 1;
    }

    else
    {
      OUTLINED_FUNCTION_71_5();
      v7 = v1 == 0xD000000000000012 && v6 == v0;
      if (v7 || (OUTLINED_FUNCTION_58_1() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = v1 == OUTLINED_FUNCTION_157_1() && v0 == 0xE700000000000000;
        if (v8 || (OUTLINED_FUNCTION_58_1() & 1) != 0)
        {

          return 3;
        }

        else
        {
          OUTLINED_FUNCTION_71_5();
          v10 = v1 == 0xD00000000000001CLL && v9 == v0;
          if (v10 || (OUTLINED_FUNCTION_58_1() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v12 = v1 == OUTLINED_FUNCTION_72_4() && v0 == v11;
            if (v12 || (OUTLINED_FUNCTION_58_1() & 1) != 0)
            {

              return 5;
            }

            else
            {
              OUTLINED_FUNCTION_71_5();
              v14 = v1 == 0xD000000000000014 && v13 == v0;
              if (v14 || (OUTLINED_FUNCTION_58_1() & 1) != 0)
              {

                return 6;
              }

              else
              {
                OUTLINED_FUNCTION_71_5();
                if (v1 == 0xD000000000000012 && v15 == v0)
                {

                  return 7;
                }

                else
                {
                  OUTLINED_FUNCTION_58_1();
                  OUTLINED_FUNCTION_93_4();
                  if (v1)
                  {
                    return 7;
                  }

                  else
                  {
                    return 8;
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

void sub_268ABC0DC(char a1)
{
  switch(a1)
  {
    case 1:
      OUTLINED_FUNCTION_175_1();
      break;
    case 2:
    case 6:
    case 7:
      OUTLINED_FUNCTION_71_5();
      break;
    case 3:
      OUTLINED_FUNCTION_136_1();
      break;
    case 4:
      OUTLINED_FUNCTION_143_1();
      break;
    case 5:
      OUTLINED_FUNCTION_72_4();
      break;
    default:
      return;
  }
}

void sub_268ABC1C8()
{
  OUTLINED_FUNCTION_197();
  OUTLINED_FUNCTION_63_4();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A8138, &qword_268B4CF90);
  OUTLINED_FUNCTION_1_15(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_15_19();
  OUTLINED_FUNCTION_11_29();
  sub_268AC1F60();
  OUTLINED_FUNCTION_25_13();
  v6 = *v1;
  v15[0] = 0;
  OUTLINED_FUNCTION_2_25();
  sub_268B383B4();
  if (!v0)
  {
    OUTLINED_FUNCTION_14_23();
    OUTLINED_FUNCTION_13_21();
    OUTLINED_FUNCTION_74_4();
    v7 = OUTLINED_FUNCTION_36_9();
    sub_268AC1FB4(v7, v8);
    sub_268A35520();
    OUTLINED_FUNCTION_18_18();
    sub_268B383A4();
    v9 = OUTLINED_FUNCTION_39_7();
    memcpy(v9, v10, v11);
    sub_268AC1E28(v15, &qword_2802A5C88);
    OUTLINED_FUNCTION_123_1();
    OUTLINED_FUNCTION_6_38();
    sub_268B383B4();
    OUTLINED_FUNCTION_122_1();
    OUTLINED_FUNCTION_6_38();
    sub_268B383B4();
    OUTLINED_FUNCTION_125_1();
    OUTLINED_FUNCTION_6_38();
    sub_268B383B4();
    v12 = v1[92];
    OUTLINED_FUNCTION_156_1();
    OUTLINED_FUNCTION_6_38();
    sub_268B383B4();
  }

  v13 = OUTLINED_FUNCTION_59_3();
  v14(v13);
  OUTLINED_FUNCTION_47_5();
  OUTLINED_FUNCTION_198();
}

void sub_268ABC38C()
{
  OUTLINED_FUNCTION_197();
  OUTLINED_FUNCTION_64_5();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A8420, &qword_268B4D168);
  OUTLINED_FUNCTION_1(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_24_13();
  OUTLINED_FUNCTION_58_6();
  sub_268AC1F60();
  OUTLINED_FUNCTION_21_12();
  if (v1)
  {
    OUTLINED_FUNCTION_5_17();
    OUTLINED_FUNCTION_147_0();
    __swift_destroy_boxed_opaque_existential_0Tm(v0);
    v6 = OUTLINED_FUNCTION_34_12();
    sub_268A30574(v6);
  }

  else
  {
    v22 = 0;
    OUTLINED_FUNCTION_8_20();
    sub_268B38344();
    OUTLINED_FUNCTION_4_28(1);
    sub_268B38344();
    OUTLINED_FUNCTION_4_28(2);
    v7 = sub_268B38344();
    OUTLINED_FUNCTION_98_3(v7);
    OUTLINED_FUNCTION_44_7();
    sub_268B38334();
    v8 = v21[14];
    v9 = v21[15];
    v20 = v21[16];
    OUTLINED_FUNCTION_3_43();
    sub_268AC1E28(v21, &qword_2802A5C88);
    OUTLINED_FUNCTION_4_28(4);
    sub_268B38344();
    OUTLINED_FUNCTION_4_28(5);
    sub_268B38344();
    OUTLINED_FUNCTION_4_28(6);
    sub_268B38344();
    OUTLINED_FUNCTION_8_19();
    sub_268B38344();
    v10 = OUTLINED_FUNCTION_142_1();
    v11(v10);
    OUTLINED_FUNCTION_41_6();
    OUTLINED_FUNCTION_93_7();
    OUTLINED_FUNCTION_24_17();
    v13 = OUTLINED_FUNCTION_90_6(v12);
    sub_268AC1FB4(v13, v14);
    OUTLINED_FUNCTION_138_1(v0);
    v23 = v19;
    OUTLINED_FUNCTION_179_1();
    v24 = v15;
    v25 = v8;
    v26 = v9;
    v27 = v20;
    OUTLINED_FUNCTION_89_6();
    OUTLINED_FUNCTION_23_20();
    OUTLINED_FUNCTION_91_5();
    v16 = OUTLINED_FUNCTION_192_1();
    sub_268A30574(v16);
    v17 = OUTLINED_FUNCTION_176_1();
    memcpy(v17, v18, 0x5DuLL);
  }

  OUTLINED_FUNCTION_198();
}

uint64_t sub_268ABC71C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_268ABBF0C();
  *a1 = result;
  return result;
}

uint64_t sub_268ABC744(uint64_t a1)
{
  v2 = sub_268AC1F60();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_268ABC780(uint64_t a1)
{
  v2 = sub_268AC1F60();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_268ABC7E8@<X0>(void *(*a1)(void *__return_ptr)@<X3>, void *a2@<X8>)
{
  result = a1(v5);
  if (!v2)
  {
    return memcpy(a2, v5, 0x5DuLL);
  }

  return result;
}

uint64_t sub_268ABC88C()
{
  v0 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_132_1();
  v1 = *MEMORY[0x277D85DE8];

  return sub_268ABC8E0();
}

uint64_t sub_268ABCAD0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x534F497369 && a2 == 0xE500000000000000;
  if (v4 || (sub_268B38444() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1448375145 && a2 == 0xE400000000000000;
    if (v6 || (sub_268B38444() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000012 && 0x8000000268B5B120 == a2;
      if (v7 || (sub_268B38444() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x72656B61657073 && a2 == 0xE700000000000000;
        if (v8 || (sub_268B38444() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD00000000000001CLL && 0x8000000268B5B140 == a2;
          if (v9 || (sub_268B38444() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6F52656D61537369 && a2 == 0xEE00796C6E4F6D6FLL;
            if (v10 || (sub_268B38444() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000014 && 0x8000000268B5B160 == a2;
              if (v11 || (sub_268B38444() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000012 && 0x8000000268B5CE80 == a2;
                if (v12 || (sub_268B38444() & 1) != 0)
                {

                  return 7;
                }

                else if (a1 == 0x656C62616E457369 && a2 == 0xEF656C6666756853)
                {

                  return 8;
                }

                else
                {
                  v14 = sub_268B38444();

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

unint64_t sub_268ABCDA4(char a1)
{
  result = 0x534F497369;
  switch(a1)
  {
    case 1:
      result = 1448375145;
      break;
    case 2:
      result = 0xD000000000000012;
      break;
    case 3:
      result = 0x72656B61657073;
      break;
    case 4:
      result = 0xD00000000000001CLL;
      break;
    case 5:
      result = 0x6F52656D61537369;
      break;
    case 6:
      result = 0xD000000000000014;
      break;
    case 7:
      result = 0xD000000000000012;
      break;
    case 8:
      result = 0x656C62616E457369;
      break;
    default:
      return result;
  }

  return result;
}

void sub_268ABCEE0()
{
  OUTLINED_FUNCTION_197();
  OUTLINED_FUNCTION_63_4();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A8128, &qword_268B4CF88);
  OUTLINED_FUNCTION_1_15(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_15_19();
  OUTLINED_FUNCTION_11_29();
  sub_268AC1ED4();
  OUTLINED_FUNCTION_25_13();
  v6 = *v1;
  v16[0] = 0;
  OUTLINED_FUNCTION_2_25();
  sub_268B383B4();
  if (!v0)
  {
    OUTLINED_FUNCTION_14_23();
    OUTLINED_FUNCTION_13_21();
    OUTLINED_FUNCTION_74_4();
    v7 = OUTLINED_FUNCTION_36_9();
    sub_268AC1F28(v7, v8);
    sub_268A35520();
    OUTLINED_FUNCTION_18_18();
    sub_268B383A4();
    v9 = OUTLINED_FUNCTION_39_7();
    memcpy(v9, v10, v11);
    sub_268AC1E28(v16, &qword_2802A5C88);
    OUTLINED_FUNCTION_123_1();
    OUTLINED_FUNCTION_6_38();
    sub_268B383B4();
    OUTLINED_FUNCTION_122_1();
    OUTLINED_FUNCTION_6_38();
    sub_268B383B4();
    OUTLINED_FUNCTION_125_1();
    OUTLINED_FUNCTION_6_38();
    sub_268B383B4();
    v12 = v1[92];
    OUTLINED_FUNCTION_156_1();
    OUTLINED_FUNCTION_6_38();
    sub_268B383B4();
    v13 = v1[93];
    OUTLINED_FUNCTION_6_38();
    sub_268B383B4();
  }

  v14 = OUTLINED_FUNCTION_59_3();
  v15(v14);
  OUTLINED_FUNCTION_47_5();
  OUTLINED_FUNCTION_198();
}

void sub_268ABD0C0()
{
  OUTLINED_FUNCTION_197();
  OUTLINED_FUNCTION_64_5();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A8428, &qword_268B4D170);
  OUTLINED_FUNCTION_1(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_24_13();
  OUTLINED_FUNCTION_58_6();
  sub_268AC1ED4();
  OUTLINED_FUNCTION_21_12();
  if (v1)
  {
    OUTLINED_FUNCTION_55_7();
    __swift_destroy_boxed_opaque_existential_0Tm(v0);
    OUTLINED_FUNCTION_153_1();
    sub_268AC1E28(v15, &qword_2802A5C88);
  }

  else
  {
    v15[0] = 0;
    OUTLINED_FUNCTION_8_19();
    sub_268B38344();
    OUTLINED_FUNCTION_181_1();
    OUTLINED_FUNCTION_22_19(v7);
    sub_268B38344();
    OUTLINED_FUNCTION_178_1();
    OUTLINED_FUNCTION_22_19(v8);
    sub_268B38344();
    v17 = 3;
    sub_268A356BC();
    OUTLINED_FUNCTION_44_7();
    sub_268B38334();
    v16[0] = 0;
    v16[1] = 0;
    v16[2] = 1;
    OUTLINED_FUNCTION_40_10(v16);
    sub_268AC1E28(v16, &qword_2802A5C88);
    OUTLINED_FUNCTION_22_19(4);
    sub_268B38344();
    OUTLINED_FUNCTION_22_19(5);
    sub_268B38344();
    OUTLINED_FUNCTION_22_19(6);
    sub_268B38344();
    OUTLINED_FUNCTION_22_19(7);
    sub_268B38344();
    v15[95] = 8;
    OUTLINED_FUNCTION_8_19();
    sub_268B38344();
    v9 = OUTLINED_FUNCTION_17_19();
    v10(v9);
    v11 = OUTLINED_FUNCTION_84_5();
    sub_268AC1F28(v11, v12);
    __swift_destroy_boxed_opaque_existential_0Tm(v0);
    v13 = OUTLINED_FUNCTION_96_5();
    sub_268A74B94(v13);
    memcpy(v2, v14, 0x5EuLL);
  }

  OUTLINED_FUNCTION_198();
}

uint64_t sub_268ABD400@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_268ABCAD0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_268ABD428(uint64_t a1)
{
  v2 = sub_268AC1ED4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_268ABD464(uint64_t a1)
{
  v2 = sub_268AC1ED4();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_268ABD4CC@<X0>(void *(*a1)(void *__return_ptr)@<X3>, void *a2@<X8>)
{
  result = a1(v5);
  if (!v2)
  {
    return memcpy(a2, v5, 0x5EuLL);
  }

  return result;
}

uint64_t sub_268ABD570()
{
  v0 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_132_1();
  v1 = *MEMORY[0x277D85DE8];

  return sub_268ABD5C4();
}

uint64_t sub_268ABD7B4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x656D614E707061 && a2 == 0xE700000000000000)
  {

    v4 = 0;
  }

  else
  {
    sub_268B38444();
    OUTLINED_FUNCTION_93_4();
    v4 = v2 ^ 1;
  }

  return v4 & 1;
}

void sub_268ABD868()
{
  OUTLINED_FUNCTION_197();
  v1 = v0;
  v16[1] = v2;
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_1(v7);
  v9 = v8;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v12);
  v14 = v16 - v13;
  v15 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  v1();
  sub_268B38584();
  sub_268B38374();
  (*(v9 + 8))(v14, v7);
  OUTLINED_FUNCTION_198();
}

void sub_268ABD9D4()
{
  OUTLINED_FUNCTION_197();
  v4 = v3;
  v7 = OUTLINED_FUNCTION_118_1(v5, v6);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
  OUTLINED_FUNCTION_1(v9);
  v15 = v10;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_75();
  v14 = OUTLINED_FUNCTION_30_13();
  v4(v14);
  OUTLINED_FUNCTION_9_19();
  if (!v1)
  {
    OUTLINED_FUNCTION_35_10();
    sub_268B38304();
    (*(v15 + 8))(v2, v9);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v0);
  OUTLINED_FUNCTION_47_5();
  OUTLINED_FUNCTION_198();
}

uint64_t sub_268ABDAD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_268ABD7B4(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_268ABDB00(uint64_t a1)
{
  v2 = sub_268AC1E80();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_268ABDB3C(uint64_t a1)
{
  v2 = sub_268AC1E80();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_268ABDBBC()
{
  OUTLINED_FUNCTION_69_5();
  sub_268ABD9D4();
  if (!v1)
  {
    *v0 = v2;
    v0[1] = v3;
  }
}

void sub_268ABDBE8()
{
  v1 = *v0;
  v2 = v0[1];
  sub_268ABD868();
}

uint64_t sub_268ABDC30()
{
  OUTLINED_FUNCTION_215_0();
  v32 = *MEMORY[0x277D85DE8];
  if (qword_2802A4D30 != -1)
  {
    OUTLINED_FUNCTION_3_35();
  }

  sub_268AC0634();
  OUTLINED_FUNCTION_172_1();
  if (v0)
  {

LABEL_5:
    v2 = sub_268B37B84();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_87_2();
  objc_opt_self();
  OUTLINED_FUNCTION_29_12();
  sub_268B34554();
  OUTLINED_FUNCTION_126_1();
  v10 = OUTLINED_FUNCTION_50_6(v3, sel_JSONObjectWithData_options_error_, v4, v5, v6, v7, v8, v9, v26, v27, v29, v30);

  if (!v10)
  {
    v12 = v31;
    OUTLINED_FUNCTION_23_15();
    v13 = sub_268B34514();

    swift_willThrow();
    v14 = OUTLINED_FUNCTION_29_12();
    sub_268910B4C(v14, v15);
    goto LABEL_5;
  }

  v11 = v31;
  OUTLINED_FUNCTION_188_1();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5C30, &unk_268B44D70);
  if (OUTLINED_FUNCTION_79_7())
  {
    v2 = v28;
  }

  else
  {
    v2 = sub_268B37B84();
  }

  v16 = OUTLINED_FUNCTION_29_12();
  sub_268910B4C(v16, v17);
LABEL_12:
  v18 = OUTLINED_FUNCTION_94_3();
  sub_268A32DA4(v18, v2);
  OUTLINED_FUNCTION_12_25();
  v19 = OUTLINED_FUNCTION_11_23(40);
  OUTLINED_FUNCTION_53_5(v19, v20, v21, v22, v23);

  v25 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_268ABDE34(uint64_t a1, uint64_t a2)
{
  v5 = v2[5];
  v6 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v5);
  v7 = sub_268B37B84();
  sub_2689CE860(0xD000000000000026, 0x8000000268B5C880, v7, a1, a2, v5, v6);
}

uint64_t sub_268ABDEF4()
{
  v1 = OUTLINED_FUNCTION_157_1();
  if (v3 == v1 && v2 == 0xE700000000000000)
  {

    v5 = 0;
  }

  else
  {
    sub_268B38444();
    OUTLINED_FUNCTION_93_4();
    v5 = v0 ^ 1;
  }

  return v5 & 1;
}

void sub_268ABDF58()
{
  OUTLINED_FUNCTION_213_1();
  OUTLINED_FUNCTION_193_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A8108, &unk_268B4CF70);
  OUTLINED_FUNCTION_1_15(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_15_19();
  OUTLINED_FUNCTION_133_1();
  sub_268AC1D9C();
  OUTLINED_FUNCTION_155_1();
  sub_268B38584();
  OUTLINED_FUNCTION_206_1();
  sub_268AC1DF0(v1, v9);
  sub_268A35520();
  OUTLINED_FUNCTION_2_25();
  sub_268B383A4();
  OUTLINED_FUNCTION_150_0();
  sub_268AC1E28(v9, &qword_2802A5C88);
  v6 = *v0;
  v7 = OUTLINED_FUNCTION_153_0();
  v8(v7);
  OUTLINED_FUNCTION_212_1();
}

uint64_t sub_268ABE0BC(uint64_t a1)
{
  v2 = sub_268AC1D9C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_268ABE0F8(uint64_t a1)
{
  v2 = sub_268AC1D9C();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_268ABE178(void *a1@<X8>)
{
  sub_268AB2658();
  if (!v1)
  {
    memcpy(a1, __src, 0x51uLL);
  }
}

uint64_t sub_268ABE424(uint64_t *a1)
{
  v2 = sub_268B37A54();
  v89 = OUTLINED_FUNCTION_1(v2);
  v90 = v3;
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v89);
  v88 = &v87 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v87 = &v87 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v87 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = (&v87 - v14);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v87 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v87 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v87 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v87 - v25;
  v27 = a1[3];
  v28 = a1[4];
  OUTLINED_FUNCTION_53_7();
  v29 = sub_268B34C84();
  if (v29)
  {
    if (qword_2802A4F30 != -1)
    {
      v29 = OUTLINED_FUNCTION_0_0();
    }

    OUTLINED_FUNCTION_76_4(v29, qword_2802CDA10);
    v30(v26);
    v31 = sub_268B37A34();
    v32 = sub_268B37ED4();
    if (OUTLINED_FUNCTION_115_0(v32))
    {
      v33 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_154_0(v33);
      OUTLINED_FUNCTION_78_7(&dword_2688BB000, v34, v35, "Logging xrDevice");
      v36 = 6;
LABEL_46:
      MEMORY[0x26D6266E0](v28, -1, -1);
      goto LABEL_47;
    }

    v36 = 6;
  }

  else
  {
    v37 = a1[3];
    v28 = a1[4];
    OUTLINED_FUNCTION_53_7();
    v38 = sub_268B34CE4();
    if (v38)
    {
      if (qword_2802A4F30 != -1)
      {
        v38 = OUTLINED_FUNCTION_0_0();
      }

      OUTLINED_FUNCTION_76_4(v38, qword_2802CDA10);
      v39(v24);
      v31 = sub_268B37A34();
      v40 = sub_268B37ED4();
      if (OUTLINED_FUNCTION_115_0(v40))
      {
        v41 = OUTLINED_FUNCTION_14();
        OUTLINED_FUNCTION_154_0(v41);
        OUTLINED_FUNCTION_78_7(&dword_2688BB000, v42, v43, "Logging iPhone");
        v36 = 0;
        v26 = v24;
        goto LABEL_46;
      }

      v36 = 0;
      v26 = v24;
    }

    else
    {
      v44 = a1[3];
      v45 = a1[4];
      OUTLINED_FUNCTION_53_7();
      v46 = sub_268B34CC4();
      if (v46)
      {
        if (qword_2802A4F30 != -1)
        {
          v46 = OUTLINED_FUNCTION_0_0();
        }

        OUTLINED_FUNCTION_76_4(v46, qword_2802CDA10);
        v47(v21);
        v31 = sub_268B37A34();
        v48 = sub_268B37ED4();
        if (OUTLINED_FUNCTION_115_0(v48))
        {
          v49 = OUTLINED_FUNCTION_14();
          OUTLINED_FUNCTION_154_0(v49);
          OUTLINED_FUNCTION_78_7(&dword_2688BB000, v50, v51, "Logging iPad");
          v36 = 1;
          v26 = v21;
          goto LABEL_46;
        }

        v36 = 1;
        v26 = v21;
      }

      else
      {
        v52 = a1[3];
        v53 = a1[4];
        OUTLINED_FUNCTION_53_7();
        v54 = sub_268B34D04();
        if (v54)
        {
          if (qword_2802A4F30 != -1)
          {
            v54 = OUTLINED_FUNCTION_0_0();
          }

          OUTLINED_FUNCTION_76_4(v54, qword_2802CDA10);
          v55(v18);
          v31 = sub_268B37A34();
          v56 = sub_268B37ED4();
          if (OUTLINED_FUNCTION_115_0(v56))
          {
            v57 = OUTLINED_FUNCTION_14();
            OUTLINED_FUNCTION_154_0(v57);
            OUTLINED_FUNCTION_78_7(&dword_2688BB000, v58, v59, "Logging ATV");
            v36 = 4;
            v26 = v18;
            goto LABEL_46;
          }

          v36 = 4;
          v26 = v18;
        }

        else
        {
          v60 = a1[3];
          v61 = a1[4];
          OUTLINED_FUNCTION_53_7();
          if (sub_268B34D24())
          {
            if (qword_2802A4F30 != -1)
            {
              OUTLINED_FUNCTION_0_0();
            }

            v12 = v89;
            v62 = __swift_project_value_buffer(v89, qword_2802CDA10);
            v90[2](v15, v62, v12);
            v31 = sub_268B37A34();
            v63 = sub_268B37ED4();
            if (OUTLINED_FUNCTION_115_0(v63))
            {
              v64 = OUTLINED_FUNCTION_14();
              OUTLINED_FUNCTION_154_0(v64);
              OUTLINED_FUNCTION_78_7(&dword_2688BB000, v65, v66, "Logging HomePod");
              v36 = 5;
              v26 = v15;
              v15 = v90;
              goto LABEL_46;
            }

            v36 = 5;
            v26 = v15;
            v15 = v90;
          }

          else
          {
            v67 = a1[3];
            v68 = a1[4];
            OUTLINED_FUNCTION_53_7();
            v69 = sub_268B34CF4();
            v15 = v90;
            if ((v69 & 1) == 0)
            {
              v73 = a1[3];
              v74 = a1[4];
              OUTLINED_FUNCTION_53_7();
              v75 = sub_268B34CB4();
              v12 = v89;
              if (v75)
              {
                if (qword_2802A4F30 != -1)
                {
                  OUTLINED_FUNCTION_0_0();
                }

                __swift_project_value_buffer(v12, qword_2802CDA10);
                OUTLINED_FUNCTION_11_4();
                v26 = v87;
                v76(v87);
                v31 = sub_268B37A34();
                v77 = sub_268B37ED4();
                if (!OUTLINED_FUNCTION_115_0(v77))
                {
                  v36 = 3;
                  goto LABEL_47;
                }

                v78 = OUTLINED_FUNCTION_14();
                OUTLINED_FUNCTION_154_0(v78);
                OUTLINED_FUNCTION_78_7(&dword_2688BB000, v79, v80, "Logging Mac");
                v36 = 3;
              }

              else
              {
                if (qword_2802A4F30 != -1)
                {
                  OUTLINED_FUNCTION_0_0();
                }

                __swift_project_value_buffer(v12, qword_2802CDA10);
                OUTLINED_FUNCTION_11_4();
                v26 = v88;
                v81(v88);
                v31 = sub_268B37A34();
                v82 = sub_268B37F04();
                if (!OUTLINED_FUNCTION_115_0(v82))
                {
                  v36 = 7;
                  goto LABEL_47;
                }

                v83 = OUTLINED_FUNCTION_14();
                OUTLINED_FUNCTION_154_0(v83);
                OUTLINED_FUNCTION_78_7(&dword_2688BB000, v84, v85, "Cannot create DialogDeviceType from unknown deviceState.");
                v36 = 7;
              }

              goto LABEL_46;
            }

            if (qword_2802A4F30 != -1)
            {
              OUTLINED_FUNCTION_0_0();
            }

            __swift_project_value_buffer(v89, qword_2802CDA10);
            OUTLINED_FUNCTION_11_4();
            v70(v12);
            v31 = sub_268B37A34();
            v71 = sub_268B37ED4();
            v36 = 2;
            if (os_log_type_enabled(v31, v71))
            {
              v72 = OUTLINED_FUNCTION_14();
              OUTLINED_FUNCTION_154_0(v72);
              _os_log_impl(&dword_2688BB000, v31, v71, "Logging Watch", v28, 2u);
              v26 = v12;
              v12 = v89;
              goto LABEL_46;
            }

            v26 = v12;
            v12 = v89;
          }
        }
      }
    }
  }

LABEL_47:

  v15[1](v26, v12);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v36;
}

uint64_t sub_268ABEB20(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7954656369766564 && a2 == 0xEA00000000006570;
  if (v4 || (sub_268B38444() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000268B5CE60 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_268B38444();

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

uint64_t sub_268ABEBF8(char a1)
{
  if (a1)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x7954656369766564;
  }
}

void sub_268ABEC38()
{
  OUTLINED_FUNCTION_213_1();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A80F0, &qword_268B4CF68);
  OUTLINED_FUNCTION_1_15(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_15_19();
  OUTLINED_FUNCTION_11_29();
  sub_268AC1CF4();
  OUTLINED_FUNCTION_25_13();
  sub_268AC1C4C();
  OUTLINED_FUNCTION_69_7();
  sub_268B383D4();
  if (!v0)
  {
    sub_268AC1D48();
    OUTLINED_FUNCTION_69_7();
    sub_268B383D4();
  }

  v5 = OUTLINED_FUNCTION_59_3();
  v6(v5);
  OUTLINED_FUNCTION_212_1();
}

void sub_268ABED74()
{
  OUTLINED_FUNCTION_213_1();
  OUTLINED_FUNCTION_201_1();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A8440, &qword_268B4D188);
  OUTLINED_FUNCTION_1(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_75();
  v5 = v0[3];
  v6 = v0[4];
  OUTLINED_FUNCTION_67_3(v0);
  sub_268AC1CF4();
  OUTLINED_FUNCTION_75_4();
  sub_268AC2DEC();
  OUTLINED_FUNCTION_137_1();
  sub_268B38364();
  sub_268AC2E40();
  OUTLINED_FUNCTION_137_1();
  sub_268B38364();
  v7 = OUTLINED_FUNCTION_62_5();
  v8(v7);
  __swift_destroy_boxed_opaque_existential_0Tm(v0);
  OUTLINED_FUNCTION_200_1();
  OUTLINED_FUNCTION_212_1();
}

uint64_t sub_268ABEEF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_268ABEB20(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_268ABEF1C(uint64_t a1)
{
  v2 = sub_268AC1CF4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_268ABEF58(uint64_t a1)
{
  v2 = sub_268AC1CF4();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_268ABEF94(_WORD *a1@<X8>)
{
  sub_268ABED74();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t sub_268ABF1D8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6465657073 && a2 == 0xE500000000000000;
  if (v4 || (sub_268B38444() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000268B5CE40 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_268B38444();

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

uint64_t sub_268ABF2A4(char a1)
{
  if (a1)
  {
    return 0xD000000000000018;
  }

  else
  {
    return 0x6465657073;
  }
}

void sub_268ABF2DC()
{
  OUTLINED_FUNCTION_197();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A80E0, &qword_268B4CF60);
  OUTLINED_FUNCTION_1_15(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_62_3();
  OUTLINED_FUNCTION_133_1();
  sub_268AC1CA0();
  OUTLINED_FUNCTION_155_1();
  sub_268B38584();
  sub_268B38384();
  if (!v1)
  {
    sub_268B383B4();
  }

  (*(v5 + 8))(v2, v0);
  OUTLINED_FUNCTION_203_0();
  OUTLINED_FUNCTION_198();
}

void sub_268ABF408()
{
  OUTLINED_FUNCTION_213_1();
  OUTLINED_FUNCTION_201_1();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A8458, &qword_268B4D190);
  OUTLINED_FUNCTION_1(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_75();
  v5 = v0[3];
  v6 = v0[4];
  OUTLINED_FUNCTION_67_3(v0);
  sub_268AC1CA0();
  OUTLINED_FUNCTION_75_4();
  OUTLINED_FUNCTION_35_10();
  sub_268B38314();
  OUTLINED_FUNCTION_35_10();
  sub_268B38344();
  v7 = OUTLINED_FUNCTION_62_5();
  v8(v7);
  __swift_destroy_boxed_opaque_existential_0Tm(v0);
  OUTLINED_FUNCTION_200_1();
  OUTLINED_FUNCTION_212_1();
}

uint64_t sub_268ABF564@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_268ABF1D8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_268ABF58C(uint64_t a1)
{
  v2 = sub_268AC1CA0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_268ABF5C8(uint64_t a1)
{
  v2 = sub_268AC1CA0();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_268ABF604(uint64_t a1@<X8>)
{
  sub_268ABF408();
  if (!v1)
  {
    *a1 = v3;
    *(a1 + 8) = v4 & 1;
    *(a1 + 9) = HIBYTE(v4) & 1;
  }
}

void sub_268ABF640()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  *(v0 + 9);
  sub_268ABF2DC();
}

uint64_t sub_268ABF878()
{
  v0 = sub_268B382F4();

  if (v0 >= 8)
  {
    return 8;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_268ABF8C4(char a1)
{
  result = 0x656E6F6870;
  switch(a1)
  {
    case 1:
      result = 6578544;
      break;
    case 2:
      result = 0x6863746177;
      break;
    case 3:
      result = 6513005;
      break;
    case 4:
      result = 0x69736976656C6574;
      break;
    case 5:
      result = 0x646F70656D6F68;
      break;
    case 6:
      result = 0x6563697665447278;
      break;
    case 7:
      result = 0x6E776F6E6B6E75;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_268ABF9B0()
{
  v0 = sub_268B382F4();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_268ABF9FC(char a1)
{
  if (!a1)
  {
    return 0x6B61657053646461;
  }

  if (a1 == 1)
  {
    return 0x6165705365766F6DLL;
  }

  return 0x6E776F6E6B6E75;
}

uint64_t sub_268ABFA84@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_268ABF878();
  *a2 = result;
  return result;
}

uint64_t sub_268ABFAB4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_268ABF8C4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_268ABFBB4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_268ABF9B0();
  *a2 = result;
  return result;
}

uint64_t sub_268ABFBE4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_268ABF9FC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_268ABFCC0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x7954656369766564 && a2 == 0xEA00000000006570)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_268B38444();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

void sub_268ABFD5C()
{
  OUTLINED_FUNCTION_213_1();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A80C8, &qword_268B4CF58);
  OUTLINED_FUNCTION_1(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_11_29();
  sub_268AC1BF8();
  OUTLINED_FUNCTION_92_6();
  sub_268AC1C4C();
  sub_268B383D4();
  v4 = OUTLINED_FUNCTION_62_5();
  v5(v4);
  OUTLINED_FUNCTION_212_1();
}

void sub_268ABFE60()
{
  OUTLINED_FUNCTION_213_1();
  OUTLINED_FUNCTION_201_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A8460, &qword_268B4D198);
  OUTLINED_FUNCTION_1(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_75();
  v6 = v0[3];
  v7 = v0[4];
  OUTLINED_FUNCTION_67_3(v0);
  sub_268AC1BF8();
  OUTLINED_FUNCTION_75_4();
  if (!v1)
  {
    sub_268AC2DEC();
    OUTLINED_FUNCTION_137_1();
    sub_268B38364();
    v8 = OUTLINED_FUNCTION_62_5();
    v9(v8);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v0);
  OUTLINED_FUNCTION_200_1();
  OUTLINED_FUNCTION_212_1();
}

uint64_t sub_268ABFF84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_268ABFCC0(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_268ABFFB0(uint64_t a1)
{
  v2 = sub_268AC1BF8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_268ABFFEC(uint64_t a1)
{
  v2 = sub_268AC1BF8();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_268AC0028(_BYTE *a1@<X8>)
{
  sub_268ABFE60();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t sub_268AC0070()
{
  OUTLINED_FUNCTION_35_12();
  v32 = *MEMORY[0x277D85DE8];
  HIBYTE(v29) = v1;
  if (qword_2802A4D30 != -1)
  {
    OUTLINED_FUNCTION_3_35();
  }

  sub_268AC02E0();
  sub_268B344D4();
  OUTLINED_FUNCTION_87_2();
  objc_opt_self();
  OUTLINED_FUNCTION_29_12();
  sub_268B34554();
  OUTLINED_FUNCTION_126_1();
  v9 = OUTLINED_FUNCTION_50_6(v2, sel_JSONObjectWithData_options_error_, v3, v4, v5, v6, v7, v8, v26, v28, v29, v30);

  if (v9)
  {
    v10 = v31;
    OUTLINED_FUNCTION_188_1();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5C30, &unk_268B44D70);
    if (OUTLINED_FUNCTION_185_1())
    {
      v11 = v27;
    }

    else
    {
      v11 = sub_268B37B84();
    }

    v16 = OUTLINED_FUNCTION_29_12();
    sub_268910B4C(v16, v17);
  }

  else
  {
    v12 = v31;
    OUTLINED_FUNCTION_23_15();
    v13 = sub_268B34514();

    swift_willThrow();
    v14 = OUTLINED_FUNCTION_29_12();
    sub_268910B4C(v14, v15);
    v11 = sub_268B37B84();
  }

  v18 = OUTLINED_FUNCTION_94_3();
  sub_268A32DA4(v18, v11);
  OUTLINED_FUNCTION_12_25();
  v19 = OUTLINED_FUNCTION_11_23(38);
  OUTLINED_FUNCTION_53_5(v19, v20, v21, v22, v23);

  v25 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_268AC0284()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

unint64_t sub_268AC02E0()
{
  result = qword_2802A7F98;
  if (!qword_2802A7F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A7F98);
  }

  return result;
}

uint64_t sub_268AC0334(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_2688EF2C0(a4, a1);

  return a2;
}

uint64_t sub_268AC0374@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_268AC0334((a2 + 2), *a1, a1[1], (a1 + 2));
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_268AC03AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = -1 << *(a1 + 32);
  *a4 = a1;
  v7 = *(a1 + 64);
  result = a1 + 64;
  v6 = v7;
  v8 = ~v4;
  v9 = -v4;
  a4[1] = result;
  a4[2] = v8;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  a4[3] = 0;
  a4[4] = v10 & v6;
  a4[5] = a2;
  a4[6] = a3;
  return result;
}

uint64_t sub_268AC03E8@<X0>(_OWORD *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_7:
    v9 = (v7 - 1) & v7;
    v10 = __clz(__rbit64(v7)) | (v8 << 6);
    v11 = (*(v3 + 48) + 16 * v10);
    v13 = *v11;
    v12 = v11[1];
    sub_2688EF2C0(*(v3 + 56) + 32 * v10, v19);
    *&v20 = v13;
    *(&v20 + 1) = v12;
    sub_2688EF2B0(v19, &v21);

    v15 = *(&v20 + 1);
    v16 = v20;
LABEL_8:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v5;
    v1[3] = v6;
    v1[4] = v9;
    if (v15)
    {
      v18 = v1[5];
      v17 = v1[6];
      *&v19[0] = v16;
      *(&v19[0] + 1) = v15;
      v19[1] = v21;
      v19[2] = v22;
      v18(v19);
      return sub_268AC1E28(v19, &unk_2802A7FA0);
    }

    else
    {
      a1[1] = 0u;
      a1[2] = 0u;
      *a1 = 0u;
    }
  }

  else
  {
    while (1)
    {
      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v8 >= ((v5 + 64) >> 6))
      {
        v15 = 0;
        v16 = 0;
        v9 = 0;
        v21 = 0u;
        v22 = 0u;
        v20 = 0u;
        goto LABEL_8;
      }

      v7 = *(v4 + 8 * v8);
      ++v6;
      if (v7)
      {
        v6 = v8;
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_268AC0538()
{
  result = qword_2802A7FA8;
  if (!qword_2802A7FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A7FA8);
  }

  return result;
}

unint64_t sub_268AC058C()
{
  result = qword_2802A7FB0;
  if (!qword_2802A7FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A7FB0);
  }

  return result;
}

unint64_t sub_268AC05E0()
{
  result = qword_2802A7FB8;
  if (!qword_2802A7FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A7FB8);
  }

  return result;
}

unint64_t sub_268AC0634()
{
  result = qword_2802A7FC0;
  if (!qword_2802A7FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A7FC0);
  }

  return result;
}

unint64_t sub_268AC0688()
{
  result = qword_2802A7FC8;
  if (!qword_2802A7FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A7FC8);
  }

  return result;
}

unint64_t sub_268AC06DC()
{
  result = qword_2802A7FD0;
  if (!qword_2802A7FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A7FD0);
  }

  return result;
}

unint64_t sub_268AC0730()
{
  result = qword_2802A7FD8;
  if (!qword_2802A7FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A7FD8);
  }

  return result;
}

unint64_t sub_268AC0784()
{
  result = qword_2802A7FE0;
  if (!qword_2802A7FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A7FE0);
  }

  return result;
}

unint64_t sub_268AC07D8()
{
  result = qword_2802A7FE8;
  if (!qword_2802A7FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A7FE8);
  }

  return result;
}

unint64_t sub_268AC082C()
{
  result = qword_2802A7FF0;
  if (!qword_2802A7FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A7FF0);
  }

  return result;
}

unint64_t sub_268AC0880()
{
  result = qword_2802A7FF8;
  if (!qword_2802A7FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A7FF8);
  }

  return result;
}

unint64_t sub_268AC08D4()
{
  result = qword_2802A8000;
  if (!qword_2802A8000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8000);
  }

  return result;
}

unint64_t sub_268AC0928()
{
  result = qword_2802A8008;
  if (!qword_2802A8008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8008);
  }

  return result;
}

unint64_t sub_268AC097C()
{
  result = qword_2802A8010;
  if (!qword_2802A8010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8010);
  }

  return result;
}

unint64_t sub_268AC09D0()
{
  result = qword_2802A8018;
  if (!qword_2802A8018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8018);
  }

  return result;
}

unint64_t sub_268AC0A24()
{
  result = qword_2802A8020;
  if (!qword_2802A8020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8020);
  }

  return result;
}

unint64_t sub_268AC0A78()
{
  result = qword_2802A8028;
  if (!qword_2802A8028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8028);
  }

  return result;
}

unint64_t sub_268AC0ACC()
{
  result = qword_2802A8030;
  if (!qword_2802A8030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8030);
  }

  return result;
}

unint64_t sub_268AC0B20()
{
  result = qword_2802A8038;
  if (!qword_2802A8038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8038);
  }

  return result;
}

unint64_t sub_268AC0B74()
{
  result = qword_2802A8040;
  if (!qword_2802A8040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8040);
  }

  return result;
}

unint64_t sub_268AC0BC8()
{
  result = qword_2802A8048;
  if (!qword_2802A8048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8048);
  }

  return result;
}

unint64_t sub_268AC0C1C()
{
  result = qword_2802A8050;
  if (!qword_2802A8050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8050);
  }

  return result;
}

unint64_t sub_268AC0C70()
{
  result = qword_2802A8058;
  if (!qword_2802A8058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8058);
  }

  return result;
}

unint64_t sub_268AC0CC4()
{
  result = qword_2802A8060;
  if (!qword_2802A8060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8060);
  }

  return result;
}

unint64_t sub_268AC0D18()
{
  result = qword_2802A8068;
  if (!qword_2802A8068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8068);
  }

  return result;
}

unint64_t sub_268AC0D6C()
{
  result = qword_2802A8070;
  if (!qword_2802A8070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8070);
  }

  return result;
}

unint64_t sub_268AC0DC0()
{
  result = qword_2802A8078;
  if (!qword_2802A8078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8078);
  }

  return result;
}

unint64_t sub_268AC0E14()
{
  result = qword_2802A8080;
  if (!qword_2802A8080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8080);
  }

  return result;
}

unint64_t sub_268AC0E68()
{
  result = qword_2802A8088;
  if (!qword_2802A8088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8088);
  }

  return result;
}

unint64_t sub_268AC0EBC()
{
  result = qword_2802A8090;
  if (!qword_2802A8090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8090);
  }

  return result;
}

unint64_t sub_268AC0F10()
{
  result = qword_2802A8098;
  if (!qword_2802A8098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8098);
  }

  return result;
}

unint64_t sub_268AC0F64()
{
  result = qword_2802A80A0;
  if (!qword_2802A80A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A80A0);
  }

  return result;
}

unint64_t sub_268AC0FB8()
{
  result = qword_2802A80A8;
  if (!qword_2802A80A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A80A8);
  }

  return result;
}

unint64_t sub_268AC100C()
{
  result = qword_2802A80B0;
  if (!qword_2802A80B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A80B0);
  }

  return result;
}

unint64_t sub_268AC1060()
{
  result = qword_2802A80B8;
  if (!qword_2802A80B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A80B8);
  }

  return result;
}

unint64_t sub_268AC10B4()
{
  result = qword_2802A80C0;
  if (!qword_2802A80C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A80C0);
  }

  return result;
}

uint64_t sub_268AC1124(unsigned __int8 *a1, unsigned int a2)
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
  v5 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_268AC11BC(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x268AC1288);
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

uint64_t sub_268AC12D4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFD && *(a1 + 91))
    {
      v2 = *a1 + 2147483645;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v4 = v3 - 1;
      if (v4 < 0)
      {
        v5 = -1;
      }

      else
      {
        v5 = v4;
      }

      v6 = v5 - 1;
      if (v4 < 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v6;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_268AC13B8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFD && *(a1 + 83))
    {
      v2 = *a1 + 2147483645;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v4 = v3 - 1;
      if (v4 < 0)
      {
        v5 = -1;
      }

      else
      {
        v5 = v4;
      }

      v6 = v5 - 1;
      if (v4 < 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v6;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_268AC1418(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 82) = 0;
    *(result + 80) = 0;
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 83) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 83) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

uint64_t __swift_memcpy10_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t sub_268AC153C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 10))
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

void *sub_268AC157C(void *result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 4) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 10) = 1;
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

      return OUTLINED_FUNCTION_211_0(result, a2);
    }

    *(result + 10) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_211_0(result, a2);
    }
  }

  return result;
}

void *sub_268AC15C0(void *result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

      return OUTLINED_FUNCTION_211_0(result, a2);
    }

    *(result + 9) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_211_0(result, a2);
    }
  }

  return result;
}

uint64_t sub_268AC1610(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFD && *(a1 + 104))
    {
      return OUTLINED_FUNCTION_46_8(*a1 + 2147483645);
    }

    v3 = *(a1 + 24);
    OUTLINED_FUNCTION_85_6();
  }

  else
  {
    v4 = -1;
  }

  return OUTLINED_FUNCTION_46_8(v4);
}

uint64_t sub_268AC165C(uint64_t result, int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 2147483646);
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 104) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 104) = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_108_3(result, a2);
    }
  }

  return result;
}

uint64_t sub_268AC16D4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFD && *(a1 + 94))
    {
      return OUTLINED_FUNCTION_46_8(*a1 + 2147483645);
    }

    v3 = *(a1 + 24);
    OUTLINED_FUNCTION_85_6();
  }

  else
  {
    v4 = -1;
  }

  return OUTLINED_FUNCTION_46_8(v4);
}

void sub_268AC1720(uint64_t a1, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    OUTLINED_FUNCTION_182_1(a1);
    *(v3 + 92) = 0;
    *(v3 + 88) = 0;
    *v3 = v4;
    if (v5 > v6)
    {
      *(v3 + 94) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(a1 + 94) = 0;
    }

    if (a2)
    {
      OUTLINED_FUNCTION_108_3(a1, a2);
    }
  }
}

uint64_t sub_268AC1790(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFD && *(a1 + 81))
    {
      return OUTLINED_FUNCTION_46_8(*a1 + 2147483645);
    }

    v3 = *(a1 + 16);
    OUTLINED_FUNCTION_85_6();
  }

  else
  {
    v4 = -1;
  }

  return OUTLINED_FUNCTION_46_8(v4);
}

uint64_t sub_268AC17DC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 81) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 81) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_268AC185C(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
    if (a2 + 65282 <= 0xFFFEFFFF)
    {
      v2 = 2;
    }

    else
    {
      v2 = 4;
    }

    if (a2 + 65282 < 0xFF0000)
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
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = *(a1 + 2);
      if (!*(a1 + 2))
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 16)) - 65283;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *(a1 + 1);
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_268AC18E8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65282 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65282 < 0xFF0000)
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
    v6 = ((a2 - 254) >> 16) + 1;
    *result = a2 - 254;
    switch(v5)
    {
      case 1:
        *(result + 2) = v6;
        break;
      case 2:
        *(result + 2) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x268AC19B4);
      case 4:
        *(result + 2) = v6;
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
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 2) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 2) = 0;
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
          *(result + 1) = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_268AC19E8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 10))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 9);
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
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

uint64_t sub_268AC1A34(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      *(result + 9) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_268AC1A9C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFD && *(a1 + 92))
    {
      return OUTLINED_FUNCTION_46_8(*a1 + 2147483645);
    }

    v3 = *(a1 + 24);
    OUTLINED_FUNCTION_85_6();
  }

  else
  {
    v4 = -1;
  }

  return OUTLINED_FUNCTION_46_8(v4);
}

void sub_268AC1AE8(uint64_t a1, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    OUTLINED_FUNCTION_182_1(a1);
    *(v3 + 88) = 0;
    *v3 = v4;
    if (v5 > v6)
    {
      *(v3 + 92) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(a1 + 92) = 0;
    }

    if (a2)
    {
      OUTLINED_FUNCTION_108_3(a1, a2);
    }
  }
}

uint64_t sub_268AC1B48(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFD && *(a1 + 93))
    {
      return OUTLINED_FUNCTION_46_8(*a1 + 2147483645);
    }

    v3 = *(a1 + 24);
    OUTLINED_FUNCTION_85_6();
  }

  else
  {
    v4 = -1;
  }

  return OUTLINED_FUNCTION_46_8(v4);
}

void sub_268AC1B94(uint64_t a1, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    OUTLINED_FUNCTION_182_1(a1);
    *(v3 + 92) = 0;
    *(v3 + 88) = 0;
    *v3 = v4;
    if (v5 > v6)
    {
      *(v3 + 93) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(a1 + 93) = 0;
    }

    if (a2)
    {
      OUTLINED_FUNCTION_108_3(a1, a2);
    }
  }
}

unint64_t sub_268AC1BF8()
{
  result = qword_2802A80D0;
  if (!qword_2802A80D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A80D0);
  }

  return result;
}

unint64_t sub_268AC1C4C()
{
  result = qword_2802A80D8;
  if (!qword_2802A80D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A80D8);
  }

  return result;
}

unint64_t sub_268AC1CA0()
{
  result = qword_2802A80E8;
  if (!qword_2802A80E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A80E8);
  }

  return result;
}

unint64_t sub_268AC1CF4()
{
  result = qword_2802A80F8;
  if (!qword_2802A80F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A80F8);
  }

  return result;
}

unint64_t sub_268AC1D48()
{
  result = qword_2802A8100;
  if (!qword_2802A8100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8100);
  }

  return result;
}

unint64_t sub_268AC1D9C()
{
  result = qword_2802A8110;
  if (!qword_2802A8110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8110);
  }

  return result;
}

uint64_t sub_268AC1E28(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_118_1(a1, a2);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  (*(*(v5 - 8) + 8))(v2, v5);
  return v2;
}

unint64_t sub_268AC1E80()
{
  result = qword_2802A8120;
  if (!qword_2802A8120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8120);
  }

  return result;
}

unint64_t sub_268AC1ED4()
{
  result = qword_2802A8130;
  if (!qword_2802A8130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8130);
  }

  return result;
}

unint64_t sub_268AC1F60()
{
  result = qword_2802A8140;
  if (!qword_2802A8140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8140);
  }

  return result;
}

unint64_t sub_268AC1FEC()
{
  result = qword_2802A8150;
  if (!qword_2802A8150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8150);
  }

  return result;
}

unint64_t sub_268AC2078()
{
  result = qword_2802A8158;
  if (!qword_2802A8158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8158);
  }

  return result;
}

unint64_t sub_268AC20CC()
{
  result = qword_2802A8168;
  if (!qword_2802A8168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8168);
  }

  return result;
}

unint64_t sub_268AC2120()
{
  result = qword_2802A8178;
  if (!qword_2802A8178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8178);
  }

  return result;
}

unint64_t sub_268AC2174()
{
  result = qword_2802A8188;
  if (!qword_2802A8188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8188);
  }

  return result;
}

unint64_t sub_268AC2200()
{
  result = qword_2802A8198;
  if (!qword_2802A8198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8198);
  }

  return result;
}

unint64_t sub_268AC228C()
{
  result = qword_2802A81A8;
  if (!qword_2802A81A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A81A8);
  }

  return result;
}

unint64_t sub_268AC22E0()
{
  result = qword_2802A81B8;
  if (!qword_2802A81B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A81B8);
  }

  return result;
}

unint64_t sub_268AC2334()
{
  result = qword_2802A81C8;
  if (!qword_2802A81C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A81C8);
  }

  return result;
}

unint64_t sub_268AC2388()
{
  result = qword_2802A81D8;
  if (!qword_2802A81D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A81D8);
  }

  return result;
}

unint64_t sub_268AC23DC()
{
  result = qword_2802A81E8;
  if (!qword_2802A81E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A81E8);
  }

  return result;
}

unint64_t sub_268AC2430()
{
  result = qword_2802A81F8;
  if (!qword_2802A81F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A81F8);
  }

  return result;
}

unint64_t sub_268AC2484()
{
  result = qword_2802A8208;
  if (!qword_2802A8208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8208);
  }

  return result;
}

unint64_t sub_268AC2510()
{
  result = qword_2802A8218;
  if (!qword_2802A8218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8218);
  }

  return result;
}

unint64_t sub_268AC259C()
{
  result = qword_2802A8228;
  if (!qword_2802A8228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8228);
  }

  return result;
}

unint64_t sub_268AC25F0()
{
  result = qword_2802A8238;
  if (!qword_2802A8238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8238);
  }

  return result;
}

unint64_t sub_268AC2644()
{
  result = qword_2802A8248;
  if (!qword_2802A8248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8248);
  }

  return result;
}

unint64_t sub_268AC26D0()
{
  result = qword_2802A8250;
  if (!qword_2802A8250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8250);
  }

  return result;
}

unint64_t sub_268AC2724()
{
  result = qword_2802A8260;
  if (!qword_2802A8260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8260);
  }

  return result;
}

unint64_t sub_268AC27B0()
{
  result = qword_2802A8270;
  if (!qword_2802A8270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8270);
  }

  return result;
}

unint64_t sub_268AC283C()
{
  result = qword_2802A8280;
  if (!qword_2802A8280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8280);
  }

  return result;
}

unint64_t sub_268AC28C8()
{
  result = qword_2802A8290;
  if (!qword_2802A8290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8290);
  }

  return result;
}

unint64_t sub_268AC2954()
{
  result = qword_2802A82A0;
  if (!qword_2802A82A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A82A0);
  }

  return result;
}

unint64_t sub_268AC29A8()
{
  result = qword_2802A82B0;
  if (!qword_2802A82B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A82B0);
  }

  return result;
}

unint64_t sub_268AC29FC()
{
  result = qword_2802A82C0;
  if (!qword_2802A82C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A82C0);
  }

  return result;
}

unint64_t sub_268AC2A88()
{
  result = qword_2802A82D0;
  if (!qword_2802A82D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A82D0);
  }

  return result;
}

unint64_t sub_268AC2ADC()
{
  result = qword_2802A82E0;
  if (!qword_2802A82E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A82E0);
  }

  return result;
}

unint64_t sub_268AC2B30()
{
  result = qword_2802A82F0;
  if (!qword_2802A82F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A82F0);
  }

  return result;
}

unint64_t sub_268AC2BBC()
{
  result = qword_2802A8300;
  if (!qword_2802A8300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8300);
  }

  return result;
}

unint64_t sub_268AC2C10()
{
  result = qword_2802A8310;
  if (!qword_2802A8310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8310);
  }

  return result;
}

unint64_t sub_268AC2C64()
{
  result = qword_2802A8320;
  if (!qword_2802A8320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8320);
  }

  return result;
}

unint64_t sub_268AC2CB8()
{
  result = qword_2802A8330;
  if (!qword_2802A8330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8330);
  }

  return result;
}

unint64_t sub_268AC2D44()
{
  result = qword_2802A8378;
  if (!qword_2802A8378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8378);
  }

  return result;
}

unint64_t sub_268AC2D98()
{
  result = qword_2802A83B8;
  if (!qword_2802A83B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A83B8);
  }

  return result;
}

unint64_t sub_268AC2DEC()
{
  result = qword_2802A8448;
  if (!qword_2802A8448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8448);
  }

  return result;
}

unint64_t sub_268AC2E40()
{
  result = qword_2802A8450;
  if (!qword_2802A8450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8450);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DialogProvider.ResumeParameters.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFB)
  {
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

    v5 = (*a1 | (v4 << 8)) - 6;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v5 = v6 - 6;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for DialogProvider.ResumeParameters.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x268AC3094);
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

uint64_t sub_268AC3238(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_46_8(-1);
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return OUTLINED_FUNCTION_46_8((*a1 | (v4 << 8)) - 7);
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

      return OUTLINED_FUNCTION_46_8((*a1 | (v4 << 8)) - 7);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_46_8((*a1 | (v4 << 8)) - 7);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_46_8(v8);
}

_BYTE *sub_268AC32BC(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    switch(v5)
    {
      case 1:
        result = OUTLINED_FUNCTION_81_1(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_79_4(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x268AC3378);
      case 4:
        result = OUTLINED_FUNCTION_80_4(result, v6);
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
          result = OUTLINED_FUNCTION_56_5(result, a2 + 6);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_268AC33F0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_46_8(-1);
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return OUTLINED_FUNCTION_46_8((*a1 | (v4 << 8)) - 9);
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

      return OUTLINED_FUNCTION_46_8((*a1 | (v4 << 8)) - 9);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_46_8((*a1 | (v4 << 8)) - 9);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_46_8(v8);
}

_BYTE *sub_268AC3474(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_81_1(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_79_4(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x268AC3530);
      case 4:
        result = OUTLINED_FUNCTION_80_4(result, v6);
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
          result = OUTLINED_FUNCTION_56_5(result, a2 + 8);
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_268AC3598(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_81_1(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_79_4(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x268AC3654);
      case 4:
        result = OUTLINED_FUNCTION_80_4(result, v6);
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
          result = OUTLINED_FUNCTION_56_5(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_268AC36B4(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_46_8(-1);
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
      return OUTLINED_FUNCTION_46_8((*a1 | (v4 << 8)) - 3);
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

      return OUTLINED_FUNCTION_46_8((*a1 | (v4 << 8)) - 3);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_46_8((*a1 | (v4 << 8)) - 3);
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

  return OUTLINED_FUNCTION_46_8(v8);
}

_BYTE *sub_268AC3738(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_81_1(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_79_4(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x268AC37F4);
      case 4:
        result = OUTLINED_FUNCTION_80_4(result, v6);
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
          result = OUTLINED_FUNCTION_56_5(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_268AC3828(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_46_8(-1);
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return OUTLINED_FUNCTION_46_8((*a1 | (v4 << 8)) - 8);
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

      return OUTLINED_FUNCTION_46_8((*a1 | (v4 << 8)) - 8);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_46_8((*a1 | (v4 << 8)) - 8);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_46_8(v8);
}

_BYTE *sub_268AC38AC(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_81_1(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_79_4(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x268AC3968);
      case 4:
        result = OUTLINED_FUNCTION_80_4(result, v6);
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
          result = OUTLINED_FUNCTION_56_5(result, a2 + 7);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_268AC39A0()
{
  result = qword_2802A8480;
  if (!qword_2802A8480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8480);
  }

  return result;
}

unint64_t sub_268AC39F8()
{
  result = qword_2802A8488;
  if (!qword_2802A8488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8488);
  }

  return result;
}

unint64_t sub_268AC3A50()
{
  result = qword_2802A8490;
  if (!qword_2802A8490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8490);
  }

  return result;
}

unint64_t sub_268AC3AA8()
{
  result = qword_2802A8498;
  if (!qword_2802A8498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8498);
  }

  return result;
}

unint64_t sub_268AC3B00()
{
  result = qword_2802A84A0;
  if (!qword_2802A84A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A84A0);
  }

  return result;
}

unint64_t sub_268AC3B58()
{
  result = qword_2802A84A8;
  if (!qword_2802A84A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A84A8);
  }

  return result;
}

unint64_t sub_268AC3BB0()
{
  result = qword_2802A84B0;
  if (!qword_2802A84B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A84B0);
  }

  return result;
}

unint64_t sub_268AC3C08()
{
  result = qword_2802A84B8;
  if (!qword_2802A84B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A84B8);
  }

  return result;
}

unint64_t sub_268AC3C60()
{
  result = qword_2802A84C0;
  if (!qword_2802A84C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A84C0);
  }

  return result;
}

unint64_t sub_268AC3CB8()
{
  result = qword_2802A84C8;
  if (!qword_2802A84C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A84C8);
  }

  return result;
}

unint64_t sub_268AC3D10()
{
  result = qword_2802A84D0;
  if (!qword_2802A84D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A84D0);
  }

  return result;
}

unint64_t sub_268AC3D68()
{
  result = qword_2802A84D8;
  if (!qword_2802A84D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A84D8);
  }

  return result;
}

unint64_t sub_268AC3DC0()
{
  result = qword_2802A84E0;
  if (!qword_2802A84E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A84E0);
  }

  return result;
}

unint64_t sub_268AC3E18()
{
  result = qword_2802A84E8;
  if (!qword_2802A84E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A84E8);
  }

  return result;
}

unint64_t sub_268AC3E70()
{
  result = qword_2802A84F0;
  if (!qword_2802A84F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A84F0);
  }

  return result;
}

unint64_t sub_268AC3EC8()
{
  result = qword_2802A84F8;
  if (!qword_2802A84F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A84F8);
  }

  return result;
}

unint64_t sub_268AC3F20()
{
  result = qword_2802A8500;
  if (!qword_2802A8500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8500);
  }

  return result;
}

unint64_t sub_268AC3F78()
{
  result = qword_2802A8508;
  if (!qword_2802A8508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8508);
  }

  return result;
}

unint64_t sub_268AC3FD0()
{
  result = qword_2802A8510;
  if (!qword_2802A8510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8510);
  }

  return result;
}

unint64_t sub_268AC4028()
{
  result = qword_2802A8518;
  if (!qword_2802A8518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8518);
  }

  return result;
}

unint64_t sub_268AC4080()
{
  result = qword_2802A8520;
  if (!qword_2802A8520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8520);
  }

  return result;
}

unint64_t sub_268AC40D8()
{
  result = qword_2802A8528;
  if (!qword_2802A8528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8528);
  }

  return result;
}

unint64_t sub_268AC4130()
{
  result = qword_2802A8530;
  if (!qword_2802A8530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8530);
  }

  return result;
}

unint64_t sub_268AC4188()
{
  result = qword_2802A8538;
  if (!qword_2802A8538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8538);
  }

  return result;
}

unint64_t sub_268AC41E0()
{
  result = qword_2802A8540;
  if (!qword_2802A8540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8540);
  }

  return result;
}

unint64_t sub_268AC4238()
{
  result = qword_2802A8548;
  if (!qword_2802A8548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8548);
  }

  return result;
}

unint64_t sub_268AC4290()
{
  result = qword_2802A8550;
  if (!qword_2802A8550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8550);
  }

  return result;
}

unint64_t sub_268AC42E8()
{
  result = qword_2802A8558;
  if (!qword_2802A8558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8558);
  }

  return result;
}

unint64_t sub_268AC4340()
{
  result = qword_2802A8560;
  if (!qword_2802A8560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8560);
  }

  return result;
}

unint64_t sub_268AC4398()
{
  result = qword_2802A8568;
  if (!qword_2802A8568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8568);
  }

  return result;
}

unint64_t sub_268AC43F0()
{
  result = qword_2802A8570;
  if (!qword_2802A8570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8570);
  }

  return result;
}

unint64_t sub_268AC4448()
{
  result = qword_2802A8578;
  if (!qword_2802A8578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8578);
  }

  return result;
}

unint64_t sub_268AC44A0()
{
  result = qword_2802A8580;
  if (!qword_2802A8580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8580);
  }

  return result;
}

unint64_t sub_268AC44F8()
{
  result = qword_2802A8588;
  if (!qword_2802A8588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8588);
  }

  return result;
}

unint64_t sub_268AC4550()
{
  result = qword_2802A8590;
  if (!qword_2802A8590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8590);
  }

  return result;
}

unint64_t sub_268AC45A8()
{
  result = qword_2802A8598;
  if (!qword_2802A8598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8598);
  }

  return result;
}

unint64_t sub_268AC4600()
{
  result = qword_2802A85A0;
  if (!qword_2802A85A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A85A0);
  }

  return result;
}

unint64_t sub_268AC4658()
{
  result = qword_2802A85A8;
  if (!qword_2802A85A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A85A8);
  }

  return result;
}

unint64_t sub_268AC46B0()
{
  result = qword_2802A85B0;
  if (!qword_2802A85B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A85B0);
  }

  return result;
}

unint64_t sub_268AC4708()
{
  result = qword_2802A85B8;
  if (!qword_2802A85B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A85B8);
  }

  return result;
}

unint64_t sub_268AC4760()
{
  result = qword_2802A85C0;
  if (!qword_2802A85C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A85C0);
  }

  return result;
}

unint64_t sub_268AC47B8()
{
  result = qword_2802A85C8;
  if (!qword_2802A85C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A85C8);
  }

  return result;
}

unint64_t sub_268AC4810()
{
  result = qword_2802A85D0;
  if (!qword_2802A85D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A85D0);
  }

  return result;
}

unint64_t sub_268AC4868()
{
  result = qword_2802A85D8;
  if (!qword_2802A85D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A85D8);
  }

  return result;
}

unint64_t sub_268AC48C0()
{
  result = qword_2802A85E0;
  if (!qword_2802A85E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A85E0);
  }

  return result;
}

unint64_t sub_268AC4918()
{
  result = qword_2802A85E8;
  if (!qword_2802A85E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A85E8);
  }

  return result;
}

unint64_t sub_268AC4970()
{
  result = qword_2802A85F0;
  if (!qword_2802A85F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A85F0);
  }

  return result;
}

unint64_t sub_268AC49C8()
{
  result = qword_2802A85F8;
  if (!qword_2802A85F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A85F8);
  }

  return result;
}

unint64_t sub_268AC4A20()
{
  result = qword_2802A8600;
  if (!qword_2802A8600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8600);
  }

  return result;
}

unint64_t sub_268AC4A78()
{
  result = qword_2802A8608;
  if (!qword_2802A8608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8608);
  }

  return result;
}

unint64_t sub_268AC4AD0()
{
  result = qword_2802A8610;
  if (!qword_2802A8610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8610);
  }

  return result;
}

unint64_t sub_268AC4B28()
{
  result = qword_2802A8618;
  if (!qword_2802A8618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8618);
  }

  return result;
}

unint64_t sub_268AC4B80()
{
  result = qword_2802A8620;
  if (!qword_2802A8620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8620);
  }

  return result;
}

unint64_t sub_268AC4BD8()
{
  result = qword_2802A8628;
  if (!qword_2802A8628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8628);
  }

  return result;
}

unint64_t sub_268AC4C30()
{
  result = qword_2802A8630;
  if (!qword_2802A8630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8630);
  }

  return result;
}

unint64_t sub_268AC4C88()
{
  result = qword_2802A8638;
  if (!qword_2802A8638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8638);
  }

  return result;
}

unint64_t sub_268AC4CE0()
{
  result = qword_2802A8640;
  if (!qword_2802A8640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8640);
  }

  return result;
}

unint64_t sub_268AC4D38()
{
  result = qword_2802A8648;
  if (!qword_2802A8648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8648);
  }

  return result;
}

unint64_t sub_268AC4D90()
{
  result = qword_2802A8650;
  if (!qword_2802A8650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8650);
  }

  return result;
}

unint64_t sub_268AC4DE8()
{
  result = qword_2802A8658;
  if (!qword_2802A8658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8658);
  }

  return result;
}

unint64_t sub_268AC4E40()
{
  result = qword_2802A8660;
  if (!qword_2802A8660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8660);
  }

  return result;
}

unint64_t sub_268AC4E98()
{
  result = qword_2802A8668;
  if (!qword_2802A8668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8668);
  }

  return result;
}

unint64_t sub_268AC4EF0()
{
  result = qword_2802A8670;
  if (!qword_2802A8670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8670);
  }

  return result;
}

unint64_t sub_268AC4F48()
{
  result = qword_2802A8678;
  if (!qword_2802A8678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8678);
  }

  return result;
}

unint64_t sub_268AC4FA0()
{
  result = qword_2802A8680;
  if (!qword_2802A8680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8680);
  }

  return result;
}

unint64_t sub_268AC4FF8()
{
  result = qword_2802A8688;
  if (!qword_2802A8688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8688);
  }

  return result;
}

unint64_t sub_268AC5050()
{
  result = qword_2802A8690;
  if (!qword_2802A8690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8690);
  }

  return result;
}

unint64_t sub_268AC50A8()
{
  result = qword_2802A8698;
  if (!qword_2802A8698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8698);
  }

  return result;
}

unint64_t sub_268AC5100()
{
  result = qword_2802A86A0;
  if (!qword_2802A86A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A86A0);
  }

  return result;
}

unint64_t sub_268AC5158()
{
  result = qword_2802A86A8;
  if (!qword_2802A86A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A86A8);
  }

  return result;
}

unint64_t sub_268AC51B0()
{
  result = qword_2802A86B0;
  if (!qword_2802A86B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A86B0);
  }

  return result;
}

unint64_t sub_268AC5208()
{
  result = qword_2802A86B8;
  if (!qword_2802A86B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A86B8);
  }

  return result;
}

unint64_t sub_268AC5260()
{
  result = qword_2802A86C0;
  if (!qword_2802A86C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A86C0);
  }

  return result;
}

unint64_t sub_268AC52B8()
{
  result = qword_2802A86C8;
  if (!qword_2802A86C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A86C8);
  }

  return result;
}

unint64_t sub_268AC5310()
{
  result = qword_2802A86D0;
  if (!qword_2802A86D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A86D0);
  }

  return result;
}

unint64_t sub_268AC5368()
{
  result = qword_2802A86D8;
  if (!qword_2802A86D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A86D8);
  }

  return result;
}

unint64_t sub_268AC53C0()
{
  result = qword_2802A86E0;
  if (!qword_2802A86E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A86E0);
  }

  return result;
}

unint64_t sub_268AC5418()
{
  result = qword_2802A86E8;
  if (!qword_2802A86E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A86E8);
  }

  return result;
}

unint64_t sub_268AC5470()
{
  result = qword_2802A86F0;
  if (!qword_2802A86F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A86F0);
  }

  return result;
}

unint64_t sub_268AC54C8()
{
  result = qword_2802A86F8;
  if (!qword_2802A86F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A86F8);
  }

  return result;
}

unint64_t sub_268AC5520()
{
  result = qword_2802A8700;
  if (!qword_2802A8700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8700);
  }

  return result;
}

unint64_t sub_268AC5578()
{
  result = qword_2802A8708;
  if (!qword_2802A8708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8708);
  }

  return result;
}

unint64_t sub_268AC55D0()
{
  result = qword_2802A8710;
  if (!qword_2802A8710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8710);
  }

  return result;
}

unint64_t sub_268AC5628()
{
  result = qword_2802A8718;
  if (!qword_2802A8718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8718);
  }

  return result;
}

unint64_t sub_268AC5680()
{
  result = qword_2802A8720;
  if (!qword_2802A8720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8720);
  }

  return result;
}

unint64_t sub_268AC56D8()
{
  result = qword_2802A8728;
  if (!qword_2802A8728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8728);
  }

  return result;
}

unint64_t sub_268AC5730()
{
  result = qword_2802A8730;
  if (!qword_2802A8730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8730);
  }

  return result;
}

unint64_t sub_268AC5788()
{
  result = qword_2802A8738;
  if (!qword_2802A8738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8738);
  }

  return result;
}

unint64_t sub_268AC57E0()
{
  result = qword_2802A8740;
  if (!qword_2802A8740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8740);
  }

  return result;
}

unint64_t sub_268AC5838()
{
  result = qword_2802A8748;
  if (!qword_2802A8748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8748);
  }

  return result;
}

unint64_t sub_268AC5890()
{
  result = qword_2802A8750;
  if (!qword_2802A8750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8750);
  }

  return result;
}

unint64_t sub_268AC58E8()
{
  result = qword_2802A8758;
  if (!qword_2802A8758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8758);
  }

  return result;
}

unint64_t sub_268AC5940()
{
  result = qword_2802A8760;
  if (!qword_2802A8760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8760);
  }

  return result;
}

unint64_t sub_268AC5998()
{
  result = qword_2802A8768;
  if (!qword_2802A8768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8768);
  }

  return result;
}

unint64_t sub_268AC59F0()
{
  result = qword_2802A8770;
  if (!qword_2802A8770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8770);
  }

  return result;
}

unint64_t sub_268AC5A48()
{
  result = qword_2802A8778;
  if (!qword_2802A8778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8778);
  }

  return result;
}

unint64_t sub_268AC5AA0()
{
  result = qword_2802A8780;
  if (!qword_2802A8780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8780);
  }

  return result;
}

unint64_t sub_268AC5AF8()
{
  result = qword_2802A8788;
  if (!qword_2802A8788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8788);
  }

  return result;
}

unint64_t sub_268AC5B50()
{
  result = qword_2802A8790;
  if (!qword_2802A8790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8790);
  }

  return result;
}

unint64_t sub_268AC5BA8()
{
  result = qword_2802A8798;
  if (!qword_2802A8798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8798);
  }

  return result;
}

unint64_t sub_268AC5C00()
{
  result = qword_2802A87A0;
  if (!qword_2802A87A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A87A0);
  }

  return result;
}

unint64_t sub_268AC5C58()
{
  result = qword_2802A87A8;
  if (!qword_2802A87A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A87A8);
  }

  return result;
}

unint64_t sub_268AC5CB0()
{
  result = qword_2802A87B0;
  if (!qword_2802A87B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A87B0);
  }

  return result;
}

unint64_t sub_268AC5D08()
{
  result = qword_2802A87B8;
  if (!qword_2802A87B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A87B8);
  }

  return result;
}

unint64_t sub_268AC5D60()
{
  result = qword_2802A87C0;
  if (!qword_2802A87C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A87C0);
  }

  return result;
}

unint64_t sub_268AC5DB8()
{
  result = qword_2802A87C8;
  if (!qword_2802A87C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A87C8);
  }

  return result;
}

unint64_t sub_268AC5E10()
{
  result = qword_2802A87D0;
  if (!qword_2802A87D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A87D0);
  }

  return result;
}

unint64_t sub_268AC5E68()
{
  result = qword_2802A87D8;
  if (!qword_2802A87D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A87D8);
  }

  return result;
}

unint64_t sub_268AC5EC0()
{
  result = qword_2802A87E0;
  if (!qword_2802A87E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A87E0);
  }

  return result;
}

unint64_t sub_268AC5F18()
{
  result = qword_2802A87E8;
  if (!qword_2802A87E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A87E8);
  }

  return result;
}

unint64_t sub_268AC5F70()
{
  result = qword_2802A87F0;
  if (!qword_2802A87F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A87F0);
  }

  return result;
}

unint64_t sub_268AC5FC8()
{
  result = qword_2802A87F8;
  if (!qword_2802A87F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A87F8);
  }

  return result;
}

unint64_t sub_268AC6020()
{
  result = qword_2802A8800;
  if (!qword_2802A8800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8800);
  }

  return result;
}

unint64_t sub_268AC6078()
{
  result = qword_2802A8808;
  if (!qword_2802A8808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8808);
  }

  return result;
}

unint64_t sub_268AC60CC()
{
  result = qword_2802A8810;
  if (!qword_2802A8810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8810);
  }

  return result;
}

unint64_t sub_268AC6120()
{
  result = qword_2802A8818;
  if (!qword_2802A8818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8818);
  }

  return result;
}

unint64_t sub_268AC6174()
{
  result = qword_2802A8828;
  if (!qword_2802A8828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8828);
  }

  return result;
}

unint64_t sub_268AC61C8()
{
  result = qword_2802A8830;
  if (!qword_2802A8830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8830);
  }

  return result;
}

_BYTE *sub_268AC621C(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x268AC62B8);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_268AC62F4()
{
  result = qword_2802A8840;
  if (!qword_2802A8840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8840);
  }

  return result;
}

unint64_t sub_268AC634C()
{
  result = qword_2802A8848;
  if (!qword_2802A8848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8848);
  }

  return result;
}

unint64_t sub_268AC63A4()
{
  result = qword_2802A8850;
  if (!qword_2802A8850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8850);
  }

  return result;
}

uint64_t sub_268AC6434()
{
  v0 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_132_1();
  v1 = *MEMORY[0x277D85DE8];

  return sub_268AB3F14();
}

uint64_t sub_268AC6488()
{
  v0 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_132_1();
  v1 = *MEMORY[0x277D85DE8];

  return sub_268ABAEA4();
}

uint64_t sub_268AC64DC()
{
  v0 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_132_1();
  v1 = *MEMORY[0x277D85DE8];

  return sub_268ABB0EC();
}

uint64_t sub_268AC6530()
{
  v0 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_132_1();
  v1 = *MEMORY[0x277D85DE8];

  return sub_268ABC88C();
}

uint64_t sub_268AC6584()
{
  v0 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_132_1();
  v1 = *MEMORY[0x277D85DE8];

  return sub_268ABD570();
}

void OUTLINED_FUNCTION_0_49()
{
  *(v0 + 120) = 0;
  *(v0 + 128) = 0;
  *(v0 + 80) = 0;
  *(v0 + 88) = 0;
  *(v0 + 72) = 0;
  *(v1 - 72) = 0;
  *(v0 + 96) = 0;
  *(v0 + 140) = 0;
}

double OUTLINED_FUNCTION_3_43()
{
  v1 = *(v0 + 392);
  *(v0 + 40) = *(v0 + 400);
  *(v0 + 48) = v1;
  *(v0 + 36) = *(v0 + 408);
  *(v0 + 240) = 0;
  *(v0 + 248) = 0;
  *(v0 + 256) = 1;
  result = 0.0;
  *(v0 + 264) = 0u;
  *(v0 + 280) = 0u;
  *(v0 + 296) = 0u;
  *(v0 + 305) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_13_21()
{
  v3 = *(v0 + 2);
  *(v1 - 264) = 2;

  return sub_268B383B4();
}

uint64_t OUTLINED_FUNCTION_14_23()
{
  v3 = *(v0 + 1);
  *(v1 - 264) = 1;

  return sub_268B383B4();
}

uint64_t OUTLINED_FUNCTION_16_29()
{
  *(v0 + 96) = v1;
  v4 = *(v2 + 8);
  return v3;
}

void OUTLINED_FUNCTION_23_20()
{
  v2 = *(v0 + 40);
  *(v1 - 120) = *(v0 + 48);
  *(v1 - 112) = v2;
  *(v1 - 104) = *(v0 + 36);
  *(v1 - 103) = *(v0 + 12);
}

void OUTLINED_FUNCTION_24_17()
{
  v1 = *(v0 + 40);
  *(v0 + 216) = *(v0 + 48);
  *(v0 + 224) = v1;
  *(v0 + 232) = *(v0 + 36);
  *(v0 + 233) = *(v0 + 12);
}

void OUTLINED_FUNCTION_26_16()
{
  v2 = *(v1 - 168);
  *(v1 - 72) = *(v1 - 176);
  v3 = *(v1 - 160);
  *(v0 + 120) = *(v1 - 152);
  *(v0 + 128) = v2;
  v4 = *(v1 - 144);
  *(v0 + 56) = *(v1 - 136);
  *(v0 + 64) = v3;
  v6 = *(v1 - 128);
  v5 = *(v1 - 120);
  v7 = *(v1 - 104);
  *(v0 + 80) = *(v1 - 112);
  *(v0 + 88) = v4;
  *(v0 + 76) = *(v1 - 96);
}

void OUTLINED_FUNCTION_29_15()
{
  *(v1 - 72) = 0;
  *(v0 + 120) = 0;
  *(v0 + 128) = 0;
}

void OUTLINED_FUNCTION_30_16()
{
  *(v0 + 80) = 0;
  *(v0 + 88) = 0;
  *(v0 + 48) = 0;
  *(v0 + 64) = 0;
  *(v1 - 72) = 0;
  *(v0 + 104) = 0;
  *(v0 + 100) = 0;
}

void OUTLINED_FUNCTION_31_18()
{
  *(v0 + 136) = v2;
  *(v0 + 137) = v3;
  *(v0 + 138) = v1;
  v5 = *(v0 + 120);
  v6 = *(v0 + 128);
  *(v0 + 144) = *(v4 - 72);
  *(v0 + 152) = v6;
  v7 = *(v0 + 56);
  *(v0 + 160) = *(v0 + 64);
  *(v0 + 168) = v5;
  v8 = *(v0 + 80);
  *(v0 + 176) = *(v0 + 88);
  *(v0 + 184) = v7;
}

uint64_t OUTLINED_FUNCTION_34_12()
{
  *(v9 - 192) = v1;
  *(v9 - 191) = v4;
  *(v9 - 190) = v2;
  *(v0 + 419) = *(v9 - 96);
  *(v9 - 185) = *(v9 - 92);
  v10 = *(v0 + 112);
  *(v9 - 184) = *(v0 + 120);
  *(v9 - 176) = v10;
  v11 = *(v0 + 72);
  v12 = *(v0 + 80);
  *(v9 - 168) = v5;
  *(v9 - 160) = v11;
  v13 = *(v0 + 104);
  *(v9 - 152) = v12;
  *(v9 - 144) = v13;
  v14 = *(v0 + 136);
  *(v9 - 136) = *(v9 - 72);
  *(v9 - 128) = v14;
  *(v9 - 120) = v6;
  *(v9 - 112) = v7;
  *(v9 - 104) = v3;
  *(v9 - 103) = v8;
  LODWORD(v14) = *(v0 + 128);
  *(v9 - 102) = *(v0 + 132);
  *(v9 - 101) = v14;
  return v9 - 192;
}

uint64_t OUTLINED_FUNCTION_36_11()
{
  *(v9 - 192) = v1;
  *(v9 - 191) = v4;
  *(v9 - 190) = v3;
  *(v0 + 419) = *(v9 - 96);
  *(v9 - 185) = *(v9 - 92);
  v10 = *(v0 + 120);
  *(v9 - 184) = *(v0 + 128);
  *(v9 - 176) = v10;
  v12 = *(v0 + 80);
  v11 = *(v0 + 88);
  *(v9 - 168) = v2;
  *(v9 - 160) = v11;
  v13 = *(v0 + 72);
  *(v9 - 152) = v12;
  *(v9 - 144) = v13;
  v14 = *(v0 + 96);
  *(v9 - 136) = *(v9 - 72);
  *(v9 - 128) = v14;
  *(v9 - 120) = v8;
  *(v9 - 112) = v5;
  *(v9 - 104) = v7;
  *(v9 - 103) = v6;
  *(v9 - 102) = *(v0 + 140);
  return v9 - 192;
}

uint64_t OUTLINED_FUNCTION_37_15()
{
  *(v0 + 240) = *(v0 + 44);
  *(v0 + 241) = *v0;
  *(v0 + 242) = *(v0 + 96);
  *(v0 + 248) = v5;
  *(v0 + 256) = v6;
  *(v0 + 264) = *(v0 + 64);
  *(v0 + 272) = v4;
  v9 = *(v0 + 80);
  *(v0 + 280) = *(v0 + 88);
  *(v0 + 288) = v8;
  *(v0 + 296) = v7;
  *(v0 + 304) = v3;
  v10 = *(v0 + 16);
  *(v0 + 312) = v9;
  *(v0 + 320) = v10;
  *(v0 + 328) = *(v0 + 76);
  *(v0 + 329) = *(v0 + 100);
  *(v0 + 330) = v1;
  *(v0 + 331) = v2;
  *(v0 + 336) = *(v0 + 32);
  return v0 + 240;
}

double OUTLINED_FUNCTION_40_10@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 65) = 0u;
  return result;
}

void OUTLINED_FUNCTION_41_6()
{
  *(v0 + 8) = v1 & 1;
  v2 = *(v0 + 64);
  *(v0 + 144) = *(v0 + 68);
  *(v0 + 145) = v2;
}

uint64_t OUTLINED_FUNCTION_47_8()
{
  v5 = *(v2 + 8);
  *(v2 + 192) = v4;
  *(v2 + 200) = v5;
  v6 = *(v2 + 16);
  *(v2 + 208) = v1;
  *(v2 + 216) = v6;
  *(v2 + 224) = *(v2 + 76);
  *(v2 + 225) = *(v2 + 100);
  *(v2 + 226) = v3;
  *(v2 + 227) = *(v2 + 28);
  *(v2 + 232) = v0;
  return v2 + 136;
}

void OUTLINED_FUNCTION_61_5()
{
  v10 = *(v0 + 120);
  v11 = *(v0 + 128);
  *(v0 + 240) = *(v9 - 72);
  *(v0 + 248) = v11;
  *(v0 + 256) = v5;
  *(v0 + 264) = v10;
  *(v0 + 272) = v6;
  *(v0 + 280) = v8;
  *(v0 + 288) = v7;
  *(v0 + 296) = v3;
  *(v0 + 304) = v1;
  *(v0 + 312) = v2;
  *(v0 + 320) = v4;
}

void OUTLINED_FUNCTION_64_7()
{
  v0[11] &= 1u;
  v1 = v0[24];
  v2 = v0[25] & 1;
}

uint64_t OUTLINED_FUNCTION_75_4()
{

  return sub_268B38574();
}

uint64_t OUTLINED_FUNCTION_76_4(uint64_t a1, uint64_t a2)
{
  result = __swift_project_value_buffer(*(v2 - 96), a2);
  v4 = *(*(v2 - 88) + 16);
  return result;
}

void OUTLINED_FUNCTION_78_7(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_79_7()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_80_6()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_84_5()
{
  *(v0 + 52) = v1 & 1;
  *(v0 + 152) = v5;
  *(v0 + 153) = v2;
  *(v0 + 154) = v4;
  v8 = *(v0 + 136);
  v7 = *(v0 + 144);
  *(v0 + 160) = *(v6 - 72);
  *(v0 + 168) = v7;
  *(v0 + 176) = *(v0 + 72);
  *(v0 + 184) = v8;
  v9 = *(v0 + 96);
  *(v0 + 192) = *(v0 + 104);
  *(v0 + 200) = v9;
  v10 = *(v0 + 32);
  *(v0 + 208) = *(v0 + 24);
  *(v0 + 216) = v10;
  v11 = *(v0 + 40);
  *(v0 + 224) = *(v0 + 88);
  *(v0 + 232) = v11;
  *(v0 + 240) = *(v0 + 84);
  *(v0 + 241) = *(v0 + 116);
  *(v0 + 242) = *(v0 + 60);
  *(v0 + 243) = v3;
  *(v0 + 244) = *(v0 + 48);
  *(v0 + 245) = v1 & 1;
  return v0 + 152;
}

void OUTLINED_FUNCTION_86_5()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 68);
  v3 = *(v0 + 60);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v6 = *(v0 + 36);
  v7 = *(v0 + 24);
  v8 = *(v0 + 12);
}

void OUTLINED_FUNCTION_87_4()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 68);
  v3 = *(v0 + 60);
  v4 = *(v0 + 48);
}

void OUTLINED_FUNCTION_88_5()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 68);
  v3 = *(v0 + 60);
  v5 = *(v0 + 40);
  v4 = *(v0 + 48);
  v6 = *(v0 + 36);
  v7 = *(v0 + 24);
  v8 = *(v0 + 12);
}

void OUTLINED_FUNCTION_89_6()
{
  v2 = *(v0 + 136);
  *(v1 - 136) = *(v1 - 72);
  *(v1 - 128) = v2;
}

uint64_t OUTLINED_FUNCTION_90_6@<X0>(char a1@<W8>)
{
  v2 = *(v1 + 128);
  *(v1 + 234) = *(v1 + 132);
  *(v1 + 235) = v2;
  *(v1 + 236) = a1;
  return v1 + 144;
}

void OUTLINED_FUNCTION_91_5()
{
  v2 = *(v0 + 128);
  *(v1 - 102) = *(v0 + 132);
  *(v1 - 101) = v2;
}

uint64_t OUTLINED_FUNCTION_92_6()
{

  return sub_268B38584();
}

void OUTLINED_FUNCTION_93_7()
{
  v0[19] = v3;
  v0[20] = v1;
  v0[21] = v0[3];
  v0[22] = v2;
}

void OUTLINED_FUNCTION_94_6()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = *(v0 + 36);
  v4 = *(v0 + 24);
}

uint64_t OUTLINED_FUNCTION_96_5()
{
  v9 = *(v0 + 12);
  *(v0 + 248) = *(v0 + 16);
  *(v0 + 249) = v9;
  *(v0 + 250) = *(v0 + 56);
  *(v0 + 256) = v4;
  *(v0 + 264) = v5;
  *(v0 + 272) = *(v0 + 72);
  *(v0 + 280) = v6;
  v10 = *(v0 + 96);
  *(v0 + 288) = *(v0 + 104);
  *(v0 + 296) = v10;
  *(v0 + 304) = v8;
  *(v0 + 312) = v7;
  *(v0 + 320) = *(v0 + 88);
  *(v0 + 328) = v2;
  *(v0 + 336) = *(v0 + 84);
  *(v0 + 337) = *(v0 + 116);
  *(v0 + 338) = *(v0 + 60);
  *(v0 + 339) = v3;
  *(v0 + 340) = v1;
  *(v0 + 341) = *(v0 + 52);
  return v0 + 248;
}

uint64_t OUTLINED_FUNCTION_97_4@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  *(v10 - 88) = a1;

  return sub_26890C900(v9 + 16, va);
}

unint64_t OUTLINED_FUNCTION_98_3(char a1)
{
  *(v1 + 60) = a1 & 1;
  *(v1 + 327) = 3;

  return sub_268A356BC();
}

uint64_t OUTLINED_FUNCTION_99_5()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_113_2()
{
  *(v1 - 102) = *(v0 + 140);
  *(v1 - 101) = *(v0 + 8);
  return v1 - 192;
}

uint64_t OUTLINED_FUNCTION_119_1@<X0>(char a1@<W8>)
{
  *(v1 + 234) = *(v1 + 140);
  *(v1 + 235) = a1;
  return v1 + 144;
}

void OUTLINED_FUNCTION_124_0()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
}

id OUTLINED_FUNCTION_134_1(int a1, const char *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{

  return [v12 a2];
}

uint64_t OUTLINED_FUNCTION_138_1(uint64_t *a1)
{
  result = __swift_destroy_boxed_opaque_existential_0Tm(a1);
  *(v3 - 192) = v1;
  *(v3 - 191) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_145_1@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 96) = a1;

  return sub_26890C900(v1 + 16, v2 - 136);
}

void *OUTLINED_FUNCTION_150_0()
{

  return memcpy((v0 - 240), (v0 - 152), 0x51uLL);
}

unint64_t OUTLINED_FUNCTION_151_1()
{
  *(v1 - 280) = *(v0 + 96);
  *(v1 - 66) = 7;

  return sub_268AC2078();
}

void OUTLINED_FUNCTION_152_1()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[7];
}

void OUTLINED_FUNCTION_153_1()
{
  v10 = *(v0 + 136);
  v11 = *(v0 + 144);
  *(v0 + 248) = *(v9 - 72);
  *(v0 + 256) = v11;
  *(v0 + 264) = v5;
  *(v0 + 272) = v10;
  *(v0 + 280) = v6;
  *(v0 + 288) = v3;
  *(v0 + 296) = v8;
  *(v0 + 304) = v7;
  *(v0 + 312) = v1;
  *(v0 + 320) = v2;
  *(v0 + 328) = v4;
}

uint64_t OUTLINED_FUNCTION_158_1()
{
  v2 = *(v0 - 96);

  return sub_268B38364();
}

uint64_t OUTLINED_FUNCTION_166_0(uint64_t a1, uint64_t a2, int a3, uint64_t *a4, uint64_t *a5)
{
  *(v6 - 96) = v5;
  *(v6 - 100) = a3;

  return __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
}

uint64_t OUTLINED_FUNCTION_167_1()
{
  result = __swift_destroy_boxed_opaque_existential_0Tm((v0 - 136));
  v2 = *(v0 - 96);
  return result;
}

unint64_t OUTLINED_FUNCTION_168_1(int a1)
{
  *(v1 + 4) = a1;
  *(v1 + 8) = v3;
  *(v1 + 16) = v2;
  *(v1 + 351) = 7;

  return sub_268AC2D44();
}

uint64_t OUTLINED_FUNCTION_172_1()
{

  return sub_268B344D4();
}

unint64_t OUTLINED_FUNCTION_177_0(int a1)
{
  *(v1 + 96) = a1;
  *(v1 + 100) = v2;
  *(v3 - 177) = 3;

  return sub_268A356BC();
}

void OUTLINED_FUNCTION_179_1()
{
  *(v3 - 184) = v2;
  *(v3 - 176) = v1;
  v4 = *(v0 + 24);
}

double OUTLINED_FUNCTION_182_1(uint64_t a1)
{
  result = 0.0;
  *(a1 + 72) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 8) = 0u;
  return result;
}

double OUTLINED_FUNCTION_183_1@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 2) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_184_1()
{
  v2 = *(v0 - 72);
  *(v0 - 82) = 1;

  return sub_268B38344();
}

uint64_t OUTLINED_FUNCTION_185_1()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_188_1()
{

  return sub_268B380E4();
}

void OUTLINED_FUNCTION_189_1()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 36);
  v3 = *(v0 + 24);
}

uint64_t OUTLINED_FUNCTION_204_1()
{

  return sub_268B380E4();
}

void *OUTLINED_FUNCTION_206_1()
{

  return memcpy((v1 - 152), v0, 0x51uLL);
}

void *OUTLINED_FUNCTION_207_1()
{
  v2 = *(v0 + 48);

  return memcpy(v2, (v0 + 136), 0x68uLL);
}

uint64_t OUTLINED_FUNCTION_208_1()
{

  return sub_268B34514();
}

void OUTLINED_FUNCTION_216_1()
{
  v1 = v0[12];
  v2 = v0[13];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[11];
  v6 = v0[5];
}

id OUTLINED_FUNCTION_224_1(int a1, const char *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{

  return [v11 a2];
}

id OUTLINED_FUNCTION_225_0(int a1, const char *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{

  return [v11 a2];
}

uint64_t OUTLINED_FUNCTION_226_1()
{

  return sub_268B344D4();
}

id sub_268AC76C4(_BYTE *a1)
{
  sub_268AC778C(a1);
  sub_268AC7AC8(a1);
  sub_268AC7E90(a1);
  if (*a1 - 4 > 4)
  {
    v3 = 0;
  }

  else
  {
    v3 = qword_268B4FCE8[(*a1 - 4)];
  }

  [v1 setDirection_];
  v4 = type metadata accessor for MediaPlayerIntent();
  v5 = 0;
  v6 = 0;
  v7 = a1[*(v4 + 48)];
  if (v7 != 26)
  {
    v5 = sub_268942D54(v7);
  }

  v8 = sub_268A7528C(v5, v6);

  return [v1 setMediaType_];
}

uint64_t sub_268AC778C(uint64_t a1)
{
  v2 = sub_268B37A54();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v23[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for MediaPlayerIntent();
  v25 = sub_2689A9870(&qword_2802A56B0);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v23);
  sub_268946C8C(a1, boxed_opaque_existential_1);
  sub_2689A9870(&qword_2802A58E0);
  if (sub_268B37834())
  {
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v8 = __swift_project_value_buffer(v2, qword_2802CDA10);
    (*(v3 + 16))(v6, v8, v2);
    v9 = sub_268B37A34();
    v10 = sub_268B37F04();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_2688BB000, v9, v10, "Found home automation nodes, attempting to map them to SiriKit intent", v11, 2u);
      MEMORY[0x26D6266E0](v11, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_268B3BBA0;
    v13 = v24;
    v14 = __swift_project_boxed_opaque_existential_1(v23, v24);
    v15 = *(*(v13 - 8) + 64);
    MEMORY[0x28223BE20](v14);
    v17 = &v23[-1] - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v18 + 16))(v17);
    *(v12 + 32) = sub_268A91478(v17);
    v19 = off_287959F78;
    v20 = type metadata accessor for SkipContentIntent();
    v19(v12, v20, &off_287959F58);
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v23);
}

uint64_t sub_268AC7AC8(uint64_t a1)
{
  v2 = sub_268B37A54();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = var50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MediaPlayerIntent();
  v8 = v7 - 8;
  v9 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v11 = var50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_268946C8C(a1, v11);
  v12 = &v11[*(v8 + 100)];
  v13 = v12[1];
  if (v13)
  {
    v14 = *v12;
    v15 = qword_2802A4F30;

    if (v15 != -1)
    {
      swift_once();
    }

    v16 = __swift_project_value_buffer(v2, qword_2802CDA10);
    (*(v3 + 16))(v6, v16, v2);
    v17 = sub_268B37A34();
    v18 = sub_268B37F04();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_2688BB000, v17, v18, "Found destination device id in the intent. parsing the routes and setting disambiguated to true", v19, 2u);
      MEMORY[0x26D6266E0](v19, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
    v20 = sub_268B18100();
    if (v20)
    {
      v21 = v20;
      if (sub_2688EFD0C(v20))
      {
        sub_2688EFD10(0, (v21 & 0xC000000000000001) == 0, v21);
        if ((v21 & 0xC000000000000001) != 0)
        {
          v22 = MEMORY[0x26D625BD0](0, v21);
        }

        else
        {
          v22 = *(v21 + 32);
        }

        v23 = v22;

        v24 = sub_268B37BC4();

        [v23 setRouteId_];

        sub_2688C063C();
        v25 = sub_268B38054();
        [v23 setDisambiguated_];

        goto LABEL_13;
      }
    }

    type metadata accessor for Device();
    LOBYTE(v33) = 0;
    sub_268983F14(v14, v13, 0, 0, 0, 0, 0, 0, 0, v33, var50[0], var50[1], var50[2], var50[3], var50[4], var50[5], var50[6], var50[7], var50[8], var50[9], var50[10]);
    v27 = v26;
    sub_2688C063C();
    v28 = sub_268B38054();
    [v27 setDisambiguated_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_268B3BBA0;
    *(v29 + 32) = v27;
    v30 = off_287959F78;
    v31 = type metadata accessor for SkipContentIntent();
    v25 = v27;
    v30(v29, v31, &off_287959F58);
LABEL_13:
  }

  return sub_2688C2F6C(v11);
}

uint64_t sub_268AC7E90(uint64_t a1)
{
  v2 = sub_268B37A54();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v24[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MediaPlayerIntent();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v24[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_268946C8C(a1, v10);
  sub_2689A9870(&qword_2802A58E0);
  v11 = sub_268B37854();
  v12 = *(v11 + 16);
  if (v12)
  {
    v26 = MEMORY[0x277D84F90];
    sub_268B38234();
    type metadata accessor for DeviceQuery();
    v13 = v11 + 32;
    do
    {
      sub_26890C900(v13, v25);
      sub_26890C900(v25, v24);
      sub_268AC88F0(v24);
      __swift_destroy_boxed_opaque_existential_0Tm(v25);
      sub_268B38214();
      v14 = *(v26 + 16);
      sub_268B38244();
      sub_268B38254();
      sub_268B38224();
      v13 += 40;
      --v12;
    }

    while (v12);

    v15 = v26;
    v16 = off_28795BB58;
    v17 = type metadata accessor for SkipContentIntent();
    v16(v15, v17, &off_28795BB48);
  }

  else
  {

    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v18 = __swift_project_value_buffer(v2, qword_2802CDA10);
    (*(v3 + 16))(v6, v18, v2);
    v19 = sub_268B37A34();
    v20 = sub_268B37ED4();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_2688BB000, v19, v20, "Home Automation entities are empty, skip adding to intent.", v21, 2u);
      MEMORY[0x26D6266E0](v21, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
  }

  return sub_2688C2F6C(v10);
}

uint64_t DeviceQuery.deviceType.getter()
{
  sub_2688EF000(v0, &selRef_deviceTypeString);
  if (v1)
  {
    sub_268B37004();
    v2 = 0;
  }

  else
  {
    v2 = 1;
  }

  sub_268B37034();
  v3 = OUTLINED_FUNCTION_39_9();

  return __swift_storeEnumTagSinglePayload(v3, v2, 1, v4);
}

uint64_t DeviceQuery.deviceType.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A58F0, &unk_268B3BEC0);
  OUTLINED_FUNCTION_22(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_33_17(v8, v13);
  v9 = sub_268B37034();
  OUTLINED_FUNCTION_135(v1, 1, v9);
  if (v10)
  {
    sub_2688C058C(v1, &qword_2802A58F0, &unk_268B3BEC0);
    v1 = 0;
  }

  else
  {
    sub_268B37014();
    OUTLINED_FUNCTION_70(v9);
    (*(v11 + 8))(v1, v9);
    OUTLINED_FUNCTION_70_1();
    sub_268B37BC4();
    OUTLINED_FUNCTION_226();
  }

  [v2 setDeviceTypeString_];

  return sub_2688C058C(a1, &qword_2802A58F0, &unk_268B3BEC0);
}