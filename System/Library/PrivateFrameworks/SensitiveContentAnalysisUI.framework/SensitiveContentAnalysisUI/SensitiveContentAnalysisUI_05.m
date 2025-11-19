uint64_t sub_1BC6BC6BC(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_1BC6BC45C(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1BC6BC83C();
      goto LABEL_16;
    }

    sub_1BC6BC998(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_1BC75C700();
  sub_1BC75BBE0();
  result = sub_1BC75C720();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_1BC75C5E0();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_1BC75C630();
  __break(1u);
  return result;
}

void *sub_1BC6BC83C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC518, &qword_1BC766450);
  v2 = *v0;
  v3 = sub_1BC75C230();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
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

uint64_t sub_1BC6BC998(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC518, &qword_1BC766450);
  result = sub_1BC75C240();
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
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_1BC75C700();

      sub_1BC75BBE0();
      result = sub_1BC75C720();
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
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
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

uint64_t sub_1BC6BCBD0(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1BC75C3F0();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1BC75C3F0();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1BC633C54(&qword_1EBCDD1E0, &qword_1EBCDD1D8, &unk_1BC766490);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD1D8, &unk_1BC766490);
            v9 = sub_1BC6BCD84(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1BC65F664(0, &qword_1EBCDCE30, off_1E7FF1298);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void (*sub_1BC6BCD84(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1BFB26EB0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1BC6BCE04;
  }

  __break(1u);
  return result;
}

void *sub_1BC6BCE0C(void *result, void *a2, uint64_t a3, uint64_t a4)
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

__n128 sub_1BC6BCF78@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 address];
  if (v4)
  {
    v5 = v4;
    v6 = sub_1BC75BB60();
    v31 = v7;
    v32 = v6;
  }

  else
  {
    v31 = 0;
    v32 = 0;
  }

  v8 = [a1 city];
  if (v8)
  {
    v9 = v8;
    v29 = sub_1BC75BB60();
    v11 = v10;
  }

  else
  {
    v29 = 0;
    v11 = 0;
  }

  v12 = [a1 state];
  if (v12)
  {
    v13 = v12;
    v14 = sub_1BC75BB60();
    v16 = v15;
  }

  else
  {
    v14 = 0;
    v16 = 0;
  }

  v17 = [a1 country];
  if (v17)
  {
    v18 = v17;
    v19 = sub_1BC75BB60();
    v21 = v20;
  }

  else
  {
    v19 = 0;
    v21 = 0;
  }

  v22 = [a1 postCode];
  if (v22)
  {
    v23 = v22;
    v24 = sub_1BC75BB60();
    v26 = v25;
  }

  else
  {

    v24 = 0;
    v26 = 0;
  }

  *&v34 = v32;
  *(&v34 + 1) = v31;
  v35.n128_u64[0] = v30;
  v35.n128_u64[1] = v11;
  *&v36 = v14;
  *(&v36 + 1) = v16;
  *&v37 = v19;
  *(&v37 + 1) = v21;
  *&v38 = v24;
  *(&v38 + 1) = v26;
  v39[0] = v32;
  v39[1] = v31;
  v39[2] = v30;
  v39[3] = v11;
  v39[4] = v14;
  v39[5] = v16;
  v39[6] = v19;
  v39[7] = v21;
  v39[8] = v24;
  v39[9] = v26;
  sub_1BC6BFC40(&v34, v33);
  sub_1BC6BFDC8(v39);
  v27 = v37;
  *(a2 + 32) = v36;
  *(a2 + 48) = v27;
  *(a2 + 64) = v38;
  result = v35;
  *a2 = v34;
  *(a2 + 16) = result;
  return result;
}

__n128 sub_1BC6BD150@<Q0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v103 = a2;
  v111 = sub_1BC759940();
  v135 = *(v111 - 8);
  v3 = *(v135 + 64);
  MEMORY[0x1EEE9AC00](v111);
  v110 = &v92 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCFE8, &qword_1BC764A58);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v137 = &v92 - v7;
  v8 = sub_1BC759B50();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v109 = &v92 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCFE0, &unk_1BC76D070);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v136 = &v92 - v14;
  v113 = sub_1BC759800();
  v15 = *(v113 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v113);
  v18 = &v92 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD1E8, &unk_1BC76D820);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v130 = &v92 - v21;
  v129 = type metadata accessor for Report.Media(0);
  v112 = *(v129 - 8);
  v22 = *(v112 + 64);
  v23 = MEMORY[0x1EEE9AC00](v129);
  v128 = &v92 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v127 = &v92 - v25;
  v26 = [a1 displayName];
  v27 = sub_1BC75BB60();
  v100 = v28;
  v101 = v27;

  v29 = [a1 accountID];
  v30 = sub_1BC75BB60();
  v98 = v31;
  v99 = v30;

  v32 = [a1 fullName];
  if (v32)
  {
    v33 = v32;
    v34 = sub_1BC75BB60();
    v96 = v35;
    v97 = v34;
  }

  else
  {
    v96 = 0;
    v97 = 0;
  }

  v36 = [a1 emailAddress];
  if (v36)
  {
    v37 = v36;
    v38 = sub_1BC75BB60();
    v94 = v39;
    v95 = v38;
  }

  else
  {
    v94 = 0;
    v95 = 0;
  }

  v40 = [a1 phoneNumber];
  if (v40)
  {
    v41 = v40;
    v42 = sub_1BC75BB60();
    v92 = v43;
    v93 = v42;
  }

  else
  {
    v92 = 0;
    v93 = 0;
  }

  v44 = [a1 sensitiveMediaFiles];
  sub_1BC65F664(0, &qword_1EBCDCE30, off_1E7FF1298);
  v45 = sub_1BC75BD00();

  if (v45 >> 62)
  {
    goto LABEL_37;
  }

  for (i = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1BC75C3F0())
  {
    v47 = v113;
    v102 = a1;
    if (!i)
    {
      break;
    }

    v124 = v8;
    v8 = 0;
    v125 = v45 & 0xFFFFFFFFFFFFFF8;
    v126 = v45 & 0xC000000000000001;
    v120 = (v9 + 48);
    v121 = (v15 + 56);
    v107 = (v15 + 16);
    v108 = (v9 + 32);
    v105 = (v135 + 8);
    v106 = (v9 + 16);
    v104 = (v9 + 8);
    v118 = (v112 + 56);
    v119 = (v15 + 8);
    v117 = (v112 + 48);
    v133 = MEMORY[0x1E69E7CC0];
    v116 = xmmword_1BC7649C0;
    v122 = i;
    v123 = v45;
    v132 = v18;
    while (1)
    {
      if (v126)
      {
        v48 = MEMORY[0x1BFB26EB0](v8, v45);
      }

      else
      {
        if (v8 >= *(v125 + 16))
        {
          goto LABEL_36;
        }

        v48 = *(v45 + 8 * v8 + 32);
      }

      a1 = v48;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v134 = v8 + 1;
      v135 = v8;
      v49 = [v48 url];
      sub_1BC7597C0();

      v50 = [a1 UTIType];
      sub_1BC75BB60();
      v51 = v137;
      v9 = v52;

      sub_1BC72E2A0(v136);
      v131 = [a1 wasImpetusOfReport];
      v53 = v128;
      v54 = v129;
      v55 = &v128[*(v129 + 36)];
      *v55 = v116;
      v56 = (v53 + v54[10]);
      *v56 = 0;
      v56[1] = 0;
      v57 = v54[11];
      (*v121)(v53 + v57, 1, 1, v47);
      sub_1BC759B60();
      v58 = v47;
      v59 = v124;
      if ((*v120)(v51, 1, v124) == 1)
      {

        sub_1BC66008C(v136, &qword_1EBCDCFE0, &unk_1BC76D070);
        a1 = v132;
        (*v119)(v132, v58);
        sub_1BC66008C(v137, &qword_1EBCDCFE8, &qword_1BC764A58);
        sub_1BC6AE12C(*v55, *(v55 + 1));
        sub_1BC66008C(v53 + v57, &qword_1EBCDC6D0, &qword_1BC761EF0);
        v15 = v130;
        (*v118)(v130, 1, 1, v54);
        v47 = v58;
        v18 = a1;
      }

      else
      {
        v115 = (v53 + v54[12]);
        v60 = v109;
        v9 = v136;
        (*v108)(v109, v137, v59);
        (*v107)(v53, v132, v58);
        (*v106)(v53 + v54[5], v60, v59);
        sub_1BC660024(v9, v53 + v54[6], &qword_1EBCDCFE0, &unk_1BC76D070);
        v61 = v110;
        sub_1BC759930();
        v62 = sub_1BC759920();
        v114 = v63;

        (*v105)(v61, v111);
        (*v104)(v60, v59);
        sub_1BC66008C(v9, &qword_1EBCDCFE0, &unk_1BC76D070);
        v18 = v132;
        (*v119)(v132, v58);
        v64 = (v53 + v54[8]);
        v65 = v114;
        *v64 = v62;
        v64[1] = v65;
        v66 = v115;
        *v115 = 0;
        *(v66 + 8) = 0;
        *(v53 + v54[7]) = v131;
        v15 = v130;
        sub_1BC6BDCF4(v53, v130, type metadata accessor for Report.Media);
        (*v118)(v15, 0, 1, v54);
        sub_1BC6BF988(v53, type metadata accessor for Report.Media);
        v47 = v58;
      }

      v67 = (*v117)(v15, 1, v54);
      v68 = v122;
      v45 = v123;
      v69 = v135;
      if (v67 == 1)
      {
        sub_1BC66008C(v15, &qword_1EBCDD1E8, &unk_1BC76D820);
      }

      else
      {
        sub_1BC6C1B80(v15, v127, type metadata accessor for Report.Media);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v133 = sub_1BC6BAE4C(0, v133[2] + 1, 1, v133);
        }

        v71 = v133[2];
        v70 = v133[3];
        v15 = v71 + 1;
        if (v71 >= v70 >> 1)
        {
          v133 = sub_1BC6BAE4C(v70 > 1, v71 + 1, 1, v133);
        }

        v72 = v133;
        v133[2] = v15;
        sub_1BC6C1B80(v127, v72 + ((*(v112 + 80) + 32) & ~*(v112 + 80)) + *(v112 + 72) * v71, type metadata accessor for Report.Media);
        v47 = v113;
      }

      v8 = v69 + 1;
      if (v134 == v68)
      {
        goto LABEL_31;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    ;
  }

  v133 = MEMORY[0x1E69E7CC0];
LABEL_31:

  v73 = v102;
  v74 = [v102 address];
  if (v74)
  {
    v75 = v74;
    sub_1BC6BCF78(v75, v151);

    v76 = v151[8];
    v77 = v151[9];
    v78 = v151[6];
    v79 = v151[7];
    v80 = v151[4];
    v81 = v151[5];
    v82 = v151[2];
    v83 = v151[3];
    v84 = v151[0];
    v85 = v151[1];
  }

  else
  {

    v84 = 0;
    v85 = 0;
    v82 = 0;
    v83 = 0;
    v80 = 0;
    v81 = 0;
    v78 = 0;
    v79 = 0;
    v76 = 0;
    v77 = 0;
  }

  v86 = v103;
  *&v139 = v101;
  *(&v139 + 1) = v100;
  *&v140 = v99;
  *(&v140 + 1) = v98;
  *&v141 = v97;
  *(&v141 + 1) = v96;
  v142.n128_u64[0] = v95;
  v142.n128_u64[1] = v94;
  *&v143 = v93;
  *(&v143 + 1) = v92;
  *&v144 = v84;
  *(&v144 + 1) = v85;
  *&v145 = v82;
  *(&v145 + 1) = v83;
  *&v146 = v80;
  *(&v146 + 1) = v81;
  *&v147 = v78;
  *(&v147 + 1) = v79;
  *&v148 = v76;
  *(&v148 + 1) = v77;
  v149 = v133;
  v150[0] = v101;
  v150[1] = v100;
  v150[2] = v99;
  v150[3] = v98;
  v150[4] = v97;
  v150[5] = v96;
  v150[6] = v95;
  v150[7] = v94;
  v150[8] = v93;
  v150[9] = v92;
  v150[10] = v84;
  v150[11] = v85;
  v150[12] = v82;
  v150[13] = v83;
  v150[14] = v80;
  v150[15] = v81;
  v150[16] = v78;
  v150[17] = v79;
  v150[18] = v76;
  v150[19] = v77;
  v150[20] = v133;
  sub_1BC6C3F8C(&v139, &v138);
  sub_1BC6C3FC4(v150);
  v87 = v148;
  *(v86 + 128) = v147;
  *(v86 + 144) = v87;
  *(v86 + 160) = v149;
  v88 = v144;
  *(v86 + 64) = v143;
  *(v86 + 80) = v88;
  v89 = v146;
  *(v86 + 96) = v145;
  *(v86 + 112) = v89;
  v90 = v140;
  *v86 = v139;
  *(v86 + 16) = v90;
  result = v142;
  *(v86 + 32) = v141;
  *(v86 + 48) = result;
  return result;
}

uint64_t sub_1BC6BDCF4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1BC6BDD5C()
{
  result = qword_1EBCE6970;
  if (!qword_1EBCE6970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCE6970);
  }

  return result;
}

unint64_t sub_1BC6BDDB0()
{
  result = qword_1EBCDCE58;
  if (!qword_1EBCDCE58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDCE20, &qword_1BC7649D0);
    sub_1BC6BDE8C(&qword_1EBCDCE60, MEMORY[0x1E6969530]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDCE58);
  }

  return result;
}

uint64_t sub_1BC6BDE8C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1BC6BDED4()
{
  result = qword_1EBCE6978;
  if (!qword_1EBCE6978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCE6978);
  }

  return result;
}

unint64_t sub_1BC6BDF28()
{
  result = qword_1EBCE6980;
  if (!qword_1EBCE6980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCE6980);
  }

  return result;
}

unint64_t sub_1BC6BDF7C()
{
  result = qword_1EBCDCE90;
  if (!qword_1EBCDCE90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDCE88, &qword_1BC7649F8);
    sub_1BC6BE000();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDCE90);
  }

  return result;
}

unint64_t sub_1BC6BE000()
{
  result = qword_1EBCDCE98;
  if (!qword_1EBCDCE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDCE98);
  }

  return result;
}

unint64_t sub_1BC6BE054()
{
  result = qword_1EBCDCEA8;
  if (!qword_1EBCDCEA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDCEA0, &qword_1BC764A00);
    sub_1BC6BDE8C(&qword_1EBCDCEB0, type metadata accessor for Report.Message);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDCEA8);
  }

  return result;
}

unint64_t sub_1BC6BE108()
{
  result = qword_1EBCE6988;
  if (!qword_1EBCE6988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCE6988);
  }

  return result;
}

unint64_t sub_1BC6BE15C()
{
  result = qword_1EBCDCEC0;
  if (!qword_1EBCDCEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDCEC0);
  }

  return result;
}

uint64_t sub_1BC6BE1B0(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDCED0, &qword_1BC764A10);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BC6BE228()
{
  result = qword_1EBCDCEE0;
  if (!qword_1EBCDCEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDCEE0);
  }

  return result;
}

unint64_t sub_1BC6BE27C()
{
  result = qword_1EBCDCEF0;
  if (!qword_1EBCDCEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDCEF0);
  }

  return result;
}

unint64_t sub_1BC6BE2D0()
{
  result = qword_1EBCDCEF8;
  if (!qword_1EBCDCEF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDCEA0, &qword_1BC764A00);
    sub_1BC6BDE8C(&qword_1EBCDCF00, type metadata accessor for Report.Message);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDCEF8);
  }

  return result;
}

