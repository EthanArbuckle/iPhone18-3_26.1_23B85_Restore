void sub_1DA3B5544(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v92 = MEMORY[0x1E69E7CC0];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v9 = v7;
      v10 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v11 = (*a3 + 16 * v10);
        v12 = (*a3 + 16 * v7);
        if (*v11 == *v12 && v11[1] == v12[1])
        {
          v14 = 0;
        }

        else
        {
          v14 = sub_1DA4223A4();
        }

        v10 = v9 + 2;
        v15 = 16 * v9;
        v16 = v12 + 5;
        while (v10 < v6)
        {
          if (*(v16 - 1) == *(v16 - 3) && *v16 == *(v16 - 2))
          {
            if (v14)
            {
              goto LABEL_21;
            }
          }

          else if ((v14 ^ sub_1DA4223A4()))
          {
            break;
          }

          ++v10;
          v16 += 2;
        }

        if ((v14 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (v10 < v9)
        {
          goto LABEL_121;
        }

        if (v9 < v10)
        {
          v18 = 16 * v10;
          v19 = v10;
          v20 = v9;
          do
          {
            if (v20 != --v19)
            {
              v21 = *a3;
              if (!*a3)
              {
                goto LABEL_126;
              }

              v22 = (v21 + v15);
              v23 = v21 + v18;
              v24 = *v22;
              v25 = v22[1];
              *v22 = *(v23 - 16);
              *(v23 - 16) = v24;
              *(v23 - 8) = v25;
            }

            ++v20;
            v18 -= 16;
            v15 += 16;
          }

          while (v20 < v19);
        }
      }

LABEL_28:
      v26 = a3[1];
      if (v10 < v26)
      {
        if (__OFSUB__(v10, v9))
        {
          goto LABEL_120;
        }

        if (v10 - v9 < a4)
        {
          if (__OFADD__(v9, a4))
          {
            goto LABEL_122;
          }

          if (v9 + a4 >= v26)
          {
            v27 = a3[1];
          }

          else
          {
            v27 = v9 + a4;
          }

          if (v27 < v9)
          {
LABEL_123:
            __break(1u);
LABEL_124:
            __break(1u);
LABEL_125:
            __break(1u);
LABEL_126:
            __break(1u);
LABEL_127:
            __break(1u);
LABEL_128:
            __break(1u);
            return;
          }

          if (v10 != v27)
          {
            v87 = v5;
            v89 = v9;
            v28 = *a3;
            v29 = *a3 + 16 * v10;
            v30 = v9 - v10;
            do
            {
              v31 = v10;
              v32 = (v28 + 16 * v10);
              v33 = *v32;
              v34 = v32[1];
              v35 = v30;
              v36 = v29;
              do
              {
                v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
                if (v37 || (sub_1DA4223A4() & 1) == 0)
                {
                  break;
                }

                if (!v28)
                {
                  goto LABEL_124;
                }

                v33 = *v36;
                v34 = v36[1];
                *v36 = *(v36 - 1);
                *(v36 - 1) = v34;
                *(v36 - 2) = v33;
                v36 -= 2;
              }

              while (!__CFADD__(v35++, 1));
              v10 = v31 + 1;
              v29 += 16;
              --v30;
            }

            while (v31 + 1 != v27);
            v10 = v27;
            v5 = v87;
            v9 = v89;
          }
        }
      }

      if (v10 < v9)
      {
        goto LABEL_119;
      }

      v88 = v10;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1DA3A54F8(0, v8[2] + 1, 1, v8);
        v8 = v83;
      }

      v40 = v8[2];
      v39 = v8[3];
      v41 = v40 + 1;
      if (v40 >= v39 >> 1)
      {
        sub_1DA3A54F8(v39 > 1, v40 + 1, 1, v8);
        v8 = v84;
      }

      v8[2] = v41;
      v42 = v8 + 4;
      v43 = &v8[2 * v40 + 4];
      *v43 = v9;
      v43[1] = v88;
      v90 = *a1;
      if (!*a1)
      {
        goto LABEL_127;
      }

      if (v40)
      {
        while (1)
        {
          v44 = v41 - 1;
          v45 = &v42[2 * v41 - 2];
          v46 = &v8[2 * v41];
          if (v41 >= 4)
          {
            break;
          }

          if (v41 == 3)
          {
            v47 = v8[4];
            v48 = v8[5];
            v57 = __OFSUB__(v48, v47);
            v49 = v48 - v47;
            v50 = v57;
LABEL_69:
            if (v50)
            {
              goto LABEL_109;
            }

            v62 = *v46;
            v61 = v46[1];
            v63 = __OFSUB__(v61, v62);
            v64 = v61 - v62;
            v65 = v63;
            if (v63)
            {
              goto LABEL_112;
            }

            v66 = v45[1];
            v67 = v66 - *v45;
            if (__OFSUB__(v66, *v45))
            {
              goto LABEL_115;
            }

            if (__OFADD__(v64, v67))
            {
              goto LABEL_117;
            }

            if (v64 + v67 >= v49)
            {
              if (v49 < v67)
              {
                v44 = v41 - 2;
              }

              goto LABEL_91;
            }

            goto LABEL_84;
          }

          if (v41 < 2)
          {
            goto LABEL_111;
          }

          v69 = *v46;
          v68 = v46[1];
          v57 = __OFSUB__(v68, v69);
          v64 = v68 - v69;
          v65 = v57;
LABEL_84:
          if (v65)
          {
            goto LABEL_114;
          }

          v71 = *v45;
          v70 = v45[1];
          v57 = __OFSUB__(v70, v71);
          v72 = v70 - v71;
          if (v57)
          {
            goto LABEL_116;
          }

          if (v72 < v64)
          {
            goto LABEL_98;
          }

LABEL_91:
          if (v44 - 1 >= v41)
          {
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
LABEL_116:
            __break(1u);
LABEL_117:
            __break(1u);
LABEL_118:
            __break(1u);
LABEL_119:
            __break(1u);
LABEL_120:
            __break(1u);
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
            goto LABEL_123;
          }

          if (!*a3)
          {
            goto LABEL_125;
          }

          v76 = &v42[2 * v44 - 2];
          v77 = *v76;
          v78 = &v42[2 * v44];
          v79 = v78[1];
          sub_1DA3B5B78((*a3 + 16 * *v76), (*a3 + 16 * *v78), (*a3 + 16 * v79), v90);
          if (v5)
          {
            goto LABEL_102;
          }

          if (v79 < v77)
          {
            goto LABEL_104;
          }

          v80 = v8;
          v81 = v8[2];
          if (v44 > v81)
          {
            goto LABEL_105;
          }

          *v76 = v77;
          v76[1] = v79;
          if (v44 >= v81)
          {
            goto LABEL_106;
          }

          v41 = v81 - 1;
          memmove(&v42[2 * v44], v78 + 2, 16 * (v81 - 1 - v44));
          v80[2] = v81 - 1;
          v82 = v81 > 2;
          v8 = v80;
          if (!v82)
          {
            goto LABEL_98;
          }
        }

        v51 = &v42[2 * v41];
        v52 = *(v51 - 8);
        v53 = *(v51 - 7);
        v57 = __OFSUB__(v53, v52);
        v54 = v53 - v52;
        if (v57)
        {
          goto LABEL_107;
        }

        v56 = *(v51 - 6);
        v55 = *(v51 - 5);
        v57 = __OFSUB__(v55, v56);
        v49 = v55 - v56;
        v50 = v57;
        if (v57)
        {
          goto LABEL_108;
        }

        v58 = v46[1];
        v59 = v58 - *v46;
        if (__OFSUB__(v58, *v46))
        {
          goto LABEL_110;
        }

        v57 = __OFADD__(v49, v59);
        v60 = v49 + v59;
        if (v57)
        {
          goto LABEL_113;
        }

        if (v60 >= v54)
        {
          v74 = *v45;
          v73 = v45[1];
          v57 = __OFSUB__(v73, v74);
          v75 = v73 - v74;
          if (v57)
          {
            goto LABEL_118;
          }

          if (v49 < v75)
          {
            v44 = v41 - 2;
          }

          goto LABEL_91;
        }

        goto LABEL_69;
      }

LABEL_98:
      v6 = a3[1];
      v7 = v88;
      if (v88 >= v6)
      {
        v92 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_128;
  }

  sub_1DA3B5A4C(&v92, *a1, a3);
LABEL_102:
}

uint64_t sub_1DA3B5A4C(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1DA3C691C(v5);
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_1DA3B5B78((*a3 + 16 * *v9), (*a3 + 16 * *v11), (*a3 + 16 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_1DA3B5B78(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 16;
  v9 = (a3 - a2) / 16;
  if (v8 < v9)
  {
    sub_1DA3AFE4C(a1, (a2 - a1) / 16, a4);
    v10 = &v4[16 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_36;
      }

      v12 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (v12 || (sub_1DA4223A4() & 1) == 0)
      {
        break;
      }

      v13 = v6;
      v12 = v7 == v6;
      v6 += 16;
      if (!v12)
      {
        goto LABEL_16;
      }

LABEL_17:
      v7 += 16;
    }

    v13 = v4;
    v12 = v7 == v4;
    v4 += 16;
    if (v12)
    {
      goto LABEL_17;
    }

LABEL_16:
    *v7 = *v13;
    goto LABEL_17;
  }

  sub_1DA3AFE4C(a2, (a3 - a2) / 16, a4);
  v10 = &v4[16 * v9];
LABEL_19:
  v14 = v6 - 16;
  for (v5 -= 16; v10 > v4 && v6 > v7; v5 -= 16)
  {
    v16 = *(v10 - 2) == *(v6 - 2) && *(v10 - 1) == *(v6 - 1);
    if (!v16 && (sub_1DA4223A4() & 1) != 0)
    {
      v12 = v5 + 16 == v6;
      v6 -= 16;
      if (!v12)
      {
        *v5 = *v14;
        v6 = v14;
      }

      goto LABEL_19;
    }

    if (v10 != v5 + 16)
    {
      *v5 = *(v10 - 1);
    }

    v10 -= 16;
  }

LABEL_36:
  v17 = (v10 - v4) / 16;
  if (v6 != v4 || v6 >= &v4[16 * v17])
  {
    memmove(v6, v4, 16 * v17);
  }

  return 1;
}

uint64_t sub_1DA3B5D30(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_1DA3B5D88()
{
  result = qword_1EE1010A0[0];
  if (!qword_1EE1010A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE1010A0);
  }

  return result;
}

uint64_t sub_1DA3B5DDC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEC70, &qword_1DA42A510);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DA3B5E4C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_1DA3B5E8C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t _s7FeatureV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *_s7FeatureV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DA3B6054()
{
  result = qword_1ECBAEDE8;
  if (!qword_1ECBAEDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAEDE8);
  }

  return result;
}

unint64_t sub_1DA3B60AC()
{
  result = qword_1EE101090;
  if (!qword_1EE101090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE101090);
  }

  return result;
}

unint64_t sub_1DA3B6104()
{
  result = qword_1EE101098;
  if (!qword_1EE101098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE101098);
  }

  return result;
}

uint64_t sub_1DA3B6158(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1DA4216E4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DA3B619C()
{
  result = qword_1EE102318;
  if (!qword_1EE102318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE102318);
  }

  return result;
}

unint64_t sub_1DA3B61F0()
{
  result = qword_1EE102320;
  if (!qword_1EE102320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE102320);
  }

  return result;
}

unint64_t sub_1DA3B6244()
{
  result = qword_1EE1021D8;
  if (!qword_1EE1021D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1021D8);
  }

  return result;
}

unint64_t sub_1DA3B6298()
{
  result = qword_1EE1021E0;
  if (!qword_1EE1021E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1021E0);
  }

  return result;
}

unint64_t sub_1DA3B62EC()
{
  result = qword_1EE102278;
  if (!qword_1EE102278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE102278);
  }

  return result;
}

unint64_t sub_1DA3B6340()
{
  result = qword_1EE102280;
  if (!qword_1EE102280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE102280);
  }

  return result;
}

unint64_t sub_1DA3B6394()
{
  result = qword_1EE102C90;
  if (!qword_1EE102C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE102C90);
  }

  return result;
}

unint64_t sub_1DA3B63E8()
{
  result = qword_1EE102CA0;
  if (!qword_1EE102CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE102CA0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_2()
{

  return swift_once();
}

void OUTLINED_FUNCTION_4_2()
{
  *(v3 + 4) = v0;
  *(v3 + 12) = 2048;
  *(v3 + 14) = v1;
  *(v3 + 22) = 2048;
  *(v3 + 24) = v2;
}

uint64_t OUTLINED_FUNCTION_5_3(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1DA3B493C(a3, 0.0);
}

BOOL OUTLINED_FUNCTION_7_1(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_11_0()
{

  return sub_1DA4220B4();
}

void OUTLINED_FUNCTION_12_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x20u);
}

uint64_t OUTLINED_FUNCTION_13_1(uint64_t a1, uint64_t a2)
{
  __swift_project_value_buffer(a1, a2);

  return sub_1DA421A74();
}

uint64_t static SiriSuggestionsIntelligence.mapToSuggestionView(_:)@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1DA421974();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v23 - v8;
  v10 = sub_1DA421684();
  v25 = v11;
  v26 = v10;
  sub_1DA421694();
  v24 = sub_1DA421964();
  v13 = v12;
  v14 = *(v3 + 8);
  v14(v9, v2);
  sub_1DA421674();
  sub_1DA4216B4();
  v15 = type metadata accessor for SiriSuggestionsIntelligence.SuggestionView();
  v16 = v15[8];
  sub_1DA4216A4();
  v17 = sub_1DA421814();
  OUTLINED_FUNCTION_1_1(v17);
  v18 = v15[9];
  sub_1DA4216C4();
  v19 = sub_1DA421714();
  OUTLINED_FUNCTION_1_1(v19);
  sub_1DA421694();
  v20 = a1 + v15[10];
  sub_1DA421954();
  result = (v14)(v7, v2);
  v22 = v25;
  *a1 = v26;
  a1[1] = v22;
  a1[2] = v24;
  a1[3] = v13;
  return result;
}

uint64_t type metadata accessor for SiriSuggestionsIntelligence.SuggestionView()
{
  result = qword_1EE102660;
  if (!qword_1EE102660)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1DA3B67BC()
{
  sub_1DA3B68D4();
  if (v0 <= 0x3F)
  {
    sub_1DA3B6930(319, &qword_1EE102CC0, MEMORY[0x1E69D3090]);
    if (v1 <= 0x3F)
    {
      sub_1DA3B6930(319, &qword_1EE102CE0, MEMORY[0x1E69D2CD0]);
      if (v2 <= 0x3F)
      {
        sub_1DA3B6930(319, &qword_1EE102CC8, MEMORY[0x1E69D2F20]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_1DA3B68D4()
{
  result = qword_1EE102CB8;
  if (!qword_1EE102CB8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EE102CB8);
  }

  return result;
}

void sub_1DA3B6930(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1DA421F94();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t OUTLINED_FUNCTION_1_1(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1 + v2, 0, 1, a1);
}

uint64_t type metadata accessor for DefaultConversionCoreAnalyticsLogger()
{
  result = qword_1EE100950;
  if (!qword_1EE100950)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DA3B6A3C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v9 = sub_1DA4211F4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_0_4();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  swift_getDynamicType();
  v23 = a1[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEE20, &qword_1DA424170);
  sub_1DA421BB4();
  v12 = sub_1DA421B64();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1DA3E28AC(v12, 0x6F737365636F7270, 0xE900000000000072, isUniquelyReferenced_nonNull_native);
  if (a3)
  {
    v14 = sub_1DA421B64();
    v15 = swift_isUniquelyReferenced_nonNull_native();
    sub_1DA3E28AC(v14, 0x6761546F666E69, 0xE700000000000000, v15);
  }

  sub_1DA3B6E88();
  v16 = sub_1DA421F84();
  v17 = swift_isUniquelyReferenced_nonNull_native();
  sub_1DA3E28AC(v16, 0x69737265766E6F63, 0xEE00657079546E6FLL, v17);
  if (a5 != 2)
  {
    v18 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    v19 = swift_isUniquelyReferenced_nonNull_native();
    sub_1DA3E28AC(v18, 0xD000000000000011, 0x80000001DA42CC80, v19);
  }

  sub_1DA4212D4();
  sub_1DA4211A4();
  (*(v10 + 8))(v5, v9);
  v20 = sub_1DA421B64();

  v21 = swift_isUniquelyReferenced_nonNull_native();
  sub_1DA3E28AC(v20, 0x7463617265746E69, 0xEF657079546E6F69, v21);
  sub_1DA4218B4();
}

uint64_t sub_1DA3B6D74(uint64_t *a1)
{
  v4 = a1[3];
  v5 = a1[4];
  v6 = __swift_mutable_project_boxed_opaque_existential_1(a1, v4);
  v7 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_0_4();
  (*(v8 + 16))(v2);
  v9 = sub_1DA3B6ECC(v2, v1, v4, v5);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v9;
}

uint64_t sub_1DA3B6E50()
{
  v0 = sub_1DA4218C4();

  return MEMORY[0x1EEE6BDC0](v0, 16, 7);
}

unint64_t sub_1DA3B6E88()
{
  result = qword_1ECBAEE28;
  if (!qword_1ECBAEE28)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECBAEE28);
  }

  return result;
}

uint64_t sub_1DA3B6ECC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[3] = a3;
  v13[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v13);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1, a1, a3);
  v7 = type metadata accessor for DefaultConversionCoreAnalyticsLogger();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  sub_1DA3A7ED4(v13, &v12);
  v10 = sub_1DA4218A4();
  __swift_destroy_boxed_opaque_existential_0(v13);
  return v10;
}

uint64_t SiriSuggestionsIntelligence.DefaultTimePartitionExtractor.__allocating_init(dateTranslation:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

double sub_1DA3B6FC8()
{
  v0 = sub_1DA4210B4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DA421084();
  sub_1DA421034();
  v6 = v5;
  (*(v1 + 8))(v4, v0);
  return v6;
}

uint64_t SiriSuggestionsIntelligence.DefaultTimePartitionExtractor.init(dateTranslation:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t SiriSuggestionsIntelligence.DefaultTimePartitionExtractor.extract(clock:timestampOfEvent:)(void *a1, double a2)
{
  v3 = v2;
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v6 = sub_1DA421934();
  v7 = *(v2 + 24);
  v9 = v8 - (*(v3 + 16))(v6, a2);
  if (v9 >= 300.0)
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    OUTLINED_FUNCTION_10_1();
    if (!v10)
    {
      OUTLINED_FUNCTION_0_5();
    }

    OUTLINED_FUNCTION_9_2();
    if (v11 && (v12 = sub_1DA3B7588(0), (v13 & 1) != 0))
    {
      OUTLINED_FUNCTION_5_4(v12);
    }

    else
    {
      OUTLINED_FUNCTION_2_3();
    }

    sub_1DA3A55D8();
    v14 = v15;
    if (*(v15 + 16) >= *(v15 + 24) >> 1)
    {
      OUTLINED_FUNCTION_1_2();
      v14 = v35;
    }

    OUTLINED_FUNCTION_8_3();
    OUTLINED_FUNCTION_3_2(v16, xmmword_1DA4241A0);
  }

  if (v9 < 3600.0)
  {
    OUTLINED_FUNCTION_10_1();
    if (!v10)
    {
      OUTLINED_FUNCTION_0_5();
    }

    OUTLINED_FUNCTION_9_2();
    if (v17 && (v18 = sub_1DA3B7588(1u), (v19 & 1) != 0))
    {
      OUTLINED_FUNCTION_5_4(v18);
    }

    else
    {
      OUTLINED_FUNCTION_2_3();
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_4_3();
      v14 = v36;
    }

    if (*(v14 + 16) >= *(v14 + 24) >> 1)
    {
      OUTLINED_FUNCTION_1_2();
      v14 = v37;
    }

    OUTLINED_FUNCTION_8_3();
    OUTLINED_FUNCTION_3_2(v20, xmmword_1DA4241B0);
  }

  if (v9 < 86400.0)
  {
    OUTLINED_FUNCTION_10_1();
    if (!v10)
    {
      OUTLINED_FUNCTION_0_5();
    }

    OUTLINED_FUNCTION_9_2();
    if (v21 && (v22 = sub_1DA3B7588(2u), (v23 & 1) != 0))
    {
      OUTLINED_FUNCTION_5_4(v22);
    }

    else
    {
      OUTLINED_FUNCTION_2_3();
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_4_3();
      v14 = v38;
    }

    if (*(v14 + 16) >= *(v14 + 24) >> 1)
    {
      OUTLINED_FUNCTION_1_2();
      v14 = v39;
    }

    OUTLINED_FUNCTION_8_3();
    OUTLINED_FUNCTION_3_2(v24, xmmword_1DA4241C0);
  }

  if (v9 < 604800.0)
  {
    OUTLINED_FUNCTION_10_1();
    if (!v10)
    {
      OUTLINED_FUNCTION_0_5();
    }

    OUTLINED_FUNCTION_9_2();
    if (v25 && (v26 = sub_1DA3B7588(3u), (v27 & 1) != 0))
    {
      v28 = (*(v7 + 56) + 16 * v26);
      v30 = *v28;
      v29 = v28[1];
    }

    else
    {
      v29 = 0xE700000000000000;
      v30 = 0x6E776F6E6B6E75;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_4_3();
      v14 = v40;
    }

    v31 = *(v14 + 16);
    if (v31 >= *(v14 + 24) >> 1)
    {
      OUTLINED_FUNCTION_1_2();
      v14 = v41;
    }

    OUTLINED_FUNCTION_8_3();
    v33 = v14 + v31 * v32;
    *(v33 + 32) = xmmword_1DA4241D0;
    *(v33 + 48) = 0;
    *(v33 + 56) = v30;
    *(v33 + 64) = v29;
  }

  return v14;
}

double SiriSuggestionsIntelligence.DefaultTimePartitionExtractor.getStartDate(clock:)(void *a1)
{
  v1 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA421934();
  return v2 + -604800.0;
}

uint64_t SiriSuggestionsIntelligence.DefaultTimePartitionExtractor.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t SiriSuggestionsIntelligence.DefaultTimePartitionExtractor.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t sub_1DA3B7480()
{
  sub_1DA421B94();
  sub_1DA422434();
  sub_1DA421BF4();
  v0 = sub_1DA422474();

  return v0;
}

unint64_t sub_1DA3B74F4(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_1DA421B94();
  sub_1DA422434();
  sub_1DA421BF4();
  v4 = sub_1DA422474();

  return sub_1DA3B78A0(a1, v4);
}

unint64_t sub_1DA3B7588(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  sub_1DA422434();
  MEMORY[0x1DA74DBB0](a1);
  v4 = sub_1DA422474();

  return sub_1DA3B7998(a1, v4);
}

unint64_t sub_1DA3B7618()
{
  OUTLINED_FUNCTION_11_1();
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1DA421BF4();
  v5 = *(v0 + 16);
  v6 = *(v0 + 32);
  v7 = *(v0 + 48);
  SiriSuggestionsIntelligence.TimePartition.hash(into:)();
  v3 = sub_1DA422474();

  return sub_1DA3B79F8(v0, v3);
}

unint64_t sub_1DA3B7690()
{
  OUTLINED_FUNCTION_11_1();
  SiriSuggestionsIntelligence.TimePartition.hash(into:)();
  v1 = sub_1DA422474();

  return sub_1DA3B7B34(v0, v1);
}

unint64_t sub_1DA3B76EC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_1DA422434();
  sub_1DA421BF4();
  v6 = sub_1DA422474();

  return sub_1DA3B7C38(a1, a2, v6);
}

unint64_t sub_1DA3B7764(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_1DA422024();

  return sub_1DA3B7CEC(a1, v5);
}

unint64_t sub_1DA3B77A8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  OUTLINED_FUNCTION_6_3();
  SiriSuggestionsIntelligence.FeatureId.hash(into:)(v13, v6, v5, v4, a4);
  sub_1DA422474();
  v8 = OUTLINED_FUNCTION_7_2();

  return sub_1DA3B7DB0(v8, v9, v10, a4, v11);
}

