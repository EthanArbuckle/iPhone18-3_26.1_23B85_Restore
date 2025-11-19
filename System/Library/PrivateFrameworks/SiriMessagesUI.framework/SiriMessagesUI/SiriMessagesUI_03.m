uint64_t sub_267FFC454@<X0>(void *__src@<X0>, uint64_t (*a2)(void *)@<X1>, void *a3@<X8>)
{
  v6 = memcpy(__dst, __src, sizeof(__dst));
  v7 = a2(v6);
  KeyPath = swift_getKeyPath();
  memcpy(a3, __src, 0x48uLL);
  a3[9] = KeyPath;
  a3[10] = v7;
  return sub_267FDC224(__dst, &v10, &qword_280242E50);
}

uint64_t sub_267FFC4E8()
{
  sub_26804C4FC();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242E30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242E48);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280242E50);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280242E58);
  sub_267FFE318();
  sub_267FFE488();
  swift_getOpaqueTypeConformance2();
  sub_267FFE540();
  return sub_26804DA2C();
}

uint64_t sub_267FFC624@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v56 = a1;
  v58 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242ED0);
  MEMORY[0x28223BE20](v4);
  v6 = &v55 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242EC0);
  MEMORY[0x28223BE20](v7);
  v9 = &v55 - v8;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242EB0);
  MEMORY[0x28223BE20](v57);
  v11 = &v55 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242EA0);
  MEMORY[0x28223BE20](v12);
  v14 = &v55 - v13;
  v15 = sub_26804D7DC();
  v16 = *(sub_26804C4FC() + 16);

  v17 = *(a2 + *(type metadata accessor for RecipientLabelView() + 52));
  if (v16 < 2)
  {
    if (v17)
    {
      v19 = v17;
      sub_26804E51C();

      v18 = v19;
      sub_26804E51C();

      goto LABEL_6;
    }
  }

  else if (v17)
  {
    v18 = v17;
    sub_26804E51C();

LABEL_6:
    sub_26804CE1C();
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242E30);
    (*(*(v28 - 8) + 16))(v6, v56, v28);
    v29 = &v6[*(v4 + 36)];
    *v29 = v15;
    *(v29 + 1) = v21;
    *(v29 + 2) = v23;
    *(v29 + 3) = v25;
    *(v29 + 4) = v27;
    v29[40] = 0;
    v30 = sub_26804D7FC();
    v31 = v18;
    sub_26804E51C();

    sub_26804CE1C();
    v33 = v32;
    v35 = v34;
    v37 = v36;
    v39 = v38;
    sub_267FDBADC(v6, v9, &qword_280242ED0);
    v40 = &v9[*(v7 + 36)];
    *v40 = v30;
    *(v40 + 1) = v33;
    *(v40 + 2) = v35;
    *(v40 + 3) = v37;
    *(v40 + 4) = v39;
    v40[40] = 0;
    v41 = v31;
    sub_26804E51C();

    sub_26804DFAC();
    sub_26804CFBC();
    sub_267FDBADC(v9, v11, &qword_280242EC0);
    v42 = &v11[*(v57 + 36)];
    v43 = v60;
    *v42 = v59;
    *(v42 + 1) = v43;
    *(v42 + 2) = v61;
    v44 = &v14[*(v12 + 36)];
    sub_267FFAC30();
    v45 = sub_26804DFAC();
    v47 = v46;
    v48 = &v44[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242EE0) + 36)];
    *v48 = v45;
    v48[1] = v47;
    sub_267FDBADC(v11, v14, &qword_280242EB0);
    v49 = v41;
    sub_26804E51C();
    v51 = v50;

    v52 = v58;
    sub_267FDBADC(v14, v58, &qword_280242EA0);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242E48);
    v54 = v52 + *(result + 36);
    *v54 = v51 * 9.0;
    *(v54 + 8) = 10;
    *(v54 + 16) = 256;
    return result;
  }

  sub_26804E62C();
  sub_267FB02A8(&qword_2802412E0, MEMORY[0x277D63F60]);
  result = sub_26804D15C();
  __break(1u);
  return result;
}

uint64_t sub_267FFCAF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_26804E81C();
  *(v4 + 24) = sub_26804E80C();
  v6 = sub_26804E7EC();

  return MEMORY[0x2822009F8](sub_267FFCB8C, v6, v5);
}

uint64_t sub_267FFCB8C()
{
  OUTLINED_FUNCTION_13();
  v1 = *(v0 + 16);

  v2 = (v1 + *(type metadata accessor for RecipientLabelView() + 52));
  if (*v2)
  {
    v3 = *v2;
    sub_268015FC4();

    OUTLINED_FUNCTION_6();

    return v4();
  }

  else
  {
    sub_26804E62C();
    OUTLINED_FUNCTION_0_2();
    sub_267FB02A8(v6, v7);

    return sub_26804D15C();
  }
}

void sub_267FFCC74(uint64_t a1@<X8>)
{
  sub_26804C51C();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v3);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, v1);
  sub_267FF4EAC(v5, a1);
}

uint64_t sub_267FFCD5C()
{
  v0 = sub_26804C51C();
  if (v1 <= 0x3F)
  {
    v0 = sub_26804C54C();
    if (v2 <= 0x3F)
    {
      sub_267FFCF74(319, &qword_280242BB0);
      v0 = v3;
      if (v4 <= 0x3F)
      {
        sub_267FFCFC0(319, &qword_280242CC0, &qword_280241A90, &unk_268050700, MEMORY[0x277CE10B8]);
        if (v6 > 0x3F)
        {
          return v5;
        }

        sub_267FFCF74(319, &qword_280241A70);
        if (v8 > 0x3F)
        {
          return v7;
        }

        sub_267FFCFC0(319, &qword_280242CC8, &qword_280242CD0, &unk_268052690, MEMORY[0x277CE10B8]);
        if (v9 > 0x3F)
        {
          return v5;
        }

        else
        {
          sub_267FC1004();
          v0 = v10;
          if (v11 <= 0x3F)
          {
            sub_267FDB914();
            v0 = v12;
            if (v13 <= 0x3F)
            {
              sub_267FFCFC0(319, &qword_2802412F8, &qword_280241300, &unk_26804FE60, MEMORY[0x277CDF468]);
              v0 = v14;
              if (v15 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
                return 0;
              }
            }
          }
        }
      }
    }
  }

  return v0;
}

void sub_267FFCF74(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_26804DE1C();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_267FFCFC0(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_267FFD040()
{
  result = qword_280242D08;
  if (!qword_280242D08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280242CF8);
    sub_267FFD0CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280242D08);
  }

  return result;
}

unint64_t sub_267FFD0CC()
{
  result = qword_280242D10;
  if (!qword_280242D10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280242CF0);
    sub_267FCCA4C(&qword_280242D18, &qword_280242CE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280242D10);
  }

  return result;
}

BOOL sub_267FFD1DC(void *a1, uint64_t a2)
{
  v3 = *v2 & a2;
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  *a1 = a2;
  return v3 != a2;
}

uint64_t sub_267FFD228(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_267FFD320;

  return v6(a1);
}

uint64_t sub_267FFD320()
{
  OUTLINED_FUNCTION_13();
  v1 = *v0;
  OUTLINED_FUNCTION_10();
  *v2 = v1;

  OUTLINED_FUNCTION_6();

  return v3();
}

BOOL sub_267FFD408(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_26804ED7C();
  sub_26804E71C();
  v8 = sub_26804ED9C();
  v9 = ~(-1 << *(v7 + 32));
  while (1)
  {
    v10 = v8 & v9;
    v11 = (1 << (v8 & v9)) & *(v7 + 56 + (((v8 & v9) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v11)
    {
      break;
    }

    v12 = (*(v7 + 48) + 16 * v10);
    v13 = *v12 == a2 && v12[1] == a3;
    if (v13 || (sub_26804EC9C() & 1) != 0)
    {

      v14 = (*(v7 + 48) + 16 * v10);
      v15 = v14[1];
      *a1 = *v14;
      a1[1] = v15;

      return v11 == 0;
    }

    v8 = v10 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *v3;

  sub_267FFD7B0(a2, a3, v10, isUniquelyReferenced_nonNull_native);
  *v3 = v18;
  *a1 = a2;
  a1[1] = a3;
  return v11 == 0;
}

uint64_t sub_267FFD554()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242DE8);
  result = sub_26804EB1C();
  v4 = result;
  if (!*(v2 + 16))
  {
LABEL_27:

    *v1 = v4;
    return result;
  }

  v5 = 0;
  v6 = (v2 + 56);
  v7 = 1 << *(v2 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v2 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = result + 56;
  if (!v9)
  {
LABEL_7:
    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v5 >= v10)
      {
        break;
      }

      v14 = v6[v5];
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v9 = (v14 - 1) & v14;
        goto LABEL_12;
      }
    }

    v27 = 1 << *(v2 + 32);
    if (v27 >= 64)
    {
      sub_267FFD918(0, (v27 + 63) >> 6, v2 + 56);
    }

    else
    {
      *v6 = -1 << v27;
    }

    v1 = v0;
    *(v2 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v12 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_12:
    v15 = (*(v2 + 48) + 16 * (v12 | (v5 << 6)));
    v16 = *v15;
    v17 = v15[1];
    sub_26804ED7C();
    sub_26804E71C();
    result = sub_26804ED9C();
    v18 = -1 << *(v4 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
    {
      break;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v11 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    v26 = (*(v4 + 48) + 16 * v21);
    *v26 = v16;
    v26[1] = v17;
    ++*(v4 + 16);
    if (!v9)
    {
      goto LABEL_7;
    }
  }

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
    v25 = *(v11 + 8 * v20);
    if (v25 != -1)
    {
      v21 = __clz(__rbit64(~v25)) + (v20 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_267FFD7B0(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_267FFD554();
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_267FFDAD4();
LABEL_10:
      v15 = *v4;
      sub_26804ED7C();
      sub_26804E71C();
      result = sub_26804ED9C();
      v16 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = result & v16;
        if (((*(v15 + 56 + (((result & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v16)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v17 = (*(v15 + 48) + 16 * a3);
        v18 = *v17 == v7 && v17[1] == a2;
        if (v18 || (sub_26804EC9C() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = sub_267FFD97C();
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
    result = sub_26804ECDC();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

uint64_t sub_267FFD918(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_268052630;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

void *sub_267FFD97C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242DE8);
  v2 = *v0;
  v3 = sub_26804EB0C();
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

uint64_t sub_267FFDAD4()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242DE8);
  result = sub_26804EB1C();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    if (v8)
    {
      while (1)
      {
        v11 = __clz(__rbit64(v8));
        v8 &= v8 - 1;
LABEL_12:
        v14 = (*(v2 + 48) + 16 * (v11 | (v5 << 6)));
        v15 = *v14;
        v16 = v14[1];
        sub_26804ED7C();

        sub_26804E71C();
        result = sub_26804ED9C();
        v17 = -1 << *(v4 + 32);
        v18 = result & ~v17;
        v19 = v18 >> 6;
        if (((-1 << v18) & ~*(v10 + 8 * (v18 >> 6))) == 0)
        {
          break;
        }

        v20 = __clz(__rbit64((-1 << v18) & ~*(v10 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v10 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
        v25 = (*(v4 + 48) + 16 * v20);
        *v25 = v15;
        v25[1] = v16;
        ++*(v4 + 16);
        if (!v8)
        {
          goto LABEL_7;
        }
      }

      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v10 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v12 = v5;
      while (1)
      {
        v5 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v5 >= v9)
        {

          v1 = v0;
          goto LABEL_25;
        }

        v13 = *(v2 + 56 + 8 * v5);
        ++v12;
        if (v13)
        {
          v11 = __clz(__rbit64(v13));
          v8 = (v13 - 1) & v13;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_267FFDD08()
{
  OUTLINED_FUNCTION_20_0();
  result = sub_26804D35C();
  *v0 = result;
  *(v0 + 8) = v2 & 1;
  return result;
}

uint64_t sub_267FFDD68()
{
  OUTLINED_FUNCTION_20_0();
  result = sub_26804D2FC();
  *v0 = result;
  return result;
}

uint64_t sub_267FFDD90(void *a1)
{
  v2 = [a1 appId];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_26804E6CC();

  return v3;
}

uint64_t sub_267FFDE00@<X0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for RecipientLabelView();
  OUTLINED_FUNCTION_15(v3);
  v5 = v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return sub_267FF827C(v5, a1);
}

unint64_t sub_267FFDE6C()
{
  result = qword_280242DA8;
  if (!qword_280242DA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280242D98);
    sub_267FFDEF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280242DA8);
  }

  return result;
}

unint64_t sub_267FFDEF8()
{
  result = qword_280242DB0;
  if (!qword_280242DB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280242DB8);
    sub_267FB02A8(&qword_280242DC0, type metadata accessor for ContactAutocompleteView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280242DB0);
  }

  return result;
}

unint64_t sub_267FFDFE4()
{
  result = qword_280242DC8;
  if (!qword_280242DC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280242D78);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280242D70);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280242D98);
    sub_267FCCA4C(&qword_280242DA0, &qword_280242D70);
    sub_267FFDE6C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280242DC8);
  }

  return result;
}

uint64_t sub_267FFE10C()
{
  OUTLINED_FUNCTION_24_2();
  v0 = type metadata accessor for RecipientLabelView();
  OUTLINED_FUNCTION_15(v0);
  OUTLINED_FUNCTION_12_2();
  return sub_267FF92C0();
}

uint64_t sub_267FFE160(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_22_2();
  v4(v3);
  OUTLINED_FUNCTION_4();
  v5 = OUTLINED_FUNCTION_12_0();
  v6(v5);
  return a2;
}

uint64_t sub_267FFE1E8(uint64_t (*a1)(uint64_t))
{
  v2 = type metadata accessor for RecipientLabelView();
  OUTLINED_FUNCTION_15(v2);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a1(v4);
}

unint64_t sub_267FFE258()
{
  result = qword_280242E08;
  if (!qword_280242E08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280242E00);
    sub_267FCCA4C(&qword_280242278, &qword_280242280);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280242E08);
  }

  return result;
}

unint64_t sub_267FFE318()
{
  result = qword_280242E60;
  if (!qword_280242E60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280242E50);
    sub_267FFE3D0();
    sub_267FCCA4C(&qword_280242E78, &qword_280242E80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280242E60);
  }

  return result;
}

unint64_t sub_267FFE3D0()
{
  result = qword_280242E68;
  if (!qword_280242E68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280242E70);
    sub_267FCCA4C(&qword_2802422F8, &qword_280242300);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280242E68);
  }

  return result;
}

unint64_t sub_267FFE488()
{
  result = qword_280242E88;
  if (!qword_280242E88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280242E58);
    sub_267FFE318();
    sub_267FCCA4C(&qword_280241E58, &qword_280241E60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280242E88);
  }

  return result;
}

unint64_t sub_267FFE540()
{
  result = qword_280242E90;
  if (!qword_280242E90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280242E48);
    sub_267FFE5F8();
    sub_267FCCA4C(&qword_280242EE8, &qword_280242EF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280242E90);
  }

  return result;
}

unint64_t sub_267FFE5F8()
{
  result = qword_280242E98;
  if (!qword_280242E98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280242EA0);
    sub_267FFE6B0();
    sub_267FCCA4C(&qword_280242ED8, &qword_280242EE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280242E98);
  }

  return result;
}

unint64_t sub_267FFE6B0()
{
  result = qword_280242EA8;
  if (!qword_280242EA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280242EB0);
    sub_267FFE73C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280242EA8);
  }

  return result;
}

unint64_t sub_267FFE73C()
{
  result = qword_280242EB8;
  if (!qword_280242EB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280242EC0);
    sub_267FFE7C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280242EB8);
  }

  return result;
}

unint64_t sub_267FFE7C8()
{
  result = qword_280242EC8;
  if (!qword_280242EC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280242ED0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280242E50);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280242E58);
    sub_267FFE318();
    sub_267FFE488();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280242EC8);
  }

  return result;
}

uint64_t sub_267FFE8C0(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_22_2();
  v4(v3);
  OUTLINED_FUNCTION_4();
  v5 = OUTLINED_FUNCTION_12_0();
  v6(v5);
  return a2;
}

unint64_t sub_267FFE920()
{
  result = qword_280242F08;
  if (!qword_280242F08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280242EF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280242F08);
  }

  return result;
}

unint64_t sub_267FFE9BC()
{
  result = qword_280242F58;
  if (!qword_280242F58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280242F10);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280242F60);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280242F68);
    sub_267FFEADC();
    sub_267FFED94();
    swift_getOpaqueTypeConformance2();
    sub_267FCCA4C(&qword_280242EE8, &qword_280242EF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280242F58);
  }

  return result;
}

unint64_t sub_267FFEADC()
{
  result = qword_280242F70;
  if (!qword_280242F70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280242F60);
    sub_267FFEB68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280242F70);
  }

  return result;
}

unint64_t sub_267FFEB68()
{
  result = qword_280242F78;
  if (!qword_280242F78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280242F80);
    sub_267FFEBF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280242F78);
  }

  return result;
}

unint64_t sub_267FFEBF4()
{
  result = qword_280242F88;
  if (!qword_280242F88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280242F90);
    sub_267FFECAC();
    sub_267FCCA4C(&qword_280241808, &qword_2802417F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280242F88);
  }

  return result;
}

unint64_t sub_267FFECAC()
{
  result = qword_280242F98;
  if (!qword_280242F98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280242FA0);
    sub_267FCCA4C(&qword_280242FA8, &qword_280242FB0);
    sub_267FB02A8(&qword_280241C68, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280242F98);
  }

  return result;
}

unint64_t sub_267FFED94()
{
  result = qword_280242FB8;
  if (!qword_280242FB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280242F68);
    sub_267FFEADC();
    sub_267FCCA4C(&qword_280242ED8, &qword_280242EE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280242FB8);
  }

  return result;
}

unint64_t sub_267FFEE4C()
{
  result = qword_280242FC0;
  if (!qword_280242FC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280242F50);
    sub_267FCCA4C(&qword_280242FC8, &qword_280242F48);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280242F30);
    sub_267FCCA4C(&qword_280242FD0, &qword_280242F30);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280242FC0);
  }

  return result;
}

unint64_t sub_267FFEF90()
{
  result = qword_280242FD8;
  if (!qword_280242FD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280242F28);
    sub_267FFEE4C();
    sub_267FCCA4C(&qword_280242FC8, &qword_280242F48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280242FD8);
  }

  return result;
}

void sub_267FFF048(char a1)
{
  v2 = type metadata accessor for RecipientLabelView();
  OUTLINED_FUNCTION_15(v2);
  OUTLINED_FUNCTION_12_2();
  sub_267FFB130(a1);
}

uint64_t objectdestroyTm_8()
{
  type metadata accessor for RecipientLabelView();
  OUTLINED_FUNCTION_22_0();
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));
  sub_26804C51C();
  OUTLINED_FUNCTION_0();
  (*(v4 + 8))(v3);

  OUTLINED_FUNCTION_16();
  v5 = v3 + v0[7];
  v6 = type metadata accessor for ContactResult(0);
  if (!OUTLINED_FUNCTION_28_0(v6))
  {
    sub_26804BE4C();
    OUTLINED_FUNCTION_0();
    (*(v7 + 8))(v5);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242CA8);

  OUTLINED_FUNCTION_29_1();

  OUTLINED_FUNCTION_16();

  OUTLINED_FUNCTION_29_1();

  OUTLINED_FUNCTION_16();

  v8 = v0[14];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241DB8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_26804CF1C();
    OUTLINED_FUNCTION_0();
    (*(v9 + 8))(v3 + v8);
  }

  else
  {
  }

  v10 = OUTLINED_FUNCTION_26_0();

  return MEMORY[0x2821FE8E8](v10, v11, v12);
}

uint64_t sub_267FFF318()
{
  OUTLINED_FUNCTION_24_2();
  v1 = type metadata accessor for RecipientLabelView();
  OUTLINED_FUNCTION_15(v1);
  OUTLINED_FUNCTION_12_2();
  return v0();
}

