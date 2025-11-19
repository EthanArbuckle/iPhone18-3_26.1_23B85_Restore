void sub_2751ED0B8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      v8 = MEMORY[0x277D84F90];
      if (v4 != a3)
      {
LABEL_7:
        memcpy(v8 + 4, (a2 + 16 * a3), 16 * v5);
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD1B8, &qword_27520C9A8);
      v8 = swift_allocObject();
      v9 = _swift_stdlib_malloc_size(v8);
      v10 = v9 - 32;
      if (v9 < 32)
      {
        v10 = v9 - 17;
      }

      v8[2] = v5;
      v8[3] = 2 * (v10 >> 4);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

unint64_t sub_2751ED188()
{
  result = qword_2809AD7E0;
  if (!qword_2809AD7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809AD7E0);
  }

  return result;
}

unint64_t sub_2751ED1DC()
{
  result = qword_2809AD7E8;
  if (!qword_2809AD7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809AD7E8);
  }

  return result;
}

unint64_t sub_2751ED230()
{
  result = qword_2809AD818;
  if (!qword_2809AD818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809AD818);
  }

  return result;
}

uint64_t sub_2751ED284(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809AD7F0, &qword_27520DE90);
    sub_2751ED30C(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2751ED30C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809AD808, &qword_27520DE98);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2751ED3E8()
{
  result = qword_2809AD830;
  if (!qword_2809AD830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809AD830);
  }

  return result;
}

unint64_t sub_2751ED440()
{
  result = qword_2809AD838;
  if (!qword_2809AD838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809AD838);
  }

  return result;
}

unint64_t sub_2751ED498()
{
  result = qword_2809AD840;
  if (!qword_2809AD840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809AD840);
  }

  return result;
}

