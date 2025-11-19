BOOL sub_1B60C159C()
{
  result = 0;
  switch(*(v0 + 24))
  {
    case 1:
      result = [*v0 statusCode] == 503;
      break;
    case 4:
      result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1B60C15FC()
{
  if (*(v0 + 24) - 1 < 3 || *(v0 + 24))
  {
    v1 = 0;
  }

  else
  {
    swift_getErrorValue();
    v1 = sub_1B60C0DFC();
  }

  return v1 & 1;
}

uint64_t sub_1B60C168C()
{
  v1 = *v0;
  if (*(v0 + 16) != 1 || v1 == 0)
  {
    return 0;
  }

  v3 = *(v0 + 8);
  v4 = v1;
  sub_1B60C12AC();
  v6 = v5;
  sub_1B60A364C(v1, v3, 1);
  return v6;
}

unint64_t WDSJWTAuthenticatorService.Errors.errorDescription.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  if (!*(v0 + 16))
  {
    sub_1B6220784();
    sub_1B6221B34();

    OUTLINED_FUNCTION_1_5();
    v5 = 0xD000000000000019;
    if (!v2)
    {
      sub_1B60A364C(v1, 0, 0);
      v2 = 0xE300000000000000;
      v1 = 7104878;
    }

    MEMORY[0x1B8C90530](v1, v2);
    goto LABEL_12;
  }

  if (*(v0 + 16) == 1)
  {
    if (v1)
    {
      [*v0 statusCode];
      sub_1B6221F04();
    }

    sub_1B6221B34();

    OUTLINED_FUNCTION_1_5();
    v5 = 0xD000000000000014;
    v4 = OUTLINED_FUNCTION_36();
    MEMORY[0x1B8C90530](v4);
LABEL_12:

    return v5;
  }

  if (v1 | v2)
  {
    return 0xD000000000000015;
  }

  else
  {
    return 0xD000000000000022;
  }
}

unint64_t sub_1B60C1904(uint64_t a1)
{
  result = sub_1B60624F4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B60C1930(uint64_t a1)
{
  result = sub_1B60C1958();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B60C1958()
{
  result = qword_1EDAAEC60;
  if (!qword_1EDAAEC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAAEC60);
  }

  return result;
}

uint64_t sub_1B60C19B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB927670);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1B60C1A1C()
{
  result = qword_1EDAB0990;
  if (!qword_1EDAB0990)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDAB0990);
  }

  return result;
}

unint64_t sub_1B60C1A60()
{
  result = qword_1EDAAF688;
  if (!qword_1EDAAF688)
  {
    sub_1B60C1A1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAAF688);
  }

  return result;
}

unsigned __int8 *sub_1B60C1AE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v80 = a1;
  v81 = a2;
  sub_1B6220784();
  result = sub_1B62213C4();
  v6 = result;
  v7 = v5;
  if ((v5 & 0x1000000000000000) != 0)
  {
    OUTLINED_FUNCTION_36();
    v6 = sub_1B60C1FF8();
    v44 = v43;

    v7 = v44;
    if ((v44 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      OUTLINED_FUNCTION_36();
      result = sub_1B6221BA4();
    }

    v9 = *result;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        if (v8 != 1)
        {
          OUTLINED_FUNCTION_12_6();
          if (v25 ^ v26 | v24)
          {
            v29 = 65;
          }

          if (!(v25 ^ v26 | v24))
          {
            v30 = 58;
          }

          if (v27)
          {
            v17 = 0;
            v31 = (v27 + 1);
            do
            {
              v32 = *v31;
              if (v32 < 0x30 || v32 >= v30)
              {
                if (v32 < 0x41 || v32 >= v29)
                {
                  OUTLINED_FUNCTION_9_7();
                  if (!v22 || v32 >= v34)
                  {
                    goto LABEL_142;
                  }

                  v33 = -87;
                }

                else
                {
                  v33 = -55;
                }
              }

              else
              {
                v33 = -48;
              }

              v35 = v17 * a3;
              if ((v17 * a3) >> 64 != (v17 * a3) >> 63)
              {
                goto LABEL_141;
              }

              v17 = v35 + (v32 + v33);
              if (__OFADD__(v35, (v32 + v33)))
              {
                goto LABEL_141;
              }

              ++v31;
              --v28;
            }

            while (v28);
LABEL_52:
            v6 = v17;
            goto LABEL_142;
          }

          goto LABEL_72;
        }

LABEL_141:
        v6 = 0;
        goto LABEL_142;
      }

      goto LABEL_146;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        v36 = a3 + 48;
        v37 = a3 + 55;
        v38 = a3 + 87;
        if (a3 > 10)
        {
          v36 = 58;
        }

        else
        {
          v38 = 97;
          v37 = 65;
        }

        if (result)
        {
          v39 = 0;
          do
          {
            v40 = *result;
            if (v40 < 0x30 || v40 >= v36)
            {
              if (v40 < 0x41 || v40 >= v37)
              {
                v6 = 0;
                if (v40 < 0x61 || v40 >= v38)
                {
                  goto LABEL_142;
                }

                v41 = -87;
              }

              else
              {
                v41 = -55;
              }
            }

            else
            {
              v41 = -48;
            }

            v42 = v39 * a3;
            if ((v39 * a3) >> 64 != (v39 * a3) >> 63)
            {
              goto LABEL_141;
            }

            v39 = v42 + (v40 + v41);
            if (__OFADD__(v42, (v40 + v41)))
            {
              goto LABEL_141;
            }

            ++result;
            --v8;
          }

          while (v8);
          v6 = v42 + (v40 + v41);
          goto LABEL_142;
        }

        goto LABEL_72;
      }

      goto LABEL_141;
    }

    if (v8 >= 1)
    {
      if (v8 != 1)
      {
        OUTLINED_FUNCTION_12_6();
        if (v11 ^ v12 | v10)
        {
          v15 = 65;
        }

        if (!(v11 ^ v12 | v10))
        {
          v16 = 58;
        }

        if (v13)
        {
          v17 = 0;
          v18 = (v13 + 1);
          while (1)
          {
            v19 = *v18;
            if (v19 < 0x30 || v19 >= v16)
            {
              if (v19 < 0x41 || v19 >= v15)
              {
                OUTLINED_FUNCTION_9_7();
                if (!v22 || v19 >= v21)
                {
                  goto LABEL_142;
                }

                v20 = -87;
              }

              else
              {
                v20 = -55;
              }
            }

            else
            {
              v20 = -48;
            }

            v23 = v17 * a3;
            if ((v17 * a3) >> 64 != (v17 * a3) >> 63)
            {
              goto LABEL_141;
            }

            v17 = v23 - (v19 + v20);
            if (__OFSUB__(v23, (v19 + v20)))
            {
              goto LABEL_141;
            }

            ++v18;
            if (!--v14)
            {
              goto LABEL_52;
            }
          }
        }

LABEL_72:
        v6 = 0;
LABEL_142:

        return v6;
      }

      goto LABEL_141;
    }

    __break(1u);
LABEL_145:
    __break(1u);
LABEL_146:
    __break(1u);
    goto LABEL_147;
  }

  v45 = HIBYTE(v7) & 0xF;
  v80 = v6;
  v81 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v45)
      {
        OUTLINED_FUNCTION_2_16();
        if (v70 ^ v71 | v69)
        {
          v73 = 65;
        }

        if (!(v70 ^ v71 | v69))
        {
          v74 = 58;
        }

        v75 = &v80;
        while (1)
        {
          v76 = *v75;
          if (v76 < 0x30 || v76 >= v74)
          {
            if (v76 < 0x41 || v76 >= v73)
            {
              OUTLINED_FUNCTION_9_7();
              if (!v22 || v76 >= v78)
              {
                goto LABEL_142;
              }

              v77 = -87;
            }

            else
            {
              v77 = -55;
            }
          }

          else
          {
            v77 = -48;
          }

          v79 = v50 * a3;
          if ((v50 * a3) >> 64 != (v50 * a3) >> 63)
          {
            goto LABEL_141;
          }

          v50 = v79 + (v76 + v77);
          if (__OFADD__(v79, (v76 + v77)))
          {
            goto LABEL_141;
          }

          v75 = (v75 + 1);
          if (!--v72)
          {
            goto LABEL_140;
          }
        }
      }

      goto LABEL_141;
    }

    if (v45)
    {
      if (v45 != 1)
      {
        OUTLINED_FUNCTION_2_16();
        if (v47 ^ v48 | v46)
        {
          v51 = 65;
        }

        if (!(v47 ^ v48 | v46))
        {
          v52 = 58;
        }

        v53 = &v80 + 1;
        while (1)
        {
          v54 = *v53;
          if (v54 < 0x30 || v54 >= v52)
          {
            if (v54 < 0x41 || v54 >= v51)
            {
              OUTLINED_FUNCTION_9_7();
              if (!v22 || v54 >= v56)
              {
                goto LABEL_142;
              }

              v55 = -87;
            }

            else
            {
              v55 = -55;
            }
          }

          else
          {
            v55 = -48;
          }

          v57 = v50 * a3;
          if ((v50 * a3) >> 64 != (v50 * a3) >> 63)
          {
            goto LABEL_141;
          }

          v50 = v57 - (v54 + v55);
          if (__OFSUB__(v57, (v54 + v55)))
          {
            goto LABEL_141;
          }

          ++v53;
          if (!--v49)
          {
            goto LABEL_140;
          }
        }
      }

      goto LABEL_141;
    }

    goto LABEL_145;
  }

  if (v45)
  {
    if (v45 != 1)
    {
      OUTLINED_FUNCTION_2_16();
      if (v59 ^ v60 | v58)
      {
        v62 = 65;
      }

      if (!(v59 ^ v60 | v58))
      {
        v63 = 58;
      }

      v64 = &v80 + 1;
      do
      {
        v65 = *v64;
        if (v65 < 0x30 || v65 >= v63)
        {
          if (v65 < 0x41 || v65 >= v62)
          {
            OUTLINED_FUNCTION_9_7();
            if (!v22 || v65 >= v67)
            {
              goto LABEL_142;
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

        v68 = v50 * a3;
        if ((v50 * a3) >> 64 != (v50 * a3) >> 63)
        {
          goto LABEL_141;
        }

        v50 = v68 + (v65 + v66);
        if (__OFADD__(v68, (v65 + v66)))
        {
          goto LABEL_141;
        }

        ++v64;
        --v61;
      }

      while (v61);
LABEL_140:
      v6 = v50;
      goto LABEL_142;
    }

    goto LABEL_141;
  }

LABEL_147:
  __break(1u);
  return result;
}

uint64_t sub_1B60C1FF8()
{
  v0 = sub_1B60C2064();
  v4 = sub_1B60C2098(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_1B60C2098(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_1B6221A24();
    if (!v9 || (v10 = v9, v11 = sub_1B603659C(v9, 0), v12 = sub_1B60C21F8(v14, (v11 + 4), v10, a1, a2, a3, a4), sub_1B6220784(), , v12 == v10))
    {
      v13 = sub_1B62212C4();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_1B62212C4();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_1B6221BA4();
LABEL_4:

  return sub_1B62212C4();
}

unint64_t sub_1B60C21F8(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
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
    goto LABEL_36;
  }

  if (a3 < 0)
  {
    goto LABEL_40;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_36:
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
    result = v12;
    if ((v12 & 0xC) == v15)
    {
      result = sub_1B6176C54(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_1B6221374();
      v19 = result;
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_1B6221BA4();
        }

        v19 = *(result + v18);
      }
    }

    if ((v12 & 0xC) == v15)
    {
      result = sub_1B6176C54(v12, a6, a7);
      v12 = result;
      if ((a7 & 0x1000000000000000) == 0)
      {
LABEL_27:
        v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_31;
      }
    }

    else if ((a7 & 0x1000000000000000) == 0)
    {
      goto LABEL_27;
    }

    if (v23 <= v12 >> 16)
    {
      goto LABEL_39;
    }

    result = sub_1B6221344();
    v12 = result;
LABEL_31:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_36;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_38;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

unint64_t sub_1B60C2410()
{
  result = qword_1EB9251A0;
  if (!qword_1EB9251A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9251A0);
  }

  return result;
}

unint64_t sub_1B60C2468()
{
  result = qword_1EB9251A8;
  if (!qword_1EB9251A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9251A8);
  }

  return result;
}

uint64_t sub_1B60C24BC(uint64_t a1)
{
  result = sub_1B60C2540(&qword_1EB9251B0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B60C2540(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB9251B8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B60C2590()
{
  sub_1B62212D4();
}

uint64_t sub_1B60C2600()
{
  sub_1B62212D4();
}

uint64_t sub_1B60C265C()
{
  sub_1B62212D4();
}

uint64_t sub_1B60C26CC()
{
  sub_1B62212D4();
}

uint64_t sub_1B60C27F0(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 2:
      OUTLINED_FUNCTION_32_3();
      break;
    default:
      break;
  }

  sub_1B62212D4();
}

uint64_t sub_1B60C28B4(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 4:
      OUTLINED_FUNCTION_0_20();
      break;
    default:
      break;
  }

  sub_1B62212D4();
}

uint64_t sub_1B60C2968()
{
  OUTLINED_FUNCTION_26_3();
  sub_1B62212D4();
}

uint64_t sub_1B60C2A2C(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 4:
      OUTLINED_FUNCTION_0_20();
      break;
    default:
      break;
  }

  sub_1B62212D4();
}

uint64_t sub_1B60C2AFC()
{
  sub_1B62212D4();
}

uint64_t sub_1B60C2B3C()
{
  sub_1B62212D4();
}

uint64_t sub_1B60C2BAC()
{
  sub_1B62212D4();
}

uint64_t sub_1B60C2C04()
{
  sub_1B62212D4();
}

uint64_t sub_1B60C2C54(uint64_t a1, char a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_16_8();
    OUTLINED_FUNCTION_19_4();
    OUTLINED_FUNCTION_3_13();
  }

  sub_1B62212D4();
}

uint64_t sub_1B60C2CC0()
{
  sub_1B62212D4();
}

uint64_t sub_1B60C2D40()
{
  OUTLINED_FUNCTION_20_4();
  switch(v0)
  {
    case 2:
      OUTLINED_FUNCTION_10_9();
      break;
    case 7:
      OUTLINED_FUNCTION_0_20();
      break;
    default:
      break;
  }

  sub_1B62212D4();
}

uint64_t sub_1B60C2E10(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 3:
      OUTLINED_FUNCTION_26_3();
      break;
    case 12:
      OUTLINED_FUNCTION_0_20();
      break;
    default:
      break;
  }

  sub_1B62212D4();
}

uint64_t sub_1B60C2F8C()
{
  sub_1B62212D4();
}

uint64_t sub_1B60C3038(uint64_t a1, char a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_37_2();
  }

  else
  {
    OUTLINED_FUNCTION_29_3();
  }

  sub_1B62212D4();
}

uint64_t sub_1B60C30A8()
{
  sub_1B62212D4();
}

uint64_t sub_1B60C3154()
{
  sub_1B62212D4();
}

uint64_t sub_1B60C31BC(uint64_t a1, char a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_38();
  }

  else
  {
    OUTLINED_FUNCTION_34_1();
  }

  sub_1B62212D4();
}

uint64_t sub_1B60C3230(uint64_t a1, char a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_22_4();
    OUTLINED_FUNCTION_19_4();
    OUTLINED_FUNCTION_3_13();
  }

  else
  {
    OUTLINED_FUNCTION_31_2();
  }

  sub_1B62212D4();
}

uint64_t sub_1B60C3294()
{
  sub_1B62212D4();
}

uint64_t sub_1B60C3314(uint64_t a1, char a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_38();
  }

  else
  {
    OUTLINED_FUNCTION_30_2();
  }

  sub_1B62212D4();
}

uint64_t sub_1B60C339C(uint64_t a1, char a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_39_1();
  }

  else
  {
    OUTLINED_FUNCTION_33_1();
  }

  sub_1B62212D4();
}

uint64_t sub_1B60C3410()
{
  sub_1B62212D4();
}

uint64_t sub_1B60C3550()
{
  OUTLINED_FUNCTION_20_4();
  sub_1B62212D4();
}

uint64_t sub_1B60C3634()
{
  sub_1B62212D4();
}

uint64_t sub_1B60C3748()
{
  sub_1B62212D4();
}

uint64_t sub_1B60C37B8(uint64_t a1, char a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_37_2();
  }

  else
  {
    OUTLINED_FUNCTION_35_1();
  }

  sub_1B62212D4();
}

uint64_t sub_1B60C3820(uint64_t a1, char a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_39_1();
  }

  else
  {
    OUTLINED_FUNCTION_21_4();
  }

  sub_1B62212D4();
}

uint64_t sub_1B60C38A4(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 2:
      OUTLINED_FUNCTION_32_3();
      break;
    case 3:
      OUTLINED_FUNCTION_0_20();
      break;
    default:
      break;
  }

  sub_1B62212D4();
}

uint64_t sub_1B60C3958(uint64_t a1, char a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_12_7();
    OUTLINED_FUNCTION_19_4();
    OUTLINED_FUNCTION_3_13();
  }

  else
  {
    OUTLINED_FUNCTION_11_9();
  }

  sub_1B62212D4();
}

uint64_t sub_1B60C39BC()
{
  sub_1B62212D4();
}

uint64_t sub_1B60C3A34(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  a3(a2);
  OUTLINED_FUNCTION_24_2();
}

uint64_t sub_1B60C3A78(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 2:
      OUTLINED_FUNCTION_10_9();
      break;
    default:
      break;
  }

  sub_1B62212D4();
}

uint64_t sub_1B60C3B48(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3();
  OUTLINED_FUNCTION_24_2();
}

uint64_t sub_1B60C3B98()
{
  sub_1B62212D4();
}

uint64_t sub_1B60C3C10(uint64_t a1, char a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_4_11();
  }

  else
  {
    OUTLINED_FUNCTION_18_5();
  }

  sub_1B62212D4();
}

uint64_t sub_1B60C3C68(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 2:
    case 4:
    case 5:
      OUTLINED_FUNCTION_27_3();
      break;
    default:
      break;
  }

  sub_1B62212D4();
}

uint64_t sub_1B60C3D50(uint64_t a1, char a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_15_4();
  }

  else
  {
    OUTLINED_FUNCTION_9_8();
  }

  sub_1B62212D4();
}

uint64_t sub_1B60C3DA8(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 4:
      OUTLINED_FUNCTION_27_3();
      break;
    default:
      break;
  }

  sub_1B62212D4();
}

uint64_t sub_1B60C3ECC()
{
  OUTLINED_FUNCTION_13_6();
  if (v0)
  {
    OUTLINED_FUNCTION_15_4();
  }

  else
  {
    OUTLINED_FUNCTION_9_8();
  }

  OUTLINED_FUNCTION_17_5();

  return sub_1B62220A4();
}

uint64_t sub_1B60C3F40()
{
  OUTLINED_FUNCTION_13_6();
  if (v0)
  {
    OUTLINED_FUNCTION_4_11();
  }

  else
  {
    OUTLINED_FUNCTION_18_5();
  }

  OUTLINED_FUNCTION_17_5();

  return sub_1B62220A4();
}

uint64_t sub_1B60C3F9C()
{
  OUTLINED_FUNCTION_13_6();
  OUTLINED_FUNCTION_17_5();

  return sub_1B62220A4();
}

uint64_t sub_1B60C4018()
{
  OUTLINED_FUNCTION_13_6();
  OUTLINED_FUNCTION_17_5();

  return sub_1B62220A4();
}

uint64_t sub_1B60C40F8()
{
  OUTLINED_FUNCTION_23_3();
  v0(v1);
  OUTLINED_FUNCTION_25_2();

  return sub_1B62220A4();
}

uint64_t sub_1B60C4140()
{
  OUTLINED_FUNCTION_13_6();
  sub_1B62212D4();

  return sub_1B62220A4();
}

uint64_t sub_1B60C419C()
{
  OUTLINED_FUNCTION_13_6();
  if (v0)
  {
    OUTLINED_FUNCTION_12_7();
    OUTLINED_FUNCTION_19_4();
    OUTLINED_FUNCTION_3_13();
  }

  else
  {
    OUTLINED_FUNCTION_11_9();
  }

  OUTLINED_FUNCTION_17_5();

  return sub_1B62220A4();
}