uint64_t sub_1BC6BE3AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_1BC759620();
  v11 = result;
  if (result)
  {
    result = sub_1BC759640();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_1BC759630();
  sub_1BC6BA8FC(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t sub_1BC6BE464(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_1BC6AE090(a3, a4);
          return sub_1BC6BAB2C(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1BC6BE5CC(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if (v2)
  {
    if (!v3)
    {
      return 0;
    }

    if (*a1 != *a2 || v2 != v3)
    {
      v5 = a1;
      v6 = *a1;
      v7 = a2;
      v8 = sub_1BC75C5E0();
      a2 = v7;
      v9 = v8;
      a1 = v5;
      if ((v9 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v3)
  {
    return 0;
  }

  v10 = a1[3];
  v11 = a2[3];
  if (v10)
  {
    if (!v11)
    {
      return 0;
    }

    if (a1[2] != a2[2] || v10 != v11)
    {
      v12 = a1;
      v13 = a1[2];
      v14 = a2;
      v15 = sub_1BC75C5E0();
      a2 = v14;
      v16 = v15;
      a1 = v12;
      if ((v16 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v11)
  {
    return 0;
  }

  v17 = a1[5];
  v18 = a2[5];
  if (v17)
  {
    if (!v18)
    {
      return 0;
    }

    if (a1[4] != a2[4] || v17 != v18)
    {
      v19 = a1;
      v20 = a1[4];
      v21 = a2;
      v22 = sub_1BC75C5E0();
      a2 = v21;
      v23 = v22;
      a1 = v19;
      if ((v23 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v18)
  {
    return 0;
  }

  v24 = a1[7];
  v25 = a2[7];
  if (v24)
  {
    if (!v25)
    {
      return 0;
    }

    if (a1[6] != a2[6] || v24 != v25)
    {
      v26 = a1;
      v27 = a1[6];
      v28 = a2;
      v29 = sub_1BC75C5E0();
      a2 = v28;
      v30 = v29;
      a1 = v26;
      if ((v30 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v25)
  {
    return 0;
  }

  v31 = a1[9];
  v32 = a2[9];
  if (v31)
  {
    if (v32 && (a1[8] == a2[8] && v31 == v32 || (sub_1BC75C5E0() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v32)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_1BC6BE78C(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  v5 = *(a2 + 8);
  if (v4)
  {
    if (!v5)
    {
      return 0;
    }

    v6 = *a1;
    v7 = *a1 == *a2 && v4 == v5;
    if (!v7 && (sub_1BC75C5E0() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v8 = a1[2] == *(a2 + 16) && a1[3] == *(a2 + 24);
  if (!v8 && (sub_1BC75C5E0() & 1) == 0)
  {
    return 0;
  }

  v9 = a1[5];
  v10 = *(a2 + 40);
  if (v9)
  {
    if (!v10 || (a1[4] != *(a2 + 32) || v9 != v10) && (sub_1BC75C5E0() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v10)
  {
    return 0;
  }

  v11 = a1[7];
  v12 = *(a2 + 56);
  if (v11)
  {
    if (!v12 || (a1[6] != *(a2 + 48) || v11 != v12) && (sub_1BC75C5E0() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v12)
  {
    return 0;
  }

  v13 = a1[9];
  v14 = *(a2 + 72);
  if (v13)
  {
    if (!v14 || (a1[8] != *(a2 + 64) || v13 != v14) && (sub_1BC75C5E0() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v14)
  {
    return 0;
  }

  v15 = a1[11];
  v16 = a1[12];
  v17 = a1[13];
  v18 = *(a2 + 88);
  v19 = *(a2 + 96);
  v20 = *(a2 + 104);
  if (v15)
  {
    if (!v18 || (a1[10] != *(a2 + 80) || v15 != v18) && (sub_1BC75C5E0() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v18)
  {
    return 0;
  }

  if (!v17)
  {
    if (!v20)
    {
      goto LABEL_50;
    }

    return 0;
  }

  if (!v20 || (v16 != v19 || v17 != v20) && (sub_1BC75C5E0() & 1) == 0)
  {
    return 0;
  }

LABEL_50:
  v21 = *(a1 + 10);
  v28[2] = *(a1 + 9);
  v28[3] = v21;
  v22 = *(a1 + 11);
  v23 = *(a1 + 8);
  v28[0] = *(a1 + 7);
  v28[1] = v23;
  v24 = *(a2 + 160);
  v29[2] = *(a2 + 144);
  v29[3] = v24;
  v29[4] = *(a2 + 176);
  v25 = *(a2 + 112);
  v29[1] = *(a2 + 128);
  v28[4] = v22;
  v29[0] = v25;
  if ((sub_1BC6BE5CC(v28, v29) & 1) == 0)
  {
    return 0;
  }

  v26 = *(_s6VictimVMa(0) + 44);

  return sub_1BC7598E0();
}

BOOL sub_1BC6BE9D4(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (sub_1BC75C5E0() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
  if (!v5 && (sub_1BC75C5E0() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a1 + 40);
  v7 = *(a2 + 40);
  if (v6)
  {
    if (!v7 || (*(a1 + 32) != *(a2 + 32) || v6 != v7) && (sub_1BC75C5E0() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  v8 = *(a1 + 56);
  v9 = *(a2 + 56);
  if (v8)
  {
    if (!v9 || (*(a1 + 48) != *(a2 + 48) || v8 != v9) && (sub_1BC75C5E0() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  v10 = *(a1 + 72);
  v11 = *(a2 + 72);
  if (!v10)
  {
    if (!v11)
    {
      goto LABEL_32;
    }

    return 0;
  }

  if (!v11 || (*(a1 + 64) != *(a2 + 64) || v10 != v11) && (sub_1BC75C5E0() & 1) == 0)
  {
    return 0;
  }

LABEL_32:
  v12 = *(a1 + 128);
  v20[2] = *(a1 + 112);
  v20[3] = v12;
  v20[4] = *(a1 + 144);
  v13 = *(a1 + 96);
  v20[0] = *(a1 + 80);
  v20[1] = v13;
  v14 = *(a2 + 128);
  v19[2] = *(a2 + 112);
  v19[3] = v14;
  v19[4] = *(a2 + 144);
  v15 = *(a2 + 96);
  v19[0] = *(a2 + 80);
  v19[1] = v15;
  if ((sub_1BC6BE5CC(v20, v19) & 1) == 0)
  {
    return 0;
  }

  v16 = *(a1 + 160);
  v17 = *(a2 + 160);

  return sub_1BC6B0604(v16, v17);
}

BOOL _s26SensitiveContentAnalysisUI6ReportC5MediaV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BC759800();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v80 = &v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC6D0, &qword_1BC761EF0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v81 = &v74 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD198, &qword_1BC766478);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v82 = &v74 - v13;
  v14 = sub_1BC75A050();
  v83 = *(v14 - 8);
  v15 = *(v83 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCFE0, &unk_1BC76D070);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v74 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCFF0, &qword_1BC764A60);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v74 - v24;
  if ((sub_1BC7597B0() & 1) == 0)
  {
    return 0;
  }

  v78 = v11;
  v26 = a1;
  v27 = type metadata accessor for Report.Media(0);
  v28 = *(v27 + 20);
  if ((sub_1BC759B10() & 1) == 0)
  {
    return 0;
  }

  v75 = v5;
  v76 = v4;
  v79 = a2;
  v77 = v27;
  v29 = *(v27 + 24);
  v30 = *(v22 + 48);
  sub_1BC660024(v26 + v29, v25, &qword_1EBCDCFE0, &unk_1BC76D070);
  v31 = v79 + v29;
  v32 = v79;
  sub_1BC660024(v31, &v25[v30], &qword_1EBCDCFE0, &unk_1BC76D070);
  v33 = *(v83 + 48);
  if (v33(v25, 1, v14) == 1)
  {
    if (v33(&v25[v30], 1, v14) == 1)
    {
      sub_1BC66008C(v25, &qword_1EBCDCFE0, &unk_1BC76D070);
      goto LABEL_11;
    }

LABEL_8:
    v34 = &qword_1EBCDCFF0;
    v35 = &qword_1BC764A60;
LABEL_9:
    sub_1BC66008C(v25, v34, v35);
    return 0;
  }

  sub_1BC660024(v25, v21, &qword_1EBCDCFE0, &unk_1BC76D070);
  if (v33(&v25[v30], 1, v14) == 1)
  {
    (*(v83 + 8))(v21, v14);
    goto LABEL_8;
  }

  v36 = v83;
  (*(v83 + 32))(v17, &v25[v30], v14);
  sub_1BC6BDE8C(&qword_1EBCDD030, MEMORY[0x1E697B600]);
  v37 = sub_1BC75BAB0();
  v38 = *(v36 + 8);
  v38(v17, v14);
  v38(v21, v14);
  v32 = v79;
  sub_1BC66008C(v25, &qword_1EBCDCFE0, &unk_1BC76D070);
  if ((v37 & 1) == 0)
  {
    return 0;
  }

LABEL_11:
  v39 = v77;
  if (*(v26 + v77[7]) != *(v32 + v77[7]))
  {
    return 0;
  }

  v40 = v77[8];
  v41 = v26;
  v42 = *(v26 + v40);
  v43 = *(v26 + v40 + 8);
  v44 = (v32 + v40);
  if ((v42 != *v44 || v43 != v44[1]) && (sub_1BC75C5E0() & 1) == 0)
  {
    return 0;
  }

  v45 = v39[9];
  v47 = *(v26 + v45);
  v46 = *(v26 + v45 + 8);
  v48 = (v32 + v45);
  v50 = *v48;
  v49 = v48[1];
  if (v46 >> 60 == 15)
  {
    v52 = v75;
    v51 = v76;
    if (v49 >> 60 == 15)
    {
      sub_1BC6AE07C(v47, v46);
      sub_1BC6AE07C(v50, v49);
      sub_1BC6AE12C(v47, v46);
      goto LABEL_22;
    }

LABEL_19:
    sub_1BC6AE07C(v47, v46);
    sub_1BC6AE07C(v50, v49);
    sub_1BC6AE12C(v47, v46);
    sub_1BC6AE12C(v50, v49);
    return 0;
  }

  v52 = v75;
  v51 = v76;
  if (v49 >> 60 == 15)
  {
    goto LABEL_19;
  }

  sub_1BC6AE07C(v47, v46);
  sub_1BC6AE07C(v50, v49);
  v54 = sub_1BC6BE464(v47, v46, v50, v49);
  sub_1BC6AE12C(v50, v49);
  sub_1BC6AE12C(v47, v46);
  if ((v54 & 1) == 0)
  {
    return 0;
  }

LABEL_22:
  v55 = v39[10];
  v56 = (v41 + v55);
  v57 = *(v41 + v55 + 8);
  v58 = (v32 + v55);
  v59 = v58[1];
  if (v57)
  {
    v25 = v82;
    if (!v59 || (*v56 != *v58 || v57 != v59) && (sub_1BC75C5E0() & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v25 = v82;
    if (v59)
    {
      return 0;
    }
  }

  v60 = v39[11];
  v61 = *(v78 + 48);
  sub_1BC660024(v41 + v60, v25, &qword_1EBCDC6D0, &qword_1BC761EF0);
  v62 = v79 + v60;
  v63 = v79;
  sub_1BC660024(v62, &v25[v61], &qword_1EBCDC6D0, &qword_1BC761EF0);
  v64 = *(v52 + 48);
  if (v64(v25, 1, v51) == 1)
  {
    if (v64(&v25[v61], 1, v51) == 1)
    {
      sub_1BC66008C(v25, &qword_1EBCDC6D0, &qword_1BC761EF0);
      goto LABEL_36;
    }

    goto LABEL_34;
  }

  v65 = v81;
  sub_1BC660024(v25, v81, &qword_1EBCDC6D0, &qword_1BC761EF0);
  if (v64(&v25[v61], 1, v51) == 1)
  {
    (*(v52 + 8))(v65, v51);
LABEL_34:
    v34 = &qword_1EBCDD198;
    v35 = &qword_1BC766478;
    goto LABEL_9;
  }

  v66 = v80;
  (*(v52 + 32))(v80, &v25[v61], v51);
  sub_1BC6BDE8C(&qword_1EBCDD1A0, MEMORY[0x1E6968FB0]);
  v67 = sub_1BC75BAB0();
  v68 = *(v52 + 8);
  v68(v66, v51);
  v68(v65, v51);
  v63 = v79;
  sub_1BC66008C(v25, &qword_1EBCDC6D0, &qword_1BC761EF0);
  if ((v67 & 1) == 0)
  {
    return 0;
  }

LABEL_36:
  v69 = v39[12];
  v70 = (v41 + v69);
  v71 = *(v41 + v69 + 8);
  v72 = (v63 + v69);
  v73 = *(v63 + v69 + 8);
  if ((v71 & 1) == 0)
  {
    if (*v70 != *v72)
    {
      v73 = 1;
    }

    return (v73 & 1) == 0;
  }

  return (v73 & 1) != 0;
}

BOOL _s26SensitiveContentAnalysisUI6ReportC8EvidenceV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BC759910();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v52[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCE20, &qword_1BC7649D0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v52[-v11];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD1C0, &qword_1BC766488);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v17 = &v52[-v16];
  v18 = *(v15 + 56);
  sub_1BC660024(a1, &v52[-v16], &qword_1EBCDCE20, &qword_1BC7649D0);
  sub_1BC660024(a2, &v17[v18], &qword_1EBCDCE20, &qword_1BC7649D0);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) == 1)
  {
    if (v19(&v17[v18], 1, v4) == 1)
    {
      sub_1BC66008C(v17, &qword_1EBCDCE20, &qword_1BC7649D0);
      goto LABEL_8;
    }

LABEL_6:
    sub_1BC66008C(v17, &qword_1EBCDD1C0, &qword_1BC766488);
    return 0;
  }

  sub_1BC660024(v17, v12, &qword_1EBCDCE20, &qword_1BC7649D0);
  if (v19(&v17[v18], 1, v4) == 1)
  {
    (*(v5 + 8))(v12, v4);
    goto LABEL_6;
  }

  (*(v5 + 32))(v8, &v17[v18], v4);
  sub_1BC6BDE8C(&qword_1EBCDD1C8, MEMORY[0x1E6969530]);
  v20 = sub_1BC75BAB0();
  v21 = *(v5 + 8);
  v21(v8, v4);
  v21(v12, v4);
  sub_1BC66008C(v17, &qword_1EBCDCE20, &qword_1BC7649D0);
  if ((v20 & 1) == 0)
  {
    return 0;
  }

LABEL_8:
  v22 = type metadata accessor for Report.Evidence(0);
  if ((sub_1BC6BE78C((a1 + v22[6]), a2 + v22[6]) & 1) == 0 || (sub_1BC6AFE0C(*(a1 + v22[7]), *(a2 + v22[7])) & 1) == 0 || *(a1 + v22[8]) != *(a2 + v22[8]))
  {
    return 0;
  }

  v23 = v22[9];
  v24 = (a1 + v23);
  v25 = *(a1 + v23 + 8);
  v26 = (a2 + v23);
  v27 = v26[1];
  if (!v25)
  {
    if (!v27)
    {
      goto LABEL_18;
    }

    return 0;
  }

  if (!v27 || (*v24 != *v26 || v25 != v27) && (sub_1BC75C5E0() & 1) == 0)
  {
    return 0;
  }

LABEL_18:
  if (*(a1 + v22[10]) != *(a2 + v22[10]))
  {
    return 0;
  }

  v29 = v22[11];
  v30 = *(a1 + v29);
  v31 = *(a2 + v29);
  if (v30 == 8)
  {
    if (v31 != 8)
    {
      return 0;
    }
  }

  else
  {
    v52[15] = v30;
    if (v31 == 8)
    {
      return 0;
    }

    v52[14] = v31;
    sub_1BC686258();
    if ((sub_1BC75BAB0() & 1) == 0)
    {
      return 0;
    }
  }

  if ((sub_1BC6B03FC(*(a1 + v22[12]), *(a2 + v22[12])) & 1) == 0)
  {
    return 0;
  }

  v32 = v22[13];
  v34 = *(a1 + v32);
  v33 = *(a1 + v32 + 8);
  v35 = (a2 + v32);
  v37 = *v35;
  v36 = v35[1];
  if (v33 >> 60 == 15)
  {
    if (v36 >> 60 == 15)
    {
      sub_1BC6AE07C(v34, v33);
      sub_1BC6AE07C(v37, v36);
      sub_1BC6AE12C(v34, v33);
      goto LABEL_32;
    }

LABEL_30:
    sub_1BC6AE07C(v34, v33);
    sub_1BC6AE07C(v37, v36);
    sub_1BC6AE12C(v34, v33);
    sub_1BC6AE12C(v37, v36);
    return 0;
  }

  if (v36 >> 60 == 15)
  {
    goto LABEL_30;
  }

  sub_1BC6AE07C(v34, v33);
  sub_1BC6AE07C(v37, v36);
  v38 = sub_1BC6BE464(v34, v33, v37, v36);
  sub_1BC6AE12C(v37, v36);
  sub_1BC6AE12C(v34, v33);
  if ((v38 & 1) == 0)
  {
    return 0;
  }

LABEL_32:
  v39 = v22[14];
  v40 = (a1 + v39);
  v41 = *(a1 + v39 + 8);
  v42 = (a2 + v39);
  v43 = v42[1];
  if (v41)
  {
    if (!v43 || (*v40 != *v42 || v41 != v43) && (sub_1BC75C5E0() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v43)
  {
    return 0;
  }

  if (*(a1 + v22[15]) != *(a2 + v22[15]))
  {
    return 0;
  }

  v44 = v22[16];
  v45 = *(a1 + v44);
  v46 = *(a1 + v44 + 8);
  v47 = (a2 + v44);
  if ((v45 != *v47 || v46 != v47[1]) && (sub_1BC75C5E0() & 1) == 0)
  {
    return 0;
  }

  v48 = v22[17];
  v49 = *(a1 + v48);
  v50 = *(a1 + v48 + 8);
  v51 = (a2 + v48);
  if ((v49 != *v51 || v50 != v51[1]) && (sub_1BC75C5E0() & 1) == 0)
  {
    return 0;
  }

  return *(a1 + v22[18]) == *(a2 + v22[18]);
}

uint64_t sub_1BC6BF988(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1BC6BF9E8()
{
  result = qword_1EBCDCF20;
  if (!qword_1EBCDCF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDCF20);
  }

  return result;
}

unint64_t sub_1BC6BFA3C()
{
  result = qword_1EBCDCF38;
  if (!qword_1EBCDCF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDCF38);
  }

  return result;
}

unint64_t sub_1BC6BFA90()
{
  result = qword_1EBCDCF48;
  if (!qword_1EBCDCF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDCF48);
  }

  return result;
}

unint64_t sub_1BC6BFAE4()
{
  result = qword_1EBCDCF50;
  if (!qword_1EBCDCF50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDCEA0, &qword_1BC764A00);
    sub_1BC6BDE8C(&qword_1EBCDCF58, type metadata accessor for Report.Message);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDCF50);
  }

  return result;
}

unint64_t sub_1BC6BFB98()
{
  result = qword_1EBCDCF60;
  if (!qword_1EBCDCF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDCF60);
  }

  return result;
}

unint64_t sub_1BC6BFBEC()
{
  result = qword_1EBCE6990;
  if (!qword_1EBCE6990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCE6990);
  }

  return result;
}

unint64_t sub_1BC6BFC78()
{
  result = qword_1EBCE6998;
  if (!qword_1EBCE6998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCE6998);
  }

  return result;
}

unint64_t sub_1BC6BFCCC()
{
  result = qword_1EBCE69A0;
  if (!qword_1EBCE69A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCE69A0);
  }

  return result;
}

unint64_t sub_1BC6BFD20()
{
  result = qword_1EBCDCF98;
  if (!qword_1EBCDCF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDCF98);
  }

  return result;
}

unint64_t sub_1BC6BFD74()
{
  result = qword_1EBCDCFA0;
  if (!qword_1EBCDCFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDCFA0);
  }

  return result;
}

unint64_t sub_1BC6BFDF8()
{
  result = qword_1EBCDCFB0;
  if (!qword_1EBCDCFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDCFB0);
  }

  return result;
}

unint64_t sub_1BC6BFE4C()
{
  result = qword_1EBCDCFB8;
  if (!qword_1EBCDCFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDCFB8);
  }

  return result;
}

unint64_t sub_1BC6BFEA0()
{
  result = qword_1EBCE69A8;
  if (!qword_1EBCE69A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCE69A8);
  }

  return result;
}

unint64_t sub_1BC6BFEF4()
{
  result = qword_1EBCDCFD0;
  if (!qword_1EBCDCFD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDCFC8, &qword_1BC764A50);
    sub_1BC6BDE8C(&qword_1EBCDCFD8, type metadata accessor for Report.Media);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDCFD0);
  }

  return result;
}

uint64_t sub_1BC6BFFC8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E656469636E69 && a2 == 0xEC00000065746144;
  if (v4 || (sub_1BC75C5E0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E7265636E6F63 && a2 == 0xE700000000000000 || (sub_1BC75C5E0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D6974636976 && a2 == 0xE600000000000000 || (sub_1BC75C5E0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7374636570737573 && a2 == 0xE800000000000000 || (sub_1BC75C5E0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001BC770660 == a2 || (sub_1BC75C5E0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001BC772960 == a2 || (sub_1BC75C5E0() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001BC772CB0 == a2 || (sub_1BC75C5E0() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001BC772CD0 == a2 || (sub_1BC75C5E0() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6E61725474616863 && a2 == 0xEE00747069726373 || (sub_1BC75C5E0() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001BC772990 == a2 || (sub_1BC75C5E0() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x6D6F6F5274616863 && a2 == 0xEC000000656D614ELL || (sub_1BC75C5E0() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x746163696C707061 && a2 == 0xEB000000006E6F69 || (sub_1BC75C5E0() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x656D614E736FLL && a2 == 0xE600000000000000 || (sub_1BC75C5E0() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x6F6973726556736FLL && a2 == 0xE90000000000006ELL || (sub_1BC75C5E0() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x7367616C66 && a2 == 0xE500000000000000)
  {

    return 14;
  }

  else
  {
    v6 = sub_1BC75C5E0();

    if (v6)
    {
      return 14;
    }

    else
    {
      return 15;
    }
  }
}

uint64_t sub_1BC6C0484(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4E79616C70736964 && a2 == 0xEB00000000656D61;
  if (v4 || (sub_1BC75C5E0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x49746E756F636361 && a2 == 0xE900000000000044 || (sub_1BC75C5E0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656D614E6C6C7566 && a2 == 0xE800000000000000 || (sub_1BC75C5E0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6464416C69616D65 && a2 == 0xEC00000073736572 || (sub_1BC75C5E0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6D754E656E6F6870 && a2 == 0xEB00000000726562 || (sub_1BC75C5E0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6552656369766564 && a2 == 0xEC0000006E6F6967 || (sub_1BC75C5E0() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x73736572646461 && a2 == 0xE700000000000000 || (sub_1BC75C5E0() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6942664F65746164 && a2 == 0xEB00000000687472)
  {

    return 7;
  }

  else
  {
    v6 = sub_1BC75C5E0();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_1BC6C0734(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4E79616C70736964 && a2 == 0xEB00000000656D61;
  if (v4 || (sub_1BC75C5E0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x49746E756F636361 && a2 == 0xE900000000000044 || (sub_1BC75C5E0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656D614E6C6C7566 && a2 == 0xE800000000000000 || (sub_1BC75C5E0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6464416C69616D65 && a2 == 0xEC00000073736572 || (sub_1BC75C5E0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6D754E656E6F6870 && a2 == 0xEB00000000726562 || (sub_1BC75C5E0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x73736572646461 && a2 == 0xE700000000000000 || (sub_1BC75C5E0() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001BC772D10 == a2)
  {

    return 6;
  }

  else
  {
    v6 = sub_1BC75C5E0();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_1BC6C0998@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD1A8, &qword_1BC766480);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v34 - v8;
  v10 = a1[3];
  v11 = a1[4];
  v72 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_1BC6BFEA0();
  sub_1BC75C730();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(v72);
    return swift_bridgeObjectRelease_n();
  }

  else
  {
    v12 = v6;
    v40 = a2;
    LOBYTE(v52[0]) = 0;
    v13 = v5;
    v14 = sub_1BC75C4A0();
    v39 = v15;
    LOBYTE(v52[0]) = 1;
    v16 = sub_1BC75C4A0();
    *(&v38 + 1) = v17;
    LOBYTE(v52[0]) = 2;
    v18 = sub_1BC75C470();
    v20 = v19;
    LOBYTE(v52[0]) = 3;
    v36 = sub_1BC75C470();
    v37 = v18;
    *&v38 = v16;
    v22 = v21;
    LOBYTE(v52[0]) = 4;
    *&v35 = sub_1BC75C470();
    *(&v35 + 1) = v23;
    v61 = 5;
    sub_1BC6BFE4C();
    sub_1BC75C4C0();
    v69 = v64;
    v70 = v65;
    v71 = v66;
    v67 = v62;
    v68 = v63;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCFC8, &qword_1BC764A50);
    v59 = 6;
    sub_1BC6C3ED8();
    sub_1BC75C4C0();
    (*(v12 + 8))(v9, v13);
    v34 = v60;
    v24 = *(&v38 + 1);
    v25 = v39;
    *&v41 = v14;
    *(&v41 + 1) = v39;
    v42 = v38;
    *&v43 = v37;
    *(&v43 + 1) = v20;
    v26 = *(&v35 + 1);
    *&v44 = v36;
    *(&v44 + 1) = v22;
    v45 = v35;
    v48 = v69;
    v49 = v70;
    v50 = v71;
    v47 = v68;
    v46 = v67;
    v51 = v60;
    sub_1BC6C3F8C(&v41, v52);
    __swift_destroy_boxed_opaque_existential_1(v72);
    v52[0] = v14;
    v52[1] = v25;
    v52[2] = v38;
    v52[3] = v24;
    v52[4] = v37;
    v52[5] = v20;
    v52[6] = v36;
    v52[7] = v22;
    v52[8] = v35;
    v52[9] = v26;
    v55 = v69;
    v56 = v70;
    v57 = v71;
    v53 = v67;
    v54 = v68;
    v58 = v34;
    result = sub_1BC6C3FC4(v52);
    v28 = v50;
    v29 = v40;
    *(v40 + 128) = v49;
    *(v29 + 144) = v28;
    *(v29 + 160) = v51;
    v30 = v46;
    *(v29 + 64) = v45;
    *(v29 + 80) = v30;
    v31 = v48;
    *(v29 + 96) = v47;
    *(v29 + 112) = v31;
    v32 = v42;
    *v29 = v41;
    *(v29 + 16) = v32;
    v33 = v44;
    *(v29 + 32) = v43;
    *(v29 + 48) = v33;
  }

  return result;
}

uint64_t sub_1BC6C0EE4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC6D0, &qword_1BC761EF0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BC6C0F54()
{
  result = qword_1EBCE69B0;
  if (!qword_1EBCE69B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCE69B0);
  }

  return result;
}

uint64_t sub_1BC6C0FA8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BC6C1010()
{
  result = qword_1EBCE69B8;
  if (!qword_1EBCE69B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCE69B8);
  }

  return result;
}

unint64_t sub_1BC6C1064()
{
  result = qword_1EBCE69C0;
  if (!qword_1EBCE69C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCE69C0);
  }

  return result;
}

uint64_t sub_1BC6C10B8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7107189 && a2 == 0xE300000000000000;
  if (v3 || (sub_1BC75C5E0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65707954697475 && a2 == 0xE700000000000000 || (sub_1BC75C5E0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x76697469736E6573 && a2 == 0xEB00000000797469 || (sub_1BC75C5E0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001BC772D30 == a2 || (sub_1BC75C5E0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 25705 && a2 == 0xE200000000000000 || (sub_1BC75C5E0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x363532616873 && a2 == 0xE600000000000000 || (sub_1BC75C5E0() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x4955557465737361 && a2 == 0xE900000000000044 || (sub_1BC75C5E0() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001BC772D50 == a2 || (sub_1BC75C5E0() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x664F7265626D756ELL && a2 == 0xEE00736B6E756843)
  {

    return 8;
  }

  else
  {
    v6 = sub_1BC75C5E0();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t sub_1BC6C13B0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73736572646461 && a2 == 0xE700000000000000;
  if (v4 || (sub_1BC75C5E0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 2037672291 && a2 == 0xE400000000000000 || (sub_1BC75C5E0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6574617473 && a2 == 0xE500000000000000 || (sub_1BC75C5E0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7972746E756F63 && a2 == 0xE700000000000000 || (sub_1BC75C5E0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6F436C6174736F70 && a2 == 0xEA00000000006564)
  {

    return 4;
  }

  else
  {
    v6 = sub_1BC75C5E0();

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

uint64_t sub_1BC6C1564@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD190, &qword_1BC766470);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v30 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BC6C1064();
  sub_1BC75C730();
  if (v2)
  {
    v35 = v2;
    __swift_destroy_boxed_opaque_existential_1(a1);
    v41 = 0uLL;
    v42 = 0;
    v43 = 0;
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v47 = 0;
    v48 = 0;
    v49 = 0;
    return sub_1BC6BFDC8(&v41);
  }

  else
  {
    LOBYTE(v41) = 0;
    *&v34 = sub_1BC75C470();
    *(&v34 + 1) = v12;
    LOBYTE(v41) = 1;
    v33 = sub_1BC75C470();
    v32 = v13;
    v31 = a2;
    LOBYTE(v41) = 2;
    v14 = sub_1BC75C470();
    v16 = v15;
    LOBYTE(v41) = 3;
    v17 = sub_1BC75C470();
    v19 = v18;
    v50 = 4;
    v20 = sub_1BC75C470();
    v35 = 0;
    v21 = v20;
    v22 = v9;
    v24 = v23;
    (*(v6 + 8))(v22, v5);
    v25 = v34;
    v36 = v34;
    v26 = v32;
    *&v37 = v33;
    *(&v37 + 1) = v32;
    *&v38 = v14;
    *(&v38 + 1) = v16;
    *&v39 = v17;
    *(&v39 + 1) = v19;
    *&v40 = v21;
    *(&v40 + 1) = v24;
    sub_1BC6BFC40(&v36, &v41);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v41 = __PAIR128__(*(&v34 + 1), v25);
    v42 = v33;
    v43 = v26;
    v44 = v14;
    v45 = v16;
    v46 = v17;
    v47 = v19;
    v48 = v21;
    v49 = v24;
    result = sub_1BC6BFDC8(&v41);
    v27 = v39;
    v28 = v31;
    v31[2] = v38;
    v28[3] = v27;
    v28[4] = v40;
    v29 = v37;
    *v28 = v36;
    v28[1] = v29;
  }

  return result;
}

unint64_t sub_1BC6C1940()
{
  result = qword_1EBCE69C8[0];
  if (!qword_1EBCE69C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCE69C8);
  }

  return result;
}

uint64_t sub_1BC6C1994(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD188, &qword_1BC766468);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v10 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BC6C1940();
  sub_1BC75C730();
  if (!v1)
  {
    v12 = 0;
    v8 = sub_1BC75C470();
    v11 = 1;
    sub_1BC75C470();
    (*(v4 + 8))(v7, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v8;
}

uint64_t sub_1BC6C1B80(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1BC6C1BE8()
{
  result = qword_1EBCDD088;
  if (!qword_1EBCDD088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDD088);
  }

  return result;
}

uint64_t sub_1BC6C1C3C(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1BFB26A40](v2, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_1BC6BB834(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

unint64_t sub_1BC6C1CD4(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v11 = *v5;
  v12 = (v11 + 32 + 16 * result);
  result = swift_arrayDestroy();
  v13 = __OFSUB__(a3, v6);
  v14 = a3 - v6;
  if (v13)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v14)
  {
    v15 = *(v11 + 16);
    v13 = __OFSUB__(v15, a2);
    v16 = v15 - a2;
    if (!v13)
    {
      result = &v12[2 * a3];
      v17 = (v11 + 32 + 16 * a2);
      if (result != v17 || result >= v17 + 16 * v16)
      {
        result = memmove(result, v17, 16 * v16);
      }

      v19 = *(v11 + 16);
      v13 = __OFADD__(v19, v14);
      v20 = v19 + v14;
      if (!v13)
      {
        *(v11 + 16) = v20;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return result;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 > 0)
  {
    *v12 = a4;
    v12[1] = a5;

    if (a3 != 1)
    {
      goto LABEL_20;
    }
  }

  return result;
}

unint64_t sub_1BC6C1DBC()
{
  result = qword_1EBCDD0A0;
  if (!qword_1EBCDD0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDD0A0);
  }

  return result;
}

unint64_t sub_1BC6C1E10(uint64_t a1)
{
  *(a1 + 8) = sub_1BC6C1DBC();
  result = sub_1BC6C1E40();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1BC6C1E40()
{
  result = qword_1EBCDD0A8;
  if (!qword_1EBCDD0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDD0A8);
  }

  return result;
}

unint64_t sub_1BC6C1EDC()
{
  result = qword_1EBCDD0C0;
  if (!qword_1EBCDD0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDD0C0);
  }

  return result;
}

void sub_1BC6C1F68()
{
  sub_1BC6C21C4(319, &qword_1EBCDD0C8, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    _s6VictimVMa(319);
    if (v1 <= 0x3F)
    {
      sub_1BC6C29AC(319, &qword_1EBCDD0D0, &_s7SuspectVN, MEMORY[0x1E69E62F8]);
      if (v2 <= 0x3F)
      {
        type metadata accessor for SCUIInterventionType(319);
        if (v3 <= 0x3F)
        {
          sub_1BC6C29AC(319, &qword_1EDDCF0F0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
          if (v4 <= 0x3F)
          {
            sub_1BC6C29AC(319, &qword_1EBCDD0D8, &type metadata for AustralianState, MEMORY[0x1E69E6720]);
            if (v5 <= 0x3F)
            {
              sub_1BC6C21C4(319, &qword_1EBCDD0E0, type metadata accessor for Report.Message, MEMORY[0x1E69E62F8]);
              if (v6 <= 0x3F)
              {
                sub_1BC6C29AC(319, &qword_1EBCDD0E8, MEMORY[0x1E6969080], MEMORY[0x1E69E6720]);
                if (v7 <= 0x3F)
                {
                  type metadata accessor for SCUIReportingApplication(319);
                  if (v8 <= 0x3F)
                  {
                    type metadata accessor for SCUIReportFlags(319);
                    if (v9 <= 0x3F)
                    {
                      swift_cvw_initStructMetadataWithLayoutString();
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
}

void sub_1BC6C21C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1BC6C2260()
{
  sub_1BC6C29AC(319, &qword_1EDDCF0F0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1BC759910();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

__n128 __swift_memcpy168_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 160) = *(a2 + 20);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t sub_1BC6C236C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 168))
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

uint64_t sub_1BC6C23B4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 168) = 1;
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

    *(result + 168) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1BC6C2454()
{
  sub_1BC759800();
  if (v0 <= 0x3F)
  {
    sub_1BC759B50();
    if (v1 <= 0x3F)
    {
      sub_1BC6C21C4(319, &qword_1EBCDD0F0, MEMORY[0x1E697B600], MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1BC6C29AC(319, &qword_1EBCDD0E8, MEMORY[0x1E6969080], MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          sub_1BC6C29AC(319, &qword_1EDDCF0F0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
          if (v4 <= 0x3F)
          {
            sub_1BC6C21C4(319, &qword_1EBCDD0F8, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
            if (v5 <= 0x3F)
            {
              sub_1BC6C29AC(319, &qword_1EBCDD100, MEMORY[0x1E69E6530], MEMORY[0x1E69E6720]);
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1BC6C2634(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 80))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_1BC6C2690(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1BC6C2708(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_1BC6C2764(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

void sub_1BC6C27F0()
{
  sub_1BC759800();
  if (v0 <= 0x3F)
  {
    sub_1BC6C2884();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1BC6C2884()
{
  if (!qword_1EBCDD108)
  {
    sub_1BC65F664(255, &qword_1EBCDD110, 0x1E695B878);
    v0 = sub_1BC75BD70();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBCDD108);
    }
  }
}

uint64_t sub_1BC6C28EC(uint64_t a1, int a2)
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

uint64_t sub_1BC6C2934(uint64_t result, int a2, int a3)
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

void sub_1BC6C29AC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t _s5MediaV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
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

  return (v8 + 1);
}

uint64_t _s5MediaV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1BC6C2B78(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_1BC6C2C0C(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t _s8EvidenceV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF2)
  {
    goto LABEL_17;
  }

  if (a2 + 14 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 14) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 14;
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

      return (*a1 | (v4 << 8)) - 14;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 14;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v8 = v6 - 15;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s8EvidenceV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF2)
  {
    v4 = 0;
  }

  if (a2 > 0xF1)
  {
    v5 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
    *result = a2 + 14;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t _s7SuspectV10CodingKeysOwet_0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
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

  return (v8 + 1);
}

uint64_t _s7SuspectV10CodingKeysOwst_0(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1BC6C2FD8()
{
  result = qword_1EBCE8110[0];
  if (!qword_1EBCE8110[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCE8110);
  }

  return result;
}

unint64_t sub_1BC6C3030()
{
  result = qword_1EBCE83A0[0];
  if (!qword_1EBCE83A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCE83A0);
  }

  return result;
}

unint64_t sub_1BC6C3088()
{
  result = qword_1EBCE8630[0];
  if (!qword_1EBCE8630[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCE8630);
  }

  return result;
}

unint64_t sub_1BC6C30E0()
{
  result = qword_1EBCE88C0[0];
  if (!qword_1EBCE88C0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCE88C0);
  }

  return result;
}

unint64_t sub_1BC6C3258()
{
  result = qword_1EBCE8D50[0];
  if (!qword_1EBCE8D50[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCE8D50);
  }

  return result;
}

unint64_t sub_1BC6C32B0()
{
  result = qword_1EBCE8FE0[0];
  if (!qword_1EBCE8FE0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCE8FE0);
  }

  return result;
}

unint64_t sub_1BC6C3308()
{
  result = qword_1EBCE91F0;
  if (!qword_1EBCE91F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCE91F0);
  }

  return result;
}

unint64_t sub_1BC6C3360()
{
  result = qword_1EBCE9400[0];
  if (!qword_1EBCE9400[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCE9400);
  }

  return result;
}

unint64_t sub_1BC6C33B8()
{
  result = qword_1EBCE9690[0];
  if (!qword_1EBCE9690[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCE9690);
  }

  return result;
}

unint64_t sub_1BC6C3410()
{
  result = qword_1EBCE98A0[0];
  if (!qword_1EBCE98A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCE98A0);
  }

  return result;
}

unint64_t sub_1BC6C3468()
{
  result = qword_1EBCE9AB0[0];
  if (!qword_1EBCE9AB0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCE9AB0);
  }

  return result;
}

unint64_t sub_1BC6C34C0()
{
  result = qword_1EBCE9CC0[0];
  if (!qword_1EBCE9CC0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCE9CC0);
  }

  return result;
}

unint64_t sub_1BC6C3518()
{
  result = qword_1EBCE9E50;
  if (!qword_1EBCE9E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCE9E50);
  }

  return result;
}

unint64_t sub_1BC6C3570()
{
  result = qword_1EBCE9E58[0];
  if (!qword_1EBCE9E58[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCE9E58);
  }

  return result;
}

unint64_t sub_1BC6C35C8()
{
  result = qword_1EBCE9EE0;
  if (!qword_1EBCE9EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCE9EE0);
  }

  return result;
}

unint64_t sub_1BC6C3620()
{
  result = qword_1EBCE9EE8[0];
  if (!qword_1EBCE9EE8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCE9EE8);
  }

  return result;
}

unint64_t sub_1BC6C3678()
{
  result = qword_1EBCE9F70;
  if (!qword_1EBCE9F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCE9F70);
  }

  return result;
}

unint64_t sub_1BC6C36D0()
{
  result = qword_1EBCE9F78;
  if (!qword_1EBCE9F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCE9F78);
  }

  return result;
}

unint64_t sub_1BC6C3728()
{
  result = qword_1EBCEA000;
  if (!qword_1EBCEA000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCEA000);
  }

  return result;
}

unint64_t sub_1BC6C3780()
{
  result = qword_1EBCEA008[0];
  if (!qword_1EBCEA008[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCEA008);
  }

  return result;
}

unint64_t sub_1BC6C37D8()
{
  result = qword_1EBCEA090;
  if (!qword_1EBCEA090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCEA090);
  }

  return result;
}

unint64_t sub_1BC6C3830()
{
  result = qword_1EBCEA098[0];
  if (!qword_1EBCEA098[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCEA098);
  }

  return result;
}

unint64_t sub_1BC6C3888()
{
  result = qword_1EBCEA120;
  if (!qword_1EBCEA120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCEA120);
  }

  return result;
}

unint64_t sub_1BC6C38E0()
{
  result = qword_1EBCEA128[0];
  if (!qword_1EBCEA128[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCEA128);
  }

  return result;
}

unint64_t sub_1BC6C3938()
{
  result = qword_1EBCEA1B0;
  if (!qword_1EBCEA1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCEA1B0);
  }

  return result;
}

unint64_t sub_1BC6C3990()
{
  result = qword_1EBCEA1B8[0];
  if (!qword_1EBCEA1B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCEA1B8);
  }

  return result;
}

unint64_t sub_1BC6C39E8()
{
  result = qword_1EBCEA240;
  if (!qword_1EBCEA240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCEA240);
  }

  return result;
}

unint64_t sub_1BC6C3A40()
{
  result = qword_1EBCEA248[0];
  if (!qword_1EBCEA248[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCEA248);
  }

  return result;
}

unint64_t sub_1BC6C3A98()
{
  result = qword_1EBCEA2D0;
  if (!qword_1EBCEA2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCEA2D0);
  }

  return result;
}

unint64_t sub_1BC6C3AF0()
{
  result = qword_1EBCEA2D8[0];
  if (!qword_1EBCEA2D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCEA2D8);
  }

  return result;
}

unint64_t sub_1BC6C3B48()
{
  result = qword_1EBCEA360;
  if (!qword_1EBCEA360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCEA360);
  }

  return result;
}

unint64_t sub_1BC6C3BA0()
{
  result = qword_1EBCEA368[0];
  if (!qword_1EBCEA368[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCEA368);
  }

  return result;
}

unint64_t sub_1BC6C3BF8()
{
  result = qword_1EBCEA3F0;
  if (!qword_1EBCEA3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCEA3F0);
  }

  return result;
}

unint64_t sub_1BC6C3C50()
{
  result = qword_1EBCEA3F8[0];
  if (!qword_1EBCEA3F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCEA3F8);
  }

  return result;
}

unint64_t sub_1BC6C3CA8()
{
  result = qword_1EBCEA480;
  if (!qword_1EBCEA480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCEA480);
  }

  return result;
}

unint64_t sub_1BC6C3D00()
{
  result = qword_1EBCEA488[0];
  if (!qword_1EBCEA488[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCEA488);
  }

  return result;
}

uint64_t sub_1BC6C3D54()
{
  v0 = sub_1BC75C440();

  if (v0 >= 7)
  {
    return 7;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1BC6C3DA0()
{
  v0 = sub_1BC75C440();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1BC6C3DEC()
{
  v0 = sub_1BC75C440();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1BC6C3E38()
{
  v0 = sub_1BC75C440();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1BC6C3E84()
{
  result = qword_1EBCDD160;
  if (!qword_1EBCDD160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDD160);
  }

  return result;
}

unint64_t sub_1BC6C3ED8()
{
  result = qword_1EBCDD1B0;
  if (!qword_1EBCDD1B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDCFC8, &qword_1BC764A50);
    sub_1BC6BDE8C(&qword_1EBCDD1B8, type metadata accessor for Report.Media);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDD1B0);
  }

  return result;
}

uint64_t sub_1BC6C4028(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC998, &qword_1BC7641A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t WarningMenuButton.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD1F8, &qword_1BC7664A8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v44 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD200, &qword_1BC7664B0);
  v46 = *(v8 - 8);
  v47 = v8;
  v9 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v44 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC998, &qword_1BC7641A0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v44 - v14;
  v16 = sub_1BC759CA0();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BC6C45B8(v2, v15);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_1BC66008C(v15, &qword_1EBCDC998, &qword_1BC7641A0);
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD208, &qword_1BC7664B8);
    return (*(*(v21 - 8) + 56))(a1, 1, 1, v21);
  }

  else
  {
    (*(v17 + 32))(v20, v15, v16);
    v23 = type metadata accessor for _WarningMenuButton(0);
    (*(v17 + 16))(&v7[*(v23 + 24)], v20, v16);
    *&v50[0] = swift_getKeyPath();
    sub_1BC6A7104(v50);
    v24 = v50[11];
    *(v7 + 10) = v50[10];
    *(v7 + 11) = v24;
    *(v7 + 12) = v50[12];
    v7[208] = v51;
    v25 = v50[7];
    *(v7 + 6) = v50[6];
    *(v7 + 7) = v25;
    v26 = v50[9];
    *(v7 + 8) = v50[8];
    *(v7 + 9) = v26;
    v27 = v50[3];
    *(v7 + 2) = v50[2];
    *(v7 + 3) = v27;
    v28 = v50[5];
    *(v7 + 4) = v50[4];
    *(v7 + 5) = v28;
    v29 = v50[1];
    *v7 = v50[0];
    *(v7 + 1) = v29;
    PolicyProperty.init()(&v7[*(v23 + 20)]);
    v30 = sub_1BC75B810();
    v32 = v31;
    v33 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD210, &qword_1BC7664E8) + 36);
    v45 = a1;
    v34 = &v7[v33];
    sub_1BC75B7E0();
    *&v34[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD218, &qword_1BC7664F0) + 56)] = 256;
    v35 = &v34[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD220, &qword_1BC7664F8) + 36)];
    *v35 = v30;
    v35[1] = v32;
    sub_1BC75B810();
    sub_1BC75A810();
    v36 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD228, &qword_1BC766500) + 36)];
    v37 = v53;
    *v36 = v52;
    *(v36 + 1) = v37;
    *(v36 + 2) = v54;
    v38 = sub_1BC75B000();
    v39 = &v7[*(v4 + 36)];
    *v39 = v38;
    *(v39 + 8) = 0u;
    *(v39 + 24) = 0u;
    v39[40] = 1;
    v40 = sub_1BC6C464C();
    View.prefetchSensitiveContentPolicy()(v4, v40);
    sub_1BC66008C(v7, &qword_1EBCDD1F8, &qword_1BC7664A8);
    v48 = v4;
    v49 = v40;
    swift_getOpaqueTypeConformance2();
    v41 = v45;
    v42 = v47;
    sub_1BC75B330();
    (*(v46 + 8))(v11, v42);
    (*(v17 + 8))(v20, v16);
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD208, &qword_1BC7664B8);
    return (*(*(v43 - 8) + 56))(v41, 0, 1, v43);
  }
}

uint64_t sub_1BC6C45B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC998, &qword_1BC7641A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BC6C464C()
{
  result = qword_1EBCDD230;
  if (!qword_1EBCDD230)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDD1F8, &qword_1BC7664A8);
    sub_1BC6C46D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDD230);
  }

  return result;
}

unint64_t sub_1BC6C46D8()
{
  result = qword_1EBCDD238;
  if (!qword_1EBCDD238)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDD228, &qword_1BC766500);
    sub_1BC6C4764();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDD238);
  }

  return result;
}

unint64_t sub_1BC6C4764()
{
  result = qword_1EBCDD240;
  if (!qword_1EBCDD240)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDD210, &qword_1BC7664E8);
    sub_1BC6C6264(&qword_1EBCDD248, type metadata accessor for _WarningMenuButton);
    sub_1BC6C4820();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDD240);
  }

  return result;
}

unint64_t sub_1BC6C4820()
{
  result = qword_1EBCDD250;
  if (!qword_1EBCDD250)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDD220, &qword_1BC7664F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDD250);
  }

  return result;
}

id sub_1BC6C4884()
{
  v1 = sub_1BC75ABB0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v33[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = v0[11];
  v7 = v0[9];
  v85 = v0[10];
  v86 = v6;
  v8 = v0[11];
  v87 = v0[12];
  v9 = v0[7];
  v10 = v0[5];
  v81 = v0[6];
  v82 = v9;
  v11 = v0[7];
  v12 = v0[9];
  v83 = v0[8];
  v84 = v12;
  v13 = v0[3];
  v14 = v0[1];
  v77 = v0[2];
  v78 = v13;
  v15 = v0[3];
  v16 = v0[5];
  v79 = v0[4];
  v80 = v16;
  v17 = v0[1];
  v75 = *v0;
  v76 = v17;
  v89[10] = v85;
  v89[11] = v8;
  v89[12] = v0[12];
  v89[6] = v81;
  v89[7] = v11;
  v89[8] = v83;
  v89[9] = v7;
  v89[2] = v77;
  v89[3] = v15;
  v89[4] = v79;
  v89[5] = v10;
  v88 = *(v0 + 208);
  v90 = *(v0 + 208);
  v89[0] = v75;
  v89[1] = v14;
  if (sub_1BC6A78D4(v89) == 1)
  {
    nullsub_1(v89);
    v44 = v85;
    v45 = v86;
    v46 = v87;
    v47 = v88;
    v40 = v81;
    v41 = v82;
    v42 = v83;
    v43 = v84;
    v36 = v77;
    v37 = v78;
    v38 = v79;
    v39 = v80;
    v34 = v75;
    v35 = v76;
    v18 = nullsub_1(&v34);
    v62 = *v18;
    v19 = v18[1];
    v20 = v18[2];
    v21 = v18[4];
    v65 = v18[3];
    v66 = v21;
    v63 = v19;
    v64 = v20;
    v22 = v18[5];
    v23 = v18[6];
    v24 = v18[8];
    v69 = v18[7];
    v70 = v24;
    v67 = v22;
    v68 = v23;
    v25 = v18[9];
    v26 = v18[10];
    v27 = v18[12];
    v73 = v18[11];
    v74 = v27;
    v71 = v25;
    v72 = v26;
    v61 = v88;
    v59 = v86;
    v60 = v87;
    v57 = v84;
    v58 = v85;
    v55 = v82;
    v56 = v83;
    v53 = v80;
    v54 = v81;
    v51 = v78;
    v52 = v79;
    v49 = v76;
    v50 = v77;
    v48 = v75;
    v28 = nullsub_1(&v48);
    sub_1BC6362BC(v28, v33);
  }

  else
  {
    nullsub_1(v89);
    v44 = v85;
    v45 = v86;
    v46 = v87;
    v47 = v88;
    v40 = v81;
    v41 = v82;
    v42 = v83;
    v43 = v84;
    v36 = v77;
    v37 = v78;
    v38 = v79;
    v39 = v80;
    v34 = v75;
    v35 = v76;
    v29 = *nullsub_1(&v34);
    v48 = v75;
    v49 = v76;
    v52 = v79;
    v53 = v80;
    v50 = v77;
    v51 = v78;
    v56 = v83;
    v57 = v84;
    v54 = v81;
    v55 = v82;
    v61 = v88;
    v59 = v86;
    v60 = v87;
    v58 = v85;
    v30 = *nullsub_1(&v48);

    sub_1BC75BF70();
    v31 = sub_1BC75AFC0();
    sub_1BC75A4B0();

    sub_1BC75ABA0();
    swift_getAtKeyPath();
    sub_1BC66008C(&v75, &qword_1EBCDD8B0, &qword_1BC764368);
    (*(v2 + 8))(v5, v1);
  }

  type metadata accessor for Callbacks.LegacyDelegate();
  v58 = v72;
  v59 = v73;
  v60 = v74;
  v54 = v68;
  v55 = v69;
  v56 = v70;
  v57 = v71;
  v50 = v64;
  v51 = v65;
  v52 = v66;
  v53 = v67;
  v48 = v62;
  v49 = v63;
  return Callbacks.LegacyDelegate.__allocating_init(callbacks:)(&v48);
}

id sub_1BC6C4C4C(uint64_t a1)
{
  v2 = v1;
  v84 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCDBD90, &unk_1BC75F850);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v88 = &v80 - v5;
  v6 = sub_1BC75ABB0();
  v81 = *(v6 - 8);
  v82 = v6;
  v7 = *(v81 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v80 = &v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD258, &qword_1BC766508);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v83 = &v80 - v11;
  v12 = sub_1BC75C080();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v80 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1BC75C0E0();
  v89 = *(v17 - 8);
  v18 = *(v89 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v80 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BC75C0D0();
  v21 = [objc_opt_self() configurationWithTextStyle_];
  v22 = sub_1BC75BB30();
  v23 = [objc_opt_self() systemImageNamed:v22 withConfiguration:v21];

  v85 = v21;
  sub_1BC75C0C0();
  v24 = [objc_opt_self() labelColor];
  sub_1BC75C0B0();
  (*(v13 + 104))(v16, *MEMORY[0x1E69DC508], v12);
  sub_1BC75C090();
  v25 = [objc_opt_self() preferredFontForTextStyle_];
  [v25 _scaledValueForValue_];
  v27 = v26;

  v28 = sub_1BC75C0A0();
  *v29 = *v29 - v27;
  v28(v147, 0);
  v30 = sub_1BC75C0A0();
  *(v31 + 16) = v27 + *(v31 + 16);
  v30(v147, 0);
  v32 = [objc_allocWithZone(MEMORY[0x1E69DC738]) init];
  v33 = v89;
  v34 = *(v89 + 16);
  v35 = v83;
  v86 = v20;
  v34(v83, v20, v17);
  v36 = *(v33 + 56);
  v87 = v17;
  v36(v35, 0, 1, v17);
  sub_1BC75C0F0();
  v37 = [v32 titleLabel];
  if (v37)
  {
    v38 = v37;
    [v37 _setOverrideUserInterfaceStyle_];
  }

  v39 = [v32 imageView];
  if (v39)
  {
    v40 = v39;
    [v39 _setOverrideUserInterfaceStyle_];
  }

  [v32 setShowsMenuAsPrimaryAction_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD260, &qword_1BC766510);
  sub_1BC75AF10();
  v41 = v2[11];
  v42 = v2[9];
  v143 = v2[10];
  v144 = v41;
  v43 = v2[11];
  v145 = v2[12];
  v44 = v2[7];
  v45 = v2[5];
  v139 = v2[6];
  v140 = v44;
  v46 = v2[7];
  v47 = v2[9];
  v141 = v2[8];
  v142 = v47;
  v48 = v2[3];
  v49 = v2[1];
  v135 = v2[2];
  v136 = v48;
  v50 = v2[3];
  v51 = v2[5];
  v137 = v2[4];
  v138 = v51;
  v52 = v2[1];
  v133 = *v2;
  v134 = v52;
  v147[10] = v143;
  v147[11] = v43;
  v147[12] = v2[12];
  v147[6] = v139;
  v147[7] = v46;
  v147[8] = v141;
  v147[9] = v42;
  v147[2] = v135;
  v147[3] = v50;
  v147[4] = v137;
  v147[5] = v45;
  v53 = v132;
  v146 = *(v2 + 208);
  v148 = *(v2 + 208);
  v147[0] = v133;
  v147[1] = v49;
  if (sub_1BC6A78D4(v147) == 1)
  {
    nullsub_1(v147);
    v101 = v143;
    v102 = v144;
    v103 = v145;
    v104 = v146;
    v97 = v139;
    v98 = v140;
    v99 = v141;
    v100 = v142;
    v93 = v135;
    v94 = v136;
    v95 = v137;
    v96 = v138;
    v91 = v133;
    v92 = v134;
    v54 = nullsub_1(&v91);
    v119 = *v54;
    v55 = v54[1];
    v56 = v54[2];
    v57 = v54[4];
    v122 = v54[3];
    v123 = v57;
    v120 = v55;
    v121 = v56;
    v58 = v54[5];
    v59 = v54[6];
    v60 = v54[8];
    v126 = v54[7];
    v127 = v60;
    v124 = v58;
    v125 = v59;
    v61 = v54[9];
    v62 = v54[10];
    v63 = v54[12];
    v130 = v54[11];
    v131 = v63;
    v128 = v61;
    v129 = v62;
    v118 = v146;
    v116 = v144;
    v117 = v145;
    v114 = v142;
    v115 = v143;
    v112 = v140;
    v113 = v141;
    v110 = v138;
    v111 = v139;
    v108 = v136;
    v109 = v137;
    v106 = v134;
    v107 = v135;
    v105 = v133;
    v64 = nullsub_1(&v105);
    sub_1BC6362BC(v64, &v90);
  }

  else
  {
    nullsub_1(v147);
    v101 = v143;
    v102 = v144;
    v103 = v145;
    v104 = v146;
    v97 = v139;
    v98 = v140;
    v99 = v141;
    v100 = v142;
    v93 = v135;
    v94 = v136;
    v95 = v137;
    v96 = v138;
    v91 = v133;
    v92 = v134;
    v65 = *nullsub_1(&v91);
    v105 = v133;
    v106 = v134;
    v109 = v137;
    v110 = v138;
    v107 = v135;
    v108 = v136;
    v113 = v141;
    v114 = v142;
    v111 = v139;
    v112 = v140;
    v118 = v146;
    v116 = v144;
    v117 = v145;
    v115 = v143;
    v66 = *nullsub_1(&v105);

    sub_1BC75BF70();
    v67 = sub_1BC75AFC0();
    sub_1BC75A4B0();

    v68 = v80;
    sub_1BC75ABA0();
    swift_getAtKeyPath();
    sub_1BC66008C(&v133, &qword_1EBCDD8B0, &qword_1BC764368);
    (*(v81 + 8))(v68, v82);
  }

  v69 = v88;
  v115 = v129;
  v116 = v130;
  v117 = v131;
  v111 = v125;
  v112 = v126;
  v113 = v127;
  v114 = v128;
  v107 = v121;
  v108 = v122;
  v109 = v123;
  v110 = v124;
  v105 = v119;
  v106 = v120;
  v101 = v129;
  v102 = v130;
  v103 = v131;
  v97 = v125;
  v98 = v126;
  v99 = v127;
  v100 = v128;
  v93 = v121;
  v94 = v122;
  v95 = v123;
  v96 = v124;
  v91 = v119;
  v92 = v120;
  v70 = sub_1BC712B9C();
  sub_1BC69811C(&v105);
  v71 = v2 + *(type metadata accessor for _WarningMenuButton(0) + 20);
  PolicyProperty.wrappedValue.getter(v69);
  v72 = sub_1BC759EE0();
  v73 = *(v72 - 8);
  if ((*(v73 + 48))(v69, 1, v72) == 1)
  {
    sub_1BC66008C(v69, &unk_1EBCDBD90, &unk_1BC75F850);
LABEL_11:
    v74 = 2;
    goto LABEL_12;
  }

  v74 = sub_1BC6F39FC();
  v75 = v69;
  v77 = v76;
  (*(v73 + 8))(v75, v72);
  if (v77)
  {
    goto LABEL_11;
  }

LABEL_12:
  v78 = [objc_opt_self() menuWithDelegate:v53 additionalOptions:v70 interventionType:v74];

  [v32 setMenu_];
  (*(v89 + 8))(v86, v87);
  return v32;
}

void sub_1BC6C5624(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCDBD90, &unk_1BC75F850);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = v46 - v5;
  v7 = sub_1BC75ABB0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD260, &qword_1BC766510);
  sub_1BC75AF10();
  v12 = v1[11];
  v13 = v1[9];
  v100 = v1[10];
  v101 = v12;
  v14 = v1[11];
  v102 = v1[12];
  v15 = v1[7];
  v16 = v1[5];
  v96 = v1[6];
  v97 = v15;
  v17 = v1[7];
  v18 = v1[9];
  v98 = v1[8];
  v99 = v18;
  v19 = v1[3];
  v20 = v1[1];
  v92 = v1[2];
  v93 = v19;
  v21 = v1[3];
  v22 = v1[5];
  v94 = v1[4];
  v95 = v22;
  v23 = v1[1];
  v90 = *v1;
  v91 = v23;
  v104[10] = v100;
  v104[11] = v14;
  v104[12] = v1[12];
  v104[6] = v96;
  v104[7] = v17;
  v104[8] = v98;
  v104[9] = v13;
  v104[2] = v92;
  v104[3] = v21;
  v104[4] = v94;
  v104[5] = v16;
  v24 = v89;
  v103 = *(v1 + 208);
  v105 = *(v1 + 208);
  v104[0] = v90;
  v104[1] = v20;
  if (sub_1BC6A78D4(v104) == 1)
  {
    nullsub_1(v104);
    v58 = v100;
    v59 = v101;
    v60 = v102;
    v61 = v103;
    v54 = v96;
    v55 = v97;
    v56 = v98;
    v57 = v99;
    v50 = v92;
    v51 = v93;
    v52 = v94;
    v53 = v95;
    v48 = v90;
    v49 = v91;
    v25 = nullsub_1(&v48);
    v76 = *v25;
    v26 = v25[1];
    v27 = v25[2];
    v28 = v25[4];
    v79 = v25[3];
    v80 = v28;
    v77 = v26;
    v78 = v27;
    v29 = v25[5];
    v30 = v25[6];
    v31 = v25[8];
    v83 = v25[7];
    v84 = v31;
    v81 = v29;
    v82 = v30;
    v32 = v25[9];
    v33 = v25[10];
    v34 = v25[12];
    v87 = v25[11];
    v88 = v34;
    v85 = v32;
    v86 = v33;
    v75 = v103;
    v73 = v101;
    v74 = v102;
    v71 = v99;
    v72 = v100;
    v69 = v97;
    v70 = v98;
    v67 = v95;
    v68 = v96;
    v65 = v93;
    v66 = v94;
    v63 = v91;
    v64 = v92;
    v62 = v90;
    v35 = nullsub_1(&v62);
    sub_1BC6362BC(v35, &v47);
  }

  else
  {
    nullsub_1(v104);
    v58 = v100;
    v59 = v101;
    v60 = v102;
    v61 = v103;
    v54 = v96;
    v55 = v97;
    v56 = v98;
    v57 = v99;
    v50 = v92;
    v51 = v93;
    v52 = v94;
    v53 = v95;
    v48 = v90;
    v49 = v91;
    v46[1] = *nullsub_1(&v48);
    v62 = v90;
    v63 = v91;
    v66 = v94;
    v67 = v95;
    v64 = v92;
    v65 = v93;
    v70 = v98;
    v71 = v99;
    v68 = v96;
    v69 = v97;
    v75 = v103;
    v73 = v101;
    v74 = v102;
    v72 = v100;
    v36 = *nullsub_1(&v62);

    sub_1BC75BF70();
    v37 = sub_1BC75AFC0();
    sub_1BC75A4B0();

    sub_1BC75ABA0();
    swift_getAtKeyPath();
    sub_1BC66008C(&v90, &qword_1EBCDD8B0, &qword_1BC764368);
    (*(v8 + 8))(v11, v7);
  }

  v72 = v86;
  v73 = v87;
  v74 = v88;
  v68 = v82;
  v69 = v83;
  v70 = v84;
  v71 = v85;
  v64 = v78;
  v65 = v79;
  v66 = v80;
  v67 = v81;
  v62 = v76;
  v63 = v77;
  v58 = v86;
  v59 = v87;
  v60 = v88;
  v54 = v82;
  v55 = v83;
  v56 = v84;
  v57 = v85;
  v50 = v78;
  v51 = v79;
  v52 = v80;
  v53 = v81;
  v48 = v76;
  v49 = v77;
  v38 = sub_1BC712B9C();
  sub_1BC69811C(&v62);
  v39 = v1 + *(type metadata accessor for _WarningMenuButton(0) + 20);
  PolicyProperty.wrappedValue.getter(v6);
  v40 = sub_1BC759EE0();
  v41 = *(v40 - 8);
  if ((*(v41 + 48))(v6, 1, v40) == 1)
  {
    sub_1BC66008C(v6, &unk_1EBCDBD90, &unk_1BC75F850);
LABEL_7:
    v42 = 2;
    goto LABEL_8;
  }

  v42 = sub_1BC6F39FC();
  v44 = v43;
  (*(v41 + 8))(v6, v40);
  if (v44)
  {
    goto LABEL_7;
  }

LABEL_8:
  v45 = [objc_opt_self() menuWithDelegate:v24 additionalOptions:v38 interventionType:v42];

  [a1 setMenu_];
}

uint64_t sub_1BC6C5BEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BC6C6264(&qword_1EBCDD288, type metadata accessor for _WarningMenuButton);

  return PlatformViewRepresentable.makeUIView(context:)(a1, a2, v4);
}

uint64_t sub_1BC6C5C68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BC6C6264(&qword_1EBCDD288, type metadata accessor for _WarningMenuButton);

  return PlatformViewRepresentable.updateUIView(_:context:)(a1, a2, a3, v6);
}

id sub_1BC6C5CF4@<X0>(void *a1@<X8>)
{
  result = sub_1BC6C4884();
  *a1 = result;
  return result;
}

uint64_t sub_1BC6C5D64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BC6C6264(&qword_1EBCDD268, type metadata accessor for _WarningMenuButton);

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1BC6C5DF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BC6C6264(&qword_1EBCDD268, type metadata accessor for _WarningMenuButton);

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1BC6C5E8C()
{
  sub_1BC6C6264(&qword_1EBCDD268, type metadata accessor for _WarningMenuButton);
  sub_1BC75ADC0();
  __break(1u);
}

uint64_t sub_1BC6C5EE4()
{
  v0 = [objc_opt_self() secondaryLabelColor];
  result = sub_1BC75B4D0();
  qword_1EBCF45F0 = result;
  return result;
}

uint64_t *sub_1BC6C5F24()
{
  if (qword_1EBCEA510 != -1)
  {
    swift_once();
  }

  return &qword_1EBCF45F0;
}

uint64_t sub_1BC6C5F74()
{
  if (qword_1EBCEA510 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_1EBCF45F8 = qword_1EBCF45F0;
}

uint64_t *sub_1BC6C5FF4()
{
  if (qword_1EBCEA518 != -1)
  {
    swift_once();
  }

  return &qword_1EBCF45F8;
}

uint64_t sub_1BC6C6044()
{
  v0 = objc_opt_self();
  v1 = *MEMORY[0x1E69DDCF8];
  v2 = [v0 preferredFontForTextStyle_];

  result = sub_1BC75B100();
  qword_1EBCF4600 = result;
  return result;
}

uint64_t *sub_1BC6C60B8()
{
  if (qword_1EBCEA520 != -1)
  {
    swift_once();
  }

  return &qword_1EBCF4600;
}

uint64_t sub_1BC6C6108()
{
  v0 = objc_opt_self();
  v1 = *MEMORY[0x1E69DDD28];
  v2 = [v0 preferredFontForTextStyle_];

  v3 = [v2 fontWithSize_];
  result = sub_1BC75B100();
  qword_1EBCF4608 = result;
  return result;
}

uint64_t *sub_1BC6C61A0()
{
  if (qword_1EBCEA528 != -1)
  {
    swift_once();
  }

  return &qword_1EBCF4608;
}

uint64_t sub_1BC6C620C(uint64_t a1)
{
  result = sub_1BC6C6264(&qword_1EBCDD268, type metadata accessor for _WarningMenuButton);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1BC6C6264(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1BC6C633C()
{
  sub_1BC6C63A8();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1BC6C63A8()
{
  if (!qword_1EDDCE6F8)
  {
    sub_1BC759CA0();
    v0 = sub_1BC75C110();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDDCE6F8);
    }
  }
}

void sub_1BC6C6428()
{
  sub_1BC6A8C64();
  if (v0 <= 0x3F)
  {
    type metadata accessor for PolicyProperty(319);
    if (v1 <= 0x3F)
    {
      sub_1BC759CA0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1BC6C64C4()
{
  result = qword_1EBCDD270;
  if (!qword_1EBCDD270)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDD278, &qword_1BC7666A8);
    sub_1BC6C6548();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDD270);
  }

  return result;
}

unint64_t sub_1BC6C6548()
{
  result = qword_1EBCDD280;
  if (!qword_1EBCDD280)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDD208, &qword_1BC7664B8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDD1F8, &qword_1BC7664A8);
    sub_1BC6C464C();
    swift_getOpaqueTypeConformance2();
    sub_1BC6C6264(&qword_1EDDCE000, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDD280);
  }

  return result;
}

uint64_t sub_1BC6C6640(uint64_t a1)
{
  v1[3] = a1;
  v2 = sub_1BC7594B0();
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v4 = *(v3 + 64) + 15;
  v1[6] = swift_task_alloc();
  v5 = sub_1BC759AA0();
  v1[7] = v5;
  v6 = *(v5 - 8);
  v1[8] = v6;
  v7 = *(v6 + 64) + 15;
  v1[9] = swift_task_alloc();
  v8 = sub_1BC759AB0();
  v1[10] = v8;
  v9 = *(v8 - 8);
  v1[11] = v9;
  v10 = *(v9 + 64) + 15;
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BC6C67C4, 0, 0);
}

uint64_t sub_1BC6C67C4()
{
  v1 = v0[13];
  sub_1BC759AC0();
  v2 = v0[9];
  (*(v0[11] + 16))(v0[12], v0[13], v0[10]);
  sub_1BC6C6D1C(&qword_1EBCDD290, MEMORY[0x1E6966BE8]);
  sub_1BC75BE30();
  v3 = sub_1BC6C6D1C(&qword_1EBCDD298, MEMORY[0x1E6966BD8]);
  v4 = *(MEMORY[0x1E69E85A8] + 4);
  v5 = swift_task_alloc();
  v0[14] = v5;
  *v5 = v0;
  v5[1] = sub_1BC6C6994;
  v6 = v0[9];
  v7 = v0[7];

  return MEMORY[0x1EEE6D8C8](v0 + 2, v7, v3);
}

uint64_t sub_1BC6C6994()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v9 = *v1;

  if (v0)
  {
    v5 = v2[8];
    v4 = v2[9];
    v6 = v2[7];

    (*(v5 + 8))(v4, v6);
    v7 = nullsub_1;
  }

  else
  {
    v7 = sub_1BC6C6AD4;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1BC6C6AD4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 104);
  v3 = *(v0 + 80);
  v4 = *(v0 + 88);
  v6 = *(v0 + 64);
  v5 = *(v0 + 72);
  v7 = *(v0 + 56);
  if (v1)
  {
    (*(v6 + 8))(v5, v7);
    (*(v4 + 8))(v2, v3);
    if (*(v1 + 16))
    {
      v9 = *(v0 + 96);
      v8 = *(v0 + 104);
      v10 = *(v0 + 72);
      v11 = *(v0 + 48);
      v12 = *(v0 + 24);
      v13 = sub_1BC759AD0();
      (*(*(v13 - 8) + 16))(v12, v1 + ((*(*(v13 - 8) + 80) + 32) & ~*(*(v13 - 8) + 80)), v13);

      v14 = *(v0 + 8);
      goto LABEL_7;
    }
  }

  else
  {
    (*(v6 + 8))(v5, v7);
    (*(v4 + 8))(v2, v3);
  }

  v16 = *(v0 + 40);
  v15 = *(v0 + 48);
  v17 = *(v0 + 32);
  *(v0 + 120) = 2;
  sub_1BC678250(MEMORY[0x1E69E7CC0]);
  sub_1BC6C6D1C(&qword_1EBCDD2A0, MEMORY[0x1E6967EB8]);
  sub_1BC759700();
  sub_1BC7594A0();
  (*(v16 + 8))(v15, v17);
  swift_willThrow();
  v19 = *(v0 + 96);
  v18 = *(v0 + 104);
  v20 = *(v0 + 72);
  v21 = *(v0 + 48);

  v14 = *(v0 + 8);
LABEL_7:

  return v14();
}

uint64_t sub_1BC6C6D1C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t SensitiveContentOverlay.Background.Style.hashValue.getter()
{
  v1 = *v0;
  sub_1BC75C700();
  MEMORY[0x1BFB272F0](v1);
  return sub_1BC75C720();
}

uint64_t type metadata accessor for SensitiveContentOverlay.Background()
{
  result = qword_1EDDD0910;
  if (!qword_1EDDD0910)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SensitiveContentOverlay.Background.init(style:options:contentDescription:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = *a1;
  *(a4 + 8) = a2;
  v6 = type metadata accessor for SensitiveContentOverlay.Background();
  return sub_1BC65FFBC(a3, a4 + *(v6 + 24), &qword_1EBCDBC80, qword_1BC75F1D0);
}

uint64_t SensitiveContentOverlay.Background.body.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1BC6C6F20(v1, a1);
  v3 = sub_1BC75A980();
  v4 = sub_1BC75B000();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD2A8, &qword_1BC7666E8);
  v6 = a1 + *(result + 36);
  *v6 = v3;
  *(v6 + 8) = v4;
  return result;
}

uint64_t sub_1BC6C6F20@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v124 = a2;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD3B0, &qword_1BC766948);
  v3 = *(*(v125 - 8) + 64);
  MEMORY[0x1EEE9AC00](v125);
  v5 = &v101 - v4;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD390, &qword_1BC766938);
  v6 = *(*(v116 - 8) + 64);
  MEMORY[0x1EEE9AC00](v116);
  v108 = &v101 - v7;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD3E0, &qword_1BC766968);
  v8 = *(*(v114 - 8) + 64);
  MEMORY[0x1EEE9AC00](v114);
  v115 = &v101 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD360, &qword_1BC766920);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v117 = &v101 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD3E8, &qword_1BC766970);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v107 = &v101 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v106 = &v101 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD3F0, &qword_1BC766978);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18 - 8);
  v105 = &v101 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v104 = &v101 - v22;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD370, &qword_1BC766928);
  v23 = *(*(v113 - 8) + 64);
  MEMORY[0x1EEE9AC00](v113);
  v109 = &v101 - v24;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD3F8, &qword_1BC766980);
  v110 = *(v111 - 8);
  v25 = *(v110 + 64);
  v26 = MEMORY[0x1EEE9AC00](v111);
  v28 = &v101 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v103 = &v101 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD400, &qword_1BC766988);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v33 = &v101 - v32;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD340, &qword_1BC766910);
  v34 = *(*(v118 - 8) + 64);
  MEMORY[0x1EEE9AC00](v118);
  v112 = &v101 - v35;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD408, &qword_1BC766990);
  v36 = *(*(v123 - 8) + 64);
  MEMORY[0x1EEE9AC00](v123);
  v38 = &v101 - v37;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD410, &qword_1BC766998);
  v39 = *(*(v119 - 8) + 64);
  MEMORY[0x1EEE9AC00](v119);
  v121 = &v101 - v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD418, &qword_1BC7669A0);
  v42 = *(*(v41 - 8) + 64);
  MEMORY[0x1EEE9AC00](v41);
  v44 = &v101 - v43;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD328, &qword_1BC766908);
  v45 = *(*(v120 - 8) + 64);
  MEMORY[0x1EEE9AC00](v120);
  v47 = &v101 - v46;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD318, &qword_1BC766900);
  v48 = *(*(v122 - 8) + 64);
  MEMORY[0x1EEE9AC00](v122);
  v50 = &v101 - v49;
  v51 = a1;
  v52 = *a1;
  if (v52 > 3)
  {
    if (*a1 <= 5u)
    {
      v61 = v50;
      v101 = v10;
      v102 = v38;
      if (v52 == 4)
      {
        v62 = sub_1BC75B810();
        v64 = v63;
        v65 = v106;
        sub_1BC6C7E44(v106);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD2B0, &unk_1BC7666F0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1BC75F0C0;
        v67 = sub_1BC75AFD0();
        *(inited + 32) = v67;
        v68 = sub_1BC75AFF0();
        *(inited + 33) = v68;
        v69 = sub_1BC75AFE0();
        sub_1BC75AFE0();
        if (sub_1BC75AFE0() != v67)
        {
          v69 = sub_1BC75AFE0();
        }

        sub_1BC75AFE0();
        if (sub_1BC75AFE0() != v68)
        {
          v69 = sub_1BC75AFE0();
        }

        v70 = v105;
        *v105 = v69;
        v71 = v70 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD428, &qword_1BC7669B0) + 44);
        v72 = sub_1BC75B520();
        v73 = v107;
        sub_1BC660024(v65, v107, &qword_1EBCDD3E8, &qword_1BC766970);
        sub_1BC660024(v73, v71, &qword_1EBCDD3E8, &qword_1BC766970);
        v74 = v71 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD430, &qword_1BC7669B8) + 48);
        *v74 = v72;
        *(v74 + 8) = 256;
        sub_1BC66008C(v73, &qword_1EBCDD3E8, &qword_1BC766970);
        sub_1BC66008C(v65, &qword_1EBCDD3E8, &qword_1BC766970);
        v75 = v104;
        sub_1BC65FFBC(v70, v104, &qword_1EBCDD3F0, &qword_1BC766978);
        v76 = v109;
        sub_1BC65FFBC(v75, v109, &qword_1EBCDD3F0, &qword_1BC766978);
        v77 = &v76[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD380, &qword_1BC766930) + 36)];
        *v77 = v62;
        v77[1] = v64;
        v58 = &qword_1EBCDD370;
        v59 = &qword_1BC766928;
        sub_1BC660024(v76, v115, &qword_1EBCDD370, &qword_1BC766928);
      }

      else
      {
        v90 = sub_1BC75B800();
        v92 = v91;
        v76 = v108;
        sub_1BC6C8D30(v108);
        v93 = &v76[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD3A0, &qword_1BC766940) + 36)];
        *v93 = v90;
        v93[1] = v92;
        v58 = &qword_1EBCDD390;
        v59 = &qword_1BC766938;
        sub_1BC660024(v76, v115, &qword_1EBCDD390, &qword_1BC766938);
      }

      swift_storeEnumTagMultiPayload();
      sub_1BC6CAF00();
      sub_1BC6CAFB8();
      v94 = v117;
      sub_1BC75AE00();
      sub_1BC660024(v94, v121, &qword_1EBCDD360, &qword_1BC766920);
      swift_storeEnumTagMultiPayload();
      sub_1BC6CACDC();
      sub_1BC6CAE74();
      sub_1BC75AE00();
      sub_1BC66008C(v94, &qword_1EBCDD360, &qword_1BC766920);
      sub_1BC660024(v61, v102, &qword_1EBCDD318, &qword_1BC766900);
      swift_storeEnumTagMultiPayload();
      sub_1BC6CAC50();
      sub_1BC6CB070();
      sub_1BC75AE00();
      sub_1BC66008C(v61, &qword_1EBCDD318, &qword_1BC766900);
      v60 = v76;
      goto LABEL_22;
    }

    v117 = v50;
    if (v52 != 6)
    {
      goto LABEL_12;
    }

LABEL_19:
    swift_storeEnumTagMultiPayload();
    sub_1BC6CAD68();
    sub_1BC6CADBC();
    sub_1BC75AE00();
    sub_1BC660024(v47, v121, &qword_1EBCDD328, &qword_1BC766908);
    swift_storeEnumTagMultiPayload();
    sub_1BC6CACDC();
    sub_1BC6CAE74();
    v89 = v117;
    sub_1BC75AE00();
    sub_1BC66008C(v47, &qword_1EBCDD328, &qword_1BC766908);
    v58 = &qword_1EBCDD318;
    v59 = &qword_1BC766900;
    sub_1BC660024(v89, v38, &qword_1EBCDD318, &qword_1BC766900);
    swift_storeEnumTagMultiPayload();
    sub_1BC6CAC50();
    sub_1BC6CB070();
    sub_1BC75AE00();
    v60 = v89;
    goto LABEL_22;
  }

  if (v52 < 2)
  {
    v53 = sub_1BC75B810();
    v55 = v54;
    *v5 = sub_1BC75ACD0();
    *(v5 + 1) = 0;
    v5[16] = 1;
    v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD420, &qword_1BC7669A8);
    sub_1BC6C9A08(&v5[*(v56 + 44)]);
    v57 = &v5[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD3C0, &qword_1BC766950) + 36)];
    *v57 = v53;
    v57[1] = v55;
    v58 = &qword_1EBCDD3B0;
    v59 = &qword_1BC766948;
    sub_1BC660024(v5, v38, &qword_1EBCDD3B0, &qword_1BC766948);
    swift_storeEnumTagMultiPayload();
    sub_1BC6CAC50();
    sub_1BC6CB070();
    sub_1BC75AE00();
    v60 = v5;