uint64_t sub_2751ED4EC(uint64_t *a1, uint64_t (*a2)(uint64_t *, uint64_t *), uint64_t a3)
{
  v6 = a1[1];
  result = sub_27520C1D8();
  if (result < v6)
  {
    if (v6 >= -1)
    {
      v8 = result;
      if (v6 <= 1)
      {
        v9 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD230, &unk_27520E0A0);
        v9 = sub_27520BCF8();
        *(v9 + 16) = v6 / 2;
      }

      v11[0] = v9 + 32;
      v11[1] = v6 / 2;
      v10 = v9;
      sub_2751F2FF4(v11, v12, a1, a2, a3, v8);
      *(v10 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v6 < 0)
  {
    goto LABEL_12;
  }

  if (v6)
  {
    return sub_2751F2F04(0, v6, 1, a2);
  }

  return result;
}

uint64_t sub_2751ED610(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v88 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_91:
    v5 = *v88;
    if (!*v88)
    {
      goto LABEL_131;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_125:
      result = sub_2751F3A50(v8);
      v8 = result;
    }

    v80 = (v8 + 16);
    v81 = *(v8 + 16);
    if (v81 >= 2)
    {
      while (*a3)
      {
        v82 = (v8 + 16 * v81);
        v83 = *v82;
        v84 = &v80[2 * v81];
        v85 = v84[1];
        sub_2751EDBB0((*a3 + 16 * *v82), (*a3 + 16 * *v84), (*a3 + 16 * v85), v5);
        if (v4)
        {
        }

        if (v85 < v83)
        {
          goto LABEL_117;
        }

        if (v81 - 2 >= *v80)
        {
          goto LABEL_118;
        }

        *v82 = v83;
        v82[1] = v85;
        v86 = *v80 - v81;
        if (*v80 < v81)
        {
          goto LABEL_119;
        }

        v81 = *v80 - 1;
        result = memmove(v84, v84 + 2, 16 * v86);
        *v80 = v81;
        if (v81 <= 1)
        {
        }
      }

      goto LABEL_129;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v87 = a4;
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
      while (v6 != v14)
      {
        v16 = *v15 >= *(v15 - 4);
        ++v14;
        v15 += 4;
        if ((((v10 < v13) ^ v16) & 1) == 0)
        {
          v7 = v14 - 1;
          if (v10 >= v13)
          {
            goto LABEL_23;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v13)
      {
        goto LABEL_23;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_122;
      }

      if (v9 < v7)
      {
        v17 = 16 * v7 - 16;
        v18 = v7;
        v19 = v9;
        do
        {
          if (v19 != --v18)
          {
            v21 = *a3;
            if (!*a3)
            {
              goto LABEL_128;
            }

            v22 = (v21 + v11);
            v23 = (v21 + v17);
            v24 = *(v21 + v11);
            v25 = *(v21 + v11 + 8);
            if (v11 != v17 || v22 >= v23 + 1)
            {
              *v22 = *v23;
            }

            v20 = v21 + v17;
            *v20 = v24;
            *(v20 + 8) = v25;
          }

          ++v19;
          v17 -= 16;
          v11 += 16;
        }

        while (v19 < v18);
        v6 = a3[1];
      }
    }

LABEL_23:
    if (v7 < v6)
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

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_40:
    if (v7 < v9)
    {
      goto LABEL_120;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_2751D08B8(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v34 = *(v8 + 24);
    v35 = v5 + 1;
    if (v5 >= v34 >> 1)
    {
      result = sub_2751D08B8((v34 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v35;
    v36 = v8 + 32;
    v37 = (v8 + 32 + 16 * v5);
    *v37 = v9;
    v37[1] = v7;
    v89 = *v88;
    if (!*v88)
    {
      goto LABEL_130;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v35 - 1;
        if (v35 >= 4)
        {
          break;
        }

        if (v35 == 3)
        {
          v38 = *(v8 + 32);
          v39 = *(v8 + 40);
          v48 = __OFSUB__(v39, v38);
          v40 = v39 - v38;
          v41 = v48;
LABEL_60:
          if (v41)
          {
            goto LABEL_107;
          }

          v54 = (v8 + 16 * v35);
          v56 = *v54;
          v55 = v54[1];
          v57 = __OFSUB__(v55, v56);
          v58 = v55 - v56;
          v59 = v57;
          if (v57)
          {
            goto LABEL_109;
          }

          v60 = (v36 + 16 * v5);
          v62 = *v60;
          v61 = v60[1];
          v48 = __OFSUB__(v61, v62);
          v63 = v61 - v62;
          if (v48)
          {
            goto LABEL_112;
          }

          if (__OFADD__(v58, v63))
          {
            goto LABEL_114;
          }

          if (v58 + v63 >= v40)
          {
            if (v40 < v63)
            {
              v5 = v35 - 2;
            }

            goto LABEL_82;
          }

          goto LABEL_75;
        }

        if (v35 < 2)
        {
          goto LABEL_115;
        }

        v64 = (v8 + 16 * v35);
        v66 = *v64;
        v65 = v64[1];
        v48 = __OFSUB__(v65, v66);
        v58 = v65 - v66;
        v59 = v48;
LABEL_75:
        if (v59)
        {
          goto LABEL_111;
        }

        v67 = (v36 + 16 * v5);
        v69 = *v67;
        v68 = v67[1];
        v48 = __OFSUB__(v68, v69);
        v70 = v68 - v69;
        if (v48)
        {
          goto LABEL_113;
        }

        if (v70 < v58)
        {
          goto LABEL_3;
        }

LABEL_82:
        if (v5 - 1 >= v35)
        {
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
          goto LABEL_127;
        }

        v75 = (v36 + 16 * (v5 - 1));
        v76 = *v75;
        v77 = (v36 + 16 * v5);
        v78 = v77[1];
        sub_2751EDBB0((*a3 + 16 * *v75), (*a3 + 16 * *v77), (*a3 + 16 * v78), v89);
        if (v4)
        {
        }

        if (v78 < v76)
        {
          goto LABEL_102;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_103;
        }

        *v75 = v76;
        v75[1] = v78;
        v79 = *(v8 + 16);
        if (v5 >= v79)
        {
          goto LABEL_104;
        }

        v35 = v79 - 1;
        result = memmove((v36 + 16 * v5), v77 + 2, 16 * (v79 - 1 - v5));
        *(v8 + 16) = v79 - 1;
        if (v79 <= 2)
        {
          goto LABEL_3;
        }
      }

      v42 = v36 + 16 * v35;
      v43 = *(v42 - 64);
      v44 = *(v42 - 56);
      v48 = __OFSUB__(v44, v43);
      v45 = v44 - v43;
      if (v48)
      {
        goto LABEL_105;
      }

      v47 = *(v42 - 48);
      v46 = *(v42 - 40);
      v48 = __OFSUB__(v46, v47);
      v40 = v46 - v47;
      v41 = v48;
      if (v48)
      {
        goto LABEL_106;
      }

      v49 = (v8 + 16 * v35);
      v51 = *v49;
      v50 = v49[1];
      v48 = __OFSUB__(v50, v51);
      v52 = v50 - v51;
      if (v48)
      {
        goto LABEL_108;
      }

      v48 = __OFADD__(v40, v52);
      v53 = v40 + v52;
      if (v48)
      {
        goto LABEL_110;
      }

      if (v53 >= v45)
      {
        v71 = (v36 + 16 * v5);
        v73 = *v71;
        v72 = v71[1];
        v48 = __OFSUB__(v72, v73);
        v74 = v72 - v73;
        if (v48)
        {
          goto LABEL_116;
        }

        if (v40 < v74)
        {
          v5 = v35 - 2;
        }

        goto LABEL_82;
      }

      goto LABEL_60;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v87;
    if (v7 >= v6)
    {
      goto LABEL_91;
    }
  }

  v26 = *a3;
  v27 = *a3 + 16 * v7;
  v28 = v9 - v7;
LABEL_33:
  v29 = v28;
  v30 = v27;
  while (1)
  {
    v31 = *(v30 + 8);
    if (v31 >= *(v30 - 8))
    {
LABEL_32:
      ++v7;
      v27 += 16;
      --v28;
      if (v7 != v6)
      {
        goto LABEL_33;
      }

      v7 = v6;
      goto LABEL_40;
    }

    if (!v26)
    {
      break;
    }

    v32 = *v30;
    *v30 = *(v30 - 16);
    *(v30 - 8) = v31;
    *(v30 - 16) = v32;
    v30 -= 16;
    if (__CFADD__(v29++, 1))
    {
      goto LABEL_32;
    }
  }

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
  return result;
}

uint64_t sub_2751EDBB0(float *__dst, float *__src, float *a3, float *a4)
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
  if (v10 < v13)
  {
    v14 = 4 * v10;
    if (a4 != __dst || &__dst[v14] <= a4)
    {
      memmove(a4, __dst, v14 * 4);
    }

    v15 = &v4[v14];
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

      if (v6[2] < v4[2])
      {
        break;
      }

      v16 = v4;
      v17 = v7 == v4;
      v4 += 4;
      if (!v17)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 4;
      if (v4 >= v15)
      {
        goto LABEL_10;
      }
    }

    v16 = v6;
    v17 = v7 == v6;
    v6 += 4;
    if (v17)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v16;
    goto LABEL_13;
  }

  v18 = 4 * v13;
  if (a4 != __src || &__src[v18] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v15 = &v4[v18];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_24:
    v5 -= 4;
    do
    {
      v19 = v5 + 4;
      if (*(v15 - 2) < *(v6 - 2))
      {
        v21 = v6 - 4;
        if (v19 != v6)
        {
          *v5 = *v21;
        }

        if (v15 <= v4 || (v6 -= 4, v21 <= v7))
        {
          v6 = v21;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      v20 = v15 - 4;
      if (v19 != v15)
      {
        *v5 = *v20;
      }

      v5 -= 4;
      v15 -= 4;
    }

    while (v20 > v4);
    v15 = v20;
  }

LABEL_35:
  v22 = (v15 - v4 + (v15 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0;
  if (v6 != v4 || v6 >= (v4 + v22))
  {
    memmove(v6, v4, v22);
  }

  return 1;
}

uint64_t sub_2751EDDAC(uint64_t *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  v7 = sub_27520C268();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (*(*(v5 + 48) + 8 * v9) != a2)
    {
      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    v11 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v2;
    sub_2751EE0B0(a2, v9, isUniquelyReferenced_nonNull_native);
    *v2 = v14;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_2751EDE8C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD528, &unk_27520D800);
  result = sub_27520BF38();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    v27 = v2;
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
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      result = sub_27520C268();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    if (v9 >= 64)
    {
      bzero((v3 + 56), 8 * v12);
    }

    else
    {
      *v8 = -1 << v9;
    }

    v2 = v27;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_2751EE0B0(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2751EDE8C(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_2751DD250();
      a2 = v7;
      goto LABEL_12;
    }

    sub_2751EE1D0(v5 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  result = sub_27520C268();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + 8 * a2) != v4)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 8 * a2) = v4;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_27520C248();
  __break(1u);
  return result;
}

uint64_t sub_2751EE1D0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD528, &unk_27520D800);
  result = sub_27520BF38();
  v6 = result;
  if (*(v3 + 16))
  {
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
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      result = sub_27520C268();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {
LABEL_26:

    *v2 = v6;
  }

  return result;
}

uint64_t sub_2751EE3C0(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v32[2] = *MEMORY[0x277D85DE8];
  if (*(a2 + 16))
  {
    v32[0] = a1;
    v29 = *(a1 + 16);
    if (v29)
    {
      v4 = 0;
      v5 = a2 + 56;
      v30 = *(a2 + 40);
      v31 = a1 + 32;
      v28 = -1 << *(a2 + 32);
      v6 = ~v28;
      while (1)
      {
        v7 = *(v31 + 8 * v4++);
        v8 = sub_27520C268();
        v9 = v8 & v6;
        v10 = (v8 & v6) >> 6;
        v11 = 1 << (v8 & v6);
        if ((v11 & *(v5 + 8 * v10)) != 0)
        {
          break;
        }

LABEL_4:
        if (v4 == v29)
        {
          goto LABEL_15;
        }
      }

      while (*(*(v2 + 48) + 8 * v9) != v7)
      {
        v9 = (v9 + 1) & v6;
        v10 = v9 >> 6;
        v11 = 1 << v9;
        if (((1 << v9) & *(v5 + 8 * (v9 >> 6))) == 0)
        {
          goto LABEL_4;
        }
      }

      v32[1] = v4;
      v12 = (63 - v28) >> 6;
      v13 = 8 * v12;
      if (v12 > 0x80)
      {
        goto LABEL_29;
      }

      {
        v29 = v12;
        v30 = &v28;
        MEMORY[0x28223BE20](i);
        v9 = &v28 - v15;
        memcpy(&v28 - v15, (v2 + 56), v13);
        v16 = *(v2 + 16);
        *(v9 + 8 * v10) &= ~v11;
        v13 = v16 - 1;
        v17 = *(a1 + 16);
        if (v4 == v17)
        {
          break;
        }

        v10 = *(v2 + 40);
        v12 = ~(-1 << *(v2 + 32));
        while (v4 < v17)
        {
          v11 = *(v31 + 8 * v4);
          v20 = sub_27520C268();
          v21 = v20 & v12;
          v22 = (v20 & v12) >> 6;
          v23 = 1 << (v20 & v12);
          if ((v23 & *(v5 + 8 * v22)) != 0)
          {
            while (*(*(v2 + 48) + 8 * v21) != v11)
            {
              v21 = (v21 + 1) & v12;
              v22 = v21 >> 6;
              v23 = 1 << v21;
              if (((1 << v21) & *(v5 + 8 * (v21 >> 6))) == 0)
              {
                goto LABEL_17;
              }
            }

            v24 = *(v9 + 8 * v22);
            *(v9 + 8 * v22) = v24 & ~v23;
            if ((v24 & v23) != 0)
            {
              if (__OFSUB__(v13--, 1))
              {
                goto LABEL_28;
              }

              if (!v13)
              {

                v2 = MEMORY[0x277D84FA0];
                goto LABEL_14;
              }
            }
          }

LABEL_17:
          ++v4;
          v17 = *(a1 + 16);
          if (v4 == v17)
          {
            goto LABEL_13;
          }
        }

        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:

        if (!swift_stdlib_isStackAllocationSafe())
        {
          v26 = swift_slowAlloc();
          memcpy(v26, (v2 + 56), v13);
          v27 = sub_2751EE738(v26, v12, v2, v9, v32);

          MEMORY[0x277C6DCC0](v26, -1, -1);

          v2 = v27;
          goto LABEL_15;
        }
      }

LABEL_13:
      v2 = sub_2751EE8B8(v9, v29, v13, v2);
LABEL_14:
    }
  }

  else
  {

    v2 = MEMORY[0x277D84FA0];
  }

LABEL_15:
  v18 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t sub_2751EE738(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = result;
  v8 = *(a3 + 16);
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v9 = v8 - 1;
  v10 = *a5;
  v11 = a5[1];
  v12 = *(*a5 + 16);
  if (v11 == v12)
  {
LABEL_2:

    return sub_2751EE8B8(v7, a2, v9, a3);
  }

  else
  {
    v14 = a3 + 56;
    while ((v11 & 0x8000000000000000) == 0)
    {
      if (v11 >= v12)
      {
        goto LABEL_17;
      }

      v15 = *(v10 + 8 * v11 + 32);
      a5[1] = v11 + 1;
      v16 = *(a3 + 40);
      result = sub_27520C268();
      v17 = -1 << *(a3 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      v20 = 1 << v18;
      if (((1 << v18) & *(v14 + 8 * (v18 >> 6))) != 0)
      {
        v21 = *(a3 + 48);
        if (*(v21 + 8 * v18) == v15)
        {
LABEL_12:
          v23 = v7[v19];
          v7[v19] = v23 & ~v20;
          if ((v23 & v20) != 0)
          {
            if (__OFSUB__(v9--, 1))
            {
              goto LABEL_18;
            }

            if (!v9)
            {
              return MEMORY[0x277D84FA0];
            }
          }
        }

        else
        {
          v22 = ~v17;
          while (1)
          {
            v18 = (v18 + 1) & v22;
            v19 = v18 >> 6;
            v20 = 1 << v18;
            if (((1 << v18) & *(v14 + 8 * (v18 >> 6))) == 0)
            {
              break;
            }

            if (*(v21 + 8 * v18) == v15)
            {
              goto LABEL_12;
            }
          }
        }
      }

      v10 = *a5;
      v11 = a5[1];
      v12 = *(*a5 + 16);
      if (v11 == v12)
      {
        goto LABEL_2;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
  }

  return result;
}

uint64_t sub_2751EE8B8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD528, &unk_27520D800);
  result = sub_27520BF48();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    v17 = *(v9 + 40);
    result = sub_27520C268();
    v18 = -1 << *(v9 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(*(v9 + 48) + 8 * v21) = v16;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
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
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

unint64_t sub_2751EEAA4(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = sub_27520C268();

  return sub_2751EEB68(a1, v4);
}

unint64_t sub_2751EEAE8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_27520C278();
  MEMORY[0x277C6D7A0](a1);
  MEMORY[0x277C6D7A0](a2);
  v6 = sub_27520C298();

  return sub_2751EEBD4(a1, a2, v6);
}

unint64_t sub_2751EEB68(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_2751EEBD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = -1 << *(v3 + 32);
  result = a3 & ~v5;
  if ((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v7 = ~v5;
    do
    {
      v8 = (*(v3 + 48) + 16 * result);
      v10 = *v8;
      v9 = v8[1];
      if (v10 == a1 && v9 == a2)
      {
        break;
      }

      result = (result + 1) & v7;
    }

    while (((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_2751EEC4C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD850, &qword_27520E0B8);
  result = sub_27520C058();
  v8 = result;
  if (*(v5 + 16))
  {
    v34 = v3;
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
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(v5 + 56);
      v22 = *(*(v5 + 48) + 8 * v20);
      v23 = *(v21 + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v24 = *(v21 + 8 * v20);
      }

      v25 = *(v8 + 40);
      result = sub_27520C268();
      v26 = -1 << *(v8 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v15 + 8 * v28);
          if (v32 != -1)
          {
            v16 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      *(*(v8 + 56) + 8 * v16) = v23;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_35;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_2751EEEBC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD860, &qword_27520E0C8);
  result = sub_27520C058();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = a2;
    v36 = v3;
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
      v24 = *v22;
      v23 = v22[1];
      v25 = *(*(v5 + 56) + 4 * v21);
      v26 = *(v8 + 40);
      sub_27520C278();
      MEMORY[0x277C6D7A0](v24);
      MEMORY[0x277C6D7A0](v23);
      result = sub_27520C298();
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

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v24;
      v17[1] = v23;
      *(*(v8 + 56) + 4 * v16) = v25;
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if ((v35 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_33;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v36;
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

LABEL_33:
  *v3 = v8;
  return result;
}

uint64_t sub_2751EF158(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_27520BF18() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(a2 + 48);
      v11 = (v10 + 8 * v6);
      v12 = *v11;
      result = sub_27520C268();
      v13 = result & v7;
      if (v3 >= v8)
      {
        if (v13 >= v8 && v3 >= v13)
        {
LABEL_15:
          v16 = (v10 + 8 * v3);
          if (v3 != v6 || v16 >= v11 + 1)
          {
            *v16 = *v11;
          }

          v17 = *(a2 + 56);
          v18 = (v17 + 8 * v3);
          v19 = (v17 + 8 * v6);
          if (v3 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v3 = v6;
          }
        }
      }

      else if (v13 >= v8 || v3 >= v13)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_2751EF2C8(uint64_t a1, uint64_t a2, char a3, float a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_2751EEAE8(a1, a2);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 >= v16 && (a3 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v18 >= v16 && (a3 & 1) == 0)
  {
    v19 = result;
    sub_2751EF564();
    result = v19;
    goto LABEL_8;
  }

  sub_2751EEEBC(v16, a3 & 1);
  v20 = *v5;
  result = sub_2751EEAE8(a1, a2);
  if ((v17 & 1) == (v21 & 1))
  {
LABEL_8:
    v22 = *v5;
    if (v17)
    {
      *(v22[7] + 4 * result) = a4;
      return result;
    }

    v22[(result >> 6) + 8] |= 1 << result;
    v23 = (v22[6] + 16 * result);
    *v23 = a1;
    v23[1] = a2;
    *(v22[7] + 4 * result) = a4;
    v24 = v22[2];
    v15 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (!v15)
    {
      v22[2] = v25;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD858, &qword_27520E0C0);
  result = sub_27520C258();
  __break(1u);
  return result;
}

void *sub_2751EF408()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD850, &qword_27520E0B8);
  v2 = *v0;
  v3 = sub_27520C048();
  v4 = v3;
  if (*(v2 + 16))
  {
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_2751EF564()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD860, &qword_27520E0C8);
  v2 = *v0;
  v3 = sub_27520C048();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 4 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 4 * v14);
      *(*(v4 + 48) + 16 * v14) = *(*(v2 + 48) + 16 * v14);
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

      v16 = *(v2 + 64 + 8 * v8);
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

void (*sub_2751EF6B4(uint64_t *a1, uint64_t a2))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x50uLL);
  }

  v6 = v5;
  *a1 = v5;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6[8] = sub_2751EFA20(v6);
  v6[9] = sub_2751EF7B8(v6 + 4, a2, isUniquelyReferenced_nonNull_native);
  return sub_2751EF758;
}

void sub_2751EF758(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_2751EF7B8(uint64_t *a1, uint64_t a2, char a3))(uint64_t **a1, char a2)
{
  v4 = v3;
  if (MEMORY[0x277D84FD8])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x28uLL);
  }

  v9 = v8;
  *a1 = v8;
  *(v8 + 8) = a2;
  *(v8 + 16) = v3;
  v10 = *v3;
  v11 = sub_2751EEAA4(a2);
  *(v9 + 32) = v12 & 1;
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
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      v19 = v11;
      sub_2751EF408();
      v11 = v19;
      goto LABEL_11;
    }

    sub_2751EEC4C(v16, a3 & 1);
    v20 = *v4;
    v11 = sub_2751EEAA4(a2);
    if ((v17 & 1) == (v21 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = sub_27520C258();
    __break(1u);
    return result;
  }

LABEL_11:
  *(v9 + 24) = v11;
  if (v17)
  {
    v22 = *(*(*v4 + 56) + 8 * v11);
  }

  else
  {
    v22 = 0;
  }

  *v9 = v22;
  return sub_2751EF900;
}

void sub_2751EF900(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  LOBYTE(v4) = *(v2 + 32);
  if (a2)
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    v5 = v2[3];
    v6 = *v2[2];
    if (v2[4])
    {
      goto LABEL_9;
    }

    v7 = v2[1];
    v6[(v5 >> 6) + 8] |= 1 << v5;
    *(v6[6] + 8 * v5) = v7;
    *(v6[7] + 8 * v5) = v3;
    v8 = v6[2];
    v9 = __OFADD__(v8, 1);
    v4 = v8 + 1;
    if (!v9)
    {
LABEL_13:
      v6[2] = v4;
      goto LABEL_14;
    }

    __break(1u);
  }

  if (!v3)
  {
LABEL_10:
    if (v4)
    {
      sub_2751EF158(v2[3], *v2[2]);
    }

    goto LABEL_14;
  }

  v5 = v2[3];
  v6 = *v2[2];
  if ((v4 & 1) == 0)
  {
    v10 = v2[1];
    v6[(v5 >> 6) + 8] |= 1 << v5;
    *(v6[6] + 8 * v5) = v10;
    *(v6[7] + 8 * v5) = v3;
    v11 = v6[2];
    v9 = __OFADD__(v11, 1);
    v4 = v11 + 1;
    if (v9)
    {
      __break(1u);
      return;
    }

    goto LABEL_13;
  }

LABEL_9:
  *(v6[7] + 8 * v5) = v3;
LABEL_14:
  v12 = *v2;

  free(v2);
}

uint64_t (*sub_2751EFA20(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_2751EFA48;
}

void *sub_2751EFA54(void *result, char *a2, void **a3, void *a4)
{
  v4 = result[2];
  v5 = *result - v4;
  if (__OFSUB__(*result, v4))
  {
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v8 = result[1];
  if (v5 < v8)
  {
    v10 = v8 - v5;
    if (__OFSUB__(v8, v5))
    {
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    v11 = *result - v4;
    v9 = a2;
  }

  else
  {
    v9 = 0;
    v10 = 0;
    v11 = result[1];
  }

  v15 = v5 >= v8;
  if (v11 < 0)
  {
    goto LABEL_24;
  }

  if (a2 && v11)
  {
    result = memcpy(*a3, &a2[16 * v4], 16 * v11);
  }

  v12 = *a4 + v11;
  if (__OFADD__(*a4, v11))
  {
    goto LABEL_25;
  }

  *a4 = v12;
  if (v15)
  {
    return result;
  }

  if (__OFADD__(v11, v10))
  {
    goto LABEL_27;
  }

  if (v11 + v10 < v11)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    __break(1u);
    return result;
  }

  if (*a3)
  {
    result = *a3 + 16 * v11;
  }

  else
  {
    result = 0;
  }

  if (v9)
  {
    if (v10)
    {
      result = memcpy(result, v9, 16 * v10);
      v12 = *a4;
    }
  }

  v13 = __OFADD__(v12, v10);
  v14 = v12 + v10;
  if (v13)
  {
    goto LABEL_29;
  }

  *a4 = v14;
  return result;
}

void *sub_2751EFB88(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD850, &qword_27520E0B8);
  v3 = sub_27520C068();
  v4 = a1[4];
  v5 = a1[5];
  v6 = sub_2751EEAA4(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = a1 + 7;
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 8 * v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 1);
    v15 = *v10;

    v8 = sub_2751EEAA4(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2751EFC90(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x277C6D350](v2, MEMORY[0x277D83B88], MEMORY[0x277D83B98]);
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_2751EDDAC(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t *sub_2751EFD04(uint64_t *result, uint64_t a2, uint64_t (*a3)(uint64_t *, uint64_t *), uint64_t a4)
{
  v5 = result[2];
  v6 = *result;
  v7 = result[1] + v5;
  if (*result >= v7)
  {
    v8 = result[1] < 0;
    if (v7 < v5)
    {
      __break(1u);
    }

    else if (!__OFSUB__(v7, v5))
    {
      v9[0] = a2 + 16 * v5;
      v9[1] = v7 - v5;
      result = sub_2751ED4EC(v9, a3, a4);
      if (v4)
      {
        return result;
      }

      return (v6 < v7);
    }

    __break(1u);
    return result;
  }

  return (v6 < v7);
}

uint64_t sub_2751EFD8C()
{
  v0 = sub_27520BAB8();
  __swift_allocate_value_buffer(v0, qword_2809B38E8);
  __swift_project_value_buffer(v0, qword_2809B38E8);
  return sub_27520BAA8();
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

uint64_t sub_2751EFE98(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_2751E3B54(v2);
  }

  v3 = *(v2 + 2);
  v4 = v2 + 32;
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_27520C1D8();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v4;
        do
        {
          v13 = *(v12 + 6);
          if (v13 >= *(v12 + 2))
          {
            break;
          }

          v14 = *(v12 + 2);
          *(v12 + 1) = *v12;
          *v12 = v14;
          *(v12 + 2) = v13;
          v12 -= 16;
        }

        while (!__CFADD__(v11++, 1));
        v4 += 16;
        --v9;
      }
    }
  }

  else
  {
    v6 = result;
    v7 = v3 >> 1;
    if (v3 >= 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD230, &unk_27520E0A0);
      v8 = sub_27520BCF8();
      *(v8 + 16) = v7;
    }

    else
    {
      v8 = MEMORY[0x277D84F90];
    }

    v16[0] = v8 + 32;
    v16[1] = v7;
    sub_2751ED610(v16, v17, v18, v6);
    *(v8 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t VPTree.Node.left.getter()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t VPTree.Node.left.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

uint64_t VPTree.Node.right.getter()
{
  result = *(v0 + 32);
  v2 = *(v0 + 40);
  return result;
}

uint64_t VPTree.Node.right.setter(uint64_t result, char a2)
{
  *(v2 + 32) = result;
  *(v2 + 40) = a2 & 1;
  return result;
}

uint64_t VPTree.Node.storedIndices.setter(uint64_t a1)
{
  v3 = *(v1 + 48);

  *(v1 + 48) = a1;
  return result;
}

uint64_t sub_2751F011C()
{
  v1 = *v0;
  v2 = 0x646E49746E696F70;
  v3 = 1952867692;
  v4 = 0x7468676972;
  if (v1 != 3)
  {
    v4 = 0x6E496465726F7473;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6C6F687365726874;
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

uint64_t sub_2751F01C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2751F3A9C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2751F01E8(uint64_t a1)
{
  v2 = sub_2751F0508();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2751F0224(uint64_t a1)
{
  v2 = sub_2751F0508();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t VPTree.Node.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD868, &unk_27520E100);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v18 - v7;
  v9 = *v1;
  v10 = *(v1 + 2);
  v21 = v1[2];
  v20 = *(v1 + 24);
  v19 = v1[4];
  v18[3] = *(v1 + 40);
  v11 = v1[6];
  v12 = a1[3];
  v13 = a1[4];
  v14 = a1;
  v16 = v15;
  __swift_project_boxed_opaque_existential_1(v14, v12);
  sub_2751F0508();
  sub_27520C2B8();
  v27 = 0;
  sub_27520C198();
  if (!v2)
  {
    v26 = 1;
    sub_27520C188();
    v25 = 2;
    sub_27520C148();
    v24 = 3;
    sub_27520C148();
    v23 = v11;
    v22 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD350, &qword_27520CBA0);
    sub_2751D7754(&qword_2809AD358);
    sub_27520C158();
  }

  return (*(v5 + 8))(v8, v16);
}

unint64_t sub_2751F0508()
{
  result = qword_2809AD870;
  if (!qword_2809AD870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809AD870);
  }

  return result;
}

uint64_t VPTree.Node.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD878, &unk_27520E110);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v21 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2751F0508();
  sub_27520C2A8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v30 = 0;
  v11 = sub_27520C0F8();
  v29 = 1;
  sub_27520C0E8();
  v13 = v12;
  v28 = 2;
  v14 = sub_27520C0A8();
  v24 = v15;
  v16 = v14;
  v27 = 3;
  v17 = sub_27520C0A8();
  v23 = v18;
  v22 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD350, &qword_27520CBA0);
  v25 = 4;
  sub_2751D7754(&qword_2809AD368);
  sub_27520C0B8();
  (*(v6 + 8))(v9, v5);
  v19 = v26;
  *a2 = v11;
  *(a2 + 8) = v13;
  *(a2 + 16) = v16;
  *(a2 + 24) = v24 & 1;
  *(a2 + 32) = v22;
  *(a2 + 40) = v23 & 1;
  *(a2 + 48) = v19;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2751F081C()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t sub_2751F0828()
{
  result = *(v0 + 32);
  v2 = *(v0 + 40);
  return result;
}

uint64_t VPTree.points.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
}

uint64_t VPTree.nodes.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
}

float sub_2751F08E0(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    __break(1u);
  }

  __C = NAN;
  vDSP_distancesq((a1 + 32), 1, (a2 + 32), 1, &__C, v2);
  v3 = *MEMORY[0x277D85DE8];
  return sqrtf(__C);
}

uint64_t sub_2751F0964(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x7365646F6ELL;
  }

  else
  {
    v4 = 0x63697274656DLL;
  }

  if (v3)
  {
    v5 = 0xE600000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  if (*a2)
  {
    v6 = 0x7365646F6ELL;
  }

  else
  {
    v6 = 0x63697274656DLL;
  }

  if (*a2)
  {
    v7 = 0xE500000000000000;
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
    v9 = sub_27520C218();
  }

  return v9 & 1;
}

uint64_t sub_2751F0A04()
{
  v1 = *v0;
  sub_27520C278();
  sub_27520BBD8();

  return sub_27520C298();
}

uint64_t sub_2751F0A80()
{
  *v0;
  sub_27520BBD8();
}

uint64_t sub_2751F0AE8()
{
  v1 = *v0;
  sub_27520C278();
  sub_27520BBD8();

  return sub_27520C298();
}

uint64_t sub_2751F0B60@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_27520C088();

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

void sub_2751F0BC0(uint64_t *a1@<X8>)
{
  v2 = 0x63697274656DLL;
  if (*v1)
  {
    v2 = 0x7365646F6ELL;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_2751F0BF8()
{
  if (*v0)
  {
    result = 0x7365646F6ELL;
  }

  else
  {
    result = 0x63697274656DLL;
  }

  *v0;
  return result;
}

uint64_t sub_2751F0C2C@<X0>(char *a1@<X8>)
{
  v2 = sub_27520C088();

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

uint64_t sub_2751F0C90(uint64_t a1)
{
  v2 = sub_2751F4810();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2751F0CCC(uint64_t a1)
{
  v2 = sub_2751F4810();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t VPTree.__allocating_init(points:metric:maxNodePoints:)(uint64_t a1, char *a2, uint64_t a3)
{
  v6 = swift_allocObject();
  VPTree.init(points:metric:maxNodePoints:)(a1, a2, a3);
  return v6;
}

uint64_t VPTree.init(points:metric:maxNodePoints:)(uint64_t a1, char *a2, uint64_t a3)
{
  v4 = MEMORY[0x277D84F90];
  *(v3 + 24) = MEMORY[0x277D84F90];
  v5 = *a2;
  *(v3 + 32) = v4;
  *(v3 + 16) = v5;
  *(v3 + 40) = off_2883F9DE0[v5];
  *(v3 + 48) = 0;
  if (*(a1 + 16))
  {
    swift_beginAccess();
    *(v3 + 24) = a1;

    v8 = *(v3 + 40);
    v9 = *(v3 + 48);

    v10 = sub_2751F3C60(a1, v8, v9, a3);

    swift_beginAccess();
    v11 = *(v3 + 32);
    *(v3 + 32) = v10;
  }

  return v3;
}

uint64_t VPTree.search(query:k:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_beginAccess();
  if (!*(v2[3] + 16))
  {
    return MEMORY[0x277D84F90];
  }

  if (__OFADD__(a2, 1))
  {
LABEL_314:
    __break(1u);
LABEL_315:
    __break(1u);
LABEL_316:
    __break(1u);
    goto LABEL_317;
  }

  v6 = sub_2751D0E64(0, (a2 + 1) & ~((a2 + 1) >> 63), 0, MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD218, &qword_27520CA30);
  v7 = swift_allocObject();
  v8 = _swift_stdlib_malloc_size(v7);
  v9 = v8 - 40;
  if (v8 < 40)
  {
    v9 = v8 - 33;
  }

  v7[2] = v9 >> 3;
  v7[3] = 0;
  v7[4] = 0;
  sub_2751D3B90(v7 + 2, v7 + 5, 1uLL, &unk_2883F8C58);
  v253 = v7;
  if (!v7[3])
  {
LABEL_280:

    return v6;
  }

  swift_beginAccess();
  v10 = v7[3] == 0;
  v11 = INFINITY;
  v234 = a1;
  v235 = v3;
  v239 = a2;
  while (1)
  {
    if (v10)
    {
      goto LABEL_305;
    }

    v12 = v253;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_2751D2604();
      v12 = v253;
    }

    v13 = v12[4];
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      goto LABEL_306;
    }

    v15 = v12[v13 + 5];
    v16 = v12[3];
    if (v14 >= v12[2])
    {
      v14 = 0;
    }

    v12[4] = v14;
    if (__OFSUB__(v16, 1))
    {
      goto LABEL_307;
    }

    v12[3] = v16 - 1;
    if ((v15 & 0x8000000000000000) != 0)
    {
      goto LABEL_308;
    }

    v17 = v3[4];
    if (v15 >= *(v17 + 16))
    {
      goto LABEL_309;
    }

    v18 = v17 + 56 * v15;
    v19 = *(v18 + 32);
    if ((v19 & 0x8000000000000000) != 0)
    {
      goto LABEL_310;
    }

    v20 = v3[3];
    if (v19 >= *(v20 + 16))
    {
      goto LABEL_311;
    }

    v238 = v12;
    v21 = v6;
    v22 = *(v18 + 40);
    v233 = *(v18 + 56);
    v230 = *(v18 + 64);
    v231 = *(v18 + 48);
    v232 = *(v18 + 72);
    v23 = *(v20 + 8 * v19 + 32);
    v25 = v3[5];
    v24 = v3[6];
    v250 = *(v18 + 80);

    v26 = v25(a1, v23);

    if (v26 < v11)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_2751D0E64(0, *(v21 + 2) + 1, 1, v21);
      }

      v28 = *(v21 + 2);
      v27 = *(v21 + 3);
      if (v28 >= v27 >> 1)
      {
        v21 = sub_2751D0E64((v27 > 1), v28 + 1, 1, v21);
      }

      *(v21 + 2) = v28 + 1;
      v29 = &v21[16 * v28 + 32];
      *v29 = v19;
      *(v29 + 8) = v26;
      v252[0] = (v21 + 32);
      v252[1] = v28 + 1;
      sub_2751F2DB0(v252);
      v30 = *(v21 + 2);
      if (v30 > v239)
      {
        break;
      }
    }

    v6 = v21;
    v37 = v238;
    v38 = v250;
    if (!v250)
    {
LABEL_32:
      if (v26 >= v22)
      {
        goto LABEL_223;
      }

      goto LABEL_33;
    }

LABEL_45:
    v242 = v6;
    v49 = *(v38 + 16);
    if (v49)
    {
      v252[0] = MEMORY[0x277D84F90];

      sub_2751E1264(0, v49, 0);
      v50 = v252[0];
      v51 = 32;
      while (1)
      {
        v52 = *(v38 + v51);
        if ((v52 & 0x8000000000000000) != 0)
        {
          goto LABEL_296;
        }

        v53 = v3[3];
        if (v52 >= *(v53 + 16))
        {
          break;
        }

        v55 = v3[5];
        v54 = v3[6];
        v56 = *(v53 + 8 * v52 + 32);

        v57 = v55(a1, v56);

        v252[0] = v50;
        v59 = *(v50 + 16);
        v58 = *(v50 + 24);
        if (v59 >= v58 >> 1)
        {
          sub_2751E1264((v58 > 1), v59 + 1, 1);
          v50 = v252[0];
        }

        *(v50 + 16) = v59 + 1;
        v60 = v50 + 16 * v59;
        *(v60 + 32) = v52;
        *(v60 + 40) = v57;
        v51 += 8;
        --v49;
        v38 = v250;
        if (!v49)
        {

          v37 = v238;
          goto LABEL_54;
        }
      }

LABEL_297:
      __break(1u);
LABEL_298:
      __break(1u);
LABEL_299:
      __break(1u);
LABEL_300:
      __break(1u);
LABEL_301:
      __break(1u);
LABEL_302:
      __break(1u);
LABEL_303:
      __break(1u);
LABEL_304:
      __break(1u);
LABEL_305:
      __break(1u);
LABEL_306:
      __break(1u);
LABEL_307:
      __break(1u);
LABEL_308:
      __break(1u);
LABEL_309:
      __break(1u);
LABEL_310:
      __break(1u);
LABEL_311:
      __break(1u);
LABEL_312:
      __break(1u);
LABEL_313:
      __break(1u);
      goto LABEL_314;
    }

    v50 = MEMORY[0x277D84F90];
LABEL_54:
    v6 = v242;
    v236 = *(v50 + 16);
    if (!v236)
    {

      if (v26 >= v22)
      {
        goto LABEL_223;
      }

      goto LABEL_33;
    }

    v61 = 0;
    v237 = v50 + 32;
    do
    {
      v241 = v61;
      v63 = v237 + 16 * v61;
      v64 = *v63;
      v65 = *(v63 + 8);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_2751D0E64(0, *(v6 + 2) + 1, 1, v6);
      }

      v67 = *(v6 + 2);
      v66 = *(v6 + 3);
      v68 = v67 + 1;
      if (v67 >= v66 >> 1)
      {
        v6 = sub_2751D0E64((v66 > 1), v67 + 1, 1, v6);
      }

      *(v6 + 2) = v68;
      v69 = v6 + 32;
      v70 = &v6[16 * v67 + 32];
      *v70 = v64;
      *(v70 + 8) = v65;
      if (v67 < 0x3F)
      {
        if (!v67)
        {
          goto LABEL_216;
        }

        goto LABEL_68;
      }

      v71 = 58 - __clz(v68);
      v72 = -1 << v71;
      v73 = v68 >> v71;
      if ((v68 & ~v72) != 0)
      {
        ++v73;
      }

      if (v73 <= v67)
      {
        v244 = v73;
        v81 = v68 >> 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD230, &unk_27520E0A0);
        v82 = sub_27520BCF8();
        v83 = 0;
        *(v82 + 16) = v81;
        v240 = v82;
        __dst = (v82 + 32);
        v247 = v6 + 40;
        v84 = MEMORY[0x277D84F90];
        while (2)
        {
          v85 = v83++;
          if (v83 > v67)
          {
            goto LABEL_90;
          }

          v86 = *&v247[16 * v83];
          v87 = 16 * v85;
          v88 = *&v247[16 * v85];
          v89 = &v6[16 * v85 + 72];
          do
          {
            if (v67 == v83)
            {
              v83 = v67 + 1;
              if (v86 >= v88)
              {
                goto LABEL_90;
              }

              goto LABEL_84;
            }

            ++v83;
            v90 = *v89 >= *(v89 - 4);
            v89 += 4;
          }

          while ((((v86 < v88) ^ v90) & 1) != 0);
          if (v86 >= v88)
          {
            goto LABEL_90;
          }

LABEL_84:
          if (v83 < v85)
          {
            goto LABEL_302;
          }

          if (v85 < v83)
          {
            v91 = 16 * v83;
            v92 = v83;
            v93 = v85;
            do
            {
              if (v93 != --v92)
              {
                v94 = &v6[v91];
                v95 = *&v6[v87 + 32];
                v96 = *&v6[v87 + 40];
                *&v6[v87 + 32] = *&v6[v91 + 16];
                *(v94 + 2) = v95;
                *(v94 + 6) = v96;
              }

              ++v93;
              v91 -= 16;
              v87 += 16;
            }

            while (v93 < v92);
          }

LABEL_90:
          if (v83 <= v67)
          {
            if (__OFSUB__(v83, v85))
            {
              goto LABEL_299;
            }

            if (v83 - v85 < v244)
            {
              v97 = v85 + v244;
              if (__OFADD__(v85, v244))
              {
                goto LABEL_303;
              }

              if (v97 >= (v67 + 1))
              {
                v97 = v67 + 1;
              }

              if (v97 < v85)
              {
                goto LABEL_304;
              }

              if (v83 != v97)
              {
                v98 = v85 - v83;
                v99 = &v6[16 * v83 + 24];
                do
                {
                  v100 = v99;
                  v101 = v98;
                  do
                  {
                    v102 = *(v100 + 16);
                    if (v102 >= *v100)
                    {
                      break;
                    }

                    v103 = *(v100 + 8);
                    *(v100 + 8) = *(v100 - 8);
                    *(v100 - 8) = v103;
                    *v100 = v102;
                    v100 -= 16;
                    v165 = __CFADD__(v101++, 1);
                  }

                  while (!v165);
                  ++v83;
                  --v98;
                  v99 += 16;
                }

                while (v83 != v97);
                v83 = v97;
              }
            }
          }

          if (v83 < v85)
          {
            goto LABEL_298;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v84 = sub_2751D08B8(0, *(v84 + 2) + 1, 1, v84);
          }

          v105 = *(v84 + 2);
          v104 = *(v84 + 3);
          v106 = v105 + 1;
          if (v105 >= v104 >> 1)
          {
            v84 = sub_2751D08B8((v104 > 1), v105 + 1, 1, v84);
          }

          *(v84 + 2) = v106;
          v107 = &v84[16 * v105];
          *(v107 + 4) = v85;
          *(v107 + 5) = v83;
          if (v105)
          {
            while (2)
            {
              v108 = v106 - 1;
              if (v106 >= 4)
              {
                v113 = &v84[16 * v106 + 32];
                v114 = *(v113 - 64);
                v115 = *(v113 - 56);
                v47 = __OFSUB__(v115, v114);
                v116 = v115 - v114;
                if (v47)
                {
                  goto LABEL_285;
                }

                v118 = *(v113 - 48);
                v117 = *(v113 - 40);
                v119 = __OFSUB__(v117, v118);
                v111 = v117 - v118;
                v112 = v119;
                if (v119)
                {
                  goto LABEL_286;
                }

                v120 = &v84[16 * v106];
                v122 = *v120;
                v121 = *(v120 + 1);
                v47 = __OFSUB__(v121, v122);
                v123 = v121 - v122;
                if (v47)
                {
                  goto LABEL_288;
                }

                v47 = __OFADD__(v111, v123);
                v124 = v111 + v123;
                if (v47)
                {
                  goto LABEL_291;
                }

                if (v124 >= v116)
                {
                  v142 = &v84[16 * v108 + 32];
                  v144 = *v142;
                  v143 = *(v142 + 1);
                  v47 = __OFSUB__(v143, v144);
                  v145 = v143 - v144;
                  if (v47)
                  {
                    goto LABEL_295;
                  }

                  if (v111 < v145)
                  {
                    v108 = v106 - 2;
                  }
                }

                else
                {
LABEL_125:
                  if (v112)
                  {
                    goto LABEL_287;
                  }

                  v125 = &v84[16 * v106];
                  v127 = *v125;
                  v126 = *(v125 + 1);
                  v128 = __OFSUB__(v126, v127);
                  v129 = v126 - v127;
                  v130 = v128;
                  if (v128)
                  {
                    goto LABEL_290;
                  }

                  v131 = &v84[16 * v108 + 32];
                  v133 = *v131;
                  v132 = *(v131 + 1);
                  v47 = __OFSUB__(v132, v133);
                  v134 = v132 - v133;
                  if (v47)
                  {
                    goto LABEL_293;
                  }

                  if (__OFADD__(v129, v134))
                  {
                    goto LABEL_294;
                  }

                  if (v129 + v134 < v111)
                  {
                    goto LABEL_139;
                  }

                  if (v111 < v134)
                  {
                    v108 = v106 - 2;
                  }
                }
              }

              else
              {
                if (v106 == 3)
                {
                  v109 = *(v84 + 4);
                  v110 = *(v84 + 5);
                  v47 = __OFSUB__(v110, v109);
                  v111 = v110 - v109;
                  v112 = v47;
                  goto LABEL_125;
                }

                v135 = &v84[16 * v106];
                v137 = *v135;
                v136 = *(v135 + 1);
                v47 = __OFSUB__(v136, v137);
                v129 = v136 - v137;
                v130 = v47;
LABEL_139:
                if (v130)
                {
                  goto LABEL_289;
                }

                v138 = &v84[16 * v108];
                v140 = *(v138 + 4);
                v139 = *(v138 + 5);
                v47 = __OFSUB__(v139, v140);
                v141 = v139 - v140;
                if (v47)
                {
                  goto LABEL_292;
                }

                if (v141 < v129)
                {
                  break;
                }
              }

              v146 = v108 - 1;
              if (v108 - 1 >= v106)
              {
                __break(1u);
LABEL_283:
                __break(1u);
LABEL_284:
                __break(1u);
LABEL_285:
                __break(1u);
LABEL_286:
                __break(1u);
LABEL_287:
                __break(1u);
LABEL_288:
                __break(1u);
LABEL_289:
                __break(1u);
LABEL_290:
                __break(1u);
LABEL_291:
                __break(1u);
LABEL_292:
                __break(1u);
LABEL_293:
                __break(1u);
LABEL_294:
                __break(1u);
LABEL_295:
                __break(1u);
LABEL_296:
                __break(1u);
                goto LABEL_297;
              }

              v147 = *&v84[16 * v146 + 32];
              v148 = &v84[16 * v108 + 32];
              v149 = *(v148 + 1);
              sub_2751EDBB0(&v69[16 * v147], &v69[16 * *v148], &v69[16 * v149], __dst);
              if (v149 < v147)
              {
                goto LABEL_283;
              }

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v84 = sub_2751F3A50(v84);
              }

              if (v146 >= *(v84 + 2))
              {
                goto LABEL_284;
              }

              v150 = &v84[16 * v146];
              *(v150 + 4) = v147;
              *(v150 + 5) = v149;
              v252[0] = v84;
              sub_2751F39C4(v108);
              v84 = v252[0];
              v106 = *(v252[0] + 16);
              if (v106 <= 1)
              {
                break;
              }

              continue;
            }
          }

          if (v83 <= v67)
          {
            continue;
          }

          break;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v84 = sub_2751F3A50(v84);
        }

        v151 = v240;
        v252[0] = v84;
        v152 = *(v84 + 2);
        if (v152 < 2)
        {
LABEL_215:

          *(v151 + 16) = 0;

          v37 = v238;
          goto LABEL_216;
        }

        v243 = v6;
        while (2)
        {
          v245 = v152 - 1;
          v246 = v152;
          v153 = *&v84[16 * v152];
          v154 = &v84[16 * v152 - 16];
          v156 = *(v154 + 4);
          v155 = *(v154 + 5);
          v248 = v155;
          v249 = v153;
          v157 = 16 * v153;
          v158 = &v69[v157];
          v159 = 16 * v156;
          v160 = &v69[16 * v156];
          v161 = 16 * v155;
          v162 = &v69[16 * v155];
          v163 = 16 * v156 - v157;
          v164 = 16 * v155 - 16 * v156;
          if (v163 >= v164)
          {
            if (__dst != v160 || __dst >= v162)
            {
              v169 = v157;
              memmove(__dst, &v69[16 * v156], 16 * v155 - 16 * v156);
              v157 = v169;
            }

            v170 = v164 + 32;
            v151 = v240;
            v166 = v240 + v164 + 32;
            v171 = v164 < 1 || v159 <= v157;
            v6 = v243;
            if (!v171)
            {
              v175 = v248;
              v174 = v249;
              while (1)
              {
                if (*(v170 + v240 - 8) < *(v160 - 2))
                {
                  v177 = v162;
                  v162 -= 4;
                  goto LABEL_201;
                }

                v178 = 0;
                v179 = (v240 + v170);
                do
                {
                  v180 = &v179[v178];
                  v181 = &v162[v178 - 4];
                  if (v162 != v179 || v181 >= v180)
                  {
                    *v181 = *(v180 - 16);
                  }

                  if ((v170 + v178 * 4) <= 0x30)
                  {
                    v166 = v240 + v170 + v178 * 4 - 16;
                    goto LABEL_206;
                  }

                  v182 = v179[v178 - 6];
                  v178 -= 4;
                }

                while (v182 >= *(v160 - 2));
                v170 += v178 * 4;
                v166 = v170 + v240;
                v177 = &v162[v178];
                v162 = v177 - 4;
LABEL_201:
                v183 = v160 - 4;
                if (v177 != v160)
                {
                  *v162 = *v183;
                }

                v160 -= 4;
                if (v158 >= v183)
                {
                  v160 = v183;
LABEL_206:
                  v173 = __dst;
                  goto LABEL_207;
                }
              }
            }

            v173 = __dst;
          }

          else
          {
            v165 = __dst != v158 || __dst >= v160;
            if (v165)
            {
              memmove(__dst, &v69[v157], 16 * v156 - v157);
            }

            v166 = __dst + v163;
            if (v163 >= 1 && v161 > v159)
            {
              v172 = __dst;
              v173 = __dst;
              v6 = v243;
              v151 = v240;
              v175 = v248;
              v174 = v249;
              while (v160[2] < v172[2])
              {
                v176 = v160;
                v76 = v158 == v160;
                v160 += 4;
                if (!v76)
                {
                  goto LABEL_188;
                }

LABEL_189:
                v158 += 4;
                if (v172 >= v166 || v160 >= v162)
                {
                  v160 = v158;
                  goto LABEL_207;
                }
              }

              v173 = v172 + 4;
              v176 = v172;
              v76 = v158 == v172;
              v172 += 4;
              if (v76)
              {
                goto LABEL_189;
              }

LABEL_188:
              *v158 = *v176;
              goto LABEL_189;
            }

            v160 = v158;
            v173 = __dst;
            v6 = v243;
            v151 = v240;
          }

          v175 = v248;
          v174 = v249;
LABEL_207:
          v184 = (v166 - v173 + ((v166 - v173) < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0;
          if (v160 != v173 || v160 >= (v173 + v184))
          {
            memmove(v160, v173, v184);
          }

          if (v175 < v174)
          {
            goto LABEL_300;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v84 = sub_2751F3A50(v84);
          }

          if ((v246 - 2) >= *(v84 + 2))
          {
            goto LABEL_301;
          }

          v185 = &v84[16 * v246];
          *v185 = v174;
          *(v185 + 1) = v175;
          v252[0] = v84;
          sub_2751F39C4(v245);
          v84 = v252[0];
          v152 = *(v252[0] + 16);
          if (v152 <= 1)
          {
            goto LABEL_215;
          }

          continue;
        }
      }

LABEL_68:
      v74 = -1;
      v75 = 1;
      do
      {
        v77 = v74;
        v78 = v69;
        do
        {
          v79 = *(v78 + 6);
          if (v79 >= *(v78 + 2))
          {
            break;
          }

          v80 = *(v78 + 2);
          *(v78 + 1) = *v78;
          *v78 = v80;
          *(v78 + 2) = v79;
          v78 -= 16;
          v165 = __CFADD__(v77++, 1);
        }

        while (!v165);
        v69 += 16;
        --v74;
        v76 = v75++ == v67;
      }

      while (!v76);
LABEL_216:
      v186 = *(v6 + 2);
      if (v186 <= v239)
      {
        a1 = v234;
        v3 = v235;
        v62 = v241;
      }

      else
      {
        a1 = v234;
        v3 = v235;
        if (!v186)
        {
          goto LABEL_312;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = sub_2751E3B54(v6);
        }

        v62 = v241;
        v187 = *(v6 + 2);
        if (!v187)
        {
          goto LABEL_313;
        }

        *(v6 + 2) = v187 - 1;
      }

      v61 = v62 + 1;
    }

    while (v61 != v236);

    if (v26 >= v22)
    {
LABEL_223:
      if (!(((v22 - v11) > v26) | v232 & 1))
      {
        v188 = v6;
        v189 = v37[3];
        v190 = v189 + 1;
        if (__OFADD__(v189, 1))
        {
          goto LABEL_321;
        }

        v37 = v253;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (v37[2] < v190 || (isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_2751D2B08(isUniquelyReferenced_nonNull_native, v190);
          v37 = v253;
        }

        v193 = v37[3];
        v192 = v37[4];
        v47 = __OFADD__(v192, v193);
        v194 = v192 + v193;
        if (v47)
        {
          goto LABEL_323;
        }

        v6 = v188;
        if (v193 < 0)
        {
          if (v194 < 0)
          {
            v211 = v37[2];
            v47 = __OFADD__(v194, v211);
            v194 += v211;
            if (v47)
            {
              goto LABEL_336;
            }
          }
        }

        else
        {
          v195 = v37[2];
          v196 = __OFSUB__(v194, v195);
          v197 = v194 - v195;
          if (v197 < 0 == v196)
          {
            v194 = v197;
            if (v196)
            {
              goto LABEL_332;
            }
          }
        }

        v37[v194 + 5] = v230;
        v212 = v37[3];
        v47 = __OFADD__(v212, 1);
        v213 = v212 + 1;
        if (v47)
        {
          goto LABEL_326;
        }

        v37[3] = v213;
      }

      if (!((v26 >= (v22 + v11)) | v233 & 1))
      {
        v214 = v6;
        v215 = v37[3];
        v216 = v215 + 1;
        if (__OFADD__(v215, 1))
        {
          goto LABEL_325;
        }

        v37 = v253;
        v217 = swift_isUniquelyReferenced_nonNull_native();
        if (v37[2] < v216 || (v217 & 1) == 0)
        {
          sub_2751D2B08(v217, v216);
          v37 = v253;
        }

        v219 = v37[3];
        v218 = v37[4];
        v47 = __OFADD__(v218, v219);
        v220 = v218 + v219;
        if (!v47)
        {
          v6 = v214;
          if (v219 < 0)
          {
            if (v220 < 0)
            {
              v227 = v37[2];
              v47 = __OFADD__(v220, v227);
              v220 += v227;
              if (v47)
              {
                goto LABEL_338;
              }
            }
          }

          else
          {
            v221 = v37[2];
            v222 = __OFSUB__(v220, v221);
            v223 = v220 - v221;
            if (v223 < 0 == v222)
            {
              v220 = v223;
              if (v222)
              {
                goto LABEL_335;
              }
            }
          }

          v37[v220 + 5] = v231;
          v228 = v37[3];
          v47 = __OFADD__(v228, 1);
          v226 = v228 + 1;
          if (v47)
          {
            goto LABEL_330;
          }

          goto LABEL_272;
        }

        goto LABEL_329;
      }

      goto LABEL_273;
    }

LABEL_33:
    if ((v26 >= (v22 + v11)) | v233 & 1)
    {
      goto LABEL_238;
    }

    v39 = v6;
    v40 = v37[3];
    v41 = v40 + 1;
    if (__OFADD__(v40, 1))
    {
      goto LABEL_320;
    }

    v37 = v253;
    v42 = swift_isUniquelyReferenced_nonNull_native();
    if (v37[2] < v41 || (v42 & 1) == 0)
    {
      sub_2751D2B08(v42, v41);
      v37 = v253;
    }

    v44 = v37[3];
    v43 = v37[4];
    v47 = __OFADD__(v43, v44);
    v45 = v43 + v44;
    if (v47)
    {
      goto LABEL_322;
    }

    v6 = v39;
    if (v44 < 0)
    {
      if (v45 < 0)
      {
        v198 = v37[2];
        v47 = __OFADD__(v45, v198);
        v45 += v198;
        if (v47)
        {
          goto LABEL_337;
        }
      }
    }

    else
    {
      v46 = v37[2];
      v47 = __OFSUB__(v45, v46);
      v48 = v45 - v46;
      if (v48 < 0 == v47)
      {
        v45 = v48;
        if (v47)
        {
          goto LABEL_333;
        }
      }
    }

    v37[v45 + 5] = v231;
    v199 = v37[3];
    v47 = __OFADD__(v199, 1);
    v200 = v199 + 1;
    if (v47)
    {
      goto LABEL_327;
    }

    v37[3] = v200;
LABEL_238:

    if (!(((v22 - v11) > v26) | v232 & 1))
    {
      v201 = v6;
      v202 = v37[3];
      v203 = v202 + 1;
      if (__OFADD__(v202, 1))
      {
        goto LABEL_324;
      }

      v37 = v253;
      v204 = swift_isUniquelyReferenced_nonNull_native();
      if (v37[2] < v203 || (v204 & 1) == 0)
      {
        sub_2751D2B08(v204, v203);
        v37 = v253;
      }

      v206 = v37[3];
      v205 = v37[4];
      v47 = __OFADD__(v205, v206);
      v207 = v205 + v206;
      if (!v47)
      {
        v6 = v201;
        if (v206 < 0)
        {
          if (v207 < 0)
          {
            v224 = v37[2];
            v47 = __OFADD__(v207, v224);
            v207 += v224;
            if (v47)
            {
              goto LABEL_339;
            }
          }
        }

        else
        {
          v208 = v37[2];
          v209 = __OFSUB__(v207, v208);
          v210 = v207 - v208;
          if (v210 < 0 == v209)
          {
            v207 = v210;
            if (v209)
            {
              goto LABEL_334;
            }
          }
        }

        v37[v207 + 5] = v230;
        v225 = v37[3];
        v47 = __OFADD__(v225, 1);
        v226 = v225 + 1;
        if (v47)
        {
          goto LABEL_331;
        }

LABEL_272:
        v37[3] = v226;
        goto LABEL_273;
      }

      goto LABEL_328;
    }

LABEL_273:
    v10 = 0;
    if (!v37[3])
    {
      goto LABEL_280;
    }
  }

  if (!v30)
  {
    goto LABEL_315;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v21 = sub_2751E3B54(v21);
    v31 = *(v21 + 2);
    if (v31)
    {
      goto LABEL_27;
    }

LABEL_278:
    __break(1u);
    return MEMORY[0x277D84F90];
  }

  v31 = *(v21 + 2);
  if (!v31)
  {
    goto LABEL_278;
  }

LABEL_27:
  *(v21 + 2) = v31 - 1;
  v33 = v3[5];
  v32 = v3[6];

  if (v31 == 1)
  {
    goto LABEL_316;
  }

  if ((v31 - 2) < *(v21 + 2))
  {
    v6 = v21;
    v34 = *&v21[16 * v31];
    if ((v34 & 0x8000000000000000) != 0)
    {
      goto LABEL_318;
    }

    v35 = v3[3];
    if (v34 >= *(v35 + 16))
    {
      goto LABEL_319;
    }

    v36 = *(v35 + 8 * v34 + 32);

    v11 = v33(a1, v36);

    v37 = v238;
    v38 = v250;
    if (!v250)
    {
      goto LABEL_32;
    }

    goto LABEL_45;
  }

LABEL_317:
  __break(1u);
LABEL_318:
  __break(1u);
LABEL_319:
  __break(1u);
LABEL_320:
  __break(1u);
LABEL_321:
  __break(1u);
LABEL_322:
  __break(1u);
LABEL_323:
  __break(1u);
LABEL_324:
  __break(1u);
LABEL_325:
  __break(1u);
LABEL_326:
  __break(1u);
LABEL_327:
  __break(1u);
LABEL_328:
  __break(1u);
LABEL_329:
  __break(1u);
LABEL_330:
  __break(1u);
LABEL_331:
  __break(1u);
LABEL_332:
  __break(1u);
LABEL_333:
  __break(1u);
LABEL_334:
  __break(1u);
LABEL_335:
  __break(1u);
LABEL_336:
  __break(1u);
LABEL_337:
  __break(1u);
LABEL_338:
  __break(1u);
LABEL_339:
  __break(1u);

  *(v240 + 16) = 0;

  __break(1u);
  return result;
}

char *VPTree.search(query:radius:sorted:)(uint64_t a1, char a2, float a3)
{
  v4 = v3;
  v84[12] = *MEMORY[0x277D85DE8];
  swift_beginAccess();
  v7 = v3[3];
  v8 = *(v7 + 16);
  v76 = MEMORY[0x277D84F90];
  if (!v8 || a3 <= 0.0)
  {
    goto LABEL_68;
  }

  v10 = v3[5];
  v9 = v3[6];
  swift_beginAccess();
  v11 = v4[4];
  if (!*(v11 + 16))
  {
    goto LABEL_75;
  }

  v12 = *(v11 + 32);
  if (v12 >= v8)
  {
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
  }

  v13 = *(v7 + 8 * v12 + 32);

  v14 = v10(a1, v13);

  v15 = v4[4];
  if (!*(v15 + 16))
  {
    goto LABEL_77;
  }

  v76 = MEMORY[0x277D84F90];
  if ((v14 - *(v15 + 40)) > a3)
  {
    goto LABEL_68;
  }

  v75 = a2;
  v16 = MEMORY[0x277D84F90];
  v84[0] = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD1A8, &unk_27520DD60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_27520DD90;
  *(inited + 32) = 0;
  v18 = 1;
  while (2)
  {
    v20 = v18 - 1;
    v21 = *(inited + 8 * (v18 - 1) + 32);
    *(inited + 16) = v20;
    if ((v21 & 0x8000000000000000) != 0)
    {
      goto LABEL_71;
    }

    v22 = v4[4];
    if (v21 >= *(v22 + 16))
    {
      goto LABEL_72;
    }

    v23 = v22 + 56 * v21;
    v24 = *(v23 + 32);
    if ((v24 & 0x8000000000000000) != 0)
    {
      goto LABEL_73;
    }

    v25 = v4[3];
    if (v24 >= *(v25 + 16))
    {
      goto LABEL_74;
    }

    v26 = *(v23 + 40);
    v79 = *(v23 + 48);
    v19 = *(v23 + 64);
    v80 = *(v23 + 72);
    v81 = *(v23 + 56);
    v27 = *(v23 + 80);
    v29 = v4[5];
    v28 = v4[6];
    v30 = *(v25 + 8 * v24 + 32);

    v31 = v29(a1, v30);

    if (v31 <= a3)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_2751D0E64(0, *(v16 + 2) + 1, 1, v16);
      }

      v33 = *(v16 + 2);
      v32 = *(v16 + 3);
      if (v33 >= v32 >> 1)
      {
        v16 = sub_2751D0E64((v32 > 1), v33 + 1, 1, v16);
      }

      *(v16 + 2) = v33 + 1;
      v34 = &v16[16 * v33];
      *(v34 + 4) = v24;
      *(v34 + 10) = v31;
    }

    if (!v27)
    {
      goto LABEL_50;
    }

    v77 = v19;
    v78 = inited;
    v35 = *(v27 + 16);
    if (!v35)
    {
      v36 = MEMORY[0x277D84F90];
      v47 = *(MEMORY[0x277D84F90] + 16);
      if (v47)
      {
        goto LABEL_30;
      }

LABEL_39:
      v49 = MEMORY[0x277D84F90];
      goto LABEL_40;
    }

    v83 = MEMORY[0x277D84F90];

    sub_2751E1264(0, v35, 0);
    v36 = v83;
    v37 = 32;
    do
    {
      v38 = *(v27 + v37);
      if ((v38 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_70:
        __break(1u);
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
        goto LABEL_76;
      }

      v39 = v4[3];
      if (v38 >= *(v39 + 16))
      {
        goto LABEL_70;
      }

      v41 = v4[5];
      v40 = v4[6];
      v42 = *(v39 + 8 * v38 + 32);

      v43 = v41(a1, v42);

      v45 = *(v83 + 16);
      v44 = *(v83 + 24);
      if (v45 >= v44 >> 1)
      {
        sub_2751E1264((v44 > 1), v45 + 1, 1);
      }

      *(v83 + 16) = v45 + 1;
      v46 = v83 + 16 * v45;
      *(v46 + 32) = v38;
      *(v46 + 40) = v43;
      v37 += 8;
      --v35;
    }

    while (v35);

    v47 = *(v83 + 16);
    if (!v47)
    {
      goto LABEL_39;
    }

LABEL_30:
    v48 = (v36 + 40);
    v49 = MEMORY[0x277D84F90];
    do
    {
      v53 = *v48;
      if (*v48 <= a3)
      {
        v54 = *(v48 - 1);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_2751E1264(0, *(v49 + 16) + 1, 1);
        }

        v51 = *(v49 + 16);
        v50 = *(v49 + 24);
        if (v51 >= v50 >> 1)
        {
          sub_2751E1264((v50 > 1), v51 + 1, 1);
        }

        *(v49 + 16) = v51 + 1;
        v52 = v49 + 16 * v51;
        *(v52 + 32) = v54;
        *(v52 + 40) = v53;
      }

      v48 += 4;
      --v47;
    }

    while (v47);
LABEL_40:

    v55 = *(v49 + 16);
    if (v55)
    {
      v19 = v77;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_2751D0E64(0, *(v16 + 2) + 1, 1, v16);
      }

      v56 = *(v16 + 2);
      v57 = 16 * v56;
      v58 = (v49 + 40);
      do
      {
        v59 = *(v58 - 1);
        v60 = *v58;
        v61 = *(v16 + 3);
        v62 = v56 + 1;
        if (v56 >= v61 >> 1)
        {
          v16 = sub_2751D0E64((v61 > 1), v56 + 1, 1, v16);
        }

        *(v16 + 2) = v62;
        v63 = &v16[v57];
        *(v63 + 4) = v59;
        *(v63 + 10) = v60;
        v57 += 16;
        v58 += 4;
        v56 = v62;
        --v55;
      }

      while (v55);
    }

    else
    {
      v19 = v77;
    }

    inited = v78;
LABEL_50:
    v64 = v26 + a3;
    if (v31 >= v26)
    {
      if (!(((v26 - a3) > v31) | v80 & 1))
      {
        v71 = *(inited + 16);
        v70 = *(inited + 24);
        if (v71 >= v70 >> 1)
        {
          inited = sub_2751D09BC((v70 > 1), v71 + 1, 1, inited);
        }

        *(inited + 16) = v71 + 1;
        *(inited + 8 * v71 + 32) = v19;
      }

      if (!((v31 >= v64) | v81 & 1))
      {
        v68 = *(inited + 16);
        v72 = *(inited + 24);
        v69 = v68 + 1;
        if (v68 >= v72 >> 1)
        {
          inited = sub_2751D09BC((v72 > 1), v68 + 1, 1, inited);
        }

        v19 = v79;
LABEL_9:
        *(inited + 16) = v69;
        *(inited + 8 * v68 + 32) = v19;
      }
    }

    else
    {
      if (!((v31 >= v64) | v81 & 1))
      {
        v66 = *(inited + 16);
        v65 = *(inited + 24);
        if (v66 >= v65 >> 1)
        {
          inited = sub_2751D09BC((v65 > 1), v66 + 1, 1, inited);
        }

        *(inited + 16) = v66 + 1;
        *(inited + 8 * v66 + 32) = v79;
      }

      if (!(((v26 - a3) > v31) | v80 & 1))
      {
        v68 = *(inited + 16);
        v67 = *(inited + 24);
        v69 = v68 + 1;
        if (v68 >= v67 >> 1)
        {
          inited = sub_2751D09BC((v67 > 1), v68 + 1, 1, inited);
        }

        goto LABEL_9;
      }
    }

    v18 = *(inited + 16);
    if (v18)
    {
      continue;
    }

    break;
  }

  v84[0] = v16;
  if (v75)
  {
    sub_2751EFE98(v84);
  }

  v76 = v84[0];
LABEL_68:
  v73 = *MEMORY[0x277D85DE8];
  return v76;
}

void *VPTree.deinit()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[6];

  return v0;
}

uint64_t VPTree.__deallocating_deinit()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

uint64_t VPTree.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD880, &qword_27520E120);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2751F4810();
  sub_27520C2B8();
  v14 = *(v3 + 16);
  LOBYTE(v13) = 0;
  sub_2751ED1DC();
  sub_27520C1A8();
  if (!v2)
  {
    swift_beginAccess();
    v13 = *(v3 + 32);
    v12[15] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD890, &qword_27520E128);
    sub_2751F48B8(&qword_2809AD898, sub_2751F4864);
    sub_27520C1A8();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t VPTree.__allocating_init(from:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  VPTree.init(from:)(a1);
  return v2;
}

uint64_t *VPTree.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = *v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD8A8, &qword_27520E130);
  v22 = *(v6 - 8);
  v23 = v6;
  v7 = *(v22 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - v8;
  v10 = MEMORY[0x277D84F90];
  v1[3] = MEMORY[0x277D84F90];
  v1[4] = v10;
  v11 = v1 + 4;
  v1[5] = sub_2751F08E0;
  v1[6] = 0;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2751F4810();
  sub_27520C2A8();
  if (v2)
  {
    v15 = v1[3];

    v16 = v1[4];

    v17 = v1[6];

    swift_deallocPartialClassInstance();
  }

  else
  {
    v13 = v22;
    LOBYTE(v25) = 0;
    sub_2751ED230();
    v14 = v23;
    sub_27520C108();
    *(v1 + 16) = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD890, &qword_27520E128);
    v24 = 1;
    sub_2751F48B8(&qword_2809AD8B0, sub_2751F4930);
    sub_27520C108();
    (*(v13 + 8))(v9, v14);
    v19 = v25;
    swift_beginAccess();
    v20 = *v11;
    *v11 = v19;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v3;
}

uint64_t sub_2751F2CA4()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 32);
}

BOOL sub_2751F2CE8()
{
  v1 = *v0;
  swift_beginAccess();
  return *(*(v1 + 32) + 16) == 0;
}

uint64_t *sub_2751F2D34@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = VPTree.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_2751F2DB0(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_27520C1D8();
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
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD230, &unk_27520E0A0);
        v6 = sub_27520BCF8();
        *(v6 + 16) = v5;
      }

      v16[0] = v6 + 32;
      v16[1] = v5;
      sub_2751ED610(v16, v17, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
    goto LABEL_19;
  }

  if (v2 < 0)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

  if (v2 >= 2)
  {
    v7 = *a1;
    v8 = *a1 + 16;
    v9 = -1;
    for (i = 1; i != v2; ++i)
    {
      v11 = v9;
      v12 = v8;
      do
      {
        v13 = *(v12 + 8);
        if (v13 >= *(v12 - 8))
        {
          break;
        }

        if (!v7)
        {
          goto LABEL_20;
        }

        v14 = *v12;
        *v12 = *(v12 - 16);
        *(v12 - 8) = v13;
        *(v12 - 16) = v14;
        v12 -= 16;
      }

      while (!__CFADD__(v11++, 1));
      v8 += 16;
      --v9;
    }
  }

  return result;
}

