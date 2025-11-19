BOOL sub_217F237C8(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v8 = *a2;
  v7 = *(a2 + 8);
  v9 = *(a2 + 16);
  v10 = *(a2 + 24);
  v22[0] = *a1;
  v22[1] = v4;
  v22[2] = v5;
  v23 = v6;
  v24 = v8;
  v25 = v7;
  v26 = v9;
  v27 = v10;
  if (v6 <= 3)
  {
    if (v6 <= 1)
    {
      if (!v6)
      {
        if (!v10)
        {
          goto LABEL_30;
        }

        goto LABEL_31;
      }

      if (v10 != 1)
      {
LABEL_31:
        v12 = v8;
        goto LABEL_32;
      }

LABEL_30:
      sub_217F2BC84(v22, &qword_27CBF7328, &unk_217F5A070);
      return v3 == v8;
    }

    if (v6 == 2)
    {
      if (v10 != 2)
      {
        goto LABEL_31;
      }

      goto LABEL_30;
    }

    if (v10 == 3)
    {
      if (v3 != v8)
      {
        sub_217F2BB04(v8, v7, v9, 3);
        v12 = v3;
        v7 = v4;
        v9 = v5;
        LOBYTE(v10) = 3;
        goto LABEL_32;
      }

      v14 = v7;
      sub_217F2BB04(v3, v7, v9, 3);
      sub_217F2BB04(v3, v4, v5, 3);
      v13 = sub_217ED3610(v4, v14);
LABEL_27:
      v15 = v13;
      sub_217F2BC84(v22, &qword_27CBF7328, &unk_217F5A070);
      return v15 & 1;
    }

    goto LABEL_28;
  }

  if (v6 > 5)
  {
    if (v6 == 6)
    {
      if (v10 != 6)
      {
        goto LABEL_31;
      }
    }

    else if (v10 != 7)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  if (v6 != 4)
  {
    if (v10 == 5)
    {
      sub_217F2BB04(v8, v7, v9, 5);
      sub_217F2BB04(v3, v4, v5, 5);
      v13 = sub_217ED3744(v3, v8);
      goto LABEL_27;
    }

LABEL_28:
    v17 = v9;
    v18 = v7;
    v19 = v10;

    LOBYTE(v10) = v19;
    v7 = v18;
    v9 = v17;
    goto LABEL_31;
  }

  if (v10 != 4)
  {
    goto LABEL_28;
  }

  if (*&v3 != *&v8 || v4 != v7)
  {
    sub_217F2BB04(v8, v7, v9, 4);
    v12 = v3;
    v7 = v4;
    v9 = v5;
    LOBYTE(v10) = 4;
LABEL_32:
    sub_217F2BB04(v12, v7, v9, v10);
    sub_217F2BC84(v22, &qword_27CBF7328, &unk_217F5A070);
    return 0;
  }

  v20 = v9;
  sub_217F2BB04(v8, v4, v9, 4);
  sub_217F2BB04(v3, v4, v5, 4);
  sub_217F2BB04(v8, v4, v20, 4);
  sub_217F2BB04(v3, v4, v5, 4);
  v21 = sub_217ED6368(v5, v20);
  sub_217F2BC84(v22, &qword_27CBF7328, &unk_217F5A070);
  sub_217F2BB34(v8, v4, v20, 4);
  sub_217F2BB34(v3, v4, v5, 4);
  return (v21 & 1) != 0;
}

unint64_t sub_217F23AAC()
{
  result = qword_280C27860;
  if (!qword_280C27860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C27860);
  }

  return result;
}

unint64_t sub_217F23B00()
{
  result = qword_280C277B8;
  if (!qword_280C277B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C277B8);
  }

  return result;
}

unint64_t sub_217F23B54()
{
  result = qword_27CBF7258;
  if (!qword_27CBF7258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF7258);
  }

  return result;
}

unint64_t sub_217F23BA8()
{
  result = qword_280C277E8;
  if (!qword_280C277E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C277E8);
  }

  return result;
}

unint64_t sub_217F23BFC()
{
  result = qword_280C27800;
  if (!qword_280C27800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C27800);
  }

  return result;
}

unint64_t sub_217F23C50()
{
  result = qword_280C277D0;
  if (!qword_280C277D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C277D0);
  }

  return result;
}

unint64_t sub_217F23CA4()
{
  result = qword_280C27848;
  if (!qword_280C27848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C27848);
  }

  return result;
}

unint64_t sub_217F23CF8()
{
  result = qword_280C27818;
  if (!qword_280C27818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C27818);
  }

  return result;
}

unint64_t sub_217F23D4C()
{
  result = qword_280C27830;
  if (!qword_280C27830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C27830);
  }

  return result;
}

uint64_t sub_217F23DA0(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CBF6F28, &qword_217F52830);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_217F23E24(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CBF5F68, &qword_217F52230);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_217F23E94()
{
  v1 = *(v0 + 72);
  v3 = *(v0 + 80);
  return sub_217F08A10(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));
}

unint64_t sub_217F23EEC()
{
  result = qword_280C28818;
  if (!qword_280C28818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C28818);
  }

  return result;
}

