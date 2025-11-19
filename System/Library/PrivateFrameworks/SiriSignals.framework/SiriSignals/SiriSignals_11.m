void sub_23156AD98(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v97 = MEMORY[0x277D84F90];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    while (1)
    {
      v9 = v7++;
      if (v7 < v6)
      {
        v10 = *a3;
        v11 = (*a3 + 24 * v7);
        v12 = *v11;
        v13 = v11[1];
        v14 = (*a3 + 24 * v9);
        if (v12 == *v14 && v13 == v14[1])
        {
          v16 = 0;
        }

        else
        {
          v16 = sub_231586C44();
        }

        v7 = v9 + 2;
        v17 = v10 + 24 * v9;
        v18 = 24 * v9;
        v19 = (v17 + 56);
        while (v7 < v6)
        {
          if (*(v19 - 1) == *(v19 - 4) && *v19 == *(v19 - 3))
          {
            if (v16)
            {
              goto LABEL_21;
            }
          }

          else if ((v16 ^ sub_231586C44()))
          {
            break;
          }

          ++v7;
          v19 += 3;
        }

        if ((v16 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (v7 < v9)
        {
          goto LABEL_122;
        }

        if (v9 < v7)
        {
          v21 = 24 * v7 - 8;
          v22 = v7;
          v23 = v9;
          do
          {
            if (v23 != --v22)
            {
              v24 = *a3;
              if (!*a3)
              {
                goto LABEL_127;
              }

              v25 = (v24 + v18);
              v26 = (v24 + v21);
              v27 = *v25;
              v28 = *(v25 + 2);
              v29 = *v26;
              *v25 = *(v26 - 1);
              *(v25 + 2) = v29;
              *(v26 - 1) = v27;
              *v26 = v28;
            }

            ++v23;
            v21 -= 24;
            v18 += 24;
          }

          while (v23 < v22);
        }
      }

LABEL_28:
      v30 = a3[1];
      if (v7 < v30)
      {
        if (__OFSUB__(v7, v9))
        {
          goto LABEL_121;
        }

        if (v7 - v9 < a4)
        {
          if (__OFADD__(v9, a4))
          {
            goto LABEL_123;
          }

          if (v9 + a4 >= v30)
          {
            v31 = a3[1];
          }

          else
          {
            v31 = v9 + a4;
          }

          if (v31 < v9)
          {
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
LABEL_129:
            __break(1u);
            return;
          }

          if (v7 != v31)
          {
            v32 = *a3;
            v33 = *a3 + 24 * v7 - 24;
            v94 = v9;
            v34 = v9 - v7;
            do
            {
              v35 = (v32 + 24 * v7);
              v36 = *v35;
              v37 = v35[1];
              v38 = v34;
              v39 = v33;
              do
              {
                v40 = v36 == *v39 && v37 == v39[1];
                if (v40 || (sub_231586C44() & 1) == 0)
                {
                  break;
                }

                if (!v32)
                {
                  goto LABEL_125;
                }

                v37 = v39[4];
                v41 = v39[5];
                v42 = v39[2];
                v36 = v39[3];
                *(v39 + 3) = *v39;
                v39[5] = v42;
                *v39 = v36;
                v39[1] = v37;
                v39[2] = v41;
                v39 -= 3;
              }

              while (!__CFADD__(v38++, 1));
              ++v7;
              v33 += 24;
              --v34;
            }

            while (v7 != v31);
            v7 = v31;
            v9 = v94;
          }
        }
      }

      if (v7 < v9)
      {
        goto LABEL_120;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v88 = v8[2];
        sub_2314F0BEC();
        v8 = v89;
      }

      v44 = v8[2];
      v45 = v44 + 1;
      if (v44 >= v8[3] >> 1)
      {
        sub_2314F0BEC();
        v8 = v90;
      }

      v8[2] = v45;
      v46 = v8 + 4;
      v47 = &v8[2 * v44 + 4];
      *v47 = v9;
      v47[1] = v7;
      v95 = *a1;
      if (!*a1)
      {
        goto LABEL_128;
      }

      if (v44)
      {
        v93 = v8 + 4;
        while (1)
        {
          v48 = v45 - 1;
          v49 = &v46[2 * v45 - 2];
          v50 = &v8[2 * v45];
          if (v45 >= 4)
          {
            break;
          }

          if (v45 == 3)
          {
            v51 = v8[4];
            v52 = v8[5];
            v61 = __OFSUB__(v52, v51);
            v53 = v52 - v51;
            v54 = v61;
LABEL_70:
            if (v54)
            {
              goto LABEL_110;
            }

            v66 = *v50;
            v65 = v50[1];
            v67 = __OFSUB__(v65, v66);
            v68 = v65 - v66;
            v69 = v67;
            if (v67)
            {
              goto LABEL_113;
            }

            v70 = v49[1];
            v71 = v70 - *v49;
            if (__OFSUB__(v70, *v49))
            {
              goto LABEL_116;
            }

            if (__OFADD__(v68, v71))
            {
              goto LABEL_118;
            }

            if (v68 + v71 >= v53)
            {
              if (v53 < v71)
              {
                v48 = v45 - 2;
              }

              goto LABEL_92;
            }

            goto LABEL_85;
          }

          if (v45 < 2)
          {
            goto LABEL_112;
          }

          v73 = *v50;
          v72 = v50[1];
          v61 = __OFSUB__(v72, v73);
          v68 = v72 - v73;
          v69 = v61;
LABEL_85:
          if (v69)
          {
            goto LABEL_115;
          }

          v75 = *v49;
          v74 = v49[1];
          v61 = __OFSUB__(v74, v75);
          v76 = v74 - v75;
          if (v61)
          {
            goto LABEL_117;
          }

          if (v76 < v68)
          {
            goto LABEL_99;
          }

LABEL_92:
          if (v48 - 1 >= v45)
          {
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
LABEL_123:
            __break(1u);
            goto LABEL_124;
          }

          if (!*a3)
          {
            goto LABEL_126;
          }

          v80 = &v46[2 * v48 - 2];
          v81 = *v80;
          v82 = v48;
          v83 = &v46[2 * v48];
          v84 = v83[1];
          sub_23156B420((*a3 + 24 * *v80), (*a3 + 24 * *v83), *a3 + 24 * v84, v95);
          if (v5)
          {
            goto LABEL_103;
          }

          if (v84 < v81)
          {
            goto LABEL_105;
          }

          v85 = v8;
          v86 = v8[2];
          if (v82 > v86)
          {
            goto LABEL_106;
          }

          *v80 = v81;
          v80[1] = v84;
          if (v82 >= v86)
          {
            goto LABEL_107;
          }

          v45 = v86 - 1;
          memmove(v83, v83 + 2, 16 * (v86 - 1 - v82));
          v85[2] = v86 - 1;
          v87 = v86 > 2;
          v8 = v85;
          v5 = 0;
          v46 = v93;
          if (!v87)
          {
            goto LABEL_99;
          }
        }

        v55 = &v46[2 * v45];
        v56 = *(v55 - 8);
        v57 = *(v55 - 7);
        v61 = __OFSUB__(v57, v56);
        v58 = v57 - v56;
        if (v61)
        {
          goto LABEL_108;
        }

        v60 = *(v55 - 6);
        v59 = *(v55 - 5);
        v61 = __OFSUB__(v59, v60);
        v53 = v59 - v60;
        v54 = v61;
        if (v61)
        {
          goto LABEL_109;
        }

        v62 = v50[1];
        v63 = v62 - *v50;
        if (__OFSUB__(v62, *v50))
        {
          goto LABEL_111;
        }

        v61 = __OFADD__(v53, v63);
        v64 = v53 + v63;
        if (v61)
        {
          goto LABEL_114;
        }

        if (v64 >= v58)
        {
          v78 = *v49;
          v77 = v49[1];
          v61 = __OFSUB__(v77, v78);
          v79 = v77 - v78;
          if (v61)
          {
            goto LABEL_119;
          }

          if (v53 < v79)
          {
            v48 = v45 - 2;
          }

          goto LABEL_92;
        }

        goto LABEL_70;
      }

LABEL_99:
      v6 = a3[1];
      if (v7 >= v6)
      {
        v97 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_129;
  }

  sub_23156B2E8(&v97, *a1, a3);
LABEL_103:
}

uint64_t sub_23156B2E8(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v15 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_231562458(v15);
    v15 = result;
  }

  v12 = v4;
  *v4 = v15;
  v6 = (v15 + 16);
  for (i = *(v15 + 16); ; *v6 = i)
  {
    if (i < 2)
    {
LABEL_10:
      *v12 = v15;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v4 = (v15 + 16 * i);
    v8 = *v4;
    v9 = &v6[2 * i];
    v10 = v9[1];
    sub_23156B420((*a3 + 24 * *v4), (*a3 + 24 * *v9), *a3 + 24 * v10, a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v10 < v8)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (i - 2 >= *v6)
    {
      goto LABEL_12;
    }

    *v4 = v8;
    v4[1] = v10;
    v11 = *v6 - i;
    if (*v6 < i)
    {
      goto LABEL_13;
    }

    i = *v6 - 1;
    result = memmove(v9, v9 + 2, 16 * v11);
  }

  *v12 = v15;
  __break(1u);
  return result;
}

uint64_t sub_23156B420(char *a1, char *a2, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 24;
  v9 = (a3 - a2) / 24;
  if (v8 < v9)
  {
    sub_2314F2764(a1, (a2 - a1) / 24, a4);
    v10 = &v4[24 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_36;
      }

      v12 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (v12 || (sub_231586C44() & 1) == 0)
      {
        break;
      }

      v13 = v6;
      v12 = v7 == v6;
      v6 += 24;
      if (!v12)
      {
        goto LABEL_16;
      }

LABEL_17:
      v7 += 24;
    }

    v13 = v4;
    v12 = v7 == v4;
    v4 += 24;
    if (v12)
    {
      goto LABEL_17;
    }

LABEL_16:
    v14 = *v13;
    *(v7 + 2) = *(v13 + 2);
    *v7 = v14;
    goto LABEL_17;
  }

  sub_2314F2764(a2, (a3 - a2) / 24, a4);
  v10 = &v4[24 * v9];
LABEL_19:
  v15 = v6 - 24;
  for (v5 -= 24; v10 > v4 && v6 > v7; v5 -= 24)
  {
    v17 = *(v10 - 3) == *(v6 - 3) && *(v10 - 2) == *(v6 - 2);
    if (!v17 && (sub_231586C44() & 1) != 0)
    {
      v12 = v5 + 24 == v6;
      v6 -= 24;
      if (!v12)
      {
        v19 = *v15;
        *(v5 + 16) = *(v15 + 2);
        *v5 = v19;
        v6 = v15;
      }

      goto LABEL_19;
    }

    if (v10 != (v5 + 24))
    {
      v18 = *(v10 - 24);
      *(v5 + 16) = *(v10 - 1);
      *v5 = v18;
    }

    v10 -= 24;
  }

LABEL_36:
  v20 = (v10 - v4) / 24;
  if (v6 != v4 || v6 >= &v4[24 * v20])
  {
    memmove(v6, v4, 24 * v20);
  }

  return 1;
}

uint64_t sub_23156B5E8(uint64_t result, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(result + 16);
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

  if (v4 < 0)
  {
LABEL_9:
    __break(1u);
  }

  return result;
}

unint64_t sub_23156B654()
{
  result = qword_280D70220;
  if (!qword_280D70220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D70220);
  }

  return result;
}

unint64_t sub_23156B6A8()
{
  result = qword_280D6F9C8;
  if (!qword_280D6F9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D6F9C8);
  }

  return result;
}

unint64_t sub_23156B6FC()
{
  result = qword_27DD5C028;
  if (!qword_27DD5C028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD5C028);
  }

  return result;
}

unint64_t sub_23156B750()
{
  result = qword_280D6FD78[0];
  if (!qword_280D6FD78[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280D6FD78);
  }

  return result;
}

uint64_t sub_23156B7A4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DD5B2E8, &unk_23158B460);
    result = OUTLINED_FUNCTION_48_0();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_23156B804()
{
  result = qword_280D6FD70;
  if (!qword_280D6FD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D6FD70);
  }

  return result;
}

uint64_t sub_23156B858(uint64_t a1, uint64_t a2)
{
  v4 = a2 + 64;
  v3 = *(a2 + 64);
  OUTLINED_FUNCTION_13_12(a1, a2);
  v6 = v5 >> 6;

  v8 = 0;
  v9 = 0;
  if (v2)
  {
    while (1)
    {
      v10 = v9;
LABEL_7:
      OUTLINED_FUNCTION_20_9(v10);
      v13 = *(v12 + 8 * v11);
      v22 = OUTLINED_FUNCTION_42_2(v14, v15, v16, v17, v18, v19, v20, v21, v25, v26);
      memcpy(v22, v23, 0x48uLL);

      sub_231586274();

      if (v13 == 0.0)
      {
        v24 = 0.0;
      }

      else
      {
        v24 = v13;
      }

      MEMORY[0x231930A10](*&v24);
      v8 ^= sub_231586D44();
    }
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return MEMORY[0x231930A00](0);
    }

    ++v9;
    if (*(v4 + 8 * v10))
    {
      v9 = v10;
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23156B970(uint64_t a1, uint64_t a2)
{
  v4 = a2 + 64;
  v3 = *(a2 + 64);
  OUTLINED_FUNCTION_13_12(a1, a2);
  v6 = v5 >> 6;

  v8 = 0;
  v9 = 0;
  if (v2)
  {
    while (1)
    {
      v10 = v9;
LABEL_7:
      OUTLINED_FUNCTION_20_9(v10);
      v13 = *(v12 + 8 * v11);
      v22 = OUTLINED_FUNCTION_42_2(v14, v15, v16, v17, v18, v19, v20, v21, v24, v25);
      memcpy(v22, v23, 0x48uLL);

      sub_231586274();

      MEMORY[0x231930A00](v13);
      v8 ^= sub_231586D44();
    }
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return MEMORY[0x231930A00](0);
    }

    ++v9;
    if (*(v4 + 8 * v10))
    {
      v9 = v10;
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23156BA74(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  result = sub_2315867D4();
  v4 = *(a1 + 36);
  return result;
}

uint64_t sub_23156BAB4@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (result < 0 || 1 << *(a3 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a3 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a3 + 36) == a2)
  {
    return sub_2314A24F0(*(a3 + 56) + 32 * result, a4);
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_23156BB08(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
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

uint64_t sub_23156BB84(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DD5C020, &unk_23158E4E8);
    result = OUTLINED_FUNCTION_48_0();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_23156BBE8()
{
  result = qword_27DD5C060;
  if (!qword_27DD5C060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD5C060);
  }

  return result;
}

uint64_t sub_23156BC3C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFD && *(a1 + 9))
    {
      v2 = *a1 + 252;
    }

    else
    {
      v3 = *(a1 + 8);
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

uint64_t sub_23156BC7C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
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

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_23156BCDC(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_23156BD1C(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

_BYTE *storeEnumTagSinglePayload for SignalValue.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_23156BE7C(_BYTE *result, int a2, int a3)
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

unint64_t sub_23156BF2C()
{
  result = qword_27DD5C068;
  if (!qword_27DD5C068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD5C068);
  }

  return result;
}

unint64_t sub_23156BF84()
{
  result = qword_27DD5C070;
  if (!qword_27DD5C070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD5C070);
  }

  return result;
}

unint64_t sub_23156BFDC()
{
  result = qword_27DD5C078;
  if (!qword_27DD5C078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD5C078);
  }

  return result;
}

unint64_t sub_23156C034()
{
  result = qword_27DD5C080;
  if (!qword_27DD5C080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD5C080);
  }

  return result;
}

unint64_t sub_23156C08C()
{
  result = qword_27DD5C088;
  if (!qword_27DD5C088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD5C088);
  }

  return result;
}

unint64_t sub_23156C0E4()
{
  result = qword_280D701F0;
  if (!qword_280D701F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D701F0);
  }

  return result;
}

unint64_t sub_23156C13C()
{
  result = qword_280D701F8;
  if (!qword_280D701F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D701F8);
  }

  return result;
}

unint64_t sub_23156C194()
{
  result = qword_280D70200;
  if (!qword_280D70200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D70200);
  }

  return result;
}

unint64_t sub_23156C1EC()
{
  result = qword_280D70208;
  if (!qword_280D70208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D70208);
  }

  return result;
}

unint64_t sub_23156C244()
{
  result = qword_280D701D0;
  if (!qword_280D701D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D701D0);
  }

  return result;
}

unint64_t sub_23156C29C()
{
  result = qword_280D701D8;
  if (!qword_280D701D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D701D8);
  }

  return result;
}

unint64_t sub_23156C2F4()
{
  result = qword_280D701E0;
  if (!qword_280D701E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D701E0);
  }

  return result;
}

unint64_t sub_23156C34C()
{
  result = qword_280D701E8;
  if (!qword_280D701E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D701E8);
  }

  return result;
}

unint64_t sub_23156C3A4()
{
  result = qword_280D70210;
  if (!qword_280D70210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D70210);
  }

  return result;
}

unint64_t sub_23156C3FC()
{
  result = qword_280D70218;
  if (!qword_280D70218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D70218);
  }

  return result;
}

uint64_t sub_23156C450(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BiomeQueriesNowPlaying.AllUserTimeWindows(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_23156C4BC()
{
  result = qword_280D6E050;
  if (!qword_280D6E050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D6E050);
  }

  return result;
}

unint64_t sub_23156C510()
{
  result = qword_280D6FEA0;
  if (!qword_280D6FEA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280D6FEA0);
  }

  return result;
}

uint64_t sub_23156C554(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B640, &unk_23158AE80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_44_2()
{
  v2 = (*(v0 + 48) + 16 * v1);
  v4 = *v2;
  v3 = v2[1];
  return *(v0 + 56) + 32 * v1;
}

uint64_t OUTLINED_FUNCTION_45_2()
{

  return sub_231586A64();
}

uint64_t OUTLINED_FUNCTION_47_1(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 - 104);

  return MEMORY[0x2821FDAA0](a1, a2, v4, a1);
}

uint64_t OUTLINED_FUNCTION_50_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{

  return sub_2314A24F0(v29 - 136, &a29);
}

Swift::Int sub_23156C67C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!*(a4 + 16))
  {
    return 0;
  }

  v5 = sub_23149C888(0x707954616964656DLL, 0xE900000000000065);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = *(a4 + 56) + 16 * v5;
  v12 = *v7;
  v13 = *(v7 + 8);
  sub_2314A5168(*v7, v13);
  v8._countAndFlagsBits = OUTLINED_FUNCTION_2_36();
  v14 = SignalValue.valueInt(for:)(v8);
  value = v14.value;
  is_nil = v14.is_nil;
  sub_2314A5EEC(v12, v13);
  if (is_nil)
  {
    return 0;
  }

  else
  {
    return value;
  }
}

uint64_t sub_23156C72C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v9 = sub_23156C67C(a3, a4, a3, a6);
  if ((v10 & 1) != 0 || (v11 = v9) == 0)
  {
    if (qword_280D70420 != -1)
    {
      OUTLINED_FUNCTION_6_0();
    }

    v17 = sub_231585FF4();
    __swift_project_value_buffer(v17, qword_280D72248);
    v18 = sub_231585FE4();
    v19 = sub_2315865D4();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_231496000, v18, v19, "SignalValuesProcessor#supportsRequestedMediaType unknown media type", v20, 2u);
      MEMORY[0x231931280](v20, -1, -1);
    }

    return 1;
  }

  v12 = sub_23150D60C(v9);
  if (v12 == 5)
  {
    if (qword_280D70420 != -1)
    {
      OUTLINED_FUNCTION_6_0();
    }

    v13 = sub_231585FF4();
    __swift_project_value_buffer(v13, qword_280D72248);
    v14 = sub_231585FE4();
    v15 = sub_2315865D4();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 134217984;
      *(v16 + 4) = v11;
      _os_log_impl(&dword_231496000, v14, v15, "SignalValuesProcessor#supportsRequestedMediaType cannot map media type: %ld to a media category", v16, 0xCu);
      MEMORY[0x231931280](v16, -1, -1);
    }

    return 1;
  }

  v22 = sub_231577B58(v12);
  v24 = v23;
  if (*(a6 + 16))
  {
    v25 = sub_23149C888(v22, v23);
    v27 = v26;

    if (v27)
    {
      v28 = *(a6 + 56) + 16 * v25;
      v29 = *(v28 + 8);
      v38 = *v28;
      v39 = v29;
      sub_2314A5168(v38, v29);
      v30._countAndFlagsBits = a3;
      v30._object = a4;
      *&v31 = SignalValue.valueInt(for:)(v30);
      OUTLINED_FUNCTION_1_40(v31, *(&v31 + 1), v32, v33, v34, v35, v36, v37, v38, v39);
      if ((&v38 & 1) == 0 && v24 == 1)
      {
        return 1;
      }
    }
  }

  else
  {
  }

  return 0;
}

uint64_t sub_23156CB28(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v36 = *(a1 + 16);
  v4 = MEMORY[0x277D84F98];
  v35 = (a1 + 40);
  do
  {
    v38 = v3 + 1;
    v37 = *(&unk_2846116D0 + v3 + 32);
    v5 = sub_231577AAC(v37);
    v7 = v6;
    v9 = v35;
    v8 = v36;
    for (i = MEMORY[0x277D84F90]; v8; --v8)
    {
      v11 = -1.0;
      if (*(a2 + 16))
      {
        v13 = *(v9 - 1);
        v12 = *v9;

        v14 = sub_23149C888(v5, v7);
        if (v15)
        {
          OUTLINED_FUNCTION_4_30(v14);
          switch(v16)
          {
            case 1:
              if (!*(a2 + 16))
              {
                goto LABEL_15;
              }

              v21 = sub_23149C888(v13, v12);
              if ((v22 & 1) == 0)
              {

                v19 = OUTLINED_FUNCTION_6_24();
                goto LABEL_23;
              }

              OUTLINED_FUNCTION_3_35(v21);

              v23 = OUTLINED_FUNCTION_6_24();
              sub_2314A5EEC(v23, v24);
              v11 = COERCE__INT64(-1.0);
              break;
            case 2:

              v11 = *&a2;
              break;
            case 3:
              if (!*(a2 + 16))
              {
                goto LABEL_15;
              }

              v17 = sub_23149C888(v13, v12);
              if (v18)
              {
                OUTLINED_FUNCTION_3_35(v17);
              }

              v19 = a2;
              v20 = 3;
LABEL_23:
              sub_2314A5EEC(v19, v20);
              break;
            default:

              v11 = a2;
              break;
          }
        }

        else
        {
LABEL_15:
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v27 = *(i + 16);
        sub_2314F1200();
        i = v28;
      }

      v26 = *(i + 16);
      v25 = *(i + 24);
      if (v26 >= v25 >> 1)
      {
        OUTLINED_FUNCTION_0_5(v25);
        sub_2314F1200();
        i = v29;
      }

      *(i + 16) = v26 + 1;
      *(i + 8 * v26 + 32) = v11;
      v9 += 2;
    }

    v30 = COERCE_DOUBLE(sub_23156CFE0(i));
    v32 = v31;

    if (v32)
    {
      v33 = 1.0;
    }

    else
    {
      v33 = v30;
    }

    swift_isUniquelyReferenced_nonNull_native();
    sub_231575EB4(v37, v33);
    v3 = v38;
  }

  while (v38 != 5);
  return v4;
}

void sub_23156CD98(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v5 = *(a1 + 16);
  v6 = a1 + 40;
  v7 = MEMORY[0x277D84F90];
  v28 = a1 + 40;
LABEL_2:
  v8 = (v6 + 16 * v4);
  for (i = v4; ; ++i)
  {
    if (v5 == i)
    {
      sub_23156CFE0(v7);

      return;
    }

    if (i >= v5)
    {
      break;
    }

    v4 = i + 1;
    if (__OFADD__(i, 1))
    {
      goto LABEL_29;
    }

    if (*(a2 + 16))
    {
      v11 = *(v8 - 1);
      v10 = *v8;

      v12 = sub_23149C888(0xD000000000000017, 0x800000023158FBD0);
      if (v13)
      {
        OUTLINED_FUNCTION_4_30(v12);
        switch(v14)
        {
          case 1:
            if (!*(a2 + 16))
            {
              goto LABEL_16;
            }

            v15 = sub_23149C888(v11, v10);
            if ((v16 & 1) == 0)
            {

              v17 = OUTLINED_FUNCTION_6_24();
              goto LABEL_15;
            }

            OUTLINED_FUNCTION_3_35(v15);

            v21 = OUTLINED_FUNCTION_6_24();
            sub_2314A5EEC(v21, v22);
            v2 = *&v2;
            goto LABEL_22;
          case 2:

            v2 = *&a2;
            goto LABEL_22;
          case 3:
            if (!*(a2 + 16))
            {
              goto LABEL_16;
            }

            v19 = sub_23149C888(v11, v10);
            if ((v20 & 1) == 0)
            {

              v17 = a2;
              v18 = 3;
LABEL_15:
              sub_2314A5EEC(v17, v18);
              goto LABEL_17;
            }

            OUTLINED_FUNCTION_3_35(v19);

            sub_2314A5EEC(a2, 3u);
LABEL_22:
            v6 = v28;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v25 = *(v7 + 16);
              sub_2314F1200();
              v7 = v26;
            }

            v24 = *(v7 + 16);
            v23 = *(v7 + 24);
            if (v24 >= v23 >> 1)
            {
              OUTLINED_FUNCTION_0_5(v23);
              sub_2314F1200();
              v7 = v27;
            }

            *(v7 + 16) = v24 + 1;
            *(v7 + 8 * v24 + 32) = v2;
            break;
          default:

            v2 = a2;
            goto LABEL_22;
        }

        goto LABEL_2;
      }

LABEL_16:
    }

LABEL_17:
    v8 += 2;
  }

  __break(1u);
LABEL_29:
  __break(1u);
}

uint64_t sub_23156CFE0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = v1 - 1;
  if (v1 != 1)
  {
    v4 = (a1 + 40);
    do
    {
      v5 = *v4++;
      v6 = v5;
      if (v5 < v2)
      {
        v2 = v6;
      }

      --v3;
    }

    while (v3);
  }

  return *&v2;
}

uint64_t sub_23156D02C(unint64_t a1, uint64_t a2)
{
  isUniquelyReferenced_nonNull_native = sub_231585BA4();
  v5 = OUTLINED_FUNCTION_4_1(isUniquelyReferenced_nonNull_native);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_11_0();
  v12 = v10 - v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_35();
  v64 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B6B8, &unk_23158AC00);
  v16 = OUTLINED_FUNCTION_19(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_11_0();
  v21 = v19 - v20;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_35();
  v67 = v23;
  if (a2)
  {

    v24 = sub_2315860F4();
    v25 = 0;
    v65 = a2;
    v27 = *(a2 + 64);
    v26 = a2 + 64;
    v28 = *(v26 - 32);
    OUTLINED_FUNCTION_3_0();
    v31 = v30 & v29;
    v62 = (v32 + 63) >> 6;
    v70 = v12;
    v71 = (v7 + 32);
    v63 = v7;
    v66 = v26;
    v68 = v21;
    v69 = a1;
    if ((v30 & v29) == 0)
    {
      goto LABEL_4;
    }

    while (1)
    {
      v33 = v25;
LABEL_8:
      v34 = __clz(__rbit64(v31));
      v31 &= v31 - 1;
      v35 = v34 | (v33 << 6);
      v36 = (*(v65 + 48) + 16 * v35);
      v38 = *v36;
      v37 = v36[1];
      (*(v63 + 16))(v64, *(v65 + 56) + *(v63 + 72) * v35, isUniquelyReferenced_nonNull_native);
      v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B640, &unk_23158AE80);
      v40 = *(v39 + 48);
      *v68 = v38;
      *(v68 + 1) = v37;
      v21 = v68;
      (*(v63 + 32))(&v68[v40], v64, isUniquelyReferenced_nonNull_native);
      __swift_storeEnumTagSinglePayload(v68, 0, 1, v39);

      a1 = v69;
      v12 = v70;
LABEL_9:
      sub_2314A4B78(v21, v67, &qword_27DD5B6B8, &unk_23158AC00);
      v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B640, &unk_23158AE80);
      OUTLINED_FUNCTION_18_10(v67, 1);
      if (v42)
      {

        return v24;
      }

      v44 = *v67;
      v43 = v67[1];
      (*v71)(v12, v67 + *(v41 + 48), isUniquelyReferenced_nonNull_native);
      v45 = sub_231585B44();
      if ((a1 & 0x8000000000000000) != 0)
      {
        break;
      }

      if (*(v45 + 16) <= a1)
      {
        goto LABEL_29;
      }

      v12 = *(v45 + 2 * a1 + 32);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v46 = sub_23149C888(v44, v43);
      if (__OFADD__(*(v24 + 16), (v47 & 1) == 0))
      {
        goto LABEL_30;
      }

      v48 = v46;
      v49 = v47;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B890, &unk_231589360);
      if (sub_231586A64())
      {
        v50 = sub_23149C888(v44, v43);
        if ((v49 & 1) != (v51 & 1))
        {
          goto LABEL_32;
        }

        v48 = v50;
      }

      if (v49)
      {

        v52 = OUTLINED_FUNCTION_6_25();
        v53(v52);
      }

      else
      {
        *(v24 + 8 * (v48 >> 6) + 64) |= 1 << v48;
        v54 = (*(v24 + 48) + 16 * v48);
        *v54 = v44;
        v54[1] = v43;
        v55 = OUTLINED_FUNCTION_6_25();
        v56(v55);
        v57 = *(v24 + 16);
        v58 = __OFADD__(v57, 1);
        v59 = v57 + 1;
        if (v58)
        {
          goto LABEL_31;
        }

        *(v24 + 16) = v59;
      }

      v21 = v68;
      a1 = v69;
      v26 = v66;
      if (!v31)
      {
LABEL_4:
        while (1)
        {
          v33 = v25 + 1;
          if (__OFADD__(v25, 1))
          {
            break;
          }

          if (v33 >= v62)
          {
            v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B640, &unk_23158AE80);
            __swift_storeEnumTagSinglePayload(v21, 1, 1, v60);
            v31 = 0;
            goto LABEL_9;
          }

          v31 = *(v26 + 8 * v33);
          ++v25;
          if (v31)
          {
            v25 = v33;
            goto LABEL_8;
          }
        }

        __break(1u);
        break;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    result = sub_231586C84();
    __break(1u);
  }

  else
  {

    return sub_2315860F4();
  }

  return result;
}

uint64_t sub_23156D520(uint64_t a1)
{
  sub_2314A4360(a1);
  sub_23156A220(v1);
  v23 = v2;
  v3 = 0;
  sub_23156E114(&v23);

  v4 = v23;
  v5 = sub_2315860F4();
  v22 = v4[2];
  v6 = v4;
  for (i = v4 + 5; ; i += 3)
  {
    if (v22 == v3)
    {

      return v5;
    }

    if (v3 >= v6[2])
    {
      break;
    }

    v9 = *(i - 1);
    v8 = *i;

    swift_isUniquelyReferenced_nonNull_native();
    v23 = v5;
    v10 = sub_23149C888(v9, v8);
    if (__OFADD__(v5[2], (v11 & 1) == 0))
    {
      goto LABEL_15;
    }

    v12 = v10;
    v13 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B890, &unk_231589360);
    if (sub_231586A64())
    {
      v14 = sub_23149C888(v9, v8);
      if ((v13 & 1) != (v15 & 1))
      {
        goto LABEL_17;
      }

      v12 = v14;
    }

    v16 = v3 + 1;
    v5 = v23;
    if (v13)
    {
      *(v23[7] + 8 * v12) = v16;
    }

    else
    {
      v23[(v12 >> 6) + 8] |= 1 << v12;
      v17 = (v5[6] + 16 * v12);
      *v17 = v9;
      v17[1] = v8;
      *(v5[7] + 8 * v12) = v16;
      v18 = v5[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_16;
      }

      v5[2] = v20;
    }

    ++v3;
  }

  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  __break(1u);
LABEL_17:
  sub_231586C84();
  __break(1u);

  __break(1u);
  return result;
}

void sub_23156D71C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B6B8, &unk_23158AC00);
  v4 = OUTLINED_FUNCTION_19(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_11_0();
  v9 = v7 - v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_11_18();
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v92 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v92 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v92 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B640, &unk_23158AE80);
  v21 = OUTLINED_FUNCTION_4_1(v20);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_11_0();
  v100 = v24 - v25;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_35();
  v99 = v29;
  if (!a1)
  {
    goto LABEL_38;
  }

  v93 = v28;
  v94 = v1;
  v95 = v14;
  v96 = v19;
  v101 = a1;
  v102 = v27;
  v92 = v9;
  v30 = *(a1 + 64);
  v97 = a1 + 64;
  v98 = v17;
  v31 = *(a1 + 32);
  OUTLINED_FUNCTION_3_0();
  v34 = v33 & v32;
  v36 = (v35 + 63) >> 6;

  v37 = 0;
  v103 = 0;
  do
  {
    if (!v34)
    {
      v39 = v101;
      v40 = v102;
      while (1)
      {
        v38 = v37 + 1;
        if (__OFADD__(v37, 1))
        {
          break;
        }

        if (v38 >= v36)
        {
          goto LABEL_13;
        }

        v34 = *(v97 + 8 * v38);
        ++v37;
        if (v34)
        {
          v37 = v38;
          goto LABEL_10;
        }
      }

      __break(1u);
      goto LABEL_41;
    }

    v38 = v37;
    v39 = v101;
LABEL_10:
    v41 = __clz(__rbit64(v34));
    v34 &= v34 - 1;
    v42 = v41 | (v38 << 6);
    v43 = *(v39 + 56);
    v44 = (*(v39 + 48) + 16 * v42);
    v46 = *v44;
    v45 = v44[1];
    v47 = sub_231585BA4();
    OUTLINED_FUNCTION_4_1(v47);
    v49 = v48;
    v51 = v43 + *(v50 + 72) * v42;
    v52 = v102;
    v53 = v99;
    (*(v48 + 16))(v99 + *(v102 + 48), v51, v47);
    *v53 = v46;
    v53[1] = v45;
    v54 = v100;
    sub_231570540(v53, v100, &qword_27DD5B640, &unk_23158AE80);
    v55 = *(v54 + 8);

    v40 = *(v52 + 48);
    v39 = v54 + v40;
    v56 = sub_231585B84();
    sub_2314A2910(v53, &qword_27DD5B640, &unk_23158AE80);
    (*(v49 + 8))(v54 + v40, v47);
    v57 = __OFADD__(v103, v56);
    v103 += v56;
  }

  while (!v57);
  __break(1u);