LABEL_22:
    v95 = v58;
    v96 = v59;
    return sub_1BC66008C(v60, v95, v96);
  }

  v117 = v50;
  if (v52 == 2)
  {
    goto LABEL_19;
  }

LABEL_12:
  v101 = v10;
  v102 = v38;
  v78 = sub_1BC75B810();
  v80 = v78;
  v81 = v79;
  if ((v51[8] & 2) != 0)
  {
    (*(v110 + 56))(v33, 1, 1, v111);
  }

  else
  {
    v115 = v79;
    v116 = v78;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD2B0, &unk_1BC7666F0);
    v82 = swift_initStackObject();
    *(v82 + 16) = xmmword_1BC75F0C0;
    v83 = sub_1BC75AFD0();
    *(v82 + 32) = v83;
    v84 = sub_1BC75AFF0();
    *(v82 + 33) = v84;
    v85 = sub_1BC75AFE0();
    sub_1BC75AFE0();
    if (sub_1BC75AFE0() != v83)
    {
      v85 = sub_1BC75AFE0();
    }

    sub_1BC75AFE0();
    if (sub_1BC75AFE0() != v84)
    {
      v85 = sub_1BC75AFE0();
    }

    *v28 = v85;
    v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD438, &qword_1BC7669C0);
    sub_1BC6C9094(&v28[*(v86 + 44)]);
    v87 = v28;
    v88 = v103;
    sub_1BC65FFBC(v87, v103, &qword_1EBCDD3F8, &qword_1BC766980);
    sub_1BC65FFBC(v88, v33, &qword_1EBCDD3F8, &qword_1BC766980);
    (*(v110 + 56))(v33, 0, 1, v111);
    v81 = v115;
    v80 = v116;
  }

  v97 = v112;
  sub_1BC65FFBC(v33, v112, &qword_1EBCDD400, &qword_1BC766988);
  v98 = (v97 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD350, &qword_1BC766918) + 36));
  *v98 = v80;
  v98[1] = v81;
  sub_1BC660024(v97, v44, &qword_1EBCDD340, &qword_1BC766910);
  swift_storeEnumTagMultiPayload();
  sub_1BC6CAD68();
  sub_1BC6CADBC();
  sub_1BC75AE00();
  sub_1BC660024(v47, v121, &qword_1EBCDD328, &qword_1BC766908);
  swift_storeEnumTagMultiPayload();
  sub_1BC6CACDC();
  sub_1BC6CAE74();
  v99 = v117;
  sub_1BC75AE00();
  sub_1BC66008C(v47, &qword_1EBCDD328, &qword_1BC766908);
  sub_1BC660024(v99, v102, &qword_1EBCDD318, &qword_1BC766900);
  swift_storeEnumTagMultiPayload();
  sub_1BC6CAC50();
  sub_1BC6CB070();
  sub_1BC75AE00();
  sub_1BC66008C(v99, &qword_1EBCDD318, &qword_1BC766900);
  v60 = v97;
  v95 = &qword_1EBCDD340;
  v96 = &qword_1BC766910;
  return sub_1BC66008C(v60, v95, v96);
}

