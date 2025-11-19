uint64_t sub_26244849C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0DF78, &qword_26246E0B8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13[-1] - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2624570F8();
  sub_262462D88();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v17 = 0;
  sub_262462B58();
  type metadata accessor for NumberListExpressionDecoder();
  sub_2623ED108(v13, v14);
  __swift_destroy_boxed_opaque_existential_1(v13);
  sub_2623EB668(v14, v15);
  v17 = 1;
  sub_262462B58();
  type metadata accessor for NumberExpressionDecoder();
  sub_262427F88(v13, v14);
  __swift_destroy_boxed_opaque_existential_1(v13);
  (*(v6 + 8))(v9, v5);
  sub_2623EB668(v14, &v16);
  sub_26245714C(v15, a2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_262457184(v15);
}

uint64_t sub_2624486FC(uint64_t a1)
{
  v3 = v1;
  v5 = v3[3];
  v6 = v3[4];
  v7 = __swift_project_boxed_opaque_existential_1(v3, v5);
  v8 = a1;
  v9 = v7;
  v10 = (*(*(v6 + 8) + 24))(&v21, v8, v5);
  if (!v2)
  {
    v11 = v21;
    v12 = v3[8];
    v13 = v3[9];
    v14 = v10;
    __swift_project_boxed_opaque_existential_1(v3 + 5, v12);
    (*(*(v13 + 8) + 24))(&v21, v14, v12);

    if (v11 == 0.0)
    {
      return 2;
    }

    if (v22)
    {

      return 2;
    }

    v16 = *(*&v11 + 16);
    v17 = 32;
    do
    {
      v18 = v16;
      if (v16-- == 0)
      {
        break;
      }

      v20 = *(*&v11 + v17);
      v17 += 8;
    }

    while (v20 != v21);
    v9 = v18 != 0;
  }

  return v9;
}

uint64_t sub_262448860(_BYTE *a1, uint64_t a2)
{
  v4 = sub_2624486FC(a2);
  result = v5;
  if (!v2)
  {
    *a1 = v4;
  }

  return result;
}