uint64_t sub_217F24054(uint64_t a1, uint64_t a2, uint64_t *a3, double *a4, uint64_t *a5, uint64_t a6)
{
  v7 = v6;
  v60 = a6;
  v61 = a4;
  v62 = a5;
  v63 = a3;
  v9 = a1;
  v10 = a1 + 56;
  v11 = 1 << *(a1 + 32);
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  else
  {
    v12 = -1;
  }

  v13 = v12 & *(a1 + 56);
  v14 = (v11 + 63) >> 6;

  v16 = 0;
  v56 = a2;
  v57 = result;
  v54 = v14;
  v55 = v10;
  while (1)
  {
    do
    {
LABEL_6:
      if (v13)
      {
        v17 = v13;
      }

      else
      {
        do
        {
          v18 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
            goto LABEL_36;
          }

          if (v18 >= v14)
          {
          }

          v17 = *(v10 + 8 * v18);
          ++v16;
        }

        while (!v17);
        v16 = v18;
      }

      v13 = (v17 - 1) & v17;
    }

    while (!*(a2 + 16));
    v19 = (*(v9 + 48) + ((v16 << 10) | (16 * __clz(__rbit64(v17)))));
    v20 = *v19;
    v21 = v19[1];

    v22 = sub_217E8E88C(v20, v21);
    if (v23)
    {
      break;
    }
  }

  v58 = v21;
  v59 = v13;
  v24 = *(*(a2 + 56) + 8 * v22);
  v25 = v24 + 64;
  v26 = 1 << *(v24 + 32);
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  else
  {
    v27 = -1;
  }

  v28 = v27 & *(v24 + 64);
  v29 = (v26 + 63) >> 6;
  v64 = v24;
  result = swift_bridgeObjectRetain_n();
  v31 = 0;
  while (v28)
  {
LABEL_24:
    v66 = &v53;
    v33 = __clz(__rbit64(v28));
    v28 &= v28 - 1;
    v34 = v33 | (v31 << 6);
    v35 = *(*(v64 + 56) + 8 * v34);
    v36 = (*(v64 + 48) + 16 * v34);
    v37 = v36[1];
    v38 = *v63;
    v65 = *v36;
    v67[0] = v65;
    v67[1] = v37;
    MEMORY[0x28223BE20](result, v30);
    v52[2] = v67;

    v39 = sub_217F04BF8(sub_217F2C178, v52, v38);

    if (v39)
    {
    }

    else
    {
      v40 = v62;
      v41 = v35 * *v61;
      v42 = *v62;
      if (!*(*v62 + 16))
      {
        v66 = v7;
        goto LABEL_32;
      }

      v43 = sub_217E8E88C(v65, v37);
      v44 = *v40;
      if (v45)
      {
        if (*(*(v42 + 56) + 8 * v43) > v41)
        {
          v41 = *(*(v42 + 56) + 8 * v43);
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v67[0] = *v40;
        *v40 = 0x8000000000000000;
        sub_217F1A0A8(v65, v37, isUniquelyReferenced_nonNull_native, v41);
        v47 = *v40;
        *v40 = v67[0];
      }

      else
      {
        v66 = v7;
LABEL_32:
        v48 = swift_isUniquelyReferenced_nonNull_native();
        v49 = v62;
        v67[0] = *v62;
        *v62 = 0x8000000000000000;
        v50 = v65;
        sub_217F1A0A8(v65, v37, v48, v41);
        v51 = *v49;
        *v49 = v67[0];

        sub_217F194B0(v67, v50, v37);

        v7 = v66;
      }
    }
  }

  while (1)
  {
    v32 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      break;
    }

    if (v32 >= v29)
    {

      a2 = v56;
      v9 = v57;
      v14 = v54;
      v10 = v55;
      v13 = v59;
      goto LABEL_6;
    }

    v28 = *(v25 + 8 * v32);
    ++v31;
    if (v28)
    {
      v31 = v32;
      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

uint64_t sub_217F24400(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  v5 = a1 + 64;
  v6 = 1 << *(a1 + 32);
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(a1 + 64);
  v9 = (v6 + 63) >> 6;
  v49 = a3;
  v10 = a3 + 56;

  v12 = 0;
  v38 = result;
  v37 = v5;
  while (v8)
  {
LABEL_12:
    v15 = (*(v4 + 48) + ((v12 << 11) | (32 * __clz(__rbit64(v8)))));
    v16 = *(v15 + 13);
    v8 &= v8 - 1;
    *v46 = *v15;
    *&v46[13] = v16;
    sub_217E98168(v46, v43);
    if (v46[25])
    {
      v17 = 256;
    }

    else
    {
      v17 = 0;
    }

    v18 = v3 & 0xFFFFFF0000000000 | v46[24] | v17;
    v19 = 0x10000;
    if (!v46[26])
    {
      v19 = 0;
    }

    v20 = 0x1000000;
    if (!v46[27])
    {
      v20 = 0;
    }

    v21 = v18 | v19 | v20;
    v22 = 0x100000000;
    if (!v46[28])
    {
      v22 = 0;
    }

    v40 = v21 | v22;
    v23 = sub_217F180A0(v45, *v46, *&v46[8], v21 | v22, *&v46[16]);
    v13 = v23;
    if (*v24 && *(*v24 + 16))
    {
      v39 = v23;
      v25 = 1 << *(v49 + 32);
      if (v25 < 64)
      {
        v26 = ~(-1 << v25);
      }

      else
      {
        v26 = -1;
      }

      v27 = v26 & *(v49 + 56);
      v28 = (v25 + 63) >> 6;

      for (i = 0; v27; result = sub_217F2BC84(v43, &qword_27CBF7300, &qword_217F5A018))
      {
        v30 = i;
LABEL_32:
        v31 = __clz(__rbit64(v27));
        v27 &= v27 - 1;
        v32 = (*(v49 + 48) + 96 * (v31 | (v30 << 6)));
        v33 = v32[1];
        v47[0] = *v32;
        v47[1] = v33;
        v35 = v32[3];
        v34 = v32[4];
        v36 = v32[2];
        *(v48 + 9) = *(v32 + 73);
        v47[3] = v35;
        v48[0] = v34;
        v47[2] = v36;
        sub_217E98218(v47, v43);
        sub_217F1C278(v47, v41);
        sub_217E98274(v47);
        v43[2] = v41[2];
        v43[3] = v41[3];
        v44[0] = v42[0];
        *(v44 + 9) = *(v42 + 9);
        v43[0] = v41[0];
        v43[1] = v41[1];
      }

      while (1)
      {
        v30 = i + 1;
        if (__OFADD__(i, 1))
        {
          break;
        }

        if (v30 >= v28)
        {

          v4 = v38;
          v5 = v37;
          v13 = v39;
          goto LABEL_6;
        }

        v27 = *(v10 + 8 * v30);
        ++i;
        if (v27)
        {
          i = v30;
          goto LABEL_32;
        }
      }

      __break(1u);
      goto LABEL_36;
    }

LABEL_6:
    v13(v45, 0);
    result = sub_217F23FA4(v46);
    v3 = v40;
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= v9)
    {
    }

    v8 = *(v5 + 8 * v14);
    ++v12;
    if (v8)
    {
      v12 = v14;
      goto LABEL_12;
    }
  }

LABEL_36:
  __break(1u);
  return result;
}

uint64_t sub_217F246EC(uint64_t result, void **a2, uint64_t a3)
{
  v4 = *(result + 16);
  if (v4)
  {
    for (i = (result + 32); ; i += 2)
    {
      v10[0] = *i;
      *(v10 + 13) = *(i + 13);
      v9[0] = *i;
      *(v9 + 13) = *(i + 13);
      sub_217E98168(v10, v8);
      sub_217F17218(v9, a2, a3);
      if (v3)
      {
        break;
      }

      *v8 = v9[0];
      *&v8[13] = *(v9 + 13);
      result = sub_217F23FA4(v8);
      if (!--v4)
      {
        return result;
      }
    }

    *v8 = v9[0];
    *&v8[13] = *(v9 + 13);
    return sub_217F23FA4(v8);
  }

  return result;
}

uint64_t sub_217F247C4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6269737365636361 && a2 == 0xED00007974696C69;
  if (v4 || (sub_217F4B144() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6565726772657665 && a2 == 0xEE0074696D694C6ELL || (sub_217F4B144() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x696D694C63676961 && a2 == 0xE900000000000074 || (sub_217F4B144() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000217F5D0A0 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7669446369706F74 && a2 == 0xEE00797469737265 || (sub_217F4B144() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000217F604D0 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD00000000000001FLL && 0x8000000217F5D0C0 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000217F604F0 == a2)
  {

    return 7;
  }

  else
  {
    v6 = sub_217F4B144();

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

uint64_t sub_217F24A80(unint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v3 = a1;
    v4 = MEMORY[0x277D84F90];
    v5 = sub_217E8E6DC(*(a1 + 16), 0);
    v6 = sub_217E96C08(&v31, (v5 + 32), v1, v3);

    sub_217E7F628();
    if (v6 != v1)
    {
LABEL_22:
      __break(1u);
      MEMORY[0x21CEAF510](v3);

      __break(1u);
      return result;
    }

    v2 = v4;
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
  }

  v31 = v5;
  v3 = 0;
  sub_217F1A8BC(&v31);
  v7 = v31;
  v8 = *(v31 + 2);
  if (v8)
  {
    v31 = v2;
    sub_217EA0D40(0, v8, 0);
    v9 = 0;
    v10 = v31;
    v26 = v7;
    v27 = v7 + 32;
    v25 = v8;
    while (v9 < *(v7 + 2))
    {
      v11 = &v27[40 * v9];
      v12 = *v11;
      v13 = *(v11 + 3);
      v14 = *(v13 + 16);
      v30 = *(v11 + 1);
      if (v14)
      {
        v28 = *v11;
        v29 = v10;
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        sub_217EA0864(0, v14, 0);
        v15 = v2;
        v16 = (v13 + 40);
        do
        {
          v17 = *(v16 - 1);
          v18 = *v16;
          v20 = *(v15 + 2);
          v19 = *(v15 + 3);

          if (v20 >= v19 >> 1)
          {
            sub_217EA0864((v19 > 1), v20 + 1, 1);
          }

          *(v15 + 2) = v20 + 1;
          v21 = &v15[16 * v20];
          *(v21 + 4) = v17;
          *(v21 + 5) = v18;
          v16 += 12;
          --v14;
        }

        while (v14);
        swift_bridgeObjectRelease_n();

        v2 = MEMORY[0x277D84F90];
        v8 = v25;
        v7 = v26;
        v10 = v29;
      }

      else
      {

        v15 = v2;
      }

      v31 = v10;
      v3 = *(v10 + 2);
      v22 = *(v10 + 3);
      if (v3 >= v22 >> 1)
      {
        sub_217EA0D40((v22 > 1), v3 + 1, 1);
        v10 = v31;
      }

      ++v9;
      *(v10 + 2) = v3 + 1;
      v23 = &v10[24 * v3];
      *(v23 + 4) = v12;
      *(v23 + 5) = v30;
      *(v23 + 6) = v15;
      if (v9 == v8)
      {

        return v10;
      }
    }

    __break(1u);
    goto LABEL_22;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_217F24D18(char *__src, char *__dst, unint64_t a3, char *a4, uint64_t a5)
{
  v6 = a4;
  v7 = a3;
  v8 = __dst;
  v9 = __src;
  v10 = __dst - __src;
  v11 = (__dst - __src) / 24;
  v12 = a3 - __dst;
  v13 = (a3 - __dst) / 24;
  if (v11 >= v13)
  {
    if (a4 != __dst || &__dst[24 * v13] <= a4)
    {
      memmove(a4, __dst, 24 * v13);
    }

    v14 = &v6[24 * v13];
    if (v12 < 24 || v8 <= v9)
    {
      goto LABEL_55;
    }

    v52 = v6;
    while (2)
    {
      v51 = v8 - 24;
      v31 = v7;
      v32 = v14;
      while (1)
      {
        v34 = *(v32 - 24);
        v32 -= 24;
        v33 = v34;
        v35 = *(v32 + 16);
        v36 = *(v8 - 1);
        if (v35 == v36)
        {
          break;
        }

        v7 = (v31 - 24);
        if (v36 < v35)
        {
          goto LABEL_48;
        }

LABEL_46:
        if (v14 != v31)
        {
          v47 = *v32;
          *(v7 + 16) = *(v32 + 16);
          *v7 = v47;
        }

        v14 = v32;
        v31 = v7;
        if (v32 <= v6)
        {
          v14 = v32;
          goto LABEL_55;
        }
      }

      v37 = v14;
      v38 = *(v32 + 8);
      v39 = *(v8 - 2);
      v54 = *(v8 - 3);
      v40 = *(a5 + 16);

      if (v40)
      {
        v41 = sub_217E8E88C(v33, v38);
        v42 = 0.0;
        v43 = 0.0;
        if (v44)
        {
          v43 = *(*(a5 + 56) + 40 * v41 + 32);
        }

        v14 = v37;
        if (*(a5 + 16))
        {
          v45 = sub_217E8E88C(v54, v39);
          v6 = v52;
          if (v46)
          {
            v42 = *(*(a5 + 56) + 40 * v45 + 32);
          }

LABEL_45:

          v7 = (v31 - 24);
          if (v42 < v43)
          {
LABEL_48:
            if (v31 != v8)
            {
              v48 = *v51;
              *(v7 + 16) = *(v8 - 1);
              *v7 = v48;
            }

            if (v14 <= v6 || (v8 -= 24, v51 <= v9))
            {
              v8 = v51;
              goto LABEL_55;
            }

            continue;
          }

          goto LABEL_46;
        }
      }

      else
      {
        v43 = 0.0;
        v42 = 0.0;
        v14 = v37;
      }

      break;
    }

    v6 = v52;
    goto LABEL_45;
  }

  if (a4 != __src || &__src[24 * v11] <= a4)
  {
    memmove(a4, __src, 24 * v11);
  }

  v14 = &v6[24 * v11];
  if (v10 >= 24 && v8 < v7)
  {
    v53 = &v6[24 * v11];
    do
    {
      v15 = *(v8 + 2);
      v16 = *(v6 + 2);
      if (v15 == v16)
      {
        v17 = *v8;
        v18 = *(v8 + 1);
        v19 = *v6;
        v20 = *(v6 + 1);
        v21 = *(a5 + 16);

        if (v21)
        {
          v22 = sub_217E8E88C(v17, v18);
          v23 = 0.0;
          v24 = 0.0;
          if (v25)
          {
            v24 = *(*(a5 + 56) + 40 * v22 + 32);
          }

          if (*(a5 + 16))
          {
            v26 = sub_217E8E88C(v19, v20);
            if (v27)
            {
              v23 = *(*(a5 + 56) + 40 * v26 + 32);
            }
          }
        }

        else
        {
          v24 = 0.0;
          v23 = 0.0;
        }

        v14 = v53;
        if (v23 >= v24)
        {
LABEL_16:
          v28 = v6;
          v29 = v9 == v6;
          v6 += 24;
          if (v29)
          {
            goto LABEL_18;
          }

LABEL_17:
          v30 = *v28;
          *(v9 + 2) = *(v28 + 2);
          *v9 = v30;
          goto LABEL_18;
        }
      }

      else if (v16 >= v15)
      {
        goto LABEL_16;
      }

      v28 = v8;
      v29 = v9 == v8;
      v8 += 24;
      if (!v29)
      {
        goto LABEL_17;
      }

LABEL_18:
      v9 += 24;
    }

    while (v6 < v14 && v8 < v7);
  }

  v8 = v9;
LABEL_55:
  v49 = (v14 - v6) / 24;
  if (v8 != v6 || v8 >= &v6[24 * v49])
  {
    memmove(v8, v6, 24 * v49);
  }

  return 1;
}

uint64_t sub_217F250E8(char *a1, char *a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a1;
  v7 = *a1;

  v24 = v7;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_15:
    v24 = sub_217F3610C(v24);
  }

  v20 = v6;
  *v6 = v24;
  v8 = (v24 + 16);
  v9 = *(v24 + 2);
  if (v9 < 2)
  {
LABEL_9:

    *v20 = v24;
    return 1;
  }

  else
  {
    while (1)
    {
      v10 = *a3;
      if (!*a3)
      {
        break;
      }

      v11 = v5;
      v6 = &v24[16 * v9];
      v12 = *v6;
      v13 = &v8[2 * v9];
      v14 = v13[1];
      __src = (v10 + 24 * *v6);
      v15 = (v10 + 24 * *v13);
      v16 = v10 + 24 * v14;

      sub_217F24D18(__src, v15, v16, a2, a4);
      v5 = v11;

      if (v11)
      {
        *v20 = v24;

        return 1;
      }

      if (v14 < v12)
      {
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        goto LABEL_15;
      }

      v17 = *v8;
      if (v9 - 2 >= *v8)
      {
        goto LABEL_13;
      }

      *v6 = v12;
      *(v6 + 1) = v14;
      v18 = v17 - v9;
      if (v17 < v9)
      {
        goto LABEL_14;
      }

      v9 = v17 - 1;
      memmove(v13, v13 + 2, 16 * v18);
      *v8 = v9;
      if (v9 <= 1)
      {
        goto LABEL_9;
      }
    }

    *v20 = v24;
    __break(1u);
  }

  return result;
}

uint64_t sub_217F25294(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6 = a3[1];
  v150 = MEMORY[0x277D84F90];
  if (v6 >= 1)
  {
    swift_bridgeObjectRetain_n();
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    v149 = a5;
    while (1)
    {
      v9 = v7++;
      if (v7 < v6)
      {
        v10 = *a3;
        v11 = *a3 + 24 * v7;
        v12 = *(v11 + 16);
        v13 = *a3 + 24 * v9;
        v14 = *(v13 + 16);
        if (v12 == v14)
        {
          v145 = v7;
          v15 = *v11;
          v16 = *(v11 + 8);
          v17 = *v13;
          v18 = *(v13 + 8);
          v19 = *(a5 + 16);

          if (v19)
          {
            v20 = sub_217E8E88C(v15, v16);
            a5 = v149;
            v21 = 0.0;
            v22 = 0.0;
            if (v23)
            {
              v22 = *(*(v149 + 56) + 40 * v20 + 32);
            }

            if (*(v149 + 16))
            {
              v24 = sub_217E8E88C(v17, v18);
              if (v25)
              {
                v21 = *(*(v149 + 56) + 40 * v24 + 32);
              }
            }
          }

          else
          {
            v22 = 0.0;
            v21 = 0.0;
          }

          v140 = v21 < v22;
          v7 = v145;
        }

        else
        {
          v140 = v14 < v12;
        }

        v133 = v8;
        v135 = v9;
        v26 = 0;
        v27 = v9 + 2;
        v138 = 24 * v9;
        v28 = (v10 + 24 * v9 + 64);
        do
        {
          v33 = v27;
          v34 = v7;
          v35 = v26;
          if (v27 >= v6)
          {
            break;
          }

          v36 = *(v28 - 3);
          if (*v28 == v36)
          {
            v37 = *(v28 - 2);
            v38 = *(v28 - 1);
            v39 = *(v28 - 4);
            v146 = *(v28 - 5);
            v40 = *(a5 + 16);

            if (v40)
            {
              v41 = sub_217E8E88C(v37, v38);
              a5 = v149;
              v30 = 0.0;
              v29 = 0.0;
              if (v42)
              {
                v29 = *(*(v149 + 56) + 40 * v41 + 32);
              }

              if (*(v149 + 16))
              {
                v43 = sub_217E8E88C(v146, v39);
                if (v44)
                {
                  v30 = *(*(v149 + 56) + 40 * v43 + 32);
                }
              }
            }

            else
            {
              v29 = 0.0;
              v30 = 0.0;
            }

            v31 = v30 < v29;
          }

          else
          {
            v31 = v36 < *v28;
          }

          v32 = v31;
          v27 = v33 + 1;
          v28 += 3;
          v7 = v34 + 1;
          v26 = v35 + 24;
        }

        while (v140 == v32);
        if (v140)
        {
          v9 = v135;
          if (v33 < v135)
          {
            goto LABEL_148;
          }

          if (v135 < v33)
          {
            v45 = 0;
            v46 = v135;
            do
            {
              if (v46 != v34)
              {
                if (!*a3)
                {
                  goto LABEL_153;
                }

                v47 = *a3 + v138;
                v48 = (v47 + v45);
                v49 = v47 + v35;
                v50 = *v48;
                v51 = v48[1];
                v52 = v48[2];
                v53 = *(v49 + 40);
                *v48 = *(v49 + 24);
                v48[2] = v53;
                *(v49 + 24) = v50;
                *(v49 + 32) = v51;
                *(v49 + 40) = v52;
              }

              ++v46;
              v35 -= 24;
              v45 += 24;
            }

            while (v46 < v34--);
          }

          v7 = v33;
          v8 = v133;
        }

        else
        {
          v7 = v33;
          v8 = v133;
          v9 = v135;
        }
      }

      v55 = a3[1];
      if (v7 < v55)
      {
        if (__OFSUB__(v7, v9))
        {
          goto LABEL_147;
        }

        if (v7 - v9 < a4)
        {
          v56 = v9 + a4;
          if (__OFADD__(v9, a4))
          {
            goto LABEL_149;
          }

          if (v56 >= v55)
          {
            v56 = a3[1];
          }

          if (v56 < v9)
          {
LABEL_150:
            __break(1u);
LABEL_151:
            swift_bridgeObjectRelease_n();
            __break(1u);
LABEL_152:
            swift_bridgeObjectRelease_n();
            __break(1u);
LABEL_153:
            swift_bridgeObjectRelease_n();
            __break(1u);
LABEL_154:
            swift_bridgeObjectRelease_n();
            __break(1u);
            goto LABEL_155;
          }

          if (v7 != v56)
          {
            v134 = v8;
            v136 = v9;
            v57 = *a3;
            v58 = *a3 + 24 * v7 - 24;
            v59 = v9 - v7;
            v139 = v56;
            do
            {
              v147 = v7;
              v60 = v57 + 24 * v7;
              v61 = *v60;
              v62 = *(v60 + 8);
              v63 = *(v60 + 16);
              v64 = v59;
              v141 = v58;
              do
              {
                v65 = *(v58 + 16);
                if (v63 == v65)
                {
                  v67 = *v58;
                  v66 = *(v58 + 8);
                  v68 = *(a5 + 16);

                  if (v68)
                  {
                    v69 = sub_217E8E88C(v61, v62);
                    a5 = v149;
                    v70 = 0.0;
                    v71 = 0.0;
                    if (v72)
                    {
                      v71 = *(*(v149 + 56) + 40 * v69 + 32);
                    }

                    if (*(v149 + 16))
                    {
                      v73 = sub_217E8E88C(v67, v66);
                      if (v74)
                      {
                        v70 = *(*(v149 + 56) + 40 * v73 + 32);
                      }
                    }
                  }

                  else
                  {
                    v71 = 0.0;
                    v70 = 0.0;
                  }

                  if (v70 >= v71)
                  {
                    break;
                  }
                }

                else if (v65 >= v63)
                {
                  break;
                }

                if (!v57)
                {
                  goto LABEL_151;
                }

                v61 = *(v58 + 24);
                v62 = *(v58 + 32);
                v63 = *(v58 + 40);
                v75 = *(v58 + 16);
                *(v58 + 24) = *v58;
                *(v58 + 40) = v75;
                *v58 = v61;
                *(v58 + 8) = v62;
                *(v58 + 16) = v63;
                v58 -= 24;
              }

              while (!__CFADD__(v64++, 1));
              v7 = v147 + 1;
              v58 = v141 + 24;
              --v59;
            }

            while (v147 + 1 != v139);
            v7 = v139;
            v8 = v134;
            v9 = v136;
          }
        }
      }

      if (v7 < v9)
      {
        goto LABEL_146;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_217E8DA14(0, *(v8 + 2) + 1, 1, v8);
      }

      v78 = *(v8 + 2);
      v77 = *(v8 + 3);
      v79 = v78 + 1;
      if (v78 >= v77 >> 1)
      {
        v8 = sub_217E8DA14((v77 > 1), v78 + 1, 1, v8);
      }

      *(v8 + 2) = v79;
      v80 = v8 + 32;
      v81 = &v8[16 * v78 + 32];
      *v81 = v9;
      *(v81 + 1) = v7;
      v142 = *a1;
      if (!*a1)
      {
        goto LABEL_154;
      }

      if (v78)
      {
        v148 = v7;
        while (1)
        {
          v82 = v79 - 1;
          if (v79 >= 4)
          {
            break;
          }

          if (v79 == 3)
          {
            v83 = *(v8 + 4);
            v84 = *(v8 + 5);
            v93 = __OFSUB__(v84, v83);
            v85 = v84 - v83;
            v86 = v93;
LABEL_91:
            if (v86)
            {
              goto LABEL_136;
            }

            v99 = &v8[16 * v79];
            v101 = *v99;
            v100 = *(v99 + 1);
            v102 = __OFSUB__(v100, v101);
            v103 = v100 - v101;
            v104 = v102;
            if (v102)
            {
              goto LABEL_138;
            }

            v105 = &v80[16 * v82];
            v107 = *v105;
            v106 = *(v105 + 1);
            v93 = __OFSUB__(v106, v107);
            v108 = v106 - v107;
            if (v93)
            {
              goto LABEL_141;
            }

            if (__OFADD__(v103, v108))
            {
              goto LABEL_143;
            }

            if (v103 + v108 >= v85)
            {
              if (v85 < v108)
              {
                v82 = v79 - 2;
              }

              goto LABEL_113;
            }

            goto LABEL_106;
          }

          if (v79 < 2)
          {
            goto LABEL_144;
          }

          v109 = &v8[16 * v79];
          v111 = *v109;
          v110 = *(v109 + 1);
          v93 = __OFSUB__(v110, v111);
          v103 = v110 - v111;
          v104 = v93;
LABEL_106:
          if (v104)
          {
            goto LABEL_140;
          }

          v112 = &v80[16 * v82];
          v114 = *v112;
          v113 = *(v112 + 1);
          v93 = __OFSUB__(v113, v114);
          v115 = v113 - v114;
          if (v93)
          {
            goto LABEL_142;
          }

          if (v115 < v103)
          {
            goto LABEL_3;
          }

LABEL_113:
          if (v82 - 1 >= v79)
          {
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
LABEL_138:
            __break(1u);
LABEL_139:
            __break(1u);
LABEL_140:
            __break(1u);
LABEL_141:
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
LABEL_147:
            __break(1u);
LABEL_148:
            __break(1u);
LABEL_149:
            __break(1u);
            goto LABEL_150;
          }

          v120 = *a3;
          if (!*a3)
          {
            goto LABEL_152;
          }

          v121 = &v80[16 * v82 - 16];
          v122 = *v121;
          v123 = v82;
          v124 = &v80[16 * v82];
          v125 = *(v124 + 1);
          v126 = (v120 + 24 * *v121);
          v127 = (v120 + 24 * *v124);
          v128 = v120 + 24 * v125;

          sub_217F24D18(v126, v127, v128, v142, v149);
          if (v144)
          {

            goto LABEL_126;
          }

          if (v125 < v122)
          {
            goto LABEL_131;
          }

          v129 = *(v8 + 2);
          if (v123 > v129)
          {
            goto LABEL_132;
          }

          *v121 = v122;
          *(v121 + 1) = v125;
          if (v123 >= v129)
          {
            goto LABEL_133;
          }

          v79 = v129 - 1;
          memmove(v124, v124 + 16, 16 * (v129 - 1 - v123));
          *(v8 + 2) = v129 - 1;
          v7 = v148;
          v80 = v8 + 32;
          if (v129 <= 2)
          {
            goto LABEL_3;
          }
        }

        v87 = &v80[16 * v79];
        v88 = *(v87 - 8);
        v89 = *(v87 - 7);
        v93 = __OFSUB__(v89, v88);
        v90 = v89 - v88;
        if (v93)
        {
          goto LABEL_134;
        }

        v92 = *(v87 - 6);
        v91 = *(v87 - 5);
        v93 = __OFSUB__(v91, v92);
        v85 = v91 - v92;
        v86 = v93;
        if (v93)
        {
          goto LABEL_135;
        }

        v94 = &v8[16 * v79];
        v96 = *v94;
        v95 = *(v94 + 1);
        v93 = __OFSUB__(v95, v96);
        v97 = v95 - v96;
        if (v93)
        {
          goto LABEL_137;
        }

        v93 = __OFADD__(v85, v97);
        v98 = v85 + v97;
        if (v93)
        {
          goto LABEL_139;
        }

        if (v98 >= v90)
        {
          v116 = &v80[16 * v82];
          v118 = *v116;
          v117 = *(v116 + 1);
          v93 = __OFSUB__(v117, v118);
          v119 = v117 - v118;
          if (v93)
          {
            goto LABEL_145;
          }

          if (v85 < v119)
          {
            v82 = v79 - 2;
          }

          goto LABEL_113;
        }

        goto LABEL_91;
      }

LABEL_3:
      v6 = a3[1];
      a5 = v149;
      if (v7 >= v6)
      {
        v150 = v8;
        goto LABEL_123;
      }
    }
  }

  swift_bridgeObjectRetain_n();
LABEL_123:
  v130 = *a1;
  if (*a1)
  {

    sub_217F250E8(&v150, v130, a3, a5);
    if (v144)
    {

LABEL_126:
      swift_bridgeObjectRelease_n();
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }
  }

  else
  {
LABEL_155:
    result = swift_bridgeObjectRelease_n();
    __break(1u);
  }

  return result;
}

uint64_t sub_217F25AE4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (a3 != a2)
  {
    v6 = a3;
    v7 = *a4;
    v8 = *a4 + 24 * a3 - 24;
    v9 = result - a3;
LABEL_5:
    v10 = v7 + 24 * v6;
    v11 = *v10;
    v12 = *(v10 + 8);
    v13 = *(v10 + 16);
    v27 = v9;
    v28 = v8;
    while (1)
    {
      v14 = *(v8 + 16);
      if (v13 == v14)
      {
        v16 = *v8;
        v15 = *(v8 + 8);
        v17 = *(a5 + 16);

        if (v17)
        {
          v18 = sub_217E8E88C(v11, v12);
          v19 = 0.0;
          v20 = 0.0;
          if (v21)
          {
            v20 = *(*(a5 + 56) + 40 * v18 + 32);
          }

          if (*(a5 + 16))
          {
            v22 = sub_217E8E88C(v16, v15);
            if (v23)
            {
              v19 = *(*(a5 + 56) + 40 * v22 + 32);
            }
          }
        }

        else
        {
          v20 = 0.0;
          v19 = 0.0;
        }

        if (v19 >= v20)
        {
LABEL_4:
          ++v6;
          v8 = v28 + 24;
          v9 = v27 - 1;
          if (v6 == a2)
          {
            return result;
          }

          goto LABEL_5;
        }
      }

      else if (v14 >= v13)
      {
        goto LABEL_4;
      }

      if (!v7)
      {
        break;
      }

      v11 = *(v8 + 24);
      v12 = *(v8 + 32);
      v13 = *(v8 + 40);
      v24 = *(v8 + 16);
      *(v8 + 24) = *v8;
      *(v8 + 40) = v24;
      *v8 = v11;
      *(v8 + 8) = v12;
      *(v8 + 16) = v13;
      v8 -= 24;
      if (__CFADD__(v9++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_217F25C74(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  swift_bridgeObjectRetain_n();
  result = sub_217F4B0F4();
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v6 = result;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5608, &unk_217F4DCC0);
        v8 = sub_217F4AC54();
        *(v8 + 16) = v7;
      }

      v9[0] = (v8 + 32);
      v9[1] = v7;

      sub_217F25294(v9, v10, a1, v6, a2);

      *(v8 + 16) = 0;
      swift_bridgeObjectRelease_n();
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

    sub_217F25AE4(0, v4, 1, a1, a2);
  }

  return swift_bridgeObjectRelease_n();
}

uint64_t sub_217F25DCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v164 = a2;
  v4 = *(a3 + 1408);
  v5 = *(a3 + 1416);

  v7 = sub_217E8AE18(v6);
  v8 = *(v7 + 16);
  v155 = a1;
  if (v8)
  {
    v9 = sub_217E8E5AC(v8, 0);
    v10 = sub_217E966DC(v175, v9 + 4, v8, v7);
    v11 = v176;

    sub_217E7F628();
    if (v10 != v8)
    {
      goto LABEL_143;
    }

    a1 = v155;
  }

  else
  {

    v9 = MEMORY[0x277D84F90];
  }

  *&v175[0] = v9;
  v9 = 0;
  sub_217F27D68(v175, a1);

  v12 = *&v175[0];
  v11 = MEMORY[0x277D84F98];
  v179[0] = MEMORY[0x277D84F98];
  v13 = *(v164 + 16);
  if (v13)
  {
    v14 = (v164 + 32);
    do
    {
      v15 = v14[3];
      v16 = v14[1];
      v176 = v14[2];
      v177 = v15;
      v17 = v14[3];
      v178[0] = v14[4];
      *(v178 + 9) = *(v14 + 73);
      v18 = v14[1];
      v175[0] = *v14;
      v175[1] = v18;
      v172 = v176;
      v173 = v17;
      v174[0] = v14[4];
      *(v174 + 9) = *(v14 + 73);
      v170 = v175[0];
      v171 = v16;
      sub_217E98218(v175, &v165);
      sub_217F18EF4(v179, &v170, v7);
      v167 = v172;
      v168 = v173;
      v169[0] = v174[0];
      *(v169 + 9) = *(v174 + 9);
      v165 = v170;
      v166 = v171;
      sub_217E98274(&v165);
      v14 += 6;
      --v13;
    }

    while (v13);
    v11 = v179[0];
  }

  v19 = v7 + 56;
  v20 = 1 << *(v7 + 32);
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  else
  {
    v21 = -1;
  }

  v22 = v21 & *(v7 + 56);
  v23 = (v20 + 63) >> 6;

  v24 = 0;
  v152 = MEMORY[0x277D84F98];
  v148 = v12;
  while (1)
  {
    do
    {
LABEL_13:
      if (v22)
      {
        v25 = v22;
      }

      else
      {
        v26 = v155;
        do
        {
          v27 = v24 + 1;
          if (__OFADD__(v24, 1))
          {
            goto LABEL_138;
          }

          if (v27 >= v23)
          {

            v65 = MEMORY[0x277D84F90];
            *&v170 = MEMORY[0x277D84F90];
            v149 = *(v12 + 16);
            if (!v149)
            {
              goto LABEL_115;
            }

            v66 = 0;
            v151 = v12 + 32;
            v147 = xmmword_217F4BC20;
            v11 = v152;
            while (1)
            {
              if (v66 >= *(v12 + 16))
              {
                goto LABEL_140;
              }

              v67 = v26;
              v68 = v12;
              v69 = (v151 + 16 * v66);
              v70 = v69[1];
              v71 = v170;
              v164 = *v69;
              *&v175[0] = v164;
              *(&v175[0] + 1) = v70;
              MEMORY[0x28223BE20](v63, v64);
              *(&v147 - 2) = v175;

              v72 = sub_217F04BF8(sub_217F2BA64, (&v147 - 2), v71);
              v154 = v70;
              if (v72)
              {
                v12 = v68;
                v26 = v67;
                v65 = MEMORY[0x277D84F90];
              }

              else
              {

                v73 = v9;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v71 = sub_217E8DB18(0, *(v71 + 2) + 1, 1, v71);
                }

                v75 = *(v71 + 2);
                v74 = *(v71 + 3);
                if (v75 >= v74 >> 1)
                {
                  v71 = sub_217E8DB18((v74 > 1), v75 + 1, 1, v71);
                }

                v150 = v66;
                *(v71 + 2) = v75 + 1;
                v76 = &v71[16 * v75];
                v77 = v164;
                *(v76 + 4) = v164;
                *(v76 + 5) = v70;
                *&v170 = v71;
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF52D0, &qword_217F4C930);
                inited = swift_initStackObject();
                *(inited + 16) = v147;
                *(inited + 32) = v77;
                *(inited + 40) = v70;

                v79 = sub_217E97288(inited);
                swift_setDeallocating();
                sub_217E97320(inited + 32);
                if (*(v79 + 16))
                {
                  v157 = v71;
                  v153 = MEMORY[0x277D84F98];
                  v80 = v4;
                  v9 = v73;
                  while (1)
                  {
                    *&v165 = MEMORY[0x277D84FA0];
                    v65 = v79 + 56;
                    v81 = 1 << *(v79 + 32);
                    if (v81 < 64)
                    {
                      v82 = ~(-1 << v81);
                    }

                    else
                    {
                      v82 = -1;
                    }

                    v26 = v82 & *(v79 + 56);
                    v83 = (v81 + 63) >> 6;

                    v84 = 0;
                    v164 = v79;
LABEL_71:
                    if (v26)
                    {
                      v85 = v26;
                      goto LABEL_77;
                    }

                    while (1)
                    {
                      v86 = v84 + 1;
                      if (__OFADD__(v84, 1))
                      {
                        __break(1u);
LABEL_115:
                        v124 = v65;
LABEL_117:

                        v125 = *(v124 + 16);
                        if (v125)
                        {
                          *&v175[0] = v65;
                          sub_217EA0D40(0, v125, 0);
                          v126 = 0;
                          v11 = *&v175[0];
                          v160 = v124 + 32;
                          v157 = v124;
                          v158 = v125;
                          do
                          {
                            if (v126 >= *(v124 + 16))
                            {
                              goto LABEL_139;
                            }

                            v164 = v11;
                            v127 = (v160 + 16 * v126);
                            v129 = *v127;
                            v128 = v127[1];
                            v130 = *(v26 + 16);

                            v162 = v128;
                            v163 = v9;
                            v161 = v129;
                            if (v130 && (v131 = sub_217E8E88C(v129, v128), (v132 & 1) != 0))
                            {
                              v133 = *(*(v26 + 56) + 40 * v131 + 24);
                              v134 = *(v133 + 16);
                              if (v134)
                              {
                                *&v170 = v65;

                                sub_217EA0864(0, v134, 0);
                                v135 = v170;
                                v159 = v133;
                                v136 = (v133 + 40);
                                do
                                {
                                  v138 = *(v136 - 1);
                                  v137 = *v136;
                                  *&v170 = v135;
                                  v140 = *(v135 + 16);
                                  v139 = *(v135 + 24);

                                  if (v140 >= v139 >> 1)
                                  {
                                    sub_217EA0864((v139 > 1), v140 + 1, 1);
                                    v135 = v170;
                                  }

                                  *(v135 + 16) = v140 + 1;
                                  v141 = v135 + 16 * v140;
                                  *(v141 + 32) = v138;
                                  *(v141 + 40) = v137;
                                  v136 += 12;
                                  --v134;
                                }

                                while (v134);

                                v26 = v155;
                                v65 = MEMORY[0x277D84F90];
                                v124 = v157;
                              }

                              else
                              {
                                v135 = v65;
                              }

                              v125 = v158;
                            }

                            else
                            {
                              v135 = v65;
                            }

                            v11 = v164;
                            *&v175[0] = v164;
                            v143 = *(v164 + 16);
                            v142 = *(v164 + 24);
                            if (v143 >= v142 >> 1)
                            {
                              sub_217EA0D40((v142 > 1), v143 + 1, 1);
                              v11 = *&v175[0];
                            }

                            ++v126;
                            *(v11 + 16) = v143 + 1;
                            v144 = (v11 + 24 * v143);
                            v145 = v162;
                            v144[4] = v161;
                            v144[5] = v145;
                            v144[6] = v135;
                            v9 = v163;
                          }

                          while (v126 != v125);
                        }

                        else
                        {

                          return MEMORY[0x277D84F90];
                        }

                        return v11;
                      }

                      if (v86 >= v83)
                      {
                        break;
                      }

                      v85 = *(v65 + 8 * v86);
                      ++v84;
                      if (v85)
                      {
                        v84 = v86;
LABEL_77:
                        v26 = (v85 - 1) & v85;
                        if (!*(v11 + 16))
                        {
                          goto LABEL_71;
                        }

                        v87 = (*(v79 + 48) + ((v84 << 10) | (16 * __clz(__rbit64(v85)))));
                        v88 = *v87;
                        v89 = v87[1];

                        v90 = sub_217E8E88C(v88, v89);
                        if ((v91 & 1) == 0)
                        {

                          v79 = v164;
                          goto LABEL_71;
                        }

                        v92 = *(*(v11 + 56) + 8 * v90);
                        v11 = v92 + 64;
                        v93 = 1 << *(v92 + 32);
                        if (v93 < 64)
                        {
                          v94 = ~(-1 << v93);
                        }

                        else
                        {
                          v94 = -1;
                        }

                        v95 = v94 & *(v92 + 64);
                        v159 = v92;
                        v160 = (v93 + 63) >> 6;
                        swift_bridgeObjectRetain_n();
                        v97 = 0;
                        v158 = v11;
                        v98 = v160;
                        if (v95)
                        {
                          while (2)
                          {
                            v163 = v9;
                            v99 = v97;
LABEL_89:
                            v161 = &v147;
                            v100 = __clz(__rbit64(v95)) | (v99 << 6);
                            v101 = (*(v159 + 48) + 16 * v100);
                            v102 = v101[1];
                            v103 = *(*(v159 + 56) + 8 * v100);
                            v95 &= v95 - 1;
                            v156 = *v101;
                            *&v175[0] = v156;
                            *(&v175[0] + 1) = v102;
                            v104 = MEMORY[0x28223BE20](v102, v96);
                            *(&v147 - 2) = v175;
                            v162 = v104;

                            v105 = v157;

                            v9 = v163;
                            LODWORD(v163) = sub_217F04BF8(sub_217F2C124, (&v147 - 2), v105);

                            if (v163)
                            {
LABEL_90:
                            }

                            else
                            {
                              v106 = v80 * v103;
                              v107 = v153;
                              if (!*(v153 + 16) || (v108 = sub_217E8E88C(v156, v162), (v109 & 1) == 0))
                              {
                                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                                *&v175[0] = v107;
                                sub_217F1A0A8(v156, v162, isUniquelyReferenced_nonNull_native, v106);
                                v153 = *&v175[0];

                                sub_217F194B0(v175, v156, v162);

                                goto LABEL_90;
                              }

                              v110 = *(v107 + 56);
                              if (*(v110 + 8 * v108) > v106)
                              {
                                v106 = *(v110 + 8 * v108);
                              }

                              v111 = swift_isUniquelyReferenced_nonNull_native();
                              *&v175[0] = v107;
                              sub_217F1A0A8(v156, v162, v111, v106);

                              v153 = *&v175[0];
                            }

                            v97 = v99;
                            v11 = v158;
                            v98 = v160;
                            if (!v95)
                            {
                              break;
                            }

                            continue;
                          }
                        }

                        while (1)
                        {
                          v99 = v97 + 1;
                          if (__OFADD__(v97, 1))
                          {
                            break;
                          }

                          if (v99 >= v98)
                          {

                            v11 = v152;
                            v79 = v164;
                            goto LABEL_71;
                          }

                          v95 = *(v11 + 8 * v99);
                          ++v97;
                          if (v95)
                          {
                            v163 = v9;
                            goto LABEL_89;
                          }
                        }

                        __break(1u);
LABEL_138:
                        __break(1u);
LABEL_139:
                        __break(1u);
LABEL_140:
                        __break(1u);
                        goto LABEL_141;
                      }
                    }

                    v80 = v80 * v80;
                    v79 = v165;
                    if (!*(v165 + 16))
                    {
                      goto LABEL_101;
                    }
                  }
                }

                v153 = MEMORY[0x277D84F98];
                v9 = v73;
LABEL_101:

                v113 = v153;
                v11 = *(v153 + 16);
                if (v11)
                {
                  v114 = sub_217E8E76C(*(v153 + 16), 0);
                  v164 = sub_217E96D98(v175, v114 + 4, v11, v113);

                  sub_217E7F628();
                  if (v164 != v11)
                  {
                    goto LABEL_142;
                  }

                  v26 = v155;
                  v65 = MEMORY[0x277D84F90];
                }

                else
                {
                  v26 = v155;

                  v65 = MEMORY[0x277D84F90];
                  v114 = MEMORY[0x277D84F90];
                }

                *&v175[0] = v114;

                sub_217F28E88(v175, v26, sub_217F372B0, sub_217F25C74);
                swift_bridgeObjectRelease_n();
                v12 = v148;
                v66 = v150;
                if (v9)
                {
                  goto LABEL_146;
                }

                v115 = *&v175[0];
                v116 = *(*&v175[0] + 16);
                if (v116)
                {
                  v163 = 0;
                  *&v175[0] = v65;
                  sub_217EA0864(0, v116, 0);
                  v117 = *&v175[0];
                  v118 = (v115 + 40);
                  do
                  {
                    v119 = *(v118 - 1);
                    v120 = *v118;
                    *&v175[0] = v117;
                    v122 = *(v117 + 16);
                    v121 = *(v117 + 24);

                    if (v122 >= v121 >> 1)
                    {
                      sub_217EA0864((v121 > 1), v122 + 1, 1);
                      v117 = *&v175[0];
                    }

                    *(v117 + 16) = v122 + 1;
                    v123 = v117 + 16 * v122;
                    *(v123 + 32) = v119;
                    *(v123 + 40) = v120;
                    v118 += 3;
                    --v116;
                  }

                  while (v116);

                  v26 = v155;
                  v9 = v163;
                  v12 = v148;
                  v65 = MEMORY[0x277D84F90];
                  v66 = v150;
                }

                else
                {

                  v117 = v65;
                }

                sub_217E80630(v117);

                v11 = v152;
              }

              ++v66;

              if (v66 == v149)
              {
                v124 = v170;
                goto LABEL_117;
              }
            }
          }

          v25 = *(v19 + 8 * v27);
          ++v24;
        }

        while (!v25);
        v24 = v27;
      }

      v22 = (v25 - 1) & v25;
    }

    while (!*(v11 + 16));
    v164 = (v25 - 1) & v25;
    v28 = (*(v7 + 48) + ((v24 << 10) | (16 * __clz(__rbit64(v25)))));
    v30 = *v28;
    v29 = v28[1];

    v31 = sub_217E8E88C(v30, v29);
    if (v32)
    {
      break;
    }

    v22 = v164;
  }

  v162 = v29;
  v33 = *(v11 + 56);
  v34 = 1 << *(v7 + 32);
  if (v34 < 64)
  {
    v35 = ~(-1 << v34);
  }

  else
  {
    v35 = -1;
  }

  v36 = v35 & *(v7 + 56);
  v159 = (v34 + 63) >> 6;
  v160 = v11;
  v37 = *(v33 + 8 * v31);

  v38 = 0;
  v163 = MEMORY[0x277D84F98];
  v11 = v30;
  v157 = v30;
  while (v36)
  {
LABEL_32:
    v40 = __clz(__rbit64(v36));
    v36 &= v36 - 1;
    v41 = (*(v7 + 48) + ((v38 << 10) | (16 * v40)));
    v42 = v41[1];
    if (v11 != *v41 || v162 != v42)
    {
      v161 = *v41;
      if ((sub_217F4B144() & 1) == 0)
      {
        v158 = v42;
        if (sub_217F4B144())
        {
          *&v175[0] = v11;
          *(&v175[0] + 1) = v162;

          v43 = v161;
          v44 = v42;
        }

        else
        {
          *&v175[0] = v161;
          *(&v175[0] + 1) = v42;
          swift_bridgeObjectRetain_n();
          v43 = v11;
          v44 = v162;
        }

        MEMORY[0x21CEAEAC0](v43, v44);
        if (!*(v160 + 16))
        {

          goto LABEL_46;
        }

        v156 = sub_217E8E88C(*&v175[0], *(&v175[0] + 1));
        v46 = v45;

        if ((v46 & 1) != 0 && (v47 = *(*(v160 + 56) + 8 * v156) / v37, v5 < v47))
        {
          v11 = v163;
          LODWORD(v156) = swift_isUniquelyReferenced_nonNull_native();
          *&v175[0] = v163;
          v48 = sub_217E8E88C(v161, v158);
          v50 = *(v163 + 16);
          v51 = (v49 & 1) == 0;
          v52 = __OFADD__(v50, v51);
          v53 = v50 + v51;
          if (v52)
          {
            goto LABEL_144;
          }

          v54 = v49;
          if (*(v163 + 24) >= v53)
          {
            v11 = v157;
            if ((v156 & 1) == 0)
            {
              LODWORD(v156) = v49;
              v163 = v9;
              v61 = v48;
              sub_217E8F918();
              v11 = v157;
              v54 = v156;
              v48 = v61;
              v9 = v163;
            }
          }

          else
          {
            sub_217E924FC(v53, v156);
            v48 = sub_217E8E88C(v161, v158);
            if ((v54 & 1) != (v55 & 1))
            {
              goto LABEL_147;
            }

            v11 = v157;
          }

          v56 = v158;
          v57 = *&v175[0];
          v163 = *&v175[0];
          if (v54)
          {
            *(*(*&v175[0] + 56) + 8 * v48) = v47;
          }

          else
          {
            *(*&v175[0] + 8 * (v48 >> 6) + 64) |= 1 << v48;
            v58 = (v57[6] + 16 * v48);
            *v58 = v161;
            v58[1] = v56;
            *(v57[7] + 8 * v48) = v47;
            v59 = v57[2];
            v52 = __OFADD__(v59, 1);
            v60 = v59 + 1;
            if (v52)
            {
              goto LABEL_145;
            }

            v57[2] = v60;
          }
        }

        else
        {
LABEL_46:

          v11 = v157;
        }
      }
    }
  }

  while (1)
  {
    v39 = v38 + 1;
    if (__OFADD__(v38, 1))
    {
      break;
    }

    if (v39 >= v159)
    {

      v62 = swift_isUniquelyReferenced_nonNull_native();
      *&v175[0] = v152;
      sub_217F1A750(v163, v11, v162, v62, sub_217E8FA80, sub_217E927A0, sub_217F3AE24);

      v152 = *&v175[0];
      v12 = v148;
      v11 = v160;
      v22 = v164;
      goto LABEL_13;
    }

    v36 = *(v19 + 8 * v39);
    ++v38;
    if (v36)
    {
      v38 = v39;
      goto LABEL_32;
    }
  }

LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
  MEMORY[0x21CEAF510](v9);
  v167 = v172;
  v168 = v173;
  v169[0] = v174[0];
  *(v169 + 9) = *(v11 + 73);
  v165 = v170;
  v166 = v171;
  sub_217E98274(&v165);

  __break(1u);
LABEL_146:
  MEMORY[0x21CEAF510](v9);

  __break(1u);
LABEL_147:
  result = sub_217F4B1C4();
  __break(1u);
  return result;
}

uint64_t sub_217F26D6C(uint64_t *__src, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v6 = a4;
  v7 = __src;
  v8 = a2 - __src;
  v9 = a2 - __src + 15;
  if (a2 - __src >= 0)
  {
    v9 = a2 - __src;
  }

  v10 = v9 >> 4;
  v11 = a3;
  v12 = a3 - a2;
  v13 = a3 - a2 + 15;
  if (a3 - a2 >= 0)
  {
    v13 = a3 - a2;
  }

  v14 = v13 >> 4;
  if (v10 >= v13 >> 4)
  {
    if (a4 != a2 || &a2[2 * v14] <= a4)
    {
      v34 = a2;
      memmove(a4, a2, 16 * v14);
      a2 = v34;
    }

    v35 = a2;
    v16 = &v6[2 * v14];
    if (v12 < 16 || a2 <= v7)
    {
      goto LABEL_56;
    }

    v52 = v6;
    while (2)
    {
      v51 = v35 - 2;
      v36 = v11;
      __dst = v35;
      while (1)
      {
        v37 = v16 - 2;
        v38 = *(v16 - 1);
        v39 = *(v35 - 1);
        if (!*(a5 + 16))
        {
          break;
        }

        v40 = *(v35 - 2);
        v41 = *v37;
        v42 = *(v16 - 1);

        v43 = sub_217E8E88C(v41, v38);
        v44 = 0.0;
        if (v45)
        {
          v44 = *(*(a5 + 56) + 40 * v43 + 32);
        }

        v11 = v36 - 2;
        if (!*(a5 + 16) || (v46 = sub_217E8E88C(v40, v39), (v47 & 1) == 0))
        {
          v6 = v52;
          goto LABEL_46;
        }

        v48 = *(*(a5 + 56) + 40 * v46 + 32);

        v6 = v52;
        if (v48 < v44)
        {
          goto LABEL_49;
        }

LABEL_47:
        if (v16 != v36)
        {
          *v11 = *v37;
        }

        v16 -= 2;
        v36 = v11;
        v35 = __dst;
        if (v37 <= v6)
        {
          v16 = v37;
          goto LABEL_56;
        }
      }

      v11 = v36 - 2;
      v49 = *(v16 - 1);

      v44 = 0.0;
LABEL_46:

      if (v44 > 0.0)
      {
LABEL_49:
        if (v36 != __dst)
        {
          *v11 = *v51;
        }

        if (v16 <= v6 || (v35 = v51, v51 <= v7))
        {
          v35 = v51;
          goto LABEL_56;
        }

        continue;
      }

      goto LABEL_47;
    }
  }

  v15 = a2;
  if (a4 != __src || &__src[2 * v10] <= a4)
  {
    memmove(a4, __src, 16 * v10);
  }

  v16 = &v6[2 * v10];
  if (v8 >= 16)
  {
    v17 = v11;
    if (v15 < v11)
    {
      v18 = v15;
      do
      {
        v19 = v18[1];
        v20 = v6[1];
        if (*(a5 + 16))
        {
          v21 = v6;
          v22 = *v6;
          v23 = *v18;
          v24 = v18[1];

          v25 = sub_217E8E88C(v23, v19);
          v26 = 0.0;
          if (v27)
          {
            v26 = *(*(a5 + 56) + 40 * v25 + 32);
          }

          if (*(a5 + 16))
          {
            v28 = sub_217E8E88C(v22, v20);
            if (v29)
            {
              v30 = *(*(a5 + 56) + 40 * v28 + 32);

              v6 = v21;
              if (v30 >= v26)
              {
                goto LABEL_18;
              }

              goto LABEL_26;
            }
          }

          v6 = v21;
        }

        else
        {
          v33 = v18[1];

          v26 = 0.0;
        }

        if (v26 <= 0.0)
        {
LABEL_18:
          v31 = v6;
          v32 = v7 == v6;
          v6 += 2;
          if (v32)
          {
            goto LABEL_20;
          }

LABEL_19:
          *v7 = *v31;
          goto LABEL_20;
        }

LABEL_26:
        v31 = v18;
        v32 = v7 == v18;
        v18 += 2;
        if (!v32)
        {
          goto LABEL_19;
        }

LABEL_20:
        v7 += 2;
      }

      while (v6 < v16 && v18 < v17);
    }
  }

  v35 = v7;
LABEL_56:
  if (v35 != v6 || v35 >= (v6 + ((v16 - v6 + (v16 - v6 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0)))
  {
    memmove(v35, v6, 16 * ((v16 - v6) / 16));
  }

  return 1;
}

uint64_t sub_217F27128(char **a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a1;
  v7 = *a1;

  v24 = v7;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_15:
    v24 = sub_217F3610C(v24);
  }

  v20 = v6;
  *v6 = v24;
  v8 = (v24 + 16);
  v9 = *(v24 + 2);
  if (v9 < 2)
  {
LABEL_9:

    *v20 = v24;
    return 1;
  }

  else
  {
    while (1)
    {
      v10 = *a3;
      if (!*a3)
      {
        break;
      }

      v11 = v5;
      v12 = &v24[16 * v9];
      v6 = *v12;
      v13 = &v8[2 * v9];
      v14 = v13[1];
      __src = (v10 + 16 * *v12);
      v15 = (v10 + 16 * *v13);
      v16 = (v10 + 16 * v14);

      sub_217F26D6C(__src, v15, v16, a2, a4);
      v5 = v11;

      if (v11)
      {
        *v20 = v24;

        return 1;
      }

      if (v14 < v6)
      {
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        goto LABEL_15;
      }

      v17 = *v8;
      if (v9 - 2 >= *v8)
      {
        goto LABEL_13;
      }

      *v12 = v6;
      *(v12 + 1) = v14;
      v18 = v17 - v9;
      if (v17 < v9)
      {
        goto LABEL_14;
      }

      v9 = v17 - 1;
      memmove(v13, v13 + 2, 16 * v18);
      *v8 = v9;
      if (v9 <= 1)
      {
        goto LABEL_9;
      }
    }

    *v20 = v24;
    __break(1u);
  }

  return result;
}

uint64_t sub_217F272D0(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v8 = a3[1];
  v133 = MEMORY[0x277D84F90];
  if (v8 >= 1)
  {
    swift_bridgeObjectRetain_n();
    v9 = 0;
    v10 = MEMORY[0x277D84F90];
    v130 = a5;
LABEL_5:
    v11 = v9++;
    if (v9 >= v8)
    {
      goto LABEL_30;
    }

    v12 = *a3;
    v13 = (*a3 + 16 * v9);
    v14 = v13[1];
    v132[0] = *v13;
    v132[1] = v14;
    v15 = (v12 + 16 * v11);
    v16 = v15[1];
    v131[0] = *v15;
    v131[1] = v16;

    v17 = sub_217F18E50(v132, v131, a5);
    if (v6)
    {

      goto LABEL_109;
    }

    v18 = v17;

    v118 = v11;
    v9 = v11 + 2;
    if (v11 + 2 >= v8)
    {
      goto LABEL_21;
    }

    v19 = v15 + 3;
    v20 = v15 + 3;
    while (1)
    {
      v22 = v20[2];
      v20 += 2;
      v21 = v22;
      v23 = *v19;
      if (*(a5 + 16))
      {
        v24 = v9;
        v25 = *(v19 - 1);
        v26 = v19[1];

        v27 = sub_217E8E88C(v26, v21);
        a5 = v130;
        v28 = 0.0;
        if (v29)
        {
          v28 = *(*(v130 + 56) + 40 * v27 + 32);
        }

        if (*(v130 + 16))
        {
          v30 = sub_217E8E88C(v25, v23);
          if (v31)
          {
            v32 = *(*(v130 + 56) + 40 * v30 + 32);

            v9 = v24;
            if (((v18 ^ (v32 >= v28)) & 1) == 0)
            {
              goto LABEL_21;
            }

            goto LABEL_11;
          }
        }

        v9 = v24;
      }

      else
      {

        v28 = 0.0;
      }

      if (((v18 ^ (v28 <= 0.0)) & 1) == 0)
      {
        goto LABEL_21;
      }

LABEL_11:
      ++v9;
      v19 = v20;
      if (v8 == v9)
      {
        v9 = v8;
LABEL_21:
        if (!v18)
        {
          v11 = v118;
          v6 = 0;
          goto LABEL_30;
        }

        v11 = v118;
        if (v9 < v118)
        {
          goto LABEL_130;
        }

        v6 = 0;
        if (v118 < v9)
        {
          v33 = 0;
          v34 = 16 * v9;
          v35 = 16 * v118;
          v36 = v118;
          do
          {
            if (v36 != v9 + v33 - 1)
            {
              v37 = *a3;
              if (!*a3)
              {
                goto LABEL_133;
              }

              v38 = (v37 + v35);
              v39 = v37 + v34;
              v40 = *v38;
              v41 = v38[1];
              *v38 = *(v39 - 16);
              *(v39 - 16) = v40;
              *(v39 - 8) = v41;
            }

            ++v36;
            --v33;
            v34 -= 16;
            v35 += 16;
          }

          while (v36 < v9 + v33);
        }

LABEL_30:
        v42 = a3[1];
        if (v9 >= v42)
        {
          goto LABEL_55;
        }

        if (__OFSUB__(v9, v11))
        {
          goto LABEL_127;
        }

        if (v9 - v11 >= a4)
        {
          goto LABEL_55;
        }

        if (__OFADD__(v11, a4))
        {
          goto LABEL_128;
        }

        if (v11 + a4 < v42)
        {
          v42 = v11 + a4;
        }

        if (v42 >= v11)
        {
          if (v9 == v42)
          {
            goto LABEL_55;
          }

          v121 = v42;
          v128 = v6;
          v43 = *a3;
          v44 = *a3 + 16 * v9;
          v119 = v11;
          v45 = v11 - v9;
          while (2)
          {
            v126 = v9;
            v46 = *(v43 + 16 * v9 + 8);
            v47 = v45;
            v123 = v44;
            v48 = v44;
            while (2)
            {
              v50 = *(v48 - 2);
              v49 = *(v48 - 1);
              if (*(a5 + 16))
              {
                v51 = *v48;

                v52 = sub_217E8E88C(v51, v46);
                a5 = v130;
                v53 = 0.0;
                if (v54)
                {
                  v53 = *(*(v130 + 56) + 40 * v52 + 32);
                }

                if (*(v130 + 16))
                {
                  v55 = sub_217E8E88C(v50, v49);
                  if (v56)
                  {
                    v57 = *(*(v130 + 56) + 40 * v55 + 32);

                    if (v57 >= v53)
                    {
                      break;
                    }

                    goto LABEL_50;
                  }
                }
              }

              else
              {

                v53 = 0.0;
              }

              if (v53 <= 0.0)
              {
                break;
              }

LABEL_50:
              if (!v43)
              {
                goto LABEL_131;
              }

              v58 = *v48;
              v46 = v48[1];
              *v48 = *(v48 - 1);
              *(v48 - 1) = v46;
              *(v48 - 2) = v58;
              v48 -= 2;
              if (!__CFADD__(v47++, 1))
              {
                continue;
              }

              break;
            }

            v9 = v126 + 1;
            v44 = v123 + 16;
            --v45;
            if (v126 + 1 != v121)
            {
              continue;
            }

            break;
          }

          v9 = v121;
          v6 = v128;
          v11 = v119;
LABEL_55:
          if (v9 < v11)
          {
            goto LABEL_126;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = sub_217E8DA14(0, *(v10 + 2) + 1, 1, v10);
          }

          v61 = *(v10 + 2);
          v60 = *(v10 + 3);
          v62 = v61 + 1;
          if (v61 >= v60 >> 1)
          {
            v10 = sub_217E8DA14((v60 > 1), v61 + 1, 1, v10);
          }

          *(v10 + 2) = v62;
          v63 = v10 + 32;
          v64 = &v10[16 * v61 + 32];
          *v64 = v11;
          *(v64 + 1) = v9;
          v133 = v10;
          v124 = *a1;
          if (!*a1)
          {
            goto LABEL_134;
          }

          if (v61)
          {
            v127 = v9;
            v129 = v6;
            v122 = v10 + 32;
            while (1)
            {
              v65 = v62 - 1;
              if (v62 >= 4)
              {
                break;
              }

              if (v62 == 3)
              {
                v66 = *(v10 + 4);
                v67 = *(v10 + 5);
                v76 = __OFSUB__(v67, v66);
                v68 = v67 - v66;
                v69 = v76;
LABEL_76:
                if (v69)
                {
                  goto LABEL_117;
                }

                v82 = &v10[16 * v62];
                v84 = *v82;
                v83 = *(v82 + 1);
                v85 = __OFSUB__(v83, v84);
                v86 = v83 - v84;
                v87 = v85;
                if (v85)
                {
                  goto LABEL_120;
                }

                v88 = &v63[16 * v65];
                v90 = *v88;
                v89 = *(v88 + 1);
                v76 = __OFSUB__(v89, v90);
                v91 = v89 - v90;
                if (v76)
                {
                  goto LABEL_123;
                }

                if (__OFADD__(v86, v91))
                {
                  goto LABEL_124;
                }

                if (v86 + v91 >= v68)
                {
                  if (v68 < v91)
                  {
                    v65 = v62 - 2;
                  }

                  goto LABEL_97;
                }

                goto LABEL_90;
              }

              v92 = &v10[16 * v62];
              v94 = *v92;
              v93 = *(v92 + 1);
              v76 = __OFSUB__(v93, v94);
              v86 = v93 - v94;
              v87 = v76;
LABEL_90:
              if (v87)
              {
                goto LABEL_119;
              }

              v95 = &v63[16 * v65];
              v97 = *v95;
              v96 = *(v95 + 1);
              v76 = __OFSUB__(v96, v97);
              v98 = v96 - v97;
              if (v76)
              {
                goto LABEL_122;
              }

              if (v98 < v86)
              {
                goto LABEL_3;
              }

LABEL_97:
              if (v65 - 1 >= v62)
              {
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
LABEL_126:
                __break(1u);
LABEL_127:
                __break(1u);
LABEL_128:
                __break(1u);
                goto LABEL_129;
              }

              v103 = *a3;
              if (!*a3)
              {
                goto LABEL_132;
              }

              v104 = v10;
              v105 = &v63[16 * v65 - 16];
              v106 = *v105;
              v107 = v65;
              v108 = &v63[16 * v65];
              v109 = *(v108 + 1);
              v110 = (v103 + 16 * *v105);
              v111 = (v103 + 16 * *v108);
              v112 = (v103 + 16 * v109);

              sub_217F26D6C(v110, v111, v112, v124, v130);
              if (v129)
              {

                goto LABEL_109;
              }

              if (v109 < v106)
              {
                goto LABEL_112;
              }

              v113 = *(v104 + 2);
              if (v107 > v113)
              {
                goto LABEL_113;
              }

              *v105 = v106;
              *(v105 + 1) = v109;
              if (v107 >= v113)
              {
                goto LABEL_114;
              }

              v62 = v113 - 1;
              memmove(v108, v108 + 16, 16 * (v113 - 1 - v107));
              v10 = v104;
              *(v104 + 2) = v113 - 1;
              v114 = v113 > 2;
              v9 = v127;
              v63 = v122;
              a5 = v130;
              if (!v114)
              {
LABEL_3:
                v133 = v10;
                v6 = v129;
                goto LABEL_4;
              }
            }

            v70 = &v63[16 * v62];
            v71 = *(v70 - 8);
            v72 = *(v70 - 7);
            v76 = __OFSUB__(v72, v71);
            v73 = v72 - v71;
            if (v76)
            {
              goto LABEL_115;
            }

            v75 = *(v70 - 6);
            v74 = *(v70 - 5);
            v76 = __OFSUB__(v74, v75);
            v68 = v74 - v75;
            v69 = v76;
            if (v76)
            {
              goto LABEL_116;
            }

            v77 = &v10[16 * v62];
            v79 = *v77;
            v78 = *(v77 + 1);
            v76 = __OFSUB__(v78, v79);
            v80 = v78 - v79;
            if (v76)
            {
              goto LABEL_118;
            }

            v76 = __OFADD__(v68, v80);
            v81 = v68 + v80;
            if (v76)
            {
              goto LABEL_121;
            }

            if (v81 >= v73)
            {
              v99 = &v63[16 * v65];
              v101 = *v99;
              v100 = *(v99 + 1);
              v76 = __OFSUB__(v100, v101);
              v102 = v100 - v101;
              if (v76)
              {
                goto LABEL_125;
              }

              if (v68 < v102)
              {
                v65 = v62 - 2;
              }

              goto LABEL_97;
            }

            goto LABEL_76;
          }

LABEL_4:
          v8 = a3[1];
          if (v9 >= v8)
          {
            goto LABEL_107;
          }

          goto LABEL_5;
        }

LABEL_129:
        __break(1u);
LABEL_130:
        __break(1u);
LABEL_131:
        swift_bridgeObjectRelease_n();
        __break(1u);
LABEL_132:
        swift_bridgeObjectRelease_n();
        __break(1u);
LABEL_133:
        swift_bridgeObjectRelease_n();
        __break(1u);
LABEL_134:
        swift_bridgeObjectRelease_n();
        __break(1u);
LABEL_135:
        result = swift_bridgeObjectRelease_n();
        __break(1u);
        return result;
      }
    }
  }

  swift_bridgeObjectRetain_n();
LABEL_107:
  v115 = *a1;
  if (!*a1)
  {
    goto LABEL_135;
  }

  sub_217F27128(&v133, v115, a3, a5);

LABEL_109:
  swift_bridgeObjectRelease_n();
}

uint64_t sub_217F27AA0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (a3 != a2)
  {
    v6 = a3;
    v7 = *a4;
    v8 = (*a4 + 16 * a3);
    v9 = result - a3;
LABEL_5:
    v10 = *(v7 + 16 * v6 + 8);
    v23 = v9;
    v24 = v8;
    while (1)
    {
      v12 = *(v8 - 2);
      v11 = *(v8 - 1);
      if (*(a5 + 16))
      {
        v13 = *v8;

        v14 = sub_217E8E88C(v13, v10);
        v15 = 0.0;
        if (v16)
        {
          v15 = *(*(a5 + 56) + 40 * v14 + 32);
        }

        if (*(a5 + 16))
        {
          v17 = sub_217E8E88C(v12, v11);
          if (v18)
          {
            v19 = *(*(a5 + 56) + 40 * v17 + 32);

            if (v19 >= v15)
            {
              goto LABEL_4;
            }

            goto LABEL_15;
          }
        }
      }

      else
      {

        v15 = 0.0;
      }

      if (v15 <= 0.0)
      {
        goto LABEL_4;
      }

LABEL_15:
      if (!v7)
      {
        __break(1u);
        return result;
      }

      v20 = *v8;
      v10 = v8[1];
      *v8 = *(v8 - 1);
      *(v8 - 1) = v10;
      *(v8 - 2) = v20;
      v8 -= 2;
      if (__CFADD__(v9++, 1))
      {
LABEL_4:
        ++v6;
        v8 = v24 + 2;
        v9 = v23 - 1;
        if (v6 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }
    }
  }

  return result;
}

uint64_t sub_217F27C20(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  swift_bridgeObjectRetain_n();
  result = sub_217F4B0F4();
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v6 = result;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = MEMORY[0x277D84F90];
      }

      else
      {
        v8 = sub_217F4AC54();
        *(v8 + 16) = v7;
      }

      v9[0] = (v8 + 32);
      v9[1] = v7;

      sub_217F272D0(v9, v10, a1, v6, a2);

      *(v8 + 16) = 0;
      swift_bridgeObjectRelease_n();
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

    sub_217F27AA0(0, v4, 1, a1, a2);
  }

  return swift_bridgeObjectRelease_n();
}

uint64_t sub_217F27D68(char **a1, uint64_t a2)
{
  v4 = *a1;
  swift_bridgeObjectRetain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_217F3729C(v4);
  }

  v5 = *(v4 + 2);
  v7[0] = (v4 + 32);
  v7[1] = v5;

  sub_217F27C20(v7, a2);

  *a1 = v4;
  return swift_bridgeObjectRelease_n();
}

uint64_t sub_217F27E0C(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    v4 = (*(a4 + 48) + 16 * result);
    result = *v4;
    v5 = v4[1];
    return result;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_217F27E60(uint64_t *__src, uint64_t *__dst, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v6 = a4;
  v7 = a3;
  v8 = __src;
  v9 = __dst - __src;
  v10 = __dst - __src + 15;
  if (__dst - __src >= 0)
  {
    v10 = __dst - __src;
  }

  v11 = v10 >> 4;
  v12 = a3 - __dst;
  v13 = a3 - __dst + 15;
  if (a3 - __dst >= 0)
  {
    v13 = a3 - __dst;
  }

  v14 = v13 >> 4;
  if (v11 >= v13 >> 4)
  {
    v30 = __dst;
    if (a4 != __dst || &__dst[2 * v14] <= a4)
    {
      memmove(a4, __dst, 16 * v14);
    }

    v16 = &v6[2 * v14];
    if (v12 >= 16 && v30 > v8)
    {
LABEL_33:
      v44 = v30;
      v43 = v30 - 2;
      v7 -= 2;
      do
      {
        v31 = v16 - 2;
        if (*(a5 + 16))
        {
          v32 = *(v16 - 1);
          v34 = *(v44 - 2);
          v33 = *(v44 - 1);
          v35 = *v31;

          v36 = sub_217E8E88C(v35, v32);
          if (v37)
          {
            if (!*(a5 + 16) || (v38 = *(*(a5 + 56) + 40 * v36 + 32), v39 = sub_217E8E88C(v34, v33), (v40 & 1) == 0))
            {

LABEL_45:
              if (v7 + 2 != v44)
              {
                *v7 = *v43;
              }

              if (v16 <= v6 || (v30 = v43, v43 <= v8))
              {
                v30 = v43;
                goto LABEL_52;
              }

              goto LABEL_33;
            }

            v41 = *(*(a5 + 56) + 40 * v39 + 32);

            if (v41 < v38)
            {
              goto LABEL_45;
            }
          }

          else
          {
          }
        }

        if (v7 + 2 != v16)
        {
          *v7 = *v31;
        }

        v7 -= 2;
        v16 -= 2;
      }

      while (v31 > v6);
      v16 = v31;
      v30 = v44;
    }
  }

  else
  {
    if (a4 != __src || &__src[2 * v11] <= a4)
    {
      memmove(a4, __src, 16 * v11);
    }

    v16 = &v6[2 * v11];
    if (v9 >= 16 && __dst < v7)
    {
      v17 = __dst;
      while (1)
      {
        if (!*(a5 + 16))
        {
          goto LABEL_19;
        }

        v19 = *v6;
        v18 = v6[1];
        v20 = *v17;
        v21 = v17[1];

        v22 = sub_217E8E88C(v20, v21);
        if ((v23 & 1) == 0)
        {
          break;
        }

        if (*(a5 + 16) && (v24 = *(*(a5 + 56) + 40 * v22 + 32), v25 = sub_217E8E88C(v19, v18), (v26 & 1) != 0))
        {
          v27 = *(*(a5 + 56) + 40 * v25 + 32);

          if (v27 >= v24)
          {
            goto LABEL_19;
          }
        }

        else
        {
        }

        v28 = v17;
        v29 = v8 == v17;
        v17 += 2;
        if (!v29)
        {
          goto LABEL_20;
        }

LABEL_21:
        v8 += 2;
        if (v6 >= v16 || v17 >= v7)
        {
          goto LABEL_50;
        }
      }

LABEL_19:
      v28 = v6;
      v29 = v8 == v6;
      v6 += 2;
      if (v29)
      {
        goto LABEL_21;
      }

LABEL_20:
      *v8 = *v28;
      goto LABEL_21;
    }

LABEL_50:
    v30 = v8;
  }

LABEL_52:
  if (v30 != v6 || v30 >= (v6 + ((v16 - v6 + (v16 - v6 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0)))
  {
    memmove(v30, v6, 16 * ((v16 - v6) / 16));
  }

  return 1;
}

uint64_t sub_217F281D4(char **a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a1;
  v7 = *a1;

  v24 = v7;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_15:
    v24 = sub_217F3610C(v24);
  }

  v20 = v6;
  *v6 = v24;
  v8 = (v24 + 16);
  v9 = *(v24 + 2);
  if (v9 < 2)
  {
LABEL_9:

    *v20 = v24;
    return 1;
  }

  else
  {
    while (1)
    {
      v10 = *a3;
      if (!*a3)
      {
        break;
      }

      v11 = v5;
      v12 = &v24[16 * v9];
      v6 = *v12;
      v13 = &v8[2 * v9];
      v14 = v13[1];
      __src = (v10 + 16 * *v12);
      v15 = (v10 + 16 * *v13);
      v16 = (v10 + 16 * v14);

      sub_217F27E60(__src, v15, v16, a2, a4);
      v5 = v11;

      if (v11)
      {
        *v20 = v24;

        return 1;
      }

      if (v14 < v6)
      {
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        goto LABEL_15;
      }

      v17 = *v8;
      if (v9 - 2 >= *v8)
      {
        goto LABEL_13;
      }

      *v12 = v6;
      *(v12 + 1) = v14;
      v18 = v17 - v9;
      if (v17 < v9)
      {
        goto LABEL_14;
      }

      v9 = v17 - 1;
      memmove(v13, v13 + 2, 16 * v18);
      *v8 = v9;
      if (v9 <= 1)
      {
        goto LABEL_9;
      }
    }

    *v20 = v24;
    __break(1u);
  }

  return result;
}

uint64_t sub_217F2837C(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6 = a3[1];
  v140 = MEMORY[0x277D84F90];
  if (v6 >= 1)
  {
    swift_bridgeObjectRetain_n();
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    v139 = a5;
    while (1)
    {
      v9 = v7 + 1;
      v130 = v7;
      if (v7 + 1 >= v6)
      {
        v23 = v7 + 1;
        goto LABEL_37;
      }

      v10 = (*a3 + 16 * v7);
      if (*(a5 + 16))
      {
        v11 = (*a3 + 16 * v9);
        v12 = *v10;
        v13 = v10[1];
        v14 = *v11;
        v15 = v11[1];

        v16 = sub_217E8E88C(v14, v15);
        if (v17)
        {
          if (*(a5 + 16) && (v18 = *(*(a5 + 56) + 40 * v16 + 32), v19 = sub_217E8E88C(v12, v13), (v20 & 1) != 0))
          {
            v21 = *(*(a5 + 56) + 40 * v19 + 32);

            v22 = v21 < v18;
          }

          else
          {

            v22 = 1;
          }

          goto LABEL_14;
        }
      }

      v22 = 0;
LABEL_14:
      v24 = v130 + 2;
      if (v130 + 2 < v6)
      {
        v25 = v8;
        v26 = v10 + 3;
        v27 = v10 + 3;
        while (1)
        {
          v28 = v24;
          v30 = v27[2];
          v27 += 2;
          v29 = v30;
          if (*(a5 + 16))
          {
            v32 = *(v26 - 1);
            v31 = *v26;
            v33 = v26[1];

            v34 = sub_217E8E88C(v33, v29);
            if (v35)
            {
              if (*(a5 + 16) && (v36 = *(*(a5 + 56) + 40 * v34 + 32), v37 = sub_217E8E88C(v32, v31), a5 = v139, (v38 & 1) != 0))
              {
                v39 = *(*(v139 + 56) + 40 * v37 + 32);

                if (v22 == v39 >= v36)
                {
                  v9 = v28 - 1;
LABEL_30:
                  v8 = v25;
                  goto LABEL_31;
                }
              }

              else
              {

                if (!v22)
                {
                  v23 = v28;
                  v8 = v25;
                  goto LABEL_37;
                }
              }
            }

            else
            {

              if (v22)
              {
LABEL_33:
                v9 = v28 - 1;
                v8 = v25;
                goto LABEL_34;
              }
            }
          }

          else if (v22)
          {
            goto LABEL_33;
          }

          v24 = v28 + 1;
          v26 = v27;
          if (v6 == v28 + 1)
          {
            v9 = v28;
            v28 = v6;
            goto LABEL_30;
          }
        }
      }

      v28 = v130 + 2;
LABEL_31:
      v23 = v28;
      if (v22)
      {
LABEL_34:
        v40 = v130;
        if (v28 < v130)
        {
          goto LABEL_147;
        }

        if (v130 <= v9)
        {
          v46 = 0;
          v47 = 16 * v28;
          v48 = 16 * v130;
          do
          {
            if (v40 != v28 + v46 - 1)
            {
              v49 = *a3;
              if (!*a3)
              {
                goto LABEL_152;
              }

              v50 = (v49 + v48);
              v51 = v49 + v47;
              v52 = *v50;
              v53 = v50[1];
              *v50 = *(v51 - 16);
              *(v51 - 16) = v52;
              *(v51 - 8) = v53;
            }

            ++v40;
            --v46;
            v47 -= 16;
            v48 += 16;
          }

          while (v40 < v28 + v46);
        }

        v23 = v28;
      }

LABEL_37:
      v41 = a3[1];
      if (v23 < v41)
      {
        v42 = v23;
        v43 = v130;
        v87 = __OFSUB__(v23, v130);
        v44 = v23 - v130;
        if (v87)
        {
          goto LABEL_146;
        }

        if (v44 >= a4)
        {
          goto LABEL_46;
        }

        if (__OFADD__(v130, a4))
        {
          goto LABEL_148;
        }

        if (v130 + a4 >= v41)
        {
          v45 = a3[1];
        }

        else
        {
          v45 = v130 + a4;
        }

        if (v45 < v130)
        {
LABEL_149:
          __break(1u);
LABEL_150:
          swift_bridgeObjectRelease_n();
          __break(1u);
LABEL_151:
          swift_bridgeObjectRelease_n();
          __break(1u);
LABEL_152:
          swift_bridgeObjectRelease_n();
          __break(1u);
LABEL_153:
          swift_bridgeObjectRelease_n();
          __break(1u);
          goto LABEL_154;
        }

        if (v42 == v45)
        {
LABEL_46:
          v23 = v42;
          if (v42 < v130)
          {
            goto LABEL_145;
          }

          goto LABEL_70;
        }

        v127 = v8;
        v54 = *a3;
        v55 = v42;
        v56 = (*a3 + 16 * v42);
        v57 = v130 - v42;
        v131 = v45;
        do
        {
          v133 = v56;
          v135 = v55;
          v58 = *(v54 + 16 * v55 + 8);
          v59 = v57;
          while (*(a5 + 16))
          {
            v61 = *(v56 - 2);
            v60 = *(v56 - 1);
            v62 = *v56;

            v63 = sub_217E8E88C(v62, v58);
            if ((v64 & 1) == 0)
            {

              break;
            }

            if (*(a5 + 16) && (v65 = *(*(a5 + 56) + 40 * v63 + 32), v66 = sub_217E8E88C(v61, v60), a5 = v139, (v67 & 1) != 0))
            {
              v68 = *(*(v139 + 56) + 40 * v66 + 32);

              if (v68 >= v65)
              {
                break;
              }
            }

            else
            {
            }

            if (!v54)
            {
              goto LABEL_150;
            }

            v69 = *v56;
            v58 = v56[1];
            *v56 = *(v56 - 1);
            *(v56 - 1) = v58;
            *(v56 - 2) = v69;
            v56 -= 2;
            if (__CFADD__(v59++, 1))
            {
              break;
            }
          }

          v55 = v135 + 1;
          v56 = v133 + 2;
          --v57;
        }

        while (v135 + 1 != v131);
        v23 = v131;
        v8 = v127;
      }

      v43 = v130;
      if (v23 < v130)
      {
        goto LABEL_145;
      }

LABEL_70:
      v136 = v23;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_217E8DA14(0, *(v8 + 2) + 1, 1, v8);
      }

      v72 = *(v8 + 2);
      v71 = *(v8 + 3);
      v73 = v72 + 1;
      if (v72 >= v71 >> 1)
      {
        v8 = sub_217E8DA14((v71 > 1), v72 + 1, 1, v8);
      }

      *(v8 + 2) = v73;
      v74 = v8 + 32;
      v75 = &v8[16 * v72 + 32];
      *v75 = v43;
      *(v75 + 1) = v136;
      v134 = *a1;
      if (!*a1)
      {
        goto LABEL_153;
      }

      if (v72)
      {
        v132 = v8 + 32;
        while (1)
        {
          v76 = v73 - 1;
          if (v73 >= 4)
          {
            break;
          }

          if (v73 == 3)
          {
            v77 = *(v8 + 4);
            v78 = *(v8 + 5);
            v87 = __OFSUB__(v78, v77);
            v79 = v78 - v77;
            v80 = v87;
LABEL_90:
            if (v80)
            {
              goto LABEL_135;
            }

            v93 = &v8[16 * v73];
            v95 = *v93;
            v94 = *(v93 + 1);
            v96 = __OFSUB__(v94, v95);
            v97 = v94 - v95;
            v98 = v96;
            if (v96)
            {
              goto LABEL_137;
            }

            v99 = &v74[16 * v76];
            v101 = *v99;
            v100 = *(v99 + 1);
            v87 = __OFSUB__(v100, v101);
            v102 = v100 - v101;
            if (v87)
            {
              goto LABEL_140;
            }

            if (__OFADD__(v97, v102))
            {
              goto LABEL_142;
            }

            if (v97 + v102 >= v79)
            {
              if (v79 < v102)
              {
                v76 = v73 - 2;
              }

              goto LABEL_112;
            }

            goto LABEL_105;
          }

          if (v73 < 2)
          {
            goto LABEL_143;
          }

          v103 = &v8[16 * v73];
          v105 = *v103;
          v104 = *(v103 + 1);
          v87 = __OFSUB__(v104, v105);
          v97 = v104 - v105;
          v98 = v87;
LABEL_105:
          if (v98)
          {
            goto LABEL_139;
          }

          v106 = &v74[16 * v76];
          v108 = *v106;
          v107 = *(v106 + 1);
          v87 = __OFSUB__(v107, v108);
          v109 = v107 - v108;
          if (v87)
          {
            goto LABEL_141;
          }

          if (v109 < v97)
          {
            goto LABEL_3;
          }

LABEL_112:
          if (v76 - 1 >= v73)
          {
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
LABEL_138:
            __break(1u);
LABEL_139:
            __break(1u);
LABEL_140:
            __break(1u);
LABEL_141:
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
LABEL_147:
            __break(1u);
LABEL_148:
            __break(1u);
            goto LABEL_149;
          }

          v114 = *a3;
          if (!*a3)
          {
            goto LABEL_151;
          }

          v115 = v8;
          v116 = &v74[16 * v76 - 16];
          v117 = *v116;
          v118 = v76;
          v119 = &v74[16 * v76];
          v120 = *(v119 + 1);
          v121 = (v114 + 16 * *v116);
          v122 = (v114 + 16 * *v119);
          v123 = (v114 + 16 * v120);

          sub_217F27E60(v121, v122, v123, v134, v139);
          if (v138)
          {

            goto LABEL_125;
          }

          if (v120 < v117)
          {
            goto LABEL_130;
          }

          v138 = 0;
          v124 = *(v115 + 2);
          if (v118 > v124)
          {
            goto LABEL_131;
          }

          *v116 = v117;
          *(v116 + 1) = v120;
          if (v118 >= v124)
          {
            goto LABEL_132;
          }

          v73 = v124 - 1;
          memmove(v119, v119 + 16, 16 * (v124 - 1 - v118));
          v8 = v115;
          *(v115 + 2) = v124 - 1;
          v74 = v132;
          if (v124 <= 2)
          {
            goto LABEL_3;
          }
        }

        v81 = &v74[16 * v73];
        v82 = *(v81 - 8);
        v83 = *(v81 - 7);
        v87 = __OFSUB__(v83, v82);
        v84 = v83 - v82;
        if (v87)
        {
          goto LABEL_133;
        }

        v86 = *(v81 - 6);
        v85 = *(v81 - 5);
        v87 = __OFSUB__(v85, v86);
        v79 = v85 - v86;
        v80 = v87;
        if (v87)
        {
          goto LABEL_134;
        }

        v88 = &v8[16 * v73];
        v90 = *v88;
        v89 = *(v88 + 1);
        v87 = __OFSUB__(v89, v90);
        v91 = v89 - v90;
        if (v87)
        {
          goto LABEL_136;
        }

        v87 = __OFADD__(v79, v91);
        v92 = v79 + v91;
        if (v87)
        {
          goto LABEL_138;
        }

        if (v92 >= v84)
        {
          v110 = &v74[16 * v76];
          v112 = *v110;
          v111 = *(v110 + 1);
          v87 = __OFSUB__(v111, v112);
          v113 = v111 - v112;
          if (v87)
          {
            goto LABEL_144;
          }

          if (v79 < v113)
          {
            v76 = v73 - 2;
          }

          goto LABEL_112;
        }

        goto LABEL_90;
      }

LABEL_3:
      v7 = v136;
      v6 = a3[1];
      a5 = v139;
      if (v136 >= v6)
      {
        v140 = v8;
        goto LABEL_122;
      }
    }
  }

  swift_bridgeObjectRetain_n();
LABEL_122:
  v125 = *a1;
  if (*a1)
  {

    sub_217F281D4(&v140, v125, a3, a5);
    if (v138)
    {

LABEL_125:
      swift_bridgeObjectRelease_n();
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }
  }

  else
  {
LABEL_154:
    result = swift_bridgeObjectRelease_n();
    __break(1u);
  }

  return result;
}

uint64_t sub_217F28BD0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (a3 != a2)
  {
    v6 = a3;
    v7 = *a4;
    v8 = (*a4 + 16 * a3);
    v9 = result - a3;
LABEL_6:
    v10 = *(v7 + 16 * v6 + 8);
    v23 = v9;
    v24 = v8;
    while (1)
    {
      if (!*(a5 + 16))
      {
        goto LABEL_5;
      }

      v12 = *(v8 - 2);
      v11 = *(v8 - 1);
      v13 = *v8;

      v14 = sub_217E8E88C(v13, v10);
      if ((v15 & 1) == 0)
      {

LABEL_5:
        ++v6;
        v8 = v24 + 2;
        v9 = v23 - 1;
        if (v6 == a2)
        {
          return result;
        }

        goto LABEL_6;
      }

      if (*(a5 + 16) && (v16 = *(*(a5 + 56) + 40 * v14 + 32), v17 = sub_217E8E88C(v12, v11), (v18 & 1) != 0))
      {
        v19 = *(*(a5 + 56) + 40 * v17 + 32);

        if (v19 >= v16)
        {
          goto LABEL_5;
        }
      }

      else
      {
      }

      if (!v7)
      {
        break;
      }

      v20 = *v8;
      v10 = v8[1];
      *v8 = *(v8 - 1);
      *(v8 - 1) = v10;
      *(v8 - 2) = v20;
      v8 -= 2;
      if (__CFADD__(v9++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_217F28D40(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  swift_bridgeObjectRetain_n();
  result = sub_217F4B0F4();
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v6 = result;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = MEMORY[0x277D84F90];
      }

      else
      {
        v8 = sub_217F4AC54();
        *(v8 + 16) = v7;
      }

      v9[0] = (v8 + 32);
      v9[1] = v7;

      sub_217F2837C(v9, v10, a1, v6, a2);

      *(v8 + 16) = 0;
      swift_bridgeObjectRelease_n();
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

    sub_217F28BD0(0, v4, 1, a1, a2);
  }

  return swift_bridgeObjectRelease_n();
}

uint64_t sub_217F28E88(uint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), void (*a4)(void *, uint64_t))
{
  v8 = *a1;
  swift_bridgeObjectRetain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v8 = a3(v8);
  }

  v9 = *(v8 + 16);
  v11[0] = v8 + 32;
  v11[1] = v9;

  a4(v11, a2);

  *a1 = v8;
  return swift_bridgeObjectRelease_n();
}

uint64_t sub_217F28F44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v189 = a2;
  v5 = *(a3 + 1408);
  v6 = *(a3 + 1416);

  v8 = sub_217E8AE18(v7);
  v9 = *(v8 + 16);
  v198 = v8;
  v199 = a1;
  if (v9)
  {
    v10 = sub_217E8E5AC(v9, 0);
    v11 = sub_217E966DC(&v214, v10 + 4, v9, v8);
    v3 = v216;

    sub_217E7F628();
    if (v11 != v9)
    {
      goto LABEL_163;
    }

    v8 = v198;
    a1 = v199;
  }

  else
  {

    v10 = MEMORY[0x277D84F90];
  }

  *&v214 = v10;
  v9 = 0;
  sub_217F27D68(&v214, a1);

  v13 = v214;
  v14 = MEMORY[0x277D84F90];
  v220 = MEMORY[0x277D84F90];
  v15 = *(v214 + 16);
  if (!v15)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_138;
  }

  v16 = 0;
  v182 = (v189 + 32);
  v194 = v8 + 56;
  v200 = v15;
  v183 = v15 - 1;
  v17 = MEMORY[0x277D84F90];
  v186 = xmmword_217F4BC20;
  v18 = v214 + 40;
  v201 = v214;
  v184 = v214 + 40;
LABEL_7:
  v19 = (v18 + 16 * v16);
  v203 = v17;
  while (1)
  {
    if (v16 >= *(v13 + 16))
    {
      goto LABEL_159;
    }

    v20 = v14;
    v202 = v177;
    v21 = *(v19 - 1);
    v22 = *v19;
    v3 = v16 + 1;
    *&v214 = v21;
    *(&v214 + 1) = v22;
    v23 = v16;
    MEMORY[0x28223BE20](v13, v12);
    v177[-2] = &v214;

    if ((sub_217F04BF8(sub_217F2C140, &v177[-4], v17) & 1) == 0)
    {
      break;
    }

    v19 += 2;
    v16 = v3;
    v13 = v201;
    a1 = v199;
    v17 = v203;
    v14 = v20;
    if (v200 == v3)
    {
      goto LABEL_138;
    }
  }

  v180 = v23;
  v181 = v3;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v188 = v22;
  v3 = v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v203 = sub_217E8DB18(0, *(v203 + 2) + 1, 1, v203);
  }

  v26 = *(v203 + 2);
  v25 = *(v203 + 3);
  v27 = MEMORY[0x277D84F98];
  v14 = v20;
  if (v26 >= v25 >> 1)
  {
    v155 = sub_217E8DB18((v25 > 1), v26 + 1, 1, v203);
    v27 = MEMORY[0x277D84F98];
    v203 = v155;
  }

  v28 = v21;
  v29 = v203;
  *(v203 + 2) = v26 + 1;
  v30 = &v29[16 * v26];
  v31 = v188;
  *(v30 + 4) = v21;
  *(v30 + 5) = v31;
  v219 = v27;
  v220 = v29;
  v32 = *(v189 + 16);
  if (v32)
  {
    v33 = v182;
    v9 = v3;
    v34 = v198;
    v3 = &v204;
    do
    {
      v35 = v33[3];
      v36 = v33[1];
      v216 = v33[2];
      v217 = v35;
      v37 = v33[3];
      v218[0] = v33[4];
      *(v218 + 9) = *(v33 + 73);
      v38 = v33[1];
      v214 = *v33;
      v215 = v38;
      v211 = v216;
      v212 = v37;
      v213[0] = v33[4];
      *(v213 + 9) = *(v33 + 73);
      v209 = v214;
      v210 = v36;
      sub_217E98218(&v214, &v204);
      sub_217F18950(&v219, &v209, v34);
      if (v9)
      {
        goto LABEL_168;
      }

      v206 = v211;
      v207 = v212;
      v208[0] = v213[0];
      *(v208 + 9) = *(v213 + 9);
      v204 = v209;
      v205 = v210;
      sub_217E98274(&v204);
      v33 += 6;
      --v32;
    }

    while (v32);
    v3 = 0;
    v39 = v219;
    v40 = MEMORY[0x277D84F98];
  }

  else
  {
    v39 = v27;
    v40 = v27;
  }

  v41 = 1 << v198[32];
  if (v41 < 64)
  {
    v42 = ~(-1 << v41);
  }

  else
  {
    v42 = -1;
  }

  v43 = v42 & *(v198 + 7);
  v9 = (v41 + 63) >> 6;

  v44 = 0;
  v192 = v40;
  while (2)
  {
    v84 = v194;
    do
    {
LABEL_26:
      if (v43)
      {
        v45 = v43;
        goto LABEL_32;
      }

      do
      {
        v46 = v44 + 1;
        if (__OFADD__(v44, 1))
        {
          goto LABEL_160;
        }

        if (v46 >= v9)
        {
          v85 = v198;

          v86 = sub_217F1CF24(v203, v85);
          v87 = MEMORY[0x277D84F98];
          *&v214 = MEMORY[0x277D84F98];
          *&v209 = v5;
          v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF52D0, &qword_217F4C930);
          inited = swift_initStackObject();
          *(inited + 16) = v186;
          *(inited + 32) = v28;
          *(inited + 40) = v188;

          v89 = sub_217E97288(inited);
          swift_setDeallocating();
          sub_217E97320(inited + 32);
          if (*(v89 + 16))
          {
            v90 = v14;
            v91 = v5;
            v92 = MEMORY[0x277D84FA0];
            v93 = v192;
            do
            {
              *&v204 = v92;

              sub_217F24054(v89, v93, &v220, &v209, &v214, &v204);

              v91 = v91 * v91;
              *&v209 = v91;
              v89 = v204;
            }

            while (*(v204 + 16));

            v94 = v214;
            v14 = v90;
          }

          else
          {

            v94 = v87;
          }

          v196 = v3;
          v95 = sub_217F1C9B4(v94, v86);

          a1 = v199;
          v17 = v203;
LABEL_73:

          v96 = 0;
          v97 = 1 << *(v95 + 32);
          v98 = (v97 + 63) >> 6;
          v99 = 56;
          while (1)
          {
            v100 = *(v95 + v99);
            if (v100)
            {
              break;
            }

            v96 -= 64;
            v99 += 8;
            if (!--v98)
            {
              goto LABEL_129;
            }
          }

          v101 = __clz(__rbit64(v100));
          if (v101 - v97 == v96)
          {
LABEL_129:

            swift_bridgeObjectRelease_n();
            v9 = v196;
          }

          else
          {
            v9 = v196;
            v193 = sub_217F27E0C(v101 - v96, *(v95 + 36), 0, v95);
            v203 = v102;

            v103 = *(v95 + 16);
            if (v103)
            {
              v3 = swift_allocObject();
              v104 = _swift_stdlib_malloc_size_1(v3);
              v105 = v104 - 32;
              if (v104 < 32)
              {
                v105 = v104 - 17;
              }

              *(v3 + 16) = v103;
              *(v3 + 24) = 2 * (v105 >> 4);
              v202 = sub_217E966DC(&v214, (v3 + 32), v103, v95);
              v197 = *(&v215 + 1);
              v195 = v216;

              sub_217E7F628();
              if (v202 != v103)
              {
                goto LABEL_165;
              }

              v14 = MEMORY[0x277D84F90];
            }

            else
            {

              v3 = MEMORY[0x277D84F90];
            }

            *&v214 = v3;

            sub_217F28E88(&v214, a1, sub_217F3729C, sub_217F28D40);
            if (v9)
            {
              goto LABEL_170;
            }

            swift_bridgeObjectRelease_n();
            v106 = v214;
            v107 = v192;
            if (*(v214 + 16))
            {

              if (!v106[2])
              {
                goto LABEL_164;
              }

              v108 = v106[4];
              v109 = v106[5];
              swift_bridgeObjectRetain_n();

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v17 = sub_217E8DB18(0, *(v17 + 2) + 1, 1, v17);
              }

              v110 = MEMORY[0x277D84FA0];
              v112 = *(v17 + 2);
              v111 = *(v17 + 3);
              if (v112 >= v111 >> 1)
              {
                v17 = sub_217E8DB18((v111 > 1), v112 + 1, 1, v17);
              }

              *(v17 + 2) = v112 + 1;
              v113 = &v17[16 * v112];
              *(v113 + 4) = v108;
              *(v113 + 5) = v109;
              v220 = v17;
              v114 = v198;

              v177[0] = sub_217F1CF24(v17, v114);
              v115 = swift_initStackObject();
              *(v115 + 16) = v186;
              *(v115 + 32) = v108;
              v9 = v115 + 32;
              *(v115 + 40) = v109;
              v177[1] = v109;

              v3 = sub_217E97288(v115);
              swift_setDeallocating();
              sub_217E97320(v115 + 32);
              v116 = *(v3 + 16);
              v196 = 0;
              if (!v116)
              {
                v179 = MEMORY[0x277D84F98];
                goto LABEL_128;
              }

              v179 = MEMORY[0x277D84F98];
              v117 = v5;
              v203 = v17;
LABEL_94:
              *&v209 = v110;
              v118 = v3 + 56;
              v119 = 1 << *(v3 + 32);
              if (v119 < 64)
              {
                v120 = ~(-1 << v119);
              }

              else
              {
                v120 = -1;
              }

              v121 = v120 & *(v3 + 56);
              v122 = (v119 + 63) >> 6;

              v123 = 0;
              while (v121)
              {
                v124 = v121;
LABEL_105:
                v121 = (v124 - 1) & v124;
                if (*(v107 + 16))
                {
                  v126 = (*(v3 + 48) + ((v123 << 10) | (16 * __clz(__rbit64(v124)))));
                  v9 = *v126;
                  v127 = v126[1];

                  v128 = sub_217E8E88C(v9, v127);
                  if (v129)
                  {
                    v178 = v3;
                    v130 = *(*(v107 + 56) + 8 * v128);
                    v131 = v130 + 64;
                    v132 = 1 << *(v130 + 32);
                    if (v132 < 64)
                    {
                      v133 = ~(-1 << v132);
                    }

                    else
                    {
                      v133 = -1;
                    }

                    v3 = v133 & *(v130 + 64);
                    v9 = (v132 + 63) >> 6;
                    v193 = v130;
                    swift_bridgeObjectRetain_n();
                    v135 = 0;
                    v190 = v9;
                    v191 = v131;
                    while (v3)
                    {
                      v136 = v135;
LABEL_117:
                      v197 = v177;
                      v137 = __clz(__rbit64(v3)) | (v136 << 6);
                      v138 = (*(v193 + 48) + 16 * v137);
                      v139 = v138[1];
                      v140 = *(*(v193 + 56) + 8 * v137);
                      v3 &= v3 - 1;
                      v187 = *v138;
                      *&v214 = v187;
                      *(&v214 + 1) = v139;
                      v141 = MEMORY[0x28223BE20](v139, v134);
                      v177[-2] = &v214;
                      v202 = v141;

                      v142 = v203;

                      v143 = v196;
                      LODWORD(v195) = sub_217F04BF8(sub_217F2C15C, &v177[-4], v142);
                      v196 = v143;

                      if (v195)
                      {

                        v135 = v136;
                        v9 = v190;
                        v131 = v191;
                      }

                      else
                      {
                        v144 = v117 * v140;
                        v145 = v179;
                        v9 = v190;
                        if (*(v179 + 16) && (v146 = sub_217E8E88C(v187, v202), v145 = v179, (v147 & 1) != 0))
                        {
                          v148 = *(v179 + 56);
                          if (*(v148 + 8 * v146) > v144)
                          {
                            v144 = *(v148 + 8 * v146);
                          }

                          v149 = swift_isUniquelyReferenced_nonNull_native();
                          *&v214 = v145;
                          sub_217F1A0A8(v187, v202, v149, v144);

                          v179 = v214;
                        }

                        else
                        {
                          v150 = swift_isUniquelyReferenced_nonNull_native();
                          *&v214 = v145;
                          sub_217F1A0A8(v187, v202, v150, v144);
                          v179 = v214;

                          sub_217F194B0(&v214, v187, v202);
                        }

                        v135 = v136;
                        v131 = v191;
                      }
                    }

                    while (1)
                    {
                      v136 = v135 + 1;
                      if (__OFADD__(v135, 1))
                      {
                        goto LABEL_161;
                      }

                      if (v136 >= v9)
                      {
                        break;
                      }

                      v3 = *(v131 + 8 * v136);
                      ++v135;
                      if (v3)
                      {
                        goto LABEL_117;
                      }
                    }

                    v107 = v192;
                    v3 = v178;
                  }

                  else
                  {
                  }
                }
              }

              v17 = v203;
              while (1)
              {
                v125 = v123 + 1;
                if (__OFADD__(v123, 1))
                {
                  break;
                }

                if (v125 >= v122)
                {

                  v117 = v117 * v117;
                  v3 = v209;
                  v110 = MEMORY[0x277D84FA0];
                  if (*(v209 + 16))
                  {
                    goto LABEL_94;
                  }

LABEL_128:

                  v95 = sub_217F1C9B4(v179, v177[0]);

                  a1 = v199;
                  v14 = MEMORY[0x277D84F90];
                  goto LABEL_73;
                }

                v124 = *(v118 + 8 * v125);
                ++v123;
                if (v124)
                {
                  v123 = v125;
                  goto LABEL_105;
                }
              }

              __break(1u);
LABEL_158:
              __break(1u);
LABEL_159:
              __break(1u);
LABEL_160:
              __break(1u);
LABEL_161:
              __break(1u);
              goto LABEL_162;
            }

            v151 = v203;

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v17 = sub_217E8DB18(0, *(v17 + 2) + 1, 1, v17);
            }

            v153 = *(v17 + 2);
            v152 = *(v17 + 3);
            if (v153 >= v152 >> 1)
            {
              v17 = sub_217E8DB18((v152 > 1), v153 + 1, 1, v17);
            }

            *(v17 + 2) = v153 + 1;
            v154 = &v17[16 * v153];
            *(v154 + 4) = v193;
            *(v154 + 5) = v151;
            v220 = v17;
            v9 = 0;
          }

          v18 = v184;
          v16 = v181;
          v13 = v201;
          if (v183 == v180)
          {
LABEL_138:

            v156 = *(v17 + 2);
            if (!v156)
            {

              return MEMORY[0x277D84F90];
            }

            v196 = v9;
            *&v214 = v14;
            sub_217EA0D40(0, v156, 0);
            v9 = 0;
            v157 = v214;
            v198 = v17 + 32;
            v203 = v17;
            v195 = v156;
            while (v9 < *(v17 + 2))
            {
              v202 = v157;
              v158 = &v198[16 * v9];
              v160 = *v158;
              v159 = v158[1];
              v161 = *(a1 + 16);

              v200 = v160;
              v201 = v159;
              if (v161 && (v162 = sub_217E8E88C(v160, v159), (v163 & 1) != 0))
              {
                v164 = *(*(a1 + 56) + 40 * v162 + 24);
                v165 = *(v164 + 16);
                if (v165)
                {
                  *&v209 = v14;

                  sub_217EA0864(0, v165, 0);
                  v3 = v209;
                  v197 = v164;
                  v166 = (v164 + 40);
                  do
                  {
                    v168 = *(v166 - 1);
                    v167 = *v166;
                    *&v209 = v3;
                    v170 = *(v3 + 16);
                    v169 = *(v3 + 24);

                    if (v170 >= v169 >> 1)
                    {
                      sub_217EA0864((v169 > 1), v170 + 1, 1);
                      v3 = v209;
                    }

                    *(v3 + 16) = v170 + 1;
                    v171 = v3 + 16 * v170;
                    *(v171 + 32) = v168;
                    *(v171 + 40) = v167;
                    v166 += 12;
                    --v165;
                  }

                  while (v165);

                  a1 = v199;
                  v14 = MEMORY[0x277D84F90];
                  v17 = v203;
                  v156 = v195;
                }

                else
                {
                  v3 = v14;
                  v17 = v203;
                }
              }

              else
              {
                v3 = v14;
              }

              v157 = v202;
              *&v214 = v202;
              v173 = v202[2];
              v172 = v202[3];
              if (v173 >= v172 >> 1)
              {
                sub_217EA0D40((v172 > 1), v173 + 1, 1);
                v157 = v214;
              }

              ++v9;
              *(v157 + 16) = v173 + 1;
              v174 = (v157 + 24 * v173);
              v175 = v201;
              v174[4] = v200;
              v174[5] = v175;
              v174[6] = v3;
              if (v9 == v156)
              {

                return v157;
              }
            }

            goto LABEL_158;
          }

          goto LABEL_7;
        }

        v45 = *(v84 + 8 * v46);
        ++v44;
      }

      while (!v45);
      v44 = v46;
