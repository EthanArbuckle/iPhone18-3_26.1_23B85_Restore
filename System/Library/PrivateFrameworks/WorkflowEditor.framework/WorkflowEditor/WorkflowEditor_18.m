uint64_t sub_2745ABA40(uint64_t a1, char a2)
{
  v4 = sub_274639F1C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952B78);
  MEMORY[0x28223BE20](v8);
  v10 = &v14[-v9];
  v15 = a1;
  v16 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952B80);
  sub_274458A14(&qword_280952B88, &qword_280952B80);
  sub_27463A48C();
  KeyPath = swift_getKeyPath();
  v12 = &v10[*(v8 + 36)];
  *v12 = KeyPath;
  *(v12 + 1) = 0;
  v12[16] = 0;
  sub_274639F0C();
  sub_2745AF4E4();
  sub_27463AAAC();
  (*(v5 + 8))(v7, v4);
  return sub_27440CB1C(v10, &qword_280952B78);
}

uint64_t sub_2745ABC50@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (**a3)@<X0>(uint64_t a1@<X8>)@<X8>)
{
  v6 = type metadata accessor for VariableConfigurationSheet();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = sub_274638B1C();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 104))(v13, *MEMORY[0x277D7D458], v9, v11);
  sub_2745AF398(a1, &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v15 = swift_allocObject();
  sub_2745AF3FC(&v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14);
  *(v15 + v14 + v8) = a2;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952B80);
  v17 = *(v16 + 56);
  (*(v10 + 32))(a3 + v17, v13, v9);
  result = __swift_storeEnumTagSinglePayload(a3 + v17, 0, 1, v9);
  *(a3 + *(v16 + 60)) = 0;
  *a3 = sub_2745AF5C8;
  a3[1] = v15;
  return result;
}

uint64_t sub_2745ABE58@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  LODWORD(v68) = a2;
  v71 = a3;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952BB8);
  MEMORY[0x28223BE20](v69);
  v66 = (&v65 - v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952BC0);
  MEMORY[0x28223BE20](v5 - 8);
  v72 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v75 = &v65 - v8;
  v9 = type metadata accessor for VariableConfigurationSheet();
  v74 = *(v9 - 8);
  v10 = *(v74 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_274638B1C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952BC8);
  MEMORY[0x28223BE20](v16);
  v18 = (&v65 - v17);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952BD0);
  MEMORY[0x28223BE20](v19 - 8);
  v70 = &v65 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v65 - v22;
  v24 = a1;
  v25 = sub_2745AAD48();
  v73 = v23;
  v67 = v10;
  if (v25)
  {
    (*(v13 + 104))(v15, *MEMORY[0x277D7D450], v12);
    sub_2745AF398(a1, &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    v26 = a1;
    v27 = (*(v74 + 80) + 16) & ~*(v74 + 80);
    v28 = swift_allocObject();
    sub_2745AF3FC(&v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v28 + v27);
    v29 = *(v16 + 56);
    (*(v13 + 32))(v18 + v29, v15, v12);
    v30 = v18 + v29;
    v24 = v26;
    v23 = v73;
    __swift_storeEnumTagSinglePayload(v30, 0, 1, v12);
    *(v18 + *(v16 + 60)) = 0;
    *v18 = sub_2745AF928;
    v18[1] = v28;
    sub_27441277C(v18, v23, &qword_280952BC8);
    v31 = 0;
  }

  else
  {
    v31 = 1;
  }

  v32 = 1;
  __swift_storeEnumTagSinglePayload(v23, v31, 1, v16);
  v33 = v69;
  if (v68)
  {
    sub_2745AF398(v24, &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    v34 = (*(v74 + 80) + 16) & ~*(v74 + 80);
    v35 = swift_allocObject();
    sub_2745AF3FC(&v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v35 + v34);
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952BE0);
    v37 = v66;
    __swift_storeEnumTagSinglePayload(v66 + *(v36 + 56), 1, 1, v12);
    *(v37 + *(v36 + 60)) = 0;
    *v37 = sub_2745AF910;
    v37[1] = v35;
    v76 = sub_27463AB7C();
    v38 = sub_27463AE9C();
    *(v37 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952BE8) + 36)) = v38;
    v39 = v37 + *(v33 + 36);
    v39[32] = 0;
    *v39 = 0u;
    *(v39 + 1) = 0u;
    sub_27441277C(v37, v75, &qword_280952BB8);
    v32 = 0;
  }

  __swift_storeEnumTagSinglePayload(v75, v32, 1, v33);
  sub_2745AF398(v24, v11);
  sub_27463B9CC();
  v40 = sub_27463B9BC();
  v41 = (*(v74 + 80) + 32) & ~*(v74 + 80);
  v42 = swift_allocObject();
  v43 = v24;
  v44 = MEMORY[0x277D85700];
  *(v42 + 16) = v40;
  *(v42 + 24) = v44;
  sub_2745AF3FC(v11, v42 + v41);
  sub_2745AF398(v43, v11);
  v45 = sub_27463B9BC();
  v46 = swift_allocObject();
  *(v46 + 16) = v45;
  *(v46 + 24) = v44;
  sub_2745AF3FC(v11, v46 + v41);
  sub_274412734(0, &qword_28094BD90);
  sub_27463AF0C();
  v67 = v76;
  v74 = v77;
  v69 = v78;
  v47 = *v43;
  v68 = [*v43 resultType];
  v48 = [v47 anchor];
  v49 = [v48 parameter];

  v50 = [v49 localizedPrompt];
  v66 = sub_27463B6AC();
  v52 = v51;

  v53 = v73;
  v54 = v70;
  sub_274412C20(v73, v70, &qword_280952BD0);
  v55 = v75;
  v56 = v72;
  sub_274412C20(v75, v72, &qword_280952BC0);
  v57 = v71;
  sub_274412C20(v54, v71, &qword_280952BD0);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952BD8);
  sub_274412C20(v56, v57 + *(v58 + 48), &qword_280952BC0);
  v59 = (v57 + *(v58 + 64));
  v60 = v68;
  v61 = v74;
  *v59 = v67;
  v59[1] = v61;
  v62 = v69;
  v59[2] = v69;
  v59[3] = v60;
  v59[4] = v66;
  v59[5] = v52;

  v63 = v62;

  sub_27440CB1C(v55, &qword_280952BC0);
  sub_27440CB1C(v53, &qword_280952BD0);

  sub_27440CB1C(v56, &qword_280952BC0);
  return sub_27440CB1C(v54, &qword_280952BD0);
}

uint64_t sub_2745AC64C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_27463B70C();
  if (qword_2809492C0 != -1)
  {
    swift_once();
  }

  v4 = qword_28094BB00;
  v5 = sub_27463B66C();
  v6 = sub_27463B66C();

  v7 = [v4 localizedStringForKey:v5 value:v6 table:0];

  v8 = sub_27463B6AC();
  v10 = v9;

  *a2 = sub_274639B2C();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952BF0);
  sub_2745AC78C(v8, v10, a1, (a2 + *(v11 + 44)));
}

uint64_t sub_2745AC78C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v76 = a3;
  v75 = a4;
  v7 = type metadata accessor for VariableConfigurationSheet();
  v8 = v7 - 8;
  v65 = *(v7 - 8);
  v64 = *(v65 + 64);
  MEMORY[0x28223BE20](v7);
  v62 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_27463957C();
  v71 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v61 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D688);
  v66 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v59 = &v52 - v11;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952BF8) - 8;
  MEMORY[0x28223BE20](v73);
  v72 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v60 = &v52 - v14;
  v78 = a1;
  v79 = a2;
  v58 = sub_274412BBC();

  v68 = sub_27463A53C();
  v67 = v15;
  v69 = v16;
  v70 = v17;
  v91 = a1;
  v92 = a2;
  v18 = (a3 + *(v8 + 40));
  v19 = v18[1];
  v57 = *v18;
  v56 = v18[2];
  v55 = v18[3];
  v21 = v18[4];
  v20 = v18[5];
  v54 = v21;
  v53 = v20;
  v85 = v57;
  v86 = v19;
  v87 = v56;
  v88 = v55;
  v89 = v21;
  v90 = v20;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952B68);
  sub_27463AD0C();
  v22 = v78;
  v23 = v79;
  v24 = v80;
  v25 = v81;
  v27 = v82;
  v26 = v83;
  v28 = v84;
  swift_getKeyPath();
  v78 = v22;
  v79 = v23;
  v80 = v24;
  v81 = v25;
  v82 = v27;
  v83 = v26;
  v84 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952C00);
  sub_27463AECC();

  v85 = v57;
  v86 = v19;
  v87 = v56;
  v88 = v55;
  v89 = v54;
  v90 = v53;
  sub_27463ACEC();
  v29 = v77;
  v30 = [v77 defaultName];
  v31 = sub_27463B6AC();
  v33 = v32;

  v85 = v31;
  v86 = v33;
  sub_27463A53C();
  v34 = v59;
  sub_27463B18C();
  v35 = v61;
  sub_27463956C();
  v36 = v62;
  sub_2745AF398(v76, v62);
  v37 = (*(v65 + 80) + 16) & ~*(v65 + 80);
  v38 = swift_allocObject();
  sub_2745AF3FC(v36, v38 + v37);
  sub_274458A14(&qword_280952FC0, &qword_28094D688);
  v39 = v60;
  v40 = v63;
  sub_27463AA6C();

  (*(v71 + 8))(v35, v74);
  (*(v66 + 8))(v34, v40);
  sub_2745AF398(v76, v36);
  v41 = swift_allocObject();
  sub_2745AF3FC(v36, v41 + v37);
  v42 = (v39 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952C08) + 36));
  *v42 = 0;
  v42[1] = 0;
  v42[2] = sub_2745AF9BC;
  v42[3] = v41;
  KeyPath = swift_getKeyPath();
  v44 = v39 + *(v73 + 44);
  *v44 = KeyPath;
  *(v44 + 8) = 2;
  v45 = v72;
  sub_274412C20(v39, v72, &qword_280952BF8);
  v46 = v75;
  v47 = v68;
  v48 = v67;
  *v75 = v68;
  v46[1] = v48;
  LOBYTE(v41) = v69 & 1;
  *(v46 + 16) = v69 & 1;
  v46[3] = v70;
  v46[4] = 0;
  *(v46 + 40) = 1;
  v49 = v46;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952C10);
  sub_274412C20(v45, v49 + *(v50 + 64), &qword_280952BF8);
  sub_27440B094(v47, v48, v41);

  sub_27440CB1C(v39, &qword_280952BF8);
  sub_27440CB1C(v45, &qword_280952BF8);
  sub_274412C10(v47, v48, v41);
}

void sub_2745ACF08(uint64_t a1)
{
  v1 = *(a1 + *(type metadata accessor for VariableConfigurationSheet() + 32));

  v2 = v1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952B68);
  sub_27463ACEC();
  sub_2745AA9FC();
  sub_27463ACFC();
}

uint64_t sub_2745AD010@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [*a1 anchor];
  v5 = [v4 parameter];

  LOBYTE(v4) = sub_2745AABDC();
  *a2 = sub_274639B2C();
  *(a2 + 8) = 0x4020000000000000;
  *(a2 + 16) = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952C18);
  return sub_2745AD574(a1, v4 & 1, (a2 + *(v6 + 44)));
}

void sub_2745AD0BC(id *a1@<X2>, void *a2@<X8>)
{
  v3 = [*a1 anchor];
  v4 = [v3 variable];

  *a2 = v4;
}

void sub_2745AD120(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for VariableConfigurationSheet();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v11 = MEMORY[0x28223BE20](v10).n128_u64[0];
  v13 = &v36 - v12;
  v14 = *a1;
  v15 = *a4;
  [*a4 variableDidChange_];
  v16 = *(a4 + 8);
  if (v16)
  {
    v17 = v16;
    v18 = sub_27443C514();

    if (v18)
    {

      v39 = v17;
      v38 = v14;
      v19 = [v15 anchor];
      v20 = [v19 variableProvider];

      v21 = [v15 anchor];
      v37 = v7;
      v22 = v21;
      v23 = [v21 parameter];

      v24 = [v15 anchor];
      v25 = [v24 sourceView];

      v26 = [v15 anchor];
      [v26 sourceRect];

      v27 = objc_allocWithZone(WFVariableEditingAnchor);
      v28 = sub_2745AFB44(v38, v20, v23, v25);
      v29 = [v15 resultType];
      sub_2745AF398(a4, v13);
      v30 = (*(v37 + 80) + 16) & ~*(v37 + 80);
      v31 = swift_allocObject();
      sub_2745AF3FC(v13, v31 + v30);
      sub_2745AF398(a4, v9);
      v32 = swift_allocObject();
      sub_2745AF3FC(v9, v32 + v30);
      v33 = objc_allocWithZone(WFVariableEditingOptions);
      v34 = sub_2745AFA0C(v28, v29, sub_2745B0190, v31, sub_2745B03D0, v32);
      v35 = v39;
      sub_27443C58C(v34);
    }
  }

  else
  {
    type metadata accessor for WorkflowEditorOptions(0);
    sub_2745B0614(&qword_28094A730, type metadata accessor for WorkflowEditorOptions);
    sub_27463978C();
    __break(1u);
  }
}

uint64_t sub_2745AD4E0(id *a1)
{
  sub_2745AA868(*a1, &v2);
  type metadata accessor for VariableConfigurationSheet();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952B68);
  return sub_27463ACFC();
}

uint64_t sub_2745AD574@<X0>(id *a1@<X0>, int a2@<W1>, char *a3@<X8>)
{
  LODWORD(v35) = a2;
  v37 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952C20);
  MEMORY[0x28223BE20](v4 - 8);
  v36 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v38 = &v33 - v7;
  MEMORY[0x28223BE20](v8);
  v10 = &v33 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v33 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952C28);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v33 - v19;
  sub_2745AD960(0, 0, &v33 - v19);
  v21 = [*a1 anchor];
  v22 = [v21 variable];

  v23 = sub_2745AA098();
  if (v23)
  {

    sub_2745AD960(1, 0, v17);
    (*(v15 + 32))(v13, v17, v14);
    v24 = 0;
  }

  else
  {
    v24 = 1;
  }

  v25 = 1;
  __swift_storeEnumTagSinglePayload(v13, v24, 1, v14);
  if (v35)
  {
    sub_2745AD960(2, 0, v17);
    (*(v15 + 32))(v10, v17, v14);
    v25 = 0;
  }

  __swift_storeEnumTagSinglePayload(v10, v25, 1, v14);
  v26 = *(v15 + 16);
  v34 = v20;
  v26(v17, v20, v14);
  sub_274412C20(v13, v38, &qword_280952C20);
  v27 = v36;
  sub_274412C20(v10, v36, &qword_280952C20);
  v35 = v13;
  v28 = v37;
  v26(v37, v17, v14);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952C30);
  v30 = v38;
  sub_274412C20(v38, &v28[*(v29 + 48)], &qword_280952C20);
  sub_274412C20(v27, &v28[*(v29 + 64)], &qword_280952C20);
  sub_27440CB1C(v10, &qword_280952C20);
  sub_27440CB1C(v35, &qword_280952C20);
  v31 = *(v15 + 8);
  v31(v34, v14);
  sub_27440CB1C(v27, &qword_280952C20);
  sub_27440CB1C(v30, &qword_280952C20);
  return (v31)(v17, v14);
}

uint64_t sub_2745AD960@<X0>(int a1@<W0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for VariableConfigurationSheet();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952C38);
  MEMORY[0x28223BE20](v10);
  v56 = a3;
  v57 = v11;
  v54 = &v42[-v12];
  v55 = v13;
  v52 = a1;
  v53 = a2;
  v50 = v9;
  v51 = &v42[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v49 = v8;
  if (a1)
  {
    if (a1 == 1)
    {
      sub_27463B70C();
      sub_27463B70C();
      if (qword_2809492C0 == -1)
      {
        goto LABEL_9;
      }
    }

    else
    {
      sub_27463B70C();
      sub_27463B70C();
      if (qword_2809492C0 == -1)
      {
LABEL_9:
        v18 = qword_28094BB00;
        v15 = sub_27463B66C();

        v16 = sub_27463B66C();

        v17 = [v18 localizedStringForKey:v15 value:v16 table:0];
        goto LABEL_10;
      }
    }

    swift_once();
    goto LABEL_9;
  }

  sub_27463B70C();
  sub_27463B70C();
  if (qword_2809492C0 != -1)
  {
    swift_once();
  }

  v14 = qword_28094BB00;
  v15 = sub_27463B66C();

  v16 = sub_27463B66C();

  v17 = [v14 localizedStringForKey:v15 value:v16 table:0];
LABEL_10:
  v19 = v17;

  v20 = sub_27463B6AC();
  v22 = v21;

  v48 = sub_27463AC2C();
  v47 = sub_27463A41C();
  KeyPath = swift_getKeyPath();
  v59 = v20;
  v60 = v22;
  sub_274412BBC();
  v23 = sub_27463A53C();
  v25 = v24;
  v27 = v26;
  if (sub_2745AAB14())
  {
    sub_27463A3AC();
  }

  else
  {
    sub_27463A45C();
  }

  v28 = sub_27463A50C();
  v44 = v29;
  v45 = v28;
  v30 = v29;
  v43 = v31;
  v33 = v32;

  sub_274412C10(v23, v25, v27 & 1);

  v34 = v51;
  sub_2745AF398(v3, v51);
  v35 = (*(v49 + 80) + 16) & ~*(v49 + 80);
  v36 = v35 + v50;
  v37 = swift_allocObject();
  v38 = sub_2745AF3FC(v34, v37 + v35);
  *(v37 + v36) = v52;
  v59 = v48;
  v60 = KeyPath;
  v61 = v47;
  MEMORY[0x28223BE20](v38);
  *&v42[-48] = v3;
  *&v42[-40] = v28;
  *&v42[-32] = v30;
  LOBYTE(v28) = v43 & 1;
  v42[-24] = v43 & 1;
  *&v42[-16] = v33;
  *&v42[-8] = &v59;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952C40);
  sub_2745AFE38();
  v39 = v54;
  sub_27463AD5C();

  v58 = v53 & 1;
  sub_274458A14(&qword_280952C90, &qword_280952C38);
  sub_2745B0034();
  v40 = v57;
  sub_27463A6AC();
  sub_274412C10(v45, v44, v28);

  return (*(v55 + 8))(v39, v40);
}

void sub_2745ADFFC(char a1)
{
  v2 = v1;
  v4 = sub_2746396DC();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094A210);
  *&v6 = MEMORY[0x28223BE20](v5).n128_u64[0];
  v8 = &v17[-v7];
  v9 = *v2;
  if (!a1)
  {
    [*v2 variableDidChange_];
LABEL_8:
    type metadata accessor for VariableConfigurationSheet();
    sub_2744C68E8();
    MEMORY[0x277C575F0](v5);
    sub_2746396CC();
    sub_27463AEBC();
    goto LABEL_9;
  }

  if (a1 != 1)
  {
    [*v2 finishEditingReturningToKeyboard_];
    goto LABEL_8;
  }

  v10 = [*v2 anchor];
  v11 = [v10 variable];

  v12 = sub_2745AA098();
  if (!v12)
  {
    return;
  }

  MEMORY[0x28223BE20](v13);
  *&v17[-16] = v2;
  *&v17[-8] = v12;
  sub_27463B13C();
  sub_27463946C();

  v14 = [objc_opt_self() systemShortcutsUserDefaults];
  v15 = sub_27463B66C();
  v16 = [v14 BOOLForKey_];

  if (!v16)
  {

    return;
  }

  [v9 finishEditingReturningToKeyboard_];
  type metadata accessor for VariableConfigurationSheet();
  sub_2744C68E8();
  MEMORY[0x277C575F0](v5);
  sub_2746396CC();
  sub_27463AEBC();

LABEL_9:
  sub_27440CB1C(v8, &unk_28094A210);
}

void *sub_2745AE374@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, char a3@<W3>, void *a4@<X8>)
{
  if (sub_2745AAB14())
  {
    sub_27440B094(a1, a2, a3 & 1);

    sub_27440B094(a1, a2, a3 & 1);

    sub_274412C10(a1, a2, a3 & 1);
  }

  else
  {

    v8 = a3 & 1;
    sub_27440B094(a1, a2, v8);

    sub_27440B094(a1, a2, v8);

    sub_274412C10(a1, a2, v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952CB8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952CC0);
  sub_274458A14(&qword_280952CC8, &qword_280952CB8);
  sub_274458A14(&qword_280952CD0, &qword_280952CC0);
  sub_274639DDC();
  return memcpy(a4, __src, 0x49uLL);
}

uint64_t sub_2745AE5EC@<X0>(void (*a1)(void *__return_ptr)@<X0>, void *a2@<X8>)
{
  if (sub_2745AAB14())
  {
    v4 = sub_274639B2C();
    v45 = 0;
    a1(__src);
    memcpy(__dst, __src, 0x49uLL);
    memcpy(v53, __src, 0x49uLL);
    sub_274412C20(__dst, v63, &qword_280952CA8);
    sub_27440CB1C(v53, &qword_280952CA8);
    memcpy(&v44[7], __dst, 0x49uLL);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F000);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_2746486A0;
    v6 = sub_27463A37C();
    *(v5 + 32) = v6;
    v7 = sub_27463A35C();
    *(v5 + 33) = v7;
    v8 = sub_27463A36C();
    sub_27463A36C();
    if (sub_27463A36C() != v6)
    {
      v8 = sub_27463A36C();
    }

    sub_27463A36C();
    if (sub_27463A36C() != v7)
    {
      v8 = sub_27463A36C();
    }

    v40[0] = v4;
    v40[1] = 0x4020000000000000;
    v9 = v45;
    LOBYTE(v40[2]) = v45;
    memcpy(&v40[2] + 1, v44, 0x50uLL);
    sub_2746390AC();
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    memcpy(v48, v40, 0x61uLL);
    v46 = 0;
    v41[0] = v4;
    v41[1] = 0x4020000000000000;
    v42 = v9;
    memcpy(v43, v44, sizeof(v43));
    sub_274412C20(v40, __src, &qword_280952C78);
    sub_27440CB1C(v41, &qword_280952C78);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_2746486A0;
    v19 = sub_27463A33C();
    *(v18 + 32) = v19;
    v20 = sub_27463A34C();
    *(v18 + 33) = v20;
    v21 = sub_27463A36C();
    sub_27463A36C();
    if (sub_27463A36C() != v19)
    {
      v21 = sub_27463A36C();
    }

    sub_27463A36C();
    if (sub_27463A36C() != v20)
    {
      v21 = sub_27463A36C();
    }

    memcpy(v33, v48, 0x68uLL);
    LOBYTE(v33[13]) = v8;
    *(&v33[13] + 1) = *v47;
    HIDWORD(v33[13]) = *&v47[3];
    v33[14] = v11;
    v33[15] = v13;
    v33[16] = v15;
    v33[17] = v17;
    v22 = v46;
    LOBYTE(v33[18]) = v46;
    sub_2746390AC();
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v30 = v29;
    memcpy(v51, v33, 0x91uLL);
    v49 = 0;
    memcpy(v34, v48, 0x68uLL);
    v34[104] = v8;
    *&v34[105] = *v47;
    *&v34[108] = *&v47[3];
    *&v34[112] = v11;
    v35 = v13;
    v36 = v15;
    v37 = v17;
    v38 = v22;
    sub_274412C20(v33, __src, &qword_280952C68);
    sub_27440CB1C(v34, &qword_280952C68);
    memcpy(v39, v51, 0x98uLL);
    LOBYTE(v39[19]) = v21;
    *(&v39[19] + 1) = *v50;
    HIDWORD(v39[19]) = *&v50[3];
    v39[20] = v24;
    v39[21] = v26;
    v39[22] = v28;
    v39[23] = v30;
    LOBYTE(v39[24]) = v49;
    memcpy(v54, v51, sizeof(v54));
    v55 = v21;
    *v56 = *v50;
    *&v56[3] = *&v50[3];
    v57 = v24;
    v58 = v26;
    v59 = v28;
    v60 = v30;
    v61 = v49;
    sub_274412C20(v39, __src, &qword_280952C58);
    sub_27440CB1C(v54, &qword_280952C58);
    memcpy(v63, v39, 0xC1uLL);
    sub_2745B00B0(v63);
    memcpy(v62, v63, 0xC2uLL);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952C58);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952C88);
    sub_2745AFEF0();
    sub_274458A14(&qword_280952C80, &qword_280952C88);
  }

  else
  {
    v31 = sub_274639C5C();
    v62[0] = 0;
    sub_2745AECD8(a1, __src, 8.0);
    memcpy(v34, __src, 0x71uLL);
    memcpy(v51, __src, 0x71uLL);
    sub_274412C20(v34, v63, &qword_280952CA0);
    sub_27440CB1C(v51, &qword_280952CA0);
    memcpy(&v63[7], v34, 0x71uLL);
    v39[0] = v31;
    v39[1] = 0;
    LOBYTE(v39[2]) = v62[0];
    memcpy(&v39[2] + 1, v63, 0x78uLL);
    v54[0] = v31;
    v54[1] = 0;
    LOBYTE(v54[2]) = v62[0];
    memcpy(&v54[2] + 1, v63, 0x78uLL);
    sub_274412C20(v39, __src, &qword_280952C88);
    sub_27440CB1C(v54, &qword_280952C88);
    memcpy(v63, v39, 0x89uLL);
    sub_2745B00A4(v63);
    memcpy(v62, v63, 0xC2uLL);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952C58);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952C88);
    sub_2745AFEF0();
    sub_274458A14(&qword_280952C80, &qword_280952C88);
  }

  sub_274639DDC();
  memcpy(v62, __src, 0xC2uLL);
  memcpy(a2, __src, 0xC2uLL);
  memcpy(v63, __src, 0xC2uLL);
  sub_274412C20(v62, v54, &qword_280952C40);
  return sub_27440CB1C(v63, &qword_280952C40);
}