uint64_t sub_267FFF36C()
{
  v1 = OUTLINED_FUNCTION_24_2();
  v2(v1);
  OUTLINED_FUNCTION_0();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_267FFF3BC()
{
  OUTLINED_FUNCTION_24_2();
  v2 = type metadata accessor for RecipientLabelView();
  OUTLINED_FUNCTION_15(v2);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_13_3(v7);
  *v8 = v9;
  v8[1] = sub_267FFF49C;

  return sub_267FFCAF4(v0, v5, v6, v1 + v4);
}

uint64_t sub_267FFF49C()
{
  OUTLINED_FUNCTION_13();
  v1 = *v0;
  OUTLINED_FUNCTION_10();
  *v2 = v1;

  OUTLINED_FUNCTION_6();

  return v3();
}

uint64_t sub_267FFF580()
{
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_13_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_7_3(v1);

  return v4(v3);
}

uint64_t sub_267FFF618()
{
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_13_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_7_3(v1);

  return v4(v3);
}

unint64_t sub_267FFF6B8()
{
  result = qword_280243008;
  if (!qword_280243008)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280243010);
    sub_267FFD040();
    sub_267FCCA4C(&qword_280242D20, &qword_280242CD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280243008);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_28_0(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_29_1()
{
}

uint64_t type metadata accessor for TextFieldView()
{
  result = qword_280243018;
  if (!qword_280243018)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_267FFF840()
{
  sub_267FFFA98(319, &qword_280242AD0, type metadata accessor for MessageDraftSnippetViewModel, MEMORY[0x277CE12F8]);
  if (v0 <= 0x3F)
  {
    sub_267FC1004();
    if (v1 <= 0x3F)
    {
      sub_267FFFA98(319, &qword_280242178, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        sub_267FFFA34();
        if (v3 <= 0x3F)
        {
          sub_267FFFA98(319, &qword_280242798, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
          if (v4 <= 0x3F)
          {
            sub_267FE8970(319, &qword_2802427A0);
            if (v5 <= 0x3F)
            {
              sub_267FE8970(319, &qword_2802427A8);
              if (v6 <= 0x3F)
              {
                sub_26804E22C();
                if (v7 <= 0x3F)
                {
                  sub_267FCBA04();
                  if (v8 <= 0x3F)
                  {
                    sub_267FFFAFC();
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

void sub_267FFFA34()
{
  if (!qword_280243028)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280243030);
    v0 = sub_26804CF2C();
    if (!v1)
    {
      atomic_store(v0, &qword_280243028);
    }
  }
}

void sub_267FFFA98(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_267FFFAFC()
{
  result = qword_280243038;
  if (!qword_280243038)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280243038);
  }

  return result;
}

uint64_t sub_267FFFB74()
{
  v2 = sub_26804D3AC();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2_10();
  type metadata accessor for TextFieldView();
  OUTLINED_FUNCTION_7_1();
  if (!v6)
  {

    sub_26804E8AC();
    v7 = sub_26804D77C();
    OUTLINED_FUNCTION_8_2();

    sub_26804D39C();
    swift_getAtKeyPath();
    sub_267FBACF4(v0, 0);
    (*(v4 + 8))(v1, v2);
    LOBYTE(v0) = v9;
  }

  return v0 & 1;
}

double sub_267FFFC94()
{
  v2 = sub_26804D3AC();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2_10();
  type metadata accessor for TextFieldView();
  OUTLINED_FUNCTION_7_1();
  if (v6)
  {
    return *&v0;
  }

  sub_26804E8AC();
  v7 = sub_26804D77C();
  OUTLINED_FUNCTION_8_2();

  sub_26804D39C();
  swift_getAtKeyPath();
  sub_267FBACF4(v0, 0);
  (*(v4 + 8))(v1, v2);
  return v9;
}

uint64_t sub_267FFFDB8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_280242A48);
  sub_26804DF1C();
  v0 = sub_26803FB00();

  if (v0 && (v1 = sub_26804C6CC(), , (v1 & 1) != 0) || (v7[3] = &type metadata for Features, v7[4] = sub_267FB0C70(), LOBYTE(v7[0]) = 26, v2 = sub_26804C08C(), __swift_destroy_boxed_opaque_existential_1Tm(v7), (v2 & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    sub_26804DF1C();
    if (sub_26803CB44() == 0xD000000000000013 && 0x80000002680565E0 == v3)
    {
      v5 = 1;
    }

    else
    {
      v5 = sub_26804EC9C();
    }
  }

  return v5 & 1;
}

void sub_267FFFEE8(uint64_t a1@<X8>)
{
  v117 = a1;
  v130 = sub_26804CF1C();
  OUTLINED_FUNCTION_1();
  v129 = v3;
  v5 = MEMORY[0x28223BE20](v4);
  v128 = &v113 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_13_0(&v113 - v7);
  v124 = sub_26804D11C();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_13_0(v10 - v9);
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280243040);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_13_0(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280243048);
  OUTLINED_FUNCTION_15(v13);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_13_0(v15);
  v114 = sub_26804D3AC();
  OUTLINED_FUNCTION_1();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_13_0(v20 - v19);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242310);
  OUTLINED_FUNCTION_15(v21);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v22);
  v24 = &v113 - v23;
  v25 = sub_26804D89C();
  OUTLINED_FUNCTION_1();
  v27 = v26;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_2_10();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280243050);
  OUTLINED_FUNCTION_15(v29);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v30);
  v32 = &v113 - v31;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280243058);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v33);
  v35 = &v113 - v34;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280243060);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v36);
  v38 = &v113 - v37;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280243068);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_13_0(v40);
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280243070);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_13_0(v42);
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280243078);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_13_0(v44);
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280243080);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_13_0(v46);
  *v32 = sub_26804D3DC();
  *(v32 + 1) = 0;
  v32[16] = 1;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280243088);
  sub_268000B7C(v1, &v32[*(v47 + 44)]);
  if (sub_267FFFB74())
  {
    (*(v27 + 104))(v2, *MEMORY[0x277CE0A50], v25);
    v48 = *MEMORY[0x277CE0990];
    v49 = sub_26804D81C();
    OUTLINED_FUNCTION_4();
    (*(v50 + 104))(v24, v48, v49);
    __swift_storeEnumTagSinglePayload(v24, 0, 1, v49);
    v51 = sub_26804D86C();
    sub_2680030A0(v24, &qword_280242310);
    (*(v27 + 8))(v2, v25);
  }

  else
  {
    v52 = v1 + *(type metadata accessor for TextFieldView() + 28);
    v51 = *v52;
    v53 = *(v52 + 8);

    if ((v53 & 1) == 0)
    {
      sub_26804E8AC();
      v54 = sub_26804D77C();
      sub_26804CD2C();

      v55 = v113;
      sub_26804D39C();
      OUTLINED_FUNCTION_12_0();
      swift_getAtKeyPath();
      j__swift_release();
      (*(v17 + 8))(v55, v114);
      v51 = __src[0];
    }
  }

  KeyPath = swift_getKeyPath();
  sub_267FDBADC(v32, v35, &qword_280243050);
  OUTLINED_FUNCTION_22();
  v58 = &v35[v57];
  *v58 = KeyPath;
  v58[1] = v51;
  sub_26804D79C();
  sub_267FFFC94();
  sub_26804CE1C();
  OUTLINED_FUNCTION_25_1();
  sub_267FDBADC(v35, v38, &qword_280243058);
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_6_5(&v38[v59]);
  sub_26804D80C();
  sub_26804CE1C();
  OUTLINED_FUNCTION_25_1();
  v60 = v118;
  sub_267FDBADC(v38, v118, &qword_280243060);
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_6_5(v60 + v61);
  if (sub_267FFFB74())
  {
    sub_267FFFC94();
  }

  v62 = v132;
  sub_268002738();
  sub_267FFFC94();
  sub_26804DFAC();
  while (1)
  {
    sub_26804D13C();
    v63 = v125;
    sub_267FDBADC(v60, v125, &qword_280243068);
    OUTLINED_FUNCTION_22();
    memcpy((v63 + v64), __src, 0x70uLL);
    v65 = sub_267FFFC94() * 14.0;
    v66 = *(v124 + 20);
    v67 = *MEMORY[0x277CE0118];
    sub_26804D48C();
    OUTLINED_FUNCTION_4();
    (*(v68 + 104))(v62 + v66, v67);
    *v62 = v65;
    v62[1] = v65;
    v69 = type metadata accessor for TextFieldView();
    v70 = v127;
    sub_267FB1634(v69, v71, v72, v73, v74, v75, v76, v77, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124);
    v78 = v129;
    v79 = v128;
    v80 = v130;
    (*(v129 + 104))(v128, *MEMORY[0x277CDF3C0], v130);
    LOBYTE(v67) = sub_26804CF0C();
    v81 = *(v78 + 8);
    v81(v79, v80);
    v81(v70, v80);
    if (v67)
    {
      v82 = [objc_opt_self() quaternarySystemFillColor];
      v83 = sub_26804DC1C();
    }

    else
    {
      v83 = sub_26804DC9C();
    }

    v84 = v83;
    v85 = MEMORY[0x277CDFC08];
    v86 = v133;
    sub_268002F54(v62, v133, MEMORY[0x277CDFC08]);
    v87 = v131;
    *(v86 + *(v131 + 52)) = v84;
    *(v86 + *(v87 + 56)) = 256;
    v88 = [objc_opt_self() systemGray6Color];
    v89 = sub_26804DC1C();
    sub_26804CF6C();
    v60 = v134;
    sub_268002EF8(v86, v134, v85);
    v90 = v60 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280243090) + 36);
    v91 = v137;
    *v90 = v136;
    *(v90 + 16) = v91;
    *(v90 + 32) = v138;
    v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280243098);
    *(v60 + *(v92 + 52)) = v89;
    *(v60 + *(v92 + 56)) = 256;
    v93 = v60 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802430A0) + 36);
    sub_267FDC224(v86, v93, &qword_280243040);
    v94 = sub_26804DFAC();
    v62 = v95;
    sub_2680030A0(v86, &qword_280243040);
    v96 = (v93 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802430A8) + 36));
    *v96 = v94;
    v96[1] = v62;
    v97 = sub_26804DFAC();
    v99 = v98;
    OUTLINED_FUNCTION_22();
    v100 = v126;
    v102 = v126 + v101;
    sub_268002E88(v60, v126 + v101);
    v103 = (v102 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802430B0) + 36));
    *v103 = v97;
    v103[1] = v99;
    sub_267FDBADC(v63, v100, &qword_280243070);
    v104 = 8.0 / sub_268002738();
    if ((*&v104 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
      goto LABEL_16;
    }

    if (v104 > -9.22337204e18)
    {
      break;
    }

LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    sub_26804E8AC();
    v112 = sub_26804D77C();
    sub_26804CD2C();
  }

  if (v104 >= 9.22337204e18)
  {
    goto LABEL_17;
  }

  v105 = v104;
  v106 = swift_getKeyPath();
  v107 = v116;
  sub_267FDBADC(v100, v116, &qword_280243078);
  OUTLINED_FUNCTION_22();
  v109 = v107 + v108;
  *v109 = v106;
  *(v109 + 8) = v105;
  *(v109 + 16) = 0;
  sub_26804D79C();
  sub_26804CE1C();
  OUTLINED_FUNCTION_25_1();
  v110 = v117;
  sub_267FDBADC(v107, v117, &qword_280243080);
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802430B8);
  OUTLINED_FUNCTION_6_5(v110 + *(v111 + 36));
}

uint64_t sub_268000B7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v101 = a2;
  v82 = sub_26804D10C();
  v81 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v80 = &v75 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802430C0);
  v77 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v76 = &v75 - v4;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802430C8);
  MEMORY[0x28223BE20](v98);
  v78 = &v75 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802430D0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v100 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v99 = &v75 - v9;
  v10 = type metadata accessor for TextFieldView();
  v11 = *(v10 - 8);
  v103 = v10 - 8;
  v105 = v11;
  v106 = *(v11 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v107 = &v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_280242A48);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v75 - v15;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241C38);
  v86 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v84 = &v75 - v17;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802430D8);
  v88 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v102 = &v75 - v18;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802430E0);
  v91 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v104 = &v75 - v19;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802430E8);
  v95 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v93 = &v75 - v20;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802430F0);
  v21 = MEMORY[0x28223BE20](v92);
  v97 = &v75 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v89 = &v75 - v24;
  MEMORY[0x28223BE20](v23);
  v90 = &v75 - v25;
  v83 = sub_26804D45C();
  sub_26804DF2C();
  swift_getKeyPath();
  sub_26804DF4C();

  (*(v14 + 8))(v16, v13);
  v108 = a1;
  sub_268001A24();
  v26 = v84;
  sub_26804E01C();
  v27 = a1 + *(v103 + 56);
  v28 = *(v27 + 8);
  v29 = *(v27 + 16);
  LOBYTE(v111) = *v27;
  LOBYTE(v14) = v111;
  *(&v111 + 1) = v28;
  LOBYTE(v112) = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241A28);
  sub_26804CE4C();
  v83 = sub_267FB0FC4(&qword_280241C58, &qword_280241C38);
  v30 = v85;
  sub_26804DBAC();

  (*(v86 + 8))(v26, v30);
  LOBYTE(v111) = v14;
  *(&v111 + 1) = v28;
  LOBYTE(v112) = v29;
  sub_26804CE2C();
  v31 = v107;
  v32 = v108;
  sub_268002EF8(v108, v107, type metadata accessor for TextFieldView);
  v33 = (*(v105 + 80) + 16) & ~*(v105 + 80);
  v105 = *(v105 + 80);
  v34 = swift_allocObject();
  sub_268002F54(v31, v34 + v33, type metadata accessor for TextFieldView);
  *&v111 = v30;
  *(&v111 + 1) = v83;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v36 = v87;
  v37 = v102;
  sub_26804DBEC();
  v38 = v36;

  (*(v88 + 8))(v37, v36);
  v39 = *(v32 + *(v103 + 28));
  if (v39)
  {
    v40 = v39;
    v41 = sub_26804E5DC();
    v43 = v42;

    v109 = v41;
    v110 = v43;
    v44 = v107;
    sub_268002EF8(v108, v107, type metadata accessor for TextFieldView);
    v45 = swift_allocObject();
    sub_268002F54(v44, v45 + v33, type metadata accessor for TextFieldView);
    *&v111 = v38;
    *(&v111 + 1) = MEMORY[0x277D839B0];
    *&v112 = OpaqueTypeConformance2;
    *(&v112 + 1) = MEMORY[0x277D839C8];
    swift_getOpaqueTypeConformance2();
    v46 = v93;
    v47 = v94;
    v48 = v104;
    sub_26804DBEC();

    (*(v91 + 8))(v48, v47);
    v49 = v40;
    v50 = sub_26804E5AC();

    sub_268002EF8(v108, v44, type metadata accessor for TextFieldView);
    v51 = swift_allocObject();
    sub_268002F54(v44, v51 + v33, type metadata accessor for TextFieldView);
    v52 = v89;
    (*(v95 + 32))(v89, v46, v96);
    v53 = v92;
    *(v52 + *(v92 + 52)) = v50;
    v54 = (v52 + *(v53 + 56));
    *v54 = sub_268003040;
    v54[1] = v51;
    v55 = v90;
    sub_267FDBADC(v52, v90, &qword_2802430F0);
    v56 = sub_267FFFDB8();
    v57 = 1;
    v58 = v98;
    v59 = v99;
    if (v56)
    {
      v60 = v107;
      sub_268002EF8(v108, v107, type metadata accessor for TextFieldView);
      v61 = swift_allocObject();
      v62 = sub_268002F54(v60, v61 + v33, type metadata accessor for TextFieldView);
      MEMORY[0x28223BE20](v62);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280243100);
      sub_268003394();
      v63 = v76;
      sub_26804DE2C();
      v64 = v80;
      sub_26804D0FC();
      sub_267FB0FC4(&qword_280243110, &qword_2802430C0);
      sub_26800344C(&qword_280242288, MEMORY[0x277CDDB18]);
      v65 = v78;
      v66 = v79;
      v67 = v82;
      sub_26804DABC();
      (*(v81 + 8))(v64, v67);
      (*(v77 + 8))(v63, v66);
      sub_26804DFAC();
      sub_26804CFBC();
      v68 = (v65 + *(v58 + 36));
      v69 = v112;
      *v68 = v111;
      v68[1] = v69;
      v68[2] = v113;
      sub_267FDBADC(v65, v59, &qword_2802430C8);
      v57 = 0;
    }

    __swift_storeEnumTagSinglePayload(v59, v57, 1, v58);
    v70 = v97;
    sub_267FDC224(v55, v97, &qword_2802430F0);
    v71 = v100;
    sub_267FDC224(v59, v100, &qword_2802430D0);
    v72 = v101;
    sub_267FDC224(v70, v101, &qword_2802430F0);
    v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802430F8);
    sub_267FDC224(v71, v72 + *(v73 + 48), &qword_2802430D0);
    sub_2680030A0(v59, &qword_2802430D0);
    sub_2680030A0(v55, &qword_2802430F0);
    sub_2680030A0(v71, &qword_2802430D0);
    return sub_2680030A0(v70, &qword_2802430F0);
  }

  else
  {
    sub_26804E62C();
    sub_26800344C(&qword_2802412E0, MEMORY[0x277D63F60]);
    result = sub_26804D15C();
    __break(1u);
  }

  return result;
}

uint64_t sub_268001A24()
{
  v0 = sub_26804C41C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_280242A48);
  sub_26804DF1C();
  v4 = sub_26803C850();

  if (sub_268043DF4(v4))
  {

    sub_26804DF1C();
    (*(v1 + 16))(v3, v10 + OBJC_IVAR____TtC14SiriMessagesUI23MessageSnippetViewModel_labels, v0);

    v5 = sub_26804C3CC();
    v7 = v6;
    (*(v1 + 8))(v3, v0);
  }

  else
  {
    v5 = 0;
    v7 = 0xE000000000000000;
  }

  v10 = v5;
  v11 = v7;
  sub_267FB0C1C();
  return sub_26804D95C();
}

uint64_t sub_268001BBC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241820);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v16[-v2];
  v4 = (v0 + *(type metadata accessor for TextFieldView() + 48));
  v5 = *v4;
  v6 = *(v4 + 1);
  LOBYTE(v4) = v4[16];
  v16[8] = v5;
  v17 = v6;
  v18 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241A28);
  sub_26804CE2C();
  if (v16[7] == 1)
  {
    if (qword_280241130 != -1)
    {
      swift_once();
    }

    v7 = sub_26804CD4C();
    __swift_project_value_buffer(v7, qword_2802487E0);
    v8 = sub_26804CD3C();
    v9 = sub_26804E88C();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_267FA7000, v8, v9, "#TextFieldView focused", v10, 2u);
      MEMORY[0x26D60E1E0](v10, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(qword_280242A48);
    sub_26804DF1C();
    sub_268040550();
  }

  else
  {
    if (qword_280241130 != -1)
    {
      swift_once();
    }

    v12 = sub_26804CD4C();
    __swift_project_value_buffer(v12, qword_2802487E0);
    v13 = sub_26804CD3C();
    v14 = sub_26804E88C();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_267FA7000, v13, v14, "#TextFieldView unfocused", v15, 2u);
      MEMORY[0x26D60E1E0](v15, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(qword_280242A48);
    sub_26804DF1C();
    sub_2680406CC();

    sub_26804DF1C();
    sub_26804E20C();
    sub_268040A6C(v3);

    return sub_2680030A0(v3, &qword_280241820);
  }
}

uint64_t sub_268001EB0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_280242A48);
  sub_26804DF1C();
  v1 = sub_26803F530();

  if (v1)
  {
    sub_26804DF1C();
    v3 = *(v0 + *(type metadata accessor for TextFieldView() + 20));
    if (v3)
    {
      v4 = v3;
      v5 = sub_26804E5DC();
      v7 = v6;

      sub_26803F3F8(v5, v7);
    }

    else
    {
      sub_26804E62C();
      sub_26800344C(&qword_2802412E0, MEMORY[0x277D63F60]);
      result = sub_26804D15C();
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_268001FD0(_BYTE *a1)
{
  v2 = v1;
  v4 = sub_26804E5CC();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v24[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v10 = &v24[-v9];
  v11 = *(v5 + 16);
  v11(&v24[-v9], a1, v4);
  if ((*(v5 + 88))(v10, v4) == *MEMORY[0x277D63F38])
  {
    v11(v8, v10, v4);
    (*(v5 + 96))(v8, v4);
    v12 = *v8;
    if (*v8 == 1)
    {
      if (qword_280241130 != -1)
      {
        swift_once();
      }

      v19 = sub_26804CD4C();
      __swift_project_value_buffer(v19, qword_2802487E0);
      v14 = sub_26804CD3C();
      v15 = sub_26804E88C();
      if (!os_log_type_enabled(v14, v15))
      {
        goto LABEL_18;
      }

      v16 = swift_slowAlloc();
      *v16 = 0;
      v17 = "#TextFieldView new request started, unfocusing";
      goto LABEL_17;
    }

    if (v12 == 3)
    {
      if (qword_280241130 != -1)
      {
        swift_once();
      }

      v18 = sub_26804CD4C();
      __swift_project_value_buffer(v18, qword_2802487E0);
      v14 = sub_26804CD3C();
      v15 = sub_26804E88C();
      if (!os_log_type_enabled(v14, v15))
      {
        goto LABEL_18;
      }

      v16 = swift_slowAlloc();
      *v16 = 0;
      v17 = "#TextFieldView Siri dismissed, unfocusing";
      goto LABEL_17;
    }

    if (v12 == 4)
    {
      if (qword_280241130 != -1)
      {
        swift_once();
      }

      v13 = sub_26804CD4C();
      __swift_project_value_buffer(v13, qword_2802487E0);
      v14 = sub_26804CD3C();
      v15 = sub_26804E88C();
      if (!os_log_type_enabled(v14, v15))
      {
        goto LABEL_18;
      }

      v16 = swift_slowAlloc();
      *v16 = 0;
      v17 = "#TextFieldView outside content tapped, unfocusing";
LABEL_17:
      _os_log_impl(&dword_267FA7000, v14, v15, v17, v16, 2u);
      MEMORY[0x26D60E1E0](v16, -1, -1);
LABEL_18:

      v20 = (v2 + *(type metadata accessor for TextFieldView() + 48));
      v21 = *v20;
      v22 = *(v20 + 1);
      LOBYTE(v20) = v20[16];
      v24[8] = v21;
      v25 = v22;
      v26 = v20;
      v24[7] = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241A28);
      sub_26804CE3C();
    }
  }

  return (*(v5 + 8))(v10, v4);
}

double sub_268002388()
{
  v24 = sub_26804D3AC();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_10();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241DC0);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v5);
  v7 = &v23 - v6;
  v8 = sub_26804D0BC();
  OUTLINED_FUNCTION_1();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3();
  v14 = v13 - v12;
  v15 = type metadata accessor for AttachmentView();
  sub_267FDC224(v0 + *(v15 + 28), v7, &qword_280241DC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v10 + 32))(v14, v7, v8);
  }

  else
  {
    sub_26804E8AC();
    v16 = sub_26804D77C();
    sub_26804CD2C();

    sub_26804D39C();
    swift_getAtKeyPath();

    (*(v3 + 8))(v1, v24);
  }

  v17 = (*(v10 + 88))(v14, v8);
  v18 = 1.0;
  if (v17 != *MEMORY[0x277CDF9F8] && v17 != *MEMORY[0x277CDF9E0] && v17 != *MEMORY[0x277CDF9E8] && v17 != *MEMORY[0x277CDF9D8])
  {
    if (v17 == *MEMORY[0x277CDF9F0])
    {
      return 1.06;
    }

    else if (v17 == *MEMORY[0x277CDFA00])
    {
      return 1.12;
    }

    else if (v17 == *MEMORY[0x277CDFA10])
    {
      return 1.19;
    }

    else if (v17 == *MEMORY[0x277CDF988])
    {
      return 1.32;
    }

    else if (v17 == *MEMORY[0x277CDF998])
    {
      return 1.47;
    }

    else if (v17 == *MEMORY[0x277CDF9A8])
    {
      return 1.63;
    }

    else if (v17 == *MEMORY[0x277CDF9B8])
    {
      return 1.81;
    }

    else if (v17 == *MEMORY[0x277CDF9D0])
    {
      return 2.01;
    }

    else
    {
      (*(v10 + 8))(v14, v8);
    }
  }

  return v18;
}

double sub_268002738()
{
  v20 = sub_26804D3AC();
  v1 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241DC0);
  MEMORY[0x28223BE20](v4);
  v6 = &v19 - v5;
  v7 = sub_26804D0BC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TextFieldView();
  sub_267FDC224(v0 + *(v11 + 32), v6, &qword_280241DC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v8 + 32))(v10, v6, v7);
  }

  else
  {
    sub_26804E8AC();
    v12 = sub_26804D77C();
    sub_26804CD2C();

    sub_26804D39C();
    swift_getAtKeyPath();

    (*(v1 + 8))(v3, v20);
  }

  v13 = (*(v8 + 88))(v10, v7);
  v14 = 1.0;
  if (v13 != *MEMORY[0x277CDF9F8] && v13 != *MEMORY[0x277CDF9E0] && v13 != *MEMORY[0x277CDF9E8] && v13 != *MEMORY[0x277CDF9D8])
  {
    if (v13 == *MEMORY[0x277CDF9F0])
    {
      return 1.06;
    }

    else if (v13 == *MEMORY[0x277CDFA00])
    {
      return 1.12;
    }

    else if (v13 == *MEMORY[0x277CDFA10])
    {
      return 1.19;
    }

    else if (v13 == *MEMORY[0x277CDF988])
    {
      return 1.32;
    }

    else if (v13 == *MEMORY[0x277CDF998])
    {
      return 1.47;
    }

    else if (v13 == *MEMORY[0x277CDF9A8])
    {
      return 1.63;
    }

    else if (v13 == *MEMORY[0x277CDF9B8])
    {
      return 1.81;
    }

    else if (v13 == *MEMORY[0x277CDF9D0])
    {
      return 2.01;
    }

    else
    {
      (*(v8 + 8))(v10, v7);
    }
  }

  return v14;
}

uint64_t sub_268002B24(uint64_t a1)
{
  v2 = type metadata accessor for TextFieldView();
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280241130 != -1)
  {
    swift_once();
  }

  v5 = sub_26804CD4C();
  __swift_project_value_buffer(v5, qword_2802487E0);
  sub_268002EF8(a1, v4, type metadata accessor for TextFieldView);
  v6 = sub_26804CD3C();
  v7 = sub_26804E88C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 67109120;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_280242A48);
    sub_26804DF1C();
    v9 = sub_26803F324();

    sub_268003494(v4);
    *(v8 + 4) = v9 & 1;
    _os_log_impl(&dword_267FA7000, v6, v7, "#TextFieldView photo picker button pressed isAuthenticated: %{BOOL}d", v8, 8u);
    MEMORY[0x26D60E1E0](v8, -1, -1);
  }

  else
  {
    sub_268003494(v4);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_280242A48);
  sub_26804DF1C();
  v10 = sub_26803F324();

  sub_26804DF1C();
  if (v10)
  {
    sub_26803FB74(1);

    sub_26804DF1C();
    sub_268040550();

    sub_26804DF1C();
    sub_26804C6EC();
    swift_allocObject();
    sub_26804C6BC();
    sub_26803FB40();
  }

  else
  {
    sub_26804312C();
  }
}

uint64_t sub_268002DD0@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_26804DD1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_280242A48);
  sub_26804DF1C();
  v3 = sub_26803F324();

  if (v3)
  {
    v4 = sub_26804DC5C();
  }

  else
  {
    v4 = sub_26804DC6C();
  }

  v5 = v4;
  result = swift_getKeyPath();
  *a1 = v2;
  a1[1] = result;
  a1[2] = v5;
  return result;
}

uint64_t sub_268002E88(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280243048);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_268002EF8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4();
  v4 = OUTLINED_FUNCTION_12_0();
  v5(v4);
  return a2;
}

uint64_t sub_268002F54(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4();
  v4 = OUTLINED_FUNCTION_12_0();
  v5(v4);
  return a2;
}

uint64_t sub_268002FE0(uint64_t (*a1)(uint64_t))
{
  v2 = type metadata accessor for TextFieldView();
  v3 = OUTLINED_FUNCTION_15(v2);
  return a1(v3);
}

uint64_t sub_268003040(_BYTE *a1)
{
  v2 = type metadata accessor for TextFieldView();
  OUTLINED_FUNCTION_15(v2);
  return sub_268001FD0(a1);
}

