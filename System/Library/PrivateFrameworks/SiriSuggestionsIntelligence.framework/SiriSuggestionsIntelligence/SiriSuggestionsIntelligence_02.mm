unint64_t sub_1DA3C5B84(double a1)
{
  v2 = *(v1 + 16);
  v3 = *(v2 + 16);
  if (!v3)
  {
    return 0;
  }

  result = 0;
  v5 = v2 + 32;
  v6 = v3;
  while (1)
  {
    v7 = result + (v6 >> 1);
    if (__OFADD__(result, v6 >> 1))
    {
      break;
    }

    if (v7 >= v3)
    {
      goto LABEL_12;
    }

    v8 = v6 >> 1;
    if (*(v5 + 24 * v7) < a1)
    {
      result = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        goto LABEL_13;
      }

      v8 = v6 + ~v8;
    }

    v6 = v8;
    if (v8 <= 0)
    {
      return result;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

void *SiriSuggestionsIntelligence.ApproxInterpolation.deinit()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[8];

  v5 = v0[10];

  return v0;
}

uint64_t SiriSuggestionsIntelligence.ApproxInterpolation.__deallocating_deinit()
{
  SiriSuggestionsIntelligence.ApproxInterpolation.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 88, 7);
}

Swift::Double_optional __swiftcall SiriSuggestionsIntelligence.ApproxInverseFunction.getInv(for:)(Swift::Double a1)
{
  v2 = *(v1 + 16);
  v3 = sub_1DA3C5784(&qword_1ECBAF070, "¨", a1);
  result.value = v4;
  result.is_nil = v3;
  return result;
}

uint64_t static SiriSuggestionsIntelligence.ApproxInverseFunction.create(for:startingAt:endingAt:stepSize:interpolationMethod:addAdditionalSamples:)(uint64_t (*a1)(uint64_t, double), double a2, double a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(void))
{
  static SiriSuggestionsIntelligence.MathCommon.createSamples@Sendable (for:startingAt:endingAt:stepSize:)(a1, a2, a3, a4);
  a8();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF060, &qword_1DA42B510);
  swift_allocObject();

  v9 = sub_1DA3C545C();
  result = swift_allocObject();
  *(result + 16) = v9;
  return result;
}

uint64_t SiriSuggestionsIntelligence.ApproxInverseFunction.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t SiriSuggestionsIntelligence.ApproxInverseFunction.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t SiriSuggestionsIntelligence.Point.description.getter()
{
  MEMORY[0x1DA74D370](4028539, 0xE300000000000000);
  sub_1DA421E94();
  MEMORY[0x1DA74D370](4028716, 0xE300000000000000);
  sub_1DA421E94();
  MEMORY[0x1DA74D370](125, 0xE100000000000000);
  return 0;
}

uint64_t sub_1DA3C5F04()
{
  v1 = *v0;
  v2 = v0[1];
  return SiriSuggestionsIntelligence.Point.description.getter();
}

double sub_1DA3C5F0C(uint64_t a1)
{
  result = *a1;
  v2 = *(a1 + 8);
  return result;
}

void sub_1DA3C5F1C(uint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t *a3, uint64_t *a4, void (*a5)(double *, int64_t, double *))
{
  v10 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v10 = a2(v10);
  }

  v11 = *(v10 + 16);
  v12[0] = v10 + 32;
  v12[1] = v11;
  sub_1DA3C5FB8(v12, a3, a4, a5);
  *a1 = v10;
}

void sub_1DA3C5FB8(uint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(double *, int64_t, double *))
{
  v8 = a1[1];
  v9 = sub_1DA422344();
  if (v9 < v8)
  {
    if (v8 >= -1)
    {
      v10 = v9;
      v11 = v8 / 2;
      if (v8 <= 1)
      {
        v12 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
        v12 = sub_1DA421D74();
        *(v12 + 16) = v11;
      }

      v13[0] = (v12 + 32);
      v13[1] = v11;
      sub_1DA3C6140(v13, v14, a1, v10, a4);
      *(v12 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v8 < 0)
  {
    goto LABEL_12;
  }

  if (v8)
  {
    sub_1DA3C60CC(0, v8, 1, a1);
  }
}

void sub_1DA3C60CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = 24;
    v6 = *a4 + 24 * a3 - 24;
    v7 = a1 - a3;
    while (2)
    {
      v8 = *(v4 + a3 * v5);
      v9 = v6;
      do
      {
        if (v8 >= *v9)
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return;
        }

        OUTLINED_FUNCTION_6_6(v8);
      }

      while (!v10);
      ++a3;
      v6 += 24;
      --v7;
      if (a3 != a2)
      {
        continue;
      }

      break;
    }
  }
}

void sub_1DA3C6140(double **a1, uint64_t a2, uint64_t *a3, uint64_t a4, void (*a5)(double *, int64_t, double *))
{
  v6 = v5;
  v7 = a3[1];
  v88 = MEMORY[0x1E69E7CC0];
  if (v7 >= 1)
  {
    v8 = 0;
    v9 = MEMORY[0x1E69E7CC0];
    v83 = a4;
    while (1)
    {
      v10 = v8 + 1;
      if (v8 + 1 < v7)
      {
        v11 = *(*a3 + 24 * v10);
        v12 = (*a3 + 24 * v8);
        v13 = 24 * v8;
        v15 = *v12;
        v14 = v12 + 6;
        v16 = v15;
        v17 = v8 + 2;
        v18 = v11;
        while (1)
        {
          v19 = v17;
          if (++v10 >= v7)
          {
            break;
          }

          v20 = *v14;
          v14 += 3;
          v21 = (v11 < v16) ^ (v20 >= v18);
          ++v17;
          v18 = v20;
          if ((v21 & 1) == 0)
          {
            goto LABEL_9;
          }
        }

        v10 = v7;
LABEL_9:
        if (v11 < v16)
        {
          if (v10 < v8)
          {
            goto LABEL_108;
          }

          if (v8 < v10)
          {
            if (v7 >= v19)
            {
              v7 = v19;
            }

            v22 = 24 * v7;
            v23 = v10;
            v24 = v8;
            do
            {
              if (v24 != --v23)
              {
                v25 = *a3;
                if (!*a3)
                {
                  goto LABEL_113;
                }

                v26 = (v25 + v13);
                v27 = v25 + v22;
                v28 = *(v26 + 2);
                v29 = *v26;
                v30 = *(v27 - 8);
                *v26 = *(v27 - 24);
                *(v26 + 2) = v30;
                *(v27 - 24) = v29;
                *(v27 - 8) = v28;
              }

              ++v24;
              v22 -= 24;
              v13 += 24;
            }

            while (v24 < v23);
            v7 = a3[1];
          }
        }
      }

      if (v10 < v7)
      {
        if (__OFSUB__(v10, v8))
        {
          goto LABEL_107;
        }

        if (v10 - v8 < a4)
        {
          if (__OFADD__(v8, a4))
          {
            goto LABEL_109;
          }

          if (v8 + a4 < v7)
          {
            v7 = v8 + a4;
          }

          if (v7 < v8)
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

          if (v10 != v7)
          {
            v31 = *a3;
            v32 = *a3 + 24 * v10 - 24;
            v33 = v8 - v10;
            do
            {
              v34 = *(v31 + 24 * v10);
              v35 = v32;
              do
              {
                if (v34 >= *v35)
                {
                  break;
                }

                if (!v31)
                {
                  goto LABEL_111;
                }

                OUTLINED_FUNCTION_6_6(v34);
              }

              while (!v36);
              ++v10;
              v32 += 24;
              --v33;
            }

            while (v10 != v7);
            v10 = v7;
          }
        }
      }

      if (v10 < v8)
      {
        goto LABEL_106;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1DA3A54F8(0, v9[2] + 1, 1, v9);
        v9 = v81;
      }

      v38 = v9[2];
      v37 = v9[3];
      v39 = v38 + 1;
      if (v38 >= v37 >> 1)
      {
        sub_1DA3A54F8(v37 > 1, v38 + 1, 1, v9);
        v9 = v82;
      }

      v9[2] = v39;
      v40 = v9 + 4;
      v41 = &v9[2 * v38 + 4];
      *v41 = v8;
      v41[1] = v10;
      v86 = *a1;
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
          v44 = &v9[2 * v39];
          if (v39 >= 4)
          {
            break;
          }

          if (v39 == 3)
          {
            v45 = v9[4];
            v46 = v9[5];
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
          sub_1DA3C676C((*a3 + 24 * *v74), (*a3 + 24 * *v76), *a3 + 24 * v77, v86, a5);
          if (v6)
          {
            goto LABEL_89;
          }

          if (v77 < v75)
          {
            goto LABEL_91;
          }

          v78 = v9;
          v79 = v9[2];
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
          v9 = v78;
          v6 = 0;
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
      v7 = a3[1];
      v8 = v10;
      a4 = v83;
      if (v10 >= v7)
      {
        v88 = v9;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_115;
  }

  sub_1DA3C6634(&v88, *a1, a3, a5);
LABEL_89:
}

uint64_t sub_1DA3C6634(uint64_t *a1, double *a2, void *a3, void (*a4)(double *, int64_t, double *))
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
    sub_1DA3C676C((*a3 + 24 * *v8), (*a3 + 24 * *v10), *a3 + 24 * v11, a2, a4);
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

uint64_t sub_1DA3C676C(double *a1, double *a2, unint64_t a3, double *a4, void (*a5)(double *, int64_t, double *))
{
  v5 = a4;
  v6 = a3;
  v7 = a2;
  v8 = a1;
  v9 = (a2 - a1) / 24;
  v10 = (a3 - a2) / 24;
  if (v9 < v10)
  {
    a5(a1, (a2 - a1) / 24, a4);
    v11 = &v5[3 * v9];
    while (1)
    {
      if (v5 >= v11 || v7 >= v6)
      {
        v7 = v8;
        goto LABEL_28;
      }

      if (*v7 >= *v5)
      {
        break;
      }

      v13 = v7;
      v14 = v8 == v7;
      v7 += 3;
      if (!v14)
      {
        goto LABEL_12;
      }

LABEL_13:
      v8 += 3;
    }

    v13 = v5;
    v14 = v8 == v5;
    v5 += 3;
    if (v14)
    {
      goto LABEL_13;
    }

LABEL_12:
    v15 = *v13;
    v8[2] = v13[2];
    *v8 = v15;
    goto LABEL_13;
  }

  a5(a2, (a3 - a2) / 24, a4);
  v11 = &v5[3 * v10];
LABEL_15:
  v16 = v7 - 3;
  for (v6 -= 24; v11 > v5 && v7 > v8; v6 -= 24)
  {
    if (*(v11 - 3) < *v16)
    {
      v14 = v6 + 24 == v7;
      v7 -= 3;
      if (!v14)
      {
        v19 = *v16;
        *(v6 + 16) = v16[2];
        *v6 = v19;
        v7 = v16;
      }

      goto LABEL_15;
    }

    if (v11 != (v6 + 24))
    {
      v18 = *(v11 - 3);
      *(v6 + 16) = *(v11 - 1);
      *v6 = v18;
    }

    v11 -= 3;
  }

LABEL_28:
  v20 = (v11 - v5) / 24;
  if (v7 != v5 || v7 >= &v5[3 * v20])
  {
    memmove(v7, v5, 24 * v20);
  }

  return 1;
}

char *sub_1DA3C6930(char *__src, uint64_t a2, char *__dst)
{
  if (__dst != __src || &__src[16 * a2] <= __dst)
  {
    return memmove(__dst, __src, 16 * a2);
  }

  return __src;
}

char *sub_1DA3C695C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEA08, &unk_1DA4232F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

uint64_t _s5PointVwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s5PointVwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

void *OUTLINED_FUNCTION_3_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  v22[2] = a21;
  v22[3] = a15;
  v22[4] = a16;
  v22[5] = v27;
  v22[6] = v26;
  v22[7] = v24;
  v22[8] = v23;
  v22[9] = v25;
  v22[10] = v21;
  return v22;
}

__n128 OUTLINED_FUNCTION_4_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __n128 a17)
{
  *(v18 + 16) = v19;
  v22 = v18 + v17 * v20;
  *(v22 + 32) = v21;
  result = a17;
  *(v22 + 40) = a17;
  return result;
}

void OUTLINED_FUNCTION_6_6(double a1)
{
  v3 = *(v1 + 32);
  *v2 = *v1;
  *(v2 + 16) = *(v1 + 16);
  *v1 = a1;
  *(v1 + 8) = v3;
}

void OUTLINED_FUNCTION_9_4()
{
  *(v1 - 104) = v0;
  v2 = *(v0 + 24);
  v3 = *(v0 + 16) + 1;
}

uint64_t OUTLINED_FUNCTION_12_1()
{

  return swift_deallocPartialClassInstance();
}

uint64_t EngagementProcessedBookMarkDate.__allocating_init(userDefaultsProvider:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t EngagementProcessedBookMarkDate.init(userDefaultsProvider:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

Swift::Double __swiftcall EngagementProcessedBookMarkDate.getTimeInterval()()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  swift_getObjectType();
  sub_1DA4218E4();
  return result;
}

Swift::Void __swiftcall EngagementProcessedBookMarkDate.setTimeInterval(timeInterval:)(Swift::Double timeInterval)
{
  v2 = v1;
  if (qword_1EE100EF8 != -1)
  {
    OUTLINED_FUNCTION_0_8();
  }

  v4 = sub_1DA421A94();
  __swift_project_value_buffer(v4, static Logger.conversionCategory);
  v5 = sub_1DA421A74();
  v6 = sub_1DA421F64();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    *(v7 + 4) = timeInterval;
    _os_log_impl(&dword_1DA39E000, v5, v6, "setting timeinterval for new bookmark %f", v7, 0xCu);
    OUTLINED_FUNCTION_17();
  }

  v9 = *(v2 + 16);
  v8 = *(v2 + 24);
  swift_getObjectType();
  sub_1DA4218F4();
}

uint64_t EngagementProcessedBookMarkDate.deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t EngagementProcessedBookMarkDate.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

Swift::Double __swiftcall DefaultDateRetriever.engagementsRetrievalStartDate()()
{
  v1 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
  v2 = OUTLINED_FUNCTION_1_7();
  v4 = v3(v2);
  v5 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_3_8();
  v9 = COERCE_DOUBLE(v8(v7, v5));
  if (v10)
  {
    v11 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    v12 = OUTLINED_FUNCTION_1_7();
    v13(v12);
  }

  else
  {
    result = v9;
  }

  v15 = v4 + -1814400.0;
  if (v4 + -1814400.0 <= 0.0)
  {
    v15 = 0.0;
  }

  if (v15 > result)
  {
    return v15;
  }

  return result;
}

Swift::Double __swiftcall DefaultDateRetriever.suggestionsShownRetrievalStartDate()()
{
  v1 = v0;
  v2 = sub_1DA4210B4();
  v3 = OUTLINED_FUNCTION_3_1(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_4_7();
  v10 = v9 - v8;
  started = DefaultDateRetriever.engagementsRetrievalStartDate()();
  if (qword_1EE100EF8 != -1)
  {
    OUTLINED_FUNCTION_0_8();
  }

  v12 = sub_1DA421A94();
  __swift_project_value_buffer(v12, static Logger.conversionCategory);
  v13 = sub_1DA421A74();
  v14 = sub_1DA421F64();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v31 = v16;
    *v15 = 136315138;
    sub_1DA421024();
    sub_1DA3C8A54(&qword_1EE100F18, MEMORY[0x1E6969530]);
    v17 = sub_1DA422364();
    v19 = v18;
    (*(v5 + 8))(v10, v2);
    v20 = sub_1DA3A5FE8(v17, v19, &v31);

    *(v15 + 4) = v20;
    _os_log_impl(&dword_1DA39E000, v13, v14, "Start looking up engagement interactions from %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    OUTLINED_FUNCTION_17();
    OUTLINED_FUNCTION_17();
  }

  v21 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
  v22 = *(v21 + 16);
  v23 = OUTLINED_FUNCTION_3_8();
  v25 = COERCE_DOUBLE(v24(v23, v21));
  if (v26)
  {
    v27 = v1[6];
    __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
    v28 = OUTLINED_FUNCTION_1_7();
    v29(v28);
  }

  else
  {
    result = v25;
  }

  if (started + -2678400.0 > result)
  {
    return started + -2678400.0;
  }

  return result;
}

uint64_t DefaultDateRetriever.deinit()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  return v0;
}

uint64_t DefaultDateRetriever.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));

  return MEMORY[0x1EEE6BDC0](v0, 104, 7);
}

Swift::Double __swiftcall DawnCInstallationDateGetter.earliestPossibleDawnCDate()()
{
  v0 = sub_1DA421144();
  v1 = OUTLINED_FUNCTION_3_1(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_4_7();
  v8 = v7 - v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAE870, &qword_1DA4252E0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v35 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF078, &qword_1DA4252E8);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v35 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF080, &qword_1DA4252F0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v35 - v19;
  v21 = sub_1DA420F24();
  v22 = OUTLINED_FUNCTION_3_1(v21);
  v24 = v23;
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_4_7();
  v29 = v28 - v27;
  __swift_storeEnumTagSinglePayload(v20, 1, 1, v0);
  v30 = sub_1DA421154();
  __swift_storeEnumTagSinglePayload(v16, 1, 1, v30);
  sub_1DA420F14();
  sub_1DA420EF4();
  sub_1DA420F04();
  sub_1DA420EE4();
  sub_1DA421114();
  sub_1DA421104();
  (*(v3 + 8))(v8, v0);
  v31 = sub_1DA4210B4();
  if (__swift_getEnumTagSinglePayload(v12, 1, v31) == 1)
  {
    __break(1u);
  }

  else
  {
    sub_1DA421034();
    v34 = v33;
    (*(v24 + 8))(v29, v21);
    (*(*(v31 - 8) + 8))(v12, v31);
    return v34;
  }

  return result;
}

Swift::Double_optional __swiftcall DefaultDawnCInstallationDateGetter.getFirstInstallDateOfDawnCOrLater()()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  swift_getObjectType();
  v3 = sub_1DA4218D4();
  v4 = sub_1DA3C7990(v3);

  v5 = sub_1DA3C7844(v4);
  LOBYTE(v2) = v6;

  if (v2)
  {
    if (qword_1EE100EF8 != -1)
    {
      OUTLINED_FUNCTION_0_8();
    }

    v7 = sub_1DA421A94();
    __swift_project_value_buffer(v7, static Logger.conversionCategory);
    v8 = sub_1DA421A74();
    v9 = sub_1DA421F64();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      v11 = "did not find DawnC or later installation date on this device";
      v12 = v9;
      v13 = v8;
      v14 = v10;
      v15 = 2;
LABEL_10:
      _os_log_impl(&dword_1DA39E000, v13, v12, v11, v14, v15);
      OUTLINED_FUNCTION_17();
    }
  }

  else
  {
    if (qword_1EE100EF8 != -1)
    {
      OUTLINED_FUNCTION_0_8();
    }

    v16 = sub_1DA421A94();
    __swift_project_value_buffer(v16, static Logger.conversionCategory);
    v8 = sub_1DA421A74();
    v17 = sub_1DA421F64();
    if (os_log_type_enabled(v8, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 134217984;
      *(v18 + 4) = v5;
      v11 = "Got first Install date that >= DawnC as %f";
      v12 = v17;
      v13 = v8;
      v14 = v18;
      v15 = 12;
      goto LABEL_10;
    }
  }

  v20 = v5;
  result.value = v19;
  result.is_nil = v20;
  return result;
}

uint64_t sub_1DA3C7844(uint64_t result)
{
  v1 = 1 << *(result + 32);
  v2 = -1;
  if (v1 < 64)
  {
    v2 = ~(-1 << v1);
  }

  v3 = v2 & *(result + 64);
  if (v3)
  {
    v4 = 0;
    v5 = __clz(__rbit64(v3));
    v6 = (v3 - 1) & v3;
    v7 = (v1 + 63) >> 6;
LABEL_9:
    v11 = *(result + 56);
    v12 = *(v11 + 8 * v5);
    if (!v6)
    {
      goto LABEL_11;
    }

    do
    {
      v13 = v4;
LABEL_15:
      v14 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v15 = (v13 << 9) | (8 * v14);
      if (*(v11 + v15) < v12)
      {
        v12 = *(v11 + v15);
      }
    }

    while (v6);
LABEL_11:
    while (1)
    {
      v13 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      if (v13 >= v7)
      {
        return *&v12;
      }

      v6 = *(result + 64 + 8 * v13);
      ++v4;
      if (v6)
      {
        v4 = v13;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v7 = (v1 + 63) >> 6;
    while (1)
    {
      v4 = v9 + 1;
      if (v9 + 1 >= v7)
      {
        return 0;
      }

      v10 = *(result + 72 + 8 * v9);
      v8 += 64;
      ++v9;
      if (v10)
      {
        v6 = (v10 - 1) & v10;
        v5 = __clz(__rbit64(v10)) + v8;
        goto LABEL_9;
      }
    }
  }

  return result;
}

double sub_1DA3C7968()
{
  v1 = *v0;
  *&result = DefaultDawnCInstallationDateGetter.getFirstInstallDateOfDawnCOrLater()();
  return result;
}

unint64_t *sub_1DA3C7990(uint64_t a1)
{
  v2 = a1;
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v9 = swift_slowAlloc();
      v2 = sub_1DA3C829C(v9, v4, v2);
      MEMORY[0x1DA74E430](v9, -1, -1);
      goto LABEL_5;
    }
  }

  MEMORY[0x1EEE9AC00](a1);
  v5 = (v10 - ((8 * v4 + 15) & 0x3FFFFFFFFFFFFFF0));
  sub_1DA3D78F8(0, v4, v5);
  v6 = sub_1DA3C7B60(v5, v4, v2);
  if (v1)
  {
    swift_willThrow();
  }

  else
  {
    v2 = v6;
  }

LABEL_5:
  v7 = *MEMORY[0x1E69E9840];
  return v2;
}

