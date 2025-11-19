uint64_t sub_2302A0A70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_getAssociatedTypeWitness();
  v4 = type metadata accessor for Patch();
  return (*(*(v4 - 8) + 16))(a2, a1, v4);
}

uint64_t sub_2302A0B28@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for Patch();
  result = MEMORY[0x28223BE20](v6);
  v9 = &v12 - v8;
  v10 = *a1;
  if ((v10 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v10 < *(a2 + 16))
  {
    v11 = *(a2 + 32 * v10 + 56);
    sub_23030FE28();
    return sub_230241B14(v9, v11, v10, a3);
  }

  __break(1u);
  return result;
}

uint64_t sub_2302A0C14(char *__dst, char *__src, char *a3, char *a4, uint64_t (*a5)(__int128 *, __int128 *))
{
  v6 = a4;
  v7 = a3;
  v8 = __src;
  v9 = __dst;
  v10 = __src - __dst;
  v11 = __src - __dst + 31;
  if (__src - __dst >= 0)
  {
    v11 = __src - __dst;
  }

  v12 = v11 >> 5;
  v13 = a3 - __src;
  v14 = a3 - __src + 31;
  if (a3 - __src >= 0)
  {
    v14 = a3 - __src;
  }

  v15 = v14 >> 5;
  if (v12 < v14 >> 5)
  {
    if (a4 != __dst || &__dst[32 * v12] <= a4)
    {
      v16 = v12;
      memmove(a4, __dst, 32 * v12);
      v12 = v16;
    }

    v17 = &v6[32 * v12];
    if (v10 < 32)
    {
LABEL_10:
      v8 = v9;
      goto LABEL_35;
    }

    while (1)
    {
      if (v8 >= v7)
      {
        goto LABEL_10;
      }

      v21 = v8[16];
      v22 = v6[16];
      v23 = *v6;
      v35 = *v8;
      v36 = v21;
      v33 = v23;
      v34 = v22;
      if (a5(&v35, &v33))
      {
        break;
      }

      v18 = v6;
      v19 = v9 == v6;
      v6 += 32;
      if (!v19)
      {
        goto LABEL_12;
      }

LABEL_13:
      v9 += 32;
      if (v6 >= v17)
      {
        goto LABEL_10;
      }
    }

    v18 = v8;
    v19 = v9 == v8;
    v8 += 32;
    if (v19)
    {
      goto LABEL_13;
    }

LABEL_12:
    v20 = *(v18 + 1);
    *v9 = *v18;
    *(v9 + 1) = v20;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[32 * v15] <= a4)
  {
    memmove(a4, __src, 32 * v15);
  }

  v17 = &v6[32 * v15];
  if (v13 >= 32 && v8 > v9)
  {
LABEL_24:
    v32 = v8 - 32;
    v7 -= 32;
    v24 = v17;
    do
    {
      v25 = v7 + 32;
      v26 = *(v24 - 32);
      v24 -= 32;
      v27 = *(v24 + 16);
      v28 = *(v8 - 16);
      v35 = v26;
      v36 = v27;
      v33 = *(v8 - 2);
      v34 = v28;
      if (a5(&v35, &v33))
      {
        if (v25 != v8)
        {
          v30 = *(v8 - 1);
          *v7 = *v32;
          *(v7 + 1) = v30;
        }

        if (v17 <= v6 || (v8 -= 32, v32 <= v9))
        {
          v8 = v32;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v25 != v17)
      {
        v29 = *(v24 + 16);
        *v7 = *v24;
        *(v7 + 1) = v29;
      }

      v7 -= 32;
      v17 = v24;
    }

    while (v24 > v6);
    v17 = v24;
  }

LABEL_35:
  if (v8 != v6 || v8 >= &v6[(v17 - v6 + (v17 - v6 < 0 ? 0x1FuLL : 0)) & 0xFFFFFFFFFFFFFFE0])
  {
    memmove(v8, v6, 32 * ((v17 - v6) / 32));
  }

  return 1;
}

uint64_t sub_2302A0E80(uint64_t *a1, char *a2, void *a3, uint64_t (*a4)(__int128 *, __int128 *))
{
  v6 = a1;
  v7 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_13:
    result = sub_2302A36A0(v7);
    v7 = result;
  }

  v16 = v6;
  *v6 = v7;
  v9 = (v7 + 16);
  v6 = *(v7 + 16);
  if (v6 < 2)
  {
LABEL_9:
    *v16 = v7;
    return 1;
  }

  else
  {
    while (*a3)
    {
      v10 = (v7 + 16 * v6);
      v11 = *v10;
      v12 = &v9[2 * v6];
      v13 = v12[1];
      sub_2302A0C14((*a3 + 32 * *v10), (*a3 + 32 * *v12), (*a3 + 32 * v13), a2, a4);
      if (v4)
      {
        goto LABEL_9;
      }

      if (v13 < v11)
      {
        __break(1u);
LABEL_11:
        __break(1u);
LABEL_12:
        __break(1u);
        goto LABEL_13;
      }

      v14 = *v9;
      if (v6 - 2 >= *v9)
      {
        goto LABEL_11;
      }

      *v10 = v11;
      v10[1] = v13;
      v15 = v14 - v6;
      if (v14 < v6)
      {
        goto LABEL_12;
      }

      v6 = v14 - 1;
      result = memmove(v12, v12 + 2, 16 * v15);
      *v9 = v6;
      if (v6 <= 1)
      {
        goto LABEL_9;
      }
    }

    *v16 = v7;
    __break(1u);
  }

  return result;
}

uint64_t sub_2302A0FC0(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(__int128 *, __int128 *))
{
  v103 = result;
  v115 = MEMORY[0x277D84F90];
  v7 = a3[1];
  if (v7 >= 1)
  {
    v8 = 0;
    v9 = MEMORY[0x277D84F90];
    while (1)
    {
      v10 = v8;
      v11 = v8 + 1;
      if (v11 >= v7)
      {
        v7 = v11;
        v24 = a4;
      }

      else
      {
        v108 = v9;
        v12 = *a3 + 32 * v11;
        v13 = *(v12 + 16);
        v14 = 32 * v10;
        v15 = *a3 + 32 * v10;
        v16 = *(v15 + 16);
        v113 = *v12;
        v114 = v13;
        v111 = *v15;
        v112 = v16;
        result = a5(&v113, &v111);
        v17 = v10;
        v18 = result;
        v19 = v17;
        v20 = v17 + 2;
        v21 = (v15 + 80);
        while (v7 != v20)
        {
          v22 = *v21;
          v23 = *(v21 - 32);
          v113 = *(v21 - 1);
          v114 = v22;
          v111 = *(v21 - 3);
          v112 = v23;
          result = a5(&v113, &v111);
          ++v20;
          v21 += 32;
          if ((v18 & 1) != (result & 1))
          {
            v7 = v20 - 1;
            break;
          }
        }

        v24 = a4;
        if (v18)
        {
          if (v7 < v19)
          {
            goto LABEL_114;
          }

          v10 = v19;
          if (v19 < v7)
          {
            v25 = 32 * v7 - 32;
            v26 = v7;
            v27 = v19;
            v9 = v108;
            while (1)
            {
              if (v27 != --v26)
              {
                v34 = *a3;
                if (!*a3)
                {
                  goto LABEL_119;
                }

                v28 = (v34 + v14);
                v29 = (v34 + v25);
                v30 = *(v28 + 16);
                v31 = *(v28 + 3);
                v32 = *v28;
                v33 = v29[1];
                *v28 = *v29;
                v28[1] = v33;
                *v29 = v32;
                *(v29 + 16) = v30;
                *(v29 + 3) = v31;
              }

              ++v27;
              v25 -= 32;
              v14 += 32;
              if (v27 >= v26)
              {
                goto LABEL_21;
              }
            }
          }

          v9 = v108;
        }

        else
        {
          v9 = v108;
          v10 = v19;
        }
      }

LABEL_21:
      v35 = a3[1];
      if (v7 >= v35)
      {
        goto LABEL_30;
      }

      if (__OFSUB__(v7, v10))
      {
        goto LABEL_113;
      }

      if (v7 - v10 >= v24)
      {
        goto LABEL_30;
      }

      if (__OFADD__(v10, v24))
      {
        goto LABEL_115;
      }

      if (v10 + v24 >= v35)
      {
        v36 = a3[1];
      }

      else
      {
        v36 = v10 + v24;
      }

      if (v36 < v10)
      {
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
        return result;
      }

      if (v7 == v36)
      {
LABEL_30:
        v37 = v7;
        if (v7 < v10)
        {
          goto LABEL_112;
        }
      }

      else
      {
        v110 = v9;
        v105 = v36;
        v89 = *a3;
        v90 = *a3 + 32 * v7;
        v101 = v10;
        v91 = v10 - v7;
        do
        {
          v92 = (v89 + 32 * v7);
          v93 = *v92;
          v94 = *(v92 + 16);
          v95 = v91;
          v96 = v90;
          do
          {
            v97 = *(v96 - 16);
            v113 = v93;
            v114 = v94;
            v111 = *(v96 - 32);
            v112 = v97;
            result = a5(&v113, &v111);
            if ((result & 1) == 0)
            {
              break;
            }

            if (!v89)
            {
              goto LABEL_117;
            }

            v93 = *v96;
            v94 = *(v96 + 16);
            v98 = *(v96 + 24);
            v99 = *(v96 - 16);
            *v96 = *(v96 - 32);
            *(v96 + 16) = v99;
            *(v96 - 16) = v94;
            *(v96 - 8) = v98;
            *(v96 - 32) = v93;
            v96 -= 32;
          }

          while (!__CFADD__(v95++, 1));
          ++v7;
          v90 += 32;
          --v91;
          v37 = v105;
        }

        while (v7 != v105);
        v9 = v110;
        v10 = v101;
        if (v105 < v101)
        {
          goto LABEL_112;
        }
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      v104 = v37;
      if ((result & 1) == 0)
      {
        result = sub_23007EA34(0, *(v9 + 16) + 1, 1, v9);
        v9 = result;
      }

      v39 = *(v9 + 16);
      v38 = *(v9 + 24);
      v40 = v39 + 1;
      if (v39 >= v38 >> 1)
      {
        result = sub_23007EA34((v38 > 1), v39 + 1, 1, v9);
        v9 = result;
      }

      *(v9 + 16) = v40;
      v41 = v9 + 32;
      v42 = (v9 + 32 + 16 * v39);
      *v42 = v10;
      v42[1] = v37;
      v106 = *v103;
      if (!*v103)
      {
        goto LABEL_120;
      }

      if (v39)
      {
        v109 = v9;
        while (1)
        {
          v43 = v40 - 1;
          if (v40 >= 4)
          {
            break;
          }

          if (v40 == 3)
          {
            v44 = *(v9 + 32);
            v45 = *(v9 + 40);
            v54 = __OFSUB__(v45, v44);
            v46 = v45 - v44;
            v47 = v54;
LABEL_51:
            if (v47)
            {
              goto LABEL_102;
            }

            v60 = (v9 + 16 * v40);
            v62 = *v60;
            v61 = v60[1];
            v63 = __OFSUB__(v61, v62);
            v64 = v61 - v62;
            v65 = v63;
            if (v63)
            {
              goto LABEL_104;
            }

            v66 = (v41 + 16 * v43);
            v68 = *v66;
            v67 = v66[1];
            v54 = __OFSUB__(v67, v68);
            v69 = v67 - v68;
            if (v54)
            {
              goto LABEL_107;
            }

            if (__OFADD__(v64, v69))
            {
              goto LABEL_109;
            }

            if (v64 + v69 >= v46)
            {
              if (v46 < v69)
              {
                v43 = v40 - 2;
              }

              goto LABEL_73;
            }

            goto LABEL_66;
          }

          if (v40 < 2)
          {
            goto LABEL_110;
          }

          v70 = (v9 + 16 * v40);
          v72 = *v70;
          v71 = v70[1];
          v54 = __OFSUB__(v71, v72);
          v64 = v71 - v72;
          v65 = v54;
LABEL_66:
          if (v65)
          {
            goto LABEL_106;
          }

          v73 = (v41 + 16 * v43);
          v75 = *v73;
          v74 = v73[1];
          v54 = __OFSUB__(v74, v75);
          v76 = v74 - v75;
          if (v54)
          {
            goto LABEL_108;
          }

          if (v76 < v64)
          {
            goto LABEL_3;
          }

LABEL_73:
          if (v43 - 1 >= v40)
          {
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
            goto LABEL_116;
          }

          if (!*a3)
          {
            goto LABEL_118;
          }

          v81 = (v41 + 16 * (v43 - 1));
          v82 = *v81;
          v83 = v43;
          v84 = (v41 + 16 * v43);
          v85 = v84[1];
          result = sub_2302A0C14((*a3 + 32 * *v81), (*a3 + 32 * *v84), (*a3 + 32 * v85), v106, a5);
          if (v5)
          {
          }

          if (v85 < v82)
          {
            goto LABEL_97;
          }

          v86 = v41;
          v87 = *(v109 + 16);
          if (v83 > v87)
          {
            goto LABEL_98;
          }

          *v81 = v82;
          v81[1] = v85;
          if (v83 >= v87)
          {
            goto LABEL_99;
          }

          v40 = v87 - 1;
          result = memmove(v84, v84 + 2, 16 * (v87 - 1 - v83));
          v9 = v109;
          *(v109 + 16) = v87 - 1;
          v88 = v87 > 2;
          v41 = v86;
          if (!v88)
          {
            goto LABEL_3;
          }
        }

        v48 = v41 + 16 * v40;
        v49 = *(v48 - 64);
        v50 = *(v48 - 56);
        v54 = __OFSUB__(v50, v49);
        v51 = v50 - v49;
        if (v54)
        {
          goto LABEL_100;
        }

        v53 = *(v48 - 48);
        v52 = *(v48 - 40);
        v54 = __OFSUB__(v52, v53);
        v46 = v52 - v53;
        v47 = v54;
        if (v54)
        {
          goto LABEL_101;
        }

        v55 = (v9 + 16 * v40);
        v57 = *v55;
        v56 = v55[1];
        v54 = __OFSUB__(v56, v57);
        v58 = v56 - v57;
        if (v54)
        {
          goto LABEL_103;
        }

        v54 = __OFADD__(v46, v58);
        v59 = v46 + v58;
        if (v54)
        {
          goto LABEL_105;
        }

        if (v59 >= v51)
        {
          v77 = (v41 + 16 * v43);
          v79 = *v77;
          v78 = v77[1];
          v54 = __OFSUB__(v78, v79);
          v80 = v78 - v79;
          if (v54)
          {
            goto LABEL_111;
          }

          if (v46 < v80)
          {
            v43 = v40 - 2;
          }

          goto LABEL_73;
        }

        goto LABEL_51;
      }

LABEL_3:
      v7 = a3[1];
      v8 = v104;
      if (v104 >= v7)
      {
        v115 = v9;
        break;
      }
    }
  }

  if (!*v103)
  {
    goto LABEL_121;
  }

  sub_2302A0E80(&v115, *v103, a3, a5);
}

uint64_t sub_2302A15CC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t (*a5)(__int128 *, __int128 *))
{
  v23 = a2;
  if (a3 != a2)
  {
    v6 = a3;
    v7 = *a4;
    v8 = *a4 + 32 * a3;
    v9 = result - a3;
LABEL_5:
    v10 = (v7 + 32 * v6);
    v11 = *v10;
    v12 = *(v10 + 16);
    v13 = v9;
    v14 = v8;
    while (1)
    {
      v15 = *(v14 - 16);
      v21 = v11;
      v22 = v12;
      v19 = *(v14 - 32);
      v20 = v15;
      result = a5(&v21, &v19);
      if ((result & 1) == 0)
      {
LABEL_4:
        ++v6;
        v8 += 32;
        --v9;
        if (v6 == v23)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v7)
      {
        break;
      }

      v11 = *v14;
      v12 = *(v14 + 16);
      v16 = *(v14 + 24);
      v17 = *(v14 - 16);
      *v14 = *(v14 - 32);
      *(v14 + 16) = v17;
      *(v14 - 16) = v12;
      *(v14 - 8) = v16;
      *(v14 - 32) = v11;
      v14 -= 32;
      if (__CFADD__(v13++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2302A16D0(uint64_t *a1, uint64_t (*a2)(__int128 *, __int128 *))
{
  v4 = a1[1];
  result = sub_230310E48();
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v6 = result;
      if (v4 <= 1)
      {
        v7 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB19110);
        v7 = sub_23030FD48();
        *(v7 + 16) = v4 / 2;
      }

      v9[0] = v7 + 32;
      v9[1] = v4 / 2;
      v8 = v7;
      sub_2302A0FC0(v9, v10, a1, v6, a2);
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
    return sub_2302A15CC(0, v4, 1, a1, a2);
  }

  return result;
}

uint64_t sub_2302A17F8(char **a1, uint64_t (*a2)(__int128 *, __int128 *))
{
  v4 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_2302A38A8(v4);
  }

  v5 = *(v4 + 2);
  v7[0] = (v4 + 32);
  v7[1] = v5;
  result = sub_2302A16D0(v7, a2);
  *a1 = v4;
  return result;
}

unint64_t sub_2302A18A0()
{
  result = qword_280C99CF0;
  if (!qword_280C99CF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB14A80);
    sub_23006D62C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C99CF0);
  }

  return result;
}

