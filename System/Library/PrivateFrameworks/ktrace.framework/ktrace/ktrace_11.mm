uint64_t sub_22EE1F46C@<X0>(void *__src@<X2>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = a2;
  a5[1] = a3;
  memcpy(a5 + 2, __src, 0x141uLL);
  v7 = a5 + *(type metadata accessor for KdebugAdvice() + 24);

  return sub_22EE202F0(a4, v7);
}

unint64_t sub_22EE1F4C8(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_22EE20400();
  v4 = sub_22EE3C094();
  return sub_22EE1F534(a1, v4);
}

unint64_t sub_22EE1F534(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_22EDD0BD0();
    do
    {
      v7 = *(*(v2 + 48) + v4);
      if (sub_22EE3C0E4())
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

char *sub_22EE1F5FC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95908, &qword_22EE43FB8);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_22EE1F700(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95918, &qword_22EE43FC8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

uint64_t sub_22EE1F784(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_22EE20454(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_22EE3CB64();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 48;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = *&v2[16 * i + 40];
        v12 = v9;
        v13 = v8;
        do
        {
          if (*(v13 - 1) >= v11)
          {
            break;
          }

          v14 = *v13;
          *v13 = *(v13 - 1);
          *(v13 - 1) = v11;
          *(v13 - 8) = v14;
          v13 -= 16;
        }

        while (!__CFADD__(v12++, 1));
        v8 += 16;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95910, &qword_22EE43FC0);
      v7 = sub_22EE3C404();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_22EE1F8E0(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_22EE1F8E0(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v89 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_88:
    v5 = *v89;
    if (!*v89)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_22EDE2794(v8);
      v8 = result;
    }

    v81 = (v8 + 16);
    v82 = *(v8 + 16);
    if (v82 >= 2)
    {
      while (*a3)
      {
        v83 = (v8 + 16 * v82);
        v84 = *v83;
        v85 = &v81[2 * v82];
        v86 = v85[1];
        sub_22EE1FE74((*a3 + 16 * *v83), (*a3 + 16 * *v85), (*a3 + 16 * v86), v5);
        if (v4)
        {
        }

        if (v86 < v84)
        {
          goto LABEL_114;
        }

        if (v82 - 2 >= *v81)
        {
          goto LABEL_115;
        }

        *v83 = v84;
        v83[1] = v86;
        v87 = *v81 - v82;
        if (*v81 < v82)
        {
          goto LABEL_116;
        }

        v82 = *v81 - 1;
        result = memmove(v85, v85 + 2, 16 * v87);
        *v81 = v82;
        if (v82 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v88 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 16 * v7 + 8);
      v11 = 16 * v9;
      v12 = *a3 + 16 * v9;
      v13 = *(v12 + 8);
      v14 = v9 + 2;
      v15 = (v12 + 40);
      v16 = v10;
      while (v6 != v14)
      {
        v17 = *v15;
        v15 += 2;
        v18 = (v13 < v10) ^ (v16 >= v17);
        ++v14;
        v16 = v17;
        if ((v18 & 1) == 0)
        {
          v7 = v14 - 1;
          if (v13 >= v10)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v13 >= v10)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v19 = 0;
        v20 = 16 * v7;
        v21 = v9;
        do
        {
          if (v21 != v7 + v19 - 1)
          {
            v26 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v22 = (v26 + v11);
            v23 = v26 + v20;
            v24 = *v22;
            v25 = *(v22 + 1);
            *v22 = *(v23 - 16);
            *(v23 - 16) = v24;
            *(v23 - 8) = v25;
          }

          ++v21;
          --v19;
          v20 -= 16;
          v11 += 16;
        }

        while (v21 < v7 + v19);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_22EDE1A00(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v35 = *(v8 + 24);
    v36 = v5 + 1;
    if (v5 >= v35 >> 1)
    {
      result = sub_22EDE1A00((v35 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v36;
    v37 = v8 + 32;
    v38 = (v8 + 32 + 16 * v5);
    *v38 = v9;
    v38[1] = v7;
    v90 = *v89;
    if (!*v89)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v36 - 1;
        if (v36 >= 4)
        {
          break;
        }

        if (v36 == 3)
        {
          v39 = *(v8 + 32);
          v40 = *(v8 + 40);
          v49 = __OFSUB__(v40, v39);
          v41 = v40 - v39;
          v42 = v49;
LABEL_57:
          if (v42)
          {
            goto LABEL_104;
          }

          v55 = (v8 + 16 * v36);
          v57 = *v55;
          v56 = v55[1];
          v58 = __OFSUB__(v56, v57);
          v59 = v56 - v57;
          v60 = v58;
          if (v58)
          {
            goto LABEL_106;
          }

          v61 = (v37 + 16 * v5);
          v63 = *v61;
          v62 = v61[1];
          v49 = __OFSUB__(v62, v63);
          v64 = v62 - v63;
          if (v49)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v59, v64))
          {
            goto LABEL_111;
          }

          if (v59 + v64 >= v41)
          {
            if (v41 < v64)
            {
              v5 = v36 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v36 < 2)
        {
          goto LABEL_112;
        }

        v65 = (v8 + 16 * v36);
        v67 = *v65;
        v66 = v65[1];
        v49 = __OFSUB__(v66, v67);
        v59 = v66 - v67;
        v60 = v49;
LABEL_72:
        if (v60)
        {
          goto LABEL_108;
        }

        v68 = (v37 + 16 * v5);
        v70 = *v68;
        v69 = v68[1];
        v49 = __OFSUB__(v69, v70);
        v71 = v69 - v70;
        if (v49)
        {
          goto LABEL_110;
        }

        if (v71 < v59)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v36)
        {
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
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v76 = (v37 + 16 * (v5 - 1));
        v77 = *v76;
        v78 = (v37 + 16 * v5);
        v79 = v78[1];
        sub_22EE1FE74((*a3 + 16 * *v76), (*a3 + 16 * *v78), (*a3 + 16 * v79), v90);
        if (v4)
        {
        }

        if (v79 < v77)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v76 = v77;
        v76[1] = v79;
        v80 = *(v8 + 16);
        if (v5 >= v80)
        {
          goto LABEL_101;
        }

        v36 = v80 - 1;
        result = memmove((v37 + 16 * v5), v78 + 2, 16 * (v80 - 1 - v5));
        *(v8 + 16) = v80 - 1;
        if (v80 <= 2)
        {
          goto LABEL_3;
        }
      }

      v43 = v37 + 16 * v36;
      v44 = *(v43 - 64);
      v45 = *(v43 - 56);
      v49 = __OFSUB__(v45, v44);
      v46 = v45 - v44;
      if (v49)
      {
        goto LABEL_102;
      }

      v48 = *(v43 - 48);
      v47 = *(v43 - 40);
      v49 = __OFSUB__(v47, v48);
      v41 = v47 - v48;
      v42 = v49;
      if (v49)
      {
        goto LABEL_103;
      }

      v50 = (v8 + 16 * v36);
      v52 = *v50;
      v51 = v50[1];
      v49 = __OFSUB__(v51, v52);
      v53 = v51 - v52;
      if (v49)
      {
        goto LABEL_105;
      }

      v49 = __OFADD__(v41, v53);
      v54 = v41 + v53;
      if (v49)
      {
        goto LABEL_107;
      }

      if (v54 >= v46)
      {
        v72 = (v37 + 16 * v5);
        v74 = *v72;
        v73 = v72[1];
        v49 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v49)
        {
          goto LABEL_113;
        }

        if (v41 < v75)
        {
          v5 = v36 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v88;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v27 = *a3;
  v28 = *a3 + 16 * v7;
  v29 = v9 - v7;
LABEL_30:
  v30 = *(v27 + 16 * v7 + 8);
  v31 = v29;
  v32 = v28;
  while (1)
  {
    if (*(v32 - 1) >= v30)
    {
LABEL_29:
      ++v7;
      v28 += 16;
      --v29;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v27)
    {
      break;
    }

    v33 = *v32;
    *v32 = *(v32 - 1);
    *(v32 - 1) = v30;
    *(v32 - 8) = v33;
    v32 -= 8;
    if (__CFADD__(v31++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_22EE1FE74(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      if (*(v4 + 1) < *(v6 + 1))
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_24:
    v5 -= 16;
    do
    {
      v17 = v5 + 16;
      if (*(v6 - 1) < *(v14 - 1))
      {
        v19 = v6 - 16;
        if (v17 != v6)
        {
          *v5 = *v19;
        }

        if (v14 <= v4 || (v6 -= 16, v19 <= v7))
        {
          v6 = v19;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      v18 = v14 - 16;
      if (v17 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 -= 16;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v20 = v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0);
  if (v6 != v4 || v6 >= &v4[v20 & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * (v20 >> 4));
  }

  return 1;
}

char *sub_22EE20078(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95918, &qword_22EE43FC8);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_22EE2017C(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 64);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7)) | (v9 << 6);
      v15 = *(*(a4 + 48) + 2 * v14);
      v16 = *(*(a4 + 56) + 8 * v14);
      v7 &= v7 - 1;
      *a2 = v15;
      *(a2 + 8) = v16;
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      a2 += 16;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v18 = v9 + 1;
    }

    else
    {
      v18 = (63 - v6) >> 6;
    }

    v9 = v18 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_22EE20280(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95668, &qword_22EE435B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22EE202F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecordingOptions.Options(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22EE2037C()
{
  result = type metadata accessor for RecordingOptions.Options(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_22EE20400()
{
  result = qword_27DA95900;
  if (!qword_27DA95900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA95900);
  }

  return result;
}

unint64_t sub_22EE20468(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95928, &qword_22EE43FD8);
    v3 = sub_22EE3C9D4();

    for (i = (a1 + 40); ; i = (i + 24))
    {
      v5 = *(i - 8);
      v11 = *i;

      result = sub_22EE1F4C8(v5);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 16 * result) = v11;
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
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

uint64_t sub_22EE20564()
{
  v1 = *v0;
  v2 = *(v0 + 2);
  sub_22EE3CC74();
  sub_22EE3CCB4();
  sub_22EE3CCA4();
  return sub_22EE3CCC4();
}

uint64_t sub_22EE205C4()
{
  v1 = *v0;
  v2 = *(v0 + 2);
  sub_22EE3CCB4();
  return sub_22EE3CCA4();
}

uint64_t sub_22EE20604()
{
  v1 = *v0;
  v2 = *(v0 + 2);
  sub_22EE3CC74();
  sub_22EE3CCB4();
  sub_22EE3CCA4();
  return sub_22EE3CCC4();
}

unint64_t sub_22EE2068C(unint64_t result, uint64_t a2)
{
  v4 = result;
  if (*(result + 48) != 117571592)
  {
    goto LABEL_7;
  }

  if (*(v2 + 72) == 2)
  {
    result = ktrace_get_earliest_timestamp(a2);
    if (*v4 < result)
    {
LABEL_13:
      __break(1u);
      return result;
    }

    ktrace_get_ns_from_timestamp(a2, *v4 - result);
    v5 = *(v2 + 8);
    result = sub_22EDF1508(1);
    *(v2 + 72) = result & 1;
    *(v2 + 80) = v6;
    *(v2 + 88) = v7;
  }

  v8 = *(v2 + 64);
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
    goto LABEL_13;
  }

  *(v2 + 64) = v10;
LABEL_7:
  result = sub_22EDECD7C(v4);
  v11 = *v4;
  if (*v4 < *(v2 + 32))
  {
    result = sub_22EE20B74(v12, *(v4 + 52) | (HIWORD(*(v4 + 48)) << 32));
    v11 = *v4;
  }

  if (*(v2 + 24) == 1)
  {
    result = ktrace_get_ns_from_timestamp(a2, v11);
    *(v2 + 16) = result;
    *(v2 + 24) = 0;
    v11 = *v4;
  }

  *(v2 + 32) = v11;
  return result;
}

unint64_t sub_22EE207A4(const void *a1, uint64_t a2)
{
  v5 = type metadata accessor for RecordingOptions.Options(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for KdebugAdvice();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = (&v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  memcpy(v31, a1, 0x141uLL);
  v13 = *(v2 + 64);
  v14 = *(*(v2 + 56) + 16);
  if (v14)
  {
    v15 = 0xD000000000000063;
  }

  else
  {
    v15 = 0;
  }

  if (v14)
  {
    v16 = 0x800000022EE4A3B0;
  }

  else
  {
    v16 = 0;
  }

  if (v13 >= 1 && *(v2 + 72) != 2)
  {
    v17 = *(v2 + 80);
    v19 = *v2;
    v18 = *(v2 + 8);
    v28 = v14;
    memcpy(v30, a1, 0x141uLL);
    sub_22EE1E744(a2, v8);

    sub_22ED80E90(v31, v29);
    sub_22EE1F46C(v30, v19, v18, v8, v12);
    v30[0] = 0;
    v30[1] = 0xE000000000000000;
    sub_22EE3C864();
    MEMORY[0x2318F58F0](0x206572656854, 0xE600000000000000);
    if (v13 == 1)
    {
      v20 = 0xE000000000000000;
    }

    else
    {
      v20 = 0xE100000000000000;
    }

    if (v13 == 1)
    {
      v21 = 0;
    }

    else
    {
      v21 = 115;
    }

    if (v13 == 1)
    {
      v22 = 7561591;
    }

    else
    {
      v22 = 1701995895;
    }

    if (v13 == 1)
    {
      v23 = 0xE300000000000000;
    }

    else
    {
      v23 = 0xE400000000000000;
    }

    MEMORY[0x2318F58F0](v22, v23);

    MEMORY[0x2318F58F0](32, 0xE100000000000000);
    v29[0] = v13;
    v24 = sub_22EE3CB84();
    MEMORY[0x2318F58F0](v24);

    MEMORY[0x2318F58F0](0x636E6174736E6920, 0xE900000000000065);
    MEMORY[0x2318F58F0](v21, v20);

    MEMORY[0x2318F58F0](0xD000000000000020, 0x800000022EE4A420);
    sub_22EE3C424();
    MEMORY[0x2318F58F0](0xD00000000000002CLL, 0x800000022EE4A450);
    if (!v28)
    {
      v16 = 0xE000000000000000;
    }

    MEMORY[0x2318F58F0](v15, v16);

    MEMORY[0x2318F58F0](10, 0xE100000000000000);
    v25 = sub_22EE1E7A8();
    MEMORY[0x2318F58F0](v25);

    v15 = v30[0];
    sub_22EE20C9C(v12);
  }

  return v15;
}

double sub_22EE20AE8@<D0>(uint64_t a1@<X8>)
{
  *a1 = sub_22EDECED4();
  *(a1 + 8) = v2;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 1;
  *(a1 + 56) = MEMORY[0x277D84FA0];
  result = 0.0;
  *(a1 + 64) = xmmword_22EE43FE0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 80) = 0;
  *(a1 + 104) = 1;
  *(a1 + 112) = 0;
  *(a1 + 120) = 1;
  *(a1 + 128) = 0;
  *(a1 + 136) = 1;
  return result;
}

uint64_t sub_22EE20B74(uint64_t a1, unint64_t a2)
{
  v5 = HIDWORD(a2);
  v6 = *v2;
  v7 = *(*v2 + 40);
  sub_22EE3CC74();
  sub_22EE3CCB4();
  sub_22EE3CCA4();
  v8 = sub_22EE3CCC4();
  v9 = -1 << *(v6 + 32);
  v10 = v8 & ~v9;
  if ((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = *(v6 + 48) + 8 * v10;
      if (*v12 == a2 && *(v12 + 4) == v5)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    result = 0;
  }

  else
  {
LABEL_7:
    v14 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v2;
    sub_22EE21120(a2 & 0xFFFFFFFFFFFFLL, v10, isUniquelyReferenced_nonNull_native);
    *v2 = v16;
    result = 1;
  }

  *a1 = a2;
  *(a1 + 4) = v5;
  return result;
}

uint64_t sub_22EE20C9C(uint64_t a1)
{
  v2 = type metadata accessor for KdebugAdvice();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_22EE20CFC()
{
  result = qword_27DA95930;
  if (!qword_27DA95930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA95930);
  }

  return result;
}

uint64_t __swift_memcpy6_4(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for RetrogradeEvent(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 6))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for RetrogradeEvent(uint64_t result, int a2, int a3)
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

  *(result + 6) = v3;
  return result;
}

__n128 __swift_memcpy137_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 121) = *(a2 + 121);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_22EE20DF4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 137))
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

uint64_t sub_22EE20E3C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 136) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 137) = 1;
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

    *(result + 137) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22EE20EB0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95938, &qword_22EE440C8);
  result = sub_22EE3C824();
  v6 = result;
  if (*(v3 + 16))
  {
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
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = *(v3 + 48) + 8 * (v16 | (v7 << 6));
      v20 = *v19;
      v21 = *(v19 + 4);
      v22 = *(v6 + 40);
      sub_22EE3CC74();
      sub_22EE3CCB4();
      sub_22EE3CCA4();
      result = sub_22EE3CCC4();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = *(v6 + 48) + 8 * v14;
      *v15 = v20;
      *(v15 + 4) = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

unint64_t sub_22EE21120(unint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = HIDWORD(result);
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_14;
  }

  if (a3)
  {
    sub_22EE20EB0(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      v8 = a2;
      result = sub_22EE212A0();
      a2 = v8;
      goto LABEL_14;
    }

    sub_22EE213F4(v6 + 1);
  }

  v9 = *v3;
  v10 = *(*v3 + 40);
  sub_22EE3CC74();
  sub_22EE3CCB4();
  sub_22EE3CCA4();
  result = sub_22EE3CCC4();
  v11 = -1 << *(v9 + 32);
  a2 = result & ~v11;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    while (1)
    {
      v13 = *(v9 + 48) + 8 * a2;
      if (*v13 == v4 && *(v13 + 4) == v5)
      {
        break;
      }

      a2 = (a2 + 1) & v12;
      if (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    result = sub_22EE3CBD4();
    __break(1u);
  }

LABEL_14:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v15 = *(v14 + 48) + 8 * a2;
  *v15 = v4;
  *(v15 + 4) = v5;
  v16 = *(v14 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(v14 + 16) = v18;
  }

  return result;
}

void *sub_22EE212A0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95938, &qword_22EE440C8);
  v2 = *v0;
  v3 = sub_22EE3C814();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(v20 + 4) = v18)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = 8 * v14;
      v18 = *(v2 + 48) + v17;
      v19 = *v18;
      LOWORD(v18) = *(v18 + 4);
      v20 = *(v4 + 48) + v17;
      *v20 = v19;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

uint64_t sub_22EE213F4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95938, &qword_22EE440C8);
  result = sub_22EE3C824();
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
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = *(v3 + 48) + 8 * (v15 | (v7 << 6));
      v19 = *v18;
      v20 = *(v18 + 4);
      v21 = *(v6 + 40);
      sub_22EE3CC74();
      sub_22EE3CCB4();
      sub_22EE3CCA4();
      result = sub_22EE3CCC4();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v6 + 48) + 8 * v13;
      *v14 = v19;
      *(v14 + 4) = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

const UInt8 *sub_22EE21670(uint64_t a1)
{
  v2 = *v1;
  v3 = *(a1 + 16);
  *(v1 + 1) = *a1;
  *(v1 + 2) = v3;
  *(v1 + 48) = *(a1 + 32);
  v4 = *(a1 + 8);
  v1[7] = *&asc_22EE44788[8 * v4];
  v5 = *a1;
  v6 = v2;
  result = ktrace_chunk_size_t(*a1);
  v8 = v1[7];
  if (__OFSUB__(result, v8))
  {
    __break(1u);
  }

  else
  {
    result = ktrace_chunk_map_data(v5, v8, &result[-v8]);
    if (!result)
    {
      v9 = *(v6 + 80);
      type metadata accessor for EventChunkData();
      swift_deallocPartialClassInstance();
      return 0;
    }

    if (v4 <= 1u || v4 == 4)
    {
      v10 = *(v6 + 80);
      v1[8] = sub_22EE3C5F4();
      v1[9] = v11;
      return v1;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22EE21794(uint64_t (*a1)(char *))
{
  v18 = a1;
  v2 = *(*v1 + 80);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v6 = v16 - v5;
  v7 = *(v1 + 24);
  if (v7 <= 1)
  {
    if (*(v1 + 24))
    {
      v9 = 64;
    }

    else
    {
      v9 = 32;
    }
  }

  else
  {
    if (v7 - 2 < 2)
    {
      return 0;
    }

    v9 = 48;
  }

  result = ktrace_chunk_size_t(*(v1 + 16));
  v11 = result / v9;
  if (result / v9 < 1)
  {
    return 0;
  }

  v8 = 0;
  v12 = *(v1 + 64);
  v16[1] = v3 + 16;
  v17 = v12;
  while (1)
  {
    v13 = v11 >> 1;
    v14 = v8 + (v11 >> 1);
    if (__OFADD__(v8, v11 >> 1))
    {
      break;
    }

    (*(v3 + 16))(v6, v17 + *(v3 + 72) * v14, v2);
    v15 = v18(v6);
    result = (*(v3 + 8))(v6, v2);
    if ((v15 & 1) == 0)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        return 0;
      }

      v13 = v11 + ~v13;
    }

    v11 = v13;
    if (v13 <= 0)
    {
      return v8;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22EE21958(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v47 = *MEMORY[0x277D85DE8];
  v43 = a4;
  v44 = a5;
  v45 = a2;
  v46 = a3;
  v11 = *(*v5 + 120);
  v12 = v11(sub_22EE28DB4, v42);
  v35 = v13;
  v38 = a4;
  v39 = a5;
  v40 = a2;
  v41 = a3;
  result = v11(sub_22EE28E08, v37);
  v16 = v5[8];
  if (!v16)
  {
    goto LABEL_25;
  }

  if (v35)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  if (v15)
  {
    goto LABEL_27;
  }

  v17 = result;
  if (v12 >= result)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v18 = v5[2];
    v19 = ktrace_chunk_tag(v18);
    v20 = ktrace_chunk_version_major(v18);
    v21 = ktrace_chunk_version_minor(v18);
    appended = ktrace_file_append_start(a1, v19, v20, v21);
    if (!appended)
    {
      v28 = MEMORY[0x2318F5610]();
      sub_22EE22678();
      swift_allocError();
      *v29 = 0xD000000000000015;
      *(v29 + 8) = 0x800000022EE4A480;
      *(v29 + 16) = v28;
      *(v29 + 20) = 1;
      result = swift_willThrow();
      goto LABEL_21;
    }

    v23 = appended;
    if (v5[7] > 0)
    {
      *bytes = 0;
      v24 = ktrace_file_append_data(a1, appended, bytes, 8);
      if (v24)
      {
        break;
      }
    }

    if (__OFSUB__(v17, v12))
    {
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    if (v17 - v12 >= 0x1FFFFFF)
    {
      v25 = 0x1FFFFFFLL;
    }

    else
    {
      v25 = v17 - v12;
    }

    if ((v25 - 0x200000000000000) >> 58 != 63)
    {
      goto LABEL_23;
    }

    v26 = ktrace_file_append_data(a1, v23, (v16 + (v12 << 6)), v25 << 6);
    if (v26)
    {
      v30 = 0x800000022EE4A4A0;
      v31 = v26;
      sub_22EE22678();
      swift_allocError();
      v33 = 0xD000000000000014;
      goto LABEL_20;
    }

    v27 = __OFADD__(v12, v25);
    v12 += v25;
    if (v27)
    {
      goto LABEL_24;
    }

    result = ktrace_file_append_finish(a1, v23);
    if (v12 >= v17)
    {
      goto LABEL_21;
    }
  }

  v30 = 0x800000022EE4A4C0;
  v31 = v24;
  sub_22EE22678();
  swift_allocError();
  v33 = 0xD000000000000016;
LABEL_20:
  *v32 = v33;
  *(v32 + 8) = v30;
  *(v32 + 16) = v31;
  *(v32 + 20) = 1;
  swift_willThrow();
  result = ktrace_file_append_finish(a1, v23);
LABEL_21:
  v34 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22EE21C68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v47 = *MEMORY[0x277D85DE8];
  v43 = a4;
  v44 = a5;
  v45 = a2;
  v46 = a3;
  v11 = *(*v5 + 120);
  v12 = v11(sub_22EE28E5C, v42);
  v35 = v13;
  v38 = a4;
  v39 = a5;
  v40 = a2;
  v41 = a3;
  result = v11(sub_22EE28EB8, v37);
  v16 = v5[8];
  if (!v16)
  {
    goto LABEL_25;
  }

  if (v35)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  if (v15)
  {
    goto LABEL_27;
  }

  v17 = result;
  if (v12 >= result)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v18 = v5[2];
    v19 = ktrace_chunk_tag(v18);
    v20 = ktrace_chunk_version_major(v18);
    v21 = ktrace_chunk_version_minor(v18);
    appended = ktrace_file_append_start(a1, v19, v20, v21);
    if (!appended)
    {
      v28 = MEMORY[0x2318F5610]();
      sub_22EE22678();
      swift_allocError();
      *v29 = 0xD000000000000015;
      *(v29 + 8) = 0x800000022EE4A480;
      *(v29 + 16) = v28;
      *(v29 + 20) = 1;
      result = swift_willThrow();
      goto LABEL_21;
    }

    v23 = appended;
    if (v5[7] > 0)
    {
      *bytes = 0;
      v24 = ktrace_file_append_data(a1, appended, bytes, 8);
      if (v24)
      {
        break;
      }
    }

    if (__OFSUB__(v17, v12))
    {
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    if (v17 - v12 >= 0x3FFFFFF)
    {
      v25 = 0x3FFFFFFLL;
    }

    else
    {
      v25 = v17 - v12;
    }

    if ((v25 - 0x400000000000000) >> 59 != 31)
    {
      goto LABEL_23;
    }

    v26 = ktrace_file_append_data(a1, v23, (v16 + 32 * v12), 32 * v25);
    if (v26)
    {
      v30 = 0x800000022EE4A4A0;
      v31 = v26;
      sub_22EE22678();
      swift_allocError();
      v33 = 0xD000000000000014;
      goto LABEL_20;
    }

    v27 = __OFADD__(v12, v25);
    v12 += v25;
    if (v27)
    {
      goto LABEL_24;
    }

    result = ktrace_file_append_finish(a1, v23);
    if (v12 >= v17)
    {
      goto LABEL_21;
    }
  }

  v30 = 0x800000022EE4A4C0;
  v31 = v24;
  sub_22EE22678();
  swift_allocError();
  v33 = 0xD000000000000016;
LABEL_20:
  *v32 = v33;
  *(v32 + 8) = v30;
  *(v32 + 16) = v31;
  *(v32 + 20) = 1;
  swift_willThrow();
  result = ktrace_file_append_finish(a1, v23);
LABEL_21:
  v34 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22EE21F78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v47 = *MEMORY[0x277D85DE8];
  v43 = a4;
  v44 = a5;
  v45 = a2;
  v46 = a3;
  v11 = *(*v5 + 120);
  v12 = v11(sub_22EE28F14, v42);
  v35 = v13;
  v38 = a4;
  v39 = a5;
  v40 = a2;
  v41 = a3;
  result = v11(sub_22EE28F70, v37);
  v16 = v5[8];
  if (!v16)
  {
    goto LABEL_25;
  }

  if (v35)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  if (v15)
  {
    goto LABEL_27;
  }

  v17 = result;
  if (v12 >= result)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v18 = v5[2];
    v19 = ktrace_chunk_tag(v18);
    v20 = ktrace_chunk_version_major(v18);
    v21 = ktrace_chunk_version_minor(v18);
    appended = ktrace_file_append_start(a1, v19, v20, v21);
    if (!appended)
    {
      v28 = MEMORY[0x2318F5610]();
      sub_22EE22678();
      swift_allocError();
      *v29 = 0xD000000000000015;
      *(v29 + 8) = 0x800000022EE4A480;
      *(v29 + 16) = v28;
      *(v29 + 20) = 1;
      result = swift_willThrow();
      goto LABEL_21;
    }

    v23 = appended;
    if (v5[7] > 0)
    {
      *bytes = 0;
      v24 = ktrace_file_append_data(a1, appended, bytes, 8);
      if (v24)
      {
        break;
      }
    }

    if (__OFSUB__(v17, v12))
    {
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    if (v17 - v12 >= 44739242)
    {
      v25 = 44739242;
    }

    else
    {
      v25 = v17 - v12;
    }

    if ((v25 * 48) >> 64 != (48 * v25) >> 63)
    {
      goto LABEL_23;
    }

    v26 = ktrace_file_append_data(a1, v23, (v16 + 48 * v12), 48 * v25);
    if (v26)
    {
      v30 = 0x800000022EE4A4A0;
      v31 = v26;
      sub_22EE22678();
      swift_allocError();
      v33 = 0xD000000000000014;
      goto LABEL_20;
    }

    v27 = __OFADD__(v12, v25);
    v12 += v25;
    if (v27)
    {
      goto LABEL_24;
    }

    result = ktrace_file_append_finish(a1, v23);
    if (v12 >= v17)
    {
      goto LABEL_21;
    }
  }

  v30 = 0x800000022EE4A4C0;
  v31 = v24;
  sub_22EE22678();
  swift_allocError();
  v33 = 0xD000000000000016;
LABEL_20:
  *v32 = v33;
  *(v32 + 8) = v30;
  *(v32 + 16) = v31;
  *(v32 + 20) = 1;
  swift_willThrow();
  result = ktrace_file_append_finish(a1, v23);
LABEL_21:
  v34 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22EE2228C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v57 = *MEMORY[0x277D85DE8];
  v11 = *(*v5 + 120);
  v52 = *(*v5 + 80);
  v12 = v52;
  v53 = a4;
  v54 = a5;
  v55 = a2;
  v56 = a3;
  v13 = v11(sub_22EE22608, v51);
  v14 = v11;
  v15 = v13;
  v41 = v16;
  v46 = v12;
  v47 = a4;
  v48 = a5;
  v49 = a2;
  v50 = a3;
  v17 = v14(sub_22EE22640, v45);
  v19 = v18;
  v20 = v5[8];
  v21 = v5[9];
  result = sub_22EE3C5E4();
  v43 = result;
  if (!result)
  {
    goto LABEL_27;
  }

  v42 = *(v12 - 8);
  v23 = *(v42 + 64);
  if (!v23)
  {
    goto LABEL_26;
  }

  if (v41)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }

  if (v19)
  {
    goto LABEL_29;
  }

  if (v15 >= v17)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v24 = v5[2];
    v25 = ktrace_chunk_tag(v24);
    v26 = ktrace_chunk_version_major(v24);
    v27 = ktrace_chunk_version_minor(v24);
    appended = ktrace_file_append_start(a1, v25, v26, v27);
    if (!appended)
    {
      v34 = MEMORY[0x2318F5610]();
      sub_22EE22678();
      swift_allocError();
      *v35 = 0xD000000000000015;
      *(v35 + 8) = 0x800000022EE4A480;
      *(v35 + 16) = v34;
      *(v35 + 20) = 1;
      result = swift_willThrow();
      goto LABEL_22;
    }

    v29 = appended;
    if (v5[7] >= 1)
    {
      *bytes = 0;
      v30 = ktrace_file_append_data(a1, appended, bytes, 8);
      if (v30)
      {
        break;
      }
    }

    if (__OFSUB__(v17, v15))
    {
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    if (0x7FFFFFFF / v23 >= v17 - v15)
    {
      v31 = v17 - v15;
    }

    else
    {
      v31 = 0x7FFFFFFF / v23;
    }

    if ((v31 * v23) >> 64 != (v31 * v23) >> 63)
    {
      goto LABEL_24;
    }

    v32 = ktrace_file_append_data(a1, v29, (v43 + *(v42 + 72) * v15), v31 * v23);
    if (v32)
    {
      v36 = 0x800000022EE4A4A0;
      v37 = v32;
      sub_22EE22678();
      swift_allocError();
      v39 = 0xD000000000000014;
      goto LABEL_21;
    }

    v33 = __OFADD__(v15, v31);
    v15 += v31;
    if (v33)
    {
      goto LABEL_25;
    }

    result = ktrace_file_append_finish(a1, v29);
    if (v15 >= v17)
    {
      goto LABEL_22;
    }
  }

  v36 = 0x800000022EE4A4C0;
  v37 = v30;
  sub_22EE22678();
  swift_allocError();
  v39 = 0xD000000000000016;
LABEL_21:
  *v38 = v39;
  *(v38 + 8) = v36;
  *(v38 + 16) = v37;
  *(v38 + 20) = 1;
  swift_willThrow();
  result = ktrace_file_append_finish(a1, v29);
LABEL_22:
  v40 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL sub_22EE22608()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  return (*(v0 + 24))() > v2;
}

BOOL sub_22EE22640()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 48);
  return (*(v0 + 24))() > v2;
}

unint64_t sub_22EE22678()
{
  result = qword_27DA95940;
  if (!qword_27DA95940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA95940);
  }

  return result;
}

unint64_t sub_22EE226CC()
{
  v1 = *v0;
  result = ktrace_chunk_size_t(v0[2]);
  v3 = v0[7];
  v4 = result - v3;
  if (__OFSUB__(result, v3))
  {
    __break(1u);
  }

  else
  {
    v5 = v0[2];
    v6 = v0[8];
    v7 = v0[9];
    v8 = *(v1 + 80);
    result = sub_22EE3C5E4();
    if (result)
    {
      ktrace_chunk_unmap_data(v5, result, v4);
      return v0;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22EE2275C()
{
  sub_22EE226CC();

  return swift_deallocClassInstance();
}

uint64_t sub_22EE22790(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a3 & 0x100000000) != 0)
  {
    sub_22EE3C864();

    strcpy(v7, "file I/O for ");
    HIWORD(v7[1]) = -4864;
    MEMORY[0x2318F58F0](a1, a2);
    MEMORY[0x2318F58F0](0x3A64656C69616620, 0xE900000000000020);
    v5 = sub_22EE3CB84();
    MEMORY[0x2318F58F0](v5);
  }

  else
  {
    sub_22EE3C864();

    v7[0] = 0xD000000000000018;
    v7[1] = 0x800000022EE4A4E0;
    MEMORY[0x2318F58F0](a1, a2);
  }

  return v7[0];
}

uint64_t sub_22EE228E0(uint64_t a1)
{
  sub_22EE3C864();

  MEMORY[0x2318F58F0](0xD000000000000010, 0x800000022EE4A500);
  v2 = sub_22EE3CB84();
  MEMORY[0x2318F58F0](v2);

  return a1;
}

uint64_t sub_22EE22998()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  return sub_22EE228E0(*v0);
}

uint64_t sub_22EE229A4(uint64_t a1)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v11[0] = 0;
  v2 = ktrace_file_earliest_timestamp(a1, v11);
  if (v2)
  {
    v3 = v2;
    v4 = 0x800000022EE4A520;
    sub_22EE27184();
    swift_allocError();
    v6 = 0xD000000000000012;
  }

  else
  {
    v10 = 0;
    v7 = ktrace_file_latest_timestamp(a1, &v10);
    if (!v7)
    {
      result = v11[0];
      goto LABEL_6;
    }

    v3 = v7;
    v4 = 0x800000022EE4A540;
    sub_22EE27184();
    swift_allocError();
    v6 = 0xD000000000000010;
  }

  *v5 = v6;
  *(v5 + 8) = v4;
  *(v5 + 16) = v3;
  result = swift_willThrow();
LABEL_6:
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_22EE22AC4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, unsigned __int8 a5)
{
  v5 = a4;
  v6 = a2;
  if (a5 > 1u)
  {
    if (a5 != 2)
    {
      if (a4)
      {
        return a2;
      }

      else
      {
        return a1;
      }
    }

    result = sub_22EE13DF4(a4, a3);
    v5 = v6 - result;
    if (v6 >= result)
    {
      if (v5 < a1)
      {
        v10 = "latest timestamp";
        v9 = 0xD000000000000023;
        v6 = a1;
        goto LABEL_10;
      }

      return v5;
    }
  }

  else
  {
    if (!a5)
    {
      return v5;
    }

    result = sub_22EE13DF4(a4, a3);
    v5 = a1 + result;
    if (!__CFADD__(a1, result))
    {
      if (v5 > v6)
      {
        v9 = 0xD00000000000001FLL;
        v10 = "efore start of file";
LABEL_10:
        type metadata accessor for TrimError(0);
        sub_22EE27AB4(&qword_27DA95950, type metadata accessor for TrimError);
        swift_allocError();
        *v11 = v9;
        v11[1] = v10 | 0x8000000000000000;
        v11[2] = v5;
        v11[3] = v6;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        return v5;
      }

      return v5;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_22EE22C28(uint64_t a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
    if (!a2)
    {
      v5 = 64;
      v2 = sub_22EE3CB84();
      MEMORY[0x2318F58F0](v2);

      return v5;
    }

    v5 = 0;
    v3 = 43;
LABEL_7:
    MEMORY[0x2318F58F0](v3, 0xE100000000000000);
    sub_22EE3C424();
    return v5;
  }

  if (a2 == 2)
  {
    v5 = 0;
    v3 = 45;
    goto LABEL_7;
  }

  if (a1)
  {
    return 6581861;
  }

  else
  {
    return 0x7472617473;
  }
}

uint64_t sub_22EE22D30(uint64_t a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
    if (!a2)
    {
      sub_22EE3C864();

      v6 = 0xD000000000000010;
      v2 = sub_22EE3CB84();
      MEMORY[0x2318F58F0](v2);

      return v6;
    }

    v6 = 0;
    sub_22EE3C424();
    v3 = 0x2065636E69732073;
    v4 = 0xED00007472617473;
LABEL_7:
    MEMORY[0x2318F58F0](v3, v4);
    return v6;
  }

  if (a2 == 2)
  {
    v6 = 0;
    sub_22EE3C424();
    v3 = 0x65726F6665622073;
    v4 = 0xEC000000646E6520;
    goto LABEL_7;
  }

  if (a1)
  {
    return 6581861;
  }

  else
  {
    return 0x7472617473;
  }
}

unint64_t sub_22EE22EE0()
{
  v1 = v0;
  v2 = sub_22EE3BFD4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TrimError(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22EE27CF0(v1, v10, type metadata accessor for TrimError);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload != 2)
      {
        v13 = *&v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95960, &qword_22EE440E8) + 48)];
        (*(v3 + 32))(v6, v10, v2);
        v51 = 0;
        v52 = 0xE000000000000000;
        sub_22EE3C864();
        sub_22EE27AB4(&qword_27DA95958, MEMORY[0x277D854C0]);
        v40 = sub_22EE3CB84();
        v42 = v41;

        v51 = v40;
        v52 = v42;
        v17 = "usage: invalid arguments: ";
        v18 = 0xD00000000000002BLL;
        goto LABEL_18;
      }

      v19 = *v10;
      v20 = *(v10 + 1);
      v51 = 0;
      v52 = 0xE000000000000000;
      sub_22EE3C864();
      LODWORD(v50) = v19;
      v21 = sub_22EE3CB84();
      v23 = v22;

      v51 = v21;
      v52 = v23;
      v24 = 0x800000022EE4A690;
      v25 = 0xD000000000000026;
    }

    else
    {
      if (!EnumCaseMultiPayload)
      {
        v13 = *&v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95960, &qword_22EE440E8) + 48)];
        (*(v3 + 32))(v6, v10, v2);
        v51 = 0;
        v52 = 0xE000000000000000;
        sub_22EE3C864();
        sub_22EE27AB4(&qword_27DA95958, MEMORY[0x277D854C0]);
        v14 = sub_22EE3CB84();
        v16 = v15;

        v51 = v14;
        v52 = v16;
        v17 = "data from chunk: ";
        v18 = 0xD000000000000023;
LABEL_18:
        MEMORY[0x2318F58F0](v18, v17 | 0x8000000000000000);
        LODWORD(v50) = v13;
        v43 = sub_22EE3CB84();
        MEMORY[0x2318F58F0](v43);

LABEL_20:
        v47 = v51;
        (*(v3 + 8))(v6, v2);
        return v47;
      }

      v35 = *v10;
      v20 = *(v10 + 1);
      v51 = 0;
      v52 = 0xE000000000000000;
      sub_22EE3C864();
      LODWORD(v50) = v35;
      v36 = sub_22EE3CB84();
      v38 = v37;

      v51 = v36;
      v52 = v38;
      v25 = 0xD000000000000021;
      v24 = 0x800000022EE4A6C0;
    }

    MEMORY[0x2318F58F0](v25, v24);
    LODWORD(v50) = v20;
    goto LABEL_16;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    v26 = *v10;
    v27 = *(v10 + 1);
    v51 = 0;
    v52 = 0xE000000000000000;
    if (EnumCaseMultiPayload == 4)
    {
      sub_22EE3C864();

      v28 = 0x800000022EE4A640;
      v29 = 0xD00000000000001ALL;
    }

    else
    {
      sub_22EE3C864();

      v28 = 0x800000022EE4A620;
      v29 = 0xD000000000000015;
    }

    v51 = v29;
    v52 = v28;
    MEMORY[0x2318F58F0](v26, v27);
    goto LABEL_23;
  }

  if (EnumCaseMultiPayload == 6)
  {
    v30 = *v10;
    v31 = *(v10 + 1);
    v32 = *(v10 + 2);
    v33 = *(v10 + 3);
    v51 = 0;
    v52 = 0xE000000000000000;
    sub_22EE3C864();

    v51 = v30;
    v52 = v31;
    MEMORY[0x2318F58F0](0x206D6F7266203ALL, 0xE700000000000000);
    v50 = v32;
    v34 = sub_22EE3CB84();
    MEMORY[0x2318F58F0](v34);

    MEMORY[0x2318F58F0](544175136, 0xE400000000000000);
    v50 = v33;
LABEL_16:
    v39 = sub_22EE3CB84();
    MEMORY[0x2318F58F0](v39);
LABEL_23:

    return v51;
  }

  if (EnumCaseMultiPayload != 7)
  {
    (*(v3 + 32))(v6, v10, v2);
    v51 = 0;
    v52 = 0xE000000000000000;
    sub_22EE3C864();
    sub_22EE27AB4(&qword_27DA95958, MEMORY[0x277D854C0]);
    v44 = sub_22EE3CB84();
    v46 = v45;

    v51 = v44;
    v52 = v46;
    MEMORY[0x2318F58F0](0xD000000000000026, 0x800000022EE4A5D0);
    goto LABEL_20;
  }

  v12 = *v10;
  v51 = 0;
  v52 = 0xE000000000000000;
  sub_22EE3C864();
  MEMORY[0x2318F58F0](0xD000000000000014, 0x800000022EE4A600);
  LOBYTE(v50) = v12;
  sub_22EE3C924();
  return v51;
}