uint64_t sub_2745AECD8@<X0>(void (*a1)(void *__return_ptr)@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v6 = sub_274639C5C();
  v8[0] = 0;
  a1(__src);
  memcpy(__dst, __src, 0x49uLL);
  memcpy(v11, __src, 0x49uLL);
  sub_274412C20(__dst, v16, &qword_280952CA8);
  sub_27440CB1C(v11, &qword_280952CA8);
  memcpy(&v16[7], __dst, 0x49uLL);
  v12[0] = v6;
  *&v12[1] = a3;
  LOBYTE(v12[2]) = 0;
  memcpy(&v12[2] + 1, v16, 0x50uLL);
  v13[0] = v6;
  *&v13[1] = a3;
  v14 = 0;
  memcpy(v15, v16, sizeof(v15));
  sub_274412C20(v12, __src, &qword_280952CB0);
  sub_27440CB1C(v13, &qword_280952CB0);
  memcpy(__src, v12, 0x61uLL);
  v9[104] = 0;
  memcpy(v16, v12, 0x61uLL);
  memcpy(&v9[7], v12, 0x61uLL);
  *a2 = 0;
  *(a2 + 8) = 0;
  memcpy((a2 + 9), v9, 0x68uLL);
  sub_274412C20(v16, v8, &qword_280952CB0);
  return sub_27440CB1C(__src, &qword_280952CB0);
}

void sub_2745AEE94(void **a1, void *a2)
{
  v4 = type metadata accessor for VariableConfigurationSheet();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v25 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v25 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094D7C0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v25 - v11;
  sub_2744C6BF0();
  v13 = sub_27463969C();
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    sub_27440CB1C(v12, &unk_28094D7C0);
  }

  else
  {
    v26 = a2;
    sub_27463B1BC();
    sub_27463968C();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  v14 = a1[1];
  if (v14)
  {
    v15 = *a1;
    v16 = v14;
    v17 = a2;
    v18 = [v15 anchor];
    v19 = [v18 variableProvider];

    sub_2745AF398(a1, v9);
    v20 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v21 = swift_allocObject();
    sub_2745AF3FC(v9, v21 + v20);
    v22 = v25;
    sub_2745AF398(a1, v25);
    v23 = swift_allocObject();
    sub_2745AF3FC(v22, v23 + v20);
    v26 = v17;
    v27 = v19;
    v28 = sub_2745B00D4;
    v29 = v21;
    v30 = sub_2745B0138;
    v31 = v23;
    v32 = 1;
    sub_27443CA58();

    v24 = v16;
    sub_27443C58C(0);
  }

  else
  {
    type metadata accessor for WorkflowEditorOptions(0);
    sub_2745B0614(&qword_28094A730, type metadata accessor for WorkflowEditorOptions);
    sub_27463978C();
    __break(1u);
  }
}

void sub_2745AF1F0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    v2 = *a1;
    v4 = v1;
    v3 = v2;
    sub_27443C58C(v2);
  }

  else
  {
    type metadata accessor for WorkflowEditorOptions(0);
    sub_2745B0614(&qword_28094A730, type metadata accessor for WorkflowEditorOptions);
    sub_27463978C();
    __break(1u);
  }
}

unint64_t sub_2745AF2B4()
{
  result = qword_280952B00;
  if (!qword_280952B00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280952AF0);
    sub_274458A14(&qword_280952B08, &qword_280952B10);
    sub_274458A14(&qword_280952B18, &qword_280952B20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280952B00);
  }

  return result;
}

uint64_t sub_2745AF398(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VariableConfigurationSheet();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2745AF3FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VariableConfigurationSheet();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2745AF460(id *a1)
{
  v2 = type metadata accessor for VariableConfigurationSheet();
  OUTLINED_FUNCTION_53_0(v2);
  OUTLINED_FUNCTION_30_2();

  return sub_2745AD4E0(a1);
}

unint64_t sub_2745AF4E4()
{
  result = qword_280952B90;
  if (!qword_280952B90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280952B78);
    sub_274458A14(&qword_280952B98, &qword_280952BA0);
    sub_274458A14(&qword_280952BA8, &qword_280952BB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280952B90);
  }

  return result;
}

uint64_t sub_2745AF5C8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for VariableConfigurationSheet() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
  v5 = *(v4 + *(v3 + 64));

  return sub_2745ABE58(v4, v5, a1);
}

void sub_2745AF658(void *a1@<X8>)
{
  v3 = type metadata accessor for VariableConfigurationSheet();
  OUTLINED_FUNCTION_53_0(v3);
  v5 = (v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80)));

  sub_2745AD0BC(v5, a1);
}

uint64_t objectdestroy_14Tm_0()
{
  type metadata accessor for VariableConfigurationSheet();
  OUTLINED_FUNCTION_3_14();
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  v4 = v1 + v3;

  v5 = v1 + v3 + v0[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C000);
  OUTLINED_FUNCTION_54_1();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {

    v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094A210) + 32);
    sub_2746396DC();
    OUTLINED_FUNCTION_7();
    (*(v8 + 8))(v5 + v7);
  }

  v9 = v0[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094D140);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_27463969C();
    if (!OUTLINED_FUNCTION_10_29(v10))
    {
      OUTLINED_FUNCTION_23_0();
      (*(v11 + 8))(v4 + v9, v5);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

void sub_2745AF8A0(void *a1)
{
  v3 = type metadata accessor for VariableConfigurationSheet();
  OUTLINED_FUNCTION_53_0(v3);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));

  sub_2745AD120(a1, v5, v6, v7);
}

uint64_t sub_2745AF940(uint64_t (*a1)(uint64_t))
{
  v2 = type metadata accessor for VariableConfigurationSheet();
  OUTLINED_FUNCTION_53_0(v2);
  OUTLINED_FUNCTION_30_2();

  return a1(v1 + v3);
}

void sub_2745AF9C0()
{
  v1 = type metadata accessor for VariableConfigurationSheet();
  OUTLINED_FUNCTION_53_0(v1);
  OUTLINED_FUNCTION_30_2();
  sub_2745ACF08(v0 + v2);
}

id sub_2745AFA0C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  aBlock[4] = a3;
  aBlock[5] = a4;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_274486F8C;
  aBlock[3] = &block_descriptor_34;
  v11 = _Block_copy(aBlock);
  v15[4] = a5;
  v15[5] = a6;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 1107296256;
  v15[2] = sub_2745AA044;
  v15[3] = &block_descriptor_58_0;
  v12 = _Block_copy(v15);
  v13 = [v6 initWithAnchor:a1 resultType:a2 onChange:v11 onFinish:v12];
  _Block_release(v11);

  _Block_release(v12);

  return v13;
}

id sub_2745AFB44(void *a1, uint64_t a2, void *a3, void *a4)
{
  v8 = [v4 initWithVariable:a1 variableProvider:a2 parameter:a3 sourceView:a4 sourceRect:?];

  swift_unknownObjectRelease();
  return v8;
}

uint64_t objectdestroy_11Tm_0()
{
  type metadata accessor for VariableConfigurationSheet();
  OUTLINED_FUNCTION_3_14();
  v3 = (v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));

  v4 = v3 + v0[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C000);
  OUTLINED_FUNCTION_54_1();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {

    v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094A210) + 32);
    sub_2746396DC();
    OUTLINED_FUNCTION_7();
    (*(v7 + 8))(&v4[v6]);
  }

  v8 = v0[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094D140);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_27463969C();
    if (!__swift_getEnumTagSinglePayload(v3 + v8, 1, v9))
    {
      OUTLINED_FUNCTION_23_0();
      (*(v10 + 8))(v3 + v8, v9);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

unint64_t sub_2745AFE38()
{
  result = qword_280952C48;
  if (!qword_280952C48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280952C40);
    sub_2745AFEF0();
    sub_274458A14(&qword_280952C80, &qword_280952C88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280952C48);
  }

  return result;
}

unint64_t sub_2745AFEF0()
{
  result = qword_280952C50;
  if (!qword_280952C50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280952C58);
    sub_2745AFF7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280952C50);
  }

  return result;
}

unint64_t sub_2745AFF7C()
{
  result = qword_280952C60;
  if (!qword_280952C60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280952C68);
    sub_274458A14(&qword_280952C70, &qword_280952C78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280952C60);
  }

  return result;
}

unint64_t sub_2745B0034()
{
  result = qword_280952C98;
  if (!qword_280952C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280952C98);
  }

  return result;
}

id sub_2745B00D4()
{
  v1 = type metadata accessor for VariableConfigurationSheet();
  OUTLINED_FUNCTION_53_0(v1);
  OUTLINED_FUNCTION_30_2();
  v3 = *(v0 + v2);

  return [v3 finishEditingReturningToKeyboard_];
}

void sub_2745B0138()
{
  v1 = type metadata accessor for VariableConfigurationSheet();
  OUTLINED_FUNCTION_53_0(v1);
  OUTLINED_FUNCTION_30_2();

  sub_2745AF1F0(v0 + v2);
}

id sub_2745B0190(uint64_t a1)
{
  v3 = type metadata accessor for VariableConfigurationSheet();
  OUTLINED_FUNCTION_53_0(v3);
  OUTLINED_FUNCTION_30_2();
  v5 = *(v1 + v4);

  return [v5 variableDidChange_];
}

uint64_t objectdestroyTm_20()
{
  type metadata accessor for VariableConfigurationSheet();
  OUTLINED_FUNCTION_3_14();
  v3 = (v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));

  v4 = v3 + v0[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C000);
  OUTLINED_FUNCTION_54_1();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {

    v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094A210) + 32);
    sub_2746396DC();
    OUTLINED_FUNCTION_7();
    (*(v7 + 8))(&v4[v6]);
  }

  v8 = v0[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094D140);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_27463969C();
    if (!OUTLINED_FUNCTION_10_29(v9))
    {
      OUTLINED_FUNCTION_23_0();
      (*(v10 + 8))(v3 + v8, v4);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

id sub_2745B03D0(char a1)
{
  v3 = type metadata accessor for VariableConfigurationSheet();
  OUTLINED_FUNCTION_53_0(v3);
  OUTLINED_FUNCTION_30_2();
  v5 = *(v1 + v4);

  return [v5 finishEditingReturningToKeyboard_];
}

uint64_t block_copy_helper_34(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

_BYTE *storeEnumTagSinglePayload for ActionButtonStyle(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_2745B0558()
{
  result = qword_280952D08;
  if (!qword_280952D08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280952CE8);
    sub_2745B0614(&qword_28094F168, MEMORY[0x277CDE278]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280952D08);
  }

  return result;
}

uint64_t sub_2745B0614(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_21_2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2745B0658()
{
  result = qword_280952D10;
  if (!qword_280952D10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280952D00);
    sub_2745B0558();
    sub_2745B06E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280952D10);
  }

  return result;
}

unint64_t sub_2745B06E4()
{
  result = qword_280952D18;
  if (!qword_280952D18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280952D20);
    sub_2745B0558();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280952D18);
  }

  return result;
}

unint64_t sub_2745B0770()
{
  result = qword_280952D48;
  if (!qword_280952D48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280952D38);
    sub_2745B0828();
    sub_274458A14(&qword_280952D70, &qword_280952D78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280952D48);
  }

  return result;
}

unint64_t sub_2745B0828()
{
  result = qword_280952D50;
  if (!qword_280952D50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280952CF8);
    sub_2745B08B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280952D50);
  }

  return result;
}

unint64_t sub_2745B08B4()
{
  result = qword_280952D58;
  if (!qword_280952D58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280952CF0);
    sub_2745B096C();
    sub_274458A14(&qword_280952D68, &qword_280952D30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280952D58);
  }

  return result;
}

unint64_t sub_2745B096C()
{
  result = qword_280952D60;
  if (!qword_280952D60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280952D28);
    sub_2745B0658();
    sub_274458A14(&unk_28094D180, &qword_28094C600);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280952D60);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_7_30()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_10_29(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v2 + v1, 1, a1);
}

uint64_t WFDatePickerParameter.view(with:)(uint64_t a1)
{
  type metadata accessor for DateParameterRowView(0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v3);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ParameterStateStore();
  OUTLINED_FUNCTION_1_37();
  sub_2745B41CC(v6, v7);
  v8 = v1;

  v9 = sub_27463950C();
  v11 = v10;
  OUTLINED_FUNCTION_39();
  v12 = swift_allocObject();
  *(v12 + 16) = sub_2745B0C54;
  *(v12 + 24) = a1;
  OUTLINED_FUNCTION_39();
  v13 = swift_allocObject();
  *(v13 + 16) = sub_274458A90;
  *(v13 + 24) = a1;
  v15[0] = v9;
  v15[1] = v11;
  v15[2] = sub_274458A60;
  v15[3] = v12;
  v15[4] = sub_274458A98;
  v15[5] = v13;
  swift_retain_n();
  sub_2745B1370(v8, v15, type metadata accessor for DateParameterRowView, v5);
  sub_2745B41CC(&unk_280952D90, type metadata accessor for DateParameterRowView);
  return sub_27463AE9C();
}

id sub_2745B0C60()
{
  result = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  qword_280952D80 = result;
  return result;
}

id sub_2745B0C94()
{
  if (qword_280949330 != -1)
  {
    swift_once();
  }

  v0 = qword_280952D80;

  return v0;
}

id sub_2745B0CF0()
{
  swift_getObjCClassMetadata();
  v0 = sub_2745B0C94();

  return v0;
}

id WFDatePickerParameter.moduleSummarySlot(for:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_274637E8C();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_274412734(0, &qword_28094BD80);
  v10 = [v1 localizedLabel];
  v11 = sub_27463B6AC();
  v13 = v12;

  v14 = sub_27444C12C(v1);
  v16 = v15;
  v17 = sub_27463B66C();
  v18 = sub_27444AEE4(v11, v13, v14, v16, v17);
  if (a1)
  {
    objc_opt_self();
    v19 = swift_dynamicCastObjCClass();
    if (v19)
    {
      v20 = v19;
      swift_unknownObjectRetain();
      v21 = [v20 variable];
      if (v21)
      {
        v22 = v21;
        [v18 populateWith_];

        swift_unknownObjectRelease();
        return v18;
      }

      v23 = [v20 value];
      if (!v23)
      {

        return v18;
      }

      v24 = v23;
      sub_274637E6C();

      v25 = [v2 datePickerMode];
      if (qword_280949330 != -1)
      {
        swift_once();
      }

      v26 = qword_280952D80;
      v27 = sub_27463B6AC();
      v29 = v28;
      v31 = v27 == sub_27463B6AC() && v29 == v30;
      v48 = v25;
      if (v31)
      {
        v33 = 0;
        v34 = 1;
      }

      else
      {
        v32 = OUTLINED_FUNCTION_7_31();

        if (v32)
        {
          v33 = 0;
          v34 = 1;
LABEL_17:
          [v26 setDateStyle_];
          [v26 setTimeStyle_];
          v35 = sub_274637E5C();
          v36 = [v26 stringFromDate_];

          v37 = sub_27463B6AC();
          v39 = v38;

          sub_274457D08(v37, v39, v18);
          (*(v6 + 8))(v9, v4);
          return v18;
        }

        v41 = sub_27463B6AC();
        v43 = v42;
        if (v41 != sub_27463B6AC() || v43 != v44)
        {
          v46 = OUTLINED_FUNCTION_7_31();

          v34 = ~v46 & 1;
          v33 = 1;
          goto LABEL_17;
        }

        v34 = 0;
        v33 = 1;
      }

      goto LABEL_17;
    }
  }

  return v18;
}

id sub_2745B10E4(void *a1, uint64_t a2, uint64_t a3)
{
  swift_unknownObjectRetain();
  v5 = a1;
  v6 = WFDatePickerParameter.moduleSummarySlot(for:)(a3);
  swift_unknownObjectRelease();

  return v6;
}

uint64_t sub_2745B1154()
{
  static WFDatePickerParameter.moduleSummaryEditorClass()();

  return swift_getObjCClassFromMetadata();
}

void sub_2745B117C(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(type metadata accessor for SummaryModal());
  v5 = v2;
  sub_274408830();
  v6 = *&v5[OBJC_IVAR____TtC14WorkflowEditorP33_F98045B4B06EF7F5A24A30DEAE57012B32DatePickerParameterSummaryEditor_modal];
  *&v5[OBJC_IVAR____TtC14WorkflowEditorP33_F98045B4B06EF7F5A24A30DEAE57012B32DatePickerParameterSummaryEditor_modal] = v7;
  v8 = v7;

  sub_27440A42C(a2);
}

uint64_t sub_2745B121C@<X0>(id a1@<X1>, uint64_t a2@<X0>, uint64_t a3@<X8>)
{
  v5 = [a1 parameter];
  type metadata accessor for ParameterStateStore();
  OUTLINED_FUNCTION_1_37();
  sub_2745B41CC(v6, v7);

  v8 = sub_27463950C();
  v10 = v9;
  OUTLINED_FUNCTION_39();
  v11 = swift_allocObject();
  *(v11 + 16) = sub_2745B4D00;
  *(v11 + 24) = a2;
  OUTLINED_FUNCTION_39();
  v12 = swift_allocObject();
  *(v12 + 16) = sub_274467398;
  *(v12 + 24) = a2;
  v14[0] = v8;
  v14[1] = v10;
  v14[2] = sub_274467394;
  v14[3] = v11;
  v14[4] = sub_27446739C;
  v14[5] = v12;
  swift_retain_n();
  return sub_2745B1370(v5, v14, type metadata accessor for DateParameterSlotView, a3);
}

uint64_t sub_2745B1370@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, void (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v45 = a3;
  v38 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280952E30);
  MEMORY[0x28223BE20](v6 - 8);
  v42 = &v35 - v7;
  sub_274637E8C();
  OUTLINED_FUNCTION_1();
  v43 = v9;
  v44 = v8;
  MEMORY[0x28223BE20](v8);
  v36 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v41 = &v35 - v12;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280952DA8);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v13);
  v40 = &v35 - v14;
  v15 = *a2;
  v16 = a2[1];
  v17 = a2[2];
  v18 = a2[5];
  v19 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094B560));
  v38 = v38;
  sub_27444A6A4(v38);
  sub_27440CA78(&qword_280952DF8, &qword_28094B560);
  *a4 = sub_27463950C();
  *(a4 + 8) = v20;
  *(a4 + 16) = v15;
  *(a4 + 24) = v16;
  *(a4 + 32) = v17;
  v37 = *(a2 + 3);
  *(a4 + 40) = v37;
  *(a4 + 56) = v18;

  v17(&v46, v21);

  v22 = v46;
  if (v46 && (v23 = [v46 value], v22, v23))
  {
    v24 = v36;
    sub_274637E6C();

    v26 = v42;
    v25 = v43;
    v27 = *(v43 + 32);
    v28 = v24;
    v29 = v44;
    v27(v42, v28, v44);
    __swift_storeEnumTagSinglePayload(v26, 0, 1, v29);
    v30 = v41;
    v27(v41, v26, v29);
  }

  else
  {
    v31 = v42;
    v29 = v44;
    __swift_storeEnumTagSinglePayload(v42, 1, 1, v44);
    v30 = v41;
    sub_274637E7C();

    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v31, 1, v29);
    v25 = v43;
    if (EnumTagSinglePayload != 1)
    {
      sub_27440CB1C(v31, &unk_280952E30);
    }
  }

  v33 = v40;
  *&v40[*(v39 + 28)] = 0;
  (*(v25 + 32))(v33, v30, v29);
  v45(0);
  return sub_274433B6C();
}

uint64_t sub_2745B17B0()
{
  v1[20] = v0;
  sub_27463B9CC();
  v1[21] = sub_27463B9BC();
  v3 = sub_27463B96C();
  v1[22] = v3;
  v1[23] = v2;

  return MEMORY[0x2822009F8](sub_2745B1848, v3, v2);
}

uint64_t sub_2745B1848()
{
  receiver = v0[10].receiver;
  v0[1].receiver = v0;
  v0[1].super_class = sub_2745B1964;
  v2 = swift_continuation_init();
  v0[8].super_class = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094CFA0);
  v0[5].receiver = MEMORY[0x277D85DD0];
  v0[5].super_class = 1107296256;
  v0[6].receiver = sub_2745ECED0;
  v0[6].super_class = &block_descriptor_35;
  v0[7].receiver = v2;
  v3 = type metadata accessor for DatePickerParameterSummaryEditor();
  v0[9].receiver = receiver;
  v0[9].super_class = v3;
  objc_msgSendSuper2(v0 + 9, sel_cancelEditingWithCompletionHandler_, &v0[5]);

  return MEMORY[0x282200938](&v0[1]);
}

uint64_t sub_2745B1964()
{
  OUTLINED_FUNCTION_79();
  v1 = *(*v0 + 184);
  v2 = *(*v0 + 176);

  return MEMORY[0x2822009F8](sub_2745B1A68, v2, v1);
}

uint64_t sub_2745B1A68()
{
  OUTLINED_FUNCTION_79();
  v1 = *(v0 + 160);

  v2 = *(v1 + OBJC_IVAR____TtC14WorkflowEditorP33_F98045B4B06EF7F5A24A30DEAE57012B32DatePickerParameterSummaryEditor_modal);
  if (v2)
  {
    v3 = v2;
    sub_27440A5E8();
  }

  v4 = *(v0 + 8);

  return v4();
}

id sub_2745B1B60(void *a1, uint64_t a2, char a3)
{
  *&v3[OBJC_IVAR____TtC14WorkflowEditorP33_F98045B4B06EF7F5A24A30DEAE57012B32DatePickerParameterSummaryEditor_modal] = 0;
  v9.receiver = v3;
  v9.super_class = type metadata accessor for DatePickerParameterSummaryEditor();
  v7 = objc_msgSendSuper2(&v9, sel_initWithParameter_arrayIndex_processing_, a1, a2, a3 & 1);

  return v7;
}

uint64_t sub_2745B1BD8(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_27463B9CC();
  v2[4] = sub_27463B9BC();
  v4 = sub_27463B96C();

  return MEMORY[0x2822009F8](sub_2745B1C70, v4, v3);
}

uint64_t sub_2745B1C70()
{
  OUTLINED_FUNCTION_79();
  v1 = v0[3];
  v2 = v0[2];

  v0[5] = _Block_copy(v2);
  v3 = v1;
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_27444B7CC;

  return sub_2745B17B0();
}

id sub_2745B1D60()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DatePickerParameterSummaryEditor();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2745B1DA8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v73 = a1;
  v63 = type metadata accessor for DateParameterRowView(0);
  v70 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v71 = v3;
  v72 = &v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_274639F7C();
  v67 = *(v4 - 8);
  v68 = v4;
  MEMORY[0x28223BE20](v4);
  v66 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = type metadata accessor for DateParameterView(0);
  MEMORY[0x28223BE20](v64);
  v65 = (&v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952DF0);
  MEMORY[0x28223BE20](v7);
  v9 = (&v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v69 = &v59 - v11;
  v12 = *(v1 + 8);
  v13 = qword_28094A100;
  v14 = *(v12 + qword_28094A100);
  v15 = *(v1 + 32);
  v77 = *(v1 + 16);
  v78 = v15;
  v79 = *(v1 + 48);
  v16 = v14;
  v62 = sub_274465E90();
  v61 = v17;
  v60 = v18;
  v19 = (v9 + v7[15]);
  type metadata accessor for WorkflowEditorOptions(0);
  sub_2745B41CC(&qword_28094A730, type metadata accessor for WorkflowEditorOptions);
  *v19 = sub_27463979C();
  v19[1] = v20;
  v21 = v9 + v7[16];
  *v21 = swift_getKeyPath();
  v21[8] = 0;
  v22 = v9 + v7[17];
  *v22 = swift_getKeyPath();
  v22[8] = 0;
  v23 = v9 + v7[18];
  *v23 = swift_getKeyPath();
  v23[8] = 0;
  v24 = v9 + v7[19];
  *v24 = swift_getKeyPath();
  v24[40] = 0;
  v25 = v9 + v7[20];
  *v25 = swift_getKeyPath();
  v25[8] = 0;
  v26 = v9 + v7[21];
  v74 = 0;
  sub_27463ACDC();
  v27 = v76;
  *v26 = v75;
  *(v26 + 1) = v27;
  v28 = v9 + v7[22];
  v74 = 0;
  sub_27463ACDC();
  v29 = v76;
  *v28 = v75;
  *(v28 + 1) = v29;
  v30 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094B440));
  v31 = v16;
  sub_27444A564(v31);
  sub_27440CA78(&qword_28094CF70, &unk_28094B440);
  *v9 = sub_27463950C();
  v9[1] = v32;
  v33 = [v31 localizedLabel];
  v34 = sub_27463B6AC();
  v36 = v35;

  v9[2] = v34;
  v9[3] = v36;
  v37 = [v31 localizedDescription];
  if (v37)
  {
    v38 = v37;
    v39 = sub_27463B6AC();
    v41 = v40;
  }

  else
  {
    v39 = 0;
    v41 = 0;
  }

  v9[4] = v39;
  v9[5] = v41;
  v9[6] = 1;
  v42 = v61;
  v9[7] = v62;
  v9[8] = v42;
  v9[9] = v60;
  v60 = v9 + v7[13];
  v43 = *(v12 + v13);
  v62 = *(v63 + 24);
  v44 = v43;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280952DA8);
  v45 = v65;
  sub_27463AD0C();
  v61 = v2;
  v46 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094B560));
  v47 = v44;
  sub_27444A6A4(v47);
  sub_27440CA78(&qword_280952DF8, &qword_28094B560);
  v48 = sub_27463950C();
  v50 = v49;

  *v45 = v48;
  v45[1] = v50;
  v51 = v66;
  sub_274639F6C();
  sub_2745B41CC(&qword_280952E00, type metadata accessor for DateParameterView);
  sub_2745B41CC(&qword_280952E08, MEMORY[0x277CDE150]);
  v52 = v60;
  v53 = v68;
  sub_27463A77C();
  (*(v67 + 8))(v51, v53);
  sub_2745B42FC(v45);

  *&v52[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952E10) + 36)] = 257;
  *(v9 + v7[14]) = 0;
  sub_274403DBC();
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952E18);
  v55 = v73 + *(v54 + 36);
  sub_27463ACEC();
  sub_2745B4944();
  v56 = swift_allocObject();
  sub_2745B4AC0();
  v57 = (v55 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_280952E20) + 36));
  *v57 = sub_2745B4358;
  v57[1] = v56;
  return sub_274403DBC();
}