LABEL_13:

  sub_23156A368(v39);
  v106[0] = v58;
  sub_23156E180(v106);
  v59 = sub_23156E080(2, v106[0]);
  v61 = v60;
  v63 = v62;
  v65 = v64;
  v34 = v96;
  sub_231566D24(v60, v62, v64, v96);
  v66 = v98;
  if (__OFSUB__(v65 >> 1, v63))
  {
LABEL_41:
    __break(1u);
LABEL_42:
    OUTLINED_FUNCTION_6_0();
    goto LABEL_23;
  }

  if (((v65 >> 1) - v63) <= 1)
  {
    v68 = 1;
  }

  else
  {
    if (v63 > 1 || v65 < 4)
    {
      __break(1u);

      __break(1u);
      return;
    }

    sub_231570540(v61 + *(v93 + 72), v98, &qword_27DD5B640, &unk_23158AE80);
    v68 = 0;
  }

  __swift_storeEnumTagSinglePayload(v66, v68, 1, v40);
  if (qword_280D70420 != -1)
  {
    goto LABEL_42;
  }

LABEL_23:
  v69 = sub_231585FF4();
  __swift_project_value_buffer(v69, qword_280D72248);
  swift_unknownObjectRetain();
  v70 = sub_231585FE4();
  v71 = sub_2315865D4();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v70, v71))
  {
    v72 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    v106[0] = v73;
    *v72 = 136315138;
    sub_2315867B4();
    v74 = sub_2314A22E8();

    *(v72 + 4) = v74;
    _os_log_impl(&dword_231496000, v70, v71, "SiriRemembersIntentStatsQuery#computeUserPersona First and second max usage apps: %s", v72, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v73);
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_10();
  }

  v75 = v95;
  sub_231570540(v34, v95, &qword_27DD5B6B8, &unk_23158AC00);
  if (__swift_getEnumTagSinglePayload(v75, 1, v40) == 1)
  {
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_12_15(v98);
    OUTLINED_FUNCTION_12_15(v34);
    v76 = v75;
    goto LABEL_37;
  }

  v77 = *(v75 + 8);

  v78 = *(v40 + 48);
  v79 = sub_231585B84();
  v80 = sub_231585BA4();
  OUTLINED_FUNCTION_8(v80);
  v82 = *(v81 + 8);
  v82(v75 + v78, v80);
  v83 = v94;
  sub_231570540(v34, v94, &qword_27DD5B6B8, &unk_23158AC00);
  OUTLINED_FUNCTION_18_10(v83, 1);
  if (v84)
  {
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_12_15(v98);
    OUTLINED_FUNCTION_12_15(v34);
    v76 = v83;
LABEL_37:
    OUTLINED_FUNCTION_12_15(v76);
    goto LABEL_38;
  }

  v86 = *v83;
  v85 = v83[1];
  v82(v83 + *(v40 + 48), v80);
  if (v79 < 1 || v103 < 1)
  {
LABEL_36:
    swift_unknownObjectRelease();

    OUTLINED_FUNCTION_12_15(v98);
    v76 = v96;
    goto LABEL_37;
  }

  v87 = v92;
  sub_231570540(v98, v92, &qword_27DD5B6B8, &unk_23158AC00);
  v88 = v102;
  OUTLINED_FUNCTION_18_10(v87, 1);
  if (v84)
  {
    sub_2314A2910(v87, &qword_27DD5B6B8, &unk_23158AC00);
  }

  else
  {
    v89 = *(v87 + 8);

    v90 = *(v88 + 48);
    v91 = sub_231585B84();
    v82(v87 + v90, v80);
    if (v79 == v91)
    {
      goto LABEL_36;
    }
  }

  v106[0] = v86;
  v106[1] = v85;
  v104 = 0x6C7070612E6D6F63;
  v105 = 0xE900000000000065;
  sub_23156E234();
  sub_23156E288();
  sub_231586144();
  swift_unknownObjectRelease();
  sub_2314A2910(v98, &qword_27DD5B6B8, &unk_23158AC00);
  sub_2314A2910(v96, &qword_27DD5B6B8, &unk_23158AC00);

LABEL_38:
  OUTLINED_FUNCTION_16_3();
}

BOOL sub_23156DEF8(uint64_t a1, uint64_t a2)
{
  v21 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B640, &unk_23158AE80);
  v4 = v3 - 8;
  v5 = *(*(v3 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v20 - v9;
  sub_231570540(a1, &v20 - v9, &qword_27DD5B640, &unk_23158AE80);
  v11 = *(v10 + 1);

  v12 = *(v4 + 56);
  v13 = sub_231585B84();
  v14 = sub_231585BA4();
  v15 = *(*(v14 - 8) + 8);
  v15(&v10[v12], v14);
  sub_231570540(v21, v8, &qword_27DD5B640, &unk_23158AE80);
  v16 = *(v8 + 1);

  v17 = *(v4 + 56);
  v18 = sub_231585B84();
  v15(&v8[v17], v14);
  return v18 < v13;
}

uint64_t sub_23156E080(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(a2 + 16);
    result = sub_2315704F4(0, result, v3);
    if (v4)
    {
      v5 = v3;
    }

    else
    {
      v5 = result;
    }

    if ((v5 & 0x8000000000000000) == 0)
    {
      v6 = sub_231570440(0, v5, a2);

      return v6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23156E114(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_231562AAC(v2);
  }

  v3 = v2[2];
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = sub_23156E2DC(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_23156E180(size_t *a1)
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B640, &unk_23158AE80) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_231562ADC(v3);
  }

  v4 = *(v3 + 16);
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_23156E3E0(v6);
  *a1 = v3;
  return result;
}

unint64_t sub_23156E234()
{
  result = qword_280D6EA48;
  if (!qword_280D6EA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D6EA48);
  }

  return result;
}

unint64_t sub_23156E288()
{
  result = qword_280D6EA50;
  if (!qword_280D6EA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D6EA50);
  }

  return result;
}

uint64_t sub_23156E2DC(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_231586C14();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BEE0, &qword_23158E118);
        v6 = sub_2315863E4();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_23156E91C(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_23156E528(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_23156E3E0(int64_t *a1)
{
  v2 = a1[1];
  result = sub_231586C14();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B640, &unk_23158AE80);
        v6 = sub_2315863E4();
        *(v6 + 16) = v5;
      }

      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B640, &unk_23158AE80) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_23156EE2C(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_23156E5A4(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_23156E528(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 24 * a3;
    v6 = result - a3;
    while (2)
    {
      v7 = *(v4 + 24 * a3 + 16);
      v8 = v6;
      v9 = v5;
      do
      {
        if (*(v9 - 1) >= v7)
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        v10 = *v9;
        v11 = v9[1];
        *v9 = *(v9 - 3);
        v9[2] = *(v9 - 1);
        *(v9 - 2) = v11;
        *(v9 - 1) = v7;
        *(v9 - 3) = v10;
        v9 -= 3;
      }

      while (!__CFADD__(v8++, 1));
      ++a3;
      v5 += 24;
      --v6;
      if (a3 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_23156E5A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B640, &unk_23158AE80);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v48 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v51 = &v39 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v50 = &v39 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v49 = &v39 - v17;
  result = MEMORY[0x28223BE20](v16);
  v56 = &v39 - v20;
  v41 = a2;
  if (a3 != a2)
  {
    v21 = *a4;
    v22 = *(v19 + 72);
    v23 = *a4 + v22 * (a3 - 1);
    v46 = -v22;
    v47 = v21;
    v24 = a1 - a3;
    v40 = v22;
    v25 = v21 + v22 * a3;
    while (2)
    {
      v44 = v23;
      v45 = a3;
      v42 = v25;
      v43 = v24;
      v52 = v24;
      do
      {
        v55 = v25;
        v26 = v56;
        sub_231570540(v25, v56, &qword_27DD5B640, &unk_23158AE80);
        v27 = v49;
        sub_231570540(v23, v49, &qword_27DD5B640, &unk_23158AE80);
        v28 = v50;
        sub_231570540(v26, v50, &qword_27DD5B640, &unk_23158AE80);
        v29 = *(v28 + 8);

        v30 = *(v8 + 48);
        v54 = sub_231585B84();
        v31 = sub_231585BA4();
        v53 = *(*(v31 - 8) + 8);
        v53(v28 + v30, v31);
        v32 = v51;
        sub_231570540(v27, v51, &qword_27DD5B640, &unk_23158AE80);
        v33 = *(v32 + 8);

        v34 = *(v8 + 48);
        v35 = sub_231585B84();
        v53(v32 + v34, v31);
        sub_2314A2910(v27, &qword_27DD5B640, &unk_23158AE80);
        result = sub_2314A2910(v56, &qword_27DD5B640, &unk_23158AE80);
        v36 = v55;
        if (v35 >= v54)
        {
          break;
        }

        if (!v47)
        {
          __break(1u);
          return result;
        }

        v37 = v48;
        sub_2314A4B78(v55, v48, &qword_27DD5B640, &unk_23158AE80);
        swift_arrayInitWithTakeFrontToBack();
        result = sub_2314A4B78(v37, v23, &qword_27DD5B640, &unk_23158AE80);
        v23 += v46;
        v25 = v36 + v46;
      }

      while (!__CFADD__(v52++, 1));
      a3 = v45 + 1;
      v23 = v44 + v40;
      v24 = v43 - 1;
      v25 = v42 + v40;
      if (v45 + 1 != v41)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_23156E91C(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v89 = MEMORY[0x277D84F90];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    v84 = a4;
    while (1)
    {
      v9 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v10 = *(*a3 + 24 * v9 + 16);
        v11 = *a3 + 24 * v7;
        v12 = 24 * v7;
        v13 = *(v11 + 16);
        v14 = (v11 + 64);
        v15 = v7 + 2;
        v16 = v10;
        while (1)
        {
          v17 = v15;
          if (++v9 >= v6)
          {
            break;
          }

          v18 = *v14;
          v14 += 3;
          v19 = (v13 < v10) ^ (v16 >= v18);
          ++v15;
          v16 = v18;
          if ((v19 & 1) == 0)
          {
            goto LABEL_9;
          }
        }

        v9 = v6;
LABEL_9:
        if (v13 < v10)
        {
          if (v9 < v7)
          {
            goto LABEL_108;
          }

          if (v7 < v9)
          {
            if (v6 >= v17)
            {
              v6 = v17;
            }

            v20 = 24 * v6 - 8;
            v21 = v9;
            v22 = v7;
            do
            {
              if (v22 != --v21)
              {
                v23 = *a3;
                if (!*a3)
                {
                  goto LABEL_113;
                }

                v24 = (v23 + v12);
                v25 = (v23 + v20);
                v26 = *v24;
                v27 = *(v24 + 2);
                v28 = *v25;
                *v24 = *(v25 - 1);
                *(v24 + 2) = v28;
                *(v25 - 1) = v26;
                *v25 = v27;
              }

              ++v22;
              v20 -= 24;
              v12 += 24;
            }

            while (v22 < v21);
            v6 = a3[1];
          }
        }
      }

      if (v9 < v6)
      {
        if (__OFSUB__(v9, v7))
        {
          goto LABEL_107;
        }

        if (v9 - v7 < a4)
        {
          if (__OFADD__(v7, a4))
          {
            goto LABEL_109;
          }

          if (v7 + a4 < v6)
          {
            v6 = v7 + a4;
          }

          if (v6 < v7)
          {
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
            return;
          }

          if (v9 != v6)
          {
            v29 = *a3;
            v30 = *a3 + 24 * v9;
            v31 = v7 - v9;
            do
            {
              v32 = *(v29 + 24 * v9 + 16);
              v33 = v31;
              v34 = v30;
              do
              {
                if (*(v34 - 1) >= v32)
                {
                  break;
                }

                if (!v29)
                {
                  goto LABEL_111;
                }

                v35 = *v34;
                v36 = v34[1];
                *v34 = *(v34 - 3);
                v34[2] = *(v34 - 1);
                *(v34 - 2) = v36;
                *(v34 - 1) = v32;
                *(v34 - 3) = v35;
                v34 -= 3;
              }

              while (!__CFADD__(v33++, 1));
              ++v9;
              v30 += 24;
              --v31;
            }

            while (v9 != v6);
            v9 = v6;
          }
        }
      }

      if (v9 < v7)
      {
        goto LABEL_106;
      }

      v86 = v9;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v81 = v8[2];
        sub_2314F0BEC();
        v8 = v82;
      }

      v38 = v8[2];
      v39 = v38 + 1;
      if (v38 >= v8[3] >> 1)
      {
        sub_2314F0BEC();
        v8 = v83;
      }

      v8[2] = v39;
      v40 = v8 + 4;
      v41 = &v8[2 * v38 + 4];
      *v41 = v7;
      v41[1] = v86;
      v87 = *a1;
      if (!*a1)
      {
        goto LABEL_114;
      }

      if (v38)
      {
        while (1)
        {
          v42 = v39 - 1;
          v43 = &v40[2 * v39 - 2];
          v44 = &v8[2 * v39];
          if (v39 >= 4)
          {
            break;
          }

          if (v39 == 3)
          {
            v45 = v8[4];
            v46 = v8[5];
            v55 = __OFSUB__(v46, v45);
            v47 = v46 - v45;
            v48 = v55;
LABEL_56:
            if (v48)
            {
              goto LABEL_96;
            }

            v60 = *v44;
            v59 = v44[1];
            v61 = __OFSUB__(v59, v60);
            v62 = v59 - v60;
            v63 = v61;
            if (v61)
            {
              goto LABEL_99;
            }

            v64 = v43[1];
            v65 = v64 - *v43;
            if (__OFSUB__(v64, *v43))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v62, v65))
            {
              goto LABEL_104;
            }

            if (v62 + v65 >= v47)
            {
              if (v47 < v65)
              {
                v42 = v39 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          if (v39 < 2)
          {
            goto LABEL_98;
          }

          v67 = *v44;
          v66 = v44[1];
          v55 = __OFSUB__(v66, v67);
          v62 = v66 - v67;
          v63 = v55;
LABEL_71:
          if (v63)
          {
            goto LABEL_101;
          }

          v69 = *v43;
          v68 = v43[1];
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_103;
          }

          if (v70 < v62)
          {
            goto LABEL_85;
          }

LABEL_78:
          if (v42 - 1 >= v39)
          {
            __break(1u);
LABEL_91:
            __break(1u);
LABEL_92:
            __break(1u);
LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
LABEL_95:
            __break(1u);
LABEL_96:
            __break(1u);
LABEL_97:
            __break(1u);
LABEL_98:
            __break(1u);
LABEL_99:
            __break(1u);
LABEL_100:
            __break(1u);
LABEL_101:
            __break(1u);
LABEL_102:
            __break(1u);
LABEL_103:
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
            goto LABEL_110;
          }

          if (!*a3)
          {
            goto LABEL_112;
          }

          v74 = &v40[2 * v42 - 2];
          v75 = *v74;
          v76 = &v40[2 * v42];
          v77 = v76[1];
          sub_23156FB40((*a3 + 24 * *v74), (*a3 + 24 * *v76), *a3 + 24 * v77, v87);
          if (v5)
          {
            goto LABEL_89;
          }

          if (v77 < v75)
          {
            goto LABEL_91;
          }

          v78 = v8;
          v79 = v8[2];
          if (v42 > v79)
          {
            goto LABEL_92;
          }

          *v74 = v75;
          v74[1] = v77;
          if (v42 >= v79)
          {
            goto LABEL_93;
          }

          v39 = v79 - 1;
          memmove(&v40[2 * v42], v76 + 2, 16 * (v79 - 1 - v42));
          v78[2] = v79 - 1;
          v80 = v79 > 2;
          v8 = v78;
          v5 = 0;
          if (!v80)
          {
            goto LABEL_85;
          }
        }

        v49 = &v40[2 * v39];
        v50 = *(v49 - 8);
        v51 = *(v49 - 7);
        v55 = __OFSUB__(v51, v50);
        v52 = v51 - v50;
        if (v55)
        {
          goto LABEL_94;
        }

        v54 = *(v49 - 6);
        v53 = *(v49 - 5);
        v55 = __OFSUB__(v53, v54);
        v47 = v53 - v54;
        v48 = v55;
        if (v55)
        {
          goto LABEL_95;
        }

        v56 = v44[1];
        v57 = v56 - *v44;
        if (__OFSUB__(v56, *v44))
        {
          goto LABEL_97;
        }

        v55 = __OFADD__(v47, v57);
        v58 = v47 + v57;
        if (v55)
        {
          goto LABEL_100;
        }

        if (v58 >= v52)
        {
          v72 = *v43;
          v71 = v43[1];
          v55 = __OFSUB__(v71, v72);
          v73 = v71 - v72;
          if (v55)
          {
            goto LABEL_105;
          }

          if (v47 < v73)
          {
            v42 = v39 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_56;
      }

LABEL_85:
      v6 = a3[1];
      v7 = v86;
      a4 = v84;
      if (v86 >= v6)
      {
        v89 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_115;
  }

  sub_23156FA08(&v89, *a1, a3);
LABEL_89:
}

void sub_23156EE2C(unint64_t *a1, uint64_t a2, int64_t *a3, uint64_t a4)
{
  v5 = v4;
  v145 = a1;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B640, &unk_23158AE80);
  v153 = *(v163 - 8);
  v8 = *(v153 + 64);
  v9 = MEMORY[0x28223BE20](v163);
  v149 = &v140 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v159 = &v140 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v162 = &v140 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v161 = &v140 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v160 = &v140 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v167 = &v140 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v140 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = &v140 - v24;
  v154 = a3;
  v26 = a3[1];
  if (v26 < 1)
  {
    v28 = MEMORY[0x277D84F90];
LABEL_103:
    v167 = *v145;
    if (!v167)
    {
      goto LABEL_146;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_105;
    }

    goto LABEL_140;
  }

  v141 = a4;
  v27 = 0;
  v28 = MEMORY[0x277D84F90];
  v142 = v23;
  v144 = &v140 - v24;
  while (1)
  {
    v29 = v27++;
    if (v27 < v26)
    {
      v158 = v26;
      v146 = v29;
      v30 = *v154;
      v31 = v25;
      v32 = *(v153 + 72);
      v33 = *v154 + v32 * v27;
      sub_231570540(v33, v31, &qword_27DD5B640, &unk_23158AE80);
      v166 = v30;
      v34 = v146;
      sub_231570540(v30 + v32 * v146, v23, &qword_27DD5B640, &unk_23158AE80);
      v35 = v144;
      LODWORD(v157) = sub_23156DEF8(v144, v23);
      if (v5)
      {
        sub_2314A2910(v23, &qword_27DD5B640, &unk_23158AE80);
        sub_2314A2910(v35, &qword_27DD5B640, &unk_23158AE80);
LABEL_115:

        return;
      }

      v143 = 0;
      v155 = v28;
      v28 = &unk_23158AE80;
      sub_2314A2910(v23, &qword_27DD5B640, &unk_23158AE80);
      sub_2314A2910(v35, &qword_27DD5B640, &unk_23158AE80);
      v36 = v34 + 2;
      v152 = v32;
      v37 = v166 + v32 * (v34 + 2);
      v38 = v158;
      while (1)
      {
        v39 = v36;
        v40 = v27 + 1;
        if (v40 >= v38)
        {
          break;
        }

        v41 = v167;
        v166 = v36;
        sub_231570540(v37, v167, &qword_27DD5B640, &unk_23158AE80);
        v165 = v33;
        v42 = v160;
        sub_231570540(v33, v160, &qword_27DD5B640, &unk_23158AE80);
        v156 = v40;
        v43 = v161;
        sub_231570540(v41, v161, &qword_27DD5B640, &unk_23158AE80);
        v44 = *(v43 + 8);

        v45 = v163;
        v46 = *(v163 + 48);
        v164 = sub_231585B84();
        v47 = sub_231585BA4();
        v48 = *(v47 - 8);
        v5 = *(v48 + 8);
        v28 = (v48 + 8);
        (v5)(v43 + v46, v47);
        v49 = v162;
        sub_231570540(v42, v162, &qword_27DD5B640, &unk_23158AE80);
        v50 = *(v49 + 8);

        v51 = *(v45 + 48);
        v52 = sub_231585B84();
        v53 = v49 + v51;
        v27 = v156;
        (v5)(v53, v47);
        sub_2314A2910(v42, &qword_27DD5B640, &unk_23158AE80);
        sub_2314A2910(v167, &qword_27DD5B640, &unk_23158AE80);
        v38 = v158;
        v54 = v157 ^ (v52 >= v164);
        v37 += v152;
        v39 = v166;
        v33 = v165 + v152;
        v36 = v166 + 1;
        if ((v54 & 1) == 0)
        {
          goto LABEL_10;
        }
      }

      v27 = v38;
LABEL_10:
      if (v157)
      {
        v29 = v146;
        if (v27 < v146)
        {
          goto LABEL_139;
        }

        if (v146 >= v27)
        {
          v28 = v155;
          v5 = v143;
          goto LABEL_31;
        }

        if (v38 >= v39)
        {
          v55 = v39;
        }

        else
        {
          v55 = v38;
        }

        v56 = v152;
        v57 = v152 * (v55 - 1);
        v58 = v152 * v55;
        v59 = v146 * v152;
        v60 = v146;
        v61 = v27;
        do
        {
          if (v60 != --v61)
          {
            v62 = *v154;
            if (!*v154)
            {
              goto LABEL_144;
            }

            sub_2314A4B78(v62 + v59, v149, &qword_27DD5B640, &unk_23158AE80);
            v63 = v59 < v57 || v62 + v59 >= (v62 + v58);
            if (v63)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v59 != v57)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_2314A4B78(v149, v62 + v57, &qword_27DD5B640, &unk_23158AE80);
          }

          ++v60;
          v57 -= v56;
          v58 -= v56;
          v59 += v56;
        }

        while (v60 < v61);
      }

      v28 = v155;
      v5 = v143;
      v29 = v146;
    }

LABEL_31:
    v64 = v154[1];
    if (v27 < v64)
    {
      if (__OFSUB__(v27, v29))
      {
        goto LABEL_136;
      }

      if (v27 - v29 < v141)
      {
        break;
      }
    }

LABEL_49:
    if (v27 < v29)
    {
      goto LABEL_135;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v130 = *(v28 + 2);
      sub_2314F0BEC();
      v28 = v131;
    }

    v89 = *(v28 + 2);
    v90 = v89 + 1;
    if (v89 >= *(v28 + 3) >> 1)
    {
      sub_2314F0BEC();
      v28 = v132;
    }

    *(v28 + 2) = v90;
    v91 = v28 + 32;
    v92 = &v28[16 * v89 + 32];
    *v92 = v29;
    *(v92 + 1) = v27;
    v166 = *v145;
    if (!v166)
    {
      goto LABEL_145;
    }

    if (v89)
    {
      v155 = v28;
      while (1)
      {
        v93 = v90 - 1;
        v94 = &v91[16 * v90 - 16];
        v95 = &v28[16 * v90];
        if (v90 >= 4)
        {
          break;
        }

        if (v90 == 3)
        {
          v96 = *(v28 + 4);
          v97 = *(v28 + 5);
          v106 = __OFSUB__(v97, v96);
          v98 = v97 - v96;
          v99 = v106;
LABEL_70:
          if (v99)
          {
            goto LABEL_122;
          }

          v111 = *v95;
          v110 = *(v95 + 1);
          v112 = __OFSUB__(v110, v111);
          v113 = v110 - v111;
          v114 = v112;
          if (v112)
          {
            goto LABEL_125;
          }

          v115 = *(v94 + 1);
          v116 = v115 - *v94;
          if (__OFSUB__(v115, *v94))
          {
            goto LABEL_128;
          }

          if (__OFADD__(v113, v116))
          {
            goto LABEL_130;
          }

          if (v113 + v116 >= v98)
          {
            if (v98 < v116)
            {
              v93 = v90 - 2;
            }

            goto LABEL_92;
          }

          goto LABEL_85;
        }

        if (v90 < 2)
        {
          goto LABEL_124;
        }

        v118 = *v95;
        v117 = *(v95 + 1);
        v106 = __OFSUB__(v117, v118);
        v113 = v117 - v118;
        v114 = v106;
LABEL_85:
        if (v114)
        {
          goto LABEL_127;
        }

        v120 = *v94;
        v119 = *(v94 + 1);
        v106 = __OFSUB__(v119, v120);
        v121 = v119 - v120;
        if (v106)
        {
          goto LABEL_129;
        }

        if (v121 < v113)
        {
          goto LABEL_99;
        }

LABEL_92:
        if (v93 - 1 >= v90)
        {
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
          goto LABEL_138;
        }

        if (!*v154)
        {
          goto LABEL_142;
        }

        v125 = &v91[16 * v93 - 16];
        v28 = *v125;
        v126 = v93;
        v127 = &v91[16 * v93];
        v128 = *(v127 + 1);
        sub_23156FCE8(*v154 + *(v153 + 72) * *v125, *v154 + *(v153 + 72) * *v127, *v154 + *(v153 + 72) * v128, v166);
        if (v5)
        {
          goto LABEL_115;
        }

        if (v128 < v28)
        {
          goto LABEL_117;
        }

        v5 = *(v155 + 2);
        if (v126 > v5)
        {
          goto LABEL_118;
        }

        *v125 = v28;
        *(v125 + 1) = v128;
        if (v126 >= v5)
        {
          goto LABEL_119;
        }

        v90 = (v5 - 1);
        sub_231562470(v127 + 16, &v5[-v126 - 1], v127);
        v28 = v155;
        *(v155 + 2) = v5 - 1;
        v129 = v5 > 2;
        v5 = 0;
        if (!v129)
        {
          goto LABEL_99;
        }
      }

      v100 = &v91[16 * v90];
      v101 = *(v100 - 8);
      v102 = *(v100 - 7);
      v106 = __OFSUB__(v102, v101);
      v103 = v102 - v101;
      if (v106)
      {
        goto LABEL_120;
      }

      v105 = *(v100 - 6);
      v104 = *(v100 - 5);
      v106 = __OFSUB__(v104, v105);
      v98 = v104 - v105;
      v99 = v106;
      if (v106)
      {
        goto LABEL_121;
      }

      v107 = *(v95 + 1);
      v108 = v107 - *v95;
      if (__OFSUB__(v107, *v95))
      {
        goto LABEL_123;
      }

      v106 = __OFADD__(v98, v108);
      v109 = v98 + v108;
      if (v106)
      {
        goto LABEL_126;
      }

      if (v109 >= v103)
      {
        v123 = *v94;
        v122 = *(v94 + 1);
        v106 = __OFSUB__(v122, v123);
        v124 = v122 - v123;
        if (v106)
        {
          goto LABEL_134;
        }

        if (v98 < v124)
        {
          v93 = v90 - 2;
        }

        goto LABEL_92;
      }

      goto LABEL_70;
    }

LABEL_99:
    v26 = v154[1];
    v23 = v142;
    v25 = v144;
    if (v27 >= v26)
    {
      goto LABEL_103;
    }
  }

  v65 = v29 + v141;
  if (__OFADD__(v29, v141))
  {
    goto LABEL_137;
  }

  if (v65 >= v64)
  {
    v65 = v154[1];
  }

  if (v65 < v29)
  {
LABEL_138:
    __break(1u);
LABEL_139:
    __break(1u);
LABEL_140:
    v28 = sub_231562458(v28);
LABEL_105:
    v133 = v28 + 16;
    v134 = *(v28 + 2);
    while (v134 >= 2)
    {
      if (!*v154)
      {
        goto LABEL_143;
      }

      v135 = v28;
      v28 += 16 * v134;
      v136 = *v28;
      v137 = &v133[2 * v134];
      v138 = *(v137 + 1);
      sub_23156FCE8(*v154 + *(v153 + 72) * *v28, *v154 + *(v153 + 72) * *v137, *v154 + *(v153 + 72) * v138, v167);
      if (v5)
      {
        break;
      }

      if (v138 < v136)
      {
        goto LABEL_131;
      }

      if (v134 - 2 >= *v133)
      {
        goto LABEL_132;
      }

      *v28 = v136;
      *(v28 + 1) = v138;
      v139 = *v133 - v134;
      if (*v133 < v134)
      {
        goto LABEL_133;
      }

      v134 = *v133 - 1;
      sub_231562470(v137 + 16, v139, v137);
      *v133 = v134;
      v28 = v135;
    }

    goto LABEL_115;
  }

  if (v27 == v65)
  {
    goto LABEL_49;
  }

  v155 = v28;
  v143 = v5;
  v66 = *v154;
  v67 = *(v153 + 72);
  v68 = *v154 + v67 * (v27 - 1);
  v157 = -v67;
  v158 = v66;
  v146 = v29;
  v147 = v67;
  v69 = v29 - v27;
  v70 = v66 + v27 * v67;
  v71 = v163;
  v148 = v65;
LABEL_40:
  v156 = v27;
  v150 = v70;
  v151 = v69;
  v72 = v69;
  v152 = v68;
  v73 = v68;
  while (1)
  {
    v164 = v70;
    v165 = v72;
    v74 = v167;
    sub_231570540(v70, v167, &qword_27DD5B640, &unk_23158AE80);
    v75 = v160;
    sub_231570540(v73, v160, &qword_27DD5B640, &unk_23158AE80);
    v76 = v161;
    sub_231570540(v74, v161, &qword_27DD5B640, &unk_23158AE80);
    v77 = *(v76 + 8);

    v78 = v71;
    v79 = *(v71 + 48);
    v166 = sub_231585B84();
    v80 = sub_231585BA4();
    v81 = *(*(v80 - 8) + 8);
    v81(v76 + v79, v80);
    v82 = v162;
    sub_231570540(v75, v162, &qword_27DD5B640, &unk_23158AE80);
    v83 = *(v82 + 8);

    v84 = *(v78 + 48);
    v85 = sub_231585B84();
    v81(v82 + v84, v80);
    sub_2314A2910(v75, &qword_27DD5B640, &unk_23158AE80);
    sub_2314A2910(v167, &qword_27DD5B640, &unk_23158AE80);
    if (v85 >= v166)
    {
      v71 = v163;
LABEL_47:
      v27 = v156 + 1;
      v68 = v152 + v147;
      v69 = v151 - 1;
      v70 = v150 + v147;
      if (v156 + 1 == v148)
      {
        v27 = v148;
        v5 = v143;
        v28 = v155;
        v29 = v146;
        goto LABEL_49;
      }

      goto LABEL_40;
    }

    v86 = v165;
    if (!v158)
    {
      break;
    }

    v87 = v164;
    v88 = v159;
    sub_2314A4B78(v164, v159, &qword_27DD5B640, &unk_23158AE80);
    v71 = v163;
    swift_arrayInitWithTakeFrontToBack();
    sub_2314A4B78(v88, v73, &qword_27DD5B640, &unk_23158AE80);
    v73 += v157;
    v70 = v87 + v157;
    v63 = __CFADD__(v86, 1);
    v72 = v86 + 1;
    if (v63)
    {
      goto LABEL_47;
    }
  }

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
}

uint64_t sub_23156FA08(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v15 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_231562458(v15);
    v15 = result;
  }

  v12 = v4;
  *v4 = v15;
  v6 = (v15 + 16);
  for (i = *(v15 + 16); ; *v6 = i)
  {
    if (i < 2)
    {
LABEL_10:
      *v12 = v15;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v4 = (v15 + 16 * i);
    v8 = *v4;
    v9 = &v6[2 * i];
    v10 = v9[1];
    sub_23156FB40((*a3 + 24 * *v4), (*a3 + 24 * *v9), *a3 + 24 * v10, a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v10 < v8)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (i - 2 >= *v6)
    {
      goto LABEL_12;
    }

    *v4 = v8;
    v4[1] = v10;
    v11 = *v6 - i;
    if (*v6 < i)
    {
      goto LABEL_13;
    }

    i = *v6 - 1;
    result = memmove(v9, v9 + 2, 16 * v11);
  }

  *v12 = v15;
  __break(1u);
  return result;
}

uint64_t sub_23156FB40(char *a1, char *a2, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 24;
  v9 = (a3 - a2) / 24;
  if (v8 < v9)
  {
    sub_2314F2764(a1, (a2 - a1) / 24, a4);
    v10 = &v4[24 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      if (*(v4 + 2) >= *(v6 + 2))
      {
        break;
      }

      v12 = v6;
      v13 = v7 == v6;
      v6 += 24;
      if (!v13)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 24;
    }

    v12 = v4;
    v13 = v7 == v4;
    v4 += 24;
    if (v13)
    {
      goto LABEL_13;
    }

LABEL_12:
    v14 = *v12;
    *(v7 + 2) = *(v12 + 2);
    *v7 = v14;
    goto LABEL_13;
  }

  sub_2314F2764(a2, (a3 - a2) / 24, a4);
  v10 = &v4[24 * v9];
LABEL_15:
  for (v5 -= 24; v10 > v4 && v6 > v7; v5 -= 24)
  {
    if (*(v6 - 1) < *(v10 - 1))
    {
      v17 = v6 - 24;
      v13 = v5 + 24 == v6;
      v6 -= 24;
      if (!v13)
      {
        v18 = *v17;
        *(v5 + 16) = *(v17 + 2);
        *v5 = v18;
        v6 = v17;
      }

      goto LABEL_15;
    }

    if (v10 != (v5 + 24))
    {
      v16 = *(v10 - 24);
      *(v5 + 16) = *(v10 - 1);
      *v5 = v16;
    }

    v10 -= 24;
  }

LABEL_28:
  v19 = (v10 - v4) / 24;
  if (v6 != v4 || v6 >= &v4[24 * v19])
  {
    memmove(v6, v4, 24 * v19);
  }

  return 1;
}

uint64_t sub_23156FCE8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B640, &unk_23158AE80);
  v8 = *(*(v83 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v83);
  v76 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v75 = &v67 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v74 = &v67 - v14;
  result = MEMORY[0x28223BE20](v13);
  v79 = &v67 - v16;
  v18 = *(v17 + 72);
  if (!v18)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return result;
  }

  v19 = a2 - a1;
  v20 = a2 - a1 == 0x8000000000000000 && v18 == -1;
  if (v20)
  {
    goto LABEL_60;
  }

  v21 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_61;
  }

  v23 = v19 / v18;
  v86 = a1;
  v85 = a4;
  v24 = v21 / v18;
  if (v19 / v18 >= v21 / v18)
  {
    sub_2314F1918();
    v43 = a4 + v24 * v18;
    v44 = -v18;
    v45 = v43;
    v80 = a1;
    v81 = a4;
    v70 = v44;
LABEL_36:
    v46 = a2 + v44;
    v68 = v45;
    v82 = a2;
    v71 = a2 + v44;
    while (1)
    {
      if (v43 <= a4)
      {
        v86 = a2;
        v84 = v45;
        goto LABEL_58;
      }

      if (a2 <= a1)
      {
        break;
      }

      v69 = v45;
      v77 = a3;
      v78 = a3 + v44;
      v47 = v43 + v44;
      v72 = v43 + v44;
      v48 = v79;
      sub_231570540(v47, v79, &qword_27DD5B640, &unk_23158AE80);
      v49 = v74;
      sub_231570540(v46, v74, &qword_27DD5B640, &unk_23158AE80);
      v50 = v75;
      sub_231570540(v48, v75, &qword_27DD5B640, &unk_23158AE80);
      v51 = *(v50 + 8);

      v52 = v83;
      v53 = *(v83 + 48);
      v73 = sub_231585B84();
      v54 = sub_231585BA4();
      v55 = *(*(v54 - 8) + 8);
      v55(v50 + v53, v54);
      v56 = v76;
      sub_231570540(v49, v76, &qword_27DD5B640, &unk_23158AE80);
      v57 = *(v56 + 8);

      v58 = *(v52 + 48);
      v59 = sub_231585B84();
      v55(v56 + v58, v54);
      sub_2314A2910(v49, &qword_27DD5B640, &unk_23158AE80);
      sub_2314A2910(v79, &qword_27DD5B640, &unk_23158AE80);
      if (v59 < v73)
      {
        a4 = v81;
        a3 = v78;
        if (v77 < v82 || v78 >= v82)
        {
          a2 = v71;
          swift_arrayInitWithTakeFrontToBack();
          v45 = v69;
          v44 = v70;
          a1 = v80;
        }

        else
        {
          v44 = v70;
          v45 = v69;
          v65 = v71;
          a2 = v71;
          a1 = v80;
          if (v77 != v82)
          {
            v66 = v69;
            swift_arrayInitWithTakeBackToFront();
            a2 = v65;
            v45 = v66;
          }
        }

        goto LABEL_36;
      }

      v60 = v78;
      v61 = v77 < v43 || v78 >= v43;
      a4 = v81;
      a2 = v82;
      if (v61)
      {
        v62 = v72;
        swift_arrayInitWithTakeFrontToBack();
        a3 = v60;
        v43 = v62;
        v45 = v62;
        a1 = v80;
        v44 = v70;
        v46 = v71;
      }

      else
      {
        v46 = v71;
        v63 = v72;
        v45 = v72;
        v20 = v43 == v77;
        a3 = v78;
        v43 = v72;
        a1 = v80;
        v44 = v70;
        if (!v20)
        {
          swift_arrayInitWithTakeBackToFront();
          a3 = v60;
          v43 = v63;
          v45 = v63;
        }
      }
    }

    v86 = a2;
    v84 = v68;
  }

  else
  {
    sub_2314F1918();
    v72 = v18;
    v73 = a4 + v23 * v18;
    v84 = v73;
    v78 = a3;
    while (a4 < v73 && a2 < a3)
    {
      v80 = a1;
      v26 = v79;
      sub_231570540(a2, v79, &qword_27DD5B640, &unk_23158AE80);
      v27 = v74;
      sub_231570540(a4, v74, &qword_27DD5B640, &unk_23158AE80);
      v82 = a2;
      v28 = v75;
      sub_231570540(v26, v75, &qword_27DD5B640, &unk_23158AE80);
      v29 = *(v28 + 8);

      v30 = v83;
      v31 = *(v83 + 48);
      v32 = sub_231585B84();
      v81 = a4;
      v77 = v32;
      v33 = sub_231585BA4();
      v34 = *(*(v33 - 8) + 8);
      v34(v28 + v31, v33);
      v35 = v76;
      sub_231570540(v27, v76, &qword_27DD5B640, &unk_23158AE80);
      v36 = *(v35 + 8);

      v37 = *(v30 + 48);
      v38 = sub_231585B84();
      v34(v35 + v37, v33);
      sub_2314A2910(v27, &qword_27DD5B640, &unk_23158AE80);
      sub_2314A2910(v26, &qword_27DD5B640, &unk_23158AE80);
      if (v38 >= v77)
      {
        a2 = v82;
        v39 = v72;
        a4 = v81 + v72;
        v40 = v80;
        if (v80 < v81 || v80 >= a4)
        {
          swift_arrayInitWithTakeFrontToBack();
          a3 = v78;
        }

        else
        {
          a3 = v78;
          if (v80 != v81)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v85 = a4;
      }

      else
      {
        v39 = v72;
        a4 = v81;
        a2 = v82 + v72;
        v40 = v80;
        if (v80 < v82 || v80 >= a2)
        {
          swift_arrayInitWithTakeFrontToBack();
          a3 = v78;
        }

        else
        {
          a3 = v78;
          if (v80 != v82)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      a1 = v40 + v39;
      v86 = a1;
    }
  }

LABEL_58:
  sub_231570354(&v86, &v85, &v84);
  return 1;
}

uint64_t sub_231570354(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B640, &unk_23158AE80);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_20;
  }

  v9 = v4 + (v5 - v4) / v7 * v7;
  if (v3 < v4 || v3 >= v9)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

unint64_t sub_231570440(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a3 + 16);
  if (v3 < result || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B640, &unk_23158AE80) - 8);
    v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_2315704F4(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3 - result;
  if (__OFSUB__(a3, result))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if (a2 < 1)
  {
    if (v3 <= 0 && v3 > a2)
    {
      return 0;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && v3 < a2)
  {
    return 0;
  }

  v5 = __OFADD__(result, a2);
  result += a2;
  if (v5)
  {
    goto LABEL_14;
  }

  return result;
}

uint64_t sub_231570540(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = OUTLINED_FUNCTION_17_14(a1, a2, a3, a4);
  OUTLINED_FUNCTION_8(v6);
  (*(v7 + 16))(v4, v5);
  return v4;
}

uint64_t sub_231570590()
{
  v0 = sub_231585884();
  v1 = OUTLINED_FUNCTION_4_1(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_231585F64();
  v9 = OUTLINED_FUNCTION_4_1(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = objc_allocWithZone(type metadata accessor for SignalStore(0));
  v17 = sub_231563FA4(0xD000000000000024, 0x8000000231590600);
  v18 = sub_2315860C4();
  (*(v11 + 104))(v15, *MEMORY[0x277D5B330], v8);
  sub_231585874();
  sub_23156420C();

  (*(v3 + 8))(v7, v0);
  return (*(v11 + 8))(v15, v8);
}

id SiriSignalsService.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SiriSignalsService.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SiriSignalsService();
  return objc_msgSendSuper2(&v2, sel_init);
}

id SiriSignalsService.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SiriSignalsService();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for SiriSignalsSignpost()
{
  result = qword_280D6FBC0;
  if (!qword_280D6FBC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_231570B30()
{
  result = sub_231585FD4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_231570BA4(char a1, void (*a2)(), uint64_t a3)
{
  sub_23157134C();
  v6 = sub_231570E7C(0xD000000000000020, 0x8000000231593630, 4096);
  v7 = [objc_opt_self() interfaceWithProtocol_];
  v8 = OUTLINED_FUNCTION_2_37();
  [v8 v9];

  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  v31 = sub_231571390;
  v32 = v10;
  OUTLINED_FUNCTION_0_82();
  *(&aBlock + 1) = 1107296256;
  v29 = sub_23149B484;
  v30 = &block_descriptor_19;
  v11 = _Block_copy(&aBlock);

  v12 = OUTLINED_FUNCTION_2_37();
  [v12 v13];
  _Block_release(v11);
  v31 = sub_231570F64;
  v32 = 0;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  v29 = sub_23149B484;
  v30 = &block_descriptor_7;
  v14 = _Block_copy(&aBlock);
  v15 = OUTLINED_FUNCTION_2_37();
  [v15 v16];
  _Block_release(v14);
  [v6 resume];
  if (a1)
  {
    v31 = a2;
    v32 = a3;
    OUTLINED_FUNCTION_0_82();
    OUTLINED_FUNCTION_1_41();
    v29 = v17;
    v30 = &block_descriptor_13_1;
    v18 = _Block_copy(&aBlock);

    v19 = &selRef_remoteObjectProxyWithErrorHandler_;
  }

  else
  {
    v31 = a2;
    v32 = a3;
    OUTLINED_FUNCTION_0_82();
    OUTLINED_FUNCTION_1_41();
    v29 = v20;
    v30 = &block_descriptor_10_1;
    v18 = _Block_copy(&aBlock);

    v19 = &selRef_synchronousRemoteObjectProxyWithErrorHandler_;
  }

  v21 = *v19;
  v22 = OUTLINED_FUNCTION_2_37();
  v24 = [v22 v23];
  _Block_release(v18);
  sub_2315867A4();

  swift_unknownObjectRelease();
  sub_2314D6070(&aBlock, &v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5C0C0, &qword_23158EEF8);
  swift_dynamicCast();
  return v26;
}

id sub_231570E7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = sub_231586174();

  v6 = [v4 initWithMachServiceName:v5 options:a3];

  return v6;
}

void sub_231570EF8(void (*a1)(void))
{
  sub_231571398();
  v2 = swift_allocError();
  *v3 = 0;
  a1();
}

void sub_231570F64()
{
  if (qword_280D70420 != -1)
  {
    swift_once();
  }

  v0 = sub_231585FF4();
  __swift_project_value_buffer(v0, qword_280D72248);
  oslog = sub_231585FE4();
  v1 = sub_2315865E4();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_231496000, oslog, v1, "XPC connection invalidated", v2, 2u);
    MEMORY[0x231931280](v2, -1, -1);
  }
}

void sub_23157104C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

SiriSignals::SiriSignalsXPCError_optional __swiftcall SiriSignalsXPCError.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_2315710DC()
{
  result = qword_27DD5C0A0;
  if (!qword_27DD5C0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD5C0A0);
  }

  return result;
}

uint64_t sub_231571148@<X0>(uint64_t *a1@<X8>)
{
  result = SiriSignalsXPCError.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_231571170(uint64_t a1, uint64_t a2)
{
  v4 = sub_2315712A4();
  v5 = sub_2315712F8();

  return MEMORY[0x2821FE2D0](a1, a2, v4, v5);
}

_BYTE *storeEnumTagSinglePayload for SiriSignalsXPCError(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2315712A4()
{
  result = qword_27DD5C0A8;
  if (!qword_27DD5C0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD5C0A8);
  }

  return result;
}

unint64_t sub_2315712F8()
{
  result = qword_27DD5C0B0;
  if (!qword_27DD5C0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD5C0B0);
  }

  return result;
}

unint64_t sub_23157134C()
{
  result = qword_27DD5C0B8;
  if (!qword_27DD5C0B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DD5C0B8);
  }

  return result;
}

unint64_t sub_231571398()
{
  result = qword_27DD5C0C8;
  if (!qword_27DD5C0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD5C0C8);
  }

  return result;
}

uint64_t sub_231571430(uint64_t a1, void (*a2)(void, void), void (*a3)(void))
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_4;
  }

  a2(*(a1 + 16), 0);
  OUTLINED_FUNCTION_7_28();
  a3();
  OUTLINED_FUNCTION_6_26();
  if (a3 != v4)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v3;
}