uint64_t sub_2751F2F04(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *, uint64_t *))
{
  v22 = a2;
  if (a3 != a2)
  {
    v7 = a3;
    v8 = *v4;
    v9 = *v4 + 16 * a3;
    v10 = result - a3;
LABEL_4:
    v11 = v10;
    v12 = v9;
    while (1)
    {
      v13 = *(v12 + 8);
      v20 = *v12;
      v21 = v13;
      v14 = *(v12 - 8);
      v18 = *(v12 - 16);
      v19 = v14;
      result = a4(&v20, &v18);
      if (v5)
      {
        break;
      }

      if (result)
      {
        if (!v8)
        {
          __break(1u);
          return result;
        }

        v15 = *v12;
        v16 = *(v12 + 8);
        *v12 = *(v12 - 16);
        *(v12 - 8) = v16;
        *(v12 - 16) = v15;
        v12 -= 16;
        if (!__CFADD__(v11++, 1))
        {
          continue;
        }
      }

      ++v7;
      v9 += 16;
      --v10;
      if (v7 != v22)
      {
        goto LABEL_4;
      }

      return result;
    }
  }

  return result;
}

uint64_t sub_2751F2FF4(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t (*a4)(uint64_t *, uint64_t *), uint64_t a5, uint64_t a6)
{
  v104 = result;
  v8 = a3[1];
  if (v8 < 1)
  {
    v10 = MEMORY[0x277D84F90];
LABEL_96:
    v11 = *v104;
    if (*v104)
    {
      v8 = v6;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        goto LABEL_125;
      }

      goto LABEL_98;
    }

    goto LABEL_134;
  }

  v9 = 0;
  v10 = MEMORY[0x277D84F90];
  while (1)
  {
    v11 = v9;
    v12 = (v9 + 1);
    if (v12 >= v8)
    {
      v8 = v12;
    }

    else
    {
      v13 = *a3;
      v14 = *a3 + 16 * v12;
      v15 = *(v14 + 8);
      v108 = *v14;
      v109 = v15;
      v16 = (v13 + 16 * v11);
      v17 = *(v16 + 2);
      v106 = *v16;
      v107 = v17;
      result = a4(&v108, &v106);
      if (v6)
      {
      }

      v18 = result;
      v19 = 0;
      v100 = v11;
      v20 = v11 - v8 + 2;
      v21 = 16 * v11;
      v22 = v13 + v21 + 24;
      do
      {
        if (!(v20 + v19))
        {
          v25 = v8 - 1;
          if ((v18 & 1) == 0)
          {
            goto LABEL_25;
          }

          goto LABEL_13;
        }

        v23 = *(v22 + 16);
        v108 = *(v22 + 8);
        v109 = v23;
        v24 = *v22;
        v106 = *(v22 - 8);
        v107 = v24;
        result = a4(&v108, &v106);
        ++v19;
        v22 += 16;
      }

      while (((v18 ^ result) & 1) == 0);
      v25 = &v100[v19];
      v8 = &v100[v19 + 1];
      if ((v18 & 1) == 0)
      {
        goto LABEL_25;
      }

LABEL_13:
      v26 = v100;
      if (v8 < v100)
      {
        goto LABEL_128;
      }

      if (v100 <= v25)
      {
        v27 = 16 * v8 - 16;
        v28 = v8;
        do
        {
          if (v26 != --v28)
          {
            v30 = *a3;
            if (!*a3)
            {
              goto LABEL_132;
            }

            v31 = (v30 + v21);
            v32 = (v30 + v27);
            v33 = *(v30 + v21);
            v34 = *(v30 + v21 + 8);
            if (v21 != v27 || v31 >= v32 + 1)
            {
              *v31 = *v32;
            }

            v29 = v30 + v27;
            *v29 = v33;
            *(v29 + 8) = v34;
          }

          ++v26;
          v27 -= 16;
          v21 += 16;
        }

        while (v26 < v28);
LABEL_25:
        v11 = v100;
      }

      else
      {
        v11 = v100;
      }
    }

    v35 = a3[1];
    if (v8 >= v35)
    {
      goto LABEL_35;
    }

    if (__OFSUB__(v8, v11))
    {
      goto LABEL_124;
    }

    if (v8 - v11 >= a6)
    {
      goto LABEL_35;
    }

    if (__OFADD__(v11, a6))
    {
      __break(1u);
LABEL_127:
      __break(1u);
LABEL_128:
      __break(1u);
LABEL_129:
      __break(1u);
LABEL_130:
      __break(1u);
      goto LABEL_131;
    }

    if (v11 + a6 >= v35)
    {
      v36 = a3[1];
    }

    else
    {
      v36 = (v11 + a6);
    }

    if (v36 < v11)
    {
      goto LABEL_127;
    }

    if (v8 == v36)
    {
LABEL_35:
      v37 = v8;
      if (v8 < v11)
      {
        goto LABEL_123;
      }
    }

    else
    {
      v84 = *a3;
      v85 = *a3 + 16 * v8;
      v101 = v11;
      v103 = v36;
      v86 = (v11 - v8);
      do
      {
        v87 = v86;
        v98 = v85;
        v88 = v85;
        do
        {
          v89 = *(v88 + 8);
          v108 = *v88;
          v109 = v89;
          v90 = *(v88 - 8);
          v106 = *(v88 - 16);
          v107 = v90;
          result = a4(&v108, &v106);
          if (v6)
          {
          }

          if ((result & 1) == 0)
          {
            break;
          }

          if (!v84)
          {
            goto LABEL_130;
          }

          v91 = *v88;
          v92 = *(v88 + 8);
          *v88 = *(v88 - 16);
          *(v88 - 8) = v92;
          *(v88 - 16) = v91;
          v88 -= 16;
        }

        while (!__CFADD__(v87++, 1));
        ++v8;
        v85 = v98 + 16;
        --v86;
        v37 = v103;
      }

      while (v8 != v103);
      v11 = v101;
      if (v103 < v101)
      {
        goto LABEL_123;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_2751D08B8(0, *(v10 + 2) + 1, 1, v10);
      v10 = result;
    }

    v39 = *(v10 + 2);
    v38 = *(v10 + 3);
    v40 = v39 + 1;
    if (v39 >= v38 >> 1)
    {
      result = sub_2751D08B8((v38 > 1), v39 + 1, 1, v10);
      v10 = result;
    }

    *(v10 + 2) = v40;
    v41 = &v10[16 * v39];
    *(v41 + 4) = v11;
    *(v41 + 5) = v37;
    v42 = *v104;
    if (!*v104)
    {
      goto LABEL_133;
    }

    v102 = v37;
    if (v39)
    {
      break;
    }

LABEL_3:
    v8 = a3[1];
    v9 = v102;
    if (v102 >= v8)
    {
      goto LABEL_96;
    }
  }

  while (1)
  {
    v43 = v40 - 1;
    if (v40 >= 4)
    {
      v48 = &v10[16 * v40 + 32];
      v49 = *(v48 - 64);
      v50 = *(v48 - 56);
      v54 = __OFSUB__(v50, v49);
      v51 = v50 - v49;
      if (v54)
      {
        goto LABEL_110;
      }

      v53 = *(v48 - 48);
      v52 = *(v48 - 40);
      v54 = __OFSUB__(v52, v53);
      v46 = v52 - v53;
      v47 = v54;
      if (v54)
      {
        goto LABEL_111;
      }

      v55 = &v10[16 * v40];
      v57 = *v55;
      v56 = *(v55 + 1);
      v54 = __OFSUB__(v56, v57);
      v58 = v56 - v57;
      if (v54)
      {
        goto LABEL_113;
      }

      v54 = __OFADD__(v46, v58);
      v59 = v46 + v58;
      if (v54)
      {
        goto LABEL_116;
      }

      if (v59 >= v51)
      {
        v77 = &v10[16 * v43 + 32];
        v79 = *v77;
        v78 = *(v77 + 1);
        v54 = __OFSUB__(v78, v79);
        v80 = v78 - v79;
        if (v54)
        {
          goto LABEL_122;
        }

        if (v46 < v80)
        {
          v43 = v40 - 2;
        }

        goto LABEL_76;
      }

      goto LABEL_55;
    }

    if (v40 == 3)
    {
      v44 = *(v10 + 4);
      v45 = *(v10 + 5);
      v54 = __OFSUB__(v45, v44);
      v46 = v45 - v44;
      v47 = v54;
LABEL_55:
      if (v47)
      {
        goto LABEL_112;
      }

      v60 = &v10[16 * v40];
      v62 = *v60;
      v61 = *(v60 + 1);
      v63 = __OFSUB__(v61, v62);
      v64 = v61 - v62;
      v65 = v63;
      if (v63)
      {
        goto LABEL_115;
      }

      v66 = &v10[16 * v43 + 32];
      v68 = *v66;
      v67 = *(v66 + 1);
      v54 = __OFSUB__(v67, v68);
      v69 = v67 - v68;
      if (v54)
      {
        goto LABEL_118;
      }

      if (__OFADD__(v64, v69))
      {
        goto LABEL_119;
      }

      if (v64 + v69 >= v46)
      {
        if (v46 < v69)
        {
          v43 = v40 - 2;
        }

        goto LABEL_76;
      }

      goto LABEL_69;
    }

    v70 = &v10[16 * v40];
    v72 = *v70;
    v71 = *(v70 + 1);
    v54 = __OFSUB__(v71, v72);
    v64 = v71 - v72;
    v65 = v54;
LABEL_69:
    if (v65)
    {
      goto LABEL_114;
    }

    v73 = &v10[16 * v43];
    v75 = *(v73 + 4);
    v74 = *(v73 + 5);
    v54 = __OFSUB__(v74, v75);
    v76 = v74 - v75;
    if (v54)
    {
      goto LABEL_117;
    }

    if (v76 < v64)
    {
      goto LABEL_3;
    }

LABEL_76:
    v11 = v43 - 1;
    if (v43 - 1 >= v40)
    {
      break;
    }

    if (!*a3)
    {
      goto LABEL_129;
    }

    v81 = *&v10[16 * v11 + 32];
    v82 = *&v10[16 * v43 + 40];
    sub_2751F369C((*a3 + 16 * v81), (*a3 + 16 * *&v10[16 * v43 + 32]), (*a3 + 16 * v82), v42, a4);
    if (v6)
    {
    }

    if (v82 < v81)
    {
      goto LABEL_108;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_2751F3A50(v10);
    }

    if (v11 >= *(v10 + 2))
    {
      goto LABEL_109;
    }

    v83 = &v10[16 * v11];
    *(v83 + 4) = v81;
    *(v83 + 5) = v82;
    v110 = v10;
    result = sub_2751F39C4(v43);
    v10 = v110;
    v40 = *(v110 + 2);
    if (v40 <= 1)
    {
      goto LABEL_3;
    }
  }

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
  result = sub_2751F3A50(v10);
  v10 = result;
LABEL_98:
  v110 = v10;
  v94 = *(v10 + 2);
  if (v94 < 2)
  {
  }

  while (*a3)
  {
    v95 = *&v10[16 * v94];
    v96 = *&v10[16 * v94 + 24];
    sub_2751F369C((*a3 + 16 * v95), (*a3 + 16 * *&v10[16 * v94 + 16]), (*a3 + 16 * v96), v11, a4);
    if (v8)
    {
    }

    if (v96 < v95)
    {
      goto LABEL_120;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_2751F3A50(v10);
    }

    if (v94 - 2 >= *(v10 + 2))
    {
      goto LABEL_121;
    }

    v97 = &v10[16 * v94];
    *v97 = v95;
    *(v97 + 1) = v96;
    v110 = v10;
    result = sub_2751F39C4(v94 - 1);
    v10 = v110;
    v94 = *(v110 + 2);
    if (v94 <= 1)
    {
    }
  }

LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
  return result;
}