uint64_t sub_2680030A0(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_6_0(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(v3);
  OUTLINED_FUNCTION_4();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t objectdestroyTm_9()
{
  v1 = type metadata accessor for TextFieldView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_280242A48);
  OUTLINED_FUNCTION_4();
  (*(v6 + 8))(v0 + v3);

  v7 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241DB8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_26804CF1C();
    OUTLINED_FUNCTION_4();
    (*(v8 + 8))(v5 + v7);
  }

  else
  {
  }

  OUTLINED_FUNCTION_14_2(v1[7]);
  j__swift_release();
  v9 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241DC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_26804D0BC();
    OUTLINED_FUNCTION_4();
    (*(v10 + 8))(v5 + v9);
  }

  else
  {
  }

  v11 = OUTLINED_FUNCTION_14_2(v1[9]);
  sub_267FBACF4(v11, v12);
  v13 = OUTLINED_FUNCTION_14_2(v1[10]);
  sub_267FBACF4(v13, v14);
  v15 = v1[11];
  sub_26804E22C();
  OUTLINED_FUNCTION_4();
  (*(v16 + 8))(v5 + v15);

  __swift_destroy_boxed_opaque_existential_1Tm(v5 + v1[13]);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_268003330()
{
  v1 = type metadata accessor for TextFieldView();
  OUTLINED_FUNCTION_15(v1);
  v3 = v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return sub_268002B24(v3);
}

unint64_t sub_268003394()
{
  result = qword_280243108;
  if (!qword_280243108)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280243100);
    sub_267FB0FC4(&qword_280241E58, &qword_280241E60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280243108);
  }

  return result;
}

uint64_t sub_26800344C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_268003494(uint64_t a1)
{
  v2 = type metadata accessor for TextFieldView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2680034F0()
{
  result = qword_280243120;
  if (!qword_280243120)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280243080);
    sub_2680035A8();
    sub_267FB0FC4(&qword_2802422F8, &unk_280242300);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280243120);
  }

  return result;
}

unint64_t sub_2680035A8()
{
  result = qword_280243128;
  if (!qword_280243128)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280243078);
    sub_268003660();
    sub_267FB0FC4(&qword_280243158, &unk_2802430B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280243128);
  }

  return result;
}

unint64_t sub_268003660()
{
  result = qword_280243130;
  if (!qword_280243130)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280243070);
    sub_268003718(&qword_280243138, &unk_280243068, &unk_268052B88, sub_268003798);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280243130);
  }

  return result;
}

uint64_t sub_268003718(unint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = OUTLINED_FUNCTION_6_0(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v7);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2680037C8()
{
  result = qword_280243148;
  if (!qword_280243148)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280243058);
    sub_267FB0FC4(&qword_280243150, &unk_280243050);
    sub_267FB0FC4(&qword_280242E78, &unk_280242E80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280243148);
  }

  return result;
}

uint64_t sub_268003904@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_26804E0FC();
  OUTLINED_FUNCTION_1();
  v73 = v5;
  v7 = MEMORY[0x28223BE20](v6);
  v71 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v72 = &v65 - v9;
  v78 = sub_26804BD7C();
  OUTLINED_FUNCTION_1();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_3();
  v79 = v14 - v13;
  v15 = type metadata accessor for PhotoAttachmentView();
  v16 = v15[5];
  *(a2 + v16) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241F10);
  swift_storeEnumTagMultiPayload();
  v17 = (a2 + v15[6]);
  sub_26804E62C();
  sub_26800656C(&qword_2802412E0, MEMORY[0x277D63F60]);
  *v17 = sub_26804D17C();
  v17[1] = v18;
  v19 = a2 + v15[10];
  v83 = 0;
  sub_26804DDDC();
  v20 = v85;
  *v19 = v84;
  *(v19 + 8) = v20;
  sub_26804C59C();
  OUTLINED_FUNCTION_11();
  v69 = v22;
  v70 = v21;
  (*(v22 + 16))(a2, a1);
  sub_26804C56C();
  v23 = sub_26804C6AC();

  v24 = *(v23 + 16);

  if (v24 || (sub_26804C56C(), v25 = sub_26804C68C(), , v26 = *(v25 + 16), , v26))
  {
    v66 = a2;
    v68 = v4;
    sub_26804C56C();
    v27 = sub_26804C69C();

    sub_26804C56C();
    v28 = sub_26804C6AC();

    v67 = a1;
    sub_26804C56C();
    v65 = sub_26804C68C();

    v77 = sub_26804C1EC();
    v29 = sub_26804E65C();
    v30 = 0;
    v80 = *(v28 + 16);
    v81 = v28;
    v75 = v15;
    v76 = v11 + 16;
    v31 = (v28 + 40);
    v74 = v27;
    while (1)
    {
      if (v80 == v30)
      {

        a1 = v67;
        sub_26804C56C();
        sub_26804C6DC();

        sub_26804C5FC();
        swift_allocObject();
        v46 = sub_26804C5AC();
        v47 = v15[8];
        OUTLINED_FUNCTION_15_3(v46);
        sub_26804DDDC();
        v48 = v85;
        a2 = v66;
        *(v66 + v47) = v84;
        v4 = v68;
        goto LABEL_17;
      }

      if (v30 >= *(v81 + 16))
      {
        break;
      }

      if (v30 >= *(v27 + 16))
      {
        goto LABEL_23;
      }

      v32 = *(v31 - 1);
      v33 = *v31;
      v82 = v31;
      v34 = v11;
      (*(v11 + 16))(v79, v27 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v30, v78);
      swift_allocObject();

      v35 = sub_26804C19C();
      swift_isUniquelyReferenced_nonNull_native();
      v84 = v29;
      v36 = sub_268007544(v32, v33);
      if (__OFADD__(v29[2], (v37 & 1) == 0))
      {
        goto LABEL_24;
      }

      v38 = v36;
      v39 = v37;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242630);
      if (sub_26804EBDC())
      {
        v40 = sub_268007544(v32, v33);
        if ((v39 & 1) != (v41 & 1))
        {
          goto LABEL_26;
        }

        v38 = v40;
      }

      if (v39)
      {

        v29 = v84;
        *(v84[7] + 8 * v38) = v35;
      }

      else
      {
        v29 = v84;
        v84[(v38 >> 6) + 8] |= 1 << v38;
        v42 = (v29[6] + 16 * v38);
        *v42 = v32;
        v42[1] = v33;
        *(v29[7] + 8 * v38) = v35;
        v43 = v29[2];
        v44 = __OFADD__(v43, 1);
        v45 = v43 + 1;
        if (v44)
        {
          goto LABEL_25;
        }

        v29[2] = v45;
      }

      v31 = v82 + 2;
      ++v30;
      v27 = v74;
      v15 = v75;
      v11 = v34;
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    result = sub_26804ECEC();
    __break(1u);
  }

  else
  {
    sub_26804C1EC();
    sub_26804E65C();
    sub_26804C5FC();
    swift_allocObject();
    v64 = sub_26804C5AC();
    v47 = v15[8];
    OUTLINED_FUNCTION_15_3(v64);
    sub_26804DDDC();
    v48 = v85;
    *(a2 + v47) = v84;
LABEL_17:
    *(a2 + v47 + 8) = v48;
    sub_26804C56C();
    v49 = sub_26804C67C();

    v50 = a2 + v15[9];
    v83 = v49 & 1;
    sub_26804DDDC();
    v51 = v85;
    *v50 = v84;
    *(v50 + 8) = v51;
    v52 = objc_opt_self();
    v53 = a2;
    if ([v52 isMultiLibraryModeEnabled])
    {
      sub_267FCAB20(0, &qword_280243248);
      v54 = [v52 systemPhotoLibraryURL];
      v55 = v79;
      sub_26804BD4C();

      v56 = sub_268004690(v55);
    }

    else
    {
      v56 = [v52 sharedPhotoLibrary];
    }

    v57 = v56;
    v58 = v72;
    sub_26804E0DC();
    sub_26804E0EC();
    sub_26804C56C();
    sub_26804C6DC();

    OUTLINED_FUNCTION_20_2();
    sub_26804E0CC();
    sub_267FCAB20(0, &qword_280243178);
    v59 = v73;
    (*(v73 + 16))(v71, v58, v4);
    v60 = sub_26804E92C();
    v61 = (v53 + v15[7]);
    OUTLINED_FUNCTION_15_3(v60);
    sub_26804DDDC();

    (*(v69 + 8))(a1, v70);
    result = (*(v59 + 8))(v58, v4);
    v63 = v85;
    *v61 = v84;
    v61[1] = v63;
  }

  return result;
}

void sub_268004128(void (*a1)(uint64_t *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v4 = a3 + 64;
  v5 = 1 << *(a3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a3 + 64);
  v8 = (v5 + 63) >> 6;
  v24 = a3;

  v9 = 0;
  v10 = MEMORY[0x277D84F90];
  if (v7)
  {
LABEL_8:
    while (1)
    {
      v12 = (*(v24 + 48) + ((v9 << 10) | (16 * __clz(__rbit64(v7)))));
      v13 = v12[1];
      v23[0] = *v12;
      v23[1] = v13;

      a1(&v21, v23);
      if (v3)
      {
        break;
      }

      v14 = v22;
      if (v22)
      {
        v19 = v21;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_267FAFA9C();
          v10 = v17;
        }

        v15 = *(v10 + 16);
        if (v15 >= *(v10 + 24) >> 1)
        {
          sub_267FAFA9C();
          v10 = v18;
        }

        *(v10 + 16) = v15 + 1;
        v16 = v10 + 16 * v15;
        *(v16 + 32) = v19;
        *(v16 + 40) = v14;
      }

      v7 &= v7 - 1;
      if (!v7)
      {
        goto LABEL_4;
      }
    }
  }

  else
  {
LABEL_4:
    while (1)
    {
      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v11 >= v8)
      {

        return;
      }

      v7 = *(v4 + 8 * v11);
      ++v9;
      if (v7)
      {
        v9 = v11;
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

void *sub_2680042F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_268007544(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
  v7 = v6;
  return v6;
}

uint64_t sub_268004338(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_268007544(a1, a2);
  if (v3)
  {
  }

  else
  {
    return 0;
  }
}

double sub_268004388@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  if (*(a2 + 16) && (v5 = sub_2680075BC(a1), (v6 & 1) != 0))
  {
    v7 = *(a2 + 56) + 32 * v5;

    sub_267FAE2BC(v7, a3);
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_2680043EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_268007544(a1, a2);
  if (v3)
  {
  }

  else
  {
    return 0;
  }
}

void *sub_26800443C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_268007294(*(a1 + 16), 0);
  v4 = sub_268007778(&v6, v3 + 4, v2, a1);
  sub_2680078D4();
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v3;
}

uint64_t sub_2680044CC()
{
  OUTLINED_FUNCTION_17_2();
  v2 = sub_26804D3AC();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3();
  v8 = v7 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241F10);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v9);
  v11 = &v16 - v10;
  v12 = type metadata accessor for PhotoAttachmentView();
  sub_267FF4418(v1 + *(v12 + 20), v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_26804D0CC();
    OUTLINED_FUNCTION_4();
    return (*(v13 + 32))(v0, v11);
  }

  else
  {
    sub_26804E8AC();
    v15 = sub_26804D77C();
    sub_26804CD2C();

    sub_26804D39C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v8, v2);
  }
}

id sub_268004690(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_26804BD2C();
  v4 = [v2 initWithPhotoLibraryURL_];

  v5 = sub_26804BD7C();
  (*(*(v5 - 8) + 8))(a1, v5);
  return v4;
}

uint64_t sub_26800472C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v81 = a1;
  v74 = type metadata accessor for PhotoAttachmentView();
  OUTLINED_FUNCTION_1();
  v73 = v3;
  MEMORY[0x28223BE20](v4);
  v84 = v5;
  v83 = &v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280243190);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v6);
  v8 = &v72 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280243198);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v10);
  v12 = &v72 - v11;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802431A0);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v13);
  v15 = &v72 - v14;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802431A8);
  OUTLINED_FUNCTION_1();
  v76 = v16;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v17);
  v75 = &v72 - v18;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802431B0);
  OUTLINED_FUNCTION_1();
  v79 = v19;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v20);
  v77 = &v72 - v21;
  v87 = v2;
  *v8 = sub_26804D3DC();
  *(v8 + 1) = 0;
  v8[16] = 1;
  v22 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802431B8) + 44)];
  v85 = v2;
  sub_2680499A4(sub_268006628, v86, v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242708);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2680518C0;
  v24 = sub_26804D7DC();
  *(inited + 32) = v24;
  v25 = sub_26804D7FC();
  *(inited + 33) = v25;
  v26 = sub_26804D7CC();
  *(inited + 34) = v26;
  v27 = sub_26804D7EC();
  sub_26804D7EC();
  if (sub_26804D7EC() != v24)
  {
    v27 = sub_26804D7EC();
  }

  sub_26804D7EC();
  if (sub_26804D7EC() != v25)
  {
    v27 = sub_26804D7EC();
  }

  sub_26804D7EC();
  if (sub_26804D7EC() != v26)
  {
    v27 = sub_26804D7EC();
  }

  sub_26804CE1C();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  sub_267FF4248(v8, v12, &qword_280243190);
  v36 = &v12[*(v9 + 36)];
  *v36 = v27;
  *(v36 + 1) = v29;
  *(v36 + 2) = v31;
  *(v36 + 3) = v33;
  *(v36 + 4) = v35;
  v36[40] = 0;
  KeyPath = swift_getKeyPath();
  v38 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802431C0) + 36)];
  v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242BF0) + 28);
  v40 = *MEMORY[0x277CDFA88];
  sub_26804D0CC();
  OUTLINED_FUNCTION_4();
  (*(v41 + 104))(v38 + v39, v40);
  *v38 = KeyPath;
  sub_267FF4248(v12, v15, &qword_280243198);
  v42 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802431C8) + 36)];
  v72 = v15;
  *v42 = sub_26800530C;
  v42[1] = 0;
  v42[2] = 0;
  v42[3] = 0;
  v43 = v85;
  v44 = v83;
  sub_268006630(v85, v83);
  v45 = (*(v73 + 80) + 16) & ~*(v73 + 80);
  v73 = *(v73 + 80);
  v46 = swift_allocObject();
  sub_268006694(v44, v46 + v45);
  v47 = &v15[*(v82 + 36)];
  *v47 = 0;
  *(v47 + 1) = 0;
  *(v47 + 2) = sub_2680066F8;
  *(v47 + 3) = v46;
  v48 = v43 + *(v74 + 36);
  v49 = *v48;
  v50 = *(v48 + 8);
  v92 = v49;
  v93 = v50;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242C20);
  sub_26804DE0C();
  sub_268006630(v43, v44);
  v51 = swift_allocObject();
  sub_268006694(v44, v51 + v45);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802431D0);
  OUTLINED_FUNCTION_6_6();
  v57 = sub_26800694C(v53, v54, v55, v56);
  OUTLINED_FUNCTION_5_7();
  v71 = sub_26800694C(v58, &qword_2802431D0, &unk_268052E30, v59);
  v60 = v75;
  v61 = v82;
  v62 = v72;
  sub_26804DB8C();

  sub_268006A24(v62);
  v88 = v61;
  v89 = v52;
  v90 = v57;
  v91 = v71;
  OUTLINED_FUNCTION_4_6();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v64 = v77;
  v65 = v78;
  sub_26804D9AC();
  (*(v76 + 8))(v60, v65);
  v66 = v85;
  sub_26804C56C();
  LOBYTE(v57) = sub_26804C67C();

  v92 = v57 & 1;
  v67 = v83;
  sub_268006630(v66, v83);
  v68 = swift_allocObject();
  sub_268006694(v67, v68 + v45);
  v88 = v65;
  v89 = OpaqueTypeConformance2;
  OUTLINED_FUNCTION_7_4();
  swift_getOpaqueTypeConformance2();
  v69 = v80;
  sub_26804DBEC();

  return (*(v79 + 8))(v64, v69);
}

void *sub_268004F84@<X0>(void *a1@<X8>)
{
  sub_26804C56C();
  v1 = sub_26804C6CC();

  if (v1)
  {
    sub_26804C57C();
    sub_26804C58C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242910);
    sub_26804DDDC();
    sub_26804DDDC();
    sub_26804DDDC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242938);
  }

  else
  {
    type metadata accessor for PhotoAttachmentView();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280243228);
    sub_26804DE0C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242C20);
    sub_26804DE0C();
    sub_26804C58C();
    sub_26804DDDC();
    sub_26804DDDC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802417C8);
  }

  sub_26804DDDC();
  sub_26804E62C();
  sub_26800656C(&qword_2802412E0, MEMORY[0x277D63F60]);
  sub_26804D17C();
  sub_2680078DC();
  sub_268007930();
  sub_26804D5AC();
  return memcpy(a1, __src, 0x72uLL);
}

void sub_26800530C()
{
  if (qword_280241130 != -1)
  {
    swift_once();
  }

  v0 = sub_26804CD4C();
  __swift_project_value_buffer(v0, qword_2802487E0);
  oslog = sub_26804CD3C();
  v1 = sub_26804E88C();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_267FA7000, oslog, v1, "#PhotoAttachmentView appearing", v2, 2u);
    MEMORY[0x26D60E1E0](v2, -1, -1);
  }
}

void sub_2680053F4()
{
  if (qword_280241130 != -1)
  {
    swift_once();
  }

  v0 = sub_26804CD4C();
  __swift_project_value_buffer(v0, qword_2802487E0);
  v1 = sub_26804CD3C();
  v2 = sub_26804E88C();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_267FA7000, v1, v2, "#PhotoAttachmentView disappearing", v3, 2u);
    MEMORY[0x26D60E1E0](v3, -1, -1);
  }

  type metadata accessor for PhotoAttachmentView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280243220);
  sub_26804DDEC();
  [v4 dismissViewControllerAnimated:1 completion:0];
}

double sub_268005574()
{
  OUTLINED_FUNCTION_17_2();
  v2 = type metadata accessor for PhotoAttachmentView();
  v3 = (v2 - 8);
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (v1 + v3[10]);
  v8 = *v6;
  v7 = v6[1];
  v32 = v8;
  v33 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280243228);
  sub_26804DE0C();
  v29 = v30;
  v28 = v31;
  v9 = (v1 + v3[11]);
  v10 = *v9;
  v11 = *(v9 + 1);
  LOBYTE(v32) = v10;
  v33 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242C20);
  sub_26804DE0C();
  v12 = v30;
  v13 = v31;
  v27 = BYTE8(v31);
  v14 = (v1 + v3[9]);
  v16 = *v14;
  v15 = v14[1];
  v30 = v16;
  *&v31 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280243220);
  sub_26804DDEC();
  v17 = v32;
  v18 = OUTLINED_FUNCTION_20_2();
  sub_268006630(v18, v19);
  v20 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v21 = swift_allocObject();
  sub_268006694(&v26[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], v21 + v20);
  v22 = OUTLINED_FUNCTION_20_2();
  sub_268006630(v22, v23);
  v24 = swift_allocObject();
  sub_268006694(&v26[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], v24 + v20);
  *v0 = v29;
  *(v0 + 8) = v28;
  *(v0 + 24) = v12;
  *(v0 + 32) = v13;
  *(v0 + 40) = v27;
  *(v0 + 48) = v17;
  *(v0 + 56) = sub_268006AA4;
  *(v0 + 64) = v21;
  result = 0.0;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0u;
  *(v0 + 104) = sub_268006C60;
  *(v0 + 112) = v24;
  return result;
}

uint64_t sub_26800579C(uint64_t a1)
{
  sub_26804C56C();
  v2 = sub_26804C67C();

  v3 = type metadata accessor for PhotoAttachmentView();
  v4 = (a1 + v3[9]);
  v5 = *v4;
  v6 = *(v4 + 1);
  LOBYTE(v19) = v2 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242C20);
  sub_26804DDFC();
  LOBYTE(v17) = v5;
  v18 = v6;
  result = sub_26804DDEC();
  if ((v2 & 1) == 1)
  {
    v8 = (a1 + v3[7]);
    v10 = *v8;
    v9 = v8[1];
    v17 = v10;
    v18 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280243220);
    sub_26804DDEC();
    v11 = (a1 + v3[8]);
    v12 = *v11;
    v13 = v11[1];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280243228);
    sub_26804DDEC();
    sub_26804C5CC();

    v14 = sub_26804E77C();

    [v19 deselectAssetsWithIdentifiers_];

    v17 = v12;
    v18 = v13;
    sub_26804DDEC();
    v15 = sub_26804C5BC();
    *v16 = MEMORY[0x277D84F90];

    v15(&v17, 0);
  }

  return result;
}

void sub_268005974(uint64_t a1)
{
  v1 = *(a1 + *(type metadata accessor for PhotoAttachmentView() + 24));
  if (v1)
  {
    v2 = v1;
    sub_26804E57C();
  }

  else
  {
    sub_26804E62C();
    sub_26800656C(&qword_2802412E0, MEMORY[0x277D63F60]);
    sub_26804D15C();
    __break(1u);
  }
}

void sub_268005A34(uint64_t a1)
{
  v2 = sub_26804C85C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PhotoAttachmentView();
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + *(v7 + 24));
  if (v10)
  {
    v11 = v10;
    sub_26804E55C();
    v43 = v11;

    if (qword_280241130 != -1)
    {
      swift_once();
    }

    v44 = v5;
    v45 = v3;
    v12 = sub_26804CD4C();
    __swift_project_value_buffer(v12, qword_2802487E0);
    sub_268006630(a1, v9);
    v13 = sub_26804CD3C();
    v14 = sub_26804E88C();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v42 = v2;
      v16 = v15;
      v17 = swift_slowAlloc();
      v48[0] = v17;
      *v16 = 136315138;
      v18 = &v9[*(v6 + 32)];
      v20 = *v18;
      v19 = v18[1];
      v49 = v20;
      v50 = v19;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280243228);
      sub_26804DDEC();
      sub_26804C5EC();

      sub_26804C1EC();
      v21 = sub_26804E66C();
      v23 = v22;

      sub_268006CEC(v9);
      v24 = sub_267FAE0C4(v21, v23, v48);

      *(v16 + 4) = v24;
      _os_log_impl(&dword_267FA7000, v13, v14, "#PhotoAttachmentView selected assetIds %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v17);
      MEMORY[0x26D60E1E0](v17, -1, -1);
      v25 = v16;
      v2 = v42;
      MEMORY[0x26D60E1E0](v25, -1, -1);
    }

    else
    {

      sub_268006CEC(v9);
    }

    v26 = (a1 + *(v6 + 32));
    v28 = v26[1];
    v49 = *v26;
    v27 = v49;
    v50 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280243228);
    sub_26804DDEC();
    v29 = sub_26804C5EC();

    MEMORY[0x28223BE20](v30);
    *(&v42 - 2) = a1;
    sub_268004128(sub_268006D48, (&v42 - 4), v29);
    v32 = v31;

    v49 = v27;
    v50 = v28;
    sub_26804DDEC();
    v33 = sub_26804C5EC();

    v34 = sub_26800443C(v33);
    v35 = a1 + *(v6 + 40);
    v36 = *(v35 + 8);
    LOBYTE(v49) = *v35;
    LOBYTE(v27) = v49;
    v50 = v36;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242C20);
    sub_26804DDEC();
    LOBYTE(v48[0]) = v27;
    v48[1] = v36;
    v47 = (v46 & 1) == 0;
    sub_26804DDFC();

    v37 = v45;
    v38 = v44;
    (*(v45 + 104))(v44, *MEMORY[0x277D5D730], v2);
    v39 = v43;
    sub_26804C84C();
    (*(v37 + 8))(v38, v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241830);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2680518B0;
    v49 = 0x656D686361747461;
    v50 = 0xEB0000000073746ELL;
    sub_26804EAFC();
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802417C8);
    *(inited + 96) = v41;
    *(inited + 72) = v32;
    v49 = 0x696669746E656469;
    v50 = 0xEB00000000737265;
    sub_26804EAFC();
    *(inited + 168) = v41;
    *(inited + 144) = v34;
    sub_26804E65C();
    sub_26804E60C();
  }

  else
  {
    sub_26804E62C();
    sub_26800656C(&qword_2802412E0, MEMORY[0x277D63F60]);
    sub_26804D15C();
    __break(1u);
  }
}