uint64_t sub_2624488B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x75706E497473696CLL && a2 == 0xE900000000000074;
  if (v6 || (sub_262462C58() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E497265626D756ELL && a2 == 0xEB00000000747570)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_262462C58();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_262448998(uint64_t a1)
{
  v2 = sub_26245703C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2624489D4(uint64_t a1)
{
  v2 = sub_26245703C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_262448A10@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0DF68, &qword_26246E0B0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13[-1] - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26245703C();
  sub_262462D88();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v17 = 0;
  sub_262462B58();
  type metadata accessor for NumberListExpressionDecoder();
  sub_2623ED108(v13, v14);
  __swift_destroy_boxed_opaque_existential_1(v13);
  sub_2623EB668(v14, v15);
  v17 = 1;
  sub_262462B58();
  type metadata accessor for NumberExpressionDecoder();
  sub_262427F88(v13, v14);
  __swift_destroy_boxed_opaque_existential_1(v13);
  (*(v6 + 8))(v9, v5);
  sub_2623EB668(v14, &v16);
  sub_262457090(v15, a2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_2624570C8(v15);
}

uint64_t sub_262448C70(uint64_t a1)
{
  v3 = v1;
  v5 = v3[3];
  v6 = v3[4];
  v7 = __swift_project_boxed_opaque_existential_1(v3, v5);
  v8 = a1;
  v9 = v7;
  v10 = (*(*(v6 + 8) + 24))(&v20, v8, v5);
  if (!v2)
  {
    v11 = v20;
    v12 = v3[8];
    v13 = v3[9];
    v14 = v10;
    __swift_project_boxed_opaque_existential_1(v3 + 5, v12);
    (*(*(v13 + 8) + 24))(&v20, v14, v12);

    if (v11 == 0.0)
    {
      return 2;
    }

    if (v21)
    {

      return 2;
    }

    v16 = *(*&v11 + 16);
    v17 = 32;
    do
    {
      v18 = v16;
      if (!v16)
      {
        break;
      }

      v19 = *(*&v11 + v17);
      v17 += 8;
      --v16;
    }

    while (v19 == v20);
    v9 = v18 == 0;
  }

  return v9;
}

uint64_t sub_262448DD4(_BYTE *a1, uint64_t a2)
{
  v4 = sub_262448C70(a2);
  result = v5;
  if (!v2)
  {
    *a1 = v4;
  }

  return result;
}

uint64_t sub_262448E24(uint64_t a1)
{
  v2 = sub_262456F80();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_262448E60(uint64_t a1)
{
  v2 = sub_262456F80();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_262448E9C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0DF58, &qword_26246E0A8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13[-1] - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_262456F80();
  sub_262462D88();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v17 = 0;
  sub_262462B58();
  type metadata accessor for NumberListExpressionDecoder();
  sub_2623ED108(v13, v14);
  __swift_destroy_boxed_opaque_existential_1(v13);
  sub_2623EB668(v14, v15);
  v17 = 1;
  sub_262462B58();
  sub_2623ED108(v13, v14);
  __swift_destroy_boxed_opaque_existential_1(v13);
  (*(v6 + 8))(v9, v5);
  sub_2623EB668(v14, &v16);
  sub_262456FD4(v15, a2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_26245700C(v15);
}

uint64_t sub_2624490F8(uint64_t a1)
{
  v3 = v1;
  v5 = v3[3];
  v6 = v3[4];
  v7 = __swift_project_boxed_opaque_existential_1(v3, v5);
  v8 = a1;
  v9 = v7;
  v10 = (*(*(v6 + 8) + 24))(&v22, v8, v5);
  if (!v2)
  {
    v11 = v22;
    v12 = v3[8];
    v13 = v3[9];
    v14 = v10;
    __swift_project_boxed_opaque_existential_1(v3 + 5, v12);
    (*(*(v13 + 8) + 24))(&v22, v14, v12);

    if (v11 && v22)
    {
      v16 = *(v11 + 16);
      if (v16)
      {
        v17 = 0;
        do
        {
          v18 = *(v11 + 32 + 8 * v17++);
          v19 = *(v22 + 16);
          v20 = (v22 + 32);
          while (v19)
          {
            v21 = *v20++;
            --v19;
            if (v21 == v18)
            {
              v9 = 1;
              goto LABEL_15;
            }
          }
        }

        while (v17 != v16);
      }

      v9 = 0;
LABEL_15:
    }

    else
    {

      return 2;
    }
  }

  return v9;
}

uint64_t sub_262449284(_BYTE *a1, uint64_t a2)
{
  v4 = sub_2624490F8(a2);
  result = v5;
  if (!v2)
  {
    *a1 = v4;
  }

  return result;
}

uint64_t sub_2624492D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x75706E497473696CLL && a2 == 0xE900000000000074;
  if (v6 || (sub_262462C58() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x49737265626D756ELL && a2 == 0xEC0000007475706ELL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_262462C58();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_2624493BC(uint64_t a1)
{
  v2 = sub_262456EC4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2624493F8(uint64_t a1)
{
  v2 = sub_262456EC4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_262449434@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0DF48, &qword_26246E0A0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13[-1] - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_262456EC4();
  sub_262462D88();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v17 = 0;
  sub_262462B58();
  type metadata accessor for NumberListExpressionDecoder();
  sub_2623ED108(v13, v14);
  __swift_destroy_boxed_opaque_existential_1(v13);
  sub_2623EB668(v14, v15);
  v17 = 1;
  sub_262462B58();
  sub_2623ED108(v13, v14);
  __swift_destroy_boxed_opaque_existential_1(v13);
  (*(v6 + 8))(v9, v5);
  sub_2623EB668(v14, &v16);
  sub_262456F18(v15, a2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_262456F50(v15);
}

uint64_t sub_262449690(uint64_t a1)
{
  v3 = v1;
  v5 = v3[3];
  v6 = v3[4];
  v7 = __swift_project_boxed_opaque_existential_1(v3, v5);
  v8 = a1;
  v9 = v7;
  v10 = (*(*(v6 + 8) + 24))(&v22, v8, v5);
  if (!v2)
  {
    v11 = v22;
    v12 = v3[8];
    v13 = v3[9];
    v14 = v10;
    __swift_project_boxed_opaque_existential_1(v3 + 5, v12);
    (*(*(v13 + 8) + 24))(&v22, v14, v12);

    if (v11 && v22)
    {
      v16 = *(v22 + 16);
      if (v16)
      {
        v17 = 0;
        while (2)
        {
          v18 = *(v22 + 32 + 8 * v17++);
          v19 = *(v11 + 16);
          v20 = (v11 + 32);
          do
          {
            if (!v19)
            {
              v9 = 0;
              goto LABEL_15;
            }

            v21 = *v20++;
            --v19;
          }

          while (v21 != v18);
          if (v17 != v16)
          {
            continue;
          }

          break;
        }
      }

      v9 = 1;
LABEL_15:
    }

    else
    {

      return 2;
    }
  }

  return v9;
}

uint64_t sub_262449818(_BYTE *a1, uint64_t a2)
{
  v4 = sub_262449690(a2);
  result = v5;
  if (!v2)
  {
    *a1 = v4;
  }

  return result;
}

uint64_t sub_262449868(uint64_t a1)
{
  v2 = sub_262456E08();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2624498A4(uint64_t a1)
{
  v2 = sub_262456E08();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2624498E0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0DF38, &qword_26246E098);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13[-1] - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_262456E08();
  sub_262462D88();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v17 = 0;
  sub_262462B58();
  type metadata accessor for NumberListExpressionDecoder();
  sub_2623ED108(v13, v14);
  __swift_destroy_boxed_opaque_existential_1(v13);
  sub_2623EB668(v14, v15);
  v17 = 1;
  sub_262462B58();
  sub_2623ED108(v13, v14);
  __swift_destroy_boxed_opaque_existential_1(v13);
  (*(v6 + 8))(v9, v5);
  sub_2623EB668(v14, &v16);
  sub_262456E5C(v15, a2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_262456E94(v15);
}

uint64_t sub_262449B3C(uint64_t a1)
{
  sub_2623F3CA4(v1, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C628, &qword_262468F50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C630, &unk_262463AE0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_6;
  }

  sub_2623EB668(v9, v11);
  sub_2623F3CA4(v1 + 40, v9);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v8 = 0;
    memset(v7, 0, sizeof(v7));
    __swift_destroy_boxed_opaque_existential_1(v11);
LABEL_6:

    return 2;
  }

  sub_2623EB668(v7, v10);
  v4 = sub_2624426D0(a1, v11, v10, sub_262425210);
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(v10);
    return __swift_destroy_boxed_opaque_existential_1(v11);
  }

  else
  {
    v6 = v4;
    __swift_destroy_boxed_opaque_existential_1(v10);
    __swift_destroy_boxed_opaque_existential_1(v11);
    return v6;
  }
}

uint64_t sub_262449CAC(_BYTE *a1, uint64_t a2)
{
  v4 = sub_262449B3C(a2);
  result = v5;
  if (!v2)
  {
    *a1 = v4;
  }

  return result;
}

uint64_t sub_262449CFC(uint64_t a1)
{
  v2 = sub_262456DB4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_262449D38(uint64_t a1)
{
  v2 = sub_262456DB4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_262449D74@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0DF28, &qword_26246E090);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14[-1] - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_262456DB4();
  sub_262462D88();
  if (!v2)
  {
    sub_262462B58();
    type metadata accessor for NumberListExpressionDecoder();
    sub_2623ED108(v14, v15);
    __swift_destroy_boxed_opaque_existential_1(v14);
    (*(v6 + 8))(v9, v5);
    sub_2623EB668(v15, v16);
    v11 = v16[1];
    *a2 = v16[0];
    *(a2 + 16) = v11;
    *(a2 + 32) = v17;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_262449F48(uint64_t a1)
{
  v2 = sub_262456D60();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_262449F84(uint64_t a1)
{
  v2 = sub_262456D60();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_262449FC0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0DF18, &qword_26246E088);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14[-1] - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_262456D60();
  sub_262462D88();
  if (!v2)
  {
    sub_262462B58();
    type metadata accessor for NumberListExpressionDecoder();
    sub_2623ED108(v14, v15);
    __swift_destroy_boxed_opaque_existential_1(v14);
    (*(v6 + 8))(v9, v5);
    sub_2623EB668(v15, v16);
    v11 = v16[1];
    *a2 = v16[0];
    *(a2 + 16) = v11;
    *(a2 + 32) = v17;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_26244A17C(uint64_t a1)
{
  sub_2623F3CA4(v1, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C628, &qword_262468F50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C630, &unk_262463AE0);
  if (swift_dynamicCast())
  {
    sub_2623EB668(&v7, v9);
    v4 = sub_262442D90(a1, v9);
    if (v2)
    {
      return __swift_destroy_boxed_opaque_existential_1(v9);
    }

    else
    {
      v6 = v4;
      __swift_destroy_boxed_opaque_existential_1(v9);
      return v6;
    }
  }

  else
  {

    return 2;
  }
}

uint64_t sub_26244A278(uint64_t a1)
{
  v2 = sub_262456D0C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26244A2B4(uint64_t a1)
{
  v2 = sub_262456D0C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26244A2F0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0DF08, &qword_26246E080);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14[-1] - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_262456D0C();
  sub_262462D88();
  if (!v2)
  {
    sub_262462B58();
    type metadata accessor for NumberListExpressionDecoder();
    sub_2623ED108(v14, v15);
    __swift_destroy_boxed_opaque_existential_1(v14);
    (*(v6 + 8))(v9, v5);
    sub_2623EB668(v15, v16);
    v11 = v16[1];
    *a2 = v16[0];
    *(a2 + 16) = v11;
    *(a2 + 32) = v17;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_26244A4AC(uint64_t a1)
{
  sub_2623F3CA4(v1, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C628, &qword_262468F50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C630, &unk_262463AE0);
  if (swift_dynamicCast())
  {
    sub_2623EB668(&v7, v9);
    v4 = sub_262443374(a1, v9);
    if (v2)
    {
      return __swift_destroy_boxed_opaque_existential_1(v9);
    }

    else
    {
      v6 = v4;
      __swift_destroy_boxed_opaque_existential_1(v9);
      return v6;
    }
  }

  else
  {

    return 2;
  }
}

uint64_t sub_26244A590(_BYTE *a1, uint64_t a2)
{
  v4 = sub_26244A4AC(a2);
  result = v5;
  if (!v2)
  {
    *a1 = v4;
  }

  return result;
}

uint64_t sub_26244A5E0(uint64_t a1)
{
  v2 = sub_262456C50();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26244A61C(uint64_t a1)
{
  v2 = sub_262456C50();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26244A658@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0DEF8, &qword_26246E078);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13[-1] - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_262456C50();
  sub_262462D88();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v17 = 0;
  sub_262462B58();
  type metadata accessor for StringExpressionDecoder();
  sub_2623FB53C(v13, v14);
  __swift_destroy_boxed_opaque_existential_1(v13);
  sub_2623EB668(v14, v15);
  v17 = 1;
  sub_262462B58();
  sub_2623FB53C(v13, v14);
  __swift_destroy_boxed_opaque_existential_1(v13);
  (*(v6 + 8))(v9, v5);
  sub_2623EB668(v14, &v16);
  sub_262456CA4(v15, a2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_262456CDC(v15);
}

uint64_t sub_26244A8B4(uint64_t a1)
{
  v3 = v1;
  v5 = v3[3];
  v6 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v5);
  result = (*(*(v6 + 8) + 24))(&v24, a1, v5);
  if (!v2)
  {
    v8 = v25;
    v9 = v3[8];
    v10 = v3[9];
    v11 = result;
    __swift_project_boxed_opaque_existential_1(v3 + 5, v9);
    (*(*(v10 + 8) + 24))(&v24, v11, v9);

    v12 = v25;
    if (v8 && v25)
    {
      v13 = v24;
      v14 = HIBYTE(v25) & 0xF;
      if ((v25 & 0x2000000000000000) == 0)
      {
        v14 = v24 & 0xFFFFFFFFFFFFLL;
      }

      if (v14)
      {
        v15 = objc_allocWithZone(MEMORY[0x277CCAC68]);

        v16 = sub_26244FF6C(v13, v12, 0);
        v17 = sub_2624626D8();
        v18 = [v17 length];

        v19 = sub_2624626D8();

        v20 = [v16 rangeOfFirstMatchInString:v19 options:0 range:{0, v18}];
        v22 = v21;

        return !v20 && v18 == v22;
      }

      else
      {

        return 0;
      }
    }

    else
    {

      return 2;
    }
  }

  return result;
}

uint64_t sub_26244AB58(_BYTE *a1, uint64_t a2)
{
  v4 = sub_26244A8B4(a2);
  result = v5;
  if (!v2)
  {
    *a1 = v4;
  }

  return result;
}

uint64_t sub_26244ABA8()
{
  if (*v0)
  {
    result = 0x6E69727473627573;
  }

  else
  {
    result = 0x6E49676E69727473;
  }

  *v0;
  return result;
}

uint64_t sub_26244ABF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E49676E69727473 && a2 == 0xEB00000000747570;
  if (v6 || (sub_262462C58() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E69727473627573 && a2 == 0xEE007475706E4967)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_262462C58();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_26244ACE0(uint64_t a1)
{
  v2 = sub_262456B94();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26244AD1C(uint64_t a1)
{
  v2 = sub_262456B94();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26244AD58@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0DEF0, &qword_26246E070);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13[-1] - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_262456B94();
  sub_262462D88();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v17 = 0;
  sub_262462B58();
  type metadata accessor for StringExpressionDecoder();
  sub_2623FB53C(v13, v14);
  __swift_destroy_boxed_opaque_existential_1(v13);
  sub_2623EB668(v14, v15);
  v17 = 1;
  sub_262462B58();
  sub_2623FB53C(v13, v14);
  __swift_destroy_boxed_opaque_existential_1(v13);
  (*(v6 + 8))(v9, v5);
  sub_2623EB668(v14, &v16);
  sub_262456BE8(v15, a2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_262456C20(v15);
}

uint64_t sub_26244AFB4(uint64_t a1)
{
  v3 = v1;
  v5 = v3[3];
  v6 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v5);
  result = (*(*(v6 + 8) + 24))(&v18, a1, v5);
  if (!v2)
  {
    v9 = v18;
    v8 = v19;
    v10 = v3[8];
    v11 = v3[9];
    v12 = result;
    __swift_project_boxed_opaque_existential_1(v3 + 5, v10);
    (*(*(v11 + 8) + 24))(&v18, v12, v10);

    v13 = v19;
    if (v8 && v19)
    {
      v14 = v18;
      v18 = v9;
      v19 = v8;
      sub_262436704();

      v15 = sub_262462958();

      swift_bridgeObjectRelease_n();
      v16 = HIBYTE(v13) & 0xF;
      if ((v13 & 0x2000000000000000) == 0)
      {
        v16 = v14 & 0xFFFFFFFFFFFFLL;
      }

      v17 = v16 == 0;
      return (v15 & 1) != 0 || v17;
    }

    else
    {

      return 2;
    }
  }

  return result;
}

uint64_t sub_26244B164(_BYTE *a1, uint64_t a2)
{
  v4 = sub_26244AFB4(a2);
  result = v5;
  if (!v2)
  {
    *a1 = v4;
  }

  return result;
}

uint64_t sub_26244B1B4(uint64_t a1)
{
  v2 = sub_262456AD8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26244B1F0(uint64_t a1)
{
  v2 = sub_262456AD8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26244B22C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0DEE8, &qword_26246E068);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13[-1] - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_262456AD8();
  sub_262462D88();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v17 = 0;
  sub_262462B58();
  type metadata accessor for StringExpressionDecoder();
  sub_2623FB53C(v13, v14);
  __swift_destroy_boxed_opaque_existential_1(v13);
  sub_2623EB668(v14, v15);
  v17 = 1;
  sub_262462B58();
  sub_2623FB53C(v13, v14);
  __swift_destroy_boxed_opaque_existential_1(v13);
  (*(v6 + 8))(v9, v5);
  sub_2623EB668(v14, &v16);
  sub_262456B2C(v15, a2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_262456B64(v15);
}

uint64_t sub_26244B488(uint64_t a1)
{
  sub_2623F3CA4(v1, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0CAB8, &unk_262465A10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0CAC0, &qword_262468F30);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_6;
  }

  sub_2623EB668(v9, v11);
  sub_2623F3CA4(v1 + 40, v9);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v8 = 0;
    memset(v7, 0, sizeof(v7));
    __swift_destroy_boxed_opaque_existential_1(v11);
LABEL_6:

    return 2;
  }

  sub_2623EB668(v7, v10);
  v4 = sub_262442B0C(a1, v11, v10);
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(v10);
    return __swift_destroy_boxed_opaque_existential_1(v11);
  }

  else
  {
    v6 = v4;
    __swift_destroy_boxed_opaque_existential_1(v10);
    __swift_destroy_boxed_opaque_existential_1(v11);
    return v6;
  }
}

uint64_t sub_26244B5E4(_BYTE *a1, uint64_t a2)
{
  v4 = sub_26244B488(a2);
  result = v5;
  if (!v2)
  {
    *a1 = v4;
  }

  return result;
}

uint64_t sub_26244B634(uint64_t a1)
{
  v2 = sub_262456A1C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26244B670(uint64_t a1)
{
  v2 = sub_262456A1C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26244B6AC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0DED8, &qword_26246E060);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13[-1] - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_262456A1C();
  sub_262462D88();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v17 = 0;
  sub_262462B58();
  type metadata accessor for StringExpressionDecoder();
  sub_2623FB53C(v13, v14);
  __swift_destroy_boxed_opaque_existential_1(v13);
  sub_2623EB668(v14, v15);
  v17 = 1;
  sub_262462B58();
  sub_2623FB53C(v13, v14);
  __swift_destroy_boxed_opaque_existential_1(v13);
  (*(v6 + 8))(v9, v5);
  sub_2623EB668(v14, &v16);
  sub_262456A70(v15, a2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_262456AA8(v15);
}

uint64_t sub_26244B908(uint64_t a1)
{
  v3 = v1;
  v5 = v3[3];
  v6 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v5);
  result = (*(*(v6 + 8) + 24))(&v14, a1, v5);
  if (!v2)
  {
    v9 = v14;
    v8 = v15;
    v10 = v3[8];
    v11 = v3[9];
    v12 = result;
    __swift_project_boxed_opaque_existential_1(v3 + 5, v10);
    (*(*(v11 + 8) + 24))(&v14, v12, v10);

    if (v8 && v15)
    {
      v14 = v9;
      v15 = v8;
      sub_262436704();
      v13 = sub_262462948();

      return v13 == 0;
    }

    else
    {

      return 2;
    }
  }

  return result;
}

uint64_t sub_26244BA7C(_BYTE *a1, uint64_t a2)
{
  v4 = sub_26244B908(a2);
  result = v5;
  if (!v2)
  {
    *a1 = v4;
  }

  return result;
}

uint64_t sub_26244BACC(uint64_t a1)
{
  v2 = sub_262456960();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26244BB08(uint64_t a1)
{
  v2 = sub_262456960();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26244BB44@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C5C0, &qword_262467DD0);
  v50 = *(v4 - 8);
  v5 = *(v50 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v41 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0DEC8, &qword_26246E058);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v41 - v11;
  v14 = a1[3];
  v13 = a1[4];
  v60 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_262456960();
  sub_262462D88();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v60);
  }

  v48 = v7;
  LOBYTE(v51) = 0;
  sub_262462B58();
  type metadata accessor for StringExpressionDecoder();
  sub_2623FB53C(v55, v56);
  __swift_destroy_boxed_opaque_existential_1(v55);
  sub_2623EB668(v56, v57);
  LOBYTE(v51) = 2;
  sub_262462B58();
  type metadata accessor for BooleanExpressionDecoder();
  sub_262441880(v55, v56);
  __swift_destroy_boxed_opaque_existential_1(v55);
  sub_2623EB668(v56, &v59);
  LOBYTE(v56[0]) = 1;
  sub_2623F3688();
  sub_262462B38();
  v43 = v4;
  v16 = sub_262462BC8();
  v42 = *(v16 + 16);
  if (!v42)
  {
    v19 = MEMORY[0x277D84F98];
LABEL_20:

    (*(v50 + 8))(v48, v43);
    (*(v9 + 8))(v12, v8);
    v58 = v19;
    sub_2624569B4(v57, v49);
    __swift_destroy_boxed_opaque_existential_1(v60);
    return sub_2624569EC(v57);
  }

  v17 = 0;
  v18 = (v16 + 56);
  v19 = MEMORY[0x277D84F98];
  v41 = v16;
  while (1)
  {
    v47 = v19;
    if (v17 >= *(v16 + 16))
    {
      break;
    }

    v21 = *(v18 - 3);
    v22 = *(v18 - 2);
    v23 = *v18;
    v46 = v18;
    v24 = *(v18 - 1);
    v25 = v21;
    v51 = v21;
    v52 = v22;
    v53 = v24;
    v54 = v23;
    swift_bridgeObjectRetain_n();
    sub_262462B58();

    sub_262441880(v55, v56);
    v44 = v17;
    __swift_destroy_boxed_opaque_existential_1(v55);
    sub_2623EB668(v56, v55);
    v26 = v47;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v51 = v26;
    v27 = v22;
    v29 = sub_2624414FC(v25, v22);
    v30 = v26[2];
    v31 = (v28 & 1) == 0;
    v32 = v30 + v31;
    if (__OFADD__(v30, v31))
    {
      goto LABEL_22;
    }

    v33 = v28;
    if (v26[3] >= v32)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v28)
        {
          goto LABEL_5;
        }
      }

      else
      {
        sub_262461F90();
        if (v33)
        {
          goto LABEL_5;
        }
      }
    }

    else
    {
      sub_26246107C(v32, isUniquelyReferenced_nonNull_native);
      v34 = sub_2624414FC(v25, v27);
      if ((v33 & 1) != (v35 & 1))
      {
        goto LABEL_24;
      }

      v29 = v34;
      if (v33)
      {
LABEL_5:

        v19 = v51;
        v20 = (v51[7] + 40 * v29);
        __swift_destroy_boxed_opaque_existential_1(v20);
        sub_2623EB668(v55, v20);
        goto LABEL_6;
      }
    }

    v36 = v25;
    v19 = v51;
    v51[(v29 >> 6) + 8] |= 1 << v29;
    v37 = (v19[6] + 16 * v29);
    *v37 = v36;
    v37[1] = v27;
    sub_2623EB668(v55, v19[7] + 40 * v29);
    v38 = v19[2];
    v39 = __OFADD__(v38, 1);
    v40 = v38 + 1;
    if (v39)
    {
      goto LABEL_23;
    }

    v19[2] = v40;
LABEL_6:
    v16 = v41;
    v17 = v44 + 1;
    v18 = v46 + 32;
    if (v42 == v44 + 1)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_262462C78();
  __break(1u);
  return result;
}

uint64_t sub_26244C268(uint64_t a1)
{
  v4 = sub_26240D824(v1[5]);
  if (!v4)
  {
    goto LABEL_6;
  }

  v5 = v4;
  sub_2623F3CA4((v1 + 6), &v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D150, &unk_262468F10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D158, &unk_26246E140);
  if ((swift_dynamicCast() & 1) == 0)
  {

LABEL_6:

    return 2;
  }

  sub_2623EB668(v20, v25);
  v6 = v1[3];
  v7 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v6);
  v8 = (*(*(v7 + 8) + 24))(&v21, a1, v6);
  if (v2)
  {

    return __swift_destroy_boxed_opaque_existential_1(v25);
  }

  else
  {
    v9 = v8;
    v10 = v22;
    if (v22 && *(v5 + 16) && (v11 = v21, , v12 = sub_2624414FC(v11, v10), v14 = v13, , (v14 & 1) != 0))
    {
      sub_2623F3CA4(*(v5 + 56) + 40 * v12, v20);
      sub_2623EB668(v20, &v21);
      v15 = v23;
      v16 = v24;
      __swift_project_boxed_opaque_existential_1(&v21, v23);
      (*(v16 + 24))(&v28, v9, v15, v16);

      __swift_destroy_boxed_opaque_existential_1(&v21);
    }

    else
    {
      v17 = v26;
      v18 = v27;
      __swift_project_boxed_opaque_existential_1(v25, v26);
      (*(v18 + 24))(&v28, v9, v17, v18);
    }

    __swift_destroy_boxed_opaque_existential_1(v25);
    return v28;
  }
}

uint64_t sub_26244C4D0(_BYTE *a1, uint64_t a2)
{
  v4 = sub_26244C268(a2);
  result = v5;
  if (!v2)
  {
    *a1 = v4;
  }

  return result;
}

uint64_t sub_26244C520(uint64_t a1)
{
  v2 = sub_26245690C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26244C55C(uint64_t a1)
{
  v2 = sub_26245690C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26244C598@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0DEB8, &unk_26246E048);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14[-1] - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26245690C();
  sub_262462D88();
  if (!v2)
  {
    sub_262462B58();
    type metadata accessor for StringExpressionDecoder();
    sub_2623FB53C(v14, v15);
    __swift_destroy_boxed_opaque_existential_1(v14);
    (*(v6 + 8))(v9, v5);
    sub_2623EB668(v15, v16);
    v11 = v16[1];
    *a2 = v16[0];
    *(a2 + 16) = v11;
    *(a2 + 32) = v17;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_26244C76C(uint64_t a1)
{
  v2 = sub_2624568B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26244C7A8(uint64_t a1)
{
  v2 = sub_2624568B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26244C7E4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0DEA8, &qword_26246E040);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14[-1] - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2624568B8();
  sub_262462D88();
  if (!v2)
  {
    sub_262462B58();
    type metadata accessor for StringExpressionDecoder();
    sub_2623FB53C(v14, v15);
    __swift_destroy_boxed_opaque_existential_1(v14);
    (*(v6 + 8))(v9, v5);
    sub_2623EB668(v15, v16);
    v11 = v16[1];
    *a2 = v16[0];
    *(a2 + 16) = v11;
    *(a2 + 32) = v17;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_26244C9A0(uint64_t a1)
{
  sub_2623F3CA4(v1, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0CAB8, &unk_262465A10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0CAC0, &qword_262468F30);
  if (swift_dynamicCast())
  {
    sub_2623EB668(&v7, v9);
    v4 = sub_2624431F8(a1, v9);
    if (v2)
    {
      return __swift_destroy_boxed_opaque_existential_1(v9);
    }

    else
    {
      v6 = v4;
      __swift_destroy_boxed_opaque_existential_1(v9);
      return v6;
    }
  }

  else
  {

    return 2;
  }
}

uint64_t sub_26244CA9C(uint64_t a1)
{
  v2 = sub_262456864();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26244CAD8(uint64_t a1)
{
  v2 = sub_262456864();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26244CB14@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0DE98, &qword_26246E038);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14[-1] - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_262456864();
  sub_262462D88();
  if (!v2)
  {
    sub_262462B58();
    type metadata accessor for StringExpressionDecoder();
    sub_2623FB53C(v14, v15);
    __swift_destroy_boxed_opaque_existential_1(v14);
    (*(v6 + 8))(v9, v5);
    sub_2623EB668(v15, v16);
    v11 = v16[1];
    *a2 = v16[0];
    *(a2 + 16) = v11;
    *(a2 + 32) = v17;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_26244CCD0(uint64_t a1)
{
  sub_2623F3CA4(v1, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0CAB8, &unk_262465A10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0CAC0, &qword_262468F30);
  if (swift_dynamicCast())
  {
    sub_2623EB668(&v7, v9);
    v4 = sub_2624437DC(a1, v9);
    if (v2)
    {
      return __swift_destroy_boxed_opaque_existential_1(v9);
    }

    else
    {
      v6 = v4;
      __swift_destroy_boxed_opaque_existential_1(v9);
      return v6;
    }
  }

  else
  {

    return 2;
  }
}

uint64_t sub_26244CDB4(_BYTE *a1, uint64_t a2)
{
  v4 = sub_26244CCD0(a2);
  result = v5;
  if (!v2)
  {
    *a1 = v4;
  }

  return result;
}

uint64_t sub_26244CE04(uint64_t a1)
{
  v2 = sub_2624567A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26244CE40(uint64_t a1)
{
  v2 = sub_2624567A8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26244CE7C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0DE88, &qword_26246E030);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13[-1] - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2624567A8();
  sub_262462D88();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v17 = 0;
  sub_262462B58();
  type metadata accessor for StringListExpressionDecoder();
  sub_26241FE98(v13, v14);
  __swift_destroy_boxed_opaque_existential_1(v13);
  sub_2623EB668(v14, v15);
  v17 = 1;
  sub_262462B58();
  type metadata accessor for StringExpressionDecoder();
  sub_2623FB53C(v13, v14);
  __swift_destroy_boxed_opaque_existential_1(v13);
  (*(v6 + 8))(v9, v5);
  sub_2623EB668(v14, &v16);
  sub_2624567FC(v15, a2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_262456834(v15);
}

uint64_t sub_26244D0DC(uint64_t a1)
{
  v3 = v1;
  v5 = v3[3];
  v6 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v5);
  result = (*(*(v6 + 8) + 24))(v15, a1, v5);
  if (!v2)
  {
    v8 = v15[0];
    v9 = v3[8];
    v10 = v3[9];
    v11 = result;
    __swift_project_boxed_opaque_existential_1(v3 + 5, v9);
    (*(*(v10 + 8) + 24))(v15, v11, v9);

    if (v8 && v15[1])
    {
      MEMORY[0x28223BE20](v12);
      v14[2] = v15;

      v13 = sub_262432DB4(sub_262457CD8, v14, v8);
      swift_bridgeObjectRelease_n();

      return v13 & 1;
    }

    else
    {

      return 2;
    }
  }

  return result;
}

uint64_t sub_26244D288(_BYTE *a1, uint64_t a2)
{
  v4 = sub_26244D0DC(a2);
  result = v5;
  if (!v2)
  {
    *a1 = v4;
  }

  return result;
}

uint64_t sub_26244D2D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x75706E497473696CLL && a2 == 0xE900000000000074;
  if (v6 || (sub_262462C58() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E49676E69727473 && a2 == 0xEB00000000747570)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_262462C58();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_26244D3C0(uint64_t a1)
{
  v2 = sub_2624566EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26244D3FC(uint64_t a1)
{
  v2 = sub_2624566EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26244D438@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0DE78, &qword_26246E028);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13[-1] - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2624566EC();
  sub_262462D88();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v17 = 0;
  sub_262462B58();
  type metadata accessor for StringListExpressionDecoder();
  sub_26241FE98(v13, v14);
  __swift_destroy_boxed_opaque_existential_1(v13);
  sub_2623EB668(v14, v15);
  v17 = 1;
  sub_262462B58();
  type metadata accessor for StringExpressionDecoder();
  sub_2623FB53C(v13, v14);
  __swift_destroy_boxed_opaque_existential_1(v13);
  (*(v6 + 8))(v9, v5);
  sub_2623EB668(v14, &v16);
  sub_262456740(v15, a2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_262456778(v15);
}

uint64_t sub_26244D698(uint64_t a1)
{
  v3 = v1;
  v5 = v3[3];
  v6 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v5);
  v7 = (*(*(v6 + 8) + 24))(&v18, a1, v5);
  if (!v2)
  {
    v8 = v18;
    v9 = v3[8];
    v10 = v3[9];
    v11 = v7;
    __swift_project_boxed_opaque_existential_1(v3 + 5, v9);
    (*(*(v10 + 8) + 24))(&v18, v11, v9);

    v13 = v19;
    if (v8 && v19)
    {
      v14 = *(v8 + 16);
      if (v14)
      {
        v15 = v18;
        v16 = (v8 + 40);
        while (1)
        {
          v17 = *(v16 - 1) == v15 && v13 == *v16;
          if (!v17 && (sub_262462C58() & 1) == 0)
          {
            break;
          }

          v16 += 2;
          if (!--v14)
          {
            goto LABEL_16;
          }
        }

        v6 = 0;
      }

      else
      {
LABEL_16:
        v6 = 1;
      }
    }

    else
    {

      return 2;
    }
  }

  return v6;
}

uint64_t sub_26244D81C(_BYTE *a1, uint64_t a2)
{
  v4 = sub_26244D698(a2);
  result = v5;
  if (!v2)
  {
    *a1 = v4;
  }

  return result;
}

uint64_t sub_26244D86C(uint64_t a1)
{
  v2 = sub_262456630();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26244D8A8(uint64_t a1)
{
  v2 = sub_262456630();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26244D8E4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0DE68, &qword_26246E020);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13[-1] - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_262456630();
  sub_262462D88();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v17 = 0;
  sub_262462B58();
  type metadata accessor for StringListExpressionDecoder();
  sub_26241FE98(v13, v14);
  __swift_destroy_boxed_opaque_existential_1(v13);
  sub_2623EB668(v14, v15);
  v17 = 1;
  sub_262462B58();
  sub_26241FE98(v13, v14);
  __swift_destroy_boxed_opaque_existential_1(v13);
  (*(v6 + 8))(v9, v5);
  sub_2623EB668(v14, &v16);
  sub_262456684(v15, a2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_2624566BC(v15);
}

uint64_t sub_26244DB40(uint64_t a1)
{
  v3 = v1;
  v5 = v3[3];
  v6 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v5);
  v7 = (*(*(v6 + 8) + 24))(v23, a1, v5);
  if (v2)
  {
    return v6;
  }

  v8 = v23[0];
  v9 = v3[8];
  v10 = v3[9];
  v11 = v7;
  __swift_project_boxed_opaque_existential_1(v3 + 5, v9);
  v12 = (*(*(v10 + 8) + 24))(v23, v11, v9);

  v14 = v23[0];
  if (!v8 || !v23[0])
  {

    return 2;
  }

  v22[5] = v12;
  v15 = *(v8 + 16);

  v16 = (v8 + 40);
  v24 = -v15;
  v17 = -1;
  while (1)
  {
    v18 = v24 + v17;
    if (v24 + v17 == -1)
    {
LABEL_10:
      v6 = v18 != -1;

      swift_bridgeObjectRelease_n();
      return v6;
    }

    if (++v17 >= *(v8 + 16))
    {
      break;
    }

    v19 = v16 + 2;
    v20 = *v16;
    v23[0] = *(v16 - 1);
    v23[1] = v20;
    MEMORY[0x28223BE20](result);
    v22[2] = v23;

    v21 = sub_262432DB4(sub_26245ADAC, v22, v14);

    v16 = v19;
    if (v21)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_26244DD50(_BYTE *a1, uint64_t a2)
{
  v4 = sub_26244DB40(a2);
  result = v5;
  if (!v2)
  {
    *a1 = v4;
  }

  return result;
}

uint64_t sub_26244DDA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x75706E497473696CLL && a2 == 0xE900000000000074;
  if (v6 || (sub_262462C58() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x4973676E69727473 && a2 == 0xEC0000007475706ELL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_262462C58();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_26244DE88(uint64_t a1)
{
  v2 = sub_262456574();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26244DEC4(uint64_t a1)
{
  v2 = sub_262456574();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26244DF00@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0DE58, &qword_26246E018);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13[-1] - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_262456574();
  sub_262462D88();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v17 = 0;
  sub_262462B58();
  type metadata accessor for StringListExpressionDecoder();
  sub_26241FE98(v13, v14);
  __swift_destroy_boxed_opaque_existential_1(v13);
  sub_2623EB668(v14, v15);
  v17 = 1;
  sub_262462B58();
  sub_26241FE98(v13, v14);
  __swift_destroy_boxed_opaque_existential_1(v13);
  (*(v6 + 8))(v9, v5);
  sub_2623EB668(v14, &v16);
  sub_2624565C8(v15, a2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_262456600(v15);
}

uint64_t sub_26244E15C(uint64_t a1)
{
  v3 = v1;
  v5 = v3[3];
  v6 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v5);
  v7 = (*(*(v6 + 8) + 24))(v23, a1, v5);
  if (v2)
  {
    return v6;
  }

  v8 = v23[0];
  v9 = v3[8];
  v10 = v3[9];
  v11 = v7;
  __swift_project_boxed_opaque_existential_1(v3 + 5, v9);
  v12 = (*(*(v10 + 8) + 24))(v23, v11, v9);

  v14 = v23[0];
  if (!v8 || !v23[0])
  {

    return 2;
  }

  v22[5] = v12;
  v15 = *(v23[0] + 16);

  v16 = (v14 + 40);
  v24 = -v15;
  v17 = -1;
  while (1)
  {
    v18 = v24 + v17;
    if (v24 + v17 == -1)
    {
LABEL_10:
      v6 = v18 == -1;

      swift_bridgeObjectRelease_n();
      return v6;
    }

    if (++v17 >= *(v14 + 16))
    {
      break;
    }

    v19 = v16 + 2;
    v20 = *v16;
    v23[0] = *(v16 - 1);
    v23[1] = v20;
    MEMORY[0x28223BE20](result);
    v22[2] = v23;

    v21 = sub_262432DB4(sub_26245ADAC, v22, v8);

    v16 = v19;
    if ((v21 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_26244E36C(_BYTE *a1, uint64_t a2)
{
  v4 = sub_26244E15C(a2);
  result = v5;
  if (!v2)
  {
    *a1 = v4;
  }

  return result;
}

uint64_t sub_26244E3BC(uint64_t a1)
{
  v2 = sub_2624564B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26244E3F8(uint64_t a1)
{
  v2 = sub_2624564B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26244E434@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0DE48, &qword_26246E010);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13[-1] - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2624564B8();
  sub_262462D88();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v17 = 0;
  sub_262462B58();
  type metadata accessor for StringListExpressionDecoder();
  sub_26241FE98(v13, v14);
  __swift_destroy_boxed_opaque_existential_1(v13);
  sub_2623EB668(v14, v15);
  v17 = 1;
  sub_262462B58();
  sub_26241FE98(v13, v14);
  __swift_destroy_boxed_opaque_existential_1(v13);
  (*(v6 + 8))(v9, v5);
  sub_2623EB668(v14, &v16);
  sub_26245650C(v15, a2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_262456544(v15);
}

uint64_t sub_26244E690(uint64_t a1)
{
  sub_2623F3CA4(v1, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D198, qword_262468F60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D1A0, &qword_2624697E0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_6;
  }

  sub_2623EB668(v9, v11);
  sub_2623F3CA4(v1 + 40, v9);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v8 = 0;
    memset(v7, 0, sizeof(v7));
    __swift_destroy_boxed_opaque_existential_1(v11);
LABEL_6:

    return 2;
  }

  sub_2623EB668(v7, v10);
  v4 = sub_2624426D0(a1, v11, v10, sub_262425180);
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(v10);
    return __swift_destroy_boxed_opaque_existential_1(v11);
  }

  else
  {
    v6 = v4;
    __swift_destroy_boxed_opaque_existential_1(v10);
    __swift_destroy_boxed_opaque_existential_1(v11);
    return v6;
  }
}

uint64_t sub_26244E800(_BYTE *a1, uint64_t a2)
{
  v4 = sub_26244E690(a2);
  result = v5;
  if (!v2)
  {
    *a1 = v4;
  }

  return result;
}

uint64_t sub_26244E850(uint64_t a1)
{
  v2 = sub_262456464();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26244E88C(uint64_t a1)
{
  v2 = sub_262456464();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26244E8C8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0DE38, &qword_26246E008);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14[-1] - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_262456464();
  sub_262462D88();
  if (!v2)
  {
    sub_262462B58();
    type metadata accessor for StringListExpressionDecoder();
    sub_26241FE98(v14, v15);
    __swift_destroy_boxed_opaque_existential_1(v14);
    (*(v6 + 8))(v9, v5);
    sub_2623EB668(v15, v16);
    v11 = v16[1];
    *a2 = v16[0];
    *(a2 + 16) = v11;
    *(a2 + 32) = v17;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_26244EA9C(uint64_t a1)
{
  v2 = sub_262456410();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26244EAD8(uint64_t a1)
{
  v2 = sub_262456410();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26244EB14@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0DE28, &qword_26246E000);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14[-1] - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_262456410();
  sub_262462D88();
  if (!v2)
  {
    sub_262462B58();
    type metadata accessor for StringListExpressionDecoder();
    sub_26241FE98(v14, v15);
    __swift_destroy_boxed_opaque_existential_1(v14);
    (*(v6 + 8))(v9, v5);
    sub_2623EB668(v15, v16);
    v11 = v16[1];
    *a2 = v16[0];
    *(a2 + 16) = v11;
    *(a2 + 32) = v17;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_26244ECD0(uint64_t a1)
{
  sub_2623F3CA4(v1, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D198, qword_262468F60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D1A0, &qword_2624697E0);
  if (swift_dynamicCast())
  {
    sub_2623EB668(&v7, v9);
    v4 = sub_262442D90(a1, v9);
    if (v2)
    {
      return __swift_destroy_boxed_opaque_existential_1(v9);
    }

    else
    {
      v6 = v4;
      __swift_destroy_boxed_opaque_existential_1(v9);
      return v6;
    }
  }

  else
  {

    return 2;
  }
}

uint64_t sub_26244EDCC(uint64_t a1)
{
  v2 = sub_2624563BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26244EE08(uint64_t a1)
{
  v2 = sub_2624563BC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26244EE44@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0DE18, &qword_26246DFF8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14[-1] - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2624563BC();
  sub_262462D88();
  if (!v2)
  {
    sub_262462B58();
    type metadata accessor for StringListExpressionDecoder();
    sub_26241FE98(v14, v15);
    __swift_destroy_boxed_opaque_existential_1(v14);
    (*(v6 + 8))(v9, v5);
    sub_2623EB668(v15, v16);
    v11 = v16[1];
    *a2 = v16[0];
    *(a2 + 16) = v11;
    *(a2 + 32) = v17;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_26244F000(uint64_t a1)
{
  sub_2623F3CA4(v1, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D198, qword_262468F60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D1A0, &qword_2624697E0);
  if (swift_dynamicCast())
  {
    sub_2623EB668(&v7, v9);
    v4 = sub_262443374(a1, v9);
    if (v2)
    {
      return __swift_destroy_boxed_opaque_existential_1(v9);
    }

    else
    {
      v6 = v4;
      __swift_destroy_boxed_opaque_existential_1(v9);
      return v6;
    }
  }

  else
  {

    return 2;
  }
}

uint64_t sub_26244F0E4(_BYTE *a1, uint64_t a2)
{
  v4 = sub_26244F000(a2);
  result = v5;
  if (!v2)
  {
    *a1 = v4;
  }

  return result;
}

uint64_t sub_26244F134@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x417475706E69 && a2 == 0xE600000000000000;
  if (v6 || (sub_262462C58() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x427475706E69 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_262462C58();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_26244F208(uint64_t a1)
{
  v2 = sub_262456300();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26244F244(uint64_t a1)
{
  v2 = sub_262456300();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26244F280@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0DE08, &qword_26246DFF0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13[-1] - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_262456300();
  sub_262462D88();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v17 = 0;
  sub_262462B58();
  type metadata accessor for DecisionExpressionDecoder();
  sub_26240E4F4(v13, v14);
  __swift_destroy_boxed_opaque_existential_1(v13);
  sub_2623EB668(v14, v15);
  v17 = 1;
  sub_262462B58();
  sub_26240E4F4(v13, v14);
  __swift_destroy_boxed_opaque_existential_1(v13);
  (*(v6 + 8))(v9, v5);
  sub_2623EB668(v14, &v16);
  sub_262456354(v15, a2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_26245638C(v15);
}

uint64_t sub_26244F4DC(uint64_t a1)
{
  sub_2623F3CA4(v1, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0CFC8, &unk_262467E60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0CFD0, &qword_26246E160);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_6;
  }

  sub_2623EB668(v9, v11);
  sub_2623F3CA4(v1 + 40, v9);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v8 = 0;
    memset(v7, 0, sizeof(v7));
    __swift_destroy_boxed_opaque_existential_1(v11);
LABEL_6:

    return 2;
  }

  sub_2623EB668(v7, v10);
  v4 = sub_262442820(a1, v11, v10);
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(v10);
    return __swift_destroy_boxed_opaque_existential_1(v11);
  }

  else
  {
    v6 = v4;
    __swift_destroy_boxed_opaque_existential_1(v10);
    __swift_destroy_boxed_opaque_existential_1(v11);
    return v6;
  }
}

uint64_t sub_26244F638(_BYTE *a1, uint64_t a2)
{
  v4 = sub_26244F4DC(a2);
  result = v5;
  if (!v2)
  {
    *a1 = v4;
  }

  return result;
}

uint64_t sub_26244F688(uint64_t a1)
{
  v2 = sub_2624562AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26244F6C4(uint64_t a1)
{
  v2 = sub_2624562AC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26244F700@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0DDF8, &qword_26246DFE8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14[-1] - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2624562AC();
  sub_262462D88();
  if (!v2)
  {
    sub_262462B58();
    type metadata accessor for DecisionExpressionDecoder();
    sub_26240E4F4(v14, v15);
    __swift_destroy_boxed_opaque_existential_1(v14);
    (*(v6 + 8))(v9, v5);
    sub_2623EB668(v15, v16);
    v11 = v16[1];
    *a2 = v16[0];
    *(a2 + 16) = v11;
    *(a2 + 32) = v17;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_26244F8D4(uint64_t a1)
{
  v2 = sub_262456258();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26244F910(uint64_t a1)
{
  v2 = sub_262456258();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26244F94C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0DDE8, &qword_26246DFE0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14[-1] - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_262456258();
  sub_262462D88();
  if (!v2)
  {
    sub_262462B58();
    type metadata accessor for DecisionExpressionDecoder();
    sub_26240E4F4(v14, v15);
    __swift_destroy_boxed_opaque_existential_1(v14);
    (*(v6 + 8))(v9, v5);
    sub_2623EB668(v15, v16);
    v11 = v16[1];
    *a2 = v16[0];
    *(a2 + 16) = v11;
    *(a2 + 32) = v17;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_26244FB08(uint64_t a1)
{
  sub_2623F3CA4(v1, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0CFC8, &unk_262467E60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0CFD0, &qword_26246E160);
  if (swift_dynamicCast())
  {
    sub_2623EB668(&v7, v9);
    v4 = sub_262442F0C(a1, v9);
    if (v2)
    {
      return __swift_destroy_boxed_opaque_existential_1(v9);
    }

    else
    {
      v6 = v4;
      __swift_destroy_boxed_opaque_existential_1(v9);
      return v6;
    }
  }

  else
  {

    return 2;
  }
}

uint64_t sub_26244FC04(uint64_t a1)
{
  v2 = sub_262456204();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26244FC40(uint64_t a1)
{
  v2 = sub_262456204();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26244FC7C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0DDD8, &qword_26246DFD8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14[-1] - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_262456204();
  sub_262462D88();
  if (!v2)
  {
    sub_262462B58();
    type metadata accessor for DecisionExpressionDecoder();
    sub_26240E4F4(v14, v15);
    __swift_destroy_boxed_opaque_existential_1(v14);
    (*(v6 + 8))(v9, v5);
    sub_2623EB668(v15, v16);
    v11 = v16[1];
    *a2 = v16[0];
    *(a2 + 16) = v11;
    *(a2 + 32) = v17;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_26244FE38(uint64_t a1)
{
  sub_2623F3CA4(v1, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0CFC8, &unk_262467E60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0CFD0, &qword_26246E160);
  if (swift_dynamicCast())
  {
    sub_2623EB668(&v7, v9);
    v4 = sub_2624434F0(a1, v9);
    if (v2)
    {
      return __swift_destroy_boxed_opaque_existential_1(v9);
    }

    else
    {
      v6 = v4;
      __swift_destroy_boxed_opaque_existential_1(v9);
      return v6;
    }
  }

  else
  {

    return 2;
  }
}

uint64_t sub_26244FF1C(_BYTE *a1, uint64_t a2)
{
  v4 = sub_26244FE38(a2);
  result = v5;
  if (!v2)
  {
    *a1 = v4;
  }

  return result;
}

id sub_26244FF6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v5 = sub_2624626D8();

  v11[0] = 0;
  v6 = [v3 initWithPattern:v5 options:a3 error:v11];

  if (v6)
  {
    v7 = v11[0];
  }

  else
  {
    v8 = v11[0];
    sub_262462548();

    swift_willThrow();
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

unint64_t sub_262450048()
{
  result = qword_27FF0D930;
  if (!qword_27FF0D930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D930);
  }

  return result;
}

unint64_t sub_26245009C()
{
  result = qword_27FF0D938;
  if (!qword_27FF0D938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D938);
  }

  return result;
}

unint64_t sub_2624500F0()
{
  result = qword_27FF0D940;
  if (!qword_27FF0D940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D940);
  }

  return result;
}

unint64_t sub_262450144()
{
  result = qword_27FF0D948;
  if (!qword_27FF0D948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D948);
  }

  return result;
}

unint64_t sub_262450198()
{
  result = qword_27FF0D950;
  if (!qword_27FF0D950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D950);
  }

  return result;
}

unint64_t sub_2624501EC()
{
  result = qword_27FF0D958;
  if (!qword_27FF0D958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D958);
  }

  return result;
}

unint64_t sub_262450240()
{
  result = qword_27FF0D960;
  if (!qword_27FF0D960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D960);
  }

  return result;
}

unint64_t sub_262450294()
{
  result = qword_27FF0D968;
  if (!qword_27FF0D968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D968);
  }

  return result;
}

unint64_t sub_2624502E8()
{
  result = qword_27FF0D970;
  if (!qword_27FF0D970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D970);
  }

  return result;
}

unint64_t sub_26245033C()
{
  result = qword_27FF0D978;
  if (!qword_27FF0D978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D978);
  }

  return result;
}

unint64_t sub_262450390()
{
  result = qword_27FF0D980;
  if (!qword_27FF0D980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D980);
  }

  return result;
}

unint64_t sub_2624503E4()
{
  result = qword_27FF0D988;
  if (!qword_27FF0D988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D988);
  }

  return result;
}

unint64_t sub_262450438()
{
  result = qword_27FF0D990;
  if (!qword_27FF0D990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D990);
  }

  return result;
}

unint64_t sub_26245048C()
{
  result = qword_27FF0D998;
  if (!qword_27FF0D998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D998);
  }

  return result;
}

unint64_t sub_2624504E0()
{
  result = qword_27FF0D9A0;
  if (!qword_27FF0D9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D9A0);
  }

  return result;
}

unint64_t sub_262450534()
{
  result = qword_27FF0D9A8;
  if (!qword_27FF0D9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D9A8);
  }

  return result;
}

unint64_t sub_262450588()
{
  result = qword_27FF0D9B0;
  if (!qword_27FF0D9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D9B0);
  }

  return result;
}

unint64_t sub_2624505DC()
{
  result = qword_27FF0D9B8;
  if (!qword_27FF0D9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D9B8);
  }

  return result;
}

unint64_t sub_262450630()
{
  result = qword_27FF0D9C0;
  if (!qword_27FF0D9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D9C0);
  }

  return result;
}

unint64_t sub_262450684()
{
  result = qword_27FF0D9C8;
  if (!qword_27FF0D9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D9C8);
  }

  return result;
}

unint64_t sub_2624506D8()
{
  result = qword_27FF0D9D0;
  if (!qword_27FF0D9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D9D0);
  }

  return result;
}

unint64_t sub_26245072C()
{
  result = qword_27FF0D9D8;
  if (!qword_27FF0D9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D9D8);
  }

  return result;
}

unint64_t sub_262450780()
{
  result = qword_27FF0D9E0;
  if (!qword_27FF0D9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D9E0);
  }

  return result;
}

unint64_t sub_2624507D4()
{
  result = qword_27FF0D9E8;
  if (!qword_27FF0D9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D9E8);
  }

  return result;
}

unint64_t sub_262450828()
{
  result = qword_27FF0D9F0;
  if (!qword_27FF0D9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D9F0);
  }

  return result;
}

unint64_t sub_26245087C()
{
  result = qword_27FF0D9F8;
  if (!qword_27FF0D9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D9F8);
  }

  return result;
}

unint64_t sub_2624508D0()
{
  result = qword_27FF0DA00;
  if (!qword_27FF0DA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0DA00);
  }

  return result;
}

unint64_t sub_262450924()
{
  result = qword_27FF0DA08;
  if (!qword_27FF0DA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0DA08);
  }

  return result;
}

unint64_t sub_262450978()
{
  result = qword_27FF0DA10;
  if (!qword_27FF0DA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0DA10);
  }

  return result;
}

unint64_t sub_2624509CC()
{
  result = qword_27FF0DA18;
  if (!qword_27FF0DA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0DA18);
  }

  return result;
}

unint64_t sub_262450A20()
{
  result = qword_27FF0DA20;
  if (!qword_27FF0DA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0DA20);
  }

  return result;
}

unint64_t sub_262450A74()
{
  result = qword_27FF0DA28;
  if (!qword_27FF0DA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0DA28);
  }

  return result;
}

unint64_t sub_262450AC8()
{
  result = qword_27FF0DA30;
  if (!qword_27FF0DA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0DA30);
  }

  return result;
}

unint64_t sub_262450B1C()
{
  result = qword_27FF0DA38;
  if (!qword_27FF0DA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0DA38);
  }

  return result;
}

unint64_t sub_262450B70()
{
  result = qword_2813BDAC0;
  if (!qword_2813BDAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BDAC0);
  }

  return result;
}

unint64_t sub_262450BC4()
{
  result = qword_2813BDAC8;
  if (!qword_2813BDAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BDAC8);
  }

  return result;
}

unint64_t sub_262450C18()
{
  result = qword_2813BD930;
  if (!qword_2813BD930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BD930);
  }

  return result;
}

unint64_t sub_262450C6C()
{
  result = qword_2813BD938;
  if (!qword_2813BD938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BD938);
  }

  return result;
}

unint64_t sub_262450CC0()
{
  result = qword_27FF0DA40;
  if (!qword_27FF0DA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0DA40);
  }

  return result;
}

unint64_t sub_262450D14()
{
  result = qword_27FF0DA48;
  if (!qword_27FF0DA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0DA48);
  }

  return result;
}