LABEL_32:
      v43 = (v45 - 1) & v45;
    }

    while (!*(v39 + 16));
    v47 = (*(v198 + 6) + ((v44 << 10) | (16 * __clz(__rbit64(v45)))));
    v48 = *v47;
    v49 = v47[1];

    v50 = sub_217E8E88C(v48, v49);
    if ((v51 & 1) == 0)
    {

      v14 = MEMORY[0x277D84F90];
      continue;
    }

    break;
  }

  v190 = v28;
  v202 = v48;
  v196 = v39;
  v52 = *(v39 + 56);
  v53 = 1 << v198[32];
  if (v53 < 64)
  {
    v54 = ~(-1 << v53);
  }

  else
  {
    v54 = -1;
  }

  v55 = v54 & *(v198 + 7);
  v56 = (v53 + 63) >> 6;
  v57 = *(v52 + 8 * v50);

  v58 = 0;
  v191 = MEMORY[0x277D84F98];
  v193 = v56;
  while (v55)
  {
LABEL_43:
    v60 = __clz(__rbit64(v55));
    v55 &= v55 - 1;
    v61 = (*(v198 + 6) + ((v58 << 10) | (16 * v60)));
    v62 = v61[1];
    if (v202 != *v61 || v49 != v62)
    {
      v197 = *v61;
      if ((sub_217F4B144() & 1) == 0)
      {
        v63 = v62;
        v64 = v202;
        v65 = sub_217F4B144();
        v195 = v63;
        if (v65)
        {
          *&v214 = v64;
          *(&v214 + 1) = v49;

          MEMORY[0x21CEAEAC0](v197, v63);
        }

        else
        {
          *&v214 = v197;
          *(&v214 + 1) = v63;
          swift_bridgeObjectRetain_n();
          MEMORY[0x21CEAEAC0](v64, v49);
        }

        if (!*(v196 + 16))
        {

LABEL_57:

          v56 = v193;
          continue;
        }

        v187 = sub_217E8E88C(v214, *(&v214 + 1));
        v67 = v66;
        v68 = v195;

        if ((v67 & 1) == 0)
        {
          goto LABEL_57;
        }

        v69 = *(*(v196 + 56) + 8 * v187) / v57;
        if (v6 >= v69)
        {
          goto LABEL_57;
        }

        v70 = v191;
        LODWORD(v187) = swift_isUniquelyReferenced_nonNull_native();
        *&v214 = v70;
        v71 = sub_217E8E88C(v197, v68);
        v73 = *(v70 + 16);
        v74 = (v72 & 1) == 0;
        v75 = __OFADD__(v73, v74);
        v76 = v73 + v74;
        if (v75)
        {
          goto LABEL_166;
        }

        if (*(v70 + 24) >= v76)
        {
          v56 = v193;
          if ((v187 & 1) == 0)
          {
            v187 = v71;
            LODWORD(v191) = v72;
            sub_217E8F918();
            LOBYTE(v72) = v191;
            v56 = v193;
            v71 = v187;
          }
        }

        else
        {
          LODWORD(v191) = v72;
          sub_217E924FC(v76, v187);
          v71 = sub_217E8E88C(v197, v68);
          v77 = v72 & 1;
          LOBYTE(v72) = v191;
          if ((v191 & 1) != v77)
          {
            goto LABEL_169;
          }

          v56 = v193;
        }

        v78 = v214;
        v191 = v214;
        if (v72)
        {
          *(*(v214 + 56) + 8 * v71) = v69;
        }

        else
        {
          *(v214 + 8 * (v71 >> 6) + 64) |= 1 << v71;
          v79 = (v78[6] + 16 * v71);
          *v79 = v197;
          v79[1] = v68;
          *(v78[7] + 8 * v71) = v69;
          v80 = v78[2];
          v75 = __OFADD__(v80, 1);
          v81 = v80 + 1;
          if (v75)
          {
            goto LABEL_167;
          }

          v78[2] = v81;
        }
      }
    }
  }

  while (1)
  {
    v59 = v58 + 1;
    if (__OFADD__(v58, 1))
    {
      break;
    }

    if (v59 >= v56)
    {

      v82 = v192;
      v83 = swift_isUniquelyReferenced_nonNull_native();
      *&v214 = v82;
      sub_217F1A750(v191, v202, v49, v83, sub_217E8FA80, sub_217E927A0, sub_217F3AE24);

      v84 = v194;
      v192 = v214;
      v14 = MEMORY[0x277D84F90];
      v39 = v196;
      v28 = v190;
      goto LABEL_26;
    }

    v55 = *(v194 + 8 * v59);
    ++v58;
    if (v55)
    {
      v58 = v59;
      goto LABEL_43;
    }
  }

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
  MEMORY[0x21CEAF510](v9);
  v206 = v211;
  v207 = v212;
  v208[0] = v213[0];
  *(v3 + 73) = *(v3 + 169);
  v204 = v209;
  v205 = v210;
  sub_217E98274(&v204);

  __break(1u);