uint64_t sub_1DA3C7B60(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v59 = a2;
  v60 = a1;
  v70 = sub_1DA421664();
  v4 = *(v70 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v70);
  v69 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v68 = &v58 - v8;
  v81 = sub_1DA421644();
  v9 = *(v81 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v81);
  v84 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v83 = &v58 - v13;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF088, &qword_1DA425438);
  v14 = *(*(v78 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v78);
  v67 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v77 = &v58 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v58 - v19;
  v21 = sub_1DA421634();
  v22 = *(*(v21 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v21);
  v85 = &v58 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = 0;
  v26 = 0;
  v79 = a3;
  v27 = *(a3 + 64);
  v63 = a3 + 64;
  v28 = 1 << *(a3 + 32);
  v29 = -1;
  if (v28 < 64)
  {
    v29 = ~(-1 << v28);
  }

  v30 = v29 & v27;
  v62 = (v28 + 63) >> 6;
  v75 = v24 + 16;
  v76 = v24;
  v82 = v24 + 8;
  v74 = *MEMORY[0x1E69D2CF8];
  v72 = (v9 + 8);
  v73 = (v9 + 104);
  v64 = (v4 + 8);
  v66 = v20;
  v65 = result;
  while (v30)
  {
    v31 = __clz(__rbit64(v30));
    v80 = (v30 - 1) & v30;
LABEL_11:
    v34 = v31 | (v26 << 6);
    v35 = v79;
    v36 = v76;
    v37 = *(v76 + 16);
    v38 = v85;
    v37(v85, v79[6] + *(v76 + 72) * v34, v21);
    v39 = v35[7];
    v71 = v34;
    v40 = *(v39 + 8 * v34);
    v37(v20, v38, v21);
    v41 = v77;
    *&v20[*(v78 + 48)] = v40;
    sub_1DA3C8314(v20, v41);
    sub_1DA421614();
    v42 = *(v36 + 8);
    v42(v41, v21);
    (*v73)(v84, v74, v81);
    sub_1DA3C8A54(&qword_1EE100F08, MEMORY[0x1E69D2D00]);
    sub_1DA421CD4();
    sub_1DA421CD4();
    if (v88 == v86 && v89 == v87)
    {

      v47 = *v72;
      v48 = v81;
      (*v72)(v84, v81);
      v47(v83, v48);
LABEL_18:
      v49 = v67;
      sub_1DA3C8314(v20, v67);
      v50 = v68;
      sub_1DA421624();
      v42(v49, v21);
      v51 = v69;
      sub_1DA421654();
      sub_1DA3C8A54(&qword_1EE100F00, MEMORY[0x1E69D2D10]);
      v52 = v70;
      v53 = sub_1DA421B44();
      v54 = *v64;
      v55 = v51;
      v21 = v65;
      (*v64)(v55, v52);
      v56 = v50;
      v20 = v66;
      v54(v56, v52);
      sub_1DA3C8384(v20);
      result = (v42)(v85, v21);
      v30 = v80;
      if ((v53 & 1) == 0)
      {
        *(v60 + ((v71 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v71;
        if (__OFADD__(v61++, 1))
        {
          __break(1u);
          return sub_1DA3C86C4(v60, v59, v61, v79);
        }
      }
    }

    else
    {
      v44 = sub_1DA4223A4();

      v45 = *v72;
      v46 = v81;
      (*v72)(v84, v81);
      v45(v83, v46);
      if (v44)
      {
        goto LABEL_18;
      }

      sub_1DA3C8384(v20);
      result = (v42)(v85, v21);
      v30 = v80;
    }
  }

  v32 = v26;
  while (1)
  {
    v26 = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      break;
    }

    if (v26 >= v62)
    {
      return sub_1DA3C86C4(v60, v59, v61, v79);
    }

    v33 = *(v63 + 8 * v26);
    ++v32;
    if (v33)
    {
      v31 = __clz(__rbit64(v33));
      v80 = (v33 - 1) & v33;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_1DA3C829C(unint64_t *result, uint64_t a2, uint64_t a3)
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

    v6 = sub_1DA3C7B60(v5, a2, a3);

    return v6;
  }

  return result;
}

uint64_t sub_1DA3C8314(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF088, &qword_1DA425438);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DA3C8384(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF088, &qword_1DA425438);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1DA3C83EC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v4 = a4;
    v5 = a3;
    if (*(a4 + 16) == a3)
    {
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEE70, &unk_1DA4246E0);
      OUTLINED_FUNCTION_3_8();
      v7 = sub_1DA422214();
      v8 = v7;
      if (a2 < 1)
      {
        v9 = 0;
      }

      else
      {
        v9 = *a1;
      }

      v10 = 0;
      v11 = v7 + 64;
      v46 = v4;
      v47 = v7;
      while (v9)
      {
        v12 = __clz(__rbit64(v9));
        v48 = (v9 - 1) & v9;
LABEL_16:
        v15 = v12 | (v10 << 6);
        v16 = *(v4 + 56);
        v17 = *(v4 + 48) + 56 * v15;
        v18 = *v17;
        v19 = *(v17 + 8);
        v20 = *(v17 + 16);
        v21 = *(v17 + 24);
        v22 = *(v17 + 32);
        v24 = *(v17 + 40);
        v23 = *(v17 + 48);
        v25 = (v16 + 32 * v15);
        v26 = v25[1];
        v49 = v25[2];
        v50 = *v25;
        v27 = v25[3];
        v28 = v8[5];
        sub_1DA422434();

        sub_1DA421BF4();
        if (v20 == 0.0)
        {
          v29 = 0.0;
        }

        else
        {
          v29 = v20;
        }

        MEMORY[0x1DA74DBD0](*&v29);
        if (v21 == 0.0)
        {
          v30 = 0.0;
        }

        else
        {
          v30 = v21;
        }

        MEMORY[0x1DA74DBD0](*&v30);
        MEMORY[0x1DA74DBB0](v22);
        sub_1DA422454();
        if (v23)
        {
          sub_1DA421BF4();
        }

        sub_1DA422474();
        v31 = *(v47 + 32);
        OUTLINED_FUNCTION_8_6();
        if (((v34 << v33) & ~*(v11 + 8 * v32)) == 0)
        {
          OUTLINED_FUNCTION_6_7();
          while (++v35 != v37 || (v36 & 1) == 0)
          {
            v38 = v35 == v37;
            if (v35 == v37)
            {
              v35 = 0;
            }

            v36 |= v38;
            if (*(v11 + 8 * v35) != -1)
            {
              OUTLINED_FUNCTION_5_7();
              goto LABEL_33;
            }
          }

          goto LABEL_37;
        }

        OUTLINED_FUNCTION_7_6();
LABEL_33:
        OUTLINED_FUNCTION_9_5();
        *(v11 + v39) |= v40;
        v42 = v8[6] + 56 * v41;
        *v42 = v18;
        *(v42 + 8) = v19;
        *(v42 + 16) = v20;
        *(v42 + 24) = v21;
        *(v42 + 32) = v22;
        *(v42 + 40) = v24;
        *(v42 + 48) = v23;
        v43 = (v8[7] + 32 * v41);
        *v43 = v50;
        v43[1] = v26;
        v43[2] = v49;
        v43[3] = v27;
        ++v8[2];
        if (__OFSUB__(v5--, 1))
        {
          goto LABEL_38;
        }

        v4 = v46;
        v9 = v48;
        if (!v5)
        {
          return;
        }
      }

      v13 = v10;
      while (1)
      {
        v10 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v10 >= a2)
        {
          return;
        }

        v14 = a1[v10];
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v48 = (v14 - 1) & v14;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }
  }
}

uint64_t sub_1DA3C86C4(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v47 = sub_1DA421634();
  v45 = *(v47 - 8);
  v8 = *(v45 + 64);
  v9 = MEMORY[0x1EEE9AC00](v47);
  v11 = v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v42 = v39 - v12;
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF090, &unk_1DA425440);
  result = sub_1DA422214();
  v14 = result;
  if (a2 < 1)
  {
    v15 = 0;
  }

  else
  {
    v15 = *a1;
  }

  v16 = 0;
  v39[1] = v45 + 16;
  v40 = result;
  v46 = v45 + 32;
  v17 = result + 64;
  v41 = a1;
  v39[0] = a4;
  v18 = v47;
  while (v15)
  {
    v19 = v11;
    v20 = __clz(__rbit64(v15));
    v43 = (v15 - 1) & v15;
LABEL_16:
    v23 = v20 | (v16 << 6);
    v24 = a4[6];
    v25 = v45;
    v44 = *(v45 + 72);
    v26 = v42;
    (*(v45 + 16))(v42, v24 + v44 * v23, v18);
    v27 = *(a4[7] + 8 * v23);
    v28 = *(v25 + 32);
    v11 = v19;
    v28(v19, v26, v18);
    v14 = v40;
    v29 = *(v40 + 40);
    sub_1DA3C8A54(&qword_1ECBAF098, MEMORY[0x1E69D2CE8]);
    result = sub_1DA421B24();
    v30 = -1 << *(v14 + 32);
    v31 = result & ~v30;
    v32 = v31 >> 6;
    if (((-1 << v31) & ~*(v17 + 8 * (v31 >> 6))) == 0)
    {
      v34 = 0;
      v35 = (63 - v30) >> 6;
      a1 = v41;
      while (++v32 != v35 || (v34 & 1) == 0)
      {
        v36 = v32 == v35;
        if (v32 == v35)
        {
          v32 = 0;
        }

        v34 |= v36;
        v37 = *(v17 + 8 * v32);
        if (v37 != -1)
        {
          v33 = __clz(__rbit64(~v37)) + (v32 << 6);
          goto LABEL_25;
        }
      }

      goto LABEL_30;
    }

    v33 = __clz(__rbit64((-1 << v31) & ~*(v17 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
    a1 = v41;
LABEL_25:
    *(v17 + ((v33 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v33;
    result = (v28)(*(v14 + 48) + v33 * v44, v11, v47);
    *(*(v14 + 56) + 8 * v33) = v27;
    ++*(v14 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_31;
    }

    a4 = v39[0];
    v15 = v43;
    if (!a3)
    {
      return v14;
    }
  }

  v21 = v16;
  while (1)
  {
    v16 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v16 >= a2)
    {
      return v14;
    }

    v22 = a1[v16];
    ++v21;
    if (v22)
    {
      v19 = v11;
      v20 = __clz(__rbit64(v22));
      v43 = (v22 - 1) & v22;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1DA3C8A54(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1DA3C8A9C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v4 = a4;
    v5 = a3;
    if (*(a4 + 16) == a3)
    {
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF0A0, &unk_1DA425450);
      OUTLINED_FUNCTION_3_8();
      v8 = sub_1DA422214();
      v9 = v8;
      if (a2 < 1)
      {
        v10 = 0;
      }

      else
      {
        v10 = *a1;
      }

      v11 = 0;
      v12 = v8 + 64;
      v34 = v4;
      while (v10)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_16:
        v16 = v13 | (v11 << 6);
        v17 = *(*(v4 + 48) + v16);
        v18 = (*(v4 + 56) + 16 * v16);
        v19 = v18[1];
        v35 = *v18;
        v20 = *(v9 + 40);
        sub_1DA422434();
        MEMORY[0x1DA74DBB0](v17);
        sub_1DA422474();
        v21 = *(v9 + 32);
        OUTLINED_FUNCTION_8_6();
        if (((v24 << v23) & ~*(v12 + 8 * v22)) == 0)
        {
          OUTLINED_FUNCTION_6_7();
          while (++v25 != v27 || (v26 & 1) == 0)
          {
            v28 = v25 == v27;
            if (v25 == v27)
            {
              v25 = 0;
            }

            v26 |= v28;
            if (*(v12 + 8 * v25) != -1)
            {
              OUTLINED_FUNCTION_5_7();
              goto LABEL_25;
            }
          }

          goto LABEL_29;
        }

        OUTLINED_FUNCTION_7_6();
LABEL_25:
        OUTLINED_FUNCTION_9_5();
        *(v12 + v29) |= v30;
        *(*(v9 + 48) + v31) = v17;
        v32 = (*(v9 + 56) + 16 * v31);
        *v32 = v35;
        v32[1] = v19;
        ++*(v9 + 16);
        if (__OFSUB__(v5--, 1))
        {
          goto LABEL_30;
        }

        v4 = v34;
        if (!v5)
        {
          return;
        }
      }

      v14 = v11;
      while (1)
      {
        v11 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v11 >= a2)
        {
          return;
        }

        v15 = a1[v11];
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
    }
  }
}

uint64_t OUTLINED_FUNCTION_0_8()
{

  return swift_once();
}

double sub_1DA3C8D54()
{
  v0 = [BiomeLibrary() Siri];
  swift_unknownObjectRelease();
  v1 = [v0 AssistantSuggestionFeatures];
  swift_unknownObjectRelease();
  _s45FeatureEngagementBiomePostConversionProcessorCMa();
  v2 = swift_allocObject();
  result = 10200.0;
  *(v2 + 16) = xmmword_1DA425460;
  *(v2 + 32) = 0;
  *(v2 + 40) = v1;
  return result;
}

uint64_t sub_1DA3C8DE8(uint64_t a1)
{
  *(v1 + 16) = xmmword_1DA425460;
  *(v1 + 32) = 0;
  *(v1 + 40) = a1;
  return v1;
}

uint64_t sub_1DA3C8E04(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_1DA4211F4();
  v3[5] = v4;
  OUTLINED_FUNCTION_5_2(v4);
  v3[6] = v5;
  v7 = *(v6 + 64) + 15;
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  v8 = sub_1DA4212E4();
  v3[9] = v8;
  OUTLINED_FUNCTION_5_2(v8);
  v3[10] = v9;
  v11 = *(v10 + 64) + 15;
  v3[11] = swift_task_alloc();
  OUTLINED_FUNCTION_11_3();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_1DA3C8F1C()
{
  v51 = v0;
  if (qword_1EE100EF8 != -1)
  {
    OUTLINED_FUNCTION_0_9();
    swift_once();
  }

  v2 = v0[10];
  v3 = v0[11];
  v4 = v0[9];
  v5 = v0[2];
  v6 = sub_1DA421A94();
  __swift_project_value_buffer(v6, static Logger.conversionCategory);
  v7 = OUTLINED_FUNCTION_32_0();
  v8(v7);
  v9 = sub_1DA421A74();
  LOBYTE(v3) = sub_1DA421F64();
  v10 = os_log_type_enabled(v9, v3);
  v11 = v0[10];
  v12 = v0[11];
  v13 = v0[9];
  if (v10)
  {
    v14 = v0[8];
    v15 = v0[6];
    v48 = v0[5];
    OUTLINED_FUNCTION_22_0();
    swift_slowAlloc();
    OUTLINED_FUNCTION_27_0();
    v49 = swift_slowAlloc();
    v50 = v49;
    *v1 = 136315138;
    sub_1DA4212D4();
    v16 = sub_1DA421194();
    v18 = v17;
    (*(v15 + 8))(v14, v48);
    v19 = *(v11 + 8);
    v20 = OUTLINED_FUNCTION_38();
    v21(v20);
    v22 = sub_1DA3A5FE8(v16, v18, &v50);

    *(v1 + 4) = v22;
    OUTLINED_FUNCTION_36_0();
    _os_log_impl(v23, v24, v25, v26, v27, v28);
    __swift_destroy_boxed_opaque_existential_0(v49);
    OUTLINED_FUNCTION_18_0();
    MEMORY[0x1DA74E430]();
    OUTLINED_FUNCTION_18_0();
    MEMORY[0x1DA74E430]();
  }

  else
  {

    v29 = *(v11 + 8);
    v30 = OUTLINED_FUNCTION_38();
    v31(v30);
  }

  v33 = v0[6];
  v32 = v0[7];
  v34 = v0[5];
  v35 = v0[2];
  v36 = v0[3];
  sub_1DA4212D4();
  v37 = sub_1DA3CB3EC(v32, v36, 1u);
  (*(v33 + 8))(v32, v34);
  if (v37)
  {
    v38 = [*(v0[4] + 40) source];
    [v38 sendEvent_];
  }

  else
  {
    v37 = sub_1DA421A74();
    sub_1DA421F74();
    v39 = OUTLINED_FUNCTION_31_0();
    if (os_log_type_enabled(v39, v40))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_9_0(&dword_1DA39E000, v41, v42, "Unable to process biome feature feed");
      OUTLINED_FUNCTION_18_0();
      MEMORY[0x1DA74E430]();
    }
  }

  v43 = v0[11];
  v44 = v0[7];
  v45 = v0[8];

  v46 = v0[1];

  return v46();
}

void sub_1DA3C92FC()
{
  v39 = sub_1DA4211F4();
  v0 = OUTLINED_FUNCTION_3_1(v39);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_4_7();
  v5 = v4 - v3;
  v38 = sub_1DA421314();
  v6 = OUTLINED_FUNCTION_3_1(v38);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4_7();
  v13 = v12 - v11;
  v14 = sub_1DA4212B4();
  sub_1DA421604();
  v15 = sub_1DA4215A4();
  v17 = sub_1DA3EA3F0(v15, v16, v14);

  v18 = 0;
  if (v17)
  {
    v19 = v17;
  }

  else
  {
    v19 = MEMORY[0x1E69E7CC0];
  }

  v40 = *(v19 + 16);
  while (1)
  {
    if (v40 == v18)
    {

      return;
    }

    if (v18 >= *(v19 + 16))
    {
      break;
    }

    (*(v8 + 16))(v13, v19 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v18, v38);
    sub_1DA4212D4();
    v20 = sub_1DA3CB3EC(v5, v13, 0x8000u);
    (*(v8 + 8))(v13, v38);
    v21 = OUTLINED_FUNCTION_35_0();
    v22(v21);
    if (v20)
    {
      v23 = [*(v37 + 40) source];
      [v23 sendEvent:v20];
    }

    else
    {
      if (qword_1EE100EF8 != -1)
      {
        OUTLINED_FUNCTION_0_9();
        swift_once();
      }

      v24 = sub_1DA421A94();
      __swift_project_value_buffer(v24, static Logger.conversionCategory);
      v23 = sub_1DA421A74();
      v25 = sub_1DA421F74();
      v26 = OUTLINED_FUNCTION_31_0();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&dword_1DA39E000, v23, v25, "Unable to process biome feature feed", v28, 2u);
        OUTLINED_FUNCTION_18_0();
        MEMORY[0x1DA74E430]();
      }
    }

    ++v18;
  }

  __break(1u);
  OUTLINED_FUNCTION_0_9();
  swift_once();
  v29 = sub_1DA421A94();
  __swift_project_value_buffer(v29, static Logger.conversionCategory);
  v30 = 0;
  v31 = sub_1DA421A74();
  v32 = sub_1DA421F74();

  if (os_log_type_enabled(v31, v32))
  {
    OUTLINED_FUNCTION_22_0();
    v33 = swift_slowAlloc();
    OUTLINED_FUNCTION_34_0();
    v34 = swift_slowAlloc();
    *v33 = 138412290;
    v35 = 0;
    v36 = _swift_stdlib_bridgeErrorToNSError();
    *(v33 + 4) = v36;
    *v34 = v36;
    _os_log_impl(&dword_1DA39E000, v31, v32, "Unable to process engagement feature collection. %@", v33, 0xCu);
    sub_1DA3A8CA8(v34, &qword_1ECBAEC70, &qword_1DA42A510);
    OUTLINED_FUNCTION_18_0();
    MEMORY[0x1DA74E430]();
    OUTLINED_FUNCTION_18_0();
    MEMORY[0x1DA74E430]();
  }

  else
  {
  }
}

id sub_1DA3C9754(uint64_t a1, uint64_t a2)
{
  if (OUTLINED_FUNCTION_14_0(3))
  {
    OUTLINED_FUNCTION_23_0();
    v3 = v57;
    sub_1DA3B1C24(v6 + v7, v57);

    sub_1DA3B239C(v58, v59);
    sub_1DA3B1C80(v57);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEDA0, &unk_1DA423DB0);
    OUTLINED_FUNCTION_21_1();
    OUTLINED_FUNCTION_33_0();
    if (v8)
    {
      v11 = 0;
    }

    else
    {
      v11 = v9;
    }

    if (v8)
    {
      v12 = 0;
    }

    else
    {
      v12 = v10;
    }

    v55 = v12;
    v56 = v11;
  }

  else
  {
    v55 = 0;
    v56 = 0;
  }

  v13 = OUTLINED_FUNCTION_14_0(2);
  v14 = v13;
  if (v13)
  {
    sub_1DA3B1C24(v13 + OBJC_IVAR____TtCO27SiriSuggestionsIntelligence27SiriSuggestionsIntelligence14SourcedFeature_feature, v57);

    sub_1DA3B239C(v58, v59);
    sub_1DA3B1C80(v57);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEDA0, &unk_1DA423DB0);
    OUTLINED_FUNCTION_21_1();
    OUTLINED_FUNCTION_33_0();
    if (v15)
    {
      v14 = 0;
    }

    else
    {
      v14 = v16;
    }

    if (v15)
    {
      v18 = 0;
    }

    else
    {
      v18 = v17;
    }
  }

  else
  {
    v18 = 0;
  }

  v19 = OUTLINED_FUNCTION_14_0(4);
  if (v19)
  {
    v20 = v19;
    sub_1DA3B1C24(v19 + OBJC_IVAR____TtCO27SiriSuggestionsIntelligence27SiriSuggestionsIntelligence14SourcedFeature_feature, v57);

    sub_1DA3B239C(v58, v59);
    sub_1DA3B1C80(v57);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEDA0, &unk_1DA423DB0);
    OUTLINED_FUNCTION_21_1();
    OUTLINED_FUNCTION_33_0();
    if (v21)
    {
      v24 = 0;
    }

    else
    {
      v24 = v22;
    }

    if (v21)
    {
      v25 = 0;
    }

    else
    {
      v25 = v23;
    }
  }

  else
  {
    v24 = 0;
    v25 = 0;
  }

  v26 = OUTLINED_FUNCTION_14_0(5);
  if (v26)
  {
    v34 = v26;
    OUTLINED_FUNCTION_24_0(v26, v27, v28, v29, v30, v31, v32, v33, v54);

    sub_1DA3B239C((v3 + 2), v59);
    sub_1DA3B1C80(v57);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEDA0, &unk_1DA423DB0);
    v35 = OUTLINED_FUNCTION_21_1();
    v36 = v35 ^ 1;
    if (v35)
    {
      v37 = v57[0];
    }

    else
    {
      v37 = 0.0;
    }
  }

  else
  {
    v36 = 1;
    v37 = 0.0;
  }

  v38 = OUTLINED_FUNCTION_14_0(1);
  if (v38)
  {
    v46 = v38;
    OUTLINED_FUNCTION_24_0(v38, v39, v40, v41, v42, v43, v44, v45, v54);

    sub_1DA3B239C((v3 + 2), v59);
    sub_1DA3B1C80(v57);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEDA0, &unk_1DA423DB0);
    OUTLINED_FUNCTION_21_1();
    OUTLINED_FUNCTION_33_0();
    if (v47)
    {
      v50 = 0;
    }

    else
    {
      v50 = v48;
    }

    if (v47)
    {
      v51 = 0;
    }

    else
    {
      v51 = v49;
    }

    if (v36)
    {
      goto LABEL_39;
    }

LABEL_41:
    v52 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
    goto LABEL_42;
  }

  v50 = 0;
  v51 = 0;
  if ((v36 & 1) == 0)
  {
    goto LABEL_41;
  }

LABEL_39:
  v52 = 0;
LABEL_42:
  objc_allocWithZone(MEMORY[0x1E698EED0]);

  return sub_1DA3CC234(a1, a2, v56, v55, v14, v18, 0, 0, v24, v25, v52, v50, v51);
}

uint64_t sub_1DA3C9A60(uint64_t a1)
{
  if (!*(a1 + 8))
  {
    return 0;
  }

  v3 = *(a1 + 32);

  sub_1DA3CCB08();
  if (*(v3 + 16))
  {
    v1 = *(v3 + 32);

    return SiriSuggestionsIntelligence.MediaDeviceType.rawValue.getter(v1);
  }

  else
  {

    return 0;
  }
}

uint64_t sub_1DA3C9ADC(uint64_t *a1)
{
  if (!a1[1])
  {
    return 0;
  }

  v1 = *a1;
  v2 = a1[1];

  return v1;
}