unint64_t sub_262450D68()
{
  result = qword_27FF0DA50;
  if (!qword_27FF0DA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0DA50);
  }

  return result;
}

unint64_t sub_262450DBC()
{
  result = qword_27FF0DA58;
  if (!qword_27FF0DA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0DA58);
  }

  return result;
}

unint64_t sub_262450E10()
{
  result = qword_27FF0DA60;
  if (!qword_27FF0DA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0DA60);
  }

  return result;
}

unint64_t sub_262450E64()
{
  result = qword_27FF0DA68;
  if (!qword_27FF0DA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0DA68);
  }

  return result;
}

unint64_t sub_262450EB8()
{
  result = qword_27FF0DA70;
  if (!qword_27FF0DA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0DA70);
  }

  return result;
}

unint64_t sub_262450F0C()
{
  result = qword_27FF0DA78;
  if (!qword_27FF0DA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0DA78);
  }

  return result;
}

unint64_t sub_262450F60()
{
  result = qword_27FF0DA80;
  if (!qword_27FF0DA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0DA80);
  }

  return result;
}

unint64_t sub_262450FB4()
{
  result = qword_27FF0DA88;
  if (!qword_27FF0DA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0DA88);
  }

  return result;
}

unint64_t sub_262451008()
{
  result = qword_27FF0DA90;
  if (!qword_27FF0DA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0DA90);
  }

  return result;
}

unint64_t sub_26245105C()
{
  result = qword_27FF0DA98;
  if (!qword_27FF0DA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0DA98);
  }

  return result;
}

unint64_t sub_2624510B0()
{
  result = qword_27FF0DAA0;
  if (!qword_27FF0DAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0DAA0);
  }

  return result;
}

unint64_t sub_262451104()
{
  result = qword_27FF0DAA8;
  if (!qword_27FF0DAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0DAA8);
  }

  return result;
}

unint64_t sub_262451158()
{
  result = qword_27FF0DAB0;
  if (!qword_27FF0DAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0DAB0);
  }

  return result;
}

unint64_t sub_2624511AC()
{
  result = qword_27FF0DAB8;
  if (!qword_27FF0DAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0DAB8);
  }

  return result;
}

unint64_t sub_262451200()
{
  result = qword_27FF0DAC0;
  if (!qword_27FF0DAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0DAC0);
  }

  return result;
}

unint64_t sub_262451254()
{
  result = qword_27FF0DAC8;
  if (!qword_27FF0DAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0DAC8);
  }

  return result;
}

unint64_t sub_2624512A8()
{
  result = qword_27FF0DAD0;
  if (!qword_27FF0DAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0DAD0);
  }

  return result;
}

unint64_t sub_2624512FC()
{
  result = qword_27FF0DAD8;
  if (!qword_27FF0DAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0DAD8);
  }

  return result;
}

unint64_t sub_262451350()
{
  result = qword_27FF0DAE0;
  if (!qword_27FF0DAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0DAE0);
  }

  return result;
}

unint64_t sub_2624513A4()
{
  result = qword_27FF0DAE8;
  if (!qword_27FF0DAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0DAE8);
  }

  return result;
}

unint64_t sub_2624513F8()
{
  result = qword_27FF0DAF0;
  if (!qword_27FF0DAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0DAF0);
  }

  return result;
}

unint64_t sub_26245144C()
{
  result = qword_27FF0DAF8;
  if (!qword_27FF0DAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0DAF8);
  }

  return result;
}

unint64_t sub_2624514A0()
{
  result = qword_27FF0DB00;
  if (!qword_27FF0DB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0DB00);
  }

  return result;
}

unint64_t sub_2624514F4()
{
  result = qword_27FF0DB08;
  if (!qword_27FF0DB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0DB08);
  }

  return result;
}

unint64_t sub_262451548()
{
  result = qword_27FF0DB10;
  if (!qword_27FF0DB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0DB10);
  }

  return result;
}

unint64_t sub_26245159C()
{
  result = qword_27FF0DB18;
  if (!qword_27FF0DB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0DB18);
  }

  return result;
}

unint64_t sub_2624515F0()
{
  result = qword_27FF0DB20;
  if (!qword_27FF0DB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0DB20);
  }

  return result;
}

unint64_t sub_262451644()
{
  result = qword_27FF0DB28;
  if (!qword_27FF0DB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0DB28);
  }

  return result;
}

unint64_t sub_262451698()
{
  result = qword_27FF0DB30;
  if (!qword_27FF0DB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0DB30);
  }

  return result;
}

unint64_t sub_2624516EC()
{
  result = qword_27FF0DB38;
  if (!qword_27FF0DB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0DB38);
  }

  return result;
}

unint64_t sub_262451740()
{
  result = qword_27FF0DB40;
  if (!qword_27FF0DB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0DB40);
  }

  return result;
}

unint64_t sub_262451794()
{
  result = qword_27FF0DB48;
  if (!qword_27FF0DB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0DB48);
  }

  return result;
}

unint64_t sub_2624517E8()
{
  result = qword_27FF0DB50;
  if (!qword_27FF0DB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0DB50);
  }

  return result;
}

unint64_t sub_26245183C()
{
  result = qword_27FF0DB58;
  if (!qword_27FF0DB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0DB58);
  }

  return result;
}

unint64_t sub_262451890()
{
  result = qword_27FF0DB60;
  if (!qword_27FF0DB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0DB60);
  }

  return result;
}

unint64_t sub_2624518E4()
{
  result = qword_27FF0DB68;
  if (!qword_27FF0DB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0DB68);
  }

  return result;
}

unint64_t sub_262451938()
{
  result = qword_27FF0DB70;
  if (!qword_27FF0DB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0DB70);
  }

  return result;
}

unint64_t sub_26245198C()
{
  result = qword_27FF0DB78;
  if (!qword_27FF0DB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0DB78);
  }

  return result;
}

unint64_t sub_2624519E0()
{
  result = qword_27FF0DB80;
  if (!qword_27FF0DB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0DB80);
  }

  return result;
}

unint64_t sub_262451A34()
{
  result = qword_27FF0DB88;
  if (!qword_27FF0DB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0DB88);
  }

  return result;
}

unint64_t sub_262451A88()
{
  result = qword_27FF0DB90;
  if (!qword_27FF0DB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0DB90);
  }

  return result;
}

unint64_t sub_262451ADC()
{
  result = qword_27FF0DB98;
  if (!qword_27FF0DB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0DB98);
  }

  return result;
}

unint64_t sub_262451B30()
{
  result = qword_2813BD578;
  if (!qword_2813BD578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BD578);
  }

  return result;
}

unint64_t sub_262451B84()
{
  result = qword_2813BD580;
  if (!qword_2813BD580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BD580);
  }

  return result;
}

unint64_t sub_262451BD8()
{
  result = qword_27FF0DBA0;
  if (!qword_27FF0DBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0DBA0);
  }

  return result;
}

unint64_t sub_262451C2C()
{
  result = qword_27FF0DBA8;
  if (!qword_27FF0DBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0DBA8);
  }

  return result;
}

unint64_t sub_262451C80()
{
  result = qword_27FF0DBB0;
  if (!qword_27FF0DBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0DBB0);
  }

  return result;
}

unint64_t sub_262451CD4()
{
  result = qword_27FF0DBB8;
  if (!qword_27FF0DBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0DBB8);
  }

  return result;
}

uint64_t type metadata accessor for BooleanRule()
{
  result = qword_27FF0DC10;
  if (!qword_27FF0DC10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_262451D74(uint64_t *a1)
{
  v3 = sub_262462A88();
  v15 = *(v3 - 8);
  v4 = *(v15 + 64);
  MEMORY[0x28223BE20](v3);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0DBD0, &unk_26246C348);
  v16 = *(v5 - 8);
  v6 = *(v16 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  v9 = a1[4];
  v10 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_262452518();
  sub_262462D88();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v14 = a1;
    v11 = v16;
    v10 = sub_262462B98();
    (*(v11 + 8))(v8, v5);
    __swift_destroy_boxed_opaque_existential_1(v14);
  }

  return v10 & 1;
}

uint64_t sub_2624520B4(uint64_t *a1)
{
  v3 = sub_262462A88();
  v15 = *(v3 - 8);
  v4 = *(v15 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0DBE8, &qword_26246C360);
  v16 = *(v7 - 8);
  v8 = *(v16 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v13 - v9;
  v11 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v11);
  sub_26245256C();
  sub_262462D88();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v13[2] = v6;
    v14 = a1;
    LOBYTE(v17) = 0;
    v11 = sub_262462B88();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0DBF0, &qword_26246C368);
    LOBYTE(v18) = 1;
    sub_2624525C0();
    sub_262462BB8();
    (*(v16 + 8))(v10, v7);
    __swift_destroy_boxed_opaque_existential_1(v14);
  }

  return v11;
}