uint64_t sub_2745B2518@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for DateParameterSlotView(0);
  v4 = v3 - 8;
  v28 = *(v3 - 8);
  v27 = *(v28 + 64);
  MEMORY[0x28223BE20](v3);
  v26 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DateParameterView(0);
  MEMORY[0x28223BE20](v6);
  v8 = (&v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  *a1 = sub_274639C5C();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952F20) + 44);
  v24 = v1;
  v9 = *(v1 + 8);
  v10 = qword_28094A100;
  v11 = *(v9 + qword_28094A100);
  v25 = *(v4 + 32);
  v12 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280952DA8);
  sub_27463AD0C();
  v13 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094B560));
  v14 = v12;
  sub_27444A6A4(v14);
  sub_27440CA78(&qword_280952DF8, &qword_28094B560);
  v15 = sub_27463950C();
  v17 = v16;

  *v8 = v15;
  v8[1] = v17;
  v18 = *(v9 + v10);
  sub_2745B2808(v18, a1 + v23);

  sub_2745B42FC(v8);
  v19 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952F28) + 36);
  sub_27463ACEC();
  sub_2745B4944();
  v20 = swift_allocObject();
  sub_2745B4AC0();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280952E20);
  v22 = (v19 + *(result + 36));
  *v22 = sub_2745B4B18;
  v22[1] = v20;
  return result;
}

uint64_t sub_2745B2808@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v42 = sub_27463A0FC();
  v36 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v4 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952F30);
  v38 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v37 = &v36 - v5;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952F38);
  MEMORY[0x28223BE20](v39);
  v41 = &v36 - v6;
  v7 = sub_274639EDC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952F40);
  v11 = *(v40 - 8);
  *&v12 = MEMORY[0x28223BE20](v40).n128_u64[0];
  v14 = &v36 - v13;
  v15 = [a1 datePickerMode];
  v16 = sub_27463B6AC();
  v18 = v17;
  if (v16 == sub_27463B6AC() && v18 == v19)
  {
  }

  else
  {
    v21 = sub_27463C6BC();

    if ((v21 & 1) == 0)
    {
      sub_27463A0EC();
      v22 = type metadata accessor for DateParameterView(0);
      v23 = sub_2745B41CC(&qword_280952E00, type metadata accessor for DateParameterView);
      v24 = sub_2745B41CC(&qword_280952F48, MEMORY[0x277CDE290]);
      v25 = v37;
      v26 = v42;
      sub_27463A77C();
      (*(v36 + 8))(v4, v26);
      v27 = v38;
      v28 = v43;
      (*(v38 + 16))(v41, v25, v43);
      swift_storeEnumTagMultiPayload();
      v29 = sub_2745B41CC(&qword_280952F50, MEMORY[0x277CDE068]);
      v45 = v22;
      v46 = v7;
      v47 = v23;
      v48 = v29;
      swift_getOpaqueTypeConformance2();
      v45 = v22;
      v46 = v26;
      v47 = v23;
      v48 = v24;
      swift_getOpaqueTypeConformance2();
      sub_274639DDC();
      return (*(v27 + 8))(v25, v28);
    }
  }

  sub_274639ECC();
  v31 = type metadata accessor for DateParameterView(0);
  v32 = sub_2745B41CC(&qword_280952E00, type metadata accessor for DateParameterView);
  v33 = sub_2745B41CC(&qword_280952F50, MEMORY[0x277CDE068]);
  sub_27463A77C();
  (*(v8 + 8))(v10, v7);
  v34 = v40;
  (*(v11 + 16))(v41, v14, v40);
  swift_storeEnumTagMultiPayload();
  v45 = v31;
  v46 = v7;
  v47 = v32;
  v48 = v33;
  swift_getOpaqueTypeConformance2();
  v35 = sub_2745B41CC(&qword_280952F48, MEMORY[0x277CDE290]);
  v45 = v31;
  v46 = v42;
  v47 = v32;
  v48 = v35;
  swift_getOpaqueTypeConformance2();
  sub_274639DDC();
  return (*(v11 + 8))(v14, v34);
}

void sub_2745B2E98()
{
  OUTLINED_FUNCTION_57();
  v1 = sub_274637E5C();
  v3 = [objc_allocWithZone(MEMORY[0x277D7C338]) initWithValue_];

  v2 = *(v0 + 48);
  v4 = v3;
  v2(&v4);
}

uint64_t sub_2745B2F1C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v97 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952E98);
  MEMORY[0x28223BE20](v3 - 8);
  v84 = &v77 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952EA0);
  MEMORY[0x28223BE20](v5 - 8);
  v83 = &v77 - v6;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952EA8);
  MEMORY[0x28223BE20](v93);
  v96 = &v77 - v7;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952EB0);
  MEMORY[0x28223BE20](v88);
  v89 = &v77 - v8;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952EB8);
  MEMORY[0x28223BE20](v94);
  v95 = &v77 - v9;
  v10 = sub_274639E1C();
  MEMORY[0x28223BE20](v10 - 8);
  v87 = &v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952EC0);
  MEMORY[0x28223BE20](v82);
  v81 = &v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v79 = &v77 - v14;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952EC8);
  MEMORY[0x28223BE20](v78);
  v80 = &v77 - v15;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280952E50);
  MEMORY[0x28223BE20](v98);
  v100 = &v77 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952ED0);
  v91 = *(v17 - 8);
  v92 = v17;
  MEMORY[0x28223BE20](v17);
  v90 = &v77 - v18;
  v19 = sub_274637E8C();
  v99 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v86 = &v77 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v101 = &v77 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952ED8);
  MEMORY[0x28223BE20](v23);
  v25 = &v77 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280952E30);
  MEMORY[0x28223BE20](v26 - 8);
  v28 = &v77 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v31 = &v77 - v30;
  *&v33 = MEMORY[0x28223BE20](v32).n128_u64[0];
  v35 = &v77 - v34;
  v36 = v2;
  v37 = *(v2 + 8);
  v38 = qword_28094A100;
  v39 = [*(v37 + qword_28094A100) minimumDate];
  if (v39)
  {
    v40 = v39;
    sub_274637E6C();

    v41 = 0;
  }

  else
  {
    v41 = 1;
  }

  v42 = 1;
  __swift_storeEnumTagSinglePayload(v35, v41, 1, v19);
  v43 = [*(v37 + v38) maximumDate];
  if (v43)
  {
    v44 = v43;
    sub_274637E6C();

    v42 = 0;
  }

  v45 = v99;
  __swift_storeEnumTagSinglePayload(v31, v42, 1, v19);
  v46 = *(v23 + 48);
  sub_274433B6C();
  sub_274433B6C();
  if (__swift_getEnumTagSinglePayload(v25, 1, v19) == 1)
  {
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(&v25[v46], 1, v19);
    v48 = v101;
    if (EnumTagSinglePayload == 1)
    {
      type metadata accessor for DateParameterView(0);
      sub_27463AEEC();
      sub_2745B3E08();
      v49 = v90;
      sub_27463906C();
      v51 = v91;
      v50 = v92;
      (*(v91 + 16))(v89, v49, v92);
      swift_storeEnumTagMultiPayload();
      sub_27440CA78(&qword_280952EE0, &qword_280952ED0);
      v52 = v95;
      sub_274639DDC();
      sub_2744342DC();
      swift_storeEnumTagMultiPayload();
      sub_2745B4894();
      sub_274639DDC();
      sub_27440CB1C(v52, &qword_280952EB8);
      (*(v51 + 8))(v49, v50);
      v53 = &qword_280952ED8;
      v54 = v25;
      return sub_27440CB1C(v54, v53);
    }

    v45[4](v101, &v25[v46], v19);
    type metadata accessor for DateParameterView(0);
    v85 = v25;
    sub_27463AEEC();
    v45[2](v84, v48, v19);
    sub_2745B3E08();
    v58 = v90;
    sub_27463909C();
    v60 = v91;
    v59 = v92;
    (*(v91 + 16))(v89, v58, v92);
    swift_storeEnumTagMultiPayload();
    sub_27440CA78(&qword_280952EE0, &qword_280952ED0);
    v61 = v95;
    sub_274639DDC();
    v62 = v48;
    sub_2744342DC();
    goto LABEL_12;
  }

  sub_2744342DC();
  v55 = __swift_getEnumTagSinglePayload(&v25[v46], 1, v19);
  v56 = v45[4];
  v57 = v101;
  v56(v101, v28, v19);
  v85 = v25;
  if (v55 == 1)
  {
    type metadata accessor for DateParameterView(0);
    sub_27463AEEC();
    v45[2](v83, v57, v19);
    sub_2745B3E08();
    v58 = v90;
    sub_27463908C();
    v60 = v91;
    v59 = v92;
    (*(v91 + 16))(v89, v58, v92);
    swift_storeEnumTagMultiPayload();
    sub_27440CA78(&qword_280952EE0, &qword_280952ED0);
    v61 = v95;
    sub_274639DDC();
    v62 = v57;
    sub_2744342DC();
LABEL_12:
    swift_storeEnumTagMultiPayload();
    sub_2745B4894();
    sub_274639DDC();
    sub_27440CB1C(v61, &qword_280952EB8);
    (*(v60 + 8))(v58, v59);
    (v45[1])(v62, v19);
LABEL_15:
    v53 = &unk_280952E30;
    v54 = v85;
    return sub_27440CB1C(v54, v53);
  }

  v63 = v86;
  v56(v86, &v25[v46], v19);
  type metadata accessor for DateParameterView(0);
  sub_27463AEEC();
  sub_2745B41CC(&unk_280952EF0, MEMORY[0x277CC9578]);
  result = sub_27463B59C();
  if (result)
  {
    v65 = v45[2];
    v98 = v36;
    v66 = v79;
    v65(v79, v57, v19);
    v67 = v82;
    v65(&v66[*(v82 + 48)], v63, v19);
    v68 = v81;
    sub_2744342DC();
    v69 = *(v67 + 48);
    v70 = v80;
    v56(v80, v68, v19);
    v71 = v45[1];
    (v71)(&v68[v69], v19);
    v99 = v71;
    sub_274433B6C();
    v56(&v70[*(v78 + 36)], &v68[*(v67 + 48)], v19);
    (v71)(v68, v19);
    sub_2745B3E08();
    v72 = v90;
    sub_27463907C();
    v74 = v91;
    v73 = v92;
    (*(v91 + 16))(v89, v72, v92);
    swift_storeEnumTagMultiPayload();
    sub_27440CA78(&qword_280952EE0, &qword_280952ED0);
    v75 = v95;
    sub_274639DDC();
    sub_2744342DC();
    swift_storeEnumTagMultiPayload();
    sub_2745B4894();
    sub_274639DDC();
    sub_27440CB1C(v75, &qword_280952EB8);
    (*(v74 + 8))(v72, v73);
    v76 = v99;
    (v99)(v86, v19);
    (v76)(v101, v19);
    goto LABEL_15;
  }

  __break(1u);
  return result;
}

uint64_t sub_2745B3E08()
{
  v1 = sub_274639E1C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v24 - v6;
  v25 = 0;
  sub_2745B41CC(&qword_28094BAF8, MEMORY[0x277CDDFC8]);
  sub_27463C7DC();
  v8 = [*(*(v0 + 8) + qword_28094A100) datePickerMode];
  v9 = sub_27463B6AC();
  v11 = v10;
  if (v9 == sub_27463B6AC() && v11 == v12)
  {

    goto LABEL_8;
  }

  v14 = sub_27463C6BC();

  if (v14)
  {

LABEL_8:
    sub_274639E0C();
    goto LABEL_9;
  }

  v17 = sub_27463B6AC();
  v19 = v18;
  if (v17 == sub_27463B6AC() && v19 == v20)
  {
  }

  else
  {
    v22 = sub_27463C6BC();

    if ((v22 & 1) == 0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280952F00);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_2746486A0;
      sub_274639E0C();
      sub_274639DFC();
      v25 = v23;
      sub_2745B41CC(&qword_280949A48, MEMORY[0x277CDDFC8]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952F10);
      sub_27440CA78(&qword_280952F18, &qword_280952F10);
      sub_27463C1EC();
      sub_2744552D0();
      return (*(v2 + 8))(v7, v1);
    }
  }

  sub_274639DFC();
LABEL_9:
  sub_27440A218();
  v15 = *(v2 + 8);
  v15(v4, v1);
  return (v15)(v7, v1);
}

uint64_t sub_2745B41CC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_2745B4260(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_274637E8C();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_2745B42FC(uint64_t a1)
{
  v2 = type metadata accessor for DateParameterView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2745B4370()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_27444C34C;
  v2 = OUTLINED_FUNCTION_5_0();

  return v3(v2);
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_17_2();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280952DA8);
  v5 = OUTLINED_FUNCTION_20_2(*(a3 + 24));

  return __swift_getEnumTagSinglePayload(v5, v6, v7);
}

void __swift_store_extra_inhabitant_indexTm()
{
  OUTLINED_FUNCTION_23_2();
  if (v3)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280952DA8);
    v5 = OUTLINED_FUNCTION_20_2(*(v4 + 24));

    __swift_storeEnumTagSinglePayload(v5, v6, v0, v7);
  }
}

void sub_2745B4574()
{
  sub_274457F78(319, &qword_280952DC8, &qword_280952DD0, 0x277D7C330, type metadata accessor for Parameter);
  if (v0 <= 0x3F)
  {
    sub_274457F78(319, &qword_280952DD8, &qword_280952DE0, 0x277D7C338, type metadata accessor for StoredParameterState);
    if (v1 <= 0x3F)
    {
      sub_2745B4260(319, &qword_280952DE8, MEMORY[0x277CE10B8]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2745B46AC()
{
  sub_274457F78(319, &qword_280952DC8, &qword_280952DD0, 0x277D7C330, type metadata accessor for Parameter);
  if (v0 <= 0x3F)
  {
    sub_2745B4260(319, &unk_280952E70, MEMORY[0x277CE11F8]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_2745B4778()
{
  result = qword_280952E80;
  if (!qword_280952E80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280952E18);
    sub_27440CA78(&qword_280952E88, &qword_280952DF0);
    sub_27440CA78(&qword_280952E90, &unk_280952E20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280952E80);
  }

  return result;
}

unint64_t sub_2745B4894()
{
  result = qword_280952EE8;
  if (!qword_280952EE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280952EB8);
    sub_27440CA78(&qword_280952EE0, &qword_280952ED0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280952EE8);
  }

  return result;
}

uint64_t sub_2745B4944()
{
  OUTLINED_FUNCTION_57();
  v1(0);
  OUTLINED_FUNCTION_7();
  v2 = OUTLINED_FUNCTION_5_0();
  v3(v2);
  return v0;
}

uint64_t objectdestroy_24Tm(uint64_t (*a1)(void))
{
  v2 = (a1(0) - 8);
  v3 = v1 + ((*(*v2 + 80) + 16) & ~*(*v2 + 80));

  v4 = v3 + v2[8];
  sub_274637E8C();
  OUTLINED_FUNCTION_7();
  (*(v5 + 8))(v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280952DA8);

  return swift_deallocObject();
}

uint64_t sub_2745B4AC0()
{
  OUTLINED_FUNCTION_57();
  v1(0);
  OUTLINED_FUNCTION_7();
  v2 = OUTLINED_FUNCTION_5_0();
  v3(v2);
  return v0;
}

unint64_t sub_2745B4B98()
{
  result = qword_280952F58;
  if (!qword_280952F58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280952F60);
    sub_2745B4894();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280952F58);
  }

  return result;
}

unint64_t sub_2745B4C1C()
{
  result = qword_280952F68;
  if (!qword_280952F68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280952F28);
    sub_27440CA78(&qword_280952F70, &unk_280952F78);
    sub_27440CA78(&qword_280952E90, &unk_280952E20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280952F68);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_7_31()
{

  return sub_27463C6BC();
}

uint64_t WFVariableFieldParameter.view(with:)(uint64_t a1)
{
  type metadata accessor for ParameterStateStore();
  sub_27450A7C0();

  sub_27463950C();
  OUTLINED_FUNCTION_39();
  v3 = swift_allocObject();
  *(v3 + 16) = sub_2745B4E84;
  *(v3 + 24) = a1;
  OUTLINED_FUNCTION_39();
  v4 = swift_allocObject();
  *(v4 + 16) = sub_274458A90;
  *(v4 + 24) = a1;
  swift_retain_n();
  v1;
  sub_27463ACDC();
  sub_2745B6084();
  return sub_27463AE9C();
}

uint64_t sub_2745B4E90@<X0>(uint64_t *a1@<X8>)
{
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952FA0);
  MEMORY[0x28223BE20](v44);
  v43 = &v41 - v3;
  memcpy(__dst, v1, 0x50uLL);
  v4 = __dst[0];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280952FA8);
  v6 = v5[14];
  *(a1 + v6) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094BDF0);
  swift_storeEnumTagMultiPayload();
  v7 = a1 + v5[15];
  *v7 = swift_getKeyPath();
  *(v7 + 4) = 0;
  v8 = a1 + v5[16];
  *v8 = swift_getKeyPath();
  v8[8] = 0;
  v9 = a1 + v5[17];
  *v9 = swift_getKeyPath();
  v9[40] = 0;
  v10 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094B440));
  v11 = v4;
  sub_27444A564(v11);
  sub_27440CA78(&qword_28094CF70, &unk_28094B440);
  *a1 = sub_27463950C();
  a1[1] = v12;
  v13 = [v11 localizedLabel];
  v14 = sub_27463B6AC();
  v16 = v15;

  v17 = [v11 localizedDescription];
  if (v17)
  {
    v18 = v17;
    v19 = sub_27463B6AC();
    v21 = v20;
  }

  else
  {
    v19 = 0;
    v21 = 0xE000000000000000;
  }

  a1[2] = v14;
  a1[3] = v16;
  a1[4] = v19;
  a1[5] = v21;
  v22 = a1 + v5[12];
  *v22 = 0;
  *(v22 + 1) = 0;
  v22[16] = 0;
  v23 = v5[11];
  sub_27463B70C();
  if (qword_2809492C0 != -1)
  {
    swift_once();
  }

  v42 = a1 + v23;
  v24 = qword_28094BB00;
  v25 = sub_27463B66C();
  v26 = sub_27463B66C();

  v27 = [v24 localizedStringForKey:v25 value:v26 table:0];

  v28 = sub_27463B6AC();
  v30 = v29;

  v46 = *&__dst[7];
  v47 = __dst[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094D0C8);
  sub_27463AD0C();
  v31 = swift_allocObject();
  memcpy((v31 + 16), __dst, 0x50uLL);
  *&v46 = v28;
  *(&v46 + 1) = v30;
  sub_2745B6130(__dst, v45);
  sub_274412BBC();
  v32 = v43;
  sub_27463B17C();
  v33 = swift_allocObject();
  memcpy((v33 + 16), __dst, 0x50uLL);
  v34 = v44;
  v35 = (v32 + *(v44 + 36));
  *v35 = sub_2745B61C8;
  v35[1] = v33;
  v35[2] = 0;
  v35[3] = 0;
  sub_2745B6130(__dst, v45);
  v36 = sub_2745B61D0();
  v37 = v42;
  MEMORY[0x277C56F80](1, v34, v36);
  sub_2745B6288(v32);
  KeyPath = swift_getKeyPath();

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952FD0);
  v40 = &v37[*(result + 36)];
  *v40 = KeyPath;
  v40[8] = 2;
  *(a1 + v5[13]) = 0;
  return result;
}

uint64_t sub_2745B5368(uint64_t a1)
{
  sub_274412734(0, &unk_280952FD8);
  v6 = *(a1 + 56);
  v7 = *(a1 + 72);
  sub_2745B6130(a1, &v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094D0C8);
  sub_27463ACEC();
  v2 = sub_2745A9480();
  v3 = *(a1 + 40);
  v5 = v2;
  v3(&v5);

  return sub_2745B62F0(a1);
}

uint64_t sub_2745B5420(uint64_t a1)
{
  (*(a1 + 24))(v5);
  v2 = v5[0];
  if (v5[0])
  {
    v3 = [v5[0] string];

    sub_27463B6AC();
  }

  *v5 = *(a1 + 56);
  v6 = *(a1 + 72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094D0C8);
  return sub_27463ACFC();
}

uint64_t sub_2745B54E8()
{
  static WFVariableFieldParameter.moduleSummaryEditorClass()();

  return swift_getObjCClassFromMetadata();
}

id WFVariableFieldParameter.moduleSummarySlot(for:)(uint64_t a1)
{
  sub_274412734(0, &qword_28094BD80);
  v3 = [v1 localizedLabel];
  v4 = sub_27463B6AC();
  v6 = v5;

  v7 = sub_27444C12C(v1);
  v9 = v8;
  v10 = sub_27463B66C();
  v11 = sub_27444AEE4(v4, v6, v7, v9, v10);
  if (a1)
  {
    objc_opt_self();
    v12 = swift_dynamicCastObjCClass();
    if (v12)
    {
      v13 = v12;
      swift_unknownObjectRetain();
      v14 = [v13 string];
      v15 = sub_27463B6AC();
      v17 = v16;

      sub_274457D08(v15, v17, v11);
      swift_unknownObjectRelease();
    }
  }

  return v11;
}

id sub_2745B5650(void *a1, uint64_t a2, uint64_t a3)
{
  swift_unknownObjectRetain();
  v5 = a1;
  v6 = WFVariableFieldParameter.moduleSummarySlot(for:)(a3);
  swift_unknownObjectRelease();

  return v6;
}

uint64_t sub_2745B5734()
{
  v1[20] = v0;
  sub_27463B9CC();
  v1[21] = sub_27463B9BC();
  v3 = sub_27463B96C();
  v1[22] = v3;
  v1[23] = v2;

  return MEMORY[0x2822009F8](sub_2745B57CC, v3, v2);
}

uint64_t sub_2745B57CC()
{
  receiver = v0[10].receiver;
  v0[1].receiver = v0;
  v0[1].super_class = sub_2745B58E8;
  v2 = swift_continuation_init();
  v0[8].super_class = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094CFA0);
  v0[5].receiver = MEMORY[0x277D85DD0];
  v0[5].super_class = 1107296256;
  v0[6].receiver = sub_2745ECED0;
  v0[6].super_class = &block_descriptor_36;
  v0[7].receiver = v2;
  v3 = type metadata accessor for VariableFieldParameterSummaryEditor();
  v0[9].receiver = receiver;
  v0[9].super_class = v3;
  objc_msgSendSuper2(v0 + 9, sel_cancelEditingWithCompletionHandler_, &v0[5]);

  return MEMORY[0x282200938](&v0[1]);
}

uint64_t sub_2745B58E8()
{
  OUTLINED_FUNCTION_79();
  v1 = *(*v0 + 184);
  v2 = *(*v0 + 176);

  return MEMORY[0x2822009F8](sub_2745B59EC, v2, v1);
}

uint64_t sub_2745B59EC()
{
  OUTLINED_FUNCTION_79();
  v1 = *(v0 + 160);

  if ([v1 textEntry])
  {
    objc_opt_self();
    v2 = swift_dynamicCastObjCClass();
    if (v2)
    {
      [v2 resignFirstResponder];
    }

    swift_unknownObjectRelease();
  }

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_2745B5B14(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_27463B9CC();
  v2[4] = sub_27463B9BC();
  v4 = sub_27463B96C();

  return MEMORY[0x2822009F8](sub_2745B5BAC, v4, v3);
}

uint64_t sub_2745B5BAC()
{
  OUTLINED_FUNCTION_79();
  v1 = v0[3];
  v2 = v0[2];

  v0[5] = _Block_copy(v2);
  v3 = v1;
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_27444B7CC;

  return sub_2745B5734();
}

id sub_2745B5C58(uint64_t a1, uint64_t a2)
{
  v6.receiver = v2;
  v6.super_class = type metadata accessor for VariableFieldParameterSummaryEditor();
  objc_msgSendSuper2(&v6, sel_textEntryWillBegin_allowMultipleLines_, a1, a2);
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    return [result setAutocorrectionType_];
  }

  return result;
}

void sub_2745B5D54(void *a1)
{
  v2 = v1;
  v6.receiver = v2;
  v6.super_class = type metadata accessor for VariableFieldParameterSummaryEditor();
  objc_msgSendSuper2(&v6, sel_textEntryTextDidChange_, a1);
  if (a1)
  {
    v4 = [a1 string];
    sub_27463B6AC();

    sub_274412734(0, &unk_280952FD8);
    v5 = sub_2745A9480();
    [v2 stageState_];
  }

  else
  {
    [v2 stageState_];
  }

  *(v2 + OBJC_IVAR____TtC14WorkflowEditorP33_4FF4F351C433FF94A8616279ECCFBACD35VariableFieldParameterSummaryEditor_hasStagedChanges) = 1;
}

id sub_2745B5EB0()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for VariableFieldParameterSummaryEditor();
  objc_msgSendSuper2(&v3, sel_textEntryDidFinish);
  if (*(v0 + OBJC_IVAR____TtC14WorkflowEditorP33_4FF4F351C433FF94A8616279ECCFBACD35VariableFieldParameterSummaryEditor_hasStagedChanges) == 1)
  {
    v1 = [v0 currentState];
    [v0 commitState_];
  }

  return [v0 completeEditing];
}

id sub_2745B5F90(void *a1, uint64_t a2, char a3)
{
  v3[OBJC_IVAR____TtC14WorkflowEditorP33_4FF4F351C433FF94A8616279ECCFBACD35VariableFieldParameterSummaryEditor_hasStagedChanges] = 0;
  v9.receiver = v3;
  v9.super_class = type metadata accessor for VariableFieldParameterSummaryEditor();
  v7 = objc_msgSendSuper2(&v9, sel_initWithParameter_arrayIndex_processing_, a1, a2, a3 & 1);

  return v7;
}

id sub_2745B604C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VariableFieldParameterSummaryEditor();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_2745B6084()
{
  result = qword_280952F88;
  if (!qword_280952F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280952F88);
  }

  return result;
}

uint64_t objectdestroy_19Tm_0()
{

  return swift_deallocObject();
}

unint64_t sub_2745B61D0()
{
  result = qword_280952FB8;
  if (!qword_280952FB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280952FA0);
    sub_27440CA78(&qword_280952FC0, &qword_28094D688);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280952FB8);
  }

  return result;
}

uint64_t sub_2745B6288(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952FA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2745B6320()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_27444C34C;

  return sub_2745B5B14(v2, v3);
}