uint64_t sub_1B60C4218()
{
  OUTLINED_FUNCTION_13_6();
  sub_1B62212D4();

  return sub_1B62220A4();
}

uint64_t sub_1B60C428C()
{
  OUTLINED_FUNCTION_13_6();
  if (v0)
  {
    OUTLINED_FUNCTION_39_1();
  }

  else
  {
    OUTLINED_FUNCTION_21_4();
  }

  OUTLINED_FUNCTION_17_5();

  return sub_1B62220A4();
}

uint64_t sub_1B60C4314()
{
  OUTLINED_FUNCTION_13_6();
  if (v0)
  {
    OUTLINED_FUNCTION_37_2();
  }

  else
  {
    OUTLINED_FUNCTION_35_1();
  }

  OUTLINED_FUNCTION_17_5();

  return sub_1B62220A4();
}

uint64_t sub_1B60C4380()
{
  OUTLINED_FUNCTION_13_6();
  OUTLINED_FUNCTION_17_5();

  return sub_1B62220A4();
}

uint64_t sub_1B60C4454()
{
  OUTLINED_FUNCTION_13_6();
  if (v0)
  {
    OUTLINED_FUNCTION_39_1();
  }

  else
  {
    OUTLINED_FUNCTION_33_1();
  }

  OUTLINED_FUNCTION_17_5();

  return sub_1B62220A4();
}

uint64_t sub_1B60C44E4()
{
  OUTLINED_FUNCTION_13_6();
  if (v0)
  {
    OUTLINED_FUNCTION_38();
  }

  else
  {
    OUTLINED_FUNCTION_30_2();
  }

  OUTLINED_FUNCTION_17_5();

  return sub_1B62220A4();
}

uint64_t sub_1B60C4558()
{
  OUTLINED_FUNCTION_13_6();
  OUTLINED_FUNCTION_17_5();

  return sub_1B62220A4();
}

uint64_t sub_1B60C45DC()
{
  OUTLINED_FUNCTION_13_6();
  if (v0)
  {
    OUTLINED_FUNCTION_22_4();
    OUTLINED_FUNCTION_19_4();
    OUTLINED_FUNCTION_3_13();
  }

  else
  {
    OUTLINED_FUNCTION_31_2();
  }

  OUTLINED_FUNCTION_17_5();

  return sub_1B62220A4();
}

uint64_t sub_1B60C4644()
{
  OUTLINED_FUNCTION_13_6();
  if (v0)
  {
    OUTLINED_FUNCTION_38();
  }

  else
  {
    OUTLINED_FUNCTION_34_1();
  }

  OUTLINED_FUNCTION_17_5();

  return sub_1B62220A4();
}

uint64_t sub_1B60C46BC()
{
  OUTLINED_FUNCTION_13_6();
  sub_1B62212D4();

  return sub_1B62220A4();
}

uint64_t sub_1B60C4748()
{
  OUTLINED_FUNCTION_13_6();
  if (v0)
  {
    OUTLINED_FUNCTION_37_2();
  }

  else
  {
    OUTLINED_FUNCTION_29_3();
  }

  OUTLINED_FUNCTION_17_5();

  return sub_1B62220A4();
}

uint64_t sub_1B60C481C()
{
  OUTLINED_FUNCTION_13_6();
  OUTLINED_FUNCTION_17_5();

  return sub_1B62220A4();
}

uint64_t sub_1B60C48A0()
{
  OUTLINED_FUNCTION_13_6();
  if (v0)
  {
    OUTLINED_FUNCTION_16_8();
    OUTLINED_FUNCTION_19_4();
    OUTLINED_FUNCTION_3_13();
  }

  OUTLINED_FUNCTION_17_5();

  return sub_1B62220A4();
}

uint64_t sub_1B60C4910()
{
  OUTLINED_FUNCTION_13_6();
  sub_1B62212D4();

  return sub_1B62220A4();
}

uint64_t sub_1B60C4974()
{
  OUTLINED_FUNCTION_13_6();
  sub_1B62212D4();

  return sub_1B62220A4();
}

uint64_t sub_1B60C49E0()
{
  OUTLINED_FUNCTION_13_6();
  OUTLINED_FUNCTION_17_5();

  return sub_1B62220A4();
}

uint64_t sub_1B60C4A54()
{
  OUTLINED_FUNCTION_13_6();
  sub_1B62212D4();

  return sub_1B62220A4();
}

uint64_t sub_1B60C4AE4()
{
  sub_1B6222074();
  sub_1B62212D4();
  return sub_1B62220A4();
}

uint64_t sub_1B60C4B90()
{
  OUTLINED_FUNCTION_23_3();
  v0(v3, v1);
  return sub_1B62220A4();
}

uint64_t sub_1B60C4BD0()
{
  OUTLINED_FUNCTION_13_6();
  OUTLINED_FUNCTION_17_5();

  return sub_1B62220A4();
}

uint64_t sub_1B60C4C44()
{
  OUTLINED_FUNCTION_13_6();
  OUTLINED_FUNCTION_17_5();

  return sub_1B62220A4();
}

uint64_t sub_1B60C4CA4()
{
  OUTLINED_FUNCTION_13_6();
  OUTLINED_FUNCTION_17_5();

  return sub_1B62220A4();
}

double sub_1B60C4D18@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_1B604EF94(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(a3 + 56) + 40 * v6;

    sub_1B602D048(v8, a4);
  }

  else
  {
    *(a4 + 32) = 0;
    result = 0.0;
    *a4 = 0u;
    *(a4 + 16) = 0u;
  }

  return result;
}

double sub_1B60C4D84@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_1B604EF94(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(a3 + 56) + 32 * v6;

    sub_1B602EE54(v8, a4);
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

uint64_t sub_1B60C4DE8@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a2 + 16) && (sub_1B6072A80(a1), (v4 & 1) != 0))
  {
    v5 = type metadata accessor for WeatherModel();
    OUTLINED_FUNCTION_9();
    sub_1B60C8788();
    v6 = a3;
    v7 = 0;
    v8 = 1;
    v9 = v5;
  }

  else
  {
    type metadata accessor for WeatherModel();
    v6 = OUTLINED_FUNCTION_1_4();
  }

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

uint64_t sub_1B60C4E98@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a2 + 16) && (sub_1B6072A80(a1), (v4 & 1) != 0))
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925000);
    OUTLINED_FUNCTION_9();
    sub_1B603A990();
    v6 = a3;
    v7 = 0;
    v8 = 1;
    v9 = v5;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925000);
    v6 = OUTLINED_FUNCTION_1_4();
  }

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

uint64_t sub_1B60C4F64(uint64_t a1, double a2, double a3)
{
  v65 = *v3;
  v66 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924EF8);
  v8 = OUTLINED_FUNCTION_0(v7);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v57 - v9;
  v67 = sub_1B621DB64();
  OUTLINED_FUNCTION_2();
  v64 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v62 = v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v63 = v57 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924F28);
  v18 = OUTLINED_FUNCTION_0(v17);
  MEMORY[0x1EEE9AC00](v18);
  v20 = v57 - v19;
  v21 = type metadata accessor for WeatherInterpolationOptions();
  OUTLINED_FUNCTION_2();
  v60 = v22;
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v61 = v57 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = v57 - v27;
  type metadata accessor for WeatherRequestOptions();
  sub_1B603A990();
  if (__swift_getEnumTagSinglePayload(v20, 1, v21) == 1)
  {
    sub_1B6037288(v20, &qword_1EB924F28);
    if (qword_1EDAB3D80 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v29 = sub_1B6220B34();
    __swift_project_value_buffer(v29, qword_1EDAC2AB0);
    v30 = sub_1B6220B14();
    v31 = sub_1B62217E4();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      MEMORY[0x1B8C91C90](v32, -1, -1);
    }

    sub_1B60BE750();
    swift_allocError();
    *v35 = 0xD00000000000002ALL;
    v35[1] = 0x80000001B623CB50;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9251D8);
    swift_allocObject();
    return sub_1B6220984();
  }

  else
  {
    OUTLINED_FUNCTION_6_10();
    sub_1B60C86E8();
    sub_1B603A990();
    v37 = v28;
    if (__swift_getEnumTagSinglePayload(v10, 1, v67) == 1)
    {
      sub_1B6037288(v10, &qword_1EB924EF8);
      if (qword_1EDAB3D80 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v38 = sub_1B6220B34();
      __swift_project_value_buffer(v38, qword_1EDAC2AB0);
      v39 = sub_1B6220B14();
      v40 = sub_1B62217E4();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        *v41 = 0;
        OUTLINED_FUNCTION_16_2(&dword_1B6020000, v42, v43, "missing timeZone ... aborting");
        MEMORY[0x1B8C91C90](v41, -1, -1);
      }

      sub_1B60BE750();
      swift_allocError();
      *v44 = 0xD000000000000025;
      v44[1] = 0x80000001B623CB80;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9251D8);
      swift_allocObject();
      v36 = sub_1B6220984();
      OUTLINED_FUNCTION_5_15();
      v46 = v28;
    }

    else
    {
      v47 = v63;
      v48 = v64;
      v58 = *(v64 + 32);
      v59 = v37;
      v49 = v10;
      v50 = v67;
      v51 = v58(v63, v49, v67);
      MEMORY[0x1EEE9AC00](v51);
      v57[-4] = v66;
      *&v57[-3] = a2;
      *&v57[-2] = a3;
      v57[-1] = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9251D0);
      v57[1] = sub_1B62209F4();
      sub_1B60C8788();
      v52 = v62;
      (*(v48 + 16))(v62, v47, v50);
      v53 = (v24 + *(v48 + 80) + ((*(v60 + 80) + 32) & ~*(v60 + 80))) & ~*(v48 + 80);
      v54 = swift_allocObject();
      *(v54 + 16) = a2;
      *(v54 + 24) = a3;
      OUTLINED_FUNCTION_6_10();
      sub_1B60C86E8();
      v58((v54 + v53), v52, v50);
      v55 = sub_1B62208D4();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9250F0);
      v36 = sub_1B6220954();

      (*(v48 + 8))(v47, v50);
      OUTLINED_FUNCTION_5_15();
      v46 = v59;
    }

    sub_1B60C87E0(v46, v45);
  }

  return v36;
}

uint64_t sub_1B60C564C(uint64_t *a1, NSObject *a2, void (**a3)(char *, uint64_t), uint64_t a4, double a5, double a6)
{
  v63 = a3;
  v64 = a4;
  v62 = a2;
  v60 = type metadata accessor for InterpolationInputProducts();
  MEMORY[0x1EEE9AC00](v60);
  v61 = (&v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924EA0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v66 = &v59 - v11;
  v12 = type metadata accessor for DailyForecast();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v65 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for HourlyForecast();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v69 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = type metadata accessor for WeatherModel();
  MEMORY[0x1EEE9AC00](v71);
  v67 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v68 = &v59 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v59 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v70 = &v59 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9251E0);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v26 = &v59 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v59 - v28;
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v59 - v31;
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v59 - v34;
  v36 = *a1;
  sub_1B60C4E98(3, v36, &v59 - v34);
  v37 = v32;
  sub_1B60C4E98(2, v36, v32);
  sub_1B603A990();
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925000);
  if (__swift_getEnumTagSinglePayload(v29, 1, v38) == 1)
  {
    v39 = &qword_1EB9251E0;
LABEL_5:
    sub_1B6037288(v29, v39);
LABEL_6:
    v40 = v37;
    goto LABEL_7;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v39 = &qword_1EB925000;
    goto LABEL_5;
  }

  v48 = v70;
  sub_1B60C86E8();
  sub_1B60C8788();
  if (swift_getEnumCaseMultiPayload() != 3)
  {
    sub_1B60C87E0(v48, type metadata accessor for WeatherModel);
    sub_1B60C87E0(v21, type metadata accessor for WeatherModel);
    goto LABEL_6;
  }

  v49 = v69;
  sub_1B60C86E8();
  v40 = v37;
  sub_1B603A990();
  if (__swift_getEnumTagSinglePayload(v26, 1, v38) == 1)
  {
    sub_1B60C87E0(v49, type metadata accessor for HourlyForecast);
    sub_1B60C87E0(v48, type metadata accessor for WeatherModel);
    v50 = &qword_1EB9251E0;
LABEL_19:
    sub_1B6037288(v26, v50);
    goto LABEL_7;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B60C87E0(v49, type metadata accessor for HourlyForecast);
    sub_1B60C87E0(v48, type metadata accessor for WeatherModel);
    v50 = &qword_1EB925000;
    goto LABEL_19;
  }

  v51 = v68;
  sub_1B60C86E8();
  v52 = v67;
  sub_1B60C8788();
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v53 = v65;
    sub_1B60C86E8();
    v54 = v66;
    sub_1B60C5FA8(v36, v66);
    v55 = v61;
    sub_1B60C8788();
    sub_1B60C8788();
    sub_1B603A990();
    v56 = sub_1B60C62A8(v55, v63, v62 + 4, v64, a5, a6);
    sub_1B60C87E0(v55, type metadata accessor for InterpolationInputProducts);
    if (v56)
    {
      v72 = v56;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9251D8);
      swift_allocObject();
      v57 = sub_1B6220994();
    }

    else
    {
      sub_1B60BE750();
      swift_allocError();
      *v58 = 0xD00000000000004CLL;
      v58[1] = 0x80000001B623CC00;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9251D8);
      swift_allocObject();
      v57 = sub_1B6220984();
    }

    v46 = v57;
    sub_1B6037288(v54, &qword_1EB924EA0);
    sub_1B60C87E0(v53, type metadata accessor for DailyForecast);
    sub_1B60C87E0(v68, type metadata accessor for WeatherModel);
    sub_1B60C87E0(v49, type metadata accessor for HourlyForecast);
    sub_1B60C87E0(v48, type metadata accessor for WeatherModel);
    goto LABEL_12;
  }

  sub_1B60C87E0(v51, type metadata accessor for WeatherModel);
  sub_1B60C87E0(v49, type metadata accessor for HourlyForecast);
  sub_1B60C87E0(v48, type metadata accessor for WeatherModel);
  sub_1B60C87E0(v52, type metadata accessor for WeatherModel);
LABEL_7:
  if (qword_1EDAB3D80 != -1)
  {
    swift_once();
  }

  v41 = sub_1B6220B34();
  __swift_project_value_buffer(v41, qword_1EDAC2AB0);
  v42 = sub_1B6220B14();
  v43 = sub_1B62217E4();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    *v44 = 0;
    _os_log_impl(&dword_1B6020000, v42, v43, "Hourly and Daily forecasts missing from WDS fetch, so cannot interpolate", v44, 2u);
    MEMORY[0x1B8C91C90](v44, -1, -1);
  }

  sub_1B60BE750();
  swift_allocError();
  *v45 = 0xD000000000000048;
  v45[1] = 0x80000001B623CBB0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9251D8);
  swift_allocObject();
  v46 = sub_1B6220984();
LABEL_12:
  sub_1B6037288(v40, &qword_1EB9251E0);
  sub_1B6037288(v35, &qword_1EB9251E0);
  return v46;
}

uint64_t sub_1B60C5FA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for WeatherModel();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9251E0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v23 - v12;
  if (*(a1 + 16) && (sub_1B6072A80(4), (v14 & 1) != 0))
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925000);
    sub_1B603A990();
    v16 = v13;
    v17 = 0;
    v18 = v15;
  }

  else
  {
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925000);
    v16 = v13;
    v17 = 1;
  }

  __swift_storeEnumTagSinglePayload(v16, v17, 1, v18);
  sub_1B60BFF1C();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925000);
  if (__swift_getEnumTagSinglePayload(v10, 1, v19) == 1)
  {
    v20 = &qword_1EB9251E0;
LABEL_9:
    sub_1B6037288(v10, v20);
    goto LABEL_10;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = &qword_1EB925000;
    goto LABEL_9;
  }

  sub_1B60C86E8();
  sub_1B60C86E8();
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    return sub_1B60BFF1C();
  }

  sub_1B60C87E0(v6, type metadata accessor for WeatherModel);
LABEL_10:
  HourForecast = type metadata accessor for NextHourForecast();
  return __swift_storeEnumTagSinglePayload(a2, 1, 1, HourForecast);
}