unint64_t sub_262452470()
{
  result = qword_2813BDA30;
  if (!qword_2813BDA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BDA30);
  }

  return result;
}

unint64_t sub_2624524C4()
{
  result = qword_27FF0DBC8;
  if (!qword_27FF0DBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0DBC8);
  }

  return result;
}

unint64_t sub_262452518()
{
  result = qword_27FF0DBD8;
  if (!qword_27FF0DBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0DBD8);
  }

  return result;
}

unint64_t sub_26245256C()
{
  result = qword_2813BDA50;
  if (!qword_2813BDA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BDA50);
  }

  return result;
}

unint64_t sub_2624525C0()
{
  result = qword_2813BD3C8;
  if (!qword_2813BD3C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF0DBF0, &qword_26246C368);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BD3C8);
  }

  return result;
}

unint64_t sub_26245263C()
{
  result = qword_27FF0DC08;
  if (!qword_27FF0DC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0DC08);
  }

  return result;
}

uint64_t sub_262452690(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BooleanRule();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2624526F4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t getEnumTagSinglePayload for BooleanValue(unsigned __int8 *a1, unsigned int a2)
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
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_262452834(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_26245287C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

void sub_2624528F4()
{
  sub_2624529A0();
  if (v0 <= 0x3F)
  {
    type metadata accessor for RulesValidity();
    if (v1 <= 0x3F)
    {
      sub_2624529F0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2624529A0()
{
  if (!qword_27FF0DC20)
  {
    v0 = sub_262462928();
    if (!v1)
    {
      atomic_store(v0, &qword_27FF0DC20);
    }
  }
}

unint64_t sub_2624529F0()
{
  result = qword_27FF0DC28;
  if (!qword_27FF0DC28)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27FF0DC28);
  }

  return result;
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

uint64_t sub_262452AD8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_262452B20(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BooleanExpressionDecoder.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xCE)
  {
    goto LABEL_17;
  }

  if (a2 + 50 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 50) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 50;
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

      return (*a1 | (v4 << 8)) - 50;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 50;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x33;
  v8 = v6 - 51;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for BooleanExpressionDecoder.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 50 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 50) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xCE)
  {
    v4 = 0;
  }

  if (a2 > 0xCD)
  {
    v5 = ((a2 - 206) >> 8) + 1;
    *result = a2 + 50;
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
    *result = a2 + 50;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_262452F10()
{
  result = qword_27FF0DC30;
  if (!qword_27FF0DC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0DC30);
  }

  return result;
}

unint64_t sub_262452F64(uint64_t a1)
{
  result = sub_26245009C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_262452F8C(uint64_t a1)
{
  result = sub_262450144();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_262452FB4(uint64_t a1)
{
  result = sub_2624501EC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_262452FDC(uint64_t a1)
{
  result = sub_262450294();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_262453004(uint64_t a1)
{
  result = sub_26245033C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26245302C(uint64_t a1)
{
  result = sub_2624503E4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_262453054(uint64_t a1)
{
  result = sub_26245048C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26245307C(uint64_t a1)
{
  result = sub_262450534();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2624530A4(uint64_t a1)
{
  result = sub_2624505DC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2624530CC(uint64_t a1)
{
  result = sub_262450684();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2624530F4(uint64_t a1)
{
  result = sub_26245072C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26245311C(uint64_t a1)
{
  result = sub_2624507D4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_262453144(uint64_t a1)
{
  result = sub_26245087C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26245316C(uint64_t a1)
{
  result = sub_262450924();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_262453194(uint64_t a1)
{
  result = sub_2624509CC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2624531BC(uint64_t a1)
{
  result = sub_262450A74();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2624531E4(uint64_t a1)
{
  result = sub_262450B1C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26245320C(uint64_t a1)
{
  result = sub_262450BC4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_262453234(uint64_t a1)
{
  result = sub_262450C6C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26245325C(uint64_t a1)
{
  result = sub_262450D14();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_262453284(uint64_t a1)
{
  result = sub_262450DBC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2624532AC(uint64_t a1)
{
  result = sub_262450E64();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2624532D4(uint64_t a1)
{
  result = sub_262450F0C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2624532FC(uint64_t a1)
{
  result = sub_262450FB4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_262453324(uint64_t a1)
{
  result = sub_26245105C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26245334C(uint64_t a1)
{
  result = sub_262451104();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_262453374(uint64_t a1)
{
  result = sub_2624511AC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26245339C(uint64_t a1)
{
  result = sub_262451254();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2624533C4(uint64_t a1)
{
  result = sub_2624512FC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2624533EC(uint64_t a1)
{
  result = sub_2624513A4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_262453414(uint64_t a1)
{
  result = sub_26245144C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26245343C(uint64_t a1)
{
  result = sub_2624514F4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_262453464(uint64_t a1)
{
  result = sub_26245159C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26245348C(uint64_t a1)
{
  result = sub_262451644();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2624534B4(uint64_t a1)
{
  result = sub_2624516EC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2624534DC(uint64_t a1)
{
  result = sub_262451794();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_262453504(uint64_t a1)
{
  result = sub_26245183C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26245352C(uint64_t a1)
{
  result = sub_2624518E4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_262453554(uint64_t a1)
{
  result = sub_26245198C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26245357C(uint64_t a1)
{
  result = sub_262451A34();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2624535A4(uint64_t a1)
{
  result = sub_262451ADC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2624535CC(uint64_t a1)
{
  result = sub_262451B84();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2624535F4(uint64_t a1)
{
  result = sub_262451C2C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26245361C(uint64_t a1)
{
  result = sub_262451CD4();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_262453644(uint64_t a1)
{
  result = sub_262453BFC(&qword_27FF0DC38, type metadata accessor for BooleanRule);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26245369C(uint64_t a1)
{
  result = sub_2624536C4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2624536C4()
{
  result = qword_2813BDA38;
  if (!qword_2813BDA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BDA38);
  }

  return result;
}

unint64_t sub_262453718(uint64_t a1)
{
  result = sub_262453740();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_262453740()
{
  result = qword_27FF0DC40;
  if (!qword_27FF0DC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0DC40);
  }

  return result;
}

unint64_t sub_262453798()
{
  result = qword_27FF0DC48;
  if (!qword_27FF0DC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0DC48);
  }

  return result;
}

unint64_t sub_2624537F0()
{
  result = qword_27FF0DC50;
  if (!qword_27FF0DC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0DC50);
  }

  return result;
}

unint64_t sub_262453848()
{
  result = qword_27FF0DC58;
  if (!qword_27FF0DC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0DC58);
  }

  return result;
}

unint64_t sub_2624538A0()
{
  result = qword_27FF0DC60;
  if (!qword_27FF0DC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0DC60);
  }

  return result;
}

unint64_t sub_2624538F8()
{
  result = qword_27FF0DC68;
  if (!qword_27FF0DC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0DC68);
  }

  return result;
}

unint64_t sub_262453950()
{
  result = qword_2813BDA40;
  if (!qword_2813BDA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BDA40);
  }

  return result;
}

unint64_t sub_2624539A8()
{
  result = qword_2813BDA48;
  if (!qword_2813BDA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BDA48);
  }

  return result;
}

unint64_t sub_262453A00()
{
  result = qword_27FF0DC70;
  if (!qword_27FF0DC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0DC70);
  }

  return result;
}

unint64_t sub_262453A58()
{
  result = qword_27FF0DC78;
  if (!qword_27FF0DC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0DC78);
  }

  return result;
}

unint64_t sub_262453AAC(uint64_t a1)
{
  result = sub_262453AD4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_262453AD4()
{
  result = qword_27FF0DC80;
  if (!qword_27FF0DC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0DC80);
  }

  return result;
}

unint64_t sub_262453B28(uint64_t a1)
{
  result = sub_262453B50();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_262453B50()
{
  result = qword_2813BDA28;
  if (!qword_2813BDA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BDA28);
  }

  return result;
}

uint64_t sub_262453BA4(uint64_t a1)
{
  result = sub_262453BFC(&qword_27FF0DC88, type metadata accessor for BooleanRule);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_262453BFC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_262453C44(uint64_t a1)
{
  result = sub_262453C6C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_262453C6C()
{
  result = qword_27FF0DC90;
  if (!qword_27FF0DC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0DC90);
  }

  return result;
}

unint64_t sub_262453CC0(uint64_t a1)
{
  result = sub_262453CE8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_262453CE8()
{
  result = qword_27FF0DC98;
  if (!qword_27FF0DC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0DC98);
  }

  return result;
}

unint64_t sub_262453D3C(uint64_t a1)
{
  result = sub_262453D64();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_262453D64()
{
  result = qword_2813BD570;
  if (!qword_2813BD570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BD570);
  }

  return result;
}

unint64_t sub_262453DB8(uint64_t a1)
{
  result = sub_262453DE0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_262453DE0()
{
  result = qword_27FF0DCA0;
  if (!qword_27FF0DCA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0DCA0);
  }

  return result;
}

unint64_t sub_262453E34(uint64_t a1)
{
  result = sub_262453E5C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_262453E5C()
{
  result = qword_27FF0DCA8;
  if (!qword_27FF0DCA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0DCA8);
  }

  return result;
}

unint64_t sub_262453EB0(uint64_t a1)
{
  result = sub_262453ED8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_262453ED8()
{
  result = qword_27FF0DCB0;
  if (!qword_27FF0DCB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0DCB0);
  }

  return result;
}

unint64_t sub_262453F2C(uint64_t a1)
{
  result = sub_262453F54();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_262453F54()
{
  result = qword_27FF0DCB8;
  if (!qword_27FF0DCB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0DCB8);
  }

  return result;
}

unint64_t sub_262453FA8(uint64_t a1)
{
  result = sub_262453FD0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_262453FD0()
{
  result = qword_27FF0DCC0;
  if (!qword_27FF0DCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0DCC0);
  }

  return result;
}

unint64_t sub_262454024(uint64_t a1)
{
  result = sub_26245404C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26245404C()
{
  result = qword_27FF0DCC8;
  if (!qword_27FF0DCC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0DCC8);
  }

  return result;
}

unint64_t sub_2624540A0(uint64_t a1)
{
  result = sub_2624540C8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2624540C8()
{
  result = qword_27FF0DCD0;
  if (!qword_27FF0DCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0DCD0);
  }

  return result;
}

unint64_t sub_26245411C(uint64_t a1)
{
  result = sub_262454144();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_262454144()
{
  result = qword_27FF0DCD8;
  if (!qword_27FF0DCD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0DCD8);
  }

  return result;
}

unint64_t sub_262454198(uint64_t a1)
{
  result = sub_2624541C0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2624541C0()
{
  result = qword_27FF0DCE0;
  if (!qword_27FF0DCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0DCE0);
  }

  return result;
}

unint64_t sub_262454214(uint64_t a1)
{
  result = sub_26245423C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26245423C()
{
  result = qword_27FF0DCE8;
  if (!qword_27FF0DCE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0DCE8);
  }

  return result;
}

unint64_t sub_262454290(uint64_t a1)
{
  result = sub_2624542B8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2624542B8()
{
  result = qword_27FF0DCF0;
  if (!qword_27FF0DCF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0DCF0);
  }

  return result;
}

unint64_t sub_26245430C(uint64_t a1)
{
  result = sub_262454334();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_262454334()
{
  result = qword_27FF0DCF8;
  if (!qword_27FF0DCF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0DCF8);
  }

  return result;
}

unint64_t sub_262454388(uint64_t a1)
{
  result = sub_2624543B0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2624543B0()
{
  result = qword_27FF0DD00;
  if (!qword_27FF0DD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0DD00);
  }

  return result;
}

unint64_t sub_262454404(uint64_t a1)
{
  result = sub_26245442C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26245442C()
{
  result = qword_27FF0DD08;
  if (!qword_27FF0DD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0DD08);
  }

  return result;
}

unint64_t sub_262454480(uint64_t a1)
{
  result = sub_2624544A8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2624544A8()
{
  result = qword_27FF0DD10;
  if (!qword_27FF0DD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0DD10);
  }

  return result;
}

unint64_t sub_2624544FC(uint64_t a1)
{
  result = sub_262454524();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_262454524()
{
  result = qword_27FF0DD18;
  if (!qword_27FF0DD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0DD18);
  }

  return result;
}

unint64_t sub_262454578(uint64_t a1)
{
  result = sub_2624545A0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2624545A0()
{
  result = qword_27FF0DD20;
  if (!qword_27FF0DD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0DD20);
  }

  return result;
}

unint64_t sub_2624545F4(uint64_t a1)
{
  result = sub_26245461C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26245461C()
{
  result = qword_27FF0DD28;
  if (!qword_27FF0DD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0DD28);
  }

  return result;
}

unint64_t sub_262454670(uint64_t a1)
{
  result = sub_262454698();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_262454698()
{
  result = qword_27FF0DD30;
  if (!qword_27FF0DD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0DD30);
  }

  return result;
}

unint64_t sub_2624546EC(uint64_t a1)
{
  result = sub_262454714();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_262454714()
{
  result = qword_27FF0DD38;
  if (!qword_27FF0DD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0DD38);
  }

  return result;
}

unint64_t sub_262454768(uint64_t a1)
{
  result = sub_262454790();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_262454790()
{
  result = qword_27FF0DD40;
  if (!qword_27FF0DD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0DD40);
  }

  return result;
}

unint64_t sub_2624547E4(uint64_t a1)
{
  result = sub_26245480C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26245480C()
{
  result = qword_27FF0DD48;
  if (!qword_27FF0DD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0DD48);
  }

  return result;
}

unint64_t sub_262454860(uint64_t a1)
{
  result = sub_262454888();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_262454888()
{
  result = qword_2813BD928;
  if (!qword_2813BD928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BD928);
  }

  return result;
}

unint64_t sub_2624548DC(uint64_t a1)
{
  result = sub_262454904();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_262454904()
{
  result = qword_2813BDAB8;
  if (!qword_2813BDAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BDAB8);
  }

  return result;
}

unint64_t sub_262454958(uint64_t a1)
{
  result = sub_262454980();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_262454980()
{
  result = qword_27FF0DD50;
  if (!qword_27FF0DD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0DD50);
  }

  return result;
}

unint64_t sub_2624549D4(uint64_t a1)
{
  result = sub_2624549FC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2624549FC()
{
  result = qword_27FF0DD58;
  if (!qword_27FF0DD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0DD58);
  }

  return result;
}

unint64_t sub_262454A50(uint64_t a1)
{
  result = sub_262454A78();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_262454A78()
{
  result = qword_27FF0DD60;
  if (!qword_27FF0DD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0DD60);
  }

  return result;
}

unint64_t sub_262454ACC(uint64_t a1)
{
  result = sub_262454AF4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_262454AF4()
{
  result = qword_27FF0DD68;
  if (!qword_27FF0DD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0DD68);
  }

  return result;
}

unint64_t sub_262454B48(uint64_t a1)
{
  result = sub_262454B70();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_262454B70()
{
  result = qword_27FF0DD70;
  if (!qword_27FF0DD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0DD70);
  }

  return result;
}

unint64_t sub_262454BC4(uint64_t a1)
{
  result = sub_262454BEC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_262454BEC()
{
  result = qword_27FF0DD78;
  if (!qword_27FF0DD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0DD78);
  }

  return result;
}

unint64_t sub_262454C40(uint64_t a1)
{
  result = sub_262454C68();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_262454C68()
{
  result = qword_27FF0DD80;
  if (!qword_27FF0DD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0DD80);
  }

  return result;
}

unint64_t sub_262454CBC(uint64_t a1)
{
  result = sub_262454CE4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_262454CE4()
{
  result = qword_27FF0DD88;
  if (!qword_27FF0DD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0DD88);
  }

  return result;
}

unint64_t sub_262454D38(uint64_t a1)
{
  result = sub_262454D60();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_262454D60()
{
  result = qword_27FF0DD90;
  if (!qword_27FF0DD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0DD90);
  }

  return result;
}

unint64_t sub_262454DB4(uint64_t a1)
{
  result = sub_262454DDC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_262454DDC()
{
  result = qword_27FF0DD98;
  if (!qword_27FF0DD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0DD98);
  }

  return result;
}

unint64_t sub_262454E30(uint64_t a1)
{
  result = sub_262454E58();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_262454E58()
{
  result = qword_27FF0DDA0;
  if (!qword_27FF0DDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0DDA0);
  }

  return result;
}

unint64_t sub_262454EAC(uint64_t a1)
{
  result = sub_262454ED4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_262454ED4()
{
  result = qword_27FF0DDA8;
  if (!qword_27FF0DDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0DDA8);
  }

  return result;
}

unint64_t sub_262454F28(uint64_t a1)
{
  result = sub_262454F50();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_262454F50()
{
  result = qword_27FF0DDB0;
  if (!qword_27FF0DDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0DDB0);
  }

  return result;
}

unint64_t sub_262454FA4(uint64_t a1)
{
  result = sub_262454FCC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_262454FCC()
{
  result = qword_27FF0DDB8;
  if (!qword_27FF0DDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0DDB8);
  }

  return result;
}

unint64_t sub_262455020(uint64_t a1)
{
  result = sub_262455048();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_262455048()
{
  result = qword_27FF0DDC0;
  if (!qword_27FF0DDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0DDC0);
  }

  return result;
}

unint64_t sub_26245509C(uint64_t a1)
{
  result = sub_2624550C4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2624550C4()
{
  result = qword_27FF0DDC8;
  if (!qword_27FF0DDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0DDC8);
  }

  return result;
}

unint64_t sub_262455118(uint64_t a1)
{
  result = sub_262455140();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_262455140()
{
  result = qword_27FF0DDD0;
  if (!qword_27FF0DDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0DDD0);
  }

  return result;
}

unint64_t sub_262455198()
{
  result = qword_2813BD6E8;
  if (!qword_2813BD6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BD6E8);
  }

  return result;
}

unint64_t sub_2624551F0()
{
  result = qword_2813BD6F0;
  if (!qword_2813BD6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BD6F0);
  }

  return result;
}

uint64_t sub_262455244(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
  if (v4 || (sub_262462C58() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D614E646C656966 && a2 == 0xE900000000000065 || (sub_262462C58() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746C7561666564 && a2 == 0xE700000000000000 || (sub_262462C58() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_262462C58() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x80000002624717E0 == a2 || (sub_262462C58() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6C615673656C7572 && a2 == 0xED00007974696469 || (sub_262462C58() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6369676F6CLL && a2 == 0xE500000000000000 || (sub_262462C58() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 29263 && a2 == 0xE200000000000000 || (sub_262462C58() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 6581825 && a2 == 0xE300000000000000 || (sub_262462C58() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 7630670 && a2 == 0xE300000000000000 || (sub_262462C58() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x456E61656C6F6F42 && a2 == 0xEC0000006C617571 || (sub_262462C58() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x496E61656C6F6F42 && a2 == 0xED00006C6C754E73 || (sub_262462C58() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x496E61656C6F6F42 && a2 == 0xED0000656E6F4E73 || (sub_262462C58() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000010 && 0x800000026246C590 == a2 || (sub_262462C58() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000015 && 0x800000026246C570 == a2 || (sub_262462C58() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x6E6168547373654CLL && a2 == 0xE800000000000000 || (sub_262462C58() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x6E6168547373654CLL && a2 == 0xEF6C61757145724FLL || (sub_262462C58() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0x5472657461657247 && a2 == 0xEB000000006E6168 || (sub_262462C58() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0xD000000000000012 && 0x800000026246C550 == a2 || (sub_262462C58() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0x71457265626D754ELL && a2 == 0xEB000000006C6175 || (sub_262462C58() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0x73497265626D754ELL && a2 == 0xEC0000006C6C754ELL || (sub_262462C58() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0x73497265626D754ELL && a2 == 0xEC000000656E6F4ELL || (sub_262462C58() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 0x73497265626D754ELL && a2 == 0xEF676E697373694DLL || (sub_262462C58() & 1) != 0)
  {

    return 22;
  }

  else if (a1 == 0xD000000000000012 && 0x800000026246C530 == a2 || (sub_262462C58() & 1) != 0)
  {

    return 23;
  }

  else if (a1 == 0x694C7265626D754ELL && a2 == 0xED00006C6C417473 || (sub_262462C58() & 1) != 0)
  {

    return 24;
  }

  else if (a1 == 0xD000000000000015 && 0x800000026246C510 == a2 || (sub_262462C58() & 1) != 0)
  {

    return 25;
  }

  else if (a1 == 0xD000000000000015 && 0x800000026246C4F0 == a2 || (sub_262462C58() & 1) != 0)
  {

    return 26;
  }

  else if (a1 == 0x694C7265626D754ELL && a2 == 0xEF6C617571457473 || (sub_262462C58() & 1) != 0)
  {

    return 27;
  }

  else if (a1 == 0xD000000000000010 && 0x800000026246C4D0 == a2 || (sub_262462C58() & 1) != 0)
  {

    return 28;
  }

  else if (a1 == 0xD000000000000010 && 0x800000026246C4B0 == a2 || (sub_262462C58() & 1) != 0)
  {

    return 29;
  }

  else if (a1 == 0xD000000000000013 && 0x800000026246C490 == a2 || (sub_262462C58() & 1) != 0)
  {

    return 30;
  }

  else if (a1 == 0x74614D7865676552 && a2 == 0xEA00000000006863 || (sub_262462C58() & 1) != 0)
  {

    return 31;
  }

  else if (a1 == 0x6E69727473627553 && a2 == 0xEE00686374614D67 || (sub_262462C58() & 1) != 0)
  {

    return 32;
  }

  else if (a1 == 0x7145676E69727453 && a2 == 0xEB000000006C6175 || (sub_262462C58() & 1) != 0)
  {

    return 33;
  }

  else if (a1 == 0xD000000000000015 && 0x800000026246C470 == a2 || (sub_262462C58() & 1) != 0)
  {

    return 34;
  }

  else if (a1 == 0xD000000000000010 && 0x800000026246C450 == a2 || (sub_262462C58() & 1) != 0)
  {

    return 35;
  }

  else if (a1 == 0x7349676E69727453 && a2 == 0xEC0000006C6C754ELL || (sub_262462C58() & 1) != 0)
  {

    return 36;
  }

  else if (a1 == 0x7349676E69727453 && a2 == 0xEC000000656E6F4ELL || (sub_262462C58() & 1) != 0)
  {

    return 37;
  }

  else if (a1 == 0x7349676E69727453 && a2 == 0xEF676E697373694DLL || (sub_262462C58() & 1) != 0)
  {

    return 38;
  }

  else if (a1 == 0xD000000000000012 && 0x800000026246C430 == a2 || (sub_262462C58() & 1) != 0)
  {

    return 39;
  }

  else if (a1 == 0x694C676E69727453 && a2 == 0xED00006C6C417473 || (sub_262462C58() & 1) != 0)
  {

    return 40;
  }

  else if (a1 == 0xD000000000000015 && 0x800000026246C410 == a2 || (sub_262462C58() & 1) != 0)
  {

    return 41;
  }

  else if (a1 == 0xD000000000000015 && 0x800000026246C3F0 == a2 || (sub_262462C58() & 1) != 0)
  {

    return 42;
  }

  else if (a1 == 0x694C676E69727453 && a2 == 0xEF6C617571457473 || (sub_262462C58() & 1) != 0)
  {

    return 43;
  }

  else if (a1 == 0xD000000000000010 && 0x800000026246C3D0 == a2 || (sub_262462C58() & 1) != 0)
  {

    return 44;
  }

  else if (a1 == 0xD000000000000010 && 0x800000026246C3B0 == a2 || (sub_262462C58() & 1) != 0)
  {

    return 45;
  }

  else if (a1 == 0xD000000000000013 && 0x800000026246C390 == a2 || (sub_262462C58() & 1) != 0)
  {

    return 46;
  }

  else if (a1 == 0x6E6F697369636544 && a2 == 0xED00006C61757145 || (sub_262462C58() & 1) != 0)
  {

    return 47;
  }

  else if (a1 == 0x6E6F697369636544 && a2 == 0xEE006C6C754E7349 || (sub_262462C58() & 1) != 0)
  {

    return 48;
  }

  else if (a1 == 0x6E6F697369636544 && a2 == 0xEE00656E6F4E7349 || (sub_262462C58() & 1) != 0)
  {

    return 49;
  }

  else if (a1 == 0xD000000000000011 && 0x800000026246C370 == a2)
  {

    return 50;
  }

  else
  {
    v6 = sub_262462C58();

    if (v6)
    {
      return 50;
    }

    else
    {
      return 51;
    }
  }
}

unint64_t sub_262456204()
{
  result = qword_27FF0DDE0;
  if (!qword_27FF0DDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0DDE0);
  }

  return result;
}

unint64_t sub_262456258()
{
  result = qword_27FF0DDF0;
  if (!qword_27FF0DDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0DDF0);
  }

  return result;
}

unint64_t sub_2624562AC()
{
  result = qword_27FF0DE00;
  if (!qword_27FF0DE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0DE00);
  }

  return result;
}

unint64_t sub_262456300()
{
  result = qword_27FF0DE10;
  if (!qword_27FF0DE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0DE10);
  }

  return result;
}

unint64_t sub_2624563BC()
{
  result = qword_27FF0DE20;
  if (!qword_27FF0DE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0DE20);
  }

  return result;
}

unint64_t sub_262456410()
{
  result = qword_27FF0DE30;
  if (!qword_27FF0DE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0DE30);
  }

  return result;
}

unint64_t sub_262456464()
{
  result = qword_27FF0DE40;
  if (!qword_27FF0DE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0DE40);
  }

  return result;
}

unint64_t sub_2624564B8()
{
  result = qword_27FF0DE50;
  if (!qword_27FF0DE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0DE50);
  }

  return result;
}

unint64_t sub_262456574()
{
  result = qword_27FF0DE60;
  if (!qword_27FF0DE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0DE60);
  }

  return result;
}

unint64_t sub_262456630()
{
  result = qword_27FF0DE70;
  if (!qword_27FF0DE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0DE70);
  }

  return result;
}

unint64_t sub_2624566EC()
{
  result = qword_27FF0DE80;
  if (!qword_27FF0DE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0DE80);
  }

  return result;
}

unint64_t sub_2624567A8()
{
  result = qword_27FF0DE90;
  if (!qword_27FF0DE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0DE90);
  }

  return result;
}

unint64_t sub_262456864()
{
  result = qword_27FF0DEA0;
  if (!qword_27FF0DEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0DEA0);
  }

  return result;
}

unint64_t sub_2624568B8()
{
  result = qword_27FF0DEB0;
  if (!qword_27FF0DEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0DEB0);
  }

  return result;
}

unint64_t sub_26245690C()
{
  result = qword_27FF0DEC0;
  if (!qword_27FF0DEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0DEC0);
  }

  return result;
}

unint64_t sub_262456960()
{
  result = qword_27FF0DED0;
  if (!qword_27FF0DED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0DED0);
  }

  return result;
}

unint64_t sub_262456A1C()
{
  result = qword_27FF0DEE0;
  if (!qword_27FF0DEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0DEE0);
  }

  return result;
}

unint64_t sub_262456AD8()
{
  result = qword_2813BDAD0;
  if (!qword_2813BDAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BDAD0);
  }

  return result;
}

unint64_t sub_262456B94()
{
  result = qword_2813BD950;
  if (!qword_2813BD950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BD950);
  }

  return result;
}

unint64_t sub_262456C50()
{
  result = qword_27FF0DF00;
  if (!qword_27FF0DF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0DF00);
  }

  return result;
}

unint64_t sub_262456D0C()
{
  result = qword_27FF0DF10;
  if (!qword_27FF0DF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0DF10);
  }

  return result;
}

unint64_t sub_262456D60()
{
  result = qword_27FF0DF20;
  if (!qword_27FF0DF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0DF20);
  }

  return result;
}

unint64_t sub_262456DB4()
{
  result = qword_27FF0DF30;
  if (!qword_27FF0DF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0DF30);
  }

  return result;
}

unint64_t sub_262456E08()
{
  result = qword_27FF0DF40;
  if (!qword_27FF0DF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0DF40);
  }

  return result;
}

unint64_t sub_262456EC4()
{
  result = qword_27FF0DF50;
  if (!qword_27FF0DF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0DF50);
  }

  return result;
}

unint64_t sub_262456F80()
{
  result = qword_27FF0DF60;
  if (!qword_27FF0DF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0DF60);
  }

  return result;
}

unint64_t sub_26245703C()
{
  result = qword_27FF0DF70;
  if (!qword_27FF0DF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0DF70);
  }

  return result;
}

unint64_t sub_2624570F8()
{
  result = qword_27FF0DF80;
  if (!qword_27FF0DF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0DF80);
  }

  return result;
}

unint64_t sub_2624571B4()
{
  result = qword_27FF0DF90;
  if (!qword_27FF0DF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0DF90);
  }

  return result;
}

unint64_t sub_262457208()
{
  result = qword_27FF0DFA0;
  if (!qword_27FF0DFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0DFA0);
  }

  return result;
}

unint64_t sub_26245725C()
{
  result = qword_27FF0DFB0;
  if (!qword_27FF0DFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0DFB0);
  }

  return result;
}

unint64_t sub_2624572B0()
{
  result = qword_27FF0DFC0;
  if (!qword_27FF0DFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0DFC0);
  }

  return result;
}

unint64_t sub_26245736C()
{
  result = qword_27FF0DFD0;
  if (!qword_27FF0DFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0DFD0);
  }

  return result;
}

unint64_t sub_262457428()
{
  result = qword_27FF0DFE0;
  if (!qword_27FF0DFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0DFE0);
  }

  return result;
}

unint64_t sub_2624574E4()
{
  result = qword_27FF0DFF0;
  if (!qword_27FF0DFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0DFF0);
  }

  return result;
}

unint64_t sub_2624575A0()
{
  result = qword_27FF0E000;
  if (!qword_27FF0E000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0E000);
  }

  return result;
}

unint64_t sub_26245765C()
{
  result = qword_27FF0E010;
  if (!qword_27FF0E010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0E010);
  }

  return result;
}

unint64_t sub_262457718()
{
  result = qword_27FF0E020;
  if (!qword_27FF0E020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0E020);
  }

  return result;
}

unint64_t sub_26245776C()
{
  result = qword_27FF0E030;
  if (!qword_27FF0E030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0E030);
  }

  return result;
}

unint64_t sub_2624577C0()
{
  result = qword_27FF0E040;
  if (!qword_27FF0E040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0E040);
  }

  return result;
}

unint64_t sub_262457814()
{
  result = qword_27FF0E050;
  if (!qword_27FF0E050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0E050);
  }

  return result;
}

unint64_t sub_2624578D0()
{
  result = qword_2813BD598[0];
  if (!qword_2813BD598[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2813BD598);
  }

  return result;
}

void *sub_262457924(uint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  v6 = v4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v23 = *(v8 - 8);
  v9 = *(v23 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v18 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_262462D88();
  if (v4)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v13 = v23;
    sub_262462B28();
    __swift_project_boxed_opaque_existential_1(v21, v22);
    v15 = sub_262462C48();
    v6 = MEMORY[0x277D84F90];
    if ((v15 & 1) == 0)
    {
      do
      {
        __swift_mutable_project_boxed_opaque_existential_1(v21, v22);
        sub_262462C38();
        type metadata accessor for BooleanExpressionDecoder();
        sub_262441880(v19, v20);
        __swift_destroy_boxed_opaque_existential_1(v19);
        sub_2623F3CA4(v20, v19);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = sub_26243CBB4(0, v6[2] + 1, 1, v6);
        }

        v17 = v6[2];
        v16 = v6[3];
        if (v17 >= v16 >> 1)
        {
          v6 = sub_26243CBB4((v16 > 1), v17 + 1, 1, v6);
        }

        __swift_destroy_boxed_opaque_existential_1(v20);
        v6[2] = v17 + 1;
        sub_2623EB668(v19, &v6[5 * v17 + 4]);
        __swift_project_boxed_opaque_existential_1(v21, v22);
      }

      while ((sub_262462C48() & 1) == 0);
    }

    (*(v13 + 8))(v11, v8);
    __swift_destroy_boxed_opaque_existential_1(v21);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v6;
}

unint64_t sub_262457C30()
{
  result = qword_27FF0E068;
  if (!qword_27FF0E068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0E068);
  }

  return result;
}

unint64_t sub_262457C84()
{
  result = qword_27FF0E078;
  if (!qword_27FF0E078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0E078);
  }

  return result;
}

unint64_t sub_262457FBC()
{
  result = qword_27FF0E080;
  if (!qword_27FF0E080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0E080);
  }

  return result;
}

unint64_t sub_262458014()
{
  result = qword_27FF0E088;
  if (!qword_27FF0E088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0E088);
  }

  return result;
}

unint64_t sub_26245806C()
{
  result = qword_27FF0E090;
  if (!qword_27FF0E090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0E090);
  }

  return result;
}

unint64_t sub_2624580C4()
{
  result = qword_27FF0E098;
  if (!qword_27FF0E098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0E098);
  }

  return result;
}

unint64_t sub_26245811C()
{
  result = qword_27FF0E0A0;
  if (!qword_27FF0E0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0E0A0);
  }

  return result;
}

unint64_t sub_262458174()
{
  result = qword_27FF0E0A8;
  if (!qword_27FF0E0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0E0A8);
  }

  return result;
}

unint64_t sub_2624581CC()
{
  result = qword_27FF0E0B0;
  if (!qword_27FF0E0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0E0B0);
  }

  return result;
}

unint64_t sub_262458224()
{
  result = qword_27FF0E0B8;
  if (!qword_27FF0E0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0E0B8);
  }

  return result;
}

unint64_t sub_26245827C()
{
  result = qword_27FF0E0C0;
  if (!qword_27FF0E0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0E0C0);
  }

  return result;
}

unint64_t sub_2624582D4()
{
  result = qword_27FF0E0C8;
  if (!qword_27FF0E0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0E0C8);
  }

  return result;
}

unint64_t sub_26245832C()
{
  result = qword_27FF0E0D0;
  if (!qword_27FF0E0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0E0D0);
  }

  return result;
}

unint64_t sub_262458384()
{
  result = qword_27FF0E0D8;
  if (!qword_27FF0E0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0E0D8);
  }

  return result;
}

unint64_t sub_2624583DC()
{
  result = qword_27FF0E0E0;
  if (!qword_27FF0E0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0E0E0);
  }

  return result;
}

unint64_t sub_262458434()
{
  result = qword_27FF0E0E8;
  if (!qword_27FF0E0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0E0E8);
  }

  return result;
}

unint64_t sub_26245848C()
{
  result = qword_27FF0E0F0;
  if (!qword_27FF0E0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0E0F0);
  }

  return result;
}