uint64_t sub_26800605C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_26804BD7C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v10 = a1[1];
  v12 = (a2 + *(type metadata accessor for PhotoAttachmentView() + 32));
  v14 = *v12;
  v13 = v12[1];
  v20[0] = v14;
  v20[1] = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280243228);
  sub_26804DDEC();
  v15 = sub_26804C5EC();

  v16 = sub_268004338(v11, v10, v15);

  if (v16)
  {
    sub_26804C18C();

    v16 = sub_26804BD6C();
    v19 = v18;
    result = (*(v7 + 8))(v9, v6);
  }

  else
  {
    v19 = 0;
  }

  *a3 = v16;
  a3[1] = v19;
  return result;
}

uint64_t sub_2680061E8()
{
  OUTLINED_FUNCTION_17_2();
  sub_26804C59C();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3();
  v5 = v4 - v3;
  (*(v6 + 16))(v4 - v3, v1);
  return sub_268003904(v5, v0);
}

void sub_2680062C4()
{
  sub_26804C59C();
  if (v0 <= 0x3F)
  {
    sub_268006470(319, &qword_280242690, MEMORY[0x277CDFAA0], MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      sub_267FC1004();
      if (v2 <= 0x3F)
      {
        sub_268006408();
        if (v3 <= 0x3F)
        {
          sub_268006470(319, &qword_280243180, MEMORY[0x277D5D658], MEMORY[0x277CE10B8]);
          if (v4 <= 0x3F)
          {
            sub_2680064D4();
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_268006408()
{
  if (!qword_280243170)
  {
    sub_267FCAB20(255, &qword_280243178);
    v0 = sub_26804DE1C();
    if (!v1)
    {
      atomic_store(v0, &qword_280243170);
    }
  }
}

void sub_268006470(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2680064D4()
{
  if (!qword_280242BB0)
  {
    v0 = sub_26804DE1C();
    if (!v1)
    {
      atomic_store(v0, &qword_280242BB0);
    }
  }
}

uint64_t sub_26800656C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2680065B4(uint64_t a1)
{
  result = sub_26800656C(&qword_280241F18, type metadata accessor for PhotoAttachmentView);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_268006630(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhotoAttachmentView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_268006694(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhotoAttachmentView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_268006710()
{
  OUTLINED_FUNCTION_17_2();
  type metadata accessor for PhotoAttachmentView();

  return sub_268005530(v0);
}

unint64_t sub_2680067AC()
{
  result = qword_2802431E8;
  if (!qword_2802431E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802431C0);
    sub_268006864();
    sub_267FC126C(&unk_280242C10, &qword_280242BF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802431E8);
  }

  return result;
}

unint64_t sub_268006864()
{
  result = qword_2802431F0;
  if (!qword_2802431F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280243198);
    sub_267FC126C(&qword_2802431F8, &qword_280243190);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802431F0);
  }

  return result;
}

uint64_t sub_26800694C(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2680069D0()
{
  result = qword_280243218;
  if (!qword_280243218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280243218);
  }

  return result;
}

uint64_t sub_268006A24(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802431A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroyTm_10()
{
  v1 = type metadata accessor for PhotoAttachmentView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  sub_26804C59C();
  OUTLINED_FUNCTION_4();
  (*(v6 + 8))(v0 + v3);
  v7 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241F10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_26804D0CC();
    OUTLINED_FUNCTION_4();
    (*(v8 + 8))(v5 + v7);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_268006C78(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for PhotoAttachmentView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_268006CEC(uint64_t a1)
{
  v2 = type metadata accessor for PhotoAttachmentView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_268006D64()
{
  v1 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_267FAFA9C();
    *v0 = v3;
  }
}

void sub_268006DB0(uint64_t a1)
{
  if (a1 + 1 > *(*v1 + 24) >> 1)
  {
    sub_267FAFA9C();
    *v1 = v2;
  }
}

void sub_268006E1C()
{
  OUTLINED_FUNCTION_16_2();
  if (v4)
  {
    OUTLINED_FUNCTION_3_8();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_13_4();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_11();
    }
  }

  OUTLINED_FUNCTION_10_4();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280243240);
    v7 = OUTLINED_FUNCTION_21_2();
    v8 = _swift_stdlib_malloc_size(v7);
    v7[2] = v2;
    v7[3] = 2 * ((v8 - 32) / 32);
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v9 = OUTLINED_FUNCTION_19_2();
  if (v1)
  {
    if (v7 != v0 || &v10[32 * v2] <= v9)
    {
      memmove(v9, v10, 32 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_268006EFC()
{
  OUTLINED_FUNCTION_16_2();
  if (v3)
  {
    OUTLINED_FUNCTION_3_8();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_13_4();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_11();
    }
  }

  else
  {
    v4 = v2;
  }

  v7 = *(v0 + 2);
  if (v4 <= v7)
  {
    v8 = *(v0 + 2);
  }

  else
  {
    v8 = v4;
  }

  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802423C0);
    v9 = OUTLINED_FUNCTION_21_2();
    _swift_stdlib_malloc_size(v9);
    OUTLINED_FUNCTION_9_1();
    *(v9 + 2) = v7;
    *(v9 + 3) = v10;
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v11 = v9 + 32;
  v12 = v0 + 32;
  if (v1)
  {
    if (v9 != v0 || &v12[16 * v7] <= v11)
    {
      memmove(v11, v12, 16 * v7);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    memcpy(v11, v12, 16 * v7);
  }
}

void sub_268006FFC(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t a6, void (*a7)(void), void (*a8)(void))
{
  if (a3)
  {
    OUTLINED_FUNCTION_3_8();
    if (v13 != v14)
    {
      OUTLINED_FUNCTION_13_4();
      if (v13)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_11();
    }
  }

  else
  {
    v12 = a2;
  }

  v15 = *(a4 + 16);
  v16 = sub_268007310(v15, v12, a5, a6, a7);
  a8(0);
  OUTLINED_FUNCTION_11();
  if (a1)
  {
    v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
    sub_268007484(a4 + v18, v15, v16 + v18, a7);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_2680070F4()
{
  OUTLINED_FUNCTION_16_2();
  if (v4)
  {
    OUTLINED_FUNCTION_3_8();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_13_4();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_11();
    }
  }

  OUTLINED_FUNCTION_10_4();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280243250);
    v7 = OUTLINED_FUNCTION_21_2();
    _swift_stdlib_malloc_size(v7);
    OUTLINED_FUNCTION_9_1();
    v7[2] = v2;
    v7[3] = v8;
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v9 = OUTLINED_FUNCTION_19_2();
  if (v1)
  {
    if (v7 != v0 || &v10[16 * v2] <= v9)
    {
      memmove(v9, v10, 16 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_2680071C4()
{
  OUTLINED_FUNCTION_16_2();
  if (v4)
  {
    OUTLINED_FUNCTION_3_8();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_13_4();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_11();
    }
  }

  OUTLINED_FUNCTION_10_4();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280243258);
    v7 = swift_allocObject();
    v8 = _swift_stdlib_malloc_size(v7);
    v7[2] = v2;
    v7[3] = 2 * v8 - 64;
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v9 = OUTLINED_FUNCTION_19_2();
  if (v1)
  {
    if (v7 != v0 || &v10[v2] <= v9)
    {
      memmove(v9, v10, v2);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v9, v10, v2);
  }
}

void *sub_268007294(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802441D0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 16);
  return v4;
}

size_t sub_268007310(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(void))
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

  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
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

char *sub_268007424(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[24 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_8_4(a3, result);
  }

  return result;
}

char *sub_26800744C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_8_4(a3, result);
  }

  return result;
}

void sub_268007484(unint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void))
{
  if (a3 < a1 || (a4(0), OUTLINED_FUNCTION_4(), a1 + *(v8 + 72) * a2 <= a3))
  {
    a4(0);
    v10 = OUTLINED_FUNCTION_18_2();

    MEMORY[0x2821FE828](v10);
  }

  else if (a3 != a1)
  {
    v9 = OUTLINED_FUNCTION_18_2();

    MEMORY[0x2821FE820](v9);
  }
}

unint64_t sub_268007544(uint64_t a1, uint64_t a2)
{
  sub_26804ED7C();
  sub_26804E71C();
  v4 = sub_26804ED9C();

  return sub_268007600(a1, a2, v4);
}

unint64_t sub_2680075BC(uint64_t a1)
{
  v2 = sub_26804EADC();

  return sub_2680076B4(a1, v2);
}

unint64_t sub_268007600(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_26804EC9C() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_2680076B4(uint64_t a1, uint64_t a2)
{
  v4 = ~(-1 << *(v2 + 32));
  for (i = a2 & v4; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v4)
  {
    sub_268007984(*(v2 + 48) + 40 * i, v8);
    v6 = MEMORY[0x26D60D740](v8, a1);
    sub_2680079E0(v8);
    if (v6)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_268007778(uint64_t result, void *a2, unint64_t a3, uint64_t a4)
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

unint64_t sub_2680078DC()
{
  result = qword_280243230;
  if (!qword_280243230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280243230);
  }

  return result;
}

unint64_t sub_268007930()
{
  result = qword_280243238;
  if (!qword_280243238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280243238);
  }

  return result;
}

void sub_268007A68(void *a1)
{
  v5 = [v1 layer];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280243240);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_268050170;
  *(v3 + 56) = sub_268007B10();
  *(v3 + 32) = a1;
  v4 = a1;
  sub_267FD8FA4(v3, v5);
}

unint64_t sub_268007B10()
{
  result = qword_280243260;
  if (!qword_280243260)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280243260);
  }

  return result;
}

uint64_t sub_268007B9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802419D0);
  v5 = OUTLINED_FUNCTION_15(v4);
  MEMORY[0x28223BE20](v5);
  v7 = v27 - v6;
  type metadata accessor for TimerState();
  OUTLINED_FUNCTION_4();
  v9 = MEMORY[0x28223BE20](v8);
  MEMORY[0x28223BE20](v9);
  v11 = v27 - v10;
  v12 = type metadata accessor for ReadingCarPlayButtonView();
  swift_storeEnumTagMultiPayload();
  sub_26800A338();
  sub_26804DDDC();
  sub_267FC12B4(v11);
  v13 = (a2 + v12[8]);
  sub_26804E62C();
  sub_26800A3A0(&qword_2802412E0, MEMORY[0x277D63F60]);
  *v13 = sub_26804D17C();
  v13[1] = v14;
  v15 = sub_26804C8CC();
  v16 = *(v15 - 8);
  (*(v16 + 16))(a2, a1, v15);
  sub_267FC69D8();
  v17 = [objc_opt_self() mainRunLoop];
  v18 = sub_26804EA4C();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v18);
  v19 = sub_26804E9CC();

  sub_267FC16BC(v7, &qword_2802419D0);
  v27[1] = v19;
  sub_26804E9BC();
  sub_26800A3A0(&qword_280241910, MEMORY[0x277CC9DF0]);
  v20 = sub_26804CDAC();

  *(a2 + v12[5]) = v20;
  sub_26804C8AC();
  *(a2 + v12[6]) = v21 > 1.0;
  if (v21 <= 1.0)
  {
    if (qword_280241130 != -1)
    {
      swift_once();
    }

    v22 = sub_26804CD4C();
    __swift_project_value_buffer(v22, qword_2802487E0);
    v23 = sub_26804CD3C();
    v24 = sub_26804E88C();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_267FA7000, v23, v24, "#ReadingCarPlayButtonView short speech duration, not animating progress bar", v25, 2u);
      MEMORY[0x26D60E1E0](v25, -1, -1);
    }
  }

  return (*(v16 + 8))(a1, v15);
}

uint64_t sub_268007F84@<X0>(uint64_t a1@<X8>)
{
  v36 = a1;
  sub_26804E48C();
  OUTLINED_FUNCTION_1();
  v33 = v2;
  v34 = v3;
  MEMORY[0x28223BE20](v2);
  v29 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ReadingCarPlayButtonView();
  v6 = *(v5 - 8);
  v35 = v5 - 8;
  MEMORY[0x28223BE20](v5 - 8);
  v27 = v7;
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280243280);
  OUTLINED_FUNCTION_1();
  v30 = v9;
  v31 = v10;
  MEMORY[0x28223BE20](v9);
  v12 = &v25 - v11;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280243288);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v13);
  v15 = &v25 - v14;
  v28 = type metadata accessor for ReadingCarPlayButtonView;
  v26 = v1;
  sub_26800A338();
  v16 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v17 = swift_allocObject();
  sub_268009EBC(v8, v17 + v16);
  v38 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280243290);
  sub_267FC126C(&qword_280243298, &qword_280243290);
  sub_26804DE2C();
  v18 = v29;
  sub_26804CECC();
  sub_267FC126C(&qword_2802432A0, &qword_280243280);
  sub_26800A3A0(&qword_2802432A8, MEMORY[0x277D63E50]);
  v19 = v30;
  v20 = v33;
  sub_26804DACC();
  (*(v34 + 8))(v18, v20);
  (*(v31 + 8))(v12, v19);
  v21 = v26;
  sub_26800A338();
  v22 = swift_allocObject();
  sub_268009EBC(v8, v22 + v16);
  v23 = &v15[*(v32 + 36)];
  *v23 = 0;
  *(v23 + 1) = 0;
  *(v23 + 2) = sub_268009F80;
  *(v23 + 3) = v22;
  v37 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802432B0);
  sub_268009FE4();
  OUTLINED_FUNCTION_1_2(&qword_2802432C0);
  sub_26804DA2C();
  return sub_267FB6858(v15);
}

void sub_26800841C()
{
  v1 = v0;
  v2 = type metadata accessor for TimerState();
  v3 = MEMORY[0x28223BE20](v2);
  v4 = MEMORY[0x28223BE20](v3);
  v6 = (&v24 - v5);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - v7;
  v9 = type metadata accessor for ReadingCarPlayButtonView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802418F0);
  sub_26804DDEC();
  if (!swift_getEnumCaseMultiPayload())
  {
    v17 = sub_26804BDFC();
    (*(*(v17 - 8) + 8))(v8, v17);
    if (qword_280241130 != -1)
    {
      swift_once();
    }

    v18 = sub_26804CD4C();
    __swift_project_value_buffer(v18, qword_2802487E0);
    v19 = sub_26804CD3C();
    v20 = sub_26804E88C();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_267FA7000, v19, v20, "#ReadingCarPlayButtonView tapped while reading, cancelling speech", v21, 2u);
      MEMORY[0x26D60E1E0](v21, -1, -1);
    }

    v22 = *(v1 + *(v9 + 32));
    if (v22)
    {
      v23 = v22;
      sub_26804E58C();

      *v6 = 0x3FF0000000000000;
      goto LABEL_15;
    }

LABEL_17:
    sub_26804E62C();
    sub_26800A3A0(&qword_2802412E0, MEMORY[0x277D63F60]);
    sub_26804D15C();
    __break(1u);
    return;
  }

  sub_267FC12B4(v8);
  if (qword_280241130 != -1)
  {
    swift_once();
  }

  v10 = sub_26804CD4C();
  __swift_project_value_buffer(v10, qword_2802487E0);
  v11 = sub_26804CD3C();
  v12 = sub_26804E88C();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_267FA7000, v11, v12, "#ReadingCarPlayButtonView tapped after reading, restarting speech", v13, 2u);
    MEMORY[0x26D60E1E0](v13, -1, -1);
  }

  v14 = *(v1 + *(v9 + 32));
  if (!v14)
  {
    goto LABEL_17;
  }

  v15 = v14;
  sub_26804E59C();

  if ((*(v1 + *(v9 + 24)) & 1) == 0)
  {
    return;
  }

  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241400) + 48);
  sub_26804BDDC();
  *(v6 + v16) = 0;
LABEL_15:
  swift_storeEnumTagMultiPayload();
  sub_26800A338();
  sub_26804DDFC();
  sub_267FC12B4(v6);
}

uint64_t sub_2680087FC()
{
  sub_26804E35C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802432D0);
  sub_26800A3A0(&qword_2802419A8, MEMORY[0x277D63CB0]);
  sub_26800A3E8();
  return sub_26804DD6C();
}

uint64_t sub_2680088DC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802419B8);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v13 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802419C0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v13 - v4;
  v6 = sub_26804BF4C();
  MEMORY[0x28223BE20](v6 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802419C8);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_268050170;
  sub_26804C8BC();
  v8 = sub_26804BE9C();
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v8);
  v9 = sub_26804BFDC();
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v9);
  v10 = sub_26804BEAC();
  v15 = 0u;
  v16 = 0u;
  v17 = 0;
  v11 = MEMORY[0x277D62918];
  *(v7 + 56) = v10;
  *(v7 + 64) = v11;
  __swift_allocate_boxed_opaque_existential_1((v7 + 32));
  sub_26804BEBC();
  v17 = 0;
  v15 = 0u;
  v16 = 0u;
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  sub_26804BF6C();
  return sub_26804E36C();
}

uint64_t sub_268008B14(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802432F0);
  MEMORY[0x28223BE20](v2);
  v4 = (&v17 - v3);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802432E8);
  MEMORY[0x28223BE20](v5);
  v7 = (&v17 - v6);
  v8 = type metadata accessor for TimerState();
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ReadingCarPlayButtonView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802418F0);
  sub_26804DDEC();
  v12 = sub_26800DA5C();
  sub_267FC12B4(v10);
  if (*(a1 + *(v11 + 24)) == 1 && v12 < 1.0)
  {
    *v7 = sub_26804DFAC();
    v7[1] = v15;
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802432F8);
    sub_268008DF0(v7 + *(v16 + 44), v12);
    sub_267FCC068();
    swift_storeEnumTagMultiPayload();
    sub_267FC126C(&qword_2802432E0, &qword_2802432E8);
    sub_26804D5AC();
    return sub_267FC16BC(v7, &qword_2802432E8);
  }

  else
  {
    *v4 = sub_26804DD1C();
    swift_storeEnumTagMultiPayload();
    sub_267FC126C(&qword_2802432E0, &qword_2802432E8);
    return sub_26804D5AC();
  }
}

uint64_t sub_268008DF0@<X0>(void *a1@<X8>, double a2@<D0>)
{
  v42 = a1;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280243300) - 8;
  v3 = MEMORY[0x28223BE20](v40);
  v41 = &v37[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v3);
  v6 = &v37[-v5];
  v7 = sub_26804DD2C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v37[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_26804DD1C();
  (*(v8 + 104))(v10, *MEMORY[0x277CE0FE0], v7);
  v39 = sub_26804DD5C();

  (*(v8 + 8))(v10, v7);
  sub_26804DFAC();
  sub_26804CFBC();
  LOBYTE(v46[0]) = 1;
  *&v43[3] = *&v43[27];
  *&v43[11] = *&v43[35];
  *&v43[19] = *&v43[43];
  sub_26804CF6C();
  v38 = sub_26804D7AC();
  sub_26804CE1C();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  LOBYTE(v46[0]) = 0;
  v19 = sub_26804DCBC();
  KeyPath = swift_getKeyPath();
  sub_26804E03C();
  v22 = v21;
  v24 = v23;
  v25 = sub_26804DFEC();
  v26 = swift_getKeyPath();
  v27 = (v6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280243308) + 36));
  v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242BF0) + 28);
  v29 = *MEMORY[0x277CDFA88];
  v30 = sub_26804D0CC();
  (*(*(v30 - 8) + 104))(v27 + v28, v29, v30);
  *v27 = v26;
  *v6 = 0.0;
  v6[1] = a2;
  v31 = *&v43[83];
  *(v6 + 1) = *&v43[75];
  *(v6 + 2) = v31;
  *(v6 + 6) = v44;
  *(v6 + 56) = v38;
  *(v6 + 8) = v12;
  *(v6 + 9) = v14;
  *(v6 + 10) = v16;
  *(v6 + 11) = v18;
  *(v6 + 96) = 0;
  *(v6 + 13) = KeyPath;
  *(v6 + 14) = v19;
  v6[15] = 4.71238898;
  *(v6 + 16) = v22;
  *(v6 + 17) = v24;
  *(v6 + 18) = v25;
  v6[19] = a2;
  sub_26804DFAC();
  sub_26804CFBC();
  v32 = v41;
  v33 = (v6 + *(v40 + 44));
  v34 = *&v43[59];
  *v33 = *&v43[51];
  v33[1] = v34;
  v33[2] = *&v43[67];
  sub_267FCC068();
  v35 = v39;
  v45[0] = v39;
  v45[1] = 0;
  LOWORD(v45[2]) = 257;
  *(&v45[2] + 2) = *v43;
  *(&v45[4] + 2) = *&v43[8];
  *(&v45[6] + 2) = *&v43[16];
  v45[8] = *&v43[23];
  memcpy(v42, v45, 0x48uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280243310);
  sub_267FCC068();
  sub_267FCC068();
  sub_267FC16BC(v6, &qword_280243300);
  sub_267FC16BC(v32, &qword_280243300);
  v46[0] = v35;
  v46[1] = 0;
  v47 = 257;
  v48 = *v43;
  v49 = *&v43[8];
  *v50 = *&v43[16];
  *&v50[14] = *&v43[23];
  return sub_267FC16BC(v46, &qword_280243318);
}

uint64_t sub_2680092BC()
{
  type metadata accessor for ReadingCarPlayButtonView();
  sub_26804CD6C();
  sub_26804E9AC();

  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  sub_26804CD8C();
  return __swift_destroy_boxed_opaque_existential_1Tm(v1);
}

uint64_t sub_268009340@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v23 = a1;
  v24 = a3;
  v4 = type metadata accessor for ReadingCarPlayButtonView();
  v5 = v4 - 8;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802432C8);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  v11 = &v23 - v10;
  v12 = *(a2 + *(v5 + 28));
  sub_26800A338();
  v13 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v14 = swift_allocObject();
  sub_268009EBC(&v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13);
  sub_267FB68B8();
  *&v11[*(v9 + 60)] = v12;
  v15 = &v11[*(v9 + 64)];
  *v15 = sub_26800A130;
  v15[1] = v14;
  v16 = *(a2 + *(v5 + 40));
  if (v16)
  {

    v17 = v16;
    v18 = sub_26804E5AC();

    sub_26800A338();
    v19 = swift_allocObject();
    sub_268009EBC(&v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v13);
    v20 = v24;
    sub_267FB6918();
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802432B0);
    *(v20 + *(result + 52)) = v18;
    v22 = (v20 + *(result + 56));
    *v22 = sub_26800A2B0;
    v22[1] = v19;
  }

  else
  {
    sub_26804E62C();
    sub_26800A3A0(&qword_2802412E0, MEMORY[0x277D63F60]);

    result = sub_26804D15C();
    __break(1u);
  }

  return result;
}

uint64_t sub_2680095F8(uint64_t a1)
{
  v31 = a1;
  v1 = type metadata accessor for TimerState();
  v2 = MEMORY[0x28223BE20](v1);
  v4 = v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = (v29 - v6);
  MEMORY[0x28223BE20](v5);
  v9 = v29 - v8;
  v10 = sub_26804BDFC();
  v30 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(type metadata accessor for ReadingCarPlayButtonView() + 28);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802418F0);
  sub_26804DDEC();
  if (swift_getEnumCaseMultiPayload())
  {
    return sub_267FC12B4(v9);
  }

  v29[0] = v1;
  v29[1] = v14;
  v29[2] = v13;
  v29[3] = v4;
  v16 = v30;
  (*(v30 + 32))(v12, v9, v10);
  sub_26804BDBC();
  v18 = v17;
  sub_26804C8AC();
  v20 = v18 / v19;
  if (v20 <= 1.0)
  {
    v21 = v20;
  }

  else
  {
    v21 = 1.0;
  }

  v22 = v12;
  if (v21 >= 1.0)
  {
    v24 = v7;
    if (qword_280241130 != -1)
    {
      swift_once();
    }

    v25 = sub_26804CD4C();
    __swift_project_value_buffer(v25, qword_2802487E0);
    v26 = sub_26804CD3C();
    v27 = sub_26804E88C();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_267FA7000, v26, v27, "#ReadingCarPlayButtonView timer expired", v28, 2u);
      MEMORY[0x26D60E1E0](v28, -1, -1);
    }

    *v7 = 0x3FF0000000000000;
    swift_storeEnumTagMultiPayload();
    sub_26800A338();
  }

  else
  {
    v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241400) + 48);
    v24 = v7;
    (*(v16 + 16))(v7, v22, v10);
    *(v7 + v23) = v21;
    swift_storeEnumTagMultiPayload();
    sub_26800A338();
  }

  sub_26804DDFC();
  sub_267FC12B4(v24);
  return (*(v16 + 8))(v22, v10);
}

