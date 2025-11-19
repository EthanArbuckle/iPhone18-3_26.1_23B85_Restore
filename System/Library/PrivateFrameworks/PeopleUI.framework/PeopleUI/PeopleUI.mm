uint64_t sub_25E203A08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE0780, &qword_25E217BB8);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_25E203AC4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE0780, &qword_25E217BB8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_25E203B78(uint64_t a1, int a2)
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

uint64_t sub_25E203B98(uint64_t result, int a2, int a3)
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

uint64_t sub_25E203C28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25E217124();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 80);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_25E203CE8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_25E217124();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 80) = (a2 - 1);
  }

  return result;
}

uint64_t sub_25E203DA4(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t get_enum_tag_for_layout_string_8PeopleUI11BadgeStatus_pSg_0(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_25E203DD4()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_25E203E1C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_25E203ED8()
{
  v1 = *v0;
  sub_25E217654();
  MEMORY[0x25F8AF560]((v1 & 1) == 0);
  return sub_25E217674();
}

uint64_t sub_25E203F58()
{
  v1 = *v0;
  sub_25E217654();
  MEMORY[0x25F8AF560]((v1 & 1) == 0);
  return sub_25E217674();
}

void *sub_25E203FA0@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  if (*result == 1)
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  *a2 = v3;
  return result;
}

uint64_t sub_25E203FD4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25E216D24();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t MetricTemplateView.init(dragRefresh:)@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v39 = a1;
  v3 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE0720, &qword_25E217B70) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v5 = &v38 - v4;
  *&v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE0728, &qword_25E217B78);
  v6 = *(v38 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v9 = &v38 - v8;
  v10 = sub_25E216D04();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = (MEMORY[0x28223BE20])();
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v38 - v16;
  v40 = sub_25E216FE4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE0730, &unk_25E217B80);
  sub_25E217394();
  v18 = v42;
  *(a2 + 8) = v41;
  *(a2 + 16) = v18;
  v19 = type metadata accessor for MetricTemplateView(0);
  v20 = v19[6];
  sub_25E216CF4();
  (*(v11 + 16))(v15, v17, v10);
  sub_25E217394();
  (*(v11 + 8))(v17, v10);
  v21 = v19[7];
  *(a2 + v21) = _s6People19MessagePersonStatusV0A2UIE14iconForeground05SwiftE05ColorVvg_0();
  v22 = v19[8];
  *(a2 + v22) = sub_25E2172F4();
  v23 = v19[9];
  sub_25E2044E0();
  sub_25E216F24();
  sub_25E216CA4();
  (*(v6 + 8))(v9, v38);
  v24 = [objc_opt_self() mainRunLoop];
  v25 = *MEMORY[0x277CBE738];
  v26 = sub_25E217594();
  (*(*(v26 - 8) + 56))(v5, 1, 1, v26);
  v27 = sub_25E217584();

  sub_25E20C1A8(v5, &qword_27FCE0720, &qword_25E217B70);
  v41 = v27;
  sub_25E217574();
  sub_25E20BEA8(&qword_27FCE0740, MEMORY[0x277CC9DF0]);
  v28 = sub_25E217144();

  *(a2 + v23) = v28;
  v29 = v19[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE0748, &qword_25E2182C0);
  v30 = swift_allocObject();
  v38 = xmmword_25E217B60;
  *(v30 + 16) = xmmword_25E217B60;
  *(v30 + 32) = sub_25E216F04();
  *(v30 + 40) = v31;
  *(v30 + 48) = sub_25E216F14();
  *(v30 + 56) = v32;
  *(a2 + v29) = v30;
  v33 = v19[11];
  v34 = swift_allocObject();
  *(v34 + 16) = v38;
  *(v34 + 32) = sub_25E216FB4();
  *(v34 + 40) = v35;
  result = sub_25E216FC4();
  *(v34 + 48) = result;
  *(v34 + 56) = v37;
  *(a2 + v33) = v34;
  *a2 = v39;
  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_25E2044E0()
{
  result = qword_27FCE0738;
  if (!qword_27FCE0738)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FCE0738);
  }

  return result;
}

uint64_t sub_25E20452C()
{
  v49 = sub_25E216DB4();
  v44 = *(v49 - 8);
  v0 = *(v44 + 64);
  MEMORY[0x28223BE20](v49);
  v42 = &v38 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE0880, &qword_25E217E40);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v46 = &v38 - v4;
  v41 = sub_25E216D04();
  v5 = *(v41 - 8);
  v6 = v5[8];
  v7 = MEMORY[0x28223BE20](v41);
  v51 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v38 - v9;
  v11 = sub_25E216DC4();
  v39 = v11;
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v38 - v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE0918, &qword_25E217EB0);
  v19 = v5[9];
  v40 = v5;
  v20 = (*(v40 + 80) + 32) & ~*(v40 + 80);
  v47 = v19;
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_25E217B60;
  v48 = v21;
  v22 = v21 + v20;
  sub_25E216DA4();
  sub_25E216CF4();
  v45 = v22;
  sub_25E216D74();
  v23 = v5[1];
  v24 = v41;
  v23(v10, v41);
  v25 = *(v12 + 8);
  v38 = v12 + 8;
  v25(v18, v11);
  v50 = v16;
  sub_25E216DA4();
  sub_25E216DA4();
  v26 = v44;
  v27 = v42;
  v28 = v49;
  (*(v44 + 104))(v42, *MEMORY[0x277CC9968], v49);
  sub_25E216CF4();
  v29 = v46;
  sub_25E216D94();
  v43 = v23;
  v23(v10, v24);
  v30 = v27;
  v31 = v28;
  v32 = v40;
  v33 = v39;
  (*(v26 + 8))(v30, v31);
  v25(v18, v33);
  v34 = v32[6];
  if (v34(v29, 1, v24) == 1)
  {
    v35 = v51;
    sub_25E216CF4();
    if (v34(v29, 1, v24) != 1)
    {
      sub_25E20C1A8(v29, &qword_27FCE0880, &qword_25E217E40);
    }
  }

  else
  {
    v35 = v51;
    (v32[4])(v51, v29, v24);
  }

  v36 = v50;
  sub_25E216D74();
  v43(v35, v24);
  v25(v36, v33);
  return v48;
}

uint64_t sub_25E2049BC()
{
  v29 = sub_25E216DC4();
  v1 = *(v29 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v29);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ActionPoint(0);
  v27 = *(v5 - 8);
  v28 = v5;
  v6 = *(v27 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v26 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v24 - v9;
  v11 = MEMORY[0x277D84F90];
  v34 = MEMORY[0x277D84F90];
  v12 = *(v0 + *(type metadata accessor for MetricTemplateView(0) + 40));
  v31 = v0;
  v32 = &v34;
  result = sub_25E2052B8(sub_25E20C3A4, v30, v12);
  v14 = v34;
  v25 = *(v34 + 16);
  if (v25)
  {
    v15 = 0;
    v24 = v34;
    while (v15 < *(v14 + 16))
    {
      v16 = (*(v27 + 80) + 32) & ~*(v27 + 80);
      v17 = *(v27 + 72);
      sub_25E20C224(v14 + v16 + v17 * v15, v10, type metadata accessor for ActionPoint);
      sub_25E216DA4();
      v18 = *(v28 + 24);
      v19 = sub_25E216D84();
      (*(v1 + 8))(v4, v29);
      if (v19)
      {
        sub_25E20C28C(v10, v26, type metadata accessor for ActionPoint);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v33 = v11;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_25E210EE4(0, *(v11 + 16) + 1, 1);
          v11 = v33;
        }

        v22 = *(v11 + 16);
        v21 = *(v11 + 24);
        if (v22 >= v21 >> 1)
        {
          sub_25E210EE4(v21 > 1, v22 + 1, 1);
          v11 = v33;
        }

        *(v11 + 16) = v22 + 1;
        result = sub_25E20C28C(v26, v11 + v16 + v22 * v17, type metadata accessor for ActionPoint);
        v14 = v24;
      }

      else
      {
        result = sub_25E20C3C0(v10, type metadata accessor for ActionPoint);
      }

      if (v25 == ++v15)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_12:

    v23 = *(v11 + 16);

    if (!v23)
    {

      return 0;
    }

    return v11;
  }

  return result;
}

uint64_t sub_25E204D00(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = *(a2 + *(type metadata accessor for MetricTemplateView(0) + 44));
  v9[2] = a2;
  v9[3] = v5;
  v9[4] = v6;
  v9[5] = a3;
  return sub_25E2052B8(sub_25E20C420, v9, v7);
}

uint64_t sub_25E204D7C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, size_t *a5)
{
  v61 = type metadata accessor for ActionPoint(0);
  v59 = *(v61 - 8);
  v10 = *(v59 + 64);
  v11 = MEMORY[0x28223BE20](v61);
  v57 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v58 = &v53 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE0880, &qword_25E217E40);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v53 - v16;
  v18 = sub_25E216D04();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v18);
  v54 = &v53 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v60 = &v53 - v23;
  v25 = *a1;
  v24 = a1[1];
  v55 = a3;
  v56 = a4;
  v26 = sub_25E216FA4();
  v28 = v27;
  v29 = *(a2 + 16);
  v62 = *(a2 + 8);
  v63 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE07F8, &qword_25E217DE8);
  sub_25E2173A4();
  v30 = v65;
  if (!*(v65 + 16))
  {

    goto LABEL_10;
  }

  v53 = a5;
  v31 = sub_25E2112B8(v26, v28);
  v33 = v32;

  if ((v33 & 1) == 0)
  {
LABEL_10:

    (*(v19 + 56))(v17, 1, 1, v18);
    return sub_25E20C1A8(v17, &qword_27FCE0880, &qword_25E217E40);
  }

  sub_25E20C044(*(v30 + 56) + 32 * v31, v64);

  v34 = swift_dynamicCast();
  (*(v19 + 56))(v17, v34 ^ 1u, 1, v18);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    return sub_25E20C1A8(v17, &qword_27FCE0880, &qword_25E217E40);
  }

  v35 = v60;
  (*(v19 + 32))(v60, v17, v18);
  v36 = *(v19 + 16);
  v37 = v54;
  v36(v54, v35, v18);
  v38 = v57;
  sub_25E216D14();
  v39 = v61;
  v40 = (v38 + *(v61 + 20));
  v41 = v56;
  *v40 = v55;
  v40[1] = v41;
  v36((v38 + *(v39 + 24)), v37, v18);
  v64[0] = sub_25E217474();
  v64[1] = v42;
  v62 = 0x656E696C656D6974;
  v63 = 0xE800000000000000;
  sub_25E20BFD0();

  v43 = sub_25E2175B4();
  v44 = *(v19 + 8);
  v44(v37, v18);

  *(v38 + *(v61 + 28)) = (v43 & 1) == 0;
  v45 = v58;
  sub_25E20C28C(v38, v58, type metadata accessor for ActionPoint);
  v46 = v53;
  v47 = *v53;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v46 = v47;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v47 = sub_25E20E4BC(0, v47[2] + 1, 1, v47);
    *v46 = v47;
  }

  v50 = v47[2];
  v49 = v47[3];
  if (v50 >= v49 >> 1)
  {
    *v46 = sub_25E20E4BC(v49 > 1, v50 + 1, 1, v47);
  }

  v44(v60, v18);
  v51 = *v46;
  *(v51 + 16) = v50 + 1;
  return sub_25E20C28C(v45, v51 + ((*(v59 + 80) + 32) & ~*(v59 + 80)) + *(v59 + 72) * v50, type metadata accessor for ActionPoint);
}

uint64_t sub_25E2052B8(uint64_t result, uint64_t a2, uint64_t a3)
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

uint64_t sub_25E20534C()
{
  v32 = sub_25E216DC4();
  v1 = *(v32 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SignalPoint(0);
  v30 = *(v5 - 8);
  v31 = v5;
  v6 = *(v30 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v29 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v27 - v10;
  v12 = MEMORY[0x277D84F90];
  v37 = MEMORY[0x277D84F90];
  v13 = MEMORY[0x25F8AEED0](v9);
  v34 = v0;
  v35 = &v37;
  sub_25E2052B8(sub_25E20C208, v33, v13);

  v15 = v37;
  v16 = *(v37 + 16);
  if (v16)
  {
    v17 = 0;
    v18 = (v1 + 8);
    v27 = *(v37 + 16);
    v28 = v37;
    while (v17 < *(v15 + 16))
    {
      v19 = (*(v30 + 80) + 32) & ~*(v30 + 80);
      v20 = *(v30 + 72);
      sub_25E20C224(v15 + v19 + v20 * v17, v11, type metadata accessor for SignalPoint);
      sub_25E216DA4();
      v21 = *(v31 + 24);
      v22 = sub_25E216D84();
      (*v18)(v4, v32);
      if (v22)
      {
        sub_25E20C28C(v11, v29, type metadata accessor for SignalPoint);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v36 = v12;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_25E210F28(0, *(v12 + 16) + 1, 1);
          v12 = v36;
        }

        v25 = *(v12 + 16);
        v24 = *(v12 + 24);
        if (v25 >= v24 >> 1)
        {
          sub_25E210F28(v24 > 1, v25 + 1, 1);
          v12 = v36;
        }

        *(v12 + 16) = v25 + 1;
        result = sub_25E20C28C(v29, v12 + v19 + v25 * v20, type metadata accessor for SignalPoint);
        v16 = v27;
        v15 = v28;
      }

      else
      {
        result = sub_25E20C3C0(v11, type metadata accessor for SignalPoint);
      }

      if (v16 == ++v17)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_12:

    v26 = *(v12 + 16);

    if (!v26)
    {

      return 0;
    }

    return v12;
  }

  return result;
}

uint64_t sub_25E20568C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_25E216D04();
  v8 = *(v7 - 8);
  v60 = v7;
  v61 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v58 = v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for SignalPoint(0);
  v57 = *(v59 - 8);
  v11 = *(v57 + 64);
  MEMORY[0x28223BE20](v59);
  v13 = v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE0910, &qword_25E217EA8);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = v46 - v16;
  v18 = sub_25E217004();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v51 = v46 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a1[1];
  v23 = *a1;
  v24 = *(a2 + 16);
  v62 = *(a2 + 8);
  v63 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE07F8, &qword_25E217DE8);
  sub_25E2173A4();
  v25 = v65;
  if (!*(v65 + 16) || (v26 = sub_25E2112B8(v23, v22), (v27 & 1) == 0))
  {

    (*(v19 + 56))(v17, 1, 1, v18);
    return sub_25E20C1A8(v17, &qword_27FCE0910, &qword_25E217EA8);
  }

  v56 = v22;
  sub_25E20C044(*(v25 + 56) + 32 * v26, v64);

  v28 = swift_dynamicCast();
  (*(v19 + 56))(v17, v28 ^ 1u, 1, v18);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    return sub_25E20C1A8(v17, &qword_27FCE0910, &qword_25E217EA8);
  }

  (*(v19 + 32))(v51, v17, v18);
  v29 = sub_25E216FF4();
  v30 = *(v29 + 16);
  if (v30)
  {
    v55 = v23;
    v47 = v19;
    v48 = v18;
    v49 = a3;
    v50 = v3;
    v64[0] = MEMORY[0x277D84F90];
    sub_25E210F28(0, v30, 0);
    v31 = v64[0];
    v54 = *(v61 + 16);
    v32 = (*(v61 + 80) + 32) & ~*(v61 + 80);
    v46[1] = v29;
    v33 = v29 + v32;
    v34 = *(v61 + 72);
    v61 += 16;
    v52 = (v61 - 8);
    v53 = v34;
    do
    {
      v35 = v13;
      v36 = v58;
      v37 = v60;
      v38 = v54;
      v54(v58, v33, v60);
      v39 = v59;
      v38(v35 + *(v59 + 24), v36, v37);
      v40 = v56;

      sub_25E216D14();
      v41 = v36;
      v13 = v35;
      (*v52)(v41, v37);
      v42 = (v35 + *(v39 + 20));
      *v42 = v55;
      v42[1] = v40;
      v64[0] = v31;
      v44 = *(v31 + 16);
      v43 = *(v31 + 24);
      if (v44 >= v43 >> 1)
      {
        sub_25E210F28(v43 > 1, v44 + 1, 1);
        v31 = v64[0];
      }

      *(v31 + 16) = v44 + 1;
      sub_25E20C28C(v35, v31 + ((*(v57 + 80) + 32) & ~*(v57 + 80)) + *(v57 + 72) * v44, type metadata accessor for SignalPoint);
      v33 += v53;
      --v30;
    }

    while (v30);

    v19 = v47;
    v18 = v48;
  }

  else
  {

    v31 = MEMORY[0x277D84F90];
  }

  sub_25E205BA8(v31);
  return (*(v19 + 8))(v51, v18);
}

