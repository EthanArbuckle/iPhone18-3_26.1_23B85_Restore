uint64_t sub_26A3AE95C()
{
  OUTLINED_FUNCTION_34_12();
  result = StatusIndicatorCancelled.componentName.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t Component.separators.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v42 = a3;
  v5 = type metadata accessor for _ProtoSeparators();
  v6 = OUTLINED_FUNCTION_12(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_11();
  v41 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C818, &unk_26A42D9A0);
  v11 = OUTLINED_FUNCTION_41(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_8();
  v40 = v14;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v15);
  v17 = v36 - v16;
  v18 = type metadata accessor for _ProtoResponse.Component(0);
  v19 = OUTLINED_FUNCTION_12(v18);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_8();
  v36[1] = v22;
  OUTLINED_FUNCTION_40();
  v24 = MEMORY[0x28223BE20](v23);
  v25 = *(a2 + 8);
  v39 = a1;
  v37 = a2;
  v25(a1, a2, v24);
  v26 = *(v18 + 24);
  sub_26A10FD9C();
  OUTLINED_FUNCTION_20_29();
  sub_26A3AF8D0();
  v27 = 1;
  v38 = v5;
  LODWORD(a1) = __swift_getEnumTagSinglePayload(v17, 1, v5);
  v28 = v42;
  sub_26A13440C();
  if (a1 != 1)
  {
    (v25)(v39, v37);
    v29 = *(v18 + 24);
    v30 = v40;
    sub_26A10FD9C();
    v31 = v38;
    if (__swift_getEnumTagSinglePayload(v30, 1, v38) == 1)
    {
      v32 = v41;
      *v41 = 0;
      *(v32 + 8) = 1;
      v32[2] = 0;
      *(v32 + 24) = 1;
      v33 = v32 + *(v31 + 24);
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      OUTLINED_FUNCTION_20_29();
      sub_26A3AF8D0();
      if (__swift_getEnumTagSinglePayload(v30, 1, v31) != 1)
      {
        sub_26A13440C();
      }
    }

    else
    {
      sub_26A3AF8D0();
      sub_26A3AF978();
    }

    sub_26A3AF978();
    v27 = 0;
  }

  v34 = type metadata accessor for Separators();
  return __swift_storeEnumTagSinglePayload(v28, v27, 1, v34);
}

void sub_26A3AEC9C()
{
  OUTLINED_FUNCTION_34_12();
  Table.rows.getter();
  *v0 = v1;
}

uint64_t sub_26A3AECC4()
{
  OUTLINED_FUNCTION_34_12();
  result = ReferenceButton.componentName.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

unint64_t sub_26A3AED00()
{
  OUTLINED_FUNCTION_14_4();
  result = *v2;
  if (!result)
  {
    v1(255);
    result = swift_getWitnessTable();
    atomic_store(result, v0);
  }

  return result;
}

uint64_t sub_26A3AED44(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_26A424FD4();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

uint64_t sub_26A3AED68(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_26A3AF8A8(v2);
  }

  v3 = v2[2];
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = sub_26A3AEDD4(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_26A3AEDD4(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_26A4251A4();
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
        v6 = sub_26A424D74();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_26A3AEF90(v7, v8, a1, v4);
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
    return sub_26A3AEEC8(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_26A3AEEC8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
    while (2)
    {
      v9 = (v6 + 16 * v4);
      result = *v9;
      v10 = v9[1];
      v11 = v8;
      v12 = v7;
      do
      {
        if (result == *(v12 - 2) && v10 == *(v12 - 1))
        {
          break;
        }

        result = sub_26A425354();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        result = *v12;
        v10 = v12[1];
        *v12 = *(v12 - 1);
        *(v12 - 1) = v10;
        *(v12 - 2) = result;
        v12 -= 2;
      }

      while (!__CFADD__(v11++, 1));
      ++v4;
      v7 += 16;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_26A3AEF90(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v92 = MEMORY[0x277D84F90];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
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
          v14 = sub_26A425354();
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

          else if ((v14 ^ sub_26A425354()))
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
                if (v37 || (sub_26A425354() & 1) == 0)
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
        sub_26A166B88(0, *(v8 + 16) + 1, 1, v8);
        v8 = v83;
      }

      v40 = *(v8 + 16);
      v39 = *(v8 + 24);
      v41 = v40 + 1;
      if (v40 >= v39 >> 1)
      {
        sub_26A166B88(v39 > 1, v40 + 1, 1, v8);
        v8 = v84;
      }

      *(v8 + 16) = v41;
      v42 = v8 + 32;
      v43 = (v8 + 32 + 16 * v40);
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
          v45 = (v42 + 16 * (v41 - 1));
          v46 = (v8 + 16 * v41);
          if (v41 >= 4)
          {
            break;
          }

          if (v41 == 3)
          {
            v47 = *(v8 + 32);
            v48 = *(v8 + 40);
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

          v76 = (v42 + 16 * (v44 - 1));
          v77 = *v76;
          v78 = (v42 + 16 * v44);
          v79 = v78[1];
          sub_26A3AF5C4((*a3 + 16 * *v76), (*a3 + 16 * *v78), (*a3 + 16 * v79), v90);
          if (v5)
          {
            goto LABEL_102;
          }

          if (v79 < v77)
          {
            goto LABEL_104;
          }

          v80 = v8;
          v81 = *(v8 + 16);
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
          memmove((v42 + 16 * v44), v78 + 2, 16 * (v81 - 1 - v44));
          *(v80 + 16) = v81 - 1;
          v82 = v81 > 2;
          v8 = v80;
          if (!v82)
          {
            goto LABEL_98;
          }
        }

        v51 = v42 + 16 * v41;
        v52 = *(v51 - 64);
        v53 = *(v51 - 56);
        v57 = __OFSUB__(v53, v52);
        v54 = v53 - v52;
        if (v57)
        {
          goto LABEL_107;
        }

        v56 = *(v51 - 48);
        v55 = *(v51 - 40);
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

  sub_26A3AF498(&v92, *a1, a3);
LABEL_102:
}

uint64_t sub_26A3AF498(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_26A3AF768(v5);
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
    sub_26A3AF5C4((*a3 + 16 * *v9), (*a3 + 16 * *v11), (*a3 + 16 * v12), a2);
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

uint64_t sub_26A3AF5C4(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 16;
  v9 = (a3 - a2) / 16;
  if (v8 < v9)
  {
    sub_26A168C84(a1, (a2 - a1) / 16, a4);
    v10 = &v4[16 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_36;
      }

      v12 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (v12 || (sub_26A425354() & 1) == 0)
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

  sub_26A168C84(a2, (a3 - a2) / 16, a4);
  v10 = &v4[16 * v9];
LABEL_19:
  v14 = v6 - 16;
  for (v5 -= 16; v10 > v4 && v6 > v7; v5 -= 16)
  {
    v16 = *(v10 - 2) == *(v6 - 2) && *(v10 - 1) == *(v6 - 1);
    if (!v16 && (sub_26A425354() & 1) != 0)
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

char *sub_26A3AF77C(char *__src, uint64_t a2, char *__dst)
{
  if (__dst != __src || &__src[16 * a2] <= __dst)
  {
    return memmove(__dst, __src, 16 * a2);
  }

  return __src;
}

char *sub_26A3AF7A8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036DB40, &qword_26A429F88);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

uint64_t sub_26A3AF8D0()
{
  OUTLINED_FUNCTION_14_4();
  v2 = v1(0);
  OUTLINED_FUNCTION_12(v2);
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_26A3AF924()
{
  OUTLINED_FUNCTION_131_0();
  v2 = v1(0);
  OUTLINED_FUNCTION_12(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_175();
  v6(v5);
  return v0;
}

uint64_t sub_26A3AF978()
{
  OUTLINED_FUNCTION_131_0();
  v2 = v1(0);
  OUTLINED_FUNCTION_12(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_175();
  v6(v5);
  return v0;
}

uint64_t OUTLINED_FUNCTION_3_56()
{
  v2 = *(v1 - 184);
  v3 = *(*(v1 - 176) + 8);
  return v0;
}

uint64_t OUTLINED_FUNCTION_4_46()
{

  return sub_26A424964();
}

uint64_t OUTLINED_FUNCTION_15_38()
{

  return sub_26A4247B4();
}

uint64_t OUTLINED_FUNCTION_17_29()
{
  v2 = *(v1 - 184);
  v3 = *(*(v1 - 176) + 8);
  return v0;
}

uint64_t *OUTLINED_FUNCTION_38_17@<X0>(uint64_t a1@<X8>)
{
  *(v2 + 24) = *(v1 - 256);
  *(v2 + 32) = a1;

  return __swift_allocate_boxed_opaque_existential_1Tm();
}

uint64_t OUTLINED_FUNCTION_39_22@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256);
  v4 = *(v1 - 152);

  return sub_26A424954();
}

uint64_t OUTLINED_FUNCTION_164_4()
{

  return sub_26A3AF8D0();
}

uint64_t OUTLINED_FUNCTION_166_4@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 - 256);

  return sub_26A3AF978();
}

void *OUTLINED_FUNCTION_181_2()
{

  return sub_26A10D50C();
}

uint64_t OUTLINED_FUNCTION_183_1()
{

  return sub_26A3AF8D0();
}

void OUTLINED_FUNCTION_184_1()
{

  JUMPOUT(0x26D65BA70);
}

uint64_t sub_26A3B0C20(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  v28 = MEMORY[0x277D84F90];
  sub_26A10D50C();
  v5 = 0;
  v22 = a1 + 32;
  v23 = v2;
  result = v28;
  do
  {
    v25 = result;
    v7 = *(v22 + 8 * v5);
    v8 = *(v7 + 16);
    if (v8)
    {
      v24 = v5;

      sub_26A10D50C();
      v9 = v3;
      v10 = *(type metadata accessor for TextElement() - 8);
      v11 = v7 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
      v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CC98, &unk_26A4439A0) + 32);
      v12 = *(v10 + 72);
      do
      {
        v13 = TextElement.description(redacted:)(*(a2 + v27));
        v14 = *(v9 + 16);
        if (v14 >= *(v9 + 24) >> 1)
        {
          sub_26A10D50C();
        }

        *(v9 + 16) = v14 + 1;
        *(v9 + 16 * v14 + 32) = v13;
        v11 += v12;
        --v8;
      }

      while (v8);
      v15 = MEMORY[0x277D84F90];
      v5 = v24;
    }

    else
    {
      v16 = *(v22 + 8 * v5);

      v15 = v3;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB68, &qword_26A426580);
    sub_26A3B4E10();
    v17 = sub_26A424B54();
    v19 = v18;

    result = v25;
    v20 = *(v25 + 16);
    if (v20 >= *(v25 + 24) >> 1)
    {
      sub_26A10D50C();
      result = v25;
    }

    ++v5;
    *(result + 16) = v20 + 1;
    v21 = result + 16 * v20;
    *(v21 + 32) = v17;
    *(v21 + 40) = v19;
    v3 = v15;
  }

  while (v5 != v23);
  return result;
}

void sub_26A3B0EC8(uint64_t a1)
{
  if (a1)
  {
    OUTLINED_FUNCTION_76();
    v2 = v1;
    v4 = v3;
    v6 = v5;
    v8 = sub_26A3B0C20(v7, v1);
    v9 = *(v8 + 16);
    if (v9)
    {
      v36 = v6;
      v37 = v4;
      v38 = v1;
      v45 = MEMORY[0x277D84F90];
      OUTLINED_FUNCTION_22_27();
      sub_26A10D50C();
      v35[4] = v8;
      v10 = (v8 + 40);
      v11 = v45;
      do
      {
        v39 = v9;
        v12 = *(v10 - 1);
        v13 = *v10;
        v43 = 538970715;
        v44 = 0xE400000000000000;

        v14 = sub_26A424CB4();
        v16 = v15;
        v41 = 10;
        v42 = 0xE100000000000000;
        MEMORY[0x28223BE20](v14);
        v35[2] = &v41;

        v40 = sub_26A3B47FC(0x7FFFFFFFFFFFFFFFLL, 0, sub_26A31BC60, v35, v12, v13, v17);
        v41 = 10;
        v42 = 0xE100000000000000;
        MEMORY[0x26D65BA70](v14, v16);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280372890, &unk_26A43D730);
        sub_26A3B4E10();
        sub_26A31BCE4();
        v18 = sub_26A424D14();
        v20 = v19;

        MEMORY[0x26D65BA70](v18, v20);

        MEMORY[0x26D65BA70](23818, 0xE200000000000000);

        v21 = v43;
        v22 = v44;
        v45 = v11;
        v23 = *(v11 + 16);
        if (v23 >= *(v11 + 24) >> 1)
        {
          sub_26A10D50C();
          v11 = v45;
        }

        *(v11 + 16) = v23 + 1;
        v24 = v11 + 16 * v23;
        *(v24 + 32) = v21;
        *(v24 + 40) = v22;
        v10 += 2;
        v9 = v39 - 1;
      }

      while (v39 != 1);

      v4 = v37;
      v2 = v38;
      v6 = v36;
    }

    else
    {

      v11 = MEMORY[0x277D84F90];
    }

    v43 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB68, &qword_26A426580);
    sub_26A3B4E10();
    v25 = sub_26A424B54();
    v27 = v26;

    v43 = 538970715;
    v44 = 0xE400000000000000;
    sub_26A31B838(v25, v27);

    v28 = OUTLINED_FUNCTION_12_2();
    MEMORY[0x26D65BA70](v28);

    MEMORY[0x26D65BA70](23818, 0xE200000000000000);
    v29 = v43;
    v30 = v44;
    v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CC98, &unk_26A4439A0) + 28);

    sub_26A10C6BC();
    v32 = *(*(v2 + v31) + 16);
    sub_26A10CAF0(v32);
    v33 = *(v2 + v31);
    *(v33 + 16) = v32 + 1;
    v34 = (v33 + 32 * v32);
    v34[4] = v6;
    v34[5] = v4;
    v34[6] = v29;
    v34[7] = v30;
    *(v2 + v31) = v33;
    OUTLINED_FUNCTION_75();
  }
}

uint64_t sub_26A3B1280()
{
  sub_26A33E0A4(v0, v4);
  if (v5 && v5 != 1)
  {
    type metadata accessor for _ProtoTable.Content(0);
    OUTLINED_FUNCTION_4_47();
    sub_26A3B4E70();
    return sub_26A4249C4();
  }

  else
  {
    sub_26A0D671C(v4, v3);
    v1 = type metadata accessor for _ProtoTable.Content(0);
    MEMORY[0x28223BE20](v1);
    OUTLINED_FUNCTION_4_47();
    sub_26A3B4E70();
    OUTLINED_FUNCTION_13_33();
    return __swift_destroy_boxed_opaque_existential_1(v3);
  }
}

void sub_26A3B145C()
{
  OUTLINED_FUNCTION_76();
  v2 = v1;
  v3 = type metadata accessor for _ProtoOptionalInt(0);
  v4 = OUTLINED_FUNCTION_12(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_18();
  v9 = (v8 - v7);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C898, &qword_26A425E48);
  v11 = OUTLINED_FUNCTION_41(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_64_1();
  MEMORY[0x28223BE20](v14);
  v16 = &v41[-v15];
  v17 = type metadata accessor for _ProtoMultilineTextProperty(0);
  v18 = OUTLINED_FUNCTION_41(v17);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_18();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C8B0, &unk_26A425E60);
  OUTLINED_FUNCTION_41(v21);
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v24);
  v26 = &v41[-v25];
  sub_26A10FD9C();
  v27 = type metadata accessor for _ProtoTable.Content.OneOf_Value(0);
  OUTLINED_FUNCTION_37(v26, 1, v27);
  if (v28)
  {
    if (qword_28036C5A0 != -1)
    {
      swift_once();
    }

    v36 = sub_26A424AE4();
    __swift_project_value_buffer(v36, qword_2803A8950);
    v37 = sub_26A424AD4();
    v38 = sub_26A424E14();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      *&v43 = v40;
      *v39 = 136446210;
      *(v39 + 4) = sub_26A0E8788(0xD00000000000001DLL, 0x800000026A44B060, &v43);
      _os_log_impl(&dword_26A0B8000, v37, v38, "%{public}s", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v40);
      MEMORY[0x26D65C950](v40, -1, -1);
      MEMORY[0x26D65C950](v39, -1, -1);
    }

    sub_26A424FC4();
    __break(1u);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        sub_26A3B4F44();
        *(&v44 + 1) = type metadata accessor for MultilineTextProperty(0);
        *&v45 = &protocol witness table for MultilineTextProperty;
        __swift_allocate_boxed_opaque_existential_1(&v43);
        sub_26A3B4F98();
        v30 = *(type metadata accessor for _ProtoTable.Content(0) + 24);
        sub_26A10FD9C();
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v16, 1, v3);
        v32 = EnumTagSinglePayload;
        if (EnumTagSinglePayload == 1)
        {
          sub_26A3B4FEC();
          OUTLINED_FUNCTION_0_75();
          sub_26A3B4FEC();
          sub_26A13440C();
          v33 = 0;
        }

        else
        {
          v42 = EnumTagSinglePayload;
          sub_26A13440C();
          sub_26A10FD9C();
          OUTLINED_FUNCTION_37(v0, 1, v3);
          if (v28)
          {
            *v9 = 0;
            v34 = v9 + *(v3 + 20);
            _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
            OUTLINED_FUNCTION_5_50();
            sub_26A3B4FEC();
            OUTLINED_FUNCTION_0_75();
            sub_26A3B4FEC();
            OUTLINED_FUNCTION_37(v0, 1, v3);
            if (!v28)
            {
              sub_26A13440C();
            }
          }

          else
          {
            sub_26A3B4FEC();
            OUTLINED_FUNCTION_0_75();
            sub_26A3B4FEC();
            sub_26A3B4F44();
          }

          v33 = *v9;
          sub_26A3B4FEC();
          v32 = v42;
        }

        *(&v45 + 1) = v33;
        LOBYTE(v46) = v32 == 1;
        HIBYTE(v46) = 0;
        v35 = v44;
        *v2 = v43;
        *(v2 + 16) = v35;
        *(v2 + 32) = v45;
        *(v2 + 48) = v46;
      }

      else
      {
        sub_26A3B4FEC();
        *(v2 + 24) = type metadata accessor for VisualProperty();
        *(v2 + 32) = &protocol witness table for VisualProperty;
        __swift_allocate_boxed_opaque_existential_1(v2);
        sub_26A3B4F44();
        *(v2 + 49) = 1;
      }
    }

    else
    {
      sub_26A3B4FEC();
      *v2 = 0u;
      *(v2 + 16) = 0u;
      *(v2 + 32) = 0u;
      *(v2 + 48) = 512;
      sub_26A3B4FEC();
    }

    OUTLINED_FUNCTION_75();
  }
}

void _ProtoTable.Content.redactedProto.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_76();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v24 = type metadata accessor for _ProtoVisualProperty();
  v25 = OUTLINED_FUNCTION_41(v24);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v28);
  v29 = type metadata accessor for _ProtoMultilineTextProperty(0);
  v30 = OUTLINED_FUNCTION_41(v29);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_64_1();
  MEMORY[0x28223BE20](v33);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C8B0, &unk_26A425E60);
  OUTLINED_FUNCTION_41(v34);
  v36 = *(v35 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v37);
  v39 = &a9 - v38;
  sub_26A3B4F98();
  sub_26A10FD9C();
  v40 = type metadata accessor for _ProtoTable.Content.OneOf_Value(0);
  OUTLINED_FUNCTION_37(v39, 1, v40);
  if (!v41)
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        sub_26A3B4F44();
        _ProtoMultilineTextProperty.redactedProto.getter();
        OUTLINED_FUNCTION_0_75();
        sub_26A3B4FEC();
      }

      else
      {
        sub_26A3B4F44();
        _ProtoVisualProperty.redactedProto.getter();
        OUTLINED_FUNCTION_8_38();
      }

      sub_26A13440C();
      sub_26A3B4F44();
      OUTLINED_FUNCTION_97();
      swift_storeEnumTagMultiPayload();
      __swift_storeEnumTagSinglePayload(v23, 0, 1, v40);
    }

    else
    {
      sub_26A3B4FEC();
    }
  }

  OUTLINED_FUNCTION_75();
}

uint64_t TableRow.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TableRow() + 20);
  v4 = sub_26A424734();
  v5 = OUTLINED_FUNCTION_12(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t type metadata accessor for TableRow()
{
  result = qword_280373738;
  if (!qword_280373738)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void TableRow.cells.getter()
{
  OUTLINED_FUNCTION_76();
  v1 = type metadata accessor for _ProtoTable.Content(0);
  v2 = OUTLINED_FUNCTION_79_0(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v7);
  v8 = *v0;
  v9 = *(*v0 + 16);
  if (v9)
  {
    v22 = MEMORY[0x277D84F90];
    v10 = OUTLINED_FUNCTION_22_27();
    sub_26A10DABC(v10, v11, v12);
    v13 = v8 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v14 = *(v4 + 72);
    do
    {
      sub_26A3B4F98();
      sub_26A3B4F98();
      sub_26A3B145C();
      OUTLINED_FUNCTION_5_50();
      sub_26A3B4FEC();
      v16 = *(v22 + 16);
      v15 = *(v22 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_26A10DABC(v15 > 1, v16 + 1, 1);
      }

      *(v22 + 16) = v16 + 1;
      v17 = v22 + 56 * v16;
      *(v17 + 80) = v21;
      *(v17 + 48) = v19;
      *(v17 + 64) = v20;
      *(v17 + 32) = v18;
      v13 += v14;
      --v9;
    }

    while (v9);
  }

  OUTLINED_FUNCTION_75();
}

void TableRow.action.getter()
{
  OUTLINED_FUNCTION_76();
  v26 = v0;
  v1 = type metadata accessor for _ProtoActionProperty();
  v2 = OUTLINED_FUNCTION_12(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_18();
  v7 = (v6 - v5);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  v9 = OUTLINED_FUNCTION_41(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_17();
  v14 = v12 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v25 - v16;
  v18 = *(type metadata accessor for _ProtoTable.Row(0) + 32);
  sub_26A10FD9C();
  v19 = 1;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v17, 1, v1);
  v21 = v26;
  sub_26A13440C();
  if (EnumTagSinglePayload != 1)
  {
    sub_26A10FD9C();
    OUTLINED_FUNCTION_37(v14, 1, v1);
    if (v22)
    {
      *v7 = MEMORY[0x277D84F90];
      v7[1] = 0;
      v7[2] = 0xE000000000000000;
      v23 = v7 + *(v1 + 24);
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      OUTLINED_FUNCTION_37(v14, 1, v1);
      if (!v22)
      {
        sub_26A13440C();
      }
    }

    else
    {
      OUTLINED_FUNCTION_12_2();
      sub_26A3B4F44();
    }

    sub_26A3B4F44();
    v19 = 0;
  }

  v24 = type metadata accessor for ActionProperty();
  __swift_storeEnumTagSinglePayload(v21, v19, 1, v24);
  OUTLINED_FUNCTION_75();
}

uint64_t TableRow.backgrounds.getter()
{
  v1 = type metadata accessor for BackgroundElement();
  v2 = OUTLINED_FUNCTION_79_0(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_18();
  v7 = *(v0 + 8);
  v8 = *(v7 + 16);
  v9 = MEMORY[0x277D84F90];
  if (v8)
  {
    v19 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_22_27();
    sub_26A10DADC();
    v9 = v19;
    v10 = type metadata accessor for _ProtoBackgroundElement();
    OUTLINED_FUNCTION_79_0(v10);
    v12 = v7 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v14 = *(v13 + 72);
    do
    {
      sub_26A3B4F98();
      v15 = *(v19 + 16);
      if (v15 >= *(v19 + 24) >> 1)
      {
        sub_26A10DADC();
      }

      *(v19 + 16) = v15 + 1;
      v16 = v19 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
      v17 = *(v4 + 72);
      sub_26A3B4F44();
      v12 += v14;
      --v8;
    }

    while (v8);
  }

  return v9;
}

uint64_t TableRow.componentName.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_175();
}

void _ProtoTable.Row.redactedProto.getter()
{
  OUTLINED_FUNCTION_76();
  v2 = v1;
  v3 = type metadata accessor for _ProtoActionProperty();
  v4 = OUTLINED_FUNCTION_12(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_17();
  v75 = (v7 - v8);
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_48();
  v74 = v10;
  v11 = type metadata accessor for _ProtoVisualProperty();
  v12 = OUTLINED_FUNCTION_41(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_17();
  v80 = v15 - v16;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_48();
  v79 = v18;
  v19 = type metadata accessor for _ProtoMultilineTextProperty(0);
  v20 = OUTLINED_FUNCTION_41(v19);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_17();
  v78 = v23 - v24;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_48();
  v77 = v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C8B0, &unk_26A425E60);
  OUTLINED_FUNCTION_41(v27);
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v30);
  v32 = v70 - v31;
  v33 = type metadata accessor for _ProtoTable.Content(0);
  v34 = OUTLINED_FUNCTION_79_0(v33);
  v36 = v35;
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_64_1();
  MEMORY[0x28223BE20](v39);
  MEMORY[0x28223BE20](v40);
  v42 = v70 - v41;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  v44 = OUTLINED_FUNCTION_41(v43);
  v46 = *(v45 + 64);
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_17();
  v73 = v47 - v48;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_48();
  v76 = v50;
  OUTLINED_FUNCTION_7_31();
  sub_26A3B4F98();
  v51 = *v2;
  v52 = *(*v2 + 16);
  if (v52)
  {
    v71 = v3;
    v72 = v2;
    v84 = MEMORY[0x277D84F90];
    v53 = v51;
    sub_26A10D4B4();
    v54 = v84;
    v55 = *(v36 + 80);
    v70[1] = v53;
    v83 = (v55 + 32) & ~v55;
    v56 = v53 + v83;
    v57 = *(v36 + 72);
    v81 = v42;
    v82 = v57;
    do
    {
      sub_26A3B4F98();
      sub_26A3B4F98();
      sub_26A10FD9C();
      v58 = type metadata accessor for _ProtoTable.Content.OneOf_Value(0);
      OUTLINED_FUNCTION_37(v32, 1, v58);
      if (!v59)
      {
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload)
        {
          if (EnumCaseMultiPayload == 1)
          {
            sub_26A3B4F44();
            _ProtoMultilineTextProperty.redactedProto.getter();
            OUTLINED_FUNCTION_0_75();
            sub_26A3B4FEC();
          }

          else
          {
            sub_26A3B4F44();
            _ProtoVisualProperty.redactedProto.getter();
            OUTLINED_FUNCTION_8_38();
          }

          sub_26A13440C();
          OUTLINED_FUNCTION_132();
          sub_26A3B4F44();
          swift_storeEnumTagMultiPayload();
          __swift_storeEnumTagSinglePayload(v0, 0, 1, v58);
        }

        else
        {
          sub_26A3B4FEC();
        }
      }

      sub_26A3B4F44();
      OUTLINED_FUNCTION_5_50();
      sub_26A3B4FEC();
      v84 = v54;
      v61 = *(v54 + 16);
      if (v61 >= *(v54 + 24) >> 1)
      {
        sub_26A10D4B4();
        v54 = v84;
      }

      *(v54 + 16) = v61 + 1;
      v62 = v82;
      sub_26A3B4F44();
      v56 += v62;
      --v52;
    }

    while (v52);

    v3 = v71;
    v2 = v72;
  }

  else
  {

    v54 = MEMORY[0x277D84F90];
  }

  *v2 = v54;
  v63 = *(type metadata accessor for _ProtoTable.Row(0) + 32);
  v64 = v76;
  sub_26A10FD9C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v64, 1, v3);
  sub_26A13440C();
  if (EnumTagSinglePayload != 1)
  {
    v66 = v73;
    sub_26A10FD9C();
    OUTLINED_FUNCTION_37(v66, 1, v3);
    if (v59)
    {
      v67 = v74;
      *v74 = MEMORY[0x277D84F90];
      v67[1] = 0;
      v67[2] = 0xE000000000000000;
      v68 = v67 + *(v3 + 24);
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      OUTLINED_FUNCTION_37(v66, 1, v3);
      v69 = v75;
      if (!v59)
      {
        sub_26A13440C();
      }
    }

    else
    {
      sub_26A3B4F44();
      v69 = v75;
    }

    _s10SnippetKit14ActionPropertyV13redactedProtoAA01_fcD0Vvg_0(v69);
    sub_26A3B4FEC();
    sub_26A13440C();
    sub_26A3B4F44();
    __swift_storeEnumTagSinglePayload(v2 + v63, 0, 1, v3);
  }

  OUTLINED_FUNCTION_75();
}

uint64_t TableRow.init(proto:)@<X0>(uint64_t a1@<X8>)
{
  v1 = a1 + *(type metadata accessor for TableRow() + 20);
  sub_26A424724();
  OUTLINED_FUNCTION_175();
  return sub_26A3B4F44();
}

uint64_t TableRow.init(cells:backgrounds:action:componentName:)@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for _ProtoTable.Row(0);
  OUTLINED_FUNCTION_3_57();
  sub_26A3B4E70();
  OUTLINED_FUNCTION_59_9();

  v2 = a1 + *(type metadata accessor for TableRow() + 20);
  sub_26A424724();
  return sub_26A13440C();
}