uint64_t sub_2315714B4(uint64_t a1)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    goto LABEL_4;
  }

  sub_231571BB0(*(a1 + 16), 0);
  OUTLINED_FUNCTION_7_28();
  sub_2315726D0();
  OUTLINED_FUNCTION_6_26();
  if (a1 != v3)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v1;
}

size_t sub_231571528(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  OUTLINED_FUNCTION_9_22();
  v6 = sub_231571EB0(v2, 0, v3, v4, v5);
  v7 = *(sub_231585BA4() - 8);
  sub_2315727A0(v9, (v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80))), v2, a1);
  OUTLINED_FUNCTION_6_26();
  if (a1 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v6;
}

uint64_t sub_2315715F4(uint64_t a1)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    goto LABEL_4;
  }

  sub_231571BB0(*(a1 + 16), 0);
  OUTLINED_FUNCTION_7_28();
  sub_231572A38();
  OUTLINED_FUNCTION_6_26();
  if (a1 != v3)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v1;
}

uint64_t sub_231571694@<X0>(uint64_t a1@<X8>)
{
  v14 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BD80, &unk_23158EF40);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v13 - v7;
  v9 = _s6RecordVMa();
  OUTLINED_FUNCTION_1_42(&qword_280D703D0);
  OUTLINED_FUNCTION_0_83(&qword_280D703D8);
  result = sub_231585BB4();
  if (!v1)
  {
    v11 = v14;
    sub_231572B08(v8, v6);
    if (__swift_getEnumTagSinglePayload(v6, 1, v9) == 1)
    {
      sub_231572B78(v6);
      sub_231572BE0();
      swift_allocError();
      *v12 = 3;
      swift_willThrow();
      return sub_231572B78(v8);
    }

    else
    {
      sub_231572B78(v8);
      return sub_23153713C(v6, v11);
    }
  }

  return result;
}

uint64_t sub_231571834(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && (sub_231571BB0(*(a1 + 16), 0), sub_231572A38(), v3 = v2, , result = sub_2314A4B70(), v3 != v1))
  {
    __break(1u);
  }

  else
  {
    _s6RecordVMa();
    OUTLINED_FUNCTION_1_42(&qword_280D703D0);
    OUTLINED_FUNCTION_0_83(&qword_280D703D8);
    v5 = sub_231585BE4();

    return v5;
  }

  return result;
}

uint64_t sub_231571968()
{
  _s6RecordVMa();
  OUTLINED_FUNCTION_1_42(&qword_280D703D0);
  OUTLINED_FUNCTION_0_83(&qword_280D703D8);
  return sub_231585BC4();
}

uint64_t sub_231571A00()
{
  _s6RecordVMa();
  OUTLINED_FUNCTION_1_42(&qword_280D703D0);
  OUTLINED_FUNCTION_0_83(&qword_280D703D8);
  return sub_231585BF4();
}

uint64_t sub_231571A80()
{
  v1 = OBJC_IVAR____TtC11SiriSignals22SQLBackedCacheProvider_store;
  v2 = sub_231585C04();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t sub_231571B6C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    _s6RecordVMa();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

const void *sub_231571BB0(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B230, &unk_231589380);
  v3 = swift_allocObject();
  v4 = _swift_stdlib_malloc_size(v3);
  OUTLINED_FUNCTION_11_19((v4 - 32) / 16);
  return v3;
}

const void *sub_231571C64(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v5 = swift_allocObject();
  v6 = _swift_stdlib_malloc_size(v5);
  OUTLINED_FUNCTION_11_19((v6 - 32) / 24);
  return v5;
}

void *sub_231571CDC(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B830, &qword_23158B470);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = (2 * ((v5 - 32) / 8)) | 1;
  return v4;
}