uint64_t sub_2751F369C(char *__dst, char *__src, char *a3, char *a4, uint64_t (*a5)(uint64_t *, uint64_t *))
{
  v40 = a3;
  v6 = a5;
  v7 = a4;
  v8 = __src;
  v9 = __dst;
  v10 = __src - __dst;
  v11 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v11 = __src - __dst;
  }

  v12 = v11 >> 4;
  v13 = a3 - __src;
  v14 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v14 = a3 - __src;
  }

  v15 = v14 >> 4;
  if (v12 >= v15)
  {
    v25 = 16 * v15;
    if (a4 != __src || &__src[v25] <= a4)
    {
      memmove(a4, __src, 16 * v15);
    }

    v18 = &v7[v25];
    if (v13 >= 16 && v8 > v9)
    {
      while (1)
      {
        v26 = 0;
        v27 = v8;
        v28 = v18;
        v8 -= 16;
        while (1)
        {
          v29 = *&v28[v26 - 8];
          v38 = *&v28[v26 - 16];
          v39 = v29;
          v30 = *(v27 - 2);
          v36 = *(v27 - 2);
          v37 = v30;
          v31 = v6(&v38, &v36);
          if (v5)
          {
            v33 = (v28 - v7 + v26 + ((v28 - v7 + v26) < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0;
            if (v27 >= v7 && v27 < &v7[v33] && v27 == v7)
            {
              return 1;
            }

            v34 = v27;
LABEL_50:
            memmove(v34, v7, v33);
            return 1;
          }

          if (v31)
          {
            break;
          }

          if (&v40[v26] != &v28[v26])
          {
            *&v40[v26 - 16] = *&v28[v26 - 16];
          }

          v26 -= 16;
          v18 = &v28[v26];
          if (&v28[v26] <= v7)
          {
            v8 = v27;
            goto LABEL_46;
          }
        }

        v32 = &v40[v26 - 16];
        if (&v40[v26] != v27)
        {
          *v32 = *v8;
        }

        v40 = v32;
        v18 = &v28[v26];
        if (&v28[v26] <= v7 || v8 <= v9)
        {
          v18 = &v28[v26];
          break;
        }
      }
    }

LABEL_46:
    v33 = (v18 - v7 + (v18 - v7 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0;
    if (v8 >= v7 && v8 < &v7[v33] && v8 == v7)
    {
      return 1;
    }

    v34 = v8;
    goto LABEL_50;
  }

  v16 = 16 * v12;
  if (a4 != __dst || &__dst[v16] <= a4)
  {
    memmove(a4, __dst, v16);
    v6 = a5;
  }

  v18 = &v7[v16];
  if (v10 < 16 || (v19 = v40, v8 >= v40))
  {
LABEL_20:
    v8 = v9;
    goto LABEL_46;
  }

  while (1)
  {
    v20 = *(v8 + 2);
    v38 = *v8;
    v39 = v20;
    v21 = *(v7 + 2);
    v36 = *v7;
    v37 = v21;
    v22 = v6(&v38, &v36);
    if (v5)
    {
      break;
    }

    if ((v22 & 1) == 0)
    {
      v23 = v7;
      v24 = v9 == v7;
      v7 += 16;
      if (v24)
      {
        goto LABEL_18;
      }

LABEL_17:
      *v9 = *v23;
      goto LABEL_18;
    }

    v23 = v8;
    v24 = v9 == v8;
    v8 += 16;
    if (!v24)
    {
      goto LABEL_17;
    }

LABEL_18:
    v9 += 16;
    if (v7 >= v18 || v8 >= v19)
    {
      goto LABEL_20;
    }
  }

  v33 = (v18 - v7 + (v18 - v7 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0;
  if (v9 < v7 || v9 >= &v7[v33] || v9 != v7)
  {
    v34 = v9;
    goto LABEL_50;
  }

  return 1;
}

uint64_t sub_2751F39C4(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_2751F3A50(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

char *sub_2751F3A64(void **a1, const void **a2, void *a3)
{
  result = *a1;
  v4 = *a2;
  v5 = (*a3 - v4 + ((*a3 - v4) < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0;
  if (result != v4 || result >= &v4[v5])
  {
    return memmove(result, v4, v5);
  }

  return result;
}

uint64_t sub_2751F3A9C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x646E49746E696F70 && a2 == 0xEA00000000007865;
  if (v4 || (sub_27520C218() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C6F687365726874 && a2 == 0xE900000000000064 || (sub_27520C218() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1952867692 && a2 == 0xE400000000000000 || (sub_27520C218() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7468676972 && a2 == 0xE500000000000000 || (sub_27520C218() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E496465726F7473 && a2 == 0xED00007365636964)
  {

    return 4;
  }

  else
  {
    v6 = sub_27520C218();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_2751F3C60(uint64_t a1, float (*a2)(uint64_t, uint64_t), uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v5)
  {
    v7 = a4 < 1;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    return result;
  }

  v8 = *sub_27520BA78();
  v143 = v8;
  v9 = sub_2751E3A6C(v5, 0);
  result = sub_2751E3B7C(v142, (v9 + 4), v5, 0, v5);
  v139 = v5;
  if (result == v5)
  {
    v10 = v8[3];
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      goto LABEL_181;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (v8[2] < v11 || (isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_2751D2AEC(isUniquelyReferenced_nonNull_native, v11, 0);
      v8 = v143;
    }

    sub_2752088F8(v8 + 2, (v8 + 5), v9, 0, 257);

    if (!v8[3])
    {

      return MEMORY[0x277D84F90];
    }

    v138 = a1 + 32;
    v136 = MEMORY[0x277D84F90];
    v13 = v139;
    while (1)
    {
      v14 = v143;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_2751D25E8();
        v14 = v143;
      }

      v15 = v14[4];
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      v17 = &v14[3 * v15];
      v19 = v17[5];
      v18 = v17[6];
      v20 = *(v17 + 56);
      v21 = *(v17 + 57);
      v22 = v14[3];
      if (v16 >= v14[2])
      {
        v16 = 0;
      }

      v14[4] = v16;
      if (__OFSUB__(v22, 1))
      {
        goto LABEL_155;
      }

      v14[3] = v22 - 1;
      v23 = v19[2];
      if (v23)
      {
        v134 = v18;
        v135 = v14;
        if (v23 <= a4)
        {
          v37 = v19[4];
          v38 = v23 - 1;
          if (v23 == 1)
          {
            v39 = 0;
            v40 = 0.0;
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD1A8, &unk_27520DD60);
            v39 = swift_allocObject();
            v41 = _swift_stdlib_malloc_size(v39);
            v42 = v41 - 32;
            if (v41 < 32)
            {
              v42 = v41 - 25;
            }

            v39[2] = v38;
            v39[3] = 2 * (v42 >> 3);
            memcpy(v39 + 4, v19 + 5, 8 * v38);
            v43 = v19[2];
            if (v43)
            {
              v142[0] = MEMORY[0x277D84F90];

              result = sub_2751E09A4(0, v43, 0);
              if (v37 < 0)
              {
                goto LABEL_168;
              }

              if (v37 >= v13)
              {
                goto LABEL_169;
              }

              v133 = v39;
              v131 = v20;
              v44 = v21;
              v45 = v142[0];
              v46 = *(v138 + 8 * v37);
              v47 = 4;
              while (1)
              {
                v48 = v19[v47];
                if (v48 >= v139)
                {
                  goto LABEL_153;
                }

                v49 = *(v138 + 8 * v48);

                v50 = a2(v46, v49);

                v142[0] = v45;
                v52 = *(v45 + 16);
                v51 = *(v45 + 24);
                if (v52 >= v51 >> 1)
                {
                  result = sub_2751E09A4((v51 > 1), v52 + 1, 1);
                  v45 = v142[0];
                }

                *(v45 + 16) = v52 + 1;
                *(v45 + 4 * v52 + 32) = v50;
                ++v47;
                if (!--v43)
                {

                  v13 = v139;
                  v21 = v44;
                  v20 = v131;
                  v39 = v133;
                  v83 = *(v45 + 16);
                  if (!v83)
                  {
                    goto LABEL_132;
                  }

                  goto LABEL_87;
                }
              }
            }

            v45 = MEMORY[0x277D84F90];
            v83 = *(MEMORY[0x277D84F90] + 16);
            if (v83)
            {
LABEL_87:
              v40 = *(v45 + 32);
              v84 = v83 - 1;
              if (v84)
              {
                v85 = (v45 + 36);
                do
                {
                  v86 = *v85++;
                  v87 = v86;
                  if (v40 < v86)
                  {
                    v40 = v87;
                  }

                  --v84;
                }

                while (v84);
              }
            }

            else
            {
LABEL_132:
              v40 = 0.0;
            }
          }

          v119 = *(v136 + 2);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v136 = sub_2751D0F84(0, v119 + 1, 1, v136);
          }

          v121 = *(v136 + 2);
          v120 = *(v136 + 3);
          if (v121 >= v120 >> 1)
          {
            v136 = sub_2751D0F84((v120 > 1), v121 + 1, 1, v136);
          }

          *(v136 + 2) = v121 + 1;
          v122 = v136 + 32;
          v123 = &v136[56 * v121 + 32];
          *v123 = v37;
          *(v123 + 8) = v40;
          *(v123 + 16) = 0;
          *(v123 + 24) = 1;
          *(v123 + 32) = 0;
          *(v123 + 40) = 1;
          *(v123 + 48) = v39;

          if (v20)
          {
            v14 = v135;
          }

          else if (v21)
          {
            if ((v134 & 0x8000000000000000) != 0)
            {
              goto LABEL_172;
            }

            if (v134 >= *(v136 + 2))
            {
              goto LABEL_174;
            }

            v124 = &v122[56 * v134];
            *(v124 + 2) = v119;
            v124[24] = 0;
            v14 = v135;
          }

          else
          {
            if ((v134 & 0x8000000000000000) != 0)
            {
              goto LABEL_173;
            }

            if (v134 >= *(v136 + 2))
            {
              goto LABEL_175;
            }

            v125 = &v122[56 * v134];
            *(v125 + 4) = v119;
            v125[40] = 0;
            v14 = v135;
          }
        }

        else
        {
          v142[0] = 0;

          result = MEMORY[0x277C6DCE0](v142, 8);
          v24 = (v142[0] * v23) >> 64;
          if (v23 > v142[0] * v23)
          {
            v25 = -v23 % v23;
            if (v25 > v142[0] * v23)
            {
              do
              {
                v142[0] = 0;
                result = MEMORY[0x277C6DCE0](v142, 8);
              }

              while (v25 > v142[0] * v23);
              v24 = (v142[0] * v23) >> 64;
            }
          }

          if (v24 >= v19[2])
          {
            goto LABEL_156;
          }

          v26 = v19[v24 + 4];

          v132 = v26;
          if (v26 >= v13)
          {
            goto LABEL_157;
          }

          v130 = v20;
          v128 = v21;
          v27 = v19[2];
          if (v27)
          {
            v28 = *(v138 + 8 * v132);
            v142[0] = MEMORY[0x277D84F90];

            result = sub_2751E1264(0, v27, 0);
            v29 = v142[0];
            v30 = 4;
            while (1)
            {
              v31 = v19[v30];
              if (v31 >= v139)
              {
                break;
              }

              v32 = *(v138 + 8 * v31);

              v33 = a2(v28, v32);

              v142[0] = v29;
              v35 = *(v29 + 2);
              v34 = *(v29 + 3);
              if (v35 >= v34 >> 1)
              {
                result = sub_2751E1264((v34 > 1), v35 + 1, 1);
                v29 = v142[0];
              }

              *(v29 + 2) = v35 + 1;
              v36 = &v29[16 * v35];
              *(v36 + 4) = v31;
              *(v36 + 10) = v33;
              ++v30;
              if (!--v27)
              {

                goto LABEL_49;
              }
            }

LABEL_151:
            __break(1u);
LABEL_152:
            __break(1u);
LABEL_153:
            __break(1u);
            break;
          }

          v29 = MEMORY[0x277D84F90];
LABEL_49:
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v29 = sub_2751E3B54(v29);
          }

          v53 = *(v29 + 2);
          v142[0] = (v29 + 32);
          v142[1] = v53;
          result = sub_27520C1D8();
          if (result >= v53)
          {
            if (v53 >= 2)
            {
              v88 = -1;
              v89 = v29 + 32;
              for (i = 1; i != v53; ++i)
              {
                v91 = v88;
                v92 = v89;
                do
                {
                  v93 = *(v92 + 6);
                  if (v93 >= *(v92 + 2))
                  {
                    break;
                  }

                  v94 = *(v92 + 2);
                  *(v92 + 1) = *v92;
                  *v92 = v94;
                  *(v92 + 2) = v93;
                  v92 -= 16;
                }

                while (!__CFADD__(v91++, 1));
                v89 += 16;
                --v88;
              }
            }
          }

          else
          {
            v54 = result;
            v55 = MEMORY[0x277D84F90];
            if (v53 >= 2)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD230, &unk_27520E0A0);
              v55 = sub_27520BCF8();
              *(v55 + 16) = v53 >> 1;
            }

            v140[0] = v55 + 32;
            v140[1] = v53 >> 1;
            v56 = v55;
            sub_2751ED610(v140, v141, v142, v54);
            *(v56 + 16) = 0;
          }

          v57 = *(v29 + 2);
          if (!v57)
          {
            goto LABEL_158;
          }

          if (v57 == 1)
          {
            goto LABEL_159;
          }

          v58 = v57 >> 1;
          v59 = *&v29[16 * (v57 >> 1) + 40];
          v60 = (v57 >> 1) - 1;
          if (v57 >> 1 != 1)
          {
            v126 = *(v29 + 2);
            v142[0] = MEMORY[0x277D84F90];

            result = sub_2751E12C4(0, v60, 0);
            v61 = v142[0];
            v127 = v58;
            if (v58 <= 1)
            {
              v62 = 1;
            }

            else
            {
              v62 = v58;
            }

            v63 = v62 - 1;
            v64 = 48;
            while (v63)
            {
              v65 = *&v29[v64];
              v142[0] = v61;
              v67 = *(v61 + 16);
              v66 = *(v61 + 24);
              if (v67 >= v66 >> 1)
              {
                result = sub_2751E12C4((v66 > 1), v67 + 1, 1);
                v61 = v142[0];
              }

              *(v61 + 16) = v67 + 1;
              *(v61 + 8 * v67 + 32) = v65;
              --v63;
              v64 += 16;
              if (!--v60)
              {

                v68 = *(v29 + 2);
                v57 = v126;
                v58 = v127;
                if (v68 >= v127)
                {
                  goto LABEL_70;
                }

                goto LABEL_160;
              }
            }

            goto LABEL_152;
          }

          v68 = *(v29 + 2);
          v61 = MEMORY[0x277D84F90];
LABEL_70:
          if (v68 < v57)
          {
            goto LABEL_160;
          }

          v69 = v57 - v58;
          v142[0] = MEMORY[0x277D84F90];
          v70 = (v57 - v58) & ~((v57 - v58) >> 63);

          result = sub_2751E12C4(0, v70, 0);
          if ((v69 & 0x8000000000000000) != 0)
          {
            goto LABEL_161;
          }

          v71 = v142[0];
          v72 = 16 * v58 + 32;
          do
          {
            if (!v69)
            {
              __break(1u);
              goto LABEL_151;
            }

            v73 = *&v29[v72];
            v142[0] = v71;
            v75 = *(v71 + 16);
            v74 = *(v71 + 24);
            if (v75 >= v74 >> 1)
            {
              result = sub_2751E12C4((v74 > 1), v75 + 1, 1);
              v71 = v142[0];
            }

            *(v71 + 16) = v75 + 1;
            *(v71 + 8 * v75 + 32) = v73;
            v72 += 16;
            --v69;
          }

          while (v69);

          v76 = v136;
          v77 = *(v136 + 2);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v76 = sub_2751D0F84(0, v77 + 1, 1, v136);
          }

          v79 = *(v76 + 2);
          v78 = *(v76 + 3);
          if (v79 >= v78 >> 1)
          {
            v76 = sub_2751D0F84((v78 > 1), v79 + 1, 1, v76);
          }

          *(v76 + 2) = v79 + 1;
          v80 = v76 + 32;
          v81 = &v76[56 * v79 + 32];
          *v81 = v132;
          *(v81 + 8) = v59;
          *(v81 + 16) = 0;
          *(v81 + 24) = 1;
          *(v81 + 32) = 0;
          *(v81 + 40) = 1;
          *(v81 + 48) = 0;

          if ((v130 & 1) == 0)
          {
            if (v128)
            {
              if ((v134 & 0x8000000000000000) != 0)
              {
                goto LABEL_177;
              }

              if (v134 >= *(v76 + 2))
              {
                goto LABEL_179;
              }

              v82 = &v80[56 * v134 + 16];
            }

            else
            {
              if ((v134 & 0x8000000000000000) != 0)
              {
                goto LABEL_176;
              }

              if (v134 >= *(v76 + 2))
              {
                goto LABEL_178;
              }

              v82 = &v80[56 * v134 + 32];
            }

            *v82 = v77;
            *(v82 + 8) = 0;
          }

          v96 = v135[3];
          v97 = v96 + 1;
          if (__OFADD__(v96, 1))
          {
            goto LABEL_162;
          }

          v14 = v143;
          result = swift_isUniquelyReferenced_nonNull_native();
          if (v14[2] < v97 || (result & 1) == 0)
          {
            result = sub_2751D2AEC(result, v97, 0);
            v14 = v143;
          }

          v99 = v14[3];
          v98 = v14[4];
          v102 = __OFADD__(v98, v99);
          v100 = v98 + v99;
          if (v102)
          {
            goto LABEL_163;
          }

          if (v99 < 0)
          {
            if (v100 < 0)
            {
              v104 = v14[2];
              v102 = __OFADD__(v100, v104);
              v100 += v104;
              if (v102)
              {
                goto LABEL_182;
              }
            }
          }

          else
          {
            v101 = v14[2];
            v102 = __OFSUB__(v100, v101);
            v103 = v100 - v101;
            if (v103 < 0 == v102)
            {
              v100 = v103;
              if (v102)
              {
                goto LABEL_170;
              }
            }
          }

          v105 = &v14[3 * v100];
          v105[5] = v61;
          v105[6] = v77;
          *(v105 + 28) = 256;
          v106 = v14[3];
          v102 = __OFADD__(v106, 1);
          v107 = v106 + 1;
          if (v102)
          {
            goto LABEL_164;
          }

          v14[3] = v107;
          v108 = v107 + 1;
          if (__OFADD__(v107, 1))
          {
            goto LABEL_165;
          }

          result = swift_isUniquelyReferenced_nonNull_native();
          if (v14[2] < v108 || (result & 1) == 0)
          {
            result = sub_2751D2AEC(result, v108, 0);
            v14 = v143;
          }

          v110 = v14[3];
          v109 = v14[4];
          v102 = __OFADD__(v109, v110);
          v111 = v109 + v110;
          if (v102)
          {
            goto LABEL_166;
          }

          if (v110 < 0)
          {
            if (v111 < 0)
            {
              v115 = v14[2];
              v102 = __OFADD__(v111, v115);
              v111 += v115;
              if (v102)
              {
                goto LABEL_183;
              }
            }
          }

          else
          {
            v112 = v14[2];
            v113 = __OFSUB__(v111, v112);
            v114 = v111 - v112;
            if (v114 < 0 == v113)
            {
              v111 = v114;
              if (v113)
              {
                goto LABEL_171;
              }
            }
          }

          v116 = &v14[3 * v111];
          v116[5] = v71;
          v116[6] = v77;
          *(v116 + 28) = 0;
          v117 = v14[3];
          v102 = __OFADD__(v117, 1);
          v118 = v117 + 1;
          if (v102)
          {
            goto LABEL_167;
          }

          v136 = v76;
          v14[3] = v118;

          v13 = v139;
        }
      }

      else
      {
      }

      if (!v14[3])
      {

        return v136;
      }
    }

    __break(1u);
LABEL_155:
    __break(1u);
LABEL_156:
    __break(1u);
LABEL_157:
    __break(1u);
LABEL_158:
    __break(1u);
LABEL_159:
    __break(1u);
LABEL_160:
    __break(1u);
LABEL_161:
    __break(1u);
LABEL_162:
    __break(1u);
LABEL_163:
    __break(1u);
LABEL_164:
    __break(1u);
LABEL_165:
    __break(1u);
LABEL_166:
    __break(1u);
LABEL_167:
    __break(1u);
LABEL_168:
    __break(1u);
LABEL_169:
    __break(1u);
LABEL_170:
    __break(1u);
LABEL_171:
    __break(1u);
LABEL_172:
    __break(1u);
LABEL_173:
    __break(1u);
LABEL_174:
    __break(1u);
LABEL_175:
    __break(1u);
LABEL_176:
    __break(1u);
LABEL_177:
    __break(1u);
LABEL_178:
    __break(1u);
LABEL_179:
    __break(1u);
  }

  __break(1u);
LABEL_181:
  __break(1u);
LABEL_182:
  __break(1u);
LABEL_183:
  __break(1u);
  return result;
}

unint64_t sub_2751F4810()
{
  result = qword_2809AD888;
  if (!qword_2809AD888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809AD888);
  }

  return result;
}

unint64_t sub_2751F4864()
{
  result = qword_2809AD8A0;
  if (!qword_2809AD8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809AD8A0);
  }

  return result;
}

uint64_t sub_2751F48B8(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809AD890, &qword_27520E128);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2751F4930()
{
  result = qword_2809AD8B8;
  if (!qword_2809AD8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809AD8B8);
  }

  return result;
}

uint64_t sub_2751F4990(uint64_t a1)
{
  result = sub_2751F4A68(&qword_2809AD8C0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2751F4A00(uint64_t a1)
{
  *(a1 + 8) = sub_2751F4A68(&qword_2809AD8C8);
  result = sub_2751F4A68(&qword_2809AD8D0);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2751F4A68(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for VPTree();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2751F4AFC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 48);
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

uint64_t sub_2751F4B58(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 48) = a2;
    }
  }

  return result;
}

unint64_t sub_2751F4BEC()
{
  result = qword_2809AD8D8;
  if (!qword_2809AD8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809AD8D8);
  }

  return result;
}

unint64_t sub_2751F4C44()
{
  result = qword_2809AD8E0;
  if (!qword_2809AD8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809AD8E0);
  }

  return result;
}

unint64_t sub_2751F4C9C()
{
  result = qword_2809AD8E8;
  if (!qword_2809AD8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809AD8E8);
  }

  return result;
}

unint64_t sub_2751F4CF4()
{
  result = qword_2809AD8F0;
  if (!qword_2809AD8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809AD8F0);
  }

  return result;
}