uint64_t sub_1B60C62A8(NSObject *a1, void (**a2)(char *, uint64_t), NSObject *a3, uint64_t a4, double a5, double a6)
{
  v233 = a4;
  v234 = a2;
  v231 = a3;
  v232 = a1;
  v8 = sub_1B621D364();
  v225 = *(v8 - 8);
  v226 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v217 = &v205 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v216 = &v205 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v220 = &v205 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v219 = &v205 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v224 = &v205 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v223 = &v205 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v205 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924E80);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v25 = &v205 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v222 = (&v205 - v27);
  v28 = type metadata accessor for CurrentWeather();
  v229 = *(v28 - 8);
  v230 = v28;
  MEMORY[0x1EEE9AC00](v28);
  v227 = &v205 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v205 - v31;
  MEMORY[0x1EEE9AC00](v33);
  v228 = &v205 - v34;
  v35 = sub_1B621D8F4();
  v36 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v38 = &v205 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v235 = &v205 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v221 = &v205 - v42;
  MEMORY[0x1EEE9AC00](v43);
  v218 = &v205 - v44;
  MEMORY[0x1EEE9AC00](v45);
  v47 = &v205 - v46;
  MEMORY[0x1EEE9AC00](v48);
  v50 = &v205 - v49;
  v51 = type metadata accessor for WeatherInterpolationOptions();
  MEMORY[0x1EEE9AC00](v51);
  v53 = &v205 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B60C8788();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v236 = v35;
    v234 = v36;
    v54 = &v53[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925108) + 48)];
    v55 = *v54;
    v56 = v54[8];
    v57 = v225;
    (*(v225 + 32))(v22, v53, v226);
    if (qword_1EDAB3D80 != -1)
    {
LABEL_39:
      swift_once();
    }

    v221 = v55;
    v58 = sub_1B6220B34();
    v59 = __swift_project_value_buffer(v58, qword_1EDAC2AB0);
    v60 = *(v57 + 16);
    v61 = v226;
    v60(v223, v22, v226);
    v213 = v57 + 16;
    v212 = v60;
    v60(v224, v22, v61);
    v214 = v59;
    v62 = sub_1B6220B14();
    v63 = sub_1B62217F4();
    v64 = os_log_type_enabled(v62, v63);
    v228 = v38;
    LODWORD(v218) = v56;
    v215 = v22;
    if (v64)
    {
      v65 = swift_slowAlloc();
      v209 = v63;
      v66 = v65;
      v210 = swift_slowAlloc();
      v239 = v210;
      *v66 = 141559043;
      *(v66 + 4) = 1752392040;
      *(v66 + 12) = 2081;
      v237 = a5;
      v238 = a6;
      type metadata accessor for CLLocationCoordinate2D(0);
      v67 = sub_1B6221234();
      v208 = v62;
      v69 = sub_1B602EEB0(v67, v68, &v239);

      v211 = v66;
      *(v66 + 14) = v69;
      *(v66 + 22) = 2080;
      v70 = v235;
      v71 = v223;
      sub_1B621D354();
      v207 = sub_1B60C8740(&qword_1EDAB0D70, MEMORY[0x1E6969530]);
      v72 = v236;
      v73 = sub_1B6221F04();
      v75 = v74;
      v206 = v234[1];
      v206(v70, v72);
      v222 = *(v225 + 8);
      v222(v71, v226);
      v76 = sub_1B602EEB0(v73, v75, &v239);

      v77 = v211;
      *(v211 + 24) = v76;
      *(v77 + 32) = 2080;
      v78 = v224;
      sub_1B621D334();
      v79 = sub_1B6221F04();
      v81 = v80;
      v82 = v70;
      v83 = v218;
      v206(v82, v72);
      v22 = v215;
      v222(v78, v226);
      v38 = v228;
      v84 = sub_1B602EEB0(v79, v81, &v239);

      v85 = v211;
      *(v211 + 34) = v84;
      *(v85 + 42) = 2080;
      v86 = v221;
      v237 = *&v221;
      LOBYTE(v238) = v83;
      v87 = WeatherInterpolationOptions.Stride.description.getter();
      v89 = sub_1B602EEB0(v87, v88, &v239);

      *(v85 + 44) = v89;
      v90 = v208;
      _os_log_impl(&dword_1B6020000, v208, v209, "Attempting to interpolate current weather; location=%{private,mask.hash}s, DateInterval.start: %s, DateInterval.end: %s, stride: %s", v85, 0x34u);
      v91 = v210;
      swift_arrayDestroy();
      MEMORY[0x1B8C91C90](v91, -1, -1);
      MEMORY[0x1B8C91C90](v85, -1, -1);

      v92 = v234;
    }

    else
    {

      v107 = *(v57 + 8);
      v107(v224, v61);
      v222 = v107;
      v107(v223, v61);
      v92 = v234;
      v86 = v221;
      v83 = v56;
    }

    sub_1B621D354();
    v234 = v92 + 1;
    v56 = v83 | ((v86 * 60) >> 64 == (60 * v86) >> 63);
    v108 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v109 = v235;
      v110 = v22;
      sub_1B621D334();
      v111 = sub_1B621D834();
      v112 = *v234;
      (*v234)(v109, v236);
      if ((v111 & 1) == 0)
      {
        break;
      }

      isa = v231[3].isa;
      v114 = v231[4].isa;
      __swift_project_boxed_opaque_existential_1(v231, isa);
      (*(v114 + 1))(v232, v38, v233, isa, v114, a5, a6);
      if (__swift_getEnumTagSinglePayload(v25, 1, v230) == 1)
      {
        sub_1B6037288(v25, &qword_1EB924E80);
        break;
      }

      sub_1B60C86E8();
      v55 = v227;
      sub_1B60C8788();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1B609C550();
        v108 = v115;
      }

      v22 = v110;
      v38 = v228;
      v57 = *(v108 + 16);
      if (v57 >= *(v108 + 24) >> 1)
      {
        sub_1B609C550();
        v108 = v116;
      }

      *(v108 + 16) = v57 + 1;
      sub_1B60C86E8();
      if ((v56 & 1) == 0)
      {
        __break(1u);
        goto LABEL_39;
      }

      sub_1B621D8B4();
      sub_1B60C87E0(v32, type metadata accessor for CurrentWeather);
    }

    if (*(v108 + 16))
    {
      v147 = v219;
      v148 = v226;
      v149 = v212;
      v212(v219, v110, v226);
      v150 = v220;
      v149(v220, v110, v148);
      v151 = sub_1B6220B14();
      v152 = sub_1B62217F4();
      v153 = os_log_type_enabled(v151, v152);
      v154 = v236;
      if (v153)
      {
        v155 = swift_slowAlloc();
        v233 = swift_slowAlloc();
        v239 = v233;
        *v155 = 136315650;
        v232 = v151;
        v156 = v235;
        LODWORD(v231) = v152;
        sub_1B621D354();
        v230 = sub_1B60C8740(&qword_1EDAB0D70, MEMORY[0x1E6969530]);
        v157 = sub_1B6221F04();
        v159 = v158;
        v112(v156, v154);
        v222(v147, v148);
        v160 = sub_1B602EEB0(v157, v159, &v239);

        *(v155 + 4) = v160;
        *(v155 + 12) = 2080;
        v161 = v220;
        sub_1B621D334();
        v162 = v236;
        v163 = sub_1B6221F04();
        v165 = v164;
        v112(v156, v162);
        v166 = v161;
        v167 = v222;
        v222(v166, v148);
        v168 = sub_1B602EEB0(v163, v165, &v239);

        *(v155 + 14) = v168;
        *(v155 + 22) = 2080;
        v237 = *&v221;
        LOBYTE(v238) = v218;
        v169 = WeatherInterpolationOptions.Stride.description.getter();
        v171 = sub_1B602EEB0(v169, v170, &v239);

        *(v155 + 24) = v171;
        v172 = v232;
        _os_log_impl(&dword_1B6020000, v232, v231, "Successfully interpolated for dateInterval.start: %s, dateInterval.end: %s, stride: %s", v155, 0x20u);
        v173 = v233;
        swift_arrayDestroy();
        MEMORY[0x1B8C91C90](v173, -1, -1);
        MEMORY[0x1B8C91C90](v155, -1, -1);

        v112(v228, v236);
        v167(v215, v148);
      }

      else
      {

        v201 = v222;
        v222(v150, v148);
        v201(v147, v148);
        v112(v228, v154);
        v201(v110, v148);
      }

      return v108;
    }

    v174 = v216;
    v175 = v110;
    v176 = v226;
    v177 = v212;
    v212(v216, v110, v226);
    v178 = v217;
    v177(v217, v110, v176);
    v179 = sub_1B6220B14();
    v180 = sub_1B62217E4();
    v181 = os_log_type_enabled(v179, v180);
    v182 = v236;
    if (v181)
    {
      v183 = swift_slowAlloc();
      v233 = swift_slowAlloc();
      v239 = v233;
      *v183 = 136315650;
      v184 = v235;
      LODWORD(v232) = v180;
      sub_1B621D354();
      v230 = sub_1B60C8740(&qword_1EDAB0D70, MEMORY[0x1E6969530]);
      v231 = v179;
      v185 = sub_1B6221F04();
      v187 = v186;
      v112(v184, v182);
      v188 = v222;
      v222(v174, v176);
      v189 = sub_1B602EEB0(v185, v187, &v239);

      *(v183 + 4) = v189;
      *(v183 + 12) = 2080;
      sub_1B621D334();
      v190 = v236;
      v191 = sub_1B6221F04();
      v193 = v192;
      v112(v184, v190);
      v188(v178, v176);
      v194 = v188;
      v195 = sub_1B602EEB0(v191, v193, &v239);

      *(v183 + 14) = v195;
      *(v183 + 22) = 2080;
      v237 = *&v221;
      LOBYTE(v238) = v218;
      v196 = WeatherInterpolationOptions.Stride.description.getter();
      v198 = sub_1B602EEB0(v196, v197, &v239);

      *(v183 + 24) = v198;
      v199 = v231;
      _os_log_impl(&dword_1B6020000, v231, v232, "Failed to interpolate for dateInterval.start: %s, dateInterval.end: %s, stride: %s", v183, 0x20u);
      v200 = v233;
      swift_arrayDestroy();
      MEMORY[0x1B8C91C90](v200, -1, -1);
      MEMORY[0x1B8C91C90](v183, -1, -1);

      v112(v228, v190);
      v194(v215, v176);
    }

    else
    {

      v203 = v222;
      v222(v178, v176);
      v203(v174, v176);
      v112(v228, v182);
      v203(v175, v176);
    }

    return 0;
  }

  (v36[4])(v50, v53, v35);
  v93 = v36;
  if (qword_1EDAB3D80 != -1)
  {
    swift_once();
  }

  v94 = sub_1B6220B34();
  __swift_project_value_buffer(v94, qword_1EDAC2AB0);
  v227 = v36[2];
  (v227)(v47, v50, v35);
  v95 = sub_1B6220B14();
  v96 = sub_1B62217F4();
  if (os_log_type_enabled(v95, v96))
  {
    v97 = swift_slowAlloc();
    v98 = swift_slowAlloc();
    v226 = v50;
    v234 = v93;
    v99 = v98;
    v239 = v98;
    *v97 = 141558531;
    *(v97 + 4) = 1752392040;
    *(v97 + 12) = 2081;
    v237 = a5;
    v238 = a6;
    type metadata accessor for CLLocationCoordinate2D(0);
    v100 = sub_1B6221234();
    v102 = sub_1B602EEB0(v100, v101, &v239);

    *(v97 + 14) = v102;
    *(v97 + 22) = 2080;
    sub_1B60C8740(&qword_1EDAB0D70, MEMORY[0x1E6969530]);
    v103 = sub_1B6221F04();
    v105 = v104;
    v235 = v234[1];
    (v235)(v47, v35);
    v106 = sub_1B602EEB0(v103, v105, &v239);

    *(v97 + 24) = v106;
    _os_log_impl(&dword_1B6020000, v95, v96, "Attempting to interpolate current weather; location=%{private,mask.hash}s, date: %s", v97, 0x20u);
    swift_arrayDestroy();
    v50 = v226;
    MEMORY[0x1B8C91C90](v99, -1, -1);
    MEMORY[0x1B8C91C90](v97, -1, -1);
  }

  else
  {

    v235 = v93[1];
    (v235)(v47, v35);
  }

  v117 = v231[3].isa;
  v118 = v231[4].isa;
  __swift_project_boxed_opaque_existential_1(v231, v117);
  v119 = v222;
  (*(v118 + 1))(v232, v50, v233, v117, v118, a5, a6);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v119, 1, v230);
  v121 = v221;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B6037288(v119, &qword_1EB924E80);
    (v227)(v121, v50, v35);
    v122 = sub_1B6220B14();
    v123 = sub_1B62217E4();
    if (os_log_type_enabled(v122, v123))
    {
      v124 = swift_slowAlloc();
      v125 = swift_slowAlloc();
      v237 = *&v125;
      *v124 = 136315138;
      sub_1B60C8740(&qword_1EDAB0D70, MEMORY[0x1E6969530]);
      v126 = sub_1B6221F04();
      v127 = v35;
      v129 = v128;
      v130 = v121;
      v131 = v235;
      (v235)(v130, v127);
      v132 = sub_1B602EEB0(v126, v129, &v237);

      *(v124 + 4) = v132;
      _os_log_impl(&dword_1B6020000, v122, v123, "Failed to interpolate for date: %s", v124, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v125);
      MEMORY[0x1B8C91C90](v125, -1, -1);
      MEMORY[0x1B8C91C90](v124, -1, -1);

      v131(v50, v127);
    }

    else
    {

      v202 = v235;
      (v235)(v121, v35);
      v202(v50, v35);
    }

    return 0;
  }

  sub_1B60C86E8();
  v133 = v218;
  (v227)(v218, v50, v35);
  v134 = sub_1B6220B14();
  v135 = sub_1B62217F4();
  if (os_log_type_enabled(v134, v135))
  {
    v136 = swift_slowAlloc();
    v137 = v35;
    v138 = swift_slowAlloc();
    v237 = *&v138;
    *v136 = 136315138;
    sub_1B60C8740(&qword_1EDAB0D70, MEMORY[0x1E6969530]);
    v139 = sub_1B6221F04();
    v141 = v140;
    v142 = v133;
    v143 = v235;
    (v235)(v142, v137);
    v144 = sub_1B602EEB0(v139, v141, &v237);

    *(v136 + 4) = v144;
    _os_log_impl(&dword_1B6020000, v134, v135, "Successfuly interpolated for date: %s", v136, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v138);
    v145 = v138;
    v35 = v137;
    MEMORY[0x1B8C91C90](v145, -1, -1);
    MEMORY[0x1B8C91C90](v136, -1, -1);

    v146 = v143;
  }

  else
  {

    v146 = v235;
    (v235)(v133, v35);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924950);
  v108 = swift_allocObject();
  *(v108 + 16) = xmmword_1B6225510;
  sub_1B60C86E8();
  v146(v50, v35);
  return v108;
}

uint64_t sub_1B60C7AF4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9251C8);
  sub_1B62209F4();
  v0 = sub_1B62208D4();
  v1 = sub_1B6220964();

  return v1;
}

uint64_t sub_1B60C7C54@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  sub_1B6220534();

  sub_1B6220884();

  *a2 = v3;
  return sub_1B6220784();
}

void sub_1B60C7D04(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B621D8F4();
  v5 = *(v4 - 8);
  v30 = v4;
  v31 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v7 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  if (v8)
  {
    v9 = type metadata accessor for WeatherClock();
    v29[1] = v31 + 32;
    v29[2] = v9;
    v29[0] = v31 + 40;
    for (i = a1 + 40; ; i += 24)
    {
      v32 = v8;
      v34 = 0;
      v35 = 0xE000000000000000;
      sub_1B6221B34();
      MEMORY[0x1B8C90530](0x6E6F697461636F4CLL, 0xEB000000003A4449);
      sub_1B6221704();
      MEMORY[0x1B8C90530](58, 0xE100000000000000);
      sub_1B6221704();
      v12 = v34;
      v11 = v35;
      v13 = v7;
      static WeatherClock.date.getter();
      swift_beginAccess();
      swift_isUniquelyReferenced_nonNull_native();
      v33 = *(a2 + 72);
      v14 = v33;
      v15 = a2;
      *(a2 + 72) = 0x8000000000000000;
      v16 = sub_1B604EF94(v12, v11);
      if (__OFADD__(v14[2], (v17 & 1) == 0))
      {
        break;
      }

      v18 = v16;
      v19 = v17;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924860);
      if (sub_1B6221C44())
      {
        v20 = sub_1B604EF94(v12, v11);
        if ((v19 & 1) != (v21 & 1))
        {
          goto LABEL_15;
        }

        v18 = v20;
      }

      v22 = v33;
      if (v19)
      {
        v23 = v33[7] + *(v31 + 72) * v18;
        v7 = v13;
        (*(v31 + 40))(v23, v13, v30);
      }

      else
      {
        v33[(v18 >> 6) + 8] |= 1 << v18;
        v24 = (v22[6] + 16 * v18);
        *v24 = v12;
        v24[1] = v11;
        v25 = v22[7] + *(v31 + 72) * v18;
        v7 = v13;
        (*(v31 + 32))(v25, v13, v30);
        v26 = v22[2];
        v27 = __OFADD__(v26, 1);
        v28 = v26 + 1;
        if (v27)
        {
          goto LABEL_14;
        }

        v22[2] = v28;
      }

      a2 = v15;
      *(v15 + 72) = v22;

      swift_endAccess();
      v8 = v32 - 1;
      if (v32 == 1)
      {
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    sub_1B6221FD4();
    __break(1u);
  }
}

uint64_t sub_1B60C8024()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 32);

  return v0;
}

uint64_t sub_1B60C8064()
{
  sub_1B60C8024();

  return MEMORY[0x1EEE6BDC0](v0, 88, 7);
}

unint64_t sub_1B60C8100(double a1, double a2)
{
  sub_1B6222074();
  sub_1B60A41C0(a1, a2);
  v4 = sub_1B62220A4();

  return sub_1B60C8264(v4, a1, a2);
}

unint64_t sub_1B60C8188(uint64_t a1)
{
  sub_1B6222074();
  sub_1B621D944();
  sub_1B60C8740(&qword_1EB9251E8, MEMORY[0x1E69695A8]);
  sub_1B6221154();
  v2 = sub_1B62220A4();

  return sub_1B60C82E0(a1, v2);
}

unint64_t sub_1B60C8264(uint64_t a1, double a2, double a3)
{
  v4 = -1 << *(v3 + 32);
  result = a1 & ~v4;
  if ((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      v7 = (*(v3 + 48) + 24 * result);
      v8 = v7[1];
      v9 = *v7 == a2;
      if (v8 == a3 && v9)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1B60C82E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CacheObservationToken() - 8;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = ~(-1 << *(v2 + 32));
  for (i = a2 & v7; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v7)
  {
    sub_1B60C8788();
    v9 = _s13WeatherDaemon21CacheObservationTokenV2eeoiySbAC_ACtFZ_0();
    sub_1B60C87E0(v6, type metadata accessor for CacheObservationToken);
    if (v9)
    {
      break;
    }
  }

  return i;
}

void sub_1B60C843C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = OUTLINED_FUNCTION_2_17(a1, a5 + 8 * (a1 >> 6));
  v8 = (*(v7 + 48) + 16 * v6);
  *v8 = v9;
  v8[1] = v10;
  sub_1B60273A4(v11, *(v7 + 56) + 40 * v6);
  OUTLINED_FUNCTION_36_1();
  if (v13)
  {
    __break(1u);
  }

  else
  {
    *(a5 + 16) = v12;
  }
}

uint64_t sub_1B60C8498(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = OUTLINED_FUNCTION_2_17(a1, a7 + 8 * (a1 >> 6));
  v9 = (v8[6] + 16 * result);
  *v9 = v10;
  v9[1] = v11;
  v12 = v8[7] + 32 * result;
  *v12 = v13;
  *(v12 + 8) = v14;
  *(v12 + 16) = v15;
  *(v12 + 24) = v16 & 1;
  *(v12 + 25) = v17 & 1;
  v18 = v8[2];
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    v8[2] = v20;
  }

  return result;
}

void sub_1B60C84F8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_2_17(a1, a4 + 8 * (a1 >> 6));
  v5 = type metadata accessor for CacheObservationToken();
  OUTLINED_FUNCTION_0(v5);
  sub_1B60C86E8();
  v6 = type metadata accessor for WeatherDataObserver(0);
  OUTLINED_FUNCTION_0(v6);
  sub_1B60C86E8();
  OUTLINED_FUNCTION_36_1();
  if (v8)
  {
    __break(1u);
  }

  else
  {
    *(a4 + 16) = v7;
  }
}

