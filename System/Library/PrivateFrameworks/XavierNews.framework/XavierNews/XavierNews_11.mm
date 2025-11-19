unsigned int *sub_217F3F318(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = (v8 & 0xFFFFFFFFFFFFFFF8) + 24;
  if ((v8 & 0xFFFFFFF8) == 0xFFFFFFE8)
  {
    v10 = a3 - v7 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if ((v8 & 0xFFFFFFF8) == 0xFFFFFFE8)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if ((v8 & 0xFFFFFFF8) != 0xFFFFFFE8)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, (v8 & 0xFFFFFFFFFFFFFFF8) + 24);
      result = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v9) = v14;
      }

      else
      {
        *(result + v9) = v14;
      }
    }

    else if (v13)
    {
      *(result + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(result + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(result + v9) = 0;
  }

  else if (v13)
  {
    *(result + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFE)
  {
    v18 = (result + v8) & 0xFFFFFFFFFFFFFFF8;
    if (a2 > 0x7FFFFFFE)
    {
      *(v18 + 8) = 0;
      *(v18 + 16) = 0;
      *(v18 + 8) = a2 - 0x7FFFFFFF;
    }

    else
    {
      *(v18 + 16) = a2;
    }
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

void sub_217F3F4D4()
{
  if (!qword_280C29080)
  {
    v0 = sub_217F4AD74();
    if (!v1)
    {
      atomic_store(v0, &qword_280C29080);
    }
  }
}

uint64_t sub_217F3F52C(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_217F3F5BC(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_217F3F6FC(void (*a1)(uint64_t *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    return v6;
  }

  v17 = MEMORY[0x277D84F90];
  sub_217EA0DA0(0, v5, 0);
  v6 = v17;
  for (i = (a3 + 40); ; i += 2)
  {
    v10 = *i;
    v15[0] = *(i - 1);
    v15[1] = v10;

    a1(&v16, v15);
    if (v4)
    {
      break;
    }

    v4 = 0;

    v11 = v16;
    v17 = v6;
    v13 = *(v6 + 16);
    v12 = *(v6 + 24);
    if (v13 >= v12 >> 1)
    {
      sub_217EA0DA0((v12 > 1), v13 + 1, 1);
      v6 = v17;
    }

    *(v6 + 16) = v13 + 1;
    *(v6 + 8 * v13 + 32) = v11;
    if (!--v5)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_217F3F828@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  MEMORY[0x21CEAEAC0]();
  *a3 = 2831206;
  *(a3 + 8) = 0xE300000000000000;
  *(a3 + 16) = a1;
  *(a3 + 24) = a2;
  *(a3 + 32) = 0;
  *(a3 + 40) = 0;
  *(a3 + 48) = 4;
}

uint64_t sub_217F3F8A4()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_217F3F8D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  MEMORY[0x21CEAEAC0]();
  MEMORY[0x21CEAEAC0](43, 0xE100000000000000);
  MEMORY[0x21CEAEAC0](a3, a4);
  *a5 = 2831462;
  *(a5 + 8) = 0xE300000000000000;
  *(a5 + 16) = a1;
  *(a5 + 24) = a2;
  *(a5 + 32) = a3;
  *(a5 + 40) = a4;
  *(a5 + 48) = 3;
}

uint64_t sub_217F3F9C8()
{
  v1 = *v0;
  sub_217F4B224();
  MEMORY[0x21CEAF1C0](v1);
  return sub_217F4B254();
}

uint64_t sub_217F3FA24()
{
  v1 = *v0;
  sub_217F4B224();
  MEMORY[0x21CEAF1C0](v1);
  return sub_217F4B254();
}

uint64_t sub_217F3FA98()
{
  v1 = *v0;
  sub_217F4B224();
  MEMORY[0x21CEAF1C0](v1);
  return sub_217F4B254();
}

double sub_217F3FADC@<D0>(uint64_t a1@<X8>)
{
  *&result = 12390;
  *a1 = xmmword_217F5A9A0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0;
  return result;
}

double sub_217F3FAF8@<D0>(uint64_t a1@<X8>)
{
  *&result = 12646;
  *a1 = xmmword_217F5A230;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0;
  return result;
}

double sub_217F3FB14@<D0>(uint64_t a1@<X8>)
{
  *&result = 12902;
  *a1 = xmmword_217F5A220;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0;
  return result;
}

double sub_217F3FB30@<D0>(uint64_t a1@<X8>)
{
  *&result = 13926;
  *a1 = xmmword_217F5A9B0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0;
  return result;
}

double sub_217F3FB4C@<D0>(uint64_t a1@<X8>)
{
  *&result = 14182;
  *a1 = xmmword_217F5A240;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0;
  return result;
}

double sub_217F3FB68@<D0>(uint64_t a1@<X8>)
{
  *&result = 0x732B306166;
  *a1 = xmmword_217F5A1F0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0;
  return result;
}

double sub_217F3FB84@<D0>(uint64_t a1@<X8>)
{
  *&result = 0x6D2B306166;
  *a1 = xmmword_217F5A200;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0;
  return result;
}

double sub_217F3FBA0@<D0>(uint64_t a1@<X8>)
{
  *&result = 0x6C2B306166;
  *a1 = xmmword_217F5A210;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0;
  return result;
}

double sub_217F3FBBC@<D0>(uint64_t a1@<X8>)
{
  MEMORY[0x21CEAEAC0]();
  *a1 = 724656486;
  *(a1 + 8) = 0xE400000000000000;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 1;
  return result;
}

double sub_217F3FC14@<D0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = *&aFa0S[8 * *a1];
  *(a2 + 8) = 0xE500000000000000;
  result = 0.0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0;
  return result;
}

double sub_217F3FC3C@<D0>(uint64_t a1@<X8>)
{
  MEMORY[0x21CEAEAC0]();
  *a1 = 2831718;
  *(a1 + 8) = 0xE300000000000000;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0;
  return result;
}

unsigned __int8 *sub_217F3FC90@<X0>(unsigned __int8 *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  if (v3 == 25)
  {
    v4 = 0xED00006E6F697469;
    v5 = 0x6445664F74736542;
  }

  else
  {
    if (v3 != 5)
    {
      *(a2 + 16) = 0u;
      *(a2 + 32) = 0u;
      *a2 = 0u;
      v6 = -1;
      goto LABEL_7;
    }

    v4 = 0xEF736569726F7453;
    v5 = 0x676E69646E657254;
  }

  MEMORY[0x21CEAEAC0](v5, v4);

  *a2 = 2831974;
  *(a2 + 8) = 0xE300000000000000;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  v6 = 5;
LABEL_7:
  *(a2 + 48) = v6;
  return result;
}

uint64_t sub_217F3FD68()
{
  v2 = *v0;
  v1 = v0[1];

  sub_217F4AB24();
}

uint64_t sub_217F3FDC0()
{
  v1 = *v0;
  v2 = v0[1];
  sub_217F4B224();
  sub_217F4AB24();
  return sub_217F4B254();
}

uint64_t sub_217F3FE0C()
{
  v1 = *v0;
  v2 = v0[1];
  sub_217F4B224();
  sub_217F4AB24();
  return sub_217F4B254();
}

uint64_t sub_217F3FE58()
{
  v2 = *v0;
  v1 = v0[1];

  sub_217F4AB24();
}

uint64_t sub_217F3FEB0()
{
  v1 = *v0;
  v2 = v0[1];
  sub_217F4B224();
  sub_217F4AB24();
  return sub_217F4B254();
}

uint64_t sub_217F3FF00@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5348, &unk_217F4CBB0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_217F4C8A0;
  MEMORY[0x21CEAEAC0](v5, v4);
  *(v6 + 32) = 2831206;
  *(v6 + 40) = 0xE300000000000000;
  *(v6 + 48) = v5;
  *(v6 + 56) = v4;
  *(v6 + 64) = 0;
  *(v6 + 72) = 0;
  *(v6 + 80) = 4;
  v7 = a2[3];
  v8 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v7);
  v9 = *(v8 + 112);

  v10 = v9(v7, v8);
  v12 = v11;
  MEMORY[0x21CEAEAC0]();
  MEMORY[0x21CEAEAC0](43, 0xE100000000000000);
  MEMORY[0x21CEAEAC0](v5, v4);
  *(v6 + 88) = 2831462;
  *(v6 + 96) = 0xE300000000000000;
  *(v6 + 104) = v10;
  *(v6 + 112) = v12;
  *(v6 + 120) = v5;
  *(v6 + 128) = v4;
  *(v6 + 136) = 3;
  *a3 = v6;
}

char *sub_217F40050(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = 2831206;
  v105 = a4;
  v106 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v104);
  (*(*(a4 - 8) + 16))(boxed_opaque_existential_1, a1, a4);
  LODWORD(v11) = *a2;
  v12 = *(a3 + 8);
  v13 = *(a3 + 16);
  v14 = v105;
  v15 = v106;
  __swift_project_boxed_opaque_existential_1(v104, v105);
  v16 = (*(v15 + 112))(v14, v15);
  v18 = v17;
  v101 = 2831206;
  v102 = 0xE300000000000000;
  MEMORY[0x21CEAEAC0]();
  v19 = 2831206;
  v20 = 0xE300000000000000;
  v21 = sub_217E8DE90(0, 1, 1, MEMORY[0x277D84F90]);
  v23 = *(v21 + 16);
  v22 = *(v21 + 24);
  v24 = (v23 + 1);
  if (v23 >= v22 >> 1)
  {
    goto LABEL_99;
  }

  while (1)
  {
    *(v21 + 16) = v24;
    v25 = v21 + 56 * v23;
    *(v25 + 32) = v19;
    *(v25 + 40) = v20;
    *(v25 + 48) = v16;
    *(v25 + 56) = v18;
    *(v25 + 64) = 0;
    *(v25 + 72) = 0;
    *(v25 + 80) = 4;
    v103 = v21;
    if (v11 == 25)
    {
      v26 = 0xED00006E6F697469;
      v27 = 0x6445664F74736542;
    }

    else
    {
      if (v11 != 5)
      {
        goto LABEL_9;
      }

      v26 = 0xEF736569726F7453;
      v27 = 0x676E69646E657254;
    }

    v101 = v9 + 768;
    v102 = 0xE300000000000000;
    MEMORY[0x21CEAEAC0](v27, v26);

    v28 = v101;
    v29 = v102;
    v31 = *(v21 + 16);
    v30 = *(v21 + 24);
    if (v31 >= v30 >> 1)
    {
      v21 = sub_217E8DE90((v30 > 1), v31 + 1, 1, v21);
    }

    *(v21 + 16) = v31 + 1;
    v32 = v21 + 56 * v31;
    *(v32 + 32) = v28;
    *(v32 + 40) = v29;
    *(v32 + 48) = 0u;
    *(v32 + 64) = 0u;
    *(v32 + 80) = 5;
    v103 = v21;
LABEL_9:
    v33 = v105;
    v34 = v106;
    v18 = v104;
    __swift_project_boxed_opaque_existential_1(v104, v105);
    v35 = (*(v34 + 120))(v33, v34);
    v11 = v99;
    MEMORY[0x28223BE20](v35, v36);
    v98[2] = v104;
    v21 = sub_217F3F6FC(sub_217F40EAC, v98, v35);

    v20 = *(v21 + 16);
    v16 = MEMORY[0x277D84F90];
    if (!v20)
    {
      break;
    }

    v23 = 0;
    v24 = &_s14descr2829CD401O7FeatureON;
    while (1)
    {
      v22 = *(v21 + 16);
      if (v23 >= v22)
      {
        break;
      }

      v11 = *(v21 + 32 + 8 * v23);
      v18 = v11[2];
      v9 = *(v16 + 2);
      v19 = v18 + v9;
      if (__OFADD__(v9, v18))
      {
        goto LABEL_95;
      }

      v37 = *(v21 + 32 + 8 * v23);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v19 <= *(v16 + 3) >> 1)
      {
        if (v11[2])
        {
          goto LABEL_23;
        }
      }

      else
      {
        if (v9 <= v19)
        {
          v39 = v18 + v9;
        }

        else
        {
          v39 = v9;
        }

        v16 = sub_217E8DE90(isUniquelyReferenced_nonNull_native, v39, 1, v16);
        if (v11[2])
        {
LABEL_23:
          v22 = *(v16 + 2);
          if (((*(v16 + 3) >> 1) - v22) < v18)
          {
            goto LABEL_97;
          }

          swift_arrayInitWithCopy();

          if (v18)
          {
            v40 = *(v16 + 2);
            v41 = __OFADD__(v40, v18);
            v22 = v18 + v40;
            if (v41)
            {
              goto LABEL_98;
            }

            *(v16 + 2) = v22;
          }

          goto LABEL_12;
        }
      }

      if (v18)
      {
        goto LABEL_96;
      }

LABEL_12:
      if (v20 == ++v23)
      {
        goto LABEL_27;
      }
    }

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
    v21 = sub_217E8DE90((v22 > 1), v24, 1, v21);
  }

LABEL_27:

  sub_217E80F38(v16);
  v42 = v105;
  v43 = v106;
  __swift_project_boxed_opaque_existential_1(v104, v105);
  v44 = (*(v43 + 40))(v42, v43);
  if (v45)
  {
    goto LABEL_60;
  }

  if (v44 < 1)
  {
    if ((*&v13 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_38;
    }

    __break(1u);
LABEL_101:
    __break(1u);
    goto LABEL_102;
  }

  if ((*&v13 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_103:
    __break(1u);
    goto LABEL_104;
  }

  if (v13 <= -9.22337204e18)
  {
LABEL_104:
    __break(1u);
    goto LABEL_105;
  }

  if (v13 >= 9.22337204e18)
  {
LABEL_105:
    __break(1u);
LABEL_106:
    __break(1u);
    goto LABEL_107;
  }

  if (v44 <= v13)
  {
    v42 = v103;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_34;
    }

    goto LABEL_113;
  }

LABEL_38:
  if (v13 <= -9.22337204e18)
  {
    goto LABEL_101;
  }

  if (v13 >= 9.22337204e18)
  {
LABEL_102:
    __break(1u);
    goto LABEL_103;
  }

  if (v44 <= v13)
  {
    if ((*&v12 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_51;
    }

    goto LABEL_106;
  }

  if ((*&v12 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_111;
  }

  if (v12 <= -9.22337204e18)
  {
LABEL_111:
    __break(1u);
    goto LABEL_112;
  }

  if (v12 < 9.22337204e18)
  {
    if (v44 <= v12)
    {
      v42 = v103;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v42 = sub_217E8DE90(0, *(v42 + 2) + 1, 1, v42);
      }

      v51 = *(v42 + 2);
      v50 = *(v42 + 3);
      if (v51 >= v50 >> 1)
      {
        v42 = sub_217E8DE90((v50 > 1), v51 + 1, 1, v42);
      }

      *(v42 + 2) = v51 + 1;
      v48 = &v42[56 * v51];
      v49 = xmmword_217F5A200;
      goto LABEL_59;
    }

LABEL_51:
    if (v12 > -9.22337204e18)
    {
      if (v12 < 9.22337204e18)
      {
        if (v44 > v12)
        {
          v42 = v103;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v42 = sub_217E8DE90(0, *(v42 + 2) + 1, 1, v42);
          }

          v53 = *(v42 + 2);
          v52 = *(v42 + 3);
          if (v53 >= v52 >> 1)
          {
            v42 = sub_217E8DE90((v52 > 1), v53 + 1, 1, v42);
          }

          *(v42 + 2) = v53 + 1;
          v48 = &v42[56 * v53];
          v49 = xmmword_217F5A210;
          goto LABEL_59;
        }

        goto LABEL_60;
      }

LABEL_108:
      __break(1u);
LABEL_109:
      v42 = sub_217E8DE90(0, *(v42 + 2) + 1, 1, v42);
LABEL_63:
      v60 = *(v42 + 2);
      v59 = *(v42 + 3);
      if (v60 >= v59 >> 1)
      {
        v42 = sub_217E8DE90((v59 > 1), v60 + 1, 1, v42);
      }

      *(v42 + 2) = v60 + 1;
      v61 = &v42[56 * v60];
      v62 = xmmword_217F5A230;
      goto LABEL_71;
    }

LABEL_107:
    __break(1u);
    goto LABEL_108;
  }

LABEL_112:
  __break(1u);
LABEL_113:
  v42 = sub_217E8DE90(0, *(v42 + 2) + 1, 1, v42);
LABEL_34:
  v47 = *(v42 + 2);
  v46 = *(v42 + 3);
  if (v47 >= v46 >> 1)
  {
    v42 = sub_217E8DE90((v46 > 1), v47 + 1, 1, v42);
  }

  *(v42 + 2) = v47 + 1;
  v48 = &v42[56 * v47];
  v49 = xmmword_217F5A1F0;
LABEL_59:
  *(v48 + 2) = v49;
  *(v48 + 3) = 0u;
  *(v48 + 4) = 0u;
  v48[80] = 0;
  v103 = v42;
LABEL_60:
  v54 = v105;
  v55 = v106;
  __swift_project_boxed_opaque_existential_1(v104, v105);
  v56 = (*(v55 + 56))(v54, v55);
  if (v56 != 2)
  {
    v57 = v56;
    v42 = v103;
    v58 = swift_isUniquelyReferenced_nonNull_native();
    if (v57)
    {
      if ((v58 & 1) == 0)
      {
        goto LABEL_109;
      }

      goto LABEL_63;
    }

    if ((v58 & 1) == 0)
    {
      v42 = sub_217E8DE90(0, *(v42 + 2) + 1, 1, v42);
    }

    v64 = *(v42 + 2);
    v63 = *(v42 + 3);
    if (v64 >= v63 >> 1)
    {
      v42 = sub_217E8DE90((v63 > 1), v64 + 1, 1, v42);
    }

    *(v42 + 2) = v64 + 1;
    v61 = &v42[56 * v64];
    v62 = xmmword_217F5A220;
LABEL_71:
    *(v61 + 2) = v62;
    *(v61 + 3) = 0u;
    *(v61 + 4) = 0u;
    v61[80] = 0;
    v103 = v42;
  }

  v65 = v105;
  v66 = v106;
  __swift_project_boxed_opaque_existential_1(v104, v105);
  if ((*(v66 + 64))(v65, v66))
  {
    v67 = v105;
    v68 = v106;
    __swift_project_boxed_opaque_existential_1(v104, v105);
    v69 = (*(v68 + 112))(v67, v68);
    v101 = 2831718;
    v102 = 0xE300000000000000;
    MEMORY[0x21CEAEAC0](v69);

    v70 = v101;
    v71 = v102;
    v72 = v103;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v72 = sub_217E8DE90(0, *(v72 + 2) + 1, 1, v72);
    }

    v74 = *(v72 + 2);
    v73 = *(v72 + 3);
    if (v74 >= v73 >> 1)
    {
      v72 = sub_217E8DE90((v73 > 1), v74 + 1, 1, v72);
    }

    *(v72 + 2) = v74 + 1;
    v75 = &v72[56 * v74];
    *(v75 + 4) = v70;
    *(v75 + 5) = v71;
    *(v75 + 3) = 0u;
    *(v75 + 4) = 0u;
    v75[80] = 0;
    v103 = v72;
  }

  v76 = v105;
  v77 = v106;
  __swift_project_boxed_opaque_existential_1(v104, v105);
  if ((*(v77 + 48))(v76, v77))
  {
    v78 = v103;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v78 = sub_217E8DE90(0, *(v78 + 2) + 1, 1, v78);
    }

    v80 = *(v78 + 2);
    v79 = *(v78 + 3);
    if (v80 >= v79 >> 1)
    {
      v78 = sub_217E8DE90((v79 > 1), v80 + 1, 1, v78);
    }

    *(v78 + 2) = v80 + 1;
    v81 = &v78[56 * v80];
    *(v81 + 2) = xmmword_217F5A240;
    *(v81 + 3) = 0u;
    *(v81 + 4) = 0u;
    v81[80] = 0;
    v103 = v78;
  }

  v82 = v105;
  v83 = v106;
  __swift_project_boxed_opaque_existential_1(v104, v105);
  v84 = (*(v83 + 24))(v82, v83);
  if (v84)
  {
    v85 = *(v84 + 16);
    if (v85)
    {
      v100 = MEMORY[0x277D84F90];
      v86 = v84;
      sub_217EA0D80(0, v85, 0);
      v87 = v100;
      v99[1] = v86;
      v88 = (v86 + 40);
      do
      {
        v89 = *(v88 - 1);
        v90 = *v88;
        v101 = 724656486;
        v102 = 0xE400000000000000;

        MEMORY[0x21CEAEAC0](v89, v90);

        v91 = v101;
        v92 = v102;
        v100 = v87;
        v94 = *(v87 + 16);
        v93 = *(v87 + 24);
        if (v94 >= v93 >> 1)
        {
          sub_217EA0D80((v93 > 1), v94 + 1, 1);
          v87 = v100;
        }

        *(v87 + 16) = v94 + 1;
        v95 = v87 + 56 * v94;
        *(v95 + 32) = v91;
        *(v95 + 40) = v92;
        *(v95 + 48) = 0u;
        *(v95 + 64) = 0u;
        *(v95 + 80) = 1;
        v88 += 2;
        --v85;
      }

      while (v85);
    }

    else
    {

      v87 = MEMORY[0x277D84F90];
    }

    sub_217E80F38(v87);
  }

  v96 = v103;
  __swift_destroy_boxed_opaque_existential_1(v104);
  return v96;
}