LABEL_169:
  sub_217F4B1C4();
  __break(1u);
LABEL_170:
  swift_bridgeObjectRelease_n();
  MEMORY[0x21CEAF510](v9);

  __break(1u);
  return result;
}

char *sub_217F2A234(uint64_t a1, uint64_t a2, char *__src)
{
  if (!__src[888])
  {
    memcpy(__dst, __src, sizeof(__dst));
    v38 = 0;
    memcpy(v39, __src + 889, sizeof(v39));
    return sub_217F25DCC(a1, a2, __dst);
  }

  if (__src[888] != 1)
  {
    memcpy(__dst, __src, sizeof(__dst));
    v38 = 2;
    memcpy(v39, __src + 889, sizeof(v39));
    return sub_217F28F44(a1, a2, __dst);
  }

  v5 = *(a1 + 16);
  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    v8 = MEMORY[0x277D84F90];
    goto LABEL_10;
  }

  v7 = MEMORY[0x277D84F90];
  v8 = sub_217E8E6DC(*(a1 + 16), 0);
  v9 = sub_217E96C08(__dst, (v8 + 32), v5, a1);

  sub_217E7F628();
  if (v9 == v5)
  {
    v6 = v7;
LABEL_10:
    __dst[0] = v8;
    v5 = 0;
    sub_217F1A8BC(__dst);
    v14 = __dst[0];
    v15 = *(__dst[0] + 2);
    if (v15)
    {
      __dst[0] = v6;
      sub_217EA0D40(0, v15, 0);
      v16 = 0;
      v13 = __dst[0];
      v32 = v14;
      v33 = v14 + 32;
      v31 = v15;
      while (v16 < *(v14 + 2))
      {
        v17 = &v33[40 * v16];
        v18 = *v17;
        v19 = *(v17 + 3);
        v20 = *(v19 + 16);
        v36 = *(v17 + 1);
        if (v20)
        {
          v34 = *v17;
          v35 = v13;
          swift_bridgeObjectRetain_n();
          swift_bridgeObjectRetain_n();
          sub_217EA0864(0, v20, 0);
          v21 = v6;
          v22 = (v19 + 40);
          do
          {
            v23 = *(v22 - 1);
            v24 = *v22;
            v26 = *(v21 + 2);
            v25 = *(v21 + 3);

            if (v26 >= v25 >> 1)
            {
              sub_217EA0864((v25 > 1), v26 + 1, 1);
            }

            *(v21 + 2) = v26 + 1;
            v27 = &v21[16 * v26];
            *(v27 + 4) = v23;
            *(v27 + 5) = v24;
            v22 += 12;
            --v20;
          }

          while (v20);
          swift_bridgeObjectRelease_n();

          v6 = MEMORY[0x277D84F90];
          v15 = v31;
          v14 = v32;
          v13 = v35;
        }

        else
        {

          v21 = v6;
        }

        __dst[0] = v13;
        v5 = *(v13 + 2);
        v28 = *(v13 + 3);
        if (v5 >= v28 >> 1)
        {
          sub_217EA0D40((v28 > 1), v5 + 1, 1);
          v13 = __dst[0];
        }

        ++v16;
        *(v13 + 2) = v5 + 1;
        v29 = &v13[24 * v5];
        *(v29 + 4) = v18;
        *(v29 + 5) = v36;
        *(v29 + 6) = v21;
        if (v16 == v15)
        {

          return v13;
        }
      }

      __break(1u);
      goto LABEL_27;
    }

    return MEMORY[0x277D84F90];
  }