unint64_t sub_1DA3B7820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_6_3();
  sub_1DA421BF4();
  sub_1DA421BF4();
  sub_1DA422474();
  v5 = OUTLINED_FUNCTION_7_2();

  return sub_1DA3B8264(v5, v6, v7, a4, v8);
}

unint64_t sub_1DA3B78A0(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
  for (i = a2 & v3; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v3)
  {
    v5 = *(*(v2 + 48) + 8 * i);
    v6 = sub_1DA421B94();
    v8 = v7;
    if (v6 == sub_1DA421B94() && v8 == v9)
    {

      return i;
    }

    v11 = sub_1DA4223A4();

    if (v11)
    {
      return i;
    }
  }

  return i;
}

unint64_t sub_1DA3B7998(unsigned __int8 a1, uint64_t a2)
{
  v3 = a1;
  v4 = ~(-1 << *(v2 + 32));
    ;
  }

  return result;
}

unint64_t sub_1DA3B79F8(double *a1, uint64_t a2)
{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v7 = ~v4;
    v8 = *a1;
    v9 = *(a1 + 1);
    v10 = *(v2 + 48);
    do
    {
      v11 = v10 + 56 * v5;
      v13 = *(v11 + 16);
      v12 = *(v11 + 24);
      v14 = *(v11 + 32);
      v16 = *(v11 + 40);
      v15 = *(v11 + 48);
      v17 = *v11 == *&v8 && *(v11 + 8) == v9;
      if (v17 || (sub_1DA4223A4()) && v13 == a1[2] && v12 == a1[3] && ((v14 ^ *(a1 + 32)) & 1) == 0)
      {
        v18 = *(a1 + 6);
        if (v15)
        {
          if (v18)
          {
            v19 = v16 == *(a1 + 5) && v15 == v18;
            if (v19 || (sub_1DA4223A4() & 1) != 0)
            {
              return v5;
            }
          }
        }

        else if (!v18)
        {
          return v5;
        }
      }

      v5 = (v5 + 1) & v7;
    }

    while (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1DA3B7B34(uint64_t a1, uint64_t a2)
{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v7 = ~v4;
    v8 = *a1;
    v9 = *(v2 + 48);
    do
    {
      v10 = v9 + 40 * v5;
      if (*v10 == v8 && *(v10 + 8) == *(a1 + 8) && *(v10 + 16) == *(a1 + 16))
      {
        v11 = *(v10 + 32);
        v12 = *(a1 + 32);
        if (v11)
        {
          if (v12)
          {
            v13 = *(v10 + 24) == *(a1 + 24) && v11 == v12;
            if (v13 || (sub_1DA4223A4() & 1) != 0)
            {
              return v5;
            }
          }
        }

        else if (!v12)
        {
          return v5;
        }
      }

      v5 = (v5 + 1) & v7;
    }

    while (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1DA3B7C38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_1DA4223A4() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_1DA3B7CEC(uint64_t a1, uint64_t a2)
{
  v4 = ~(-1 << *(v2 + 32));
  for (i = a2 & v4; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v4)
  {
    sub_1DA3B81B4(*(v2 + 48) + 40 * i, v8);
    v6 = MEMORY[0x1DA74D7A0](v8, a1);
    sub_1DA3B8210(v8);
    if (v6)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_1DA3B7DB0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v6 = -1 << *(v5 + 32);
  v7 = a5 & ~v6;
  if ((*(v5 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = a4;
    v9 = a3;
    v10 = ~v6;
    v43 = ~v6;
    while (1)
    {
      v11 = *(v5 + 48) + 32 * v7;
      v12 = *v11;
      v13 = *(v11 + 8);
      v14 = *(v11 + 16);
      v15 = *(v11 + 24);
      switch(v15)
      {
        case 1u:
          if (v8 != 1)
          {
            goto LABEL_50;
          }

          v30 = SiriSuggestionsIntelligence.FeatureIdType.rawValue.getter(v12);
          v32 = v31;
          if (v30 == SiriSuggestionsIntelligence.FeatureIdType.rawValue.getter(a1) && v32 == v33)
          {
          }

          else
          {
            v35 = sub_1DA4223A4();

            if ((v35 & 1) == 0)
            {
              goto LABEL_34;
            }
          }

          v9 = a3;
          if (v13 == a2 && v14 == a3)
          {
            sub_1DA3B8188(v12, a2, a3, 1u);
          }

          else
          {
            v37 = sub_1DA4223A4();
            sub_1DA3B8188(v12, v13, v14, 1u);
            v8 = a4;
            v10 = v43;
            if ((v37 & 1) == 0)
            {
              goto LABEL_50;
            }
          }

          return v7;
        case 2u:
          if (v8 != 2)
          {
            goto LABEL_50;
          }

          v22 = SiriSuggestionsIntelligence.FeatureIdType.rawValue.getter(v12);
          v24 = v23;
          if (v22 == SiriSuggestionsIntelligence.FeatureIdType.rawValue.getter(a1) && v24 == v25)
          {
          }

          else
          {
            v27 = sub_1DA4223A4();

            v9 = a3;
            v8 = a4;
            v10 = v43;
            if ((v27 & 1) == 0)
            {
              goto LABEL_50;
            }
          }

          return v7;
        case 3u:
          if (v8 != 3)
          {
            goto LABEL_50;
          }

          goto LABEL_21;
        case 4u:
          if (v8 != 4)
          {
            goto LABEL_50;
          }

LABEL_21:
          if (v12 == a1 && v13 == a2)
          {
            if (v14 == v9)
            {
              return v7;
            }
          }

          else
          {
            v29 = sub_1DA4223A4();
            v10 = v43;
            v8 = a4;
            if ((v29 & 1) != 0 && v14 == v9)
            {
              return v7;
            }
          }

          goto LABEL_50;
        default:
          if (v8)
          {
            goto LABEL_50;
          }

          v16 = SiriSuggestionsIntelligence.FeatureIdType.rawValue.getter(*v11);
          v18 = v17;
          if (v16 == SiriSuggestionsIntelligence.FeatureIdType.rawValue.getter(a1) && v18 == v19)
          {
          }

          else
          {
            v21 = sub_1DA4223A4();

            if ((v21 & 1) == 0)
            {
LABEL_34:
              sub_1DA3B8188(v12, v13, v14, v15);
              v9 = a3;
              v8 = a4;
              v10 = v43;
              goto LABEL_50;
            }
          }

          v9 = a3;
          if (v13 == a2 && v14 == a3)
          {
            sub_1DA3B8188(v12, a2, a3, 0);
            return v7;
          }

          v39 = sub_1DA4223A4();
          sub_1DA3B8188(v12, v13, v14, 0);
          v8 = a4;
          v10 = v43;
          if (v39)
          {
            return v7;
          }

LABEL_50:
          v7 = (v7 + 1) & v10;
          if (((*(v5 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
          {
            return v7;
          }

          break;
      }
    }
  }

  return v7;
}

uint64_t sub_1DA3B8188(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 < 2u || a4 == 4 || a4 == 3)
  {
  }

  return result;
}

unint64_t sub_1DA3B8264(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5 + 64;
  v7 = -1 << *(v5 + 32);
  v8 = a5 & ~v7;
  if ((*(v5 + 64 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v13 = ~v7;
    v14 = *(v5 + 48);
    do
    {
      v15 = (v14 + 32 * v8);
      v16 = v15[2];
      v17 = v15[3];
      v18 = *v15 == a1 && v15[1] == a2;
      if (v18 || (sub_1DA4223A4() & 1) != 0)
      {
        v19 = v16 == a3 && v17 == a4;
        if (v19 || (sub_1DA4223A4() & 1) != 0)
        {
          break;
        }
      }

      v8 = (v8 + 1) & v13;
    }

    while (((*(v6 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  }

  return v8;
}

uint64_t OUTLINED_FUNCTION_0_5()
{

  return swift_once();
}

void OUTLINED_FUNCTION_1_2()
{

  sub_1DA3A55D8();
}

void OUTLINED_FUNCTION_3_2(uint64_t a1@<X8>, __n128 a2@<Q0>)
{
  v6 = (v2 + v5 * a1);
  v6[2] = a2;
  v6[3].n128_u8[0] = 0;
  v6[3].n128_u64[1] = v4;
  v6[4].n128_u64[0] = v3;
}

void OUTLINED_FUNCTION_4_3()
{
  v2 = *(v0 + 16) + 1;

  sub_1DA3A55D8();
}

uint64_t OUTLINED_FUNCTION_5_4(uint64_t a1)
{
  v3 = (*(v1 + 56) + 16 * a1);
  v5 = *v3;
  v4 = v3[1];
}

uint64_t OUTLINED_FUNCTION_6_3()
{
  v2 = *(v0 + 40);

  return sub_1DA422434();
}

uint64_t OUTLINED_FUNCTION_11_1()
{
  v2 = *(v0 + 40);

  return sub_1DA422434();
}

SiriSuggestionsIntelligence::SSAppUsageOrderBy_optional __swiftcall SSAppUsageOrderBy.init(rawValue:)(Swift::String rawValue)
{
  v1 = sub_1DA422234();

  if (v1 >= 3)
  {
    return 3;
  }

  else
  {
    return v1;
  }
}

uint64_t SSAppUsageOrderBy.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 0xD000000000000014;
  }

  if (a1 == 1)
  {
    return 0x7365536C61746F74;
  }

  return 0x6D69546C61746F74;
}

SiriSuggestionsIntelligence::SSAppUsageOrderBy_optional sub_1DA3B8580@<W0>(Swift::String *a1@<X0>, SiriSuggestionsIntelligence::SSAppUsageOrderBy_optional *a2@<X8>)
{
  result.value = SSAppUsageOrderBy.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t sub_1DA3B85B0@<X0>(uint64_t *a1@<X8>)
{
  result = SSAppUsageOrderBy.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t SSFeatureExtractorConfig.getConfig()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  a3[3] = a1;
  a3[4] = a2;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
  return (*(*(a1 - 8) + 16))(boxed_opaque_existential_1, v3, a1);
}

unint64_t sub_1DA3B8704()
{
  result = qword_1ECBAEE30;
  if (!qword_1ECBAEE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAEE30);
  }

  return result;
}

unint64_t sub_1DA3B875C()
{
  result = qword_1ECBAEE38;
  if (!qword_1ECBAEE38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBAEE40, &qword_1DA424300);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAEE38);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SSAppUsageOrderBy(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DA3B889C()
{
  result = qword_1ECBAEE48;
  if (!qword_1ECBAEE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAEE48);
  }

  return result;
}

uint64_t SiriSuggestionsIntelligence.AppIdValidator.__allocating_init(disabledApps:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

BOOL sub_1DA3B8930(uint64_t a1, unint64_t a2)
{
  v5 = *(v2 + 16);
  v14[0] = a1;
  v14[1] = a2;
  v13[2] = v14;
  v6 = sub_1DA412A3C(sub_1DA3B8E14, v13, v5);
  if (v6)
  {
    if (qword_1EE102E00 != -1)
    {
      OUTLINED_FUNCTION_12();
    }

    v7 = sub_1DA421A94();
    __swift_project_value_buffer(v7, static Logger.extractionCategory);

    v8 = sub_1DA421A74();
    v9 = sub_1DA421F64();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v14[0] = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_1DA3A5FE8(a1, a2, v14);
      _os_log_impl(&dword_1DA39E000, v8, v9, "Removing appId: %s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      OUTLINED_FUNCTION_17();
      OUTLINED_FUNCTION_17();
    }
  }

  return !v6;
}

uint64_t SiriSuggestionsIntelligence.AppIdValidator.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t SiriSuggestionsIntelligence.AppIdValidator.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t SiriSuggestionsIntelligence.SiriSettingsAppIdValidatorFactory.create()()
{
  v0 = sub_1DA421B64();
  v1 = sub_1DA421B64();
  v2 = CFPreferencesCopyAppValue(v0, v1);

  if (v2)
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v9 = 0;
      sub_1DA421D24();
    }

    swift_unknownObjectRelease();
  }

  if (qword_1EE102E00 != -1)
  {
    OUTLINED_FUNCTION_12();
  }

  v3 = sub_1DA421A94();
  __swift_project_value_buffer(v3, static Logger.extractionCategory);
  v4 = sub_1DA421A74();
  v5 = sub_1DA421F54();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1DA39E000, v4, v5, "Unable to get disabledApps blocklist", v6, 2u);
    OUTLINED_FUNCTION_17();
  }

  v7 = MEMORY[0x1E69E7CC0];
  type metadata accessor for SiriSuggestionsIntelligence.AppIdValidator();
  result = swift_allocObject();
  *(result + 16) = v7;
  return result;
}

void SiriSuggestionsIntelligence.MobileAssetsAssetQuerier.query(completion:)(void (*a1)(void, void, void, void), uint64_t a2)
{
  v4 = objc_allocWithZone(MEMORY[0x1E69B18E8]);
  v5 = sub_1DA3BA198(0xD000000000000024, 0x80000001DA42CE20);
  if (v5)
  {
    v6 = v5;
    v7 = swift_allocObject();
    v7[2] = a1;
    v7[3] = a2;
    v7[4] = v6;
    v10[4] = sub_1DA3BA1FC;
    v10[5] = v7;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 1107296256;
    v10[2] = sub_1DA3B9048;
    v10[3] = &block_descriptor;
    v8 = _Block_copy(v10);

    v9 = v6;

    [v9 queryMetaDataWithError_];
    _Block_release(v8);
  }

  else
  {
    a1(0, 0, 0, 0);
  }
}

uint64_t sub_1DA3B8F8C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t (*)(), uint64_t, uint64_t), uint64_t a4, void *a5)
{
  v9 = swift_allocObject();
  *(v9 + 16) = a5;
  v10 = a5;
  a3(a1, sub_1DA3BA4D8, v9, a2);
}

uint64_t sub_1DA3B9028(void *a1)
{
  result = sub_1DA3BA3A4(a1);
  if (!result)
  {
    __break(1u);
  }

  return result;
}

void sub_1DA3B9048(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_1DA3B9110()
{
  v1 = *(MEMORY[0x1E69E8920] + 4);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAECD0, &qword_1DA423990);
  *v2 = v0;
  v2[1] = sub_1DA3B91F8;
  v4 = *(v0 + 32);

  return MEMORY[0x1EEE6DE38](v0 + 16, 0, 0, 0xD000000000000012, 0x80000001DA42CE70, sub_1DA3BA220, v4, v3);
}

uint64_t sub_1DA3B91F8()
{
  v2 = *(*v1 + 40);
  v5 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v3 = sub_1DA3B9328;
  }

  else
  {
    v3 = sub_1DA3B930C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DA3B9340(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEE50, &unk_1DA4245D0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v16 - v7;
  v9 = a2[7];
  v10 = a2[8];
  __swift_project_boxed_opaque_existential_1(a2 + 4, v9);
  (*(v5 + 16))(v8, a1, v4);
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = (v6 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = swift_allocObject();
  (*(v5 + 32))(v13 + v11, v8, v4);
  *(v13 + v12) = a2;
  v14 = *(v10 + 8);

  v14(sub_1DA3BA270, v13, v9, v10);
}

void sub_1DA3B94D8(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!a2)
  {
    v76 = 0;
    v77 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEE50, &unk_1DA4245D0);
    sub_1DA421DF4();
    return;
  }

  p_cache = a2;
  v7 = a1;
  if (a1)
  {
    v8 = qword_1EE102E00;

    if (v8 != -1)
    {
LABEL_69:
      swift_once();
    }

    v9 = sub_1DA421A94();
    __swift_project_value_buffer(v9, static Logger.extractionCategory);
    v10 = sub_1DA421A74();
    v11 = sub_1DA421F74();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 134217984;
      *(v12 + 4) = v7;
      _os_log_impl(&dword_1DA39E000, v10, v11, "BuildVersionService: Query didn't return expected results: %ld", v12, 0xCu);
      MEMORY[0x1DA74E430](v12, -1, -1);
    }

    sub_1DA3BA340();
    v13 = swift_allocError();
    *v14 = v7;
    *(v14 + 8) = 0;
    v76 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEE50, &unk_1DA4245D0);
    sub_1DA421DE4();
    sub_1DA3BA394(v7, p_cache);
    return;
  }

  v81 = 0;
  v82 = 0xE000000000000000;

  v7 = (p_cache)(v16);
  v75 = sub_1DA3A6D84(v7);
  if (!v75)
  {

    v60 = 0;
    v61 = 0xE000000000000000;
LABEL_66:
    v76 = v60;
    v77 = v61;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEE50, &unk_1DA4245D0);
    sub_1DA421DF4();
    sub_1DA3BA394(0, p_cache);

    return;
  }

  v65 = a6;
  v66 = p_cache;
  v74 = v7 & 0xC000000000000001;
  swift_beginAccess();
  v17 = 0;
  v67 = 0;
  v69 = 0;
  v72 = v7 & 0xFFFFFFFFFFFFFF8;
  v68 = 0xE000000000000000;
  v70 = 0xE000000000000000;
  p_cache = &OBJC_METACLASS____TtCO27SiriSuggestionsIntelligence27SiriSuggestionsIntelligence19BuildVersionService.cache;
  v18 = v7;
  v73 = v7;
  while (1)
  {
    if (v74)
    {
      v19 = MEMORY[0x1DA74D830](v17, v18);
    }

    else
    {
      if (v17 >= *(v72 + 16))
      {
        goto LABEL_68;
      }

      v19 = *(v18 + 8 * v17 + 32);
    }

    v7 = v19;
    v20 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
LABEL_68:
      __break(1u);
      goto LABEL_69;
    }

    if (p_cache[448] != -1)
    {
      swift_once();
    }

    v21 = sub_1DA421A94();
    __swift_project_value_buffer(v21, static Logger.extractionCategory);
    v22 = v7;
    v23 = sub_1DA421A74();
    v24 = sub_1DA421F64();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v76 = v26;
      *v25 = 136315138;
      v27 = sub_1DA3BA404(v22);

      if (!v27)
      {
        goto LABEL_71;
      }

      v28 = sub_1DA421AD4();
      v30 = v29;

      v31 = sub_1DA3A5FE8(v28, v30, &v76);

      *(v25 + 4) = v31;
      _os_log_impl(&dword_1DA39E000, v23, v24, "BuildVersionService: Got successful results: %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v26);
      MEMORY[0x1DA74E430](v26, -1, -1);
      MEMORY[0x1DA74E430](v25, -1, -1);

      p_cache = (&OBJC_METACLASS____TtCO27SiriSuggestionsIntelligence27SiriSuggestionsIntelligence19BuildVersionService + 16);
      v20 = v17 + 1;
      v18 = v73;
    }

    else
    {
    }

    v32 = sub_1DA3BA404(v22);
    if (!v32)
    {
      break;
    }

    v33 = v32;
    sub_1DA422044();
    if (!*(v33 + 16) || (v34 = sub_1DA3B7764(&v76), (v35 & 1) == 0))
    {

      sub_1DA3B8210(&v76);
LABEL_37:
      v7 = sub_1DA421A74();
      v48 = sub_1DA421F74();
      if (os_log_type_enabled(v7, v48))
      {
        v49 = swift_slowAlloc();
        *v49 = 0;
        _os_log_impl(&dword_1DA39E000, v7, v48, "no OSVersion or PrerequisiteOSVersion found in assets", v49, 2u);
        MEMORY[0x1DA74E430](v49, -1, -1);
      }

      goto LABEL_40;
    }

    sub_1DA3A69D0(*(v33 + 56) + 32 * v34, v80);
    sub_1DA3B8210(&v76);

    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_37;
    }

    v36 = sub_1DA3BA404(v22);
    if (!v36)
    {
      goto LABEL_72;
    }

    v37 = v36;
    sub_1DA422044();
    if (!*(v37 + 16) || (v38 = sub_1DA3B7764(&v76), (v39 & 1) == 0))
    {

      sub_1DA3B8210(&v76);
      goto LABEL_37;
    }

    sub_1DA3A69D0(*(v37 + 56) + 32 * v38, v80);
    sub_1DA3B8210(&v76);

    if ((swift_dynamicCast() & 1) == 0)
    {

      goto LABEL_37;
    }

    v40 = *(v65 + 24);
    (*(v65 + 16))(&v76);
    v41 = v78;
    if (v78)
    {
      v42 = v79;
      __swift_project_boxed_opaque_existential_1(&v76, v78);
      v43 = (*(v42 + 40))(v41, v42);
      v45 = v44;
      __swift_destroy_boxed_opaque_existential_0(&v76);
      if (v45)
      {
        v46 = v43;
      }

      else
      {
        v46 = 0;
      }

      v64 = v46;
      if (v45)
      {
        v47 = v45;
      }

      else
      {
        v47 = 0xE000000000000000;
      }
    }

    else
    {
      sub_1DA3BA470(&v76);
      v64 = 0;
      v47 = 0xE000000000000000;
    }

    v50 = sub_1DA421A74();
    v51 = sub_1DA421F54();

    v63 = v51;
    if (os_log_type_enabled(v50, v51))
    {
      log = v50;
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v76 = v53;
      *v52 = 136315650;
      v7 = 0x6F6973726556534FLL;
      *(v52 + 4) = sub_1DA3A5FE8(0x6F6973726556534FLL, 0xE90000000000006ELL, &v76);
      *(v52 + 12) = 2080;
      *(v52 + 14) = sub_1DA3A5FE8(0xD000000000000015, 0x80000001DA42CF90, &v76);
      *(v52 + 22) = 2080;
      *(v52 + 24) = sub_1DA3A5FE8(v64, v47, &v76);
      _os_log_impl(&dword_1DA39E000, log, v63, "got OSVersion: %s and PrerequisiteOSVersion: %s and currentVersion: %s", v52, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1DA74E430](v53, -1, -1);
      MEMORY[0x1DA74E430](v52, -1, -1);
    }

    else
    {

      v7 = 0x6F6973726556534FLL;
    }

    v54 = v69 == 0x6F6973726556534FLL && v70 == 0xE90000000000006ELL;
    if (v54 || (sub_1DA4223A4() & 1) == 0)
    {
    }

    else
    {
      if (v64 == 0xD000000000000015 && v47 == 0x80000001DA42CF90)
      {

LABEL_61:

        v56 = sub_1DA421A74();
        v57 = sub_1DA421F54();

        if (os_log_type_enabled(v56, v57))
        {
          v58 = swift_slowAlloc();
          v71 = swift_slowAlloc();
          v76 = v71;
          *v58 = 136315394;
          *(v58 + 4) = sub_1DA3A5FE8(0x6F6973726556534FLL, 0xE90000000000006ELL, &v76);
          *(v58 + 12) = 2080;
          v7 = v68;

          v59 = sub_1DA3A5FE8(v67, v68, &v76);

          *(v58 + 14) = v59;
          v18 = v73;
          _os_log_impl(&dword_1DA39E000, v56, v57, "new OSVersion: %s is less than current maxVersion: %s. Overriding", v58, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1DA74E430](v71, -1, -1);
          MEMORY[0x1DA74E430](v58, -1, -1);
        }

        else
        {

          v7 = v70;
        }

        v81 = 0x6F6973726556534FLL;
        v82 = 0xE90000000000006ELL;

        v67 = 0x6F6973726556534FLL;
        v68 = 0xE90000000000006ELL;
        v69 = 0x6F6973726556534FLL;
        v70 = 0xE90000000000006ELL;
        goto LABEL_40;
      }

      v7 = sub_1DA4223A4();

      if (v7)
      {
        goto LABEL_61;
      }
    }

LABEL_40:
    ++v17;
    if (v20 == v75)
    {

      p_cache = v66;
      v60 = v67;
      v61 = v68;
      goto LABEL_66;
    }
  }

  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
}

uint64_t SiriSuggestionsIntelligence.MobileAssetsLatestSUVersionService.deinit()
{
  v1 = *(v0 + 24);

  __swift_destroy_boxed_opaque_existential_0((v0 + 32));
  return v0;
}

uint64_t SiriSuggestionsIntelligence.MobileAssetsLatestSUVersionService.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  __swift_destroy_boxed_opaque_existential_0((v0 + 32));

  return MEMORY[0x1EEE6BDC0](v0, 72, 7);
}

uint64_t sub_1DA3B9FF8()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DA3BA088;

  return SiriSuggestionsIntelligence.MobileAssetsLatestSUVersionService.getLatestVersion()();
}

uint64_t sub_1DA3BA088(uint64_t a1, uint64_t a2)
{
  v6 = *(*v3 + 16);
  v11 = *v3;

  v9 = *(v11 + 8);
  if (!v2)
  {
    v7 = a1;
    v8 = a2;
  }

  return v9(v7, v8);
}

id sub_1DA3BA198(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_1DA421B64();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithType_];

  return v4;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1DA3BA270(uint64_t a1, void **a2, uint64_t a3, uint64_t a4)
{
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEE50, &unk_1DA4245D0) - 8);
  v10 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v11 = *(v4 + ((*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_1DA3B94D8(a1, a2, a3, a4, v4 + v10, v11);
}

unint64_t sub_1DA3BA340()
{
  result = qword_1EE1019E0;
  if (!qword_1EE1019E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1019E0);
  }

  return result;
}

uint64_t sub_1DA3BA394(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1DA3BA3A4(void *a1)
{
  v1 = [a1 results];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_1DA3BA4E0();
  v3 = sub_1DA421D34();

  return v3;
}

uint64_t sub_1DA3BA404(void *a1)
{
  v1 = [a1 attributes];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1DA421AC4();

  return v3;
}

uint64_t sub_1DA3BA470(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEE58, &qword_1DA427BF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1DA3BA4E0()
{
  result = qword_1EE100F48;
  if (!qword_1EE100F48)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE100F48);
  }

  return result;
}

unint64_t sub_1DA3BA524(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v3 = a1;
  v64 = MEMORY[0x1E69E7CC0];
  sub_1DA3B02B0();
  v2 = v64;
  result = sub_1DA3E4130(v3);
  v7 = 0;
  v8 = v3 + 64;
  v34 = v5;
  v35 = v1;
  v33 = v3 + 72;
  v36 = v3 + 64;
  v37 = v3;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(v3 + 32))
  {
    if ((*(v8 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_22;
    }

    if (*(v3 + 36) != v5)
    {
      goto LABEL_23;
    }

    v41 = result >> 6;
    v42 = 1 << result;
    v39 = v7;
    v40 = v5;
    v38 = v6;
    v9 = *(v3 + 56);
    v10 = *(v3 + 48) + 56 * result;
    v12 = *v10;
    v11 = *(v10 + 8);
    v13 = *(v10 + 16);
    v14 = *(v10 + 24);
    v15 = *(v10 + 32);
    v45 = v2;
    v17 = *(v10 + 40);
    v16 = *(v10 + 48);
    v18 = (v9 + 32 * result);
    v20 = *v18;
    v19 = v18[1];
    v43 = v18[2];
    v44 = result;
    v21 = v18[3];
    v48[0] = v12;
    v48[1] = v11;
    v48[2] = v13;
    v48[3] = v14;
    v49 = v15;
    v50 = v17;
    v51 = v16;
    v52 = v20;
    v53 = v19;
    v54 = v43;
    v55 = v21;
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    sub_1DA3A8CA8(v48, &qword_1ECBAEEA8, &qword_1DA424728);
    v56[0] = v12;
    v56[1] = v11;
    v56[2] = v13;
    v56[3] = v14;
    v57 = v15;
    v46 = v17;
    v58 = v17;
    v59 = v16;
    v2 = v45;
    v60 = v20;
    v61 = v19;
    v62 = v43;
    v63 = v21;
    sub_1DA3A88F8(v56, v47, &qword_1ECBAEEA8, &qword_1DA424728);

    v64 = v45;
    v22 = *(v45 + 16);
    if (v22 >= *(v45 + 24) >> 1)
    {
      sub_1DA3B02B0();
      v2 = v64;
    }

    *(v2 + 16) = v22 + 1;
    v23 = v2 + 88 * v22;
    *(v23 + 32) = v12;
    *(v23 + 40) = v11;
    *(v23 + 48) = v13;
    *(v23 + 56) = v14;
    *(v23 + 64) = v15;
    v24 = *(v47 + 3);
    *(v23 + 65) = v47[0];
    *(v23 + 68) = v24;
    *(v23 + 72) = v46;
    *(v23 + 80) = v16;
    *(v23 + 88) = v20;
    *(v23 + 96) = v19;
    *(v23 + 104) = v43;
    *(v23 + 112) = v21;
    v3 = v37;
    v25 = 1 << *(v37 + 32);
    result = v44;
    if (v44 >= v25)
    {
      goto LABEL_24;
    }

    v8 = v36;
    v26 = *(v36 + 8 * v41);
    if ((v26 & v42) == 0)
    {
      goto LABEL_25;
    }

    if (*(v37 + 36) != v40)
    {
      goto LABEL_26;
    }

    v27 = v26 & (-2 << (v44 & 0x3F));
    if (v27)
    {
      v25 = __clz(__rbit64(v27)) | v44 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v28 = v41 << 6;
      v29 = v41 + 1;
      v30 = (v33 + 8 * v41);
      while (v29 < (v25 + 63) >> 6)
      {
        v32 = *v30++;
        v31 = v32;
        v28 += 64;
        ++v29;
        if (v32)
        {
          sub_1DA3A2020(v44, v40, v38 & 1);
          v25 = __clz(__rbit64(v31)) + v28;
          goto LABEL_19;
        }
      }

      sub_1DA3A2020(v44, v40, v38 & 1);
    }

LABEL_19:
    v6 = 0;
    v7 = v39 + 1;
    result = v25;
    v5 = v34;
    if (v39 + 1 == v35)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

void sub_1DA3BA878(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v28 = MEMORY[0x1E69E7CC0];
    sub_1DA3B0160();
    v5 = sub_1DA3A20F8(a1);
    v6 = 0;
    v7 = a1 + 64;
    v24 = v1;
    if ((v5 & 0x8000000000000000) == 0)
    {
      while (v5 < 1 << *(a1 + 32))
      {
        v8 = v5 >> 6;
        if ((*(v7 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
        {
          goto LABEL_23;
        }

        if (*(a1 + 36) != v3)
        {
          goto LABEL_24;
        }

        v25 = v4;
        v26 = v6;
        v27 = v3;
        v9 = (*(a1 + 48) + 56 * v5);
        v10 = *v9;
        v11 = v9[1];
        v13 = *(v28 + 16);
        v12 = *(v28 + 24);

        if (v13 >= v12 >> 1)
        {
          sub_1DA3B0160();
        }

        *(v28 + 16) = v13 + 1;
        v14 = v28 + 16 * v13;
        *(v14 + 32) = v10;
        *(v14 + 40) = v11;
        v15 = 1 << *(a1 + 32);
        if (v5 >= v15)
        {
          goto LABEL_25;
        }

        v7 = a1 + 64;
        v16 = *(a1 + 64 + 8 * v8);
        if ((v16 & (1 << v5)) == 0)
        {
          goto LABEL_26;
        }

        if (*(a1 + 36) != v27)
        {
          goto LABEL_27;
        }

        v17 = v16 & (-2 << (v5 & 0x3F));
        if (v17)
        {
          v15 = __clz(__rbit64(v17)) | v5 & 0x7FFFFFFFFFFFFFC0;
          v18 = v24;
        }

        else
        {
          v19 = v8 << 6;
          v20 = v8 + 1;
          v18 = v24;
          v21 = (a1 + 72 + 8 * v8);
          while (v20 < (v15 + 63) >> 6)
          {
            v23 = *v21++;
            v22 = v23;
            v19 += 64;
            ++v20;
            if (v23)
            {
              sub_1DA3A2020(v5, v27, v25 & 1);
              v15 = __clz(__rbit64(v22)) + v19;
              goto LABEL_18;
            }
          }

          sub_1DA3A2020(v5, v27, v25 & 1);
        }

LABEL_18:
        v6 = v26 + 1;
        if (v26 + 1 == v18)
        {
          return;
        }

        v4 = 0;
        v3 = *(a1 + 36);
        v5 = v15;
        if (v15 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }
}

void *sub_1DA3BAAB4(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_1DA3A5E00(*(a1 + 16), 0);
  v4 = sub_1DA3BF688(&v6, v3 + 4, v2, a1);
  sub_1DA3BFA40();
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

void *SiriSuggestionsIntelligence.AppUsageFeatureExtractor.__allocating_init(clock:configProvider:)(uint64_t *a1, uint64_t *a2)
{
  type metadata accessor for SiriSuggestionsIntelligence.BiomeAppDataExtractor();
  sub_1DA3A7ED4(a1, v9);
  v4 = SiriSuggestionsIntelligence.BiomeAppDataExtractor.__allocating_init(clock:)(v9);
  sub_1DA3A7ED4(a2, v9);
  v5 = type metadata accessor for SiriSuggestionsIntelligence.SiriSettingsAppIdValidatorFactory();
  v6 = swift_allocObject();
  v7 = swift_allocObject();
  v7[8] = v5;
  v7[9] = &protocol witness table for SiriSuggestionsIntelligence.SiriSettingsAppIdValidatorFactory;
  v7[4] = 0;
  v7[5] = v6;
  v7[2] = v4;
  v7[3] = &unk_1DA4245E0;
  sub_1DA3A1FF8(v9, (v7 + 10));
  __swift_destroy_boxed_opaque_existential_0(a2);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v7;
}

void *SiriSuggestionsIntelligence.AppUsageFeatureExtractor.__allocating_init(extractor:configProvider:)(uint64_t a1, __int128 *a2)
{
  v4 = type metadata accessor for SiriSuggestionsIntelligence.SiriSettingsAppIdValidatorFactory();
  v5 = swift_allocObject();
  v6 = swift_allocObject();
  v6[8] = v4;
  v6[9] = &protocol witness table for SiriSuggestionsIntelligence.SiriSettingsAppIdValidatorFactory;
  v6[4] = 0;
  v6[5] = v5;
  v6[2] = a1;
  v6[3] = &unk_1DA4245E0;
  sub_1DA3A1FF8(a2, (v6 + 10));
  return v6;
}

uint64_t sub_1DA3BACE0()
{
  v1 = v0[19];
  v2 = [objc_opt_self() sharedCategories];
  v0[20] = v2;
  v3 = sub_1DA421D14();
  v0[21] = v3;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1DA3BAE48;
  v4 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEEB0, &qword_1DA424730);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1DA3BB1B8;
  v0[13] = &block_descriptor_0;
  v0[14] = v4;
  [v2 categoriesForBundleIDs:v3 completionHandler:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1DA3BAE48()
{
  v1 = *v0;
  OUTLINED_FUNCTION_13_0();
  *v3 = v2;
  *v3 = *v0;
  v5 = *(v4 + 48);
  *(v2 + 176) = v5;
  if (v5)
  {
    v6 = sub_1DA3BB140;
  }

  else
  {
    v6 = sub_1DA3BAF54;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

void sub_1DA3BAF54()
{
  v1 = *(v0 + 144);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEEB8, &qword_1DA424738);
  v2 = sub_1DA4221F4();
  v3 = 0;
  v5 = v1 + 64;
  v4 = *(v1 + 64);
  v35 = v2;
  v36 = v1;
  v6 = *(v1 + 32);
  OUTLINED_FUNCTION_3_3();
  v9 = v8 & v7;
  v11 = (v10 + 63) >> 6;
  v34 = v12 + 64;
  if ((v8 & v7) != 0)
  {
    while (1)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_8:
      v16 = v13 | (v3 << 6);
      v17 = (*(v36 + 48) + 16 * v16);
      v18 = v17[1];
      v37 = *v17;
      v19 = *(*(v36 + 56) + 8 * v16);

      v20 = v19;
      v21 = [v20 identifier];
      v22 = sub_1DA421B94();
      v24 = v23;

      v2 = v35;
      *(v34 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v25 = (v35[6] + 16 * v16);
      *v25 = v37;
      v25[1] = v18;
      v26 = (v35[7] + 16 * v16);
      *v26 = v22;
      v26[1] = v24;
      v27 = v35[2];
      v28 = __OFADD__(v27, 1);
      v29 = v27 + 1;
      if (v28)
      {
        break;
      }

      v35[2] = v29;
      if (!v9)
      {
        goto LABEL_3;
      }
    }

LABEL_15:
    __break(1u);
  }

  else
  {
LABEL_3:
    v14 = v3;
    while (1)
    {
      v3 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_15;
      }

      if (v3 >= v11)
      {
        break;
      }

      v15 = *(v5 + 8 * v3);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_8;
      }
    }

    v30 = *(v33 + 160);
    v31 = *(v33 + 168);

    OUTLINED_FUNCTION_23();

    v32(v2);
  }
}

uint64_t sub_1DA3BB140()
{
  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[20];
  swift_willThrow();

  v4 = v0[1];
  v5 = v0[22];

  return v4();
}

uint64_t sub_1DA3BB1B8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;

    return sub_1DA3BB260(v4, v5);
  }

  else
  {
    sub_1DA3BFB90();
    v7 = sub_1DA421AC4();

    return sub_1DA3BB2CC(v4, v7);
  }
}

uint64_t sub_1DA3BB260(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAECC0, &unk_1DA423980);
  v4 = swift_allocError();
  *v5 = a2;

  return MEMORY[0x1EEE6DEE8](a1, v4);
}

uint64_t sub_1DA3BB31C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, char *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v13 = a4[3];
  v14 = a4[4];
  v15 = __swift_mutable_project_boxed_opaque_existential_1(a4, v13);
  v16 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v18);
  v20 = a6(a1, a2, a3, v18, a5, v6, v13, v14);
  __swift_destroy_boxed_opaque_existential_0(a4);
  return v20;
}

uint64_t sub_1DA3BB464()
{
  v1 = *(v0[12] + 16);
  v2 = sub_1DA3D29B8();
  v3 = v0[12];
  v4 = v3[8];
  v5 = v3[9];
  __swift_project_boxed_opaque_existential_1(v3 + 5, v4);
  v0[13] = (*(v5 + 8))(v4, v5);

  v6 = sub_1DA3BE860(v2);
  v0[14] = v6;

  v7 = v3[13];
  v8 = v3[14];
  __swift_project_boxed_opaque_existential_1(v3 + 10, v7);
  (*(v8 + 8))(v7, v8);
  sub_1DA3A7ED4((v0 + 7), (v0 + 2));
  v9 = v0[10];
  v10 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v9);
  v11 = (*(v10 + 32))(v9, v10);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  v12 = v0[12];
  v0[15] = sub_1DA3BBE10(v6, 0x6567617355707061, 0xE800000000000000, v11, 0, (v0 + 2));

  sub_1DA3BA878(v13);
  v15 = v14;

  v16 = sub_1DA3BC3DC(v15);
  v17 = sub_1DA3BAAB4(v16);
  v0[16] = v17;
  v18 = *(v12 + 24);
  v19 = *(v12 + 32);
  v23 = (v18 + *v18);
  v20 = v18[1];
  v21 = swift_task_alloc();
  v0[17] = v21;
  *v21 = v0;
  v21[1] = sub_1DA3BB818;

  return v23(v17);
}

uint64_t sub_1DA3BB818()
{
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v4 = v3;
  v5 = v2[17];
  v6 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v7 = v6;
  v3[18] = v8;
  v3[19] = v0;

  v9 = v2[16];
  if (v0)
  {
    v10 = v3[14];

    v11 = sub_1DA3BBC6C;
  }

  else
  {

    v11 = sub_1DA3BB95C;
  }

  return MEMORY[0x1EEE6DFA0](v11, 0, 0);
}

void sub_1DA3BB95C()
{
  v1 = *(v0 + 112);
  v2 = *(v1 + 64);
  v47 = v1 + 64;
  v48 = v1;
  v3 = *(v0 + 144);
  v4 = -1;
  v5 = -1 << *(v1 + 32);
  if (-v5 < 64)
  {
    v4 = ~(-1 << -v5);
  }

  v6 = v4 & v2;
  v46 = (63 - v5) >> 6;

  v7 = 0;
  v45 = MEMORY[0x1E69E7CC0];
  while (v6)
  {
    v8 = v6;
LABEL_10:
    v6 = (v8 - 1) & v8;
    if (*(v50 + 16))
    {
      v10 = __clz(__rbit64(v8)) | (v7 << 6);
      v11 = (*(v48 + 56) + 32 * v10);
      v12 = v49[18];
      v13 = v11[3];
      v14 = *(v48 + 48) + 56 * v10;
      v16 = v11[1];
      v15 = v11[2];
      v18 = *(v14 + 40);
      v17 = *(v14 + 48);
      v19 = *(v14 + 32);
      v21 = *(v14 + 16);
      v20 = *(v14 + 24);
      v23 = *v14;
      v22 = *(v14 + 8);

      v24 = sub_1DA3B76EC(v23, v22);
      if (v25)
      {
        v44 = v15;
        v26 = (*(v50 + 56) + 16 * v24);
        v27 = *v26;
        v28 = v26[1];
        swift_bridgeObjectRetain_n();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v32 = *(v45 + 16);
          sub_1DA3A5690();
          v45 = v33;
        }

        v29 = v44;
        v30 = *(v45 + 16);
        if (v30 >= *(v45 + 24) >> 1)
        {
          sub_1DA3A5690();
          v29 = v44;
          v45 = v34;
        }

        *(v45 + 16) = v30 + 1;
        v31 = v45 + 88 * v30;
        *(v31 + 32) = v27;
        *(v31 + 40) = v28;
        *(v31 + 48) = v21;
        *(v31 + 56) = v20;
        *(v31 + 64) = v19;
        *(v31 + 65) = *v51;
        *(v31 + 68) = *&v51[3];
        *(v31 + 72) = v18;
        *(v31 + 80) = v17;
        *(v31 + 88) = v27;
        *(v31 + 96) = v28;
        *(v31 + 104) = v29;
        *(v31 + 112) = v13;
      }

      else
      {
      }
    }
  }

  while (1)
  {
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
      return;
    }

    if (v9 >= v46)
    {
      break;
    }

    v8 = *(v47 + 8 * v9);
    ++v7;
    if (v8)
    {
      v7 = v9;
      goto LABEL_10;
    }
  }

  v35 = v49[18];
  v36 = v49[19];
  v37 = v49[14];
  v38 = v49[15];
  v40 = v49[12];
  v39 = v49[13];

  v41 = sub_1DA3BC654(v45);
  v42 = sub_1DA3BBE10(v41, 0x6567617355746163, 0xE800000000000000, 0, 1, (v49 + 2));

  sub_1DA3BCEF4(v42);

  sub_1DA3A8CA8((v49 + 2), &qword_1ECBAEE60, &unk_1DA4245F0);
  OUTLINED_FUNCTION_23();

  v43();
}

uint64_t sub_1DA3BBC6C()
{
  if (qword_1EE102E00 != -1)
  {
    OUTLINED_FUNCTION_12();
  }

  v1 = v0[19];
  v2 = sub_1DA421A94();
  __swift_project_value_buffer(v2, static Logger.extractionCategory);
  v3 = v1;
  v4 = sub_1DA421A74();
  v5 = sub_1DA421F74();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[19];
  v8 = v0[13];
  if (v6)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v7;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    OUTLINED_FUNCTION_6_4(&dword_1DA39E000, v13, v14, "Unable to extract category info: %@. Only returning app stats");
    sub_1DA3A8CA8(v10, &qword_1ECBAEC70, &qword_1DA42A510);
    OUTLINED_FUNCTION_17();
    OUTLINED_FUNCTION_17();
  }

  else
  {
    v15 = v0[13];
  }

  sub_1DA3A8CA8((v0 + 2), &qword_1ECBAEE60, &unk_1DA4245F0);
  v16 = v0[15];
  OUTLINED_FUNCTION_23();

  return v17();
}

uint64_t sub_1DA3BBE10(uint64_t a1, int64_t a2, int64_t a3, unint64_t a4, char a5, uint64_t a6)
{
  LOBYTE(v7) = a5;
  v58 = a4;
  v10 = 0;
  v11 = sub_1DA3BA524(a1);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEE80, &qword_1DA4246F8);
  v64 = v56;
  v55 = sub_1DA3B26D0(&qword_1EE100FE8, &qword_1ECBAEE80, &qword_1DA4246F8);
  v65 = v55;
  v63[0] = v11;
  sub_1DA3A88F8(a6, &v60, &qword_1ECBAEE60, &unk_1DA4245F0);
  v12 = v61;
  if (v61)
  {
    v13 = v62;
    __swift_project_boxed_opaque_existential_1(&v60, v61);
    LODWORD(v14) = (*(v13 + 40))(v12, v13);
    __swift_destroy_boxed_opaque_existential_0(&v60);
  }

  else
  {
    sub_1DA3A8CA8(&v60, &qword_1ECBAEE60, &unk_1DA4245F0);
    LODWORD(v14) = 0;
  }

  if (qword_1EE102E00 != -1)
  {
LABEL_38:
    swift_once();
  }

  v15 = sub_1DA421A94();
  __swift_project_value_buffer(v15, static Logger.extractionCategory);
  v16 = sub_1DA421A74();
  v17 = sub_1DA421F64();
  v57 = a2;
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v59 = v19;
    *v18 = 136315394;
    v20 = v10;
    v21 = a3;
    if (v14)
    {
      if (v14 == 1)
      {
        v22 = 0xED0000736E6F6973;
        v23 = 0x7365536C61746F74;
      }

      else
      {
        v22 = 0xE900000000000065;
        v23 = 0x6D69546C61746F74;
      }
    }

    else
    {
      v22 = 0x80000001DA42C420;
      v23 = 0xD000000000000014;
    }

    v24 = sub_1DA3A5FE8(v23, v22, &v59);

    *(v18 + 4) = v24;
    *(v18 + 12) = 2080;
    *&v60 = v58;
    BYTE8(v60) = v7 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEE90, &qword_1DA424708);
    v25 = sub_1DA421BB4();
    v27 = sub_1DA3A5FE8(v25, v26, &v59);

    *(v18 + 14) = v27;
    _os_log_impl(&dword_1DA39E000, v16, v17, "Ordering features by: %s using %s top appIds", v18, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1DA74E430](v19, -1, -1);
    MEMORY[0x1DA74E430](v18, -1, -1);

    a3 = v21;
    a2 = v57;
    v10 = v20;
    if (v7)
    {
      goto LABEL_34;
    }
  }

  else
  {

    if (v7)
    {
      goto LABEL_34;
    }
  }

  v54 = a3;
  v28 = v64;
  v29 = v65;
  __swift_project_boxed_opaque_existential_1(v63, v64);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEE88, &qword_1DA424700);
  v32 = sub_1DA3BC7DC(sub_1DA3BC6EC, 0, v28, v30, MEMORY[0x1E69E73E0], v29, MEMORY[0x1E69E7410], v31);
  v33 = sub_1DA3BC5A4(v32, v14, v58);
  v58 = v10;
  v34 = v33 + 64;
  v35 = 1 << *(v33 + 32);
  v36 = -1;
  if (v35 < 64)
  {
    v36 = ~(-1 << v35);
  }

  v7 = v36 & *(v33 + 64);
  a3 = (v35 + 63) >> 6;
  v10 = v33;

  a2 = 0;
  v37 = MEMORY[0x1E69E7CC0];
  do
  {
    while (1)
    {
      if (!v7)
      {
        while (1)
        {
          v38 = a2 + 1;
          if (__OFADD__(a2, 1))
          {
            break;
          }

          if (v38 >= a3)
          {
            goto LABEL_33;
          }

          v7 = *(v34 + 8 * v38);
          ++a2;
          if (v7)
          {
            a2 = v38;
            goto LABEL_22;
          }
        }

        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

LABEL_22:
      v39 = (a2 << 9) | (8 * __clz(__rbit64(v7)));
      v40 = *(*(v10 + 56) + v39);
      v41 = *(v40 + 16);
      v14 = *(v37 + 16);
      if (__OFADD__(v14, v41))
      {
        goto LABEL_36;
      }

      v42 = *(*(v10 + 56) + v39);

      if (!swift_isUniquelyReferenced_nonNull_native() || v14 + v41 > *(v37 + 24) >> 1)
      {
        sub_1DA3A5690();
        v37 = v43;
      }

      v7 &= v7 - 1;
      if (!*(v40 + 16))
      {
        break;
      }

      if ((*(v37 + 24) >> 1) - *(v37 + 16) < v41)
      {
        goto LABEL_37;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEA78, &qword_1DA423360);
      swift_arrayInitWithCopy();

      if (v41)
      {
        v45 = *(v37 + 16);
        v46 = __OFADD__(v45, v41);
        v47 = v45 + v41;
        if (v46)
        {
          __break(1u);
          return result;
        }

        *(v37 + 16) = v47;
      }
    }
  }

  while (!v41);
  __break(1u);
LABEL_33:

  v61 = v56;
  v62 = v55;
  *&v60 = v37;
  __swift_destroy_boxed_opaque_existential_0(v63);
  sub_1DA3A1FF8(&v60, v63);
  a3 = v54;
  a2 = v57;
LABEL_34:
  v48 = v64;
  v49 = v65;
  v50 = __swift_project_boxed_opaque_existential_1(v63, v64);
  MEMORY[0x1EEE9AC00](v50);
  v53[2] = a2;
  v53[3] = a3;
  v52 = sub_1DA3BC7DC(sub_1DA3BFA48, v53, v48, &type metadata for SiriSuggestionsIntelligence.Feature, MEMORY[0x1E69E73E0], v49, MEMORY[0x1E69E7410], v51);
  __swift_destroy_boxed_opaque_existential_0(v63);
  return v52;
}