id sub_2745B63E4()
{
  v1 = OBJC_IVAR____TtC14WorkflowEditor20EditorEmptyStateView_label;
  *&v0[v1] = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  *&v0[OBJC_IVAR____TtC14WorkflowEditor20EditorEmptyStateView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v4.receiver = v0;
  v4.super_class = type metadata accessor for EditorEmptyStateView();
  v2 = objc_msgSendSuper2(&v4, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_2745B6560();

  return v2;
}

void sub_2745B64A8()
{
  v1 = OBJC_IVAR____TtC14WorkflowEditor20EditorEmptyStateView_label;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  *(v0 + OBJC_IVAR____TtC14WorkflowEditor20EditorEmptyStateView_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  sub_27463C56C();
  __break(1u);
}

id sub_2745B6560()
{
  v1 = *&v0[OBJC_IVAR____TtC14WorkflowEditor20EditorEmptyStateView_label];
  [v1 setNumberOfLines_];
  [v1 setTextAlignment_];
  v2 = [objc_opt_self() secondaryLabelColor];
  [v1 setTextColor_];

  v3 = [objc_opt_self() preferredFontForTextStyle_];
  [v1 setFont_];

  return [v0 addSubview_];
}

id sub_2745B665C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EditorEmptyStateView();
  objc_msgSendSuper2(&v2, sel_layoutSubviews);
  return sub_2745B66DC();
}

id sub_2745B66DC()
{
  v1 = [v0 traitCollection];

  return sub_2745B6740();
}

id sub_2745B6740()
{
  [v0 safeAreaInsets];
  v2 = v1 + 38.0;
  v3 = *&v0[OBJC_IVAR____TtC14WorkflowEditor20EditorEmptyStateView_label];
  v4 = sub_2745B6884();
  sub_2745B6818(v4, v5);
  [v0 frame];
  v11 = CGRectInset(v10, 34.0, 8.0);
  width = v11.size.width;
  [v3 sizeThatFits_];

  return [v3 setFrame_];
}

void sub_2745B6818(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_27463B66C();
  }

  else
  {
    v3 = 0;
  }

  [v2 setText_];
}

uint64_t sub_2745B6884()
{
  sub_2745B6980();
  sub_27463B70C();
  if (qword_2809492C0 != -1)
  {
    swift_once();
  }

  v0 = qword_28094BB00;
  v1 = sub_27463B66C();
  v2 = sub_27463B66C();

  v3 = [v0 localizedStringForKey:v1 value:v2 table:0];

  v4 = sub_27463B6AC();
  return v4;
}

BOOL sub_2745B6980()
{
  v1 = [v0 traitCollection];
  v2 = [v1 horizontalSizeClass];

  return v2 == 1;
}

id sub_2745B6A14()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EditorEmptyStateView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_2745B6AB8()
{
  sub_274431930();
  if (v0 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v1 <= 0x3F)
    {
      sub_2745B7130();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_2745B6B60(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = sub_274638B1C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  v11 = v10 - 1;
  if (!v10)
  {
    v11 = 0;
  }

  if (v7 <= v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = v7;
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = v12;
  }

  v14 = *(v6 + 80);
  v15 = *(v6 + 64);
  v16 = *(v9 + 80);
  v17 = 1;
  if (!v10)
  {
    v17 = 2;
  }

  if (!a2)
  {
    return 0;
  }

  v18 = v8;
  if (a2 <= v13)
  {
    goto LABEL_29;
  }

  v19 = v17 + *(*(v8 - 8) + 64) + ((v15 + v16 + ((v14 + 16) & ~v14)) & ~v16);
  v20 = 8 * v19;
  if (v19 > 3)
  {
    goto LABEL_14;
  }

  v22 = ((a2 - v13 + ~(-1 << v20)) >> v20) + 1;
  if (HIWORD(v22))
  {
    v21 = *(a1 + v19);
    if (v21)
    {
      goto LABEL_21;
    }

LABEL_29:
    if ((v12 & 0x80000000) == 0)
    {
      v24 = *a1;
      if (*a1 >= 0xFFFFFFFFuLL)
      {
        LODWORD(v24) = -1;
      }

      return (v24 + 1);
    }

    v26 = (a1 + v14 + 16) & ~v14;
    if (v7 == v13)
    {

      return __swift_getEnumTagSinglePayload(v26, v7, v5);
    }

    if (v10 >= 2)
    {
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload((v26 + v15 + v16) & ~v16, v10, v18);
      if (EnumTagSinglePayload >= 2)
      {
        return EnumTagSinglePayload - 1;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  if (v22 > 0xFF)
  {
    v21 = *(a1 + v19);
    if (*(a1 + v19))
    {
      goto LABEL_21;
    }

    goto LABEL_29;
  }

  if (v22 < 2)
  {
    goto LABEL_29;
  }

LABEL_14:
  v21 = *(a1 + v19);
  if (!*(a1 + v19))
  {
    goto LABEL_29;
  }

LABEL_21:
  v23 = (v21 - 1) << v20;
  if (v19 > 3)
  {
    v23 = 0;
  }

  if (v19)
  {
    if (v19 > 3)
    {
      LODWORD(v19) = 4;
    }

    switch(v19)
    {
      case 2:
        LODWORD(v19) = *a1;
        break;
      case 3:
        LODWORD(v19) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v19) = *a1;
        break;
      default:
        LODWORD(v19) = *a1;
        break;
    }
  }

  return v13 + (v19 | v23) + 1;
}

void sub_2745B6DFC(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = sub_274638B1C();
  v11 = 0;
  v12 = *(v10 - 8);
  v13 = *(v12 + 84);
  v14 = v13 - 1;
  if (!v13)
  {
    v14 = 0;
  }

  if (v9 <= v14)
  {
    v15 = v14;
  }

  else
  {
    v15 = v9;
  }

  if (v15 <= 0x7FFFFFFF)
  {
    v16 = 0x7FFFFFFF;
  }

  else
  {
    v16 = v15;
  }

  v17 = *(v8 + 80);
  v18 = *(v8 + 64);
  v19 = *(v12 + 80);
  v20 = *(*(v10 - 8) + 64);
  if (!v13)
  {
    ++v20;
  }

  v21 = v20 + ((v18 + v19 + ((v17 + 16) & ~v17)) & ~v19) + 1;
  v22 = 8 * v21;
  if (a3 > v16)
  {
    if (v21 <= 3)
    {
      v23 = ((a3 - v16 + ~(-1 << v22)) >> v22) + 1;
      if (HIWORD(v23))
      {
        v11 = 4;
      }

      else
      {
        if (v23 < 0x100)
        {
          v24 = 1;
        }

        else
        {
          v24 = 2;
        }

        if (v23 >= 2)
        {
          v11 = v24;
        }

        else
        {
          v11 = 0;
        }
      }
    }

    else
    {
      v11 = 1;
    }
  }

  if (v16 >= a2)
  {
    switch(v11)
    {
      case 1:
        a1[v21] = 0;
        if (a2)
        {
          goto LABEL_34;
        }

        return;
      case 2:
        *&a1[v21] = 0;
        if (a2)
        {
          goto LABEL_34;
        }

        return;
      case 3:
LABEL_55:
        __break(1u);
        return;
      case 4:
        *&a1[v21] = 0;
        goto LABEL_33;
      default:
LABEL_33:
        if (!a2)
        {
          return;
        }

LABEL_34:
        if ((v15 & 0x80000000) != 0)
        {
          v29 = &a1[v17 + 16] & ~v17;
          if (v9 == v16)
          {
            v30 = a2;
            v13 = v9;
            v10 = v7;
          }

          else
          {
            if (v13 < 2)
            {
              return;
            }

            v29 = (v29 + v18 + v19) & ~v19;
            v30 = (a2 + 1);
          }

          __swift_storeEnumTagSinglePayload(v29, v30, v13, v10);
        }

        else
        {
          if ((a2 & 0x80000000) != 0)
          {
            v28 = a2 & 0x7FFFFFFF;
            *(a1 + 1) = 0;
          }

          else
          {
            v28 = (a2 - 1);
          }

          *a1 = v28;
        }

        break;
    }
  }

  else
  {
    v25 = ~v16 + a2;
    if (v21 < 4)
    {
      v26 = (v25 >> v22) + 1;
      if (v21)
      {
        v27 = v25 & ~(-1 << v22);
        bzero(a1, v21);
        if (v21 == 3)
        {
          *a1 = v27;
          a1[2] = BYTE2(v27);
        }

        else if (v21 == 2)
        {
          *a1 = v27;
        }

        else
        {
          *a1 = v25;
        }
      }
    }

    else
    {
      bzero(a1, v21);
      *a1 = v25;
      v26 = 1;
    }

    switch(v11)
    {
      case 1:
        a1[v21] = v26;
        break;
      case 2:
        *&a1[v21] = v26;
        break;
      case 3:
        goto LABEL_55;
      case 4:
        *&a1[v21] = v26;
        break;
      default:
        return;
    }
  }
}

void sub_2745B7130()
{
  if (!qword_280953080)
  {
    sub_274638B1C();
    v0 = sub_27463C0AC();
    if (!v1)
    {
      atomic_store(v0, &qword_280953080);
    }
  }
}

void *sub_2745B71CC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_27463AB7C();
  sub_27463B0CC();
  sub_27463973C();
  *a1 = v2;
  result = memcpy((a1 + 8), __src, 0x70uLL);
  *(a1 + 120) = 0x3FF0000000000000;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  return result;
}

BOOL sub_2745B7268(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809530A8);
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v3);
  v5 = v18 - v4;
  v6 = sub_274638B1C();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2();
  v12 = v10 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = v18 - v14;
  sub_2745B8994(v1 + *(a1 + 56), v5);
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    sub_2745B8A04(v5);
    return 1;
  }

  else
  {
    (*(v8 + 32))(v15, v5, v6);
    sub_274638B0C();
    sub_2745B8A6C();
    sub_27463B7DC();
    sub_27463B7DC();
    v17 = *(v8 + 8);
    v17(v12, v6);
    v17(v15, v6);
    return v18[1] == v18[0];
  }
}

uint64_t sub_2745B743C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v184 = a2;
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  swift_getTupleTypeMetadata2();
  v5 = sub_27463B19C();
  OUTLINED_FUNCTION_0_3();
  WitnessTable = swift_getWitnessTable();
  v161 = v5;
  sub_27463AE6C();
  OUTLINED_FUNCTION_1();
  v165 = v6;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2();
  v164 = v8 - v9;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_19();
  v163 = v11;
  v158 = *(v4 - 8);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_19();
  v156 = v14;
  v189 = v15;
  v16 = sub_274639DEC();
  OUTLINED_FUNCTION_1();
  v173 = v17;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_2();
  v177 = (v19 - v20);
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_19();
  v176 = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280953088);
  *&v185 = v3;
  v24 = sub_27463965C();
  v25 = sub_27463965C();
  v26 = sub_27463965C();
  v27 = sub_27463AFDC();
  OUTLINED_FUNCTION_1();
  v168 = v28;
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_2();
  v167 = v30 - v31;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_19();
  v166 = v33;
  v190 = v24;
  v155 = *(v24 - 8);
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v34);
  v169 = &v153 - v35;
  v191 = v25;
  v159 = *(v25 - 8);
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v36);
  v157 = &v153 - v37;
  v192 = v26;
  v171 = *(v26 - 8);
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_2();
  v162 = v39 - v40;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_19();
  v170 = v42;
  v172 = v23;
  sub_27463AFDC();
  OUTLINED_FUNCTION_1();
  v154 = v43;
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v45);
  v187 = v46;
  v188 = v27;
  v47 = sub_274639DEC();
  OUTLINED_FUNCTION_1();
  v175 = v48;
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_2();
  v174 = v50 - v51;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_19();
  v178 = v53;
  v183 = v16;
  sub_274639DEC();
  OUTLINED_FUNCTION_1();
  v181 = v55;
  v182 = v54;
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v56);
  v58 = &v153 - v57;
  v59 = v186;
  v60 = sub_2745B7268(a1);
  v61 = *(v59 + *(a1 + 60));
  v179 = v58;
  v180 = v47;
  if (v60)
  {
    if (v61)
    {
      v62 = a1;
      sub_27463A33C();
      v63 = *(a1 + 40);
      sub_27463A9FC();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F000);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_2746486A0;
      v65 = sub_27463A35C();
      *(inited + 32) = v65;
      v66 = sub_27463A37C();
      *(inited + 33) = v66;
      sub_27463A36C();
      sub_27463A36C();
      if (sub_27463A36C() != v65)
      {
        sub_27463A36C();
      }

      sub_27463A36C();
      if (sub_27463A36C() != v66)
      {
        sub_27463A36C();
      }

      v203 = v63;
      v67 = MEMORY[0x277CDF918];
      v204 = MEMORY[0x277CDF918];
      v68 = v190;
      v69 = swift_getWitnessTable();
      v70 = v157;
      v71 = v169;
      sub_27463A9FC();
      (*(v155 + 8))(v71, v68);
      v201 = v69;
      v202 = v67;
      v72 = v191;
      v73 = swift_getWitnessTable();
      sub_27457574C();
      v74 = v170;
      sub_27463A90C();
      (*(v159 + 8))(v70, v72);
      v75 = v186;
      sub_2745B71CC(v234);
      memcpy(v233, v234, sizeof(v233));
      v76 = *(v171 + 16);
      *&v185 = v63;
      v76(v162, v74, v192);
      v77 = v75[1];
      v177 = *v75;
      v186 = v77;
      v78 = sub_2745B8810();
      v79 = *(v62 + 32);
      v199 = v73;
      v200 = MEMORY[0x277CDFC60];
      v152 = swift_getWitnessTable();
      v80 = v167;
      sub_27463AFBC();
      v196 = v78;
      v197 = v79;
      v81 = v78;
      v198 = v152;
      OUTLINED_FUNCTION_2_32();
      v82 = v188;
      v83 = swift_getWitnessTable();
      v84 = v166;
      sub_2744E9688(v80, v82, v83);
      v85 = *(v168 + 8);
      v85(v80, v82);
      sub_2744E9688(v84, v82, v83);
      v193 = v81;
      v194 = v79;
      v186 = v79;
      v86 = MEMORY[0x277CE1410];
      v195 = MEMORY[0x277CE1410];
      swift_getWitnessTable();
      sub_27456E878();
      v85(v80, v82);
      v85(v84, v82);
      (*(v171 + 8))(v170, v192);
    }

    else
    {
      v94 = a1;
      sub_2745B71CC(v234);
      memcpy(v233, v234, sizeof(v233));
      v95 = sub_2745B8810();
      v186 = v95;
      v96 = *(a1 + 32);
      sub_27463AFAC();
      v230 = v95;
      v231 = v96;
      v232 = MEMORY[0x277CE1410];
      v177 = MEMORY[0x277CDF0A8];
      v97 = swift_getWitnessTable();
      v98 = OUTLINED_FUNCTION_13_17();
      sub_2744E9688(v98, v99, v97);
      v100 = *(v154 + 8);
      v101 = OUTLINED_FUNCTION_13_17();
      v100(v101);
      v102 = OUTLINED_FUNCTION_10_30();
      sub_2744E9688(v102, v103, v97);
      *&v185 = *(v94 + 40);
      v228 = v185;
      v104 = MEMORY[0x277CDF918];
      v229 = MEMORY[0x277CDF918];
      OUTLINED_FUNCTION_7_32();
      v226 = swift_getWitnessTable();
      v227 = v104;
      v224 = swift_getWitnessTable();
      v225 = MEMORY[0x277CDFC60];
      v105 = swift_getWitnessTable();
      v221 = v186;
      v186 = v96;
      v222 = v96;
      v223 = v105;
      swift_getWitnessTable();
      OUTLINED_FUNCTION_13_17();
      v86 = MEMORY[0x277CE1410];
      sub_27456E7CC();
      v106 = OUTLINED_FUNCTION_13_17();
      v100(v106);
      v107 = OUTLINED_FUNCTION_10_30();
      v100(v107);
    }

    v108 = sub_2745B8810();
    v218 = v108;
    v109 = v186;
    v219 = v186;
    v220 = v86;
    OUTLINED_FUNCTION_2_32();
    v110 = swift_getWitnessTable();
    v216 = v185;
    v111 = MEMORY[0x277CDF918];
    v217 = MEMORY[0x277CDF918];
    OUTLINED_FUNCTION_6_24();
    v214 = swift_getWitnessTable();
    v215 = v111;
    v212 = swift_getWitnessTable();
    v213 = MEMORY[0x277CDFC60];
    v112 = swift_getWitnessTable();
    v209 = v108;
    v210 = v109;
    v211 = v112;
    v113 = swift_getWitnessTable();
    v207 = v110;
    v208 = v113;
    OUTLINED_FUNCTION_5_34();
    v114 = v180;
    v115 = swift_getWitnessTable();
    v116 = v178;
    sub_2744E9688(v178, v114, v115);
    OUTLINED_FUNCTION_45_0();
    v117 = swift_getWitnessTable();
    v205 = v109;
    v206 = v117;
    swift_getWitnessTable();
    v118 = v86;
    v119 = v179;
    OUTLINED_FUNCTION_10_30();
    sub_27456E7CC();
    v120 = *(v175 + 8);
    v121 = OUTLINED_FUNCTION_10_30();
    v120(v121);
    v122 = v116;
    v123 = v114;
  }

  else
  {
    v153 = a1;
    if (v61)
    {
      v87 = sub_274639C6C();
      MEMORY[0x28223BE20](v87);
      v185 = *(a1 + 32);
      v88 = v164;
      sub_27463AE5C();
      OUTLINED_FUNCTION_45_0();
      v89 = v189;
      v90 = swift_getWitnessTable();
      v91 = v163;
      sub_2744E9688(v88, v89, v90);
      v92 = *(v165 + 8);
      v92(v88, v89);
      sub_2744E9688(v91, v89, v90);
      v93 = v176;
      v186 = v185;
      sub_27456E878();
      v92(v88, v89);
      v92(v91, v89);
    }

    else
    {
      (*v59)();
      v124 = *(a1 + 32);
      v125 = v156;
      v126 = OUTLINED_FUNCTION_12_20();
      sub_2744E9688(v126, v127, v124);
      v128 = *(v158 + 8);
      v129 = OUTLINED_FUNCTION_12_20();
      v128(v129);
      sub_2744E9688(v125, v4, v124);
      OUTLINED_FUNCTION_45_0();
      swift_getWitnessTable();
      v93 = v176;
      OUTLINED_FUNCTION_12_20();
      v186 = v124;
      sub_27456E7CC();
      v130 = OUTLINED_FUNCTION_12_20();
      v128(v130);
      (v128)(v125, v4);
    }

    OUTLINED_FUNCTION_45_0();
    v131 = swift_getWitnessTable();
    v132 = v186;
    v267 = v186;
    v268 = v131;
    v133 = v183;
    v178 = swift_getWitnessTable();
    sub_2744E9688(v93, v133, v178);
    v134 = sub_2745B8810();
    v264 = v134;
    v265 = v132;
    v118 = MEMORY[0x277CE1410];
    v266 = MEMORY[0x277CE1410];
    v135 = swift_getWitnessTable();
    *&v185 = *(v153 + 40);
    v262 = v185;
    v136 = MEMORY[0x277CDF918];
    v263 = MEMORY[0x277CDF918];
    OUTLINED_FUNCTION_7_32();
    v260 = swift_getWitnessTable();
    v261 = v136;
    v258 = swift_getWitnessTable();
    v259 = MEMORY[0x277CDFC60];
    v137 = swift_getWitnessTable();
    v255 = v134;
    v256 = v132;
    v257 = v137;
    v138 = swift_getWitnessTable();
    v253 = v135;
    v254 = v138;
    swift_getWitnessTable();
    v119 = v179;
    v139 = v177;
    OUTLINED_FUNCTION_10_30();
    sub_27456E878();
    v120 = *(v173 + 8);
    (v120)(v139, v133);
    v122 = v176;
    v123 = v133;
  }

  (v120)(v122, v123);
  v140 = sub_2745B8810();
  v141 = v186;
  v250 = v140;
  v251 = v186;
  v252 = v118;
  OUTLINED_FUNCTION_2_32();
  v142 = swift_getWitnessTable();
  v248 = v185;
  v143 = MEMORY[0x277CDF918];
  v249 = MEMORY[0x277CDF918];
  OUTLINED_FUNCTION_6_24();
  v246 = swift_getWitnessTable();
  v247 = v143;
  v244 = swift_getWitnessTable();
  v245 = MEMORY[0x277CDFC60];
  v144 = swift_getWitnessTable();
  v241 = v140;
  v242 = v141;
  v243 = v144;
  v145 = swift_getWitnessTable();
  v239 = v142;
  v240 = v145;
  OUTLINED_FUNCTION_5_34();
  v146 = swift_getWitnessTable();
  OUTLINED_FUNCTION_45_0();
  v147 = swift_getWitnessTable();
  v237 = v141;
  v238 = v147;
  v148 = swift_getWitnessTable();
  v235 = v146;
  v236 = v148;
  v149 = v182;
  v150 = swift_getWitnessTable();
  sub_2744E9688(v119, v149, v150);
  return (*(v181 + 8))(v119, v149);
}

uint64_t sub_2745B855C@<X0>(uint64_t a1@<X0>, char *a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v33 = a5;
  v34 = a6;
  v9 = *(a3 - 1);
  MEMORY[0x28223BE20](a1);
  v35 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v30 - v12;
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v30 - v21;
  v31 = v23;
  (*v23)(v20);
  v32 = a4;
  sub_2744E9688(v18, a2, a4);
  v24 = *(v15 + 8);
  v24(v18, a2);
  v39 = a2;
  v40 = a3;
  v41 = a4;
  v25 = v33;
  v42 = v33;
  v26 = type metadata accessor for VariableConfigurationSection();
  sub_2744E9688(v31 + *(v26 + 52), a3, v25);
  (*(v15 + 16))(v18, v22, a2);
  v39 = v18;
  v27 = v35;
  (*(v9 + 16))(v35, v13, a3);
  v40 = v27;
  v38[0] = a2;
  v38[1] = a3;
  v36 = v32;
  v37 = v25;
  sub_274575750(&v39, 2, v38);
  v28 = *(v9 + 8);
  v28(v13, a3);
  v24(v22, a2);
  v28(v35, a3);
  return (v24)(v18, a2);
}

unint64_t sub_2745B8810()
{
  result = qword_280953090;
  if (!qword_280953090)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280953088);
    sub_2745B889C();
    sub_2745B8920();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280953090);
  }

  return result;
}

unint64_t sub_2745B889C()
{
  result = qword_280953098;
  if (!qword_280953098)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809530A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280953098);
  }

  return result;
}

unint64_t sub_2745B8920()
{
  result = qword_280950C60;
  if (!qword_280950C60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280950C68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280950C60);
  }

  return result;
}

uint64_t sub_2745B8994(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809530A8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2745B8A04(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809530A8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2745B8A6C()
{
  result = qword_2809530B0;
  if (!qword_2809530B0)
  {
    sub_274638B1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809530B0);
  }

  return result;
}

uint64_t sub_2745B8B74()
{
  static WFDateFieldParameter.moduleSummaryEditorClass()();

  return swift_getObjCClassFromMetadata();
}

void sub_2745B8B9C(uint64_t a1, uint64_t a2)
{
  v6.receiver = v2;
  v6.super_class = type metadata accessor for DateFieldParameterSummaryEditor();
  objc_msgSendSuper2(&v6, sel_textEntryWillBegin_allowMultipleLines_, a1, a2);
  sub_2745B8E60();
  v5 = [v2 parameter];
  [v5 addEventObserver_];
}

void sub_2745B8CA0(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for DateFieldParameterSummaryEditor();
  objc_msgSendSuper2(&v3, sel_textEntryTextDidChange_, a1);
  sub_2745B8E60();
}

id sub_2745B8D58()
{
  v4.receiver = v0;
  v4.super_class = type metadata accessor for DateFieldParameterSummaryEditor();
  objc_msgSendSuper2(&v4, sel_textEntryDidFinish);
  v1 = [v0 parameter];
  [v1 removeEventObserver_];

  result = [v0 variableUIDelegate];
  if (result)
  {
    v3 = result;
    if ([result respondsToSelector_])
    {
      [v3 showParameterEditingHint_];
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_2745B8E60()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809530C0);
  *&v3 = MEMORY[0x28223BE20](v2 - 8).n128_u64[0];
  v5 = &v16 - v4;
  v17 = [v0 parameter];
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v6 = [v0 currentState];
    if (v6)
    {
      v7 = v6;
      sub_27463BE7C();

      v8 = sub_2746382DC();
      v9 = 0;
    }

    else
    {
      v8 = sub_2746382DC();
      v9 = 1;
    }

    __swift_storeEnumTagSinglePayload(v5, v9, 1, v8);
    WFDateFieldParameter.hintText(for:)(v5);
    v12 = v11;
    sub_274565BC8(v5);
    v13 = [v1 variableUIDelegate];
    if (v13)
    {
      v14 = v13;
      if ([v13 respondsToSelector_])
      {
        if (v12)
        {
          v15 = sub_27463B66C();
        }

        else
        {
          v15 = 0;
        }

        [v14 showParameterEditingHint_];

        swift_unknownObjectRelease();
        return;
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }

    return;
  }

  v10 = v17;
}

id sub_2745B90D4(void *a1, uint64_t a2, char a3)
{
  v9.receiver = v3;
  v9.super_class = type metadata accessor for DateFieldParameterSummaryEditor();
  v7 = objc_msgSendSuper2(&v9, sel_initWithParameter_arrayIndex_processing_, a1, a2, a3 & 1);

  return v7;
}

id sub_2745B9184()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DateFieldParameterSummaryEditor();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2745B91BC(uint64_t a1, void *a2, void *a3)
{
  v5 = MEMORY[0x277D84F90];
  v11 = MEMORY[0x277D84F90];
  v6 = sub_274453594(a1);
  result = swift_beginAccess();
  v8 = 0;
  while (1)
  {
    if (v6 == v8)
    {

      return v5;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x277C58B20](v8, a1);
      v9 = result;
    }

    else
    {
      if (v8 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_17;
      }

      v9 = *(a1 + 8 * v8 + 32);
      result = swift_unknownObjectRetain();
    }

    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 != *a2)
    {
      goto LABEL_11;
    }

    if (a3)
    {
      a3;
      result = swift_unknownObjectRelease();
LABEL_11:
      MEMORY[0x277C57F30](result);
      if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_27463B85C();
      }

      result = sub_27463B8AC();
      v5 = v11;
      ++v8;
    }

    else
    {
      result = swift_unknownObjectRelease();
      ++v8;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_2745B932C()
{

  return MEMORY[0x2821FE8D8](v0, 25, 7);
}

uint64_t sub_2745B9364()
{
  v1 = v0;
  v2 = OUTLINED_FUNCTION_24_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(v2);
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v3);
  v5 = v11 - v4;
  sub_274412734(0, &qword_280953430);
  v6 = [objc_opt_self() mainRunLoop];
  v7 = sub_27463C07C();
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v7);
  v8 = sub_27463BF2C();

  sub_27440CB1C(v5, &qword_280953428);
  v11[1] = v8;
  sub_27463BF1C();
  sub_2745C1FA0(&qword_280953438, 255, MEMORY[0x277CC9DF0]);
  v9 = sub_274638F2C();

  *(v1 + 16) = v9;
  *(v1 + 24) = 0;
  return v1;
}