size_t sub_231571D5C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BF30, &qword_23158EF50);
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B640, &unk_23158AE80) - 8);
  v4 = *(v3 + 72);
  v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v6 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v6);
  if (v4)
  {
    if (result - v5 != 0x8000000000000000 || v4 != -1)
    {
      OUTLINED_FUNCTION_11_19((result - v5) / v4);
      return v6;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

size_t sub_231571EB0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
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
  v7 = *(a5(0) - 8);
  v8 = *(v7 + 72);
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v10 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v10);
  if (v8)
  {
    if (result - v9 != 0x8000000000000000 || v8 != -1)
    {
      OUTLINED_FUNCTION_11_19((result - v9) / v8);
      return v10;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

const void *sub_231571FA8(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B668, &unk_23158E1A0);
  v3 = swift_allocObject();
  v4 = _swift_stdlib_malloc_size(v3);
  OUTLINED_FUNCTION_11_19((v4 - 32) / 56);
  return v3;
}

void sub_23157202C()
{
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_8_25();
  v4 = *(v1 + 64);
  v5 = *(v1 + 32);
  OUTLINED_FUNCTION_2_38();
  if (!v7)
  {
    OUTLINED_FUNCTION_14_11();
LABEL_17:
    OUTLINED_FUNCTION_4_31(v18);
    OUTLINED_FUNCTION_3_6();
    return;
  }

  v8 = v6;
  if (!v6)
  {
    v18 = 0;
    goto LABEL_17;
  }

  if ((v6 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_3_36();
    while (v10 < v8)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_21;
      }

      if (!v2)
      {
        while (!__OFADD__(v9, 1))
        {
          if (v9 + 1 >= v3)
          {
            OUTLINED_FUNCTION_15_14();
            goto LABEL_17;
          }

          OUTLINED_FUNCTION_17_15();
        }

        __break(1u);
        break;
      }

      v12 = v9;
      v13 = OUTLINED_FUNCTION_10_20();
      v16 = *(v15 + 8 * v14);
      v2 &= v2 - 1;
      *v0 = v17;
      v0[1] = v13;
      v0[2] = v16;
      if (v11 == v8)
      {

        v18 = v12;
        goto LABEL_17;
      }

      v0 += 3;

      OUTLINED_FUNCTION_16_15();
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

void sub_231572114()
{
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_8_25();
  v4 = *(v1 + 64);
  v5 = *(v1 + 32);
  OUTLINED_FUNCTION_2_38();
  if (!v7)
  {
    OUTLINED_FUNCTION_14_11();
LABEL_17:
    OUTLINED_FUNCTION_4_31(v18);
    OUTLINED_FUNCTION_3_6();
    return;
  }

  v8 = v6;
  if (!v6)
  {
    v18 = 0;
    goto LABEL_17;
  }

  if ((v6 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_3_36();
    while (v10 < v8)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_21;
      }

      if (!v2)
      {
        while (!__OFADD__(v9, 1))
        {
          if (v9 + 1 >= v3)
          {
            OUTLINED_FUNCTION_15_14();
            goto LABEL_17;
          }

          OUTLINED_FUNCTION_17_15();
        }

        __break(1u);
        break;
      }

      v12 = v9;
      v13 = OUTLINED_FUNCTION_10_20();
      v16 = *(v15 + 8 * v14);
      v2 &= v2 - 1;
      *v0 = v17;
      v0[1] = v13;
      v0[2] = v16;
      if (v11 == v8)
      {

        v18 = v12;
        goto LABEL_17;
      }

      v0 += 3;

      OUTLINED_FUNCTION_16_15();
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_2315721FC(uint64_t result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = *(a4 + 16);
  if (!a2)
  {
    v12 = *(a4 + 16);
    v6 = 0;
LABEL_13:
    *v5 = a4;
    v5[1] = v12;
    return v6;
  }

  if (!a3)
  {
    v12 = *(a4 + 16);
LABEL_12:
    v6 = a3;
    goto LABEL_13;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = a2;
    v9 = 0;
    v10 = a3 - 1;
    for (i = (a4 + 24 * v6 + 24); ; i -= 3)
    {
      v12 = v6 + v9;
      if (!(v6 + v9))
      {
        break;
      }

      if (v12 > *(a4 + 16))
      {
        __break(1u);
        goto LABEL_15;
      }

      v14 = *(i - 1);
      v13 = *i;
      *v8 = *(i - 2);
      v8[1] = v14;
      v8[2] = v13;
      if (!(v10 + v9))
      {

        v12 = v6 + v9 - 1;
        goto LABEL_12;
      }

      v8 += 3;

      --v9;
    }

    goto LABEL_13;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_2315722D8(uint64_t result, void *a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
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
      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      *v11 = *(*(a4 + 56) + ((v15 << 9) | (8 * v16)));
      if (v14 == v10)
      {

        v13 = v15;
        goto LABEL_20;
      }

      ++v11;

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

void sub_231572430()
{
  OUTLINED_FUNCTION_93();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B640, &unk_23158AE80);
  v39 = *(v42 - 8);
  v8 = *(v39 + 64);
  v9 = MEMORY[0x28223BE20](v42);
  v41 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v40 = &v36 - v11;
  v12 = v1 + 64;
  v13 = -1 << *(v1 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(v1 + 64);
  if (!v5)
  {
    v17 = 0;
LABEL_22:
    *v7 = v1;
    v7[1] = v12;
    v7[2] = ~v13;
    v7[3] = v17;
    v7[4] = v15;
    OUTLINED_FUNCTION_3_6();
    return;
  }

  if (!v3)
  {
    v17 = 0;
    goto LABEL_22;
  }

  if ((v3 & 0x8000000000000000) == 0)
  {
    v36 = -1 << *(v1 + 32);
    v37 = v7;
    v16 = 0;
    v17 = 0;
    v18 = (63 - v13) >> 6;
    v38 = v3;
    while (1)
    {
      if (v16 >= v3)
      {
        goto LABEL_25;
      }

      v19 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_26;
      }

      if (!v15)
      {
        while (1)
        {
          v20 = v17 + 1;
          if (__OFADD__(v17, 1))
          {
            break;
          }

          if (v20 >= v18)
          {
            v15 = 0;
            v7 = v37;
            goto LABEL_20;
          }

          v15 = *(v12 + 8 * v20);
          ++v17;
          if (v15)
          {
            v43 = v5;
            goto LABEL_16;
          }
        }

        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      v43 = v5;
      v20 = v17;
LABEL_16:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v22 = v21 | (v20 << 6);
      v23 = v1;
      v24 = *(v1 + 48);
      v25 = *(v1 + 56);
      v26 = (v24 + 16 * v22);
      v27 = *v26;
      v28 = v26[1];
      v29 = sub_231585BA4();
      v30 = *(v29 - 8);
      v31 = v25 + *(v30 + 72) * v22;
      v32 = v41;
      (*(v30 + 16))(&v41[*(v42 + 48)], v31, v29);
      *v32 = v27;
      v32[1] = v28;
      v33 = v32;
      v34 = v40;
      sub_231572C34(v33, v40);
      v35 = v43;
      sub_231572C34(v34, v43);
      v3 = v38;
      if (v19 == v38)
      {
        break;
      }

      v5 = v35 + *(v39 + 72);

      v16 = v19;
      v17 = v20;
      v1 = v23;
    }

    v17 = v20;
    v7 = v37;
    v1 = v23;
LABEL_20:
    v13 = v36;
    goto LABEL_22;
  }

LABEL_27:
  __break(1u);
}

void sub_2315726D0()
{
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_8_25();
  v4 = *(v1 + 64);
  v5 = *(v1 + 32);
  OUTLINED_FUNCTION_2_38();
  if (!v7)
  {
    OUTLINED_FUNCTION_14_11();
LABEL_17:
    OUTLINED_FUNCTION_4_31(v13);
    OUTLINED_FUNCTION_3_6();
    return;
  }

  v8 = v6;
  if (!v6)
  {
    v13 = 0;
    goto LABEL_17;
  }

  if ((v6 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_3_36();
    while (v10 < v8)
    {
      if (__OFADD__(v10, 1))
      {
        goto LABEL_21;
      }

      if (!v2)
      {
        while (!__OFADD__(v9, 1))
        {
          if (v9 + 1 >= v3)
          {
            OUTLINED_FUNCTION_15_14();
            goto LABEL_17;
          }

          OUTLINED_FUNCTION_17_15();
        }

        __break(1u);
        break;
      }

      v11 = v9;
      OUTLINED_FUNCTION_5_29();
      if (v12)
      {

        v13 = v11;
        goto LABEL_17;
      }

      v0 += 16;

      OUTLINED_FUNCTION_16_15();
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

unint64_t sub_2315727A0(void *a1, char *a2, unint64_t a3, uint64_t a4)
{
  v8 = sub_231585BA4();
  v9 = *(v8 - 8);
  v42 = v8;
  v43 = v9;
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v41 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v40 = &v33 - v13;
  v15 = a4 + 64;
  v14 = *(a4 + 64);
  v39 = -1 << *(a4 + 32);
  if (-v39 < 64)
  {
    v16 = ~(-1 << -v39);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & v14;
  if (!a2)
  {
    v20 = 0;
    result = 0;
LABEL_22:
    v32 = ~v39;
    *a1 = a4;
    a1[1] = v15;
    a1[2] = v32;
    a1[3] = v20;
    a1[4] = v17;
    return result;
  }

  result = a3;
  if (!a3)
  {
    v20 = 0;
    goto LABEL_22;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v34 = a1;
    v35 = a4 + 64;
    v19 = 0;
    v20 = 0;
    v21 = (63 - v39) >> 6;
    v36 = v43 + 32;
    v37 = v43 + 16;
    v38 = result;
    while (v19 < result)
    {
      if (__OFADD__(v19, 1))
      {
        goto LABEL_26;
      }

      if (!v17)
      {
        v15 = v35;
        while (1)
        {
          v22 = v20 + 1;
          if (__OFADD__(v20, 1))
          {
            break;
          }

          if (v22 >= v21)
          {
            v17 = 0;
            result = v19;
            a1 = v34;
            goto LABEL_22;
          }

          v17 = *(v35 + 8 * v22);
          ++v20;
          if (v17)
          {
            v44 = v19 + 1;
            goto LABEL_17;
          }
        }

        __break(1u);
        break;
      }

      v44 = v19 + 1;
      v22 = v20;
LABEL_17:
      v23 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      v24 = a4;
      v25 = *(a4 + 56);
      v27 = v42;
      v26 = v43;
      v28 = *(v43 + 72);
      v29 = v41;
      (*(v43 + 16))(v41, v25 + v28 * (v23 | (v22 << 6)), v42);
      v30 = *(v26 + 32);
      v31 = v40;
      v30(v40, v29, v27);
      v30(a2, v31, v27);
      result = v38;
      v19 = v44;
      if (v44 == v38)
      {
        v20 = v22;
        a1 = v34;
        v15 = v35;
        a4 = v24;
        goto LABEL_22;
      }

      a2 += v28;
      v20 = v22;
      a4 = v24;
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_231572A38()
{
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_8_25();
  v4 = *(v1 + 56);
  v5 = *(v1 + 32);
  OUTLINED_FUNCTION_2_38();
  if (!v7)
  {
    OUTLINED_FUNCTION_14_11();
LABEL_17:
    OUTLINED_FUNCTION_4_31(v13);
    OUTLINED_FUNCTION_3_6();
    return;
  }

  v8 = v6;
  if (!v6)
  {
    v13 = 0;
    goto LABEL_17;
  }

  if ((v6 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_3_36();
    while (v10 < v8)
    {
      if (__OFADD__(v10, 1))
      {
        goto LABEL_21;
      }

      if (!v2)
      {
        while (!__OFADD__(v9, 1))
        {
          if (v9 + 1 >= v3)
          {
            OUTLINED_FUNCTION_15_14();
            goto LABEL_17;
          }

          OUTLINED_FUNCTION_17_15();
        }

        __break(1u);
        break;
      }

      v11 = v9;
      OUTLINED_FUNCTION_5_29();
      if (v12)
      {

        v13 = v11;
        goto LABEL_17;
      }

      v0 += 16;

      OUTLINED_FUNCTION_16_15();
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_231572B08(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BD80, &unk_23158EF40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_231572B78(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BD80, &unk_23158EF40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_231572BE0()
{
  result = qword_280D6E048;
  if (!qword_280D6E048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D6E048);
  }

  return result;
}

uint64_t sub_231572C34(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B640, &unk_23158AE80);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_231572CA4(void *result, void *a2, unint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1 << *(a4 + 32);
  if (-v5 < 64)
  {
    v6 = ~(-1 << -v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a4 + 64);
  if (!a2)
  {
    v10 = 0;
    a3 = 0;
LABEL_21:
    *result = a4;
    result[1] = v4;
    result[2] = ~v5;
    result[3] = v10;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v10 = 0;
    goto LABEL_21;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = a2;
    v21 = -1 << *(a4 + 32);
    v22 = result;
    v9 = 0;
    v10 = 0;
    v11 = (63 - v5) >> 6;
    v23 = a4;
    while (1)
    {
      if (v9 >= a3)
      {
        goto LABEL_24;
      }

      if (__OFADD__(v9, 1))
      {
        goto LABEL_25;
      }

      if (!v7)
      {
        while (1)
        {
          v12 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
            break;
          }

          if (v12 >= v11)
          {
            v7 = 0;
            a3 = v9;
            result = v22;
            goto LABEL_19;
          }

          v7 = *(v4 + 8 * v12);
          ++v10;
          if (v7)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v12 = v10;
LABEL_15:
      v13 = (*(a4 + 56) + 56 * (__clz(__rbit64(v7)) | (v12 << 6)));
      v14 = v13[1];
      v7 &= v7 - 1;
      v16 = v13[2];
      v15 = v13[3];
      v18 = v13[4];
      v17 = v13[5];
      v19 = v13[6];
      *v8 = *v13;
      v8[1] = v14;
      v8[2] = v16;
      v8[3] = v15;
      v8[4] = v18;
      v8[5] = v17;
      v8[6] = v19;
      v20 = a3;
      if (v9 + 1 == a3)
      {
        break;
      }

      v8 += 7;
      v24 = v9 + 1;

      a4 = v23;
      v9 = v24;
      v10 = v12;
      a3 = v20;
    }

    v10 = v12;
    result = v22;
    a4 = v23;
    a3 = v20;
LABEL_19:
    v5 = v21;
    goto LABEL_21;
  }

LABEL_26:
  __break(1u);
  return result;
}

uint64_t StreamedEventsAggregator.AppEvent.init(appId:time:type:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, char *a5@<X8>)
{
  v7 = *a4;
  *a5 = a1;
  *(a5 + 1) = a2;
  v8 = type metadata accessor for StreamedEventsAggregator.AppEvent(0);
  v9 = *(v8 + 20);
  v10 = sub_231585884();
  OUTLINED_FUNCTION_3_37(v10);
  result = (*(v11 + 32))(&a5[v9], a3);
  a5[*(v8 + 24)] = v7;
  return result;
}

uint64_t static StreamedEventsAggregator.group(events:now:beginning:candidateAppIds:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t isUniquelyReferenced_nonNull_native)
{
  v314 = a3;
  v334 = a2;
  v323 = 0;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BF60, &qword_231587FD0);
  v8 = OUTLINED_FUNCTION_19(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x28223BE20](v11);
  v320 = &v313 - v12;
  v13 = type metadata accessor for StreamedEventsAggregator.AppEvent(0);
  v14 = OUTLINED_FUNCTION_4_1(v13);
  v343 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_8_13();
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_8_13();
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x28223BE20](v20);
  v344 = &v313 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5C0E0, &qword_23158EF78);
  v23 = OUTLINED_FUNCTION_19(v22);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_3_2();
  v27 = MEMORY[0x28223BE20](v26);
  v29 = &v313 - v28;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_8_13();
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_8_13();
  OUTLINED_FUNCTION_3_2();
  v32 = MEMORY[0x28223BE20](v31);
  v34 = &v313 - v33;
  MEMORY[0x28223BE20](v32);
  v36 = (&v313 - v35);
  v37 = sub_231585884();
  v38 = OUTLINED_FUNCTION_4_1(v37);
  v40 = v39;
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_8_13();
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_8_13();
  v347 = v45;
  MEMORY[0x28223BE20](v46);
  v342 = &v313 - v47;
  v331 = type metadata accessor for StreamedEventsAggregator.Event(0);
  v48 = OUTLINED_FUNCTION_4_1(v331);
  v50 = v49;
  v52 = *(v51 + 64);
  MEMORY[0x28223BE20](v48);
  v332 = &v313 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5C0E8, &qword_23158EF80);
  v55 = OUTLINED_FUNCTION_19(v54);
  v57 = *(v56 + 64);
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x28223BE20](v58);
  v59 = MEMORY[0x277D84F98];
  v353 = MEMORY[0x277D84F98];
  v325 = &v313 - v60;
  OUTLINED_FUNCTION_7_1();
  __swift_storeEnumTagSinglePayload(v61, v62, v63, v13);
  v64 = *(a1 + 16);
  v349 = v13;
  v336 = v29;
  v348 = v37;
  v327 = v64;
  v318 = v40;
  if (v64)
  {
    v329 = a1 + ((*(v50 + 80) + 32) & ~*(v50 + 80));
    v324 = (v40 + 32);
    v345 = v40 + 16;
    v346 = (v40 + 8);
    v330 = isUniquelyReferenced_nonNull_native;
    v326 = isUniquelyReferenced_nonNull_native + 56;
    v328 = *(v50 + 72);
    OUTLINED_FUNCTION_24_5();
    v350 = v36;
    v351 = v34;
    v66 = v332;
    while (1)
    {
      v333 = v65;
      sub_23157581C();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        break;
      }

      (*v324)(v342, v66, v37);
      v83 = *(v353 + 64);
      v82 = (v353 + 64);
      v340 = OUTLINED_FUNCTION_13_13(v353);

      v29 = 0;
      v341 = v82;
      if (!isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_13;
      }

LABEL_12:
      v84 = v29;
LABEL_17:
      v85 = __clz(__rbit64(isUniquelyReferenced_nonNull_native));
      isUniquelyReferenced_nonNull_native &= isUniquelyReferenced_nonNull_native - 1;
      v86 = *(v340 + 56);
      v87 = (*(v340 + 48) + 16 * (v85 | (v84 << 6)));
      v89 = *v87;
      v88 = v87[1];
      OUTLINED_FUNCTION_14_12();
      OUTLINED_FUNCTION_1_43();
      sub_23157581C();
      v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5C0F0, &unk_23158EF88);
      v91 = *(v90 + 48);
      v92 = v351;
      *v351 = v89;
      v92[1] = v88;
      OUTLINED_FUNCTION_0_84();
      sub_231576A78();
      OUTLINED_FUNCTION_37_2();
      __swift_storeEnumTagSinglePayload(v93, v94, v95, v90);

      v36 = v350;
      while (1)
      {
        v96 = OUTLINED_FUNCTION_7_0();
        sub_2315758C8(v96, v97);
        v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5C0F0, &unk_23158EF88);
        if (__swift_getEnumTagSinglePayload(v36, 1, v98) == 1)
        {
          break;
        }

        v100 = *v36;
        v99 = v36[1];
        v101 = v36 + *(v98 + 48);
        v103 = v347;
        v102 = v348;
        (*v345)(v347, v101 + *(v13 + 20), v348);
        sub_23157586C(v101);
        sub_2315857A4();
        v105 = v104;
        (*v346)(v103, v102);
        OUTLINED_FUNCTION_38_2();
        if (v106)
        {
          v107 = sub_23149C888(v100, v99);
          if (v108)
          {
            OUTLINED_FUNCTION_36_3(v107);
          }
        }

        swift_isUniquelyReferenced_nonNull_native();
        v352 = v59;
        v109 = sub_23149C888(v100, v99);
        OUTLINED_FUNCTION_9_23(v109, v110);
        if (v113)
        {
          goto LABEL_129;
        }

        v114 = v111;
        v115 = v112;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B168, &unk_23158B500);
        if (OUTLINED_FUNCTION_21_8())
        {
          sub_23149C888(v100, v99);
          OUTLINED_FUNCTION_30_4();
          v13 = v349;
          if (!v138)
          {
            goto LABEL_137;
          }

          v114 = v116;
        }

        else
        {
          v13 = v349;
        }

        v117 = v105 + v4;
        if (v115)
        {

          v59 = v352;
          *(*(v352 + 56) + 8 * v114) = v117;
        }

        else
        {
          v59 = v352;
          OUTLINED_FUNCTION_45_3();
          OUTLINED_FUNCTION_10_21(v118);
          v120 = (v119 + 16 * v114);
          *v120 = v100;
          v120[1] = v99;
          *(*(v59 + 56) + 8 * v114) = v117;
          v121 = *(v59 + 16);
          v113 = __OFADD__(v121, 1);
          v122 = v121 + 1;
          if (v113)
          {
            goto LABEL_130;
          }

          *(v59 + 16) = v122;
        }

        v36 = v350;
        v82 = v341;
        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_12;
        }

        while (1)
        {
LABEL_13:
          v84 = v29 + 1;
          if (__OFADD__(v29, 1))
          {
            __break(1u);
LABEL_127:
            __break(1u);
            goto LABEL_128;
          }

          if (v84 >= v37)
          {
            break;
          }

          isUniquelyReferenced_nonNull_native = *(v82 + v84);
          ++v29;
          if (isUniquelyReferenced_nonNull_native)
          {
            v29 = v84;
            goto LABEL_17;
          }
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5C0F0, &unk_23158EF88);
        OUTLINED_FUNCTION_7_1();
        __swift_storeEnumTagSinglePayload(v123, v124, v125, v126);
        isUniquelyReferenced_nonNull_native = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5C100, &qword_23158EFA0);
      sub_231586114();
      v37 = v348;
      (*v346)(v342, v348);
      OUTLINED_FUNCTION_44_3();
      OUTLINED_FUNCTION_24_5();
LABEL_99:
      v65 = v333 + 1;
      v66 = v332;
      if (v333 + 1 == v327)
      {
        goto LABEL_100;
      }
    }

    OUTLINED_FUNCTION_0_84();
    sub_231576A78();
    if (!*(isUniquelyReferenced_nonNull_native + *(v13 + 24)))
    {
      v127 = isUniquelyReferenced_nonNull_native;
      v128 = *(isUniquelyReferenced_nonNull_native + 8);
      v129 = sub_2314A0560(*isUniquelyReferenced_nonNull_native, v128, v330);
      if (v129)
      {
        OUTLINED_FUNCTION_1_43();
        v37 = v344;
        sub_23157581C();

        v130 = v353;
        swift_isUniquelyReferenced_nonNull_native();
        v352 = v130;
        v131 = OUTLINED_FUNCTION_23_7();
        sub_231575AFC(v131, v132, v128);

        v353 = v352;
      }

      v148 = v323;
      v149 = v338;
      MEMORY[0x28223BE20](v129);
      *(&v313 - 2) = v127;
      v322 = v150;
      v151 = sub_231576550(sub_231575938, &v313 - 4, v150);
      v323 = v148;
      v29 = 0;
      v152 = v151[8];
      v340 = v151;
      OUTLINED_FUNCTION_13_13(v151);
      v341 = v153;
      if (v148)
      {
        goto LABEL_49;
      }

      do
      {
LABEL_50:
        v154 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          goto LABEL_127;
        }

        if (v154 >= v37)
        {
          v202 = OUTLINED_FUNCTION_28();
          __swift_instantiateConcreteTypeFromMangledNameV2(v202, v203);
          OUTLINED_FUNCTION_7_1();
          __swift_storeEnumTagSinglePayload(v204, v205, v206, v207);
          v148 = 0;
          goto LABEL_55;
        }

        v148 = *(v153 + v154);
        ++v29;
      }

      while (!v148);
      v29 = v154;
      while (2)
      {
        v155 = __clz(__rbit64(v148));
        v148 &= v148 - 1;
        v156 = *(v340 + 56);
        v157 = (*(v340 + 48) + 16 * (v155 | (v154 << 6)));
        v159 = *v157;
        v158 = v157[1];
        OUTLINED_FUNCTION_14_12();
        OUTLINED_FUNCTION_1_43();
        sub_23157581C();
        v160 = OUTLINED_FUNCTION_28();
        v162 = __swift_instantiateConcreteTypeFromMangledNameV2(v160, v161);
        v163 = *(v162 + 48);
        v164 = v339;
        *v339 = v159;
        v164[1] = v158;
        OUTLINED_FUNCTION_0_84();
        sub_231576A78();
        OUTLINED_FUNCTION_37_2();
        __swift_storeEnumTagSinglePayload(v165, v166, v167, v162);

        v149 = v338;
LABEL_55:
        v168 = OUTLINED_FUNCTION_3_10();
        sub_2315758C8(v168, v169);
        v170 = OUTLINED_FUNCTION_28();
        v172 = __swift_instantiateConcreteTypeFromMangledNameV2(v170, v171);
        if (__swift_getEnumTagSinglePayload(v149, 1, v172) != 1)
        {
          v173 = *v149;
          v174 = v149[1];
          v175 = v149 + *(v172 + 48);
          (*v345)(v347, v175 + *(v349 + 20), v348);
          sub_23157586C(v175);
          sub_2315857A4();
          v177 = v176;
          v178 = *v346;
          v179 = OUTLINED_FUNCTION_28();
          v180(v179);
          OUTLINED_FUNCTION_38_2();
          if (v181)
          {
            v182 = OUTLINED_FUNCTION_7_0();
            v184 = sub_23149C888(v182, v183);
            if (v185)
            {
              OUTLINED_FUNCTION_36_3(v184);
            }
          }

          swift_isUniquelyReferenced_nonNull_native();
          v352 = v59;
          v186 = OUTLINED_FUNCTION_7_0();
          v188 = sub_23149C888(v186, v187);
          OUTLINED_FUNCTION_9_23(v188, v189);
          if (v113)
          {
            goto LABEL_131;
          }

          v192 = v190;
          v193 = v191;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B168, &unk_23158B500);
          if (OUTLINED_FUNCTION_21_8())
          {
            v194 = OUTLINED_FUNCTION_7_0();
            v196 = sub_23149C888(v194, v195);
            if ((v193 & 1) != (v197 & 1))
            {
              goto LABEL_137;
            }

            v192 = v196;
          }

          v198 = v177 + v4;
          if (v193)
          {

            v59 = v352;
            *(*(v352 + 56) + 8 * v192) = v198;
          }

          else
          {
            v59 = v352;
            OUTLINED_FUNCTION_45_3();
            OUTLINED_FUNCTION_10_21(v199);
            OUTLINED_FUNCTION_26_6(v200);
            if (v113)
            {
              goto LABEL_133;
            }

            *(v59 + 16) = v201;
          }

          v149 = v338;
          v153 = v341;
          if (!v148)
          {
            goto LABEL_50;
          }

LABEL_49:
          v154 = v29;
          continue;
        }

        break;
      }

      MEMORY[0x28223BE20](v208);
      v209 = v337;
      *(&v313 - 2) = v337;
      v210 = v323;
      v66 = sub_231576550(sub_2315766D4, &v313 - 4, v322);
      v323 = v210;
      isUniquelyReferenced_nonNull_native = v209;

      v353 = v66;
      OUTLINED_FUNCTION_44_3();
      v37 = v348;
      v13 = v349;
      OUTLINED_FUNCTION_41_1();
      v36 = v350;
      goto LABEL_98;
    }

    if (*(isUniquelyReferenced_nonNull_native + *(v13 + 24)) == 1)
    {
      v67 = *isUniquelyReferenced_nonNull_native;
      isUniquelyReferenced_nonNull_native = *(isUniquelyReferenced_nonNull_native + 8);
      v66 = v353;
      if (!*(v353 + 16) || (v68 = OUTLINED_FUNCTION_42_3(), sub_23149C888(v68, v69), (v70 & 1) == 0))
      {
        if (v330[2])
        {
          v133 = v330[5];
          sub_231586D14();
          sub_231586274();
          sub_231586D44();
          OUTLINED_FUNCTION_28_4();
          v66 = ~v135;
          while (1)
          {
            v136 = v134 & v66;
            if (((*(v326 + (((v134 & v66) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v134 & v66)) & 1) == 0)
            {
              break;
            }

            v137 = (v330[6] + 16 * v136);
            v138 = *v137 == v67 && v137[1] == isUniquelyReferenced_nonNull_native;
            if (!v138)
            {
              v139 = sub_231586C44();
              v134 = v136 + 1;
              if ((v139 & 1) == 0)
              {
                continue;
              }
            }

            v140 = v325;
            EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v325, 1, v13);
            v142 = v345;
            if (EnumTagSinglePayload)
            {
              v143 = v320;
              OUTLINED_FUNCTION_7_1();
              __swift_storeEnumTagSinglePayload(v144, v145, v146, v37);
              v147 = *v142;
            }

            else
            {
              v239 = *(v13 + 20);
              v341 = *v345;
              v240 = v140 + v239;
              v143 = v320;
              v341(v320, v240, v37);
              v147 = v341;
              OUTLINED_FUNCTION_37_2();
              __swift_storeEnumTagSinglePayload(v241, v242, v243, v37);
            }

            v147(v319, v337 + *(v13 + 20), v37);
            v244 = v143;
            v245 = v315;
            sub_231576B5C(v244, v315, &qword_27DD5BF60, &qword_231587FD0);
            if (__swift_getEnumTagSinglePayload(v245, 1, v37) == 1)
            {
              v246 = v147;
              v247 = v316;
              v246(v316, v314, v37);
              if (__swift_getEnumTagSinglePayload(v245, 1, v37) != 1)
              {
                sub_2314A2910(v245, &qword_27DD5BF60, &qword_231587FD0);
              }
            }

            else
            {
              v247 = v316;
              (*v324)(v316, v245, v37);
            }

            v248 = v319;
            sub_2315857A4();
            v249 = v247;
            v250 = *v346;
            (*v346)(v249, v37);
            v250(v248, v37);
            OUTLINED_FUNCTION_38_2();
            if (v251)
            {
              v252 = OUTLINED_FUNCTION_42_3();
              v254 = sub_23149C888(v252, v253);
              v66 = v320;
              if (v255)
              {
                OUTLINED_FUNCTION_36_3(v254);
              }
            }

            else
            {
              v66 = v320;
            }

            swift_isUniquelyReferenced_nonNull_native();
            v352 = v59;
            v256 = OUTLINED_FUNCTION_42_3();
            sub_2315756F4(v256, v257, v258);
            sub_2314A2910(v66, &qword_27DD5BF60, &qword_231587FD0);
            v59 = v352;
            break;
          }
        }

        OUTLINED_FUNCTION_41_1();
        OUTLINED_FUNCTION_24_5();
        goto LABEL_98;
      }

      v71 = *(v66 + 56);
      OUTLINED_FUNCTION_14_12();
      v341 = v72;
      OUTLINED_FUNCTION_1_43();
      sub_23157581C();
      OUTLINED_FUNCTION_0_84();
      sub_231576A78();
      v73 = v337 + *(v13 + 20);
      sub_2315857A4();
      v75 = v74;
      OUTLINED_FUNCTION_38_2();
      if (v76)
      {
        v77 = v67;
        v78 = OUTLINED_FUNCTION_42_3();
        v80 = sub_23149C888(v78, v79);
        if (v81)
        {
          OUTLINED_FUNCTION_36_3(v80);
        }
      }

      else
      {
        v77 = v67;
      }

      swift_isUniquelyReferenced_nonNull_native();
      v352 = v59;
      v211 = OUTLINED_FUNCTION_23_7();
      v213 = sub_23149C888(v211, v212);
      OUTLINED_FUNCTION_9_23(v213, v214);
      if (v113)
      {
        goto LABEL_135;
      }

      v217 = v215;
      v218 = v216;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B168, &unk_23158B500);
      if (sub_231586A64())
      {
        v219 = OUTLINED_FUNCTION_23_7();
        sub_23149C888(v219, v220);
        OUTLINED_FUNCTION_15_15();
        if (!v138)
        {
          goto LABEL_137;
        }

        v217 = v221;
      }

      v59 = v352;
      if (v218)
      {
        *(*(v352 + 56) + 8 * v217) = v75 + v4;
      }

      else
      {
        OUTLINED_FUNCTION_45_3();
        OUTLINED_FUNCTION_10_21(v222);
        v224 = (v223 + 16 * v217);
        *v224 = v77;
        v224[1] = isUniquelyReferenced_nonNull_native;
        *(*(v59 + 56) + 8 * v217) = v225;
        v226 = *(v59 + 16);
        v113 = __OFADD__(v226, 1);
        v227 = v226 + 1;
        if (v113)
        {
          goto LABEL_136;
        }

        *(v59 + 16) = v227;
      }

      v36 = v350;
      v228 = OUTLINED_FUNCTION_23_7();
      v230 = sub_23149C888(v228, v229);
      if (v231)
      {
        v232 = v230;
        v233 = v353;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v352 = v233;
        v234 = *(v233 + 24);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5C0F8, &qword_23158EF98);
        sub_231586A64();
        v235 = v352;
        v236 = *(*(v352 + 48) + 16 * v232 + 8);

        v237 = *(v235 + 56);
        OUTLINED_FUNCTION_0_84();
        v66 = v317;
        sub_231576A78();
        sub_231586A84();
        sub_23157586C(v321);
        v353 = v235;
        v37 = v348;
        OUTLINED_FUNCTION_24_5();
      }

      else
      {
        sub_23157586C(v321);
        v37 = v348;
        OUTLINED_FUNCTION_24_5();
        v66 = v317;
      }

      __swift_storeEnumTagSinglePayload(v66, v238, 1, v13);
      sub_2314A2910(v66, &qword_27DD5C0E8, &qword_23158EF80);
    }

    OUTLINED_FUNCTION_41_1();
LABEL_98:
    sub_2314A2910(v66, &qword_27DD5C0E8, &qword_23158EF80);
    OUTLINED_FUNCTION_1_43();
    sub_23157581C();
    OUTLINED_FUNCTION_37_2();
    __swift_storeEnumTagSinglePayload(v259, v260, v261, v13);
    sub_23157586C(isUniquelyReferenced_nonNull_native);
    goto LABEL_99;
  }

LABEL_100:
  v262 = (v353 + 64);
  v263 = 1 << *(v353 + 32);
  v264 = -1;
  if (v263 < 64)
  {
    v264 = ~(-1 << v263);
  }

  v265 = v264 & *(v353 + 64);
  v266 = (v263 + 63) >> 6;
  v350 = (v318 + 8);
  v351 = (v318 + 16);
  v345 = v353;

  v267 = 0;
  v346 = v262;
  if (v265)
  {
    while (1)
    {
      v268 = v267;
LABEL_108:
      v269 = __clz(__rbit64(v265));
      v265 &= v265 - 1;
      v29 = v344;
      v270 = *(v345 + 56);
      v271 = (*(v345 + 48) + 16 * (v269 | (v268 << 6)));
      v273 = *v271;
      v272 = v271[1];
      OUTLINED_FUNCTION_14_12();
      OUTLINED_FUNCTION_1_43();
      sub_23157581C();
      v274 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5C0F0, &unk_23158EF88);
      v275 = *(v274 + 48);
      v276 = v335;
      *v335 = v273;
      *(v276 + 8) = v272;
      OUTLINED_FUNCTION_0_84();
      sub_231576A78();
      OUTLINED_FUNCTION_37_2();
      __swift_storeEnumTagSinglePayload(v277, v278, v279, v274);

      OUTLINED_FUNCTION_44_3();
      v13 = v349;
LABEL_109:
      sub_2315758C8(v276, v29);
      v280 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5C0F0, &unk_23158EF88);
      if (__swift_getEnumTagSinglePayload(v29, 1, v280) == 1)
      {
        break;
      }

      v281 = *v29;
      v282 = *(v29 + 8);
      v283 = v29 + *(v280 + 48);
      v285 = v347;
      v284 = v348;
      (*v351)(v347, v283 + *(v13 + 20), v348);
      sub_23157586C(v283);
      sub_2315857A4();
      v287 = v286;
      (*v350)(v285, v284);
      OUTLINED_FUNCTION_38_2();
      if (v288)
      {
        v289 = OUTLINED_FUNCTION_7_0();
        v291 = sub_23149C888(v289, v290);
        if (v292)
        {
          OUTLINED_FUNCTION_36_3(v291);
        }
      }

      swift_isUniquelyReferenced_nonNull_native();
      v352 = v59;
      v293 = OUTLINED_FUNCTION_7_0();
      v295 = sub_23149C888(v293, v294);
      OUTLINED_FUNCTION_9_23(v295, v296);
      if (v113)
      {
        goto LABEL_132;
      }

      v299 = v297;
      v29 = v298;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B168, &unk_23158B500);
      if (OUTLINED_FUNCTION_21_8())
      {
        v300 = OUTLINED_FUNCTION_7_0();
        v302 = sub_23149C888(v300, v301);
        v13 = v349;
        if ((v29 & 1) != (v303 & 1))
        {
          goto LABEL_137;
        }

        v299 = v302;
      }

      else
      {
        v13 = v349;
      }

      v304 = v287 + v4;
      if (v29)
      {

        v59 = v352;
        *(*(v352 + 56) + 8 * v299) = v304;
      }

      else
      {
        v59 = v352;
        OUTLINED_FUNCTION_45_3();
        OUTLINED_FUNCTION_10_21(v305);
        OUTLINED_FUNCTION_26_6(v306);
        if (v113)
        {
          goto LABEL_134;
        }

        *(v59 + 16) = v307;
      }

      OUTLINED_FUNCTION_44_3();
      v262 = v346;
      if (!v265)
      {
        goto LABEL_104;
      }
    }

    sub_2314A2910(v325, &qword_27DD5C0E8, &qword_23158EF80);

    return v59;
  }

  else
  {
LABEL_104:
    while (1)
    {
      v268 = v267 + 1;
      if (__OFADD__(v267, 1))
      {
        break;
      }

      if (v268 >= v266)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5C0F0, &unk_23158EF88);
        v276 = v335;
        OUTLINED_FUNCTION_7_1();
        __swift_storeEnumTagSinglePayload(v308, v309, v310, v311);
        v265 = 0;
        goto LABEL_109;
      }

      v265 = v262[v268];
      ++v267;
      if (v265)
      {
        v267 = v268;
        goto LABEL_108;
      }
    }

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
    result = sub_231586C84();
    __break(1u);
  }

  return result;
}

uint64_t sub_231574518(char a1, void *a2)
{
  if (a2[2] && (v4 = a2[5], sub_231586D14(), sub_231545524(v16, a1), sub_231586D44(), OUTLINED_FUNCTION_28_4(), v7 = v6 & ~v5, ((*(a2 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v7) & 1) != 0))
  {
    v8 = ~v5;
    while (1)
    {
      v9 = 0xE800000000000000;
      v10 = 0x6449656C646E7562;
      switch(*(a2[6] + v7))
      {
        case 1:
          v10 = 0x6449797469746E65;
          break;
        case 2:
          v10 = 0x73556E69616D6F64;
          v9 = 0xED00006573614365;
          break;
        case 3:
          v10 = 0x7355646572616873;
          v9 = 0xEC00000064497265;
          break;
        case 4:
          v9 = 0xE600000000000000;
          v10 = 0x746E65746E69;
          break;
        default:
          break;
      }

      v11 = 0xE800000000000000;
      v12 = 0x6449656C646E7562;
      switch(a1)
      {
        case 1:
          v12 = 0x6449797469746E65;
          break;
        case 2:
          v12 = 0x73556E69616D6F64;
          v11 = 0xED00006573614365;
          break;
        case 3:
          v12 = 0x7355646572616873;
          v11 = 0xEC00000064497265;
          break;
        case 4:
          v11 = 0xE600000000000000;
          v12 = 0x746E65746E69;
          break;
        default:
          break;
      }

      if (v10 == v12 && v9 == v11)
      {
        break;
      }

      v14 = sub_231586C44();

      if ((v14 & 1) == 0)
      {
        v7 = (v7 + 1) & v8;
        if ((*(a2 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v7))
        {
          continue;
        }
      }

      return v14 & 1;
    }

    v14 = 1;
  }

  else
  {
    v14 = 0;
  }

  return v14 & 1;
}

uint64_t StreamedEventsAggregator.AppEvent.EventType.hashValue.getter()
{
  v1 = *v0;
  sub_231586D14();
  MEMORY[0x231930A00](v1);
  return sub_231586D44();
}

uint64_t StreamedEventsAggregator.AppEvent.appId.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_3_10();
}

uint64_t StreamedEventsAggregator.AppEvent.time.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for StreamedEventsAggregator.AppEvent(0) + 20);
  v4 = sub_231585884();
  v5 = OUTLINED_FUNCTION_8(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t StreamedEventsAggregator.AppEvent.type.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for StreamedEventsAggregator.AppEvent(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t sub_2315748C4(uint64_t *a1, uint64_t a2, void *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5C0F0, &unk_23158EF88);
  v6 = v5 - 8;
  v7 = *(*(v5 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = (v24 - v11);
  v13 = *a1;
  v14 = a1[1];
  *v12 = v13;
  v12[1] = v14;
  v15 = *(v6 + 56);
  sub_23157581C();
  sub_231576B5C(v12, v10, &qword_27DD5C0F0, &unk_23158EF88);
  v16 = *(v10 + 1);

  v17 = &v10[*(v6 + 56)];
  v19 = *v17;
  v18 = *(v17 + 1);

  sub_23157586C(v17);
  if (v19 == *a3 && v18 == a3[1])
  {

    v22 = 0;
  }

  else
  {
    v21 = sub_231586C44();

    v22 = v21 ^ 1;
  }

  sub_2314A2910(v12, &qword_27DD5C0F0, &unk_23158EF88);
  return v22 & 1;
}

uint64_t sub_231574A60(uint64_t *a1, uint64_t a2, void *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5C0F0, &unk_23158EF88);
  v6 = v5 - 8;
  v7 = *(*(v5 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = (v23 - v11);
  v13 = *a1;
  v14 = a1[1];
  *v12 = v13;
  v12[1] = v14;
  v15 = *(v6 + 56);
  sub_23157581C();
  sub_231576B5C(v12, v10, &qword_27DD5C0F0, &unk_23158EF88);
  v16 = *(v10 + 1);

  v17 = &v10[*(v6 + 56)];
  v19 = *v17;
  v18 = *(v17 + 1);

  sub_23157586C(v17);
  if (v19 == *a3 && v18 == a3[1])
  {
    v21 = 1;
  }

  else
  {
    v21 = sub_231586C44();
  }

  sub_2314A2910(v12, &qword_27DD5C0F0, &unk_23158EF88);
  return v21 & 1;
}

unint64_t sub_231574BF0(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_231586734();

  return sub_231574E54(a1, v5);
}

unint64_t sub_231574C34(char a1)
{
  OUTLINED_FUNCTION_48_1();
  sub_2314B5298(a1);
  sub_231586274();

  v2 = sub_231586D44();

  return sub_231574F14(a1, v2);
}

unint64_t sub_231574CB4(unsigned __int8 a1)
{
  OUTLINED_FUNCTION_48_1();
  MEMORY[0x231930A00](a1);
  v2 = sub_231586D44();

  return sub_2315750E4(a1, v2);
}

unint64_t sub_231574D18(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_2315861A4();
  sub_231586D14();
  sub_231586274();
  v4 = sub_231586D44();

  return sub_231575144(a1, v4);
}

unint64_t sub_231574DAC(uint64_t a1)
{
  OUTLINED_FUNCTION_48_1();
  MEMORY[0x231930A00](a1);
  v2 = sub_231586D44();

  return sub_23157523C(a1, v2);
}

unint64_t sub_231574E10(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_2315868C4();

  return sub_23157529C(a1, v5);
}

unint64_t sub_231574E54(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = v2 + 64;
  v5 = ~(-1 << *(v2 + 32));
  for (i = a2 & v5; ((1 << i) & *(v4 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v5)
  {
    sub_231576B18();
    v7 = *(*(v3 + 48) + 8 * i);
    v8 = sub_231586744();

    if (v8)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_231574F14(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xE200000000000000;
      v8 = 27954;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v7 = 0xE300000000000000;
          v8 = 7155761;
          break;
        case 2:
          v8 = 26673;
          break;
        case 3:
          v8 = 26678;
          break;
        case 4:
          v8 = 25649;
          break;
        case 5:
          v8 = 25655;
          break;
        case 6:
          v7 = 0xE300000000000000;
          v8 = 6567986;
          break;
        case 7:
          v7 = 0xE300000000000000;
          v8 = 6712937;
          break;
        default:
          break;
      }

      v9 = 0xE200000000000000;
      v10 = 27954;
      switch(a1)
      {
        case 1:
          v9 = 0xE300000000000000;
          v10 = 7155761;
          break;
        case 2:
          v10 = 26673;
          break;
        case 3:
          v10 = 26678;
          break;
        case 4:
          v10 = 25649;
          break;
        case 5:
          v10 = 25655;
          break;
        case 6:
          v9 = 0xE300000000000000;
          v10 = 6567986;
          break;
        case 7:
          v9 = 0xE300000000000000;
          v10 = 6712937;
          break;
        default:
          break;
      }

      if (v8 == v10 && v7 == v9)
      {
        break;
      }

      v12 = sub_231586C44();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_2315750E4(unsigned __int8 a1, uint64_t a2)
{
  v3 = a1;
  v4 = ~(-1 << *(v2 + 32));
    ;
  }

  return result;
}

unint64_t sub_231575144(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
  for (i = a2 & v3; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v3)
  {
    v5 = *(*(v2 + 48) + 8 * i);
    v6 = sub_2315861A4();
    v8 = v7;
    if (v6 == sub_2315861A4() && v8 == v9)
    {

      return i;
    }

    v11 = sub_231586C44();

    if (v11)
    {
      return i;
    }
  }

  return i;
}

unint64_t sub_23157523C(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return i;
}

unint64_t sub_23157529C(uint64_t a1, uint64_t a2)
{
  v4 = ~(-1 << *(v2 + 32));
  for (i = a2 & v4; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v4)
  {
    sub_2314D6014(*(v2 + 48) + 40 * i, v8);
    v6 = MEMORY[0x2319305B0](v8, a1);
    sub_2314D5E98(v8);
    if (v6)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_231575360(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = OUTLINED_FUNCTION_5_30(a1, a2, a3, a4, a5);
  *(*(v6 + 56) + 8 * result) = v7;
  v8 = *(v6 + 16);
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v10;
  }

  return result;
}

uint64_t sub_231575394(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = OUTLINED_FUNCTION_12_16(a1, a4 + 8 * (a1 >> 6));
  v6 = (v5[6] + 16 * result);
  *v6 = v7;
  v6[1] = v8;
  *(v5[7] + 8 * result) = v9;
  v10 = v5[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    v5[2] = v12;
  }

  return result;
}

unint64_t sub_2315753DC(unint64_t result, char a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

uint64_t sub_231575420(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = OUTLINED_FUNCTION_12_16(a1, a4 + 8 * (a1 >> 6));
  *(v5[6] + result) = v6;
  *(v5[7] + 8 * result) = v7;
  v8 = v5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    v5[2] = v10;
  }

  return result;
}

uint64_t sub_231575464(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = OUTLINED_FUNCTION_12_16(a1, a6 + 8 * (a1 >> 6));
  v8 = (v7[6] + 16 * result);
  *v8 = v9;
  v8[1] = v10;
  v11 = v7[7] + 16 * result;
  *v11 = v12;
  *(v11 + 8) = v13;
  v14 = v7[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    v7[2] = v16;
  }

  return result;
}

uint64_t sub_2315754B4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = OUTLINED_FUNCTION_12_16(a1, a6 + 8 * (a1 >> 6));
  v8 = (v7[6] + 16 * result);
  *v8 = v9;
  v8[1] = v10;
  v11 = v7[7] + 16 * result;
  *v11 = v12;
  *(v11 + 8) = v13 & 1;
  v14 = v7[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    v7[2] = v16;
  }

  return result;
}

unint64_t sub_231575508(unint64_t result, char a2, void *a3, double a4)
{
  a3[(result >> 6) + 8] |= 1 << result;
  *(a3[6] + result) = a2;
  *(a3[7] + 8 * result) = a4;
  v4 = a3[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a3[2] = v6;
  }

  return result;
}

uint64_t sub_23157554C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_5_30(a1, a2, a3, a4, a5);
  v7 = *(v6 + 56);
  v9 = v8(0);
  OUTLINED_FUNCTION_19(v9);
  v11 = *(v10 + 72);
  result = sub_231576A78();
  v13 = *(a5 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    *(a5 + 16) = v15;
  }

  return result;
}

uint64_t sub_2315755D0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = OUTLINED_FUNCTION_12_16(a1, a7 + 8 * (a1 >> 6));
  v9 = (v8[6] + 16 * result);
  *v9 = v10;
  v9[1] = v11;
  v12 = v8[7] + 24 * result;
  *v12 = v13;
  *(v12 + 8) = v14 & 1;
  *(v12 + 16) = v15;
  v16 = v8[2];
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    v8[2] = v18;
  }

  return result;
}

void sub_23157562C()
{
  OUTLINED_FUNCTION_49_1();
  v5 = OUTLINED_FUNCTION_8_26(v2, v3, v4);
  OUTLINED_FUNCTION_2_39(v5, v6);
  if (v9)
  {
    __break(1u);
LABEL_12:
    sub_231586C84();
    __break(1u);
    return;
  }

  v10 = v7;
  v11 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B890, &unk_231589360);
  OUTLINED_FUNCTION_11_20();
  if (sub_231586A64())
  {
    OUTLINED_FUNCTION_39_3();
    OUTLINED_FUNCTION_24_1();
    if (!v13)
    {
      goto LABEL_12;
    }

    v10 = v12;
  }

  if (v11)
  {
    *(*(*v1 + 56) + 8 * v10) = v0;
    OUTLINED_FUNCTION_12_3();
  }

  else
  {
    v14 = OUTLINED_FUNCTION_17_16();
    sub_231575360(v14, v15, v16, v17, v18);
    OUTLINED_FUNCTION_12_3();
  }
}

void sub_2315756F4(uint64_t a1, uint64_t a2, double a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_23149C888(a1, a2);
  OUTLINED_FUNCTION_2_39(v9, v10);
  if (v13)
  {
    __break(1u);
LABEL_12:
    sub_231586C84();
    __break(1u);
    return;
  }

  v14 = v11;
  v15 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B168, &unk_23158B500);
  if (OUTLINED_FUNCTION_20_10())
  {
    v16 = *v4;
    sub_23149C888(a1, a2);
    OUTLINED_FUNCTION_29_5();
    if (!v18)
    {
      goto LABEL_12;
    }

    v14 = v17;
  }

  v19 = *v4;
  if (v15)
  {
    *(*(v19 + 56) + 8 * v14) = a3;
  }

  else
  {
    sub_231575394(v14, a1, a2, v19);
  }
}

uint64_t sub_23157581C()
{
  v1 = OUTLINED_FUNCTION_32_4();
  v3 = v2(v1);
  OUTLINED_FUNCTION_3_37(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_3_10();
  v7(v6);
  return v0;
}

uint64_t sub_23157586C(uint64_t a1)
{
  v2 = type metadata accessor for StreamedEventsAggregator.AppEvent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2315758C8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5C0E0, &qword_23158EF78);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_231575958()
{
  OUTLINED_FUNCTION_49_1();
  v5 = OUTLINED_FUNCTION_33_2(v3, v4);
  OUTLINED_FUNCTION_2_39(v5, v6);
  if (v9)
  {
    __break(1u);
LABEL_14:
    result = sub_231586C84();
    __break(1u);
    return result;
  }

  v10 = v7;
  v11 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B870, &qword_23158B4F8);
  if (OUTLINED_FUNCTION_20_10())
  {
    v12 = *v2;
    sub_231574C34(v1);
    OUTLINED_FUNCTION_29_5();
    if (!v14)
    {
      goto LABEL_14;
    }

    v10 = v13;
  }

  if (v11)
  {
    v15 = *(*v2 + 56);
    v16 = *(v15 + 8 * v10);
    *(v15 + 8 * v10) = v0;
    OUTLINED_FUNCTION_12_3();
  }

  else
  {
    OUTLINED_FUNCTION_12_3();

    return sub_2315753DC(v19, v20, v21, v22);
  }
}

void sub_231575A34()
{
  OUTLINED_FUNCTION_49_1();
  v5 = OUTLINED_FUNCTION_33_2(v3, v4);
  OUTLINED_FUNCTION_2_39(v5, v6);
  if (v9)
  {
    __break(1u);
LABEL_12:
    sub_231586C84();
    __break(1u);
    return;
  }

  v10 = v7;
  v11 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B310, &unk_231589340);
  if (OUTLINED_FUNCTION_20_10())
  {
    v12 = *v2;
    sub_231574C34(v1);
    OUTLINED_FUNCTION_29_5();
    if (!v14)
    {
      goto LABEL_12;
    }

    v10 = v13;
  }

  if (v11)
  {
    *(*(*v2 + 56) + 8 * v10) = v0;
    OUTLINED_FUNCTION_12_3();
  }

  else
  {
    OUTLINED_FUNCTION_12_3();

    sub_231575420(v15, v16, v17, v18);
  }
}

uint64_t sub_231575AFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_23149C888(a2, a3);
  if (__OFADD__(*(v8 + 16), (v10 & 1) == 0))
  {
    __break(1u);
    goto LABEL_11;
  }

  v11 = v9;
  v12 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5C0F8, &qword_23158EF98);
  if ((sub_231586A64() & 1) == 0)
  {
    goto LABEL_5;
  }

  v13 = *v4;
  v14 = sub_23149C888(a2, a3);
  if ((v12 & 1) != (v15 & 1))
  {
LABEL_11:
    result = sub_231586C84();
    __break(1u);
    return result;
  }

  v11 = v14;
LABEL_5:
  v16 = *v4;
  if (v12)
  {
    v17 = *(v16 + 56);
    v18 = *(*(type metadata accessor for StreamedEventsAggregator.AppEvent(0) - 8) + 72);
    return sub_231576AC8();
  }

  else
  {
    sub_23157554C(v11, a2, a3, a1, v16);
  }
}

uint64_t sub_231575C74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_23149C888(a3, a4);
  OUTLINED_FUNCTION_2_39(v11, v12);
  if (v15)
  {
    __break(1u);
LABEL_14:
    result = sub_231586C84();
    __break(1u);
    return result;
  }

  v16 = v13;
  v17 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B1F0, &unk_23158E160);
  if (OUTLINED_FUNCTION_47_2())
  {
    v18 = *v5;
    v19 = OUTLINED_FUNCTION_23_7();
    sub_23149C888(v19, v20);
    OUTLINED_FUNCTION_15_15();
    if (!v22)
    {
      goto LABEL_14;
    }

    v16 = v21;
  }

  v23 = *v5;
  if (v17)
  {
    v24 = *(v23 + 56) + 16 * v16;
    v25 = *v24;
    *v24 = a1;
    v26 = *(v24 + 8);
    *(v24 + 8) = a2;
    OUTLINED_FUNCTION_3_6();

    return sub_2314A5EEC(v27, v28);
  }

  else
  {
    sub_231575464(v16, a3, a4, a1, a2, v23);
    OUTLINED_FUNCTION_3_6();
  }
}

void sub_231575D98(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_23149C888(a3, a4);
  OUTLINED_FUNCTION_2_39(v11, v12);
  if (v15)
  {
    __break(1u);
    goto LABEL_11;
  }

  v16 = v13;
  v17 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B200, &unk_23158E100);
  if ((OUTLINED_FUNCTION_47_2() & 1) == 0)
  {
    goto LABEL_5;
  }

  v18 = *v5;
  v19 = sub_23149C888(a3, a4);
  if ((v17 & 1) != (v20 & 1))
  {
LABEL_11:
    sub_231586C84();
    __break(1u);
    return;
  }

  v16 = v19;
LABEL_5:
  v21 = *v5;
  if (v17)
  {
    v22 = *(v21 + 56) + 16 * v16;
    *v22 = a1;
    *(v22 + 8) = a2 & 1;
    OUTLINED_FUNCTION_3_6();
  }

  else
  {
    sub_2315754B4(v16, a3, a4, a1, a2 & 1, v21);
    OUTLINED_FUNCTION_3_6();
  }
}

unint64_t sub_231575EB4(char a1, double a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_231574CB4(a1);
  OUTLINED_FUNCTION_2_39(v7, v8);
  if (v11)
  {
    __break(1u);
    goto LABEL_11;
  }

  v12 = v9;
  v13 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5C150, &qword_23158F098);
  result = sub_231586A64();
  if ((result & 1) == 0)
  {
    goto LABEL_5;
  }

  v15 = *v3;
  result = sub_231574CB4(a1);
  if ((v13 & 1) != (v16 & 1))
  {
LABEL_11:
    result = sub_231586C84();
    __break(1u);
    return result;
  }

  v12 = result;
LABEL_5:
  v17 = *v3;
  if (v13)
  {
    *(v17[7] + 8 * v12) = a2;
  }

  else
  {

    return sub_231575508(v12, a1, v17, a2);
  }

  return result;
}

void sub_231575FB4()
{
  OUTLINED_FUNCTION_49_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = OUTLINED_FUNCTION_18_11(v6, v4, v2);
  OUTLINED_FUNCTION_2_39(v8, v9);
  if (v12)
  {
    __break(1u);
LABEL_12:
    sub_231586C84();
    __break(1u);
    return;
  }

  v13 = v10;
  v14 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BEA8, &qword_23158E0C0);
  OUTLINED_FUNCTION_11_20();
  if (sub_231586A64())
  {
    v15 = *v0;
    sub_23149C888(v5, v3);
    OUTLINED_FUNCTION_15_15();
    if (!v17)
    {
      goto LABEL_12;
    }

    v13 = v16;
  }

  v18 = *v1;
  if (v14)
  {
    v19 = *(v18 + 56);
    v20 = type metadata accessor for BiomeQueriesNowPlaying.AllUserTimeWindows(0);
    OUTLINED_FUNCTION_19(v20);
    v22 = *(v21 + 72);
    sub_231576AC8();
    OUTLINED_FUNCTION_12_3();
  }

  else
  {
    sub_23157554C(v13, v5, v3, v7, v18);
    OUTLINED_FUNCTION_12_3();
  }
}