uint64_t sub_1DA3BC3DC(uint64_t a1)
{
  result = MEMORY[0x1DA74D640](*(a1 + 16), MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v3 = 0;
  v9 = result;
  v4 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v4 == v3)
    {

      return v9;
    }

    if (v3 >= *(a1 + 16))
    {
      break;
    }

    ++v3;
    v7 = *(i - 1);
    v6 = *i;

    sub_1DA3BEA24(&v8, v7, v6);
  }

  __break(1u);
  return result;
}

void sub_1DA3BC49C(uint64_t a1)
{
  v2 = 0;
  v15[2] = MEMORY[0x1DA74D640](*(a1 + 16), MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v3 = *(a1 + 64);
  v4 = *(a1 + 32);
  OUTLINED_FUNCTION_3_3();
  v7 = v6 & v5;
  v9 = (v8 + 63) >> 6;
  if ((v6 & v5) != 0)
  {
    do
    {
      v10 = v2;
LABEL_7:
      v11 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v12 = (*(a1 + 48) + ((v10 << 10) | (16 * v11)));
      v13 = *v12;
      v14 = v12[1];

      sub_1DA3BEA24(v15, v13, v14);
    }

    while (v7);
  }

  while (1)
  {
    v10 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      break;
    }

    if (v10 >= v9)
    {

      return;
    }

    v7 = *(a1 + 64 + 8 * v10);
    ++v2;
    if (v7)
    {
      v2 = v10;
      goto LABEL_7;
    }
  }

  __break(1u);
}