id sub_1DA3C9B1C(uint64_t a1)
{
  OUTLINED_FUNCTION_1_8();
  v7 = sub_1DA3EA3A8(v3, v4, v5, v6, a1);
  if (v7 && (v8 = v7, sub_1DA3B1C24(v7 + OBJC_IVAR____TtCO27SiriSuggestionsIntelligence27SiriSuggestionsIntelligence14SourcedFeature_feature, &v173), v8, OUTLINED_FUNCTION_30_0(), sub_1DA3B1C80(&v173), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEDA0, &unk_1DA423DB0), OUTLINED_FUNCTION_18_1()))
  {
    v10 = v173;
    v9 = v174;
    v12 = v175;
    v11 = v176;
    v13 = v177;
  }

  else
  {
    v10 = 0;
    v12 = 0;
    v11 = 0;
    v13 = 0;
    v9 = 1;
  }

  v171 = v9;
  v172 = v13;
  OUTLINED_FUNCTION_1_8();
  v18 = sub_1DA3EA3A8(v14, v15, v16, v17, a1);
  if (v18)
  {
    v26 = v18;
    OUTLINED_FUNCTION_10_4(v18, v19, v20, v21, v22, v23, v24, v25, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v160, v162, v164, v166, v167, v169, v171, v172, v173);

    OUTLINED_FUNCTION_29();
    sub_1DA3B1C80(&v173);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEDA0, &unk_1DA423DB0);
    v27 = OUTLINED_FUNCTION_18_1();
    HIDWORD(v166) = v27 ^ 1;
    LODWORD(v157) = (v27 & v174) ^ 1;
  }

  else
  {
    LODWORD(v157) = 1;
    HIDWORD(v166) = 1;
  }

  OUTLINED_FUNCTION_1_8();
  v32 = sub_1DA3EA3A8(v28, v29, v30, v31, a1);
  v40 = v171;
  if (v32)
  {
    OUTLINED_FUNCTION_9_6(v32, v33, v34, v35, v36, v37, v38, v39, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v160, v162, v164, v166, v167, v169, v171, v172, v173);

    OUTLINED_FUNCTION_29();
    sub_1DA3B1C80(&v173);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEDA0, &unk_1DA423DB0);
    OUTLINED_FUNCTION_18_1();
    OUTLINED_FUNCTION_28();
    if (v43)
    {
      v44 = 0;
    }

    else
    {
      v44 = v41;
    }

    v168 = v44;
    v170 = v42;
  }

  else
  {
    v168 = 0;
    v170 = 0;
  }

  OUTLINED_FUNCTION_1_8();
  v49 = sub_1DA3EA3A8(v45, v46, v47, v48, a1);
  if (v49)
  {
    OUTLINED_FUNCTION_9_6(v49, v50, v51, v52, v53, v54, v55, v56, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v160, v162, v164, v166, v168, v170, v171, v172, v173);

    OUTLINED_FUNCTION_29();
    sub_1DA3B1C80(&v173);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEDA0, &unk_1DA423DB0);
    OUTLINED_FUNCTION_18_1();
    OUTLINED_FUNCTION_28();
    if (v43)
    {
      v59 = 0;
    }

    else
    {
      v59 = v57;
    }

    v163 = v59;
    v165 = v58;
  }

  else
  {
    v163 = 0;
    v165 = 0;
  }

  OUTLINED_FUNCTION_1_8();
  v64 = sub_1DA3EA3A8(v60, v61, v62, v63, a1);
  if (v64)
  {
    OUTLINED_FUNCTION_9_6(v64, v65, v66, v67, v68, v69, v70, v71, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v160, v163, v165, v166, v168, v170, v171, v172, v173);

    OUTLINED_FUNCTION_29();
    sub_1DA3B1C80(&v173);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEDA0, &unk_1DA423DB0);
    OUTLINED_FUNCTION_18_1();
    OUTLINED_FUNCTION_28();
    if (v43)
    {
      v74 = 0;
    }

    else
    {
      v74 = v72;
    }

    v159 = v74;
    v161 = v73;
  }

  else
  {
    v159 = 0;
    v161 = 0;
  }

  OUTLINED_FUNCTION_1_8();
  v79 = sub_1DA3EA3A8(v75, v76, v77, v78, a1);
  if (v79)
  {
    OUTLINED_FUNCTION_9_6(v79, v80, v81, v82, v83, v84, v85, v86, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v159, v161, v163, v165, v166, v168, v170, v171, v172, v173);

    OUTLINED_FUNCTION_29();
    sub_1DA3B1C80(&v173);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEDA0, &unk_1DA423DB0);
    if (OUTLINED_FUNCTION_18_1())
    {
      v87 = v173;
    }

    else
    {
      v87 = 2;
    }

    HIDWORD(v157) = v87;
  }

  else
  {
    HIDWORD(v157) = 2;
  }

  v88 = 2;
  OUTLINED_FUNCTION_1_8();
  v93 = sub_1DA3EA3A8(v89, v90, v91, v92, a1);
  if (v93)
  {
    OUTLINED_FUNCTION_9_6(v93, v94, v95, v96, v97, v98, v99, v100, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v159, v161, v163, v165, v166, v168, v170, v171, v172, v173);

    OUTLINED_FUNCTION_29();
    sub_1DA3B1C80(&v173);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEDA0, &unk_1DA423DB0);
    if (OUTLINED_FUNCTION_18_1())
    {
      v88 = v173;
    }

    else
    {
      v88 = 2;
    }
  }

  v101 = 2;
  OUTLINED_FUNCTION_1_8();
  v106 = sub_1DA3EA3A8(v102, v103, v104, v105, a1);
  if (v106)
  {
    v114 = v106;
    OUTLINED_FUNCTION_10_4(v106, v107, v108, v109, v110, v111, v112, v113, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v159, v161, v163, v165, v166, v168, v170, v171, v172, v173);

    OUTLINED_FUNCTION_29();
    sub_1DA3B1C80(&v173);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEDA0, &unk_1DA423DB0);
    if (OUTLINED_FUNCTION_18_1())
    {
      v101 = v173;
    }

    else
    {
      v101 = 2;
    }
  }

  if (v40 == 1)
  {
    v115 = 0;
    v116 = 0;
    v117 = &off_1E85C2000;
    v118 = 0x1E696A000;
  }

  else
  {
    v173 = v10;
    v174 = v40;
    v175 = v12;
    v176 = v11;
    v177 = v172;
    if (v40)
    {
      v119 = *(v172 + 16);
      sub_1DA3CCAB4(v10, v40);
      v120 = (v172 + 32);
      while (2)
      {
        v121 = v119-- != 0;
        v122 = v121;
        if (v121)
        {
          switch(*v120)
          {
            case 1:

              v122 = 1;
              break;
            default:
              v123 = sub_1DA4223A4();

              ++v120;
              if ((v123 & 1) == 0)
              {
                continue;
              }

              break;
          }
        }

        break;
      }

      v124 = v171;
    }

    else
    {
      v124 = 0;
      v122 = 0;
    }

    sub_1DA3CCA4C(v10, v124);
    v125 = OUTLINED_FUNCTION_16_0();
    sub_1DA3CCAB4(v125, v126);
    v115 = sub_1DA3C9A60(&v173);
    v116 = v127;
    v128 = OUTLINED_FUNCTION_16_0();
    sub_1DA3CCA4C(v128, v129);
    v130 = OUTLINED_FUNCTION_16_0();
    sub_1DA3CCA4C(v130, v131);
    v118 = 0x1E696A000uLL;
    v117 = &off_1E85C2000;
    [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  }

  if ((v166 & 0x100000000) != 0)
  {
    v132 = 0;
  }

  else
  {
    v132 = [objc_allocWithZone(*(v118 + 3480)) v117[44]];
  }

  if (HIDWORD(v157) == 2)
  {
    v133 = 0;
  }

  else
  {
    v133 = [objc_allocWithZone(*(v118 + 3480)) v117[44]];
  }

  if (v88 == 2)
  {
    v134 = 0;
  }

  else
  {
    v134 = [objc_allocWithZone(*(v118 + 3480)) v117[44]];
  }

  if (v101 == 2)
  {
    v135 = 0;
  }

  else
  {
    v135 = [objc_allocWithZone(*(v118 + 3480)) v117[44]];
  }

  v136 = objc_allocWithZone(MEMORY[0x1E698EEB8]);
  OUTLINED_FUNCTION_11_3();
  return sub_1DA3CC3C0(v137, v138, v139, v115, v116, v132, 0, 0, 0, 0, 0, 0, v170, v168, v165, v163, v161, v159, v133, v134, v135);
}

uint64_t sub_1DA3CA180(char a1)
{
  v1 = 1;
  v2 = 0;
  switch(a1)
  {
    case 1:
      goto LABEL_3;
    case 3:
      return v2 & 1;
    default:
      v1 = sub_1DA4223A4();
LABEL_3:

      v2 = v1;
      break;
  }

  return v2 & 1;
}

id sub_1DA3CA240(uint64_t a1)
{
  OUTLINED_FUNCTION_1_8();
  v6 = sub_1DA3EA3A8(v2, v3, v4, v5, a1);
  if (v6 && (v14 = v6, OUTLINED_FUNCTION_12_2(v6, v7, v8, v9, v10, v11, v12, v13, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v134, v136, v138, v140, v142, v145, v147, v149, v150, v153), v14, OUTLINED_FUNCTION_30_0(), sub_1DA3B1C80(&v153), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEDA0, &unk_1DA423DB0), OUTLINED_FUNCTION_17_1()))
  {
    v151 = v154;
    v141 = v155;
    v143 = v153;
    v139 = v156;
  }

  else
  {
    v141 = 0;
    v143 = 0;
    v139 = 0;
    v151 = 1;
  }

  OUTLINED_FUNCTION_1_8();
  v19 = sub_1DA3EA3A8(v15, v16, v17, v18, a1);
  if (v19 && (v27 = v19, OUTLINED_FUNCTION_12_2(v19, v20, v21, v22, v23, v24, v25, v26, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v134, v136, v139, v141, v143, v145, v147, v149, v151, v153), v27, OUTLINED_FUNCTION_30_0(), sub_1DA3B1C80(&v153), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEDA0, &unk_1DA423DB0), OUTLINED_FUNCTION_17_1()))
  {
    v28 = v154;
    v135 = v155;
    v137 = v153;
    v133 = v156;
    v29 = v157;
  }

  else
  {
    v135 = 0;
    v137 = 0;
    v133 = 0;
    v29 = 0;
    v28 = 1;
  }

  v30 = 2;
  OUTLINED_FUNCTION_1_8();
  v35 = sub_1DA3EA3A8(v31, v32, v33, v34, a1);
  if (v35)
  {
    v43 = v35;
    OUTLINED_FUNCTION_12_2(v35, v36, v37, v38, v39, v40, v41, v42, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v133, v135, v137, v139, v141, v143, v145, v147, v149, v151, v153);

    OUTLINED_FUNCTION_30_0();
    sub_1DA3B1C80(&v153);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEDA0, &unk_1DA423DB0);
    OUTLINED_FUNCTION_17_1();
    OUTLINED_FUNCTION_26_0();
    if (v45)
    {
      v30 = 2;
    }

    else
    {
      v30 = v44;
    }

    HIDWORD(v149) = v30;
  }

  else
  {
    HIDWORD(v149) = 2;
  }

  OUTLINED_FUNCTION_1_8();
  v50 = sub_1DA3EA3A8(v46, v47, v48, v49, a1);
  v58 = 4;
  if (v50)
  {
    v30 = v50;
    OUTLINED_FUNCTION_12_2(v50, v51, v52, v53, v54, v55, v56, v57, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v133, v135, v137, v139, v141, v143, v145, v147, v149, v151, v153);

    OUTLINED_FUNCTION_30_0();
    sub_1DA3B1C80(&v153);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEDA0, &unk_1DA423DB0);
    OUTLINED_FUNCTION_17_1();
    OUTLINED_FUNCTION_26_0();
    if (v45)
    {
      v58 = 4;
    }

    else
    {
      v58 = v59;
    }
  }

  v60 = 2;
  OUTLINED_FUNCTION_1_8();
  v65 = sub_1DA3EA3A8(v61, v62, v63, v64, a1);
  if (v65)
  {
    v30 = v65;
    OUTLINED_FUNCTION_12_2(v65, v66, v67, v68, v69, v70, v71, v72, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v133, v135, v137, v139, v141, v143, v145, v147, v149, v151, v153);

    OUTLINED_FUNCTION_30_0();
    sub_1DA3B1C80(&v153);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEDA0, &unk_1DA423DB0);
    OUTLINED_FUNCTION_17_1();
    OUTLINED_FUNCTION_26_0();
    if (v45)
    {
      v60 = 2;
    }

    else
    {
      v60 = v73;
    }
  }

  v74 = 2;
  OUTLINED_FUNCTION_1_8();
  v79 = sub_1DA3EA3A8(v75, v76, v77, v78, a1);
  if (v79)
  {
    v30 = v79;
    OUTLINED_FUNCTION_12_2(v79, v80, v81, v82, v83, v84, v85, v86, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v133, v135, v137, v139, v141, v143, v145, v147, v149, v151, v153);

    OUTLINED_FUNCTION_30_0();
    sub_1DA3B1C80(&v153);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEDA0, &unk_1DA423DB0);
    OUTLINED_FUNCTION_17_1();
    OUTLINED_FUNCTION_26_0();
    if (v45)
    {
      v74 = 2;
    }

    else
    {
      v74 = v87;
    }
  }

  OUTLINED_FUNCTION_1_8();
  v92 = 4;
  if (sub_1DA3EA3A8(v88, v89, v90, v91, a1))
  {
    OUTLINED_FUNCTION_23_0();
    sub_1DA3B1C24(v93 + v94, &v153);

    sub_1DA3B239C(&v155, v158);
    sub_1DA3B1C80(&v153);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEDA0, &unk_1DA423DB0);
    OUTLINED_FUNCTION_17_1();
    OUTLINED_FUNCTION_26_0();
    if (v45)
    {
      v92 = 4;
    }

    else
    {
      v92 = v95;
    }
  }

  OUTLINED_FUNCTION_1_8();
  if (sub_1DA3EA3A8(v96, v97, v98, v99, a1))
  {
    OUTLINED_FUNCTION_23_0();
    sub_1DA3B1C24(v100 + v101, &v153);

    sub_1DA3B239C(&v155, v158);
    sub_1DA3B1C80(&v153);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEDA0, &unk_1DA423DB0);
    OUTLINED_FUNCTION_17_1();
  }

  v102 = 2;
  OUTLINED_FUNCTION_1_8();
  if (sub_1DA3EA3A8(v103, v104, v105, v106, a1))
  {
    OUTLINED_FUNCTION_23_0();
    sub_1DA3B1C24(v107 + v108, &v153);

    sub_1DA3B239C(&v155, v158);
    sub_1DA3B1C80(&v153);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEDA0, &unk_1DA423DB0);
    OUTLINED_FUNCTION_17_1();
    OUTLINED_FUNCTION_26_0();
    if (v45)
    {
      v102 = 2;
    }

    else
    {
      v102 = v109;
    }
  }

  if (v151)
  {
    if (v151 == 1)
    {
      v146 = 0;
      v148 = 0;
    }

    else
    {
      v146 = SiriSuggestionsIntelligence.FocusType.rawValue.getter(v141);
      v148 = v110;
      sub_1DA3CCAA0(v143, v151);
    }
  }

  else
  {
    sub_1DA3CCAA0(v143, 0);
    v146 = 0x7375636F466F6ELL;
    v148 = 0xE700000000000000;
  }

  if (v28 == 1)
  {
    v152 = 0;
    v144 = 0;
  }

  else
  {
    v153 = v137;
    v154 = v28;
    v155 = v135;
    v156 = v133;
    v157 = v29;
    v152 = sub_1DA3C9ADC(&v153);
    v144 = v111;
    sub_1DA3CCA4C(v137, v28);
  }

  if (v58 == 4)
  {
    v112 = 2;
  }

  else
  {
    v112 = sub_1DA3CA180(v58) & 1;
  }

  if (HIDWORD(v149) == 2)
  {
    v113 = 0;
  }

  else
  {
    v113 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  }

  if (v112 == 2)
  {
    v114 = 0;
  }

  else
  {
    v114 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  }

  if (v60 == 2)
  {
    v115 = 0;
  }

  else
  {
    v115 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  }

  if (v74 == 2)
  {
    v116 = 0;
  }

  else
  {
    v116 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  }

  v117 = 1;
  v118 = 0;
  switch(v92)
  {
    case 1:
      v117 = 2;
      goto LABEL_64;
    case 2:
      v117 = 3;
      goto LABEL_64;
    case 3:
      v117 = -1;
      goto LABEL_64;
    case 4:
      goto LABEL_65;
    default:
LABEL_64:
      v118 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
LABEL_65:
      if (v102 == 2)
      {
        v119 = 0;
      }

      else
      {
        v119 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
      }

      v120 = objc_allocWithZone(MEMORY[0x1E698EEC8]);
      return sub_1DA3CC5BC(v146, v148, 0, 0, 0, v152, v144, v113, 0, v114, v115, 0, v116, v118, 0, v119, 0);
  }
}

id sub_1DA3CA8A8(uint64_t a1)
{
  OUTLINED_FUNCTION_1_8();
  v6 = sub_1DA3EA3A8(v2, v3, v4, v5, a1);
  v7 = v6;
  if (v6)
  {
    sub_1DA3B1C24(v6 + OBJC_IVAR____TtCO27SiriSuggestionsIntelligence27SiriSuggestionsIntelligence14SourcedFeature_feature, v29);

    sub_1DA3B239C(v30, v31);
    sub_1DA3B1C80(v29);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEDA0, &unk_1DA423DB0);
    v8 = OUTLINED_FUNCTION_25_0();
    if (v8)
    {
      v7 = *v29;
    }

    else
    {
      v7 = 0;
    }

    v9 = v8 ^ 1;
  }

  else
  {
    v9 = 1;
  }

  OUTLINED_FUNCTION_1_8();
  v14 = sub_1DA3EA3A8(v10, v11, v12, v13, a1);
  v15 = v14;
  if (v14)
  {
    sub_1DA3B1C24(v14 + OBJC_IVAR____TtCO27SiriSuggestionsIntelligence27SiriSuggestionsIntelligence14SourcedFeature_feature, v29);

    sub_1DA3B239C(v30, v31);
    sub_1DA3B1C80(v29);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEDA0, &unk_1DA423DB0);
    v16 = OUTLINED_FUNCTION_25_0();
    if (v16)
    {
      v15 = *v29;
    }

    else
    {
      v15 = 0;
    }

    v17 = v16 ^ 1;
  }

  else
  {
    v17 = 1;
  }

  OUTLINED_FUNCTION_1_8();
  v22 = sub_1DA3EA3A8(v18, v19, v20, v21, a1);
  if (v22)
  {
    v23 = v22;
    sub_1DA3B1C24(v22 + OBJC_IVAR____TtCO27SiriSuggestionsIntelligence27SiriSuggestionsIntelligence14SourcedFeature_feature, v29);

    sub_1DA3B239C(v30, v31);
    sub_1DA3B1C80(v29);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEDA0, &unk_1DA423DB0);
    if (OUTLINED_FUNCTION_25_0())
    {
      v24 = v29[0];
    }

    else
    {
      v24 = 4;
    }
  }

  else
  {
    v24 = 4;
  }

  if ((v9 & 1) == 0)
  {
    v25 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    if ((v17 & 1) == 0)
    {
      goto LABEL_20;
    }

LABEL_22:
    v26 = 0;
    goto LABEL_23;
  }

  v25 = 0;
  if (v17)
  {
    goto LABEL_22;
  }

LABEL_20:
  v26 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
LABEL_23:
  v27 = dword_1DA425524[v24];
  sub_1DA3CCA08();
  return sub_1DA3CAAEC(v25, v26, v27);
}

id sub_1DA3CAAEC(void *a1, void *a2, uint64_t a3)
{
  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithTimeOfDay:a1 dayOfWeek:a2 timePeriod:a3];

  return v5;
}