LABEL_27:
  __break(1u);
  MEMORY[0x21CEAF510](v5);

  __break(1u);
  return result;
}

unint64_t sub_217F2A568()
{
  result = qword_280C27698;
  if (!qword_280C27698)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CBF72A8, &qword_217F59298);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C27698);
  }

  return result;
}

uint64_t sub_217F2A5E0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_217F2A624(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10XavierNews7ClassicV23HeadlineClusteringErrorO(uint64_t a1)
{
  if ((*(a1 + 40) & 7) == 7)
  {
    return (*a1 + 7);
  }

  else
  {
    return *(a1 + 40) & 7;
  }
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_217F2A698(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF9 && *(a1 + 41))
  {
    return (*a1 + 249);
  }

  v3 = *(a1 + 40);
  if (v3 <= 7)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_217F2A6E0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF8)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 249;
    if (a3 >= 0xF9)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF9)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_217F2A734(uint64_t result, unsigned int a2)
{
  if (a2 >= 7)
  {
    *result = a2 - 7;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    LOBYTE(a2) = 7;
  }

  *(result + 40) = a2;
  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_217F2A788(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF9 && *(a1 + 25))
  {
    return (*a1 + 249);
  }

  v3 = *(a1 + 24);
  if (v3 <= 7)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_217F2A7D0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF8)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 249;
    if (a3 >= 0xF9)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF9)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t _s14descr2829CD401O22HeadlineClusteringRuleO10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s14descr2829CD401O22HeadlineClusteringRuleO10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t _s14descr2829CD401O22HeadlineClusteringRuleO28PublisherDiversityCodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s14descr2829CD401O22HeadlineClusteringRuleO28PublisherDiversityCodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_217F2ABC0(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *sub_217F2AC10(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_217F2ACB0()
{
  result = qword_27CBF72B8;
  if (!qword_27CBF72B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF72B8);
  }

  return result;
}

unint64_t sub_217F2AD08()
{
  result = qword_27CBF72C0;
  if (!qword_27CBF72C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF72C0);
  }

  return result;
}