uint64_t sub_217F40B54(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = *a2;
  v4 = a2[1];

  if (v3 == v5 && v2 == v4)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_217F4B144();
  }

  return v7 & 1;
}

unint64_t sub_217F40BD8()
{
  result = qword_27CBF7518;
  if (!qword_27CBF7518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF7518);
  }

  return result;
}

unint64_t sub_217F40C30()
{
  result = qword_280C290A8[0];
  if (!qword_280C290A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280C290A8);
  }

  return result;
}

uint64_t _s14descr2829CD401O17ArticleLengthTypeOwet(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s14descr2829CD401O17ArticleLengthTypeOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_217F40DF4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 49))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 48);
  if (v3 <= 5)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_217F40E3C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 251;
    if (a3 >= 0xFB)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

uint64_t Classic.AllowListTag.identifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t Classic.AllowListTag.init(identifier:score:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  *(a3 + 16) = a4;
  return result;
}

unint64_t sub_217F40F20@<X0>(void *a1@<X8>)
{
  v2 = MEMORY[0x277D84F90];
  *a1 = MEMORY[0x277D84F90];
  a1[1] = v2;
  result = sub_217ECC604(v2);
  a1[2] = result;
  return result;
}

uint64_t sub_217F40F54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(a2 + 16);

  if (!v5)
  {
    v8 = MEMORY[0x277D84F98];
LABEL_17:

    v29 = *(a1 + 16);
    if (!v29)
    {
LABEL_32:

      *a3 = a1;
      a3[1] = a2;
      a3[2] = v8;
      return result;
    }

    v30 = 0;
    v31 = (a1 + 48);
    while (1)
    {
      if (v30 >= *(a1 + 16))
      {
        goto LABEL_35;
      }

      v36 = *(v31 - 2);
      v35 = *(v31 - 1);
      v37 = *v31;
      swift_bridgeObjectRetain_n();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v39 = sub_217E8E88C(v36, v35);
      v41 = v8[2];
      v42 = (v40 & 1) == 0;
      v20 = __OFADD__(v41, v42);
      v43 = v41 + v42;
      if (v20)
      {
        goto LABEL_36;
      }

      v44 = v40;
      if (v8[3] < v43)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_27;
      }

      v50 = v39;
      sub_217E90AB0();
      v39 = v50;
      if (v44)
      {
LABEL_19:
        v32 = v39;

        v33 = (v8[7] + 24 * v32);
        v34 = v33[1];
        *v33 = v36;
        v33[1] = v35;
        v33[2] = v37;

        goto LABEL_20;
      }

LABEL_28:
      v8[(v39 >> 6) + 8] |= 1 << v39;
      v46 = (v8[6] + 16 * v39);
      *v46 = v36;
      v46[1] = v35;
      v47 = (v8[7] + 24 * v39);
      *v47 = v36;
      v47[1] = v35;
      v47[2] = v37;
      v48 = v8[2];
      v20 = __OFADD__(v48, 1);
      v49 = v48 + 1;
      if (v20)
      {
        goto LABEL_38;
      }

      v8[2] = v49;
LABEL_20:
      ++v30;
      v31 += 3;
      if (v29 == v30)
      {
        goto LABEL_32;
      }
    }

    sub_217E94494(v43, isUniquelyReferenced_nonNull_native);
    v39 = sub_217E8E88C(v36, v35);
    if ((v44 & 1) != (v45 & 1))
    {
      goto LABEL_39;
    }

LABEL_27:
    if (v44)
    {
      goto LABEL_19;
    }

    goto LABEL_28;
  }

  v6 = 0;
  v7 = (a2 + 48);
  v8 = MEMORY[0x277D84F98];
  while (v6 < *(a2 + 16))
  {
    v13 = *(v7 - 2);
    v12 = *(v7 - 1);
    v14 = *v7;
    swift_bridgeObjectRetain_n();
    v15 = swift_isUniquelyReferenced_nonNull_native();
    v16 = sub_217E8E88C(v13, v12);
    v18 = v8[2];
    v19 = (v17 & 1) == 0;
    v20 = __OFADD__(v18, v19);
    v21 = v18 + v19;
    if (v20)
    {
      goto LABEL_34;
    }

    v22 = v17;
    if (v8[3] < v21)
    {
      sub_217E94494(v21, v15);
      v16 = sub_217E8E88C(v13, v12);
      if ((v22 & 1) != (v23 & 1))
      {
        goto LABEL_39;
      }

LABEL_11:
      if (v22)
      {
        goto LABEL_3;
      }

      goto LABEL_12;
    }

    if (v15)
    {
      goto LABEL_11;
    }

    v28 = v16;
    sub_217E90AB0();
    v16 = v28;
    if (v22)
    {
LABEL_3:
      v9 = v16;

      v10 = (v8[7] + 24 * v9);
      v11 = v10[1];
      *v10 = v13;
      v10[1] = v12;
      v10[2] = v14;

      goto LABEL_4;
    }

LABEL_12:
    v8[(v16 >> 6) + 8] |= 1 << v16;
    v24 = (v8[6] + 16 * v16);
    *v24 = v13;
    v24[1] = v12;
    v25 = (v8[7] + 24 * v16);
    *v25 = v13;
    v25[1] = v12;
    v25[2] = v14;
    v26 = v8[2];
    v20 = __OFADD__(v26, 1);
    v27 = v26 + 1;
    if (v20)
    {
      goto LABEL_37;
    }

    v8[2] = v27;
LABEL_4:
    ++v6;
    v7 += 3;
    if (v5 == v6)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  result = sub_217F4B1C4();
  __break(1u);
  return result;
}

uint64_t sub_217F412BC(uint64_t a1, uint64_t a2)
{
  if (*(*(v2 + 16) + 16))
  {
    sub_217E8E88C(a1, a2);
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

uint64_t sub_217F412F4(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  if (*(v3 + 16) && (v4 = sub_217E8E88C(a1, a2), (v5 & 1) != 0))
  {
    return *(*(v3 + 56) + 24 * v4 + 16);
  }

  else
  {
    return 0;
  }
}

uint64_t Classic.AllowListTag.debugDescription.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_217F4ADD4();
  MEMORY[0x21CEAEAC0](0x696669746E656449, 0xEC000000203A7265);
  MEMORY[0x21CEAEAC0](v1, v2);
  MEMORY[0x21CEAEAC0](0x3A65726F6353202CLL, 0xE900000000000020);
  sub_217F4ACB4();
  return 0;
}

uint64_t sub_217F41410()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_217F4ADD4();
  MEMORY[0x21CEAEAC0](0x696669746E656449, 0xEC000000203A7265);
  MEMORY[0x21CEAEAC0](v1, v2);
  MEMORY[0x21CEAEAC0](0x3A65726F6353202CLL, 0xE900000000000020);
  sub_217F4ACB4();
  return 0;
}

uint64_t sub_217F414DC()
{
  v1 = *v0;
  v2 = v0[1];
  sub_217F4ADD4();

  strcpy(v6, "Default Tags: ");
  v3 = MEMORY[0x21CEAEBA0](v1, &type metadata for Classic.AllowListTag);
  MEMORY[0x21CEAEAC0](v3);

  MEMORY[0x21CEAEAC0](0xD000000000000011, 0x8000000217F61380);
  v4 = MEMORY[0x21CEAEBA0](v2, &type metadata for Classic.AllowListTag);
  MEMORY[0x21CEAEAC0](v4);

  return v6[0];
}