uint64_t sub_2680099B8(uint64_t a1)
{
  v2 = type metadata accessor for TimerState();
  v3 = MEMORY[0x28223BE20](v2);
  MEMORY[0x28223BE20](v3);
  v5 = &v21 - v4;
  v6 = sub_26804E5CC();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v21 - v11;
  v13 = *(v7 + 16);
  v13(&v21 - v11, a1, v6);
  if ((*(v7 + 88))(v12, v6) == *MEMORY[0x277D63F48])
  {
    v13(v10, v12, v6);
    (*(v7 + 96))(v10, v6);
    v14 = *v10;

    if (!v14)
    {
      if (qword_280241130 != -1)
      {
        swift_once();
      }

      v15 = sub_26804CD4C();
      __swift_project_value_buffer(v15, qword_2802487E0);
      v16 = sub_26804CD3C();
      v17 = sub_26804E88C();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&dword_267FA7000, v16, v17, "#ReadingCarPlayButtonView speech started. Starting reading animation", v18, 2u);
        MEMORY[0x26D60E1E0](v18, -1, -1);
      }

      v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241400) + 48);
      sub_26804BDDC();
      *&v5[v19] = 0;
      swift_storeEnumTagMultiPayload();
      type metadata accessor for ReadingCarPlayButtonView();
      sub_26800A338();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802418F0);
      sub_26804DDFC();
      sub_267FC12B4(v5);
    }
  }

  return (*(v7 + 8))(v12, v6);
}

uint64_t sub_268009CFC@<X0>(uint64_t a1@<X8>)
{
  sub_26804C8CC();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v3);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, v1);
  return sub_268007B9C(v5, a1);
}

void sub_268009DE4()
{
  sub_26804C8CC();
  if (v0 <= 0x3F)
  {
    sub_267FC63B0();
    if (v1 <= 0x3F)
    {
      sub_267FC6444();
      if (v2 <= 0x3F)
      {
        sub_267FC1004();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_268009EBC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReadingCarPlayButtonView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_268009F20()
{
  v0 = type metadata accessor for ReadingCarPlayButtonView();
  OUTLINED_FUNCTION_15(v0);
  sub_26800841C();
}

uint64_t sub_268009F80()
{
  v0 = type metadata accessor for ReadingCarPlayButtonView();
  OUTLINED_FUNCTION_15(v0);

  return sub_2680092BC();
}

unint64_t sub_268009FE4()
{
  result = qword_2802432B8;
  if (!qword_2802432B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280243288);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280243280);
    sub_26804E48C();
    sub_267FC126C(&qword_2802432A0, &qword_280243280);
    sub_26800A3A0(&qword_2802432A8, MEMORY[0x277D63E50]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802432B8);
  }

  return result;
}

uint64_t objectdestroyTm_11()
{
  v1 = type metadata accessor for ReadingCarPlayButtonView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  sub_26804C8CC();
  OUTLINED_FUNCTION_4();
  (*(v5 + 8))(v0 + v3);

  v6 = v0 + v3 + *(v1 + 28);
  type metadata accessor for TimerState();
  if (!swift_getEnumCaseMultiPayload())
  {
    sub_26804BDFC();
    OUTLINED_FUNCTION_4();
    (*(v7 + 8))(v6);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802418F0);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_26800A2C8(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4 = type metadata accessor for ReadingCarPlayButtonView();
  OUTLINED_FUNCTION_15(v4);
  return a2(a1);
}

uint64_t sub_26800A338()
{
  OUTLINED_FUNCTION_9();
  v1(0);
  OUTLINED_FUNCTION_4();
  v2 = OUTLINED_FUNCTION_12_0();
  v3(v2);
  return v0;
}

uint64_t sub_26800A3A0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_26800A3E8()
{
  result = qword_2802432D8;
  if (!qword_2802432D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802432D0);
    sub_267FC126C(&qword_2802432E0, &qword_2802432E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802432D8);
  }

  return result;
}

uint64_t sub_26800A4A0()
{
  type metadata accessor for MessagePhotoPicker.Coordinator();
  v1 = swift_allocObject();
  v2 = *(v0 + 16);
  *(v1 + 16) = *v0;
  *(v1 + 32) = v2;
  *(v1 + 48) = *(v0 + 32);
  *(v1 + 64) = *(v0 + 48);
  sub_26800B870(v0, v4);
  return v1;
}

void sub_26800A500(uint64_t a1, char *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242C60);
  MEMORY[0x28223BE20](v4 - 8);
  v131 = v121 - v5;
  v132 = sub_26804BD7C();
  OUTLINED_FUNCTION_1();
  v128 = v6;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_0_3();
  v124 = v8;
  MEMORY[0x28223BE20](v9);
  v130 = v121 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280243320);
  MEMORY[0x28223BE20](v11 - 8);
  v137 = v121 - v12;
  v125 = sub_26804CD0C();
  v129 = *(v125 - 8);
  MEMORY[0x28223BE20](v125 - 8);
  OUTLINED_FUNCTION_0_3();
  v136 = v13;
  MEMORY[0x28223BE20](v14);
  v133 = v121 - v15;
  v16 = sub_26804E0BC();
  OUTLINED_FUNCTION_1();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_0_3();
  v145 = v20;
  MEMORY[0x28223BE20](v21);
  v23 = v121 - v22;
  v24 = sub_26804C1EC();
  v25 = MEMORY[0x277D84F90];
  v123 = v24;
  v26 = sub_26804E65C();
  v140 = a2;
  v141 = v26;
  v150 = v26;
  v27 = *(a2 + 2);
  v144 = v16;
  v138 = v18;
  v146 = v27;
  if (v27)
  {
    v29 = *(v18 + 16);
    v28 = v18 + 16;
    v143 = v29;
    v30 = &a2[(*(v28 + 64) + 32) & ~*(v28 + 64)];
    v31 = *(v28 + 56);
    v2 = (v28 - 8);
    do
    {
      (v143)(v23, v30, v16);
      v32 = sub_26804E0AC();
      v34 = v33;
      (*v2)(v23, v16);
      if (v34)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_267FAFA9C();
          v25 = v38;
        }

        v35 = *(v25 + 16);
        v36 = v25;
        if (v35 >= *(v25 + 24) >> 1)
        {
          sub_267FAFA9C();
          v36 = v39;
        }

        *(v36 + 16) = v35 + 1;
        v25 = v36;
        v37 = v36 + 16 * v35;
        *(v37 + 32) = v32;
        *(v37 + 40) = v34;
        v16 = v144;
      }

      v30 += v31;
      --v27;
    }

    while (v27);
  }

  v40 = *(v25 + 16);
  v143 = v25;
  if (v40)
  {
    v41 = 0;
    v42 = v150;
    v43 = (v25 + 40);
    v44 = v139;
    v45 = v141;
    v142 = v40;
    while (v41 < *(v143 + 16))
    {
      v46 = *(v43 - 1);
      v2 = *v43;
      OUTLINED_FUNCTION_6_7();

      v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242438);
      MEMORY[0x26D60CAE0](&v149, v47);
      v48 = sub_26804C5EC();

      if (*(v48 + 16) && (v49 = sub_268007544(v46, v2), (v50 & 1) != 0))
      {
        v51 = *(*(v48 + 56) + 8 * v49);
        swift_retain_n();

        swift_isUniquelyReferenced_nonNull_native();
        v147 = v42;
        v52 = sub_268007544(v46, v2);
        if (__OFADD__(v42[2], (v53 & 1) == 0))
        {
          goto LABEL_61;
        }

        v54 = v52;
        v45 = v53;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242630);
        if (sub_26804EBDC())
        {
          v55 = sub_268007544(v46, v2);
          if ((v45 & 1) != (v56 & 1))
          {
LABEL_66:
            sub_26804ECEC();
            __break(1u);
            return;
          }

          v54 = v55;
        }

        if (v45)
        {

          v42 = v147;
          *(v147[7] + 8 * v54) = v51;
        }

        else
        {
          v42 = v147;
          v147[(v54 >> 6) + 8] |= 1 << v54;
          v57 = (v42[6] + 16 * v54);
          *v57 = v46;
          v57[1] = v2;
          *(v42[7] + 8 * v54) = v51;

          v58 = v42[2];
          v59 = __OFADD__(v58, 1);
          v60 = v58 + 1;
          if (v59)
          {
            goto LABEL_62;
          }

          v42[2] = v60;
        }

        v150 = v42;
        v45 = v42;
        v44 = v139;
        v2 = v145;
        v40 = v142;
      }

      else
      {

        v2 = v145;
      }

      ++v41;
      v43 += 2;
      if (v40 == v41)
      {
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  v44 = v139;
  v2 = v145;
  v45 = v141;
LABEL_28:

  v61 = *(v44 + 48);
  v62 = *(v44 + 56);
  v147 = *(v44 + 40);
  *&v148 = v61;
  BYTE8(v148) = v62;
  LOBYTE(v149) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242430);
  sub_26804DE9C();
  OUTLINED_FUNCTION_6_7();
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242438);
  MEMORY[0x26D60CAE0](&v149);
  v63 = sub_26804C5DC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280243328);
  sub_26804E67C();
  v63(&v147, 0);

  if (qword_280241130 != -1)
  {
LABEL_65:
    swift_once();
  }

  v141 = v45;
  v64 = sub_26804CD4C();
  v135 = __swift_project_value_buffer(v64, qword_2802487E0);
  v65 = sub_26804CD3C();
  v66 = sub_26804E88C();
  v67 = OUTLINED_FUNCTION_2_12(v66);
  v68 = v132;
  v69 = v125;
  v70 = v144;
  if (v67)
  {
    *OUTLINED_FUNCTION_7_5() = 0;
    OUTLINED_FUNCTION_29(&dword_267FA7000, v71, v72, "#MessagePhotoPicker removed all selection");
    OUTLINED_FUNCTION_3_9();
  }

  if (v146)
  {
    v73 = *(v138 + 16);
    v74 = &v140[(*(v138 + 80) + 32) & ~*(v138 + 80)];
    v143 = v138 + 8;
    v140 = (v129 + 8);
    v129 += 32;
    v121[2] = v128 + 32;
    v121[1] = v128 + 16;
    v121[0] = v128 + 8;
    v142 = *(v138 + 72);
    v138 += 16;
    v134 = v73;
    do
    {
      v73(v2, v74, v70);
      v75 = sub_26804E0AC();
      if (v76)
      {
        v77 = v75;
        v45 = v76;
        if (*(v141 + 16) && (sub_268007544(v75, v76), (v78 & 1) != 0))
        {
        }

        else
        {
          v79 = v136;
          sub_26804CCFC();
          sub_26804CCEC();
          v80 = *v140;
          (*v140)(v79, v69);
          v81 = v137;
          sub_26804CD1C();
          if (__swift_getEnumTagSinglePayload(v81, 1, v69) == 1)
          {

            v82 = v81;
            v83 = &qword_280243320;
          }

          else
          {
            OUTLINED_FUNCTION_5_8();
            v84 = v133;
            v85(v133, v81, v69);
            v86 = v131;
            sub_26804E09C();
            if (__swift_getEnumTagSinglePayload(v86, 1, v68) != 1)
            {
              v126 = v80;
              OUTLINED_FUNCTION_5_8();
              v93 = v130;
              v94(v130, v86, v68);
              v147 = *(v139 + 16);
              v148 = *(v139 + 24);
              MEMORY[0x26D60CAE0](&v149, v122);
              v95 = v149;
              OUTLINED_FUNCTION_5_8();
              v96(v124, v93, v68);
              swift_allocObject();
              v97 = sub_26804C19C();
              v128 = v95;
              v127 = sub_26804C5DC();
              v2 = v98;
              swift_isUniquelyReferenced_nonNull_native();
              v149 = *v2;
              v99 = v149;
              *v2 = 0x8000000000000000;
              v100 = sub_268007544(v77, v45);
              if (__OFADD__(*(v99 + 2), (v101 & 1) == 0))
              {
                goto LABEL_63;
              }

              v102 = v100;
              v103 = v101;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242630);
              if (sub_26804EBDC())
              {
                v104 = sub_268007544(v77, v45);
                v69 = v125;
                if ((v103 & 1) != (v105 & 1))
                {
                  goto LABEL_66;
                }

                v102 = v104;
              }

              else
              {
                v69 = v125;
              }

              v106 = v149;
              if (v103)
              {
                *(*(v149 + 7) + 8 * v102) = v97;
              }

              else
              {
                *(v149 + (v102 >> 6) + 8) |= 1 << v102;
                v107 = (*(v106 + 6) + 16 * v102);
                *v107 = v77;
                v107[1] = v45;
                *(*(v106 + 7) + 8 * v102) = v97;
                v108 = *(v106 + 2);
                v59 = __OFADD__(v108, 1);
                v109 = v108 + 1;
                if (v59)
                {
                  goto LABEL_64;
                }

                *(v106 + 2) = v109;
              }

              *v2 = v106;

              v127(&v147, 0);

              OUTLINED_FUNCTION_5_8();
              v68 = v132;
              v110(v130, v132);
              v126(v133, v69);
              v70 = v144;
              v2 = v145;
              v73 = v134;
              goto LABEL_54;
            }

            v80(v84, v69);

            v82 = v86;
            v83 = &qword_280242C60;
          }

          sub_267FDE548(v82, v83);
          v87 = v135;
          v88 = sub_26804CD3C();
          v89 = sub_26804E89C();
          v90 = OUTLINED_FUNCTION_2_12(v89);
          v70 = v144;
          v73 = v134;
          if (v90)
          {
            v91 = OUTLINED_FUNCTION_7_5();
            *v91 = 0;
            _os_log_impl(&dword_267FA7000, v88, v87, "#MessagePhotoPicker.Coordinator could not get fullFileUrl for asset", v91, 2u);
            v92 = v91;
            v68 = v132;
            MEMORY[0x26D60E1E0](v92, -1, -1);
          }
        }
      }

LABEL_54:
      (*v143)(v2, v70);
      v74 += v142;
      --v146;
    }

    while (v146);
  }

  v111 = sub_26804CD3C();
  v112 = sub_26804E88C();
  if (OUTLINED_FUNCTION_2_12(v112))
  {
    *OUTLINED_FUNCTION_7_5() = 0;
    OUTLINED_FUNCTION_29(&dword_267FA7000, v113, v114, "#MessagePhotoPicker waiting for picker results to be processed");
    OUTLINED_FUNCTION_3_9();
  }

  v115 = v139;

  sub_26800B214(v116, &v150, v115);

  v117 = sub_26804CD3C();
  v118 = sub_26804E88C();
  if (OUTLINED_FUNCTION_2_12(v118))
  {
    *OUTLINED_FUNCTION_7_5() = 0;
    OUTLINED_FUNCTION_29(&dword_267FA7000, v119, v120, "#MessagePhotoPicker returning");
    OUTLINED_FUNCTION_3_9();
  }
}

uint64_t sub_26800B214(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a2;
  v4 = a1;
  v5 = a1 + 64;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  v9 = (v6 + 63) >> 6;
  v10 = 0;

  while (v8)
  {
    v11 = v8;
LABEL_10:
    v8 = (v11 - 1) & v11;
    v13 = *v3;
    if (*(*v3 + 16))
    {
      v14 = (*(v4 + 48) + ((v10 << 10) | (16 * __clz(__rbit64(v11)))));
      v15 = *v14;
      v16 = v14[1];

      v17 = sub_268007544(v15, v16);
      if (v18)
      {
        v19 = *(*(v13 + 56) + 8 * v17);
        v43 = *(a3 + 16);
        v44 = *(a3 + 24);

        v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242438);
        MEMORY[0x26D60CAE0](&v45, v20);
        v40 = v19;

        v39 = sub_26804C5DC();
        v22 = v21;
        swift_isUniquelyReferenced_nonNull_native();
        v38 = v22;
        v23 = *v22;
        v45 = v23;
        v41 = v15;
        v24 = sub_268007544(v15, v16);
        if (__OFADD__(v23[2], (v25 & 1) == 0))
        {
          goto LABEL_24;
        }

        v26 = v24;
        v27 = v25;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242630);
        if (sub_26804EBDC())
        {
          v28 = sub_268007544(v41, v16);
          if ((v27 & 1) != (v29 & 1))
          {
            goto LABEL_26;
          }

          v26 = v28;
        }

        v30 = v45;
        if (v27)
        {
          *(v45[7] + 8 * v26) = v40;
        }

        else
        {
          v45[(v26 >> 6) + 8] |= 1 << v26;
          v31 = (v30[6] + 16 * v26);
          *v31 = v41;
          v31[1] = v16;
          *(v30[7] + 8 * v26) = v40;
          v32 = v30[2];
          v33 = __OFADD__(v32, 1);
          v34 = v32 + 1;
          if (v33)
          {
            goto LABEL_25;
          }

          v30[2] = v34;
        }

        *v38 = v30;
        v39(&v43, 0);

        v3 = a2;
        v4 = v37;
      }

      else
      {
      }
    }
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= v9)
    {
    }

    v11 = *(v5 + 8 * v12);
    ++v10;
    if (v11)
    {
      v10 = v12;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  result = sub_26804ECEC();
  __break(1u);
  return result;
}

uint64_t sub_26800B50C()
{

  return MEMORY[0x2821FE8D8](v0, 72, 7);
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_26800B5D0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_26800B610(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_26800B670()
{
  v1 = *(v0 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280243330);
  sub_26804D76C();
  sub_26800B8A8();
  sub_26804E93C();
  return v1;
}

uint64_t sub_26800B6F4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26800A4A0();
  *a1 = result;
  return result;
}

uint64_t sub_26800B77C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26800B8FC();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_26800B7E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26800B8FC();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_26800B844()
{
  sub_26800B8FC();
  sub_26804D74C();
  __break(1u);
}

unint64_t sub_26800B8A8()
{
  result = qword_280243338;
  if (!qword_280243338)
  {
    type metadata accessor for MessagePhotoPicker.Coordinator();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280243338);
  }

  return result;
}

unint64_t sub_26800B8FC()
{
  result = qword_280243340;
  if (!qword_280243340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280243340);
  }

  return result;
}

uint64_t sub_26800B95C(uint64_t a1)
{
  v2 = sub_26804C24C();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v23 - v9;
  (*(v4 + 16))(&v23 - v9, a1, v2);
  v11 = (*(v4 + 88))(v10, v2);
  v12 = *MEMORY[0x277D5D3C8];
  if (v11 == v12)
  {
    type metadata accessor for TapbackHeartAsset(0);
    v13 = MEMORY[0x277D5D3C8];
    v14 = &unk_2878E9F00;
    v15 = &unk_2878E9F40;
    return sub_26800CB08(v13, v14, v15, sub_26800D944);
  }

  if (v11 == *MEMORY[0x277D5D3D0])
  {
    type metadata accessor for TapbackThumbsUpAsset(0);
    v13 = MEMORY[0x277D5D3D0];
    v14 = &unk_2878EA140;
    v15 = &unk_2878EA180;
    return sub_26800CB08(v13, v14, v15, sub_26800D944);
  }

  if (v11 == *MEMORY[0x277D5D3A8])
  {
    type metadata accessor for TapbackThumbsDownAsset(0);
    v13 = MEMORY[0x277D5D3A8];
    v14 = &unk_2878EA380;
    v15 = &unk_2878EA3C0;
    return sub_26800CB08(v13, v14, v15, sub_26800D944);
  }

  if (v11 == *MEMORY[0x277D5D3C0])
  {
    type metadata accessor for TapbackHaAsset(0);
    return sub_26800CC4C();
  }

  if (v11 == *MEMORY[0x277D5D3B0])
  {
    type metadata accessor for TapbackExclamationAsset(0);
    v13 = MEMORY[0x277D5D3B0];
    v14 = &unk_2878EA800;
    v15 = &unk_2878EA840;
    return sub_26800CB08(v13, v14, v15, sub_26800D944);
  }

  if (v11 == *MEMORY[0x277D5D3B8])
  {
    type metadata accessor for TapbackQuestionMarkAsset(0);
    v13 = MEMORY[0x277D5D3B8];
    v14 = &unk_2878EAA40;
    v15 = &unk_2878EAA80;
    return sub_26800CB08(v13, v14, v15, sub_26800D944);
  }

  if (qword_280241130 != -1)
  {
    OUTLINED_FUNCTION_10_0();
  }

  v19 = sub_26804CD4C();
  __swift_project_value_buffer(v19, qword_2802487E0);
  v20 = sub_26804CD3C();
  v21 = sub_26804E89C();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_267FA7000, v20, v21, "#TapbackAssetProvider Unhandled TapbackType, returning dummy asset", v22, 2u);
    OUTLINED_FUNCTION_3_10();
  }

  (*(v4 + 104))(v8, v12, v2);
  type metadata accessor for TapbackAsset(0);
  v17 = swift_allocObject();
  sub_26800BD18(v8, 0xD000000000000012, 0x80000002680569F0, 0, 0);
  (*(v4 + 8))(v10, v2);
  return v17;
}

uint64_t sub_26800BD18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  *(v6 + OBJC_IVAR____TtC14SiriMessagesUI12TapbackAsset_primarySelectionColorFilterValueMatrix) = 0;
  *(v6 + OBJC_IVAR____TtC14SiriMessagesUI12TapbackAsset_secondarySelectionColorFilterValueMatrix) = 0;
  *(v6 + OBJC_IVAR____TtC14SiriMessagesUI12TapbackAsset_primarySelectionColorFilter) = 0;
  *(v6 + OBJC_IVAR____TtC14SiriMessagesUI12TapbackAsset_secondarySelectionColorFilter) = 0;
  *(v6 + OBJC_IVAR____TtC14SiriMessagesUI12TapbackAsset_cachedKeyframes) = 0;
  v12 = OBJC_IVAR____TtC14SiriMessagesUI12TapbackAsset_tapbackType;
  v13 = sub_26804C24C();
  v14 = *(v13 - 8);
  (*(v14 + 16))(v6 + v12, a1, v13);
  if (!a3)
  {
    v22 = sub_26804C23C();
    v23 = v15;
    MEMORY[0x26D60D390](0x643330255FLL, 0xE500000000000000);
    a2 = v22;
    a3 = v23;
  }

  v16 = (v6 + OBJC_IVAR____TtC14SiriMessagesUI12TapbackAsset_nameFormat);
  *v16 = a2;
  v16[1] = a3;
  result = sub_26804C21C();
  if (result + 0x4000000000000000 < 0)
  {
    __break(1u);
  }

  else
  {
    *(v6 + OBJC_IVAR____TtC14SiriMessagesUI12TapbackAsset_blankFrameCount) = 2 * result;
    *(v6 + OBJC_IVAR____TtC14SiriMessagesUI12TapbackAsset_primarySelectionColorFilterValueMatrix) = a4;

    *(v6 + OBJC_IVAR____TtC14SiriMessagesUI12TapbackAsset_secondarySelectionColorFilterValueMatrix) = a5;

    if (a4)
    {
      sub_267FCAB20(0, &qword_280243260);
      v18 = sub_26800BF6C();

      v19 = *(v6 + OBJC_IVAR____TtC14SiriMessagesUI12TapbackAsset_primarySelectionColorFilter);
      *(v6 + OBJC_IVAR____TtC14SiriMessagesUI12TapbackAsset_primarySelectionColorFilter) = v18;
    }

    if (a5)
    {
      sub_267FCAB20(0, &qword_280243260);
      v20 = sub_26800BF6C();

      (*(v14 + 8))(a1, v13);
      v21 = *(v6 + OBJC_IVAR____TtC14SiriMessagesUI12TapbackAsset_secondarySelectionColorFilter);
      *(v6 + OBJC_IVAR____TtC14SiriMessagesUI12TapbackAsset_secondarySelectionColorFilter) = v20;
    }

    else
    {
      (*(v14 + 8))(a1, v13);
    }

    return v6;
  }

  return result;
}

id sub_26800BF6C()
{

  sub_26800D2FC(v0, v4);
  sub_267FCAB20(0, &qword_280243260);
  sub_26804E6CC();
  v1 = sub_26800D518();
  v2 = [objc_opt_self() valueWithCAColorMatrix_];
  [v1 setValue:v2 forKey:*MEMORY[0x277CDA440]];

  return v1;
}