uint64_t sub_25E205BA8(uint64_t result)
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
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v16 = v4 + v2;
  }

  else
  {
    v16 = v4;
  }

  v3 = sub_25E20E4E4(isUniquelyReferenced_nonNull_native, v16, 1, v3);
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
  v9 = (v3[3] >> 1) - v3[2];
  result = type metadata accessor for SignalPoint(0);
  v10 = *(result - 8);
  if (v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = *(v10 + 72);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v13 = v3[2];
  v14 = __OFADD__(v13, v2);
  v15 = v13 + v2;
  if (!v14)
  {
    v3[2] = v15;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_25E205CD4()
{
  v8 = 0;
  v9 = 0xE000000000000000;
  v1 = MEMORY[0x25F8AEED0]();
  v6 = v0;
  v7 = &v8;
  sub_25E2052B8(sub_25E20C18C, &v5, v1);

  v2 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v2 = v8 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v3 = sub_25E217494();
  }

  else
  {

    return 0x2064657461647055;
  }

  return v3;
}

uint64_t sub_25E205D9C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v62 = sub_25E216DC4();
  v56 = *(v62 - 8);
  v7 = *(v56 + 64);
  MEMORY[0x28223BE20](v62);
  v61 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_25E216D04();
  v63 = *(v54 - 8);
  v9 = *(v63 + 64);
  v10 = MEMORY[0x28223BE20](v54);
  v60 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v53 = &v45 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE0910, &qword_25E217EA8);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v45 - v15;
  v17 = sub_25E217004();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *a1;
  v22 = a1[1];
  v24 = *(a2 + 16);
  v64 = *(a2 + 8);
  v65 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE07F8, &qword_25E217DE8);
  sub_25E2173A4();
  v25 = v68;
  if (!*(v68 + 16) || (v26 = sub_25E2112B8(v23, v22), (v27 & 1) == 0))
  {

    (*(v18 + 56))(v16, 1, 1, v17);
    return sub_25E20C1A8(v16, &qword_27FCE0910, &qword_25E217EA8);
  }

  sub_25E20C044(*(v25 + 56) + 32 * v26, &v66);

  v28 = swift_dynamicCast();
  (*(v18 + 56))(v16, v28 ^ 1u, 1, v17);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    return sub_25E20C1A8(v16, &qword_27FCE0910, &qword_25E217EA8);
  }

  v46 = v22;
  v47 = a3;
  v50 = v17;
  v51 = v3;
  v49 = v18;
  (*(v18 + 32))(v21, v16, v17);
  v48 = v21;
  result = sub_25E216FF4();
  v59 = *(result + 16);
  if (v59)
  {
    v30 = 0;
    v56 += 8;
    v57 = v63 + 16;
    v52 = (v63 + 8);
    v55 = (v63 + 32);
    v31 = MEMORY[0x277D84F90];
    v33 = v53;
    v32 = v54;
    v58 = v23;
    while (v30 < *(result + 16))
    {
      v34 = (*(v63 + 80) + 32) & ~*(v63 + 80);
      v35 = result;
      v36 = *(v63 + 72);
      (*(v63 + 16))(v33, result + v34 + v36 * v30, v32);
      v37 = v61;
      sub_25E216DA4();
      v38 = sub_25E216D84();
      (*v56)(v37, v62);
      if (v38)
      {
        v39 = *v55;
        (*v55)(v60, v33, v32);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v66 = v31;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_25E210F6C(0, *(v31 + 16) + 1, 1);
          v31 = v66;
        }

        v42 = *(v31 + 16);
        v41 = *(v31 + 24);
        if (v42 >= v41 >> 1)
        {
          sub_25E210F6C(v41 > 1, v42 + 1, 1);
          v31 = v66;
        }

        *(v31 + 16) = v42 + 1;
        v32 = v54;
        v39((v31 + v34 + v42 * v36), v60, v54);
        v33 = v53;
      }

      else
      {
        (*v52)(v33, v32);
      }

      ++v30;
      v23 = v58;
      result = v35;
      if (v59 == v30)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  else
  {
    v31 = MEMORY[0x277D84F90];
LABEL_18:

    if (*(v31 + 16))
    {
      v66 = v23;
      v67 = v46;

      MEMORY[0x25F8AF3C0](8250, 0xE200000000000000);
      v43 = *(v31 + 16);

      v64 = v43;
      v44 = sub_25E217624();
      MEMORY[0x25F8AF3C0](v44);

      MEMORY[0x25F8AF3C0](10, 0xE100000000000000);
      MEMORY[0x25F8AF3C0](v66, v67);

      return (*(v49 + 8))(v48, v50);
    }

    else
    {
      (*(v49 + 8))(v48, v50);
    }
  }

  return result;
}

uint64_t sub_25E2063B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE0880, &qword_25E217E40);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v16 - v4;
  v6 = sub_25E216D04();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25E20C0A0(a1, v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_25E20C1A8(v5, &qword_27FCE0880, &qword_25E217E40);
    return 0x6E776F6E6B6E55;
  }

  else
  {
    (*(v7 + 32))(v10, v5, v6);
    v12 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    [v12 setTimeStyle_];
    [v12 setDateStyle_];
    v13 = sub_25E216CE4();
    v14 = [v12 stringFromDate_];

    v15 = sub_25E217454();
    (*(v7 + 8))(v10, v6);
    return v15;
  }
}

uint64_t sub_25E2065DC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE0880, &qword_25E217E40);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v18 - v3;
  v5 = sub_25E216FA4();
  v7 = v6;
  v8 = *(v0 + 16);
  v20 = *(v0 + 8);
  v21 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE07F8, &qword_25E217DE8);
  sub_25E2173A4();
  v9 = v19;
  if (!*(v19 + 16))
  {

    goto LABEL_5;
  }

  v10 = sub_25E2112B8(v5, v7);
  v12 = v11;

  if ((v12 & 1) == 0)
  {
LABEL_5:

    v15 = sub_25E216D04();
    (*(*(v15 - 8) + 56))(v4, 1, 1, v15);
    goto LABEL_6;
  }

  sub_25E20C044(*(v9 + 56) + 32 * v10, v22);

  v13 = sub_25E216D04();
  v14 = swift_dynamicCast();
  (*(*(v13 - 8) + 56))(v4, v14 ^ 1u, 1, v13);
LABEL_6:
  v16 = sub_25E2063B4(v4);
  sub_25E20C1A8(v4, &qword_27FCE0880, &qword_25E217E40);
  return v16;
}

unint64_t sub_25E2067E0()
{
  sub_25E216F04();
  sub_25E216FB4();
  v0 = sub_25E2065DC();
  v2 = v1;

  sub_25E216F14();
  sub_25E216FB4();
  v3 = sub_25E2065DC();
  v5 = v4;

  sub_25E216F04();
  sub_25E216FC4();
  v11 = sub_25E2065DC();
  v7 = v6;

  sub_25E216F14();
  sub_25E216FC4();
  v12 = sub_25E2065DC();
  v9 = v8;

  sub_25E2175D4();

  MEMORY[0x25F8AF3C0](v0, v2);

  MEMORY[0x25F8AF3C0](10, 0xE100000000000000);
  sub_25E2175D4();

  MEMORY[0x25F8AF3C0](v3, v5);

  MEMORY[0x25F8AF3C0](10, 0xE100000000000000);

  MEMORY[0x25F8AF3C0](0xD000000000000019, 0x800000025E218850);

  MEMORY[0x25F8AF3C0](10, 0xE100000000000000);

  sub_25E2175D4();

  MEMORY[0x25F8AF3C0](v11, v7);

  MEMORY[0x25F8AF3C0](10, 0xE100000000000000);

  MEMORY[0x25F8AF3C0](0xD00000000000001FLL, 0x800000025E218870);

  sub_25E2175D4();

  MEMORY[0x25F8AF3C0](v12, v9);

  MEMORY[0x25F8AF3C0](10, 0xE100000000000000);

  MEMORY[0x25F8AF3C0](0xD000000000000021, 0x800000025E218890);

  return 0xD000000000000017;
}

uint64_t sub_25E206B54(void (*a1)(void), void (*a2)(void))
{
  a1();
  a2();
  v4 = sub_25E216FA4();
  v6 = v5;

  v7 = *(v2 + 16);
  v13[0] = *(v2 + 8);
  v13[1] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE07F8, &qword_25E217DE8);
  sub_25E2173A4();
  if (!*(v12 + 16))
  {

    goto LABEL_6;
  }

  v8 = sub_25E2112B8(v4, v6);
  v10 = v9;

  if ((v10 & 1) == 0)
  {
LABEL_6:

    return 0;
  }

  sub_25E20C044(*(v12 + 56) + 32 * v8, v13);

  if (swift_dynamicCast())
  {
    return v12;
  }

  return 0;
}

uint64_t sub_25E206C8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE0800, &qword_25E217DF0);
  v69 = *(v67 - 8);
  v3 = v69[8];
  v4 = MEMORY[0x28223BE20](v67);
  v66 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v46 - v6;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE0808, &qword_25E217DF8);
  v68 = *(v54 - 8);
  v8 = v68[8];
  v9 = MEMORY[0x28223BE20](v54);
  v62 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v46 - v11;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE0810, &qword_25E217E00);
  v63 = *(v65 - 8);
  v13 = v63[8];
  v14 = MEMORY[0x28223BE20](v65);
  v64 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v46 - v16;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE0818, &qword_25E217E08);
  v60 = *(v59 - 8);
  v18 = v60[8];
  v19 = MEMORY[0x28223BE20](v59);
  v61 = &v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v58 = &v46 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v57 = &v46 - v24;
  MEMORY[0x28223BE20](v23);
  v26 = &v46 - v25;
  v74 = a1;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE0820, &qword_25E217E10);
  sub_25E20C35C(&qword_27FCE0828, &qword_27FCE0820, &qword_25E217E10);
  v53 = v26;
  sub_25E2173D4();
  v73 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE0830, &qword_25E217E18);
  sub_25E20BF00();
  v52 = v17;
  sub_25E2173D4();
  v72 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE0850, &qword_25E217E28);
  sub_25E20C35C(&qword_27FCE0858, &qword_27FCE0850, &qword_25E217E28);
  v51 = v12;
  sub_25E2173D4();
  v71 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE0860, &qword_25E217E30);
  sub_25E20C35C(&qword_27FCE0868, &qword_27FCE0860, &qword_25E217E30);
  v50 = v7;
  sub_25E2173D4();
  v70 = a1;
  v27 = v57;
  sub_25E2173D4();
  v56 = v60[2];
  v28 = v58;
  v56(v58, v26, v59);
  v49 = v63[2];
  v49(v64, v17, v65);
  v48 = v68[2];
  v29 = v62;
  v30 = v54;
  v48(v62, v12, v54);
  v47 = v69[2];
  v47(v66, v7, v67);
  v31 = v27;
  v32 = v59;
  v33 = v56;
  v56(v61, v31, v59);
  v34 = v55;
  v33(v55, v28, v32);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE0870, &qword_25E217E38);
  v49((v34 + v35[12]), v64, v65);
  v36 = v29;
  v37 = v30;
  v48((v34 + v35[16]), v36, v30);
  v38 = v67;
  v47((v34 + v35[20]), v66, v67);
  v39 = v61;
  v56((v34 + v35[24]), v61, v32);
  v40 = v60[1];
  v40(v57, v32);
  v41 = v69[1];
  ++v69;
  v41(v50, v38);
  v42 = v68[1];
  ++v68;
  v42(v51, v37);
  v43 = v63[1];
  v44 = v65;
  v43(v52, v65);
  v40(v53, v32);
  v40(v39, v32);
  v41(v66, v67);
  v42(v62, v37);
  v43(v64, v44);
  return (v40)(v58, v32);
}

uint64_t sub_25E207508@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE0880, &qword_25E217E40);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v32 - v4;
  v6 = sub_25E2171F4();
  v33 = v7;
  v34 = v6;
  HIDWORD(v32) = v8;
  v35 = v9;
  v10 = *(type metadata accessor for MetricTemplateView(0) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE0780, &qword_25E217BB8);
  sub_25E2173A4();
  v11 = sub_25E216D04();
  (*(*(v11 - 8) + 56))(v5, 0, 1, v11);
  v12 = sub_25E2063B4(v5);
  v14 = v13;
  sub_25E20C1A8(v5, &qword_27FCE0880, &qword_25E217E40);
  v37 = 0x203A646564616F4CLL;
  v38 = 0xE800000000000000;
  MEMORY[0x25F8AF3C0](v12, v14);

  sub_25E20BFD0();
  v15 = sub_25E217224();
  v17 = v16;
  v19 = v18;
  sub_25E217194();
  v20 = sub_25E217204();
  v22 = v21;
  v24 = v23;
  v26 = v25;

  sub_25E20C024(v15, v17, v19 & 1);

  v27 = BYTE4(v32) & 1;
  v36 = BYTE4(v32) & 1;
  LOBYTE(v37) = BYTE4(v32) & 1;
  v39 = v24 & 1;
  v29 = v33;
  v28 = v34;
  *a1 = v34;
  *(a1 + 8) = v29;
  *(a1 + 16) = v27;
  *(a1 + 24) = v35;
  *(a1 + 32) = v20;
  *(a1 + 40) = v22;
  *(a1 + 48) = v24 & 1;
  *(a1 + 56) = v26;
  v30 = v28;
  sub_25E20C034(v28, v29, v27);

  sub_25E20C034(v20, v22, v24 & 1);

  sub_25E20C024(v20, v22, v24 & 1);

  sub_25E20C024(v30, v29, v36);
}

__n128 sub_25E2077AC@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE0848, &qword_25E217E20);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v13[-v7];
  v14 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE0988, &qword_25E217F08);
  sub_25E20C448();
  sub_25E216E24();
  sub_25E2173E4();
  sub_25E217154();
  (*(v5 + 32))(a2, v8, v4);
  v9 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE0830, &qword_25E217E18) + 36);
  v10 = v20;
  *(v9 + 64) = v19;
  *(v9 + 80) = v10;
  *(v9 + 96) = v21;
  v11 = v16;
  *v9 = v15;
  *(v9 + 16) = v11;
  result = v18;
  *(v9 + 32) = v17;
  *(v9 + 48) = result;
  return result;
}

uint64_t sub_25E20795C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v62 = a1;
  v60 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE0998, &qword_25E217F10);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE0920, &qword_25E217EB8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = sub_25E216E54();
  v67 = *(v6 - 8);
  v68 = v6;
  v7 = *(v67 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE09A0, &qword_25E217F18);
  v58 = *(v56 - 8);
  v10 = *(v58 + 64);
  v11 = MEMORY[0x28223BE20](v56);
  v59 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v57 = &v48 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v66 = &v48 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v64 = (&v48 - v18);
  v19 = MEMORY[0x28223BE20](v17);
  v55 = &v48 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v65 = &v48 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v63 = &v48 - v24;
  MEMORY[0x28223BE20](v23);
  v54 = &v48 - v25;
  sub_25E217164();
  v69 = 0xD000000000000010;
  v70 = 0x800000025E2188E0;
  sub_25E216E14();

  sub_25E217164();
  v50 = MEMORY[0x277D39ED8];
  v53 = MEMORY[0x277D39F50];
  v26 = v62;
  v69 = sub_25E206B54(MEMORY[0x277D39ED8], MEMORY[0x277D39F50]);
  sub_25E216E14();

  v27 = v9;
  sub_25E216E44();
  v28 = type metadata accessor for MetricTemplateView(0);
  v52 = *(v26 + *(v28 + 28));
  v69 = v52;

  v29 = v68;
  sub_25E216E04();
  v61 = *(v67 + 8);
  v67 += 8;
  v61(v27, v29);
  sub_25E217164();
  v69 = 0xD000000000000011;
  v70 = 0x800000025E218900;
  sub_25E216E14();

  sub_25E217164();
  v51 = MEMORY[0x277D39F58];
  v69 = sub_25E206B54(v50, MEMORY[0x277D39F58]);
  sub_25E216E14();

  sub_25E216E44();
  v50 = *(v26 + *(v28 + 32));
  v69 = v50;

  v30 = v68;
  v48 = v27;
  sub_25E216E04();
  v31 = v61;
  v61(v27, v30);
  sub_25E217164();
  v69 = 0xD000000000000012;
  v70 = 0x800000025E218920;
  sub_25E216E14();

  sub_25E217164();
  v49 = MEMORY[0x277D39EE0];
  v69 = sub_25E206B54(MEMORY[0x277D39EE0], v53);
  sub_25E216E14();

  v32 = v48;
  sub_25E216E44();
  v69 = v52;
  v33 = v68;
  sub_25E216E04();

  v31(v32, v33);
  sub_25E217164();
  v69 = 0xD000000000000013;
  v70 = 0x800000025E218940;
  sub_25E216E14();

  sub_25E217164();
  v69 = sub_25E206B54(v49, v51);
  sub_25E216E14();

  sub_25E216E44();
  v69 = v50;
  v34 = v55;
  v35 = v68;
  sub_25E216E04();

  v61(v32, v35);
  v36 = v58;
  v37 = *(v58 + 16);
  v38 = v64;
  v39 = v54;
  v40 = v56;
  v37(v64, v54, v56);
  v69 = v38;
  v41 = v66;
  v42 = v63;
  v37(v66, v63, v40);
  v70 = v41;
  v43 = v57;
  v44 = v65;
  v37(v57, v65, v40);
  v71 = v43;
  v45 = v59;
  v37(v59, v34, v40);
  v72 = v45;
  sub_25E208440(&v69, v60);
  v46 = *(v36 + 8);
  v46(v34, v40);
  v46(v44, v40);
  v46(v42, v40);
  v46(v39, v40);
  v46(v45, v40);
  v46(v43, v40);
  v46(v66, v40);
  return (v46)(v64, v40);
}