uint64_t sub_217F415BC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_217F41604(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_217F41654(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_217F4169C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t TagGroupingReason.hashValue.getter()
{
  v1 = *v0;
  sub_217F4B224();
  MEMORY[0x21CEAF1C0](v1);
  return sub_217F4B254();
}

uint64_t sub_217F41788()
{
  v1 = *v0;
  sub_217F4B224();
  MEMORY[0x21CEAF1C0](v1);
  return sub_217F4B254();
}

uint64_t sub_217F417FC()
{
  v1 = *v0;
  sub_217F4B224();
  MEMORY[0x21CEAF1C0](v1);
  return sub_217F4B254();
}

unint64_t sub_217F41844()
{
  result = qword_27CBF7520;
  if (!qword_27CBF7520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF7520);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TagGroupingReason(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for TagGroupingReason(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_217F41A4C@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>, double a7@<D4>, double a8@<D5>, double a9@<D6>, double a10@<D7>, uint64_t a11)
{
  *a2 = a3;
  *(a2 + 8) = a4;
  *(a2 + 16) = a5;
  *(a2 + 24) = a6;
  *(a2 + 32) = a7;
  *(a2 + 40) = result;
  *(a2 + 48) = a8;
  *(a2 + 56) = a9;
  *(a2 + 64) = a10;
  *(a2 + 72) = a11;
  return result;
}

unint64_t sub_217F41A70(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v1 = 0xD000000000000017;
    if (a1 != 8)
    {
      v1 = 0xD000000000000014;
    }

    if (a1 == 7)
    {
      v1 = 0xD00000000000001CLL;
    }

    v2 = 0xD000000000000016;
    if (a1 != 5)
    {
      v2 = 0xD000000000000019;
    }

    v3 = a1 <= 6u;
  }

  else
  {
    v1 = 0x6E6F697461636F6CLL;
    if (a1 != 3)
    {
      v1 = 0xD000000000000014;
    }

    if (a1 == 2)
    {
      v1 = 0xD000000000000018;
    }

    v2 = 0xD000000000000019;
    if (a1)
    {
      v2 = 0xD000000000000015;
    }

    v3 = a1 <= 1u;
  }

  if (v3)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_217F41BDC()
{
  v1 = *v0;
  sub_217F4B224();
  MEMORY[0x21CEAF1C0](v1);
  return sub_217F4B254();
}

uint64_t sub_217F41C50()
{
  v1 = *v0;
  sub_217F4B224();
  MEMORY[0x21CEAF1C0](v1);
  return sub_217F4B254();
}

uint64_t sub_217F41C9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217F42728(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217F41CDC(uint64_t a1)
{
  v2 = sub_217F423DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217F41D18(uint64_t a1)
{
  v2 = sub_217F423DC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_217F41D54(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF7528, &qword_217F5AD80);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v21 - v8;
  v10 = *v1;
  v21 = v1[1];
  v12 = v1[2];
  v11 = v1[3];
  v13 = v1[4];
  v14 = v1[5];
  v16 = v1[6];
  v15 = v1[7];
  v18 = v1[8];
  v17 = v1[9];
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217F423DC();
  sub_217F4B294();
  v31 = 0;
  sub_217F4B0A4();
  if (!v2)
  {
    v30 = 1;
    sub_217F4B0A4();
    v29 = 2;
    sub_217F4B0A4();
    v28 = 3;
    sub_217F4B0A4();
    v27 = 4;
    sub_217F4B0A4();
    v26 = 5;
    sub_217F4B0B4();
    v25 = 6;
    sub_217F4B0A4();
    v24 = 7;
    sub_217F4B0A4();
    v23 = 8;
    sub_217F4B0A4();
    v22 = 9;
    sub_217F4B0A4();
  }

  return (*(v5 + 8))(v9, v4);
}

uint64_t sub_217F42014@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF7538, qword_217F5AD88);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v32 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217F423DC();
  sub_217F4B274();
  if (!v2)
  {
    v42 = 0;
    sub_217F4AFA4();
    v13 = v12;
    v41 = 1;
    sub_217F4AFA4();
    v15 = v14;
    v40 = 2;
    sub_217F4AFA4();
    v17 = v16;
    v39 = 3;
    sub_217F4AFA4();
    v19 = v18;
    v38 = 4;
    sub_217F4AFA4();
    v21 = v20;
    v37 = 5;
    v22 = sub_217F4AFB4();
    v36 = 6;
    sub_217F4AFA4();
    v24 = v23;
    v35 = 7;
    sub_217F4AFA4();
    v27 = v26;
    v34 = 8;
    sub_217F4AFA4();
    v29 = v28;
    v33 = 9;
    sub_217F4AFA4();
    v32 = v30;
    (*(v6 + 8))(v10, v5);
    *a2 = v13;
    a2[1] = v15;
    a2[2] = v17;
    a2[3] = v19;
    a2[4] = v21;
    a2[5] = v22;
    a2[6] = v24;
    a2[7] = v27;
    v31 = v32;
    a2[8] = v29;
    a2[9] = v31;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

__n128 sub_217F4232C@<Q0>(uint64_t a1@<X8>)
{
  __asm { FMOV            V0.2D, #1.0 }

  *a1 = result;
  *(a1 + 16) = xmmword_217F5AD60;
  *(a1 + 32) = 0x408F400000000000;
  *(a1 + 40) = 10;
  *(a1 + 48) = xmmword_217F5AD70;
  *(a1 + 64) = result;
  return result;
}

BOOL sub_217F4235C(uint64_t a1, uint64_t a2)
{
  result = 0;
  v4.f64[0] = *(a1 + 32);
  v5.f64[0] = *(a2 + 32);
  v4.f64[1] = *(a1 + 48);
  v5.f64[1] = *(a2 + 48);
  if ((vminv_u8(vmovn_s16(vuzp1q_s16(vuzp1q_s32(vceqq_f64(*a1, *a2), vceqq_f64(*(a1 + 16), *(a2 + 16))), vuzp1q_s32(vceqq_f64(v4, v5), vceqq_f64(*(a1 + 56), *(a2 + 56)))))) & 1) != 0 && *(a1 + 40) == *(a2 + 40))
  {
    return *(a1 + 72) == *(a2 + 72);
  }

  return result;
}

unint64_t sub_217F423DC()
{
  result = qword_27CBF7530;
  if (!qword_27CBF7530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF7530);
  }

  return result;
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_217F4244C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 80))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_217F4246C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
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

  *(result + 80) = v3;
  return result;
}

uint64_t _s14descr2829CD401O23TagScoringConfigurationV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s14descr2829CD401O23TagScoringConfigurationV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_217F42624()
{
  result = qword_27CBF7540;
  if (!qword_27CBF7540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF7540);
  }

  return result;
}

unint64_t sub_217F4267C()
{
  result = qword_27CBF7548;
  if (!qword_27CBF7548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBF7548);
  }

  return result;
}

unint64_t sub_217F426D4()
{
  result = qword_27CBF7550[0];
  if (!qword_27CBF7550[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CBF7550);
  }

  return result;
}

uint64_t sub_217F42728(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000019 && 0x8000000217F613A0 == a2;
  if (v3 || (sub_217F4B144() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000217F613C0 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000217F613E0 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E6F697461636F6CLL && a2 == 0xEE00746867696557 || (sub_217F4B144() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000217F61400 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000217F61420 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000019 && 0x8000000217F61440 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD00000000000001CLL && 0x8000000217F61460 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000217F61480 == a2 || (sub_217F4B144() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000217F614A0 == a2)
  {

    return 9;
  }

  else
  {
    v6 = sub_217F4B144();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

uint64_t sub_217F42A54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double *a5, __int128 *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v14 = *a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF52D0, &qword_217F4C930);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_217F4BC20;
  MEMORY[0x21CEAEAC0](a2, a3);
  *(inited + 32) = 2831206;
  *(inited + 40) = 0xE300000000000000;
  v47 = sub_217E97288(inited);
  swift_setDeallocating();
  sub_217E97320(inited + 32);
  v16 = *(a4 + 24);
  v57[1] = *(a4 + 40);
  v57[0] = v16;
  v17 = *a6;
  v56[1] = a6[1];
  v56[0] = v17;
  v18 = a7 + 64;
  v19 = 1 << *(a7 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & *(a7 + 64);
  v22 = (v19 + 63) >> 6;
  v52 = a7;

  v23 = 0;
  v24 = MEMORY[0x277D84F98];
  v50 = v22;
  v51 = a7 + 64;
  while (v21)
  {
    v26 = v23;
LABEL_11:
    v27 = __clz(__rbit64(v21)) | (v26 << 6);
    v28 = (*(v52 + 48) + 16 * v27);
    v29 = *v28;
    v30 = v28[1];
    v31 = (*(v52 + 56) + (v27 << 6));
    v53 = *v31;
    v54 = v31[1];
    *v55 = v31[2];
    *&v55[9] = *(v31 + 41);

    MEMORY[0x21CEAEAC0](v29, v30);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34 = sub_217E8E88C(2831206, 0xE300000000000000);
    v35 = v24[2];
    v36 = (v33 & 1) == 0;
    v37 = v35 + v36;
    if (__OFADD__(v35, v36))
    {
      goto LABEL_22;
    }

    v38 = v33;
    if (v24[3] >= v37)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_217E90C38();
      }
    }

    else
    {
      sub_217E94764(v37, isUniquelyReferenced_nonNull_native);
      v39 = sub_217E8E88C(2831206, 0xE300000000000000);
      if ((v38 & 1) != (v40 & 1))
      {
        goto LABEL_24;
      }

      v34 = v39;
    }

    v21 &= v21 - 1;
    if (v38)
    {

      v25 = (v24[7] + (v34 << 6));
      *v25 = v53;
      v25[1] = v54;
      v25[2] = *v55;
      *(v25 + 41) = *&v55[9];
    }

    else
    {
      v24[(v34 >> 6) + 8] |= 1 << v34;
      v41 = (v24[6] + 16 * v34);
      *v41 = 2831206;
      v41[1] = 0xE300000000000000;
      v42 = (v24[7] + (v34 << 6));
      *(v42 + 41) = *&v55[9];
      v42[1] = v54;
      v42[2] = *v55;
      *v42 = v53;

      v43 = v24[2];
      v44 = __OFADD__(v43, 1);
      v45 = v43 + 1;
      if (v44)
      {
        goto LABEL_23;
      }

      v24[2] = v45;
    }

    v23 = v26;
    v22 = v50;
    v18 = v51;
  }

  while (1)
  {
    v26 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v26 >= v22)
    {

      sub_217F42DD0(v14, 1.0, a1, v47, v57, v56, v24, a8, a9);
    }

    v21 = *(v18 + 8 * v26);
    ++v23;
    if (v21)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_217F4B1C4();
  __break(1u);
  return result;
}

uint64_t sub_217F42DD0(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v43 = a7;
  v16 = *(a9 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17 = *(AssociatedTypeWitness - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness, v19);
  v21 = &v39 - v20;
  v22 = *a5;
  v23 = a5[1];
  v24 = a5[2];
  v41 = a5[3];
  v42 = v24;
  v25 = *a6;
  v26 = a6[1];
  v27 = a6[2];
  v28 = a6[3];
  if (qword_280C28EB8 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5278, &qword_217F4BF30);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_217F4BC20;
  v30 = MEMORY[0x277D837D0];
  v31 = sub_217F4ACC4();
  v40 = a4;
  v33 = v32;
  *(v29 + 56) = v30;
  *(v29 + 64) = sub_217E86438();
  *(v29 + 32) = v31;
  *(v29 + 40) = v33;
  sub_217F4AD54();
  sub_217F4AA44();

  *&v45 = v22;
  *(&v45 + 1) = v23;
  MEMORY[0x28223BE20](v34, v35);
  *(&v39 - 8) = a8;
  *(&v39 - 7) = a9;
  *(&v39 - 6) = a1;
  *(&v39 - 5) = a2;
  *(&v39 - 4) = v25;
  *(&v39 - 3) = v26;
  *(&v39 - 2) = v27;
  *(&v39 - 1) = v28;
  ClassicAggregateContextType.updateBaseline(with:updateBlock:)(&v45, sub_217F44864, (&v39 - 10), a8, a9);
  *&v45 = v22;
  *(&v45 + 1) = v23;
  v36 = ClassicAggregateContextType.lookupBaseline(with:)(&v45, a8, a9, v21);
  *&v45 = v42;
  *(&v45 + 1) = v41;
  MEMORY[0x28223BE20](v36, v37);
  *(&v39 - 10) = a8;
  *(&v39 - 9) = a9;
  *(&v39 - 8) = v43;
  *(&v39 - 7) = v21;
  *(&v39 - 6) = a1;
  *(&v39 - 5) = a2;
  *(&v39 - 4) = v25;
  *(&v39 - 3) = v26;
  *(&v39 - 2) = v27;
  *(&v39 - 1) = v28;
  ClassicAggregateContextType.update(with:using:updateBlock:)(v40, &v45, sub_217F44878, (&v39 - 12), a8, a9);
  return (*(v17 + 8))(v21, AssociatedTypeWitness);
}

uint64_t sub_217F430CC(uint64_t a1, void *a2, uint64_t a3, double *a4, __int128 *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v67 = *(a3 + 40);
  v68 = *(a3 + 24);
  v74 = *(a3 + 64);
  v12 = *a4;
  v13 = a4[1];
  v14 = a4[2];
  v65 = a5[1];
  v66 = *a5;
  v15 = a2[3];
  v16 = a2[4];
  v17 = __swift_project_boxed_opaque_existential_2(a2, v15);
  v18 = a2[3];
  v19 = a2[5];
  __swift_project_boxed_opaque_existential_2(a2, v18);
  (*(v19 + 8))(v75, v18, v19);
  sub_217ECB400(&v76);
  v20 = sub_217F40050(v17, v75, &v76, v15, v16);
  v70 = a7;
  v71 = a8;
  v69 = a1;
  v21 = ClassicAggregateContextType.validate(features:publisherTopicMinimumEventCount:)(v20, v74, a7, a8);

  v22 = *(v21 + 16);
  if (v22)
  {
    *&v76 = MEMORY[0x277D84F90];
    sub_217EA0864(0, v22, 0);
    v23 = v76;
    v24 = (v21 + 40);
    do
    {
      v26 = *(v24 - 1);
      v25 = *v24;

      *&v76 = v23;
      v28 = *(v23 + 16);
      v27 = *(v23 + 24);
      if (v28 >= v27 >> 1)
      {
        sub_217EA0864((v27 > 1), v28 + 1, 1);
        v23 = v76;
      }

      v24 += 7;
      *(v23 + 16) = v28 + 1;
      v29 = v23 + 16 * v28;
      *(v29 + 32) = v26;
      *(v29 + 40) = v25;
      --v22;
    }

    while (v22);
  }

  else
  {

    v23 = MEMORY[0x277D84F90];
  }

  v30 = a2[3];
  v31 = a2[5];
  __swift_project_boxed_opaque_existential_2(a2, v30);
  (*(v31 + 8))(&v76, v30, v31);
  if (v76 - 23 < 0x34 || ((1 << v76) & 0x3FFFDF) != 0)
  {
    v13 = 1.0;
  }

  else if (v76 == 5)
  {
    v13 = v14;
  }

  v32 = a6 + 64;
  v33 = 1 << *(a6 + 32);
  v34 = -1;
  if (v33 < 64)
  {
    v34 = ~(-1 << v33);
  }

  v35 = v34 & *(a6 + 64);
  v36 = (v33 + 63) >> 6;

  v37 = 0;
  v38 = MEMORY[0x277D84F98];
  v72 = v36;
  while (v35)
  {
    v41 = v37;
LABEL_21:
    v42 = __clz(__rbit64(v35)) | (v41 << 6);
    v43 = (*(a6 + 48) + 16 * v42);
    v44 = *v43;
    v45 = v43[1];
    v46 = (*(a6 + 56) + (v42 << 6));
    v47 = v46[1];
    v76 = *v46;
    v77 = v47;
    v78[0] = v46[2];
    *(v78 + 9) = *(v46 + 41);
    *&v75[0] = 2831206;
    *(&v75[0] + 1) = 0xE300000000000000;

    MEMORY[0x21CEAEAC0](v44, v45);
    v48 = v75[0];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v75[0] = v38;
    v51 = sub_217E8E88C(v48, *(&v48 + 1));
    v52 = v38[2];
    v53 = (v50 & 1) == 0;
    v54 = v52 + v53;
    if (__OFADD__(v52, v53))
    {
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      result = sub_217F4B1C4();
      __break(1u);
      return result;
    }

    v55 = v50;
    if (v38[3] >= v54)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_217E90C38();
      }
    }

    else
    {
      sub_217E94764(v54, isUniquelyReferenced_nonNull_native);
      v56 = sub_217E8E88C(v48, *(&v48 + 1));
      if ((v55 & 1) != (v57 & 1))
      {
        goto LABEL_38;
      }

      v51 = v56;
    }

    v35 &= v35 - 1;
    if (v55)
    {

      v38 = *&v75[0];
      v39 = (*(*&v75[0] + 56) + (v51 << 6));
      v40 = v77;
      *v39 = v76;
      v39[1] = v40;
      v39[2] = v78[0];
      *(v39 + 41) = *(v78 + 9);
    }

    else
    {
      v38 = *&v75[0];
      *(*&v75[0] + 8 * (v51 >> 6) + 64) |= 1 << v51;
      *(v38[6] + 16 * v51) = v48;
      v58 = (v38[7] + (v51 << 6));
      *(v58 + 41) = *(v78 + 9);
      v59 = v78[0];
      v58[1] = v77;
      v58[2] = v59;
      *v58 = v76;

      v60 = v38[2];
      v61 = __OFADD__(v60, 1);
      v62 = v60 + 1;
      if (v61)
      {
        goto LABEL_37;
      }

      v38[2] = v62;
    }

    v37 = v41;
    v36 = v72;
    v32 = a6 + 64;
  }

  while (1)
  {
    v41 = v37 + 1;
    if (__OFADD__(v37, 1))
    {
      __break(1u);
      goto LABEL_36;
    }

    if (v41 >= v36)
    {
      break;
    }

    v35 = *(v32 + 8 * v41);
    ++v37;
    if (v35)
    {
      goto LABEL_21;
    }
  }

  v63 = sub_217E97288(v23);

  v76 = v68;
  v77 = v67;
  v75[0] = v66;
  v75[1] = v65;
  sub_217F42DD0(v12, v13, v69, v63, &v76, v75, v38, v70, v71);
}

uint64_t sub_217F435A8(uint64_t a1, uint64_t a2, uint64_t a3, double *a4, __int128 *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v83 = a7;
  v86 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v79 = *(AssociatedTypeWitness - 8);
  v17 = *(v79 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness, v18);
  v20 = &v74 - v19;
  v76 = *(a3 + 40);
  v77 = *(a3 + 24);
  v21 = *(a3 + 64);
  v22 = *a4;
  v23 = *(a4 + 1);
  v24 = *(a4 + 2);
  v25 = *a5;
  v74 = a5[1];
  v75 = v25;
  (*(a10 + 40))(a8, a10);
  v26 = *(a10 + 48);
  v84 = a2;
  v26(v87, a8, a10);
  sub_217ECB400(&v88);
  v85 = a8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v78 = v20;
  v81 = AssociatedTypeWitness;
  v28 = sub_217F40050(v20, v87, &v88, AssociatedTypeWitness, AssociatedConformanceWitness);
  v82 = a9;
  v80 = a1;
  v29 = ClassicAggregateContextType.validate(features:publisherTopicMinimumEventCount:)(v28, v21, v83, a9);

  v30 = *(v29 + 16);
  if (v30)
  {
    *&v88 = MEMORY[0x277D84F90];
    sub_217EA0864(0, v30, 0);
    v31 = v88;
    v32 = (v29 + 40);
    do
    {
      v34 = *(v32 - 1);
      v33 = *v32;

      *&v88 = v31;
      v36 = *(v31 + 16);
      v35 = *(v31 + 24);
      if (v36 >= v35 >> 1)
      {
        sub_217EA0864((v35 > 1), v36 + 1, 1);
        v31 = v88;
      }

      v32 += 7;
      *(v31 + 16) = v36 + 1;
      v37 = v31 + 16 * v36;
      *(v37 + 32) = v34;
      *(v37 + 40) = v33;
      --v30;
    }

    while (v30);
  }

  else
  {

    v31 = MEMORY[0x277D84F90];
  }

  sub_217F43B6C(v84, v83, v85, v82, a10);
  v39 = v38;
  v40 = v86 + 64;
  v41 = 1 << *(v86 + 32);
  v42 = -1;
  if (v41 < 64)
  {
    v42 = ~(-1 << v41);
  }

  v43 = v42 & *(v86 + 64);
  v44 = (v41 + 63) >> 6;

  v45 = 0;
  v46 = MEMORY[0x277D84F98];
  v84 = v44;
  v85 = v40;
  while (v43)
  {
    v50 = v45;
LABEL_18:
    v51 = __clz(__rbit64(v43)) | (v50 << 6);
    v52 = (*(v86 + 48) + 16 * v51);
    v53 = *v52;
    v54 = v52[1];
    v55 = (*(v86 + 56) + (v51 << 6));
    v56 = v55[1];
    v88 = *v55;
    v89 = v56;
    v90[0] = v55[2];
    *(v90 + 9) = *(v55 + 41);
    *&v87[0] = 2831206;
    *(&v87[0] + 1) = 0xE300000000000000;

    MEMORY[0x21CEAEAC0](v53, v54);
    v57 = v87[0];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v87[0] = v46;
    v59 = sub_217E8E88C(v57, *(&v57 + 1));
    v61 = v46[2];
    v62 = (v60 & 1) == 0;
    v63 = __OFADD__(v61, v62);
    v64 = v61 + v62;
    if (v63)
    {
      goto LABEL_29;
    }

    v65 = v60;
    if (v46[3] >= v64)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v71 = v59;
        sub_217E90C38();
        v59 = v71;
      }
    }

    else
    {
      sub_217E94764(v64, isUniquelyReferenced_nonNull_native);
      v59 = sub_217E8E88C(v57, *(&v57 + 1));
      if ((v65 & 1) != (v66 & 1))
      {
        goto LABEL_31;
      }
    }

    v43 &= v43 - 1;
    if (v65)
    {
      v47 = v59;

      v46 = *&v87[0];
      v48 = (*(*&v87[0] + 56) + (v47 << 6));
      v49 = v89;
      *v48 = v88;
      v48[1] = v49;
      v48[2] = v90[0];
      *(v48 + 41) = *(v90 + 9);
    }

    else
    {
      v46 = *&v87[0];
      *(*&v87[0] + 8 * (v59 >> 6) + 64) |= 1 << v59;
      *(v46[6] + 16 * v59) = v57;
      v67 = (v46[7] + (v59 << 6));
      *(v67 + 41) = *(v90 + 9);
      v68 = v90[0];
      v67[1] = v89;
      v67[2] = v68;
      *v67 = v88;

      v69 = v46[2];
      v63 = __OFADD__(v69, 1);
      v70 = v69 + 1;
      if (v63)
      {
        goto LABEL_30;
      }

      v46[2] = v70;
    }

    v45 = v50;
    v44 = v84;
    v40 = v85;
  }

  while (1)
  {
    v50 = v45 + 1;
    if (__OFADD__(v45, 1))
    {
      break;
    }

    if (v50 >= v44)
    {

      v72 = sub_217E97288(v31);

      v88 = v77;
      v89 = v76;
      v87[0] = v75;
      v87[1] = v74;
      sub_217F42DD0(v22, v39, v80, v72, &v88, v87, v46, v83, v82);

      return (*(v79 + 8))(v78, v81);
    }

    v43 = *(v40 + 8 * v50);
    ++v45;
    if (v43)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  result = sub_217F4B1C4();
  __break(1u);
  return result;
}

uint64_t sub_217F43BFC(uint64_t a1, uint64_t a2, uint64_t a3, long double a4, double a5, double a6, double a7, double a8, double a9)
{
  v16 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v18 = sub_217F4AD74();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v22 = MEMORY[0x28223BE20](v18, v21);
  v24 = v26 - v23;
  (*(*(AssociatedTypeWitness - 8) + 56))(v26 - v23, 1, 1, AssociatedTypeWitness, v22);
  v26[0] = a8;
  v26[1] = a9;
  sub_217F43D78(a4, a5, a1, v24, v26, 0, a2, a3);
  return (*(v19 + 8))(v24, v18);
}

void (*sub_217F43D78(long double a1, double a2, uint64_t a3, uint64_t a4, double *a5, int a6, uint64_t a7, uint64_t a8))(uint64_t *, void)
{
  v64 = a6;
  v59 = a4;
  v12 = sub_217F4A9F4();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8, v14);
  v60 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a8 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v18 = sub_217F4AD74();
  v62 = *(v18 - 8);
  v63 = v18;
  v19 = *(v62 + 64);
  MEMORY[0x28223BE20](v18, v20);
  v61 = &v58 - v21;
  v65 = *(AssociatedTypeWitness - 8);
  v22 = *(v65 + 64);
  MEMORY[0x28223BE20](v23, v24);
  v58 = &v58 - v25;
  v26 = *a5;
  v27 = a5[1];
  if (qword_280C28EB8 != -1)
  {
    swift_once();
  }

  v28 = qword_280C28EC0;
  sub_217F4AD24();
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5278, &qword_217F4BF30);
  v29 = swift_allocObject();
  v68 = xmmword_217F4BC20;
  *(v29 + 16) = xmmword_217F4BC20;
  v70 = 0;
  v71 = 0xE000000000000000;
  v30 = swift_getAssociatedTypeWitness();
  sub_217F4B124();
  v31 = v70;
  v32 = v71;
  *(v29 + 56) = MEMORY[0x277D837D0];
  v67 = sub_217E86438();
  *(v29 + 64) = v67;
  *(v29 + 32) = v31;
  *(v29 + 40) = v32;
  v66 = v28;
  sub_217F4AA44();

  v33 = v26 * a2;
  v34 = v27 * a2;
  if (v33 <= 0.0 && v34 <= 0.0)
  {
    goto LABEL_25;
  }

  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v36 = *(AssociatedConformanceWitness + 8);
  v37 = (*(v36 + 16))(v30, v36);
  if (a1 == 1.0)
  {
    v38 = v65;
  }

  else
  {
    v38 = v65;
    if (v33 != 1.0)
    {
      v33 = (1.0 - pow(a1, v33)) / (1.0 - a1);
    }
  }

  v39 = pow(a1, v34);
  (*(v36 + 24))(v30, v36);
  if (a1 == 1.0)
  {
    v42 = v62;
    v41 = v63;
    v43 = v61;
  }

  else
  {
    v42 = v62;
    v41 = v63;
    v43 = v61;
    if (v34 != 1.0)
    {
      v34 = (1.0 - v39) / (1.0 - a1);
    }
  }

  v44 = v33 + v37 * v39;
  v45 = v39 * v40 + v34;
  if (v64)
  {
    (*(v42 + 16))(v43, v59, v41);
    if ((*(v38 + 48))(v43, 1, AssociatedTypeWitness) == 1)
    {
      (*(v42 + 8))(v43, v41);
    }

    else
    {
      (*(v38 + 32))(v58, v43, AssociatedTypeWitness);
      v46 = 0.0;
      if (v45 > 0.0 && v44 / v45 > 0.0)
      {
        if (v44 / v45 <= 1.0)
        {
          v46 = v44 / v45;
        }

        else
        {
          v46 = 1.0;
        }
      }

      v47 = swift_getAssociatedConformanceWitness();
      v48 = v58;
      ReadonlyAggregateType.personalizationValue.getter(AssociatedTypeWitness, v47);
      v50 = v49;
      (*(v38 + 8))(v48, AssociatedTypeWitness);
      if (v50 < v46)
      {
        v44 = v45 * v50;
      }
    }
  }

  (*(AssociatedConformanceWitness + 16))(v30, AssociatedConformanceWitness, v44);
  (*(AssociatedConformanceWitness + 32))(v30, AssociatedConformanceWitness, v45);
  result = (*(AssociatedConformanceWitness + 56))(&v70, v30, AssociatedConformanceWitness);
  if (*v52 != -1)
  {
    ++*v52;
    result(&v70, 0);
    v53 = v60;
    sub_217F4A9E4();
    (*(AssociatedConformanceWitness + 64))(v53, v30, AssociatedConformanceWitness);
LABEL_25:
    sub_217F4AD24();
    v54 = swift_allocObject();
    *(v54 + 16) = v68;
    v70 = 0;
    v71 = 0xE000000000000000;
    sub_217F4B124();
    v55 = v70;
    v56 = v71;
    v57 = v67;
    *(v54 + 56) = MEMORY[0x277D837D0];
    *(v54 + 64) = v57;
    *(v54 + 32) = v55;
    *(v54 + 40) = v56;
    sub_217F4AA44();
  }

  __break(1u);
  return result;
}

