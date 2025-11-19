uint64_t sub_26240EAC0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v4 = sub_262462A88();
  v17 = *(v4 - 8);
  v5 = *(v17 + 64);
  MEMORY[0x28223BE20](v4);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0CC88, &unk_2624669D0);
  v19 = *(v6 - 8);
  v7 = *(v19 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26241989C();
  sub_262462D88();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v11 = v18;
  v16 = a1;
  sub_2623F4CF4();
  sub_262462BB8();
  (*(v19 + 8))(v9, v6);
  v12 = v20;
  v13 = v21;
  *v11 = 0x65756C6156;
  *(v11 + 8) = 0xE500000000000000;
  *(v11 + 16) = v12;
  *(v11 + 32) = v13;

  sub_2623F989C(v12, *(&v12 + 1), v13);
  __swift_destroy_boxed_opaque_existential_1(v16);

  return sub_2623F98B8(v12, *(&v12 + 1), v13);
}

uint64_t sub_26240EE5C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v23 = a2;
  v4 = sub_262462A88();
  v22 = *(v4 - 8);
  v5 = *(v22 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0CCA0, &qword_2624669E8);
  v24 = *(v8 - 8);
  v9 = *(v24 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v20 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2624198F0();
  sub_262462D88();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v20[2] = v7;
  v21 = a1;
  LOBYTE(v25) = 0;
  v13 = sub_262462B88();
  v15 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0CCB0, &qword_2624669F0);
  LOBYTE(v27) = 1;
  sub_26241E720(&qword_2813BD438, &qword_27FF0CCB0, &qword_2624669F0);
  sub_262462BB8();
  (*(v24 + 8))(v11, v8);
  v16 = v25;
  v17 = v26;
  v18 = v23;
  *v23 = 0x646C656946;
  v18[1] = 0xE500000000000000;
  v18[2] = v13;
  v18[3] = v15;
  *(v18 + 2) = v16;
  *(v18 + 48) = v17;

  sub_262419944(v16, *(&v16 + 1), v17);
  __swift_destroy_boxed_opaque_existential_1(v21);

  return sub_262419958(v16, *(&v16 + 1), v17);
}

uint64_t sub_26240F2B8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v43 = sub_262462A88();
  v40 = *(v43 - 1);
  v3 = *(v40 + 64);
  MEMORY[0x28223BE20](v43);
  v44 = (v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C4E8, &qword_262463350);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v42 = v36 - v7;
  v41 = type metadata accessor for RulesValidity();
  v38 = *(v41 - 8);
  v8 = *(v38 + 64);
  MEMORY[0x28223BE20](v41);
  v10 = v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0CCC0, &qword_262466A08);
  v45 = *(v11 - 8);
  v12 = *(v45 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = v36 - v13;
  v15 = type metadata accessor for DecisionRule();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = (v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26241996C();
  v20 = v46;
  sub_262462D88();
  if (v20)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v37 = v10;
  v46 = v15;
  LOBYTE(v48) = 0;
  v22 = v18;
  *v18 = sub_262462B88();
  v18[1] = v23;
  v36[2] = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0CCB0, &qword_2624669F0);
  LOBYTE(v47[0]) = 1;
  sub_26241E720(&qword_2813BD438, &qword_27FF0CCB0, &qword_2624669F0);
  v36[1] = v24;
  sub_262462BB8();
  v25 = v49;
  *(v22 + 1) = v48;
  v44 = v22;
  *(v22 + 32) = v25;
  LOBYTE(v48) = 2;
  sub_26241C078(&qword_2813BDBE8, type metadata accessor for RulesValidity);
  v26 = v41;
  v27 = v42;
  sub_262462B78();
  v43 = a1;
  v40 = 0;
  v28 = v11;
  v29 = *(v38 + 48);
  if (v29(v27, 1, v26) == 1)
  {
    v30 = v37;
    *v37 = 0;
    swift_storeEnumTagMultiPayload();
    v31 = v29(v27, 1, v26);
    v32 = v39;
    if (v31 != 1)
    {
      sub_2623F39E0(v27, &qword_27FF0C4E8, &qword_262463350);
    }
  }

  else
  {
    v30 = v37;
    sub_2623F2530(v27, v37);
    v32 = v39;
  }

  v33 = v46;
  v34 = v44;
  sub_2623F2530(v30, v44 + *(v46 + 24));
  v50 = 3;
  sub_262462B58();
  type metadata accessor for DecisionExpressionDecoder();
  sub_26240E4F4(v47, &v48);
  v35 = v45;
  __swift_destroy_boxed_opaque_existential_1(v47);
  (*(v35 + 8))(v14, v28);
  sub_2623EB668(&v48, v34 + *(v33 + 28));
  sub_2624199C0(v34, v32);
  __swift_destroy_boxed_opaque_existential_1(v43);
  return sub_262419A24(v34, type metadata accessor for DecisionRule);
}

uint64_t sub_26240FA6C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0CCC8, &unk_262466A10);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v22 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_262419A84();
  result = sub_262462D88();
  if (!v2)
  {
    v12 = sub_262462BC8();
    if (*(v12 + 16))
    {
      v13 = *(v12 + 32);

      v14 = *(sub_262462BC8() + 16);

      if (v14 == 1)
      {
        if (v13 > 4)
        {
          if (v13 > 7)
          {
            if (v13 == 8)
            {
              LOBYTE(v22[0]) = 8;
              a2[3] = &type metadata for MaxEmbargo;
              a2[4] = sub_262419C28();
              sub_262419C7C();
            }

            else if (v13 == 9)
            {
              LOBYTE(v22[0]) = 9;
              a2[3] = &type metadata for MinEmbargo;
              a2[4] = sub_262419B80();
              sub_262419BD4();
            }

            else
            {
              LOBYTE(v22[0]) = 10;
              a2[3] = &type metadata for Prioritized;
              a2[4] = sub_262419AD8();
              *a2 = swift_allocObject();
              sub_262419B2C();
            }
          }

          else if (v13 == 5)
          {
            LOBYTE(v22[0]) = 5;
            a2[3] = &type metadata for FirstShortCircuit;
            a2[4] = sub_262419E20();
            *a2 = swift_allocObject();
            sub_262419E74();
          }

          else if (v13 == 6)
          {
            LOBYTE(v22[0]) = 6;
            a2[3] = &type metadata for FirstTypeShortCircuit;
            a2[4] = sub_262419D78();
            *a2 = swift_allocObject();
            sub_262419DCC();
          }

          else
          {
            LOBYTE(v22[0]) = 7;
            a2[3] = &type metadata for MaxBackoff;
            a2[4] = sub_262419CD0();
            sub_262419D24();
          }

LABEL_30:
          sub_262462BB8();
          return (*(v6 + 8))(v9, v5);
        }

        if (v13 <= 1)
        {
          if (v13)
          {
            LOBYTE(v22[0]) = 1;
            a2[3] = &type metadata for ContainsType;
            a2[4] = sub_26241A108();
            *a2 = swift_allocObject();
            sub_26241A15C();
          }

          else
          {
            LOBYTE(v22[0]) = 0;
            a2[3] = &type metadata for Contains;
            a2[4] = sub_26241A1B0();
            *a2 = swift_allocObject();
            sub_26241A250();
          }
        }

        else
        {
          if (v13 != 2)
          {
            if (v13 == 3)
            {
              LOBYTE(v22[0]) = 3;
              a2[3] = &type metadata for AllType;
              a2[4] = sub_262419FB8();
              *a2 = swift_allocObject();
              sub_26241A00C();
            }

            else
            {
              LOBYTE(v22[0]) = 4;
              a2[3] = &type metadata for First;
              a2[4] = sub_262419EC8();
              *a2 = swift_allocObject();
              sub_262419F64();
            }

            goto LABEL_30;
          }

          LOBYTE(v22[0]) = 2;
          a2[3] = &type metadata for All;
          a2[4] = sub_26241A060();
          *a2 = swift_allocObject();
          sub_26241A0B4();
        }

        sub_262462BB8();
        return (*(v6 + 8))(v9, v5);
      }
    }

    else
    {
    }

    v15 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v16 = sub_262462D78();
    v17 = sub_262427A60(v16);
    v19 = v18;

    sub_2623F1BBC();
    swift_allocError();
    *v20 = v17;
    *(v20 + 8) = v19;
    strcpy((v20 + 16), "MergingLogic");
    *(v20 + 29) = 0;
    *(v20 + 30) = -5120;
    v21 = v22[1];
    *(v20 + 32) = v22[0];
    *(v20 + 48) = v21;
    *(v20 + 64) = 2;
    swift_willThrow();
    return (*(v6 + 8))(v9, v5);
  }

  return result;
}

uint64_t sub_262410008(uint64_t a1)
{
  v2 = sub_26241989C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_262410044(uint64_t a1)
{
  v2 = sub_26241989C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_262410080(uint64_t a1)
{
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  *a1 = v3;
  *(a1 + 8) = v2;
  v4 = *(v1 + 32);
  *(a1 + 16) = v4;
  sub_2623F989C(v3, v2, v4);
}

uint64_t sub_2624100E0(uint64_t a1)
{
  v2 = sub_2624198F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26241011C(uint64_t a1)
{
  v2 = sub_2624198F0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_262410158(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  v9 = *(v2 + 40);
  v10 = *(v2 + 48);
  if (v10 == 255)
  {
    v48 = 0;
    v46 = 0u;
    v47 = 0u;
    if (!*(a2 + 16))
    {
      goto LABEL_9;
    }

LABEL_5:
    v11 = sub_2624414FC(v6, v7);
    if ((v12 & 1) == 0)
    {
      goto LABEL_9;
    }

    v52 = v6;
    sub_2623F3970(*(a2 + 56) + 40 * v11, &v43);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C5F0, &qword_262463A90);
    v13 = sub_262462918();
    v14 = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];

    swift_unknownObjectRelease();
    if (v13 != v14)
    {
      sub_2623F3970(&v43, &v40);
      if (*(&v41 + 1))
      {
        sub_2623F39E0(&v43, &qword_27FF0C5F0, &qword_262463A90);
        v49 = v40;
        v50 = v41;
        v15 = v42;
        goto LABEL_15;
      }

      sub_2623F39E0(&v40, &qword_27FF0C5F0, &qword_262463A90);
    }

    sub_2623F3970(&v46, &v37);
    if (!*(&v38 + 1))
    {
      sub_2623F39E0(&v37, &qword_27FF0C5F0, &qword_262463A90);
      sub_2623F1BBC();
      swift_allocError();
      *v32 = v52;
      *(v32 + 8) = v7;
      v33 = v42;
      v34 = v41;
      *(v32 + 16) = v40;
      *(v32 + 32) = v34;
      *(v32 + 48) = v33;
      *(v32 + 64) = 5;
      swift_willThrow();

      sub_2623F39E0(&v43, &qword_27FF0C5F0, &qword_262463A90);
      goto LABEL_25;
    }

    sub_2623F39E0(&v43, &qword_27FF0C5F0, &qword_262463A90);
    v49 = v37;
    v50 = v38;
    v15 = v39;
LABEL_15:
    v51 = v15;
    v6 = v52;
    goto LABEL_16;
  }

  *&v40 = *(v2 + 32);
  *(&v40 + 1) = v9;
  LOBYTE(v41) = v10;
  sub_2623F989C(v8, v9, v10);
  sub_26241EA84();
  sub_2624629E8();
  if (*(a2 + 16))
  {
    goto LABEL_5;
  }

LABEL_9:
  sub_2623F3970(&v46, &v43);
  if (!*(&v44 + 1))
  {
    sub_2623F39E0(&v43, &qword_27FF0C5F0, &qword_262463A90);
    sub_2623F1BBC();
    swift_allocError();
    *v16 = v6;
    *(v16 + 8) = v7;
    v17 = v42;
    v18 = v41;
    *(v16 + 16) = v40;
    *(v16 + 32) = v18;
    *(v16 + 48) = v17;
    *(v16 + 64) = 6;
    swift_willThrow();

LABEL_25:
    sub_2623F39E0(&v46, &qword_27FF0C5F0, &qword_262463A90);
    return a2;
  }

  v49 = v43;
  v50 = v44;
  v51 = v45;
LABEL_16:
  sub_2623F39E0(&v46, &qword_27FF0C5F0, &qword_262463A90);
  sub_2623F3A40(&v49, &v40);
  if (swift_dynamicCast())
  {
    sub_2623F3A9C(&v49);
    v9 = *(&v46 + 1);
    v8 = v46;
    LOBYTE(v10) = v47;
LABEL_27:
    *a1 = v8;
    *(a1 + 8) = v9;
    *(a1 + 16) = v10;

    return a2;
  }

  sub_2623F3A40(&v49, &v40);
  if (swift_dynamicCast())
  {
    v52 = v6;
    v36 = v7;
    v19 = v46;
    v20 = sub_262462418();
    v21 = *(v20 + 48);
    v22 = *(v20 + 52);
    swift_allocObject();
    sub_262462408();
    v23 = sub_2623F47D4(v19, *(&v19 + 1));
    v25 = v24;
    sub_2623F4CF4();
    sub_2624623F8();
    if (!v3)
    {
      sub_2623F3A9C(&v49);
      sub_2623F4694(v23, v25);

      v9 = *(&v40 + 1);
      v8 = v40;
      LOBYTE(v10) = v41;
      goto LABEL_27;
    }

    MEMORY[0x266728D50](v3);
    sub_2623F4694(v23, v25);

    v7 = v36;
    v6 = v52;
  }

  if (v10 != 255)
  {
    sub_2623F989C(v8, v9, v10);
    sub_2623F3A9C(&v49);
    goto LABEL_27;
  }

  *&v40 = &type metadata for Decision;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0CC98, &qword_2624669E0);
  v26 = sub_262462728();
  v27 = v6;
  v29 = v28;
  sub_2623F1BBC();
  swift_allocError();
  *v30 = v27;
  *(v30 + 8) = v7;
  *(v30 + 16) = v26;
  *(v30 + 24) = v29;
  v31 = v41;
  *(v30 + 32) = v40;
  *(v30 + 48) = v31;
  *(v30 + 64) = 7;
  swift_willThrow();
  sub_2623F3A9C(&v49);
  return a2;
}

uint64_t sub_2624106B4(uint64_t a1)
{
  v2 = sub_26241996C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2624106F0(uint64_t a1)
{
  v2 = sub_26241996C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26241072C(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DecisionRule();
  sub_2623F3CA4(v2 + *(v5 + 28), v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0CFC8, &unk_262467E60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0CFD0, &qword_26246E160);
  if (swift_dynamicCast())
  {
    sub_2623EB668(&v7, v9);
    a2 = sub_26240B6F8(a1, a2, *v2, *(v2 + 8), *(v2 + 16), *(v2 + 24), *(v2 + 32), v2 + *(v5 + 24), v9);
    __swift_destroy_boxed_opaque_existential_1(v9);
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = -1;
  }

  return a2;
}

uint64_t sub_262410868(uint64_t a1)
{
  v2 = sub_26241D1D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2624108A4(uint64_t a1)
{
  v2 = sub_26241D1D4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2624108E0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v4 = sub_262462A88();
  v16 = *(v4 - 8);
  v5 = *(v16 + 64);
  MEMORY[0x28223BE20](v4);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0CEF0, &qword_262467DE0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v15 - v9;
  v22[0] = 0xD000000000000016;
  v22[1] = 0x8000000262466A60;
  v11 = a1[3];
  v12 = a1[4];
  v18 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v11);
  sub_26241D1D4();
  sub_262462D88();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v18);
  }

  v13 = v17;
  v23[87] = 0;
  sub_262462B58();
  type metadata accessor for DecisionExpressionDecoder();
  sub_26240E4F4(v19, &v20);
  __swift_destroy_boxed_opaque_existential_1(v19);
  v15[3] = v23;
  sub_2623EB668(&v20, v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0CCB0, &qword_2624669F0);
  LOBYTE(v19[0]) = 1;
  sub_26241E720(&qword_2813BD438, &qword_27FF0CCB0, &qword_2624669F0);
  sub_262462BB8();
  (*(v7 + 8))(v10, v6);
  *&v23[40] = v20;
  v23[56] = v21;
  sub_26241D228(v22, v13);
  __swift_destroy_boxed_opaque_existential_1(v18);
  return sub_26241D260(v22);
}

uint64_t sub_262410DA0(uint64_t a1, uint64_t a2)
{
  sub_2623F3CA4(v2 + 16, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0CFC8, &unk_262467E60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0CFD0, &qword_26246E160);
  if (swift_dynamicCast())
  {
    sub_2623EB668(&v6, v8);
    a2 = sub_26240CDEC(a1, a2, v8, *(v2 + 56), *(v2 + 64), *(v2 + 72));
    __swift_destroy_boxed_opaque_existential_1(v8);
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = -1;
  }

  return a2;
}

uint64_t sub_262410EB4(uint64_t a1)
{
  v2 = sub_26241D118();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_262410EF0(uint64_t a1)
{
  v2 = sub_26241D118();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_262410F2C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C5C0, &qword_262467DD0);
  v50 = *(v4 - 8);
  v5 = *(v50 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v41 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0CEE0, &qword_262467DD8);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v41 - v11;
  v57[0] = 0xD000000000000011;
  v57[1] = 0x8000000262466A40;
  v14 = a1[3];
  v13 = a1[4];
  v60 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_26241D118();
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
  sub_2623EB668(v56, v58);
  LOBYTE(v51) = 2;
  sub_262462B58();
  type metadata accessor for DecisionExpressionDecoder();
  sub_26240E4F4(v55, v56);
  __swift_destroy_boxed_opaque_existential_1(v55);
  sub_2623EB668(v56, v59);
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
    v58[5] = v19;
    sub_26241D16C(v57, v49);
    __swift_destroy_boxed_opaque_existential_1(v60);
    return sub_26241D1A4(v57);
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

    sub_26240E4F4(v55, v56);
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
        sub_262461910();
        if (v33)
        {
          goto LABEL_5;
        }
      }
    }

    else
    {
      sub_262460274(v32, isUniquelyReferenced_nonNull_native);
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

uint64_t sub_262411674(uint64_t a1, uint64_t a2)
{
  v6 = sub_26240D530(v2[7]);
  if (!v6)
  {
    goto LABEL_6;
  }

  v7 = v6;
  sub_2623F3CA4((v2 + 8), &v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0CFC8, &unk_262467E60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0CFD0, &qword_26246E160);
  if ((swift_dynamicCast() & 1) == 0)
  {

LABEL_6:
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = -1;

    return a2;
  }

  sub_2623EB668(v22, v27);
  v8 = v2[5];
  v9 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v8);
  v10 = (*(*(v9 + 8) + 24))(&v23, a2, v8);
  if (v3)
  {
  }

  else
  {
    v11 = v10;
    v12 = v24;
    if (v24 && *(v7 + 16) && (v13 = v23, , v14 = sub_2624414FC(v13, v12), v16 = v15, , (v16 & 1) != 0))
    {
      sub_2623F3CA4(*(v7 + 56) + 40 * v14, v22);
      sub_2623EB668(v22, &v23);
      v17 = v25;
      v18 = v26;
      __swift_project_boxed_opaque_existential_1(&v23, v25);
      a2 = (*(v18 + 24))(a1, v11, v17, v18);

      __swift_destroy_boxed_opaque_existential_1(&v23);
    }

    else
    {
      v19 = v28;
      v20 = v29;
      __swift_project_boxed_opaque_existential_1(v27, v28);
      a2 = (*(v20 + 24))(a1, v11, v19, v20);
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v27);
  return a2;
}

uint64_t sub_262411914()
{
  if (*v0)
  {
    return 0x7475706E69;
  }

  else
  {
    return 0x6C6562616CLL;
  }
}

uint64_t sub_262411940@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6C6562616CLL && a2 == 0xE500000000000000;
  if (v6 || (sub_262462C58() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7475706E69 && a2 == 0xE500000000000000)
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

uint64_t sub_262411A14(uint64_t a1)
{
  v2 = sub_26241D05C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_262411A50(uint64_t a1)
{
  v2 = sub_26241D05C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_262411A8C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v14 = a2;
  v4 = sub_262462A88();
  v15 = *(v4 - 8);
  v5 = *(v15 + 64);
  MEMORY[0x28223BE20](v4);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0CED0, &unk_262467DC0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v14 - v9;
  v20[0] = 0x6E6F697369636544;
  v20[1] = 0xEF6E61656C6F6F42;
  v12 = a1[3];
  v11 = a1[4];
  v16 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_26241D05C();
  sub_262462D88();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v16);
  }

  LOBYTE(v17[0]) = 0;
  sub_2623F4CF4();
  sub_262462BB8();
  v21 = v18;
  v22 = v19;
  v23[63] = 1;
  sub_262462B58();
  type metadata accessor for BooleanExpressionDecoder();
  sub_262441880(v17, &v18);
  __swift_destroy_boxed_opaque_existential_1(v17);
  (*(v7 + 8))(v10, v6);
  sub_2623EB668(&v18, v23);
  sub_26241D0B0(v20, v14);
  __swift_destroy_boxed_opaque_existential_1(v16);
  return sub_26241D0E8(v20);
}

uint64_t sub_262411ED8(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v7 = *(v4 + 64);
  v8 = *(v4 + 72);
  __swift_project_boxed_opaque_existential_1((v4 + 40), v7);
  result = (*(*(v8 + 8) + 24))(&v14, a2, v7);
  if (!v3)
  {
    if (v14 == 2 || (v14 & 1) == 0)
    {
      v10 = 0;
      v11 = 0;
      v12 = -1;
    }

    else
    {
      v10 = *(v4 + 16);
      v11 = *(v4 + 24);
      v12 = *(v4 + 32);
      v13 = result;
      sub_2623F989C(v10, v11, v12);
      result = v13;
    }

    *a1 = v10;
    *(a1 + 8) = v11;
    *(a1 + 16) = v12;
  }

  return result;
}

uint64_t sub_262411FC8(uint64_t a1)
{
  v2 = sub_26241CFA0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_262412004(uint64_t a1)
{
  v2 = sub_26241CFA0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_262412040@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v14 = a2;
  v4 = sub_262462A88();
  v15 = *(v4 - 8);
  v5 = *(v15 + 64);
  MEMORY[0x28223BE20](v4);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0CEB8, &qword_262467DA8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v14 - v9;
  strcpy(v19, "DecisionString");
  v19[15] = -18;
  v12 = a1[3];
  v11 = a1[4];
  v16 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_26241CFA0();
  sub_262462D88();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v16);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0CE88, &qword_262467D80);
  LOBYTE(v17[0]) = 0;
  sub_26241CE90();
  sub_262462BB8();
  v20 = *&v18[0];
  v21[63] = 1;
  sub_262462B58();
  type metadata accessor for StringExpressionDecoder();
  sub_2623FB53C(v17, v18);
  __swift_destroy_boxed_opaque_existential_1(v17);
  (*(v7 + 8))(v10, v6);
  sub_2623EB668(v18, v21);
  sub_26241CFF4(v19, v14);
  __swift_destroy_boxed_opaque_existential_1(v16);
  return sub_26241D02C(v19);
}