uint64_t sub_1B60C8608(uint64_t *a1, NSObject *a2)
{
  v5 = *(type metadata accessor for WeatherInterpolationOptions() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = sub_1B621DB64();
  OUTLINED_FUNCTION_0(v8);
  return sub_1B60C564C(a1, a2, (v2 + v6), v2 + ((v6 + v7 + *(v9 + 80)) & ~*(v9 + 80)), *(v2 + 16), *(v2 + 24));
}

uint64_t sub_1B60C86E8()
{
  OUTLINED_FUNCTION_37();
  v1(0);
  OUTLINED_FUNCTION_9();
  v2 = OUTLINED_FUNCTION_5_2();
  v3(v2);
  return v0;
}

uint64_t sub_1B60C8740(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B60C8788()
{
  OUTLINED_FUNCTION_37();
  v1(0);
  OUTLINED_FUNCTION_9();
  v2 = OUTLINED_FUNCTION_5_2();
  v3(v2);
  return v0;
}

uint64_t sub_1B60C87E0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_9();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t CLLocationCoordinate2D.write(to:)()
{
  result = sub_1B6220854();
  if (!v0)
  {
    return sub_1B6220854();
  }

  return result;
}

double static CLLocationCoordinate2D.read(from:)()
{
  sub_1B6220844();
  if (!v0)
  {
    v1 = v3;
    sub_1B6220844();
  }

  return v1;
}

void sub_1B60C8938(uint64_t a1@<X8>)
{
  v3 = static CLLocationCoordinate2D.read(from:)();
  if (!v1)
  {
    *a1 = v3;
    *(a1 + 8) = v4;
  }
}

uint64_t static AvailableDataSetsDescriptor.name.getter()
{
  OUTLINED_FUNCTION_2_5();
  sub_1B6220784();
  return OUTLINED_FUNCTION_1_3();
}

uint64_t static AvailableDataSetsDescriptor.name.setter(uint64_t a1, void *a2)
{
  OUTLINED_FUNCTION_3_5();
  qword_1EB9251F0 = a1;
  off_1EB9251F8 = a2;
}

uint64_t (*static AvailableDataSetsDescriptor.name.modify())()
{
  OUTLINED_FUNCTION_1_3();
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1B60C8A60@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v2 = off_1EB9251F8;
  *a1 = qword_1EB9251F0;
  a1[1] = v2;
  return sub_1B6220784();
}

uint64_t sub_1B60C8AB0(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  swift_beginAccess();
  qword_1EB9251F0 = v2;
  off_1EB9251F8 = v1;
  sub_1B6220784();
}

uint64_t sub_1B60C8B14()
{
  v0 = qword_1EB9243F0;
  v1 = off_1EB9243F8;
  sub_1B6220784();
  MEMORY[0x1B8C90530](v0, v1);

  qword_1EDAAEC50 = 0x2E322E312E30;
  qword_1EDAAEC58 = 0xE600000000000000;
  return result;
}

uint64_t *sub_1B60C8B90()
{
  if (qword_1EDAAEC48 != -1)
  {
    OUTLINED_FUNCTION_0_21();
  }

  return &qword_1EDAAEC50;
}

uint64_t static AvailableDataSetsDescriptor.version.getter()
{
  if (qword_1EDAAEC48 != -1)
  {
    OUTLINED_FUNCTION_0_21();
  }

  OUTLINED_FUNCTION_2_5();
  sub_1B6220784();
  return OUTLINED_FUNCTION_1_3();
}

uint64_t static AvailableDataSetsDescriptor.version.setter(uint64_t a1, uint64_t a2)
{
  if (qword_1EDAAEC48 != -1)
  {
    OUTLINED_FUNCTION_0_21();
  }

  OUTLINED_FUNCTION_3_5();
  qword_1EDAAEC50 = a1;
  qword_1EDAAEC58 = a2;
}

uint64_t (*static AvailableDataSetsDescriptor.version.modify())()
{
  if (qword_1EDAAEC48 != -1)
  {
    OUTLINED_FUNCTION_0_21();
  }

  OUTLINED_FUNCTION_1_3();
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_1B60C8D10@<X0>(void *a1@<X8>)
{
  sub_1B60C8B90();
  swift_beginAccess();
  v2 = qword_1EDAAEC58;
  *a1 = qword_1EDAAEC50;
  a1[1] = v2;
  return sub_1B6220784();
}

uint64_t sub_1B60C8D64(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  sub_1B6220784();
  sub_1B60C8B90();
  swift_beginAccess();
  qword_1EDAAEC50 = v2;
  qword_1EDAAEC58 = v1;
}

_BYTE *storeEnumTagSinglePayload for AvailableDataSetsDescriptor(_BYTE *result, int a2, int a3)
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

uint64_t sub_1B60C8E7C(uint64_t a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *a6;
  v10 = *(a6 + 8);
  if (qword_1EDAB3D80 != -1)
  {
    swift_once();
  }

  v11 = sub_1B6220B34();
  __swift_project_value_buffer(v11, qword_1EDAC2AB0);
  v12 = sub_1B6220B14();
  v13 = sub_1B62217F4();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v28 = v9;
    v15 = swift_slowAlloc();
    v29[0] = v15;
    *v14 = 141558275;
    *(v14 + 4) = 1752392040;
    *(v14 + 12) = 2081;
    v16 = CLLocationCoordinate2D.id.getter();
    v18 = sub_1B602EEB0(v16, v17, v29);

    *(v14 + 14) = v18;
    _os_log_impl(&dword_1B6020000, v12, v13, "Fetching monthly weather statistics for location: %{private,mask.hash}s", v14, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v15);
    v19 = v15;
    v9 = v28;
    MEMORY[0x1B8C91C90](v19, -1, -1);
    MEMORY[0x1B8C91C90](v14, -1, -1);
  }

  v20 = sub_1B60C90A0();
  v22 = v21;
  v23 = sub_1B60C90A0();
  v29[0] = a1;
  *&v29[1] = a2;
  *&v29[2] = a3;
  v29[3] = v20;
  v29[4] = v22;
  v29[5] = v23;
  v29[6] = v24;
  v29[7] = v9;
  v30 = v10;
  sub_1B6220784();
  sub_1B610CEB8();
  v26 = v25;
  sub_1B60C9208(v29);
  return v26;
}

uint64_t sub_1B60C90A0()
{
  if (*(*(v0 + 16) + OBJC_IVAR____TtC13WeatherDaemon9WDSClient_version))
  {
    return sub_1B6221F04();
  }

  sub_1B6038AC8();
  v1 = sub_1B62213B4();
  v3 = v2;
  if (sub_1B62212E4() > 1)
  {
    return v1;
  }

  result = sub_1B62212E4();
  if (!__OFSUB__(2, result))
  {
    v5 = sub_1B62213A4();
    sub_1B6220784();
    MEMORY[0x1B8C90530](v1, v3);

    return v5;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B60C91AC()
{

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t sub_1B60C925C@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924660);
  OUTLINED_FUNCTION_0(v2);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v15 - v4;
  v6 = type metadata accessor for Metadata();
  v7 = OUTLINED_FUNCTION_0(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_14();
  v10 = v9 - v8;
  sub_1B621EE34();
  v11 = sub_1B621F0D4();
  result = __swift_getEnumTagSinglePayload(v5, 1, v11);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_1B610A5B4(v5);
    (*(*(v11 - 8) + 8))(v5, v11);
    v13 = sub_1B60C93D8();
    sub_1B621EE14();
    v14 = type metadata accessor for DailyWeatherStatistics();
    sub_1B621D884();
    result = sub_1B603D8D8(v10, a1);
    *(a1 + *(v14 + 20)) = v13;
  }

  return result;
}

uint64_t sub_1B60C93D8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925200);
  OUTLINED_FUNCTION_0(v0);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v1);
  v3 = v15 - v2;
  result = sub_1B621EE44();
  if ((result & 0x80000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    if (!result)
    {
      return MEMORY[0x1E69E7CC0];
    }

    v6 = 0;
    v7 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1B621EE24();
      sub_1B60C9574(v3, v15);
      sub_1B602724C(v3, &qword_1EB925200);
      v18 = v15[0];
      v19 = v15[1];
      v20[0] = *v16;
      *(v20 + 9) = *&v16[9];
      if ((v17 & 1) == 0)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1B609B6A4();
          v7 = v13;
        }

        v8 = *(v7 + 16);
        if (v8 >= *(v7 + 24) >> 1)
        {
          sub_1B609B6A4();
          v7 = v14;
        }

        *(v7 + 16) = v8 + 1;
        v9 = (v7 + (v8 << 6));
        v10 = v18;
        v11 = v19;
        v12 = v20[0];
        *(v9 + 73) = *(v20 + 9);
        v9[3] = v11;
        v9[4] = v12;
        v9[2] = v10;
      }

      ++v6;
    }

    while (v5 != v6);
    return v7;
  }

  return result;
}

uint64_t sub_1B60C9574@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925208);
  OUTLINED_FUNCTION_0(v3);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v4);
  v44 = &v42 - v5;
  v43 = sub_1B6220374();
  OUTLINED_FUNCTION_2();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_14();
  v42 = v10 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925210);
  v12 = OUTLINED_FUNCTION_0(v11);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v42 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925200);
  OUTLINED_FUNCTION_0(v18);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v42 - v20;
  v22 = sub_1B621E1D4();
  OUTLINED_FUNCTION_2();
  v24 = v23;
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_14();
  v28 = v27 - v26;
  sub_1B60C99C4(v45, v21, &qword_1EB925200);
  if (__swift_getEnumTagSinglePayload(v21, 1, v22) == 1)
  {
    result = sub_1B602724C(v21, &qword_1EB925200);
    LOBYTE(v46) = 1;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *(a2 + 41) = 0u;
    *(a2 + 57) = 1;
  }

  else
  {
    v45 = v24;
    (*(v24 + 32))(v28, v21, v22);
    v30 = sub_1B621E1A4();
    sub_1B621E1B4();
    sub_1B60C99C4(v17, v14, &qword_1EB925210);
    v31 = v43;
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v14, 1, v43);
    if (EnumTagSinglePayload == 1)
    {
      sub_1B602724C(v17, &qword_1EB925210);
      sub_1B602724C(v14, &qword_1EB925210);
      v33 = 0.0;
      v34 = 0.0;
    }

    else
    {
      v35 = v42;
      v36 = (*(v7 + 32))(v42, v14, v31);
      v33 = MEMORY[0x1B8C8F580](v36);
      v37 = MEMORY[0x1B8C8F570]();
      (*(v7 + 8))(v35, v31);
      sub_1B602724C(v17, &qword_1EB925210);
      v34 = v37;
    }

    v38 = v44;
    sub_1B621E1C4();
    sub_1B6109C7C(&v46, v38);
    sub_1B602724C(v38, &qword_1EB925208);
    result = (*(v45 + 8))(v28, v22);
    v39 = v47;
    v40 = v48;
    v41 = v46;
    *a2 = v30;
    *(a2 + 8) = v33;
    *(a2 + 16) = v34;
    *(a2 + 24) = EnumTagSinglePayload == 1;
    *(a2 + 32) = v41;
    *(a2 + 48) = v39;
    *(a2 + 56) = v40;
  }

  return result;
}

uint64_t sub_1B60C99C4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B60C9A2C()
{
  sub_1B6222074();
  MEMORY[0x1B8C912A0](0);
  return sub_1B62220A4();
}

uint64_t sub_1B60C9A74()
{
  sub_1B6222074();
  MEMORY[0x1B8C912A0](0);
  return sub_1B62220A4();
}

void sub_1B60C9AB4()
{
  if (*(v0 + 8))
  {
    if (*(v0 + 8) == 1)
    {
      v1 = v0;
      v2 = *v0;
      swift_getObjectType();
      sub_1B6221914();
      *v1 = v2;
      *(v1 + 8) = 0;
    }

    else
    {
      if (qword_1EDAB3D80 != -1)
      {
        swift_once();
      }

      v3 = sub_1B6220B34();
      __swift_project_value_buffer(v3, qword_1EDAC2AB0);
      oslog = sub_1B6220B14();
      v4 = sub_1B62217E4();
      if (os_log_type_enabled(oslog, v4))
      {
        v5 = swift_slowAlloc();
        *v5 = 0;
        _os_log_impl(&dword_1B6020000, oslog, v4, "Not observing, but asked to suspend observation.", v5, 2u);
        MEMORY[0x1B8C91C90](v5, -1, -1);
      }
    }
  }
}

void sub_1B60C9BD8()
{
  if (*(v0 + 8))
  {
    if (*(v0 + 8) != 1)
    {
      if (qword_1EDAB3D80 != -1)
      {
        swift_once();
      }

      v1 = sub_1B6220B34();
      __swift_project_value_buffer(v1, qword_1EDAC2AB0);
      oslog = sub_1B6220B14();
      v2 = sub_1B62217E4();
      if (os_log_type_enabled(oslog, v2))
      {
        v3 = swift_slowAlloc();
        *v3 = 0;
        _os_log_impl(&dword_1B6020000, oslog, v2, "Not observing, but asked to resume observation.", v3, 2u);
        MEMORY[0x1B8C91C90](v3, -1, -1);
      }
    }
  }

  else
  {
    v4 = v0;
    v5 = *v0;
    swift_getObjectType();
    sub_1B6221904();
    *v4 = v5;
    *(v4 + 8) = 1;
  }
}

uint64_t sub_1B60C9D00(uint64_t a1, char a2)
{
  if (!a2)
  {
    return 0xD000000000000015;
  }

  if (a2 == 1)
  {
    return 0x6E6976726573624FLL;
  }

  return 0x6573624F20746F4ELL;
}

uint64_t sub_1B60C9D78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3 + OBJC_IVAR____TtC13WeatherDaemon23WeatherDataSentinelFile_observationState;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 2;
  v8 = OBJC_IVAR____TtC13WeatherDaemon23WeatherDataSentinelFile_fileURL;
  sub_1B621D634();
  OUTLINED_FUNCTION_9();
  (*(v9 + 32))(v3 + v8, a1);
  *(v3 + OBJC_IVAR____TtC13WeatherDaemon23WeatherDataSentinelFile_queue) = a2;
  v10 = OBJC_IVAR____TtC13WeatherDaemon23WeatherDataSentinelFile_eventMask;
  sub_1B62218B4();
  OUTLINED_FUNCTION_9();
  (*(v11 + 32))(v3 + v10, a3);
  return v3;
}

uint64_t WeatherDataSentinelFile.deinit()
{
  v1 = (v0 + OBJC_IVAR____TtC13WeatherDaemon23WeatherDataSentinelFile_observationState);
  os_unfair_lock_lock((v0 + OBJC_IVAR____TtC13WeatherDaemon23WeatherDataSentinelFile_observationState));
  sub_1B60CACB0(&v1[2]);
  os_unfair_lock_unlock(v1);
  v2 = OBJC_IVAR____TtC13WeatherDaemon23WeatherDataSentinelFile_fileURL;
  sub_1B621D634();
  OUTLINED_FUNCTION_9();
  (*(v3 + 8))(v0 + v2);
  sub_1B60C9F34(&v1[2]);

  v4 = OBJC_IVAR____TtC13WeatherDaemon23WeatherDataSentinelFile_eventMask;
  sub_1B62218B4();
  OUTLINED_FUNCTION_9();
  (*(v5 + 8))(v0 + v4);
  return v0;
}

uint64_t WeatherDataSentinelFile.__deallocating_deinit()
{
  WeatherDataSentinelFile.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t type metadata accessor for WeatherDataSentinelFile()
{
  result = qword_1EDAB0C28;
  if (!qword_1EDAB0C28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B60CA010()
{
  result = sub_1B621D634();
  if (v1 <= 0x3F)
  {
    result = sub_1B62218B4();
    if (v2 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_13WeatherDaemon0A16DataSentinelFileC16ObservationState33_5084CA2EB35E227A781A2AFFEB9A96ACLLO(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t sub_1B60CA128(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 9))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 8);
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

uint64_t sub_1B60CA168(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_1B60CA1AC(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

void sub_1B60CA1D4(uint64_t (**a1)(uint64_t a1), void (*a2)(void, void))
{
  v5 = (v2 + OBJC_IVAR____TtC13WeatherDaemon23WeatherDataSentinelFile_observationState);
  os_unfair_lock_lock((v2 + OBJC_IVAR____TtC13WeatherDaemon23WeatherDataSentinelFile_observationState));
  sub_1B60CA258(&v5[2], v2, a1, a2, &v6);
  os_unfair_lock_unlock(v5);
}

void sub_1B60CA258(uint64_t a1, uint64_t a2, uint64_t (**a3)(uint64_t a1), void (*a4)(void, void), void *a5)
{
  v44 = a5;
  v45 = a3;
  v8 = sub_1B6220FE4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1B6221034();
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a1 + 8))
  {
    v16 = 0x80000001B623CD50;
    v17 = 0xD000000000000015;
    goto LABEL_5;
  }

  if (*(a1 + 8) == 1)
  {
    v16 = 0xE900000000000067;
    v17 = 0x6E6976726573624FLL;
LABEL_5:
    if (qword_1EDAB3D80 != -1)
    {
      swift_once();
    }

    v18 = sub_1B6220B34();
    __swift_project_value_buffer(v18, qword_1EDAC2AB0);
    sub_1B6220784();
    v19 = sub_1B6220B14();
    v20 = sub_1B62217E4();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      aBlock = v22;
      *v21 = 136446210;
      v23 = sub_1B602EEB0(v17, v16, &aBlock);

      *(v21 + 4) = v23;
      _os_log_impl(&dword_1B6020000, v19, v20, "Asked to start observing while already observing, state=%{public}s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v22);
      MEMORY[0x1B8C91C90](v22, -1, -1);
      MEMORY[0x1B8C91C90](v21, -1, -1);
    }

    else
    {
    }

    return;
  }

  v42 = a4;
  v43 = v9;
  v39 = v13;
  v40 = a1;
  v41 = v5;
  v24 = [objc_opt_self() defaultManager];
  sub_1B621D604();
  v25 = sub_1B62211B4();

  v26 = [v24 fileExistsAtPath_];

  if ((v26 & 1) == 0)
  {
    sub_1B60CA868();
  }

  sub_1B621D604();
  sub_1B6221254();

  v27 = sub_1B6220F14();

  v28 = v42;
  if (v27 == -1)
  {
    sub_1B60CAD98();
    v37 = swift_allocError();
    swift_willThrow();
    *v44 = v37;
  }

  else
  {
    sub_1B60CAD30();
    v29 = sub_1B62218C4();
    ObjectType = swift_getObjectType();
    v50 = v45;
    v51 = v28;
    v47 = 1107296256;
    v45 = &v48;
    aBlock = MEMORY[0x1E69E9820];
    v48 = sub_1B6098858;
    v49 = &block_descriptor_1;
    v31 = v27;
    v32 = _Block_copy(&aBlock);

    sub_1B6220FF4();
    v44 = ObjectType;
    sub_1B60CAB3C();
    sub_1B62218D4();
    _Block_release(v32);
    v42 = *(v43 + 8);
    v43 += 8;
    v42(v11, v8);
    v39 = *(v39 + 8);
    (v39)(v15, v12);

    v33 = swift_allocObject();
    swift_weakInit();
    v34 = swift_allocObject();
    *(v34 + 16) = v31;
    *(v34 + 24) = v33;
    v50 = sub_1B60CAD8C;
    v51 = v34;
    aBlock = MEMORY[0x1E69E9820];
    v47 = 1107296256;
    v48 = sub_1B6098858;
    v49 = &block_descriptor_10;
    v35 = _Block_copy(&aBlock);

    sub_1B6220FF4();
    sub_1B60CAB3C();
    sub_1B62218E4();
    _Block_release(v35);
    v42(v11, v8);
    (v39)(v15, v12);

    sub_1B6221904();
    v36 = v40;
    *v40 = v29;
    *(v36 + 8) = 1;
  }
}

uint64_t sub_1B60CA868()
{
  v0 = sub_1B621D8F4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B621D8E4();
  v4 = sub_1B621D7A4();
  v6 = v5;
  (*(v1 + 8))(v3, v0);
  v7 = sub_1B61753E4(v4, v6);
  v9 = v8;
  sub_1B621D724();
  return sub_1B60362A8(v7, v9);
}

uint64_t sub_1B60CAAB4(int a1)
{
  close(a1);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = result + OBJC_IVAR____TtC13WeatherDaemon23WeatherDataSentinelFile_observationState;
    os_unfair_lock_lock((result + OBJC_IVAR____TtC13WeatherDaemon23WeatherDataSentinelFile_observationState));
    swift_unknownObjectRelease();
    *(v2 + 8) = 0;
    *(v2 + 16) = 2;
    os_unfair_lock_unlock(v2);
  }

  return result;
}

uint64_t sub_1B60CAB3C()
{
  sub_1B6220FE4();
  sub_1B60CADEC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924848);
  sub_1B60CAE44();
  return sub_1B6221AA4();
}

void sub_1B60CABF4(void (*a1)(void))
{
  v3 = (v1 + OBJC_IVAR____TtC13WeatherDaemon23WeatherDataSentinelFile_observationState);
  os_unfair_lock_lock((v1 + OBJC_IVAR____TtC13WeatherDaemon23WeatherDataSentinelFile_observationState));
  a1();

  os_unfair_lock_unlock(v3);
}

void sub_1B60CAC50()
{
  v1 = (v0 + OBJC_IVAR____TtC13WeatherDaemon23WeatherDataSentinelFile_observationState);
  os_unfair_lock_lock((v0 + OBJC_IVAR____TtC13WeatherDaemon23WeatherDataSentinelFile_observationState));
  sub_1B60CACB0(&v1[2]);

  os_unfair_lock_unlock(v1);
}

uint64_t sub_1B60CACB0(uint64_t result)
{
  v1 = result;
  if (*(result + 8))
  {
    if (*(result + 8) != 1)
    {
      return result;
    }

    swift_getObjectType();
    sub_1B62218F4();
  }

  else
  {
    swift_getObjectType();
    sub_1B62218F4();
    sub_1B6221904();
  }

  result = swift_unknownObjectRelease();
  *v1 = 0;
  *(v1 + 8) = 2;
  return result;
}

unint64_t sub_1B60CAD30()
{
  result = qword_1EB925280;
  if (!qword_1EB925280)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB925280);
  }

  return result;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1B60CAD98()
{
  result = qword_1EB925288;
  if (!qword_1EB925288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB925288);
  }

  return result;
}

unint64_t sub_1B60CADEC()
{
  result = qword_1EB924840;
  if (!qword_1EB924840)
  {
    sub_1B6220FE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB924840);
  }

  return result;
}

unint64_t sub_1B60CAE44()
{
  result = qword_1EB924850;
  if (!qword_1EB924850)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB924848);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB924850);
  }

  return result;
}

uint64_t sub_1B60CAEA8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924E68);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for WeatherDataSentinelFileError(_BYTE *result, int a2, int a3)
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

unint64_t sub_1B60CAFC0()
{
  result = qword_1EB925290;
  if (!qword_1EB925290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB925290);
  }

  return result;
}

uint64_t sub_1B60CB01C(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = (*a1 & 1) == 0;
  *(v3 + 24) = a3;
  *(v3 + 32) = a2;

  sub_1B60CB084();

  return v3;
}

uint64_t sub_1B60CB084()
{
  sub_1B621DC04();
  sub_1B621DBF4();
  if (qword_1EB924458 != -1)
  {
    swift_once();
  }

  sub_1B621DBE4();

  if (v1 == 1)
  {
    type metadata accessor for Settings.DaemonStore();
    swift_initStaticObject();
    sub_1B60A2A5C();
    sub_1B621DC84();
    return sub_1B60CD0B8();
  }

  return result;
}