uint64_t sub_2745B94FC@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CommitState();
  result = sub_274638EFC();
  *a1 = result;
  return result;
}

Swift::Bool __swiftcall WFVariableString.copyToPasteboard()()
{
  v0 = [objc_opt_self() generalPasteboard];
  v1 = objc_opt_self();
  v2 = sub_27463822C();
  [v1 copyVariableString:v2 toPasteboard:v0];

  return 1;
}

uint64_t static WFVariableString.createFromPasteboard(options:)()
{
  OUTLINED_FUNCTION_16_1();
  v2 = objc_opt_self();
  if ([v2 clipboardContainsVariableString])
  {
    v3 = v1 >= 2;
  }

  else
  {
    v3 = 0;
  }

  if (!v3)
  {
LABEL_11:
    v8 = sub_2746382DC();

    return __swift_storeEnumTagSinglePayload(v0, 1, 1, v8);
  }

  v4 = objc_opt_self();
  swift_unknownObjectRetain();
  v5 = [v4 generalPasteboard];
  v6 = [v2 serializedVariableStringFromPasteboard_];

  if (!v6)
  {
    sub_2745B96C4(v1);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_15_2();

  return sub_27463825C();
}

uint64_t sub_2745B96C4(uint64_t result)
{
  if (result != 1)
  {
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_2745B9730(void *a1)
{
  v3 = *(v1 + 56);
  if (!v3)
  {
    if (!a1)
    {
      return;
    }

LABEL_6:
    v4 = sub_2745B9840();
    [a1 removeVariableObserver_];

    v3 = *(v1 + 56);
    if (!v3)
    {
      return;
    }

    goto LABEL_7;
  }

  if (v3 == a1)
  {
    return;
  }

  if (a1)
  {
    goto LABEL_6;
  }

LABEL_7:
  swift_unknownObjectRetain();
  v5 = sub_2745B9840();
  [v3 addVariableObserver_];

  swift_unknownObjectRelease();
}

uint64_t sub_2745B97E8(uint64_t a1)
{
  v2 = *(v1 + 56);
  *(v1 + 56) = a1;
  swift_unknownObjectRetain();
  sub_2745B9730(v2);
  swift_unknownObjectRelease();

  return swift_unknownObjectRelease();
}

double sub_2745B98B8@<D0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_25_1();
  sub_274638FAC();

  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  return result;
}

uint64_t sub_2745B9938()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_274638FBC();
}

void sub_2745B99B4()
{
  OUTLINED_FUNCTION_24();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_2746382DC();
  OUTLINED_FUNCTION_1();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3_0();
  v14 = v13 - v12;
  if (!*(v1 + 16) || (*(v1 + 32) & 1) != 0)
  {
    goto LABEL_12;
  }

  v28 = v3;
  v29 = v5;
  v27 = *(v1 + 24);

  sub_27463896C();
  v15 = sub_27463822C();
  v16 = [v15 attributedString];

  v17 = *(v10 + 8);
  v17(v14, v8);
  v18 = [v16 mutableCopy];

  if (v18)
  {
    v19 = v7;
    sub_27463829C();
    v20 = sub_27463822C();
    v21 = [v20 attributedString];

    v17(v14, v8);
    [v18 replaceCharactersInRange:v29 withAttributedString:{v28, v21}];
    v22 = objc_allocWithZone(MEMORY[0x277D7CA28]);
    v23 = v18;
    [v22 initWithAttributedString_];
    sub_27463821C();

    sub_27463897C();
    if (!__OFADD__(v29, [v21 length]))
    {
      sub_27463898C();
      v24 = *(v1 + 72);
      if (v24)
      {

        v24(v25);
        sub_274406A94(v24);
      }

      *(sub_2745B9890() + 24) = 0;

      v26 = [v19 shouldDisplayEditorOnInsertionInContext_];
      if (v26)
      {
        MEMORY[0x28223BE20](v26);
        *(&v27 - 2) = v19;
        sub_27463892C();
        if (v30)
        {

LABEL_12:
          OUTLINED_FUNCTION_23();
          return;
        }

        sub_2745B9D2C();
      }

      goto LABEL_12;
    }

    __break(1u);
  }

  __break(1u);
}

BOOL sub_2745B9C9C(void *a1, id a2)
{
  v3 = [a1 token];
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = [v4 variable];

    return v5 == a2;
  }

  else
  {

    return 0;
  }
}

void sub_2745B9D2C()
{
  v5 = v0;
  OUTLINED_FUNCTION_1_0();
  v7 = v6;
  v8 = sub_2745BAF3C();
  if (v8)
  {
    v9 = v8;
    v10 = swift_allocObject();
    *(v10 + 16) = v7;
    v11 = v7;
    v12 = v9;
    sub_2745B9938();
    v13 = *(v5 + 40);
    if (v13 && (*(v5 + 32) & 1) == 0)
    {
      v14 = *(v5 + 24);
      v22 = v13;
      v15 = sub_27443C514();
      if (v15)
      {
        v16 = v15;
        [v15 finishEditingReturningToKeyboard_];
      }

      OUTLINED_FUNCTION_3();
      v17 = swift_allocObject();
      swift_weakInit();
      v18 = swift_allocObject();
      v18[2] = v17;
      v18[3] = v10;
      v18[4] = v4;
      v18[5] = v3;
      v18[6] = v2;
      v18[7] = v1;
      OUTLINED_FUNCTION_3();
      v19 = swift_allocObject();
      swift_weakInit();
      objc_allocWithZone(WFVariableEditingOptions);
      v20 = v12;

      v21 = sub_2745AFA0C(v20, v14, sub_2745C4350, v18, sub_2745C4360, v19);
      sub_27443C58C(v21);
    }

    else
    {
      v22 = v12;
    }
  }
}

uint64_t sub_2745B9F20(void *a1, double a2, double a3, double a4, double a5, uint64_t a6, uint64_t a7)
{
  v13 = sub_2746382DC();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (!*(result + 16))
    {
    }

    sub_27463896C();
    v19 = sub_27463824C();
    (*(v14 + 8))(v16, v13);
    v20 = a1;
    sub_2745B91BC(v19, (a7 + 16), a1);

    sub_27463823C();
    sub_27463897C();
    if (a1)
    {
      v21 = v20;
      v22 = sub_2745BAF3C();
      if (v22)
      {
        v23 = v22;
        swift_beginAccess();
        v24 = *(a7 + 16);
        *(a7 + 16) = v21;
        v25 = v21;

        *&v29 = v23;
        *(&v29 + 1) = a2;
        *&v30 = a3;
        *(&v30 + 1) = a4;
        v31 = a5;
        v26 = v23;
        sub_2745B9938();

LABEL_9:
        v27 = sub_2745B9890();

        *(v27 + 24) = 1;
      }
    }

    v31 = 0.0;
    v29 = 0u;
    v30 = 0u;
    sub_2745B9938();
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_2745BA19C(char a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280953458);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v13 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280953460);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (*(result + 16))
    {

      if (a1)
      {
        sub_2745B98B8(&v14);
        if (v14)
        {
          v17 = v14;
          v18 = v15;
          v19 = v16;
          MEMORY[0x28223BE20](v10);
          *(&v13 - 2) = &v17;
          sub_2746388FC();
          if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
          {
            sub_27440CB1C(&v14, &unk_280953128);
            sub_27440CB1C(v4, &qword_280953458);
          }

          else
          {
            (*(v6 + 32))(v8, v4, v5);
            v11 = sub_2746388CC();
            v12 = __OFADD__(v11, 1);
            result = v11 + 1;
            if (v12)
            {
              __break(1u);
              return result;
            }

            sub_27463898C();
            sub_27440CB1C(&v14, &unk_280953128);
            (*(v6 + 8))(v8, v5);
          }
        }
      }

      v22 = 0;
      v20 = 0u;
      v21 = 0u;
      sub_2745B9938();
    }
  }

  return result;
}

BOOL sub_2745BA444(void *a1, id *a2)
{
  v3 = [a1 token];
  v4 = [*a2 variable];

  return v3 == v4;
}

uint64_t sub_2745BA4A8()
{
  v8 = 0;
  v6[2] = &v8;
  v6[3] = &v7;
  v7 = MEMORY[0x277D84F90];
  sub_2745BA68C(sub_2745C4348, v6);
  v0 = *(v7 + 16);
  if (v0)
  {
    v1 = v7 + 40;
    do
    {
      v2 = sub_27463B66C();
      v3 = OUTLINED_FUNCTION_92_0();
      [v3 v4];

      v1 += 16;
      --v0;
    }

    while (v0);
  }
}

void sub_2745BA574(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v11 = [a1 token];
  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (v8)
  {
    v9 = [v8 variable];

    if (v9)
    {
      objc_opt_self();
      v10 = swift_dynamicCastObjCClass();

      if (v10)
      {
        if (*a5 == 1)
        {
          sub_2745C388C(0, 0, a2, a3);
        }

        else
        {
          *a5 = 1;
        }
      }
    }
  }

  else
  {
  }
}

uint64_t sub_2745BA68C(uint64_t a1, uint64_t a2)
{
  [v2 length];
  OUTLINED_FUNCTION_39();
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  OUTLINED_FUNCTION_39();
  v6 = swift_allocObject();
  *(v6 + 16) = sub_2745C42F4;
  *(v6 + 24) = v5;
  v12[4] = sub_2745C42FC;
  v12[5] = v6;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_2745CDCCC;
  v12[3] = &block_descriptor_161_0;
  v7 = _Block_copy(v12);

  v8 = OUTLINED_FUNCTION_92_0();
  [v8 v9];
  _Block_release(v7);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

void sub_2745BA80C()
{
  OUTLINED_FUNCTION_24();
  v3 = *(v0 + 16);
  if (v3)
  {
    v4 = v0;
    v5 = *(v0 + 40);
    if (v5)
    {
      v6 = v2;
      v7 = v1;
      v8 = v5;

      v9 = sub_27463895C();
      v10 = sub_27443C514();
      if (!v10)
      {
        goto LABEL_8;
      }

      v11 = v10;
      v12 = [v10 anchor];

      if (!v12)
      {
        goto LABEL_8;
      }

      v13 = [v12 variableProvider];
      v14 = *(v4 + 56);
      swift_unknownObjectRelease();
      if (!v14)
      {

        goto LABEL_9;
      }

      if (v13 != v14)
      {
        goto LABEL_7;
      }

      v15 = [v12 parameter];
      v16 = *(v4 + 48);
      if (v15)
      {
        v17 = v15;
        if (!v16)
        {

          goto LABEL_7;
        }

        v23 = sub_274412734(0, qword_28094AE40);
        v22 = v16;
        v18 = sub_27463BF7C();

        if ((v18 & 1) == 0)
        {
LABEL_7:

LABEL_8:
          v14 = 0;
LABEL_9:
          MEMORY[0x28223BE20](v10);
          v19[2] = v14;
          v19[3] = v4;
          v19[4] = v7;
          v19[5] = v9;
          v20 = v6 & 1;
          v21 = v3;
          sub_2745BA68C(sub_2745C4310, v19);

          goto LABEL_10;
        }
      }

      else if (v16)
      {
        goto LABEL_7;
      }

      v14 = [v12 variable];

      v10 = v14;
      goto LABEL_9;
    }
  }

LABEL_10:
  OUTLINED_FUNCTION_23();
}

void sub_2745BAA04(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, id a5, uint64_t a6, void *a7, void *a8, char a9)
{
  v14 = [a1 token];

  if (a5)
  {
    v15 = v14 == a5;
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;
  v31 = [objc_opt_self() systemBlueColor];
  [a1 addObserver_];
  v17 = [a1 font];
  if (v17 && (v18 = v17, sub_274412734(0, &qword_280952AC8), v19 = a7, v20 = sub_27463BF7C(), v18, v19, (v20 & 1) != 0))
  {
    v21 = 0;
  }

  else
  {
    [a1 setFont_];
    v21 = 1;
  }

  v22 = [a1 surroundingTextFont];
  if (!v22 || (v23 = v22, sub_274412734(0, &qword_280952AC8), v24 = a8, v25 = sub_27463BF7C(), v23, v24, (v25 & 1) == 0))
  {
    [a1 setSurroundingTextFont_];
    v21 = 1;
  }

  v26 = [a1 tintColor];
  if (!v26)
  {
    v30 = v31;
    goto LABEL_18;
  }

  v27 = v26;
  sub_274412734(0, qword_28094A770);
  v28 = v31;
  v29 = sub_27463BF7C();

  if ((v29 & 1) == 0)
  {
LABEL_18:
    [a1 setTintColor_];
    v21 = 1;
  }

  if (v16 != [a1 isSelected])
  {
    [a1 setSelected_];
    v21 = 1;
  }

  if ([a1 isEmphasized] != (a9 & 1))
  {
    [a1 setEmphasized_];
LABEL_24:
    sub_27463894C();
    sub_274638F0C();

    return;
  }

  if (v21)
  {
    goto LABEL_24;
  }
}

void sub_2745BAD10()
{
  OUTLINED_FUNCTION_24();
  v1 = v0;
  v2 = sub_274638DAC();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3_0();
  v8 = v7 - v6;
  if (!*(v0 + 16))
  {
LABEL_8:
    OUTLINED_FUNCTION_23();
    return;
  }

  v9 = *(sub_2745B9890() + 24);

  if (v9 == 1)
  {
    sub_274638C2C();

    v10 = sub_274638D9C();
    v11 = sub_27463BBEC();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      v14 = sub_27463890C();
      *(v12 + 4) = v14;
      *v13 = v14;
      _os_log_impl(&dword_2743F0000, v10, v11, "Committing attributed string: %@", v12, 0xCu);
      sub_27440CB1C(v13, &qword_280950E00);
      MEMORY[0x277C5A270](v13, -1, -1);
      MEMORY[0x277C5A270](v12, -1, -1);
    }

    (*(v4 + 8))(v8, v2);
    v15 = *(v1 + 72);
    if (v15)
    {

      v15(v16);
      sub_274406A94(v15);
    }

    sub_2745B9890();
    OUTLINED_FUNCTION_15_19();

    *(v1 + 24) = 0;

    goto LABEL_8;
  }

  OUTLINED_FUNCTION_23();
}

id sub_2745BAF3C()
{
  v1 = v0[7];
  if (!v1)
  {
    return 0;
  }

  v2 = v0[6];
  if (!v2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_1_0();
  v4 = v3;
  v5 = v0[8];
  objc_allocWithZone(WFVariableEditingAnchor);
  v6 = v5;
  v7 = v4;
  swift_unknownObjectRetain();
  return sub_2745AFB44(v7, v1, v2, v5);
}

void sub_2745BAFEC(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_2746382DC();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3_0();
  v13 = v12 - v11;
  if (a1)
  {
    if (a1 == 1)
    {
      if (v3[2])
      {

        sub_27463896C();
        v14 = sub_27463822C();
        v15 = [v14 attributedString];

        (*(v9 + 8))(v13, v7);
        v16 = [v15 string];

        v17 = sub_27463B6AC();
        v19 = v18;

        v20 = objc_opt_self();
        sub_2745C3938(v17, v19, v20);
        sub_274412734(0, &qword_280953450);
        OUTLINED_FUNCTION_25_1();
        v21 = sub_2745A9480();
        [objc_allocWithZone(MEMORY[0x277D7CA28]) initWithAttributedString_];
        sub_27463821C();

        sub_27463897C();
      }
    }

    else
    {
      [a1 copy];
      sub_27463C13C();
      swift_unknownObjectRelease();
      sub_274412734(0, &qword_28094BD90);
      swift_dynamicCast();
      *(sub_2745B9890() + 24) = 0;

      v28 = v3[11];
      if (v28)
      {

        v29 = OUTLINED_FUNCTION_42_4();
        v28(v29);

        sub_274406A94(v28);
      }

      else
      {
        OUTLINED_FUNCTION_42_4();
        sub_2745B99B4();
      }
    }
  }

  else if (v3[7])
  {
    v22 = v3[6];
    if (v22)
    {
      v23 = v3[5];
      if (v23)
      {
        v24 = v23;
        v25 = v22;
        swift_unknownObjectRetain();
        v26 = sub_27448DF90(v25);
        if (v26)
        {
          sub_2744896FC(*MEMORY[0x277D7D068], v26);
        }

        v27 = swift_allocObject();
        v27[2] = v3;
        v27[3] = a2;
        v27[4] = a3;
        swift_unknownObjectRetain();

        sub_27443CA58();

        swift_unknownObjectRelease();
      }
    }
  }
}

void sub_2745BB350(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v6 = *(a2 + 88);
    if (v6)
    {
      v7 = a1;
      sub_2744069F0(v6);
      v6(v7, a3, a4);

      sub_274406A94(v6);
    }

    else
    {
      v8 = a1;
      sub_2745B99B4();
    }
  }
}

uint64_t sub_2745BB444()
{

  swift_unknownObjectRelease();
  sub_274406A94(*(v0 + 72));
  sub_274406A94(*(v0 + 88));
  v1 = OBJC_IVAR____TtC14WorkflowEditor27VariableTextEditorViewModel__autocompleter;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280953468);
  OUTLINED_FUNCTION_7();
  (*(v2 + 8))(v0 + v1);
  v3 = OBJC_IVAR____TtC14WorkflowEditor27VariableTextEditorViewModel__syntaxHighlighter;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280953470);
  OUTLINED_FUNCTION_7();
  (*(v4 + 8))(v0 + v3);
  v5 = OBJC_IVAR____TtC14WorkflowEditor27VariableTextEditorViewModel__commitState;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280953478);
  OUTLINED_FUNCTION_7();
  (*(v6 + 8))(v0 + v5);
  v7 = OBJC_IVAR____TtC14WorkflowEditor27VariableTextEditorViewModel__editingVariable;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280953480);
  OUTLINED_FUNCTION_7();
  (*(v8 + 8))(v0 + v7);
  return v0;
}

uint64_t sub_2745BB5AC()
{
  sub_2745BB444();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void sub_2745BB62C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2745BB878(319, &qword_280953108, a3, type metadata accessor for VariableAutocompleter, MEMORY[0x277CBCED0]);
  if (v3 <= 0x3F)
  {
    sub_2745BB878(319, &qword_280953110, 255, type metadata accessor for SyntaxHighlighter, MEMORY[0x277CBCED0]);
    if (v5 <= 0x3F)
    {
      sub_2745BB878(319, &qword_280953118, v4, type metadata accessor for CommitState, MEMORY[0x277CBCED0]);
      if (v6 <= 0x3F)
      {
        sub_2745C2124(319, &qword_280953120, &unk_280953128, &unk_27465D178, MEMORY[0x277CBCED0]);
        if (v7 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_2745BB878(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = a4(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_2745BB8FC()
{
  OUTLINED_FUNCTION_24();
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280953480);
  OUTLINED_FUNCTION_1();
  v33 = v3;
  v34 = v2;
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_40_1();
  v32 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280953478);
  OUTLINED_FUNCTION_1();
  v30 = v7;
  v31 = v6;
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v8);
  v10 = &v29 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280953470);
  OUTLINED_FUNCTION_1();
  v13 = v12;
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v14);
  v16 = &v29 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280953468);
  OUTLINED_FUNCTION_1();
  v19 = v18;
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v20);
  v22 = &v29 - v21;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v1 + 32) = 1;
  *(v1 + 40) = 0u;
  *(v1 + 56) = 0u;
  *(v1 + 72) = 0u;
  *(v1 + 88) = 0u;
  v23 = OBJC_IVAR____TtC14WorkflowEditor27VariableTextEditorViewModel__autocompleter;
  *&v35 = [objc_allocWithZone(type metadata accessor for VariableAutocompleter()) init];
  sub_274638F6C();
  (*(v19 + 32))(v1 + v23, v22, v17);
  v24 = OBJC_IVAR____TtC14WorkflowEditor27VariableTextEditorViewModel__syntaxHighlighter;
  type metadata accessor for SyntaxHighlighter(0);
  swift_allocObject();
  *&v35 = sub_2745C22D8();
  sub_274638F6C();
  (*(v13 + 32))(v1 + v24, v16, v11);
  v25 = OBJC_IVAR____TtC14WorkflowEditor27VariableTextEditorViewModel__commitState;
  type metadata accessor for CommitState();
  v26 = swift_allocObject();
  sub_2745B9364();
  *&v35 = v26;
  sub_274638F6C();
  (*(v30 + 32))(v1 + v25, v10, v31);
  v27 = OBJC_IVAR____TtC14WorkflowEditor27VariableTextEditorViewModel__editingVariable;
  v37 = 0;
  v35 = 0u;
  v36 = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280953128);
  v28 = v32;
  sub_274638F6C();
  (*(v33 + 32))(v1 + v27, v28, v34);
  OUTLINED_FUNCTION_23();
}

uint64_t sub_2745BBC64@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for VariableTextEditorViewModel(0);
  result = sub_274638EFC();
  *a1 = result;
  return result;
}

void sub_2745BBCA4(uint64_t a1)
{
  v2 = *(v1 + 16);
  if (v2)
  {

    v4 = sub_27463890C();
    MEMORY[0x28223BE20](v4);
    v5[2] = a1;
    v5[3] = v2;
    sub_2745BA68C(sub_2745C42EC, v5);
  }
}

uint64_t sub_2745BBD3C(uint64_t result, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5)
{
  if (result == a5)
  {
    sub_27463894C();
    sub_274638F0C();

    *a4 = 1;
  }

  return result;
}

uint64_t sub_2745BBDFC()
{
  type metadata accessor for VariableTextEditorViewModel(0);
  v0 = swift_allocObject();
  sub_2745BB8FC();
  return v0;
}

uint64_t sub_2745BBE38()
{
  v1 = sub_274639ABC();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3_0();
  v7 = v6 - v5;
  v8 = *(v0 + 200);
  if (*(v0 + 208) != 1)
  {

    sub_27463BC0C();
    v9 = sub_27463A2FC();
    sub_274638CEC();

    sub_274639AAC();
    OUTLINED_FUNCTION_42_4();
    swift_getAtKeyPath();
    sub_2743F45E8(v8, 0);
    (*(v3 + 8))(v7, v1);
    LOBYTE(v8) = v11;
  }

  return v8 & 1;
}

void sub_2745BBF68()
{
  OUTLINED_FUNCTION_24();
  v125 = v1;
  v122 = type metadata accessor for VariableTextEditor(0);
  OUTLINED_FUNCTION_1();
  v115 = v2;
  MEMORY[0x28223BE20](v3);
  v124 = v4;
  OUTLINED_FUNCTION_12_3(v100 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280953348);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v5);
  v7 = v100 - v6;
  v102.i64[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280953350);
  OUTLINED_FUNCTION_1();
  v103.i64[0] = v8;
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v9);
  v100[1] = v100 - v10;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280953358);
  OUTLINED_FUNCTION_1();
  v107 = v11;
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_40_1();
  OUTLINED_FUNCTION_12_3(v13);
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280953360);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_40_1();
  OUTLINED_FUNCTION_12_3(v15);
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280953368);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_40_1();
  OUTLINED_FUNCTION_12_3(v17);
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280953370);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_40_1();
  OUTLINED_FUNCTION_12_3(v19);
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280953378);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_40_1();
  OUTLINED_FUNCTION_12_3(v21);
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280953380);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_40_1();
  OUTLINED_FUNCTION_12_3(v23);
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280953388);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_40_1();
  v121 = v25;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280953390);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_40_1();
  v123 = v27;
  v28 = v7;
  sub_2745BCAC4(v0, v7);
  v29 = *(v0 + 152);
  v119 = v0;
  v30 = *(v0 + 160);
  v31 = type metadata accessor for VariableTextEditorViewModel(0);
  v32 = sub_2745C1FA0(&qword_2809532A0, 255, type metadata accessor for VariableTextEditorViewModel);
  v128 = v29;
  v129 = v32;
  v127 = v30;
  v126 = v31;
  sub_27463920C();
  v33 = sub_2745B9840();

  swift_allocObject();
  sub_27463920C();
  swift_weakInit();

  v34 = type metadata accessor for VariableAutocompleter();
  v35 = sub_2745C3BE0();
  OUTLINED_FUNCTION_2_33();
  v39 = sub_2745C1FA0(v36, v37, v38);
  v40 = v101;
  sub_27463A58C();

  sub_27440CB1C(v28, &qword_280953348);
  swift_allocObject();
  sub_27463920C();
  swift_weakInit();

  v131 = v40;
  v132.i64[0] = v34;
  v132.i64[1] = v35;
  v133.i64[0] = v39;
  v41 = v100[2];
  swift_getOpaqueTypeConformance2();
  sub_27463A5CC();

  v42 = OUTLINED_FUNCTION_62_3();
  v43(v42);

  sub_27463920C();
  sub_2745B98B8(&v130);

  v44 = v130;
  if (v130)
  {
    v45 = v130;
  }

  sub_27463920C();
  sub_2745B98B8(&v131);

  v46.i64[0] = 0;
  v47.i64[0] = v131;
  v48 = vdupq_lane_s64(vmvnq_s8(vceqq_s64(v47, v46)).i64[0], 0);
  v103 = vandq_s8(v132, v48);
  v102 = vandq_s8(v133, v48);
  v49 = v131 == 0;

  v50 = v108;
  (*(v107 + 32))(v108, v41, v109);
  OUTLINED_FUNCTION_18_14();
  v51 = v102;
  *v52 = v103;
  v52[1] = v51;
  v52[2].i8[0] = v49;
  v52[2].i64[1] = v44;
  v53 = v119;
  sub_2745C3E08(v119, v118);
  v54 = OUTLINED_FUNCTION_28_16();
  OUTLINED_FUNCTION_27_12(v54);
  v55 = v50;
  v56 = v111;
  sub_27445EA84(v55, v111, &qword_280953360);
  OUTLINED_FUNCTION_18_14();
  *v57 = sub_2745C3E6C;
  v57[1] = v54;
  v57[2] = 0;
  v57[3] = 0;
  v58 = *(v53 + 64);
  v59 = OUTLINED_FUNCTION_24_5();
  sub_2745C3E08(v59, v60);
  v61 = OUTLINED_FUNCTION_28_16();
  OUTLINED_FUNCTION_27_12(v61);
  v62 = v56;
  v63 = v112;
  sub_27445EA84(v62, v112, &qword_280953368);
  OUTLINED_FUNCTION_18_14();
  *v64 = v58;
  v64[1] = sub_2745C4008;
  v64[2] = v61;
  v65 = v114;
  v66 = v114 + *(v106 + 36);
  sub_2744C68C0();
  v67 = OUTLINED_FUNCTION_24_5();
  sub_2745C3E08(v67, v68);
  v69 = OUTLINED_FUNCTION_28_16();
  OUTLINED_FUNCTION_27_12(v69);
  v70 = (v66 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809533F8) + 36));
  *v70 = sub_2745C4020;
  v70[1] = v69;
  sub_27445EA84(v63, v65, &qword_280953370);
  v71 = sub_27443C514();
  v72 = OUTLINED_FUNCTION_24_5();
  sub_2745C3E08(v72, v73);
  v74 = OUTLINED_FUNCTION_28_16();
  OUTLINED_FUNCTION_27_12(v74);
  v75 = v65;
  v76 = v117;
  sub_27445EA84(v75, v117, &qword_280953378);
  v77 = (v76 + *(v113 + 36));
  *v77 = v71;
  v77[1] = sub_2745C4038;
  v77[2] = v74;
  v78 = OUTLINED_FUNCTION_24_5();
  sub_2745C3E08(v78, v79);
  v80 = OUTLINED_FUNCTION_28_16();
  OUTLINED_FUNCTION_27_12(v80);
  OUTLINED_FUNCTION_39();
  v81 = swift_allocObject();
  *(v81 + 16) = sub_2745C40B8;
  *(v81 + 24) = v80;
  v82 = v76;
  v83 = v121;
  sub_27445EA84(v82, v121, &qword_280953380);
  OUTLINED_FUNCTION_32_11();
  *v84 = sub_27444A550;
  v84[1] = v81;

  sub_27463899C();
  v85 = OUTLINED_FUNCTION_24_5();
  sub_2745C3E08(v85, v86);
  v87 = OUTLINED_FUNCTION_28_16();
  OUTLINED_FUNCTION_27_12(v87);
  OUTLINED_FUNCTION_39();
  v88 = swift_allocObject();
  *(v88 + 16) = sub_2745C4144;
  *(v88 + 24) = v87;
  v89 = v83;
  v90 = v123;
  sub_27445EA84(v89, v123, &qword_280953388);
  OUTLINED_FUNCTION_32_11();
  *v91 = sub_2745956B4;
  v91[1] = v88;
  sub_27463920C();
  v92 = sub_2745B9890();

  v93 = *(v92 + 16);

  v94 = OUTLINED_FUNCTION_24_5();
  sub_2745C3E08(v94, v95);
  v96 = OUTLINED_FUNCTION_28_16();
  OUTLINED_FUNCTION_27_12(v96);
  v97 = v125;
  sub_27445EA84(v90, v125, &qword_280953390);
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280953400);
  *(v97 + *(v98 + 52)) = v93;
  v99 = (v97 + *(v98 + 56));
  *v99 = sub_2745C415C;
  v99[1] = v96;
  OUTLINED_FUNCTION_23();
}