unint64_t sub_2624584E4()
{
  result = qword_27FF0E0F8;
  if (!qword_27FF0E0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0E0F8);
  }

  return result;
}

unint64_t sub_26245853C()
{
  result = qword_27FF0E100;
  if (!qword_27FF0E100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0E100);
  }

  return result;
}

unint64_t sub_262458594()
{
  result = qword_27FF0E108;
  if (!qword_27FF0E108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0E108);
  }

  return result;
}

unint64_t sub_2624585EC()
{
  result = qword_27FF0E110;
  if (!qword_27FF0E110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0E110);
  }

  return result;
}

unint64_t sub_262458644()
{
  result = qword_27FF0E118;
  if (!qword_27FF0E118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0E118);
  }

  return result;
}

unint64_t sub_26245869C()
{
  result = qword_27FF0E120;
  if (!qword_27FF0E120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0E120);
  }

  return result;
}

unint64_t sub_2624586F4()
{
  result = qword_27FF0E128;
  if (!qword_27FF0E128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0E128);
  }

  return result;
}

unint64_t sub_26245874C()
{
  result = qword_27FF0E130;
  if (!qword_27FF0E130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0E130);
  }

  return result;
}

unint64_t sub_2624587A4()
{
  result = qword_27FF0E138;
  if (!qword_27FF0E138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0E138);
  }

  return result;
}

unint64_t sub_2624587FC()
{
  result = qword_27FF0E140;
  if (!qword_27FF0E140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0E140);
  }

  return result;
}

unint64_t sub_262458854()
{
  result = qword_27FF0E148;
  if (!qword_27FF0E148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0E148);
  }

  return result;
}

unint64_t sub_2624588AC()
{
  result = qword_27FF0E150;
  if (!qword_27FF0E150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0E150);
  }

  return result;
}

unint64_t sub_262458904()
{
  result = qword_27FF0E158;
  if (!qword_27FF0E158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0E158);
  }

  return result;
}

unint64_t sub_26245895C()
{
  result = qword_27FF0E160;
  if (!qword_27FF0E160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0E160);
  }

  return result;
}

unint64_t sub_2624589B4()
{
  result = qword_27FF0E168;
  if (!qword_27FF0E168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0E168);
  }

  return result;
}

unint64_t sub_262458A0C()
{
  result = qword_27FF0E170;
  if (!qword_27FF0E170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0E170);
  }

  return result;
}

unint64_t sub_262458A64()
{
  result = qword_27FF0E178;
  if (!qword_27FF0E178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0E178);
  }

  return result;
}

unint64_t sub_262458ABC()
{
  result = qword_27FF0E180;
  if (!qword_27FF0E180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0E180);
  }

  return result;
}

unint64_t sub_262458B14()
{
  result = qword_27FF0E188;
  if (!qword_27FF0E188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0E188);
  }

  return result;
}

unint64_t sub_262458B6C()
{
  result = qword_27FF0E190;
  if (!qword_27FF0E190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0E190);
  }

  return result;
}

unint64_t sub_262458BC4()
{
  result = qword_27FF0E198;
  if (!qword_27FF0E198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0E198);
  }

  return result;
}

unint64_t sub_262458C1C()
{
  result = qword_27FF0E1A0;
  if (!qword_27FF0E1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0E1A0);
  }

  return result;
}

unint64_t sub_262458C74()
{
  result = qword_27FF0E1A8;
  if (!qword_27FF0E1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0E1A8);
  }

  return result;
}

unint64_t sub_262458CCC()
{
  result = qword_27FF0E1B0;
  if (!qword_27FF0E1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0E1B0);
  }

  return result;
}

unint64_t sub_262458D24()
{
  result = qword_27FF0E1B8;
  if (!qword_27FF0E1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0E1B8);
  }

  return result;
}

unint64_t sub_262458D7C()
{
  result = qword_27FF0E1C0;
  if (!qword_27FF0E1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0E1C0);
  }

  return result;
}

unint64_t sub_262458DD4()
{
  result = qword_27FF0E1C8;
  if (!qword_27FF0E1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0E1C8);
  }

  return result;
}

unint64_t sub_262458E2C()
{
  result = qword_27FF0E1D0;
  if (!qword_27FF0E1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0E1D0);
  }

  return result;
}

unint64_t sub_262458E84()
{
  result = qword_27FF0E1D8;
  if (!qword_27FF0E1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0E1D8);
  }

  return result;
}

unint64_t sub_262458EDC()
{
  result = qword_27FF0E1E0;
  if (!qword_27FF0E1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0E1E0);
  }

  return result;
}

unint64_t sub_262458F34()
{
  result = qword_27FF0E1E8;
  if (!qword_27FF0E1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0E1E8);
  }

  return result;
}

unint64_t sub_262458F8C()
{
  result = qword_27FF0E1F0;
  if (!qword_27FF0E1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0E1F0);
  }

  return result;
}

unint64_t sub_262458FE4()
{
  result = qword_27FF0E1F8;
  if (!qword_27FF0E1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0E1F8);
  }

  return result;
}

unint64_t sub_26245903C()
{
  result = qword_2813BD588;
  if (!qword_2813BD588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BD588);
  }

  return result;
}

unint64_t sub_262459094()
{
  result = qword_2813BD590;
  if (!qword_2813BD590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BD590);
  }

  return result;
}

unint64_t sub_2624590EC()
{
  result = qword_27FF0E200;
  if (!qword_27FF0E200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0E200);
  }

  return result;
}

unint64_t sub_262459144()
{
  result = qword_27FF0E208;
  if (!qword_27FF0E208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0E208);
  }

  return result;
}

unint64_t sub_26245919C()
{
  result = qword_27FF0E210;
  if (!qword_27FF0E210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0E210);
  }

  return result;
}

unint64_t sub_2624591F4()
{
  result = qword_27FF0E218;
  if (!qword_27FF0E218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0E218);
  }

  return result;
}

unint64_t sub_26245924C()
{
  result = qword_27FF0E220;
  if (!qword_27FF0E220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0E220);
  }

  return result;
}

unint64_t sub_2624592A4()
{
  result = qword_27FF0E228;
  if (!qword_27FF0E228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0E228);
  }

  return result;
}

unint64_t sub_2624592FC()
{
  result = qword_27FF0E230;
  if (!qword_27FF0E230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0E230);
  }

  return result;
}

unint64_t sub_262459354()
{
  result = qword_27FF0E238;
  if (!qword_27FF0E238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0E238);
  }

  return result;
}

unint64_t sub_2624593AC()
{
  result = qword_27FF0E240;
  if (!qword_27FF0E240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0E240);
  }

  return result;
}

unint64_t sub_262459404()
{
  result = qword_27FF0E248;
  if (!qword_27FF0E248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0E248);
  }

  return result;
}

unint64_t sub_26245945C()
{
  result = qword_27FF0E250;
  if (!qword_27FF0E250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0E250);
  }

  return result;
}

unint64_t sub_2624594B4()
{
  result = qword_27FF0E258;
  if (!qword_27FF0E258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0E258);
  }

  return result;
}

unint64_t sub_26245950C()
{
  result = qword_27FF0E260;
  if (!qword_27FF0E260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0E260);
  }

  return result;
}

unint64_t sub_262459564()
{
  result = qword_27FF0E268;
  if (!qword_27FF0E268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0E268);
  }

  return result;
}

unint64_t sub_2624595BC()
{
  result = qword_27FF0E270;
  if (!qword_27FF0E270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0E270);
  }

  return result;
}

unint64_t sub_262459614()
{
  result = qword_27FF0E278;
  if (!qword_27FF0E278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0E278);
  }

  return result;
}

unint64_t sub_26245966C()
{
  result = qword_27FF0E280;
  if (!qword_27FF0E280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0E280);
  }

  return result;
}

unint64_t sub_2624596C4()
{
  result = qword_27FF0E288;
  if (!qword_27FF0E288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0E288);
  }

  return result;
}

unint64_t sub_26245971C()
{
  result = qword_27FF0E290;
  if (!qword_27FF0E290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0E290);
  }

  return result;
}

unint64_t sub_262459774()
{
  result = qword_27FF0E298;
  if (!qword_27FF0E298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0E298);
  }

  return result;
}

unint64_t sub_2624597CC()
{
  result = qword_27FF0E2A0;
  if (!qword_27FF0E2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0E2A0);
  }

  return result;
}

unint64_t sub_262459824()
{
  result = qword_27FF0E2A8;
  if (!qword_27FF0E2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0E2A8);
  }

  return result;
}

unint64_t sub_26245987C()
{
  result = qword_27FF0E2B0;
  if (!qword_27FF0E2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0E2B0);
  }

  return result;
}

unint64_t sub_2624598D4()
{
  result = qword_27FF0E2B8;
  if (!qword_27FF0E2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0E2B8);
  }

  return result;
}

unint64_t sub_26245992C()
{
  result = qword_27FF0E2C0;
  if (!qword_27FF0E2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0E2C0);
  }

  return result;
}

unint64_t sub_262459984()
{
  result = qword_27FF0E2C8;
  if (!qword_27FF0E2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0E2C8);
  }

  return result;
}