uint64_t sub_1B60CB164(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  v7 = v6;
  v14 = *v7;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9252A0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = v41 - v16;
  v18 = type metadata accessor for HourlyWeatherStatistics();
  MEMORY[0x1EEE9AC00](v18);
  v45 = v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = v41 - v21;
  v23 = *(a4 + 8);
  v44 = *a4;
  v47 = a2;
  v48 = v44;
  v43 = v23;
  v49 = v23;
  v46 = a1;
  v24 = sub_1B60CB5C8(a1, a2, a3, &v48);
  v26 = v25;
  if (qword_1EB9244F0 != -1)
  {
    swift_once();
  }

  v27 = sub_1B6220B34();
  __swift_project_value_buffer(v27, qword_1EB942B40);
  sub_1B6220784();
  v28 = sub_1B6220B14();
  v29 = sub_1B62217F4();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v41[1] = v14;
    v42 = a3;
    v31 = v30;
    v32 = v18;
    v33 = swift_slowAlloc();
    v48 = v33;
    *v31 = 141558275;
    *(v31 + 4) = 1752392040;
    *(v31 + 12) = 2081;
    *(v31 + 14) = sub_1B602EEB0(v24, v26, &v48);
    _os_log_impl(&dword_1B6020000, v28, v29, "Attempting to read hourly statistics from cache; key=%{private,mask.hash}s", v31, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v33);
    v34 = v33;
    v18 = v32;
    MEMORY[0x1B8C91C90](v34, -1, -1);
    a3 = v42;
    MEMORY[0x1B8C91C90](v31, -1, -1);
  }

  sub_1B60CB790(v24, v26, v17);
  if (__swift_getEnumTagSinglePayload(v17, 1, v18) == 1)
  {
    sub_1B602724C(v17, &qword_1EB9252A0);
    v48 = v44;
    v49 = v43;
    sub_1B61CC8B4(v46, v47, a3, &v48, a5, a6);
    v35 = swift_allocObject();
    *(v35 + 16) = v24;
    *(v35 + 24) = v26;
    *(v35 + 32) = a5;
    *(v35 + 40) = a6;
    sub_1B6220784();
    v36 = sub_1B62208D4();
    sub_1B6220954();

    v37 = swift_allocObject();
    *(v37 + 16) = v24;
    *(v37 + 24) = v26;
    v38 = sub_1B62208D4();
    v39 = sub_1B6220974();
  }

  else
  {

    sub_1B60CD33C(v17, v22);
    sub_1B60CD3A0(v22, v45);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9252A8);
    swift_allocObject();
    v39 = sub_1B6220994();
    sub_1B60CD404(v22);
  }

  return v39;
}

uint64_t sub_1B60CB5C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 + 8);
  sub_1B6221B34();
  v6 = CLLocationCoordinate2D.cacheKey.getter();

  MEMORY[0x1B8C90530](44, 0xE100000000000000);
  v7 = sub_1B6221F04();
  MEMORY[0x1B8C90530](v7);

  MEMORY[0x1B8C90530](44, 0xE100000000000000);
  v8 = sub_1B6221F04();
  MEMORY[0x1B8C90530](v8);

  MEMORY[0x1B8C90530](44, 0xE100000000000000);
  v9 = sub_1B6195268(a1);
  MEMORY[0x1B8C90530](v9);

  MEMORY[0x1B8C90530](44, 0xE100000000000000);
  if (v5)
  {
    v10 = 0xE300000000000000;
    v11 = 7104878;
  }

  else
  {
    v11 = sub_1B6221F04();
    v10 = v12;
  }

  MEMORY[0x1B8C90530](v11, v10);

  MEMORY[0x1B8C90530](44, 0xE100000000000000);
  v13 = sub_1B60701A0();
  MEMORY[0x1B8C90530](v13);

  return v6;
}

uint64_t sub_1B60CB790@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v44 = a3;
  v43 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924B50);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v40 - v5;
  v7 = sub_1B6220BD4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EB9244F0 != -1)
  {
    swift_once();
  }

  v11 = sub_1B6220B34();
  __swift_project_value_buffer(v11, qword_1EB942B40);
  sub_1B6220784();
  v12 = sub_1B6220B14();
  v13 = sub_1B62217F4();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v41 = v7;
    v42 = v8;
    v16 = v15;
    v50 = v15;
    *v14 = 141558275;
    *(v14 + 4) = 1752392040;
    *(v14 + 12) = 2081;
    *(v14 + 14) = sub_1B602EEB0(v43, a2, &v50);
    _os_log_impl(&dword_1B6020000, v12, v13, "Attempting to retrieve hourly statistics from cache; key=%{private,mask.hash}s", v14, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v16);
    v17 = v16;
    v7 = v41;
    v8 = v42;
    MEMORY[0x1B8C91C90](v17, -1, -1);
    MEMORY[0x1B8C91C90](v14, -1, -1);
  }

  if (*(v45 + 16) == 1)
  {
    if (sub_1B60A059C())
    {
      sub_1B6220D44();
      v53 = MEMORY[0x1E69E6158];
      v54 = MEMORY[0x1E69D62D8];
      v50 = v43;
      v51 = a2;
      sub_1B6220784();
      sub_1B6220CD4();
      __swift_destroy_boxed_opaque_existential_1(&v50);
      v18 = sub_1B6220DD4();
      __swift_storeEnumTagSinglePayload(v6, 1, 1, v18);
      sub_1B6220D14();

      sub_1B602724C(v6, &qword_1EB924B50);
      (*(v8 + 8))(v10, v7);
      v25 = v46[0];
      if (v46[0])
      {
        v26 = v47;
        v27 = v48;
        v50 = v46[0];
        v51 = v46[1];
        v52 = v46[2];
        v53 = v46[3];
        v54 = v47;
        v55 = v48;
        v45 = v49;
        v56 = v49;
        sub_1B6220784();
        v28 = sub_1B6220B14();
        v29 = sub_1B62217F4();

        if (os_log_type_enabled(v28, v29))
        {
          v30 = swift_slowAlloc();
          v42 = v26;
          v31 = v30;
          v32 = swift_slowAlloc();
          v41 = v27;
          v33 = v32;
          v46[0] = v32;
          *v31 = 141558275;
          *(v31 + 4) = 1752392040;
          *(v31 + 12) = 2081;
          *(v31 + 14) = sub_1B602EEB0(v43, a2, v46);
          _os_log_impl(&dword_1B6020000, v28, v29, "Successfully retrieved hourly statistics from cache; key=%{private,mask.hash}s", v31, 0x16u);
          __swift_destroy_boxed_opaque_existential_1(v33);
          MEMORY[0x1B8C91C90](v33, -1, -1);
          MEMORY[0x1B8C91C90](v31, -1, -1);
        }

        if (qword_1EDAAF1F0 != -1)
        {
          swift_once();
        }

        sub_1B61DAEC0();

        return sub_1B60729F4(v25);
      }

      else
      {
        sub_1B6220784();
        v36 = sub_1B6220B14();
        v37 = sub_1B62217F4();

        if (os_log_type_enabled(v36, v37))
        {
          v38 = swift_slowAlloc();
          v39 = swift_slowAlloc();
          v50 = v39;
          *v38 = 141558275;
          *(v38 + 4) = 1752392040;
          *(v38 + 12) = 2081;
          *(v38 + 14) = sub_1B602EEB0(v43, a2, &v50);
          _os_log_impl(&dword_1B6020000, v36, v37, "Could not find hourly statistics in cache; key=%{private,mask.hash}s", v38, 0x16u);
          __swift_destroy_boxed_opaque_existential_1(v39);
          MEMORY[0x1B8C91C90](v39, -1, -1);
          MEMORY[0x1B8C91C90](v38, -1, -1);
        }

        v34 = type metadata accessor for HourlyWeatherStatistics();
        return __swift_storeEnumTagSinglePayload(v44, 1, 1, v34);
      }
    }

    v19 = sub_1B6220B14();
    v20 = sub_1B62217E4();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      v22 = "Cannot retrieve cached hourly statistics due to missing store";
      goto LABEL_13;
    }
  }

  else
  {
    v19 = sub_1B6220B14();
    v20 = sub_1B62217E4();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      v22 = "Hourly statistics cache is disabled - returning nil";
LABEL_13:
      _os_log_impl(&dword_1B6020000, v19, v20, v22, v21, 2u);
      MEMORY[0x1B8C91C90](v21, -1, -1);
    }
  }

  v23 = type metadata accessor for HourlyWeatherStatistics();
  v24 = v44;

  return __swift_storeEnumTagSinglePayload(v24, 1, 1, v23);
}

uint64_t sub_1B60CBFF8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = type metadata accessor for HourlyWeatherStatistics();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EB9244F0 != -1)
  {
    swift_once();
  }

  v11 = sub_1B6220B34();
  __swift_project_value_buffer(v11, qword_1EB942B40);
  sub_1B6220784();
  v12 = sub_1B6220B14();
  v13 = sub_1B62217F4();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v18[1] = a2;
    v16 = v15;
    v19 = v15;
    *v14 = 141558275;
    *(v14 + 4) = 1752392040;
    *(v14 + 12) = 2081;
    *(v14 + 14) = sub_1B602EEB0(a3, a4, &v19);
    _os_log_impl(&dword_1B6020000, v12, v13, "Successfully fetched hourly statistics. key=%{private,mask.hash}s", v14, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v16);
    MEMORY[0x1B8C91C90](v16, -1, -1);
    MEMORY[0x1B8C91C90](v14, -1, -1);
  }

  sub_1B60CC22C(a1, a3, a4);
  sub_1B60CD3A0(a1, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9252A8);
  swift_allocObject();
  return sub_1B6220994();
}

void sub_1B60CC22C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924600);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v48 - v9;
  v11 = sub_1B621D8F4();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for HourlyWeatherStatistics();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v3 + 16) != 1)
  {
    if (qword_1EB9244F0 != -1)
    {
      swift_once();
    }

    v27 = sub_1B6220B34();
    __swift_project_value_buffer(v27, qword_1EB942B40);
    v61 = sub_1B6220B14();
    v28 = sub_1B62217E4();
    if (!os_log_type_enabled(v61, v28))
    {
      goto LABEL_13;
    }

    v29 = swift_slowAlloc();
    *v29 = 0;
    v30 = "Hourly statistics cache is disabled - not caching";
    goto LABEL_12;
  }

  v18 = sub_1B60A059C();
  if (!v18)
  {
    if (qword_1EB9244F0 != -1)
    {
      swift_once();
    }

    v31 = sub_1B6220B34();
    __swift_project_value_buffer(v31, qword_1EB942B40);
    v61 = sub_1B6220B14();
    v28 = sub_1B62217E4();
    if (!os_log_type_enabled(v61, v28))
    {
      goto LABEL_13;
    }

    v29 = swift_slowAlloc();
    *v29 = 0;
    v30 = "Cannot cache hourly statistics due to missing store";
LABEL_12:
    _os_log_impl(&dword_1B6020000, v61, v28, v30, v29, 2u);
    MEMORY[0x1B8C91C90](v29, -1, -1);
LABEL_13:
    v32 = v61;

    return;
  }

  v19 = v18;
  sub_1B60CD3A0(a1, v17);
  v20 = type metadata accessor for Metadata();
  (*(v12 + 16))(v14, a1 + *(v20 + 20), v11);
  sub_1B6220784();
  sub_1B61D78A4();
  v61 = v19;
  v57 = a3;
  v58 = v4;
  v55 = v12;
  v56 = a2;
  v21 = v62;
  v59 = v63;
  v22 = v64;
  v23 = v65;
  v25 = v66;
  v24 = v67;
  v26 = v68;
  sub_1B6220D34();
  v60 = v21;
  v62 = v21;
  v63 = v59;
  v64 = v22;
  v65 = v23;
  v66 = v25;
  v67 = v24;
  v68 = v26;
  sub_1B6220D04();
  v54 = v26;
  v33 = v22;
  v34 = v23;
  v35 = v33;

  if (qword_1EB9244F0 != -1)
  {
    swift_once();
  }

  v36 = sub_1B6220B34();
  __swift_project_value_buffer(v36, qword_1EB942B40);
  v37 = v57;
  sub_1B6220784();

  v38 = sub_1B6220B14();
  v39 = sub_1B62217F4();

  v52 = v24;

  v53 = v25;

  v50 = v34;

  v51 = v35;

  if (!os_log_type_enabled(v38, v39))
  {

    goto LABEL_16;
  }

  v49 = v38;
  v40 = swift_slowAlloc();
  v41 = swift_slowAlloc();
  v62 = v41;
  *v40 = 141558531;
  *(v40 + 4) = 1752392040;
  *(v40 + 12) = 2081;
  *(v40 + 14) = sub_1B602EEB0(v56, v37, &v62);
  *(v40 + 22) = 2080;
  sub_1B6220D84();
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) != 1)
  {
    sub_1B60CDD24();
    v43 = v42;
    v45 = v44;
    (*(v55 + 8))(v10, v11);
    v46 = sub_1B602EEB0(v43, v45, &v62);

    *(v40 + 24) = v46;
    v47 = v49;
    _os_log_impl(&dword_1B6020000, v49, v39, "Just cached hourly statistics; key=%{private,mask.hash}s. It expires %s", v40, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1B8C91C90](v41, -1, -1);
    MEMORY[0x1B8C91C90](v40, -1, -1);

LABEL_16:
    sub_1B60CCC6C();

    return;
  }

  __break(1u);
}

void sub_1B60CCB00(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (qword_1EB9244F0 != -1)
  {
    swift_once();
  }

  v5 = sub_1B6220B34();
  __swift_project_value_buffer(v5, qword_1EB942B40);
  sub_1B6220784();
  oslog = sub_1B6220B14();
  v6 = sub_1B62217E4();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v10 = v8;
    *v7 = 141558275;
    *(v7 + 4) = 1752392040;
    *(v7 + 12) = 2081;
    *(v7 + 14) = sub_1B602EEB0(a2, a3, &v10);
    _os_log_impl(&dword_1B6020000, oslog, v6, "Failed to fetch hourly statistics. key=%{private,mask.hash}s", v7, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x1B8C91C90](v8, -1, -1);
    MEMORY[0x1B8C91C90](v7, -1, -1);
  }
}

void sub_1B60CCC6C()
{
  v0 = sub_1B621D8F4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0) + 8;
  v4 = sub_1B6220BD4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0) + 8;
  if (sub_1B60A059C())
  {
    sub_1B6220D64();
    v13[3] = v0;
    v13[4] = MEMORY[0x1E69D6130];
    __swift_allocate_boxed_opaque_existential_1(v13);
    type metadata accessor for WeatherClock();
    static WeatherClock.date.getter();
    sub_1B621D854();
    (*(v1 + 8))(v3, v0);
    sub_1B6220CF4();
    __swift_destroy_boxed_opaque_existential_1(v13);
    sub_1B6220DC4();

    (*(v5 + 8))(v7, v4);
    if (qword_1EB9244F0 != -1)
    {
      swift_once();
    }

    v8 = sub_1B6220B34();
    __swift_project_value_buffer(v8, qword_1EB942B40);
    v9 = sub_1B6220B14();
    v10 = sub_1B62217F4();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1B6020000, v9, v10, "Purged expired hourly weather statistics", v11, 2u);
      MEMORY[0x1B8C91C90](v11, -1, -1);
    }
  }
}

uint64_t sub_1B60CD0B8()
{
  result = sub_1B60A059C();
  if (result)
  {
    sub_1B6220D64();
    sub_1B6220DB4();
  }

  return result;
}