uint64_t sub_25E208440@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE09A8, &qword_25E217F20);
  v4 = (v3 - 8);
  v5 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE09A0, &qword_25E217F18);
  sub_25E216E54();
  v9 = *(v8 - 8);
  v10 = *(v9 + 16);
  v10(v7, *a1, v8);
  v11 = v4[14];
  v10(&v7[v11], a1[1], v8);
  v12 = v4[18];
  v10(&v7[v12], a1[2], v8);
  v13 = v4[22];
  v10(&v7[v13], a1[3], v8);
  v14 = *(v9 + 32);
  v15 = v18;
  v14(v18, v7, v8);
  v14(v15 + v4[14], &v7[v11], v8);
  v14(v15 + v4[18], &v7[v12], v8);
  return (v14)(v15 + v4[22], &v7[v13], v8);
}

uint64_t sub_25E20860C@<X0>(uint64_t *a1@<X8>)
{
  v87 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE0890, &qword_25E217E50);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v72 - v3;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE0930, &qword_25E217EC8);
  v5 = *(v78 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v78);
  v8 = &v72 - v7;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE0938, &qword_25E217ED0);
  v9 = *(v80 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v80);
  v12 = &v72 - v11;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE0940, &qword_25E217ED8);
  v13 = *(v86 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v86);
  v16 = &v72 - v15;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE0948, &qword_25E217EE0);
  v17 = *(*(v77 - 8) + 64);
  MEMORY[0x28223BE20](v77);
  v19 = &v72 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE0950, &qword_25E217EE8);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20 - 8);
  v85 = &v72 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v84 = &v72 - v24;
  v25 = sub_25E2171F4();
  v81 = v26;
  v82 = v25;
  v79 = v27;
  v83 = v28;
  v29 = sub_25E2049BC();
  if (v29)
  {
    v88 = v29;
    v74 = v16;
    v75 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE0968, &qword_25E217EF8);
    v76 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE08D8, &qword_25E217E90);
    sub_25E20C35C(&qword_27FCE0970, &qword_27FCE0968, &qword_25E217EF8);
    v89 = sub_25E216E74();
    v90 = MEMORY[0x277D837D0];
    v91 = MEMORY[0x277CBB468];
    v92 = MEMORY[0x277CBB570];
    swift_getOpaqueTypeConformance2();
    sub_25E20BEA8(&qword_27FCE0978, type metadata accessor for ActionPoint);
    sub_25E216E34();
    v89 = sub_25E20452C();
    v30 = sub_25E216E84();
    (*(*(v30 - 8) + 56))(v4, 1, 1, v30);
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE08F8, &qword_25E217E98);
    v32 = sub_25E20C35C(&qword_27FCE0958, &qword_27FCE0930, &qword_25E217EC8);
    v33 = sub_25E20C110();
    v73 = v12;
    v34 = v78;
    sub_25E217244();
    sub_25E20C1A8(v4, &qword_27FCE0890, &qword_25E217E50);

    (*(v5 + 8))(v8, v34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE0980, &qword_25E217F00);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_25E217B60;
    *(v35 + 32) = sub_25E216F04();
    *(v35 + 40) = v36;
    *(v35 + 48) = _s6People22MissedCallPersonStatusV0A2UIE14iconForeground05SwiftF05ColorVvg_0();
    *(v35 + 56) = sub_25E216F14();
    *(v35 + 64) = v37;
    *(v35 + 72) = sub_25E217334();
    v89 = v34;
    v90 = v31;
    v91 = v32;
    v92 = v33;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v39 = MEMORY[0x277CE0F78];
    v40 = MEMORY[0x277CE0F60];
    v41 = v74;
    v42 = v80;
    v43 = MEMORY[0x277D837D0];
    v44 = MEMORY[0x277CBB570];
    v45 = v73;
    sub_25E217254();

    (*(v75 + 8))(v45, v42);
    v46 = v76;
    v47 = v86;
    (*(v76 + 16))(v19, v41, v86);
    swift_storeEnumTagMultiPayload();
    v89 = v42;
    v90 = v43;
    v91 = v39;
    v92 = OpaqueTypeConformance2;
    v93 = v44;
    v94 = v40;
    swift_getOpaqueTypeConformance2();
    v48 = v84;
    sub_25E217174();
    (*(v46 + 8))(v41, v47);
  }

  else
  {
    sub_25E217164();
    v49 = sub_25E217214();
    v51 = v50;
    v53 = v52;
    _s6People22MissedCallPersonStatusV0A2UIE12iconFontSize05SwiftF00H0Vvg_0();
    v54 = sub_25E217204();
    v56 = v55;
    v58 = v57;
    v60 = v59;

    sub_25E20C024(v49, v51, v53 & 1);

    *v19 = v54;
    *(v19 + 1) = v56;
    v19[16] = v58 & 1;
    *(v19 + 3) = v60;
    swift_storeEnumTagMultiPayload();
    v61 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCE08F8, &qword_25E217E98);
    v62 = sub_25E20C35C(&qword_27FCE0958, &qword_27FCE0930, &qword_25E217EC8);
    v63 = sub_25E20C110();
    v89 = v78;
    v90 = v61;
    v91 = v62;
    v92 = v63;
    v64 = swift_getOpaqueTypeConformance2();
    v89 = v80;
    v90 = MEMORY[0x277D837D0];
    v91 = MEMORY[0x277CE0F78];
    v92 = v64;
    v93 = MEMORY[0x277CBB570];
    v94 = MEMORY[0x277CE0F60];
    swift_getOpaqueTypeConformance2();
    v48 = v84;
    sub_25E217174();
  }

  v65 = v85;
  sub_25E20C2F4(v48, v85, &qword_27FCE0950, &qword_25E217EE8);
  v66 = v87;
  v68 = v81;
  v67 = v82;
  *v87 = v82;
  v66[1] = v68;
  v69 = v79 & 1;
  *(v66 + 16) = v79 & 1;
  v66[3] = v83;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE0960, &qword_25E217EF0);
  sub_25E20C2F4(v65, v66 + *(v70 + 48), &qword_27FCE0950, &qword_25E217EE8);
  sub_25E20C034(v67, v68, v69);

  sub_25E20C1A8(v48, &qword_27FCE0950, &qword_25E217EE8);
  sub_25E20C1A8(v65, &qword_27FCE0950, &qword_25E217EE8);
  sub_25E20C024(v67, v68, v69);
}

uint64_t sub_25E208F90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE0920, &qword_25E217EB8);
  v30 = *(v32 - 8);
  v3 = *(v30 + 64);
  v4 = MEMORY[0x28223BE20](v32);
  v29 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v26 = v24 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE0928, &qword_25E217EC0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v24[1] = v24 - v9;
  v10 = sub_25E216E74();
  v11 = *(v10 - 8);
  v27 = v10;
  v28 = v11;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v25 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25E217164();
  v14 = type metadata accessor for ActionPoint(0);
  v15 = v14[6];
  sub_25E216D04();
  sub_25E216E14();

  sub_25E217164();
  v16 = 0x656E696C656D6954;
  if (*(a1 + v14[7]))
  {
    v16 = 0x74736575716552;
    v17 = 0xE700000000000000;
  }

  else
  {
    v17 = 0xE800000000000000;
  }

  v33 = v16;
  v34 = v17;
  sub_25E216E14();

  v18 = v25;
  sub_25E216E64();
  sub_25E217164();
  v19 = (a1 + v14[5]);
  v20 = v19[1];
  v33 = *v19;
  v34 = v20;

  v21 = v29;
  sub_25E216E14();

  v22 = v27;
  sub_25E216DF4();
  (*(v30 + 8))(v21, v32);
  return (*(v28 + 8))(v18, v22);
}

uint64_t sub_25E20934C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v103 = a2;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE0888, &qword_25E217E48);
  v3 = *(*(v102 - 8) + 64);
  MEMORY[0x28223BE20](v102);
  v5 = &v85 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE0890, &qword_25E217E50);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v85 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE0898, &qword_25E217E58);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v85 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE08A0, &qword_25E217E60);
  v88 = *(v15 - 8);
  v16 = *(v88 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v85 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE08A8, &qword_25E217E68);
  v90 = *(v19 - 8);
  v20 = *(v90 + 64);
  v21 = MEMORY[0x28223BE20](v19);
  v89 = &v85 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v85 - v23;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE08B0, &qword_25E217E70);
  v25 = *(*(v94 - 8) + 64);
  MEMORY[0x28223BE20](v94);
  v95 = (&v85 - v26);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE08B8, &qword_25E217E78);
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v27 - 8);
  v101 = &v85 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v100 = &v85 - v31;
  v32 = sub_25E2171F4();
  v97 = v33;
  v98 = v32;
  v96 = v34;
  v99 = v35;
  v36 = sub_25E20534C();
  if (v36)
  {
    v108 = v36;
    v93 = v19;
    v87 = a1;
    v86 = v15;
    v91 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE08D0, &qword_25E217E88);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE08D8, &qword_25E217E90);
    v92 = v5;
    sub_25E20C35C(&qword_27FCE08E0, &qword_27FCE08D0, &qword_25E217E88);
    v104 = sub_25E216E74();
    v105 = MEMORY[0x277D837D0];
    v106 = MEMORY[0x277CBB468];
    v107 = MEMORY[0x277CBB570];
    swift_getOpaqueTypeConformance2();
    sub_25E20BEA8(&qword_27FCE08E8, type metadata accessor for SignalPoint);
    sub_25E216E34();
    v37 = sub_25E20C35C(&qword_27FCE08F0, &qword_27FCE0898, &qword_25E217E58);
    sub_25E217234();
    (*(v11 + 8))(v14, v10);
    v108 = sub_25E20452C();
    v38 = sub_25E216E84();
    (*(*(v38 - 8) + 56))(v9, 1, 1, v38);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE08F8, &qword_25E217E98);
    v104 = v10;
    v105 = v37;
    swift_getOpaqueTypeConformance2();
    sub_25E20C110();
    v39 = v86;
    sub_25E217244();
    sub_25E20C1A8(v9, &qword_27FCE0890, &qword_25E217E50);

    (*(v88 + 8))(v18, v39);
    v104 = sub_25E205CD4();
    v105 = v40;
    sub_25E20BFD0();
    v41 = sub_25E217224();
    v43 = v42;
    v45 = v44;
    _s6People22MissedCallPersonStatusV0A2UIE12iconFontSize05SwiftF00H0Vvg_0();
    v46 = sub_25E217204();
    v48 = v47;
    v50 = v49;

    sub_25E20C024(v41, v43, v45 & 1);

    sub_25E217344();
    v51 = sub_25E2171E4();
    v53 = v52;
    LOBYTE(v39) = v54;

    sub_25E20C024(v46, v48, v50 & 1);

    v55 = sub_25E2171F4();
    v57 = v56;
    LOBYTE(v48) = v58;
    v60 = v59;
    sub_25E20C024(v51, v53, v39 & 1);

    v61 = v90;
    v62 = *(v90 + 16);
    v63 = v89;
    v64 = v93;
    v62(v89, v91, v93);
    v65 = v92;
    v62(v92, v63, v64);
    v66 = v65 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE0908, &qword_25E217EA0) + 48);
    *v66 = v55;
    *(v66 + 8) = v57;
    LOBYTE(v48) = v48 & 1;
    *(v66 + 16) = v48;
    *(v66 + 24) = v60;
    sub_25E20C034(v55, v57, v48);

    sub_25E20C034(v55, v57, v48);

    sub_25E20C024(v55, v57, v48);

    v67 = *(v61 + 8);
    v68 = v93;
    v67(v63, v93);
    sub_25E20C2F4(v65, v95, &qword_27FCE0888, &qword_25E217E48);
    swift_storeEnumTagMultiPayload();
    sub_25E20C35C(&qword_27FCE08C0, &qword_27FCE0888, &qword_25E217E48);
    v69 = v100;
    sub_25E217174();
    sub_25E20C024(v55, v57, v48);

    sub_25E20C1A8(v92, &qword_27FCE0888, &qword_25E217E48);
    v67(v91, v68);
  }

  else
  {
    _s6People22MissedCallPersonStatusV0A2UIE12iconFontSize05SwiftF00H0Vvg_0();
    v70 = sub_25E217204();
    v72 = v71;
    v74 = v73;
    v76 = v75;

    v77 = v95;
    *v95 = v70;
    v77[1] = v72;
    *(v77 + 16) = v74 & 1;
    v77[3] = v76;
    swift_storeEnumTagMultiPayload();
    sub_25E20C35C(&qword_27FCE08C0, &qword_27FCE0888, &qword_25E217E48);
    v69 = v100;
    sub_25E217174();
  }

  v78 = v101;
  sub_25E20C2F4(v69, v101, &qword_27FCE08B8, &qword_25E217E78);
  v80 = v97;
  v79 = v98;
  v81 = v103;
  *v103 = v98;
  v81[1] = v80;
  v82 = v96 & 1;
  *(v81 + 16) = v96 & 1;
  v81[3] = v99;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE08C8, &qword_25E217E80);
  sub_25E20C2F4(v78, v81 + *(v83 + 48), &qword_27FCE08B8, &qword_25E217E78);
  sub_25E20C034(v79, v80, v82);

  sub_25E20C1A8(v69, &qword_27FCE08B8, &qword_25E217E78);
  sub_25E20C1A8(v78, &qword_27FCE08B8, &qword_25E217E78);
  sub_25E20C024(v79, v80, v82);
}

uint64_t sub_25E209DFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE0920, &qword_25E217EB8);
  v23 = *(v25 - 8);
  v3 = *(v23 + 64);
  MEMORY[0x28223BE20](v25);
  v5 = &v20 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE0928, &qword_25E217EC0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = sub_25E216E74();
  v9 = *(v8 - 8);
  v21 = v8;
  v22 = v9;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v20 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25E217164();
  v12 = type metadata accessor for SignalPoint(0);
  v13 = *(v12 + 24);
  sub_25E216D04();
  sub_25E216E14();

  sub_25E217164();
  v14 = (a1 + *(v12 + 20));
  v15 = v14[1];
  v26 = *v14;
  v16 = v26;
  v27 = v15;
  swift_bridgeObjectRetain_n();
  sub_25E216E14();

  v17 = v20;
  sub_25E216E64();
  sub_25E217164();
  v26 = v16;
  v27 = v15;
  sub_25E216E14();

  v18 = v21;
  sub_25E216DF4();
  (*(v23 + 8))(v5, v25);
  return (*(v22 + 8))(v17, v18);
}

uint64_t sub_25E20A158@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_25E2171F4();
  v20 = v3;
  v21 = v2;
  v19 = v4;
  v22 = v5;
  sub_25E2067E0();
  sub_25E20BFD0();
  v6 = sub_25E217224();
  v8 = v7;
  v10 = v9;
  sub_25E217194();
  v11 = sub_25E217204();
  v13 = v12;
  v15 = v14;
  v17 = v16;

  sub_25E20C024(v6, v8, v10 & 1);

  *a1 = v21;
  *(a1 + 8) = v20;
  *(a1 + 16) = v19 & 1;
  *(a1 + 24) = v22;
  *(a1 + 32) = v11;
  *(a1 + 40) = v13;
  *(a1 + 48) = v15 & 1;
  *(a1 + 56) = v17;
  sub_25E20C034(v21, v20, v19 & 1);

  sub_25E20C034(v11, v13, v15 & 1);

  sub_25E20C024(v11, v13, v15 & 1);

  sub_25E20C024(v21, v20, v19 & 1);
}

uint64_t sub_25E20A2F0(uint64_t a1, uint64_t a2)
{
  v3 = sub_25E216D04();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v15 - v9;
  v11 = sub_25E216FE4();
  v12 = *(a2 + 16);
  v15[2] = *(a2 + 8);
  v15[3] = v12;
  v15[1] = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE07F8, &qword_25E217DE8);
  sub_25E2173B4();
  sub_25E216CF4();
  v13 = *(type metadata accessor for MetricTemplateView(0) + 24);
  (*(v4 + 16))(v8, v10, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE0780, &qword_25E217BB8);
  sub_25E2173B4();
  return (*(v4 + 8))(v10, v3);
}

uint64_t sub_25E20A464(uint64_t a1)
{
  v1[5] = a1;
  v2 = sub_25E216D04();
  v1[6] = v2;
  v3 = *(v2 - 8);
  v1[7] = v3;
  v4 = *(v3 + 64) + 15;
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  sub_25E217544();
  v1[10] = sub_25E217534();
  v6 = sub_25E217524();

  return MEMORY[0x2822009F8](sub_25E20C59C, v6, v5);
}