uint64_t sub_2302A1980(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_2302A38BC(v2);
  }

  v3 = *(v2 + 2);
  v4 = v2 + 32;
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_230310E48();
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
          if (*(v12 + 2) >= v13)
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB191A0);
      v8 = sub_23030FD48();
      *(v8 + 16) = v7;
    }

    else
    {
      v8 = MEMORY[0x277D84F90];
    }

    v16[0] = v8 + 32;
    v16[1] = v7;
    sub_2302A2E78(v16, v17, v18, v6);
    *(v8 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_2302A1AD4()
{
  v0 = sub_23030EF48();
  __swift_allocate_value_buffer(v0, qword_27DB19118);
  v1 = __swift_project_value_buffer(v0, qword_27DB19118);
  if (qword_27DB13B70 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27DB4F590);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void *REMBertTextClassifier.__allocating_init(vocabURL:modelURL:numOfClasses:maxLength:labels:asciiOnly:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v33 = a5;
  v31 = a3;
  v35 = a2;
  v9 = sub_23030E9B8();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v30 - v14;
  v16 = *(v10 + 16);
  v34 = a1;
  v16(&v30 - v14, a1, v9);
  type metadata accessor for REMBertTokenizer();
  swift_allocObject();
  v17 = v15;
  v18 = a4;
  v19 = v32;
  v20 = REMBertTokenizer.init(url:maxLen:asciiOnly:)(v17, a4, a6);
  if (v19)
  {
    v21 = v35;

    v24 = *(v10 + 8);
    v24(v21, v9);
    return (v24)(v34, v9);
  }

  else
  {
    v22 = v20;
    v32 = v18;
    v23 = [objc_allocWithZone(MEMORY[0x277CBFF38]) init];
    [v23 setComputeUnits_];
    sub_23004CBA4(0, &qword_27DB19130);
    v16(v13, v35, v9);
    v26 = sub_2302A3C2C(v13, v23);

    v27 = *(v10 + 8);
    v27(v35, v9);
    v27(v34, v9);
    result = swift_allocObject();
    v29 = v31;
    v28 = v32;
    result[4] = v22;
    result[5] = v29;
    result[6] = v28;
    result[2] = v33;
    result[3] = v26;
  }

  return result;
}

char *REMBertTextClassifier.predict(_:thresholds:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v98[1] = *MEMORY[0x277D85DE8];
  v5 = *(v3 + 5);
  if (v5 < 0)
  {
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  if (v5)
  {
    v9 = sub_23030FD48();
    *(v9 + 16) = v5;
    memset_pattern16((v9 + 32), &unk_2303357D0, 4 * v5);
    if (!a3)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v9 = MEMORY[0x277D84F90];
  if (a3)
  {
LABEL_4:

    v9 = a3;
  }

LABEL_5:
  if (*(v9 + 16) != v5)
  {
    sub_2302A3D8C();
    swift_allocError();
    *v13 = 0;
    v13[1] = 0;
    swift_willThrow();
    goto LABEL_9;
  }

  v10 = v3;
  v3 = *(v3 + 4);
  v11 = REMBertTokenizer.tokenize(text:addSpecialTokens:)(a1, a2, 1);
  v12 = sub_230124204(v11);
  if (v4)
  {

LABEL_9:

    return v3;
  }

  v15 = v12;

  v16 = *(v10 + 6);
  sub_2300F5268(v16, v15);
  v19 = (v18 >> 1) - v17;
  if (__OFSUB__(v18 >> 1, v17))
  {
    goto LABEL_75;
  }

  if (v19 <= 2)
  {

    swift_unknownObjectRelease();
    return MEMORY[0x277D84F90];
  }

  v86 = v18;
  v87 = v17;
  v84 = v18 >> 1;
  v91 = v10;
  v20 = sub_23030FFB8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14880);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_23031F090;
  sub_23004CBA4(0, &qword_27DB17080);
  v93 = v16;
  *(v21 + 32) = sub_230310428();
  *(v21 + 40) = v20;
  objc_allocWithZone(MEMORY[0x277CBFF48]);
  v22 = v20;
  v96 = sub_2302A2D7C(v21, 65600);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_23031F090;
  *(v23 + 32) = sub_230310428();
  *(v23 + 40) = v22;
  objc_allocWithZone(MEMORY[0x277CBFF48]);
  v24 = v22;
  v25 = sub_2302A2D7C(v23, 65600);
  if (v87 > 0)
  {
    goto LABEL_81;
  }

  if (v86 < 2)
  {
LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

  v88 = v24;
  v89 = v25;
  if (v19 > v84)
  {
LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  for (i = 0; i != v19; ++i)
  {
    v27 = sub_23030FFB8();
    [v96 setObject:v27 atIndexedSubscript:i];

    v28 = sub_230310428();
    [v89 setObject:v28 atIndexedSubscript:i];
  }

  if (v93 < v19)
  {
    goto LABEL_84;
  }

  v29 = v96;
  if (v19 != v93)
  {
    if (v19 < v93)
    {
      v29 = v96;
      do
      {
        v30 = sub_230310428();
        [v89 setObject:v30 atIndexedSubscript:v19];

        v31 = sub_230310428();
        [v96 setObject:v31 atIndexedSubscript:v19];

        ++v19;
      }

      while (v93 != v19);
      goto LABEL_28;
    }

LABEL_85:
    __break(1u);
  }

LABEL_28:
  type metadata accessor for REMBertTextClassifierInput();
  v32 = swift_allocObject();
  v33 = v29;
  v34 = v32;
  *(v32 + 16) = v33;
  *(v32 + 24) = v89;
  v35 = *(v91 + 3);
  v98[0] = 0;
  v36 = v33;
  v37 = v89;
  v38 = [v35 predictionFromFeatures:v34 error:v98];
  if (!v38)
  {
    v3 = v98[0];
    sub_23030E808();

    swift_willThrow();

    swift_unknownObjectRelease();

    return v3;
  }

  v39 = v38;
  v40 = v98[0];
  v41 = sub_23030F8B8();
  v42 = [v39 featureValueForName_];

  if (!v42 || (v43 = [v42 multiArrayValue], v42, (v90 = v43) == 0))
  {

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    return MEMORY[0x277D84F90];
  }

  if (v5)
  {
    v44 = 0;
    v45 = MEMORY[0x277D84F90];
    do
    {
      v46 = v45;
      v47 = [v90 objectAtIndexedSubscript_];
      sub_23030FF08();
      v49 = v48;

      v50 = v46;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v50 = sub_230080508(0, *(v46 + 2) + 1, 1, v46);
      }

      v45 = v50;
      v52 = *(v50 + 2);
      v51 = *(v50 + 3);
      if (v52 >= v51 >> 1)
      {
        v45 = sub_230080508((v51 > 1), v52 + 1, 1, v50);
      }

      ++v44;
      *(v45 + 2) = v52 + 1;
      *&v45[4 * v52 + 32] = v49;
    }

    while (v5 != v44);
  }

  else
  {
    v45 = MEMORY[0x277D84F90];
  }

  v85 = v36;
  v53 = Array<A>.softmax()(v45);
  v54 = v53;
  v55 = *(v53 + 2);
  v56 = MEMORY[0x277D84F90];
  if (!v55)
  {
    v59 = MEMORY[0x277D84F90];
    goto LABEL_64;
  }

  v57 = 0;
  v58 = v53 + 32;
  v59 = MEMORY[0x277D84F90];
  do
  {
    v94 = v59;
    v60 = v57;
    while (1)
    {
      if (v60 >= *(v54 + 2))
      {
        goto LABEL_76;
      }

      if (v60 < *(*(v91 + 2) + 16))
      {
        break;
      }

      if (qword_27DB13CF0 != -1)
      {
        swift_once();
      }

      v62 = sub_23030EF48();
      __swift_project_value_buffer(v62, qword_27DB19118);
      v63 = sub_23030EF38();
      v64 = sub_230310288();
      if (os_log_type_enabled(v63, v64))
      {
        v65 = swift_slowAlloc();
        *v65 = 0;
        _os_log_impl(&dword_230044000, v63, v64, "Label index out of range. Mismatched model and labels.", v65, 2u);
        v66 = v65;
        v58 = v54 + 32;
        MEMORY[0x231914180](v66, -1, -1);
      }

LABEL_46:
      if (v55 == ++v60)
      {
        v59 = v94;
        goto LABEL_64;
      }
    }

    if (v60 >= *(v9 + 16))
    {
      goto LABEL_80;
    }

    v61 = *&v58[4 * v60];
    if (*(v9 + 32 + 4 * v60) >= v61)
    {
      goto LABEL_46;
    }

    v59 = v94;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v98[0] = v94;
    v68 = v56;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_23009EFB0(0, *(v94 + 2) + 1, 1);
      v59 = v98[0];
    }

    v70 = *(v59 + 2);
    v69 = *(v59 + 3);
    if (v70 >= v69 >> 1)
    {
      sub_23009EFB0((v69 > 1), v70 + 1, 1);
      v59 = v98[0];
    }

    v57 = v60 + 1;
    *(v59 + 2) = v70 + 1;
    v71 = &v59[16 * v70];
    *(v71 + 4) = v60;
    *(v71 + 10) = v61;
    v56 = v68;
    v58 = v54 + 32;
  }

  while (v55 - 1 != v60);
LABEL_64:

  v98[0] = v59;

  sub_2302A1980(v98);

  v72 = v98[0];
  v73 = *(v98[0] + 2);
  if (!v73)
  {

    swift_unknownObjectRelease();

    swift_unknownObjectRelease();

    return MEMORY[0x277D84F90];
  }

  v98[0] = v56;
  sub_23009EF90(0, v73, 0);
  v74 = 0;
  v3 = v98[0];
  v92 = *(v91 + 2);
  v75 = v72 + 40;
  do
  {
    if (v74 >= *(v72 + 2))
    {
      goto LABEL_77;
    }

    v76 = v73;
    v77 = *(v75 - 1);
    if ((v77 & 0x8000000000000000) != 0)
    {
      goto LABEL_78;
    }

    if (v77 >= *(v92 + 16))
    {
      goto LABEL_79;
    }

    v78 = *v75;
    v79 = (v92 + 32 + 16 * v77);
    v80 = v79[1];
    v95 = *v79;
    v82 = *(v3 + 2);
    v81 = *(v3 + 3);
    v97 = v82 + 1;
    v98[0] = v3;

    if (v82 >= v81 >> 1)
    {
      sub_23009EF90((v81 > 1), v97, 1);
      v3 = v98[0];
    }

    ++v74;
    *(v3 + 2) = v97;
    v83 = &v3[32 * v82];
    *(v83 + 4) = v77;
    *(v83 + 5) = v95;
    *(v83 + 6) = v80;
    *(v83 + 14) = v78;
    v75 += 4;
    v73 = v76;
  }

  while (v76 != v74);

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  return v3;
}

char *Array<A>.softmax()(uint64_t a1)
{
  v46 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = sub_23030FD48();
    *(v3 + 16) = v2;
    bzero((v3 + 32), 4 * v2);
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  v4 = (a1 + 32);

  v5 = sub_230310238();
  v6 = sub_230310238();
  v7 = sub_230310238();
  v8 = sub_230310238();
  sub_2303103B8();
  sub_2303102B8();
  v16[0] = 0x1000000000000;
  v16[1] = v2;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0;
  v25 = v4;
  v26 = v5;
  v27 = 0;
  v28 = v6;
  v29 = 1065353216;
  v30 = 0x1000000000000;
  v31 = v2;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0;
  v40 = v3 + 32;
  v41 = v7;
  v42 = 0;
  v43 = v8;
  v44 = 1065353216;
  v45 = 0;
  v12 = 0;
  v14 = 0;
  v15 = 0;
  v13 = 0;
  v9 = MEMORY[0x2319132C0](v16, &v12);
  v10 = v3;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v10 = sub_230080508(0, *(v3 + 16), 0, v3);
  }

  BNNSFilterApply(v9, v4, v10 + 32);

  return v10;
}

uint64_t REMBertTextClassifier.deinit()
{

  return v0;
}

uint64_t REMBertTextClassifier.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_2302A2AE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = REMBertTextClassifier.predict(_:thresholds:)(a1, a2, a3);
  v5 = *(v3 + 8);

  return v5(v4);
}

id sub_2302A2BE0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x64695F7475706E69 && a2 == 0xE900000000000073 || (sub_230311048() & 1) != 0)
  {
    v5 = 16;
    return [objc_opt_self() featureValueWithMultiArray_];
  }

  if (a1 == 0x6F69746E65747461 && a2 == 0xEE006B73616D5F6ELL || (sub_230311048() & 1) != 0)
  {
    v5 = 24;
    return [objc_opt_self() featureValueWithMultiArray_];
  }

  return 0;
}

uint64_t sub_2302A2D3C()
{

  return swift_deallocClassInstance();
}

id sub_2302A2D7C(uint64_t a1, uint64_t a2)
{
  v9[1] = *MEMORY[0x277D85DE8];
  sub_23004CBA4(0, &qword_27DB17080);
  v4 = sub_23030FCC8();

  v9[0] = 0;
  v5 = [v2 initWithShape:v4 dataType:a2 error:v9];

  if (v5)
  {
    v6 = v9[0];
  }

  else
  {
    v7 = v9[0];
    sub_23030E808();

    swift_willThrow();
  }

  return v5;
}

uint64_t sub_2302A2E78(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
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
      result = sub_2302A36A0(v8);
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
        sub_2302A3418((*a3 + 16 * *v82), (*a3 + 16 * *v84), (*a3 + 16 * v85), v5);
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
        v16 = *(v15 - 4) >= *v15;
        ++v14;
        v15 += 4;
        if ((((v13 < v10) ^ v16) & 1) == 0)
        {
          v7 = v14 - 1;
          if (v13 >= v10)
          {
            goto LABEL_23;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v13 >= v10)
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
      result = sub_23007EA34(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v34 = *(v8 + 24);
    v35 = v5 + 1;
    if (v5 >= v34 >> 1)
    {
      result = sub_23007EA34((v34 > 1), v5 + 1, 1, v8);
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
        sub_2302A3418((*a3 + 16 * *v75), (*a3 + 16 * *v77), (*a3 + 16 * v78), v89);
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
    if (*(v30 - 8) >= v31)
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

uint64_t sub_2302A3418(float *__dst, float *__src, float *a3, float *a4)
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

      if (v4[2] < v6[2])
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
      if (*(v6 - 2) < *(v15 - 2))
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

uint64_t sub_2302A3614(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_2302A36A0(v3);
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
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

char *sub_2302A36B4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB142C0);
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

uint64_t sub_2302A38D0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB149E8);
    v3 = sub_2303107E8();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      sub_230311358();

      sub_23030F9C8();
      result = sub_2303113A8();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = sub_230311048();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t sub_2302A3A38(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB191A8);
    v3 = sub_2303107E8();
    v4 = 0;
    v5 = v3 + 56;
    v25 = v1;
    v26 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v26 + 8 * v4);
      _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
      sub_230311358();
      v27 = v7;
      sub_23030F9C8();
      v8 = sub_2303113A8();

      v10 = -1 << *(v3 + 32);
      v11 = v8 & ~v10;
      v12 = v11 >> 6;
      v13 = *(v5 + 8 * (v11 >> 6));
      v14 = 1 << v11;
      if (((1 << v11) & v13) == 0)
      {
        goto LABEL_15;
      }

      v15 = ~v10;
      do
      {
        v16 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
        v18 = v17;
        if (v16 == _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0() && v18 == v19)
        {

LABEL_4:
          v6 = v25;
          goto LABEL_5;
        }

        v21 = sub_230311048();

        if (v21)
        {

          goto LABEL_4;
        }

        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = *(v5 + 8 * (v11 >> 6));
        v14 = 1 << v11;
      }

      while (((1 << v11) & v13) != 0);
      v6 = v25;
LABEL_15:
      *(v5 + 8 * v12) = v14 | v13;
      *(*(v3 + 48) + 8 * v11) = v27;
      v22 = *(v3 + 16);
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v24;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

id sub_2302A3C2C(uint64_t a1, uint64_t a2)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = sub_23030E8D8();
  v13[0] = 0;
  v5 = [swift_getObjCClassFromMetadata() modelWithContentsOfURL:v4 configuration:a2 error:v13];

  v6 = v13[0];
  if (v5)
  {
    v7 = sub_23030E9B8();
    v8 = *(*(v7 - 8) + 8);
    v9 = v6;
    v8(a1, v7);
  }

  else
  {
    v10 = v13[0];
    sub_23030E808();

    swift_willThrow();
    v11 = sub_23030E9B8();
    (*(*(v11 - 8) + 8))(a1, v11);
  }

  return v5;
}

unint64_t sub_2302A3D8C()
{
  result = qword_27DB19138;
  if (!qword_27DB19138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB19138);
  }

  return result;
}

uint64_t REMOrderedIdentifierMap.toJSON()@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB146C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2303167B0;
  *(inited + 32) = 0xD000000000000012;
  *(inited + 40) = 0x80000002303463E0;
  v5 = [v2 orderedIdentifiers];
  v6 = sub_23030FCD8();

  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB13DE0);
  *(inited + 48) = v6;
  *(inited + 72) = v7;
  *(inited + 80) = 0xD000000000000017;
  v8 = *MEMORY[0x277D44CC0];
  *(inited + 120) = MEMORY[0x277D83B88];
  *(inited + 88) = 0x8000000230341C30;
  *(inited + 96) = v8;
  v9 = sub_23008C5BC(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB146B0);
  result = swift_arrayDestroy();
  *a1 = v9;
  *(a1 + 8) = 0;
  return result;
}

void *static REMOrderedIdentifierMap.fromJSON(_:)(_BYTE *a1)
{
  if ((a1[8] & 1) == 0)
  {
    v1 = *a1;
    if (!*(*a1 + 16) || (v4 = sub_23005EE00(0xD000000000000017, 0x8000000230341C30), (v5 & 1) == 0))
    {
      sub_2300BB7A4();
      swift_allocError();
      *v2 = 0xD000000000000017;
      *(v2 + 8) = 0x8000000230341C30;
      v3 = 1;
      goto LABEL_9;
    }

    sub_23004D5CC(v1[7] + 32 * v4, v16);
    sub_230061914(v16, v17);
    sub_23004D5CC(v17, v16);
    if (swift_dynamicCast())
    {
      if (rem_isUnsupportedVersionByRuntime())
      {
        sub_2300BB7A4();
        swift_allocError();
        *v6 = *&v15[0];
        *(v6 + 8) = 0;
        *(v6 + 16) = 0;
LABEL_18:
        swift_willThrow();
        goto LABEL_19;
      }

      if (v1[2])
      {
        v10 = sub_23005EE00(0xD000000000000012, 0x80000002303463E0);
        if (v11)
        {
          sub_23004D5CC(v1[7] + 32 * v10, v15);
          sub_230061914(v15, v16);
          sub_23004D5CC(v16, v15);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB13DE0);
          if (swift_dynamicCast())
          {
            v12 = objc_allocWithZone(swift_getObjCClassFromMetadata());
            v13 = sub_23030FCC8();

            v1 = [v12 initWithOrderedIdentifiers_];

            __swift_destroy_boxed_opaque_existential_1(v16);
            __swift_destroy_boxed_opaque_existential_1(v17);
            return v1;
          }

          sub_2300BB7A4();
          swift_allocError();
          *v14 = 0xD000000000000012;
          *(v14 + 8) = 0x80000002303463E0;
          *(v14 + 16) = 2;
          swift_willThrow();
          __swift_destroy_boxed_opaque_existential_1(v16);
LABEL_19:
          __swift_destroy_boxed_opaque_existential_1(v17);
          return v1;
        }
      }

      sub_2300BB7A4();
      swift_allocError();
      *v8 = 0xD000000000000012;
      *(v8 + 8) = 0x80000002303463E0;
      v9 = 1;
    }

    else
    {
      sub_2300BB7A4();
      swift_allocError();
      *v8 = 0xD000000000000017;
      *(v8 + 8) = 0x8000000230341C30;
      v9 = 2;
    }

    *(v8 + 16) = v9;
    goto LABEL_18;
  }

  sub_2300BB7A4();
  swift_allocError();
  *v2 = 0;
  *(v2 + 8) = 0;
  v3 = 3;
LABEL_9:
  *(v2 + 16) = v3;
  swift_willThrow();
  return v1;
}

void *sub_2302A42D4@<X0>(_BYTE *a1@<X0>, void *a2@<X8>)
{
  result = static REMOrderedIdentifierMap.fromJSON(_:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_2302A4300(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v29 = MEMORY[0x277D84F90];
  sub_23009EF10(0, v1, 0);
  v2 = v29;
  v4 = a1 + 64;
  result = sub_230310658();
  v6 = result;
  v7 = 0;
  v8 = *(a1 + 36);
  v24 = a1 + 72;
  v25 = a1;
  v9 = a1;
  v26 = v1;
  v27 = v8;
  v28 = a1 + 64;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v9 + 32))
  {
    v11 = v6 >> 6;
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_22;
    }

    if (v8 != *(v9 + 36))
    {
      goto LABEL_23;
    }

    v12 = *(*(v9 + 48) + 8 * v6);
    v13 = *(*(v9 + 56) + 8 * v6);

    v15 = *(v29 + 16);
    v14 = *(v29 + 24);
    if (v15 >= v14 >> 1)
    {
      result = sub_23009EF10((v14 > 1), v15 + 1, 1);
      v9 = v25;
    }

    *(v29 + 16) = v15 + 1;
    v16 = v29 + 40 * v15;
    *(v16 + 32) = v13;
    *(v16 + 40) = v12;
    *(v16 + 48) = 0;
    *(v16 + 56) = 0;
    *(v16 + 64) = 0;
    v10 = 1 << *(v9 + 32);
    if (v6 >= v10)
    {
      goto LABEL_24;
    }

    v4 = v28;
    v17 = *(v28 + 8 * v11);
    if ((v17 & (1 << v6)) == 0)
    {
      goto LABEL_25;
    }

    v8 = v27;
    if (v27 != *(v9 + 36))
    {
      goto LABEL_26;
    }

    v18 = v17 & (-2 << (v6 & 0x3F));
    if (v18)
    {
      v10 = __clz(__rbit64(v18)) | v6 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v19 = v11 << 6;
      v20 = v11 + 1;
      v21 = (v24 + 8 * v11);
      while (v20 < (v10 + 63) >> 6)
      {
        v23 = *v21++;
        v22 = v23;
        v19 += 64;
        ++v20;
        if (v23)
        {
          result = sub_2300EB170(v6, v27, 0);
          v9 = v25;
          v10 = __clz(__rbit64(v22)) + v19;
          goto LABEL_4;
        }
      }

      result = sub_2300EB170(v6, v27, 0);
      v9 = v25;
    }

LABEL_4:
    ++v7;
    v6 = v10;
    if (v7 == v26)
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

uint64_t sub_2302A455C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v24 = MEMORY[0x277D84F90];
  sub_23009EF10(0, v1, 0);
  v2 = v24;
  v4 = a1 + 64;
  result = sub_230310658();
  v6 = result;
  v7 = 0;
  v23 = *(a1 + 36);
  v21 = v1;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(a1 + 32))
  {
    v9 = v6 >> 6;
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_22;
    }

    if (v23 != *(a1 + 36))
    {
      goto LABEL_23;
    }

    v22 = *(*(a1 + 48) + 8 * v6);
    v10 = *(*(a1 + 56) + 8 * v6);
    v11 = *(v24 + 16);
    v12 = *(v24 + 24);

    if (v11 >= v12 >> 1)
    {
      result = sub_23009EF10((v12 > 1), v11 + 1, 1);
    }

    *(v24 + 16) = v11 + 1;
    v13 = v24 + 40 * v11;
    *(v13 + 32) = v10;
    *(v13 + 40) = v22;
    *(v13 + 48) = 0;
    *(v13 + 56) = 0;
    *(v13 + 64) = 2;
    v8 = 1 << *(a1 + 32);
    if (v6 >= v8)
    {
      goto LABEL_24;
    }

    v4 = a1 + 64;
    v14 = *(a1 + 64 + 8 * v9);
    if ((v14 & (1 << v6)) == 0)
    {
      goto LABEL_25;
    }

    if (v23 != *(a1 + 36))
    {
      goto LABEL_26;
    }

    v15 = v14 & (-2 << (v6 & 0x3F));
    if (v15)
    {
      v8 = __clz(__rbit64(v15)) | v6 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v16 = v9 << 6;
      v17 = v9 + 1;
      v18 = (a1 + 72 + 8 * v9);
      while (v17 < (v8 + 63) >> 6)
      {
        v20 = *v18++;
        v19 = v20;
        v16 += 64;
        ++v17;
        if (v20)
        {
          result = sub_2300EB170(v6, v23, 0);
          v8 = __clz(__rbit64(v19)) + v16;
          goto LABEL_4;
        }
      }

      result = sub_2300EB170(v6, v23, 0);
    }

LABEL_4:
    ++v7;
    v6 = v8;
    if (v7 == v21)
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