uint64_t sub_1B60CD33C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HourlyWeatherStatistics();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B60CD3A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HourlyWeatherStatistics();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B60CD404(uint64_t a1)
{
  v2 = type metadata accessor for HourlyWeatherStatistics();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static AirQualityUnavailableDescriptor.name.setter(uint64_t a1, void *a2)
{
  OUTLINED_FUNCTION_3_5();
  qword_1EB9252B0 = a1;
  off_1EB9252B8 = a2;
}

uint64_t (*static AirQualityUnavailableDescriptor.name.modify())()
{
  OUTLINED_FUNCTION_1_3();
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1B60CD500@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v2 = off_1EB9252B8;
  *a1 = qword_1EB9252B0;
  a1[1] = v2;
  return sub_1B6220784();
}

uint64_t sub_1B60CD550(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  swift_beginAccess();
  qword_1EB9252B0 = v2;
  off_1EB9252B8 = v1;
  sub_1B6220784();
}

uint64_t *sub_1B60CD5B4()
{
  if (qword_1EDAB10D0 != -1)
  {
    OUTLINED_FUNCTION_0_22();
  }

  return &qword_1EDAB10D8;
}

uint64_t static AirQualityUnavailableDescriptor.version.setter(uint64_t a1, uint64_t a2)
{
  if (qword_1EDAB10D0 != -1)
  {
    OUTLINED_FUNCTION_0_22();
  }

  OUTLINED_FUNCTION_3_5();
  qword_1EDAB10D8 = a1;
  qword_1EDAB10E0 = a2;
}

uint64_t (*static AirQualityUnavailableDescriptor.version.modify())()
{
  if (qword_1EDAB10D0 != -1)
  {
    OUTLINED_FUNCTION_0_22();
  }

  OUTLINED_FUNCTION_1_3();
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_1B60CD6D4@<X0>(void *a1@<X8>)
{
  sub_1B60CD5B4();
  swift_beginAccess();
  v2 = qword_1EDAB10E0;
  *a1 = qword_1EDAB10D8;
  a1[1] = v2;
  return sub_1B6220784();
}

uint64_t sub_1B60CD728(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  sub_1B6220784();
  sub_1B60CD5B4();
  swift_beginAccess();
  qword_1EDAB10D8 = v2;
  qword_1EDAB10E0 = v1;
}

_BYTE *storeEnumTagSinglePayload for AirQualityUnavailableDescriptor(_BYTE *result, int a2, int a3)
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

uint64_t static DailySummaryDescriptor.name.getter()
{
  OUTLINED_FUNCTION_2_5();
  sub_1B6220784();
  return OUTLINED_FUNCTION_1_3();
}

uint64_t static DailySummaryDescriptor.name.setter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_3_5();
  *aDailysummary_0 = a1;
  *&aDailysummary_0[8] = a2;
}

uint64_t (*static DailySummaryDescriptor.name.modify())()
{
  OUTLINED_FUNCTION_1_3();
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1B60CD908@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v2 = *&aDailysummary_0[8];
  *a1 = *aDailysummary_0;
  a1[1] = v2;
  return sub_1B6220784();
}

uint64_t sub_1B60CD958(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  swift_beginAccess();
  *aDailysummary_0 = v2;
  *&aDailysummary_0[8] = v1;
  sub_1B6220784();
}

uint64_t sub_1B60CD9BC()
{
  v0 = qword_1EB9243F0;
  v1 = off_1EB9243F8;
  sub_1B6220784();
  MEMORY[0x1B8C90530](v0, v1);

  qword_1EB9252D0 = 0x2E322E312E30;
  qword_1EB9252D8 = 0xE600000000000000;
  return result;
}

uint64_t *sub_1B60CDA38()
{
  if (qword_1EB924418 != -1)
  {
    OUTLINED_FUNCTION_0_23();
  }

  return &qword_1EB9252D0;
}

uint64_t static DailySummaryDescriptor.version.getter()
{
  if (qword_1EB924418 != -1)
  {
    OUTLINED_FUNCTION_0_23();
  }

  OUTLINED_FUNCTION_2_5();
  sub_1B6220784();
  return OUTLINED_FUNCTION_1_3();
}

uint64_t static DailySummaryDescriptor.version.setter(uint64_t a1, uint64_t a2)
{
  if (qword_1EB924418 != -1)
  {
    OUTLINED_FUNCTION_0_23();
  }

  OUTLINED_FUNCTION_3_5();
  qword_1EB9252D0 = a1;
  qword_1EB9252D8 = a2;
}

uint64_t (*static DailySummaryDescriptor.version.modify())()
{
  if (qword_1EB924418 != -1)
  {
    OUTLINED_FUNCTION_0_23();
  }

  OUTLINED_FUNCTION_1_3();
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_1B60CDBB8@<X0>(void *a1@<X8>)
{
  sub_1B60CDA38();
  swift_beginAccess();
  v2 = qword_1EB9252D8;
  *a1 = qword_1EB9252D0;
  a1[1] = v2;
  return sub_1B6220784();
}

uint64_t sub_1B60CDC0C(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  sub_1B6220784();
  sub_1B60CDA38();
  swift_beginAccess();
  qword_1EB9252D0 = v2;
  qword_1EB9252D8 = v1;
}

_BYTE *storeEnumTagSinglePayload for DailySummaryDescriptor(_BYTE *result, int a2, int a3)
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

void sub_1B60CDD24()
{
  v0 = sub_1B621D8F4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for WeatherClock();
  static WeatherClock.date.getter();
  sub_1B621D7D4();
  v5 = v4;
  (*(v1 + 8))(v3, v0);
  if (v5 > 3600.0)
  {
    v21 = 2125417;
    v22 = 0xE300000000000000;
    v6 = OUTLINED_FUNCTION_1_12(3600.0);
    if (!v8 & v7)
    {
      __break(1u);
    }

    else if (v6 > -9.22337204e18)
    {
      OUTLINED_FUNCTION_0_24();
      if (!v10)
      {
        goto LABEL_21;
      }

      v20 = v9;
      v11 = sub_1B6221F04();
      MEMORY[0x1B8C90530](v11);

      v12 = 104;
LABEL_18:
      MEMORY[0x1B8C90530](v12, 0xE100000000000000);
      return;
    }

    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v5 > 60.0)
  {
    v21 = 2125417;
    v22 = 0xE300000000000000;
    v13 = OUTLINED_FUNCTION_1_12(60.0);
    if (!v8 & v7)
    {
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    if (v13 <= -9.22337204e18)
    {
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    OUTLINED_FUNCTION_0_24();
    if (!v10)
    {
      goto LABEL_26;
    }

    v20 = v14;
    v15 = sub_1B6221F04();
    MEMORY[0x1B8C90530](v15);

    v12 = 109;
    goto LABEL_18;
  }

  v21 = 2125417;
  v22 = 0xE300000000000000;
  v16 = round(v5);
  if ((*&v16 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v16 > -9.22337204e18)
  {
    OUTLINED_FUNCTION_0_24();
    if (!v10)
    {
      goto LABEL_27;
    }

    v20 = v17;
    v18 = sub_1B6221F04();
    MEMORY[0x1B8C90530](v18);

    v12 = 115;
    goto LABEL_18;
  }

LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
}

uint64_t DailyForecast.days.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for DailyForecast() + 20);

  *(v1 + v3) = a1;
  return result;
}

uint64_t DailyForecast.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v4 = type metadata accessor for Metadata();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9252E0);
  OUTLINED_FUNCTION_2();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v19 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B60CE2E8();
  sub_1B62220D4();
  if (!v2)
  {
    v12 = v8;
    v13 = v19;
    v22 = 0;
    OUTLINED_FUNCTION_0_25();
    sub_1B60CE814(v14, v15);
    v16 = v20;
    sub_1B6221DD4();
    type metadata accessor for DayForecast();
    v21 = 1;
    sub_1B60CE814(&qword_1EDAB0830, type metadata accessor for DayForecast);
    v18 = sub_1B6221D14();
    (*(v12 + 8))(v11, v16);
    sub_1B603D8D8(v6, v13);
    *(v13 + *(type metadata accessor for DailyForecast() + 20)) = v18;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1B60CE2E8()
{
  result = qword_1EDAB07B8;
  if (!qword_1EDAB07B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAB07B8);
  }

  return result;
}

uint64_t sub_1B60CE33C(uint64_t a1)
{
  v2 = type metadata accessor for Metadata();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B60CE398(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x617461646174656DLL && a2 == 0xE800000000000000;
  if (v4 || (sub_1B6221F24() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1937334628 && a2 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1B6221F24();

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

uint64_t sub_1B60CE468(char a1)
{
  sub_1B6222074();
  MEMORY[0x1B8C912A0](a1 & 1);
  return sub_1B62220A4();
}

uint64_t sub_1B60CE4B0(char a1)
{
  if (a1)
  {
    return 1937334628;
  }

  else
  {
    return 0x617461646174656DLL;
  }
}

uint64_t sub_1B60CE4F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B60CE398(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B60CE518@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B60CE460();
  *a1 = result;
  return result;
}

uint64_t sub_1B60CE540(uint64_t a1)
{
  v2 = sub_1B60CE2E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B60CE57C(uint64_t a1)
{
  v2 = sub_1B60CE2E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DailyForecast.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9252E8);
  OUTLINED_FUNCTION_2();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B60CE2E8();
  sub_1B62220F4();
  v16 = 0;
  type metadata accessor for Metadata();
  OUTLINED_FUNCTION_0_25();
  sub_1B60CE814(v11, v12);
  OUTLINED_FUNCTION_2_2();
  if (!v2)
  {
    v15 = *(v3 + *(type metadata accessor for DailyForecast() + 20));
    v14[15] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9252F0);
    sub_1B60CE760();
    OUTLINED_FUNCTION_2_2();
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_1B60CE760()
{
  result = qword_1EDAB0448;
  if (!qword_1EDAB0448)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB9252F0);
    sub_1B60CE814(&qword_1EDAB0838, type metadata accessor for DayForecast);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAB0448);
  }

  return result;
}

uint64_t sub_1B60CE814(unint64_t *a1, void (*a2)(uint64_t))
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

_BYTE *storeEnumTagSinglePayload for DailyForecast.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1B60CE99C()
{
  result = qword_1EB9252F8;
  if (!qword_1EB9252F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9252F8);
  }

  return result;
}

unint64_t sub_1B60CE9F4()
{
  result = qword_1EDAB07A8;
  if (!qword_1EDAB07A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAB07A8);
  }

  return result;
}

unint64_t sub_1B60CEA4C()
{
  result = qword_1EDAB07B0;
  if (!qword_1EDAB07B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAB07B0);
  }

  return result;
}

uint64_t WeatherAlertCollection.detailsUrl.getter()
{
  v1 = *(v0 + *(type metadata accessor for WeatherAlertCollection() + 20));
  sub_1B6220784();
  return v1;
}

uint64_t type metadata accessor for WeatherAlertCollection()
{
  result = qword_1EB925320;
  if (!qword_1EB925320)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t WeatherAlertCollection.detailsUrl.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for WeatherAlertCollection() + 20));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t (*WeatherAlertCollection.detailsUrl.modify())(void)
{
  OUTLINED_FUNCTION_3();
  type metadata accessor for WeatherAlertCollection();
  return nullsub_1;
}

uint64_t WeatherAlertCollection.alerts.getter()
{
  type metadata accessor for WeatherAlertCollection();

  return sub_1B6220784();
}

uint64_t WeatherAlertCollection.alerts.setter()
{
  OUTLINED_FUNCTION_3();
  v2 = *(type metadata accessor for WeatherAlertCollection() + 24);

  *(v1 + v2) = v0;
  return result;
}

uint64_t (*WeatherAlertCollection.alerts.modify())(void)
{
  OUTLINED_FUNCTION_3();
  type metadata accessor for WeatherAlertCollection();
  return nullsub_1;
}

uint64_t WeatherAlertCollection.init(metadata:detailsUrl:alerts:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for WeatherAlertCollection();
  v11 = (a5 + *(v10 + 20));
  result = sub_1B603D8D8(a1, a5);
  *v11 = a2;
  v11[1] = a3;
  *(a5 + *(v10 + 24)) = a4;
  return result;
}

uint64_t WeatherAlertCollection.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v4 = type metadata accessor for Metadata();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925300);
  OUTLINED_FUNCTION_2();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v24 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B60CEFF8();
  sub_1B62220D4();
  if (!v2)
  {
    v12 = v8;
    v13 = v26;
    LOBYTE(v28) = 0;
    OUTLINED_FUNCTION_0_26();
    sub_1B60CF4F0(v14, v15);
    v16 = v27;
    sub_1B6221DD4();
    v30 = 1;
    sub_1B6221D24();
    v17 = v29;
    v25 = v28;
    type metadata accessor for WeatherAlert();
    v30 = 2;
    sub_1B60CF4F0(&qword_1EDAAFB30, type metadata accessor for WeatherAlert);
    v19 = sub_1B6221D14();
    (*(v12 + 8))(v11, v16);
    v20 = type metadata accessor for WeatherAlertCollection();
    v21 = v6;
    v22 = v20;
    v23 = (v13 + *(v20 + 20));
    sub_1B603D8D8(v21, v13);
    *v23 = v25;
    v23[1] = v17;
    *(v13 + *(v22 + 24)) = v19;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1B60CEFF8()
{
  result = qword_1EB925308;
  if (!qword_1EB925308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB925308);
  }

  return result;
}

uint64_t sub_1B60CF04C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x617461646174656DLL && a2 == 0xE800000000000000;
  if (v4 || (sub_1B6221F24() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x55736C6961746564 && a2 == 0xEA00000000006C72;
    if (v6 || (sub_1B6221F24() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x737472656C61 && a2 == 0xE600000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_1B6221F24();

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

uint64_t sub_1B60CF160(char a1)
{
  if (!a1)
  {
    return 0x617461646174656DLL;
  }

  if (a1 == 1)
  {
    return 0x55736C6961746564;
  }

  return 0x737472656C61;
}

uint64_t sub_1B60CF1C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B60CF04C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B60CF1E8(uint64_t a1)
{
  v2 = sub_1B60CEFF8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B60CF224(uint64_t a1)
{
  v2 = sub_1B60CEFF8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t WeatherAlertCollection.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925310);
  OUTLINED_FUNCTION_2();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v15[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B60CEFF8();
  sub_1B62220F4();
  v18 = 0;
  type metadata accessor for Metadata();
  OUTLINED_FUNCTION_0_26();
  sub_1B60CF4F0(v11, v12);
  OUTLINED_FUNCTION_2_2();
  if (!v2)
  {
    v13 = type metadata accessor for WeatherAlertCollection();
    v17 = 1;
    sub_1B6221E24();
    v16 = *(v3 + *(v13 + 24));
    v15[15] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925318);
    sub_1B60CF43C();
    OUTLINED_FUNCTION_2_2();
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_1B60CF43C()
{
  result = qword_1EDAAF6E8;
  if (!qword_1EDAAF6E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB925318);
    sub_1B60CF4F0(&qword_1EDAAFB38, type metadata accessor for WeatherAlert);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAAF6E8);
  }

  return result;
}

uint64_t sub_1B60CF4F0(unint64_t *a1, void (*a2)(uint64_t))
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

_BYTE *storeEnumTagSinglePayload for WeatherAlertCollection.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1B60CF670()
{
  result = qword_1EB925330;
  if (!qword_1EB925330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB925330);
  }

  return result;
}

unint64_t sub_1B60CF6C8()
{
  result = qword_1EB925338;
  if (!qword_1EB925338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB925338);
  }

  return result;
}

unint64_t sub_1B60CF720()
{
  result = qword_1EB925340;
  if (!qword_1EB925340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB925340);
  }

  return result;
}

uint64_t NSXPCConnection.value<A>(for:defaultValue:)@<X0>(void (*a1)(void)@<X1>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = sub_1B6221A14();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v16 - v13;
  (*(a3 + 16))(v4, a2, a3, v12);
  if (__swift_getEnumTagSinglePayload(v14, 1, AssociatedTypeWitness) != 1)
  {
    return (*(*(AssociatedTypeWitness - 8) + 32))(a4, v14, AssociatedTypeWitness);
  }

  a1();
  result = __swift_getEnumTagSinglePayload(v14, 1, AssociatedTypeWitness);
  if (result != 1)
  {
    return (*(v11 + 8))(v14, v10);
  }

  return result;
}

uint64_t static WeatherAppRemovalXPCWeatherEntitlement.read(from:)(void *a1)
{
  v2 = sub_1B62211B4();
  v3 = [a1 valueForEntitlement_];

  if (v3)
  {
    sub_1B6221A84();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (*(&v7 + 1))
  {
    if (swift_dynamicCast())
    {
      return v5;
    }

    else
    {
      return 2;
    }
  }

  else
  {
    sub_1B60C19B4(v8);
    return 2;
  }
}

uint64_t sub_1B60CFA38@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = static WeatherAppRemovalXPCWeatherEntitlement.read(from:)(a1);
  *a2 = result;
  return result;
}

_BYTE *storeEnumTagSinglePayload for WeatherAppRemovalXPCWeatherEntitlement(_BYTE *result, int a2, int a3)
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

uint64_t sub_1B60CFB5C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7235949 && a2 == 0xE300000000000000;
  if (v3 || (sub_1B6221F24() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 7889261 && a2 == 0xE300000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1B6221F24();

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

uint64_t sub_1B60CFC2C(char a1)
{
  if (a1)
  {
    return 7889261;
  }

  else
  {
    return 7235949;
  }
}

uint64_t sub_1B60CFC54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B60CFB5C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B60CFC7C(uint64_t a1)
{
  v2 = sub_1B60CFE54();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B60CFCB8(uint64_t a1)
{
  v2 = sub_1B60CFE54();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TemperatureRange.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925348);
  OUTLINED_FUNCTION_2();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B60CFE54();
  sub_1B62220F4();
  v10[15] = 0;
  sub_1B6221EA4();
  if (!v1)
  {
    v10[14] = 1;
    sub_1B6221EA4();
  }

  return (*(v5 + 8))(v8, v3);
}

unint64_t sub_1B60CFE54()
{
  result = qword_1EB925350;
  if (!qword_1EB925350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB925350);
  }

  return result;
}

uint64_t TemperatureRange.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925358);
  OUTLINED_FUNCTION_2();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v16 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B60CFE54();
  sub_1B62220D4();
  if (!v2)
  {
    v18 = 0;
    sub_1B6221DB4();
    v12 = v11;
    v17 = 1;
    sub_1B6221DB4();
    v14 = v13;
    (*(v7 + 8))(v10, v5);
    *a2 = v12;
    a2[1] = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

_BYTE *storeEnumTagSinglePayload for TemperatureRange.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1B60D0198()
{
  result = qword_1EB925360;
  if (!qword_1EB925360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB925360);
  }

  return result;
}

unint64_t sub_1B60D01F0()
{
  result = qword_1EB925368;
  if (!qword_1EB925368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB925368);
  }

  return result;
}

unint64_t sub_1B60D0248()
{
  result = qword_1EB925370;
  if (!qword_1EB925370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB925370);
  }

  return result;
}

double sub_1B60D02C4@<D0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924AD8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B6225510;
  *(inited + 32) = 0x7374655361746164;
  *(inited + 40) = 0xE800000000000000;
  v15 = sub_1B621D384();
  v16 = v3;
  v14[2] = &v15;
  v4 = sub_1B60D0480(sub_1B60D05A0, v14, inited);
  swift_setDeallocating();
  sub_1B60FB5BC();

  v5 = sub_1B621D394();
  v7 = v5;
  v8 = v6;
  if (v4)
  {
    if (v6)
    {
      v15 = v5;
      v16 = v6;
      v14[4] = 44;
      v14[5] = 0xE100000000000000;
      sub_1B602C004();
      v9 = sub_1B6221A44();
    }

    else
    {
      v9 = 0;
    }

    *a1 = sub_1B621D384();
    *(a1 + 8) = v13;
    *(a1 + 40) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925378);
    *(a1 + 48) = sub_1B60D05C0();
    *(a1 + 16) = v9;
  }

  else if (v6)
  {
    *a1 = sub_1B621D384();
    *(a1 + 8) = v10;
    v12 = MEMORY[0x1E69E6160];
    *(a1 + 40) = MEMORY[0x1E69E6158];
    *(a1 + 48) = v12;
    *(a1 + 16) = v7;
    *(a1 + 24) = v8;
  }

  else
  {
    *(a1 + 48) = 0;
    result = 0.0;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *a1 = 0u;
  }

  return result;
}

BOOL sub_1B60D0480(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
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
    sub_1B6220784();
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

uint64_t sub_1B60D0530(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_1B6221F24() & 1;
  }
}

unint64_t sub_1B60D05C0()
{
  result = qword_1EB925380;
  if (!qword_1EB925380)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB925378);
    sub_1B60D0644();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB925380);
  }

  return result;
}

unint64_t sub_1B60D0644()
{
  result = qword_1EDAAEAB0;
  if (!qword_1EDAAEAB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB924F68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAAEAB0);
  }

  return result;
}

uint64_t type metadata accessor for InterpolationInputProducts()
{
  result = qword_1EDAB1160;
  if (!qword_1EDAB1160)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1B60D0734()
{
  type metadata accessor for HourlyForecast();
  if (v0 <= 0x3F)
  {
    type metadata accessor for DailyForecast();
    if (v1 <= 0x3F)
    {
      sub_1B60D07D0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B60D07D0()
{
  if (!qword_1EDAB4358)
  {
    type metadata accessor for NextHourForecast();
    v0 = sub_1B6221A14();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDAB4358);
    }
  }
}

uint64_t PeriodicForecasts.forecasts.getter()
{
  type metadata accessor for PeriodicForecasts();

  return sub_1B6220784();
}

uint64_t PeriodicForecasts.forecasts.setter()
{
  OUTLINED_FUNCTION_3();
  v2 = *(type metadata accessor for PeriodicForecasts() + 20);

  *(v1 + v2) = v0;
  return result;
}

uint64_t (*PeriodicForecasts.forecasts.modify())(void)
{
  OUTLINED_FUNCTION_3();
  type metadata accessor for PeriodicForecasts();
  return nullsub_1;
}

uint64_t PeriodicForecasts.init(metadata:forecasts:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1B603D8D8(a1, a3);
  result = type metadata accessor for PeriodicForecasts();
  *(a3 + *(result + 20)) = a2;
  return result;
}

uint64_t PeriodicForecasts.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  type metadata accessor for Metadata();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v4);
  v25 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925388);
  OUTLINED_FUNCTION_2();
  v23 = v7;
  v24 = v6;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v22 - v9;
  v11 = type metadata accessor for PeriodicForecasts();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B60D0C48();
  sub_1B62220D4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v15 = v14;
  v16 = v23;
  v27 = 0;
  OUTLINED_FUNCTION_1_14();
  sub_1B60D18A8(v17, v18);
  v19 = v24;
  sub_1B6221DD4();
  sub_1B603D8D8(v25, v15);
  v26 = 1;
  sub_1B60D0C9C();
  v20 = sub_1B6221D14();
  (*(v16 + 8))(v10, v19);
  *(v15 + *(v11 + 20)) = v20;
  sub_1B60D0CF0(v15, v22, type metadata accessor for PeriodicForecasts);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1B60D0D50();
}

unint64_t sub_1B60D0C48()
{
  result = qword_1EB925390;
  if (!qword_1EB925390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB925390);
  }

  return result;
}

unint64_t sub_1B60D0C9C()
{
  result = qword_1EDAAEF78;
  if (!qword_1EDAAEF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAAEF78);
  }

  return result;
}

uint64_t sub_1B60D0CF0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_9();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1B60D0D50()
{
  v1 = OUTLINED_FUNCTION_3();
  v2(v1);
  OUTLINED_FUNCTION_9();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_1B60D0DA4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x617461646174656DLL && a2 == 0xE800000000000000;
  if (v4 || (sub_1B6221F24() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7473616365726F66 && a2 == 0xE900000000000073)
  {

    return 1;
  }

  else
  {
    v7 = sub_1B6221F24();

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

uint64_t sub_1B60D0E74(char a1)
{
  if (a1)
  {
    return 0x7473616365726F66;
  }

  else
  {
    return 0x617461646174656DLL;
  }
}

uint64_t sub_1B60D0EB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B60D0DA4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B60D0EE0(uint64_t a1)
{
  v2 = sub_1B60D0C48();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B60D0F1C(uint64_t a1)
{
  v2 = sub_1B60D0C48();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PeriodicForecasts.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925398);
  OUTLINED_FUNCTION_2();
  v7 = v6;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B60D0C48();
  OUTLINED_FUNCTION_6_11();
  v16 = 0;
  type metadata accessor for Metadata();
  OUTLINED_FUNCTION_1_14();
  sub_1B60D18A8(v11, v12);
  OUTLINED_FUNCTION_3_14();
  sub_1B6221EC4();
  if (!v2)
  {
    v15 = *(v3 + *(type metadata accessor for PeriodicForecasts() + 20));
    v14[15] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9253A0);
    sub_1B60D10FC();
    OUTLINED_FUNCTION_3_14();
    sub_1B6221EC4();
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_1B60D10FC()
{
  result = qword_1EB9253A8;
  if (!qword_1EB9253A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB9253A0);
    sub_1B60D1180();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9253A8);
  }

  return result;
}

unint64_t sub_1B60D1180()
{
  result = qword_1EB9253B0;
  if (!qword_1EB9253B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9253B0);
  }

  return result;
}

uint64_t PeriodicForecast.periods.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t PeriodicForecast.init(periodLength:periods:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  return result;
}

uint64_t PeriodicForecast.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9253B8);
  OUTLINED_FUNCTION_2();
  v7 = v6;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B60D1474();
  sub_1B62220D4();
  if (!v2)
  {
    v16 = 0;
    v11 = sub_1B6221DE4();
    type metadata accessor for DayPartForecast();
    v15 = 1;
    sub_1B60D18A8(&qword_1EDAB0690, type metadata accessor for DayPartForecast);
    v12 = sub_1B6221D14();
    (*(v7 + 8))(v10, v5);
    *a2 = v11;
    *(a2 + 8) = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1B60D1474()
{
  result = qword_1EB9253C0;
  if (!qword_1EB9253C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9253C0);
  }

  return result;
}