uint64_t sub_1BC6C7E44@<X0>(uint64_t a1@<X8>)
{
  v83 = a1;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD4B8, &qword_1BC766A90);
  v2 = *(*(v84 - 8) + 64);
  MEMORY[0x1EEE9AC00](v84);
  v4 = &v71 - v3;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD4C0, &qword_1BC766A98);
  v5 = *(*(v76 - 8) + 64);
  MEMORY[0x1EEE9AC00](v76);
  v7 = (&v71 - v6);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD4C8, &qword_1BC766AA0);
  v8 = *(*(v79 - 8) + 64);
  MEMORY[0x1EEE9AC00](v79);
  v77 = &v71 - v9;
  v10 = sub_1BC75B5D0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD4D0, &unk_1BC766AA8);
  v15 = *(*(v75 - 8) + 64);
  MEMORY[0x1EEE9AC00](v75);
  v17 = &v71 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC5D0, &unk_1BC761EE0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v71 - v20;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD4D8, &qword_1BC766AB8);
  v22 = *(*(v80 - 8) + 64);
  MEMORY[0x1EEE9AC00](v80);
  v82 = &v71 - v23;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD4E0, &qword_1BC766AC0);
  v24 = *(*(v78 - 8) + 64);
  MEMORY[0x1EEE9AC00](v78);
  v26 = (&v71 - v25);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD4E8, &qword_1BC766AC8);
  v27 = *(*(v81 - 8) + 64);
  MEMORY[0x1EEE9AC00](v81);
  v29 = &v71 - v28;
  v30 = *v1;
  if (v30 > 3)
  {
    if (*v1 <= 5u)
    {
      v74 = v29;
      if (v30 != 4)
      {
        sub_1BC75B5C0();
        sub_1BC75ACF0();
        v66 = sub_1BC75AD00();
        (*(*(v66 - 8) + 56))(v21, 0, 1, v66);
        v67 = sub_1BC75B5E0();

        sub_1BC66008C(v21, &qword_1EBCDC5D0, &unk_1BC761EE0);
        *v7 = v67;
        swift_storeEnumTagMultiPayload();
        sub_1BC6CBA1C();

        v68 = v77;
        sub_1BC75AE00();
        sub_1BC660024(v68, v26, &qword_1EBCDD4C8, &qword_1BC766AA0);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD510, &qword_1BC766B28);
        sub_1BC6CB708();
        sub_1BC6CB990();
        v69 = v74;
        sub_1BC75AE00();
        sub_1BC66008C(v68, &qword_1EBCDD4C8, &qword_1BC766AA0);
        sub_1BC660024(v69, v82, &qword_1EBCDD4E8, &qword_1BC766AC8);
        swift_storeEnumTagMultiPayload();
        sub_1BC6CB67C();
        sub_1BC6CBC18();
        sub_1BC75AE00();

        v51 = v69;
        v52 = &qword_1EBCDD4E8;
        v55 = &qword_1BC766AC8;
        return sub_1BC66008C(v51, v52, v55);
      }

      sub_1BC75B5C0();
      sub_1BC75ACF0();
      v72 = sub_1BC75AD00();
      v71 = *(*(v72 - 8) + 56);
      v73 = v7;
      v71(v21, 0, 1, v72);
      sub_1BC75B5E0();

      sub_1BC66008C(v21, &qword_1EBCDC5D0, &unk_1BC761EE0);
      (*(v11 + 104))(v14, *MEMORY[0x1E6981630], v10);
      v43 = sub_1BC75B610();

      (*(v11 + 8))(v14, v10);
      v44 = &v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC590, &unk_1BC766AD0) + 36)];
      v45 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC598, &qword_1BC761D20) + 28);
      sub_1BC75ACF0();
      v71(v44 + v45, 0, 1, v72);
      *v44 = swift_getKeyPath();
      *v17 = v43;
      *(v17 + 1) = 0;
      *(v17 + 8) = 1;
      v46 = sub_1BC75B530();
      *&v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC5A0, &qword_1BC766B10) + 36)] = v46;
      sub_1BC75B810();
      sub_1BC75A810();
      v47 = &v17[*(v75 + 36)];
      v48 = v91;
      *v47 = v90;
      *(v47 + 1) = v48;
      *(v47 + 2) = v92;
      v42 = &unk_1BC766AA8;
      sub_1BC660024(v17, v73, &qword_1EBCDD4D0, &unk_1BC766AA8);
      swift_storeEnumTagMultiPayload();
      sub_1BC6CBA1C();
      v49 = v77;
      sub_1BC75AE00();
      sub_1BC660024(v49, v26, &qword_1EBCDD4C8, &qword_1BC766AA0);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD510, &qword_1BC766B28);
      sub_1BC6CB708();
      sub_1BC6CB990();
      v50 = v74;
      sub_1BC75AE00();
      sub_1BC66008C(v49, &qword_1EBCDD4C8, &qword_1BC766AA0);
      sub_1BC660024(v50, v82, &qword_1EBCDD4E8, &qword_1BC766AC8);
      swift_storeEnumTagMultiPayload();
      sub_1BC6CB67C();
      sub_1BC6CBC18();
      sub_1BC75AE00();
      sub_1BC66008C(v50, &qword_1EBCDD4E8, &qword_1BC766AC8);
      v51 = v17;
      v52 = &qword_1EBCDD4D0;
      goto LABEL_11;
    }

    if (v30 != 6)
    {
LABEL_12:
      v56 = v29;
      sub_1BC75B5C0();
      sub_1BC75ACF0();
      v57 = sub_1BC75AD00();
      (*(*(v57 - 8) + 56))(v21, 0, 1, v57);
      v58 = sub_1BC75B5E0();

      sub_1BC66008C(v21, &qword_1EBCDC5D0, &unk_1BC761EE0);
      v59 = sub_1BC6C5FF4();
      swift_beginAccess();
      v60 = *v59;

      v61 = *sub_1BC6C60B8();
      KeyPath = swift_getKeyPath();

      v63 = sub_1BC75B000();
      v98 = 1;
      *&v94 = v58;
      *(&v94 + 1) = v60;
      *&v95 = KeyPath;
      *(&v95 + 1) = v61;
      v96[0] = v63;
      *&v96[1] = v99[0];
      *&v96[4] = *(v99 + 3);
      memset(&v96[8], 0, 32);
      v96[40] = 1;
      v87 = *v96;
      *v88 = *&v96[16];
      *&v88[9] = *&v96[25];
      v85 = v94;
      v86 = v95;
      v97 = 1;
      v89 = 1;
      sub_1BC660024(&v94, &v90, &qword_1EBCDD520, &qword_1BC766B30);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD520, &qword_1BC766B30);
      sub_1BC6CB794();
      sub_1BC75AE00();
      v64 = v93[0];
      v26[2] = v92;
      v26[3] = v64;
      *(v26 + 58) = *(v93 + 10);
      v65 = v91;
      *v26 = v90;
      v26[1] = v65;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD510, &qword_1BC766B28);
      sub_1BC6CB708();
      sub_1BC6CB990();
      sub_1BC75AE00();
      sub_1BC660024(v56, v82, &qword_1EBCDD4E8, &qword_1BC766AC8);
      swift_storeEnumTagMultiPayload();
      sub_1BC6CB67C();
      sub_1BC6CBC18();
      sub_1BC75AE00();
      sub_1BC66008C(&v94, &qword_1EBCDD520, &qword_1BC766B30);
      v51 = v56;
      v52 = &qword_1EBCDD4E8;
      v55 = &qword_1BC766AC8;
      return sub_1BC66008C(v51, v52, v55);
    }