uint64_t sub_26A3B2B64(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v66 = a6;
  v65 = a5;
  v62 = a4;
  v67 = a1;
  v8 = type metadata accessor for BackgroundElement();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v64 = v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for _ProtoBackgroundElement();
  v63 = *(v11 - 8);
  v12 = *(v63 + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v59[5] = v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ActionProperty();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v59[4] = v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for _ProtoTable.Content(0);
  v68 = *(v17 - 8);
  v18 = *(v68 + 64);
  MEMORY[0x28223BE20](v17);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v60 = v59 - v21;
  v61 = type metadata accessor for _ProtoActionProperty();
  v22 = *(*(v61 - 8) + 64);
  MEMORY[0x28223BE20](v61);
  v59[3] = v59 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v59[2] = v59 - v25;
  v26 = *(a2 + 16);
  v27 = MEMORY[0x277D84F90];
  if (v26)
  {
    v59[1] = a3;
    v78 = MEMORY[0x277D84F90];
    sub_26A10D4B4();
    v27 = v78;
    v28 = a2 + 32;
    do
    {
      sub_26A33E0A4(v28, v75);
      sub_26A33E0A4(v75, v71);
      if (v74)
      {
        if (v74 != 1)
        {
          sub_26A3B4E70();
          v34 = v69;
          sub_26A4249C4();
          v69 = v34;
          goto LABEL_9;
        }

        v29 = sub_26A0D671C(v71, v70);
        MEMORY[0x28223BE20](v29);
        v59[-2] = v70;
        sub_26A3B4E70();
      }

      else
      {
        v30 = v72;
        v31 = v73;
        v32 = sub_26A0D671C(v71, v70);
        MEMORY[0x28223BE20](v32);
        v59[-4] = v70;
        v59[-3] = v30;
        LOBYTE(v59[-2]) = v31;
        sub_26A3B4E70();
      }

      v33 = v69;
      sub_26A4249C4();
      v69 = v33;
      __swift_destroy_boxed_opaque_existential_1(v70);
LABEL_9:
      sub_26A3B4B94(v75);
      v78 = v27;
      v35 = *(v27 + 16);
      if (v35 >= *(v27 + 24) >> 1)
      {
        sub_26A10D4B4();
        v27 = v78;
      }

      *(v27 + 16) = v35 + 1;
      v36 = v27 + ((*(v68 + 80) + 32) & ~*(v68 + 80));
      v37 = *(v68 + 72);
      sub_26A3B4F44();
      v28 += 56;
      --v26;
    }

    while (v26);
  }

  v38 = v67;
  v39 = *v67;

  *v38 = v27;
  sub_26A10FD9C();
  v40 = v76;
  v41 = v63;
  v42 = v62;
  v43 = v61;
  if (v76)
  {
    v44 = v77;
    __swift_project_boxed_opaque_existential_1(v75, v76);
    (*(v44 + 8))(v40, v44);
    v45 = v60;
    sub_26A3B4F44();
    __swift_storeEnumTagSinglePayload(v45, 0, 1, v43);
    __swift_destroy_boxed_opaque_existential_1(v75);
    if (__swift_getEnumTagSinglePayload(v45, 1, v43) != 1)
    {
      sub_26A3B4F44();
      sub_26A3B4F44();
      v46 = *(type metadata accessor for _ProtoTable.Row(0) + 32);
      sub_26A13440C();
      sub_26A3B4F44();
      __swift_storeEnumTagSinglePayload(v38 + v46, 0, 1, v43);
      goto LABEL_17;
    }
  }

  else
  {
    sub_26A13440C();
    __swift_storeEnumTagSinglePayload(v60, 1, 1, v43);
  }

  sub_26A13440C();
LABEL_17:
  v47 = *(v42 + 16);
  v48 = MEMORY[0x277D84F90];
  if (v47)
  {
    *&v71[0] = MEMORY[0x277D84F90];
    sub_26A10D404();
    v48 = *&v71[0];
    v49 = v42 + 32;
    do
    {
      sub_26A0E5D68(v49, v75);
      v50 = v76;
      v51 = v77;
      __swift_project_boxed_opaque_existential_1(v75, v76);
      (*(v51 + 8))(v50, v51);
      sub_26A3B4F44();
      __swift_destroy_boxed_opaque_existential_1(v75);
      *&v71[0] = v48;
      v52 = *(v48 + 16);
      if (v52 >= *(v48 + 24) >> 1)
      {
        sub_26A10D404();
        v48 = *&v71[0];
      }

      *(v48 + 16) = v52 + 1;
      v53 = v48 + ((*(v41 + 80) + 32) & ~*(v41 + 80));
      v54 = *(v41 + 72);
      sub_26A3B4F44();
      v49 += 40;
      --v47;
    }

    while (v47);
    v38 = v67;
  }

  v55 = v38[1];

  v38[1] = v48;
  v56 = v38[3];
  v57 = v66;

  v38[2] = v65;
  v38[3] = v57;
  return result;
}

uint64_t TableRow.init(_:backgrounds:action:componentName:)@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_34_14();
  type metadata accessor for _ProtoTable.Row(0);
  OUTLINED_FUNCTION_3_57();
  sub_26A3B4E70();
  OUTLINED_FUNCTION_59_9();

  v2 = a1 + *(type metadata accessor for TableRow() + 20);
  sub_26A424724();
  OUTLINED_FUNCTION_97();
  sub_26A13440C();
  return sub_26A13440C();
}

uint64_t sub_26A3B3548@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_34_14();
  type metadata accessor for _ProtoTable.Row(0);
  OUTLINED_FUNCTION_3_57();
  sub_26A3B4E70();
  OUTLINED_FUNCTION_59_9();

  v2 = a1 + *(type metadata accessor for TableRow() + 20);
  sub_26A424724();
  OUTLINED_FUNCTION_97();
  sub_26A13440C();
  return sub_26A13440C();
}

Swift::String __swiftcall TableRow.description(redacted:)(Swift::Bool redacted)
{
  OUTLINED_FUNCTION_76();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB18, &unk_26A427670);
  OUTLINED_FUNCTION_41(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  v8 = &v41 - v7;
  v9 = type metadata accessor for TableRow();
  v10 = OUTLINED_FUNCTION_12(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_17();
  v15 = v13 - v14;
  MEMORY[0x28223BE20](v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28036CCE8, &qword_26A426778);
  OUTLINED_FUNCTION_12(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v20);
  v22 = &v41 - v21;
  sub_26A3B4F98();
  if (v2)
  {
    _ProtoTable.Row.redactedProto.getter();
    v23 = v15 + *(v9 + 20);
    sub_26A424724();
  }

  else
  {
    sub_26A3B4F98();
  }

  sub_26A3B4F44();
  v22[*(v17 + 32)] = v2 & 1;
  sub_26A3B4FEC();
  v24 = MEMORY[0x277D84F90];
  *&v22[*(v17 + 28)] = MEMORY[0x277D84F90];
  TableRow.cells.getter();
  v26 = v25;
  v27 = *(v25 + 16);
  if (v27)
  {
    v41 = v8;
    v42 = v24;
    sub_26A10D50C();
    v28 = v42;
    v29 = v26 + 32;
    do
    {
      v30 = TableRow.Content.description(redacted:)(0);
      v42 = v28;
      v31 = *(v28 + 16);
      if (v31 >= *(v28 + 24) >> 1)
      {
        sub_26A10D50C();
        v28 = v42;
      }

      *(v28 + 16) = v31 + 1;
      *(v28 + 16 * v31 + 32) = v30;
      v29 += 56;
      --v27;
    }

    while (v27);
  }

  else
  {

    v28 = MEMORY[0x277D84F90];
  }

  sub_26A3A2028(v28, 0, 0, 0);

  KeyPath = swift_getKeyPath();
  sub_26A0F6C04(KeyPath, 0x756F72676B636162, 0xEB0000000073646ELL);

  TableRow.action.getter();
  sub_26A103F10();
  sub_26A13440C();
  v33 = swift_getKeyPath();
  sub_26A0F74C4(v33, 0x6E656E6F706D6F63, 0xED0000656D614E74, 0, v34, v35, v36, v37, v41, v42);

  sub_26A0F90B0();
  sub_26A13440C();
  OUTLINED_FUNCTION_175();
  OUTLINED_FUNCTION_75();
  result._object = v39;
  result._countAndFlagsBits = v38;
  return result;
}

uint64_t sub_26A3B39D4()
{
  OUTLINED_FUNCTION_34_12();
  result = TableRow.backgrounds.getter();
  *v0 = result;
  return result;
}

uint64_t sub_26A3B39FC()
{
  OUTLINED_FUNCTION_34_12();
  result = TableRow.componentName.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

BOOL TableRow.Content.isEmpty.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_19_26(a1);
  v2 = 0;
  if (v8 == 2 && !v7)
  {
    v1 = vorrq_s8(v5, v6);
    if (!(*&vorr_s8(*v1.i8, *&vextq_s8(v1, v1, 8uLL)) | v4[1] | v4[0]))
    {
      v2 = 1;
    }
  }

  sub_26A3B4B94(v4);
  return v2;
}

BOOL TableRow.Content.isText.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_19_26(a1);
  v1 = v4;
  if (v4)
  {
    sub_26A3B4B94(v3);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v3);
  }

  return v1 == 0;
}

BOOL TableRow.Content.isVisual.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_19_26(a1);
  v1 = v3[49] == 1;
  sub_26A3B4B94(v3);
  return v1;
}

uint64_t TableRow.Content.lineLimit.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_19_26(a1);
  if (v4)
  {
    sub_26A3B4B94(v3);
    return 0;
  }

  else
  {
    v1 = v3[5];
    __swift_destroy_boxed_opaque_existential_1(v3);
  }

  return v1;
}

uint64_t sub_26A3B3B8C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C8B0, &unk_26A425E60);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v8 - v4;
  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v6 = type metadata accessor for _ProtoTable.Content.OneOf_Value(0);
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v6);
  return sub_26A3B4ED4(v5, a1);
}

uint64_t sub_26A3B3C50(uint64_t a1, void *a2, uint64_t a3, int a4)
{
  v29 = a4;
  v28 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C898, &qword_26A425E48);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v27 - v8;
  v27 = type metadata accessor for _ProtoOptionalInt(0);
  v10 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27);
  v12 = (&v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = type metadata accessor for MultilineTextProperty(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C8B0, &unk_26A425E60);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v27 - v17;
  v19 = a2[3];
  v20 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v19);
  (*(v20 + 8))(v19, v20);
  sub_26A3B4F44();
  v21 = type metadata accessor for _ProtoTable.Content.OneOf_Value(0);
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v18, 0, 1, v21);
  result = sub_26A3B4ED4(v18, a1);
  if (v29)
  {
    return result;
  }

  v23 = v28;
  if (v28 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v28 > 0x7FFFFFFF)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v24 = *(type metadata accessor for _ProtoTable.Content(0) + 24);
  sub_26A10FD9C();
  v25 = v27;
  if (__swift_getEnumTagSinglePayload(v9, 1, v27) == 1)
  {
    v26 = v12 + *(v25 + 20);
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    if (__swift_getEnumTagSinglePayload(v9, 1, v25) != 1)
    {
      sub_26A13440C();
    }
  }

  else
  {
    sub_26A3B4F44();
  }

  *v12 = v23;
  sub_26A13440C();
  sub_26A3B4F44();
  return __swift_storeEnumTagSinglePayload(a1 + v24, 0, 1, v25);
}

uint64_t sub_26A3B3F84(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for VisualProperty();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C8B0, &unk_26A425E60);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v14 - v8;
  v10 = a2[3];
  v11 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v10);
  (*(v11 + 8))(v10, v11);
  sub_26A3B4F44();
  v12 = type metadata accessor for _ProtoTable.Content.OneOf_Value(0);
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v12);
  return sub_26A3B4ED4(v9, a1);
}

Swift::String __swiftcall TableRow.Content.description(redacted:)(Swift::Bool redacted)
{
  OUTLINED_FUNCTION_76();
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CCA0, &unk_26A426730);
  OUTLINED_FUNCTION_12(v64);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  v6 = &v63 - v5;
  v7 = type metadata accessor for VisualProperty();
  v8 = OUTLINED_FUNCTION_41(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_48();
  v65 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB18, &unk_26A427670);
  OUTLINED_FUNCTION_41(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CC98, &unk_26A4439A0);
  OUTLINED_FUNCTION_12(v18);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v21);
  v23 = &v63 - v22;
  v24 = type metadata accessor for MultilineTextProperty(0);
  v25 = OUTLINED_FUNCTION_41(v24);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v28);
  MEMORY[0x28223BE20](v29);
  v31 = &v63 - v30;
  sub_26A33E0A4(v1, v72);
  if (v75)
  {
    if (v75 != 1)
    {
      goto LABEL_15;
    }

    sub_26A0D671C(v72, v69);
    v67 = 0xA286C6175736976;
    v68 = 0xEA00000000002020;
    v32 = v71;
    __swift_project_boxed_opaque_existential_1(v69, v70);
    v33 = *(v32 + 8);
    v34 = v65;
    v35 = OUTLINED_FUNCTION_12_2();
    v36(v35);
    sub_26A3B4F98();
    v37 = *(v34 + 9) ^ 1;
    if (*(v34 + 9))
    {
      sub_26A3B4F98();
    }

    else
    {
      _ProtoVisualProperty.redactedProto.getter();
    }

    v42 = v64;
    sub_26A3B4F44();
    v6[*(v42 + 32)] = v37;
    sub_26A3B4FEC();
    *&v6[*(v42 + 28)] = MEMORY[0x277D84F90];
    swift_getKeyPath();
    sub_26A0F739C();

    v43 = v6[9];
    OUTLINED_FUNCTION_12_31();
    sub_26A1467C0(v44);
    VisualProperty.focusAction.getter();
    OUTLINED_FUNCTION_14_31();
    sub_26A109770();
    OUTLINED_FUNCTION_132();
    sub_26A13440C();
    VisualProperty.selectedAction.getter();
    OUTLINED_FUNCTION_11_36();
    sub_26A109770();
    OUTLINED_FUNCTION_132();
    sub_26A13440C();
    sub_26A100DE8();
    sub_26A13440C();
    sub_26A3B4FEC();
    v45 = OUTLINED_FUNCTION_175();
    v47 = sub_26A31B838(v45, v46);
    v49 = v48;

    MEMORY[0x26D65BA70](v47, v49);
  }

  else
  {
    v65 = v73;
    v38 = v74;
    sub_26A0D671C(v72, v69);
    v67 = 0;
    v68 = 0xE000000000000000;
    sub_26A424EF4();

    v67 = 0x20200A2874786574;
    v68 = 0xE800000000000000;
    v39 = v70;
    v40 = v71;
    __swift_project_boxed_opaque_existential_1(v69, v70);
    (*(v40 + 8))(v39, v40);
    sub_26A3B4F98();
    v41 = v31[9] ^ 1;
    if (v31[9])
    {
      sub_26A3B4F98();
    }

    else
    {
      _ProtoMultilineTextProperty.redactedProto.getter();
    }

    OUTLINED_FUNCTION_12_2();
    sub_26A3B4F44();
    v23[*(v18 + 32)] = v41;
    sub_26A3B4FEC();
    *&v23[*(v18 + 28)] = MEMORY[0x277D84F90];
    MultilineTextProperty.allTextElements.getter();
    sub_26A3B0EC8(v50);

    v51 = v23[9];
    OUTLINED_FUNCTION_12_31();
    sub_26A14685C(v52);
    MultilineTextProperty.focusAction.getter();
    OUTLINED_FUNCTION_14_31();
    sub_26A109874();
    OUTLINED_FUNCTION_97();
    sub_26A13440C();
    MultilineTextProperty.selectedAction.getter();
    OUTLINED_FUNCTION_11_36();
    sub_26A109874();
    OUTLINED_FUNCTION_97();
    sub_26A13440C();
    sub_26A100FB8();
    sub_26A13440C();
    sub_26A3B4FEC();
    v53 = OUTLINED_FUNCTION_175();
    v55 = sub_26A31B838(v53, v54);
    v57 = v56;

    MEMORY[0x26D65BA70](v55, v57);

    MEMORY[0x26D65BA70](0x656E696C20200A2CLL, 0xEF203A74696D694CLL);
    v58 = v65;
    if (v38)
    {
      v58 = -1;
    }

    v66 = v58;
    v59 = sub_26A4251B4();
    MEMORY[0x26D65BA70](v59);

    MEMORY[0x26D65BA70](10506, 0xE200000000000000);
  }

  __swift_destroy_boxed_opaque_existential_1(v69);
LABEL_15:
  OUTLINED_FUNCTION_175();
  OUTLINED_FUNCTION_75();
  result._object = v61;
  result._countAndFlagsBits = v60;
  return result;
}

void sub_26A3B4790()
{
  OUTLINED_FUNCTION_34_12();
  VisualProperty.allVisualElements.getter();
  *v0 = v1;
}

uint64_t sub_26A3B47B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_26A425354() & 1;
  }
}

uint64_t sub_26A3B47FC@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v44 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_41;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return MEMORY[0x277D84F90];
    }

    sub_26A424CD4();
    OUTLINED_FUNCTION_27_25();
    sub_26A166AA8(0, 1, 1, MEMORY[0x277D84F90]);
    v14 = v31;
    v9 = *(v31 + 16);
    a7 = *(v31 + 24);
LABEL_37:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_38:
      *(v14 + 16) = v10;
      v32 = (v14 + 32 * v9);
      v32[4] = v7;
      v32[5] = v11;
      v32[6] = v12;
      v32[7] = v13;
      return v14;
    }

LABEL_41:
    sub_26A166AA8(a7 > 1, v10, 1, v14);
    v14 = v33;
    goto LABEL_38;
  }

  v7 = a4;
  v14 = 4 * v16;
  v42 = MEMORY[0x277D84F90];
  v17 = 15;
  while (1)
  {
    v40 = v17;
    while (1)
    {
      v13 = v17 >> 14;
      if (v17 >> 14 == v14)
      {
        v17 = v40;
        goto LABEL_30;
      }

      OUTLINED_FUNCTION_23_36();
      v18 = sub_26A424CC4();
      v12 = v19;
      v43[0] = v18;
      v43[1] = v19;
      v20 = v44(v43);
      if (v8)
      {

        return v14;
      }

      v21 = v20;

      if (v21)
      {
        break;
      }

      OUTLINED_FUNCTION_23_36();
      v17 = sub_26A424C24();
    }

    v23 = (v40 >> 14 == v13) & a2;
    if (v23)
    {
      goto LABEL_20;
    }

    if (v13 < v40 >> 14)
    {
      break;
    }

    v41 = sub_26A424CD4();
    v36 = v25;
    v37 = v24;
    v35 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_26A166AA8(0, *(v42 + 16) + 1, 1, v42);
      v42 = v29;
    }

    v13 = *(v42 + 16);
    v27 = *(v42 + 24);
    v12 = v13 + 1;
    if (v13 >= v27 >> 1)
    {
      sub_26A166AA8(v27 > 1, v13 + 1, 1, v42);
      v42 = v30;
    }

    *(v42 + 16) = v12;
    v28 = (v42 + 32 * v13);
    v28[4] = v41;
    v28[5] = v37;
    v28[6] = v36;
    v28[7] = v35;
LABEL_20:
    OUTLINED_FUNCTION_23_36();
    v17 = sub_26A424C24();
    if ((v23 & 1) == 0 && *(v42 + 16) == a1)
    {
LABEL_30:
      if (v17 >> 14 == v14 && (a2 & 1) != 0)
      {

        return v42;
      }

      if (v14 < v17 >> 14)
      {
        __break(1u);
      }

      else
      {
        sub_26A424CD4();
        OUTLINED_FUNCTION_27_25();
        v14 = v42;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
LABEL_36:
          v9 = *(v14 + 16);
          a7 = *(v14 + 24);
          goto LABEL_37;
        }
      }

      sub_26A166AA8(0, *(v14 + 16) + 1, 1, v14);
      v14 = v34;
      goto LABEL_36;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_26A3B4C7C()
{
  result = type metadata accessor for _ProtoTable.Row(319);
  if (v1 <= 0x3F)
  {
    result = sub_26A424734();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

__n128 __swift_memcpy50_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_26A3B4D1C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 50))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 49);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26A3B4D58(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 48) = 0;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 50) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 50) = 0;
    }

    if (a2)
    {
      *(result + 49) = -a2;
    }
  }

  return result;
}

uint64_t sub_26A3B4DA8(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 48) = 0;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 49) = a2;
  return result;
}

unint64_t sub_26A3B4E10()
{
  OUTLINED_FUNCTION_14_4();
  result = *v3;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, v0);
  }

  return result;
}

unint64_t sub_26A3B4E70()
{
  OUTLINED_FUNCTION_14_4();
  result = *v2;
  if (!result)
  {
    v1(255);
    result = swift_getWitnessTable();
    atomic_store(result, v0);
  }

  return result;
}

uint64_t sub_26A3B4ED4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C8B0, &unk_26A425E60);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A3B4F44()
{
  OUTLINED_FUNCTION_131_0();
  v2 = v1(0);
  OUTLINED_FUNCTION_12(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_175();
  v6(v5);
  return v0;
}

uint64_t sub_26A3B4F98()
{
  OUTLINED_FUNCTION_131_0();
  v2 = v1(0);
  OUTLINED_FUNCTION_12(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_175();
  v6(v5);
  return v0;
}

uint64_t sub_26A3B4FEC()
{
  OUTLINED_FUNCTION_14_4();
  v2 = v1(0);
  OUTLINED_FUNCTION_12(v2);
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t OUTLINED_FUNCTION_8_38()
{

  return sub_26A3B4FEC();
}

uint64_t OUTLINED_FUNCTION_19_26(uint64_t a1, ...)
{
  va_start(va, a1);

  return sub_26A33E0A4(v1, va);
}

uint64_t OUTLINED_FUNCTION_27_25()
{
}

uint64_t OUTLINED_FUNCTION_34_14()
{

  return sub_26A10FD9C();
}

uint64_t static _ProtoButton_Container.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_26A0DCCA8();
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(type metadata accessor for _ProtoButton_Container(0) + 20);
  sub_26A424794();
  OUTLINED_FUNCTION_2_53();
  sub_26A3B6B14();
  return OUTLINED_FUNCTION_14_7() & 1;
}

uint64_t sub_26A3B531C()
{
  OUTLINED_FUNCTION_131_0();
  v2 = v1(0);
  OUTLINED_FUNCTION_12(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_175();
  v6(v5);
  return v0;
}

uint64_t sub_26A3B538C()
{
  sub_26A13440C();
  OUTLINED_FUNCTION_157();
  sub_26A3B531C();
  v1 = type metadata accessor for _ProtoButton_Container.ButtonItem.OneOf_Value(0);
  OUTLINED_FUNCTION_21_3();
  swift_storeEnumTagMultiPayload();

  return __swift_storeEnumTagSinglePayload(v0, 0, 1, v1);
}

uint64_t _ProtoButton_Container.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  v1 = a1 + *(type metadata accessor for _ProtoButton_Container(0) + 20);
  return _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
}

uint64_t _ProtoButton_Container.buttonItems.setter()
{
  OUTLINED_FUNCTION_14_4();
  v2 = *v1;

  *v1 = v0;
  return result;
}

uint64_t (*_ProtoButton_Container.unknownFields.modify())()
{
  OUTLINED_FUNCTION_14_4();
  v0 = *(type metadata accessor for _ProtoButton_Container(0) + 20);
  return nullsub_1;
}

uint64_t sub_26A3B5554(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C8E8, &qword_26A437B80);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t _ProtoButton_Container.ButtonItem.button.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = OUTLINED_FUNCTION_12_2();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_41(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_8_39();
  if (v8)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_21_3();
    if (!swift_getEnumCaseMultiPayload())
    {
      OUTLINED_FUNCTION_246();
      return sub_26A3B531C();
    }

    sub_26A3B58B0();
  }

  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v10 = *(type metadata accessor for _ProtoButton(0) + 20);
  if (qword_28036C428 != -1)
  {
    OUTLINED_FUNCTION_60_4();
  }

  *(a1 + v10) = qword_280371710;
}

void (*_ProtoButton_Container.ButtonItem.button.modify())(uint64_t **a1, char a2)
{
  v1 = OUTLINED_FUNCTION_17_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_16_2(v2);
  v3 = OUTLINED_FUNCTION_22_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_41(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_15_3(v7);
  v9 = type metadata accessor for _ProtoButton(v8);
  OUTLINED_FUNCTION_12(v9);
  v11 = *(v10 + 64);
  *(v0 + 16) = __swift_coroFrameAllocStub(v11);
  v12 = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_10_46(v12);
  OUTLINED_FUNCTION_4_48();
  if (v13)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_12_2();
    if (!swift_getEnumCaseMultiPayload())
    {
      OUTLINED_FUNCTION_157();
      sub_26A3B531C();
      return sub_26A3B5880;
    }

    sub_26A3B58B0();
  }

  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v15 = *(v9 + 20);
  if (qword_28036C428 != -1)
  {
    OUTLINED_FUNCTION_60_4();
  }

  *(v11 + v15) = qword_280371710;

  return sub_26A3B5880;
}

uint64_t sub_26A3B58B0()
{
  OUTLINED_FUNCTION_14_4();
  v2 = v1(0);
  OUTLINED_FUNCTION_12(v2);
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t _ProtoButton_Container.ButtonItem.playerButton.getter()
{
  v0 = OUTLINED_FUNCTION_12_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_8_39();
  if (v6)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_21_3();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_246();
      return sub_26A3B531C();
    }

    sub_26A3B58B0();
  }

  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v9 = type metadata accessor for _ProtoPlayerButton(0);
  v10 = *(v9 + 20);
  v11 = type metadata accessor for _ProtoButton(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v11);
  v15 = *(v9 + 24);
  OUTLINED_FUNCTION_92();
  return __swift_storeEnumTagSinglePayload(v16, v17, v18, v11);
}

uint64_t sub_26A3B5A34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(char *))
{
  v8 = a5(0);
  OUTLINED_FUNCTION_41(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v11);
  v13 = &v15 - v12;
  OUTLINED_FUNCTION_12_2();
  sub_26A3B5C74();
  return a7(v13);
}

void (*_ProtoButton_Container.ButtonItem.playerButton.modify())(uint64_t **a1, char a2)
{
  v1 = OUTLINED_FUNCTION_17_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_16_2(v2);
  v3 = OUTLINED_FUNCTION_22_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_41(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_15_3(v7);
  v9 = type metadata accessor for _ProtoPlayerButton(v8);
  OUTLINED_FUNCTION_12(v9);
  v11 = *(v10 + 64);
  *(v0 + 16) = __swift_coroFrameAllocStub(v11);
  v12 = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_10_46(v12);
  OUTLINED_FUNCTION_4_48();
  if (v13)
  {
    sub_26A13440C();
LABEL_7:
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    v15 = *(v9 + 20);
    v16 = type metadata accessor for _ProtoButton(0);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v17, v18, v19, v16);
    v20 = *(v9 + 24);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v21, v22, v23, v16);
    return sub_26A3B5C44;
  }

  OUTLINED_FUNCTION_12_2();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 1)
  {
    sub_26A3B58B0();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_157();
  sub_26A3B531C();
  return sub_26A3B5C44;
}

uint64_t sub_26A3B5C74()
{
  OUTLINED_FUNCTION_131_0();
  v2 = v1(0);
  OUTLINED_FUNCTION_12(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_175();
  v6(v5);
  return v0;
}

uint64_t _ProtoButton_Container.ButtonItem.customCanvas.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = OUTLINED_FUNCTION_12_2();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_41(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_8_39();
  if (v8)
  {
    sub_26A13440C();
  }

  else
  {
    OUTLINED_FUNCTION_21_3();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {
      OUTLINED_FUNCTION_246();
      return sub_26A3B531C();
    }

    sub_26A3B58B0();
  }

  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = xmmword_26A426400;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0xE000000000000000;
  *(a1 + 64) = 0;
  *(a1 + 66) = 0;
  v11 = a1 + *(type metadata accessor for _ProtoCustomCanvas() + 44);
  return _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
}

void (*_ProtoButton_Container.ButtonItem.customCanvas.modify())(uint64_t **a1, char a2)
{
  v1 = OUTLINED_FUNCTION_17_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_16_2(v2);
  v3 = OUTLINED_FUNCTION_22_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_41(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  OUTLINED_FUNCTION_15_3(v7);
  v8 = type metadata accessor for _ProtoCustomCanvas();
  OUTLINED_FUNCTION_12(v8);
  v10 = *(v9 + 64);
  *(v0 + 16) = __swift_coroFrameAllocStub(v10);
  v11 = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_10_46(v11);
  OUTLINED_FUNCTION_4_48();
  if (v12)
  {
    sub_26A13440C();
LABEL_7:
    *v10 = 0;
    *(v10 + 8) = 0xE000000000000000;
    *(v10 + 16) = 0;
    *(v10 + 24) = 0xE000000000000000;
    *(v10 + 32) = xmmword_26A426400;
    *(v10 + 48) = 0;
    *(v10 + 56) = 0xE000000000000000;
    *(v10 + 64) = 0;
    *(v10 + 66) = 0;
    v14 = v10 + *(v8 + 44);
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    return sub_26A3B5F54;
  }

  OUTLINED_FUNCTION_12_2();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 2)
  {
    sub_26A3B58B0();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_157();
  sub_26A3B531C();
  return sub_26A3B5F54;
}

void sub_26A3B5F84(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[3];
  v4 = (*a1)[4];
  v5 = (*a1)[1];
  v6 = (*a1)[2];
  v7 = **a1;
  if (a2)
  {
    v8 = (*a1)[3];
    sub_26A3B5C74();
    sub_26A13440C();
    sub_26A3B531C();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_22_4();
    sub_26A3B58B0();
  }

  else
  {
    v9 = **a1;
    sub_26A13440C();
    sub_26A3B531C();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_22_4();
  }

  free(v3);
  free(v6);
  free(v5);

  free(v2);
}

uint64_t sub_26A3B60BC@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 20);
  v5 = sub_26A424794();
  v6 = OUTLINED_FUNCTION_12(v5);
  v8 = *(v7 + 16);

  return v8(a2, v2 + v4, v6);
}

uint64_t sub_26A3B6170(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 20);
  v5 = sub_26A424794();
  OUTLINED_FUNCTION_12(v5);
  v7 = *(v6 + 40);

  return v7(v2 + v4, a1);
}

uint64_t (*_ProtoButton_Container.ButtonItem.unknownFields.modify())()
{
  OUTLINED_FUNCTION_14_4();
  v0 = *(type metadata accessor for _ProtoButton_Container.ButtonItem(0) + 20);
  return nullsub_1;
}

uint64_t static _ProtoButton_Container.ButtonItem.OneOf_Value.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v46 = a1;
  v47 = a2;
  v2 = type metadata accessor for _ProtoCustomCanvas();
  v3 = OUTLINED_FUNCTION_41(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_18();
  v45 = v7 - v6;
  v8 = type metadata accessor for _ProtoPlayerButton(0);
  v9 = OUTLINED_FUNCTION_41(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_18();
  v12 = type metadata accessor for _ProtoButton(0);
  v13 = OUTLINED_FUNCTION_12(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_18();
  v18 = v17 - v16;
  v19 = type metadata accessor for _ProtoButton_Container.ButtonItem.OneOf_Value(0);
  v20 = OUTLINED_FUNCTION_12(v19);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v44 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  MEMORY[0x28223BE20](v26);
  v28 = &v44 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280373788, &unk_26A442458);
  OUTLINED_FUNCTION_41(v29);
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v32);
  v34 = *(v33 + 56);
  sub_26A3B5C74();
  sub_26A3B5C74();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_26A3B5C74();
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_26A3B531C();
      v40 = *(v12 + 20);
      if (*&v28[v40] == *(v18 + v40))
      {
        goto LABEL_20;
      }

      v41 = *&v28[v40];

      OUTLINED_FUNCTION_21_3();
      sub_26A2A2580();
      v43 = v42;

      if (v43)
      {
LABEL_20:
        sub_26A424794();
        OUTLINED_FUNCTION_2_53();
        sub_26A3B6B14();
        if (sub_26A424B64())
        {
          sub_26A3B58B0();
          OUTLINED_FUNCTION_157();
          sub_26A3B58B0();
          OUTLINED_FUNCTION_0_76();
          sub_26A3B58B0();
          v37 = 1;
          return v37 & 1;
        }
      }

      sub_26A3B58B0();
      OUTLINED_FUNCTION_157();
      sub_26A3B58B0();
      OUTLINED_FUNCTION_0_76();
      sub_26A3B58B0();
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_26A3B5C74();
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v38 = v45;
      sub_26A3B531C();
      v37 = static _ProtoCustomCanvas.== infix(_:_:)(v24, v38);
      sub_26A3B58B0();
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  sub_26A3B5C74();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
LABEL_10:
    sub_26A3B58B0();
    sub_26A13440C();
LABEL_11:
    v37 = 0;
    return v37 & 1;
  }

  sub_26A3B531C();
  static _ProtoPlayerButton.== infix(_:_:)();
  v37 = v36;
  sub_26A3B58B0();