uint64_t sub_1DA3BC5A4(uint64_t a1, unsigned int a2, unint64_t a3)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEE98, &qword_1DA424710);
    v7 = sub_1DA422214();
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC8];
  }

  v10 = v7;
  sub_1DA3BD9D0(a1, 1, &v10, a2, a3);
  v8 = v10;
  if (v3)
  {
  }

  return v8;
}

uint64_t sub_1DA3BC654(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEE70, &unk_1DA4246E0);
    v3 = sub_1DA422214();
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC8];
  }

  v6 = v3;
  sub_1DA3BD754(a1, 1, &v6);
  v4 = v6;
  if (v1)
  {
  }

  return v4;
}

uint64_t sub_1DA3BC6EC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = *(a1 + 32);
  v9 = a1[5];
  v8 = a1[6];
  v11 = a1[7];
  v10 = a1[8];
  v12 = a1[9];
  v13 = a1[10];
  *a2 = v5;
  *(a2 + 8) = v6;
  *(a2 + 16) = v7;
  *(a2 + 24) = v9;
  *(a2 + 32) = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEA70, &qword_1DA424720);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1DA4238F0;
  *(v14 + 32) = v4;
  *(v14 + 40) = v3;
  *(v14 + 48) = v5;
  *(v14 + 56) = v6;
  *(v14 + 64) = v7;
  *(v14 + 72) = v9;
  *(v14 + 80) = v8;
  *(v14 + 88) = v11;
  *(v14 + 96) = v10;
  *(v14 + 104) = v12;
  *(v14 + 112) = v13;
  *(a2 + 40) = v14;
  swift_bridgeObjectRetain_n();
}

uint64_t sub_1DA3BC7DC(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v49 = a8;
  v9 = v8;
  v63 = a2;
  v64 = a4;
  v62 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v57 = *(AssociatedTypeWitness - 8);
  v15 = *(v57 + 64);
  v16 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v50 = a5;
  v51 = &v45 - v17;
  v48 = *(a5 - 8);
  v18 = *(v48 + 64);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v60 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v58 = &v45 - v21;
  v22 = sub_1DA421F94();
  v46 = *(v22 - 8);
  v47 = v22;
  v23 = *(v46 + 64);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v26 = &v45 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v24);
  v29 = &v45 - v28;
  v30 = *(*(a4 - 1) + 64);
  v31 = MEMORY[0x1EEE9AC00](v27);
  v59 = &v45 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x1EEE9AC00](v31);
  v56 = *(a3 - 8);
  v34 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v33);
  v55 = &v45 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = a6;
  v65 = swift_getAssociatedTypeWitness();
  v52 = *(v65 - 8);
  v36 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v65);
  v38 = &v45 - v37;
  v39 = sub_1DA421CC4();
  v66 = sub_1DA422174();
  v61 = sub_1DA422184();
  sub_1DA422134();
  (*(v56 + 16))(v55, v53, a3);
  v64 = v38;
  v56 = a3;
  result = sub_1DA421CB4();
  if (v39 < 0)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v39)
  {
    v41 = (v57 + 8);
    swift_getAssociatedConformanceWitness();
    while (1)
    {
      sub_1DA421FB4();
      result = __swift_getEnumTagSinglePayload(v29, 1, AssociatedTypeWitness);
      if (result == 1)
      {
        goto LABEL_17;
      }

      v62(v29, v58);
      if (v9)
      {
        (*(v52 + 8))(v64, v65);

        (*(v48 + 32))(v49, v58, v50);
        return (*v41)(v29, AssociatedTypeWitness);
      }

      v9 = 0;
      (*v41)(v29, AssociatedTypeWitness);
      sub_1DA422164();
      if (!--v39)
      {
        goto LABEL_9;
      }
    }
  }

  swift_getAssociatedConformanceWitness();