uint64_t sub_1B60D14C8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x654C646F69726570 && a2 == 0xEC0000006874676ELL;
  if (v4 || (sub_1B6221F24() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x73646F69726570 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1B6221F24();

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

uint64_t sub_1B60D1594(char a1)
{
  if (a1)
  {
    return 0x73646F69726570;
  }

  else
  {
    return 0x654C646F69726570;
  }
}

uint64_t sub_1B60D15DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B60D14C8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B60D1604(uint64_t a1)
{
  v2 = sub_1B60D1474();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B60D1640(uint64_t a1)
{
  v2 = sub_1B60D1474();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PeriodicForecast.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9253C8);
  OUTLINED_FUNCTION_2();
  v6 = v5;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v11 - v8;
  v11[0] = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B60D1474();
  OUTLINED_FUNCTION_6_11();
  v13 = 0;
  sub_1B6221ED4();
  if (!v2)
  {
    v11[1] = v11[0];
    v12 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9253D0);
    sub_1B60D17F4();
    OUTLINED_FUNCTION_3_14();
    sub_1B6221EC4();
  }

  return (*(v6 + 8))(v9, v4);
}

unint64_t sub_1B60D17F4()
{
  result = qword_1EB9253D8;
  if (!qword_1EB9253D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB9253D0);
    sub_1B60D18A8(&qword_1EDAB0698, type metadata accessor for DayPartForecast);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9253D8);
  }

  return result;
}

uint64_t sub_1B60D18A8(unint64_t *a1, void (*a2)(uint64_t))
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

_BYTE *sub_1B60D19A0(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1B60D1A80()
{
  result = qword_1EB9253E0;
  if (!qword_1EB9253E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9253E0);
  }

  return result;
}

unint64_t sub_1B60D1AD8()
{
  result = qword_1EB9253E8;
  if (!qword_1EB9253E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9253E8);
  }

  return result;
}

unint64_t sub_1B60D1B30()
{
  result = qword_1EB9253F0;
  if (!qword_1EB9253F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9253F0);
  }

  return result;
}

unint64_t sub_1B60D1B88()
{
  result = qword_1EB9253F8;
  if (!qword_1EB9253F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9253F8);
  }

  return result;
}

unint64_t sub_1B60D1BE0()
{
  result = qword_1EB925400;
  if (!qword_1EB925400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB925400);
  }

  return result;
}

unint64_t sub_1B60D1C38()
{
  result = qword_1EB925408;
  if (!qword_1EB925408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB925408);
  }

  return result;
}

uint64_t AirQualityScaleGradientStop.location.setter(uint64_t result)
{
  *v1 = result;
  *(v1 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t AirQualityScaleGradientStop.color.getter()
{
  v1 = *(v0 + 8);
  sub_1B6220784();
  return v1;
}

uint64_t AirQualityScaleGradientStop.color.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

void __swiftcall AirQualityScaleGradientStop.init(location:color:)(WeatherDaemon::AirQualityScaleGradientStop *__return_ptr retstr, Swift::Float_optional *location, Swift::String_optional color)
{
  LODWORD(retstr->location.value) = location;
  retstr->location.is_nil = BYTE4(location) & 1;
  retstr->color = color;
}

uint64_t sub_1B60D1D8C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F697461636F6CLL && a2 == 0xE800000000000000;
  if (v4 || (sub_1B6221F24() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726F6C6F63 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1B6221F24();

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

uint64_t sub_1B60D1E50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B60D1D8C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B60D1E78(uint64_t a1)
{
  v2 = sub_1B6057F68();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B60D1EB4(uint64_t a1)
{
  v2 = sub_1B6057F68();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AirQualityScaleGradientStop.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925418);
  OUTLINED_FUNCTION_2();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = v13 - v7;
  v9 = *(v1 + 4);
  v10 = *(v1 + 8);
  v13[1] = *(v1 + 16);
  v13[2] = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B6057F68();
  sub_1B62220F4();
  v16 = 0;
  v14 = v9;
  v11 = v13[3];
  sub_1B6221E54();
  if (!v11)
  {
    v15 = 1;
    sub_1B6221E24();
  }

  return (*(v5 + 8))(v8, v3);
}

_BYTE *storeEnumTagSinglePayload for AirQualityScaleGradientStop.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1B60D215C()
{
  result = qword_1EB925420;
  if (!qword_1EB925420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB925420);
  }

  return result;
}

uint64_t static NewsUnavailableDescriptor.name.setter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_3_5();
  qword_1EB925428 = a1;
  qword_1EB925430 = a2;
}

uint64_t (*static NewsUnavailableDescriptor.name.modify())()
{
  OUTLINED_FUNCTION_1_3();
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1B60D2250@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v2 = qword_1EB925430;
  *a1 = qword_1EB925428;
  a1[1] = v2;
  return sub_1B6220784();
}

uint64_t sub_1B60D22A0(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  swift_beginAccess();
  qword_1EB925428 = v2;
  qword_1EB925430 = v1;
  sub_1B6220784();
}

uint64_t *sub_1B60D2304()
{
  if (qword_1EDAB1190 != -1)
  {
    OUTLINED_FUNCTION_0_28();
  }

  return &qword_1EDAB1198;
}

uint64_t static NewsUnavailableDescriptor.version.setter(uint64_t a1, uint64_t a2)
{
  if (qword_1EDAB1190 != -1)
  {
    OUTLINED_FUNCTION_0_28();
  }

  OUTLINED_FUNCTION_3_5();
  qword_1EDAB1198 = a1;
  qword_1EDAB11A0 = a2;
}

uint64_t (*static NewsUnavailableDescriptor.version.modify())()
{
  if (qword_1EDAB1190 != -1)
  {
    OUTLINED_FUNCTION_0_28();
  }

  OUTLINED_FUNCTION_1_3();
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_1B60D2424@<X0>(void *a1@<X8>)
{
  sub_1B60D2304();
  swift_beginAccess();
  v2 = qword_1EDAB11A0;
  *a1 = qword_1EDAB1198;
  a1[1] = v2;
  return sub_1B6220784();
}

uint64_t sub_1B60D2478(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  sub_1B6220784();
  sub_1B60D2304();
  swift_beginAccess();
  qword_1EDAB1198 = v2;
  qword_1EDAB11A0 = v1;
}

_BYTE *storeEnumTagSinglePayload for NewsUnavailableDescriptor(_BYTE *result, int a2, int a3)
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

uint64_t WeatherChange.forecastStart.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for WeatherChange() + 20);

  return sub_1B6058CE0(v3, a1);
}

uint64_t WeatherChange.forecastStart.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_4_13() + 20);

  return sub_1B603D764(v0, v2);
}

uint64_t WeatherChange.forecastEnd.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for WeatherChange() + 24);

  return sub_1B6058CE0(v3, a1);
}

uint64_t WeatherChange.forecastEnd.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_4_13() + 24);

  return sub_1B603D764(v0, v2);
}

uint64_t WeatherChange.changes.setter()
{
  v2 = *(OUTLINED_FUNCTION_4_13() + 28);

  *(v1 + v2) = v0;
  return result;
}

uint64_t WeatherChange.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924600);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v40 - v7;
  v9 = type metadata accessor for Metadata();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925438);
  OUTLINED_FUNCTION_2();
  v43 = v13;
  v44 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v40 - v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B60D2B64();
  v42 = v15;
  v16 = v45;
  sub_1B62220D4();
  if (v16)
  {
    v39 = a1;
  }

  else
  {
    v45 = a1;
    v17 = v5;
    v18 = v41;
    v49 = 0;
    OUTLINED_FUNCTION_1_15();
    sub_1B60D3128(v19, v20);
    sub_1B6221DD4();
    v40 = v11;
    v21 = sub_1B621D8F4();
    v48 = 1;
    OUTLINED_FUNCTION_0_29();
    sub_1B60D3128(v22, v23);
    OUTLINED_FUNCTION_5_16();
    sub_1B6221D24();
    v47 = 2;
    OUTLINED_FUNCTION_5_16();
    v24 = v44;
    sub_1B6221D24();
    type metadata accessor for TrendDeviation();
    v46 = 3;
    sub_1B60D3128(&qword_1EDAB01B8, type metadata accessor for TrendDeviation);
    v26 = sub_1B6221D14();
    v27 = OUTLINED_FUNCTION_2_19();
    v28(v27, v24);
    v29 = type metadata accessor for WeatherChange();
    v30 = v29[5];
    OUTLINED_FUNCTION_3_10();
    __swift_storeEnumTagSinglePayload(v31, v32, v33, v21);
    v34 = v8;
    v35 = v29[6];
    OUTLINED_FUNCTION_3_10();
    __swift_storeEnumTagSinglePayload(v36, v37, v38, v21);
    sub_1B603D8D8(v40, v18);
    sub_1B603D764(v34, v18 + v30);
    sub_1B603D764(v17, v18 + v35);
    *(v18 + v29[7]) = v26;
    v39 = v45;
  }

  return __swift_destroy_boxed_opaque_existential_1(v39);
}

unint64_t sub_1B60D2B64()
{
  result = qword_1EDAB0348;
  if (!qword_1EDAB0348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAB0348);
  }

  return result;
}

uint64_t sub_1B60D2BB8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x617461646174656DLL && a2 == 0xE800000000000000;
  if (v4 || (sub_1B6221F24() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7473616365726F66 && a2 == 0xED00007472617453;
    if (v6 || (sub_1B6221F24() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7473616365726F66 && a2 == 0xEB00000000646E45;
      if (v7 || (sub_1B6221F24() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x7365676E616863 && a2 == 0xE700000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_1B6221F24();

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

uint64_t sub_1B60D2D1C(char a1)
{
  result = 0x617461646174656DLL;
  switch(a1)
  {
    case 1:
    case 2:
      result = 0x7473616365726F66;
      break;
    case 3:
      result = 0x7365676E616863;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1B60D2DAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B60D2BB8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B60D2DD4(uint64_t a1)
{
  v2 = sub_1B60D2B64();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B60D2E10(uint64_t a1)
{
  v2 = sub_1B60D2B64();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t WeatherChange.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925440);
  OUTLINED_FUNCTION_2();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v17 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B60D2B64();
  sub_1B62220F4();
  v21 = 0;
  type metadata accessor for Metadata();
  OUTLINED_FUNCTION_1_15();
  sub_1B60D3128(v11, v12);
  OUTLINED_FUNCTION_2_2();
  if (!v2)
  {
    v13 = type metadata accessor for WeatherChange();
    v20 = 1;
    sub_1B621D8F4();
    OUTLINED_FUNCTION_0_29();
    sub_1B60D3128(v14, v15);
    OUTLINED_FUNCTION_3_15();
    v19 = 2;
    OUTLINED_FUNCTION_3_15();
    v17[1] = *(v3 + *(v13 + 28));
    v18 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925448);
    sub_1B60D3074();
    OUTLINED_FUNCTION_2_2();
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_1B60D3074()
{
  result = qword_1EDAAFC88;
  if (!qword_1EDAAFC88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB925448);
    sub_1B60D3128(&qword_1EDAB01C0, type metadata accessor for TrendDeviation);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAAFC88);
  }

  return result;
}

uint64_t sub_1B60D3128(unint64_t *a1, void (*a2)(uint64_t))
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

_BYTE *storeEnumTagSinglePayload for WeatherChange.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1B60D3298()
{
  result = qword_1EB925450;
  if (!qword_1EB925450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB925450);
  }

  return result;
}

unint64_t sub_1B60D32F0()
{
  result = qword_1EDAB0338;
  if (!qword_1EDAB0338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAB0338);
  }

  return result;
}

unint64_t sub_1B60D3348()
{
  result = qword_1EDAB0340;
  if (!qword_1EDAB0340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAB0340);
  }

  return result;
}

void sub_1B60D339C()
{
  qword_1EDAAEFF0 = 0xD000000000000020;
  *algn_1EDAAEFF8 = 0x80000001B623CEA0;
  qword_1EDAAF000 = 0x408C200000000000;
  word_1EDAAF008 = 256;
}

uint64_t static XPCActivity.Notifications.getter()
{
  if (qword_1EDAAEFE8 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_0_30(&qword_1EDAAEFF0);

  return sub_1B6220784();
}

void sub_1B60D3444()
{
  qword_1EDAAEFC8 = 0xD000000000000033;
  unk_1EDAAEFD0 = 0x80000001B623CE60;
  qword_1EDAAEFD8 = 0x408C200000000000;
  word_1EDAAEFE0 = 256;
}

uint64_t static XPCActivity.predictedLocationNotifications.getter()
{
  if (qword_1EDAAEFC0 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_0_30(&qword_1EDAAEFC8);

  return sub_1B6220784();
}

void sub_1B60D34EC()
{
  qword_1EDAAEFA0 = 0xD000000000000036;
  *algn_1EDAAEFA8 = 0x80000001B623CE20;
  qword_1EDAAEFB0 = 0x408C200000000000;
  word_1EDAAEFB8 = 0;
}

uint64_t static XPCActivity.predictedLocationIntentDonations.getter()
{
  if (qword_1EDAAEF98 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_0_30(&qword_1EDAAEFA0);

  return sub_1B6220784();
}

uint64_t sub_1B60D3590(double a1, double a2)
{
  v3 = *v2;
  if (!*v2 || *(v3 + 16) == 4 && (v4.f64[0] = a2, v4.f64[1] = a1, v5.i32[0] = vuzp1_s16(vmovn_s64(vcgeq_f64(v4, *(v3 + 32))), *&a1).u32[0], v5.i32[1] = vuzp1_s16(*&a1, vmovn_s64(vcgeq_f64(*(v3 + 48), v4))).i32[1], (vminv_u16(v5))) && (v6 = v2[1]) != 0)
  {
    return Array<A>.contains(_:)(v6, a1, a2);
  }

  else
  {
    return 0;
  }
}

BOOL static GeoJSON.MultiPolygon.== infix(_:_:)(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v42 = a4;
  v7 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1B6221A14();
  OUTLINED_FUNCTION_2();
  v12 = v11;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v37 - v14;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_2();
  v41 = v17;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v37 - v19;
  v21 = *a2;
  if (*a1)
  {
    if (!v21 || (sub_1B60950A0(*a1, v21) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v21)
  {
    return 0;
  }

  v39 = v7;
  v40 = v12;
  v22 = a1[1];
  v23 = a2[1];
  if (v22)
  {
    if (!v23)
    {
      return 0;
    }

    sub_1B6220784();
    v24 = sub_1B6095284(v22, v23);

    if ((v24 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v23)
  {
    return 0;
  }

  v37 = *(type metadata accessor for GeoJSON.MultiPolygon() + 40);
  v25 = *(v40 + 16);
  v26 = a1 + v37;
  v27 = *(TupleTypeMetadata2 + 48);
  v25(v20, v26, v10);
  v38 = v27;
  v25(&v20[v27], a2 + v37, v10);
  OUTLINED_FUNCTION_6_1(v20);
  if (v30)
  {
    OUTLINED_FUNCTION_6_1(&v20[v38]);
    if (v30)
    {
      v28 = OUTLINED_FUNCTION_4_14();
      v29(v28);
      return 1;
    }

    goto LABEL_19;
  }

  v25(v15, v20, v10);
  OUTLINED_FUNCTION_6_1(&v20[v38]);
  if (v30)
  {
    (*(v39 + 8))(v15, a3);
LABEL_19:
    (*(v41 + 8))(v20, TupleTypeMetadata2);
    return 0;
  }

  v32 = v39;
  (*(v39 + 32))(v9, &v20[v38], a3);
  v33 = sub_1B62211A4();
  v34 = *(v32 + 8);
  v34(v9, a3);
  v34(v15, a3);
  v35 = OUTLINED_FUNCTION_4_14();
  v36(v35);
  return (v33 & 1) != 0;
}

uint64_t GeoJSON.MultiPolygon.properties.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 40);
  v5 = sub_1B6221A14();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t GeoJSON.MultiPolygon.init(boundingBox:coordinates:properties:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  *a4 = a1;
  *(a4 + 1) = a2;
  v6 = *(type metadata accessor for GeoJSON.MultiPolygon() + 40);
  v7 = sub_1B6221A14();
  v8 = *(*(v7 - 8) + 32);

  return v8(&a4[v6], a3, v7);
}

uint64_t sub_1B60D3A98()
{
  v0 = sub_1B6221CD4();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1B60D3AE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6180];

  return MEMORY[0x1EEE6B350](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1B60D3B5C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69348](a1, a2, WitnessTable, v5);
}

uint64_t sub_1B60D3BC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69358](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1B60D3C38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69350](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1B60D3CA8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B60D3A98();
  *a1 = result;
  return result;
}

uint64_t sub_1B60D3CE0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B60830F0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1B60D3D1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  result = sub_1B60D3AE4(a1, a2, *(a3 + 16), *(a3 + 24));
  *a4 = result;
  return result;
}

uint64_t sub_1B60D3D70@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B6096230();
  *a1 = result;
  return result;
}

uint64_t sub_1B60D3DA0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1B60D3DF4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t GeoJSON.MultiPolygon.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X2>, char *a3@<X8>)
{
  v28 = a3;
  sub_1B6221A14();
  OUTLINED_FUNCTION_2();
  v26 = v6;
  v27 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v25 - v10;
  v31 = a2;
  _s12MultiPolygonV10CodingKeysOMa();
  OUTLINED_FUNCTION_1_16();
  swift_getWitnessTable();
  v32 = sub_1B6221E04();
  OUTLINED_FUNCTION_2();
  v29 = v12;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v25 - v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v30 = v15;
  v16 = v33;
  sub_1B62220D4();
  if (!v16)
  {
    v17 = v11;
    v33 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925458);
    v34 = 1;
    sub_1B60D45BC(&qword_1EB925460);
    sub_1B6221D84();
    v18 = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925468);
    v34 = 2;
    sub_1B60D4628(&qword_1EB925470, sub_1B60D41FC);
    sub_1B6221D84();
    v19 = v18;
    v20 = v35;
    LOBYTE(v35) = 3;
    sub_1B6221D84();
    v22 = OUTLINED_FUNCTION_2_20();
    v23(v22);
    v24 = v33;
    (*(v26 + 32))(v33, v17, v27);
    GeoJSON.MultiPolygon.init(boundingBox:coordinates:properties:)(v19, v20, v24, v28);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1B60D41FC()
{
  result = qword_1EB925478;
  if (!qword_1EB925478)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB925480);
    sub_1B60D42A0(&qword_1EB925488, &qword_1EB925460);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB925478);
  }

  return result;
}

uint64_t sub_1B60D42A0(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB925490);
    sub_1B60D45BC(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t GeoJSON.MultiPolygon.encode(to:)(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v15[1] = *(a2 + 24);
  v15[2] = v4;
  _s12MultiPolygonV10CodingKeysOMa();
  OUTLINED_FUNCTION_1_16();
  swift_getWitnessTable();
  v5 = sub_1B6221EE4();
  OUTLINED_FUNCTION_2();
  v7 = v6;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v15 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B62220F4();
  LOBYTE(v19) = 0;
  v11 = v17;
  sub_1B6221E84();
  if (v11)
  {
    return (*(v7 + 8))(v10, v5);
  }

  v13 = v7;
  v14 = v16;
  v19 = *v16;
  v18 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925458);
  sub_1B60D45BC(&qword_1EB925498);
  OUTLINED_FUNCTION_3_16();
  v19 = v14[1];
  v18 = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925468);
  sub_1B60D4628(&qword_1EB9254A0, sub_1B60D46A0);
  OUTLINED_FUNCTION_3_16();
  LOBYTE(v19) = 3;
  sub_1B6221E74();
  return (*(v13 + 8))(v10, v5);
}

uint64_t sub_1B60D45BC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB925458);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B60D4628(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB925468);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B60D46A0()
{
  result = qword_1EB9254A8;
  if (!qword_1EB9254A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB925480);
    sub_1B60D42A0(qword_1EB9254B0, &qword_1EB925498);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9254A8);
  }

  return result;
}