LABEL_9:
  sub_26A3B58B0();
  OUTLINED_FUNCTION_0_76();
  sub_26A3B58B0();
  return v37 & 1;
}

uint64_t _ProtoButton_Container.ButtonItem.init()@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for _ProtoButton_Container.ButtonItem.OneOf_Value(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  v6 = a1 + *(type metadata accessor for _ProtoButton_Container.ButtonItem(0) + 20);
  return _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
}

uint64_t sub_26A3B679C()
{
  v0 = sub_26A424AC4();
  __swift_allocate_value_buffer(v0, qword_280373748);
  __swift_project_value_buffer(v0, qword_280373748);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C938, &qword_26A42DDA0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C940, &unk_26A425EE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26A426410;
  v5 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v5 = "button_items";
  *(v5 + 8) = 12;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21888];
  v7 = sub_26A424A94();
  (*(*(v7 - 8) + 104))(v5, v6, v7);
  return sub_26A424AA4();
}

uint64_t _ProtoButton_Container.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_15_10();
  while (1)
  {
    result = sub_26A424834();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      OUTLINED_FUNCTION_246();
      sub_26A3B698C();
    }
  }

  return result;
}

uint64_t sub_26A3B698C()
{
  type metadata accessor for _ProtoButton_Container.ButtonItem(0);
  sub_26A3B6B14();
  return sub_26A424934();
}

uint64_t _ProtoButton_Container.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_15_10();
  if (!*(*v0 + 16) || (type metadata accessor for _ProtoButton_Container.ButtonItem(0), sub_26A3B6B14(), result = sub_26A424A74(), !v1))
  {
    v3 = v0 + *(type metadata accessor for _ProtoButton_Container(0) + 20);
    return sub_26A424774();
  }

  return result;
}

unint64_t sub_26A3B6B14()
{
  OUTLINED_FUNCTION_14_4();
  result = *v2;
  if (!result)
  {
    v1(255);
    result = swift_getWitnessTable();
    atomic_store(result, v0);
  }

  return result;
}

uint64_t sub_26A3B6BFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A3B6B14();

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26A3B6C7C(uint64_t a1)
{
  v2 = sub_26A3B6B14();

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26A3B6CEC()
{
  sub_26A3B6B14();

  return sub_26A4249B4();
}

uint64_t sub_26A3B6D6C()
{
  result = MEMORY[0x26D65BA70](0x496E6F747475422ELL, 0xEB000000006D6574);
  qword_280373760 = 0xD00000000000001ALL;
  *algn_280373768 = 0x800000026A44B080;
  return result;
}

uint64_t static _ProtoButton_Container.ButtonItem.protoMessageName.getter()
{
  if (qword_28036C730 != -1)
  {
    swift_once();
  }

  return OUTLINED_FUNCTION_175();
}

uint64_t sub_26A3B6E44()
{
  v0 = sub_26A424AC4();
  __swift_allocate_value_buffer(v0, qword_280373770);
  __swift_project_value_buffer(v0, qword_280373770);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C938, &qword_26A42DDA0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C940, &unk_26A425EE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26A425BE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "button";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_26A424A94();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "player_button";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v11 = *MEMORY[0x277D21888];
  v9();
  v12 = (v5 + 2 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "custom_canvas";
  *(v13 + 1) = 13;
  v13[16] = 2;
  v9();
  return sub_26A424AA4();
}

uint64_t _ProtoButton_Container.ButtonItem.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_15_10();
  while (1)
  {
    result = sub_26A424834();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        v11 = OUTLINED_FUNCTION_10_3();
        sub_26A3B7AF0(v11, v12, v13, v14);
        break;
      case 2:
        v7 = OUTLINED_FUNCTION_10_3();
        sub_26A3B75F8(v7, v8, v9, v10);
        break;
      case 1:
        v3 = OUTLINED_FUNCTION_10_3();
        sub_26A3B7100(v3, v4, v5, v6);
        break;
    }
  }

  return result;
}

uint64_t sub_26A3B7100(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a3;
  v34 = a4;
  v35 = a2;
  v5 = type metadata accessor for _ProtoButton(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v31 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C8E8, &qword_26A437B80);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v27 - v11;
  v13 = type metadata accessor for _ProtoButton_Container.ButtonItem.OneOf_Value(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036EC48, &unk_26A4385C0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v27 - v21;
  __swift_storeEnumTagSinglePayload(&v27 - v21, 1, 1, v5);
  v28 = a1;
  sub_26A10FD9C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v30 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_26A13440C();
  }

  else
  {
    sub_26A3B531C();
    sub_26A3B531C();
    if (swift_getEnumCaseMultiPayload())
    {
      sub_26A3B58B0();
    }

    else
    {
      sub_26A13440C();
      sub_26A3B531C();
      sub_26A3B531C();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }
  }

  sub_26A3B6B14();
  v23 = v32;
  sub_26A424944();
  if (v23)
  {
    return sub_26A13440C();
  }

  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_26A13440C();
    return sub_26A13440C();
  }

  sub_26A3B531C();
  if (EnumTagSinglePayload != 1)
  {
    sub_26A424844();
  }

  v25 = v30;
  sub_26A13440C();
  v26 = v28;
  sub_26A13440C();
  sub_26A3B531C();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v26, 0, 1, v25);
}

uint64_t sub_26A3B75F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a3;
  v34 = a4;
  v35 = a2;
  v5 = type metadata accessor for _ProtoPlayerButton(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v31 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C8E8, &qword_26A437B80);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v27 - v11;
  v13 = type metadata accessor for _ProtoButton_Container.ButtonItem.OneOf_Value(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D248, &qword_26A4273C8);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v27 - v21;
  __swift_storeEnumTagSinglePayload(&v27 - v21, 1, 1, v5);
  v28 = a1;
  sub_26A10FD9C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v30 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_26A13440C();
  }

  else
  {
    sub_26A3B531C();
    sub_26A3B531C();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_26A13440C();
      sub_26A3B531C();
      sub_26A3B531C();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_26A3B58B0();
    }
  }

  sub_26A3B6B14();
  v23 = v32;
  sub_26A424944();
  if (v23)
  {
    return sub_26A13440C();
  }

  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_26A13440C();
    return sub_26A13440C();
  }

  sub_26A3B531C();
  if (EnumTagSinglePayload != 1)
  {
    sub_26A424844();
  }

  v25 = v30;
  sub_26A13440C();
  v26 = v28;
  sub_26A13440C();
  sub_26A3B531C();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v26, 0, 1, v25);
}

uint64_t sub_26A3B7AF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a3;
  v34 = a4;
  v35 = a2;
  v5 = type metadata accessor for _ProtoCustomCanvas();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v31 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C8E8, &qword_26A437B80);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v27 - v11;
  v13 = type metadata accessor for _ProtoButton_Container.ButtonItem.OneOf_Value(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CCC0, &qword_26A426750);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v27 - v21;
  __swift_storeEnumTagSinglePayload(&v27 - v21, 1, 1, v5);
  v28 = a1;
  sub_26A10FD9C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v30 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_26A13440C();
  }

  else
  {
    sub_26A3B531C();
    sub_26A3B531C();
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_26A13440C();
      sub_26A3B531C();
      sub_26A3B531C();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_26A3B58B0();
    }
  }

  sub_26A3B6B14();
  v23 = v32;
  sub_26A424944();
  if (v23)
  {
    return sub_26A13440C();
  }

  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_26A13440C();
    return sub_26A13440C();
  }

  sub_26A3B531C();
  if (EnumTagSinglePayload != 1)
  {
    sub_26A424844();
  }

  v25 = v30;
  sub_26A13440C();
  v26 = v28;
  sub_26A13440C();
  sub_26A3B531C();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v26, 0, 1, v25);
}

uint64_t _ProtoButton_Container.ButtonItem.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_15_10();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C8E8, &qword_26A437B80);
  OUTLINED_FUNCTION_41(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v7 = &v24 - v6;
  sub_26A10FD9C();
  v8 = type metadata accessor for _ProtoButton_Container.ButtonItem.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_22_1();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v10 = OUTLINED_FUNCTION_13_10();
      sub_26A3B8334(v10, v11, v12, v13);
    }

    else
    {
      v18 = OUTLINED_FUNCTION_13_10();
      sub_26A3B8548(v18, v19, v20, v21);
    }
  }

  else
  {
    v14 = OUTLINED_FUNCTION_13_10();
    sub_26A3B8124(v14, v15, v16, v17);
  }

  OUTLINED_FUNCTION_0_76();
  result = sub_26A3B58B0();
  if (!v1)
  {
LABEL_8:
    v23 = v0 + *(type metadata accessor for _ProtoButton_Container.ButtonItem(0) + 20);
    return sub_26A424774();
  }

  return result;
}

uint64_t sub_26A3B8124(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C8E8, &qword_26A437B80);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for _ProtoButton(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_26A10FD9C();
  v10 = type metadata accessor for _ProtoButton_Container.ButtonItem.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_26A13440C();
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_26A3B531C();
      sub_26A3B6B14();
      sub_26A424A84();
      return sub_26A3B58B0();
    }

    result = sub_26A3B58B0();
  }

  __break(1u);
  return result;
}

uint64_t sub_26A3B8334(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C8E8, &qword_26A437B80);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for _ProtoPlayerButton(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_26A10FD9C();
  v10 = type metadata accessor for _ProtoButton_Container.ButtonItem.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_26A13440C();
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_26A3B531C();
      sub_26A3B6B14();
      sub_26A424A84();
      return sub_26A3B58B0();
    }

    result = sub_26A3B58B0();
  }

  __break(1u);
  return result;
}

uint64_t sub_26A3B8548(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C8E8, &qword_26A437B80);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for _ProtoCustomCanvas();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_26A10FD9C();
  v10 = type metadata accessor for _ProtoButton_Container.ButtonItem.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_26A13440C();
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_26A3B531C();
      sub_26A3B6B14();
      sub_26A424A84();
      return sub_26A3B58B0();
    }

    result = sub_26A3B58B0();
  }

  __break(1u);
  return result;
}