uint64_t sub_2745BCAC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809533E8);
  v3 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v5 = &v27 - v4;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280953410);
  MEMORY[0x28223BE20](v30);
  v32 = &v27 - v6;
  v7 = type metadata accessor for VariableTextEditor(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809533B8);
  MEMORY[0x28223BE20](v31);
  v11 = &v27 - v10;
  if (*a1 != 3 && *a1)
  {

    sub_2745BCF7C();
    LODWORD(v29) = *(a1 + 24);
    v23 = *(a1 + 120);
    v24 = *(a1 + 112);
    v25 = v23;
    sub_2746387AC();
    v26 = v34;
    (*(v3 + 16))(v32, v5, v34);
    swift_storeEnumTagMultiPayload();
    sub_2745C3D1C();
    sub_27440CA78(&qword_2809533E0, &unk_2809533E8);
    sub_274639DDC();
    return (*(v3 + 8))(v5, v26);
  }

  else
  {

    v27 = sub_2745BCF7C();
    v28 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    v12 = *(a1 + 112);
    v13 = *(a1 + 120);
    v29 = v8;
    v14 = v12;
    v15 = v13;
    sub_2746387BC();
    KeyPath = swift_getKeyPath();
    v17 = v28;
    sub_2745C3E08(a1, v28);
    v18 = (*(v29 + 80) + 16) & ~*(v29 + 80);
    v19 = swift_allocObject();
    sub_27448E4A4(v17, v19 + v18);
    v20 = v32;
    v21 = &v11[*(v31 + 36)];
    *v21 = KeyPath;
    v21[1] = sub_2745C4248;
    v21[2] = v19;
    sub_27445EAD4(v11, v20, &qword_2809533B8);
    swift_storeEnumTagMultiPayload();
    sub_2745C3D1C();
    sub_27440CA78(&qword_2809533E0, &unk_2809533E8);
    sub_274639DDC();
    return sub_27440CB1C(v11, &qword_2809533B8);
  }
}

id sub_2745BCF7C()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E998);
  inited = swift_initStackObject();
  v4 = MEMORY[0x277D740C0];
  *(inited + 16) = xmmword_2746486A0;
  v5 = *v4;
  *(inited + 32) = *v4;
  v6 = objc_opt_self();

  v7 = v5;
  v8 = [v6 wf_placeholderTextColor];
  v9 = sub_274412734(0, qword_28094A770);
  *(inited + 40) = v8;
  v10 = *MEMORY[0x277D740A8];
  *(inited + 64) = v9;
  *(inited + 72) = v10;
  v11 = v10;
  v12 = sub_27463895C();
  *(inited + 104) = sub_274412734(0, &qword_280952AC8);
  *(inited + 80) = v12;
  type metadata accessor for Key(0);
  sub_2745C1FA0(&qword_280953420, 255, type metadata accessor for Key);
  v13 = sub_27463B4DC();
  v14 = objc_allocWithZone(MEMORY[0x277CCA898]);
  return sub_2745A9D88(v1, v2, v13);
}

uint64_t sub_2745BD114(uint64_t a1)
{
  v2 = sub_2746395EC();
  v3 = MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_27463990C();
}

uint64_t sub_2745BD1DC(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 64);
  if (v2)
  {
    if (v2 == 1)
    {
      v3 = result;
      v4 = sub_2746395EC();
      v7 = *(v4 - 8);
      (*(v7 + 8))(v3, v4);
      v5 = *MEMORY[0x277CDFA88];
      v6 = *(v7 + 104);

      return v6(v3, v5, v4);
    }

    else
    {
      type metadata accessor for WFParameterSyntaxHighlightingType(0);
      result = sub_27463C6EC();
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_2745BD2E4(void **a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_2745BAFEC(v5, a2, a3);
  }

  return result;
}

void sub_2745BD360(uint64_t a1, void *a2)
{
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (!v3)
  {
    return;
  }

  v4 = v3;
  v8 = a2;
  v9 = [v4 token];
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (v5)
  {
    v6 = [v5 variable];

    if (v6)
    {
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        sub_2745B9D2C();
      }

      return;
    }

    v7 = v8;
  }

  else
  {

    v7 = v9;
  }
}

uint64_t sub_2745BD4C8(uint64_t a1)
{
  v58 = type metadata accessor for VariableTextEditor(0);
  v55 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v56 = v2;
  v57 = &v53 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_27463918C();
  MEMORY[0x28223BE20](v3 - 8);
  v54 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_274639ABC();
  v63 = *(v5 - 8);
  v64 = v5;
  MEMORY[0x28223BE20](v5);
  v62 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for VariableTextEditorViewModel(0);
  sub_2745C1FA0(&qword_2809532A0, 255, type metadata accessor for VariableTextEditorViewModel);
  v7 = sub_27463920C();
  v8 = *(a1 + 232);
  if (*(a1 + 240) == 1)
  {
    v9 = v8;
  }

  else
  {

    sub_27463BC0C();
    v10 = sub_27463A2FC();
    v11 = v62;
    sub_274638CEC();

    sub_274639AAC();
    swift_getAtKeyPath();
    sub_27447FCE8(v8, 0);
    (*(v63 + 8))(v11, v64);
    v8 = v65;
  }

  v12 = *(v7 + 48);
  *(v7 + 48) = v8;

  v13 = sub_27463920C();
  v14 = *(a1 + 176);
  v15 = *(v13 + 40);
  *(v13 + 40) = v14;
  v16 = v14;

  v17 = sub_27463920C();
  v18 = *(a1 + 192);
  *(v17 + 16) = v18;
  v61 = v18;

  sub_27463920C();
  v19 = *(a1 + 216);
  v59 = *(a1 + 224);
  v60 = v19;
  if (v59 == 1)
  {
    v20 = swift_unknownObjectRetain();
  }

  else
  {

    sub_27463BC0C();
    v21 = sub_27463A2FC();
    sub_274638CEC();

    v22 = v62;
    sub_274639AAC();
    swift_getAtKeyPath();
    sub_274482198(v19, 0);
    (*(v63 + 8))(v22, v64);
    v20 = v65;
  }

  sub_2745B97E8(v20);

  v23 = sub_27463920C();
  *(v23 + 24) = *(a1 + 56);
  *(v23 + 32) = 0;

  v24 = sub_27463920C();
  sub_2744C6DD8();
  if (v66 == 1)
  {
    sub_27440CB1C(&v65, &qword_28094E090);
    Strong = 0;
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_27440CB1C(&v65, &qword_280950E50);
  }

  v26 = *(v24 + 64);
  *(v24 + 64) = Strong;

  v27 = sub_27463920C();
  v28 = *(a1 + 96);
  v29 = *(v27 + 72);
  *(v27 + 72) = *(a1 + 88);
  *(v27 + 80) = v28;

  sub_274406A94(v29);

  v30 = sub_27463920C();
  v31 = *(a1 + 72);
  v32 = *(a1 + 80);
  v33 = *(v30 + 88);
  *(v30 + 88) = v31;
  *(v30 + 96) = v32;
  sub_2744069F0(v31);
  sub_274406A94(v33);

  sub_27463920C();
  v34 = sub_2745B9840();

  sub_2745BEB28(v35);

  sub_27463920C();
  v36 = sub_2745B9840();

  if (v59)
  {
    swift_unknownObjectRetain();
  }

  else
  {
    v37 = v60;

    sub_27463BC0C();
    v38 = sub_27463A2FC();
    sub_274638CEC();

    v39 = v62;
    sub_274639AAC();
    swift_getAtKeyPath();
    sub_274482198(v37, 0);
    (*(v63 + 8))(v39, v64);
  }

  sub_2745BEA48();

  sub_27463920C();
  v40 = sub_2745B9840();

  sub_2745BEB90(*(a1 + 104));

  sub_27463920C();
  sub_2745B9868();

  sub_2745C0ACC(*(a1 + 64));

  sub_27463920C();
  sub_2745B9868();

  v41 = v54;
  sub_2744C68C0();
  sub_2745C0E34(v41);

  swift_allocObject();
  sub_27463920C();
  swift_weakInit();

  sub_27463891C();

  v42 = swift_allocObject();
  sub_27463920C();
  swift_weakInit();

  v43 = [objc_opt_self() systemFontOfSize:14.0 weight:*MEMORY[0x277D74420]];
  v44 = v57;
  sub_2745C3E08(a1, v57);
  v45 = (*(v55 + 80) + 32) & ~*(v55 + 80);
  v46 = swift_allocObject();
  *(v46 + 16) = v42;
  *(v46 + 24) = v43;
  sub_27448E4A4(v44, v46 + v45);

  v47 = v43;
  sub_2746388EC();

  if (v59)
  {
    v48 = swift_unknownObjectRetain();
  }

  else
  {
    v49 = v60;

    sub_27463BC0C();
    v50 = sub_27463A2FC();
    sub_274638CEC();

    v51 = v62;
    sub_274639AAC();
    swift_getAtKeyPath();
    sub_274482198(v49, 0);
    (*(v63 + 8))(v51, v64);
    v48 = v65;
  }

  v65 = v48;
  return sub_27463893C();
}

uint64_t sub_2745BDE28()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = sub_2745B9890();

    *(v1 + 24) = 1;
  }

  return result;
}

uint64_t sub_2745BDE94(void *a1)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_2745BA4A8();
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_2745BBE38();
    sub_2745BA80C();
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_2745B9868();

    sub_2745C0F04(a1);
  }

  return result;
}

uint64_t sub_2745BDF98(uint64_t *a1)
{
  v1 = *a1;
  type metadata accessor for VariableTextEditorViewModel(0);
  sub_2745C1FA0(&qword_2809532A0, 255, type metadata accessor for VariableTextEditorViewModel);
  sub_27463920C();
  sub_2745B9868();

  sub_2745C0ACC(v1);
}

uint64_t sub_2745BE060(uint64_t a1)
{
  v2 = sub_27463918C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for VariableTextEditorViewModel(0);
  sub_2745C1FA0(&qword_2809532A0, 255, type metadata accessor for VariableTextEditorViewModel);
  sub_27463920C();
  sub_2745B9868();

  (*(v3 + 16))(v5, a1, v2);
  sub_2745C0E34(v5);
}

void sub_2745BE1C0()
{
  type metadata accessor for VariableTextEditorViewModel(0);
  sub_2745C1FA0(&qword_2809532A0, 255, type metadata accessor for VariableTextEditorViewModel);
  sub_27463920C();
  v0 = sub_27463890C();
  v1 = [objc_opt_self() systemFontOfSize:14.0 weight:*MEMORY[0x277D74420]];
  sub_2745BBE38();
  sub_2745BA80C();
}

uint64_t sub_2745BE2DC()
{
  type metadata accessor for VariableTextEditorViewModel(0);
  sub_2745C1FA0(&qword_2809532A0, 255, type metadata accessor for VariableTextEditorViewModel);
  sub_27463920C();
  sub_2745BAD10();
}

void sub_2745BE380()
{
  type metadata accessor for VariableTextEditorViewModel(0);
  sub_2745C1FA0(&qword_2809532A0, 255, type metadata accessor for VariableTextEditorViewModel);
  sub_27463920C();
  v0 = sub_2745B9840();

  sub_2745BEE70();
}

uint64_t sub_2745BE440()
{
  type metadata accessor for VariableTextEditorViewModel(0);
  sub_2745C1FA0(&qword_2809532A0, 255, type metadata accessor for VariableTextEditorViewModel);
  sub_27463920C();
  sub_2745BAD10();
}

void sub_2745BE4E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *, uint64_t, uint64_t, uint64_t))
{
  sub_27445EAD4(a1, v10, &unk_28094A230);
  if (v11)
  {
    sub_274412734(0, &qword_280953970);
    if (swift_dynamicCast())
    {
      a5(v9, a2, a3, a4);
    }
  }

  else
  {
    sub_27440CB1C(v10, &unk_28094A230);
  }
}

uint64_t sub_2745BE5C8(void *a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      return OUTLINED_FUNCTION_25_1();
    }

    v4 = [a1 name];
  }

  else
  {
    v1 = sub_27463B70C();
    if (qword_2809492C0 != -1)
    {
      OUTLINED_FUNCTION_2_22();
    }

    OUTLINED_FUNCTION_62_3();
    v2 = sub_27463B66C();
    OUTLINED_FUNCTION_62_3();
    sub_27463B66C();
    OUTLINED_FUNCTION_19_8();

    v4 = OUTLINED_FUNCTION_34_9(v3, sel_localizedStringForKey_value_table_);
  }

  sub_27463B6AC();

  return OUTLINED_FUNCTION_25_1();
}

id sub_2745BE6B4(void *a1)
{
  if (!a1)
  {
    v1 = [objc_opt_self() clearBackground];
    v5 = objc_allocWithZone(MEMORY[0x277D7A158]);
    v4 = OUTLINED_FUNCTION_12_21();
    return sub_27446D8F0(v4, v3, v1);
  }

  if (a1 == 1)
  {
    v1 = [objc_opt_self() clearBackground];
    v2 = objc_allocWithZone(MEMORY[0x277D7A158]);
    v3 = 0x800000027468F320;
    v4 = 0xD000000000000017;
    return sub_27446D8F0(v4, v3, v1);
  }

  return [a1 icon];
}

void *sub_2745BE78C(void *a1)
{
  if (a1 < 2)
  {
    return 0;
  }

  v1 = a1;
  v2 = a1;
  return v1;
}

uint64_t sub_2745BE7C4(uint64_t a1, unint64_t a2)
{
  if (!a1)
  {
    return !a2;
  }

  if (a1 == 1)
  {
    return a2 == 1;
  }

  if (a2 < 2)
  {
    return 0;
  }

  sub_274412734(0, &qword_28094C5E0);
  OUTLINED_FUNCTION_62_3();
  return sub_27463BF7C() & 1;
}

uint64_t sub_2745BE848(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    v2 = 1;
    return MEMORY[0x277C58EA0](v2);
  }

  if (a2 == 1)
  {
    v2 = 2;
    return MEMORY[0x277C58EA0](v2);
  }

  MEMORY[0x277C58EA0](0);
  return sub_27463BF8C();
}

uint64_t sub_2745BE8A0(uint64_t a1)
{
  sub_27463C74C();
  if (a1)
  {
    if (a1 != 1)
    {
      MEMORY[0x277C58EA0](0);
      sub_27463BF8C();
      return sub_27463C7AC();
    }

    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  MEMORY[0x277C58EA0](v2);
  return sub_27463C7AC();
}

uint64_t sub_2745BE93C()
{
  v1 = *v0;
  sub_27463C74C();
  sub_2745BE848(v3, v1);
  return sub_27463C7AC();
}

void *sub_2745BE98C(void *a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    if (!a1)
    {
      return result;
    }

LABEL_6:
    sub_2745BEE70();
    [a1 removeVariableObserver_];
    goto LABEL_8;
  }

  v4 = result;
  result = swift_unknownObjectRelease();
  if (a1)
  {
    if (v4 == a1)
    {
      return result;
    }

    goto LABEL_6;
  }

  sub_2745BEE70();
LABEL_8:
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result addVariableObserver_];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_2745BEA48()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  sub_2745BE98C(Strong);
  swift_unknownObjectRelease();

  return swift_unknownObjectRelease();
}

uint64_t sub_2745BEAB4(uint64_t a1)
{

  sub_2744D41F8(v2, a1);
  LOBYTE(a1) = v3;

  if ((a1 & 1) == 0)
  {

    return sub_2745BEE70();
  }

  return result;
}

uint64_t sub_2745BEB28(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC14WorkflowEditor21VariableAutocompleter_allowedVariableTypes);
  *(v1 + OBJC_IVAR____TtC14WorkflowEditor21VariableAutocompleter_allowedVariableTypes) = a1;
  sub_2745BEAB4(v2);
}

uint64_t sub_2745BEB70(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC14WorkflowEditor21VariableAutocompleter_showPlusMinus) != (result & 1))
  {
    return sub_2745BEE70();
  }

  return result;
}

uint64_t sub_2745BEB90(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC14WorkflowEditor21VariableAutocompleter_showPlusMinus);
  *(v1 + OBJC_IVAR____TtC14WorkflowEditor21VariableAutocompleter_showPlusMinus) = a1;
  return sub_2745BEB70(v2);
}

uint64_t sub_2745BEBA8()
{
  if (*(v0 + OBJC_IVAR____TtC14WorkflowEditor21VariableAutocompleter_needsUpdateSuggestions) == 1)
  {
    sub_2745BEEEC();
  }

  v1 = [*(v0 + OBJC_IVAR____TtC14WorkflowEditor21VariableAutocompleter_suggester) suggestedVariables];
  sub_274412734(0, &qword_28094BD90);
  v2 = sub_27463B81C();

  v3 = *(v0 + OBJC_IVAR____TtC14WorkflowEditor21VariableAutocompleter_namedVariables);
  if (v3 >> 62)
  {

    v4 = sub_27463C57C();
  }

  else
  {
    swift_bridgeObjectRetain_n();
    sub_27463C6CC();
    v4 = v3;
  }

  sub_27445C410(v4);

  sub_27445C410(v5);
  return v2;
}

void sub_2745BECD8()
{
  if (sub_27463B72C() >= 2)
  {
    v0 = sub_2745BEBA8();
    v1 = sub_274453594(v0);
    for (i = 0; ; ++i)
    {
      if (v1 == i)
      {

        return;
      }

      if ((v0 & 0xC000000000000001) != 0)
      {
        v3 = MEMORY[0x277C58B20](i, v0);
      }

      else
      {
        if (i >= *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v3 = *(v0 + 8 * i + 32);
      }

      v4 = v3;
      if (__OFADD__(i, 1))
      {
        break;
      }

      v5 = [v3 nameIncludingPropertyName];
      sub_27463B6AC();

      sub_27463B6CC();

      sub_27463B6CC();
      LOBYTE(v5) = sub_27463B77C();

      if (v5)
      {
        sub_27463C41C();
        sub_27463C46C();
        sub_27463C47C();
        sub_27463C42C();
      }

      else
      {
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }
}

uint64_t sub_2745BEE70()
{
  type metadata accessor for VariableAutocompleter();
  OUTLINED_FUNCTION_2_33();
  sub_2745C1FA0(v1, v2, v3);
  sub_274638EFC();
  sub_274638F3C();

  *(v0 + OBJC_IVAR____TtC14WorkflowEditor21VariableAutocompleter_needsUpdateSuggestions) = 1;
  return result;
}

id sub_2745BEEEC()
{
  v1 = v0;
  v0[OBJC_IVAR____TtC14WorkflowEditor21VariableAutocompleter_needsUpdateSuggestions] = 0;
  v2 = *&v0[OBJC_IVAR____TtC14WorkflowEditor21VariableAutocompleter_allowedVariableTypes];
  v35 = MEMORY[0x277D84F90];
  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 56);
  v6 = (v3 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v7 = 0;
  if (v5)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);

      __break(1u);
      return result;
    }

    if (v8 >= v6)
    {
      break;
    }

    v5 = *(v2 + 56 + 8 * v8);
    ++v7;
    if (v5)
    {
      v7 = v8;
      do
      {
LABEL_8:
        v34 = *(*(v2 + 48) + ((v7 << 9) | (8 * __clz(__rbit64(v5)))));
        v9 = v34;
        sub_2745BF344(&v33);

        if (v33)
        {
          MEMORY[0x277C57F30]();
          v10 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x18);
          if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v10 >> 1)
          {
            OUTLINED_FUNCTION_0_8(v10);
            sub_27463B85C();
          }

          sub_27463B8AC();
        }

        v5 &= v5 - 1;
      }

      while (v5);
    }
  }

  v35 = sub_2745C39C4(v11);
  sub_2745C28B0(&v35);

  *&v0[OBJC_IVAR____TtC14WorkflowEditor21VariableAutocompleter_specialVariables] = v35;

  Strong = swift_unknownObjectWeakLoadStrong();
  v13 = MEMORY[0x277D84F90];
  v14 = &selRef_maximumDate;
  if (Strong)
  {
    v15 = [Strong availableVariableNames];
    swift_unknownObjectRelease();
    v16 = sub_27463B81C();
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  v17 = *(v16 + 16);
  if (v17)
  {
    v35 = v13;
    sub_27463C44C();
    v18 = (v16 + 40);
    do
    {
      v19 = *(v18 - 1);
      v20 = *v18;
      v21 = swift_unknownObjectWeakLoadStrong();
      objc_allocWithZone(MEMORY[0x277D7C9E8]);

      sub_2745C24C4(v19, v20, v21, 0);
      sub_27463C41C();
      sub_27463C46C();
      sub_27463C47C();
      sub_27463C42C();
      v18 += 2;
      --v17;
    }

    while (v17);

    v22 = v35;
    v14 = &selRef_maximumDate;
  }

  else
  {

    v22 = MEMORY[0x277D84F90];
  }

  *&v1[OBJC_IVAR____TtC14WorkflowEditor21VariableAutocompleter_namedVariables] = v22;

  v23 = *&v1[OBJC_IVAR____TtC14WorkflowEditor21VariableAutocompleter_suggester];
  swift_unknownObjectWeakLoadStrong();
  v24 = OUTLINED_FUNCTION_92_0();
  [v24 v25];
  swift_unknownObjectRelease();
  v26 = swift_unknownObjectWeakLoadStrong();
  if (v26)
  {
    v27 = [v26 v14[286]];
    swift_unknownObjectRelease();
    if (!v27)
    {
      sub_27463B81C();
      v27 = sub_27463B7FC();
    }
  }

  else
  {
    v27 = 0;
  }

  v28 = OUTLINED_FUNCTION_92_0();
  [v28 v29];

  v30 = swift_unknownObjectWeakLoadStrong();
  if (v30)
  {
    v31 = [v30 availableOutputActions];
    OUTLINED_FUNCTION_15_19();
    swift_unknownObjectRelease();
    if (!v1)
    {
      v1 = sub_274412734(0, &qword_28094E040);
      sub_27463B81C();
      sub_27463B7FC();
      OUTLINED_FUNCTION_15_19();
    }
  }

  else
  {
    v1 = 0;
  }

  [v23 setOutputActions_];

  return [v23 availableVariablesDidChange];
}

id sub_2745BF344@<X0>(void *a1@<X8>)
{
  v2 = sub_27463B6AC();
  v4 = v3;
  if (v2 == sub_27463B6AC() && v4 == v5)
  {

    goto LABEL_28;
  }

  v7 = sub_27463C6BC();

  if (v7)
  {
LABEL_28:
    result = [objc_allocWithZone(MEMORY[0x277D7C158]) init];
    goto LABEL_32;
  }

  v8 = sub_27463B6AC();
  v10 = v9;
  if (v8 == sub_27463B6AC() && v10 == v11)
  {

    goto LABEL_30;
  }

  v13 = sub_27463C6BC();

  if (v13)
  {
LABEL_30:
    v33 = MEMORY[0x277D7C1E0];
LABEL_31:
    v34 = objc_allocWithZone(v33);
    result = sub_2745C2730(0);
    goto LABEL_32;
  }

  v14 = sub_27463B6AC();
  v16 = v15;
  if (v14 == sub_27463B6AC() && v16 == v17)
  {

    goto LABEL_34;
  }

  v19 = sub_27463C6BC();

  if (v19)
  {
LABEL_34:
    v33 = MEMORY[0x277D7C2D8];
    goto LABEL_31;
  }

  v20 = sub_27463B6AC();
  v22 = v21;
  if (v20 == sub_27463B6AC() && v22 == v23)
  {

    goto LABEL_36;
  }

  v25 = sub_27463C6BC();

  if (v25)
  {
LABEL_36:
    Strong = swift_unknownObjectWeakLoadStrong();
    v36 = objc_allocWithZone(MEMORY[0x277D7C888]);
    result = sub_2745C2578(Strong, 0);
    goto LABEL_32;
  }

  v26 = sub_27463B6AC();
  v28 = v27;
  if (v26 == sub_27463B6AC() && v28 == v29)
  {

    goto LABEL_38;
  }

  v31 = sub_27463C6BC();

  if (v31)
  {
LABEL_38:
    v33 = MEMORY[0x277D7C350];
    goto LABEL_31;
  }

  result = 0;
LABEL_32:
  *a1 = result;
  return result;
}