uint64_t sub_262412470(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v7 = v4[6];
  v8 = v4[7];
  __swift_project_boxed_opaque_existential_1(v4 + 3, v7);
  result = (*(*(v8 + 8) + 24))(&v14, a2, v7);
  if (!v3)
  {
    v10 = v15;
    if (v15)
    {
      v11 = v14;
      v12 = v4[2];
      v13 = result;

      sub_26240E100(v11, v10, v12, a1);
      swift_bridgeObjectRelease_n();
      return v13;
    }

    else
    {
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = -1;
    }
  }

  return result;
}

uint64_t sub_262412568(uint64_t a1)
{
  v2 = sub_26241CE3C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2624125A4(uint64_t a1)
{
  v2 = sub_26241CE3C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2624125E0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v4 = sub_262462A88();
  v23 = *(v4 - 8);
  v5 = *(v23 + 64);
  MEMORY[0x28223BE20](v4);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0CE78, &qword_262467D78);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  strcpy(v27, "DecisionNumber");
  v27[15] = -18;
  v10 = a1[3];
  v9 = a1[4];
  v24 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_26241CE3C();
  sub_262462D88();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v24);
  }

  v11 = v7;
  v29[63] = 1;
  sub_262462B58();
  type metadata accessor for NumberExpressionDecoder();
  sub_262427F88(v25, v26);
  __swift_destroy_boxed_opaque_existential_1(v25);
  sub_2623EB668(v26, v29);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0CE88, &qword_262467D80);
  LOBYTE(v25[0]) = 0;
  sub_26241CE90();
  v13 = sub_262462BB8();
  v14 = *&v26[0];
  MEMORY[0x28223BE20](v13);
  v21 = v15;
  *(&v20 - 2) = v15;
  v16 = sub_26241C3DC(v14, sub_26241CF1C);

  if (*(v16 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0CEA8, &qword_262467D98);
    v17 = sub_262462B08();
    v18 = v16;
  }

  else
  {
    v18 = v16;
    v17 = MEMORY[0x277D84F98];
  }

  v19 = v22;
  *&v26[0] = v17;
  sub_262419064(v18, 1, v26);
  v28 = *&v26[0];
  (*(v11 + 8))(v21, v6);
  sub_26241CF38(v27, v19);
  __swift_destroy_boxed_opaque_existential_1(v24);
  return sub_26241CF70(v27);
}

double sub_262412B48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *a4;
  v7 = *(a4 + 8);
  v8 = *(a4 + 16);
  if (sub_2623F95B0(a2, a3))
  {
    v4 = 0.0;
    *a1 = v6;
    *(a1 + 8) = v7;
    *(a1 + 16) = v8;
    sub_2623F989C(v6, v7, v8);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0CE78, &qword_262467D78);
    v9 = sub_262462B48();
    v10 = sub_262427A60(v9);
    v12 = v11;

    *&v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0CE98, &qword_262467D88);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0CEA0, &qword_262467D90);
    v13 = sub_262462728();
    v15 = v14;
    sub_2623F1BBC();
    swift_allocError();
    *v16 = v10;
    *(v16 + 8) = v12;
    *(v16 + 16) = 0x736C6562616CLL;
    *(v16 + 24) = 0xE600000000000000;
    *(v16 + 32) = v13;
    *(v16 + 40) = v15;
    *(v16 + 48) = v18;
    *(v16 + 64) = 4;
    swift_willThrow();
  }

  return v4;
}

uint64_t sub_262412CA0(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v7 = v4[6];
  v8 = v4[7];
  __swift_project_boxed_opaque_existential_1(v4 + 3, v7);
  result = (*(*(v8 + 8) + 24))(&v12, a2, v7);
  if (!v3)
  {
    if (v13)
    {
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = -1;
    }

    else
    {
      v10 = a1;
      v11 = result;
      sub_26240E178(v4[2], v10, v12);
      return v11;
    }
  }

  return result;
}

void *sub_262412D7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(void *))
{
  if (!a2)
  {
    *&v66 = a4;
    *(&v66 + 1) = a5;
    *&v67 = a6;

    v35 = sub_262462748();
    v37 = v36;
    sub_2623F1BBC();
    swift_allocError();
    *v38 = v35;
    *(v38 + 8) = v37;
    v40 = v67;
    v39 = v68;
    *(v38 + 16) = v66;
    *(v38 + 32) = v40;
    *(v38 + 48) = v39;
    *(v38 + 64) = 14;
    swift_willThrow();
    return v9;
  }

  v10 = v8;
  v9 = a3;
  v11 = *(a2 + 16);
  if (!v11)
  {

    v75 = MEMORY[0x277D84F90];
LABEL_15:
    a8(v75);

    return v9;
  }

  v12 = a2 + 32;

  v75 = MEMORY[0x277D84F90];
  while (1)
  {
    sub_2623F3CA4(v12, v72);
    v13 = v73;
    v14 = v74;
    __swift_project_boxed_opaque_existential_1(v72, v73);
    v15 = (*(*(v14 + 8) + 24))(&v66, v9, v13);
    if (!v10)
    {
      break;
    }

    v71 = v10;
    v16 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C638, &qword_26246BDD0);
    if ((swift_dynamicCast() & 1) == 0)
    {

      MEMORY[0x266728D50](v71);
      __swift_destroy_boxed_opaque_existential_1(v72);
      return v9;
    }

    MEMORY[0x266728D50](v10);
    v56 = v68;
    v57 = v69;
    v58 = v70;
    v54 = v66;
    v55 = v67;
    v63 = v68;
    v64 = v69;
    v65 = v70;
    v61 = v66;
    v62 = v67;
    v17 = sub_262427BA0(v9, &v61);

    v18 = v73;
    v19 = v74;
    __swift_project_boxed_opaque_existential_1(v72, v73);
    v20 = (*(v19 + 16))(v18, v19);
    v22 = v21;
    v51 = v56;
    v52 = v57;
    v53 = v58;
    v49 = v54;
    v50 = v55;
    sub_2623F1BBC();
    v23 = sub_262462C88();
    v25 = v24;
    sub_2623F3C50(&v54);
    *&v44 = v20;
    *(&v44 + 1) = v22;
    *&v45 = v23;
    *(&v45 + 1) = v25;
    v46 = v59;
    v47 = v60;
    v48 = 15;
    v9 = sub_262427BA0(v17, &v44);

    v63 = v46;
    v64 = v47;
    v65 = v48;
    v61 = v44;
    v62 = v45;
    sub_2623F3C50(&v61);
    MEMORY[0x266728D50](v71);
    v10 = 0;
LABEL_4:
    __swift_destroy_boxed_opaque_existential_1(v72);
    v12 += 40;
    if (!--v11)
    {
      goto LABEL_15;
    }
  }

  v43 = v15;

  v27 = *(&v66 + 1);
  v26 = v66;
  v28 = v67;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0CFB8, &unk_262467E50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_262463D10;
  sub_262419944(v26, v27, v28);
  v42 = v26;
  *(inited + 32) = __PAIR128__(v27, v26);
  *(inited + 48) = v28;
  v30 = v75;
  v31 = v75[2];
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || (v33 = v30[3] >> 1, v33 <= v31))
  {
    result = sub_26243C690(result, v31 + 1, 1, v30);
    v30 = result;
    v33 = result[3] >> 1;
  }

  if (v33 > v30[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0CCB0, &qword_2624669F0);
    swift_arrayInitWithCopy();

    v34 = v30[2] + 1;
    v75 = v30;
    v30[2] = v34;
    sub_262419958(v42, v27, v28);
    v9 = v43;
    goto LABEL_4;
  }

  __break(1u);
  return result;
}

void *sub_2624131BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (!a2)
  {
    *&v65 = a4;
    *(&v65 + 1) = a5;
    *&v66 = a6;
    *(&v66 + 1) = a7;

    v33 = sub_262462748();
    v35 = v34;
    sub_2623F1BBC();
    swift_allocError();
    *v36 = v33;
    *(v36 + 8) = v35;
    v38 = v66;
    v37 = v67;
    *(v36 + 16) = v65;
    *(v36 + 32) = v38;
    *(v36 + 48) = v37;
    *(v36 + 64) = 14;
    swift_willThrow();
    return v8;
  }

  v9 = v7;
  v8 = a3;
  v10 = *(a2 + 16);
  if (!v10)
  {

    v74 = MEMORY[0x277D84F90];
LABEL_15:
    sub_262418C94(v74, a6, a1);

    return v8;
  }

  v11 = a2 + 32;

  v74 = MEMORY[0x277D84F90];
  while (1)
  {
    sub_2623F3CA4(v11, v71);
    v12 = v72;
    v13 = v73;
    __swift_project_boxed_opaque_existential_1(v71, v72);
    v14 = (*(*(v13 + 8) + 24))(&v65, v8, v12);
    if (!v9)
    {
      break;
    }

    v70 = v9;
    v15 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C638, &qword_26246BDD0);
    if ((swift_dynamicCast() & 1) == 0)
    {

      MEMORY[0x266728D50](v70);
      __swift_destroy_boxed_opaque_existential_1(v71);
      return v8;
    }

    MEMORY[0x266728D50](v9);
    v55 = v67;
    v56 = v68;
    v57 = v69;
    v53 = v65;
    v54 = v66;
    v62 = v67;
    v63 = v68;
    v64 = v69;
    v60 = v65;
    v61 = v66;
    v16 = sub_262427BA0(v8, &v60);

    v17 = v72;
    v18 = v73;
    __swift_project_boxed_opaque_existential_1(v71, v72);
    v19 = (*(v18 + 16))(v17, v18);
    v21 = v20;
    v50 = v55;
    v51 = v56;
    v52 = v57;
    v48 = v53;
    v49 = v54;
    sub_2623F1BBC();
    v22 = sub_262462C88();
    v24 = v23;
    sub_2623F3C50(&v53);
    *&v43 = v19;
    *(&v43 + 1) = v21;
    *&v44 = v22;
    *(&v44 + 1) = v24;
    v45 = v58;
    v46 = v59;
    v47 = 15;
    v8 = sub_262427BA0(v16, &v43);

    v62 = v45;
    v63 = v46;
    v64 = v47;
    v60 = v43;
    v61 = v44;
    sub_2623F3C50(&v60);
    MEMORY[0x266728D50](v70);
    v9 = 0;
LABEL_4:
    __swift_destroy_boxed_opaque_existential_1(v71);
    v11 += 40;
    if (!--v10)
    {
      goto LABEL_15;
    }
  }

  v42 = v14;

  v25 = v65;
  v26 = v66;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0CFB8, &unk_262467E50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_262463D10;
  sub_262419944(v25, *(&v25 + 1), v26);
  *(inited + 32) = v25;
  v41 = v26;
  *(inited + 48) = v26;
  v28 = v74;
  v29 = v74[2];
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || (v31 = v28[3] >> 1, v31 <= v29))
  {
    result = sub_26243C690(result, v29 + 1, 1, v28);
    v28 = result;
    v31 = result[3] >> 1;
  }

  if (v31 > v28[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0CCB0, &qword_2624669F0);
    swift_arrayInitWithCopy();

    v32 = v28[2] + 1;
    v74 = v28;
    v28[2] = v32;
    sub_262419958(v25, *(&v25 + 1), v41);
    v8 = v42;
    goto LABEL_4;
  }

  __break(1u);
  return result;
}

void *sub_262413608(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *))
{
  v8 = v5[1];
  v74 = *v5;
  v75 = v8;
  v76 = v5[2];
  if (!a2)
  {
    v65 = v74;
    v66 = v75;
    LOBYTE(v67) = v76;
    *(&v67 + 1) = *(&v76 + 1);

    sub_2623F989C(v75, *(&v75 + 1), v76);

    v34 = sub_262462748();
    v36 = v35;
    sub_2623F1BBC();
    swift_allocError();
    *v37 = v34;
    *(v37 + 8) = v36;
    v39 = v66;
    v38 = v67;
    *(v37 + 16) = v65;
    *(v37 + 32) = v39;
    *(v37 + 48) = v38;
    *(v37 + 64) = 14;
    swift_willThrow();
    return v7;
  }

  v9 = v6;
  v7 = a3;
  v10 = *(a2 + 16);
  if (!v10)
  {

    v77 = MEMORY[0x277D84F90];
LABEL_15:
    a5(v77);

    return v7;
  }

  v11 = a2 + 32;

  v77 = MEMORY[0x277D84F90];
  while (1)
  {
    sub_2623F3CA4(v11, v71);
    v12 = v72;
    v13 = v73;
    __swift_project_boxed_opaque_existential_1(v71, v72);
    v14 = (*(*(v13 + 8) + 24))(&v65, v7, v12);
    if (!v9)
    {
      break;
    }

    v70 = v9;
    v15 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C638, &qword_26246BDD0);
    if ((swift_dynamicCast() & 1) == 0)
    {

      MEMORY[0x266728D50](v70);
      __swift_destroy_boxed_opaque_existential_1(v71);
      return v7;
    }

    MEMORY[0x266728D50](v9);
    v55 = v67;
    v56 = v68;
    v57 = v69;
    v53 = v65;
    v54 = v66;
    v62 = v67;
    v63 = v68;
    v64 = v69;
    v60 = v65;
    v61 = v66;
    v16 = sub_262427BA0(v7, &v60);

    v17 = v72;
    v18 = v73;
    __swift_project_boxed_opaque_existential_1(v71, v72);
    v19 = (*(v18 + 16))(v17, v18);
    v21 = v20;
    v50 = v55;
    v51 = v56;
    v52 = v57;
    v48 = v53;
    v49 = v54;
    sub_2623F1BBC();
    v22 = sub_262462C88();
    v24 = v23;
    sub_2623F3C50(&v53);
    *&v43 = v19;
    *(&v43 + 1) = v21;
    *&v44 = v22;
    *(&v44 + 1) = v24;
    v45 = v58;
    v46 = v59;
    v47 = 15;
    v7 = sub_262427BA0(v16, &v43);

    v62 = v45;
    v63 = v46;
    v64 = v47;
    v60 = v43;
    v61 = v44;
    sub_2623F3C50(&v60);
    MEMORY[0x266728D50](v70);
    v9 = 0;
LABEL_4:
    __swift_destroy_boxed_opaque_existential_1(v71);
    v11 += 40;
    if (!--v10)
    {
      goto LABEL_15;
    }
  }

  v42 = v14;

  v26 = *(&v65 + 1);
  v25 = v65;
  v27 = v66;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0CFB8, &unk_262467E50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_262463D10;
  sub_262419944(v25, v26, v27);
  v41 = v25;
  *(inited + 32) = __PAIR128__(v26, v25);
  *(inited + 48) = v27;
  v29 = v77;
  v30 = v77[2];
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || (v32 = v29[3] >> 1, v32 <= v30))
  {
    result = sub_26243C690(result, v30 + 1, 1, v29);
    v29 = result;
    v32 = result[3] >> 1;
  }

  if (v32 > v29[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0CCB0, &qword_2624669F0);
    swift_arrayInitWithCopy();

    v33 = v29[2] + 1;
    v77 = v29;
    v29[2] = v33;
    sub_262419958(v41, v26, v27);
    v7 = v42;
    goto LABEL_4;
  }

  __break(1u);
  return result;
}

void *sub_262413A7C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (!a2)
  {
    *&v65 = a4;
    *(&v65 + 1) = a5;
    *&v66 = a6;
    *(&v66 + 1) = a7;

    v33 = sub_262462748();
    v35 = v34;
    sub_2623F1BBC();
    swift_allocError();
    *v36 = v33;
    *(v36 + 8) = v35;
    v38 = v66;
    v37 = v67;
    *(v36 + 16) = v65;
    *(v36 + 32) = v38;
    *(v36 + 48) = v37;
    *(v36 + 64) = 14;
    swift_willThrow();
    return v8;
  }

  v9 = v7;
  v8 = a3;
  v10 = *(a2 + 16);
  if (!v10)
  {

    v74 = MEMORY[0x277D84F90];
LABEL_15:
    sub_262416EAC(v74, a6, sub_26241FE58, a1);

    return v8;
  }

  v11 = a2 + 32;

  v74 = MEMORY[0x277D84F90];
  while (1)
  {
    sub_2623F3CA4(v11, v71);
    v12 = v72;
    v13 = v73;
    __swift_project_boxed_opaque_existential_1(v71, v72);
    v14 = (*(*(v13 + 8) + 24))(&v65, v8, v12);
    if (!v9)
    {
      break;
    }

    v70 = v9;
    v15 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C638, &qword_26246BDD0);
    if ((swift_dynamicCast() & 1) == 0)
    {

      MEMORY[0x266728D50](v70);
      __swift_destroy_boxed_opaque_existential_1(v71);
      return v8;
    }

    MEMORY[0x266728D50](v9);
    v55 = v67;
    v56 = v68;
    v57 = v69;
    v53 = v65;
    v54 = v66;
    v62 = v67;
    v63 = v68;
    v64 = v69;
    v60 = v65;
    v61 = v66;
    v16 = sub_262427BA0(v8, &v60);

    v17 = v72;
    v18 = v73;
    __swift_project_boxed_opaque_existential_1(v71, v72);
    v19 = (*(v18 + 16))(v17, v18);
    v21 = v20;
    v50 = v55;
    v51 = v56;
    v52 = v57;
    v48 = v53;
    v49 = v54;
    sub_2623F1BBC();
    v22 = sub_262462C88();
    v24 = v23;
    sub_2623F3C50(&v53);
    *&v43 = v19;
    *(&v43 + 1) = v21;
    *&v44 = v22;
    *(&v44 + 1) = v24;
    v45 = v58;
    v46 = v59;
    v47 = 15;
    v8 = sub_262427BA0(v16, &v43);

    v62 = v45;
    v63 = v46;
    v64 = v47;
    v60 = v43;
    v61 = v44;
    sub_2623F3C50(&v60);
    MEMORY[0x266728D50](v70);
    v9 = 0;