uint64_t static _ProtoButton_Container.ButtonItem.== infix(_:_:)()
{
  v0 = type metadata accessor for _ProtoButton_Container.ButtonItem.OneOf_Value(0);
  v1 = OUTLINED_FUNCTION_12(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_18();
  v6 = v5 - v4;
  v7 = OUTLINED_FUNCTION_22_1();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
  OUTLINED_FUNCTION_41(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v12);
  v14 = &v28 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C8F0, &unk_26A425EA0);
  OUTLINED_FUNCTION_41(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v18);
  v20 = &v28 - v19;
  v22 = *(v21 + 56);
  sub_26A10FD9C();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_28(v20);
  if (v23)
  {
    OUTLINED_FUNCTION_28(&v20[v22]);
    if (v23)
    {
      sub_26A13440C();
LABEL_12:
      v26 = *(type metadata accessor for _ProtoButton_Container.ButtonItem(0) + 20);
      sub_26A424794();
      OUTLINED_FUNCTION_2_53();
      sub_26A3B6B14();
      v24 = OUTLINED_FUNCTION_14_7();
      return v24 & 1;
    }

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_12_2();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_28(&v20[v22]);
  if (v23)
  {
    sub_26A3B58B0();
LABEL_9:
    sub_26A13440C();
    goto LABEL_10;
  }

  sub_26A3B531C();
  v25 = static _ProtoButton_Container.ButtonItem.OneOf_Value.== infix(_:_:)(v14, v6);
  sub_26A3B58B0();
  sub_26A3B58B0();
  sub_26A13440C();
  if (v25)
  {
    goto LABEL_12;
  }

LABEL_10:
  v24 = 0;
  return v24 & 1;
}

uint64_t sub_26A3B8A30(void (*a1)(void))
{
  sub_26A425504();
  a1(0);
  sub_26A3B6B14();
  sub_26A424B44();
  return sub_26A425554();
}

uint64_t sub_26A3B8C60(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A3B6B14();

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26A3B8D70(uint64_t a1)
{
  v2 = sub_26A3B6B14();

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26A3B8E28()
{
  sub_26A3B6B14();

  return sub_26A4249B4();
}

void sub_26A3B8F60(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t (*a6)(uint64_t, uint64_t))
{
  sub_26A3B8FF0(319, a4, a5, a6);
  if (v6 <= 0x3F)
  {
    sub_26A424794();
    if (v7 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_26A3B8FF0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_26A3B9054()
{
  result = type metadata accessor for _ProtoButton(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for _ProtoPlayerButton(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for _ProtoCustomCanvas();
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_4_48()
{
  v2 = type metadata accessor for _ProtoButton_Container.ButtonItem.OneOf_Value(0);
  *(v1 + 32) = v2;
  return __swift_getEnumTagSinglePayload(v0, 1, v2);
}

Swift::String __swiftcall BackgroundElement.description(redacted:)(Swift::Bool redacted)
{
  v4 = type metadata accessor for _ProtoVisualElement(0);
  v5 = OUTLINED_FUNCTION_41(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_10_14();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CC28, &qword_26A43A760);
  v9 = OUTLINED_FUNCTION_41(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v45 - v12;
  v14 = type metadata accessor for BackgroundElement();
  v15 = OUTLINED_FUNCTION_41(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_17();
  v20 = v18 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v45 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CC38, &qword_26A4266C8);
  v25 = OUTLINED_FUNCTION_12(v24);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  v29 = &v45 - v28;
  OUTLINED_FUNCTION_1_62();
  sub_26A3BA4BC(v1, v23);
  if (redacted)
  {
    sub_26A2DD288();
  }

  else
  {
    sub_26A3BA4BC(v23, v20);
  }

  sub_26A3B9694(v20, v29);
  v29[*(v24 + 32)] = redacted;
  OUTLINED_FUNCTION_4_49();
  sub_26A3B9F64(v23, v30);
  *&v29[*(v24 + 28)] = MEMORY[0x277D84F90];
  _ProtoBackgroundElement.visual.getter(v2);
  VisualElement.init(proto:)();
  v31 = type metadata accessor for VisualElement();
  __swift_storeEnumTagSinglePayload(v13, 0, 1, v31);
  sub_26A10458C();
  sub_26A0E48F0(v13, &qword_28036CC28, &qword_26A43A760);
  v32 = v29[8];
  v33 = *v29;

  sub_26A145D18(v34, (v32 & 1) == 0, 0x696C696269736976, 0xEA00000000007974, 0, v35, v36, v37, v45, v46);

  sub_26A0FA2C4();
  v39 = v38;
  v41 = v40;
  sub_26A0E48F0(v29, &qword_28036CC38, &qword_26A4266C8);
  v42 = v39;
  v43 = v41;
  result._object = v43;
  result._countAndFlagsBits = v42;
  return result;
}

uint64_t type metadata accessor for BackgroundElement()
{
  result = qword_28157AA98;
  if (!qword_28157AA98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t BackgroundElement.redactedProto.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for _ProtoVisualElement(0);
  v4 = OUTLINED_FUNCTION_12(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_17();
  v9 = v7 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v22 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C848, &qword_26A426690);
  v14 = OUTLINED_FUNCTION_41(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v22 - v17;
  OUTLINED_FUNCTION_5_51();
  sub_26A3BA4BC(v1, a1);
  v19 = *(type metadata accessor for _ProtoBackgroundElement() + 28);
  sub_26A1FCB98(a1 + v19, v18);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v18, 1, v3);
  result = sub_26A0E48F0(v18, &qword_28036C848, &qword_26A426690);
  if (EnumTagSinglePayload != 1)
  {
    _ProtoBackgroundElement.visual.getter(v12);
    _ProtoVisualElement.redacted.getter();
    sub_26A3B9F64(v12, type metadata accessor for _ProtoVisualElement);
    sub_26A0E48F0(a1 + v19, &qword_28036C848, &qword_26A426690);
    sub_26A3B9694(v9, a1 + v19);
    return __swift_storeEnumTagSinglePayload(a1 + v19, 0, 1, v3);
  }

  return result;
}

uint64_t sub_26A3B9694(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_16_11();
  v6 = v5(v4);
  OUTLINED_FUNCTION_12(v6);
  (*(v7 + 32))(a2, v2);
  return a2;
}

void BackgroundElement.visual.getter()
{
  v1 = type metadata accessor for _ProtoVisualElement(0);
  v2 = OUTLINED_FUNCTION_41(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_10_14();
  _ProtoBackgroundElement.visual.getter(v0);
  VisualElement.init(proto:)();
}

uint64_t BackgroundElement.isShown(for:)(uint64_t a1)
{
  if (*(*v1 + 16))
  {
    v2 = *(v1 + 8);
    v3 = sub_26A165034(*a1, *(a1 + 8), *v1) ^ v2;
  }

  else
  {
    v3 = 1;
  }

  return v3 & 1;
}

uint64_t BackgroundElement.init(_:_:)(uint64_t *a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  type metadata accessor for _ProtoBackgroundElement();
  OUTLINED_FUNCTION_0_77();
  sub_26A3BA3CC(v5, v6);
  sub_26A4249C4();
  sub_26A148B4C(v3, v4);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_26A3B9898(uint64_t *a1, void *a2, uint64_t a3, char a4)
{
  v23 = a3;
  v7 = ~a4;
  v8 = type metadata accessor for _ProtoVisualElement(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for VisualElement();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a2[3];
  v16 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v17);
  (*(v16 + 8))(v17, v16);
  VisualElement.proto.getter();
  sub_26A3B9F64(v15, type metadata accessor for VisualElement);
  v18 = *(type metadata accessor for _ProtoBackgroundElement() + 28);
  sub_26A0E48F0(a1 + v18, &qword_28036C848, &qword_26A426690);
  sub_26A3B9694(v11, a1 + v18);
  result = __swift_storeEnumTagSinglePayload(a1 + v18, 0, 1, v8);
  if (v7)
  {
    *(a1 + 8) = (a4 & 1) == 0;
    v20 = *a1;
    v21 = v23;
    j__swift_bridgeObjectRetain(v23, a4 & 1);

    *a1 = v21;
  }

  return result;
}

uint64_t sub_26A3B9AB8(uint64_t (*a1)(void), uint64_t a2)
{
  v8[3] = a1(0);
  v8[4] = a2;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v8);
  sub_26A3BA4BC(v2, boxed_opaque_existential_1);
  type metadata accessor for _ProtoBackgroundElement();
  OUTLINED_FUNCTION_17_18();
  OUTLINED_FUNCTION_0_77();
  sub_26A3BA3CC(v5, v6);
  sub_26A4249C4();
  return __swift_destroy_boxed_opaque_existential_1(v8);
}

uint64_t BackgroundElementConvertible<>.asBackgroundElement()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9[3] = a1;
  v9[4] = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v9);
  (*(*(a1 - 8) + 16))(boxed_opaque_existential_1, v3, a1);
  type metadata accessor for _ProtoBackgroundElement();
  OUTLINED_FUNCTION_17_18();
  OUTLINED_FUNCTION_0_77();
  sub_26A3BA3CC(v6, v7);
  sub_26A4249C4();
  return __swift_destroy_boxed_opaque_existential_1(v9);
}

uint64_t static BackgroundElement.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for _ProtoVisualElement(0);
  v5 = OUTLINED_FUNCTION_41(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for VisualElement();
  v11 = OUTLINED_FUNCTION_41(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_17();
  v16 = v14 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v30 - v18;
  _ProtoBackgroundElement.visual.getter(v9);
  VisualElement.init(proto:)();
  _ProtoBackgroundElement.visual.getter(v9);
  VisualElement.init(proto:)();
  static VisualElement.== infix(_:_:)();
  v21 = v20;
  sub_26A3B9F64(v16, type metadata accessor for VisualElement);
  sub_26A3B9F64(v19, type metadata accessor for VisualElement);
  if ((v21 & 1) != 0 && *(a1 + 8) == *(a2 + 8))
  {
    v23 = *a1;

    v25 = sub_26A10BE7C(v24);
    v26 = *a2;

    v28 = sub_26A10BE7C(v27);
    v22 = sub_26A290AE0(v25, v28);
  }

  else
  {
    v22 = 0;
  }

  return v22 & 1;
}

uint64_t sub_26A3B9F64(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_12(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t BackgroundElement.hash(into:)()
{
  type metadata accessor for _ProtoBackgroundElement();
  OUTLINED_FUNCTION_0_77();
  sub_26A3BA3CC(v0, v1);

  return sub_26A424B44();
}

uint64_t BackgroundElement.hashValue.getter()
{
  sub_26A425504();
  type metadata accessor for _ProtoBackgroundElement();
  OUTLINED_FUNCTION_0_77();
  sub_26A3BA3CC(v0, v1);
  sub_26A424B44();
  return sub_26A425554();
}

uint64_t sub_26A3BA0B0()
{
  sub_26A425504();
  type metadata accessor for _ProtoBackgroundElement();
  sub_26A3BA3CC(&qword_28036FAC8, type metadata accessor for _ProtoBackgroundElement);
  sub_26A424B44();
  return sub_26A425554();
}

uint64_t Array<A>.backgroundVisual(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v33 = a3;
  v6 = type metadata accessor for _ProtoVisualElement(0);
  v7 = OUTLINED_FUNCTION_41(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_10_14();
  v10 = type metadata accessor for BackgroundElement();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  OUTLINED_FUNCTION_17();
  v15 = (v13 - v14);
  MEMORY[0x28223BE20](v16);
  v18 = &v32 - v17;
  v19 = 0;
  v20 = *a1;
  v21 = *(a1 + 8);
  v22 = *(a2 + 16);
  while (v22 != v19)
  {
    v23 = a2 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v24 = *(v11 + 72);
    OUTLINED_FUNCTION_1_62();
    sub_26A3BA4BC(v25, v15);
    if (!*(*v15 + 16) || (v26 = v15[8], v26 != sub_26A165034(v20, v21, *v15)))
    {
      sub_26A3B9694(v15, v18);
      _ProtoBackgroundElement.visual.getter(v3);
      v27 = v33;
      VisualElement.init(proto:)();
      OUTLINED_FUNCTION_4_49();
      sub_26A3B9F64(v18, v28);
      v29 = 0;
      goto LABEL_8;
    }

    sub_26A3B9F64(v15, type metadata accessor for BackgroundElement);
    ++v19;
  }

  v29 = 1;
  v27 = v33;
LABEL_8:
  v30 = type metadata accessor for VisualElement();
  return __swift_storeEnumTagSinglePayload(v27, v29, 1, v30);
}

uint64_t sub_26A3BA3CC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26A3BA43C()
{
  result = type metadata accessor for _ProtoBackgroundElement();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26A3BA4BC(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_16_11();
  v6 = v5(v4);
  OUTLINED_FUNCTION_12(v6);
  (*(v7 + 16))(a2, v2);
  return a2;
}

uint64_t sub_26A3BA590(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v12 = MEMORY[0x277D84F90];
    sub_26A10D50C();
    v3 = v12;
    v5 = (a1 + 32);
    v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CC88, &qword_26A442940) + 32);
    do
    {
      v7 = v5[4];
      __swift_project_boxed_opaque_existential_1(v5, v5[3]);
      v8 = Component.description(redacted:)(*(a2 + v6));
      v9 = *(v12 + 16);
      if (v9 >= *(v12 + 24) >> 1)
      {
        sub_26A10D50C();
      }

      *(v12 + 16) = v9 + 1;
      *(v12 + 16 * v9 + 32) = v8;
      v5 += 5;
      --v2;
    }

    while (v2);
  }

  return v3;
}

uint64_t ComponentGroup.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_175();
}

uint64_t sub_26A3BA6DC@<X0>(uint64_t a1@<X8>)
{
  v3 = v1;
  v1346 = a1;
  v4 = type metadata accessor for _ProtoSummaryItem_Switch(0);
  v5 = OUTLINED_FUNCTION_41(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_11();
  v1341 = v8;
  v9 = OUTLINED_FUNCTION_45();
  v10 = type metadata accessor for _ProtoSummaryItem_PairNumber(v9);
  v11 = OUTLINED_FUNCTION_41(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_11();
  v1340 = v14;
  v15 = OUTLINED_FUNCTION_45();
  v16 = type metadata accessor for _ProtoSummaryItem_Pair(v15);
  v17 = OUTLINED_FUNCTION_41(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_11();
  v1338 = v20;
  OUTLINED_FUNCTION_45();
  v21 = type metadata accessor for TertiaryHeaderStandard();
  v22 = OUTLINED_FUNCTION_13_31(v21, v1119);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_11();
  v1337 = v25;
  OUTLINED_FUNCTION_45();
  v1333 = type metadata accessor for _ProtoTertiaryHeader_Standard();
  v26 = OUTLINED_FUNCTION_12(v1333);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_8();
  v1335 = v29;
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_48();
  v1339 = v31;
  v32 = OUTLINED_FUNCTION_45();
  v33 = type metadata accessor for KeyValueStandard(v32);
  v34 = OUTLINED_FUNCTION_13_31(v33, v1118);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_11();
  v1334 = v37;
  v38 = OUTLINED_FUNCTION_45();
  v39 = type metadata accessor for _ProtoKeyValue_Standard(v38);
  v40 = OUTLINED_FUNCTION_13_31(v39, &v1358);
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_8();
  v1332 = v43;
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_48();
  v1336 = v45;
  v46 = OUTLINED_FUNCTION_45();
  v47 = type metadata accessor for HorizontalListStandard(v46);
  v48 = OUTLINED_FUNCTION_13_31(v47, v1117);
  v50 = *(v49 + 64);
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_11();
  v52 = OUTLINED_FUNCTION_35(v51);
  v53 = type metadata accessor for _ProtoHorizontalList_Standard(v52);
  v54 = OUTLINED_FUNCTION_13_31(v53, &v1355);
  v56 = *(v55 + 64);
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_35(v57);
  v58 = type metadata accessor for HeroHeader();
  v59 = OUTLINED_FUNCTION_13_31(v58, v1116);
  v61 = *(v60 + 64);
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_11();
  v63 = OUTLINED_FUNCTION_35(v62);
  v64 = type metadata accessor for _ProtoHeroHeader(v63);
  v65 = OUTLINED_FUNCTION_13_31(v64, &v1352);
  v67 = *(v66 + 64);
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_35(v69);
  v70 = type metadata accessor for SashStandard();
  v71 = OUTLINED_FUNCTION_13_31(v70, v1115);
  v73 = *(v72 + 64);
  MEMORY[0x28223BE20](v71);
  OUTLINED_FUNCTION_11();
  v75 = OUTLINED_FUNCTION_35(v74);
  v76 = type metadata accessor for _ProtoSash_Standard(v75);
  v77 = OUTLINED_FUNCTION_13_31(v76, &v1349);
  v79 = *(v78 + 64);
  MEMORY[0x28223BE20](v77);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v80);
  OUTLINED_FUNCTION_48();
  v82 = OUTLINED_FUNCTION_35(v81);
  v83 = type metadata accessor for IntentsUIStandard(v82);
  v84 = OUTLINED_FUNCTION_13_31(v83, v1114);
  v86 = *(v85 + 64);
  MEMORY[0x28223BE20](v84);
  OUTLINED_FUNCTION_11();
  v88 = OUTLINED_FUNCTION_35(v87);
  v89 = type metadata accessor for _ProtoIntentsUI_Standard(v88);
  v90 = OUTLINED_FUNCTION_13_31(v89, &v1347);
  v92 = *(v91 + 64);
  MEMORY[0x28223BE20](v90);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v93);
  OUTLINED_FUNCTION_48();
  v95 = OUTLINED_FUNCTION_35(v94);
  v96 = type metadata accessor for ButtonContainer(v95);
  v97 = OUTLINED_FUNCTION_13_31(v96, v1113);
  v99 = *(v98 + 64);
  MEMORY[0x28223BE20](v97);
  OUTLINED_FUNCTION_11();
  v101 = OUTLINED_FUNCTION_35(v100);
  v102 = type metadata accessor for _ProtoButton_Container(v101);
  v103 = OUTLINED_FUNCTION_13_31(v102, &v1342);
  v105 = *(v104 + 64);
  MEMORY[0x28223BE20](v103);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_35(v106);
  v107 = type metadata accessor for VisualizationMap();
  v108 = OUTLINED_FUNCTION_13_31(v107, v1112);
  v110 = *(v109 + 64);
  MEMORY[0x28223BE20](v108);
  OUTLINED_FUNCTION_11();
  v112 = OUTLINED_FUNCTION_35(v111);
  v113 = type metadata accessor for _ProtoVisualization_Map(v112);
  v114 = OUTLINED_FUNCTION_13_31(v113, &v1339);
  v116 = *(v115 + 64);
  MEMORY[0x28223BE20](v114);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v117);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_35(v118);
  v119 = type metadata accessor for VisualizationImage();
  v120 = OUTLINED_FUNCTION_13_31(v119, v1111);
  v122 = *(v121 + 64);
  MEMORY[0x28223BE20](v120);
  OUTLINED_FUNCTION_11();
  v124 = OUTLINED_FUNCTION_35(v123);
  v125 = type metadata accessor for _ProtoVisualization_Image(v124);
  v126 = OUTLINED_FUNCTION_13_31(v125, &v1335);
  v128 = *(v127 + 64);
  MEMORY[0x28223BE20](v126);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v129);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_35(v130);
  v131 = type metadata accessor for VisualizationChart();
  v132 = OUTLINED_FUNCTION_13_31(v131, v1110);
  v134 = *(v133 + 64);
  MEMORY[0x28223BE20](v132);
  OUTLINED_FUNCTION_11();
  v136 = OUTLINED_FUNCTION_35(v135);
  v137 = type metadata accessor for _ProtoVisualization_Chart(v136);
  v138 = OUTLINED_FUNCTION_13_31(v137, &v1331);
  v140 = *(v139 + 64);
  MEMORY[0x28223BE20](v138);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v141);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_35(v142);
  v143 = type metadata accessor for LongItemText();
  v144 = OUTLINED_FUNCTION_13_31(v143, v1109);
  v146 = *(v145 + 64);
  MEMORY[0x28223BE20](v144);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_35(v147);
  v148 = type metadata accessor for _ProtoLongItem_Text();
  v149 = OUTLINED_FUNCTION_13_31(v148, v1328);
  v151 = *(v150 + 64);
  MEMORY[0x28223BE20](v149);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v152);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_35(v153);
  v154 = type metadata accessor for Table();
  v155 = OUTLINED_FUNCTION_13_31(v154, v1108);
  v157 = *(v156 + 64);
  MEMORY[0x28223BE20](v155);
  OUTLINED_FUNCTION_11();
  v159 = OUTLINED_FUNCTION_35(v158);
  v160 = type metadata accessor for _ProtoTable(v159);
  v161 = OUTLINED_FUNCTION_13_31(v160, v1324);
  v163 = *(v162 + 64);
  MEMORY[0x28223BE20](v161);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v164);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_35(v165);
  v166 = type metadata accessor for ControlSlider();
  v167 = OUTLINED_FUNCTION_13_31(v166, v1107);
  v169 = *(v168 + 64);
  MEMORY[0x28223BE20](v167);
  OUTLINED_FUNCTION_11();
  v171 = OUTLINED_FUNCTION_35(v170);
  v172 = type metadata accessor for _ProtoControl_Slider(v171);
  v173 = OUTLINED_FUNCTION_13_31(v172, &v1322);
  v175 = *(v174 + 64);
  MEMORY[0x28223BE20](v173);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v176);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_35(v177);
  v178 = type metadata accessor for TextInput();
  v179 = OUTLINED_FUNCTION_13_31(v178, v1105);
  v181 = *(v180 + 64);
  MEMORY[0x28223BE20](v179);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_35(v182);
  v183 = type metadata accessor for _ProtoTextInput();
  v184 = OUTLINED_FUNCTION_41(v183);
  v186 = *(v185 + 64);
  MEMORY[0x28223BE20](v184);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_35(v187);
  v188 = type metadata accessor for StatusIndicatorCancelled();
  v189 = OUTLINED_FUNCTION_13_31(v188, v1106);
  v191 = *(v190 + 64);
  MEMORY[0x28223BE20](v189);
  OUTLINED_FUNCTION_11();
  v193 = OUTLINED_FUNCTION_35(v192);
  v194 = type metadata accessor for _ProtoStatusIndicator_Cancelled(v193);
  v195 = OUTLINED_FUNCTION_13_31(v194, &v1316);
  v197 = *(v196 + 64);
  MEMORY[0x28223BE20](v195);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v198);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_35(v199);
  v200 = type metadata accessor for StatusIndicatorInProgress();
  v201 = OUTLINED_FUNCTION_13_31(v200, v1104);
  v203 = *(v202 + 64);
  MEMORY[0x28223BE20](v201);
  OUTLINED_FUNCTION_11();
  v205 = OUTLINED_FUNCTION_35(v204);
  v206 = type metadata accessor for _ProtoStatusIndicator_InProgress(v205);
  v207 = OUTLINED_FUNCTION_13_31(v206, v1313);
  v209 = *(v208 + 64);
  MEMORY[0x28223BE20](v207);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v210);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_35(v211);
  v212 = type metadata accessor for StatusIndicatorError();
  v213 = OUTLINED_FUNCTION_13_31(v212, v1103);
  v215 = *(v214 + 64);
  MEMORY[0x28223BE20](v213);
  OUTLINED_FUNCTION_11();
  v217 = OUTLINED_FUNCTION_35(v216);
  v218 = type metadata accessor for _ProtoStatusIndicator_Error(v217);
  v219 = OUTLINED_FUNCTION_13_31(v218, v1310);
  v221 = *(v220 + 64);
  MEMORY[0x28223BE20](v219);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v222);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_35(v223);
  v224 = type metadata accessor for StatusIndicatorSuccess();
  v225 = OUTLINED_FUNCTION_13_31(v224, v1102);
  v227 = *(v226 + 64);
  MEMORY[0x28223BE20](v225);
  OUTLINED_FUNCTION_11();
  v229 = OUTLINED_FUNCTION_35(v228);
  v230 = type metadata accessor for _ProtoStatusIndicator_Success(v229);
  v231 = OUTLINED_FUNCTION_13_31(v230, v1307);
  v233 = *(v232 + 64);
  MEMORY[0x28223BE20](v231);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v234);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_35(v235);
  v236 = type metadata accessor for ReferenceFootnote();
  v237 = OUTLINED_FUNCTION_13_31(v236, v1101);
  v239 = *(v238 + 64);
  MEMORY[0x28223BE20](v237);
  OUTLINED_FUNCTION_11();
  v241 = OUTLINED_FUNCTION_35(v240);
  v242 = type metadata accessor for _ProtoReference_Footnote(v241);
  v243 = OUTLINED_FUNCTION_13_31(v242, v1304);
  v245 = *(v244 + 64);
  MEMORY[0x28223BE20](v243);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v246);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_35(v247);
  v248 = type metadata accessor for ReferenceButton();
  v249 = OUTLINED_FUNCTION_13_31(v248, v1100);
  v251 = *(v250 + 64);
  MEMORY[0x28223BE20](v249);
  OUTLINED_FUNCTION_11();
  v253 = OUTLINED_FUNCTION_35(v252);
  v254 = type metadata accessor for _ProtoReference_Button(v253);
  v255 = OUTLINED_FUNCTION_13_31(v254, v1301);
  v257 = *(v256 + 64);
  MEMORY[0x28223BE20](v255);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v258);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_35(v259);
  v260 = type metadata accessor for ReferenceRich();
  v261 = OUTLINED_FUNCTION_13_31(v260, v1099);
  v263 = *(v262 + 64);
  MEMORY[0x28223BE20](v261);
  OUTLINED_FUNCTION_11();
  v265 = OUTLINED_FUNCTION_35(v264);
  v266 = type metadata accessor for _ProtoReference_Rich(v265);
  v267 = OUTLINED_FUNCTION_13_31(v266, v1298);
  v269 = *(v268 + 64);
  MEMORY[0x28223BE20](v267);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v270);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_35(v271);
  v272 = type metadata accessor for ReferenceLogo();
  v273 = OUTLINED_FUNCTION_13_31(v272, v1098);
  v275 = *(v274 + 64);
  MEMORY[0x28223BE20](v273);
  OUTLINED_FUNCTION_11();
  v277 = OUTLINED_FUNCTION_35(v276);
  v278 = type metadata accessor for _ProtoReference_Logo(v277);
  v279 = OUTLINED_FUNCTION_13_31(v278, v1294);
  v281 = *(v280 + 64);
  MEMORY[0x28223BE20](v279);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v282);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_35(v283);
  v284 = type metadata accessor for ReferenceStandard();
  v285 = OUTLINED_FUNCTION_13_31(v284, v1097);
  v287 = *(v286 + 64);
  MEMORY[0x28223BE20](v285);
  OUTLINED_FUNCTION_11();
  v289 = OUTLINED_FUNCTION_35(v288);
  v290 = type metadata accessor for _ProtoReference_Standard(v289);
  v291 = OUTLINED_FUNCTION_13_31(v290, v1290);
  v293 = *(v292 + 64);
  MEMORY[0x28223BE20](v291);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v294);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_35(v295);
  v296 = type metadata accessor for BinaryButton();
  v297 = OUTLINED_FUNCTION_13_31(v296, v1096);
  v299 = *(v298 + 64);
  MEMORY[0x28223BE20](v297);
  OUTLINED_FUNCTION_11();
  v301 = OUTLINED_FUNCTION_35(v300);
  v302 = type metadata accessor for _ProtoBinaryButton(v301);
  v303 = OUTLINED_FUNCTION_13_31(v302, v1286);
  v305 = *(v304 + 64);
  MEMORY[0x28223BE20](v303);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v306);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_35(v307);
  v308 = type metadata accessor for Button();
  v309 = OUTLINED_FUNCTION_13_31(v308, v1095);
  v311 = *(v310 + 64);
  MEMORY[0x28223BE20](v309);
  OUTLINED_FUNCTION_11();
  v313 = OUTLINED_FUNCTION_35(v312);
  v314 = type metadata accessor for _ProtoButton(v313);
  v315 = OUTLINED_FUNCTION_13_31(v314, v1282);
  v317 = *(v316 + 64);
  MEMORY[0x28223BE20](v315);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v318);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_35(v319);
  v320 = type metadata accessor for SectionHeaderRich();
  v321 = OUTLINED_FUNCTION_13_31(v320, v1094);
  v323 = *(v322 + 64);
  MEMORY[0x28223BE20](v321);
  OUTLINED_FUNCTION_11();
  v325 = OUTLINED_FUNCTION_35(v324);
  v326 = type metadata accessor for _ProtoSectionHeader_Rich(v325);
  v327 = OUTLINED_FUNCTION_13_31(v326, v1278);
  v329 = *(v328 + 64);
  MEMORY[0x28223BE20](v327);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v330);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_35(v331);
  v332 = type metadata accessor for SectionHeaderStandard();
  v333 = OUTLINED_FUNCTION_13_31(v332, v1093);
  v335 = *(v334 + 64);
  MEMORY[0x28223BE20](v333);
  OUTLINED_FUNCTION_11();
  v337 = OUTLINED_FUNCTION_35(v336);
  v338 = type metadata accessor for _ProtoSectionHeader_Standard(v337);
  v339 = OUTLINED_FUNCTION_13_31(v338, v1274);
  v341 = *(v340 + 64);
  MEMORY[0x28223BE20](v339);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v342);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_35(v343);
  v344 = type metadata accessor for SecondaryHeaderEmphasized();
  v345 = OUTLINED_FUNCTION_13_31(v344, v1092);
  v347 = *(v346 + 64);
  MEMORY[0x28223BE20](v345);
  OUTLINED_FUNCTION_11();
  v349 = OUTLINED_FUNCTION_35(v348);
  v350 = type metadata accessor for _ProtoSecondaryHeader_Emphasized(v349);
  v351 = OUTLINED_FUNCTION_13_31(v350, v1270);
  v353 = *(v352 + 64);
  MEMORY[0x28223BE20](v351);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v354);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_35(v355);
  v356 = type metadata accessor for SecondaryHeaderStandard();
  v357 = OUTLINED_FUNCTION_13_31(v356, v1091);
  v359 = *(v358 + 64);
  MEMORY[0x28223BE20](v357);
  OUTLINED_FUNCTION_11();
  v361 = OUTLINED_FUNCTION_35(v360);
  v362 = type metadata accessor for _ProtoSecondaryHeader_Standard(v361);
  v363 = OUTLINED_FUNCTION_13_31(v362, v1266);
  v365 = *(v364 + 64);
  MEMORY[0x28223BE20](v363);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v366);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_35(v367);
  v368 = type metadata accessor for PrimaryHeaderRich();
  v369 = OUTLINED_FUNCTION_13_31(v368, v1090);
  v371 = *(v370 + 64);
  MEMORY[0x28223BE20](v369);
  OUTLINED_FUNCTION_11();
  v373 = OUTLINED_FUNCTION_35(v372);
  v374 = type metadata accessor for _ProtoPrimaryHeader_Rich(v373);
  v375 = OUTLINED_FUNCTION_13_31(v374, v1262);
  v377 = *(v376 + 64);
  MEMORY[0x28223BE20](v375);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v378);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_35(v379);
  v380 = type metadata accessor for PrimaryHeaderMarquee();
  v381 = OUTLINED_FUNCTION_13_31(v380, v1089);
  v383 = *(v382 + 64);
  MEMORY[0x28223BE20](v381);
  OUTLINED_FUNCTION_11();
  v385 = OUTLINED_FUNCTION_35(v384);
  v386 = type metadata accessor for _ProtoPrimaryHeader_Marquee(v385);
  v387 = OUTLINED_FUNCTION_13_31(v386, v1258);
  v389 = *(v388 + 64);
  MEMORY[0x28223BE20](v387);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v390);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_35(v391);
  v392 = type metadata accessor for PrimaryHeaderStandard();
  v393 = OUTLINED_FUNCTION_13_31(v392, v1088);
  v395 = *(v394 + 64);
  MEMORY[0x28223BE20](v393);
  OUTLINED_FUNCTION_11();
  v397 = OUTLINED_FUNCTION_35(v396);
  v398 = type metadata accessor for _ProtoPrimaryHeader_Standard(v397);
  v399 = OUTLINED_FUNCTION_13_31(v398, v1254);
  v401 = *(v400 + 64);
  MEMORY[0x28223BE20](v399);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v402);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_35(v403);
  v404 = type metadata accessor for SimpleItemRichSearchResult();
  v405 = OUTLINED_FUNCTION_13_31(v404, v1087);
  v407 = *(v406 + 64);
  MEMORY[0x28223BE20](v405);
  OUTLINED_FUNCTION_11();
  v409 = OUTLINED_FUNCTION_35(v408);
  v410 = type metadata accessor for _ProtoSimpleItem_RichSearchResult(v409);
  v411 = OUTLINED_FUNCTION_13_31(v410, v1250);
  v413 = *(v412 + 64);
  MEMORY[0x28223BE20](v411);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v414);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_35(v415);
  v416 = type metadata accessor for SimpleItemPlayer();
  v417 = OUTLINED_FUNCTION_13_31(v416, v1086);
  v419 = *(v418 + 64);
  MEMORY[0x28223BE20](v417);
  OUTLINED_FUNCTION_11();
  v421 = OUTLINED_FUNCTION_35(v420);
  v422 = type metadata accessor for _ProtoSimpleItem_Player(v421);
  v423 = OUTLINED_FUNCTION_13_31(v422, v1246);
  v425 = *(v424 + 64);
  MEMORY[0x28223BE20](v423);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v426);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_35(v427);
  v428 = type metadata accessor for SimpleItemVisual();
  v429 = OUTLINED_FUNCTION_13_31(v428, v1085);
  v431 = *(v430 + 64);
  MEMORY[0x28223BE20](v429);
  OUTLINED_FUNCTION_11();
  v433 = OUTLINED_FUNCTION_35(v432);
  v434 = type metadata accessor for _ProtoSimpleItem_Visual(v433);
  v435 = OUTLINED_FUNCTION_13_31(v434, v1242);
  v437 = *(v436 + 64);
  MEMORY[0x28223BE20](v435);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v438);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_35(v439);
  v440 = type metadata accessor for SimpleItemReverseRich();
  v441 = OUTLINED_FUNCTION_13_31(v440, v1084);
  v443 = *(v442 + 64);
  MEMORY[0x28223BE20](v441);
  OUTLINED_FUNCTION_11();
  v445 = OUTLINED_FUNCTION_35(v444);
  v446 = type metadata accessor for _ProtoSimpleItem_ReverseRich(v445);
  v447 = OUTLINED_FUNCTION_13_31(v446, v1238);
  v449 = *(v448 + 64);
  MEMORY[0x28223BE20](v447);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v450);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_35(v451);
  v452 = type metadata accessor for SimpleItemRich();
  v453 = OUTLINED_FUNCTION_13_31(v452, v1083);
  v455 = *(v454 + 64);
  MEMORY[0x28223BE20](v453);
  OUTLINED_FUNCTION_11();
  v457 = OUTLINED_FUNCTION_35(v456);
  v458 = type metadata accessor for _ProtoSimpleItem_Rich(v457);
  v459 = OUTLINED_FUNCTION_13_31(v458, v1234);
  v461 = *(v460 + 64);
  MEMORY[0x28223BE20](v459);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v462);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_35(v463);
  v464 = type metadata accessor for SimpleItemStandard();
  v465 = OUTLINED_FUNCTION_13_31(v464, v1082);
  v467 = *(v466 + 64);
  MEMORY[0x28223BE20](v465);
  OUTLINED_FUNCTION_11();
  v469 = OUTLINED_FUNCTION_35(v468);
  v470 = type metadata accessor for _ProtoSimpleItem_Standard(v469);
  v471 = OUTLINED_FUNCTION_13_31(v470, v1230);
  v473 = *(v472 + 64);
  MEMORY[0x28223BE20](v471);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v474);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_35(v475);
  v476 = type metadata accessor for SystemTextClarificationTitle();
  v477 = OUTLINED_FUNCTION_13_31(v476, v1081);
  v479 = *(v478 + 64);
  MEMORY[0x28223BE20](v477);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_35(v480);
  v481 = type metadata accessor for _ProtoSystemText_ClarificationTitle();
  v482 = OUTLINED_FUNCTION_13_31(v481, v1226);
  v484 = *(v483 + 64);
  MEMORY[0x28223BE20](v482);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v485);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_35(v486);
  v487 = type metadata accessor for SummaryItemSwitchV2();
  v488 = OUTLINED_FUNCTION_13_31(v487, v1080);
  v490 = *(v489 + 64);
  MEMORY[0x28223BE20](v488);
  OUTLINED_FUNCTION_11();
  v492 = OUTLINED_FUNCTION_35(v491);
  v493 = type metadata accessor for _ProtoSummaryItem_SwitchV2(v492);
  v494 = OUTLINED_FUNCTION_13_31(v493, v1222);
  v496 = *(v495 + 64);
  MEMORY[0x28223BE20](v494);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v497);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_35(v498);
  v499 = type metadata accessor for SummaryItemPlayer();
  v500 = OUTLINED_FUNCTION_13_31(v499, v1079);
  v502 = *(v501 + 64);
  MEMORY[0x28223BE20](v500);
  OUTLINED_FUNCTION_11();
  v504 = OUTLINED_FUNCTION_35(v503);
  v505 = type metadata accessor for _ProtoSummaryItem_Player(v504);
  v506 = OUTLINED_FUNCTION_13_31(v505, v1218);
  v508 = *(v507 + 64);
  MEMORY[0x28223BE20](v506);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v509);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_35(v510);
  v511 = type metadata accessor for SummaryItemButton();
  v512 = OUTLINED_FUNCTION_13_31(v511, v1078);
  v514 = *(v513 + 64);
  MEMORY[0x28223BE20](v512);
  OUTLINED_FUNCTION_11();
  v516 = OUTLINED_FUNCTION_35(v515);
  v517 = type metadata accessor for _ProtoSummaryItem_Button(v516);
  v518 = OUTLINED_FUNCTION_13_31(v517, v1214);
  v520 = *(v519 + 64);
  MEMORY[0x28223BE20](v518);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v521);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_35(v522);
  v523 = type metadata accessor for SummaryItemPairNumberV2();
  v524 = OUTLINED_FUNCTION_13_31(v523, v1077);
  v526 = *(v525 + 64);
  MEMORY[0x28223BE20](v524);
  OUTLINED_FUNCTION_11();
  v528 = OUTLINED_FUNCTION_35(v527);
  v529 = type metadata accessor for _ProtoSummaryItem_PairNumberV2(v528);
  v530 = OUTLINED_FUNCTION_13_31(v529, v1210);
  v532 = *(v531 + 64);
  MEMORY[0x28223BE20](v530);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v533);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_35(v534);
  v535 = type metadata accessor for SummaryItemPairV2();
  v536 = OUTLINED_FUNCTION_13_31(v535, v1076);
  v538 = *(v537 + 64);
  MEMORY[0x28223BE20](v536);
  OUTLINED_FUNCTION_11();
  v540 = OUTLINED_FUNCTION_35(v539);
  v541 = type metadata accessor for _ProtoSummaryItem_PairV2(v540);
  v542 = OUTLINED_FUNCTION_13_31(v541, v1206);
  v544 = *(v543 + 64);
  MEMORY[0x28223BE20](v542);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v545);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_35(v546);
  v547 = type metadata accessor for SummaryItemDetailedText();
  v548 = OUTLINED_FUNCTION_13_31(v547, v1075);
  v550 = *(v549 + 64);
  MEMORY[0x28223BE20](v548);
  OUTLINED_FUNCTION_11();
  v552 = OUTLINED_FUNCTION_35(v551);
  v553 = type metadata accessor for _ProtoSummaryItem_DetailedText(v552);
  v554 = OUTLINED_FUNCTION_13_31(v553, v1202);
  v556 = *(v555 + 64);
  MEMORY[0x28223BE20](v554);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v557);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_35(v558);
  v559 = type metadata accessor for SummaryItemLargeText();
  v560 = OUTLINED_FUNCTION_13_31(v559, v1074);
  v562 = *(v561 + 64);
  MEMORY[0x28223BE20](v560);
  OUTLINED_FUNCTION_11();
  v564 = OUTLINED_FUNCTION_35(v563);
  v565 = type metadata accessor for _ProtoSummaryItem_LargeText(v564);
  v566 = OUTLINED_FUNCTION_13_31(v565, v1198);
  v568 = *(v567 + 64);
  MEMORY[0x28223BE20](v566);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v569);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_35(v570);
  v571 = type metadata accessor for SummaryItemText();
  v572 = OUTLINED_FUNCTION_13_31(v571, v1073);
  v574 = *(v573 + 64);
  MEMORY[0x28223BE20](v572);
  OUTLINED_FUNCTION_11();
  v576 = OUTLINED_FUNCTION_35(v575);
  v577 = type metadata accessor for _ProtoSummaryItem_Text(v576);
  v578 = OUTLINED_FUNCTION_13_31(v577, v1194);
  v580 = *(v579 + 64);
  MEMORY[0x28223BE20](v578);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v581);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_35(v582);
  v583 = type metadata accessor for SummaryItemShortNumber();
  v584 = OUTLINED_FUNCTION_13_31(v583, v1072);
  v586 = *(v585 + 64);
  MEMORY[0x28223BE20](v584);
  OUTLINED_FUNCTION_11();
  v588 = OUTLINED_FUNCTION_35(v587);
  v589 = type metadata accessor for _ProtoSummaryItem_ShortNumber(v588);
  v590 = OUTLINED_FUNCTION_13_31(v589, v1190);
  v592 = *(v591 + 64);
  MEMORY[0x28223BE20](v590);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v593);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_35(v594);
  v595 = type metadata accessor for SummaryItemStandard();
  v596 = OUTLINED_FUNCTION_13_31(v595, v1071);
  v598 = *(v597 + 64);
  MEMORY[0x28223BE20](v596);
  OUTLINED_FUNCTION_11();
  v600 = OUTLINED_FUNCTION_35(v599);
  v601 = type metadata accessor for _ProtoSummaryItem_Standard(v600);
  v602 = OUTLINED_FUNCTION_13_31(v601, v1186);
  v604 = *(v603 + 64);
  MEMORY[0x28223BE20](v602);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v605);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_35(v606);
  v607 = type metadata accessor for FactItemButton();
  v608 = OUTLINED_FUNCTION_13_31(v607, v1070);
  v610 = *(v609 + 64);
  MEMORY[0x28223BE20](v608);
  OUTLINED_FUNCTION_11();
  v612 = OUTLINED_FUNCTION_35(v611);
  v613 = type metadata accessor for _ProtoFactItem_Button(v612);
  v614 = OUTLINED_FUNCTION_13_31(v613, v1182);
  v616 = *(v615 + 64);
  MEMORY[0x28223BE20](v614);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v617);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_35(v618);
  v619 = type metadata accessor for FactItemHeroNumber();
  v620 = OUTLINED_FUNCTION_13_31(v619, v1069);
  v622 = *(v621 + 64);
  MEMORY[0x28223BE20](v620);
  OUTLINED_FUNCTION_11();
  v624 = OUTLINED_FUNCTION_35(v623);
  v625 = type metadata accessor for _ProtoFactItem_HeroNumber(v624);
  v626 = OUTLINED_FUNCTION_13_31(v625, v1178);
  v628 = *(v627 + 64);
  MEMORY[0x28223BE20](v626);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v629);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_35(v630);
  v631 = type metadata accessor for FactItemShortNumber();
  v632 = OUTLINED_FUNCTION_13_31(v631, v1068);
  v634 = *(v633 + 64);
  MEMORY[0x28223BE20](v632);
  OUTLINED_FUNCTION_11();
  v636 = OUTLINED_FUNCTION_35(v635);
  v637 = type metadata accessor for _ProtoFactItem_ShortNumber(v636);
  v638 = OUTLINED_FUNCTION_13_31(v637, v1175);
  v640 = *(v639 + 64);
  MEMORY[0x28223BE20](v638);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v641);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_35(v642);
  v643 = type metadata accessor for FactItemStandard();
  v644 = OUTLINED_FUNCTION_13_31(v643, v1067);
  v646 = *(v645 + 64);
  MEMORY[0x28223BE20](v644);
  OUTLINED_FUNCTION_11();
  v648 = OUTLINED_FUNCTION_35(v647);
  v649 = type metadata accessor for _ProtoFactItem_Standard(v648);
  v650 = OUTLINED_FUNCTION_13_31(v649, v1173);
  v652 = *(v651 + 64);
  MEMORY[0x28223BE20](v650);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v653);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_35(v654);
  v655 = type metadata accessor for CustomCanvas();
  v656 = OUTLINED_FUNCTION_13_31(v655, v1065);
  v658 = *(v657 + 64);
  MEMORY[0x28223BE20](v656);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_35(v659);
  v660 = type metadata accessor for _ProtoCustomCanvas();
  v661 = OUTLINED_FUNCTION_41(v660);
  v663 = *(v662 + 64);
  MEMORY[0x28223BE20](v661);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_35(v664);
  v665 = type metadata accessor for ControlPlayerButton();
  v666 = OUTLINED_FUNCTION_13_31(v665, v1066);
  v668 = *(v667 + 64);
  MEMORY[0x28223BE20](v666);
  OUTLINED_FUNCTION_11();
  v670 = OUTLINED_FUNCTION_35(v669);
  v671 = type metadata accessor for _ProtoControl_PlayerButton(v670);
  v672 = OUTLINED_FUNCTION_13_31(v671, v1169);
  v674 = *(v673 + 64);
  MEMORY[0x28223BE20](v672);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v675);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_35(v676);
  v677 = sub_26A4247D4();
  v1343 = OUTLINED_FUNCTION_24(v677);
  v1344 = v678;
  v680 = *(v679 + 64);
  MEMORY[0x28223BE20](v1343);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v681);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v682);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v683);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v684);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v685);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v686);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v687);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v688);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v689);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v690);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v691);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v692);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v693);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v694);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v695);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v696);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v697);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v698);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v699);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v700);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v701);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v702);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v703);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v704);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v705);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v706);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v707);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v708);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v709);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v710);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v711);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v712);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v713);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v714);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v715);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v716);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v717);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v718);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v719);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v720);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v721);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v722);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v723);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v724);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v725);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v726);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v727);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v728);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v729);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v730);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v731);
  v733 = &v1053 - v732;
  MEMORY[0x28223BE20](v734);
  v736 = &v1053 - v735;
  MEMORY[0x28223BE20](v737);
  v739 = &v1053 - v738;
  v740 = type metadata accessor for ControlSwitch();
  v741 = OUTLINED_FUNCTION_12(v740);
  v743 = *(v742 + 64);
  MEMORY[0x28223BE20](v741);
  v745 = &v1053 - ((v744 + 15) & 0xFFFFFFFFFFFFFFF0);
  v746 = type metadata accessor for _ProtoControl_Switch(0);
  v747 = OUTLINED_FUNCTION_12(v746);
  v749 = *(v748 + 64);
  MEMORY[0x28223BE20](v747);
  MEMORY[0x28223BE20](v750);
  OUTLINED_FUNCTION_48();
  v1342 = v751;
  v752 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C828, &unk_26A4276D0);
  OUTLINED_FUNCTION_41(v752);
  v754 = *(v753 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v755);
  v757 = &v1053 - v756;
  v1345 = v3;
  sub_26A3C3320(v3, &v1053 - v756);
  v758 = type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v757, 1, v758) == 1)
  {
    if (qword_28036C5A0 != -1)
    {
      OUTLINED_FUNCTION_0_34();
      swift_once();
    }

    v759 = sub_26A424AE4();
    __swift_project_value_buffer(v759, qword_2803A8950);
    v760 = sub_26A424AD4();
    v761 = sub_26A424E04();
    v762 = os_log_type_enabled(v760, v761);
    v763 = v1346;
    if (v762)
    {
      v764 = swift_slowAlloc();
      *v764 = 0;
      _os_log_impl(&dword_26A0B8000, v760, v761, "Expected a Component value, but found none!", v764, 2u);
      MEMORY[0x26D65C950](v764, -1, -1);
    }

    *(v763 + 24) = type metadata accessor for _ProtoResponse.Component(0);
    *(v763 + 32) = &protocol witness table for _ProtoResponse.Component;
    __swift_allocate_boxed_opaque_existential_1Tm();
    OUTLINED_FUNCTION_11_37();
    return sub_26A3C33E8(v1345, v765);
  }

  else
  {
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        v850 = v1150;
        sub_26A3C3390(v757, v1150);
        sub_26A3C33E8(v850, v1148);
        OUTLINED_FUNCTION_22_28(&v1174);
        _ProtoFactItem_Standard.redactedProto.getter();
        sub_26A4247C4();
        sub_26A3C3440();
        v851 = v1353;
        sub_26A424954();
        if (v851)
        {
          OUTLINED_FUNCTION_15_39();
          v852(v733);
          sub_26A3C3484();
          goto LABEL_125;
        }

        OUTLINED_FUNCTION_15_39();
        v999(v733);
        sub_26A3C3484();
        OUTLINED_FUNCTION_20_30();
        sub_26A3C3484();
        v1000 = v1346;
        *(v1346 + 24) = v1056;
        *(v1000 + 32) = &protocol witness table for FactItemStandard;
        __swift_allocate_boxed_opaque_existential_1Tm();
        sub_26A3AFAA4();
        return sub_26A3C3484();
      case 2u:
        v829 = v1154;
        sub_26A3C3390(v757, v1154);
        OUTLINED_FUNCTION_17_30(v829, v1179);
        OUTLINED_FUNCTION_10_51(v1176);
        _ProtoFactItem_ShortNumber.redactedProto.getter(v830, v831, v832, v833, v834, v835, v836, v837, v1053, v1054, v1055, v1056, v1057, v1058, v1059, v1060, v1061, v1062, v1063, v1064);
        OUTLINED_FUNCTION_22_28(v1120);
        sub_26A4247C4();
        sub_26A3C3440();
        OUTLINED_FUNCTION_24_39();
        OUTLINED_FUNCTION_18_31(v1175);
        if (v2)
        {
          goto LABEL_124;
        }

        v991 = OUTLINED_FUNCTION_0_78();
        v992(v991);
        OUTLINED_FUNCTION_20_30();
        sub_26A3C3484();
        OUTLINED_FUNCTION_29_23();
        OUTLINED_FUNCTION_38_17(&protocol witness table for FactItemShortNumber);
        OUTLINED_FUNCTION_3_58();
        sub_26A3AFE64();
        return sub_26A3C3484();
      case 3u:
        v840 = v1158;
        sub_26A3C3390(v757, v1158);
        OUTLINED_FUNCTION_17_30(v840, v1183);
        OUTLINED_FUNCTION_10_51(v1180);
        _ProtoFactItem_HeroNumber.redactedProto.getter(v841, v842, v843, v844, v845, v846, v847, v848, v1053, v1054, v1055, v1056, v1057, v1058, v1059, v1060, v1061, v1062, v1063, v1064);
        OUTLINED_FUNCTION_22_28(v1121);
        sub_26A4247C4();
        sub_26A3C3440();
        OUTLINED_FUNCTION_24_39();
        OUTLINED_FUNCTION_18_31(v1178);
        if (v2)
        {
          goto LABEL_124;
        }

        v995 = OUTLINED_FUNCTION_0_78();
        v996(v995);
        OUTLINED_FUNCTION_20_30();
        sub_26A3C3484();
        OUTLINED_FUNCTION_29_23();
        OUTLINED_FUNCTION_38_17(&protocol witness table for FactItemHeroNumber);
        OUTLINED_FUNCTION_3_58();
        sub_26A3AFA2C();
        return sub_26A3C3484();
      case 4u:
        v805 = v1165;
        sub_26A3C3390(v757, v1165);
        OUTLINED_FUNCTION_17_30(v805, v1191);
        OUTLINED_FUNCTION_10_51(v1188);
        _ProtoSummaryItem_Standard.redactedProto.getter(v806, v807, v808, v809, v810, v811, v812, v813, v1053, v1054, v1055, v1056, v1057, v1058, v1059, v1060, v1061, v1062, v1063, v1064);
        OUTLINED_FUNCTION_22_28(v1123);
        sub_26A4247C4();
        sub_26A3C3440();
        OUTLINED_FUNCTION_24_39();
        OUTLINED_FUNCTION_18_31(v1186);
        if (v2)
        {
          goto LABEL_124;
        }

        v980 = OUTLINED_FUNCTION_0_78();
        v981(v980);
        OUTLINED_FUNCTION_20_30();
        sub_26A3C3484();
        OUTLINED_FUNCTION_29_23();
        OUTLINED_FUNCTION_38_17(&protocol witness table for SummaryItemStandard);
        OUTLINED_FUNCTION_3_58();
        sub_26A3AFC54();
        return sub_26A3C3484();
      case 5u:
        v870 = v1168;
        sub_26A3C3390(v757, v1168);
        OUTLINED_FUNCTION_17_30(v870, v1195);
        OUTLINED_FUNCTION_10_51(v1192);
        _ProtoSummaryItem_ShortNumber.redactedProto.getter();
        OUTLINED_FUNCTION_22_28(v1124);
        sub_26A4247C4();
        sub_26A3C3440();
        OUTLINED_FUNCTION_24_39();
        OUTLINED_FUNCTION_18_31(v1190);
        if (v2)
        {
          goto LABEL_124;
        }

        v1007 = OUTLINED_FUNCTION_0_78();
        v1008(v1007);
        OUTLINED_FUNCTION_20_30();
        sub_26A3C3484();
        OUTLINED_FUNCTION_29_23();
        OUTLINED_FUNCTION_38_17(&protocol witness table for SummaryItemShortNumber);
        OUTLINED_FUNCTION_3_58();
        sub_26A3AFE94();
        return sub_26A3C3484();
      case 6u:
        v874 = v1172;
        sub_26A3C3390(v757, v1172);
        OUTLINED_FUNCTION_17_30(v874, v1199);
        OUTLINED_FUNCTION_10_51(v1196);
        _ProtoSummaryItem_Text.redactedProto.getter();
        OUTLINED_FUNCTION_22_28(v1125);
        sub_26A4247C4();
        sub_26A3C3440();
        OUTLINED_FUNCTION_24_39();
        OUTLINED_FUNCTION_18_31(v1194);
        if (v2)
        {
          goto LABEL_124;
        }

        v1013 = OUTLINED_FUNCTION_0_78();
        v1014(v1013);
        OUTLINED_FUNCTION_20_30();
        sub_26A3C3484();
        OUTLINED_FUNCTION_29_23();
        OUTLINED_FUNCTION_38_17(&protocol witness table for SummaryItemText);
        OUTLINED_FUNCTION_3_58();
        sub_26A3AFDA4();
        return sub_26A3C3484();
      case 7u:
        v849 = v1174;
        sub_26A3C3390(v757, v1174);
        OUTLINED_FUNCTION_17_30(v849, v1203);
        OUTLINED_FUNCTION_10_51(v1200);
        _ProtoSummaryItem_LargeText.redactedProto.getter();
        OUTLINED_FUNCTION_22_28(v1126);
        sub_26A4247C4();
        sub_26A3C3440();
        OUTLINED_FUNCTION_24_39();
        OUTLINED_FUNCTION_18_31(v1198);
        if (v2)
        {
          goto LABEL_124;
        }

        v997 = OUTLINED_FUNCTION_0_78();
        v998(v997);
        OUTLINED_FUNCTION_20_30();
        sub_26A3C3484();
        OUTLINED_FUNCTION_29_23();
        OUTLINED_FUNCTION_38_17(&protocol witness table for SummaryItemLargeText);
        OUTLINED_FUNCTION_3_58();
        sub_26A3AFB4C();
        return sub_26A3C3484();
      case 8u:
        v878 = v1177;
        sub_26A3C3390(v757, v1177);
        OUTLINED_FUNCTION_17_30(v878, v1207);
        OUTLINED_FUNCTION_10_51(v1204);
        _ProtoSummaryItem_DetailedText.redactedProto.getter(v879, v880, v881, v882, v883, v884, v885, v886, v1053, v1054, v1055, v1056, v1057, v1058, v1059, v1060, v1061, v1062, v1063, v1064);
        OUTLINED_FUNCTION_22_28(v1127);
        sub_26A4247C4();
        sub_26A3C3440();
        OUTLINED_FUNCTION_24_39();
        OUTLINED_FUNCTION_18_31(v1202);
        if (v2)
        {
          goto LABEL_124;
        }

        v1019 = OUTLINED_FUNCTION_0_78();
        v1020(v1019);
        OUTLINED_FUNCTION_20_30();
        sub_26A3C3484();
        OUTLINED_FUNCTION_29_23();
        OUTLINED_FUNCTION_38_17(&protocol witness table for SummaryItemDetailedText);
        OUTLINED_FUNCTION_3_58();
        sub_26A3AFEAC();
        return sub_26A3C3484();
      case 9u:
        v816 = v1205;
        sub_26A3C3390(v757, v1205);
        OUTLINED_FUNCTION_17_30(v816, v1235);
        OUTLINED_FUNCTION_10_51(v1232);
        _ProtoSimpleItem_Standard.redactedProto.getter(v817, v818, v819, v820, v821, v822, v823, v824, v1053, v1054, v1055, v1056, v1057, v1058, v1059, v1060, v1061, v1062, v1063, v1064);
        OUTLINED_FUNCTION_22_28(v1134);
        sub_26A4247C4();
        sub_26A3C3440();
        OUTLINED_FUNCTION_24_39();
        OUTLINED_FUNCTION_18_31(v1230);
        if (v2)
        {
          goto LABEL_124;
        }

        v986 = OUTLINED_FUNCTION_0_78();
        v987(v986);
        OUTLINED_FUNCTION_20_30();
        sub_26A3C3484();
        OUTLINED_FUNCTION_29_23();
        OUTLINED_FUNCTION_38_17(&protocol witness table for SimpleItemStandard);
        OUTLINED_FUNCTION_3_58();
        sub_26A3AFE1C();
        return sub_26A3C3484();
      case 0xAu:
        v877 = v1209;
        sub_26A3C3390(v757, v1209);
        OUTLINED_FUNCTION_17_30(v877, v1239);
        OUTLINED_FUNCTION_10_51(v1236);
        _ProtoSimpleItem_Rich.redactedProto.getter();
        OUTLINED_FUNCTION_22_28(v1135);
        sub_26A4247C4();
        sub_26A3C3440();
        OUTLINED_FUNCTION_24_39();
        OUTLINED_FUNCTION_18_31(v1234);
        if (v2)
        {
          goto LABEL_124;
        }

        v1017 = OUTLINED_FUNCTION_0_78();
        v1018(v1017);
        OUTLINED_FUNCTION_20_30();
        sub_26A3C3484();
        OUTLINED_FUNCTION_29_23();
        OUTLINED_FUNCTION_38_17(&protocol witness table for SimpleItemRich);
        OUTLINED_FUNCTION_3_58();
        sub_26A3AFB1C();
        return sub_26A3C3484();
      case 0xBu:
        v801 = v1217;
        sub_26A3C3390(v757, v1217);
        OUTLINED_FUNCTION_17_30(v801, v1247);
        OUTLINED_FUNCTION_10_51(v1244);
        _ProtoSimpleItem_Visual.redactedProto.getter();
        OUTLINED_FUNCTION_22_28(v1137);
        sub_26A4247C4();
        sub_26A3C3440();
        OUTLINED_FUNCTION_24_39();
        OUTLINED_FUNCTION_18_31(v1242);
        if (v2)
        {
          goto LABEL_124;
        }

        v977 = OUTLINED_FUNCTION_0_78();
        v978(v977);
        OUTLINED_FUNCTION_20_30();
        sub_26A3C3484();
        OUTLINED_FUNCTION_29_23();
        OUTLINED_FUNCTION_38_17(&protocol witness table for SimpleItemVisual);
        OUTLINED_FUNCTION_3_58();
        sub_26A3AFDBC();
        return sub_26A3C3484();
      case 0xCu:
        v815 = v1229;
        sub_26A3C3390(v757, v1229);
        OUTLINED_FUNCTION_17_30(v815, v1259);
        OUTLINED_FUNCTION_10_51(v1256);
        _ProtoPrimaryHeader_Standard.redactedProto.getter();
        OUTLINED_FUNCTION_22_28(v1140);
        sub_26A4247C4();
        sub_26A3C3440();
        OUTLINED_FUNCTION_24_39();
        OUTLINED_FUNCTION_18_31(v1254);
        if (v2)
        {
          goto LABEL_124;
        }

        v984 = OUTLINED_FUNCTION_0_78();
        v985(v984);
        OUTLINED_FUNCTION_20_30();
        sub_26A3C3484();
        OUTLINED_FUNCTION_29_23();
        OUTLINED_FUNCTION_38_17(&protocol witness table for PrimaryHeaderStandard);
        OUTLINED_FUNCTION_3_58();
        sub_26A3AFA74();
        return sub_26A3C3484();
      case 0xDu:
        v873 = v1233;
        sub_26A3C3390(v757, v1233);
        OUTLINED_FUNCTION_17_30(v873, v1263);
        OUTLINED_FUNCTION_10_51(v1260);
        _ProtoPrimaryHeader_Marquee.redactedProto.getter();
        OUTLINED_FUNCTION_22_28(v1141);
        sub_26A4247C4();
        sub_26A3C3440();
        OUTLINED_FUNCTION_24_39();
        OUTLINED_FUNCTION_18_31(v1258);
        if (v2)
        {
          goto LABEL_124;
        }

        v1011 = OUTLINED_FUNCTION_0_78();
        v1012(v1011);
        OUTLINED_FUNCTION_20_30();
        sub_26A3C3484();
        OUTLINED_FUNCTION_29_23();
        OUTLINED_FUNCTION_38_17(&protocol witness table for PrimaryHeaderMarquee);
        OUTLINED_FUNCTION_3_58();
        sub_26A3AFD14();
        return sub_26A3C3484();
      case 0xEu:
        v786 = v1237;
        sub_26A3C3390(v757, v1237);
        OUTLINED_FUNCTION_17_30(v786, v1267);
        OUTLINED_FUNCTION_10_51(v1264);
        _ProtoPrimaryHeader_Rich.redactedProto.getter(v787, v788, v789, v790, v791, v792, v793, v794, v1053, v1054, v1055, v1056, v1057, v1058, v1059, v1060, v1061, v1062, v1063, v1064);
        OUTLINED_FUNCTION_22_28(&v1142);
        sub_26A4247C4();
        sub_26A3C3440();
        OUTLINED_FUNCTION_24_39();
        OUTLINED_FUNCTION_18_31(v1262);
        if (v2)
        {
          goto LABEL_124;
        }

        v971 = OUTLINED_FUNCTION_0_78();
        v972(v971);
        OUTLINED_FUNCTION_20_30();
        sub_26A3C3484();
        OUTLINED_FUNCTION_29_23();
        OUTLINED_FUNCTION_38_17(&protocol witness table for PrimaryHeaderRich);
        OUTLINED_FUNCTION_3_58();
        sub_26A3AFDD4();
        return sub_26A3C3484();
      case 0xFu:
        v838 = v1241;
        sub_26A3C3390(v757, v1241);
        OUTLINED_FUNCTION_17_30(v838, v1271);
        OUTLINED_FUNCTION_10_51(v1268);
        _ProtoSecondaryHeader_Standard.redactedProto.getter(v839);
        OUTLINED_FUNCTION_22_28(&v1143);
        sub_26A4247C4();
        sub_26A3C3440();
        OUTLINED_FUNCTION_24_39();
        OUTLINED_FUNCTION_18_31(v1266);
        if (v2)
        {
          goto LABEL_124;
        }

        v993 = OUTLINED_FUNCTION_0_78();
        v994(v993);
        OUTLINED_FUNCTION_20_30();
        sub_26A3C3484();
        OUTLINED_FUNCTION_29_23();
        OUTLINED_FUNCTION_38_17(&protocol witness table for SecondaryHeaderStandard);
        OUTLINED_FUNCTION_3_58();
        sub_26A3AF9FC();
        return sub_26A3C3484();
      case 0x10u:
        v783 = v1257;
        sub_26A3C3390(v757, v1257);
        OUTLINED_FUNCTION_17_30(v783, v1287);
        OUTLINED_FUNCTION_10_51(v1284);
        _ProtoButton.redactedProto.getter();
        OUTLINED_FUNCTION_22_28(v1147);
        sub_26A4247C4();
        sub_26A3C3440();
        OUTLINED_FUNCTION_24_39();
        OUTLINED_FUNCTION_18_31(v1282);
        if (v2)
        {
          goto LABEL_124;
        }

        v967 = OUTLINED_FUNCTION_0_78();
        v968(v967);
        OUTLINED_FUNCTION_20_30();
        sub_26A3C3484();
        OUTLINED_FUNCTION_29_23();
        OUTLINED_FUNCTION_38_17(&protocol witness table for Button);
        OUTLINED_FUNCTION_3_58();
        sub_26A3AFAEC();
        return sub_26A3C3484();
      case 0x11u:
        v857 = v1261;
        sub_26A3C3390(v757, v1261);
        OUTLINED_FUNCTION_17_30(v857, v1291);
        OUTLINED_FUNCTION_10_51(v1288);
        _ProtoBinaryButton.redactedProto.getter(v858);
        OUTLINED_FUNCTION_22_28(&v1148);
        sub_26A4247C4();
        sub_26A3C3440();
        OUTLINED_FUNCTION_24_39();
        OUTLINED_FUNCTION_18_31(v1286);
        if (v2)
        {
          goto LABEL_124;
        }

        v1001 = OUTLINED_FUNCTION_0_78();
        v1002(v1001);
        OUTLINED_FUNCTION_20_30();
        sub_26A3C3484();
        OUTLINED_FUNCTION_29_23();
        OUTLINED_FUNCTION_38_17(&protocol witness table for BinaryButton);
        OUTLINED_FUNCTION_3_58();
        sub_26A3AFBAC();
        return sub_26A3C3484();
      case 0x12u:
        v875 = v1285;
        sub_26A3C3390(v757, v1285);
        OUTLINED_FUNCTION_17_30(v875, &v1311);
        OUTLINED_FUNCTION_10_51(v1309);
        sub_26A27E314(v876);
        OUTLINED_FUNCTION_22_28(&v1154);
        sub_26A4247C4();
        sub_26A3C3440();
        OUTLINED_FUNCTION_24_39();
        OUTLINED_FUNCTION_18_31(v1307);
        if (v2)
        {
          goto LABEL_124;
        }

        v1015 = OUTLINED_FUNCTION_0_78();
        v1016(v1015);
        OUTLINED_FUNCTION_20_30();
        sub_26A3C3484();
        OUTLINED_FUNCTION_29_23();
        OUTLINED_FUNCTION_38_17(&protocol witness table for StatusIndicatorSuccess);
        OUTLINED_FUNCTION_3_58();
        sub_26A3AFB7C();
        return sub_26A3C3484();
      case 0x13u:
        v899 = v1289;
        sub_26A3C3390(v757, v1289);
        OUTLINED_FUNCTION_17_30(v899, v1314);
        OUTLINED_FUNCTION_10_51(v1312);
        sub_26A1F33A8(v900);
        OUTLINED_FUNCTION_22_28(v1155);
        sub_26A4247C4();
        sub_26A3C3440();
        OUTLINED_FUNCTION_24_39();
        OUTLINED_FUNCTION_18_31(v1310);
        if (v2)
        {
          goto LABEL_124;
        }

        v1027 = OUTLINED_FUNCTION_0_78();
        v1028(v1027);
        OUTLINED_FUNCTION_20_30();
        sub_26A3C3484();
        OUTLINED_FUNCTION_29_23();
        OUTLINED_FUNCTION_38_17(&protocol witness table for StatusIndicatorError);
        OUTLINED_FUNCTION_3_58();
        sub_26A3AFB04();
        return sub_26A3C3484();
      case 0x14u:
        v868 = v1293;
        sub_26A3C3390(v757, v1293);
        OUTLINED_FUNCTION_17_30(v868, v1317);
        OUTLINED_FUNCTION_10_51(&v1315);
        sub_26A156AB0(v869);
        OUTLINED_FUNCTION_22_28(v1156);
        sub_26A4247C4();
        sub_26A3C3440();
        OUTLINED_FUNCTION_24_39();
        OUTLINED_FUNCTION_18_31(v1313);
        if (v2)
        {
          goto LABEL_124;
        }

        v1005 = OUTLINED_FUNCTION_0_78();
        v1006(v1005);
        OUTLINED_FUNCTION_20_30();
        sub_26A3C3484();
        OUTLINED_FUNCTION_29_23();
        OUTLINED_FUNCTION_38_17(&protocol witness table for StatusIndicatorInProgress);
        OUTLINED_FUNCTION_3_58();
        sub_26A3AFABC();
        return sub_26A3C3484();
      case 0x15u:
        v871 = v1297;
        sub_26A3C3390(v757, v1297);
        OUTLINED_FUNCTION_17_30(v871, v1321);
        OUTLINED_FUNCTION_10_51(v1318);
        sub_26A380EA0(v872);
        OUTLINED_FUNCTION_22_28(v1157);
        sub_26A4247C4();
        sub_26A3C3440();
        OUTLINED_FUNCTION_24_39();
        OUTLINED_FUNCTION_18_31(&v1316);
        if (v2)
        {
          goto LABEL_124;
        }

        v1009 = OUTLINED_FUNCTION_0_78();
        v1010(v1009);
        OUTLINED_FUNCTION_20_30();
        sub_26A3C3484();
        OUTLINED_FUNCTION_29_23();
        OUTLINED_FUNCTION_38_17(&protocol witness table for StatusIndicatorCancelled);
        OUTLINED_FUNCTION_3_58();
        sub_26A3AFEC4();
        return sub_26A3C3484();
      case 0x16u:
        v894 = v1296;
        sub_26A3C3390(v757, v1296);
        OUTLINED_FUNCTION_17_30(v894, v1320);
        OUTLINED_FUNCTION_33_18();
        TextInput.jsonString(redacted:)(v895);
        if (v896)
        {
          goto LABEL_125;
        }

        OUTLINED_FUNCTION_29_23();
        OUTLINED_FUNCTION_38_17(&protocol witness table for TextInput);
        OUTLINED_FUNCTION_3_58();
        sub_26A3AFEF4();
        return sub_26A3C3484();
      case 0x17u:
        v913 = v1342;
        sub_26A3C3390(v757, v1342);
        sub_26A3C33E8(v913, v745);
        _ProtoControl_Switch.redactedProto.getter();
        sub_26A4247C4();
        sub_26A3C3440();
        v914 = v1353;
        sub_26A424954();
        if (v914)
        {
          OUTLINED_FUNCTION_15_39();
          v915(v739);
          sub_26A3C3484();
          OUTLINED_FUNCTION_20_30();
          sub_26A3C3484();
        }

        else
        {
          OUTLINED_FUNCTION_4_50();
          v1035(v739);
          sub_26A3C3484();
          OUTLINED_FUNCTION_20_30();
          sub_26A3C3484();
          v1036 = v1346;
          *(v1346 + 24) = v740;
          *(v1036 + 32) = &protocol witness table for ControlSwitch;
          __swift_allocate_boxed_opaque_existential_1Tm();
          OUTLINED_FUNCTION_3_58();
          sub_26A3AFA14();
        }

        return sub_26A3C3484();
      case 0x18u:
        v828 = v1302;
        sub_26A3C3390(v757, v1302);
        OUTLINED_FUNCTION_17_30(v828, v1325);
        OUTLINED_FUNCTION_10_51(v1323);
        _ProtoControl_Slider.redactedProto.getter();
        OUTLINED_FUNCTION_22_28(&v1158);
        sub_26A4247C4();
        sub_26A3C3440();
        OUTLINED_FUNCTION_24_39();
        OUTLINED_FUNCTION_18_31(&v1322);
        if (v2)
        {
          goto LABEL_124;
        }

        v989 = OUTLINED_FUNCTION_0_78();
        v990(v989);
        OUTLINED_FUNCTION_20_30();
        sub_26A3C3484();
        OUTLINED_FUNCTION_29_23();
        OUTLINED_FUNCTION_38_17(&protocol witness table for ControlSlider);
        OUTLINED_FUNCTION_3_58();
        sub_26A3AF9E4();
        return sub_26A3C3484();
      case 0x19u:
        v825 = v1144;
        sub_26A3C3390(v757, v1144);
        sub_26A3C33E8(v825, v1142);
        OUTLINED_FUNCTION_22_28(v1170);
        _ProtoControl_PlayerButton.redactedProto.getter();
        sub_26A4247C4();
        sub_26A3C3440();
        v826 = v1353;
        sub_26A424954();
        if (v826)
        {
          OUTLINED_FUNCTION_15_39();
          v827(v736);
          sub_26A3C3484();
          goto LABEL_125;
        }

        OUTLINED_FUNCTION_4_50();
        v988(v736);
        sub_26A3C3484();
        OUTLINED_FUNCTION_20_30();
        sub_26A3C3484();
        OUTLINED_FUNCTION_38_17(&protocol witness table for ControlPlayerButton);
        OUTLINED_FUNCTION_3_58();
        sub_26A3AFE4C();
        break;
      case 0x1Au:
        sub_26A3C3484();
        v928 = type metadata accessor for _ProtoResponse.Component(0);
        v929 = v1346;
        *(v1346 + 24) = v928;
        *(v929 + 32) = &protocol witness table for _ProtoResponse.Component;
        __swift_allocate_boxed_opaque_existential_1Tm();
        OUTLINED_FUNCTION_11_37();
        return sub_26A3C33E8(v1345, v930);
      case 0x1Bu:
        v780 = v1265;
        sub_26A3C3390(v757, v1265);
        OUTLINED_FUNCTION_17_30(v780, v1295);
        OUTLINED_FUNCTION_10_51(v1292);
        _ProtoReference_Standard.redactedProto.getter(v781);
        OUTLINED_FUNCTION_22_28(v1149);
        sub_26A4247C4();
        sub_26A3C3440();
        OUTLINED_FUNCTION_24_39();
        OUTLINED_FUNCTION_18_31(v1290);
        if (v2)
        {
          goto LABEL_124;
        }

        v963 = OUTLINED_FUNCTION_0_78();
        v964(v963);
        OUTLINED_FUNCTION_20_30();
        sub_26A3C3484();
        OUTLINED_FUNCTION_29_23();
        OUTLINED_FUNCTION_38_17(&protocol witness table for ReferenceStandard);
        OUTLINED_FUNCTION_3_58();
        sub_26A3AFDEC();
        return sub_26A3C3484();
      case 0x1Cu:
        v916 = v1269;
        sub_26A3C3390(v757, v1269);
        OUTLINED_FUNCTION_17_30(v916, v1299);
        OUTLINED_FUNCTION_10_51(&v1296);
        _ProtoReference_Logo.redactedProto.getter(v917);
        OUTLINED_FUNCTION_22_28(&v1150);
        sub_26A4247C4();
        sub_26A3C3440();
        OUTLINED_FUNCTION_24_39();
        OUTLINED_FUNCTION_18_31(v1294);
        if (v2)
        {
          goto LABEL_124;
        }

        v1037 = OUTLINED_FUNCTION_0_78();
        v1038(v1037);
        OUTLINED_FUNCTION_20_30();
        sub_26A3C3484();
        OUTLINED_FUNCTION_29_23();
        OUTLINED_FUNCTION_38_17(&protocol witness table for ReferenceLogo);
        OUTLINED_FUNCTION_3_58();
        sub_26A3AFD5C();
        return sub_26A3C3484();
      case 0x1Du:
        v918 = v1273;
        sub_26A3C3390(v757, v1273);
        OUTLINED_FUNCTION_17_30(v918, &v1302);
        OUTLINED_FUNCTION_10_51(v1300);
        _ProtoReference_Rich.redactedProto.getter();
        OUTLINED_FUNCTION_22_28(v1151);
        sub_26A4247C4();
        sub_26A3C3440();
        OUTLINED_FUNCTION_24_39();
        OUTLINED_FUNCTION_18_31(v1298);
        if (v2)
        {
          goto LABEL_124;
        }

        v1039 = OUTLINED_FUNCTION_0_78();
        v1040(v1039);
        OUTLINED_FUNCTION_20_30();
        sub_26A3C3484();
        OUTLINED_FUNCTION_29_23();
        OUTLINED_FUNCTION_38_17(&protocol witness table for ReferenceRich);
        OUTLINED_FUNCTION_3_58();
        sub_26A3AFD74();
        return sub_26A3C3484();
      case 0x1Eu:
        v887 = v1277;
        sub_26A3C3390(v757, v1277);
        OUTLINED_FUNCTION_17_30(v887, &v1305);
        OUTLINED_FUNCTION_10_51(v1303);
        _ProtoReference_Button.redactedProto.getter(v888);
        OUTLINED_FUNCTION_22_28(v1152);
        sub_26A4247C4();
        sub_26A3C3440();
        OUTLINED_FUNCTION_24_39();
        OUTLINED_FUNCTION_18_31(v1301);
        if (v2)
        {
          goto LABEL_124;
        }

        v1021 = OUTLINED_FUNCTION_0_78();
        v1022(v1021);
        OUTLINED_FUNCTION_20_30();
        sub_26A3C3484();
        OUTLINED_FUNCTION_29_23();
        OUTLINED_FUNCTION_38_17(&protocol witness table for ReferenceButton);
        OUTLINED_FUNCTION_3_58();
        sub_26A3AFD8C();
        return sub_26A3C3484();
      case 0x1Fu:
        sub_26A3C3390(v757, v1338);
        v1349 = type metadata accessor for SummaryItemPair();
        v1350 = &protocol witness table for SummaryItemPair;
        v1351 = sub_26A3C3440();
        boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm();
        OUTLINED_FUNCTION_31_20(boxed_opaque_existential_1Tm);
        __swift_project_boxed_opaque_existential_1(&v1347, v1349);
        v854 = OUTLINED_FUNCTION_175();
        OUTLINED_FUNCTION_32_20(v854, v855, v856);
        goto LABEL_93;
      case 0x20u:
        v889 = v1181;
        sub_26A3C3390(v757, v1181);
        OUTLINED_FUNCTION_17_30(v889, v1211);
        OUTLINED_FUNCTION_10_51(v1208);
        _ProtoSummaryItem_PairV2.redactedProto.getter();
        OUTLINED_FUNCTION_22_28(v1128);
        sub_26A4247C4();
        sub_26A3C3440();
        OUTLINED_FUNCTION_24_39();
        OUTLINED_FUNCTION_18_31(v1206);
        if (v2)
        {
          goto LABEL_124;
        }

        v1023 = OUTLINED_FUNCTION_0_78();
        v1024(v1023);
        OUTLINED_FUNCTION_20_30();
        sub_26A3C3484();
        OUTLINED_FUNCTION_29_23();
        OUTLINED_FUNCTION_38_17(&protocol witness table for SummaryItemPairV2);
        OUTLINED_FUNCTION_3_58();
        sub_26A3AFCE4();
        return sub_26A3C3484();
      case 0x21u:
        sub_26A3C3390(v757, v1340);
        v1349 = type metadata accessor for SummaryItemPairNumber();
        v1350 = &protocol witness table for SummaryItemPairNumber;
        v1351 = sub_26A3C3440();
        v795 = __swift_allocate_boxed_opaque_existential_1Tm();
        OUTLINED_FUNCTION_31_20(v795);
        __swift_project_boxed_opaque_existential_1(&v1347, v1349);
        v796 = OUTLINED_FUNCTION_175();
        OUTLINED_FUNCTION_32_20(v796, v797, v798);
        goto LABEL_93;
      case 0x22u:
        v782 = v1185;
        sub_26A3C3390(v757, v1185);
        OUTLINED_FUNCTION_17_30(v782, v1215);
        OUTLINED_FUNCTION_10_51(v1212);
        _ProtoSummaryItem_PairNumberV2.redactedProto.getter();
        OUTLINED_FUNCTION_22_28(v1129);
        sub_26A4247C4();
        sub_26A3C3440();
        OUTLINED_FUNCTION_24_39();
        OUTLINED_FUNCTION_18_31(v1210);
        if (v2)
        {
          goto LABEL_124;
        }

        v965 = OUTLINED_FUNCTION_0_78();
        v966(v965);
        OUTLINED_FUNCTION_20_30();
        sub_26A3C3484();
        OUTLINED_FUNCTION_29_23();
        OUTLINED_FUNCTION_38_17(&protocol witness table for SummaryItemPairNumberV2);
        OUTLINED_FUNCTION_3_58();
        sub_26A3AFA5C();
        return sub_26A3C3484();
      case 0x23u:
        v778 = v1189;
        sub_26A3C3390(v757, v1189);
        OUTLINED_FUNCTION_17_30(v778, v1219);
        OUTLINED_FUNCTION_10_51(v1216);
        _ProtoSummaryItem_Button.redactedProto.getter();
        OUTLINED_FUNCTION_22_28(v1130);
        sub_26A4247C4();
        sub_26A3C3440();
        OUTLINED_FUNCTION_24_39();
        OUTLINED_FUNCTION_18_31(v1214);
        if (v2)
        {
          goto LABEL_124;
        }

        v959 = OUTLINED_FUNCTION_0_78();
        v960(v959);
        OUTLINED_FUNCTION_20_30();
        sub_26A3C3484();
        OUTLINED_FUNCTION_29_23();
        OUTLINED_FUNCTION_38_17(&protocol witness table for SummaryItemButton);
        OUTLINED_FUNCTION_3_58();
        sub_26A3AFE04();
        return sub_26A3C3484();
      case 0x24u:
        v779 = v1162;
        sub_26A3C3390(v757, v1162);
        OUTLINED_FUNCTION_17_30(v779, v1187);
        OUTLINED_FUNCTION_10_51(v1184);
        _ProtoFactItem_Button.redactedProto.getter();
        OUTLINED_FUNCTION_22_28(v1122);
        sub_26A4247C4();
        sub_26A3C3440();
        OUTLINED_FUNCTION_24_39();
        OUTLINED_FUNCTION_18_31(v1182);
        if (v2)
        {
          goto LABEL_124;
        }

        v961 = OUTLINED_FUNCTION_0_78();
        v962(v961);
        OUTLINED_FUNCTION_20_30();
        sub_26A3C3484();
        OUTLINED_FUNCTION_29_23();
        OUTLINED_FUNCTION_38_17(&protocol witness table for FactItemButton);
        OUTLINED_FUNCTION_3_58();
        sub_26A3AFB64();
        return sub_26A3C3484();
      case 0x25u:
        v772 = v1305;
        sub_26A3C3390(v757, v1305);
        OUTLINED_FUNCTION_17_30(v772, &v1329);
        OUTLINED_FUNCTION_10_51(v1326);
        _ProtoTable.redactedProto.getter();
        OUTLINED_FUNCTION_22_28(v1159);
        sub_26A4247C4();
        sub_26A3C3440();
        OUTLINED_FUNCTION_24_39();
        OUTLINED_FUNCTION_18_31(v1324);
        if (v2)
        {
          goto LABEL_124;
        }

        v952 = OUTLINED_FUNCTION_0_78();
        v953(v952);
        OUTLINED_FUNCTION_20_30();
        sub_26A3C3484();
        OUTLINED_FUNCTION_29_23();
        OUTLINED_FUNCTION_38_17(&protocol witness table for Table);
        OUTLINED_FUNCTION_3_58();
        sub_26A3AFEDC();
        return sub_26A3C3484();
      case 0x26u:
        v919 = v1281;
        sub_26A3C3390(v757, v1281);
        OUTLINED_FUNCTION_17_30(v919, &v1308);
        OUTLINED_FUNCTION_10_51(v1306);
        _ProtoReference_Footnote.redactedProto.getter(v920, v921, v922, v923, v924, v925, v926, v927, v1053, v1054, v1055, v1056, v1057, v1058, v1059, v1060, v1061, v1062, v1063, v1064);
        OUTLINED_FUNCTION_22_28(v1153);
        sub_26A4247C4();
        sub_26A3C3440();
        OUTLINED_FUNCTION_24_39();
        OUTLINED_FUNCTION_18_31(v1304);
        if (v2)
        {
          goto LABEL_124;
        }

        v1041 = OUTLINED_FUNCTION_0_78();
        v1042(v1041);
        OUTLINED_FUNCTION_20_30();
        sub_26A3C3484();
        OUTLINED_FUNCTION_29_23();
        OUTLINED_FUNCTION_38_17(&protocol witness table for ReferenceFootnote);
        OUTLINED_FUNCTION_3_58();
        sub_26A3AFA8C();
        return sub_26A3C3484();
      case 0x27u:
        v897 = v1308;
        sub_26A3C3390(v757, v1308);
        OUTLINED_FUNCTION_17_30(v897, &v1332);
        OUTLINED_FUNCTION_10_51(v1330);
        _ProtoLongItem_Text.redactedProto.getter(v898);
        OUTLINED_FUNCTION_22_28(v1160);
        sub_26A4247C4();
        sub_26A3C3440();
        OUTLINED_FUNCTION_24_39();
        OUTLINED_FUNCTION_18_31(v1328);
        if (v2)
        {
          goto LABEL_124;
        }

        v1025 = OUTLINED_FUNCTION_0_78();
        v1026(v1025);
        OUTLINED_FUNCTION_20_30();
        sub_26A3C3484();
        OUTLINED_FUNCTION_29_23();
        OUTLINED_FUNCTION_38_17(&protocol witness table for LongItemText);
        OUTLINED_FUNCTION_3_58();
        sub_26A3AFC0C();
        return sub_26A3C3484();
      case 0x28u:
        v814 = v1311;
        sub_26A3C3390(v757, v1311);
        OUTLINED_FUNCTION_17_30(v814, &v1336);
        OUTLINED_FUNCTION_10_51(&v1333);
        _ProtoVisualization_Chart.redactedProto.getter();
        OUTLINED_FUNCTION_22_28(v1161);
        sub_26A4247C4();
        sub_26A3C3440();
        OUTLINED_FUNCTION_24_39();
        OUTLINED_FUNCTION_18_31(&v1331);
        if (v2)
        {
          goto LABEL_124;
        }

        v982 = OUTLINED_FUNCTION_0_78();
        v983(v982);
        OUTLINED_FUNCTION_20_30();
        sub_26A3C3484();
        OUTLINED_FUNCTION_29_23();
        OUTLINED_FUNCTION_38_17(&protocol witness table for VisualizationChart);
        OUTLINED_FUNCTION_3_58();
        sub_26A3AFCCC();
        return sub_26A3C3484();
      case 0x29u:
        v859 = v1193;
        sub_26A3C3390(v757, v1193);
        OUTLINED_FUNCTION_17_30(v859, v1223);
        OUTLINED_FUNCTION_10_51(v1220);
        _ProtoSummaryItem_Player.redactedProto.getter(v860, v861, v862, v863, v864, v865, v866, v867, v1053, v1054, v1055, v1056, v1057, v1058, v1059, v1060, v1061, v1062, v1063, v1064);
        OUTLINED_FUNCTION_22_28(v1131);
        sub_26A4247C4();
        sub_26A3C3440();
        OUTLINED_FUNCTION_24_39();
        OUTLINED_FUNCTION_18_31(v1218);
        if (v2)
        {
          goto LABEL_124;
        }

        v1003 = OUTLINED_FUNCTION_0_78();
        v1004(v1003);
        OUTLINED_FUNCTION_20_30();
        sub_26A3C3484();
        OUTLINED_FUNCTION_29_23();
        OUTLINED_FUNCTION_38_17(&protocol witness table for SummaryItemPlayer);
        OUTLINED_FUNCTION_3_58();
        sub_26A3AF9CC();
        return sub_26A3C3484();
      case 0x2Au:
        v903 = v1221;
        sub_26A3C3390(v757, v1221);
        OUTLINED_FUNCTION_17_30(v903, v1251);
        OUTLINED_FUNCTION_10_51(v1248);
        _ProtoSimpleItem_Player.redactedProto.getter(v904, v905, v906, v907, v908, v909, v910, v911, v1053, v1054, v1055, v1056, v1057, v1058, v1059, v1060, v1061, v1062, v1063, v1064);
        OUTLINED_FUNCTION_22_28(v1138);
        sub_26A4247C4();
        sub_26A3C3440();
        OUTLINED_FUNCTION_24_39();
        OUTLINED_FUNCTION_18_31(v1246);
        if (v2)
        {
          goto LABEL_124;
        }

        v1031 = OUTLINED_FUNCTION_0_78();
        v1032(v1031);
        OUTLINED_FUNCTION_20_30();
        sub_26A3C3484();
        OUTLINED_FUNCTION_29_23();
        OUTLINED_FUNCTION_38_17(&protocol witness table for SimpleItemPlayer);
        OUTLINED_FUNCTION_3_58();
        sub_26A3AFCB4();
        return sub_26A3C3484();
      case 0x2Bu:
        v771 = v1213;
        sub_26A3C3390(v757, v1213);
        OUTLINED_FUNCTION_17_30(v771, v1243);
        OUTLINED_FUNCTION_10_51(v1240);
        _ProtoSimpleItem_ReverseRich.redactedProto.getter();
        OUTLINED_FUNCTION_22_28(&v1136);
        sub_26A4247C4();
        sub_26A3C3440();
        OUTLINED_FUNCTION_24_39();
        OUTLINED_FUNCTION_18_31(v1238);
        if (v2)
        {
          goto LABEL_124;
        }

        v950 = OUTLINED_FUNCTION_0_78();
        v951(v950);
        OUTLINED_FUNCTION_20_30();
        sub_26A3C3484();
        OUTLINED_FUNCTION_29_23();
        OUTLINED_FUNCTION_38_17(&protocol witness table for SimpleItemReverseRich);
        OUTLINED_FUNCTION_3_58();
        sub_26A3AFBF4();
        return sub_26A3C3484();
      case 0x2Cu:
        v784 = v1245;
        sub_26A3C3390(v757, v1245);
        OUTLINED_FUNCTION_17_30(v784, v1275);
        OUTLINED_FUNCTION_10_51(v1272);
        _ProtoSecondaryHeader_Emphasized.redactedProto.getter(v785);
        OUTLINED_FUNCTION_22_28(&v1144);
        sub_26A4247C4();
        sub_26A3C3440();
        OUTLINED_FUNCTION_24_39();
        OUTLINED_FUNCTION_18_31(v1270);
        if (v2)
        {
          goto LABEL_124;
        }

        v969 = OUTLINED_FUNCTION_0_78();
        v970(v969);
        OUTLINED_FUNCTION_20_30();
        sub_26A3C3484();
        OUTLINED_FUNCTION_29_23();
        OUTLINED_FUNCTION_38_17(&protocol witness table for SecondaryHeaderEmphasized);
        OUTLINED_FUNCTION_3_58();
        sub_26A3AFAD4();
        return sub_26A3C3484();
      case 0x2Du:
        sub_26A3C3390(v757, v1341);
        v1349 = type metadata accessor for SummaryItemSwitch();
        v1350 = &protocol witness table for SummaryItemSwitch;
        v1351 = sub_26A3C3440();
        v890 = __swift_allocate_boxed_opaque_existential_1Tm();
        OUTLINED_FUNCTION_31_20(v890);
        __swift_project_boxed_opaque_existential_1(&v1347, v1349);
        v891 = OUTLINED_FUNCTION_175();
        OUTLINED_FUNCTION_32_20(v891, v892, v893);
LABEL_93:
        sub_26A3C3484();
        return sub_26A1EDCF8(&v1347);
      case 0x2Eu:
        v935 = v1201;
        sub_26A3C3390(v757, v1201);
        OUTLINED_FUNCTION_17_30(v935, v1231);
        OUTLINED_FUNCTION_10_51(v1228);
        _ProtoSystemText_ClarificationTitle.redactedProto.getter(v936);
        OUTLINED_FUNCTION_22_28(v1133);
        sub_26A4247C4();
        sub_26A3C3440();
        OUTLINED_FUNCTION_24_39();
        OUTLINED_FUNCTION_18_31(v1226);
        if (v2)
        {
          goto LABEL_124;
        }

        v1049 = OUTLINED_FUNCTION_0_78();
        v1050(v1049);
        OUTLINED_FUNCTION_20_30();
        sub_26A3C3484();
        OUTLINED_FUNCTION_29_23();
        OUTLINED_FUNCTION_38_17(&protocol witness table for SystemTextClarificationTitle);
        OUTLINED_FUNCTION_3_58();
        sub_26A3AFC84();
        return sub_26A3C3484();
      case 0x2Fu:
        v776 = v1315;
        sub_26A3C3390(v757, v1315);
        OUTLINED_FUNCTION_17_30(v776, &v1340);
        OUTLINED_FUNCTION_10_51(&v1337);
        _ProtoVisualization_Image.redactedProto.getter();
        OUTLINED_FUNCTION_22_28(&v1162);
        sub_26A4247C4();
        sub_26A3C3440();
        OUTLINED_FUNCTION_24_39();
        OUTLINED_FUNCTION_18_31(&v1335);
        if (v2)
        {
          goto LABEL_124;
        }

        v955 = OUTLINED_FUNCTION_0_78();
        v956(v955);
        OUTLINED_FUNCTION_20_30();
        sub_26A3C3484();
        OUTLINED_FUNCTION_29_23();
        OUTLINED_FUNCTION_38_17(&protocol witness table for VisualizationImage);
        OUTLINED_FUNCTION_3_58();
        sub_26A3AFE34();
        return sub_26A3C3484();
      case 0x30u:
        v799 = v1316;
        sub_26A3C3390(v757, v1316);
        OUTLINED_FUNCTION_17_30(v799, &v1344);
        OUTLINED_FUNCTION_10_51(&v1341);
        _ProtoVisualization_Map.redactedProto.getter();
        OUTLINED_FUNCTION_22_28(v1163);
        sub_26A4247C4();
        sub_26A3C3440();
        OUTLINED_FUNCTION_24_39();
        OUTLINED_FUNCTION_18_31(&v1339);
        if (v2)
        {
          goto LABEL_124;
        }

        v973 = OUTLINED_FUNCTION_0_78();
        v974(v973);
        OUTLINED_FUNCTION_20_30();
        sub_26A3C3484();
        OUTLINED_FUNCTION_29_23();
        OUTLINED_FUNCTION_38_17(&protocol witness table for VisualizationMap);
        OUTLINED_FUNCTION_3_58();
        sub_26A3AFC9C();
        return sub_26A3C3484();
      case 0x31u:
        v802 = v1319;
        sub_26A3C3390(v757, v1319);
        OUTLINED_FUNCTION_17_30(v802, &v1346);
        v803 = v1132;
        sub_26A4247C4();
        sub_26A3C3440();
        OUTLINED_FUNCTION_33_18();
        sub_26A424954();
        if (v2)
        {
          OUTLINED_FUNCTION_15_39();
          v804(v803);
          OUTLINED_FUNCTION_27_26();
        }

        else
        {
          OUTLINED_FUNCTION_4_50();
          v979(v803);
          OUTLINED_FUNCTION_27_26();
          OUTLINED_FUNCTION_38_17(&protocol witness table for ButtonContainer);
          OUTLINED_FUNCTION_3_58();
          sub_26A3AFB94();
        }

        return sub_26A3C3484();
      case 0x32u:
        v770 = v1322;
        sub_26A3C3390(v757, v1322);
        OUTLINED_FUNCTION_17_30(v770, &v1350);
        OUTLINED_FUNCTION_10_51(v1348);
        sub_26A2B3BB8();
        OUTLINED_FUNCTION_22_28(v1164);
        sub_26A4247C4();
        sub_26A3C3440();
        OUTLINED_FUNCTION_24_39();
        OUTLINED_FUNCTION_18_31(&v1347);
        if (v2)
        {
          goto LABEL_124;
        }

        v948 = OUTLINED_FUNCTION_0_78();
        v949(v948);
        OUTLINED_FUNCTION_20_30();
        sub_26A3C3484();
        OUTLINED_FUNCTION_29_23();
        OUTLINED_FUNCTION_38_17(&protocol witness table for IntentsUIStandard);
        OUTLINED_FUNCTION_3_58();
        sub_26A3AFC3C();
        return sub_26A3C3484();
      case 0x33u:
        v937 = v1327;
        sub_26A3C3390(v757, v1327);
        OUTLINED_FUNCTION_17_30(v937, &v1353);
        OUTLINED_FUNCTION_10_51(&v1351);
        _ProtoSash_Standard.redactedProto.getter(v938, v939, v940, v941, v942, v943, v944, v945, v1053, v1054, v1055, v1056, v1057, v1058, v1059, v1060, v1061, v1062, v1063, v1064);
        OUTLINED_FUNCTION_22_28(&v1165);
        sub_26A4247C4();
        sub_26A3C3440();
        OUTLINED_FUNCTION_24_39();
        OUTLINED_FUNCTION_18_31(&v1349);
        if (v2)
        {
          goto LABEL_124;
        }

        v1051 = OUTLINED_FUNCTION_0_78();
        v1052(v1051);
        OUTLINED_FUNCTION_20_30();
        sub_26A3C3484();
        OUTLINED_FUNCTION_29_23();
        OUTLINED_FUNCTION_38_17(&protocol witness table for SashStandard);
        OUTLINED_FUNCTION_3_58();
        sub_26A3AFD44();
        return sub_26A3C3484();
      case 0x34u:
        v934 = v1329;
        sub_26A3C3390(v757, v1329);
        OUTLINED_FUNCTION_17_30(v934, &v1356);
        OUTLINED_FUNCTION_10_51(&v1354);
        HeroHeader.redactedProto.getter();
        OUTLINED_FUNCTION_22_28(v1166);
        sub_26A4247C4();
        sub_26A3C3440();
        OUTLINED_FUNCTION_24_39();
        OUTLINED_FUNCTION_18_31(&v1352);
        if (v2)
        {
          goto LABEL_124;
        }

        v1047 = OUTLINED_FUNCTION_0_78();
        v1048(v1047);
        OUTLINED_FUNCTION_20_30();
        sub_26A3C3484();
        OUTLINED_FUNCTION_29_23();
        OUTLINED_FUNCTION_38_17(&protocol witness table for HeroHeader);
        OUTLINED_FUNCTION_3_58();
        sub_26A3AFCFC();
        return sub_26A3C3484();
      case 0x35u:
        v773 = v1331;
        sub_26A3C3390(v757, v1331);
        OUTLINED_FUNCTION_17_30(v773, &v1357);
        v774 = v1136;
        sub_26A4247C4();
        sub_26A3C3440();
        OUTLINED_FUNCTION_33_18();
        sub_26A424954();
        if (v2)
        {
          OUTLINED_FUNCTION_15_39();
          v775(v774);
          OUTLINED_FUNCTION_26_33();
        }

        else
        {
          OUTLINED_FUNCTION_4_50();
          v954(v774);
          OUTLINED_FUNCTION_26_33();
          OUTLINED_FUNCTION_38_17(&protocol witness table for HorizontalListStandard);
          OUTLINED_FUNCTION_3_58();
          sub_26A3AFBC4();
        }

        return sub_26A3C3484();
      case 0x36u:
        v931 = v1249;
        sub_26A3C3390(v757, v1249);
        OUTLINED_FUNCTION_17_30(v931, v1279);
        OUTLINED_FUNCTION_10_51(v1276);
        _ProtoSectionHeader_Standard.redactedProto.getter(v932);
        OUTLINED_FUNCTION_22_28(v1145);
        sub_26A4247C4();
        sub_26A3C3440();
        OUTLINED_FUNCTION_24_39();
        OUTLINED_FUNCTION_18_31(v1274);
        if (v2)
        {
          goto LABEL_124;
        }

        v1043 = OUTLINED_FUNCTION_0_78();
        v1044(v1043);
        OUTLINED_FUNCTION_20_30();
        sub_26A3C3484();
        OUTLINED_FUNCTION_29_23();
        OUTLINED_FUNCTION_38_17(&protocol witness table for SectionHeaderStandard);
        OUTLINED_FUNCTION_3_58();
        sub_26A3AFE7C();
        return sub_26A3C3484();
      case 0x37u:
        v933 = v1253;
        sub_26A3C3390(v757, v1253);
        OUTLINED_FUNCTION_17_30(v933, v1283);
        OUTLINED_FUNCTION_10_51(v1280);
        _ProtoSectionHeader_Rich.redactedProto.getter();
        OUTLINED_FUNCTION_22_28(v1146);
        sub_26A4247C4();
        sub_26A3C3440();
        OUTLINED_FUNCTION_24_39();
        OUTLINED_FUNCTION_18_31(v1278);
        if (v2)
        {
          goto LABEL_124;
        }

        v1045 = OUTLINED_FUNCTION_0_78();
        v1046(v1045);
        OUTLINED_FUNCTION_20_30();
        sub_26A3C3484();
        OUTLINED_FUNCTION_29_23();
        OUTLINED_FUNCTION_38_17(&protocol witness table for SectionHeaderRich);
        OUTLINED_FUNCTION_3_58();
        sub_26A3AFD2C();
        return sub_26A3C3484();
      case 0x38u:
        v777 = v1336;
        sub_26A3C3390(v757, v1336);
        sub_26A3C33E8(v777, v1334);
        sub_26A2B2C30();
        OUTLINED_FUNCTION_22_28(v1167);
        sub_26A4247C4();
        sub_26A3C3440();
        OUTLINED_FUNCTION_24_39();
        OUTLINED_FUNCTION_18_31(&v1358);
        if (v2)
        {
          goto LABEL_124;
        }

        v957 = OUTLINED_FUNCTION_0_78();
        v958(v957);
        OUTLINED_FUNCTION_20_30();
        sub_26A3C3484();
        OUTLINED_FUNCTION_29_23();
        OUTLINED_FUNCTION_38_17(&protocol witness table for KeyValueStandard);
        OUTLINED_FUNCTION_3_58();
        sub_26A3AFC24();
        return sub_26A3C3484();
      case 0x39u:
        v901 = v1339;
        sub_26A3C3390(v757, v1339);
        sub_26A3C33E8(v901, v1337);
        _ProtoTertiaryHeader_Standard.redactedProto.getter(v1335);
        OUTLINED_FUNCTION_22_28(&v1168);
        sub_26A4247C4();
        sub_26A3C3440();
        OUTLINED_FUNCTION_24_39();
        v902 = v1353;
        sub_26A424954();
        if (v902)
        {
          goto LABEL_124;
        }

        v1029 = OUTLINED_FUNCTION_0_78();
        v1030(v1029);
        OUTLINED_FUNCTION_20_30();
        sub_26A3C3484();
        OUTLINED_FUNCTION_29_23();
        OUTLINED_FUNCTION_38_17(&protocol witness table for TertiaryHeaderStandard);
        OUTLINED_FUNCTION_3_58();
        sub_26A3AFA44();
        return sub_26A3C3484();
      case 0x3Au:
        v800 = v1225;
        sub_26A3C3390(v757, v1225);
        OUTLINED_FUNCTION_17_30(v800, v1255);
        OUTLINED_FUNCTION_10_51(v1252);
        _ProtoSimpleItem_RichSearchResult.redactedProto.getter();
        OUTLINED_FUNCTION_22_28(v1139);
        sub_26A4247C4();
        sub_26A3C3440();
        OUTLINED_FUNCTION_24_39();
        OUTLINED_FUNCTION_18_31(v1250);
        if (v2)
        {
          goto LABEL_124;
        }

        v975 = OUTLINED_FUNCTION_0_78();
        v976(v975);
        OUTLINED_FUNCTION_20_30();
        sub_26A3C3484();
        OUTLINED_FUNCTION_29_23();
        OUTLINED_FUNCTION_38_17(&protocol witness table for SimpleItemRichSearchResult);
        OUTLINED_FUNCTION_3_58();
        sub_26A3AFBDC();
        return sub_26A3C3484();
      case 0x3Bu:
        v912 = v1197;
        sub_26A3C3390(v757, v1197);
        OUTLINED_FUNCTION_17_30(v912, v1227);
        OUTLINED_FUNCTION_10_51(v1224);
        _ProtoSummaryItem_SwitchV2.redactedProto.getter();
        OUTLINED_FUNCTION_22_28(&v1132);
        sub_26A4247C4();
        sub_26A3C3440();
        OUTLINED_FUNCTION_24_39();
        OUTLINED_FUNCTION_18_31(v1222);
        if (v2)
        {
LABEL_124:
          v946 = OUTLINED_FUNCTION_9_42();
          v947(v946);
          sub_26A3C3484();
LABEL_125:
          sub_26A3C3484();
        }

        else
        {
          v1033 = OUTLINED_FUNCTION_0_78();
          v1034(v1033);
          OUTLINED_FUNCTION_20_30();
          sub_26A3C3484();
          OUTLINED_FUNCTION_29_23();
          OUTLINED_FUNCTION_38_17(&protocol witness table for SummaryItemSwitchV2);
          OUTLINED_FUNCTION_3_58();
          sub_26A3AFB34();
        }

        break;
      default:
        v767 = v1143;
        sub_26A3C3390(v757, v1143);
        OUTLINED_FUNCTION_17_30(v767, v1171);
        OUTLINED_FUNCTION_33_18();
        CustomCanvas.jsonString(redacted:)(v768);
        if (v769)
        {
          goto LABEL_125;
        }

        OUTLINED_FUNCTION_29_23();
        OUTLINED_FUNCTION_38_17(&protocol witness table for CustomCanvas);
        OUTLINED_FUNCTION_3_58();
        sub_26A3AFC6C();
        return sub_26A3C3484();
    }

    return sub_26A3C3484();
  }
}