LABEL_9:
    LOBYTE(v94) = 0;
    v89 = 0;
    v4 = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD520, &qword_1BC766B30);
    sub_1BC6CB794();
    sub_1BC75AE00();
    v53 = v93[0];
    v26[2] = v92;
    v26[3] = v53;
    *(v26 + 58) = *(v93 + 10);
    v54 = v91;
    *v26 = v90;
    v26[1] = v54;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD510, &qword_1BC766B28);
    sub_1BC6CB708();
    sub_1BC6CB990();
    sub_1BC75AE00();
    v41 = &qword_1EBCDD4E8;
    v42 = &qword_1BC766AC8;
    sub_1BC660024(v4, v82, &qword_1EBCDD4E8, &qword_1BC766AC8);
    swift_storeEnumTagMultiPayload();
    sub_1BC6CB67C();
    sub_1BC6CBC18();
    goto LABEL_10;
  }

  if (v30 - 1 < 2)
  {
    goto LABEL_9;
  }

  if (*v1)
  {
    goto LABEL_12;
  }

  sub_1BC75B5C0();
  (*(v11 + 104))(v14, *MEMORY[0x1E6981630], v10);
  v31 = sub_1BC75B610();

  (*(v11 + 8))(v14, v10);
  v32 = &v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC590, &unk_1BC766AD0) + 36)];
  v33 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC598, &qword_1BC761D20) + 28);
  sub_1BC75ACF0();
  v34 = sub_1BC75AD00();
  (*(*(v34 - 8) + 56))(v32 + v33, 0, 1, v34);
  *v32 = swift_getKeyPath();
  *v4 = v31;
  *(v4 + 1) = 0;
  *(v4 + 8) = 1;
  v35 = sub_1BC75B530();
  *&v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC5A0, &qword_1BC766B10) + 36)] = v35;
  *&v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD4F0, &qword_1BC766B18) + 36)] = 0x3FE3333333333333;
  v36 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD4F8, &qword_1BC766B20) + 36);
  v37 = *MEMORY[0x1E6981DB8];
  v38 = sub_1BC75B830();
  (*(*(v38 - 8) + 104))(&v4[v36], v37, v38);
  sub_1BC75B810();
  sub_1BC75A810();
  v39 = &v4[*(v84 + 36)];
  v40 = v91;
  *v39 = v90;
  *(v39 + 1) = v40;
  *(v39 + 2) = v92;
  v41 = &qword_1EBCDD4B8;
  v42 = &qword_1BC766A90;
  sub_1BC660024(v4, v82, &qword_1EBCDD4B8, &qword_1BC766A90);
  swift_storeEnumTagMultiPayload();
  sub_1BC6CB67C();
  sub_1BC6CBC18();
LABEL_10:
  sub_1BC75AE00();
  v51 = v4;
  v52 = v41;
LABEL_11:
  v55 = v42;
  return sub_1BC66008C(v51, v52, v55);
}

uint64_t sub_1BC6C8D30@<X0>(_BYTE *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD3E8, &qword_1BC766970);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v34 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD588, &unk_1BC766B50);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v34 - v11;
  sub_1BC6C7E44(v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC5B8, &qword_1BC761DA0);
  inited = swift_initStackObject();
  v34 = xmmword_1BC75F0C0;
  *(inited + 16) = xmmword_1BC75F0C0;
  v14 = sub_1BC75B050();
  *(inited + 32) = v14;
  v15 = sub_1BC75B020();
  *(inited + 33) = v15;
  v16 = sub_1BC75B040();
  sub_1BC75B040();
  if (sub_1BC75B040() != v14)
  {
    v16 = sub_1BC75B040();
  }

  sub_1BC75B040();
  if (sub_1BC75B040() != v15)
  {
    v16 = sub_1BC75B040();
  }

  sub_1BC75A670();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  sub_1BC65FFBC(v5, v12, &qword_1EBCDD3E8, &qword_1BC766970);
  v25 = &v12[*(v6 + 36)];
  *v25 = v16;
  *(v25 + 1) = v18;
  *(v25 + 2) = v20;
  *(v25 + 3) = v22;
  *(v25 + 4) = v24;
  v25[40] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD2B0, &unk_1BC7666F0);
  v26 = swift_initStackObject();
  *(v26 + 16) = v34;
  v27 = sub_1BC75AFD0();
  *(v26 + 32) = v27;
  v28 = sub_1BC75AFF0();
  *(v26 + 33) = v28;
  v29 = sub_1BC75AFE0();
  sub_1BC75AFE0();
  if (sub_1BC75AFE0() != v27)
  {
    v29 = sub_1BC75AFE0();
  }

  sub_1BC75AFE0();
  if (sub_1BC75AFE0() != v28)
  {
    v29 = sub_1BC75AFE0();
  }

  *a1 = v29;
  v30 = &a1[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD590, &qword_1BC766B60) + 44)];
  v31 = sub_1BC75B520();
  sub_1BC660024(v12, v10, &qword_1EBCDD588, &unk_1BC766B50);
  sub_1BC660024(v10, v30, &qword_1EBCDD588, &unk_1BC766B50);
  v32 = v30 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD598, &qword_1BC766B68) + 48);
  *v32 = v31;
  *(v32 + 8) = 256;
  sub_1BC66008C(v10, &qword_1EBCDD588, &unk_1BC766B50);
  return sub_1BC66008C(v12, &qword_1EBCDD588, &unk_1BC766B50);
}

uint64_t sub_1BC6C9094@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD3E8, &qword_1BC766970);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x1EEE9AC00](v1 - 8);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v26 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD440, &qword_1BC7669C8);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v26 - v13;
  *v14 = sub_1BC75ACD0();
  *(v14 + 1) = 0;
  v14[16] = 1;
  v15 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD448, &qword_1BC7669D0) + 44)];
  sub_1BC6C7E44(v7);
  sub_1BC6C9420(&v28);
  sub_1BC660024(v7, v5, &qword_1EBCDD3E8, &qword_1BC766970);
  sub_1BC660024(v5, v15, &qword_1EBCDD3E8, &qword_1BC766970);
  v16 = (v15 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD450, &qword_1BC7669D8) + 48));
  v17 = *(v31 + 10);
  v18 = v31[0];
  v32[2] = v30;
  v33[0] = v31[0];
  *(v33 + 10) = *(v31 + 10);
  v19 = v29;
  v20 = v28;
  v32[0] = v28;
  v32[1] = v29;
  v16[2] = v30;
  v16[3] = v18;
  *(v16 + 58) = v17;
  *v16 = v20;
  v16[1] = v19;
  sub_1BC660024(v32, v34, &qword_1EBCDD458, &qword_1BC7669E0);
  sub_1BC66008C(v7, &qword_1EBCDD3E8, &qword_1BC766970);
  v34[2] = v30;
  v35[0] = v31[0];
  *(v35 + 10) = *(v31 + 10);
  v34[0] = v28;
  v34[1] = v29;
  sub_1BC66008C(v34, &qword_1EBCDD458, &qword_1BC7669E0);
  sub_1BC66008C(v5, &qword_1EBCDD3E8, &qword_1BC766970);
  sub_1BC6C7E44(v7);
  v21 = sub_1BC75B520();
  sub_1BC660024(v14, v12, &qword_1EBCDD440, &qword_1BC7669C8);
  sub_1BC660024(v7, v5, &qword_1EBCDD3E8, &qword_1BC766970);
  v22 = v27;
  sub_1BC660024(v12, v27, &qword_1EBCDD440, &qword_1BC7669C8);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD460, &qword_1BC7669E8);
  sub_1BC660024(v5, v22 + *(v23 + 48), &qword_1EBCDD3E8, &qword_1BC766970);
  v24 = v22 + *(v23 + 64);
  *v24 = v21;
  *(v24 + 8) = 256;

  sub_1BC66008C(v7, &qword_1EBCDD3E8, &qword_1BC766970);
  sub_1BC66008C(v14, &qword_1EBCDD440, &qword_1BC7669C8);

  sub_1BC66008C(v5, &qword_1EBCDD3E8, &qword_1BC766970);
  return sub_1BC66008C(v12, &qword_1EBCDD440, &qword_1BC7669C8);
}

