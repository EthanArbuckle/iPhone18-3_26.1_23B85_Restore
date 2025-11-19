_BYTE **sub_26BE29B44(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_26BE29B54(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E490, &qword_26C015C80);
    v2 = sub_26C00ABEC();
    v16 = v2;
    sub_26C00AB7C();
    if (sub_26C00ABAC())
    {
      type metadata accessor for ContinuationStore();
      do
      {
        swift_dynamicCast();
        v10 = *(v2 + 16);
        if (*(v2 + 24) <= v10)
        {
          sub_26BF76DFC(v10 + 1);
        }

        v2 = v16;
        v3 = *(v16 + 40);
        sub_26C00B05C();
        sub_26C00924C();
        result = sub_26C00B0CC();
        v5 = v16 + 56;
        v6 = -1 << *(v16 + 32);
        v7 = result & ~v6;
        v8 = v7 >> 6;
        if (((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6))) != 0)
        {
          v9 = __clz(__rbit64((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v11 = 0;
          v12 = (63 - v6) >> 6;
          do
          {
            if (++v8 == v12 && (v11 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v13 = v8 == v12;
            if (v8 == v12)
            {
              v8 = 0;
            }

            v11 |= v13;
            v14 = *(v5 + 8 * v8);
          }

          while (v14 == -1);
          v9 = __clz(__rbit64(~v14)) + (v8 << 6);
        }

        *(v5 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
        *(*(v16 + 48) + 8 * v9) = v15;
        ++*(v16 + 16);
      }

      while (sub_26C00ABAC());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t sub_26BE29D5C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_26C00AEEC();
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
        v5 = sub_26C00A74C();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_26BE29F5C(v7, v8, a1, v4);
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
    return sub_26BE29E54(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_26BE29E54(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 16 * a3 - 16;
    v7 = result - a3;
LABEL_5:
    v8 = *(v5 + 16 * v4);
    v16 = v7;
    v17 = v6;
    while (1)
    {
      v9 = *v6;
      v10 = *(v6 + 8);
      v11 = v8;
      sub_26BE00608(v8, *(&v8 + 1));
      sub_26BE00608(v9, v10);
      v12 = sub_26BE2285C(v9, v10, v11, *(&v11 + 1));
      sub_26BE00258(v9, v10);
      result = sub_26BE00258(v11, *(&v11 + 1));
      if ((v12 & 1) == 0)
      {
LABEL_4:
        ++v4;
        v6 = v17 + 16;
        v7 = v16 - 1;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v5)
      {
        break;
      }

      v13 = *v6;
      v8 = *(v6 + 16);
      *v6 = v8;
      *(v6 + 16) = v13;
      v6 -= 16;
      if (__CFADD__(v7++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_26BE29F5C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v107 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x277D84F90];
LABEL_89:
    v7 = v9;
    v9 = *v107;
    if (!*v107)
    {
      goto LABEL_127;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_121:
      result = sub_26BFD9590(v7);
      v7 = result;
    }

    v96 = *(v7 + 16);
    if (v96 >= 2)
    {
      while (1)
      {
        v97 = *v6;
        if (!*v6)
        {
          goto LABEL_125;
        }

        v6 = (v96 - 1);
        v98 = *(v7 + 16 * v96);
        v99 = *(v7 + 16 * (v96 - 1) + 40);
        sub_26BE2A610((v97 + 16 * v98), (v97 + 16 * *(v7 + 16 * (v96 - 1) + 32)), (v97 + 16 * v99), v9);
        if (v5)
        {
        }

        if (v99 < v98)
        {
          goto LABEL_114;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_26BFD9590(v7);
        }

        if (v96 - 2 >= *(v7 + 16))
        {
          goto LABEL_115;
        }

        v100 = (v7 + 16 * v96);
        *v100 = v98;
        v100[1] = v99;
        result = sub_26BFD9504(v96 - 1);
        v96 = *(v7 + 16);
        v6 = a3;
        if (v96 <= 1)
        {
        }
      }
    }
  }

  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  while (1)
  {
    v10 = v8;
    v11 = v8 + 1;
    if (v11 >= v7)
    {
      v7 = v11;
    }

    else
    {
      v105 = v5;
      v12 = (*v6 + 16 * v11);
      v13 = *v12;
      v14 = v12[1];
      v15 = v10;
      v111 = 16 * v10;
      v16 = (*v6 + 16 * v10);
      v18 = *v16;
      v17 = v16[1];
      sub_26BE00608(*v12, v14);
      sub_26BE00608(v18, v17);
      v113 = sub_26BE2285C(v18, v17, v13, v14);
      sub_26BE00258(v18, v17);
      result = sub_26BE00258(v13, v14);
      v103 = v15;
      v19 = v15 + 2;
      v20 = (v16 + 3);
      while (v7 != v19)
      {
        v22 = *v20;
        v21 = v20[1];
        v23 = v20 + 2;
        v24 = v20[2];
        v25 = *(v20 - 1);
        sub_26BE00608(v21, v24);
        sub_26BE00608(v25, v22);
        v26 = v7;
        v27 = v9;
        v28 = sub_26BE2285C(v25, v22, v21, v24) & 1;
        sub_26BE00258(v25, v22);
        result = sub_26BE00258(v21, v24);
        ++v19;
        v20 = v23;
        v29 = (v113 & 1) == v28;
        v9 = v27;
        v7 = v26;
        if (!v29)
        {
          v7 = v19 - 1;
          break;
        }
      }

      v10 = v103;
      v5 = v105;
      v6 = a3;
      v30 = v111;
      if (v113)
      {
        if (v7 < v103)
        {
          goto LABEL_118;
        }

        if (v103 < v7)
        {
          v31 = 16 * v7 - 16;
          v32 = v7;
          v33 = v103;
          do
          {
            if (v33 != --v32)
            {
              v35 = *a3;
              if (!*a3)
              {
                goto LABEL_124;
              }

              v34 = *(v35 + v30);
              *(v35 + v30) = *(v35 + v31);
              *(v35 + v31) = v34;
            }

            ++v33;
            v31 -= 16;
            v30 += 16;
          }

          while (v33 < v32);
        }
      }
    }

    v36 = v6[1];
    if (v7 < v36)
    {
      if (__OFSUB__(v7, v10))
      {
        goto LABEL_117;
      }

      if (v7 - v10 < a4)
      {
        if (__OFADD__(v10, a4))
        {
          goto LABEL_119;
        }

        if (v10 + a4 >= v36)
        {
          v37 = v6[1];
        }

        else
        {
          v37 = v10 + a4;
        }

        if (v37 < v10)
        {
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (v7 != v37)
        {
          break;
        }
      }
    }

    v38 = v7;
    if (v7 < v10)
    {
      goto LABEL_116;
    }

LABEL_29:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_26BEEC164(0, v9[2] + 1, 1, v9);
      v9 = result;
    }

    v40 = v9[2];
    v39 = v9[3];
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_26BEEC164((v39 > 1), v40 + 1, 1, v9);
      v9 = result;
    }

    v9[2] = v41;
    v42 = &v9[2 * v40];
    v42[4] = v10;
    v42[5] = v38;
    v7 = *v107;
    if (!*v107)
    {
      goto LABEL_126;
    }

    v109 = v38;
    if (v40)
    {
      while (1)
      {
        v43 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v44 = v9[4];
          v45 = v9[5];
          v54 = __OFSUB__(v45, v44);
          v46 = v45 - v44;
          v47 = v54;
LABEL_48:
          if (v47)
          {
            goto LABEL_105;
          }

          v60 = &v9[2 * v41];
          v62 = *v60;
          v61 = v60[1];
          v63 = __OFSUB__(v61, v62);
          v64 = v61 - v62;
          v65 = v63;
          if (v63)
          {
            goto LABEL_108;
          }

          v66 = &v9[2 * v43 + 4];
          v68 = *v66;
          v67 = v66[1];
          v54 = __OFSUB__(v67, v68);
          v69 = v67 - v68;
          if (v54)
          {
            goto LABEL_111;
          }

          if (__OFADD__(v64, v69))
          {
            goto LABEL_112;
          }

          if (v64 + v69 >= v46)
          {
            if (v46 < v69)
            {
              v43 = v41 - 2;
            }

            goto LABEL_69;
          }

          goto LABEL_62;
        }

        v70 = &v9[2 * v41];
        v72 = *v70;
        v71 = v70[1];
        v54 = __OFSUB__(v71, v72);
        v64 = v71 - v72;
        v65 = v54;
LABEL_62:
        if (v65)
        {
          goto LABEL_107;
        }

        v73 = &v9[2 * v43];
        v75 = v73[4];
        v74 = v73[5];
        v54 = __OFSUB__(v74, v75);
        v76 = v74 - v75;
        if (v54)
        {
          goto LABEL_110;
        }

        if (v76 < v64)
        {
          goto LABEL_3;
        }

LABEL_69:
        v81 = v43 - 1;
        if (v43 - 1 >= v41)
        {
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
          goto LABEL_120;
        }

        if (!*v6)
        {
          goto LABEL_123;
        }

        v82 = v9[2 * v81 + 4];
        v83 = v9[2 * v43 + 5];
        sub_26BE2A610((*v6 + 16 * v82), (*v6 + 16 * v9[2 * v43 + 4]), (*v6 + 16 * v83), v7);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_101;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_26BFD9590(v9);
        }

        if (v81 >= v9[2])
        {
          goto LABEL_102;
        }

        v84 = &v9[2 * v81];
        v84[4] = v82;
        v84[5] = v83;
        result = sub_26BFD9504(v43);
        v41 = v9[2];
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v48 = &v9[2 * v41 + 4];
      v49 = *(v48 - 64);
      v50 = *(v48 - 56);
      v54 = __OFSUB__(v50, v49);
      v51 = v50 - v49;
      if (v54)
      {
        goto LABEL_103;
      }

      v53 = *(v48 - 48);
      v52 = *(v48 - 40);
      v54 = __OFSUB__(v52, v53);
      v46 = v52 - v53;
      v47 = v54;
      if (v54)
      {
        goto LABEL_104;
      }

      v55 = &v9[2 * v41];
      v57 = *v55;
      v56 = v55[1];
      v54 = __OFSUB__(v56, v57);
      v58 = v56 - v57;
      if (v54)
      {
        goto LABEL_106;
      }

      v54 = __OFADD__(v46, v58);
      v59 = v46 + v58;
      if (v54)
      {
        goto LABEL_109;
      }

      if (v59 >= v51)
      {
        v77 = &v9[2 * v43 + 4];
        v79 = *v77;
        v78 = v77[1];
        v54 = __OFSUB__(v78, v79);
        v80 = v78 - v79;
        if (v54)
        {
          goto LABEL_113;
        }

        if (v46 < v80)
        {
          v43 = v41 - 2;
        }

        goto LABEL_69;
      }

      goto LABEL_48;
    }

LABEL_3:
    v7 = v6[1];
    v8 = v109;
    if (v109 >= v7)
    {
      goto LABEL_89;
    }
  }

  v101 = v9;
  v104 = v10;
  v106 = v5;
  v85 = *v6;
  v86 = *v6 + 16 * v7 - 16;
  v87 = v10 - v7;
  v110 = v37;
LABEL_80:
  v112 = v86;
  v114 = v7;
  v88 = *(v85 + 16 * v7);
  v89 = v87;
  while (1)
  {
    v90 = *v86;
    v91 = *(v86 + 8);
    v92 = v88;
    sub_26BE00608(v88, *(&v88 + 1));
    sub_26BE00608(v90, v91);
    v93 = sub_26BE2285C(v90, v91, v92, *(&v92 + 1));
    sub_26BE00258(v90, v91);
    result = sub_26BE00258(v92, *(&v92 + 1));
    if ((v93 & 1) == 0)
    {
LABEL_79:
      v7 = v114 + 1;
      v86 = v112 + 16;
      --v87;
      v38 = v110;
      if (v114 + 1 != v110)
      {
        goto LABEL_80;
      }

      v10 = v104;
      v5 = v106;
      v6 = a3;
      v9 = v101;
      if (v110 < v104)
      {
        goto LABEL_116;
      }

      goto LABEL_29;
    }

    if (!v85)
    {
      break;
    }

    v94 = *v86;
    v88 = *(v86 + 16);
    *v86 = v88;
    *(v86 + 16) = v94;
    v86 -= 16;
    if (__CFADD__(v89++, 1))
    {
      goto LABEL_79;
    }
  }

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
  return result;
}

uint64_t sub_26BE2A610(uint64_t *__dst, uint64_t *__src, uint64_t *a3, uint64_t *a4)
{
  v4 = a3;
  v5 = __src;
  v6 = __src - __dst;
  v7 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v7 = __src - __dst;
  }

  v8 = v7 >> 4;
  v9 = a3 - __src;
  v10 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v10 = a3 - __src;
  }

  v11 = v10 >> 4;
  if (v8 < v10 >> 4)
  {
    v12 = __dst;
    if (a4 != __dst || &__dst[2 * v8] <= a4)
    {
      v14 = a4;
      memmove(a4, __dst, 16 * v8);
      a4 = v14;
      v12 = __dst;
    }

    v35 = &a4[2 * v8];
    v15 = a4;
    if (v6 < 16)
    {
LABEL_10:
      v5 = v12;
      goto LABEL_35;
    }

    while (1)
    {
      if (v5 >= v4)
      {
        goto LABEL_10;
      }

      v18 = *v5;
      v19 = v5[1];
      v20 = *v15;
      v21 = v15[1];
      sub_26BE00608(*v5, v19);
      sub_26BE00608(v20, v21);
      v22 = sub_26BE2285C(v20, v21, v18, v19);
      sub_26BE00258(v20, v21);
      sub_26BE00258(v18, v19);
      if (v22)
      {
        break;
      }

      v16 = v15;
      v17 = v12 == v15;
      v15 += 2;
      if (!v17)
      {
        goto LABEL_12;
      }

LABEL_13:
      v12 += 2;
      if (v15 >= v35)
      {
        goto LABEL_10;
      }
    }

    v16 = v5;
    v17 = v12 == v5;
    v5 += 2;
    if (v17)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v12 = *v16;
    goto LABEL_13;
  }

  v15 = a4;
  if (a4 != __src || &__src[2 * v11] <= a4)
  {
    memmove(a4, __src, 16 * v11);
  }

  v35 = &v15[2 * v11];
  if (v9 >= 16 && v5 > __dst)
  {
LABEL_24:
    v34 = v5;
    v32 = v5 - 2;
    v4 -= 2;
    v23 = v35;
    do
    {
      v24 = v15;
      v25 = (v4 + 2);
      v26 = *(v23 - 2);
      v27 = *(v23 - 1);
      v23 -= 2;
      v28 = *(v34 - 2);
      v29 = *(v34 - 1);
      sub_26BE00608(v26, v27);
      sub_26BE00608(v28, v29);
      v30 = sub_26BE2285C(v28, v29, v26, v27);
      sub_26BE00258(v28, v29);
      sub_26BE00258(v26, v27);
      if (v30)
      {
        if (v25 != v34)
        {
          *v4 = *v32;
        }

        v15 = v24;
        if (v35 <= v24 || (v5 = v32, v32 <= __dst))
        {
          v5 = v32;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v25 != v35)
      {
        *v4 = *v23;
      }

      v4 -= 2;
      v35 = v23;
      v15 = v24;
    }

    while (v23 > v24);
    v35 = v23;
    v5 = v34;
  }

LABEL_35:
  if (v5 != v15 || v5 >= (v15 + ((v35 - v15 + (v35 - v15 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0)))
  {
    memmove(v5, v15, 16 * ((v35 - v15) / 16));
  }

  return 1;
}

unint64_t sub_26BE2A900@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_26C00B05C();
  sub_26C00B09C();
  MEMORY[0x26D699B60](a2);
  result = sub_26C00B0CC();
  v10 = -1 << *(v7 + 32);
  v11 = result & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = *(v7 + 48) + 16 * v11;
      v14 = *v13;
      v15 = *(v13 + 8);
      if (v14 == a1 && v15 == a2)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v3;
    v23 = *v3;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_26BF7AE44();
      v19 = v23;
    }

    v20 = *(v19 + 48) + 16 * v11;
    v21 = *v20;
    v22 = *(v20 + 8);
    *a3 = v21;
    *(a3 + 8) = v22;
    result = sub_26BE2B2BC(v11);
    *v3 = v23;
    *(a3 + 16) = 0;
  }

  else
  {
LABEL_8:
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 1;
  }

  return result;
}

unint64_t sub_26BE2AA44@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v50 = *MEMORY[0x277D85DE8];
  v6 = *v3;
  v7 = *(*v3 + 40);
  sub_26C00B05C();
  sub_26C00911C();
  result = sub_26C00B0CC();
  v9 = v6 + 56;
  v10 = -1 << *(v6 + 32);
  v11 = result & ~v10;
  if (((*(v6 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
  {
LABEL_64:
    *a3 = xmmword_26C00DA60;
    goto LABEL_65;
  }

  v12 = ~v10;
  if (a1)
  {
    v13 = 0;
  }

  else
  {
    v13 = a2 == 0xC000000000000000;
  }

  v14 = !v13;
  v47 = v14;
  v15 = a2 >> 62;
  v16 = __OFSUB__(HIDWORD(a1), a1);
  v44 = v16;
  v42 = a2;
  v43 = HIDWORD(a1) - a1;
  v45 = v12;
  v46 = BYTE6(a2);
  v41 = a1;
  while (1)
  {
    v17 = (*(v6 + 48) + 16 * v11);
    v19 = *v17;
    v18 = v17[1];
    v20 = v18 >> 62;
    if (v18 >> 62 == 3)
    {
      break;
    }

    if (v20 > 1)
    {
      if (v20 != 2)
      {
        goto LABEL_36;
      }

      v26 = *(v19 + 16);
      v25 = *(v19 + 24);
      v27 = __OFSUB__(v25, v26);
      v24 = v25 - v26;
      if (v27)
      {
        goto LABEL_68;
      }

      if (v15 <= 1)
      {
        goto LABEL_33;
      }
    }

    else if (v20)
    {
      LODWORD(v24) = HIDWORD(v19) - v19;
      if (__OFSUB__(HIDWORD(v19), v19))
      {
        goto LABEL_69;
      }

      v24 = v24;
      if (v15 <= 1)
      {
LABEL_33:
        v28 = v46;
        if (v15)
        {
          v28 = v43;
          if (v44)
          {
            goto LABEL_67;
          }
        }

        goto LABEL_39;
      }
    }

    else
    {
      v24 = BYTE6(v18);
      if (v15 <= 1)
      {
        goto LABEL_33;
      }
    }

LABEL_37:
    if (v15 != 2)
    {
      if (!v24)
      {
        goto LABEL_62;
      }

      goto LABEL_13;
    }

    v30 = *(a1 + 16);
    v29 = *(a1 + 24);
    v27 = __OFSUB__(v29, v30);
    v28 = v29 - v30;
    if (v27)
    {
      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
      goto LABEL_74;
    }

LABEL_39:
    if (v24 != v28)
    {
      goto LABEL_13;
    }

    if (v24 < 1)
    {
      goto LABEL_62;
    }

    if (v20 <= 1)
    {
      if (!v20)
      {
        *v49 = v19;
        *&v49[8] = v18;
        v49[10] = BYTE2(v18);
        v49[11] = BYTE3(v18);
        v49[12] = BYTE4(v18);
        v49[13] = BYTE5(v18);
        sub_26BE00608(v19, v18);
        v12 = v45;
        goto LABEL_61;
      }

      a2 = (v19 >> 32) - v19;
      if (v19 >> 32 < v19)
      {
        goto LABEL_70;
      }

      sub_26BE00608(v19, v18);
      v32 = sub_26C008E9C();
      if (v32)
      {
        v34 = sub_26C008ECC();
        if (__OFSUB__(v19, v34))
        {
          goto LABEL_73;
        }

        v32 += v19 - v34;
      }

LABEL_58:
      sub_26C008EBC();
      a1 = v41;
      a2 = v42;
      sub_26BE567B0(v32, v41, v42, v49);
      result = sub_26BE00258(v19, v18);
      v9 = v6 + 56;
      v12 = v45;
      if (v49[0])
      {
        goto LABEL_62;
      }

      goto LABEL_13;
    }

    if (v20 == 2)
    {
      a2 = *(v19 + 16);
      v31 = *(v19 + 24);
      sub_26BE00608(v19, v18);
      v32 = sub_26C008E9C();
      if (v32)
      {
        v33 = sub_26C008ECC();
        if (__OFSUB__(a2, v33))
        {
          goto LABEL_72;
        }

        v32 += a2 - v33;
      }

      v27 = __OFSUB__(v31, a2);
      a2 = v31 - a2;
      if (v27)
      {
        goto LABEL_71;
      }

      goto LABEL_58;
    }

    *&v49[6] = 0;
    *v49 = 0;
    sub_26BE00608(v19, v18);
LABEL_61:
    sub_26BE567B0(v49, a1, a2, &v48);
    result = sub_26BE00258(v19, v18);
    if (v48)
    {
      goto LABEL_62;
    }

LABEL_13:
    v11 = (v11 + 1) & v12;
    if (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      goto LABEL_64;
    }
  }

  if (v19)
  {
    v21 = 0;
  }

  else
  {
    v21 = v18 == 0xC000000000000000;
  }

  v23 = !v21 || v15 < 3;
  if ((v23 | v47))
  {
LABEL_36:
    v24 = 0;
    if (v15 <= 1)
    {
      goto LABEL_33;
    }

    goto LABEL_37;
  }

LABEL_62:
  a2 = v39;
  v35 = *v39;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v37 = *v39;
  *v49 = *v39;
  if (isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_63;
  }

LABEL_74:
  sub_26BF7AF98();
  v37 = *v49;
LABEL_63:
  *a3 = *(*(v37 + 48) + 16 * v11);
  result = sub_26BE2B480(v11);
  *a2 = *v49;
LABEL_65:
  v38 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_26BE2AE90@<X0>(unsigned __int16 a1@<W0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_26C00B05C();
  sub_26C00B08C();
  result = sub_26C00B0CC();
  v8 = -1 << *(v5 + 32);
  v9 = result & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (*(*(v5 + 48) + 2 * v9) != a1)
    {
      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    v12 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v2;
    v15 = *v2;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_26BF7AD00();
      v14 = v15;
    }

    *a2 = *(*(v14 + 48) + 2 * v9);
    result = sub_26BE2B654(v9);
    v11 = 0;
    *v2 = v15;
  }

  else
  {
LABEL_5:
    *a2 = 0;
    v11 = 1;
  }

  *(a2 + 2) = v11;
  return result;
}

uint64_t sub_26BE2AFA4()
{
  v1 = *v0;
  if ((*v0 & 0xC000000000000001) != 0)
  {
    if (v1 < 0)
    {
      v2 = *v0;
    }

    v3 = *v0;

    v4 = sub_26C00ABBC();

    if (v4)
    {
      v5 = sub_26BE2B14C();

      return v5;
    }

    return 0;
  }

  v18 = v0;
  v7 = *(v1 + 40);
  sub_26C00B05C();
  sub_26C00924C();
  v8 = sub_26C00B0CC();
  v9 = -1 << *(v1 + 32);
  v10 = v8 & ~v9;
  if (((*(v1 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
    return 0;
  }

  v11 = ~v9;
  while (1)
  {
    v12 = *(*(v1 + 48) + 8 * v10);

    v13 = sub_26C00923C();

    if (v13)
    {
      break;
    }

    v10 = (v10 + 1) & v11;
    if (((*(v1 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      return 0;
    }
  }

  v14 = *v18;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v18;
  v19 = *v18;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_26BF7ABB0();
    v16 = v19;
  }

  v17 = *(*(v16 + 48) + 8 * v10);
  sub_26BE2B7FC(v10);
  result = v17;
  *v18 = v19;
  return result;
}

uint64_t sub_26BE2B14C()
{
  v1 = v0;
  v2 = *v0;

  v3 = sub_26C00AB8C();
  v4 = swift_unknownObjectRetain();
  v5 = sub_26BE29B54(v4, v3);
  v15 = v5;
  v6 = *(v5 + 40);
  sub_26C00B05C();

  sub_26C00924C();
  v7 = sub_26C00B0CC();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      v11 = *(*(v5 + 48) + 8 * v9);

      v12 = sub_26C00923C();

      if (v12)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v13 = *(*(v5 + 48) + 8 * v9);
  sub_26BE2B7FC(v9);
  result = sub_26C00923C();
  if (result)
  {
    *v1 = v15;
    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_26BE2B2BC(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_26C00AB5C();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = (*(v3 + 48) + 16 * v6);
        v13 = *v12;
        v14 = *(v12 + 1);
        sub_26C00B05C();
        sub_26C00B09C();
        MEMORY[0x26D699B60](v14);
        v15 = sub_26C00B0CC() & v7;
        if (v2 >= v10)
        {
          if (v15 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v15 >= v10)
        {
          goto LABEL_11;
        }

        if (v2 >= v15)
        {
LABEL_11:
          v16 = *(v3 + 48);
          v17 = (v16 + 16 * v2);
          v18 = (v16 + 16 * v6);
          if (v2 != v6 || v17 >= v18 + 1)
          {
            *v17 = *v18;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v19 = *(v3 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v21;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_26BE2B480(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_26C00AB5C();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = (*(v3 + 48) + 16 * v6);
        v13 = *v12;
        v14 = v12[1];
        sub_26C00B05C();
        sub_26BE00608(v13, v14);
        sub_26C00911C();
        v15 = sub_26C00B0CC();
        sub_26BE00258(v13, v14);
        v16 = v15 & v7;
        if (v2 >= v10)
        {
          if (v16 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v16 >= v10)
        {
          goto LABEL_11;
        }

        if (v2 >= v16)
        {
LABEL_11:
          v17 = *(v3 + 48);
          v18 = (v17 + 16 * v2);
          v19 = (v17 + 16 * v6);
          if (v2 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_26BE2B654(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_26C00AB5C();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = *(*(v3 + 48) + 2 * v6);
        sub_26C00B05C();
        sub_26C00B08C();
        v13 = sub_26C00B0CC() & v7;
        if (v2 >= v10)
        {
          if (v13 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v13 >= v10)
        {
          goto LABEL_11;
        }

        if (v2 >= v13)
        {
LABEL_11:
          v14 = *(v3 + 48);
          v15 = (v14 + 2 * v2);
          v16 = (v14 + 2 * v6);
          if (v2 != v6 || v15 >= v16 + 1)
          {
            *v15 = *v16;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v17 = *(v3 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v19;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_26BE2B7FC(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_26C00AB5C();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = *(*(v3 + 48) + 8 * v6);
        sub_26C00B05C();

        sub_26C00924C();
        v13 = sub_26C00B0CC();

        v14 = v13 & v7;
        if (v2 >= v10)
        {
          if (v14 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v14 >= v10)
        {
          goto LABEL_11;
        }

        if (v2 >= v14)
        {
LABEL_11:
          v15 = *(v3 + 48);
          v16 = (v15 + 8 * v2);
          v17 = (v15 + 8 * v6);
          if (v2 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_26BE2BA78(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E460, &qword_26C0206D0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_26BE2BAE8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_26BE00608(a1, a2);
  }

  return a1;
}

uint64_t sub_26BE2BAFC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_26BE2E3F4;

  return sub_26BE26770(a1, v5, v4);
}

uint64_t sub_26BE2BBA8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_26BE2E3F4;

  return sub_26BE28E60(a1, v5);
}

uint64_t type metadata accessor for MLS.Client.Client()
{
  result = qword_28045E480;
  if (!qword_28045E480)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_26BE2BCAC()
{
  result = qword_28045E470;
  if (!qword_28045E470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045E470);
  }

  return result;
}

unint64_t sub_26BE2BD04()
{
  result = qword_28045E478;
  if (!qword_28045E478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045E478);
  }

  return result;
}

uint64_t sub_26BE2BD58@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 24);
  v5 = *(v3 + 32);
  *a2 = v4;
  a2[1] = v5;
  return sub_26BE2958C(v4, v5);
}

uint64_t sub_26BE2BDA8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  return sub_26BE295A0(v3 + 40, a2);
}

uint64_t sub_26BE2BE78@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_state;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_26BE2BED0(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_state;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_26BE2BF24@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_signaturePrivateKey;
  swift_beginAccess();
  return sub_26BE038A8(v3 + v4, a2);
}

uint64_t sub_26BE2BF84@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_usePureSwiftOverride;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_26BE2BFDC(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_usePureSwiftOverride;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t _s6ClientO13CommitOptionsVwet(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

_WORD *_s6ClientO13CommitOptionsVwst(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
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
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
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

uint64_t _s6ClientO17EncryptionOptionsVwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[24])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t _s6ClientO17EncryptionOptionsVwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_26BE2C294(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 64);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26BE2C2DC(uint64_t result, int a2, int a3)
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
      *(result + 64) = (a2 - 1);
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

uint64_t _s8LifetimeVwet(uint64_t a1, int a2)
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

uint64_t _s8LifetimeVwst(uint64_t result, int a2, int a3)
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

uint64_t get_enum_tag_for_layout_string_8SwiftMLS0B0O7StorageO010GroupStateC2V2_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_26BE2C3B4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 355))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 64);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26BE2C3FC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 344) = 0;
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
    *(result + 354) = 0;
    *(result + 352) = 0;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 355) = 1;
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
      *(result + 64) = (a2 - 1);
      return result;
    }

    *(result + 355) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26BE2C4C8()
{
  result = sub_26C00928C();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_26C00921C();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t dispatch thunk of MLS.Client.Client.loadCredential(credential:)(uint64_t a1)
{
  v4 = *(*v1 + 680);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_26BE2E3F4;

  return v8(a1);
}

uint64_t dispatch thunk of MLS.Client.Client.generateKeyPackage()(uint64_t a1)
{
  v4 = *(*v1 + 696);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_26BE2E3F4;

  return v8(a1);
}

uint64_t dispatch thunk of MLS.Client.Client.createGroup(groupID:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 712);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_26BE2CD5C;

  return v10(a1, a2);
}

uint64_t sub_26BE2CD5C(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t dispatch thunk of MLS.Client.Client.joinGroup(welcome:ratchetTree:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 720);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_26BE2E3E0;

  return v10(a1, a2);
}

uint64_t dispatch thunk of MLS.Client.Client.listGroupIDs()()
{
  v2 = *(*v0 + 760);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_26BE2E3E0;

  return v6();
}

uint64_t dispatch thunk of MLS.Client.Client.loadGroup(groupID:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 768);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_26BE2E3E0;

  return v10(a1, a2);
}

uint64_t dispatch thunk of MLS.Client.Client.findKeyPackage(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 776);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_26BE2E3F4;

  return v12(a1, a2, a3);
}

uint64_t dispatch thunk of MLS.Client.Client.delete()()
{
  v2 = *(*v0 + 792);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_26BE2E3F4;

  return v6();
}

uint64_t dispatch thunk of MLS.Client.Client.listKeyPackages()()
{
  v2 = *(*v0 + 800);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_26BE2E3E0;

  return v6();
}

uint64_t dispatch thunk of MLS.Client.Client.changeClientUUID(newClientUUID:)(uint64_t a1)
{
  v4 = *(*v1 + 808);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_26BE2E3F4;

  return v8(a1);
}

uint64_t dispatch thunk of MLS.Client.Client.periodicCleanup()()
{
  v2 = *(*v0 + 816);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_26BE2E3F4;

  return v6();
}

uint64_t dispatch thunk of MLS.Client.Client.performWithLock<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(*v4 + 824);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_26BE2E3F4;

  return v14(a1, a2, a3, a4);
}

uint64_t sub_26BE2D8D0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 16))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_26BE2D924(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_26BE2D99C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_26BE2D9E4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26BE2DA54(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_26BE2DCF0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_26BE2E3F4;

  return sub_26BF71D9C(a1, v5, v4);
}

uint64_t sub_26BE2DD9C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_26BE28F58;

  return sub_26BF70E2C(a1, v4, v5, v6);
}

uint64_t sub_26BE2DE54(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E460, &qword_26C0206D0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_0()
{
  v1 = *(v0 + 136);
  if (v1 <= 0xF)
  {
    if (v1 != 2 && v1 != 14 && v1 != 15)
    {
      goto LABEL_17;
    }

LABEL_11:
    v3 = *(v0 + 32);

    goto LABEL_17;
  }

  if (v1 == 16)
  {
    goto LABEL_11;
  }

  if (v1 == 21)
  {
    if (*(v0 + 64))
    {
      sub_26BE0489C(*(v0 + 24), *(v0 + 32));
      __swift_destroy_boxed_opaque_existential_1((v0 + 40));
    }

    if (*(v0 + 120))
    {
      sub_26BE0489C(*(v0 + 80), *(v0 + 88));
      v2 = (v0 + 96);
      goto LABEL_16;
    }
  }

  else if (v1 == 22 && *(v0 + 64))
  {
    sub_26BE0489C(*(v0 + 24), *(v0 + 32));
    v2 = (v0 + 40);
LABEL_16:
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

LABEL_17:

  return MEMORY[0x2821FE8E8](v0, 137, 7);
}

uint64_t sub_26BE2E070(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_26BE2E12C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLS.GroupState();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26BE2E190(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_26BE2E1F0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_26BE2E258(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

double sub_26BE2E2B8(uint64_t a1)
{
  *a1 = xmmword_26C00DA50;
  *(a1 + 16) = xmmword_26C00DA50;
  result = 0.0;
  *(a1 + 32) = xmmword_26C00DA70;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0;
  *(a1 + 104) = 536870908;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 112) = 0;
  return result;
}

uint64_t sub_26BE2E2EC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
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

uint64_t MLS.TranscriptHash.confirmed.getter()
{
  v1 = *(v0 + 8);
  sub_26BE00608(v1, *(v0 + 16));
  return v1;
}

uint64_t MLS.TranscriptHash.confirmed.setter(uint64_t a1, uint64_t a2)
{
  result = sub_26BE00258(*(v2 + 8), *(v2 + 16));
  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t MLS.TranscriptHash.interim.getter()
{
  v1 = *(v0 + 24);
  sub_26BE00608(v1, *(v0 + 32));
  return v1;
}

uint64_t MLS.TranscriptHash.interim.setter(uint64_t a1, uint64_t a2)
{
  result = sub_26BE00258(*(v2 + 24), *(v2 + 32));
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

double MLS.TranscriptHash.init(ciphersuiteID:)@<D0>(_WORD *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = *a1;
  *(a2 + 8) = 0;
  result = -2.0;
  *(a2 + 16) = xmmword_26C00E2C0;
  *(a2 + 32) = 0xC000000000000000;
  return result;
}

unint64_t sub_26BE2E558()
{
  v2 = v0;
  v4 = v0[1];
  v3 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E228, &qword_26C00CDD0);
  sub_26C009C3C();
  v5 = sub_26BE12418(v35);
  v7 = v6;

  v35 = 0;
  v36 = xmmword_26C00E2C0;
  v9 = v7 >> 62;
  if ((v7 >> 62) > 1)
  {
    result = 0;
    if (v9 != 2)
    {
      goto LABEL_10;
    }

    v11 = *(v5 + 16);
    v10 = *(v5 + 24);
    result = v10 - v11;
    if (!__OFSUB__(v10, v11))
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v9)
  {
    result = BYTE6(v7);
    goto LABEL_10;
  }

  if (__OFSUB__(HIDWORD(v5), v5))
  {
    __break(1u);
    goto LABEL_23;
  }

  result = HIDWORD(v5) - v5;
LABEL_10:
  sub_26BF30414(result);
  if (v1)
  {
    sub_26BE00258(v5, v7);
    return sub_26BE00258(v35, v36);
  }

  sub_26BE11228(v5, v7);
  v12 = v36 >> 62;
  if ((v36 >> 62) > 1)
  {
    if (v12 != 2)
    {
      goto LABEL_20;
    }

    v13 = *(v35 + 24);
  }

  else
  {
    if (!v12)
    {
      goto LABEL_20;
    }

    v13 = v35 >> 32;
  }

  if (v13 < 0)
  {
    __break(1u);
  }

LABEL_20:
  v14 = sub_26C00909C();
  v39 = 0;
  v15 = v3;
  v17 = v16;
  sub_26BE00258(v5, v7);
  sub_26BE00258(v35, v36);
  v31 = v4;
  *&v32 = v15;
  v37 = MEMORY[0x277CC9318];
  v38 = MEMORY[0x277CC9300];
  v35 = v14;
  *&v36 = v17;
  v18 = __swift_project_boxed_opaque_existential_1(&v35, MEMORY[0x277CC9318]);
  v19 = *v18;
  v20 = v18[1];
  sub_26BE00608(v4, v15);
  sub_26BE00608(v14, v17);
  sub_26BE121A0(v19, v20);
  sub_26BE00258(v14, v17);
  result = __swift_destroy_boxed_opaque_existential_1(&v35);
  v21 = *v2;
  if ((v21 - 3) >= 0xFFFFFFFE)
  {
    v22 = v31;
    v23 = v32;
    v24 = v2[1];
    v25 = v2[2];
    v27 = v2[4];
    v39 = v2[3];
    v26 = v39;
    LOBYTE(v31) = v21 != 1;
    sub_26BE00608(v24, v25);
    sub_26BE00608(v26, v27);
    MLS.Cryptography.Ciphersuite.init(ciphersuiteID:)(&v31, &v35);
    LOBYTE(v31) = v35;
    v32 = v36;
    v33 = v37;
    v34 = v38;
    v28 = MLS.Cryptography.Ciphersuite.digestHash(_:)(v22, v23);
    v30 = v29;

    sub_26BE00258(v22, v23);
    sub_26BE00258(v24, v25);
    sub_26BE00258(v39, v27);
    result = sub_26BE00258(v2[3], v2[4]);
    v2[3] = v28;
    v2[4] = v30;
    return result;
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t MLS.TranscriptHash.update(authenticatedContent:)()
{
  result = sub_26BE2E86C();
  if (!v0)
  {
    return sub_26BE2E9FC();
  }

  return result;
}

uint64_t sub_26BE2E86C()
{
  v2 = v0;
  v3 = v0[3];
  v4 = v0[4];
  result = sub_26BE2EB8C();
  if (!v1)
  {
    v22 = v3;
    *&v23 = v4;
    v28 = MEMORY[0x277CC9318];
    v29 = MEMORY[0x277CC9300];
    v26 = result;
    *&v27 = v6;
    v7 = result;
    v8 = v6;
    v9 = __swift_project_boxed_opaque_existential_1(&v26, MEMORY[0x277CC9318]);
    v10 = *v9;
    v11 = v9[1];
    sub_26BE00608(v3, v4);
    sub_26BE00608(v7, v8);
    sub_26BE121A0(v10, v11);
    v30 = 0;
    sub_26BE00258(v7, v8);
    result = __swift_destroy_boxed_opaque_existential_1(&v26);
    v12 = *v2;
    if ((v12 - 3) < 0xFFFFFFFE)
    {
      __break(1u);
    }

    else
    {
      v13 = v22;
      v14 = v23;
      v15 = v2[1];
      v16 = v2[2];
      v17 = v2[3];
      v18 = v2[4];
      LOBYTE(v22) = v12 != 1;
      sub_26BE00608(v15, v16);
      sub_26BE00608(v17, v18);
      MLS.Cryptography.Ciphersuite.init(ciphersuiteID:)(&v22, &v26);
      LOBYTE(v22) = v26;
      v23 = v27;
      v24 = v28;
      v25 = v29;
      v19 = MLS.Cryptography.Ciphersuite.digestHash(_:)(v13, v14);
      v21 = v20;

      sub_26BE00258(v13, v14);
      sub_26BE00258(v15, v16);
      sub_26BE00258(v17, v18);
      result = sub_26BE00258(v2[1], v2[2]);
      v2[1] = v19;
      v2[2] = v21;
    }
  }

  return result;
}

uint64_t sub_26BE2E9FC()
{
  v2 = v0;
  v3 = v0[1];
  v4 = v0[2];
  result = sub_26BE2F02C();
  if (!v1)
  {
    v22 = v3;
    *&v23 = v4;
    v28 = MEMORY[0x277CC9318];
    v29 = MEMORY[0x277CC9300];
    v26 = result;
    *&v27 = v6;
    v7 = result;
    v8 = v6;
    v9 = __swift_project_boxed_opaque_existential_1(&v26, MEMORY[0x277CC9318]);
    v10 = *v9;
    v11 = v9[1];
    sub_26BE00608(v3, v4);
    sub_26BE00608(v7, v8);
    sub_26BE121A0(v10, v11);
    v30 = 0;
    sub_26BE00258(v7, v8);
    result = __swift_destroy_boxed_opaque_existential_1(&v26);
    v12 = *v2;
    if ((v12 - 3) < 0xFFFFFFFE)
    {
      __break(1u);
    }

    else
    {
      v13 = v22;
      v14 = v23;
      v15 = v2[1];
      v16 = v2[2];
      v17 = v2[3];
      v18 = v2[4];
      LOBYTE(v22) = v12 != 1;
      sub_26BE00608(v15, v16);
      sub_26BE00608(v17, v18);
      MLS.Cryptography.Ciphersuite.init(ciphersuiteID:)(&v22, &v26);
      LOBYTE(v22) = v26;
      v23 = v27;
      v24 = v28;
      v25 = v29;
      v19 = MLS.Cryptography.Ciphersuite.digestHash(_:)(v13, v14);
      v21 = v20;

      sub_26BE00258(v13, v14);
      sub_26BE00258(v15, v16);
      sub_26BE00258(v17, v18);
      result = sub_26BE00258(v2[3], v2[4]);
      v2[3] = v19;
      v2[4] = v21;
    }
  }

  return result;
}

__int128 *sub_26BE2EB8C()
{
  v2 = &qword_28045E4E0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4E0, &qword_26C015A80);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v27 - v5;
  v7 = type metadata accessor for MLS.FramedContentAuthData();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = (&v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for MLS.AuthenticatedContent();
  sub_26BE2E1F0(v0 + *(v12 + 24), v6, &qword_28045E4E0, &qword_26C015A80);
  if ((*(v8 + 48))(v6, 1, v7) != 1)
  {
    v2 = &v30;
    sub_26BE2FABC(v6, v11, type metadata accessor for MLS.FramedContentAuthData);
    v14 = *(v0 + 92);
    v15 = *(v0 + 108);
    v32[12] = *(v0 + 100);
    v33[0] = v15;
    *(v33 + 9) = *(v0 + 225);
    v16 = *(v0 + 60);
    v17 = *(v0 + 76);
    v32[8] = *(v0 + 68);
    v32[9] = v17;
    v32[10] = *(v0 + 84);
    v32[11] = v14;
    v18 = *(v0 + 28);
    v19 = *(v0 + 44);
    v32[4] = *(v0 + 36);
    v32[5] = v19;
    v32[6] = *(v0 + 52);
    v32[7] = v16;
    v20 = *(v0 + 12);
    v32[0] = *(v0 + 4);
    v32[1] = v20;
    v32[2] = *(v0 + 20);
    v32[3] = v18;
    *&v29[182] = *(v0 + 92);
    *&v29[198] = *(v0 + 100);
    *&v29[214] = *(v0 + 108);
    *&v29[223] = *(v0 + 225);
    *&v29[118] = *(v0 + 60);
    *&v29[134] = *(v0 + 68);
    *&v29[150] = *(v0 + 76);
    *&v29[166] = *(v0 + 84);
    *&v29[54] = *(v0 + 28);
    *&v29[70] = *(v0 + 36);
    *&v29[86] = *(v0 + 44);
    *&v29[102] = *(v0 + 52);
    *&v29[6] = *(v0 + 4);
    *&v29[22] = *(v0 + 12);
    *&v29[38] = *(v0 + 20);
    *(&v34[22] + 2) = *&v29[176];
    *(&v34[24] + 2) = *&v29[192];
    *(&v34[26] + 2) = *&v29[208];
    *(&v34[28] + 1) = *&v29[223];
    *(&v34[14] + 2) = *&v29[112];
    *(&v34[16] + 2) = *&v29[128];
    *(&v34[18] + 2) = *&v29[144];
    *(&v34[20] + 2) = *&v29[160];
    *(&v34[6] + 2) = *&v29[48];
    *(&v34[8] + 2) = *&v29[64];
    *(&v34[10] + 2) = *&v29[80];
    *(&v34[12] + 2) = *&v29[96];
    *(v34 + 2) = *v29;
    *(&v34[2] + 2) = *&v29[16];
    v21 = *v0;
    v22 = *v11;
    v23 = v11[1];
    LOWORD(v34[0]) = v21;
    *(&v34[4] + 2) = *&v29[32];
    v34[31] = v22;
    v34[32] = v23;
    v30 = xmmword_26C00BBD0;
    v31 = 0;
    memcpy(v29, v34, sizeof(v29));
    sub_26BE2FB24(v32, &v28);
    sub_26BE00608(v22, v23);
    sub_26BFF6ED4(v29);
    if (v1)
    {
      sub_26BE2FA5C(v11, type metadata accessor for MLS.FramedContentAuthData);
      sub_26BE2FB80(v34);
      sub_26BE00258(v30, *(&v30 + 1));
      return v2;
    }

    v25 = v30;
    v26 = *(&v30 + 1) >> 62;
    if ((*(&v30 + 1) >> 62) > 1)
    {
      if (v26 != 2 || (*(v30 + 24) & 0x8000000000000000) == 0)
      {
        goto LABEL_14;
      }
    }

    else if (!v26 || ((v30 >> 32) & 0x8000000000000000) == 0)
    {
      goto LABEL_14;
    }

    __break(1u);
LABEL_14:
    v2 = sub_26C00909C();
    sub_26BE2FB80(v34);
    sub_26BE2FA5C(v11, type metadata accessor for MLS.FramedContentAuthData);
    sub_26BE00258(v25, *(&v25 + 1));
    return v2;
  }

  sub_26BE2E258(v6, &qword_28045E4E0, &qword_26C015A80);
  sub_26BE01654();
  swift_allocError();
  *v13 = 0xD000000000000049;
  *(v13 + 8) = 0x800000026C02AE70;
  *(v13 + 112) = 16;
  swift_willThrow();
  return v2;
}

unint64_t sub_26BE2F02C()
{
  v2 = &qword_28045E4E0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4E0, &qword_26C015A80);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v28 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4E8, &qword_26C012550);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v28 - v9;
  v11 = type metadata accessor for MLS.Cryptography.MACTag(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for MLS.AuthenticatedContent();
  sub_26BE2E1F0(v0 + *(v16 + 24), v6, &qword_28045E4E0, &qword_26C015A80);
  v17 = type metadata accessor for MLS.FramedContentAuthData();
  if ((*(*(v17 - 8) + 48))(v6, 1, v17) == 1)
  {
    sub_26BE2E258(v6, &qword_28045E4E0, &qword_26C015A80);
    (*(v12 + 56))(v10, 1, 1, v11);
LABEL_4:
    sub_26BE2E258(v10, &qword_28045E4E8, &qword_26C012550);
    sub_26BE01654();
    swift_allocError();
    *v18 = 0xD000000000000047;
    *(v18 + 8) = 0x800000026C02AE20;
    *(v18 + 112) = 16;
    swift_willThrow();
    return v2;
  }

  sub_26BE2E1F0(&v6[*(v17 + 20)], v10, &qword_28045E4E8, &qword_26C012550);
  sub_26BE2FA5C(v6, type metadata accessor for MLS.FramedContentAuthData);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    goto LABEL_4;
  }

  sub_26BE2FABC(v10, v15, type metadata accessor for MLS.Cryptography.MACTag);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E228, &qword_26C00CDD0);
  sub_26C009C3C();
  v20 = sub_26BE12418(v28);
  v22 = v21;

  v28 = xmmword_26C00BBD0;
  v29 = 0;
  v23 = v22 >> 62;
  if ((v22 >> 62) > 1)
  {
    result = 0;
    if (v23 != 2 || (v25 = *(v20 + 16), v24 = *(v20 + 24), result = v24 - v25, !__OFSUB__(v24, v25)))
    {
LABEL_15:
      sub_26BF30414(result);
      if (v1)
      {
        sub_26BE00258(v20, v22);
        sub_26BE2FA5C(v15, type metadata accessor for MLS.Cryptography.MACTag);
        sub_26BE00258(v28, *(&v28 + 1));
        return v2;
      }

      sub_26BE11228(v20, v22);
      v26 = v28;
      v27 = *(&v28 + 1) >> 62;
      if ((*(&v28 + 1) >> 62) > 1)
      {
        if (v27 != 2 || (*(v28 + 24) & 0x8000000000000000) == 0)
        {
          goto LABEL_25;
        }
      }

      else if (!v27 || ((v28 >> 32) & 0x8000000000000000) == 0)
      {
        goto LABEL_25;
      }

      __break(1u);
LABEL_25:
      v2 = sub_26C00909C();
      sub_26BE00258(v20, v22);
      sub_26BE2FA5C(v15, type metadata accessor for MLS.Cryptography.MACTag);
      sub_26BE00258(v26, *(&v26 + 1));
      return v2;
    }

    __break(1u);
  }

  else if (!v23)
  {
    result = BYTE6(v22);
    goto LABEL_15;
  }

  if (!__OFSUB__(HIDWORD(v20), v20))
  {
    result = HIDWORD(v20) - v20;
    goto LABEL_15;
  }

  __break(1u);
  return result;
}

uint64_t static MLS.TranscriptHash.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = a1[3];
  v3 = a1[4];
  v4 = a2[3];
  v5 = a2[4];
  if ((sub_26BE02DEC(a1[1], a1[2], a2[1], a2[2]) & 1) == 0)
  {
    return 0;
  }

  return sub_26BE02DEC(v2, v3, v4, v5);
}

uint64_t MLS.TranscriptHash.hash(into:)()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = *v0;
  sub_26C00B08C();
  sub_26C00911C();

  return sub_26C00911C();
}

uint64_t MLS.TranscriptHash.hashValue.getter()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = *v0;
  sub_26C00B05C();
  sub_26C00B08C();
  sub_26C00911C();
  sub_26C00911C();
  return sub_26C00B0CC();
}

uint64_t sub_26BE2F62C(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = a1[3];
  v3 = a1[4];
  v4 = a2[3];
  v5 = a2[4];
  if ((sub_26BE02DEC(a1[1], a1[2], a2[1], a2[2]) & 1) == 0)
  {
    return 0;
  }

  return sub_26BE02DEC(v2, v3, v4, v5);
}

uint64_t sub_26BE2F6AC()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = *v0;
  sub_26C00B05C();
  sub_26C00B08C();
  sub_26C00911C();
  sub_26C00911C();
  return sub_26C00B0CC();
}

uint64_t sub_26BE2F72C()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = *v0;
  sub_26C00B08C();
  sub_26C00911C();

  return sub_26C00911C();
}

uint64_t sub_26BE2F79C()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = *v0;
  sub_26C00B05C();
  sub_26C00B08C();
  sub_26C00911C();
  sub_26C00911C();
  return sub_26C00B0CC();
}

uint64_t sub_26BE2F818(void *a1)
{
  v25[5] = *MEMORY[0x277D85DE8];
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v24 = bswap32(*a1) >> 16;
  v25[3] = MEMORY[0x277D838B0];
  v25[4] = MEMORY[0x277CC9C18];
  v25[0] = &v24;
  v25[1] = v25;
  v6 = __swift_project_boxed_opaque_existential_1(v25, MEMORY[0x277D838B0]);
  v8 = *v6;
  v7 = v6[1];
  sub_26C00908C();
  __swift_destroy_boxed_opaque_existential_1(v25);
  v9 = v3 >> 62;
  if ((v3 >> 62) <= 1)
  {
    if (!v9)
    {
      v10 = BYTE6(v3);
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (v9 != 2)
  {
    v10 = 0;
    goto LABEL_11;
  }

  v12 = *(v2 + 16);
  v11 = *(v2 + 24);
  v10 = v11 - v12;
  if (__OFSUB__(v11, v12))
  {
    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(v2), v2))
    {
      goto LABEL_30;
    }

    v10 = HIDWORD(v2) - v2;
  }

LABEL_11:
  result = sub_26BF30414(v10);
  if (!v1)
  {
    v14 = result;
    sub_26BE11228(v2, v3);
    v15 = v14 + v10;
    if (__OFADD__(v14, v10))
    {
      __break(1u);
    }

    else
    {
      v16 = v15 + 2;
      if (!__OFADD__(v15, 2))
      {
        v17 = v5 >> 62;
        if ((v5 >> 62) > 1)
        {
          if (v17 != 2)
          {
            v18 = 0;
            goto LABEL_25;
          }

          v20 = *(v4 + 16);
          v19 = *(v4 + 24);
          v18 = v19 - v20;
          if (!__OFSUB__(v19, v20))
          {
LABEL_25:
            v22 = sub_26BF30414(v18);
            sub_26BE11228(v4, v5);
            v23 = v22 + v18;
            if (!__OFADD__(v22, v18))
            {
              result = v16 + v23;
              if (!__OFADD__(v16, v23))
              {
                goto LABEL_24;
              }

              goto LABEL_32;
            }

LABEL_31:
            __break(1u);
LABEL_32:
            __break(1u);
LABEL_33:
            __break(1u);
          }

          __break(1u);
        }

        else if (!v17)
        {
          v18 = BYTE6(v5);
          goto LABEL_25;
        }

        if (__OFSUB__(HIDWORD(v4), v4))
        {
          goto LABEL_33;
        }

        v18 = HIDWORD(v4) - v4;
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

LABEL_24:
  v21 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_26BE2F9F8()
{
  result = qword_28045E4D8;
  if (!qword_28045E4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045E4D8);
  }

  return result;
}

uint64_t sub_26BE2FA5C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_26BE2FABC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_26BE2FBD4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4A8, &unk_26C00ECB0);
  v6 = *(*(v40 - 8) + 64);
  MEMORY[0x28223BE20](v40);
  v8 = &v39 - v7;
  v9 = sub_26C00921C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v39 - v16;
  MEMORY[0x28223BE20](v15);
  v43 = &v39 - v18;
  v19 = *(v2 + 48);
  swift_beginAccess();
  v20 = *(v19 + 376);
  v41 = *(v19 + 384);
  v42 = v20;
  v21 = OBJC_IVAR____TtCOO8SwiftMLS3MLS5Group14PureSwiftGroup_lastUpdatedLeaf;
  swift_beginAccess();
  v22 = *(v3 + v21);
  if (!*(v22 + 16))
  {
    goto LABEL_5;
  }

  v23 = sub_26BEBB618(a1, a2);
  if ((v24 & 1) == 0)
  {

LABEL_5:
    v26 = sub_26BE4126C();
    v27 = 0;
    goto LABEL_6;
  }

  v25 = *(v22 + 56) + 16 * v23;
  v26 = *v25;
  v27 = *(v25 + 8);

LABEL_6:
  v28 = OBJC_IVAR____TtCOO8SwiftMLS3MLS5Group14PureSwiftGroup_eraEpochDate;
  swift_beginAccess();
  v29 = *(v3 + v28);
  if (*(v29 + 16) && (v30 = sub_26BEBB598(v26, v27), (v31 & 1) != 0))
  {
    (*(v10 + 16))(v17, *(v29 + 56) + *(v10 + 72) * v30, v9);
    v32 = *(v10 + 32);
    v33 = v43;
    v32(v43, v17, v9);
    if (qword_28045DF48 != -1)
    {
      swift_once();
    }

    v34 = __swift_project_value_buffer(v40, qword_28045E4F0);
    swift_beginAccess();
    sub_26BE30C8C(v34, v8);
    v35 = *(v10 + 48);
    if (v35(v8, 1, v9) == 1)
    {
      sub_26C00920C();
      if (v35(v8, 1, v9) != 1)
      {
        sub_26BE30E14(v8);
      }
    }

    else
    {
      v32(v14, v8, v9);
    }

    sub_26C00918C();
    v37 = *(v10 + 8);
    v37(v14, v9);
    sub_26C00B15C();
    LOBYTE(v26) = sub_26C00B14C();
    v37(v33, v9);
  }

  else
  {
    sub_26BE01654();
    swift_allocError();
    *v36 = 47;
    v36[112] = 0;
    swift_willThrow();
  }

  return v26 & 1;
}

void sub_26BE2FFCC()
{
  v2 = *(v0 + 64);
  if ((v2 & 0x2000000000000000) == 0)
  {
    return;
  }

  v3 = *(v0 + 56);
  if ((v3 & 0xC000000000000001) != 0)
  {
    v4 = v1;
    v14 = *(v0 + 56);

    v6 = MEMORY[0x26D6996F0](0, v3);
  }

  else
  {
    if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_16;
    }

    v4 = v1;
    v5 = *(v3 + 32);
    sub_26BE04890(*(v0 + 56), *(v0 + 64));
    v6 = v5;
  }

  v7 = v6;
  v8 = SecCertificateCopyURIs();
  if (!v8)
  {
LABEL_16:
    __break(1u);
    return;
  }

  v9 = v8;
  sub_26BE0489C(v3, v2);

  type metadata accessor for CFArray(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4A0, &qword_26C00E210);
  if (swift_dynamicCast() && v15)
  {
    if (v15[2])
    {
      v10 = v15[4];
      v11 = v15[5];

      v12 = sub_26BE2FBD4(v10, v11);

      if (!v4 && (v12 & 1) != 0)
      {
        sub_26BE01654();
        swift_allocError();
        *v13 = 44;
        *(v13 + 8) = 0u;
        *(v13 + 24) = 0u;
        *(v13 + 40) = 0u;
        *(v13 + 56) = 0u;
        *(v13 + 72) = 0u;
        *(v13 + 88) = 0u;
        *(v13 + 104) = 0;
        *(v13 + 112) = 23;
        swift_willThrow();
      }
    }

    else
    {
    }
  }
}

uint64_t sub_26BE30198()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4A8, &unk_26C00ECB0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v25 - v3;
  v5 = sub_26C00921C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v25 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v25 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v25 - v13;
  v16 = *v0;
  v15 = v0[1];
  if (qword_28045DF48 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v1, qword_28045E4F0);
  swift_beginAccess();
  sub_26BE30C8C(v17, v4);
  v18 = *(v6 + 48);
  if (v18(v4, 1, v5) == 1)
  {
    sub_26C00920C();
    result = v18(v4, 1, v5);
    if (result != 1)
    {
      result = sub_26BE30E14(v4);
    }

    if ((v15 & 0x2000000000000000) == 0)
    {
      goto LABEL_7;
    }
  }

  else
  {
    result = (*(v6 + 32))(v14, v4, v5);
    if ((v15 & 0x2000000000000000) == 0)
    {
LABEL_7:
      (*(v6 + 8))(v14, v5);
      v20 = 0;
      return v20 & 1;
    }
  }

  if ((v16 & 0xC000000000000001) != 0)
  {
    v21 = MEMORY[0x26D6996F0](0, v16);
    goto LABEL_12;
  }

  if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v21 = *(v16 + 32);
LABEL_12:
    v22 = v21;
    SecCertificateNotValidAfter();
    v23 = v25;
    sub_26C00916C();

    (*(v6 + 32))(v12, v23, v5);
    v20 = sub_26C0091AC();
    v24 = *(v6 + 8);
    v24(v12, v5);
    v24(v14, v5);
    return v20 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_26BE304A0()
{
  v1[14] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4A8, &unk_26C00ECB0);
  v1[15] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[16] = swift_task_alloc();
  v4 = sub_26C00921C();
  v1[17] = v4;
  v5 = *(v4 - 8);
  v1[18] = v5;
  v6 = *(v5 + 64) + 15;
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v7 = swift_task_alloc();
  v1[21] = v7;
  *v7 = v1;
  v7[1] = sub_26BE305D4;

  return sub_26BF3536C();
}

uint64_t sub_26BE305D4(uint64_t a1)
{
  v3 = *(*v2 + 168);
  v4 = *v2;
  v4[22] = a1;
  v4[23] = v1;

  if (v1)
  {
    v6 = v4[19];
    v5 = v4[20];
    v7 = v4[16];

    v8 = v4[1];

    return v8(0);
  }

  else
  {

    return MEMORY[0x2822009F8](sub_26BE30734, 0, 0);
  }
}

uint64_t sub_26BE30734()
{
  result = *(v0 + 176);
  v50 = *(result + 16);
  if (v50)
  {
    v2 = 0;
    v3 = *(v0 + 144);
    v4 = result + 32;
    v48 = (v3 + 8);
    v49 = (v3 + 48);
    v45 = *(v0 + 184);
    v46 = (v3 + 32);
    v47 = *(v0 + 176);
    while (v2 < *(result + 16))
    {
      result = sub_26BE2DA9C(v4, v0 + 16);
      if ((*(v0 + 31) & 0x20) != 0)
      {
        v5 = *(v0 + 16);
        if ((v5 & 0xC000000000000001) != 0)
        {
          v6 = MEMORY[0x26D6996F0](0);
        }

        else
        {
          if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v6 = *(v5 + 32);
        }

        v7 = v6;
        result = SecCertificateCopyURIs();
        if (!result)
        {
          goto LABEL_44;
        }

        v8 = result;

        *(v0 + 96) = v8;
        type metadata accessor for CFArray(0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4A0, &qword_26C00E210);
        if (swift_dynamicCast())
        {
          v9 = *(v0 + 104);
          if (v9)
          {
            if (v9[2])
            {
              v10 = *(v0 + 112);
              v11 = v9[4];
              v12 = v9[5];

              v13 = sub_26BE2FBD4(v11, v12);
              if (v45)
              {
                v40 = *(v0 + 176);

                sub_26BE2DAF8(v0 + 16);
                v42 = *(v0 + 152);
                v41 = *(v0 + 160);
                v43 = *(v0 + 128);

                v38 = *(v0 + 8);
                v39 = 0;
                goto LABEL_36;
              }

              v14 = v13;

              if (v14)
              {
                v44 = *(v0 + 176);
                sub_26BE2DAF8(v0 + 16);
                goto LABEL_34;
              }

              v45 = 0;
            }

            else
            {
              v15 = *(v0 + 104);
            }
          }
        }
      }

      v16 = *(v0 + 16);
      v17 = *(v0 + 24);
      if (qword_28045DF48 != -1)
      {
        swift_once();
      }

      v19 = *(v0 + 128);
      v18 = *(v0 + 136);
      v20 = __swift_project_value_buffer(*(v0 + 120), qword_28045E4F0);
      swift_beginAccess();
      sub_26BE30C8C(v20, v19);
      v21 = *v49;
      v22 = (*v49)(v19, 1, v18);
      v24 = *(v0 + 128);
      v23 = *(v0 + 136);
      if (v22 == 1)
      {
        v25 = *(v0 + 160);
        sub_26C00920C();
        result = v21(v24, 1, v23);
        if (result != 1)
        {
          result = sub_26BE30E14(*(v0 + 128));
        }
      }

      else
      {
        result = (*v46)(*(v0 + 160), *(v0 + 128), *(v0 + 136));
      }

      if ((v17 & 0x2000000000000000) != 0)
      {
        if ((v16 & 0xC000000000000001) != 0)
        {
          v26 = MEMORY[0x26D6996F0](0, v16);
        }

        else
        {
          if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_43;
          }

          v26 = *(v16 + 32);
        }

        v27 = v26;
        v29 = *(v0 + 152);
        v28 = *(v0 + 160);
        v30 = *(v0 + 136);
        SecCertificateNotValidAfter();
        sub_26C00916C();

        LOBYTE(v27) = sub_26C0091AC();
        v31 = *v48;
        (*v48)(v29, v30);
        v31(v28, v30);
        sub_26BE2DAF8(v0 + 16);
        if (v27)
        {
          v34 = *(v0 + 176);
LABEL_34:

          v33 = 1;
          goto LABEL_35;
        }
      }

      else
      {
        (*v48)(*(v0 + 160), *(v0 + 136));
        sub_26BE2DAF8(v0 + 16);
      }

      ++v2;
      v4 += 56;
      result = v47;
      if (v50 == v2)
      {
        v32 = *(v0 + 176);
        goto LABEL_33;
      }
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
  }

  else
  {
LABEL_33:

    v33 = 0;
LABEL_35:
    v36 = *(v0 + 152);
    v35 = *(v0 + 160);
    v37 = *(v0 + 128);

    v38 = *(v0 + 8);
    v39 = v33;
LABEL_36:

    return v38(v39);
  }

  return result;
}

uint64_t sub_26BE30B54()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4A8, &unk_26C00ECB0);
  __swift_allocate_value_buffer(v0, qword_28045E4F0);
  v1 = __swift_project_value_buffer(v0, qword_28045E4F0);
  v2 = sub_26C00921C();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 1, 1, v2);
}

uint64_t static MLS.currentDateOverride.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_28045DF48 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4A8, &unk_26C00ECB0);
  v3 = __swift_project_value_buffer(v2, qword_28045E4F0);
  swift_beginAccess();
  return sub_26BE30C8C(v3, a1);
}

uint64_t sub_26BE30C8C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4A8, &unk_26C00ECB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static MLS.currentDateOverride.setter(uint64_t a1)
{
  if (qword_28045DF48 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4A8, &unk_26C00ECB0);
  v3 = __swift_project_value_buffer(v2, qword_28045E4F0);
  swift_beginAccess();
  sub_26BE30DA4(a1, v3);
  swift_endAccess();
  return sub_26BE30E14(a1);
}

uint64_t sub_26BE30DA4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4A8, &unk_26C00ECB0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_26BE30E14(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4A8, &unk_26C00ECB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t (*static MLS.currentDateOverride.modify())()
{
  if (qword_28045DF48 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4A8, &unk_26C00ECB0);
  __swift_project_value_buffer(v0, qword_28045E4F0);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_26BE30F1C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_26BE30F3C, 0, 0);
}

uint64_t sub_26BE30F3C()
{
  v48 = v0;
  if (qword_28045DF80 != -1)
  {
LABEL_19:
    swift_once();
  }

  v2 = v0[2];
  v1 = v0[3];
  v3 = sub_26C009A5C();
  __swift_project_value_buffer(v3, qword_280478EE8);

  v4 = sub_26C009A3C();
  v5 = sub_26C00AA1C();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = v0[2];
    v6 = v0[3];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v46[0] = v9;
    *v8 = 136315394;

    v10 = sub_26BE3D034();
    v12 = v11;

    v13 = sub_26BE29740(v10, v12, v46);

    *(v8 + 4) = v13;
    *(v8 + 12) = 2080;
    v14 = sub_26C00A38C();
    v16 = sub_26BE29740(v14, v15, v46);

    *(v8 + 14) = v16;
    _os_log_impl(&dword_26BDFE000, v4, v5, "%s: verifying key packages for URIs: %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D69A4E0](v9, -1, -1);
    MEMORY[0x26D69A4E0](v8, -1, -1);
  }

  v17 = v0[2];
  v18 = -1;
  v19 = -1 << *(v17 + 32);
  if (-v19 < 64)
  {
    v18 = ~(-1 << -v19);
  }

  v20 = v18 & *(v17 + 64);
  v21 = (63 - v19) >> 6;
  v22 = v0[2];

  v23 = 0;
  if (v20)
  {
    while (1)
    {
      v24 = v23;
LABEL_11:
      v25 = v0[3];
      v26 = (v24 << 10) | (16 * __clz(__rbit64(v20)));
      v27 = *(v17 + 56);
      v28 = (*(v17 + 48) + v26);
      v30 = v28[1];
      v46[0] = *v28;
      v29 = v46[0];
      v46[1] = v30;
      v47 = *(v27 + v26);
      v45 = v47;

      sub_26BE00608(v45, *(&v45 + 1));
      sub_26BE3138C(v29, v30, &v47, v25);
      v20 &= v20 - 1;
      v31 = v47;

      sub_26BE00258(v31, *(&v31 + 1));
      v23 = v24;
      if (!v20)
      {
        goto LABEL_8;
      }
    }
  }

  while (1)
  {
LABEL_8:
    v24 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      __break(1u);
      goto LABEL_19;
    }

    if (v24 >= v21)
    {
      break;
    }

    v20 = *(v17 + 64 + 8 * v24);
    ++v23;
    if (v20)
    {
      goto LABEL_11;
    }
  }

  v32 = v0[2];
  v33 = v0[3];

  v34 = sub_26C009A3C();
  v35 = sub_26C00AA1C();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = v0[3];
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v46[0] = v38;
    *v37 = 136315138;

    v39 = sub_26BE3D034();
    v41 = v40;

    v42 = sub_26BE29740(v39, v41, v46);

    *(v37 + 4) = v42;
    _os_log_impl(&dword_26BDFE000, v34, v35, "%s: verified key packages for URIs successfully", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v38);
    MEMORY[0x26D69A4E0](v38, -1, -1);
    MEMORY[0x26D69A4E0](v37, -1, -1);
  }

  v43 = v0[1];

  return v43();
}

uint64_t sub_26BE3138C(uint64_t a1, unint64_t a2, __int128 *a3, uint64_t a4)
{
  v140 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4A8, &unk_26C00ECB0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v90 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v90 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v90 - v16;
  v129 = *a3;
  result = MLS.Client.KeyPackage.asKeyPackage()(v130);
  if (!v4)
  {
    v103 = v17;
    v19 = v140;
    v99 = v8;
    v100 = v12;
    v101 = v15;
    v102 = a1;
    v125 = v136;
    v126 = v137;
    v127 = v138;
    v128 = v139;
    v121 = v132;
    v122 = v133;
    v123 = v134;
    v124 = v135;
    v118[0] = v130[0];
    v118[1] = v130[1];
    v119 = v130[2];
    v120 = v131;
    v114 = *(&v131 + 1);
    v115 = v132;
    sub_26BE04890(*(&v131 + 1), v132);
    sub_26C006590(&v114, &v109);
    v97 = a2;
    v21 = v109;
    v20 = v110;
    v22 = v19;
    v24 = *(v19 + 96);
    v23 = *(v19 + 104);
    LOBYTE(v109) = *(v19 + 72);
    v110 = *(v19 + 80);
    v111 = v24;
    v112 = v23;
    v26 = *(&v119 + 1);
    v25 = v120;

    MLS.Cryptography.Ciphersuite.importSignaturePublicKey(_:)(v26, v25, v117);
    v98 = 0;

    sub_26BE038A8(v117, &v116);
    v114 = v21;
    v115 = v20;
    v27 = *(v22 + 48);
    swift_beginAccess();
    v92 = v27;
    sub_26BE038A8(v27 + 240, &v109);
    v28 = v112;
    v94 = v111;
    v93 = __swift_project_boxed_opaque_existential_1(&v109, v111);
    v29 = sub_26C00921C();
    v30 = *(v29 - 8);
    v31 = v103;
    v90 = *(v30 + 56);
    v91 = v30;
    v90(v103, 1, 1, v29);
    v32 = *(v28 + 8);
    v95 = v20;
    v96 = v21;
    sub_26BE04890(v21, v20);
    v33 = v98;
    v34 = v32(&v114, v31, v94, v28);
    v98 = v33;
    if (v33)
    {
      sub_26BE0489C(v96, v95);
      sub_26BE2E01C(v118);
      sub_26BE2E258(v31, &qword_28045E4A8, &unk_26C00ECB0);
      sub_26BE2DBC4(&v114);
      __swift_destroy_boxed_opaque_existential_1(v117);
      return __swift_destroy_boxed_opaque_existential_1(&v109);
    }

    v35 = v34;
    v36 = v91;
    v37 = v92;
    v38 = v96;
    sub_26BE2E258(v31, &qword_28045E4A8, &unk_26C00ECB0);
    __swift_destroy_boxed_opaque_existential_1(&v109);
    if ((v35 & 1) == 0)
    {
      sub_26BE0489C(v38, v95);
      v46 = v97;
      if (qword_28045DF80 != -1)
      {
        swift_once();
      }

      v47 = sub_26C009A5C();
      __swift_project_value_buffer(v47, qword_280478EE8);

      v48 = sub_26C009A3C();
      v49 = sub_26C00AA0C();

      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        v109 = v51;
        *v50 = 136315394;

        v52 = sub_26BE3D034();
        v54 = v53;

        v55 = sub_26BE29740(v52, v54, &v109);

        *(v50 + 4) = v55;
        *(v50 + 12) = 2080;
        *(v50 + 14) = sub_26BE29740(v102, v46, &v109);
        _os_log_impl(&dword_26BDFE000, v48, v49, "%s: invalid credential in key package for uri %s", v50, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x26D69A4E0](v51, -1, -1);
        MEMORY[0x26D69A4E0](v50, -1, -1);
      }

      LOBYTE(v109) = 6;
      v113 = 9;
      sub_26BE7C458(&v109, 1u);
      sub_26BE2DC9C(&v109);
      sub_26BE01654();
      swift_allocError();
      *v56 = 6;
      v56[112] = 9;
      swift_willThrow();
      sub_26BE2E01C(v118);
      sub_26BE2DBC4(&v114);
      v57 = v117;
      return __swift_destroy_boxed_opaque_existential_1(v57);
    }

    sub_26BE038A8(v37 + 240, &v109);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E550, &qword_26C00E4C8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E558, &unk_26C00ECC0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      sub_26BE0489C(v38, v95);
      sub_26BE2E01C(v118);
      sub_26BE2DBC4(&v114);
      __swift_destroy_boxed_opaque_existential_1(v117);
      v105 = 0;
      memset(v104, 0, sizeof(v104));
      return sub_26BE2E258(v104, &qword_28045E560, &qword_26C00E4D0);
    }

    sub_26BE03890(v104, v106);
    v94 = v108;
    v103 = v107;
    v93 = __swift_project_boxed_opaque_existential_1(v106, v107);
    if (qword_28045DF48 != -1)
    {
      swift_once();
    }

    v39 = __swift_project_value_buffer(v99, qword_28045E4F0);
    swift_beginAccess();
    v40 = v100;
    sub_26BE2E1F0(v39, v100, &qword_28045E4A8, &unk_26C00ECB0);
    v41 = v36;
    v42 = *(v36 + 48);
    v43 = v29;
    v44 = v42(v40, 1, v29);
    v45 = v101;
    if (v44 == 1)
    {
      sub_26C00920C();
      if (v42(v40, 1, v43) != 1)
      {
        sub_26BE2E258(v40, &qword_28045E4A8, &unk_26C00ECB0);
      }
    }

    else
    {
      (*(v41 + 32))(v101, v40, v43);
    }

    v90(v45, 0, 1, v43);
    v59 = v97;
    v58 = v98;
    v60 = (*(v94 + 16))(&v114, v45, 0, 1, v102, v97, v103);
    if (v58)
    {
      sub_26BE0489C(v96, v95);
      sub_26BE2E01C(v118);
      sub_26BE2E258(v45, &qword_28045E4A8, &unk_26C00ECB0);
LABEL_24:
      sub_26BE2DBC4(&v114);
      __swift_destroy_boxed_opaque_existential_1(v117);
      return __swift_destroy_boxed_opaque_existential_1(v106);
    }

    v61 = v60;
    sub_26BE2E258(v45, &qword_28045E4A8, &unk_26C00ECB0);
    if (v61)
    {
      sub_26BE0489C(v96, v95);
      sub_26BE2E01C(v118);
      goto LABEL_24;
    }

    LOBYTE(v109) = 6;
    v113 = 9;
    sub_26BE7C458(&v109, 1u);
    sub_26BE2DC9C(&v109);
    v63 = v95;
    v62 = v96;
    v109 = v96;
    *&v110 = v95;
    MLS.Identity.Credential.telURI.getter();
    v65 = v64;
    sub_26BE0489C(v62, v63);
    if (v65)
    {
      if (v65[2])
      {
        v66 = v65[5];
        v103 = v65[4];

LABEL_30:
        if (qword_28045DF80 != -1)
        {
          swift_once();
        }

        v67 = sub_26C009A5C();
        __swift_project_value_buffer(v67, qword_280478EE8);

        v68 = sub_26C009A3C();
        v69 = sub_26C00AA0C();

        if (os_log_type_enabled(v68, v69))
        {
          v70 = swift_slowAlloc();
          v71 = swift_slowAlloc();
          v101 = v66;
          v72 = v71;
          v109 = v71;
          *v70 = 136315394;

          v73 = sub_26BE3D034();
          v75 = v74;

          v76 = sub_26BE29740(v73, v75, &v109);

          *(v70 + 4) = v76;
          *(v70 + 12) = 2080;
          *(v70 + 14) = sub_26BE29740(v102, v59, &v109);
          _os_log_impl(&dword_26BDFE000, v68, v69, "%s: credential in key package when attempting to add uri %s was invalid", v70, 0x16u);
          swift_arrayDestroy();
          v77 = v72;
          v66 = v101;
          MEMORY[0x26D69A4E0](v77, -1, -1);
          MEMORY[0x26D69A4E0](v70, -1, -1);
        }

        v78 = sub_26C009A3C();
        v79 = sub_26C00AA0C();

        if (os_log_type_enabled(v78, v79))
        {
          v80 = swift_slowAlloc();
          v81 = swift_slowAlloc();
          v109 = v81;
          *v80 = 136315650;

          v82 = sub_26BE3D034();
          v84 = v83;

          v85 = sub_26BE29740(v82, v84, &v109);

          *(v80 + 4) = v85;
          *(v80 + 12) = 2080;
          *(v80 + 14) = sub_26BE29740(v102, v59, &v109);
          *(v80 + 22) = 2080;
          if (v66)
          {
            v86 = v103;
          }

          else
          {
            v86 = 0x296C696E28;
          }

          if (v66)
          {
            v87 = v66;
          }

          else
          {
            v87 = 0xE500000000000000;
          }

          v88 = sub_26BE29740(v86, v87, &v109);

          *(v80 + 24) = v88;
          _os_log_impl(&dword_26BDFE000, v78, v79, "%s: supplied telURI %s may not match telURI from credential %s", v80, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x26D69A4E0](v81, -1, -1);
          MEMORY[0x26D69A4E0](v80, -1, -1);
        }

        else
        {
        }

        sub_26BE01654();
        swift_allocError();
        *v89 = 6;
        v89[112] = 9;
        swift_willThrow();
        sub_26BE2E01C(v118);
        sub_26BE2DBC4(&v114);
        __swift_destroy_boxed_opaque_existential_1(v117);
        v57 = v106;
        return __swift_destroy_boxed_opaque_existential_1(v57);
      }
    }

    v103 = 0;
    v66 = 0;
    goto LABEL_30;
  }

  return result;
}

uint64_t sub_26BE31F8C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_26BE31FB0, 0, 0);
}

uint64_t sub_26BE31FB0()
{
  v2 = v0[3];
  v1 = v0[4];

  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_26BE32070;
  v5 = v0[3];
  v4 = v0[4];

  return sub_26BE958B4();
}

uint64_t sub_26BE32070()
{
  v2 = *(*v1 + 40);
  v5 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v3 = sub_26BE32494;
  }

  else
  {
    v3 = sub_26BE32184;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26BE32184()
{
  v13 = v0;
  v1 = *(v0 + 24);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = sub_26BE328D4(*(v1 + 16), 0, &qword_28045E590, &qword_26C024670);
    v4 = sub_26BE33804(&v12, v3 + 2, v2, v1);

    sub_26BE2DA4C();
    if (v4 == v2)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v3 = MEMORY[0x277D84F90];
LABEL_5:
  *(v0 + 56) = v3;
  v5 = *(**(v0 + 32) + 472);
  v11 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v0 + 64) = v7;
  *v7 = v0;
  v7[1] = sub_26BE32358;
  v8 = *(v0 + 32);
  v9 = *(v0 + 16);

  return (v11)(v9, v3);
}

uint64_t sub_26BE32358()
{
  v2 = *(*v1 + 64);
  v3 = *v1;
  v3[9] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26BE324AC, 0, 0);
  }

  else
  {
    v4 = v3[7];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_26BE324AC()
{
  v1 = v0[7];

  v2 = v0[9];
  v3 = v0[1];

  return v3();
}

void *MLS.RCSGroup.deinit()
{
  v1 = v0[2];

  sub_26BE00258(v0[4], v0[5]);
  v2 = v0[6];

  sub_26BE0489C(v0[7], v0[8]);
  v3 = v0[13];

  __swift_destroy_boxed_opaque_existential_1(v0 + 14);
  return v0;
}

uint64_t MLS.RCSGroup.__deallocating_deinit()
{
  v1 = v0[2];

  sub_26BE00258(v0[4], v0[5]);
  v2 = v0[6];

  sub_26BE0489C(v0[7], v0[8]);
  v3 = v0[13];

  __swift_destroy_boxed_opaque_existential_1(v0 + 14);

  return swift_deallocClassInstance();
}

size_t sub_26BE32680(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
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
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v11);
  if (v9)
  {
    if (result - v10 != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * ((result - v10) / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_26BE3277C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E580, &qword_26C00E4E0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 29;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 2);
  return result;
}

void *sub_26BE32800(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E578, &unk_26C024610);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 3);
  return result;
}

void *sub_26BE328D4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
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
  v6 = swift_allocObject();
  v7 = _swift_stdlib_malloc_size(v6);
  result = v6;
  v10 = v7 - 32;
  v9 = v7 < 32;
  v11 = v7 - 17;
  if (!v9)
  {
    v11 = v10;
  }

  v6[2] = a1;
  v6[3] = 2 * (v11 >> 4);
  return result;
}

uint64_t sub_26BE329A8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v7 = result;
  if (!a2)
  {
    v8 = 0;
    goto LABEL_11;
  }

  v8 = a3;
  if (!a3)
  {
LABEL_11:
    *v7 = a4;
    v7[1] = v8;
    return v8;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = *(a4 + 16);
    if (v9)
    {
      v12 = a2;
      v13 = 0;
      v14 = a3 - 1;
      while (v13 < *(a4 + 16))
      {
        v15 = *(a5(0) - 8);
        v16 = *(v15 + 72);
        result = sub_26BE33B40(a4 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + v16 * v13, v12, a6);
        if (v14 == v13)
        {
          goto LABEL_11;
        }

        v12 += v16;
        if (v9 == ++v13)
        {
          goto LABEL_9;
        }
      }

      __break(1u);
      goto LABEL_13;
    }

LABEL_9:
    v8 = v9;
    goto LABEL_11;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_26BE32B1C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E520, &unk_26C016B80);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v49 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v49 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E528, &qword_26C00E4B0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v59 = &v49 - v20;
  v55 = _s9AttributeVMa(0);
  v57 = *(v55 - 8);
  v21 = *(v57 + 64);
  v22 = MEMORY[0x28223BE20](v55);
  v56 = &v49 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v54 = &v49 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E530, &unk_26C022480);
  v26 = v25 - 8;
  v27 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25);
  v29 = &v49 - v28;
  sub_26BE33AD8(v4, &v49 - v28, _s25RelativeDistinguishedNameVMa);
  v53 = *(v26 + 44);
  *&v29[v53] = 0;
  if (!a2)
  {
    a3 = 0;
    goto LABEL_25;
  }

  if (!a3)
  {
LABEL_25:
    sub_26BE33F30(v29, a1, &qword_28045E530, &unk_26C022480);
    return a3;
  }

  if ((a3 & 0x8000000000000000) != 0)
  {
    goto LABEL_28;
  }

  v58 = a2;
  v30 = a3;
  a3 = 0;
  v49 = v30;
  v50 = a1;
  v51 = v30 - 1;
  v52 = (v57 + 56);
  v31 = &qword_28045E520;
  while (1)
  {
    sub_26BE2E1F0(v29, v17, v31, &unk_26C016B80);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v32 = *(*v17 + 16);

      v33 = a3 == v32;
      v34 = v56;
      if (v33)
      {
        goto LABEL_22;
      }
    }

    else
    {
      sub_26BE2E258(v17, v31, &unk_26C016B80);
      v34 = v56;
      if (a3 == 1)
      {
LABEL_22:
        v46 = v59;
        (*v52)(v59, 1, 1, v55);
        sub_26BE2E258(v46, &qword_28045E528, &qword_26C00E4B0);
LABEL_24:
        a1 = v50;
        goto LABEL_25;
      }
    }

    sub_26BE2E1F0(v29, v15, v31, &unk_26C016B80);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      if (a3 >= *(*v15 + 16))
      {
        goto LABEL_27;
      }

      sub_26BE33B40(*v15 + ((*(v57 + 80) + 32) & ~*(v57 + 80)) + *(v57 + 72) * a3, v59, _s9AttributeVMa);
    }

    else
    {
      sub_26BE33AD8(v15, v34, _s9AttributeVMa);
      if (a3)
      {
        goto LABEL_29;
      }

      sub_26BE33AD8(v34, v59, _s9AttributeVMa);
    }

    sub_26BE2E1F0(v29, v12, v31, &unk_26C016B80);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v35 = *(*v12 + 16);
    }

    else
    {
      sub_26BE2E258(v12, v31, &unk_26C016B80);
      v35 = 1;
    }

    if (a3 >= v35)
    {
      break;
    }

    v36 = v17;
    v37 = v15;
    v38 = v12;
    v39 = v8;
    v40 = v31;
    v41 = v52;
    *&v29[v53] = a3 + 1;
    v42 = v59;
    (*v41)(v59, 0, 1, v55);
    v43 = v42;
    v44 = v54;
    sub_26BE33AD8(v43, v54, _s9AttributeVMa);
    v45 = v58;
    sub_26BE33AD8(v44, v58, _s9AttributeVMa);
    if (v51 == a3)
    {
      a3 = v49;
      goto LABEL_24;
    }

    v58 = v45 + *(v57 + 72);
    ++a3;
    v31 = v40;
    v8 = v39;
    v12 = v38;
    v15 = v37;
    v17 = v36;
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  v61 = 0;
  v62 = 0xE000000000000000;
  sub_26C00AC1C();

  v61 = 0x207865646E69;
  v62 = 0xE600000000000000;
  v60 = a3;
  v48 = sub_26C00AEFC();
  MEMORY[0x26D699090](v48);

  MEMORY[0x26D699090](0x20666F2074756F20, 0xEE0073646E756F62);
  result = sub_26C00AD6C();
  __break(1u);
  return result;
}