uint64_t sub_2315760F4()
{
  OUTLINED_FUNCTION_49_1();
  v5 = OUTLINED_FUNCTION_8_26(v2, v3, v4);
  OUTLINED_FUNCTION_2_39(v5, v6);
  if (v9)
  {
    __break(1u);
LABEL_14:
    result = sub_231586C84();
    __break(1u);
    return result;
  }

  v10 = v7;
  v11 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BB60, &qword_23158C808);
  OUTLINED_FUNCTION_11_20();
  if (sub_231586A64())
  {
    OUTLINED_FUNCTION_39_3();
    OUTLINED_FUNCTION_24_1();
    if (!v13)
    {
      goto LABEL_14;
    }

    v10 = v12;
  }

  if (v11)
  {
    v14 = *(*v1 + 56);
    v15 = *(v14 + 8 * v10);
    *(v14 + 8 * v10) = v0;
    OUTLINED_FUNCTION_12_3();
  }

  else
  {
    v18 = OUTLINED_FUNCTION_17_16();
    sub_231575360(v18, v19, v20, v21, v22);
    OUTLINED_FUNCTION_12_3();
  }
}

void sub_2315761FC()
{
  OUTLINED_FUNCTION_49_1();
  v5 = OUTLINED_FUNCTION_8_26(v2, v3, v4);
  OUTLINED_FUNCTION_2_39(v5, v6);
  if (v9)
  {
    __break(1u);
LABEL_14:
    sub_231586C84();
    __break(1u);
    return;
  }

  v10 = v7;
  v11 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5C148, &unk_23158F088);
  OUTLINED_FUNCTION_11_20();
  if (sub_231586A64())
  {
    OUTLINED_FUNCTION_39_3();
    OUTLINED_FUNCTION_24_1();
    if (!v13)
    {
      goto LABEL_14;
    }

    v10 = v12;
  }

  if (v11)
  {
    v14 = *(*v1 + 56);
    v15 = *(v14 + 8 * v10);
    *(v14 + 8 * v10) = v0;
    OUTLINED_FUNCTION_12_3();
  }

  else
  {
    v18 = OUTLINED_FUNCTION_17_16();
    sub_231575360(v18, v19, v20, v21, v22);
    OUTLINED_FUNCTION_12_3();
  }
}

void sub_2315762D8()
{
  OUTLINED_FUNCTION_49_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = OUTLINED_FUNCTION_18_11(v6, v4, v2);
  OUTLINED_FUNCTION_2_39(v8, v9);
  if (v12)
  {
    __break(1u);
LABEL_12:
    sub_231586C84();
    __break(1u);
    return;
  }

  v13 = v10;
  v14 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BE68, &qword_23158E060);
  OUTLINED_FUNCTION_11_20();
  if (sub_231586A64())
  {
    v15 = *v0;
    sub_23149C888(v5, v3);
    OUTLINED_FUNCTION_15_15();
    if (!v17)
    {
      goto LABEL_12;
    }

    v13 = v16;
  }

  v18 = *v1;
  if (v14)
  {
    v19 = *(v18 + 56);
    v20 = type metadata accessor for SignalRepository.PrewarmStatus.Record(0);
    OUTLINED_FUNCTION_19(v20);
    v22 = *(v21 + 72);
    sub_231576AC8();
    OUTLINED_FUNCTION_12_3();
  }

  else
  {
    sub_23157554C(v13, v5, v3, v7, v18);
    OUTLINED_FUNCTION_12_3();
  }
}

void sub_231576418(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_23149C888(a4, a5);
  OUTLINED_FUNCTION_2_39(v13, v14);
  if (v17)
  {
    __break(1u);
LABEL_12:
    sub_231586C84();
    __break(1u);
    return;
  }

  v18 = v15;
  v19 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5C140, &qword_23158F080);
  if (sub_231586A64())
  {
    v20 = *v6;
    sub_23149C888(a4, a5);
    OUTLINED_FUNCTION_30_4();
    if (!v22)
    {
      goto LABEL_12;
    }

    v18 = v21;
  }

  v23 = *v6;
  if (v19)
  {
    v24 = *(v23 + 56) + 24 * v18;
    *v24 = a1;
    *(v24 + 8) = a2 & 1;
    *(v24 + 16) = a3;
    OUTLINED_FUNCTION_34_5();
  }

  else
  {
    sub_2315755D0(v18, a4, a5, a1, a2 & 1, a3, v23);
    OUTLINED_FUNCTION_34_5();
  }
}

unint64_t *sub_231576550(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  v6 = a1;
  v14[1] = *MEMORY[0x277D85DE8];
  v7 = *(a3 + 32);
  v8 = ((1 << v7) + 63) >> 6;
  if ((v7 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v13 = swift_slowAlloc();
      a2 = sub_231576DE0(v13, v8, a3, v6);
      MEMORY[0x231931280](v13, -1, -1);
      goto LABEL_5;
    }
  }

  MEMORY[0x28223BE20](a1);
  v9 = (v14 - ((8 * v8 + 15) & 0x3FFFFFFFFFFFFFF0));
  sub_23149BEE0(0, v8, v9);
  v10 = sub_231576BB4(v9, v8, a3, v6);
  if (v3)
  {
    swift_willThrow();
  }

  else
  {
    a2 = v10;
  }

LABEL_5:
  v11 = *MEMORY[0x277D85DE8];
  return a2;
}

unint64_t sub_2315766F8()
{
  result = qword_27DD5C108;
  if (!qword_27DD5C108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD5C108);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for StreamedEventsAggregator(_BYTE *result, int a2, int a3)
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

uint64_t sub_231576820()
{
  result = sub_231585884();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for StreamedEventsAggregator.AppEvent.EventType(_BYTE *result, unsigned int a2, unsigned int a3)
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

void sub_231576980()
{
  sub_231576A2C(319, &qword_27DD5C130, MEMORY[0x277CC9578]);
  if (v0 <= 0x3F)
  {
    sub_231576A2C(319, &qword_27DD5C138, type metadata accessor for StreamedEventsAggregator.AppEvent);
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_231576A2C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_231576A78()
{
  v1 = OUTLINED_FUNCTION_32_4();
  v3 = v2(v1);
  OUTLINED_FUNCTION_3_37(v3);
  v5 = *(v4 + 32);
  v6 = OUTLINED_FUNCTION_3_10();
  v7(v6);
  return v0;
}

uint64_t sub_231576AC8()
{
  v1 = OUTLINED_FUNCTION_32_4();
  v3 = v2(v1);
  OUTLINED_FUNCTION_3_37(v3);
  v5 = *(v4 + 40);
  v6 = OUTLINED_FUNCTION_3_10();
  v7(v6);
  return v0;
}

unint64_t sub_231576B18()
{
  result = qword_280D6FE80;
  if (!qword_280D6FE80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280D6FE80);
  }

  return result;
}

uint64_t sub_231576B5C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_3_37(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_3_10();
  v9(v8);
  return a2;
}

uint64_t sub_231576BB4(unint64_t *a1, uint64_t a2, void *a3, uint64_t (*a4)(void *, uint64_t))
{
  v35 = a4;
  v30 = a2;
  v31 = a1;
  v5 = type metadata accessor for StreamedEventsAggregator.AppEvent(0);
  v34 = *(v5 - 8);
  v6 = *(v34 + 64);
  result = MEMORY[0x28223BE20](v5 - 8);
  v32 = 0;
  v33 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = 0;
  v36 = a3;
  v12 = a3[8];
  v11 = a3 + 8;
  v10 = v12;
  v13 = 1 << *(v11 - 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v10;
  v16 = (v13 + 63) >> 6;
  while (v15)
  {
    v17 = __clz(__rbit64(v15));
    v37 = (v15 - 1) & v15;
LABEL_11:
    v20 = v17 | (v9 << 6);
    v21 = v36[7];
    v22 = (v36[6] + 16 * v20);
    v23 = v22[1];
    v38[0] = *v22;
    v38[1] = v23;
    v24 = v33;
    v25 = *(v34 + 72);
    v26 = v20;
    sub_23157581C();

    v27 = v39;
    v28 = v35(v38, v24);
    sub_23157586C(v24);

    v39 = v27;
    if (v27)
    {
      return result;
    }

    v15 = v37;
    if (v28)
    {
      *(v31 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      if (__OFADD__(v32++, 1))
      {
        __break(1u);
        return sub_2314D4FB0(v31, v30, v32, v36);
      }
    }
  }

  v18 = v9;
  while (1)
  {
    v9 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v9 >= v16)
    {
      return sub_2314D4FB0(v31, v30, v32, v36);
    }

    v19 = v11[v9];
    ++v18;
    if (v19)
    {
      v17 = __clz(__rbit64(v19));
      v37 = (v19 - 1) & v19;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_231576DE0(unint64_t *result, uint64_t a2, void *a3, uint64_t (*a4)(void *, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_231576BB4(v7, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_47_2()
{

  return sub_231586A64();
}

uint64_t sub_231576F00()
{
  v1 = [objc_opt_self() sharedStore];
  v0[19] = v1;
  sub_2314A207C(0, &qword_280D6C650, 0x277CD3DD8);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_23157706C;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5C158, &qword_23158F0F8);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_231577338;
  v0[13] = &block_descriptor_20;
  v0[14] = v3;
  [v1 userContextOfClass:ObjCClassFromMetadata withCompletion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_23157706C()
{
  v2 = *v0;
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_23157714C, 0, 0);
}

void *sub_23157714C()
{
  v1 = *(v0 + 144);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5C160, &qword_23158F100);
  result = sub_231586AC4();
  v3 = result;
  v4 = 0;
  v5 = 1 << *(v1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v1 + 64);
  v8 = (v5 + 63) >> 6;
  v25 = (result + 8);
  if (v7)
  {
    while (1)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_10:
      v12 = v9 | (v4 << 6);
      v13 = (*(v1 + 48) + 16 * v12);
      v15 = *v13;
      v14 = v13[1];
      v16 = *(*(v1 + 56) + 8 * v12);
      objc_opt_self();
      v17 = swift_dynamicCastObjCClass();

      result = v17 ? [v17 subscriptionStatus] : 0;
      *&v25[(v12 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v12;
      v18 = (v3[6] + 16 * v12);
      *v18 = v15;
      v18[1] = v14;
      *(v3[7] + 8 * v12) = result;
      v19 = v3[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        break;
      }

      v3[2] = v21;
      if (!v7)
      {
        goto LABEL_5;
      }
    }

LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_5:
    v10 = v4;
    while (1)
    {
      v4 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        __break(1u);
        goto LABEL_20;
      }

      if (v4 >= v8)
      {
        break;
      }

      v11 = *(v1 + 64 + 8 * v4);
      ++v10;
      if (v11)
      {
        v9 = __clz(__rbit64(v11));
        v7 = (v11 - 1) & v11;
        goto LABEL_10;
      }
    }

    v22 = *(v24 + 152);

    v23 = *(v24 + 8);

    return v23(v3);
  }

  return result;
}

uint64_t sub_231577338(uint64_t a1)
{
  v1 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  sub_2314A207C(0, &qword_280D6C6B0, 0x277CD42D8);
  v2 = sub_2315860D4();

  return sub_231521DAC(v1, v2);
}

void sub_2315773B4(uint64_t a1, uint64_t a2)
{
  v4 = [objc_opt_self() sharedStore];
  sub_2314A207C(0, &qword_280D6C650, 0x277CD3DD8);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v8[4] = sub_231577680;
  v8[5] = v6;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_231577890;
  v8[3] = &block_descriptor_4;
  v7 = _Block_copy(v8);

  [v4 userContextOfClass:ObjCClassFromMetadata withCompletion:v7];
  _Block_release(v7);
}

uint64_t sub_2315774E8(uint64_t a1, void (*a2)(void))
{
  sub_231577688(a1);
  if (v3)
  {
    v4 = sub_23157793C(v3);

    (a2)(v4);
  }

  else
  {
    if (qword_280D70420 != -1)
    {
      swift_once();
    }

    v6 = sub_231585FF4();
    __swift_project_value_buffer(v6, qword_280D72248);
    v7 = sub_231585FE4();
    v8 = sub_2315865E4();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_231496000, v7, v8, "SubscriptionStatusProvider: error coercing INMediaUserContext results to type", v9, 2u);
      MEMORY[0x231931280](v9, -1, -1);
    }

    type metadata accessor for SubscriptionStatus();
    sub_2315860F4();
    a2();
  }
}

void sub_231577688(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5C168, &qword_23158F108);
    v2 = sub_231586AE4();
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
    v9 = __clz(__rbit64(v5)) | (v8 << 6);
    v10 = (*(a1 + 48) + 16 * v9);
    v12 = *v10;
    v11 = v10[1];
    v13 = *(*(a1 + 56) + 8 * v9);
    objc_opt_self();
    v14 = swift_dynamicCastObjCClass();
    if (!v14)
    {

      return;
    }

    v15 = v14;
    v5 &= v5 - 1;

    v16 = v13;
    v17 = sub_23149C888(v12, v11);
    v18 = v17;
    if (v19)
    {
      v20 = (v2[6] + 16 * v17);
      v21 = v20[1];
      *v20 = v12;
      v20[1] = v11;

      v22 = v2[7];
      v23 = *(v22 + 8 * v18);
      *(v22 + 8 * v18) = v15;

      v7 = v8;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_21;
      }

      *(v2 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v17;
      v24 = (v2[6] + 16 * v17);
      *v24 = v12;
      v24[1] = v11;
      *(v2[7] + 8 * v17) = v15;
      v25 = v2[2];
      v26 = __OFADD__(v25, 1);
      v27 = v25 + 1;
      if (v26)
      {
        goto LABEL_22;
      }

      v2[2] = v27;
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
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
}

uint64_t sub_231577890(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  sub_2314A207C(0, &qword_280D6C6B0, 0x277CD42D8);
  v3 = sub_2315860D4();

  v2(v3);
}

void *sub_23157793C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5C160, &qword_23158F100);
  result = sub_231586AC4();
  v3 = result;
  v4 = 0;
  v25 = a1;
  v7 = *(a1 + 64);
  v6 = a1 + 64;
  v5 = v7;
  v8 = 1 << *(v6 - 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & v5;
  v11 = (v8 + 63) >> 6;
  v12 = (result + 8);
  if ((v9 & v5) != 0)
  {
    while (1)
    {
      v13 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_10:
      v16 = v13 | (v4 << 6);
      v17 = (*(v25 + 48) + 16 * v16);
      v18 = *v17;
      v19 = v17[1];
      v20 = *(*(v25 + 56) + 8 * v16);

      result = [v20 subscriptionStatus];
      *&v12[(v16 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v16;
      v21 = (v3[6] + 16 * v16);
      *v21 = v18;
      v21[1] = v19;
      *(v3[7] + 8 * v16) = result;
      v22 = v3[2];
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        break;
      }

      v3[2] = v24;
      if (!v10)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v14 = v4;
    while (1)
    {
      v4 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v4 >= v11)
      {
        return v3;
      }

      v15 = *(v6 + 8 * v4);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_231577AAC(char a1)
{
  result = 0x6F63536567617375;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000012;
      break;
    case 2:
      result = 0xD00000000000001CLL;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_231577B58(char a1)
{
  result = 0xD00000000000001CLL;
  switch(a1)
  {
    case 1:
    case 4:
      result = 0xD00000000000001ELL;
      break;
    case 3:
      result = 0xD000000000000020;
      break;
    default:
      return result;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SupportedMediaCategory(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_231577CBC()
{
  result = qword_27DD5C170;
  if (!qword_27DD5C170)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DD5C178, qword_23158F128);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD5C170);
  }

  return result;
}

unint64_t sub_231577D34()
{
  result = qword_280D6D000;
  if (!qword_280D6D000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D6D000);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SyncedCompanionContextLookup(_BYTE *result, int a2, int a3)
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

uint64_t static TimeSinceAppLastInstalledSignal.signpostName.setter(uint64_t a1, uint64_t a2, char a3)
{
  result = swift_beginAccess();
  *&xmmword_27DD5C180 = a1;
  *(&xmmword_27DD5C180 + 1) = a2;
  byte_27DD5C190 = a3;
  return result;
}

double sub_231577F14@<D0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v2 = byte_27DD5C190;
  result = *&xmmword_27DD5C180;
  *a1 = xmmword_27DD5C180;
  *(a1 + 16) = v2;
  return result;
}

uint64_t sub_231577F68(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = *(a1 + 16);
  result = swift_beginAccess();
  *&xmmword_27DD5C180 = v1;
  *(&xmmword_27DD5C180 + 1) = v2;
  byte_27DD5C190 = v3;
  return result;
}

uint64_t sub_231577FC0()
{
  OUTLINED_FUNCTION_8_1();
  result = sub_231586964();
  qword_280D6C960 = result;
  qword_280D6C968 = v1;
  return result;
}

uint64_t *sub_231578008()
{
  if (qword_280D6C958 != -1)
  {
    OUTLINED_FUNCTION_0_85();
  }

  return &qword_280D6C960;
}

uint64_t static TimeSinceAppLastInstalledSignal.signalName.getter()
{
  if (qword_280D6C958 != -1)
  {
    OUTLINED_FUNCTION_0_85();
  }

  OUTLINED_FUNCTION_8_1();
  v0 = qword_280D6C960;

  return v0;
}

uint64_t static TimeSinceAppLastInstalledSignal.signalName.setter(uint64_t a1, uint64_t a2)
{
  if (qword_280D6C958 != -1)
  {
    OUTLINED_FUNCTION_0_85();
  }

  swift_beginAccess();
  qword_280D6C960 = a1;
  qword_280D6C968 = a2;
}

uint64_t (*static TimeSinceAppLastInstalledSignal.signalName.modify())()
{
  if (qword_280D6C958 != -1)
  {
    OUTLINED_FUNCTION_0_85();
  }

  OUTLINED_FUNCTION_8_0();
  return j__swift_endAccess;
}

uint64_t sub_231578190@<X0>(void *a1@<X8>)
{
  sub_231578008();
  swift_beginAccess();
  v2 = qword_280D6C968;
  *a1 = qword_280D6C960;
  a1[1] = v2;
}

uint64_t sub_2315781E4(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];

  sub_231578008();
  swift_beginAccess();
  qword_280D6C960 = v2;
  qword_280D6C968 = v1;
}

uint64_t TimeSinceAppLastInstalledSignal.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t static TimeSinceAppLastInstalledSignal.instances()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_231588340;
  v1 = [BiomeLibrary() App];
  swift_unknownObjectRelease();
  v2 = [v1 Install];
  swift_unknownObjectRelease();
  *(v0 + 56) = &type metadata for TimeSinceAppLastInstalledSignal;
  *(v0 + 64) = &protocol witness table for TimeSinceAppLastInstalledSignal;
  v3 = swift_allocObject();
  *(v0 + 32) = v3;
  if (qword_280D6C958 != -1)
  {
    OUTLINED_FUNCTION_0_85();
  }

  swift_beginAccess();
  v4 = qword_280D6C968;
  *(v3 + 16) = qword_280D6C960;
  *(v3 + 24) = v4;
  v5 = MEMORY[0x277D84F90];
  *(v3 + 32) = MEMORY[0x277D84F90];
  *(v3 + 40) = v2;
  *(v3 + 48) = sub_2314E03E4;
  *(v3 + 56) = 0;
  *(v3 + 64) = v5;
  *(v3 + 72) = -1;
  *(v3 + 80) = 0;
  *(v3 + 88) = 0;
  *(v3 + 96) = 1;

  return v0;
}

uint64_t static TimeSinceAppLastInstalledSignal.instances(with:)(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_2315793D4(v3, v1, v2);
}

uint64_t static TimeSinceAppLastInstalledSignal.instances(context:)(_OWORD *a1)
{
  v1 = a1[1];
  v3[0] = *a1;
  v3[1] = v1;
  v3[2] = a1[2];
  return sub_2315791C8(v3);
}

uint64_t static TimeSinceAppLastInstalledSignal.parameterization.getter@<X0>(uint64_t *a1@<X8>)
{
  result = sub_231553E24(&unk_284612A90);
  *a1 = result;
  return result;
}

void TimeSinceAppLastInstalledSignal.value(completion:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  memcpy(__dst, v2, 0x51uLL);
  v6 = swift_allocObject();
  *(v6 + 16) = sub_2315860F4();
  v7 = [__dst[3] publisher];
  v8 = swift_allocObject();
  memcpy((v8 + 16), v3, 0x51uLL);
  aBlock[4] = sub_23157966C;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2315226A0;
  aBlock[3] = &block_descriptor_21;
  v9 = _Block_copy(aBlock);
  sub_23155AA70(__dst, &v15);

  v10 = [v7 filterWithIsIncluded_];
  _Block_release(v9);
  v11 = swift_allocObject();
  v11[2] = v6;
  v11[3] = a1;
  v11[4] = a2;
  v19 = sub_231579674;
  v20 = v11;
  v15 = MEMORY[0x277D85DD0];
  v16 = 1107296256;
  v17 = sub_2314B901C;
  v18 = &block_descriptor_12_0;
  v12 = _Block_copy(&v15);

  v19 = sub_231579680;
  v20 = v6;
  v15 = MEMORY[0x277D85DD0];
  v16 = 1107296256;
  v17 = sub_2314B8374;
  v18 = &block_descriptor_15;
  v13 = _Block_copy(&v15);

  v14 = [v10 sinkWithCompletion:v12 receiveInput:v13];
  _Block_release(v13);
  _Block_release(v12);
}

BOOL sub_231578754(void *a1, uint64_t a2)
{
  v3 = [a1 eventBody];
  if (v3 && (v4 = sub_231579158(v3), v5))
  {
    v6 = *(a2 + 16);
    v11[0] = v4;
    v11[1] = v5;
    MEMORY[0x28223BE20](v4);
    v10[2] = v11;
    v8 = sub_2314E62A8(sub_2314BB954, v10, v7);
  }

  else
  {
    return 0;
  }

  return v8;
}

uint64_t sub_231578814(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *))
{
  if (qword_280D70420 != -1)
  {
    swift_once();
  }

  v5 = sub_231585FF4();
  __swift_project_value_buffer(v5, qword_280D72248);

  v6 = sub_231585FE4();
  v7 = sub_2315865D4();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 136315138;
    swift_beginAccess();
    v10 = *(a2 + 16);

    sub_2315860E4();

    v11 = sub_2314A22E8();

    *(v8 + 4) = v11;
    _os_log_impl(&dword_231496000, v6, v7, "TimeSinceAppLastInstalledSignal computed (absolute) %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x231931280](v9, -1, -1);
    MEMORY[0x231931280](v8, -1, -1);
  }

  swift_beginAccess();
  v13 = *(a2 + 16);
  v14 = 1;

  a3(&v13);
  return sub_2314A5EEC(v13, v14);
}

void sub_231578A0C(void *a1, uint64_t a2)
{
  v4 = MEMORY[0x231930B10]();
  sub_231578A6C(a1, (a2 + 16));

  objc_autoreleasePoolPop(v4);
}

void sub_231578A6C(void *a1, uint64_t *a2)
{
  v4 = sub_231585884();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 eventBody];
  if (v9)
  {
    v10 = v9;
    if ([v9 isInstall])
    {
      v11 = sub_2314D752C(v10);
      if (v12)
      {
        v13 = v11;
        v14 = v12;
        swift_beginAccess();
        v30 = a2;
        v31 = v13;
        v15 = sub_23149CA24(v13, v14, *a2);
        v17 = v16;
        swift_endAccess();
        if (v17)
        {
          v18 = 0;
        }

        else
        {
          v18 = v15;
        }

        [a1 timestamp];
        sub_231585774();
        v19 = sub_23149C774();
        (*(v5 + 8))(v8, v4);
        if (qword_280D70420 != -1)
        {
          swift_once();
        }

        v20 = sub_231585FF4();
        __swift_project_value_buffer(v20, qword_280D72248);

        v21 = sub_231585FE4();
        v22 = sub_2315865D4();

        if (os_log_type_enabled(v21, v22))
        {
          v23 = v18;
          v24 = swift_slowAlloc();
          v25 = swift_slowAlloc();
          v32 = v25;
          *v24 = 136315394;
          *(v24 + 4) = sub_2314A22E8();
          *(v24 + 12) = 2048;
          *(v24 + 14) = v19;
          _os_log_impl(&dword_231496000, v21, v22, "TimeSinceAppLastInstalledSignal: %s/%ld", v24, 0x16u);
          __swift_destroy_boxed_opaque_existential_1(v25);
          MEMORY[0x231931280](v25, -1, -1);
          v26 = v24;
          v18 = v23;
          MEMORY[0x231931280](v26, -1, -1);
        }

        if (v18 >= v19)
        {
        }

        else
        {
          v27 = v30;
          swift_beginAccess();
          v28 = *v27;
          swift_isUniquelyReferenced_nonNull_native();
          v33 = *v27;
          sub_23157562C();
          *v27 = v33;

          swift_endAccess();
        }
      }
    }
  }
}

void TimeSinceAppLastInstalledSignal.derive(from:)(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(v2 + 32);
  v6 = *(v2 + 40);
  v7 = a2;
  switch(v4)
  {
    case 1:
      v40 = *(v2 + 40);
      swift_retain_n();
      v41 = sub_2314EA928(*&v3, v5);

      *v7 = v41;
      goto LABEL_38;
    case 2:
      v11 = OUTLINED_FUNCTION_6_1(*a1);
      if (!(v13 ^ v14 | v12))
      {
        goto LABEL_44;
      }

      if (v11 <= -9.22337204e18)
      {
        goto LABEL_45;
      }

      if (v11 >= 9.22337204e18)
      {
        goto LABEL_46;
      }

      v15 = v11;
      if ((v11 & 0x8000000000000000) == 0)
      {

        v17 = v5(v16);

        if (v17 < v15)
        {
          v15 = -1;
        }

        else
        {
          v15 = v17 - v15;
        }
      }

      *v7 = v15;
      goto LABEL_38;
    case 3:
      v44 = *(v2 + 32);
      v42 = *(a1 + 8);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B880, &unk_231588F00);
      v18 = sub_231586AC4();
      v19 = v18;
      v20 = *&v3 + 64;
      v21 = 1 << *(*&v3 + 32);
      v22 = -1;
      if (v21 < 64)
      {
        v22 = ~(-1 << v21);
      }

      i = v22 & *(*&v3 + 64);
      v24 = (v21 + 63) >> 6;
      v46 = v18 + 64;
      swift_retain_n();
      v25 = 0;
      v45 = v3;
      if (i)
      {
        goto LABEL_19;
      }

      break;
    default:
      if ((*&v3 & 0x8000000000000000) == 0)
      {
        v8 = *(v2 + 40);

        v10 = v5(v9);

        if (v10 < *&v3)
        {
          v3 = NAN;
        }

        else
        {
          *&v3 = v10 - *&v3;
        }
      }

      *v7 = v3;
      goto LABEL_38;
  }

LABEL_20:
  v27 = v25;
  do
  {
    v25 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      __break(1u);
      goto LABEL_40;
    }

    if (v25 >= v24)
    {

      v4 = v42;
      v7 = a2;
      *a2 = v19;
LABEL_38:
      *(v7 + 8) = v4;
      return;
    }

    v28 = *(v20 + 8 * v25);
    ++v27;
  }

  while (!v28);
  v26 = __clz(__rbit64(v28));
  for (i = (v28 - 1) & v28; ; i &= i - 1)
  {
    v29 = v26 | (v25 << 6);
    v30 = OUTLINED_FUNCTION_6_1(*(*(*&v3 + 56) + 8 * v29));
    if (!(v13 ^ v14 | v12))
    {
      break;
    }

    if (v30 <= -9.22337204e18)
    {
      goto LABEL_41;
    }

    if (v30 >= 9.22337204e18)
    {
      goto LABEL_42;
    }

    v31 = (*(*&v3 + 48) + 16 * v29);
    v32 = *v31;
    v33 = v31[1];
    v34 = v30;

    if ((v34 & 0x8000000000000000) == 0)
    {
      v36 = v44(v35);
      if (v36 < v34)
      {
        v34 = -1;
      }

      else
      {
        v34 = v36 - v34;
      }
    }

    *(v46 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
    v37 = (v19[6] + 16 * v29);
    *v37 = v32;
    v37[1] = v33;
    *(v19[7] + 8 * v29) = v34;
    v38 = v19[2];
    v14 = __OFADD__(v38, 1);
    v39 = v38 + 1;
    if (v14)
    {
      goto LABEL_43;
    }

    v19[2] = v39;
    v3 = v45;
    if (!i)
    {
      goto LABEL_20;
    }

LABEL_19:
    v26 = __clz(__rbit64(i));
  }

LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
}

void TimeSinceAppLastInstalledSignal.adaptCached(value:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(v2 + 64);
  v8 = *(v2 + 48);
  v9 = v5;
  v10 = *(v2 + 80);
  v6 = v3;
  v7 = v4;
  sub_231566F38(&v6, a2);
}

uint64_t sub_231579108(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_2315793D4(v3, v1, v2);
}

uint64_t sub_231579158(void *a1)
{
  v2 = [a1 bundleID];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_2315861A4();

  return v3;
}

uint64_t sub_2315791C8(uint64_t a1)
{
  v15[3] = &type metadata for SignalComputationContext;
  v15[4] = &protocol witness table for SignalComputationContext;
  v2 = swift_allocObject();
  v15[0] = v2;
  v3 = *a1;
  v16 = *a1;
  v4 = *(a1 + 16);
  v2[1] = *a1;
  v2[2] = v4;
  v2[3] = *(a1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_231588340;
  sub_2314A2C74(v15, v14);
  sub_2314B5008(a1, v13);
  v6 = [BiomeLibrary() App];
  swift_unknownObjectRelease();
  v7 = [v6 Install];
  swift_unknownObjectRelease();
  *(v5 + 56) = &type metadata for TimeSinceAppLastInstalledSignal;
  *(v5 + 64) = &protocol witness table for TimeSinceAppLastInstalledSignal;
  v8 = swift_allocObject();
  *(v5 + 32) = v8;
  if (qword_280D6C958 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v9 = qword_280D6C968;
  *(v8 + 16) = qword_280D6C960;
  *(v8 + 24) = v9;
  v10 = __swift_project_boxed_opaque_existential_1(v14, v14[3]);
  *(v8 + 32) = v3;
  *(v8 + 40) = v7;
  *(v8 + 48) = sub_2314E03E4;
  *(v8 + 56) = 0;
  *(v8 + 64) = *v10;
  *(v8 + 72) = -1;
  *(v8 + 80) = 0;
  *(v8 + 88) = 0;
  *(v8 + 96) = 1;

  sub_2315075A0(&v16, &v12);

  __swift_destroy_boxed_opaque_existential_1(v14);
  __swift_destroy_boxed_opaque_existential_1(v15);
  return v5;
}

uint64_t sub_2315793D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17[3] = a2;
  v17[4] = a3;
  __swift_allocate_boxed_opaque_existential_1(v17);
  (*(*(a2 - 8) + 16))();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_231588340;
  sub_2314A2C74(v17, v14);
  v6 = [BiomeLibrary() App];
  swift_unknownObjectRelease();
  v13 = [v6 Install];
  swift_unknownObjectRelease();
  *(v5 + 56) = &type metadata for TimeSinceAppLastInstalledSignal;
  *(v5 + 64) = &protocol witness table for TimeSinceAppLastInstalledSignal;
  v7 = swift_allocObject();
  *(v5 + 32) = v7;
  if (qword_280D6C958 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v8 = qword_280D6C968;
  *(v7 + 16) = qword_280D6C960;
  *(v7 + 24) = v8;
  v9 = v15;
  v10 = v16;
  __swift_project_boxed_opaque_existential_1(v14, v15);
  v11 = *(a3 + 8);

  *(v7 + 32) = v11(a2, a3);
  *(v7 + 40) = v13;
  *(v7 + 48) = sub_2314E03E4;
  *(v7 + 56) = 0;
  *(v7 + 64) = v11(v9, v10);
  *(v7 + 72) = -1;
  *(v7 + 80) = 0;
  *(v7 + 88) = 0;
  *(v7 + 96) = 1;
  __swift_destroy_boxed_opaque_existential_1(v14);
  __swift_destroy_boxed_opaque_existential_1(v17);
  return v5;
}

uint64_t objectdestroyTm_0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 56);

  v4 = *(v0 + 64);

  return MEMORY[0x2821FE8E8](v0, 97, 7);
}

uint64_t sub_231579690(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 81))
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

uint64_t sub_2315796D0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 81) = 1;
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

    *(result + 81) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t *sub_231579748()
{
  if (qword_280D6F020 != -1)
  {
    OUTLINED_FUNCTION_0_86();
  }

  return &qword_280D6F028;
}

uint64_t sub_23157979C()
{
  result = sub_231586964();
  qword_280D6F028 = result;
  qword_280D6F030 = v1;
  return result;
}

uint64_t static TimeSinceAppLastLaunchedSignal.signalName.getter()
{
  if (qword_280D6F020 != -1)
  {
    OUTLINED_FUNCTION_0_86();
  }

  OUTLINED_FUNCTION_3_38();
  swift_beginAccess();
  v0 = qword_280D6F028;

  return v0;
}

uint64_t static TimeSinceAppLastLaunchedSignal.signalName.setter(uint64_t a1, uint64_t a2)
{
  if (qword_280D6F020 != -1)
  {
    OUTLINED_FUNCTION_0_86();
  }

  swift_beginAccess();
  qword_280D6F028 = a1;
  qword_280D6F030 = a2;
}

uint64_t (*static TimeSinceAppLastLaunchedSignal.signalName.modify())()
{
  if (qword_280D6F020 != -1)
  {
    OUTLINED_FUNCTION_0_86();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_231579934@<X0>(void *a1@<X8>)
{
  sub_231579748();
  swift_beginAccess();
  v2 = qword_280D6F030;
  *a1 = qword_280D6F028;
  a1[1] = v2;
}

uint64_t sub_231579988(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];

  sub_231579748();
  swift_beginAccess();
  qword_280D6F028 = v2;
  qword_280D6F030 = v1;
}

uint64_t TimeSinceAppLastLaunchedSignal.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t static TimeSinceAppLastLaunchedSignal.instances()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_231588340;
  v1 = [BiomeLibrary() App];
  swift_unknownObjectRelease();
  v2 = [v1 InFocus];
  swift_unknownObjectRelease();
  *(v0 + 56) = &type metadata for TimeSinceAppLastLaunchedSignal;
  *(v0 + 64) = &protocol witness table for TimeSinceAppLastLaunchedSignal;
  v3 = swift_allocObject();
  *(v0 + 32) = v3;
  if (qword_280D6F020 != -1)
  {
    OUTLINED_FUNCTION_0_86();
  }

  OUTLINED_FUNCTION_3_38();
  swift_beginAccess();
  v4 = qword_280D6F030;
  *(v3 + 16) = qword_280D6F028;
  *(v3 + 24) = v4;
  *(v3 + 32) = v2;
  *(v3 + 40) = sub_2314E03E4;
  *(v3 + 48) = 0;
  *(v3 + 56) = MEMORY[0x277D84F90];
  *(v3 + 64) = -1;
  *(v3 + 72) = 0;
  *(v3 + 80) = 0;
  *(v3 + 88) = 1;

  return v0;
}

uint64_t static TimeSinceAppLastLaunchedSignal.instances(with:)(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_23157AC90(v3, v1, v2);
}

uint64_t static TimeSinceAppLastLaunchedSignal.instances(context:)(uint64_t *a1)
{
  v1 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_231588340;
  v3 = [BiomeLibrary() App];
  swift_unknownObjectRelease();
  v4 = [v3 InFocus];
  swift_unknownObjectRelease();
  *(v2 + 56) = &type metadata for TimeSinceAppLastLaunchedSignal;
  *(v2 + 64) = &protocol witness table for TimeSinceAppLastLaunchedSignal;
  v5 = swift_allocObject();
  *(v2 + 32) = v5;
  if (qword_280D6F020 != -1)
  {
    OUTLINED_FUNCTION_0_86();
  }

  OUTLINED_FUNCTION_3_38();
  swift_beginAccess();
  v6 = qword_280D6F030;
  *(v5 + 16) = qword_280D6F028;
  *(v5 + 24) = v6;
  *(v5 + 32) = v4;
  *(v5 + 40) = sub_2314E03E4;
  *(v5 + 48) = 0;
  *(v5 + 56) = v1;
  *(v5 + 64) = -1;
  *(v5 + 72) = 0;
  *(v5 + 80) = 0;
  *(v5 + 88) = 1;

  return v2;
}

uint64_t static TimeSinceAppLastLaunchedSignal.parameterization.getter@<X0>(uint64_t *a1@<X8>)
{
  result = sub_231553E24(&unk_284612A68);
  *a1 = result;
  return result;
}

void sub_231579D64(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 8);
  v30 = *a1;
  LOBYTE(v31) = v3;
  swift_unknownObjectRetain();
  sub_2315074D0(v30, v3);
  sub_2314D7108(&v30, &v26);
  v4 = v27;
  if (!v27)
  {
    if (qword_280D70420 != -1)
    {
      OUTLINED_FUNCTION_6_0();
    }

    v21 = sub_231585FF4();
    __swift_project_value_buffer(v21, qword_280D72248);
    v22 = sub_231585FE4();
    v23 = sub_2315865E4();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_231496000, v22, v23, "TimeSinceAppLastLaunchedSignal: Invalid input", v24, 2u);
      OUTLINED_FUNCTION_10();
    }

    goto LABEL_19;
  }

  v5 = v26;
  v6 = v29;
  if ((v28 & 1) == 0)
  {
    v30 = v26;
    v31 = v27;
    sub_2315074E4(&v30);
    v32 = v6;
    sub_231507538(&v32);
LABEL_19:
    v11 = 0;
    v25 = -1;
    goto LABEL_22;
  }

  v7 = sub_23149CA24(v5, v4, v6);
  v9 = v8;

  if (v9)
  {
    v10 = -1;
  }

  else
  {
    v10 = v7;
  }

  swift_isUniquelyReferenced_nonNull_native();
  v30 = v6;
  sub_23157562C();
  v11 = v30;
  if (qword_280D70420 != -1)
  {
    OUTLINED_FUNCTION_6_0();
  }

  v12 = sub_231585FF4();
  __swift_project_value_buffer(v12, qword_280D72248);

  v13 = sub_231585FE4();
  v14 = sub_2315865D4();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v30 = v16;
    *v15 = 136315650;
    *(v15 + 4) = sub_2314A22E8();
    *(v15 + 12) = 2048;
    *(v15 + 14) = v10;
    *(v15 + 22) = 2048;
    v17 = sub_23149CA24(v5, v4, v11);
    v19 = v18;

    if (v19)
    {
      v20 = 0;
    }

    else
    {
      v20 = v17;
    }

    *(v15 + 24) = v20;

    _os_log_impl(&dword_231496000, v13, v14, "TimeSinceAppLastLaunchedSignal#accumulate - updated value for %s from %ld to %ld", v15, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v16);
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_10();
  }

  else
  {

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
  }

  v25 = 1;
LABEL_22:
  *a2 = v11;
  *(a2 + 8) = v25;
}