unint64_t sub_217F2AD60()
{
  result = qword_27CBF72C8;
  if (!qword_27CBF72C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF72C8);
  }

  return result;
}

unint64_t sub_217F2ADB8()
{
  result = qword_27CBF72D0;
  if (!qword_27CBF72D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF72D0);
  }

  return result;
}

unint64_t sub_217F2AE10()
{
  result = qword_27CBF72D8;
  if (!qword_27CBF72D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF72D8);
  }

  return result;
}

unint64_t sub_217F2AE68()
{
  result = qword_27CBF72E0;
  if (!qword_27CBF72E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF72E0);
  }

  return result;
}

unint64_t sub_217F2AEC0()
{
  result = qword_27CBF72E8;
  if (!qword_27CBF72E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF72E8);
  }

  return result;
}

unint64_t sub_217F2AF18()
{
  result = qword_27CBF72F0;
  if (!qword_27CBF72F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF72F0);
  }

  return result;
}

unint64_t sub_217F2AF70()
{
  result = qword_27CBF72F8;
  if (!qword_27CBF72F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF72F8);
  }

  return result;
}

unint64_t sub_217F2AFC8()
{
  result = qword_280C27820;
  if (!qword_280C27820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C27820);
  }

  return result;
}

unint64_t sub_217F2B020()
{
  result = qword_280C27828;
  if (!qword_280C27828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C27828);
  }

  return result;
}

unint64_t sub_217F2B078()
{
  result = qword_280C27808;
  if (!qword_280C27808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C27808);
  }

  return result;
}

unint64_t sub_217F2B0D0()
{
  result = qword_280C27810;
  if (!qword_280C27810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C27810);
  }

  return result;
}

unint64_t sub_217F2B128()
{
  result = qword_280C27838;
  if (!qword_280C27838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C27838);
  }

  return result;
}

unint64_t sub_217F2B180()
{
  result = qword_280C27840;
  if (!qword_280C27840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C27840);
  }

  return result;
}

unint64_t sub_217F2B1D8()
{
  result = qword_280C277C0;
  if (!qword_280C277C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C277C0);
  }

  return result;
}

unint64_t sub_217F2B230()
{
  result = qword_280C277C8;
  if (!qword_280C277C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C277C8);
  }

  return result;
}

unint64_t sub_217F2B288()
{
  result = qword_280C277F0;
  if (!qword_280C277F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C277F0);
  }

  return result;
}

unint64_t sub_217F2B2E0()
{
  result = qword_280C277F8;
  if (!qword_280C277F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C277F8);
  }

  return result;
}

unint64_t sub_217F2B338()
{
  result = qword_280C277D8;
  if (!qword_280C277D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C277D8);
  }

  return result;
}

unint64_t sub_217F2B390()
{
  result = qword_280C277E0;
  if (!qword_280C277E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C277E0);
  }

  return result;
}

unint64_t sub_217F2B3E8()
{
  result = qword_280C27868;
  if (!qword_280C27868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C27868);
  }

  return result;
}

unint64_t sub_217F2B440()
{
  result = qword_280C27870;
  if (!qword_280C27870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C27870);
  }

  return result;
}

unint64_t sub_217F2B498()
{
  result = qword_280C277A8;
  if (!qword_280C277A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C277A8);
  }

  return result;
}

unint64_t sub_217F2B4F0()
{
  result = qword_280C277B0;
  if (!qword_280C277B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C277B0);
  }

  return result;
}

unint64_t sub_217F2B548()
{
  result = qword_280C27850;
  if (!qword_280C27850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C27850);
  }

  return result;
}

unint64_t sub_217F2B5A0()
{
  result = qword_280C27858;
  if (!qword_280C27858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C27858);
  }

  return result;
}

double sub_217F2B688(uint64_t a1)
{
  *(a1 + 432) = 0;
  result = 0.0;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_217F2B6CC(uint64_t a1)
{
  v1 = *(a1 + 144);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_217F2B6E4(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(a1, 0);
}

uint64_t sub_217F2B714(uint64_t a1, char a2)
{
  if (a2)
  {
    return *(v2 + 112);
  }

  v4 = *(v2 + 120);
  v5 = *(v2 + 136);
  v6 = *(v2 + 152);
  return sub_217ED8374(*(v2 + 112), a1);
}

uint64_t sub_217F2B770(uint64_t a1, char a2)
{
  if (a2)
  {
    return *(v2 + 216);
  }

  v4 = *(v2 + 224);
  v5 = *(v2 + 240);
  v6 = *(v2 + 256);
  return sub_217ED8374(*(v2 + 216), a1);
}

uint64_t sub_217F2B7C8(uint64_t a1, char a2)
{
  if (a2)
  {
    return *(v2 + 264);
  }

  v4 = *(v2 + 272);
  v5 = *(v2 + 288);
  v6 = *(v2 + 304);
  return sub_217ED8374(*(v2 + 264), a1);
}

uint64_t sub_217F2B81C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2[1];
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  return sub_217ED75D0(a1, a2);
}

uint64_t objectdestroy_78Tm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 72);

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_217F2B89C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_217F2B908(uint64_t a1, char a2)
{
  if (a2)
  {
    return *(v2 + 168);
  }

  v4 = *(v2 + 176);
  v5 = *(v2 + 192);
  v6 = *(v2 + 208);
  return sub_217ED8374(*(v2 + 168), a1);
}

uint64_t sub_217F2B960(uint64_t a1, char a2)
{
  if (a2)
  {
    return *(v2 + 16);
  }

  v4 = *(v2 + 24);
  v5 = *(v2 + 40);
  v6 = *(v2 + 56);
  return sub_217ED8374(*(v2 + 16), a1);
}

uint64_t objectdestroy_81Tm()
{
  v1 = v0[20];

  v2 = v0[40];

  v3 = v0[46];

  v4 = v0[49];

  return MEMORY[0x2821FE8E8](v0, 450, 7);
}

uint64_t sub_217F2BA0C(uint64_t a1, char a2)
{
  if (a2)
  {
    return *(v2 + 64);
  }

  v4 = *(v2 + 72);
  v5 = *(v2 + 88);
  v6 = *(v2 + 104);
  return sub_217ED8374(*(v2 + 64), a1);
}

uint64_t sub_217F2BA80(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_217F2BA94(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_217F4B144() & 1;
  }
}

uint64_t sub_217F2BB04(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 == 3 || a4 == 5 || a4 == 4)
  {
  }

  return result;
}

uint64_t sub_217F2BB34(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 == 3 || a4 == 5 || a4 == 4)
  {
  }

  return result;
}

unint64_t sub_217F2BB74()
{
  result = qword_280C27790;
  if (!qword_280C27790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C27790);
  }

  return result;
}

uint64_t sub_217F2BC24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6 == 5)
  {
  }

  return result;
}

uint64_t sub_217F2BC3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6 == 5)
  {
  }

  return result;
}

uint64_t sub_217F2BC84(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t _s14descr2829CD401O24BundleArticleQuotaResultOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s14descr2829CD401O24BundleArticleQuotaResultOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_217F2BE38(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_217F2BE80(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_217F2BEDC()
{
  result = qword_27CBF7330;
  if (!qword_27CBF7330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF7330);
  }

  return result;
}

uint64_t ClassicAggregateContextType.lookupBaseline(with:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = sub_217F4AD74();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v18 - v14;
  v18 = *a1;
  v19 = 0;
  sub_217F2C3F4(&v18, a2, a3, &v20);
  v18 = v20;
  AggregateContextType.lookup(identifier:option:)(12390, 0xE200000000000000, &v18, a2, v8);
  sub_217F2C550(v18);
  v16 = *(AssociatedTypeWitness - 8);
  if ((*(v16 + 48))(v15, 1, AssociatedTypeWitness) != 1)
  {
    return (*(v16 + 32))(a4, v15, AssociatedTypeWitness);
  }

  (*(v11 + 8))(v15, v10);
  result = sub_217F4AE94();
  __break(1u);
  return result;
}

uint64_t sub_217F2C3F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (**a4)()@<X8>)
{
  v8 = *(a2 - 8);
  v9 = *(v8 + 64);
  result = MEMORY[0x28223BE20](a1, a2);
  if (*(result + 16))
  {
    v11 = 0;
    v12 = 0;
  }

  else
  {
    v14 = *result;
    v13 = *(result + 8);
    (*(v8 + 16))(&v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v4, a2);
    v15 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v12 = swift_allocObject();
    *(v12 + 16) = a2;
    *(v12 + 24) = a3;
    result = (*(v8 + 32))(v12 + v15, &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
    v16 = (v12 + ((v9 + v15 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v16 = v14;
    v16[1] = v13;
    v11 = sub_217F2DEF8;
  }

  *a4 = v11;
  a4[1] = v12;
  return result;
}

uint64_t sub_217F2C550(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t ClassicAggregateContextType.updateBaseline(with:updateBlock:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *a1;
  v10 = a1[1];
  v11 = sub_217E97288(&unk_2829CE3F8);
  sub_217E97320(&unk_2829CE418);
  *&v14 = v9;
  *(&v14 + 1) = v10;
  v15 = 0;
  sub_217F2C3F4(&v14, a4, a5, &v16);
  v14 = v16;
  (*(*(a5 + 8) + 56))(v11, &v14, a2, a3, a4);

  v12 = v14;

  return sub_217F2C550(v12);
}

uint64_t ClassicAggregateContextType.update(with:using:updateBlock:)(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *a2;
  v14 = 0;
  sub_217F2C3F4(&v13, a5, a6, &v15);
  v13 = v15;
  (*(*(a6 + 8) + 56))(a1, &v13, a3, a4, a5);
  v11 = v13;

  return sub_217F2C550(v11);
}

uint64_t ClassicAggregateContextType.lookup(with:using:)(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a2 + 16);
  v10 = *a2;
  v11 = v7;
  sub_217F2C3F4(&v10, a3, a4, &v12);
  v10 = v12;
  v8 = (*(*(a4 + 8) + 48))(a1, &v10, a3);
  sub_217F2C550(v10);
  return v8;
}

uint64_t ClassicAggregateContextType.lookupBaseline(and:baselinePrior:featurePrior:)(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v9 = *a4;
  v10 = a4[1];
  v11 = *(a4 + 16);
  v13 = *a3;
  ClassicAggregateContextType.lookupBaseline(with:)(&v13, a5, a6, a1);
  *&v13 = v9;
  *(&v13 + 1) = v10;
  v14 = v11;
  return ClassicAggregateContextType.lookup(with:using:)(a2, &v13, a5, a6);
}

uint64_t ClassicAggregateContextType.validate(features:publisherTopicMinimumEventCount:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 16);
  v7 = MEMORY[0x277D84F90];
  if (v6)
  {
    v41 = MEMORY[0x277D84F90];
    sub_217EA0864(0, v6, 0);
    v7 = v41;
    v8 = (a1 + 40);
    v9 = v6;
    do
    {
      v11 = *(v8 - 1);
      v10 = *v8;

      v41 = v7;
      v13 = *(v7 + 16);
      v12 = *(v7 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_217EA0864((v12 > 1), v13 + 1, 1);
        v7 = v41;
      }

      v8 += 7;
      *(v7 + 16) = v13 + 1;
      v14 = v7 + 16 * v13;
      *(v14 + 32) = v11;
      *(v14 + 40) = v10;
      --v9;
    }

    while (v9);
  }

  v15 = sub_217E97288(v7);

  v41 = 0;
  v42 = 0;
  v39 = (*(*(a4 + 8) + 48))(v15, &v41, a3);

  if (v6)
  {
    v16 = (a1 + 80);
    v17 = MEMORY[0x277D84F90];
    v35 = a4;
    do
    {
      v18 = *(v16 - 2);
      v19 = *(v16 - 1);
      v20 = *(v16 - 4);
      v21 = *(v16 - 3);
      v22 = *(v16 - 5);
      v41 = *(v16 - 6);
      v42 = v22;
      v43 = v20;
      v44 = v21;
      v45 = v18;
      v46 = v19;
      v47 = *v16;
      sub_217E81030(v41, v22, v20, v21, v18, v19, v47);
      v23 = sub_217F2CAAC(&v41, v39, a2, a3, a4);
      v24 = v41;
      v25 = v42;
      v26 = v43;
      v27 = v44;
      v28 = v45;
      if (v23)
      {
        v36 = v46;
        v37 = v47;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v48 = v17;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_217EA0D80(0, *(v17 + 16) + 1, 1);
          v17 = v48;
        }

        v31 = *(v17 + 16);
        v30 = *(v17 + 24);
        v32 = v31 + 1;
        if (v31 >= v30 >> 1)
        {
          sub_217EA0D80((v30 > 1), v31 + 1, 1);
          v32 = v31 + 1;
          v17 = v48;
        }

        *(v17 + 16) = v32;
        v33 = v17 + 56 * v31;
        *(v33 + 32) = v24;
        *(v33 + 40) = v25;
        *(v33 + 48) = v26;
        *(v33 + 56) = v27;
        a4 = v35;
        *(v33 + 64) = v28;
        *(v33 + 72) = v36;
        *(v33 + 80) = v37;
      }

      else
      {
        sub_217E810D0(v41, v42, v43, v44, v45, v46, v47);
      }

      v16 += 56;
      --v6;
    }

    while (v6);
  }

  else
  {
    v17 = MEMORY[0x277D84F90];
  }

  return v17;
}

BOOL sub_217F2CAAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v56 = a3;
  v8 = *(a5 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = sub_217F4AD74();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10, v12);
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v42 - v15;
  v17 = *(AssociatedTypeWitness - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v19, v20);
  v27 = MEMORY[0x28223BE20](v21, v22);
  v29 = &v42 - v28;
  if (*(a1 + 48) != 3)
  {
    return 1;
  }

  v50 = v25;
  v51 = v24;
  v52 = v23;
  v53 = v5;
  v30 = *(a1 + 40);
  v48 = *(a1 + 32);
  v46 = v26;
  v47 = v30;
  v31 = *(a1 + 16);
  v32 = *(a1 + 24);
  v54 = 2831206;
  v55 = 0xE300000000000000;
  MEMORY[0x21CEAEAC0](v31, v32, v27);
  v49 = a2;
  sub_217F4AAC4();

  v33 = *(v17 + 48);
  if (v33(v16, 1, AssociatedTypeWitness) == 1)
  {
    (*(v51 + 8))(v16, v52);
    return 0;
  }

  v44 = *(v17 + 32);
  v45 = v33;
  v44(v29, v16, AssociatedTypeWitness);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v36 = *(AssociatedConformanceWitness + 32);
  v37 = v36(AssociatedTypeWitness, AssociatedConformanceWitness);
  if (v56 >= 1 && v37 < v56)
  {
    (*(v17 + 8))(v29, AssociatedTypeWitness);
    return 0;
  }

  v43 = v36;
  v54 = 2831206;
  v55 = 0xE300000000000000;
  MEMORY[0x21CEAEAC0](v48, v47);
  v38 = v50;
  sub_217F4AAC4();

  if (v45(v38, 1, AssociatedTypeWitness) == 1)
  {
    (*(v17 + 8))(v29, AssociatedTypeWitness);
    (*(v51 + 8))(v38, v52);
    return 0;
  }

  else
  {
    v39 = v46;
    v44(v46, v38, AssociatedTypeWitness);
    v40 = v43(AssociatedTypeWitness, AssociatedConformanceWitness);
    v41 = *(v17 + 8);
    v41(v39, AssociatedTypeWitness);
    v41(v29, AssociatedTypeWitness);
    result = 1;
    if (v56 >= 1)
    {
      return v40 >= v56;
    }
  }

  return result;
}

uint64_t AggregateContext.createAggregate(for:clicks:impressions:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v10 = a3 + *(type metadata accessor for Aggregate(0) + 32);
  sub_217F4A9E4();
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 16) = a4;
  *(a3 + 24) = a5;
  *(a3 + 32) = 0;
}

uint64_t sub_217F2CF68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v10 = a3 + *(type metadata accessor for Aggregate(0) + 32);
  sub_217F4A9E4();
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 16) = a4;
  *(a3 + 24) = a5;
  *(a3 + 32) = 0;
}