__n128 sub_1BC6C9420@<Q0>(uint64_t a1@<X8>)
{
  v3 = 1 << *v1;
  if ((v3 & 0xF4) != 0)
  {
    v41[25] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD468, &qword_1BC7669F0);
    sub_1BC6CB310();
    sub_1BC75AE00();
  }

  else
  {
    if ((v3 & 3) != 0)
    {
      SensitiveContentOverlay.Background.contentWarningTitle.getter(&v42);
      v40[0] = v42;
      v4 = sub_1BC651E78(v40);
      v6 = v5;
      v8 = v7;
      v10 = v9;
      KeyPath = swift_getKeyPath();
      v12 = sub_1BC75B530();
      v39 = 0;
      *&v42 = v4;
      *(&v42 + 1) = v6;
      v43.n128_u8[0] = v8 & 1;
      v43.n128_u64[1] = v10;
      *&v44 = KeyPath;
      BYTE8(v44) = 1;
      *v45 = v12;
      v45[24] = 0;
      sub_1BC680FFC(v4, v6, v8 & 1);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD480, &qword_1BC7669F8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD4A0, &qword_1BC766A18);
      sub_1BC6CB39C();
      sub_1BC6CB50C();
      sub_1BC75AE00();
      v44 = v31;
      *v45 = *v32;
      *&v45[9] = *&v32[9];
      v42 = v29;
      v43 = v30;
      LOBYTE(v33) = 0;
      v45[25] = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD468, &qword_1BC7669F0);
      sub_1BC6CB310();
      sub_1BC75AE00();
      sub_1BC680E6C(v4, v6, v8 & 1);
    }

    else
    {
      v13._object = 0x80000001BC772EF0;
      v13._countAndFlagsBits = 0xD000000000000011;
      SCLocalizedStringKey.init(stringLiteral:)(v13);
      v40[0] = v42;
      v14 = sub_1BC651E78(v40);
      v16 = v15;
      v18 = v17;
      v20 = v19;
      v21 = swift_getKeyPath();
      v22 = *sub_1BC6C61A0();
      v23 = swift_getKeyPath();
      v24 = v18 & 1;
      LOBYTE(v42) = v18 & 1;

      v25 = sub_1BC6C5F24();
      swift_beginAccess();
      v26 = *v25;
      *&v33 = v14;
      *(&v33 + 1) = v16;
      v34.n128_u8[0] = v24;
      v34.n128_u64[1] = v20;
      *&v35 = v21;
      BYTE8(v35) = 1;
      *&v36 = v23;
      *(&v36 + 1) = v22;
      v37 = v26;
      v44 = v35;
      *v45 = v36;
      *&v45[16] = v26;
      v42 = v33;
      v43 = v34;
      v38 = 1;
      v45[24] = 1;

      sub_1BC660024(&v33, v40, &qword_1EBCDD4A0, &qword_1BC766A18);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD480, &qword_1BC7669F8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD4A0, &qword_1BC766A18);
      sub_1BC6CB39C();
      sub_1BC6CB50C();
      sub_1BC75AE00();
      v44 = v31;
      *v45 = *v32;
      *&v45[9] = *&v32[9];
      v42 = v29;
      v43 = v30;
      v39 = 0;
      v45[25] = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD468, &qword_1BC7669F0);
      sub_1BC6CB310();
      sub_1BC75AE00();
      sub_1BC66008C(&v33, &qword_1EBCDD4A0, &qword_1BC766A18);
    }

    v44 = v40[2];
    *v45 = *v41;
    *&v45[10] = *&v41[10];
    v42 = v40[0];
    v43 = v40[1];
  }

  v27 = *v45;
  *(a1 + 32) = v44;
  *(a1 + 48) = v27;
  *(a1 + 58) = *&v45[10];
  result = v43;
  *a1 = v42;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1BC6C9838(uint64_t TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](TupleTypeMetadata);
    v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v9 = 0;
      v10 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v9 != a2)
      {
LABEL_9:
        v15 = a2 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  v20 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v23 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v24 = (v6 + 32);
    v25 = a2;
    do
    {
      if (a2 == 1)
      {
        v26 = 0;
      }

      else
      {
        v26 = *v24;
      }

      v28 = *v23++;
      v27 = v28;
      v29 = *v5++;
      (*(*(v27 - 8) + 16))(&v22[v26], v29);
      v24 += 4;
      --v25;
    }

    while (v25);
  }

  return sub_1BC75B860();
}

uint64_t sub_1BC6C9A08@<X0>(uint64_t a1@<X8>)
{
  v52 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD3E8, &qword_1BC766970);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x1EEE9AC00](v1 - 8);
  v5 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v51 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD3F0, &qword_1BC766978);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v56 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v51 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v55 = &v51 - v15;
  sub_1BC6C7E44(v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD2B0, &unk_1BC7666F0);
  v16 = swift_allocObject();
  v53 = xmmword_1BC75F0C0;
  *(v16 + 16) = xmmword_1BC75F0C0;
  v17 = sub_1BC75AFD0();
  *(v16 + 32) = v17;
  v18 = sub_1BC75AFF0();
  *(v16 + 33) = v18;
  v19 = sub_1BC75AFE0();
  sub_1BC75AFE0();
  if (sub_1BC75AFE0() != v17)
  {
    v19 = sub_1BC75AFE0();
  }

  sub_1BC75AFE0();
  if (sub_1BC75AFE0() != v18)
  {
    v19 = sub_1BC75AFE0();
  }

  *v14 = v19;
  v20 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD428, &qword_1BC7669B0) + 44)];
  v21 = sub_1BC75B520();
  sub_1BC660024(v7, v5, &qword_1EBCDD3E8, &qword_1BC766970);
  sub_1BC660024(v5, v20, &qword_1EBCDD3E8, &qword_1BC766970);
  v22 = v20 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD430, &qword_1BC7669B8) + 48);
  *v22 = v21;
  *(v22 + 8) = 256;
  sub_1BC66008C(v5, &qword_1EBCDD3E8, &qword_1BC766970);
  sub_1BC66008C(v7, &qword_1EBCDD3E8, &qword_1BC766970);
  sub_1BC65FFBC(v14, v55, &qword_1EBCDD3F0, &qword_1BC766978);
  sub_1BC6C9420(v118);
  v23 = sub_1BC75B000();
  v117 = 1;
  v122 = v118[2];
  v123 = v118[3];
  v124 = v118[4];
  v120 = v118[0];
  v121 = v118[1];
  v125[0] = v23;
  memset(&v125[8], 0, 32);
  v125[40] = 1;
  v24 = swift_allocObject();
  *(v24 + 16) = v53;
  v25 = sub_1BC75AFD0();
  *(v24 + 32) = v25;
  v26 = sub_1BC75AFF0();
  *(v24 + 33) = v26;
  v57 = sub_1BC75AFE0();
  sub_1BC75AFE0();
  if (sub_1BC75AFE0() != v25)
  {
    v57 = sub_1BC75AFE0();
  }

  sub_1BC75AFE0();
  if (sub_1BC75AFE0() != v26)
  {
    v57 = sub_1BC75AFE0();
  }

  v54 = sub_1BC75B520();
  v99 = *v125;
  v100[0] = *&v125[16];
  *(v100 + 9) = *&v125[25];
  v94 = v120;
  v95 = v121;
  v96 = v122;
  v97 = v123;
  v98 = v124;
  v101[0] = v120;
  v101[1] = v121;
  v101[2] = v122;
  v101[3] = v123;
  *(v102 + 9) = *&v125[25];
  v102[0] = *&v125[16];
  v101[5] = *v125;
  v101[4] = v124;
  v109[0] = *&v125[16];
  v103 = v120;
  v104 = v121;
  v105 = v122;
  v106 = v123;
  v108 = *v125;
  v107 = v124;
  *(v109 + 9) = *&v125[25];
  sub_1BC660024(&v120, &v82, &qword_1EBCDD5A0, &qword_1BC766B70);
  sub_1BC660024(v101, &v82, &qword_1EBCDD5A0, &qword_1BC766B70);
  v110[4] = v98;
  v110[5] = v99;
  v111[0] = v100[0];
  *(v111 + 9) = *(v100 + 9);
  v110[0] = v94;
  v110[1] = v95;
  v110[2] = v96;
  v110[3] = v97;
  sub_1BC66008C(v110, &qword_1EBCDD5A0, &qword_1BC766B70);
  sub_1BC66008C(&v120, &qword_1EBCDD5A0, &qword_1BC766B70);
  *&v119[71] = v107;
  *&v119[87] = v108;
  *&v119[103] = v109[0];
  *&v119[119] = v109[1];
  *&v119[7] = v103;
  *&v119[23] = v104;
  *&v119[39] = v105;
  *&v119[55] = v106;
  v27 = sub_1BC686DCC();
  ShowContentButton.init(isShowingContent:)(v27, v29, v28 & 1, &v112);
  v30 = swift_allocObject();
  *(v30 + 16) = v53;
  v31 = sub_1BC75AFD0();
  *(v30 + 32) = v31;
  v32 = sub_1BC75AFF0();
  *(v30 + 33) = v32;
  v33 = sub_1BC75AFE0();
  sub_1BC75AFE0();
  if (sub_1BC75AFE0() != v31)
  {
    v33 = sub_1BC75AFE0();
  }

  sub_1BC75AFE0();
  if (sub_1BC75AFE0() != v32)
  {
    v33 = sub_1BC75AFE0();
  }

  *&v53 = sub_1BC75B520();
  v60 = v114;
  v61 = v115;
  v62 = v116;
  v58 = v112;
  v59 = v113;
  v63[2] = v114;
  v63[3] = v115;
  v64 = v116;
  v63[0] = v112;
  v63[1] = v113;
  LOBYTE(v69) = v116;
  v67 = v114;
  v68 = v115;
  v65 = v112;
  v66 = v113;
  sub_1BC6877B8(&v112, &v82);
  sub_1BC6877B8(v63, &v82);
  v70[2] = v60;
  v70[3] = v61;
  v71 = v62;
  v70[0] = v58;
  v70[1] = v59;
  sub_1BC6CBDBC(v70);
  sub_1BC6CBDBC(&v112);
  *&v93[23] = v66;
  *&v93[39] = v67;
  *&v93[55] = v68;
  *&v93[71] = v69;
  *&v93[7] = v65;
  v35 = v55;
  v34 = v56;
  sub_1BC660024(v55, v56, &qword_1EBCDD3F0, &qword_1BC766978);
  v36 = v34;
  v37 = v52;
  sub_1BC660024(v36, v52, &qword_1EBCDD3F0, &qword_1BC766978);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD5A8, &qword_1BC766B78);
  v39 = v37 + *(v38 + 48);
  LOBYTE(v72[0]) = v57;
  *(&v72[5] + 1) = *&v119[80];
  *(&v72[6] + 1) = *&v119[96];
  *(&v72[7] + 1) = *&v119[112];
  *(&v72[2] + 1) = *&v119[32];
  *(&v72[1] + 1) = *&v119[16];
  *(&v72[3] + 1) = *&v119[48];
  *(&v72[4] + 1) = *&v119[64];
  *(v72 + 1) = *v119;
  *&v72[8] = *&v119[127];
  *(&v72[8] + 1) = v54;
  v73 = 256;
  v40 = v72[5];
  *(v39 + 64) = v72[4];
  *(v39 + 80) = v40;
  v41 = v72[3];
  *(v39 + 32) = v72[2];
  *(v39 + 48) = v41;
  *(v39 + 144) = 256;
  v42 = v72[7];
  *(v39 + 96) = v72[6];
  *(v39 + 112) = v42;
  *(v39 + 128) = v72[8];
  v43 = v72[1];
  *v39 = v72[0];
  *(v39 + 16) = v43;
  v44 = (v37 + *(v38 + 64));
  LOBYTE(v74[0]) = v33;
  *(v74 + 1) = *v93;
  *(&v74[1] + 1) = *&v93[16];
  *(&v74[2] + 1) = *&v93[32];
  *(&v74[3] + 1) = *&v93[48];
  v74[4] = *&v93[63];
  v45 = v53;
  *&v74[5] = v53;
  WORD4(v74[5]) = 256;
  v46 = v74[1];
  *v44 = v74[0];
  v44[1] = v46;
  v47 = v74[2];
  v48 = v74[3];
  v49 = v74[4];
  *(v44 + 74) = *(&v74[4] + 10);
  v44[3] = v48;
  v44[4] = v49;
  v44[2] = v47;
  sub_1BC660024(v72, &v82, &qword_1EBCDD5B0, &qword_1BC766B80);
  sub_1BC660024(v74, &v82, &qword_1EBCDD5B8, &qword_1BC766B88);
  sub_1BC66008C(v35, &qword_1EBCDD3F0, &qword_1BC766978);
  v75 = v33;
  v77 = *&v93[16];
  v78 = *&v93[32];
  *v79 = *&v93[48];
  *&v79[15] = *&v93[63];
  v76 = *v93;
  v80 = v45;
  v81 = 256;
  sub_1BC66008C(&v75, &qword_1EBCDD5B8, &qword_1BC766B88);
  v82 = v57;
  v88 = *&v119[80];
  v89 = *&v119[96];
  *v90 = *&v119[112];
  v84 = *&v119[16];
  v85 = *&v119[32];
  v86 = *&v119[48];
  v87 = *&v119[64];
  v83 = *v119;
  *&v90[15] = *&v119[127];
  v91 = v54;
  v92 = 256;
  sub_1BC66008C(&v82, &qword_1EBCDD5B0, &qword_1BC766B80);
  return sub_1BC66008C(v56, &qword_1EBCDD3F0, &qword_1BC766978);
}

uint64_t sub_1BC6CA6B0@<X0>(uint64_t a1@<X8>)
{
  sub_1BC6C6F20(v1, a1);
  v3 = sub_1BC75A980();
  v4 = sub_1BC75B000();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD2A8, &qword_1BC7666E8);
  v6 = a1 + *(result + 36);
  *v6 = v3;
  *(v6 + 8) = v4;
  return result;
}

uint64_t sub_1BC6CA714@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD2C0, &qword_1BC766700);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - v4;
  sub_1BC75B7E0();
  *&v5[*(v2 + 56)] = 256;
  sub_1BC633C54(&qword_1EDDCE158, &qword_1EBCDD2C0, &qword_1BC766700);
  sub_1BC75B330();
  sub_1BC66008C(v5, &qword_1EBCDD2C0, &qword_1BC766700);
  KeyPath = swift_getKeyPath();
  v7 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD2C8, &unk_1BC766738) + 36));
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC458, &qword_1BC762B00) + 28);
  v9 = *MEMORY[0x1E697DBA8];
  v10 = sub_1BC75A710();
  result = (*(*(v10 - 8) + 104))(v7 + v8, v9, v10);
  *v7 = KeyPath;
  return result;
}

unint64_t sub_1BC6CA8B0()
{
  result = qword_1EBCDD2D0;
  if (!qword_1EBCDD2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDD2D0);
  }

  return result;
}

void sub_1BC6CA9A8()
{
  type metadata accessor for SCUISensitiveContentOverlayOptions();
  if (v0 <= 0x3F)
  {
    sub_1BC6CAA3C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1BC6CAA3C()
{
  if (!qword_1EDDCE6F0)
  {
    sub_1BC759D50();
    v0 = sub_1BC75C110();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDDCE6F0);
    }
  }
}

unint64_t sub_1BC6CAAB4()
{
  result = qword_1EBCDD2E8;
  if (!qword_1EBCDD2E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDD2A8, &qword_1BC7666E8);
    sub_1BC6CAB40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDD2E8);
  }

  return result;
}

unint64_t sub_1BC6CAB40()
{
  result = qword_1EBCDD2F0;
  if (!qword_1EBCDD2F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDD2F8, &qword_1BC7668F0);
    sub_1BC6CABC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDD2F0);
  }

  return result;
}

unint64_t sub_1BC6CABC4()
{
  result = qword_1EBCDD300;
  if (!qword_1EBCDD300)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDD308, &qword_1BC7668F8);
    sub_1BC6CAC50();
    sub_1BC6CB070();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDD300);
  }

  return result;
}

unint64_t sub_1BC6CAC50()
{
  result = qword_1EBCDD310;
  if (!qword_1EBCDD310)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDD318, &qword_1BC766900);
    sub_1BC6CACDC();
    sub_1BC6CAE74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDD310);
  }

  return result;
}

unint64_t sub_1BC6CACDC()
{
  result = qword_1EBCDD320;
  if (!qword_1EBCDD320)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDD328, &qword_1BC766908);
    sub_1BC6CAD68();
    sub_1BC6CADBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDD320);
  }

  return result;
}

unint64_t sub_1BC6CAD68()
{
  result = qword_1EBCDD330;
  if (!qword_1EBCDD330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDD330);
  }

  return result;
}

unint64_t sub_1BC6CADBC()
{
  result = qword_1EBCDD338;
  if (!qword_1EBCDD338)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDD340, &qword_1BC766910);
    sub_1BC6CAD68();
    sub_1BC633C54(&qword_1EBCDD348, &qword_1EBCDD350, &qword_1BC766918);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDD338);
  }

  return result;
}

unint64_t sub_1BC6CAE74()
{
  result = qword_1EBCDD358;
  if (!qword_1EBCDD358)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDD360, &qword_1BC766920);
    sub_1BC6CAF00();
    sub_1BC6CAFB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDD358);
  }

  return result;
}

unint64_t sub_1BC6CAF00()
{
  result = qword_1EBCDD368;
  if (!qword_1EBCDD368)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDD370, &qword_1BC766928);
    sub_1BC6CAD68();
    sub_1BC633C54(&qword_1EBCDD378, &qword_1EBCDD380, &qword_1BC766930);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDD368);
  }

  return result;
}

unint64_t sub_1BC6CAFB8()
{
  result = qword_1EBCDD388;
  if (!qword_1EBCDD388)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDD390, &qword_1BC766938);
    sub_1BC6CAD68();
    sub_1BC633C54(&qword_1EBCDD398, &qword_1EBCDD3A0, &qword_1BC766940);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDD388);
  }

  return result;
}

unint64_t sub_1BC6CB070()
{
  result = qword_1EBCDD3A8;
  if (!qword_1EBCDD3A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDD3B0, &qword_1BC766948);
    sub_1BC6CAD68();
    sub_1BC633C54(&qword_1EBCDD3B8, &qword_1EBCDD3C0, &qword_1BC766950);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDD3A8);
  }

  return result;
}

unint64_t sub_1BC6CB128()
{
  result = qword_1EBCDD3C8;
  if (!qword_1EBCDD3C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDD2C8, &unk_1BC766738);
    sub_1BC6CB1E0();
    sub_1BC633C54(&qword_1EBCDC4F0, &qword_1EBCDC458, &qword_1BC762B00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDD3C8);
  }

  return result;
}

unint64_t sub_1BC6CB1E0()
{
  result = qword_1EBCDD3D0;
  if (!qword_1EBCDD3D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDD3D8, &unk_1BC766958);
    sub_1BC633C54(&qword_1EDDCE158, &qword_1EBCDD2C0, &qword_1BC766700);
    sub_1BC6CB2C8(&qword_1EDDCE000, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDD3D0);
  }

  return result;
}

uint64_t sub_1BC6CB2C8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1BC6CB310()
{
  result = qword_1EBCDD470;
  if (!qword_1EBCDD470)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDD468, &qword_1BC7669F0);
    sub_1BC6CB39C();
    sub_1BC6CB50C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDD470);
  }

  return result;
}

unint64_t sub_1BC6CB39C()
{
  result = qword_1EBCDD478;
  if (!qword_1EBCDD478)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDD480, &qword_1BC7669F8);
    sub_1BC6CB454();
    sub_1BC633C54(&qword_1EBCDC6B8, &qword_1EBCDC6C0, &qword_1BC761ED0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDD478);
  }

  return result;
}

unint64_t sub_1BC6CB454()
{
  result = qword_1EBCDE3B0;
  if (!qword_1EBCDE3B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDD488, &qword_1BC766A00);
    sub_1BC633C54(&unk_1EBCDE3C0, &qword_1EBCDD490, &unk_1BC766A08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDE3B0);
  }

  return result;
}

unint64_t sub_1BC6CB50C()
{
  result = qword_1EBCDD498;
  if (!qword_1EBCDD498)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDD4A0, &qword_1BC766A18);
    sub_1BC6CB5C4();
    sub_1BC633C54(&qword_1EBCDC6B8, &qword_1EBCDC6C0, &qword_1BC761ED0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDD498);
  }

  return result;
}

unint64_t sub_1BC6CB5C4()
{
  result = qword_1EBCDD4A8;
  if (!qword_1EBCDD4A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDD4B0, &unk_1BC766A20);
    sub_1BC6CB454();
    sub_1BC633C54(&qword_1EBCDC418, &qword_1EBCDC420, &unk_1BC76EA00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDD4A8);
  }

  return result;
}

unint64_t sub_1BC6CB67C()
{
  result = qword_1EBCDD500;
  if (!qword_1EBCDD500)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDD4E8, &qword_1BC766AC8);
    sub_1BC6CB708();
    sub_1BC6CB990();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDD500);
  }

  return result;
}

unint64_t sub_1BC6CB708()
{
  result = qword_1EBCDD508;
  if (!qword_1EBCDD508)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDD510, &qword_1BC766B28);
    sub_1BC6CB794();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDD508);
  }

  return result;
}

unint64_t sub_1BC6CB794()
{
  result = qword_1EBCDD518;
  if (!qword_1EBCDD518)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDD520, &qword_1BC766B30);
    sub_1BC6CB820();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDD518);
  }

  return result;
}

unint64_t sub_1BC6CB820()
{
  result = qword_1EBCDD528;
  if (!qword_1EBCDD528)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDD530, &qword_1BC766B38);
    sub_1BC6CB8D8();
    sub_1BC633C54(&qword_1EBCDC418, &qword_1EBCDC420, &unk_1BC76EA00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDD528);
  }

  return result;
}

unint64_t sub_1BC6CB8D8()
{
  result = qword_1EBCDD538;
  if (!qword_1EBCDD538)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDD540, &unk_1BC766B40);
    sub_1BC633C54(&qword_1EBCDC6B8, &qword_1EBCDC6C0, &qword_1BC761ED0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDD538);
  }

  return result;
}

unint64_t sub_1BC6CB990()
{
  result = qword_1EBCDD548;
  if (!qword_1EBCDD548)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDD4C8, &qword_1BC766AA0);
    sub_1BC6CBA1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDD548);
  }

  return result;
}

unint64_t sub_1BC6CBA1C()
{
  result = qword_1EBCDD550;
  if (!qword_1EBCDD550)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDD4D0, &unk_1BC766AA8);
    sub_1BC6CBAA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDD550);
  }

  return result;
}

unint64_t sub_1BC6CBAA8()
{
  result = qword_1EBCDD558;
  if (!qword_1EBCDD558)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDC5A0, &qword_1BC766B10);
    sub_1BC6CBB60();
    sub_1BC633C54(&qword_1EBCDC6B8, &qword_1EBCDC6C0, &qword_1BC761ED0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDD558);
  }

  return result;
}

unint64_t sub_1BC6CBB60()
{
  result = qword_1EBCDD560;
  if (!qword_1EBCDD560)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDC590, &unk_1BC766AD0);
    sub_1BC680F34();
    sub_1BC633C54(&qword_1EBCDD568, &qword_1EBCDC598, &qword_1BC761D20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDD560);
  }

  return result;
}

unint64_t sub_1BC6CBC18()
{
  result = qword_1EBCDD570;
  if (!qword_1EBCDD570)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDD4B8, &qword_1BC766A90);
    sub_1BC6CBCA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDD570);
  }

  return result;
}

unint64_t sub_1BC6CBCA4()
{
  result = qword_1EBCDD578;
  if (!qword_1EBCDD578)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDD4F8, &qword_1BC766B20);
    sub_1BC6CBD30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDD578);
  }

  return result;
}

unint64_t sub_1BC6CBD30()
{
  result = qword_1EBCDD580;
  if (!qword_1EBCDD580)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDD4F0, &qword_1BC766B18);
    sub_1BC6CBAA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDD580);
  }

  return result;
}

uint64_t SensitiveParticipantBadge.Kind.hashValue.getter()
{
  v1 = *v0;
  sub_1BC75C700();
  MEMORY[0x1BFB272F0](v1);
  return sub_1BC75C720();
}

uint64_t SensitiveParticipantBadge.init(kind:participant:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  *a3 = *a1;
  v5 = *(type metadata accessor for SensitiveParticipantBadge(0) + 20);
  v6 = sub_1BC759FE0();
  v7 = *(*(v6 - 8) + 32);

  return v7(&a3[v5], a2, v6);
}