LABEL_4:
    __swift_destroy_boxed_opaque_existential_1(v71);
    v11 += 40;
    if (!--v10)
    {
      goto LABEL_15;
    }
  }

  v42 = v14;

  v25 = v65;
  v26 = v66;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0CFB8, &unk_262467E50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_262463D10;
  sub_262419944(v25, *(&v25 + 1), v26);
  *(inited + 32) = v25;
  v41 = v26;
  *(inited + 48) = v26;
  v28 = v74;
  v29 = v74[2];
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || (v31 = v28[3] >> 1, v31 <= v29))
  {
    result = sub_26243C690(result, v29 + 1, 1, v28);
    v28 = result;
    v31 = result[3] >> 1;
  }

  if (v31 > v28[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0CCB0, &qword_2624669F0);
    swift_arrayInitWithCopy();

    v32 = v28[2] + 1;
    v74 = v28;
    v28[2] = v32;
    sub_262419958(v25, *(&v25 + 1), v41);
    v8 = v42;
    goto LABEL_4;
  }

  __break(1u);
  return result;
}

void *sub_262413EE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    v31 = v3[1];
    v72 = *v3;
    v73 = v31;
    v74 = v3[2];
    sub_26241E9B8(v3, &v67);
    v32 = sub_262462748();
    v34 = v33;
    sub_2623F1BBC();
    swift_allocError();
    *v35 = v32;
    *(v35 + 8) = v34;
    v37 = v73;
    v36 = v74;
    *(v35 + 16) = v72;
    *(v35 + 32) = v37;
    *(v35 + 48) = v36;
    *(v35 + 64) = 14;
    swift_willThrow();
    return v5;
  }

  v6 = v4;
  v5 = a3;
  v44 = a1;
  v7 = *(a2 + 16);
  if (!v7)
  {

    v49 = MEMORY[0x277D84F90];
LABEL_15:
    v39 = *(v43 + 24);
    v40 = *(v43 + 32);
    *&v72 = *(v43 + 16);
    v38 = v72;
    *(&v72 + 1) = v39;
    LOBYTE(v73) = v40;
    MEMORY[0x28223BE20](v9);
    v42[2] = &v72;
    sub_2623F989C(v38, v39, v40);
    if ((sub_262432F18(sub_26241FE74, v42, v49) & 1) == 0)
    {
      sub_2623F98B8(v38, v39, v40);
      v38 = 0;
      v39 = 0;
      v40 = -1;
    }

    v41 = v44;

    *v41 = v38;
    *(v41 + 8) = v39;
    *(v41 + 16) = v40;
    return v5;
  }

  v8 = a2 + 32;

  v49 = MEMORY[0x277D84F90];
  v45 = xmmword_262463D10;
  while (1)
  {
    sub_2623F3CA4(v8, v77);
    v10 = v78;
    v11 = v79;
    __swift_project_boxed_opaque_existential_1(v77, v78);
    v12 = (*(*(v11 + 8) + 24))(&v72, v5, v10);
    if (!v6)
    {
      break;
    }

    v80 = v6;
    v13 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C638, &qword_26246BDD0);
    if ((swift_dynamicCast() & 1) == 0)
    {

      MEMORY[0x266728D50](v80);
      __swift_destroy_boxed_opaque_existential_1(v77);
      return v5;
    }

    MEMORY[0x266728D50](v6);
    v62 = v74;
    v63 = v75;
    v64 = v76;
    v60 = v72;
    v61 = v73;
    v69 = v74;
    v70 = v75;
    v71 = v76;
    v67 = v72;
    v68 = v73;
    v14 = sub_262427BA0(v5, &v67);

    v15 = v78;
    v16 = v79;
    __swift_project_boxed_opaque_existential_1(v77, v78);
    v17 = (*(v16 + 16))(v15, v16);
    v19 = v18;
    v57 = v62;
    v58 = v63;
    v59 = v64;
    v55 = v60;
    v56 = v61;
    sub_2623F1BBC();
    v20 = sub_262462C88();
    v22 = v21;
    sub_2623F3C50(&v60);
    *&v50 = v17;
    *(&v50 + 1) = v19;
    *&v51 = v20;
    *(&v51 + 1) = v22;
    v52 = v65;
    v53 = v66;
    v54 = 15;
    v5 = sub_262427BA0(v14, &v50);

    v69 = v52;
    v70 = v53;
    v71 = v54;
    v67 = v50;
    v68 = v51;
    sub_2623F3C50(&v67);
    MEMORY[0x266728D50](v80);
    v6 = 0;
LABEL_4:
    v9 = __swift_destroy_boxed_opaque_existential_1(v77);
    v8 += 40;
    if (!--v7)
    {
      goto LABEL_15;
    }
  }

  v48 = v12;

  v23 = v72;
  v24 = v73;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0CFB8, &unk_262467E50);
  inited = swift_initStackObject();
  *(inited + 16) = v45;
  sub_262419944(v23, *(&v23 + 1), v24);
  v47 = v23;
  *(inited + 32) = v23;
  v46 = v24;
  *(inited + 48) = v24;
  v26 = v49;
  v27 = v49[2];
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || (v29 = v49[3] >> 1, v29 <= v27))
  {
    result = sub_26243C690(result, v27 + 1, 1, v49);
    v26 = result;
    v29 = result[3] >> 1;
  }

  if (v29 > v26[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0CCB0, &qword_2624669F0);
    swift_arrayInitWithCopy();

    v30 = v26[2] + 1;
    v49 = v26;
    v26[2] = v30;
    sub_262419958(v47, *(&v23 + 1), v46);
    v5 = v48;
    goto LABEL_4;
  }

  __break(1u);
  return result;
}