void TimeSinceAppLastLaunchedSignal.value(completion:)(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BF60, &qword_231587FD0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = &aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &aBlock - v10;
  v12 = *(v2 + 16);
  v13 = swift_allocObject();
  *(v13 + 16) = sub_2315860F4();
  sub_231585794();
  v14 = sub_231585884();
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v14);
  __swift_storeEnumTagSinglePayload(v9, 1, 1, v14);
  v15 = objc_allocWithZone(MEMORY[0x277CF1A50]);
  OUTLINED_FUNCTION_3_38();
  sub_2314B87DC(v16, v17, v18, v19, 0);
  v21 = v20;
  v22 = [v12 publisherWithOptions_];
  if (qword_280D70420 != -1)
  {
    OUTLINED_FUNCTION_6_0();
  }

  v23 = sub_231585FF4();
  __swift_project_value_buffer(v23, qword_280D72248);
  v24 = sub_231585FE4();
  v25 = sub_2315865D4();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_231496000, v24, v25, "TimeSinceAppLastLaunchedSignal starting computation", v26, 2u);
    OUTLINED_FUNCTION_10();
  }

  v27 = swift_allocObject();
  v27[2] = v13;
  v27[3] = a1;
  v27[4] = a2;
  v35 = sub_23157AED4;
  v36 = v27;
  aBlock = MEMORY[0x277D85DD0];
  v32 = 1107296256;
  v33 = sub_2314B901C;
  v34 = &block_descriptor_22;
  v28 = _Block_copy(&aBlock);

  v35 = sub_23157AEE0;
  v36 = v13;
  aBlock = MEMORY[0x277D85DD0];
  v32 = 1107296256;
  v33 = sub_2314B901C;
  v34 = &block_descriptor_11_0;
  v29 = _Block_copy(&aBlock);

  v30 = [v22 sinkWithCompletion:v28 receiveInput:v29];
  _Block_release(v29);
  _Block_release(v28);
}

uint64_t sub_23157A3F8(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *))
{
  if (qword_280D70420 != -1)
  {
    swift_once();
  }

  v5 = sub_231585FF4();
  __swift_project_value_buffer(v5, qword_280D72248);

  v6 = sub_231585FE4();
  v7 = sub_2315865D4();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 136315138;
    swift_beginAccess();
    v10 = *(a2 + 16);

    sub_2315860E4();

    v11 = sub_2314A22E8();

    *(v8 + 4) = v11;
    _os_log_impl(&dword_231496000, v6, v7, "TimeSinceAppLastLaunchedSignal computed (absolute) %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x231931280](v9, -1, -1);
    MEMORY[0x231931280](v8, -1, -1);
  }

  swift_beginAccess();
  v13 = *(a2 + 16);
  v14 = 1;

  a3(&v13);
  return sub_2314A5EEC(v13, v14);
}

void sub_23157A5F0(void *a1, uint64_t a2)
{
  v4 = sub_231585884();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v26 - v10;
  v12 = [a1 eventBody];
  if (!v12)
  {
    return;
  }

  v27 = v12;
  v13 = sub_2314D7528(v12);
  if (!v14)
  {
    goto LABEL_10;
  }

  v15 = v13;
  v16 = v14;
  v17 = [v27 absoluteTimestamp];
  if (!v17)
  {

LABEL_10:
    v24 = v27;

    return;
  }

  v18 = v17;
  sub_231585834();

  (*(v5 + 32))(v11, v9, v4);
  if (([v27 starting] & 1) == 0)
  {
LABEL_8:
    (*(v5 + 8))(v11, v4);

    return;
  }

  v19 = sub_23149C774();
  swift_beginAccess();
  v20 = *(a2 + 16);
  if (*(v20 + 16) && (v21 = sub_23149C888(v15, v16), (v22 & 1) != 0))
  {
    v23 = *(*(v20 + 56) + 8 * v21);
    swift_endAccess();
    if (v23 >= v19)
    {
      goto LABEL_8;
    }
  }

  else
  {
    swift_endAccess();
    if (v19 <= 0)
    {
      goto LABEL_8;
    }
  }

  swift_beginAccess();
  v25 = *(a2 + 16);
  swift_isUniquelyReferenced_nonNull_native();
  v28 = *(a2 + 16);
  sub_23157562C();
  *(a2 + 16) = v28;

  swift_endAccess();

  (*(v5 + 8))(v11, v4);
}

void TimeSinceAppLastLaunchedSignal.derive(from:)(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(v2 + 24);
  v6 = *(v2 + 32);
  v7 = a2;
  switch(v4)
  {
    case 1:
      v40 = *(v2 + 32);
      swift_retain_n();
      v41 = sub_2314EA928(*&v3, v5);

      *v7 = v41;
      goto LABEL_38;
    case 2:
      v11 = OUTLINED_FUNCTION_6_1(*a1);
      if (!(v13 ^ v14 | v12))
      {
        goto LABEL_44;
      }

      if (v11 <= -9.22337204e18)
      {
        goto LABEL_45;
      }

      if (v11 >= 9.22337204e18)
      {
        goto LABEL_46;
      }

      v15 = v11;
      if ((v11 & 0x8000000000000000) == 0)
      {

        v17 = v5(v16);

        if (v17 < v15)
        {
          v15 = -1;
        }

        else
        {
          v15 = v17 - v15;
        }
      }

      *v7 = v15;
      goto LABEL_38;
    case 3:
      v44 = *(v2 + 24);
      v42 = *(a1 + 8);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B880, &unk_231588F00);
      v18 = sub_231586AC4();
      v19 = v18;
      v20 = *&v3 + 64;
      v21 = 1 << *(*&v3 + 32);
      v22 = -1;
      if (v21 < 64)
      {
        v22 = ~(-1 << v21);
      }

      i = v22 & *(*&v3 + 64);
      v24 = (v21 + 63) >> 6;
      v46 = v18 + 64;
      swift_retain_n();
      v25 = 0;
      v45 = v3;
      if (i)
      {
        goto LABEL_19;
      }

      break;
    default:
      if ((*&v3 & 0x8000000000000000) == 0)
      {
        v8 = *(v2 + 32);

        v10 = v5(v9);

        if (v10 < *&v3)
        {
          v3 = NAN;
        }

        else
        {
          *&v3 = v10 - *&v3;
        }
      }

      *v7 = v3;
      goto LABEL_38;
  }

LABEL_20:
  v27 = v25;
  do
  {
    v25 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      __break(1u);
      goto LABEL_40;
    }

    if (v25 >= v24)
    {

      v4 = v42;
      v7 = a2;
      *a2 = v19;
LABEL_38:
      *(v7 + 8) = v4;
      return;
    }

    v28 = *(v20 + 8 * v25);
    ++v27;
  }

  while (!v28);
  v26 = __clz(__rbit64(v28));
  for (i = (v28 - 1) & v28; ; i &= i - 1)
  {
    v29 = v26 | (v25 << 6);
    v30 = OUTLINED_FUNCTION_6_1(*(*(*&v3 + 56) + 8 * v29));
    if (!(v13 ^ v14 | v12))
    {
      break;
    }

    if (v30 <= -9.22337204e18)
    {
      goto LABEL_41;
    }

    if (v30 >= 9.22337204e18)
    {
      goto LABEL_42;
    }

    v31 = (*(*&v3 + 48) + 16 * v29);
    v32 = *v31;
    v33 = v31[1];
    v34 = v30;

    if ((v34 & 0x8000000000000000) == 0)
    {
      v36 = v44(v35);
      if (v36 < v34)
      {
        v34 = -1;
      }

      else
      {
        v34 = v36 - v34;
      }
    }

    *(v46 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
    v37 = (v19[6] + 16 * v29);
    *v37 = v32;
    v37[1] = v33;
    *(v19[7] + 8 * v29) = v34;
    v38 = v19[2];
    v14 = __OFADD__(v38, 1);
    v39 = v38 + 1;
    if (v14)
    {
      goto LABEL_43;
    }

    v19[2] = v39;
    v3 = v45;
    if (!i)
    {
      goto LABEL_20;
    }

LABEL_19:
    v26 = __clz(__rbit64(i));
  }

LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
}

void TimeSinceAppLastLaunchedSignal.adaptCached(value:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(v2 + 56);
  v8 = *(v2 + 40);
  v9 = v5;
  v10 = *(v2 + 72);
  v6 = v3;
  v7 = v4;
  sub_231566F38(&v6, a2);
}

uint64_t sub_23157AC18(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_23157AC90(v3, v1, v2);
}

uint64_t sub_23157AC90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_231588340;
  v10 = [BiomeLibrary() App];
  swift_unknownObjectRelease();
  v11 = [v10 InFocus];
  swift_unknownObjectRelease();
  *(v9 + 56) = &type metadata for TimeSinceAppLastLaunchedSignal;
  *(v9 + 64) = &protocol witness table for TimeSinceAppLastLaunchedSignal;
  v12 = swift_allocObject();
  *(v9 + 32) = v12;
  if (qword_280D6F020 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v13 = qword_280D6F030;
  *(v12 + 16) = qword_280D6F028;
  *(v12 + 24) = v13;
  *(v12 + 32) = v11;
  *(v12 + 40) = sub_2314E03E4;
  *(v12 + 48) = 0;
  v14 = *(a3 + 8);

  *(v12 + 56) = v14(a2, a3);
  *(v12 + 64) = -1;
  *(v12 + 72) = 0;
  *(v12 + 80) = 0;
  *(v12 + 88) = 1;
  (*(v5 + 8))(v8, a2);
  return v9;
}

uint64_t sub_23157AF14()
{
  result = sub_231586964();
  qword_280D6C9B0 = result;
  qword_280D6C9B8 = v1;
  return result;
}

uint64_t *sub_23157AF48()
{
  if (qword_280D6C9A8 != -1)
  {
    OUTLINED_FUNCTION_0_87();
  }

  return &qword_280D6C9B0;
}

uint64_t static TimeSpentInAppAffinityScore.signalName.getter()
{
  if (qword_280D6C9A8 != -1)
  {
    OUTLINED_FUNCTION_0_87();
  }

  OUTLINED_FUNCTION_3_38();
  swift_beginAccess();
  v0 = qword_280D6C9B0;

  return v0;
}

uint64_t static TimeSpentInAppAffinityScore.signalName.setter(uint64_t a1, uint64_t a2)
{
  if (qword_280D6C9A8 != -1)
  {
    OUTLINED_FUNCTION_0_87();
  }

  swift_beginAccess();
  qword_280D6C9B0 = a1;
  qword_280D6C9B8 = a2;
}

uint64_t (*static TimeSpentInAppAffinityScore.signalName.modify())()
{
  if (qword_280D6C9A8 != -1)
  {
    OUTLINED_FUNCTION_0_87();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_23157B0EC@<X0>(void *a1@<X8>)
{
  sub_23157AF48();
  swift_beginAccess();
  v2 = qword_280D6C9B8;
  *a1 = qword_280D6C9B0;
  a1[1] = v2;
}

uint64_t sub_23157B140(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];

  sub_23157AF48();
  swift_beginAccess();
  qword_280D6C9B0 = v2;
  qword_280D6C9B8 = v1;
}

uint64_t TimeSpentInAppAffinityScore.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t static TimeSpentInAppAffinityScore.instances()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_231588340;
  v1 = [BiomeLibrary() App];
  swift_unknownObjectRelease();
  v2 = [v1 InFocus];
  swift_unknownObjectRelease();
  *(v0 + 56) = &type metadata for TimeSpentInAppAffinityScore;
  *(v0 + 64) = &protocol witness table for TimeSpentInAppAffinityScore;
  if (qword_280D6C9A8 != -1)
  {
    OUTLINED_FUNCTION_0_87();
  }

  OUTLINED_FUNCTION_3_38();
  swift_beginAccess();
  v3 = qword_280D6C9B8;
  *(v0 + 32) = qword_280D6C9B0;
  *(v0 + 40) = v3;
  *(v0 + 48) = v2;

  return v0;
}

uint64_t static TimeSpentInAppAffinityScore.instances(with:)(void *a1)
{
  v1 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);

  return sub_23157BFCC();
}

uint64_t static TimeSpentInAppAffinityScore.instances(context:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_231588340;
  v1 = [BiomeLibrary() App];
  swift_unknownObjectRelease();
  v2 = [v1 InFocus];
  swift_unknownObjectRelease();
  *(v0 + 56) = &type metadata for TimeSpentInAppAffinityScore;
  *(v0 + 64) = &protocol witness table for TimeSpentInAppAffinityScore;
  if (qword_280D6C9A8 != -1)
  {
    OUTLINED_FUNCTION_0_87();
  }

  OUTLINED_FUNCTION_3_38();
  swift_beginAccess();
  v3 = qword_280D6C9B8;
  *(v0 + 32) = qword_280D6C9B0;
  *(v0 + 40) = v3;
  *(v0 + 48) = v2;

  return v0;
}

uint64_t static TimeSpentInAppAffinityScore.parameterization.getter@<X0>(uint64_t *a1@<X8>)
{
  result = sub_231553E24(&unk_284612A40);
  *a1 = result;
  return result;
}

void TimeSpentInAppAffinityScore.value(completion:)(uint64_t a1, uint64_t a2)
{
  v33 = a1;
  v34 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BF60, &qword_231587FD0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v32 - v8;
  v11 = *v2;
  v10 = v2[1];
  v12 = v2[2];
  v13 = swift_allocObject();
  type metadata accessor for Aggregation();
  *(v13 + 16) = sub_2315860F4();
  v14 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B1F8, &unk_231588F10);
  *(v14 + 16) = sub_2315860F4();
  sub_231585794();
  v15 = sub_231585884();
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v15);
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v15);
  v16 = objc_allocWithZone(MEMORY[0x277CF1A50]);
  OUTLINED_FUNCTION_3_38();
  sub_2314B87DC(v17, v18, v19, v20, 0);
  v35 = v21;
  v32 = [v12 publisherWithOptions_];
  v22 = swift_allocObject();
  v22[2] = v13;
  v22[3] = v11;
  v23 = v11;
  v22[4] = v10;
  v22[5] = v12;
  v24 = v34;
  v22[6] = v33;
  v22[7] = v24;
  v40 = sub_23157C0F0;
  v41 = v22;
  aBlock = MEMORY[0x277D85DD0];
  v37 = 1107296256;
  v38 = sub_2314B901C;
  v39 = &block_descriptor_23;
  v25 = _Block_copy(&aBlock);

  v26 = v12;

  v27 = swift_allocObject();
  v27[2] = v23;
  v27[3] = v10;
  v27[4] = v26;
  v27[5] = v13;
  v27[6] = v14;
  v40 = sub_23157C100;
  v41 = v27;
  aBlock = MEMORY[0x277D85DD0];
  v37 = 1107296256;
  v38 = sub_2314B901C;
  v39 = &block_descriptor_13_2;
  v28 = _Block_copy(&aBlock);

  v29 = v26;

  v30 = v32;
  v31 = [v32 sinkWithCompletion:v25 receiveInput:v28];
  _Block_release(v28);
  _Block_release(v25);
}

uint64_t sub_23157B804(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void (*a6)(uint64_t *))
{
  swift_beginAccess();
  v9 = *(a2 + 16);

  v11 = sub_2314E40FC(v10);
  if (qword_280D70420 != -1)
  {
    swift_once();
  }

  v12 = sub_231585FF4();
  __swift_project_value_buffer(v12, qword_280D72248);

  v13 = a5;

  v14 = sub_231585FE4();
  v15 = sub_2315865D4();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v20 = v17;
    *v16 = 136315394;
    *(v16 + 4) = sub_2314A22E8();
    *(v16 + 12) = 2080;
    sub_2315860E4();
    v18 = sub_2314A22E8();

    *(v16 + 14) = v18;
    _os_log_impl(&dword_231496000, v14, v15, "%s value: %s", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x231931280](v17, -1, -1);
    MEMORY[0x231931280](v16, -1, -1);
  }

  v20 = v11;
  v21 = 3;
  a6(&v20);
  return sub_2314A5EEC(v20, v21);
}

void sub_23157BA2C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = MEMORY[0x231930B10]();
  swift_beginAccess();
  swift_beginAccess();
  sub_23157BAE4(a1, (a5 + 16), (a6 + 16));
  swift_endAccess();
  swift_endAccess();
  objc_autoreleasePoolPop(v9);
}

void sub_23157BAE4(void *a1, uint64_t **a2, uint64_t **a3)
{
  v7 = sub_231585884();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v12 = v3[1];
  v14 = v3[2];
  v15 = [a1 eventBody];
  if (!v15)
  {
    return;
  }

  v47 = v8;
  v48 = v15;
  v16 = sub_2314D7528(v15);
  if (v17)
  {
    v18 = v16;
    v19 = v17;
    v20 = [v48 absoluteTimestamp];
    if (v20)
    {
      v21 = v20;
      sub_231585834();

      v22 = *a3;
      v23 = 0.0;
      if (*a3)[2] && (v24 = sub_23149C888(v18, v19), (v25))
      {
        v26 = v22[7] + 16 * v24;
        v23 = *v26;
        v27 = *(v26 + 8);
      }

      else
      {
        v27 = 1;
      }

      if ([v48 starting])
      {
        sub_231585784();
        v29 = v28;
        v30 = *a3;
        swift_isUniquelyReferenced_nonNull_native();
        v49 = *a3;
        sub_231575D98(v29, 0, v18, v19);

        *a3 = v49;
      }

      else
      {
        if (v27)
        {

          if (qword_280D70420 != -1)
          {
            swift_once();
          }

          v32 = sub_231585FF4();
          __swift_project_value_buffer(v32, qword_280D72248);

          v33 = v14;
          v34 = sub_231585FE4();
          v35 = sub_2315865D4();

          if (os_log_type_enabled(v34, v35))
          {
            v36 = swift_slowAlloc();
            v37 = swift_slowAlloc();
            v49 = v37;
            *v36 = 136315138;

            v38 = sub_2314A22E8();

            *(v36 + 4) = v38;
            _os_log_impl(&dword_231496000, v34, v35, "%s ignoring extra app close event", v36, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v37);
            MEMORY[0x231931280](v37, -1, -1);
            MEMORY[0x231931280](v36, -1, -1);
          }
        }

        else
        {
          v39 = *a2;
          if (*a2)[2] && (v40 = sub_23149C888(v18, v19), (v41))
          {
            v42 = *(v39[7] + 8 * v40);
          }

          else
          {
            sub_2314B676C();
            v43 = sub_2315860F4();
            type metadata accessor for Aggregation();
            swift_allocObject();
            sub_2314B53E8(v43);
          }

          sub_231585784();
          sub_2314B59E4(v23, v44);

          v45 = *a2;
          swift_isUniquelyReferenced_nonNull_native();
          v49 = *a2;
          sub_2315760F4();
          *a2 = v49;
          sub_231561958(v18, v19);
        }
      }

      (*(v47 + 8))(v11, v7);
      return;
    }
  }

  v31 = v48;
}

uint64_t sub_23157BF6C(void *a1)
{
  v1 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);

  return sub_23157BFCC();
}

uint64_t sub_23157BFCC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_231588340;
  v1 = [BiomeLibrary() App];
  swift_unknownObjectRelease();
  v2 = [v1 InFocus];
  swift_unknownObjectRelease();
  *(v0 + 56) = &type metadata for TimeSpentInAppAffinityScore;
  *(v0 + 64) = &protocol witness table for TimeSpentInAppAffinityScore;
  if (qword_280D6C9A8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = qword_280D6C9B8;
  *(v0 + 32) = qword_280D6C9B0;
  *(v0 + 40) = v3;
  *(v0 + 48) = v2;

  return v0;
}

uint64_t *sub_23157C128()
{
  if (qword_27DD5AE50 != -1)
  {
    OUTLINED_FUNCTION_0_88();
  }

  return &qword_27DD5C198;
}

uint64_t sub_23157C17C()
{
  result = sub_231586964();
  qword_27DD5C198 = result;
  qword_27DD5C1A0 = v1;
  return result;
}

uint64_t static TimeTodaySpentInApp.signalName.getter()
{
  if (qword_27DD5AE50 != -1)
  {
    OUTLINED_FUNCTION_0_88();
  }

  OUTLINED_FUNCTION_3_38();
  swift_beginAccess();
  v0 = qword_27DD5C198;

  return v0;
}

uint64_t static TimeTodaySpentInApp.signalName.setter(uint64_t a1, uint64_t a2)
{
  if (qword_27DD5AE50 != -1)
  {
    OUTLINED_FUNCTION_0_88();
  }

  swift_beginAccess();
  qword_27DD5C198 = a1;
  qword_27DD5C1A0 = a2;
}

uint64_t (*static TimeTodaySpentInApp.signalName.modify())()
{
  if (qword_27DD5AE50 != -1)
  {
    OUTLINED_FUNCTION_0_88();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_23157C314@<X0>(void *a1@<X8>)
{
  sub_23157C128();
  swift_beginAccess();
  v2 = qword_27DD5C1A0;
  *a1 = qword_27DD5C198;
  a1[1] = v2;
}

uint64_t sub_23157C368(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];

  sub_23157C128();
  swift_beginAccess();
  qword_27DD5C198 = v2;
  qword_27DD5C1A0 = v1;
}

uint64_t TimeTodaySpentInApp.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

double TimeTodaySpentInApp.cacheExpirationPolicy()@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_2314A1DFC(24, 2);

  result = v2;
  *a1 = v2;
  *(a1 + 8) = 0;
  return result;
}

uint64_t static TimeTodaySpentInApp.instances()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_231588340;
  v1 = [BiomeLibrary() App];
  swift_unknownObjectRelease();
  v2 = [v1 InFocus];
  swift_unknownObjectRelease();
  *(v0 + 56) = &type metadata for TimeTodaySpentInApp;
  *(v0 + 64) = &protocol witness table for TimeTodaySpentInApp;
  v3 = swift_allocObject();
  *(v0 + 32) = v3;
  if (qword_27DD5AE50 != -1)
  {
    OUTLINED_FUNCTION_0_88();
  }

  OUTLINED_FUNCTION_3_38();
  swift_beginAccess();
  v4 = qword_27DD5C1A0;
  *(v3 + 16) = qword_27DD5C198;
  *(v3 + 24) = v4;
  *(v3 + 32) = v2;
  *(v3 + 40) = sub_2314E03E4;
  *(v3 + 48) = 0;
  *(v3 + 56) = MEMORY[0x277D84F90];
  *(v3 + 64) = 0;
  *(v3 + 72) = 0;
  *(v3 + 80) = 0;
  *(v3 + 88) = 1;

  return v0;
}

uint64_t static TimeTodaySpentInApp.instances(with:)(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_23157DA08(v3, v1, v2);
}

uint64_t static TimeTodaySpentInApp.instances(context:)(uint64_t *a1)
{
  v1 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_231588340;
  v3 = [BiomeLibrary() App];
  swift_unknownObjectRelease();
  v4 = [v3 InFocus];
  swift_unknownObjectRelease();
  *(v2 + 56) = &type metadata for TimeTodaySpentInApp;
  *(v2 + 64) = &protocol witness table for TimeTodaySpentInApp;
  v5 = swift_allocObject();
  *(v2 + 32) = v5;
  if (qword_27DD5AE50 != -1)
  {
    OUTLINED_FUNCTION_0_88();
  }

  OUTLINED_FUNCTION_3_38();
  swift_beginAccess();
  v6 = qword_27DD5C1A0;
  *(v5 + 16) = qword_27DD5C198;
  *(v5 + 24) = v6;
  *(v5 + 32) = v4;
  *(v5 + 40) = sub_2314E03E4;
  *(v5 + 48) = 0;
  *(v5 + 56) = v1;
  *(v5 + 64) = 0;
  *(v5 + 72) = 0;
  *(v5 + 80) = 0;
  *(v5 + 88) = 1;

  return v2;
}

uint64_t static TimeTodaySpentInApp.parameterization.getter@<X0>(uint64_t *a1@<X8>)
{
  result = sub_231553E24(&unk_2846129F0);
  *a1 = result;
  return result;
}