uint64_t sub_2302A47B0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v24 = MEMORY[0x277D84F90];
  sub_23009EF10(0, v1, 0);
  v2 = v24;
  v4 = a1 + 64;
  result = sub_230310658();
  v6 = result;
  v7 = 0;
  v23 = *(a1 + 36);
  v21 = v1;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(a1 + 32))
  {
    v9 = v6 >> 6;
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_22;
    }

    if (v23 != *(a1 + 36))
    {
      goto LABEL_23;
    }

    v22 = *(*(a1 + 48) + 8 * v6);
    v10 = *(*(a1 + 56) + 8 * v6);
    v11 = *(v24 + 16);
    v12 = *(v24 + 24);

    if (v11 >= v12 >> 1)
    {
      result = sub_23009EF10((v12 > 1), v11 + 1, 1);
    }

    *(v24 + 16) = v11 + 1;
    v13 = v24 + 40 * v11;
    *(v13 + 32) = v10;
    *(v13 + 40) = v22;
    *(v13 + 48) = 0;
    *(v13 + 56) = 0;
    *(v13 + 64) = 7;
    v8 = 1 << *(a1 + 32);
    if (v6 >= v8)
    {
      goto LABEL_24;
    }

    v4 = a1 + 64;
    v14 = *(a1 + 64 + 8 * v9);
    if ((v14 & (1 << v6)) == 0)
    {
      goto LABEL_25;
    }

    if (v23 != *(a1 + 36))
    {
      goto LABEL_26;
    }

    v15 = v14 & (-2 << (v6 & 0x3F));
    if (v15)
    {
      v8 = __clz(__rbit64(v15)) | v6 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v16 = v9 << 6;
      v17 = v9 + 1;
      v18 = (a1 + 72 + 8 * v9);
      while (v17 < (v8 + 63) >> 6)
      {
        v20 = *v18++;
        v19 = v20;
        v16 += 64;
        ++v17;
        if (v20)
        {
          result = sub_2300EB170(v6, v23, 0);
          v8 = __clz(__rbit64(v19)) + v16;
          goto LABEL_4;
        }
      }

      result = sub_2300EB170(v6, v23, 0);
    }

LABEL_4:
    ++v7;
    v6 = v8;
    if (v7 == v21)
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

uint64_t sub_2302A4A04(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v31 = MEMORY[0x277D84F90];
  sub_23009EF10(0, v1, 0);
  v2 = v31;
  v4 = a1 + 64;
  result = sub_230310658();
  v6 = result;
  v7 = 0;
  v8 = *(a1 + 36);
  v25 = a1 + 72;
  v26 = a1;
  v9 = a1;
  v27 = v1;
  v28 = v8;
  v29 = a1 + 64;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v9 + 32))
  {
    v11 = v6 >> 6;
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_22;
    }

    if (v8 != *(v9 + 36))
    {
      goto LABEL_23;
    }

    v12 = (*(v9 + 48) + 16 * v6);
    v13 = v12[1];
    v30 = *v12;
    v14 = *(*(v9 + 56) + 8 * v6);

    v16 = *(v31 + 16);
    v15 = *(v31 + 24);
    if (v16 >= v15 >> 1)
    {
      result = sub_23009EF10((v15 > 1), v16 + 1, 1);
      v9 = v26;
    }

    *(v31 + 16) = v16 + 1;
    v17 = v31 + 40 * v16;
    *(v17 + 32) = v14;
    *(v17 + 40) = v30;
    *(v17 + 48) = v13;
    *(v17 + 56) = 0;
    *(v17 + 64) = 8;
    v10 = 1 << *(v9 + 32);
    if (v6 >= v10)
    {
      goto LABEL_24;
    }

    v4 = v29;
    v18 = *(v29 + 8 * v11);
    if ((v18 & (1 << v6)) == 0)
    {
      goto LABEL_25;
    }

    v8 = v28;
    if (v28 != *(v9 + 36))
    {
      goto LABEL_26;
    }

    v19 = v18 & (-2 << (v6 & 0x3F));
    if (v19)
    {
      v10 = __clz(__rbit64(v19)) | v6 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v20 = v11 << 6;
      v21 = v11 + 1;
      v22 = (v25 + 8 * v11);
      while (v21 < (v10 + 63) >> 6)
      {
        v24 = *v22++;
        v23 = v24;
        v20 += 64;
        ++v21;
        if (v24)
        {
          result = sub_2300EB170(v6, v28, 0);
          v9 = v26;
          v10 = __clz(__rbit64(v23)) + v20;
          goto LABEL_4;
        }
      }

      result = sub_2300EB170(v6, v28, 0);
      v9 = v26;
    }

LABEL_4:
    ++v7;
    v6 = v10;
    if (v7 == v27)
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

uint64_t sub_2302A4C70(uint64_t a1, char a2)
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v4 = a1;
  v33 = MEMORY[0x277D84F90];
  sub_23009EF10(0, v2, 0);
  v3 = v33;
  v5 = v4 + 64;
  result = sub_230310658();
  v7 = result;
  v8 = 0;
  v9 = *(v4 + 36);
  v27 = v4 + 72;
  v10 = a2;
  v29 = v2;
  v30 = v9;
  v31 = v4 + 64;
  while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v4 + 32))
  {
    v12 = v7 >> 6;
    if ((*(v5 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
    {
      goto LABEL_22;
    }

    if (v9 != *(v4 + 36))
    {
      goto LABEL_23;
    }

    v32 = v8;
    v13 = *(v4 + 56);
    v14 = v4;
    v15 = *(*(v4 + 48) + 8 * v7);
    v16 = *(v13 + 8 * v7);

    v18 = *(v33 + 16);
    v17 = *(v33 + 24);
    if (v18 >= v17 >> 1)
    {
      result = sub_23009EF10((v17 > 1), v18 + 1, 1);
      v10 = a2;
    }

    *(v33 + 16) = v18 + 1;
    v19 = v33 + 40 * v18;
    *(v19 + 32) = v16;
    *(v19 + 40) = v15;
    *(v19 + 48) = 0;
    *(v19 + 56) = 0;
    *(v19 + 64) = v10;
    v11 = 1 << *(v14 + 32);
    if (v7 >= v11)
    {
      goto LABEL_24;
    }

    v4 = v14;
    v5 = v31;
    v20 = *(v31 + 8 * v12);
    if ((v20 & (1 << v7)) == 0)
    {
      goto LABEL_25;
    }

    v9 = v30;
    if (v30 != *(v4 + 36))
    {
      goto LABEL_26;
    }

    v21 = v20 & (-2 << (v7 & 0x3F));
    if (v21)
    {
      v11 = __clz(__rbit64(v21)) | v7 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v22 = v12 << 6;
      v23 = v12 + 1;
      v24 = (v27 + 8 * v12);
      while (v23 < (v11 + 63) >> 6)
      {
        v26 = *v24++;
        v25 = v26;
        v22 += 64;
        ++v23;
        if (v26)
        {
          result = sub_2300EB170(v7, v30, 0);
          v10 = a2;
          v11 = __clz(__rbit64(v25)) + v22;
          goto LABEL_4;
        }
      }

      result = sub_2300EB170(v7, v30, 0);
      v10 = a2;
    }

LABEL_4:
    v8 = v32 + 1;
    v7 = v11;
    if (v32 + 1 == v29)
    {
      return v3;
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

uint64_t sub_2302A4EE0@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t sub_2302A4F38@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t REMSuggestedAttributesElector.electionFor(request:response:)(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 80);
  v281[4] = *(a1 + 64);
  v282[0] = v3;
  *(v282 + 15) = *(a1 + 95);
  v4 = *(a1 + 16);
  v281[0] = *a1;
  v281[1] = v4;
  v5 = *(a1 + 48);
  v281[2] = *(a1 + 32);
  v281[3] = v5;
  v6 = *a2;
  v7 = a2[1];
  v8 = a2[2];
  *(v284 + 9) = *(a2 + 41);
  v283[1] = v7;
  v284[0] = v8;
  v283[0] = v6;
  *(v286 + 9) = *(a2 + 105);
  v9 = a2[6];
  v285[1] = a2[5];
  v286[0] = v9;
  v285[0] = a2[4];
  *(v288 + 9) = *(a2 + 169);
  v10 = a2[10];
  v287[1] = a2[9];
  v288[0] = v10;
  v287[0] = a2[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB191B0);
  v11 = swift_allocObject();
  v12 = a2[1];
  v11[2] = *a2;
  v11[3] = v12;
  v11[4] = a2[2];
  *(v11 + 73) = *(a2 + 41);
  v13 = a2[5];
  v11[6] = a2[4];
  v11[7] = v13;
  v11[8] = a2[6];
  *(v11 + 137) = *(a2 + 105);
  v14 = a2[8];
  v15 = a2[9];
  v16 = a2[10];
  *(v11 + 201) = *(a2 + 169);
  v11[11] = v15;
  v11[12] = v16;
  v11[10] = v14;
  sub_230055F74(v283, &v278, &qword_27DB16E70);
  sub_230055F74(v285, &v278, &qword_27DB16E70);
  sub_230055F74(v287, &v278, &qword_27DB16E70);
  v251 = 0;
  v17 = MEMORY[0x277D84F90];
  for (i = 2; i != 14; i += 4)
  {
    *&v280[9] = *(&v11[i + 2] + 9);
    v19 = v11[i + 1];
    v278 = v11[i];
    v279 = v19;
    *v280 = v11[i + 2];
    if (v280[24])
    {
      v276[0] = v278;
      v276[1] = v279;
      v276[2] = *v280;
      v277 = *&v280[16];
      sub_230055F74(&v278, v275, &qword_27DB16E70);
      sub_230133BC4();

      swift_willThrowTypedImpl();

      sub_230061918(&v278, &qword_27DB16E70);
      v20 = MEMORY[0x277D84F90];
    }

    else
    {
      v20 = v278;
      sub_230055F74(&v278, v275, &qword_27DB16E70);
    }

    v21 = *(v20 + 16);
    v22 = *(v17 + 16);
    v23 = v22 + v21;
    if (__OFADD__(v22, v21))
    {
      __break(1u);
LABEL_192:
      __break(1u);
LABEL_193:
      __break(1u);
      goto LABEL_194;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && (v25 = *(v17 + 24) >> 1, v25 >= v23))
    {
      if (!*(v20 + 16))
      {
        goto LABEL_2;
      }
    }

    else
    {
      if (v22 <= v23)
      {
        v26 = v22 + v21;
      }

      else
      {
        v26 = v22;
      }

      v17 = sub_23007F430(isUniquelyReferenced_nonNull_native, v26, 1, v17);
      v25 = *(v17 + 24) >> 1;
      if (!*(v20 + 16))
      {
LABEL_2:

        if (v21)
        {
          goto LABEL_192;
        }

        continue;
      }
    }

    if (v25 - *(v17 + 16) < v21)
    {
      goto LABEL_193;
    }

    swift_arrayInitWithCopy();

    if (v21)
    {
      v27 = *(v17 + 16);
      v28 = __OFADD__(v27, v21);
      v29 = v27 + v21;
      if (v28)
      {
        goto LABEL_196;
      }

      *(v17 + 16) = v29;
    }
  }

  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB16E70);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  if (qword_280C99E98 != -1)
  {
    goto LABEL_198;
  }

  while (1)
  {
    v30 = sub_23030EF48();
    __swift_project_value_buffer(v30, qword_280C970F8);

    v31 = sub_23030EF38();
    v32 = sub_2303102A8();

    v271 = v17;
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *&v278 = v34;
      *v33 = 136315138;
      v35 = MEMORY[0x231911A60](v17, &type metadata for REMSuggestedAttributeOutput);
      v37 = sub_23004E30C(v35, v36, &v278);

      *(v33 + 4) = v37;
      v17 = v271;
      _os_log_impl(&dword_230044000, v31, v32, "before merging attributes: %s", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v34);
      MEMORY[0x231914180](v34, -1, -1);
      MEMORY[0x231914180](v33, -1, -1);
    }

    v274 = 1;
    v38 = *(v17 + 16);
    v39 = v251;
    if (!v38)
    {
      break;
    }

    v40 = 0;
    v41 = (v17 + 64);
    v42 = MEMORY[0x277D84F90];
    v266 = *(v17 + 16);
    while (v40 < *(v17 + 16))
    {
      v43 = *(v41 - 2);
      v44 = *(v41 - 1);
      v45 = *(v41 - 3);
      v46 = *v41;
      *&v278 = *(v41 - 4);
      *(&v278 + 1) = v45;
      *&v279 = v43;
      *(&v279 + 1) = v44;
      v280[0] = v46;
      sub_230106E94(v278, v45, v43, v44, v46);
      v47 = sub_2302A7FB4(&v278, v270, v281, &v274);
      v48 = v278;
      v49 = v279;
      v50 = v280[0];
      if (v47)
      {
        v51 = swift_isUniquelyReferenced_nonNull_native();
        v275[0] = v42;
        if ((v51 & 1) == 0)
        {
          sub_23009EF10(0, *(v42 + 16) + 1, 1);
          v42 = v275[0];
        }

        v53 = *(v42 + 16);
        v52 = *(v42 + 24);
        v54 = v53 + 1;
        if (v53 >= v52 >> 1)
        {
          v251 = 0;
          sub_23009EF10((v52 > 1), v53 + 1, 1);
          v54 = v53 + 1;
          v42 = v275[0];
        }

        *(v42 + 16) = v54;
        v55 = v42 + 40 * v53;
        *(v55 + 32) = v48;
        *(v55 + 48) = v49;
        *(v55 + 64) = v50;
        v38 = v266;
      }

      else
      {
        sub_230106D70(v278, *(&v278 + 1), v279, *(&v279 + 1), v280[0]);
      }

      ++v40;
      v41 += 40;
      v17 = v271;
      if (v38 == v40)
      {
        goto LABEL_35;
      }
    }

LABEL_194:
    __break(1u);
LABEL_195:
    __break(1u);
LABEL_196:
    __break(1u);
LABEL_197:
    __break(1u);
LABEL_198:
    swift_once();
  }

  v42 = MEMORY[0x277D84F90];
LABEL_35:
  v270 = v42;
  v251 = v39;

  v56 = sub_23030EF38();
  v57 = sub_2303102A8();
  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    *v58 = 134219264;
    *(v58 + 4) = 2;
    *(v58 + 12) = 2048;
    *(v58 + 14) = 2;
    *(v58 + 22) = 2048;
    *(v58 + 24) = 2;
    *(v58 + 32) = 2048;
    *(v58 + 34) = 1;
    *(v58 + 42) = 2048;
    *(v58 + 44) = 3;
    *(v58 + 52) = 2048;
    *(v58 + 54) = 1;
    _os_log_impl(&dword_230044000, v56, v57, "listLimit: %ld, dueDateLimit: %ld, locationLimit: %ld, priorityLimit: %ld, tagLimit: %ld, contactLimit: %ld", v58, 0x3Eu);
    MEMORY[0x231914180](v58, -1, -1);
  }

  v59 = v270;
  v60 = *(v270 + 16);
  if (v60)
  {
    v253 = 0;
    v254 = 0;
    v61 = 0;
    v62 = (v270 + 64);
    v252 = -1;
    v256 = MEMORY[0x277D84F98];
    v257 = MEMORY[0x277D84F98];
    v63 = MEMORY[0x277D84F98];
    v255 = MEMORY[0x277D84F98];
    v259 = MEMORY[0x277D84F90];
    v260 = MEMORY[0x277D84F98];
    v265 = MEMORY[0x277D84F98];
    v261 = *(v270 + 16);
    v262 = MEMORY[0x277D84F98];
    v258 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v61 >= *(v59 + 16))
      {
        goto LABEL_195;
      }

      v64 = *(v62 - 4);
      v65 = *(v62 - 3);
      v66 = *(v62 - 2);
      v67 = *(v62 - 1);
      v68 = *v62;
      if (v68 > 4)
      {
        if (*v62 <= 6u)
        {
          if (v68 == 5)
          {
            v86 = v63;
            v87 = *(v62 - 2);
            v88 = *(v62 - 1);
            swift_bridgeObjectRetain_n();
            v89 = v65;
            v17 = v60;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v259 = sub_23007F430(0, *(v259 + 2) + 1, 1, v259);
            }

            v90 = v88;
            v92 = *(v259 + 2);
            v91 = *(v259 + 3);
            if (v92 >= v91 >> 1)
            {
              v214 = sub_23007F430((v91 > 1), v92 + 1, 1, v259);
              v90 = v88;
              v259 = v214;
            }

            v93 = v90;
            sub_230106D70(v64, v65, v87, v90, 5u);
            *(v259 + 2) = v92 + 1;
            v94 = &v259[40 * v92];
            *(v94 + 4) = v64;
            *(v94 + 5) = v65;
            *(v94 + 6) = v87;
            *(v94 + 7) = v93;
            v94[64] = 5;
            v59 = v270;
            v60 = v17;
            v63 = v86;
          }

          else if (v65)
          {

            sub_230106D5C(v254, v253, 0, 0, v252);
            v252 = 6;
            v253 = 1;
            v254 = v64;
          }

          goto LABEL_42;
        }

        if (v68 == 7)
        {
          if (v63[2])
          {
            v102 = *(v62 - 2);
            v103 = v63;
            v104 = *(v62 - 1);
            v105 = sub_23008E270(*(v62 - 3));
            if (v106)
            {
              v275[0] = *(v103[7] + 8 * v105);
              *&v276[0] = v64;

              REMSuggestedAttributeOutput.Source.union(_:)(v276);
              v17 = v60;
              v107 = v278;
              v108 = swift_isUniquelyReferenced_nonNull_native();
              v275[0] = v103;
              v109 = v107;
              v60 = v17;
              sub_2300A26DC(v109, v65, v108);
              sub_230106D70(v64, v65, v102, v104, 7u);
              v63 = v275[0];
              v59 = v270;
            }

            else
            {
              v59 = v270;
              v63 = v103;
            }

            goto LABEL_42;
          }

          v158 = v63;
          v159 = *(v62 - 2);
          v160 = *(v62 - 1);
          sub_230106E94(*(v62 - 4), *(v62 - 3), v66, v67, 7u);

          v161 = swift_isUniquelyReferenced_nonNull_native();
          *&v278 = v158;
          v162 = sub_23008E270(v65);
          v164 = v158[2];
          v165 = (v163 & 1) == 0;
          v28 = __OFADD__(v164, v165);
          v166 = v164 + v165;
          if (v28)
          {
            __break(1u);
LABEL_200:
            __break(1u);
LABEL_201:
            __break(1u);
LABEL_202:
            __break(1u);
LABEL_203:
            __break(1u);
            goto LABEL_204;
          }

          v167 = v163;
          if (v158[3] >= v166)
          {
            v59 = v270;
            if ((v161 & 1) == 0)
            {
              v217 = v162;
              sub_23008BAA4();
              v59 = v270;
              v162 = v217;
            }

            v17 = v265;
          }

          else
          {
            sub_230087E00(v166, v161);
            v162 = sub_23008E270(v65);
            if ((v167 & 1) != (v168 & 1))
            {
              goto LABEL_215;
            }

            v17 = v265;
            v59 = v270;
          }

          v60 = v278;
          v265 = v17;
          if (v167)
          {
            *(*(v278 + 56) + 8 * v162) = v64;

            sub_230106D70(v64, v65, v159, v160, 7u);
          }

          else
          {
            *(v278 + 8 * (v162 >> 6) + 64) |= 1 << v162;
            *(v60[6] + 8 * v162) = v65;
            *(v60[7] + 8 * v162) = v64;
            sub_230106D70(v64, v65, v159, v160, 7u);
            v193 = v60[2];
            v28 = __OFADD__(v193, 1);
            v194 = v193 + 1;
            if (v28)
            {
              goto LABEL_207;
            }

            v60[2] = v194;
          }

          v63 = v60;
          goto LABEL_41;
        }

        v268 = *(v62 - 1);
        if (v68 != 8)
        {
          v17 = v60;
          v60 = v265[2];
          v115 = *(v62 - 2);
          sub_230106E94(v64, v65, v66, v67, 9u);

          if (v60)
          {
            v116 = sub_23008E274(v65);
            if (v117)
            {
              v275[0] = *(v265[7] + 8 * v116);
              *&v276[0] = v64;

              REMSuggestedAttributeOutput.Source.union(_:)(v276);

              v118 = v278;
              v119 = swift_isUniquelyReferenced_nonNull_native();
              v275[0] = v265;
              sub_2300A2468(v118, v65, v119);
              sub_230106D70(v64, v65, v115, v268, 9u);

              v265 = v275[0];
LABEL_103:
              v59 = v270;
              v60 = v17;
              goto LABEL_42;
            }
          }

          if (v265[2])
          {

            sub_230106D70(v64, v65, v115, v268, 9u);
            goto LABEL_103;
          }

          v272 = v63;

          v185 = swift_isUniquelyReferenced_nonNull_native();
          *&v278 = v265;
          v186 = sub_23008E274(v65);
          v188 = v265[2];
          v189 = (v187 & 1) == 0;
          v28 = __OFADD__(v188, v189);
          v190 = v188 + v189;
          if (v28)
          {
            goto LABEL_206;
          }

          v191 = v187;
          if (v265[3] >= v190)
          {
            v59 = v270;
            if ((v185 & 1) == 0)
            {
              v219 = v186;
              sub_23008B920();
              v59 = v270;
              v186 = v219;
            }
          }

          else
          {
            sub_230087B44(v190, v185);
            v186 = sub_23008E274(v65);
            if ((v191 & 1) != (v192 & 1))
            {
              goto LABEL_213;
            }

            v59 = v270;
          }

          v17 = v278;
          v265 = v278;
          if (v191)
          {
            *(*(v278 + 56) + 8 * v186) = v64;

            v197 = v64;
            v198 = v65;
            v199 = v115;
            v200 = v268;
            v201 = 9;
LABEL_173:
            sub_230106D70(v197, v198, v199, v200, v201);
          }

          else
          {
            *(v278 + 8 * (v186 >> 6) + 64) |= 1 << v186;
            *(*(v17 + 48) + 8 * v186) = v65;
            *(*(v17 + 56) + 8 * v186) = v64;
            sub_230106D70(v64, v65, v115, v268, 9u);
            v212 = *(v17 + 16);
            v28 = __OFADD__(v212, 1);
            v213 = v212 + 1;
            if (v28)
            {
              goto LABEL_212;
            }

            *(v17 + 16) = v213;
          }

          goto LABEL_176;
        }

        v74 = v257[2];
        v17 = *(v62 - 2);
        sub_230106E94(v64, v65, v66, v67, 8u);

        if (v74)
        {
          v75 = sub_23005EE00(v65, v17);
          if (v76)
          {
            v275[0] = *(v257[7] + 8 * v75);
            *&v276[0] = v64;

            REMSuggestedAttributeOutput.Source.union(_:)(v276);

            v77 = v278;
            v78 = swift_isUniquelyReferenced_nonNull_native();
            v275[0] = v257;
            sub_2300A2594(v77, v65, v17, v78);
            sub_230106D70(v64, v65, v17, v268, 8u);
            v257 = v275[0];
            goto LABEL_40;
          }
        }

        v264 = v17;
        if (v257[2] > 2uLL)
        {

          sub_230106D70(v64, v65, v17, v268, 8u);
          goto LABEL_40;
        }

        v17 = swift_isUniquelyReferenced_nonNull_native();
        *&v278 = v257;
        v137 = sub_23005EE00(v65, v264);
        v138 = v257[2];
        v139 = (v136 & 1) == 0;
        v140 = v138 + v139;
        if (__OFADD__(v138, v139))
        {
          goto LABEL_202;
        }

        v141 = v136;
        if (v257[3] >= v140)
        {
          if ((v17 & 1) == 0)
          {
            sub_23008B934();
          }
        }

        else
        {
          sub_230087B58(v140, v17);
          v142 = sub_23005EE00(v65, v264);
          if ((v141 & 1) != (v143 & 1))
          {
            goto LABEL_214;
          }

          v137 = v142;
        }

        v196 = v278;
        v257 = v278;
        if (v141)
        {
          *(*(v278 + 56) + 8 * v137) = v64;

          v169 = v64;
          v170 = v65;
          v171 = v264;
          v172 = v268;
          v173 = 8;
          goto LABEL_150;
        }

        *(v278 + 8 * (v137 >> 6) + 64) |= 1 << v137;
        v205 = (v196[6] + 16 * v137);
        v60 = v264;
        *v205 = v65;
        v205[1] = v264;
        *(v196[7] + 8 * v137) = v64;

        sub_230106D70(v64, v65, v264, v268, 8u);
        v206 = v196[2];
        v28 = __OFADD__(v206, 1);
        v207 = v206 + 1;
        if (v28)
        {
          goto LABEL_208;
        }

        v196[2] = v207;
LABEL_40:
        v59 = v270;
        goto LABEL_41;
      }

      if (*v62 <= 1u)
      {
        v272 = v63;
        if (*v62)
        {
          v120 = *(v62 - 2);
          v121 = *(v62 - 1);
          swift_bridgeObjectRetain_n();
          v17 = v60;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v258 = sub_23007F430(0, *(v258 + 2) + 1, 1, v258);
          }

          v123 = *(v258 + 2);
          v122 = *(v258 + 3);
          if (v123 >= v122 >> 1)
          {
            v215 = sub_23007F430((v122 > 1), v123 + 1, 1, v258);
            v124 = v121;
            v258 = v215;
          }

          else
          {
            v124 = v121;
          }

          v125 = v124;
          sub_230106D70(v64, v65, v120, v124, 1u);
          *(v258 + 2) = v123 + 1;
          v126 = &v258[40 * v123];
          *(v126 + 4) = v64;
          *(v126 + 5) = v65;
          *(v126 + 6) = v120;
          *(v126 + 7) = v125;
          v126[64] = 1;
LABEL_116:
          v59 = v270;
          v60 = v17;
LABEL_117:
          v63 = v272;
          goto LABEL_42;
        }

        v17 = v60;
        v79 = v262[2];
        v80 = *(v62 - 2);
        v81 = *(v62 - 1);
        sub_230106E94(v64, v65, v66, v67, 0);

        if (v79)
        {
          v82 = sub_23008E274(v65);
          if (v83)
          {
            v275[0] = *(v262[7] + 8 * v82);
            *&v276[0] = v64;

            REMSuggestedAttributeOutput.Source.union(_:)(v276);

            v84 = v278;
            v85 = swift_isUniquelyReferenced_nonNull_native();
            v275[0] = v262;
            sub_2300A2B7C(v84, v65, v85);

            sub_230106D70(v64, v65, v80, v81, 0);
            v262 = v275[0];
            goto LABEL_116;
          }
        }

        if (v262[2] > 1uLL)
        {

          sub_230106D70(v64, v65, v80, v81, 0);
          goto LABEL_116;
        }

        v60 = v265;

        v17 = swift_isUniquelyReferenced_nonNull_native();
        *&v278 = v262;
        v151 = sub_23008E274(v65);
        v153 = v262[2];
        v154 = (v152 & 1) == 0;
        v28 = __OFADD__(v153, v154);
        v155 = v153 + v154;
        if (v28)
        {
          goto LABEL_201;
        }

        v156 = v152;
        if (v262[3] >= v155)
        {
          if ((v17 & 1) == 0)
          {
            v17 = v151;
            sub_23008BD84();
            v151 = v17;
          }
        }

        else
        {
          sub_230088328(v155, v17);
          v151 = sub_23008E274(v65);
          if ((v156 & 1) != (v157 & 1))
          {
            goto LABEL_219;
          }
        }

        v202 = v278;
        v262 = v278;
        if (v156)
        {
          *(*(v278 + 56) + 8 * v151) = v64;

          sub_230106D70(v64, v65, v80, v81, 0);
        }

        else
        {
          *(v278 + 8 * (v151 >> 6) + 64) |= 1 << v151;
          *(v202[6] + 8 * v151) = v65;
          *(v202[7] + 8 * v151) = v64;
          sub_230106D70(v64, v65, v80, v81, 0);
          v210 = v202[2];
          v28 = __OFADD__(v210, 1);
          v211 = v210 + 1;
          if (v28)
          {
            goto LABEL_210;
          }

          v202[2] = v211;
        }

        goto LABEL_167;
      }

      if (v68 == 2)
      {
        v272 = v63;
        if (v260[2])
        {
          v95 = *(v62 - 2);
          v96 = *(v62 - 1);
          v97 = sub_230081FCC(v65);
          if (v98)
          {
            v275[0] = *(v260[7] + 8 * v97);
            *&v276[0] = v64;

            REMSuggestedAttributeOutput.Source.union(_:)(v276);
            v17 = v60;
            v99 = v278;
            v100 = swift_isUniquelyReferenced_nonNull_native();
            v275[0] = v260;
            v101 = v99;
            v60 = v17;
            sub_2300A2A58(v101, v65, v100);
            sub_230106D70(v64, v65, v95, v96, 2u);
            v260 = v275[0];
            v59 = v270;
            goto LABEL_117;
          }

          v67 = v96;
          v66 = v95;
          if (v260[2] > 1uLL)
          {
            v59 = v270;
            goto LABEL_117;
          }
        }

        v174 = v66;
        v269 = v67;
        sub_230106E94(v64, v65, v66, v67, 2u);

        v17 = swift_isUniquelyReferenced_nonNull_native();
        *&v278 = v260;
        v175 = sub_230081FCC(v65);
        v177 = v260[2];
        v178 = (v176 & 1) == 0;
        v28 = __OFADD__(v177, v178);
        v179 = v177 + v178;
        if (v28)
        {
          goto LABEL_197;
        }

        v180 = v176;
        if (v260[3] >= v179)
        {
          if ((v17 & 1) == 0)
          {
            v216 = v175;
            sub_23008BC28();
            v175 = v216;
          }
        }

        else
        {
          sub_230088098(v179, v17);
          v175 = sub_230081FCC(v65);
          if ((v180 & 1) != (v181 & 1))
          {
            goto LABEL_218;
          }
        }

        v17 = v265;
        v182 = v278;
        v260 = v278;
        if (v180)
        {
          *(*(v278 + 56) + 8 * v175) = v64;

          sub_230106D70(v64, v65, v174, v269, 2u);
          v59 = v270;
        }

        else
        {
          *(v278 + 8 * (v175 >> 6) + 64) |= 1 << v175;
          *(v182[6] + 8 * v175) = v65;
          *(v182[7] + 8 * v175) = v64;
          sub_230106D70(v64, v65, v174, v269, 2u);
          v183 = v182[2];
          v28 = __OFADD__(v183, 1);
          v184 = v183 + 1;
          if (v28)
          {
            __break(1u);
LABEL_206:
            __break(1u);
LABEL_207:
            __break(1u);
LABEL_208:
            __break(1u);
LABEL_209:
            __break(1u);
LABEL_210:
            __break(1u);
LABEL_211:
            __break(1u);
LABEL_212:
            __break(1u);

            sub_230106D70(v278, *(&v278 + 1), v279, *(&v279 + 1), v280[0]);

            __break(1u);
LABEL_213:
            type metadata accessor for REMSuggestedContact();
            sub_2303112A8();
            __break(1u);
LABEL_214:
            sub_2303112A8();
            __break(1u);
LABEL_215:
            sub_2303112A8();
            __break(1u);
LABEL_216:
            type metadata accessor for REMSuggestedWeekDay();
            sub_2303112A8();
            __break(1u);
LABEL_217:
            type metadata accessor for REMSuggestedLocation();
            sub_2303112A8();
            __break(1u);
LABEL_218:
            type metadata accessor for REMRecurrenceFrequency(0);
            sub_2303112A8();
            __break(1u);
LABEL_219:
            type metadata accessor for REMSuggestedList();
            result = sub_2303112A8();
            __break(1u);
            return result;
          }

          v182[2] = v184;
          v59 = v270;
        }

        goto LABEL_117;
      }

      v267 = *(v62 - 1);
      v263 = *(v62 - 2);
      if (v68 != 3)
      {
        v110 = v255[2];
        sub_230106E94(v64, v65, v66, v67, 4u);

        if (v110)
        {
          v111 = sub_23008E274(v65);
          if (v112)
          {
            v275[0] = *(v255[7] + 8 * v111);
            *&v276[0] = v64;

            REMSuggestedAttributeOutput.Source.union(_:)(v276);

            v113 = v278;
            v114 = swift_isUniquelyReferenced_nonNull_native();
            v275[0] = v255;
            sub_2300A292C(v113, v65, v114);
            sub_230106D70(v64, v65, v263, v267, 4u);

            v255 = v275[0];
            goto LABEL_40;
          }
        }

        if (v255[2] <= 1uLL)
        {
          v272 = v63;

          v17 = swift_isUniquelyReferenced_nonNull_native();
          *&v278 = v255;
          v144 = sub_23008E274(v65);
          v146 = v255[2];
          v147 = (v145 & 1) == 0;
          v28 = __OFADD__(v146, v147);
          v148 = v146 + v147;
          if (v28)
          {
            goto LABEL_200;
          }

          v149 = v145;
          if (v255[3] >= v148)
          {
            v59 = v270;
            if ((v17 & 1) == 0)
            {
              v17 = v144;
              sub_23008BC14();
              v59 = v270;
              v144 = v17;
            }
          }

          else
          {
            sub_230088084(v148, v17);
            v144 = sub_23008E274(v65);
            if ((v149 & 1) != (v150 & 1))
            {
              goto LABEL_216;
            }

            v59 = v270;
          }

          v60 = v278;
          v255 = v278;
          if (v149)
          {
            *(*(v278 + 56) + 8 * v144) = v64;

            v197 = v64;
            v198 = v65;
            v199 = v263;
            v200 = v267;
            v201 = 4;
            goto LABEL_173;
          }

          *(v278 + 8 * (v144 >> 6) + 64) |= 1 << v144;
          *(v60[6] + 8 * v144) = v65;
          *(v60[7] + 8 * v144) = v64;
          sub_230106D70(v64, v65, v263, v267, 4u);
          v208 = v60[2];
          v28 = __OFADD__(v208, 1);
          v209 = v208 + 1;
          if (v28)
          {
            goto LABEL_209;
          }

          v60[2] = v209;
LABEL_176:
          v63 = v272;
LABEL_41:
          v60 = v261;
          goto LABEL_42;
        }

        v169 = v64;
        v170 = v65;
        v171 = v263;
        v172 = v267;
        v173 = 4;
LABEL_150:
        sub_230106D70(v169, v170, v171, v172, v173);
        goto LABEL_40;
      }

      v272 = v63;
      v69 = v256[2];
      sub_230106E94(v64, v65, v66, v67, 3u);

      if (v69)
      {
        v70 = sub_23008E274(v65);
        if (v71)
        {
          break;
        }
      }

      if (v256[2] > 1uLL)
      {

        sub_230106D70(v64, v65, v263, v267, 3u);
        goto LABEL_167;
      }

      v127 = swift_isUniquelyReferenced_nonNull_native();
      *&v278 = v256;
      v128 = sub_23008E274(v65);
      v130 = v256[2];
      v131 = (v129 & 1) == 0;
      v28 = __OFADD__(v130, v131);
      v132 = v130 + v131;
      if (v28)
      {
        goto LABEL_203;
      }

      v133 = v129;
      if (v256[3] >= v132)
      {
        v135 = v261;
        if ((v127 & 1) == 0)
        {
          v218 = v128;
          sub_23008BC00();
          v128 = v218;
        }
      }

      else
      {
        sub_230088070(v132, v127);
        v128 = sub_23008E274(v65);
        v135 = v261;
        if ((v133 & 1) != (v134 & 1))
        {
          goto LABEL_217;
        }
      }

      v17 = v265;
      v195 = v278;
      v60 = v135;
      v256 = v278;
      if (v133)
      {
        *(*(v278 + 56) + 8 * v128) = v64;

        sub_230106D70(v64, v65, v263, v267, 3u);

        v59 = v270;
      }

      else
      {
        *(v278 + 8 * (v128 >> 6) + 64) |= 1 << v128;
        *(v195[6] + 8 * v128) = v65;
        *(v195[7] + 8 * v128) = v64;
        sub_230106D70(v64, v65, v263, v267, 3u);
        v203 = v195[2];
        v28 = __OFADD__(v203, 1);
        v204 = v203 + 1;
        if (v28)
        {
          goto LABEL_211;
        }

        v195[2] = v204;
        v59 = v270;
      }