uint64_t sub_2624143BC(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 7105601;
    v7 = 0x657079546C6C41;
    if (a1 != 3)
    {
      v7 = 0x7473726946;
    }

    if (a1 != 2)
    {
      v6 = v7;
    }

    if (a1 <= 1u)
    {
      return 0x736E6961746E6F43;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x7261626D4578614DLL;
    v2 = 0x7261626D456E694DLL;
    if (a1 != 9)
    {
      v2 = 0x697469726F697250;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000011;
    v4 = 0xD000000000000015;
    if (a1 != 6)
    {
      v4 = 0x6F6B63614278614DLL;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_26241451C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26241D290(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_262414550(uint64_t a1)
{
  v2 = sub_262419A84();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26241458C(uint64_t a1)
{
  v2 = sub_262419A84();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_2624145C8(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v14 = a2 & 1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  if ((sub_262462BD8() & 1) == 0)
  {
    return 0;
  }

  sub_262462B28();
  if (!v4)
  {
    __swift_project_boxed_opaque_existential_1(v12, v13);
    v7 = sub_262462C48();
    v5 = MEMORY[0x277D84F90];
    if ((v7 & 1) == 0)
    {
      do
      {
        __swift_mutable_project_boxed_opaque_existential_1(v12, v13);
        sub_262462C38();
        type metadata accessor for DecisionExpressionDecoder();
        sub_26240E4F4(v10, v11);
        __swift_destroy_boxed_opaque_existential_1(v10);
        sub_2623F3CA4(v11, v10);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = sub_26243C7D4(0, v5[2] + 1, 1, v5);
        }

        v9 = v5[2];
        v8 = v5[3];
        if (v9 >= v8 >> 1)
        {
          v5 = sub_26243C7D4((v8 > 1), v9 + 1, 1, v5);
        }

        __swift_destroy_boxed_opaque_existential_1(v11);
        v5[2] = v9 + 1;
        sub_2623EB668(v10, &v5[5 * v9 + 4]);
        __swift_project_boxed_opaque_existential_1(v12, v13);
      }

      while ((sub_262462C48() & 1) == 0);
    }

    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  return v5;
}

void *sub_2624147AC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  if ((sub_262462BD8() & 1) == 0)
  {
    return 0;
  }

  sub_262462B28();
  if (!v3)
  {
    __swift_project_boxed_opaque_existential_1(v11, v12);
    v6 = sub_262462C48();
    v4 = MEMORY[0x277D84F90];
    if ((v6 & 1) == 0)
    {
      do
      {
        __swift_mutable_project_boxed_opaque_existential_1(v11, v12);
        sub_262462C38();
        type metadata accessor for DecisionExpressionDecoder();
        sub_26240E4F4(v9, v10);
        __swift_destroy_boxed_opaque_existential_1(v9);
        sub_2623F3CA4(v10, v9);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v4 = sub_26243C7D4(0, v4[2] + 1, 1, v4);
        }

        v8 = v4[2];
        v7 = v4[3];
        if (v8 >= v7 >> 1)
        {
          v4 = sub_26243C7D4((v7 > 1), v8 + 1, 1, v4);
        }

        __swift_destroy_boxed_opaque_existential_1(v10);
        v4[2] = v8 + 1;
        sub_2623EB668(v9, &v4[5 * v8 + 4]);
        __swift_project_boxed_opaque_existential_1(v11, v12);
      }

      while ((sub_262462C48() & 1) == 0);
    }

    __swift_destroy_boxed_opaque_existential_1(v11);
  }

  return v4;
}

unint64_t sub_2624149A4()
{
  result = qword_2813BD648[0];
  if (!qword_2813BD648[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2813BD648);
  }

  return result;
}

uint64_t sub_2624149F8(uint64_t a1)
{
  v2 = sub_26241E964();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_262414A34(uint64_t a1)
{
  v2 = sub_26241E964();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_262414A70@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v19 = a2;
  v4 = sub_262462A88();
  v20 = *(v4 - 8);
  v5 = *(v20 + 64);
  MEMORY[0x28223BE20](v4);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0CFB0, &qword_262467E48);
  v21 = *(v6 - 8);
  v7 = *(v21 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26241E964();
  sub_262462D88();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v18 = a1;
  v11 = v21;
  LOBYTE(v24) = 0;
  sub_2623F4CF4();
  sub_262462BB8();
  v12 = v22;
  v13 = v23;
  v14 = sub_2624145C8(v9, 1, &qword_27FF0CFB0, &qword_262467E48);
  (*(v11 + 8))(v9, v6);
  v15 = v19;
  *v19 = 0x736E6961746E6F43;
  v15[1] = 0xE800000000000000;
  *(v15 + 1) = v12;
  *(v15 + 32) = v13;
  v15[5] = v14;

  sub_2623F989C(v12, *(&v12 + 1), v13);

  __swift_destroy_boxed_opaque_existential_1(v18);

  sub_2623F98B8(v12, *(&v12 + 1), v13);
}

uint64_t sub_262414E7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *(v2 + 16);
  v5 = *(v2 + 24);
  v7 = *(v2 + 32);
  v10[0] = v6;
  v10[1] = v5;
  v11 = v7;
  v9[2] = v10;
  sub_2623F989C(v6, v5, v7);
  result = sub_262432F18(sub_26241E948, v9, a1);
  if ((result & 1) == 0)
  {
    result = sub_2623F98B8(v6, v5, v7);
    v6 = 0;
    v5 = 0;
    v7 = -1;
  }

  *a2 = v6;
  *(a2 + 8) = v5;
  *(a2 + 16) = v7;
  return result;
}

void *sub_262414F2C(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];
  v4 = *v2;
  return sub_262413EE0(a1, v2[4] >> 64, a2);
}

uint64_t sub_262414F88(uint64_t a1)
{
  v2 = sub_26241E8F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_262414FC4(uint64_t a1)
{
  v2 = sub_26241E8F4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_262415000@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v19 = a2;
  v4 = sub_262462A88();
  v20 = *(v4 - 8);
  v5 = *(v20 + 64);
  MEMORY[0x28223BE20](v4);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0CFA0, &qword_262467E40);
  v21 = *(v6 - 8);
  v7 = *(v21 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26241E8F4();
  sub_262462D88();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v18 = a1;
  v11 = v21;
  LOBYTE(v24) = 0;
  sub_2623F4CF4();
  sub_262462BB8();
  v12 = v22;
  v13 = v23;
  v14 = sub_2624145C8(v9, 1, &qword_27FF0CFA0, &qword_262467E40);
  (*(v11 + 8))(v9, v6);
  v15 = v19;
  *v19 = 0x736E6961746E6F43;
  v15[1] = 0xEC00000065707954;
  *(v15 + 1) = v12;
  *(v15 + 32) = v13;
  v15[5] = v14;

  sub_2623F989C(v12, *(&v12 + 1), v13);

  __swift_destroy_boxed_opaque_existential_1(v18);

  sub_2623F98B8(v12, *(&v12 + 1), v13);
}

uint64_t sub_262415414@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v4 = *(result + 16);
  if (!v4)
  {
LABEL_64:
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = -1;
    return result;
  }

  v6 = *(v2 + 16);
  v5 = *(v2 + 24);
  v7 = v6 != 6;
  v8 = v6 != 5;
  v9 = v6 != 4;
  v10 = *(v2 + 32);
  v11 = v6 != 3;
  v12 = v6 != 2;
  v13 = v6 != 1;
  if (v5)
  {
    v7 = 1;
    v8 = 1;
    v9 = 1;
    v11 = 1;
    v12 = 1;
    v13 = 1;
  }

  if (v10 != 5)
  {
    v7 = 1;
  }

  v33 = v7;
  v14 = v10 != 5 || v8;
  v32 = v14;
  v15 = v10 != 5 || v9;
  v16 = v10 != 5 || v11;
  v30 = v16;
  v31 = v15;
  v17 = v10 != 5 || v12;
  v18 = v10 != 5 || v13;
  v28 = v18;
  v29 = v17;
  if (v5 | v6)
  {
    v19 = 0;
  }

  else
  {
    v19 = v10 == 5;
  }

  v27 = v19;
  v20 = (result + 48);
  while (1)
  {
    v21 = *(v20 - 2);
    v22 = *(v20 - 1);
    v23 = *v20;
    if (v23 <= 2)
    {
      if (*v20)
      {
        if (v23 == 1)
        {
          if (v10 == 1)
          {
            goto LABEL_66;
          }

          sub_2623F989C(v6, v5, v10);
          sub_262419958(v21, v22, 1u);
        }

        else
        {
          if (v10 == 2)
          {
            goto LABEL_66;
          }

          sub_2623F989C(v6, v5, v10);
          sub_262419958(v21, v22, 2u);
        }

        goto LABEL_26;
      }

      if (!v10)
      {
        goto LABEL_65;
      }

      sub_2623F989C(v6, v5, v10);
      v24 = v21;
      v25 = v22;
      v26 = 0;
      goto LABEL_25;
    }

    if (*v20 <= 4u)
    {
      break;
    }

    if (v23 == 255)
    {
      goto LABEL_27;
    }

    if (v21 <= 2)
    {
      if (v21 | v22)
      {
        if (v21 ^ 1 | v22)
        {
          if ((v29 & 1) == 0)
          {
            goto LABEL_66;
          }
        }

        else if ((v28 & 1) == 0)
        {
          goto LABEL_66;
        }
      }

      else if (v27)
      {
        goto LABEL_66;
      }
    }

    else if (v21 > 4)
    {
      if (v21 ^ 5 | v22)
      {
        if (!v33)
        {
          goto LABEL_66;
        }
      }

      else if ((v32 & 1) == 0)
      {
        goto LABEL_66;
      }
    }

    else if (v21 ^ 3 | v22)
    {
      if ((v31 & 1) == 0)
      {
        goto LABEL_66;
      }
    }

    else if ((v30 & 1) == 0)
    {
      goto LABEL_66;
    }

    sub_2623F989C(v6, v5, v10);
    sub_262419958(v21, v22, 5u);
LABEL_26:
    sub_2623F98B8(v21, v22, v23);
    result = sub_2623F98B8(v6, v5, v10);
LABEL_27:
    v20 += 24;
    if (!--v4)
    {
      goto LABEL_64;
    }
  }

  if (v23 == 3)
  {
    if (v10 == 3)
    {
      goto LABEL_66;
    }

    sub_2623F989C(v6, v5, v10);
    sub_262419958(v21, v22, 3u);
    goto LABEL_26;
  }

  if (v10 != 4)
  {
    sub_2623F989C(v6, v5, v10);
    v24 = v21;
    v25 = v22;
    v26 = 4;
LABEL_25:
    sub_262419944(v24, v25, v26);
    goto LABEL_26;
  }

LABEL_65:
  sub_262419944(*(v20 - 2), *(v20 - 1), *v20);
  sub_2623F989C(v21, v22, v23);
LABEL_66:
  sub_2623F989C(v6, v5, v10);
  sub_2623F98B8(v21, v22, v23);
  result = sub_2623F98B8(v6, v5, v10);
  *a2 = v21;
  *(a2 + 8) = v22;
  *(a2 + 16) = v23;
  return result;
}

void *sub_262415764(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];
  v4 = *v2;
  return sub_262413608(a1, v2[4] >> 64, a2, &type metadata for ContainsType, sub_262415414);
}

uint64_t sub_2624157DC(uint64_t a1)
{
  v2 = sub_26241E8A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_262415818(uint64_t a1)
{
  v2 = sub_26241E8A0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_262415854@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v19 = a2;
  v4 = sub_262462A88();
  v20 = *(v4 - 8);
  v5 = *(v20 + 64);
  MEMORY[0x28223BE20](v4);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0CF90, &qword_262467E38);
  v21 = *(v6 - 8);
  v7 = *(v21 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26241E8A0();
  sub_262462D88();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v18 = a1;
  v11 = v21;
  LOBYTE(v24) = 0;
  sub_2623F4CF4();
  sub_262462BB8();
  v12 = v22;
  v13 = v23;
  v14 = sub_2624145C8(v9, 1, &qword_27FF0CF90, &qword_262467E38);
  (*(v11 + 8))(v9, v6);
  v15 = v19;
  *v19 = 7105601;
  v15[1] = 0xE300000000000000;
  *(v15 + 1) = v12;
  *(v15 + 32) = v13;
  v15[5] = v14;

  sub_2623F989C(v12, *(&v12 + 1), v13);

  __swift_destroy_boxed_opaque_existential_1(v18);

  sub_2623F98B8(v12, *(&v12 + 1), v13);
}

uint64_t sub_262415C58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v4 = *(v2 + 24);
  v6 = *(v2 + 32);
  v7 = *(a1 + 16);
  if (!v7)
  {
LABEL_10:
    result = sub_2623F989C(v5, v4, v6);
    goto LABEL_15;
  }

  v8 = (a1 + 48);
  while (1)
  {
    v10 = *(v8 - 2);
    v9 = *(v8 - 1);
    v11 = *v8;
    if (v11 == 255)
    {
      break;
    }

    v17 = *(v8 - 2);
    v18 = v9;
    v19 = v11;
    if (v6 == 255)
    {
      sub_262419944(v10, v9, v11);
      sub_2623F989C(v5, v4, 0xFFu);
      sub_262419944(v10, v9, v11);
      sub_2623F98B8(v10, v9, v11);
      goto LABEL_13;
    }

    v14 = v5;
    v15 = v4;
    v16 = v6;
    sub_262419944(v10, v9, v11);
    sub_2623F989C(v5, v4, v6);
    sub_262419944(v10, v9, v11);
    v12 = _s5Rules8DecisionO2eeoiySbAC_ACtFZ_0(&v17, &v14);
    sub_2623F98B8(v14, v15, v16);
    sub_2623F98B8(v17, v18, v19);
    result = sub_262419958(v10, v9, v11);
    if ((v12 & 1) == 0)
    {
      goto LABEL_14;
    }

LABEL_3:
    v8 += 24;
    if (!--v7)
    {
      goto LABEL_10;
    }
  }

  sub_262419944(*(v8 - 2), *(v8 - 1), 0xFFu);
  if (v6 == 255)
  {
    sub_2623F989C(v5, v4, 0xFFu);
    sub_262419958(v10, v9, 0xFFu);
    goto LABEL_3;
  }

  sub_2623F989C(v5, v4, v6);
LABEL_13:
  sub_262419958(v10, v9, v11);
  result = sub_262419958(v5, v4, v6);
LABEL_14:
  v5 = 0;
  v4 = 0;
  LOBYTE(v6) = -1;
LABEL_15:
  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = v6;
  return result;
}

void *sub_262415E30(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];
  v4 = *v2;
  return sub_262413608(a1, v2[4] >> 64, a2, &type metadata for All, sub_262415C58);
}

uint64_t sub_262415EA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E6F697369636564 && a2 == 0xE800000000000000;
  if (v6 || (sub_262462C58() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x737475706E69 && a2 == 0xE600000000000000)
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

uint64_t sub_262415F80(uint64_t a1)
{
  v2 = sub_26241E84C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_262415FBC(uint64_t a1)
{
  v2 = sub_26241E84C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_262415FF8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v19 = a2;
  v4 = sub_262462A88();
  v20 = *(v4 - 8);
  v5 = *(v20 + 64);
  MEMORY[0x28223BE20](v4);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0CF80, &qword_262467E30);
  v21 = *(v6 - 8);
  v7 = *(v21 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26241E84C();
  sub_262462D88();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v18 = a1;
  v11 = v21;
  LOBYTE(v24) = 0;
  sub_2623F4CF4();
  sub_262462BB8();
  v12 = v22;
  v13 = v23;
  v14 = sub_2624145C8(v9, 1, &qword_27FF0CF80, &qword_262467E30);
  (*(v11 + 8))(v9, v6);
  v15 = v19;
  *v19 = 0x657079546C6C41;
  v15[1] = 0xE700000000000000;
  *(v15 + 1) = v12;
  *(v15 + 32) = v13;
  v15[5] = v14;

  sub_2623F989C(v12, *(&v12 + 1), v13);

  __swift_destroy_boxed_opaque_existential_1(v18);

  sub_2623F98B8(v12, *(&v12 + 1), v13);
}

unint64_t sub_262416404@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v4 = *(v2 + 24);
  v6 = *(v2 + 32);
  v7 = *(a1 + 16);
  if (!v7)
  {
LABEL_63:
    result = sub_2623F989C(v5, v4, v6);
    goto LABEL_72;
  }

  v8 = v5 != 6;
  v9 = v5 != 5;
  v10 = v5 != 4;
  v11 = v5 != 3;
  v12 = v5 != 2;
  v13 = v5 != 1;
  if (v4)
  {
    v8 = 1;
    v9 = 1;
    v10 = 1;
    v11 = 1;
    v12 = 1;
    v13 = 1;
  }

  if (v6 != 5)
  {
    v8 = 1;
  }

  v47 = v8;
  v14 = v6 != 5 || v9;
  v46 = v14;
  v15 = v6 != 5 || v10;
  v16 = v6 != 5 || v11;
  v44 = v16;
  v45 = v15;
  v17 = v6 != 5 || v12;
  v18 = v6 != 5 || v13;
  v42 = v18;
  v43 = v17;
  if (v4 | v5)
  {
    v19 = 0;
  }

  else
  {
    v19 = v6 == 5;
  }

  v20 = (a1 + 48);
  while (1)
  {
    result = *(v20 - 2);
    v25 = *(v20 - 1);
    v26 = *v20;
    if (v26 > 2)
    {
      if (*v20 > 4u)
      {
        if (v26 != 5)
        {
          v5 = 0;
          v4 = 0;
          LOBYTE(v6) = *v20;
          goto LABEL_72;
        }

        if (result <= 2)
        {
          if (result | v25)
          {
            if (result ^ 1 | v25)
            {
              if (v43)
              {
                goto LABEL_66;
              }

              sub_2623F98B8(result, v25, 5u);
              v21 = 2;
            }

            else
            {
              if (v42)
              {
                goto LABEL_66;
              }

              sub_2623F98B8(result, v25, 5u);
              v21 = 1;
            }
          }

          else
          {
            if (!v19)
            {
              goto LABEL_66;
            }

            sub_2623F98B8(result, v25, 5u);
            v21 = 0;
          }
        }

        else if (result > 4)
        {
          if (result ^ 5 | v25)
          {
            if (v47)
            {
LABEL_66:
              v36 = *(v20 - 2);
              v37 = *(v20 - 1);
              sub_2623F989C(v5, v4, v6);
              v33 = v36;
              v34 = v37;
              v35 = 5;
              goto LABEL_71;
            }

            sub_2623F98B8(result, v25, 5u);
            v21 = 6;
          }

          else
          {
            if (v46)
            {
              goto LABEL_66;
            }

            sub_2623F98B8(result, v25, 5u);
            v21 = 5;
          }
        }

        else if (result ^ 3 | v25)
        {
          if (v45)
          {
            goto LABEL_66;
          }

          sub_2623F98B8(result, v25, 5u);
          v21 = 4;
        }

        else
        {
          if (v44)
          {
            goto LABEL_66;
          }

          sub_2623F98B8(result, v25, 5u);
          v21 = 3;
        }

        v22 = 0;
        v23 = 5;
      }

      else if (v26 == 3)
      {
        if (v6 != 3)
        {
          v38 = *(v20 - 2);
          v39 = *(v20 - 1);
          sub_2623F989C(v5, v4, v6);
          v33 = v38;
          v34 = v39;
          v35 = 3;
          goto LABEL_71;
        }

        sub_2623F98B8(result, v25, 3u);
        v21 = v5;
        v22 = v4;
        v23 = 3;
      }

      else
      {
        v29 = *(v20 - 2);
        v30 = *(v20 - 1);
        if (v6 != 4)
        {
          sub_2623F989C(v5, v4, v6);
          sub_262419944(v29, v30, 4u);
          v33 = v29;
          v34 = v30;
          v35 = 4;
          goto LABEL_71;
        }

        sub_2623F989C(v5, v4, 4u);
        sub_262419944(v29, v30, 4u);
        sub_2623F98B8(v29, v30, 4u);
        v21 = v5;
        v22 = v4;
        v23 = 4;
      }

      goto LABEL_28;
    }

    if (!*v20)
    {
      break;
    }

    if (v26 == 1)
    {
      if (v6 != 1)
      {
        v31 = *(v20 - 2);
        v32 = *(v20 - 1);
        sub_2623F989C(v5, v4, v6);
        v33 = v31;
        v34 = v32;
        v35 = 1;
        goto LABEL_71;
      }

      sub_2623F98B8(result, v25, 1u);
      v21 = v5;
      v22 = v4;
      v23 = 1;
    }

    else
    {
      if (v6 != 2)
      {
        v40 = *(v20 - 2);
        v41 = *(v20 - 1);
        sub_2623F989C(v5, v4, v6);
        v33 = v40;
        v34 = v41;
        v35 = 2;
        goto LABEL_71;
      }

      sub_2623F98B8(result, v25, 2u);
      v21 = v5;
      v22 = v4;
      v23 = 2;
    }

LABEL_28:
    sub_2623F98B8(v21, v22, v23);
    v20 += 24;
    if (!--v7)
    {
      goto LABEL_63;
    }
  }

  v27 = *(v20 - 2);
  v28 = *(v20 - 1);
  if (!v6)
  {
    sub_2623F989C(v5, v4, 0);
    sub_262419944(v27, v28, 0);
    sub_2623F98B8(v27, v28, 0);
    v21 = v5;
    v22 = v4;
    v23 = 0;
    goto LABEL_28;
  }

  sub_2623F989C(v5, v4, v6);
  sub_262419944(v27, v28, 0);
  v33 = v27;
  v34 = v28;
  v35 = 0;
LABEL_71:
  sub_2623F98B8(v33, v34, v35);
  result = sub_2623F98B8(v5, v4, v6);
  v5 = 0;
  v4 = 0;
  LOBYTE(v6) = -1;
LABEL_72:
  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = v6;
  return result;
}

void *sub_262416860(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];
  v4 = *v2;
  return sub_262413608(a1, v2[4] >> 64, a2, &type metadata for AllType, sub_262416404);
}

uint64_t sub_2624168D8(uint64_t a1)
{
  v2 = sub_26241E7F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_262416914(uint64_t a1)
{
  v2 = sub_26241E7F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2624169EC(uint64_t a1)
{
  v2 = sub_26241E7A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_262416A28(uint64_t a1)
{
  v2 = sub_26241E7A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_262416A64(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a6)
  {
    v7 = v6;
    v42 = a1;
    v9 = *(a6 + 16);
    if (v9)
    {
      v43 = a5;
      v10 = a6 + 32;

      v11 = a2;
      while (1)
      {
        sub_2623F3CA4(v10, v72);
        v16 = v73;
        v15 = v74;
        a2 = __swift_project_boxed_opaque_existential_1(v72, v73);
        v17 = (*(*(v15 + 8) + 24))(&v66, v11, v16);
        if (v7)
        {
          v71 = v7;
          v18 = v7;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C638, &qword_26246BDD0);
          if ((swift_dynamicCast() & 1) == 0)
          {

            MEMORY[0x266728D50](v71);
            __swift_destroy_boxed_opaque_existential_1(v72);
            return a2;
          }

          MEMORY[0x266728D50](v7);
          v56 = v68;
          v57 = v69;
          v58 = v70;
          v54 = v66;
          v55 = v67;
          v63 = v68;
          v64 = v69;
          v65 = v70;
          v61 = v66;
          v62 = v67;
          v19 = sub_262427BA0(v11, &v61);

          v20 = v73;
          v21 = v74;
          __swift_project_boxed_opaque_existential_1(v72, v73);
          v22 = (*(v21 + 16))(v20, v21);
          v24 = v23;
          v51 = v56;
          v52 = v57;
          v53 = v58;
          v49 = v54;
          v50 = v55;
          sub_2623F1BBC();
          v25 = sub_262462C88();
          v27 = v26;
          sub_2623F3C50(&v54);
          *&v44 = v22;
          *(&v44 + 1) = v24;
          *&v45 = v25;
          *(&v45 + 1) = v27;
          v46 = v59;
          v47 = v60;
          v48 = 15;
          a2 = sub_262427BA0(v19, &v44);

          v63 = v46;
          v64 = v47;
          v65 = v48;
          v61 = v44;
          v62 = v45;
          sub_2623F3C50(&v61);
          MEMORY[0x266728D50](v71);
          v7 = 0;
        }

        else
        {
          a2 = v17;

          v28 = v66;
          v29 = v67;
          sub_262419944(v66, *(&v66 + 1), v67);

          sub_262419958(v28, *(&v28 + 1), v29);
          v30 = sub_262419944(v28, *(&v28 + 1), v29);
          if (v29 == 255)
          {
            v13 = *(&v28 + 1);
            v12 = v28;
            v14 = -1;
          }

          else
          {
            v75 = &v41;
            v66 = v28;
            LOBYTE(v67) = v29;
            MEMORY[0x28223BE20](v30);
            v40[2] = &v66;
            v31 = sub_262432E60(sub_26241FE58, v40, v43);
            sub_262419958(v28, *(&v28 + 1), v29);
            if (v31)
            {

              v38 = v42;
              *v42 = v28;
              *(v38 + 16) = v29;
              __swift_destroy_boxed_opaque_existential_1(v72);
              return a2;
            }

            v13 = *(&v28 + 1);
            v12 = v28;
            v14 = v29;
          }

          sub_262419958(v12, v13, v14);
        }

        __swift_destroy_boxed_opaque_existential_1(v72);
        v10 += 40;
        v11 = a2;
        if (!--v9)
        {
          goto LABEL_15;
        }
      }
    }

LABEL_15:
    v37 = v42;
    *v42 = 0;
    *(v37 + 1) = 0;
    *(v37 + 16) = -1;
  }

  else
  {
    *&v66 = a3;
    *(&v66 + 1) = a4;
    v67 = a5;

    a2 = sub_262462748();
    v33 = v32;
    sub_2623F1BBC();
    swift_allocError();
    *v34 = a2;
    *(v34 + 8) = v33;
    v35 = v68;
    v36 = v67;
    *(v34 + 16) = v66;
    *(v34 + 32) = v36;
    *(v34 + 48) = v35;
    *(v34 + 64) = 14;
    swift_willThrow();
  }

  return a2;
}

uint64_t sub_262416EAC@<X0>(uint64_t result@<X0>, uint64_t a2@<X3>, uint64_t (*a3)(uint64_t *)@<X5>, uint64_t *a4@<X8>)
{
  v15 = a4;
  v4 = *(result + 16);
  if (!v4)
  {
LABEL_7:
    v12 = v15;
    *v15 = 0;
    v12[1] = 0;
    *(v12 + 16) = -1;
    return result;
  }

  v7 = (result + 48);
  while (1)
  {
    v8 = *v7;
    if (v8 != 255)
    {
      break;
    }

LABEL_3:
    v7 += 24;
    if (!--v4)
    {
      goto LABEL_7;
    }
  }

  v9 = *(v7 - 1);
  v16[0] = *(v7 - 2);
  v10 = v16[0];
  v16[1] = v9;
  v17 = v8;
  MEMORY[0x28223BE20](result);
  v14[2] = v16;
  sub_262419944(v10, v9, v8);
  sub_2623F989C(v10, v9, v8);
  v11 = sub_262432E60(a3, v14, a2);
  result = sub_262419958(v10, v9, v8);
  if ((v11 & 1) == 0)
  {
    result = sub_262419958(v10, v9, v8);
    goto LABEL_3;
  }

  v13 = v15;
  *v15 = v10;
  v13[1] = v9;
  *(v13 + 16) = v8;
  return result;
}

uint64_t sub_26241705C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E6F697369636564 && a2 == 0xE900000000000073;
  if (v6 || (sub_262462C58() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x737475706E69 && a2 == 0xE600000000000000)
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

uint64_t sub_26241713C(uint64_t a1)
{
  v2 = sub_26241E6CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_262417178(uint64_t a1)
{
  v2 = sub_26241E6CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2624171B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v7 = a5;
  if (!a6)
  {
    *&v96 = a3;
    *(&v96 + 1) = a4;
    v97 = a5;

    v50 = sub_262462748();
    a2 = v51;
    sub_2623F1BBC();
    swift_allocError();
    *v52 = v50;
    *(v52 + 8) = a2;
    v53 = v98;
    v54 = v97;
    *(v52 + 16) = v96;
    *(v52 + 32) = v54;
    *(v52 + 48) = v53;
    *(v52 + 64) = 14;
    swift_willThrow();
    return a2;
  }

  v8 = v6;
  v10 = *(a6 + 16);
  if (!v10)
  {

LABEL_75:
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = -1;
    return a2;
  }

  v105 = a6 + 32;

  v11 = 0;
  v69 = (v7 + 48);
  v12 = a2;
  v70 = v7;
  v72 = v10;
  while (1)
  {
    sub_2623F3CA4(v105 + 40 * v11, v102);
    v14 = v103;
    v13 = v104;
    a2 = __swift_project_boxed_opaque_existential_1(v102, v103);
    v15 = v8;
    v16 = (*(*(v13 + 8) + 24))(&v96, v12, v14);
    if (v8)
    {
      v101 = v8;
      v17 = v8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C638, &qword_26246BDD0);
      if ((swift_dynamicCast() & 1) == 0)
      {

        MEMORY[0x266728D50](v101);
        __swift_destroy_boxed_opaque_existential_1(v102);
        return a2;
      }

      MEMORY[0x266728D50](v8);
      v86 = v98;
      v87 = v99;
      v88 = v100;
      v84 = v96;
      v85 = v97;
      v93 = v98;
      v94 = v99;
      v95 = v100;
      v91 = v96;
      v92 = v97;
      v18 = sub_262427BA0(v12, &v91);

      v19 = v103;
      v20 = v104;
      __swift_project_boxed_opaque_existential_1(v102, v103);
      v21 = (*(v20 + 16))(v19, v20);
      v23 = v22;
      v81 = v86;
      v82 = v87;
      v83 = v88;
      v79 = v84;
      v80 = v85;
      sub_2623F1BBC();
      v24 = sub_262462C88();
      v26 = v25;
      sub_2623F3C50(&v84);
      *&v74 = v21;
      *(&v74 + 1) = v23;
      *&v75 = v24;
      *(&v75 + 1) = v26;
      v76 = v89;
      v77 = v90;
      v78 = 15;
      a2 = sub_262427BA0(v18, &v74);

      v93 = v76;
      v94 = v77;
      v95 = v78;
      v91 = v74;
      v92 = v75;
      sub_2623F3C50(&v91);
      MEMORY[0x266728D50](v101);
      v8 = 0;
      goto LABEL_6;
    }

    a2 = v16;

    v28 = *(&v96 + 1);
    v27 = v96;
    v29 = v97;
    sub_262419944(v96, *(&v96 + 1), v97);

    sub_262419958(v27, v28, v29);
    sub_262419944(v27, v28, v29);
    if (v29 == 255)
    {
      sub_262419958(v27, v28, 0xFFu);

      goto LABEL_5;
    }

    v73 = a2;
    v30 = *(v7 + 16);
    if (v30)
    {
      break;
    }

LABEL_4:
    sub_262419958(v27, v28, v29);
    sub_262419958(v27, v28, v29);
    a2 = v73;

    v8 = v15;
    v7 = v70;
LABEL_5:
    v10 = v72;
LABEL_6:
    ++v11;
    __swift_destroy_boxed_opaque_existential_1(v102);
    v12 = a2;
    if (v11 == v10)
    {
      goto LABEL_75;
    }
  }

  v31 = v27 != 6;
  v32 = v27 != 5;
  v33 = v27 != 4;
  v34 = v27 != 3;
  v35 = v27 != 2;
  v36 = v27 != 1;
  if (v28)
  {
    v31 = 1;
    v32 = 1;
    v33 = 1;
    v34 = 1;
    v35 = 1;
    v36 = 1;
  }

  if (v29 != 5)
  {
    v31 = 1;
  }

  v68 = v31;
  v37 = v29 != 5 || v32;
  v67 = v37;
  v38 = v29 != 5 || v33;
  v39 = v29 != 5 || v34;
  v65 = v39;
  v66 = v38;
  v40 = v29 != 5 || v35;
  v41 = v29 != 5 || v36;
  v63 = v41;
  v64 = v40;
  if (v28 | v27)
  {
    v42 = 0;
  }

  else
  {
    v42 = v29 == 5;
  }

  v62 = v42;
  v43 = v69;
  while (1)
  {
    v44 = *(v43 - 2);
    v45 = *(v43 - 1);
    v46 = *v43;
    if (v46 <= 2)
    {
      if (*v43)
      {
        if (v46 == 1)
        {
          if (v29 == 1)
          {
            sub_262419944(v27, v28, 1u);
            a2 = v73;

            sub_2623F98B8(v44, v45, 1u);
            v57 = v27;
            v58 = v28;
            v59 = 1;
LABEL_80:
            sub_2623F98B8(v57, v58, v59);
            goto LABEL_81;
          }
        }

        else if (v29 == 2)
        {
          sub_262419944(v27, v28, 2u);
          a2 = v73;

          sub_2623F98B8(v44, v45, 2u);
          v57 = v27;
          v58 = v28;
          v59 = 2;
          goto LABEL_80;
        }

        goto LABEL_36;
      }

      if (!v29)
      {
        v55 = *(v43 - 1);

        a2 = v73;

        sub_2623F98B8(v44, v45, 0);
        v57 = v27;
        v58 = v28;
        v59 = 0;
        goto LABEL_80;
      }

      sub_262419944(v27, v28, v29);
      v47 = v44;
      v48 = v45;
      v49 = 0;
LABEL_49:
      sub_2623F989C(v47, v48, v49);
      goto LABEL_37;
    }

    if (v46 == 3)
    {
      if (v29 == 3)
      {
        sub_262419944(v27, v28, 3u);
        a2 = v73;

        sub_2623F98B8(v44, v45, 3u);
        v57 = v27;
        v58 = v28;
        v59 = 3;
        goto LABEL_80;
      }

      goto LABEL_36;
    }

    if (v46 == 4)
    {
      if (v29 == 4)
      {
        v56 = *(v43 - 1);

        a2 = v73;

        sub_2623F98B8(v44, v45, 4u);
        v57 = v27;
        v58 = v28;
        v59 = 4;
        goto LABEL_80;
      }

      sub_262419944(v27, v28, v29);
      v47 = v44;
      v48 = v45;
      v49 = 4;
      goto LABEL_49;
    }

    if (v44 <= 2)
    {
      if (v44 | v45)
      {
        if (v44 ^ 1 | v45)
        {
          if ((v64 & 1) == 0)
          {
            v27 = 2;
            sub_262419944(2, 0, 5u);
            a2 = v73;

            sub_2623F98B8(v44, v45, 5u);
            v61 = 2;
            goto LABEL_83;
          }
        }

        else if ((v63 & 1) == 0)
        {
          v27 = 1;
          sub_262419944(1, 0, 5u);
          a2 = v73;

          sub_2623F98B8(v44, v45, 5u);
          v61 = 1;
          goto LABEL_83;
        }
      }

      else if (v62)
      {
        sub_262419944(0, 0, 5u);
        a2 = v73;

        sub_2623F98B8(v44, v45, 5u);
        v57 = 0;
        v58 = 0;
        v59 = 5;
        goto LABEL_80;
      }

      goto LABEL_36;
    }

    if (v44 > 4)
    {
      if (v44 ^ 5 | v45)
      {
        if (!v68)
        {
          v27 = 6;
          sub_262419944(6, 0, 5u);
          a2 = v73;

          sub_2623F98B8(v44, v45, 5u);
          v61 = 6;
          goto LABEL_83;
        }
      }

      else if ((v67 & 1) == 0)
      {
        v27 = 5;
        sub_262419944(5, 0, 5u);
        a2 = v73;

        sub_2623F98B8(v44, v45, 5u);
        v61 = 5;
        goto LABEL_83;
      }

      goto LABEL_36;
    }

    if (v44 ^ 3 | v45)
    {
      if ((v66 & 1) == 0)
      {
        v27 = 4;
        sub_262419944(4, 0, 5u);
        a2 = v73;

        sub_2623F98B8(v44, v45, 5u);
        v61 = 4;
        goto LABEL_83;
      }

      goto LABEL_36;
    }

    if ((v65 & 1) == 0)
    {
      break;
    }

LABEL_36:
    sub_262419944(v27, v28, v29);
LABEL_37:
    v43 += 24;
    sub_2623F98B8(v44, v45, v46);
    sub_2623F98B8(v27, v28, v29);
    if (!--v30)
    {
      goto LABEL_4;
    }
  }

  v27 = 3;
  sub_262419944(3, 0, 5u);
  a2 = v73;

  sub_2623F98B8(v44, v45, 5u);
  v61 = 3;
LABEL_83:
  sub_2623F98B8(v61, 0, 5u);
  v28 = 0;
LABEL_81:
  *a1 = v27;
  *(a1 + 8) = v28;
  *(a1 + 16) = v46;
  __swift_destroy_boxed_opaque_existential_1(v102);
  return a2;
}

uint64_t sub_262417A7C@<X0>(uint64_t result@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v3 = *(result + 16);
  if (!v3)
  {
LABEL_66:
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = -1;
    return result;
  }

  v4 = 0;
  v5 = result + 32;
  v38 = (a2 + 48);
  v39 = result + 32;
  v40 = a2;
  while (1)
  {
    v6 = v5 + 24 * v4;
    v7 = *(v6 + 16);
    if (v7 == 255)
    {
      goto LABEL_4;
    }

    v9 = *v6;
    v8 = *(v6 + 8);
    v10 = *(a2 + 16);
    sub_2623F989C(*v6, v8, *(v6 + 16));
    if (v10)
    {
      break;
    }

LABEL_3:
    result = sub_262419958(v9, v8, v7);
    v5 = v39;
    a2 = v40;
LABEL_4:
    if (++v4 == v3)
    {
      goto LABEL_66;
    }
  }

  v11 = v9 != 6;
  v12 = v9 != 5;
  v13 = v9 != 4;
  v14 = v9 != 3;
  v15 = v9 != 2;
  v16 = v9 != 1;
  if (v8)
  {
    v11 = 1;
    v12 = 1;
    v13 = 1;
    v14 = 1;
    v15 = 1;
    v16 = 1;
  }

  if (v7 != 5)
  {
    v11 = 1;
  }

  v37 = v11;
  v17 = v7 != 5 || v12;
  v36 = v17;
  v18 = v7 != 5 || v13;
  v19 = v7 != 5 || v14;
  v34 = v19;
  v35 = v18;
  v20 = v7 != 5 || v15;
  v21 = v7 != 5 || v16;
  v32 = v21;
  v33 = v20;
  if (v8 | v9)
  {
    v22 = 0;
  }

  else
  {
    v22 = v7 == 5;
  }

  v31 = v22;
  v23 = v38;
  while (1)
  {
    v27 = *(v23 - 2);
    v28 = *(v23 - 1);
    v29 = *v23;
    if (v29 <= 2)
    {
      break;
    }

    if (v29 == 3)
    {
      if (v7 == 3)
      {
        goto LABEL_68;
      }

LABEL_31:
      v24 = v9;
      v25 = v8;
      v26 = v7;
      goto LABEL_32;
    }

    if (v29 != 4)
    {
      if (v27 <= 2)
      {
        if (v27 | v28)
        {
          if (v27 ^ 1 | v28)
          {
            if ((v33 & 1) == 0)
            {
              v8 = 0;
              v9 = 2;
              goto LABEL_68;
            }
          }

          else if ((v32 & 1) == 0)
          {
            v8 = 0;
            v9 = 1;
            goto LABEL_68;
          }
        }

        else if (v31)
        {
          goto LABEL_68;
        }
      }

      else if (v27 > 4)
      {
        if (v27 ^ 5 | v28)
        {
          if (!v37)
          {
            v8 = 0;
            v9 = 6;
            goto LABEL_68;
          }
        }

        else if ((v36 & 1) == 0)
        {
          v8 = 0;
          v9 = 5;
          goto LABEL_68;
        }
      }

      else if (v27 ^ 3 | v28)
      {
        if ((v35 & 1) == 0)
        {
          v8 = 0;
          v9 = 4;
          goto LABEL_68;
        }
      }

      else if ((v34 & 1) == 0)
      {
        v8 = 0;
        v9 = 3;
        goto LABEL_68;
      }

      goto LABEL_31;
    }

    if (v7 == 4)
    {
      goto LABEL_67;
    }

    sub_262419944(v9, v8, v7);
    v24 = v27;
    v25 = v28;
    v26 = 4;
LABEL_32:
    sub_2623F989C(v24, v25, v26);
    v23 += 24;
    sub_2623F98B8(v27, v28, v29);
    sub_2623F98B8(v9, v8, v7);
    if (!--v10)
    {
      goto LABEL_3;
    }
  }

  if (*v23)
  {
    if (v29 == 1)
    {
      if (v7 == 1)
      {
        goto LABEL_68;
      }
    }

    else if (v7 == 2)
    {
      goto LABEL_68;
    }

    goto LABEL_31;
  }

  if (v7)
  {
    sub_262419944(v9, v8, v7);
    v24 = v27;
    v25 = v28;
    v26 = 0;
    goto LABEL_32;
  }

LABEL_67:
  v30 = *(v23 - 1);

LABEL_68:
  sub_2623F989C(v9, v8, v29);
  sub_2623F98B8(v27, v28, v29);
  result = sub_2623F98B8(v9, v8, v29);
  *a3 = v9;
  *(a3 + 8) = v8;
  *(a3 + 16) = v29;
  return result;
}

uint64_t sub_262417E48(uint64_t a1)
{
  v2 = sub_26241E678();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_262417E84(uint64_t a1)
{
  v2 = sub_26241E678();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_262417EC0@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = 0;
  v4 = *(result + 16);
  v5 = result + 48;
  v6 = MEMORY[0x277D84F90];
LABEL_2:
  v7 = (v5 + 24 * v3);
  while (1)
  {
    if (v4 == v3)
    {
      v13 = *(v6 + 16);
      if (!v13)
      {
        v14 = 0;
        v17 = -1;
LABEL_25:

        *a2 = v14;
        *(a2 + 8) = 0;
        *(a2 + 16) = v17;
        return result;
      }

      v14 = *(v6 + 32);
      v15 = v13 - 1;
      if (v13 != 1)
      {
        if (v13 < 5)
        {
          v16 = 1;
          goto LABEL_20;
        }

        v16 = v15 & 0xFFFFFFFFFFFFFFFCLL | 1;
        v18 = vdupq_n_s64(v14);
        v19 = (v6 + 56);
        v20 = v15 & 0xFFFFFFFFFFFFFFFCLL;
        v21 = v18;
        do
        {
          v18 = vbslq_s8(vcgtq_s64(v18, v19[-1]), v18, v19[-1]);
          v21 = vbslq_s8(vcgtq_s64(v21, *v19), v21, *v19);
          v19 += 2;
          v20 -= 4;
        }

        while (v20);
        v22 = vbslq_s8(vcgtq_s64(v18, v21), v18, v21);
        v23 = vextq_s8(v22, v22, 8uLL).u64[0];
        v14 = vbsl_s8(vcgtd_s64(v22.i64[0], v23), *v22.i8, v23);
        if (v15 != (v15 & 0xFFFFFFFFFFFFFFFCLL))
        {
LABEL_20:
          v24 = v13 - v16;
          v25 = (v6 + 8 * v16 + 32);
          do
          {
            v27 = *v25++;
            v26 = v27;
            if (v14 <= v27)
            {
              v14 = v26;
            }

            --v24;
          }

          while (v24);
        }
      }

      v17 = 3;
      goto LABEL_25;
    }

    if (v3 >= v4)
    {
      break;
    }

    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      goto LABEL_27;
    }

    v9 = *v7;
    v7 += 24;
    ++v3;
    if (v9 == 3)
    {
      v10 = *(v7 - 5);
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_26243C58C(0, *(v6 + 16) + 1, 1, v6);
        v6 = result;
      }

      v12 = *(v6 + 16);
      v11 = *(v6 + 24);
      if (v12 >= v11 >> 1)
      {
        result = sub_26243C58C((v11 > 1), v12 + 1, 1, v6);
        v6 = result;
      }

      *(v6 + 16) = v12 + 1;
      *(v6 + 8 * v12 + 32) = v10;
      v3 = v8;
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_26241807C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = v1 - 1;
  if (v1 != 1)
  {
    v4 = (a1 + 40);
    do
    {
      v5 = *v4++;
      v6 = v5;
      if (v2 < v5)
      {
        v2 = v6;
      }

      --v3;
    }

    while (v3);
  }

  return *&v2;
}

uint64_t sub_262418108@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0CF28, &qword_262467E00);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26241E678();
  sub_262462D88();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v11 = sub_2624147AC(v9, &qword_27FF0CF28, &qword_262467E00);
  (*(v6 + 8))(v9, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = 0x6F6B63614278614DLL;
  a2[1] = 0xEA00000000006666;
  a2[2] = v11;
  return result;
}

uint64_t sub_262418290(uint64_t a1)
{
  v2 = sub_26241E5D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2624182CC(uint64_t a1)
{
  v2 = sub_26241E5D0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_262418308@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = 0;
  v4 = *(result + 16);
  v5 = result + 48;
  v6 = MEMORY[0x277D84F90];
LABEL_2:
  v7 = (v5 + 24 * v3);
  while (1)
  {
    if (v4 == v3)
    {
      v13 = *(v6 + 16);
      if (!v13)
      {
        v14 = 0;
        v17 = -1;
LABEL_25:

        *a2 = v14;
        *(a2 + 8) = 0;
        *(a2 + 16) = v17;
        return result;
      }

      v14 = *(v6 + 32);
      v15 = v13 - 1;
      if (v13 != 1)
      {
        if (v13 < 5)
        {
          v16 = 1;
          goto LABEL_20;
        }

        v16 = v15 & 0xFFFFFFFFFFFFFFFCLL | 1;
        v18 = vdupq_n_s64(v14);
        v19 = (v6 + 56);
        v20 = v15 & 0xFFFFFFFFFFFFFFFCLL;
        v21 = v18;
        do
        {
          v18 = vbslq_s8(vcgtq_s64(v18, v19[-1]), v19[-1], v18);
          v21 = vbslq_s8(vcgtq_s64(v21, *v19), *v19, v21);
          v19 += 2;
          v20 -= 4;
        }

        while (v20);
        v22 = vbslq_s8(vcgtq_s64(v21, v18), v18, v21);
        v23 = vextq_s8(v22, v22, 8uLL).u64[0];
        v14 = vbsl_s8(vcgtd_s64(v23, v22.i64[0]), *v22.i8, v23);
        if (v15 != (v15 & 0xFFFFFFFFFFFFFFFCLL))
        {
LABEL_20:
          v24 = v13 - v16;
          v25 = (v6 + 8 * v16 + 32);
          do
          {
            v27 = *v25++;
            v26 = v27;
            if (v27 < v14)
            {
              v14 = v26;
            }

            --v24;
          }

          while (v24);
        }
      }

      v17 = 2;
      goto LABEL_25;
    }

    if (v3 >= v4)
    {
      break;
    }

    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      goto LABEL_27;
    }

    v9 = *v7;
    v7 += 24;
    ++v3;
    if (v9 == 2)
    {
      v10 = *(v7 - 5);
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_26243C58C(0, *(v6 + 16) + 1, 1, v6);
        v6 = result;
      }

      v12 = *(v6 + 16);
      v11 = *(v6 + 24);
      if (v12 >= v11 >> 1)
      {
        result = sub_26243C58C((v11 > 1), v12 + 1, 1, v6);
        v6 = result;
      }

      *(v6 + 16) = v12 + 1;
      *(v6 + 8 * v12 + 32) = v10;
      v3 = v8;
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_26241850C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0CF08, &qword_262467DF0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26241E5D0();
  sub_262462D88();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v11 = sub_2624147AC(v9, &qword_27FF0CF08, &qword_262467DF0);
  (*(v6 + 8))(v9, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = 0x7261626D456E694DLL;
  a2[1] = 0xEA00000000006F67;
  a2[2] = v11;
  return result;
}

uint64_t sub_262418694@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x737475706E69 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_262462C58();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_262418718(uint64_t a1)
{
  v2 = sub_26241E624();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_262418754(uint64_t a1)
{
  v2 = sub_26241E624();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_262418790@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = 0;
  v4 = *(result + 16);
  v5 = result + 48;
  v6 = MEMORY[0x277D84F90];
LABEL_2:
  v7 = (v5 + 24 * v3);
  while (1)
  {
    if (v4 == v3)
    {
      v13 = *(v6 + 16);
      if (!v13)
      {
        v14 = 0;
        v17 = -1;
LABEL_25:

        *a2 = v14;
        *(a2 + 8) = 0;
        *(a2 + 16) = v17;
        return result;
      }

      v14 = *(v6 + 32);
      v15 = v13 - 1;
      if (v13 != 1)
      {
        if (v13 < 5)
        {
          v16 = 1;
          goto LABEL_20;
        }

        v16 = v15 & 0xFFFFFFFFFFFFFFFCLL | 1;
        v18 = vdupq_n_s64(v14);
        v19 = (v6 + 56);
        v20 = v15 & 0xFFFFFFFFFFFFFFFCLL;
        v21 = v18;
        do
        {
          v18 = vbslq_s8(vcgtq_s64(v18, v19[-1]), v18, v19[-1]);
          v21 = vbslq_s8(vcgtq_s64(v21, *v19), v21, *v19);
          v19 += 2;
          v20 -= 4;
        }

        while (v20);
        v22 = vbslq_s8(vcgtq_s64(v18, v21), v18, v21);
        v23 = vextq_s8(v22, v22, 8uLL).u64[0];
        v14 = vbsl_s8(vcgtd_s64(v22.i64[0], v23), *v22.i8, v23);
        if (v15 != (v15 & 0xFFFFFFFFFFFFFFFCLL))
        {
LABEL_20:
          v24 = v13 - v16;
          v25 = (v6 + 8 * v16 + 32);
          do
          {
            v27 = *v25++;
            v26 = v27;
            if (v14 <= v27)
            {
              v14 = v26;
            }

            --v24;
          }

          while (v24);
        }
      }

      v17 = 2;
      goto LABEL_25;
    }

    if (v3 >= v4)
    {
      break;
    }

    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      goto LABEL_27;
    }

    v9 = *v7;
    v7 += 24;
    ++v3;
    if (v9 == 2)
    {
      v10 = *(v7 - 5);
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_26243C58C(0, *(v6 + 16) + 1, 1, v6);
        v6 = result;
      }

      v12 = *(v6 + 16);
      v11 = *(v6 + 24);
      if (v12 >= v11 >> 1)
      {
        result = sub_26243C58C((v11 > 1), v12 + 1, 1, v6);
        v6 = result;
      }

      *(v6 + 16) = v12 + 1;
      *(v6 + 8 * v12 + 32) = v10;
      v3 = v8;
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_262418994@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0CF18, &qword_262467DF8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26241E624();
  sub_262462D88();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v11 = sub_2624147AC(v9, &qword_27FF0CF18, &qword_262467DF8);
  (*(v6 + 8))(v9, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = 0x7261626D4578614DLL;
  a2[1] = 0xEA00000000006F67;
  a2[2] = v11;
  return result;
}

uint64_t sub_262418B1C()
{
  if (*v0)
  {
    return 0x737475706E69;
  }

  else
  {
    return 0x736369676F6CLL;
  }
}

uint64_t sub_262418B48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x736369676F6CLL && a2 == 0xE600000000000000;
  if (v6 || (sub_262462C58() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x737475706E69 && a2 == 0xE600000000000000)
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

uint64_t sub_262418C1C(uint64_t a1)
{
  v2 = sub_26241E52C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_262418C58(uint64_t a1)
{
  v2 = sub_26241E52C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_262418C94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v4 = *(a2 + 16);
  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    v29 = MEMORY[0x277D84F90];
    sub_26243CD60(0, v4, 0);
    v5 = v29;
    v8 = a2 + 32;
    do
    {
      sub_2623F3CA4(v8, v24);
      v9 = v25;
      v10 = v26;
      __swift_project_boxed_opaque_existential_1(v24, v25);
      (*(v10 + 16))(&v27, a1, v9, v10);
      __swift_destroy_boxed_opaque_existential_1(v24);
      v11 = v27;
      v12 = v28;
      v29 = v5;
      v14 = *(v5 + 16);
      v13 = *(v5 + 24);
      if (v14 >= v13 >> 1)
      {
        v23 = v27;
        sub_26243CD60((v13 > 1), v14 + 1, 1);
        v11 = v23;
        v5 = v29;
      }

      *(v5 + 16) = v14 + 1;
      v15 = v5 + 24 * v14;
      *(v15 + 32) = v11;
      *(v15 + 48) = v12;
      v8 += 40;
      --v4;
    }

    while (v4);
  }

  v16 = (v5 + 48);
  v17 = *(v5 + 16) + 1;
  while (--v17)
  {
    v18 = v16 + 24;
    v19 = *v16;
    v16 += 24;
    if (v19 != 255)
    {
      v20 = *(v18 - 5);
      v21 = *(v18 - 4);
      sub_2623F989C(v20, v21, v19);

      *a3 = v20;
      *(a3 + 8) = v21;
      *(a3 + 16) = v19;
      return result;
    }
  }

  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = -1;
  return result;
}

uint64_t sub_262418E88@<X0>(uint64_t (*a1)(void)@<X3>, uint64_t *a2@<X8>)
{
  result = a1();
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_262418EBC(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a3 == 0xFF)
  {
    v13 = ~a6;
    sub_262419944(a1, a2, 0xFFu);
    if (!v13)
    {
      sub_262419944(a4, a5, 0xFFu);
      sub_262419958(a1, a2, 0xFFu);
      v12 = 1;
      return v12 & 1;
    }

    sub_262419944(a4, a5, a6);
    goto LABEL_7;
  }

  v18 = a1;
  v19 = a2;
  v20 = a3;
  if (a6 == 0xFF)
  {
    sub_262419944(a1, a2, a3);
    sub_262419944(a4, a5, 0xFFu);
    sub_262419944(a1, a2, a3);
    sub_2623F98B8(a1, a2, a3);
LABEL_7:
    sub_262419958(a1, a2, a3);
    sub_262419958(a4, a5, a6);
    v12 = 0;
    return v12 & 1;
  }

  v15 = a4;
  v16 = a5;
  v17 = a6;
  sub_262419944(a1, a2, a3);
  sub_262419944(a4, a5, a6);
  sub_262419944(a1, a2, a3);
  v12 = _s5Rules8DecisionO2eeoiySbAC_ACtFZ_0(&v18, &v15);
  sub_2623F98B8(v15, v16, v17);
  sub_2623F98B8(v18, v19, v20);
  sub_262419958(a1, a2, a3);
  return v12 & 1;
}

uint64_t sub_262419064(uint64_t a1, char a2, void *a3)
{
  v41 = *(a1 + 16);
  if (!v41)
  {
  }

  LOBYTE(v5) = a2;
  v6 = *(a1 + 56);
  v8 = *(a1 + 40);
  v7 = *(a1 + 48);
  v9 = *(a1 + 32);
  sub_2623F989C(v8, v7, *(a1 + 56));
  if (v6 == 255)
  {
  }

  v10 = *a3;
  v11 = sub_262441574(v9);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v17 = v12;
  if (v10[3] < v16)
  {
    sub_26246029C(v16, v5 & 1);
    v18 = *a3;
    v11 = sub_262441574(v9);
    if ((v17 & 1) == (v19 & 1))
    {
      goto LABEL_8;
    }

LABEL_6:
    v11 = sub_262462C78();
    __break(1u);
  }

  if (v5)
  {
LABEL_8:
    if (v17)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  v23 = v11;
  sub_262461938();
  v11 = v23;
  if (v17)
  {
LABEL_9:
    v20 = swift_allocError();
    swift_willThrow();

    v21 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C638, &qword_26246BDD0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      sub_2623F98B8(v8, v7, v6);
      return MEMORY[0x266728D50](v20);
    }

    goto LABEL_27;
  }

LABEL_12:
  v24 = *a3;
  *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
  *(v24[6] + 8 * v11) = v9;
  v25 = v24[7] + 24 * v11;
  *v25 = v8;
  *(v25 + 8) = v7;
  *(v25 + 16) = v6;
  v26 = v24[2];
  v15 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (!v15)
  {
    v24[2] = v27;
    if (v41 != 1)
    {
      v5 = (a1 + 88);
      v28 = 1;
      while (v28 < *(a1 + 16))
      {
        v6 = *v5;
        v8 = *(v5 - 2);
        v7 = *(v5 - 1);
        v9 = *(v5 - 3);
        sub_2623F989C(v8, v7, *v5);
        if (v6 == 255)
        {
        }

        v29 = *a3;
        v30 = sub_262441574(v9);
        v32 = v29[2];
        v33 = (v31 & 1) == 0;
        v15 = __OFADD__(v32, v33);
        v34 = v32 + v33;
        if (v15)
        {
          goto LABEL_24;
        }

        v17 = v31;
        if (v29[3] < v34)
        {
          sub_26246029C(v34, 1);
          v35 = *a3;
          v30 = sub_262441574(v9);
          if ((v17 & 1) != (v36 & 1))
          {
            goto LABEL_6;
          }
        }

        if (v17)
        {
          goto LABEL_9;
        }

        v37 = *a3;
        *(*a3 + 8 * (v30 >> 6) + 64) |= 1 << v30;
        *(v37[6] + 8 * v30) = v9;
        v38 = v37[7] + 24 * v30;
        *v38 = v8;
        *(v38 + 8) = v7;
        *(v38 + 16) = v6;
        v39 = v37[2];
        v15 = __OFADD__(v39, 1);
        v40 = v39 + 1;
        if (v15)
        {
          goto LABEL_25;
        }

        ++v28;
        v37[2] = v40;
        v5 += 32;
        if (v41 == v28)
        {
        }
      }

      goto LABEL_26;
    }
  }

LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  sub_262462A28();
  MEMORY[0x266728460](0xD00000000000001BLL, 0x80000002624718E0);
  sub_262462AA8();
  MEMORY[0x266728460](39, 0xE100000000000000);
  result = sub_262462AC8();
  __break(1u);
  return result;
}

unint64_t sub_262419418()
{
  result = qword_27FF0CC38;
  if (!qword_27FF0CC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0CC38);
  }

  return result;
}

unint64_t sub_26241946C()
{
  result = qword_27FF0CC40;
  if (!qword_27FF0CC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0CC40);
  }

  return result;
}

unint64_t sub_2624194C0()
{
  result = qword_27FF0CC48;
  if (!qword_27FF0CC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0CC48);
  }

  return result;
}

uint64_t objectdestroyTm_0()
{
  v1 = v0[3];

  v2 = v0[4];

  __swift_destroy_boxed_opaque_existential_1(v0 + 5);

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

unint64_t sub_26241955C()
{
  result = qword_27FF0CC50;
  if (!qword_27FF0CC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0CC50);
  }

  return result;
}

unint64_t sub_2624195B0()
{
  result = qword_2813BD900;
  if (!qword_2813BD900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BD900);
  }

  return result;
}

unint64_t sub_262419604()
{
  result = qword_2813BD908;
  if (!qword_2813BD908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BD908);
  }

  return result;
}

unint64_t sub_262419658()
{
  result = qword_27FF0CC58;
  if (!qword_27FF0CC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0CC58);
  }

  return result;
}

unint64_t sub_2624196AC()
{
  result = qword_27FF0CC60;
  if (!qword_27FF0CC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0CC60);
  }

  return result;
}

unint64_t sub_262419700()
{
  result = qword_27FF0CC68;
  if (!qword_27FF0CC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0CC68);
  }

  return result;
}

unint64_t sub_262419754()
{
  result = qword_27FF0CC70;
  if (!qword_27FF0CC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0CC70);
  }

  return result;
}

uint64_t type metadata accessor for DecisionRule()
{
  result = qword_2813BD9E8;
  if (!qword_2813BD9E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_2624197F4()
{
  result = qword_27FF0CC78;
  if (!qword_27FF0CC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0CC78);
  }

  return result;
}

unint64_t sub_262419848()
{
  result = qword_27FF0CC80;
  if (!qword_27FF0CC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0CC80);
  }

  return result;
}

unint64_t sub_26241989C()
{
  result = qword_27FF0CC90;
  if (!qword_27FF0CC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0CC90);
  }

  return result;
}