uint64_t SensitiveParticipantBadge.body.getter@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v2 = type metadata accessor for _SensitiveParticipantBadge(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD5C0, &qword_1BC766B90);
  v28 = *(v6 - 8);
  v7 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD5C8, &qword_1BC766B98);
  v11 = *(v10 - 8);
  v29 = v10;
  v30 = v11;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v28 - v13;
  v15 = *v1;
  KeyPath = swift_getKeyPath();
  PolicyProperty.init()(&v5[*(v2 + 20)]);
  *v5 = KeyPath;
  *(v5 + 4) = 0;
  v5[*(v2 + 24)] = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC1F8, &qword_1BC761170);
  v17 = sub_1BC759FE0();
  v18 = *(v17 - 8);
  v19 = *(v18 + 72);
  v20 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1BC761600;
  v22 = type metadata accessor for SensitiveParticipantBadge(0);
  (*(v18 + 16))(v21 + v20, &v1[*(v22 + 20)], v17);
  v23 = swift_getKeyPath();
  v24 = sub_1BC6CC3E8(&qword_1EBCDD5D0, type metadata accessor for _SensitiveParticipantBadge);

  View.checkingHistory(of:predicate:)(v21, sub_1BC6A5314, v23, v2, v24);

  sub_1BC6CC38C(v5);
  v32 = v2;
  v33 = v24;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  View.prefetchSensitiveContentPolicy()(v6, OpaqueTypeConformance2);
  (*(v28 + 8))(v9, v6);
  sub_1BC759D90();
  sub_1BC759D80();
  v32 = v6;
  v33 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_1BC6CC3E8(&qword_1EDDCF1C8, MEMORY[0x1E697B4E8]);
  v26 = v29;
  sub_1BC75B210();

  return (*(v30 + 8))(v14, v26);
}

uint64_t sub_1BC6CC38C(uint64_t a1)
{
  v2 = type metadata accessor for _SensitiveParticipantBadge(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BC6CC3E8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BC6CC430@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BC75ABB0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  v9 = *(v1 + 8);
  if (*(v1 + 9) == 1)
  {
    sub_1BC6354C8(*v1, *(v1 + 8));
    if (v9 == 255)
    {
      goto LABEL_8;
    }
  }

  else
  {

    sub_1BC75BF70();
    v10 = sub_1BC75AFC0();
    sub_1BC75A4B0();

    sub_1BC75ABA0();
    swift_getAtKeyPath();
    sub_1BC638C10(v8, v9, 0);
    (*(v4 + 8))(v7, v3);
    v8 = v15;
    LOBYTE(v9) = v16;
    if (v16 == 255)
    {
      goto LABEL_8;
    }
  }

  if (*(v8 + 16))
  {
    v11 = sub_1BC759D00();
    v12 = *(v11 - 8);
    (*(v12 + 16))(a1, v8 + ((*(v12 + 80) + 32) & ~*(v12 + 80)), v11);
    sub_1BC638C1C(v8, v9);
    return (*(v12 + 56))(a1, 0, 1, v11);
  }

  sub_1BC638C1C(v8, v9);
LABEL_8:
  v14 = sub_1BC759D00();
  return (*(*(v14 - 8) + 56))(a1, 1, 1, v14);
}

uint64_t sub_1BC6CC6A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28[1] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD5F8, &qword_1BC766D90);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = (v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5);
  v9 = v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD600, &qword_1BC766D98);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v28 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD608, &qword_1BC766DA0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = v28 - v16;
  sub_1BC6CC430(v28 - v16);
  v18 = sub_1BC759D00();
  v19 = (*(*(v18 - 8) + 48))(v17, 1, v18);
  sub_1BC66008C(v17, &qword_1EBCDD608, &qword_1BC766DA0);
  if (v19 == 1)
  {
    swift_storeEnumTagMultiPayload();
    sub_1BC6CCDC4();
    return sub_1BC75AE00();
  }

  else
  {
    v21 = sub_1BC75B5C0();
    if (*(a1 + *(type metadata accessor for _SensitiveParticipantBadge(0) + 24)))
    {
      v22 = sub_1BC75B540();
    }

    else
    {
      v22 = sub_1BC75B570();
    }

    v23 = v22;
    v24 = (v7 + *(v3 + 36));
    v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD620, &qword_1BC766DA8) + 28);
    v26 = *MEMORY[0x1E69816E0];
    v27 = sub_1BC75B600();
    (*(*(v27 - 8) + 104))(v24 + v25, v26, v27);
    *v24 = swift_getKeyPath();
    *v7 = v21;
    v7[1] = v23;
    sub_1BC6CCF68(v7, v9);
    sub_1BC6CCFD8(v9, v13);
    swift_storeEnumTagMultiPayload();
    sub_1BC6CCDC4();
    sub_1BC75AE00();
    return sub_1BC66008C(v9, &qword_1EBCDD5F8, &qword_1BC766D90);
  }
}

unint64_t sub_1BC6CC9D8()
{
  result = qword_1EBCDD5E0;
  if (!qword_1EBCDD5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDD5E0);
  }

  return result;
}

uint64_t sub_1BC6CCA64@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_1BC75ACD0();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD5D8, &qword_1BC766C00);
  return sub_1BC6CC6A4(v1, a1 + *(v3 + 44));
}

uint64_t sub_1BC6CCAE0()
{
  result = sub_1BC759FE0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SensitiveParticipantBadge.Kind(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SensitiveParticipantBadge.Kind(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_1BC6CCCD4()
{
  sub_1BC6CCD60();
  if (v0 <= 0x3F)
  {
    type metadata accessor for PolicyProperty(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1BC6CCD60()
{
  if (!qword_1EDDCE7F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDC948, &qword_1BC766D80);
    v0 = sub_1BC75A720();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDDCE7F8);
    }
  }
}

unint64_t sub_1BC6CCDC4()
{
  result = qword_1EBCDD610;
  if (!qword_1EBCDD610)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDD5F8, &qword_1BC766D90);
    sub_1BC6CB8D8();
    sub_1BC633C54(&qword_1EBCDD618, &qword_1EBCDD620, &qword_1BC766DA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDD610);
  }

  return result;
}

uint64_t sub_1BC6CCEA0(uint64_t a1)
{
  v2 = sub_1BC75B600();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_1BC75AA40();
}

uint64_t sub_1BC6CCF68(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD5F8, &qword_1BC766D90);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BC6CCFD8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD5F8, &qword_1BC766D90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t SensitiveContentInPreviousCallTipView.ParticipantDetails.participant.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BC759FE0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t SensitiveContentInPreviousCallTipView.ParticipantDetails.init(participant:context:isBlocked:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_1BC759FE0();
  (*(*(v10 - 8) + 32))(a5, a1, v10);
  v11 = type metadata accessor for SensitiveContentInPreviousCallTipView.ParticipantDetails();
  result = (*(*(a4 - 8) + 32))(a5 + *(v11 + 28), a2, a4);
  *(a5 + *(v11 + 32)) = a3;
  return result;
}

uint64_t sub_1BC6CD1CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t *a6@<X8>)
{
  v125 = a5;
  v117 = a2;
  v118 = a3;
  v119 = a6;
  v8 = sub_1BC759FE0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v130 = &v108 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v108 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v133 = &v108 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD630, &qword_1BC766DE8);
  v129 = *(v17 - 8);
  v18 = *(v129 + 64);
  v19 = MEMORY[0x1EEE9AC00](v17 - 8);
  v122 = &v108 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = v20;
  MEMORY[0x1EEE9AC00](v19);
  v124 = &v108 - v21;
  v22 = sub_1BC6360D4(MEMORY[0x1E69E7CC0]);
  v23 = v22;
  v128 = *(a1 + 16);
  if (!v128)
  {
    v44 = v22;
LABEL_64:
    sub_1BC635484(v117);

    result = sub_1BC635484(a4);
    *v119 = v44;
    return result;
  }

  v24 = 0;
  v132 = (v9 + 16);
  v115 = v9 + 32;
  v116 = v15;
  v120 = v9;
  v121 = a1;
  v126 = v8;
  v127 = (v9 + 8);
  v25 = v124;
  while (1)
  {
    if (v24 >= *(a1 + 16))
    {
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
      goto LABEL_71;
    }

    v29 = (*(v129 + 80) + 32) & ~*(v129 + 80);
    sub_1BC660024(a1 + v29 + *(v129 + 72) * v24, v25, &qword_1EBCDD630, &qword_1BC766DE8);
    v30 = *v132;
    v131 = *v132;
    if (!a4)
    {
      break;
    }

    v31 = v133;
    v30(v133, v25, v8);
    v32 = v25;
    v33 = v122;
    sub_1BC660024(v32, v122, &qword_1EBCDD630, &qword_1BC766DE8);
    v34 = swift_allocObject();
    v35 = a4;
    v36 = v125;
    *(v34 + 16) = a4;
    *(v34 + 24) = v36;
    sub_1BC6D1388(v33, v34 + v29);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v134 = v23;
    v39 = sub_1BC639118(v31);
    v40 = *(v23 + 16);
    v41 = (v38 & 1) == 0;
    v42 = v40 + v41;
    if (__OFADD__(v40, v41))
    {
      goto LABEL_66;
    }

    v43 = v38;
    if (*(v23 + 24) >= v42)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v44 = v23;
        if ((v38 & 1) == 0)
        {
          goto LABEL_20;
        }
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD720, &qword_1BC7670E0);
        v63 = sub_1BC75C400();
        v44 = v63;
        if (*(v23 + 16))
        {
          v64 = (v63 + 64);
          v65 = (v23 + 64);
          v66 = ((1 << *(v44 + 32)) + 63) >> 6;
          v109 = v23 + 64;
          if (v44 != v23 || v64 >= &v65[8 * v66])
          {
            memmove(v64, v65, 8 * v66);
          }

          v67 = 0;
          *(v44 + 16) = *(v23 + 16);
          v68 = 1 << *(v23 + 32);
          if (v68 < 64)
          {
            v69 = ~(-1 << v68);
          }

          else
          {
            v69 = -1;
          }

          v70 = v69 & *(v23 + 64);
          v71 = (v68 + 63) >> 6;
          if (v70)
          {
            do
            {
              v72 = __clz(__rbit64(v70));
              v114 = (v70 - 1) & v70;
LABEL_39:
              v75 = v72 | (v67 << 6);
              v76 = *(v23 + 48);
              v113 = *(v120 + 72) * v75;
              v131(v116, v76 + v113, v126);
              v77 = *(v23 + 56);
              v111 = 16 * v75;
              v78 = (v77 + 16 * v75);
              v79 = *v78;
              v112 = v78[1];
              (*(v120 + 32))(*(v44 + 48) + v113, v116, v126);
              v80 = (*(v44 + 56) + v111);
              v81 = v112;
              *v80 = v79;
              v80[1] = v81;
              sub_1BC635800(v79);
              v70 = v114;
            }

            while (v114);
          }

          v73 = v67;
          while (1)
          {
            v67 = v73 + 1;
            if (__OFADD__(v73, 1))
            {
              goto LABEL_70;
            }

            if (v67 >= v71)
            {
              break;
            }

            v74 = *(v109 + 8 * v67);
            ++v73;
            if (v74)
            {
              v72 = __clz(__rbit64(v74));
              v114 = (v74 - 1) & v74;
              goto LABEL_39;
            }
          }
        }

        if ((v43 & 1) == 0)
        {
LABEL_20:
          *(v44 + 8 * (v39 >> 6) + 64) |= 1 << v39;
          v131(*(v44 + 48) + *(v120 + 72) * v39, v133, v126);
          v57 = (*(v44 + 56) + 16 * v39);
          *v57 = sub_1BC6D2864;
          v57[1] = v34;
          v58 = *(v44 + 16);
          v53 = __OFADD__(v58, 1);
          v59 = v58 + 1;
          if (v53)
          {
            goto LABEL_68;
          }

          *(v44 + 16) = v59;
          goto LABEL_4;
        }
      }
    }

    else
    {
      sub_1BC639370(v42, isUniquelyReferenced_nonNull_native);
      v44 = v134;
      v45 = sub_1BC639118(v133);
      if ((v43 & 1) != (v46 & 1))
      {
        goto LABEL_72;
      }

      v39 = v45;
      if ((v43 & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    v26 = (*(v44 + 56) + 16 * v39);
    v27 = *v26;
    v28 = v26[1];
    *v26 = sub_1BC6D2864;
    v26[1] = v34;
    sub_1BC635484(v27);
LABEL_4:
    v8 = v126;
    (*v127)(v133, v126);
    a4 = v35;
    a1 = v121;
    v25 = v124;
LABEL_5:
    ++v24;
    sub_1BC66008C(v25, &qword_1EBCDD630, &qword_1BC766DE8);
    v23 = v44;
    if (v24 == v128)
    {
      goto LABEL_64;
    }
  }

  v47 = v130;
  v30(v130, v25, v8);
  v48 = swift_isUniquelyReferenced_nonNull_native();
  v134 = v23;
  v49 = sub_1BC639118(v47);
  v51 = *(v23 + 16);
  v52 = (v50 & 1) == 0;
  v53 = __OFADD__(v51, v52);
  v54 = v51 + v52;
  if (v53)
  {
    goto LABEL_67;
  }

  if (*(v23 + 24) < v54)
  {
    v55 = v50;
    sub_1BC639370(v54, v48);
    v44 = v134;
    v49 = sub_1BC639118(v130);
    if ((v55 & 1) != (v56 & 1))
    {
      goto LABEL_73;
    }

    a4 = 0;
    if ((v55 & 1) == 0)
    {
LABEL_60:
      *(v44 + 8 * (v49 >> 6) + 64) |= 1 << v49;
      v103 = v49;
      v131(*(v44 + 48) + *(v120 + 72) * v49, v130, v8);
      v104 = (*(v44 + 56) + 16 * v103);
      *v104 = 0;
      v104[1] = 0;
      v105 = *(v44 + 16);
      v53 = __OFADD__(v105, 1);
      v106 = v105 + 1;
      if (v53)
      {
        goto LABEL_69;
      }

      *(v44 + 16) = v106;
      goto LABEL_62;
    }

LABEL_24:
    v60 = (*(v44 + 56) + 16 * v49);
    v61 = *v60;
    v62 = v60[1];
    *v60 = 0;
    v60[1] = 0;
    sub_1BC635484(v61);
LABEL_62:
    (*v127)(v130, v8);
    goto LABEL_5;
  }

  if (v48)
  {
    v44 = v23;
    a4 = 0;
    if ((v50 & 1) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_24;
  }

  LODWORD(v109) = v50;
  v111 = v49;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD720, &qword_1BC7670E0);
  v82 = sub_1BC75C400();
  v44 = v82;
  a4 = 0;
  if (!*(v23 + 16))
  {
LABEL_59:

    v49 = v111;
    a1 = v121;
    v8 = v126;
    if ((v109 & 1) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_24;
  }

  v83 = (v82 + 64);
  v84 = (v23 + 64);
  v85 = ((1 << *(v44 + 32)) + 63) >> 6;
  v108 = v23 + 64;
  if (v44 != v23 || v83 >= &v84[8 * v85])
  {
    memmove(v83, v84, 8 * v85);
  }

  v86 = 0;
  *(v44 + 16) = *(v23 + 16);
  v87 = 1 << *(v23 + 32);
  if (v87 < 64)
  {
    v88 = ~(-1 << v87);
  }

  else
  {
    v88 = -1;
  }

  v89 = v88 & *(v23 + 64);
  v90 = (v87 + 63) >> 6;
  v110 = 0;
  v112 = v90;
  if (v89)
  {
    do
    {
      v91 = __clz(__rbit64(v89));
      v114 = (v89 - 1) & v89;
LABEL_57:
      v94 = v91 | (v86 << 6);
      v95 = *(v23 + 48);
      v96 = v120;
      v113 = *(v120 + 72) * v94;
      v97 = v116;
      v98 = v126;
      v131(v116, v95 + v113, v126);
      v94 *= 16;
      v99 = (*(v23 + 56) + v94);
      v100 = *v99;
      v101 = v99[1];
      (*(v96 + 32))(*(v44 + 48) + v113, v97, v98);
      v102 = (*(v44 + 56) + v94);
      *v102 = v100;
      v102[1] = v101;
      sub_1BC635800(v100);
      a4 = v110;
      v25 = v124;
      v90 = v112;
      v89 = v114;
    }

    while (v114);
  }

  v92 = v86;
  while (1)
  {
    v86 = v92 + 1;
    if (__OFADD__(v92, 1))
    {
      break;
    }

    if (v86 >= v90)
    {
      goto LABEL_59;
    }

    v93 = *(v108 + 8 * v86);
    ++v92;
    if (v93)
    {
      v91 = __clz(__rbit64(v93));
      v114 = (v93 - 1) & v93;
      goto LABEL_57;
    }
  }

LABEL_71:
  __break(1u);
LABEL_72:
  sub_1BC75C640();
  __break(1u);
LABEL_73:
  result = sub_1BC75C640();
  __break(1u);
  return result;
}

uint64_t SensitiveContentInPreviousCallTipView.init<A>(participants:areParticipantsBlocked:onBlockParticipant:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X3>, void *a3@<X8>)
{
  sub_1BC6360D4(MEMORY[0x1E69E7CC0]);
  type metadata accessor for SensitiveContentInPreviousCallTipView.ParticipantDetails();
  sub_1BC75BD70();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD628, &qword_1BC766DE0);
  swift_getWitnessTable();
  sub_1BC75BC60();
  sub_1BC635484(a1);
  sub_1BC635484(a2);

  *a3 = v7;
  return result;
}

uint64_t sub_1BC6CDCA8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for SensitiveContentInPreviousCallTipView.ParticipantDetails();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v23 - v13;
  if (a3)
  {
    (*(v11 + 16))(v14, a2, v10);
    v15 = (*(v11 + 80) + 40) & ~*(v11 + 80);
    v16 = swift_allocObject();
    *(v16 + 2) = a5;
    *(v16 + 3) = a3;
    *(v16 + 4) = a4;
    (*(v11 + 32))(&v16[v15], v14, v10);

    v17 = *a1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *a1;
    v19 = sub_1BC6D28D8;
    v20 = v16;
  }

  else
  {
    v21 = *a1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *a1;
    v19 = 0;
    v20 = 0;
  }

  result = sub_1BC6D0A6C(v19, v20, a2, isUniquelyReferenced_nonNull_native);
  *a1 = v24;
  return result;
}

uint64_t sub_1BC6CDE54@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BC759BB0();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1BC6CDE84()
{
  v1 = sub_1BC75ABB0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 56);
  v7 = *(v0 + 64);
  if (*(v0 + 65) == 1)
  {
    sub_1BC6354C8(*(v0 + 56), *(v0 + 64));
  }

  else
  {

    sub_1BC75BF70();
    v8 = sub_1BC75AFC0();
    sub_1BC75A4B0();

    sub_1BC75ABA0();
    swift_getAtKeyPath();
    sub_1BC638C10(v6, v7, 0);
    (*(v2 + 8))(v5, v1);
    return v10;
  }

  return v6;
}

uint64_t Array<A>.partitionByIsFromMeFlag.getter(void *a1)
{
  v76 = sub_1BC759C40();
  v2 = *(v76 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](v76);
  v75 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v72 = &v53 - v6;
  v74 = sub_1BC759CA0();
  v7 = *(v74 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v74);
  v73 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BC759D00();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v71 = &v53 - v16;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    a1 = sub_1BC6D1344(a1);
    v17 = a1[2];
    if (v17)
    {
      goto LABEL_3;
    }

    return a1;
  }

  v17 = a1[2];
  if (!v17)
  {
    return a1;
  }

LABEL_3:
  v18 = 0;
  v19 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v58 = a1;
  v20 = a1 + v19;
  v22 = *(v11 + 16);
  v21 = v11 + 16;
  v23 = *(v21 + 56);
  v67 = (v7 + 8);
  v68 = v22;
  v65 = (v21 - 8);
  v66 = (v2 + 8);
  v69 = v21;
  v55 = a1 + v19 + v23;
  v79 = v10;
  v57 = v15;
  v64 = a1 + v19;
  v70 = v23;
  v56 = (v21 + 16);
  do
  {
    v24 = v23 * v18;
    v63 = v17;
    v77 = (v23 * (v18 - v17));
    while (1)
    {
      v78 = v18;
      v25 = v71;
      v62 = v20 + v24;
      v68(v71);
      v26 = v73;
      sub_1BC759CF0();
      v27 = v72;
      sub_1BC759C90();
      v28 = *v67;
      (*v67)(v26, v74);
      v29 = v75;
      sub_1BC759C30();
      v30 = sub_1BC6330EC(&qword_1EBCDBF78, MEMORY[0x1E697B3F0]);
      v31 = v76;
      v32 = sub_1BC75C170();
      v33 = *v66;
      (*v66)(v29, v31);
      v33(v27, v31);
      v34 = *v65;
      result = (*v65)(v25, v79);
      if (v32)
      {
        break;
      }

      v18 = v78 + 1;
      v24 += v70;
      v77 += v70;
      v20 = v64;
      if (v78 + 1 >= v63)
      {
        goto LABEL_19;
      }
    }

    v60 = v30;
    v61 = v28;
    v54 = v24;
    v36 = 0;
    v59 = &v64[v70 * (v63 - 1)];
    v37 = v63;
    v38 = v77;
    v18 = v78;
    do
    {
      if (v18 >= --v37)
      {
        v20 = v64;
        goto LABEL_19;
      }

      v39 = v71;
      (v68)(v71, &v59[v36], v79);
      v40 = v73;
      sub_1BC759CF0();
      v41 = v72;
      sub_1BC759C90();
      v61(v40, v74);
      v42 = v41;
      v43 = v75;
      sub_1BC759C30();
      v44 = v76;
      LODWORD(v77) = sub_1BC75C170();
      v45 = v43;
      v18 = v78;
      v33(v45, v44);
      v33(v42, v44);
      result = v34(v39, v79);
      v38 += v70;
      v36 -= v70;
    }

    while ((v77 & 1) != 0);
    v17 = v37;
    v46 = v57;
    v47 = v62;
    v77 = *v56;
    (v77)(v57, v62, v79);
    v23 = v70;
    v48 = v70 * v63 + v36;
    if (v54 < v48 || v47 >= &v55[v36 + v70 * v63])
    {
      v20 = v64;
      v49 = v79;
      swift_arrayInitWithTakeFrontToBack();
    }

    else
    {
      v49 = v79;
      v20 = v64;
      if (v38)
      {
        swift_arrayInitWithTakeBackToFront();
      }
    }

    result = (v77)(v48 + v20, v46, v49);
    ++v18;
  }

  while (v18 < v17);