uint64_t sub_22EE235A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v105 = a3;
  v104 = a2;
  v102 = a6;
  v9 = sub_22EE3BFD4();
  v98 = *(v9 - 8);
  v99 = v9;
  v10 = v98[8];
  v11 = MEMORY[0x28223BE20](v9);
  v97 = &v93 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v95 = &v93 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95968, &qword_22EE440F0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v96 = &v93 - v16;
  v17 = type metadata accessor for TrimOptions(0);
  v101 = *(v17 - 8);
  v18 = *(v101 + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v93 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = v19;
  v22 = *(v19 + 32);
  v100 = v21;
  v21[v22] = 0;
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  v136 = a5;

  v24 = sub_22EDEBE84();
  v25 = sub_22EDEBE90();
  v26 = sub_22EDEBE90();
  v92.n128_u64[1] = v25;
  *(&v91 + 1) = v23;
  v92.n128_u64[0] = v24;
  *&v91 = sub_22EE27B1C;
  *&v90 = 0xD000000000000049;
  *(&v90 + 1) = 0x800000022EE4A810;
  sub_22EDEBE9C(a1, v104, sub_22EE24500, 0, 0xD000000000000024, 0x800000022EE4A720, 0xD0000000000000BFLL, 0x800000022EE4A750, &v118, v90, 0, v91, v92, v26);
  v27 = swift_allocObject();
  *(v27 + 16) = 0;
  v28 = (v27 + 16);
  *(v27 + 24) = 3;

  v29 = sub_22ED808E4();
  sub_22EDE98AC(1836020326, 0xE400000000000000, 0xD00000000000001FLL, 0x800000022EE4A860, 0, 0, v29 & 1, sub_22EE27B44, v27);

  v30 = swift_allocObject();
  *(v30 + 16) = 1;
  v31 = (v30 + 16);
  *(v30 + 24) = 3;

  v32 = sub_22ED808E4();
  sub_22EDE98AC(28532, 0xE200000000000000, 0xD000000000000020, 0x800000022EE4A880, 0, 0, v32 & 1, sub_22EE29064, v30);

  v33 = swift_allocObject();
  *(v33 + 16) = 0;
  v34 = (v33 + 16);
  *(v33 + 24) = 0;

  v35 = sub_22ED808E4();
  sub_22EDE98AC(0x74757074756FLL, 0xE600000000000000, 0xD00000000000001CLL, 0x800000022EE4A8B0, 111, 0xE100000000000000, v35 & 1, sub_22EE27BD4, v33);

  v133 = v124;
  v134 = v125;
  v135 = v126;
  v129 = v120;
  v130 = v121;
  v131 = v122;
  v132 = v123;
  v127 = v118;
  v128 = v119;
  v36 = v106;
  v37 = sub_22EDEA6A8(v105);
  if (v36)
  {

    v115 = v124;
    v116 = v125;
    v117 = v126;
    v111 = v120;
    v112 = v121;
    v113 = v122;
    v114 = v123;
    v109 = v118;
    v110 = v119;
    sub_22EE27C38(&v109);
  }

  v106 = v33;
  v39 = v37;

  if (!v39)
  {

    v115 = v124;
    v116 = v125;
    v117 = v126;
    v111 = v120;
    v112 = v121;
    v113 = v122;
    v114 = v123;
    v109 = v118;
    v110 = v119;
    sub_22EE27C38(&v109);

    return (*(v101 + 56))(v102, 1, 1, v103);
  }

  v105 = v30;
  v40 = v39[2];
  if (!v40)
  {

    type metadata accessor for TrimError(0);
    sub_22EE27AB4(&qword_27DA95950, type metadata accessor for TrimError);
    swift_allocError();
    v44 = 0x800000022EE4A930;
    v45 = 0xD000000000000020;
    goto LABEL_15;
  }

  v104 = v27;
  if (v40 == 1)
  {
    v94 = v39[4];
    v41 = v39[5];

    swift_beginAccess();
    v42 = v104;
    if (*(v104 + 24) >= 3u && !*v28)
    {
      swift_beginAccess();
      if (*(v105 + 24) >= 3u)
      {
        if (*v31)
        {

          type metadata accessor for TrimError(0);
          sub_22EE27AB4(&qword_27DA95950, type metadata accessor for TrimError);
          swift_allocError();
          v44 = 0x800000022EE4A910;
          v45 = 0xD00000000000001FLL;
LABEL_15:
          *v43 = v45;
          v43[1] = v44;
          swift_storeEnumTagMultiPayload();
          swift_willThrow();

          v115 = v124;
          v116 = v125;
          v117 = v126;
          v111 = v120;
          v112 = v121;
          v113 = v122;
          v114 = v123;
          v109 = v118;
          v110 = v119;
          sub_22EE27C38(&v109);
        }
      }
    }

    v52 = v100;
    MEMORY[0x2318F56D0](v94, v41);
    v53 = *(v42 + 24);
    v54 = v103;
    v55 = v52 + *(v103 + 24);
    *v55 = *(v42 + 16);
    *(v55 + 8) = v53;
    swift_beginAccess();
    v56 = *(v105 + 24);
    v57 = v52 + *(v54 + 28);
    *v57 = *(v105 + 16);
    *(v57 + 8) = v56;
    swift_beginAccess();
    v58 = *(v106 + 24);
    v93 = 0;
    if (v58)
    {
      v59 = *v34;
      v60 = *(v54 + 20);

      MEMORY[0x2318F56D0](v59, v58);
LABEL_20:

      v115 = v124;
      v116 = v125;
      v117 = v126;
      v111 = v120;
      v112 = v121;
      v113 = v122;
      v114 = v123;
      v109 = v118;
      v110 = v119;
      sub_22EE27C38(&v109);

      v61 = v102;
      sub_22EE27CF0(v52, v102, type metadata accessor for TrimOptions);
      (*(v101 + 56))(v61, 0, 1, v54);
      return sub_22EE27E0C(v52, type metadata accessor for TrimOptions);
    }

    v62 = sub_22EE3BFC4();
    if (v63)
    {
      *&v109 = 46;
      *(&v109 + 1) = 0xE100000000000000;
      MEMORY[0x2318F58F0](v62);

      v64 = *(&v109 + 1);
      v65 = v109;
    }

    else
    {
      v65 = 0;
      v64 = 0xE000000000000000;
    }

    v67 = v96;
    v66 = v97;
    MEMORY[0x2318F5650](v62);
    v68 = sub_22EE3BFA4();
    v69 = *(v68 - 8);
    LODWORD(v97) = (*(v69 + 48))(v67, 1, v68);
    if (v97 == 1)
    {

      sub_22EDDBA48(v67, &qword_27DA95968, &qword_22EE440F0);
      type metadata accessor for TrimError(0);
      sub_22EE27AB4(&qword_27DA95950, type metadata accessor for TrimError);
      swift_allocError();
      v71 = v70;
      *&v109 = 0;
      *(&v109 + 1) = 0xE000000000000000;
      sub_22EE3C864();
      sub_22EE27AB4(&qword_27DA95958, MEMORY[0x277D854C0]);
      v72 = v99;
      v73 = sub_22EE3CB84();
      v75 = v74;

      *&v109 = v73;
      *(&v109 + 1) = v75;
      MEMORY[0x2318F58F0](0xD000000000000014, 0x800000022EE4A8F0);
      v76 = *(&v109 + 1);
      *v71 = v109;
      v71[1] = v76;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      v115 = v124;
      v116 = v125;
      v117 = v126;
      v111 = v120;
      v112 = v121;
      v113 = v122;
      v114 = v123;
      v109 = v118;
      v110 = v119;
      sub_22EE27C38(&v109);
    }

    else
    {
      v77 = sub_22EE3BF94();
      v78 = v67;
      v80 = v79;
      (*(v69 + 8))(v78, v68);
      *&v109 = v77;
      *(&v109 + 1) = v80;
      MEMORY[0x2318F58F0](0x2D6D6972742DLL, 0xE600000000000000);
      v81 = sub_22EE22C28(*(v104 + 16), *(v104 + 24));
      MEMORY[0x2318F58F0](v81);

      MEMORY[0x2318F58F0](44, 0xE100000000000000);
      v82 = sub_22EE22C28(*(v105 + 16), *(v105 + 24));
      MEMORY[0x2318F58F0](v82);

      MEMORY[0x2318F58F0](v65, v64);

      v83 = v98[2];
      v96 = (v98 + 2);
      v94 = v83;
      v83(v66, v52, v99);
      sub_22EE3BF74();
      v54 = v103;
      v84 = *(v103 + 20);
      sub_22EE3BFB4();
      v85 = [objc_allocWithZone(MEMORY[0x277CCAA00]) init];
      v95 = v84;
      sub_22EE3BF84();
      v86 = sub_22EE3C0F4();

      LODWORD(v77) = [v85 fileExistsAtPath_];

      if (!v77)
      {
        goto LABEL_20;
      }

      type metadata accessor for TrimError(0);
      sub_22EE27AB4(&qword_27DA95950, type metadata accessor for TrimError);
      swift_allocError();
      v87 = v99;
      v94(v88, &v95[v52], v99);
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      v115 = v124;
      v116 = v125;
      v117 = v126;
      v111 = v120;
      v112 = v121;
      v113 = v122;
      v114 = v123;
      v109 = v118;
      v110 = v119;
      sub_22EE27C38(&v109);

      v72 = v87;
    }

    v89 = v98[1];
    result = v89(v52, v72);
    if (v97 != 1)
    {
      return v89(v52 + *(v103 + 20), v72);
    }
  }

  else
  {
    type metadata accessor for TrimError(0);
    sub_22EE27AB4(&qword_27DA95950, type metadata accessor for TrimError);
    swift_allocError();
    v47 = v46;
    *&v109 = 0;
    *(&v109 + 1) = 0xE000000000000000;
    sub_22EE3C864();

    v107 = 0xD000000000000011;
    v108 = 0x800000022EE4A8D0;
    if (v39[2] < v40)
    {
      __break(1u);
    }

    else
    {
      *&v109 = v39;
      *(&v109 + 1) = v39 + 4;
      *&v110 = 1;
      *(&v110 + 1) = (2 * v40) | 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95970, &unk_22EE447C0);
      sub_22EE27C8C();
      v48 = sub_22EE3C0B4();
      v50 = v49;

      MEMORY[0x2318F58F0](v48, v50);

      v51 = v108;
      *v47 = v107;
      v47[1] = v51;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      v115 = v124;
      v116 = v125;
      v117 = v126;
      v111 = v120;
      v112 = v121;
      v113 = v122;
      v114 = v123;
      v109 = v118;
      v110 = v119;
      sub_22EE27C38(&v109);
    }
  }

  return result;
}