Swift::String __swiftcall ComponentGroupReference.description(redacted:)(Swift::Bool redacted)
{
  v2 = *v1;
  v3 = v1[1];
  sub_26A424EF4();

  MEMORY[0x26D65BA70](v2, v3);
  MEMORY[0x26D65BA70](10530, 0xE200000000000000);
  v4 = 0xD00000000000001DLL;
  v5 = 0x800000026A448550;
  result._object = v5;
  result._countAndFlagsBits = v4;
  return result;
}

void sub_26A3C1E64(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for _ProtoResponse.Component(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  OUTLINED_FUNCTION_8();
  v37 = v6;
  MEMORY[0x28223BE20](v7);
  v9 = &v35 - v8;
  OUTLINED_FUNCTION_13_34();
  sub_26A3C33E8(v1, a1);
  v10 = *(a1 + 16);
  v11 = *(v10 + 16);
  if (v11)
  {
    v36 = a1;
    v45 = MEMORY[0x277D84F90];
    sub_26A10D258();
    v12 = 0;
    v13 = 0;
    v41 = v45;
    v38 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v39 = v10 + v38;
    v14 = v37;
    while (1)
    {
      if (v12 >= *(v10 + 16))
      {
        __break(1u);
        goto LABEL_16;
      }

      v15 = *(v4 + 72);
      OUTLINED_FUNCTION_11_37();
      sub_26A3C33E8(v16, v14);
      sub_26A3BA6DC(v42);
      if (v13)
      {
        break;
      }

      v40 = 0;
      v17 = v10;
      v18 = v4;
      v20 = v43;
      v19 = v44;
      __swift_project_boxed_opaque_existential_1(v42, v43);
      (*(v19 + 8))(v20, v19);
      OUTLINED_FUNCTION_20_30();
      sub_26A3C3484();
      __swift_destroy_boxed_opaque_existential_1(v42);
      v21 = v41;
      v45 = v41;
      v22 = *(v41 + 16);
      if (v22 >= *(v41 + 24) >> 1)
      {
        sub_26A10D258();
        v14 = v37;
        v21 = v45;
      }

      ++v12;
      *(v21 + 16) = v22 + 1;
      v41 = v21;
      OUTLINED_FUNCTION_11_37();
      sub_26A3C3390(v9, v23);
      v4 = v18;
      v10 = v17;
      v13 = v40;
      if (v11 == v12)
      {

        a1 = v36;
        v34 = v41;
        goto LABEL_13;
      }
    }

    sub_26A3C3484();

    if (qword_28036C5A0 == -1)
    {
      goto LABEL_11;
    }

LABEL_16:
    OUTLINED_FUNCTION_0_34();
    swift_once();
LABEL_11:
    v25 = sub_26A424AE4();
    __swift_project_value_buffer(v25, qword_2803A8950);
    v26 = v13;
    v27 = sub_26A424AD4();
    v28 = sub_26A424E04();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v42[0] = v30;
      *v29 = 136446210;
      swift_getErrorValue();
      v31 = sub_26A4254B4();
      v33 = sub_26A0E8788(v31, v32, v42);

      *(v29 + 4) = v33;
      _os_log_impl(&dword_26A0B8000, v27, v28, "Unable to redact component %{public}s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v30);
      MEMORY[0x26D65C950](v30, -1, -1);
      MEMORY[0x26D65C950](v29, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    v24 = *(a1 + 16);

    v34 = MEMORY[0x277D84F90];
LABEL_13:
    *(a1 + 16) = v34;
  }
}

uint64_t ComponentGroup.init(_:components:)()
{
  return sub_26A3C249C();
}

{
  return sub_26A3C249C();
}

uint64_t sub_26A3C2278(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = type metadata accessor for _ProtoResponse.Component(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v14 = &v25[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[1];

  *a1 = a2;
  a1[1] = a3;
  v16 = *(a4 + 16);
  v17 = MEMORY[0x277D84F90];
  if (v16)
  {
    v24 = v5;
    v28 = MEMORY[0x277D84F90];
    sub_26A10D258();
    v17 = v28;
    v18 = a4 + 32;
    do
    {
      sub_26A0E5D68(v18, v25);
      v19 = v26;
      v20 = v27;
      __swift_project_boxed_opaque_existential_1(v25, v26);
      (*(v20 + 8))(v19, v20);
      __swift_destroy_boxed_opaque_existential_1(v25);
      v28 = v17;
      v21 = *(v17 + 16);
      if (v21 >= *(v17 + 24) >> 1)
      {
        sub_26A10D258();
        v17 = v28;
      }

      *(v17 + 16) = v21 + 1;
      sub_26A3C3390(v14, v17 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v21);
      v18 += 40;
      --v16;
    }

    while (v16);
  }

  v22 = a1[2];

  a1[2] = v17;
  return result;
}

uint64_t sub_26A3C249C()
{
  type metadata accessor for _ProtoResponse.Group(0);
  OUTLINED_FUNCTION_12_32();
  sub_26A3C3440();
  sub_26A4249C4();
}

Swift::String __swiftcall ComponentGroup.description(redacted:)(Swift::Bool redacted)
{
  v2 = v1;
  v4 = type metadata accessor for ComponentGroup();
  v5 = OUTLINED_FUNCTION_41(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v34 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CC88, &qword_26A442940);
  OUTLINED_FUNCTION_12(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v16);
  v18 = v34 - v17;
  sub_26A3C33E8(v2, v12);
  if (redacted)
  {
    sub_26A3C1E64(v9);
  }

  else
  {
    sub_26A3C33E8(v12, v9);
  }

  sub_26A3C3390(v9, v18);
  v18[*(v13 + 32)] = redacted;
  sub_26A3C3484();
  *&v18[*(v13 + 28)] = MEMORY[0x277D84F90];
  KeyPath = swift_getKeyPath();
  sub_26A0F7E08(KeyPath, 25705, 0xE200000000000000, 0, v20, v21, v22, v23, v34[0], v34[1]);

  v24 = *(v18 + 2);
  sub_26A31BF28();
  v26 = sub_26A3BA590(v25, v18);

  sub_26A3A2BE4(v26, 0, 0, 0);

  sub_26A0FFBD0();
  v28 = v27;
  v30 = v29;
  sub_26A13440C();
  v31 = v28;
  v32 = v30;
  result._object = v32;
  result._countAndFlagsBits = v31;
  return result;
}

uint64_t type metadata accessor for ComponentGroup()
{
  result = qword_280373830;
  if (!qword_280373830)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

BOOL static ComponentGroup.== infix(_:_:)(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  result = 0;
  if (v4 || (sub_26A425354() & 1) != 0)
  {
    v5 = a1[2];
    v6 = a2[2];
    sub_26A0D887C();
    if (v7)
    {
      v8 = *(type metadata accessor for _ProtoResponse.Group(0) + 24);
      sub_26A424794();
      sub_26A3C3440();
      if (sub_26A424B64())
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t ComponentGroup.hash(into:)()
{
  type metadata accessor for _ProtoResponse.Group(0);
  OUTLINED_FUNCTION_12_32();
  sub_26A3C3440();

  return sub_26A424B44();
}

uint64_t ComponentGroup.hashValue.getter()
{
  sub_26A425504();
  type metadata accessor for _ProtoResponse.Group(0);
  OUTLINED_FUNCTION_12_32();
  sub_26A3C3440();
  sub_26A424B44();
  return sub_26A425554();
}

uint64_t sub_26A3C29C8()
{
  sub_26A425504();
  type metadata accessor for _ProtoResponse.Group(0);
  sub_26A3C3440();
  sub_26A424B44();
  return sub_26A425554();
}

uint64_t ComponentGroupReference.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_175();
}

uint64_t sub_26A3C2A7C(uint64_t a1)
{
  v2 = sub_26A3C2C20();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26A3C2AB8(uint64_t a1)
{
  v2 = sub_26A3C2C20();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ComponentGroupReference.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280373810, &qword_26A442970);
  OUTLINED_FUNCTION_24(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v8);
  v10 = &v15 - v9;
  v11 = *v1;
  v12 = v1[1];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26A3C2C20();
  sub_26A425594();
  sub_26A425114();
  return (*(v5 + 8))(v10, v3);
}

unint64_t sub_26A3C2C20()
{
  result = qword_280373818;
  if (!qword_280373818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280373818);
  }

  return result;
}

uint64_t ComponentGroupReference.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280373820, &qword_26A442978);
  OUTLINED_FUNCTION_24(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v10);
  v12 = &v18 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26A3C2C20();
  sub_26A425574();
  if (!v2)
  {
    v14 = sub_26A425034();
    v16 = v15;
    (*(v7 + 8))(v12, v5);
    *a2 = v14;
    a2[1] = v16;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t ComponentGroupReference.componentProto.getter@<X0>(void *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
  __swift_storeEnumTagSinglePayload(a1, 1, 1, v5);
  v6 = type metadata accessor for _ProtoResponse.Component(0);
  v7 = *(v6 + 20);

  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v8 = *(v6 + 24);
  v9 = type metadata accessor for _ProtoSeparators();
  __swift_storeEnumTagSinglePayload(a1 + v8, 1, 1, v9);
  sub_26A13440C();
  *a1 = v4;
  a1[1] = v3;
  swift_storeEnumTagMultiPayload();

  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v5);
}

uint64_t ComponentGroupReference.asSection()()
{
  v2 = *v0;
  v1 = v0[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB40, &qword_26A426510);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A426410;
  *(inited + 56) = &type metadata for ComponentGroupReference;
  *(inited + 64) = &protocol witness table for ComponentGroupReference;
  *(inited + 32) = v2;
  *(inited + 40) = v1;

  swift_beginAccess();

  sub_26A10BF5C(v4);
  type metadata accessor for _ProtoResponse.Section(0);
  sub_26A3C3440();
  sub_26A4249C4();

  swift_setDeallocating();
  return sub_26A10C358();
}

uint64_t sub_26A3C30F0()
{
  result = type metadata accessor for _ProtoResponse.Group(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ComponentGroupReference.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_26A3C321C()
{
  result = qword_280373840;
  if (!qword_280373840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280373840);
  }

  return result;
}

unint64_t sub_26A3C3274()
{
  result = qword_280373848;
  if (!qword_280373848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280373848);
  }

  return result;
}

unint64_t sub_26A3C32CC()
{
  result = qword_280373850;
  if (!qword_280373850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280373850);
  }

  return result;
}

uint64_t sub_26A3C3320(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C828, &unk_26A4276D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A3C3390(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_16_11();
  v5 = v4(v3);
  OUTLINED_FUNCTION_12(v5);
  v7 = *(v6 + 32);
  v8 = OUTLINED_FUNCTION_175();
  v9(v8);
  return a2;
}

uint64_t sub_26A3C33E8(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_16_11();
  v5 = v4(v3);
  OUTLINED_FUNCTION_12(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_175();
  v9(v8);
  return a2;
}

unint64_t sub_26A3C3440()
{
  OUTLINED_FUNCTION_14_4();
  result = *v2;
  if (!result)
  {
    v1(255);
    result = swift_getWitnessTable();
    atomic_store(result, v0);
  }

  return result;
}

uint64_t sub_26A3C3484()
{
  OUTLINED_FUNCTION_14_4();
  v2 = v1(0);
  OUTLINED_FUNCTION_12(v2);
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t OUTLINED_FUNCTION_0_78()
{
  v2 = *(v1 - 168);
  v3 = *(*(v1 - 160) + 8);
  return v0;
}

uint64_t OUTLINED_FUNCTION_9_42()
{
  v2 = *(v1 - 168);
  v3 = *(*(v1 - 160) + 8);
  return v0;
}

uint64_t OUTLINED_FUNCTION_17_30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a2 - 256);

  return sub_26A3C33E8(a1, v3);
}

uint64_t OUTLINED_FUNCTION_18_31@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256);
  v4 = *(v1 - 72);

  return sub_26A424954();
}

uint64_t OUTLINED_FUNCTION_26_33()
{

  return sub_26A3C3484();
}

uint64_t OUTLINED_FUNCTION_27_26()
{

  return sub_26A3C3484();
}

uint64_t OUTLINED_FUNCTION_29_23()
{

  return sub_26A3C3484();
}

uint64_t OUTLINED_FUNCTION_31_20(uint64_t a1)
{

  return sub_26A3C33E8(v1, a1);
}

uint64_t OUTLINED_FUNCTION_32_20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *(v4 - 72);

  return sub_26A3451EC(a1, a2, v3, a3);
}

void sub_26A3C36AC(char *a1@<X0>, _BYTE *a2@<X8>)
{
  if (a1[8] == 1)
  {
    v3 = *a1;
  }

  else
  {
    if (qword_28036C5A0 != -1)
    {
      swift_once();
    }

    v4 = sub_26A424AE4();
    __swift_project_value_buffer(v4, qword_2803A8950);
    v5 = sub_26A424AD4();
    v6 = sub_26A424E04();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_26A0B8000, v5, v6, "Unrecognized CornerRoundingMode, defaulting to 'default'", v7, 2u);
      MEMORY[0x26D65C950](v7, -1, -1);
    }

    v3 = 0;
  }

  *a2 = v3;
}

uint64_t ImageElement.CornerRoundingMode.description.getter()
{
  v1 = 0x64656C6261736964;
  if (*v0 != 1)
  {
    v1 = 0x656C63726963;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746C7561666564;
  }
}

unint64_t ImageElement.CornerRoundingMode.init(rawValue:)@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 3;
  if (result < 3)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

unint64_t sub_26A3C381C()
{
  result = qword_280373858;
  if (!qword_280373858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280373858);
  }

  return result;
}