uint64_t MetricTemplateView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v56 = a1;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE0750, &qword_25E217B90);
  v3 = *(*(v54 - 8) + 64);
  MEMORY[0x28223BE20](v54);
  v55 = &v43 - v4;
  v5 = type metadata accessor for MetricTemplateView(0);
  v48 = *(v5 - 8);
  v6 = *(v48 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = v7;
  v9 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE0758, &qword_25E217B98);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v43 - v12;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE0760, &qword_25E217BA0);
  v50 = *(v53 - 8);
  v14 = *(v50 + 64);
  MEMORY[0x28223BE20](v53);
  v49 = &v43 - v15;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE0768, &qword_25E217BA8);
  v47 = *(v52 - 8);
  v16 = *(v47 + 64);
  MEMORY[0x28223BE20](v52);
  v46 = &v43 - v17;
  v51 = &v43;
  v18 = *v2;
  v57 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE0770, &qword_25E217BB0);
  sub_25E20C35C(&qword_27FCE0778, &qword_27FCE0770, &qword_25E217BB0);
  sub_25E2171D4();
  if (v18 == 1)
  {
    v44 = *&v2[*(v5 + 36)];
    v19 = v44;
    sub_25E20C224(v2, v9, type metadata accessor for MetricTemplateView);
    v20 = (*(v48 + 80) + 16) & ~*(v48 + 80);
    v45 = v8;
    v21 = swift_allocObject();
    sub_25E20C28C(v9, v21 + v20, type metadata accessor for MetricTemplateView);
    *&v13[*(v10 + 52)] = v19;
    v22 = &v13[*(v10 + 56)];
    *v22 = sub_25E20C5A8;
    *(v22 + 1) = v21;
    sub_25E20C224(v2, v9, type metadata accessor for MetricTemplateView);
    v23 = swift_allocObject();
    sub_25E20C28C(v9, v23 + v20, type metadata accessor for MetricTemplateView);
    v24 = sub_25E20C35C(&qword_27FCE0788, &qword_27FCE0758, &qword_25E217B98);

    v25 = v49;
    sub_25E217284();

    sub_25E20C1A8(v13, &qword_27FCE0758, &qword_25E217B98);
    sub_25E20C224(v2, v9, type metadata accessor for MetricTemplateView);
    v26 = swift_allocObject();
    sub_25E20C28C(v9, v26 + v20, type metadata accessor for MetricTemplateView);
    v58 = v10;
    v59 = v24;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v28 = v46;
    v29 = v53;
    sub_25E217284();

    (*(v50 + 8))(v25, v29);
    v30 = v47;
    v31 = v52;
    (*(v47 + 16))(v55, v28, v52);
    swift_storeEnumTagMultiPayload();
    v58 = v29;
    v59 = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    sub_25E217174();
    return (*(v30 + 8))(v28, v31);
  }

  else
  {
    v33 = *&v2[*(v5 + 36)];
    sub_25E20C224(v2, v9, type metadata accessor for MetricTemplateView);
    v34 = (*(v48 + 80) + 16) & ~*(v48 + 80);
    v35 = swift_allocObject();
    sub_25E20C28C(v9, v35 + v34, type metadata accessor for MetricTemplateView);
    *&v13[*(v10 + 52)] = v33;
    v36 = &v13[*(v10 + 56)];
    *v36 = sub_25E20AD74;
    *(v36 + 1) = v35;
    sub_25E20C224(v2, v9, type metadata accessor for MetricTemplateView);
    v37 = swift_allocObject();
    sub_25E20C28C(v9, v37 + v34, type metadata accessor for MetricTemplateView);
    v38 = sub_25E20C35C(&qword_27FCE0788, &qword_27FCE0758, &qword_25E217B98);

    v39 = v49;
    sub_25E217284();

    sub_25E20C1A8(v13, &qword_27FCE0758, &qword_25E217B98);
    v40 = v50;
    v41 = v53;
    (*(v50 + 16))(v55, v39, v53);
    swift_storeEnumTagMultiPayload();
    v58 = v10;
    v59 = v38;
    v42 = swift_getOpaqueTypeConformance2();
    v58 = v41;
    v59 = v42;
    swift_getOpaqueTypeConformance2();
    sub_25E217174();
    return (*(v40 + 8))(v39, v41);
  }
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t objectdestroyTm()
{
  v1 = (type metadata accessor for MetricTemplateView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + v3 + 8);

  v6 = *(v0 + v3 + 16);

  v7 = v0 + v3 + v1[8];
  v8 = sub_25E216D04();
  (*(*(v8 - 8) + 8))(v7, v8);
  v9 = *(v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE0780, &qword_25E217BB8) + 28));

  v10 = *(v0 + v3 + v1[9]);

  v11 = *(v0 + v3 + v1[10]);

  v12 = *(v0 + v3 + v1[11]);

  v13 = *(v0 + v3 + v1[12]);

  v14 = *(v0 + v3 + v1[13]);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_25E20AED0()
{
  v2 = *(type metadata accessor for MetricTemplateView(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_25E20C598;

  return sub_25E20A464(v0 + v3);
}

uint64_t sub_25E20AF9C(uint64_t a1)
{
  v3 = *(type metadata accessor for MetricTemplateView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_25E20A2F0(a1, v4);
}

uint64_t sub_25E20B00C(uint64_t a1)
{
  v1[5] = a1;
  v2 = sub_25E216D04();
  v1[6] = v2;
  v3 = *(v2 - 8);
  v1[7] = v3;
  v4 = *(v3 + 64) + 15;
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  sub_25E217544();
  v1[10] = sub_25E217534();
  v6 = sub_25E217524();

  return MEMORY[0x2822009F8](sub_25E20B10C, v6, v5);
}

uint64_t sub_25E20B10C()
{
  v2 = v0[9];
  v1 = v0[10];
  v4 = v0[7];
  v3 = v0[8];
  v6 = v0[5];
  v5 = v0[6];

  v7 = sub_25E216FE4();
  v8 = *(v6 + 16);
  v0[2] = *(v6 + 8);
  v0[3] = v8;
  v0[4] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE07F8, &qword_25E217DE8);
  sub_25E2173B4();
  sub_25E216CF4();
  v9 = *(type metadata accessor for MetricTemplateView(0) + 24);
  (*(v4 + 16))(v3, v2, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE0780, &qword_25E217BB8);
  sub_25E2173B4();
  (*(v4 + 8))(v2, v5);

  v10 = v0[1];

  return v10();
}

uint64_t sub_25E20B248()
{
  v2 = *(type metadata accessor for MetricTemplateView(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_25E20B314;

  return sub_25E20B00C(v0 + v3);
}

uint64_t sub_25E20B314()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

void sub_25E20B474()
{
  sub_25E20B56C();
  if (v0 <= 0x3F)
  {
    sub_25E20B5D0();
    if (v1 <= 0x3F)
    {
      sub_25E20B628();
      if (v2 <= 0x3F)
      {
        sub_25E20C544(319, &qword_27FCE07B8, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_25E20B56C()
{
  if (!qword_27FCE07A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCE0730, &unk_25E217B80);
    v0 = sub_25E2173C4();
    if (!v1)
    {
      atomic_store(v0, &qword_27FCE07A0);
    }
  }
}

void sub_25E20B5D0()
{
  if (!qword_27FCE07A8)
  {
    sub_25E216D04();
    v0 = sub_25E2173C4();
    if (!v1)
    {
      atomic_store(v0, &qword_27FCE07A8);
    }
  }
}

void sub_25E20B628()
{
  if (!qword_27FCE07B0)
  {
    sub_25E217574();
    sub_25E20BEA8(&qword_27FCE0740, MEMORY[0x277CC9DF0]);
    v0 = sub_25E217134();
    if (!v1)
    {
      atomic_store(v0, &qword_27FCE07B0);
    }
  }
}

unint64_t sub_25E20B6BC()
{
  result = qword_27FCE07C0;
  if (!qword_27FCE07C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCE07C8, &qword_25E217C68);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCE0760, &qword_25E217BA0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCE0758, &qword_25E217B98);
    sub_25E20C35C(&qword_27FCE0788, &qword_27FCE0758, &qword_25E217B98);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCE07C0);
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_25E20B830(uint64_t a1, int a2)
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

uint64_t sub_25E20B850(uint64_t result, int a2, int a3)
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

uint64_t sub_25E20B8EC()
{
  result = sub_25E216D24();
  if (v1 <= 0x3F)
  {
    result = sub_25E216D04();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_40Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25E216D24();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_25E216D04();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t __swift_store_extra_inhabitant_index_41Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_25E216D24();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  else
  {
    v11 = sub_25E216D04();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_25E20BC10(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25E20BC48()
{
  result = sub_25E216D24();
  if (v1 <= 0x3F)
  {
    result = sub_25E216D04();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ActionPoint.Action(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ActionPoint.Action(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_25E20BE54()
{
  result = qword_27FCE07F0;
  if (!qword_27FCE07F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCE07F0);
  }

  return result;
}

uint64_t sub_25E20BEA8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_25E20BF00()
{
  result = qword_27FCE0838;
  if (!qword_27FCE0838)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCE0830, &qword_25E217E18);
    sub_25E20C35C(&qword_27FCE0840, &qword_27FCE0848, &qword_25E217E20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCE0838);
  }

  return result;
}

unint64_t sub_25E20BFD0()
{
  result = qword_27FCE0878;
  if (!qword_27FCE0878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCE0878);
  }

  return result;
}

uint64_t sub_25E20C024(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_25E20C034(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_25E20C044(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_25E20C0A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE0880, &qword_25E217E40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_25E20C110()
{
  result = qword_27FCE0900;
  if (!qword_27FCE0900)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCE08F8, &qword_25E217E98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCE0900);
  }

  return result;
}

uint64_t sub_25E20C1A8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_25E20C224(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25E20C28C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_25E20C2F4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_25E20C35C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_25E20C3C0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_25E20C448()
{
  result = qword_27FCE0990;
  if (!qword_27FCE0990)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCE0988, &qword_25E217F08);
    sub_25E216E54();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCE0990);
  }

  return result;
}

void sub_25E20C544(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t ContactImage.avatarLuminance.getter()
{
  result = *(v0 + 8);
  v2 = *(v0 + 16);
  return result;
}

uint64_t ContactImage.avatarLuminance.setter(uint64_t result, char a2)
{
  *(v2 + 8) = result;
  *(v2 + 16) = a2 & 1;
  return result;
}

uint64_t ContactImage.avatarSaturation.getter()
{
  result = *(v0 + 24);
  v2 = *(v0 + 32);
  return result;
}

uint64_t ContactImage.avatarSaturation.setter(uint64_t result, char a2)
{
  *(v2 + 24) = result;
  *(v2 + 32) = a2 & 1;
  return result;
}

int64x2_t ContactImage.init(contactImageData:)@<Q0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v25 = 1;
  v24 = 1;
  v6 = objc_allocWithZone(MEMORY[0x277D755B8]);
  sub_25E20CB2C(a1, a2);
  sub_25E20CB2C(a1, a2);
  v7 = sub_25E216CC4();
  v8 = [v6 initWithData_];

  sub_25E20CB80(a1, a2);
  if (v8)
  {
    v9 = sub_25E217364();
    sub_25E20CB80(a1, a2);
  }

  else
  {
    sub_25E20CB80(a1, a2);
    v9 = 0;
  }

  v10 = objc_allocWithZone(MEMORY[0x277D755B8]);
  sub_25E20CB2C(a1, a2);
  v11 = sub_25E216CC4();
  v12 = [v10 initWithData_];

  v13 = sub_25E20CB80(a1, a2);
  if (v12)
  {
    v14 = MEMORY[0x25F8AF630](v13);
    v26.origin.x = 0.3;
    v26.origin.y = 0.9;
    v26.size.width = 0.4;
    v26.size.height = 0.05;
    isa = UIImage.crop(relativeTo:)(v26).super.isa;
    v16 = UIImage.resize(to:)(__PAIR128__(0x4059000000000000, 0x4059000000000000)).super.isa;
    [(objc_class *)v16 _calculateStatistics];
    v17 = v23;

    v18 = vmulq_f64(v22, xmmword_25E217F60);
    v19 = v21 * 0.2126 + v18.f64[0] + v18.f64[1];
    v25 = 0;
    v24 = 0;
    objc_autoreleasePoolPop(v14);
  }

  else
  {
    v17 = 0;
    v19 = 0.0;
  }

  sub_25E20CB80(a1, a2);
  *a3 = v9;
  *(a3 + 8) = v19;
  *(a3 + 16) = v25;
  *(a3 + 24) = v17;
  *(a3 + 32) = v24;
  *(a3 + 40) = xmmword_25E217F70;
  *(a3 + 56) = xmmword_25E217F80;
  result = vdupq_n_s64(0x4059000000000000uLL);
  *(a3 + 72) = result;
  return result;
}

void *_s6People22ContactFetcherProtocolP0A2UIE03getB9ImageData3for4size6locale10Foundation0H0VSgSo9CNContactCSg_So6CGSizeVAD06LocaleD0_ptF_0(void *result, void *a2, double a3, double a4)
{
  if (result)
  {
    v7 = result;
    v8 = objc_allocWithZone(MEMORY[0x277CBDBD0]);
    v9 = v7;
    v10 = [v8 init];
    v11 = a2[3];
    v12 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v11);
    v13 = (*(v12 + 8))(v11, v12);
    v15 = v14;
    sub_25E20CD10(a2, v31);
    if (v15)
    {
      v16 = v32;
      v17 = v33;
      __swift_project_boxed_opaque_existential_1(v31, v32);
      v18 = (*(v17 + 16))(v13, v15, v16, v17);

      __swift_destroy_boxed_opaque_existential_1(v31);
      v19 = v18 == 2;
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(v31);
      v19 = 0;
    }

    v20 = objc_opt_self();
    v21 = [objc_opt_self() mainScreen];
    [v21 scale];
    v23 = v22;

    v24 = [v20 scopeWithPointSize:v19 scale:0 rightToLeft:0 style:a3 backgroundStyle:{a4, v23}];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE09B0, &qword_25E217FE0);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_25E217F90;
    *(v25 + 32) = v9;
    sub_25E20CDC0();
    v26 = v9;
    v27 = sub_25E217514();

    v28 = [v10 avatarImageForContacts:v27 scope:v24];

    v29 = UIImagePNGRepresentation(v28);
    if (v29)
    {
      v30 = sub_25E216CD4();

      swift_unknownObjectRelease();
      return v30;
    }

    else
    {

      swift_unknownObjectRelease();
      return 0;
    }
  }

  return result;
}

uint64_t sub_25E20CB2C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_25E20CB80(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_25E20CBF8(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 88))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_25E20CC54(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 88) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 88) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_25E20CD10(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

unint64_t sub_25E20CDC0()
{
  result = qword_27FCE09B8;
  if (!qword_27FCE09B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FCE09B8);
  }

  return result;
}

uint64_t sub_25E20CF70()
{
  result = _s6People24AvailabilityPersonStatusV0A2UIE10iconShadow05SwiftE05ColorVvg_0();
  qword_27FCE09E0 = result;
  return result;
}

uint64_t sub_25E20CFB4()
{
  result = _s6People19MessagePersonStatusV0A2UIE14iconForeground05SwiftE05ColorVvg_0();
  qword_27FCE09E8 = result;
  return result;
}

uint64_t sub_25E20D03C()
{
  result = sub_25E217324();
  qword_27FCE09F8 = result;
  return result;
}

uint64_t sub_25E20D21C()
{
  result = _s6People19MessagePersonStatusV0A2UIE10iconShadow05SwiftE05ColorVvg_0();
  qword_27FCE0A30 = result;
  return result;
}

uint64_t sub_25E20D260()
{
  result = _s6People24AvailabilityPersonStatusV0A2UIE10iconShadow05SwiftE05ColorVvg_0();
  qword_27FCE0A38 = result;
  return result;
}

uint64_t sub_25E20D474(uint64_t a1, uint64_t *a2)
{
  v3 = sub_25E2172A4();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  (*(v6 + 104))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277CE0EE0]);
  result = sub_25E217354();
  *a2 = result;
  return result;
}

uint64_t sub_25E20D58C(void *a1, uint64_t *a2)
{
  if (*a1 == -1)
  {
    v3 = *a2;
  }

  else
  {
    swift_once();
    v6 = *a2;
  }
}

uint64_t sub_25E20D5FC()
{
  v0 = sub_25E217414();
  __swift_allocate_value_buffer(v0, qword_27FCE0A78);
  __swift_project_value_buffer(v0, qword_27FCE0A78);
  return sub_25E217404();
}

uint64_t static PeopleWidgetConstants.minimumTimelineRelevance.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FCE0718 != -1)
  {
    swift_once();
  }

  v2 = sub_25E217414();
  v3 = __swift_project_value_buffer(v2, qword_27FCE0A78);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_25E20D740()
{
  sub_25E216EA4();
  v0 = sub_25E216E94();
  static StatusCompatiblePicker.statusForDisplay(from:featureFlags:)(MEMORY[0x277D84F90], v0, &unk_27FCE0A90);
}

uint64_t static PeopleWidgetConstants.defaultStatusForDisplay.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = a1;
  if (qword_281560FB8 != -1)
  {
    swift_once();
    v2 = a1;
  }

  return sub_25E20D80C(&unk_27FCE0A90, v2);
}

uint64_t getEnumTagSinglePayload for PeopleWidgetConstants(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for PeopleWidgetConstants(_WORD *result, int a2, int a3)
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

double ContactFetcherProtocol.contactImage(for:locale:)@<D0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = _s6People22ContactFetcherProtocolP0A2UIE03getB9ImageData3for4size6locale10Foundation0H0VSgSo9CNContactCSg_So6CGSizeVAD06LocaleD0_ptF_0(a1, a2, 86.0, 86.0);
  if (v5 >> 60 == 15)
  {
    *a3 = 1;
    result = 0.0;
    *(a3 + 8) = 0u;
    *(a3 + 24) = 0u;
    *(a3 + 40) = 0u;
    *(a3 + 56) = 0u;
    *(a3 + 72) = 0u;
  }

  else
  {
    ContactImage.init(contactImageData:)(v4, v5, v9);
    v7 = v9[3];
    *(a3 + 32) = v9[2];
    *(a3 + 48) = v7;
    *(a3 + 64) = v9[4];
    *(a3 + 80) = v10;
    result = *v9;
    v8 = v9[1];
    *a3 = v9[0];
    *(a3 + 16) = v8;
  }

  return result;
}

NSLocaleLanguageDirection __swiftcall Locale.characterDirection(forLanguage:)(Swift::String forLanguage)
{
  v1 = sub_25E216D64();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_25E216D44();
  v6 = sub_25E216D54();
  (*(v2 + 8))(v5, v1);
  return v6;
}

uint64_t sub_25E20DB44()
{
  v0 = sub_25E216D64();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_25E216D44();
  v5 = sub_25E216D54();
  (*(v1 + 8))(v4, v0);
  return v5;
}

uint64_t PersonInfo.person.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25E217124();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t PersonInfo.contactImage.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for PersonInfo() + 20));
  v4 = v3[2];
  v6 = v3[4];
  v15 = v3[3];
  v5 = v15;
  v16 = v6;
  v17 = *(v3 + 10);
  v7 = v17;
  v9 = *v3;
  v13 = v3[1];
  v8 = v13;
  v14 = v4;
  v12 = v9;
  *(a1 + 32) = v4;
  *(a1 + 48) = v5;
  *(a1 + 64) = v6;
  *(a1 + 80) = v7;
  *a1 = v9;
  *(a1 + 16) = v8;
  return sub_25E20C2F4(&v12, v11, &qword_27FCE0AE8, &qword_25E218128);
}