uint64_t TimeTodaySpentInApp.value(completion:)(uint64_t a1, uint64_t a2)
{
  v66 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BF60, &qword_231587FD0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v65 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v64 = &v57 - v8;
  v9 = sub_231585884();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v57 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v57 - v16;
  memcpy(__dst, v2, 0x49uLL);
  v18 = swift_allocObject();
  *(v18 + 16) = sub_2315860F4();
  v19 = (__dst[3])();
  v20 = sub_2314A1DFC(24, 2);

  if (__OFSUB__(v19, v20))
  {
    __break(1u);
  }

  else
  {
    v61 = v11;
    v60 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    v62 = a1;
    sub_231585774();
    if (qword_280D70420 == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  v63 = v18;
  v21 = sub_231585FF4();
  __swift_project_value_buffer(v21, qword_280D72248);
  v22 = *(v10 + 16);
  v23 = v15;
  v22(v15, v17, v9);
  v24 = sub_231585FE4();
  v25 = sub_2315865D4();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    aBlock = v58;
    *v26 = 136315138;
    v27 = v60;
    v22(v60, v23, v9);
    sub_2314E0124(v27);
    v57 = v22;
    v59 = v17;
    v28 = OUTLINED_FUNCTION_1_44(v10);
    v29(v28, v9);
    v30 = sub_2314A22E8();
    v17 = v59;

    *(v26 + 4) = v30;
    _os_log_impl(&dword_231496000, v24, v25, "Filtering start time to [%s]", v26, 0xCu);
    v31 = v58;
    __swift_destroy_boxed_opaque_existential_1(v58);
    MEMORY[0x231931280](v31, -1, -1);
    v32 = v26;
    v33 = v27;
    v34 = v57;
    MEMORY[0x231931280](v32, -1, -1);
  }

  else
  {

    v35 = OUTLINED_FUNCTION_1_44(v10);
    v36(v35, v9);
    v33 = v60;
    v34 = v22;
  }

  v37 = v64;
  v34(v64, v17, v9);
  __swift_storeEnumTagSinglePayload(v37, 0, 1, v9);
  __swift_storeEnumTagSinglePayload(v65, 1, 1, v9);
  v38 = objc_allocWithZone(MEMORY[0x277CF1A50]);
  OUTLINED_FUNCTION_3_38();
  sub_2314B87DC(v39, v40, v41, v42, 0);
  v44 = v43;
  v45 = [__dst[2] publisherWithOptions_];
  v34(v33, v17, v9);
  v46 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v47 = swift_allocObject();
  (*(v10 + 32))(v47 + v46, v33, v9);
  v71 = sub_23157DC48;
  v72 = v47;
  aBlock = MEMORY[0x277D85DD0];
  v68 = 1107296256;
  v69 = sub_2315226A0;
  v70 = &block_descriptor_24;
  v48 = _Block_copy(&aBlock);

  v49 = [v45 filterWithIsIncluded_];
  _Block_release(v48);
  v50 = swift_allocObject();
  v51 = v63;
  v52 = v62;
  v50[2] = v63;
  v50[3] = v52;
  v50[4] = v66;
  memcpy(v50 + 5, __dst, 0x49uLL);
  v73[4] = sub_23157DCB8;
  v73[5] = v50;
  v73[0] = MEMORY[0x277D85DD0];
  v73[1] = 1107296256;
  v73[2] = sub_2314B901C;
  v73[3] = &block_descriptor_14;
  v53 = _Block_copy(v73);

  sub_23155A900(__dst, &aBlock);

  v71 = sub_23157DCC8;
  v72 = v51;
  aBlock = MEMORY[0x277D85DD0];
  v68 = 1107296256;
  v69 = sub_2314B901C;
  v70 = &block_descriptor_17_0;
  v54 = _Block_copy(&aBlock);

  v55 = [v49 sinkWithCompletion:v53 receiveInput:v54];
  _Block_release(v54);
  _Block_release(v53);

  (*(v10 + 8))(v17, v9);
}

id sub_23157CF1C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BF60, &qword_231587FD0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - v7;
  result = [a1 eventBody];
  if (result)
  {
    v10 = result;
    v11 = [result absoluteTimestamp];

    if (v11)
    {
      sub_231585834();

      v12 = sub_231585884();
      v13 = 0;
    }

    else
    {
      v12 = sub_231585884();
      v13 = 1;
    }

    __swift_storeEnumTagSinglePayload(v6, v13, 1, v12);
    sub_2314A0710(v6, v8);
    sub_231585884();
    if (__swift_getEnumTagSinglePayload(v8, 1, v12) == 1)
    {
      sub_2314BA0FC(v8);
      return 0;
    }

    else
    {
      sub_231585784();
      v15 = v14;
      (*(*(v12 - 8) + 8))(v8, v12);
      sub_231585784();
      return (v16 <= v15);
    }
  }

  return result;
}

uint64_t sub_23157D0D4(uint64_t a1, uint64_t a2, void (*a3)(void **), uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  v7 = *(a2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B188, &unk_231588590);
  v8 = sub_231586AC4();
  v9 = v8;
  v10 = 0;
  v11 = 1 << *(v7 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(v7 + 64);
  v14 = (v11 + 63) >> 6;
  v15 = v8 + 64;
  if (v13)
  {
    while (1)
    {
      v16 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_10:
      v19 = v16 | (v10 << 6);
      v20 = (*(v7 + 48) + 16 * v19);
      v22 = *v20;
      v21 = v20[1];
      v23 = *(*(v7 + 56) + 24 * v19 + 16);
      *(v15 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      v24 = (v9[6] + 16 * v19);
      *v24 = v22;
      v24[1] = v21;
      *(v9[7] + 8 * v19) = v23;
      v25 = v9[2];
      v26 = __OFADD__(v25, 1);
      v27 = v25 + 1;
      if (v26)
      {
        break;
      }

      v9[2] = v27;

      if (!v13)
      {
        goto LABEL_5;
      }
    }

LABEL_18:
    __break(1u);
LABEL_19:
    swift_once();
  }

  else
  {
LABEL_5:
    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_18;
      }

      if (v10 >= v14)
      {
        break;
      }

      v18 = *(v7 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v13 = (v18 - 1) & v18;
        goto LABEL_10;
      }
    }

    if (qword_280D70420 != -1)
    {
      goto LABEL_19;
    }
  }

  v28 = sub_231585FF4();
  __swift_project_value_buffer(v28, qword_280D72248);

  v29 = sub_231585FE4();
  v30 = sub_2315865D4();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *&v41 = v32;
    *v31 = 136315138;
    sub_2315860E4();
    v33 = sub_2314A22E8();

    *(v31 + 4) = v33;
    _os_log_impl(&dword_231496000, v29, v30, "TimeTodaySpentInApp computed (absolute) %s", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v32);
    MEMORY[0x231931280](v32, -1, -1);
    MEMORY[0x231931280](v31, -1, -1);
  }

  v34 = *(a5 + 56);
  v41 = *(a5 + 40);
  v42 = v34;
  v43 = *(a5 + 72);
  v37 = v9;
  v38 = 1;
  sub_231566F38(&v37, &v39);

  v37 = v39;
  v38 = v40;
  a3(&v37);
  return sub_2314A5EEC(v37, v38);
}

void TimeTodaySpentInApp.adaptCached(value:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(v2 + 56);
  v8 = *(v2 + 40);
  v9 = v5;
  v10 = *(v2 + 72);
  v6 = v3;
  v7 = v4;
  sub_231566F38(&v6, a2);
}

void sub_23157D438(void *a1, uint64_t a2)
{
  v4 = MEMORY[0x231930B10]();
  sub_23157D498(a1, (a2 + 16));

  objc_autoreleasePoolPop(v4);
}

void sub_23157D498(void *a1, uint64_t *a2)
{
  v5 = sub_231585884();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v45 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v45 - v14;
  v16 = [a1 eventBody];
  if (!v16)
  {
    return;
  }

  v17 = v16;
  v53 = sub_2314D7528(v16);
  if (!v18)
  {
LABEL_9:

    return;
  }

  v19 = v18;
  v52 = a2;
  v20 = [v17 absoluteTimestamp];
  if (!v20)
  {

    goto LABEL_9;
  }

  v21 = v20;
  sub_231585834();

  if (qword_280D70420 != -1)
  {
    swift_once();
  }

  v22 = sub_231585FF4();
  __swift_project_value_buffer(v22, qword_280D72248);
  v49 = v6;
  v47 = *(v6 + 16);
  v47(v13, v15, v5);

  v23 = v17;
  v24 = sub_231585FE4();
  v48 = v5;
  v25 = v24;
  v26 = sub_2315865D4();

  v56 = v26;
  v27 = v26;
  v28 = v25;
  v29 = os_log_type_enabled(v25, v27);
  v50 = v23;
  v51 = v2;
  if (v29)
  {
    v30 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v54[0] = v46;
    *v30 = 136315650;
    *(v30 + 4) = sub_2314A22E8();
    *(v30 + 12) = 1024;
    *(v30 + 14) = [v23 starting];

    *(v30 + 18) = 2080;
    v31 = v48;
    v47(v10, v13, v48);
    sub_2314E0124(v10);
    v32 = v13;
    v33 = *(v49 + 8);
    v33(v32, v31);
    v34 = sub_2314A22E8();

    *(v30 + 20) = v34;
    v35 = v53;
    _os_log_impl(&dword_231496000, v28, v56, "TimeTodaySpentInApp: %s/%{BOOL}d/%s", v30, 0x1Cu);
    v36 = v46;
    swift_arrayDestroy();
    MEMORY[0x231931280](v36, -1, -1);
    MEMORY[0x231931280](v30, -1, -1);
  }

  else
  {

    v31 = v48;
    v37 = v13;
    v33 = *(v49 + 8);
    v33(v37, v48);
    v35 = v53;
  }

  v38 = v52;
  swift_beginAccess();
  sub_231566BF0(v35, v19, *v38);
  v40 = v39;
  swift_endAccess();
  if (v40)
  {
    swift_beginAccess();
    v41 = *v38;
    swift_isUniquelyReferenced_nonNull_native();
    v55 = *v38;
    sub_231576418(0, 1, 0, v35, v19);
    *v52 = v55;
    swift_endAccess();
  }

  swift_beginAccess();
  v42 = sub_23157DD30(v54, v35, v19);
  if (*(v43 + 24) == 1)
  {
    (v42)(v54, 0);
    v44 = v50;
  }

  else
  {
    v44 = v50;
    sub_2314B9F0C(v50);
    (v42)(v54, 0);
  }

  swift_endAccess();

  v33(v15, v31);
}

uint64_t sub_23157D9A8(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_23157DA08(v3, v1, v2);
}

uint64_t sub_23157DA08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_231588340;
  v10 = [BiomeLibrary() App];
  swift_unknownObjectRelease();
  v11 = [v10 InFocus];
  swift_unknownObjectRelease();
  *(v9 + 56) = &type metadata for TimeTodaySpentInApp;
  *(v9 + 64) = &protocol witness table for TimeTodaySpentInApp;
  v12 = swift_allocObject();
  *(v9 + 32) = v12;
  if (qword_27DD5AE50 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v13 = qword_27DD5C1A0;
  *(v12 + 16) = qword_27DD5C198;
  *(v12 + 24) = v13;
  *(v12 + 32) = v11;
  *(v12 + 40) = sub_2314E03E4;
  *(v12 + 48) = 0;
  v14 = *(a3 + 8);

  *(v12 + 56) = v14(a2, a3);
  *(v12 + 64) = 0;
  *(v12 + 72) = 0;
  *(v12 + 80) = 0;
  *(v12 + 88) = 1;
  (*(v5 + 8))(v8, a2);
  return v9;
}

id sub_23157DC48(void *a1)
{
  v2 = *(*(sub_231585884() - 8) + 80);

  return sub_23157CF1C(a1);
}

uint64_t *sub_23157DCF0()
{
  if (qword_280D6D5F8 != -1)
  {
    OUTLINED_FUNCTION_0_89();
  }

  return &qword_280D6D600;
}

void (*sub_23157DD30(void *a1, uint64_t a2, uint64_t a3))(void *a1)
{
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  v6[4] = sub_23157ECA4(v6, a2, a3);
  return sub_23157DDA4;
}

void sub_23157DDA4(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_23157DE04()
{
  result = sub_231586964();
  qword_280D6D600 = result;
  qword_280D6D608 = v1;
  return result;
}

uint64_t static TotalTimeSpentInApp.signalName.getter()
{
  if (qword_280D6D5F8 != -1)
  {
    OUTLINED_FUNCTION_0_89();
  }

  OUTLINED_FUNCTION_3_38();
  swift_beginAccess();
  v0 = qword_280D6D600;

  return v0;
}

uint64_t static TotalTimeSpentInApp.signalName.setter(uint64_t a1, uint64_t a2)
{
  if (qword_280D6D5F8 != -1)
  {
    OUTLINED_FUNCTION_0_89();
  }

  swift_beginAccess();
  qword_280D6D600 = a1;
  qword_280D6D608 = a2;
}

uint64_t (*static TotalTimeSpentInApp.signalName.modify())()
{
  if (qword_280D6D5F8 != -1)
  {
    OUTLINED_FUNCTION_0_89();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_23157DF9C@<X0>(void *a1@<X8>)
{
  sub_23157DCF0();
  swift_beginAccess();
  v2 = qword_280D6D608;
  *a1 = qword_280D6D600;
  a1[1] = v2;
}

uint64_t sub_23157DFF0(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];

  sub_23157DCF0();
  swift_beginAccess();
  qword_280D6D600 = v2;
  qword_280D6D608 = v1;
}

uint64_t TotalTimeSpentInApp.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

double TotalTimeSpentInApp.cacheExpirationPolicy()@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_2314A1DFC(24, 2);

  result = v2;
  *a1 = v2;
  *(a1 + 8) = 0;
  return result;
}

uint64_t static TotalTimeSpentInApp.instances()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_231588340;
  v1 = [BiomeLibrary() App];
  swift_unknownObjectRelease();
  v2 = [v1 InFocus];
  swift_unknownObjectRelease();
  *(v0 + 56) = &type metadata for TotalTimeSpentInApp;
  *(v0 + 64) = &protocol witness table for TotalTimeSpentInApp;
  v3 = swift_allocObject();
  *(v0 + 32) = v3;
  if (qword_280D6D5F8 != -1)
  {
    OUTLINED_FUNCTION_0_89();
  }

  OUTLINED_FUNCTION_3_38();
  swift_beginAccess();
  v4 = qword_280D6D608;
  *(v3 + 16) = qword_280D6D600;
  *(v3 + 24) = v4;
  v5 = MEMORY[0x277D84F90];
  *(v3 + 32) = v2;
  *(v3 + 40) = v5;
  *(v3 + 48) = 0;
  *(v3 + 56) = 0;
  *(v3 + 64) = 0;
  *(v3 + 72) = 1;

  return v0;
}

uint64_t static TotalTimeSpentInApp.instances(with:)(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_23157F014(v3, v1, v2);
}

uint64_t static TotalTimeSpentInApp.instances(context:)(uint64_t *a1)
{
  v1 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_231588340;
  v3 = [BiomeLibrary() App];
  swift_unknownObjectRelease();
  v4 = [v3 InFocus];
  swift_unknownObjectRelease();
  *(v2 + 56) = &type metadata for TotalTimeSpentInApp;
  *(v2 + 64) = &protocol witness table for TotalTimeSpentInApp;
  v5 = swift_allocObject();
  *(v2 + 32) = v5;
  if (qword_280D6D5F8 != -1)
  {
    OUTLINED_FUNCTION_0_89();
  }

  OUTLINED_FUNCTION_3_38();
  swift_beginAccess();
  v6 = qword_280D6D608;
  *(v5 + 16) = qword_280D6D600;
  *(v5 + 24) = v6;
  *(v5 + 32) = v4;
  *(v5 + 40) = v1;
  *(v5 + 48) = 0;
  *(v5 + 56) = 0;
  *(v5 + 64) = 0;
  *(v5 + 72) = 1;

  return v2;
}

uint64_t static TotalTimeSpentInApp.parameterization.getter@<X0>(uint64_t *a1@<X8>)
{
  result = sub_231553E24(&unk_284612A18);
  *a1 = result;
  return result;
}

void TotalTimeSpentInApp.value(completion:)(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BF60, &qword_231587FD0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v28 - v10;
  v12 = v2[1];
  v30 = *v2;
  v31 = v12;
  v32[0] = v2[2];
  *(v32 + 9) = *(v2 + 41);
  v13 = swift_allocObject();
  *(v13 + 16) = sub_2315860F4();
  sub_231585794();
  v14 = sub_231585884();
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v14);
  __swift_storeEnumTagSinglePayload(v9, 1, 1, v14);
  v15 = objc_allocWithZone(MEMORY[0x277CF1A50]);
  OUTLINED_FUNCTION_3_38();
  sub_2314B87DC(v16, v17, v18, v19, 0);
  v21 = v20;
  v22 = [v31 publisherWithOptions_];
  v23 = swift_allocObject();
  v24 = v31;
  *(v23 + 40) = v30;
  *(v23 + 16) = v13;
  *(v23 + 24) = a1;
  *(v23 + 32) = a2;
  *(v23 + 56) = v24;
  *(v23 + 72) = v32[0];
  *(v23 + 81) = *(v32 + 9);
  aBlock[4] = sub_23157F240;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2314B901C;
  aBlock[3] = &block_descriptor_25;
  v25 = _Block_copy(aBlock);

  sub_23155A898(&v30, v28);

  v28[4] = sub_23157F250;
  v28[5] = v13;
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 1107296256;
  v28[2] = sub_2314B901C;
  v28[3] = &block_descriptor_11_1;
  v26 = _Block_copy(v28);

  v27 = [v22 sinkWithCompletion:v25 receiveInput:v26];
  _Block_release(v26);
  _Block_release(v25);
}

uint64_t sub_23157E6EC(uint64_t a1, uint64_t a2, void (*a3)(void **), uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  v7 = *(a2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B188, &unk_231588590);
  v8 = sub_231586AC4();
  v9 = v8;
  v10 = 0;
  v11 = 1 << *(v7 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(v7 + 64);
  v14 = (v11 + 63) >> 6;
  v15 = v8 + 64;
  if (v13)
  {
    while (1)
    {
      v16 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_10:
      v19 = v16 | (v10 << 6);
      v20 = (*(v7 + 48) + 16 * v19);
      v22 = *v20;
      v21 = v20[1];
      v23 = *(*(v7 + 56) + 24 * v19 + 16);
      *(v15 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      v24 = (v9[6] + 16 * v19);
      *v24 = v22;
      v24[1] = v21;
      *(v9[7] + 8 * v19) = v23;
      v25 = v9[2];
      v26 = __OFADD__(v25, 1);
      v27 = v25 + 1;
      if (v26)
      {
        break;
      }

      v9[2] = v27;

      if (!v13)
      {
        goto LABEL_5;
      }
    }

LABEL_18:
    __break(1u);
LABEL_19:
    swift_once();
  }

  else
  {
LABEL_5:
    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_18;
      }

      if (v10 >= v14)
      {
        break;
      }

      v18 = *(v7 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v13 = (v18 - 1) & v18;
        goto LABEL_10;
      }
    }

    if (qword_280D70420 != -1)
    {
      goto LABEL_19;
    }
  }

  v28 = sub_231585FF4();
  __swift_project_value_buffer(v28, qword_280D72248);

  v29 = sub_231585FE4();
  v30 = sub_2315865D4();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *&v41 = v32;
    *v31 = 136315138;
    sub_2315860E4();
    v33 = sub_2314A22E8();

    *(v31 + 4) = v33;
    _os_log_impl(&dword_231496000, v29, v30, "TotalTimeSpentInApp computed %s", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v32);
    MEMORY[0x231931280](v32, -1, -1);
    MEMORY[0x231931280](v31, -1, -1);
  }

  v34 = *(a5 + 40);
  v41 = *(a5 + 24);
  v42 = v34;
  v43 = *(a5 + 56);
  v37 = v9;
  v38 = 1;
  sub_231566F38(&v37, &v39);

  v37 = v39;
  v38 = v40;
  a3(&v37);
  return sub_2314A5EEC(v37, v38);
}

void TotalTimeSpentInApp.adaptCached(value:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(v2 + 40);
  v8 = *(v2 + 24);
  v9 = v5;
  v10 = *(v2 + 56);
  v6 = v3;
  v7 = v4;
  sub_231566F38(&v6, a2);
}

void sub_23157EA50(void *a1, uint64_t a2)
{
  v4 = MEMORY[0x231930B10]();
  sub_23157EAB0(a1, (a2 + 16));

  objc_autoreleasePoolPop(v4);
}

void sub_23157EAB0(void *a1, uint64_t *a2)
{
  v3 = [a1 eventBody];
  if (v3)
  {
    v4 = v3;
    v5 = sub_2314D7528(v3);
    if (v6)
    {
      v7 = v5;
      v8 = v6;
      swift_beginAccess();
      sub_231566BF0(v7, v8, *a2);
      v10 = v9;
      swift_endAccess();
      if (v10)
      {
        swift_beginAccess();
        v11 = *a2;
        swift_isUniquelyReferenced_nonNull_native();
        v15 = *a2;
        sub_231576418(0, 1, 0, v7, v8);
        *a2 = v15;
        swift_endAccess();
      }

      swift_beginAccess();
      v12 = sub_23157DD30(v14, v7, v8);
      if (*(v13 + 24) != 1)
      {
        sub_2314B9F0C(v4);
      }

      (v12)(v14, 0);
      swift_endAccess();
    }
  }
}

uint64_t sub_23157EC44(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_23157F014(v3, v1, v2);
}

void (*sub_23157ECA4(void *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  v7 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v7;
  v8 = *v3;
  swift_isUniquelyReferenced_nonNull_native();
  v7[8] = sub_23157EFE0(v7);
  v7[9] = sub_23157ED9C(v7 + 4, a2, a3);
  return sub_23157ED3C;
}

void sub_23157ED3C(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_23157ED9C(void *a1, uint64_t a2, uint64_t a3))(uint64_t **a1)
{
  v4 = v3;
  v8 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v8;
  v8[5] = a3;
  v8[6] = v3;
  v8[4] = a2;
  v9 = *v3;
  v10 = sub_23149C888(a2, a3);
  *(v8 + 25) = v11 & 1;
  v12 = v11 ^ 1;
  if (__OFADD__(*(v9 + 16), (v11 ^ 1) & 1))
  {
    __break(1u);
    goto LABEL_10;
  }

  v13 = v10;
  v14 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5C140, &qword_23158F080);
  if (sub_231586A64())
  {
    v15 = *v4;
    v16 = sub_23149C888(a2, a3);
    if ((v14 & 1) == (v17 & 1))
    {
      v13 = v16;
      goto LABEL_5;
    }

LABEL_10:
    result = sub_231586C84();
    __break(1u);
    return result;
  }

LABEL_5:
  v8[7] = v13;
  if (v14)
  {
    v18 = *(*v4 + 56) + 24 * v13;
    v19 = *v18;
    v20 = *(v18 + 8);
    v21 = *(v18 + 16);
  }

  else
  {
    v19 = 0;
    v20 = 0;
    v21 = 0;
  }

  *v8 = v19;
  v8[1] = v20;
  v8[2] = v21;
  *(v8 + 24) = v12 & 1;
  return sub_23157EF00;
}

void sub_23157EF00(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = (*a1)[2];
  v4 = *(*a1 + 25);
  if ((*a1)[3])
  {
    if (*(*a1 + 25))
    {
      sub_2315074E4(*(*v1[6] + 48) + 16 * v1[7]);
      sub_231586A84();
    }
  }

  else
  {
    v5 = *(v1 + 2);
    v6 = v1[7];
    v7 = *v1[6];
    if (v4)
    {
      v8 = *(v7 + 56) + 24 * v6;
      *v8 = v2;
      *(v8 + 8) = v5 & 1;
      *(v8 + 16) = v3;
    }

    else
    {
      sub_2315755D0(v6, v1[4], v1[5], v2, v5 & 1, v3, v7);
    }
  }

  free(v1);
}

uint64_t (*sub_23157EFE0(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_23157F008;
}

uint64_t sub_23157F014(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_231588340;
  v10 = [BiomeLibrary() App];
  swift_unknownObjectRelease();
  v11 = [v10 InFocus];
  swift_unknownObjectRelease();
  *(v9 + 56) = &type metadata for TotalTimeSpentInApp;
  *(v9 + 64) = &protocol witness table for TotalTimeSpentInApp;
  v12 = swift_allocObject();
  *(v9 + 32) = v12;
  if (qword_280D6D5F8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v13 = qword_280D6D608;
  *(v12 + 16) = qword_280D6D600;
  *(v12 + 24) = v13;
  *(v12 + 32) = v11;
  v14 = *(a3 + 8);

  *(v12 + 40) = v14(a2, a3);
  *(v12 + 48) = 0;
  *(v12 + 56) = 0;
  *(v12 + 64) = 0;
  *(v12 + 72) = 1;
  (*(v5 + 8))(v8, a2);
  return v9;
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_23157F274(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 57))
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

uint64_t sub_23157F2B4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t TrainingMessageBuilder.__allocating_init(using:)(uint64_t a1)
{
  v2 = swift_allocObject();
  TrainingMessageBuilder.init(using:)(a1);
  return v2;
}

void *TrainingMessageBuilder.init(using:)(uint64_t a1)
{
  v3 = type metadata accessor for TrainingMessageProvider();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  v1[5] = v3;
  v1[6] = &protocol witness table for TrainingMessageProvider;
  v1[2] = v4;
  return v1;
}

uint64_t sub_23157F3B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3[5];
  v8 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v7);
  return (*(v8 + 8))(a1, a2, a3, v7, v8);
}

uint64_t TrainingMessageBuilder.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

uint64_t TrainingMessageProvider.__allocating_init(using:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t sub_23157F544@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v27 = a3;
  v28 = a1;
  v29 = a4;
  OUTLINED_FUNCTION_0();
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v11);
  v12 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = sub_231586774();
  OUTLINED_FUNCTION_0();
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v19);
  v21 = &v27 - v20;
  __swift_storeEnumTagSinglePayload(&v27 - v20, 1, 1, AssociatedTypeWitness);
  v22 = *(v4 + 16);
  (*(v8 + 16))(v12, v28, a2);
  v23 = (*(v8 + 80) + 48) & ~*(v8 + 80);
  v24 = swift_allocObject();
  v25 = v27;
  *(v24 + 2) = a2;
  *(v24 + 3) = v25;
  *(v24 + 4) = v5;
  *(v24 + 5) = v21;
  (*(v8 + 32))(&v24[v23], v12, a2);

  sub_23153CBA4(0, 0, 0, 3, sub_23157FB60, v24);

  swift_beginAccess();
  (*(v16 + 16))(v29, v21, v14);
  return (*(v16 + 8))(v21, v14);
}

void sub_23157F79C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getAssociatedTypeWitness();
  v11 = sub_231586774();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v32 - v14;
  if (*(a1 + 24))
  {
    if (qword_280D70420 != -1)
    {
      swift_once();
    }

    v16 = sub_231585FF4();
    __swift_project_value_buffer(v16, qword_280D72248);
    v35 = sub_231585FE4();
    v17 = sub_2315865E4();
    if (os_log_type_enabled(v35, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_231496000, v35, v17, "TrainingMessageBuilder: Error gathering signals", v18, 2u);
      MEMORY[0x231931280](v18, -1, -1);
    }

    v19 = v35;
  }

  else
  {
    v33 = a3;
    v21 = *a1;
    v20 = *(a1 + 8);
    v34 = *(a1 + 16);
    v35 = v20;
    v22 = *(*(a2 + 16) + 24);
    v37[0] = v21;
    v37[1] = v22;
    v23 = *(a6 + 32);

    v23(v37, a5, a6);

    v24 = v33;
    swift_beginAccess();
    (*(v12 + 40))(v24, v15, v11);
    if (qword_280D70420 != -1)
    {
      swift_once();
    }

    v25 = sub_231585FF4();
    __swift_project_value_buffer(v25, qword_280D72248);

    v26 = v35;

    v27 = sub_231585FE4();
    v28 = sub_2315865D4();
    sub_231540A60(v21, v26, v34, 0);
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v36 = v30;
      *v29 = 136315138;
      sub_23152A204();
      sub_2315860E4();
      v31 = sub_2314A22E8();

      *(v29 + 4) = v31;
      _os_log_impl(&dword_231496000, v27, v28, "TrainingMessageBuilder: signal timings: %s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v30);
      MEMORY[0x231931280](v30, -1, -1);
      MEMORY[0x231931280](v29, -1, -1);
    }
  }
}

uint64_t TrainingMessageProvider.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t TrainingMessageProvider.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_23157FCA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B1D0, &qword_231588B10);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v26 - v11;
  sub_2314C2020(a3, v26 - v11);
  v13 = sub_2315864A4();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);

  if (EnumTagSinglePayload == 1)
  {
    sub_2314CC1C4(v12, &qword_27DD5B1D0, &qword_231588B10);
  }

  else
  {
    sub_231586494();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_231586464();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_231586234() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      sub_2314CC1C4(a3, &qword_27DD5B1D0, &qword_231588B10);

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_2314CC1C4(a3, &qword_27DD5B1D0, &qword_231588B10);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_23157FF78()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5C1A8, &qword_23158F5E8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23158F550;
  *(inited + 32) = sub_231586204();
  *(inited + 40) = v1;
  *(inited + 48) = sub_2314A1DFC(45, 1);
  *(inited + 56) = v2;
  *(inited + 64) = v3;
  *(inited + 72) = sub_231586204();
  *(inited + 80) = v4;
  *(inited + 88) = sub_2314A1DFC(4, 2);
  *(inited + 96) = v5;
  *(inited + 104) = v6;
  *(inited + 112) = 0x74756F656D6974;
  *(inited + 120) = 0xE700000000000000;
  *(inited + 128) = sub_2314A1DFC(10, 1);
  *(inited + 136) = v7;
  *(inited + 144) = v8;
  result = sub_2315860F4();
  qword_280D6E148 = result;
  return result;
}

uint64_t sub_231580090()
{
  if (*(v0 + 32) == 0x4C72656767697274 && *(v0 + 40) == 0xEF7374756F6B636FLL)
  {
    v2 = 0;
  }

  else
  {
    v2 = sub_231586C44() ^ 1;
  }

  return v2 & 1;
}

void sub_2315800EC()
{
  v1 = v0;
  if (qword_280D70420 != -1)
  {
    OUTLINED_FUNCTION_6_0();
  }

  v2 = sub_231585FF4();
  __swift_project_value_buffer(v2, qword_280D72248);

  v3 = sub_231585FE4();
  v4 = sub_2315865D4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v5 = 136315138;
    sub_2315860E4();
    v6 = sub_2314A22E8();

    *(v5 + 4) = v6;
    _os_log_impl(&dword_231496000, v3, v4, "RestartLockout: saving %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_10();
  }

  v7 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v8 = sub_23149C7D4(0xD000000000000024, 0x80000002315922C0);
  if (v8)
  {
    v9 = v8;
    v10 = sub_2315860C4();

    v11 = *(v1 + 32);
    v12 = *(v1 + 40);
    v13 = sub_231586174();
    [v9 setObject:v10 forKey:v13];
  }

  else
  {
  }
}

uint64_t sub_231580314(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 40) = a4;
  *(v5 + 48) = a5;
  return MEMORY[0x2822009F8](sub_231580334, 0, 0);
}

uint64_t sub_231580334()
{
  OUTLINED_FUNCTION_9_24();
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  swift_beginAccess();
  v3 = *(v1 + 16);

  sub_2315800EC();
  OUTLINED_FUNCTION_10_22();

  return v4();
}

void sub_2315803A8()
{
  v1 = sub_231585884();
  v2 = OUTLINED_FUNCTION_4_1(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  v8 = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_23149C4FC();
  v10 = *(v0 + 16);
  v11 = *(v0 + 24);
  v10();
  sub_23149C774();
  (*(v4 + 8))(v8, v1);
  swift_isUniquelyReferenced_nonNull_native();
  v12[1] = v9;
  sub_23157562C();
  sub_2315800EC();
}

uint64_t sub_2315804CC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return v0;
}

uint64_t sub_2315804F4()
{
  sub_2315804CC();

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

uint64_t sub_231580528(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_231580620;

  return v7(a1);
}

uint64_t sub_231580620()
{
  OUTLINED_FUNCTION_9_24();
  v1 = *(*v0 + 16);
  v2 = *v0;
  OUTLINED_FUNCTION_5_31();
  *v3 = v2;

  OUTLINED_FUNCTION_10_22();

  return v4();
}

uint64_t sub_231580708(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v6 = v1[4];
  v5 = v1[5];
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_3_39(v7);
  *v8 = v9;
  v8[1] = sub_2315807C0;

  return sub_231580314(a1, v3, v4, v6, v5);
}

uint64_t sub_2315807C0()
{
  OUTLINED_FUNCTION_9_24();
  v1 = *(*v0 + 16);
  v2 = *v0;
  OUTLINED_FUNCTION_5_31();
  *v3 = v2;

  OUTLINED_FUNCTION_10_22();

  return v4();
}

uint64_t sub_2315808A4()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_3_39(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_2_40(v4);

  return v7(v6);
}

uint64_t sub_23158093C()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_3_39(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_2_40(v4);

  return v7(v6);
}

uint64_t sub_2315809D8@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 directoryValue];
  if (v3 && (v4 = sub_231580A90(v3), v5))
  {
    v6 = HIBYTE(v5) & 0xF;
    if ((v5 & 0x2000000000000000) == 0)
    {
      v6 = v4 & 0xFFFFFFFFFFFFLL;
    }

    if (v6)
    {
      sub_2315856F4();
      v7 = 0;
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 1;
  }

  v8 = sub_231585724();

  return __swift_storeEnumTagSinglePayload(a1, v7, 1, v8);
}

uint64_t sub_231580A90(void *a1)
{
  v2 = [a1 path];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_2315861A4();

  return v3;
}

uint64_t sub_231580B00(uint64_t a1, uint64_t *a2)
{
  v26 = sub_231585BA4();
  v5 = *(v26 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v26);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  v10 = MEMORY[0x277D84F90];
  if (v9)
  {
    v25 = v2;
    v27 = MEMORY[0x277D84F90];
    sub_23152D698(0, v9, 0);
    v10 = v27;
    v11 = (v5 + 8);
    for (i = (a1 + 40); ; i += 2)
    {
      v13 = *i;
      v14 = *a2;
      if (!*(*a2 + 16))
      {
        break;
      }

      v15 = *(i - 1);
      v16 = *i;

      v17 = sub_23149C888(v15, v13);
      if ((v18 & 1) == 0)
      {
        goto LABEL_7;
      }

      v19 = *(*(v14 + 56) + 8 * v17);
LABEL_8:

      v27 = v10;
      v23 = *(v10 + 16);
      v22 = *(v10 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_23152D698(v22 > 1, v23 + 1, 1);
        v10 = v27;
      }

      *(v10 + 16) = v23 + 1;
      *(v10 + 8 * v23 + 32) = v19;
      if (!--v9)
      {
        return v10;
      }
    }

    v20 = *i;

LABEL_7:
    sub_231585B94();
    sub_231585B54();
    v19 = v21;
    (*v11)(v8, v26);
    goto LABEL_8;
  }

  return v10;
}