uint64_t sub_26A3C3888@<X0>(uint64_t *a1@<X8>)
{
  result = ImageElement.CornerRoundingMode.rawValue.getter();
  *a1 = result;
  return result;
}

_BYTE *_s18CornerRoundingModeOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

Swift::String __swiftcall SummaryItemButton.description(redacted:)(Swift::Bool redacted)
{
  OUTLINED_FUNCTION_76();
  v113 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB18, &unk_26A427670);
  OUTLINED_FUNCTION_41(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_42();
  v121 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB20, &unk_26A426470);
  OUTLINED_FUNCTION_41(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_42();
  v120 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB28, &qword_26A427980);
  OUTLINED_FUNCTION_41(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_42();
  v114 = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036EC48, &unk_26A4385C0);
  OUTLINED_FUNCTION_41(v20);
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_42();
  v118 = v24;
  v115 = type metadata accessor for _ProtoButton(0);
  v25 = OUTLINED_FUNCTION_12(v115);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_18();
  v116 = v29 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CD38, &qword_26A437B70);
  v31 = OUTLINED_FUNCTION_41(v30);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_51_9();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_48();
  v117 = v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v36);
  v38 = *(v37 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v39);
  v41 = &v112 - v40;
  v42 = type metadata accessor for _ProtoTextProperty(0);
  v43 = OUTLINED_FUNCTION_12(v42);
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_18();
  v48 = v47 - v46;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB30, &qword_26A426480);
  v50 = OUTLINED_FUNCTION_41(v49);
  v52 = *(v51 + 64);
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_8();
  v119 = v53;
  MEMORY[0x28223BE20](v54);
  v56 = &v112 - v55;
  v57 = type metadata accessor for SummaryItemButton();
  v58 = OUTLINED_FUNCTION_41(v57);
  v60 = *(v59 + 64);
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v61);
  v63 = &v112 - v62;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CD30, &unk_26A426810);
  OUTLINED_FUNCTION_12(v64);
  v66 = *(v65 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v67);
  v69 = &v112 - v68;
  OUTLINED_FUNCTION_26_34();
  sub_26A3C82F8();
  if (v4)
  {
    _ProtoSummaryItem_Button.redactedProto.getter();
  }

  else
  {
    sub_26A3C82F8();
  }

  OUTLINED_FUNCTION_72_9();
  v69[*(v64 + 32)] = v4 & 1;
  sub_26A3C7EC0(v63, type metadata accessor for SummaryItemButton);
  v70 = MEMORY[0x277D84F90];
  *&v69[*(v64 + 28)] = MEMORY[0x277D84F90];
  v71 = *&v69[*(type metadata accessor for _ProtoSummaryItem_Button(0) + 20)];
  OUTLINED_FUNCTION_142();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_37(v41, 1, v42);
  if (v72)
  {
    *v48 = v70;
    *(v48 + 8) = 0;
    v73 = v48 + v42[7];
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    v74 = v42[8];
    v75 = type metadata accessor for _ProtoActionProperty();
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v76, v77, v78, v75);
    v79 = v42[9];
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v80, v81, v82, v75);
    OUTLINED_FUNCTION_37(v41, 1, v42);
    v83 = v116;
    if (!v72)
    {
      sub_26A0E48F0(v41, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    sub_26A3C834C();
    v83 = v116;
  }

  sub_26A3C834C();
  v84 = type metadata accessor for TextProperty(0);
  __swift_storeEnumTagSinglePayload(v56, 0, 1, v84);
  OUTLINED_FUNCTION_222();
  sub_26A106F8C();
  sub_26A0E48F0(v56, &qword_28036CB30, &qword_26A426480);
  OUTLINED_FUNCTION_142();
  v85 = v118;
  sub_26A10FD9C();
  v86 = OUTLINED_FUNCTION_116();
  v87 = v115;
  OUTLINED_FUNCTION_37(v86, v88, v115);
  if (v72)
  {
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    v89 = *(v87 + 20);
    if (qword_28036C428 != -1)
    {
      OUTLINED_FUNCTION_60_4();
    }

    *(v83 + v89) = qword_280371710;
    v90 = OUTLINED_FUNCTION_116();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v90, v91, v87);

    if (EnumTagSinglePayload != 1)
    {
      sub_26A0E48F0(v85, &qword_28036EC48, &unk_26A4385C0);
    }
  }

  else
  {
    sub_26A3C834C();
  }

  v93 = v117;
  sub_26A3C834C();
  v94 = type metadata accessor for Button();
  __swift_storeEnumTagSinglePayload(v93, 0, 1, v94);
  OUTLINED_FUNCTION_49_13();
  sub_26A106FDC();
  OUTLINED_FUNCTION_162_0(v93);
  SummaryItemButton.button2.getter();
  OUTLINED_FUNCTION_49_13();
  sub_26A106FDC();
  OUTLINED_FUNCTION_162_0(v2);
  SummaryItemButton.button3.getter();
  OUTLINED_FUNCTION_49_13();
  sub_26A106FDC();
  OUTLINED_FUNCTION_162_0(v2);
  v95 = v114;
  SummaryItemButton.text2.getter();
  OUTLINED_FUNCTION_222();
  sub_26A106FB4();
  OUTLINED_FUNCTION_162_0(v95);
  SummaryItemButton.text3.getter();
  OUTLINED_FUNCTION_222();
  sub_26A106FB4();
  OUTLINED_FUNCTION_162_0(v95);
  v96 = v119;
  SummaryItemButton.text4.getter();
  OUTLINED_FUNCTION_222();
  sub_26A106F8C();
  sub_26A0E48F0(v96, &qword_28036CB30, &qword_26A426480);
  v97 = v120;
  SummaryItemButton.thumbnail.getter();
  sub_26A106F64();
  sub_26A0E48F0(v97, &qword_28036CB20, &unk_26A426470);
  v98 = v121;
  SummaryItemButton.action.getter();
  sub_26A106E70();
  sub_26A0E48F0(v98, &qword_28036CB18, &unk_26A427670);
  KeyPath = swift_getKeyPath();
  sub_26A0F7BB0(KeyPath, 0x6E656E6F706D6F63, 0xED0000656D614E74, 1, v100, v101, v102, v103, v112, v113);

  v104 = swift_getKeyPath();
  sub_26A0F8544(v104, 0x6E6564496B6E696CLL, 0xEE00726569666974, 1, v105, v106, v107, v108, v112, v113);

  sub_26A0FDCF8();
  sub_26A0E48F0(v69, &qword_28036CD30, &unk_26A426810);
  OUTLINED_FUNCTION_175();
  OUTLINED_FUNCTION_75();
  result._object = v110;
  result._countAndFlagsBits = v109;
  return result;
}