LABEL_19:
  a1 = v58;
  v50 = v58[2];
  if (v50 < v18)
  {
    __break(1u);
  }

  else if ((v18 & 0x8000000000000000) == 0)
  {
    if (v18)
    {
      if (v50 != v18)
      {
        sub_1BC6D11A4(v58, v20, 0, (2 * v18) | 1);
        v52 = v51;

        return v52;
      }
    }

    return a1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1BC6CE62C()
{
  v1 = type metadata accessor for _SensitiveContentInPreviousCallTipView();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  result = MEMORY[0x1EEE9AC00](v1 - 8);
  v5 = 0;
  v6 = *(v0 + *(result + 48));
  v7 = 1 << *(v6 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v6 + 64);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = v5;
LABEL_10:
    v12 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    if (*(*(v6 + 56) + ((v11 << 10) | (16 * v12))))
    {
      v13 = sub_1BC6CDE84();
      if (v14 == -1)
      {
        v17 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v15 = v14;
        v16 = v13;
        v17 = Array<A>.partitionByIsFromMeFlag.getter(v13);
        sub_1BC638C1C(v16, v15);
      }

      v18 = *(v17 + 16);

      if (v18)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD710, &unk_1BC767080);
        v19 = swift_allocObject();
        *(v19 + 16) = xmmword_1BC75F0C0;
        v20 = sub_1BC72931C();
        v21 = v20[1];
        v60 = *v20;

        v22._object = 0x80000001BC772FA0;
        v22._countAndFlagsBits = 0xD000000000000015;
        SCLocalizedStringKey.init(stringLiteral:)(v22);
        v61 = v63;
        v62 = v64;
        v23 = sub_1BC651E78(&v61);
        v58 = v24;
        v59 = v23;
        v26 = v25;
        v28 = v27;
        sub_1BC6D1EF8(v0, &v57 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
        v29 = (*(v2 + 80) + 16) & ~*(v2 + 80);
        v30 = swift_allocObject();
        sub_1BC6D1F5C(&v57 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v30 + v29);
        v31 = swift_allocObject();
        *(v31 + 16) = sub_1BC6D2200;
        *(v31 + 24) = v30;
        LOBYTE(v61) = v28 & 1;
        v32 = v59;
        *(v19 + 32) = v60;
        *(v19 + 40) = v21;
        *(v19 + 48) = v32;
        *(v19 + 56) = v26;
        *(v19 + 64) = v28 & 1;
        *(v19 + 72) = v58;
        *(v19 + 80) = sub_1BC68CD08;
        *(v19 + 88) = v31;
        v33 = sub_1BC729328();
        v34 = v33[1];
        v60 = *v33;

        v35 = sub_1BC6CFD08();
        v59 = v36;
        LOBYTE(v26) = v37;
        v39 = v38;
        sub_1BC6D1EF8(v0, &v57 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
        v40 = swift_allocObject();
        sub_1BC6D1F5C(&v57 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v40 + v29);
        v41 = swift_allocObject();
        result = v19;
        *(v41 + 16) = sub_1BC6D2220;
        *(v41 + 24) = v40;
        LOBYTE(v63) = v26 & 1;
        v42 = v59;
        *(v19 + 96) = v60;
        *(v19 + 104) = v34;
        *(v19 + 112) = v35;
        *(v19 + 120) = v42;
        *(v19 + 128) = v26 & 1;
        *(v19 + 136) = v39;
        *(v19 + 144) = sub_1BC6D2C10;
        *(v19 + 152) = v41;
      }

      else
      {
LABEL_16:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD710, &unk_1BC767080);
        v43 = swift_allocObject();
        *(v43 + 16) = xmmword_1BC761600;
        v44 = sub_1BC72931C();
        v45 = v44[1];
        v60 = *v44;

        v46._object = 0x80000001BC772FA0;
        v46._countAndFlagsBits = 0xD000000000000015;
        SCLocalizedStringKey.init(stringLiteral:)(v46);
        v61 = v63;
        v62 = v64;
        v47 = sub_1BC651E78(&v61);
        v49 = v48;
        v51 = v50;
        v53 = v52;
        sub_1BC6D1EF8(v0, &v57 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
        v54 = (*(v2 + 80) + 16) & ~*(v2 + 80);
        v55 = swift_allocObject();
        sub_1BC6D1F5C(&v57 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v55 + v54);
        v56 = swift_allocObject();
        result = v43;
        *(v56 + 16) = sub_1BC6D2C0C;
        *(v56 + 24) = v55;
        LOBYTE(v63) = v51 & 1;
        *(v43 + 32) = v60;
        *(v43 + 40) = v45;
        *(v43 + 48) = v47;
        *(v43 + 56) = v49;
        *(v43 + 64) = v51 & 1;
        *(v43 + 72) = v53;
        *(v43 + 80) = sub_1BC6D2C10;
        *(v43 + 88) = v56;
      }

      return result;
    }
  }

  while (1)
  {
    v11 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v11 >= v10)
    {
      goto LABEL_16;
    }

    v9 = *(v6 + 64 + 8 * v11);
    ++v5;
    if (v9)
    {
      v5 = v11;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1BC6CF3FC(uint64_t a1)
{
  v2 = type metadata accessor for _SensitiveContentInPreviousCallTipView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = sub_1BC6CDE84();
  if (v6 == -1)
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v7 = v6;
    v8 = v5;
    v9 = Array<A>.partitionByIsFromMeFlag.getter(v5);
    sub_1BC638C1C(v8, v7);
  }

  v13[1] = v9;
  sub_1BC6D1EF8(a1, v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v11 = swift_allocObject();
  sub_1BC6D1F5C(v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC8E8, &unk_1BC762EC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD6F0, &qword_1BC767040);
  sub_1BC633C54(&qword_1EBCDD6F8, &qword_1EBCDC8E8, &unk_1BC762EC0);
  sub_1BC635BB4();
  sub_1BC6330EC(&qword_1EBCDD700, MEMORY[0x1E697B460]);
  return sub_1BC75B780();
}

uint64_t sub_1BC6CF60C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v54 = a3;
  v5 = sub_1BC759D00();
  v52 = *(v5 - 8);
  v53 = v5;
  v6 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v51 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBAE8, &qword_1BC75EE50);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v50 = &v47 - v9;
  v10 = type metadata accessor for SCLocalizedStringKey.StringInterpolation();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCDE1C0, &qword_1BC761720);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v49 = &v47 - v17;
  v18 = sub_1BC759FE0();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v47 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(a2 + *(type metadata accessor for _SensitiveContentInPreviousCallTipView() + 40));
  v24 = a1;
  sub_1BC759CC0();
  if (!*(v23 + 16) || (v25 = sub_1BC639118(v22), (v26 & 1) == 0))
  {
    (*(v19 + 8))(v22, v18);
    goto LABEL_6;
  }

  v27 = (*(v23 + 56) + 16 * v25);
  v28 = *v27;
  v29 = v27[1];
  sub_1BC635800(*v27);
  (*(v19 + 8))(v22, v18);
  if (!v28)
  {
LABEL_6:
    v45 = 1;
    v44 = v54;
    return (*(v15 + 56))(v44, v45, 1, v14);
  }

  SCLocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v30._countAndFlagsBits = 0;
  v30._object = 0xE000000000000000;
  v48 = v29;
  SCLocalizedStringKey.StringInterpolation.appendLiteral(_:)(v30);
  swift_getKeyPath();
  v31 = v24;
  sub_1BC759CD0();

  SCLocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v56);

  v32._countAndFlagsBits = 0x4F4C425F50495420;
  v32._object = 0xEE00454E4F5F4B43;
  SCLocalizedStringKey.StringInterpolation.appendLiteral(_:)(v32);
  SCLocalizedStringKey.init(stringInterpolation:)(v13, &v56._countAndFlagsBits);
  v55 = v56;
  v33 = v50;
  sub_1BC75A630();
  v34 = sub_1BC75A650();
  (*(*(v34 - 8) + 56))(v33, 0, 1, v34);
  v36 = v51;
  v35 = v52;
  v37 = v31;
  v38 = v53;
  (*(v52 + 16))(v51, v37, v53);
  v39 = (*(v35 + 80) + 32) & ~*(v35 + 80);
  v40 = swift_allocObject();
  v41 = v48;
  *(v40 + 16) = v28;
  *(v40 + 24) = v41;
  (*(v35 + 32))(v40 + v39, v36, v38);
  v42 = v49;
  sub_1BC651F70(&v55, v33);
  v43 = v54;
  (*(v15 + 32))(v54, v42, v14);
  v44 = v43;
  v45 = 0;
  return (*(v15 + 56))(v44, v45, 1, v14);
}

uint64_t sub_1BC6CFAB8(void (*a1)(char *))
{
  v2 = sub_1BC759FE0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BC759CC0();
  a1(v6);
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_1BC6CFB9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 48) = a4;
  sub_1BC75BDE0();
  *(v4 + 56) = sub_1BC75BDD0();
  v6 = sub_1BC75BD80();

  return MEMORY[0x1EEE6DFA0](sub_1BC6CFC34, v6, v5);
}

uint64_t sub_1BC6CFC34()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);

  v3 = *(v2 + 40);
  v4 = *(v2 + 48);
  *(v0 + 16) = v3;
  *(v0 + 24) = v4;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC8A0, &qword_1BC767020);
  sub_1BC75B640();
  v5 = *(v0 + 64);
  *(v0 + 32) = v3;
  *(v0 + 40) = v4;
  *(v0 + 65) = (v5 & 1) == 0;
  sub_1BC75B650();

  v6 = *(v0 + 8);

  return v6();
}

char *sub_1BC6CFD08()
{
  v0 = sub_1BC759D00();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SCLocalizedStringKey.StringInterpolation();
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v50 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v50 - v13;
  v15 = sub_1BC6CDE84();
  if (v16 == -1)
  {
    v19 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v17 = v16;
    v18 = v15;
    v19 = Array<A>.partitionByIsFromMeFlag.getter(v15);
    sub_1BC638C1C(v18, v17);
  }

  v20 = *(v19 + 16);

  switch(v20)
  {
    case 2uLL:
      SCLocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v29._countAndFlagsBits = 0;
      v29._object = 0xE000000000000000;
      SCLocalizedStringKey.StringInterpolation.appendLiteral(_:)(v29);
      result = sub_1BC6CDE84();
      if (v30 != 0xFF)
      {
        v9 = v30;
        v31 = result;
        v32 = Array<A>.partitionByIsFromMeFlag.getter(result);
        result = sub_1BC638C1C(v31, v9);
        if (!*(v32 + 16))
        {
LABEL_22:
          __break(1u);
          goto LABEL_23;
        }

LABEL_13:
        v20 = (*(v1 + 80) + 32) & ~*(v1 + 80);
        v52 = *(v1 + 16);
        v52(v4, v32 + v20, v0);

        swift_getKeyPath();
        sub_1BC759CD0();

        v51 = *(v1 + 8);
        v51(v4, v0);
        SCLocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v54);

        v33._countAndFlagsBits = 32;
        v33._object = 0xE100000000000000;
        SCLocalizedStringKey.StringInterpolation.appendLiteral(_:)(v33);
        result = sub_1BC6CDE84();
        if (v34 != -1)
        {
          v35 = v34;
          v36 = result;
          v37 = Array<A>.partitionByIsFromMeFlag.getter(result);
          result = sub_1BC638C1C(v36, v35);
LABEL_26:
          if (*(v37 + 16) < 2uLL)
          {
            __break(1u);
            goto LABEL_34;
          }

          v52(v4, v37 + v20 + *(v1 + 72), v0);

          swift_getKeyPath();
          sub_1BC759CD0();

          v51(v4, v0);
          SCLocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v54);

          v48._countAndFlagsBits = 0x4F4C425F50495420;
          v48._object = 0xEE004F57545F4B43;
          SCLocalizedStringKey.StringInterpolation.appendLiteral(_:)(v48);
          v28 = v12;
LABEL_31:
          SCLocalizedStringKey.init(stringInterpolation:)(v28, &v54._countAndFlagsBits);
          goto LABEL_32;
        }

LABEL_25:
        v37 = MEMORY[0x1E69E7CC0];
        goto LABEL_26;
      }

LABEL_21:
      v32 = MEMORY[0x1E69E7CC0];
      if (!*(MEMORY[0x1E69E7CC0] + 16))
      {
        goto LABEL_22;
      }

      goto LABEL_13;
    case 1uLL:
      SCLocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v22._countAndFlagsBits = 0;
      v22._object = 0xE000000000000000;
      SCLocalizedStringKey.StringInterpolation.appendLiteral(_:)(v22);
      result = sub_1BC6CDE84();
      if (v24 == -1)
      {
        v26 = MEMORY[0x1E69E7CC0];
        if (*(MEMORY[0x1E69E7CC0] + 16))
        {
          goto LABEL_10;
        }
      }

      else
      {
        v25 = v24;
        v9 = result;
        v26 = Array<A>.partitionByIsFromMeFlag.getter(result);
        result = sub_1BC638C1C(v9, v25);
        if (*(v26 + 16))
        {
LABEL_10:
          (*(v1 + 16))(v4, v26 + ((*(v1 + 80) + 32) & ~*(v1 + 80)), v0);

          swift_getKeyPath();
          sub_1BC759CD0();

          (*(v1 + 8))(v4, v0);
          SCLocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v54);

          v27._countAndFlagsBits = 0x4F4C425F50495420;
          v27._object = 0xEE00454E4F5F4B43;
          SCLocalizedStringKey.StringInterpolation.appendLiteral(_:)(v27);
          v28 = v14;
          goto LABEL_31;
        }
      }

      __break(1u);
      goto LABEL_21;
    case 0uLL:
      v21._countAndFlagsBits = 0x6874206B636F6C42;
      v21._object = 0xEE006C6C61206D65;
      SCLocalizedStringKey.init(stringLiteral:)(v21);
LABEL_32:
      v53 = v54;
      return sub_1BC651E78(&v53._countAndFlagsBits);
  }

  SCLocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v38._countAndFlagsBits = 0;
  v38._object = 0xE000000000000000;
  SCLocalizedStringKey.StringInterpolation.appendLiteral(_:)(v38);
  result = sub_1BC6CDE84();
  if (v39 != 0xFF)
  {
    v12 = v39;
    v40 = result;
    v41 = Array<A>.partitionByIsFromMeFlag.getter(result);
    result = sub_1BC638C1C(v40, v12);
    if (*(v41 + 16))
    {
      goto LABEL_17;
    }

    goto LABEL_24;
  }

LABEL_23:
  v41 = MEMORY[0x1E69E7CC0];
  if (!*(MEMORY[0x1E69E7CC0] + 16))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  v42 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v52 = *(v1 + 16);
  v52(v4, v41 + v42, v0);

  swift_getKeyPath();
  sub_1BC759CD0();

  v51 = *(v1 + 8);
  v51(v4, v0);
  SCLocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v54);

  v43._countAndFlagsBits = 32;
  v43._object = 0xE100000000000000;
  SCLocalizedStringKey.StringInterpolation.appendLiteral(_:)(v43);
  result = sub_1BC6CDE84();
  if (v44 == -1)
  {
    v47 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v45 = v44;
    v46 = result;
    v47 = Array<A>.partitionByIsFromMeFlag.getter(result);
    result = sub_1BC638C1C(v46, v45);
  }

  if (*(v47 + 16) >= 2uLL)
  {
    v52(v4, v47 + v42 + *(v1 + 72), v0);

    swift_getKeyPath();
    sub_1BC759CD0();

    v51(v4, v0);
    SCLocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v54);

    v49._countAndFlagsBits = 0x4F4C425F50495420;
    v49._object = 0xEF45524F4D5F4B43;
    SCLocalizedStringKey.StringInterpolation.appendLiteral(_:)(v49);
    v28 = v9;
    goto LABEL_31;
  }

LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_1BC6D041C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for _SensitiveContentInPreviousCallTipView();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBB20, &qword_1BC75F0D0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v18 - v10;
  v12 = sub_1BC75BE10();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  sub_1BC6D1EF8(a1, &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1BC75BDE0();
  v13 = sub_1BC75BDD0();
  v14 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v15 = swift_allocObject();
  v16 = MEMORY[0x1E69E85E0];
  *(v15 + 16) = v13;
  *(v15 + 24) = v16;
  sub_1BC6D1F5C(&v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14);
  sub_1BC652910(0, 0, v11, a3, v15);
}

uint64_t sub_1BC6D05D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a4;
  v5 = sub_1BC759FE0();
  v4[7] = v5;
  v6 = *(v5 - 8);
  v4[8] = v6;
  v7 = *(v6 + 64) + 15;
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();
  v8 = sub_1BC759D00();
  v4[11] = v8;
  v9 = *(v8 - 8);
  v4[12] = v9;
  v10 = *(v9 + 64) + 15;
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  sub_1BC75BDE0();
  v4[15] = sub_1BC75BDD0();
  v12 = sub_1BC75BD80();

  return MEMORY[0x1EEE6DFA0](sub_1BC6D0738, v12, v11);
}

uint64_t sub_1BC6D0738()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 48);

  v3 = sub_1BC6CDE84();
  if (v4 == -1)
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v5 = v4;
    v6 = v3;
    v7 = Array<A>.partitionByIsFromMeFlag.getter(v3);
    sub_1BC638C1C(v6, v5);
  }

  v8 = *(v7 + 16);

  v9 = *(v0 + 48);
  if (v8 >= 2)
  {
    v10 = *(v9 + 24);
    v11 = *(v9 + 32);
    *(v0 + 16) = v10;
    *(v0 + 24) = v11;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC8A0, &qword_1BC767020);
    sub_1BC75B640();
    v12 = *(v0 + 128);
    *(v0 + 32) = v10;
    *(v0 + 40) = v11;
    *(v0 + 129) = (v12 & 1) == 0;
    sub_1BC75B650();

    goto LABEL_16;
  }

  v13 = sub_1BC6CDE84();
  if (v14 == -1)
  {
    v17 = MEMORY[0x1E69E7CC0];
    if (*(MEMORY[0x1E69E7CC0] + 16))
    {
      goto LABEL_8;
    }
  }

  else
  {
    v15 = v14;
    v16 = v13;
    v17 = Array<A>.partitionByIsFromMeFlag.getter(v13);
    sub_1BC638C1C(v16, v15);
    if (*(v17 + 16))
    {
LABEL_8:
      v18 = *(v0 + 104);
      v19 = *(v0 + 112);
      v20 = *(v0 + 88);
      v21 = *(v0 + 96);
      v22 = *(v0 + 80);
      v23 = *(v0 + 48);
      (*(v21 + 16))(v18, v17 + ((*(v21 + 80) + 32) & ~*(v21 + 80)), v20);

      (*(v21 + 32))(v19, v18, v20);
      v24 = *(v23 + *(type metadata accessor for _SensitiveContentInPreviousCallTipView() + 40));
      sub_1BC759CC0();
      if (*(v24 + 16) && (v25 = sub_1BC639118(*(v0 + 80)), (v26 & 1) != 0))
      {
        v27 = *(v0 + 80);
        v28 = *(v0 + 56);
        v29 = *(v0 + 64);
        v30 = (*(v24 + 56) + 16 * v25);
        v31 = *v30;
        v32 = v30[1];
        sub_1BC635800(*v30);
        v33 = *(v29 + 8);
        v33(v27, v28);
        v34 = *(v0 + 112);
        v35 = *(v0 + 88);
        v36 = *(v0 + 96);
        if (v31)
        {
          v37 = *(v0 + 72);
          v38 = *(v0 + 56);
          v48 = *(v0 + 112);
          sub_1BC759CC0();
          v31(v37);
          sub_1BC635484(v31);
          v33(v37, v38);
          (*(v36 + 8))(v48, v35);
        }

        else
        {
          (*(v36 + 8))(*(v0 + 112), v35);
        }
      }

      else
      {
        v39 = *(v0 + 112);
        v40 = *(v0 + 88);
        v41 = *(v0 + 96);
        (*(*(v0 + 64) + 8))(*(v0 + 80), *(v0 + 56));
        (*(v41 + 8))(v39, v40);
      }

      goto LABEL_16;
    }
  }

LABEL_16:
  v43 = *(v0 + 104);
  v42 = *(v0 + 112);
  v45 = *(v0 + 72);
  v44 = *(v0 + 80);

  v46 = *(v0 + 8);

  return v46();
}

uint64_t sub_1BC6D0A6C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v32 = a1;
  v9 = sub_1BC759FE0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v4;
  v16 = sub_1BC639118(a3);
  v17 = *(v14 + 16);
  v18 = (v15 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_15;
  }

  v20 = v15;
  v21 = *(v14 + 24);
  if (v21 < v19 || (a4 & 1) == 0)
  {
    if (v21 >= v19 && (a4 & 1) == 0)
    {
      sub_1BC6D0D08();
      goto LABEL_9;
    }

    sub_1BC639370(v19, a4 & 1);
    v22 = *v5;
    v23 = sub_1BC639118(a3);
    if ((v20 & 1) == (v24 & 1))
    {
      v16 = v23;
      goto LABEL_9;
    }

LABEL_15:
    result = sub_1BC75C640();
    __break(1u);
    return result;
  }

LABEL_9:
  v25 = v32;
  v26 = *v5;
  if (v20)
  {
    v27 = (v26[7] + 16 * v16);
    v28 = *v27;
    v29 = v27[1];
    *v27 = v32;
    v27[1] = a2;

    return sub_1BC635484(v28);
  }

  else
  {
    (*(v10 + 16))(v13, a3, v9);
    return sub_1BC6D0C48(v16, v13, v25, a2, v26);
  }
}

uint64_t sub_1BC6D0C48(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a5[6];
  v11 = sub_1BC759FE0();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a2, v11);
  v13 = (a5[7] + 16 * a1);
  *v13 = a3;
  v13[1] = a4;
  v14 = a5[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v16;
  }

  return result;
}

char *sub_1BC6D0D08()
{
  v1 = v0;
  v2 = sub_1BC759FE0();
  v3 = *(v2 - 8);
  v39 = v2;
  v40 = v3;
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v38 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD720, &qword_1BC7670E0);
  v6 = *v0;
  v7 = sub_1BC75C400();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 64);
    v10 = (v6 + 64);
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    v33 = v1;
    v34 = v6 + 64;
    if (v8 != v6 || result >= &v10[8 * v11])
    {
      result = memmove(result, v10, 8 * v11);
    }

    v12 = 0;
    v13 = *(v6 + 16);
    v41 = v8;
    *(v8 + 16) = v13;
    v14 = 1 << *(v6 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v6 + 64);
    v17 = (v14 + 63) >> 6;
    v35 = v40 + 32;
    v36 = v40 + 16;
    v37 = v6;
    if (v16)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v42 = (v16 - 1) & v16;
LABEL_14:
        v21 = v18 | (v12 << 6);
        v22 = v39;
        v23 = v40;
        v24 = *(v40 + 72) * v21;
        v25 = v38;
        (*(v40 + 16))(v38, *(v6 + 48) + v24, v39);
        v26 = *(v6 + 56);
        v27 = 16 * v21;
        v28 = (v26 + 16 * v21);
        v29 = *v28;
        v30 = v28[1];
        v31 = v41;
        (*(v23 + 32))(*(v41 + 48) + v24, v25, v22);
        v32 = (*(v31 + 56) + v27);
        v6 = v37;
        *v32 = v29;
        v32[1] = v30;
        result = sub_1BC635800(v29);
        v16 = v42;
      }

      while (v42);
    }

    v19 = v12;
    v8 = v41;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v1 = v33;
        goto LABEL_18;
      }

      v20 = *(v34 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v42 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

size_t sub_1BC6D0F94(size_t a1, int64_t a2, char a3)
{
  result = sub_1BC6D0FB4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1BC6D0FB4(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD728, &qword_1BC7670E8);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD630, &qword_1BC766DE8) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD630, &qword_1BC766DE8) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}