void *sub_26BE33124(void *result, _DWORD *a2, uint64_t a3, uint64_t a4)
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
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + ((v9 << 8) | (4 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
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
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void *sub_26BE33224(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
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
      v14 = *(a4 + 48) + ((v9 << 9) | (8 * __clz(__rbit64(v7))));
      v15 = *v14;
      LODWORD(v14) = *(v14 + 4);
      v7 &= v7 - 1;
      *a2 = v15;
      *(a2 + 4) = v14;
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      a2 += 8;
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
      v17 = v9 + 1;
    }

    else
    {
      v17 = (63 - v6) >> 6;
    }

    v9 = v17 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void *sub_26BE33330(void *result, void *a2, uint64_t a3, uint64_t a4)
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
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_26BE33488(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
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
      v14 = *(a4 + 48) + ((v9 << 10) | (16 * __clz(__rbit64(v7))));
      v15 = *v14;
      v16 = *(v14 + 8);
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

void *sub_26BE33594(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
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
      v14 = *(a4 + 48) + ((v9 << 10) | (16 * __clz(__rbit64(v7))));
      v15 = *v14;
      v16 = *(v14 + 8);
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

void *sub_26BE336A0(void *result, _OWORD *a2, uint64_t a3, uint64_t a4)
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
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(*(a4 + 48) + ((v12 << 10) | (16 * v17)));
      *v11 = v18;
      if (v14 == v10)
      {
        sub_26BE00608(v18, *(&v18 + 1));
        goto LABEL_24;
      }

      ++v11;
      sub_26BE00608(v18, *(&v18 + 1));
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_26BE33804(void *result, _OWORD *a2, uint64_t a3, uint64_t a4)
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
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(*(a4 + 56) + ((v12 << 10) | (16 * v17)));
      *v11 = v18;
      if (v14 == v10)
      {
        sub_26BE00608(v18, *(&v18 + 1));
        goto LABEL_24;
      }

      ++v11;
      sub_26BE00608(v18, *(&v18 + 1));
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t dispatch thunk of MLS.RCSGroup.addMembersForUris(packages:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 728);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_26BE28F58;

  return v10(a1, a2);
}

uint64_t sub_26BE33AD8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_26BE33B40(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_26BE33BA8(unsigned int (**a1)(char *, uint64_t, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = _s9AttributeVMa(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E528, &qword_26C00E4B0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v28 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E588, &qword_26C00E4E8);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = &v28 - v22;
  sub_26BE33AD8(v4, v19, _s9AttributeVMa);
  v31 = v9;
  v24 = *(v9 + 56);
  v24(v19, 0, 1, v8);
  v30 = v24;
  v24(v23, 1, 1, v8);
  result = sub_26BE33EC0(v19, v23);
  if (!a2)
  {
LABEL_10:
    a3 = 0;
    goto LABEL_13;
  }

  if (!a3)
  {
LABEL_13:
    sub_26BE33F30(v23, a1, &qword_28045E588, &qword_26C00E4E8);
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v29 = a1;
    a1 = (v31 + 48);
    v26 = 1;
    while (1)
    {
      sub_26BE33F30(v23, v17, &qword_28045E528, &qword_26C00E4B0);
      v30(v23, 1, 1, v8);
      if ((*a1)(v17, 1, v8) == 1)
      {
        break;
      }

      sub_26BE33AD8(v17, v12, _s9AttributeVMa);
      sub_26BE33AD8(v12, a2, _s9AttributeVMa);
      if (a3 == v26)
      {
        goto LABEL_12;
      }

      a2 += *(v31 + 72);
      if (__OFADD__(v26++, 1))
      {
        __break(1u);
        goto LABEL_10;
      }
    }

    sub_26BE2E258(v17, &qword_28045E528, &qword_26C00E4B0);
    a3 = v26 - 1;
LABEL_12:
    a1 = v29;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t sub_26BE33EC0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E528, &qword_26C00E4B0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_26BE33F30(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

void *sub_26BE33F9C(void *result, _OWORD *a2, uint64_t a3, uint64_t a4)
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
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(*(a4 + 48) + ((v12 << 10) | (16 * v17)));
      *v11 = v18;
      if (v14 == v10)
      {
        sub_26BE00608(v18, *(&v18 + 1));
        goto LABEL_24;
      }

      ++v11;
      sub_26BE00608(v18, *(&v18 + 1));
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

_WORD *MLS.Extension.Extension.init(type:data:)@<X0>(_WORD *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = *result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  return result;
}

uint64_t static MLS.Extension.Extension.== infix(_:_:)(unsigned __int16 *a1, unsigned __int16 *a2)
{
  if (*a1 == *a2)
  {
    return sub_26BE02DEC(*(a1 + 1), *(a1 + 2), *(a2 + 1), *(a2 + 2));
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_26BE34190(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_26BE341D8(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_26BE34228(void *a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a1[1];
  v2 = a1[2];
  v4 = a1[3];
  v21 = bswap32(*a1) >> 16;
  v24 = MEMORY[0x277D838B0];
  v25 = MEMORY[0x277CC9C18];
  *&v22 = &v21;
  *(&v22 + 1) = &v22;
  v5 = __swift_project_boxed_opaque_existential_1(&v22, MEMORY[0x277D838B0]);
  v7 = *v5;
  v6 = v5[1];
  sub_26C00908C();
  __swift_destroy_boxed_opaque_existential_1(&v22);
  v22 = xmmword_26C00BBD0;
  v23 = 0;
  v8 = sub_26BE34834(0, v3);
  if (!v1)
  {
    v9 = v8;
    v12 = sub_26BF30414(v8);
    sub_26BF2A30C(&v22);
    sub_26BE00258(v22, *(&v22 + 1));
    v13 = v12 + v9;
    if (__OFADD__(v12, v9))
    {
      __break(1u);
    }

    else
    {
      v14 = v13 + 2;
      if (!__OFADD__(v13, 2))
      {
        v15 = v4 >> 62;
        if ((v4 >> 62) > 1)
        {
          if (v15 != 2)
          {
            v16 = 0;
            goto LABEL_17;
          }

          v18 = *(v2 + 16);
          v17 = *(v2 + 24);
          v16 = v17 - v18;
          if (!__OFSUB__(v17, v18))
          {
LABEL_17:
            v19 = sub_26BF30414(v16);
            sub_26BE11228(v2, v4);
            v20 = v19 + v16;
            if (!__OFADD__(v19, v16))
            {
              result = v14 + v20;
              if (!__OFADD__(v14, v20))
              {
                goto LABEL_4;
              }

              goto LABEL_23;
            }

LABEL_22:
            __break(1u);
LABEL_23:
            __break(1u);
LABEL_24:
            __break(1u);
          }

          __break(1u);
        }

        else if (!v15)
        {
          v16 = BYTE6(v4);
          goto LABEL_17;
        }

        if (__OFSUB__(HIDWORD(v2), v2))
        {
          goto LABEL_24;
        }

        v16 = HIDWORD(v2) - v2;
        goto LABEL_17;
      }
    }

    __break(1u);
    goto LABEL_22;
  }

  result = sub_26BE00258(v22, *(&v22 + 1));
LABEL_4:
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_26BE343E4@<X0>(uint64_t a1@<X8>)
{
  v3 = v1;
  v5 = sub_26BEE6180();
  if ((v5 & 0x10000) != 0)
  {
    goto LABEL_8;
  }

  v41 = v5;
  v7 = *v1;
  v6 = v1[1];
  v8 = v1[2];
  sub_26BE00608(*v3, v3[1]);
  sub_26BE00608(v7, v6);
  sub_26BF30764(v3, &v42);
  if (v2)
  {
    sub_26BE00258(*v3, v3[1]);
    *v3 = v7;
    v3[1] = v6;
    v3[2] = v8;
    swift_willThrow();
LABEL_4:
    sub_26BE00258(*v3, v3[1]);
    *v3 = v7;
    v3[1] = v6;
    v3[2] = v8;
    return swift_willThrow();
  }

  if (v43)
  {
    sub_26BE00258(*v3, v3[1]);
    *v3 = v7;
    v3[1] = v6;
    v9 = v6;
    v10 = v7;
    v3[2] = v8;
LABEL_7:
    sub_26BE00258(v10, v9);
    *v3 = v7;
    v3[1] = v6;
    v3[2] = v8;
LABEL_8:
    sub_26BE01600();
    swift_allocError();
    *v11 = 1;
    return swift_willThrow();
  }

  v37 = v8;
  v13 = v42;
  sub_26BE00258(v7, v6);
  if (v13 > 100000000)
  {
    sub_26BE01600();
    swift_allocError();
    *v14 = 5;
    swift_willThrow();
    v8 = v37;
    goto LABEL_4;
  }

  result = sub_26BF2A44C(v13);
  if (v15 >> 60 == 15)
  {
    v10 = *v3;
    v9 = v3[1];
    v8 = v37;
    goto LABEL_7;
  }

  v42 = result;
  v43 = v15;
  v44 = v16;
  v45 = MEMORY[0x277D84F90];
  v39 = v6;
  v40 = v7;
  for (i = a1; ; a1 = i)
  {
    v17 = v15 >> 62;
    if ((v15 >> 62) > 1)
    {
      if (v17 == 2)
      {
        v18 = *(result + 24);
      }

      else
      {
        v18 = 0;
      }
    }

    else if (v17)
    {
      v18 = result >> 32;
    }

    else
    {
      v18 = BYTE6(v15);
    }

    v19 = __OFSUB__(v18, v16);
    v20 = v18 - v16;
    if (v19)
    {
      __break(1u);
LABEL_42:
      __break(1u);
      return result;
    }

    if (v20 < 1)
    {
      break;
    }

    v21 = sub_26BF2F7B0();
    v23 = v22;
    v24 = sub_26BF2F7B0();
    v26 = v25;
    v27 = sub_26BF2F7B0();
    v29 = v28;
    sub_26BE00608(v21, v23);
    sub_26BE00608(v24, v26);
    sub_26BE00608(v27, v29);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v45 = sub_26BEECA34(0, *(v45 + 2) + 1, 1, v45);
    }

    v31 = *(v45 + 2);
    v30 = *(v45 + 3);
    if (v31 >= v30 >> 1)
    {
      v45 = sub_26BEECA34((v30 > 1), v31 + 1, 1, v45);
    }

    sub_26BE00258(v21, v23);
    sub_26BE00258(v24, v26);
    sub_26BE00258(v27, v29);
    v32 = v45;
    *(v45 + 2) = v31 + 1;
    v33 = &v32[48 * v31];
    *(v33 + 4) = v21;
    *(v33 + 5) = v23;
    *(v33 + 6) = v24;
    *(v33 + 7) = v26;
    *(v33 + 8) = v27;
    *(v33 + 9) = v29;
    result = v42;
    v15 = v43;
    v16 = v44;
    v6 = v39;
    v7 = v40;
  }

  if (v17 > 1)
  {
    v8 = v37;
    if (v17 == 2)
    {
      v34 = *(result + 24);
    }

    else
    {
      v34 = 0;
    }
  }

  else
  {
    if (v17)
    {
      v34 = result >> 32;
    }

    else
    {
      v34 = BYTE6(v15);
    }

    v8 = v37;
  }

  if (__OFSUB__(v34, v16))
  {
    goto LABEL_42;
  }

  if (v34 != v16)
  {
    sub_26BE01654();
    swift_allocError();
    *v35 = 0;
    v35[112] = 1;
    swift_willThrow();

    sub_26BE00258(v42, v43);
    goto LABEL_4;
  }

  sub_26BE00258(result, v15);
  sub_26BE00258(v7, v6);
  result = sub_26BF2F7B0();
  *a1 = v41;
  *(a1 + 8) = v45;
  *(a1 + 16) = result;
  *(a1 + 24) = v36;
  return result;
}

uint64_t sub_26BE34834(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16) + 1;
  v5 = (a2 + 40);
  while (1)
  {
    v6 = v4 - 1;
    if (!v6)
    {
      return v3;
    }

    v8 = *(v5 - 1);
    v7 = *v5;
    v9 = v5[2];
    v62 = v5[1];
    v10 = v5[3];
    v11 = v5[4];
    v12 = v7 >> 62;
    v51 = v5;
    if ((v7 >> 62) <= 1)
    {
      if (v12)
      {
        LODWORD(v13) = HIDWORD(v8) - v8;
        if (__OFSUB__(HIDWORD(v8), v8))
        {
          goto LABEL_50;
        }

        v13 = v13;
      }

      else
      {
        v13 = BYTE6(v7);
      }

      goto LABEL_12;
    }

    if (v12 == 2)
    {
      v15 = *(v8 + 16);
      v14 = *(v8 + 24);
      v16 = __OFSUB__(v14, v15);
      v13 = v14 - v15;
      if (v16)
      {
        goto LABEL_51;
      }

LABEL_12:
      v57 = v13;
      goto LABEL_14;
    }

    v57 = 0;
LABEL_14:
    sub_26BE00608(v8, v7);
    v56 = v9;
    sub_26BE00608(v62, v9);
    sub_26BE00608(v10, v11);
    v17 = sub_26BF30414(v57);
    v53 = v7;
    v54 = v8;
    if (v2)
    {
      goto LABEL_43;
    }

    v18 = v17;
    v55 = v10;
    v19 = v11;
    v50 = v6;
    v60 = MEMORY[0x277CC9318];
    v61 = MEMORY[0x277CC9300];
    v58 = v8;
    v59 = v7;
    v20 = __swift_project_boxed_opaque_existential_1(&v58, MEMORY[0x277CC9318]);
    v21 = *v20;
    v22 = v20[1];
    sub_26BE00608(v8, v7);
    sub_26BE121A0(v21, v22);
    result = __swift_destroy_boxed_opaque_existential_1(&v58);
    v23 = v18 + v57;
    if (__OFADD__(v18, v57))
    {
      break;
    }

    v24 = v56 >> 62;
    v52 = v3;
    if ((v56 >> 62) > 1)
    {
      v25 = v19;
      v26 = v62;
      if (v24 == 2)
      {
        v29 = *(v62 + 16);
        v28 = *(v62 + 24);
        v27 = v28 - v29;
        if (__OFSUB__(v28, v29))
        {
          goto LABEL_53;
        }
      }

      else
      {
        v27 = 0;
      }
    }

    else
    {
      v25 = v19;
      v26 = v62;
      if (v24)
      {
        if (__OFSUB__(HIDWORD(v62), v62))
        {
          goto LABEL_52;
        }

        v27 = HIDWORD(v62) - v62;
      }

      else
      {
        v27 = BYTE6(v56);
      }
    }

    sub_26BE00608(v26, v56);
    sub_26BE00608(v55, v25);
    v30 = sub_26BF30414(v27);
    v60 = MEMORY[0x277CC9318];
    v61 = MEMORY[0x277CC9300];
    v58 = v26;
    v59 = v56;
    v31 = __swift_project_boxed_opaque_existential_1(&v58, MEMORY[0x277CC9318]);
    v32 = *v31;
    v33 = v31[1];
    sub_26BE00608(v26, v56);
    sub_26BE121A0(v32, v33);
    result = __swift_destroy_boxed_opaque_existential_1(&v58);
    v34 = v30 + v27;
    if (__OFADD__(v30, v27))
    {
      goto LABEL_46;
    }

    v11 = v19;
    v35 = v19 >> 62;
    if ((v19 >> 62) > 1)
    {
      v10 = v55;
      if (v35 == 2)
      {
        v38 = *(v55 + 16);
        v37 = *(v55 + 24);
        v36 = v37 - v38;
        if (__OFSUB__(v37, v38))
        {
          goto LABEL_55;
        }
      }

      else
      {
        v36 = 0;
      }
    }

    else
    {
      v10 = v55;
      if (v35)
      {
        if (__OFSUB__(HIDWORD(v55), v55))
        {
          goto LABEL_54;
        }

        v36 = HIDWORD(v55) - v55;
      }

      else
      {
        v36 = BYTE6(v11);
      }
    }

    v39 = sub_26BF30414(v36);
    v62 = v36;
    v40 = v23;
    v41 = v34;
    v60 = MEMORY[0x277CC9318];
    v61 = MEMORY[0x277CC9300];
    v58 = v10;
    v59 = v11;
    v42 = __swift_project_boxed_opaque_existential_1(&v58, MEMORY[0x277CC9318]);
    v43 = v26;
    v45 = *v42;
    v44 = v42[1];
    sub_26BE00608(v10, v11);
    sub_26BE121A0(v45, v44);
    __swift_destroy_boxed_opaque_existential_1(&v58);
    sub_26BE00258(v43, v56);
    sub_26BE00258(v10, v11);
    sub_26BE00258(v54, v53);
    sub_26BE00258(v43, v56);
    result = sub_26BE00258(v10, v11);
    v46 = v39 + v62;
    if (__OFADD__(v39, v62))
    {
      goto LABEL_47;
    }

    v16 = __OFADD__(v41, v46);
    v47 = v41 + v46;
    if (v16)
    {
      goto LABEL_48;
    }

    v16 = __OFADD__(v40, v47);
    v48 = v40 + v47;
    if (v16)
    {
      goto LABEL_49;
    }

    v5 = v51 + 6;
    v3 = v52 + v48;
    v4 = v50;
    if (__OFADD__(v52, v48))
    {
      __break(1u);
LABEL_43:
      v49 = v62;
      sub_26BE00258(v54, v53);
      sub_26BE00258(v49, v56);
      sub_26BE00258(v10, v11);
      return v3;
    }
  }

  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
  return result;
}

unint64_t sub_26BE34C94(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  v3 = v2 >> 62;
  if ((v2 >> 62) > 1)
  {
    if (v3 != 2)
    {
      goto LABEL_7;
    }

    v4 = *(v1 + 16);
  }

  else if (!v3)
  {
    goto LABEL_7;
  }

  sub_26BE00608(*(a1 + 8), v2);
LABEL_7:
  v8 = v1;
  v5 = sub_26BEE6028();
  sub_26BE00258(v8, v2);
  if ((v5 & 0x100000000) != 0)
  {
    sub_26BE01600();
    swift_allocError();
    *v6 = 1;
    swift_willThrow();
  }

  return v5;
}

uint64_t static MLS.Client.Configuration.rcsConfiguration(anchors:validateCredentialsOverride:disallowBasicCredentials:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v50 = a3;
  v48 = a2;
  v44 = a1;
  v49 = sub_26C009F3C();
  v47 = *(v49 - 8);
  v5 = *(v47 + 64);
  MEMORY[0x28223BE20](v49);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_26C009EDC();
  v8 = *(v46 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v46);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_26C009EEC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_26C009EAC();
  v17 = *(v45 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v45);
  v20 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v12;
  v22 = v48;
  (*(v13 + 104))(v16, *MEMORY[0x277CC5450], v21);
  (*(v8 + 104))(v11, *MEMORY[0x277CC5438], v46);
  (*(v47 + 104))(v7, *MEMORY[0x277CC5460], v49);
  sub_26C009E7C();
  v23 = type metadata accessor for MLS.Cryptography.Ciphersuite.SuitePrimitives(0);
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  v26 = swift_allocObject();
  (*(v17 + 32))(v26 + OBJC_IVAR____TtCVOO8SwiftMLS3MLS12Cryptography11Ciphersuite15SuitePrimitives_hpke, v20, v45);
  *(v26 + OBJC_IVAR____TtCVOO8SwiftMLS3MLS12Cryptography11Ciphersuite15SuitePrimitives_hash) = 0;
  static MLS.Storage.StorageOptions.testInMemoryOptions.getter(v54);
  v52 = &type metadata for SwiftMLSFeatureFlags;
  v53 = sub_26BE295D8();
  LOBYTE(v51[0]) = 1;
  LOBYTE(v17) = sub_26C00929C();
  __swift_destroy_boxed_opaque_existential_1(v51);
  if (v17 & 1) != 0 || v22 != 2 && (v22)
  {
    v27 = type metadata accessor for MLS.Identity.X509RCSIdentityProvider();
    v28 = swift_allocObject();
    *(v28 + 24) = 2;
    *(v28 + 16) = v44;
    swift_beginAccess();
    *(v28 + 24) = v22;
    v29 = &protocol witness table for MLS.Identity.X509RCSIdentityProvider;
    v52 = v27;
    v53 = &protocol witness table for MLS.Identity.X509RCSIdentityProvider;
    v51[0] = v28;
  }

  else
  {
    v27 = type metadata accessor for MLS.Identity.PermissiveRCSIdentityProvider();
    v30 = swift_allocObject();
    v29 = &protocol witness table for MLS.Identity.PermissiveRCSIdentityProvider;
    v52 = v27;
    v53 = &protocol witness table for MLS.Identity.PermissiveRCSIdentityProvider;
    v51[0] = v30;
  }

  sub_26BE14FF4(v54, a4 + 72);
  v31 = __swift_project_boxed_opaque_existential_1(v51, v27);
  v32 = v29[1];
  *(a4 + 224) = v27;
  *(a4 + 232) = v32;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((a4 + 200));
  (*(*(v27 - 8) + 16))(boxed_opaque_existential_1, v31, v27);
  *(a4 + 280) = 0x8AC7230489E80000;
  *(a4 + 288) = 0;
  v34 = MEMORY[0x277D84F90];
  *(a4 + 296) = MEMORY[0x277D84F90];
  *(a4 + 304) = v34;
  *(a4 + 312) = v34;
  *(a4 + 320) = v34;
  *(a4 + 328) = &unk_287CBA400;
  *(a4 + 336) = xmmword_26C00DA40;
  *(a4 + 353) = 514;
  *a4 = 257;
  *(a4 + 8) = 256;
  *(a4 + 10) = 1;
  *(a4 + 16) = xmmword_26C00DA40;
  *(a4 + 32) = 1;
  *(a4 + 40) = xmmword_26C00CDC0;
  *(a4 + 56) = 16;
  *(a4 + 64) = v26;
  *(a4 + 240) = 0xD00000000000001ALL;
  *(a4 + 248) = 0x800000026C02AD20;
  *(a4 + 256) = 0;
  *(a4 + 264) = 0;
  *(a4 + 352) = v22;
  v35 = v50;
  v36 = v50;
  *(a4 + 272) = 1;
  if (v36 == 2 || (v35 & 1) == 0)
  {
    v37 = &unk_287CBA450;
  }

  else
  {
    v37 = &unk_287CBA428;
  }

  sub_26BE29538(v54);
  __swift_destroy_boxed_opaque_existential_1(v51);
  v38 = *(a4 + 296);
  v39 = *(a4 + 304);
  v40 = *(a4 + 312);
  v41 = *(a4 + 320);
  v42 = *(a4 + 328);

  *(a4 + 296) = &unk_287CBA478;
  *(a4 + 304) = &unk_287CBA4A0;
  *(a4 + 312) = &unk_287CBA4C8;
  *(a4 + 320) = &unk_287CBA4F8;
  *(a4 + 328) = v37;
  return result;
}

uint64_t MLS.RCSClient.CredentialSigningRequest.certificateSigningRequest.getter()
{
  v1 = *v0;
  sub_26BE00608(*v0, *(v0 + 8));
  return v1;
}

uint64_t MLS.RCSClient.CredentialSigningRequest.certificateSigningRequest.setter(uint64_t a1, uint64_t a2)
{
  result = sub_26BE00258(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t MLS.RCSClient.CredentialSigningRequest.participantInfo.getter()
{
  v1 = *(v0 + 16);
  sub_26BE00608(v1, *(v0 + 24));
  return v1;
}

uint64_t MLS.RCSClient.CredentialSigningRequest.participantInfo.setter(uint64_t a1, uint64_t a2)
{
  result = sub_26BE00258(*(v2 + 16), *(v2 + 24));
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t MLS.RCSClient.CredentialSigningRequest.telURI.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t MLS.RCSClient.CredentialSigningRequest.telURI.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t MLS.RCSClient.CredentialSigningRequest.name.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t MLS.RCSClient.CredentialSigningRequest.name.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 56);

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

unint64_t sub_26BE35538()
{
  v1 = 0x7069636974726170;
  v2 = 0x4952556C6574;
  if (*v0 != 2)
  {
    v2 = 1701667182;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000019;
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

uint64_t sub_26BE355B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26BE3BEC4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26BE355F8(uint64_t a1)
{
  v2 = sub_26BE3AF70();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26BE35634(uint64_t a1)
{
  v2 = sub_26BE3AF70();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MLS.RCSClient.CredentialSigningRequest.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E628, &qword_26C00E670);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v16 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v17 = v1[3];
  v18 = v10;
  v11 = v1[4];
  v16[3] = v1[5];
  v16[4] = v11;
  v12 = v1[6];
  v16[1] = v1[7];
  v16[2] = v12;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26BE00608(v8, v9);
  sub_26BE3AF70();
  sub_26C00B10C();
  v20 = v8;
  v21 = v9;
  v22 = 0;
  sub_26BE3AFC4();
  v14 = v19;
  sub_26C00AEBC();
  sub_26BE00258(v20, v21);
  if (!v14)
  {
    v20 = v18;
    v21 = v17;
    v22 = 1;
    sub_26BE00608(v18, v17);
    sub_26C00AEBC();
    sub_26BE00258(v20, v21);
    LOBYTE(v20) = 2;
    sub_26C00AE9C();
    LOBYTE(v20) = 3;
    sub_26C00AE9C();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t MLS.RCSClient.CredentialSigningRequest.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E640, qword_26C00E678);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v25 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26BE3AF70();
  sub_26C00B0FC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v11 = a2;
  LOBYTE(v28[0]) = 0;
  sub_26BE3B018();
  sub_26C00AE3C();
  v27 = *(&v31[0] + 1);
  v12 = *&v31[0];
  LOBYTE(v28[0]) = 1;
  sub_26C00AE3C();
  v26 = v31[0];
  LOBYTE(v31[0]) = 2;
  *&v25 = sub_26C00AE1C();
  *(&v25 + 1) = v13;
  v36 = 3;
  v14 = sub_26C00AE1C();
  v15 = v9;
  v17 = v16;
  (*(v6 + 8))(v15, v5);
  v18 = v12;
  *&v28[0] = v12;
  v19 = v27;
  v21 = *(&v25 + 1);
  v20 = v26;
  *(&v28[0] + 1) = v27;
  v28[1] = v26;
  v29 = v25;
  *&v30 = v14;
  *(&v30 + 1) = v17;
  v22 = v26;
  *v11 = v28[0];
  v11[1] = v22;
  v23 = v30;
  v11[2] = v29;
  v11[3] = v23;
  sub_26BE3B06C(v28, v31);
  __swift_destroy_boxed_opaque_existential_1(a1);
  *&v31[0] = v18;
  *(&v31[0] + 1) = v19;
  v31[1] = __PAIR128__(*(&v26 + 1), v20);
  v32 = v25;
  v33 = v21;
  v34 = v14;
  v35 = v17;
  return sub_26BE3B0A4(v31);
}

uint64_t sub_26BE35C0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_26BE35C30, 0, 0);
}

uint64_t sub_26BE35C30()
{
  v1 = v0[4];
  v2 = v0[5];

  v3 = swift_task_alloc();
  v0[6] = v3;
  *v3 = v0;
  v3[1] = sub_26BE3C268;
  v5 = v0[4];
  v4 = v0[5];
  v6 = v0[2];
  v7 = v0[3];

  return (sub_26BE9A008)(v6);
}

uint64_t sub_26BE35CF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[121] = a4;
  v4[120] = a3;
  v4[119] = a2;
  v4[118] = a1;
  v5 = _s25CertificateSigningRequestVMa();
  v4[122] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[123] = swift_task_alloc();
  v7 = sub_26C00978C();
  v4[124] = v7;
  v8 = *(v7 - 8);
  v4[125] = v8;
  v9 = *(v8 + 64) + 15;
  v4[126] = swift_task_alloc();
  v4[127] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E680, &unk_26C00ECF8) - 8) + 64) + 15;
  v4[128] = swift_task_alloc();
  v11 = _s21RCSTBSParticipantInfoVMa();
  v4[129] = v11;
  v12 = *(v11 - 8);
  v4[130] = v12;
  v13 = *(v12 + 64) + 15;
  v4[131] = swift_task_alloc();
  v14 = _s18RCSParticipantInfoVMa();
  v4[132] = v14;
  v15 = *(*(v14 - 8) + 64) + 15;
  v4[133] = swift_task_alloc();
  v16 = sub_26C00928C();
  v4[134] = v16;
  v17 = *(v16 - 8);
  v4[135] = v17;
  v18 = *(v17 + 64) + 15;
  v4[136] = swift_task_alloc();
  v4[137] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26BE35F2C, 0, 0);
}

uint64_t sub_26BE35F2C()
{
  v124 = v0;
  if (qword_28045DF40 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 968);
  v2 = *(v0 + 960);
  v3 = sub_26C009A5C();
  __swift_project_value_buffer(v3, qword_280478E70);

  v4 = sub_26C009A3C();
  v5 = sub_26C00AA1C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 1096);
    v7 = *(v0 + 1080);
    v119 = *(v0 + 1072);
    v8 = *(v0 + 968);
    v9 = *(v0 + 960);
    v10 = *(v0 + 952);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v123[0] = v12;
    *v11 = 136315394;
    *(v11 + 4) = sub_26BE29740(v10, v9, v123);
    *(v11 + 12) = 2080;
    v13 = OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_clientUUID;
    swift_beginAccess();
    (*(v7 + 16))(v6, v8 + v13, v119);
    v14 = sub_26C00922C();
    v16 = v15;
    (*(v7 + 8))(v6, v119);
    v17 = sub_26BE29740(v14, v16, v123);

    *(v11 + 14) = v17;
    _os_log_impl(&dword_26BDFE000, v4, v5, "getting credential signing request for %s for client %s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D69A4E0](v12, -1, -1);
    MEMORY[0x26D69A4E0](v11, -1, -1);
  }

  v18 = *(v0 + 968);
  v19 = OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_participantPrivateKey;
  swift_beginAccess();
  sub_26BE2E1F0(v18 + v19, v0 + 416, &qword_28045E468, &qword_26C00ECA0);
  if (*(v0 + 440))
  {
    sub_26BE03890((v0 + 416), v0 + 376);
  }

  else
  {
    v20 = *(v0 + 968);
    v21 = OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_signaturePrivateKey;
    swift_beginAccess();
    sub_26BE038A8(v20 + v21, v0 + 376);
    if (*(v0 + 440))
    {
      sub_26BE2E258(v0 + 416, &qword_28045E468, &qword_26C00ECA0);
    }
  }

  v22 = *(v0 + 968);
  swift_beginAccess();
  sub_26BE295A0(v22 + 40, v0 + 16);
  v23 = *(v0 + 369);
  if (v23 == 2)
  {
    *(v0 + 480) = &type metadata for SwiftMLSFeatureFlags;
    *(v0 + 488) = sub_26BE295D8();
    *(v0 + 456) = 2;
    v24 = sub_26C00929C();
    sub_26BE29710(v0 + 16);
    __swift_destroy_boxed_opaque_existential_1((v0 + 456));
    if ((v24 & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  else
  {
    sub_26BE29710(v0 + 16);
    if ((v23 & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  v25 = sub_26C009A3C();
  v26 = sub_26C00AA1C();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_26BDFE000, v25, v26, "using participant key", v27, 2u);
    MEMORY[0x26D69A4E0](v27, -1, -1);
  }

  v28 = *(v0 + 968);
  v29 = *(v0 + 960);
  v30 = *(v0 + 952);

  sub_26BF7F748(v30, v29, v0 + 656);
  sub_26BE2E1F0(v0 + 656, v0 + 736, &qword_28045E468, &qword_26C00ECA0);
  if (*(v0 + 760))
  {
    sub_26BE03890((v0 + 736), v0 + 696);
    v31 = sub_26C009A3C();
    v32 = sub_26C00AA1C();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_26BDFE000, v31, v32, "Using retrieved or generated participant private key", v33, 2u);
      MEMORY[0x26D69A4E0](v33, -1, -1);
    }

    sub_26BE2E258(v0 + 656, &qword_28045E468, &qword_26C00ECA0);
    __swift_destroy_boxed_opaque_existential_1((v0 + 376));
    sub_26BE03890((v0 + 696), v0 + 376);
  }

  else
  {
    sub_26BE2E258(v0 + 656, &qword_28045E468, &qword_26C00ECA0);
    sub_26BE2E258(v0 + 736, &qword_28045E468, &qword_26C00ECA0);
  }

LABEL_20:
  v112 = *(v0 + 1088);
  v34 = *(v0 + 1080);
  v108 = *(v0 + 1072);
  v35 = *(v0 + 968);
  v115 = *(v0 + 960);
  v117 = *(v0 + 1064);
  v120 = *(v0 + 952);
  sub_26BE038A8(v0 + 376, v0 + 496);
  swift_beginAccess();
  sub_26BE3C038(v0 + 496, v18 + v19);
  swift_endAccess();
  v104 = *(v0 + 400);
  v113 = *(v0 + 408);
  v110 = __swift_project_boxed_opaque_existential_1((v0 + 376), v104);
  v36 = OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_signaturePrivateKey;
  swift_beginAccess();
  v99 = v36;
  sub_26BE038A8(v35 + v36, v0 + 576);
  v37 = *(v0 + 600);
  v38 = *(v0 + 608);
  __swift_project_boxed_opaque_existential_1((v0 + 576), v37);
  v39 = *(v38 + 40);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(v0 + 560) = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *(v0 + 568) = AssociatedConformanceWitness;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 536));
  v39(v37, v38);
  __swift_destroy_boxed_opaque_existential_1((v0 + 576));
  v42 = OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_clientUUID;
  swift_beginAccess();
  v101 = v35;
  v97 = *(v34 + 16);
  v98 = v42;
  v43 = v108;
  v97(v112, v35 + v42, v108);
  v44 = sub_26C00922C();
  v102 = v45;
  v109 = *(v34 + 8);
  v109(v112, v43);
  v46 = *(v104 - 8);
  v47 = *(v46 + 64) + 15;
  v48 = swift_task_alloc();
  (*(v46 + 16))(v48, v110, v104);
  v49 = *(AssociatedTypeWitness - 8);
  v50 = *(v49 + 64) + 15;
  v51 = swift_task_alloc();
  (*(v49 + 16))(v51, boxed_opaque_existential_1, AssociatedTypeWitness);

  sub_26BECCB00(v44, v102, v48, v51, v120, v115, v104, AssociatedTypeWitness, v117, v113, AssociatedConformanceWitness);
  v52 = *(v0 + 1064);
  v53 = *(v0 + 1056);
  v54 = *(v0 + 1040);
  v55 = *(v0 + 1032);
  v56 = *(v0 + 1024);

  __swift_destroy_boxed_opaque_existential_1((v0 + 536));
  sub_26BE2E1F0(v52 + *(v53 + 40), v56, &qword_28045E680, &unk_26C00ECF8);
  if ((*(v54 + 48))(v56, 1, v55) == 1)
  {
    sub_26BE2E258(*(v0 + 1024), &qword_28045E680, &unk_26C00ECF8);
    v57 = sub_26C009A3C();
    v58 = sub_26C00AA0C();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      *v59 = 0;
      _os_log_impl(&dword_26BDFE000, v57, v58, "no tbs participant info", v59, 2u);
      MEMORY[0x26D69A4E0](v59, -1, -1);
    }

    v60 = *(v0 + 1064);

    sub_26BE01654();
    swift_allocError();
    *v61 = 0;
    v61[112] = 9;
    swift_willThrow();
    sub_26BE3C204(v60, _s18RCSParticipantInfoVMa);
    __swift_destroy_boxed_opaque_existential_1((v0 + 376));
    v67 = *(v0 + 1096);
    v68 = *(v0 + 1088);
    v69 = *(v0 + 1064);
    v70 = *(v0 + 1048);
    v71 = *(v0 + 1024);
    v72 = *(v0 + 1016);
    v73 = *(v0 + 1008);
    v74 = *(v0 + 984);

    v75 = *(v0 + 8);
  }

  else
  {
    v62 = *(v0 + 1064);
    v63 = *(v0 + 1056);
    v64 = *(v0 + 1016);
    sub_26BE3C158(*(v0 + 1024), *(v0 + 1048));
    sub_26C00977C();
    sub_26BE3C1BC(&qword_28045E688, _s18RCSParticipantInfoVMa);
    sub_26C00976C();
    v65 = *(v0 + 984);
    v66 = **(v0 + 1048);
    sub_26BE038A8(v101 + v99, v0 + 616);

    sub_26BEC91F8(0, v66, (v0 + 616), MEMORY[0x277D84F90], v65);
    v77 = *(v0 + 1008);
    v78 = *(v0 + 984);
    v79 = *(v0 + 976);
    sub_26C00977C();
    sub_26BE3C1BC(&qword_28045E690, _s25CertificateSigningRequestVMa);
    sub_26C00976C();
    v80 = *(v0 + 1096);
    v118 = *(v0 + 1088);
    v81 = *(v0 + 1072);
    v114 = *(v0 + 1064);
    v111 = *(v0 + 1048);
    v122 = *(v0 + 1024);
    v82 = *(v0 + 1016);
    v83 = *(v0 + 1008);
    v84 = *(v0 + 1000);
    v95 = *(v0 + 992);
    v96 = *(v0 + 984);
    v85 = *(v0 + 960);
    v116 = *(v0 + 952);
    v86 = *(v0 + 944);
    v87 = sub_26C00971C();
    v88 = sub_26BE12418(v87);
    v105 = v89;
    v107 = v88;

    v90 = sub_26C00971C();
    v103 = sub_26BE12418(v90);
    v100 = v91;

    v97(v80, v101 + v98, v81);

    v92 = sub_26C00922C();
    v121 = v93;
    v109(v80, v81);
    v94 = *(v84 + 8);
    v94(v83, v95);
    sub_26BE3C204(v96, _s25CertificateSigningRequestVMa);
    v94(v82, v95);
    sub_26BE3C204(v111, _s21RCSTBSParticipantInfoVMa);
    sub_26BE3C204(v114, _s18RCSParticipantInfoVMa);
    __swift_destroy_boxed_opaque_existential_1((v0 + 376));
    *v86 = v107;
    v86[1] = v105;
    v86[2] = v103;
    v86[3] = v100;
    v86[4] = v116;
    v86[5] = v85;
    v86[6] = v92;
    v86[7] = v121;

    v75 = *(v0 + 8);
  }

  return v75();
}

uint64_t sub_26BE36CB8(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = v3;
  *(v4 + 16) = a2;
  *(v4 + 40) = *a1;
  return MEMORY[0x2822009F8](sub_26BE36CE4, 0, 0);
}

uint64_t sub_26BE36CE4()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[3];
  v4 = v0[4];

  sub_26BE04890(v1, v2);
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_26BE36DBC;
  v6 = v0[5];
  v7 = v0[6];
  v9 = v0[3];
  v8 = v0[4];
  v10 = v0[2];

  return sub_26BE9AA84(sub_26BE9AA84, v8, v10, v9, v8, v6, v7);
}

uint64_t sub_26BE36DBC()
{
  v2 = *(*v1 + 56);
  v5 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = sub_26BE36ED0;
  }

  else
  {
    v3 = sub_26BE26740;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26BE36EE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[120] = a6;
  v6[119] = a5;
  v6[118] = a4;
  v6[117] = a3;
  v6[116] = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4A8, &unk_26C00ECB0);
  v6[121] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v6[122] = swift_task_alloc();
  v6[123] = swift_task_alloc();
  v9 = sub_26C00928C();
  v6[124] = v9;
  v10 = *(v9 - 8);
  v6[125] = v10;
  v11 = *(v10 + 64) + 15;
  v6[126] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26BE37000, 0, 0);
}

uint64_t sub_26BE37000()
{
  v71 = v0;
  if (qword_28045DF40 != -1)
  {
    swift_once();
  }

  v69 = (v0 + 768);
  v1 = *(v0 + 944);
  v2 = *(v0 + 936);
  v3 = sub_26C009A5C();
  *(v0 + 1016) = __swift_project_value_buffer(v3, qword_280478E70);

  v4 = sub_26C009A3C();
  v5 = sub_26C00AA1C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 1008);
    v7 = *(v0 + 1000);
    v68 = *(v0 + 992);
    v8 = *(v0 + 944);
    v9 = *(v0 + 936);
    v10 = *(v0 + 928);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v70[0] = v12;
    *v11 = 136315394;
    *(v11 + 4) = sub_26BE29740(v10, v9, v70);
    *(v11 + 12) = 2080;
    v13 = OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_clientUUID;
    swift_beginAccess();
    (*(v7 + 16))(v6, v8 + v13, v68);
    v14 = sub_26C00922C();
    v16 = v15;
    (*(v7 + 8))(v6, v68);
    v17 = sub_26BE29740(v14, v16, v70);

    *(v11 + 14) = v17;
    _os_log_impl(&dword_26BDFE000, v4, v5, "loading credential for %s for client %s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D69A4E0](v12, -1, -1);
    MEMORY[0x26D69A4E0](v11, -1, -1);
  }

  v18 = *(v0 + 960);
  v19 = *(v0 + 952);
  v20 = *(v0 + 944);
  v21 = OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_signaturePrivateKey;
  swift_beginAccess();
  sub_26BE038A8(v20 + v21, v0 + 648);
  v22 = *(v0 + 672);
  v23 = *(v0 + 680);
  __swift_project_boxed_opaque_existential_1((v0 + 648), v22);
  v24 = *(v23 + 40);
  *(v0 + 536) = swift_getAssociatedTypeWitness();
  *(v0 + 544) = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1((v0 + 512));
  v24(v22, v23);
  __swift_destroy_boxed_opaque_existential_1((v0 + 648));
  *(v0 + 496) = v19;
  *(v0 + 504) = v18;
  swift_beginAccess();
  sub_26BE038A8(v20 + 240, v0 + 728);
  sub_26BE04890(v19, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E550, &qword_26C00E4C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E558, &unk_26C00ECC0);
  if (swift_dynamicCast())
  {
    sub_26BE03890(v69, v0 + 688);
    v25 = *(v0 + 712);
    v26 = *(v0 + 720);
    __swift_project_boxed_opaque_existential_1((v0 + 688), v25);
    if (qword_28045DF48 != -1)
    {
      swift_once();
    }

    v27 = *(v0 + 976);
    v28 = __swift_project_value_buffer(*(v0 + 968), qword_28045E4F0);
    swift_beginAccess();
    sub_26BE2E1F0(v28, v27, &qword_28045E4A8, &unk_26C00ECB0);
    v29 = sub_26C00921C();
    v30 = *(v29 - 8);
    v31 = *(v30 + 48);
    v32 = v31(v27, 1, v29);
    v33 = *(v0 + 976);
    if (v32 == 1)
    {
      v34 = *(v0 + 984);
      sub_26C00920C();
      if (v31(v33, 1, v29) != 1)
      {
        sub_26BE2E258(*(v0 + 976), &qword_28045E4A8, &unk_26C00ECB0);
      }
    }

    else
    {
      (*(v30 + 32))(*(v0 + 984), *(v0 + 976), v29);
    }

    v44 = *(v0 + 984);
    v45 = *(v0 + 936);
    v46 = *(v0 + 928);
    (*(v30 + 56))(v44, 0, 1, v29);
    v47 = (*(v26 + 16))(v0 + 496, v44, 1, 0, v46, v45, v25, v26);
    sub_26BE2E258(*(v0 + 984), &qword_28045E4A8, &unk_26C00ECB0);
    if (v47)
    {
      v48 = *(v0 + 944);
      sub_26BE18EF4((v0 + 496));
      v66 = swift_task_alloc();
      *(v0 + 1024) = v66;
      *v66 = v0;
      v66[1] = sub_26BE37AB8;
      v67 = *(v0 + 944);

      return sub_26BE18958();
    }

    v49 = sub_26C009A3C();
    v50 = sub_26C00AA1C();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&dword_26BDFE000, v49, v50, "RCS identity provider determined identity was invalid", v51, 2u);
      MEMORY[0x26D69A4E0](v51, -1, -1);
    }

    v52 = *(v0 + 944);

    *(v0 + 256) = 18;
    *(v0 + 264) = 0u;
    *(v0 + 280) = 0u;
    *(v0 + 296) = 0u;
    *(v0 + 312) = 0u;
    *(v0 + 328) = 0u;
    *(v0 + 344) = 0u;
    *(v0 + 360) = 0;
    *(v0 + 368) = 23;
    v53 = sub_26C00A45C();
    sub_26BE2DC18(v0 + 256, v0 + 376);
    v54 = swift_allocObject();
    v55 = *(v0 + 456);
    *(v54 + 88) = *(v0 + 440);
    *(v54 + 104) = v55;
    *(v54 + 120) = *(v0 + 472);
    v56 = *(v0 + 392);
    *(v54 + 24) = *(v0 + 376);
    *(v54 + 40) = v56;
    v57 = *(v0 + 424);
    *(v54 + 56) = *(v0 + 408);
    *(v54 + 16) = 1;
    *(v54 + 136) = *(v0 + 488);
    *(v54 + 72) = v57;
    *(v0 + 632) = sub_26BE2E3DC;
    *(v0 + 640) = v54;
    *(v0 + 600) = MEMORY[0x277D85DD0];
    *(v0 + 608) = 1107296256;
    *(v0 + 616) = sub_26BEB8234;
    *(v0 + 624) = &block_descriptor_93;
    v58 = _Block_copy((v0 + 600));
    v59 = *(v0 + 640);

    AnalyticsSendEventLazy();
    _Block_release(v58);

    sub_26BE7C9B8(1u, 0);
    sub_26BE2DC9C(v0 + 256);
    sub_26BE01654();
    swift_allocError();
    *v60 = 18;
    *(v60 + 8) = 0u;
    *(v60 + 24) = 0u;
    *(v60 + 40) = 0u;
    *(v60 + 56) = 0u;
    *(v60 + 72) = 0u;
    *(v60 + 88) = 0u;
    *(v60 + 104) = 0;
    *(v60 + 112) = 23;
    swift_willThrow();
    sub_26BE2DBC4(v0 + 496);
    __swift_destroy_boxed_opaque_existential_1((v0 + 688));
  }

  else
  {
    *(v0 + 800) = 0;
    *v69 = 0u;
    *(v0 + 784) = 0u;
    sub_26BE2E258(v69, &qword_28045E560, &qword_26C00E4D0);
    v35 = sub_26C009A3C();
    v36 = sub_26C00AA1C();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_26BDFE000, v35, v36, "failed to use RCS identity provider", v37, 2u);
      MEMORY[0x26D69A4E0](v37, -1, -1);
    }

    v38 = *(v0 + 944);

    *(v0 + 16) = 19;
    *(v0 + 24) = 0u;
    *(v0 + 40) = 0u;
    *(v0 + 56) = 0u;
    *(v0 + 72) = 0u;
    *(v0 + 88) = 0u;
    *(v0 + 104) = 0u;
    *(v0 + 120) = 0;
    *(v0 + 128) = 23;
    v39 = sub_26C00A45C();
    sub_26BE2DC18(v0 + 16, v0 + 136);
    v40 = swift_allocObject();
    *(v40 + 16) = 1;
    *(v40 + 88) = *(v0 + 200);
    *(v40 + 104) = *(v0 + 216);
    *(v40 + 120) = *(v0 + 232);
    *(v40 + 136) = *(v0 + 248);
    *(v40 + 24) = *(v0 + 136);
    *(v40 + 40) = *(v0 + 152);
    *(v40 + 56) = *(v0 + 168);
    *(v40 + 72) = *(v0 + 184);
    *(v0 + 584) = sub_26BE2DC78;
    *(v0 + 592) = v40;
    *(v0 + 552) = MEMORY[0x277D85DD0];
    *(v0 + 560) = 1107296256;
    *(v0 + 568) = sub_26BEB8234;
    *(v0 + 576) = &block_descriptor_0;
    v41 = _Block_copy((v0 + 552));
    v42 = *(v0 + 592);

    AnalyticsSendEventLazy();
    _Block_release(v41);

    sub_26BE7C9B8(1u, 0);
    sub_26BE2DC9C(v0 + 16);
    sub_26BE01654();
    swift_allocError();
    *v43 = 19;
    *(v43 + 8) = 0u;
    *(v43 + 24) = 0u;
    *(v43 + 40) = 0u;
    *(v43 + 56) = 0u;
    *(v43 + 72) = 0u;
    *(v43 + 88) = 0u;
    *(v43 + 104) = 0;
    *(v43 + 112) = 23;
    swift_willThrow();
    sub_26BE2DBC4(v0 + 496);
  }

  v61 = *(v0 + 1008);
  v62 = *(v0 + 984);
  v63 = *(v0 + 976);

  v64 = *(v0 + 8);

  return v64();
}