unint64_t sub_2751F4D4C()
{
  result = qword_2809AD8F8;
  if (!qword_2809AD8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809AD8F8);
  }

  return result;
}

unint64_t sub_2751F4DA4()
{
  result = qword_2809AD900[0];
  if (!qword_2809AD900[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2809AD900);
  }

  return result;
}

__n128 __swift_memcpy18_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t sub_2751F4E0C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 18))
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

uint64_t sub_2751F4E54(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 18) = 1;
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

    *(result + 18) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t cosineSimilarityTensor(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_27520BA38();
  v70 = *(v6 - 8);
  v71 = v6;
  v7 = *(v70 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v63 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v58 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v65 = &v58 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v64 = &v58 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v66 = &v58 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v69 = &v58 - v20;
  MEMORY[0x28223BE20](v19);
  v68 = &v58 - v21;
  v22 = sub_27520B8B8();
  v67 = *(v22 - 8);
  v23 = *(v67 + 64);
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v58 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v24);
  v29 = &v58 - v28;
  v30 = MEMORY[0x28223BE20](v27);
  v32 = &v58 - v31;
  MEMORY[0x28223BE20](v30);
  v34 = &v58 - v33;
  if (sub_27520B968() < 2 || (v62 = a2, sub_27520B968() < 2))
  {
    v38 = 1;
    v45 = v70;
    v44 = v71;
    v43 = a3;
    return (*(v45 + 56))(v43, v38, 1, v44);
  }

  v61 = a3;
  sub_27520B998();
  sub_2751E9170();
  result = sub_27520BE68();
  v36 = v72;
  if (v72 < 1)
  {
    __break(1u);
  }

  else
  {
    v72 = 1;
    v73 = v36;
    sub_27520BE98();
    v67 = *(v67 + 8);
    (v67)(v34, v22);
    sub_27520B998();
    result = sub_27520BE68();
    v37 = v72;
    if (v72 >= 1)
    {
      v59 = a1;
      v60 = v12;
      v38 = 1;
      v72 = 1;
      v73 = v37;
      sub_27520BE98();
      v39 = v67;
      (v67)(v29, v22);
      v40 = sub_27520B8A8();
      v41 = sub_27520B8A8();
      v42 = sub_2751D72DC(v40, v41);

      v39(v26, v22);
      v39(v32, v22);
      v43 = v61;
      v45 = v70;
      v44 = v71;
      if (v42)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809AD1A8, &unk_27520DD60);
        v46 = swift_allocObject();
        v58 = xmmword_27520D440;
        *(v46 + 16) = xmmword_27520D440;
        sub_27520B998();
        v47 = sub_27520B8D8();
        v48 = v67;
        (v67)(v34, v22);
        *(v46 + 32) = v47;
        *(v46 + 40) = -1;
        sub_27520B8C8();
        sub_27520B9F8();
        v48(v34, v22);
        v49 = swift_allocObject();
        *(v49 + 16) = v58;
        sub_27520B998();
        v50 = sub_27520B8D8();
        v48(v34, v22);
        *(v49 + 32) = v50;
        *(v49 + 40) = -1;
        sub_27520B8C8();
        sub_27520B9F8();
        v48(v34, v22);
        v51 = v65;
        sub_27520B9E8();
        v52 = v64;
        sub_27520B958();
        v53 = *(v45 + 8);
        v53(v51, v44);
        sub_27520B8F8();
        v53(v52, v44);
        v54 = v60;
        sub_27520B9E8();
        sub_27520B958();
        v53(v54, v44);
        sub_27520B8F8();
        v53(v51, v44);
        sub_27520BA08();
        sub_27520B948();
        v53(v54, v44);
        v55 = v63;
        sub_27520BA08();
        v56 = v69;
        sub_27520B948();
        v53(v55, v44);
        v57 = v61;
        sub_27520BA68();
        v53(v54, v44);
        v53(v51, v44);
        v53(v52, v44);
        v53(v66, v44);
        v53(v56, v44);
        v53(v68, v44);
        v43 = v57;
        v38 = 0;
      }

      return (*(v45 + 56))(v43, v38, 1, v44);
    }
  }

  __break(1u);
  return result;
}