uint64_t type metadata accessor for PersonInfo()
{
  result = qword_281561020;
  if (!qword_281561020)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PersonInfo.statusForDisplay.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for PersonInfo() + 24);

  return sub_25E20D80C(v3, a1);
}

uint64_t PersonInfo.init(person:contactImage:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_25E217124();
  v15 = *(v6 - 8);
  (*(v15 + 16))(a3, a1, v6);
  v7 = type metadata accessor for PersonInfo();
  v8 = a3 + *(v7 + 20);
  v9 = *(a2 + 48);
  *(v8 + 32) = *(a2 + 32);
  *(v8 + 48) = v9;
  *(v8 + 64) = *(a2 + 64);
  *(v8 + 80) = *(a2 + 80);
  v10 = *(a2 + 16);
  *v8 = *a2;
  *(v8 + 16) = v10;
  v11 = sub_25E217114();
  sub_25E216EA4();
  v12 = sub_25E216E94();
  static StatusCompatiblePicker.statusForDisplay(from:featureFlags:)(v11, v12, a3 + *(v7 + 24));

  v13 = *(v15 + 8);

  return v13(a1, v6);
}

uint64_t PersonInfo.textForLabel.getter()
{
  v17 = sub_25E2170E4();
  v18 = v1;
  v2 = type metadata accessor for PersonInfo();
  sub_25E20C2F4(v0 + *(v2 + 24) + 40, v15, &qword_27FCE0AF0, &qword_25E218130);
  if (v16)
  {
    __swift_project_boxed_opaque_existential_1(v15, v16);
    v19 = sub_25E216F44();
    v20 = v3;
    __swift_destroy_boxed_opaque_existential_1(v15);
  }

  else
  {
    sub_25E20C1A8(v15, &qword_27FCE0AF0, &qword_25E218130);
    v19 = 0;
    v20 = 0;
  }

  v4 = 0;
  v5 = MEMORY[0x277D84F90];
LABEL_5:
  v6 = &v18 + 2 * v4;
  while (++v4 != 3)
  {
    v7 = v6 + 2;
    v8 = *v6;
    v6 += 2;
    if (v8)
    {
      v9 = *(v7 - 3);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_25E20E70C(0, *(v5 + 2) + 1, 1, v5);
      }

      v11 = *(v5 + 2);
      v10 = *(v5 + 3);
      if (v11 >= v10 >> 1)
      {
        v5 = sub_25E20E70C((v10 > 1), v11 + 1, 1, v5);
      }

      *(v5 + 2) = v11 + 1;
      v12 = &v5[16 * v11];
      *(v12 + 4) = v9;
      *(v12 + 5) = v8;
      goto LABEL_5;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE0AF8, &qword_25E218138);
  swift_arrayDestroy();
  v15[0] = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE0B00, &qword_25E2182B0);
  sub_25E20E818();
  v13 = sub_25E217434();

  return v13;
}

uint64_t static PersonInfo.urlForPerson(personInfo:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_25E217124();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE0B10, &qword_25E218140);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v26 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE0B18, &qword_25E218148);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v26 - v18;
  sub_25E20C2F4(a1, v12, &qword_27FCE0B10, &qword_25E218140);
  v20 = type metadata accessor for PersonInfo();
  if ((*(*(v20 - 8) + 48))(v12, 1, v20) == 1)
  {
    sub_25E20C1A8(v12, &qword_27FCE0B10, &qword_25E218140);
    v21 = sub_25E216CB4();
    (*(*(v21 - 8) + 56))(v19, 1, 1, v21);
  }

  else
  {
    (*(v5 + 16))(v8, v12, v4);
    sub_25E20E87C(v12);
    sub_25E2170F4();
    (*(v5 + 8))(v8, v4);
    v21 = sub_25E216CB4();
    v22 = *(v21 - 8);
    if ((*(v22 + 48))(v19, 1, v21) != 1)
    {
      return (*(v22 + 32))(a2, v19, v21);
    }
  }

  sub_25E217104();
  sub_25E216CB4();
  v23 = *(v21 - 8);
  v24 = *(v23 + 48);
  result = v24(v17, 1, v21);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v23 + 32))(a2, v17, v21);
    result = v24(v19, 1, v21);
    if (result != 1)
    {
      return sub_25E20C1A8(v19, &qword_27FCE0B18, &qword_25E218148);
    }
  }

  return result;
}

size_t sub_25E20E50C(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_25E20E70C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE0748, &qword_25E2182C0);
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

unint64_t sub_25E20E818()
{
  result = qword_27FCE0B08;
  if (!qword_27FCE0B08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCE0B00, &qword_25E2182B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCE0B08);
  }

  return result;
}

uint64_t sub_25E20E87C(uint64_t a1)
{
  v2 = type metadata accessor for PersonInfo();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_25E20E928()
{
  sub_25E217124();
  if (v0 <= 0x3F)
  {
    sub_25E20E9B4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_25E20E9B4()
{
  if (!qword_281560F80)
  {
    v0 = sub_25E2175A4();
    if (!v1)
    {
      atomic_store(v0, &qword_281560F80);
    }
  }
}

void *sub_25E20EA2C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

uint64_t static StatusCompatiblePicker.statusForDisplay(from:featureFlags:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_25E216F34();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25E20F1A8(a1, a2, v60);
  sub_25E20C2F4(v60, &v54, &qword_27FCE0B50, &unk_25E2181C0);
  if (v55)
  {
    sub_25E203DA4(&v54, v57);
    v11 = v59;
    __swift_project_boxed_opaque_existential_1(v57, v58);
    v12 = *(v11 + 8);
    sub_25E216F64();
    v13 = v58;
    v14 = v59;
    v15 = __swift_project_boxed_opaque_existential_1(v57, v58);
    v55 = v13;
    v56 = *(v14 + 8);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v54);
    (*(*(v13 - 8) + 16))(boxed_opaque_existential_1, v15, v13);
    sub_25E203DA4(&v54, v51);
    v17 = MEMORY[0x277D84F98];
    LOBYTE(v15) = swift_isUniquelyReferenced_nonNull_native();
    v50 = v17;
    v18 = v52;
    v19 = v53;
    v20 = __swift_mutable_project_boxed_opaque_existential_1(v51, v52);
    v21 = *(*(v18 - 8) + 64);
    MEMORY[0x28223BE20](v20);
    v23 = &v49 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v24 + 16))(v23);
    sub_25E211C70(v23, v10, v15, &v50, v18, v19);
    (*(v7 + 8))(v10, v6);
    __swift_destroy_boxed_opaque_existential_1(v51);
    v25 = v50;
    __swift_destroy_boxed_opaque_existential_1(v57);
  }

  else
  {
    sub_25E20C1A8(&v54, &qword_27FCE0B50, &unk_25E2181C0);
    v25 = MEMORY[0x277D84F98];
  }

  sub_25E20C2F4(v61 + 8, &v54, &qword_27FCE0AF0, &qword_25E218130);
  if (v55)
  {
    sub_25E203DA4(&v54, v57);
    v26 = v59;
    __swift_project_boxed_opaque_existential_1(v57, v58);
    v27 = *(v26 + 8);
    sub_25E216F64();
    v28 = v58;
    v29 = v59;
    v30 = __swift_project_boxed_opaque_existential_1(v57, v58);
    v55 = v28;
    v56 = *(v29 + 8);
    v31 = __swift_allocate_boxed_opaque_existential_1(&v54);
    (*(*(v28 - 8) + 16))(v31, v30, v28);
    sub_25E203DA4(&v54, v51);
    LOBYTE(v28) = swift_isUniquelyReferenced_nonNull_native();
    v50 = v25;
    v32 = v52;
    v33 = v53;
    v34 = __swift_mutable_project_boxed_opaque_existential_1(v51, v52);
    v35 = *(*(v32 - 8) + 64);
    MEMORY[0x28223BE20](v34);
    v37 = &v49 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v38 + 16))(v37);
    sub_25E211C70(v37, v10, v28, &v50, v32, v33);
    (*(v7 + 8))(v10, v6);
    __swift_destroy_boxed_opaque_existential_1(v51);
    v25 = v50;
    __swift_destroy_boxed_opaque_existential_1(v57);
  }

  else
  {
    sub_25E20C1A8(&v54, &qword_27FCE0AF0, &qword_25E218130);
  }

  v39 = 1 << *(v25 + 32);
  v40 = -1;
  if (v39 < 64)
  {
    v40 = ~(-1 << v39);
  }

  v41 = v40 & *(v25 + 64);
  v42 = (v39 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  for (i = 0; v41; result = __swift_destroy_boxed_opaque_existential_1(v57))
  {
    v45 = i;
LABEL_15:
    v46 = __clz(__rbit64(v41));
    v41 &= v41 - 1;
    sub_25E20CD10(*(v25 + 56) + 40 * (v46 | (v45 << 6)), v57);
    sub_25E216EF4();
    sub_25E216EE4();
  }

  while (1)
  {
    v45 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v45 >= v42)
    {

      v47 = v61[1];
      *(a3 + 32) = v61[0];
      *(a3 + 48) = v47;
      *(a3 + 64) = v61[2];
      *(a3 + 80) = v62;
      v48 = v60[1];
      *a3 = v60[0];
      *(a3 + 16) = v48;
    }

    v41 = *(v25 + 64 + 8 * v45);
    ++i;
    if (v41)
    {
      i = v45;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

__n128 PersonStatusSet.init(badge:text:additionalBadges:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(a1 + 16);
  *a4 = *a1;
  *(a4 + 16) = v4;
  result = *a2;
  v6 = *(a2 + 16);
  *(a4 + 40) = *a2;
  *(a4 + 32) = *(a1 + 32);
  *(a4 + 56) = v6;
  *(a4 + 72) = *(a2 + 32);
  *(a4 + 80) = a3;
  return result;
}

uint64_t sub_25E20F1A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v117 = sub_25E216F34();
  v6 = *(v117 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v117);
  v116 = &v100 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_25E216DE4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v100 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v107 = &v100 - v15;
  v111 = sub_25E216EB4();
  v113 = *(v111 - 8);
  v16 = *(v113 + 64);
  result = MEMORY[0x28223BE20](v111);
  v112 = &v100 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = *(a1 + 16);
  if (!v109)
  {
    *(a3 + 48) = 0u;
    *(a3 + 64) = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *a3 = 0u;
    *(a3 + 80) = MEMORY[0x277D84F90];
    return result;
  }

  v110 = a2;
  v102 = v6;
  v105 = v10;
  v106 = v9;
  v108 = a3;
  v104 = a1 + 32;
  sub_25E20CD10(a1 + 32, v137);
  v19 = &v134;
  v20 = sub_25E20CD10(v137, v135);
  MEMORY[0x28223BE20](v20);
  *(&v100 - 2) = v137;
  sub_25E210224(sub_25E212138, a1, &v136);
  v103 = 0;
  sub_25E20C2F4(v135, &v131, &qword_27FCE0B70, &unk_25E218290);
  v125 = v131;
  v126 = v132;
  v127 = v133;
  if (*(&v132 + 1))
  {
    sub_25E203DA4(&v125, &v128);
    v21 = MEMORY[0x277D84F90];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_65:
      v21 = sub_25E20E6E8(0, v21[2] + 1, 1, v21);
    }

    v23 = v21[2];
    v22 = v21[3];
    if (v23 >= v22 >> 1)
    {
      v21 = sub_25E20E6E8((v22 > 1), v23 + 1, 1, v21);
    }

    v21[2] = v23 + 1;
    sub_25E203DA4(&v128, &v21[5 * v23 + 4]);
  }

  else
  {
    sub_25E20C1A8(&v125, &qword_27FCE0B70, &unk_25E218290);
    v21 = MEMORY[0x277D84F90];
  }

  sub_25E20C2F4((v19 + 9), &v131, &qword_27FCE0B70, &unk_25E218290);
  v125 = v131;
  v126 = v132;
  v127 = v133;
  v101 = v14;
  if (*(&v132 + 1))
  {
    sub_25E203DA4(&v125, &v128);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v21 = sub_25E20E6E8(0, v21[2] + 1, 1, v21);
    }

    v25 = v21[2];
    v24 = v21[3];
    if (v25 >= v24 >> 1)
    {
      v21 = sub_25E20E6E8((v24 > 1), v25 + 1, 1, v21);
    }

    v21[2] = v25 + 1;
    sub_25E203DA4(&v128, &v21[5 * v25 + 4]);
  }

  else
  {
    sub_25E20C1A8(&v125, &qword_27FCE0B70, &unk_25E218290);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE0B70, &unk_25E218290);
  swift_arrayDestroy();
  v26 = v21[2];
  v118 = v21;
  v119 = v26;
  if (!v26)
  {
LABEL_25:
    v131 = 0u;
    v132 = 0u;
    v133 = 0;
    v43 = v111;
    v44 = v113;
    goto LABEL_26;
  }

  v14 = 0;
  v27 = &qword_27FCE0B28;
  v28 = &qword_25E2181A0;
  v29 = &qword_27FCE0B38;
  v30 = &qword_25E2182A0;
  v31 = (v21 + 4);
  while (1)
  {
    if (v14 >= v21[2])
    {
LABEL_63:
      __break(1u);
      goto LABEL_64;
    }

    sub_25E20CD10(v31, &v131);
    sub_25E20CD10(&v131, &v122);
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(v27, v28);
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(v29, v30);
    if (swift_dynamicCast())
    {
      break;
    }

    v127 = 0;
    v125 = 0u;
    v126 = 0u;
    sub_25E20C1A8(&v125, &qword_27FCE0B50, &unk_25E2181C0);
LABEL_19:
    ++v14;
    __swift_destroy_boxed_opaque_existential_1(&v131);
    v31 += 40;
    if (v119 == v14)
    {
      goto LABEL_25;
    }
  }

  v114 = v19;
  v115 = v32;
  v19 = v30;
  v33 = v29;
  v34 = v28;
  v35 = v27;
  v36 = *(&v126 + 1);
  v37 = v127;
  __swift_project_boxed_opaque_existential_1(&v125, *(&v126 + 1));
  v38 = *(v37 + 48);
  v39 = v36;
  v40 = v37;
  v27 = v35;
  v28 = v34;
  v29 = v33;
  v30 = v19;
  v21 = v118;
  v41 = v38(v39, v40);
  __swift_destroy_boxed_opaque_existential_1(&v125);
  if (!v41)
  {
    goto LABEL_19;
  }

  sub_25E203DA4(&v131, &v128);
  v42 = swift_dynamicCast();
  v43 = v111;
  v44 = v113;
  if ((v42 & 1) == 0)
  {
    v133 = 0;
    v131 = 0u;
    v132 = 0u;
  }