uint64_t sub_26BE37AB8()
{
  v2 = *(*v1 + 1024);
  v5 = *v1;
  *(*v1 + 1032) = v0;

  if (v0)
  {
    v3 = sub_26BE37E18;
  }

  else
  {
    v3 = sub_26BE37BCC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26BE37BCC()
{
  v25 = v0;
  v1 = v0[127];
  v2 = v0[118];
  v3 = v0[117];

  v4 = sub_26C009A3C();
  v5 = sub_26C00AA1C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[126];
    v7 = v0[125];
    v23 = v0[124];
    v8 = v0[118];
    v9 = v0[117];
    v10 = v0[116];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v24 = v12;
    *v11 = 136315394;
    *(v11 + 4) = sub_26BE29740(v10, v9, &v24);
    *(v11 + 12) = 2080;
    v13 = OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_clientUUID;
    swift_beginAccess();
    (*(v7 + 16))(v6, v8 + v13, v23);
    v14 = sub_26C00922C();
    v16 = v15;
    (*(v7 + 8))(v6, v23);
    v17 = sub_26BE29740(v14, v16, &v24);

    *(v11 + 14) = v17;
    _os_log_impl(&dword_26BDFE000, v4, v5, "successfully loaded credential for %s for client %s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D69A4E0](v12, -1, -1);
    MEMORY[0x26D69A4E0](v11, -1, -1);
  }

  sub_26BE2DBC4((v0 + 62));
  v18 = v0[126];
  v19 = v0[123];
  v20 = v0[122];
  __swift_destroy_boxed_opaque_existential_1(v0 + 86);

  v21 = v0[1];

  return v21();
}

uint64_t sub_26BE37E18()
{
  sub_26BE2DBC4((v0 + 62));
  __swift_destroy_boxed_opaque_existential_1(v0 + 86);
  v1 = v0[129];
  v2 = v0[126];
  v3 = v0[123];
  v4 = v0[122];

  v5 = v0[1];

  return v5();
}

uint64_t MLS.RCSClient.SignNonceInput.nonce.getter()
{
  v1 = *v0;
  sub_26BE00608(*v0, *(v0 + 8));
  return v1;
}

uint64_t MLS.RCSClient.SignNonceInput.nonce.setter(uint64_t a1, uint64_t a2)
{
  result = sub_26BE00258(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t MLS.RCSClient.SignNonceInput.telURI.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t MLS.RCSClient.SignNonceInput.telURI.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t MLS.RCSClient.SignNonceInput.init(nonce:telURI:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t MLS.RCSClient.SignNonceOutput.signature.getter()
{
  v1 = *v0;
  sub_26BE00608(*v0, *(v0 + 8));
  return v1;
}

uint64_t MLS.RCSClient.SignNonceOutput.signature.setter(uint64_t a1, uint64_t a2)
{
  result = sub_26BE00258(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t MLS.RCSClient.SignNonceOutput.init(signature:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

void sub_26BE38060(uint64_t a1, unint64_t a2)
{
  v4 = v3;
  v5 = v2;
  if (qword_28045DF40 != -1)
  {
    swift_once();
  }

  v8 = sub_26C009A5C();
  v9 = __swift_project_value_buffer(v8, qword_280478E70);

  v10 = sub_26C009A3C();
  v11 = sub_26C00A9FC();

  if (os_log_type_enabled(v10, v11))
  {
    v69 = v9;
    v12 = a1;
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *&v67[0] = v14;
    *v13 = 136315394;

    v15 = sub_26BE16A38();
    v17 = v16;

    v18 = sub_26BE29740(v15, v17, v67);

    *(v13 + 4) = v18;
    *(v13 + 12) = 2080;
    *(v13 + 14) = sub_26BE29740(v12, a2, v67);
    _os_log_impl(&dword_26BDFE000, v10, v11, "%s: loadParticipantPrivateKey for %s", v13, 0x16u);
    swift_arrayDestroy();
    v19 = v14;
    v4 = v3;
    MEMORY[0x26D69A4E0](v19, -1, -1);
    v20 = v13;
    a1 = v12;
    MEMORY[0x26D69A4E0](v20, -1, -1);
  }

  swift_beginAccess();
  sub_26BE295A0(v5 + 40, v67);
  v21 = v68;
  if (v68 == 2)
  {
    v65 = &type metadata for SwiftMLSFeatureFlags;
    v66 = sub_26BE295D8();
    LOBYTE(v64) = 2;
    v22 = sub_26C00929C();
    sub_26BE29710(v67);
    __swift_destroy_boxed_opaque_existential_1(&v64);
    if ((v22 & 1) == 0)
    {
LABEL_7:

      v23 = sub_26C009A3C();
      v24 = sub_26C00AA0C();

      if (!os_log_type_enabled(v23, v24))
      {
LABEL_10:

        sub_26BE01654();
        swift_allocError();
        v33 = 12;
LABEL_11:
        *v32 = v33;
        v32[112] = 9;
        swift_willThrow();
        return;
      }

      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *&v67[0] = v26;
      *v25 = 136315138;

      v27 = sub_26BE16A38();
      v29 = v28;

      v30 = sub_26BE29740(v27, v29, v67);

      *(v25 + 4) = v30;
      v31 = "%s: called loadParticipantPrivateKey without participantKey enabled in configuration";
LABEL_9:
      _os_log_impl(&dword_26BDFE000, v23, v24, v31, v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v26);
      MEMORY[0x26D69A4E0](v26, -1, -1);
      MEMORY[0x26D69A4E0](v25, -1, -1);
      goto LABEL_10;
    }
  }

  else
  {
    sub_26BE29710(v67);
    if ((v21 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  v34 = a2;
  swift_beginAccess();
  v35 = *(v5 + 32);
  if ((~v35 & 0x3000000000000000) != 0)
  {
    *&v67[0] = *(v5 + 24);
    *(&v67[0] + 1) = v35;
    MLS.Identity.Credential.telURI.getter();
    if (v36)
    {
      if (v36[2])
      {
        v37 = v4;
        v39 = v36[4];
        v38 = v36[5];

        if (v39 == a1 && v38 == v34)
        {

          v4 = v37;
        }

        else
        {
          v40 = sub_26C00AF2C();

          v4 = v37;
          if ((v40 & 1) == 0)
          {

            v56 = sub_26C009A3C();
            v57 = sub_26C00AA0C();

            if (os_log_type_enabled(v56, v57))
            {
              v58 = swift_slowAlloc();
              v59 = swift_slowAlloc();
              *&v67[0] = v59;
              *v58 = 136315138;

              v60 = sub_26BE16A38();
              v62 = v61;

              v63 = sub_26BE29740(v60, v62, v67);

              *(v58 + 4) = v63;
              _os_log_impl(&dword_26BDFE000, v56, v57, "%s: called loadParticipantPrivateKey without a telURI in the loaded credential", v58, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v59);
              MEMORY[0x26D69A4E0](v59, -1, -1);
              MEMORY[0x26D69A4E0](v58, -1, -1);
            }

            sub_26BE01654();
            swift_allocError();
            v33 = 7;
            goto LABEL_11;
          }
        }
      }

      else
      {
      }
    }
  }

  v41 = v34;
  sub_26BF7F748(a1, v34, &v64);
  if (!v4)
  {
    if (!v65)
    {
      sub_26BE2E258(&v64, &qword_28045E468, &qword_26C00ECA0);

      v23 = sub_26C009A3C();
      v24 = sub_26C00AA0C();

      if (!os_log_type_enabled(v23, v24))
      {
        goto LABEL_10;
      }

      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *&v67[0] = v26;
      *v25 = 136315138;

      v52 = sub_26BE16A38();
      v54 = v53;

      v55 = sub_26BE29740(v52, v54, v67);

      *(v25 + 4) = v55;
      v31 = "%s: called loadParticipantPrivateKey but failed to retrieve or generate participant private key";
      goto LABEL_9;
    }

    sub_26BE03890(&v64, v67);

    v42 = sub_26C009A3C();
    v43 = sub_26C00A9FC();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v69 = a1;
      v46 = v45;
      *&v64 = v45;
      *v44 = 136315394;

      v47 = sub_26BE16A38();
      v49 = v48;

      v50 = sub_26BE29740(v47, v49, &v64);

      *(v44 + 4) = v50;
      *(v44 + 12) = 2080;
      *(v44 + 14) = sub_26BE29740(v69, v41, &v64);
      _os_log_impl(&dword_26BDFE000, v42, v43, "%s: loadParticipantPrivateKey completed for %s", v44, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D69A4E0](v46, -1, -1);
      MEMORY[0x26D69A4E0](v44, -1, -1);
    }

    sub_26BE03890(v67, &v64);
    v51 = OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_participantPrivateKey;
    swift_beginAccess();
    sub_26BE3C038(&v64, v5 + v51);
    swift_endAccess();
  }
}

uint64_t sub_26BE38838(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  *(v3 + 32) = *v2;
  *(v3 + 40) = *a2;
  v4 = *(a2 + 24);
  *(v3 + 56) = *(a2 + 16);
  *(v3 + 64) = v4;
  return MEMORY[0x2822009F8](sub_26BE38890, 0, 0);
}

uint64_t sub_26BE38890()
{
  v1 = v0[8];
  v3 = v0[5];
  v2 = v0[6];
  v4 = v0[3];
  v5 = v0[4];

  sub_26BE00608(v3, v2);

  v6 = swift_task_alloc();
  v0[9] = v6;
  *v6 = v0;
  v6[1] = sub_26BE3897C;
  v7 = v0[7];
  v8 = v0[8];
  v9 = v0[5];
  v10 = v0[6];
  v11 = v0[2];
  v12 = v0[3];

  return (sub_26BE9B52C)(v11);
}

uint64_t sub_26BE3897C()
{
  v1 = *(*v0 + 72);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_26BE38A70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[19] = a5;
  v6[20] = a6;
  v6[17] = a3;
  v6[18] = a4;
  v6[15] = a1;
  v6[16] = a2;
  v7 = sub_26C00A4EC();
  v6[21] = v7;
  v8 = *(v7 - 8);
  v6[22] = v8;
  v9 = *(v8 + 64) + 15;
  v6[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26BE38B38, 0, 0);
}

uint64_t sub_26BE38B38()
{
  v78 = v0;
  if (qword_28045DF40 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 160);
  v3 = *(v0 + 136);
  v2 = *(v0 + 144);
  v4 = *(v0 + 128);
  v5 = sub_26C009A5C();
  __swift_project_value_buffer(v5, qword_280478E70);

  sub_26BE00608(v3, v2);

  v6 = sub_26C009A3C();
  v7 = sub_26C00A9FC();

  sub_26BE00258(v3, v2);

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 152);
    v74 = *(v0 + 160);
    v9 = *(v0 + 128);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *&v76 = v11;
    *v10 = 136315394;

    v12 = sub_26BE16A38();
    v14 = v13;

    v15 = sub_26BE29740(v12, v14, &v76);

    *(v10 + 4) = v15;
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_26BE29740(v8, v74, &v76);
    _os_log_impl(&dword_26BDFE000, v6, v7, "%s: signNonceWithParticipantKey for %s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D69A4E0](v11, -1, -1);
    MEMORY[0x26D69A4E0](v10, -1, -1);
  }

  v16 = *(v0 + 128);
  sub_26BE38060(*(v0 + 152), *(v0 + 160));
  v17 = *(v0 + 128);
  v18 = OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_participantPrivateKey;
  swift_beginAccess();
  sub_26BE2E1F0(v17 + v18, v0 + 56, &qword_28045E468, &qword_26C00ECA0);
  if (!*(v0 + 80))
  {
    v28 = *(v0 + 128);
    sub_26BE2E258(v0 + 56, &qword_28045E468, &qword_26C00ECA0);

    v29 = sub_26C009A3C();
    v30 = sub_26C00AA0C();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = *(v0 + 128);
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *&v76 = v33;
      *v32 = 136315138;

      v34 = sub_26BE16A38();
      v36 = v35;

      v37 = sub_26BE29740(v34, v36, &v76);

      *(v32 + 4) = v37;
      _os_log_impl(&dword_26BDFE000, v29, v30, "%s: called signNonceWithParticipantKey but failed to retrieve or generate participant private key", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v33);
      MEMORY[0x26D69A4E0](v33, -1, -1);
      MEMORY[0x26D69A4E0](v32, -1, -1);
    }

    sub_26BE01654();
    swift_allocError();
    *v38 = 12;
    v38[112] = 9;
    swift_willThrow();
    v39 = *(v0 + 184);

    v40 = *(v0 + 8);
    goto LABEL_11;
  }

  v20 = *(v0 + 176);
  v19 = *(v0 + 184);
  v21 = *(v0 + 168);
  sub_26BE03890((v0 + 56), v0 + 16);
  sub_26C00A4CC();
  v22 = sub_26C00A49C();
  v24 = v23;
  result = (*(v20 + 8))(v19, v21);
  if (v24 >> 60 == 15)
  {
    __break(1u);
    return result;
  }

  v27 = *(v0 + 136);
  v26 = *(v0 + 144);
  v76 = xmmword_26C00BBD0;
  v77 = 0;
  sub_26BE00608(v27, v26);
  sub_26BFBD380(v22, v24, v27, v26);
  v41 = v76;
  v42 = *(&v76 + 1) >> 62;
  if ((*(&v76 + 1) >> 62) <= 1)
  {
    if (!v42)
    {
      goto LABEL_22;
    }

    v43 = v76 >> 32;
LABEL_20:
    if (v43 < 0)
    {
      __break(1u);
    }

    goto LABEL_22;
  }

  if (v42 == 2)
  {
    v43 = *(v76 + 24);
    goto LABEL_20;
  }

LABEL_22:
  v44 = sub_26C00909C();
  v46 = v45;
  sub_26BE00258(v41, *(&v41 + 1));
  v47 = *(v0 + 40);
  v48 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v47);
  v71 = v46;
  v73 = (*(v48 + 32))(v44, v46, v47, v48);
  v75 = v49;
  v50 = *(v0 + 160);
  v51 = *(v0 + 136);
  v52 = *(v0 + 144);
  v53 = *(v0 + 128);

  sub_26BE00608(v51, v52);

  v54 = sub_26C009A3C();
  LOBYTE(v46) = sub_26C00A9FC();

  sub_26BE00258(v51, v52);

  v70 = v46;
  log = v54;
  if (os_log_type_enabled(v54, v46))
  {
    v55 = *(v0 + 160);
    v69 = *(v0 + 144);
    v67 = *(v0 + 152);
    v68 = *(v0 + 136);
    v56 = *(v0 + 128);
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    *&v76 = v58;
    *v57 = 136315394;

    v59 = sub_26BE16A38();
    v61 = v60;

    v62 = sub_26BE29740(v59, v61, &v76);

    *(v57 + 4) = v62;
    *(v57 + 12) = 2080;
    *(v57 + 14) = sub_26BE29740(v67, v55, &v76);
    _os_log_impl(&dword_26BDFE000, log, v70, "%s: signNonceWithParticipantKey completed for %s", v57, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D69A4E0](v58, -1, -1);
    MEMORY[0x26D69A4E0](v57, -1, -1);
    sub_26BE00258(v44, v71);
    sub_26BE00258(v22, v24);
    sub_26BE00258(v68, v69);
  }

  else
  {
    v63 = *(v0 + 136);
    v64 = *(v0 + 144);
    sub_26BE00258(v44, v71);
    sub_26BE00258(v22, v24);
    sub_26BE00258(v63, v64);
  }

  v65 = *(v0 + 184);
  v66 = *(v0 + 120);
  *v66 = v73;
  v66[1] = v75;
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v40 = *(v0 + 8);
LABEL_11:

  return v40();
}

uint64_t MLS.RCSClient.VerifyNonceInput.participantPublicKey.getter()
{
  v1 = *v0;
  sub_26BE00608(*v0, *(v0 + 8));
  return v1;
}

uint64_t MLS.RCSClient.VerifyNonceInput.participantPublicKey.setter(uint64_t a1, uint64_t a2)
{
  result = sub_26BE00258(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t MLS.RCSClient.VerifyNonceInput.nonce.getter()
{
  v1 = *(v0 + 16);
  sub_26BE00608(v1, *(v0 + 24));
  return v1;
}

uint64_t MLS.RCSClient.VerifyNonceInput.nonce.setter(uint64_t a1, uint64_t a2)
{
  result = sub_26BE00258(*(v2 + 16), *(v2 + 24));
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t MLS.RCSClient.VerifyNonceInput.signature.getter()
{
  v1 = *(v0 + 32);
  sub_26BE00608(v1, *(v0 + 40));
  return v1;
}

uint64_t MLS.RCSClient.VerifyNonceInput.signature.setter(uint64_t a1, uint64_t a2)
{
  result = sub_26BE00258(*(v2 + 32), *(v2 + 40));
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t MLS.RCSClient.VerifyNonceInput.init(participantPublicKey:nonce:signature:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = result;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

uint64_t sub_26BE39468(uint64_t a1, _OWORD *a2)
{
  *(v3 + 112) = a1;
  *(v3 + 120) = v2;
  *(v3 + 128) = *v2;
  v4 = a2[1];
  *(v3 + 16) = *a2;
  *(v3 + 32) = v4;
  *(v3 + 48) = a2[2];
  return MEMORY[0x2822009F8](sub_26BE394C0, 0, 0);
}

uint64_t sub_26BE394C0()
{
  v1 = v0[15];
  v2 = v0[16];

  sub_26BE3B0D4((v0 + 2), (v0 + 8));
  v3 = swift_task_alloc();
  v0[17] = v3;
  *v3 = v0;
  v3[1] = sub_26BE39588;
  v4 = v0[14];
  v5 = v0[15];

  return sub_26BE9BFF4(v4, v5, v5, (v0 + 2), v2);
}

uint64_t sub_26BE39588()
{
  v1 = *(*v0 + 136);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_26BE3967C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[19] = a2;
  v3[20] = a3;
  v4 = sub_26C00A4EC();
  v3[21] = v4;
  v5 = *(v4 - 8);
  v3[22] = v5;
  v6 = *(v5 + 64) + 15;
  v3[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26BE3973C, 0, 0);
}

uint64_t sub_26BE3973C()
{
  v66 = v0;
  v2 = v0[19];
  v1 = v0[20];
  swift_beginAccess();
  v3 = *(v2 + 96);
  v4 = *(v2 + 104);
  v5 = *(v2 + 80);
  v63[0] = *(v2 + 72);
  *&v63[8] = v5;
  v64 = v3;
  v65 = v4;
  v6 = *v1;
  v7 = v1[1];

  MLS.Cryptography.Ciphersuite.importSignaturePublicKey(_:)(v6, v7, v0 + 8);
  v61 = v6;
  v9 = v0[22];
  v8 = v0[23];
  v10 = v0[21];
  sub_26C00A4CC();
  v11 = sub_26C00A49C();
  v13 = v12;
  result = (*(v9 + 8))(v8, v10);
  if (v13 >> 60 == 15)
  {
    __break(1u);
    return result;
  }

  v15 = v0[20];
  v17 = *(v15 + 16);
  v16 = *(v15 + 24);
  *v63 = xmmword_26C00BBD0;
  *&v63[16] = 0;
  sub_26BE00608(v17, v16);
  sub_26BFBD380(v11, v13, v17, v16);
  v60 = v11;
  v19 = *&v63[8] >> 62;
  if ((*&v63[8] >> 62) <= 1)
  {
    if (!v19)
    {
      goto LABEL_14;
    }

    v20 = *v63 >> 32;
LABEL_12:
    if (v20 < 0)
    {
      __break(1u);
    }

    goto LABEL_14;
  }

  if (v19 == 2)
  {
    v20 = *(*v63 + 24);
    goto LABEL_12;
  }

LABEL_14:
  v56 = v17;
  v57 = v13;
  v58 = v16;
  v21 = v0[20];
  v59 = sub_26C00909C();
  v23 = v22;
  sub_26BE00258(*v63, *&v63[8]);
  v24 = v0[12];
  __swift_project_boxed_opaque_existential_1(v0 + 8, v0[11]);
  v54 = *(v21 + 40);
  v55 = *(v21 + 32);
  if ((*(v24 + 16))())
  {
    v25 = v0[23];
    sub_26BE00258(v59, v23);
    sub_26BE00258(v60, v13);
    sub_26BE00258(v56, v58);

    __swift_destroy_boxed_opaque_existential_1(v0 + 8);

    v26 = v0[1];
  }

  else
  {
    if (qword_28045DF40 != -1)
    {
      swift_once();
    }

    v28 = v0[19];
    v27 = v0[20];
    v29 = sub_26C009A5C();
    __swift_project_value_buffer(v29, qword_280478E70);
    sub_26BE3B0D4(v27, (v0 + 2));

    v30 = sub_26C009A3C();
    v31 = sub_26C00AA0C();

    sub_26BE3C0C4(v27);
    if (os_log_type_enabled(v30, v31))
    {
      log = v30;
      v32 = v0[19];
      v33 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      *v63 = v52;
      *v33 = 136315906;

      v34 = sub_26BE16A38();
      v36 = v35;

      v37 = sub_26BE29740(v34, v36, v63);

      *(v33 + 4) = v37;
      *(v33 + 12) = 2080;
      v0[16] = sub_26BF87240(v61, v7);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4B0, &qword_26C00ECE0);
      sub_26BE3C0F4();
      v38 = sub_26C00A3EC();
      v62 = v31;
      v40 = v39;

      v41 = sub_26BE29740(v38, v40, v63);

      *(v33 + 14) = v41;
      *(v33 + 22) = 2080;
      v0[17] = sub_26BF87240(v55, v54);
      v42 = sub_26C00A3EC();
      v44 = v43;

      v45 = sub_26BE29740(v42, v44, v63);

      *(v33 + 24) = v45;
      *(v33 + 32) = 2080;
      v46 = v56;
      v0[18] = sub_26BF87240(v56, v58);
      v47 = sub_26C00A3EC();
      v49 = v48;

      v50 = sub_26BE29740(v47, v49, v63);

      *(v33 + 34) = v50;
      _os_log_impl(&dword_26BDFE000, log, v62, "%s: verifyNonceAgainstParticipantKey failed: participantPublicKey:%s, signature: %s, nonce: %s", v33, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x26D69A4E0](v52, -1, -1);
      MEMORY[0x26D69A4E0](v33, -1, -1);
    }

    else
    {

      v46 = v56;
    }

    sub_26BE01654();
    swift_allocError();
    *v51 = 10;
    *(v51 + 8) = 0u;
    *(v51 + 24) = 0u;
    *(v51 + 40) = 0u;
    *(v51 + 56) = 0u;
    *(v51 + 72) = 0u;
    *(v51 + 88) = 0u;
    *(v51 + 104) = 0;
    *(v51 + 112) = 23;
    swift_willThrow();

    sub_26BE00258(v59, v23);
    sub_26BE00258(v60, v57);
    sub_26BE00258(v46, v58);
    __swift_destroy_boxed_opaque_existential_1(v0 + 8);
    v18 = v0[23];

    v26 = v0[1];
  }

  return v26();
}

uint64_t sub_26BE39DA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_26BE39DCC, 0, 0);
}

uint64_t sub_26BE39DCC()
{
  v2 = v0[4];
  v1 = v0[5];

  v3 = swift_task_alloc();
  v0[6] = v3;
  *v3 = v0;
  v3[1] = sub_26BE23BEC;
  v5 = v0[4];
  v4 = v0[5];
  v6 = v0[2];
  v7 = v0[3];

  return (sub_26BE9CA54)(v6);
}

uint64_t sub_26BE39E94(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  return MEMORY[0x2822009F8](sub_26BE39EB8, 0, 0);
}

uint64_t sub_26BE39EB8()
{
  v2 = v0[5];
  v1 = v0[6];

  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_26BE39F84;
  v5 = v0[5];
  v4 = v0[6];
  v6 = v0[4];

  return (sub_26BE9D484)(v0 + 2);
}

uint64_t sub_26BE39F84()
{
  v2 = *(*v1 + 56);
  v5 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = sub_26BE36ED0;
  }

  else
  {
    v3 = sub_26BE3A098;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26BE3A0B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[22] = a3;
  v4[23] = a4;
  v4[20] = a1;
  v4[21] = a2;
  v5 = sub_26C00978C();
  v4[24] = v5;
  v6 = *(v5 - 8);
  v4[25] = v6;
  v7 = *(v6 + 64) + 15;
  v4[26] = swift_task_alloc();
  v8 = type metadata accessor for MLS.SubjectPublicKeyInfo();
  v4[27] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v4[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26BE3A1A8, 0, 0);
}

uint64_t sub_26BE3A1A8()
{
  v1 = *(v0 + 168);
  sub_26BE38060(*(v0 + 176), *(v0 + 184));
  v2 = *(v0 + 168);
  v3 = OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_participantPrivateKey;
  swift_beginAccess();
  sub_26BE2E1F0(v2 + v3, v0 + 56, &qword_28045E468, &qword_26C00ECA0);
  if (*(v0 + 80))
  {
    v4 = *(v0 + 224);
    sub_26BE03890((v0 + 56), v0 + 16);
    v5 = *(v0 + 40);
    v6 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v5);
    v7 = *(v6 + 40);
    *(v0 + 120) = swift_getAssociatedTypeWitness();
    *(v0 + 128) = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1((v0 + 96));
    v7(v5, v6);
    sub_26BE106CC((v0 + 96), v4);
    v8 = *(v0 + 216);
    v9 = *(v0 + 224);
    v10 = *(v0 + 208);
    sub_26C00977C();
    sub_26BE3C1BC(&qword_28045E678, type metadata accessor for MLS.SubjectPublicKeyInfo);
    sub_26C0096FC();
    v11 = *(v0 + 224);
    v13 = *(v0 + 200);
    v12 = *(v0 + 208);
    v14 = *(v0 + 192);
    v19 = *(v0 + 160);
    v20 = sub_26C00971C();
    v21 = sub_26BE12418(v20);
    v23 = v22;

    (*(v13 + 8))(v12, v14);
    sub_26BE3C204(v11, type metadata accessor for MLS.SubjectPublicKeyInfo);
    *v19 = v21;
    v19[1] = v23;
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  }

  else
  {
    sub_26BE2E258(v0 + 56, &qword_28045E468, &qword_26C00ECA0);
    sub_26BE01654();
    swift_allocError();
    *v15 = 12;
    v15[112] = 9;
    swift_willThrow();
    v16 = *(v0 + 224);
    v17 = *(v0 + 208);
  }

  v24 = *(v0 + 8);

  return v24();
}

void *MLS.RCSClient.__allocating_init(configuration:signaturePrivateKeyUUID:signaturePrivateKey:credential:clientUUID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v27 = a3;
  v28 = a5;
  v26 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E458, &unk_26C00DAA0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v26 - v11;
  v13 = sub_26C00928C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v5 + 48);
  v19 = *(v5 + 52);
  swift_allocObject();
  v20 = *a4;
  v21 = a4[1];
  sub_26BE295A0(a1, v31);
  (*(v14 + 16))(v17, a2, v13);
  v22 = v27;
  sub_26BE038A8(v27, v30);
  v29[0] = v20;
  v29[1] = v21;
  v23 = v28;
  sub_26BE2E1F0(v28, v12, &qword_28045E458, &unk_26C00DAA0);
  v24 = MLS.Client.Client.init(configuration:signaturePrivateKeyUUID:signaturePrivateKey:credential:clientUUID:)(v31, v17, v30, v29, v12);
  sub_26BE2E258(v23, &qword_28045E458, &unk_26C00DAA0);
  __swift_destroy_boxed_opaque_existential_1(v22);
  (*(v14 + 8))(a2, v13);
  sub_26BE29710(v26);
  return v24;
}

void *MLS.RCSClient.init(configuration:signaturePrivateKeyUUID:signaturePrivateKey:credential:clientUUID:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v25 = a5;
  v24 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E458, &unk_26C00DAA0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - v11;
  v13 = sub_26C00928C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a4;
  v19 = a4[1];
  sub_26BE295A0(a1, v28);
  v20 = a2;
  (*(v14 + 16))(v17, a2, v13);
  sub_26BE038A8(a3, v27);
  v26[0] = v18;
  v26[1] = v19;
  v21 = v25;
  sub_26BE2E1F0(v25, v12, &qword_28045E458, &unk_26C00DAA0);
  v22 = MLS.Client.Client.init(configuration:signaturePrivateKeyUUID:signaturePrivateKey:credential:clientUUID:)(v28, v17, v27, v26, v12);
  sub_26BE2E258(v21, &qword_28045E458, &unk_26C00DAA0);
  __swift_destroy_boxed_opaque_existential_1(a3);
  (*(v14 + 8))(v20, v13);
  sub_26BE29710(v24);
  return v22;
}

uint64_t sub_26BE3A894(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t a6)
{
  v7 = v6;
  v35 = a6;
  v36 = a4;
  v37 = a3;
  v39 = a2;
  v10 = sub_26C00928C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = v15;
  MEMORY[0x28223BE20](v13);
  v17 = &v33 - v16;
  v18 = *(v7 + 48);
  v19 = *(v7 + 52);
  v20 = swift_allocObject();
  v21 = *a5;
  v22 = a5[1];
  v34 = a1;
  sub_26BE295A0(a1, v42);
  v33 = v11;
  v23 = *(v11 + 16);
  v23(v17, v39, v10);
  v23(v15, v37, v10);
  sub_26BE038A8(v36, v41);
  sub_26BE2E1F0(v35, v40, &qword_28045E460, &qword_26C0206D0);
  *(v20 + 24) = xmmword_26C00DA50;
  v24 = v20 + OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_participantPrivateKey;
  *(v24 + 32) = 0;
  *v24 = 0u;
  *(v24 + 16) = 0u;
  *(v20 + OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_keyPackageSecretsStore) = MEMORY[0x277D84F90];
  *(v20 + OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_inner) = 1;
  v25 = (v20 + OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client__state);
  *v25 = 0u;
  v25[1] = 0u;
  v25[2] = 0u;
  v25[3] = 0u;
  v25[4] = 0u;
  v25[5] = 0u;
  v25[6] = 0u;
  *(v20 + OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_usePureSwiftOverride) = 2;
  v26 = (v20 + OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_healthReport);
  *v26 = 0u;
  v26[1] = 0u;
  v26[2] = 0u;
  v26[3] = 0u;
  v26[4] = 0u;
  v26[5] = 0u;
  v26[6] = 0u;
  v26[7] = 0u;
  *(v20 + OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_reportingIntervalSeconds) = 86400;
  sub_26BE295A0(v42, v20 + 40);
  v23((v20 + OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_clientUUID), v17, v10);
  v23((v20 + OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_keyUUID), v38, v10);
  sub_26BE038A8(v41, v20 + OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_signaturePrivateKey);
  swift_beginAccess();
  v27 = *(v20 + 24);
  v28 = *(v20 + 32);
  *(v20 + 24) = v21;
  *(v20 + 32) = v22;
  sub_26BE2958C(v21, v22);
  sub_26BE2962C(v27, v28);
  swift_beginAccess();
  sub_26BE2DE54(v40, v25);
  swift_endAccess();
  if ((~v22 & 0x3000000000000000) != 0)
  {
    sub_26BE2962C(v21, v22);
    v29 = 1;
  }

  else
  {
    v29 = 0;
  }

  *(v20 + OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_state) = v29;
  type metadata accessor for SMSemaphore();
  v30 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v30 + 120) = MEMORY[0x277D84FA0];
  *(v30 + 112) = 1;
  *(v20 + 16) = v30;
  sub_26C00920C();
  sub_26BE2E258(v35, &qword_28045E460, &qword_26C0206D0);
  __swift_destroy_boxed_opaque_existential_1(v36);
  v31 = *(v33 + 8);
  v31(v37, v10);
  v31(v39, v10);
  sub_26BE29710(v34);
  sub_26BE2E258(v40, &qword_28045E460, &qword_26C0206D0);
  __swift_destroy_boxed_opaque_existential_1(v41);
  v31(v38, v10);
  v31(v17, v10);
  sub_26BE29710(v42);
  return v20;
}

uint64_t MLS.RCSClient.__deallocating_deinit()
{
  v0 = *MLS.Client.Client.deinit();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_26BE3AE5C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_26C00947C();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_26C00944C();
}

uint64_t sub_26BE3AED8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_26C00947C();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

unint64_t sub_26BE3AF70()
{
  result = qword_28045E630;
  if (!qword_28045E630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045E630);
  }

  return result;
}

unint64_t sub_26BE3AFC4()
{
  result = qword_28045E638;
  if (!qword_28045E638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045E638);
  }

  return result;
}

unint64_t sub_26BE3B018()
{
  result = qword_28045E648;
  if (!qword_28045E648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045E648);
  }

  return result;
}

uint64_t type metadata accessor for MLS.RCSClient()
{
  result = qword_28045E650;
  if (!qword_28045E650)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t dispatch thunk of MLS.RCSClient.getCredentialSigningRequest(telURI:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 832);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_26BE2E3F4;

  return v12(a1, a2, a3);
}

uint64_t dispatch thunk of MLS.RCSClient.loadCredential(credential:telURI:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 840);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_26BE28F58;

  return v12(a1, a2, a3);
}

uint64_t dispatch thunk of MLS.RCSClient.signNonceWithParticipantKey(_:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 856);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_26BE2E3F4;

  return v10(a1, a2);
}

uint64_t dispatch thunk of MLS.RCSClient.verifyNonceAgainstParticipantKey(_:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 864);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_26BE2E3F4;

  return v10(a1, a2);
}