LABEL_9:
  v42 = (v57 + 32);
  v43 = (v57 + 8);
  v44 = v51;
  while (1)
  {
    sub_1DA421FB4();
    if (__swift_getEnumTagSinglePayload(v26, 1, AssociatedTypeWitness) == 1)
    {
      (*(v52 + 8))(v64, v65);
      (*(v46 + 8))(v26, v47);
      return v66;
    }

    (*v42)(v44, v26, AssociatedTypeWitness);
    v62(v44, v60);
    if (v9)
    {
      break;
    }

    v9 = 0;
    (*v43)(v44, AssociatedTypeWitness);
    sub_1DA422164();
  }

  (*v43)(v44, AssociatedTypeWitness);
  (*(v52 + 8))(v64, v65);

  return (*(v48 + 32))(v49, v60, v50);
}

uint64_t sub_1DA3BCE48(unint64_t a1)
{
  v3 = sub_1DA3A6D84(a1);
  v4 = sub_1DA3A6D84(*v1);
  v5 = __OFADD__(v4, v3);
  result = v4 + v3;
  if (v5)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_1DA3BD554(result);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_1DA3BF500(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v10 < 1)
  {
LABEL_6:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_6;
  }

LABEL_9:
  __break(1u);
  return result;
}

void sub_1DA3BCEF4(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_0_6(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1DA3BD5F4(v4, 1, sub_1DA3A5520);
  v6 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_1_3();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v6;
    return;
  }

  v8 = *(v6 + 16);
  v5 = __OFADD__(v8, v1);
  v9 = v8 + v1;
  if (!v5)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_1DA3BCFB0(uint64_t a1)
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

  result = sub_1DA3BD5F4(result, 1, sub_1DA3A5690);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  if ((*(v6 + 24) >> 1) - *(v6 + 16) < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEA78, &qword_1DA423360);
  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v7 = *(v6 + 16);
  v8 = __OFADD__(v7, v3);
  v9 = v7 + v3;
  if (!v8)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

void sub_1DA3BD0A0(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_0_6(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1DA3BD5F4(v4, 1, sub_1DA3A5920);
  v6 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_1_3();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEA00, &qword_1DA4232E8);
  OUTLINED_FUNCTION_7_3();

  if (!v1)
  {
LABEL_8:
    *v2 = v6;
    return;
  }

  v8 = *(v6 + 16);
  v5 = __OFADD__(v8, v1);
  v9 = v8 + v1;
  if (!v5)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_1DA3BD164(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_0_6(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1DA3BD5F4(v4, 1, sub_1DA3A5AB0);
  v6 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_1_3();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEA50, &qword_1DA4246D0);
  OUTLINED_FUNCTION_7_3();

  if (!v1)
  {
LABEL_8:
    *v2 = v6;
    return;
  }

  v8 = *(v6 + 16);
  v5 = __OFADD__(v8, v1);
  v9 = v8 + v1;
  if (!v5)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_1DA3BD228@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = a1[2];
  v8 = a1[3];
  v9 = *(a1 + 32);
  v10 = a1[5];
  v11 = a1[6];
  v12 = a1[8];
  v18 = a1[7];
  v13 = a1[9];
  v14 = a1[10];

  MEMORY[0x1DA74D370](95, 0xE100000000000000);
  MEMORY[0x1DA74D370](v5, v6);
  MEMORY[0x1DA74D370](64, 0xE100000000000000);
  v15 = SiriSuggestionsIntelligence.TimePartition.featureName.getter();
  MEMORY[0x1DA74D370](v15);

  a4[5] = &type metadata for SiriSuggestionsIntelligence.AppStats;
  a4[6] = sub_1DA3BFABC();
  a4[7] = sub_1DA3BFB10();
  v16 = swift_allocObject();
  a4[1] = a3;
  a4[2] = v16;
  v16[2] = v18;
  v16[3] = v12;
  v16[4] = v13;
  v16[5] = v14;
  *a4 = a2;
  a4[8] = 0;
}

void *SiriSuggestionsIntelligence.AppUsageFeatureExtractor.deinit()
{
  v1 = v0[2];

  v2 = v0[4];

  __swift_destroy_boxed_opaque_existential_0(v0 + 5);
  __swift_destroy_boxed_opaque_existential_0(v0 + 10);
  return v0;
}

uint64_t SiriSuggestionsIntelligence.AppUsageFeatureExtractor.__deallocating_deinit()
{
  SiriSuggestionsIntelligence.AppUsageFeatureExtractor.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 120, 7);
}

uint64_t sub_1DA3BD3CC()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DA3BD45C;

  return SiriSuggestionsIntelligence.AppUsageFeatureExtractor.extract(_:)();
}

uint64_t sub_1DA3BD45C(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v5 = *v2;
  OUTLINED_FUNCTION_13_0();
  *v6 = v5;

  OUTLINED_FUNCTION_23();
  if (!v1)
  {
    v7 = a1;
  }

  return v8(v7);
}

uint64_t sub_1DA3BD554(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_1DA4221E4();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_1DA4220D4();
  *v1 = result;
  return result;
}

uint64_t sub_1DA3BD5F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if (!result || a1 > *(v6 + 24) >> 1)
  {
    if (*(v6 + 16) > a1)
    {
      v8 = *(v6 + 16);
    }

    result = a3();
    *v3 = result;
  }

  return result;
}

void sub_1DA3BD66C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 >= 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEA70, &qword_1DA424720);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 88);
    }

    if (v4 != a3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEA78, &qword_1DA423360);
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_9;
  }
}

uint64_t sub_1DA3BD754(uint64_t a1, char a2, uint64_t *a3)
{
  v51 = a3;
  v4 = 0;
  v41 = *(a1 + 16);
  for (i = 32; ; i += 88)
  {
    if (v41 == v4)
    {
    }

    if (v4 >= *(a1 + 16))
    {
      break;
    }

    memcpy(__dst, (a1 + i), sizeof(__dst));
    v6 = *&__dst[80];
    v8 = *&__dst[64];
    v7 = *&__dst[72];
    v9 = *&__dst[48];
    v10 = *&__dst[56];
    v12 = *&__dst[32];
    v11 = *&__dst[40];
    v43 = *&__dst[16];
    v44 = *__dst;
    sub_1DA3A88F8(__dst, v45, &qword_1ECBAEA78, &qword_1DA423360);
    if (!*(&v44 + 1))
    {
    }

    v47 = v44;
    v48 = v43;
    *&v49 = v12;
    *(&v49 + 1) = v11;
    v50 = v9;
    v13 = *v51;
    v15 = sub_1DA3B7618();
    v16 = *(v13 + 16);
    v17 = (v14 & 1) == 0;
    v18 = v16 + v17;
    if (__OFADD__(v16, v17))
    {
      goto LABEL_19;
    }

    v19 = v14;
    if (*(v13 + 24) >= v18)
    {
      if ((a2 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEE78, &qword_1DA4246F0);
        sub_1DA4221B4();
      }
    }

    else
    {
      v20 = v51;
      sub_1DA3D6290(v18, a2 & 1);
      v21 = *v20;
      v22 = sub_1DA3B7618();
      if ((v19 & 1) != (v23 & 1))
      {
        goto LABEL_22;
      }

      v15 = v22;
    }

    v24 = *v51;
    if (v19)
    {
      v25 = v24[7] + 32 * v15;
      v27 = *v25;
      v26 = *(v25 + 8);
      v28 = *(v25 + 16);
      v29 = *(v25 + 24);

      sub_1DA3BF9EC(&v47);
      if (__OFADD__(v28, v7))
      {
        goto LABEL_21;
      }

      v30 = v24[7] + 32 * v15;
      v31 = *(v30 + 8);
      *v30 = v27;
      *(v30 + 8) = v26;
      *(v30 + 16) = v28 + v7;
      *(v30 + 24) = v6 + v29;
    }

    else
    {
      v24[(v15 >> 6) + 8] |= 1 << v15;
      v32 = v24[6] + 56 * v15;
      v33 = v47;
      v34 = v48;
      v35 = v49;
      *(v32 + 48) = v50;
      *(v32 + 16) = v34;
      *(v32 + 32) = v35;
      *v32 = v33;
      v36 = v24[7] + 32 * v15;
      *v36 = v10;
      *(v36 + 8) = v8;
      *(v36 + 16) = v7;
      *(v36 + 24) = v6;
      v37 = v24[2];
      v38 = __OFADD__(v37, 1);
      v39 = v37 + 1;
      if (v38)
      {
        goto LABEL_20;
      }

      v24[2] = v39;
    }

    ++v4;
    a2 = 1;
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  result = sub_1DA4223E4();
  __break(1u);
  return result;
}

uint64_t sub_1DA3BD9D0(uint64_t a1, char a2, void *a3, unsigned int a4, unint64_t a5)
{
  v7 = 0;
  v42 = *(a1 + 16);
  for (i = (a1 + 48); ; i += 6)
  {
    if (v42 == v7)
    {
    }

    if (v7 >= *(a1 + 16))
    {
      break;
    }

    v9 = i[2];
    v10 = i[3];
    v11 = i[1];
    v12 = *i;
    v45 = *(i - 1);
    *&v46 = v12;
    *(&v46 + 1) = v11;
    v47 = v9;
    v13 = *a3;

    v15 = sub_1DA3B7690();
    v16 = v13[2];
    v17 = (v14 & 1) == 0;
    v18 = v16 + v17;
    if (__OFADD__(v16, v17))
    {
      goto LABEL_27;
    }

    v19 = v14;
    if (v13[3] >= v18)
    {
      if ((a2 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEEA0, &qword_1DA424718);
        sub_1DA4221B4();
      }
    }

    else
    {
      sub_1DA3D6564(v18, a2 & 1);
      v20 = *a3;
      v21 = sub_1DA3B7690();
      if ((v19 & 1) != (v22 & 1))
      {
        goto LABEL_31;
      }

      v15 = v21;
    }

    v23 = *a3;
    if (v19)
    {
      v48 = *(v23[7] + 8 * v15);
      swift_bridgeObjectRetain_n();

      sub_1DA3BCFB0(v24);
      v44 = v48;

      sub_1DA3BDC88(&v44, a4);
      if (v41)
      {
        goto LABEL_30;
      }

      if ((a5 & 0x8000000000000000) != 0)
      {
        goto LABEL_29;
      }

      v25 = v44;
      v26 = *(v44 + 16);
      if (v26 >= a5)
      {
        v27 = a5;
      }

      else
      {
        v27 = *(v44 + 16);
      }

      if (!a5)
      {
        v27 = 0;
      }

      if (v26 == v27)
      {
      }

      else
      {
        sub_1DA3BD66C(v44, v44 + 32, 0, (2 * v27) | 1);
        v37 = v36;

        v25 = v37;
      }

      sub_1DA3BFA68(&v45);
      v28 = v23[7];
      v29 = *(v28 + 8 * v15);
      *(v28 + 8 * v15) = v25;
    }

    else
    {
      v23[(v15 >> 6) + 8] |= 1 << v15;
      v30 = v23[6] + 40 * v15;
      v31 = v45;
      v32 = v46;
      *(v30 + 32) = v47;
      *v30 = v31;
      *(v30 + 16) = v32;
      *(v23[7] + 8 * v15) = v10;
      v33 = v23[2];
      v34 = __OFADD__(v33, 1);
      v35 = v33 + 1;
      if (v34)
      {
        goto LABEL_28;
      }

      v23[2] = v35;
    }

    ++v7;
    a2 = 1;
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:

  __break(1u);
LABEL_31:
  result = sub_1DA4223E4();
  __break(1u);
  return result;
}

char *sub_1DA3BDC88(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1DA3CCC5C(v4);
    v4 = v5;
  }

  v6 = *(v4 + 16);
  v8[0] = v4 + 32;
  v8[1] = v6;
  result = sub_1DA3BDCFC(v8, a2);
  *a1 = v4;
  return result;
}

char *sub_1DA3BDCFC(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  result = sub_1DA422344();
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v6 = result;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEA78, &qword_1DA423360);
        v8 = sub_1DA421D74();
        *(v8 + 16) = v7;
      }

      v9[0] = (v8 + 32);
      v9[1] = v7;
      sub_1DA3BDF24(v9, v10, a1, v6, a2);
      *(v8 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {
    return sub_1DA3BDE0C(0, v4, 1, a1, a2);
  }

  return result;
}

char *sub_1DA3BDE0C(char *result, uint64_t a2, uint64_t a3, uint64_t *a4, char a5)
{
  if (a3 != a2)
  {
    v6 = a3;
    v8 = *a4;
    v9 = *a4 + 88 * a3 - 88;
    v10 = &result[-a3];
    while (2)
    {
      v11 = v10;
      v12 = v9;
      do
      {
        v13 = *(v12 + 168);
        v14 = *(v12 + 80);
        if (a5)
        {
          if (a5 == 1)
          {
            v14 = *(v12 + 72);
            v13 = *(v12 + 160);
          }
        }

        else
        {
          v13 = v13 / *(v12 + 160);
          v14 = v14 / *(v12 + 72);
        }

        if (v14 >= v13)
        {
          break;
        }

        if (!v8)
        {
          __break(1u);
          return result;
        }

        memcpy(__dst, (v12 + 88), sizeof(__dst));
        memcpy((v12 + 88), v12, 0x58uLL);
        result = memcpy(v12, __dst, 0x58uLL);
        v12 -= 88;
      }

      while (!__CFADD__(v11++, 1));
      ++v6;
      v9 += 88;
      --v10;
      if (v6 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1DA3BDF24(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v7 = a3[1];
  v92 = MEMORY[0x1E69E7CC0];
  if (v7 >= 1)
  {
    v8 = 0;
    v9 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v10 = v8 + 1;
      if (v8 + 1 < v7)
      {
        v11 = *a3 + 88 * v10;
        v12 = *(v11 + 72);
        v13 = *(v11 + 80);
        v14 = *a3 + 88 * v8;
        v15 = *(v14 + 80);
        v16 = v12;
        if (a5)
        {
          if (a5 == 1)
          {
            v15 = *(v14 + 72);
          }

          else
          {
            v16 = v13;
          }
        }

        else
        {
          v16 = v13 / v16;
          v15 = v15 / *(v14 + 72);
        }

        v17 = v8 + 2;
        if (v7 > v8 + 2)
        {
          v17 = v7;
        }

        v18 = 88 * v8;
        v19 = (*a3 + 88 * v8 + 256);
        while (++v10 < v7)
        {
          v20 = *(v19 - 1);
          v21 = *v19;
          v22 = v20;
          if (a5)
          {
            if (a5 == 1)
            {
              v13 = v12;
            }

            else
            {
              v22 = *v19;
            }
          }

          else
          {
            v22 = v21 / v22;
            v13 = v13 / v12;
          }

          v23 = (v15 < v16) ^ (v13 >= v22);
          v19 += 11;
          v13 = v21;
          v12 = v20;
          if ((v23 & 1) == 0)
          {
            goto LABEL_21;
          }
        }

        v10 = v17;
LABEL_21:
        if (v15 < v16)
        {
          if (v10 < v8)
          {
            goto LABEL_124;
          }

          if (v8 < v10)
          {
            v24 = 88 * v10 - 88;
            v25 = v10;
            v26 = v8;
            do
            {
              if (v26 != --v10)
              {
                v27 = *a3;
                if (!*a3)
                {
                  goto LABEL_129;
                }

                memcpy(__dst, (v27 + v18), sizeof(__dst));
                memmove((v27 + v18), (v27 + v24), 0x58uLL);
                memcpy((v27 + v24), __dst, 0x58uLL);
              }

              ++v26;
              v24 -= 88;
              v18 += 88;
            }

            while (v26 < v10);
            v7 = a3[1];
            v10 = v25;
          }
        }
      }

      if (v10 < v7)
      {
        if (__OFSUB__(v10, v8))
        {
          goto LABEL_123;
        }

        if (v10 - v8 < a4)
        {
          v28 = v8 + a4;
          if (__OFADD__(v8, a4))
          {
            goto LABEL_125;
          }

          if (v28 >= v7)
          {
            v28 = v7;
          }

          if (v28 < v8)
          {
LABEL_126:
            __break(1u);
LABEL_127:
            __break(1u);
LABEL_128:
            __break(1u);
LABEL_129:
            __break(1u);
LABEL_130:
            __break(1u);
LABEL_131:
            __break(1u);
            return;
          }

          if (v10 != v28)
          {
            v29 = *a3;
            v30 = *a3 + 88 * v10 - 88;
            v86 = v8;
            v88 = v28;
            v31 = v10;
            v32 = v8 - v10;
            do
            {
              v33 = v32;
              v34 = v30;
              do
              {
                v35 = *(v34 + 168);
                v36 = *(v34 + 80);
                if (a5)
                {
                  if (a5 == 1)
                  {
                    v36 = *(v34 + 72);
                    v35 = *(v34 + 160);
                  }
                }

                else
                {
                  v35 = v35 / *(v34 + 160);
                  v36 = v36 / *(v34 + 72);
                }

                if (v36 >= v35)
                {
                  break;
                }

                if (!v29)
                {
                  goto LABEL_127;
                }

                memcpy(__dst, (v34 + 88), sizeof(__dst));
                memcpy((v34 + 88), v34, 0x58uLL);
                memcpy(v34, __dst, 0x58uLL);
                v34 -= 88;
              }

              while (!__CFADD__(v33++, 1));
              v30 += 88;
              --v32;
              ++v31;
            }

            while (v31 != v88);
            v10 = v88;
            v8 = v86;
          }
        }
      }

      if (v10 < v8)
      {
        goto LABEL_122;
      }

      v87 = v10;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1DA3A54F8(0, v9[2] + 1, 1, v9);
        v9 = v82;
      }

      v39 = v9[2];
      v38 = v9[3];
      v40 = v39 + 1;
      if (v39 >= v38 >> 1)
      {
        sub_1DA3A54F8(v38 > 1, v39 + 1, 1, v9);
        v9 = v83;
      }

      v9[2] = v40;
      v41 = v9 + 4;
      v42 = &v9[2 * v39 + 4];
      *v42 = v8;
      v42[1] = v10;
      v89 = *a1;
      if (!*a1)
      {
        goto LABEL_130;
      }

      if (v39)
      {
        while (1)
        {
          v43 = v40 - 1;
          v44 = &v41[2 * v40 - 2];
          v45 = &v9[2 * v40];
          if (v40 >= 4)
          {
            break;
          }

          if (v40 == 3)
          {
            v46 = v9[4];
            v47 = v9[5];
            v56 = __OFSUB__(v47, v46);
            v48 = v47 - v46;
            v49 = v56;
LABEL_71:
            if (v49)
            {
              goto LABEL_112;
            }

            v61 = *v45;
            v60 = v45[1];
            v62 = __OFSUB__(v60, v61);
            v63 = v60 - v61;
            v64 = v62;
            if (v62)
            {
              goto LABEL_115;
            }

            v65 = v44[1];
            v66 = v65 - *v44;
            if (__OFSUB__(v65, *v44))
            {
              goto LABEL_118;
            }

            if (__OFADD__(v63, v66))
            {
              goto LABEL_120;
            }

            if (v63 + v66 >= v48)
            {
              if (v48 < v66)
              {
                v43 = v40 - 2;
              }

              goto LABEL_93;
            }

            goto LABEL_86;
          }

          if (v40 < 2)
          {
            goto LABEL_114;
          }

          v68 = *v45;
          v67 = v45[1];
          v56 = __OFSUB__(v67, v68);
          v63 = v67 - v68;
          v64 = v56;
LABEL_86:
          if (v64)
          {
            goto LABEL_117;
          }

          v70 = *v44;
          v69 = v44[1];
          v56 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v56)
          {
            goto LABEL_119;
          }

          if (v71 < v63)
          {
            goto LABEL_100;
          }

LABEL_93:
          if (v43 - 1 >= v40)
          {
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
LABEL_116:
            __break(1u);
LABEL_117:
            __break(1u);
LABEL_118:
            __break(1u);
LABEL_119:
            __break(1u);
LABEL_120:
            __break(1u);
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
LABEL_123:
            __break(1u);
LABEL_124:
            __break(1u);
LABEL_125:
            __break(1u);
            goto LABEL_126;
          }

          if (!*a3)
          {
            goto LABEL_128;
          }

          v75 = a5;
          v76 = v9;
          v77 = &v41[2 * v43 - 2];
          v78 = *v77;
          v79 = &v41[2 * v43];
          v80 = *(v79 + 1);
          sub_1DA3BE638((*a3 + 88 * *v77), (*a3 + 88 * *v79), *a3 + 88 * v80, v89, v75);
          if (v5)
          {
            goto LABEL_105;
          }

          if (v80 < v78)
          {
            goto LABEL_107;
          }

          v81 = v76[2];
          if (v43 > v81)
          {
            goto LABEL_108;
          }

          *v77 = v78;
          v77[1] = v80;
          if (v43 >= v81)
          {
            goto LABEL_109;
          }

          v40 = v81 - 1;
          sub_1DA3C6930(v79 + 16, v81 - 1 - v43, &v41[2 * v43]);
          v9 = v76;
          v76[2] = v81 - 1;
          a5 = v75;
          if (v81 <= 2)
          {
            goto LABEL_100;
          }
        }

        v50 = &v41[2 * v40];
        v51 = *(v50 - 8);
        v52 = *(v50 - 7);
        v56 = __OFSUB__(v52, v51);
        v53 = v52 - v51;
        if (v56)
        {
          goto LABEL_110;
        }

        v55 = *(v50 - 6);
        v54 = *(v50 - 5);
        v56 = __OFSUB__(v54, v55);
        v48 = v54 - v55;
        v49 = v56;
        if (v56)
        {
          goto LABEL_111;
        }

        v57 = v45[1];
        v58 = v57 - *v45;
        if (__OFSUB__(v57, *v45))
        {
          goto LABEL_113;
        }

        v56 = __OFADD__(v48, v58);
        v59 = v48 + v58;
        if (v56)
        {
          goto LABEL_116;
        }

        if (v59 >= v53)
        {
          v73 = *v44;
          v72 = v44[1];
          v56 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v56)
          {
            goto LABEL_121;
          }

          if (v48 < v74)
          {
            v43 = v40 - 2;
          }

          goto LABEL_93;
        }

        goto LABEL_71;
      }

LABEL_100:
      v7 = a3[1];
      v8 = v87;
      if (v87 >= v7)
      {
        v92 = v9;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_131;
  }

  sub_1DA3BE4F8(&v92, *a1, a3, a5);
LABEL_105:
}

uint64_t sub_1DA3BE4F8(uint64_t *a1, char *a2, void *a3, char a4)
{
  i = a1;
  v17 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1DA3C691C(v17);
    v17 = result;
  }

  v13 = i;
  *i = v17;
  v7 = (v17 + 16);
  for (i = *(v17 + 16); ; *v7 = i)
  {
    if (i < 2)
    {
LABEL_10:
      *v13 = v17;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v8 = (v17 + 16 * i);
    v9 = *v8;
    v10 = &v7[2 * i];
    v11 = v10[1];
    sub_1DA3BE638((*a3 + 88 * *v8), (*a3 + 88 * *v10), *a3 + 88 * v11, a2, a4);
    if (v4)
    {
      goto LABEL_10;
    }

    if (v11 < v9)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (i - 2 >= *v7)
    {
      goto LABEL_12;
    }

    *v8 = v9;
    v8[1] = v11;
    v12 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v10, v10 + 2, 16 * v12);
  }

  *v13 = v17;
  __break(1u);
  return result;
}

uint64_t sub_1DA3BE638(char *a1, char *a2, unint64_t a3, char *a4, char a5)
{
  v6 = a4;
  v7 = a3;
  v8 = a2;
  v9 = a1;
  v10 = (a2 - a1) / 88;
  v11 = (a3 - a2) / 88;
  if (v10 < v11)
  {
    sub_1DA3AFFA0(a1, (a2 - a1) / 88, a4);
    v12 = &v6[88 * v10];
    while (1)
    {
      if (v6 >= v12 || v8 >= v7)
      {
        v8 = v9;
        goto LABEL_38;
      }

      v14 = *(v8 + 80);
      v15 = *(v6 + 10);
      if (a5)
      {
        if (a5 == 1)
        {
          v15 = *(v6 + 9);
          v14 = *(v8 + 72);
        }
      }

      else
      {
        v14 = v14 / *(v8 + 72);
        v15 = v15 / *(v6 + 9);
      }

      if (v15 >= v14)
      {
        break;
      }

      v16 = v8;
      v17 = v9 == v8;
      v8 += 88;
      if (!v17)
      {
        goto LABEL_17;
      }

LABEL_18:
      v9 += 88;
    }

    v16 = v6;
    v17 = v9 == v6;
    v6 += 88;
    if (v17)
    {
      goto LABEL_18;
    }

LABEL_17:
    memmove(v9, v16, 0x58uLL);
    goto LABEL_18;
  }

  sub_1DA3AFFA0(a2, (a3 - a2) / 88, a4);
  v18 = &v6[88 * v11];
LABEL_20:
  for (i = 0; ; i -= 88)
  {
    v12 = &v18[i];
    if (&v18[i] <= v6 || v8 <= v9)
    {
      break;
    }

    v21 = *(v12 - 1);
    v22 = *(v8 - 8);
    if (a5)
    {
      if (a5 == 1)
      {
        v22 = *(v8 - 16);
        v21 = *(v12 - 2);
      }
    }

    else
    {
      v21 = v21 / *(v12 - 2);
      v22 = v22 / *(v8 - 16);
    }

    v23 = v7 + i;
    v24 = (v7 + i - 88);
    if (v22 < v21)
    {
      v25 = (v8 - 88);
      v18 += i;
      v7 = v7 + i - 88;
      v17 = v23 == v8;
      v8 -= 88;
      if (!v17)
      {
        memmove(v24, v25, 0x58uLL);
        v8 = v25;
        v7 = v24;
      }

      goto LABEL_20;
    }

    if (v12 != (v7 + i))
    {
      memmove((v7 + i - 88), v12 - 88, 0x58uLL);
    }
  }

LABEL_38:
  v26 = (v12 - v6) / 88;
  if (v8 != v6 || v8 >= &v6[88 * v26])
  {
    memmove(v8, v6, 88 * v26);
  }

  return 1;
}

uint64_t sub_1DA3BE860(_BYTE *a1)
{
  v2 = v1;
  v3 = a1;
  v13[1] = *MEMORY[0x1E69E9840];
  v4 = a1[32];
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = swift_retain_n();
  if (v5 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v12 = swift_slowAlloc();

      v3 = sub_1DA3BF460(v12, v6, v3);
      MEMORY[0x1DA74E430](v12, -1, -1);

      goto LABEL_6;
    }
  }

  MEMORY[0x1EEE9AC00](v7);
  v8 = v13 - ((8 * v6 + 15) & 0x3FFFFFFFFFFFFFF0);
  sub_1DA3D78F8(0, v6, v8);

  v9 = sub_1DA3BF2C0(v8, v6, v3);
  if (v2)
  {
    swift_willThrow();
  }

  else
  {
    v3 = v9;
  }

LABEL_6:

  v10 = *MEMORY[0x1E69E9840];
  return v3;
}