Swift::Double __swiftcall Double.rounded(to:)(Swift::Int to)
{
  v2 = v1;
  v4 = sub_231585954();
  v5 = OUTLINED_FUNCTION_4_1(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  v13 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
  sub_2315858B4();
  v14 = sub_2315858E4();
  (*(v7 + 8))(v12, v4);
  [v13 setLocale_];

  [v13 setUsesSignificantDigits_];
  [v13 setMaximumSignificantDigits_];
  sub_231583A88(46, 0xE100000000000000, v13);
  v15 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  v16 = [v13 stringFromNumber_];

  if (!v16)
  {
    if (qword_280D70420 != -1)
    {
      OUTLINED_FUNCTION_6_0();
    }

    v27 = sub_231585FF4();
    __swift_project_value_buffer(v27, qword_280D72248);
    v23 = sub_231585FE4();
    v28 = sub_2315865E4();
    if (!os_log_type_enabled(v23, v28))
    {
      goto LABEL_14;
    }

    v29 = OUTLINED_FUNCTION_22_0();
    *v29 = 134349312;
    *(v29 + 4) = v2;
    *(v29 + 12) = 2050;
    *(v29 + 14) = to;
    _os_log_impl(&dword_231496000, v23, v28, "Double#rounded error converting %{public}f to %{public}ld sig figs", v29, 0x16u);
    goto LABEL_11;
  }

  v17 = sub_2315861A4();
  v19 = v18;

  v20 = sub_2315839BC(v17, v19);
  if (v21)
  {
    if (qword_280D70420 != -1)
    {
      OUTLINED_FUNCTION_6_0();
    }

    v22 = sub_231585FF4();
    __swift_project_value_buffer(v22, qword_280D72248);

    v23 = sub_231585FE4();
    v24 = sub_2315865E4();

    if (!os_log_type_enabled(v23, v24))
    {

      goto LABEL_14;
    }

    v25 = OUTLINED_FUNCTION_22();
    v32 = OUTLINED_FUNCTION_47();
    *v25 = 136446210;
    v26 = sub_2314A22E8();

    *(v25 + 4) = v26;
    _os_log_impl(&dword_231496000, v23, v24, "Double#rounded error converting rounded result %{public}s back to Double", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v32);
    OUTLINED_FUNCTION_10();
LABEL_11:
    OUTLINED_FUNCTION_10();
LABEL_14:

    return v2;
  }

  v30 = v20;

  return *&v30;
}

uint64_t sub_2315810AC()
{
  v1 = sub_23152041C(*(v0 + OBJC_IVAR____TtC11SiriSignals16UsageScoreSignal_bucket));
  MEMORY[0x23192FF80](v1);

  return 0x6F63536567617375;
}

double sub_231581114@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_2314A1DFC(65, 1);

  result = v2;
  *a1 = v2;
  *(a1 + 8) = 0;
  return result;
}

uint64_t sub_231581158()
{
  v1 = sub_2315810AC();
  MEMORY[0x23192FF80](0x65746F6D6552, 0xE600000000000000);
  return v1;
}

uint64_t sub_2315811D0(uint64_t (*a1)(void))
{
  v3 = *(v1 + 24);
  if (!v3)
  {
    return a1();
  }

  v4 = *(v1 + 16);
  v5 = *(v1 + 24);

  v8 = (a1)(v6);
  MEMORY[0x23192FF80](1029990703, 0xE400000000000000);
  MEMORY[0x23192FF80](v4, v3);

  return v8;
}

uint64_t sub_23158125C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5BE18, &qword_23158DD90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_231588FE0;
  *(inited + 32) = sub_2315810AC();
  *(inited + 40) = v1;
  *(inited + 48) = sub_2315811A0();
  *(inited + 56) = v2;
  *(inited + 64) = sub_231581158();
  *(inited + 72) = v3;
  *(inited + 80) = sub_2315811B8();
  *(inited + 88) = v4;
  return sub_2315860F4();
}

uint64_t static UsageScoreSignal.instances(with:)(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  v4 = __swift_project_boxed_opaque_existential_1(a1, v2);

  return sub_231583DB4(v4, v1, v2, v3);
}

uint64_t static UsageScoreSignal.parameterization.getter@<X0>(uint64_t *a1@<X8>)
{
  result = sub_231553E24(&unk_2846129C8);
  *a1 = result;
  return result;
}

void *sub_231581368@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v24 = a3;
  v25 = a4;
  v8 = sub_231585D34();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_231585B34();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(a1) = *a1;
  sub_2314A2C74(a2, v26);
  (*(v14 + 16))(v17, v24, v13);
  (*(v9 + 16))(v12, v25, v8);
  v18 = type metadata accessor for UsageScoreSignal();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  v21 = swift_allocObject();
  result = sub_23158153C(a1, v26, v17, v12);
  a5[3] = v18;
  a5[4] = &protocol witness table for UsageScoreSignal;
  *a5 = v21;
  return result;
}

void *sub_23158153C(char a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = a2[3];
  v11 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v10);
  v4[2] = (*(v11 + 16))(v10, v11);
  v4[3] = v12;
  v13 = a2[3];
  v14 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v13);
  v4[4] = (*(v14 + 8))(v13, v14);
  *(v4 + OBJC_IVAR____TtC11SiriSignals16UsageScoreSignal_bucket) = a1;
  v15 = OBJC_IVAR____TtC11SiriSignals16UsageScoreSignal_user;
  v16 = sub_231585B34();
  v17 = *(v16 - 8);
  (*(v17 + 16))(v5 + v15, a3, v16);
  v18 = OBJC_IVAR____TtC11SiriSignals16UsageScoreSignal_interactionStore;
  v19 = sub_231585D34();
  v20 = *(v19 - 8);
  (*(v20 + 16))(v5 + v18, a4, v19);
  type metadata accessor for MediaItemsBucketProvider();
  v21 = sub_2315203BC(a1);
  v22 = sub_23151FE7C(v21);
  v24 = v23;

  (*(v20 + 8))(a4, v19);
  (*(v17 + 8))(a3, v16);
  v25 = (v5 + OBJC_IVAR____TtC11SiriSignals16UsageScoreSignal_query);
  *v25 = v22;
  v25[1] = v24;
  __swift_destroy_boxed_opaque_existential_1(a2);
  return v5;
}

uint64_t sub_23158173C(void (*a1)(uint64_t *), uint64_t a2)
{

  v5 = MEMORY[0x277D84F90];

  return sub_231581874(v5, v2, a1, a2, v2);
}

uint64_t sub_2315817A0(uint64_t a1, void (*a2)(uint64_t *))
{
  v4 = sub_2315810AC();
  if (*(a1 + 16))
  {
    v6 = sub_23149C888(v4, v5);
    v8 = v7;

    if (v8)
    {
      v9 = *(a1 + 56) + 16 * v6;
      v10 = *v9;
      v11 = *(v9 + 8);
      sub_2314A5168(*v9, v11);
      goto LABEL_6;
    }
  }

  else
  {
  }

  v11 = 0;
  v10 = -1;
LABEL_6:
  v15 = v10;
  v16 = v11;
  a2(&v15);
  v12 = v15;
  v13 = v16;

  return sub_2314A5EEC(v12, v13);
}

uint64_t sub_231581874(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *), uint64_t a4, uint64_t a5)
{
  v58 = a5;
  v56 = a4;
  v52 = a3;
  v51 = sub_231585FD4();
  v50 = *(v51 - 8);
  v6 = *(v50 + 64);
  MEMORY[0x28223BE20](v51);
  v53 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_231585AE4();
  v9 = *(v8 - 8);
  v59 = v8;
  v60 = v9;
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v48 - v15;
  MEMORY[0x28223BE20](v14);
  v55 = &v48 - v17;
  v18 = sub_231585E04();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v21 = (&v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = *(a2 + OBJC_IVAR____TtC11SiriSignals16UsageScoreSignal_query + 8);
  *v21 = *(a2 + OBJC_IVAR____TtC11SiriSignals16UsageScoreSignal_query);
  v21[1] = v22;
  v23 = *MEMORY[0x277D5FFF8];
  v48 = v24;
  v25 = *(v24 + 104);
  v57 = v21;
  v49 = v26;
  v25();
  v27 = qword_280D70420;

  if (v27 != -1)
  {
    swift_once();
  }

  v28 = sub_231585FF4();
  __swift_project_value_buffer(v28, qword_280D72248);

  v29 = sub_231585FE4();
  v30 = sub_2315865D4();

  v31 = os_log_type_enabled(v29, v30);
  v54 = a2;
  if (v31)
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v61 = v33;
    *v32 = 136315138;
    *(v32 + 4) = sub_2314A22E8();
    _os_log_impl(&dword_231496000, v29, v30, "UsageScoreSignal: query : %s", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v33);
    MEMORY[0x231931280](v33, -1, -1);
    a2 = v54;
    MEMORY[0x231931280](v32, -1, -1);
  }

  sub_231585AD4();
  sub_231585AC4();
  v34 = v59;
  v35 = v60 + 8;
  v36 = *(v60 + 8);
  v36(v13, v59);
  sub_231585A94();
  v60 = v35;
  v36(v16, v34);
  if (qword_280D70418 != -1)
  {
    swift_once();
  }

  v37 = qword_280D72240;
  v38 = v53;
  sub_231585FC4();
  sub_2315866D4();
  sub_231585FA4();
  v39 = sub_231582954(a2 + OBJC_IVAR____TtC11SiriSignals16UsageScoreSignal_interactionStore);
  sub_2315866C4();
  sub_231585FA4();

  v40 = sub_231585FE4();
  v41 = sub_2315865D4();

  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v61 = v43;
    *v42 = 136315394;
    sub_23152041C(*(a2 + OBJC_IVAR____TtC11SiriSignals16UsageScoreSignal_bucket));
    v44 = sub_2314A22E8();

    *(v42 + 4) = v44;
    *(v42 + 12) = 2080;
    sub_231585BA4();
    sub_2315860E4();
    v45 = sub_2314A22E8();

    *(v42 + 14) = v45;
    _os_log_impl(&dword_231496000, v40, v41, "UsageScoreSignal: %s Entity Agg %s", v42, 0x16u);
    swift_arrayDestroy();
    v38 = v53;
    MEMORY[0x231931280](v43, -1, -1);
    MEMORY[0x231931280](v42, -1, -1);
  }

  v46 = sub_231582C6C(v39);

  sub_2315817A0(v46, v52);

  (*(v50 + 8))(v38, v51);
  v36(v55, v59);
  (*(v48 + 8))(v57, v49);
}

uint64_t sub_23158218C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v66 = a3;
  v67 = a2;
  v65 = sub_231585FD4();
  v5 = OUTLINED_FUNCTION_4_1(v65);
  v64 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_5();
  v11 = v10 - v9;
  v68 = sub_231585AE4();
  v12 = OUTLINED_FUNCTION_4_1(v68);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_11_0();
  v19 = v17 - v18;
  v21 = MEMORY[0x28223BE20](v20);
  v23 = v62 - v22;
  MEMORY[0x28223BE20](v21);
  v69 = v62 - v24;
  v25 = sub_231585E04();
  v26 = OUTLINED_FUNCTION_4_1(v25);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_5();
  v31 = (v30 - v29);
  v32 = *(v3 + OBJC_IVAR____TtC11SiriSignals16UsageScoreSignal_query + 8);
  *v31 = *(v3 + OBJC_IVAR____TtC11SiriSignals16UsageScoreSignal_query);
  v31[1] = v32;
  v33 = *MEMORY[0x277D5FFF8];
  v62[1] = v34;
  v35 = *(v34 + 104);
  v70 = v31;
  v62[2] = v36;
  v35();
  v37 = qword_280D70420;

  if (v37 != -1)
  {
    OUTLINED_FUNCTION_6_0();
  }

  v38 = sub_231585FF4();
  v39 = __swift_project_value_buffer(v38, qword_280D72248);

  v62[0] = v39;
  v40 = sub_231585FE4();
  v41 = sub_2315865D4();

  if (os_log_type_enabled(v40, v41))
  {
    v42 = OUTLINED_FUNCTION_22();
    v43 = OUTLINED_FUNCTION_47();
    v63 = v11;
    v44 = v4;
    v45 = v14;
    v46 = v43;
    v71 = v43;
    *v42 = 136315138;
    *(v42 + 4) = sub_2314A22E8();
    _os_log_impl(&dword_231496000, v40, v41, "UsageScoreSignal: query : %s", v42, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v46);
    v14 = v45;
    v4 = v44;
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_10();
  }

  sub_231585AD4();
  sub_231585AC4();
  v47 = *(v14 + 8);
  v48 = v68;
  v47(v19, v68);
  sub_231585A94();
  v63 = v14 + 8;
  v47(v23, v48);
  if (qword_280D70418 != -1)
  {
    swift_once();
  }

  v49 = qword_280D72240;
  sub_231585FC4();
  sub_2315866D4();
  OUTLINED_FUNCTION_10_23();
  v50 = sub_231582954(v4 + OBJC_IVAR____TtC11SiriSignals16UsageScoreSignal_interactionStore);
  sub_2315866C4();
  OUTLINED_FUNCTION_10_23();

  v51 = sub_231585FE4();
  v52 = sub_2315865D4();

  if (os_log_type_enabled(v51, v52))
  {
    v53 = OUTLINED_FUNCTION_22_0();
    v71 = swift_slowAlloc();
    *v53 = 136315394;
    sub_23152041C(*(v4 + OBJC_IVAR____TtC11SiriSignals16UsageScoreSignal_bucket));
    v54 = sub_2314A22E8();

    *(v53 + 4) = v54;
    *(v53 + 12) = 2080;
    sub_231585BA4();
    sub_2315860E4();
    v55 = sub_2314A22E8();

    *(v53 + 14) = v55;
    v48 = v68;
    _os_log_impl(&dword_231496000, v51, v52, "UsageScoreSignal: %s Entity Agg %s", v53, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_10();
  }

  sub_231582C6C(v50);

  OUTLINED_FUNCTION_8_27();
  v56();

  v57 = OUTLINED_FUNCTION_6_27();
  v58(v57);
  v47(v69, v48);
  v59 = OUTLINED_FUNCTION_7_29();
  return v60(v59);
}

uint64_t sub_231582954(uint64_t a1)
{
  v39 = a1;
  v38 = sub_231585C24();
  v1 = OUTLINED_FUNCTION_4_1(v38);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  v9 = sub_231585D14();
  v10 = OUTLINED_FUNCTION_4_1(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_11_0();
  v17 = v15 - v16;
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v37 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v37 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v37 - v25;
  sub_231585D04();
  sub_231585C64();
  v27 = *(v12 + 8);
  v27(v17, v9);
  sub_231585CB4();
  v27(v21, v9);
  sub_231585B24();
  sub_231585C74();
  (*(v3 + 8))(v8, v38);
  v27(v24, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B7D8, &qword_23158AFB8);
  v28 = sub_231585C14();
  OUTLINED_FUNCTION_4_1(v28);
  v30 = v29;
  v32 = *(v31 + 72);
  v33 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_231588340;
  (*(v30 + 104))(v34 + v33, *MEMORY[0x277D5FF90], v28);
  v35 = sub_231585C34();
  v27(v26, v9);

  return v35;
}

uint64_t sub_231582C6C(uint64_t a1)
{
  v2 = sub_231585BA4();
  v3 = OUTLINED_FUNCTION_4_1(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_11_0();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  v71 = v68 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B6B8, &unk_23158AC00);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  OUTLINED_FUNCTION_11_0();
  v17 = v15 - v16;
  MEMORY[0x28223BE20](v18);
  v76 = (v68 - v19);
  v20 = sub_2315860F4();
  v21 = *(a1 + 64);
  v77 = a1 + 64;
  v22 = 1 << *(a1 + 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & v21;
  v69 = (v22 + 63) >> 6;
  v70 = v5 + 16;
  v79 = (v5 + 32);
  v72 = v5;
  v73 = a1;
  v74 = v5 + 8;

  v25 = 0;
  v78 = v17;
  v75 = v2;
  while (1)
  {
    v80 = v20;
    if (!v24)
    {
      while (1)
      {
        v26 = v25 + 1;
        if (__OFADD__(v25, 1))
        {
          break;
        }

        if (v26 >= v69)
        {
          v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B640, &unk_23158AE80);
          __swift_storeEnumTagSinglePayload(v17, 1, 1, v57);
          v24 = 0;
          goto LABEL_11;
        }

        v24 = *(v77 + 8 * v26);
        ++v25;
        if (v24)
        {
          v25 = v26;
          goto LABEL_10;
        }
      }

      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    v26 = v25;
LABEL_10:
    v27 = __clz(__rbit64(v24));
    v24 &= v24 - 1;
    v28 = v27 | (v26 << 6);
    v29 = v72;
    v30 = (*(v73 + 48) + 16 * v28);
    v32 = *v30;
    v31 = v30[1];
    v33 = v71;
    (*(v72 + 16))(v71, *(v73 + 56) + *(v72 + 72) * v28, v2);
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B640, &unk_23158AE80);
    v35 = *(v34 + 48);
    v36 = v78;
    *v78 = v32;
    *(v36 + 1) = v31;
    v17 = v36;
    (*(v29 + 32))(&v36[v35], v33, v2);
    __swift_storeEnumTagSinglePayload(v17, 0, 1, v34);

LABEL_11:
    v37 = v76;
    sub_2314F56B8(v17, v76);
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B640, &unk_23158AE80);
    if (__swift_getEnumTagSinglePayload(v37, 1, v38) == 1)
    {
      break;
    }

    v39 = v37;
    v41 = *v37;
    v40 = v37[1];
    (*v79)(v10, v39 + *(v38 + 48), v2);
    sub_231585B54();
    v42 = v80;
    swift_isUniquelyReferenced_nonNull_native();
    v81 = v42;
    v43 = sub_23149C888(v41, v40);
    v45 = *(v42 + 16);
    v46 = (v44 & 1) == 0;
    v20 = v45 + v46;
    if (__OFADD__(v45, v46))
    {
      goto LABEL_26;
    }

    v10 = v43;
    v2 = v44;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B168, &unk_23158B500);
    if (sub_231586A64())
    {
      v47 = sub_23149C888(v41, v40);
      if ((v2 & 1) != (v48 & 1))
      {
        result = sub_231586C84();
        __break(1u);
        return result;
      }

      v10 = v47;
    }

    if (v2)
    {

      v20 = v81;
      v49 = OUTLINED_FUNCTION_4_33();
      v50(v49);
      v17 = v78;
    }

    else
    {
      v20 = v81;
      *(v81 + 8 * (v10 >> 6) + 64) |= 1 << v10;
      v51 = (*(v20 + 48) + 16 * v10);
      *v51 = v41;
      v51[1] = v40;
      v52 = OUTLINED_FUNCTION_4_33();
      v53(v52);
      v54 = *(v20 + 16);
      v55 = __OFADD__(v54, 1);
      v56 = v54 + 1;
      if (v55)
      {
        goto LABEL_27;
      }

      *(v20 + 16) = v56;
      v17 = v78;
    }
  }

  v20 = v80;
  if (qword_280D70420 == -1)
  {
    goto LABEL_22;
  }

LABEL_28:
  OUTLINED_FUNCTION_6_0();
LABEL_22:
  v58 = sub_231585FF4();
  __swift_project_value_buffer(v58, qword_280D72248);
  v59 = v68[1];

  v60 = sub_231585FE4();
  v61 = sub_2315865D4();

  if (os_log_type_enabled(v60, v61))
  {
    v62 = OUTLINED_FUNCTION_22_0();
    v81 = swift_slowAlloc();
    *v62 = 136315394;
    sub_23152041C(*(v59 + OBJC_IVAR____TtC11SiriSignals16UsageScoreSignal_bucket));
    v63 = sub_2314A22E8();

    *(v62 + 4) = v63;
    *(v62 + 12) = 2080;
    sub_2315860E4();
    v64 = sub_2314A22E8();

    *(v62 + 14) = v64;
    _os_log_impl(&dword_231496000, v60, v61, "UsageScoreSignal: %s unnormalized score %s", v62, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_10();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B150, &qword_2315883A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_231588340;
  *(inited + 32) = sub_2315810AC();
  *(inited + 40) = v66;
  *(inited + 48) = v20;
  *(inited + 56) = 3;
  return sub_2315860F4();
}

void sub_231583304(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = MEMORY[0x277D84F90];
  v31 = sub_2315860F4();
  if (v6 == 3)
  {

    v31 = v5;
  }

  else
  {
    if (qword_280D70420 != -1)
    {
      OUTLINED_FUNCTION_6_0();
    }

    v8 = sub_231585FF4();
    __swift_project_value_buffer(v8, qword_280D72248);

    v9 = sub_231585FE4();
    v10 = sub_2315865E4();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = OUTLINED_FUNCTION_22();
      v30 = OUTLINED_FUNCTION_47();
      *v11 = 136315138;
      sub_2315810AC();
      v12 = sub_2314A22E8();

      *(v11 + 4) = v12;
      _os_log_impl(&dword_231496000, v9, v10, "%s: Received unexpected type of signal value in derive", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v30);
      v7 = MEMORY[0x277D84F90];
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_10();
    }
  }

  v13 = sub_231580B00(*(v3 + 32), &v31);
  v14 = static PriorDistributionUtils.normalize(scores:)(v13);

  v15 = *(v14 + 16);
  if (v15)
  {
    sub_23152D698(0, v15, 0);
    v16 = 32;
    v17 = v7;
    do
    {
      v18 = *(v14 + v16);
      v19 = Double.rounded(to:)(3);
      v21 = *(v7 + 16);
      v20 = *(v7 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_23152D698(v20 > 1, v21 + 1, 1);
      }

      *(v7 + 16) = v21 + 1;
      *(v7 + 8 * v21 + 32) = v19;
      v16 += 8;
      --v15;
    }

    while (v15);
  }

  else
  {

    v17 = MEMORY[0x277D84F90];
  }

  v23 = sub_231507720(v22, v17);
  if (qword_280D70420 != -1)
  {
    OUTLINED_FUNCTION_6_0();
  }

  v24 = sub_231585FF4();
  __swift_project_value_buffer(v24, qword_280D72248);

  v25 = sub_231585FE4();
  v26 = sub_2315865D4();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = OUTLINED_FUNCTION_22_0();
    swift_slowAlloc();
    *v27 = 136315394;
    sub_2315810AC();
    v28 = sub_2314A22E8();

    *(v27 + 4) = v28;
    *(v27 + 12) = 2080;
    sub_2315860E4();
    v29 = sub_2314A22E8();

    *(v27 + 14) = v29;
    _os_log_impl(&dword_231496000, v25, v26, "%s Derived dirichlet score %s", v27, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_10();
  }

  *a2 = v23;
  *(a2 + 8) = 3;
}

uint64_t UsageScoreSignal.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = OBJC_IVAR____TtC11SiriSignals16UsageScoreSignal_user;
  v4 = sub_231585B34();
  OUTLINED_FUNCTION_4_28(v4);
  (*(v5 + 8))(v0 + v3);
  v6 = OBJC_IVAR____TtC11SiriSignals16UsageScoreSignal_interactionStore;
  v7 = sub_231585D34();
  OUTLINED_FUNCTION_4_28(v7);
  (*(v8 + 8))(v0 + v6);
  v9 = *(v0 + OBJC_IVAR____TtC11SiriSignals16UsageScoreSignal_query + 8);

  return v0;
}

uint64_t UsageScoreSignal.__deallocating_deinit()
{
  UsageScoreSignal.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_2315838E0(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  v4 = __swift_project_boxed_opaque_existential_1(a1, v2);

  return sub_231583DB4(v4, v1, v2, v3);
}

uint64_t sub_2315839BC(uint64_t a1, uint64_t a2)
{
  sub_231584330(a1, a2);

  return 0;
}

_BYTE *sub_231583A1C@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v3 = *result;
  v4 = v3 > 0x20;
  v5 = (1 << v3) & 0x100003E01;
  v6 = v4 || v5 == 0;
  v7 = v6 && (result = _swift_stdlib_strtod_clocale()) != 0 && *result == 0;
  *a2 = v7;
  return result;
}

void sub_231583A88(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_231586174();

  [a3 setDecimalSeparator_];
}

uint64_t _s11SiriSignals16UsageScoreSignalC9instancesSayAA0E9Providing_pGyFZ_0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B008, &unk_23158A5C0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v18[-1] - v2;
  v4 = sub_231585D34();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v18[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_231585B34();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v18[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[3] = &type metadata for NoParameters;
  v18[4] = &protocol witness table for NoParameters;
  sub_231514674(v18, v13);
  if (qword_280D6FD68 != -1)
  {
    swift_once();
  }

  sub_2315144B0(v18, v3);
  if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
  {
    sub_2314B5064(v3);
    v14 = MEMORY[0x277D84F90];
  }

  else
  {
    v15 = (*(v5 + 32))(v8, v3, v4);
    MEMORY[0x28223BE20](v15);
    *(&v17 - 4) = v18;
    *(&v17 - 3) = v13;
    *(&v17 - 2) = v8;
    v14 = sub_23150466C(sub_231584444, (&v17 - 6), &unk_2846101A0);
    (*(v5 + 8))(v8, v4);
  }

  (*(v10 + 8))(v13, v9);
  __swift_destroy_boxed_opaque_existential_1(v18);
  return v14;
}

uint64_t sub_231583DB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B008, &unk_23158A5C0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v26[-1] - v9;
  v11 = sub_231585D34();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v26[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_231585B34();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v26[-1] - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26[3] = a3;
  v26[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v26);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_1, a1, a3);
  sub_231514674(v26, v20);
  if (qword_280D6FD68 != -1)
  {
    swift_once();
  }

  sub_2315144B0(v26, v10);
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    sub_2314B5064(v10);
    v22 = MEMORY[0x277D84F90];
  }

  else
  {
    v23 = (*(v12 + 32))(v15, v10, v11);
    MEMORY[0x28223BE20](v23);
    *(&v25 - 4) = v26;
    *(&v25 - 3) = v20;
    *(&v25 - 2) = v15;
    v22 = sub_23150466C(sub_23158430C, (&v25 - 6), &unk_2846101A0);
    (*(v12 + 8))(v15, v11);
  }

  (*(v17 + 8))(v20, v16);
  __swift_destroy_boxed_opaque_existential_1(v26);
  return v22;
}

uint64_t type metadata accessor for UsageScoreSignal()
{
  result = qword_280D6DAF0;
  if (!qword_280D6DAF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_231584104()
{
  result = sub_231585B34();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_231585D34();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

BOOL sub_231584330(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((a1 & 0x1000000000000000) != 0)
    {
      v3 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v3 < 0x21 && ((0x100003E01uLL >> v3) & 1) != 0)
      {
        return 0;
      }

      goto LABEL_9;
    }

LABEL_13:
    sub_231586944();
    if (!v2)
    {
      return v7;
    }

    return v5;
  }

  if (a1 <= 0x20u && ((0x100003E01uLL >> a1) & 1) != 0)
  {
    return 0;
  }

LABEL_9:
  v4 = _swift_stdlib_strtod_clocale();
  if (!v4)
  {
    return 0;
  }

  return *v4 == 0;
}

uint64_t sub_231584470()
{
  result = sub_231586964();
  qword_27DD5C1B0 = result;
  qword_27DD5C1B8 = v1;
  return result;
}

uint64_t *sub_2315844A4()
{
  if (qword_27DD5AE58 != -1)
  {
    OUTLINED_FUNCTION_0_90();
  }

  return &qword_27DD5C1B0;
}

uint64_t static WifiStateSignal.signalName.getter()
{
  if (qword_27DD5AE58 != -1)
  {
    OUTLINED_FUNCTION_0_90();
  }

  swift_beginAccess();
  v0 = qword_27DD5C1B0;

  return v0;
}

uint64_t static WifiStateSignal.signalName.setter(uint64_t a1, uint64_t a2)
{
  if (qword_27DD5AE58 != -1)
  {
    OUTLINED_FUNCTION_0_90();
  }

  swift_beginAccess();
  qword_27DD5C1B0 = a1;
  qword_27DD5C1B8 = a2;
}

uint64_t (*static WifiStateSignal.signalName.modify())()
{
  if (qword_27DD5AE58 != -1)
  {
    OUTLINED_FUNCTION_0_90();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_23158464C@<X0>(void *a1@<X8>)
{
  sub_2315844A4();
  swift_beginAccess();
  v2 = qword_27DD5C1B8;
  *a1 = qword_27DD5C1B0;
  a1[1] = v2;
}

uint64_t sub_2315846A0(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];

  sub_2315844A4();
  swift_beginAccess();
  qword_27DD5C1B0 = v2;
  qword_27DD5C1B8 = v1;
}

uint64_t WifiStateSignal.id.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t WifiStateSignal.init()@<X0>(void *a1@<X8>)
{
  v2 = [BiomeLibrary() Device];
  swift_unknownObjectRelease();
  v3 = [v2 Wireless];
  swift_unknownObjectRelease();
  v4 = [v3 WiFi];
  swift_unknownObjectRelease();
  if (qword_27DD5AE58 != -1)
  {
    OUTLINED_FUNCTION_0_90();
  }

  swift_beginAccess();
  v6 = qword_27DD5C1B0;
  v5 = qword_27DD5C1B8;
  *a1 = v4;
  a1[1] = sub_23151532C;
  a1[2] = 0;
  a1[3] = v6;
  a1[4] = v5;
}

uint64_t static WifiStateSignal.instances()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_231588340;
  *(v0 + 56) = &type metadata for WifiStateSignal;
  *(v0 + 64) = &protocol witness table for WifiStateSignal;
  v1 = swift_allocObject();
  *(v0 + 32) = v1;
  v2 = [BiomeLibrary() Device];
  swift_unknownObjectRelease();
  v3 = [v2 Wireless];
  swift_unknownObjectRelease();
  v4 = [v3 WiFi];
  swift_unknownObjectRelease();
  if (qword_27DD5AE58 != -1)
  {
    OUTLINED_FUNCTION_0_90();
  }

  swift_beginAccess();
  v6 = qword_27DD5C1B0;
  v5 = qword_27DD5C1B8;
  v1[2] = v4;
  v1[3] = sub_23151532C;
  v1[4] = 0;
  v1[5] = v6;
  v1[6] = v5;

  return v0;
}

void WifiStateSignal.value(completion:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_2314E2694();
}

uint64_t sub_2315849EC(void *a1)
{
  v3 = sub_231585724();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v14 - v9;
  sub_231585030();
  sub_2314C78E4();
  (*(v4 + 16))(v8, v10, v3);
  v11 = sub_2314C7928(v8, a1);
  if (v1)
  {
    return (*(v4 + 8))(v10, v3);
  }

  v13 = v11;
  (*(v4 + 8))(v10, v3);
  type metadata accessor for AudioMegamodel();
  OUTLINED_FUNCTION_18_0();
  result = swift_allocObject();
  *(result + 16) = v13;
  return result;
}

id sub_231584BD4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x737475706E69 && a2 == 0xE600000000000000;
  if (v3 || (sub_231586C44() & 1) != 0)
  {
    return [objc_opt_self() featureValueWithMultiArray_];
  }

  else
  {
    return 0;
  }
}

void sub_231584C88()
{
  v1 = *(v0 + 16);
  v2 = sub_231586174();
  v3 = OUTLINED_FUNCTION_1_46(v2, sel_featureValueForName_);

  if (!v3)
  {
    __break(1u);
    goto LABEL_5;
  }

  v4 = [v3 multiArrayValue];

  if (!v4)
  {
LABEL_5:
    __break(1u);
  }
}

void sub_231584D18()
{
  v1 = *(v0 + 16);
  v2 = sub_231586174();
  v3 = OUTLINED_FUNCTION_1_46(v2, sel_featureValueForName_);

  if (!v3)
  {
    __break(1u);
    goto LABEL_5;
  }

  v4 = [v3 multiArrayValue];

  if (!v4)
  {
LABEL_5:
    __break(1u);
  }
}

void sub_231584DA8()
{
  v1 = *(v0 + 16);
  v2 = sub_231586174();
  v3 = OUTLINED_FUNCTION_1_46(v2, sel_featureValueForName_);

  if (!v3)
  {
    __break(1u);
    goto LABEL_5;
  }

  v4 = [v3 multiArrayValue];

  if (!v4)
  {
LABEL_5:
    __break(1u);
  }
}

uint64_t sub_231584EA4()
{
  v1 = [*(v0 + 16) featureNames];
  v2 = sub_231586514();

  return v2;
}

id sub_231584EFC()
{
  v1 = *(v0 + 16);
  v2 = sub_231586174();
  v3 = OUTLINED_FUNCTION_1_46(v2, sel_featureValueForName_);

  return v3;
}

id sub_231584F5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v5 = sub_2315861A4();
  v7 = v6;

  v8 = a4(v5, v7);

  return v8;
}

uint64_t sub_231584FD8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_18_0();

  return MEMORY[0x2821FE8D8](v2, v3, v4);
}

void sub_231585030()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_2315852F4(0x67654D6F69647541, 0xEE006C65646F6D61, 0x636C65646F6D6C6DLL, 0xE800000000000000, v1);
  if (v2)
  {
    v3 = v2;
    sub_231585714();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2315850F4(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277CBFF68]) init];
  v3 = sub_231585160(a1, v2);

  return v3;
}

uint64_t sub_231585160(uint64_t a1, uint64_t a2)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v5 = *(v2 + 16);
  v13[0] = 0;
  v6 = [v5 predictionFromFeatures:a1 options:a2 error:v13];
  v7 = v13[0];
  if (v6)
  {
    v8 = v6;
    type metadata accessor for AudioMegamodelOutput();
    OUTLINED_FUNCTION_18_0();
    v3 = swift_allocObject();
    *(v3 + 16) = v8;
    v9 = v7;
  }

  else
  {
    v10 = v13[0];
    sub_2315856D4();

    swift_willThrow();
  }

  v11 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t sub_231585234(void *a1)
{
  type metadata accessor for AudioMegamodelInput();
  OUTLINED_FUNCTION_18_0();
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = a1;
  v4 = sub_2315850F4(v2);

  return v4;
}

uint64_t sub_23158529C()
{
  OUTLINED_FUNCTION_18_0();

  return MEMORY[0x2821FE8D8](v1, v2, v3);
}

id sub_2315852F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = sub_231586174();

  v7 = sub_231586174();

  v8 = [a5 URLForResource:v6 withExtension:v7];

  return v8;
}

id sub_2315854AC()
{
  v1 = *(v0 + 16);
  v2 = sub_231586174();
  v3 = [v1 featureValueForName_];

  return v3;
}

id sub_231585514(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v5 = sub_2315861A4();
  v7 = v6;

  v8 = a4(v5, v7);

  return v8;
}

uint64_t sub_231585590()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}