uint64_t sub_22EE2451C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = sub_22EE3BDF4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22EE3BDE4();
  v23 = sub_22EE3BDD4();
  v24 = v9;
  v25 = v10;
  v26 = v11;
  v27 = v12;
  v28 = v13;
  v29 = v14;
  v30 = v15;
  v31 = v16;
  v17 = ktrace_file_uuid(a1, &v23);
  if (v17)
  {
    v18 = v17;
    sub_22EE22678();
    swift_allocError();
    *v19 = xmmword_22EE440D0;
    *(v19 + 16) = v18;
    *(v19 + 20) = 1;
    swift_willThrow();
    result = (*(v5 + 8))(v8, v4);
  }

  else
  {
    (*(v5 + 32))(a2, v8, v4);
    result = (*(v5 + 56))(a2, 0, 1, v4);
  }

  v21 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22EE2475C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6946656372756F73 && a2 == 0xEE0044495555656CLL)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_22EE3CBA4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_22EE247EC(uint64_t a1)
{
  v2 = sub_22EE27D58();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22EE24828(uint64_t a1)
{
  v2 = sub_22EE27D58();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22EE24864(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95980, &qword_22EE440F8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22EE27D58();
  sub_22EE3CCE4();
  sub_22EE3CB04();
  return (*(v4 + 8))(v7, v3);
}

uint64_t Trimming.toolName.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t Trimming.notify.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t Trimming.init(toolName:interactive:notify:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Trimming.trim(arguments:)(Swift::OpaquePointer arguments)
{
  rawValue = arguments._rawValue;
  v2 = v1;
  v225 = *MEMORY[0x277D85DE8];
  v202 = sub_22EE3B9A4();
  v200 = *(v202 - 8);
  v3 = *(v200 + 64);
  MEMORY[0x28223BE20](v202);
  v201 = &v185 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94DB0, &unk_22EE3FAE0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v205 = &v185 - v7;
  v204 = sub_22EE3BDF4();
  v203 = *(v204 - 8);
  v8 = *(v203 + 64);
  MEMORY[0x28223BE20](v204);
  v199 = &v185 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v211 = type metadata accessor for TrimNote(0);
  v10 = *(*(v211 - 8) + 64);
  MEMORY[0x28223BE20](v211);
  v212 = (&v185 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v206 = sub_22EE3C154();
  v210 = *(v206 - 8);
  v12 = v210[8];
  MEMORY[0x28223BE20](v206);
  v207 = &v185 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v209 = type metadata accessor for TrimOptions(0);
  v208 = *(v209 - 8);
  v14 = *(v208 + 64);
  v15 = MEMORY[0x28223BE20](v209);
  MEMORY[0x28223BE20](v15);
  v17 = &v185 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95988, &unk_22EE44100);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v22 = &v185 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v185 - v23;
  v25 = v2[1];
  v215 = *v2;
  v216 = v25;
  v217 = *(v2 + 4);
  v27 = *(&v215 + 1);
  v26 = v215;
  v28 = swift_allocObject();
  v29 = v2[1];
  *(v28 + 16) = *v2;
  *(v28 + 32) = v29;
  *(v28 + 48) = *(v2 + 4);

  v30 = rawValue;

  sub_22EE27DD4(&v215, &aBlock);
  v31 = v214;
  sub_22EE235A0(v26, v27, v30, sub_22EE27DCC, v28, v24);
  v32 = v31;
  if (v31)
  {
    goto LABEL_16;
  }

  v33 = v207;
  v34 = v210;
  v197 = v14;
  rawValue = &v185 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v198 = v17;
  sub_22EE27E6C(v24, v22);
  if ((*(v208 + 48))(v22, 1, v209) == 1)
  {
    sub_22EDDBA48(v24, &qword_27DA95988, &unk_22EE44100);
    v35 = v22;
LABEL_4:
    sub_22EDDBA48(v35, &qword_27DA95988, &unk_22EE44100);
LABEL_17:
    v89 = *MEMORY[0x277D85DE8];
    return;
  }

  v214 = v24;
  v36 = v198;
  sub_22EE27EDC(v22, v198);
  *&aBlock = sub_22EE3BF84();
  *(&aBlock + 1) = v37;
  sub_22EE3C144();
  v196 = sub_22ED80FA0();
  v38 = sub_22EE3C694();
  v41 = v34[1];
  v40 = v34 + 1;
  v39 = v41;
  v41(v33, v206);

  if (!v38)
  {
    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
    goto LABEL_91;
  }

  v42 = ktrace_file_open((v38 + 32), 0);

  if (!v42)
  {
    type metadata accessor for TrimError(0);
    sub_22EE27AB4(&qword_27DA95950, type metadata accessor for TrimError);
    v32 = swift_allocError();
    v51 = v50;
    v52 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95960, &qword_22EE440E8) + 48);
    v53 = sub_22EE3BFD4();
    v54 = (*(*(v53 - 8) + 16))(v51, v36, v53);
    *(v51 + v52) = MEMORY[0x2318F5610](v54);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v55 = v36;
LABEL_14:
    sub_22EE27E0C(v55, type metadata accessor for TrimOptions);
    v85 = v214;
LABEL_15:
    sub_22EDDBA48(v85, &qword_27DA95988, &unk_22EE44100);
LABEL_16:
    v86 = *(&v216 + 1);
    v87 = v212;
    *v212 = v32;
    swift_storeEnumTagMultiPayload();
    v88 = v32;
    v86(v87);
    sub_22EE27E0C(v87, type metadata accessor for TrimNote);
    swift_willThrow();
    goto LABEL_17;
  }

  v43 = sub_22EE229A4(v42);
  v45 = v44;
  v46 = v43;
  LODWORD(aBlock) = 0;
  v219 = 0;
  v47 = ktrace_file_timebase(v42, &aBlock, &v219);
  if (v47)
  {
    v48 = v47;
    sub_22EE27184();
    v32 = swift_allocError();
    *v49 = 0x65736162656D6974;
    *(v49 + 8) = 0xE800000000000000;
    *(v49 + 16) = v48;
    swift_willThrow();
LABEL_13:
    v55 = v198;
    goto LABEL_14;
  }

  v210 = v40;
  v186 = v42;
  v195 = 0;
  v56 = sub_22EE13E84(aBlock, v219);
  v191 = v46;
  v192 = v45;
  if (v45 < v46)
  {
    __break(1u);
LABEL_84:
    type metadata accessor for TrimError(0);
    sub_22EE27AB4(&qword_27DA95950, type metadata accessor for TrimError);
    v32 = swift_allocError();
    *v184 = v38;
LABEL_85:
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v126 = v210;
    goto LABEL_22;
  }

  v57 = sub_22EE13E54(v45 - v46, v56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94D30, &qword_22EE3F510);
  v58 = swift_allocObject();
  v59 = MEMORY[0x277D839F8];
  *(v58 + 16) = xmmword_22EE3F500;
  v60 = MEMORY[0x277D83A80];
  *(v58 + 56) = v59;
  *(v58 + 64) = v60;
  *(v58 + 32) = v57;
  v61 = sub_22EE3C134();
  v63 = v62;
  v194 = *(&v216 + 1);
  v193 = v217;
  v64 = sub_22EE3BFD4();
  sub_22EE27AB4(&qword_27DA95958, MEMORY[0x277D854C0]);
  v65 = v198;
  v185 = v64;
  *&aBlock = sub_22EE3CB84();
  *(&aBlock + 1) = v66;
  MEMORY[0x2318F58F0](10272, 0xE200000000000000);
  v190 = v63;
  MEMORY[0x2318F58F0](v61, v63);
  MEMORY[0x2318F58F0](41, 0xE100000000000000);
  v188 = *(&aBlock + 1);
  v67 = aBlock;
  v68 = v209;
  v69 = v65 + *(v209 + 24);
  v189 = *v69;
  LOBYTE(v64) = *(v69 + 8);
  v70 = v56;
  v71 = sub_22EE22D30(v189, v64);
  v73 = v72;
  v74 = v65 + *(v68 + 28);
  v75 = *v74;
  v76 = *v74;
  v187 = *(v74 + 8);
  v77 = sub_22EE22D30(v76, v187);
  v78 = v212;
  *v212 = v67;
  v78[1] = v188;
  v78[2] = v71;
  v79 = v70;
  v78[3] = v73;
  v78[4] = v77;
  v78[5] = v80;
  swift_storeEnumTagMultiPayload();
  v194(v78);
  sub_22EE27E0C(v78, type metadata accessor for TrimNote);
  v81 = v191;
  v82 = v192;
  v83 = v195;
  v84 = sub_22EE22AC4(v191, v192, v79, v189, v64);
  v32 = v83;
  if (v83)
  {

    goto LABEL_13;
  }

  v90 = v82;
  v91 = v84;
  v92 = sub_22EE22AC4(v81, v90, v79, v75, v187);
  v93 = v214;
  if (v91 >= v92)
  {
    v100 = v92;

    type metadata accessor for TrimError(0);
    sub_22EE27AB4(&qword_27DA95950, type metadata accessor for TrimError);
    v32 = swift_allocError();
    *v101 = 0xD000000000000028;
    v101[1] = 0x800000022EE4A960;
    v101[2] = v91;
    v101[3] = v100;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_22EE27E0C(v198, type metadata accessor for TrimOptions);
    v85 = v93;
    goto LABEL_15;
  }

  v192 = v92;
  v209 = *(v209 + 20);
  *&aBlock = sub_22EE3BF84();
  *(&aBlock + 1) = v94;
  sub_22EE3C144();
  v95 = sub_22EE3C694();
  v39(v33, v206);

  if (v95)
  {

    v96 = v186;
    v97 = ktrace_file_create(v186, (v95 + 32));

    v98 = v185;
    if (!v97)
    {
      type metadata accessor for TrimError(0);
      sub_22EE27AB4(&qword_27DA95950, type metadata accessor for TrimError);
      v32 = swift_allocError();
      v103 = v102;
      v104 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95960, &qword_22EE440E8) + 48);
      v105 = v198;
      v106 = (*(*(v98 - 8) + 16))(v103, &v198[v209], v98);
      *(v103 + v104) = MEMORY[0x2318F5610](v106);
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      v55 = v105;
      goto LABEL_14;
    }

    v99 = v205;
    sub_22EE2451C(v96, v205);
    v107 = v203;
    v108 = v204;
    v109 = (*(v203 + 48))(v99, 1, v204);
    v210 = v97;
    if (v109 == 1)
    {
      v207 = v91;
      v195 = 0;
      sub_22EDDBA48(v99, &qword_27DA94DB0, &unk_22EE3FAE0);
LABEL_27:
      v110 = v198;
      v111 = swift_allocObject();
      *(v111 + 16) = 0;
      v206 = v111 + 16;
      v112 = swift_allocObject();
      *(v112 + 16) = MEMORY[0x277D84F90];
      v204 = v112 + 16;
      v113 = swift_allocObject();
      *(v113 + 16) = 0;
      v205 = (v113 + 16);
      v114 = v110;
      v115 = rawValue;
      sub_22EE27CF0(v114, rawValue, type metadata accessor for TrimOptions);
      v116 = (*(v208 + 80) + 32) & ~*(v208 + 80);
      v117 = (v197 + v116 + 7) & 0xFFFFFFFFFFFFFFF8;
      v118 = (v117 + 15) & 0xFFFFFFFFFFFFFFF8;
      v119 = swift_allocObject();
      *(v119 + 16) = v192;
      *(v119 + 24) = v112;
      sub_22EE27EDC(v115, v119 + v116);
      *(v119 + v117) = v113;
      v120 = v112;
      v121 = v210;
      *(v119 + v118) = v210;
      *(v119 + ((v118 + 15) & 0xFFFFFFFFFFFFFFF8)) = v111;
      v223 = sub_22EE27F40;
      v224 = v119;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      v221 = sub_22EE18D60;
      v222 = &block_descriptor_2;
      v122 = _Block_copy(&aBlock);

      ktrace_file_iterate(v186, 0, v122);
      _Block_release(v122);
      v123 = v206;
      swift_beginAccess();
      v32 = *v123;
      if (*v123)
      {
        v124 = *v123;
        swift_willThrow();
        v125 = v32;

        v126 = v121;
LABEL_22:
        ktrace_file_close(v126);
        goto LABEL_13;
      }

      v203 = v111;
      v206 = v120;
      v208 = v113;
      v134 = v205;
      swift_beginAccess();
      if ((*v134 & 1) == 0)
      {
        v218 = v192;
        ktrace_file_append_chunk(v210, 32775, 0, 1, &v218, 8);
      }

      v135 = v204;
      swift_beginAccess();
      rawValue = *v135;
      v130 = *(rawValue + 2);
      if (!v130)
      {
LABEL_36:
        v140 = 0;
LABEL_51:

        if (v140 == v130)
        {
LABEL_68:

          v175 = v198;
          v176 = v212;
          (*(*(v185 - 8) + 16))(v212, &v198[v209]);
          swift_storeEnumTagMultiPayload();
          v194(v176);
          sub_22EE27E0C(v176, type metadata accessor for TrimNote);

          ktrace_file_close(v210);
          sub_22EE27E0C(v175, type metadata accessor for TrimOptions);
          v35 = v214;
          goto LABEL_4;
        }

        v153 = 40 * v140;
        v154 = v130;
        while (v140 < v154)
        {
          v155 = *&rawValue[v153 + 32];
          LODWORD(v38) = rawValue[v153 + 40];
          v156 = *&rawValue[v153 + 48];
          v157 = *&rawValue[v153 + 56];
          v158 = rawValue[v153 + 64];
          if (rawValue[v153 + 40])
          {
            if (v38 == 4)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95990, &qword_22EE44110);
              v165 = swift_allocObject();
              *(v165 + 16) = v155;
              *(v165 + 24) = 4;
              *(v165 + 32) = v156;
              *(v165 + 40) = v157;
              *(v165 + 48) = v158;
              *(v165 + 56) = 0;
              v166 = ktrace_chunk_size_t(v155);
              v167 = *(v165 + 56);
              v168 = v166 - v167;
              if (__OFSUB__(v166, v167))
              {
                goto LABEL_90;
              }

              v169 = ktrace_chunk_map_data(v155, v167, v168);
              if (!v169)
              {
                goto LABEL_80;
              }

              *(v165 + 64) = v169;
              *(v165 + 72) = v168 / 48;
              v164 = v195;
              sub_22EE21F78(v210, v207, v192, sub_22EE264FC, 0);
            }

            else
            {
              if (v38 != 1)
              {
                goto LABEL_84;
              }

              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA959A0, qword_22EE44120);
              v159 = swift_allocObject();
              *(v159 + 16) = v155;
              *(v159 + 24) = 1;
              *(v159 + 32) = v156;
              *(v159 + 40) = v157;
              *(v159 + 48) = v158;
              *(v159 + 56) = 8;
              v160 = ktrace_chunk_size_t(v155);
              v161 = *(v159 + 56);
              v162 = v160 - v161;
              if (__OFSUB__(v160, v161))
              {
                goto LABEL_88;
              }

              v163 = ktrace_chunk_map_data(v155, v161, v162);
              if (!v163)
              {
LABEL_80:
                swift_deallocPartialClassInstance();
                type metadata accessor for TrimError(0);
                sub_22EE27AB4(&qword_27DA95950, type metadata accessor for TrimError);
                v32 = swift_allocError();
                v183 = v182;
                *v182 = ktrace_chunk_tag(v155);
                v183[1] = 0;
                goto LABEL_85;
              }

              *(v159 + 64) = v163;
              *(v159 + 72) = v162 / 64;
              v164 = v195;
              sub_22EE21958(v210, v207, v192, sub_22EE264F4, 0);
            }
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95998, &qword_22EE44118);
            v170 = swift_allocObject();
            *(v170 + 16) = v155;
            *(v170 + 24) = 0;
            *(v170 + 32) = v156;
            *(v170 + 40) = v157;
            *(v170 + 48) = v158;
            *(v170 + 56) = 8;
            v171 = ktrace_chunk_size_t(v155);
            v172 = *(v170 + 56);
            v173 = v171 - v172;
            if (__OFSUB__(v171, v172))
            {
              goto LABEL_89;
            }

            v174 = ktrace_chunk_map_data(v155, v172, v173);
            if (!v174)
            {
              goto LABEL_80;
            }

            *(v170 + 64) = v174;
            *(v170 + 72) = v173 / 32;
            v164 = v195;
            sub_22EE21C68(v210, v207, v192, sub_22EE264FC, 0);
          }

          v195 = v164;
          if (v164)
          {

            goto LABEL_82;
          }

          v154 = v130;
          ++v140;

          v153 += 40;
          if (v130 == v140)
          {
            goto LABEL_68;
          }
        }

        goto LABEL_87;
      }

      v136 = 0;
      v137 = (rawValue + 48);
      v138 = *(rawValue + 2);
      while (1)
      {
        v139 = *v137;
        v137 += 5;
        if (v139 >= v207)
        {
          break;
        }

        ++v136;
        if (!--v138)
        {
          goto LABEL_36;
        }
      }