unint64_t sub_2624599DC()
{
  result = qword_27FF0E2D0;
  if (!qword_27FF0E2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0E2D0);
  }

  return result;
}

unint64_t sub_262459A34()
{
  result = qword_27FF0E2D8;
  if (!qword_27FF0E2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0E2D8);
  }

  return result;
}

unint64_t sub_262459A8C()
{
  result = qword_27FF0E2E0;
  if (!qword_27FF0E2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0E2E0);
  }

  return result;
}

unint64_t sub_262459AE4()
{
  result = qword_27FF0E2E8;
  if (!qword_27FF0E2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0E2E8);
  }

  return result;
}

unint64_t sub_262459B3C()
{
  result = qword_27FF0E2F0;
  if (!qword_27FF0E2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0E2F0);
  }

  return result;
}

unint64_t sub_262459B94()
{
  result = qword_27FF0E2F8;
  if (!qword_27FF0E2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0E2F8);
  }

  return result;
}

unint64_t sub_262459BEC()
{
  result = qword_27FF0E300;
  if (!qword_27FF0E300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0E300);
  }

  return result;
}

unint64_t sub_262459C44()
{
  result = qword_27FF0E308;
  if (!qword_27FF0E308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0E308);
  }

  return result;
}

unint64_t sub_262459C9C()
{
  result = qword_27FF0E310;
  if (!qword_27FF0E310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0E310);
  }

  return result;
}

unint64_t sub_262459CF4()
{
  result = qword_27FF0E318;
  if (!qword_27FF0E318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0E318);
  }

  return result;
}

unint64_t sub_262459D4C()
{
  result = qword_27FF0E320;
  if (!qword_27FF0E320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0E320);
  }

  return result;
}

unint64_t sub_262459DA4()
{
  result = qword_27FF0E328;
  if (!qword_27FF0E328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0E328);
  }

  return result;
}

unint64_t sub_262459DFC()
{
  result = qword_27FF0E330;
  if (!qword_27FF0E330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0E330);
  }

  return result;
}

unint64_t sub_262459E54()
{
  result = qword_27FF0E338;
  if (!qword_27FF0E338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0E338);
  }

  return result;
}

unint64_t sub_262459EAC()
{
  result = qword_27FF0E340;
  if (!qword_27FF0E340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0E340);
  }

  return result;
}

unint64_t sub_262459F04()
{
  result = qword_27FF0E348;
  if (!qword_27FF0E348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0E348);
  }

  return result;
}

unint64_t sub_262459F5C()
{
  result = qword_27FF0E350;
  if (!qword_27FF0E350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0E350);
  }

  return result;
}

unint64_t sub_262459FB4()
{
  result = qword_27FF0E358;
  if (!qword_27FF0E358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0E358);
  }

  return result;
}

unint64_t sub_26245A00C()
{
  result = qword_2813BD940;
  if (!qword_2813BD940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BD940);
  }

  return result;
}

unint64_t sub_26245A064()
{
  result = qword_2813BD948;
  if (!qword_2813BD948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BD948);
  }

  return result;
}

unint64_t sub_26245A0BC()
{
  result = qword_2813BDAE0;
  if (!qword_2813BDAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BDAE0);
  }

  return result;
}

unint64_t sub_26245A114()
{
  result = qword_2813BDAD8;
  if (!qword_2813BDAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BDAD8);
  }

  return result;
}

unint64_t sub_26245A16C()
{
  result = qword_27FF0E360;
  if (!qword_27FF0E360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0E360);
  }

  return result;
}

unint64_t sub_26245A1C4()
{
  result = qword_27FF0E368;
  if (!qword_27FF0E368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0E368);
  }

  return result;
}

unint64_t sub_26245A21C()
{
  result = qword_27FF0E370;
  if (!qword_27FF0E370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0E370);
  }

  return result;
}

unint64_t sub_26245A274()
{
  result = qword_27FF0E378;
  if (!qword_27FF0E378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0E378);
  }

  return result;
}

unint64_t sub_26245A2CC()
{
  result = qword_27FF0E380;
  if (!qword_27FF0E380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0E380);
  }

  return result;
}

unint64_t sub_26245A324()
{
  result = qword_27FF0E388;
  if (!qword_27FF0E388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0E388);
  }

  return result;
}

unint64_t sub_26245A37C()
{
  result = qword_27FF0E390;
  if (!qword_27FF0E390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0E390);
  }

  return result;
}

unint64_t sub_26245A3D4()
{
  result = qword_27FF0E398;
  if (!qword_27FF0E398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0E398);
  }

  return result;
}

unint64_t sub_26245A42C()
{
  result = qword_27FF0E3A0;
  if (!qword_27FF0E3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0E3A0);
  }

  return result;
}

unint64_t sub_26245A484()
{
  result = qword_27FF0E3A8;
  if (!qword_27FF0E3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0E3A8);
  }

  return result;
}

unint64_t sub_26245A4DC()
{
  result = qword_27FF0E3B0;
  if (!qword_27FF0E3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0E3B0);
  }

  return result;
}

unint64_t sub_26245A534()
{
  result = qword_27FF0E3B8;
  if (!qword_27FF0E3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0E3B8);
  }

  return result;
}

unint64_t sub_26245A58C()
{
  result = qword_27FF0E3C0;
  if (!qword_27FF0E3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0E3C0);
  }

  return result;
}

unint64_t sub_26245A5E4()
{
  result = qword_27FF0E3C8;
  if (!qword_27FF0E3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0E3C8);
  }

  return result;
}

unint64_t sub_26245A63C()
{
  result = qword_27FF0E3D0;
  if (!qword_27FF0E3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0E3D0);
  }

  return result;
}

unint64_t sub_26245A694()
{
  result = qword_27FF0E3D8;
  if (!qword_27FF0E3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0E3D8);
  }

  return result;
}

unint64_t sub_26245A6EC()
{
  result = qword_27FF0E3E0;
  if (!qword_27FF0E3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0E3E0);
  }

  return result;
}

unint64_t sub_26245A744()
{
  result = qword_27FF0E3E8;
  if (!qword_27FF0E3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0E3E8);
  }

  return result;
}

unint64_t sub_26245A79C()
{
  result = qword_27FF0E3F0;
  if (!qword_27FF0E3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0E3F0);
  }

  return result;
}

unint64_t sub_26245A7F4()
{
  result = qword_27FF0E3F8;
  if (!qword_27FF0E3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0E3F8);
  }

  return result;
}

unint64_t sub_26245A84C()
{
  result = qword_27FF0E400;
  if (!qword_27FF0E400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0E400);
  }

  return result;
}

unint64_t sub_26245A8A4()
{
  result = qword_27FF0E408;
  if (!qword_27FF0E408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0E408);
  }

  return result;
}

unint64_t sub_26245A8FC()
{
  result = qword_27FF0E410;
  if (!qword_27FF0E410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0E410);
  }

  return result;
}

unint64_t sub_26245A954()
{
  result = qword_27FF0E418;
  if (!qword_27FF0E418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0E418);
  }

  return result;
}

unint64_t sub_26245A9AC()
{
  result = qword_27FF0E420;
  if (!qword_27FF0E420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0E420);
  }

  return result;
}

unint64_t sub_26245AA04()
{
  result = qword_27FF0E428;
  if (!qword_27FF0E428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0E428);
  }

  return result;
}

unint64_t sub_26245AA5C()
{
  result = qword_27FF0E430;
  if (!qword_27FF0E430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0E430);
  }

  return result;
}

unint64_t sub_26245AAB4()
{
  result = qword_27FF0E438;
  if (!qword_27FF0E438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0E438);
  }

  return result;
}

unint64_t sub_26245AB0C()
{
  result = qword_27FF0E440;
  if (!qword_27FF0E440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0E440);
  }

  return result;
}

unint64_t sub_26245AB64()
{
  result = qword_27FF0E448;
  if (!qword_27FF0E448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0E448);
  }

  return result;
}

unint64_t sub_26245ABBC()
{
  result = qword_27FF0E450;
  if (!qword_27FF0E450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0E450);
  }

  return result;
}

unint64_t sub_26245AC14()
{
  result = qword_27FF0E458;
  if (!qword_27FF0E458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0E458);
  }

  return result;
}

unint64_t sub_26245AC6C()
{
  result = qword_27FF0E460;
  if (!qword_27FF0E460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0E460);
  }

  return result;
}

unint64_t sub_26245ACC4()
{
  result = qword_27FF0E468;
  if (!qword_27FF0E468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0E468);
  }

  return result;
}

uint64_t type metadata accessor for RulesValidity()
{
  result = qword_2813BDBD8;
  if (!qword_2813BDBD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26245AF20()
{
  sub_26245AF94();
  if (v0 <= 0x3F)
  {
    sub_26245AFC4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

ValueMetadata *sub_26245AF94()
{
  result = qword_2813BD8B0;
  if (!qword_2813BD8B0)
  {
    result = &type metadata for RuleActiveStatus;
    atomic_store(&type metadata for RuleActiveStatus, &qword_2813BD8B0);
  }

  return result;
}

void sub_26245AFC4()
{
  if (!qword_2813BD8B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF0E470, &qword_262470EE8);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_2813BD8B8);
    }
  }
}

uint64_t sub_26245B050()
{
  v1 = v0;
  v76 = sub_262462648();
  v2 = *(v76 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v76);
  v75 = &v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v77 = &v72 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0E4A8, &qword_262471008);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v78 = &v72 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0E470, &qword_262470EE8);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = &v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v72 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v72 - v18;
  v20 = type metadata accessor for RulesValidity();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  v23 = &v72 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  v25 = sub_2624626D8();
  [v24 setDateFormat_];

  sub_26245DA98(v1, v23);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v27 = *v23;
  if (EnumCaseMultiPayload == 1)
  {
    v74 = v24;
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0E4A0, &qword_262471000);
    v29 = *(v28 + 64);
    sub_26245D0E4(&v23[*(v28 + 48)], v19);
    sub_26245D0E4(&v23[v29], v17);
    v30 = *(v7 + 48);
    v31 = v78;
    sub_26245DB58(v19, v78);
    sub_26245DB58(v17, v31 + v30);
    v32 = *(v2 + 48);
    v33 = v31;
    v34 = v76;
    if (v32(v33, 1, v76) == 1)
    {
      if (v32(v78 + v30, 1, v34) == 1)
      {
        v80 = 0;
        v81 = 0xE000000000000000;
        sub_262462A28();
        MEMORY[0x266728460](0xD000000000000012, 0x80000002624723F0);
        v79 = v27;
        sub_262462AA8();

        v35 = v80;
        sub_2623F39E0(v17, &qword_27FF0E470, &qword_262470EE8);
        sub_2623F39E0(v19, &qword_27FF0E470, &qword_262470EE8);
        v36 = &qword_27FF0E4A8;
        v37 = &qword_262471008;
        v38 = v78;
LABEL_12:
        sub_2623F39E0(v38, v36, v37);
        return v35;
      }

      v49 = v77;
      (*(v2 + 32))(v77, v78 + v30, v34);
      v80 = 0;
      v81 = 0xE000000000000000;
      sub_262462A28();
      MEMORY[0x266728460](0x20736920656C7552, 0xE800000000000000);
      v79 = v27;
      sub_262462AA8();
      MEMORY[0x266728460](0x206C6C697420, 0xE600000000000000);
      v50 = sub_2624625F8();
      v51 = v17;
      v52 = v74;
      v53 = [v74 stringFromDate_];

      v54 = sub_2624626E8();
      v56 = v55;

      MEMORY[0x266728460](v54, v56);

      v35 = v80;
      (*(v2 + 8))(v49, v34);
      sub_2623F39E0(v51, &qword_27FF0E470, &qword_262470EE8);
      v57 = v19;
    }

    else
    {
      v73 = v19;
      v39 = v78;
      sub_26245DB58(v78, v14);
      v40 = v32(v39 + v30, 1, v34);
      v41 = *(v2 + 32);
      v42 = v77;
      v41(v77, v14, v34);
      if (v40 == 1)
      {
        v80 = 0;
        v81 = 0xE000000000000000;
        sub_262462A28();
        MEMORY[0x266728460](0x20736920656C7552, 0xE800000000000000);
        v79 = v27;
        sub_262462AA8();
        MEMORY[0x266728460](0x206D6F726620, 0xE600000000000000);
        v43 = sub_2624625F8();
        v44 = v74;
        v45 = [v74 stringFromDate_];

        v46 = sub_2624626E8();
        v48 = v47;

        MEMORY[0x266728460](v46, v48);

        v35 = v80;
        (*(v2 + 8))(v42, v34);
      }

      else
      {
        v58 = v75;
        v41(v75, (v78 + v30), v34);
        v80 = 0;
        v81 = 0xE000000000000000;
        sub_262462A28();
        MEMORY[0x266728460](0x20736920656C7552, 0xE800000000000000);
        v79 = v27;
        sub_262462AA8();
        MEMORY[0x266728460](0x206D6F726620, 0xE600000000000000);
        v59 = sub_2624625F8();
        v60 = v74;
        v61 = [v74 stringFromDate_];

        v62 = sub_2624626E8();
        v64 = v63;

        MEMORY[0x266728460](v62, v64);

        MEMORY[0x266728460](0x206C6C697420, 0xE600000000000000);
        v65 = sub_2624625F8();
        v66 = [v60 stringFromDate_];

        v67 = sub_2624626E8();
        v69 = v68;

        MEMORY[0x266728460](v67, v69);

        v35 = v80;
        v70 = *(v2 + 8);
        v70(v58, v34);
        v70(v77, v34);
      }

      sub_2623F39E0(v17, &qword_27FF0E470, &qword_262470EE8);
      v57 = v73;
    }

    sub_2623F39E0(v57, &qword_27FF0E470, &qword_262470EE8);
    v38 = v78;
    v36 = &qword_27FF0E470;
    v37 = &qword_262470EE8;
    goto LABEL_12;
  }

  v80 = 0;
  v81 = 0xE000000000000000;
  sub_262462A28();
  MEMORY[0x266728460](0xD000000000000012, 0x80000002624723F0);
  v79 = v27;
  sub_262462AA8();

  return v80;
}

BOOL sub_26245B920()
{
  v1 = v0;
  v2 = sub_262462648();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0E470, &qword_262470EE8);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v23 - v12;
  v14 = type metadata accessor for RulesValidity();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26245DA98(v1, v17);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v19 = *v17;
  if (EnumCaseMultiPayload == 1)
  {
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0E4A0, &qword_262471000);
    v21 = *(v20 + 64);
    sub_26245D0E4(&v17[*(v20 + 48)], v13);
    sub_26245D0E4(&v17[v21], v11);
    sub_262462638();
    LOBYTE(v21) = sub_26245CC5C(v6, v13, v11);
    (*(v3 + 8))(v6, v2);
    sub_2623F39E0(v11, &qword_27FF0E470, &qword_262470EE8);
    sub_2623F39E0(v13, &qword_27FF0E470, &qword_262470EE8);
    v19 ^= v21;
  }

  return (v19 & 1) == 0;
}

uint64_t sub_26245BB58()
{
  if (*v0)
  {
    result = 6710863;
  }

  else
  {
    result = 28239;
  }

  *v0;
  return result;
}