uint64_t sub_217F443C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, long double a6, double a7, double a8, double a9)
{
  v18 = *(a5 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v20 = sub_217F4AD74();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20, v23);
  v25 = v28 - v24;
  LOBYTE(a2) = sub_217F4459C(a2, a1, a4, a5);
  v26 = *(AssociatedTypeWitness - 8);
  (*(v26 + 16))(v25, a3, AssociatedTypeWitness);
  (*(v26 + 56))(v25, 0, 1, AssociatedTypeWitness);
  v28[0] = a8;
  v28[1] = a9;
  sub_217F43D78(a6, a7, a1, v25, v28, a2 & 1, a4, a5);
  return (*(v21 + 8))(v25, v20);
}

uint64_t sub_217F4459C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 64);
  v11 = MEMORY[0x28223BE20](AssociatedTypeWitness, v10);
  v13 = &v22 - v12;
  (*(v8 + 16))(&v22 - v12, a2, AssociatedTypeWitness, v11);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v15 = (*(*(AssociatedConformanceWitness + 8) + 8))(AssociatedTypeWitness);
  v17 = v16;
  (*(v8 + 8))(v13, AssociatedTypeWitness);
  if (*(a1 + 16))
  {
    v18 = sub_217E8E88C(v15, v17);
    v20 = v19;

    if (v20)
    {
      return *(*(a1 + 56) + (v18 << 6));
    }
  }

  else
  {
  }

  return 0;
}