LABEL_42:
      v61 = (v61 + 1);
      v62 += 40;
      if (v60 == v61)
      {
        goto LABEL_179;
      }
    }

    v275[0] = *(v256[7] + 8 * v70);
    *&v276[0] = v64;

    REMSuggestedAttributeOutput.Source.union(_:)(v276);

    v72 = v278;
    v73 = swift_isUniquelyReferenced_nonNull_native();
    v275[0] = v256;
    sub_2300A2800(v72, v65, v73);
    sub_230106D70(v64, v65, v263, v267, 3u);

    v256 = v275[0];
LABEL_167:
    v59 = v270;
    goto LABEL_176;
  }

  v253 = 0;
  v254 = 0;
  v252 = -1;
  v256 = MEMORY[0x277D84F98];
  v257 = MEMORY[0x277D84F98];
  v63 = MEMORY[0x277D84F98];
  v255 = MEMORY[0x277D84F98];
  v260 = MEMORY[0x277D84F98];
  v265 = MEMORY[0x277D84F98];
LABEL_179:

  v220 = sub_23030EF38();
  v221 = sub_2303102A8();
  if (os_log_type_enabled(v220, v221))
  {
    v222 = swift_slowAlloc();
    v223 = v63;
    v224 = swift_slowAlloc();
    *&v278 = v224;
    *v222 = 136315138;
    type metadata accessor for REMSuggestedList();
    sub_2302A83E8();

    v225 = sub_23030F668();
    v227 = v226;

    v228 = sub_23004E30C(v225, v227, &v278);

    *(v222 + 4) = v228;
    _os_log_impl(&dword_230044000, v220, v221, "added list ids: %s", v222, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v224);
    v229 = v255;
    MEMORY[0x231914180](v224, -1, -1);
    MEMORY[0x231914180](v222, -1, -1);
  }

  else
  {

    v223 = v63;
    v229 = v255;
  }

  v231 = sub_2302A4300(v230);

  v273 = v231;

  sub_23009D180(v232);
  v233 = sub_2302A455C(v260);
  sub_23009D180(v233);
  v234 = sub_2302A4C70(v229, 4);
  sub_23009D180(v234);

  sub_23009D180(v235);
  v236 = sub_2302A4C70(v256, 3);
  sub_23009D180(v236);
  v237 = sub_2302A47B0(v223);
  sub_23009D180(v237);
  v238 = sub_2302A4A04(v257);
  sub_23009D180(v238);
  v239 = sub_2302A4C70(v265, 9);

  sub_23009D180(v239);
  v62 = v273;
  LOBYTE(v61) = v252;
  if (v252 != 0xFF)
  {
    sub_230106E94(v254, v253, 0, 0, v252);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_204:
      v62 = sub_23007F430(0, *(v62 + 2) + 1, 1, v62);
    }

    v241 = *(v62 + 2);
    v240 = *(v62 + 3);
    if (v241 >= v240 >> 1)
    {
      v62 = sub_23007F430((v240 > 1), v241 + 1, 1, v62);
    }

    *(v62 + 2) = v241 + 1;
    v242 = &v62[40 * v241];
    *(v242 + 4) = v254;
    *(v242 + 5) = v253;
    *(v242 + 6) = 0;
    *(v242 + 7) = 0;
    v242[64] = v61;
  }

  v243 = sub_23030EF38();
  v244 = sub_2303102A8();
  if (os_log_type_enabled(v243, v244))
  {
    v245 = swift_slowAlloc();
    v246 = swift_slowAlloc();
    *&v278 = v246;
    *v245 = 136315138;
    v247 = MEMORY[0x231911A60](v62, &type metadata for REMSuggestedAttributeOutput);
    v249 = sub_23004E30C(v247, v248, &v278);

    *(v245 + 4) = v249;

    _os_log_impl(&dword_230044000, v243, v244, "merged attributes: %s", v245, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v246);
    MEMORY[0x231914180](v246, -1, -1);
    MEMORY[0x231914180](v245, -1, -1);
    sub_230106D5C(v254, v253, 0, 0, v252);
  }

  else
  {
    sub_230106D5C(v254, v253, 0, 0, v252);
  }

  return v62;
}