uint64_t sub_26800C01C()
{
  v1 = *(v0 + OBJC_IVAR____TtC14SiriMessagesUI12TapbackAsset_cachedKeyframes);
  if (v1)
  {
  }

  else
  {
    v22 = OBJC_IVAR____TtC14SiriMessagesUI12TapbackAsset_cachedKeyframes;
    v1 = MEMORY[0x277D84F90];
    v25 = MEMORY[0x277D84F90];
    sub_267FCAB20(0, &qword_280242528);
    type metadata accessor for MessagesUIPluginBase();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v3 = objc_opt_self();
    v4 = 0;
    v23 = v0;
    while (1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242530);
      v5 = swift_allocObject();
      *(v5 + 16) = xmmword_268050170;
      *(v5 + 56) = MEMORY[0x277D83B88];
      *(v5 + 64) = MEMORY[0x277D83C10];
      *(v5 + 32) = v4;

      v6 = sub_26804E6DC();
      v8 = v7;

      v9 = sub_26800C38C(v6, v8, [v3 bundleForClass_]);
      if (!v9)
      {
        break;
      }

      v10 = v9;
      MEMORY[0x26D60D3C0]();
      if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_26804E79C();
      }

      sub_26804E7BC();

      v1 = v25;
      if (__OFADD__(v4++, 1))
      {
        __break(1u);
        goto LABEL_16;
      }
    }

    if (qword_280241130 == -1)
    {
      goto LABEL_11;
    }

LABEL_16:
    OUTLINED_FUNCTION_10_0();
LABEL_11:
    v12 = sub_26804CD4C();
    __swift_project_value_buffer(v12, qword_2802487E0);
    swift_bridgeObjectRetain_n();

    v13 = sub_26804CD3C();
    v14 = sub_26804E88C();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v24 = v16;
      *v15 = 136315394;
      sub_26804C24C();
      sub_26800D8E8();
      v17 = sub_26804EC7C();
      v19 = sub_267FAE0C4(v17, v18, &v24);

      *(v15 + 4) = v19;
      *(v15 + 12) = 2048;
      v20 = sub_267FDA00C(v1);

      *(v15 + 14) = v20;
      swift_bridgeObjectRelease_n();
      _os_log_impl(&dword_267FA7000, v13, v14, "TapbackAnimationView getting keyframes for %s, count: %ld", v15, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v16);
      OUTLINED_FUNCTION_3_10();
      MEMORY[0x26D60E1E0](v15, -1, -1);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    *(v23 + v22) = v1;
  }

  return v1;
}

id sub_26800C38C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_26804E6BC();

  v5 = [swift_getObjCClassFromMetadata() imageNamed:v4 inBundle:a3];

  return v5;
}

uint64_t sub_26800C3FC()
{
  v1 = sub_26800C01C();
  v2 = *(v0 + OBJC_IVAR____TtC14SiriMessagesUI12TapbackAsset_blankFrameCount);

  v3 = sub_26800C6C4(v2, v1);
  v5 = v4;
  v7 = v6;
  v9 = v8;
  if ((v8 & 1) == 0)
  {
    goto LABEL_2;
  }

  sub_26804ECAC();
  swift_unknownObjectRetain_n();
  v12 = swift_dynamicCastClass();
  if (!v12)
  {
    swift_unknownObjectRelease();
    v12 = MEMORY[0x277D84F90];
  }

  v13 = *(v12 + 16);

  if (__OFSUB__(v9 >> 1, v7))
  {
    __break(1u);
    goto LABEL_17;
  }

  if (v13 != (v9 >> 1) - v7)
  {
LABEL_17:
    swift_unknownObjectRelease();
LABEL_2:
    sub_26800D6C8(v3, v5, v7, v9);
    v11 = v10;
    goto LABEL_9;
  }

  v11 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (v11)
  {
    goto LABEL_10;
  }

  v11 = MEMORY[0x277D84F90];
LABEL_9:
  swift_unknownObjectRelease();
LABEL_10:
  if (qword_280241130 != -1)
  {
    OUTLINED_FUNCTION_10_0();
  }

  v14 = sub_26804CD4C();
  __swift_project_value_buffer(v14, qword_2802487E0);
  swift_retain_n();

  v15 = sub_26804CD3C();
  v16 = sub_26804E88C();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v25 = v18;
    *v17 = 136315650;
    sub_26804C24C();
    sub_26800D8E8();
    v19 = sub_26804EC7C();
    v21 = sub_267FAE0C4(v19, v20, &v25);

    *(v17 + 4) = v21;
    *(v17 + 12) = 2048;
    v22 = sub_267FDA00C(v1);

    *(v17 + 14) = v22;

    *(v17 + 22) = 2048;
    v23 = sub_267FDA00C(v11);

    *(v17 + 24) = v23;

    _os_log_impl(&dword_267FA7000, v15, v16, "TapbackAnimationView providing trimmed keyframes for %s, original count: %ld, trimmed count: %ld", v17, 0x20u);
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
    MEMORY[0x26D60E1E0](v18, -1, -1);
    OUTLINED_FUNCTION_3_10();
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  return v11;
}

uint64_t sub_26800C6C4(uint64_t a1, unint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v4 = sub_267FDA00C(a2);
  v5 = sub_26800D7F8(0, a1, v4);
  if (v6)
  {
    v7 = v4;
  }

  else
  {
    v7 = v5;
  }

  if (v4 < v7)
  {
    goto LABEL_18;
  }

  sub_26800D844(v7, a2);
  result = sub_26800D844(v4, a2);
  if ((a2 & 0xC000000000000001) == 0 || v7 == v4)
  {
  }

  else
  {
    if (v7 >= v4)
    {
      goto LABEL_21;
    }

    sub_267FCAB20(0, &qword_280242528);

    result = v7;
    do
    {
      v9 = result + 1;
      sub_26804EB5C();
      result = v9;
    }

    while (v4 != v9);
  }

  if (a2 >> 62)
  {
LABEL_19:

    v10 = sub_26804EC2C();

    return v10;
  }

  if ((v4 & 0x8000000000000000) == 0)
  {

    return a2 & 0xFFFFFFFFFFFFFF8;
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_26800C828()
{
  v1 = sub_26804C26C();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26804C25C();
  v7 = (*(v3 + 88))(v6, v1);
  if (v7 == *MEMORY[0x277D5D410])
  {
    v8 = &OBJC_IVAR____TtC14SiriMessagesUI12TapbackAsset_primarySelectionColorFilter;
  }

  else
  {
    if (v7 != *MEMORY[0x277D5D400] && v7 != *MEMORY[0x277D5D408])
    {
      result = sub_26804EC8C();
      __break(1u);
      return result;
    }

    v8 = &OBJC_IVAR____TtC14SiriMessagesUI12TapbackAsset_secondarySelectionColorFilter;
  }

  v10 = *(v0 + *v8);
  v11 = v10;
  return v10;
}

uint64_t sub_26800C960()
{
  v1 = OBJC_IVAR____TtC14SiriMessagesUI12TapbackAsset_tapbackType;
  v2 = sub_26804C24C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t sub_26800CA50()
{
  result = sub_26804C24C();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_26800CB08(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, void, void, uint64_t, uint64_t))
{
  v9 = sub_26804C24C();
  OUTLINED_FUNCTION_1();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_2_13();
  MEMORY[0x28223BE20](v13);
  v15 = &v18 - v14;
  (*(v11 + 104))(&v18 - v14, *a1, v9);
  (*(v11 + 16))(v4, v15, v9);
  v16 = a4(v4, 0, 0, a2, a3);
  (*(v11 + 8))(v15, v9);
  return v16;
}

uint64_t sub_26800CC4C()
{
  v1 = 4673093;
  v2 = sub_26804C24C();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2_13();
  MEMORY[0x28223BE20](v6);
  v8 = &v20[-v7];
  (*(v4 + 104))(&v20[-v7], *MEMORY[0x277D5D3C0], v2);
  sub_267FCAB20(0, &qword_2802433C8);
  v9 = sub_26800D064();
  if (v9)
  {
    v10 = v9;
    v19 = 0x8000000268056A60;
    v11 = sub_26804BCFC();
    v13 = v12;
  }

  else
  {
    v11 = 4673093;
    v13 = 0xE300000000000000;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802441D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2680531B0;
  *(inited + 32) = 4673093;
  *(inited + 40) = 0xE300000000000000;
  *(inited + 48) = 5264197;
  *(inited + 56) = 0xE300000000000000;
  *(inited + 64) = 5396803;
  *(inited + 72) = 0xE300000000000000;
  *(inited + 80) = 4281417;
  *(inited + 88) = 0xE300000000000000;
  *(inited + 96) = 5394251;
  *(inited + 104) = 0xE300000000000000;
  *(inited + 112) = 5132362;
  *(inited + 120) = 0xE300000000000000;
  *(inited + 128) = 5130307;
  *(inited + 136) = 0xE300000000000000;
  *(inited + 144) = 4343112;
  *(inited + 152) = 0xE300000000000000;
  *(inited + 160) = 5130568;
  *(inited + 168) = 0xE300000000000000;
  *(inited + 176) = 4278356;
  *(inited + 184) = 0xE300000000000000;
  *(inited + 192) = 4280897;
  *(inited + 200) = 0xE300000000000000;
  v21 = v11;
  v22 = v13;
  MEMORY[0x28223BE20](inited);
  v19 = &v21;
  v15 = sub_26800D58C(sub_26800D8C8, &v20[-32], inited);
  swift_setDeallocating();
  sub_26800D684();

  if (v15)
  {
    v1 = v11;
  }

  else
  {

    v13 = 0xE300000000000000;
  }

  (*(v4 + 16))(v0, v8, v2);
  v21 = sub_26804C23C();
  v22 = v16;
  MEMORY[0x26D60D390](45, 0xE100000000000000);
  MEMORY[0x26D60D390](v1, v13);

  MEMORY[0x26D60D390](0x643330255FLL, 0xE500000000000000);
  v17 = sub_26800D0C8(v0, v21, v22, &unk_2878EA5C0, &unk_2878EA600);
  (*(v4 + 8))(v8, v2);
  return v17;
}

id sub_26800D064()
{
  v0 = sub_26804E6BC();

  v1 = [swift_getObjCClassFromMetadata() bundleWithIdentifier_];

  return v1;
}

uint64_t sub_26800D11C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_26804C24C();
  OUTLINED_FUNCTION_1();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_allocObject();
  (*(v12 + 16))(v15, a1, v10);
  sub_26800BD18(v15, a2, a3, a4, a5);
  (*(v12 + 8))(a1, v10);
  return v16;
}

uint64_t sub_26800D244()
{
  sub_26800C960();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void *sub_26800D2FC@<X0>(void *result@<X0>, _DWORD *a2@<X8>)
{
  v2 = result[2];
  if (!v2)
  {
    __break(1u);
    goto LABEL_27;
  }

  v4 = result[4];
  v5 = *(v4 + 16);
  if (!v5)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v5 == 1)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v5 < 3)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v5 == 3)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (v5 < 5)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (v2 == 1)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v6 = result[5];
  v7 = *(v6 + 16);
  if (!v7)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (v7 == 1)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (v7 < 3)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v7 == 3)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (v7 < 5)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (v2 < 3)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v8 = result[6];
  v9 = *(v8 + 16);
  if (!v9)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (v9 == 1)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  if (v9 < 3)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  if (v9 == 3)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  if (v9 < 5)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  if (v2 == 3)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v10 = result[7];
  v11 = *(v10 + 16);
  if (!v11)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  if (v11 == 1)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  if (v11 < 3)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  if (v11 == 3)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v12 = *(v4 + 32);
  v13 = *(v4 + 36);
  v14 = *(v4 + 40);
  v15 = *(v4 + 44);
  v16 = *(v4 + 48);
  v17 = *(v6 + 32);
  v18 = *(v6 + 36);
  v19 = *(v6 + 40);
  v30 = *(v6 + 48);
  v31 = *(v6 + 44);
  v28 = *(v8 + 36);
  v29 = *(v8 + 32);
  v26 = *(v8 + 44);
  v27 = *(v8 + 40);
  v24 = *(v10 + 32);
  v25 = *(v8 + 48);
  v22 = *(v10 + 40);
  v23 = *(v10 + 36);
  v21 = *(v10 + 44);

  if (*(v10 + 16) >= 5uLL)
  {
    v20 = *(v10 + 48);

    *a2 = v12;
    a2[1] = v13;
    a2[2] = v14;
    a2[3] = v15;
    a2[4] = v16;
    a2[5] = v17;
    a2[6] = v18;
    a2[7] = v19;
    a2[8] = v31;
    a2[9] = v30;
    a2[10] = v29;
    a2[11] = v28;
    a2[12] = v27;
    a2[13] = v26;
    a2[14] = v25;
    a2[15] = v24;
    a2[16] = v23;
    a2[17] = v22;
    a2[18] = v21;
    a2[19] = v20;
    return result;
  }

LABEL_49:
  __break(1u);
  return result;
}

id sub_26800D518()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_26804E6BC();

  v2 = [v0 initWithType_];

  return v2;
}

BOOL sub_26800D58C(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v5 = (a3 + 40);
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = *v5;
    v11[0] = *(v5 - 1);
    v11[1] = v7;

    v8 = a1(v11);
    if (v3)
    {

      return v6 != 0;
    }

    v9 = v8;
    v5 += 2;
  }

  while ((v9 & 1) == 0);
  return v6 != 0;
}

uint64_t sub_26800D63C()
{
  swift_arrayDestroy();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_26800D684()
{
  swift_arrayDestroy();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

void sub_26800D6C8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241FE8);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v7[2] = v5;
      v7[3] = (2 * ((v8 - 32) / 8)) | 1;
    }

    if (v4 != a3)
    {
      sub_267FCAB20(0, &qword_280242528);
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_9;
  }
}

uint64_t sub_26800D7B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_26804EC9C() & 1;
  }
}

uint64_t sub_26800D7F8(uint64_t result, uint64_t a2, uint64_t a3)
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

uint64_t sub_26800D844(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    result = sub_26804EC1C();
  }

  else
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (result < a1)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (a1 < 0)
  {
LABEL_8:
    __break(1u);
  }

  return result;
}

unint64_t sub_26800D8E8()
{
  result = qword_280241FB8;
  if (!qword_280241FB8)
  {
    sub_26804C24C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280241FB8);
  }

  return result;
}

void sub_26800D954()
{
  sub_26800D9C8();
  if (v0 <= 0x3F)
  {
    sub_26800DA34();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_26800D9C8()
{
  if (!qword_2802433E0)
  {
    sub_26804BDFC();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2802433E0);
    }
  }
}

uint64_t sub_26800DA34()
{
  result = qword_2802433E8;
  if (!qword_2802433E8)
  {
    result = MEMORY[0x277D839F8];
    atomic_store(MEMORY[0x277D839F8], &qword_2802433E8);
  }

  return result;
}

double sub_26800DA5C()
{
  type metadata accessor for TimerState();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_0_4(v2, v6);
  v3 = 0.0;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
    case 2u:
      v3 = *v0;
      break;
    case 3u:
      return v3;
    default:
      v3 = *(v0 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241400) + 48));
      sub_26804BDFC();
      OUTLINED_FUNCTION_4();
      (*(v4 + 8))(v0);
      break;
  }

  return v3;
}

uint64_t sub_26800DB4C()
{
  type metadata accessor for TimerState();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_0_4(v2, v4);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    if (*v0 == 0.0)
    {
      return 1;
    }
  }

  else
  {
    sub_267FC12B4(v0);
  }

  return 0;
}

unint64_t sub_26800DBE0()
{
  result = qword_2802433F0;
  if (!qword_2802433F0)
  {
    type metadata accessor for TextBalloonView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802433F0);
  }

  return result;
}

void sub_26800DC38()
{
  OUTLINED_FUNCTION_24();
  v30[1] = v0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280243408);
  OUTLINED_FUNCTION_1();
  v3 = v2;
  v5 = MEMORY[0x28223BE20](v4);
  v7 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v30 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280243410);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v11);
  v13 = v30 - v12;
  *v13 = sub_26804D3DC();
  *(v13 + 1) = 0;
  v13[16] = 1;
  v14 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280243418) + 44)];
  sub_26800DEE4();
  v15 = *(v3 + 16);
  v15(v7, v9, v1);
  *v14 = 0;
  v14[8] = 1;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280243420);
  v15(&v14[*(v16 + 48)], v7, v1);
  v17 = *(v3 + 8);
  v17(v9, v1);
  v17(v7, v1);
  v18 = sub_26804D7AC();
  v19 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280243428) + 36)];
  *v19 = v18;
  __asm { FMOV            V0.2D, #10.0 }

  *(v19 + 8) = _Q0;
  *(v19 + 24) = xmmword_2680532F0;
  v19[40] = 0;
  KeyPath = swift_getKeyPath();
  v26 = &v13[*(v10 + 36)];
  v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242BF0) + 28);
  v28 = *MEMORY[0x277CDFA88];
  sub_26804D0CC();
  OUTLINED_FUNCTION_4();
  (*(v29 + 104))(v26 + v27, v28);
  *v26 = KeyPath;
  sub_26800EAE0();
  sub_26804D9AC();
  sub_267FB6C40(v13);
  OUTLINED_FUNCTION_23_0();
}

void sub_26800DEE4()
{
  OUTLINED_FUNCTION_24();
  v0 = sub_26804E18C();
  OUTLINED_FUNCTION_1();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3();
  v6 = v5 - v4;
  sub_26804C29C();
  sub_267FB0C1C();
  v7 = sub_26804D95C();
  v9 = v8;
  v11 = v10 & 1;
  sub_26800E014(v6);
  sub_26804DA6C();
  (*(v2 + 8))(v6, v0);
  sub_267FB0FB4(v7, v9, v11);

  OUTLINED_FUNCTION_23_0();
}

uint64_t sub_26800E014@<X0>(uint64_t a1@<X8>)
{
  v44 = a1;
  v1 = sub_26804D0BC();
  v42 = *(v1 - 8);
  v43 = v1;
  MEMORY[0x28223BE20](v1);
  v41 = v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_26804E14C();
  v38 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v39 = v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_26804E13C();
  v35 = *(v4 - 8);
  v36 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = (v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_26804E16C();
  MEMORY[0x28223BE20](v7 - 8);
  v37 = v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_26804E19C();
  v34[0] = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_26804E1CC();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_26804E1BC();
  MEMORY[0x28223BE20](v16 - 8);
  v34[1] = v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_26804C26C();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = v34 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26804C27C();
  v22 = (*(v19 + 88))(v21, v18);
  if (v22 == *MEMORY[0x277D5D410])
  {
    return sub_26804E11C();
  }

  if (v22 == *MEMORY[0x277D5D400])
  {
    return sub_26804E12C();
  }

  if (v22 != *MEMORY[0x277D5D408])
  {
    (*(v19 + 8))(v21, v18);
  }

  (*(v13 + 104))(v15, *MEMORY[0x277CF34A0], v12);
  sub_26804E1DC();
  (*(v34[0] + 104))(v11, *MEMORY[0x277CF3498], v9);
  sub_26804E1AC();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280243450);
  v25 = *(v24 + 48);
  v26 = *(v24 + 64);
  v27 = [objc_opt_self() secondarySystemFillColor];
  v28 = sub_26804DC1C();
  v29 = MEMORY[0x277CE0F78];
  v30 = MEMORY[0x277CE0F60];
  v6[3] = MEMORY[0x277CE0F78];
  v6[4] = v30;
  *v6 = v28;
  v31 = sub_26804E17C();
  __swift_storeEnumTagSinglePayload(v6 + v25, 1, 1, v31);
  *(v6 + v26) = 0;
  v32 = (*(v35 + 104))(v6, *MEMORY[0x277CF3488], v36);
  v33 = sub_26800E670(v32);
  v46 = v29;
  v47 = v30;
  v45 = v33;
  sub_26804E15C();
  (*(v38 + 104))(v39, *MEMORY[0x277CF3490], v40);
  (*(v42 + 104))(v41, *MEMORY[0x277CDF9D8], v43);
  return sub_26804E10C();
}

uint64_t sub_26800E88C@<X0>(uint64_t a1@<X8>)
{
  sub_26804C2AC();
  OUTLINED_FUNCTION_4();
  (*(v3 + 16))(a1, v1);
  v4 = type metadata accessor for TextBalloonView();
  v5 = *(v4 + 20);
  *(a1 + v5) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241F10);
  swift_storeEnumTagMultiPayload();
  v6 = *(v4 + 24);
  *(a1 + v6) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241DB8);

  return swift_storeEnumTagMultiPayload();
}

void sub_26800E99C()
{
  sub_26804C2AC();
  if (v0 <= 0x3F)
  {
    sub_26800EA70(319, &qword_280242690, MEMORY[0x277CDFAA0]);
    if (v1 <= 0x3F)
    {
      sub_26800EA70(319, &qword_280242178, MEMORY[0x277CDF3E0]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_26800EA70(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_26804CF2C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_26800EAE0()
{
  result = qword_280243430;
  if (!qword_280243430)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280243410);
    sub_26800EB98();
    sub_267FC126C(&unk_280242C10, &qword_280242BF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280243430);
  }

  return result;
}

unint64_t sub_26800EB98()
{
  result = qword_280243438;
  if (!qword_280243438)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280243428);
    sub_267FC126C(&qword_280243440, &qword_280243448);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280243438);
  }

  return result;
}

void sub_26800EC78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_24();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v27 = v20;
  v29 = v28;
  v30 = sub_26804D3AC();
  OUTLINED_FUNCTION_1();
  v32 = v31;
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_3();
  v36 = v35 - v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(v26);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v37);
  v39 = &a9 - v38;
  sub_267FB035C(v27, &a9 - v38, v26);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v24(0);
    OUTLINED_FUNCTION_4();
    (*(v40 + 32))(v29, v39);
  }

  else
  {
    sub_26804E8AC();
    v41 = sub_26804D77C();
    sub_26804CD2C();

    sub_26804D39C();
    swift_getAtKeyPath();

    (*(v32 + 8))(v36, v30);
  }

  OUTLINED_FUNCTION_23_0();
}

uint64_t sub_26800EE74(uint64_t a1, int a2)
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

uint64_t sub_26800EEB4(uint64_t result, int a2, int a3)
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

uint64_t sub_26800EF1C@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_26804D44C();
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26804D43C();
  sub_26804D42C();
  v9 = sub_26804DD1C();
  sub_26804D40C();

  sub_26804D42C();
  sub_26804D41C();
  sub_26804D42C();
  sub_26804D46C();
  sub_26804D94C();
  OUTLINED_FUNCTION_0_5();
  sub_26804D87C();
  v10 = sub_26804D93C();
  v12 = v11;
  v14 = v13;

  sub_267FB0FB4(v8, a2, a1 & 1);

  v30[3] = sub_26804D65C();
  sub_26804D90C();
  OUTLINED_FUNCTION_0_5();
  sub_267FB0FB4(v10, v12, v14 & 1);

  v15 = sub_26804D7DC();
  sub_26804CE1C();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  LOBYTE(v10) = a1 & 1;
  v32 = a1 & 1;
  v31 = 0;
  v24 = sub_26804D7CC();
  result = sub_26804CE1C();
  *a3 = v8;
  *(a3 + 8) = a2;
  *(a3 + 16) = v10;
  *(a3 + 24) = v9;
  *(a3 + 32) = v15;
  *(a3 + 40) = v17;
  *(a3 + 48) = v19;
  *(a3 + 56) = v21;
  *(a3 + 64) = v23;
  *(a3 + 72) = 0;
  *(a3 + 80) = v24;
  *(a3 + 88) = v26;
  *(a3 + 96) = v27;
  *(a3 + 104) = v28;
  *(a3 + 112) = v29;
  *(a3 + 120) = 0;
  return result;
}

unint64_t sub_26800F170()
{
  result = qword_280243458;
  if (!qword_280243458)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280243460);
    sub_26800F1FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280243458);
  }

  return result;
}

unint64_t sub_26800F1FC()
{
  result = qword_280243468;
  if (!qword_280243468)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280243470);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280243468);
  }

  return result;
}