id sub_1DA3CAB50(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1DA3EA3A8(6, a3, a4, 0, a2);
  v6 = v5;
  if (v5)
  {
    sub_1DA3B1C24(v5 + OBJC_IVAR____TtCO27SiriSuggestionsIntelligence27SiriSuggestionsIntelligence14SourcedFeature_feature, v20);

    sub_1DA3B239C(&v21, v22);
    sub_1DA3B1C80(v20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEDA0, &unk_1DA423DB0);
    v7 = OUTLINED_FUNCTION_25_0();
    if (v7)
    {
      v6 = v20[0];
    }

    else
    {
      v6 = 0;
    }

    v8 = v7 ^ 1;
  }

  else
  {
    v8 = 1;
  }

  if (a1 >> 14)
  {
    if (a1 >> 14 == 1)
    {
      v9 = (a1 >> 8) & 1;
      if (a1 == 2 || (a1 & 1) == 0)
      {
        v10 = 0;
        v12 = 0;
        v11 = 0;
      }

      else
      {
        v10 = 0;
        v11 = 0;
        v12 = 1;
      }
    }

    else
    {
      v9 = 0;
      v12 = 0;
      v11 = 0;
      v10 = 1;
    }

    LOBYTE(a1) = 1;
  }

  else
  {
    v9 = 0;
    v12 = 0;
    v10 = 1;
    v11 = a1;
  }

  v13 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  if (a1)
  {
    v14 = 0;
    if ((v10 & 1) == 0)
    {
LABEL_18:
      v15 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
      goto LABEL_21;
    }
  }

  else
  {
    v14 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
    if ((v10 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  v15 = 0;
LABEL_21:
  v16 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  if (v8)
  {
    v17 = 0;
  }

  else
  {
    v17 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  }

  v18 = objc_allocWithZone(MEMORY[0x1E698EEC0]);
  return sub_1DA3CC7D4(v13, v14, 0, v15, v16, v17);
}

id sub_1DA3CAD6C(uint64_t a1)
{
  v3 = sub_1DA421514();
  v4 = OUTLINED_FUNCTION_3_1(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_4_7();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF0A8, &unk_1DA425510);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v73 - v14;
  v16 = sub_1DA4214A4();
  v17 = OUTLINED_FUNCTION_3_1(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_4_7();
  v24 = v23 - v22;
  OUTLINED_FUNCTION_1_8();
  v29 = sub_1DA3EA3A8(v25, v26, v27, v28, a1);
  if (!v29)
  {
    __swift_storeEnumTagSinglePayload(v15, 1, 1, v16);
    goto LABEL_7;
  }

  v30 = v29;
  v31 = v76;
  sub_1DA3B1C24(v29 + OBJC_IVAR____TtCO27SiriSuggestionsIntelligence27SiriSuggestionsIntelligence14SourcedFeature_feature, v76);

  sub_1DA3B239C(&v77, v78);
  sub_1DA3B1C80(v76);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEDA0, &unk_1DA423DB0);
  v32 = swift_dynamicCast();
  __swift_storeEnumTagSinglePayload(v15, v32 ^ 1u, 1, v16);
  if (__swift_getEnumTagSinglePayload(v15, 1, v16) == 1)
  {
LABEL_7:
    sub_1DA3A8CA8(v15, &qword_1ECBAF0A8, &unk_1DA425510);
    v40 = 0;
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v47 = 0;
    v48 = 0;
    v75 = 0;
    v49 = 0;
LABEL_27:
    v69 = objc_allocWithZone(MEMORY[0x1E698EEE0]);
    return sub_1DA3CC868(v49, v75, v48, v47, v46, v45, v44, v43, v42, v41, v40);
  }

  (*(v19 + 32))(v24, v15, v16);
  sub_1DA421494();
  v34 = *(v6 + 88);
  v33 = v6 + 88;
  v35 = v34(v11, v3);
  v36 = 0x1E696A000uLL;
  v37 = &off_1E85C2000;
  if (v35 == *MEMORY[0x1E69D33C8])
  {
    v38 = OUTLINED_FUNCTION_5_8();
    v39(v38);
    OUTLINED_FUNCTION_19_1();
LABEL_5:
    OUTLINED_FUNCTION_2_8();
    OUTLINED_FUNCTION_8_7();
LABEL_26:
    v75 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
    v48 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
    v47 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
    v46 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
    v45 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
    v44 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
    v43 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
    v42 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
    v41 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
    v68 = objc_allocWithZone(MEMORY[0x1E696AD98]);
    v40 = [v68 initWithBool_];
    v49 = v74;
    goto LABEL_27;
  }

  if (v35 == *MEMORY[0x1E69D33D0])
  {
    v50 = OUTLINED_FUNCTION_5_8();
    v51(v50);
    v74 = 0;
    OUTLINED_FUNCTION_2_8();
    OUTLINED_FUNCTION_8_7();
    v24 = 1;
    goto LABEL_26;
  }

  if (v35 == *MEMORY[0x1E69D3380])
  {
    v52 = OUTLINED_FUNCTION_5_8();
    v53(v52);
    OUTLINED_FUNCTION_19_1();
    OUTLINED_FUNCTION_2_8();
    v33 = 0;
    v31 = 0;
    v1 = 1;
    goto LABEL_26;
  }

  if (v35 == *MEMORY[0x1E69D33A0])
  {
    v54 = OUTLINED_FUNCTION_5_8();
    v55(v54);
    OUTLINED_FUNCTION_19_1();
    OUTLINED_FUNCTION_2_8();
    v33 = 0;
    v1 = 0;
    v31 = 1;
    goto LABEL_26;
  }

  if (v35 == *MEMORY[0x1E69D33B0])
  {
    v56 = OUTLINED_FUNCTION_5_8();
    v57(v56);
    OUTLINED_FUNCTION_19_1();
    OUTLINED_FUNCTION_2_8();
    v31 = 0;
    v1 = 0;
    v33 = 1;
    goto LABEL_26;
  }

  if (v35 == *MEMORY[0x1E69D3390])
  {
    v58 = OUTLINED_FUNCTION_5_8();
    v59(v58);
    OUTLINED_FUNCTION_3_9();
    v36 = 0;
    OUTLINED_FUNCTION_8_7();
    v30 = 1;
    goto LABEL_26;
  }

  if (v35 == *MEMORY[0x1E69D3388])
  {
    v60 = OUTLINED_FUNCTION_5_8();
    v61(v60);
    OUTLINED_FUNCTION_3_9();
    OUTLINED_FUNCTION_6_8();
    v36 = 1;
    goto LABEL_26;
  }

  if (v35 == *MEMORY[0x1E69D33A8])
  {
    v62 = OUTLINED_FUNCTION_5_8();
    v63(v62);
    OUTLINED_FUNCTION_19_1();
    HIDWORD(v73) = 0;
    v3 = 0;
    v36 = 0;
    OUTLINED_FUNCTION_6_8();
    v37 = 1;
    goto LABEL_26;
  }

  if (v35 == *MEMORY[0x1E69D33B8])
  {
    v64 = OUTLINED_FUNCTION_5_8();
    v65(v64);
    OUTLINED_FUNCTION_19_1();
    HIDWORD(v73) = 0;
    OUTLINED_FUNCTION_4_8();
    v1 = 0;
    v3 = 1;
    goto LABEL_26;
  }

  if (v35 == *MEMORY[0x1E69D33C0])
  {
    v66 = OUTLINED_FUNCTION_5_8();
    v67(v66);
    OUTLINED_FUNCTION_19_1();
    v3 = 0;
    OUTLINED_FUNCTION_4_8();
    v1 = 0;
    HIDWORD(v73) = 1;
    goto LABEL_26;
  }

  if (v35 == *MEMORY[0x1E69D3398])
  {
    v71 = OUTLINED_FUNCTION_5_8();
    v72(v71);
    v74 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
    v24 = 0;
    goto LABEL_5;
  }

  result = sub_1DA422394();
  __break(1u);
  return result;
}

id sub_1DA3CB3EC(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v5 = sub_1DA4211F4();
  v6 = OUTLINED_FUNCTION_3_1(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v6);
  v13 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v65 - v14;
  v16 = Interaction.getSiriSuggestionFeatures()();
  if (!v17)
  {
    if (v16)
    {
      static SiriSuggestionsIntelligence.FeatureId.indexFeatures(_:)(v16);
      v19 = v18;

      v66 = dword_1DA425538[a3 >> 14];
      v20 = sub_1DA4212F4();
      v65 = sub_1DA3C9754(v20, v21);

      v22 = sub_1DA3C9B1C(v19);
      v23 = sub_1DA3CA240(v19);
      v24 = objc_allocWithZone(MEMORY[0x1E698EEE8]);
      OUTLINED_FUNCTION_11_3();
      v28 = sub_1DA3CC738(v25, v26, v27, 0, 0);
      v29 = sub_1DA3CA8A8(v19);
      v30 = sub_1DA4212F4();
      v32 = sub_1DA3CAB50(a3, v19, v30, v31);

      v33 = sub_1DA3CAD6C(v19);

      v34 = objc_allocWithZone(MEMORY[0x1E698EEB0]);
      v35 = sub_1DA3CC948(v65, 0, v22, v23, v28, v29, v32, v33, v66);
      if (qword_1EE100EF8 != -1)
      {
        OUTLINED_FUNCTION_0_9();
        swift_once();
      }

      v36 = sub_1DA421A94();
      __swift_project_value_buffer(v36, static Logger.conversionCategory);
      v5 = v35;
      v37 = sub_1DA421A74();
      v38 = sub_1DA421F64();

      if (os_log_type_enabled(v37, v38))
      {
        OUTLINED_FUNCTION_22_0();
        v39 = swift_slowAlloc();
        OUTLINED_FUNCTION_34_0();
        v40 = swift_slowAlloc();
        *v39 = 138412290;
        *(v39 + 4) = v5;
        *v40 = v5;
        v41 = v5;
        OUTLINED_FUNCTION_36_0();
        _os_log_impl(v42, v43, v44, v45, v46, v47);
        sub_1DA3A8CA8(v40, &qword_1ECBAEC70, &qword_1DA42A510);
        OUTLINED_FUNCTION_18_0();
        MEMORY[0x1DA74E430]();
        OUTLINED_FUNCTION_18_0();
        MEMORY[0x1DA74E430]();
      }
    }

    else
    {
      if (qword_1EE100EF8 != -1)
      {
        OUTLINED_FUNCTION_0_9();
        swift_once();
      }

      v48 = sub_1DA421A94();
      __swift_project_value_buffer(v48, static Logger.conversionCategory);
      v49 = *(v8 + 16);
      v49(v15, a1, v5);
      v50 = sub_1DA421A74();
      v51 = sub_1DA421F74();
      v52 = OUTLINED_FUNCTION_31_0();
      if (os_log_type_enabled(v52, v53))
      {
        OUTLINED_FUNCTION_22_0();
        swift_slowAlloc();
        v66 = v51;
        OUTLINED_FUNCTION_27_0();
        v65 = swift_slowAlloc();
        v67 = v65;
        *v51 = 136315138;
        v49(v13, v15, v5);
        v54 = sub_1DA421BB4();
        v56 = v55;
        (*(v8 + 8))(v15, v5);
        v57 = sub_1DA3A5FE8(v54, v56, &v67);

        *(v51 + 4) = v57;
        OUTLINED_FUNCTION_36_0();
        _os_log_impl(v58, v59, v60, v61, v62, v63);
        __swift_destroy_boxed_opaque_existential_0(v65);
        OUTLINED_FUNCTION_18_0();
        MEMORY[0x1DA74E430]();
        OUTLINED_FUNCTION_18_0();
        MEMORY[0x1DA74E430]();
      }

      else
      {

        (*(v8 + 8))(v15, v5);
      }

      return 0;
    }
  }

  return v5;
}

uint64_t sub_1DA3CB878(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_1DA421314();
  v3[5] = v4;
  OUTLINED_FUNCTION_5_2(v4);
  v3[6] = v5;
  v7 = *(v6 + 64) + 15;
  v3[7] = swift_task_alloc();
  v8 = sub_1DA4211F4();
  v3[8] = v8;
  OUTLINED_FUNCTION_5_2(v8);
  v3[9] = v9;
  v11 = *(v10 + 64) + 15;
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v12 = sub_1DA4212E4();
  v3[12] = v12;
  OUTLINED_FUNCTION_5_2(v12);
  v3[13] = v13;
  v15 = *(v14 + 64) + 15;
  v3[14] = swift_task_alloc();
  OUTLINED_FUNCTION_11_3();

  return MEMORY[0x1EEE6DFA0](v16, v17, v18);
}

uint64_t sub_1DA3CB9E4()
{
  v80 = v0;
  if (qword_1EE100EF8 != -1)
  {
    OUTLINED_FUNCTION_0_9();
    swift_once();
  }

  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[12];
  v4 = v0[2];
  v5 = sub_1DA421A94();
  v6 = __swift_project_value_buffer(v5, static Logger.conversionCategory);
  v7 = OUTLINED_FUNCTION_32_0();
  v8(v7);
  v9 = sub_1DA421A74();
  v10 = sub_1DA421F64();
  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[13];
  v13 = v0[14];
  v14 = v0[12];
  if (v11)
  {
    v15 = v0[11];
    v16 = v0[9];
    v76 = v0[8];
    OUTLINED_FUNCTION_22_0();
    swift_slowAlloc();
    OUTLINED_FUNCTION_27_0();
    v77 = swift_slowAlloc();
    v79 = v77;
    *v6 = 136315138;
    sub_1DA4212D4();
    v75 = sub_1DA421194();
    v18 = v17;
    (*(v16 + 8))(v15, v76);
    v19 = *(v12 + 8);
    v20 = OUTLINED_FUNCTION_38();
    v21(v20);
    v22 = sub_1DA3A5FE8(v75, v18, &v79);

    *(v6 + 4) = v22;
    OUTLINED_FUNCTION_36_0();
    _os_log_impl(v23, v24, v25, v26, v27, v28);
    __swift_destroy_boxed_opaque_existential_0(v77);
    OUTLINED_FUNCTION_18_0();
    MEMORY[0x1DA74E430]();
    OUTLINED_FUNCTION_18_0();
    MEMORY[0x1DA74E430]();
  }

  else
  {

    v29 = *(v12 + 8);
    v30 = OUTLINED_FUNCTION_38();
    v31(v30);
  }

  v32 = v0[3];
  v78 = *(v32 + 16);
  if (v78)
  {
    v33 = v0[9];
    v34 = v0[6];
    v72 = v0[4];
    sub_1DA421604();
    v35 = *(v34 + 16);
    v34 += 16;
    v74 = v35;
    v36 = v32 + ((*(v34 + 64) + 32) & ~*(v34 + 64));
    v37 = (v33 + 8);
    v38 = (v34 - 8);
    v73 = *(v34 + 56);
    *&v39 = 138412290;
    v71 = v39;
    v40 = v78;
    while (1)
    {
      v41 = v0[10];
      v42 = v0[2];
      v74(v0[7], v36, v0[5]);
      sub_1DA4212D4();
      v43 = sub_1DA4212B4();
      v44 = sub_1DA4215A4();
      if (*(v43 + 16))
      {
        v46 = sub_1DA3B76EC(v44, v45);
        v48 = v47;

        v49 = MEMORY[0x1E69E7CC0];
        if (v48)
        {
          v49 = *(*(v43 + 56) + 8 * v46);
        }
      }

      else
      {

        v49 = MEMORY[0x1E69E7CC0];
      }

      v50 = v0[10];
      v51 = v0[7];

      v52 = *(v49 + 16);

      v53 = v52 == v78 ? 16386 : 16642;
      v54 = sub_1DA3CB3EC(v50, v51, v53);
      (*v37)(v0[10], v0[8]);
      if (!v54)
      {
        break;
      }

      v55 = [*(v72 + 40) source];
      [v55 sendEvent_];

      (*v38)(v0[7], v0[5]);
      v36 += v73;
      if (!--v40)
      {
        goto LABEL_21;
      }
    }

    v56 = sub_1DA421A74();
    sub_1DA421F74();
    v57 = OUTLINED_FUNCTION_31_0();
    if (os_log_type_enabled(v57, v58))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_9_0(&dword_1DA39E000, v59, v60, "Unable to process biome feature feed");
      OUTLINED_FUNCTION_18_0();
      MEMORY[0x1DA74E430](v61, v62);
    }

    v63 = v0[7];
    v64 = v0[5];

    (*v38)(v63, v64);
  }

LABEL_21:
  v65 = v0[14];
  v66 = v0[10];
  v67 = v0[11];
  v68 = v0[7];

  v69 = v0[1];

  return v69();
}

uint64_t sub_1DA3CBF1C()
{

  return MEMORY[0x1EEE6BDC0](v0, 48, 7);
}

double sub_1DA3CBF78()
{
  result = *(*v0 + 16);
  v2 = *(*v0 + 24);
  return result;
}

uint64_t sub_1DA3CBF90(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DA3CC038;

  return sub_1DA3C8E04(a1, a2);
}

uint64_t sub_1DA3CC038()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1DA3CC12C(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DA3CCCC0;

  return sub_1DA3CB878(a1, a2);
}

uint64_t sub_1DA3CC1D4()
{
  v2 = *v0;
  sub_1DA3C92FC();
  v3 = *(v1 + 8);

  return v3();
}

id sub_1DA3CC234(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13)
{
  if (a2)
  {
    v17 = sub_1DA421B64();

    if (a4)
    {
      goto LABEL_3;
    }

LABEL_6:
    v18 = 0;
    if (a6)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v17 = 0;
  if (!a4)
  {
    goto LABEL_6;
  }

LABEL_3:
  v18 = sub_1DA421B64();

  if (a6)
  {
LABEL_4:
    v19 = sub_1DA421B64();

    goto LABEL_8;
  }

LABEL_7:
  v19 = 0;
LABEL_8:
  if (a8)
  {
    v20 = sub_1DA421B64();
  }

  else
  {
    v20 = 0;
  }

  if (!a10)
  {
    v21 = 0;
    if (a13)
    {
      goto LABEL_13;
    }

LABEL_15:
    v22 = 0;
    goto LABEL_16;
  }

  v21 = sub_1DA421B64();

  if (!a13)
  {
    goto LABEL_15;
  }

LABEL_13:
  v22 = sub_1DA421B64();

LABEL_16:
  v23 = [v13 initWithSuggestionId:v17 targetOwner:v18 sourceOwner:v19 classificationCentroid:v20 channel:v21 confidence:a11 deliveryVehicle:v22];

  return v23;
}

id sub_1DA3CC3C0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, void *a8, void *a9, void *a10, void *a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, void *a20, void *a21)
{
  if (a3)
  {
    v29 = sub_1DA421B64();
  }

  else
  {
    v29 = 0;
  }

  if (a5)
  {
    v28 = sub_1DA421B64();
  }

  else
  {
    v28 = 0;
  }

  if (a14)
  {
    v22 = sub_1DA421B64();
  }

  else
  {
    v22 = 0;
  }

  if (a16)
  {
    v33 = sub_1DA421B64();
  }

  else
  {
    v33 = 0;
  }

  if (a18)
  {
    v23 = sub_1DA421B64();
  }

  else
  {
    v23 = 0;
  }

  v25 = [v30 initWithConnectedToAirpods:a1 noiseCancellingMode:v29 connectedToDevice:v28 isInCarPlay:a6 hasWatch:a9 hasIPad:a10 hasHomePod:a11 hasAppleTV:a12 hasIPhone:v22 totalNumDevices:v33 currentDeviceType:v23 currentBuildVersion:a19 distanceFromLatestBuild:a20 isALargeFormatPhone:a21 hasAPasscode:? supportsSMSMEssaging:?];

  return v25;
}

id sub_1DA3CC5BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7, void *a8, void *a9, void *a10, void *a11, void *a12, void *a13, void *a14, void *a15, void *a16, void *a17)
{
  if (a2)
  {
    v22 = sub_1DA421B64();
  }

  else
  {
    v22 = 0;
  }

  if (a4)
  {
    v21 = sub_1DA421B64();
  }

  else
  {
    v21 = 0;
  }

  if (a7)
  {
    v19 = sub_1DA421B64();
  }

  else
  {
    v19 = 0;
  }

  v25 = [v23 initWithFocusMode:v22 deviceMotion:v21 location:a5 isPlayingMedia:v19 isAirplaneMode:a8 isTimerRunning:a9 isConnectedToWifi:a10 hasInternetConnection:a11 isScreenSharing:a12 audioIsMuted:a13 screenBrightness:a14 homeGraph:a15 batteryIsCharging:a16 isLowBatteryMode:a17];

  return v25;
}

id sub_1DA3CC738(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  if (a5)
  {
    v10 = sub_1DA421B64();
  }

  else
  {
    v10 = 0;
  }

  v11 = [v6 initWithDaysSinceAccountCreated:a1 isInFamily:a2 isHeadOfFamily:a3 subscriptionStatus:v10];

  return v11;
}

id sub_1DA3CC7D4(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v13 = [v6 initWithWasSpoken:a1 wasTapped:a2 dwellTime:a3 otherSuggestionTapped:a4 otherSuggestionSpoken:a5 position:a6];

  return v13;
}

id sub_1DA3CC868(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8, void *a9, void *a10, void *a11)
{
  v12 = v11;
  v22 = [v12 initWithIs2x3:a1 siriWasDisabled:a2 siriWasdictationOnly:a3 active6MonthsOrMoreAgo:a4 active28To6MonthsDaysAgo:a5 active14To28DaysAgo:a6 active7To14DaysAgo:a7 activeWithin7days:a8 activeWithin7days1Turn:a9 activeWithin7Days2To3Turns:a10 activeWithin7Days4PlusTurns:a11];

  return v22;
}

id sub_1DA3CC948(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8, int a9)
{
  LODWORD(v20) = a9;
  v18 = [v9 initWithSuggestionDetails:a1 appUsageFeatures:a2 deviceFeatures:a3 environmentFeatures:a4 icloudFeatures:a5 temporalFeatures:a6 engagementLabels:a7 userSegmentation:a8 loggingType:v20];

  return v18;
}

unint64_t sub_1DA3CCA08()
{
  result = qword_1ECBAF0B0;
  if (!qword_1ECBAF0B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECBAF0B0);
  }

  return result;
}

uint64_t sub_1DA3CCA4C(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
    return sub_1DA3CCA5C(a1, a2);
  }

  return a1;
}

uint64_t sub_1DA3CCA5C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1DA3CCAA0(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_1DA3CCAB4(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
    return sub_1DA3CCAC4(a1, a2);
  }

  return a1;
}

uint64_t sub_1DA3CCAC4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

void sub_1DA3CCB08()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v3 = v2 - 2;
  if (v2 >= 2)
  {
    v4 = 0;
    while (1)
    {
      v14 = 0;
      MEMORY[0x1DA74E450](&v14, 8);
      v5 = (v14 * v2) >> 64;
      if (v2 > v14 * v2)
      {
        v6 = -v2 % v2;
        if (v6 > v14 * v2)
        {
          do
          {
            v14 = 0;
            MEMORY[0x1DA74E450](&v14, 8);
          }

          while (v6 > v14 * v2);
          v5 = (v14 * v2) >> 64;
        }
      }

      v7 = v4 + v5;
      if (__OFADD__(v4, v5))
      {
        break;
      }

      if (v4 != v7)
      {
        v8 = *(v1 + 16);
        if (v4 >= v8)
        {
          goto LABEL_20;
        }

        if (v7 >= v8)
        {
          goto LABEL_21;
        }

        v9 = *(v1 + 32 + v4);
        v10 = *(v1 + 32 + v7);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1DA3CCC84(v1);
          v1 = v11;
        }

        v12 = *(v1 + 16);
        if (v4 >= v12)
        {
          goto LABEL_22;
        }

        *(v1 + 32 + v4) = v10;
        if (v7 >= v12)
        {
          goto LABEL_23;
        }

        *(v1 + 32 + v7) = v9;
        *v0 = v1;
      }

      --v2;
      if (v4++ == v3)
      {
        return;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
  }
}

uint64_t OUTLINED_FUNCTION_9_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  v37 = a1 + *v35;

  return sub_1DA3B1C24(v37, &a35);
}

uint64_t OUTLINED_FUNCTION_10_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  v37 = a1 + *v35;

  return sub_1DA3B1C24(v37, &a35);
}

uint64_t OUTLINED_FUNCTION_12_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  v31 = a1 + *v29;

  return sub_1DA3B1C24(v31, &a29);
}

void *OUTLINED_FUNCTION_14_0(uint64_t a1)
{

  return sub_1DA3EA3A8(a1, v2, v1, 0, v3);
}

uint64_t OUTLINED_FUNCTION_17_1()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_18_1()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_21_1()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_24_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  v11 = a1 + *v9;

  return sub_1DA3B1C24(v11, va);
}

uint64_t OUTLINED_FUNCTION_25_0()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_29()
{

  return sub_1DA3B239C(v0 + 16, v1 - 136);
}

uint64_t OUTLINED_FUNCTION_30_0()
{

  return sub_1DA3B239C(v0 + 16, v1 - 136);
}

uint64_t OUTLINED_FUNCTION_35_0()
{
  v2 = **(v1 - 128);
  result = v0;
  v4 = *(v1 - 104);
  return result;
}

uint64_t sub_1DA3CCFD4()
{
  v1 = *(v0 + 32);

  sub_1DA3CD050(v0 + 40);
  return v0;
}

uint64_t sub_1DA3CD004()
{
  sub_1DA3CCFD4();

  return MEMORY[0x1EEE6BDC0](v0, 80, 7);
}

uint64_t sub_1DA3CD050(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBAF0C0, &qword_1DA42C0E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t *sub_1DA3CD0B8(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v8 = 0;
  memset(v7, 0, sizeof(v7));
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF248, &qword_1DA426588);
  swift_allocObject();
  v2[2] = sub_1DA420960(a1, v7, sub_1DA3D1AE4, v5);
  return v2;
}

void sub_1DA3CD190(double a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  if (!a2)
  {
    goto LABEL_13;
  }

  v5 = a2;
  v6 = sub_1DA3CD294(v5, a1);
  v8 = v7;
  if (([v5 stationary] & 1) == 0)
  {
    if ([v5 walking])
    {

      v8 |= 0x20u;
      goto LABEL_12;
    }

    if ([v5 running])
    {

      v8 |= 0x40u;
      goto LABEL_12;
    }

    if ([v5 cycling])
    {

      v8 |= 0x80u;
      goto LABEL_12;
    }

    v9 = [v5 automotive];

    if (v9)
    {
      v8 |= 0x60u;
      goto LABEL_12;
    }

LABEL_13:
    *a3 = 0;
    v8 = -96;
    goto LABEL_14;
  }

LABEL_12:
  *a3 = v6;
LABEL_14:
  *(a3 + 8) = v8;
}

uint64_t sub_1DA3CD300()
{
  v1 = *(*(v0 + 16) + 16);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_1DA3CD3A8;

  return sub_1DA41D1A4();
}

uint64_t sub_1DA3CD3A8(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 24);
  v8 = *v2;

  v6 = *(v8 + 8);

  return v6(a1, a2);
}

uint64_t sub_1DA3CD4AC()
{
  v0 = [BiomeLibrary() Motion];
  swift_unknownObjectRelease();
  v1 = [v0 Activity];
  swift_unknownObjectRelease();
  v2 = swift_allocObject();
  sub_1DA3CD0B8(v1);
  return v2;
}

uint64_t SiriSuggestionsIntelligence.MotionService.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t SiriSuggestionsIntelligence.MotionService.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t SiriSuggestionsIntelligence.MotionActivity.description.getter(uint64_t a1, unsigned __int8 a2)
{
  result = 0x6E776F6E6B6E75;
  switch(a2 >> 5)
  {
    case 1:
    case 2:
    case 4:
      OUTLINED_FUNCTION_1_9();
      sub_1DA422094();

      OUTLINED_FUNCTION_12_3();
      goto LABEL_5;
    case 3:
      OUTLINED_FUNCTION_1_9();
      sub_1DA422094();

      OUTLINED_FUNCTION_12_3();
      v5 = v4 | 3;
LABEL_5:
      v7 = v5;
      goto LABEL_6;
    case 5:
      return result;
    default:
      OUTLINED_FUNCTION_1_9();
      sub_1DA422094();

      OUTLINED_FUNCTION_12_3();
      v7 = v3 | 3;
LABEL_6:
      v6 = SiriSuggestionsIntelligence.MotionDetails.description.getter();
      MEMORY[0x1DA74D370](v6);

      MEMORY[0x1DA74D370](125, 0xE100000000000000);
      return v7;
  }
}