uint64_t ClassicAggregateContext.baseline.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *v1;
  v11 = v1;
  v5 = v1 + *(v3 + 104);
  v6 = *(v5 + 1);
  (*v5)(&v10);
  v9 = v10;
  WitnessTable = swift_getWitnessTable();
  return ClassicAggregateContextType.lookupBaseline(with:)(&v9, v4, WitnessTable, a1);
}

uint64_t ClassicAggregateContext.baselinePrior.getter()
{
  v1 = v0 + *(*v0 + 104);
  v2 = *(v1 + 8);
  return (*v1)();
}

uint64_t ClassicAggregateContext.featurePrior.getter()
{
  v1 = *v0;
  v2 = *(*(*v0 + 88) + 8);
  v3 = *(*v0 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness, v7);
  v9 = &v18 - v8;
  v10 = v0 + *(v1 + 112);
  v12 = *v10;
  v11 = *(v10 + 8);
  ClassicAggregateContext.baseline.getter(v9);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  ReadonlyAggregateType.personalizationValue.getter(AssociatedTypeWitness, AssociatedConformanceWitness);
  v15 = v14;
  v16 = (*(v5 + 8))(v9, AssociatedTypeWitness);
  return v12(v16, v15);
}

double ClassicAggregateContext.priors.getter@<D0>(_OWORD *a1@<X8>)
{
  v3 = v1 + *(*v1 + 104);
  v4 = *(v3 + 8);
  (*v3)(v10);
  v5 = *v10;
  v6 = *&v10[1];
  ClassicAggregateContext.featurePrior.getter();
  *&v8 = v5;
  *(&v8 + 1) = v6;
  sub_217EC668C(v5, v6);
  sub_217EC686C(*&v9, *(&v9 + 1));
  result = v5;
  *a1 = v8;
  a1[1] = v9;
  return result;
}

uint64_t ClassicAggregateContext.lookup(with:)(uint64_t a1)
{
  v22 = a1;
  v2 = *v1;
  v3 = *v1;
  v4 = *(*(*v1 + 88) + 8);
  v5 = *(*v1 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness, v9);
  v11 = &v21 - v10;
  v26 = v1;
  v12 = v1 + *(v2 + 112);
  v13 = *v12;
  v14 = *(v12 + 1);
  ClassicAggregateContext.baseline.getter(v11);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  ReadonlyAggregateType.personalizationValue.getter(AssociatedTypeWitness, AssociatedConformanceWitness);
  v17 = v16;
  v18 = (*(v7 + 8))(v11, AssociatedTypeWitness);
  v13(&v25, v18, v17);
  v23 = v25;
  v24 = 0;
  WitnessTable = swift_getWitnessTable();
  return ClassicAggregateContextType.lookup(with:using:)(v22, &v23, v3, WitnessTable);
}

uint64_t ClassicAggregateContext.lookup(identifier:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF52D0, &qword_217F4C930);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_217F4BC20;
  *(inited + 32) = a1;
  *(inited + 40) = a2;

  v7 = sub_217F2DCD4(inited);
  swift_setDeallocating();
  sub_217E97320(inited + 32);
  ClassicAggregateContext.lookup(with:)(v7);

  v8 = *(*(v5 + 88) + 8);
  v9 = *(v5 + 80);
  swift_getAssociatedTypeWitness();

  sub_217F4AAC4();
}

uint64_t ClassicAggregateContext.__allocating_init(context:baselinePriorProvider:featurePriorProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(v5 + 48);
  v12 = *(v5 + 52);
  v13 = swift_allocObject();
  (*(*(*(*v13 + 80) - 8) + 32))(v13 + *(*v13 + 96), a1);
  v14 = (v13 + *(*v13 + 104));
  *v14 = a2;
  v14[1] = a3;
  v15 = (v13 + *(*v13 + 112));
  *v15 = a4;
  v15[1] = a5;
  return v13;
}

uint64_t ClassicAggregateContext.lookupAll()()
{
  v1 = *(*(*(*v0 + 88) + 8) + 40);
  v2 = *(*v0 + 80);
  v3 = v0 + *(*v0 + 96);
  return v1(v2);
}

uint64_t ClassicAggregateContext.lookup(with:option:)(uint64_t a1, __int128 *a2)
{
  v3 = *v2;
  v4 = *(*v2 + 96);
  v6 = *a2;
  return (*(*(*(v3 + 88) + 8) + 48))(a1, &v6, *(v3 + 80));
}

uint64_t ClassicAggregateContext.update(with:option:updateBlock:)(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v6 = *(*v4 + 96);
  v8 = *a2;
  return (*(*(*(v5 + 88) + 8) + 56))(a1, &v8, a3, a4, *(v5 + 80));
}

uint64_t ClassicAggregateContext.createAggregate(for:clicks:impressions:)(uint64_t a1, uint64_t a2)
{
  v3 = *(*(*v2 + 88) + 16);
  v4 = *(*v2 + 80);
  v5 = v2 + *(*v2 + 96);
  return v3(a1, a2, v4);
}

uint64_t ClassicAggregateContext.deinit()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 96));
  v1 = *(v0 + *(*v0 + 104) + 8);

  v2 = *(v0 + *(*v0 + 112) + 8);

  return v0;
}