unint64_t sub_2624198F0()
{
  result = qword_27FF0CCA8;
  if (!qword_27FF0CCA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0CCA8);
  }

  return result;
}

uint64_t sub_262419944(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_2623F989C(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_262419958(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_2623F98B8(a1, a2, a3);
  }

  return a1;
}

unint64_t sub_26241996C()
{
  result = qword_2813BDA20;
  if (!qword_2813BDA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BDA20);
  }

  return result;
}

uint64_t sub_2624199C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DecisionRule();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_262419A24(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_262419A84()
{
  result = qword_2813BD858;
  if (!qword_2813BD858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BD858);
  }

  return result;
}

unint64_t sub_262419AD8()
{
  result = qword_2813BDAF8;
  if (!qword_2813BDAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BDAF8);
  }

  return result;
}

unint64_t sub_262419B2C()
{
  result = qword_2813BDB00;
  if (!qword_2813BDB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BDB00);
  }

  return result;
}

unint64_t sub_262419B80()
{
  result = qword_27FF0CCD0;
  if (!qword_27FF0CCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0CCD0);
  }

  return result;
}

unint64_t sub_262419BD4()
{
  result = qword_27FF0CCD8;
  if (!qword_27FF0CCD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0CCD8);
  }

  return result;
}

unint64_t sub_262419C28()
{
  result = qword_27FF0CCE0;
  if (!qword_27FF0CCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0CCE0);
  }

  return result;
}