uint64_t sub_1DA3CD708(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000;
  if (v4 || (sub_1DA4223A4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x616E6F6974617473 && a2 == 0xEA00000000007972;
    if (v6 || (sub_1DA4223A4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x676E696B6C6177 && a2 == 0xE700000000000000;
      if (v7 || (sub_1DA4223A4() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x676E696E6E7572 && a2 == 0xE700000000000000;
        if (v8 || (sub_1DA4223A4() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x69746F6D6F747561 && a2 == 0xEA00000000006576;
          if (v9 || (sub_1DA4223A4() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x676E696C637963 && a2 == 0xE700000000000000)
          {

            return 5;
          }

          else
          {
            v11 = sub_1DA4223A4();

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

uint64_t sub_1DA3CD910(char a1)
{
  result = 0x6E776F6E6B6E75;
  switch(a1)
  {
    case 1:
      result = 0x616E6F6974617473;
      break;
    case 2:
      v3 = 1802264951;
      goto LABEL_6;
    case 3:
      v3 = 1852732786;
LABEL_6:
      result = v3 | 0x676E6900000000;
      break;
    case 4:
      result = 0x69746F6D6F747561;
      break;
    case 5:
      result = 0x676E696C637963;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DA3CD9B8(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
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

uint64_t sub_1DA3CDA2C(uint64_t a1)
{
  v2 = sub_1DA3CF6CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA3CDA68(uint64_t a1)
{
  v2 = sub_1DA3CF6CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DA3CDAAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DA3CD708(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DA3CDAD4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DA3CD908();
  *a1 = result;
  return result;
}

uint64_t sub_1DA3CDAFC(uint64_t a1)
{
  v2 = sub_1DA3CF5D0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA3CDB38(uint64_t a1)
{
  v2 = sub_1DA3CF5D0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DA3CDB74(uint64_t a1)
{
  v2 = sub_1DA3CF624();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA3CDBB0(uint64_t a1)
{
  v2 = sub_1DA3CF624();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DA3CDBEC(uint64_t a1)
{
  v2 = sub_1DA3CF720();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA3CDC28(uint64_t a1)
{
  v2 = sub_1DA3CF720();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DA3CDC64(uint64_t a1)
{
  v2 = sub_1DA3CF7C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA3CDCA0(uint64_t a1)
{
  v2 = sub_1DA3CF7C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DA3CDCDC(uint64_t a1)
{
  v2 = sub_1DA3CF81C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA3CDD18(uint64_t a1)
{
  v2 = sub_1DA3CF81C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DA3CDD54(uint64_t a1)
{
  v2 = sub_1DA3CF774();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA3CDD90(uint64_t a1)
{
  v2 = sub_1DA3CF774();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

BOOL static SiriSuggestionsIntelligence.MotionActivity.__derived_enum_equals(_:_:)(uint64_t a1, unsigned __int8 a2, uint64_t a3, unsigned __int8 a4)
{
  switch(a2 >> 5)
  {
    case 1:
      if ((a4 & 0xE0) != 0x20)
      {
        goto LABEL_23;
      }

      return ((a4 ^ a2) & 0x1F) == 0 && *&a1 == *&a3;
    case 2:
      if ((a4 & 0xE0) != 0x40)
      {
        goto LABEL_23;
      }

      return ((a4 ^ a2) & 0x1F) == 0 && *&a1 == *&a3;
    case 3:
      if ((a4 & 0xE0) != 0x60)
      {
        goto LABEL_23;
      }

      return ((a4 ^ a2) & 0x1F) == 0 && *&a1 == *&a3;
    case 4:
      if ((a4 & 0xE0) != 0x80)
      {
        goto LABEL_23;
      }

      return ((a4 ^ a2) & 0x1F) == 0 && *&a1 == *&a3;
    case 5:
      v6 = (a4 & 0xE0) == 0xA0 && a3 == 0;
      if (!v6 || a4 != 160)
      {
        goto LABEL_23;
      }

      result = 1;
      break;
    default:
      if (a4 >= 0x20u)
      {
LABEL_23:
        result = 0;
      }

      else
      {
        result = *&a1 == *&a3 && a2 == a4;
      }

      break;
  }

  return result;
}

void SiriSuggestionsIntelligence.MotionActivity.encode(to:)()
{
  OUTLINED_FUNCTION_25_1();
  v82 = v0;
  v85 = v2;
  v79 = v3;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF0D0, &qword_1DA4255B0);
  v7 = OUTLINED_FUNCTION_3_1(v6);
  v77 = v8;
  v78 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_10_5();
  v76 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF0D8, &qword_1DA4255B8);
  v14 = OUTLINED_FUNCTION_3_1(v13);
  v74 = v15;
  v75 = v14;
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_10_5();
  v73 = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF0E0, &qword_1DA4255C0);
  v21 = OUTLINED_FUNCTION_3_1(v20);
  v71 = v22;
  v72 = v21;
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_10_5();
  v70 = v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF0E8, &qword_1DA4255C8);
  v28 = OUTLINED_FUNCTION_3_1(v27);
  v68 = v29;
  v69 = v28;
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_17_2();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF0F0, &qword_1DA4255D0);
  OUTLINED_FUNCTION_3_1(v33);
  v67 = v34;
  v36 = *(v35 + 64);
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v65 - v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF0F8, &qword_1DA4255D8);
  OUTLINED_FUNCTION_3_1(v40);
  v66 = v41;
  v43 = *(v42 + 64);
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v44);
  v46 = &v65 - v45;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF100, &qword_1DA4255E0);
  v48 = OUTLINED_FUNCTION_3_1(v47);
  v80 = v49;
  v81 = v48;
  v51 = *(v50 + 64);
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_8_8();
  v53 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  sub_1DA3CF5D0();
  sub_1DA422494();
  switch(v85 >> 5)
  {
    case 1:
      LOBYTE(v83) = 2;
      sub_1DA3CF774();
      v54 = v81;
      OUTLINED_FUNCTION_6_9();
      sub_1DA4222D4();
      OUTLINED_FUNCTION_15_0();
      v56 = v69;
      sub_1DA422334();
      v58 = *(v68 + 8);
      v59 = v1;
      goto LABEL_8;
    case 2:
      LOBYTE(v83) = 3;
      sub_1DA3CF720();
      v55 = v70;
      v54 = v81;
      OUTLINED_FUNCTION_6_9();
      sub_1DA4222D4();
      OUTLINED_FUNCTION_15_0();
      v56 = v72;
      OUTLINED_FUNCTION_19_2();
      v57 = v71;
      goto LABEL_6;
    case 3:
      LOBYTE(v83) = 4;
      sub_1DA3CF6CC();
      v55 = v73;
      v54 = v81;
      OUTLINED_FUNCTION_6_9();
      sub_1DA4222D4();
      OUTLINED_FUNCTION_15_0();
      v56 = v75;
      OUTLINED_FUNCTION_19_2();
      v57 = v74;
      goto LABEL_6;
    case 4:
      LOBYTE(v83) = 5;
      sub_1DA3CF624();
      v55 = v76;
      v54 = v81;
      OUTLINED_FUNCTION_6_9();
      sub_1DA4222D4();
      OUTLINED_FUNCTION_15_0();
      v56 = v78;
      OUTLINED_FUNCTION_19_2();
      v57 = v77;
LABEL_6:
      v58 = *(v57 + 8);
      v59 = v55;
LABEL_8:
      v58(v59, v56);
      goto LABEL_9;
    case 5:
      LOBYTE(v83) = 0;
      sub_1DA3CF81C();
      v62 = v81;
      sub_1DA4222D4();
      (*(v66 + 8))(v46, v40);
      v63 = OUTLINED_FUNCTION_18_2();
      v64(v63, v62);
      goto LABEL_10;
    default:
      LOBYTE(v83) = 1;
      sub_1DA3CF7C8();
      v54 = v81;
      OUTLINED_FUNCTION_6_9();
      sub_1DA4222D4();
      v83 = v79;
      v84 = v85;
      sub_1DA3CF678();
      sub_1DA422334();
      (*(v67 + 8))(v39, v33);
LABEL_9:
      v60 = OUTLINED_FUNCTION_18_2();
      v61(v60, v54);
LABEL_10:
      OUTLINED_FUNCTION_24_1();
      return;
  }
}

void SiriSuggestionsIntelligence.MotionActivity.init(from:)()
{
  OUTLINED_FUNCTION_25_1();
  v3 = v2;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF130, &qword_1DA4255E8);
  OUTLINED_FUNCTION_3_1(v91);
  v96 = v4;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_10_5();
  v97 = v8;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF138, &qword_1DA4255F0);
  OUTLINED_FUNCTION_3_1(v90);
  v95 = v9;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_10_5();
  v100 = v13;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF140, &qword_1DA4255F8);
  OUTLINED_FUNCTION_3_1(v89);
  v94 = v14;
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_10_5();
  v99 = v18;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF148, &qword_1DA425600);
  OUTLINED_FUNCTION_3_1(v88);
  v93 = v19;
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_10_5();
  v98 = v23;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF150, &qword_1DA425608);
  OUTLINED_FUNCTION_3_1(v87);
  v92 = v24;
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_8_8();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF158, &qword_1DA425610);
  OUTLINED_FUNCTION_3_1(v28);
  v86 = v29;
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v83 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF160, &qword_1DA425618);
  OUTLINED_FUNCTION_3_1(v35);
  v37 = *(v36 + 64);
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_17_2();
  v39 = v3[3];
  v40 = v3[4];
  v101 = v3;
  __swift_project_boxed_opaque_existential_1(v3, v39);
  sub_1DA3CF5D0();
  sub_1DA422484();
  if (v0)
  {
    v41 = v101;
LABEL_11:
    __swift_destroy_boxed_opaque_existential_0(v41);
    OUTLINED_FUNCTION_24_1();
    return;
  }

  v84 = v34;
  v85 = v1;
  v42 = sub_1DA4222C4();
  sub_1DA3C2AA0(v42, 0);
  if (v44 == v45 >> 1)
  {
LABEL_9:
    v55 = sub_1DA4220F4();
    swift_allocError();
    v57 = v56;
    v58 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEF10, &qword_1DA425620) + 48);
    *v57 = &type metadata for SiriSuggestionsIntelligence.MotionActivity;
    sub_1DA422254();
    OUTLINED_FUNCTION_23_1();
    (*(*(v55 - 8) + 104))(v57, *MEMORY[0x1E69E6AF8], v55);
    swift_willThrow();
    swift_unknownObjectRelease();
    v59 = OUTLINED_FUNCTION_13_2();
    v60(v59);
LABEL_10:
    v41 = v101;
    goto LABEL_11;
  }

  v83 = 0;
  if (v44 < (v45 >> 1))
  {
    v46 = *(v43 + v44);
    sub_1DA3C2A9C(v44 + 1);
    v41 = v47;
    v49 = v48;
    swift_unknownObjectRelease();
    if (v41 == (v49 >> 1))
    {
      v50 = v83;
      switch(v46)
      {
        case 1:
          v102 = 1;
          sub_1DA3CF7C8();
          OUTLINED_FUNCTION_3_10();
          sub_1DA3D0558();
          OUTLINED_FUNCTION_9_7();
          OUTLINED_FUNCTION_2_9();
          swift_unknownObjectRelease();
          v75 = OUTLINED_FUNCTION_4_9();
          v76(v75);
          v77 = OUTLINED_FUNCTION_5_9();
          v78(v77);
          break;
        case 2:
          v102 = 2;
          sub_1DA3CF774();
          OUTLINED_FUNCTION_3_10();
          sub_1DA3D0558();
          OUTLINED_FUNCTION_9_7();
          OUTLINED_FUNCTION_2_9();
          swift_unknownObjectRelease();
          v67 = OUTLINED_FUNCTION_4_9();
          v68(v67);
          v69 = OUTLINED_FUNCTION_5_9();
          v70(v69);
          OUTLINED_FUNCTION_22_1();
          break;
        case 3:
          v102 = 3;
          sub_1DA3CF720();
          OUTLINED_FUNCTION_3_10();
          sub_1DA3D0558();
          OUTLINED_FUNCTION_9_7();
          OUTLINED_FUNCTION_2_9();
          swift_unknownObjectRelease();
          v71 = OUTLINED_FUNCTION_4_9();
          v72(v71);
          v73 = OUTLINED_FUNCTION_5_9();
          v74(v73);
          OUTLINED_FUNCTION_22_1();
          break;
        case 4:
          v102 = 4;
          sub_1DA3CF6CC();
          OUTLINED_FUNCTION_3_10();
          sub_1DA3D0558();
          OUTLINED_FUNCTION_9_7();
          OUTLINED_FUNCTION_2_9();
          swift_unknownObjectRelease();
          v63 = OUTLINED_FUNCTION_4_9();
          v64(v63);
          v65 = OUTLINED_FUNCTION_5_9();
          v66(v65);
          OUTLINED_FUNCTION_22_1();
          break;
        case 5:
          v102 = 5;
          sub_1DA3CF624();
          OUTLINED_FUNCTION_3_10();
          sub_1DA3D0558();
          OUTLINED_FUNCTION_9_7();
          OUTLINED_FUNCTION_2_9();
          swift_unknownObjectRelease();
          v79 = OUTLINED_FUNCTION_4_9();
          v80(v79);
          v81 = OUTLINED_FUNCTION_5_9();
          v82(v81);
          OUTLINED_FUNCTION_22_1();
          break;
        default:
          v51 = v28;
          v102 = 0;
          sub_1DA3CF81C();
          v52 = v84;
          OUTLINED_FUNCTION_11_4();
          sub_1DA422244();
          if (v50)
          {
            v61 = OUTLINED_FUNCTION_13_2();
            v62(v61);
            swift_unknownObjectRelease();
            goto LABEL_10;
          }

          swift_unknownObjectRelease();
          (*(v86 + 8))(v52, v51);
          v53 = OUTLINED_FUNCTION_13_2();
          v54(v53);
          v41 = v101;
          break;
      }

      goto LABEL_11;
    }

    goto LABEL_9;
  }

  __break(1u);
}

void sub_1DA3CED94(uint64_t a1@<X8>)
{
  SiriSuggestionsIntelligence.MotionActivity.init(from:)();
  if (!v1)
  {
    *a1 = v3;
    *(a1 + 8) = v4;
  }
}

void sub_1DA3CEDC4()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  SiriSuggestionsIntelligence.MotionActivity.encode(to:)();
}

uint64_t SiriSuggestionsIntelligence.MotionDetails.description.getter()
{
  sub_1DA422094();
  MEMORY[0x1DA74D370](0x227472617473227BLL, 0xEA0000000000203ALL);
  sub_1DA421E94();
  MEMORY[0x1DA74D370](0xD000000000000010, 0x80000001DA42D690);
  sub_1DA422194();
  MEMORY[0x1DA74D370](125, 0xE100000000000000);
  return 0;
}

uint64_t sub_1DA3CEEE0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7472617473 && a2 == 0xE500000000000000;
  if (v4 || (sub_1DA4223A4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E656469666E6F63 && a2 == 0xEA00000000006563)
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

uint64_t sub_1DA3CEFAC(char a1)
{
  if (a1)
  {
    return 0x6E656469666E6F63;
  }

  else
  {
    return 0x7472617473;
  }
}

uint64_t sub_1DA3CEFEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DA3CEEE0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DA3CF014(uint64_t a1)
{
  v2 = sub_1DA3D05AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA3CF050(uint64_t a1)
{
  v2 = sub_1DA3D05AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SiriSuggestionsIntelligence.MotionDetails.encode(to:)(void *a1, char a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF170, &qword_1DA425628);
  OUTLINED_FUNCTION_3_1(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v15 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA3D05AC();
  sub_1DA422494();
  v17 = 0;
  sub_1DA422314();
  if (!v2)
  {
    v16 = a2;
    OUTLINED_FUNCTION_21_2();
    sub_1DA3D0600();
    sub_1DA422334();
  }

  return (*(v7 + 8))(v12, v5);
}

unint64_t SiriSuggestionsIntelligence.MotionDetails.init(from:)(uint64_t *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF178, &qword_1DA425630);
  OUTLINED_FUNCTION_3_1(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_8_8();
  v10 = a1[4];
  v11 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA3D05AC();
  sub_1DA422484();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    sub_1DA422294();
    OUTLINED_FUNCTION_21_2();
    sub_1DA3D0654();
    OUTLINED_FUNCTION_6_9();
    sub_1DA4222B4();
    (*(v6 + 8))(v2, v4);
    v11 = v13;
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  return v11;
}

uint64_t sub_1DA3CF39C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7827308 && a2 == 0xE300000000000000;
  if (v3 || (sub_1DA4223A4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6D756964656DLL && a2 == 0xE600000000000000;
    if (v6 || (sub_1DA4223A4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 1751607656 && a2 == 0xE400000000000000;
      if (v7 || (sub_1DA4223A4() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000)
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

uint64_t sub_1DA3CF4F0(char a1)
{
  result = 7827308;
  switch(a1)
  {
    case 1:
      result = 0x6D756964656DLL;
      break;
    case 2:
      result = 1751607656;
      break;
    case 3:
      result = 0x6E776F6E6B6E75;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1DA3CF574@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = SiriSuggestionsIntelligence.MotionDetails.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
    *(a2 + 8) = result;
  }

  return result;
}

uint64_t sub_1DA3CF5C4()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  return SiriSuggestionsIntelligence.MotionDetails.description.getter();
}

unint64_t sub_1DA3CF5D0()
{
  result = qword_1EE1026F8[0];
  if (!qword_1EE1026F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE1026F8);
  }

  return result;
}

unint64_t sub_1DA3CF624()
{
  result = qword_1ECBAF108;
  if (!qword_1ECBAF108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAF108);
  }

  return result;
}

unint64_t sub_1DA3CF678()
{
  result = qword_1EE102980;
  if (!qword_1EE102980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE102980);
  }

  return result;
}

unint64_t sub_1DA3CF6CC()
{
  result = qword_1ECBAF110;
  if (!qword_1ECBAF110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAF110);
  }

  return result;
}

unint64_t sub_1DA3CF720()
{
  result = qword_1ECBAF118;
  if (!qword_1ECBAF118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAF118);
  }

  return result;
}

unint64_t sub_1DA3CF774()
{
  result = qword_1ECBAF120;
  if (!qword_1ECBAF120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAF120);
  }

  return result;
}

unint64_t sub_1DA3CF7C8()
{
  result = qword_1EE102690;
  if (!qword_1EE102690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE102690);
  }

  return result;
}

unint64_t sub_1DA3CF81C()
{
  result = qword_1ECBAF128;
  if (!qword_1ECBAF128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAF128);
  }

  return result;
}

uint64_t sub_1DA3CF878@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DA3CF39C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DA3CF8A0(uint64_t a1)
{
  v2 = sub_1DA3D06A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA3CF8DC(uint64_t a1)
{
  v2 = sub_1DA3D06A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DA3CF918(uint64_t a1)
{
  v2 = sub_1DA3D0750();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA3CF954(uint64_t a1)
{
  v2 = sub_1DA3D0750();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DA3CF990(uint64_t a1)
{
  v2 = sub_1DA3D07F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA3CF9CC(uint64_t a1)
{
  v2 = sub_1DA3D07F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DA3CFA08(uint64_t a1)
{
  v2 = sub_1DA3D07A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA3CFA44(uint64_t a1)
{
  v2 = sub_1DA3D07A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DA3CFA80(uint64_t a1)
{
  v2 = sub_1DA3D06FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA3CFABC(uint64_t a1)
{
  v2 = sub_1DA3D06FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void SiriSuggestionsIntelligence.MotionConfidence.encode(to:)()
{
  OUTLINED_FUNCTION_25_1();
  v54 = v1;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF188, &qword_1DA425638);
  v5 = OUTLINED_FUNCTION_3_1(v4);
  v52 = v6;
  v53 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_10_5();
  v51 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF190, &qword_1DA425640);
  v12 = OUTLINED_FUNCTION_3_1(v11);
  v49 = v13;
  v50 = v12;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_10_5();
  v48 = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF198, &qword_1DA425648);
  v19 = OUTLINED_FUNCTION_3_1(v18);
  v46 = v20;
  v47 = v19;
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_8_8();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF1A0, &qword_1DA425650);
  OUTLINED_FUNCTION_3_1(v24);
  v45 = v25;
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v44 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF1A8, &qword_1DA425658);
  OUTLINED_FUNCTION_3_1(v31);
  v33 = v32;
  v35 = *(v34 + 64);
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_17_2();
  v37 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_1DA3D06A8();
  sub_1DA422494();
  switch(v54)
  {
    case 1:
      OUTLINED_FUNCTION_21_2();
      sub_1DA3D07A4();
      OUTLINED_FUNCTION_11_4();
      sub_1DA4222D4();
      v41 = OUTLINED_FUNCTION_18_2();
      v43(v41, v42);
      break;
    case 2:
      sub_1DA3D0750();
      v38 = v48;
      OUTLINED_FUNCTION_11_4();
      sub_1DA4222D4();
      v40 = v49;
      v39 = v50;
      goto LABEL_5;
    case 3:
      sub_1DA3D06FC();
      v38 = v51;
      OUTLINED_FUNCTION_11_4();
      sub_1DA4222D4();
      v40 = v52;
      v39 = v53;
LABEL_5:
      (*(v40 + 8))(v38, v39);
      break;
    default:
      sub_1DA3D07F8();
      OUTLINED_FUNCTION_11_4();
      sub_1DA4222D4();
      (*(v45 + 8))(v30, v24);
      break;
  }

  (*(v33 + 8))(v0, v31);
  OUTLINED_FUNCTION_24_1();
}

void SiriSuggestionsIntelligence.MotionConfidence.init(from:)()
{
  OUTLINED_FUNCTION_25_1();
  v74 = v0;
  v2 = v1;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF1C8, &qword_1DA425660);
  OUTLINED_FUNCTION_3_1(v73);
  v70 = v3;
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_10_5();
  v72 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF1D0, &qword_1DA425668);
  v9 = OUTLINED_FUNCTION_3_1(v8);
  v67 = v10;
  v68 = v9;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_10_5();
  v69 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF1D8, &qword_1DA425670);
  v16 = OUTLINED_FUNCTION_3_1(v15);
  v65 = v17;
  v66 = v16;
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_8_8();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF1E0, &qword_1DA425678);
  OUTLINED_FUNCTION_3_1(v21);
  v64 = v22;
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v60 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF1E8, &qword_1DA425680);
  OUTLINED_FUNCTION_3_1(v28);
  v71 = v29;
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v60 - v33;
  v35 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_1DA3D06A8();
  v36 = v74;
  sub_1DA422484();
  if (v36)
  {
    goto LABEL_8;
  }

  v62 = v21;
  v63 = v27;
  v37 = v72;
  v38 = v73;
  v74 = v2;
  v39 = v34;
  v40 = sub_1DA4222C4();
  sub_1DA3C2AA0(v40, 0);
  if (v42 == v43 >> 1)
  {
LABEL_7:
    v55 = sub_1DA4220F4();
    swift_allocError();
    v57 = v56;
    v58 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEF10, &qword_1DA425620) + 48);
    *v57 = &type metadata for SiriSuggestionsIntelligence.MotionConfidence;
    sub_1DA422254();
    OUTLINED_FUNCTION_23_1();
    (*(*(v55 - 8) + 104))(v57, *MEMORY[0x1E69E6AF8], v55);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v71 + 8))(v39, v28);
    v2 = v74;
LABEL_8:
    __swift_destroy_boxed_opaque_existential_0(v2);
LABEL_9:
    OUTLINED_FUNCTION_24_1();
    return;
  }

  v61 = 0;
  if (v42 < (v43 >> 1))
  {
    v44 = *(v41 + v42);
    sub_1DA3C2A9C(v42 + 1);
    v46 = v45;
    v48 = v47;
    swift_unknownObjectRelease();
    if (v46 == v48 >> 1)
    {
      v49 = v44;
      v51 = v70;
      v50 = v71;
      switch(v49)
      {
        case 1:
          OUTLINED_FUNCTION_21_2();
          sub_1DA3D07A4();
          OUTLINED_FUNCTION_14_1();
          swift_unknownObjectRelease();
          goto LABEL_15;
        case 2:
          sub_1DA3D0750();
          OUTLINED_FUNCTION_14_1();
          swift_unknownObjectRelease();
LABEL_15:
          v52 = OUTLINED_FUNCTION_18_2();
          goto LABEL_16;
        case 3:
          sub_1DA3D06FC();
          v59 = v61;
          sub_1DA422244();
          if (v59)
          {
            (*(v50 + 8))(v39, v28);
            swift_unknownObjectRelease();
            v2 = v74;
            goto LABEL_8;
          }

          swift_unknownObjectRelease();
          (*(v51 + 8))(v37, v38);
LABEL_17:
          (*(v50 + 8))(v39, v28);
          __swift_destroy_boxed_opaque_existential_0(v74);
          break;
        default:
          sub_1DA3D07F8();
          OUTLINED_FUNCTION_14_1();
          swift_unknownObjectRelease();
          v52 = OUTLINED_FUNCTION_18_2();
          v54 = v62;
LABEL_16:
          v53(v52, v54);
          goto LABEL_17;
      }

      goto LABEL_9;
    }

    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_1DA3D04B0()
{
  v1 = *v0;
  sub_1DA422434();
  SiriSuggestionsIntelligence.MotionConfidence.hash(into:)(v3, v1);
  return sub_1DA422474();
}

void sub_1DA3D0500(_BYTE *a1@<X8>)
{
  SiriSuggestionsIntelligence.MotionConfidence.init(from:)();
  if (!v1)
  {
    *a1 = v3;
  }
}

unint64_t sub_1DA3D0558()
{
  result = qword_1ECBAF168;
  if (!qword_1ECBAF168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAF168);
  }

  return result;
}

unint64_t sub_1DA3D05AC()
{
  result = qword_1EE102998[0];
  if (!qword_1EE102998[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE102998);
  }

  return result;
}

unint64_t sub_1DA3D0600()
{
  result = qword_1EE102390;
  if (!qword_1EE102390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE102390);
  }

  return result;
}

unint64_t sub_1DA3D0654()
{
  result = qword_1ECBAF180;
  if (!qword_1ECBAF180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAF180);
  }

  return result;
}

unint64_t sub_1DA3D06A8()
{
  result = qword_1EE1023F0;
  if (!qword_1EE1023F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1023F0);
  }

  return result;
}

unint64_t sub_1DA3D06FC()
{
  result = qword_1ECBAF1B0;
  if (!qword_1ECBAF1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAF1B0);
  }

  return result;
}

unint64_t sub_1DA3D0750()
{
  result = qword_1EE1023C8;
  if (!qword_1EE1023C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1023C8);
  }

  return result;
}

unint64_t sub_1DA3D07A4()
{
  result = qword_1ECBAF1B8;
  if (!qword_1ECBAF1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAF1B8);
  }

  return result;
}