uint64_t type metadata accessor for RecipientChangeButtonView()
{
  result = qword_280243478;
  if (!qword_280243478)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26800F2F4()
{
  sub_26800F470(319, &qword_280242AD0, type metadata accessor for MessageDraftSnippetViewModel, MEMORY[0x277CE12F8]);
  if (v0 <= 0x3F)
  {
    sub_26804E22C();
    if (v1 <= 0x3F)
    {
      sub_267FEFFAC();
      if (v2 <= 0x3F)
      {
        sub_26800F470(319, &qword_280242178, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
        if (v3 <= 0x3F)
        {
          sub_26800F4D4(319, &qword_2802427A0, MEMORY[0x277CDF468]);
          if (v4 <= 0x3F)
          {
            sub_26800F4D4(319, &qword_280242BB0, MEMORY[0x277CE10B8]);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_26800F470(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_26800F4D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277D839B0]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_26800F544@<X0>(uint64_t a1@<X8>)
{
  v53 = a1;
  sub_26804D3FC();
  OUTLINED_FUNCTION_1();
  v49 = v2;
  v50 = v3;
  MEMORY[0x28223BE20](v2);
  v5 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for RecipientChangeButtonView();
  v7 = v6 - 8;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v58 = v9;
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241B10);
  OUTLINED_FUNCTION_1();
  v47 = v12;
  MEMORY[0x28223BE20](v13);
  v15 = &v43 - v14;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280243488);
  OUTLINED_FUNCTION_1();
  v48 = v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v43 - v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280243490);
  OUTLINED_FUNCTION_1();
  v51 = v20;
  v52 = v21;
  MEMORY[0x28223BE20](v20);
  v44 = &v43 - v22;
  v54 = v1;
  v45 = v10;
  sub_268010BF4(v1, v10);
  v57 = *(v8 + 80);
  v23 = (v57 + 16) & ~v57;
  v46 = v23;
  v24 = swift_allocObject();
  v56 = type metadata accessor for RecipientChangeButtonView;
  sub_268010F98(v10, v24 + v23, type metadata accessor for RecipientChangeButtonView);
  v59 = v1;
  sub_26804DE2C();
  sub_26804D3EC();
  v25 = sub_267FC126C(&qword_280241B08, &qword_280241B10);
  v26 = sub_268010EC8(&qword_280243498, MEMORY[0x277CDDE40]);
  v27 = v49;
  sub_26804DABC();
  (*(v50 + 8))(v5, v27);
  (*(v47 + 8))(v15, v11);
  v62 = v11;
  v63 = v27;
  v64 = v25;
  v65 = v26;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v29 = v55;
  sub_26804D9AC();
  (*(v48 + 8))(v19, v29);
  v30 = v54;
  v31 = (v54 + *(v7 + 44));
  v32 = *v31;
  v33 = *(v31 + 1);
  v60 = v32;
  v61 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242C20);
  sub_26804DE0C();
  v34 = v45;
  sub_268010BF4(v30, v45);
  v35 = v46;
  v36 = swift_allocObject();
  sub_268010F98(v34, v36 + v35, v56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802434A0);
  v62 = v55;
  v63 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_268010D5C(&qword_2802434A8, &qword_2802434A0, &unk_268053560, sub_268010D2C);
  v37 = v53;
  v38 = v51;
  v39 = v44;
  sub_26804DB8C();

  (*(v52 + 8))(v39, v38);
  sub_268010BF4(v54, v34);
  v40 = swift_allocObject();
  sub_268010F98(v34, v40 + v35, v56);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802434E0);
  v42 = (v37 + *(result + 36));
  *v42 = 0;
  v42[1] = 0;
  v42[2] = sub_268010F10;
  v42[3] = v40;
  return result;
}

uint64_t sub_26800FBB8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_280242A48);
  sub_26804DF1C();
  v0 = sub_26803F324();

  if (v0)
  {
    if (qword_280241130 != -1)
    {
      swift_once();
    }

    v1 = sub_26804CD4C();
    __swift_project_value_buffer(v1, qword_2802487E0);
    v2 = sub_26804CD3C();
    v3 = sub_26804E88C();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_267FA7000, v2, v3, "#RecipientChangeButtonView presenting contact autocomplete", v4, 2u);
      MEMORY[0x26D60E1E0](v4, -1, -1);
    }

    type metadata accessor for RecipientChangeButtonView();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242C20);
    return sub_26804DDFC();
  }

  else
  {
    sub_26804DF1C();
    sub_26804312C();
  }
}

uint64_t sub_26800FD44@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26804C41C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_280242A48);
  sub_26804DF1C();
  (*(v3 + 16))(v5, v26 + OBJC_IVAR____TtC14SiriMessagesUI23MessageSnippetViewModel_labels, v2);

  v6 = sub_26804C40C();
  v8 = v7;
  (*(v3 + 8))(v5, v2);
  v26 = v6;
  v27 = v8;
  sub_267FB0C1C();
  v9 = sub_26804D95C();
  v11 = v10;
  LOBYTE(v5) = v12;
  sub_26804D84C();
  v13 = sub_26804D8EC();
  v15 = v14;
  v17 = v16;
  sub_267FB0FB4(v9, v11, v5 & 1);

  v26 = sub_26804DC2C();
  v18 = sub_26804D90C();
  v20 = v19;
  LOBYTE(v8) = v21;
  v23 = v22;
  sub_267FB0FB4(v13, v15, v17 & 1);

  *a1 = v18;
  *(a1 + 8) = v20;
  *(a1 + 16) = v8 & 1;
  *(a1 + 24) = v23;
  return result;
}

uint64_t sub_26800FF6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v73 = a2;
  v3 = type metadata accessor for RecipientChangeButtonView();
  v4 = *(v3 - 8);
  v69 = v3;
  v70 = v4;
  MEMORY[0x28223BE20](v3);
  v71 = v5;
  v72 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_26804D3AC();
  v62 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v61 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802434E8);
  MEMORY[0x28223BE20](v7 - 8);
  v68 = &v60 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241A20);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v60 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_280242A48);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v60 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242AE0);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v60 - v20;
  v22 = type metadata accessor for ContactAutocompleteView(0);
  MEMORY[0x28223BE20](v22 - 8);
  v65 = (&v60 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802434C8);
  MEMORY[0x28223BE20](v64);
  v25 = &v60 - v24;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802434B8);
  MEMORY[0x28223BE20](v66);
  v67 = &v60 - v26;
  sub_26804DF1C();
  sub_26803FA30(v21);

  v27 = sub_26804C44C();
  if (__swift_getEnumTagSinglePayload(v21, 1, v27))
  {
    v28 = MEMORY[0x277D84F90];
  }

  else
  {
    v28 = sub_26804C43C();
  }

  sub_267FC16BC(v21, &qword_280242AE0);
  sub_26804DF2C();
  swift_getKeyPath();
  sub_26804DF4C();

  (*(v16 + 8))(v18, v15);
  sub_26804DF1C();
  v29 = v76[0];
  v30 = OBJC_IVAR____TtC14SiriMessagesUI23MessageSnippetViewModel_labels;
  v31 = sub_26804C41C();
  v76[3] = v31;
  v76[4] = &off_2878EB420;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v76);
  (*(*(v31 - 8) + 16))(boxed_opaque_existential_1, v29 + v30, v31);

  v33 = sub_267FF4D38(v28);
  v75[3] = &type metadata for AggregatedContactSearcher;
  v75[4] = &off_2878ED8E0;
  v75[0] = v33;
  sub_268010F28(v14, v12);
  sub_267FCAFE4(v76, v74);
  v34 = v65;
  sub_267FC6E0C(v75, v12, v74, v65);
  sub_267FC16BC(v14, &qword_280241A20);
  v35 = __swift_destroy_boxed_opaque_existential_1Tm(v76);
  v43 = a1 + *(v69 + 32);
  v44 = *v43;
  if (*(v43 + 8) != 1)
  {

    sub_26804E8AC();
    v46 = sub_26804D77C();
    sub_26804CD2C();

    v47 = v61;
    sub_26804D39C();
    swift_getAtKeyPath();
    sub_267FEB7B0(v44, 0);
    v35 = (*(v62 + 8))(v47, v63);
    v45 = v68;
    if (LOBYTE(v76[0]) != 1)
    {
      goto LABEL_6;
    }

LABEL_8:
    v48 = *MEMORY[0x277CDF3C0];
    v49 = sub_26804CF1C();
    (*(*(v49 - 8) + 104))(v45, v48, v49);
    goto LABEL_9;
  }

  v45 = v68;
  if (v44)
  {
    goto LABEL_8;
  }

LABEL_6:
  sub_267FB1634(v35, v36, v37, v38, v39, v40, v41, v42, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71);
LABEL_9:
  v50 = sub_26804CF1C();
  __swift_storeEnumTagSinglePayload(v45, 0, 1, v50);
  sub_267FF4248(v45, &v25[*(v64 + 36)], &qword_2802434E8);
  sub_268010F98(v34, v25, type metadata accessor for ContactAutocompleteView);
  v51 = v72;
  sub_268010BF4(a1, v72);
  v52 = (*(v70 + 80) + 16) & ~*(v70 + 80);
  v53 = swift_allocObject();
  sub_268010F98(v51, v53 + v52, type metadata accessor for RecipientChangeButtonView);
  v54 = v67;
  sub_267FF4248(v25, v67, &qword_2802434C8);
  v55 = (v54 + *(v66 + 36));
  *v55 = sub_268010FF8;
  v55[1] = v53;
  v55[2] = 0;
  v55[3] = 0;
  sub_268010BF4(a1, v51);
  v56 = swift_allocObject();
  sub_268010F98(v51, v56 + v52, type metadata accessor for RecipientChangeButtonView);
  v57 = v73;
  sub_267FF4248(v54, v73, &qword_2802434B8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802434A0);
  v59 = (v57 + *(result + 36));
  *v59 = 0;
  v59[1] = 0;
  v59[2] = sub_2680111D0;
  v59[3] = v56;
  return result;
}

void sub_2680107B0(uint64_t a1)
{
  v2 = sub_26804D3AC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_26804E2DC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_280242A48);
  sub_26804DF1C();
  sub_268040550();

  sub_26804DF1C();
  v10 = sub_26803C498();

  if (v10)
  {
    (*(v7 + 104))(v9, *MEMORY[0x277D63BE0], v6);
    v11 = a1 + *(type metadata accessor for RecipientChangeButtonView() + 24);
    v12 = *v11;
    v13 = *(v11 + 8);
    if (*(v11 + 16) == 1)
    {
    }

    else
    {

      sub_26804E8AC();
      v14 = sub_26804D77C();
      sub_26804CD2C();

      sub_26804D39C();
      swift_getAtKeyPath();
      sub_267FC1318(v12, v13, 0);
      (*(v3 + 8))(v5, v2);
      v12 = v17[0];
      v13 = v17[1];
    }

    v15 = objc_allocWithZone(type metadata accessor for OnSnippetInteractionPerformed());
    v16 = sub_26803E5E0(0xD000000000000018, 0x8000000268056740, v9, v12, v13);
    sub_26804E5BC();
  }
}

uint64_t sub_268010A70()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241820);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v4 - v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_280242A48);
  sub_26804DF1C();
  sub_2680406CC();

  sub_26804DF1C();
  type metadata accessor for RecipientChangeButtonView();
  sub_26804E20C();
  sub_268042C84();

  return sub_267FC16BC(v2, &qword_280241820);
}

uint64_t sub_268010B80()
{
  type metadata accessor for RecipientChangeButtonView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242C20);
  return sub_26804DDFC();
}

uint64_t sub_268010BF4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecipientChangeButtonView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_268010CBC@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RecipientChangeButtonView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_26800FF6C(v4, a1);
}

uint64_t sub_268010D5C(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_268010DE0()
{
  result = qword_2802434C0;
  if (!qword_2802434C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802434C8);
    sub_268010EC8(&qword_280242DC0, type metadata accessor for ContactAutocompleteView);
    sub_267FC126C(&qword_2802434D0, &qword_2802434D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802434C0);
  }

  return result;
}

uint64_t sub_268010EC8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_268010F28(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241A20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_268010F98(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t objectdestroyTm_12()
{
  v1 = type metadata accessor for RecipientChangeButtonView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_280242A48);
  OUTLINED_FUNCTION_4();
  (*(v6 + 8))(v0 + v3);
  v7 = v1[5];
  sub_26804E22C();
  OUTLINED_FUNCTION_4();
  (*(v8 + 8))(v0 + v3 + v7);
  sub_267FC1318(*(v5 + v1[6]), *(v5 + v1[6] + 8), *(v5 + v1[6] + 16));
  v9 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241DB8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_26804CF1C();
    OUTLINED_FUNCTION_4();
    (*(v10 + 8))(v5 + v9);
  }

  else
  {
  }

  sub_267FEB7B0(*(v5 + v1[8]), *(v5 + v1[8] + 8));

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2680111E8(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for RecipientChangeButtonView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_26801125C()
{
  result = qword_2802434F0;
  if (!qword_2802434F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802434E0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280243490);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802434A0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280243488);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280241B10);
    sub_26804D3FC();
    sub_267FC126C(&qword_280241B08, &qword_280241B10);
    sub_268010EC8(&qword_280243498, MEMORY[0x277CDDE40]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_268010D5C(&qword_2802434A8, &qword_2802434A0, &unk_268053560, sub_268010D2C);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802434F0);
  }

  return result;
}

id sub_268011480()
{
  type metadata accessor for MessagesUIPluginBase();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_2802487C8 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for Features(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xE4)
  {
    if (a2 + 28 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 28) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 29;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1D;
  v5 = v6 - 29;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for Features(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 28 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 28) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xE4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xE3)
  {
    v6 = ((a2 - 228) >> 8) + 1;
    *result = a2 + 28;
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
          *result = a2 + 28;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_268011650()
{
  result = qword_2802434F8;
  if (!qword_2802434F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802434F8);
  }

  return result;
}

uint64_t sub_2680116A4@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for RecipientView();
  sub_26804E21C();
  v3 = *(v2 + 24);
  *(a1 + v3) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241DC0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for CGRect();
  v4 = OUTLINED_FUNCTION_3_11();
  OUTLINED_FUNCTION_8_5(v4, v5, v6, v7, v8, v9, v10, v11, v24, v26, v28, v30, v12, v32, v35);
  v13 = OUTLINED_FUNCTION_3_11();
  OUTLINED_FUNCTION_8_5(v13, v14, v15, v16, v17, v18, v19, v20, v25, v27, v29, v31, v21, v33, v35);
  v22 = a1 + *(v2 + 36);
  OUTLINED_FUNCTION_3_11();
  *v22 = v34;
  *(v22 + 16) = v35;
  *(v22 + 32) = v36;
  type metadata accessor for MessageSnippetViewModel();
  sub_268015068(&qword_280241DC8, type metadata accessor for MessageSnippetViewModel);
  return sub_26804DF3C();
}

uint64_t type metadata accessor for RecipientView()
{
  result = qword_280243500;
  if (!qword_280243500)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_268011818()
{
  OUTLINED_FUNCTION_9();
  v1 = v0;
  v2 = sub_26804DC8C();
  sub_26804D5CC();
  result = sub_26804CFFC();
  *v1 = v2;
  v1[1] = v4;
  v1[2] = v5;
  v1[3] = v6;
  v1[4] = v7;
  return result;
}

void sub_2680118A4()
{
  type metadata accessor for RecipientView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280243650);
  sub_26804DDEC();
  sub_26804DDEC();
  v5 = CGRectUnion(v4, v4);
  x = v5.origin.x;
  y = v5.origin.y;
  width = v5.size.width;
  height = v5.size.height;
  sub_26804DDEC();
  v6.origin.x = x;
  v6.origin.y = y;
  v6.size.width = width;
  v6.size.height = height;
  CGRectUnion(v6, v4);
}

uint64_t sub_2680119CC@<X0>(uint64_t a1@<X8>)
{
  v62 = a1;
  v1 = type metadata accessor for RecipientView();
  v61 = *(v1 - 8);
  v60 = *(v61 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v59 = &v50 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_26804BFBC();
  OUTLINED_FUNCTION_1();
  v55 = v3;
  MEMORY[0x28223BE20](v4);
  v54 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280243518);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v6);
  v8 = &v50 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280243520);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v9);
  v11 = &v50 - v10;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280243528);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v12);
  v14 = &v50 - v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280243530);
  OUTLINED_FUNCTION_1();
  v56 = v15;
  v57 = v16;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v17);
  v53 = &v50 - v18;
  sub_2680120E4(v78);
  memcpy(v77, v78, sizeof(v77));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280243538);
  sub_2680146FC();
  v19 = sub_26804D97C();
  memcpy(__dst, v77, 0x68uLL);
  sub_267FC16BC(__dst, &qword_280243538);
  v20 = MEMORY[0x277D63A60];
  v78[16] = MEMORY[0x277CE11C8];
  v78[17] = MEMORY[0x277D63A60];
  v21 = MEMORY[0x277CE11C8];
  v78[13] = v19;
  sub_268012540();
  sub_26801486C();
  v22 = sub_26804D97C();
  sub_267FC16BC(v11, &qword_280243520);
  v75 = v21;
  v76 = v20;
  v73 = 0;
  v74 = v22;
  v71 = 0u;
  v72 = 0u;
  v70 = 0;
  memset(&v69[96], 0, 32);
  sub_268012878(v77);
  memcpy(v69, v77, 0x51uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280243588);
  sub_268014928();
  v23 = sub_26804D97C();
  memcpy(v78, v69, 0x51uLL);
  sub_267FC16BC(v78, &qword_280243588);
  v77[3] = v21;
  v77[4] = v20;
  v77[0] = v23;
  memset(v69, 0, 40);
  v68 = 0;
  v66 = 0u;
  v67 = 0u;
  sub_2680130BC(v8);
  sub_268014B1C();
  v24 = sub_26804D97C();
  sub_267FC16BC(v8, &qword_280243518);
  v64 = v21;
  v65 = v20;
  v63 = v24;
  sub_26804E41C();
  v25 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280243600) + 36)];
  strcpy(v25, "recipientView");
  *(v25 + 7) = -4864;
  v26 = sub_26804DFBC();
  v51 = v27;
  v28 = v52;
  v29 = &v14[*(v52 + 36)];
  sub_268013A04();
  sub_2680118A4();
  MidX = CGRectGetMidX(v80);
  sub_2680118A4();
  MidY = CGRectGetMidY(v81);
  v32 = &v29[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280243608) + 36)];
  *v32 = MidX;
  v32[1] = MidY;
  KeyPath = swift_getKeyPath();
  v34 = &v29[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280243610) + 36)];
  v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242BF0) + 28);
  v36 = *MEMORY[0x277CDFA88];
  sub_26804D0CC();
  OUTLINED_FUNCTION_4();
  (*(v37 + 104))(v34 + v35, v36);
  *v34 = KeyPath;
  v38 = &v29[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280243618) + 36)];
  v39 = v51;
  *v38 = v26;
  v38[1] = v39;
  v41 = v54;
  v40 = v55;
  v42 = v58;
  (*(v55 + 104))(v54, *MEMORY[0x277D62F38], v58);
  v43 = sub_268014E00();
  v44 = v53;
  sub_26804D99C();
  (*(v40 + 8))(v41, v42);
  sub_267FC16BC(v14, &qword_280243528);
  v45 = v59;
  sub_268015418();
  v46 = (*(v61 + 80) + 16) & ~*(v61 + 80);
  v47 = swift_allocObject();
  sub_268014FA0(v45, v47 + v46);
  v77[0] = v28;
  v77[1] = v43;
  OUTLINED_FUNCTION_1_7();
  swift_getOpaqueTypeConformance2();
  v48 = v56;
  sub_26804D9BC();

  return (*(v57 + 8))(v44, v48);
}

void *sub_2680120E4@<X0>(void *a1@<X8>)
{
  v37 = a1;
  v1 = type metadata accessor for RecipientView();
  v35 = *(v1 - 8);
  v2 = *(v35 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = sub_26804D5CC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v32 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v28 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242770);
  sub_26804DF1C();
  v9 = sub_26803C9E0();
  v11 = v10;

  __dst[0] = v9;
  __dst[1] = v11;
  sub_267FB0C1C();
  v12 = sub_26804D95C();
  v34 = v13;
  v31 = v14;
  v36 = v15;
  KeyPath = swift_getKeyPath();
  strcpy(__dst, "recipientView");
  HIWORD(__dst[1]) = -4864;
  sub_26804D66C();
  sub_268015418();
  v16 = (*(v35 + 80) + 16) & ~*(v35 + 80);
  v17 = swift_allocObject();
  sub_268014FA0(&v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16);
  v18 = v32;
  (*(v4 + 16))(v32, v8, v3);
  v19 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v20 = swift_allocObject();
  v21 = *(v4 + 32);
  v22 = v20;
  v29 = v20;
  v21(v20 + v19, v18, v3);
  v32 = sub_26804DFAC();
  v30 = v23;
  (*(v4 + 8))(v8, v3);
  v41 = v31 & 1;
  v39 = 0;
  v24 = swift_allocObject();
  v35 = v24;
  *(v24 + 16) = sub_268015688;
  *(v24 + 24) = v17;
  v42[0] = v12;
  v42[1] = v34;
  LOBYTE(v42[2]) = v41;
  *(&v42[2] + 1) = *v40;
  HIDWORD(v42[2]) = *&v40[3];
  v42[3] = v36;
  v42[4] = KeyPath;
  v42[5] = 2;
  LOBYTE(v42[6]) = v39;
  *(&v42[6] + 1) = *v38;
  HIDWORD(v42[6]) = *&v38[3];
  v42[7] = sub_2680157F4;
  v42[8] = v22;
  v42[9] = v32;
  v42[10] = v30;
  memcpy(__dst, v42, sizeof(__dst));
  v43[0] = v12;
  v43[1] = v34;
  v44 = v41;
  *v45 = *v40;
  *&v45[3] = *&v40[3];
  v46 = v36;
  v47 = KeyPath;
  v48 = 2;
  v49 = v39;
  *v50 = *v38;
  *&v50[3] = *&v38[3];
  v51 = sub_2680157F4;
  v52 = v29;
  v53 = v32;
  v54 = v30;
  sub_268015794();
  sub_267FC16BC(v43, &qword_280243550);
  v25 = v37;
  result = memcpy(v37, __dst, 0x58uLL);
  v27 = v35;
  v25[11] = sub_2680157F8;
  v25[12] = v27;
  return result;
}

uint64_t sub_268012540()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802436B0);
  MEMORY[0x28223BE20](v0);
  v1 = type metadata accessor for RecipientChangeButtonView();
  MEMORY[0x28223BE20](v1);
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242770);
  sub_26804DF1C();
  type metadata accessor for MessageDraftSnippetViewModel();
  if (swift_dynamicCastClass() && (sub_2680427EC() & 1) != 0)
  {

    sub_26804E21C();
    v4 = &v3[v1[6]];
    *v4 = swift_getKeyPath();
    *(v4 + 1) = 0;
    v4[16] = 0;
    v5 = v1[7];
    *&v3[v5] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241DB8);
    swift_storeEnumTagMultiPayload();
    v6 = &v3[v1[8]];
    *v6 = swift_getKeyPath();
    v6[8] = 0;
    v7 = &v3[v1[9]];
    v10[15] = 0;
    sub_26804DDDC();
    v8 = v11;
    *v7 = v10[16];
    *(v7 + 1) = v8;
    sub_268015068(&qword_280241DA0, type metadata accessor for MessageDraftSnippetViewModel);
    sub_26804DF3C();
    sub_268015418();
    swift_storeEnumTagMultiPayload();
    sub_268015068(&qword_280243580, type metadata accessor for RecipientChangeButtonView);
    sub_26804D5AC();

    return sub_268015474(v3);
  }

  else
  {

    swift_storeEnumTagMultiPayload();
    sub_268015068(&qword_280243580, type metadata accessor for RecipientChangeButtonView);
    return sub_26804D5AC();
  }
}