uint64_t sub_2302A6D78()
{
  v0 = sub_23030EF48();
  __swift_allocate_value_buffer(v0, qword_280C970F8);
  v1 = __swift_project_value_buffer(v0, qword_280C970F8);
  if (qword_280C99DE8 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280CB1730);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t REMSuggestedAttributesElector.ExcludedAttributes.description.getter()
{
  v1 = *v0;
  if (*v0)
  {
    v2 = sub_23007E928(0, 1, 1, MEMORY[0x277D84F90]);
    v4 = *(v2 + 2);
    v3 = *(v2 + 3);
    if (v4 >= v3 >> 1)
    {
      v2 = sub_23007E928((v3 > 1), v4 + 1, 1, v2);
    }

    *(v2 + 2) = v4 + 1;
    v5 = &v2[16 * v4];
    *(v5 + 4) = 1953720684;
    *(v5 + 5) = 0xE400000000000000;
  }

  else
  {
    v2 = MEMORY[0x277D84F90];
  }

  if ((v1 & 2) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_23007E928(0, *(v2 + 2) + 1, 1, v2);
    }

    v7 = *(v2 + 2);
    v6 = *(v2 + 3);
    if (v7 >= v6 >> 1)
    {
      v2 = sub_23007E928((v6 > 1), v7 + 1, 1, v2);
    }

    *(v2 + 2) = v7 + 1;
    v8 = &v2[16 * v7];
    *(v8 + 4) = 0xD000000000000012;
    *(v8 + 5) = 0x8000000230346420;
    if ((v1 & 4) == 0)
    {
LABEL_8:
      if ((v1 & 8) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_26;
    }
  }

  else if ((v1 & 4) == 0)
  {
    goto LABEL_8;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_23007E928(0, *(v2 + 2) + 1, 1, v2);
  }

  v10 = *(v2 + 2);
  v9 = *(v2 + 3);
  if (v10 >= v9 >> 1)
  {
    v2 = sub_23007E928((v9 > 1), v10 + 1, 1, v2);
  }

  *(v2 + 2) = v10 + 1;
  v11 = &v2[16 * v10];
  *(v11 + 4) = 0x7365746144657564;
  *(v11 + 5) = 0xE800000000000000;
  if ((v1 & 8) == 0)
  {
LABEL_9:
    if ((v1 & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_31;
  }

LABEL_26:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_23007E928(0, *(v2 + 2) + 1, 1, v2);
  }

  v13 = *(v2 + 2);
  v12 = *(v2 + 3);
  if (v13 >= v12 >> 1)
  {
    v2 = sub_23007E928((v12 > 1), v13 + 1, 1, v2);
  }

  *(v2 + 2) = v13 + 1;
  v14 = &v2[16 * v13];
  *(v14 + 4) = 0x6E6F697461636F6CLL;
  *(v14 + 5) = 0xE900000000000073;
  if ((v1 & 0x10) == 0)
  {
LABEL_10:
    if ((v1 & 0x20) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_36;
  }

LABEL_31:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_23007E928(0, *(v2 + 2) + 1, 1, v2);
  }

  v16 = *(v2 + 2);
  v15 = *(v2 + 3);
  if (v16 >= v15 >> 1)
  {
    v2 = sub_23007E928((v15 > 1), v16 + 1, 1, v2);
  }

  *(v2 + 2) = v16 + 1;
  v17 = &v2[16 * v16];
  *(v17 + 4) = 1734437990;
  *(v17 + 5) = 0xE400000000000000;
  if ((v1 & 0x20) == 0)
  {
LABEL_11:
    if ((v1 & 0x40) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_41;
  }

LABEL_36:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_23007E928(0, *(v2 + 2) + 1, 1, v2);
  }

  v19 = *(v2 + 2);
  v18 = *(v2 + 3);
  if (v19 >= v18 >> 1)
  {
    v2 = sub_23007E928((v18 > 1), v19 + 1, 1, v2);
  }

  *(v2 + 2) = v19 + 1;
  v20 = &v2[16 * v19];
  *(v20 + 4) = 0x797469726F697270;
  *(v20 + 5) = 0xE800000000000000;
  if ((v1 & 0x40) == 0)
  {
LABEL_12:
    if ((v1 & 0x80) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_46;
  }

LABEL_41:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_23007E928(0, *(v2 + 2) + 1, 1, v2);
  }

  v22 = *(v2 + 2);
  v21 = *(v2 + 3);
  if (v22 >= v21 >> 1)
  {
    v2 = sub_23007E928((v21 > 1), v22 + 1, 1, v2);
  }

  *(v2 + 2) = v22 + 1;
  v23 = &v2[16 * v22];
  *(v23 + 4) = 1936154996;
  *(v23 + 5) = 0xE400000000000000;
  if ((v1 & 0x80) == 0)
  {
LABEL_13:
    if ((v1 & 0x100) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_51;
  }

LABEL_46:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_23007E928(0, *(v2 + 2) + 1, 1, v2);
  }

  v25 = *(v2 + 2);
  v24 = *(v2 + 3);
  if (v25 >= v24 >> 1)
  {
    v2 = sub_23007E928((v24 > 1), v25 + 1, 1, v2);
  }

  *(v2 + 2) = v25 + 1;
  v26 = &v2[16 * v25];
  *(v26 + 4) = 0x746361746E6F63;
  *(v26 + 5) = 0xE700000000000000;
  if ((v1 & 0x100) == 0)
  {
LABEL_14:
    if ((v1 & 0x200) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_56;
  }

LABEL_51:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_23007E928(0, *(v2 + 2) + 1, 1, v2);
  }

  v28 = *(v2 + 2);
  v27 = *(v2 + 3);
  if (v28 >= v27 >> 1)
  {
    v2 = sub_23007E928((v27 > 1), v28 + 1, 1, v2);
  }

  *(v2 + 2) = v28 + 1;
  v29 = &v2[16 * v28];
  *(v29 + 4) = 0xD000000000000016;
  *(v29 + 5) = 0x8000000230346400;
  if ((v1 & 0x200) != 0)
  {
LABEL_56:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_23007E928(0, *(v2 + 2) + 1, 1, v2);
    }

    v31 = *(v2 + 2);
    v30 = *(v2 + 3);
    if (v31 >= v30 >> 1)
    {
      v2 = sub_23007E928((v30 > 1), v31 + 1, 1, v2);
    }

    *(v2 + 2) = v31 + 1;
    v32 = &v2[16 * v31];
    *(v32 + 4) = 0x73656C746974;
    *(v32 + 5) = 0xE600000000000000;
  }

LABEL_61:
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB13DE0);
  sub_2300B0FA8();
  v33 = sub_23030F7C8();

  return v33;
}

void *REMSuggestedAttributesElector.__allocating_init(store:excludedAttributes:)(uint64_t a1, uint64_t *a2)
{
  result = swift_allocObject();
  v5 = *a2;
  result[2] = a1;
  result[3] = 0;
  result[4] = 0;
  result[5] = v5;
  return result;
}

void *REMSuggestedAttributesElector.init(store:excludedAttributes:)(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2[2] = a1;
  v2[3] = 0;
  v2[4] = 0;
  v2[5] = v3;
  return v2;
}

uint64_t REMSuggestedAttributesElector.filter(list:currentListID:currentAccountID:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v69 = a4;
  v71[1] = *MEMORY[0x277D85DE8];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14800);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v64 - v9;
  v70 = sub_23030EBB8();
  v11 = *(v70 - 8);
  v12 = MEMORY[0x28223BE20](v70);
  v14 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v64 - v15;
  v17 = v4[4];
  if (v17)
  {
    v18 = *(a1 + 16);
    v19 = *(a1 + 24);
  }

  else
  {
    sub_2302A7C18();
    v17 = v4[4];
    v18 = *(a1 + 16);
    v19 = *(a1 + 24);
    if (!v17)
    {
      goto LABEL_13;
    }
  }

  if (v18 == v4[3] && v17 == v19 || (sub_230311048() & 1) != 0)
  {
    if (qword_280C99E98 != -1)
    {
      swift_once();
    }

    v20 = sub_23030EF48();
    __swift_project_value_buffer(v20, qword_280C970F8);
    v21 = sub_23030EF38();
    v22 = sub_2303102A8();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_230044000, v21, v22, "Found default list in suggestion, removing...", v23, 2u);
      MEMORY[0x231914180](v23, -1, -1);
    }

    return 0;
  }

LABEL_13:
  if (a3 && (v18 == a2 && v19 == a3 || (sub_230311048() & 1) != 0))
  {
    return 0;
  }

  v25 = v4[5];
  if (v25)
  {
    return 0;
  }

  v68 = v19;
  sub_23030EB68();
  v26 = v11;
  v27 = *(v11 + 48);
  v28 = v70;
  if (v27(v10, 1, v70) == 1)
  {
    sub_230061918(v10, &qword_27DB14800);
    return 0;
  }

  v29 = v16;
  (*(v26 + 32))(v16, v10, v28);
  v30 = v4[2];
  v31 = *(v26 + 16);
  v67 = v29;
  v31(v14, v29, v28);
  v32 = [objc_opt_self() cdEntityName];
  v33 = v26;
  if (!v32)
  {
    _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
    v32 = sub_23030F8B8();
  }

  v34 = objc_allocWithZone(MEMORY[0x277D44700]);
  v35 = sub_23030EB88();
  v36 = [v34 initWithUUID:v35 entityName:v32];

  v39 = *(v33 + 8);
  v37 = v33 + 8;
  v38 = v39;
  v39(v14, v28);
  v71[0] = 0;
  v40 = [v30 fetchListWithObjectID:v36 error:v71];

  if (!v40)
  {
    v42 = v71[0];
    v43 = sub_23030E808();

    swift_willThrow();
    v38(v67, v28);
    return 0;
  }

  v66 = v37;
  if ((v25 & 0x100) == 0)
  {
    v41 = v71[0];
    goto LABEL_25;
  }

  v65 = v38;
  v44 = qword_280C99E98;
  v45 = v71[0];
  if (v44 != -1)
  {
    swift_once();
  }

  v46 = sub_23030EF48();
  __swift_project_value_buffer(v46, qword_280C970F8);

  v47 = v40;
  v48 = sub_23030EF38();
  v49 = sub_2303102A8();

  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v71[0] = v51;
    *v50 = 136315394;
    *(v50 + 4) = sub_23004E30C(v18, v68, v71);
    *(v50 + 12) = 2080;
    v52 = [v47 name];
    v53 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
    v55 = v54;

    v56 = sub_23004E30C(v53, v55, v71);

    *(v50 + 14) = v56;
    _os_log_impl(&dword_230044000, v48, v49, "Account verification for List {id: %s, name: %s}", v50, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x231914180](v51, -1, -1);
    MEMORY[0x231914180](v50, -1, -1);
  }

  v38 = v65;
  v57 = v69;
  v58 = [v47 accountID];
  if (!v58)
  {
    if (!v57)
    {
      goto LABEL_25;
    }

LABEL_44:

    v38(v67, v70);
    return 0;
  }

  v59 = v58;
  if (!v57)
  {

    goto LABEL_44;
  }

  sub_23004CB58();
  v60 = v57;
  v61 = sub_230310448();

  if ((v61 & 1) == 0)
  {
    goto LABEL_44;
  }

LABEL_25:
  if ((v25 & 2) != 0)
  {
    if (![v40 isShared])
    {
      v38(v67, v70);

      return 0;
    }

    v62 = [v40 account];
    v63 = [v62 capabilities];

    LOBYTE(v62) = [v63 supportsAssignments];
    v38(v67, v70);
    if ((v62 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v38(v67, v70);
  }

  return 1;
}

void sub_2302A7C18()
{
  v28[1] = *MEMORY[0x277D85DE8];
  v1 = sub_23030EBB8();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 16);
  v28[0] = 0;
  v6 = [v5 fetchDefaultListWithError_];
  v7 = v6;
  if (v28[0])
  {
    v8 = v28[0];

    swift_willThrow();
    if (qword_280C99E98 != -1)
    {
      swift_once();
    }

    v9 = sub_23030EF48();
    __swift_project_value_buffer(v9, qword_280C970F8);
    v10 = v8;
    v11 = sub_23030EF38();
    v12 = sub_230310288();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v28[0] = v14;
      *v13 = 136315138;
      swift_getErrorValue();
      v15 = Error.rem_errorDescription.getter(v27[2]);
      v17 = sub_23004E30C(v15, v16, v28);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_230044000, v11, v12, "Failed to retrieve default list {error: %s}. May cause default list being suggested.", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v14);
      MEMORY[0x231914180](v14, -1, -1);
      MEMORY[0x231914180](v13, -1, -1);

LABEL_6:
      return;
    }
  }

  else
  {
    if (!v6)
    {
      if (qword_280C99E98 != -1)
      {
        swift_once();
      }

      v24 = sub_23030EF48();
      __swift_project_value_buffer(v24, qword_280C970F8);
      v10 = sub_23030EF38();
      v25 = sub_230310288();
      if (os_log_type_enabled(v10, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&dword_230044000, v10, v25, "Default list is nil. May cause default list being suggested.", v26, 2u);
        MEMORY[0x231914180](v26, -1, -1);
      }

      goto LABEL_6;
    }

    v18 = [v6 remObjectID];
    v19 = [v18 uuid];

    sub_23030EBA8();
    v20 = v0;
    v21 = sub_23030EB78();
    v23 = v22;

    (*(v2 + 8))(v4, v1);
    *(v20 + 24) = v21;
    *(v20 + 32) = v23;
  }
}

uint64_t sub_2302A7FB4(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 32);
  LOBYTE(v6) = 1;
  if (v5 > 4)
  {
    if (*(a1 + 32) <= 6u)
    {
      if (v5 != 5)
      {
        LOBYTE(v6) = ((*(a2 + 40) & 0x10) == 0) & v4;
      }

      return v6 & 1;
    }

    if (v5 == 7)
    {
      LOBYTE(v6) = (*(a2 + 40) & 0x20) == 0 && v4 != 0;
      return v6 & 1;
    }

    if (v5 == 8)
    {
      if ((*(a2 + 40) & 0x40) != 0)
      {
        goto LABEL_38;
      }

      v8 = *(a1 + 16);
      if ((sub_2300A576C(*(a1 + 8), v8, *(*(a3 + 16) + OBJC_IVAR____TtC19ReminderKitInternal26REMSuggestedAttributeInput_tags)) & 1) == 0)
      {
        v6 = HIBYTE(v8) & 0xF;
        if ((v8 & 0x2000000000000000) == 0)
        {
          v6 = v4 & 0xFFFFFFFFFFFFLL;
        }

        LOBYTE(v6) = v6 != 0;
        return v6 & 1;
      }
    }

    else
    {
      if ((*(a2 + 40) & 0x80) != 0)
      {
        goto LABEL_38;
      }

      v17 = *(*(a3 + 16) + OBJC_IVAR____TtC19ReminderKitInternal26REMSuggestedAttributeInput_contact);
      v19 = *(v4 + 16);
      v18 = *(v4 + 24);
      if (*(v17 + 16) == v19 && *(v17 + 24) == v18)
      {
        goto LABEL_38;
      }

      if ((sub_230311048() & 1) == 0 && (v19 != 0x296C696E28 || v18 != 0xE500000000000000))
      {
        LOBYTE(v6) = sub_230311048() ^ 1;
        return v6 & 1;
      }
    }

    LOBYTE(v6) = 0;
    return v6 & 1;
  }

  if (*(a1 + 32) <= 1u)
  {
    if (!*(a1 + 32))
    {
      v9 = *(a3 + 24);
      v10 = *(*(a3 + 16) + OBJC_IVAR____TtC19ReminderKitInternal26REMSuggestedAttributeInput_list);
      v11 = *(v10 + 16);
      v12 = *(v10 + 24);

      v13 = REMSuggestedAttributesElector.filter(list:currentListID:currentAccountID:)(v4, v11, v12, v9);

      return v13 & 1;
    }

    LODWORD(v6) = *a4;
    if (v6 == 1)
    {
      *a4 = 0;
      return v6 & 1;
    }

    goto LABEL_38;
  }

  if (v5 != 2)
  {
    if (v5 == 3)
    {
      LOBYTE(v6) = (REMSuggestedLocation.isSpecificLocation.getter() & 1) == 0 && (*(a2 + 40) & 8) == 0;
      return v6 & 1;
    }

    if ((*(a2 + 40) & 4) == 0)
    {
      REMSuggestedWeekDay.value.getter();
      LOBYTE(v6) = v16 == 0;
      return v6 & 1;
    }

LABEL_38:
    LOBYTE(v6) = 0;
  }

  return v6 & 1;
}

uint64_t REMSuggestedAttributesElector.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t REMCustomSmartListFilterDescriptor.excludedSuggestedAttributes.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AE0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - v4;
  sub_230055F74(v1 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_date, &v10 - v4, &unk_27DB15AE0);
  v6 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate(0);
  v7 = (*(*(v6 - 8) + 48))(v5, 1, v6) != 1;
  result = sub_230061918(v5, &unk_27DB15AE0);
  v9 = 4 * v7;
  if (*(v1 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_location + 48) != 255)
  {
    v9 = (4 * v7) | 8;
  }

  if (*(v1 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_flagged) != 2)
  {
    v9 |= 0x10uLL;
  }

  if (*(v1 + OBJC_IVAR____TtC19ReminderKitInternal34REMCustomSmartListFilterDescriptor_priorities))
  {
    v9 |= 0x20uLL;
  }

  *a1 = v9;
  return result;
}

unint64_t sub_2302A83E8()
{
  result = qword_280C9AFC0;
  if (!qword_280C9AFC0)
  {
    type metadata accessor for REMSuggestedList();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C9AFC0);
  }

  return result;
}

unint64_t sub_2302A8444()
{
  result = qword_280C97568;
  if (!qword_280C97568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C97568);
  }

  return result;
}

unint64_t sub_2302A849C()
{
  result = qword_280C97560;
  if (!qword_280C97560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C97560);
  }

  return result;
}

unint64_t sub_2302A84F4()
{
  result = qword_280C97570;
  if (!qword_280C97570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C97570);
  }

  return result;
}

unint64_t sub_2302A854C()
{
  result = qword_280C97558;
  if (!qword_280C97558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C97558);
  }

  return result;
}

uint64_t REMSmartListUserDefinedVisibility.description.getter(uint64_t a1)
{
  v1 = 0x6E65646469682ELL;
  v2 = 0x6E776F6E6B6E75;
  if (a1 == 1)
  {
    v2 = 0x656C62697369762ELL;
  }

  if (a1 != 2)
  {
    v1 = v2;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return 0x6E696665646E752ELL;
  }
}

uint64_t sub_2302A8680()
{
  v1 = *v0;
  v2 = 0x6E65646469682ELL;
  v3 = 0x6E776F6E6B6E75;
  if (*v0 == 1)
  {
    v3 = 0x656C62697369762ELL;
  }

  if (v1 != 2)
  {
    v2 = v3;
  }

  if (v1)
  {
    return v2;
  }

  else
  {
    return 0x6E696665646E752ELL;
  }
}