void *__swift_project_boxed_opaque_existential_2(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_217F44780(unsigned int *a1, int a2)
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

_WORD *sub_217F447D0(_WORD *result, int a2, int a3)
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

uint64_t sub_217F44878(uint64_t a1)
{
  v2 = *(v1 + 80);
  v3 = *(v1 + 88);
  return sub_217F443C8(a1, *(v1 + 32), *(v1 + 40), *(v1 + 16), *(v1 + 24), *(v1 + 48), *(v1 + 56), *(v1 + 64), *(v1 + 72));
}

uint64_t sub_217F44890(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v39 = a8;
  v48 = a1;
  v49 = a2;
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](a1, a2);
  v50 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v52 = *(AssociatedTypeWitness - 8);
  v16 = *(v52 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness, v17);
  v19 = &v37 - v18;
  v20 = *(*(a4 - 8) + 64);
  MEMORY[0x28223BE20](v21, v22);
  v46 = &v37 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = swift_getAssociatedTypeWitness();
  v40 = *(v24 - 8);
  v41 = v24;
  v25 = *(v40 + 64);
  MEMORY[0x28223BE20](v24, v26);
  v28 = &v37 - v27;
  v29 = sub_217F4ACF4();
  if (!v29)
  {
    return sub_217F4AC44();
  }

  v51 = v29;
  v55 = sub_217F4AE34();
  v42 = sub_217F4AE44();
  sub_217F4AE14();
  result = sub_217F4ACE4();
  if ((v51 & 0x8000000000000000) == 0)
  {
    v37 = v11;
    v38 = a5;
    v31 = 0;
    v43 = (v52 + 16);
    v44 = (v52 + 8);
    v45 = v8;
    while (!__OFADD__(v31, 1))
    {
      v52 = v31 + 1;
      v32 = sub_217F4AD14();
      v33 = v19;
      v34 = v19;
      v35 = AssociatedTypeWitness;
      (*v43)(v33);
      v32(v54, 0);
      v36 = v53;
      v48(v34, v50);
      if (v36)
      {
        (*v44)(v34, v35);
        (*(v40 + 8))(v28, v41);

        return (*(v37 + 32))(v39, v50, v38);
      }

      v53 = 0;
      (*v44)(v34, v35);
      sub_217F4AE24();
      result = sub_217F4AD04();
      ++v31;
      v19 = v34;
      if (v52 == v51)
      {
        (*(v40 + 8))(v28, v41);
        return v55;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t Classic.TagMappings.sourceTags.getter(_OWORD *a1)
{
  v2 = *(v1 + 8);
  v5 = a1[1];
  v4 = a1[3];
  v6 = a1[2];
  v7 = a1[4];
  type metadata accessor for Classic.TagMapping();
  sub_217F4AC94();
  sub_217F4AA94();

  swift_getWitnessTable();
  return sub_217F4ACA4();
}

uint64_t Classic.TagMappings.count.getter(_OWORD *a1)
{
  v2 = *v1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = a1[4];
  type metadata accessor for Classic.TagMapping();
  return sub_217F4AC74();
}

uint64_t Classic.TagMappings.mappings(to:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v6 = *(a2 + 16);
  v5 = *(a2 + 24);
  v7 = *(a2 + 40);
  v8 = *(a2 + 56);
  v9 = *(a2 + 72);
  type metadata accessor for Classic.TagMapping();
  sub_217F4AC94();
  sub_217F4AAC4();
  result = v6;
  if (!v6)
  {
    return sub_217F4AC44();
  }

  return result;
}

uint64_t Classic.TagMapping.description.getter(uint64_t a1)
{
  MEMORY[0x21CEAEAC0](40, 0xE100000000000000);
  v3 = *(a1 + 16);
  sub_217F4B124();
  MEMORY[0x21CEAEAC0](0x203E2D2D20, 0xE500000000000000);
  v4 = *(a1 + 84);
  v5 = *(a1 + 24);
  sub_217F4B124();
  MEMORY[0x21CEAEAC0](8236, 0xE200000000000000);
  v6 = *(v1 + *(a1 + 88));
  sub_217F4ACB4();
  MEMORY[0x21CEAEAC0](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_217F44F38(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6154656372756F73 && a2 == 0xE900000000000067;
  if (v4 || (sub_217F4B144() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74616E6974736564 && a2 == 0xEE006761546E6F69 || (sub_217F4B144() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65726F6373 && a2 == 0xE500000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_217F4B144();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_217F4505C(char a1)
{
  if (!a1)
  {
    return 0x6154656372756F73;
  }

  if (a1 == 1)
  {
    return 0x74616E6974736564;
  }

  return 0x65726F6373;
}

uint64_t sub_217F4515C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_217F451B0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t Classic.TagMapping.encode(to:)(void *a1, uint64_t a2)
{
  v21 = *(a2 + 16);
  v22 = v21;
  v4 = *(a2 + 56);
  v18 = *(a2 + 24);
  v23 = v18;
  v19 = *(a2 + 40);
  v24 = v19;
  v25 = v4;
  v17 = *(a2 + 64);
  v26 = v17;
  _s14descr2829CD401O10TagMappingV10CodingKeysOMa();
  swift_getWitnessTable();
  v5 = sub_217F4B0E4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v17 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v12 = v20;
  sub_217F4B294();
  LOBYTE(v22) = 0;
  v13 = v27;
  sub_217F4B0C4();
  if (!v13)
  {
    v14 = *(a2 + 84);
    LOBYTE(v22) = 1;
    sub_217F4B0C4();
    v15 = *(v12 + *(a2 + 88));
    LOBYTE(v22) = 2;
    sub_217F4B0A4();
  }

  return (*(v6 + 8))(v10, v5);
}

uint64_t Classic.TagMapping.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v67 = a6;
  v66 = a5;
  v69 = a1;
  v56 = a9;
  v57 = *(a3 - 8);
  v15 = *(v57 + 64);
  MEMORY[0x28223BE20](a1, a2);
  v61 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = *(v17 - 8);
  v18 = *(v58 + 64);
  MEMORY[0x28223BE20](v19, v17);
  v62 = &v55 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = v21;
  v71 = v22;
  v72 = v23;
  v73 = v24;
  v74 = v25;
  v75 = v26;
  v76 = v27;
  v77 = a10;
  _s14descr2829CD401O10TagMappingV10CodingKeysOMa();
  swift_getWitnessTable();
  v65 = sub_217F4AFF4();
  v59 = *(v65 - 8);
  v28 = *(v59 + 64);
  MEMORY[0x28223BE20](v65, v29);
  v31 = &v55 - v30;
  v60 = a2;
  v70 = a2;
  v71 = a3;
  v63 = a3;
  v64 = a4;
  v72 = a4;
  v73 = v66;
  v74 = v67;
  v75 = a7;
  v66 = a7;
  v76 = a8;
  v77 = a10;
  v32 = v69;
  v33 = type metadata accessor for Classic.TagMapping();
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v33, v36);
  v38 = &v55 - v37;
  v39 = v32[4];
  __swift_project_boxed_opaque_existential_1(v32, v32[3]);
  v67 = v31;
  v40 = v68;
  sub_217F4B274();
  if (v40)
  {
    return __swift_destroy_boxed_opaque_existential_1(v69);
  }

  v55 = v34;
  v68 = v38;
  v41 = v59;
  v42 = v60;
  v44 = v61;
  v43 = v62;
  v45 = v63;
  LOBYTE(v70) = 0;
  v46 = v67;
  sub_217F4AFC4();
  (*(v58 + 32))(v68, v43, v42);
  LOBYTE(v70) = 1;
  sub_217F4AFC4();
  v47 = v33;
  v48 = *(v33 + 84);
  v49 = v68;
  (*(v57 + 32))(&v68[v48], v44, v45);
  LOBYTE(v70) = 2;
  sub_217F4AFA4();
  v51 = v50;
  (*(v41 + 8))(v46, v65);
  *&v49[*(v47 + 88)] = v51;
  v52 = v47;
  v53 = v55;
  (*(v55 + 16))(v56, v49, v52);
  __swift_destroy_boxed_opaque_existential_1(v69);
  return (*(v53 + 8))(v49, v52);
}

uint64_t sub_217F45904@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  (*(*(a3 - 8) + 32))(a5, a1);
  v10 = type metadata accessor for Classic.TagMapping();
  result = (*(*(a4 - 8) + 32))(a5 + *(v10 + 84), a2, a4);
  *(a5 + *(v10 + 88)) = a6;
  return result;
}

uint64_t Classic.TagMappings.init(scoredMappings:)@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  type metadata accessor for Classic.TagMapping();
  sub_217F4AC94();
  sub_217F4AA54();
  swift_getTupleTypeMetadata2();
  sub_217F4AC94();
  sub_217F4AAB4();
  sub_217F4AAB4();
  swift_getWitnessTable();
  sub_217F4AB54();

  sub_217F4AA54();
  sub_217F4AAB4();
  sub_217F4AB54();

  sub_217F4AAA4();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_217F4AB74();

  result = sub_217F4ACA4();
  *a2 = result;
  a2[1] = a1;
  a2[2] = a1;
  return result;
}

uint64_t sub_217F45D5C(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, uint64_t a10, uint64_t a11, unint64_t a12)
{
  v80 = a3;
  v76 = a1;
  v77 = a2;
  v78 = a12;
  v74 = *(a5 - 8);
  v18 = *(v74 + 8);
  v79 = a10;
  MEMORY[0x28223BE20](a1, a2);
  v75 = &v68 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v23, v24);
  v26 = &v68 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = v27;
  v82 = v28;
  v83 = v29;
  v84 = v30;
  v72 = v31;
  v73 = v30;
  v85 = v31;
  v86 = v32;
  v87 = a11;
  v88 = v33;
  v71 = type metadata accessor for Classic.TagMapping();
  v34 = *(*(v71 - 8) + 64);
  MEMORY[0x28223BE20](v71, v35);
  v37 = &v68 - v36;
  v38 = swift_allocObject();
  v38[2] = a4;
  v38[3] = a5;
  v38[4] = a6;
  v38[5] = a7;
  v40 = v79;
  v39 = v80;
  v38[6] = a8;
  v38[7] = v40;
  v41 = v78;
  v38[8] = a11;
  v38[9] = v41;
  v42 = *(v21 + 16);
  v43 = a4;
  v70 = v21 + 16;
  v69 = v42;
  (v42)(v26, v39);
  v44 = v75;
  (*(v74 + 2))(v75, v76, a5);
  v45 = v77;
  v76 = v37;
  v46 = v37;
  v74 = v26;
  v47 = v44;
  v48 = v72;
  v49 = v73;
  v50 = v79;
  sub_217F45904(v26, v47, a4, a5, v46, a9);
  v51 = swift_allocObject();
  v51[2] = a4;
  v51[3] = a5;
  v51[4] = a6;
  v51[5] = v49;
  v51[6] = v48;
  v51[7] = v50;
  v52 = v78;
  v51[8] = a11;
  v51[9] = v52;
  v51[10] = sub_217F48510;
  v51[11] = v38;
  v53 = *v45;
  swift_isUniquelyReferenced_nonNull_native();
  v81 = *v45;
  v54 = v81;
  *v45 = 0x8000000000000000;
  v79 = v43;
  v78 = sub_217F478D0(v80, v43, v48);
  if (__OFADD__(*(v54 + 16), (v55 & 1) == 0))
  {
    __break(1u);
    goto LABEL_10;
  }

  v56 = v55;
  sub_217F4AC94();
  sub_217F4AE84();
  v57 = sub_217F4AE64();
  v58 = v81;
  if ((v57 & 1) == 0)
  {
    v61 = v78;
    goto LABEL_6;
  }

  v59 = sub_217F478D0(v80, v79, v48);
  if ((v56 & 1) != (v60 & 1))
  {
LABEL_10:
    result = sub_217F4B1C4();
    __break(1u);
    return result;
  }

  v61 = v59;
LABEL_6:
  v62 = *v45;
  *v45 = v58;

  v64 = *v45;
  if ((v56 & 1) == 0)
  {
    v65 = v51[11];
    v81 = (v51[10])(v63);
    v69(v74, v80, v79);
    sub_217F4AE74();
  }

  v66 = *(v64 + 56) + 8 * v61;
  sub_217F4AC84();
}

uint64_t sub_217F46170(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v35 = a8;
  v34 = a7;
  v32 = a6;
  v31 = a5;
  v30 = a2;
  v33 = a1;
  v37 = a12;
  v36 = a11;
  swift_getTupleTypeMetadata2();
  sub_217F4AC94();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v15 = *(*(TupleTypeMetadata2 - 8) + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata2, v16);
  v18 = &v29 - v17;
  v19 = *(a3 - 8);
  v20 = *(v19 + 64);
  v23 = MEMORY[0x28223BE20](v21, v22);
  v25 = &v29 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v26 + 16))(v18, v30, TupleTypeMetadata2, v23);
  v27 = *&v18[*(TupleTypeMetadata2 + 48)];
  (*(v19 + 32))(v25, v18, a3);
  v59 = v27;
  v49 = a3;
  v50 = a4;
  v51 = v31;
  v52 = v32;
  v53 = v34;
  v54 = v35;
  v55 = a9;
  v56 = a10;
  v57 = v33;
  v58 = v25;
  v38 = a3;
  v39 = a4;
  v40 = v31;
  v41 = v32;
  v42 = v34;
  v43 = v35;
  v44 = a9;
  v45 = a10;
  v46 = v36;
  v47 = &v48;
  swift_getWitnessTable();
  sub_217F4AB84();

  return (*(v19 + 8))(v25, a3);
}

uint64_t sub_217F4644C(uint64_t a1, uint64_t *a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v70 = a8;
  v72 = a3;
  v73 = a2;
  v76 = *(a5 - 8);
  v77 = a1;
  v17 = *(v76 + 64);
  v75 = a11;
  MEMORY[0x28223BE20](a1, a2);
  v74 = &v65 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v22, v23);
  v71 = &v65 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = v25;
  v79 = v26;
  v80 = v27;
  v81 = v28;
  v82 = v29;
  v83 = v30;
  v31 = v30;
  v69 = v30;
  v84 = v32;
  v85 = a12;
  v67 = type metadata accessor for Classic.TagMapping();
  v33 = *(*(v67 - 8) + 64);
  MEMORY[0x28223BE20](v67, v34);
  v36 = &v65 - v35;
  v37 = swift_allocObject();
  v68 = a4;
  v37[2] = a4;
  v37[3] = a5;
  v37[4] = a6;
  v37[5] = a7;
  v38 = v70;
  v37[6] = v70;
  v37[7] = v31;
  v37[8] = v75;
  v37[9] = a12;
  v39 = v71;
  (*(v20 + 16))(v71, v72, a4);
  v40 = *(v76 + 16);
  v41 = v74;
  v76 += 16;
  v66 = v40;
  v40(v74, v77, a5);
  v72 = v36;
  v42 = v36;
  v43 = v41;
  v44 = v68;
  v45 = v38;
  v46 = v69;
  sub_217F45904(v39, v43, v68, a5, v42, a9);
  v47 = swift_allocObject();
  v47[2] = v44;
  v47[3] = a5;
  v47[4] = a6;
  v47[5] = a7;
  v47[6] = v45;
  v47[7] = v46;
  v47[8] = v75;
  v47[9] = a12;
  v48 = v73;
  v47[10] = sub_217F48404;
  v47[11] = v37;
  v49 = *v48;
  swift_isUniquelyReferenced_nonNull_native();
  v78 = *v48;
  v50 = v78;
  *v48 = 0x8000000000000000;
  v75 = a12;
  v51 = sub_217F478D0(v77, a5, a12);
  if (__OFADD__(*(v50 + 16), (v52 & 1) == 0))
  {
    __break(1u);
    goto LABEL_9;
  }

  v53 = v51;
  v54 = v52;
  sub_217F4AC94();
  sub_217F4AE84();
  v55 = sub_217F4AE64();
  v56 = v78;
  if (v55)
  {
    v57 = sub_217F478D0(v77, a5, v75);
    if ((v54 & 1) == (v58 & 1))
    {
      v53 = v57;
      goto LABEL_5;
    }

LABEL_9:
    result = sub_217F4B1C4();
    __break(1u);
    return result;
  }

LABEL_5:
  v59 = *v48;
  *v48 = v56;

  v61 = *v48;
  if ((v54 & 1) == 0)
  {
    v62 = v47[11];
    v78 = (v47[10])(v60);
    v66(v74, v77, a5);
    sub_217F4AE74();
  }

  v63 = *(v61 + 56) + 8 * v53;
  sub_217F4AC84();
}

uint64_t Classic.TagMappings.mappings(for:)(uint64_t a1, _OWORD *a2)
{
  v3 = *(v2 + 8);
  v6 = a2[1];
  v5 = a2[3];
  v7 = a2[2];
  v8 = a2[4];
  type metadata accessor for Classic.TagMapping();
  sub_217F4AC94();
  sub_217F4AAC4();
  result = v6;
  if (!v6)
  {
    return sub_217F4AC44();
  }

  return result;
}

uint64_t Classic.TagMappings.description.getter(void *a1)
{
  v29 = *(v1 + 8);
  v2 = a1[3];
  v13 = a1[2];
  v14 = v2;
  v3 = a1[5];
  v15 = a1[4];
  v16 = v3;
  v4 = a1[7];
  v17 = a1[6];
  v18 = v4;
  v5 = a1[9];
  v19 = a1[8];
  v20 = v5;

  v21 = v13;
  v22 = v2;
  v23 = v15;
  v24 = v3;
  v25 = v17;
  v26 = v4;
  v27 = v19;
  v28 = v5;
  type metadata accessor for Classic.TagMapping();
  sub_217F4AC94();
  v6 = sub_217F4AAB4();
  WitnessTable = swift_getWitnessTable();
  v9 = sub_217F44890(sub_217F47BC4, &v12, v6, MEMORY[0x277D837D0], MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v8);

  v21 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF54D8, &qword_217F4D510);
  sub_217F47BFC();
  v10 = sub_217F4AAE4();

  return v10;
}

uint64_t sub_217F46A68@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_217F4B124();
  MEMORY[0x21CEAEAC0](8250, 0xE200000000000000);
  type metadata accessor for Classic.TagMapping();
  sub_217F4AC94();
  v5 = *(a1 + *(swift_getTupleTypeMetadata2() + 48));
  swift_getWitnessTable();
  result = sub_217F4B134();
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  return result;
}