LABEL_26:
  sub_25E20C2F4(&v131, &v125, &qword_27FCE0B50, &unk_25E2181C0);
  v45 = MEMORY[0x277D39EA8];
  if (*(&v126 + 1))
  {
    sub_25E203DA4(&v125, &v128);
    v46 = *v45;
    v47 = v112;
    v115 = *(v44 + 104);
    v115(v112, v46, v43);
    v48 = sub_25E217084();
    (*(v44 + 8))(v47, v43);
    if ((v48 & 1) == 0)
    {
      goto LABEL_30;
    }

    v49 = v107;
    sub_25E216EC4();
    sub_25E20CD10(&v128, &v125);
    v50 = sub_25E216DD4();
    v51 = sub_25E217554();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v114 = swift_slowAlloc();
      *&v122 = v114;
      *v52 = 136315138;
      v100 = v50;
      v53 = v127;
      __swift_project_boxed_opaque_existential_1(&v125, *(&v126 + 1));
      v54 = *(v53 + 8);
      v55 = v116;
      sub_25E216F64();
      sub_25E212158(&qword_27FCE0B80);
      v56 = v117;
      v57 = sub_25E217624();
      v59 = v58;
      v60 = v56;
      v43 = v111;
      (*(v102 + 8))(v55, v60);
      __swift_destroy_boxed_opaque_existential_1(&v125);
      v61 = sub_25E21093C(v57, v59, &v122);

      *(v52 + 4) = v61;
      v62 = v100;
      _os_log_impl(&dword_25E202000, v100, v51, "Primary badge: %s", v52, 0xCu);
      v63 = v114;
      __swift_destroy_boxed_opaque_existential_1(v114);
      MEMORY[0x25F8AF9A0](v63, -1, -1);
      MEMORY[0x25F8AF9A0](v52, -1, -1);

      (*(v105 + 8))(v49, v106);
LABEL_30:
      v64 = &v128;
    }

    else
    {

      (*(v105 + 8))(v49, v106);
      __swift_destroy_boxed_opaque_existential_1(&v128);
      v64 = &v125;
    }

    __swift_destroy_boxed_opaque_existential_1(v64);
    v65 = v115;
  }

  else
  {
    sub_25E20C1A8(&v125, &qword_27FCE0B50, &unk_25E2181C0);
    v46 = *v45;
    v65 = *(v44 + 104);
  }

  v66 = MEMORY[0x277D84F90];
  v121 = MEMORY[0x277D84F90];
  v14 = v112;
  v65(v112, v46, v43);
  v67 = sub_25E217084();
  (*(v113 + 8))(v14, v43);
  v21 = v66;
  v68 = v118;
  if (v67)
  {
    v69 = 0;
    v70 = v109;
    v71 = v104;
    do
    {
      v19 = (v69 + 1);
      if (__OFADD__(v69, 1))
      {
        __break(1u);
        goto LABEL_63;
      }

      sub_25E2102DC(v71, &v131, &v121);
      ++v69;
      v71 += 40;
    }

    while (v19 != v70);
    v21 = v121;
    v72 = v121[2];
    if (v72)
    {
      *&v125 = MEMORY[0x277D84F90];
      sub_25E210FB0(0, v72, 0);
      v73 = v125;
      v115 = v21;
      v74 = (v21 + 4);
      v75 = (v102 + 8);
      do
      {
        sub_25E20CD10(v74, &v128);
        v76 = v130;
        __swift_project_boxed_opaque_existential_1(&v128, *(&v129 + 1));
        v77 = *(v76 + 8);
        v78 = v116;
        sub_25E216F64();
        sub_25E212158(&qword_27FCE0B80);
        v79 = v117;
        v80 = sub_25E217624();
        v82 = v81;
        (*v75)(v78, v79);
        __swift_destroy_boxed_opaque_existential_1(&v128);
        *&v125 = v73;
        v84 = *(v73 + 16);
        v83 = *(v73 + 24);
        if (v84 >= v83 >> 1)
        {
          sub_25E210FB0((v83 > 1), v84 + 1, 1);
          v73 = v125;
        }

        *(v73 + 16) = v84 + 1;
        v85 = v73 + 16 * v84;
        *(v85 + 32) = v80;
        *(v85 + 40) = v82;
        v74 += 40;
        --v72;
      }

      while (v72);
      *&v128 = v73;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE0B00, &qword_25E2182B0);
      sub_25E20E818();
      v86 = sub_25E217434();
      v88 = v87;

      v89 = v101;
      sub_25E216EC4();

      v90 = sub_25E216DD4();
      v91 = sub_25E217554();

      v92 = os_log_type_enabled(v90, v91);
      v68 = v118;
      if (v92)
      {
        v93 = swift_slowAlloc();
        v94 = swift_slowAlloc();
        *&v128 = v94;
        *v93 = 136315138;
        v95 = sub_25E21093C(v86, v88, &v128);

        *(v93 + 4) = v95;
        _os_log_impl(&dword_25E202000, v90, v91, "Other badges: %s", v93, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v94);
        MEMORY[0x25F8AF9A0](v94, -1, -1);
        MEMORY[0x25F8AF9A0](v93, -1, -1);
      }

      else
      {
      }

      (*(v105 + 8))(v89, v106);
      v21 = v115;
    }
  }

  if (v119)
  {
    v115 = v21;
    v19 = 0;
    v21 = &qword_27FCE0B78;
    v14 = (v68 + 4);
    while (v19 < v68[2])
    {
      sub_25E20CD10(v14, &v128);
      sub_25E20CD10(&v128, &v120);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE0B28, &qword_25E2181A0);
      v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE0B78, &qword_25E2182A8);
      if (swift_dynamicCast())
      {
        v117 = v96;
        __swift_project_boxed_opaque_existential_1(&v122, *(&v123 + 1));
        sub_25E216F44();
        __swift_destroy_boxed_opaque_existential_1(&v122);
      }

      else
      {
        v124 = 0;
        v122 = 0u;
        v123 = 0u;
        sub_25E20C1A8(&v122, &qword_27FCE0AF0, &qword_25E218130);
      }

      sub_25E2174B4();
      v98 = v97;

      if (v98)
      {

        sub_25E203DA4(&v128, &v125);
        if ((swift_dynamicCast() & 1) == 0)
        {
          v130 = 0;
          v128 = 0u;
          v129 = 0u;
        }

        v99 = v108;
        v21 = v115;
        goto LABEL_61;
      }

      v19 = (v19 + 1);
      __swift_destroy_boxed_opaque_existential_1(&v128);
      v14 += 40;
      v68 = v118;
      if (v119 == v19)
      {

        v21 = v115;
        goto LABEL_57;
      }
    }

LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

LABEL_57:
  v128 = 0u;
  v129 = 0u;
  v130 = 0;
  v99 = v108;
LABEL_61:
  sub_25E20C2F4(&v131, v99, &qword_27FCE0B50, &unk_25E2181C0);
  sub_25E20C2F4(&v128, v99 + 40, &qword_27FCE0AF0, &qword_25E218130);
  *(v99 + 80) = v21;
  sub_25E20C1A8(&v128, &qword_27FCE0AF0, &qword_25E218130);
  sub_25E20C1A8(&v131, &qword_27FCE0B50, &unk_25E2181C0);
  return __swift_destroy_boxed_opaque_existential_1(v137);
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_25E20FFE8(void *a1, void *a2)
{
  v4 = sub_25E216F34();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v10 = sub_25E216F54();
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25E216F64();
  LOBYTE(a2) = sub_25E21012C(v8, v10);

  (*(v5 + 8))(v8, v4);
  return a2 & 1;
}

BOOL sub_25E21012C(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v4 = *(a2 + 16);
  do
  {
    v5 = v3;
    if (v4 == v3)
    {
      break;
    }

    v6 = *(sub_25E216F34() - 8);
    ++v3;
    v7 = a2 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v5;
    sub_25E212158(&qword_27FCE0B68);
  }

  while ((sub_25E217444() & 1) == 0);
  return v4 != v5;
}

uint64_t sub_25E210224@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v5 = *(a2 + 16);
  if (v5)
  {
    v6 = result;
    v7 = a2 + 32;
    while (1)
    {
      sub_25E20CD10(v7, v9);
      v8 = v6(v9);
      if (v3)
      {
        return __swift_destroy_boxed_opaque_existential_1(v9);
      }

      if (v8)
      {
        return sub_25E203DA4(v9, a3);
      }

      result = __swift_destroy_boxed_opaque_existential_1(v9);
      v7 += 40;
      if (!--v5)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_25E2102DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v48 = a2;
  v6 = sub_25E216F34();
  v57 = *(v6 - 8);
  v7 = *(v57 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE0B90, &qword_25E2182C8);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v43 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE0B98, &unk_25E2182D0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v47 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v43 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v43 - v21;
  sub_25E20CD10(a1, &v51);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE0B28, &qword_25E2181A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE0B38, &qword_25E2182A0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v50 = 0;
    memset(v49, 0, sizeof(v49));
    return sub_25E20C1A8(v49, &qword_27FCE0B50, &unk_25E2181C0);
  }

  v44 = v9;
  v46 = a3;
  sub_25E203DA4(v49, v54);
  v23 = v55;
  v24 = v56;
  __swift_project_boxed_opaque_existential_1(v54, v55);
  if ((*(v24 + 48))(v23, v24))
  {
    v45 = v3;

    v25 = v56;
    __swift_project_boxed_opaque_existential_1(v54, v55);
    v26 = *(v25 + 8);
    sub_25E216F64();
    v27 = *(v57 + 56);
    v27(v22, 0, 1, v6);
    sub_25E20C2F4(v48, &v51, &qword_27FCE0B50, &unk_25E2181C0);
    if (v52)
    {
      v28 = v53;
      __swift_project_boxed_opaque_existential_1(&v51, v52);
      v29 = *(v28 + 8);
      sub_25E216F64();
      v27(v20, 0, 1, v6);
      __swift_destroy_boxed_opaque_existential_1(&v51);
    }

    else
    {
      sub_25E20C1A8(&v51, &qword_27FCE0B50, &unk_25E2181C0);
      v27(v20, 1, 1, v6);
    }

    v31 = *(v10 + 48);
    sub_25E20C2F4(v22, v13, &qword_27FCE0B98, &unk_25E2182D0);
    sub_25E20C2F4(v20, &v13[v31], &qword_27FCE0B98, &unk_25E2182D0);
    v32 = *(v57 + 48);
    if (v32(v13, 1, v6) == 1)
    {
      sub_25E20C1A8(v20, &qword_27FCE0B98, &unk_25E2182D0);
      sub_25E20C1A8(v22, &qword_27FCE0B98, &unk_25E2182D0);
      if (v32(&v13[v31], 1, v6) == 1)
      {
        sub_25E20C1A8(v13, &qword_27FCE0B98, &unk_25E2182D0);
        return __swift_destroy_boxed_opaque_existential_1(v54);
      }
    }

    else
    {
      v33 = v47;
      sub_25E20C2F4(v13, v47, &qword_27FCE0B98, &unk_25E2182D0);
      if (v32(&v13[v31], 1, v6) != 1)
      {
        v39 = v57;
        v40 = &v13[v31];
        v41 = v44;
        (*(v57 + 32))(v44, v40, v6);
        sub_25E212158(&qword_27FCE0B68);
        LODWORD(v48) = sub_25E217444();
        v42 = *(v39 + 8);
        v42(v41, v6);
        sub_25E20C1A8(v20, &qword_27FCE0B98, &unk_25E2182D0);
        sub_25E20C1A8(v22, &qword_27FCE0B98, &unk_25E2182D0);
        v42(v33, v6);
        sub_25E20C1A8(v13, &qword_27FCE0B98, &unk_25E2182D0);
        v34 = v46;
        if (v48)
        {
          return __swift_destroy_boxed_opaque_existential_1(v54);
        }

LABEL_13:
        v35 = *v34;
        if (*(*v34 + 16) <= 1uLL)
        {
          sub_25E20CD10(v54, &v51);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *v34 = v35;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v35 = sub_25E20EA08(0, v35[2] + 1, 1, v35);
            *v34 = v35;
          }

          v38 = v35[2];
          v37 = v35[3];
          if (v38 >= v37 >> 1)
          {
            v35 = sub_25E20EA08((v37 > 1), v38 + 1, 1, v35);
            *v34 = v35;
          }

          v35[2] = v38 + 1;
          sub_25E203DA4(&v51, &v35[5 * v38 + 4]);
        }

        return __swift_destroy_boxed_opaque_existential_1(v54);
      }

      sub_25E20C1A8(v20, &qword_27FCE0B98, &unk_25E2182D0);
      sub_25E20C1A8(v22, &qword_27FCE0B98, &unk_25E2182D0);
      (*(v57 + 8))(v33, v6);
    }

    sub_25E20C1A8(v13, &qword_27FCE0B90, &qword_25E2182C8);
    v34 = v46;
    goto LABEL_13;
  }

  return __swift_destroy_boxed_opaque_existential_1(v54);
}

uint64_t sub_25E21093C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_25E210A08(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_25E20C044(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_25E210A08(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_25E210B14(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_25E2175E4();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_25E210B14(uint64_t a1, unint64_t a2)
{
  v4 = sub_25E210B60(a1, a2);
  sub_25E210C90(&unk_286FEDE98);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_25E210B60(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_25E210D7C(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_25E2175E4();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_25E2174D4();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_25E210D7C(v10, 0);
        result = sub_25E2175C4();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_25E210C90(uint64_t result)
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
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_25E210DF0(result, v12, 1, v3);
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
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_25E210D7C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE0B88, &qword_25E2182B8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_25E210DF0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE0B88, &qword_25E2182B8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

size_t sub_25E210EE4(size_t a1, int64_t a2, char a3)
{
  result = sub_25E210FD0(a1, a2, a3, *v3, &qword_27FCE0B48, &qword_25E2181B0, type metadata accessor for ActionPoint);
  *v3 = result;
  return result;
}

size_t sub_25E210F28(size_t a1, int64_t a2, char a3)
{
  result = sub_25E210FD0(a1, a2, a3, *v3, &qword_27FCE0B40, &qword_25E2182E0, type metadata accessor for SignalPoint);
  *v3 = result;
  return result;
}

size_t sub_25E210F6C(size_t a1, int64_t a2, char a3)
{
  result = sub_25E210FD0(a1, a2, a3, *v3, &qword_27FCE0918, &qword_25E217EB0, MEMORY[0x277CC9578]);
  *v3 = result;
  return result;
}

char *sub_25E210FB0(char *a1, int64_t a2, char a3)
{
  result = sub_25E2111AC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_25E210FD0(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_25E2111AC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE0748, &qword_25E2182C0);
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

unint64_t sub_25E2112B8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_25E217654();
  sub_25E217484();
  v6 = sub_25E217674();

  return sub_25E2113B4(a1, a2, v6);
}

unint64_t sub_25E211330(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_25E216F34();
  sub_25E212158(&qword_27FCE0B60);
  v5 = sub_25E217424();

  return sub_25E21146C(a1, v5);
}

unint64_t sub_25E2113B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_25E217634())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_25E21146C(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_25E216F34();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4);
      sub_25E212158(&qword_27FCE0B68);
      v16 = sub_25E217444();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

uint64_t sub_25E211618(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_25E216F34();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE0B58, &qword_25E218288);
  v42 = a2;
  result = sub_25E217604();
  v14 = result;
  if (*(v11 + 16))
  {
    v45 = v10;
    v46 = v6;
    v38 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v39 = (v7 + 16);
    v40 = v7;
    v43 = (v7 + 32);
    v21 = result + 64;
    v41 = v11;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 48);
      v44 = *(v7 + 72);
      v28 = v27 + v44 * v26;
      if (v42)
      {
        (*v43)(v45, v28, v46);
        sub_25E203DA4((*(v11 + 56) + 40 * v26), v47);
      }

      else
      {
        (*v39)(v45, v28, v46);
        sub_25E20CD10(*(v11 + 56) + 40 * v26, v47);
      }

      v29 = *(v14 + 40);
      sub_25E212158(&qword_27FCE0B60);
      result = sub_25E217424();
      v30 = -1 << *(v14 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        v7 = v40;
        v11 = v41;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v21 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
      v7 = v40;
      v11 = v41;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      (*v43)((*(v14 + 48) + v44 * v22), v45, v46);
      result = sub_25E203DA4(v47, *(v14 + 56) + 40 * v22);
      ++*(v14 + 16);
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_36;
    }

    v37 = 1 << *(v11 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v16, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v37;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

void *sub_25E2119E8()
{
  v1 = v0;
  v30 = sub_25E216F34();
  v32 = *(v30 - 8);
  v2 = *(v32 + 64);
  MEMORY[0x28223BE20](v30);
  v29 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE0B58, &qword_25E218288);
  v4 = *v0;
  v5 = sub_25E2175F4();
  v6 = v5;
  if (*(v4 + 16))
  {
    v26 = v1;
    result = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v8 + 8 * v9)
    {
      result = memmove(result, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v31 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v27 = v32 + 32;
    v28 = v32 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v33 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v32;
        v21 = *(v32 + 72) * v19;
        v22 = v29;
        v23 = v30;
        (*(v32 + 16))(v29, *(v4 + 48) + v21, v30);
        v19 *= 40;
        sub_25E20CD10(*(v4 + 56) + v19, v34);
        v24 = v31;
        (*(v20 + 32))(*(v31 + 48) + v21, v22, v23);
        result = sub_25E203DA4(v34, *(v24 + 56) + v19);
        v14 = v33;
      }

      while (v33);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v26;
        v6 = v31;
        goto LABEL_18;
      }

      v18 = *(v8 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v33 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

uint64_t sub_25E211C70(uint64_t a1, uint64_t a2, char a3, void *a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_25E216F34();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = a5;
  v41 = a6;
  v38 = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v39);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_1, a1, a5);
  v18 = *a4;
  v20 = sub_25E211330(a2);
  v21 = v18[2];
  v22 = (v19 & 1) == 0;
  v23 = v21 + v22;
  if (__OFADD__(v21, v22))
  {
    __break(1u);
    goto LABEL_14;
  }

  v24 = v19;
  v25 = v18[3];
  if (v25 >= v23 && (a3 & 1) != 0)
  {
LABEL_7:
    v26 = *a4;
    if (v24)
    {
LABEL_8:
      v27 = (v26[7] + 40 * v20);
      __swift_destroy_boxed_opaque_existential_1(v27);
      return sub_25E203DA4(&v39, v27);
    }

    goto LABEL_11;
  }

  if (v25 >= v23 && (a3 & 1) == 0)
  {
    sub_25E2119E8();
    goto LABEL_7;
  }

  sub_25E211618(v23, a3 & 1);
  v29 = *a4;
  v30 = sub_25E211330(a2);
  if ((v24 & 1) != (v31 & 1))
  {
LABEL_14:
    result = sub_25E217644();
    __break(1u);
    return result;
  }

  v20 = v30;
  v26 = *a4;
  if (v24)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v13 + 16))(v16, a2, v12);
  v32 = v40;
  v33 = __swift_mutable_project_boxed_opaque_existential_1(&v39, v40);
  v34 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v33);
  v36 = &v38 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v37 + 16))(v36);
  sub_25E21202C(v20, v16, v36, v26, a5, v38);
  return __swift_destroy_boxed_opaque_existential_1(&v39);
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

uint64_t sub_25E211F70(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 80);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25E211FB8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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
      *(result + 80) = (a2 - 1);
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_25E21202C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v19 = a5;
  v20 = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v18);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_1, a3, a5);
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v12 = a4[6];
  v13 = sub_25E216F34();
  (*(*(v13 - 8) + 32))(v12 + *(*(v13 - 8) + 72) * a1, a2, v13);
  result = sub_25E203DA4(&v18, a4[7] + 40 * a1);
  v15 = a4[2];
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v17;
  }

  return result;
}