uint64_t REMVector.init<A>(source:dimension:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v11 = &v16 - v10;
  result = sub_230310058();
  if (result != a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = sub_230310058();
  if ((result - 0x1000000000000000) >> 61 != 7)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v13 = swift_slowAlloc();
  v14 = sub_230310058();
  v15 = sub_2303104D8();
  (*(*(a3 - 8) + 8))(a1, a3);
  result = (*(v9 + 8))(v11, AssociatedTypeWitness);
  if (v14 == a2 && v15 == v14)
  {
    type metadata accessor for REMLinearAlgebraDataRef();
    result = swift_allocObject();
    *(result + 16) = v13;
    *(result + 24) = a2;
    *a4 = a2;
    a4[1] = result;
    return result;
  }

LABEL_8:
  __break(1u);
  return result;
}

void static REMVector.rescaledAngularCosineDistance(lhs:rhs:scale:)(int64_t *a1, int64_t *a2)
{
  v2 = a1[1];
  v3 = *a2;
  v4 = a2[1];
  v6[0] = *a1;
  v6[1] = v2;
  v5[0] = v3;
  v5[1] = v4;
  static REMVector.angularCosineDistance(lhs:rhs:)(v6, v5);
}

uint64_t REMVector.data.setter(uint64_t result, uint64_t a2)
{
  v3 = *(v2 + 8);
  *(v3 + 16) = result;
  *(v3 + 24) = a2;
  return result;
}

__n128 (*REMVector.data.modify(uint64_t a1))(__n128 *a1)
{
  v2 = *(v1 + 8);
  *(a1 + 16) = v2;
  *a1 = *(v2 + 16);
  return sub_2302A96CC;
}

__n128 sub_2302A96CC(__n128 *a1)
{
  result = *a1;
  *(a1[1].n128_u64[0] + 16) = *a1;
  return result;
}

uint64_t REMVector.init(dimension:repeatedValue:)@<X0>(uint64_t result@<X0>, void *a2@<X8>, uint64_t a3@<D0>)
{
  if ((result & 0x8000000000000000) == 0)
  {
    v3 = result;
    if (result)
    {
      v5 = sub_23030FD48();
      *(v5 + 16) = v3;
      v6 = (v5 + 32);
      if (v3 > 3)
      {
        v7 = v3 & 0x7FFFFFFFFFFFFFFCLL;
        v6 += v3 & 0x7FFFFFFFFFFFFFFCLL;
        v8 = a3;
        v9 = vdupq_lane_s64(a3, 0);
        v10 = (v5 + 48);
        v11 = v3 & 0x7FFFFFFFFFFFFFFCLL;
        do
        {
          v10[-1] = v9;
          *v10 = v9;
          v10 += 2;
          v11 -= 4;
        }

        while (v11);
        if (v7 == v3)
        {
          goto LABEL_11;
        }
      }

      else
      {
        v7 = 0;
        v8 = a3;
      }

      v12 = v3 - v7;
      do
      {
        *v6++ = v8;
        --v12;
      }

      while (v12);
    }

    else
    {
      v5 = MEMORY[0x277D84F90];
    }

LABEL_11:
    result = sub_230100234(v5, v3, v15);
    v13 = v15[1];
    *a2 = v15[0];
    a2[1] = v13;
    return result;
  }

  __break(1u);
  return result;
}

double (*REMVector.subscript.modify(void *a1, uint64_t a2))(uint64_t a1)
{
  v3 = *(v2 + 8);
  a1[1] = a2;
  a1[2] = v3;
  *a1 = *(*(v3 + 16) + 8 * a2);
  return sub_2302A97FC;
}

double sub_2302A97FC(uint64_t a1)
{
  result = *a1;
  *(*(*(a1 + 16) + 16) + 8 * *(a1 + 8)) = *a1;
  return result;
}

uint64_t static REMVector.* infix(_:_:)@<X0>(uint64_t result@<X0>, unint64_t *a2@<X8>, uint64_t a3@<D0>)
{
  v3 = *result;
  if ((*result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = *(result + 8);
  if (v3 == 0.0)
  {
    v13 = MEMORY[0x277D84F90];
    sub_230100234(MEMORY[0x277D84F90], 0, &v21);
    v9 = v13;
    v7 = v21;
    v8 = v22;
    goto LABEL_11;
  }

  v6 = sub_23030FD48();
  *(v6 + 16) = v3;
  bzero((v6 + 32), 8 * *&v3);
  sub_230100234(v6, *&v3, &v21);
  v7 = v21;
  v8 = v22;
  v9 = sub_23030FD48();
  *(v9 + 16) = v3;
  v10 = (v9 + 32);
  if (*&v3 <= 3uLL)
  {
    v11 = 0;
    v12 = a3;
LABEL_9:
    v17 = *&v3 - v11;
    do
    {
      *v10++ = v12;
      --v17;
    }

    while (v17);
    goto LABEL_11;
  }

  v11 = *&v3 & 0x7FFFFFFFFFFFFFFCLL;
  v10 += *&v3 & 0x7FFFFFFFFFFFFFFCLL;
  v12 = a3;
  v14 = vdupq_lane_s64(a3, 0);
  v15 = (v9 + 48);
  v16 = *&v3 & 0x7FFFFFFFFFFFFFFCLL;
  do
  {
    v15[-1] = v14;
    *v15 = v14;
    v15 += 2;
    v16 -= 4;
  }

  while (v16);
  if (*&v3 != v11)
  {
    goto LABEL_9;
  }

LABEL_11:
  sub_230100234(v9, *&v3, &v21);
  result = *(v5 + 16);
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v18 = *(v22 + 16);
  if (!v18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v19 = *(v8 + 16);
  if (v19)
  {
    vDSP_vmulD(result, 1, v18, 1, v19, 1, *&v3);

    *a2 = v7;
    a2[1] = v8;
    return result;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t static REMVector./ infix(_:_:)@<X0>(uint64_t result@<X0>, unint64_t *a2@<X8>, uint64_t a3@<D0>)
{
  v3 = *result;
  if ((*result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v5 = *(result + 8);
  if (!v3)
  {
    v13 = MEMORY[0x277D84F90];
    sub_230100234(MEMORY[0x277D84F90], 0, &v22);
    v9 = v13;
    v7 = v22;
    v8 = v23;
    goto LABEL_11;
  }

  v6 = sub_23030FD48();
  *(v6 + 16) = v3;
  bzero((v6 + 32), 8 * v3);
  sub_230100234(v6, v3, &v22);
  v7 = v22;
  v8 = v23;
  v9 = sub_23030FD48();
  *(v9 + 16) = v3;
  v10 = (v9 + 32);
  if (v3 <= 3)
  {
    v11 = 0;
    v12 = a3;
LABEL_9:
    v17 = v3 - v11;
    do
    {
      *v10++ = v12;
      --v17;
    }

    while (v17);
    goto LABEL_11;
  }

  v11 = v3 & 0x7FFFFFFFFFFFFFFCLL;
  v10 += v3 & 0x7FFFFFFFFFFFFFFCLL;
  v12 = a3;
  v14 = vdupq_lane_s64(a3, 0);
  v15 = (v9 + 48);
  v16 = v3 & 0x7FFFFFFFFFFFFFFCLL;
  do
  {
    v15[-1] = v14;
    *v15 = v14;
    v15 += 2;
    v16 -= 4;
  }

  while (v16);
  if (v3 != v11)
  {
    goto LABEL_9;
  }

LABEL_11:
  sub_230100234(v9, v3, &v22);
  result = *(v8 + 16);
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v18 = *(v5 + 16);
  if (!v18)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v19 = *(v23 + 16);
  if (v19)
  {
    if (v3 <= 0x7FFFFFFF)
    {
      v21 = v3;
      vvdiv(result, v18, v19, &v21);

      *a2 = v7;
      a2[1] = v8;
      return result;
    }

    goto LABEL_17;
  }

LABEL_20:
  __break(1u);
  return result;
}

void static REMVector.- infix(_:_:)(unint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v3 = *a1;
  if ((*a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v5 = a1[1];
  v6 = *(a2 + 8);
  if (v3)
  {
    v7 = sub_23030FD48();
    *(v7 + 16) = v3;
    bzero((v7 + 32), 8 * v3);
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  sub_230100234(v7, v3, &v13);
  v8 = *(v5 + 16);
  if (!v8)
  {
    goto LABEL_10;
  }

  v9 = *(v6 + 16);
  if (!v9)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v10 = v14;
  v11 = *(v14 + 16);
  if (v11)
  {
    v12 = v13;
    vDSP_vsubD(v8, 1, v9, 1, v11, 1, v3);
    *a3 = v12;
    a3[1] = v10;
    return;
  }

LABEL_12:
  __break(1u);
}

double static REMVector.dot(lhs:rhs:)(vDSP_Length *a1, void *a2)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  if (*a1 != *a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = a2[1];
  v4 = a1[1];
  v8[0] = 0.0;
  v5 = *(v4 + 16);
  if (!v5)
  {
LABEL_8:
    __break(1u);
LABEL_9:
    __break(1u);
  }

  v6 = *(v3 + 16);
  if (!v6)
  {
    goto LABEL_9;
  }

  if ((v2 & 0x8000000000000000) != 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  vDSP_dotprD(v5, 1, v6, 1, v8, v2);
  return v8[0];
}

double static REMVector.cosineDistance(lhs:rhs:)(vDSP_Length *a1, vDSP_Length *a2)
{
  __C[2] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = *(a2 + 1);
  __x = *a1;
  v18 = v3;
  __C[0] = 0;
  v6 = *(v3 + 16);
  if (!v6)
  {
    goto LABEL_14;
  }

  if ((v2 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  vDSP_dotprD(v6, 1, *(v3 + 16), 1, __C, v2);
  *&v7 = sqrt(*__C);
  static REMVector./ infix(_:_:)(&__x, __C, v7);
  v9 = __C[0];
  v8 = __C[1];
  *&v16[0] = v4;
  v16[1] = v5;
  __x = 0.0;
  v10 = *(*&v5 + 16);
  if (!v10)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((v4 & 0x8000000000000000) != 0)
  {
    goto LABEL_11;
  }

  vDSP_dotprD(v10, 1, *(*&v5 + 16), 1, &__x, v4);
  *&v11 = sqrt(__x);
  static REMVector./ infix(_:_:)(v16, &__x, v11);
  if (v9 != *&__x)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v16[0] = 0.0;
  v12 = *(v8 + 16);
  if (!v12)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
  }

  v13 = *(v18 + 16);
  if (!v13)
  {
    goto LABEL_17;
  }

  if ((v9 & 0x8000000000000000) != 0)
  {
    goto LABEL_13;
  }

  vDSP_dotprD(v12, 1, v13, 1, v16, v9);
  v14 = v16[0];

  return vabdd_f64(1.0, v14);
}

uint64_t REMVector.normalized()@<X0>(unint64_t *a1@<X8>)
{
  v9[2] = *MEMORY[0x277D85DE8];
  v3 = *v1;
  v4 = v1[1];
  v9[0] = *v1;
  v9[1] = v4;
  __x = 0.0;
  v5 = *(v4 + 16);
  if (!v5)
  {
LABEL_5:
    __break(1u);
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  vDSP_dotprD(v5, 1, *(v4 + 16), 1, &__x, v3);
  *&v6 = sqrt(__x);
  return static REMVector./ infix(_:_:)(v9, a1, v6);
}

void static REMVector.angularCosineDistance(lhs:rhs:)(int64_t *a1, int64_t *a2)
{
  __C[2] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  if (*a1 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_25;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  cblas_dasum_NEWLAPACK();
  if (v6 < 0.000000001)
  {
    if (v4 < 0xFFFFFFFF80000000)
    {
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    if (v4 > 0x7FFFFFFF)
    {
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    cblas_dasum_NEWLAPACK();
    if (v7 < 0.000000001)
    {
      return;
    }
  }

  __x = *&v2;
  v23 = v3;
  v20 = *&v4;
  v21 = v5;
  static REMVector.- infix(_:_:)(&__x, &v20, __C);
  if (__C[0] < 0xFFFFFFFF80000000)
  {
    goto LABEL_26;
  }

  if (__C[0] > 0x7FFFFFFF)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  cblas_dasum_NEWLAPACK();
  v9 = v8;

  if (v9 < 0.000000001)
  {
    return;
  }

  __x = *&v2;
  v23 = v3;
  __C[0] = 0;
  v10 = *(v3 + 16);
  if (!v10)
  {
    __break(1u);
    goto LABEL_35;
  }

  if (v2 < 0)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  vDSP_dotprD(v10, 1, *(v3 + 16), 1, __C, v2);
  *&v11 = sqrt(*__C);
  static REMVector./ infix(_:_:)(&__x, __C, v11);
  v13 = __C[0];
  v12 = __C[1];
  v20 = *&v4;
  v21 = v5;
  __x = 0.0;
  v14 = *(v5 + 16);
  if (!v14)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v4 < 0)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  vDSP_dotprD(v14, 1, *(v5 + 16), 1, &__x, v4);
  *&v15 = sqrt(__x);
  static REMVector./ infix(_:_:)(&v20, &__x, v15);
  if (v13 != *&__x)
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
  }

  v20 = 0.0;
  v16 = *(v12 + 16);
  if (!v16)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v17 = *(v23 + 16);
  if (!v17)
  {
LABEL_37:
    __break(1u);
    return;
  }

  if ((v13 & 0x8000000000000000) != 0)
  {
    goto LABEL_33;
  }

  vDSP_dotprD(v16, 1, v17, 1, &v20, v13);
  v18 = v20;

  v19 = 1.0;
  if (v18 <= 1.0)
  {
    v19 = v18;
  }

  if (v19 <= -1.0)
  {
    v19 = -1.0;
  }

  acos(v19);
}

Swift::Double __swiftcall REMVector.l1norm()()
{
  if (*v0 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (*v0 <= 0x7FFFFFFF)
  {
    cblas_dasum_NEWLAPACK();
    return result;
  }

  __break(1u);
  return result;
}

Swift::Double __swiftcall REMVector.l2norm()()
{
  __x[1] = *MEMORY[0x277D85DE8];
  v1 = *v0;
  v2 = v0[1];
  __x[0] = 0.0;
  v3 = *(v2 + 16);
  if (!v3)
  {
LABEL_5:
    __break(1u);
  }

  if ((v1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  vDSP_dotprD(v3, 1, *(v2 + 16), 1, __x, v1);
  return sqrt(__x[0]);
}

void REMVector.pow(_:)(unint64_t *a1@<X8>, uint64_t a2@<D0>)
{
  v3 = *v2;
  if (*v2 < 0)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v5 = v2[1];
  if (!v3)
  {
    v13 = MEMORY[0x277D84F90];
    sub_230100234(MEMORY[0x277D84F90], 0, &v23);
    v9 = v13;
    v7 = v23;
    v8 = v24;
    goto LABEL_11;
  }

  v6 = sub_23030FD48();
  *(v6 + 16) = v3;
  bzero((v6 + 32), 8 * v3);
  sub_230100234(v6, v3, &v23);
  v7 = v23;
  v8 = v24;
  v9 = sub_23030FD48();
  *(v9 + 16) = v3;
  v10 = (v9 + 32);
  if (v3 <= 3)
  {
    v11 = 0;
    v12 = a2;
LABEL_9:
    v17 = v3 - v11;
    do
    {
      *v10++ = v12;
      --v17;
    }

    while (v17);
    goto LABEL_11;
  }

  v11 = v3 & 0x7FFFFFFFFFFFFFFCLL;
  v10 += v3 & 0x7FFFFFFFFFFFFFFCLL;
  v12 = a2;
  v14 = vdupq_lane_s64(a2, 0);
  v15 = (v9 + 48);
  v16 = v3 & 0x7FFFFFFFFFFFFFFCLL;
  do
  {
    v15[-1] = v14;
    *v15 = v14;
    v15 += 2;
    v16 -= 4;
  }

  while (v16);
  if (v3 != v11)
  {
    goto LABEL_9;
  }

LABEL_11:
  sub_230100234(v9, v3, &v23);
  v18 = *(v8 + 16);
  if (!v18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v19 = *(v24 + 16);
  if (!v19)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v20 = *(v5 + 16);
  if (v20)
  {
    if (v3 <= 0x7FFFFFFF)
    {
      v22 = v3;
      vvpow(v18, v19, v20, &v22);

      *a1 = v7;
      a1[1] = v8;
      return;
    }

    goto LABEL_17;
  }

LABEL_20:
  __break(1u);
}

Swift::Double __swiftcall REMVector.sum()()
{
  v5[1] = *MEMORY[0x277D85DE8];
  v1 = *v0;
  v2 = v0[1];
  v5[0] = 0.0;
  v3 = *(v2 + 16);
  if (!v3)
  {
LABEL_5:
    __break(1u);
  }

  if ((v1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  vDSP_sveD(v3, 1, v5, v1);
  return v5[0];
}

void REMVector.cumsum()(uint64_t *a1@<X8>)
{
  v2 = *v1;
  if ((*v1 & 0x8000000000000000) == 0)
  {
    v4 = v1[1];
    if (v2)
    {
      v5 = sub_23030FD48();
      *(v5 + 16) = v2;
      bzero((v5 + 32), 8 * v2);
    }

    else
    {
      v5 = MEMORY[0x277D84F90];
    }

    sub_230100234(v5, v2, &v13);
    v6 = v13;
    v7 = v14;
    v8 = *(v4 + 16);
    v9 = *(v14 + 16);
    *v9 = *v8;
    v10 = v6 - 1;
    if (v6 < 1)
    {
      goto LABEL_13;
    }

    if (v6 == 1)
    {
LABEL_10:
      *a1 = v6;
      a1[1] = v7;
      return;
    }

    v11 = (v9 + 1);
    v12 = 0x8000000000000001;
    while (v12)
    {
      *v11 = *(v11 - 1) + *&v8[v12];
      ++v11;
      ++v12;
      if (!--v10)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_13:
  __break(1u);
}

uint64_t REMVector.slice(range:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  if (result != a2)
  {
    v8 = result;
    if (a2 < result)
    {
      __break(1u);
    }

    else if (result < a2)
    {
      v9 = *(v3 + 8);
      v5 = MEMORY[0x277D84F90];
      do
      {
        v10 = *(*(v9 + 16) + 8 * v8);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = sub_23007EB60(0, *(v5 + 2) + 1, 1, v5);
        }

        v12 = *(v5 + 2);
        v11 = *(v5 + 3);
        v6 = v12 + 1;
        if (v12 >= v11 >> 1)
        {
          v13 = sub_23007EB60((v11 > 1), v6, 1, v5);
          v6 = v12 + 1;
          v5 = v13;
        }

        ++v8;
        *(v5 + 2) = v6;
        *&v5[8 * v12 + 32] = v10;
      }

      while (a2 != v8);
      goto LABEL_3;
    }

    __break(1u);
    return result;
  }

  v5 = MEMORY[0x277D84F90];
  v6 = *(MEMORY[0x277D84F90] + 16);
LABEL_3:

  return sub_230100234(v5, v6, a3);
}

void REMVector.natrualLog()(unint64_t *a1@<X8>)
{
  v2 = *v1;
  if ((*v1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v4 = v1[1];
  if (v2)
  {
    v5 = sub_23030FD48();
    *(v5 + 16) = v2;
    bzero((v5 + 32), 8 * v2);
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
  }

  sub_230100234(v5, v2, &v11);
  v6 = v12;
  v7 = *(v12 + 16);
  if (!v7)
  {
    goto LABEL_11;
  }

  v8 = *(v4 + 16);
  if (v8)
  {
    if (!(v2 >> 31))
    {
      v9 = v11;
      v10 = v2;
      vvlog(v7, v8, &v10);
      *a1 = v9;
      a1[1] = v6;
      return;
    }

    goto LABEL_10;
  }

LABEL_12:
  __break(1u);
}

Swift::Int __swiftcall REMVector.argmax()()
{
  __C[1] = *MEMORY[0x277D85DE8];
  v1 = *v0;
  v2 = v0[1];
  __I = 0;
  __C[0] = 0.0;
  v3 = *(v2 + 16);
  if (!v3)
  {
LABEL_7:
    __break(1u);
  }

  if ((v1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  vDSP_maxviD(v3, 1, __C, &__I, v1);
  result = __I;
  if ((__I & 0x8000000000000000) != 0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

void REMVector.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  if (*v0 < 0)
  {
    __break(1u);
  }

  else if (v1)
  {
    v3 = 0;
    v4 = MEMORY[0x277D839F8];
    v5 = MEMORY[0x277D83A80];
    do
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14718);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_230315CE0;
      v7 = *(*(v2 + 16) + 8 * v3);
      *(v6 + 56) = v4;
      *(v6 + 64) = v5;
      *(v6 + 32) = v7;
      v8 = sub_23030F918();
      MEMORY[0x231911790](v8);

      ++v3;
    }

    while (v1 != v3);
  }
}

void *assignWithCopy for REMVector(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];

  return a1;
}

void *assignWithTake for REMVector(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;

  return a1;
}

uint64_t sub_2302AA858(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xED00007265737261;
  v3 = 0x5079726575516C6ELL;
  v4 = a1;
  v5 = 0x6974736972756568;
  v6 = 0xE900000000000063;
  v7 = 0x6465726F68636E61;
  v8 = 0xEE00656C62627542;
  if (a1 != 4)
  {
    v7 = 0x6867696C746F7073;
    v8 = 0xE900000000000074;
  }

  if (a1 != 3)
  {
    v5 = v7;
    v6 = v8;
  }

  v9 = 0xE300000000000000;
  v10 = 5131883;
  if (a1 != 1)
  {
    v10 = 0x6168654265726F63;
    v9 = 0xEC000000726F6976;
  }

  if (!a1)
  {
    v10 = 0x5079726575516C6ELL;
    v9 = 0xED00007265737261;
  }

  if (a1 <= 2u)
  {
    v11 = v10;
  }

  else
  {
    v11 = v5;
  }

  if (v4 <= 2)
  {
    v12 = v9;
  }

  else
  {
    v12 = v6;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v2 = 0xE900000000000063;
      if (v11 != 0x6974736972756568)
      {
        goto LABEL_31;
      }
    }

    else if (a2 == 4)
    {
      v2 = 0xEE00656C62627542;
      if (v11 != 0x6465726F68636E61)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v2 = 0xE900000000000074;
      if (v11 != 0x6867696C746F7073)
      {
        goto LABEL_31;
      }
    }
  }

  else
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xE300000000000000;
        if (v11 != 5131883)
        {
          goto LABEL_31;
        }

        goto LABEL_28;
      }

      v3 = 0x6168654265726F63;
      v2 = 0xEC000000726F6976;
    }

    if (v11 != v3)
    {
LABEL_31:
      v13 = sub_230311048();
      goto LABEL_32;
    }
  }

LABEL_28:
  if (v12 != v2)
  {
    goto LABEL_31;
  }

  v13 = 1;
LABEL_32:

  return v13 & 1;
}

uint64_t sub_2302AAA60(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEE00656D614E656CLL;
  v3 = 0x694674757074756FLL;
  v4 = a1;
  v5 = 0xEA00000000006465;
  v6 = 0x800000023033F870;
  v7 = 0xD000000000000010;
  if (a1 != 4)
  {
    v7 = 0xD000000000000012;
    v6 = 0x800000023033F890;
  }

  if (a1 == 3)
  {
    v7 = 0x65536D6F646E6172;
  }

  else
  {
    v5 = v6;
  }

  v8 = 0x6C706D615378616DLL;
  v9 = 0xEE00746E756F4365;
  if (a1 != 1)
  {
    v8 = 0xD000000000000012;
    v9 = 0x800000023033F7D0;
  }

  if (!a1)
  {
    v8 = 0x694674757074756FLL;
    v9 = 0xEE00656D614E656CLL;
  }

  if (a1 <= 2u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v7;
  }

  if (v4 <= 2)
  {
    v11 = v9;
  }

  else
  {
    v11 = v5;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v2 = 0xEA00000000006465;
      if (v10 != 0x65536D6F646E6172)
      {
        goto LABEL_32;
      }
    }

    else if (a2 == 4)
    {
      v2 = 0x800000023033F870;
      if (v10 != 0xD000000000000010)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v2 = 0x800000023033F890;
      if (v10 != 0xD000000000000012)
      {
        goto LABEL_32;
      }
    }
  }

  else
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xEE00746E756F4365;
        if (v10 != 0x6C706D615378616DLL)
        {
          goto LABEL_32;
        }

        goto LABEL_29;
      }

      v3 = 0xD000000000000012;
      v2 = 0x800000023033F7D0;
    }

    if (v10 != v3)
    {
LABEL_32:
      v12 = sub_230311048();
      goto LABEL_33;
    }
  }

LABEL_29:
  if (v11 != v2)
  {
    goto LABEL_32;
  }

  v12 = 1;
LABEL_33:

  return v12 & 1;
}

uint64_t sub_2302AAC5C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x7463617865;
  if (a1 > 1u)
  {
    v4 = a1 == 2;
    v3 = 0xEA00000000006874;
    if (a1 == 2)
    {
      v5 = 0x6957736E69676562;
    }

    else
    {
      v5 = 0x6874695773646E65;
    }
  }

  else
  {
    v3 = 0xE500000000000000;
    v4 = a1 == 0;
    if (a1)
    {
      v5 = 0x736E6961746E6F63;
    }

    else
    {
      v5 = 0x7463617865;
    }
  }

  if (v4)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  v7 = 0xE500000000000000;
  v8 = 0x6957736E69676562;
  v9 = 0xEA00000000006874;
  if (a2 != 2)
  {
    v8 = 0x6874695773646E65;
    v9 = 0xE800000000000000;
  }

  if (a2)
  {
    v2 = 0x736E6961746E6F63;
    v7 = 0xE800000000000000;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (a2 <= 1u)
  {
    v11 = v7;
  }

  else
  {
    v11 = v9;
  }

  if (v5 == v10 && v6 == v11)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_230311048();
  }

  return v12 & 1;
}

uint64_t sub_2302AAD9C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 1953720684;
    }

    else
    {
      v3 = 7105633;
    }

    if (v2)
    {
      v4 = 0xE400000000000000;
    }

    else
    {
      v4 = 0xE300000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0x6D536D6F74737563;
    v4 = 0xEF7473694C747261;
  }

  else if (a1 == 3)
  {
    v3 = 0x7265646E696D6572;
    v4 = 0xE900000000000073;
  }

  else
  {
    v4 = 0xE500000000000000;
    v3 = 0x70756F7267;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 1953720684;
    }

    else
    {
      v9 = 7105633;
    }

    if (a2)
    {
      v8 = 0xE400000000000000;
    }

    else
    {
      v8 = 0xE300000000000000;
    }

    if (v3 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0x7265646E696D6572;
    v6 = 0xE900000000000073;
    if (a2 != 3)
    {
      v5 = 0x70756F7267;
      v6 = 0xE500000000000000;
    }

    if (a2 == 2)
    {
      v7 = 0x6D536D6F74737563;
    }

    else
    {
      v7 = v5;
    }

    if (a2 == 2)
    {
      v8 = 0xEF7473694C747261;
    }

    else
    {
      v8 = v6;
    }

    if (v3 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v4 != v8)
  {
LABEL_33:
    v10 = sub_230311048();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_2302AAF28(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 1702060386;
  if (a1 > 1u)
  {
    v5 = a1 == 2;
    v3 = 0xEB00000000734449;
    v4 = 0xE700000000000000;
    if (a1 == 2)
    {
      v6 = 0x7265646E696D6572;
    }

    else
    {
      v6 = 0x444970756F7267;
    }
  }

  else
  {
    v3 = 0xE400000000000000;
    v4 = 0xE600000000000000;
    v5 = a1 == 0;
    if (a1)
    {
      v6 = 0x44497473696CLL;
    }

    else
    {
      v6 = 1702060386;
    }
  }

  if (v5)
  {
    v7 = v3;
  }

  else
  {
    v7 = v4;
  }

  v8 = 0xE400000000000000;
  v9 = 0x7265646E696D6572;
  v10 = 0xEB00000000734449;
  if (a2 != 2)
  {
    v9 = 0x444970756F7267;
    v10 = 0xE700000000000000;
  }

  if (a2)
  {
    v2 = 0x44497473696CLL;
    v8 = 0xE600000000000000;
  }

  if (a2 <= 1u)
  {
    v11 = v2;
  }

  else
  {
    v11 = v9;
  }

  if (a2 <= 1u)
  {
    v12 = v8;
  }

  else
  {
    v12 = v10;
  }

  if (v6 == v11 && v7 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_230311048();
  }

  return v13 & 1;
}

uint64_t sub_2302AB068(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEC00000065746144;
  v3 = 0x7974697669746361;
  v4 = a1;
  if (a1 <= 3u)
  {
    v12 = 0x800000023033FC80;
    v13 = 0xD000000000000018;
    if (a1 == 2)
    {
      v13 = 0x7974697669746361;
      v12 = 0xEC00000065707954;
    }

    v14 = 0x800000023033FC50;
    v15 = 0xD000000000000011;
    if (a1)
    {
      v15 = 0x7974697669746361;
      v14 = 0xEC00000065746144;
    }

    if (a1 <= 1u)
    {
      v10 = v15;
    }

    else
    {
      v10 = v13;
    }

    if (v4 <= 1)
    {
      v11 = v14;
    }

    else
    {
      v11 = v12;
    }
  }

  else
  {
    v5 = 0x69746E6564496B63;
    v6 = 0xEC00000072656966;
    v7 = 0x800000023033FCF0;
    v8 = 0xD000000000000010;
    if (a1 != 7)
    {
      v8 = 0xD000000000000015;
      v7 = 0x800000023033FB50;
    }

    if (a1 != 6)
    {
      v5 = v8;
      v6 = v7;
    }

    v9 = 0x800000023033FCA0;
    if (a1 != 4)
    {
      v9 = 0x800000023033FCC0;
    }

    if (a1 <= 5u)
    {
      v10 = 0xD00000000000001DLL;
    }

    else
    {
      v10 = v5;
    }

    if (v4 <= 5)
    {
      v11 = v9;
    }

    else
    {
      v11 = v6;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v2 = 0xEC00000065707954;
      }

      else
      {
        v2 = 0x800000023033FC80;
        v3 = 0xD000000000000018;
      }
    }

    else if (!a2)
    {
      v2 = 0x800000023033FC50;
      v3 = 0xD000000000000011;
    }
  }

  else if (a2 <= 5u)
  {
    if (a2 == 4)
    {
      v16 = "ckParentCloudObjectEntityName";
    }

    else
    {
      v16 = "ckParentCloudObjectIdentifier";
    }

    v2 = (v16 - 32) | 0x8000000000000000;
    v3 = 0xD00000000000001DLL;
  }

  else if (a2 == 6)
  {
    v3 = 0x69746E6564496B63;
    v2 = 0xEC00000072656966;
  }

  else if (a2 == 7)
  {
    v2 = 0x800000023033FCF0;
    v3 = 0xD000000000000010;
  }

  else
  {
    v2 = 0x800000023033FB50;
    v3 = 0xD000000000000015;
  }

  if (v10 == v3 && v11 == v2)
  {
    v17 = 1;
  }

  else
  {
    v17 = sub_230311048();
  }

  return v17 & 1;
}

uint64_t sub_2302AB2DC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEE007265646E696DLL;
  v3 = a1;
  if (a1 > 3u)
  {
    v10 = 0x800000023033F540;
    if (a1 == 6)
    {
      v11 = 0xD000000000000013;
    }

    else
    {
      v11 = 0x65526574656C6564;
    }

    if (a1 != 6)
    {
      v10 = 0xEE007265646E696DLL;
    }

    v12 = 0x800000023033F500;
    v13 = 0xD000000000000010;
    if (a1 != 4)
    {
      v13 = 0xD000000000000012;
      v12 = 0x800000023033F520;
    }

    if (a1 <= 5u)
    {
      v8 = v13;
    }

    else
    {
      v8 = v11;
    }

    if (v3 <= 5)
    {
      v9 = v12;
    }

    else
    {
      v9 = v10;
    }
  }

  else
  {
    v4 = 0x800000023033F4C0;
    v5 = 0xD000000000000014;
    if (a1 == 2)
    {
      v6 = 0xD000000000000012;
    }

    else
    {
      v6 = 0xD000000000000014;
    }

    if (a1 != 2)
    {
      v4 = 0x800000023033F4E0;
    }

    v7 = 0x800000023033F480;
    if (a1)
    {
      v5 = 0xD000000000000016;
      v7 = 0x800000023033F4A0;
    }

    if (a1 <= 1u)
    {
      v8 = v5;
    }

    else
    {
      v8 = v6;
    }

    if (v3 <= 1)
    {
      v9 = v7;
    }

    else
    {
      v9 = v4;
    }
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v2 = 0x800000023033F540;
        if (v8 != 0xD000000000000013)
        {
          goto LABEL_52;
        }
      }

      else if (v8 != 0x65526574656C6564)
      {
LABEL_52:
        v16 = sub_230311048();
        goto LABEL_53;
      }

      goto LABEL_50;
    }

    if (a2 == 4)
    {
      v2 = 0x800000023033F500;
      if (v8 != 0xD000000000000010)
      {
        goto LABEL_52;
      }

      goto LABEL_50;
    }

    v15 = "uncompleteReminder";
LABEL_44:
    v2 = (v15 - 32) | 0x8000000000000000;
    if (v8 != 0xD000000000000012)
    {
      goto LABEL_52;
    }

    goto LABEL_50;
  }

  if (a2 > 1u)
  {
    if (a2 != 2)
    {
      v14 = "commitReminderDetail";
LABEL_47:
      v2 = (v14 - 32) | 0x8000000000000000;
      if (v8 != 0xD000000000000014)
      {
        goto LABEL_52;
      }

      goto LABEL_50;
    }

    v15 = "showReminderDetail";
    goto LABEL_44;
  }

  if (!a2)
  {
    v14 = "showReminderCreation";
    goto LABEL_47;
  }

  v2 = 0x800000023033F4A0;
  if (v8 != 0xD000000000000016)
  {
    goto LABEL_52;
  }

LABEL_50:
  if (v9 != v2)
  {
    goto LABEL_52;
  }

  v16 = 1;
LABEL_53:

  return v16 & 1;
}

uint64_t sub_2302AB52C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 4u)
  {
    v11 = 0xE800000000000000;
    v12 = 0x797469726F697270;
    v13 = 0xE300000000000000;
    v14 = 6775156;
    if (a1 != 8)
    {
      v14 = 0x746361746E6F63;
      v13 = 0xE700000000000000;
    }

    if (a1 != 7)
    {
      v12 = v14;
      v11 = v13;
    }

    v15 = 0x656C6369686576;
    if (a1 != 5)
    {
      v15 = 0x64656767616C66;
    }

    if (a1 <= 6u)
    {
      v9 = v15;
    }

    else
    {
      v9 = v12;
    }

    if (v2 <= 6)
    {
      v10 = 0xE700000000000000;
    }

    else
    {
      v10 = v11;
    }
  }

  else
  {
    v3 = 0xE400000000000000;
    v4 = 0x664F796144657564;
    v5 = 0xEC0000006B656557;
    v6 = 0x6144657544706C6ELL;
    v7 = 0xEA00000000006574;
    if (a1 != 3)
    {
      v6 = 0x6E6F697461636F6CLL;
      v7 = 0xE800000000000000;
    }

    if (a1 != 2)
    {
      v4 = v6;
      v5 = v7;
    }

    v8 = 0x6E65727275636572;
    if (a1)
    {
      v3 = 0xEA00000000006563;
    }

    else
    {
      v8 = 1953720684;
    }

    if (a1 <= 1u)
    {
      v9 = v8;
    }

    else
    {
      v9 = v4;
    }

    if (v2 <= 1)
    {
      v10 = v3;
    }

    else
    {
      v10 = v5;
    }
  }

  if (a2 > 4u)
  {
    if (a2 <= 6u)
    {
      v16 = 0xE700000000000000;
      if (a2 == 5)
      {
        if (v9 != 0x656C6369686576)
        {
          goto LABEL_57;
        }
      }

      else if (v9 != 0x64656767616C66)
      {
LABEL_57:
        v17 = sub_230311048();
        goto LABEL_58;
      }
    }

    else if (a2 == 7)
    {
      v16 = 0xE800000000000000;
      if (v9 != 0x797469726F697270)
      {
        goto LABEL_57;
      }
    }

    else if (a2 == 8)
    {
      v16 = 0xE300000000000000;
      if (v9 != 6775156)
      {
        goto LABEL_57;
      }
    }

    else
    {
      v16 = 0xE700000000000000;
      if (v9 != 0x746361746E6F63)
      {
        goto LABEL_57;
      }
    }
  }

  else if (a2 <= 1u)
  {
    if (a2)
    {
      v16 = 0xEA00000000006563;
      if (v9 != 0x6E65727275636572)
      {
        goto LABEL_57;
      }
    }

    else
    {
      v16 = 0xE400000000000000;
      if (v9 != 1953720684)
      {
        goto LABEL_57;
      }
    }
  }

  else if (a2 == 2)
  {
    v16 = 0xEC0000006B656557;
    if (v9 != 0x664F796144657564)
    {
      goto LABEL_57;
    }
  }

  else if (a2 == 3)
  {
    v16 = 0xEA00000000006574;
    if (v9 != 0x6144657544706C6ELL)
    {
      goto LABEL_57;
    }
  }

  else
  {
    v16 = 0xE800000000000000;
    if (v9 != 0x6E6F697461636F6CLL)
    {
      goto LABEL_57;
    }
  }

  if (v10 != v16)
  {
    goto LABEL_57;
  }

  v17 = 1;
LABEL_58:

  return v17 & 1;
}

uint64_t sub_2302AB83C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x6163696E6F6E6163;
    }

    else
    {
      v3 = 1701667182;
    }

    if (v2)
    {
      v4 = 0xED0000656D614E6CLL;
    }

    else
    {
      v4 = 0xE400000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0x800000023033FB20;
    v3 = 0xD00000000000001BLL;
  }

  else
  {
    if (a1 == 3)
    {
      v3 = 0x4479636E65636572;
    }

    else
    {
      v3 = 0xD000000000000015;
    }

    if (v2 == 3)
    {
      v4 = 0xEB00000000657461;
    }

    else
    {
      v4 = 0x800000023033FB50;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x6163696E6F6E6163;
    }

    else
    {
      v9 = 1701667182;
    }

    if (a2)
    {
      v8 = 0xED0000656D614E6CLL;
    }

    else
    {
      v8 = 0xE400000000000000;
    }

    if (v3 != v9)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v5 = 0x4479636E65636572;
    v6 = 0x800000023033FB50;
    if (a2 == 3)
    {
      v6 = 0xEB00000000657461;
    }

    else
    {
      v5 = 0xD000000000000015;
    }

    if (a2 == 2)
    {
      v7 = 0xD00000000000001BLL;
    }

    else
    {
      v7 = v5;
    }

    if (a2 == 2)
    {
      v8 = 0x800000023033FB20;
    }

    else
    {
      v8 = v6;
    }

    if (v3 != v7)
    {
      goto LABEL_37;
    }
  }

  if (v4 != v8)
  {
LABEL_37:
    v10 = sub_230311048();
    goto LABEL_38;
  }

  v10 = 1;
LABEL_38:

  return v10 & 1;
}

uint64_t sub_2302AB9F8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA00000000007265;
  v3 = 0x696669746E656469;
  v4 = a1;
  v5 = 0x655273494D45525FLL;
  v6 = 0xEF746E6572727563;
  if (a1 != 6)
  {
    v5 = 0xD000000000000020;
    v6 = 0x800000023033F5D0;
  }

  v7 = 0x6D6574494D45525FLL;
  v8 = 0xEC00000065707954;
  if (a1 != 4)
  {
    v7 = 0x67616C464D45525FLL;
    v8 = 0xEB00000000646567;
  }

  if (a1 <= 5u)
  {
    v5 = v7;
    v6 = v8;
  }

  v9 = 0x6F6363414D45525FLL;
  v10 = 0xED00004449746E75;
  if (a1 != 2)
  {
    v9 = 0x7473694C4D45525FLL;
    v10 = 0xEA00000000004449;
  }

  v11 = 0x656A624F4D45525FLL;
  v12 = 0xEC00000044497463;
  if (!a1)
  {
    v11 = 0x696669746E656469;
    v12 = 0xEA00000000007265;
  }

  if (a1 <= 1u)
  {
    v9 = v11;
    v10 = v12;
  }

  if (a1 <= 3u)
  {
    v13 = v9;
  }

  else
  {
    v13 = v5;
  }

  if (v4 <= 3)
  {
    v14 = v10;
  }

  else
  {
    v14 = v6;
  }

  if (a2 > 3u)
  {
    if (a2 <= 5u)
    {
      if (a2 != 4)
      {
        v2 = 0xEB00000000646567;
        if (v13 != 0x67616C464D45525FLL)
        {
          goto LABEL_41;
        }

        goto LABEL_38;
      }

      v15 = 0x6D6574494D45525FLL;
      v16 = 1701869908;
      goto LABEL_26;
    }

    if (a2 == 6)
    {
      v2 = 0xEF746E6572727563;
      if (v13 != 0x655273494D45525FLL)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v2 = 0x800000023033F5D0;
      if (v13 != 0xD000000000000020)
      {
        goto LABEL_41;
      }
    }
  }

  else
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v2 = 0xED00004449746E75;
        if (v13 != 0x6F6363414D45525FLL)
        {
          goto LABEL_41;
        }

        goto LABEL_38;
      }

      v3 = 0x7473694C4D45525FLL;
      v2 = 0xEA00000000004449;
    }

    else if (a2)
    {
      v15 = 0x656A624F4D45525FLL;
      v16 = 1145664611;
LABEL_26:
      v2 = v16 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
      if (v13 != v15)
      {
        goto LABEL_41;
      }

      goto LABEL_38;
    }

    if (v13 != v3)
    {
LABEL_41:
      v17 = sub_230311048();
      goto LABEL_42;
    }
  }

LABEL_38:
  if (v14 != v2)
  {
    goto LABEL_41;
  }

  v17 = 1;
LABEL_42:

  return v17 & 1;
}

uint64_t sub_2302ABCB8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEC000000534F696ELL;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0xD000000000000018;
    }

    else
    {
      v5 = 0xD00000000000001ELL;
    }

    if (v3 == 2)
    {
      v4 = 0x800000023033F780;
    }

    else
    {
      v4 = 0x800000023033F7A0;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0xEE00534F63616D6ELL;
    }

    else
    {
      v4 = 0xEC000000534F696ELL;
    }

    v5 = 0x4F64656C62616E65;
  }

  v6 = 0xD000000000000018;
  v7 = 0x800000023033F7A0;
  if (a2 == 2)
  {
    v7 = 0x800000023033F780;
  }

  else
  {
    v6 = 0xD00000000000001ELL;
  }

  if (a2)
  {
    v2 = 0xEE00534F63616D6ELL;
  }

  if (a2 <= 1u)
  {
    v8 = 0x4F64656C62616E65;
  }

  else
  {
    v8 = v6;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v7;
  }

  if (v5 == v8 && v4 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_230311048();
  }

  return v10 & 1;
}

uint64_t sub_2302ABDEC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000064;
  v3 = 0x656C62616E457369;
  if (a1 > 3u)
  {
    v5 = 0x800000023033F740;
    v10 = 0xD000000000000018;
    if (a1 == 6)
    {
      v10 = 0xD000000000000014;
    }

    else
    {
      v5 = 0x800000023033F760;
    }

    v6 = 0x800000023033F700;
    v11 = 0xD000000000000019;
    if (a1 != 4)
    {
      v11 = 0xD000000000000014;
      v6 = 0x800000023033F720;
    }

    v8 = a1 <= 5u;
    if (a1 <= 5u)
    {
      v9 = v11;
    }

    else
    {
      v9 = v10;
    }
  }

  else
  {
    v4 = 0x656D7473756A6461;
    v5 = 0xEA0000000000746ELL;
    if (a1 != 2)
    {
      v4 = 0x6E656469666E6F63;
      v5 = 0xEA00000000006563;
    }

    v6 = 0xE700000000000000;
    v7 = 0x74726F70707573;
    if (!a1)
    {
      v7 = 0x656C62616E457369;
      v6 = 0xE900000000000064;
    }

    v8 = a1 <= 1u;
    if (a1 <= 1u)
    {
      v9 = v7;
    }

    else
    {
      v9 = v4;
    }
  }

  if (v8)
  {
    v12 = v6;
  }

  else
  {
    v12 = v5;
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 != 6)
      {
        v2 = 0x800000023033F760;
        if (v9 != 0xD000000000000018)
        {
          goto LABEL_42;
        }

        goto LABEL_39;
      }

      v13 = "feedbackResetVersion";
    }

    else
    {
      if (a2 == 4)
      {
        v2 = 0x800000023033F700;
        if (v9 != 0xD000000000000019)
        {
          goto LABEL_42;
        }

        goto LABEL_39;
      }

      v13 = "validationConfidence";
    }

    v2 = (v13 - 32) | 0x8000000000000000;
    if (v9 != 0xD000000000000014)
    {
      goto LABEL_42;
    }

    goto LABEL_39;
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v2 = 0xEA0000000000746ELL;
      if (v9 != 0x656D7473756A6461)
      {
        goto LABEL_42;
      }

      goto LABEL_39;
    }

    v3 = 0x6E656469666E6F63;
    v2 = 0xEA00000000006563;
  }

  else if (a2)
  {
    v2 = 0xE700000000000000;
    if (v9 != 0x74726F70707573)
    {
      goto LABEL_42;
    }

    goto LABEL_39;
  }

  if (v9 != v3)
  {
LABEL_42:
    v14 = sub_230311048();
    goto LABEL_43;
  }