uint64_t l2Norm(_:alongAxes:)()
{
  v0 = sub_27520BA38();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - v6;
  sub_27520B9E8();
  sub_27520B958();
  v8 = *(v1 + 8);
  v8(v5, v0);
  sub_27520B8F8();
  return (v8)(v7, v0);
}

uint64_t sub_2751F56E8(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
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
  v26 = sub_27520BE58();
  if (!v26)
  {
    return sub_27520BCE8();
  }

  v48 = v26;
  v52 = sub_27520BFD8();
  v39 = sub_27520BFE8();
  sub_27520BFB8();
  result = sub_27520BE48();
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
      v29 = sub_27520BEA8();
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
      sub_27520BFC8();
      result = sub_27520BE78();
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

uint64_t DirectedWeightedGraph.__allocating_init(name:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  DirectedWeightedGraph.init(name:)(a1, a2);
  return v4;
}

uint64_t (*DirectedEdge.to.modify(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 52);
  return result;
}

uint64_t static DirectedEdge.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a6 + 8);
  if (sub_27520BBC8())
  {
    v7 = *(type metadata accessor for DirectedEdge() + 52);
    v8 = sub_27520BBC8();
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t sub_2751F5D18(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1836020326 && a2 == 0xE400000000000000;
  if (v3 || (sub_27520C218() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 28532 && a2 == 0xE200000000000000)
  {

    return 1;
  }

  else
  {
    v6 = sub_27520C218();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_2751F5E14(char a1)
{
  if (a1)
  {
    return 28532;
  }

  else
  {
    return 1836020326;
  }
}

uint64_t sub_2751F5ECC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_2751F5F20(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t DirectedEdge.encode(to:)(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v14[0] = *(a2 + 32);
  v14[1] = v4;
  v15 = v4;
  v16 = v14[0];
  type metadata accessor for DirectedEdge.CodingKeys();
  swift_getWitnessTable();
  v5 = sub_27520C1C8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_27520C2B8();
  LOBYTE(v15) = 0;
  v11 = v17;
  sub_27520C1A8();
  if (!v11)
  {
    v12 = *(a2 + 52);
    LOBYTE(v15) = 1;
    sub_27520C1A8();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t DirectedEdge.hash(into:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(a2 + 40);
  sub_27520BBB8();
  v6 = v2 + *(a2 + 52);
  return sub_27520BBB8();
}

uint64_t DirectedEdge.hashValue.getter(uint64_t a1)
{
  sub_27520C278();
  v3 = *(a1 + 16);
  v4 = *(a1 + 40);
  sub_27520BBB8();
  v5 = v1 + *(a1 + 52);
  sub_27520BBB8();
  return sub_27520C298();
}

uint64_t DirectedEdge.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v41 = a6;
  v44 = *(a2 - 8);
  v11 = *(v44 + 64);
  v12 = MEMORY[0x28223BE20](a1);
  v42 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v46 = &v39 - v14;
  v49 = v15;
  v50 = v16;
  v51 = v17;
  v52 = v18;
  type metadata accessor for DirectedEdge.CodingKeys();
  swift_getWitnessTable();
  v48 = sub_27520C128();
  v43 = *(v48 - 8);
  v19 = *(v43 + 64);
  MEMORY[0x28223BE20](v48);
  v21 = &v39 - v20;
  v45 = a2;
  v49 = a2;
  v50 = a3;
  v47 = a3;
  v51 = a4;
  v52 = a5;
  v22 = type metadata accessor for DirectedEdge();
  v40 = *(v22 - 8);
  v23 = *(v40 + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v39 - v24;
  v26 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v27 = v53;
  sub_27520C2A8();
  if (v27)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v28 = v25;
  v53 = v22;
  v29 = v43;
  v30 = v44;
  LOBYTE(v49) = 0;
  v31 = v45;
  sub_27520C108();
  v32 = *(v30 + 32);
  v39 = v28;
  v33 = v46;
  v46 = v32;
  (v32)(v28, v33, v31);
  LOBYTE(v49) = 1;
  v34 = v42;
  sub_27520C108();
  (*(v29 + 8))(v21, v48);
  v35 = v53;
  v36 = v39;
  (v46)(&v39[*(v53 + 52)], v34, v31);
  v37 = v40;
  (*(v40 + 16))(v41, v36, v35);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return (*(v37 + 8))(v36, v35);
}

uint64_t sub_2751F65F4(uint64_t a1, uint64_t a2)
{
  sub_27520C278();
  DirectedEdge.hash(into:)(v4, a2);
  return sub_27520C298();
}

uint64_t DirectedEdge.description.getter(uint64_t a1)
{
  sub_27520BF68();
  MEMORY[0x277C6D100](0x203A6D6F726628, 0xE700000000000000);
  v2 = *(a1 + 16);
  sub_27520C208();
  MEMORY[0x277C6D100](0x203A6F74202CLL, 0xE600000000000000);
  v3 = *(a1 + 52);
  sub_27520C208();
  MEMORY[0x277C6D100](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_2751F6748()
{
  v0 = sub_2751FC980();

  return v0;
}

uint64_t sub_2751F6780(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 24);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t sub_2751F67D4()
{
  sub_2751FC658();
}

uint64_t sub_2751F67FC(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  *(v1 + 32) = a1;
}

uint64_t DirectedIndexGraph.__allocating_init(name:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  DirectedIndexGraph.init(name:)(a1, a2);
  return v4;
}

void *DirectedIndexGraph.init(name:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 80);
  v7 = sub_27520BD88();
  swift_getTupleTypeMetadata2();
  v8 = sub_27520BCE8();
  v9 = sub_2751FC68C(v8, v6, v7, *(v5 + 104));

  v2[3] = a2;
  v2[4] = v9;
  v2[2] = a1;
  return v2;
}

uint64_t sub_2751F6958()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = v0[4];
  v3 = *(v1 + 80);
  v4 = sub_27520BD88();
  v5 = *(v1 + 104);

  LOBYTE(v5) = MEMORY[0x277C6D070](v6, v3, v4, v5);

  return v5 & 1;
}

uint64_t sub_2751F6A08()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = v0[4];
  v3 = *(v1 + 80);
  sub_27520BD88();
  v4 = *(v1 + 104);
  sub_27520BB48();

  swift_getWitnessTable();
  return sub_27520BD98();
}

uint64_t sub_2751F6AD4(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *(*v1 + 80);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  v65 = v50 - v7;
  v57 = sub_27520BD88();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v59 = sub_27520BF08();
  v9 = *(v59 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v59);
  v63 = v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v62 = v50 - v13;
  v14 = *(v2 + 88);
  v15 = *(v3 + 96);
  v69 = v4;
  v70 = v14;
  v56 = v15;
  v71 = v15;
  v55 = type metadata accessor for DirectedEdge();
  v72 = sub_27520BCE8();
  swift_beginAccess();
  v16 = v1[4];
  v17 = *(v16 + 64);
  v50[0] = v16 + 64;
  v18 = 1 << *(v16 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v17;
  v21 = (v18 + 63) >> 6;
  v60 = TupleTypeMetadata2 - 8;
  v61 = TupleTypeMetadata2;
  v50[1] = v5 + 16;
  v64 = (v5 + 32);
  v58 = (v9 + 32);
  v51 = v5;
  v54 = (v5 + 8);
  v52 = v16;

  v23 = 0;
  v66 = v4;
  *&v24 = v4;
  *(&v24 + 1) = v14;
  v53 = v24;
  if (v20)
  {
    while (1)
    {
      v25 = v23;
      v26 = v61;
LABEL_12:
      v31 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
      v32 = v31 | (v25 << 6);
      v33 = v52;
      v34 = v51;
      v36 = v65;
      v35 = v66;
      (*(v51 + 16))(v65, *(v52 + 48) + *(v51 + 72) * v32, v66);
      v37 = *(*(v33 + 56) + 8 * v32);
      v38 = *(v26 + 48);
      v39 = *(v34 + 32);
      v30 = v63;
      v39(v63, v36, v35);
      *&v30[v38] = v37;
      v40 = *(v26 - 8);
      (*(v40 + 56))(v30, 0, 1, v26);

      v28 = v25;
      v29 = v62;
LABEL_13:
      (*v58)(v29, v30, v59);
      if ((*(v40 + 48))(v29, 1, v26) == 1)
      {
        break;
      }

      v41 = *&v29[*(v26 + 48)];
      v42 = v65;
      v43 = v66;
      v44 = (*v64)(v65, v29, v66);
      v67 = v28;
      v68 = v41;
      MEMORY[0x28223BE20](v44);
      v45 = v56;
      *&v50[-6] = v53;
      *&v50[-4] = v45;
      v50[-2] = v42;
      v46 = v57;
      WitnessTable = swift_getWitnessTable();
      v49 = sub_2751F56E8(sub_2751FC9B4, &v50[-8], v46, v55, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v48);

      v68 = v49;
      sub_27520BD88();
      swift_getWitnessTable();
      sub_27520BD38();
      result = (*v54)(v42, v43);
      v23 = v67;
      if (!v20)
      {
        goto LABEL_5;
      }
    }

    return v72;
  }

  else
  {
LABEL_5:
    if (v21 <= v23 + 1)
    {
      v27 = v23 + 1;
    }

    else
    {
      v27 = v21;
    }

    v28 = v27 - 1;
    v26 = v61;
    v29 = v62;
    v30 = v63;
    while (1)
    {
      v25 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v25 >= v21)
      {
        v40 = *(v61 - 8);
        (*(v40 + 56))(v63, 1, 1, v61);
        v20 = 0;
        goto LABEL_13;
      }

      v20 = *(v50[0] + 8 * v25);
      ++v23;
      if (v20)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2751F70D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v21 = a4;
  v22 = a5;
  v10 = *(a2 - 8);
  v11 = v10[8];
  v12 = MEMORY[0x28223BE20](a1);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v21 - v15;
  v17 = v10[2];
  v17(&v21 - v15);
  (v17)(v14, a1, a2);
  v18 = v10[4];
  v18(a6, v16, a2);
  v23 = a2;
  v24 = a3;
  v25 = v21;
  v26 = v22;
  v19 = type metadata accessor for DirectedEdge();
  return (v18)(a6 + *(v19 + 52), v14, a2);
}

uint64_t sub_2751F723C()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = v0[4];
  v3 = *(v1 + 80);
  sub_27520BD88();
  v4 = *(v1 + 104);
  sub_27520BB48();
  swift_getWitnessTable();
  v5 = *(v4 + 8);
  return sub_27520BC58() & 1;
}

BOOL sub_2751F7318(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 80);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  v8 = &v12[-v7];
  v9 = sub_2751F723C();
  if ((v9 & 1) == 0)
  {
    (*(v5 + 16))(v8, a1, v4);
    v13 = sub_27520BCE8();
    swift_beginAccess();
    sub_27520BD88();
    v10 = *(v3 + 104);
    sub_27520BB68();
    sub_27520BB98();
    swift_endAccess();
  }

  return (v9 & 1) == 0;
}

uint64_t sub_2751F7490(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *(*v1 + 80);
  v58 = sub_27520BF08();
  v6 = *(v58 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v58);
  v10 = &v51[-v9];
  v11 = *(v5 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v8);
  v15 = &v51[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = MEMORY[0x28223BE20](v13);
  v70 = &v51[-v17];
  MEMORY[0x28223BE20](v16);
  v67 = &v51[-v18];
  v19 = sub_2751F723C();
  if ((v19 & 1) == 0)
  {
    return v19 & 1;
  }

  v52 = v19;
  v56 = v15;
  v57 = v10;
  swift_beginAccess();
  v65 = sub_27520BD88();
  v20 = *(v4 + 104);
  v21 = sub_27520BB68();
  v59 = a1;
  v55 = v21;
  sub_27520BB38();
  swift_endAccess();

  swift_beginAccess();
  v22 = v1[4];
  v23 = v22 + 64;
  v24 = 1 << *(v22 + 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & *(v22 + 64);
  v27 = (v24 + 63) >> 6;
  v68 = v11 + 16;
  v61 = v11 + 32;
  v60 = (v11 + 8);
  v63 = v11;
  v54 = (v11 + 56);
  v53 = (v6 + 8);
  v66 = v22;

  v29 = 0;
  v69 = v5;
  v30 = v20;
  v62 = v1;
  if (v26)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v32 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    if (v32 >= v27)
    {

      LOBYTE(v19) = v52;
      return v19 & 1;
    }

    v26 = *(v23 + 8 * v32);
    ++v29;
    if (v26)
    {
      v31 = v30;
      v29 = v32;
LABEL_13:
      v33 = __clz(__rbit64(v26));
      v26 &= v26 - 1;
      v34 = v67;
      v35 = v63;
      v36 = *(v66 + 48) + *(v63 + 72) * (v33 | (v29 << 6));
      v37 = v69;
      v64 = *(v63 + 16);
      (v64)(v67, v36, v69);
      (*(v35 + 32))(v70, v34, v37);
      swift_beginAccess();
      v38 = v2[4];

      v30 = v31;
      sub_27520BB88();

      if (v71[0])
      {
        v74 = v71[0];
        swift_getWitnessTable();
        v39 = *(v31 + 8);
        sub_27520BE88();

        if (v73 == 1)
        {
          result = (*v60)(v70, v69);
          goto LABEL_7;
        }

        v40 = v56;
        (v64)(v56, v70, v69);
        v2 = v62;
        v64 = sub_2751ECB80();
        v41 = sub_27520BB78();
        if (*v42)
        {
          v43 = v57;
          sub_27520BD58();
          v41(v71, 0);
          v44 = *v60;
          v45 = v40;
          v46 = v69;
          (*v60)(v45, v69);
          (v64)(&v72, 0);
          v44(v70, v46);
          v47 = 0;
          v48 = v46;
        }

        else
        {
          v41(v71, 0);
          v49 = *v60;
          v50 = v69;
          (*v60)(v40, v69);
          (v64)(&v72, 0);
          v49(v70, v50);
          v47 = 1;
          v43 = v57;
          v48 = v50;
        }

        (*v54)(v43, v47, 1, v48);
        result = (*v53)(v43, v58);
        if (!v26)
        {
          continue;
        }
      }

      else
      {
        result = (*v60)(v70, v37);
LABEL_7:
        v2 = v62;
        if (!v26)
        {
          continue;
        }
      }

LABEL_8:
      v31 = v30;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2751F7B04()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = v0[4];
  v3 = *(v1 + 80);
  sub_27520BD88();
  v4 = *(v1 + 104);

  sub_27520BB88();

  result = v6;
  if (!v6)
  {
    return sub_27520BCE8();
  }

  return result;
}

uint64_t sub_2751F7BCC()
{
  v1 = *v0;
  swift_beginAccess();
  v8 = v0[4];
  v4 = v1[10];
  v5 = v1[11];
  v6 = v1[12];
  v7 = v1[13];
  sub_27520BD88();
  sub_27520BB68();

  swift_getWitnessTable();
  v2 = sub_27520BC48();

  return v2 & 1;
}

uint64_t sub_2751F7D30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a8 + 8);
  if (sub_27520BBC8())
  {
    sub_27520BD88();
    swift_getWitnessTable();
    v9 = sub_27520BC58();
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

uint64_t sub_2751F7DD4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = *(*v2 + 80);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](a1);
  v12 = v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = v35 - v13;
  if ((sub_2751F723C() & 1) == 0 || (sub_2751F723C() & 1) == 0)
  {
    return 0;
  }

  v38 = v12;
  v15 = swift_allocObject();
  v16 = v8;
  v17 = v15;
  v15[2] = v7;
  v18 = v6[11];
  v15[3] = v18;
  v19 = v6[12];
  v15[4] = v19;
  v20 = v6[13];
  v15[5] = v20;
  v21 = *(v16 + 16);
  v39 = v16 + 16;
  v37 = v21;
  v21(v14, a2, v7);
  swift_beginAccess();
  v22 = swift_allocObject();
  v22[2] = v7;
  v22[3] = v18;
  v22[4] = v19;
  v22[5] = v20;
  v22[6] = sub_2751FCA7C;
  v22[7] = v17;
  v41 = v17;
  v23 = *(v3 + 32);
  swift_isUniquelyReferenced_nonNull_native();
  v42 = *(v3 + 32);
  v24 = v42;
  *(v3 + 32) = 0x8000000000000000;
  v36 = sub_2751FC474(a1, v7, v20);
  if (__OFADD__(*(v24 + 16), (v25 & 1) == 0))
  {
    __break(1u);
    goto LABEL_14;
  }

  v26 = v25;
  v40 = sub_27520BD88();
  sub_27520C018();
  v27 = sub_27520BFF8();
  v28 = v42;
  v35[1] = v20;
  if ((v27 & 1) == 0)
  {
    v31 = v36;
    goto LABEL_9;
  }

  v29 = sub_2751FC474(a1, v7, v20);
  if ((v26 & 1) != (v30 & 1))
  {
LABEL_14:
    result = sub_27520C258();
    __break(1u);
    return result;
  }

  v31 = v29;
LABEL_9:
  *(v3 + 32) = v28;
  if ((v26 & 1) == 0)
  {
    v33 = v22[7];
    v42 = (v22[6])();
    v37(v38, a1, v7);
    sub_27520C008();
  }

  v34 = *(v28 + 56) + 8 * v31;
  sub_27520BD48();
  swift_endAccess();

  return 1;
}

uint64_t sub_2751F8114(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 80);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  v8 = &v22 - v7;
  v9 = sub_27520BF08();
  v24 = *(v9 - 8);
  v10 = *(v24 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v22 - v11;
  if ((sub_2751F723C() & 1) == 0)
  {
    return 0;
  }

  if ((sub_2751F723C() & 1) == 0)
  {
    return 0;
  }

  v22 = v5;
  swift_beginAccess();
  v13 = v1[4];
  sub_27520BD88();
  v14 = *(v3 + 104);

  v23 = v14;
  sub_27520BB88();

  if (!v26)
  {
    return 0;
  }

  v25[0] = v26;
  swift_getWitnessTable();
  v15 = *(v23 + 8);
  sub_27520BE88();

  if (v27)
  {
    return 0;
  }

  v17 = v22;
  (*(v22 + 16))(v8, a1, v4);
  v18 = sub_2751ECB80();
  sub_27520BB68();
  v19 = sub_27520BB78();
  if (*v20)
  {
    sub_27520BD58();
    v19(v25, 0);
    (*(v17 + 8))(v8, v4);
    (v18)(&v26, 0);
    v21 = 0;
  }

  else
  {
    v19(v25, 0);
    (*(v17 + 8))(v8, v4);
    (v18)(&v26, 0);
    v21 = 1;
  }

  (*(v17 + 56))(v12, v21, 1, v4);
  (*(v24 + 8))(v12, v9);
  return 1;
}

uint64_t sub_2751F84C0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_27520C218() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x636E6563616A6461 && a2 == 0xE900000000000079)
  {

    return 1;
  }

  else
  {
    v6 = sub_27520C218();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_2751F8594(char a1)
{
  sub_27520C278();
  MEMORY[0x277C6D7A0](a1 & 1);
  return sub_27520C298();
}

uint64_t sub_2751F85DC(char a1)
{
  if (a1)
  {
    return 0x636E6563616A6461;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_2751F8630(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  return sub_2751F8594(*v1);
}

uint64_t sub_2751F8674(uint64_t a1, void *a2, uint64_t a3, void (*a4)(_BYTE *, void, void, void, void, void))
{
  sub_27520C278();
  a4(v8, *v4, a2[2], a2[3], a2[4], a2[5]);
  return sub_27520C298();
}

uint64_t sub_2751F871C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t (*a4)(uint64_t, uint64_t, void, void, void, void)@<X4>, _BYTE *a5@<X8>)
{
  result = a4(a1, a2, a3[2], a3[3], a3[4], a3[5]);
  *a5 = result;
  return result;
}

uint64_t sub_2751F8758@<X0>(void *a1@<X1>, uint64_t (*a2)(void, void, void, void)@<X3>, _BYTE *a3@<X8>)
{
  result = a2(a1[2], a1[3], a1[4], a1[5]);
  *a3 = result;
  return result;
}

uint64_t sub_2751F8794(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_2751F87E8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t DirectedIndexGraph.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return v0;
}

uint64_t DirectedIndexGraph.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

uint64_t sub_2751F88A4(void *a1)
{
  v2 = v1;
  v4 = *(*v2 + 96);
  v5 = *(*v2 + 104);
  v19 = *(*v2 + 80);
  v27 = v19;
  v20 = v5;
  v21 = v4;
  v28 = v4;
  v29 = v5;
  type metadata accessor for DirectedIndexGraph.CodingKeys();
  swift_getWitnessTable();
  v6 = sub_27520C1C8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v19 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_27520C2B8();
  swift_beginAccess();
  v12 = v2[2];
  v13 = v2[3];
  LOBYTE(v27) = 0;

  v14 = v22;
  sub_27520C168();
  if (v14)
  {
    (*(v7 + 8))(v10, v6);
  }

  else
  {
    v16 = v7;

    swift_beginAccess();
    v30 = v2[4];
    v26 = 1;
    sub_27520BD88();
    sub_27520BB68();
    v17 = v21;
    v25 = v21;
    WitnessTable = swift_getWitnessTable();
    v23 = v17;
    v24 = WitnessTable;
    swift_getWitnessTable();
    sub_27520C1A8();
    return (*(v16 + 8))(v10, v6);
  }
}

uint64_t DirectedIndexGraph.__allocating_init(from:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  DirectedIndexGraph.init(from:)(a1);
  return v2;
}

void *DirectedIndexGraph.init(from:)(uint64_t *a1)
{
  v4 = *(*v1 + 88);
  v5 = *(*v1 + 96);
  v6 = *(*v1 + 104);
  v42 = *(*v1 + 80);
  v3 = v42;
  v43 = v4;
  v36 = v4;
  v33 = v5;
  v44 = v5;
  v45 = v6;
  type metadata accessor for DirectedIndexGraph.CodingKeys();
  swift_getWitnessTable();
  v7 = sub_27520C128();
  v31 = *(v7 - 8);
  v32 = v7;
  v8 = *(v31 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v30 - v9;
  v11 = sub_27520BD88();
  swift_getTupleTypeMetadata2();
  v12 = sub_27520BCE8();
  v35 = v6;
  v13 = sub_2751FC68C(v12, v3, v11, v6);

  v37 = a1;
  v38 = v1;
  v1[4] = v13;
  v14 = v1 + 4;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v16 = v10;
  v17 = v34;
  sub_27520C2A8();
  if (v17)
  {
    v29 = v38;
    v21 = v38[4];

    v42 = v3;
    v43 = v36;
    v44 = v33;
    v45 = v35;
    type metadata accessor for DirectedIndexGraph();
    swift_deallocPartialClassInstance();
    __swift_destroy_boxed_opaque_existential_1(v37);
  }

  else
  {
    v19 = v31;
    v18 = v32;
    LOBYTE(v42) = 0;
    v20 = sub_27520C0C8();
    v23 = v38;
    v38[2] = v20;
    v23[3] = v24;
    sub_27520BB68();
    LOBYTE(v42) = 1;
    v25 = v36;
    v41 = v36;
    WitnessTable = swift_getWitnessTable();
    v39 = v25;
    v40 = WitnessTable;
    swift_getWitnessTable();
    sub_27520C108();
    (*(v19 + 8))(v16, v18);
    v27 = v46;
    swift_beginAccess();
    v28 = *v14;
    *v14 = v27;

    __swift_destroy_boxed_opaque_existential_1(v37);
    return v38;
  }

  return v29;
}

uint64_t sub_2751F8F84@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 272))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_2751F900C()
{
  sub_2751FCAFC();
}

uint64_t sub_2751F9034(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 40);
  *(v1 + 40) = a1;
}

void *DirectedWeightedGraph.init(name:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v12 = *(*v2 + 280);
  v13 = *(*v2 + 296);
  v14 = *(*v2 + 312);
  v6 = type metadata accessor for DirectedEdge();
  v7 = *(v5 + 288);
  swift_getTupleTypeMetadata2();
  v8 = sub_27520BCE8();
  WitnessTable = swift_getWitnessTable();
  v10 = sub_2751FC68C(v8, v6, v7, WitnessTable);

  v2[5] = v10;
  DirectedIndexGraph.init(name:)(a1, a2);
  return v2;
}

BOOL sub_2751F91EC()
{
  v0 = sub_27520C088();

  return v0 != 0;
}

uint64_t sub_2751F9234(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837F8];

  return MEMORY[0x2821FE040](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_2751F92A8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A0](a1, a2, WitnessTable, v5);
}

uint64_t sub_2751F9314(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1B0](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_2751F9384(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A8](a1, a2, a3, WitnessTable, v7);
}

BOOL sub_2751F93F4@<W0>(uint64_t *a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  v10 = a2[6];
  v11 = a2[7];
  v13 = a2[8];
  result = sub_2751F91EC();
  *a3 = result;
  return result;
}

BOOL sub_2751F9484@<W0>(void *a1@<X2>, _BYTE *a2@<X8>)
{
  v4 = a1[2];
  v3 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  v7 = a1[6];
  v8 = a1[7];
  v10 = a1[8];
  result = sub_2751F91EC();
  *a2 = result;
  return result;
}

uint64_t sub_2751F94D0@<X0>(void *a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  v7 = a1[6];
  v8 = a1[7];
  v9 = a1[8];
  result = sub_2751FD8F0();
  *a2 = result & 1;
  return result;
}

uint64_t sub_2751F9510(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_2751F9564(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_2751F95B8(uint64_t *a1)
{
  v2 = swift_allocObject();
  sub_2751F9608(a1);
  return v2;
}

void *sub_2751F9608(uint64_t *a1)
{
  v2 = v1;
  v47 = a1;
  v3 = *(*v1 + 288);
  v4 = *(*v1 + 296);
  v5 = *(*v1 + 304);
  v6 = *(*v1 + 312);
  v7 = *(*v1 + 320);
  v8 = *(*v1 + 328);
  v40 = *(*v1 + 280);
  v41 = v3;
  v42 = v4;
  v43 = v5;
  v44 = v6;
  v45 = v7;
  v36 = v7;
  v29 = v8;
  v46 = v8;
  type metadata accessor for DirectedWeightedGraph.CodingKeys();
  WitnessTable = swift_getWitnessTable();
  v28 = sub_27520C128();
  v27 = *(v28 - 8);
  v9 = *(v27 + 64);
  MEMORY[0x28223BE20](v28);
  v11 = &v27 - v10;
  v32 = v4;
  v33 = v40;
  v41 = v4;
  v30 = v6;
  v31 = v5;
  v42 = v5;
  v43 = v6;
  v12 = type metadata accessor for DirectedEdge();
  swift_getTupleTypeMetadata2();
  v13 = sub_27520BCE8();
  v14 = swift_getWitnessTable();
  v37 = v3;
  v15 = sub_2751FC68C(v13, v12, v3, v14);

  v1[5] = v15;
  v16 = v47[4];
  __swift_project_boxed_opaque_existential_1(v47, v47[3]);
  v17 = v35;
  sub_27520C2A8();
  if (v17)
  {
    v19 = v36;
    v18 = v37;
    __swift_destroy_boxed_opaque_existential_1(v47);
    v22 = v2[5];

    v40 = v33;
    v41 = v18;
    v42 = v32;
    v43 = v31;
    v44 = v30;
    v45 = v19;
    v46 = v29;
    type metadata accessor for DirectedWeightedGraph();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v20 = v27;
    sub_27520BB68();
    v38 = swift_getWitnessTable();
    v39 = v36;
    swift_getWitnessTable();
    v21 = v28;
    sub_27520C108();
    v24 = v40;
    swift_beginAccess();
    v25 = v2[5];
    v2[5] = v24;

    v26 = v47;
    sub_2751FD8F8(v47, &v40);
    DirectedIndexGraph.init(from:)(&v40);
    (*(v20 + 8))(v11, v21);
    __swift_destroy_boxed_opaque_existential_1(v26);
  }

  return v2;
}

uint64_t sub_2751F9A04(void *a1)
{
  v3 = *v1;
  v4 = *v1;
  v22 = *(*v1 + 280);
  v23 = v3[36];
  v5 = v3[37];
  v6 = v3[38];
  v24 = v3[41];
  v29 = v22;
  v30 = v23;
  v31 = v5;
  v32 = v6;
  v21 = *(v4 + 39);
  v33 = v21;
  v34 = v24;
  type metadata accessor for DirectedWeightedGraph.CodingKeys();
  swift_getWitnessTable();
  v7 = sub_27520C1C8();
  v25 = *(v7 - 8);
  v8 = *(v25 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v19 - v9;
  v12 = a1[3];
  v11 = a1[4];
  v20 = a1;
  v13 = a1;
  v15 = v14;
  __swift_project_boxed_opaque_existential_1(v13, v12);
  sub_27520C2B8();
  swift_beginAccess();
  v35 = v1[5];
  v29 = v22;
  v30 = v5;
  v31 = v6;
  v32 = v21;
  type metadata accessor for DirectedEdge();
  swift_getWitnessTable();
  sub_27520BB68();
  WitnessTable = swift_getWitnessTable();
  v28 = v24;
  swift_getWitnessTable();
  v16 = v26;
  sub_27520C1A8();
  if (v16)
  {
    return (*(v25 + 8))(v10, v15);
  }

  v18 = v25;
  sub_2751F88A4(v20);
  return (*(v18 + 8))(v10, v15);
}

uint64_t sub_2751F9D20()
{
  v1 = *v0;
  v2 = *v0;
  swift_beginAccess();
  v3 = v0[4];
  v4 = *(v1 + 280);
  v5 = sub_27520BD88();
  v6 = *(v1 + 312);

  LOBYTE(v5) = MEMORY[0x277C6D070](v7, v4, v5, v6);

  if (v5)
  {
    swift_beginAccess();
    v8 = v0[5];

    v14 = *(v2 + 296);
    v9 = type metadata accessor for DirectedEdge();
    v10 = *(v2 + 288);
    WitnessTable = swift_getWitnessTable();
    v12 = MEMORY[0x277C6D070](v8, v9, v10, WitnessTable);
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

uint64_t sub_2751F9E98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v70 = a3;
  v7 = *v3;
  v73 = *(*v3 + 288);
  v8 = sub_27520BF08();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v59 - v10;
  v13 = *(v7 + 296);
  v14 = *(v7 + 312);
  v76 = *(v7 + 280);
  v12 = v76;
  v74 = v13;
  v77 = v13;
  v78 = v14;
  v68 = type metadata accessor for DirectedEdge();
  v15 = (*(*(v68 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = MEMORY[0x28223BE20](v68);
  v69 = v59 - v17;
  v18 = *(v12 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v16);
  v67 = v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v71 = v59 - v23;
  MEMORY[0x28223BE20](v22);
  v72 = v59 - v24;
  v25 = a1;
  if ((sub_2751F723C() & 1) == 0 || (sub_2751F723C() & 1) == 0)
  {
    return 0;
  }

  v63 = v11;
  v26 = swift_allocObject();
  v27 = v18;
  v28 = v26;
  *&v29 = v12;
  v30 = v73;
  *(&v29 + 1) = v73;
  v31 = v74;
  *(v26 + 16) = v29;
  *(v26 + 32) = v31;
  *(v26 + 48) = v14;
  v32 = *(v7 + 320);
  *(v26 + 56) = v32;
  v33 = *(v7 + 328);
  *(v26 + 64) = v33;
  v60 = v27;
  v34 = *(v27 + 16);
  v62 = a2;
  v59[1] = v27 + 16;
  v66 = v34;
  v34(v72, a2, v12);
  swift_beginAccess();
  v35 = swift_allocObject();
  *(v35 + 16) = v12;
  *(v35 + 24) = v30;
  *(v35 + 32) = v74;
  *(v35 + 48) = v14;
  *(v35 + 56) = v32;
  *(v35 + 64) = v33;
  *(v35 + 72) = sub_2751FD968;
  v61 = v28;
  *(v35 + 80) = v28;
  v36 = v4[4];
  swift_isUniquelyReferenced_nonNull_native();
  v75 = v4[4];
  v37 = v75;
  v4[4] = 0x8000000000000000;
  v38 = sub_2751FC474(v25, v12, v14);
  if (__OFADD__(*(v37 + 16), (v39 & 1) == 0))
  {
    __break(1u);
    goto LABEL_14;
  }

  v40 = v38;
  v41 = v39;
  v64 = sub_27520BD88();
  sub_27520C018();
  v42 = sub_27520BFF8();
  v43 = v75;
  v65 = v25;
  if (v42)
  {
    v44 = sub_2751FC474(v25, v12, v14);
    v46 = v60;
    if ((v41 & 1) == (v45 & 1))
    {
      v40 = v44;
      v4[4] = v43;
      if (v41)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

LABEL_14:
    result = sub_27520C258();
    __break(1u);
    return result;
  }

  v46 = v60;
  v4[4] = v75;
  if ((v41 & 1) == 0)
  {
LABEL_10:
    v48 = *(v35 + 80);
    v75 = (*(v35 + 72))();
    v66(v71, v65, v12);
    sub_27520C008();
  }

LABEL_11:
  v49 = *(v43 + 56) + 8 * v40;
  sub_27520BD48();
  swift_endAccess();
  v50 = v71;
  v51 = v66;
  v66(v71, v65, v12);
  v52 = v67;
  v51(v67, v62, v12);
  v53 = *(v46 + 32);
  v54 = v69;
  v53(v69, v50, v12);
  v76 = v12;
  v77 = v74;
  v78 = v14;
  v55 = type metadata accessor for DirectedEdge();
  v53(&v54[*(v55 + 52)], v52, v12);
  v56 = v73;
  v57 = *(v73 - 8);
  v58 = v63;
  (*(v57 + 16))(v63, v70, v73);
  (*(v57 + 56))(v58, 0, 1, v56);
  swift_beginAccess();
  swift_getWitnessTable();
  sub_27520BB68();
  sub_27520BB98();
  swift_endAccess();

  return 1;
}

uint64_t sub_2751FA484(uint64_t *a1)
{
  v3 = *v1;
  v4 = *(*v1 + 280);
  v5 = *(*v1 + 288);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v7 = *(*(TupleTypeMetadata2 - 8) + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v67 = &v58 - v8;
  v66 = sub_27520BF08();
  v9 = *(v66 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v66);
  v86 = &v58 - v11;
  v12 = v3[37];
  v13 = v3[38];
  v14 = v3[39];
  v89 = v4;
  v90 = v12;
  v80 = v13;
  v81 = v12;
  v91 = v13;
  v92 = v14;
  v78 = type metadata accessor for DirectedEdge();
  v71 = *(v78 - 8);
  v15 = *(v71 + 64);
  v16 = MEMORY[0x28223BE20](v78);
  v77 = &v58 - v17;
  v18 = *(v5 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v16);
  v65 = &v58 - v21;
  v68 = *(v4 - 8);
  v22 = *(v68 + 64);
  v23 = MEMORY[0x28223BE20](v20);
  v76 = &v58 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v75 = &v58 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v85 = &v58 - v28;
  v59 = v29;
  MEMORY[0x28223BE20](v27);
  v87 = &v58 - v30;
  swift_beginAccess();
  v83 = v1;
  v31 = v1[4];
  sub_27520BD88();

  v82 = a1;
  v79 = v14;
  sub_27520BB88();

  v32 = v89;
  if (!v89)
  {
    return sub_27520BCE8();
  }

  v33 = sub_27520BCE8();
  v88 = v33;
  if (sub_27520BD28())
  {
    v64 = TupleTypeMetadata2;
    v74 = v5;
    v34 = 0;
    v35 = v68;
    v36 = (v68 + 16);
    v72 = (v68 + 32);
    v71 += 8;
    v70 = (v18 + 48);
    v63 = (v18 + 32);
    v62 = (v18 + 16);
    v61 = (v18 + 8);
    v69 = (v68 + 8);
    v60 = (v9 + 8);
    v37 = v85;
    v84 = (v68 + 16);
    v73 = v32;
    while (1)
    {
      v40 = sub_27520BD08();
      sub_27520BCC8();
      if (v40)
      {
        v41 = *(v35 + 16);
        v41(v87, (v32 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v34), v4);
        v42 = (v34 + 1);
        if (__OFADD__(v34, 1))
        {
          goto LABEL_13;
        }
      }

      else
      {
        result = sub_27520BF88();
        if (v59 != 8)
        {
          __break(1u);
          return result;
        }

        v89 = result;
        v41 = *v36;
        (*v36)(v87, &v89, v4);
        swift_unknownObjectRelease();
        v42 = (v34 + 1);
        if (__OFADD__(v34, 1))
        {
LABEL_13:
          __break(1u);
LABEL_14:

          return v88;
        }
      }

      v85 = v42;
      v43 = *v72;
      (*v72)(v37, v87, v4);
      v44 = v75;
      v41(v75, v82, v4);
      v45 = v76;
      v41(v76, v37, v4);
      v46 = v77;
      v43(v77, v44, v4);
      v89 = v4;
      v90 = v81;
      v91 = v80;
      v92 = v79;
      v47 = type metadata accessor for DirectedEdge();
      v43(&v46[*(v47 + 52)], v45, v4);
      v48 = v83;
      swift_beginAccess();
      v49 = v48[5];

      v50 = v78;
      swift_getWitnessTable();
      v51 = v86;
      v52 = v74;
      sub_27520BB88();

      (*v71)(v46, v50);
      if ((*v70)(v51, 1, v52) == 1)
      {
        (*v69)(v37, v4);
        (*v60)(v86, v66);
      }

      else
      {
        v53 = v65;
        (*v63)(v65, v86, v52);
        v54 = *(v64 + 48);
        v55 = v67;
        v41(v67, v37, v4);
        (*v62)(&v55[v54], v53, v52);
        sub_27520BD88();
        sub_27520BD48();
        v56 = v53;
        v35 = v68;
        (*v61)(v56, v52);
        (*v69)(v37, v4);
      }

      v32 = v73;
      v38 = v85;
      v39 = sub_27520BD28();
      ++v34;
      v36 = v84;
      if (v38 == v39)
      {
        goto LABEL_14;
      }
    }
  }

  return v33;
}

void *DirectedWeightedGraph.deinit()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  return v0;
}

uint64_t DirectedWeightedGraph.__deallocating_deinit()
{
  DirectedWeightedGraph.deinit();

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

uint64_t sub_2751FAD4C()
{
  sub_2751FCAC8();
}

uint64_t sub_2751FAD74(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 48);
  *(v1 + 48) = a1;
}

uint64_t DirectedGraph.__allocating_init(name:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  DirectedGraph.init(name:)(a1, a2);
  return v4;
}

void *DirectedGraph.init(name:)(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 408);
  v6 = *(*v2 + 392);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getTupleTypeMetadata2();
  v8 = sub_27520BCE8();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v10 = sub_2751FC68C(v8, AssociatedTypeWitness, v6, AssociatedConformanceWitness);

  v2[6] = v10;

  return DirectedWeightedGraph.init(name:)(a1, a2);
}

BOOL sub_2751FAF14()
{
  v0 = sub_27520C088();

  return v0 != 0;
}

uint64_t sub_2751FAF5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837F8];

  return MEMORY[0x2821FE040](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_2751FAFD0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A0](a1, a2, WitnessTable, v5);
}

uint64_t sub_2751FB03C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1B0](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_2751FB0AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A8](a1, a2, a3, WitnessTable, v7);
}

BOOL sub_2751FB11C@<W0>(uint64_t *a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  v10 = a2[6];
  result = sub_2751FAF14();
  *a3 = result;
  return result;
}

void sub_2751FB160(uint64_t a1@<X8>)
{
  strcpy(a1, "vertexValues");
  *(a1 + 13) = 0;
  *(a1 + 14) = -5120;
}

BOOL sub_2751FB1A4@<W0>(void *a1@<X2>, _BYTE *a2@<X8>)
{
  v4 = a1[2];
  v3 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  v7 = a1[6];
  result = sub_2751FAF14();
  *a2 = result;
  return result;
}

uint64_t sub_2751FB1E0@<X0>(void *a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  v7 = a1[6];
  result = sub_2751FD8F0();
  *a2 = result & 1;
  return result;
}

uint64_t sub_2751FB21C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_2751FB270(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_2751FB2C4(uint64_t *a1)
{
  v2 = swift_allocObject();
  sub_2751FB314(a1);
  return v2;
}

void *sub_2751FB314(uint64_t *a1)
{
  v2 = v1;
  v5 = *(*v1 + 400);
  v6 = *(*v1 + 408);
  v7 = *(*v1 + 416);
  v8 = *(*v1 + 424);
  v42 = *(*v1 + 392);
  v4 = v42;
  v43 = v5;
  v35 = v7;
  v36 = v5;
  v44 = v6;
  v45 = v7;
  v34 = v8;
  v46 = v8;
  type metadata accessor for DirectedGraph.CodingKeys();
  WitnessTable = swift_getWitnessTable();
  v9 = sub_27520C128();
  v32 = *(v9 - 8);
  v33 = v9;
  v10 = *(v32 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v30 - v11;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getTupleTypeMetadata2();
  v14 = sub_27520BCE8();
  v39 = v6;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v15 = sub_2751FC68C(v14, AssociatedTypeWitness, v4, AssociatedConformanceWitness);

  v1[6] = v15;
  v17 = a1[3];
  v16 = a1[4];
  v47 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  v18 = v38;
  sub_27520C2A8();
  if (v18)
  {
    v19 = v39;
    __swift_destroy_boxed_opaque_existential_1(v47);
    v25 = v2[6];

    v42 = v4;
    v43 = v36;
    v44 = v19;
    v45 = v35;
    v46 = v34;
    type metadata accessor for DirectedGraph();
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_27520BB68();
    v20 = v39;
    v21 = swift_getAssociatedConformanceWitness();
    v22 = *(v20 + 8);
    v40 = v21;
    v41 = v22;
    swift_getWitnessTable();
    v23 = v33;
    sub_27520C108();
    v24 = v23;
    v27 = v42;
    swift_beginAccess();
    v28 = v2[6];
    v2[6] = v27;

    v29 = v47;
    sub_2751FD8F8(v47, &v42);
    sub_2751F9608(&v42);
    (*(v32 + 8))(v12, v24);
    __swift_destroy_boxed_opaque_existential_1(v29);
  }

  return v2;
}

uint64_t sub_2751FB6F0(void *a1)
{
  v3 = *(*v1 + 424);
  v4 = *(*v1 + 392);
  v19 = *(*v1 + 408);
  v20 = v4;
  v24 = v4;
  v25 = v19;
  v26 = v3;
  type metadata accessor for DirectedGraph.CodingKeys();
  swift_getWitnessTable();
  v5 = sub_27520C1C8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - v8;
  v10 = a1[3];
  v11 = a1[4];
  v18 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_27520C2B8();
  swift_beginAccess();
  v27 = v1[6];
  v12 = v19;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_27520BB68();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v14 = *(v12 + 16);
  v22 = AssociatedConformanceWitness;
  v23 = v14;
  swift_getWitnessTable();
  v15 = v21;
  sub_27520C1A8();
  if (!v15)
  {
    sub_2751F9A04(v18);
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_2751FB98C()
{
  v1 = *v0;
  v2 = *v0;
  swift_beginAccess();
  v3 = v0[4];
  v4 = *(v1 + 408);
  v5 = *(v1 + 392);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_27520BD88();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();

  LOBYTE(v7) = MEMORY[0x277C6D070](v9, AssociatedTypeWitness, v7, AssociatedConformanceWitness);

  if ((v7 & 1) == 0)
  {
    goto LABEL_4;
  }

  swift_beginAccess();
  v10 = v0[5];
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();

  v11 = type metadata accessor for DirectedEdge();
  v12 = *(v2 + 400);
  WitnessTable = swift_getWitnessTable();
  LOBYTE(v12) = MEMORY[0x277C6D070](v10, v11, v12, WitnessTable);

  if (v12)
  {
    swift_beginAccess();
    v14 = v0[6];

    v16 = MEMORY[0x277C6D070](v15, AssociatedTypeWitness, v5, AssociatedConformanceWitness);
  }

  else
  {
LABEL_4:
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t sub_2751FBBB0(uint64_t a1)
{
  v14 = a1;
  v2 = *(*v1 + 408);
  v3 = *(*v1 + 392);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = *(AssociatedTypeWitness - 8);
  v5 = *(v15 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v7 = &v14 - v6;
  swift_beginAccess();
  v8 = v1[4];
  sub_27520BD88();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v16 = v8;
  v10 = *(v2 + 64);

  v10(v3, v2);
  sub_27520BB48();
  swift_getWitnessTable();
  v11 = *(AssociatedConformanceWitness + 8);
  v12 = sub_27520BC58();
  (*(v15 + 8))(v7, AssociatedTypeWitness);

  return v12 & 1;
}

BOOL sub_2751FBD9C(uint64_t a1)
{
  v14 = *v1;
  v3 = *(v14 + 392);
  v4 = sub_27520BF08();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v19 = &v17[-v6];
  v7 = *(v14 + 408);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v12 = &v17[-v11];
  v13 = *(v7 + 64);
  v13(v3, v7);
  LODWORD(v14) = sub_2751F723C();
  (*(v9 + 8))(v12, AssociatedTypeWitness);
  if ((v14 & 1) == 0)
  {
    v18 = v14;
    v13(v3, v7);
    v20 = sub_27520BCE8();
    swift_beginAccess();
    sub_27520BD88();
    swift_getAssociatedConformanceWitness();
    sub_27520BB68();
    sub_27520BB98();
    swift_endAccess();
    v13(v3, v7);
    v14 = *(v3 - 8);
    v15 = v19;
    (*(v14 + 16))(v19, a1, v3);
    (*(v14 + 56))(v15, 0, 1, v3);
    swift_beginAccess();
    sub_27520BB68();
    sub_27520BB98();
    LOBYTE(v14) = v18;
    swift_endAccess();
  }

  return (v14 & 1) == 0;
}

uint64_t sub_2751FC0B0()
{
  v1 = *(*v0 + 408);
  v2 = *(*v0 + 392);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v7 = &v10 - v6;
  (*(v1 + 64))(v2, v1);
  swift_beginAccess();
  v8 = v0[4];
  sub_27520BD88();
  swift_getAssociatedConformanceWitness();

  sub_27520BB88();

  (*(v4 + 8))(v7, AssociatedTypeWitness);
  result = v10;
  if (!v10)
  {
    return sub_27520BCE8();
  }

  return result;
}

uint64_t sub_2751FC264(uint64_t a1, uint64_t a2)
{
  v17[1] = a2;
  v3 = *(*v2 + 408);
  v4 = *(*v2 + 392);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v17 - v11;
  v13 = *(v3 + 64);
  v13(v4, v3);
  v13(v4, v3);
  v14 = sub_2751F7BCC();
  v15 = *(v6 + 8);
  v15(v10, AssociatedTypeWitness);
  v15(v12, AssociatedTypeWitness);
  return v14 & 1;
}

uint64_t DirectedGraph.deinit()
{
  DirectedWeightedGraph.deinit();
  v1 = *(v0 + 48);

  return v0;
}

uint64_t DirectedGraph.__deallocating_deinit()
{
  DirectedWeightedGraph.deinit();
  v1 = *(v0 + 48);

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

unint64_t sub_2751FC474(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v4 + 40);
  v9 = sub_27520BBA8();

  return sub_2751FC4D0(a1, v9, a2, a3);
}

unint64_t sub_2751FC4D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23[1] = a1;
  v24 = a4;
  v6 = *(*(a3 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v4;
  v10 = -1 << *(v4 + 32);
  v12 = v11 & ~v10;
  v23[0] = v4 + 64;
  if ((*(v4 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v10;
    v16 = *(v7 + 16);
    v14 = v7 + 16;
    v15 = v16;
    v17 = *(v14 + 56);
    v18 = (v14 - 8);
    do
    {
      v19 = v14;
      v15(v9, *(v25 + 48) + v17 * v12, a3);
      v20 = *(v24 + 8);
      v21 = sub_27520BBC8();
      (*v18)(v9, a3);
      if (v21)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      v14 = v19;
    }

    while (((*(v23[0] + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  return v12;
}

uint64_t sub_2751FC68C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v12 = v23 - v11;
  if (sub_27520BD28())
  {
    sub_27520C078();
    v13 = sub_27520C068();
  }

  else
  {
    v13 = MEMORY[0x277D84F98];
  }

  result = sub_27520BD28();
  if (result)
  {
    if (result >= 1)
    {
      v23[0] = v10;
      v27 = a4;
      v15 = 0;
      v16 = *(TupleTypeMetadata2 + 48);
      v25 = a3;
      v26 = (v9 + 16);
      v23[2] = a2 - 8;
      v24 = v16;
      v23[1] = a3 - 8;
      while (1)
      {
        v17 = result;
        if (sub_27520BD08())
        {
          (*(v9 + 16))(v12, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, TupleTypeMetadata2);
        }

        else
        {
          result = sub_27520BF88();
          if (v23[0] != 8)
          {
            goto LABEL_19;
          }

          v28 = result;
          (*v26)(v12, &v28, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = sub_2751FC474(v12, a2, v27);
        if (v18)
        {
          break;
        }

        v19 = result;
        *(v13 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v13[6] + *(*(a2 - 8) + 72) * result, v12, a2);
        result = (*(*(v25 - 8) + 32))(v13[7] + *(*(v25 - 8) + 72) * v19, &v12[v24]);
        v20 = v13[2];
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (v21)
        {
          goto LABEL_17;
        }

        ++v15;
        v13[2] = v22;
        result = v17;
        if (v17 == v15)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_15:

    return v13;
  }

  return result;
}

uint64_t sub_2751FC980()
{
  swift_beginAccess();
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t sub_2751FC9EC(uint64_t a1)
{
  v3 = v1[2];
  v5 = v1[6];
  v4 = v1[7];
  sub_27520BD88();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return v5(a1, *(a1 + *(TupleTypeMetadata2 + 48))) & 1;
}

uint64_t sub_2751FCB9C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  *a2 = sub_2751FC980();
  a2[1] = v4;
}

uint64_t sub_2751FCBDC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_2751F6780(v2, v3);
}

__n128 sub_2751FCC28(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

__n128 sub_2751FCCAC(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  v4 = *(a1 + 32);
  *(a2 + 48) = *(a1 + 48);
  *(a2 + 16) = v3;
  *(a2 + 32) = v4;
  *a2 = result;
  return result;
}

uint64_t keypath_get_11Tm@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X3>, void *a3@<X8>)
{
  v3 = *a1;
  *a3 = a2();
}