uint64_t sub_25E212158(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_25E216F34();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

UIImage __swiftcall UIImage.crop(relativeTo:)(__C::CGRect relativeTo)
{
  height = relativeTo.size.height;
  width = relativeTo.size.width;
  y = relativeTo.origin.y;
  x = relativeTo.origin.x;
  [v1 size];
  v7 = v6;
  v9 = v8;
  v23.origin.x = x;
  v23.origin.y = y;
  v23.size.width = width;
  v23.size.height = height;
  v10 = CGRectGetWidth(v23);
  v24.origin.x = x;
  v24.origin.y = y;
  v24.size.width = width;
  v24.size.height = height;
  v11 = CGRectGetHeight(v24);
  CGAffineTransformMakeScale(&v21, v10, v11);
  v22.width = v7;
  v22.height = v9;
  v12 = CGSizeApplyAffineTransform(v22, &v21);
  sub_25E212678();
  v13 = [swift_getObjCClassFromMetadata() defaultFormat];
  [v1 scale];
  [v13 setScale_];
  v14 = [objc_allocWithZone(MEMORY[0x277D75560]) initWithSize:v13 format:{v12.width, v12.height}];

  v15 = swift_allocObject();
  v15[2] = x;
  v15[3] = y;
  v15[4] = width;
  v15[5] = height;
  *(v15 + 6) = v1;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_25E21275C;
  *(v16 + 24) = v15;
  *&v21.tx = sub_25E21276C;
  *&v21.ty = v16;
  *&v21.a = MEMORY[0x277D85DD0];
  *&v21.b = 1107296256;
  *&v21.c = sub_25E212794;
  *&v21.d = &block_descriptor;
  v17 = _Block_copy(&v21);
  v18 = v1;

  v19 = [v14 imageWithActions_];

  _Block_release(v17);
  LOBYTE(v14) = swift_isEscapingClosureAtFileLocation();

  if ((v14 & 1) == 0)
  {
    return v19;
  }

  __break(1u);
  return result;
}

UIImage __swiftcall UIImage.resize(to:)(CGSize to)
{
  height = to.height;
  width = to.width;
  sub_25E212678();
  v4 = [swift_getObjCClassFromMetadata() defaultFormat];
  [v1 scale];
  [v4 setScale_];
  v5 = [objc_allocWithZone(MEMORY[0x277D75560]) initWithSize:v4 format:{width, height}];

  v6 = swift_allocObject();
  *(v6 + 2) = v1;
  v6[3] = width;
  v6[4] = height;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_25E2127F8;
  *(v7 + 24) = v6;
  v12[4] = sub_25E21281C;
  v12[5] = v7;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_25E212794;
  v12[3] = &block_descriptor_13;
  v8 = _Block_copy(v12);
  v9 = v1;

  v10 = [v5 imageWithActions_];

  _Block_release(v8);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if ((v5 & 1) == 0)
  {
    return v10;
  }

  __break(1u);
  return result;
}

UIGraphicsImageRendererFormat __swiftcall UIImage.renderingFormat()()
{
  sub_25E212678();
  v1 = [swift_getObjCClassFromMetadata() defaultFormat];
  [v0 scale];
  [v1 setScale_];
  return v1;
}

unint64_t sub_25E212678()
{
  result = qword_27FCE0BA0;
  if (!qword_27FCE0BA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FCE0BA0);
  }

  return result;
}

id sub_25E2126C4(int a1, id a2, double a3, double a4)
{
  [a2 size];
  v8 = -(v7 * a3);
  [a2 size];
  CGAffineTransformMakeTranslation(&v12, v8, -(v9 * a4));
  v13.x = 0.0;
  v13.y = 0.0;
  v10 = CGPointApplyAffineTransform(v13, &v12);
  return [a2 drawAtPoint_];
}

id sub_25E21275C(int a1)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  return sub_25E2126C4(a1, *(v1 + 48), *(v1 + 16), *(v1 + 24));
}

uint64_t sub_25E21276C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

void sub_25E212794(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v2();
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t WidgetFamily.chsFamily.getter()
{
  v1 = v0;
  v2 = sub_25E2173F4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x277CE3B68])
  {
    return 1;
  }

  if (v7 == *MEMORY[0x277CE3B70])
  {
    return 2;
  }

  if (v7 == *MEMORY[0x277CE3B60])
  {
    return 3;
  }

  if (v7 == *MEMORY[0x277CE3B88])
  {
    return 4;
  }

  if (v7 != *MEMORY[0x277CE3B90])
  {
    if (v7 != *MEMORY[0x277CE3B98] && v7 != *MEMORY[0x277CE3B80])
    {
      (*(v3 + 8))(v6, v2);
    }

    return 1;
  }

  return 10;
}

uint64_t WidgetFamily.analyticSize.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_25E2173F4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, v2, v4);
  v9 = (*(v5 + 88))(v8, v4);
  if (v9 == *MEMORY[0x277CE3B68])
  {
    v10 = MEMORY[0x277D39EC0];
LABEL_7:
    v11 = *v10;
    v12 = sub_25E216ED4();
    v13 = *(*(v12 - 8) + 104);
    v14 = a1;
    v15 = v11;
    return v13(v14, v15, v12);
  }

  if (v9 == *MEMORY[0x277CE3B70])
  {
    v10 = MEMORY[0x277D39EC8];
    goto LABEL_7;
  }

  if (v9 == *MEMORY[0x277CE3B60])
  {
    v10 = MEMORY[0x277D39EB8];
    goto LABEL_7;
  }

  v17 = *MEMORY[0x277CE3B88];
  v18 = v9;
  v12 = sub_25E216ED4();
  v13 = *(*(v12 - 8) + 104);
  if (v18 != v17)
  {
    v13(a1, *MEMORY[0x277D39EC0], v12);
    return (*(v5 + 8))(v8, v4);
  }

  v15 = *MEMORY[0x277D39ED0];
  v14 = a1;
  return v13(v14, v15, v12);
}

uint64_t PositionInLockScreenCircularAccessory.description.getter()
{
  if (*v0)
  {
    result = 0x7468676972;
  }

  else
  {
    result = 1952867692;
  }

  *v0;
  return result;
}

PeopleUI::PositionInLockScreenCircularAccessory_optional __swiftcall PositionInLockScreenCircularAccessory.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_25E217614();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_25E212CB4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x7468676972;
  }

  else
  {
    v4 = 1952867692;
  }

  if (v3)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  if (*a2)
  {
    v6 = 0x7468676972;
  }

  else
  {
    v6 = 1952867692;
  }

  if (*a2)
  {
    v7 = 0xE500000000000000;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_25E217634();
  }

  return v9 & 1;
}

uint64_t sub_25E212D50()
{
  v1 = *v0;
  sub_25E217654();
  sub_25E217484();

  return sub_25E217674();
}

uint64_t sub_25E212DC8()
{
  *v0;
  sub_25E217484();
}

uint64_t sub_25E212E2C()
{
  v1 = *v0;
  sub_25E217654();
  sub_25E217484();

  return sub_25E217674();
}

uint64_t sub_25E212EA0@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_25E217614();

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

void sub_25E212F00(uint64_t *a1@<X8>)
{
  v2 = 1952867692;
  if (*v1)
  {
    v2 = 0x7468676972;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_25E212FE4()
{
  if (*v0)
  {
    result = 0x7468676972;
  }

  else
  {
    result = 1952867692;
  }

  *v0;
  return result;
}

uint64_t AvailabilityPersonStatus.accessibilityText.getter()
{
  v0 = sub_25E217014();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = v12 - v6;
  sub_25E2170C4();
  (*(v1 + 104))(v5, *MEMORY[0x277D39F60], v0);
  sub_25E216A3C(&qword_27FCE0BA8, MEMORY[0x277D39F68]);
  sub_25E2174E4();
  sub_25E2174E4();
  if (v12[2] == v12[0] && v12[3] == v12[1])
  {
    v8 = *(v1 + 8);
    v8(v5, v0);
    v8(v7, v0);

    return 0x4420746F4E206F44;
  }

  v9 = sub_25E217634();
  v10 = *(v1 + 8);
  v10(v5, v0);
  v10(v7, v0);

  if (v9)
  {
    return 0x4420746F4E206F44;
  }

  return 0;
}

uint64_t AvailabilityPersonStatus.icon.getter()
{
  v0 = sub_25E217014();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = v12 - v6;
  sub_25E2170C4();
  (*(v1 + 104))(v5, *MEMORY[0x277D39F60], v0);
  sub_25E216A3C(&qword_27FCE0BA8, MEMORY[0x277D39F68]);
  sub_25E2174E4();
  sub_25E2174E4();
  if (v12[2] == v12[0] && v12[3] == v12[1])
  {
    v8 = *(v1 + 8);
    v8(v5, v0);
    v8(v7, v0);

    return sub_25E217374();
  }

  v9 = sub_25E217634();
  v10 = *(v1 + 8);
  v10(v5, v0);
  v10(v7, v0);

  if (v9)
  {
    return sub_25E217374();
  }

  return 0;
}

uint64_t AvailabilityPersonStatus.iconBackground.getter()
{
  v0 = sub_25E217014();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = v13 - v6;
  sub_25E2170C4();
  (*(v1 + 104))(v5, *MEMORY[0x277D39F60], v0);
  sub_25E216A3C(&qword_27FCE0BA8, MEMORY[0x277D39F68]);
  sub_25E2174E4();
  sub_25E2174E4();
  if (v13[2] == v13[0] && v13[3] == v13[1])
  {
    v8 = *(v1 + 8);
    v8(v5, v0);
    v8(v7, v0);
  }

  else
  {
    v9 = sub_25E217634();
    v10 = *(v1 + 8);
    v10(v5, v0);
    v10(v7, v0);

    if ((v9 & 1) == 0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE0BB0, &qword_25E218320);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_25E218300;
      *(v11 + 32) = sub_25E2172E4();
      return v11;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE0BB0, &qword_25E218320);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_25E217B60;
  if (qword_27FCE0668 != -1)
  {
    swift_once();
  }

  *(v11 + 32) = qword_27FCE09C8;

  *(v11 + 40) = _s6People19MessagePersonStatusV0A2UIE10iconShadow05SwiftE05ColorVvg_0();
  return v11;
}

uint64_t AskToBuyRequestPersonStatus.icon.getter()
{
  v0 = sub_25E217564();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25E2170D4();
  v5 = (*(v1 + 88))(v4, v0);
  if (v5 != *MEMORY[0x277D3A068] && v5 != *MEMORY[0x277D3A070] && v5 != *MEMORY[0x277D3A078] && v5 != *MEMORY[0x277D3A060])
  {
    (*(v1 + 8))(v4, v0);
  }

  return sub_25E217384();
}

uint64_t AskToBuyRequestPersonStatus.iconBackground.getter()
{
  v0 = sub_25E217564();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25E2170D4();
  v5 = (*(v1 + 88))(v4, v0);
  if (v5 == *MEMORY[0x277D3A068])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE0BB0, &qword_25E218320);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_25E217B60;
    if (qword_27FCE0698 != -1)
    {
      swift_once();
    }

    *(v6 + 32) = qword_27FCE09F8;
    v7 = qword_27FCE06A0;

    if (v7 != -1)
    {
      swift_once();
    }

    v8 = qword_27FCE0A00;
LABEL_24:
    *(v6 + 40) = v8;
    goto LABEL_25;
  }

  if (v5 == *MEMORY[0x277D3A070])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE0BB0, &qword_25E218320);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_25E217B60;
    if (qword_27FCE06A8 != -1)
    {
      swift_once();
    }

    *(v6 + 32) = qword_27FCE0A08;
    v9 = qword_27FCE06B0;

    if (v9 != -1)
    {
      swift_once();
    }

    v8 = qword_27FCE0A10;
    goto LABEL_24;
  }

  if (v5 == *MEMORY[0x277D3A078])
  {
LABEL_19:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE0BB0, &qword_25E218320);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_25E217B60;
    if (qword_27FCE0688 != -1)
    {
      swift_once();
    }

    *(v6 + 32) = qword_27FCE09E8;
    v11 = qword_27FCE0690;

    if (v11 != -1)
    {
      swift_once();
    }

    v8 = qword_27FCE09F0;
    goto LABEL_24;
  }

  if (v5 != *MEMORY[0x277D3A060])
  {
    (*(v1 + 8))(v4, v0);
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE0BB0, &qword_25E218320);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_25E217B60;
  if (qword_27FCE06F0 != -1)
  {
    swift_once();
  }

  v10 = qword_27FCE0A50;
  *(v6 + 32) = qword_27FCE0A50;
  *(v6 + 40) = v10;

LABEL_25:

  return v6;
}

uint64_t AskToBuyRequestPersonStatus.iconShadow.getter()
{
  sub_25E215FEC();
}

double AskToBuyRequestPersonStatus.iconOffset.getter()
{
  v0 = sub_25E217564();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25E2170D4();
  if ((*(v1 + 88))(v4, v0) != *MEMORY[0x277D3A068])
  {
    (*(v1 + 8))(v4, v0);
  }

  return 0.0;
}

uint64_t sub_25E213E50()
{
  sub_25E215FEC();
}

double sub_25E213E78()
{
  v0 = sub_25E217564();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25E2170D4();
  if ((*(v1 + 88))(v4, v0) != *MEMORY[0x277D3A068])
  {
    (*(v1 + 8))(v4, v0);
  }

  return 0.0;
}