id sub_2745BF698()
{
  swift_unknownObjectWeakInit();
  *&v0[OBJC_IVAR____TtC14WorkflowEditor21VariableAutocompleter_allowedVariableTypes] = MEMORY[0x277D84FA0];
  v0[OBJC_IVAR____TtC14WorkflowEditor21VariableAutocompleter_showPlusMinus] = 0;
  swift_weakInit();
  v1 = OBJC_IVAR____TtC14WorkflowEditor21VariableAutocompleter_suggester;
  *&v0[v1] = [objc_allocWithZone(MEMORY[0x277D7CA40]) init];
  v2 = MEMORY[0x277D84F90];
  *&v0[OBJC_IVAR____TtC14WorkflowEditor21VariableAutocompleter_namedVariables] = MEMORY[0x277D84F90];
  *&v0[OBJC_IVAR____TtC14WorkflowEditor21VariableAutocompleter_specialVariables] = v2;
  v0[OBJC_IVAR____TtC14WorkflowEditor21VariableAutocompleter_needsUpdateSuggestions] = 1;
  v4.receiver = v0;
  v4.super_class = type metadata accessor for VariableAutocompleter();
  return objc_msgSendSuper2(&v4, sel_init);
}

id sub_2745BF798()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VariableAutocompleter();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2745BF858@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for VariableAutocompleter();
  result = sub_274638EFC();
  *a1 = result;
  return result;
}

uint64_t sub_2745BF894@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D7D3D8];
  sub_2746389BC();
  OUTLINED_FUNCTION_7();
  v5 = *(v4 + 104);

  return v5(a1, v2, v3);
}

uint64_t sub_2745BF900(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  sub_27463B9CC();
  v3[5] = sub_27463B9BC();
  OUTLINED_FUNCTION_19_8();
  v5 = sub_27463B96C();

  return MEMORY[0x2822009F8](sub_2745BF998, v5, v4);
}

char *sub_2745BF998()
{

  sub_2745BECD8();
  v2 = v1;
  v3 = sub_274453594(v1);
  if (v3)
  {
    v4 = v3;
    v14 = MEMORY[0x277D84F90];
    result = sub_2744514B4(0, v3 & ~(v3 >> 63), 0);
    if (v4 < 0)
    {
      __break(1u);
      return result;
    }

    v6 = 0;
    v7 = v14;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x277C58B20](v6, v2);
      }

      else
      {
        v8 = *(v2 + 8 * v6 + 32);
      }

      v9 = v8;
      v11 = *(v14 + 16);
      v10 = *(v14 + 24);
      if (v11 >= v10 >> 1)
      {
        v12 = OUTLINED_FUNCTION_0_8(v10);
        sub_2744514B4(v12, v11 + 1, 1);
      }

      ++v6;
      *(v14 + 16) = v11 + 1;
      *(v14 + 8 * v11 + 32) = v9;
    }

    while (v4 != v6);
  }

  else
  {

    v7 = MEMORY[0x277D84F90];
  }

  v13 = *(v0 + 8);

  return v13(v7);
}

void sub_2745BFAFC()
{
  OUTLINED_FUNCTION_24();
  v1 = v0;
  v38[3] = v2;
  v38[4] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280953300);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v3);
  v5 = v38 - v4;
  v38[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280953308);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v6);
  v8 = v38 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280953310);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v9);
  v11 = (v38 - v10);
  v38[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280953318);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v12);
  v14 = v38 - v13;
  v15 = sub_27463872C();
  OUTLINED_FUNCTION_1();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_3_0();
  v21 = v20 - v19;
  if (v1)
  {
    if (v1 != 1)
    {
      v33 = v1;
      sub_27463871C();
      (*(v17 + 16))(v11, v21, v15);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_7_33();
      sub_2745C1FA0(v34, 255, v35);
      sub_274639DDC();
      sub_27445EAD4(v14, v8, &unk_280953318);
      swift_storeEnumTagMultiPayload();
      sub_2745C3A58();
      sub_2745C3B18();
      OUTLINED_FUNCTION_11_17();
      sub_274639DDC();
      v36 = OUTLINED_FUNCTION_62_3();
      sub_27440CB1C(v36, v37);
      (*(v17 + 8))(v21, v15);
      goto LABEL_9;
    }

    v38[7] = sub_27463AC2C();
    sub_27463B70C();
    if (qword_2809492C0 != -1)
    {
      OUTLINED_FUNCTION_2_22();
    }

    v22 = qword_28094BB00;
    OUTLINED_FUNCTION_15_2();
    v23 = sub_27463B66C();
    OUTLINED_FUNCTION_15_2();
    v24 = sub_27463B66C();

    v25 = [v22 localizedStringForKey:v23 value:v24 table:0];

    v26 = sub_27463B6AC();
    v28 = v27;

    v38[5] = v26;
    v38[6] = v28;
    sub_274412BBC();
    sub_27463A7CC();

    sub_27445EAD4(v5, v8, &qword_280953300);
    swift_storeEnumTagMultiPayload();
    sub_2745C3A58();
    sub_2745C3B18();
    OUTLINED_FUNCTION_11_17();
    sub_274639DDC();
    v29 = v5;
    v30 = &qword_280953300;
  }

  else
  {
    OUTLINED_FUNCTION_12_21();
    *v11 = sub_27463AC2C();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_7_33();
    sub_2745C1FA0(v31, 255, v32);
    OUTLINED_FUNCTION_15_19();

    sub_274639DDC();
    sub_27445EAD4(v14, v8, &unk_280953318);
    swift_storeEnumTagMultiPayload();
    sub_2745C3A58();
    sub_2745C3B18();
    OUTLINED_FUNCTION_11_17();
    sub_274639DDC();

    v29 = OUTLINED_FUNCTION_62_3();
  }

  sub_27440CB1C(v29, v30);
LABEL_9:
  OUTLINED_FUNCTION_23();
}

uint64_t sub_2745C0018()
{
  *(v1 + 16) = v0;
  sub_27463B9CC();
  *(v1 + 24) = sub_27463B9BC();
  OUTLINED_FUNCTION_19_8();
  v3 = sub_27463B96C();

  return MEMORY[0x2822009F8](sub_2745C00AC, v3, v2);
}

uint64_t sub_2745C00AC()
{
  v34 = v1;
  v2 = *(v1 + 16);

  v3 = MEMORY[0x277D84F90];
  v4 = MEMORY[0x277D84F90];
  if (*(v2 + OBJC_IVAR____TtC14WorkflowEditor21VariableAutocompleter_showPlusMinus) != 1)
  {
    goto LABEL_4;
  }

  sub_274450F00();
  v4 = v5;
  v0 = *(v5 + 16);
  v6 = *(v5 + 24);
  v7 = (v0 + 1);
  if (v0 >= v6 >> 1)
  {
    goto LABEL_28;
  }

  while (1)
  {
    *(v4 + 16) = v7;
    *(v4 + 8 * v0 + 32) = 1;
LABEL_4:

    v8 = OUTLINED_FUNCTION_15_2();
    v10 = sub_2744896FC(v8, v9);

    if (v10)
    {
      if (Strong = swift_unknownObjectWeakLoadStrong()) != 0 && (v12 = [Strong hasAvailableActionOutputVariables], swift_unknownObjectRelease(), (v12) || (, v13 = OUTLINED_FUNCTION_15_2(), v15 = sub_2744896FC(v13, v14), , (v15))
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_274450F00();
          v4 = v30;
        }

        v0 = *(v4 + 16);
        v16 = *(v4 + 24);
        if (v0 >= v16 >> 1)
        {
          OUTLINED_FUNCTION_0_8(v16);
          sub_274450F00();
          v4 = v31;
        }

        *(v4 + 16) = v0 + 1;
        *(v4 + 8 * v0 + 32) = 0;
      }
    }

    v17 = sub_2745BEBA8();
    v18 = sub_274453594(v17);
    if (!v18)
    {

      goto LABEL_24;
    }

    v19 = v18;
    v33 = v3;
    v7 = &v33;
    sub_2744514B4(0, v18 & ~(v18 >> 63), 0);
    if ((v19 & 0x8000000000000000) == 0)
    {
      break;
    }

    __break(1u);
LABEL_28:
    OUTLINED_FUNCTION_0_8(v6);
    sub_274450F00();
    v4 = v29;
  }

  v32 = v4;
  v20 = 0;
  v3 = v33;
  do
  {
    if ((v17 & 0xC000000000000001) != 0)
    {
      v21 = MEMORY[0x277C58B20](v20, v17);
    }

    else
    {
      v21 = *(v17 + 8 * v20 + 32);
    }

    v22 = v21;
    v33 = v3;
    v24 = *(v3 + 16);
    v23 = *(v3 + 24);
    if (v24 >= v23 >> 1)
    {
      v25 = OUTLINED_FUNCTION_0_8(v23);
      sub_2744514B4(v25, v24 + 1, 1);
      v3 = v33;
    }

    ++v20;
    *(v3 + 16) = v24 + 1;
    *(v3 + 8 * v24 + 32) = v22;
  }

  while (v19 != v20);

  v4 = v32;
LABEL_24:

  v33 = v4;
  sub_27445C450(v3);
  v26 = v33;
  v27 = *(v1 + 8);

  return v27(v26);
}

uint64_t sub_2745C03A0()
{
  v0 = sub_27463B70C();
  if (qword_2809492C0 != -1)
  {
    OUTLINED_FUNCTION_2_22();
  }

  OUTLINED_FUNCTION_62_3();
  v1 = sub_27463B66C();
  OUTLINED_FUNCTION_62_3();
  sub_27463B66C();
  OUTLINED_FUNCTION_19_8();

  v3 = OUTLINED_FUNCTION_34_9(v2, sel_localizedStringForKey_value_table_);

  sub_27463B6AC();
  return OUTLINED_FUNCTION_25_1();
}

uint64_t sub_2745C0458()
{
  v1 = v0;
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    sub_27463885C();
    swift_allocObject();
    type metadata accessor for VariableAutocompleter();
    OUTLINED_FUNCTION_2_33();
    sub_2745C1FA0(v3, v4, v5);
    v6 = v1;
    Strong = sub_27463886C();
    swift_weakAssign();
  }

  return Strong;
}

uint64_t sub_2745C0520(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2745C05C4;

  return sub_2745BF900(a1, a2);
}

uint64_t sub_2745C05C4(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_2745C06F4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2745C4434;

  return sub_2745C0018();
}

uint64_t sub_2745C0784(uint64_t result)
{
  if (*(v1 + 16) != result)
  {
    type metadata accessor for SyntaxHighlighter(0);
    sub_2745C1FA0(&unk_280953440, 255, type metadata accessor for SyntaxHighlighter);
    sub_274638EFC();
    sub_274638F3C();
  }

  return result;
}

void sub_2745C0824(uint64_t a1)
{
  v3 = sub_27463918C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v16 - v8;
  v10 = *(v1 + 16);
  if (v10 != a1)
  {
    if (v10 == 1)
    {
      v11 = [objc_allocWithZone(WFSyntaxHighlightingPluginManager) init];
      [v11 setSyntaxHighlightingType_];
      v12 = OBJC_IVAR____TtC14WorkflowEditorP33_F0032956713936C6E76227416DC3D09A17SyntaxHighlighter_colorScheme;
      swift_beginAccess();
      (*(v4 + 16))(v9, v1 + v12, v3);
      (*(v4 + 104))(v6, *MEMORY[0x277CDF3D0], v3);
      LOBYTE(v12) = sub_27463917C();
      v13 = *(v4 + 8);
      v13(v6, v3);
      v13(v9, v3);
      [v11 setSyntaxHighlightingAppearance_];
      v14 = *(v1 + OBJC_IVAR____TtC14WorkflowEditorP33_F0032956713936C6E76227416DC3D09A17SyntaxHighlighter_pluginManager);
      *(v1 + OBJC_IVAR____TtC14WorkflowEditorP33_F0032956713936C6E76227416DC3D09A17SyntaxHighlighter_pluginManager) = v11;

      *(v1 + OBJC_IVAR____TtC14WorkflowEditorP33_F0032956713936C6E76227416DC3D09A17SyntaxHighlighter_lineIndices) = 0;
    }

    else
    {
      v15 = *(v1 + OBJC_IVAR____TtC14WorkflowEditorP33_F0032956713936C6E76227416DC3D09A17SyntaxHighlighter_pluginManager);
      *(v1 + OBJC_IVAR____TtC14WorkflowEditorP33_F0032956713936C6E76227416DC3D09A17SyntaxHighlighter_pluginManager) = 0;

      *(v1 + OBJC_IVAR____TtC14WorkflowEditorP33_F0032956713936C6E76227416DC3D09A17SyntaxHighlighter_lineIndices) = 0;

      type metadata accessor for SyntaxHighlighter(0);
      sub_2745C1FA0(&unk_280953440, 255, type metadata accessor for SyntaxHighlighter);
      sub_274638EFC();
      sub_274638F3C();
    }
  }
}

void sub_2745C0ACC(uint64_t a1)
{
  v3 = *(v1 + 16);
  sub_2745C0784(a1);
  *(v1 + 16) = a1;

  sub_2745C0824(v3);
}

uint64_t sub_2745C0B14()
{
  v1 = sub_27463918C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC14WorkflowEditorP33_F0032956713936C6E76227416DC3D09A17SyntaxHighlighter_colorScheme;
  swift_beginAccess();
  (*(v2 + 16))(v4, v0 + v5, v1);
  v6 = sub_27463917C();
  result = (*(v2 + 8))(v4, v1);
  if ((v6 & 1) == 0)
  {
    type metadata accessor for SyntaxHighlighter(0);
    sub_2745C1FA0(&unk_280953440, 255, type metadata accessor for SyntaxHighlighter);
    sub_274638EFC();
    sub_274638F3C();
  }

  return result;
}

void sub_2745C0C8C()
{
  v1 = sub_27463918C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v13 - v6;
  v8 = *(v0 + OBJC_IVAR____TtC14WorkflowEditorP33_F0032956713936C6E76227416DC3D09A17SyntaxHighlighter_pluginManager);
  if (v8)
  {
    v9 = OBJC_IVAR____TtC14WorkflowEditorP33_F0032956713936C6E76227416DC3D09A17SyntaxHighlighter_colorScheme;
    swift_beginAccess();
    (*(v2 + 16))(v7, v0 + v9, v1);
    (*(v2 + 104))(v4, *MEMORY[0x277CDF3D0], v1);
    v10 = v8;
    v11 = sub_27463917C();
    v12 = *(v2 + 8);
    v12(v4, v1);
    v12(v7, v1);
    [v10 setSyntaxHighlightingAppearance_];
  }
}

uint64_t sub_2745C0E34(uint64_t a1)
{
  sub_2745C0B14();
  v3 = OBJC_IVAR____TtC14WorkflowEditorP33_F0032956713936C6E76227416DC3D09A17SyntaxHighlighter_colorScheme;
  swift_beginAccess();
  v4 = sub_27463918C();
  v5 = *(v4 - 8);
  (*(v5 + 24))(v1 + v3, a1, v4);
  swift_endAccess();
  sub_2745C0C8C();
  return (*(v5 + 8))(a1, v4);
}

void sub_2745C0F04(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC14WorkflowEditorP33_F0032956713936C6E76227416DC3D09A17SyntaxHighlighter_pluginManager);
  if (v2)
  {
    v10 = v2;
    sub_2745C12D4(a1);
    v4 = *(v1 + OBJC_IVAR____TtC14WorkflowEditorP33_F0032956713936C6E76227416DC3D09A17SyntaxHighlighter_lineIndices);
    if (v4)
    {
      v5 = swift_allocObject();
      *(v5 + 16) = v4;
      *(v5 + 24) = a1;
      v6 = swift_allocObject();
      *(v6 + 16) = sub_2745C42BC;
      *(v6 + 24) = v5;
      aBlock[4] = sub_2745C42C4;
      aBlock[5] = v6;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_2745C11FC;
      aBlock[3] = &block_descriptor_152;
      v7 = _Block_copy(aBlock);

      v8 = a1;

      [v10 highlightAllTokensWithCallback_];

      _Block_release(v7);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if (isEscapingClosureAtFileLocation)
      {
        __break(1u);
      }
    }

    else
    {
    }
  }
}

void sub_2745C10C4(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, id a6)
{
  if (*(a5 + 16) <= a1)
  {
    return;
  }

  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  v6 = *(a5 + 8 * a1 + 32);
  v7 = v6 + a2;
  if (__OFADD__(v6, a2))
  {
LABEL_9:
    __break(1u);
    return;
  }

  [a6 removeAttribute:*MEMORY[0x277D740C0] range:{v7, a3}];
  type metadata accessor for Key(0);
  sub_2745C1FA0(&qword_280953420, 255, type metadata accessor for Key);
  v10 = sub_27463B4BC();
  [a6 addAttributes:v10 range:{v7, a3}];
}

uint64_t sub_2745C11FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 32);
  type metadata accessor for Key(0);
  sub_2745C1FA0(&qword_280953420, 255, type metadata accessor for Key);
  v8 = sub_27463B4CC();
  v7(a2, a3, a4, v8);
}

void sub_2745C12D4(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC14WorkflowEditorP33_F0032956713936C6E76227416DC3D09A17SyntaxHighlighter_pluginManager);
  if (!v2)
  {
    return;
  }

  v4 = v2;
  v37 = [a1 string];
  if (!v37)
  {
LABEL_63:
    __break(1u);
    return;
  }

  v5 = OBJC_IVAR____TtC14WorkflowEditorP33_F0032956713936C6E76227416DC3D09A17SyntaxHighlighter_lineIndices;
  v6 = *(v1 + OBJC_IVAR____TtC14WorkflowEditorP33_F0032956713936C6E76227416DC3D09A17SyntaxHighlighter_lineIndices);
  if (v6)
  {
    v7 = *(v6 + 16);
  }

  else
  {
    v7 = 0;
  }

  v8 = sub_2745C1670(a1);
  *(v1 + v5) = v8;

  v9 = *(v8 + 2);
  v10 = [v37 length];
  if (__OFSUB__(v10, 1))
  {
    goto LABEL_59;
  }

  v36 = v9;
  v11 = v9 - v7;
  v12 = sub_2745C1954(0, v10 - 1);
  v14 = v12;
  v15 = v13;
  if (v11 < 1)
  {
    if (v11 < 0)
    {
      if (v13 < 1)
      {
        [v4 didRemoveLineAtIndex_];
        if ((v15 & 0x8000000000000000) == 0)
        {
          goto LABEL_17;
        }

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
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
        goto LABEL_61;
      }

      if (__OFADD__(v12, 1))
      {
LABEL_62:
        __break(1u);
        goto LABEL_63;
      }

      v16 = -v11;
      do
      {
        [v4 didRemoveLineAtIndex_];
        --v16;
      }

      while (v16);
    }
  }

  else
  {
    do
    {
      [v4 didAddLineAtIndex_];
      --v11;
    }

    while (v11);
  }

  if (v15 < 0)
  {
    goto LABEL_50;
  }

LABEL_17:
  if (v15)
  {
    v17 = &v8[8 * v14 + 40];
    v35 = v15;
    v18 = v15;
    v19 = v14;
    while ((v14 & 0x8000000000000000) == 0)
    {
      v20 = *(v8 + 2);
      if (v19 >= v20)
      {
        goto LABEL_52;
      }

      v21 = *(v17 - 1);
      if (v36 - 1 == v19)
      {
        v22 = [v37 length];
      }

      else
      {
        if (v19 + 1 >= v20)
        {
          goto LABEL_57;
        }

        v22 = *v17;
      }

      if (__OFSUB__(v22, v21))
      {
        goto LABEL_53;
      }

      v23 = [v37 substringWithRange_];
      if (!v23)
      {
        sub_27463B6AC();
        v23 = sub_27463B66C();
      }

      v24 = [v4 didChangeLine:v19 string:v23];

      ++v19;
      v17 += 8;
      if (!--v18)
      {
        v15 = v35;
        v25 = v36;
        goto LABEL_31;
      }
    }

    goto LABEL_51;
  }

  v24 = 0;
  v25 = v36;
LABEL_31:
  v26 = __OFADD__(v14, v15);
  v27 = v14 + v15;
  if (v26)
  {
    goto LABEL_60;
  }

  if (v25 < v27)
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v28 = &v8[8 * v27 + 40];
  v29 = v25 - 1;
  for (i = v27; v25 != i && (v24 & 1) != 0; ++i)
  {
    if (v27 < 0)
    {
      goto LABEL_54;
    }

    v31 = *(v8 + 2);
    if (i >= v31)
    {
      goto LABEL_55;
    }

    v32 = *(v28 - 1);
    if (v29 == i)
    {
      v33 = [v37 length];
    }

    else
    {
      if (i + 1 >= v31)
      {
        goto LABEL_58;
      }

      v33 = *v28;
    }

    if (__OFSUB__(v33, v32))
    {
      goto LABEL_56;
    }

    v34 = [v37 substringWithRange_];
    if (!v34)
    {
      sub_27463B6AC();
      v34 = sub_27463B66C();
      v25 = v36;
    }

    v24 = [v4 didChangeLine:i string:v34];

    v28 += 8;
  }
}