LABEL_47:
      v151 = v136 != 0;
      v152 = v136 - 1;
      if (v151)
      {
        v140 = v152;
      }

      else
      {
        v140 = 0;
      }

      if (v130 < v140)
      {
LABEL_91:
        __break(1u);
        goto LABEL_92;
      }

      goto LABEL_51;
    }

    v127 = v199;
    (*(v107 + 32))(v199, v99, v108);
    v128 = sub_22EE3BDB4();
    v130 = v129;
    (*(v107 + 8))(v127, v108);
    v131 = sub_22EE3B9E4();
    v132 = *(v131 + 48);
    v133 = *(v131 + 52);
    swift_allocObject();
    sub_22EE3B9D4();
    (*(v200 + 104))(v201, *MEMORY[0x277CC8748], v202);
    sub_22EE3B9B4();
    *&aBlock = v128;
    *(&aBlock + 1) = v130;
    sub_22EE28248();
    v141 = sub_22EE3B9C4();
    v143 = v142;
    v207 = v91;
    v195 = 0;

    v144 = v143 >> 62;
    if ((v143 >> 62) > 1)
    {
      if (v144 != 2)
      {
        *(&aBlock + 6) = 0;
        *&aBlock = 0;
        v146 = v210;
        v145 = 0;
        goto LABEL_76;
      }

      v147 = *(v141 + 16);
      v148 = *(v141 + 24);
      v149 = sub_22EE3BAA4();
      if (v149)
      {
        v150 = sub_22EE3BAD4();
        v136 = v147 - v150;
        if (__OFSUB__(v147, v150))
        {
LABEL_93:
          __break(1u);
          goto LABEL_94;
        }

        v149 += v136;
      }

      if (__OFSUB__(v148, v147))
      {
        __break(1u);
        goto LABEL_47;
      }
    }

    else
    {
      if (!v144)
      {
        *&aBlock = v141;
        WORD4(aBlock) = v143;
        BYTE10(aBlock) = BYTE2(v143);
        BYTE11(aBlock) = BYTE3(v143);
        BYTE12(aBlock) = BYTE4(v143);
        v145 = BYTE6(v143);
        BYTE13(aBlock) = BYTE5(v143);
        v146 = v210;
LABEL_76:
        if (ktrace_file_header_append_chunk(v146, 35842, 1, 0, &aBlock, v145))
        {
LABEL_77:

          sub_22EDD4074(v141, v143);
          goto LABEL_27;
        }

        v179 = MEMORY[0x2318F5610]();
        sub_22EE22678();
        v180 = swift_allocError();
        *v181 = 0xD000000000000017;
        *(v181 + 8) = 0x800000022EE4A990;
        *(v181 + 16) = v179;
        *(v181 + 20) = 1;
        v195 = v180;
        swift_willThrow();
LABEL_79:

        sub_22EDD4074(v141, v143);
LABEL_82:
        ktrace_file_close(v210);
        sub_22EE27E0C(v198, type metadata accessor for TrimOptions);
        sub_22EDDBA48(v214, &qword_27DA95988, &unk_22EE44100);
        v32 = v195;
        goto LABEL_16;
      }

      if (v141 > v141 >> 32)
      {
LABEL_92:
        __break(1u);
        goto LABEL_93;
      }

      v149 = sub_22EE3BAA4();
      if (v149)
      {
        v177 = sub_22EE3BAD4();
        if (__OFSUB__(v141, v177))
        {
LABEL_94:
          __break(1u);
          goto LABEL_95;
        }

        v149 += v141 - v177;
      }
    }

    sub_22EE3BAC4();
    v178 = v195;
    sub_22EE26400(v149, v210, v141, v143);
    v195 = v178;
    if (!v178)
    {
      goto LABEL_77;
    }

    goto LABEL_79;
  }

LABEL_95:
  __break(1u);
}

uint64_t sub_22EE26334(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TrimNote(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = (&v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(a3 + 24);
  v10 = *(a3 + 32);
  *v9 = a1;
  v9[1] = a2;
  swift_storeEnumTagMultiPayload();

  v11(v9);
  return sub_22EE27E0C(v9, type metadata accessor for TrimNote);
}

UInt8 *sub_22EE26400(UInt8 *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (!result)
  {
    goto LABEL_16;
  }

  v4 = a4 >> 62;
  if ((a4 >> 62) <= 1)
  {
    if (!v4)
    {
      v5 = BYTE6(a4);
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  if (v4 == 2)
  {
    v7 = *(a3 + 16);
    v6 = *(a3 + 24);
    v5 = v6 - v7;
    if (__OFSUB__(v6, v7))
    {
      __break(1u);
LABEL_9:
      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        v5 = HIDWORD(a3) - a3;
        goto LABEL_12;
      }

      __break(1u);
LABEL_16:
      __break(1u);
      return result;
    }
  }

  else
  {
    v5 = 0;
  }

LABEL_12:
  result = ktrace_file_header_append_chunk(a2, 35842, 1, 0, result, v5);
  if (!result)
  {
    v8 = MEMORY[0x2318F5610]();
    sub_22EE22678();
    swift_allocError();
    *v9 = 0xD000000000000017;
    *(v9 + 8) = 0x800000022EE4A990;
    *(v9 + 16) = v8;
    *(v9 + 20) = 1;
    return swift_willThrow();
  }

  return result;
}

char *sub_22EE26508(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA959F8, &unk_22EE44758);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 40 * v8;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v14])
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

unsigned __int8 *sub_22EE26618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int64_t a5)
{
  v70 = a1;
  v71 = a2;
  v72 = a3;
  v73 = a4;
  sub_22EE28FCC();

  result = sub_22EE3C304();
  v8 = result;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_22EE12EBC();
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
      result = sub_22EE3C8C4();
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

uint64_t sub_22EE26BA8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, int64_t a5)
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
    v11 = sub_22EE3C8C4();
  }

  result = sub_22EE271D8(v11, a1, a2, a3, a4, a5);
  if (!v5)
  {
    v15 = v13 & 1;
LABEL_8:
    v16 = (a4 & 0x1000000000000000) != 0;
  }

  return result;
}