BOOL sub_1DA3BEA24(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_1DA422434();
  sub_1DA421BF4();
  v9 = sub_1DA422474();
  v10 = ~(-1 << *(v7 + 32));
  while (1)
  {
    v11 = v9 & v10;
    v12 = (1 << (v9 & v10)) & *(v7 + 56 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v12)
    {
      break;
    }

    v13 = (*(v7 + 48) + 16 * v11);
    v14 = *v13 == a2 && v13[1] == a3;
    if (v14 || (sub_1DA4223A4() & 1) != 0)
    {

      v15 = (*(v7 + 48) + 16 * v11);
      v16 = v15[1];
      *a1 = *v15;
      a1[1] = v16;

      return v12 == 0;
    }

    v9 = v11 + 1;
  }

  v17 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v3;

  sub_1DA3BEDCC(a2, a3, v11, isUniquelyReferenced_nonNull_native);
  *v3 = v20;
  *a1 = a2;
  a1[1] = a3;
  return v12 == 0;
}

uint64_t sub_1DA3BEB70(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEE68, &qword_1DA4246D8);
  result = sub_1DA422064();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v31 = v2;
  v7 = 0;
  v8 = (v3 + 56);
  v9 = 1 << *(v3 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v3 + 56);
  v12 = (v9 + 63) >> 6;
  v13 = result + 56;
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      sub_1DA3D78F8(0, (v30 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = (*(v3 + 48) + 16 * (v14 | (v7 << 6)));
    v18 = *v17;
    v19 = v17[1];
    v20 = *(v6 + 40);
    sub_1DA422434();
    sub_1DA421BF4();
    result = sub_1DA422474();
    v21 = -1 << *(v6 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
    {
      break;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = (*(v6 + 48) + 16 * v24);
    *v29 = v18;
    v29[1] = v19;
    ++*(v6 + 16);
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v25 = 0;
  v26 = (63 - v21) >> 6;
  while (++v23 != v26 || (v25 & 1) == 0)
  {
    v27 = v23 == v26;
    if (v23 == v26)
    {
      v23 = 0;
    }

    v25 |= v27;
    v28 = *(v13 + 8 * v23);
    if (v28 != -1)
    {
      v24 = __clz(__rbit64(~v28)) + (v23 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1DA3BEDCC(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_1DA3BEB70(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_1DA3BF08C(v8 + 1);
LABEL_10:
      v15 = *v4;
      v16 = *(*v4 + 40);
      sub_1DA422434();
      sub_1DA421BF4();
      result = sub_1DA422474();
      v17 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = result & v17;
        if (((*(v15 + 56 + (((result & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v17)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v18 = (*(v15 + 48) + 16 * a3);
        v19 = *v18 == v7 && v18[1] == a2;
        if (v19 || (sub_1DA4223A4() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = sub_1DA3BEF34();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = v7;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    result = sub_1DA4223D4();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

void *sub_1DA3BEF34()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEE68, &qword_1DA4246D8);
  v2 = *v0;
  v3 = sub_1DA422054();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + 16 * v17);
        *v20 = *v18;
        v20[1] = v19;
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
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
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
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_1DA3BF08C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEE68, &qword_1DA4246D8);
  result = sub_1DA422064();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_14:
        v16 = (*(v3 + 48) + 16 * (v13 | (v7 << 6)));
        v17 = *v16;
        v18 = v16[1];
        v19 = *(v6 + 40);
        sub_1DA422434();

        sub_1DA421BF4();
        result = sub_1DA422474();
        v20 = -1 << *(v6 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        v28 = (*(v6 + 48) + 16 * v23);
        *v28 = v17;
        v28[1] = v18;
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_9;
        }
      }

      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {

          v2 = v29;
          goto LABEL_27;
        }

        v15 = *(v3 + 56 + 8 * v7);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_1DA3BF2C0(uint64_t result, uint64_t a2, uint64_t a3)
{
  v24 = result;
  v25 = 0;
  v3 = 0;
  v4 = a3 + 64;
  v5 = 1 << *(a3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a3 + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v27 = (v7 - 1) & v7;
LABEL_11:
    v12 = v9 | (v3 << 6);
    v13 = (*(a3 + 48) + 56 * v12);
    v14 = *v13;
    v15 = v13[1];
    v16 = v13[6];
    v17 = v12;
    v18 = *(*(a3 + 56) + 32 * v12 + 8);

    v19 = sub_1DA3B8930(v14, v15);

    v7 = v27;
    if (v19)
    {
      *(v24 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      if (__OFADD__(v25++, 1))
      {
        __break(1u);
LABEL_15:
        sub_1DA3C83EC(v24, a2, v25, a3);
        v22 = v21;

        return v22;
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      goto LABEL_15;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v27 = (v11 - 1) & v11;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_1DA3BF460(void *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    swift_retain_n();
    v6 = sub_1DA3BF2C0(v5, a2, a3);

    return v6;
  }

  return result;
}

uint64_t sub_1DA3BF500(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_1DA4221E4();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_1DA3A6D84(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        type metadata accessor for SiriSuggestionsIntelligence.SourcedFeature();
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_1DA3B26D0(&qword_1ECBAEEC0, &qword_1ECBAED00, &qword_1DA423CD0);
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAED00, &qword_1DA423CD0);
          v9 = sub_1DA3DD708(v12, i, a3);
          v11 = *v10;
          (v9)(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1DA3BF688(uint64_t result, void *a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
    v13 = 0;
    v10 = 0;
LABEL_20:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = (*(a4 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v9)))));
      v17 = v16[1];
      v9 &= v9 - 1;
      *v11 = *v16;
      v11[1] = v17;
      if (v14 == v10)
      {

        v13 = v15;
        goto LABEL_20;
      }

      v11 += 2;

      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1DA3BF7E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = *(a7 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = swift_allocObject();
  (*(v15 + 16))(v18, a4, a7);
  v20 = sub_1DA3BF924(a1, a2, a3, v18, a5, v19, a7, a8);
  (*(v15 + 8))(a4, a7);
  return v20;
}

void *sub_1DA3BF924(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5, void *a6, uint64_t a7, uint64_t a8)
{
  a6[8] = a7;
  a6[9] = a8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a6 + 5);
  (*(*(a7 - 8) + 32))(boxed_opaque_existential_1, a4, a7);
  a6[2] = a1;
  a6[3] = a2;
  a6[4] = a3;
  sub_1DA3A1FF8(a5, (a6 + 10));
  return a6;
}

unint64_t sub_1DA3BFABC()
{
  result = qword_1EE101060;
  if (!qword_1EE101060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE101060);
  }

  return result;
}

unint64_t sub_1DA3BFB10()
{
  result = qword_1EE101068;
  if (!qword_1EE101068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE101068);
  }

  return result;
}

unint64_t sub_1DA3BFB90()
{
  result = qword_1EE100FB0;
  if (!qword_1EE100FB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE100FB0);
  }

  return result;
}

void OUTLINED_FUNCTION_6_4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_7_3()
{

  return swift_arrayInitWithCopy();
}

uint64_t SiriSuggestionsIntelligence.Device.init(isCurrentDevice:model:osVersion:deviceType:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  *(a7 + 32) = a5;
  v9 = *(type metadata accessor for SiriSuggestionsIntelligence.Device() + 28);
  v10 = sub_1DA421724();
  v11 = *(*(v10 - 8) + 32);

  return v11(a7 + v9, a6, v10);
}

uint64_t type metadata accessor for SiriSuggestionsIntelligence.Device()
{
  result = qword_1EE102D38;
  if (!qword_1EE102D38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DA3BFD34(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E65727275437369 && a2 == 0xEF65636976654474;
  if (v4 || (sub_1DA4223A4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6C65646F6DLL && a2 == 0xE500000000000000;
    if (v6 || (sub_1DA4223A4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6F6973726556736FLL && a2 == 0xE90000000000006ELL;
      if (v7 || (sub_1DA4223A4() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x7954656369766564 && a2 == 0xEA00000000006570)
      {

        return 3;
      }

      else
      {
        v9 = sub_1DA4223A4();

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

uint64_t sub_1DA3BFEA8(char a1)
{
  result = 0x6E65727275437369;
  switch(a1)
  {
    case 1:
      result = 0x6C65646F6DLL;
      break;
    case 2:
      result = 0x6F6973726556736FLL;
      break;
    case 3:
      result = 0x7954656369766564;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DA3BFF44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DA3BFD34(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DA3BFF8C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DA3BFEA0();
  *a1 = result;
  return result;
}

uint64_t sub_1DA3BFFB4(uint64_t a1)
{
  v2 = sub_1DA3C0204();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA3BFFF0(uint64_t a1)
{
  v2 = sub_1DA3C0204();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SiriSuggestionsIntelligence.Device.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEEC8, &qword_1DA424740);
  v6 = OUTLINED_FUNCTION_3_1(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v12 = &v21[-v11];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA3C0204();
  sub_1DA422494();
  v14 = *v3;
  v21[15] = 0;
  OUTLINED_FUNCTION_3_4();
  sub_1DA422304();
  if (!v2)
  {
    v15 = v3[1];
    v16 = v3[2];
    v21[14] = 1;
    OUTLINED_FUNCTION_3_4();
    sub_1DA4222F4();
    v17 = v3[3];
    v18 = v3[4];
    v21[13] = 2;
    OUTLINED_FUNCTION_3_4();
    sub_1DA4222F4();
    v19 = *(type metadata accessor for SiriSuggestionsIntelligence.Device() + 28);
    v21[12] = 3;
    sub_1DA421724();
    sub_1DA3C05C4(&qword_1EE102E08);
    OUTLINED_FUNCTION_3_4();
    sub_1DA422334();
  }

  return (*(v8 + 8))(v12, v5);
}

unint64_t sub_1DA3C0204()
{
  result = qword_1EE101140;
  if (!qword_1EE101140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE101140);
  }

  return result;
}

uint64_t SiriSuggestionsIntelligence.Device.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v4 = sub_1DA421724();
  v5 = OUTLINED_FUNCTION_3_1(v4);
  v28 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEED0, &qword_1DA424748);
  v11 = OUTLINED_FUNCTION_3_1(v30);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = type metadata accessor for SiriSuggestionsIntelligence.Device();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v31 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = a1;
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA3C0204();
  sub_1DA422484();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(v32);
  }

  v36 = 0;
  OUTLINED_FUNCTION_2_4();
  v18 = sub_1DA422284();
  v19 = v31;
  *v31 = v18 & 1;
  v35 = 1;
  OUTLINED_FUNCTION_2_4();
  *(v19 + 1) = sub_1DA422274();
  *(v19 + 2) = v20;
  v34 = 2;
  OUTLINED_FUNCTION_2_4();
  v21 = sub_1DA422274();
  v22 = v31;
  *(v31 + 3) = v21;
  *(v22 + 32) = v23;
  v33 = 3;
  sub_1DA3C05C4(&qword_1EE102CD0);
  sub_1DA4222B4();
  v24 = OUTLINED_FUNCTION_1_4();
  v25(v24);
  (*(v28 + 32))(v22 + *(v14 + 28), v10, v4);
  sub_1DA3C0608(v22, v29);
  __swift_destroy_boxed_opaque_existential_0(v32);
  return sub_1DA3C066C(v22);
}

uint64_t sub_1DA3C05C4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1DA421724();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DA3C0608(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SiriSuggestionsIntelligence.Device();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DA3C066C(uint64_t a1)
{
  v2 = type metadata accessor for SiriSuggestionsIntelligence.Device();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DA3C0720()
{
  result = sub_1DA421724();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t _s6DeviceV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *_s6DeviceV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DA3C0914()
{
  result = qword_1ECBAEED8;
  if (!qword_1ECBAEED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAEED8);
  }

  return result;
}

unint64_t sub_1DA3C096C()
{
  result = qword_1EE102D50;
  if (!qword_1EE102D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE102D50);
  }

  return result;
}

unint64_t sub_1DA3C09C4()
{
  result = qword_1EE101138;
  if (!qword_1EE101138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE101138);
  }

  return result;
}

uint64_t SiriSuggestionsIntelligence.DefaultNetworkConnectionService.__allocating_init()()
{
  v0 = swift_allocObject();
  sub_1DA4213E4();
  sub_1DA4213D4();
  sub_1DA4213C4();

  return v0;
}

uint64_t SiriSuggestionsIntelligence.DefaultNetworkConnectionService.init()()
{
  sub_1DA4213E4();
  sub_1DA4213D4();
  sub_1DA4213C4();

  return v0;
}

uint64_t SiriSuggestionsIntelligence.DefaultNetworkConnectionService.hasConnection()()
{
  v1 = sub_1DA421464();
  v0[2] = v1;
  v2 = *(v1 - 8);
  v0[3] = v2;
  v3 = *(v2 + 64) + 15;
  v0[4] = swift_task_alloc();
  v0[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DA3C0BAC, 0, 0);
}

uint64_t sub_1DA3C0BAC()
{
  v25 = v0;
  sub_1DA4213E4();
  sub_1DA4213D4();
  sub_1DA4213C4();

  if (qword_1EE102E00 != -1)
  {
    swift_once();
  }

  v1 = sub_1DA421A94();
  __swift_project_value_buffer(v1, static Logger.extractionCategory);

  v2 = sub_1DA421A74();
  v3 = sub_1DA421F54();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[5];
    v5 = v0[2];
    v6 = v0[3];
    v7 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v24 = v23;
    *v7 = 136315138;
    sub_1DA421474();
    sub_1DA3C2034();
    v8 = sub_1DA422364();
    v10 = v9;
    (*(v6 + 8))(v4, v5);
    v11 = sub_1DA3A5FE8(v8, v10, &v24);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_1DA39E000, v2, v3, "NetworkConnectionService: availability=%s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v23);
    MEMORY[0x1DA74E430](v23, -1, -1);
    MEMORY[0x1DA74E430](v7, -1, -1);
  }

  v13 = v0[4];
  v12 = v0[5];
  v14 = v0[2];
  v15 = v0[3];
  sub_1DA421474();
  (*(v15 + 104))(v13, *MEMORY[0x1E69D3620], v14);
  v16 = sub_1DA421454();
  v17 = *(v15 + 8);
  v17(v13, v14);
  v17(v12, v14);
  if (v16)
  {
    v18 = sub_1DA3C0E58();
  }

  else
  {
    v18 = 3;
  }

  v20 = v0[4];
  v19 = v0[5];

  v21 = v0[1];

  return v21(v18);
}

uint64_t sub_1DA3C0E58()
{
  if (sub_1DA421444())
  {
    return 2;
  }

  else
  {
    return (sub_1DA421434() & 1) == 0;
  }
}

uint64_t sub_1DA3C0EA0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DA3C0F2C;

  return SiriSuggestionsIntelligence.DefaultNetworkConnectionService.hasConnection()();
}

uint64_t sub_1DA3C0F2C(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_1DA3C1028(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x63656E6E6F436F6ELL && a2 == 0xEC0000006E6F6974;
  if (v4 || (sub_1DA4223A4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x697463656E6E6F63 && a2 == 0xEA00000000006E6FLL)
  {

    return 1;
  }

  else
  {
    v7 = sub_1DA4223A4();

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

uint64_t sub_1DA3C10FC(char a1)
{
  if (a1)
  {
    return 0x697463656E6E6F63;
  }

  else
  {
    return 0x63656E6E6F436F6ELL;
  }
}

uint64_t sub_1DA3C1140(uint64_t a1, uint64_t a2)
{
  if (a1 == 1701869940 && a2 == 0xE400000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1DA4223A4();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1DA3C11B8()
{
  sub_1DA422434();
  MEMORY[0x1DA74DBB0](0);
  return sub_1DA422474();
}

uint64_t sub_1DA3C1214@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DA3C1028(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DA3C123C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DA3B5144();
  *a1 = result;
  return result;
}

uint64_t sub_1DA3C1264(uint64_t a1)
{
  v2 = sub_1DA3C208C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA3C12A0(uint64_t a1)
{
  v2 = sub_1DA3C208C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DA3C12E4()
{
  sub_1DA422434();
  MEMORY[0x1DA74DBB0](0);
  return sub_1DA422474();
}

uint64_t sub_1DA3C1328@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DA3C1140(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1DA3C1370@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DA3A85F0();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1DA3C139C(uint64_t a1)
{
  v2 = sub_1DA3C20E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA3C13D8(uint64_t a1)
{
  v2 = sub_1DA3C20E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DA3C1418(uint64_t a1)
{
  v2 = sub_1DA3C2188();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA3C1454(uint64_t a1)
{
  v2 = sub_1DA3C2188();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

BOOL static SiriSuggestionsIntelligence.NetworkConnection.__derived_enum_equals(_:_:)(unsigned __int8 a1, char a2)
{
  if (a1 == 3)
  {
    return a2 == 3;
  }

  if (a2 == 3)
  {
    return 0;
  }

  v3 = 0xE900000000000065;
  v4 = 0x7669736E65707865;
  v5 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v6 = 0x736E657078656E69;
    }

    else
    {
      v6 = 0x69617274736E6F63;
    }

    if (v5 == 1)
    {
      v7 = 0xEB00000000657669;
    }

    else
    {
      v7 = 0xEB0000000064656ELL;
    }
  }

  else
  {
    v6 = 0x7669736E65707865;
    v7 = 0xE900000000000065;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v4 = 0x736E657078656E69;
    }

    else
    {
      v4 = 0x69617274736E6F63;
    }

    if (a2 == 1)
    {
      v3 = 0xEB00000000657669;
    }

    else
    {
      v3 = 0xEB0000000064656ELL;
    }
  }

  if (v6 != v4 || v7 != v3)
  {
    v9 = sub_1DA4223A4();

    return v9 & 1;
  }

  return 1;
}

uint64_t SiriSuggestionsIntelligence.NetworkConnection.encode(to:)(void *a1, int a2)
{
  v31 = a2;
  v34 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEEE0, &qword_1DA4248C8);
  v4 = OUTLINED_FUNCTION_3_1(v3);
  v32 = v5;
  v33 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v29 - v9;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEEE8, &qword_1DA4248D0);
  OUTLINED_FUNCTION_3_1(v30);
  v12 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v29 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEEF0, &qword_1DA4248D8);
  OUTLINED_FUNCTION_3_1(v18);
  v20 = v19;
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v29 - v24;
  v26 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA3C208C();
  sub_1DA422494();
  if (v34 == 3)
  {
    v35 = 0;
    sub_1DA3C2188();
    sub_1DA4222D4();
    (*(v12 + 8))(v17, v30);
  }

  else
  {
    v37 = 1;
    sub_1DA3C20E0();
    sub_1DA4222D4();
    v36 = v31;
    sub_1DA3C2134();
    v28 = v33;
    sub_1DA422334();
    (*(v32 + 8))(v10, v28);
  }

  return (*(v20 + 8))(v25, v18);
}

void SiriSuggestionsIntelligence.NetworkConnection.init(from:)(uint64_t *a1)
{
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEEF8, &qword_1DA4248E0);
  OUTLINED_FUNCTION_3_1(v56);
  v54 = v2;
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v50 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEF00, &qword_1DA4248E8);
  OUTLINED_FUNCTION_3_1(v8);
  v53 = v9;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v50 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEF08, &unk_1DA4248F0);
  OUTLINED_FUNCTION_3_1(v15);
  v55 = v16;
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v19);
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA3C208C();
  v21 = v57;
  sub_1DA422484();
  if (v21)
  {
    goto LABEL_9;
  }

  v51 = v8;
  v52 = v14;
  v57 = v7;
  v22 = v56;
  v23 = sub_1DA4222C4();
  sub_1DA3C21DC(v23, 0);
  if (v26 == v27 >> 1)
  {
    v28 = a1;
LABEL_8:
    v37 = sub_1DA4220F4();
    swift_allocError();
    v39 = v38;
    v40 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEF10, &qword_1DA425620) + 48);
    *v39 = &type metadata for SiriSuggestionsIntelligence.NetworkConnection;
    sub_1DA422254();
    sub_1DA4220E4();
    (*(*(v37 - 8) + 104))(v39, *MEMORY[0x1E69E6AF8], v37);
    swift_willThrow();
    swift_unknownObjectRelease();
    v41 = *(v55 + 8);
    v42 = OUTLINED_FUNCTION_3_5();
    v43(v42);
    a1 = v28;
LABEL_9:
    __swift_destroy_boxed_opaque_existential_0(a1);
    return;
  }

  if (v26 >= (v27 >> 1))
  {
    __break(1u);
  }

  else
  {
    v28 = a1;
    v58 = *(v25 + v26);
    v29 = sub_1DA3C2A20(v26 + 1, v27 >> 1, v24, v25, v26, v27);
    v31 = v30;
    v33 = v32;
    swift_unknownObjectRelease();
    v34 = v54;
    if (v31 != v33 >> 1)
    {
      goto LABEL_8;
    }

    v50 = v29;
    if (v58)
    {
      v60 = 1;
      sub_1DA3C20E0();
      v35 = v57;
      OUTLINED_FUNCTION_4_4();
      v36 = v55;
      sub_1DA3C2214();
      sub_1DA4222B4();
      swift_unknownObjectRelease();
      (*(v34 + 8))(v35, v22);
      v47 = *(v36 + 8);
    }

    else
    {
      v59 = 0;
      sub_1DA3C2188();
      v44 = v52;
      OUTLINED_FUNCTION_4_4();
      v45 = v55;
      swift_unknownObjectRelease();
      (*(v53 + 8))(v44, v51);
      v46 = *(v45 + 8);
    }

    v48 = OUTLINED_FUNCTION_3_5();
    v49(v48);
    __swift_destroy_boxed_opaque_existential_0(v28);
  }
}

void sub_1DA3C1E04(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  SiriSuggestionsIntelligence.NetworkConnection.init(from:)(a1);
  if (!v2)
  {
    *a2 = v4;
  }
}

uint64_t SiriSuggestionsIntelligence.NetworkType.init(rawValue:)()
{
  v0 = sub_1DA422234();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t SiriSuggestionsIntelligence.NetworkType.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 0x7669736E65707865;
  }

  if (a1 == 1)
  {
    return 0x736E657078656E69;
  }

  return 0x69617274736E6F63;
}

uint64_t sub_1DA3C1F28@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = SiriSuggestionsIntelligence.NetworkType.init(rawValue:)();
  *a2 = result;
  return result;
}

uint64_t sub_1DA3C1F58@<X0>(uint64_t *a1@<X8>)
{
  result = SiriSuggestionsIntelligence.NetworkType.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1DA3C2034()
{
  result = qword_1EE102CE8;
  if (!qword_1EE102CE8)
  {
    sub_1DA421464();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE102CE8);
  }

  return result;
}

unint64_t sub_1DA3C208C()
{
  result = qword_1EE1021F8;
  if (!qword_1EE1021F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1021F8);
  }

  return result;
}

unint64_t sub_1DA3C20E0()
{
  result = qword_1EE102210;
  if (!qword_1EE102210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE102210);
  }

  return result;
}

unint64_t sub_1DA3C2134()
{
  result = qword_1EE102AD8;
  if (!qword_1EE102AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE102AD8);
  }

  return result;
}

unint64_t sub_1DA3C2188()
{
  result = qword_1EE1007A0;
  if (!qword_1EE1007A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1007A0);
  }

  return result;
}

void sub_1DA3C21DC(uint64_t a1, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(a1 + 16);
  v3 = __OFADD__(a2, v2);
  v4 = a2 + v2;
  if (v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 < a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if ((v4 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_1_5();
    return;
  }

LABEL_9:
  __break(1u);
}

unint64_t sub_1DA3C2214()
{
  result = qword_1ECBAEF18;
  if (!qword_1ECBAEF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAEF18);
  }

  return result;
}

unint64_t sub_1DA3C226C()
{
  result = qword_1ECBAEF20;
  if (!qword_1ECBAEF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAEF20);
  }

  return result;
}

unsigned __int8 *_s17NetworkConnectionOwet(unsigned __int8 *result, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
LABEL_18:
    v6 = *result;
    v7 = v6 >= 3;
    v8 = v6 - 3;
    if (!v7)
    {
      v8 = -1;
    }

    if (v8 + 1 >= 2)
    {
      return v8;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v2 = a2 + 3;
    if (a2 + 3 >= 0xFFFF00)
    {
      v3 = 4;
    }

    else
    {
      v3 = 2;
    }

    if (v2 >> 8 < 0xFF)
    {
      v3 = 1;
    }

    if (v2 >= 0x100)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    switch(v4)
    {
      case 1:
        v5 = result[1];
        if (!result[1])
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 2:
        v5 = *(result + 1);
        if (!*(result + 1))
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 3:
        __break(1u);
        return result;
      case 4:
        v5 = *(result + 1);
        if (!v5)
        {
          goto LABEL_18;
        }

LABEL_16:
        result = ((*result | (v5 << 8)) - 3);
        break;
      default:
        goto LABEL_18;
    }
  }

  return result;
}

_BYTE *_s17NetworkConnectionOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 3;
  if (a3 + 3 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 >= 0xFD)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (a2 > 0xFC)
  {
    v7 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v6)
    {
      case 1:
        result[1] = v7;
        break;
      case 2:
        *(result + 1) = v7;
        break;
      case 3:
LABEL_25:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v7;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v6)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      case 2:
        *(result + 1) = 0;
        goto LABEL_19;
      case 3:
        goto LABEL_25;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      default:
LABEL_19:
        if (a2)
        {
LABEL_20:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1DA3C2464(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 3)
  {
    return v1 - 2;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1DA3C2478(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 2;
  }

  return result;
}

_BYTE *_s11NetworkTypeOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *_s17NetworkConnectionO10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *_s17NetworkConnectionO20ConnectionCodingKeysOwst(_BYTE *result, int a2, int a3)
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

unint64_t sub_1DA3C2710()
{
  result = qword_1ECBAEF28;
  if (!qword_1ECBAEF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAEF28);
  }

  return result;
}

unint64_t sub_1DA3C2768()
{
  result = qword_1ECBAEF30;
  if (!qword_1ECBAEF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAEF30);
  }

  return result;
}

unint64_t sub_1DA3C27C0()
{
  result = qword_1EE102218;
  if (!qword_1EE102218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE102218);
  }

  return result;
}

unint64_t sub_1DA3C2818()
{
  result = qword_1EE102220;
  if (!qword_1EE102220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE102220);
  }

  return result;
}

unint64_t sub_1DA3C2870()
{
  result = qword_1EE102200;
  if (!qword_1EE102200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE102200);
  }

  return result;
}

unint64_t sub_1DA3C28C8()
{
  result = qword_1EE102208;
  if (!qword_1EE102208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE102208);
  }

  return result;
}

unint64_t sub_1DA3C2920()
{
  result = qword_1EE1021E8;
  if (!qword_1EE1021E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1021E8);
  }

  return result;
}

unint64_t sub_1DA3C2978()
{
  result = qword_1EE1021F0;
  if (!qword_1EE1021F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1021F0);
  }

  return result;
}

unint64_t sub_1DA3C29CC()
{
  result = qword_1EE102AD0;
  if (!qword_1EE102AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE102AD0);
  }

  return result;
}

uint64_t sub_1DA3C2A20(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (result < a5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((a6 >> 1) < result || (a6 >> 1) < a2)
  {
    goto LABEL_10;
  }

  if (a2 < a5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    return swift_unknownObjectRetain();
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t OUTLINED_FUNCTION_4_4()
{

  return sub_1DA422244();
}

uint64_t sub_1DA3C2B74()
{
  OUTLINED_FUNCTION_10_2();
  v0(v3, v1);
  return sub_1DA422474();
}

uint64_t sub_1DA3C2BCC()
{
  OUTLINED_FUNCTION_10_2();
  v0(v1);
  OUTLINED_FUNCTION_6_5();

  return sub_1DA422474();
}

uint64_t sub_1DA3C2C20()
{
  OUTLINED_FUNCTION_1_6();
  sub_1DA421BF4();
}

uint64_t sub_1DA3C2D74()
{
  sub_1DA421BF4();
}

uint64_t sub_1DA3C2E00(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 5:
      OUTLINED_FUNCTION_1_6();
      break;
    default:
      break;
  }

  sub_1DA421BF4();
}

uint64_t sub_1DA3C2ED4(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 3:
      OUTLINED_FUNCTION_1_6();
      break;
    default:
      break;
  }

  sub_1DA421BF4();
}

uint64_t sub_1DA3C2F68(uint64_t a1, char a2)
{
  SiriSuggestionsIntelligence.FeatureIdType.rawValue.getter(a2);
  sub_1DA421BF4();
}

uint64_t sub_1DA3C2FBC(uint64_t a1, char a2)
{
  if (!a2)
  {
    OUTLINED_FUNCTION_5_5();
  }

  sub_1DA421BF4();
}

uint64_t sub_1DA3C3048()
{
  sub_1DA421BF4();
}

uint64_t sub_1DA3C30C4(uint64_t a1, char a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_3_6();
  }

  else
  {
    OUTLINED_FUNCTION_8_4();
  }

  sub_1DA421BF4();
}

uint64_t sub_1DA3C3134()
{
  sub_1DA421BF4();
}

uint64_t sub_1DA3C3200(uint64_t a1, char a2)
{
  sub_1DA422434();
  if (a2)
  {
    OUTLINED_FUNCTION_3_6();
  }

  else
  {
    OUTLINED_FUNCTION_8_4();
  }

  sub_1DA421BF4();

  return sub_1DA422474();
}

uint64_t sub_1DA3C3284()
{
  sub_1DA422434();
  sub_1DA421BF4();

  return sub_1DA422474();
}

uint64_t sub_1DA3C3314(uint64_t a1, char a2)
{
  sub_1DA422434();
  if (!a2)
  {
    OUTLINED_FUNCTION_5_5();
  }

  sub_1DA421BF4();

  return sub_1DA422474();
}

uint64_t sub_1DA3C33E4(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t))
{
  sub_1DA422434();
  a3(v6, a2);
  return sub_1DA422474();
}

uint64_t sub_1DA3C3448()
{
  sub_1DA422434();
  sub_1DA421BF4();

  return sub_1DA422474();
}

uint64_t sub_1DA3C3500(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  sub_1DA422434();
  a3(a2);
  OUTLINED_FUNCTION_6_5();

  return sub_1DA422474();
}

uint64_t sub_1DA3C3580@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DA3A0F08();
  *a2 = result;
  return result;
}

uint64_t sub_1DA3C35B0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DA3A0F54(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1DA3C35E4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DA3A0F08();
  *a1 = result;
  return result;
}

uint64_t sub_1DA3C360C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DA3AF27C();
  *a1 = result;
  return result;
}

uint64_t sub_1DA3C3634(uint64_t a1)
{
  v2 = sub_1DA3C3A64();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA3C3670(uint64_t a1)
{
  v2 = sub_1DA3C3A64();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SiriSuggestionsIntelligence.NormalDistribution.__allocating_init(from:)(uint64_t *a1)
{
  OUTLINED_FUNCTION_4_5();
  v2 = swift_allocObject();
  SiriSuggestionsIntelligence.NormalDistribution.init(from:)(a1);
  return v2;
}

double *SiriSuggestionsIntelligence.NormalDistribution.init(from:)(uint64_t *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_1DA421A54();
  v6 = OUTLINED_FUNCTION_3_1(v5);
  v35 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEF38, &qword_1DA424E30);
  v13 = OUTLINED_FUNCTION_3_1(v12);
  v36 = v14;
  v37 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v18 = &v34 - v17;
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA3C3A64();
  v38 = v18;
  v20 = v42;
  sub_1DA422484();
  if (v20)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    v42 = v11;
    v21 = v1;
    v22 = v36;
    LOBYTE(v39) = 0;
    OUTLINED_FUNCTION_9_3();
    *(v1 + 2) = v23;
    LOBYTE(v39) = 1;
    sub_1DA422294();
    *(v1 + 3) = v24;
    LOBYTE(v39) = 2;
    OUTLINED_FUNCTION_9_3();
    *(v1 + 4) = v26;
    v27 = v1[2] + v1[2];
    v1[6] = v27;
    v1[5] = 1.0 / sqrt(v27 * 3.14159265);
    *&v39 = 0;
    MEMORY[0x1DA74E450](&v39, 8);
    v28 = v42;
    sub_1DA421A44();
    _s18NormalDistributionC11GaussianRNGCMa();
    v29 = swift_allocObject();
    v40 = v5;
    OUTLINED_FUNCTION_2_6();
    v41 = sub_1DA3C4540(v30, 255, v31);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v39);
    v33 = v35;
    (*(v35 + 16))(boxed_opaque_existential_1, v28, v5);
    swift_defaultActor_initialize();
    *(v29 + 152) = 0;
    *(v29 + 160) = 1;
    sub_1DA3A1FF8(&v39, v29 + 112);
    (*(v33 + 8))(v28, v5);
    v2 = v21;
    (*(v22 + 8))(v38, v37);
    *(v21 + 7) = v29;
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v2;
}

unint64_t sub_1DA3C3A64()
{
  result = qword_1ECBAEF40;
  if (!qword_1ECBAEF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAEF40);
  }

  return result;
}

uint64_t SiriSuggestionsIntelligence.NormalDistribution.__allocating_init(mean:sd:sampledSize:seed:)(uint64_t a1, char a2, double a3, double a4, double a5)
{
  v9 = a4 * a4;
  OUTLINED_FUNCTION_4_5();
  v10 = swift_allocObject();
  SiriSuggestionsIntelligence.NormalDistribution.init(mean:variance:sampledSize:seed:)(a3, v9, a5, a1, a2 & 1);
  return v10;
}

uint64_t SiriSuggestionsIntelligence.NormalDistribution.__allocating_init(mean:variance:sampledSize:seed:)(uint64_t a1, char a2, double a3, double a4, double a5)
{
  OUTLINED_FUNCTION_4_5();
  v10 = swift_allocObject();
  SiriSuggestionsIntelligence.NormalDistribution.init(mean:variance:sampledSize:seed:)(a3, a4, a5, a1, a2 & 1);
  return v10;
}

uint64_t SiriSuggestionsIntelligence.NormalDistribution.init(mean:variance:sampledSize:seed:)(double a1, double a2, double a3, uint64_t a4, char a5)
{
  v10 = sub_1DA421A54();
  v11 = OUTLINED_FUNCTION_3_1(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v5 + 16) = a2;
  *(v5 + 24) = a1;
  *(v5 + 32) = a3;
  *(v5 + 48) = a2 + a2;
  *(v5 + 40) = 1.0 / sqrt((a2 + a2) * 3.14159265);
  if (a5)
  {
    *&v24 = 0;
    MEMORY[0x1DA74E450](&v24, 8);
  }

  sub_1DA421A44();
  _s18NormalDistributionC11GaussianRNGCMa();
  v18 = swift_allocObject();
  v25 = v10;
  OUTLINED_FUNCTION_2_6();
  v26 = sub_1DA3C4540(v19, 255, v20);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v24);
  (*(v13 + 16))(boxed_opaque_existential_1, v17, v10);
  swift_defaultActor_initialize();
  *(v18 + 152) = 0;
  *(v18 + 160) = 1;
  sub_1DA3A1FF8(&v24, v18 + 112);
  (*(v13 + 8))(v17, v10);
  *(v5 + 56) = v18;
  return v5;
}

Swift::Double __swiftcall SiriSuggestionsIntelligence.NormalDistribution.getProbability(_:)(Swift::Double a1)
{
  if (v1[2] == 0.0)
  {
    v2 = v1[3] == a1;
    result = 0.0;
    if (v2)
    {
      return 1.0;
    }
  }

  else
  {
    v4 = v1[5];
    return v4 * exp(-((a1 - v1[3]) * (a1 - v1[3])) / v1[6]);
  }

  return result;
}

Swift::Double_optional __swiftcall SiriSuggestionsIntelligence.NormalDistribution.cdf(for:)(Swift::Double a1)
{
  v2 = *(v1 + 24);
  v3 = a1 - v2;
  v4 = vabdd_f64(a1, v2);
  v5 = sqrt(*(v1 + 16));
  if (v5 * 40.0 >= v4)
  {
    v5 = (erf(v3 / (v5 * 1.41421356)) + 1.0) * 0.5;
    v6 = LOBYTE(v5);
  }

  else
  {
    v6 = 0;
  }

  result.value = v5;
  result.is_nil = v6;
  return result;
}

uint64_t sub_1DA3C3E78()
{
  v1 = *(v0 + 16);
  *(v0 + 24) = sqrt(*(v1 + 16));
  v2 = *(v1 + 56);
  *(v0 + 32) = v2;

  return MEMORY[0x1EEE6DFA0](sub_1DA3C3EEC, v2, 0);
}

uint64_t sub_1DA3C3EEC()
{
  v1 = *(v0 + 32);
  sub_1DA3C3F84();
  *(v0 + 40) = v2;

  return MEMORY[0x1EEE6DFA0](sub_1DA3C3F58, 0, 0);
}

void sub_1DA3C3F84()
{
  v1 = v0;
  v2 = *(v0 + 160);
  if (v2)
  {
    swift_beginAccess();
    v3 = *(v0 + 136);
    v4 = *(v1 + 144);
    __swift_mutable_project_boxed_opaque_existential_1(v1 + 112, *(v1 + 136));
    sub_1DA3C47E4();
    sub_1DA3C4838();
    sub_1DA421AA4();
    v5 = *(v1 + 144);
    __swift_mutable_project_boxed_opaque_existential_1(v1 + 112, *(v1 + 136));
    sub_1DA421AA4();
    swift_endAccess();
    v6 = log(__x);
    v7 = sqrt(v6 * -2.0);
    v8 = __sincos_stret(__x * 6.28318531).__sinval * v7;
  }

  else
  {
    v9 = *(v0 + 152);
    v8 = 0.0;
  }

  *(v1 + 152) = v8;
  *(v1 + 160) = v2 ^ 1;
}

uint64_t sub_1DA3C40E8()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 112));
  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t SiriSuggestionsIntelligence.NormalDistribution.deinit()
{
  v1 = *(v0 + 56);

  return v0;
}