uint64_t sub_26245BB80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 28239 && a2 == 0xE200000000000000;
  if (v5 || (sub_262462C58() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 6710863 && a2 == 0xE300000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_262462C58();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_26245BC54(uint64_t a1)
{
  v2 = sub_26245E05C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26245BC90(uint64_t a1)
{
  v2 = sub_26245E05C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26245BCCC(uint64_t a1)
{
  v2 = sub_26245E0B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26245BD08(uint64_t a1)
{
  v2 = sub_26245E0B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26245BD44(uint64_t a1)
{
  v2 = sub_26245E104();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26245BD80(uint64_t a1)
{
  v2 = sub_26245E104();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26245BDBC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_26245DC20(a1);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

unint64_t sub_26245BDF0()
{
  result = qword_27FF0E478;
  if (!qword_27FF0E478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0E478);
  }

  return result;
}

uint64_t sub_26245BE44()
{
  if (*v0)
  {
    result = 0x65736142656D6954;
  }

  else
  {
    result = 0x737574617453;
  }

  *v0;
  return result;
}

uint64_t sub_26245BE88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x737574617453 && a2 == 0xE600000000000000;
  if (v6 || (sub_262462C58() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65736142656D6954 && a2 == 0xEF73757461745364)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_262462C58();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_26245BF68(uint64_t a1)
{
  v2 = sub_26245CFE8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26245BFA4(uint64_t a1)
{
  v2 = sub_26245CFE8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26245BFFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x8000000262472410 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_262462C58();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_26245C090(uint64_t a1)
{
  v2 = sub_26245D154();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26245C0CC(uint64_t a1)
{
  v2 = sub_26245D154();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_26245C108()
{
  v1 = 0x656D69546D6F7266;
  if (*v0 != 1)
  {
    v1 = 0x656D69546F74;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_26245C164@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26245E738(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26245C18C(uint64_t a1)
{
  v2 = sub_26245D03C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26245C1C8(uint64_t a1)
{
  v2 = sub_26245D03C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26245C204@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v90 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0E470, &qword_262470EE8);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v87 = &v83 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v89 = &v83 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v88 = &v83 - v10;
  MEMORY[0x28223BE20](v9);
  v91 = &v83 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0E480, &qword_262470FE8);
  v94 = *(v12 - 8);
  v95 = v12;
  v13 = *(v94 + 64);
  MEMORY[0x28223BE20](v12);
  v96 = &v83 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0E488, &qword_262470FF0);
  v92 = *(v15 - 8);
  v93 = v15;
  v16 = *(v92 + 8);
  MEMORY[0x28223BE20](v15);
  v98 = &v83 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0E490, &qword_262470FF8);
  v97 = *(v18 - 8);
  v19 = *(v97 + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v83 - v20;
  v22 = type metadata accessor for RulesValidity();
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v83 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v24);
  v29 = &v83 - v28;
  MEMORY[0x28223BE20](v27);
  v31 = &v83 - v30;
  v32 = a1[3];
  v33 = a1[4];
  v99 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v32);
  sub_26245CFE8();
  v34 = v102;
  sub_262462D88();
  if (v34)
  {
    v35 = v99;
    return __swift_destroy_boxed_opaque_existential_1(v35);
  }

  v84 = v26;
  v85 = v29;
  v86 = v31;
  v102 = v22;
  v36 = v97;
  v37 = v98;
  v38 = sub_262462BC8();
  v39 = v18;
  if (!*(v38 + 16))
  {

    v35 = v99;
    goto LABEL_8;
  }

  v40 = *(v38 + 32);

  v41 = *(sub_262462BC8() + 16);

  v35 = v99;
  if (v41 != 1)
  {
LABEL_8:
    v46 = v21;
    v47 = v35[4];
    __swift_project_boxed_opaque_existential_1(v35, v35[3]);
    v48 = sub_262462D78();
    v49 = sub_262427A60(v48);
    v51 = v50;

    sub_2623F1BBC();
    swift_allocError();
    *v52 = v49;
    *(v52 + 8) = v51;
    strcpy((v52 + 16), "RulesValidity");
    *(v52 + 30) = -4864;
    v53 = v101;
    *(v52 + 32) = v100;
    *(v52 + 48) = v53;
    *(v52 + 64) = 2;
    swift_willThrow();
    (*(v36 + 8))(v46, v39);
    return __swift_destroy_boxed_opaque_existential_1(v35);
  }

  if (v40)
  {
    LOBYTE(v100) = 1;
    sub_26245D03C();
    sub_262462B38();
    v42 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    v43 = sub_2624626D8();
    v98 = v42;
    [v42 setDateFormat_];

    LOBYTE(v100) = 1;
    v44 = v95;
    sub_262462B68();
    v93 = 0;
    v55 = v94;
    if (v45)
    {
      v92 = v21;
      v56 = sub_2624626D8();
      v57 = [v98 dateFromString_];

      if (v57)
      {
        v58 = v88;
        sub_262462628();

        v59 = 0;
        v60 = v95;
      }

      else
      {
        v59 = 1;
        v60 = v95;
        v58 = v88;
      }

      v65 = sub_262462648();
      (*(*(v65 - 8) + 56))(v58, v59, 1, v65);
      sub_26245D0E4(v58, v91);
      v21 = v92;
    }

    else
    {
      v60 = v44;
      v64 = sub_262462648();
      (*(*(v64 - 8) + 56))(v91, 1, 1, v64);
    }

    LOBYTE(v100) = 2;
    v66 = v96;
    v67 = v93;
    sub_262462B68();
    if (v67)
    {

      sub_2623F39E0(v91, &qword_27FF0E470, &qword_262470EE8);
      (*(v55 + 8))(v66, v60);
      (*(v36 + 8))(v21, v39);
      return __swift_destroy_boxed_opaque_existential_1(v35);
    }

    v70 = v98;
    if (v68)
    {
      v92 = v21;
      v71 = sub_2624626D8();
      v72 = [v70 dateFromString_];

      v73 = v89;
      if (v72)
      {
        v74 = v87;
        sub_262462628();

        v75 = 0;
        v60 = v95;
      }

      else
      {
        v75 = 1;
        v60 = v95;
        v74 = v87;
      }

      v77 = sub_262462648();
      (*(*(v77 - 8) + 56))(v74, v75, 1, v77);
      sub_26245D0E4(v74, v73);
      v21 = v92;
    }

    else
    {
      v76 = sub_262462648();
      (*(*(v76 - 8) + 56))(v89, 1, 1, v76);
    }

    LOBYTE(v100) = 0;
    sub_26245D090();
    v78 = v84;
    v79 = v60;
    v80 = v96;
    sub_262462BB8();

    v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0E4A0, &qword_262471000);
    v82 = *(v81 + 48);
    v98 = *(v81 + 64);
    (*(v94 + 8))(v80, v79);
    (*(v36 + 8))(v21, v39);
    sub_26245D0E4(v91, v78 + v82);
    sub_26245D0E4(v89, v98 + v78);
    swift_storeEnumTagMultiPayload();
    v63 = v86;
    sub_2623F2530(v78, v86);
  }

  else
  {
    LOBYTE(v100) = 0;
    sub_26245D154();
    sub_262462B38();
    sub_26245D090();
    v54 = v93;
    sub_262462BB8();
    (*(v92 + 1))(v37, v54);
    (*(v36 + 8))(v21, v39);
    v61 = v85;
    *v85 = v100;
    swift_storeEnumTagMultiPayload();
    v62 = v61;
    v63 = v86;
    sub_2623F2530(v62, v86);
  }

  sub_2623F2530(v63, v90);
  return __swift_destroy_boxed_opaque_existential_1(v35);
}

uint64_t sub_26245CC5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v33[1] = a1;
  v5 = sub_262462648();
  v6 = *(v5 - 8);
  v7 = v6[8];
  v8 = MEMORY[0x28223BE20](v5);
  v10 = v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = v33 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = v33 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0E470, &qword_262470EE8);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = v33 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0E4A8, &qword_262471008);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20 - 8);
  v24 = v33 - v23;
  v25 = *(v22 + 56);
  sub_26245DB58(a2, v33 - v23);
  sub_26245DB58(a3, &v24[v25]);
  v26 = v6[6];
  if (v26(v24, 1, v5) != 1)
  {
    sub_26245DB58(v24, v19);
    v28 = v26(&v24[v25], 1, v5);
    v29 = v6[4];
    if (v28 != 1)
    {
      v29(v15, v19, v5);
      v29(v13, &v24[v25], v5);
      if (sub_262462618())
      {
        v27 = 1;
      }

      else
      {
        v27 = sub_262462608();
      }

      v31 = v6[1];
      v31(v13, v5);
      v31(v15, v5);
      goto LABEL_12;
    }

    v29(v10, v19, v5);
    v30 = sub_262462618();
LABEL_7:
    v27 = v30;
    (v6[1])(v10, v5);
LABEL_12:
    sub_2623F39E0(v24, &qword_27FF0E470, &qword_262470EE8);
    return v27 & 1;
  }

  if (v26(&v24[v25], 1, v5) != 1)
  {
    (v6[4])(v10, &v24[v25], v5);
    v30 = sub_262462608();
    goto LABEL_7;
  }

  sub_2623F39E0(v24, &qword_27FF0E4A8, &qword_262471008);
  v27 = 0;
  return v27 & 1;
}

unint64_t sub_26245CFE8()
{
  result = qword_2813BDC28;
  if (!qword_2813BDC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BDC28);
  }

  return result;
}

unint64_t sub_26245D03C()
{
  result = qword_27FF0E498;
  if (!qword_27FF0E498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0E498);
  }

  return result;
}

unint64_t sub_26245D090()
{
  result = qword_2813BD868;
  if (!qword_2813BD868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BD868);
  }

  return result;
}

uint64_t sub_26245D0E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0E470, &qword_262470EE8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_26245D154()
{
  result = qword_2813BDC10;
  if (!qword_2813BDC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BDC10);
  }

  return result;
}

uint64_t sub_26245D1A8(uint64_t a1, uint64_t a2)
{
  v78 = sub_262462648();
  v80 = *(v78 - 8);
  v4 = *(v80 + 64);
  MEMORY[0x28223BE20](v78);
  v75 = &v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0E4A8, &qword_262471008);
  v6 = *(*(v79 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v79);
  v76 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v72 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0E470, &qword_262470EE8);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v77 = &v72 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v82 = &v72 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v83 = &v72 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v72 - v23;
  MEMORY[0x28223BE20](v22);
  v81 = &v72 - v25;
  v26 = type metadata accessor for RulesValidity();
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v26);
  v30 = &v72 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v32 = &v72 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0E4B0, &qword_262471010);
  v34 = *(*(v33 - 8) + 64);
  v35 = MEMORY[0x28223BE20](v33 - 8);
  v37 = &v72 - v36;
  v38 = &v72 + *(v35 + 56) - v36;
  sub_26245DA98(a1, &v72 - v36);
  sub_26245DA98(a2, v38);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_26245DA98(v37, v30);
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0E4A0, &qword_262471000);
    v40 = *(v39 + 48);
    v41 = *(v39 + 64);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v74 = v15;
      v42 = *v30;
      v43 = *v38;
      v44 = v81;
      sub_26245D0E4(&v30[v40], v81);
      sub_26245D0E4(&v30[v41], v24);
      v45 = v83;
      sub_26245D0E4(&v38[v40], v83);
      v46 = &v38[v41];
      v47 = v82;
      sub_26245D0E4(v46, v82);
      if (v42 != v43)
      {
        sub_2623F39E0(v47, &qword_27FF0E470, &qword_262470EE8);
        sub_2623F39E0(v45, &qword_27FF0E470, &qword_262470EE8);
        sub_2623F39E0(v24, &qword_27FF0E470, &qword_262470EE8);
        v48 = v44;
LABEL_16:
        v58 = &qword_27FF0E470;
        v59 = &qword_262470EE8;
LABEL_17:
        sub_2623F39E0(v48, v58, v59);
LABEL_18:
        sub_26245DAFC(v37);
        goto LABEL_19;
      }

      v51 = *(v79 + 48);
      sub_26245DB58(v44, v10);
      sub_26245DB58(v45, &v10[v51]);
      v52 = *(v80 + 48);
      v53 = v78;
      v54 = v44;
      if (v52(v10, 1, v78) == 1)
      {
        v55 = v24;
        if (v52(&v10[v51], 1, v53) == 1)
        {
          sub_2623F39E0(v10, &qword_27FF0E470, &qword_262470EE8);
          goto LABEL_22;
        }
      }

      else
      {
        v56 = v77;
        sub_26245DB58(v10, v77);
        v57 = v52(&v10[v51], 1, v53);
        v73 = v24;
        if (v57 != 1)
        {
          v61 = v80;
          v62 = v75;
          (*(v80 + 32))(v75, &v10[v51], v53);
          sub_26245DBC8();
          v63 = sub_2624626B8();
          v64 = *(v61 + 8);
          v64(v62, v53);
          v64(v56, v53);
          v54 = v81;
          v47 = v82;
          sub_2623F39E0(v10, &qword_27FF0E470, &qword_262470EE8);
          v55 = v73;
          if (v63)
          {
LABEL_22:
            v65 = *(v79 + 48);
            v66 = v76;
            sub_26245DB58(v55, v76);
            sub_26245DB58(v47, v66 + v65);
            if (v52(v66, 1, v53) == 1)
            {
              sub_2623F39E0(v47, &qword_27FF0E470, &qword_262470EE8);
              sub_2623F39E0(v83, &qword_27FF0E470, &qword_262470EE8);
              sub_2623F39E0(v55, &qword_27FF0E470, &qword_262470EE8);
              sub_2623F39E0(v54, &qword_27FF0E470, &qword_262470EE8);
              if (v52((v66 + v65), 1, v53) == 1)
              {
                sub_2623F39E0(v66, &qword_27FF0E470, &qword_262470EE8);
                goto LABEL_29;
              }
            }

            else
            {
              v67 = v74;
              sub_26245DB58(v66, v74);
              if (v52((v66 + v65), 1, v53) != 1)
              {
                v68 = v80;
                v69 = v75;
                (*(v80 + 32))(v75, v66 + v65, v53);
                sub_26245DBC8();
                v70 = sub_2624626B8();
                v71 = *(v68 + 8);
                v71(v69, v53);
                sub_2623F39E0(v82, &qword_27FF0E470, &qword_262470EE8);
                sub_2623F39E0(v83, &qword_27FF0E470, &qword_262470EE8);
                sub_2623F39E0(v55, &qword_27FF0E470, &qword_262470EE8);
                sub_2623F39E0(v81, &qword_27FF0E470, &qword_262470EE8);
                v71(v67, v53);
                sub_2623F39E0(v66, &qword_27FF0E470, &qword_262470EE8);
                if ((v70 & 1) == 0)
                {
                  goto LABEL_18;
                }

LABEL_29:
                sub_26245DAFC(v37);
                v50 = 1;
                return v50 & 1;
              }

              sub_2623F39E0(v82, &qword_27FF0E470, &qword_262470EE8);
              sub_2623F39E0(v83, &qword_27FF0E470, &qword_262470EE8);
              sub_2623F39E0(v55, &qword_27FF0E470, &qword_262470EE8);
              sub_2623F39E0(v54, &qword_27FF0E470, &qword_262470EE8);
              (*(v80 + 8))(v67, v53);
            }

            v58 = &qword_27FF0E4A8;
            v59 = &qword_262471008;
            v48 = v66;
            goto LABEL_17;
          }

LABEL_15:
          sub_2623F39E0(v47, &qword_27FF0E470, &qword_262470EE8);
          sub_2623F39E0(v83, &qword_27FF0E470, &qword_262470EE8);
          sub_2623F39E0(v55, &qword_27FF0E470, &qword_262470EE8);
          v48 = v54;
          goto LABEL_16;
        }

        (*(v80 + 8))(v56, v53);
        v55 = v73;
      }

      sub_2623F39E0(v10, &qword_27FF0E4A8, &qword_262471008);
      goto LABEL_15;
    }

    sub_2623F39E0(&v30[v41], &qword_27FF0E470, &qword_262470EE8);
    sub_2623F39E0(&v30[v40], &qword_27FF0E470, &qword_262470EE8);
LABEL_8:
    sub_2623F39E0(v37, &qword_27FF0E4B0, &qword_262471010);
LABEL_19:
    v50 = 0;
    return v50 & 1;
  }

  sub_26245DA98(v37, v32);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    goto LABEL_8;
  }

  v49 = *v32 ^ *v38;
  sub_26245DAFC(v37);
  v50 = v49 ^ 1;
  return v50 & 1;
}

uint64_t sub_26245DA98(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RulesValidity();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26245DAFC(uint64_t a1)
{
  v2 = type metadata accessor for RulesValidity();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26245DB58(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0E470, &qword_262470EE8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_26245DBC8()
{
  result = qword_27FF0E4B8;
  if (!qword_27FF0E4B8)
  {
    sub_262462648();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0E4B8);
  }

  return result;
}

uint64_t sub_26245DC20(uint64_t *a1)
{
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0E4C0, &qword_262471018);
  v27 = *(v29 - 8);
  v2 = *(v27 + 64);
  MEMORY[0x28223BE20](v29);
  v4 = v25 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0E4C8, &qword_262471020);
  v28 = *(v5 - 8);
  v6 = *(v28 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = v25 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0E4D0, &qword_262471028);
  v30 = *(v9 - 8);
  v10 = *(v30 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v25 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26245E05C();
  v14 = v31;
  sub_262462D88();
  if (v14)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v26 = v5;
  v31 = a1;
  v16 = v28;
  v15 = v29;
  v17 = v12;
  v18 = sub_262462BC8();
  if (*(v18 + 16) != 1)
  {
    v20 = sub_262462A88();
    swift_allocError();
    v22 = v21;
    v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0E4D8, &qword_262471030) + 48);
    *v22 = &type metadata for RuleActiveStatus;
    sub_262462B48();
    sub_262462A78();
    (*(*(v20 - 8) + 104))(v22, *MEMORY[0x277D84160], v20);
    swift_willThrow();
    (*(v30 + 8))(v17, v9);
    swift_unknownObjectRelease();
    a1 = v31;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v25[1] = v18;
  v32 = *(v18 + 32);
  if (v32)
  {
    v34 = 1;
    sub_26245E0B0();
    sub_262462B38();
    v19 = v30;
    (*(v27 + 8))(v4, v15);
  }

  else
  {
    v33 = 0;
    sub_26245E104();
    sub_262462B38();
    v19 = v30;
    (*(v16 + 8))(v8, v26);
  }

  (*(v19 + 8))(v12, v9);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v31);
  return v32;
}

unint64_t sub_26245E05C()
{
  result = qword_2813BD8A8;
  if (!qword_2813BD8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BD8A8);
  }

  return result;
}

unint64_t sub_26245E0B0()
{
  result = qword_27FF0E4E0;
  if (!qword_27FF0E4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0E4E0);
  }

  return result;
}

unint64_t sub_26245E104()
{
  result = qword_2813BD890;
  if (!qword_2813BD890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BD890);
  }

  return result;
}

unint64_t sub_26245E1BC()
{
  result = qword_27FF0E4E8;
  if (!qword_27FF0E4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0E4E8);
  }

  return result;
}

unint64_t sub_26245E214()
{
  result = qword_27FF0E4F0;
  if (!qword_27FF0E4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0E4F0);
  }

  return result;
}

unint64_t sub_26245E26C()
{
  result = qword_27FF0E4F8;
  if (!qword_27FF0E4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0E4F8);
  }

  return result;
}

unint64_t sub_26245E2C4()
{
  result = qword_27FF0E500;
  if (!qword_27FF0E500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0E500);
  }

  return result;
}

unint64_t sub_26245E31C()
{
  result = qword_2813BD880;
  if (!qword_2813BD880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BD880);
  }

  return result;
}

unint64_t sub_26245E374()
{
  result = qword_2813BD888;
  if (!qword_2813BD888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BD888);
  }

  return result;
}

unint64_t sub_26245E3CC()
{
  result = qword_2813BD870;
  if (!qword_2813BD870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BD870);
  }

  return result;
}

unint64_t sub_26245E424()
{
  result = qword_2813BD878;
  if (!qword_2813BD878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BD878);
  }

  return result;
}

unint64_t sub_26245E47C()
{
  result = qword_2813BD898;
  if (!qword_2813BD898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BD898);
  }

  return result;
}

unint64_t sub_26245E4D4()
{
  result = qword_2813BD8A0;
  if (!qword_2813BD8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BD8A0);
  }

  return result;
}

unint64_t sub_26245E52C()
{
  result = qword_2813BDC00;
  if (!qword_2813BDC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BDC00);
  }

  return result;
}

unint64_t sub_26245E584()
{
  result = qword_2813BDC08;
  if (!qword_2813BDC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BDC08);
  }

  return result;
}

unint64_t sub_26245E5DC()
{
  result = qword_2813BDBF0;
  if (!qword_2813BDBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BDBF0);
  }

  return result;
}

unint64_t sub_26245E634()
{
  result = qword_2813BDBF8;
  if (!qword_2813BDBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BDBF8);
  }

  return result;
}

unint64_t sub_26245E68C()
{
  result = qword_2813BDC18;
  if (!qword_2813BDC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BDC18);
  }

  return result;
}

unint64_t sub_26245E6E4()
{
  result = qword_2813BDC20;
  if (!qword_2813BDC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BDC20);
  }

  return result;
}

uint64_t sub_26245E738(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x8000000262472410 == a2 || (sub_262462C58() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656D69546D6F7266 && a2 == 0xE800000000000000 || (sub_262462C58() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656D69546F74 && a2 == 0xE600000000000000)
  {

    return 2;
  }

  else
  {
    v5 = sub_262462C58();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_26245E858(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24) == 1)
  {
    sub_2623F39E0(a1, &qword_27FF0E510, &qword_262471618);
    sub_26245F930(a2, a3, v11);

    return sub_2623F39E0(v11, &qword_27FF0E510, &qword_262471618);
  }

  else
  {
    v7 = *(a1 + 16);
    v11[0] = *a1;
    v11[1] = v7;
    v12 = *(a1 + 32);
    v8 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    sub_262461260(v11, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v10;
  }

  return result;
}

uint64_t sub_26245E934(uint64_t a1)
{
  v3 = v1;
  v5 = sub_262462718();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v104 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_262462438();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v104 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v3[7];
  v15 = v3[8];
  __swift_project_boxed_opaque_existential_1(v3 + 4, v14);
  v16 = (*(*(v15 + 8) + 24))(&v131, a1, v14);
  if (v2)
  {
    return v3;
  }

  v121 = 0;
  v133 = v16;
  v17 = v3[7];
  v18 = v3[8];
  __swift_project_boxed_opaque_existential_1(v3 + 4, v17);
  v19 = (*(v18 + 16))(v17, v18);
  v21 = v20;
  v109 = v8;
  v117 = v9;
  v116 = v10;
  v115 = v13;
  if (v132 == 255)
  {
    v130 = 0;
    v128 = 0u;
    v129 = 0u;
  }

  else
  {
    v125 = v131;
    LOBYTE(v126) = v132;
    sub_2623F989C(v131, *(&v131 + 1), v132);
    sub_26241EA84();
    sub_2624629E8();
  }

  v125 = v128;
  v126 = v129;
  v127 = v130;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v122 = v133;
  sub_262461260(&v125, v19, v21, isUniquelyReferenced_nonNull_native);

  v23 = v122;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D918, &qword_26246C2D0);
  result = sub_262462AE8();
  v25 = 0;
  v26 = v23 + 64;
  v27 = 1 << *(v23 + 32);
  v28 = -1;
  if (v27 < 64)
  {
    v28 = ~(-1 << v27);
  }

  v29 = v28 & *(v23 + 64);
  v30 = (v27 + 63) >> 6;
  v119 = result + 64;
  v120 = result;
  v114 = xmmword_262463D10;
  v108 = v23;
  if (v29)
  {
    goto LABEL_8;
  }

  while (2)
  {
    v32 = v25;
    do
    {
      v25 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        __break(1u);
        goto LABEL_59;
      }

      if (v25 >= v30)
      {

        v60 = v120;
        v133 = v120;
        if (v120[2])
        {
          v61 = sub_2624414FC(0x7074754F656C7572, 0xEB00000000737475);
          if (v62)
          {
            sub_26243FAE0(v60[7] + 40 * v61, &v125, &qword_27FF0C5F0, &qword_262463A90);
            v128 = v125;
            v129 = v126;
            v130 = v127;
            if (*(&v126 + 1))
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0CFD8, &unk_262467E70);
              if (swift_dynamicCast())
              {
                v63 = v122;
LABEL_34:
                result = sub_262462AE8();
                v64 = 0;
                v65 = v63 + 64;
                v66 = 1 << *(v63 + 32);
                v67 = -1;
                if (v66 < 64)
                {
                  v67 = ~(-1 << v66);
                }

                v68 = v67 & *(v63 + 64);
                v69 = (v66 + 63) >> 6;
                v119 = result + 64;
                v108 = v63;
                v120 = result;
                if (v68)
                {
                  while (1)
                  {
                    v70 = __clz(__rbit64(v68));
                    v68 &= v68 - 1;
LABEL_43:
                    v73 = v70 | (v64 << 6);
                    v74 = *(v63 + 56);
                    v75 = (*(v63 + 48) + 16 * v73);
                    v76 = v75[1];
                    v134 = *v75;
                    sub_26243FAE0(v74 + 40 * v73, &v128, &qword_27FF0C5F0, &qword_262463A90);
                    sub_26243FAE0(&v128, &v125, &qword_27FF0C5F0, &qword_262463A90);
                    if (!*(&v126 + 1))
                    {
                      break;
                    }

                    if ((swift_dynamicCast() & 1) == 0)
                    {
                      goto LABEL_49;
                    }

                    v112 = v68;
                    v118 = v76;
                    v111 = v122;
                    v110 = v123;
                    v77 = v124;
                    v78 = sub_262462478();
                    v79 = *(v78 + 48);
                    v80 = *(v78 + 52);
                    swift_allocObject();
                    v81 = sub_262462468();
                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C670, &qword_262463D30);
                    v82 = *(v116 + 72);
                    v83 = (*(v116 + 80) + 32) & ~*(v116 + 80);
                    v84 = swift_allocObject();
                    *(v84 + 16) = v114;
                    sub_262462428();
                    *&v125 = v84;
                    sub_2623F4584();
                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C678, &qword_262463D38);
                    sub_2623F45DC();
                    v85 = v110;
                    sub_2624629A8();
                    v86 = v111;
                    sub_262462448();
                    *&v125 = v86;
                    *(&v125 + 1) = v85;
                    LOBYTE(v126) = v77;
                    sub_2623F4640();
                    v113 = v81;
                    v87 = v121;
                    v88 = sub_262462458();
                    if (v87)
                    {
                      MEMORY[0x266728D50](v87);

                      sub_2623F98B8(v86, v85, v77);
                      v121 = 0;
                    }

                    else
                    {
                      v121 = 0;
                      LODWORD(v106) = v77;
                      v95 = v85;
                      v96 = v88;
                      v107 = v89;
                      sub_262462708();
                      v97 = sub_2624626F8();
                      v99 = v98;
                      sub_2623F98B8(v86, v95, v106);
                      sub_2623F4694(v96, v107);

                      if (v99)
                      {
                        v122 = v97;
                        v123 = v99;
                        sub_2624629E8();
                        sub_2623F39E0(&v128, &qword_27FF0C5F0, &qword_262463A90);
                        v63 = v108;
                        result = v120;
                        v90 = v134;
                        v76 = v118;
                        v68 = v112;
                        goto LABEL_51;
                      }
                    }

                    v63 = v108;
                    v90 = v134;
                    v76 = v118;
                    v68 = v112;
LABEL_50:
                    v125 = v128;
                    v126 = v129;
                    v127 = v130;
                    result = v120;
LABEL_51:
                    *(v119 + ((v73 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v73;
                    v91 = (*(result + 48) + 16 * v73);
                    *v91 = v90;
                    v91[1] = v76;
                    v92 = *(result + 56) + 40 * v73;
                    *v92 = v125;
                    *(v92 + 16) = v126;
                    *(v92 + 32) = v127;
                    v93 = *(result + 16);
                    v55 = __OFADD__(v93, 1);
                    v94 = v93 + 1;
                    if (v55)
                    {
                      goto LABEL_61;
                    }

                    *(result + 16) = v94;
                    if (!v68)
                    {
                      goto LABEL_38;
                    }
                  }

                  sub_2623F39E0(&v125, &qword_27FF0C5F0, &qword_262463A90);
LABEL_49:
                  v90 = v134;
                  goto LABEL_50;
                }

LABEL_38:
                v71 = v64;
                while (1)
                {
                  v64 = v71 + 1;
                  if (__OFADD__(v71, 1))
                  {
                    break;
                  }

                  if (v64 >= v69)
                  {
                    v100 = result;

                    *&v125 = v100;
                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0CFD8, &unk_262467E70);
                    sub_26241EAD8();
                    sub_2624629E8();
                    v101 = swift_isUniquelyReferenced_nonNull_native();
                    *&v125 = v133;
                    sub_262461260(&v128, 0x7074754F656C7572, 0xEB00000000737475, v101);
                    v3 = v125;
                    v133 = v125;
                    v102 = v131;
                    v103 = v132;

                    sub_262419958(v102, *(&v102 + 1), v103);

                    return v3;
                  }

                  v72 = *(v65 + 8 * v64);
                  ++v71;
                  if (v72)
                  {
                    v70 = __clz(__rbit64(v72));
                    v68 = (v72 - 1) & v72;
                    goto LABEL_43;
                  }
                }

LABEL_59:
                __break(1u);
                goto LABEL_60;
              }
            }

            else
            {
              sub_2623F39E0(&v128, &qword_27FF0C5F0, &qword_262463A90);
            }
          }
        }

        v63 = sub_262461FB8(MEMORY[0x277D84F90]);
        goto LABEL_34;
      }

      v33 = *(v26 + 8 * v25);
      ++v32;
    }

    while (!v33);
    v31 = __clz(__rbit64(v33));
    v29 = (v33 - 1) & v33;