unint64_t sub_22EE26C74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1;
  v46 = *MEMORY[0x277D85DE8];
  result = ktrace_chunk_tag(a1);
  v5 = result;
  if (result == 20982 || result == 7936)
  {
    result = ktrace_chunk_is_64_bit(v2);
    if (v5 == 7936)
    {
      v17 = result;
      if (result)
      {
        v18 = 64;
      }

      else
      {
        v18 = 32;
      }

      if (result)
      {
        v19 = 3;
      }

      else
      {
        v19 = 2;
      }

      result = ktrace_chunk_size(v2);
      if (result >= 0xC)
      {
        v23 = swift_slowAlloc();
        v24 = ktrace_chunk_size_t(v2);
        if (!__OFSUB__(v24, 12))
        {
          if (v24 - 12 >= 64)
          {
            v25 = 64;
          }

          else
          {
            v25 = v24 - 12;
          }

          v37 = v25;
          v26 = ktrace_chunk_copy_data(v2, 12, v23, v25);
          if (v26)
          {
            v9 = v26;
            v10 = 0x800000022EE4AA90;
            sub_22EE22678();
            swift_allocError();
            v12 = 0xD00000000000001ELL;
            goto LABEL_30;
          }

          bzero(&v38, 0x388uLL);
          ktrace_compressor_reset(&v38);
          v44 = 0u;
          v45 = 0u;
          v42 = 0u;
          v43 = 0u;
          type metadata accessor for ktrace_point(0);
          v31 = sub_22EE3C404();
          *(v31 + 16) = 1;
          v32 = v43;
          *(v31 + 32) = v42;
          *(v31 + 48) = v32;
          v33 = v45;
          *(v31 + 64) = v44;
          *(v31 + 80) = v33;
          if (decompress_64(&v38, v23, &v37, v31 + 32, v18) != v18)
          {
            sub_22EE22678();
            swift_allocError();
            *v35 = 0xD000000000000022;
            *(v35 + 8) = 0x800000022EE4AAB0;
            *(v35 + 16) = 0;
            *(v35 + 20) = 0;
            swift_willThrow();

            goto LABEL_42;
          }

          v34 = *(v31 + 16);
          if (v17)
          {
            if (!v34)
            {
LABEL_58:
              __break(1u);
LABEL_59:
              __break(1u);
            }

            v20 = *(v31 + 32);
          }

          else
          {
            if (!v34)
            {
              goto LABEL_59;
            }

            v36 = *(v31 + 32);

            v20 = v36 & 0xFFFFFFFFFFFFFFLL;
          }

          v21 = 0;
          v22 = 1;
          goto LABEL_23;
        }

        __break(1u);
        goto LABEL_56;
      }
    }

    else if (v5 == 20982)
    {
      result = ktrace_chunk_size(v2);
      if (result >= 0x30)
      {
        v39 = 0u;
        v40 = 0u;
        v38 = 0u;
        v13 = ktrace_chunk_copy_data(v2, 0, &v38, 0x30uLL);
        if (v13)
        {
          v14 = v13;
          v15 = 0x800000022EE4AAE0;
          sub_22EE22678();
          swift_allocError();
          v16 = 0xD00000000000001BLL;
LABEL_40:
          *v11 = v16;
          *(v11 + 8) = v15;
          *(v11 + 16) = v14;
          goto LABEL_41;
        }

        v28 = v38;
        v43 = 0u;
        v44 = 0u;
        v42 = 0u;
        v29 = ktrace_chunk_size_t(v2);
        if (!__OFSUB__(v29, 48))
        {
          result = ktrace_chunk_copy_data(v2, v29 - 48, &v42, 0x30uLL);
          if (result)
          {
            v14 = result;
            v15 = 0x800000022EE4AB00;
            sub_22EE22678();
            swift_allocError();
            v16 = 0xD00000000000001ALL;
            goto LABEL_40;
          }

          v22 = 0;
          v20 = v28 & 0xFFFFFFFFFFFFFFLL;
          v21 = v42 & 0xFFFFFFFFFFFFFFLL;
          v19 = 4;
          goto LABEL_23;
        }

        goto LABEL_57;
      }
    }

LABEL_22:
    v2 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v19 = 5;
    goto LABEL_23;
  }

  if (result != 7680)
  {
    goto LABEL_22;
  }

  is_64_bit = ktrace_chunk_is_64_bit(v2);
  v7 = is_64_bit ? 64 : 32;
  result = ktrace_chunk_size(v2);
  if (result < (v7 | 8))
  {
    goto LABEL_22;
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v8 = ktrace_chunk_copy_data(v2, 8, &v38, v7);
  if (v8)
  {
    v9 = v8;
    v10 = 0x800000022EE4AB20;
    sub_22EE22678();
    swift_allocError();
    v12 = 0xD000000000000017;
LABEL_30:
    *v11 = v12;
    *(v11 + 8) = v10;
    *(v11 + 16) = v9;
LABEL_41:
    *(v11 + 20) = 1;
    result = swift_willThrow();
    goto LABEL_42;
  }

  v19 = is_64_bit;
  if (is_64_bit)
  {
    v20 = v38;
  }

  else
  {
    v20 = v38 & 0xFFFFFFFFFFFFFFLL;
  }

  v27 = ktrace_chunk_size_t(v2);
  if (__OFSUB__(v27, v7))
  {
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  result = ktrace_chunk_copy_data(v2, v27 - v7, &v38, v7);
  if (result)
  {
    v14 = result;
    v15 = 0x800000022EE4AB40;
    sub_22EE22678();
    swift_allocError();
    v16 = 0xD000000000000016;
    goto LABEL_40;
  }

  v22 = 0;
  v21 = v38;
  if (!v19)
  {
    v21 = v38 & 0xFFFFFFFFFFFFFFLL;
  }

LABEL_23:
  *a2 = v2;
  *(a2 + 8) = v19;
  *(a2 + 16) = v20;
  *(a2 + 24) = v21;
  *(a2 + 32) = v22;
LABEL_42:
  v30 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_22EE27184()
{
  result = qword_27DA95948;
  if (!qword_27DA95948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA95948);
  }

  return result;
}

uint64_t sub_22EE271D8(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, int64_t a6)
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
    result = sub_22EE132B4(a2, a4, a5);
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
  result = sub_22EE3C264();
  a5 = v20;
  v13 = result;
  a3 = v19;
  a2 = v18;
  if (v11 == v10)
  {
LABEL_14:
    v21 = a3;
    v22 = a5;
    result = sub_22EE132B4(a2, a4, a5);
    a3 = v21;
    a5 = v22;
    a2 = result;
  }

LABEL_6:
  if ((a3 & 0xC) == v10)
  {
    v23 = a2;
    v24 = a5;
    result = sub_22EE132B4(a3, a4, a5);
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

  result = sub_22EE3C264();
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

uint64_t sub_22EE27644(uint64_t a1, unint64_t a2)
{
  if ((sub_22EE3C2A4() & 1) == 0)
  {
    if ((sub_22EE3C2A4() & 1) == 0)
    {
      if (sub_22EE3C2A4())
      {

        v31 = sub_22EDEC670(1uLL, a1, a2);
        v33 = v32;
        v35 = v34;
        v37 = v36;

        if ((v31 ^ v33) >> 14)
        {
          v38 = sub_22EE26BA8(v31, v33, v35, v37, 10);
          if ((v39 & 0x100) != 0)
          {
            v17 = sub_22EE26618(v31, v33, v35, v37, 10);
            v46 = v45;

            if ((v46 & 1) == 0)
            {
              goto LABEL_17;
            }
          }

          else
          {
            v40 = v39;
            v17 = v38;

            if ((v40 & 1) == 0)
            {
              goto LABEL_17;
            }
          }
        }

        else
        {
        }

        type metadata accessor for TrimError(0);
        sub_22EE27AB4(&qword_27DA95950, type metadata accessor for TrimError);
        swift_allocError();
        v42 = v47;
        sub_22EE3C864();

        v48 = a1;
        v49 = a2;
        v44 = 0x800000022EE4AA60;
        v43 = 0xD000000000000029;
      }

      else
      {
        type metadata accessor for TrimError(0);
        sub_22EE27AB4(&qword_27DA95950, type metadata accessor for TrimError);
        swift_allocError();
        v42 = v41;
        v48 = 0;
        v49 = 0xE000000000000000;
        sub_22EE3C864();
        MEMORY[0x2318F58F0](a1, a2);

        v43 = 0xD000000000000032;
        v44 = 0x800000022EE4AA20;
      }

      MEMORY[0x2318F58F0](v43, v44);
      *v42 = v48;
      v42[1] = v49;
      swift_storeEnumTagMultiPayload();
      return swift_willThrow();
    }

    v18 = sub_22EDEC670(1uLL, a1, a2);
    v20 = v19;
    v22 = v21;
    v24 = v23;

    v25 = MEMORY[0x2318F5880](v18, v20, v22, v24);
    v27 = v26;

    v28 = sub_22ED808E4();
    v29 = sub_22EE10DF0(v25, v27, v28 & 1);
    if (!v2)
    {
      v17 = v29;
      goto LABEL_17;
    }
  }

  v5 = sub_22EDEC670(1uLL, a1, a2);
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = MEMORY[0x2318F5880](v5, v7, v9, v11);
  v14 = v13;

  v15 = sub_22ED808E4();
  v16 = sub_22EE10DF0(v12, v14, v15 & 1);
  if (v2)
  {
  }

  v17 = v16;
LABEL_17:

  return v17;
}

uint64_t sub_22EE27A34(uint64_t a1, unsigned __int8 a2, uint64_t a3, char a4)
{
  if (a2 > 1u)
  {
    if (a2 != 2)
    {
      if (a1)
      {
        if (a4 != 3 || a3 != 1)
        {
          return 0;
        }
      }

      else if (a4 != 3 || a3)
      {
        return 0;
      }

      return 1;
    }

    if (a4 == 2)
    {
      return a1 == a3;
    }
  }

  else
  {
    if (!a2)
    {
      if (!a4)
      {
        return a1 == a3;
      }

      return 0;
    }

    if (a4 == 1)
    {
      return a1 == a3;
    }
  }

  return 0;
}

uint64_t sub_22EE27AB4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22EE27B1C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_22EE27B5C(uint64_t a1, unint64_t a2)
{

  result = sub_22EE27644(a1, a2);
  if (!v3)
  {
    v8 = result;
    v9 = v7;
    result = swift_beginAccess();
    *(v2 + 16) = v8;
    *(v2 + 24) = v9;
  }

  return result;
}

uint64_t sub_22EE27BD4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 24);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

unint64_t sub_22EE27C8C()
{
  result = qword_27DA95978;
  if (!qword_27DA95978)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DA95970, &unk_22EE447C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA95978);
  }

  return result;
}

uint64_t sub_22EE27CF0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_22EE27D58()
{
  result = qword_27DA9BB00[0];
  if (!qword_27DA9BB00[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DA9BB00);
  }

  return result;
}

uint64_t sub_22EE27E0C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22EE27E6C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95988, &unk_22EE44100);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22EE27EDC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TrimOptions(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22EE27F40(void *a1)
{
  v3 = type metadata accessor for TrimOptions(0);
  v4 = (*(*(v3 - 8) + 80) + 32) & ~*(*(v3 - 8) + 80);
  v5 = (*(*(v3 - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + 16);
  v7 = *(v1 + 24);
  v9 = *(v1 + v5);
  v10 = *(v1 + v6);
  v11 = *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));
  sub_22EE26C74(a1, &v32);
  v14 = v33;
  if (v33 == 5)
  {
    v15 = ktrace_chunk_tag(a1);
    v16 = v1 + v4 + *(v3 + 28);
    if (*(v16 + 8) >= 3u)
    {
      if (*v16)
      {
        v26 = 0;
      }

      else
      {
        v26 = v15 == 32775;
      }

      if (v26)
      {
        goto LABEL_6;
      }
    }

    else if (v15 == 32775)
    {
LABEL_6:
      v17 = 1;
      swift_beginAccess();
      *(v9 + 16) = 1;
      return v17;
    }

    if (!ktrace_file_append(v10, a1))
    {
      type metadata accessor for TrimError(0);
      sub_22EE27AB4(&qword_27DA95950, type metadata accessor for TrimError);
      v27 = swift_allocError();
      v29 = v28;
      v30 = ktrace_chunk_tag(a1);
      v31 = MEMORY[0x2318F5610]();
      *v29 = v30;
      v29[1] = v31;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      swift_beginAccess();
      v12 = *(v11 + 16);
      *(v11 + 16) = v27;

      return 0;
    }

    return 1;
  }

  v18 = v32;
  v19 = v34;
  v37 = v35;
  v38 = v36;
  if (v34 > v8)
  {
    return 1;
  }

  swift_beginAccess();
  v20 = *(v7 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v7 + 16) = v20;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v20 = sub_22EE26508(0, *(v20 + 2) + 1, 1, v20);
    *(v7 + 16) = v20;
  }

  v23 = *(v20 + 2);
  v22 = *(v20 + 3);
  if (v23 >= v22 >> 1)
  {
    v20 = sub_22EE26508((v22 > 1), v23 + 1, 1, v20);
  }

  *(v20 + 2) = v23 + 1;
  v24 = &v20[40 * v23];
  *(v24 + 4) = v18;
  *(v24 + 5) = v14;
  *(v24 + 6) = v19;
  v25 = v38;
  *(v24 + 7) = v37;
  v24[64] = v25;
  *(v7 + 16) = v20;
  swift_endAccess();
  return 1;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_22EE28248()
{
  result = qword_27DA959A8;
  if (!qword_27DA959A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA959A8);
  }

  return result;
}

unint64_t sub_22EE282A4()
{
  result = qword_27DA959B0;
  if (!qword_27DA959B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA959B0);
  }

  return result;
}

uint64_t sub_22EE283A4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 33))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 5;
  v5 = v3 - 5;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_22EE283E8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 4;
    }
  }

  return result;
}

__n128 __swift_memcpy21_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 13) = *(a2 + 13);
  *a1 = result;
  return result;
}

uint64_t sub_22EE28460(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 21))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 20);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_22EE284A8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 20) = 0;
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 21) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 21) = 0;
    }

    if (a2)
    {
      *(result + 20) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for EventChunk.Kind(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for EventChunk.Kind(uint64_t result, unsigned int a2, unsigned int a3)
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

__n128 __swift_memcpy20_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

uint64_t sub_22EE28670(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 20))
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

uint64_t sub_22EE286B8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 20) = 1;
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

    *(result + 20) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
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

uint64_t getEnumTagSinglePayload for TrimLocation(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 9))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 8);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for TrimLocation(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_22EE287A8(uint64_t a1)
{
  if (*(a1 + 8) <= 2u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 3);
  }
}

uint64_t sub_22EE287C0(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 8) = a2;
  return result;
}

void sub_22EE287E8()
{
  sub_22EE288A0();
  if (v0 <= 0x3F)
  {
    sub_22EE28908();
    if (v1 <= 0x3F)
    {
      sub_22EE28968();
      if (v2 <= 0x3F)
      {
        sub_22EE3BFD4();
        if (v3 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

void sub_22EE288A0()
{
  if (!qword_27DA959B8)
  {
    sub_22EE3BFD4();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27DA959B8);
    }
  }
}

void sub_22EE28908()
{
  if (!qword_27DA959C0)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27DA959C0);
    }
  }
}

void sub_22EE28968()
{
  if (!qword_27DA959C8)
  {
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_27DA959C8);
    }
  }
}

void sub_22EE289D4()
{
  sub_22EE28A68();
  if (v0 <= 0x3F)
  {
    sub_22EE28ACC();
    if (v1 <= 0x3F)
    {
      sub_22EE3BFD4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

unint64_t sub_22EE28A68()
{
  result = qword_27DA959D0;
  if (!qword_27DA959D0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27DA959D0);
  }

  return result;
}

void sub_22EE28ACC()
{
  if (!qword_27DA959D8)
  {
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_27DA959D8);
    }
  }
}

uint64_t sub_22EE28B58()
{
  result = sub_22EE3BFD4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_22EE28C14(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22EE28C34(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 32) = v3;
  return result;
}

__n128 __swift_memcpy48_1(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

unint64_t sub_22EE28CB0()
{
  result = qword_27DA9C240[0];
  if (!qword_27DA9C240[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DA9C240);
  }

  return result;
}

unint64_t sub_22EE28D08()
{
  result = qword_27DA9C350;
  if (!qword_27DA9C350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA9C350);
  }

  return result;
}

unint64_t sub_22EE28D60()
{
  result = qword_27DA9C358[0];
  if (!qword_27DA9C358[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DA9C358);
  }

  return result;
}

BOOL sub_22EE28DB4(_OWORD *a1)
{
  v3 = v1[2];
  v2 = v1[3];
  v4 = v1[4];
  v5 = a1[1];
  v8[0] = *a1;
  v8[1] = v5;
  v6 = a1[3];
  v8[2] = a1[2];
  v8[3] = v6;
  return v3(v8) > v4;
}

BOOL sub_22EE28E08(_OWORD *a1)
{
  v3 = v1[2];
  v2 = v1[3];
  v4 = v1[5];
  v5 = a1[1];
  v8[0] = *a1;
  v8[1] = v5;
  v6 = a1[3];
  v8[2] = a1[2];
  v8[3] = v6;
  return v3(v8) > v4;
}

BOOL sub_22EE28E5C(uint64_t *a1)
{
  v3 = v1[2];
  v2 = v1[3];
  v4 = v1[4];
  v6 = *a1;
  v7 = *(a1 + 1);
  v8 = a1[3];
  return v3(&v6) > v4;
}

BOOL sub_22EE28EB8(uint64_t *a1)
{
  v3 = v1[2];
  v2 = v1[3];
  v4 = v1[5];
  v6 = *a1;
  v7 = *(a1 + 1);
  v8 = a1[3];
  return v3(&v6) > v4;
}

BOOL sub_22EE28F14(uint64_t a1)
{
  v3 = v1[2];
  v2 = v1[3];
  v4 = v1[4];
  v7[0] = *a1;
  v7[1] = *(a1 + 8);
  v5 = *(a1 + 32);
  v8 = *(a1 + 16);
  v9 = v5;
  return v3(v7) > v4;
}

BOOL sub_22EE28F70(uint64_t a1)
{
  v3 = v1[2];
  v2 = v1[3];
  v4 = v1[5];
  v7[0] = *a1;
  v7[1] = *(a1 + 8);
  v5 = *(a1 + 32);
  v8 = *(a1 + 16);
  v9 = v5;
  return v3(v7) > v4;
}

unint64_t sub_22EE28FCC()
{
  result = qword_27DA95A00;
  if (!qword_27DA95A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA95A00);
  }

  return result;
}

unint64_t AmendmentError.errorDescription.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  if (v3 <= 1)
  {
    if (*(v0 + 16))
    {
      sub_22EE3C864();

      v9 = v1;
      v6 = 0x696C61766E69203ALL;
      v7 = 0xEE00656C69662064;
      goto LABEL_11;
    }

    sub_22EE3C864();

    v5 = 0xD000000000000013;
    goto LABEL_8;
  }

  if (v3 == 2)
  {
    sub_22EE3C864();

    v5 = 0xD000000000000010;
LABEL_8:
    v9 = v5;
    v6 = v1;
    v7 = v2;
LABEL_11:
    MEMORY[0x2318F58F0](v6, v7);
    return v9;
  }

  if (v3 != 3)
  {
    sub_22EE3C864();

    v9 = v1;
    v6 = 0xD000000000000012;
    v7 = 0x800000022EE4AB60;
    goto LABEL_11;
  }

  sub_22EE3C864();

  v9 = 0xD00000000000001BLL;
  swift_getErrorValue();
  v4 = sub_22EE3CBF4();
  MEMORY[0x2318F58F0](v4);

  return v9;
}