LABEL_39:
  if (v12 != v2)
  {
    goto LABEL_42;
  }

  v14 = 1;
LABEL_43:

  return v14 & 1;
}

uint64_t sub_2302AC078(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 4u)
  {
    v11 = 0xD000000000000014;
    v12 = 0x800000023033FAA0;
    v13 = 0x4C746361746E6F63;
    v14 = 0xEC0000006C656261;
    if (a1 != 8)
    {
      v13 = 0x614874694B70616DLL;
      v14 = 0xEC000000656C646ELL;
    }

    if (a1 != 7)
    {
      v11 = v13;
      v12 = v14;
    }

    v15 = 0x73736572646461;
    if (a1 != 5)
    {
      v15 = 0x676E6974756F72;
    }

    if (a1 <= 6u)
    {
      v9 = v15;
    }

    else
    {
      v9 = v11;
    }

    if (v2 <= 6)
    {
      v10 = 0xE700000000000000;
    }

    else
    {
      v10 = v12;
    }
  }

  else
  {
    v3 = 0xE500000000000000;
    v4 = 0xE800000000000000;
    v5 = 0x656475746974616CLL;
    v6 = 0x64757469676E6F6CLL;
    v7 = 0xE900000000000065;
    if (a1 != 3)
    {
      v6 = 0x737569646172;
      v7 = 0xE600000000000000;
    }

    if (a1 != 2)
    {
      v5 = v6;
      v4 = v7;
    }

    v8 = 0x6E6F697461636F6CLL;
    if (a1)
    {
      v3 = 0xEB00000000444955;
    }

    else
    {
      v8 = 0x656C746974;
    }

    if (a1 <= 1u)
    {
      v9 = v8;
    }

    else
    {
      v9 = v5;
    }

    if (v2 <= 1)
    {
      v10 = v3;
    }

    else
    {
      v10 = v4;
    }
  }

  if (a2 > 4u)
  {
    if (a2 <= 6u)
    {
      v16 = 0xE700000000000000;
      if (a2 == 5)
      {
        if (v9 != 0x73736572646461)
        {
          goto LABEL_57;
        }
      }

      else if (v9 != 0x676E6974756F72)
      {
LABEL_57:
        v19 = sub_230311048();
        goto LABEL_58;
      }
    }

    else if (a2 == 7)
    {
      v16 = 0x800000023033FAA0;
      if (v9 != 0xD000000000000014)
      {
        goto LABEL_57;
      }
    }

    else
    {
      if (a2 == 8)
      {
        v17 = 0x4C746361746E6F63;
        v18 = 1818583649;
      }

      else
      {
        v17 = 0x614874694B70616DLL;
        v18 = 1701602414;
      }

      v16 = v18 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
      if (v9 != v17)
      {
        goto LABEL_57;
      }
    }
  }

  else if (a2 <= 1u)
  {
    if (a2)
    {
      v16 = 0xEB00000000444955;
      if (v9 != 0x6E6F697461636F6CLL)
      {
        goto LABEL_57;
      }
    }

    else
    {
      v16 = 0xE500000000000000;
      if (v9 != 0x656C746974)
      {
        goto LABEL_57;
      }
    }
  }

  else if (a2 == 2)
  {
    v16 = 0xE800000000000000;
    if (v9 != 0x656475746974616CLL)
    {
      goto LABEL_57;
    }
  }

  else if (a2 == 3)
  {
    v16 = 0xE900000000000065;
    if (v9 != 0x64757469676E6F6CLL)
    {
      goto LABEL_57;
    }
  }

  else
  {
    v16 = 0xE600000000000000;
    if (v9 != 0x737569646172)
    {
      goto LABEL_57;
    }
  }

  if (v10 != v16)
  {
    goto LABEL_57;
  }

  v19 = 1;