unint64_t sub_262419C7C()
{
  result = qword_27FF0CCE8;
  if (!qword_27FF0CCE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0CCE8);
  }

  return result;
}

unint64_t sub_262419CD0()
{
  result = qword_27FF0CCF0;
  if (!qword_27FF0CCF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0CCF0);
  }

  return result;
}

unint64_t sub_262419D24()
{
  result = qword_27FF0CCF8;
  if (!qword_27FF0CCF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0CCF8);
  }

  return result;
}

unint64_t sub_262419D78()
{
  result = qword_27FF0CD00;
  if (!qword_27FF0CD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0CD00);
  }

  return result;
}

unint64_t sub_262419DCC()
{
  result = qword_27FF0CD08;
  if (!qword_27FF0CD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0CD08);
  }

  return result;
}

unint64_t sub_262419E20()
{
  result = qword_27FF0CD10;
  if (!qword_27FF0CD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0CD10);
  }

  return result;
}

unint64_t sub_262419E74()
{
  result = qword_27FF0CD18;
  if (!qword_27FF0CD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0CD18);
  }

  return result;
}

unint64_t sub_262419EC8()
{
  result = qword_27FF0CD20;
  if (!qword_27FF0CD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0CD20);
  }

  return result;
}

uint64_t objectdestroy_26Tm()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

unint64_t sub_262419F64()
{
  result = qword_27FF0CD28;
  if (!qword_27FF0CD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0CD28);
  }

  return result;
}

unint64_t sub_262419FB8()
{
  result = qword_27FF0CD30;
  if (!qword_27FF0CD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0CD30);
  }

  return result;
}

unint64_t sub_26241A00C()
{
  result = qword_27FF0CD38;
  if (!qword_27FF0CD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0CD38);
  }

  return result;
}

unint64_t sub_26241A060()
{
  result = qword_27FF0CD40;
  if (!qword_27FF0CD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0CD40);
  }

  return result;
}

unint64_t sub_26241A0B4()
{
  result = qword_27FF0CD48;
  if (!qword_27FF0CD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0CD48);
  }

  return result;
}

unint64_t sub_26241A108()
{
  result = qword_27FF0CD50;
  if (!qword_27FF0CD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0CD50);
  }

  return result;
}

unint64_t sub_26241A15C()
{
  result = qword_27FF0CD58;
  if (!qword_27FF0CD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0CD58);
  }

  return result;
}

unint64_t sub_26241A1B0()
{
  result = qword_2813BD548;
  if (!qword_2813BD548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BD548);
  }

  return result;
}

uint64_t objectdestroy_38Tm()
{
  v1 = *(v0 + 24);

  sub_2623F98B8(*(v0 + 32), *(v0 + 40), *(v0 + 48));
  v2 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

unint64_t sub_26241A250()
{
  result = qword_2813BD550;
  if (!qword_2813BD550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BD550);
  }

  return result;
}

uint64_t sub_26241A2D4(uint64_t a1, int a2)
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

uint64_t sub_26241A31C(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for MergingLogicDecoder.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MergingLogicDecoder.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_26241A57C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_26241A5C4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_5Rules8DecisionOSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 > 5)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

void sub_26241A664()
{
  sub_26241A710();
  if (v0 <= 0x3F)
  {
    type metadata accessor for RulesValidity();
    if (v1 <= 0x3F)
    {
      sub_26241A760();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_26241A710()
{
  if (!qword_2813BD440)
  {
    v0 = sub_262462928();
    if (!v1)
    {
      atomic_store(v0, &qword_2813BD440);
    }
  }
}

unint64_t sub_26241A760()
{
  result = qword_2813BD860;
  if (!qword_2813BD860)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2813BD860);
  }

  return result;
}

__n128 __swift_memcpy73_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_26241A7E8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 73))
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

uint64_t sub_26241A830(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 73) = 1;
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

    *(result + 73) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy104_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_26241A8C0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
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