uint64_t dispatch thunk of MLS.RCSClient.getParticipantPublicKey(telURI:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 872);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_26BE2E3F4;

  return v12(a1, a2, a3);
}

uint64_t dispatch thunk of MLS.RCSClient.getParticipantPublicKeySPKI(telURI:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 880);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_26BE3B910;

  return v10(a1, a2);
}

uint64_t sub_26BE3B910(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);

  return v6(a1, a2);
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

uint64_t sub_26BE3BA30(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26BE3BA78(uint64_t result, int a2, int a3)
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
      *(result + 40) = (a2 - 1);
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

uint64_t sub_26BE3BAD8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_26BE3BB20(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_26BE3BB94(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 48))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_26BE3BBE8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t _s9RCSClientC24CredentialSigningRequestV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s9RCSClientC24CredentialSigningRequestV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_26BE3BDC0()
{
  result = qword_28045E660;
  if (!qword_28045E660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045E660);
  }

  return result;
}

unint64_t sub_26BE3BE18()
{
  result = qword_28045E668;
  if (!qword_28045E668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045E668);
  }

  return result;
}

unint64_t sub_26BE3BE70()
{
  result = qword_28045E670;
  if (!qword_28045E670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045E670);
  }

  return result;
}

uint64_t sub_26BE3BEC4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000019 && 0x800000026C02AF20 == a2 || (sub_26C00AF2C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7069636974726170 && a2 == 0xEF6F666E49746E61 || (sub_26C00AF2C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4952556C6574 && a2 == 0xE600000000000000 || (sub_26C00AF2C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000)
  {

    return 3;
  }

  else
  {
    v5 = sub_26C00AF2C();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_26BE3C038(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E468, &qword_26C00ECA0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_26BE3C0F4()
{
  result = qword_28045E4B8;
  if (!qword_28045E4B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28045E4B0, &qword_26C00ECE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045E4B8);
  }

  return result;
}