uint64_t SiriSuggestionsIntelligence.NormalDistribution.__deallocating_deinit()
{
  v1 = *(v0 + 56);

  v2 = OUTLINED_FUNCTION_4_5();

  return MEMORY[0x1EEE6BDC0](v2, v3, v4);
}

uint64_t SiriSuggestionsIntelligence.NormalDistribution.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEF48, &qword_1DA424E40);
  v6 = OUTLINED_FUNCTION_3_1(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v12 = &v18[-v11];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA3C3A64();
  sub_1DA422494();
  v14 = v3[2];
  v18[15] = 0;
  OUTLINED_FUNCTION_7_4();
  if (!v2)
  {
    v15 = v3[3];
    v18[14] = 1;
    OUTLINED_FUNCTION_7_4();
    v16 = v3[4];
    v18[13] = 2;
    OUTLINED_FUNCTION_7_4();
  }

  return (*(v8 + 8))(v12, v5);
}

uint64_t sub_1DA3C4300()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DA3C4390;

  return SiriSuggestionsIntelligence.NormalDistribution.sample()();
}

uint64_t sub_1DA3C4390(double a1)
{
  v3 = *(*v1 + 16);
  v7 = *v1;

  v4 = *(v7 + 8);
  v5.n128_f64[0] = a1;

  return v4(v5);
}