uint64_t sub_217F46B8C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x697070614D776172 && a2 == 0xEB0000000073676ELL;
  if (v4 || (sub_217F4B144() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x614D656372756F73 && a2 == 0xEE0073676E697070 || (sub_217F4B144() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000217F61520 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_217F4B144();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_217F46CB8(unsigned __int8 a1)
{
  sub_217F4B224();
  MEMORY[0x21CEAF1C0](a1);
  return sub_217F4B254();
}

uint64_t sub_217F46D00(char a1)
{
  if (!a1)
  {
    return 0x697070614D776172;
  }

  if (a1 == 1)
  {
    return 0x614D656372756F73;
  }

  return 0xD000000000000013;
}

uint64_t sub_217F46DD4(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = a1[7];
  v8 = a1[8];
  v10 = a1[9];
  return sub_217F46CB8(*v1);
}

uint64_t sub_217F46E7C(uint64_t a1, void *a2, uint64_t a3, void (*a4)(_BYTE *, void, void, void, void, void, void, void, void, void))
{
  sub_217F4B224();
  a4(v8, *v4, a2[2], a2[3], a2[4], a2[5], a2[6], a2[7], a2[8], a2[9]);
  return sub_217F4B254();
}

uint64_t sub_217F46F54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t (*a4)(uint64_t, uint64_t, void, void, void, void, void, void, void, void)@<X4>, _BYTE *a5@<X8>)
{
  result = a4(a1, a2, a3[2], a3[3], a3[4], a3[5], a3[6], a3[7], a3[8], a3[9]);
  *a5 = result;
  return result;
}

uint64_t sub_217F46FC8@<X0>(void *a1@<X1>, uint64_t (*a2)(void, void, void, void, void, void, void, void)@<X3>, _BYTE *a3@<X8>)
{
  result = a2(a1[2], a1[3], a1[4], a1[5], a1[6], a1[7], a1[8], a1[9]);
  *a3 = result;
  return result;
}

uint64_t sub_217F4700C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_217F47060(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t Classic.TagMappings.encode(to:)(void *a1, void *a2)
{
  v4 = a2[2];
  v30 = a2[3];
  v31 = v4;
  v5 = a2[5];
  v24 = a2[4];
  v32 = v5;
  v22 = a2[6];
  v6 = a2[8];
  v23 = a2[7];
  v7 = a2[9];
  v28 = v6;
  v29 = v7;
  v39 = v4;
  v40 = v30;
  v41 = v24;
  v42 = v5;
  v43 = v22;
  v44 = v23;
  v45 = v6;
  v46 = v7;
  _s14descr2829CD401O11TagMappingsV10CodingKeysOMa();
  swift_getWitnessTable();
  v8 = sub_217F4B0E4();
  v26 = *(v8 - 8);
  v9 = *(v26 + 64);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v20 - v11;
  v13 = *v2;
  v21 = v2[1];
  v20 = v2[2];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);

  v15 = v30;
  sub_217F4B294();
  v25 = v13;
  v47 = v13;
  v38 = 0;
  v39 = v31;
  v40 = v15;
  v41 = v24;
  v42 = v32;
  v43 = v22;
  v44 = v23;
  v45 = v28;
  v46 = v29;
  type metadata accessor for Classic.TagMapping();
  sub_217F4AC94();
  WitnessTable = swift_getWitnessTable();
  v16 = swift_getWitnessTable();
  v17 = v27;
  sub_217F4B0C4();
  if (v17)
  {

    return (*(v26 + 8))(v12, v8);
  }

  else
  {
    v19 = v26;

    v39 = v21;
    LOBYTE(v47) = 1;
    sub_217F4AAB4();
    v35 = v32;
    v36 = v16;
    swift_getWitnessTable();
    sub_217F4B0C4();
    v39 = v20;
    LOBYTE(v47) = 2;
    sub_217F4AAB4();
    v33 = v28;
    v34 = v16;
    swift_getWitnessTable();
    sub_217F4B0C4();
    return (*(v19 + 8))(v12, v8);
  }
}

uint64_t Classic.TagMappings.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10)
{
  v32 = a9;
  v38 = a2;
  v39 = a6;
  v46 = a2;
  v47 = a3;
  v35 = a10;
  v36 = a3;
  v33 = a7;
  v34 = a4;
  v48 = a4;
  v49 = a5;
  v50 = a6;
  v51 = a7;
  v52 = a8;
  v53 = a10;
  _s14descr2829CD401O11TagMappingsV10CodingKeysOMa();
  swift_getWitnessTable();
  v37 = sub_217F4AFF4();
  v14 = *(v37 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v37, v16);
  v17 = a1[3];
  v18 = a1[4];
  v40 = a1;
  v19 = a1;
  v21 = &v29 - v20;
  __swift_project_boxed_opaque_existential_1(v19, v17);
  sub_217F4B274();
  if (v10)
  {
    return __swift_destroy_boxed_opaque_existential_1(v40);
  }

  v31 = v14;
  v46 = v38;
  v47 = v36;
  v22 = v33;
  v23 = v34;
  v48 = v34;
  v49 = a5;
  v50 = v39;
  v51 = v33;
  v52 = a8;
  v53 = v35;
  type metadata accessor for Classic.TagMapping();
  sub_217F4AC94();
  LOBYTE(v46) = 0;
  WitnessTable = swift_getWitnessTable();
  v24 = swift_getWitnessTable();
  sub_217F4AFC4();
  v30 = v54;
  sub_217F4AAB4();
  LOBYTE(v54) = 1;
  v43 = v23;
  v44 = v24;
  swift_getWitnessTable();
  sub_217F4AFC4();
  v25 = v46;
  sub_217F4AAB4();
  LOBYTE(v54) = 2;
  v41 = v22;
  v42 = v24;
  swift_getWitnessTable();
  sub_217F4AFC4();
  (*(v31 + 8))(v21, v37);
  v26 = v46;
  v27 = v32;
  *v32 = v30;
  v27[1] = v25;
  v27[2] = v26;

  __swift_destroy_boxed_opaque_existential_1(v40);
}

unint64_t sub_217F478D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v4 + 40);
  v9 = sub_217F4AAD4();

  return sub_217F4792C(a1, v9, a2, a3);
}