void sub_1B60D4788()
{
  sub_1B602B8AC(319, &qword_1EB925538, &qword_1EB925458);
  if (v0 <= 0x3F)
  {
    sub_1B602B8AC(319, qword_1EB925540, &qword_1EB925468);
    if (v1 <= 0x3F)
    {
      sub_1B6221A14();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1B60D4858(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  if (v6)
  {
    v7 = v6 - 1;
  }

  else
  {
    v7 = 0;
  }

  if (v7 <= 0x7FFFFFFE)
  {
    v8 = 2147483646;
  }

  else
  {
    v8 = v7;
  }

  v9 = *(v5 + 80);
  v10 = *(*(v4 - 8) + 64);
  if (!v6)
  {
    ++v10;
  }

  if (!a2)
  {
    return 0;
  }

  v11 = a2 - v8;
  if (a2 <= v8)
  {
    goto LABEL_28;
  }

  v12 = v10 + ((v9 + 16) & ~v9);
  v13 = 8 * v12;
  if (v12 <= 3)
  {
    v16 = ((v11 + ~(-1 << v13)) >> v13) + 1;
    if (HIWORD(v16))
    {
      v14 = *(a1 + v12);
      if (!v14)
      {
        goto LABEL_28;
      }

      goto LABEL_20;
    }

    if (v16 > 0xFF)
    {
      v14 = *(a1 + v12);
      if (!*(a1 + v12))
      {
        goto LABEL_28;
      }

      goto LABEL_20;
    }

    if (v16 < 2)
    {
LABEL_28:
      if (v7 > 0x7FFFFFFE)
      {
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + v9 + 8) & ~v9, v6, v4);
        if (EnumTagSinglePayload >= 2)
        {
          return EnumTagSinglePayload - 1;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        v18 = *a1;
        if (*a1 >= 0xFFFFFFFFuLL)
        {
          LODWORD(v18) = -1;
        }

        if ((v18 + 1) >= 2)
        {
          return v18;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  v14 = *(a1 + v12);
  if (!*(a1 + v12))
  {
    goto LABEL_28;
  }

LABEL_20:
  v17 = (v14 - 1) << v13;
  if (v12 > 3)
  {
    v17 = 0;
  }

  if (v12)
  {
    if (v12 > 3)
    {
      LODWORD(v12) = 4;
    }

    switch(v12)
    {
      case 2:
        LODWORD(v12) = *a1;
        break;
      case 3:
        LODWORD(v12) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v12) = *a1;
        break;
      default:
        LODWORD(v12) = *a1;
        break;
    }
  }

  return v8 + (v12 | v17) + 1;
}

void sub_1B60D4A24(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = v9 - 1;
  if (!v9)
  {
    v10 = 0;
  }

  if (v10 <= 0x7FFFFFFE)
  {
    v11 = 2147483646;
  }

  else
  {
    v11 = v10;
  }

  v12 = *(v8 + 80);
  v13 = (v12 + 16) & ~v12;
  v14 = *(*(v7 - 8) + 64);
  if (!v9)
  {
    ++v14;
  }

  v15 = v13 + v14;
  v16 = 8 * (v13 + v14);
  v17 = a3 >= v11;
  v18 = a3 - v11;
  if (v18 != 0 && v17)
  {
    if (v15 <= 3)
    {
      v19 = ((v18 + ~(-1 << v16)) >> v16) + 1;
      if (HIWORD(v19))
      {
        v6 = 4;
      }

      else
      {
        if (v19 < 0x100)
        {
          v20 = 1;
        }

        else
        {
          v20 = 2;
        }

        if (v19 >= 2)
        {
          v6 = v20;
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

  if (v11 >= a2)
  {
    switch(v6)
    {
      case 1:
        a1[v15] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 2:
        *&a1[v15] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 3:
LABEL_61:
        __break(1u);
        break;
      case 4:
        *&a1[v15] = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (a2)
        {
LABEL_32:
          if (v10 > 0x7FFFFFFE)
          {
            v24 = ((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + v12 + 8) & ~v12);
            if (v10 >= a2)
            {
              v28 = a2 + 1;
              v29 = (((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + v12 + 8) & ~v12;

              __swift_storeEnumTagSinglePayload(v29, v28, v9, v7);
            }

            else
            {
              if (v14 <= 3)
              {
                v25 = ~(-1 << (8 * v14));
              }

              else
              {
                v25 = -1;
              }

              if (v14)
              {
                v26 = v25 & (~v10 + a2);
                if (v14 <= 3)
                {
                  v27 = v14;
                }

                else
                {
                  v27 = 4;
                }

                bzero(v24, v14);
                switch(v27)
                {
                  case 2:
                    *v24 = v26;
                    break;
                  case 3:
                    *v24 = v26;
                    v24[2] = BYTE2(v26);
                    break;
                  case 4:
                    *v24 = v26;
                    break;
                  default:
                    *v24 = v26;
                    break;
                }
              }
            }
          }

          else if (a2 > 0x7FFFFFFE)
          {
            *a1 = 0;
            *a1 = a2 - 0x7FFFFFFF;
          }

          else
          {
            *a1 = a2;
          }
        }

        break;
    }
  }

  else
  {
    v21 = ~v11 + a2;
    if (v15 < 4)
    {
      v22 = (v21 >> v16) + 1;
      if (v15)
      {
        v23 = v21 & ~(-1 << v16);
        bzero(a1, v15);
        if (v15 == 3)
        {
          *a1 = v23;
          a1[2] = BYTE2(v23);
        }

        else if (v15 == 2)
        {
          *a1 = v23;
        }

        else
        {
          *a1 = v21;
        }
      }
    }

    else
    {
      bzero(a1, v15);
      *a1 = v21;
      v22 = 1;
    }

    switch(v6)
    {
      case 1:
        a1[v15] = v22;
        break;
      case 2:
        *&a1[v15] = v22;
        break;
      case 3:
        goto LABEL_61;
      case 4:
        *&a1[v15] = v22;
        break;
      default:
        return;
    }
  }
}

_BYTE *sub_1B60D4D30(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t ForecastSummary.startTime.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1B621D8F4();
  OUTLINED_FUNCTION_9();
  v5 = *(v4 + 16);

  return v5(a1, v1, v3);
}

uint64_t ForecastSummary.startTime.setter()
{
  OUTLINED_FUNCTION_3();
  sub_1B621D8F4();
  OUTLINED_FUNCTION_9();
  v4 = *(v3 + 40);

  return v4(v1, v0, v2);
}

uint64_t ForecastSummary.endTime.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ForecastSummary() + 20);

  return sub_1B6058CE0(v3, a1);
}

uint64_t ForecastSummary.endTime.setter()
{
  OUTLINED_FUNCTION_3();
  v2 = v1 + *(type metadata accessor for ForecastSummary() + 20);

  return sub_1B603D764(v0, v2);
}

uint64_t ForecastSummary.endTime.modify()
{
  OUTLINED_FUNCTION_3();
  type metadata accessor for ForecastSummary();
  return OUTLINED_FUNCTION_5();
}

uint64_t ForecastSummary.condition.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ForecastSummary();
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t ForecastSummary.condition.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for ForecastSummary();
  *(v1 + *(result + 24)) = v2;
  return result;
}

uint64_t ForecastSummary.condition.modify()
{
  OUTLINED_FUNCTION_3();
  type metadata accessor for ForecastSummary();
  return OUTLINED_FUNCTION_5();
}

uint64_t ForecastSummary.precipitationChance.modify()
{
  OUTLINED_FUNCTION_3();
  type metadata accessor for ForecastSummary();
  return OUTLINED_FUNCTION_5();
}

uint64_t ForecastSummary.precipitationIntensity.modify()
{
  OUTLINED_FUNCTION_3();
  type metadata accessor for ForecastSummary();
  return OUTLINED_FUNCTION_5();
}

uint64_t ForecastSummary.init(startTime:endTime:condition:precipitationChance:precipitationIntensity:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X8>)
{
  v12 = *a3;
  v13 = type metadata accessor for ForecastSummary();
  v14 = v13[5];
  v15 = sub_1B621D8F4();
  __swift_storeEnumTagSinglePayload(a8 + v14, 1, 1, v15);
  v16 = a8 + v13[7];
  v17 = a8 + v13[8];
  (*(*(v15 - 8) + 32))(a8, a1, v15);
  result = sub_1B603D764(a2, a8 + v14);
  *(a8 + v13[6]) = v12;
  *v16 = a4;
  *(v16 + 8) = a5 & 1;
  *v17 = a6;
  *(v17 + 8) = a7 & 1;
  return result;
}

WeatherDaemon::ForecastSummary::Intensity __swiftcall ForecastSummary.Intensity.init(intensity:)(Swift::Double intensity)
{
  if (intensity >= 2.0 || intensity < 1.0)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  if (intensity < 1.0 && intensity >= 0.0)
  {
    v3 = 0;
  }

  *v1 = v3;
  return result;
}

WeatherDaemon::ForecastSummary::Intensity_optional __swiftcall ForecastSummary.Intensity.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1B6221CD4();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t ForecastSummary.Intensity.rawValue.getter()
{
  v1 = 0x6D756964656DLL;
  if (*v0 != 1)
  {
    v1 = 0x7976616568;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746867696CLL;
  }
}

uint64_t sub_1B60D5414@<X0>(uint64_t *a1@<X8>)
{
  result = ForecastSummary.Intensity.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t ForecastSummary.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924600);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v26[-v5];
  v34 = sub_1B621D8F4();
  OUTLINED_FUNCTION_2();
  v32 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_14();
  v11 = v10 - v9;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9255C8);
  OUTLINED_FUNCTION_2();
  v13 = v12;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v26[-v15];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B60D58EC();
  sub_1B62220D4();
  if (!v2)
  {
    v31 = v13;
    v17 = v6;
    v18 = v33;
    LOBYTE(v38) = 0;
    sub_1B609F140(&qword_1EDAB20F0);
    v19 = v34;
    sub_1B6221DD4();
    v30 = v11;
    LOBYTE(v38) = 1;
    sub_1B6221D24();
    LOBYTE(v38) = 2;
    sub_1B60D5940();
    sub_1B6221DD4();
    v40 = v42;
    LOBYTE(v36) = 3;
    v29 = v17;
    v21 = v35;
    sub_1B6221D24();
    v28 = v38;
    v27 = v39;
    v41 = 4;
    sub_1B6221D24();
    (*(v31 + 8))(v16, v21);
    v35 = v36;
    LOBYTE(v17) = v37;
    v22 = type metadata accessor for ForecastSummary();
    v23 = v22[5];
    __swift_storeEnumTagSinglePayload(v18 + v23, 1, 1, v19);
    v24 = v18 + v22[7];
    v25 = v18 + v22[8];
    (*(v32 + 32))(v18, v30, v19);
    sub_1B603D764(v29, v18 + v23);
    *(v18 + v22[6]) = v40;
    *v24 = v28;
    *(v24 + 8) = v27;
    *v25 = v35;
    *(v25 + 8) = v17;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1B60D58EC()
{
  result = qword_1EDAB0178;
  if (!qword_1EDAB0178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAB0178);
  }

  return result;
}

unint64_t sub_1B60D5940()
{
  result = qword_1EDAB0A00;
  if (!qword_1EDAB0A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAB0A00);
  }

  return result;
}

uint64_t sub_1B60D5994(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D69547472617473 && a2 == 0xE900000000000065;
  if (v4 || (sub_1B6221F24() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656D6954646E65 && a2 == 0xE700000000000000;
    if (v6 || (sub_1B6221F24() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6F697469646E6F63 && a2 == 0xE90000000000006ELL;
      if (v7 || (sub_1B6221F24() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000013 && 0x80000001B623CED0 == a2;
        if (v8 || (sub_1B6221F24() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0xD000000000000016 && 0x80000001B623CEF0 == a2)
        {

          return 4;
        }

        else
        {
          v10 = sub_1B6221F24();

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

unint64_t sub_1B60D5B4C(char a1)
{
  result = 0x6D69547472617473;
  switch(a1)
  {
    case 1:
      result = 0x656D6954646E65;
      break;
    case 2:
      result = 0x6F697469646E6F63;
      break;
    case 3:
      result = 0xD000000000000013;
      break;
    case 4:
      result = 0xD000000000000016;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1B60D5C00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B60D5994(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B60D5C28@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B60D5B44();
  *a1 = result;
  return result;
}

uint64_t sub_1B60D5C50(uint64_t a1)
{
  v2 = sub_1B60D58EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B60D5C8C(uint64_t a1)
{
  v2 = sub_1B60D58EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ForecastSummary.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9255D0);
  OUTLINED_FUNCTION_2();
  v7 = v6;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v13 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B60D58EC();
  sub_1B62220F4();
  v19 = 0;
  sub_1B621D8F4();
  sub_1B609F140(&unk_1EDAB20F8);
  OUTLINED_FUNCTION_5_17();
  sub_1B6221EC4();
  if (!v2)
  {
    v11 = type metadata accessor for ForecastSummary();
    v18 = 1;
    OUTLINED_FUNCTION_5_17();
    sub_1B6221E74();
    v17 = *(v3 + v11[6]);
    v16 = 2;
    sub_1B60D5EF4();
    sub_1B6221EC4();
    OUTLINED_FUNCTION_7_9(v3 + v11[7]);
    v15 = 3;
    sub_1B6221E44();
    OUTLINED_FUNCTION_7_9(v3 + v11[8]);
    v14 = 4;
    sub_1B6221E44();
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_1B60D5EF4()
{
  result = qword_1EDAB0A10[0];
  if (!qword_1EDAB0A10[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDAB0A10);
  }

  return result;
}

uint64_t static ForecastSummary.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B621D8F4();
  OUTLINED_FUNCTION_2();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_14();
  v10 = v9 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924600);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v30 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9255D8);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v30 - v16;
  if ((sub_1B621D8A4() & 1) == 0)
  {
    return 0;
  }

  v18 = *(type metadata accessor for ForecastSummary() + 20);
  v19 = *(v14 + 48);
  sub_1B6058CE0(a1 + v18, v17);
  sub_1B6058CE0(a2 + v18, &v17[v19]);
  OUTLINED_FUNCTION_6_1(v17);
  if (v20)
  {
    OUTLINED_FUNCTION_6_1(&v17[v19]);
    if (v20)
    {
      sub_1B6037288(v17, &qword_1EB924600);
      goto LABEL_12;
    }

LABEL_10:
    sub_1B6037288(v17, &qword_1EB9255D8);
    return 0;
  }

  sub_1B6058CE0(v17, v13);
  OUTLINED_FUNCTION_6_1(&v17[v19]);
  if (v20)
  {
    (*(v6 + 8))(v13, v4);
    goto LABEL_10;
  }

  (*(v6 + 32))(v10, &v17[v19], v4);
  sub_1B609F140(&qword_1EB9255E0);
  v21 = sub_1B62211A4();
  v22 = *(v6 + 8);
  v22(v10, v4);
  v22(v13, v4);
  sub_1B6037288(v17, &qword_1EB924600);
  if ((v21 & 1) == 0)
  {
    return 0;
  }

LABEL_12:
  if ((sub_1B60DDFB4() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_11_11();
  if ((v24 & 1) == 0)
  {
    OUTLINED_FUNCTION_10_10();
    if ((v25 & 1) == 0)
    {
      goto LABEL_17;
    }

    return 0;
  }

  if (!v23)
  {
    return 0;
  }

LABEL_17:
  OUTLINED_FUNCTION_11_11();
  if (v27)
  {
    if ((v26 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_10_10();
    if (v29)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t ForecastSummary.description.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924600);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v1);
  v3 = v17 - v2;
  v4 = sub_1B621D8F4();
  OUTLINED_FUNCTION_2();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_14();
  v10 = v9 - v8;
  v17[0] = 0;
  v17[1] = 0xE000000000000000;
  sub_1B6221B34();
  MEMORY[0x1B8C90530](0x6F697469646E6F43, 0xEB00000000203A6ELL);
  v11 = type metadata accessor for ForecastSummary();
  v12 = 0xE500000000000000;
  v13 = 0x5241454C43;
  switch(*(v0 + v11[6]))
  {
    case 1:
      v13 = 0x444558494DLL;
      break;
    case 2:
      v12 = 0xED00004E4F495441;
      v13 = 0x5449504943455250;
      break;
    case 3:
      v12 = 0xE400000000000000;
      v13 = 1313423698;
      break;
    case 4:
      v12 = 0xE400000000000000;
      v13 = 1464815187;
      break;
    case 5:
      v13 = 0x5445454C53;
      break;
    case 6:
      v12 = 0xE400000000000000;
      v13 = 1279869256;
      break;
    case 7:
      v12 = 0xE700000000000000;
      v13 = 0x4E574F4E4B4E55;
      break;
    default:
      break;
  }

  MEMORY[0x1B8C90530](v13, v12);

  MEMORY[0x1B8C90530](0x697472617473202CLL, 0xEC000000203A676ELL);
  sub_1B609F140(&qword_1EDAB0D70);
  v14 = sub_1B6221F04();
  MEMORY[0x1B8C90530](v14);

  MEMORY[0x1B8C90530](0x2064696C6176202CLL, 0xEF203A6C69746E75);
  sub_1B6058CE0(v0 + v11[5], v3);
  if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
  {
    sub_1B621D7C4();
    if (__swift_getEnumTagSinglePayload(v3, 1, v4) != 1)
    {
      sub_1B6037288(v3, &qword_1EB924600);
    }
  }

  else
  {
    (*(v6 + 32))(v10, v3, v4);
  }

  v15 = sub_1B6221F04();
  MEMORY[0x1B8C90530](v15);

  (*(v6 + 8))(v10, v4);
  MEMORY[0x1B8C90530](0x6261626F7270202CLL, 0xEF203A7974696C69);
  OUTLINED_FUNCTION_12_9(v11[7]);
  sub_1B6221704();
  MEMORY[0x1B8C90530](0x736E65746E69202CLL, 0xED0000203A797469);
  OUTLINED_FUNCTION_12_9(v11[8]);
  sub_1B6221704();
  return v17[0];
}

unint64_t sub_1B60D6664()
{
  result = qword_1EB9255E8;
  if (!qword_1EB9255E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9255E8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ForecastSummary.Intensity(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for Deviation(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
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

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ForecastSummary.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1B60D6918()
{
  result = qword_1EB9255F0;
  if (!qword_1EB9255F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9255F0);
  }

  return result;
}

unint64_t sub_1B60D6970()
{
  result = qword_1EDAB0168;
  if (!qword_1EDAB0168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAB0168);
  }

  return result;
}

unint64_t sub_1B60D69C8()
{
  result = qword_1EDAB0170;
  if (!qword_1EDAB0170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAB0170);
  }

  return result;
}

unint64_t sub_1B60D6A1C()
{
  result = qword_1EB9255F8;
  if (!qword_1EB9255F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9255F8);
  }

  return result;
}

uint64_t sub_1B60D6A9C()
{
  OUTLINED_FUNCTION_13_7();
  v1 = v0[11];
  sub_1B62216B4();
  if (v1)
  {

    OUTLINED_FUNCTION_3_17();

    return v2();
  }

  else
  {
    v7 = (v0[5] + *v0[5]);
    swift_task_alloc();
    OUTLINED_FUNCTION_7_10();
    v0[12] = v4;
    *v4 = v5;
    v4[1] = sub_1B60D6BD8;
    v6 = v0[2];

    return v7(v6);
  }
}

uint64_t sub_1B60D6BD8()
{
  OUTLINED_FUNCTION_13_7();
  v1 = *v0;
  OUTLINED_FUNCTION_1_17();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_1B60D6CE4()
{
  OUTLINED_FUNCTION_11();

  OUTLINED_FUNCTION_3_17();

  return v0();
}

uint64_t sub_1B60D6D40()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_8_12();
  v1 = *v0;
  OUTLINED_FUNCTION_1_17();
  *v2 = v1;

  OUTLINED_FUNCTION_3_17();

  return v3();
}