uint64_t sub_26241A908(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26241A970(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_26241A9B8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
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

uint64_t sub_26241AA40(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_26241AA88(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for DecisionExpressionDecoder.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEA)
  {
    goto LABEL_17;
  }

  if (a2 + 22 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 22) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 22;
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

      return (*a1 | (v4 << 8)) - 22;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 22;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x17;
  v8 = v6 - 23;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DecisionExpressionDecoder.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 22 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 22) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEA)
  {
    v4 = 0;
  }

  if (a2 > 0xE9)
  {
    v5 = ((a2 - 234) >> 8) + 1;
    *result = a2 + 22;
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
    *result = a2 + 22;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_26241AC3C()
{
  result = qword_27FF0CD60;
  if (!qword_27FF0CD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0CD60);
  }

  return result;
}

unint64_t sub_26241AC90(uint64_t a1)
{
  result = sub_26241946C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26241ACB8(uint64_t a1)
{
  result = sub_26241955C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26241ACE0(uint64_t a1)
{
  result = sub_262419604();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26241AD08(uint64_t a1)
{
  result = sub_2624196AC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26241AD30(uint64_t a1)
{
  result = sub_262419754();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_26241AD58(uint64_t a1)
{
  result = sub_26241C078(&qword_2813BDA08, type metadata accessor for DecisionRule);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26241ADB0(uint64_t a1)
{
  result = sub_26241ADD8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26241ADD8()
{
  result = qword_27FF0CD68;
  if (!qword_27FF0CD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0CD68);
  }

  return result;
}

unint64_t sub_26241AE2C(uint64_t a1)
{
  result = sub_26241AE54();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26241AE54()
{
  result = qword_27FF0CD70;
  if (!qword_27FF0CD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0CD70);
  }

  return result;
}

unint64_t sub_26241AEAC()
{
  result = qword_27FF0CD78;
  if (!qword_27FF0CD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0CD78);
  }

  return result;
}

unint64_t sub_26241AF04()
{
  result = qword_27FF0CD80;
  if (!qword_27FF0CD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0CD80);
  }

  return result;
}

unint64_t sub_26241AF5C()
{
  result = qword_27FF0CD88;
  if (!qword_27FF0CD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0CD88);
  }

  return result;
}

unint64_t sub_26241AFB4()
{
  result = qword_27FF0CD90;
  if (!qword_27FF0CD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0CD90);
  }

  return result;
}

unint64_t sub_26241B008(uint64_t a1)
{
  result = sub_262419B2C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26241B030(uint64_t a1)
{
  result = sub_26241B058();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26241B058()
{
  result = qword_2813BDAF0;
  if (!qword_2813BDAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BDAF0);
  }

  return result;
}

unint64_t sub_26241B0AC(uint64_t a1)
{
  result = sub_262419BD4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26241B0D4(uint64_t a1)
{
  result = sub_26241B0FC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26241B0FC()
{
  result = qword_27FF0CD98;
  if (!qword_27FF0CD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0CD98);
  }

  return result;
}

unint64_t sub_26241B150(uint64_t a1)
{
  result = sub_262419C7C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26241B178(uint64_t a1)
{
  result = sub_26241B1A0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26241B1A0()
{
  result = qword_27FF0CDA0;
  if (!qword_27FF0CDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0CDA0);
  }

  return result;
}

unint64_t sub_26241B1F4(uint64_t a1)
{
  result = sub_262419D24();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26241B21C(uint64_t a1)
{
  result = sub_26241B244();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26241B244()
{
  result = qword_27FF0CDA8;
  if (!qword_27FF0CDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0CDA8);
  }

  return result;
}

unint64_t sub_26241B298(uint64_t a1)
{
  result = sub_262419DCC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26241B2C0(uint64_t a1)
{
  result = sub_26241B2E8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26241B2E8()
{
  result = qword_27FF0CDB0;
  if (!qword_27FF0CDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0CDB0);
  }

  return result;
}

unint64_t sub_26241B33C(uint64_t a1)
{
  result = sub_262419E74();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26241B364(uint64_t a1)
{
  result = sub_26241B38C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26241B38C()
{
  result = qword_27FF0CDB8;
  if (!qword_27FF0CDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0CDB8);
  }

  return result;
}

unint64_t sub_26241B3E0(uint64_t a1)
{
  result = sub_262419F64();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26241B408(uint64_t a1)
{
  result = sub_26241B430();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26241B430()
{
  result = qword_27FF0CDC0;
  if (!qword_27FF0CDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0CDC0);
  }

  return result;
}

unint64_t sub_26241B484(uint64_t a1)
{
  result = sub_26241A00C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26241B4AC(uint64_t a1)
{
  result = sub_26241B4D4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26241B4D4()
{
  result = qword_27FF0CDC8;
  if (!qword_27FF0CDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0CDC8);
  }

  return result;
}

unint64_t sub_26241B528(uint64_t a1)
{
  result = sub_26241A0B4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26241B550(uint64_t a1)
{
  result = sub_26241B578();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26241B578()
{
  result = qword_27FF0CDD0;
  if (!qword_27FF0CDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0CDD0);
  }

  return result;
}

unint64_t sub_26241B5CC(uint64_t a1)
{
  result = sub_26241A15C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26241B5F4(uint64_t a1)
{
  result = sub_26241B61C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26241B61C()
{
  result = qword_27FF0CDD8;
  if (!qword_27FF0CDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0CDD8);
  }

  return result;
}

unint64_t sub_26241B670(uint64_t a1)
{
  result = sub_26241A250();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26241B698(uint64_t a1)
{
  result = sub_26241B6C0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26241B6C0()
{
  result = qword_2813BD540;
  if (!qword_2813BD540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BD540);
  }

  return result;
}

unint64_t sub_26241B714(uint64_t a1)
{
  result = sub_26241B73C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26241B73C()
{
  result = qword_2813BD538;
  if (!qword_2813BD538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BD538);
  }

  return result;
}

unint64_t sub_26241B790(uint64_t a1)
{
  result = sub_26241B7B8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26241B7B8()
{
  result = qword_27FF0CDE0;
  if (!qword_27FF0CDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0CDE0);
  }

  return result;
}

unint64_t sub_26241B80C(uint64_t a1)
{
  result = sub_26241B834();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26241B834()
{
  result = qword_27FF0CDE8;
  if (!qword_27FF0CDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0CDE8);
  }

  return result;
}

unint64_t sub_26241B888(uint64_t a1)
{
  result = sub_26241B8B0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26241B8B0()
{
  result = qword_27FF0CDF0;
  if (!qword_27FF0CDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0CDF0);
  }

  return result;
}

unint64_t sub_26241B904(uint64_t a1)
{
  result = sub_26241B92C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26241B92C()
{
  result = qword_27FF0CDF8;
  if (!qword_27FF0CDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0CDF8);
  }

  return result;
}

unint64_t sub_26241B980(uint64_t a1)
{
  result = sub_26241B9A8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26241B9A8()
{
  result = qword_27FF0CE00;
  if (!qword_27FF0CE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0CE00);
  }

  return result;
}

unint64_t sub_26241B9FC(uint64_t a1)
{
  result = sub_26241BA24();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26241BA24()
{
  result = qword_27FF0CE08;
  if (!qword_27FF0CE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0CE08);
  }

  return result;
}

unint64_t sub_26241BA78(uint64_t a1)
{
  result = sub_26241BAA0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26241BAA0()
{
  result = qword_27FF0CE10;
  if (!qword_27FF0CE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0CE10);
  }

  return result;
}

unint64_t sub_26241BAF4(uint64_t a1)
{
  result = sub_26241BB1C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26241BB1C()
{
  result = qword_27FF0CE18;
  if (!qword_27FF0CE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0CE18);
  }

  return result;
}

unint64_t sub_26241BB70(uint64_t a1)
{
  result = sub_26241BB98();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26241BB98()
{
  result = qword_27FF0CE20;
  if (!qword_27FF0CE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0CE20);
  }

  return result;
}

unint64_t sub_26241BBEC(uint64_t a1)
{
  result = sub_26241BC14();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26241BC14()
{
  result = qword_2813BDAE8;
  if (!qword_2813BDAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BDAE8);
  }

  return result;
}

unint64_t sub_26241BC6C()
{
  result = qword_2813BD848;
  if (!qword_2813BD848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BD848);
  }

  return result;
}

unint64_t sub_26241BCC4()
{
  result = qword_2813BD850;
  if (!qword_2813BD850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BD850);
  }

  return result;
}

unint64_t sub_26241BD1C()
{
  result = qword_2813BDA10;
  if (!qword_2813BDA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BDA10);
  }

  return result;
}

unint64_t sub_26241BD74()
{
  result = qword_2813BDA18;
  if (!qword_2813BDA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BDA18);
  }

  return result;
}

unint64_t sub_26241BDCC()
{
  result = qword_27FF0CE28;
  if (!qword_27FF0CE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0CE28);
  }

  return result;
}

unint64_t sub_26241BE24()
{
  result = qword_27FF0CE30;
  if (!qword_27FF0CE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0CE30);
  }

  return result;
}

unint64_t sub_26241BE7C()
{
  result = qword_27FF0CE38;
  if (!qword_27FF0CE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0CE38);
  }

  return result;
}

unint64_t sub_26241BED4()
{
  result = qword_27FF0CE40;
  if (!qword_27FF0CE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0CE40);
  }

  return result;
}

unint64_t sub_26241BF28(uint64_t a1)
{
  result = sub_26241BF50();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26241BF50()
{
  result = qword_27FF0CE48;
  if (!qword_27FF0CE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0CE48);
  }

  return result;
}

unint64_t sub_26241BFA4(uint64_t a1)
{
  result = sub_26241BFCC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26241BFCC()
{
  result = qword_27FF0CE50;
  if (!qword_27FF0CE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0CE50);
  }

  return result;
}

uint64_t sub_26241C020(uint64_t a1)
{
  result = sub_26241C078(&qword_2813BD9F8, type metadata accessor for DecisionRule);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_26241C078(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_26241C0C0(uint64_t a1)
{
  result = sub_26241C0E8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26241C0E8()
{
  result = qword_27FF0CE58;
  if (!qword_27FF0CE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0CE58);
  }

  return result;
}

unint64_t sub_26241C13C(uint64_t a1)
{
  result = sub_26241C164();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26241C164()
{
  result = qword_27FF0CE60;
  if (!qword_27FF0CE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0CE60);
  }

  return result;
}

unint64_t sub_26241C1B8(uint64_t a1)
{
  result = sub_26241C1E0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26241C1E0()
{
  result = qword_2813BD8F8;
  if (!qword_2813BD8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BD8F8);
  }

  return result;
}

unint64_t sub_26241C234(uint64_t a1)
{
  result = sub_26241C25C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26241C25C()
{
  result = qword_27FF0CE68;
  if (!qword_27FF0CE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0CE68);
  }

  return result;
}

unint64_t sub_26241C2B0(uint64_t a1)
{
  result = sub_26241C2D8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26241C2D8()
{
  result = qword_27FF0CE70;
  if (!qword_27FF0CE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0CE70);
  }

  return result;
}

unint64_t sub_26241C330()
{
  result = qword_2813BD638;
  if (!qword_2813BD638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BD638);
  }

  return result;
}

unint64_t sub_26241C388()
{
  result = qword_2813BD640;
  if (!qword_2813BD640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BD640);
  }

  return result;
}

uint64_t sub_26241C3DC(uint64_t a1, void (*a2)(__int128 *, uint64_t, uint64_t, uint64_t *))
{
  v3 = v2;
  v4 = *(a1 + 16);
  v5 = MEMORY[0x277D84F90];
  if (!v4)
  {
    return v5;
  }

  v6 = a1;
  v55 = MEMORY[0x277D84F90];
  sub_26243CDA0(0, v4, 0);
  v5 = v55;
  v7 = v6 + 64;
  v8 = -1 << *(v6 + 32);
  result = sub_2624629B8();
  v10 = result;
  v11 = 0;
  v49 = *(v6 + 36);
  v41 = v6 + 72;
  v42 = v4;
  v43 = v6 + 64;
  v44 = v6;
  while ((v10 & 0x8000000000000000) == 0 && v10 < 1 << *(v6 + 32))
  {
    v13 = v10 >> 6;
    if ((*(v7 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
    {
      goto LABEL_24;
    }

    if (v49 != *(v6 + 36))
    {
      goto LABEL_25;
    }

    v46 = v11;
    v47 = v3;
    v14 = (*(v6 + 48) + 16 * v10);
    v15 = *v14;
    v16 = v14[1];
    v17 = *(v6 + 56) + 24 * v10;
    v18 = *v17;
    v19 = *(v17 + 8);
    v20 = *(v17 + 16);
    swift_bridgeObjectRetain_n();
    sub_2623F989C(v18, v19, v20);
    sub_2623F989C(v18, v19, v20);

    sub_2623F98B8(v18, v19, v20);
    v50 = v18;
    v51 = v19;
    v52 = v20;
    a2(&v53, v15, v16, &v50);
    v3 = v47;
    if (v47)
    {
      v38 = v50;
      v39 = v51;
      v40 = v52;

      sub_2623F98B8(v38, v39, v40);

      return v5;
    }

    v22 = v21;
    v23 = v50;
    v24 = v51;
    v25 = v52;

    result = sub_2623F98B8(v23, v24, v25);
    v26 = v53;
    v27 = v54;
    v55 = v5;
    v29 = *(v5 + 16);
    v28 = *(v5 + 24);
    if (v29 >= v28 >> 1)
    {
      v48 = v53;
      result = sub_26243CDA0((v28 > 1), v29 + 1, 1);
      v26 = v48;
      v5 = v55;
    }

    *(v5 + 16) = v29 + 1;
    v30 = v5 + 32 * v29;
    *(v30 + 32) = v22;
    *(v30 + 40) = v26;
    *(v30 + 56) = v27;
    v6 = v44;
    v12 = 1 << *(v44 + 32);
    if (v10 >= v12)
    {
      goto LABEL_26;
    }

    v7 = v43;
    v31 = *(v43 + 8 * v13);
    if ((v31 & (1 << v10)) == 0)
    {
      goto LABEL_27;
    }

    if (v49 != *(v44 + 36))
    {
      goto LABEL_28;
    }

    v32 = v31 & (-2 << (v10 & 0x3F));
    if (v32)
    {
      v12 = __clz(__rbit64(v32)) | v10 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v33 = v13 << 6;
      v34 = v13 + 1;
      v35 = (v41 + 8 * v13);
      while (v34 < (v12 + 63) >> 6)
      {
        v37 = *v35++;
        v36 = v37;
        v33 += 64;
        ++v34;
        if (v37)
        {
          result = sub_2624071A0(v10, v49, 0);
          v12 = __clz(__rbit64(v36)) + v33;
          goto LABEL_4;
        }
      }

      result = sub_2624071A0(v10, v49, 0);
    }

LABEL_4:
    v11 = v46 + 1;
    v10 = v12;
    if (v46 + 1 == v42)
    {
      return v5;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_26241C71C(uint64_t a1, uint64_t a2)
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

  else if (a1 == 0xD000000000000016 && 0x8000000262466A60 == a2 || (sub_262462C58() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000262466A40 == a2 || (sub_262462C58() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6E6F697369636544 && a2 == 0xEF6E61656C6F6F42 || (sub_262462C58() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x6E6F697369636544 && a2 == 0xEE00676E69727453 || (sub_262462C58() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x6E6F697369636544 && a2 == 0xEE007265626D754ELL || (sub_262462C58() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x736E6961746E6F43 && a2 == 0xE800000000000000 || (sub_262462C58() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x736E6961746E6F43 && a2 == 0xEC00000065707954 || (sub_262462C58() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 7105601 && a2 == 0xE300000000000000 || (sub_262462C58() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x657079546C6C41 && a2 == 0xE700000000000000 || (sub_262462C58() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x7473726946 && a2 == 0xE500000000000000 || (sub_262462C58() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000262466A20 == a2 || (sub_262462C58() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000262466A00 == a2 || (sub_262462C58() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0x6F6B63614278614DLL && a2 == 0xEA00000000006666 || (sub_262462C58() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0x7261626D4578614DLL && a2 == 0xEA00000000006F67 || (sub_262462C58() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0x7261626D456E694DLL && a2 == 0xEA00000000006F67 || (sub_262462C58() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 0x697469726F697250 && a2 == 0xEB0000000064657ALL)
  {

    return 22;
  }

  else
  {
    v6 = sub_262462C58();

    if (v6)
    {
      return 22;
    }

    else
    {
      return 23;
    }
  }
}

unint64_t sub_26241CE3C()
{
  result = qword_27FF0CE80;
  if (!qword_27FF0CE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0CE80);
  }

  return result;
}

unint64_t sub_26241CE90()
{
  result = qword_27FF0CE90;
  if (!qword_27FF0CE90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF0CE88, &qword_262467D80);
    sub_2623F4CF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0CE90);
  }

  return result;
}

unint64_t sub_26241CFA0()
{
  result = qword_27FF0CEC0;
  if (!qword_27FF0CEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0CEC0);
  }

  return result;
}

unint64_t sub_26241D05C()
{
  result = qword_2813BD920;
  if (!qword_2813BD920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BD920);
  }

  return result;
}

unint64_t sub_26241D118()
{
  result = qword_27FF0CEE8;
  if (!qword_27FF0CEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0CEE8);
  }

  return result;
}

unint64_t sub_26241D1D4()
{
  result = qword_27FF0CEF8;
  if (!qword_27FF0CEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0CEF8);
  }

  return result;
}

uint64_t sub_26241D290(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x736E6961746E6F43 && a2 == 0xE800000000000000;
  if (v3 || (sub_262462C58() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x736E6961746E6F43 && a2 == 0xEC00000065707954 || (sub_262462C58() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 7105601 && a2 == 0xE300000000000000 || (sub_262462C58() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x657079546C6C41 && a2 == 0xE700000000000000 || (sub_262462C58() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7473726946 && a2 == 0xE500000000000000 || (sub_262462C58() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000262466A20 == a2 || (sub_262462C58() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000262466A00 == a2 || (sub_262462C58() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6F6B63614278614DLL && a2 == 0xEA00000000006666 || (sub_262462C58() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x7261626D4578614DLL && a2 == 0xEA00000000006F67 || (sub_262462C58() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x7261626D456E694DLL && a2 == 0xEA00000000006F67 || (sub_262462C58() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x697469726F697250 && a2 == 0xEB0000000064657ALL)
  {

    return 10;
  }

  else
  {
    v6 = sub_262462C58();

    if (v6)
    {
      return 10;
    }

    else
    {
      return 11;
    }
  }
}

uint64_t sub_26241D614(uint64_t *a1)
{
  v3 = sub_262462A88();
  v15 = *(v3 - 8);
  v4 = *(v15 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0CF70, &qword_262467E28);
  v16 = *(v7 - 8);
  v8 = *(v16 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26241E7F8();
  sub_262462D88();
  if (v1)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v13 = v6;
  v14 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0CF48, &qword_262467E10);
  LOBYTE(v17) = 0;
  sub_26241E720(&qword_27FF0CF50, &qword_27FF0CF48, &qword_262467E10);
  sub_262462BB8();
  sub_2624145C8(v10, 1, &qword_27FF0CF70, &qword_262467E28);
  (*(v16 + 8))(v10, v7);
  __swift_destroy_boxed_opaque_existential_1(v14);
  return 0x7473726946;
}

uint64_t sub_26241D9F4(uint64_t *a1)
{
  v3 = sub_262462A88();
  v15 = *(v3 - 8);
  v4 = *(v15 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0CF60, &qword_262467E20);
  v16 = *(v7 - 8);
  v8 = *(v16 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26241E7A4();
  sub_262462D88();
  if (v1)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v13 = v6;
  v14 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0CF48, &qword_262467E10);
  LOBYTE(v17) = 0;
  sub_26241E720(&qword_27FF0CF50, &qword_27FF0CF48, &qword_262467E10);
  sub_262462BB8();
  sub_2624145C8(v10, 1, &qword_27FF0CF60, &qword_262467E20);
  (*(v16 + 8))(v10, v7);
  __swift_destroy_boxed_opaque_existential_1(v14);
  return 0xD000000000000011;
}

uint64_t sub_26241DDDC(uint64_t *a1)
{
  v3 = sub_262462A88();
  v15 = *(v3 - 8);
  v4 = *(v15 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0CF38, &qword_262467E08);
  v16 = *(v7 - 8);
  v8 = *(v16 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26241E6CC();
  sub_262462D88();
  if (v1)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v13 = v6;
  v14 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0CF48, &qword_262467E10);
  LOBYTE(v17) = 0;
  sub_26241E720(&qword_27FF0CF50, &qword_27FF0CF48, &qword_262467E10);
  sub_262462BB8();
  sub_2624145C8(v10, 1, &qword_27FF0CF38, &qword_262467E08);
  (*(v16 + 8))(v10, v7);
  __swift_destroy_boxed_opaque_existential_1(v14);
  return 0xD000000000000015;
}

uint64_t sub_26241E1C4(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0CF00, &qword_262467DE8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v14 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26241E52C();
  sub_262462D88();
  if (v1)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v16[0]) = 0;
  sub_262462B28();
  __swift_project_boxed_opaque_existential_1(v17, v18);
  v10 = sub_262462C48();
  v11 = MEMORY[0x277D84F90];
  if ((v10 & 1) == 0)
  {
    do
    {
      __swift_mutable_project_boxed_opaque_existential_1(v17, v18);
      sub_262462C38();
      type metadata accessor for MergingLogicDecoder();
      sub_26240FA6C(v15, v16);
      __swift_destroy_boxed_opaque_existential_1(v15);
      sub_2623F3CA4(v16, v15);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_26243C7F8(0, v11[2] + 1, 1, v11);
      }

      v13 = v11[2];
      v12 = v11[3];
      if (v13 >= v12 >> 1)
      {
        v11 = sub_26243C7F8((v12 > 1), v13 + 1, 1, v11);
      }

      __swift_destroy_boxed_opaque_existential_1(v16);
      v11[2] = v13 + 1;
      sub_2623EB668(v15, &v11[5 * v13 + 4]);
      __swift_project_boxed_opaque_existential_1(v17, v18);
    }

    while ((sub_262462C48() & 1) == 0);
  }

  sub_2624145C8(v7, 1, &qword_27FF0CF00, &qword_262467DE8);
  (*(v4 + 8))(v7, v3);
  __swift_destroy_boxed_opaque_existential_1(v17);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return 0x697469726F697250;
}

unint64_t sub_26241E52C()
{
  result = qword_2813BDB18;
  if (!qword_2813BDB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BDB18);
  }

  return result;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

unint64_t sub_26241E5D0()
{
  result = qword_27FF0CF10;
  if (!qword_27FF0CF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0CF10);
  }

  return result;
}

unint64_t sub_26241E624()
{
  result = qword_27FF0CF20;
  if (!qword_27FF0CF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0CF20);
  }

  return result;
}

unint64_t sub_26241E678()
{
  result = qword_27FF0CF30;
  if (!qword_27FF0CF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0CF30);
  }

  return result;
}

unint64_t sub_26241E6CC()
{
  result = qword_27FF0CF40;
  if (!qword_27FF0CF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0CF40);
  }

  return result;
}

uint64_t sub_26241E720(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    sub_2623F4CF4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26241E7A4()
{
  result = qword_27FF0CF68;
  if (!qword_27FF0CF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0CF68);
  }

  return result;
}

unint64_t sub_26241E7F8()
{
  result = qword_27FF0CF78;
  if (!qword_27FF0CF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0CF78);
  }

  return result;
}

unint64_t sub_26241E84C()
{
  result = qword_27FF0CF88;
  if (!qword_27FF0CF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0CF88);
  }

  return result;
}

unint64_t sub_26241E8A0()
{
  result = qword_27FF0CF98;
  if (!qword_27FF0CF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0CF98);
  }

  return result;
}

unint64_t sub_26241E8F4()
{
  result = qword_27FF0CFA8;
  if (!qword_27FF0CFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0CFA8);
  }

  return result;
}

unint64_t sub_26241E964()
{
  result = qword_2813BD568;
  if (!qword_2813BD568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BD568);
  }

  return result;
}

uint64_t sub_26241EA24(__int128 *a1)
{
  v2 = *(v1 + 16);
  v3 = *(a1 + 16);
  v4 = *(v2 + 16);
  v8 = *a1;
  v9 = v3;
  v6 = *v2;
  v7 = v4;
  return _s5Rules8DecisionO2eeoiySbAC_ACtFZ_0(&v8, &v6) & 1;
}

unint64_t sub_26241EA84()
{
  result = qword_27FF0CFC0;
  if (!qword_27FF0CFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0CFC0);
  }

  return result;
}

unint64_t sub_26241EAD8()
{
  result = qword_2813BD3F8;
  if (!qword_2813BD3F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF0CFD8, &unk_262467E70);
    sub_26241EB5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BD3F8);
  }

  return result;
}

unint64_t sub_26241EB5C()
{
  result = qword_2813BD3B0;
  if (!qword_2813BD3B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF0C5F0, &qword_262463A90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BD3B0);
  }

  return result;
}

unint64_t sub_26241EBD8()
{
  result = qword_2813BD3B8;
  if (!qword_2813BD3B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF0CFE0, &qword_26246BDF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BD3B8);
  }

  return result;
}

unint64_t sub_26241ED40()
{
  result = qword_27FF0CFF0;
  if (!qword_27FF0CFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0CFF0);
  }

  return result;
}

unint64_t sub_26241ED98()
{
  result = qword_27FF0CFF8;
  if (!qword_27FF0CFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0CFF8);
  }

  return result;
}

unint64_t sub_26241EDF0()
{
  result = qword_27FF0D000;
  if (!qword_27FF0D000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D000);
  }

  return result;
}

unint64_t sub_26241EE48()
{
  result = qword_27FF0D008;
  if (!qword_27FF0D008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D008);
  }

  return result;
}

unint64_t sub_26241EEA0()
{
  result = qword_27FF0D010;
  if (!qword_27FF0D010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D010);
  }

  return result;
}

unint64_t sub_26241EEF8()
{
  result = qword_27FF0D018;
  if (!qword_27FF0D018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D018);
  }

  return result;
}

unint64_t sub_26241EF50()
{
  result = qword_27FF0D020;
  if (!qword_27FF0D020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D020);
  }

  return result;
}

unint64_t sub_26241EFA8()
{
  result = qword_27FF0D028;
  if (!qword_27FF0D028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D028);
  }

  return result;
}

unint64_t sub_26241F000()
{
  result = qword_27FF0D030;
  if (!qword_27FF0D030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D030);
  }

  return result;
}

unint64_t sub_26241F058()
{
  result = qword_27FF0D038;
  if (!qword_27FF0D038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D038);
  }

  return result;
}

unint64_t sub_26241F0B0()
{
  result = qword_27FF0D040;
  if (!qword_27FF0D040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D040);
  }

  return result;
}

unint64_t sub_26241F108()
{
  result = qword_27FF0D048;
  if (!qword_27FF0D048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D048);
  }

  return result;
}

unint64_t sub_26241F160()
{
  result = qword_27FF0D050;
  if (!qword_27FF0D050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D050);
  }

  return result;
}

unint64_t sub_26241F1B8()
{
  result = qword_27FF0D058;
  if (!qword_27FF0D058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D058);
  }

  return result;
}

unint64_t sub_26241F210()
{
  result = qword_27FF0D060;
  if (!qword_27FF0D060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D060);
  }

  return result;
}

unint64_t sub_26241F268()
{
  result = qword_27FF0D068;
  if (!qword_27FF0D068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D068);
  }

  return result;
}

unint64_t sub_26241F2C0()
{
  result = qword_2813BD558;
  if (!qword_2813BD558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BD558);
  }

  return result;
}

unint64_t sub_26241F318()
{
  result = qword_2813BD560;
  if (!qword_2813BD560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BD560);
  }

  return result;
}

unint64_t sub_26241F370()
{
  result = qword_27FF0D070;
  if (!qword_27FF0D070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D070);
  }

  return result;
}

unint64_t sub_26241F3C8()
{
  result = qword_27FF0D078;
  if (!qword_27FF0D078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D078);
  }

  return result;
}

unint64_t sub_26241F420()
{
  result = qword_27FF0D080;
  if (!qword_27FF0D080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D080);
  }

  return result;
}

unint64_t sub_26241F478()
{
  result = qword_27FF0D088;
  if (!qword_27FF0D088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D088);
  }

  return result;
}

unint64_t sub_26241F4D0()
{
  result = qword_27FF0D090;
  if (!qword_27FF0D090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D090);
  }

  return result;
}

unint64_t sub_26241F528()
{
  result = qword_27FF0D098;
  if (!qword_27FF0D098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D098);
  }

  return result;
}

unint64_t sub_26241F580()
{
  result = qword_27FF0D0A0;
  if (!qword_27FF0D0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D0A0);
  }

  return result;
}

unint64_t sub_26241F5D8()
{
  result = qword_27FF0D0A8;
  if (!qword_27FF0D0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D0A8);
  }

  return result;
}

unint64_t sub_26241F630()
{
  result = qword_27FF0D0B0;
  if (!qword_27FF0D0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D0B0);
  }

  return result;
}

unint64_t sub_26241F688()
{
  result = qword_27FF0D0B8;
  if (!qword_27FF0D0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D0B8);
  }

  return result;
}

unint64_t sub_26241F6E0()
{
  result = qword_27FF0D0C0;
  if (!qword_27FF0D0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D0C0);
  }

  return result;
}

unint64_t sub_26241F738()
{
  result = qword_27FF0D0C8;
  if (!qword_27FF0D0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D0C8);
  }

  return result;
}

unint64_t sub_26241F790()
{
  result = qword_27FF0D0D0;
  if (!qword_27FF0D0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D0D0);
  }

  return result;
}

unint64_t sub_26241F7E8()
{
  result = qword_27FF0D0D8;
  if (!qword_27FF0D0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D0D8);
  }

  return result;
}

unint64_t sub_26241F840()
{
  result = qword_27FF0D0E0;
  if (!qword_27FF0D0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D0E0);
  }

  return result;
}

unint64_t sub_26241F898()
{
  result = qword_27FF0D0E8;
  if (!qword_27FF0D0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D0E8);
  }

  return result;
}

unint64_t sub_26241F8F0()
{
  result = qword_27FF0D0F0;
  if (!qword_27FF0D0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D0F0);
  }

  return result;
}

unint64_t sub_26241F948()
{
  result = qword_27FF0D0F8;
  if (!qword_27FF0D0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D0F8);
  }

  return result;
}

unint64_t sub_26241F9A0()
{
  result = qword_2813BDB08;
  if (!qword_2813BDB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BDB08);
  }

  return result;
}

unint64_t sub_26241F9F8()
{
  result = qword_2813BDB10;
  if (!qword_2813BDB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BDB10);
  }

  return result;
}

unint64_t sub_26241FA50()
{
  result = qword_27FF0D100;
  if (!qword_27FF0D100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D100);
  }

  return result;
}

unint64_t sub_26241FAA8()
{
  result = qword_27FF0D108;
  if (!qword_27FF0D108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D108);
  }

  return result;
}

unint64_t sub_26241FB00()
{
  result = qword_27FF0D110;
  if (!qword_27FF0D110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D110);
  }

  return result;
}

unint64_t sub_26241FB58()
{
  result = qword_27FF0D118;
  if (!qword_27FF0D118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D118);
  }

  return result;
}

unint64_t sub_26241FBB0()
{
  result = qword_2813BD910;
  if (!qword_2813BD910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BD910);
  }

  return result;
}

unint64_t sub_26241FC08()
{
  result = qword_2813BD918;
  if (!qword_2813BD918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BD918);
  }

  return result;
}

unint64_t sub_26241FC60()
{
  result = qword_27FF0D120;
  if (!qword_27FF0D120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D120);
  }

  return result;
}

unint64_t sub_26241FCB8()
{
  result = qword_27FF0D128;
  if (!qword_27FF0D128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D128);
  }

  return result;
}