unint64_t sub_1DA3D07F8()
{
  result = qword_1ECBAF1C0;
  if (!qword_1ECBAF1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAF1C0);
  }

  return result;
}

unint64_t sub_1DA3D0850()
{
  result = qword_1ECBAF1F0;
  if (!qword_1ECBAF1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAF1F0);
  }

  return result;
}

unint64_t sub_1DA3D08A8()
{
  result = qword_1ECBAF1F8;
  if (!qword_1ECBAF1F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBAF200, &qword_1DA425880);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAF1F8);
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t _s14MotionActivityOwet(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x3B && *(a1 + 9))
    {
      v2 = *a1 + 58;
    }

    else
    {
      v2 = ((*(a1 + 8) >> 5) & 0xFFFFFFC7 | (8 * ((*(a1 + 8) >> 2) & 7))) ^ 0x3F;
      if (v2 >= 0x3A)
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

uint64_t _s14MotionActivityOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3A)
  {
    *(result + 8) = 0;
    *result = a2 - 59;
    if (a3 >= 0x3B)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3B)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 4 * (((-a2 >> 3) & 7) - 8 * a2);
    }
  }

  return result;
}

uint64_t sub_1DA3D09E4(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 <= 0x9F)
  {
    return v1 >> 5;
  }

  else
  {
    return (*a1 + 5);
  }
}

uint64_t sub_1DA3D0A10(uint64_t result, unsigned int a2)
{
  if (a2 < 5)
  {
    v2 = *(result + 8) & 3 | (32 * a2);
  }

  else
  {
    *result = a2 - 5;
    v2 = -96;
  }

  *(result + 8) = v2;
  return result;
}

uint64_t _s13MotionDetailsVwet(uint64_t a1, unsigned int a2)
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
      v4 = v3 >= 4;
      v2 = v3 - 4;
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

uint64_t _s13MotionDetailsVwst(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 8) = a2 + 3;
    }
  }

  return result;
}

_BYTE *sub_1DA3D0ADC(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *_s13MotionDetailsV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t _s14MotionActivityO10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *_s14MotionActivityO10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1DA3D0E88(_BYTE *result, int a2, int a3)
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

unint64_t sub_1DA3D0F38()
{
  result = qword_1ECBAF208;
  if (!qword_1ECBAF208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAF208);
  }

  return result;
}

unint64_t sub_1DA3D0F90()
{
  result = qword_1ECBAF210;
  if (!qword_1ECBAF210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAF210);
  }

  return result;
}

unint64_t sub_1DA3D0FE8()
{
  result = qword_1ECBAF218;
  if (!qword_1ECBAF218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAF218);
  }

  return result;
}

unint64_t sub_1DA3D1040()
{
  result = qword_1ECBAF220;
  if (!qword_1ECBAF220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAF220);
  }

  return result;
}

unint64_t sub_1DA3D1098()
{
  result = qword_1ECBAF228;
  if (!qword_1ECBAF228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAF228);
  }

  return result;
}

unint64_t sub_1DA3D10F0()
{
  result = qword_1ECBAF230;
  if (!qword_1ECBAF230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAF230);
  }

  return result;
}

unint64_t sub_1DA3D1148()
{
  result = qword_1ECBAF238;
  if (!qword_1ECBAF238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAF238);
  }

  return result;
}

unint64_t sub_1DA3D11A0()
{
  result = qword_1ECBAF240;
  if (!qword_1ECBAF240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAF240);
  }

  return result;
}

unint64_t sub_1DA3D11F8()
{
  result = qword_1EE1023D0;
  if (!qword_1EE1023D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1023D0);
  }

  return result;
}

unint64_t sub_1DA3D1250()
{
  result = qword_1EE1023D8;
  if (!qword_1EE1023D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1023D8);
  }

  return result;
}

unint64_t sub_1DA3D12A8()
{
  result = qword_1EE1023A8;
  if (!qword_1EE1023A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1023A8);
  }

  return result;
}

unint64_t sub_1DA3D1300()
{
  result = qword_1EE1023B0;
  if (!qword_1EE1023B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1023B0);
  }

  return result;
}

unint64_t sub_1DA3D1358()
{
  result = qword_1EE1023B8;
  if (!qword_1EE1023B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1023B8);
  }

  return result;
}

unint64_t sub_1DA3D13B0()
{
  result = qword_1EE1023C0;
  if (!qword_1EE1023C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1023C0);
  }

  return result;
}

unint64_t sub_1DA3D1408()
{
  result = qword_1EE102398;
  if (!qword_1EE102398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE102398);
  }

  return result;
}

unint64_t sub_1DA3D1460()
{
  result = qword_1EE1023A0;
  if (!qword_1EE1023A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1023A0);
  }

  return result;
}

unint64_t sub_1DA3D14B8()
{
  result = qword_1EE1023E0;
  if (!qword_1EE1023E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1023E0);
  }

  return result;
}

unint64_t sub_1DA3D1510()
{
  result = qword_1EE1023E8;
  if (!qword_1EE1023E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1023E8);
  }

  return result;
}

unint64_t sub_1DA3D1568()
{
  result = qword_1EE102988;
  if (!qword_1EE102988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE102988);
  }

  return result;
}

unint64_t sub_1DA3D15C0()
{
  result = qword_1EE102990;
  if (!qword_1EE102990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE102990);
  }

  return result;
}

unint64_t sub_1DA3D1618()
{
  result = qword_1EE1026B8;
  if (!qword_1EE1026B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1026B8);
  }

  return result;
}

unint64_t sub_1DA3D1670()
{
  result = qword_1EE1026C0;
  if (!qword_1EE1026C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1026C0);
  }

  return result;
}

unint64_t sub_1DA3D16C8()
{
  result = qword_1EE102680;
  if (!qword_1EE102680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE102680);
  }

  return result;
}

unint64_t sub_1DA3D1720()
{
  result = qword_1EE102688;
  if (!qword_1EE102688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE102688);
  }

  return result;
}

unint64_t sub_1DA3D1778()
{
  result = qword_1EE1026A8;
  if (!qword_1EE1026A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1026A8);
  }

  return result;
}

unint64_t sub_1DA3D17D0()
{
  result = qword_1EE1026B0;
  if (!qword_1EE1026B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1026B0);
  }

  return result;
}

unint64_t sub_1DA3D1828()
{
  result = qword_1EE1026C8;
  if (!qword_1EE1026C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1026C8);
  }

  return result;
}

unint64_t sub_1DA3D1880()
{
  result = qword_1EE1026D0;
  if (!qword_1EE1026D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1026D0);
  }

  return result;
}

unint64_t sub_1DA3D18D8()
{
  result = qword_1EE102698;
  if (!qword_1EE102698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE102698);
  }

  return result;
}

unint64_t sub_1DA3D1930()
{
  result = qword_1EE1026A0;
  if (!qword_1EE1026A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1026A0);
  }

  return result;
}

unint64_t sub_1DA3D1988()
{
  result = qword_1EE1026D8;
  if (!qword_1EE1026D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1026D8);
  }

  return result;
}

unint64_t sub_1DA3D19E0()
{
  result = qword_1EE1026E0;
  if (!qword_1EE1026E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1026E0);
  }

  return result;
}

unint64_t sub_1DA3D1A38()
{
  result = qword_1EE1026E8;
  if (!qword_1EE1026E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1026E8);
  }

  return result;
}

unint64_t sub_1DA3D1A90()
{
  result = qword_1EE1026F0;
  if (!qword_1EE1026F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1026F0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_9()
{
  v2 = *(v1 - 112);
  v3 = *(v1 - 72);
  return v0;
}

uint64_t OUTLINED_FUNCTION_3_10()
{

  return sub_1DA422244();
}

uint64_t OUTLINED_FUNCTION_9_7()
{

  return sub_1DA4222B4();
}

uint64_t OUTLINED_FUNCTION_14_1()
{
  v2 = *(v0 - 200);

  return sub_1DA422244();
}

unint64_t OUTLINED_FUNCTION_15_0()
{
  *(v1 - 96) = *(v1 - 128);
  *(v1 - 88) = v0;

  return sub_1DA3CF678();
}

uint64_t OUTLINED_FUNCTION_19_2()
{
  v2 = *(v0 - 104);

  return sub_1DA422334();
}

uint64_t OUTLINED_FUNCTION_23_1()
{

  return sub_1DA4220E4();
}

_BYTE *storeEnumTagSinglePayload for AudioServiceError(_BYTE *result, int a2, int a3)
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

unint64_t sub_1DA3D1DD8()
{
  result = qword_1ECBAF250;
  if (!qword_1ECBAF250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAF250);
  }

  return result;
}

uint64_t SiriSuggestionsIntelligence.UserSegmentsFeatureExtractor.extract(_:)()
{
  v1[2] = v0;
  v2 = sub_1DA4214A4();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DA3D1F28, 0, 0);
}

uint64_t sub_1DA3D1F28()
{
  v1 = v0[5];
  v2 = v0[2];
  v3 = *(v2 + 24);
  (*(v2 + 16))();
  v4 = v0[5];
  v5 = v0[3];
  v6 = v0[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBAEA40, &qword_1DA423328);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1DA4238F0;
  static SiriSuggestionsIntelligence.createUserSegmentFeature(summary:)(v4, v7 + 32);
  (*(v6 + 8))(v4, v5);

  v8 = v0[1];

  return v8(v7);
}

void static SiriSuggestionsIntelligence.createUserSegmentFeature(summary:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = sub_1DA4214C4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(sub_1DA4214F4() + 16);

  v12 = *(sub_1DA4214B4() + 16);

  v44 = v11;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    goto LABEL_32;
  }

  v50 = sub_1DA4214B4();
  v3 = sub_1DA3B493C(v14, 0.0);
  v15 = sub_1DA4214F4();
  MEMORY[0x1EEE9AC00](v15);
  v43 = a1;
  *(&v41 - 2) = a1;
  v2 = sub_1DA3D27C0(sub_1DA3D27A0, (&v41 - 4), v15);
  v17 = v16;

  v42 = a2;
  if (v17)
  {
    goto LABEL_7;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_33;
  }

  while ((v2 & 0x8000000000000000) == 0)
  {
    if (v2 >= *(v3 + 16))
    {
      goto LABEL_35;
    }

    *(v3 + 8 * v2 + 32) = 0x3FF0000000000000;
LABEL_7:
    v18 = sub_1DA421484();
    v19 = 0;
    v20 = v18 + 56;
    v21 = 1 << *(v18 + 32);
    v22 = -1;
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    v23 = v22 & *(v18 + 56);
    v24 = (v21 + 63) >> 6;
    v48 = v7 + 16;
    v49 = v18;
    v46 = v18 + 56;
    v47 = v7 + 8;
    v45 = v24;
    while (1)
    {
      v25 = v19;
      v51 = v3;
      if (!v23)
      {
        goto LABEL_12;
      }

LABEL_11:
      v19 = v25;
LABEL_15:
      v26 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
      v3 = *(v7 + 72);
      (*(v7 + 16))(v10, *(v49 + 48) + v3 * (v26 | (v19 << 6)), v6);
      v27 = 0;
      v28 = v50;
      v2 = *(v50 + 16);
      while (1)
      {
        if (v2 == v27)
        {
          v30 = OUTLINED_FUNCTION_0_10();
          v31(v30);
          v25 = v19;
          v3 = v51;
          v24 = v45;
          v20 = v46;
          if (v23)
          {
            goto LABEL_11;
          }

LABEL_12:
          while (1)
          {
            v19 = v25 + 1;
            if (__OFADD__(v25, 1))
            {
              break;
            }

            if (v19 >= v24)
            {

              v36 = sub_1DA4214A4();
              v37 = v42;
              *(v42 + 40) = v36;
              v38 = MEMORY[0x1E69D3358];
              *(v37 + 48) = sub_1DA3D28A4(&qword_1ECBAF260, MEMORY[0x1E69D3358]);
              *(v37 + 56) = sub_1DA3D28A4(&qword_1ECBAF268, v38);
              boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v37 + 16));
              (*(*(v36 - 8) + 16))(boxed_opaque_existential_1, v43, v36);
              strcpy(v37, "userSegments");
              *(v37 + 13) = 0;
              *(v37 + 14) = -5120;
              *(v37 + 64) = v3;
              return;
            }

            v23 = *(v20 + 8 * v19);
            ++v25;
            if (v23)
            {
              goto LABEL_15;
            }
          }

          __break(1u);
LABEL_29:
          __break(1u);
          goto LABEL_30;
        }

        v29 = (*(v7 + 80) + 32) & ~*(v7 + 80);
        sub_1DA3D28A4(&qword_1ECBAF258, MEMORY[0x1E69D3370]);
        if (sub_1DA421B54())
        {
          break;
        }

        ++v27;
        v28 += v3;
      }

      v32 = OUTLINED_FUNCTION_0_10();
      v33(v32);
      v34 = v27 + v44;
      if (__OFADD__(v27, v44))
      {
        goto LABEL_29;
      }

      v3 = v51;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1DA3B5D1C(v3);
        v3 = v35;
      }

      v24 = v45;
      v20 = v46;
      if ((v34 & 0x8000000000000000) != 0)
      {
        break;
      }

      if (v34 >= *(v3 + 16))
      {
        goto LABEL_31;
      }

      *(v3 + 8 * v34 + 32) = 0x3FF0000000000000;
    }

LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    sub_1DA3B5D1C(v3);
    v3 = v40;
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

uint64_t SiriSuggestionsIntelligence.UserSegmentsFeatureExtractor.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t SiriSuggestionsIntelligence.UserSegmentsFeatureExtractor.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t sub_1DA3D2524()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DA3D25B4;

  return SiriSuggestionsIntelligence.UserSegmentsFeatureExtractor.extract(_:)();
}

uint64_t sub_1DA3D25B4(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t sub_1DA3D26B4(uint64_t a1)
{
  v2 = sub_1DA421514();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DA421494();
  v7 = sub_1DA408978(a1, v6);
  (*(v3 + 8))(v6, v2);
  return v7 & 1;
}

uint64_t sub_1DA3D27C0(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = *(a3 + 16);
  while (1)
  {
    if (v7 == v6)
    {
      return 0;
    }

    v8 = *(sub_1DA421514() - 8);
    result = a1(a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v6);
    if (v3)
    {
      return result;
    }

    if (result)
    {
      break;
    }

    ++v6;
  }

  return v6;
}

uint64_t sub_1DA3D28A4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t SiriSuggestionsIntelligence.BiomeAppDataExtractor.__allocating_init(clock:)(uint64_t a1)
{
  sub_1DA3A7ED4(a1, v4);
  v1 = swift_allocObject();
  sub_1DA3A1FF8(v4, v1 + 16);
  OUTLINED_FUNCTION_0_11();
  v2 = swift_allocObject();
  v2[2] = sub_1DA3D3088;
  v2[3] = v1;
  v2[4] = sub_1DA3D30E8;
  v2[5] = 0;
  return OUTLINED_FUNCTION_3_11(v2);
}

uint64_t sub_1DA3D29B8()
{
  v1 = sub_1DA4210B4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DA3D36D0();
  v65 = sub_1DA421AE4();
  v54 = v0;
  v6 = *(v0 + 16);
  v7 = *(v0 + 24);
  v6(v62);
  v8 = v63;
  v9 = v64;
  __swift_project_boxed_opaque_existential_1(v62, v63);
  (*(v9 + 16))(v8, v9);
  sub_1DA421024();
  sub_1DA421094();
  v11 = v10;
  v12 = *(v2 + 8);
  v51 = v5;
  v53 = v1;
  v52 = v2 + 8;
  v50 = v12;
  v12(v5, v1);
  if (qword_1EE102E00 != -1)
  {
    swift_once();
  }

  v13 = sub_1DA421A94();
  v55 = __swift_project_value_buffer(v13, static Logger.extractionCategory);
  v14 = sub_1DA421A74();
  v15 = sub_1DA421F64();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 134217984;
    *(v16 + 4) = v11;
    _os_log_impl(&dword_1DA39E000, v14, v15, "Using startDate: %f", v16, 0xCu);
    MEMORY[0x1DA74E430](v16, -1, -1);
  }

  v61[0] = 0;
  v61[1] = 0xE000000000000000;
  sub_1DA422094();
  MEMORY[0x1DA74D370](0xD0000000000001A1, 0x80000001DA42D850);
  OUTLINED_FUNCTION_2_10();
  MEMORY[0x1DA74D370](0xD00000000000013DLL, 0x80000001DA42DA00);
  OUTLINED_FUNCTION_2_10();
  v17 = MEMORY[0x1DA74D370](0xD000000000000046, 0x80000001DA42DB40);
  v18 = *(v54 + 40);
  v19 = (*(v54 + 32))(v17);
  v20 = sub_1DA421F44();

  v21 = sub_1DA421A74();
  v22 = sub_1DA421F64();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_1DA39E000, v21, v22, "BiomeAppDataExtractor:: Executing", v23, 2u);
    MEMORY[0x1DA74E430](v23, -1, -1);
  }

  sub_1DA3A7ED4(v62, v61);
  sub_1DA3A7ED4(v62, v58);
  while (1)
  {
    if (![v20 next])
    {
      v45 = *(v54 + 80);
      __swift_project_boxed_opaque_existential_1((v54 + 48), *(v54 + 72));
      sub_1DA421934();
      v39 = v51;
      sub_1DA421024();
      sub_1DA421094();
      v47 = v46;
      v50(v39, v53);
      v48 = v56;
      sub_1DA3D3534(2, 0, 2, v61, &v65, v47);
      __swift_destroy_boxed_opaque_existential_0(v61);

      if (!v48)
      {
        __swift_destroy_boxed_opaque_existential_0(v58);
        swift_beginAccess();
        v39 = v65;
        __swift_destroy_boxed_opaque_existential_0(v62);
        return v39;
      }

LABEL_23:

      __swift_destroy_boxed_opaque_existential_0(v58);
      __swift_destroy_boxed_opaque_existential_0(v62);
      return v39;
    }

    v24 = MEMORY[0x1DA74DD10]();
    v25 = sub_1DA3D3B8C(v20);
    if (v25)
    {
      v26 = sub_1DA3D31A4(v25);
      v28 = v27;
      v30 = v29;
      v32 = v31;
      v33 = ~v29;

      if (v33)
      {
        break;
      }
    }

    v34 = sub_1DA421A74();
    v35 = sub_1DA421F64();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_1DA39E000, v34, v35, "BiomeAppDataExtractor:: NO ROW!!!", v36, 2u);
      MEMORY[0x1DA74E430](v36, -1, -1);
    }

LABEL_19:
    objc_autoreleasePoolPop(v24);
  }

  v38 = v59;
  v37 = v60;
  v39 = __swift_project_boxed_opaque_existential_1(v58, v59);
  v40 = v56;
  v41 = (*(v37 + 8))(v26, v28, v30, v38, v37, v32);
  v56 = v40;
  if (v40)
  {
    __swift_destroy_boxed_opaque_existential_0(v61);
    OUTLINED_FUNCTION_1_10();
    objc_autoreleasePoolPop(v24);

    goto LABEL_23;
  }

  v42 = v41;
  if (!v41)
  {
    OUTLINED_FUNCTION_1_10();
    goto LABEL_19;
  }

  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v57 = v65;
  v44 = v56;
  sub_1DA3D3724(v42, sub_1DA3D3C24, 0, isUniquelyReferenced_nonNull_native, &v57);
  v56 = v44;
  if (!v44)
  {
    v65 = v57;
    swift_endAccess();
    OUTLINED_FUNCTION_1_10();

    goto LABEL_19;
  }

  result = swift_endAccess();
  __break(1u);
  return result;
}

uint64_t sub_1DA3D3024@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for SiriSuggestionsIntelligence.AppTransitionStateMachine();
  sub_1DA3A7ED4(a1, v6);
  result = SiriSuggestionsIntelligence.AppTransitionStateMachine.__allocating_init(clock:)(v6);
  a2[3] = v4;
  a2[4] = &protocol witness table for SiriSuggestionsIntelligence.AppTransitionStateMachine;
  *a2 = result;
  return result;
}

uint64_t SiriSuggestionsIntelligence.BiomeAppDataExtractor.__allocating_init(stateMachineProvider:clock:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_0_11();
  v4 = swift_allocObject();
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = sub_1DA3D30E8;
  v4[5] = 0;
  return OUTLINED_FUNCTION_3_11(v4);
}

id sub_1DA3D30E8()
{
  v0 = objc_allocWithZone(MEMORY[0x1E698F2E0]);

  return [v0 init];
}

uint64_t SiriSuggestionsIntelligence.BiomeAppDataExtractor.__allocating_init(stateMachineProvider:database:clock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_0_11();
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  v8[5] = a4;
  return OUTLINED_FUNCTION_3_11(v8);
}

void *SiriSuggestionsIntelligence.BiomeAppDataExtractor.init(stateMachineProvider:database:clock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5)
{
  v5[2] = a1;
  v5[3] = a2;
  v5[4] = a3;
  v5[5] = a4;
  sub_1DA3A1FF8(a5, (v5 + 6));
  return v5;
}