uint64_t Amending.toolName.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t Amending.notify.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t Amending.init(toolName:interactive:notify:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *(a6 + 32) = a5;
  *(a6 + 40) = 0;
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Amending.amend(arguments:)(Swift::OpaquePointer arguments)
{
  rawValue = arguments._rawValue;
  v3 = sub_22EE3BFF4();
  v138 = *(v3 - 8);
  v139 = v3;
  v4 = *(v138 + 64);
  MEMORY[0x28223BE20](v3);
  v137 = &v124 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22EE3C504();
  isa = v6[-1].isa;
  v144 = v6;
  v7 = isa[8].isa;
  MEMORY[0x28223BE20](v6);
  v142 = &v124 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = sub_22EE3C4E4();
  v9 = *(*(v140 - 8) + 64);
  MEMORY[0x28223BE20](v140);
  v141 = &v124 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22EE3C014();
  v135 = *(v11 - 8);
  v136 = v11;
  v12 = *(v135 + 64);
  MEMORY[0x28223BE20](v11);
  v145 = &v124 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v1[1];
  v171 = *v1;
  v172 = v14;
  v173 = v1[2];
  v15 = swift_allocObject();
  *(v15 + 16) = MEMORY[0x277D84FA0];
  v146 = (v15 + 16);
  *(v15 + 24) = MEMORY[0x277D84F90];
  *(v15 + 32) = 0;
  v16 = v171;
  v17 = swift_allocObject();
  v18 = v1[1];
  v17[1] = *v1;
  v17[2] = v18;
  v17[3] = v1[2];

  sub_22EE2B314(&v171, &v153);
  v19 = sub_22EDEBE84();
  v20 = sub_22EDEBE90();
  v21 = sub_22EDEBE90();
  v123.n128_u64[1] = v20;
  *(&v122 + 1) = v17;
  v123.n128_u64[0] = v19;
  *&v122 = sub_22EE2B2B8;
  *&v121 = 0xD000000000000049;
  *(&v121 + 1) = 0x800000022EE4A810;
  sub_22EDEBE9C(v16, *(&v16 + 1), sub_22EE2AFD4, v15, 0xD000000000000039, 0x800000022EE4ABC0, 0, 0, &v162, v121, 0, v122, v123, v21);

  v22 = sub_22ED808E4();
  sub_22EDE98AC(6579297, 0xE300000000000000, 0xD000000000000017, 0x800000022EE4AC00, 0, 0, v22 & 1, sub_22EE2B34C, v15);

  v23 = sub_22ED808E4();
  sub_22EDE987C(0x656D697265707865, 0xEC0000006C61746ELL, 0xD000000000000026, 0x800000022EE4AC20, 0, 0, v23 & 1, sub_22EE2B4FC, v15);

  v24 = v167;

  sub_22ED97EE0(v24);
  *&v167 = sub_22EE2B544;
  *(&v167 + 1) = v15;
  v180 = v168;
  v181 = v169;
  v182 = v170;
  v176 = v164;
  v177 = v165;
  v174 = v162;
  v175 = v163;
  v178 = v166;
  v179 = v167;
  v25 = v148;
  v26 = sub_22EDEA6A8(rawValue);
  v27 = v25;
  if (v25)
  {
    goto LABEL_2;
  }

  v148 = MEMORY[0x277D84F90];
  if (!v26)
  {
    v159 = v168;
    v160 = v169;
    v161 = v170;
    v155 = v164;
    v156 = v165;
    v157 = v166;
    v158 = v167;
    v153 = v162;
    v154 = v163;
    sub_22EE27C38(&v153);

    v31 = 0;
    goto LABEL_4;
  }

  v28 = v26[2];
  if (!v28)
  {

    sub_22EE2B714();
    v27 = swift_allocError();
    *v36 = 0xD000000000000024;
    *(v36 + 8) = 0x800000022EE4AE30;
    *(v36 + 16) = 0;
    swift_willThrow();
    v159 = v168;
    v160 = v169;
    v161 = v170;
    v155 = v164;
    v156 = v165;
    v157 = v166;
    v158 = v167;
    v153 = v162;
    v154 = v163;
    sub_22EE27C38(&v153);

    goto LABEL_3;
  }

  v32 = v26 + 4;
  v33 = v26[4];
  if (v28 != 1)
  {
    *&v153 = 0;
    *(&v153 + 1) = 0xE000000000000000;
    v27 = v26;
    sub_22EE3C864();

    v149 = 0xD000000000000011;
    v150 = 0x800000022EE4A8D0;
    if (v27[2] < v28)
    {
      __break(1u);
      goto LABEL_48;
    }

    *&v153 = v27;
    *(&v153 + 1) = v32;
    *&v154 = 1;
    *(&v154 + 1) = (2 * v28) | 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95970, &unk_22EE447C0);
    sub_22EE0D944(&qword_27DA95978, &qword_27DA95970, &unk_22EE447C0);
    v37 = sub_22EE3C0B4();
    v39 = v38;

    MEMORY[0x2318F58F0](v37, v39);

    v40 = v149;
    v41 = v150;
    sub_22EE2B714();
    v27 = swift_allocError();
    *v42 = v40;
    *(v42 + 8) = v41;
    *(v42 + 16) = 0;
    goto LABEL_14;
  }

  rawValue = v26;
  v34 = v26[5];
  v35 = *(&v173 + 1);
  if (*(&v173 + 1))
  {

    goto LABEL_16;
  }

  v43 = sub_22EE3C184();

  v35 = ktrace_file_open((v43 + 32), 1);

  if (!v35)
  {
    *&v153 = 0;
    *(&v153 + 1) = 0xE000000000000000;
    sub_22EE3C864();

    v149 = v33;
    v150 = v34;
    v52 = MEMORY[0x2318F58F0](0xD00000000000001DLL, 0x800000022EE4AC50);
    v53 = MEMORY[0x2318F5610](v52);
    if (!strerror(v53))
    {
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
      goto LABEL_70;
    }

    v54 = sub_22EE3C214();
    MEMORY[0x2318F58F0](v54);

    v55 = v149;
    v56 = v150;
    sub_22EE2B714();
    v27 = swift_allocError();
    *v57 = v55;
    *(v57 + 8) = v56;
    *(v57 + 16) = 1;
LABEL_14:
    swift_willThrow();
LABEL_2:
    v159 = v168;
    v160 = v169;
    v161 = v170;
    v155 = v164;
    v156 = v165;
    v157 = v166;
    v158 = v167;
    v153 = v162;
    v154 = v163;
    sub_22EE27C38(&v153);

    v28 = 0;
LABEL_3:
    v29 = *(&v172 + 1);
    v162 = v27;
    LOBYTE(v163) = 1;
    v30 = v27;
    v29(&v162);
    sub_22EE2B6E8(v162, *(&v162 + 1), v163);
    swift_willThrow();
    v31 = v28;
LABEL_4:
    sub_22ED97EE0(v31);
    return;
  }

LABEL_16:
  if (ktrace_file_get_format(v35) != 4)
  {

    *&v153 = 0;
    *(&v153 + 1) = 0xE000000000000000;
    sub_22EE3C864();

    *&v153 = v33;
    *(&v153 + 1) = v34;
    MEMORY[0x2318F58F0](0xD000000000000021, 0x800000022EE4AC70);
    v47 = v153;
    sub_22EE2B714();
    v27 = swift_allocError();
    *v48 = v47;
    *(v48 + 16) = 1;
    swift_willThrow();
LABEL_19:
    ktrace_file_close(v35);
    goto LABEL_2;
  }

  v44 = v146;
  swift_beginAccess();
  v45 = *(v15 + 24);

  v49 = sub_22EE15A60(v46);

  v152 = v49;
  v50 = *v44;

  v58 = sub_22EE2ACAC(v51, v44, &v152);

  if (!*(v58 + 16))
  {

    sub_22EE2B714();
    v27 = swift_allocError();
    *v70 = 0xD000000000000024;
    *(v70 + 8) = 0x800000022EE4AE00;
    *(v70 + 16) = 0;
    swift_willThrow();

    goto LABEL_19;
  }

  v134 = v58;
  v132 = v34;
  v151 = 0;
  v59 = swift_allocObject();
  *(v59 + 16) = &v151;
  v60 = swift_allocObject();
  *(v60 + 16) = sub_22EE2B768;
  *(v60 + 24) = v59;
  *&v155 = sub_22EDDC48C;
  *(&v155 + 1) = v60;
  *&v153 = MEMORY[0x277D85DD0];
  v2 = 1107296256;
  *(&v153 + 1) = 1107296256;
  *&v154 = sub_22EDD6F98;
  *(&v154 + 1) = &block_descriptor_3;
  v61 = v35;
  v62 = _Block_copy(&v153);

  v133._rawValue = v61;
  v63 = ktrace_file_header_iterate(v61, 0, v62);
  _Block_release(v62);
  LOBYTE(v62) = swift_isEscapingClosureAtFileLocation();

  if (v62)
  {
    __break(1u);
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  if (v63)
  {
    *&v153 = 0;
    *(&v153 + 1) = 0xE000000000000000;
    sub_22EE3C864();

    v149 = 0xD00000000000001DLL;
    v150 = 0x800000022EE4ACA0;
    v64 = strerror(v63);
    v65 = v133._rawValue;
    if (v64)
    {

      v66 = sub_22EE3C214();
      MEMORY[0x2318F58F0](v66);

      v67 = v149;
      v68 = v150;
      sub_22EE2B714();
      v27 = swift_allocError();
      *v69 = v67;
      *(v69 + 8) = v68;
LABEL_27:
      *(v69 + 16) = 2;
      swift_willThrow();
LABEL_39:

      ktrace_file_close(v65);
      v159 = v168;
      v160 = v169;
      v161 = v170;
      v155 = v164;
      v156 = v165;
      v157 = v166;
      v158 = v167;
      v153 = v162;
      v154 = v163;
      sub_22EE27C38(&v153);

      v28 = sub_22EE2B768;
      goto LABEL_3;
    }

    goto LABEL_69;
  }

  v71 = v151;
  v65 = v133._rawValue;
  if (!v151)
  {

    sub_22EE2B714();
    v27 = swift_allocError();
    *v69 = 0xD000000000000024;
    *(v69 + 8) = 0x800000022EE4ACC0;
    goto LABEL_27;
  }

  v72 = ktrace_session_create_with_flags(0);
  if (!v72)
  {
    *&v153 = 0;
    *(&v153 + 1) = 0xE000000000000000;
    sub_22EE3C864();

    v149 = 0xD00000000000002ALL;
    v150 = 0x800000022EE4ACF0;
    v82 = MEMORY[0x2318F5610](v81);
    if (!strerror(v82))
    {
LABEL_71:
      __break(1u);
      goto LABEL_72;
    }

    v83 = sub_22EE3C214();
    MEMORY[0x2318F58F0](v83);

    v84 = v149;
    v85 = v150;
    sub_22EE2B714();
    v27 = swift_allocError();
    *v86 = v84;
    *(v86 + 8) = v85;
    *(v86 + 16) = 2;
    swift_willThrow();
    v80 = v71;
LABEL_38:
    ktrace_machine_destroy(v80);
    goto LABEL_39;
  }

  v73 = v72;
  v131 = v71;
  v74 = ktrace_set_ktrace_file(v72, v65, 0);
  if (v74)
  {
    v75 = v74;
    *&v153 = 0;
    *(&v153 + 1) = 0xE000000000000000;
    sub_22EE3C864();

    v149 = 0xD000000000000023;
    v150 = 0x800000022EE4AD20;
    if (!strerror(v75))
    {
LABEL_70:
      __break(1u);
      goto LABEL_71;
    }

    v76 = sub_22EE3C214();
    MEMORY[0x2318F58F0](v76);

    v77 = v149;
    v78 = v150;
    sub_22EE2B714();
    v27 = swift_allocError();
    *v79 = v77;
    *(v79 + 8) = v78;
    goto LABEL_34;
  }

  v87 = sub_22EE101C0();
  if (!v87)
  {

    sub_22EE2B714();
    v27 = swift_allocError();
    *v79 = 0xD000000000000019;
    *(v79 + 8) = 0x800000022EE4AD50;
LABEL_34:
    *(v79 + 16) = 2;
    swift_willThrow();
    v80 = v131;
    goto LABEL_38;
  }

  v125 = v73;
  v127 = v59;
  v128 = v15;
  if (v172)
  {
    v88 = sub_22EE0FD20();
    swift_beginAccess();
    v89 = *v88;
    v90 = sub_22EE0FCB0();
    swift_beginAccess();
    v91 = *v90;
  }

  else
  {
    v91 = v87;
    v89 = v87;
  }

  type metadata accessor for Reporter();
  v126 = sub_22EDE8AD8(v89, v91, 0x676E69646E656D41, 0xE800000000000000, 1);
LABEL_48:
  type metadata accessor for ProviderList();
  v130 = ProviderList.__allocating_init(machine:)(v131);
  v92 = *(v134 + 16);
  if (v92)
  {
    v93 = 0;
    v129 = *(v128 + 32);
    v94 = (v134 + 48);
    v95 = v126;
    while (v93 < *(v134 + 16))
    {
      v96 = *(v94 - 1);
      v97 = *v94;
      v98 = *(v94 - 2);

      sub_22EDDE6A8(v98, v96, v97, v95, v129);
      if (v27)
      {

        goto LABEL_46;
      }

      ++v93;
      v94 += 4;
      if (v92 == v93)
      {
        goto LABEL_53;
      }
    }

    goto LABEL_66;
  }

LABEL_53:
  sub_22EDDF0A0(v133._rawValue);
  if (v27)
  {

    sub_22EE2B714();
    v99 = swift_allocError();
    *v100 = v27;
    *(v100 + 8) = 0;
    *(v100 + 16) = 3;
    swift_willThrow();

    ktrace_machine_destroy(v131);

    ktrace_file_close(v133._rawValue);
    v159 = v168;
    v160 = v169;
    v161 = v170;
    v155 = v164;
    v156 = v165;
    v157 = v166;
    v158 = v167;
    v153 = v162;
    v154 = v163;
    sub_22EE27C38(&v153);

    v28 = sub_22EE2B768;
    v27 = v99;
    goto LABEL_3;
  }

  sub_22EE1DA64(0, &qword_27DA95818, 0x277D85C78);
  sub_22EE3C004();
  *&v153 = MEMORY[0x277D84F90];
  sub_22EE2BAD0(&qword_27DA95820, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95828, &unk_22EE43B90);
  sub_22EE0D944(&qword_27DA95830, &qword_27DA95828, &unk_22EE43B90);
  sub_22EE3C7B4();
  (isa[13].isa)(v142, *MEMORY[0x277D85260], v144);
  v144 = sub_22EE3C514();
  v101 = dispatch_semaphore_create(0);
  v102 = swift_allocObject();
  v103 = v172;
  *(v102 + 16) = v171;
  *(v102 + 32) = v103;
  *(v102 + 48) = v173;
  v104 = v125;
  *(v102 + 64) = v125;
  *(v102 + 72) = v101;
  *&v155 = sub_22EE2B7B0;
  *(&v155 + 1) = v102;
  *&v153 = MEMORY[0x277D85DD0];
  *(&v153 + 1) = v2;
  *&v154 = sub_22ED842DC;
  *(&v154 + 1) = &block_descriptor_15;
  v105 = _Block_copy(&v153);
  sub_22EE2B314(&v171, &v149);
  isa = v101;

  ktrace_set_completion_handler(v104, v105);
  _Block_release(v105);
  ProviderList.configurePostprocessing(session:)(v104);
  v106 = *v146;
  v107 = *(*v146 + 16);
  if (v107)
  {
    v148 = sub_22EDF3184(*(*v146 + 16), 0);
    v108 = sub_22EDF3E34(&v153, v148 + 4, v107, v106);

    sub_22ED97F20();
    if (v108 != v107)
    {
      goto LABEL_68;
    }
  }

  v153 = v148;
  LOBYTE(v154) = 2;
  v148 = *(&v172 + 1);
  (*(&v172 + 1))(&v153);
  sub_22EE2B6E8(v153, *(&v153 + 1), v154);
  if (!ktrace_session_has_callbacks(v125))
  {

    (*(*v126 + 224))(0xD000000000000029, 0x800000022EE4ADA0);
LABEL_64:
    v119 = v133._rawValue;
    v120 = v130;
    ProviderList.postprocessingComplete(file:)(v133);
    v153 = xmmword_22EE41ED0;
    LOBYTE(v154) = 3;
    (v148)(&v153);

    ktrace_machine_destroy(v131);

    ktrace_file_close(v119);
    v159 = v168;
    v160 = v169;
    v161 = v170;
    v155 = v164;
    v156 = v165;
    v157 = v166;
    v158 = v167;
    v153 = v162;
    v154 = v163;
    sub_22EE27C38(&v153);

    v31 = sub_22EE2B768;
    goto LABEL_4;
  }

  sub_22EE1DA64(0, &qword_27DA952B0, 0x277D85CA0);
  sub_22EE3C524();
  swift_getObjectType();
  v109 = swift_allocObject();
  v110 = v172;
  *(v109 + 16) = v171;
  *(v109 + 32) = v110;
  *(v109 + 48) = v173;
  v111 = v125;
  *(v109 + 64) = v125;
  *&v155 = sub_22EE2B858;
  *(&v155 + 1) = v109;
  *&v153 = MEMORY[0x277D85DD0];
  *(&v153 + 1) = v2;
  *&v154 = sub_22ED842DC;
  *(&v154 + 1) = &block_descriptor_21;
  v112 = _Block_copy(&v153);
  sub_22EE2B314(&v171, &v149);
  v113 = v145;
  sub_22EE3C004();
  v114 = v137;
  sub_22EDEE074();
  sub_22EE3C534();
  _Block_release(v112);
  (*(v138 + 8))(v114, v139);
  (*(v135 + 8))(v113, v136);

  sub_22EE3C554();
  if (!ktrace_start(v111, v144))
  {

    sub_22EE3C594();
    sub_22EE3C544();
    swift_unknownObjectRelease();
    goto LABEL_64;
  }

  *&v153 = 0;
  *(&v153 + 1) = 0xE000000000000000;
  sub_22EE3C864();

  v149 = 0xD000000000000024;
  v150 = 0x800000022EE4ADD0;
  if (strerror(0))
  {

    v115 = sub_22EE3C214();
    MEMORY[0x2318F58F0](v115);

    v116 = v149;
    v117 = v150;
    sub_22EE2B714();
    v27 = swift_allocError();
    *v118 = v116;
    *(v118 + 8) = v117;
    *(v118 + 16) = 2;
    swift_willThrow();

    swift_unknownObjectRelease();
LABEL_46:
    ktrace_machine_destroy(v131);

    ktrace_file_close(v133._rawValue);
    v159 = v168;
    v160 = v169;
    v161 = v170;
    v155 = v164;
    v156 = v165;
    v157 = v166;
    v158 = v167;
    v153 = v162;
    v154 = v163;
    sub_22EE27C38(&v153);

    v28 = sub_22EE2B768;
    goto LABEL_3;
  }

LABEL_72:
  __break(1u);
}

uint64_t sub_22EE2ACAC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *(a1 + 16);
  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    return v6;
  }

  v8 = a1;
  v52 = MEMORY[0x277D84F90];
  sub_22EE02370(0, v5, 0);
  v6 = v52;
  v9 = v8 + 56;
  v10 = -1 << *(v8 + 32);
  v11 = sub_22EE3C7C4();
  v12 = *(v8 + 36);
  result = swift_beginAccess();
  if (v11 < 0 || (v14 = v11, v11 >= 1 << *(v8 + 32)))
  {
LABEL_28:
    __break(1u);
  }

  else
  {
    v42 = v8 + 64;
    v43 = v5;
    v15 = 1;
    v44 = a2;
    v45 = v8 + 56;
    v46 = v8;
    while (1)
    {
      v50 = v12;
      v16 = 1 << v14;
      if ((*(v9 + 8 * (v14 >> 6)) & (1 << v14)) == 0)
      {
        break;
      }

      v48 = v15;
      v49 = v14 >> 6;
      v17 = v6;
      v51 = v14;
      v18 = (*(v8 + 48) + 16 * v14);
      v6 = *v18;
      v19 = v18[1];
      v20 = *(a2 + 16);

      v21 = sub_22EDFCB40(v6, v19, v20, a3);
      if (v4)
      {

        return v6;
      }

      v25 = v22;
      if (!v22)
      {
        sub_22EE2B714();
        swift_allocError();
        *v41 = v6;
        *(v41 + 8) = v19;
        *(v41 + 16) = 4;
        swift_willThrow();

        return v6;
      }

      v26 = v21;
      v27 = v23;
      v28 = v24;

      v6 = v17;
      v53 = v17;
      v29 = *(v17 + 16);
      v30 = *(v6 + 24);
      if (v29 >= v30 >> 1)
      {
        sub_22EE02370((v30 > 1), v29 + 1, 1);
        v6 = v53;
      }

      *(v6 + 16) = v29 + 1;
      v31 = v6 + 32 * v29;
      *(v31 + 32) = v26;
      *(v31 + 40) = v25;
      *(v31 + 48) = v27;
      *(v31 + 56) = v28 & 1;
      v8 = v46;
      v32 = 1 << *(v46 + 32);
      result = v51;
      if (v51 >= v32)
      {
        goto LABEL_30;
      }

      v9 = v45;
      v33 = *(v45 + 8 * v49);
      if ((v33 & v16) == 0)
      {
        goto LABEL_31;
      }

      if (v50 != *(v46 + 36))
      {
        goto LABEL_32;
      }

      v34 = v33 & (-2 << (v51 & 0x3F));
      if (v34)
      {
        v14 = __clz(__rbit64(v34)) | v51 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v35 = v6;
        v36 = v49 << 6;
        v37 = v49 + 1;
        v38 = (v42 + 8 * v49);
        while (v37 < (v32 + 63) >> 6)
        {
          v40 = *v38++;
          v39 = v40;
          v36 += 64;
          ++v37;
          if (v40)
          {
            result = sub_22EE0FC54(v51, v50, 0);
            v14 = __clz(__rbit64(v39)) + v36;
            goto LABEL_20;
          }
        }

        result = sub_22EE0FC54(v51, v50, 0);
        v14 = v32;
LABEL_20:
        v6 = v35;
        v4 = 0;
      }

      a2 = v44;
      if (v48 == v43)
      {
        return v6;
      }

      if ((v14 & 0x8000000000000000) == 0)
      {
        v12 = *(v46 + 36);
        v15 = v48 + 1;
        if (v14 < 1 << *(v46 + 32))
        {
          continue;
        }
      }

      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_22EE2AFD4()
{
  swift_beginAccess();
  result = sub_22EDDCDC8(*(v0 + 32));
  v22 = *(result + 16);
  if (v22)
  {
    v2 = 0;
    v3 = (result + 56);
    v4 = MEMORY[0x277D84F90];
    v21 = result;
    while (v2 < *(result + 16))
    {
      v23 = v4;
      v5 = *(v3 - 3);
      v6 = *(v3 - 2);
      v7 = v3[1];
      v9 = v3[3];
      v8 = v3[4];
      if (v7)
      {
        v10 = *(v3 - 3);
        v11 = *v3;

        MEMORY[0x2318F58F0](v11, v7);
        v5 = v10;
        v13 = 539831584;
        v12 = 0xE400000000000000;
      }

      else
      {
        v14 = v3[4];

        v13 = 0;
        v12 = 0xE000000000000000;
      }

      MEMORY[0x2318F58F0](v5, v6);
      MEMORY[0x2318F58F0](v13, v12);

      v4 = v23;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_22EDDA224(0, *(v23 + 2) + 1, 1, v23);
      }

      result = v21;
      v16 = *(v4 + 2);
      v15 = *(v4 + 3);
      if (v16 >= v15 >> 1)
      {
        v4 = sub_22EDDA224((v15 > 1), v16 + 1, 1, v4);
        result = v21;
      }

      ++v2;
      *(v4 + 2) = v16 + 1;
      v17 = &v4[16 * v16];
      *(v17 + 4) = 9;
      *(v17 + 5) = 0xE100000000000000;
      v3 += 8;
      if (v22 == v2)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_12:

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94D48, &qword_22EE41F60);
    sub_22EE0D944(&qword_27DA94D50, &qword_27DA94D48, &qword_22EE41F60);
    v18 = sub_22EE3C0B4();
    v20 = v19;

    sub_22EE3C864();

    MEMORY[0x2318F58F0](v18, v20);

    return 0xD00000000000002DLL;
  }

  return result;
}

void sub_22EE2B2B8(void *a1, void *a2)
{
  v3 = *(v2 + 40);
  v4 = *(v2 + 48);
  v8 = a1;
  v9 = a2;
  v10 = 0;

  v3(&v8);
  v5 = v8;
  v6 = v9;
  v7 = v10;

  sub_22EE2B6E8(v5, v6, v7);
}

uint64_t sub_22EE2B34C(uint64_t a1, unint64_t a2)
{
  v23[0] = 44;
  v23[1] = 0xE100000000000000;
  v22 = v23;

  v6 = sub_22EDD1FA0(0x7FFFFFFFFFFFFFFFLL, 1, sub_22EDD4544, v21, a1, a2, v5);
  v7 = *(v6 + 16);
  if (v7)
  {
    v23[4] = v2;
    v23[0] = MEMORY[0x277D84F90];
    sub_22EDD2DD4(0, v7, 0);
    v8 = v23[0];
    v9 = (v6 + 56);
    do
    {
      v11 = *(v9 - 3);
      v10 = *(v9 - 2);
      v12 = *(v9 - 1);
      v13 = *v9;

      v14 = MEMORY[0x2318F5880](v11, v10, v12, v13);
      v16 = v15;

      v23[0] = v8;
      v18 = *(v8 + 16);
      v17 = *(v8 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_22EDD2DD4((v17 > 1), v18 + 1, 1);
        v8 = v23[0];
      }

      *(v8 + 16) = v18 + 1;
      v19 = v8 + 16 * v18;
      *(v19 + 32) = v14;
      *(v19 + 40) = v16;
      v9 += 4;
      --v7;
    }

    while (v7);
  }

  else
  {

    v8 = MEMORY[0x277D84F90];
  }

  swift_beginAccess();
  sub_22EE1C928(v8);
  swift_endAccess();
}

uint64_t sub_22EE2B4FC()
{
  result = swift_beginAccess();
  *(v0 + 32) = 1;
  return result;
}

uint64_t sub_22EE2B544(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_22ED80FA0();
  if (sub_22EE3C6A4())
  {
    swift_beginAccess();
    v6 = *(v2 + 24);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v3 + 24) = v6;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v6 = sub_22EDDA224(0, *(v6 + 2) + 1, 1, v6);
      *(v3 + 24) = v6;
    }

    v9 = *(v6 + 2);
    v8 = *(v6 + 3);
    if (v9 >= v8 >> 1)
    {
      v6 = sub_22EDDA224((v8 > 1), v9 + 1, 1, v6);
    }

    *(v6 + 2) = v9 + 1;
    v10 = &v6[16 * v9];
    *(v10 + 4) = a1;
    *(v10 + 5) = a2;
    *(v3 + 24) = v6;
    return swift_endAccess();
  }

  else
  {
    sub_22EE3C864();

    MEMORY[0x2318F58F0](a1, a2);
    sub_22EE2B714();
    swift_allocError();
    *v12 = 0xD000000000000010;
    *(v12 + 8) = 0x800000022EE4AE60;
    *(v12 + 16) = 0;
    return swift_willThrow();
  }
}