void *sub_268012878@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v90 = a1;
  v3 = type metadata accessor for RecipientView();
  v83 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v84 = v4;
  v85 = v75 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_26804D5CC();
  v88 = *(v5 - 8);
  v89 = v5;
  v6 = *(v88 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v86 = v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v75 - v8;
  sub_26804C54C();
  sub_26804C53C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242770);
  sub_26804DF1C();
  sub_26803CB44();

  v10 = sub_26804C52C();
  v12 = v11;

  v13 = v2;

  if (v12)
  {
    v14 = v10;
  }

  else
  {
    v14 = 0;
  }

  v15 = 0xE000000000000000;
  if (v12)
  {
    v15 = v12;
  }

  __dst[0] = v14;
  __dst[1] = v15;
  sub_267FB0C1C();
  v91 = sub_26804D95C();
  v17 = v16;
  v87 = v18;
  v20 = v19;
  sub_26804DF1C();
  type metadata accessor for MessageDraftSnippetViewModel();
  if (!swift_dynamicCastClass())
  {

    goto LABEL_10;
  }

  v21 = sub_268042720();

  if (!v21)
  {
LABEL_10:
    strcpy(__dst, "recipientView");
    HIWORD(__dst[1]) = -4864;
    sub_26804D66C();
    v61 = v85;
    sub_268015418();
    v62 = (*(v83 + 80) + 16) & ~*(v83 + 80);
    v63 = swift_allocObject();
    sub_268014FA0(v61, v63 + v62);
    v64 = v9;
    v65 = v88;
    v66 = v89;
    v67 = v86;
    (*(v88 + 16))(v86, v64, v89);
    v68 = (*(v65 + 80) + 16) & ~*(v65 + 80);
    v69 = swift_allocObject();
    (*(v65 + 32))(v69 + v68, v67, v66);
    v70 = sub_26804DFAC();
    v72 = v71;
    (*(v65 + 8))(v64, v66);
    v95 = v87 & 1;
    v73 = swift_allocObject();
    *(v73 + 16) = sub_268015350;
    *(v73 + 24) = v63;
    LOBYTE(v93[0]) = 1;
    v94[0] = v91;
    v94[1] = v17;
    LOBYTE(v94[2]) = v95;
    v94[3] = v20;
    v94[4] = sub_2680157F4;
    v94[5] = v69;
    v94[6] = v70;
    v94[7] = v72;
    v94[8] = sub_2680157F8;
    v94[9] = v73;
    LOBYTE(v94[10]) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802435A0);
    sub_2680149AC();
    sub_26804D5AC();
    return memcpy(v90, __dst, 0x51uLL);
  }

  sub_26804D45C();
  v22 = sub_26804D94C();
  v24 = v23;
  v80 = v13;
  LODWORD(v77) = v25;
  v76 = v26;
  sub_26804DD1C();
  v27 = sub_26804D96C();
  v79 = v9;
  v28 = v27;
  v81 = v17;
  v82 = v20;
  v30 = v29;
  v32 = v31;
  v33 = v24;
  v34 = sub_26804D91C();
  v75[1] = v6;
  v36 = v35;
  LOBYTE(v24) = v37;
  v78 = v38;
  sub_267FB0FB4(v28, v30, v32 & 1);

  sub_267FB0FB4(v22, v33, v77 & 1);

  sub_26804D87C();
  v39 = sub_26804D93C();
  v41 = v40;
  LOBYTE(v30) = v42;

  sub_267FB0FB4(v34, v36, v24 & 1);

  LOBYTE(v24) = v87;
  v43 = sub_26804D91C();
  v77 = v44;
  v78 = v43;
  v46 = v45;
  v76 = v47;
  sub_267FB0FB4(v39, v41, v30 & 1);

  strcpy(__dst, "recipientView");
  HIWORD(__dst[1]) = -4864;
  v48 = v79;
  sub_26804D66C();
  v49 = v85;
  sub_268015418();
  v50 = (*(v83 + 80) + 16) & ~*(v83 + 80);
  v51 = swift_allocObject();
  sub_268014FA0(v49, v51 + v50);
  v53 = v88;
  v52 = v89;
  v54 = v86;
  (*(v88 + 16))(v86, v48, v89);
  v55 = (*(v53 + 80) + 16) & ~*(v53 + 80);
  v56 = swift_allocObject();
  (*(v53 + 32))(v56 + v55, v54, v52);
  v57 = sub_26804DFAC();
  v59 = v58;
  (*(v53 + 8))(v48, v52);
  v92 = v46 & 1;
  v60 = swift_allocObject();
  *(v60 + 16) = sub_2680157F0;
  *(v60 + 24) = v51;
  v93[0] = v78;
  v93[1] = v77;
  LOBYTE(v93[2]) = v92;
  v93[3] = v76;
  v93[4] = sub_2680157F4;
  v93[5] = v56;
  v93[6] = v57;
  v93[7] = v59;
  v93[8] = sub_2680157F8;
  v93[9] = v60;
  memcpy(__dst, v93, 0x50uLL);
  v95 = 0;
  LOBYTE(__dst[10]) = 0;
  sub_268015794();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802435A0);
  sub_2680149AC();
  sub_26804D5AC();
  sub_267FB0FB4(v91, v81, v24 & 1);

  sub_267FC16BC(v93, &qword_2802435A0);
  memcpy(__dst, v94, 0x51uLL);
  return memcpy(v90, __dst, 0x51uLL);
}

void sub_2680130BC(uint64_t a1@<X8>)
{
  v2 = v1;
  v101 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280243698);
  MEMORY[0x28223BE20](v3);
  v5 = &v83 - v4;
  v6 = type metadata accessor for RecipientView();
  v91 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v92 = v7;
  v93 = &v83 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_26804D5CC();
  v98 = *(v8 - 8);
  v99 = v8;
  v9 = MEMORY[0x28223BE20](v8);
  v94 = v10;
  v95 = &v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v96 = &v83 - v11;
  v12 = sub_26804BEFC();
  v89 = *(v12 - 8);
  v90 = v12;
  MEMORY[0x28223BE20](v12);
  v88 = &v83 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_26804BF1C();
  MEMORY[0x28223BE20](v14 - 8);
  v87 = &v83 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802435C8);
  MEMORY[0x28223BE20](v16);
  v97 = &v83 - v17;
  v18 = sub_26804D0BC();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v83 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v83 - v24;
  sub_26800EC50(v23, v26, v27, v28, v29, v30, v31, v32, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94);
  (*(v19 + 104))(v22, *MEMORY[0x277CDF9D0], v18);
  v33 = sub_26804D0AC();
  v34 = *(v19 + 8);
  v34(v22, v18);
  v34(v25, v18);
  if (v33)
  {
    v85 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242770);
    sub_26804DF1C();
    v35 = sub_26803C850();

    v36 = sub_26801521C(v35);
    v37 = v2;
    v86 = v3;
    if (v36)
    {
      v38 = v36;
      v84 = v5;
      v39 = sub_267FDA00C(v36);
      v40 = 0;
      v100 = MEMORY[0x277D84F90];
      v41 = v2;
      while (1)
      {
        if (v39 == v40)
        {

          goto LABEL_18;
        }

        if ((v38 & 0xC000000000000001) != 0)
        {
          v42 = MEMORY[0x26D60D7C0](v40, v38);
        }

        else
        {
          if (v40 >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_20;
          }

          v42 = *(v38 + 8 * v40 + 32);
        }

        v43 = v42;
        v44 = v40 + 1;
        if (__OFADD__(v40, 1))
        {
          break;
        }

        v45 = sub_2680152A8(v42);
        v47 = v46;

        ++v40;
        v37 = v41;
        if (v47)
        {
          v48 = v100;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_267FAFA9C();
            v48 = v53;
          }

          v50 = *(v48 + 16);
          v49 = *(v48 + 24);
          v100 = v48;
          if (v50 >= v49 >> 1)
          {
            sub_267FAFA9C();
            v100 = v54;
          }

          v51 = v100;
          *(v100 + 16) = v50 + 1;
          v52 = v51 + 16 * v50;
          *(v52 + 32) = v45;
          *(v52 + 40) = v47;
          v40 = v44;
          v37 = v41;
        }
      }

      __break(1u);
LABEL_20:
      __break(1u);
    }

    else
    {
LABEL_18:
      v56 = v88;
      v55 = v89;
      v57 = v90;
      (*(v89 + 104))(v88, *MEMORY[0x277D62AA8], v90);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802417E8);
      v58 = sub_26804BECC();
      v59 = *(v58 - 8);
      v60 = (*(v59 + 80) + 32) & ~*(v59 + 80);
      v61 = swift_allocObject();
      *(v61 + 16) = xmmword_268050170;
      (*(v59 + 104))(v61 + v60, *MEMORY[0x277D62A28], v58);
      sub_267FAFE24(v61);
      sub_26804BEDC();

      (*(v55 + 8))(v56, v57);
      v62 = v97;
      sub_26804E31C();
      v63 = sub_26804DF9C();
      v65 = v64;
      v66 = v62 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802435E8) + 36);
      sub_268014008(v37, v66);
      v67 = (v66 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802435F8) + 36));
      *v67 = v63;
      v67[1] = v65;
      strcpy(v102, "recipientView");
      v102[7] = -4864;
      v68 = v96;
      sub_26804D66C();
      v69 = v93;
      sub_268015418();
      v70 = (*(v91 + 80) + 16) & ~*(v91 + 80);
      v71 = swift_allocObject();
      sub_268014FA0(v69, v71 + v70);
      v73 = v98;
      v72 = v99;
      v74 = v95;
      (*(v98 + 16))(v95, v68, v99);
      v75 = (*(v73 + 80) + 16) & ~*(v73 + 80);
      v76 = swift_allocObject();
      (*(v73 + 32))(v76 + v75, v74, v72);
      v77 = sub_26804DFAC();
      v79 = v78;
      (*(v73 + 8))(v68, v72);
      v80 = (v62 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802435D8) + 36));
      *v80 = sub_26801529C;
      v80[1] = v76;
      v80[2] = v77;
      v80[3] = v79;
      v81 = swift_allocObject();
      *(v81 + 16) = sub_268015284;
      *(v81 + 24) = v71;
      v82 = (v62 + *(v85 + 36));
      *v82 = sub_2680152A0;
      v82[1] = v81;
      sub_268015794();
      swift_storeEnumTagMultiPayload();
      sub_268014BA8();
      sub_26804D5AC();
      sub_267FC16BC(v62, &qword_2802435C8);
    }
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_268014BA8();
    sub_26804D5AC();
  }
}

uint64_t sub_268013A04()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280243658);
  MEMORY[0x28223BE20](v0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280243660);
  MEMORY[0x28223BE20](v1);
  v3 = &v16 - v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242770);
  sub_26804DF1C();
  type metadata accessor for MessageDraftSnippetViewModel();
  if (swift_dynamicCastClass() && sub_268042720())
  {
    sub_2680118A4();
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v12 = swift_allocObject();
    *(v12 + 2) = v5;
    *(v12 + 3) = v7;
    *(v12 + 4) = v9;
    *(v12 + 5) = v11;

    sub_26804E21C();
    v13 = &v3[*(v1 + 40)];
    *v13 = swift_getKeyPath();
    *(v13 + 1) = 0;
    v13[16] = 0;
    sub_268015068(&qword_280241DA0, type metadata accessor for MessageDraftSnippetViewModel);
    sub_26804DF3C();
    v14 = &v3[*(v1 + 44)];
    *v14 = sub_26801505C;
    v14[1] = v12;
    sub_267FB72C4();
    swift_storeEnumTagMultiPayload();
    sub_267FC126C(&qword_280243668, &qword_280243660);
    sub_26804D5AC();

    return sub_267FC16BC(v3, &qword_280243660);
  }

  else
  {

    swift_storeEnumTagMultiPayload();
    sub_267FC126C(&qword_280243668, &qword_280243660);
    return sub_26804D5AC();
  }
}

uint64_t sub_268013D20()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241820);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v9 - v1;
  if (qword_280241130 != -1)
  {
    swift_once();
  }

  v3 = sub_26804CD4C();
  __swift_project_value_buffer(v3, qword_2802487E0);
  v4 = sub_26804CD3C();
  v5 = sub_26804E88C();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_267FA7000, v4, v5, "#RecipientView component tapped, punching out", v6, 2u);
    MEMORY[0x26D60E1E0](v6, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242770);
  sub_26804DF1C();
  v7 = v9[1];
  type metadata accessor for RecipientView();
  sub_26804E20C();
  (*(*v7 + 496))(v2);

  return sub_267FC16BC(v2, &qword_280241820);
}

uint64_t sub_268013EF4()
{
  type metadata accessor for RecipientView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280243650);
  return sub_26804DDFC();
}

uint64_t sub_268013F88()
{
  OUTLINED_FUNCTION_2_15();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280243650);
  return sub_26804DDFC();
}

uint64_t sub_268014008@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a1;
  v26 = a2;
  v2 = sub_26804BEFC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_26804BF1C();
  MEMORY[0x28223BE20](v6 - 8);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242770);
  sub_26804DF1C();
  v22 = sub_26803CB44();

  v7 = *MEMORY[0x277D62B70];
  v23 = *(v3 + 104);
  v23(v5, v7, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802417E8);
  v8 = sub_26804BECC();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_268050170;
  (*(v9 + 104))(v11 + v10, *MEMORY[0x277D62A28], v8);
  sub_267FAFE24(v11);
  sub_26804BF0C();

  (*(v3 + 8))(v5, v2);
  v12 = v26;
  sub_26804E31C();
  KeyPath = swift_getKeyPath();
  v14 = (v12 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802417E0) + 36));
  v15 = v12;
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802417F0) + 28);
  v23(v14 + v16, *MEMORY[0x277D62BD0], v2);
  __swift_storeEnumTagSinglePayload(v14 + v16, 0, 1, v2);
  *v14 = KeyPath;
  sub_26804DF1C();
  v17 = sub_26803CB44();
  v19 = v18;

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802436A0);
  v21 = (v15 + *(result + 52));
  *v21 = v17;
  v21[1] = v19;
  return result;
}

uint64_t sub_268014354()
{
  type metadata accessor for RecipientView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280243650);
  return sub_26804DDFC();
}

uint64_t sub_2680143E8(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  CGRectGetWidth(*&a1);
  v9.origin.x = a1;
  v9.origin.y = a2;
  v9.size.width = a3;
  v9.size.height = a4;
  CGRectGetHeight(v9);
  sub_26804DFAC();
  sub_26804CFBC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280243670);
  sub_2680150B0();
  return sub_26804DAEC();
}

void sub_268014530()
{
  sub_26801467C(319, &qword_280242790, type metadata accessor for MessageSnippetViewModel, MEMORY[0x277CE12F8]);
  if (v0 <= 0x3F)
  {
    sub_26804E22C();
    if (v1 <= 0x3F)
    {
      sub_26801467C(319, &qword_280242798, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        sub_26801467C(319, &qword_280243510, type metadata accessor for CGRect, MEMORY[0x277CE10B8]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_26801467C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_2680146FC()
{
  result = qword_280243540;
  if (!qword_280243540)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280243538);
    sub_2680147B4();
    sub_267FC126C(&qword_280243568, &qword_280243570);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280243540);
  }

  return result;
}

unint64_t sub_2680147B4()
{
  result = qword_280243548;
  if (!qword_280243548)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280243550);
    sub_267FFE3D0();
    sub_267FC126C(&qword_280243558, &qword_280243560);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280243548);
  }

  return result;
}

unint64_t sub_26801486C()
{
  result = qword_280243578;
  if (!qword_280243578)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280243520);
    sub_268015068(&qword_280243580, type metadata accessor for RecipientChangeButtonView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280243578);
  }

  return result;
}

unint64_t sub_268014928()
{
  result = qword_280243590;
  if (!qword_280243590)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280243588);
    sub_2680149AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280243590);
  }

  return result;
}

unint64_t sub_2680149AC()
{
  result = qword_280243598;
  if (!qword_280243598)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802435A0);
    sub_268014A64();
    sub_267FC126C(&qword_280243568, &qword_280243570);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280243598);
  }

  return result;
}

unint64_t sub_268014A64()
{
  result = qword_2802435A8;
  if (!qword_2802435A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802435B0);
    sub_267FC126C(&qword_280243558, &qword_280243560);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802435A8);
  }

  return result;
}

unint64_t sub_268014B1C()
{
  result = qword_2802435B8;
  if (!qword_2802435B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280243518);
    sub_268014BA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802435B8);
  }

  return result;
}

unint64_t sub_268014BA8()
{
  result = qword_2802435C0;
  if (!qword_2802435C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802435C8);
    sub_268014C60();
    sub_267FC126C(&qword_280243568, &qword_280243570);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802435C0);
  }

  return result;
}

unint64_t sub_268014C60()
{
  result = qword_2802435D0;
  if (!qword_2802435D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802435D8);
    sub_268014D18();
    sub_267FC126C(&qword_280243558, &qword_280243560);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802435D0);
  }

  return result;
}

unint64_t sub_268014D18()
{
  result = qword_2802435E0;
  if (!qword_2802435E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802435E8);
    sub_268015068(&qword_280241800, MEMORY[0x277D63C68]);
    sub_267FC126C(&qword_2802435F0, &qword_2802435F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802435E0);
  }

  return result;
}

unint64_t sub_268014E00()
{
  result = qword_280243620;
  if (!qword_280243620)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280243528);
    sub_268014EB8();
    sub_267FC126C(&qword_280243648, &qword_280243618);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280243620);
  }

  return result;
}

unint64_t sub_268014EB8()
{
  result = qword_280243628;
  if (!qword_280243628)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280243600);
    sub_268015068(&qword_280243630, MEMORY[0x277D63DE8]);
    sub_267FC126C(&qword_280243638, &qword_280243640);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280243628);
  }

  return result;
}

uint64_t sub_268014FA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecipientView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_268015004()
{
  v0 = type metadata accessor for RecipientView();
  OUTLINED_FUNCTION_15(v0);
  return sub_268013D20();
}

uint64_t sub_268015068(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2680150B0()
{
  result = qword_280243678;
  if (!qword_280243678)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280243670);
    sub_26801513C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280243678);
  }

  return result;
}

unint64_t sub_26801513C()
{
  result = qword_280243680;
  if (!qword_280243680)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280243688);
    sub_2680151C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280243680);
  }

  return result;
}

unint64_t sub_2680151C8()
{
  result = qword_280243690;
  if (!qword_280243690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280243690);
  }

  return result;
}

uint64_t sub_26801521C(void *a1)
{
  v2 = [a1 recipients];

  if (!v2)
  {
    return 0;
  }

  sub_26801530C();
  v3 = sub_26804E78C();

  return v3;
}

uint64_t sub_2680152A8(void *a1)
{
  v1 = [a1 contactIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_26804E6CC();

  return v3;
}

unint64_t sub_26801530C()
{
  result = qword_2802436A8;
  if (!qword_2802436A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2802436A8);
  }

  return result;
}

uint64_t sub_268015354()
{
  v0 = OUTLINED_FUNCTION_2_15();
  OUTLINED_FUNCTION_15(v0);
  OUTLINED_FUNCTION_4_7();
  return sub_268013F88();
}

uint64_t sub_2680153A8()
{
  v0 = sub_26804D5CC();
  OUTLINED_FUNCTION_15(v0);
  return sub_268011818();
}

uint64_t sub_268015418()
{
  OUTLINED_FUNCTION_9();
  v2(0);
  OUTLINED_FUNCTION_4();
  (*(v3 + 16))(v0, v1);
  return v0;
}

uint64_t sub_268015474(uint64_t a1)
{
  v2 = type metadata accessor for RecipientChangeButtonView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroyTm_13()
{
  v1 = type metadata accessor for RecipientView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280242770);
  OUTLINED_FUNCTION_4();
  (*(v5 + 8))(v0 + v3);
  v6 = *(v1 + 20);
  sub_26804E22C();
  OUTLINED_FUNCTION_4();
  (*(v7 + 8))(v0 + v3 + v6);
  v8 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280241DC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_26804D0BC();
    OUTLINED_FUNCTION_4();
    (*(v9 + 8))(v0 + v3 + v8);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2680156A0(uint64_t (*a1)(__n128))
{
  v1 = OUTLINED_FUNCTION_2_15();
  OUTLINED_FUNCTION_15(v1);
  v2.n128_f64[0] = OUTLINED_FUNCTION_4_7();

  return a1(v2);
}

uint64_t objectdestroy_18Tm()
{
  sub_26804D5CC();
  OUTLINED_FUNCTION_4();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_268015794()
{
  OUTLINED_FUNCTION_9();
  __swift_instantiateConcreteTypeFromMangledNameV2(v2);
  OUTLINED_FUNCTION_4();
  (*(v3 + 16))(v0, v1);
  return v0;
}

unint64_t sub_268015800()
{
  result = qword_2802436B8;
  if (!qword_2802436B8)
  {
    type metadata accessor for UnreadMessagesCompactCarPlayButtonView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802436B8);
  }

  return result;
}

uint64_t sub_268015858@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_26804C14C();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  (*(v7 + 16))(a2, a1, v4);
  sub_26804C13C();
  v8 = sub_26804E72C();

  (*(v6 + 8))(a1, v4);
  result = type metadata accessor for UnreadMessagesCompactCarPlayButtonView();
  *(a2 + *(result + 20)) = v8 > 1;
  return result;
}

uint64_t sub_268015934@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UnreadMessagesCompactCarPlayButtonView();
  sub_268021B00(*(v1 + *(v3 + 20)));
  v25 = sub_26804DD1C();
  v24 = sub_26804DC4C();
  KeyPath = swift_getKeyPath();
  sub_26804C13C();
  sub_267FB0C1C();
  v4 = sub_26804D95C();
  v6 = v5;
  v8 = v7;
  sub_26804D88C();
  v9 = sub_26804D93C();
  v11 = v10;
  v13 = v12;

  sub_267FB0FB4(v4, v6, v8 & 1);

  sub_26804DC9C();
  v14 = sub_26804D8FC();
  v16 = v15;
  v18 = v17;
  v20 = v19;

  sub_267FB0FB4(v9, v11, v13 & 1);

  result = sub_26804DFAC();
  *a1 = v25;
  *(a1 + 8) = KeyPath;
  *(a1 + 16) = v24;
  *(a1 + 24) = v14;
  *(a1 + 32) = v16;
  *(a1 + 40) = v18 & 1;
  *(a1 + 48) = v20;
  *(a1 + 56) = result;
  *(a1 + 64) = v22;
  return result;
}

uint64_t sub_268015AA8@<X0>(uint64_t a1@<X8>)
{
  sub_26804C14C();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v3);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, v1);
  return sub_268015858(v5, a1);
}

uint64_t sub_268015B90()
{
  result = sub_26804C14C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_268015C20()
{
  result = qword_2802436D0;
  if (!qword_2802436D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802436D8);
    sub_268003394();
    sub_267FC126C(&qword_2802436E0, &qword_2802436E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802436D0);
  }

  return result;
}

uint64_t sub_268015CD8(char a1)
{
  v2 = sub_26804C9AC();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v4 + 104);
  v9 = v4 + 104;
  v8 = v10;
  v11 = MEMORY[0x277D5D830];
  if ((a1 & 1) == 0)
  {
    v11 = MEMORY[0x277D5D838];
  }

  v8(v7, *v11, v2);
  v12 = MEMORY[0x277D5D848];
  sub_268016E38(&qword_2802413E0, MEMORY[0x277D5D848]);
  sub_268016E38(&qword_2802413E8, v12);
  sub_26804C82C();
  sub_26804E52C();
  return (*(v9 - 96))(v7, v2);
}

void sub_268015EFC()
{
  if (qword_280241130 != -1)
  {
    OUTLINED_FUNCTION_10_0();
  }

  v0 = sub_26804CD4C();
  __swift_project_value_buffer(v0, qword_2802487E0);
  v1 = sub_26804CD3C();
  v2 = sub_26804E88C();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = OUTLINED_FUNCTION_7_5();
    OUTLINED_FUNCTION_5(v3);
    OUTLINED_FUNCTION_8_6(&dword_267FA7000, v4, v5, "#SwiftUI+Utilities begin editing");
    OUTLINED_FUNCTION_1_8();
  }

  sub_268015CD8(1);
  sub_2680164A8();
  sub_26804E57C();
  sub_26801643C(1, &unk_2802436F1);
}

void sub_268015FC4()
{
  if (qword_280241130 != -1)
  {
    OUTLINED_FUNCTION_10_0();
  }

  v0 = sub_26804CD4C();
  __swift_project_value_buffer(v0, qword_2802487E0);
  v1 = sub_26804CD3C();
  v2 = sub_26804E88C();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = OUTLINED_FUNCTION_7_5();
    OUTLINED_FUNCTION_5(v3);
    OUTLINED_FUNCTION_8_6(&dword_267FA7000, v4, v5, "#SwiftUI+Utilities end editing");
    OUTLINED_FUNCTION_1_8();
  }

  sub_26804E55C();
  sub_26801643C(0, &unk_2802436F1);
}