uint64_t sub_1DA3D31A4(uint64_t a1)
{
  strcpy(&v19, "bundleID");
  BYTE9(v19) = 0;
  WORD5(v19) = 0;
  HIDWORD(v19) = -402653184;
  sub_1DA422044();
  sub_1DA3EA288(v18, a1, &v19);
  sub_1DA3B8210(v18);
  if (v20)
  {
    v2 = swift_dynamicCast();
    if (v2)
    {
      v3 = v16;
    }

    else
    {
      v3 = 0;
    }

    if (v2)
    {
      v4 = v17;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    sub_1DA3A8CA8(&v19, &qword_1ECBAF270, &qword_1DA429440);
    v3 = 0;
    v4 = 0;
  }

  strcpy(&v19, "eventTimestamp");
  HIBYTE(v19) = -18;
  sub_1DA422044();
  sub_1DA3EA288(v18, a1, &v19);
  sub_1DA3B8210(v18);
  if (v20)
  {
    v5 = swift_dynamicCast() ^ 1;
  }

  else
  {
    sub_1DA3A8CA8(&v19, &qword_1ECBAF270, &qword_1DA429440);
    v5 = 1;
  }

  sub_1DA422044();
  sub_1DA3EA288(v18, a1, &v19);
  sub_1DA3B8210(v18);
  if (v20)
  {
    if (swift_dynamicCast())
    {
      v6 = sub_1DA421EE4();
      v7 = sub_1DA421DC4();

      v8 = v7 & 1;
      if (!v4)
      {
        goto LABEL_23;
      }

      goto LABEL_18;
    }
  }

  else
  {
    sub_1DA3A8CA8(&v19, &qword_1ECBAF270, &qword_1DA429440);
  }

  v8 = 2;
  if (!v4)
  {
LABEL_23:
    if (qword_1EE102E00 != -1)
    {
      swift_once();
    }

    v10 = sub_1DA421A94();
    __swift_project_value_buffer(v10, static Logger.extractionCategory);
    v11 = sub_1DA421A74();
    v12 = sub_1DA421F74();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1DA39E000, v11, v12, "BiomeAppDataExtractor:: row does not have the required properties to proceed", v13, 2u);
      MEMORY[0x1DA74E430](v13, -1, -1);
    }

    return 0;
  }

LABEL_18:
  if (v8 == 2)
  {
    v9 = 1;
  }

  else
  {
    v9 = v5;
  }

  if (v9)
  {

    goto LABEL_23;
  }

  v14 = v3 == 0x64656B636F6CLL && v4 == 0xE600000000000000;
  if (v14 || (sub_1DA4223A4() & 1) != 0)
  {

    return ~v8 & 1;
  }

  return v3;
}

uint64_t sub_1DA3D3534(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5, double a6)
{
  v12 = a4[3];
  v13 = a4[4];
  __swift_project_boxed_opaque_existential_1(a4, v12);
  result = (*(v13 + 8))(a1, a2, a3, v12, v13, a6);
  if (!v6)
  {
    if (result)
    {
      swift_beginAccess();

      sub_1DA3D3B18(v15, sub_1DA3D3C24, 0, a5);
      swift_endAccess();
    }
  }

  return result;
}

void *SiriSuggestionsIntelligence.BiomeAppDataExtractor.deinit()
{
  v1 = v0[3];

  v2 = v0[5];

  __swift_destroy_boxed_opaque_existential_0(v0 + 6);
  return v0;
}

uint64_t SiriSuggestionsIntelligence.BiomeAppDataExtractor.__deallocating_deinit()
{
  SiriSuggestionsIntelligence.BiomeAppDataExtractor.deinit();
  v0 = OUTLINED_FUNCTION_0_11();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

unint64_t sub_1DA3D36D0()
{
  result = qword_1EE101ED0;
  if (!qword_1EE101ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE101ED0);
  }

  return result;
}

uint64_t sub_1DA3D3724(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v74 = a5;
  sub_1DA3D3CE0(a1, a2, a3, v69);
  v6 = v69[1];
  v7 = v69[3];
  v8 = v69[4];
  v58 = v69[5];
  v59 = v69[0];
  v9 = (v69[2] + 64) >> 6;

  v56 = v9;
  v57 = v6;
  while (1)
  {
    v10 = v8;
    v11 = v7;
    if (!v8)
    {
      break;
    }

LABEL_7:
    v13 = __clz(__rbit64(v10)) | (v11 << 6);
    v14 = *(v59 + 48) + 56 * v13;
    v15 = *(v14 + 8);
    v16 = *(v14 + 32);
    v18 = *(v14 + 40);
    v17 = *(v14 + 48);
    v19 = (*(v59 + 56) + 32 * v13);
    v20 = *v19;
    v21 = v19[1];
    v22 = v19[2];
    v23 = v19[3];
    *__src = *v14;
    *&__src[8] = v15;
    *&__src[16] = *(v14 + 16);
    __src[32] = v16;
    *&__src[40] = v18;
    *&__src[48] = v17;
    *&__src[56] = v20;
    *&__src[64] = v21;
    *&__src[72] = v22;
    *&__src[80] = v23;

    v58(v63, __src);
    memcpy(__dst, __src, sizeof(__dst));
    sub_1DA3A8CA8(__dst, &qword_1ECBAEEA8, &qword_1DA424728);
    if (!*(&v63[0] + 1))
    {
LABEL_20:
      sub_1DA3BFA40();
    }

    v70 = v63[0];
    v71 = v63[1];
    v72 = v63[2];
    v24 = v65;
    v73 = v64;
    v25 = v66;
    v26 = v67;
    v27 = v68;
    v28 = *v74;
    v30 = sub_1DA3B7618();
    v31 = *(v28 + 16);
    v32 = (v29 & 1) == 0;
    v33 = v31 + v32;
    if (__OFADD__(v31, v32))
    {
      goto LABEL_22;
    }

    v34 = v29;
    if (*(v28 + 24) >= v33)
    {
      if ((a4 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEE78, &qword_1DA4246F0);
        sub_1DA4221B4();
      }
    }

    else
    {
      v35 = v74;
      sub_1DA3D6290(v33, a4 & 1);
      v36 = *v35;
      v37 = sub_1DA3B7618();
      if ((v34 & 1) != (v38 & 1))
      {
        goto LABEL_25;
      }

      v30 = v37;
    }

    v60 = (v10 - 1) & v10;
    v39 = *v74;
    if (v34)
    {
      v40 = v39[7] + 32 * v30;
      v42 = *v40;
      v41 = *(v40 + 8);
      v43 = *(v40 + 16);
      v44 = *(v40 + 24);

      sub_1DA3BF9EC(&v70);
      if (__OFADD__(v43, v26))
      {
        goto LABEL_23;
      }

      v45 = v39[7] + 32 * v30;
      v46 = *(v45 + 8);
      *v45 = v42;
      *(v45 + 8) = v41;
      *(v45 + 16) = v43 + v26;
      *(v45 + 24) = v27 + v44;
    }

    else
    {
      v39[(v30 >> 6) + 8] |= 1 << v30;
      v47 = v39[6] + 56 * v30;
      v48 = v70;
      v49 = v71;
      v50 = v72;
      *(v47 + 48) = v73;
      *(v47 + 16) = v49;
      *(v47 + 32) = v50;
      *v47 = v48;
      v51 = v39[7] + 32 * v30;
      *v51 = v24;
      *(v51 + 8) = v25;
      *(v51 + 16) = v26;
      *(v51 + 24) = v27;
      v52 = v39[2];
      v53 = __OFADD__(v52, 1);
      v54 = v52 + 1;
      if (v53)
      {
        goto LABEL_24;
      }

      v39[2] = v54;
    }

    a4 = 1;
    v7 = v11;
    v9 = v56;
    v6 = v57;
    v8 = v60;
  }

  v12 = v7;
  while (1)
  {
    v11 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v11 >= v9)
    {
      goto LABEL_20;
    }

    v10 = *(v6 + 8 * v11);
    ++v12;
    if (v10)
    {
      goto LABEL_7;
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
  result = sub_1DA4223E4();
  __break(1u);
  return result;
}

double sub_1DA3D3A94(uint64_t a1, uint64_t a2, double a3)
{
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  sub_1DA3D3C84(a2, v6);

  return a3;
}

uint64_t sub_1DA3D3B18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = *a4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *a4;
  result = sub_1DA3D3724(a1, a2, a3, isUniquelyReferenced_nonNull_native, &v11);
  *a4 = v11;
  return result;
}

uint64_t sub_1DA3D3B8C(void *a1)
{
  v1 = [a1 row];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1DA421AC4();

  return v3;
}

uint64_t sub_1DA3D3BF8(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_1DA3D3C0C(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_1DA3D3C0C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

void sub_1DA3D3C24(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v3;
  v11[2] = *(a1 + 32);
  v4 = *(a1 + 56);
  v12 = *(a1 + 48);
  v5 = *(a1 + 64);
  v6 = *(a1 + 72);
  v7 = sub_1DA3D3A94(a2, v11, *(a1 + 80));
  *(a2 + 56) = v8;
  *(a2 + 64) = v9;
  *(a2 + 72) = v10;
  *(a2 + 80) = v7;
}

uint64_t sub_1DA3D3CE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
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

uint64_t OUTLINED_FUNCTION_1_10()
{

  return sub_1DA3D3BF8(v0, v2, v1);
}

uint64_t OUTLINED_FUNCTION_2_10()
{

  return sub_1DA421E94();
}

id sub_1DA3D3D8C(double a1)
{
  v11[11] = *MEMORY[0x1E69E9840];
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF280, &qword_1DA4267A8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DA4238F0;
  *(inited + 32) = 0xD000000000000012;
  *(inited + 40) = 0x80000001DA42DC00;
  v4 = [objc_opt_self() featureValueWithDouble_];
  *(inited + 72) = sub_1DA3A6990(0, &qword_1ECBAF288, 0x1E695FE60);
  *(inited + 48) = v4;
  sub_1DA421AE4();
  v5 = sub_1DA421AB4();

  v11[0] = 0;
  v6 = [v2 initWithDictionary:v5 error:v11];

  if (v6)
  {
    v7 = v11[0];
  }

  else
  {
    v8 = v11[0];
    sub_1DA420FB4();

    swift_willThrow();
  }

  v9 = *MEMORY[0x1E69E9840];
  return v6;
}

id SiriSuggestionsIntelligence.IdentityModel.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SiriSuggestionsIntelligence.IdentityModel.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SiriSuggestionsIntelligence.IdentityModel();
  return objc_msgSendSuper2(&v2, sel_init);
}

id SiriSuggestionsIntelligence.IdentityModel.__allocating_init(modelDescription:parameters:)(void *a1)
{

  v3 = [objc_allocWithZone(v1) init];

  return v3;
}

id SiriSuggestionsIntelligence.IdentityModel.init(modelDescription:parameters:)(void *a1)
{

  v3 = [v1 init];

  return v3;
}

id SiriSuggestionsIntelligence.IdentityModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SiriSuggestionsIntelligence.IdentityModel();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1DA3D4250(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBAF690, &qword_1DA4275A0);
    v3 = sub_1DA422214();
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC8];
  }

  v6 = v3;
  sub_1DA3D7FE8(a1, 1, &v6);
  v4 = v6;
  if (v1)
  {
  }

  return v4;
}

uint64_t SiriSuggestionsIntelligence.SourcedFeatureMLFeatureProvider.featureNames.getter()
{
  v1 = [*(v0 + 16) featureNames];
  v2 = sub_1DA421EB4();

  return v2;
}

MLFeatureValue_optional __swiftcall SiriSuggestionsIntelligence.SourcedFeatureMLFeatureProvider.featureValue(for:)(Swift::String a1)
{
  v2 = *(v1 + 16);
  v3 = sub_1DA421B64();
  v4 = [v2 featureValueForName_];

  v6 = v4;
  result.value.super.isa = v6;
  result.is_nil = v5;
  return result;
}

uint64_t sub_1DA3D44A0(uint64_t a1, uint64_t a2)
{
  v56 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF0A8, &unk_1DA425510);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v56 - v6;
  v59 = sub_1DA4214A4();
  v8 = OUTLINED_FUNCTION_3_1(v59);
  v58 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v57 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = 0;
  v14 = *(a1 + 16);
  v15 = a1 + 32;
  v16 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v17 = (v15 + 72 * v13);
  while (v14 != v13)
  {
    if (v13 >= v14)
    {
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      OUTLINED_FUNCTION_1_11();
      swift_once();
      goto LABEL_28;
    }

    v18 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      goto LABEL_34;
    }

    sub_1DA3D4AD0(v17, __dst);
    ++v13;
    v17 += 9;
    if (__dst[1])
    {
      v60 = *&__dst[1];
      v19 = __dst[0];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v24 = *(v16 + 2);
        OUTLINED_FUNCTION_16_1();
        sub_1DA3A5920();
        v16 = v25;
      }

      v21 = *(v16 + 2);
      v20 = *(v16 + 3);
      v22 = v60;
      if (v21 >= v20 >> 1)
      {
        OUTLINED_FUNCTION_21_3(v20);
        sub_1DA3A5920();
        v22 = v60;
        v16 = v26;
      }

      *(v16 + 2) = v21 + 1;
      v23 = &v16[6 * v21];
      *(v23 + 4) = v19;
      *(v23 + 10) = v22;
      v13 = v18;
      goto LABEL_2;
    }
  }

  v63 = v16;
  while (1)
  {
    v16 = &off_1DA423000;
    if (!v14)
    {
      break;
    }

    sub_1DA3B1C24(v15, __src);
    v27 = __src[0] == 0x6D67655372657375 && __src[1] == 0xEC00000073746E65;
    if (v27 || (sub_1DA4223A4() & 1) != 0)
    {
      memcpy(__dst, __src, 0x48uLL);
      sub_1DA3B239C(&__dst[2], __src);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEDA0, &unk_1DA423DB0);
      v28 = v59;
      if (swift_dynamicCast())
      {
        __swift_storeEnumTagSinglePayload(v7, 0, 1, v28);
        v29 = v58;
        v30 = v57;
        (*(v58 + 32))(v57, v7, v28);
        v31 = sub_1DA3D5444();
        if (qword_1ECBAE838 != -1)
        {
          OUTLINED_FUNCTION_1_11();
          swift_once();
        }

        v32 = sub_1DA421A94();
        __swift_project_value_buffer(v32, static Logger.inferenceCategory);

        v33 = sub_1DA421A74();
        v34 = sub_1DA421F64();

        if (os_log_type_enabled(v33, v34))
        {
          OUTLINED_FUNCTION_22_0();
          v35 = swift_slowAlloc();
          OUTLINED_FUNCTION_2_2();
          v36 = swift_slowAlloc();
          *&v60 = v31;
          v37 = v36;
          __src[0] = v36;
          *v35 = 136315138;
          v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEA00, &qword_1DA4232E8);
          v39 = MEMORY[0x1DA74D4B0](v60, v38);
          v41 = sub_1DA3A5FE8(v39, v40, __src);
          v28 = v59;

          *(v35 + 4) = v41;
          _os_log_impl(&dword_1DA39E000, v33, v34, "Expanding and adding user segment features %s", v35, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v37);
          v31 = v60;
          OUTLINED_FUNCTION_18_0();
          MEMORY[0x1DA74E430]();
          v30 = v57;
          v29 = v58;
          OUTLINED_FUNCTION_18_0();
          MEMORY[0x1DA74E430]();
        }

        sub_1DA3BD0A0(v31);
        (*(v29 + 8))(v30, v28);
        sub_1DA3B1C80(__dst);
      }

      else
      {
        sub_1DA3B1C80(__dst);
        __swift_storeEnumTagSinglePayload(v7, 1, 1, v28);
        sub_1DA3D9980(v7);
      }

      break;
    }

    sub_1DA3B1C80(__src);
    v15 += 72;
    --v14;
  }

  if (qword_1ECBAE838 != -1)
  {
    goto LABEL_35;
  }

LABEL_28:
  v42 = sub_1DA421A94();
  __swift_project_value_buffer(v42, static Logger.inferenceCategory);
  v43 = v63;

  v44 = sub_1DA421A74();
  v45 = sub_1DA421F64();

  if (os_log_type_enabled(v44, v45))
  {
    OUTLINED_FUNCTION_22_0();
    v46 = swift_slowAlloc();
    OUTLINED_FUNCTION_2_2();
    v47 = swift_slowAlloc();
    __dst[0] = v47;
    *v46 = *(v16 + 40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEA00, &qword_1DA4232E8);
    v48 = sub_1DA421784();
    v50 = sub_1DA3A5FE8(v48, v49, __dst);

    *(v46 + 4) = v50;
    _os_log_impl(&dword_1DA39E000, v44, v45, "features mapped to coreML: %s", v46, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v47);
    OUTLINED_FUNCTION_18_0();
    MEMORY[0x1DA74E430]();
    OUTLINED_FUNCTION_18_0();
    MEMORY[0x1DA74E430]();
  }

  v51 = sub_1DA3D4250(v43);
  sub_1DA3DED4C(v51);

  v52 = objc_allocWithZone(MEMORY[0x1E695FE48]);
  OUTLINED_FUNCTION_17_3();
  v53 = sub_1DA3E24DC();
  if (!v2)
  {
    v54 = v53;
    type metadata accessor for SiriSuggestionsIntelligence.SourcedFeatureMLFeatureProvider();
    v2 = swift_allocObject();
    *(v2 + 16) = v54;
    *(v2 + 24) = v56;
  }

  return v2;
}

uint64_t sub_1DA3D4AD0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  if (qword_1ECBAE838 != -1)
  {
    swift_once();
  }

  v4 = sub_1DA421A94();
  __swift_project_value_buffer(v4, static Logger.inferenceCategory);
  sub_1DA3B1C24(a1, v21);
  sub_1DA3B1C24(a1, v20);
  v5 = sub_1DA421A74();
  v6 = sub_1DA421F64();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v22 = v8;
    *v7 = 136315394;
    v9 = v21[0];
    v10 = v21[1];

    sub_1DA3B1C80(v21);
    v11 = sub_1DA3A5FE8(v9, v10, &v22);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    sub_1DA3B1DE4();
    v12 = sub_1DA421B14();
    v14 = v13;
    sub_1DA3B1C80(v20);
    v15 = sub_1DA3A5FE8(v12, v14, &v22);

    *(v7 + 14) = v15;
    _os_log_impl(&dword_1DA39E000, v5, v6, "feature %s , %s, ", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1DA74E430](v8, -1, -1);
    MEMORY[0x1DA74E430](v7, -1, -1);
  }

  else
  {

    sub_1DA3B1C80(v20);
    sub_1DA3B1C80(v21);
  }

  result = sub_1DA3D4CF8();
  v17 = result;
  if (result)
  {
    v19 = *a1;
    v18 = a1[1];
  }

  else
  {
    v19 = 0;
  }

  *a2 = v19;
  a2[1] = result;
  a2[2] = v17;
  return result;
}

uint64_t sub_1DA3D4CF8()
{
  sub_1DA3B239C(v0 + 16, v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEDA0, &unk_1DA423DB0);
  if (OUTLINED_FUNCTION_3_12())
  {
    sub_1DA3A6990(0, &qword_1ECBAF288, 0x1E695FE60);
    SiriSuggestionsIntelligence.MotionActivity.description.getter(v26, BYTE8(v26));
LABEL_8:
    v1 = sub_1DA3D5B9C();
LABEL_9:
    v2 = v1;
    goto LABEL_10;
  }

  if (OUTLINED_FUNCTION_3_12())
  {
    sub_1DA3A6990(0, &qword_1ECBAF288, 0x1E695FE60);
    v21 = v26;
    v22 = v27;
    v23 = *&v28;
    *&v24 = v29;
    sub_1DA3D9A3C();
    sub_1DA421B14();
    sub_1DA3CCA5C(v26, *(&v26 + 1));
    goto LABEL_8;
  }

  if (OUTLINED_FUNCTION_3_12())
  {
    sub_1DA3A6990(0, &qword_1ECBAF288, 0x1E695FE60);
    LOBYTE(v21) = v26;
    sub_1DA3B6298();
LABEL_7:
    sub_1DA421B14();
    goto LABEL_8;
  }

  if (OUTLINED_FUNCTION_3_12())
  {
    v4 = [objc_opt_self() featureValueWithInt64_];
LABEL_13:
    v1 = v4;
    goto LABEL_9;
  }

  if (OUTLINED_FUNCTION_3_12())
  {
    sub_1DA3A6990(0, &qword_1ECBAF288, 0x1E695FE60);
    *&v21 = v26;
    BYTE8(v21) = BYTE8(v26);
    sub_1DA3B6340();
    goto LABEL_7;
  }

  if (OUTLINED_FUNCTION_3_12())
  {
    sub_1DA3A6990(0, &qword_1ECBAF288, 0x1E695FE60);
    *&v21 = v26;
    BYTE8(v21) = BYTE8(v26);
    sub_1DA3D99E8();
    goto LABEL_7;
  }

  if (OUTLINED_FUNCTION_3_12())
  {
    sub_1DA3A6990(0, &qword_1ECBAF288, 0x1E695FE60);
    v5 = OUTLINED_FUNCTION_39();
    SiriSuggestionsIntelligence.FocusMode.description.getter(v5, v6);

    goto LABEL_8;
  }

  if (OUTLINED_FUNCTION_3_12())
  {
    sub_1DA3A6990(0, &qword_1ECBAF288, 0x1E695FE60);
    goto LABEL_8;
  }

  if (OUTLINED_FUNCTION_3_12())
  {
    v4 = [objc_opt_self() featureValueWithDouble_];
    goto LABEL_13;
  }

  if (OUTLINED_FUNCTION_3_12() || OUTLINED_FUNCTION_3_12())
  {
    sub_1DA3A6990(0, &qword_1ECBAF288, 0x1E695FE60);
    OUTLINED_FUNCTION_39();
    goto LABEL_8;
  }

  if (OUTLINED_FUNCTION_3_12() || OUTLINED_FUNCTION_3_12())
  {
    v4 = [objc_opt_self() featureValueWithInt64_];
    goto LABEL_13;
  }

  if (OUTLINED_FUNCTION_3_12())
  {
    sub_1DA3A6990(0, &qword_1ECBAF288, 0x1E695FE60);
    v7 = OUTLINED_FUNCTION_39();
    v9 = sub_1DA3F3DE4(v28, v7, v8, v27);

    sub_1DA3DEF90(v9);

    v1 = sub_1DA3D5C00();
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF290, &qword_1DA426840);
  if (OUTLINED_FUNCTION_3_12())
  {
    sub_1DA3A1FF8(&v26, &v21);
    v10 = v23;
    v11 = v24;
    __swift_project_boxed_opaque_existential_1(&v21, v23);
    v2 = (*(v11 + 8))(v10, v11);
    __swift_destroy_boxed_opaque_existential_0(&v21);
  }

  else
  {
    if (qword_1ECBAE838 != -1)
    {
      OUTLINED_FUNCTION_1_11();
      swift_once();
    }

    v12 = sub_1DA421A94();
    __swift_project_value_buffer(v12, static Logger.inferenceCategory);
    sub_1DA3B1C24(v0, &v26);
    v13 = sub_1DA421A74();
    v14 = sub_1DA421F74();
    if (os_log_type_enabled(v13, v14))
    {
      OUTLINED_FUNCTION_22_0();
      v15 = swift_slowAlloc();
      OUTLINED_FUNCTION_2_2();
      v16 = swift_slowAlloc();
      v25 = v16;
      *v15 = 136315138;
      sub_1DA3B239C(&v27, &v21);
      __swift_project_boxed_opaque_existential_1(&v21, v23);
      swift_getDynamicType();
      __swift_destroy_boxed_opaque_existential_0(&v21);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF298, &qword_1DA426848);
      v17 = sub_1DA421BB4();
      v19 = v18;
      sub_1DA3B1C80(&v26);
      v20 = sub_1DA3A5FE8(v17, v19, &v25);

      *(v15 + 4) = v20;
      _os_log_impl(&dword_1DA39E000, v13, v14, "Unable to convert value of type: %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      OUTLINED_FUNCTION_18_0();
      MEMORY[0x1DA74E430]();
      OUTLINED_FUNCTION_18_0();
      MEMORY[0x1DA74E430]();
    }

    else
    {

      sub_1DA3B1C80(&v26);
    }

    v2 = 0;
  }

LABEL_10:
  __swift_destroy_boxed_opaque_existential_0(v30);
  return v2;
}