uint64_t sub_25E213FC4(void (*a1)(uint64_t), void (*a2)(uint64_t, uint64_t), uint64_t a3, uint64_t a4)
{
  v26[0] = a3;
  v26[1] = a4;
  v6 = sub_25E216EB4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_25E216F94();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = v26 - v18;
  a1(v17);
  v20 = (*(v12 + 88))(v19, v11);
  if (v20 == *MEMORY[0x277D39F28])
  {
    a2(v20, v21);
    (*(v7 + 104))(v10, *MEMORY[0x277D39EB0], v6);
    v22 = sub_25E217084();

    (*(v7 + 8))(v10, v6);
    if (v22)
    {
      return 0;
    }

    else
    {
      return sub_25E2174A4();
    }
  }

  else
  {
    (a1)(v20, v21);
    sub_25E216F84();
    v24 = *(v12 + 8);
    v24(v16, v11);
    v25 = sub_25E2174A4();

    v24(v19, v11);
    return v25;
  }
}

uint64_t ScreenTimeRequestPersonStatus.iconBackground.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE0BB0, &qword_25E218320);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_25E217B60;
  if (qword_27FCE0680 != -1)
  {
    swift_once();
  }

  *(v0 + 32) = qword_27FCE09E0;
  v1 = qword_27FCE0678;

  if (v1 != -1)
  {
    swift_once();
  }

  *(v0 + 40) = qword_27FCE09D8;

  return v0;
}

uint64_t sub_25E21435C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE0BB0, &qword_25E218320);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_25E217B60;
  if (qword_27FCE0680 != -1)
  {
    swift_once();
  }

  *(v0 + 32) = qword_27FCE09E0;
  v1 = qword_27FCE0678;

  if (v1 != -1)
  {
    swift_once();
  }

  *(v0 + 40) = qword_27FCE09D8;

  return v0;
}

uint64_t ChildStatePersonStatus.iconBackground.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE0BB0, &qword_25E218320);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_25E217B60;
  if (qword_27FCE06D8 != -1)
  {
    swift_once();
  }

  *(v0 + 32) = qword_27FCE0A38;
  v1 = qword_27FCE06E0;

  if (v1 != -1)
  {
    swift_once();
  }

  *(v0 + 40) = qword_27FCE0A40;

  return v0;
}

uint64_t ChildStatePersonStatus.iconFontSize.getter()
{
  _s6People19MessagePersonStatusV0A2UIE12iconFontSize05SwiftE00G0Vvg_0();
  v0 = sub_25E217184();

  return v0;
}

uint64_t sub_25E214604()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE0BB0, &qword_25E218320);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_25E217B60;
  if (qword_27FCE06D8 != -1)
  {
    swift_once();
  }

  *(v0 + 32) = qword_27FCE0A38;
  v1 = qword_27FCE06E0;

  if (v1 != -1)
  {
    swift_once();
  }

  *(v0 + 40) = qword_27FCE0A40;

  return v0;
}

uint64_t sub_25E21471C()
{
  _s6People19MessagePersonStatusV0A2UIE12iconFontSize05SwiftE00G0Vvg_0();
  v0 = sub_25E217184();

  return v0;
}

uint64_t LocationPersonStatus.iconBackground.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE0BB0, &qword_25E218320);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_25E217B60;
  if (qword_27FCE06C0 != -1)
  {
    swift_once();
  }

  *(v0 + 32) = qword_27FCE0A20;
  v1 = qword_27FCE06B8;

  if (v1 != -1)
  {
    swift_once();
  }

  *(v0 + 40) = qword_27FCE0A18;

  return v0;
}

uint64_t LocationPersonStatus.icon.getter()
{
  v0 = sub_25E216EB4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25E217094();
  (*(v1 + 104))(v4, *MEMORY[0x277D39EA0], v0);
  v5 = sub_25E217084();

  (*(v1 + 8))(v4, v0);
  result = 0;
  if (v5)
  {
    return sub_25E217374();
  }

  return result;
}

uint64_t sub_25E214A24()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE0BB0, &qword_25E218320);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_25E217B60;
  if (qword_27FCE06C0 != -1)
  {
    swift_once();
  }

  *(v0 + 32) = qword_27FCE0A20;
  v1 = qword_27FCE06B8;

  if (v1 != -1)
  {
    swift_once();
  }

  *(v0 + 40) = qword_27FCE0A18;

  return v0;
}

uint64_t sub_25E214B3C()
{
  v0 = sub_25E216EB4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25E217094();
  (*(v1 + 104))(v4, *MEMORY[0x277D39EA0], v0);
  v5 = sub_25E217084();

  (*(v1 + 8))(v4, v0);
  result = 0;
  if (v5)
  {
    return sub_25E217374();
  }

  return result;
}

uint64_t MotionPersonStatus.accessibilityText.getter()
{
  v0 = sub_25E216F74();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25E217024();
  v5 = (*(v1 + 88))(v4, v0);
  if (v5 == *MEMORY[0x277D39F18])
  {
    v6 = 1852732786;
  }

  else if (v5 == *MEMORY[0x277D39F10])
  {
    v6 = 1818458467;
  }

  else if (v5 == *MEMORY[0x277D39F00])
  {
    v6 = 1986622052;
  }

  else
  {
    if (v5 != *MEMORY[0x277D39F20])
    {
      (*(v1 + 8))(v4, v0);
      return 0;
    }

    v6 = 1802264951;
  }

  return v6 | 0x676E6900000000;
}

uint64_t MotionPersonStatus.icon.getter()
{
  v0 = sub_25E216F74();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25E217024();
  v5 = (*(v1 + 88))(v4, v0);
  if (v5 == *MEMORY[0x277D39F18])
  {
    return sub_25E217384();
  }

  if (v5 == *MEMORY[0x277D39F10] || v5 == *MEMORY[0x277D39F00] || v5 == *MEMORY[0x277D39F20] || v5 == *MEMORY[0x277D39F08])
  {
    return sub_25E217374();
  }

  (*(v1 + 8))(v4, v0);
  return 0;
}

uint64_t MotionPersonStatus.iconBackground.getter()
{
  if (MotionPersonStatus.icon.getter())
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE0BB0, &qword_25E218320);
    v0 = swift_allocObject();
    *(v0 + 16) = xmmword_25E217B60;
    if (qword_27FCE0670 != -1)
    {
      swift_once();
    }

    *(v0 + 32) = qword_27FCE09D0;

    *(v0 + 40) = sub_25E2172D4();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE0BB0, &qword_25E218320);
    v0 = swift_allocObject();
    *(v0 + 16) = xmmword_25E218300;
    *(v0 + 32) = sub_25E2172E4();
  }

  return v0;
}

uint64_t MotionPersonStatus.iconForeground.getter()
{
  if (MotionPersonStatus.icon.getter())
  {

    return _s6People19MessagePersonStatusV0A2UIE10iconShadow05SwiftE05ColorVvg_0();
  }

  else
  {

    return sub_25E2172E4();
  }
}

uint64_t MotionPersonStatus.iconFontSize.getter()
{
  UIFontForLanguage = CTFontCreateUIFontForLanguage(kCTFontUIFontSystem, 10.0, 0);
  if (UIFontForLanguage)
  {
    v1 = UIFontForLanguage;
    sub_25E2171C4();
    v2 = sub_25E217184();
  }

  else
  {
    _s6People19MessagePersonStatusV0A2UIE12iconFontSize05SwiftE00G0Vvg_0();
    v2 = sub_25E217184();
  }

  return v2;
}

uint64_t MotionPersonStatus.iconForLockScreenCircularAccessory.getter()
{
  v0 = sub_25E216F74();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25E217024();
  v5 = (*(v1 + 88))(v4, v0);
  v6 = v5 == *MEMORY[0x277D39F18] || v5 == *MEMORY[0x277D39F10];
  if (v6 || v5 == *MEMORY[0x277D39F00])
  {
    return sub_25E217374();
  }

  if (v5 == *MEMORY[0x277D39F20] || v5 == *MEMORY[0x277D39F08])
  {
    return sub_25E217374();
  }

  (*(v1 + 8))(v4, v0);
  return 0;
}

double MotionPersonStatus.iconOffset.getter()
{
  v0 = sub_25E216F74();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25E217024();
  if ((*(v1 + 88))(v4, v0) != *MEMORY[0x277D39F18])
  {
    (*(v1 + 8))(v4, v0);
  }

  return 0.0;
}

uint64_t sub_25E215410()
{
  if (MotionPersonStatus.icon.getter())
  {

    return _s6People19MessagePersonStatusV0A2UIE10iconShadow05SwiftE05ColorVvg_0();
  }

  else
  {

    return sub_25E2172E4();
  }
}

uint64_t sub_25E21547C()
{
  UIFontForLanguage = CTFontCreateUIFontForLanguage(kCTFontUIFontSystem, 10.0, 0);
  if (UIFontForLanguage)
  {
    v1 = UIFontForLanguage;
    sub_25E2171C4();
    v2 = sub_25E217184();
  }

  else
  {
    _s6People19MessagePersonStatusV0A2UIE12iconFontSize05SwiftE00G0Vvg_0();
    v2 = sub_25E217184();
  }

  return v2;
}

double sub_25E2154F4()
{
  v0 = sub_25E216F74();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25E217024();
  if ((*(v1 + 88))(v4, v0) != *MEMORY[0x277D39F18])
  {
    (*(v1 + 8))(v4, v0);
  }

  return 0.0;
}

uint64_t MissedCallPersonStatus.localizedDisplayString.getter()
{
  v0 = sub_25E217034();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = v12 - v6;
  sub_25E2170B4();
  (*(v1 + 104))(v5, *MEMORY[0x277D39F88], v0);
  sub_25E216A3C(&qword_27FCE0BB8, MEMORY[0x277D39F90]);
  sub_25E2174E4();
  sub_25E2174E4();
  if (v12[2] == v12[0] && v12[3] == v12[1])
  {
    v8 = *(v1 + 8);
    v8(v5, v0);
    v8(v7, v0);
  }

  else
  {
    sub_25E217634();
    v9 = *(v1 + 8);
    v9(v5, v0);
    v9(v7, v0);
  }

  v10 = sub_25E2174A4();

  return v10;
}

uint64_t MissedCallPersonStatus.iconBackground.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE0BB0, &qword_25E218320);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_25E217B60;
  if (qword_27FCE0700 != -1)
  {
    swift_once();
  }

  *(v0 + 32) = qword_27FCE0A60;
  v1 = qword_27FCE06F8;

  if (v1 != -1)
  {
    swift_once();
  }

  *(v0 + 40) = qword_27FCE0A58;

  return v0;
}

uint64_t sub_25E2159A4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE0BB0, &qword_25E218320);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_25E217B60;
  if (qword_27FCE0700 != -1)
  {
    swift_once();
  }

  *(v0 + 32) = qword_27FCE0A60;
  v1 = qword_27FCE06F8;

  if (v1 != -1)
  {
    swift_once();
  }

  *(v0 + 40) = qword_27FCE0A58;

  return v0;
}

uint64_t MessagePersonStatus.icon.getter()
{
  if (sub_25E217044() < 1)
  {
    return 0;
  }

  else
  {
    return sub_25E217374();
  }
}

uint64_t MessagePersonStatus.localizedDisplayString.getter()
{
  result = sub_25E217044();
  if (result)
  {
    return sub_25E2174A4();
  }

  return result;
}

uint64_t sub_25E215B78()
{
  result = sub_25E217044();
  if (result)
  {
    return sub_25E2174A4();
  }

  return result;
}

uint64_t sub_25E215BE0()
{
  if (sub_25E217044() < 1)
  {
    return 0;
  }

  else
  {
    return sub_25E217374();
  }
}

uint64_t sub_25E215C5C(uint64_t (*a1)(void))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE0BB0, &qword_25E218320);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_25E218300;
  *(v2 + 32) = a1();
  return v2;
}

uint64_t CalendarPersonStatus.localizedDisplayString.getter()
{
  v0 = sub_25E217054();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25E217064();
  v5 = (*(v1 + 88))(v4, v0);
  if (v5 == *MEMORY[0x277D39FB8] || v5 == *MEMORY[0x277D39FC0])
  {
    goto LABEL_6;
  }

  if (v5 != *MEMORY[0x277D39FB0])
  {
    (*(v1 + 8))(v4, v0);
LABEL_6:
    sub_25E2174A4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE0BC0, &qword_25E218328);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_25E218300;
    v8 = _s6People20LocationPersonStatusV0A2UIE22localizedDisplayStringSSvg_0();
    v10 = v9;
    *(v7 + 56) = MEMORY[0x277D837D0];
    *(v7 + 64) = sub_25E216208();
    *(v7 + 32) = v8;
    *(v7 + 40) = v10;
    v6 = sub_25E217464();

    return v6;
  }

  return _s6People20LocationPersonStatusV0A2UIE22localizedDisplayStringSSvg_0();
}

uint64_t sub_25E215EEC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE0BB0, &qword_25E218320);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_25E218300;
  *(v4 + 32) = a3();
  return v4;
}

uint64_t sub_25E215F70(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  if (*a3 == -1)
  {
    v5 = *a4;
  }

  else
  {
    swift_once();
    v8 = *a4;
  }
}

uint64_t sub_25E215FEC()
{
  v0 = sub_25E217564();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25E2170D4();
  v5 = (*(v1 + 88))(v4, v0);
  if (v5 == *MEMORY[0x277D3A068])
  {
    if (qword_27FCE0698 != -1)
    {
      swift_once();
    }

    v6 = &qword_27FCE09F8;
    return *v6;
  }

  if (v5 == *MEMORY[0x277D3A070])
  {
    if (qword_27FCE06A8 != -1)
    {
      swift_once();
    }

    v6 = &qword_27FCE0A08;
    return *v6;
  }

  if (v5 != *MEMORY[0x277D3A078])
  {
    if (v5 == *MEMORY[0x277D3A060])
    {
      if (qword_27FCE06F0 != -1)
      {
        swift_once();
      }

      v6 = &qword_27FCE0A50;
      return *v6;
    }

    (*(v1 + 8))(v4, v0);
  }

  if (qword_27FCE0688 != -1)
  {
    swift_once();
  }

  v6 = &qword_27FCE09E8;
  return *v6;
}

unint64_t sub_25E216208()
{
  result = qword_27FCE0BC8;
  if (!qword_27FCE0BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCE0BC8);
  }

  return result;
}

unint64_t sub_25E216260()
{
  result = qword_27FCE0BD0;
  if (!qword_27FCE0BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCE0BD0);
  }

  return result;
}

unint64_t sub_25E2162B8()
{
  result = qword_27FCE0BD8;
  if (!qword_27FCE0BD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCE0BE0, &qword_25E218448);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCE0BD8);
  }

  return result;
}

uint64_t sub_25E21631C(uint64_t a1)
{
  result = sub_25E216A3C(&qword_27FCE0BE8, MEMORY[0x277D3A010]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25E216374(uint64_t a1)
{
  result = sub_25E216A3C(&qword_27FCE0BF0, MEMORY[0x277D3A010]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25E2163CC(uint64_t a1)
{
  result = sub_25E216A3C(&qword_27FCE0BF8, MEMORY[0x277D3A030]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25E21646C(uint64_t a1)
{
  result = sub_25E216A3C(&qword_27FCE0C00, MEMORY[0x277D3A030]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25E2164C4(uint64_t a1)
{
  result = sub_25E216A3C(&qword_27FCE0C08, MEMORY[0x277D3A050]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25E216564(uint64_t a1)
{
  result = sub_25E216A3C(&qword_27FCE0C10, MEMORY[0x277D3A050]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25E2165BC(uint64_t a1)
{
  result = sub_25E216A3C(&qword_27FCE0C18, MEMORY[0x277D39FF0]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25E21665C(uint64_t a1)
{
  result = sub_25E216A3C(&qword_27FCE0C20, MEMORY[0x277D39FE0]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25E2166FC(uint64_t a1)
{
  result = sub_25E216A3C(&qword_27FCE0C28, MEMORY[0x277D39FE0]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25E216754(uint64_t a1)
{
  result = sub_25E216A3C(&qword_27FCE0C30, MEMORY[0x277D39F80]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25E2167AC(uint64_t a1)
{
  result = sub_25E216A3C(&qword_27FCE0C38, MEMORY[0x277D39F80]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25E216804(uint64_t a1)
{
  result = sub_25E216A3C(&qword_27FCE0C40, MEMORY[0x277D3A000]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25E2168A4(uint64_t a1)
{
  result = sub_25E216A3C(&qword_27FCE0C48, MEMORY[0x277D3A000]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25E2168FC(uint64_t a1)
{
  result = sub_25E216A3C(&qword_27FCE0C50, MEMORY[0x277D39FA8]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25E21699C(uint64_t a1)
{
  result = sub_25E216A3C(&qword_27FCE0C58, MEMORY[0x277D39FA8]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25E216A3C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25E216A84(uint64_t a1)
{
  result = sub_25E216A3C(&qword_27FCE0C60, MEMORY[0x277D39FD0]);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_25E216BB4()
{
  result = qword_27FCE0C68;
  if (!qword_27FCE0C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCE0C68);
  }

  return result;
}