char *sub_2745C1670(void *a1)
{
  result = [a1 string];
  if (result)
  {
    v2 = result;
    if (![result length])
    {

      return MEMORY[0x277D84F90];
    }

    v3 = swift_allocObject();
    *(v3 + 16) = MEMORY[0x277D84F90];
    result = [v2 length];
    v4 = result - 1;
    if (!__OFSUB__(result, 1))
    {
      v7[4] = sub_2745C429C;
      v7[5] = v3;
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 1107296256;
      v7[2] = sub_2745C1894;
      v7[3] = &block_descriptor_37;
      v5 = _Block_copy(v7);

      [v2 enumerateSubstringsInRange:0 options:v4 usingBlock:{0, v5}];

      _Block_release(v5);
      swift_beginAccess();
      v6 = *(v3 + 16);

      return v6;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2745C17F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  swift_beginAccess();
  sub_2745C27C8(sub_274450574);
  v10 = *(*(a8 + 16) + 16);
  result = sub_2745C283C(v10, sub_274450574);
  v12 = *(a8 + 16);
  *(v12 + 16) = v10 + 1;
  *(v12 + 8 * v10 + 32) = a5;
  *(a8 + 16) = v12;
  return result;
}

uint64_t sub_2745C1894(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = *(a1 + 32);
  if (a2)
  {
    v13 = sub_27463B6AC();
    v15 = v14;
  }

  else
  {
    v13 = 0;
    v15 = 0;
  }

  v12(v13, v15, a3, a4, a5, a6, a7);
}

uint64_t sub_2745C1954(uint64_t result, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC14WorkflowEditorP33_F0032956713936C6E76227416DC3D09A17SyntaxHighlighter_lineIndices);
  if (!v3)
  {
    return 0;
  }

  v4 = *(v3 + 16);
  if (!v4 || !(result | a2))
  {
    return 0;
  }

  v5 = result + a2;
  if (__OFADD__(result, a2))
  {
    __break(1u);
    goto LABEL_37;
  }

  v6 = __OFSUB__(v5, 1);
  v7 = v5 - 1;
  if (v6)
  {
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v8 = v4 - 1;
  if (v8)
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = *(v3 + 32);
    v13 = v3 + 40;
    v14 = 1;
    v15 = 1;
    do
    {
      v16 = *(v13 + 8 * v11);
      v18 = v12 > result || v16 <= result;
      if (!v18)
      {
        v10 = v11;
      }

      v20 = v7 < v12 || v7 >= v16;
      if (!v20)
      {
        v9 = v11;
      }

      v15 &= v18;
      v14 &= v20;
      v12 = *(v13 + 8 * v11++);
    }

    while (v8 != v11);
    if (v15)
    {
      result = v8;
    }

    else
    {
      result = v10;
    }

    if (!v14)
    {
      v8 = v9;
    }
  }

  else
  {
    result = 0;
  }

  v6 = __OFSUB__(v8, result);
  v21 = v8 - result;
  if (v6)
  {
    goto LABEL_38;
  }

  if (__OFADD__(v21, 1))
  {
LABEL_39:
    __break(1u);
  }

  return result;
}

uint64_t sub_2745C1A38()
{
  v1 = OBJC_IVAR____TtC14WorkflowEditorP33_F0032956713936C6E76227416DC3D09A17SyntaxHighlighter_colorScheme;
  v2 = sub_27463918C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t sub_2745C1AB8()
{
  v0 = sub_2745C1A38();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_2745C1B14()
{
  result = sub_27463918C();
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

void sub_2745C1C18()
{
  sub_2745106C4();
  if (v0 <= 0x3F)
  {
    type metadata accessor for WFVariableResultType(319);
    if (v1 <= 0x3F)
    {
      type metadata accessor for WFParameterSyntaxHighlightingType(319);
      if (v2 <= 0x3F)
      {
        sub_2745C2124(319, &unk_28094C480, &unk_2809540F0, ">%", MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_274431930();
          if (v4 <= 0x3F)
          {
            type metadata accessor for WFTextFieldKeyboardType(319);
            if (v5 <= 0x3F)
            {
              type metadata accessor for WFTextFieldAutocapitalizationType(319);
              if (v6 <= 0x3F)
              {
                sub_2745C1F08();
                if (v7 <= 0x3F)
                {
                  sub_2745C1FE8();
                  if (v8 <= 0x3F)
                  {
                    sub_2745C2080();
                    if (v9 <= 0x3F)
                    {
                      sub_27453EAA0();
                      if (v10 <= 0x3F)
                      {
                        sub_2745C2124(319, &qword_280950080, &unk_28094D7B0, &unk_2746507D0, MEMORY[0x277CDF468]);
                        if (v11 <= 0x3F)
                        {
                          sub_2745C2124(319, &unk_2809532C8, &qword_28094AE30, &unk_27465D220, MEMORY[0x277CDF468]);
                          if (v12 <= 0x3F)
                          {
                            sub_2745BB878(319, &qword_280949EF8, 255, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
                            if (v13 <= 0x3F)
                            {
                              sub_2745C2124(319, &unk_280951050, &qword_28094E090, &unk_274651B80, MEMORY[0x277CDF468]);
                              if (v14 <= 0x3F)
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
        }
      }
    }
  }
}

void sub_2745C1F08()
{
  if (!qword_280953298)
  {
    type metadata accessor for VariableTextEditorViewModel(255);
    sub_2745C1FA0(&qword_2809532A0, 255, type metadata accessor for VariableTextEditorViewModel);
    v0 = sub_27463922C();
    if (!v1)
    {
      atomic_store(v0, &qword_280953298);
    }
  }
}

uint64_t sub_2745C1FA0(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_2745C1FE8()
{
  if (!qword_2809532A8)
  {
    type metadata accessor for WorkflowEditorOptions(255);
    sub_2745C1FA0(&qword_28094A730, 255, type metadata accessor for WorkflowEditorOptions);
    v0 = sub_27463953C();
    if (!v1)
    {
      atomic_store(v0, &qword_2809532A8);
    }
  }
}

void sub_2745C2080()
{
  if (!qword_2809532B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809532C0);
    sub_27440CA78(&unk_28094CFF0, &qword_2809532C0);
    v0 = sub_27463953C();
    if (!v1)
    {
      atomic_store(v0, &qword_2809532B8);
    }
  }
}

void sub_2745C2124(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
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

_BYTE *storeEnumTagSinglePayload for VariableTextEditor.Style(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_2745C2268()
{
  result = qword_2809532D8;
  if (!qword_2809532D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809532D8);
  }

  return result;
}

uint64_t sub_2745C22D8()
{
  *(v0 + 16) = 0;
  v1 = OBJC_IVAR____TtC14WorkflowEditorP33_F0032956713936C6E76227416DC3D09A17SyntaxHighlighter_colorScheme;
  v2 = *MEMORY[0x277CDF3D0];
  v3 = sub_27463918C();
  (*(*(v3 - 8) + 104))(v0 + v1, v2, v3);
  *(v0 + OBJC_IVAR____TtC14WorkflowEditorP33_F0032956713936C6E76227416DC3D09A17SyntaxHighlighter_pluginManager) = 0;
  *(v0 + OBJC_IVAR____TtC14WorkflowEditorP33_F0032956713936C6E76227416DC3D09A17SyntaxHighlighter_lineIndices) = 0;
  return v0;
}

uint64_t sub_2745C236C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SyntaxHighlighter(0);
  result = sub_274638EFC();
  *a1 = result;
  return result;
}

unint64_t sub_2745C2418()
{
  result = qword_2809532F0;
  if (!qword_2809532F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809532F0);
  }

  return result;
}

unint64_t sub_2745C2470()
{
  result = qword_2809532F8;
  if (!qword_2809532F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809532F8);
  }

  return result;
}

id sub_2745C24C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_27463B66C();

  if (a4)
  {
    sub_274412734(0, &unk_28094F190);
    v6 = sub_27463B7FC();
  }

  else
  {
    v6 = 0;
  }

  v7 = OUTLINED_FUNCTION_92_0();
  v9 = [v7 v8];

  swift_unknownObjectRelease();
  return v9;
}

void *sub_2745C2578(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_274412734(0, &unk_28094F190);
    v4 = sub_27463B7FC();
  }

  else
  {
    v4 = 0;
  }

  [v2 initWithVariableProvider:a1 aggrandizements:v4];
  OUTLINED_FUNCTION_19_8();
  swift_unknownObjectRelease();

  return v2;
}

double sub_2745C268C@<D0>(uint64_t a1@<X8>)
{
  sub_2745B98B8(v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v5;
  return result;
}

uint64_t sub_2745C26D4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v4[0] = *a1;
  v4[1] = v1;
  v5 = *(a1 + 32);
  sub_27445EAD4(v4, v3, &unk_280953128);
  return sub_2745B9938();
}

id sub_2745C2730(uint64_t a1)
{
  if (a1)
  {
    sub_274412734(0, &unk_28094F190);
    sub_27463B7FC();
    OUTLINED_FUNCTION_15_19();
  }

  else
  {
    v1 = 0;
  }

  v3 = [v2 initWithAggrandizements_];

  return v3;
}

uint64_t sub_2745C27C8(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result)
  {
    result = a1(result, *(v3 + 16) + 1, 1, v3);
    *v1 = result;
  }

  return result;
}

uint64_t sub_2745C283C(uint64_t result, uint64_t (*a2)(BOOL))
{
  v3 = *(*v2 + 24);
  if (result + 1 > (v3 >> 1))
  {
    result = a2(v3 > 1);
    *v2 = result;
  }

  return result;
}

uint64_t sub_2745C2884(uint64_t result)
{
  if (result + 1 > *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    return sub_27463B85C();
  }

  return result;
}

uint64_t sub_2745C28B0(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_274547E98();
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_2745C292C(v6);
  return sub_27463C42C();
}

void sub_2745C292C(uint64_t *a1)
{
  v3 = a1[1];
  v4 = sub_27463C65C();
  if (v4 < v3)
  {
    v5 = v4;
    v6 = sub_27444FC38(v3 / 2);
    v8[0] = v7;
    v8[1] = (v3 / 2);
    sub_2745C2B78(v8, v9, a1, v5);
    if (v1)
    {
      if (v3 < -1)
      {
        __break(1u);
        goto LABEL_5;
      }
    }

    else if (v3 < -1)
    {
LABEL_12:
      __break(1u);
      return;
    }

    *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;

    return;
  }

LABEL_5:
  if (v3 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v3)
  {
    sub_2745C2A0C(0, v3, 1, a1);
  }
}

uint64_t sub_2745C2A0C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v19 = *a4;
    v4 = *a4 + 8 * a3 - 8;
    v5 = result - a3;
    while (2)
    {
      v18 = a3;
      v6 = *(v19 + 8 * a3);
      v16 = v5;
      v17 = v4;
      do
      {
        v7 = *v4;
        v8 = v6;
        v9 = v7;
        v10 = [v8 name];
        sub_27463B6AC();

        v11 = [v9 name];
        sub_27463B6AC();

        sub_274412BBC();
        v12 = sub_27463C10C();

        if (v12 != -1)
        {
          break;
        }

        if (!v19)
        {
          __break(1u);
          return result;
        }

        v13 = *v4;
        v6 = *(v4 + 8);
        *v4 = v6;
        *(v4 + 8) = v13;
        v4 -= 8;
      }

      while (!__CFADD__(v5++, 1));
      a3 = v18 + 1;
      v4 = v17 + 8;
      v5 = v16 - 1;
      if (v18 + 1 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_2745C2B78(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = a3[1];
  if (v4 >= 1)
  {
    v5 = 0;
    v6 = MEMORY[0x277D84F90];
    while (1)
    {
      v7 = v5;
      v8 = v5 + 1;
      if (v5 + 1 < v4)
      {
        v97 = v6;
        v9 = v5;
        v10 = (*a3 + 8 * v5);
        v95 = 8 * v5;
        v12 = *v10;
        v11 = v10 + 2;
        v108 = *(*a3 + 8 * v8);
        v13 = v12;
        v14 = [v108 name];
        sub_27463B6AC();

        v15 = [v13 name];
        sub_27463B6AC();

        sub_274412BBC();
        v104 = sub_27463C10C();

        v16 = v9 + 2;
        v102 = v4;
        while (1)
        {
          v17 = v16;
          if (++v8 >= v4)
          {
            break;
          }

          v18 = *(v11 - 1);
          v19 = *v11;
          v20 = v18;
          v21 = [v19 name];
          sub_27463B6AC();

          v22 = [v20 name];
          sub_27463B6AC();

          v23 = sub_27463C10C();

          v4 = v102;

          ++v11;
          v16 = v17 + 1;
          if ((v104 == -1) == (v23 != -1))
          {
            goto LABEL_9;
          }
        }

        v8 = v4;
LABEL_9:
        if (v104 == -1)
        {
          v7 = v9;
          if (v8 < v9)
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
LABEL_131:
            __break(1u);
LABEL_132:
            __break(1u);
            return;
          }

          if (v9 >= v8)
          {
            v6 = v97;
          }

          else
          {
            if (v4 >= v17)
            {
              v24 = v17;
            }

            else
            {
              v24 = v4;
            }

            v25 = 8 * v24 - 8;
            v26 = v8;
            v27 = v9;
            v6 = v97;
            v28 = v95;
            do
            {
              if (v27 != --v26)
              {
                v29 = *a3;
                if (!*a3)
                {
                  goto LABEL_130;
                }

                v30 = *(v29 + v28);
                *(v29 + v28) = *(v29 + v25);
                *(v29 + v25) = v30;
              }

              ++v27;
              v25 -= 8;
              v28 += 8;
            }

            while (v27 < v26);
          }
        }

        else
        {
          v6 = v97;
          v7 = v9;
        }
      }

      v31 = a3[1];
      if (v8 < v31)
      {
        if (__OFSUB__(v8, v7))
        {
          goto LABEL_122;
        }

        if (v8 - v7 < a4)
        {
          v32 = v7 + a4;
          if (__OFADD__(v7, a4))
          {
            goto LABEL_123;
          }

          if (v32 >= v31)
          {
            v32 = a3[1];
          }

          if (v32 < v7)
          {
LABEL_124:
            __break(1u);
            goto LABEL_125;
          }

          if (v8 != v32)
          {
            v98 = v6;
            v99 = v7;
            v4 = *a3;
            v33 = *a3 + 8 * v8 - 8;
            v34 = v7 - v8;
            v101 = v32;
            do
            {
              v109 = v8;
              v35 = *(v4 + 8 * v8);
              v103 = v34;
              v105 = v33;
              do
              {
                v36 = *v33;
                v37 = v35;
                v38 = v36;
                v39 = [v37 name];
                sub_27463B6AC();

                v40 = [v38 name];
                sub_27463B6AC();

                sub_274412BBC();
                v41 = sub_27463C10C();

                if (v41 != -1)
                {
                  break;
                }

                if (!v4)
                {
                  goto LABEL_127;
                }

                v42 = *v33;
                v35 = *(v33 + 8);
                *v33 = v35;
                *(v33 + 8) = v42;
                v33 -= 8;
              }

              while (!__CFADD__(v34++, 1));
              ++v8;
              v33 = v105 + 8;
              v34 = v103 - 1;
            }

            while (v109 + 1 != v101);
            v8 = v101;
            v6 = v98;
            v7 = v99;
          }
        }
      }

      if (v8 < v7)
      {
        goto LABEL_121;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_2744503AC();
        v6 = v85;
      }

      v44 = *(v6 + 2);
      v45 = v44 + 1;
      if (v44 >= *(v6 + 3) >> 1)
      {
        sub_2744503AC();
        v6 = v86;
      }

      *(v6 + 2) = v45;
      v46 = v6 + 32;
      v47 = &v6[16 * v44 + 32];
      *v47 = v7;
      *(v47 + 1) = v8;
      v106 = *a1;
      if (!*a1)
      {
        goto LABEL_131;
      }

      v110 = v8;
      if (v44)
      {
        while (1)
        {
          v48 = v45 - 1;
          v49 = &v46[16 * v45 - 16];
          v50 = &v6[16 * v45];
          if (v45 >= 4)
          {
            break;
          }

          if (v45 == 3)
          {
            v51 = *(v6 + 4);
            v52 = *(v6 + 5);
            v61 = __OFSUB__(v52, v51);
            v53 = v52 - v51;
            v54 = v61;
LABEL_59:
            if (v54)
            {
              goto LABEL_108;
            }

            v66 = *v50;
            v65 = *(v50 + 1);
            v67 = __OFSUB__(v65, v66);
            v68 = v65 - v66;
            v69 = v67;
            if (v67)
            {
              goto LABEL_111;
            }

            v70 = *(v49 + 1);
            v71 = v70 - *v49;
            if (__OFSUB__(v70, *v49))
            {
              goto LABEL_114;
            }

            if (__OFADD__(v68, v71))
            {
              goto LABEL_116;
            }

            if (v68 + v71 >= v53)
            {
              if (v53 < v71)
              {
                v48 = v45 - 2;
              }

              goto LABEL_81;
            }

            goto LABEL_74;
          }

          if (v45 < 2)
          {
            goto LABEL_110;
          }

          v73 = *v50;
          v72 = *(v50 + 1);
          v61 = __OFSUB__(v72, v73);
          v68 = v72 - v73;
          v69 = v61;
LABEL_74:
          if (v69)
          {
            goto LABEL_113;
          }

          v75 = *v49;
          v74 = *(v49 + 1);
          v61 = __OFSUB__(v74, v75);
          v76 = v74 - v75;
          if (v61)
          {
            goto LABEL_115;
          }

          if (v76 < v68)
          {
            goto LABEL_88;
          }

LABEL_81:
          if (v48 - 1 >= v45)
          {
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
            goto LABEL_128;
          }

          v80 = v6;
          v81 = &v46[16 * v48 - 16];
          v82 = *v81;
          v83 = &v46[16 * v48];
          v84 = *(v83 + 1);
          sub_2745C3330((*a3 + 8 * *v81), (*a3 + 8 * *v83), (*a3 + 8 * v84), v106);
          if (v111)
          {
            goto LABEL_101;
          }

          if (v84 < v82)
          {
            goto LABEL_103;
          }

          v4 = *(v80 + 2);
          if (v48 > v4)
          {
            goto LABEL_104;
          }

          *v81 = v82;
          *(v81 + 1) = v84;
          if (v48 >= v4)
          {
            goto LABEL_105;
          }

          v45 = v4 - 1;
          sub_274546A38(v83 + 16, v4 - 1 - v48, &v46[16 * v48]);
          v6 = v80;
          *(v80 + 2) = v4 - 1;
          if (v4 <= 2)
          {
            goto LABEL_88;
          }
        }

        v55 = &v46[16 * v45];
        v56 = *(v55 - 8);
        v57 = *(v55 - 7);
        v61 = __OFSUB__(v57, v56);
        v58 = v57 - v56;
        if (v61)
        {
          goto LABEL_106;
        }

        v60 = *(v55 - 6);
        v59 = *(v55 - 5);
        v61 = __OFSUB__(v59, v60);
        v53 = v59 - v60;
        v54 = v61;
        if (v61)
        {
          goto LABEL_107;
        }

        v62 = *(v50 + 1);
        v63 = v62 - *v50;
        if (__OFSUB__(v62, *v50))
        {
          goto LABEL_109;
        }

        v61 = __OFADD__(v53, v63);
        v64 = v53 + v63;
        if (v61)
        {
          goto LABEL_112;
        }

        if (v64 >= v58)
        {
          v78 = *v49;
          v77 = *(v49 + 1);
          v61 = __OFSUB__(v77, v78);
          v79 = v77 - v78;
          if (v61)
          {
            goto LABEL_120;
          }

          if (v53 < v79)
          {
            v48 = v45 - 2;
          }

          goto LABEL_81;
        }

        goto LABEL_59;
      }

LABEL_88:
      v5 = v110;
      v4 = a3[1];
      if (v110 >= v4)
      {
        goto LABEL_91;
      }
    }
  }

  v6 = MEMORY[0x277D84F90];
LABEL_91:
  v4 = *a1;
  if (!*a1)
  {
    goto LABEL_132;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_125:
    v6 = sub_274546A20();
  }

  v87 = v6 + 16;
  v88 = *(v6 + 2);
  while (v88 >= 2)
  {
    if (!*a3)
    {
      goto LABEL_129;
    }

    v89 = v6;
    v90 = &v6[16 * v88];
    v91 = *v90;
    v92 = &v87[2 * v88];
    v93 = *(v92 + 1);
    sub_2745C3330((*a3 + 8 * *v90), (*a3 + 8 * *v92), (*a3 + 8 * v93), v4);
    if (v111)
    {
      break;
    }

    if (v93 < v91)
    {
      goto LABEL_117;
    }

    if (v88 - 2 >= *v87)
    {
      goto LABEL_118;
    }

    *v90 = v91;
    *(v90 + 1) = v93;
    v94 = *v87 - v88;
    if (*v87 < v88)
    {
      goto LABEL_119;
    }

    v88 = *v87 - 1;
    sub_274546A38(v92 + 16, v94, v92);
    *v87 = v88;
    v6 = v89;
  }

LABEL_101:
}

uint64_t sub_2745C3330(char *a1, char *a2, id *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 8;
  v9 = (a3 - a2) / 8;
  if (v8 < v9)
  {
    sub_274453590(a1, (a2 - a1) / 8, a4);
    v10 = &v4[v8];
    v39 = v5;
    for (i = v10; ; v10 = i)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_27;
      }

      v12 = v7;
      v13 = *v4;
      v14 = *v6;
      v15 = v13;
      v16 = [v14 name];
      v17 = v6;
      sub_27463B6AC();

      v18 = [v15 name];
      sub_27463B6AC();

      sub_274412BBC();
      v19 = sub_27463C10C();

      if (v19 != -1)
      {
        break;
      }

      v20 = v6++;
      v21 = v12;
      if (v12 != v17)
      {
        goto LABEL_9;
      }

LABEL_10:
      v7 = (v21 + 1);
      v5 = v39;
    }

    v20 = v4;
    v21 = v12;
    if (v12 == v4++)
    {
      goto LABEL_10;
    }

LABEL_9:
    *v21 = *v20;
    goto LABEL_10;
  }

  sub_274453590(a2, (a3 - a2) / 8, a4);
  v10 = &v4[v9];
  v35 = v7;
  v36 = v4;
LABEL_14:
  v23 = v6 - 1;
  --v5;
  v40 = v6;
  for (j = v6 - 1; v10 > v4 && v6 > v7; v23 = j)
  {
    v25 = *v23;
    v26 = *(v10 - 1);
    v27 = v25;
    v28 = [v26 name];
    sub_27463B6AC();

    v29 = [v27 name];
    sub_27463B6AC();

    sub_274412BBC();
    v30 = sub_27463C10C();

    v31 = v5 + 1;
    if (v30 == -1)
    {
      v4 = v36;
      v6 = j;
      v7 = v35;
      if (v31 != v40)
      {
        *v5 = *j;
        v6 = j;
      }

      goto LABEL_14;
    }

    if (v10 != v31)
    {
      *v5 = *(v10 - 1);
    }

    --v5;
    --v10;
    v6 = v40;
    v7 = v35;
    v4 = v36;
  }

LABEL_27:
  v32 = v10 - v4;
  if (v6 != v4 || v6 >= &v4[v32])
  {
    memmove(v6, v4, 8 * v32);
  }

  return 1;
}

uint64_t sub_2745C3664(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = *(*v2 + 16);
  if (v4 < a2)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v5 = result;
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = result - a2;
  if (__OFSUB__(0, v6))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = v4 - v6;
  if (__OFADD__(v4, v7))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_2745459E0(result, 1);
  v8 = *v2;
  v9 = *v2 + 32;
  v10 = v9 + 16 * v5;
  OUTLINED_FUNCTION_24_5();
  result = swift_arrayDestroy();
  if (!v6)
  {
LABEL_10:
    *v2 = v8;
    return result;
  }

  v11 = *(v8 + 16);
  if (__OFSUB__(v11, a2))
  {
    goto LABEL_16;
  }

  result = sub_2744510A0(v9 + 16 * a2, v11 - a2, v10);
  v12 = *(v8 + 16);
  v13 = __OFADD__(v12, v7);
  v14 = v12 - v6;
  if (!v13)
  {
    *(v8 + 16) = v14;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
  return result;
}

void sub_2745C373C(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v5 = *v2;
  if (sub_274453594(*v2) < a2)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v6 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v7 = 1 - v6;
  if (__OFSUB__(1, v6))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v8 = sub_274453594(v5);
  v9 = __OFADD__(v8, v7);
  v10 = v8 + v7;
  if (v9)
  {
LABEL_13:
    __break(1u);
    return;
  }

  sub_274547EA4(v10, 1);
  OUTLINED_FUNCTION_42_4();

  sub_274546D40();
}

uint64_t sub_2745C37E8(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v4 = result;
  v5 = *v2;
  result = sub_274453594(*v2);
  if (result < a2)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (__OFSUB__(a2, v4))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v6 = v4 - a2;
  if (__OFSUB__(0, a2 - v4))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v7 = sub_274453594(v5);
  v8 = __OFADD__(v7, v6);
  result = v7 + v6;
  if (v8)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  sub_274547EA4(result, 1);

  return sub_274547244(v4, a2, 0);
}

uint64_t sub_2745C388C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v6 = *(*v4 + 16);
  if (v6 < a2)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v7 = result;
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = __OFSUB__(1, v8);
  v10 = 1 - v8;
  if (v9)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  result = v6 + v10;
  if (__OFADD__(v6, v10))
  {
LABEL_13:
    __break(1u);
    return result;
  }

  sub_274545A70(result, 1);

  return sub_27454732C(v7, a2, 1, a3, a4);
}

uint64_t sub_2745C3938(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_27463B66C();

  v5 = [a3 negateText_];

  if (!v5)
  {
    return 0;
  }

  v6 = sub_27463B6AC();

  return v6;
}

unint64_t sub_2745C3A58()
{
  result = qword_280953328;
  if (!qword_280953328)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_280953318);
    sub_2745C1FA0(&qword_280953330, 255, MEMORY[0x277D7D308]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280953328);
  }

  return result;
}

unint64_t sub_2745C3B18()
{
  result = qword_280953338;
  if (!qword_280953338)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280953300);
    sub_2745C1FA0(&qword_28094A6C0, 255, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280953338);
  }

  return result;
}

unint64_t sub_2745C3BE0()
{
  result = qword_280953398;
  if (!qword_280953398)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280953348);
    sub_2745C3C64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280953398);
  }

  return result;
}

unint64_t sub_2745C3C64()
{
  result = qword_2809533A0;
  if (!qword_2809533A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809533A8);
    sub_2745C3D1C();
    sub_27440CA78(&qword_2809533E0, &unk_2809533E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809533A0);
  }

  return result;
}

unint64_t sub_2745C3D1C()
{
  result = qword_2809533B0;
  if (!qword_2809533B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809533B8);
    sub_27440CA78(&qword_2809533C0, &qword_2809533C8);
    sub_27440CA78(&qword_2809533D0, &qword_2809533D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809533B0);
  }

  return result;
}

uint64_t sub_2745C3E08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VariableTextEditor(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_106Tm()
{
  type metadata accessor for VariableTextEditor(0);
  OUTLINED_FUNCTION_3_14();
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  if (*(v4 + 72))
  {
  }

  sub_2743F459C();

  OUTLINED_FUNCTION_20_17();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D000);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_27463918C();
    OUTLINED_FUNCTION_7();
    (*(v5 + 8))(v4 + v2);
  }

  else
  {
  }

  v6 = v4 + *(v0 + 112);
  if (*(v6 + 9))
  {
    if ((*(v6 + 8) & 1) == 0)
    {
      MEMORY[0x277C5A3A0]();
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_2745C4050(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  OUTLINED_FUNCTION_8_25();
  v2 = OUTLINED_FUNCTION_9_23();

  return a2(v2);
}

uint64_t sub_2745C40D0(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for VariableTextEditor(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_2745C4174(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  OUTLINED_FUNCTION_8_25();
  v2 = OUTLINED_FUNCTION_9_23();

  return a2(v2);
}

uint64_t sub_2745C41E4()
{
  OUTLINED_FUNCTION_8_25();

  return sub_2745BDE94(v0);
}

uint64_t sub_2745C4248()
{
  OUTLINED_FUNCTION_8_25();
  v0 = OUTLINED_FUNCTION_9_23();

  return sub_2745BD1DC(v0, v1);
}

uint64_t block_copy_helper_37(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t get_enum_tag_for_layout_string_14WorkflowEditor26VariableAutocompleteResultO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_2745C43A0()
{
  result = qword_280953488;
  if (!qword_280953488)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280953490);
    sub_2745C3A58();
    sub_2745C3B18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280953488);
  }

  return result;
}

void OUTLINED_FUNCTION_20_17()
{
  sub_2743F45E8(*(v0 + 200), *(v0 + 208));
  sub_274482198(*(v0 + 216), *(v0 + 224));
  sub_27447FCE8(*(v0 + 232), *(v0 + 240));
}

uint64_t OUTLINED_FUNCTION_27_12(uint64_t a1)
{

  return sub_27448E4A4(v1, a1 + v2);
}

uint64_t OUTLINED_FUNCTION_28_16()
{

  return swift_allocObject();
}

id OUTLINED_FUNCTION_34_9(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

__n128 sub_2745C45AC@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, __int128 a9, __n128 a10, uint64_t a11, uint64_t a12, char a13, char a14, uint64_t a15, uint64_t a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  v28 = swift_allocObject();
  v29 = *(a19 + 88);
  v28[2] = *(a19 + 80);
  v28[3] = a19;
  v28[4] = a20;
  v28[5] = a21;
  v28[6] = a22;
  v28[7] = a23;
  v28[8] = v29;
  v28[9] = a24;
  v28[10] = a25;
  v28[11] = a26;
  v28[12] = a27;
  *(a8 + 152) = sub_2745C5C64();
  *(a8 + 160) = v30;
  *(a8 + 168) = v31 & 1;
  *(a8 + 176) = swift_getKeyPath();
  *(a8 + 216) = 0;
  *a8 = a1;
  *(a8 + 8) = sub_2745C4938();
  *(a8 + 16) = v32;
  *(a8 + 24) = a2;
  *(a8 + 32) = a3;
  *(a8 + 40) = a4;
  *(a8 + 48) = a5;
  *(a8 + 56) = a6;
  *(a8 + 64) = a7;
  result = a10;
  *(a8 + 72) = a9;
  *(a8 + 88) = a10;
  *(a8 + 104) = a11;
  *(a8 + 112) = a12;
  *(a8 + 120) = a13;
  *(a8 + 121) = a14;
  *(a8 + 145) = a18;
  *(a8 + 128) = a15;
  *(a8 + 136) = a16;
  *(a8 + 144) = a17 & 1;
  return result;
}

uint64_t sub_2745C4778()
{
  OUTLINED_FUNCTION_57();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = OUTLINED_FUNCTION_10_31((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7(v6, v1, v0);
  sub_274638F6C();
  return (*(v3 + 8))(v1, v0);
}

uint64_t sub_2745C486C()
{
  type metadata accessor for ListParameterLayoutView.PresentedAuxiliaryValueEditor();
  sub_27463C0AC();
  result = sub_274638FCC();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}