LABEL_58:

  return v19 & 1;
}

uint64_t sub_2302AC3A4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x7961646F74;
  v3 = a1;
  v4 = 0xE500000000000000;
  v5 = 0xE600000000000000;
  v6 = 0x646567676174;
  if (a1 != 6)
  {
    v6 = 0x6574656C706D6F63;
    v5 = 0xE900000000000064;
  }

  v7 = 0xE800000000000000;
  v8 = 0x64656E6769737361;
  if (a1 != 4)
  {
    v8 = 0x6E756F4669726973;
    v7 = 0xEF737070416E4964;
  }

  if (a1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0x656C756465686373;
  v10 = 0xE900000000000064;
  if (a1 != 2)
  {
    v9 = 7105633;
    v10 = 0xE300000000000000;
  }

  v11 = 0x64656767616C66;
  if (a1)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v11 = 0x7961646F74;
  }

  if (a1 > 1u)
  {
    v4 = v10;
  }

  else
  {
    v9 = v11;
  }

  if (a1 <= 3u)
  {
    v12 = v9;
  }

  else
  {
    v12 = v6;
  }

  if (v3 <= 3)
  {
    v13 = v4;
  }

  else
  {
    v13 = v5;
  }

  if (a2 <= 3u)
  {
    if (a2 <= 1u)
    {
      if (a2)
      {
        v14 = 0xE700000000000000;
        v2 = 0x64656767616C66;
      }

      else
      {
        v14 = 0xE500000000000000;
      }

      goto LABEL_37;
    }

    if (a2 != 2)
    {
      v14 = 0xE300000000000000;
      v2 = 7105633;
      goto LABEL_37;
    }

    v2 = 0x656C756465686373;
LABEL_36:
    v14 = 0xE900000000000064;
    goto LABEL_37;
  }

  if (a2 > 5u)
  {
    if (a2 == 6)
    {
      v14 = 0xE600000000000000;
      v2 = 0x646567676174;
      goto LABEL_37;
    }

    v2 = 0x6574656C706D6F63;
    goto LABEL_36;
  }

  if (a2 == 4)
  {
    v14 = 0xE800000000000000;
    v2 = 0x64656E6769737361;
  }

  else
  {
    v2 = 0x6E756F4669726973;
    v14 = 0xEF737070416E4964;
  }

LABEL_37:
  if (v12 == v2 && v13 == v14)
  {
    v15 = 1;
  }

  else
  {
    v15 = sub_230311048();
  }

  return v15 & 1;
}

uint64_t sub_2302AC5E8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 4u)
  {
    v13 = 0xE400000000000000;
    v14 = 0xD000000000000013;
    v15 = 0x800000023033ED30;
    v16 = 0x664F796144657564;
    v17 = 0xEC0000006B656557;
    if (a1 != 3)
    {
      v16 = 0x636F4C6D72616C61;
      v17 = 0xED00006E6F697461;
    }

    if (a1 != 2)
    {
      v14 = v16;
      v15 = v17;
    }

    v18 = 0x616F626574736170;
    if (a1)
    {
      v13 = 0xED00004C52556472;
    }

    else
    {
      v18 = 1953720684;
    }

    if (a1 <= 1u)
    {
      v11 = v18;
    }

    else
    {
      v11 = v14;
    }

    if (v2 <= 1)
    {
      v12 = v13;
    }

    else
    {
      v12 = v15;
    }
  }

  else
  {
    v3 = 0xE800000000000000;
    v4 = 0x797469726F697270;
    v5 = 0xE300000000000000;
    v6 = 6775156;
    if (a1 != 9)
    {
      v6 = 0x746361746E6F63;
      v5 = 0xE700000000000000;
    }

    if (a1 != 8)
    {
      v4 = v6;
      v3 = v5;
    }

    v7 = 0xE700000000000000;
    v8 = 0x656C6369686576;
    v9 = 0xE800000000000000;
    v10 = 0x65656E6769737361;
    if (a1 != 6)
    {
      v10 = 0x64656767616C66;
      v9 = 0xE700000000000000;
    }

    if (a1 != 5)
    {
      v8 = v10;
      v7 = v9;
    }

    if (a1 <= 7u)
    {
      v11 = v8;
    }

    else
    {
      v11 = v4;
    }

    if (v2 <= 7)
    {
      v12 = v7;
    }

    else
    {
      v12 = v3;
    }
  }

  if (a2 <= 4u)
  {
    if (a2 <= 1u)
    {
      if (!a2)
      {
        v19 = 0xE400000000000000;
        if (v11 != 1953720684)
        {
          goto LABEL_62;
        }

        goto LABEL_60;
      }

      v20 = 0x616F626574736170;
      v21 = 0x4C52556472;
    }

    else
    {
      if (a2 == 2)
      {
        v19 = 0x800000023033ED30;
        if (v11 != 0xD000000000000013)
        {
          goto LABEL_62;
        }

        goto LABEL_60;
      }

      if (a2 == 3)
      {
        v19 = 0xEC0000006B656557;
        if (v11 != 0x664F796144657564)
        {
          goto LABEL_62;
        }

        goto LABEL_60;
      }

      v20 = 0x636F4C6D72616C61;
      v21 = 0x6E6F697461;
    }

    v19 = v21 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
    if (v11 != v20)
    {
      goto LABEL_62;
    }

    goto LABEL_60;
  }

  if (a2 > 7u)
  {
    if (a2 == 8)
    {
      v19 = 0xE800000000000000;
      if (v11 != 0x797469726F697270)
      {
        goto LABEL_62;
      }
    }

    else if (a2 == 9)
    {
      v19 = 0xE300000000000000;
      if (v11 != 6775156)
      {
        goto LABEL_62;
      }
    }

    else
    {
      v19 = 0xE700000000000000;
      if (v11 != 0x746361746E6F63)
      {
LABEL_62:
        v22 = sub_230311048();
        goto LABEL_63;
      }
    }
  }

  else if (a2 == 5)
  {
    v19 = 0xE700000000000000;
    if (v11 != 0x656C6369686576)
    {
      goto LABEL_62;
    }
  }

  else if (a2 == 6)
  {
    v19 = 0xE800000000000000;
    if (v11 != 0x65656E6769737361)
    {
      goto LABEL_62;
    }
  }

  else
  {
    v19 = 0xE700000000000000;
    if (v11 != 0x64656767616C66)
    {
      goto LABEL_62;
    }
  }

LABEL_60:
  if (v12 != v19)
  {
    goto LABEL_62;
  }

  v22 = 1;
LABEL_63:

  return v22 & 1;
}

uint64_t sub_2302AC95C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB00000000657079;
  v3 = 0x54746E65746E6F63;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x656372756F73;
    }

    else
    {
      v5 = 0x546E4965676E6172;
    }

    if (v4 == 2)
    {
      v6 = 0xE600000000000000;
    }

    else
    {
      v6 = 0xEC000000656C7469;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x64616F6C796170;
    }

    else
    {
      v5 = 0x54746E65746E6F63;
    }

    if (v4)
    {
      v6 = 0xE700000000000000;
    }

    else
    {
      v6 = 0xEB00000000657079;
    }
  }

  v7 = 0xE600000000000000;
  v8 = 0x656372756F73;
  if (a2 != 2)
  {
    v8 = 0x546E4965676E6172;
    v7 = 0xEC000000656C7469;
  }

  if (a2)
  {
    v3 = 0x64616F6C796170;
    v2 = 0xE700000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v7;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_230311048();
  }

  return v11 & 1;
}

uint64_t sub_2302ACAAC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 1701736302;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x4964657461647075;
    }

    else
    {
      v4 = 0xD000000000000013;
    }

    if (v3 == 2)
    {
      v5 = 0xEF6465747265736ELL;
    }

    else
    {
      v5 = 0x800000023033FA00;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x6C616974696E69;
    }

    else
    {
      v4 = 1701736302;
    }

    if (v3)
    {
      v5 = 0xE700000000000000;
    }

    else
    {
      v5 = 0xE400000000000000;
    }
  }

  v6 = 0xE400000000000000;
  v7 = 0x4964657461647075;
  v8 = 0x800000023033FA00;
  if (a2 == 2)
  {
    v8 = 0xEF6465747265736ELL;
  }

  else
  {
    v7 = 0xD000000000000013;
  }

  if (a2)
  {
    v2 = 0x6C616974696E69;
    v6 = 0xE700000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v8;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_230311048();
  }

  return v11 & 1;
}

uint64_t sub_2302ACC00(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 1702060386;
  if (a1 > 1u)
  {
    v5 = a1 == 2;
    v3 = 0xE900000000000065;
    v4 = 0xE700000000000000;
    if (a1 == 2)
    {
      v6 = 0x7461446E69676562;
    }

    else
    {
      v6 = 0x65746144646E65;
    }
  }

  else
  {
    v3 = 0xE400000000000000;
    v4 = 0xE500000000000000;
    v5 = a1 == 0;
    if (a1)
    {
      v6 = 0x746E756F63;
    }

    else
    {
      v6 = 1702060386;
    }
  }

  if (v5)
  {
    v7 = v3;
  }

  else
  {
    v7 = v4;
  }

  v8 = 0xE400000000000000;
  v9 = 0x7461446E69676562;
  v10 = 0xE900000000000065;
  if (a2 != 2)
  {
    v9 = 0x65746144646E65;
    v10 = 0xE700000000000000;
  }

  if (a2)
  {
    v2 = 0x746E756F63;
    v8 = 0xE500000000000000;
  }

  if (a2 <= 1u)
  {
    v11 = v2;
  }

  else
  {
    v11 = v9;
  }

  if (a2 <= 1u)
  {
    v12 = v8;
  }

  else
  {
    v12 = v10;
  }

  if (v6 == v11 && v7 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_230311048();
  }

  return v13 & 1;
}

uint64_t sub_2302ACD38(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 6710895;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x7265746661;
    }

    else
    {
      v4 = 0x73696C776F6C6C61;
    }

    if (v3 == 2)
    {
      v5 = 0xE500000000000000;
    }

    else
    {
      v5 = 0xE900000000000074;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 28271;
    }

    else
    {
      v4 = 6710895;
    }

    if (v3)
    {
      v5 = 0xE200000000000000;
    }

    else
    {
      v5 = 0xE300000000000000;
    }
  }

  v6 = 0xE300000000000000;
  v7 = 0xE500000000000000;
  v8 = 0x7265746661;
  if (a2 != 2)
  {
    v8 = 0x73696C776F6C6C61;
    v7 = 0xE900000000000074;
  }

  if (a2)
  {
    v2 = 28271;
    v6 = 0xE200000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_230311048();
  }

  return v11 & 1;
}

uint64_t sub_2302ACE5C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0xE800000000000000;
  v5 = 0x797469726F697270;
  v6 = 0x6E6F697461657263;
  v7 = 0xEC00000065746144;
  if (a1 != 4)
  {
    v6 = 0x656C746974;
    v7 = 0xE500000000000000;
  }

  if (a1 != 3)
  {
    v5 = v6;
    v4 = v7;
  }

  v8 = 0xE600000000000000;
  v9 = 0x6C61756E616DLL;
  if (a1 != 1)
  {
    v9 = 0x4479616C70736964;
    v8 = 0xEB00000000657461;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 0x746C7561666564;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v5;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v4;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v12 = 0xE800000000000000;
      if (v10 != 0x797469726F697270)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0xEC00000065746144;
      if (v10 != 0x6E6F697461657263)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE500000000000000;
      if (v10 != 0x656C746974)
      {
LABEL_34:
        v13 = sub_230311048();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x6C61756E616DLL)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xEB00000000657461;
      if (v10 != 0x4479616C70736964)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v12 = 0xE700000000000000;
    if (v10 != 0x746C7561666564)
    {
      goto LABEL_34;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_34;
  }

  v13 = 1;
LABEL_35:

  return v13 & 1;
}

uint64_t sub_2302AD054(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000073;
  v3 = 0x6C6562614C6C6C61;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0xD000000000000019;
    }

    else
    {
      v5 = 0x736C6562616CLL;
    }

    if (v4 == 2)
    {
      v6 = 0x800000023033EAE0;
    }

    else
    {
      v6 = 0xE600000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x736C6562614C6F6ELL;
    }

    else
    {
      v5 = 0x6C6562614C6C6C61;
    }

    if (v4)
    {
      v6 = 0xE800000000000000;
    }

    else
    {
      v6 = 0xE900000000000073;
    }
  }

  v7 = 0xD000000000000019;
  v8 = 0x800000023033EAE0;
  if (a2 != 2)
  {
    v7 = 0x736C6562616CLL;
    v8 = 0xE600000000000000;
  }

  if (a2)
  {
    v3 = 0x736C6562614C6F6ELL;
    v2 = 0xE800000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_230311048();
  }

  return v11 & 1;
}

uint64_t sub_2302AD190(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0xD000000000000014;
    }

    else
    {
      v3 = 1702060386;
    }

    if (v2)
    {
      v4 = 0x800000023033EA80;
    }

    else
    {
      v4 = 0xE400000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xD000000000000014;
    v4 = 0x800000023033EAA0;
  }

  else if (a1 == 3)
  {
    v3 = 0x7274536C6562616CLL;
    v4 = 0xEC00000073676E69;
  }

  else
  {
    v3 = 0x6F6974617265706FLL;
    v4 = 0xE90000000000006ELL;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 0xD000000000000014;
    }

    else
    {
      v6 = 1702060386;
    }

    if (a2)
    {
      v5 = 0x800000023033EA80;
    }

    else
    {
      v5 = 0xE400000000000000;
    }

    if (v3 != v6)
    {
      goto LABEL_31;
    }
  }

  else if (a2 == 2)
  {
    v5 = 0x800000023033EAA0;
    if (v3 != 0xD000000000000014)
    {
      goto LABEL_31;
    }
  }

  else if (a2 == 3)
  {
    v5 = 0xEC00000073676E69;
    if (v3 != 0x7274536C6562616CLL)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v5 = 0xE90000000000006ELL;
    if (v3 != 0x6F6974617265706FLL)
    {
LABEL_31:
      v7 = sub_230311048();
      goto LABEL_32;
    }
  }

  if (v4 != v5)
  {
    goto LABEL_31;
  }

  v7 = 1;
LABEL_32:

  return v7 & 1;
}

uint64_t sub_2302AD34C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD00000000000002CLL;
  v3 = "d.dueDateDeltaAlarm";
  v4 = a1;
  if (a1 <= 4u)
  {
    v10 = 0xD00000000000002FLL;
    v11 = "d.reminderAlarm.debugDismiss";
    v12 = 0xD00000000000002FLL;
    v13 = "d.reminderAlarm.markAsCompleted";
    if (a1 == 3)
    {
      v14 = 0xD00000000000002DLL;
    }

    else
    {
      v14 = 0xD00000000000002CLL;
    }

    if (a1 != 3)
    {
      v13 = "d.reminderAlarm.snoozeOneHour";
    }

    if (a1 != 2)
    {
      v12 = v14;
      v11 = v13;
    }

    v15 = "ficationDismissActionIdentifier";
    if (a1)
    {
      v10 = 0xD00000000000002CLL;
    }

    else
    {
      v15 = "d.dueDateDeltaAlarm";
    }

    if (a1 <= 1u)
    {
      v16 = v10;
    }

    else
    {
      v16 = v12;
    }

    if (v4 <= 1)
    {
      v17 = v15;
    }

    else
    {
      v17 = v11;
    }
  }

  else
  {
    if (a1 > 7u)
    {
      v5 = "s.addToReminders";
      v6 = 0xD00000000000003DLL;
      v7 = "fication.viewAssignmentInList";
      v8 = 0xD00000000000003ALL;
      if (a1 != 9)
      {
        v8 = 0xD000000000000042;
        v7 = "fication.declineAssignment";
      }

      v9 = a1 == 8;
    }

    else
    {
      v5 = "d.reminderAlarm.snoozeOneDay";
      v6 = 0xD000000000000032;
      v7 = "snoozeToNextThirds";
      v8 = 0xD000000000000033;
      if (a1 != 6)
      {
        v8 = 0xD000000000000030;
        v7 = "snoozeToNextWeekend";
      }

      v9 = a1 == 5;
    }

    if (v9)
    {
      v16 = v6;
    }

    else
    {
      v16 = v8;
    }

    if (v9)
    {
      v17 = v5;
    }

    else
    {
      v17 = v7;
    }
  }

  if (a2 <= 4u)
  {
    if (a2 <= 1u)
    {
      if (a2)
      {
        v3 = "ficationDismissActionIdentifier";
      }

      else
      {
        v2 = 0xD00000000000002FLL;
      }
    }

    else if (a2 == 2)
    {
      v3 = "d.reminderAlarm.debugDismiss";
      v2 = 0xD00000000000002FLL;
    }

    else if (a2 == 3)
    {
      v3 = "d.reminderAlarm.markAsCompleted";
      v2 = 0xD00000000000002DLL;
    }

    else
    {
      v3 = "d.reminderAlarm.snoozeOneHour";
    }
  }

  else if (a2 > 7u)
  {
    if (a2 == 8)
    {
      v3 = "s.addToReminders";
      v2 = 0xD00000000000003DLL;
    }

    else if (a2 == 9)
    {
      v3 = "fication.viewAssignmentInList";
      v2 = 0xD00000000000003ALL;
    }

    else
    {
      v3 = "fication.declineAssignment";
      v2 = 0xD000000000000042;
    }
  }

  else if (a2 == 5)
  {
    v3 = "d.reminderAlarm.snoozeOneDay";
    v2 = 0xD000000000000032;
  }

  else if (a2 == 6)
  {
    v3 = "snoozeToNextThirds";
    v2 = 0xD000000000000033;
  }

  else
  {
    v3 = "snoozeToNextWeekend";
    v2 = 0xD000000000000030;
  }

  if (v16 == v2 && (v17 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v18 = 1;
  }

  else
  {
    v18 = sub_230311048();
  }

  return v18 & 1;
}