void sub_22EE2B6E8(void *a1, id a2, char a3)
{
  if (a3 == 2)
  {
LABEL_4:

    return;
  }

  if (a3 != 1)
  {
    if (a3)
    {
      return;
    }

    goto LABEL_4;
  }
}

unint64_t sub_22EE2B714()
{
  result = qword_27DA95A10;
  if (!qword_27DA95A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA95A10);
  }

  return result;
}

BOOL sub_22EE2B768(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = ktrace_machine_create(a1);
  *v2 = v3;
  return v3 == 0;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22EE2B7B0()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[5];
  v4 = v0[6];
  v6[0] = 0;
  v6[1] = 0;
  v7 = 3;
  v3(v6);
  ktrace_session_destroy(v1);
  return sub_22EE3C5A4();
}

uint64_t objectdestroy_2Tm(uint64_t a1)
{
  v3 = *(v1 + 24);

  v4 = *(v1 + 48);

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

void sub_22EE2B858()
{
  v1 = v0[8];
  v2 = v0[5];
  v3 = v0[6];
  v4 = xmmword_22EE447B0;
  v5 = 3;
  v2(&v4);

  ktrace_end(v1, 0);
}

uint64_t sub_22EE2B8CC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 17))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 16);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_22EE2B914(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
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

uint64_t get_enum_tag_for_layout_string_6ktrace13AmendmentNoteO(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_22EE2B994(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_22EE2B9DC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22EE2BA2C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_22EE2BA74(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22EE2BAD0(unint64_t *a1, void (*a2)(uint64_t))
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

BOOL sub_22EE2BB78(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_22EE2BBA8@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_22EE2BBD4@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *sub_22EE2BCA8@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_22EE2BCCC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_22EE2E9D0(a1);

  *a2 = v3;
  return result;
}

void sub_22EE2BD2C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v36 = a2;
  v37 = a3;
  v35 = a1;
  v29 = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95150, qword_22EE44A90);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v30 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v27 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v27 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v27 - v14;
  v16 = sub_22EE3BCB4();
  v17 = *(v16 - 8);
  v18 = 1;
  v33 = *(v17 + 56);
  v34 = v17 + 56;
  v33(v15, 1, 1, v16);
  v32 = objc_opt_self();
  v38 = (v17 + 48);
  v28 = v17;
  v19 = (v17 + 8);
  v31 = xmmword_22EE3F500;
  do
  {
    if (v18 == 1000)
    {
      __break(1u);
LABEL_8:
      __break(1u);
      goto LABEL_9;
    }

    v39 = v36;
    v40 = v37;

    MEMORY[0x2318F58F0](45, 0xE100000000000000);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94D30, &qword_22EE3F510);
    v20 = swift_allocObject();
    *(v20 + 16) = v31;
    *(v20 + 56) = MEMORY[0x277D83B88];
    *(v20 + 64) = MEMORY[0x277D83C10];
    *(v20 + 32) = v18;
    v21 = sub_22EE3C134();
    MEMORY[0x2318F58F0](v21);

    MEMORY[0x2318F58F0](0x637274612ELL, 0xE500000000000000);
    sub_22EE3BC44();

    sub_22EE2C0BC(v15);
    v33(v13, 0, 1, v16);
    sub_22EE2C124(v13, v15);
    v22 = [v32 defaultManager];
    sub_22EE1B424(v15, v10);
    v23 = *v38;
    if ((*v38)(v10, 1, v16) == 1)
    {
      goto LABEL_8;
    }

    sub_22EE3BC94();
    v24 = sub_22EE3C0F4();

    (*v19)(v10, v16);
    v25 = [v22 fileExistsAtPath_];

    ++v18;
  }

  while ((v25 & 1) != 0);
  v26 = v30;
  sub_22EE1B424(v15, v30);
  if (v23(v26, 1, v16) != 1)
  {
    sub_22EE2C0BC(v15);
    (*(v28 + 32))(v29, v26, v16);
    return;
  }

LABEL_9:
  __break(1u);
}

uint64_t sub_22EE2C0BC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95150, qword_22EE44A90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22EE2C124(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95150, qword_22EE44A90);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22EE2C194@<X0>(uint64_t a1@<X8>)
{
  v38 = *MEMORY[0x277D85DE8];
  v3 = sub_22EE3BCB4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v34 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v34 - v12;
  v14 = &v1[*(type metadata accessor for RecordingOptions.Options(0) + 124)];
  v15 = v14[1];
  if (!v15)
  {
    __break(1u);
  }

  v16 = *v14;
  v17 = v14[1];

  sub_22EE3BBF4();
  v18 = sub_22EE3C2B4();
  v36 = a1;
  if ((v18 & 1) == 0)
  {

    v24 = sub_22EE3BC04();
    v26 = v25;
    sub_22EE3BC64();
    if (sub_22EE3BC94())
    {
      v28 = 0;
    }

    else
    {
      v28 = v27 == 0xE000000000000000;
    }

    if (v28)
    {
    }

    else
    {
      v29 = sub_22EE3CBA4();

      if ((v29 & 1) == 0)
      {
        (*(v4 + 16))(v8, v11, v3);
LABEL_16:
        sub_22EE2BD2C(v8, v24, v26, v36);

        v32 = *(v4 + 8);
        v32(v8, v3);
        v32(v11, v3);
        result = (v32)(v13, v3);
        goto LABEL_18;
      }
    }

    v30 = [objc_opt_self() defaultManager];
    v31 = [v30 currentDirectoryPath];

    sub_22EE3C124();
    v35 = v11;

    sub_22EE3BBF4();
    v11 = v35;

    goto LABEL_16;
  }

  v37 = 0;
  v19 = [objc_opt_self() defaultManager];
  v20 = sub_22EE3C0F4();
  v21 = [v19 fileExistsAtPath:v20 isDirectory:&v37];

  if ((v37 & 1) != 0 || v21 && (*v1 & 1) == 0)
  {
    type metadata accessor for KTraceRecordError();
    sub_22EE316BC(&qword_27DA94D80, type metadata accessor for KTraceRecordError);
    swift_allocError();
    *v22 = v16;
    v22[1] = v15;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    result = (*(v4 + 8))(v13, v3);
  }

  else
  {

    result = (*(v4 + 32))(v36, v13, v3);
  }

LABEL_18:
  v33 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22EE2C5FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v125 = a3;
  v5 = type metadata accessor for RecordingOptions.Options(0);
  v6 = *(*(v5 - 1) + 64);
  MEMORY[0x28223BE20](v5);
  v120 = &v116 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95150, qword_22EE44A90);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v119 = &v116 - v10;
  v11 = type metadata accessor for RecordingOptions(0);
  v123 = *(v11 - 8);
  v124 = v11;
  v12 = *(v123 + 64);
  MEMORY[0x28223BE20](v11);
  v133 = (&v116 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = swift_allocBox();
  v16 = v15;
  *v15 = 0;
  v17 = v5[5];
  v18 = sub_22EE3BCB4();
  v19 = *(v18 - 8);
  v117 = *(v19 + 56);
  v118 = v18;
  v116 = v19 + 56;
  v117(&v16[v17], 1, 1);
  v20 = MEMORY[0x277D84F90];
  *&v16[v5[6]] = MEMORY[0x277D84F90];
  v126 = v5[7];
  *&v16[v126] = v20;
  *&v16[v5[8]] = v20;
  v21 = &v16[v5[9]];
  *v21 = 0;
  v21[8] = 1;
  v22 = &v16[v5[10]];
  *v22 = 0;
  v22[4] = 1;
  v23 = &v16[v5[11]];
  *v23 = 0;
  v23[8] = 1;
  *&v16[v5[12]] = v20;
  *&v16[v5[13]] = v20;
  v16[v5[14]] = 0;
  v24 = &v16[v5[15]];
  *v24 = 0;
  v24[8] = 1;
  v16[v5[16]] = 0;
  v16[v5[17]] = 0;
  v16[v5[18]] = 1;
  v25 = &v16[v5[19]];
  *v25 = 0;
  *(v25 + 1) = 0;
  v26 = &v16[v5[20]];
  *v26 = 0;
  *(v26 + 1) = 0;
  v27 = &v16[v5[21]];
  *v27 = 0;
  v27[8] = 1;
  v16[v5[22]] = 0;
  v28 = &v16[v5[23]];
  *v28 = 0;
  v28[4] = 1;
  v29 = MEMORY[0x277D84FA0];
  *&v16[v5[24]] = MEMORY[0x277D84FA0];
  *&v16[v5[25]] = v29;
  *&v16[v5[26]] = v20;
  v16[v5[27]] = 0;
  v16[v5[28]] = 0;
  *&v16[v5[29]] = v20;
  v30 = &v16[v5[30]];
  *v30 = 0;
  v30[8] = 1;
  v31 = &v16[v5[31]];
  *v31 = 0;
  *(v31 + 1) = 0;
  v122 = v5;
  v32 = v5[32];
  v127 = v16;
  v33 = &v16[v32];
  *v33 = 0x746C7561666564;
  *(v33 + 1) = 0xE700000000000000;
  v34 = swift_allocObject();
  v165 = v34;
  *(v34 + 16) = 0;
  v121 = (v34 + 16);
  result = *a1;
  if (*a1)
  {
    v131 = sub_22EE3C214();
    v129 = v36;
    v37 = swift_allocObject();
    v38 = *(a1 + 16);
    *(v37 + 24) = *a1;
    *(v37 + 16) = a2;
    *(v37 + 40) = v38;
    *(v37 + 56) = *(a1 + 32);
    *(v37 + 72) = *(a1 + 48);
    v128 = "le with providers\n\nProviders:";
    v39 = swift_allocObject();
    v40 = *(a1 + 16);
    *(v39 + 16) = *a1;
    *(v39 + 32) = v40;
    *(v39 + 48) = *(a1 + 32);
    *(v39 + 64) = *(a1 + 48);

    v41 = sub_22EDEBE84();
    v42 = sub_22EDEBE90();
    v43 = sub_22EDEBE90();
    v115.n128_u64[1] = v42;
    *(&v114 + 1) = v39;
    v115.n128_u64[0] = v41;
    *&v114 = sub_22EE2EFFC;
    *&v113 = 0xD000000000000049;
    *(&v113 + 1) = 0x800000022EE4A810;
    sub_22EDEBE9C(v131, v129, sub_22EE2EFD8, v37, 0xD000000000000010, v128 | 0x8000000000000000, 0, 0, &v147, v113, 0, v114, v115, v43);
    *v133 = a2;
    v130 = a2;
    v131 = a1;
    if (*(a1 + 48))
    {
      *&v138 = MEMORY[0x277D84F90];

      sub_22EE2E220(0, 2, 0);
      v45 = v138;
      v47 = *(v138 + 16);
      v46 = *(v138 + 24);
      v48 = v46 >> 1;
      v49 = v47 + 1;
      if (v46 >> 1 <= v47)
      {
        sub_22EE2E220((v46 > 1), v47 + 1, 1);
        v45 = v138;
        v46 = *(v138 + 24);
        v48 = v46 >> 1;
      }

      v44 = v165;
      *(v45 + 16) = v49;
      v50 = v45 + 24 * v47;
      *(v50 + 32) = xmmword_22EE41ED0;
      *(v50 + 48) = 0;
      if (v48 <= v49)
      {
        sub_22EE2E220((v46 > 1), v47 + 2, 1);
        v45 = v138;
      }

      *(v45 + 16) = v47 + 2;
      v51 = v45 + 24 * v49;
      *(v51 + 32) = xmmword_22EE44A70;
      *(v51 + 48) = 0;
      sub_22EE2E35C(v45);
    }

    else
    {

      v44 = v165;
    }

    sub_22EDE9774(sub_22EE2F0DC, v14);

    sub_22EDE9774(sub_22EE2F16C, v14);

    v52 = sub_22ED808E4();
    sub_22EDE98AC(1851878512, 0xE400000000000000, 0xD000000000000023, 0x800000022EE4AED0, 0, 0, v52 & 1, sub_22EE2F1FC, v14);

    v53 = sub_22ED808E4();
    sub_22EDE98AC(6579297, 0xE300000000000000, 0xD00000000000002ALL, 0x800000022EE4AF00, 0, 0, v53 & 1, sub_22EE2F288, v14);

    v54 = sub_22ED808E4();
    sub_22EDE98AC(1953066351, 0xE400000000000000, 0xD00000000000002CLL, 0x800000022EE4AF30, 0, 0, v54 & 1, sub_22EE2F45C, v14);

    v55 = swift_allocObject();
    *(v55 + 16) = v44;
    *(v55 + 24) = v14;
    v56 = v152;

    sub_22EDECBBC(v56);
    *&v152 = sub_22EE2F630;
    *(&v152 + 1) = v55;

    v57 = sub_22ED808E4();
    sub_22EDE98AC(0xD000000000000012, 0x800000022EE4AF60, 0xD00000000000003BLL, 0x800000022EE4AF80, 0, 0, v57 & 1, sub_22EE2F854, v14);

    v58 = sub_22ED808E4();
    sub_22EDE98AC(0xD000000000000010, 0x800000022EE4AFC0, 0xD00000000000003ELL, 0x800000022EE4AFE0, 0, 0, v58 & 1, sub_22EE2F958, v14);

    v59 = sub_22ED808E4();
    sub_22EDE98AC(0xD000000000000012, 0x800000022EE4B020, 0xD000000000000032, 0x800000022EE4B040, 0, 0, v59 & 1, sub_22EE2FA5C, v14);

    v60 = sub_22ED808E4();
    sub_22EDE98AC(0xD000000000000013, 0x800000022EE4B080, 0xD000000000000038, 0x800000022EE4B0A0, 0, 0, v60 & 1, sub_22EE2FCA4, v14);

    v61 = sub_22ED808E4();
    sub_22EDE98AC(0xD000000000000013, 0x800000022EE49B50, 0xD00000000000002FLL, 0x800000022EE4B0E0, 0, 0, v61 & 1, sub_22EE2FDC8, v14);

    v62 = sub_22ED808E4();
    sub_22EDE98AC(0xD00000000000001CLL, 0x800000022EE49B30, 0xD000000000000041, 0x800000022EE4B110, 0, 0, v62 & 1, sub_22EE2FF14, v14);

    v63 = sub_22ED808E4();
    sub_22EDE98AC(0xD000000000000015, 0x800000022EE4B160, 0xD000000000000037, 0x800000022EE4B180, 0, 0, v63 & 1, sub_22EE300F4, v14);

    v64 = sub_22ED808E4();
    sub_22EDE987C(0x746972777265766FLL, 0xE900000000000065, 0xD000000000000023, 0x800000022EE4B1C0, 0, 0, v64 & 1, sub_22EE301F8, v14);

    v65 = sub_22ED808E4();
    sub_22EDE98AC(0xD000000000000012, 0x800000022EE4B1F0, 0xD000000000000026, 0x800000022EE4B210, 0, 0, v65 & 1, sub_22EE30258, v14);

    v66 = sub_22ED808E4();
    sub_22EDE987C(0x73736572706D6F63, 0xE800000000000000, 0xD000000000000021, 0x800000022EE4B240, 0, 0, v66 & 1, sub_22EE304C4, v14);

    v67 = sub_22ED808E4();
    sub_22EDE987C(0x73736572706D6F63, 0xEF676E697275642DLL, 0xD000000000000022, 0x800000022EE4B270, 0, 0, v67 & 1, sub_22EE3052C, v14);

    v68 = sub_22ED808E4();
    sub_22EDE98AC(0xD000000000000011, 0x800000022EE4B2A0, 0xD000000000000040, 0x800000022EE4B2C0, 0, 0, v68 & 1, sub_22EE30594, v14);

    v69 = sub_22ED808E4();
    sub_22EDE987C(0x656D697265707865, 0xEC0000006C61746ELL, 0xD000000000000019, 0x800000022EE4B310, 0, 0, v69 & 1, sub_22EE30764, v14);

    v70 = sub_22EDE9760();
    swift_beginAccess();
    v72 = *v70;
    v71 = v70[1];

    v73 = sub_22ED808E4();
    sub_22EDE987C(v72, v71, 0xD000000000000015, 0x800000022EE4B330, 0, 0, v73 & 1, sub_22EE307CC, v14);

    sub_22EDE98AC(0xD000000000000012, 0x800000022EE4B350, 0xD000000000000028, 0x800000022EE4B370, 0, 0, 1, sub_22EE30834, v14);

    sub_22EDE98AC(0xD000000000000015, 0x800000022EE4B3A0, 0xD00000000000002BLL, 0x800000022EE4B3C0, 0, 0, 1, sub_22EE30A04, v14);

    sub_22EDE98AC(0xD000000000000015, 0x800000022EE4B3F0, 0xD000000000000025, 0x800000022EE4B410, 0, 0, 1, sub_22EE30A90, v14);

    sub_22EDE987C(0xD000000000000015, 0x800000022EE4B440, 0xD000000000000089, 0x800000022EE4B460, 0, 0, 1, sub_22EE30B1C, v14);

    sub_22EDE98AC(0xD000000000000013, 0x800000022EE4B4F0, 0xD000000000000049, 0x800000022EE4B510, 0, 0, 1, sub_22EE30B84, v14);

    sub_22EDE987C(0xD000000000000016, 0x800000022EE4B560, 0xD000000000000025, 0x800000022EE4B580, 0, 0, 1, sub_22EE30FC4, v14);

    v162 = v153;
    v163 = v154;
    v164 = v155;
    v158 = v149;
    v159 = v150;
    v160 = v151;
    v161 = v152;
    v156 = v147;
    v157 = v148;
    v74 = v132;
    v75 = sub_22EDEA6A8(v130);
    v76 = v74;
    if (v74)
    {

LABEL_11:
      v134 = v76;
      v77 = v76;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94F00, qword_22EE40590);
      if (swift_dynamicCast())
      {

        v78 = v135;
        v79 = v136;
        v80 = v137;
        type metadata accessor for KTraceRecordError();
        sub_22EE316BC(&qword_27DA94D80, type metadata accessor for KTraceRecordError);
        swift_allocError();
        *v81 = v78;
        *(v81 + 8) = v79;
        *(v81 + 16) = v80;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
      }

      sub_22EE31028(v131, type metadata accessor for ktrace_recording);

      v144 = v153;
      v145 = v154;
      v146 = v155;
      v140 = v149;
      v141 = v150;
      v142 = v151;
      v143 = v152;
      v138 = v147;
      v139 = v148;
      sub_22EE27C38(&v138);
    }

    v82 = v75;

    if (v82)
    {
      if (*(v82 + 16))
      {
        type metadata accessor for KTraceRecordError();
        sub_22EE316BC(&qword_27DA94D80, type metadata accessor for KTraceRecordError);
        v76 = swift_allocError();
        v84 = v83;
        *&v138 = v82;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94D48, &qword_22EE41F60);
        sub_22EDD3F74();
        v85 = sub_22EE3C0B4();
        v87 = v86;

        *v84 = v85;
        v84[1] = v87;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        goto LABEL_11;
      }

      v88 = v127;
      swift_beginAccess();
      v89 = v122;
      if ((*(v88 + v122[28]) & 1) == 0 && *(v88 + v122[17]) == 1)
      {
        type metadata accessor for KTraceRecordError();
        sub_22EE316BC(&qword_27DA94D80, type metadata accessor for KTraceRecordError);
        swift_allocError();
        *v90 = 0xD000000000000011;
        v90[1] = 0x800000022EE4B5E0;
LABEL_30:
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        sub_22EE31028(v131, type metadata accessor for ktrace_recording);
        v144 = v153;
        v145 = v154;
        v146 = v155;
        v140 = v149;
        v141 = v150;
        v142 = v151;
        v143 = v152;
        v138 = v147;
        v139 = v148;
        sub_22EE27C38(&v138);

LABEL_31:
      }

      v91 = (v88 + v122[31]);
      v92 = v91[1];
      if (!v92)
      {
        type metadata accessor for KTraceRecordError();
        sub_22EE316BC(&qword_27DA94D80, type metadata accessor for KTraceRecordError);
        swift_allocError();
        *v102 = 0xD00000000000002ELL;
        v102[1] = 0x800000022EE4B5B0;
        goto LABEL_30;
      }

      v93 = *v91;
      v94 = v121;
      swift_beginAccess();
      if (*v94 == 1)
      {

        if ((sub_22EE3C2B4() & 1) == 0)
        {
          type metadata accessor for KTraceRecordError();
          sub_22EE316BC(&qword_27DA94D80, type metadata accessor for KTraceRecordError);
          swift_allocError();
          *v109 = v93;
          v109[1] = v92;
          swift_storeEnumTagMultiPayload();
          swift_willThrow();
          sub_22EE31028(v131, type metadata accessor for ktrace_recording);
          v144 = v153;
          v145 = v154;
          v146 = v155;
          v140 = v149;
          v141 = v150;
          v142 = v151;
          v143 = v152;
          v138 = v147;
          v139 = v148;
          sub_22EE27C38(&v138);

          goto LABEL_31;
        }
      }

      v95 = *(v127 + v89[24]);
      v96 = v127;
      v97 = *(v127 + v89[25]);

      v99 = sub_22EE15DB8(v98, v95);

      if ((v99 & 1) == 0)
      {
        type metadata accessor for KTraceRecordError();
        sub_22EE316BC(&qword_27DA94D80, type metadata accessor for KTraceRecordError);
        swift_allocError();
        v104 = v103;
        v105 = *(v96 + v89[24]);
        v106 = *(v96 + v89[25]);

        v108 = sub_22EE1B918(v107, v105);

        *v104 = v108;
        goto LABEL_30;
      }

      v100 = v120;
      sub_22EE31088(v96, v120, type metadata accessor for RecordingOptions.Options);
      v101 = v119;
      sub_22EE2C194(v119);
      sub_22EE31028(v100, type metadata accessor for RecordingOptions.Options);
      sub_22EE31028(v131, type metadata accessor for ktrace_recording);
      (v117)(v101, 0, 1, v118);
      sub_22EE1B494(v101, v96 + v89[5]);
      v110 = v124;
      v111 = v133;
      sub_22EE31088(v96, v133 + *(v124 + 20), type metadata accessor for RecordingOptions.Options);
      v144 = v153;
      v145 = v154;
      v146 = v155;
      v140 = v149;
      v141 = v150;
      v142 = v151;
      v143 = v152;
      v138 = v147;
      v139 = v148;
      sub_22EE27C38(&v138);

      v112 = v125;
      sub_22EE31088(v111, v125, type metadata accessor for RecordingOptions);
      (*(v123 + 56))(v112, 0, 1, v110);
      return sub_22EE31028(v111, type metadata accessor for RecordingOptions);
    }

    else
    {
      sub_22EE31028(v131, type metadata accessor for ktrace_recording);
      v144 = v153;
      v145 = v154;
      v146 = v155;
      v140 = v149;
      v141 = v150;
      v142 = v151;
      v143 = v152;
      v138 = v147;
      v139 = v148;
      sub_22EE27C38(&v138);

      return (*(v123 + 56))(v125, 1, 1, v124);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22EE2DE94(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_22EDF3E20(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_22EE2DF00(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_22EE2DF00(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_22EE3CB64();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = sub_22EE3C404();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_22EE08B9C(v7, v8, a1, v4);
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
    return sub_22EDF3300(0, v2, 1, a1);
  }

  return result;
}

char *sub_22EE2DFF8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95A38, &qword_22EE44C78);
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
    if (v10 != a4 || v12 >= &v13[24 * v8])
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

char *sub_22EE2E114(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95A40, &qword_22EE44C80);
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

char *sub_22EE2E220(char *a1, int64_t a2, char a3)
{
  result = sub_22EE2E240(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_22EE2E240(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95A38, &qword_22EE44C78);
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
    if (v10 != a4 || v12 >= &v13[24 * v8])
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

uint64_t sub_22EE2E35C(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_22EE2DFF8(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

unsigned __int8 *sub_22EE2E454(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v70 = a1;
  v71 = a2;

  result = sub_22EE3C304();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_22EE12EBC();
    v40 = v39;

    v5 = v40;
    if ((v40 & 0x2000000000000000) == 0)
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
      result = sub_22EE3C8C4();
      v7 = v69;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v22 = v7 - 1;
        if (v22)
        {
          v23 = a3 + 48;
          v24 = a3 + 55;
          v25 = a3 + 87;
          if (a3 > 10)
          {
            v23 = 58;
          }

          else
          {
            v25 = 97;
            v24 = 65;
          }

          if (result)
          {
            v13 = 0;
            v26 = result + 1;
            v15 = 1;
            do
            {
              v27 = *v26;
              if (v27 < 0x30 || v27 >= v23)
              {
                if (v27 < 0x41 || v27 >= v24)
                {
                  v18 = 0;
                  if (v27 < 0x61 || v27 >= v25)
                  {
                    goto LABEL_127;
                  }

                  v28 = -87;
                }

                else
                {
                  v28 = -55;
                }
              }

              else
              {
                v28 = -48;
              }

              v29 = v13 * a3;
              if (v29 != v29)
              {
                goto LABEL_126;
              }

              v30 = v27 + v28;
              v21 = __OFADD__(v29, v30);
              v13 = v29 + v30;
              if (v21)
              {
                goto LABEL_126;
              }

              ++v26;
              --v22;
            }

            while (v22);
LABEL_46:
            v15 = 0;
            v18 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v18 = 0;
        v15 = 1;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v31 = a3 + 48;
        v32 = a3 + 55;
        v33 = a3 + 87;
        if (a3 > 10)
        {
          v31 = 58;
        }

        else
        {
          v33 = 97;
          v32 = 65;
        }

        if (result)
        {
          v34 = 0;
          v15 = 1;
          do
          {
            v35 = *result;
            if (v35 < 0x30 || v35 >= v31)
            {
              if (v35 < 0x41 || v35 >= v32)
              {
                v18 = 0;
                if (v35 < 0x61 || v35 >= v33)
                {
                  goto LABEL_127;
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

            v37 = v34 * a3;
            if (v37 != v37)
            {
              goto LABEL_126;
            }

            v38 = v35 + v36;
            v21 = __OFADD__(v37, v38);
            v34 = v37 + v38;
            if (v21)
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v15 = 0;
          v18 = v34;
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
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
          v15 = 1;
          while (1)
          {
            v16 = *v14;
            if (v16 < 0x30 || v16 >= v10)
            {
              if (v16 < 0x41 || v16 >= v11)
              {
                v18 = 0;
                if (v16 < 0x61 || v16 >= v12)
                {
                  goto LABEL_127;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            v19 = v13 * a3;
            if (v19 != v19)
            {
              goto LABEL_126;
            }

            v20 = v16 + v17;
            v21 = __OFSUB__(v19, v20);
            v13 = v19 - v20;
            if (v21)
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v18 = 0;
        v15 = 0;
LABEL_127:

        LOBYTE(v70) = v15;
        return (v18 | (v15 << 32));
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v41 = HIBYTE(v5) & 0xF;
  v70 = v6;
  v71 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v41)
      {
        v43 = 0;
        v61 = a3 + 48;
        v62 = a3 + 55;
        v63 = a3 + 87;
        if (a3 > 10)
        {
          v61 = 58;
        }

        else
        {
          v63 = 97;
          v62 = 65;
        }

        v64 = &v70;
        v15 = 1;
        while (1)
        {
          v65 = *v64;
          if (v65 < 0x30 || v65 >= v61)
          {
            if (v65 < 0x41 || v65 >= v62)
            {
              v18 = 0;
              if (v65 < 0x61 || v65 >= v63)
              {
                goto LABEL_127;
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

          v67 = v43 * a3;
          if (v67 != v67)
          {
            goto LABEL_126;
          }

          v68 = v65 + v66;
          v21 = __OFADD__(v67, v68);
          v43 = v67 + v68;
          if (v21)
          {
            goto LABEL_126;
          }

          v64 = (v64 + 1);
          if (!--v41)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v41)
    {
      v42 = v41 - 1;
      if (v42)
      {
        v43 = 0;
        v44 = a3 + 48;
        v45 = a3 + 55;
        v46 = a3 + 87;
        if (a3 > 10)
        {
          v44 = 58;
        }

        else
        {
          v46 = 97;
          v45 = 65;
        }

        v47 = &v70 + 1;
        v15 = 1;
        while (1)
        {
          v48 = *v47;
          if (v48 < 0x30 || v48 >= v44)
          {
            if (v48 < 0x41 || v48 >= v45)
            {
              v18 = 0;
              if (v48 < 0x61 || v48 >= v46)
              {
                goto LABEL_127;
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

          v50 = v43 * a3;
          if (v50 != v50)
          {
            goto LABEL_126;
          }

          v51 = v48 + v49;
          v21 = __OFSUB__(v50, v51);
          v43 = v50 - v51;
          if (v21)
          {
            goto LABEL_126;
          }

          ++v47;
          if (!--v42)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v41)
  {
    v52 = v41 - 1;
    if (v52)
    {
      v43 = 0;
      v53 = a3 + 48;
      v54 = a3 + 55;
      v55 = a3 + 87;
      if (a3 > 10)
      {
        v53 = 58;
      }

      else
      {
        v55 = 97;
        v54 = 65;
      }

      v56 = &v70 + 1;
      v15 = 1;
      do
      {
        v57 = *v56;
        if (v57 < 0x30 || v57 >= v53)
        {
          if (v57 < 0x41 || v57 >= v54)
          {
            v18 = 0;
            if (v57 < 0x61 || v57 >= v55)
            {
              goto LABEL_127;
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

        v59 = v43 * a3;
        if (v59 != v59)
        {
          goto LABEL_126;
        }

        v60 = v57 + v58;
        v21 = __OFADD__(v59, v60);
        v43 = v59 + v60;
        if (v21)
        {
          goto LABEL_126;
        }

        ++v56;
        --v52;
      }

      while (v52);
LABEL_125:
      v15 = 0;
      v18 = v43;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}