LABEL_14:
    v34 = v31 | (v25 << 6);
    v35 = *(v23 + 56);
    v36 = (*(v23 + 48) + 16 * v34);
    v37 = v36[1];
    v134 = *v36;
    sub_26243FAE0(v35 + 40 * v34, &v128, &qword_27FF0C5F0, &qword_262463A90);
    sub_26243FAE0(&v128, &v125, &qword_27FF0C5F0, &qword_262463A90);
    if (!*(&v126 + 1))
    {

      result = sub_2623F39E0(&v125, &qword_27FF0C5F0, &qword_262463A90);
      goto LABEL_20;
    }

    result = swift_dynamicCast();
    if ((result & 1) == 0)
    {
LABEL_20:
      v50 = v120;
      v51 = v134;
      goto LABEL_21;
    }

    v112 = v37;
    v110 = v122;
    v113 = v123;
    LODWORD(v118) = v124;
    v38 = sub_262462478();
    v39 = *(v38 + 48);
    v40 = *(v38 + 52);
    swift_allocObject();
    v41 = sub_262462468();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C670, &qword_262463D30);
    v42 = *(v116 + 72);
    v43 = (*(v116 + 80) + 32) & ~*(v116 + 80);
    v44 = swift_allocObject();
    *(v44 + 16) = v114;
    sub_262462428();
    *&v125 = v44;
    sub_2623F4584();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C678, &qword_262463D38);
    sub_2623F45DC();
    v45 = v113;
    sub_2624629A8();
    v46 = v110;
    sub_262462448();
    *&v125 = v46;
    *(&v125 + 1) = v45;
    LOBYTE(v126) = v118;
    sub_2623F4640();
    v111 = v41;
    v47 = v121;
    v48 = sub_262462458();
    v50 = v120;
    if (v47)
    {
      MEMORY[0x266728D50](v47);

      result = sub_2623F98B8(v46, v45, v118);
      v121 = 0;
      goto LABEL_18;
    }

    v121 = 0;
    v57 = v48;
    v58 = v49;
    sub_262462708();
    v105 = sub_2624626F8();
    v106 = v59;
    sub_2623F98B8(v46, v113, v118);
    sub_2623F4694(v57, v58);

    if (!v106)
    {
LABEL_18:
      v23 = v108;
      v51 = v134;
      v37 = v112;
LABEL_21:
      v125 = v128;
      v126 = v129;
      v127 = v130;
      goto LABEL_22;
    }

    v122 = v105;
    v123 = v106;
    sub_2624629E8();
    result = sub_2623F39E0(&v128, &qword_27FF0C5F0, &qword_262463A90);
    v23 = v108;
    v51 = v134;
    v37 = v112;
LABEL_22:
    *(v119 + ((v34 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v34;
    v52 = (v50[6] + 16 * v34);
    *v52 = v51;
    v52[1] = v37;
    v53 = v50[7] + 40 * v34;
    *v53 = v125;
    *(v53 + 16) = v126;
    *(v53 + 32) = v127;
    v54 = v50[2];
    v55 = __OFADD__(v54, 1);
    v56 = v54 + 1;
    if (!v55)
    {
      v50[2] = v56;
      if (!v29)
      {
        continue;
      }

LABEL_8:
      v31 = __clz(__rbit64(v29));
      v29 &= v29 - 1;
      goto LABEL_14;
    }

    break;
  }

LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
  return result;
}

uint64_t sub_26245F598()
{
  v1 = 0x6E6F6973726576;
  if (*v0 != 1)
  {
    v1 = 0x6973736572707865;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x79546E7275746572;
  }
}

uint64_t sub_26245F5F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2624622D4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26245F620(uint64_t a1)
{
  v2 = sub_262462100();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26245F65C(uint64_t a1)
{
  v2 = sub_262462100();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26245F698@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0E520, &qword_262471698);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15[-1] - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_262462100();
  sub_262462D88();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v16[0]) = 0;
  v17[0] = sub_262462B88();
  v17[1] = v11;
  LOBYTE(v16[0]) = 1;
  v17[2] = sub_262462B88();
  v17[3] = v12;
  v18[55] = 2;
  sub_262462B58();
  type metadata accessor for DecisionExpressionDecoder();
  sub_26240E4F4(v15, v16);
  __swift_destroy_boxed_opaque_existential_1(v15);
  (*(v6 + 8))(v9, v5);
  sub_2623EB668(v16, v18);
  sub_262462154(v17, a2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_26246218C(v17);
}

double sub_26245F930@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_2624414FC(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v17 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_2624613F0();
      v12 = v17;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    v14 = *(v12 + 56) + 40 * v9;
    v15 = *(v14 + 16);
    *a3 = *v14;
    *(a3 + 16) = v15;
    *(a3 + 32) = *(v14 + 32);
    sub_2624610A4(v9, v12);
    *v4 = v12;
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *&result = 1;
    *(a3 + 24) = xmmword_262471600;
  }

  return result;
}

uint64_t sub_26245F9EC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D918, &qword_26246C2D0);
  v41 = a2;
  result = sub_262462AF8();
  v8 = result;
  if (*(v5 + 16))
  {
    v40 = v3;
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
      v21 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v24 = v21 | (v9 << 6);
      v25 = (*(v5 + 48) + 16 * v24);
      v26 = *v25;
      v27 = v25[1];
      v28 = *(v5 + 56) + 40 * v24;
      if (v41)
      {
        v29 = *v28;
        v30 = *(v28 + 16);
        v44 = *(v28 + 32);
        v42 = v29;
        v43 = v30;
      }

      else
      {
        sub_26243FAE0(v28, &v42, &qword_27FF0C5F0, &qword_262463A90);
      }

      v31 = *(v8 + 40);
      sub_262462CF8();
      sub_262462778();
      result = sub_262462D38();
      v32 = -1 << *(v8 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v15 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v15 + 8 * v34);
          if (v38 != -1)
          {
            v16 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v33) & ~*(v15 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v26;
      v17[1] = v27;
      v18 = *(v8 + 56) + 40 * v16;
      v19 = v42;
      v20 = v43;
      *(v18 + 32) = v44;
      *v18 = v19;
      *(v18 + 16) = v20;
      ++*(v8 + 16);
    }

    v22 = v9;
    while (1)
    {
      v9 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v23 = v10[v9];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v13 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_36;
    }

    v39 = 1 << *(v5 + 32);
    v3 = v40;
    if (v39 >= 64)
    {
      bzero((v5 + 64), ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v39;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_26245FD1C(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4, void (*a5)(uint64_t, _BYTE *))
{
  v6 = v5;
  v8 = *v5;
  if (*(*v5 + 24) > a1)
  {
    v9 = *(*v5 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v39 = a2;
  result = sub_262462AF8();
  v11 = result;
  if (*(v8 + 16))
  {
    v38 = v6;
    v12 = 0;
    v13 = (v8 + 64);
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 64);
    v17 = (v14 + 63) >> 6;
    v18 = result + 64;
    while (v16)
    {
      v21 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v24 = v21 | (v12 << 6);
      v25 = (*(v8 + 48) + 16 * v24);
      v26 = *v25;
      v27 = v25[1];
      v28 = *(v8 + 56) + 40 * v24;
      if (v39)
      {
        a5(v28, v41);
      }

      else
      {
        sub_2623F3CA4(v28, v41);
      }

      v29 = *(v11 + 40);
      sub_262462CF8();
      sub_262462778();
      result = sub_262462D38();
      v30 = -1 << *(v11 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v18 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v18 + 8 * v32);
          if (v36 != -1)
          {
            v19 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v31) & ~*(v18 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      v20 = (*(v11 + 48) + 16 * v19);
      *v20 = v26;
      v20[1] = v27;
      result = (a5)(v41, *(v11 + 56) + 40 * v19);
      ++*(v11 + 16);
    }

    v22 = v12;
    while (1)
    {
      v12 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v12 >= v17)
      {
        break;
      }

      v23 = v13[v12];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v16 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v6 = v38;
      goto LABEL_36;
    }

    v37 = 1 << *(v8 + 32);
    v6 = v38;
    if (v37 >= 64)
    {
      bzero((v8 + 64), ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v37;
    }

    *(v8 + 16) = 0;
  }

LABEL_36:
  *v6 = v11;
  return result;
}

uint64_t sub_26245FFEC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0CA08, &qword_2624659A0);
  result = sub_262462AF8();
  v8 = result;
  if (*(v5 + 16))
  {
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
      v22 = *(*(v5 + 48) + 8 * v21);
      v23 = (*(v5 + 56) + 16 * v21);
      v25 = *v23;
      v24 = v23[1];
      if ((a2 & 1) == 0)
      {
        v26 = v23[1];
      }

      v27 = *(v8 + 40);
      result = sub_262462CE8();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      v17 = (*(v8 + 56) + 16 * v16);
      *v17 = v25;
      v17[1] = v24;
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
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

    if (a2)
    {
      v35 = 1 << *(v5 + 32);
      if (v35 >= 64)
      {
        bzero((v5 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v35;
      }

      *(v5 + 16) = 0;
    }

    v3 = v36;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_26246029C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0CEA8, &qword_262467D98);
  v37 = a2;
  result = sub_262462AF8();
  v8 = result;
  if (*(v5 + 16))
  {
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
      v22 = *(*(v5 + 48) + 8 * v21);
      v23 = *(v5 + 56) + 24 * v21;
      v24 = *v23;
      v25 = *(v23 + 8);
      v26 = *(v23 + 16);
      if ((v37 & 1) == 0)
      {
        sub_2623F989C(v24, v25, v26);
      }

      v27 = *(v8 + 40);
      result = sub_262462CE8();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      v17 = *(v8 + 56) + 24 * v16;
      *v17 = v24;
      *(v17 + 8) = v25;
      *(v17 + 16) = v26;
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
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

    if ((v37 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero((v5 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_26246059C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0E540, &qword_2624717C8);
  v37 = a2;
  result = sub_262462AF8();
  v8 = result;
  if (*(v5 + 16))
  {
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
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v37 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_262462CF8();
      sub_262462778();
      result = sub_262462D38();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
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

    if ((v37 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero((v5 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_262460840(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0E538, &qword_2624717C0);
  result = sub_262462AF8();
  v8 = result;
  if (*(v5 + 16))
  {
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
      v21 = *(v5 + 48);
      v22 = *(v21 + 8 * v20);
      v23 = *(*(v5 + 56) + 8 * v20);
      v24 = *(v8 + 40);
      if (v22 != 0.0)
      {
        v25 = *(v21 + 8 * v20);
      }

      result = sub_262462CE8();
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

LABEL_35:
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
        goto LABEL_35;
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

    if (a2)
    {
      v33 = 1 << *(v5 + 32);
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
  }

  *v3 = v8;
  return result;
}

uint64_t sub_262460A9C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D840, &qword_26246BE28);
  v46 = a2;
  result = sub_262462AF8();
  v8 = result;
  if (*(v5 + 16))
  {
    v44 = v3;
    v45 = v5;
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
      v22 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v25 = v22 | (v9 << 6);
      v26 = *(v5 + 56);
      v27 = (*(v5 + 48) + 32 * v25);
      v28 = *v27;
      v29 = v27[1];
      v30 = v27[3];
      v47 = v27[2];
      v31 = v26 + 56 * v25;
      if (v46)
      {
        v32 = *v31;
        v33 = *(v31 + 16);
        v34 = *(v31 + 32);
        v51 = *(v31 + 48);
        v49 = v33;
        v50 = v34;
        v48 = v32;
      }

      else
      {
        sub_26243F92C(v31, &v48);
      }

      v35 = *(v8 + 40);
      sub_262462CF8();
      sub_262462778();
      sub_262462778();
      result = sub_262462D38();
      v36 = -1 << *(v8 + 32);
      v37 = result & ~v36;
      v38 = v37 >> 6;
      if (((-1 << v37) & ~*(v15 + 8 * (v37 >> 6))) == 0)
      {
        v39 = 0;
        v40 = (63 - v36) >> 6;
        while (++v38 != v40 || (v39 & 1) == 0)
        {
          v41 = v38 == v40;
          if (v38 == v40)
          {
            v38 = 0;
          }

          v39 |= v41;
          v42 = *(v15 + 8 * v38);
          if (v42 != -1)
          {
            v16 = __clz(__rbit64(~v42)) + (v38 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v37) & ~*(v15 + 8 * (v37 >> 6)))) | v37 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 32 * v16);
      *v17 = v28;
      v17[1] = v29;
      v17[2] = v47;
      v17[3] = v30;
      v18 = *(v8 + 56) + 56 * v16;
      v19 = v48;
      v20 = v49;
      v21 = v50;
      *(v18 + 48) = v51;
      *(v18 + 16) = v20;
      *(v18 + 32) = v21;
      *v18 = v19;
      ++*(v8 + 16);
      v5 = v45;
    }

    v23 = v9;
    while (1)
    {
      v9 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v24 = v10[v9];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v13 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v46 & 1) == 0)
    {

      v3 = v44;
      goto LABEL_36;
    }

    v43 = 1 << *(v5 + 32);
    v3 = v44;
    if (v43 >= 64)
    {
      bzero(v10, ((v43 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v43;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_262460DAC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0E518, &qword_262471620);
  v37 = a2;
  result = sub_262462AF8();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
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
      v22 = *(v5 + 56);
      v23 = (*(v5 + 48) + 32 * v21);
      v24 = v23[1];
      v39 = *v23;
      v25 = v23[3];
      v38 = v23[2];
      v26 = *(v22 + 8 * v21);
      if ((v37 & 1) == 0)
      {
      }

      v27 = *(v8 + 40);
      sub_262462CF8();
      sub_262462778();
      sub_262462778();
      result = sub_262462D38();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 32 * v16);
      *v17 = v39;
      v17[1] = v24;
      v17[2] = v38;
      v17[3] = v25;
      *(*(v8 + 56) + 8 * v16) = v26;
      ++*(v8 + 16);
      v5 = v36;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
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

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_2624610A4(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_2624629C8() + 1) & ~v5;
    do
    {
      v11 = *(a2 + 40);
      v12 = (*(a2 + 48) + 16 * v6);
      v13 = *v12;
      v14 = v12[1];
      sub_262462CF8();

      sub_262462778();
      v15 = sub_262462D38();

      v16 = v15 & v7;
      if (v3 >= v8)
      {
        if (v16 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v16 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v16)
      {
LABEL_10:
        v17 = *(a2 + 48);
        v18 = (v17 + 16 * v3);
        v19 = (v17 + 16 * v6);
        if (v3 != v6 || v18 >= v19 + 1)
        {
          *v18 = *v19;
        }

        v20 = *(a2 + 56);
        v21 = v20 + 40 * v3;
        v22 = (v20 + 40 * v6);
        if (v3 != v6 || v21 >= v22 + 40)
        {
          v9 = *v22;
          v10 = v22[1];
          *(v21 + 32) = *(v22 + 4);
          *v21 = v9;
          *(v21 + 16) = v10;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_262461260(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_2624414FC(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_26245F9EC(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_2624414FC(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = sub_262462C78();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_2624613F0();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7] + 40 * v11;

    return sub_26243F9F0(a1, v23);
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v25 = (v22[6] + 16 * v11);
  *v25 = a2;
  v25[1] = a3;
  v26 = v22[7] + 40 * v11;
  v27 = *a1;
  v28 = *(a1 + 16);
  *(v26 + 32) = *(a1 + 32);
  *v26 = v27;
  *(v26 + 16) = v28;
  v29 = v22[2];
  v15 = __OFADD__(v29, 1);
  v30 = v29 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v30;
}

void *sub_2624613F0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D918, &qword_26246C2D0);
  v2 = *v0;
  v3 = sub_262462AE8();
  v4 = v3;
  if (*(v2 + 16))
  {
    v27 = v1;
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
    v11 = *(v2 + 64);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v12 = v10 & v11;
    v13 = (v9 + 63) >> 6;
    if ((v10 & v11) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v20 = *v19;
        v21 = v19[1];
        v22 = 40 * v17;
        sub_26243FAE0(*(v2 + 56) + 40 * v17, v28, &qword_27FF0C5F0, &qword_262463A90);
        v23 = (*(v4 + 48) + v18);
        *v23 = v20;
        v23[1] = v21;
        v24 = *(v4 + 56) + v22;
        v25 = v29;
        v26 = v28[1];
        *v24 = v28[0];
        *(v24 + 16) = v26;
        *(v24 + 32) = v25;
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

        v1 = v27;
        goto LABEL_21;
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_262461604(uint64_t *a1, uint64_t *a2, void (*a3)(_BYTE *, uint64_t))
{
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v5 = *v3;
  v6 = sub_262462AE8();
  v7 = v6;
  if (*(v5 + 16))
  {
    v27 = v4;
    result = (v6 + 64);
    v9 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v5 + 64 + 8 * v9)
    {
      result = memmove(result, (v5 + 64), 8 * v9);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = *(v5 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_17:
        v20 = v17 | (v11 << 6);
        v21 = 16 * v20;
        v22 = (*(v5 + 48) + 16 * v20);
        v23 = *v22;
        v24 = v22[1];
        v25 = 40 * v20;
        sub_2623F3CA4(*(v5 + 56) + 40 * v20, v29);
        v26 = (*(v7 + 48) + v21);
        *v26 = v23;
        v26[1] = v24;
        a3(v29, *(v7 + 56) + v25);
      }

      while (v15);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v4 = v27;
        goto LABEL_21;
      }

      v19 = *(v5 + 64 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v4 = v7;
  }

  return result;
}

void *sub_2624617A8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0CA08, &qword_2624659A0);
  v2 = *v0;
  v3 = sub_262462AE8();
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
        v18 = (*(v2 + 56) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        v21 = (*(v4 + 56) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
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

void *sub_262461938()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0CEA8, &qword_262467D98);
  v2 = *v0;
  v3 = sub_262462AE8();
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
        v18 = *(v2 + 56) + 24 * v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = *(v18 + 16);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        v22 = *(v4 + 56) + 24 * v17;
        *v22 = v19;
        *(v22 + 8) = v20;
        *(v22 + 16) = v21;
        result = sub_2623F989C(v19, v20, v21);
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

void *sub_262461AFC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0E540, &qword_2624717C8);
  v2 = *v0;
  v3 = sub_262462AE8();
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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

void *sub_262461C64()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0E538, &qword_2624717C0);
  v2 = *v0;
  v3 = sub_262462AE8();
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
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

void *sub_262461DB0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D840, &qword_26246BE28);
  v2 = *v0;
  v3 = sub_262462AE8();
  v4 = v3;
  if (*(v2 + 16))
  {
    v29 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    v30 = v4;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    v12 = (v9 + 63) >> 6;
    if (v11)
    {
      do
      {
        v13 = __clz(__rbit64(v11));
        v31 = (v11 - 1) & v11;
LABEL_17:
        v16 = v13 | (v8 << 6);
        v17 = 32 * v16;
        v18 = (*(v2 + 48) + 32 * v16);
        v19 = *v18;
        v20 = v18[1];
        v21 = v18[2];
        v22 = v18[3];
        v23 = 56 * v16;
        sub_26243F92C(*(v2 + 56) + 56 * v16, v32);
        v24 = (*(v30 + 48) + v17);
        *v24 = v19;
        v24[1] = v20;
        v24[2] = v21;
        v24[3] = v22;
        v25 = *(v30 + 56) + v23;
        v26 = v33;
        v27 = v32[2];
        v28 = v32[1];
        *v25 = v32[0];
        *(v25 + 16) = v28;
        *(v25 + 32) = v27;
        *(v25 + 48) = v26;

        v11 = v31;
      }

      while (v31);
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= v12)
      {

        v1 = v29;
        v4 = v30;
        goto LABEL_21;
      }

      v15 = *(v2 + 64 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v31 = (v15 - 1) & v15;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

unint64_t sub_262461FB8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D918, &qword_26246C2D0);
    v3 = sub_262462B08();
    v4 = a1 + 32;

    while (1)
    {
      sub_26243FAE0(v4, &v16, &qword_27FF0E508, &qword_262471610);
      v5 = v16;
      v6 = v17;
      result = sub_2624414FC(v16, v17);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      v10 = v3[7] + 40 * result;
      v11 = v18;
      v12 = v19;
      *(v10 + 32) = v20;
      *v10 = v11;
      *(v10 + 16) = v12;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      v4 += 56;
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

unint64_t sub_262462100()
{
  result = qword_2813BDB38[0];
  if (!qword_2813BDB38[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2813BDB38);
  }

  return result;
}

unint64_t sub_2624621D0()
{
  result = qword_27FF0E528;
  if (!qword_27FF0E528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0E528);
  }

  return result;
}

unint64_t sub_262462228()
{
  result = qword_2813BDB28;
  if (!qword_2813BDB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BDB28);
  }

  return result;
}

unint64_t sub_262462280()
{
  result = qword_2813BDB30;
  if (!qword_2813BDB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BDB30);
  }

  return result;
}

uint64_t sub_2624622D4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x79546E7275746572 && a2 == 0xEA00000000006570;
  if (v4 || (sub_262462C58() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000 || (sub_262462C58() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6973736572707865 && a2 == 0xEA00000000006E6FLL)
  {

    return 2;
  }

  else
  {
    v6 = sub_262462C58();

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