unint64_t sub_26241FD10()
{
  result = qword_27FF0D130;
  if (!qword_27FF0D130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D130);
  }

  return result;
}

unint64_t sub_26241FD68()
{
  result = qword_27FF0D138;
  if (!qword_27FF0D138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D138);
  }

  return result;
}

uint64_t sub_26241FDBC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_26241FE98@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D140, &qword_262468FC0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v30 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_262420CE0();
  result = sub_262462D88();
  if (!v2)
  {
    v12 = sub_262462BC8();
    if (*(v12 + 16))
    {
      v13 = *(v12 + 32);

      v14 = *(sub_262462BC8() + 16);

      if (v14 == 1 || (sub_26240A510() & 1) != 0)
      {
        if (v13 > 6)
        {
          if (v13 == 7)
          {
            LOBYTE(v31[0]) = 7;
            a2[3] = &type metadata for StringRegexExtractAll;
            a2[4] = sub_26242306C();
            *a2 = swift_allocObject();
            sub_2624230C0();
            sub_262462BB8();
            return (*(v6 + 8))(v9, v5);
          }

          if (v13 == 8)
          {
            LOBYTE(v31[0]) = 8;
            a2[3] = &type metadata for StringListReplaceFailure;
            a2[4] = sub_262422FC4();
            *a2 = swift_allocObject();
            sub_262423018();
          }

          else
          {
            LOBYTE(v31[0]) = 9;
            a2[3] = &type metadata for StringListMatchCase;
            a2[4] = sub_262422F1C();
            *a2 = swift_allocObject();
            sub_262422F70();
          }

          sub_262462BB8();
        }

        else
        {
          if ((v13 - 3) < 4)
          {
            sub_2623F3CA4(a1, v31);
            a2[3] = type metadata accessor for StringListRule();
            a2[4] = sub_2624245A4(&qword_27FF0D1E0, type metadata accessor for StringListRule);
            boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
            sub_262420544(v31, boxed_opaque_existential_1);
            return (*(v6 + 8))(v9, v5);
          }

          if ((v13 - 1) < 2)
          {
            sub_2623F3CA4(a1, v31);
            v23 = sub_2624234E4(v31);
            v25 = v24;
            v27 = v26;
            a2[3] = &type metadata for StringListField;
            a2[4] = sub_2624238A0();
            *a2 = v23;
            a2[1] = v25;
            a2[2] = v27;
            return (*(v6 + 8))(v9, v5);
          }

          sub_2623F3CA4(a1, v31);
          v28 = sub_262423160(v31);
          a2[3] = &type metadata for StringListValue;
          v29 = v28;
          a2[4] = sub_2624238F4();
          *a2 = v29;
        }

        return (*(v6 + 8))(v9, v5);
      }
    }

    else
    {
    }

    v16 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v17 = sub_262462D78();
    v18 = sub_262427A60(v17);
    v20 = v19;

    sub_2623F1BBC();
    swift_allocError();
    *v21 = v18;
    *(v21 + 8) = v20;
    *(v21 + 16) = 0xD000000000000014;
    *(v21 + 24) = 0x8000000262468F60;
    v22 = v31[1];
    *(v21 + 32) = v31[0];
    *(v21 + 48) = v22;
    *(v21 + 64) = 3;
    swift_willThrow();
    return (*(v6 + 8))(v9, v5);
  }

  return result;
}

unint64_t sub_262420344(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0xD000000000000015;
    v6 = 0xD000000000000013;
    if (a1 == 8)
    {
      v6 = 0xD000000000000018;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x6C615673656C7572;
    if (a1 != 5)
    {
      v7 = 0x6369676F6CLL;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x65756C6176;
    v2 = 0x746C7561666564;
    v3 = 1701667182;
    if (a1 != 3)
    {
      v3 = 0xD000000000000010;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x6D614E646C656966;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_262420498@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_262424810(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2624204CC(uint64_t a1)
{
  v2 = sub_262420CE0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_262420508(uint64_t a1)
{
  v2 = sub_262420CE0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_262420544@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v41 = sub_262462A88();
  v37 = *(v41 - 8);
  v3 = *(v37 + 64);
  MEMORY[0x28223BE20](v41);
  v40 = v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C4E8, &qword_262463350);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v39 = v33 - v7;
  v38 = type metadata accessor for RulesValidity();
  v36 = *(v38 - 8);
  v8 = *(v36 + 64);
  MEMORY[0x28223BE20](v38);
  v10 = v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D238, &qword_262468FF8);
  v42 = *(v11 - 8);
  v12 = *(v42 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = v33 - v13;
  v15 = type metadata accessor for StringListRule();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = (v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_262423A98();
  v20 = v43;
  sub_262462D88();
  if (v20)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v34 = v10;
  v43 = v15;
  LOBYTE(v45[0]) = 0;
  *v18 = sub_262462B88();
  v18[1] = v22;
  v33[2] = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D220, &qword_262468FE0);
  LOBYTE(v44[0]) = 1;
  sub_2624239F0();
  sub_262462BB8();
  v18[2] = *&v45[0];
  LOBYTE(v45[0]) = 2;
  sub_2624245A4(&qword_2813BDBE8, type metadata accessor for RulesValidity);
  v23 = v38;
  v24 = v39;
  sub_262462B78();
  v25 = v43;
  v33[1] = 0;
  v41 = v14;
  v26 = v36 + 48;
  v27 = *(v36 + 48);
  if (v27(v24, 1, v23) == 1)
  {
    v36 = v26;
    v28 = v34;
    *v34 = 0;
    swift_storeEnumTagMultiPayload();
    v29 = v27(v24, 1, v23);
    v30 = v35;
    v31 = a1;
    if (v29 != 1)
    {
      sub_2623F39E0(v24, &qword_27FF0C4E8, &qword_262463350);
    }
  }

  else
  {
    v28 = v34;
    sub_2623F2530(v24, v34);
    v30 = v35;
    v31 = a1;
  }

  sub_2623F2530(v28, v18 + *(v25 + 24));
  v46 = 3;
  sub_262462B58();
  type metadata accessor for StringListExpressionDecoder();
  sub_26241FE98(v45, v44);
  v32 = v42;
  __swift_destroy_boxed_opaque_existential_1(v44);
  (*(v32 + 8))(v41, v11);
  sub_2623EB668(v45, v18 + *(v25 + 28));
  sub_262423AEC(v18, v30);
  __swift_destroy_boxed_opaque_existential_1(v31);
  return sub_262423B50(v18, type metadata accessor for StringListRule);
}

unint64_t sub_262420CE0()
{
  result = qword_27FF0D1A8;
  if (!qword_27FF0D1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D1A8);
  }

  return result;
}

uint64_t sub_262420D34(uint64_t a1)
{
  v2 = sub_262423948();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_262420D70(uint64_t a1)
{
  v2 = sub_262423948();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_262420DAC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_262423160(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_262420DD8(uint64_t a1)
{
  v2 = sub_26242399C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_262420E14(uint64_t a1)
{
  v2 = sub_26242399C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_262420E50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (a4)
  {
    *&v33 = a4;
    swift_bridgeObjectRetain_n();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C4C8, &qword_262463340);
    sub_262424D7C(&qword_27FF0D188);
    sub_2624629E8();
    if (!*(a1 + 16))
    {
      goto LABEL_9;
    }
  }

  else
  {
    v40 = 0;
    memset(v39, 0, sizeof(v39));

    if (!*(a1 + 16))
    {
LABEL_9:
      sub_2623F3970(v39, &v36);
      if (*(&v37 + 1))
      {
        v41 = v36;
        v42 = v37;
        v12 = v38;
        goto LABEL_15;
      }

      sub_2623F39E0(&v36, &qword_27FF0C5F0, &qword_262463A90);
      sub_2623F1BBC();
      swift_allocError();
      *v13 = a2;
      *(v13 + 8) = a3;
      v14 = v35;
      v15 = v34;
      *(v13 + 16) = v33;
      *(v13 + 32) = v15;
      *(v13 + 48) = v14;
      *(v13 + 64) = 6;
      swift_willThrow();
LABEL_26:

      sub_2623F39E0(v39, &qword_27FF0C5F0, &qword_262463A90);
      return v4;
    }
  }

  v8 = sub_2624414FC(a2, a3);
  if ((v9 & 1) == 0)
  {
    goto LABEL_9;
  }

  sub_2623F3970(*(a1 + 56) + 40 * v8, &v36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C5F0, &qword_262463A90);
  v10 = sub_262462918();
  v11 = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];

  swift_unknownObjectRelease();
  if (v10 != v11)
  {
    sub_2623F3970(&v36, &v33);
    if (*(&v34 + 1))
    {
      sub_2623F39E0(&v36, &qword_27FF0C5F0, &qword_262463A90);
      v41 = v33;
      v42 = v34;
      v12 = v35;
      goto LABEL_15;
    }

    sub_2623F39E0(&v33, &qword_27FF0C5F0, &qword_262463A90);
  }

  sub_2623F3970(v39, &v30);
  if (!*(&v31 + 1))
  {
    sub_2623F39E0(&v30, &qword_27FF0C5F0, &qword_262463A90);
    sub_2623F1BBC();
    swift_allocError();
    *v22 = a2;
    *(v22 + 8) = a3;
    v23 = v35;
    v24 = v34;
    *(v22 + 16) = v33;
    *(v22 + 32) = v24;
    *(v22 + 48) = v23;
    *(v22 + 64) = 5;
    swift_willThrow();
    sub_2623F39E0(&v36, &qword_27FF0C5F0, &qword_262463A90);
    goto LABEL_26;
  }

  sub_2623F39E0(&v36, &qword_27FF0C5F0, &qword_262463A90);
  v41 = v30;
  v42 = v31;
  v12 = v32;
LABEL_15:
  v43 = v12;
  sub_2623F39E0(v39, &qword_27FF0C5F0, &qword_262463A90);
  sub_2623F3A40(&v41, &v33);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C4C8, &qword_262463340);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v17 = sub_2624629D8();
    objc_opt_self();
    v18 = swift_dynamicCastObjCClass();
    if (v18 && (v19 = [v18 sequenceValue]) != 0)
    {
      v20 = v19;
      if ([v19 type] == 3)
      {

        v21 = [v20 stringValues];
        v4 = sub_262462848();

LABEL_23:
        sub_2623F3A9C(&v41);
        goto LABEL_24;
      }

      if (!v4)
      {
LABEL_28:
        *&v33 = v16;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D208, &qword_262468FD0);
        v25 = sub_262462728();
        v4 = v26;
        sub_2623F1BBC();
        swift_allocError();
        *v27 = a2;
        *(v27 + 8) = a3;
        *(v27 + 16) = v25;
        *(v27 + 24) = v4;
        v28 = v34;
        *(v27 + 32) = v33;
        *(v27 + 48) = v28;
        *(v27 + 64) = 7;
        swift_willThrow();
        sub_2623F3A9C(&v41);
        return v4;
      }
    }

    else
    {

      if (!v4)
      {
        goto LABEL_28;
      }
    }

    goto LABEL_23;
  }

  sub_2623F3A9C(&v41);
  v4 = *&v39[0];
LABEL_24:

  return v4;
}

uint64_t sub_26242134C(uint64_t *a1, uint64_t a2)
{
  v5 = sub_262420E50(a2, *v2, v2[1], v2[2]);
  result = v6;
  if (!v3)
  {
    *a1 = v5;
  }

  return result;
}

uint64_t sub_262421390@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2624234E4(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

uint64_t sub_2624213C0(uint64_t a1)
{
  v2 = sub_262423A98();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2624213FC(uint64_t a1)
{
  v2 = sub_262423A98();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_262421438(uint64_t a1)
{
  v4 = type metadata accessor for StringListRule();
  sub_2623F3CA4(v1 + *(v4 + 28), v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D198, qword_262468F60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D1A0, &qword_2624697E0);
  if (swift_dynamicCast())
  {
    sub_2623EB668(&v6, v8);
    sub_26240B280(v7, a1, *v1, v1[1], v1[2], v1 + *(v4 + 24), v8);
    result = __swift_destroy_boxed_opaque_existential_1(v8);
    if (!v2)
    {
      return v7[0];
    }
  }

  else
  {

    return 0;
  }

  return result;
}

uint64_t sub_262421534(uint64_t *a1, uint64_t a2)
{
  v4 = sub_262421438(a2);
  result = v5;
  if (!v2)
  {
    *a1 = v4;
  }

  return result;
}

uint64_t sub_262421584(uint64_t a1)
{
  v2 = sub_262424CC0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2624215C0(uint64_t a1)
{
  v2 = sub_262424CC0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2624215FC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D330, &qword_2624697D8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13[-1] - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_262424CC0();
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
  sub_262424D14(v15, a2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_262424D4C(v15);
}

char *sub_262421858(uint64_t a1)
{
  v3 = v1;
  v5 = v3[3];
  v6 = v3[4];
  v7 = __swift_project_boxed_opaque_existential_1(v3, v5);
  v8 = a1;
  v9 = v7;
  v10 = (*(*(v6 + 8) + 24))(v56, v8, v5);
  if (v2)
  {
    return v9;
  }

  v11 = *(&v56[0] + 1);
  v12 = v3[8];
  v13 = v3[9];
  v14 = v10;
  __swift_project_boxed_opaque_existential_1(v3 + 5, v12);
  (*(*(v13 + 8) + 24))(v56, v14, v12);

  v16 = *(&v56[0] + 1);
  if (!v11 || !*(&v56[0] + 1))
  {

    return 0;
  }

  v17 = *&v56[0];
  v18 = HIBYTE(*(&v56[0] + 1)) & 0xFLL;
  if ((*(&v56[0] + 1) & 0x2000000000000000) == 0)
  {
    v18 = *&v56[0] & 0xFFFFFFFFFFFFLL;
  }

  if (!v18)
  {

    v9 = 0x8000000262471940;
    sub_2623F1BBC();
    swift_allocError();
    *v20 = v17;
    *(v20 + 8) = v16;
    *(v20 + 16) = 0xD000000000000012;
    *(v20 + 24) = 0x8000000262471940;
    v21 = v56[1];
    *(v20 + 32) = v56[0];
    *(v20 + 48) = v21;
    *(v20 + 64) = 8;
    swift_willThrow();
    return v9;
  }

  v19 = objc_allocWithZone(MEMORY[0x277CCAC68]);

  v22 = sub_26244FF6C(v17, v16, 0);
  v23 = sub_2624626D8();
  v24 = sub_2624626D8();

  v25 = [v22 matchesInString:v24 options:0 range:{0, objc_msgSend(v23, sel_length)}];

  v47 = v22;
  sub_262424DE8();
  v26 = sub_262462848();

  if (v26 >> 62)
  {
    goto LABEL_34;
  }

  v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v27)
  {
LABEL_35:

    return MEMORY[0x277D84F90];
  }

  while (1)
  {
    v55 = MEMORY[0x277D84F90];
    result = sub_26243CD20(0, v27 & ~(v27 >> 63), 0);
    if (v27 < 0)
    {
      break;
    }

    v28 = 0;
    v9 = v55;
    v52 = v27;
    v53 = v26 & 0xC000000000000001;
    v48 = v26 + 32;
    v49 = v26 & 0xFFFFFFFFFFFFFF8;
    v50 = v26;
    while (1)
    {
      v29 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v53)
      {
        v30 = MEMORY[0x266728730]();
      }

      else
      {
        if (v28 >= *(v49 + 16))
        {
          goto LABEL_33;
        }

        v30 = *(v48 + 8 * v28);
      }

      v31 = v30;
      *&v56[0] = 0;
      *(&v56[0] + 1) = 0xE000000000000000;
      v32 = [v30 numberOfRanges];
      if (v32 < 1)
      {
        goto LABEL_32;
      }

      v54 = v29;
      if (v32 == 1)
      {

        v33 = 0;
        v34 = 0xE000000000000000;
      }

      else
      {
        v35 = v32;
        v51 = v9;
        v36 = 1;
        do
        {
          v37 = v36 + 1;
          v38 = [v31 rangeAtIndex_];
          v40 = [v23 substringWithRange_];
          v41 = sub_2624626E8();
          v43 = v42;

          MEMORY[0x266728460](v41, v43);

          v36 = v37;
        }

        while (v35 != v37);

        v34 = *(&v56[0] + 1);
        v33 = *&v56[0];
        v26 = v50;
        v9 = v51;
      }

      v45 = *(v9 + 16);
      v44 = *(v9 + 24);
      if (v45 >= v44 >> 1)
      {
        sub_26243CD20((v44 > 1), v45 + 1, 1);
      }

      *(v9 + 16) = v45 + 1;
      v46 = v9 + 16 * v45;
      *(v46 + 32) = v33;
      *(v46 + 40) = v34;
      v28 = v54;
      if (v54 == v52)
      {

        return v9;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    v27 = sub_262462AD8();
    if (!v27)
    {
      goto LABEL_35;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_262421D84(char **a1, uint64_t a2)
{
  v4 = sub_262421858(a2);
  result = v5;
  if (!v2)
  {
    *a1 = v4;
  }

  return result;
}

uint64_t sub_262421DD4(uint64_t a1)
{
  v2 = sub_262424C04();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_262421E10(uint64_t a1)
{
  v2 = sub_262424C04();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_262421E4C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v4 = sub_262462A88();
  v18 = *(v4 - 8);
  v5 = *(v18 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D320, &qword_2624697D0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v17 - v11;
  v14 = a1[3];
  v13 = a1[4];
  v20 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_262424C04();
  sub_262462D88();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v20);
  }

  v17[3] = v7;
  v15 = v19;
  v25 = 0;
  sub_262462B58();
  type metadata accessor for StringListExpressionDecoder();
  sub_26241FE98(v21, v22);
  __swift_destroy_boxed_opaque_existential_1(v21);
  sub_2623EB668(v22, v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D220, &qword_262468FE0);
  LOBYTE(v21[0]) = 1;
  sub_2624239F0();
  sub_262462BB8();
  (*(v9 + 8))(v12, v8);
  v24 = *&v22[0];
  sub_262424C58(v23, v15);
  __swift_destroy_boxed_opaque_existential_1(v20);
  return sub_262424C90(v23);
}

uint64_t sub_26242228C(uint64_t a1)
{
  sub_2623F3CA4(v1, &v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D198, qword_262468F60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D1A0, &qword_2624697E0);
  if (!swift_dynamicCast())
  {

    return 0;
  }

  sub_2623EB668(v12, v20);
  v4 = *(v1 + 40);
  v5 = v21;
  v6 = v22;
  __swift_project_boxed_opaque_existential_1(v20, v21);
  v7 = *(v6 + 24);

  v7(&v23, a1, v5, v6);
  if (!v2)
  {

    goto LABEL_7;
  }

  v19 = v2;
  v8 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C638, &qword_26246BDD0);
  if (swift_dynamicCast())
  {
    MEMORY[0x266728D50](v2);
    v12[2] = v16;
    v12[3] = v17;
    v13 = v18;
    v12[0] = v14;
    v12[1] = v15;
    v23 = v4;
    v10[2] = v16;
    v10[3] = v17;
    v11 = v18;
    v10[0] = v14;
    v10[1] = v15;
    sub_262427BA0(a1, v10);
    sub_2623F3C50(v12);
    MEMORY[0x266728D50](v19);
LABEL_7:
    __swift_destroy_boxed_opaque_existential_1(v20);
    return v23;
  }

  MEMORY[0x266728D50](v19);
  return __swift_destroy_boxed_opaque_existential_1(v20);
}

uint64_t sub_262422478(uint64_t *a1, uint64_t a2)
{
  v4 = sub_26242228C(a2);
  result = v5;
  if (!v2)
  {
    *a1 = v4;
  }

  return result;
}

uint64_t sub_2624224C8(uint64_t a1)
{
  v2 = sub_262424B48();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_262422504(uint64_t a1)
{
  v2 = sub_262424B48();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_262422540@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C5C0, &qword_262467DD0);
  v50 = *(v4 - 8);
  v5 = *(v50 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v41 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D310, &qword_2624697C8);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v41 - v11;
  v14 = a1[3];
  v13 = a1[4];
  v60 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_262424B48();
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
  type metadata accessor for StringListExpressionDecoder();
  sub_26241FE98(v55, v56);
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
    sub_262424B9C(v57, v49);
    __swift_destroy_boxed_opaque_existential_1(v60);
    return sub_262424BD4(v57);
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

    sub_26241FE98(v55, v56);
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
        sub_262461AAC();
        if (v33)
        {
          goto LABEL_5;
        }
      }
    }

    else
    {
      sub_26246054C(v32, isUniquelyReferenced_nonNull_native);
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