uint64_t type metadata accessor for SummaryItemButton()
{
  result = qword_280373860;
  if (!qword_280373860)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SummaryItemButton.text1.getter()
{
  v2 = OUTLINED_FUNCTION_104();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_41(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v7);
  v8 = OUTLINED_FUNCTION_51_1();
  v9 = type metadata accessor for _ProtoTextProperty(v8);
  v10 = OUTLINED_FUNCTION_12(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_18();
  v15 = v14 - v13;
  v16 = *(v0 + *(type metadata accessor for _ProtoSummaryItem_Button(0) + 20));
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_54_1();
  v17 = OUTLINED_FUNCTION_107();
  OUTLINED_FUNCTION_37(v17, v18, v9);
  if (v19)
  {
    *v15 = MEMORY[0x277D84F90];
    *(v15 + 8) = 0;
    v20 = v15 + v9[7];
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    v21 = v9[8];
    v22 = type metadata accessor for _ProtoActionProperty();
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v23, v24, v25, v22);
    v26 = v9[9];
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v27, v28, v29, v22);
    v30 = OUTLINED_FUNCTION_107();
    OUTLINED_FUNCTION_37(v30, v31, v9);
    if (!v19)
    {
      sub_26A0E48F0(v1, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    sub_26A3C834C();
  }

  return sub_26A3C834C();
}

uint64_t SummaryItemButton.button1.getter()
{
  v2 = OUTLINED_FUNCTION_104();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_41(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v7);
  v8 = OUTLINED_FUNCTION_51_1();
  v9 = type metadata accessor for _ProtoButton(v8);
  v10 = OUTLINED_FUNCTION_12(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_18();
  v15 = v14 - v13;
  v16 = *(v0 + *(type metadata accessor for _ProtoSummaryItem_Button(0) + 20));
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_54_1();
  v17 = OUTLINED_FUNCTION_107();
  OUTLINED_FUNCTION_37(v17, v18, v9);
  if (v19)
  {
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    v20 = *(v9 + 20);
    if (qword_28036C428 != -1)
    {
      OUTLINED_FUNCTION_60_4();
    }

    *(v15 + v20) = qword_280371710;
    v21 = OUTLINED_FUNCTION_107();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v21, v22, v9);

    if (EnumTagSinglePayload != 1)
    {
      sub_26A0E48F0(v1, &qword_28036EC48, &unk_26A4385C0);
    }
  }

  else
  {
    sub_26A3C834C();
  }

  return sub_26A3C834C();
}

void sub_26A3C4634()
{
  OUTLINED_FUNCTION_76();
  v3 = v2;
  v5 = v4;
  v6 = type metadata accessor for _ProtoButton(0);
  v7 = OUTLINED_FUNCTION_12(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_18();
  v28 = v11 - v10;
  v12 = OUTLINED_FUNCTION_104();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(v12, v13);
  v15 = OUTLINED_FUNCTION_41(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_14_1();
  MEMORY[0x28223BE20](v18);
  v19 = OUTLINED_FUNCTION_84();
  v20 = type metadata accessor for _ProtoSummaryItem_Button(v19);
  OUTLINED_FUNCTION_241(v20);
  v21 = *v3;
  OUTLINED_FUNCTION_23_4();
  OUTLINED_FUNCTION_127_0();
  v22 = OUTLINED_FUNCTION_51_0();
  sub_26A0E48F0(v22, v23, &unk_26A4385C0);
  if (v0 != 1)
  {
    OUTLINED_FUNCTION_258();
    OUTLINED_FUNCTION_38_0();
    if (v24)
    {
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      v25 = *(v6 + 20);
      if (qword_28036C428 != -1)
      {
        OUTLINED_FUNCTION_60_4();
      }

      *(v28 + v25) = qword_280371710;
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v1, 1, v6);

      if (EnumTagSinglePayload != 1)
      {
        sub_26A0E48F0(v1, &qword_28036EC48, &unk_26A4385C0);
      }
    }

    else
    {
      sub_26A3C834C();
    }

    sub_26A3C834C();
    v3 = 0;
  }

  v27 = type metadata accessor for Button();
  __swift_storeEnumTagSinglePayload(v5, v3, 1, v27);
  OUTLINED_FUNCTION_75();
}

void sub_26A3C4844()
{
  OUTLINED_FUNCTION_76();
  v3 = v2;
  v5 = OUTLINED_FUNCTION_239(v4);
  v6 = type metadata accessor for _ProtoMultilineTextProperty(v5);
  v7 = OUTLINED_FUNCTION_12(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_152_0();
  v10 = OUTLINED_FUNCTION_104();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(v10, v11);
  v13 = OUTLINED_FUNCTION_41(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_14_1();
  MEMORY[0x28223BE20](v16);
  v17 = OUTLINED_FUNCTION_84();
  v18 = type metadata accessor for _ProtoSummaryItem_Button(v17);
  OUTLINED_FUNCTION_241(v18);
  v19 = *v3;
  OUTLINED_FUNCTION_23_4();
  OUTLINED_FUNCTION_127_0();
  v20 = OUTLINED_FUNCTION_51_0();
  sub_26A0E48F0(v20, v21, &unk_26A4273F0);
  if (v0 != 1)
  {
    OUTLINED_FUNCTION_258();
    OUTLINED_FUNCTION_38_0();
    if (v22)
    {
      OUTLINED_FUNCTION_161_0(MEMORY[0x277D84F90]);
      v23 = *(v6 + 32);
      v24 = type metadata accessor for _ProtoActionProperty();
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v25, v26, v27, v24);
      v28 = *(v6 + 36);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v29, v30, v31, v24);
      OUTLINED_FUNCTION_38_0();
      if (!v22)
      {
        sub_26A0E48F0(v1, &qword_28036CAE0, &unk_26A4273F0);
      }
    }

    else
    {
      OUTLINED_FUNCTION_73_14();
    }

    OUTLINED_FUNCTION_72_9();
    v3 = 0;
  }

  v32 = type metadata accessor for MultilineTextProperty(0);
  __swift_storeEnumTagSinglePayload(v33, v3, 1, v32);
  OUTLINED_FUNCTION_75();
}

void SummaryItemButton.text4.getter()
{
  OUTLINED_FUNCTION_76();
  v4 = OUTLINED_FUNCTION_239(v3);
  v5 = type metadata accessor for _ProtoTextProperty(v4);
  v6 = OUTLINED_FUNCTION_12(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_152_0();
  v9 = OUTLINED_FUNCTION_104();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
  v12 = OUTLINED_FUNCTION_41(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_14_1();
  MEMORY[0x28223BE20](v15);
  v16 = OUTLINED_FUNCTION_84();
  v17 = type metadata accessor for _ProtoSummaryItem_Button(v16);
  OUTLINED_FUNCTION_241(v17);
  OUTLINED_FUNCTION_23_4();
  OUTLINED_FUNCTION_127_0();
  v18 = OUTLINED_FUNCTION_51_0();
  sub_26A0E48F0(v18, v19, &unk_26A425BF0);
  if (v0 != 1)
  {
    OUTLINED_FUNCTION_258();
    OUTLINED_FUNCTION_38_0();
    if (v20)
    {
      OUTLINED_FUNCTION_161_0(MEMORY[0x277D84F90]);
      v21 = *(v5 + 32);
      v22 = type metadata accessor for _ProtoActionProperty();
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v23, v24, v25, v22);
      v26 = *(v5 + 36);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v27, v28, v29, v22);
      OUTLINED_FUNCTION_38_0();
      if (!v20)
      {
        sub_26A0E48F0(v1, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      OUTLINED_FUNCTION_73_14();
    }

    OUTLINED_FUNCTION_72_9();
    v2 = 0;
  }

  v30 = type metadata accessor for TextProperty(0);
  __swift_storeEnumTagSinglePayload(v31, v2, 1, v30);
  OUTLINED_FUNCTION_75();
}

void SummaryItemButton.thumbnail.getter()
{
  OUTLINED_FUNCTION_76();
  OUTLINED_FUNCTION_239(v3);
  v4 = type metadata accessor for _ProtoVisualProperty();
  v5 = OUTLINED_FUNCTION_12(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_152_0();
  v8 = OUTLINED_FUNCTION_104();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
  v11 = OUTLINED_FUNCTION_41(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_14_1();
  MEMORY[0x28223BE20](v14);
  v15 = OUTLINED_FUNCTION_84();
  v16 = type metadata accessor for _ProtoSummaryItem_Button(v15);
  OUTLINED_FUNCTION_241(v16);
  OUTLINED_FUNCTION_23_4();
  OUTLINED_FUNCTION_127_0();
  v17 = OUTLINED_FUNCTION_51_0();
  sub_26A0E48F0(v17, v18, &unk_26A426430);
  if (v0 != 1)
  {
    OUTLINED_FUNCTION_258();
    OUTLINED_FUNCTION_38_0();
    if (v19)
    {
      OUTLINED_FUNCTION_161_0(MEMORY[0x277D84F90]);
      v20 = *(v4 + 32);
      v21 = type metadata accessor for _ProtoActionProperty();
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v22, v23, v24, v21);
      v25 = *(v4 + 36);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v26, v27, v28, v21);
      OUTLINED_FUNCTION_38_0();
      if (!v19)
      {
        sub_26A0E48F0(v1, &qword_28036CAE8, &unk_26A426430);
      }
    }

    else
    {
      OUTLINED_FUNCTION_73_14();
    }

    OUTLINED_FUNCTION_72_9();
    v2 = 0;
  }

  v29 = type metadata accessor for VisualProperty();
  __swift_storeEnumTagSinglePayload(v30, v2, 1, v29);
  OUTLINED_FUNCTION_75();
}

void SummaryItemButton.action.getter()
{
  OUTLINED_FUNCTION_76();
  OUTLINED_FUNCTION_239(v4);
  v5 = type metadata accessor for _ProtoActionProperty();
  v6 = OUTLINED_FUNCTION_12(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_152_0();
  v9 = OUTLINED_FUNCTION_104();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
  v12 = OUTLINED_FUNCTION_41(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_14_1();
  MEMORY[0x28223BE20](v15);
  v16 = OUTLINED_FUNCTION_84();
  v17 = type metadata accessor for _ProtoSummaryItem_Button(v16);
  OUTLINED_FUNCTION_241(v17);
  OUTLINED_FUNCTION_23_4();
  OUTLINED_FUNCTION_127_0();
  v18 = OUTLINED_FUNCTION_51_0();
  sub_26A0E48F0(v18, v19, &off_26A427400);
  if (v0 != 1)
  {
    OUTLINED_FUNCTION_258();
    OUTLINED_FUNCTION_38_0();
    if (v20)
    {
      *v3 = MEMORY[0x277D84F90];
      v3[1] = 0;
      v3[2] = 0xE000000000000000;
      v21 = v3 + *(v5 + 24);
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      OUTLINED_FUNCTION_38_0();
      if (!v20)
      {
        sub_26A0E48F0(v1, &off_28036C7C0, &off_26A427400);
      }
    }

    else
    {
      OUTLINED_FUNCTION_73_14();
    }

    sub_26A3C834C();
    v2 = 0;
  }

  v22 = type metadata accessor for ActionProperty();
  __swift_storeEnumTagSinglePayload(v23, v2, 1, v22);
  OUTLINED_FUNCTION_75();
}

uint64_t SummaryItemButton.componentName.getter()
{
  v1 = (*(v0 + *(type metadata accessor for _ProtoSummaryItem_Button(0) + 20)) + OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_ButtonP33_517B9946414782DAF24306F75BD7687D13_StorageClass__componentName);
  OUTLINED_FUNCTION_142();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t SummaryItemButton.linkIdentifier.getter()
{
  v1 = (*(v0 + *(type metadata accessor for _ProtoSummaryItem_Button(0) + 20)) + OBJC_IVAR____TtCV10SnippetKit24_ProtoSummaryItem_ButtonP33_517B9946414782DAF24306F75BD7687D13_StorageClass__linkIdentifier);
  OUTLINED_FUNCTION_142();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

void _ProtoSummaryItem_Button.redactedProto.getter()
{
  OUTLINED_FUNCTION_76();
  v2 = v1;
  v258 = type metadata accessor for _ProtoActionProperty();
  v3 = OUTLINED_FUNCTION_12(v258);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_49(v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  v9 = OUTLINED_FUNCTION_41(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_49(v14);
  v256 = type metadata accessor for _ProtoVisualProperty();
  v15 = OUTLINED_FUNCTION_12(v256);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_49(v19);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  v21 = OUTLINED_FUNCTION_41(v20);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_49(v26);
  v255 = type metadata accessor for _ProtoMultilineTextProperty(0);
  v27 = OUTLINED_FUNCTION_12(v255);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_49(v33);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  v35 = OUTLINED_FUNCTION_41(v34);
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_49(v42);
  v254 = type metadata accessor for _ProtoButton(0);
  v43 = OUTLINED_FUNCTION_12(v254);
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_49(v51);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036EC48, &unk_26A4385C0);
  v53 = OUTLINED_FUNCTION_41(v52);
  v55 = *(v54 + 64);
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v61);
  v62 = OUTLINED_FUNCTION_84();
  v63 = type metadata accessor for _ProtoTextProperty(v62);
  v64 = OUTLINED_FUNCTION_12(v63);
  v66 = *(v65 + 64);
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v68);
  MEMORY[0x28223BE20](v69);
  v71 = &v241 - v70;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  v73 = OUTLINED_FUNCTION_41(v72);
  v75 = *(v74 + 64);
  MEMORY[0x28223BE20](v73);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v76);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v77);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v78);
  v80 = &v241 - v79;
  MEMORY[0x28223BE20](v81);
  v83 = &v241 - v82;
  OUTLINED_FUNCTION_10_52();
  sub_26A3C82F8();
  v84 = *(type metadata accessor for _ProtoSummaryItem_Button(0) + 20);
  v259 = v2;
  v260 = v84;
  v85 = *(v2 + v84);
  OUTLINED_FUNCTION_142();
  sub_26A10FD9C();
  v257 = v63;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v83, 1, v63);
  sub_26A0E48F0(v83, &qword_28036C7B8, &unk_26A425BF0);
  if (EnumTagSinglePayload != 1)
  {
    sub_26A10FD9C();
    v87 = OUTLINED_FUNCTION_116();
    v88 = v257;
    OUTLINED_FUNCTION_37(v87, v89, v257);
    if (v90)
    {
      *v71 = MEMORY[0x277D84F90];
      *(v71 + 4) = 0;
      v91 = &v71[v88[7]];
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      v92 = v88[8];
      OUTLINED_FUNCTION_92();
      OUTLINED_FUNCTION_55_14(v93, v94, v95);
      v96 = v88[9];
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v97, v98, v99, EnumTagSinglePayload);
      v100 = OUTLINED_FUNCTION_116();
      OUTLINED_FUNCTION_37(v100, v101, v88);
      v102 = v259;
      if (!v90)
      {
        sub_26A0E48F0(v80, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      sub_26A3C834C();
      v102 = v259;
    }

    _ProtoTextProperty.redactedProto.getter();
    OUTLINED_FUNCTION_27_27();
    sub_26A3C7EC0(v71, v103);
    v104 = v260;
    v105 = *(v102 + v260);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v85 = *(v102 + v104);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v107 = type metadata accessor for _ProtoSummaryItem_Button._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v107);
      OUTLINED_FUNCTION_25_30();
      v85 = v108;
      *(v102 + v104) = v108;
    }

    OUTLINED_FUNCTION_129(v275);
    sub_26A3C834C();
    v109 = OUTLINED_FUNCTION_95_0();
    __swift_storeEnumTagSinglePayload(v109, v110, v111, v88);
    OUTLINED_FUNCTION_211();
    OUTLINED_FUNCTION_256();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142();
  sub_26A10FD9C();
  v112 = v254;
  LODWORD(v113) = __swift_getEnumTagSinglePayload(v0, 1, v254);
  OUTLINED_FUNCTION_162_0(v0);
  if (v113 != 1)
  {
    v114 = v241;
    sub_26A10FD9C();
    v115 = OUTLINED_FUNCTION_107();
    OUTLINED_FUNCTION_37(v115, v116, v112);
    v117 = v260;
    if (v90)
    {
      v120 = v242;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      OUTLINED_FUNCTION_47_18();
      LODWORD(v113) = v243;
      if (!v90)
      {
        OUTLINED_FUNCTION_60_4();
      }

      *(v120 + v85) = qword_280371710;
      v118 = OUTLINED_FUNCTION_107();
      OUTLINED_FUNCTION_57_14(v118, v119);
      if (v85 != 1)
      {
        sub_26A0E48F0(v114, &qword_28036EC48, &unk_26A4385C0);
      }
    }

    else
    {
      v120 = v242;
      sub_26A3C834C();
      LODWORD(v113) = v243;
    }

    _ProtoButton.redactedProto.getter();
    OUTLINED_FUNCTION_8_40();
    sub_26A3C7EC0(v120, v121);
    v122 = v259;
    v123 = *(v259 + v117);
    v124 = swift_isUniquelyReferenced_nonNull_native();
    v85 = *(v122 + v117);
    if ((v124 & 1) == 0)
    {
      v125 = type metadata accessor for _ProtoSummaryItem_Button._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v125);
      OUTLINED_FUNCTION_25_30();
      v85 = v126;
      *(v122 + v117) = v126;
    }

    OUTLINED_FUNCTION_129(v278);
    sub_26A3C834C();
    v127 = OUTLINED_FUNCTION_95_0();
    __swift_storeEnumTagSinglePayload(v127, v128, v129, v112);
    OUTLINED_FUNCTION_211();
    OUTLINED_FUNCTION_256();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_19_27(&v269);
  v130 = OUTLINED_FUNCTION_107();
  __swift_getEnumTagSinglePayload(v130, v131, v112);
  OUTLINED_FUNCTION_23_37();
  v132 = v259;
  if (v113 != 1)
  {
    v133 = v244;
    sub_26A10FD9C();
    OUTLINED_FUNCTION_37(v133, 1, v112);
    if (v90)
    {
      v113 = v245;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      OUTLINED_FUNCTION_47_18();
      if (!v90)
      {
        OUTLINED_FUNCTION_60_4();
      }

      *(v113 + v85) = qword_280371710;
      OUTLINED_FUNCTION_57_14(v133, 1);
      if (v85 != 1)
      {
        sub_26A0E48F0(v133, &qword_28036EC48, &unk_26A4385C0);
      }
    }

    else
    {
      v113 = v245;
      sub_26A3C834C();
    }

    _ProtoButton.redactedProto.getter();
    OUTLINED_FUNCTION_8_40();
    sub_26A3C7EC0(v113, v134);
    v135 = v260;
    v136 = *(v132 + v260);
    v137 = swift_isUniquelyReferenced_nonNull_native();
    v85 = *(v132 + v135);
    if ((v137 & 1) == 0)
    {
      v138 = type metadata accessor for _ProtoSummaryItem_Button._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v138);
      OUTLINED_FUNCTION_25_30();
      v85 = v139;
      *(v132 + v135) = v139;
    }

    OUTLINED_FUNCTION_129(v278);
    sub_26A3C834C();
    v140 = OUTLINED_FUNCTION_95_0();
    __swift_storeEnumTagSinglePayload(v140, v141, v142, v112);
    OUTLINED_FUNCTION_211();
    OUTLINED_FUNCTION_256();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142();
  v143 = &unk_26A4385C0;
  OUTLINED_FUNCTION_19_27(&v270);
  v144 = OUTLINED_FUNCTION_107();
  __swift_getEnumTagSinglePayload(v144, v145, v112);
  OUTLINED_FUNCTION_23_37();
  if (v113 == 1)
  {
    v146 = v255;
  }

  else
  {
    v147 = v246;
    sub_26A10FD9C();
    OUTLINED_FUNCTION_37(v147, 1, v112);
    if (v90)
    {
      v143 = v247;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      OUTLINED_FUNCTION_47_18();
      LODWORD(v113) = v248;
      if (!v90)
      {
        OUTLINED_FUNCTION_60_4();
      }

      *&v143[v85] = qword_280371710;
      OUTLINED_FUNCTION_57_14(v147, 1);
      v146 = v255;
      if (v85 != 1)
      {
        sub_26A0E48F0(v147, &qword_28036EC48, &unk_26A4385C0);
      }
    }

    else
    {
      OUTLINED_FUNCTION_129(&v257);
      sub_26A3C834C();
      v146 = v255;
      LODWORD(v113) = v248;
    }

    _ProtoButton.redactedProto.getter();
    OUTLINED_FUNCTION_8_40();
    sub_26A3C7EC0(v143, v148);
    v149 = v260;
    v150 = *(v132 + v260);
    v151 = swift_isUniquelyReferenced_nonNull_native();
    v85 = *(v132 + v149);
    if ((v151 & 1) == 0)
    {
      v152 = type metadata accessor for _ProtoSummaryItem_Button._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v152);
      OUTLINED_FUNCTION_25_30();
      v85 = v153;
      *(v132 + v149) = v153;
    }

    OUTLINED_FUNCTION_129(v278);
    sub_26A3C834C();
    v154 = OUTLINED_FUNCTION_95_0();
    __swift_storeEnumTagSinglePayload(v154, v155, v156, v112);
    OUTLINED_FUNCTION_211();
    OUTLINED_FUNCTION_256();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_19_27(&v271);
  v157 = OUTLINED_FUNCTION_107();
  __swift_getEnumTagSinglePayload(v157, v158, v146);
  OUTLINED_FUNCTION_23_37();
  v159 = v260;
  if (v113 != 1)
  {
    OUTLINED_FUNCTION_129(&v259);
    sub_26A10FD9C();
    OUTLINED_FUNCTION_17_3(&unk_26A4273F0);
    if (v90)
    {
      OUTLINED_FUNCTION_37_15(MEMORY[0x277D84F90]);
      v160 = OUTLINED_FUNCTION_44_0(*(v146 + 32));
      OUTLINED_FUNCTION_55_14(v160, v161, v162);
      v163 = OUTLINED_FUNCTION_44_0(*(v146 + 36));
      __swift_storeEnumTagSinglePayload(v163, v164, v165, &qword_28036CAE0);
      OUTLINED_FUNCTION_17_3(&unk_26A4273F0);
      if (!v90)
      {
        sub_26A0E48F0(&unk_26A4273F0, &qword_28036CAE0, &unk_26A4273F0);
      }
    }

    else
    {
      OUTLINED_FUNCTION_59_17(&v260);
    }

    _ProtoMultilineTextProperty.redactedProto.getter();
    OUTLINED_FUNCTION_34_15();
    v166 = *(v132 + v159);
    v167 = swift_isUniquelyReferenced_nonNull_native();
    v85 = *(v132 + v159);
    if ((v167 & 1) == 0)
    {
      v168 = type metadata accessor for _ProtoSummaryItem_Button._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v168);
      OUTLINED_FUNCTION_25_30();
      OUTLINED_FUNCTION_66_11(v169);
    }

    OUTLINED_FUNCTION_129(&v274);
    sub_26A3C834C();
    v170 = OUTLINED_FUNCTION_95_0();
    __swift_storeEnumTagSinglePayload(v170, v171, v172, v146);
    OUTLINED_FUNCTION_211();
    OUTLINED_FUNCTION_256();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_19_27(&v272);
  v173 = OUTLINED_FUNCTION_107();
  __swift_getEnumTagSinglePayload(v173, v174, v146);
  OUTLINED_FUNCTION_23_37();
  if (v113 == 1)
  {
    v175 = v257;
  }

  else
  {
    OUTLINED_FUNCTION_129(&v261);
    sub_26A10FD9C();
    OUTLINED_FUNCTION_17_3(&unk_26A4273F0);
    v175 = v257;
    if (v90)
    {
      OUTLINED_FUNCTION_37_15(MEMORY[0x277D84F90]);
      v176 = OUTLINED_FUNCTION_44_0(*(v146 + 32));
      OUTLINED_FUNCTION_55_14(v176, v177, v178);
      v179 = OUTLINED_FUNCTION_44_0(*(v146 + 36));
      __swift_storeEnumTagSinglePayload(v179, v180, v181, &qword_28036CAE0);
      OUTLINED_FUNCTION_17_3(&unk_26A4273F0);
      if (!v90)
      {
        sub_26A0E48F0(&unk_26A4273F0, &qword_28036CAE0, &unk_26A4273F0);
      }
    }

    else
    {
      OUTLINED_FUNCTION_59_17(&v262);
    }

    _ProtoMultilineTextProperty.redactedProto.getter();
    OUTLINED_FUNCTION_34_15();
    v182 = *(v132 + v159);
    v183 = swift_isUniquelyReferenced_nonNull_native();
    v85 = *(v132 + v159);
    if ((v183 & 1) == 0)
    {
      v184 = type metadata accessor for _ProtoSummaryItem_Button._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v184);
      OUTLINED_FUNCTION_25_30();
      OUTLINED_FUNCTION_66_11(v185);
    }

    OUTLINED_FUNCTION_129(&v274);
    sub_26A3C834C();
    v186 = OUTLINED_FUNCTION_95_0();
    __swift_storeEnumTagSinglePayload(v186, v187, v188, v146);
    OUTLINED_FUNCTION_211();
    OUTLINED_FUNCTION_256();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_19_27(&v273);
  v189 = OUTLINED_FUNCTION_107();
  __swift_getEnumTagSinglePayload(v189, v190, v175);
  v191 = v175;
  OUTLINED_FUNCTION_23_37();
  if (v175 == 1)
  {
    v192 = v258;
    v193 = v256;
  }

  else
  {
    v194 = v249;
    sub_26A10FD9C();
    OUTLINED_FUNCTION_17_3(v194);
    if (v90)
    {
      OUTLINED_FUNCTION_37_15(MEMORY[0x277D84F90]);
      v195 = OUTLINED_FUNCTION_44_0(*(v191 + 32));
      v192 = v258;
      __swift_storeEnumTagSinglePayload(v195, v196, v197, v258);
      v198 = OUTLINED_FUNCTION_44_0(*(v191 + 36));
      __swift_storeEnumTagSinglePayload(v198, v199, v200, v192);
      OUTLINED_FUNCTION_17_3(v194);
      if (!v90)
      {
        sub_26A0E48F0(v194, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      OUTLINED_FUNCTION_59_17(&v263);
      v192 = v258;
    }

    _ProtoTextProperty.redactedProto.getter();
    OUTLINED_FUNCTION_27_27();
    sub_26A3C7EC0(v85, v201);
    v202 = *(v132 + v159);
    v203 = swift_isUniquelyReferenced_nonNull_native();
    v85 = *(v132 + v159);
    if ((v203 & 1) == 0)
    {
      v204 = type metadata accessor for _ProtoSummaryItem_Button._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v204);
      OUTLINED_FUNCTION_25_30();
      OUTLINED_FUNCTION_66_11(v205);
    }

    v193 = v256;
    OUTLINED_FUNCTION_129(v275);
    sub_26A3C834C();
    v206 = OUTLINED_FUNCTION_95_0();
    __swift_storeEnumTagSinglePayload(v206, v207, v208, v191);
    OUTLINED_FUNCTION_211();
    OUTLINED_FUNCTION_256();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_30_15(&v276);
  v209 = v193;
  v210 = __swift_getEnumTagSinglePayload(v191, 1, v193);
  OUTLINED_FUNCTION_162_0(v191);
  if (v210 != 1)
  {
    OUTLINED_FUNCTION_129(&v264);
    sub_26A10FD9C();
    v211 = OUTLINED_FUNCTION_116();
    OUTLINED_FUNCTION_37(v211, v212, v209);
    if (v90)
    {
      v85 = v250;
      *v250 = MEMORY[0x277D84F90];
      *(v85 + 8) = 0;
      v213 = v85 + v209[7];
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      v214 = OUTLINED_FUNCTION_44_0(v209[8]);
      __swift_storeEnumTagSinglePayload(v214, v215, v216, v192);
      v217 = OUTLINED_FUNCTION_44_0(v209[9]);
      __swift_storeEnumTagSinglePayload(v217, v218, v219, v192);
      v220 = OUTLINED_FUNCTION_116();
      OUTLINED_FUNCTION_37(v220, v221, v209);
      if (!v90)
      {
        sub_26A0E48F0(&unk_26A426430, &qword_28036CAE8, &unk_26A426430);
      }
    }

    else
    {
      OUTLINED_FUNCTION_59_17(&v265);
    }

    _ProtoVisualProperty.redactedProto.getter();
    sub_26A3C7EC0(v85, type metadata accessor for _ProtoVisualProperty);
    v222 = *(v132 + v159);
    v223 = swift_isUniquelyReferenced_nonNull_native();
    v85 = *(v132 + v159);
    if ((v223 & 1) == 0)
    {
      v224 = type metadata accessor for _ProtoSummaryItem_Button._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v224);
      OUTLINED_FUNCTION_25_30();
      OUTLINED_FUNCTION_66_11(v225);
    }

    OUTLINED_FUNCTION_129(&v266);
    sub_26A3C834C();
    v226 = OUTLINED_FUNCTION_95_0();
    __swift_storeEnumTagSinglePayload(v226, v227, v228, v209);
    OUTLINED_FUNCTION_211();
    OUTLINED_FUNCTION_256();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_30_15(&v277);
  v229 = __swift_getEnumTagSinglePayload(v191, 1, v192);
  OUTLINED_FUNCTION_162_0(v191);
  if (v229 != 1)
  {
    v230 = v251;
    sub_26A10FD9C();
    OUTLINED_FUNCTION_37(v230, 1, v192);
    if (v90)
    {
      v85 = v252;
      *v252 = MEMORY[0x277D84F90];
      *(v85 + 8) = 0;
      *(v85 + 16) = 0xE000000000000000;
      v231 = v85 + *(v192 + 24);
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      OUTLINED_FUNCTION_37(v230, 1, v192);
      v232 = v253;
      if (!v90)
      {
        sub_26A0E48F0(v230, &off_28036C7C0, &off_26A427400);
      }
    }

    else
    {
      OUTLINED_FUNCTION_59_17(&v267);
      v232 = v253;
    }

    _s10SnippetKit14ActionPropertyV13redactedProtoAA01_fcD0Vvg_0(v232);
    sub_26A3C7EC0(v85, type metadata accessor for _ProtoActionProperty);
    v233 = *(v132 + v159);
    v234 = swift_isUniquelyReferenced_nonNull_native();
    v235 = *(v132 + v159);
    if ((v234 & 1) == 0)
    {
      v236 = type metadata accessor for _ProtoSummaryItem_Button._StorageClass(0);
      OUTLINED_FUNCTION_188_0(v236);
      sub_26A1B2A8C();
      *(v132 + v159) = v237;
    }

    OUTLINED_FUNCTION_129(&v268);
    sub_26A3C834C();
    v238 = OUTLINED_FUNCTION_95_0();
    __swift_storeEnumTagSinglePayload(v238, v239, v240, v192);
    OUTLINED_FUNCTION_211();
    sub_26A10CF40();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t SummaryItemButton.init(text1:button1:button2:button3:text2:text3:text4:thumbnail:action:componentName:linkIdentifier:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  type metadata accessor for _ProtoSummaryItem_Button(0);
  OUTLINED_FUNCTION_9_43();
  sub_26A3C81D0(v12, v13);
  OUTLINED_FUNCTION_59_9();

  sub_26A0E48F0(a9, &qword_28036CAF8, &unk_26A426D30);
  sub_26A0E48F0(a8, &qword_28036CB00, &unk_26A426450);
  sub_26A0E48F0(a7, &qword_28036CB08, &unk_26A428720);
  OUTLINED_FUNCTION_187_0(a6);
  OUTLINED_FUNCTION_187_0(a5);
  OUTLINED_FUNCTION_187_0(a4);
  OUTLINED_FUNCTION_187_0(a3);
  sub_26A3C7EC0(a2, type metadata accessor for Button);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_26A3C6804(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v131 = a8;
  v129 = a7;
  v126 = a6;
  v123 = a5;
  v120 = a3;
  v121 = a4;
  v119 = a1;
  v15 = type metadata accessor for ActionProperty();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v117 = &v104 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v135 = &v104 - v20;
  v134 = type metadata accessor for _ProtoActionProperty();
  v21 = *(*(v134 - 8) + 64);
  MEMORY[0x28223BE20](v134);
  v111 = &v104 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v112 = &v104 - v24;
  v25 = type metadata accessor for VisualProperty();
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v116 = &v104 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28 - 8);
  v133 = &v104 - v30;
  v132 = type metadata accessor for _ProtoVisualProperty();
  v31 = *(*(v132 - 8) + 64);
  MEMORY[0x28223BE20](v132);
  v109 = &v104 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v110 = &v104 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  v36 = *(*(v35 - 8) + 64);
  MEMORY[0x28223BE20](v35 - 8);
  v130 = &v104 - v37;
  v38 = type metadata accessor for MultilineTextProperty(0);
  v39 = *(*(v38 - 8) + 64);
  MEMORY[0x28223BE20](v38 - 8);
  v125 = &v104 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  v42 = *(*(v41 - 8) + 64);
  MEMORY[0x28223BE20](v41 - 8);
  v128 = &v104 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44);
  v122 = &v104 - v45;
  v124 = type metadata accessor for _ProtoMultilineTextProperty(0);
  v46 = *(*(v124 - 8) + 64);
  MEMORY[0x28223BE20](v124);
  v106 = &v104 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v48);
  v115 = &v104 - v49;
  MEMORY[0x28223BE20](v50);
  v105 = &v104 - v51;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CD38, &qword_26A437B70);
  v53 = *(*(v52 - 8) + 64);
  MEMORY[0x28223BE20](v52 - 8);
  v118 = &v104 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v55);
  v57 = &v104 - v56;
  v58 = type metadata accessor for Button();
  v59 = *(*(v58 - 8) + 64);
  MEMORY[0x28223BE20](v58);
  v113 = &v104 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v61);
  v63 = &v104 - v62;
  v64 = type metadata accessor for _ProtoButton(0);
  v65 = *(*(v64 - 8) + 64);
  MEMORY[0x28223BE20](v64 - 8);
  v127 = type metadata accessor for _ProtoTextProperty(0);
  v66 = *(*(v127 - 8) + 64);
  MEMORY[0x28223BE20](v127);
  v108 = &v104 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v68);
  v70 = &v104 - v69;
  v71 = type metadata accessor for TextProperty(0);
  v72 = *(*(v71 - 8) + 64);
  MEMORY[0x28223BE20](v71 - 8);
  v74 = &v104 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = a2[3];
  v76 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v75);
  (*(v76 + 8))(v75, v76);
  v114 = v74;
  sub_26A3C834C();
  v107 = v70;
  _ProtoSummaryItem_Button.text1.setter();
  sub_26A3C82F8();
  _ProtoSummaryItem_Button.button1.setter();
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v57, 1, v58) == 1)
  {
    sub_26A0E48F0(v57, &qword_28036CD38, &qword_26A437B70);
  }

  else
  {
    sub_26A3C834C();
    sub_26A3C82F8();
    _ProtoSummaryItem_Button.button2.setter();
    sub_26A3C7EC0(v63, type metadata accessor for Button);
  }

  v77 = v118;
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v77, 1, v58) == 1)
  {
    sub_26A0E48F0(v77, &qword_28036CD38, &qword_26A437B70);
  }

  else
  {
    v78 = v113;
    sub_26A3C834C();
    sub_26A3C82F8();
    _ProtoSummaryItem_Button.button3.setter();
    sub_26A3C7EC0(v78, type metadata accessor for Button);
  }

  v79 = v124;
  sub_26A10FD9C();
  v80 = v137;
  if (v137)
  {
    v81 = v138;
    __swift_project_boxed_opaque_existential_1(&v136, v137);
    (*(v81 + 8))(v80, v81);
    v82 = v122;
    sub_26A3C834C();
    __swift_storeEnumTagSinglePayload(v82, 0, 1, v79);
    __swift_destroy_boxed_opaque_existential_1(&v136);
    if (__swift_getEnumTagSinglePayload(v82, 1, v79) != 1)
    {
      v83 = v105;
      sub_26A3C834C();
      sub_26A3C82F8();
      _ProtoSummaryItem_Button.text2.setter();
      sub_26A3C7EC0(v83, type metadata accessor for _ProtoMultilineTextProperty);
      goto LABEL_12;
    }
  }

  else
  {
    sub_26A0E48F0(&v136, &qword_28036CB10, &unk_26A426460);
    v82 = v122;
    __swift_storeEnumTagSinglePayload(v122, 1, 1, v79);
  }

  sub_26A0E48F0(v82, &qword_28036CAE0, &unk_26A4273F0);