uint64_t ClassicAggregateContext.__deallocating_deinit()
{
  ClassicAggregateContext.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

Swift::Double __swiftcall ClassicAggregateContext.decayedPublisherDiversificationPenalty(initialValue:finalValue:halfLife:)(Swift::Double initialValue, Swift::Double finalValue, Swift::Double halfLife)
{
  v7 = *(*(*v3 + 88) + 8);
  v8 = *(*v3 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness, v12);
  v14 = &v18 - v13;
  if (halfLife != 0.0)
  {
    ClassicAggregateContext.baseline.getter(&v18 - v13);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v16 = (*(AssociatedConformanceWitness + 32))(AssociatedTypeWitness, AssociatedConformanceWitness);
    (*(v10 + 8))(v14, AssociatedTypeWitness);
    return (initialValue - finalValue) / exp2(v16) / halfLife + finalValue;
  }

  return finalValue;
}

uint64_t sub_217F2DCD4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5D28, &qword_217F520D8);
    v3 = sub_217F4ADC4();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      v10 = *(v3 + 40);
      sub_217F4B224();

      sub_217F4AB24();
      result = sub_217F4B254();
      v12 = ~(-1 << *(v3 + 32));
      for (i = result & v12; ; i = (i + 1) & v12)
      {
        v14 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v14) == 0)
        {
          break;
        }

        v15 = (*(v3 + 48) + 16 * i);
        if (*v15 != v9 || v15[1] != v8)
        {
          result = sub_217F4B144();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v14;
      v17 = (*(v3 + 48) + 16 * i);
      *v17 = v9;
      v17[1] = v8;
      v18 = *(v3 + 16);
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (!v19)
      {
        *(v3 + 16) = v20;
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

uint64_t sub_217F2DE3C(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_217F2DE78(uint64_t a1, uint64_t a2)
{
  v3 = a2 + 80;
  v2 = *(a2 + 80);
  v4 = *(*(v3 + 8) + 8);
  return swift_getAssociatedConformanceWitness();
}

uint64_t sub_217F2DE98(uint64_t a1, uint64_t a2)
{
  v3 = a2 + 80;
  v2 = *(a2 + 80);
  v4 = *(*(v3 + 8) + 8);
  return swift_getAssociatedConformanceWitness();
}

uint64_t sub_217F2DF90(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v42 = MEMORY[0x277D84F90];
  sub_217EA0CA0(0, v1, 0);
  v2 = v42;
  v4 = a1 + 64;
  v5 = -1 << *(a1 + 32);
  result = sub_217F4AD84();
  if (result < 0 || (v7 = result, result >= 1 << *(a1 + 32)))
  {
LABEL_24:
    __break(1u);
  }

  else
  {
    v8 = *(a1 + 36);
    v26 = v1;
    v9 = 1;
    v27 = v8;
    while (1)
    {
      v10 = v7 >> 6;
      if ((*(v4 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
      {
        break;
      }

      if (v8 != *(a1 + 36))
      {
        goto LABEL_26;
      }

      v28 = v9;
      v11 = (*(a1 + 56) + (v7 << 6));
      v31 = *v11;
      v32 = v11[1];
      *v33 = v11[2];
      *&v33[9] = *(v11 + 41);
      v12 = (*(a1 + 48) + 16 * v7);
      v13 = v12[1];
      v29 = *v11;
      *v30 = v11[2];
      *&v30[9] = *&v33[9];
      v34[0] = *v12;
      v14 = v34[0];
      v34[1] = v13;
      v35 = v31;
      v36 = v32;
      v37[0] = *v33;
      *(v37 + 9) = *&v33[9];
      swift_bridgeObjectRetain_n();
      sub_217F3ADC4(v34, &qword_27CBF73C8, &qword_217F5A2C8);
      v38[0] = v14;
      v38[1] = v13;
      v39 = v29;
      v40 = v32;
      v41[0] = *v30;
      *(v41 + 9) = *&v33[9];
      result = sub_217F3ADC4(v38, &qword_27CBF73C8, &qword_217F5A2C8);
      v42 = v2;
      v16 = *(v2 + 16);
      v15 = *(v2 + 24);
      if (v16 >= v15 >> 1)
      {
        result = sub_217EA0CA0((v15 > 1), v16 + 1, 1);
        v2 = v42;
      }

      v17 = *&v41[0];
      *(v2 + 16) = v16 + 1;
      *(v2 + 8 * v16 + 32) = v17;
      v18 = 1 << *(a1 + 32);
      if (v7 >= v18)
      {
        goto LABEL_27;
      }

      v4 = a1 + 64;
      v19 = *(a1 + 64 + 8 * v10);
      if ((v19 & (1 << v7)) == 0)
      {
        goto LABEL_28;
      }

      v8 = v27;
      if (v27 != *(a1 + 36))
      {
        goto LABEL_29;
      }

      v20 = v19 & (-2 << (v7 & 0x3F));
      if (v20)
      {
        v7 = __clz(__rbit64(v20)) | v7 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v21 = v10 << 6;
        v22 = v10 + 1;
        v23 = (a1 + 72 + 8 * v10);
        while (v22 < (v18 + 63) >> 6)
        {
          v25 = *v23++;
          v24 = v25;
          v21 += 64;
          ++v22;
          if (v25)
          {
            result = sub_217F3AB3C(v7, v27, 0);
            v7 = __clz(__rbit64(v24)) + v21;
            goto LABEL_19;
          }
        }

        result = sub_217F3AB3C(v7, v27, 0);
        v7 = v18;
      }

LABEL_19:
      if (v28 == v26)
      {
        return v2;
      }

      if ((v7 & 0x8000000000000000) == 0)
      {
        v9 = v28 + 1;
        if (v7 < 1 << *(a1 + 32))
        {
          continue;
        }
      }

      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_217F2E298(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v42 = MEMORY[0x277D84F90];
  sub_217EA0CA0(0, v1, 0);
  v2 = v42;
  v4 = a1 + 64;
  v5 = -1 << *(a1 + 32);
  result = sub_217F4AD84();
  if (result < 0 || (v7 = result, result >= 1 << *(a1 + 32)))
  {
LABEL_24:
    __break(1u);
  }

  else
  {
    v8 = *(a1 + 36);
    v26 = v1;
    v9 = 1;
    v27 = v8;
    while (1)
    {
      v10 = v7 >> 6;
      if ((*(v4 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
      {
        break;
      }

      if (v8 != *(a1 + 36))
      {
        goto LABEL_26;
      }

      v28 = v9;
      v11 = (*(a1 + 56) + (v7 << 6));
      v31 = *v11;
      v32 = v11[1];
      *v33 = v11[2];
      *&v33[9] = *(v11 + 41);
      v12 = (*(a1 + 48) + 16 * v7);
      v13 = v12[1];
      v29 = *v11;
      *v30 = v11[2];
      *&v30[9] = *&v33[9];
      v34[0] = *v12;
      v14 = v34[0];
      v34[1] = v13;
      v35 = v31;
      v36 = v32;
      v37[0] = *v33;
      *(v37 + 9) = *&v33[9];
      swift_bridgeObjectRetain_n();
      sub_217F3ADC4(v34, &qword_27CBF73C8, &qword_217F5A2C8);
      v38[0] = v14;
      v38[1] = v13;
      v39 = v29;
      v40 = v32;
      v41[0] = *v30;
      *(v41 + 9) = *&v33[9];
      result = sub_217F3ADC4(v38, &qword_27CBF73C8, &qword_217F5A2C8);
      v42 = v2;
      v16 = *(v2 + 16);
      v15 = *(v2 + 24);
      if (v16 >= v15 >> 1)
      {
        result = sub_217EA0CA0((v15 > 1), v16 + 1, 1);
        v2 = v42;
      }

      v17 = *(&v39 + 1);
      *(v2 + 16) = v16 + 1;
      *(v2 + 8 * v16 + 32) = v17;
      v18 = 1 << *(a1 + 32);
      if (v7 >= v18)
      {
        goto LABEL_27;
      }

      v4 = a1 + 64;
      v19 = *(a1 + 64 + 8 * v10);
      if ((v19 & (1 << v7)) == 0)
      {
        goto LABEL_28;
      }

      v8 = v27;
      if (v27 != *(a1 + 36))
      {
        goto LABEL_29;
      }

      v20 = v19 & (-2 << (v7 & 0x3F));
      if (v20)
      {
        v7 = __clz(__rbit64(v20)) | v7 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v21 = v10 << 6;
        v22 = v10 + 1;
        v23 = (a1 + 72 + 8 * v10);
        while (v22 < (v18 + 63) >> 6)
        {
          v25 = *v23++;
          v24 = v25;
          v21 += 64;
          ++v22;
          if (v25)
          {
            result = sub_217F3AB3C(v7, v27, 0);
            v7 = __clz(__rbit64(v24)) + v21;
            goto LABEL_19;
          }
        }

        result = sub_217F3AB3C(v7, v27, 0);
        v7 = v18;
      }

LABEL_19:
      if (v28 == v26)
      {
        return v2;
      }

      if ((v7 & 0x8000000000000000) == 0)
      {
        v9 = v28 + 1;
        if (v7 < 1 << *(a1 + 32))
        {
          continue;
        }
      }

      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_217F2E5A0(uint64_t a1, char **a2)
{
  v2 = a1 + 56;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 56);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {
    }

    v5 = *(v2 + 8 * v9);
    ++v8;
    if (v5)
    {
      v8 = v9;
      do
      {
LABEL_8:
        v10 = (*(a1 + 48) + ((v8 << 10) | (16 * __clz(__rbit64(v5)))));
        v12 = *v10;
        v11 = v10[1];

        MEMORY[0x21CEAEAC0](v12, v11);
        v13 = *a2;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *a2 = v13;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v13 = sub_217E8DE90(0, *(v13 + 2) + 1, 1, v13);
          *a2 = v13;
        }

        v16 = *(v13 + 2);
        v15 = *(v13 + 3);
        if (v16 >= v15 >> 1)
        {
          v13 = sub_217E8DE90((v15 > 1), v16 + 1, 1, v13);
          *a2 = v13;
        }

        v5 &= v5 - 1;
        *(v13 + 2) = v16 + 1;
        v17 = &v13[56 * v16];
        *(v17 + 4) = 2831206;
        *(v17 + 5) = 0xE300000000000000;
        *(v17 + 6) = v12;
        *(v17 + 7) = v11;
        *(v17 + 8) = 0;
        *(v17 + 9) = 0;
        v17[80] = 4;
      }

      while (v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_217F2E770(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v5 = result;
    for (i = (a3 + 40); ; i += 2)
    {
      v7 = *i;
      v8[0] = *(i - 1);
      v8[1] = v7;

      v5(v8);
      if (v3)
      {
        break;
      }

      if (!--v4)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t sub_217F2E804(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, Swift::Double a8, uint64_t a9, uint64_t a10)
{
  v16 = *a7;
  v17 = *(a7 + 32);
  v18 = *(a7 + 72);
  v19 = *(a7 + 80);
  v20 = *(a7 + 88);
  v21 = *(a7 + 97);
  v49 = *(a7 + 98);
  v22 = a5[3];
  v23 = a5[4];
  __swift_project_boxed_opaque_existential_1(a5, v22);
  v24 = (*(v23 + 24))(v22, v23);
  v51 = a1;
  LOBYTE(v22) = sub_217EA3608(a1, a2, v24);

  if (v22)
  {
    return 0;
  }

  v48 = v21;
  v26 = *(a3 + 16);
  if (v26)
  {
    v27 = (a3 + 40);
    v28 = MEMORY[0x277D84F90];
    do
    {
      if (*(a4 + 16))
      {
        v29 = *(v27 - 1);
        v30 = *v27;

        v31 = sub_217E8E88C(v29, v30);
        if (v32)
        {
          sub_217E844C0(*(a4 + 56) + 40 * v31, v52);

          sub_217F3AB48(v52, v53);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v28 = sub_217E8DD48(0, v28[2] + 1, 1, v28);
          }

          v34 = v28[2];
          v33 = v28[3];
          if (v34 >= v33 >> 1)
          {
            v28 = sub_217E8DD48((v33 > 1), v34 + 1, 1, v28);
          }

          v28[2] = v34 + 1;
          sub_217F3AB48(v53, &v28[5 * v34 + 4]);
        }

        else
        {
        }
      }

      v27 += 2;
      --v26;
    }

    while (v26);
  }

  else
  {
    v28 = MEMORY[0x277D84F90];
  }

  if (!v28[2])
  {

    return 0;
  }

  v35 = *(a10 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  ReadonlyAggregateType.personalizationValue.getter(AssociatedTypeWitness, AssociatedConformanceWitness);
  v39 = v38;
  if (!v49)
  {
    v41 = sub_217E83714(a6, v28, AssociatedTypeWitness, AssociatedConformanceWitness, a8);

    v42 = a2;
    goto LABEL_24;
  }

  v40 = sub_217E835DC(a6, v28, AssociatedTypeWitness, AssociatedConformanceWitness, a8);

  v41 = v39 + v40;
  v42 = a2;
  if (v41 > 0.0)
  {
    v43 = 1.0;
    if (v41 > 1.0)
    {
      if (v39 < 1.0)
      {
        v41 = 1.0;
        if (v39 != 1.0)
        {
          goto LABEL_32;
        }

        goto LABEL_36;
      }

LABEL_35:
      v16 = v16 * pow(v43 / v39, v19);
      goto LABEL_36;
    }

LABEL_24:
    if (v41 > v39)
    {
      if (v39 != 1.0)
      {
        goto LABEL_32;
      }

      goto LABEL_36;
    }

    v43 = v41;
    if (v39 == 0.0)
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

  if (v39 >= 0.0)
  {
    if (v39 == 0.0)
    {
      goto LABEL_36;
    }

    v43 = 0.0;
    goto LABEL_35;
  }

  if (v39 != 1.0)
  {
    v41 = 0.0;
LABEL_32:
    v16 = 1.0 - (1.0 - v16) * pow((1.0 - v41) / (1.0 - v39), v18);
  }

LABEL_36:
  v44 = a5[3];
  v45 = a5[4];
  __swift_project_boxed_opaque_existential_1(a5, v44);
  v46 = (*(v45 + 8))(v44, v45);
  v47 = sub_217EA3608(v51, v42, v46);

  if (v47)
  {
    if (v48)
    {
      v16 = 1.0 - pow(1.0 - v16, v17);
    }

    else
    {
      v16 = v20 + (1.0 - v20) * v16;
    }
  }

  return *&v16;
}

uint64_t sub_217F2EC1C(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = (*(v1 + 48) + ((v8 << 10) | (16 * v9)));
      v11 = *v10;
      v12 = v10[1];

      sub_217F194B0(&v13, v11, v12);

      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

uint64_t sub_217F2ED20(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  for (i = (v4 + 63) >> 6; v6; result = sub_217E98274(v17))
  {
    v8 = v2;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = (*(v1 + 48) + 96 * (v9 | (v8 << 6)));
    v11 = v10[1];
    v19[0] = *v10;
    v19[1] = v11;
    v13 = v10[3];
    v12 = v10[4];
    v14 = v10[2];
    *(v20 + 9) = *(v10 + 73);
    v19[3] = v13;
    v20[0] = v12;
    v19[2] = v14;
    sub_217E98218(v19, v17);
    sub_217F19600(v15, v19);
    v17[2] = v15[2];
    v17[3] = v15[3];
    v18[0] = v16[0];
    *(v18 + 9) = *(v16 + 9);
    v17[0] = v15[0];
    v17[1] = v15[1];
  }

  while (1)
  {
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      break;
    }

    if (v8 >= i)
    {
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_217F2EE6C(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, const void *a5, uint64_t a6, uint64_t a7, uint64_t *a8, double a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v17 = *a8;
  v18 = *a10;
  v19 = *(a10 + 8);
  v20 = *(a10 + 16);
  v21 = a4[1];
  v37[0] = *a4;
  v37[1] = v21;
  v35 = v20;
  v36 = v17;
  v33[0] = v18;
  v34 = v19;
  v22 = MEMORY[0x277D84F90];
  v23 = sub_217ECBFEC(MEMORY[0x277D84F90]);
  v24 = sub_217ECBFEC(v22);
  v25 = sub_217ECBFEC(v22);
  v26 = sub_217ECC2C0(v22);
  v27 = sub_217F2EF98(a1, a2, a3, v37, a5, a6, a7, &v36, a9, v33, a11, a12, 0, v23, v24, v25, v26, a13, a14);

  return v27;
}

uint64_t sub_217F2EF98(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, const void *a5, uint64_t a6, uint64_t a7, uint64_t *a8, double a9, unsigned __int8 *a10, uint64_t a11, uint64_t a12, unsigned __int8 a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v162 = a8;
  v138 = a7;
  v142 = a2;
  v146 = a1;
  v150 = type metadata accessor for ClassicArticleData();
  v161 = *(v150 - 8);
  v24 = *(v161 + 64);
  MEMORY[0x28223BE20](v150, v25);
  v151 = v123 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = *(a19 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v143 = *(AssociatedTypeWitness - 8);
  v27 = *(v143 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness, v28);
  v30 = v123 - v29;
  v31 = *a4;
  v135 = a4[1];
  v144 = v31;
  memcpy(v175, a5, 0x3CBuLL);
  v32 = *a6;
  v177 = *(a6 + 16);
  v33 = *(a6 + 48);
  v178 = *(a6 + 32);
  v179 = v33;
  v180 = *(a6 + 64);
  v176 = v32;
  v139 = *v162;
  v140 = a18;
  v134 = *a10;
  v34 = *(a10 + 1);
  v35 = *(a10 + 2);
  v132 = a3;
  v133 = v35;
  v36 = v30;
  v169 = v144;
  v141 = a19;
  ClassicAggregateContextType.lookupBaseline(with:)(&v169, a18, a19, v30);
  if (qword_280C295F0 != -1)
  {
LABEL_36:
    swift_once();
  }

  v37 = qword_280C29458[0];
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5278, &qword_217F4BF30);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_217F4C8A0;
  *&v169 = *(v146 + 16);
  v40 = v169;
  v41 = sub_217F4B104();
  v43 = v42;
  v44 = MEMORY[0x277D837D0];
  *(v39 + 56) = MEMORY[0x277D837D0];
  v45 = sub_217E86438();
  *(v39 + 64) = v45;
  *(v39 + 32) = v41;
  *(v39 + 40) = v43;
  *&v169 = 0;
  *(&v169 + 1) = 0xE000000000000000;
  v46 = AssociatedTypeWitness;
  sub_217F4B124();
  v47 = v169;
  *(v39 + 96) = v44;
  *(v39 + 104) = v45;
  v129 = v45;
  *(v39 + 72) = v47;
  sub_217F4AD54();
  sub_217F4AA44();

  v149 = v40;
  if (v40)
  {
    v123[1] = v38;
    v123[2] = v37;
    v137 = v36;
    v48 = 0;
    v130 = a13;
    v128 = a17;
    v127 = a16;
    v126 = a15;
    v125 = a14;
    v136 = a12;
    v124 = a11;
    v49 = MEMORY[0x277D84F98];
    v148 = v146 + ((*(v161 + 80) + 32) & ~*(v161 + 80));
    v147 = *(v161 + 72);
    v50 = v151;
    while (2)
    {
      sub_217E9D964(v148 + v147 * v48, v50);
      v36 = v48 + 1;
      v153 = v36;
      v53 = *(v50 + *(v150 + 92));

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v164 = v49;
      v55 = *(v53 + 64);
      v155 = v53 + 64;
      v56 = -1 << *(v53 + 32);
      if (-v56 < 64)
      {
        v57 = ~(-1 << -v56);
      }

      else
      {
        v57 = -1;
      }

      v161 = v53;
      v162 = (v57 & v55);
      v152 = v56;
      v154 = (63 - v56) >> 6;

      for (i = 0; ; i = v63)
      {
        v62 = v162;
        v63 = i;
        if (!v162)
        {
          v64 = i;
          while (1)
          {
            v63 = v64 + 1;
            if (__OFADD__(v64, 1))
            {
              break;
            }

            if (v63 >= v154)
            {
              v162 = 0;
              goto LABEL_5;
            }

            v62 = *(v155 + 8 * v63);
            ++v64;
            if (v62)
            {
              goto LABEL_17;
            }
          }

          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
          goto LABEL_36;
        }

LABEL_17:
        v65 = __clz(__rbit64(v62)) | (v63 << 6);
        v66 = (*(v161 + 48) + 16 * v65);
        v67 = *v66;
        v68 = v66[1];
        v69 = *(v161 + 56) + 80 * v65;
        v70 = *v69;
        v159 = *(v69 + 16);
        v160 = v70;
        v71 = *(v69 + 32);
        v157 = *(v69 + 48);
        v158 = v71;
        v156 = *(v69 + 64);
        v72 = *(v69 + 76);
        v36 = *(v69 + 72);

        if (!v68)
        {
          break;
        }

        v73 = sub_217E8E88C(v67, v68);
        v75 = v49[2];
        v76 = (v74 & 1) == 0;
        v77 = __OFADD__(v75, v76);
        v78 = v75 + v76;
        if (v77)
        {
          goto LABEL_34;
        }

        v79 = v74;
        if (v49[3] >= v78)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v162 = v73;
            sub_217E90238();
            v73 = v162;
          }
        }

        else
        {
          sub_217E935A4(v78, isUniquelyReferenced_nonNull_native & 1);
          v73 = sub_217E8E88C(v67, v68);
          if ((v79 & 1) != (v80 & 1))
          {
            result = sub_217F4B1C4();
            __break(1u);
            return result;
          }
        }

        v162 = ((v62 - 1) & v62);
        if (v79)
        {
          v49 = v164;
          v59 = 80 * v73;
          v60 = (*(v164 + 56) + 80 * v73);
          v170 = v60[1];
          v171 = v60[2];
          v172[0] = v60[3];
          *(v172 + 14) = *(v60 + 62);
          v169 = *v60;

          v61 = (v49[7] + v59);
          v61[1] = v170;
          v61[2] = v171;
          v61[3] = v172[0];
          *(v61 + 62) = *(v172 + 14);
          *v61 = v169;
        }

        else
        {
          v49 = v164;
          *(v164 + 8 * (v73 >> 6) + 64) |= 1 << v73;
          v81 = (v49[6] + 16 * v73);
          *v81 = v67;
          v81[1] = v68;
          v82 = v49[7] + 80 * v73;
          v83 = v159;
          *v82 = v160;
          *(v82 + 16) = v83;
          v84 = v157;
          *(v82 + 32) = v158;
          *(v82 + 48) = v84;
          *(v82 + 64) = v156;
          *(v82 + 76) = (v36 | (v72 << 32)) >> 32;
          *(v82 + 72) = v36;
          v85 = v49[2];
          v77 = __OFADD__(v85, 1);
          v86 = v85 + 1;
          if (v77)
          {
            goto LABEL_35;
          }

          v49[2] = v86;
        }

        isUniquelyReferenced_nonNull_native = 1;
      }

LABEL_5:
      sub_217E7F7A0();

      v50 = v151;
      v51 = sub_217E9D9C8(v151);
      v48 = v153;
      if (v153 != v149)
      {
        continue;
      }

      break;
    }

    MEMORY[0x28223BE20](v51, v52);
    v87 = v142;
    v121 = v142;
    v88 = sub_217ECCBCC(MEMORY[0x277D84FA0], sub_217F38280, v120, v49);
    v161 = 0;
    v162 = v88;

    v173[4] = v175[33];
    v173[5] = v175[34];
    v173[0] = v175[29];
    v173[1] = v175[30];
    v173[2] = v175[31];
    v173[3] = v175[32];
    v169 = v175[24];
    v170 = v175[25];
    v171 = v175[26];
    v174 = *&v175[35];
    v172[0] = v175[27];
    v172[1] = v175[28];
    v89 = v146;
    v90 = v132;
    v92 = v140;
    v91 = v141;
    v93 = sub_217F2FE14(v146, v132, &v169, v140, v141);
    v170 = v177;
    v171 = v178;
    v172[0] = v179;
    *&v172[1] = v180;
    v169 = v176;
    v94 = sub_217F381C0(v90, &v169, v92, v91);
    v95 = AssociatedTypeWitness;
    *(&v165 + 1) = AssociatedTypeWitness;
    *&v166 = swift_getAssociatedConformanceWitness();
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v164);
    v97 = v137;
    (*(v143 + 16))(boxed_opaque_existential_1, v137, v95);
    v169 = v175[8];
    v170 = v175[9];
    v171 = v175[10];
    v98 = sub_217F30800(v94, &v164, &v169, v92, v91, a9);
    __swift_destroy_boxed_opaque_existential_1(&v164);
    v172[0] = *(&v175[57] + 8);
    v172[1] = *(&v175[58] + 8);
    v173[0] = *(&v175[59] + 8);
    *(v173 + 15) = *(&v175[60] + 7);
    v169 = *(&v175[54] + 8);
    v170 = *(&v175[55] + 8);
    v171 = *(&v175[56] + 8);
    v166 = v178;
    v167 = v179;
    v168 = v180;
    v164 = v176;
    v165 = v177;
    v163 = v139;
    v99 = v97;
    v100 = v138;
    v101 = sub_217F3092C(v89, v94, v87, v99, &v169, &v164, v138, &v163, a9, v136, v92, v91);
    if (v175[4] & 1) != 0 && (v130)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF7338, &qword_217F5A258);
      v102 = swift_allocObject();
      *(v102 + 16) = xmmword_217F591E0;
      v103 = *(&v175[4] + 1);
      *(v102 + 48) = *(&v175[3] + 1);
      *(v102 + 72) = v103;
      v104 = *(&v175[5] + 1);
      *(v102 + 96) = *&v175[5];
      v105 = *&v175[6];
      *(v102 + 120) = *(&v175[6] + 1);
      *(v102 + 144) = *&v175[7];
      *(v102 + 168) = v104;
      *(v102 + 32) = 0xD000000000000025;
      *(v102 + 40) = 0x8000000217F5F2F0;
      *(v102 + 56) = 0xD000000000000032;
      *(v102 + 64) = 0x8000000217F5F350;
      *(v102 + 80) = 0xD00000000000003ALL;
      *(v102 + 88) = 0x8000000217F5F390;
      *(v102 + 104) = 0xD000000000000033;
      *(v102 + 112) = 0x8000000217F5F430;
      *(v102 + 128) = 0xD00000000000002DLL;
      *(v102 + 136) = 0x8000000217F5F470;
      *(v102 + 152) = 0xD000000000000029;
      *(v102 + 160) = 0x8000000217F5F3D0;
      *(v102 + 176) = 0xD000000000000029;
      *(v102 + 184) = 0x8000000217F5F400;
      *(v102 + 192) = v105;
      sub_217ECBFEC(v102);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CBF7340, &qword_217F5A260);
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v106 = swift_allocObject();
      *(v106 + 16) = xmmword_217F4BC20;
      v107 = MEMORY[0x277D837D0];
      v108 = sub_217F4AA74();
      v110 = v109;

      v111 = v129;
      *(v106 + 56) = v107;
      *(v106 + 64) = v111;
      *(v106 + 32) = v108;
      *(v106 + 40) = v110;
      sub_217F4AD54();
      sub_217F4AA44();
      v100 = v138;
    }

    sub_217ECC0F0(MEMORY[0x277D84F90]);

    MEMORY[0x28223BE20](v112, v113);
    v114 = v141;
    v123[-28] = v140;
    v123[-27] = v114;
    v123[-26] = v142;
    v123[-25] = v94;
    v115 = v135;
    *&v123[-24] = v144;
    *&v123[-22] = v115;
    v116 = v137;
    v123[-20] = v137;
    v123[-19] = v175;
    v123[-18] = &v176;
    v123[-17] = v100;
    v123[-16] = v139;
    LOBYTE(v123[-15]) = v134;
    v123[-14] = v34;
    v123[-13] = v133;
    *&v123[-12] = a9;
    v117 = v136;
    v123[-11] = v124;
    v123[-10] = v117;
    v123[-9] = v93;
    v123[-8] = v98;
    v123[-7] = v162;
    v123[-6] = v101;
    LOBYTE(v123[-5]) = v130 & 1;
    v120[0] = v125;
    v120[1] = v126;
    v121 = v127;
    v122 = v128;
    v118 = sub_217ED1764(MEMORY[0x277D84F98], sub_217F3829C, &v123[-30], v146);
    v36 = v116;

    v46 = AssociatedTypeWitness;
  }

  else
  {
    v118 = sub_217ECC0F0(MEMORY[0x277D84F90]);
  }

  (*(v143 + 8))(v36, v46);
  return v118;
}

uint64_t sub_217F2FBA8(uint64_t a1, _OWORD *a2, void *a3)
{
  *&v22[14] = *(a2 + 78);
  v4 = a2[3];
  v21[2] = a2[2];
  v21[3] = v4;
  *v22 = a2[4];
  v5 = a2[1];
  v21[0] = *a2;
  v21[1] = v5;
  v6 = v21[0];
  if (v22[28] == 1)
  {
    v23 = v22[27];
    v7 = a3[3];
    v8 = a3[4];
    __swift_project_boxed_opaque_existential_1(a3, v7);
    v9 = *(v8 + 8);
    sub_217F3AD5C(v21, &v20, &qword_27CBF5D30, &unk_217F5A2F0);
    v10 = v9(v7, v8);
    v11 = sub_217EA3608(v6, *(&v6 + 1), v10);

    if ((v22[29] & 1) == 0)
    {
      if ((v23 | v11))
      {
        goto LABEL_13;
      }

      return sub_217F3ADC4(v21, &qword_27CBF5D30, &unk_217F5A2F0);
    }

LABEL_7:
    v12 = a3[3];
    v13 = a3[4];
    __swift_project_boxed_opaque_existential_1(a3, v12);
    v14 = (*(v13 + 16))(v12, v13);
    LOBYTE(v12) = sub_217EA3608(v6, *(&v6 + 1), v14);

    if (v12)
    {
      goto LABEL_13;
    }

    v15 = a3[3];
    v16 = a3[4];
    __swift_project_boxed_opaque_existential_1(a3, v15);
    v17 = (*(v16 + 40))(v15, v16);
    v18 = sub_217EA3608(v6, *(&v6 + 1), v17);

    if ((v23 | v11) & 1) != 0 || (v18)
    {
      goto LABEL_13;
    }

    return sub_217F3ADC4(v21, &qword_27CBF5D30, &unk_217F5A2F0);
  }

  if (v22[29] == 1)
  {
    v23 = v22[27];
    sub_217F3AD5C(v21, &v20, &qword_27CBF5D30, &unk_217F5A2F0);
    v11 = 0;
    goto LABEL_7;
  }

  if ((v22[27] & 1) == 0)
  {
    return result;
  }

  sub_217F3AD5C(v21, &v20, &qword_27CBF5D30, &unk_217F5A2F0);
LABEL_13:
  sub_217F194B0(&v20, v6, *(&v6 + 1));
}

unint64_t sub_217F2FE14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for ClassicArticleData();
  v11 = *(*(v10 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v10, v12);
  v15 = MEMORY[0x28223BE20](v13, v14);
  v19 = &v122 - v18;
  if (*(a3 + 104) <= 0.0 || *(a3 + 152) >= 1.0)
  {
    v21 = MEMORY[0x277D84F90];

    return sub_217ECBFEC(v21);
  }

  v23 = *(a3 + 24);
  v24 = *(a3 + 32);
  v25 = *(a3 + 40);
  v26 = *(a3 + 56);
  v28 = *(a3 + 72);
  v27 = *(a3 + 80);
  v29 = MEMORY[0x277D84FA0];
  v137 = MEMORY[0x277D84FA0];
  v30 = *(a1 + 16);
  v125 = a5;
  v124 = a4;
  v123 = a2;
  if (!v30)
  {
    i = MEMORY[0x277D84F98];
    v68 = MEMORY[0x277D84FA0];
    goto LABEL_34;
  }

  v122 = v26;
  v133 = v17;
  v31 = &v19[*(v15 + 56)];
  v32 = v15;
  v33 = *(v15 + 64);
  v34 = a1 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
  v35 = *(v16 + 72);
  j = v34;
  v127 = v30;
  do
  {
    sub_217E9D964(v34, v19);
    v36 = *v31;
    v37 = v31[1];

    sub_217F194B0(&v135, v36, v37);

    v38 = *&v19[v33];

    sub_217F38150(v39);

    sub_217E9D9C8(v19);
    v34 += v35;
    --v30;
  }

  while (v30);
  v131 = v35;
  v40 = 0;
  v126 = v137;
  v130 = *(v32 + 64);
  v41 = MEMORY[0x277D84F98];
  v42 = v133;
  v129 = (v133 + *(v32 + 56));
  v128 = xmmword_217F4BC20;
  i = MEMORY[0x277D84F98];
  while (1)
  {
    sub_217E9D964(j + v131 * v40, v42);
    v45 = *(v42 + v130);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF52D0, &qword_217F4C930);
    inited = swift_initStackObject();
    *(inited + 16) = v128;
    v47 = v129[1];
    *(inited + 32) = *v129;
    *(inited + 40) = v47;
    *&v135 = v45;

    sub_217E80630(inited);
    v48 = *(v135 + 16);
    v134 = v135;
    if (v48)
    {
      break;
    }

    v44 = v41;
LABEL_13:

    ++v40;
    v42 = v133;
    sub_217E9D9C8(v133);
    v41 = v44;
    if (v40 == v127)
    {
      v68 = v126;
      v29 = MEMORY[0x277D84FA0];
      v26 = v122;
LABEL_34:
      v69 = MEMORY[0x277D84F98];
      v135 = v26;
      v136 = v28;
      v133 = sub_217F30D2C(i, &v135);

      v137 = v29;
      v70 = v68 + 56;
      v71 = 1 << *(v68 + 32);
      v72 = -1;
      if (v71 < 64)
      {
        v72 = ~(-1 << v71);
      }

      v73 = v72 & *(v68 + 56);
      v74 = (v71 + 63) >> 6;
      v126 = v68;

      v75 = 0;
      while (v73)
      {
        v76 = v75;
LABEL_42:
        v77 = (*(v126 + 48) + ((v76 << 10) | (16 * __clz(__rbit64(v73)))));
        v78 = *v77;
        i = v77[1];
        v73 &= v73 - 1;
        *&v135 = 2831206;
        *(&v135 + 1) = 0xE300000000000000;

        MEMORY[0x21CEAEAC0](v78, i);
        sub_217F194B0(&v135, v135, *(&v135 + 1));
      }

      while (1)
      {
        v76 = v75 + 1;
        if (__OFADD__(v75, 1))
        {
          goto LABEL_82;
        }

        if (v76 >= v74)
        {
          v79 = v126;

          v135 = 0uLL;
          v80 = v125;
          v81 = v124;
          v82 = (*(*(v125 + 8) + 48))(v137, &v135, v124);

          v137 = v69;
          v83 = 1 << *(v79 + 32);
          v84 = -1;
          if (v83 < 64)
          {
            v84 = ~(-1 << v83);
          }

          v85 = v84 & *(v79 + 56);
          v86 = (v83 + 63) >> 6;

          v87 = 0;
          for (i = 0; v85; v87 = v88)
          {
            v88 = v87;
LABEL_51:
            v89 = (*(v79 + 48) + ((v88 << 10) | (16 * __clz(__rbit64(v85)))));
            v90 = v89[1];
            *&v135 = *v89;
            *(&v135 + 1) = v90;

            sub_217F31278(&v137, &v135, v82, v81, v80);
            v85 &= v85 - 1;
          }

          while (1)
          {
            v88 = v87 + 1;
            if (__OFADD__(v87, 1))
            {
              goto LABEL_83;
            }

            if (v88 >= v86)
            {

              *&v135 = v23;
              *(&v135 + 1) = v24;
              v136 = v25;
              v91 = sub_217F30D2C(v137, &v135);

              v92 = 1 << *(v79 + 32);
              v93 = -1;
              if (v92 < 64)
              {
                v93 = ~(-1 << v92);
              }

              v94 = v93 & *(v79 + 56);
              v95 = (v92 + 63) >> 6;

              v96 = 0;
              v97 = MEMORY[0x277D84F98];
              for (j = v91; ; v91 = j)
              {
                v98 = v133;
                if (!v94)
                {
                  break;
                }

                v134 = i;
                v99 = v96;
LABEL_64:
                v100 = (*(v79 + 48) + ((v99 << 10) | (16 * __clz(__rbit64(v94)))));
                i = *v100;
                v101 = v100[1];
                v102 = *(v133 + 16);

                v103 = 0.0;
                v104 = 0.0;
                if (v102)
                {
                  v105 = sub_217E8E88C(i, v101);
                  if (v106)
                  {
                    v104 = *(*(v98 + 56) + 8 * v105);
                  }
                }

                if (*(v91 + 16))
                {
                  v107 = sub_217E8E88C(i, v101);
                  if (v108)
                  {
                    v103 = *(*(v91 + 56) + 8 * v107);
                  }
                }

                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                *&v135 = v97;
                v110 = sub_217E8E88C(i, v101);
                v112 = v97[2];
                v113 = (v111 & 1) == 0;
                v66 = __OFADD__(v112, v113);
                v114 = v112 + v113;
                if (v66)
                {
                  goto LABEL_85;
                }

                v115 = v111;
                if (v97[3] >= v114)
                {
                  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                  {
                    v121 = v110;
                    sub_217E8F918();
                    v110 = v121;
                  }
                }

                else
                {
                  sub_217E924FC(v114, isUniquelyReferenced_nonNull_native);
                  v110 = sub_217E8E88C(i, v101);
                  if ((v115 & 1) != (v116 & 1))
                  {
                    goto LABEL_87;
                  }
                }

                v94 &= v94 - 1;
                v117 = v27 * v104 + (1.0 - v27) * v103;
                v97 = v135;
                if (v115)
                {
                  *(*(v135 + 56) + 8 * v110) = v117;
                }

                else
                {
                  *(v135 + 8 * (v110 >> 6) + 64) |= 1 << v110;
                  v118 = (v97[6] + 16 * v110);
                  *v118 = i;
                  v118[1] = v101;
                  *(v97[7] + 8 * v110) = v117;
                  v119 = v97[2];
                  v66 = __OFADD__(v119, 1);
                  v120 = v119 + 1;
                  if (v66)
                  {
                    goto LABEL_86;
                  }

                  v97[2] = v120;
                }

                v96 = v99;
                v79 = v126;
                i = v134;
              }

              while (1)
              {
                v99 = v96 + 1;
                if (__OFADD__(v96, 1))
                {
                  goto LABEL_84;
                }

                if (v99 >= v95)
                {

                  return v97;
                }

                v94 = *(v70 + 8 * v99);
                ++v96;
                if (v94)
                {
                  v134 = i;
                  goto LABEL_64;
                }
              }
            }

            v85 = *(v70 + 8 * v88);
            ++v87;
            if (v85)
            {
              goto LABEL_51;
            }
          }
        }

        v73 = *(v70 + 8 * v76);
        ++v75;
        if (v73)
        {
          v75 = v76;
          goto LABEL_42;
        }
      }
    }
  }

  v49 = (v135 + 40);
  v44 = i;
  while (1)
  {
    v50 = *(v49 - 1);
    i = *v49;
    v51 = v44[2];

    v52 = 1.0;
    if (v51)
    {
      v53 = sub_217E8E88C(v50, i);
      if (v54)
      {
        v52 = *(v44[7] + 8 * v53) + 1.0;
      }
    }

    v55 = swift_isUniquelyReferenced_nonNull_native();
    *&v135 = v41;
    v57 = sub_217E8E88C(v50, i);
    v58 = v41[2];
    v59 = (v56 & 1) == 0;
    v60 = v58 + v59;
    if (__OFADD__(v58, v59))
    {
      break;
    }

    v61 = v56;
    if (v41[3] >= v60)
    {
      if (v55)
      {
        v44 = v135;
        if (v56)
        {
          goto LABEL_16;
        }
      }

      else
      {
        sub_217E8F918();
        v44 = v135;
        if (v61)
        {
          goto LABEL_16;
        }
      }
    }

    else
    {
      sub_217E924FC(v60, v55);
      v62 = sub_217E8E88C(v50, i);
      if ((v61 & 1) != (v63 & 1))
      {
        goto LABEL_87;
      }

      v57 = v62;
      v44 = v135;
      if (v61)
      {
LABEL_16:
        *(v44[7] + 8 * v57) = v52;

        goto LABEL_17;
      }
    }

    v44[(v57 >> 6) + 8] |= 1 << v57;
    v64 = (v44[6] + 16 * v57);
    *v64 = v50;
    v64[1] = i;
    *(v44[7] + 8 * v57) = v52;
    v65 = v44[2];
    v66 = __OFADD__(v65, 1);
    v67 = v65 + 1;
    if (v66)
    {
      goto LABEL_81;
    }

    v44[2] = v67;
LABEL_17:
    v49 += 2;
    i = v44;
    v41 = v44;
    if (!--v48)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  sub_217F4B1C4();
  __break(1u);
  MEMORY[0x21CEAF510](i);

  __break(1u);
  return result;
}