uint64_t sub_1DA3C4498(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = sub_1DA3C4540(qword_1EE1006A0, a2, type metadata accessor for SiriSuggestionsIntelligence.NormalDistribution);
  result = sub_1DA3C4540(&qword_1ECBAEF50, v3, type metadata accessor for SiriSuggestionsIntelligence.NormalDistribution);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1DA3C4540(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DA3C4588@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = SiriSuggestionsIntelligence.NormalDistribution.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

double sub_1DA3C45D8(Swift::Double a1)
{
  v2 = *v1;
  *&result = SiriSuggestionsIntelligence.NormalDistribution.cdf(for:)(a1);
  return result;
}

_BYTE *_s18NormalDistributionC10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DA3C46E0()
{
  result = qword_1ECBAEF58;
  if (!qword_1ECBAEF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAEF58);
  }

  return result;
}

unint64_t sub_1DA3C4738()
{
  result = qword_1ECBAEF60;
  if (!qword_1ECBAEF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAEF60);
  }

  return result;
}

unint64_t sub_1DA3C4790()
{
  result = qword_1ECBAEF68;
  if (!qword_1ECBAEF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAEF68);
  }

  return result;
}

unint64_t sub_1DA3C47E4()
{
  result = qword_1ECBAEF70;
  if (!qword_1ECBAEF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAEF70);
  }

  return result;
}

unint64_t sub_1DA3C4838()
{
  result = qword_1ECBAEF78;
  if (!qword_1ECBAEF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAEF78);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_6_5()
{

  return sub_1DA421BF4();
}

uint64_t OUTLINED_FUNCTION_7_4()
{

  return sub_1DA422314();
}

uint64_t OUTLINED_FUNCTION_9_3()
{
  v2 = *(v0 - 128);

  return sub_1DA422294();
}

uint64_t OUTLINED_FUNCTION_10_2()
{

  return sub_1DA422434();
}

uint64_t sub_1DA3C49B0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1DA3C4A04(uint64_t a1, int a2)
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

uint64_t sub_1DA3C4A44(uint64_t result, int a2, int a3)
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

uint64_t sub_1DA3C4AC8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_18SiriSuggestionsKit5Clock_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
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

uint64_t sub_1DA3C4B30(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_1DA3C4B70(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_1DA3C4BD8(void (*a1)(char *, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v43 = a8;
  v52 = a1;
  v53 = a2;
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](a1);
  OUTLINED_FUNCTION_11_2();
  v54 = v13;
  v15 = *(v14 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = OUTLINED_FUNCTION_3_1(AssociatedTypeWitness);
  v56 = v17;
  v19 = *(v18 + 64);
  v20 = MEMORY[0x1EEE9AC00](v16);
  v22 = &v41 - v21;
  v23 = *(*(a4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_11_2();
  v50 = v24;
  v25 = swift_getAssociatedTypeWitness();
  v26 = OUTLINED_FUNCTION_3_1(v25);
  v44 = v27;
  v45 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v31 = &v41 - v30;
  v32 = sub_1DA421F04();
  if (!v32)
  {
    return sub_1DA421D64();
  }

  v55 = v32;
  v59 = sub_1DA422174();
  v46 = sub_1DA422184();
  sub_1DA422134();
  result = sub_1DA421EF4();
  if ((v55 & 0x8000000000000000) == 0)
  {
    v41 = v11;
    v42 = a5;
    v34 = 0;
    v47 = (v56 + 16);
    v48 = v56 + 8;
    v49 = v8;
    while (!__OFADD__(v34, 1))
    {
      v56 = v34 + 1;
      v35 = sub_1DA421F34();
      (*v47)(v22);
      v35(v58, 0);
      v36 = v57;
      v52(v22, v54);
      if (v36)
      {
        v39 = OUTLINED_FUNCTION_10_3();
        v40(v39);
        (*(v44 + 8))(v31, v45);

        return (*(v41 + 32))(v43, v54, v42);
      }

      v57 = 0;
      v37 = OUTLINED_FUNCTION_10_3();
      v38(v37);
      sub_1DA422164();
      result = sub_1DA421F14();
      ++v34;
      if (v56 == v55)
      {
        (*(v44 + 8))(v31, v45);
        return v59;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1DA3C4FAC()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  if (v2)
  {
    v11 = MEMORY[0x1E69E7CC0];
    sub_1DA3B0160();
    v3 = (v1 + 48);
    do
    {
      v4 = *(v3 - 2);
      v5 = *(v3 - 1);
      v6 = *v3;
      sub_1DA422094();
      MEMORY[0x1DA74D370](15736, 0xE200000000000000);
      sub_1DA422194();
      MEMORY[0x1DA74D370](0x6F72746E6563202CLL, 0xEB000000003D6469);
      sub_1DA422194();
      v7 = *(v11 + 16);
      if (v7 >= *(v11 + 24) >> 1)
      {
        sub_1DA3B0160();
      }

      *(v11 + 16) = v7 + 1;
      v8 = v11 + 16 * v7;
      *(v8 + 32) = 0;
      *(v8 + 40) = 0xE000000000000000;
      v3 += 3;
      --v2;
    }

    while (v2);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEDA8, &unk_1DA4251D0);
  sub_1DA3C53F4();
  v9 = sub_1DA421B34();

  return v9;
}

uint64_t SiriSuggestionsIntelligence.ApproxInterpolation.description.getter()
{
  v1 = *v0;
  v2 = *v0;
  v12 = v0[2];
  v10 = *(v1 + 80);
  v11 = *(v2 + 88);

  swift_getTupleTypeMetadata2();
  v3 = sub_1DA421DA4();
  WitnessTable = swift_getWitnessTable();
  v6 = sub_1DA3C4BD8(sub_1DA3C53D0, v9, v3, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v5);

  v12 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEDA8, &unk_1DA4251D0);
  sub_1DA3C53F4();
  v7 = sub_1DA421B34();

  return v7;
}

uint64_t sub_1DA3C52F0@<X0>(void *a1@<X8>)
{
  sub_1DA422094();
  MEMORY[0x1DA74D370](15736, 0xE200000000000000);
  sub_1DA422384();
  MEMORY[0x1DA74D370](0x6F72746E6563202CLL, 0xEB000000003D6469);
  v2 = *(swift_getTupleTypeMetadata2() + 48);
  result = sub_1DA422384();
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  return result;
}

uint64_t sub_1DA3C53D0@<X0>(void *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return sub_1DA3C52F0(a1);
}

unint64_t sub_1DA3C53F4()
{
  result = qword_1EE100FD0;
  if (!qword_1EE100FD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBAEDA8, &unk_1DA4251D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE100FD0);
  }

  return result;
}

void *sub_1DA3C545C()
{
  OUTLINED_FUNCTION_2_7();
  v31 = *v0;
  if (*(v6 + 16))
  {
    v32 = v5;
    v33 = v4;
    v34 = v3;
    v35 = v0;
    OUTLINED_FUNCTION_7_5(MEMORY[0x1E69E7CC0]);
    sub_1DA3B02F0();
    v7 = v43;
    while (v1[2])
    {
      v8 = OUTLINED_FUNCTION_5_6();
      v2(v8);
      OUTLINED_FUNCTION_9_4();
      if (v19)
      {
        OUTLINED_FUNCTION_8_5(v17);
        sub_1DA3B02F0();
        v7 = v43;
      }

      OUTLINED_FUNCTION_4_6(v9, v10, v11, v12, v13, v14, v15, v16, v30, v31, v32, v33, v34, v35, v36, v37, v18);
      if (v20)
      {

        goto LABEL_10;
      }
    }

    __break(1u);

    result = OUTLINED_FUNCTION_12_1();
    __break(1u);
  }

  else
  {

    v7 = MEMORY[0x1E69E7CC0];
LABEL_10:
    v42[0] = v7;

    sub_1DA3C5F1C(v42, sub_1DA3CCC70, &qword_1ECBAF070, "¨", sub_1DA3B2D0C);

    return OUTLINED_FUNCTION_3_7(v21, v22, v23, v24, v25, v26, v27, v28, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42[0]);
  }

  return result;
}

void *sub_1DA3C55DC()
{
  OUTLINED_FUNCTION_2_7();
  v31 = *v0;
  if (*(v6 + 16))
  {
    v32 = v5;
    v33 = v4;
    v34 = v3;
    v35 = v0;
    OUTLINED_FUNCTION_7_5(MEMORY[0x1E69E7CC0]);
    sub_1DA3B05E8();
    v7 = v43;
    while (v1[2])
    {
      v8 = OUTLINED_FUNCTION_5_6();
      v2(v8);
      OUTLINED_FUNCTION_9_4();
      if (v19)
      {
        OUTLINED_FUNCTION_8_5(v17);
        sub_1DA3B05E8();
        v7 = v43;
      }

      OUTLINED_FUNCTION_4_6(v9, v10, v11, v12, v13, v14, v15, v16, v30, v31, v32, v33, v34, v35, v36, v37, v18);
      if (v20)
      {

        goto LABEL_10;
      }
    }

    __break(1u);

    result = OUTLINED_FUNCTION_12_1();
    __break(1u);
  }

  else
  {

    v7 = MEMORY[0x1E69E7CC0];
LABEL_10:
    v42[0] = v7;

    sub_1DA3C5F1C(v42, sub_1DA3CCCAC, &qword_1ECBAF068, "Ȩ", sub_1DA3B2D0C);

    return OUTLINED_FUNCTION_3_7(v21, v22, v23, v24, v25, v26, v27, v28, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42[0]);
  }

  return result;
}

int64_t sub_1DA3C5784(uint64_t *a1, uint64_t *a2, double a3)
{
  v6 = v3;
  v8 = sub_1DA421A94();
  v9 = OUTLINED_FUNCTION_3_1(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v9);
  v16 = &v58[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v58[-v17];
  v64 = a3;
  v19 = *(v6 + 16);
  v20 = *(v19 + 16);
  if (!v20)
  {
    sub_1DA4219B4();
    v38 = sub_1DA421A74();
    v39 = sub_1DA421F74();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_1DA39E000, v38, v39, "ApproxInterpolation:: Unable to compute interpolation result due to no samples. Returning nil", v40, 2u);
      MEMORY[0x1DA74E430](v40, -1, -1);
    }

    (*(v11 + 8))(v18, v8);
    return 0;
  }

  result = sub_1DA3C5B84(a3);
  if (result >= 1 && result < v20)
  {
    v41 = v19 + 24 * result;
    v42 = *(v41 + 16);
    v62 = *(v41 + 40);
    *v63 = v42;
    v44 = *(v6 + 24);
    v43 = *(v6 + 32);
    v46 = *(v6 + 40);
    v45 = *(v6 + 48);
    v47 = v46(v63);
    v49 = v48;
    v50 = v46(&v62);
    v52 = v51;
    v53 = *(v6 + 80);
    v54 = (*(v6 + 72))(&v64);
    return v44(v47, v49, v50, v52, v54);
  }

  if (result)
  {
LABEL_7:
    sub_1DA4219B4();
    swift_retain_n();
    v23 = sub_1DA421A74();
    v24 = sub_1DA421F74();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v60 = v23;
      v26 = v25;
      v61 = swift_slowAlloc();
      v63[0] = v61;
      *v26 = 136315394;
      *&v62 = a3;
      v27 = sub_1DA421BB4();
      v29 = sub_1DA3A5FE8(v27, v28, v63);
      v59 = v24;
      v30 = v29;

      *(v26 + 4) = v30;
      *(v26 + 12) = 2080;

      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
      v32 = MEMORY[0x1DA74D4B0](v19, v31);
      v34 = v33;

      v35 = sub_1DA3A5FE8(v32, v34, v63);

      *(v26 + 14) = v35;
      v36 = v60;
      _os_log_impl(&dword_1DA39E000, v60, v59, "ApproxInterpolation:: Unable to find value for position: %s. samples: %s", v26, 0x16u);
      v37 = v61;
      swift_arrayDestroy();
      MEMORY[0x1DA74E430](v37, -1, -1);
      MEMORY[0x1DA74E430](v26, -1, -1);
    }

    else
    {
    }

    (*(v11 + 8))(v16, v8);
    return 0;
  }

  if (v20 <= 0)
  {
    __break(1u);
  }

  else
  {
    if (*(v19 + 32) != a3)
    {
      goto LABEL_7;
    }

    v55 = *(v6 + 40);
    v56 = *(v6 + 48);
    *v63 = *(v19 + 40);
    v55(v63);
    return v57;
  }

  return result;
}