uint64_t sub_1DA3D5444()
{
  v73 = sub_1DA421514();
  v1 = OUTLINED_FUNCTION_3_1(v73);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v7 = v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1DA4214F4();
  v9 = *(v8 + 16);
  if (v9)
  {
    v68[1] = v0;
    v74[0] = MEMORY[0x1E69E7CC0];
    sub_1DA3B0320(0, v9, 0);
    v10 = v74[0];
    v69 = v3;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v13 = *(v11 + 64);
    v68[0] = v8;
    v14 = v8 + ((v13 + 32) & ~v13);
    v70 = *(v11 + 56);
    v71 = v12;
    v72 = v11;
    v15 = (v11 - 8);
    do
    {
      v16 = v73;
      v71(v7, v14, v73);
      v17 = sub_1DA421504();
      v19 = v18;
      (*v15)(v7, v16);
      v74[0] = v10;
      v21 = *(v10 + 16);
      v20 = *(v10 + 24);
      if (v21 >= v20 >> 1)
      {
        v23 = OUTLINED_FUNCTION_21_3(v20);
        sub_1DA3B0320(v23, v21 + 1, 1);
        v10 = v74[0];
      }

      *(v10 + 16) = v21 + 1;
      v22 = v10 + 24 * v21;
      *(v22 + 32) = v17;
      *(v22 + 40) = v19;
      *(v22 + 48) = 0;
      v14 += v70;
      --v9;
    }

    while (v9);

    v3 = v69;
  }

  else
  {

    v10 = MEMORY[0x1E69E7CC0];
  }

  v24 = sub_1DA3D5A20(v10, &qword_1ECBAF2A8, &qword_1DA426850, sub_1DA3D7D14);
  sub_1DA421494();
  v25 = sub_1DA421504();
  v27 = v26;
  (*(v3 + 8))(v7, v73);
  swift_isUniquelyReferenced_nonNull_native();
  v74[0] = v24;
  sub_1DA3E28C0(1, v25, v27);

  v28 = v74[0];
  v30 = *(v74[0] + 64);
  v29 = v74[0] + 64;
  v31 = 1 << *(v74[0] + 32);
  OUTLINED_FUNCTION_30_1();
  v34 = v33 & v32;
  v36 = (v35 + 63) >> 6;

  v37 = 0;
  v73 = MEMORY[0x1E69E7CC0];
  v38 = MEMORY[0x1E69E6390];
  v39 = MEMORY[0x1E69E6378];
  while (1)
  {
    v40 = v37;
    if (!v34)
    {
      break;
    }

LABEL_13:
    v41 = __clz(__rbit64(v34)) | (v37 << 6);
    v42 = (*(v28 + 48) + 16 * v41);
    v44 = *v42;
    v43 = v42[1];
    LOBYTE(v41) = *(*(v28 + 56) + v41);
    v34 &= v34 - 1;
    v76 = MEMORY[0x1E69E6370];
    v77 = v38;
    v75 = v41;
    v74[0] = v44;
    v74[1] = v43;
    v78 = v39;
    v79 = 0;
    swift_bridgeObjectRetain_n();
    v45 = sub_1DA3D4CF8();
    sub_1DA3B1C80(v74);
    if (v45)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v51 = *(v73 + 16);
        OUTLINED_FUNCTION_16_1();
        sub_1DA3A5920();
        v73 = v52;
      }

      v47 = *(v73 + 16);
      v46 = *(v73 + 24);
      v48 = v47 + 1;
      if (v47 >= v46 >> 1)
      {
        OUTLINED_FUNCTION_21_3(v46);
        v71 = v54;
        v72 = v53;
        sub_1DA3A5920();
        v47 = v71;
        v48 = v72;
        v73 = v55;
      }

      v49 = v73;
      *(v73 + 16) = v48;
      v50 = (v49 + 24 * v47);
      v50[4] = v44;
      v50[5] = v43;
      v50[6] = v45;
    }

    else
    {
    }
  }

  while (1)
  {
    v37 = v40 + 1;
    if (__OFADD__(v40, 1))
    {
      __break(1u);
      goto LABEL_26;
    }

    if (v37 >= v36)
    {
      break;
    }

    v34 = *(v29 + 8 * v37);
    ++v40;
    if (v34)
    {
      goto LABEL_13;
    }
  }

  if (qword_1ECBAE838 == -1)
  {
    goto LABEL_21;
  }

LABEL_26:
  OUTLINED_FUNCTION_1_11();
  swift_once();
LABEL_21:
  v56 = sub_1DA421A94();
  __swift_project_value_buffer(v56, static Logger.inferenceCategory);

  v57 = sub_1DA421A74();
  v58 = sub_1DA421F64();

  if (os_log_type_enabled(v57, v58))
  {
    OUTLINED_FUNCTION_22_0();
    v59 = swift_slowAlloc();
    OUTLINED_FUNCTION_2_2();
    v60 = swift_slowAlloc();
    v74[0] = v60;
    *v59 = 136315138;
    v61 = sub_1DA421AF4();
    v63 = v62;

    v64 = sub_1DA3A5FE8(v61, v63, v74);

    *(v59 + 4) = v64;
    _os_log_impl(&dword_1DA39E000, v57, v58, "Expanding and adding user segment features %s", v59, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v60);
    OUTLINED_FUNCTION_18_0();
    MEMORY[0x1DA74E430](v65);
    OUTLINED_FUNCTION_18_0();
    MEMORY[0x1DA74E430](v66);
  }

  else
  {
  }

  return v73;
}

uint64_t SiriSuggestionsIntelligence.SourcedFeatureMLFeatureProvider.deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 24);

  return v0;
}

uint64_t SiriSuggestionsIntelligence.SourcedFeatureMLFeatureProvider.__deallocating_deinit()
{
  SiriSuggestionsIntelligence.SourcedFeatureMLFeatureProvider.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t sub_1DA3D5A20(uint64_t a1, uint64_t *a2, uint64_t *a3, void (*a4)(uint64_t, uint64_t, uint64_t *))
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    OUTLINED_FUNCTION_17_3();
    v5 = sub_1DA422214();
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC8];
  }

  v8 = v5;

  a4(v6, 1, &v8);

  return v8;
}

uint64_t sub_1DA3D5B0C(uint64_t a1, uint64_t *a2, uint64_t *a3, void (*a4)(uint64_t, uint64_t, uint64_t *))
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    OUTLINED_FUNCTION_17_3();
    v6 = sub_1DA422214();
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC8];
  }

  v8 = v6;
  a4(a1, 1, &v8);
  return v8;
}

id sub_1DA3D5B9C()
{
  v0 = sub_1DA421B64();

  v1 = [swift_getObjCClassFromMetadata() featureValueWithString_];

  return v1;
}

id sub_1DA3D5C00()
{
  v6[1] = *MEMORY[0x1E69E9840];
  sub_1DA3A6990(0, &qword_1ECBAF2A0, 0x1E696AD98);
  v0 = sub_1DA421AB4();

  v6[0] = 0;
  v1 = [swift_getObjCClassFromMetadata() featureValueWithDictionary:v0 error:v6];

  if (v1)
  {
    v2 = v6[0];
  }

  else
  {
    v3 = v6[0];
    sub_1DA420FB4();

    swift_willThrow();
  }

  v4 = *MEMORY[0x1E69E9840];
  return v1;
}

uint64_t MLFeatureProvider.getLikelihoodPredictions()()
{
  v1 = [v0 featureNames];
  v2 = sub_1DA421EB4();

  v4 = v2 + 56;
  v3 = *(v2 + 56);
  v5 = 1 << *(v2 + 32);
  OUTLINED_FUNCTION_30_1();
  v8 = v7 & v6;
  v10 = (v9 + 63) >> 6;

  v11 = 0;
  v12 = 0;
  v13 = MEMORY[0x1E69E7CC0];
  if (v8)
  {
    goto LABEL_6;
  }

  while (1)
  {
    v14 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v14 >= v10)
    {

      v30 = v13;

      sub_1DA3D8F78(&v30);

      return v30;
    }

    v8 = *(v4 + 8 * v14);
    ++v11;
    if (v8)
    {
      v11 = v14;
      do
      {
LABEL_6:
        v15 = (*(v2 + 48) + ((v11 << 10) | (16 * __clz(__rbit64(v8)))));
        v16 = v15[1];
        v33[0] = *v15;
        v33[1] = v16;

        sub_1DA3D5F10(v33, v28, &v30);

        v17 = v31;
        if (v31)
        {
          v29 = v12;
          v18 = v2;
          v19 = v30;
          v20 = v32;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v24 = *(v13 + 16);
            OUTLINED_FUNCTION_16_1();
            sub_1DA3A59E8();
            v13 = v25;
          }

          v22 = *(v13 + 16);
          v21 = *(v13 + 24);
          if (v22 >= v21 >> 1)
          {
            OUTLINED_FUNCTION_21_3(v21);
            sub_1DA3A59E8();
            v13 = v26;
          }

          *(v13 + 16) = v22 + 1;
          v23 = (v13 + 24 * v22);
          v23[4] = v19;
          v23[5] = v17;
          v23[6] = v20;
          v2 = v18;
          v12 = v29;
        }

        v8 &= v8 - 1;
      }

      while (v8);
    }
  }

  __break(1u);

  __break(1u);
  return result;
}

void sub_1DA3D5F10(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = sub_1DA421B64();
  v8 = [a2 featureValueForName_];

  if (v8)
  {
    if ([v8 type] == 2)
    {

      [v8 doubleValue];
      v10 = v9;

      *a3 = v5;
      a3[1] = v6;
      a3[2] = v10;
      return;
    }
  }

  if (qword_1ECBAE838 != -1)
  {
    swift_once();
  }

  v11 = sub_1DA421A94();
  __swift_project_value_buffer(v11, static Logger.inferenceCategory);

  v12 = sub_1DA421A74();
  v13 = sub_1DA421F74();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v16 = v15;
    *v14 = 136315138;
    *(v14 + 4) = sub_1DA3A5FE8(v5, v6, &v16);
    _os_log_impl(&dword_1DA39E000, v12, v13, "Unknown feature value for: %s)", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x1DA74E430](v15, -1, -1);
    MEMORY[0x1DA74E430](v14, -1, -1);
  }

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
}

uint64_t MLFeatureProvider.getRequiredClasses()()
{
  type metadata accessor for SiriSuggestionsIntelligence.SourcedFeatureMLFeatureProvider();
  result = swift_dynamicCastClass();
  if (result)
  {
    v1 = *(result + 24);
  }

  return result;
}

char *sub_1DA3D6124(unint64_t a1, uint64_t a2)
{
  v4 = sub_1DA3A4F50(a1);
  v5 = MEMORY[0x1E69E7CC0];
  if (!v4)
  {
LABEL_11:
    v13 = sub_1DA3D44A0(v5, a2);

    return v13;
  }

  v6 = v4;
  v16 = MEMORY[0x1E69E7CC0];
  result = sub_1DA3B0340(0, v4 & ~(v4 >> 63), 0);
  if ((v6 & 0x8000000000000000) == 0)
  {
    v14 = a2;
    v8 = 0;
    v5 = v16;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x1DA74D830](v8, a1);
        sub_1DA3B1C24(v9 + OBJC_IVAR____TtCO27SiriSuggestionsIntelligence27SiriSuggestionsIntelligence14SourcedFeature_feature, __src);
        swift_unknownObjectRelease();
      }

      else
      {
        sub_1DA3B1C24(*(a1 + 8 * v8 + 32) + OBJC_IVAR____TtCO27SiriSuggestionsIntelligence27SiriSuggestionsIntelligence14SourcedFeature_feature, __src);
      }

      v16 = v5;
      v11 = *(v5 + 16);
      v10 = *(v5 + 24);
      if (v11 >= v10 >> 1)
      {
        v12 = OUTLINED_FUNCTION_21_3(v10);
        sub_1DA3B0340(v12, v11 + 1, 1);
        v5 = v16;
      }

      ++v8;
      *(v5 + 16) = v11 + 1;
      memcpy((v5 + 72 * v11 + 32), __src, 0x48uLL);
    }

    while (v6 != v8);
    a2 = v14;
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

void sub_1DA3D6290(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEE70, &unk_1DA4246E0);
  v51 = a2;
  v7 = sub_1DA422204();
  if (!*(v5 + 16))
  {
LABEL_39:

LABEL_40:
    *v3 = v7;
    return;
  }

  v50 = v5;
  v8 = 0;
  v9 = v5;
  OUTLINED_FUNCTION_0_12();
  v12 = v11 & v10;
  v14 = (v13 + 63) >> 6;
  v15 = v7 + 8;
  if ((v11 & v10) == 0)
  {
LABEL_6:
    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_42;
      }

      if (v8 >= v14)
      {
        break;
      }

      ++v18;
      if (*(v9 + 8 * v8))
      {
        OUTLINED_FUNCTION_12_4();
        v12 = v20 & v19;
        goto LABEL_11;
      }
    }

    if ((v51 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_40;
    }

    v46 = *(v5 + 32);
    OUTLINED_FUNCTION_10_6();
    v3 = v2;
    if (v48 != v49)
    {
      OUTLINED_FUNCTION_9_8(v47);
    }

    else
    {
      OUTLINED_FUNCTION_8_9(v47);
    }

    *(v5 + 16) = 0;
    goto LABEL_39;
  }

  while (1)
  {
    OUTLINED_FUNCTION_28_0();
LABEL_11:
    v21 = v16 | (v8 << 6);
    v22 = *(v5 + 56);
    v23 = (*(v5 + 48) + v21 * v17);
    v24 = *(v23 + 1);
    v55 = *v23;
    v25 = v23[2];
    v26 = v23[3];
    v56 = *(v23 + 32);
    v27 = *(v23 + 6);
    v28 = (v22 + 32 * v21);
    v29 = v28[1];
    v53 = *v28;
    v54 = *(v23 + 5);
    v52 = v28[2];
    v30 = v28[3];
    if ((v51 & 1) == 0)
    {
    }

    v31 = v7[5];
    sub_1DA422434();
    sub_1DA421BF4();
    if (v25 == 0.0)
    {
      v32 = 0.0;
    }

    else
    {
      v32 = v25;
    }

    MEMORY[0x1DA74DBD0](*&v32);
    if (v26 == 0.0)
    {
      v33 = 0.0;
    }

    else
    {
      v33 = v26;
    }

    MEMORY[0x1DA74DBD0](*&v33);
    MEMORY[0x1DA74DBB0](v56);
    sub_1DA422454();
    if (v27)
    {
      sub_1DA421BF4();
    }

    v34 = sub_1DA422474();
    OUTLINED_FUNCTION_2_11(v34);
    v36 = v15[v35];
    OUTLINED_FUNCTION_19_3();
    if (v37)
    {
      break;
    }

    OUTLINED_FUNCTION_7_6();
LABEL_31:
    OUTLINED_FUNCTION_9_5();
    *(v15 + v41) |= v42;
    v44 = v7[6] + 56 * v43;
    *v44 = v55;
    *(v44 + 8) = v24;
    *(v44 + 16) = v25;
    *(v44 + 24) = v26;
    *(v44 + 32) = v56;
    *(v44 + 40) = v54;
    *(v44 + 48) = v27;
    v45 = (v7[7] + 32 * v43);
    *v45 = v53;
    v45[1] = v29;
    v45[2] = v52;
    v45[3] = v30;
    OUTLINED_FUNCTION_11_5();
    v5 = v50;
    if (!v12)
    {
      goto LABEL_6;
    }
  }

  OUTLINED_FUNCTION_6_7();
  while (1)
  {
    OUTLINED_FUNCTION_20_2();
    if (v37)
    {
      if (v39)
      {
        break;
      }
    }

    if (v38 == v40)
    {
      v38 = 0;
    }

    if (v15[v38] != -1)
    {
      OUTLINED_FUNCTION_5_7();
      goto LABEL_31;
    }
  }

LABEL_42:
  __break(1u);
}

void sub_1DA3D6564(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEE98, &qword_1DA424710);
  v48 = a2;
  v7 = sub_1DA422204();
  if (!*(v5 + 16))
  {
LABEL_39:

LABEL_40:
    *v3 = v7;
    return;
  }

  v46 = v3;
  v47 = v5;
  v8 = 0;
  v9 = v5;
  OUTLINED_FUNCTION_0_12();
  v12 = v11 & v10;
  v14 = (v13 + 63) >> 6;
  v15 = v7 + 64;
  v16 = 40;
  if ((v11 & v10) == 0)
  {
LABEL_6:
    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_42;
      }

      if (v8 >= v14)
      {
        break;
      }

      ++v18;
      if (*(v9 + 8 * v8))
      {
        OUTLINED_FUNCTION_12_4();
        v12 = v20 & v19;
        goto LABEL_11;
      }
    }

    if ((v48 & 1) == 0)
    {

      v3 = v46;
      goto LABEL_40;
    }

    v42 = *(v5 + 32);
    OUTLINED_FUNCTION_10_6();
    v3 = v46;
    if (v44 != v45)
    {
      OUTLINED_FUNCTION_9_8(v43);
    }

    else
    {
      OUTLINED_FUNCTION_8_9(v43);
    }

    *(v5 + 16) = 0;
    goto LABEL_39;
  }

  while (1)
  {
    v17 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_11:
    v21 = v17 | (v8 << 6);
    v22 = *(v5 + 56);
    v23 = *(v5 + 48) + v21 * v16;
    v24 = *v23;
    v25 = *(v23 + 8);
    v26 = *(v23 + 16);
    v27 = *(v23 + 32);
    v49 = *(v23 + 24);
    v28 = *(v22 + 8 * v21);
    if ((v48 & 1) == 0)
    {
    }

    v29 = *(v7 + 40);
    sub_1DA422434();
    if (v24 == 0.0)
    {
      v30 = 0.0;
    }

    else
    {
      v30 = v24;
    }

    MEMORY[0x1DA74DBD0](*&v30);
    if (v25 == 0.0)
    {
      v31 = 0.0;
    }

    else
    {
      v31 = v25;
    }

    MEMORY[0x1DA74DBD0](*&v31);
    MEMORY[0x1DA74DBB0](v26);
    sub_1DA422454();
    if (v27)
    {
      sub_1DA421BF4();
    }

    v32 = sub_1DA422474();
    OUTLINED_FUNCTION_2_11(v32);
    v34 = *(v15 + 8 * v33);
    OUTLINED_FUNCTION_19_3();
    if (v35)
    {
      break;
    }

    OUTLINED_FUNCTION_7_6();
LABEL_31:
    OUTLINED_FUNCTION_9_5();
    OUTLINED_FUNCTION_26_1();
    v41 = v40 + 40 * v39;
    *v41 = v24;
    *(v41 + 8) = v25;
    *(v41 + 16) = v26;
    *(v41 + 24) = v49;
    *(v41 + 32) = v27;
    *(*(v7 + 56) + 8 * v39) = v28;
    OUTLINED_FUNCTION_11_5();
    v5 = v47;
    if (!v12)
    {
      goto LABEL_6;
    }
  }

  OUTLINED_FUNCTION_6_7();
  while (1)
  {
    OUTLINED_FUNCTION_20_2();
    if (v35)
    {
      if (v37)
      {
        break;
      }
    }

    if (v36 == v38)
    {
      v36 = 0;
    }

    if (*(v15 + 8 * v36) != -1)
    {
      OUTLINED_FUNCTION_5_7();
      goto LABEL_31;
    }
  }

LABEL_42:
  __break(1u);
}

void sub_1DA3D67EC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF300, &unk_1DA4268D0);
  v48 = a2;
  v7 = sub_1DA422204();
  if (!*(v5 + 16))
  {
LABEL_39:

LABEL_40:
    *v3 = v7;
    return;
  }

  v46 = v3;
  v47 = v5;
  v8 = 0;
  v9 = v5;
  OUTLINED_FUNCTION_0_12();
  v12 = v11 & v10;
  v14 = (v13 + 63) >> 6;
  v15 = v7 + 64;
  if ((v11 & v10) == 0)
  {
LABEL_6:
    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_42;
      }

      if (v8 >= v14)
      {
        break;
      }

      ++v17;
      if (*(v9 + 8 * v8))
      {
        OUTLINED_FUNCTION_12_4();
        v12 = v19 & v18;
        goto LABEL_11;
      }
    }

    if ((v48 & 1) == 0)
    {

      v3 = v46;
      goto LABEL_40;
    }

    v42 = *(v5 + 32);
    OUTLINED_FUNCTION_10_6();
    v3 = v46;
    if (v44 != v45)
    {
      OUTLINED_FUNCTION_9_8(v43);
    }

    else
    {
      OUTLINED_FUNCTION_8_9(v43);
    }

    *(v5 + 16) = 0;
    goto LABEL_39;
  }

  while (1)
  {
    OUTLINED_FUNCTION_28_0();
LABEL_11:
    v20 = v16 | (v8 << 6);
    v21 = *(v5 + 56);
    v22 = *(v5 + 48) + 32 * v20;
    v23 = *v22;
    v49 = *(v22 + 8);
    v24 = *(v22 + 16);
    v25 = *(v22 + 24);
    v26 = *(v21 + 8 * v20);
    if ((v48 & 1) == 0)
    {
      sub_1DA3D9AF4(v23, v49, *(v22 + 16), *(v22 + 24));
      v27 = v26;
    }

    v28 = *(v7 + 40);
    sub_1DA422434();
    switch(v25)
    {
      case 1:
        v29 = 1;
        goto LABEL_20;
      case 2:
        MEMORY[0x1DA74DBB0](2);
        SiriSuggestionsIntelligence.FeatureIdType.rawValue.getter(v23);
        OUTLINED_FUNCTION_22_2();

        break;
      case 3:
        v30 = 3;
        goto LABEL_18;
      case 4:
        v30 = 4;
LABEL_18:
        MEMORY[0x1DA74DBB0](v30);
        sub_1DA421BF4();
        MEMORY[0x1DA74DBB0](v24);
        break;
      default:
        v29 = 0;
LABEL_20:
        MEMORY[0x1DA74DBB0](v29);
        SiriSuggestionsIntelligence.FeatureIdType.rawValue.getter(v23);
        OUTLINED_FUNCTION_22_2();

        sub_1DA421BF4();
        break;
    }

    v31 = sub_1DA422474();
    OUTLINED_FUNCTION_2_11(v31);
    v33 = *(v15 + 8 * v32);
    OUTLINED_FUNCTION_19_3();
    if (v34)
    {
      break;
    }

    OUTLINED_FUNCTION_7_6();
LABEL_31:
    OUTLINED_FUNCTION_9_5();
    OUTLINED_FUNCTION_26_1();
    v40 = v39 + 32 * v38;
    *v40 = v23;
    *(v40 + 8) = v49;
    *(v40 + 16) = v24;
    *(v40 + 24) = v25;
    *(*(v7 + 56) + 8 * v38) = v41;
    OUTLINED_FUNCTION_11_5();
    v5 = v47;
    if (!v12)
    {
      goto LABEL_6;
    }
  }

  OUTLINED_FUNCTION_6_7();
  while (1)
  {
    OUTLINED_FUNCTION_20_2();
    if (v34)
    {
      if (v36)
      {
        break;
      }
    }

    if (v35 == v37)
    {
      v35 = 0;
    }

    if (*(v15 + 8 * v35) != -1)
    {
      OUTLINED_FUNCTION_5_7();
      goto LABEL_31;
    }
  }

LABEL_42:
  __break(1u);
}