LABEL_12:
  sub_26A10FD9C();
  v84 = v137;
  if (v137)
  {
    v85 = v138;
    __swift_project_boxed_opaque_existential_1(&v136, v137);
    (*(v85 + 8))(v84, v85);
    v86 = v128;
    sub_26A3C834C();
    __swift_storeEnumTagSinglePayload(v86, 0, 1, v79);
    __swift_destroy_boxed_opaque_existential_1(&v136);
    if (__swift_getEnumTagSinglePayload(v86, 1, v79) != 1)
    {
      v87 = v106;
      sub_26A3C834C();
      sub_26A3C82F8();
      _ProtoSummaryItem_Button.text3.setter();
      sub_26A3C7EC0(v87, type metadata accessor for _ProtoMultilineTextProperty);
      goto LABEL_17;
    }
  }

  else
  {
    sub_26A0E48F0(&v136, &qword_28036CB10, &unk_26A426460);
    v86 = v128;
    __swift_storeEnumTagSinglePayload(v128, 1, 1, v79);
  }

  sub_26A0E48F0(v86, &qword_28036CAE0, &unk_26A4273F0);
LABEL_17:
  sub_26A10FD9C();
  v88 = v137;
  if (v137)
  {
    v89 = v138;
    __swift_project_boxed_opaque_existential_1(&v136, v137);
    (*(v89 + 8))(v88, v89);
    v90 = v130;
    sub_26A3C834C();
    v91 = v127;
    __swift_storeEnumTagSinglePayload(v90, 0, 1, v127);
    __swift_destroy_boxed_opaque_existential_1(&v136);
    if (__swift_getEnumTagSinglePayload(v90, 1, v91) != 1)
    {
      v92 = v108;
      sub_26A3C834C();
      sub_26A3C82F8();
      _ProtoSummaryItem_Button.text4.setter();
      sub_26A3C7EC0(v92, type metadata accessor for _ProtoTextProperty);
      goto LABEL_22;
    }
  }

  else
  {
    sub_26A0E48F0(&v136, &qword_28036CB08, &unk_26A428720);
    v90 = v130;
    __swift_storeEnumTagSinglePayload(v130, 1, 1, v127);
  }

  sub_26A0E48F0(v90, &qword_28036C7B8, &unk_26A425BF0);
LABEL_22:
  sub_26A10FD9C();
  v93 = v137;
  if (v137)
  {
    v94 = v138;
    __swift_project_boxed_opaque_existential_1(&v136, v137);
    (*(v94 + 8))(v93, v94);
    v95 = v133;
    sub_26A3C834C();
    v96 = v132;
    __swift_storeEnumTagSinglePayload(v95, 0, 1, v132);
    __swift_destroy_boxed_opaque_existential_1(&v136);
    if (__swift_getEnumTagSinglePayload(v95, 1, v96) != 1)
    {
      v97 = v110;
      sub_26A3C834C();
      sub_26A3C82F8();
      _ProtoSummaryItem_Button.thumbnail.setter();
      sub_26A3C7EC0(v97, type metadata accessor for _ProtoVisualProperty);
      goto LABEL_27;
    }
  }

  else
  {
    sub_26A0E48F0(&v136, &qword_28036CB00, &unk_26A426450);
    v95 = v133;
    __swift_storeEnumTagSinglePayload(v133, 1, 1, v132);
  }

  sub_26A0E48F0(v95, &qword_28036CAE8, &unk_26A426430);
LABEL_27:
  sub_26A10FD9C();
  v98 = v137;
  if (v137)
  {
    v99 = v138;
    __swift_project_boxed_opaque_existential_1(&v136, v137);
    (*(v99 + 8))(v98, v99);
    v100 = v135;
    sub_26A3C834C();
    v101 = v134;
    __swift_storeEnumTagSinglePayload(v100, 0, 1, v134);
    __swift_destroy_boxed_opaque_existential_1(&v136);
    if (__swift_getEnumTagSinglePayload(v100, 1, v101) != 1)
    {
      v102 = v112;
      sub_26A3C834C();
      sub_26A3C82F8();
      _ProtoSummaryItem_Button.action.setter();
      sub_26A3C7EC0(v102, type metadata accessor for _ProtoActionProperty);
      goto LABEL_32;
    }
  }

  else
  {
    sub_26A0E48F0(&v136, &qword_28036CAF8, &unk_26A426D30);
    v100 = v135;
    __swift_storeEnumTagSinglePayload(v135, 1, 1, v134);
  }

  sub_26A0E48F0(v100, &off_28036C7C0, &off_26A427400);
LABEL_32:

  result = _ProtoSummaryItem_Button.componentName.setter();
  if (a14)
  {

    return _ProtoSummaryItem_Button.linkIdentifier.setter();
  }

  return result;
}

void SummaryItemButton.init(text1:button1:button2:button3:text2:text3:thumbnail:action:componentName:)()
{
  OUTLINED_FUNCTION_76();
  v26 = v3;
  v27 = v4;
  v24 = v6;
  v25 = v5;
  v28 = v7;
  OUTLINED_FUNCTION_62_13(v8, v9, v10);
  v31 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CD38, &qword_26A437B70);
  v13 = OUTLINED_FUNCTION_41(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_51_9();
  MEMORY[0x28223BE20](v16);
  v17 = OUTLINED_FUNCTION_43_8();
  v18 = OUTLINED_FUNCTION_41(v17);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_70_10();
  OUTLINED_FUNCTION_31_21();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_104();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_54_14();
  sub_26A10FD9C();
  v35 = 0;
  memset(v34, 0, sizeof(v34));
  sub_26A10FD9C();
  sub_26A10FD9C();
  type metadata accessor for _ProtoSummaryItem_Button(0);
  OUTLINED_FUNCTION_32_21();
  OUTLINED_FUNCTION_9_43();
  sub_26A3C81D0(v21, v22);
  OUTLINED_FUNCTION_59_9();

  sub_26A0E48F0(v27, &qword_28036CAF8, &unk_26A426D30);
  sub_26A0E48F0(v26, &qword_28036CB00, &unk_26A426450);
  sub_26A0E48F0(v24, &qword_28036CB10, &unk_26A426460);
  sub_26A0E48F0(v25, &qword_28036CB10, &unk_26A426460);
  sub_26A0E48F0(v28, &qword_28036CD38, &qword_26A437B70);
  sub_26A0E48F0(v29, &qword_28036CD38, &qword_26A437B70);
  OUTLINED_FUNCTION_29_24();
  sub_26A3C7EC0(v30, v23);
  __swift_destroy_boxed_opaque_existential_1(v31);
  sub_26A0E48F0(&v32, &qword_28036CAF8, &unk_26A426D30);
  sub_26A0E48F0(&v33, &qword_28036CB00, &unk_26A426450);
  sub_26A0E48F0(v34, &qword_28036CB08, &unk_26A428720);
  sub_26A0E48F0(&v36, &qword_28036CB10, &unk_26A426460);
  sub_26A0E48F0(&v37, &qword_28036CB10, &unk_26A426460);
  sub_26A0E48F0(v0, &qword_28036CD38, &qword_26A437B70);
  sub_26A0E48F0(v1, &qword_28036CD38, &qword_26A437B70);
  sub_26A3C7EC0(v2, &qword_28036CB10);
  __swift_destroy_boxed_opaque_existential_1(v38);
  OUTLINED_FUNCTION_75();
}

void SummaryItemButton.init(text1:button1:button2:button3:text2:text3:thumbnail:action:)()
{
  OUTLINED_FUNCTION_76();
  v27 = v3;
  v28 = v4;
  v25 = v5;
  v26 = v6;
  v24 = v7;
  OUTLINED_FUNCTION_62_13(v8, v9, v10);
  v31 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CD38, &qword_26A437B70);
  v13 = OUTLINED_FUNCTION_41(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_51_9();
  MEMORY[0x28223BE20](v16);
  v17 = OUTLINED_FUNCTION_43_8();
  v18 = OUTLINED_FUNCTION_41(v17);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_70_10();
  OUTLINED_FUNCTION_31_21();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_104();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_54_14();
  OUTLINED_FUNCTION_54_14();
  v35 = 0;
  memset(v34, 0, sizeof(v34));
  sub_26A10FD9C();
  sub_26A10FD9C();
  type metadata accessor for _ProtoSummaryItem_Button(0);
  OUTLINED_FUNCTION_32_21();
  OUTLINED_FUNCTION_9_43();
  sub_26A3C81D0(v21, v22);
  OUTLINED_FUNCTION_59_9();
  sub_26A0E48F0(v28, &qword_28036CAF8, &unk_26A426D30);
  sub_26A0E48F0(v26, &qword_28036CB00, &unk_26A426450);
  sub_26A0E48F0(v24, &qword_28036CB10, &unk_26A426460);
  sub_26A0E48F0(v25, &qword_28036CB10, &unk_26A426460);
  sub_26A0E48F0(v27, &qword_28036CD38, &qword_26A437B70);
  sub_26A0E48F0(v29, &qword_28036CD38, &qword_26A437B70);
  OUTLINED_FUNCTION_29_24();
  sub_26A3C7EC0(v30, v23);
  __swift_destroy_boxed_opaque_existential_1(v31);
  sub_26A0E48F0(&v32, &qword_28036CAF8, &unk_26A426D30);
  sub_26A0E48F0(v33, &qword_28036CB00, &unk_26A426450);
  sub_26A0E48F0(v34, &qword_28036CB08, &unk_26A428720);
  sub_26A0E48F0(&v36, &qword_28036CB10, &unk_26A426460);
  sub_26A0E48F0(&v37, &qword_28036CB10, &unk_26A426460);
  sub_26A0E48F0(v0, &qword_28036CD38, &qword_26A437B70);
  sub_26A0E48F0(v1, &qword_28036CD38, &qword_26A437B70);
  sub_26A3C7EC0(v2, v33);
  __swift_destroy_boxed_opaque_existential_1(v38);
  OUTLINED_FUNCTION_75();
}

uint64_t sub_26A3C7EC0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_12(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t SummaryItemButton.componentProto.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for _ProtoSummaryItem_Button(0);
  v3 = OUTLINED_FUNCTION_41(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_18();
  v6 = type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v6);
  v10 = type metadata accessor for _ProtoResponse.Component(0);
  v11 = a1 + *(v10 + 20);
  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v12 = *(v10 + 24);
  type metadata accessor for _ProtoSeparators();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
  OUTLINED_FUNCTION_10_52();
  sub_26A3C82F8();
  sub_26A0E48F0(a1, &qword_28036C828, &unk_26A4276D0);
  OUTLINED_FUNCTION_30_17();
  sub_26A3C834C();
  OUTLINED_FUNCTION_175();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v6);
}

uint64_t SummaryItemButton.asSection()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB40, &qword_26A426510);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A426410;
  *(inited + 56) = type metadata accessor for SummaryItemButton();
  *(inited + 64) = &protocol witness table for SummaryItemButton;
  __swift_allocate_boxed_opaque_existential_1((inited + 32));
  OUTLINED_FUNCTION_26_34();
  sub_26A3C82F8();
  OUTLINED_FUNCTION_142();

  sub_26A10BF5C(v1);
  type metadata accessor for _ProtoResponse.Section(0);
  sub_26A3C81D0(&qword_28036CB48, type metadata accessor for _ProtoResponse.Section);
  sub_26A4249C4();

  swift_setDeallocating();
  return sub_26A10C358();
}

uint64_t sub_26A3C81D0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26A3C828C()
{
  result = type metadata accessor for _ProtoSummaryItem_Button(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26A3C82F8()
{
  OUTLINED_FUNCTION_131_0();
  v2 = v1(0);
  OUTLINED_FUNCTION_12(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_175();
  v6(v5);
  return v0;
}

uint64_t sub_26A3C834C()
{
  OUTLINED_FUNCTION_131_0();
  v2 = v1(0);
  OUTLINED_FUNCTION_12(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_175();
  v6(v5);
  return v0;
}