unint64_t sub_217F4792C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24[1] = a1;
  v25 = a4;
  v6 = *(*(a3 - 8) + 64);
  v8.n128_f64[0] = MEMORY[0x28223BE20](a1, a2);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = v4;
  v11 = -1 << *(v4 + 32);
  v13 = v12 & ~v11;
  v24[0] = v4 + 64;
  if ((*(v4 + 64 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v11;
    v17 = *(v7 + 16);
    v15 = v7 + 16;
    v16 = v17;
    v18 = *(v15 + 56);
    v19 = (v15 - 8);
    do
    {
      v20 = v15;
      v16(v10, *(v26 + 48) + v18 * v13, a3, v8);
      v21 = *(v25 + 8);
      v22 = sub_217F4AAF4();
      (*v19)(v10, a3);
      if (v22)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      v15 = v20;
    }

    while (((*(v24[0] + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
  }

  return v13;
}

uint64_t sub_217F47BC4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = v2[2];
  v3 = v2[3];
  v5 = v2[4];
  v6 = v2[5];
  v7 = v2[6];
  v8 = v2[7];
  v9 = v2[8];
  v11 = v2[9];
  return sub_217F46A68(a1, a2);
}

unint64_t sub_217F47BFC()
{
  result = qword_27CBF75D8[0];
  if (!qword_27CBF75D8[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CBF54D8, &qword_217F4D510);
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CBF75D8);
  }

  return result;
}

uint64_t sub_217F47C80(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v5 = *(a1 + 24);
    result = swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_217F47D14(int *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  if (v8 <= v5)
  {
    v10 = *(v4 + 84);
  }

  else
  {
    v10 = *(v7 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v11 = *(*(*(a3 + 16) - 8) + 64) + v9;
  if (v10 >= a2)
  {
    goto LABEL_27;
  }

  v12 = ((*(*(v6 - 8) + 64) + (v11 & ~v9) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v13 = a2 - v10;
  v14 = v12 & 0xFFFFFFF8;
  if ((v12 & 0xFFFFFFF8) != 0)
  {
    v15 = 2;
  }

  else
  {
    v15 = v13 + 1;
  }

  if (v15 >= 0x10000)
  {
    v16 = 4;
  }

  else
  {
    v16 = 2;
  }

  if (v15 < 0x100)
  {
    v16 = 1;
  }

  if (v15 >= 2)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  if (v17 > 1)
  {
    if (v17 == 2)
    {
      v18 = *(a1 + v12);
      if (v18)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v18 = *(a1 + v12);
      if (v18)
      {
        goto LABEL_20;
      }
    }

LABEL_26:
    if (v10)
    {
LABEL_27:
      if (v5 >= v8)
      {
        return (*(v4 + 48))();
      }

      else
      {
        return (*(v7 + 48))((a1 + v11) & ~v9, v8, v6);
      }
    }

    return 0;
  }

  if (!v17)
  {
    goto LABEL_26;
  }

  v18 = *(a1 + v12);
  if (!v18)
  {
    goto LABEL_26;
  }

LABEL_20:
  v19 = v18 - 1;
  if (v14)
  {
    v19 = 0;
    v20 = *a1;
  }

  else
  {
    v20 = 0;
  }

  return v10 + (v20 | v19) + 1;
}

unsigned int *sub_217F47EB4(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(a4 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(v5 + 64);
  v11 = *(v8 + 80);
  if (v9 <= v6)
  {
    v12 = *(v5 + 84);
  }

  else
  {
    v12 = *(v8 + 84);
  }

  v13 = ((*(*(v7 - 8) + 64) + ((v10 + v11) & ~v11) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v12 >= a3)
  {
    v17 = 0;
    v18 = a2 - v12;
    if (a2 <= v12)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v14 = a3 - v12;
    if (((*(*(v7 - 8) + 64) + ((v10 + v11) & ~v11) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v15 = v14 + 1;
    }

    else
    {
      v15 = 2;
    }

    if (v15 >= 0x10000)
    {
      v16 = 4;
    }

    else
    {
      v16 = 2;
    }

    if (v15 < 0x100)
    {
      v16 = 1;
    }

    if (v15 >= 2)
    {
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    v18 = a2 - v12;
    if (a2 <= v12)
    {
LABEL_17:
      if (v17 > 1)
      {
        if (v17 != 2)
        {
          *(result + v13) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v13) = 0;
      }

      else if (v17)
      {
        *(result + v13) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 >= v9)
      {
        v24 = *(v5 + 56);

        return v24();
      }

      else
      {
        v22 = *(v8 + 56);
        v23 = (result + v10 + v11) & ~v11;

        return v22(v23);
      }
    }
  }

  if (((*(*(v7 - 8) + 64) + ((v10 + v11) & ~v11) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v19 = v18;
  }

  else
  {
    v19 = 1;
  }

  if (((*(*(v7 - 8) + 64) + ((v10 + v11) & ~v11) + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v20 = ~v12 + a2;
    v21 = result;
    bzero(result, v13);
    result = v21;
    *v21 = v20;
  }

  if (v17 > 1)
  {
    if (v17 == 2)
    {
      *(result + v13) = v19;
    }

    else
    {
      *(result + v13) = v19;
    }
  }

  else if (v17)
  {
    *(result + v13) = v19;
  }

  return result;
}

uint64_t sub_217F480EC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_217F48134(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_217F4817C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_217F481D8(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_217F48268(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_217F48468(uint64_t a1)
{
  v3 = v1[3];
  v5 = v1[10];
  v4 = v1[11];
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return v5(a1, *(a1 + *(TupleTypeMetadata2 + 48)));
}

uint64_t sub_217F484CC()
{
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  type metadata accessor for Classic.TagMapping();
  return sub_217F4AA64();
}

uint64_t getEnumTagSinglePayload for GroupClusteringError(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
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

uint64_t storeEnumTagSinglePayload for GroupClusteringError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

uint64_t (*sub_217F48648(uint64_t a1, uint64_t a2))()
{
  swift_getFunctionTypeMetadata3();
  sub_217F4B114();
  swift_allocObject();
  sub_217F4AC24();
  v97 = v4;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  swift_getKeyPath();
  swift_getKeyPath();
  swift_getKeyPath();
  swift_getKeyPath();
  swift_getKeyPath();
  v6 = sub_217F4AA34();
  v8 = v7;

  v9 = swift_allocObject();
  *(v9 + 2) = a1;
  *(v9 + 3) = a2;
  *(v9 + 4) = v6;
  *(v9 + 5) = v8;
  *v97 = sub_217F4A1D4;
  v97[1] = v9;
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  swift_getKeyPath();
  swift_getKeyPath();
  swift_getKeyPath();
  swift_getKeyPath();
  swift_getKeyPath();
  v11 = sub_217F4AA34();
  v13 = v12;

  v14 = swift_allocObject();
  *(v14 + 2) = a1;
  *(v14 + 3) = a2;
  *(v14 + 4) = v11;
  *(v14 + 5) = v13;
  v97[2] = sub_217F4A2A4;
  v97[3] = v14;
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  swift_getKeyPath();
  swift_getKeyPath();
  swift_getKeyPath();
  swift_getKeyPath();
  swift_getKeyPath();
  v16 = sub_217F4AA34();
  v18 = v17;

  v19 = swift_allocObject();
  *(v19 + 2) = a1;
  *(v19 + 3) = a2;
  *(v19 + 4) = v16;
  *(v19 + 5) = v18;
  v97[4] = sub_217F4A2A8;
  v97[5] = v19;
  v20 = swift_allocObject();
  *(v20 + 16) = a1;
  *(v20 + 24) = a2;
  swift_getKeyPath();
  swift_getKeyPath();
  swift_getKeyPath();
  swift_getKeyPath();
  swift_getKeyPath();
  v21 = sub_217F4AA34();
  v23 = v22;

  v24 = swift_allocObject();
  *(v24 + 2) = a1;
  *(v24 + 3) = a2;
  *(v24 + 4) = v21;
  *(v24 + 5) = v23;
  v97[6] = sub_217F4A2AC;
  v97[7] = v24;
  v25 = swift_allocObject();
  *(v25 + 16) = a1;
  *(v25 + 24) = a2;
  swift_getKeyPath();
  swift_getKeyPath();
  swift_getKeyPath();
  swift_getKeyPath();
  swift_getKeyPath();
  v26 = sub_217F4AA34();
  v28 = v27;

  v29 = swift_allocObject();
  *(v29 + 2) = a1;
  *(v29 + 3) = a2;
  *(v29 + 4) = v26;
  *(v29 + 5) = v28;
  v97[8] = sub_217F4A2B0;
  v97[9] = v29;
  v30 = swift_allocObject();
  *(v30 + 16) = a1;
  *(v30 + 24) = a2;
  swift_getKeyPath();
  swift_getKeyPath();
  swift_getKeyPath();
  swift_getKeyPath();
  swift_getKeyPath();
  v31 = sub_217F4AA34();
  v33 = v32;

  v34 = swift_allocObject();
  *(v34 + 2) = a1;
  *(v34 + 3) = a2;
  *(v34 + 4) = v31;
  *(v34 + 5) = v33;
  v97[10] = sub_217F4A2B4;
  v97[11] = v34;
  v35 = swift_allocObject();
  *(v35 + 16) = a1;
  *(v35 + 24) = a2;
  swift_getKeyPath();
  swift_getKeyPath();
  swift_getKeyPath();
  swift_getKeyPath();
  swift_getKeyPath();
  v36 = sub_217F4AA34();
  v38 = v37;

  v39 = swift_allocObject();
  *(v39 + 2) = a1;
  *(v39 + 3) = a2;
  *(v39 + 4) = v36;
  *(v39 + 5) = v38;
  v97[12] = sub_217F4A2B8;
  v97[13] = v39;
  v40 = swift_allocObject();
  *(v40 + 16) = a1;
  *(v40 + 24) = a2;
  swift_getKeyPath();
  swift_getKeyPath();
  swift_getKeyPath();
  swift_getKeyPath();
  swift_getKeyPath();
  v41 = sub_217F4AA34();
  v43 = v42;

  v44 = swift_allocObject();
  *(v44 + 2) = a1;
  *(v44 + 3) = a2;
  *(v44 + 4) = v41;
  *(v44 + 5) = v43;
  v97[14] = sub_217F4A2BC;
  v97[15] = v44;
  v45 = swift_allocObject();
  *(v45 + 16) = a1;
  *(v45 + 24) = a2;
  swift_getKeyPath();
  swift_getKeyPath();
  swift_getKeyPath();
  swift_getKeyPath();
  swift_getKeyPath();
  v46 = sub_217F4AA34();
  v48 = v47;

  v49 = swift_allocObject();
  *(v49 + 2) = a1;
  *(v49 + 3) = a2;
  *(v49 + 4) = v46;
  *(v49 + 5) = v48;
  v97[16] = sub_217F4A2C0;
  v97[17] = v49;
  v50 = swift_allocObject();
  *(v50 + 16) = a1;
  *(v50 + 24) = a2;
  swift_getKeyPath();
  swift_getKeyPath();
  swift_getKeyPath();
  swift_getKeyPath();
  swift_getKeyPath();
  v51 = sub_217F4AA34();
  v53 = v52;

  v54 = swift_allocObject();
  *(v54 + 2) = a1;
  *(v54 + 3) = a2;
  *(v54 + 4) = v51;
  *(v54 + 5) = v53;
  v97[18] = sub_217F4A2C4;
  v97[19] = v54;
  v55 = swift_allocObject();
  *(v55 + 16) = a1;
  *(v55 + 24) = a2;
  swift_getKeyPath();
  swift_getKeyPath();
  swift_getKeyPath();
  swift_getKeyPath();
  swift_getKeyPath();
  v56 = sub_217F4AA34();
  v58 = v57;

  v59 = swift_allocObject();
  *(v59 + 2) = a1;
  *(v59 + 3) = a2;
  *(v59 + 4) = v56;
  *(v59 + 5) = v58;
  v97[20] = sub_217F4A2C8;
  v97[21] = v59;
  v60 = swift_allocObject();
  *(v60 + 16) = a1;
  *(v60 + 24) = a2;
  swift_getKeyPath();
  swift_getKeyPath();
  swift_getKeyPath();
  swift_getKeyPath();
  swift_getKeyPath();
  v61 = sub_217F4AA34();
  v63 = v62;

  v64 = swift_allocObject();
  *(v64 + 2) = a1;
  *(v64 + 3) = a2;
  *(v64 + 4) = v61;
  *(v64 + 5) = v63;
  v97[22] = sub_217F4A2CC;
  v97[23] = v64;
  v65 = swift_allocObject();
  *(v65 + 16) = a1;
  *(v65 + 24) = a2;
  swift_getKeyPath();
  swift_getKeyPath();
  swift_getKeyPath();
  swift_getKeyPath();
  swift_getKeyPath();
  v66 = sub_217F4AA34();
  v68 = v67;

  v69 = swift_allocObject();
  *(v69 + 2) = a1;
  *(v69 + 3) = a2;
  *(v69 + 4) = v66;
  *(v69 + 5) = v68;
  v97[24] = sub_217F4A2D0;
  v97[25] = v69;
  v70 = swift_allocObject();
  *(v70 + 16) = a1;
  *(v70 + 24) = a2;
  swift_getKeyPath();
  swift_getKeyPath();
  swift_getKeyPath();
  swift_getKeyPath();
  swift_getKeyPath();
  v71 = sub_217F4AA34();
  v73 = v72;

  v74 = swift_allocObject();
  *(v74 + 2) = a1;
  *(v74 + 3) = a2;
  *(v74 + 4) = v71;
  *(v74 + 5) = v73;
  v97[26] = sub_217F4A2D4;
  v97[27] = v74;
  v75 = swift_allocObject();
  *(v75 + 16) = a1;
  *(v75 + 24) = a2;
  swift_getKeyPath();
  swift_getKeyPath();
  swift_getKeyPath();
  swift_getKeyPath();
  swift_getKeyPath();
  v76 = sub_217F4AA34();
  v78 = v77;

  v79 = swift_allocObject();
  *(v79 + 2) = a1;
  *(v79 + 3) = a2;
  *(v79 + 4) = v76;
  *(v79 + 5) = v78;
  v97[28] = sub_217F4A2D8;
  v97[29] = v79;
  v80 = swift_allocObject();
  *(v80 + 16) = a1;
  *(v80 + 24) = a2;
  swift_getKeyPath();
  swift_getKeyPath();
  swift_getKeyPath();
  swift_getKeyPath();
  swift_getKeyPath();
  v81 = sub_217F4AA34();
  v83 = v82;

  v84 = swift_allocObject();
  *(v84 + 2) = a1;
  *(v84 + 3) = a2;
  *(v84 + 4) = v81;
  *(v84 + 5) = v83;
  v97[30] = sub_217F4A2DC;
  v97[31] = v84;
  sub_217F4AC94();
  v85 = sub_217F4AA14();
  v87 = v86;

  v88 = swift_allocObject();
  v88[2] = a1;
  v88[3] = a2;
  v88[4] = v85;
  v88[5] = v87;
  v89 = qword_280C28EB8;

  if (v89 != -1)
  {
    swift_once();
  }

  v90 = sub_217F4AA24();
  v92 = v91;
  v93 = swift_allocObject();
  v93[2] = a1;
  v93[3] = a2;
  v93[4] = v90;
  v93[5] = v92;
  MEMORY[0x28223BE20](v93, v94);
  sub_217F4AA04();

  v95 = swift_allocObject();
  *(v95 + 16) = a1;
  *(v95 + 24) = a2;
  *(v95 + 32) = v98;
  return sub_217F4A27C;
}

double sub_217F4995C@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  sub_217E9B52C(a1, v4);
  if (v5 == 9)
  {
    sub_217E9B6D8(v4, a2);
  }

  else
  {
    sub_217E9B564(v4);
    result = 0.0;
    a2[1] = 0u;
    a2[2] = 0u;
    *a2 = 0u;
  }

  return result;
}

double sub_217F499B8@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  sub_217E9B52C(a1, v4);
  if (v5 == 10)
  {
    sub_217E9B6D8(v4, a2);
  }

  else
  {
    sub_217E9B564(v4);
    result = 0.0;
    a2[1] = 0u;
    a2[2] = 0u;
    *a2 = 0u;
  }

  return result;
}

double sub_217F49A14@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  sub_217E9B52C(a1, v4);
  if (v5 == 11)
  {
    sub_217E9B6D8(v4, a2);
  }

  else
  {
    sub_217E9B564(v4);
    result = 0.0;
    a2[1] = 0u;
    a2[2] = 0u;
    *a2 = 0u;
  }

  return result;
}

double sub_217F49A70@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  sub_217E9B52C(a1, v4);
  if (v5 == 16)
  {
    sub_217E9B6D8(v4, a2);
  }

  else
  {
    sub_217E9B564(v4);
    result = 0.0;
    a2[1] = 0u;
    a2[2] = 0u;
    *a2 = 0u;
  }

  return result;
}

double sub_217F49ACC@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  sub_217E9B52C(a1, v4);
  if (v5 == 17)
  {
    sub_217E9B6D8(v4, a2);
  }

  else
  {
    sub_217E9B564(v4);
    result = 0.0;
    a2[1] = 0u;
    a2[2] = 0u;
    *a2 = 0u;
  }

  return result;
}

double sub_217F49B28@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  sub_217E9B52C(a1, v4);
  if (v5 == 12)
  {
    sub_217E9B6D8(v4, a2);
  }

  else
  {
    sub_217E9B564(v4);
    result = 0.0;
    a2[1] = 0u;
    a2[2] = 0u;
    *a2 = 0u;
  }

  return result;
}

double sub_217F49B84@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  sub_217E9B52C(a1, v4);
  if (v5 == 14)
  {
    sub_217E9B6D8(v4, a2);
  }

  else
  {
    sub_217E9B564(v4);
    result = 0.0;
    a2[1] = 0u;
    a2[2] = 0u;
    *a2 = 0u;
  }

  return result;
}

uint64_t sub_217F49BE0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = sub_217E9B52C(a1, v6);
  if (v7 == 2)
  {
    v4 = v6[0];
    v5 = v6[1];
  }

  else
  {
    result = sub_217E9B564(v6);
    v4 = 0;
    v5 = 0;
  }

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_217F49C38@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = sub_217E9B52C(a1, v6);
  if (v7 == 3)
  {
    v4 = v6[0];
    v5 = v6[1];
  }

  else
  {
    result = sub_217E9B564(v6);
    v4 = 0;
    v5 = 0;
  }

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_217F49C90@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = sub_217E9B52C(a1, v6);
  if (v7 == 4)
  {
    v4 = v6[0];
    v5 = v6[1];
  }

  else
  {
    result = sub_217E9B564(v6);
    v4 = 0;
    v5 = 0;
  }

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_217F49CE8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = sub_217E9B52C(a1, v6);
  if (v7 == 5)
  {
    v4 = v6[0];
    v5 = v6[1];
  }

  else
  {
    result = sub_217E9B564(v6);
    v4 = 0;
    v5 = 0;
  }

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_217F49D40@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = sub_217E9B52C(a1, v6);
  if (v7 == 7)
  {
    v4 = v6[0];
    v5 = v6[1];
  }

  else
  {
    result = sub_217E9B564(v6);
    v4 = 0;
    v5 = 0;
  }

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_217F49D98(uint64_t a1, uint64_t *a2, uint64_t a3, __int128 *a4, __int128 *a5, uint64_t *a6, uint64_t a7, uint64_t a8)
{
  v9 = *a2;
  v10 = a2[1];
  v11 = *(a3 + 48);
  v20[2] = *(a3 + 32);
  v20[3] = v11;
  v21 = *(a3 + 64);
  v12 = *(a3 + 16);
  v20[0] = *a3;
  v20[1] = v12;
  v13 = *a6;
  v14 = *a4;
  v19 = *(a4 + 2);
  v15 = a5[1];
  v17[0] = *a5;
  v17[1] = v15;
  v18 = v14;
  return sub_217F42A54(a1, v9, v10, v20, &v18, v17, v13, a7, a8);
}

uint64_t sub_217F49E10@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = sub_217E9B52C(a1, v6);
  if (v7 == 8)
  {
    v4 = v6[0];
    v5 = v6[1];
  }

  else
  {
    result = sub_217E9B564(v6);
    v4 = 0;
    v5 = 0;
  }

  *a2 = v4;
  a2[1] = v5;
  return result;
}

double sub_217F49E68@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  sub_217E9B52C(a1, v4);
  if (v5 == 19)
  {
    sub_217E9B6D8(v4, a2);
  }

  else
  {
    sub_217E9B564(v4);
    result = 0.0;
    a2[1] = 0u;
    a2[2] = 0u;
    *a2 = 0u;
  }

  return result;
}

double sub_217F49EC4@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  sub_217E9B52C(a1, v4);
  if (v5 == 20)
  {
    sub_217E9B6D8(v4, a2);
  }

  else
  {
    sub_217E9B564(v4);
    result = 0.0;
    a2[1] = 0u;
    a2[2] = 0u;
    *a2 = 0u;
  }

  return result;
}

uint64_t sub_217F49F20(uint64_t a1, void *a2, uint64_t a3, __int128 *a4, __int128 *a5, uint64_t *a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a3 + 48);
  v17[2] = *(a3 + 32);
  v17[3] = v8;
  v18 = *(a3 + 64);
  v9 = *(a3 + 16);
  v17[0] = *a3;
  v17[1] = v9;
  v10 = *a6;
  v11 = *a4;
  v16 = *(a4 + 2);
  v12 = a5[1];
  v14[0] = *a5;
  v14[1] = v12;
  v15 = v11;
  return sub_217F430CC(a1, a2, v17, &v15, v14, v10, a7, a8);
}

double sub_217F49F80@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  sub_217E9B52C(a1, v4);
  if (v5 == 21)
  {
    sub_217E9B6D8(v4, a2);
  }

  else
  {
    sub_217E9B564(v4);
    result = 0.0;
    a2[1] = 0u;
    a2[2] = 0u;
    *a2 = 0u;
  }

  return result;
}

uint64_t (*sub_217F49FDC@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(uint64_t (*)(), void *)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t (**a5)()@<X8>))()
{
  v11 = *a1;
  v10 = a1[1];
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = v11;
  v12[5] = v10;

  v13 = a2(sub_217F4A320, v12);
  v15 = v14;

  if (!v5)
  {
    result = swift_allocObject();
    *(result + 2) = a3;
    *(result + 3) = a4;
    *(result + 4) = v13;
    *(result + 5) = v15;
    *a5 = sub_217F4A2E4;
    a5[1] = result;
  }

  return result;
}

uint64_t (*sub_217F4A0CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (**a3)()@<X8>))()
{
  result = sub_217F48648(a1, a2);
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t sub_217F4A0F4(uint64_t a1, uint64_t a2, void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  v6 = *v3;
  v7 = *(v3 + 8);
  return v6(a1, a2, __dst);
}

uint64_t sub_217F4A150(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_217F4A198(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_217F4A1D4()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  return v1();
}

uint64_t sub_217F4A234()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  return v1();
}

uint64_t sub_217F4A27C()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  return v1();
}

long double sub_217F4A324(double a1, double a2, long double a3, double a4)
{
  v7 = 0.0;
  if (a3 != 0.0)
  {
    v7 = 555.0;
    v9 = (1.0 - pow(a3, 555.0)) / (1.0 - a3);
    if (v9 >= a2)
    {
      v9 = a2;
    }

    v10 = 1.0 - (1.0 - a3) * v9;
    if (v10 != 0.0)
    {
      v11 = log(v10);
      v7 = v11 / log(a3);
    }
  }

  return pow(a3, v7) * a1 + a4;
}

double sub_217F4A3D4(double a1, double a2, double a3, double a4)
{
  v4 = a4;
  if (a2 > 0.0 && a3 > 0.0)
  {
    return ((a2 + -1.0) * exp2(-a1 / a3) + 1.0) * a4;
  }

  return v4;
}

double sub_217F4A42C(double a1, double a2, long double a3, long double a4, double a5)
{
  v5 = a2;
  if (a5 <= a1)
  {
    if (a1 != 0.0)
    {
      return pow(a5 / a1, a3) * a2;
    }
  }

  else if (a1 != 1.0)
  {
    return 1.0 - (1.0 - a2) * pow((1.0 - a5) / (1.0 - a1), a4);
  }

  return v5;
}

double sub_217F4A4A0(double a1, double a2, double a3)
{
  if (a3 <= 0.0 || a1 <= 0.0)
  {
    return 1.0;
  }

  else
  {
    return exp2(-a3 / a1 * a2);
  }
}

long double sub_217F4A4C8(long double a1, long double a2, long double a3, double a4)
{
  v6 = a1;
  if (a3 != 1.0 && a1 != 1.0)
  {
    v8 = a2;
    v9 = pow(a3, a1);
    a2 = v8;
    v6 = (1.0 - v9) / (1.0 - a3);
  }

  return v6 + pow(a3, a2) * a4;
}

void sub_217F4A540(long double a1, long double a2, double a3)
{
  if (a1 != 0.0)
  {
    v5 = (1.0 - pow(a1, a2)) / (1.0 - a1);
    if (v5 >= a3)
    {
      v5 = a3;
    }

    v6 = 1.0 - (1.0 - a1) * v5;
    if (v6 != 0.0)
    {
      log(v6);
      log(a1);
    }
  }
}

long double sub_217F4A5C8(char a1, double a2, double a3, long double a4, double a5, long double a6, double a7, long double a8, long double a9, double a10)
{
  v24 = pow(a4, a8);
  v25 = 1.0 - a4;
  v26 = (1.0 - v24) / (1.0 - a4);
  if (a4 == 0.0)
  {
    if ((a1 & 1) == 0)
    {
      v32 = a7 * 0.0;
      v33 = 1.0;
      v28 = v32;
      v34 = a9;
      if (a6 == 1.0)
      {
        goto LABEL_56;
      }

LABEL_52:
      if (v32 == v33)
      {
        v32 = 1.0;
        goto LABEL_56;
      }

      v44 = v33 - a6;
      goto LABEL_55;
    }

    if (a6 == 0.0)
    {
      v27 = 0.0;
      v28 = a7 * 0.0;
      goto LABEL_39;
    }

    v63 = a7;
    v31 = 0.0;
LABEL_28:
    v39 = a9;
    v40 = (1.0 - pow(a6, a9)) / (1.0 - a6);
    if (v40 >= a5)
    {
      v40 = a5;
    }

    v41 = 1.0 - (1.0 - a6) * v40;
    if (v41 != 0.0)
    {
      v42 = log(v41);
      v39 = v42 / log(a6);
    }

    v43 = v31 - v39;
    if (v26 >= a2)
    {
      v36 = a2;
    }

    else
    {
      v36 = v26;
    }

    a7 = v63;
    if (v43 >= 0.0)
    {
      v28 = v43 * v63;
      v27 = 0.0;
    }

    else
    {
      v27 = 0.0;
      v28 = v63 * 0.0;
    }

    if (a4 == 0.0)
    {
      goto LABEL_39;
    }

    goto LABEL_21;
  }

  if (v26 >= a3)
  {
    v29 = a3;
  }

  else
  {
    v29 = (1.0 - v24) / (1.0 - a4);
  }

  v30 = 1.0 - v25 * v29;
  v31 = a8;
  if (v30 == 0.0)
  {
    if ((a1 & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v35 = log(v30);
    v31 = v35 / log(a4);
    if ((a1 & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  if (a6 != 0.0)
  {
    v63 = a7;
    goto LABEL_28;
  }

  if (v31 < 0.0)
  {
    v28 = a7 * 0.0;
    goto LABEL_18;
  }

LABEL_17:
  v28 = v31 * a7;
LABEL_18:
  if (v26 >= a2)
  {
    v36 = a2;
  }

  else
  {
    v36 = v26;
  }

LABEL_21:
  v37 = 1.0 - v25 * v36;
  if (v37 == 0.0)
  {
    v27 = a8;
    if ((a1 & 1) == 0)
    {
      goto LABEL_50;
    }
  }

  else
  {
    v38 = log(v37);
    v27 = v38 / log(a4);
    if ((a1 & 1) == 0)
    {
      goto LABEL_50;
    }
  }

LABEL_39:
  if (a6 == 0.0)
  {
    if (v27 < 0.0)
    {
      v32 = a7 * 0.0;
      goto LABEL_51;
    }

LABEL_50:
    v32 = v27 * a7;
LABEL_51:
    v33 = 1.0;
    v34 = a9;
    if (a6 == 1.0)
    {
      goto LABEL_56;
    }

    goto LABEL_52;
  }

  v34 = a9;
  v44 = 1.0 - a6;
  v45 = (1.0 - pow(a6, a9)) / (1.0 - a6);
  if (v45 >= a10)
  {
    v45 = a10;
  }

  v46 = 1.0 - v44 * v45;
  v47 = a9;
  if (v46 != 0.0)
  {
    v48 = log(v46);
    v47 = v48 / log(a6);
  }

  v27 = v27 - v47;
  if (v27 >= 0.0)
  {
    goto LABEL_50;
  }

  v32 = a7 * 0.0;
  if (a6 != 1.0 && v32 != 1.0)
  {
LABEL_55:
    v32 = (1.0 - pow(a6, v32)) / v44;
  }

LABEL_56:
  v49 = pow(a6, v34);
  v50 = 1.0 - a6;
  v51 = 0.0;
  v52 = v34;
  v53 = 0.0;
  if (a6 != 0.0)
  {
    v54 = (1.0 - v49) / v50;
    v55 = a10;
    if (v54 < a10)
    {
      v55 = v54;
    }

    v56 = 1.0 - v50 * v55;
    v51 = v52;
    v53 = v52;
    if (v56 != 0.0)
    {
      v57 = log(v56);
      v51 = v57 / log(a6);
    }

    v58 = a5;
    if (v54 < a5)
    {
      v58 = v54;
    }

    v59 = 1.0 - v50 * v58;
    if (v59 != 0.0)
    {
      v60 = log(v59);
      v53 = v60 / log(a6);
    }
  }

  if (a6 != 1.0 && v51 != 1.0)
  {
    v51 = (1.0 - pow(a6, v51)) / v50;
  }

  v61 = v32 + pow(a6, v28) * 0.0;
  return v51 + pow(a6, v53) * v61;
}