uint64_t sub_21C6A31F0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21C6A3054();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t type metadata accessor for ChildPaneSettingView()
{
  result = qword_27CDE6C80;
  if (!qword_27CDE6C80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21C6A328C()
{
  sub_21C6A3360(319, &qword_27CDE6C90, MEMORY[0x277CDE530]);
  if (v0 <= 0x3F)
  {
    sub_21C6A3360(319, &qword_27CDE6C98, sub_21C6A33B4);
    if (v1 <= 0x3F)
    {
      type metadata accessor for ChildPaneSetting();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_21C6A3360(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_21C6CE290();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_21C6A33B4()
{
  result = qword_27CDE6CA0;
  if (!qword_27CDE6CA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CDE6CA0);
  }

  return result;
}

uint64_t sub_21C6A341C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6CE8, &qword_21C6D0D68);
  v3 = *(*(v38 - 8) + 64);
  MEMORY[0x28223BE20](v38);
  v5 = v37 - v4;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6CE0, &qword_21C6D0D60);
  v39 = *(v42 - 8);
  v6 = *(v39 + 64);
  MEMORY[0x28223BE20](v42);
  v8 = v37 - v7;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6CF0, &qword_21C6D0D70);
  v9 = *(*(v40 - 8) + 64);
  MEMORY[0x28223BE20](v40);
  v11 = v37 - v10;
  v12 = type metadata accessor for ChildPaneSettingView();
  v13 = v12 - 8;
  v14 = *(v12 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6CD0, &qword_21C6D0D58);
  v16 = *(v41 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v41);
  v19 = v37 - v18;
  v20 = a1 + *(v13 + 32);
  v21 = type metadata accessor for ChildPaneSetting();
  if (*(v20 + *(v21 + 28)) == 1)
  {
    sub_21C6A4AB0(a1, v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
    v22 = (*(v14 + 80) + 16) & ~*(v14 + 80);
    v23 = swift_allocObject();
    v24 = sub_21C6A4B20(v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v22);
    MEMORY[0x28223BE20](v24);
    v37[-2] = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6D20, &qword_21C6D0DA0);
    sub_21C6A4BEC();
    sub_21C6CE990();
    v25 = v41;
    (*(v16 + 16))(v11, v19, v41);
    swift_storeEnumTagMultiPayload();
    sub_21C694224(&qword_27CDE6CC8, &qword_27CDE6CD0, &qword_21C6D0D58);
    sub_21C694224(&qword_27CDE6CD8, &qword_27CDE6CE0, &qword_21C6D0D60);
    sub_21C6CE5C0();
    return (*(v16 + 8))(v19, v25);
  }

  else
  {
    v37[1] = v37;
    MEMORY[0x28223BE20](v21);
    v37[-2] = a1;
    sub_21C6A3EC4(a1, v5);
    v37[0] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDE6CF8, &qword_21C6D0D78);
    v27 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDE6D00, &qword_21C6D0D80);
    v28 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDE6D08, &qword_21C6D0D88);
    v29 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDE6D10, &unk_21C6D0D90);
    v30 = sub_21C6CE3E0();
    v31 = sub_21C694224(&qword_27CDE6D18, &qword_27CDE6D10, &unk_21C6D0D90);
    v44 = v29;
    v45 = v30;
    v46 = v31;
    v47 = MEMORY[0x277CDDA78];
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v44 = v28;
    v45 = OpaqueTypeConformance2;
    v33 = swift_getOpaqueTypeConformance2();
    v44 = v27;
    v45 = v33;
    v34 = swift_getOpaqueTypeConformance2();
    v44 = v37[0];
    v45 = v34;
    swift_getOpaqueTypeConformance2();
    sub_21C6CE360();
    v35 = v39;
    v36 = v42;
    (*(v39 + 16))(v11, v8, v42);
    swift_storeEnumTagMultiPayload();
    sub_21C694224(&qword_27CDE6CC8, &qword_27CDE6CD0, &qword_21C6D0D58);
    sub_21C694224(&qword_27CDE6CD8, &qword_27CDE6CE0, &qword_21C6D0D60);
    sub_21C6CE5C0();
    return (*(v35 + 8))(v8, v36);
  }
}

void sub_21C6A3AAC(uint64_t a1)
{
  v2 = sub_21C6CE6B0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27CDE67C0 != -1)
  {
    swift_once();
  }

  v7 = qword_27CDE9D08;
  v8 = type metadata accessor for ChildPaneSettingView();
  v9 = type metadata accessor for ChildPaneSetting();
  if (*(v7 + 16))
  {
    v10 = (a1 + *(v8 + 24) + *(v9 + 32));
    v11 = sub_21C6C70F8(*v10, v10[1]);
    if (v12)
    {
      v13 = (*(v7 + 56) + 16 * v11);
      v14 = *v13;
      v15 = v13[1];

      v16 = sub_21C6CEB90();

      v17 = [objc_opt_self() presenterForPrivacySplashWithIdentifier_];

      if (v17)
      {
        v18 = sub_21C694440(v6);
        MEMORY[0x28223BE20](v18);
        *(&v19 - 2) = v17;
        sub_21C6CE6A0();

        (*(v3 + 8))(v6, v2);
      }
    }
  }
}

uint64_t sub_21C6A3C94()
{
  sub_21C6CE5F0();
  sub_21C6A4EDC(&qword_27CDE6D30, MEMORY[0x277CDE078]);
  return sub_21C6CE350();
}

uint64_t sub_21C6A3D54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21C6CDF20();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1 + *(type metadata accessor for ChildPaneSettingView() + 24);
  v10 = type metadata accessor for ChildPaneSetting();
  (*(v5 + 16))(v8, v9 + *(v10 + 20), v4);
  v11 = sub_21C6CE750();
  v13 = v12;
  LOBYTE(v8) = v14;
  sub_21C6CE8C0();
  v15 = sub_21C6CE710();
  v17 = v16;
  v19 = v18;
  v21 = v20;

  sub_21C692AD8(v11, v13, v8 & 1);

  *a2 = v15;
  *(a2 + 8) = v17;
  *(a2 + 16) = v19 & 1;
  *(a2 + 24) = v21;
  return result;
}

uint64_t sub_21C6A3EC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a2;
  v3 = sub_21C6CE500();
  v59 = *(v3 - 8);
  v60 = v3;
  v4 = *(v59 + 64);
  MEMORY[0x28223BE20](v3);
  v58 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_21C6CDF20();
  v53 = *(v57 - 8);
  v6 = *(v53 + 64);
  MEMORY[0x28223BE20](v57);
  v51 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21C6CE3E0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6D10, &unk_21C6D0D90);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v48 - v16;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6D08, &qword_21C6D0D88);
  v50 = *(v49 - 8);
  v18 = *(v50 + 64);
  MEMORY[0x28223BE20](v49);
  v20 = &v48 - v19;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6D00, &qword_21C6D0D80);
  v54 = *(v52 - 8);
  v21 = *(v54 + 64);
  MEMORY[0x28223BE20](v52);
  v23 = &v48 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6CF8, &qword_21C6D0D78);
  v25 = *(v24 - 8);
  v55 = v24;
  v56 = v25;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  v48 = &v48 - v27;
  v62 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6D38, &qword_21C6D0DA8);
  sub_21C6A4D08();
  sub_21C6CE700();
  sub_21C6CE3D0();
  v28 = sub_21C694224(&qword_27CDE6D18, &qword_27CDE6D10, &unk_21C6D0D90);
  sub_21C6CE890();
  v29 = *(v9 + 8);
  v30 = v8;
  v29(v12, v8);
  (*(v14 + 8))(v17, v13);
  v31 = a1 + *(type metadata accessor for ChildPaneSettingView() + 24);
  v32 = type metadata accessor for ChildPaneSetting();
  (*(v53 + 16))(v51, v31 + *(v32 + 20), v57);
  v33 = sub_21C6CE750();
  v35 = v34;
  LOBYTE(v8) = v36;
  v63 = v13;
  v64 = v30;
  v65 = v28;
  v66 = MEMORY[0x277CDDA78];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v38 = v49;
  sub_21C6CE810();
  sub_21C692AD8(v33, v35, v8 & 1);

  v39 = v38;
  (*(v50 + 8))(v20, v38);
  v40 = v58;
  v41 = v59;
  v42 = v60;
  (*(v59 + 104))(v58, *MEMORY[0x277CDDDC0], v60);
  v63 = v39;
  v64 = OpaqueTypeConformance2;
  v43 = swift_getOpaqueTypeConformance2();
  v44 = v48;
  v45 = v52;
  sub_21C6CE850();
  (*(v41 + 8))(v40, v42);
  (*(v54 + 8))(v23, v45);
  v63 = v45;
  v64 = v43;
  swift_getOpaqueTypeConformance2();
  v46 = v55;
  sub_21C6CE770();
  return (*(v56 + 8))(v44, v46);
}

uint64_t sub_21C6A4564@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_21C6CE4B0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ChildPaneSettingView();
  v10 = a1 + *(v9 + 24);
  v11 = type metadata accessor for ChildPaneSetting();
  v12 = (v10 + *(v11 + 32));
  v14 = *v12;
  v13 = v12[1];
  v15 = (v10 + *(v11 + 24));
  v17 = *v15;
  v16 = v15[1];
  v18 = a1 + *(v9 + 20);
  v19 = *v18;
  if (*(v18 + 8) == 1)
  {
    v26 = *v18;

    sub_21C6A4E14(v19, 1);
  }

  else
  {

    sub_21C6A4E14(v19, 0);
    sub_21C6CECF0();
    v20 = sub_21C6CE6C0();
    v25 = v4;
    v21 = v17;
    v22 = v14;
    v23 = v20;
    sub_21C6CE170();

    v14 = v22;
    v17 = v21;
    sub_21C6CE4A0();
    swift_getAtKeyPath();
    sub_21C6A4B14(v19, 0);
    (*(v5 + 8))(v8, v25);
    v19 = v26;
  }

  result = swift_getKeyPath();
  *a2 = v14;
  a2[1] = v13;
  a2[2] = v17;
  a2[3] = v16;
  a2[4] = 0;
  a2[5] = 0;
  a2[6] = result;
  a2[7] = v19;
  return result;
}

uint64_t sub_21C6A4764@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21C6CDF20();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1 + *(type metadata accessor for ChildPaneSettingView() + 24);
  v10 = type metadata accessor for ChildPaneSetting();
  (*(v5 + 16))(v8, v9 + *(v10 + 20), v4);
  result = sub_21C6CE750();
  *a2 = result;
  *(a2 + 8) = v12;
  *(a2 + 16) = v13 & 1;
  *(a2 + 24) = v14;
  return result;
}

uint64_t sub_21C6A4864(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6CA8, &qword_21C6D0D48);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - v5;
  sub_21C6A341C(v1, &v9 - v5);
  v7 = v1 + *(a1 + 24);
  sub_21C6A3054();
  sub_21C6A4940();
  sub_21C6CE7F0();

  return sub_21C687E70(v6);
}

unint64_t sub_21C6A4940()
{
  result = qword_27CDE6CB0;
  if (!qword_27CDE6CB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDE6CA8, &qword_21C6D0D48);
    sub_21C6A49C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDE6CB0);
  }

  return result;
}

unint64_t sub_21C6A49C4()
{
  result = qword_27CDE6CB8;
  if (!qword_27CDE6CB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDE6CC0, &qword_21C6D0D50);
    sub_21C694224(&qword_27CDE6CC8, &qword_27CDE6CD0, &qword_21C6D0D58);
    sub_21C694224(&qword_27CDE6CD8, &qword_27CDE6CE0, &qword_21C6D0D60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDE6CB8);
  }

  return result;
}

uint64_t sub_21C6A4AB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ChildPaneSettingView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_21C6A4B14(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_21C6A4B20(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ChildPaneSettingView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_21C6A4B84()
{
  v1 = *(type metadata accessor for ChildPaneSettingView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  sub_21C6A3AAC(v2);
}

unint64_t sub_21C6A4BEC()
{
  result = qword_27CDE6D28;
  if (!qword_27CDE6D28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDE6D20, &qword_21C6D0DA0);
    sub_21C6A4EDC(&qword_27CDE6D30, MEMORY[0x277CDE078]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDE6D28);
  }

  return result;
}

id sub_21C6A4CB0(uint64_t a1)
{
  v2 = *(v1 + 16);
  [v2 setPresentingViewController_];

  return [v2 present];
}

unint64_t sub_21C6A4D08()
{
  result = qword_27CDE6D40;
  if (!qword_27CDE6D40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDE6D38, &qword_21C6D0DA8);
    sub_21C6A4DC0();
    sub_21C694224(&qword_27CDE6D50, &qword_27CDE6D58, &qword_21C6D0DB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDE6D40);
  }

  return result;
}

unint64_t sub_21C6A4DC0()
{
  result = qword_27CDE6D48;
  if (!qword_27CDE6D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDE6D48);
  }

  return result;
}

id sub_21C6A4E14(id a1, char a2)
{
  if (a2)
  {
    return a1;
  }

  else
  {
  }
}

unint64_t sub_21C6A4E20()
{
  result = qword_27CDE6D60;
  if (!qword_27CDE6D60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDE6D68, &unk_21C6D0DE0);
    sub_21C6A4940();
    sub_21C6A4EDC(&qword_27CDE6D70, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDE6D60);
  }

  return result;
}

uint64_t sub_21C6A4EDC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for MultiValueSetting()
{
  result = qword_27CDE6D78;
  if (!qword_27CDE6D78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21C6A4F98()
{
  sub_21C6CDF20();
  if (v0 <= 0x3F)
  {
    type metadata accessor for PropertyListValue();
    if (v1 <= 0x3F)
    {
      sub_21C6A50C4();
      if (v2 <= 0x3F)
      {
        sub_21C6A2ED4(319, &qword_27CDE6C68, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_21C6A2ED4(319, &qword_27CDE6C70, MEMORY[0x277D83940]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_21C6A50C4()
{
  if (!qword_27CDE6D88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDE6D90, &qword_21C6D25A0);
    v0 = sub_21C6CED30();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDE6D88);
    }
  }
}

uint64_t sub_21C6A5128()
{
  v1 = *(v0 + *(type metadata accessor for MultiValueSetting() + 48));
  if (!*(v1 + 16))
  {
    return 1;
  }

  v2 = [objc_opt_self() currentDevice];
  v3 = [v2 userInterfaceIdiom];

  if (v3)
  {
    v4 = 6578512;
  }

  else
  {
    v4 = 0x656E6F6850;
  }

  if (v3)
  {
    v5 = 0xE300000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  v6 = (v1 + 40);
  v7 = *(v1 + 16) + 1;
  do
  {
    v8 = --v7 != 0;
    if (!v7)
    {
      break;
    }

    if (*(v6 - 1) == v4 && *v6 == v5)
    {
      break;
    }

    v6 += 2;
  }

  while ((sub_21C6CEE20() & 1) == 0);

  return v8;
}

uint64_t sub_21C6A5220@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _BYTE *a9@<X8>)
{
  v196 = a8;
  v176 = a7;
  v195 = a6;
  v175 = a5;
  v199 = a4;
  v197 = a3;
  v192[2] = a2;
  v184 = type metadata accessor for LocalizedSettingValue();
  v183 = *(v184 - 8);
  v11 = *(v183 + 64);
  MEMORY[0x28223BE20](v184);
  v186 = (&v150 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v185 = (&v150 - v14);
  MEMORY[0x28223BE20](v15);
  v17 = &v150 - v16;
  MEMORY[0x28223BE20](v18);
  v179 = (&v150 - v19);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6D98, &qword_21C6D0E48);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v178 = &v150 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6DA0, &unk_21C6D0E50);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v182 = (&v150 - v25);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6DA8, &unk_21C6D1A90);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26 - 8);
  v29 = &v150 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v32 = &v150 - v31;
  v33 = type metadata accessor for PropertyListValue();
  v190 = *(v33 - 8);
  v34 = *(v190 + 64);
  MEMORY[0x28223BE20](v33);
  v174 = &v150 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v187 = &v150 - v37;
  MEMORY[0x28223BE20](v38);
  v180 = (&v150 - v39);
  MEMORY[0x28223BE20](v40);
  v42 = (&v150 - v41);
  MEMORY[0x28223BE20](v43);
  v188 = &v150 - v44;
  MEMORY[0x28223BE20](v45);
  v189 = &v150 - v46;
  v47 = sub_21C6CE010();
  v48 = *(*(v47 - 8) + 64);
  MEMORY[0x28223BE20](v47 - 8);
  v192[1] = &v150 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v198 = sub_21C6CDF00();
  v50 = *(v198 - 8);
  v51 = *(v50 + 64);
  MEMORY[0x28223BE20](v198);
  v192[0] = &v150 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_21C6CEB80();
  v54 = *(*(v53 - 8) + 64);
  MEMORY[0x28223BE20](v53 - 8);
  v56 = &v150 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v193 = sub_21C6CDF20();
  v191 = *(v193 - 8);
  v57 = *(v191 + 64);
  MEMORY[0x28223BE20](v193);
  v173 = &v150 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v59);
  v61 = &v150 - v60;
  MEMORY[0x28223BE20](v62);
  v177 = &v150 - v63;
  MEMORY[0x28223BE20](v64);
  v181 = &v150 - v65;
  MEMORY[0x28223BE20](v66);
  v194 = &v150 - v67;
  if (!*(a1 + 16) || (v68 = sub_21C6C70F8(0x656C746954, 0xE500000000000000), (v69 & 1) == 0))
  {

    (*(v50 + 8))(v199, v198);
LABEL_18:
    v80 = type metadata accessor for MultiValueSetting();
    return (*(*(v80 - 8) + 56))(a9, 1, 1, v80);
  }

  sub_21C6A2734(*(a1 + 56) + 32 * v68, &v203);
  if ((swift_dynamicCast() & 1) == 0)
  {
    (*(v50 + 8))(v199, v198);

    goto LABEL_18;
  }

  v172 = a9;
  v70 = HIBYTE(*(&v202 + 1)) & 0xFLL;
  if ((*(&v202 + 1) & 0x2000000000000000) == 0)
  {
    v70 = v202 & 0xFFFFFFFFFFFFLL;
  }

  if (!v70)
  {
    (*(v50 + 8))(v199, v198);

    goto LABEL_23;
  }

  v167 = v17;
  sub_21C6CEB70();
  v171 = v50;
  v71 = *(v50 + 16);
  v169 = v50 + 16;
  v168 = v71;
  v71(v192[0], v199, v198);

  sub_21C6CE000();
  v170 = v56;
  sub_21C6CDF30();
  if (!*(a1 + 16) || (v72 = sub_21C6C70F8(7955787, 0xE300000000000000), (v73 & 1) == 0) || (sub_21C6A2734(*(a1 + 56) + 32 * v72, &v203), (swift_dynamicCast() & 1) == 0))
  {

    (*(v171 + 8))(v199, v198);
LABEL_21:
    (*(v191 + 8))(v194, v193);
    goto LABEL_23;
  }

  v74 = v202;
  v75 = HIBYTE(*(&v202 + 1)) & 0xFLL;
  if ((*(&v202 + 1) & 0x2000000000000000) == 0)
  {
    v75 = v202 & 0xFFFFFFFFFFFFLL;
  }

  v76 = v171;
  if (!v75 || (v166 = v202, !*(a1 + 16)) || (v77 = sub_21C6C70F8(0x56746C7561666544, 0xEC00000065756C61), (v78 & 1) == 0))
  {

    (*(v76 + 8))(v199, v198);
    goto LABEL_21;
  }

  sub_21C6A2734(*(a1 + 56) + 32 * v77, &v202);
  sub_21C6A6FC0(&v202, &v203);
  sub_21C6A2734(&v203, &v202);
  sub_21C6C50F8(&v202, v32);
  v79 = *(v190 + 48);
  if (v79(v32, 1, v33) == 1)
  {

    (*(v76 + 8))(v199, v198);
    __swift_destroy_boxed_opaque_existential_1(&v203);
    (*(v191 + 8))(v194, v193);
    sub_21C6A6FD0(v32);
LABEL_23:
    a9 = v172;
    goto LABEL_18;
  }

  v82 = v32;
  v83 = v189;
  sub_21C6A7100(v82, v189, type metadata accessor for PropertyListValue);
  if (!*(a1 + 16) || (v84 = sub_21C6C70F8(0x7365756C6156, 0xE600000000000000), (v85 & 1) == 0))
  {

    (*(v76 + 8))(v199, v198);
    v86 = v83;
LABEL_31:
    sub_21C6A70A0(v86, type metadata accessor for PropertyListValue);
    __swift_destroy_boxed_opaque_existential_1(&v203);
    goto LABEL_21;
  }

  sub_21C6A2734(*(a1 + 56) + 32 * v84, &v201);
  sub_21C6A6FC0(&v201, &v202);
  sub_21C6A2734(&v202, &v201);
  sub_21C6C50F8(&v201, v29);
  if (v79(v29, 1, v33) == 1)
  {

    (*(v76 + 8))(v199, v198);
    __swift_destroy_boxed_opaque_existential_1(&v202);
    sub_21C6A70A0(v83, type metadata accessor for PropertyListValue);
    __swift_destroy_boxed_opaque_existential_1(&v203);
    (*(v191 + 8))(v194, v193);
    sub_21C6A6FD0(v29);
    goto LABEL_23;
  }

  v87 = v29;
  v88 = v188;
  sub_21C6A7100(v87, v188, type metadata accessor for PropertyListValue);
  sub_21C6A7038(v88, v42, type metadata accessor for PropertyListValue);
  if (swift_getEnumCaseMultiPayload() != 6)
  {

    (*(v76 + 8))(v199, v198);
    sub_21C6A70A0(v88, type metadata accessor for PropertyListValue);
    __swift_destroy_boxed_opaque_existential_1(&v202);
    sub_21C6A70A0(v189, type metadata accessor for PropertyListValue);
    __swift_destroy_boxed_opaque_existential_1(&v203);
    (*(v191 + 8))(v194, v193);
    sub_21C6A70A0(v42, type metadata accessor for PropertyListValue);
    goto LABEL_23;
  }

  v89 = *v42;
  if (!*(a1 + 16) || (v90 = sub_21C6C70F8(0x73656C746954, 0xE600000000000000), (v91 & 1) == 0))
  {

    (*(v76 + 8))(v199, v198);
    v93 = v88;
LABEL_82:
    sub_21C6A70A0(v93, type metadata accessor for PropertyListValue);
    __swift_destroy_boxed_opaque_existential_1(&v202);
    v86 = v189;
    goto LABEL_31;
  }

  v164 = v89;
  v160 = *(&v74 + 1);
  sub_21C6A2734(*(a1 + 56) + 32 * v90, &v201);
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6DB0, &unk_21C6D0E60);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {

    v94 = v192;
LABEL_43:
    v95 = *(v94 - 32);

LABEL_81:

    (*(v171 + 8))(v199, v198);
    v93 = v188;
    goto LABEL_82;
  }

  v159 = v200;
  if (!*(a1 + 16))
  {
    v121 = *(v164 + 16);
    v162 = (v164 + 16);
    v122 = *(v159 + 16);
    v161 = (v159 + 16);
    v163 = v121;
    if (v121 == v122)
    {
      v154 = 0;
      goto LABEL_68;
    }

    v158 = 0;
LABEL_80:

    goto LABEL_81;
  }

  result = sub_21C6C70F8(0x74695474726F6853, 0xEB0000000073656CLL);
  if (v92 & 1) != 0 && (sub_21C6A2734(*(a1 + 56) + 32 * result, &v201), result = swift_dynamicCast(), (result))
  {
    v158 = v200;
  }

  else
  {
    v158 = 0;
  }

  if (*(a1 + 16) && (result = sub_21C6C70F8(0xD000000000000014, 0x800000021C6D3150), (v96 & 1) != 0) && (sub_21C6A2734(*(a1 + 56) + 32 * result, &v201), result = swift_dynamicCast(), result))
  {
    v154 = v200;
  }

  else
  {
    v154 = 0;
  }

  v97 = *(v164 + 16);
  v162 = (v164 + 16);
  v98 = *(v159 + 16);
  v161 = (v159 + 16);
  v163 = v97;
  if (v97 != v98)
  {
    goto LABEL_80;
  }

  if (!v158)
  {
LABEL_68:
    if (v163)
    {
      v123 = 0;
      v181 = (v191 + 16);
      v180 = (v191 + 56);
      v179 = (v191 + 8);
      v124 = (v159 + 40);
      v165 = MEMORY[0x277D84F90];
      v125 = v182;
      while (v123 < *v162)
      {
        result = sub_21C6A7038(v164 + ((*(v190 + 80) + 32) & ~*(v190 + 80)) + *(v190 + 72) * v123, v187, type metadata accessor for PropertyListValue);
        if (v123 == *v161)
        {

          sub_21C6A70A0(v187, type metadata accessor for PropertyListValue);
          goto LABEL_90;
        }

        if (v123 >= *v161)
        {
          goto LABEL_98;
        }

        v126 = *(v124 - 1);
        v127 = *v124;
        sub_21C6A7100(v187, v125, type metadata accessor for PropertyListValue);

        sub_21C6CEB70();
        v168(v192[0], v199, v198);

        sub_21C6CE000();
        sub_21C6CDF30();
        v128 = v184;
        v129 = v185;
        sub_21C6A7100(v125, v185 + *(v184 + 24), type metadata accessor for PropertyListValue);
        v130 = v193;
        (*v181)(v129, v61, v193);
        v131 = *v180;
        (*v180)(v129, 0, 1, v130);
        v131((v129 + *(v128 + 20)), 1, 1, v130);
        sub_21C6A7038(v129, v186, type metadata accessor for LocalizedSettingValue);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v165 = sub_21C6C6EA4(0, v165[2] + 1, 1, v165);
        }

        v133 = v165[2];
        v132 = v165[3];
        if (v133 >= v132 >> 1)
        {
          v165 = sub_21C6C6EA4(v132 > 1, v133 + 1, 1, v165);
        }

        ++v123;
        sub_21C6A70A0(v185, type metadata accessor for LocalizedSettingValue);
        (*v179)(v61, v193);
        v134 = v165;
        v165[2] = v133 + 1;
        result = sub_21C6A7100(v186, v134 + ((*(v183 + 80) + 32) & ~*(v183 + 80)) + *(v183 + 72) * v133, type metadata accessor for LocalizedSettingValue);
        v124 += 2;
        if (v163 == v123)
        {
          goto LABEL_89;
        }
      }

      __break(1u);
LABEL_98:
      __break(1u);
      goto LABEL_99;
    }

    v165 = MEMORY[0x277D84F90];
LABEL_89:

LABEL_90:
    if (*(a1 + 16) && (v135 = sub_21C6C70F8(0xD00000000000001CLL, 0x800000021C6D3170), (v136 & 1) != 0))
    {
      sub_21C6A2734(*(a1 + 56) + 32 * v135, &v201);

      if (swift_dynamicCast())
      {
        (*(v171 + 8))(v199, v198);
        sub_21C6A70A0(v188, type metadata accessor for PropertyListValue);
        __swift_destroy_boxed_opaque_existential_1(&v202);
        __swift_destroy_boxed_opaque_existential_1(&v203);
        v137 = v200;
LABEL_96:
        v138 = *(v191 + 32);
        v139 = v173;
        v140 = v193;
        v138(v173, v194, v193);
        v141 = v174;
        sub_21C6A7100(v189, v174, type metadata accessor for PropertyListValue);
        v142 = v172;
        *v172 = 5;
        v143 = type metadata accessor for MultiValueSetting();
        v138(&v142[v143[5]], v139, v140);
        v144 = &v142[v143[6]];
        v145 = v160;
        *v144 = v166;
        v144[1] = v145;
        sub_21C6A7100(v141, &v142[v143[7]], type metadata accessor for PropertyListValue);
        *&v142[v143[8]] = v165;
        v142[v143[9]] = v154;
        v146 = &v142[v143[10]];
        v147 = v195;
        *v146 = v175;
        v146[1] = v147;
        v148 = &v142[v143[11]];
        v149 = v196;
        *v148 = v176;
        v148[1] = v149;
        *&v142[v143[12]] = v137;
        return (*(*(v143 - 1) + 56))(v142, 0, 1, v143);
      }
    }

    else
    {
    }

    (*(v171 + 8))(v199, v198);
    sub_21C6A70A0(v188, type metadata accessor for PropertyListValue);
    __swift_destroy_boxed_opaque_existential_1(&v202);
    __swift_destroy_boxed_opaque_existential_1(&v203);
    v137 = MEMORY[0x277D84F90];
    goto LABEL_96;
  }

  if (*(v158 + 16) != v163)
  {

    v94 = &v190;
    goto LABEL_43;
  }

  if (!v163)
  {
    v165 = MEMORY[0x277D84F90];
LABEL_88:

    goto LABEL_89;
  }

  v187 = 0;
  v153 = (v191 + 16);
  v152 = (v191 + 56);
  v151 = (v191 + 8);
  v186 = (v159 + 40);
  v185 = (v158 + 40);
  v165 = MEMORY[0x277D84F90];
  while (v187 < *v162)
  {
    v99 = v187;
    result = sub_21C6A7038(v164 + ((*(v190 + 80) + 32) & ~*(v190 + 80)) + *(v190 + 72) * v187, v180, type metadata accessor for PropertyListValue);
    if (v99 == *v161)
    {
      goto LABEL_86;
    }

    if (v99 >= *v161)
    {
      goto LABEL_100;
    }

    v100 = *(v158 + 16);
    if (v187 == v100)
    {
LABEL_86:

      sub_21C6A70A0(v180, type metadata accessor for PropertyListValue);
      goto LABEL_89;
    }

    if (v187 >= v100)
    {
      goto LABEL_101;
    }

    v101 = *(v186 - 1);
    v102 = *v186;
    v103 = *v185;
    v156 = *(v185 - 1);
    v155 = v103;
    v182 = type metadata accessor for PropertyListValue;
    sub_21C6A7100(v180, v178, type metadata accessor for PropertyListValue);

    sub_21C6CEB70();
    v104 = v192[0];
    v106 = v198;
    v105 = v199;
    v107 = v168;
    v168(v192[0], v199, v198);

    sub_21C6CE000();
    sub_21C6CDF30();
    sub_21C6CEB70();
    v107(v104, v105, v106);

    sub_21C6CE000();
    v108 = v177;
    sub_21C6CDF30();
    v109 = v184;
    v110 = v179;
    sub_21C6A7100(v178, v179 + *(v184 + 24), v182);
    v111 = *v153;
    v112 = v193;
    (*v153)(v110, v181, v193);
    v113 = *v152;
    (*v152)(v110, 0, 1, v112);
    v114 = *(v109 + 20);
    v111(v110 + v114, v108, v112);
    v113(v110 + v114, 0, 1, v112);
    sub_21C6A7038(v110, v167, type metadata accessor for LocalizedSettingValue);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v165 = sub_21C6C6EA4(0, v165[2] + 1, 1, v165);
    }

    v116 = v165[2];
    v115 = v165[3];
    if (v116 >= v115 >> 1)
    {
      v165 = sub_21C6C6EA4(v115 > 1, v116 + 1, 1, v165);
    }

    v117 = v187 + 1;
    sub_21C6A70A0(v179, type metadata accessor for LocalizedSettingValue);
    v118 = *v151;
    v119 = v193;
    (*v151)(v177, v193);
    v118(v181, v119);
    v120 = v165;
    v165[2] = v116 + 1;
    result = sub_21C6A7100(v167, v120 + ((*(v183 + 80) + 32) & ~*(v183 + 80)) + *(v183 + 72) * v116, type metadata accessor for LocalizedSettingValue);
    v186 += 2;
    v185 += 2;
    v187 = v117;
    if (v163 == v117)
    {
      goto LABEL_88;
    }
  }

LABEL_99:
  __break(1u);
LABEL_100:
  __break(1u);
LABEL_101:
  __break(1u);
  return result;
}

uint64_t sub_21C6A6E50()
{
  v1 = 0xD000000000000014;
  v2 = "ers";
  v3 = *v0;
  v4 = "PSSliderSpecifier";
  v5 = "PSTitleValueSpecifier";
  if (v3 == 4)
  {
    v6 = 0xD000000000000014;
  }

  else
  {
    v6 = 0xD000000000000015;
  }

  if (v3 != 4)
  {
    v5 = "PSTextFieldSpecifier";
  }

  if (v3 == 3)
  {
    v7 = 0xD000000000000015;
  }

  else
  {
    v7 = v6;
  }

  if (v3 != 3)
  {
    v4 = v5;
  }

  v8 = "PSChildPaneSpecifier";
  v9 = 0xD000000000000017;
  if (v3 != 1)
  {
    v9 = 0xD000000000000011;
    v8 = "PSToggleSwitchSpecifier";
  }

  if (*v0)
  {
    v1 = v9;
    v2 = v8;
  }

  if (*v0 <= 2u)
  {
    v10 = v1;
  }

  else
  {
    v10 = v7;
  }

  if (*v0 <= 2u)
  {
    v11 = v2;
  }

  else
  {
    v11 = v4;
  }

  MEMORY[0x21CF0F390](v10, v11 | 0x8000000000000000);

  MEMORY[0x21CF0F390](46, 0xE100000000000000);
  v12 = type metadata accessor for MultiValueSetting();
  MEMORY[0x21CF0F390](*&v0[*(v12 + 24)], *&v0[*(v12 + 24) + 8]);
  MEMORY[0x21CF0F390](46, 0xE100000000000000);
  v13 = &v0[*(v12 + 20)];
  v14 = sub_21C6CDF10();
  MEMORY[0x21CF0F390](v14);

  return 0;
}

uint64_t sub_21C6A6F98@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21C6A6E50();
  *a1 = result;
  a1[1] = v3;
  return result;
}

_OWORD *sub_21C6A6FC0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_21C6A6FD0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6DA8, &unk_21C6D1A90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21C6A7038(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21C6A70A0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21C6A7100(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t type metadata accessor for MultiValueSettingView()
{
  result = qword_27CDE6DB8;
  if (!qword_27CDE6DB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21C6A71DC()
{
  sub_21C6A7260();
  if (v0 <= 0x3F)
  {
    type metadata accessor for MultiValueSetting();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_21C6A7260()
{
  if (!qword_27CDE6DC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDE6DD0, &qword_21C6D2540);
    sub_21C694224(&qword_27CDE6DD8, &qword_27CDE6DD0, &qword_21C6D2540);
    v0 = sub_21C6CE440();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDE6DC8);
    }
  }
}

uint64_t sub_21C6A7320@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v71 = a2;
  v70 = sub_21C6CE630();
  v63 = *(v70 - 8);
  v3 = *(v63 + 64);
  MEMORY[0x28223BE20](v70);
  v61 = v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6E48, &qword_21C6D0F20);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v57 = v52 - v7;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6E20, &qword_21C6D0F10);
  v59 = *(v68 - 8);
  v8 = *(v59 + 64);
  MEMORY[0x28223BE20](v68);
  v58 = v52 - v9;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6E50, &qword_21C6D0F28);
  v62 = *(v69 - 8);
  v10 = *(v62 + 64);
  MEMORY[0x28223BE20](v69);
  v60 = v52 - v11;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6E58, &qword_21C6D0F30);
  v12 = *(*(v64 - 8) + 64);
  MEMORY[0x28223BE20](v64);
  v67 = v52 - v13;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6E60, &qword_21C6D0F38);
  v14 = *(*(v55 - 8) + 64);
  MEMORY[0x28223BE20](v55);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6E18, &qword_21C6D0F08);
  v56 = *(v65 - 8);
  v15 = *(v56 + 64);
  MEMORY[0x28223BE20](v65);
  v17 = v52 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6E08, &qword_21C6D0F00);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v66 = v52 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6E68, &qword_21C6D0F40);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21);
  v24 = v52 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6E38, &qword_21C6D0F18);
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  v29 = v52 - v28;
  if (sub_21C6A7EE0())
  {
    v52[1] = v21;
    v53 = v24;
    v54 = v18;
    v30 = sub_21C6A7FB8();
    if (v30)
    {
      MEMORY[0x28223BE20](v30);
      MEMORY[0x28223BE20](v31);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6E98, &unk_21C6D0F80);
      sub_21C6A9330();
      sub_21C6CE700();
      sub_21C6A9188();
      sub_21C694224(&qword_27CDE6ED0, &qword_27CDE6E60, &qword_21C6D0F38);
      sub_21C6CE360();

      v32 = v56;
      v33 = v65;
      (*(v56 + 16))(v67, v17, v65);
      swift_storeEnumTagMultiPayload();
      sub_21C694224(&qword_27CDE6E10, &qword_27CDE6E18, &qword_21C6D0F08);
      v34 = sub_21C694224(&qword_27CDE6E28, &qword_27CDE6E20, &qword_21C6D0F10);
      v72 = v68;
      v73 = v70;
      v74 = v34;
      v75 = MEMORY[0x277CDE370];
      swift_getOpaqueTypeConformance2();
      v35 = v66;
      sub_21C6CE5C0();
      (*(v32 + 8))(v17, v33);
    }

    else
    {
      v38 = *a1;
      v39 = a1[1];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6DD0, &qword_21C6D2540);
      sub_21C694224(&qword_27CDE6DD8, &qword_27CDE6DD0, &qword_21C6D2540);
      v40 = sub_21C6CE400();
      swift_getKeyPath();
      sub_21C6CE420();

      MEMORY[0x28223BE20](v41);
      MEMORY[0x28223BE20](v42);
      type metadata accessor for PropertyListValue();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6E70, &qword_21C6D0F70);
      sub_21C6AABB4(&qword_27CDE6E78, type metadata accessor for PropertyListValue);
      sub_21C6A9270();
      v43 = v58;
      sub_21C6CE9B0();

      v44 = v61;
      sub_21C6CE620();
      v45 = sub_21C694224(&qword_27CDE6E28, &qword_27CDE6E20, &qword_21C6D0F10);
      v46 = MEMORY[0x277CDE370];
      v47 = v60;
      v48 = v68;
      v49 = v70;
      sub_21C6CE7C0();
      (*(v63 + 8))(v44, v49);
      (*(v59 + 8))(v43, v48);
      v50 = v62;
      v51 = v69;
      (*(v62 + 16))(v67, v47, v69);
      swift_storeEnumTagMultiPayload();
      sub_21C694224(&qword_27CDE6E10, &qword_27CDE6E18, &qword_21C6D0F08);
      v72 = v48;
      v73 = v49;
      v74 = v45;
      v75 = v46;
      swift_getOpaqueTypeConformance2();
      v35 = v66;
      sub_21C6CE5C0();
      (*(v50 + 8))(v47, v51);
    }

    sub_21C68845C(v35, v53);
    swift_storeEnumTagMultiPayload();
    sub_21C6A9040();
    sub_21C6A9188();
    sub_21C6CE5C0();
    return sub_21C68F7D4(v35, &qword_27CDE6E08, &qword_21C6D0F00);
  }

  else
  {
    MEMORY[0x28223BE20](0);
    MEMORY[0x28223BE20](v36);
    type metadata accessor for PropertyListValueView();
    sub_21C6AABB4(&qword_27CDE6E40, type metadata accessor for PropertyListValueView);
    sub_21C6CE350();
    (*(v26 + 16))(v24, v29, v25);
    swift_storeEnumTagMultiPayload();
    sub_21C6A9040();
    sub_21C6A9188();
    sub_21C6CE5C0();
    return (*(v26 + 8))(v29, v25);
  }
}

uint64_t sub_21C6A7EE0()
{
  v1 = v0 + *(type metadata accessor for MultiValueSettingView() + 20);
  v2 = type metadata accessor for MultiValueSetting();
  v3 = *(v1 + *(v2 + 36));
  result = *(v1 + *(v2 + 32));
  if (v3 != 1)
  {
  }

  if (result)
  {
    MEMORY[0x28223BE20](result);
    v6[2] = v0;
    v7 = v5;

    sub_21C6A97B8(sub_21C6A9798, v6);
    return v7;
  }

  return result;
}

uint64_t sub_21C6A7FB8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6F10, &qword_21C6D1030);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v16 - v3;
  v5 = type metadata accessor for LocalizedSettingValue();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v0 + *(type metadata accessor for MultiValueSettingView() + 20);
  result = type metadata accessor for MultiValueSetting();
  v12 = *(v10 + *(result + 32));
  if (!v12)
  {
    return 0;
  }

  v13 = *(v12 + 16);
  if (!v13)
  {
    return 1;
  }

  v14 = 0;
  while (v14 < *(v12 + 16))
  {
    sub_21C6A7038(v12 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v14, v9, type metadata accessor for LocalizedSettingValue);
    sub_21C6A96C0(&v9[*(v5 + 20)], v4);
    sub_21C6A70A0(v9, type metadata accessor for LocalizedSettingValue);
    v15 = sub_21C6CDF20();
    if ((*(*(v15 - 8) + 48))(v4, 1, v15) == 1)
    {
      sub_21C6A9730(v4);
      return 0;
    }

    ++v14;
    result = sub_21C6A9730(v4);
    if (v13 == v14)
    {
      return 1;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21C6A81B4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6EB0, &unk_21C6D1140);
  sub_21C6A93C0();
  return sub_21C6CEA60();
}

uint64_t sub_21C6A8224@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6DD0, &qword_21C6D2540);
  sub_21C694224(&qword_27CDE6DD8, &qword_27CDE6DD0, &qword_21C6D2540);
  v6 = sub_21C6CE430();
  v8 = *a2;
  if (*a2)
  {
    v9 = v6;
    v10 = v7;
    v11 = v8;
    result = sub_21C6CE1B0();
    *a3 = v9;
    a3[1] = v10;
    a3[2] = a1;
    a3[3] = result;
    a3[4] = v8;
  }

  else
  {
    v13 = *(a2 + 8);
    result = sub_21C6CE410();
    __break(1u);
  }

  return result;
}

uint64_t sub_21C6A8304()
{
  type metadata accessor for PropertyListValueView();
  sub_21C6AABB4(&qword_27CDE6E40, type metadata accessor for PropertyListValueView);
  return sub_21C6CE350();
}

uint64_t sub_21C6A83C4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6DD0, &qword_21C6D2540);
  sub_21C694224(&qword_27CDE6DD8, &qword_27CDE6DD0, &qword_21C6D2540);
  v7 = sub_21C6CE400();
  swift_getKeyPath();
  sub_21C6CE420();

  v8 = type metadata accessor for PropertyListValueView();
  *(a3 + *(v8 + 20)) = a2;
  *(a3 + *(v8 + 24)) = 1;
}

uint64_t sub_21C6A84C4(uint64_t *a1)
{
  v1 = *a1;
  type metadata accessor for PropertyListValue();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21C6CE1E0();
}

uint64_t sub_21C6A8558(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for PropertyListValue();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21C6A7038(a1, v7, type metadata accessor for PropertyListValue);
  v8 = *a2;
  return sub_21C6A85F8(v7);
}

uint64_t sub_21C6A85F8(uint64_t a1)
{
  v3 = type metadata accessor for PropertyListValue();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13[6] = v7;
  swift_getKeyPath();
  v13[4] = v3;
  swift_getKeyPath();
  sub_21C6A7038(a1, v6, type metadata accessor for PropertyListValue);
  v8 = v1;
  sub_21C6CE1F0();
  v9 = v8 + *((*MEMORY[0x277D85000] & *v8) + 0x80);
  v11 = *v9;
  v10 = *(v9 + 1);
  v13[2] = v3;
  swift_getKeyPath();
  v13[0] = v3;
  swift_getKeyPath();
  sub_21C6CE1E0();

  v11(v6);
  sub_21C6A70A0(a1, type metadata accessor for PropertyListValue);
  return sub_21C6A70A0(v6, type metadata accessor for PropertyListValue);
}

uint64_t sub_21C6A87A0()
{
  swift_getKeyPath();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6D90, &qword_21C6D25A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6E90, &qword_21C6D0F78);
  type metadata accessor for PropertyListValue();
  sub_21C694224(&qword_27CDE6ED8, &qword_27CDE6D90, &qword_21C6D25A0);
  sub_21C6AABB4(&qword_27CDE6E78, type metadata accessor for PropertyListValue);
  sub_21C694224(&qword_27CDE6E88, &qword_27CDE6E90, &qword_21C6D0F78);
  return sub_21C6CEA10();
}

uint64_t sub_21C6A891C(uint64_t a1)
{
  v2 = type metadata accessor for PropertyListValue();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for LocalizedSettingValue();
  sub_21C6A7038(a1 + *(v6 + 24), v5, type metadata accessor for PropertyListValue);
  v12 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6EE0, &unk_21C6D0FC0);
  v8 = sub_21C6AABB4(&qword_27CDE6E78, type metadata accessor for PropertyListValue);
  v9 = sub_21C6A952C();
  return MEMORY[0x21CF0EA80](v5, sub_21C6A94DC, v11, v2, v7, v8, v9);
}

uint64_t sub_21C6A8A5C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6DD0, &qword_21C6D2540);
  sub_21C694224(&qword_27CDE6DD8, &qword_27CDE6DD0, &qword_21C6D2540);
  v6 = sub_21C6CE400();
  swift_getKeyPath();
  sub_21C6CE420();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6F18, &qword_21C6D1038);
  v7 = (type metadata accessor for LocalizedSettingValue() - 8);
  v8 = *(*v7 + 72);
  v9 = (*(*v7 + 80) + 32) & ~*(*v7 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_21C6D0E70;
  v11 = v10 + v9;
  v12 = a1 + *(type metadata accessor for MultiValueSettingView() + 20);
  v13 = type metadata accessor for MultiValueSetting();
  sub_21C6A7038(&v12[*(v13 + 28)], v11 + v7[8], type metadata accessor for PropertyListValue);
  v14 = sub_21C6CDF20();
  v15 = *(*(v14 - 8) + 56);
  v15(v11, 1, 1, v14);
  v15(v11 + v7[7], 1, 1, v14);
  result = type metadata accessor for PropertyListValueView();
  *(a2 + *(result + 20)) = v10;
  *(a2 + *(result + 24)) = 0;
  return result;
}

uint64_t sub_21C6A8C7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21C6CDF20();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1 + *(type metadata accessor for MultiValueSettingView() + 20);
  v10 = type metadata accessor for MultiValueSetting();
  (*(v5 + 16))(v8, v9 + *(v10 + 20), v4);
  result = sub_21C6CE750();
  *a2 = result;
  *(a2 + 8) = v12;
  *(a2 + 16) = v13 & 1;
  *(a2 + 24) = v14;
  return result;
}

BOOL sub_21C6A8D7C()
{
  v0 = sub_21C6A7FB8();
  sub_21C6BC874(v0 & 1);
  v1 = sub_21C6A7FB8();
  sub_21C6BC874(v1 & 1);
  sub_21C68F5F0();
  v2 = sub_21C6CED40();

  return v2 == -1;
}

uint64_t sub_21C6A8E3C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6DE0, &qword_21C6D0EF0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - v5;
  sub_21C6A7320(v1, &v9 - v5);
  v7 = v1 + *(a1 + 20);
  sub_21C6A6E50();
  sub_21C6A8F30();
  sub_21C6CE7F0();

  return sub_21C68F7D4(v6, &qword_27CDE6DE0, &qword_21C6D0EF0);
}

unint64_t sub_21C6A8F30()
{
  result = qword_27CDE6DE8;
  if (!qword_27CDE6DE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDE6DE0, &qword_21C6D0EF0);
    sub_21C6A8FB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDE6DE8);
  }

  return result;
}

unint64_t sub_21C6A8FB4()
{
  result = qword_27CDE6DF0;
  if (!qword_27CDE6DF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDE6DF8, &qword_21C6D0EF8);
    sub_21C6A9040();
    sub_21C6A9188();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDE6DF0);
  }

  return result;
}

unint64_t sub_21C6A9040()
{
  result = qword_27CDE6E00;
  if (!qword_27CDE6E00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDE6E08, &qword_21C6D0F00);
    sub_21C694224(&qword_27CDE6E10, &qword_27CDE6E18, &qword_21C6D0F08);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDE6E20, &qword_21C6D0F10);
    sub_21C6CE630();
    sub_21C694224(&qword_27CDE6E28, &qword_27CDE6E20, &qword_21C6D0F10);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDE6E00);
  }

  return result;
}

unint64_t sub_21C6A9188()
{
  result = qword_27CDE6E30;
  if (!qword_27CDE6E30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDE6E38, &qword_21C6D0F18);
    sub_21C6AABB4(&qword_27CDE6E40, type metadata accessor for PropertyListValueView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDE6E30);
  }

  return result;
}

unint64_t sub_21C6A9270()
{
  result = qword_27CDE6E80;
  if (!qword_27CDE6E80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDE6E70, &qword_21C6D0F70);
    sub_21C694224(&qword_27CDE6E88, &qword_27CDE6E90, &qword_21C6D0F78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDE6E80);
  }

  return result;
}

uint64_t sub_21C6A9320()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_21C6A8304();
}

uint64_t sub_21C6A9328()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_21C6A81B4();
}

unint64_t sub_21C6A9330()
{
  result = qword_27CDE6EA0;
  if (!qword_27CDE6EA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDE6E98, &unk_21C6D0F80);
    sub_21C6A93C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDE6EA0);
  }

  return result;
}

unint64_t sub_21C6A93C0()
{
  result = qword_27CDE6EA8;
  if (!qword_27CDE6EA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDE6EB0, &unk_21C6D1140);
    sub_21C6A9478();
    sub_21C694224(&qword_27CDE6EC0, &qword_27CDE6EC8, &qword_21C6D0F90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDE6EA8);
  }

  return result;
}

unint64_t sub_21C6A9478()
{
  result = qword_27CDE6EB8;
  if (!qword_27CDE6EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDE6EB8);
  }

  return result;
}

double sub_21C6A94DC@<D0>(__n128 *a1@<X8>)
{
  v3 = *(v1 + 16);
  sub_21C6BBF00(0, v8);
  v4 = v9;
  v5 = v10;
  result = v8[0].n128_f64[0];
  v7 = v8[1];
  *a1 = v8[0];
  a1[1] = v7;
  a1[2].n128_u16[0] = v4;
  a1[2].n128_u8[2] = v5;
  return result;
}

unint64_t sub_21C6A952C()
{
  result = qword_27CDE6EE8;
  if (!qword_27CDE6EE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDE6EE0, &unk_21C6D0FC0);
    sub_21C6A95B8();
    sub_21C6A9634();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDE6EE8);
  }

  return result;
}

unint64_t sub_21C6A95B8()
{
  result = qword_27CDE6EF0;
  if (!qword_27CDE6EF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDE6EF8, ".>");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDE6EF0);
  }

  return result;
}

unint64_t sub_21C6A9634()
{
  result = qword_27CDE6F00;
  if (!qword_27CDE6F00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDE6F08, &qword_21C6D0FD0);
    sub_21C6A95B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDE6F00);
  }

  return result;
}

uint64_t sub_21C6A96C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6F10, &qword_21C6D1030);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C6A9730(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6F10, &qword_21C6D1030);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_21C6A97B8(uint64_t (*a1)(char *, char *), uint64_t a2)
{
  v3 = v2;
  v6 = *(type metadata accessor for LocalizedSettingValue() - 8);
  v7 = *v3;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = sub_21C6B0214(v7);
  }

  v8 = v7 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  v9 = v7[2];
  sub_21C6A9878(a1, a2);
  *v3 = v7;
}

void sub_21C6A9878(uint64_t (*a1)(char *, char *), uint64_t a2)
{
  v5 = v2[1];
  v6 = sub_21C6CEE00();
  if (v6 < v5)
  {
    if (v5 >= -1)
    {
      v7 = v6;
      v8 = v5 / 2;
      if (v5 < 2)
      {
        v9 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for LocalizedSettingValue();
        v9 = sub_21C6CEC60();
        *(v9 + 16) = v8;
      }

      v10 = *(type metadata accessor for LocalizedSettingValue() - 8);
      v11[0] = v9 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
      v11[1] = v8;
      sub_21C6A99B4(v11, v12, v2, a1, a2, v7);
      *(v9 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v5 < 0)
  {
    goto LABEL_12;
  }

  if (v5)
  {
    sub_21C6ADBE4(0, v5, 1, a1);
  }
}

void sub_21C6A99B4(uint64_t *a1, uint64_t a2, void *a3, uint64_t (*a4)(char *, char *), uint64_t a5, uint64_t a6)
{
  v8 = v6;
  v136 = a5;
  v137 = a4;
  v124 = a1;
  v130 = type metadata accessor for LocalizedSettingValue();
  v135 = *(v130 - 8);
  v11 = *(v135 + 64);
  MEMORY[0x28223BE20](v130);
  v127 = &v113 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v129 = &v113 - v14;
  MEMORY[0x28223BE20](v15);
  MEMORY[0x28223BE20](v16);
  v18 = &v113 - v17;
  MEMORY[0x28223BE20](v19);
  MEMORY[0x28223BE20](v20);
  v22 = &v113 - v21;
  MEMORY[0x28223BE20](v23);
  MEMORY[0x28223BE20](v24);
  if (a3[1] < 1)
  {
    v31 = MEMORY[0x277D84F90];
LABEL_101:
    v7 = a3;
    a3 = *v124;
    if (*v124)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_134;
      }

      goto LABEL_103;
    }

    goto LABEL_143;
  }

  v29 = a3[1];
  v120 = &v113 - v25;
  v121 = v28;
  v131 = v27;
  v128 = v26;
  v119 = a6;
  v30 = 0;
  v31 = MEMORY[0x277D84F90];
  v123 = v22;
  v125 = a3;
  v118 = v18;
  while (1)
  {
    v32 = v30;
    v33 = v30 + 1;
    v126 = v29;
    if (v33 >= v29)
    {
      v43 = v33;
    }

    else
    {
      v34 = *a3;
      v7 = *(v135 + 72);
      v35 = v32;
      v36 = v34 + v7 * v33;
      v37 = v120;
      sub_21C6A7038(v36, v120, type metadata accessor for LocalizedSettingValue);
      v134 = v34;
      v38 = v34 + v7 * v35;
      v39 = v121;
      sub_21C6A7038(v38, v121, type metadata accessor for LocalizedSettingValue);
      LODWORD(v133) = v137(v37, v39);
      if (v8)
      {
        sub_21C6A70A0(v39, type metadata accessor for LocalizedSettingValue);
        v112 = v37;
        goto LABEL_113;
      }

      sub_21C6A70A0(v39, type metadata accessor for LocalizedSettingValue);
      sub_21C6A70A0(v37, type metadata accessor for LocalizedSettingValue);
      v117 = v126 - 1;
      v132 = v126 - 2;
      v40 = v134 + v7 * (v35 + 2);
      v122 = v35;
      v41 = v7;
      v134 = v7;
      while (v132 != v35)
      {
        sub_21C6A7038(v40, v22, type metadata accessor for LocalizedSettingValue);
        v7 = v131;
        sub_21C6A7038(v36, v131, type metadata accessor for LocalizedSettingValue);
        v42 = v137(v22, v7);
        sub_21C6A70A0(v7, type metadata accessor for LocalizedSettingValue);
        sub_21C6A70A0(v22, type metadata accessor for LocalizedSettingValue);
        ++v35;
        v41 = v134;
        v40 += v134;
        v36 += v134;
        if ((v133 ^ v42))
        {
          v43 = v35 + 1;
          goto LABEL_11;
        }
      }

      v35 = v117;
      v43 = v126;
LABEL_11:
      v32 = v122;
      if ((v133 & 1) == 0)
      {
        goto LABEL_14;
      }

      if (v43 < v122)
      {
        goto LABEL_137;
      }

      if (v122 <= v35)
      {
        v44 = v41 * (v43 - 1);
        v45 = v43;
        v46 = v43 * v41;
        v126 = v45;
        v7 = v122 * v41;
        do
        {
          if (v32 != --v45)
          {
            v133 = v8;
            v47 = *v125;
            if (!*v125)
            {
              goto LABEL_141;
            }

            sub_21C6AAA94(v47 + v7, v127);
            if (v7 < v44 || v47 + v7 >= (v47 + v46))
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v7 != v44)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_21C6AAA94(v127, v47 + v44);
            v8 = v133;
            v41 = v134;
          }

          ++v32;
          v44 -= v41;
          v46 -= v41;
          v7 += v41;
        }

        while (v32 < v45);
        a3 = v125;
        v43 = v126;
        v18 = v118;
        v32 = v122;
      }

      else
      {
LABEL_14:
        a3 = v125;
        v18 = v118;
      }
    }

    v48 = a3[1];
    if (v43 >= v48)
    {
      goto LABEL_36;
    }

    if (__OFSUB__(v43, v32))
    {
      goto LABEL_133;
    }

    if (v43 - v32 >= v119)
    {
      goto LABEL_36;
    }

    if (__OFADD__(v32, v119))
    {
      __break(1u);
LABEL_136:
      __break(1u);
LABEL_137:
      __break(1u);
LABEL_138:
      __break(1u);
LABEL_139:
      __break(1u);
      goto LABEL_140;
    }

    v126 = v43;
    if (v32 + v119 >= v48)
    {
      v49 = v48;
    }

    else
    {
      v49 = v32 + v119;
    }

    if (v49 < v32)
    {
      goto LABEL_136;
    }

    if (v126 == v49)
    {
      v43 = v126;
LABEL_36:
      if (v43 < v32)
      {
        goto LABEL_132;
      }

      goto LABEL_37;
    }

    v97 = *a3;
    v98 = *(v135 + 72);
    v7 = *a3 + v98 * (v126 - 1);
    v133 = -v98;
    v134 = v97;
    v122 = v32;
    v99 = v32 - v126;
    v114 = v98;
    v100 = v97 + v126 * v98;
    v132 = v49;
    do
    {
      v115 = v100;
      v116 = v99;
      v117 = v7;
      do
      {
        sub_21C6A7038(v100, v18, type metadata accessor for LocalizedSettingValue);
        v101 = v18;
        v102 = v128;
        sub_21C6A7038(v7, v128, type metadata accessor for LocalizedSettingValue);
        v103 = v137(v101, v102);
        if (v8)
        {
          sub_21C6A70A0(v102, type metadata accessor for LocalizedSettingValue);
          v112 = v101;
LABEL_113:
          sub_21C6A70A0(v112, type metadata accessor for LocalizedSettingValue);
LABEL_114:

          return;
        }

        v104 = v103;
        sub_21C6A70A0(v102, type metadata accessor for LocalizedSettingValue);
        sub_21C6A70A0(v101, type metadata accessor for LocalizedSettingValue);
        v18 = v101;
        if ((v104 & 1) == 0)
        {
          break;
        }

        if (!v134)
        {
          goto LABEL_139;
        }

        v105 = v129;
        sub_21C6AAA94(v100, v129);
        swift_arrayInitWithTakeFrontToBack();
        sub_21C6AAA94(v105, v7);
        v7 += v133;
        v100 += v133;
      }

      while (!__CFADD__(v99++, 1));
      v7 = v117 + v114;
      v99 = v116 - 1;
      v100 = v115 + v114;
      v43 = v132;
      ++v126;
    }

    while (v126 != v132);
    a3 = v125;
    v32 = v122;
    if (v132 < v122)
    {
      goto LABEL_132;
    }

LABEL_37:
    v50 = v8;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v31 = sub_21C6B0110(0, *(v31 + 2) + 1, 1, v31);
    }

    v52 = *(v31 + 2);
    v51 = *(v31 + 3);
    v53 = v52 + 1;
    if (v52 >= v51 >> 1)
    {
      v31 = sub_21C6B0110((v51 > 1), v52 + 1, 1, v31);
    }

    *(v31 + 2) = v53;
    v54 = &v31[16 * v52];
    *(v54 + 4) = v32;
    *(v54 + 5) = v43;
    v7 = *v124;
    if (!*v124)
    {
      goto LABEL_142;
    }

    v132 = v43;
    if (v52)
    {
      break;
    }

    v8 = v50;
LABEL_88:
    v29 = a3[1];
    v30 = v132;
    v22 = v123;
    if (v132 >= v29)
    {
      goto LABEL_101;
    }
  }

  v8 = v50;
  while (1)
  {
    v55 = v53 - 1;
    if (v53 >= 4)
    {
      v60 = &v31[16 * v53 + 32];
      v61 = *(v60 - 64);
      v62 = *(v60 - 56);
      v66 = __OFSUB__(v62, v61);
      v63 = v62 - v61;
      if (v66)
      {
        goto LABEL_119;
      }

      v65 = *(v60 - 48);
      v64 = *(v60 - 40);
      v66 = __OFSUB__(v64, v65);
      v58 = v64 - v65;
      v59 = v66;
      if (v66)
      {
        goto LABEL_120;
      }

      v67 = &v31[16 * v53];
      v69 = *v67;
      v68 = *(v67 + 1);
      v66 = __OFSUB__(v68, v69);
      v70 = v68 - v69;
      if (v66)
      {
        goto LABEL_122;
      }

      v66 = __OFADD__(v58, v70);
      v71 = v58 + v70;
      if (v66)
      {
        goto LABEL_125;
      }

      if (v71 >= v63)
      {
        v89 = &v31[16 * v55 + 32];
        v91 = *v89;
        v90 = *(v89 + 1);
        v66 = __OFSUB__(v90, v91);
        v92 = v90 - v91;
        if (v66)
        {
          goto LABEL_131;
        }

        if (v58 < v92)
        {
          v55 = v53 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

    if (v53 == 3)
    {
      v56 = *(v31 + 4);
      v57 = *(v31 + 5);
      v66 = __OFSUB__(v57, v56);
      v58 = v57 - v56;
      v59 = v66;
LABEL_57:
      if (v59)
      {
        goto LABEL_121;
      }

      v72 = &v31[16 * v53];
      v74 = *v72;
      v73 = *(v72 + 1);
      v75 = __OFSUB__(v73, v74);
      v76 = v73 - v74;
      v77 = v75;
      if (v75)
      {
        goto LABEL_124;
      }

      v78 = &v31[16 * v55 + 32];
      v80 = *v78;
      v79 = *(v78 + 1);
      v66 = __OFSUB__(v79, v80);
      v81 = v79 - v80;
      if (v66)
      {
        goto LABEL_127;
      }

      if (__OFADD__(v76, v81))
      {
        goto LABEL_128;
      }

      if (v76 + v81 >= v58)
      {
        if (v58 < v81)
        {
          v55 = v53 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_71;
    }

    v82 = &v31[16 * v53];
    v84 = *v82;
    v83 = *(v82 + 1);
    v66 = __OFSUB__(v83, v84);
    v76 = v83 - v84;
    v77 = v66;
LABEL_71:
    if (v77)
    {
      goto LABEL_123;
    }

    v85 = &v31[16 * v55];
    v87 = *(v85 + 4);
    v86 = *(v85 + 5);
    v66 = __OFSUB__(v86, v87);
    v88 = v86 - v87;
    if (v66)
    {
      goto LABEL_126;
    }

    if (v88 < v76)
    {
      goto LABEL_88;
    }

LABEL_78:
    v93 = v55 - 1;
    if (v55 - 1 >= v53)
    {
      break;
    }

    if (!*a3)
    {
      goto LABEL_138;
    }

    v94 = *&v31[16 * v93 + 32];
    v95 = *&v31[16 * v55 + 40];
    sub_21C6AA44C(*a3 + *(v135 + 72) * v94, *a3 + *(v135 + 72) * *&v31[16 * v55 + 32], *a3 + *(v135 + 72) * v95, v7, v137, v136);
    if (v8)
    {
      goto LABEL_114;
    }

    if (v95 < v94)
    {
      goto LABEL_117;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v31 = sub_21C6B0018(v31);
    }

    if (v93 >= *(v31 + 2))
    {
      goto LABEL_118;
    }

    v96 = &v31[16 * v93];
    *(v96 + 4) = v94;
    *(v96 + 5) = v95;
    v138 = v31;
    sub_21C6AFF8C(v55);
    v31 = v138;
    v53 = *(v138 + 2);
    if (v53 <= 1)
    {
      goto LABEL_88;
    }
  }

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
LABEL_129:
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
  v31 = sub_21C6B0018(v31);
LABEL_103:
  v138 = v31;
  v107 = *(v31 + 2);
  v108 = v136;
  if (v107 < 2)
  {
    goto LABEL_114;
  }

  while (*v7)
  {
    v109 = *&v31[16 * v107];
    v110 = *&v31[16 * v107 + 24];
    sub_21C6AA44C(*v7 + *(v135 + 72) * v109, *v7 + *(v135 + 72) * *&v31[16 * v107 + 16], *v7 + *(v135 + 72) * v110, a3, v137, v108);
    if (v8)
    {
      goto LABEL_114;
    }

    if (v110 < v109)
    {
      goto LABEL_129;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v31 = sub_21C6B0018(v31);
    }

    if (v107 - 2 >= *(v31 + 2))
    {
      goto LABEL_130;
    }

    v111 = &v31[16 * v107];
    *v111 = v109;
    *(v111 + 1) = v110;
    v138 = v31;
    sub_21C6AFF8C(v107 - 1);
    v31 = v138;
    v107 = *(v138 + 2);
    if (v107 <= 1)
    {
      goto LABEL_114;
    }
  }

LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
}

void sub_21C6AA44C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t (*a5)(char *, char *), uint64_t a6)
{
  v7 = v6;
  v55 = a6;
  v56 = a5;
  v57 = a3;
  v54 = type metadata accessor for LocalizedSettingValue();
  v11 = *(*(v54 - 8) + 64);
  MEMORY[0x28223BE20](v54);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v46 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v46 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v46 - v21;
  v53 = *(v23 + 72);
  if (!v53)
  {
    __break(1u);
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v24 = a1;
  if (a2 - a1 == 0x8000000000000000 && v53 == -1)
  {
    goto LABEL_66;
  }

  v25 = v57 - a2;
  if (v57 - a2 != 0x8000000000000000 || v53 != -1)
  {
    v26 = (a2 - a1) / v53;
    v60 = a1;
    v59 = a4;
    v52 = a1;
    if (v26 < v25 / v53)
    {
      v27 = v26 * v53;
      if (a4 < v24 || v24 + v27 <= a4)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (a4 == v24)
        {
          goto LABEL_17;
        }

        swift_arrayInitWithTakeBackToFront();
      }

      v24 = v52;
LABEL_17:
      v52 = a4 + v27;
      v58 = a4 + v27;
      if (v27 >= 1 && a2 < v57)
      {
        while (1)
        {
          v30 = v24;
          sub_21C6A7038(a2, v22, type metadata accessor for LocalizedSettingValue);
          sub_21C6A7038(a4, v19, type metadata accessor for LocalizedSettingValue);
          v31 = v56(v22, v19);
          if (v7)
          {
            break;
          }

          v32 = v31;
          v33 = a4;
          sub_21C6A70A0(v19, type metadata accessor for LocalizedSettingValue);
          sub_21C6A70A0(v22, type metadata accessor for LocalizedSettingValue);
          if (v32)
          {
            v34 = v53;
            v35 = v30;
            if (v30 < a2 || v30 >= a2 + v53)
            {
              swift_arrayInitWithTakeFrontToBack();
              v35 = v30;
              a2 += v34;
              v7 = 0;
            }

            else
            {
              v7 = 0;
              if (v30 != a2)
              {
                swift_arrayInitWithTakeBackToFront();
                v35 = v30;
              }

              a2 += v34;
            }
          }

          else
          {
            v36 = a4;
            v34 = v53;
            a4 += v53;
            v35 = v30;
            if (v30 < v33 || v30 >= a4)
            {
              swift_arrayInitWithTakeFrontToBack();
              v35 = v30;
              v7 = 0;
            }

            else
            {
              v7 = 0;
              if (v30 != v36)
              {
                swift_arrayInitWithTakeBackToFront();
                v35 = v30;
              }
            }

            v59 = a4;
          }

          v24 = v35 + v34;
          v60 = v24;
          if (a4 >= v52 || a2 >= v57)
          {
            goto LABEL_64;
          }
        }

        sub_21C6A70A0(v19, type metadata accessor for LocalizedSettingValue);
        sub_21C6A70A0(v22, type metadata accessor for LocalizedSettingValue);
      }

LABEL_64:
      sub_21C6B002C(&v60, &v59, &v58);
      return;
    }

    v28 = v25 / v53 * v53;
    if (a4 < a2 || a2 + v28 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else
    {
      if (a4 == a2)
      {
LABEL_40:
        v37 = a4 + v28;
        if (v28 >= 1)
        {
          v38 = -v53;
          v39 = v37;
          v48 = v16;
          v49 = v13;
          do
          {
            v46 = v37;
            v40 = a2;
            v50 = a2;
            v51 = a2 + v38;
            while (1)
            {
              v41 = v57;
              if (v40 <= v24)
              {
                v60 = v40;
                v58 = v46;
                goto LABEL_64;
              }

              v47 = v37;
              v53 = v39;
              v42 = v39 + v38;
              sub_21C6A7038(v39 + v38, v16, type metadata accessor for LocalizedSettingValue);
              sub_21C6A7038(v51, v13, type metadata accessor for LocalizedSettingValue);
              v43 = v56(v16, v13);
              if (v7)
              {
                sub_21C6A70A0(v13, type metadata accessor for LocalizedSettingValue);
                sub_21C6A70A0(v16, type metadata accessor for LocalizedSettingValue);
                v60 = v50;
                v58 = v47;
                goto LABEL_64;
              }

              v44 = v43;
              v57 = v41 + v38;
              sub_21C6A70A0(v13, type metadata accessor for LocalizedSettingValue);
              sub_21C6A70A0(v16, type metadata accessor for LocalizedSettingValue);
              if (v44)
              {
                break;
              }

              v37 = v42;
              if (v41 < v53 || v57 >= v53)
              {
                swift_arrayInitWithTakeFrontToBack();
                v7 = 0;
              }

              else
              {
                v7 = 0;
                if (v41 != v53)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              v39 = v42;
              v24 = v52;
              v16 = v48;
              v13 = v49;
              v40 = v50;
              if (v42 <= a4)
              {
                a2 = v50;
                goto LABEL_63;
              }
            }

            if (v41 < v50 || v57 >= v50)
            {
              a2 = v51;
              swift_arrayInitWithTakeFrontToBack();
              v7 = 0;
              v37 = v47;
            }

            else
            {
              v45 = v41 == v50;
              a2 = v51;
              v7 = 0;
              v37 = v47;
              if (!v45)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v24 = v52;
            v39 = v53;
            v16 = v48;
            v13 = v49;
          }

          while (v53 > a4);
        }

LABEL_63:
        v60 = a2;
        v58 = v37;
        goto LABEL_64;
      }

      swift_arrayInitWithTakeBackToFront();
    }

    v24 = v52;
    goto LABEL_40;
  }

LABEL_67:
  __break(1u);
}

uint64_t sub_21C6AAA94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocalizedSettingValue();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_21C6AAAF8()
{
  result = qword_27CDE6F20;
  if (!qword_27CDE6F20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDE6F28, qword_21C6D1040);
    sub_21C6A8F30();
    sub_21C6AABB4(&qword_27CDE6D70, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDE6F20);
  }

  return result;
}

uint64_t sub_21C6AABB4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21C6AAC00()
{
  v1 = *(v0 + *(type metadata accessor for RadioGroupSetting() + 56));
  if (!*(v1 + 16))
  {
    return 1;
  }

  v2 = [objc_opt_self() currentDevice];
  v3 = [v2 userInterfaceIdiom];

  if (v3)
  {
    v4 = 6578512;
  }

  else
  {
    v4 = 0x656E6F6850;
  }

  if (v3)
  {
    v5 = 0xE300000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  v6 = (v1 + 40);
  v7 = *(v1 + 16) + 1;
  do
  {
    v8 = --v7 != 0;
    if (!v7)
    {
      break;
    }

    if (*(v6 - 1) == v4 && *v6 == v5)
    {
      break;
    }

    v6 += 2;
  }

  while ((sub_21C6CEE20() & 1) == 0);

  return v8;
}

uint64_t sub_21C6AACF8@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _BYTE *a9@<X8>, uint64_t a10)
{
  v136 = a8;
  v152 = a7;
  v135 = a6;
  v157 = a5;
  v155 = a4;
  v149 = a3;
  v154 = a9;
  v153 = a10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6F10, &qword_21C6D1030);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v137 = &v115[-v14];
  v140 = type metadata accessor for LocalizedSettingValue();
  v139 = *(v140 - 8);
  v15 = *(v139 + 64);
  MEMORY[0x28223BE20](v140);
  v142 = &v115[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v17);
  v141 = &v115[-v18];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6DA0, &unk_21C6D0E50);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v138 = &v115[-v21];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6DA8, &unk_21C6D1A90);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v25 = &v115[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v26);
  v28 = &v115[-v27];
  v29 = type metadata accessor for PropertyListValue();
  v146 = *(v29 - 8);
  v30 = *(v146 + 64);
  MEMORY[0x28223BE20](v29);
  v134 = &v115[-((v31 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v32);
  v143 = &v115[-v33];
  MEMORY[0x28223BE20](v34);
  v36 = &v115[-v35];
  MEMORY[0x28223BE20](v37);
  v144 = &v115[-v38];
  MEMORY[0x28223BE20](v39);
  v145 = &v115[-v40];
  v41 = sub_21C6CE010();
  v42 = *(*(v41 - 8) + 64);
  MEMORY[0x28223BE20](v41 - 8);
  v148 = &v115[-((v43 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v156 = sub_21C6CDF00();
  v44 = *(v156 - 8);
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v156);
  v47 = &v115[-((v46 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v48 = sub_21C6CEB80();
  v49 = *(*(v48 - 8) + 64);
  MEMORY[0x28223BE20](v48 - 8);
  v150 = sub_21C6CDF20();
  v147 = *(v150 - 8);
  v50 = *(v147 + 64);
  MEMORY[0x28223BE20](v150);
  v133 = &v115[-((v51 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v52);
  v54 = &v115[-v53];
  MEMORY[0x28223BE20](v55);
  v151 = &v115[-v56];
  if (!*(a2 + 16))
  {
    goto LABEL_21;
  }

  v57 = sub_21C6C70F8(0x656C746954, 0xE500000000000000);
  if ((v58 & 1) == 0)
  {
    goto LABEL_21;
  }

  sub_21C6A2734(*(a2 + 56) + 32 * v57, &v162);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_21;
  }

  v59 = HIBYTE(*(&v161 + 1)) & 0xFLL;
  if ((*(&v161 + 1) & 0x2000000000000000) == 0)
  {
    v59 = v161 & 0xFFFFFFFFFFFFLL;
  }

  if (!v59)
  {

LABEL_21:

LABEL_22:

    goto LABEL_23;
  }

  v129 = a1;
  sub_21C6CEB70();
  v132 = v44;
  v60 = *(v44 + 16);
  v131 = v44 + 16;
  v130 = v60;
  v60(v47, v157, v156);

  sub_21C6CE000();
  sub_21C6CDF30();
  if (!*(a2 + 16) || (v61 = sub_21C6C70F8(7955787, 0xE300000000000000), (v62 & 1) == 0))
  {

LABEL_19:
    (*(v147 + 8))(v151, v150);
    v44 = v132;
    goto LABEL_23;
  }

  sub_21C6A2734(*(a2 + 56) + 32 * v61, &v162);
  v63 = swift_dynamicCast();
  v44 = v132;
  if ((v63 & 1) == 0)
  {
    (*(v147 + 8))(v151, v150);

    goto LABEL_22;
  }

  v64 = v161;
  v65 = HIBYTE(*(&v161 + 1)) & 0xFLL;
  if ((*(&v161 + 1) & 0x2000000000000000) == 0)
  {
    v65 = v161 & 0xFFFFFFFFFFFFLL;
  }

  if (!v65)
  {
    (*(v147 + 8))(v151, v150);

    goto LABEL_22;
  }

  v128 = v161;
  if (!*(a2 + 16) || (v66 = sub_21C6C70F8(0x56746C7561666544, 0xEC00000065756C61), (v67 & 1) == 0))
  {

LABEL_26:
    (*(v147 + 8))(v151, v150);
    goto LABEL_23;
  }

  sub_21C6A2734(*(a2 + 56) + 32 * v66, &v161);
  sub_21C6A6FC0(&v161, &v162);
  sub_21C6A2734(&v162, &v161);
  sub_21C6C50F8(&v161, v28);
  v68 = *(v146 + 48);
  v127 = (v146 + 48);
  v126 = v68;
  if ((v68)(v28, 1, v29) == 1)
  {

    __swift_destroy_boxed_opaque_existential_1(&v162);
    (*(v147 + 8))(v151, v150);
    sub_21C6A6FD0(v28);
LABEL_23:
    (*(v44 + 8))(v157, v156);
    v69 = type metadata accessor for RadioGroupSetting();
    return (*(*(v69 - 8) + 56))(v154, 1, 1, v69);
  }

  v71 = v28;
  v72 = v145;
  sub_21C6A7100(v71, v145, type metadata accessor for PropertyListValue);
  if (!*(a2 + 16) || (v73 = sub_21C6C70F8(0x7365756C6156, 0xE600000000000000), (v74 & 1) == 0))
  {

    v75 = v72;
LABEL_33:
    sub_21C6A70A0(v75, type metadata accessor for PropertyListValue);
    __swift_destroy_boxed_opaque_existential_1(&v162);
    goto LABEL_26;
  }

  sub_21C6A2734(*(a2 + 56) + 32 * v73, &v160);
  sub_21C6A6FC0(&v160, &v161);
  sub_21C6A2734(&v161, &v160);
  sub_21C6C50F8(&v160, v25);
  if ((v126)(v25, 1, v29) == 1)
  {

    __swift_destroy_boxed_opaque_existential_1(&v161);
    sub_21C6A70A0(v72, type metadata accessor for PropertyListValue);
    __swift_destroy_boxed_opaque_existential_1(&v162);
    (*(v147 + 8))(v151, v150);
    sub_21C6A6FD0(v25);
    goto LABEL_23;
  }

  v76 = v25;
  v77 = v144;
  sub_21C6A7100(v76, v144, type metadata accessor for PropertyListValue);
  sub_21C6A7038(v77, v36, type metadata accessor for PropertyListValue);
  if (swift_getEnumCaseMultiPayload() != 6)
  {

    sub_21C6A70A0(v77, type metadata accessor for PropertyListValue);
    __swift_destroy_boxed_opaque_existential_1(&v161);
    sub_21C6A70A0(v145, type metadata accessor for PropertyListValue);
    __swift_destroy_boxed_opaque_existential_1(&v162);
    (*(v147 + 8))(v151, v150);
    sub_21C6A70A0(v36, type metadata accessor for PropertyListValue);
    goto LABEL_23;
  }

  v78 = *v36;
  if (!*(a2 + 16) || (v79 = sub_21C6C70F8(0x73656C746954, 0xE600000000000000), (v80 & 1) == 0))
  {

    sub_21C6A70A0(v77, type metadata accessor for PropertyListValue);
    __swift_destroy_boxed_opaque_existential_1(&v161);
    v75 = v145;
    goto LABEL_33;
  }

  v125 = v78;
  v118 = *(&v64 + 1);
  sub_21C6A2734(*(a2 + 56) + 32 * v79, &v160);
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6DB0, &unk_21C6D0E60);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {

    v82 = &v157;
LABEL_59:
    v96 = *(v82 - 32);

    sub_21C6A70A0(v144, type metadata accessor for PropertyListValue);
    __swift_destroy_boxed_opaque_existential_1(&v161);
    sub_21C6A70A0(v145, type metadata accessor for PropertyListValue);
    __swift_destroy_boxed_opaque_existential_1(&v162);
    goto LABEL_19;
  }

  v123 = v158;
  if (*(a2 + 16) && (result = sub_21C6C70F8(0xD000000000000014, 0x800000021C6D3150), (v81 & 1) != 0) && (sub_21C6A2734(*(a2 + 56) + 32 * result, &v160), result = swift_dynamicCast(), result))
  {
    v116 = v158;
  }

  else
  {
    v116 = 0;
  }

  v83 = *(v123 + 16);
  v122 = *(v125 + 16);
  if (v122 != v83)
  {

    v82 = &v155;
    goto LABEL_59;
  }

  if (!v122)
  {
    v127 = MEMORY[0x277D84F90];
LABEL_61:

LABEL_63:
    if (*(a2 + 16) && (v97 = sub_21C6C70F8(0x65547265746F6F46, 0xEA00000000007478), (v98 & 1) != 0) && (sub_21C6A2734(*(a2 + 56) + 32 * v97, &v160), (swift_dynamicCast() & 1) != 0) && v159)
    {

      sub_21C6CEB70();
      v130(v47, v157, v156);

      sub_21C6CE000();
      v99 = v137;
      sub_21C6CDF30();
      (*(v147 + 56))(v99, 0, 1, v150);
    }

    else
    {
      (*(v147 + 56))(v137, 1, 1, v150);
    }

    if (*(a2 + 16) && (v100 = sub_21C6C70F8(0xD00000000000001CLL, 0x800000021C6D3170), (v101 & 1) != 0))
    {
      sub_21C6A2734(*(a2 + 56) + 32 * v100, &v160);

      if (swift_dynamicCast())
      {
        sub_21C6A70A0(v144, type metadata accessor for PropertyListValue);
        __swift_destroy_boxed_opaque_existential_1(&v161);
        __swift_destroy_boxed_opaque_existential_1(&v162);
        v102 = v158;
LABEL_75:
        v103 = *(v147 + 32);
        v104 = v133;
        v105 = v150;
        v103(v133, v151, v150);
        v106 = v134;
        sub_21C6A7100(v145, v134, type metadata accessor for PropertyListValue);
        v107 = v154;
        *v154 = 1;
        v107[1] = v129 & 1;
        v108 = type metadata accessor for RadioGroupSetting();
        v103(&v107[v108[6]], v104, v105);
        sub_21C6AC488(v137, &v107[v108[7]]);
        v109 = &v107[v108[8]];
        v110 = v118;
        *v109 = v128;
        v109[1] = v110;
        sub_21C6A7100(v106, &v107[v108[9]], type metadata accessor for PropertyListValue);
        *&v107[v108[10]] = v127;
        v107[v108[11]] = v116;
        v111 = &v107[v108[12]];
        v112 = v152;
        *v111 = v135;
        v111[1] = v112;
        v113 = &v107[v108[13]];
        v114 = v153;
        *v113 = v136;
        v113[1] = v114;
        *&v107[v108[14]] = v102;
        (*(*(v108 - 1) + 56))(v107, 0, 1, v108);
        return (*(v132 + 8))(v157, v156);
      }
    }

    else
    {
    }

    sub_21C6A70A0(v144, type metadata accessor for PropertyListValue);
    __swift_destroy_boxed_opaque_existential_1(&v161);
    __swift_destroy_boxed_opaque_existential_1(&v162);
    v102 = MEMORY[0x277D84F90];
    goto LABEL_75;
  }

  v84 = 0;
  v121 = (v147 + 16);
  v120 = (v147 + 56);
  v119 = (v147 + 8);
  v126 = (v123 + 40);
  v127 = MEMORY[0x277D84F90];
  v85 = v140;
  while (v84 < *(v125 + 16))
  {
    result = sub_21C6A7038(v125 + ((*(v146 + 80) + 32) & ~*(v146 + 80)) + *(v146 + 72) * v84, v143, type metadata accessor for PropertyListValue);
    v86 = *(v123 + 16);
    v124 = v84;
    if (v84 == v86)
    {

      sub_21C6A70A0(v143, type metadata accessor for PropertyListValue);
      goto LABEL_63;
    }

    if (v84 >= v86)
    {
      goto LABEL_77;
    }

    v87 = *(v126 - 1);
    v88 = *v126;
    v89 = v138;
    sub_21C6A7100(v143, v138, type metadata accessor for PropertyListValue);

    sub_21C6CEB70();
    v130(v47, v157, v156);

    sub_21C6CE000();
    sub_21C6CDF30();
    v90 = v141;
    sub_21C6A7100(v89, &v141[*(v85 + 24)], type metadata accessor for PropertyListValue);
    v91 = v150;
    (*v121)(v90, v54, v150);
    v92 = *v120;
    (*v120)(v90, 0, 1, v91);
    v92(&v90[*(v85 + 20)], 1, 1, v91);
    sub_21C6A7038(v90, v142, type metadata accessor for LocalizedSettingValue);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v127 = sub_21C6C6EA4(0, v127[2] + 1, 1, v127);
    }

    v94 = v127[2];
    v93 = v127[3];
    if (v94 >= v93 >> 1)
    {
      v127 = sub_21C6C6EA4(v93 > 1, v94 + 1, 1, v127);
    }

    v84 = v124 + 1;
    sub_21C6A70A0(v141, type metadata accessor for LocalizedSettingValue);
    (*v119)(v54, v150);
    v95 = v127;
    v127[2] = v94 + 1;
    result = sub_21C6A7100(v142, v95 + ((*(v139 + 80) + 32) & ~*(v139 + 80)) + *(v139 + 72) * v94, type metadata accessor for LocalizedSettingValue);
    v126 += 16;
    if (v122 == v84)
    {
      goto LABEL_61;
    }
  }

  __break(1u);
LABEL_77:
  __break(1u);
  return result;
}

uint64_t sub_21C6AC32C()
{
  if (*v0)
  {
    v1 = 0xD000000000000015;
  }

  else
  {
    v1 = 0xD000000000000010;
  }

  if (*v0)
  {
    v2 = "PSGroupSpecifier";
  }

  else
  {
    v2 = "PSMultiValueSpecifier";
  }

  MEMORY[0x21CF0F390](v1, v2 | 0x8000000000000000);

  MEMORY[0x21CF0F390](46, 0xE100000000000000);
  v3 = type metadata accessor for RadioGroupSetting();
  MEMORY[0x21CF0F390](*&v0[*(v3 + 32)], *&v0[*(v3 + 32) + 8]);
  MEMORY[0x21CF0F390](46, 0xE100000000000000);
  v4 = &v0[*(v3 + 24)];
  v5 = sub_21C6CDF10();
  MEMORY[0x21CF0F390](v5);

  return 0;
}

uint64_t sub_21C6AC414@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21C6AC32C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t type metadata accessor for RadioGroupSetting()
{
  result = qword_27CDE6F30;
  if (!qword_27CDE6F30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21C6AC488(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6F10, &qword_21C6D1030);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_21C6AC520()
{
  sub_21C6CDF20();
  if (v0 <= 0x3F)
  {
    sub_21C6AC6CC(319, &qword_27CDE6F40, MEMORY[0x277CC9130], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for PropertyListValue();
      if (v2 <= 0x3F)
      {
        sub_21C6AC6CC(319, &qword_27CDE6F48, type metadata accessor for LocalizedSettingValue, MEMORY[0x277D83940]);
        if (v3 <= 0x3F)
        {
          sub_21C6A2ED4(319, &qword_27CDE6C68, MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            sub_21C6A2ED4(319, &qword_27CDE6C70, MEMORY[0x277D83940]);
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

void sub_21C6AC6CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t type metadata accessor for RadioGroupSettingView()
{
  result = qword_27CDE6F50;
  if (!qword_27CDE6F50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21C6AC7A4()
{
  sub_21C6A7260();
  if (v0 <= 0x3F)
  {
    type metadata accessor for RadioGroupSetting();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_21C6AC844()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6F10, &qword_21C6D1030);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v26[-v3];
  v5 = sub_21C6CDF20();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v26[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v12 = &v26[-v11];
  v27 = v0;
  v13 = sub_21C6CE5A0();
  LOBYTE(v33) = 1;
  sub_21C6ACF90(v0, v40);
  *&v32[7] = v40[0];
  *&v32[55] = v41;
  *&v32[39] = v40[2];
  *&v32[23] = v40[1];
  v14 = v33;
  v33 = v13;
  v34 = 0;
  v35 = v14;
  v36 = *v32;
  *&v39[15] = *(&v41 + 1);
  *v39 = *&v32[48];
  v38 = *&v32[32];
  v37 = *&v32[16];
  v15 = v0 + *(type metadata accessor for RadioGroupSettingView() + 20);
  v16 = type metadata accessor for RadioGroupSetting();
  sub_21C6A96C0(v15 + *(v16 + 28), v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_21C6A9730(v4);
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
  }

  else
  {
    (*(v6 + 32))(v12, v4, v5);
    (*(v6 + 16))(v9, v12, v5);
    v17 = sub_21C6CE750();
    v18 = v21;
    v23 = v22;
    v20 = v24;
    (*(v6 + 8))(v12, v5);
    v19 = v23 & 1;
  }

  v28 = v17;
  v29 = v18;
  v30 = v19;
  v31 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6F60, &qword_21C6D1128);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6F68, &qword_21C6D1130);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6F70, &qword_21C6D1138);
  sub_21C694224(&qword_27CDE6F78, &qword_27CDE6F60, &qword_21C6D1128);
  sub_21C6AD134();
  sub_21C6AD218();
  return sub_21C6CEA50();
}

void sub_21C6ACB90(uint64_t a1)
{
  v2 = a1 + *(type metadata accessor for RadioGroupSettingView() + 20);
  v3 = type metadata accessor for RadioGroupSetting();
  v4 = *(v2 + *(v3 + 40));
  if (*(v2 + *(v3 + 44)) == 1)
  {
    v14[0] = *(v2 + *(v3 + 40));

    sub_21C6AD31C(v14);
    v4 = v14[0];
  }

  else
  {
    v5 = *(v2 + *(v3 + 40));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6DD0, &qword_21C6D2540);
  sub_21C694224(&qword_27CDE6DD8, &qword_27CDE6DD0, &qword_21C6D2540);
  v6 = sub_21C6CE430();
  v8 = *a1;
  if (*a1)
  {
    v9 = v6;
    v10 = v7;
    v11 = v8;
    v12 = sub_21C6CE1B0();
    v14[0] = v9;
    v14[1] = v10;
    v14[2] = v4;
    v14[3] = v12;
    v14[4] = v8;
    sub_21C6AC32C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6EB0, &unk_21C6D1140);
    sub_21C6A93C0();
    sub_21C6CE7F0();
  }

  else
  {
    v13 = *(a1 + 8);
    sub_21C6CE410();
    __break(1u);

    __break(1u);
  }
}

void sub_21C6ACD58(uint64_t *a1@<X8>)
{
  v3 = sub_21C6CE570();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v1 + *(type metadata accessor for RadioGroupSettingView() + 20);
  if (*(v5 + 1) == 1 && (v6 = (v5 + *(type metadata accessor for RadioGroupSetting() + 48)), v7 = *v6, v8 = v6[1], objc_allocWithZone(MEMORY[0x277CC1E70]), , v9 = sub_21C6BF2EC(v7, v8, 0), (v14 = v9) != 0))
  {
    sub_21C6CE560();
    sub_21C6CE550();
    v15 = [v14 localizedName];
    sub_21C6CEBC0();

    sub_21C6CE540();

    sub_21C6CE550();
    sub_21C6CE590();
    if (qword_27CDE67D8 != -1)
    {
      swift_once();
    }

    v16 = qword_27CDE9D58;
    v10 = sub_21C6CE740();
    v11 = v17;
    v19 = v18;
    v13 = v20;

    v12 = v19 & 1;
  }

  else
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
  }

  *a1 = v10;
  a1[1] = v11;
  a1[2] = v12;
  a1[3] = v13;
}

uint64_t sub_21C6ACF90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21C6CDF20();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21C6ACD58(v21);
  v9 = v21[0];
  v10 = v21[1];
  v11 = v21[2];
  v12 = v21[3];
  v13 = a1 + *(type metadata accessor for RadioGroupSettingView() + 20);
  v14 = type metadata accessor for RadioGroupSetting();
  (*(v5 + 16))(v8, v13 + *(v14 + 24), v4);
  v15 = sub_21C6CE750();
  v17 = v16;
  LOBYTE(v5) = v18 & 1;
  LOBYTE(v21[0]) = v18 & 1;
  *a2 = v9;
  *(a2 + 8) = v10;
  *(a2 + 16) = v11;
  *(a2 + 24) = v12;
  *(a2 + 32) = v15;
  *(a2 + 40) = v16;
  *(a2 + 48) = v18 & 1;
  *(a2 + 56) = v19;
  sub_21C6AD294(v9, v10, v11, v12);
  sub_21C692AE8(v15, v17, v5);

  sub_21C692AD8(v15, v17, v5);

  return sub_21C6AD2D8(v9, v10, v11, v12);
}

unint64_t sub_21C6AD134()
{
  result = qword_27CDE6F80;
  if (!qword_27CDE6F80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDE6F68, &qword_21C6D1130);
    sub_21C6A93C0();
    sub_21C6AD1C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDE6F80);
  }

  return result;
}

unint64_t sub_21C6AD1C0()
{
  result = qword_27CDE6D70;
  if (!qword_27CDE6D70)
  {
    sub_21C6CE690();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDE6D70);
  }

  return result;
}

unint64_t sub_21C6AD218()
{
  result = qword_27CDE6F88;
  if (!qword_27CDE6F88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDE6F70, &qword_21C6D1138);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDE6F88);
  }

  return result;
}

uint64_t sub_21C6AD294(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_21C692AE8(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_21C6AD2D8(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_21C692AD8(result, a2, a3 & 1);
  }

  return result;
}

void sub_21C6AD31C(void **a1)
{
  v2 = *(type metadata accessor for LocalizedSettingValue() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_21C6B0214(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_21C6AD3C4(v5);
  *a1 = v3;
}

void sub_21C6AD3C4(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_21C6CEE00();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for LocalizedSettingValue();
        v6 = sub_21C6CEC60();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for LocalizedSettingValue() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_21C6ADE04(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_21C6AD4F0(0, v2, 1, a1);
  }
}

void sub_21C6AD4F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6F10, &qword_21C6D1030);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v87 = &v60[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v78 = &v60[-v12];
  v13 = sub_21C6CDF20();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v69 = &v60[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v17);
  v77 = &v60[-v18];
  MEMORY[0x28223BE20](v19);
  v68 = &v60[-v20];
  v80 = type metadata accessor for LocalizedSettingValue();
  v21 = *(*(v80 - 8) + 64);
  MEMORY[0x28223BE20](v80);
  v72 = &v60[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v23);
  v25 = &v60[-v24];
  MEMORY[0x28223BE20](v26);
  v29 = &v60[-v28];
  v62 = a2;
  if (a3 != a2)
  {
    v30 = *a4;
    v31 = *(v27 + 72);
    v81 = (v14 + 48);
    v74 = (v14 + 16);
    v75 = (v14 + 32);
    v73 = (v14 + 8);
    v32 = v30 + v31 * (a3 - 1);
    v70 = -v31;
    v71 = v30;
    v33 = a1 - a3;
    v61 = v31;
    v34 = v30 + v31 * a3;
    v76 = &v60[-v28];
    v79 = v25;
    v67 = v13;
LABEL_5:
    v66 = a3;
    v63 = v34;
    v64 = v33;
    v35 = v33;
    v65 = v32;
    v36 = v78;
    while (1)
    {
      sub_21C6B0228(v34, v29);
      sub_21C6B0228(v32, v25);
      sub_21C6A96C0(v29, v36);
      v37 = *v81;
      if ((*v81)(v36, 1, v13) == 1)
      {
        sub_21C6A9730(v36);
        v38 = *(v80 + 24);
        sub_21C6C5BF8(v86);
        if (swift_dynamicCast())
        {
          v39 = v84;
          v40 = v85;
        }

        else
        {
          sub_21C6C5BF8(v86);
          sub_21C6B028C();
          if (swift_dynamicCast())
          {
            v50 = v84;
            v51 = [v84 stringValue];
            v39 = sub_21C6CEBC0();
            v40 = v52;
          }

          else
          {
            v39 = 0;
            v40 = 0xE000000000000000;
          }
        }
      }

      else
      {
        v41 = v68;
        (*v75)(v68, v36, v13);
        (*v74)(v77, v41, v13);
        v39 = sub_21C6CEBD0();
        v40 = v42;
        (*v73)(v41, v13);
      }

      v84 = v39;
      v85 = v40;
      v43 = v79;
      v44 = v87;
      sub_21C6A96C0(v79, v87);
      if (v37(v44, 1, v13) == 1)
      {
        sub_21C6A9730(v87);
        v45 = *(v80 + 24);
        sub_21C6C5BF8(v86);
        v25 = v43;
        if (swift_dynamicCast())
        {
          v46 = v82;
          v47 = v83;
        }

        else
        {
          sub_21C6C5BF8(v86);
          sub_21C6B028C();
          if (swift_dynamicCast())
          {
            v53 = v82;
            v54 = [v82 stringValue];
            v46 = sub_21C6CEBC0();
            v47 = v55;

            v25 = v79;
          }

          else
          {
            v46 = 0;
            v47 = 0xE000000000000000;
          }
        }

        v29 = v76;
        v13 = v67;
      }

      else
      {
        v48 = v69;
        (*v75)(v69, v87, v13);
        (*v74)(v77, v48, v13);
        v46 = sub_21C6CEBD0();
        v47 = v49;
        (*v73)(v48, v13);
        v25 = v43;
        v29 = v76;
      }

      v86[0] = v46;
      v86[1] = v47;
      sub_21C68F5F0();
      v56 = sub_21C6CED40();

      sub_21C6B02D8(v25);
      sub_21C6B02D8(v29);
      v57 = v56 == -1;
      v36 = v78;
      if (!v57)
      {
LABEL_4:
        a3 = v66 + 1;
        v32 = v65 + v61;
        v33 = v64 - 1;
        v34 = v63 + v61;
        if (v66 + 1 == v62)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v71)
      {
        break;
      }

      v58 = v72;
      sub_21C6AAA94(v34, v72);
      swift_arrayInitWithTakeFrontToBack();
      sub_21C6AAA94(v58, v32);
      v32 += v70;
      v34 += v70;
      if (__CFADD__(v35++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_21C6ADBE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, char *))
{
  v37 = a4;
  v36 = type metadata accessor for LocalizedSettingValue();
  v9 = *(*(v36 - 8) + 64);
  MEMORY[0x28223BE20](v36);
  v35 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v27 - v12;
  MEMORY[0x28223BE20](v14);
  v17 = &v27 - v16;
  v29 = a2;
  if (a3 != a2)
  {
    v18 = *(v15 + 72);
    v19 = *v4 + v18 * (a3 - 1);
    v20 = -v18;
    v21 = a1 - a3;
    v34 = *v4;
    v28 = v18;
    v22 = v34 + v18 * a3;
LABEL_4:
    v32 = v19;
    v33 = a3;
    v30 = v22;
    v31 = v21;
    v23 = v19;
    while (1)
    {
      sub_21C6B0228(v22, v17);
      sub_21C6B0228(v23, v13);
      v24 = v37(v17, v13);
      sub_21C6B02D8(v13);
      sub_21C6B02D8(v17);
      if (v5)
      {
        break;
      }

      if (v24)
      {
        if (!v34)
        {
          __break(1u);
          return;
        }

        v25 = v35;
        sub_21C6AAA94(v22, v35);
        swift_arrayInitWithTakeFrontToBack();
        sub_21C6AAA94(v25, v23);
        v23 += v20;
        v22 += v20;
        if (!__CFADD__(v21++, 1))
        {
          continue;
        }
      }

      a3 = v33 + 1;
      v19 = v32 + v28;
      v21 = v31 - 1;
      v22 = v30 + v28;
      if (v33 + 1 != v29)
      {
        goto LABEL_4;
      }

      return;
    }
  }
}

void sub_21C6ADE04(unint64_t *a1, uint64_t a2, unint64_t a3, int64_t a4)
{
  v5 = v4;
  v184 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6F10, &qword_21C6D1030);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v180 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v180 - v13;
  MEMORY[0x28223BE20](v15);
  v196 = &v180 - v16;
  MEMORY[0x28223BE20](v17);
  v195 = &v180 - v18;
  v19 = sub_21C6CDF20();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v203 = &v180 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v202 = &v180 - v24;
  MEMORY[0x28223BE20](v25);
  v190 = &v180 - v26;
  MEMORY[0x28223BE20](v27);
  v212 = &v180 - v28;
  MEMORY[0x28223BE20](v29);
  v189 = &v180 - v30;
  v217 = type metadata accessor for LocalizedSettingValue();
  v197 = *(v217 - 8);
  v31 = *(v197 + 64);
  MEMORY[0x28223BE20](v217);
  v186 = &v180 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v206 = &v180 - v34;
  MEMORY[0x28223BE20](v35);
  v37 = &v180 - v36;
  MEMORY[0x28223BE20](v38);
  v40 = &v180 - v39;
  MEMORY[0x28223BE20](v41);
  v200 = &v180 - v42;
  MEMORY[0x28223BE20](v43);
  v199 = &v180 - v44;
  MEMORY[0x28223BE20](v45);
  v181 = &v180 - v46;
  MEMORY[0x28223BE20](v47);
  v180 = &v180 - v48;
  v198 = a3;
  v49 = *(a3 + 8);
  if (v49 >= 1)
  {
    v50 = 0;
    v218 = (v20 + 48);
    v210 = (v20 + 16);
    v211 = (v20 + 32);
    v51 = MEMORY[0x277D84F90];
    v209 = (v20 + 8);
    v183 = a4;
    v214 = v11;
    v215 = v19;
    v207 = v37;
    v208 = v14;
    v213 = v40;
    while (1)
    {
      v52 = v50;
      v188 = v51;
      if (v50 + 1 < v49)
      {
        v53 = v37;
        v201 = v49;
        v182 = v5;
        v54 = *v198;
        v55 = *(v197 + 72);
        v56 = *v198 + v55 * (v50 + 1);
        v57 = v180;
        sub_21C6B0228(v56, v180);
        v185 = v52;
        v58 = v181;
        sub_21C6B0228(v54 + v55 * v52, v181);
        v223 = sub_21C6BC874(0);
        v224 = v59;
        v221 = sub_21C6BC874(0);
        v222 = v60;
        v204 = sub_21C68F5F0();
        v205 = sub_21C6CED40();

        sub_21C6B02D8(v58);
        sub_21C6B02D8(v57);
        v61 = v185 + 2;
        v216 = v55;
        v62 = v54 + v55 * (v185 + 2);
        v63 = v200;
        do
        {
          v70 = v215;
          a3 = v199;
          if (v201 == v61)
          {
            v88 = v208;
            v87 = v201;
            goto LABEL_26;
          }

          sub_21C6B0228(v62, v199);
          sub_21C6B0228(v56, v63);
          v71 = a3;
          v72 = v195;
          sub_21C6A96C0(v71, v195);
          v73 = *v218;
          if ((*v218)(v72, 1, v70) == 1)
          {
            sub_21C6A9730(v72);
            v74 = *(v217 + 24);
            sub_21C6C5BF8(&v223);
            if (swift_dynamicCast())
            {
              v75 = v221;
              v76 = v222;
            }

            else
            {
              sub_21C6C5BF8(&v223);
              sub_21C6B028C();
              if (swift_dynamicCast())
              {
                v79 = v221;
                v80 = [v221 stringValue];
                v75 = sub_21C6CEBC0();
                v76 = v81;

                v70 = v215;
              }

              else
              {
                v75 = 0;
                v76 = 0xE000000000000000;
              }
            }
          }

          else
          {
            v77 = v189;
            (*v211)(v189, v72, v70);
            (*v210)(v212, v77, v70);
            v75 = sub_21C6CEBD0();
            v76 = v78;
            (*v209)(v77, v70);
          }

          v221 = v75;
          v222 = v76;
          v82 = v196;
          sub_21C6A96C0(v200, v196);
          if (v73(v82, 1, v70) == 1)
          {
            sub_21C6A9730(v82);
            v83 = *(v217 + 24);
            sub_21C6C5BF8(&v223);
            if (swift_dynamicCast())
            {
              v65 = v219;
              v67 = v220;
            }

            else
            {
              sub_21C6C5BF8(&v223);
              sub_21C6B028C();
              if (swift_dynamicCast())
              {
                v84 = v219;
                v85 = [v219 stringValue];
                v65 = sub_21C6CEBC0();
                v67 = v86;
              }

              else
              {
                v65 = 0;
                v67 = 0xE000000000000000;
              }
            }
          }

          else
          {
            v64 = v190;
            (*v211)(v190, v82, v70);
            (*v210)(v212, v64, v70);
            v65 = sub_21C6CEBD0();
            v67 = v66;
            (*v209)(v64, v70);
          }

          v68 = v205 == -1;
          v223 = v65;
          v224 = v67;
          a3 = sub_21C6CED40();

          v63 = v200;
          sub_21C6B02D8(v200);
          sub_21C6B02D8(v199);
          v69 = v68 ^ (a3 != -1);
          ++v61;
          v62 += v216;
          v56 += v216;
          v53 = v207;
        }

        while ((v69 & 1) != 0);
        v87 = v61 - 1;
        v88 = v208;
LABEL_26:
        a4 = v183;
        v5 = v182;
        v52 = v185;
        v37 = v53;
        if (v205 != -1)
        {
          goto LABEL_39;
        }

        if (v87 < v185)
        {
          __break(1u);
LABEL_165:
          __break(1u);
LABEL_166:
          __break(1u);
LABEL_167:
          __break(1u);
LABEL_168:
          __break(1u);
LABEL_169:
          __break(1u);
LABEL_170:
          __break(1u);
          return;
        }

        if (v185 < v87)
        {
          a3 = v216 * (v87 - 1);
          v89 = v87 * v216;
          v201 = v87;
          v90 = v185;
          v91 = v185 * v216;
          do
          {
            if (v90 != --v87)
            {
              v92 = *v198;
              if (!*v198)
              {
                goto LABEL_168;
              }

              sub_21C6AAA94(v92 + v91, v186);
              if (v91 < a3 || v92 + v91 >= v92 + v89)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v91 != a3)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              sub_21C6AAA94(v186, v92 + a3);
              v53 = v207;
            }

            ++v90;
            a3 -= v216;
            v89 -= v216;
            v91 += v216;
          }

          while (v90 < v87);
          a4 = v183;
          v40 = v213;
          v52 = v185;
          v87 = v201;
          v37 = v53;
          v14 = v208;
        }

        else
        {
LABEL_39:
          v40 = v213;
          v14 = v88;
        }
      }

      else
      {
        v87 = v50 + 1;
      }

      v93 = v198[1];
      if (v87 >= v93)
      {
        goto LABEL_49;
      }

      if (__OFSUB__(v87, v52))
      {
        goto LABEL_160;
      }

      if (v87 - v52 >= a4)
      {
LABEL_49:
        a3 = v87;
        if (v87 < v52)
        {
          goto LABEL_159;
        }

        goto LABEL_50;
      }

      if (__OFADD__(v52, a4))
      {
        goto LABEL_161;
      }

      if (v52 + a4 >= v93)
      {
        a3 = v198[1];
      }

      else
      {
        a3 = v52 + a4;
      }

      if (a3 < v52)
      {
LABEL_162:
        __break(1u);
        goto LABEL_163;
      }

      if (v87 == a3)
      {
        goto LABEL_49;
      }

      v182 = v5;
      v142 = *v198;
      v143 = *(v197 + 72);
      v144 = *v198 + v143 * (v87 - 1);
      v204 = -v143;
      v185 = v52;
      v145 = v52 - v87;
      v205 = v142;
      v187 = v143;
      v146 = v142 + v87 * v143;
      v191 = a3;
      while (2)
      {
        v201 = v87;
        v192 = v146;
        v193 = v145;
        v147 = v145;
        v194 = v144;
        v148 = v144;
        while (1)
        {
          sub_21C6B0228(v146, v40);
          v149 = v37;
          sub_21C6B0228(v148, v37);
          sub_21C6A96C0(v40, v14);
          v150 = *v218;
          v151 = v215;
          if ((*v218)(v14, 1, v215) != 1)
          {
            v155 = v14;
            v156 = v202;
            (*v211)(v202, v155, v151);
            (*v210)(v212, v156, v151);
            v153 = sub_21C6CEBD0();
            v154 = v157;
            v158 = v156;
            v159 = v207;
            (*v209)(v158, v151);
LABEL_109:
            v160 = v214;
            goto LABEL_114;
          }

          sub_21C6A9730(v14);
          v152 = *(v217 + 24);
          sub_21C6C5BF8(&v223);
          if (swift_dynamicCast())
          {
            v153 = v221;
            v154 = v222;
          }

          else
          {
            sub_21C6C5BF8(&v223);
            sub_21C6B028C();
            if (swift_dynamicCast())
            {
              v161 = v221;
              v162 = [v221 stringValue];
              v153 = sub_21C6CEBC0();
              v154 = v163;

              v151 = v215;
              v159 = v207;
              goto LABEL_109;
            }

            v153 = 0;
            v154 = 0xE000000000000000;
          }

          v151 = v215;
          v159 = v149;
          v160 = v214;
LABEL_114:
          v221 = v153;
          v222 = v154;
          v216 = v154;
          sub_21C6A96C0(v159, v160);
          if (v150(v160, 1, v151) == 1)
          {
            sub_21C6A9730(v160);
            v164 = *(v217 + 24);
            sub_21C6C5BF8(&v223);
            v37 = v159;
            if (swift_dynamicCast())
            {
              v165 = v219;
              v166 = v220;
            }

            else
            {
              sub_21C6C5BF8(&v223);
              sub_21C6B028C();
              if (swift_dynamicCast())
              {
                v172 = v219;
                v173 = [v219 stringValue];
                v165 = sub_21C6CEBC0();
                v166 = v174;

                v37 = v207;
              }

              else
              {
                v165 = 0;
                v166 = 0xE000000000000000;
              }
            }
          }

          else
          {
            v167 = v203;
            (*v211)(v203, v160, v151);
            (*v210)(v212, v167, v151);
            v165 = sub_21C6CEBD0();
            v166 = v168;
            (*v209)(v167, v151);
            v37 = v159;
          }

          v223 = v165;
          v224 = v166;
          sub_21C68F5F0();
          v169 = sub_21C6CED40();

          sub_21C6B02D8(v37);
          v40 = v213;
          sub_21C6B02D8(v213);
          if (v169 != -1)
          {
            break;
          }

          v14 = v208;
          if (!v205)
          {
            goto LABEL_165;
          }

          v170 = v206;
          sub_21C6AAA94(v146, v206);
          swift_arrayInitWithTakeFrontToBack();
          sub_21C6AAA94(v170, v148);
          v148 += v204;
          v146 += v204;
          if (__CFADD__(v147++, 1))
          {
            goto LABEL_103;
          }
        }

        v14 = v208;
LABEL_103:
        v87 = v201 + 1;
        v144 = v194 + v187;
        v145 = v193 - 1;
        v146 = v192 + v187;
        a3 = v191;
        if (v201 + 1 != v191)
        {
          continue;
        }

        break;
      }

      v5 = v182;
      v52 = v185;
      if (v191 < v185)
      {
        goto LABEL_159;
      }

LABEL_50:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v191 = a3;
      if (isUniquelyReferenced_nonNull_native)
      {
        v51 = v188;
      }

      else
      {
        v51 = sub_21C6B0110(0, *(v188 + 2) + 1, 1, v188);
      }

      v96 = *(v51 + 2);
      v95 = *(v51 + 3);
      a3 = v96 + 1;
      if (v96 >= v95 >> 1)
      {
        v51 = sub_21C6B0110((v95 > 1), v96 + 1, 1, v51);
      }

      *(v51 + 2) = a3;
      v97 = &v51[16 * v96];
      v98 = v191;
      *(v97 + 4) = v52;
      *(v97 + 5) = v98;
      v216 = *v184;
      if (!v216)
      {
        goto LABEL_169;
      }

      if (v96)
      {
        v40 = v213;
        while (1)
        {
          v99 = a3 - 1;
          if (a3 >= 4)
          {
            break;
          }

          if (a3 == 3)
          {
            v100 = *(v51 + 4);
            v101 = *(v51 + 5);
            v110 = __OFSUB__(v101, v100);
            v102 = v101 - v100;
            v103 = v110;
LABEL_70:
            if (v103)
            {
              goto LABEL_148;
            }

            v116 = &v51[16 * a3];
            v118 = *v116;
            v117 = *(v116 + 1);
            v119 = __OFSUB__(v117, v118);
            v120 = v117 - v118;
            v121 = v119;
            if (v119)
            {
              goto LABEL_151;
            }

            v122 = &v51[16 * v99 + 32];
            v124 = *v122;
            v123 = *(v122 + 1);
            v110 = __OFSUB__(v123, v124);
            v125 = v123 - v124;
            if (v110)
            {
              goto LABEL_154;
            }

            if (__OFADD__(v120, v125))
            {
              goto LABEL_155;
            }

            if (v120 + v125 >= v102)
            {
              if (v102 < v125)
              {
                v99 = a3 - 2;
              }

              goto LABEL_91;
            }

            goto LABEL_84;
          }

          v126 = &v51[16 * a3];
          v128 = *v126;
          v127 = *(v126 + 1);
          v110 = __OFSUB__(v127, v128);
          v120 = v127 - v128;
          v121 = v110;
LABEL_84:
          if (v121)
          {
            goto LABEL_150;
          }

          v129 = &v51[16 * v99];
          v131 = *(v129 + 4);
          v130 = *(v129 + 5);
          v110 = __OFSUB__(v130, v131);
          v132 = v130 - v131;
          if (v110)
          {
            goto LABEL_153;
          }

          if (v132 < v120)
          {
            goto LABEL_4;
          }

LABEL_91:
          v137 = v99 - 1;
          if (v99 - 1 >= a3)
          {
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
LABEL_150:
            __break(1u);
LABEL_151:
            __break(1u);
LABEL_152:
            __break(1u);
LABEL_153:
            __break(1u);
LABEL_154:
            __break(1u);
LABEL_155:
            __break(1u);
LABEL_156:
            __break(1u);
LABEL_157:
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

          if (!*v198)
          {
            goto LABEL_166;
          }

          v52 = v14;
          v138 = v51;
          a3 = *&v51[16 * v137 + 32];
          v139 = *&v51[16 * v99 + 40];
          sub_21C6AF1A0(*v198 + *(v197 + 72) * a3, *v198 + *(v197 + 72) * *&v51[16 * v99 + 32], *v198 + *(v197 + 72) * v139, v216);
          if (v5)
          {
            goto LABEL_142;
          }

          if (v139 < a3)
          {
            goto LABEL_144;
          }

          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v140 = v138;
          }

          else
          {
            v140 = sub_21C6B0018(v138);
          }

          v37 = v207;
          if (v137 >= *(v140 + 2))
          {
            goto LABEL_145;
          }

          v14 = v52;
          v141 = &v140[16 * v137];
          *(v141 + 4) = a3;
          *(v141 + 5) = v139;
          v225 = v140;
          sub_21C6AFF8C(v99);
          v51 = v225;
          a3 = *(v225 + 2);
          v40 = v213;
          if (a3 <= 1)
          {
            goto LABEL_4;
          }
        }

        v104 = &v51[16 * a3 + 32];
        v105 = *(v104 - 64);
        v106 = *(v104 - 56);
        v110 = __OFSUB__(v106, v105);
        v107 = v106 - v105;
        if (v110)
        {
          goto LABEL_146;
        }

        v109 = *(v104 - 48);
        v108 = *(v104 - 40);
        v110 = __OFSUB__(v108, v109);
        v102 = v108 - v109;
        v103 = v110;
        if (v110)
        {
          goto LABEL_147;
        }

        v111 = &v51[16 * a3];
        v113 = *v111;
        v112 = *(v111 + 1);
        v110 = __OFSUB__(v112, v113);
        v114 = v112 - v113;
        if (v110)
        {
          goto LABEL_149;
        }

        v110 = __OFADD__(v102, v114);
        v115 = v102 + v114;
        if (v110)
        {
          goto LABEL_152;
        }

        if (v115 >= v107)
        {
          v133 = &v51[16 * v99 + 32];
          v135 = *v133;
          v134 = *(v133 + 1);
          v110 = __OFSUB__(v134, v135);
          v136 = v134 - v135;
          if (v110)
          {
            goto LABEL_156;
          }

          if (v102 < v136)
          {
            v99 = a3 - 2;
          }

          goto LABEL_91;
        }

        goto LABEL_70;
      }

      v40 = v213;
LABEL_4:
      v49 = v198[1];
      v50 = v191;
      a4 = v183;
      if (v191 >= v49)
      {
        goto LABEL_131;
      }
    }
  }

  v51 = MEMORY[0x277D84F90];
LABEL_131:
  v52 = *v184;
  if (!*v184)
  {
    goto LABEL_170;
  }

  a3 = v51;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v175 = a3;
  }

  else
  {
LABEL_163:
    v175 = sub_21C6B0018(a3);
  }

  v225 = v175;
  a3 = *(v175 + 2);
  if (a3 >= 2)
  {
    while (*v198)
    {
      v176 = *&v175[16 * a3];
      v177 = v175;
      v178 = *&v175[16 * a3 + 24];
      sub_21C6AF1A0(*v198 + *(v197 + 72) * v176, *v198 + *(v197 + 72) * *&v175[16 * a3 + 16], *v198 + *(v197 + 72) * v178, v52);
      if (v5)
      {
        goto LABEL_142;
      }

      if (v178 < v176)
      {
        goto LABEL_157;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v177 = sub_21C6B0018(v177);
      }

      if (a3 - 2 >= *(v177 + 2))
      {
        goto LABEL_158;
      }

      v179 = &v177[16 * a3];
      *v179 = v176;
      *(v179 + 1) = v178;
      v225 = v177;
      sub_21C6AFF8C(a3 - 1);
      v175 = v225;
      a3 = *(v225 + 2);
      if (a3 <= 1)
      {
        goto LABEL_142;
      }
    }

    goto LABEL_167;
  }

LABEL_142:
}

void sub_21C6AF1A0(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6F10, &qword_21C6D1030);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v113 = v103 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v112 = (v103 - v12);
  MEMORY[0x28223BE20](v13);
  v116 = v103 - v14;
  MEMORY[0x28223BE20](v15);
  v17 = v103 - v16;
  v18 = sub_21C6CDF20();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v105 = v103 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v104 = v103 - v23;
  MEMORY[0x28223BE20](v24);
  v108 = (v103 - v25);
  MEMORY[0x28223BE20](v26);
  v118 = v103 - v27;
  MEMORY[0x28223BE20](v28);
  v107 = v103 - v29;
  v122 = type metadata accessor for LocalizedSettingValue();
  v30 = *(*(v122 - 8) + 64);
  MEMORY[0x28223BE20](v122);
  v119 = (v103 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v32);
  v114 = v103 - v33;
  MEMORY[0x28223BE20](v34);
  v121 = v103 - v35;
  MEMORY[0x28223BE20](v36);
  v120 = v103 - v37;
  v39 = *(v38 + 72);
  if (!v39)
  {
    __break(1u);
LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v39 == -1)
  {
    goto LABEL_94;
  }

  v40 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v39 == -1)
  {
    goto LABEL_95;
  }

  v41 = (a2 - a1) / v39;
  v131 = a1;
  v130 = a4;
  if (v41 < v40 / v39)
  {
    v42 = v41 * v39;
    if (a4 < a1 || a1 + v42 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v114 = a4 + v42;
    v129 = a4 + v42;
    if (v42 < 1 || a2 >= a3)
    {
      goto LABEL_92;
    }

    v119 = (v19 + 48);
    v112 = (v19 + 32);
    v111 = (v19 + 16);
    v110 = (v19 + 8);
    v109 = v17;
    v113 = v39;
    v115 = a3;
    v106 = v18;
    while (1)
    {
      v45 = v120;
      sub_21C6B0228(a2, v120);
      v46 = v121;
      sub_21C6B0228(a4, v121);
      sub_21C6A96C0(v45, v17);
      v47 = *v119;
      if ((*v119)(v17, 1, v18) == 1)
      {
        break;
      }

      v52 = v107;
      (*v112)(v107, v17, v18);
      (*v111)(v118, v52, v18);
      v51 = sub_21C6CEBD0();
      v50 = v53;
      v54 = v52;
      v46 = v121;
      (*v110)(v54, v18);
LABEL_30:
      v125 = v51;
      v126 = v50;
      v58 = v116;
      sub_21C6A96C0(v46, v116);
      if (v47(v58, 1, v18) == 1)
      {
        v117 = a4;
        v59 = a2;
        sub_21C6A9730(v58);
        v60 = *(v122 + 24);
        sub_21C6C5BF8(&v127);
        v61 = swift_dynamicCast();
        v62 = v115;
        if (v61)
        {
          v63 = v123;
          v64 = v124;
        }

        else
        {
          sub_21C6C5BF8(&v127);
          sub_21C6B028C();
          if (swift_dynamicCast())
          {
            v67 = v123;
            v68 = [v123 stringValue];
            v63 = sub_21C6CEBC0();
            v64 = v69;

            v62 = v115;
          }

          else
          {
            v63 = 0;
            v64 = 0xE000000000000000;
          }
        }

        a2 = v59;
        a4 = v117;
        v17 = v109;
      }

      else
      {
        v65 = v108;
        (*v112)(v108, v58, v18);
        (*v111)(v118, v65, v18);
        v63 = sub_21C6CEBD0();
        v64 = v66;
        (*v110)(v65, v18);
        v62 = v115;
      }

      v127 = v63;
      v128 = v64;
      sub_21C68F5F0();
      v70 = sub_21C6CED40();

      sub_21C6B02D8(v121);
      sub_21C6B02D8(v120);
      if (v70 == -1)
      {
        v71 = v113;
        if (a1 < a2 || a1 >= a2 + v113)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a2)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        a2 += v71;
      }

      else
      {
        v71 = v113;
        v72 = a4 + v113;
        if (a1 < a4 || a1 >= v72)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a4)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v130 = v72;
        a4 += v71;
      }

      a1 += v71;
      v131 = a1;
      if (a4 >= v114 || a2 >= v62)
      {
        goto LABEL_92;
      }
    }

    v117 = a1;
    v48 = a2;
    sub_21C6A9730(v17);
    v49 = *(v122 + 24);
    sub_21C6C5BF8(&v127);
    if (swift_dynamicCast())
    {
      v51 = v125;
      v50 = v126;
    }

    else
    {
      sub_21C6C5BF8(&v127);
      sub_21C6B028C();
      if (swift_dynamicCast())
      {
        v55 = v125;
        v56 = [v125 stringValue];
        v51 = sub_21C6CEBC0();
        v50 = v57;

        v46 = v121;
        a2 = v48;
        v17 = v109;
        v18 = v106;
LABEL_29:
        a1 = v117;
        goto LABEL_30;
      }

      v51 = 0;
      v50 = 0xE000000000000000;
    }

    v18 = v106;
    goto LABEL_29;
  }

  v43 = v40 / v39 * v39;
  if (a4 < a2 || a2 + v43 <= a4)
  {
    swift_arrayInitWithTakeFrontToBack();
  }

  else if (a4 != a2)
  {
    swift_arrayInitWithTakeBackToFront();
  }

  v73 = a4 + v43;
  if (v43 < 1)
  {
    goto LABEL_89;
  }

  v74 = -v39;
  v116 = (v19 + 48);
  v110 = (v19 + 32);
  v109 = (v19 + 16);
  v108 = (v19 + 8);
  v75 = a4 + v43;
  v117 = a4;
  v76 = v119;
  v77 = v114;
  v120 = -v39;
  do
  {
    v103[0] = v73;
    v78 = a2;
    a2 += v74;
    v111 = a2;
    v115 = v78;
    while (1)
    {
      if (v78 <= a1)
      {
        v131 = v78;
        v73 = v103[0];
        goto LABEL_91;
      }

      v80 = a3;
      v107 = v73;
      v121 = v75 + v74;
      sub_21C6B0228(v75 + v74, v77);
      sub_21C6B0228(a2, v76);
      v81 = v112;
      sub_21C6A96C0(v77, v112);
      v82 = *v116;
      if ((*v116)(v81, 1, v18) == 1)
      {
        sub_21C6A9730(v81);
        v83 = *(v122 + 24);
        sub_21C6C5BF8(&v127);
        if (swift_dynamicCast())
        {
          v84 = v125;
          v85 = v126;
        }

        else
        {
          sub_21C6C5BF8(&v127);
          sub_21C6B028C();
          if (swift_dynamicCast())
          {
            v96 = v125;
            v97 = [v125 stringValue];
            v84 = sub_21C6CEBC0();
            v85 = v98;
          }

          else
          {
            v84 = 0;
            v85 = 0xE000000000000000;
          }
        }
      }

      else
      {
        v86 = v104;
        (*v110)(v104, v81, v18);
        (*v109)(v118, v86, v18);
        v84 = sub_21C6CEBD0();
        v85 = v87;
        (*v108)(v86, v18);
      }

      v125 = v84;
      v126 = v85;
      v88 = v113;
      sub_21C6A96C0(v119, v113);
      if (v82(v88, 1, v18) != 1)
      {
        v92 = v105;
        (*v110)(v105, v88, v18);
        (*v109)(v118, v92, v18);
        v90 = sub_21C6CEBD0();
        v91 = v93;
        (*v108)(v92, v18);
        goto LABEL_71;
      }

      sub_21C6A9730(v88);
      v89 = *(v122 + 24);
      sub_21C6C5BF8(&v127);
      if (swift_dynamicCast())
      {
        v90 = v123;
        v91 = v124;
LABEL_71:
        a2 = v111;
        goto LABEL_72;
      }

      sub_21C6C5BF8(&v127);
      sub_21C6B028C();
      if (!swift_dynamicCast())
      {
        v90 = 0;
        v91 = 0xE000000000000000;
        goto LABEL_71;
      }

      v99 = v123;
      v100 = [v123 stringValue];
      v90 = sub_21C6CEBC0();
      v91 = v101;

      a2 = v111;
LABEL_72:
      a3 = v80 + v120;
      v127 = v90;
      v128 = v91;
      sub_21C68F5F0();
      v94 = sub_21C6CED40();

      v76 = v119;
      sub_21C6B02D8(v119);
      v77 = v114;
      sub_21C6B02D8(v114);
      if (v94 == -1)
      {
        break;
      }

      v73 = v121;
      v95 = v117;
      if (v80 < v75 || a3 >= v75)
      {
        v79 = v121;
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (v80 == v75)
        {
          goto LABEL_60;
        }

        v79 = v121;
        swift_arrayInitWithTakeBackToFront();
      }

      v73 = v79;
LABEL_60:
      v75 = v73;
      v74 = v120;
      v78 = v115;
      if (v121 <= v95)
      {
        v131 = v115;
        goto LABEL_91;
      }
    }

    v102 = v117;
    if (v80 < v115 || a3 >= v115)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v80 != v115)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v73 = v107;
    v74 = v120;
  }

  while (v75 > v102);
LABEL_89:
  v131 = a2;
LABEL_91:
  v129 = v73;
LABEL_92:
  sub_21C6B002C(&v131, &v130, &v129);
}

uint64_t sub_21C6AFF8C(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_21C6B0018(v3);
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
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_21C6B002C(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for LocalizedSettingValue();
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

char *sub_21C6B0110(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6F98, &qword_21C6D1150);
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

uint64_t sub_21C6B0228(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocalizedSettingValue();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_21C6B028C()
{
  result = qword_27CDE6F90;
  if (!qword_27CDE6F90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CDE6F90);
  }

  return result;
}

uint64_t sub_21C6B02D8(uint64_t a1)
{
  v2 = type metadata accessor for LocalizedSettingValue();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21C6B0334()
{
  result = qword_27CDE6FA0;
  if (!qword_27CDE6FA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDE6FA8, &qword_21C6D1158);
    sub_21C694224(&qword_27CDE6F78, &qword_27CDE6F60, &qword_21C6D1128);
    sub_21C6AD134();
    sub_21C6AD218();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDE6FA0);
  }

  return result;
}

__n128 __swift_memcpy120_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_21C6B042C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21C6B0474(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 120) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21C6B04E0()
{
  v1 = *(v0 + 112);
  v2 = *(v1 + 16);
  if (!v2)
  {
    return 1;
  }

  v3 = [objc_opt_self() currentDevice];
  v4 = [v3 userInterfaceIdiom];

  if (v4)
  {
    v5 = 6578512;
  }

  else
  {
    v5 = 0x656E6F6850;
  }

  if (v4)
  {
    v6 = 0xE300000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  v7 = (v1 + 40);
  v8 = v2 + 1;
  do
  {
    v9 = --v8 != 0;
    if (!v8)
    {
      break;
    }

    if (*(v7 - 1) == v5 && *v7 == v6)
    {
      break;
    }

    v7 += 2;
  }

  while ((sub_21C6CEE20() & 1) == 0);

  return v9;
}

uint64_t sub_21C6B05C8()
{
  v1 = 0xD000000000000014;
  v2 = "ers";
  v3 = *v0;
  v4 = "PSSliderSpecifier";
  v5 = "PSTitleValueSpecifier";
  if (v3 == 4)
  {
    v6 = 0xD000000000000014;
  }

  else
  {
    v6 = 0xD000000000000015;
  }

  if (v3 != 4)
  {
    v5 = "PSTextFieldSpecifier";
  }

  if (v3 == 3)
  {
    v7 = 0xD000000000000015;
  }

  else
  {
    v7 = v6;
  }

  if (v3 != 3)
  {
    v4 = v5;
  }

  v8 = "PSChildPaneSpecifier";
  v9 = 0xD000000000000017;
  if (v3 != 1)
  {
    v9 = 0xD000000000000011;
    v8 = "PSToggleSwitchSpecifier";
  }

  if (*v0)
  {
    v1 = v9;
    v2 = v8;
  }

  if (*v0 <= 2u)
  {
    v10 = v1;
  }

  else
  {
    v10 = v7;
  }

  if (*v0 <= 2u)
  {
    v11 = v2;
  }

  else
  {
    v11 = v4;
  }

  MEMORY[0x21CF0F390](v10, v11 | 0x8000000000000000);

  MEMORY[0x21CF0F390](46, 0xE100000000000000);
  MEMORY[0x21CF0F390](*(v0 + 1), *(v0 + 2));
  return 0;
}

uint64_t sub_21C6B06CC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21C6B05C8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_21C6B06F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  if (*(a1 + 16))
  {
    v12 = sub_21C6C70F8(7955787, 0xE300000000000000);
    if (v13)
    {
      sub_21C6A2734(*(a1 + 56) + 32 * v12, v41);
      if (swift_dynamicCast())
      {
        v14 = HIBYTE(v40) & 0xF;
        if ((v40 & 0x2000000000000000) == 0)
        {
          v14 = v39 & 0xFFFFFFFFFFFFLL;
        }

        if (v14)
        {
          if (*(a1 + 16))
          {
            v15 = sub_21C6C70F8(0x56746C7561666544, 0xEC00000065756C61);
            if (v16)
            {
              sub_21C6A2734(*(a1 + 56) + 32 * v15, v41);
              if ((swift_dynamicCast() & 1) == 0)
              {
                goto LABEL_27;
              }

              if (*(a1 + 16))
              {
                v17 = sub_21C6C70F8(0x566D756D696E694DLL, 0xEC00000065756C61);
                if (v18)
                {
                  sub_21C6A2734(*(a1 + 56) + 32 * v17, v41);
                  if (swift_dynamicCast())
                  {
                    if (*(a1 + 16))
                    {
                      v19 = sub_21C6C70F8(0x566D756D6978614DLL, 0xEC00000065756C61);
                      if (v20)
                      {
                        sub_21C6A2734(*(a1 + 56) + 32 * v19, v41);
                        if (swift_dynamicCast())
                        {
                          if (*(a1 + 16))
                          {
                            v21 = sub_21C6C70F8(0xD000000000000011, 0x800000021C6D31B0);
                            if (v22 & 1) != 0 && (sub_21C6A2734(*(a1 + 56) + 32 * v21, v41), (swift_dynamicCast()))
                            {
                              v24 = v39;
                              v23 = v40;
                            }

                            else
                            {
                              v24 = 0;
                              v23 = 0;
                            }

                            if (*(a1 + 16))
                            {
                              v35 = sub_21C6C70F8(0xD000000000000011, 0x800000021C6D31D0);
                              if (v36 & 1) != 0 && (sub_21C6A2734(*(a1 + 56) + 32 * v35, v41), (swift_dynamicCast()))
                              {
                                v31 = v39;
                                v32 = v40;
                              }

                              else
                              {
                                v31 = 0;
                                v32 = 0;
                              }

                              if (*(a1 + 16))
                              {
                                v37 = sub_21C6C70F8(0xD00000000000001CLL, 0x800000021C6D3170);
                                if (v38)
                                {
                                  sub_21C6A2734(*(a1 + 56) + 32 * v37, v41);

                                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6DB0, &unk_21C6D0E60);
                                  result = swift_dynamicCast();
                                  if (result)
                                  {
                                    v33 = v39;
                                    goto LABEL_37;
                                  }

LABEL_36:
                                  v33 = MEMORY[0x277D84F90];
LABEL_37:
                                  v26 = v39;
                                  v27 = v40;
                                  v29 = v39;
                                  v28 = v39;
                                  v30 = v39;
                                  v34 = 2;
                                  goto LABEL_26;
                                }
                              }

LABEL_35:

                              goto LABEL_36;
                            }
                          }

                          else
                          {
                            v23 = 0;
                            v24 = 0;
                          }

                          v32 = 0;
                          v31 = 0;
                          goto LABEL_35;
                        }

                        goto LABEL_27;
                      }
                    }

                    goto LABEL_21;
                  }

LABEL_27:

                  goto LABEL_24;
                }
              }
            }
          }

LABEL_21:

          goto LABEL_25;
        }
      }

LABEL_24:

      goto LABEL_25;
    }
  }

LABEL_25:

  v26 = 0;
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v24 = 0;
  v23 = 0;
  v31 = 0;
  v32 = 0;
  a2 = 0;
  a3 = 0;
  a4 = 0;
  a5 = 0;
  v33 = 0;
  v34 = 0;
LABEL_26:
  *a6 = v34;
  a6[1] = v26;
  a6[2] = v27;
  a6[3] = v28;
  a6[4] = v29;
  a6[5] = v30;
  a6[6] = v24;
  a6[7] = v23;
  a6[8] = v31;
  a6[9] = v32;
  a6[10] = a2;
  a6[11] = a3;
  a6[12] = a4;
  a6[13] = a5;
  a6[14] = v33;
  return result;
}

__n128 __swift_memcpy144_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = result;
  *(a1 + 96) = v6;
  return result;
}

uint64_t sub_21C6B0B70(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 144))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21C6B0BB8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
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
      *(result + 144) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21C6B0C48()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6FB0, &qword_21C6D1328);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v12 - v4;
  v6 = *(v0 + 16);
  result = sub_21C6CE230();
  v14 = v17;
  v15 = v18;
  v16 = v19;
  v8 = *(v0 + 104);
  v24 = *(v0 + 88);
  v25 = v8;
  v26 = *(v0 + 120);
  v9 = *(v0 + 136);
  v10 = *(v0 + 40);
  v20 = *(v0 + 24);
  v21 = v10;
  v11 = *(v0 + 72);
  v22 = *(v0 + 56);
  v23 = v11;
  v27 = v9;
  if (*&v22 > *(&v22 + 1))
  {
    __break(1u);
  }

  else
  {
    v13 = v22;
    v12[1] = sub_21C6B0E64();
    v12[0] = sub_21C6B11A8();
    sub_21C6B14F0();
    sub_21C6CE9C0();
    sub_21C6B05C8();
    sub_21C6B1544();
    sub_21C6CE7F0();

    return (*(v2 + 8))(v5, v1);
  }

  return result;
}

uint64_t sub_21C6B0E64()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6FC8, &qword_21C6D1330);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = v26 - v3;
  v5 = sub_21C6CE4B0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(v0 + 80))
  {
    goto LABEL_7;
  }

  v11 = *(v0 + 72);
  v28 = *(v0 + 8);
  v12 = *v0;
  v27 = v12;
  if (v28 == 1)
  {
    v13 = v12;
  }

  else
  {
    v14 = v8;

    sub_21C6CECF0();
    v15 = sub_21C6CE6C0();
    sub_21C6CE170();

    sub_21C6CE4A0();
    swift_getAtKeyPath();
    sub_21C68F7D4(&v27, &qword_27CDE6FD0, &qword_21C6D1338);
    (*(v6 + 8))(v10, v14);
    v13 = v26[1];
  }

  v16 = [objc_opt_self() mainScreen];
  v17 = [v16 traitCollection];

  v18 = sub_21C6CEB90();
  v19 = [objc_opt_self() imageNamed:v18 inBundle:v13 compatibleWithTraitCollection:v17];

  if (v19)
  {
    v20 = v19;
    sub_21C6CE8F0();
    v21 = *MEMORY[0x277CE1010];
    v22 = sub_21C6CE920();
    v23 = *(v22 - 8);
    (*(v23 + 104))(v4, v21, v22);
    (*(v23 + 56))(v4, 0, 1, v22);
    v24 = sub_21C6CE910();

    sub_21C68F7D4(v4, &qword_27CDE6FC8, &qword_21C6D1330);
    return v24;
  }

  else
  {
LABEL_7:
    [objc_allocWithZone(MEMORY[0x277D755B8]) init];
    return sub_21C6CE8F0();
  }
}

uint64_t sub_21C6B11A8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6FC8, &qword_21C6D1330);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = v26 - v3;
  v5 = sub_21C6CE4B0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(v0 + 96))
  {
    goto LABEL_7;
  }

  v11 = *(v0 + 88);
  v28 = *(v0 + 8);
  v12 = *v0;
  v27 = v12;
  if (v28 == 1)
  {
    v13 = v12;
  }

  else
  {
    v14 = v8;

    sub_21C6CECF0();
    v15 = sub_21C6CE6C0();
    sub_21C6CE170();

    sub_21C6CE4A0();
    swift_getAtKeyPath();
    sub_21C68F7D4(&v27, &qword_27CDE6FD0, &qword_21C6D1338);
    (*(v6 + 8))(v10, v14);
    v13 = v26[1];
  }

  v16 = [objc_opt_self() mainScreen];
  v17 = [v16 traitCollection];

  v18 = sub_21C6CEB90();
  v19 = [objc_opt_self() imageNamed:v18 inBundle:v13 compatibleWithTraitCollection:v17];

  if (v19)
  {
    v20 = v19;
    sub_21C6CE8F0();
    v21 = *MEMORY[0x277CE1010];
    v22 = sub_21C6CE920();
    v23 = *(v22 - 8);
    (*(v23 + 104))(v4, v21, v22);
    (*(v23 + 56))(v4, 0, 1, v22);
    v24 = sub_21C6CE910();

    sub_21C68F7D4(v4, &qword_27CDE6FC8, &qword_21C6D1330);
    return v24;
  }

  else
  {
LABEL_7:
    [objc_allocWithZone(MEMORY[0x277D755B8]) init];
    return sub_21C6CE8F0();
  }
}

unint64_t sub_21C6B14F0()
{
  result = qword_27CDE6FB8;
  if (!qword_27CDE6FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDE6FB8);
  }

  return result;
}

unint64_t sub_21C6B1544()
{
  result = qword_27CDE6FC0;
  if (!qword_27CDE6FC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDE6FB0, &qword_21C6D1328);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDE6FC0);
  }

  return result;
}

unint64_t sub_21C6B15A8()
{
  result = qword_27CDE6FD8;
  if (!qword_27CDE6FD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDE6FE0, &unk_21C6D1340);
    sub_21C6B1544();
    sub_21C6AD1C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDE6FD8);
  }

  return result;
}

uint64_t sub_21C6B1634()
{
  v1 = *(v0 + OBJC_IVAR____TtC29ThirdPartyApplicationSettings20StandardGroupSetting_supportedUserInterfaceIdioms);
  if (!*(v1 + 16))
  {
    return 1;
  }

  v2 = [objc_opt_self() currentDevice];
  v3 = [v2 userInterfaceIdiom];

  if (v3)
  {
    v4 = 6578512;
  }

  else
  {
    v4 = 0x656E6F6850;
  }

  if (v3)
  {
    v5 = 0xE300000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  v6 = (v1 + 40);
  v7 = *(v1 + 16) + 1;
  do
  {
    v8 = --v7 != 0;
    if (!v7)
    {
      break;
    }

    if (*(v6 - 1) == v4 && *v6 == v5)
    {
      break;
    }

    v6 += 2;
  }

  while ((sub_21C6CEE20() & 1) == 0);

  return v8;
}

uint64_t sub_21C6B1728()
{
  sub_21C6A9730(v0 + OBJC_IVAR____TtC29ThirdPartyApplicationSettings20StandardGroupSetting_localizedHeader);
  sub_21C6A9730(v0 + OBJC_IVAR____TtC29ThirdPartyApplicationSettings20StandardGroupSetting_localizedFooter);
  v1 = *(v0 + OBJC_IVAR____TtC29ThirdPartyApplicationSettings20StandardGroupSetting_applicationBundleIdentifier + 8);

  v2 = *(v0 + OBJC_IVAR____TtC29ThirdPartyApplicationSettings20StandardGroupSetting_applicationGroupContainerIdentifier + 8);

  v3 = *(v0 + OBJC_IVAR____TtC29ThirdPartyApplicationSettings20StandardGroupSetting_items);

  v4 = *(v0 + OBJC_IVAR____TtC29ThirdPartyApplicationSettings20StandardGroupSetting_supportedUserInterfaceIdioms);

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v5, v6);
}

uint64_t type metadata accessor for StandardGroupSetting()
{
  result = qword_27CDE6FE8;
  if (!qword_27CDE6FE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21C6B1838()
{
  sub_21C6B18F8();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_21C6B18F8()
{
  if (!qword_27CDE6F40)
  {
    sub_21C6CDF20();
    v0 = sub_21C6CED30();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDE6F40);
    }
  }
}

uint64_t sub_21C6B1950()
{
  v1 = type metadata accessor for MultiValueSetting();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v91 = v86 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = type metadata accessor for TextFieldSetting();
  v4 = *(*(v90 - 8) + 64);
  MEMORY[0x28223BE20](v90);
  v94 = v86 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = type metadata accessor for TitleValueSetting();
  v6 = *(*(v89 - 8) + 64);
  MEMORY[0x28223BE20](v89);
  v93 = v86 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ToggleSetting();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v88 = v86 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ChildPaneSetting();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v87 = v86 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = type metadata accessor for Setting();
  v105 = *(v92 - 8);
  v14 = *(v105 + 64);
  MEMORY[0x28223BE20](v92);
  v16 = (v86 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v17);
  v19 = v86 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6F10, &qword_21C6D1030);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = v86 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = v86 - v25;
  v27 = sub_21C6CDF20();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  v104 = v86 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v31);
  v34 = v86 - v33;
  v111 = 0;
  v112 = 0xE000000000000000;
  if (*(v0 + 16))
  {
    v35 = 0xD000000000000015;
  }

  else
  {
    v35 = 0xD000000000000010;
  }

  if (*(v0 + 16))
  {
    v36 = "PSGroupSpecifier";
  }

  else
  {
    v36 = "PSMultiValueSpecifier";
  }

  MEMORY[0x21CF0F390](v35, v36 | 0x8000000000000000, v32);

  v113 = v111;
  v114 = v112;
  v106 = v0;
  sub_21C6A96C0(v0 + OBJC_IVAR____TtC29ThirdPartyApplicationSettings20StandardGroupSetting_localizedHeader, v26);
  v37 = *(v28 + 48);
  if (v37(v26, 1, v27) == 1)
  {
    sub_21C6A9730(v26);
  }

  else
  {
    (*(v28 + 32))(v34, v26, v27);
    v111 = 46;
    v112 = 0xE100000000000000;
    v38 = sub_21C6CDF10();
    MEMORY[0x21CF0F390](v38);

    MEMORY[0x21CF0F390](v111, v112);

    (*(v28 + 8))(v34, v27);
  }

  v39 = v106;
  sub_21C6A96C0(v106 + OBJC_IVAR____TtC29ThirdPartyApplicationSettings20StandardGroupSetting_localizedFooter, v23);
  if (v37(v23, 1, v27) == 1)
  {
    sub_21C6A9730(v23);
  }

  else
  {
    v40 = v104;
    (*(v28 + 32))(v104, v23, v27);
    v111 = 46;
    v112 = 0xE100000000000000;
    v41 = sub_21C6CDF10();
    MEMORY[0x21CF0F390](v41);

    MEMORY[0x21CF0F390](v111, v112);

    (*(v28 + 8))(v40, v27);
  }

  v42 = v94;
  v43 = v93;
  v44 = OBJC_IVAR____TtC29ThirdPartyApplicationSettings20StandardGroupSetting_items;
  swift_beginAccess();
  v45 = *(v39 + v44);
  v46 = *(v45 + 16);
  if (v46)
  {
    v47 = v45 + ((*(v105 + 80) + 32) & ~*(v105 + 80));
    v106 = *(v105 + 72);
    v86[1] = v45;

    v104 = "ers";
    v105 = 0xD000000000000014;
    v102 = "PSTitleValueSpecifier";
    v103 = "PSSliderSpecifier";
    v100 = "PSChildPaneSpecifier";
    v101 = "PSTextFieldSpecifier";
    v98 = 0xD000000000000011;
    v99 = "PSToggleSwitchSpecifier";
    while (1)
    {
      sub_21C6B2424(v47, v19);
      v109 = 46;
      v110 = 0xE100000000000000;
      sub_21C6B2424(v19, v16);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 2)
      {
        if (EnumCaseMultiPayload == 3)
        {
          sub_21C6B2488(v16, v43, type metadata accessor for TitleValueSetting);
          v107 = 0;
          v108 = 0xE000000000000000;
          v64 = *v43;
          if (v64 == 4)
          {
            v65 = v105;
          }

          else
          {
            v65 = 0xD000000000000015;
          }

          v66 = v102;
          if (v64 != 4)
          {
            v66 = v101;
          }

          if (v64 == 3)
          {
            v65 = 0xD000000000000015;
            v66 = v103;
          }

          v67 = 0xD000000000000017;
          if (v64 != 1)
          {
            v67 = v98;
          }

          v68 = v100;
          if (v64 != 1)
          {
            v68 = v99;
          }

          if (!*v43)
          {
            v67 = v105;
            v68 = v104;
          }

          if (*v43 <= 2u)
          {
            v69 = v67;
          }

          else
          {
            v69 = v65;
          }

          if (*v43 <= 2u)
          {
            v70 = v68;
          }

          else
          {
            v70 = v66;
          }

          MEMORY[0x21CF0F390](v69, v70 | 0x8000000000000000);

          MEMORY[0x21CF0F390](46, 0xE100000000000000);
          MEMORY[0x21CF0F390](*&v43[*(v89 + 24)], *&v43[*(v89 + 24) + 8]);
          v49 = v107;
          v51 = v108;
          v53 = type metadata accessor for TitleValueSetting;
          v54 = v43;
          goto LABEL_17;
        }

        if (EnumCaseMultiPayload == 4)
        {
          sub_21C6B2488(v16, v42, type metadata accessor for TextFieldSetting);
          v107 = 0;
          v108 = 0xE000000000000000;
          v57 = *v42;
          if (v57 == 4)
          {
            v58 = v105;
          }

          else
          {
            v58 = 0xD000000000000015;
          }

          v59 = v102;
          if (v57 != 4)
          {
            v59 = v101;
          }

          if (v57 == 3)
          {
            v58 = 0xD000000000000015;
            v59 = v103;
          }

          v60 = 0xD000000000000017;
          if (v57 != 1)
          {
            v60 = v98;
          }

          v61 = v100;
          if (v57 != 1)
          {
            v61 = v99;
          }

          if (!*v42)
          {
            v60 = v105;
            v61 = v104;
          }

          if (*v42 <= 2u)
          {
            v62 = v60;
          }

          else
          {
            v62 = v58;
          }

          if (*v42 <= 2u)
          {
            v63 = v61;
          }

          else
          {
            v63 = v59;
          }

          MEMORY[0x21CF0F390](v62, v63 | 0x8000000000000000);

          MEMORY[0x21CF0F390](46, 0xE100000000000000);
          MEMORY[0x21CF0F390](*&v42[*(v90 + 24)], *&v42[*(v90 + 24) + 8]);
          v49 = v107;
          v51 = v108;
          v53 = type metadata accessor for TextFieldSetting;
          v54 = v42;
          goto LABEL_17;
        }

        v48 = v91;
        sub_21C6B2488(v16, v91, type metadata accessor for MultiValueSetting);
        v49 = sub_21C6A6E50();
        v51 = v84;
        v52 = type metadata accessor for MultiValueSetting;
      }

      else if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload != 1)
        {
          v71 = *v16;
          v73 = v16[1];
          v72 = v16[2];
          v74 = v16[7];
          v97 = v16[9];
          v75 = v16[11];
          v76 = v16[13];
          v77 = v16[14];
          v95 = v74;
          v96 = v76;
          v107 = 0;
          v108 = 0xE000000000000000;
          if (v71 == 4)
          {
            v78 = v105;
          }

          else
          {
            v78 = 0xD000000000000015;
          }

          v79 = v102;
          if (v71 != 4)
          {
            v79 = v101;
          }

          if (v71 == 3)
          {
            v78 = 0xD000000000000015;
            v79 = v103;
          }

          v80 = 0xD000000000000017;
          if (v71 != 1)
          {
            v80 = v98;
          }

          v81 = v100;
          if (v71 != 1)
          {
            v81 = v99;
          }

          if (!v71)
          {
            v80 = v105;
            v81 = v104;
          }

          if (v71 <= 2)
          {
            v82 = v80;
          }

          else
          {
            v82 = v78;
          }

          if (v71 <= 2)
          {
            v83 = v81;
          }

          else
          {
            v83 = v79;
          }

          MEMORY[0x21CF0F390](v82, v83 | 0x8000000000000000);

          MEMORY[0x21CF0F390](46, 0xE100000000000000);
          MEMORY[0x21CF0F390](v73, v72);

          v49 = v107;
          v51 = v108;
          v42 = v94;
          v43 = v93;
          goto LABEL_18;
        }

        v48 = v88;
        sub_21C6B2488(v16, v88, type metadata accessor for ToggleSetting);
        v49 = sub_21C6BA95C();
        v51 = v56;
        v52 = type metadata accessor for ToggleSetting;
      }

      else
      {
        v48 = v87;
        sub_21C6B2488(v16, v87, type metadata accessor for ChildPaneSetting);
        v49 = sub_21C6A3054();
        v51 = v50;
        v52 = type metadata accessor for ChildPaneSetting;
      }

      v53 = v52;
      v54 = v48;
LABEL_17:
      sub_21C6B24F0(v54, v53);
LABEL_18:
      MEMORY[0x21CF0F390](v49, v51);

      MEMORY[0x21CF0F390](v109, v110);

      sub_21C6B24F0(v19, type metadata accessor for Setting);
      v47 += v106;
      if (!--v46)
      {

        return v113;
      }
    }
  }

  return v113;
}

uint64_t sub_21C6B23F8@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_21C6B1950();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_21C6B2424(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Setting();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C6B2488(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21C6B24F0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21C6B257C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26[0] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6F10, &qword_21C6D1030);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v26 - v5;
  v7 = sub_21C6CDF20();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = v26 - v13;
  v15 = sub_21C6CE5A0();
  LOBYTE(v28) = 1;
  sub_21C6B437C(a1, v35);
  *&v27[7] = v35[0];
  *&v27[55] = v36;
  *&v27[39] = v35[2];
  *&v27[23] = v35[1];
  v16 = v28;
  v28 = v15;
  v29 = 0;
  v30 = v16;
  v31 = *v27;
  *&v34[15] = *(&v36 + 1);
  *v34 = *&v27[48];
  v33 = *&v27[32];
  v32 = *&v27[16];
  sub_21C68F744(a1 + OBJC_IVAR____TtC29ThirdPartyApplicationSettings20StandardGroupSetting_localizedFooter, v6, &qword_27CDE6F10, &qword_21C6D1030);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_21C68F7D4(v6, &qword_27CDE6F10, &qword_21C6D1030);
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
  }

  else
  {
    (*(v8 + 32))(v14, v6, v7);
    (*(v8 + 16))(v11, v14, v7);
    v17 = sub_21C6CE750();
    v18 = v21;
    v23 = v22;
    v20 = v24;
    (*(v8 + 8))(v14, v7);
    v19 = v23 & 1;
  }

  v26[1] = v17;
  v26[2] = v18;
  v26[3] = v19;
  v26[4] = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6FF8, &qword_21C6D1498);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE7000, &unk_21C6D14A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6F70, &qword_21C6D1138);
  sub_21C694224(&qword_27CDE7008, &qword_27CDE6FF8, &qword_21C6D1498);
  sub_21C6B466C();
  sub_21C6AD218();
  return sub_21C6CEA50();
}

uint64_t sub_21C6B28E4(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC29ThirdPartyApplicationSettings20StandardGroupSetting_items;
  swift_beginAccess();
  v4 = *(a1 + v2);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE70D8, &qword_21C6D1500);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE7020, &qword_21C6D14B0);
  sub_21C694224(&qword_27CDE70E0, &qword_27CDE70D8, &qword_21C6D1500);
  sub_21C6B46F0();
  sub_21C6B4DA4(&qword_27CDE70E8, type metadata accessor for Setting);
  return sub_21C6CEA30();
}

uint64_t sub_21C6B2A2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE7028, &qword_21C6D14B8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE70F0, &qword_21C6D1508);
  v17 = *(v8 - 8);
  v9 = *(v17 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - v10;
  if ((sub_21C6BD938() & 1) != 0 && (v12 = sub_21C6BDCB4()) != 0)
  {
    v13 = v12;
    sub_21C6B2C30(a1, v12, v7);
    sub_21C6B47B0();
    sub_21C6CE820();

    sub_21C68F7D4(v7, &qword_27CDE7028, &qword_21C6D14B8);
    (*(v17 + 32))(a2, v11, v8);
    return (*(v17 + 56))(a2, 0, 1, v8);
  }

  else
  {
    v15 = *(v17 + 56);

    return v15(a2, 1, 1, v8);
  }
}

uint64_t sub_21C6B2C30@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v154 = a2;
  v164 = a3;
  v165 = a1;
  v153 = type metadata accessor for ChildPaneSettingView();
  v3 = *(*(v153 - 8) + 64);
  MEMORY[0x28223BE20](v153);
  v138 = (&v130 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for ChildPaneSetting();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v137 = &v130 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE70F8, &qword_21C6D1510);
  v8 = *(*(v149 - 8) + 64);
  MEMORY[0x28223BE20](v149);
  v151 = &v130 - v9;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE70B0, &qword_21C6D14F0);
  v10 = *(*(v163 - 8) + 64);
  MEMORY[0x28223BE20](v163);
  v152 = &v130 - v11;
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE70C0, &qword_21C6D14F8);
  v12 = *(*(v150 - 8) + 64);
  MEMORY[0x28223BE20](v150);
  v136 = (&v130 - v13);
  v132 = type metadata accessor for TitleValueSetting();
  v14 = *(*(v132 - 8) + 64);
  MEMORY[0x28223BE20](v132);
  v135 = &v130 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for PropertyListValue();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v144 = &v130 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE7098, &unk_21C6D14E0);
  v19 = *(*(v147 - 8) + 64);
  MEMORY[0x28223BE20](v147);
  v134 = (&v130 - v20);
  v131 = type metadata accessor for MultiValueSetting();
  v21 = *(*(v131 - 8) + 64);
  MEMORY[0x28223BE20](v131);
  v146 = &v130 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE7100, &qword_21C6D1518);
  v23 = *(*(v142 - 8) + 64);
  MEMORY[0x28223BE20](v142);
  v145 = &v130 - v24;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE7080, &qword_21C6D14D8);
  v25 = *(*(v158 - 8) + 64);
  MEMORY[0x28223BE20](v158);
  v148 = &v130 - v26;
  v143 = type metadata accessor for TextFieldSettingView();
  v27 = *(*(v143 - 8) + 64);
  MEMORY[0x28223BE20](v143);
  v133 = (&v130 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = type metadata accessor for TextFieldSetting();
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29);
  v32 = &v130 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v141 = &v130 - v34;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE7108, &qword_21C6D1520);
  v35 = *(*(v160 - 8) + 64);
  MEMORY[0x28223BE20](v160);
  v162 = &v130 - v36;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE7110, &qword_21C6D1528);
  v37 = *(*(v155 - 8) + 64);
  MEMORY[0x28223BE20](v155);
  v157 = &v130 - v38;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE7118, &qword_21C6D1530);
  v39 = *(*(v139 - 8) + 64);
  MEMORY[0x28223BE20](v139);
  v41 = (&v130 - v40);
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE7060, &qword_21C6D14D0);
  v42 = *(*(v156 - 8) + 64);
  MEMORY[0x28223BE20](v156);
  v140 = &v130 - v43;
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE7050, &qword_21C6D14C8);
  v44 = *(*(v161 - 8) + 64);
  MEMORY[0x28223BE20](v161);
  v159 = &v130 - v45;
  v46 = type metadata accessor for ToggleSettingView();
  v47 = *(*(v46 - 8) + 64);
  MEMORY[0x28223BE20](v46);
  v49 = (&v130 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0));
  v50 = type metadata accessor for ToggleSetting();
  v51 = *(*(v50 - 8) + 64);
  MEMORY[0x28223BE20](v50 - 8);
  v53 = &v130 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v54);
  v56 = &v130 - v55;
  v57 = type metadata accessor for Setting();
  v58 = *(*(v57 - 8) + 64);
  MEMORY[0x28223BE20](v57);
  v60 = &v130 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21C6B4F04(v165, v60, type metadata accessor for Setting);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v84 = v135;
      sub_21C6B4E9C(v60, v135, type metadata accessor for TitleValueSetting);
      v85 = type metadata accessor for TitleValueSettingView();
      v86 = v136;
      sub_21C6B4F04(v84, v136 + *(v85 + 20), type metadata accessor for TitleValueSetting);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6DD0, &qword_21C6D2540);
      sub_21C694224(&qword_27CDE6DD8, &qword_27CDE6DD0, &qword_21C6D2540);
      *v86 = sub_21C6CE430();
      v86[1] = v87;
      v88 = (v84 + *(v132 + 24));
      v89 = *v88;
      v90 = v88[1];
      v91 = v144;
      sub_21C6B4F04(v84 + *(v132 + 28), v144, type metadata accessor for PropertyListValue);
      v92 = v154;
      v93 = v154;

      v94 = sub_21C6C3D2C(v89, v90, v91, v92);

      v95 = sub_21C6CE1B0();
      v96 = v151;
      v97 = (v86 + *(v150 + 36));
      *v97 = v95;
      v97[1] = v94;
      sub_21C68F744(v86, v96, &qword_27CDE70C0, &qword_21C6D14F8);
      swift_storeEnumTagMultiPayload();
      sub_21C6B4CBC();
      sub_21C6B4DA4(&qword_27CDE70D0, type metadata accessor for ChildPaneSettingView);
      v98 = v152;
      sub_21C6CE5C0();
      sub_21C68F744(v98, v162, &qword_27CDE70B0, &qword_21C6D14F0);
      swift_storeEnumTagMultiPayload();
      sub_21C6B48C0();
      sub_21C6B4C00();
      sub_21C6CE5C0();
      sub_21C68F7D4(v98, &qword_27CDE70B0, &qword_21C6D14F0);
      sub_21C68F7D4(v86, &qword_27CDE70C0, &qword_21C6D14F8);
      v66 = type metadata accessor for TitleValueSetting;
      v67 = v84;
    }

    else if (EnumCaseMultiPayload == 4)
    {
      v68 = v141;
      sub_21C6B4E9C(v60, v141, type metadata accessor for TextFieldSetting);
      sub_21C6B4F04(v68, v32, type metadata accessor for TextFieldSetting);
      v69 = v133;
      sub_21C6B4F04(v32, v133 + *(v143 + 20), type metadata accessor for TextFieldSetting);
      v70 = *(v29 + 24);
      v71 = &v32[*(v29 + 28)];
      v72 = *v71;
      v73 = *(v71 + 1);
      v74 = *&v32[v70];
      v75 = *&v32[v70 + 8];

      v76 = sub_21C6CE210();
      sub_21C6B4F6C(v32, type metadata accessor for TextFieldSetting);
      *v69 = v76;
      sub_21C6B4F04(v69, v145, type metadata accessor for TextFieldSettingView);
      swift_storeEnumTagMultiPayload();
      sub_21C6B4DA4(&qword_27CDE7088, type metadata accessor for TextFieldSettingView);
      sub_21C6B4B18();
      v77 = v148;
      sub_21C6CE5C0();
      sub_21C68F744(v77, v157, &qword_27CDE7080, &qword_21C6D14D8);
      swift_storeEnumTagMultiPayload();
      sub_21C6B494C();
      sub_21C6B4A5C();
      v78 = v159;
      sub_21C6CE5C0();
      sub_21C68F7D4(v77, &qword_27CDE7080, &qword_21C6D14D8);
      sub_21C68F744(v78, v162, &qword_27CDE7050, &qword_21C6D14C8);
      swift_storeEnumTagMultiPayload();
      sub_21C6B48C0();
      sub_21C6B4C00();
      sub_21C6CE5C0();
      sub_21C68F7D4(v78, &qword_27CDE7050, &qword_21C6D14C8);
      sub_21C6B4F6C(v69, type metadata accessor for TextFieldSettingView);
      v67 = v141;
      v66 = type metadata accessor for TextFieldSetting;
    }

    else
    {
      v114 = v146;
      sub_21C6B4E9C(v60, v146, type metadata accessor for MultiValueSetting);
      v115 = type metadata accessor for MultiValueSettingView();
      v116 = v134;
      sub_21C6B4F04(v114, v134 + *(v115 + 20), type metadata accessor for MultiValueSetting);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6DD0, &qword_21C6D2540);
      sub_21C694224(&qword_27CDE6DD8, &qword_27CDE6DD0, &qword_21C6D2540);
      *v116 = sub_21C6CE430();
      v116[1] = v117;
      v118 = v114;
      v119 = (v114 + *(v131 + 24));
      v120 = *v119;
      v121 = v119[1];
      v122 = v144;
      sub_21C6B4F04(v118 + *(v131 + 28), v144, type metadata accessor for PropertyListValue);
      v123 = v154;
      v124 = v154;

      v125 = sub_21C6C3D2C(v120, v121, v122, v123);

      v126 = sub_21C6CE1B0();
      v127 = (v116 + *(v147 + 36));
      *v127 = v126;
      v127[1] = v125;
      sub_21C68F744(v116, v145, &qword_27CDE7098, &unk_21C6D14E0);
      swift_storeEnumTagMultiPayload();
      sub_21C6B4DA4(&qword_27CDE7088, type metadata accessor for TextFieldSettingView);
      sub_21C6B4B18();
      v128 = v148;
      sub_21C6CE5C0();
      sub_21C68F744(v128, v157, &qword_27CDE7080, &qword_21C6D14D8);
      swift_storeEnumTagMultiPayload();
      sub_21C6B494C();
      sub_21C6B4A5C();
      v129 = v159;
      sub_21C6CE5C0();
      sub_21C68F7D4(v128, &qword_27CDE7080, &qword_21C6D14D8);
      sub_21C68F744(v129, v162, &qword_27CDE7050, &qword_21C6D14C8);
      swift_storeEnumTagMultiPayload();
      sub_21C6B48C0();
      sub_21C6B4C00();
      sub_21C6CE5C0();
      sub_21C68F7D4(v129, &qword_27CDE7050, &qword_21C6D14C8);
      sub_21C68F7D4(v116, &qword_27CDE7098, &unk_21C6D14E0);
      v66 = type metadata accessor for MultiValueSetting;
      v67 = v146;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      v100 = *v60;
      v99 = *(v60 + 1);
      v101 = *(v60 + 2);
      v102 = *(v60 + 3);
      v103 = *(v60 + 5);
      v168 = *(v60 + 4);
      v169 = v103;
      v170 = *(v60 + 6);
      v171 = *(v60 + 14);
      v104 = *(v60 + 3);
      v166 = *(v60 + 2);
      v167 = v104;
      KeyPath = swift_getKeyPath();
      v172 = 0;

      v106 = sub_21C6CE220();
      *&v173 = KeyPath;
      BYTE8(v173) = v172;
      *&v174 = v106;
      *(&v174 + 1) = v100;
      *&v175 = v99;
      *(&v175 + 1) = v101;
      *v176 = v102;
      *&v176[40] = v168;
      *&v176[56] = v169;
      *&v176[72] = v170;
      *&v176[88] = v171;
      *&v176[8] = v166;
      *&v176[24] = v167;
      v107 = *&v176[64];
      v41[6] = *&v176[48];
      v41[7] = v107;
      v41[8] = *&v176[80];
      v108 = *v176;
      v41[2] = v175;
      v41[3] = v108;
      v109 = *&v176[32];
      v41[4] = *&v176[16];
      v41[5] = v109;
      v110 = v174;
      *v41 = v173;
      v41[1] = v110;
      swift_storeEnumTagMultiPayload();
      sub_21C6B4DEC(&v173, &v166);
      sub_21C6B4DA4(&qword_27CDE7068, type metadata accessor for ToggleSettingView);
      sub_21C6B4A08();
      v111 = v140;
      sub_21C6CE5C0();
      sub_21C68F744(v111, v157, &qword_27CDE7060, &qword_21C6D14D0);
      swift_storeEnumTagMultiPayload();
      sub_21C6B494C();
      sub_21C6B4A5C();
      v112 = v159;
      sub_21C6CE5C0();
      sub_21C68F7D4(v111, &qword_27CDE7060, &qword_21C6D14D0);
      sub_21C68F744(v112, v162, &qword_27CDE7050, &qword_21C6D14C8);
      swift_storeEnumTagMultiPayload();
      sub_21C6B48C0();
      sub_21C6B4C00();
      sub_21C6CE5C0();
      sub_21C6B4E48(&v173);
      return sub_21C68F7D4(v112, &qword_27CDE7050, &qword_21C6D14C8);
    }

    sub_21C6B4E9C(v60, v56, type metadata accessor for ToggleSetting);
    sub_21C6B4F04(v56, v53, type metadata accessor for ToggleSetting);
    v62 = v154;
    v63 = v154;
    sub_21C6BAB30(v53, v62, v49);
    sub_21C6B4F04(v49, v41, type metadata accessor for ToggleSettingView);
    swift_storeEnumTagMultiPayload();
    sub_21C6B4DA4(&qword_27CDE7068, type metadata accessor for ToggleSettingView);
    sub_21C6B4A08();
    v64 = v140;
    sub_21C6CE5C0();
    sub_21C68F744(v64, v157, &qword_27CDE7060, &qword_21C6D14D0);
    swift_storeEnumTagMultiPayload();
    sub_21C6B494C();
    sub_21C6B4A5C();
    v65 = v159;
    sub_21C6CE5C0();
    sub_21C68F7D4(v64, &qword_27CDE7060, &qword_21C6D14D0);
    sub_21C68F744(v65, v162, &qword_27CDE7050, &qword_21C6D14C8);
    swift_storeEnumTagMultiPayload();
    sub_21C6B48C0();
    sub_21C6B4C00();
    sub_21C6CE5C0();
    sub_21C68F7D4(v65, &qword_27CDE7050, &qword_21C6D14C8);
    sub_21C6B4F6C(v49, type metadata accessor for ToggleSettingView);
    v66 = type metadata accessor for ToggleSetting;
    v67 = v56;
  }

  else
  {
    v79 = v137;
    sub_21C6B4E9C(v60, v137, type metadata accessor for ChildPaneSetting);
    v80 = v153;
    v81 = v138;
    sub_21C6B4F04(v79, v138 + *(v153 + 24), type metadata accessor for ChildPaneSetting);
    *v81 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CDE6A28, &qword_21C6D0318);
    swift_storeEnumTagMultiPayload();
    v82 = v81 + *(v80 + 20);
    *v82 = swift_getKeyPath();
    v82[8] = 0;
    sub_21C6B4F04(v81, v151, type metadata accessor for ChildPaneSettingView);
    swift_storeEnumTagMultiPayload();
    sub_21C6B4CBC();
    sub_21C6B4DA4(&qword_27CDE70D0, type metadata accessor for ChildPaneSettingView);
    v83 = v152;
    sub_21C6CE5C0();
    sub_21C68F744(v83, v162, &qword_27CDE70B0, &qword_21C6D14F0);
    swift_storeEnumTagMultiPayload();
    sub_21C6B48C0();
    sub_21C6B4C00();
    sub_21C6CE5C0();
    sub_21C68F7D4(v83, &qword_27CDE70B0, &qword_21C6D14F0);
    sub_21C6B4F6C(v81, type metadata accessor for ChildPaneSettingView);
    v66 = type metadata accessor for ChildPaneSetting;
    v67 = v79;
  }

  return sub_21C6B4F6C(v67, v66);
}

void sub_21C6B4150(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_21C6CE570();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  if (*(a1 + 17) == 1 && (v6 = a1 + OBJC_IVAR____TtC29ThirdPartyApplicationSettings20StandardGroupSetting_applicationBundleIdentifier, v7 = *(a1 + OBJC_IVAR____TtC29ThirdPartyApplicationSettings20StandardGroupSetting_applicationBundleIdentifier), v8 = *(v6 + 8), objc_allocWithZone(MEMORY[0x277CC1E70]), , v9 = sub_21C6BF2EC(v7, v8, 0), (v14 = v9) != 0))
  {
    sub_21C6CE560();
    sub_21C6CE550();
    v15 = [v14 localizedName];
    sub_21C6CEBC0();

    sub_21C6CE540();

    sub_21C6CE550();
    sub_21C6CE590();
    if (qword_27CDE67D8 != -1)
    {
      swift_once();
    }

    v16 = qword_27CDE9D58;
    v10 = sub_21C6CE740();
    v11 = v17;
    v19 = v18;
    v13 = v20;

    v12 = v19 & 1;
  }

  else
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
  }

  *a2 = v10;
  a2[1] = v11;
  a2[2] = v12;
  a2[3] = v13;
}

uint64_t sub_21C6B437C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6F10, &qword_21C6D1030);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v31 - v6;
  v8 = sub_21C6CDF20();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v31 - v14;
  sub_21C6B4150(a1, v33);
  v16 = v33[0];
  v17 = v33[1];
  v18 = v33[2];
  v32 = v33[3];
  sub_21C68F744(a1 + OBJC_IVAR____TtC29ThirdPartyApplicationSettings20StandardGroupSetting_localizedHeader, v7, &qword_27CDE6F10, &qword_21C6D1030);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_21C68F7D4(v7, &qword_27CDE6F10, &qword_21C6D1030);
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
  }

  else
  {
    (*(v9 + 32))(v15, v7, v8);
    (*(v9 + 16))(v12, v15, v8);
    v19 = sub_21C6CE750();
    v20 = v23;
    v31 = v18;
    v24 = v17;
    v25 = v16;
    v27 = v26;
    v22 = v28;
    (*(v9 + 8))(v15, v8);
    v21 = v27 & 1;
    v16 = v25;
    v17 = v24;
    v18 = v31;
    sub_21C692AE8(v19, v20, v21);
  }

  v29 = v32;
  sub_21C6AD294(v16, v17, v18, v32);
  sub_21C6AD294(v19, v20, v21, v22);
  sub_21C6AD2D8(v19, v20, v21, v22);
  *a2 = v16;
  a2[1] = v17;
  a2[2] = v18;
  a2[3] = v29;
  a2[4] = v19;
  a2[5] = v20;
  a2[6] = v21;
  a2[7] = v22;
  sub_21C6AD2D8(v19, v20, v21, v22);
  return sub_21C6AD2D8(v16, v17, v18, v29);
}

unint64_t sub_21C6B466C()
{
  result = qword_27CDE7010;
  if (!qword_27CDE7010)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDE7000, &unk_21C6D14A0);
    sub_21C6B46F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDE7010);
  }

  return result;
}

unint64_t sub_21C6B46F0()
{
  result = qword_27CDE7018;
  if (!qword_27CDE7018)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDE7020, &qword_21C6D14B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDE7028, &qword_21C6D14B8);
    sub_21C6B47B0();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDE7018);
  }

  return result;
}

unint64_t sub_21C6B47B0()
{
  result = qword_27CDE7030;
  if (!qword_27CDE7030)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDE7028, &qword_21C6D14B8);
    sub_21C6B4834();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDE7030);
  }

  return result;
}

unint64_t sub_21C6B4834()
{
  result = qword_27CDE7038;
  if (!qword_27CDE7038)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDE7040, &qword_21C6D14C0);
    sub_21C6B48C0();
    sub_21C6B4C00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDE7038);
  }

  return result;
}

unint64_t sub_21C6B48C0()
{
  result = qword_27CDE7048;
  if (!qword_27CDE7048)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDE7050, &qword_21C6D14C8);
    sub_21C6B494C();
    sub_21C6B4A5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDE7048);
  }

  return result;
}

unint64_t sub_21C6B494C()
{
  result = qword_27CDE7058;
  if (!qword_27CDE7058)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDE7060, &qword_21C6D14D0);
    sub_21C6B4DA4(&qword_27CDE7068, type metadata accessor for ToggleSettingView);
    sub_21C6B4A08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDE7058);
  }

  return result;
}

unint64_t sub_21C6B4A08()
{
  result = qword_27CDE7070;
  if (!qword_27CDE7070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDE7070);
  }

  return result;
}

unint64_t sub_21C6B4A5C()
{
  result = qword_27CDE7078;
  if (!qword_27CDE7078)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDE7080, &qword_21C6D14D8);
    sub_21C6B4DA4(&qword_27CDE7088, type metadata accessor for TextFieldSettingView);
    sub_21C6B4B18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDE7078);
  }

  return result;
}

unint64_t sub_21C6B4B18()
{
  result = qword_27CDE7090;
  if (!qword_27CDE7090)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDE7098, &unk_21C6D14E0);
    sub_21C6B4DA4(&qword_27CDE70A0, type metadata accessor for MultiValueSettingView);
    sub_21C694224(&qword_27CDE6EC0, &qword_27CDE6EC8, &qword_21C6D0F90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDE7090);
  }

  return result;
}

unint64_t sub_21C6B4C00()
{
  result = qword_27CDE70A8;
  if (!qword_27CDE70A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDE70B0, &qword_21C6D14F0);
    sub_21C6B4CBC();
    sub_21C6B4DA4(&qword_27CDE70D0, type metadata accessor for ChildPaneSettingView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDE70A8);
  }

  return result;
}

unint64_t sub_21C6B4CBC()
{
  result = qword_27CDE70B8;
  if (!qword_27CDE70B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDE70C0, &qword_21C6D14F8);
    sub_21C6B4DA4(&qword_27CDE70C8, type metadata accessor for TitleValueSettingView);
    sub_21C694224(&qword_27CDE6EC0, &qword_27CDE6EC8, &qword_21C6D0F90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDE70B8);
  }

  return result;
}

uint64_t sub_21C6B4DA4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21C6B4E9C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21C6B4F04(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21C6B4F6C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_21C6B4FCC()
{
  result = qword_27CDE7120;
  if (!qword_27CDE7120)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDE7128, &unk_21C6D15A0);
    sub_21C694224(&qword_27CDE7008, &qword_27CDE6FF8, &qword_21C6D1498);
    sub_21C6B466C();
    sub_21C6AD218();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDE7120);
  }

  return result;
}

uint64_t type metadata accessor for TextFieldSetting()
{
  result = qword_27CDE7130;
  if (!qword_27CDE7130)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21C6B510C()
{
  sub_21C6B18F8();
  if (v0 <= 0x3F)
  {
    sub_21C6A2ED4(319, &qword_27CDE6C68, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_21C6A2ED4(319, &qword_27CDE6C70, MEMORY[0x277D83940]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for TextFieldSetting.AutocorrectionType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for TextFieldSetting.AutocorrectionType(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for TextFieldSetting.AutocapitalizationType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for TextFieldSetting.AutocapitalizationType(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for TextFieldSetting.KeyboardType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for TextFieldSetting.KeyboardType(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_21C6B5634()
{
  v1 = *v0;
  sub_21C6CEE50();
  sub_21C6CEBF0();

  return sub_21C6CEE90();
}

uint64_t sub_21C6B5720()
{
  *v0;
  *v0;
  *v0;
  sub_21C6CEBF0();
}

uint64_t sub_21C6B57F8()
{
  v1 = *v0;
  sub_21C6CEE50();
  sub_21C6CEBF0();

  return sub_21C6CEE90();
}

uint64_t sub_21C6B58E0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_21C6B6CF0();
  *a2 = result;
  return result;
}

void sub_21C6B5910(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0x7465626168706C41;
  v5 = 0xE900000000000064;
  v6 = 0x61507265626D754ELL;
  v7 = 0xE300000000000000;
  v8 = 5001813;
  if (v2 != 3)
  {
    v8 = 0x6464416C69616D45;
    v7 = 0xEC00000073736572;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0xD000000000000015;
    v3 = 0x800000021C6D2890;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

unint64_t sub_21C6B5A6C()
{
  result = qword_27CDE7140;
  if (!qword_27CDE7140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDE7140);
  }

  return result;
}

uint64_t sub_21C6B5ACC()
{
  v1 = *v0;
  sub_21C6CEE50();
  sub_21C6CEBF0();

  return sub_21C6CEE90();
}

uint64_t sub_21C6B5B94()
{
  *v0;
  *v0;
  *v0;
  sub_21C6CEBF0();
}

uint64_t sub_21C6B5C48()
{
  v1 = *v0;
  sub_21C6CEE50();
  sub_21C6CEBF0();

  return sub_21C6CEE90();
}

uint64_t sub_21C6B5D0C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_21C6B6D3C();
  *a2 = result;
  return result;
}

void sub_21C6B5D3C(uint64_t *a1@<X8>)
{
  v2 = 0xE400000000000000;
  v3 = 1701736270;
  v4 = 0xE500000000000000;
  v5 = 0x7364726F57;
  if (*v1 != 2)
  {
    v5 = 0x61726168436C6C41;
    v4 = 0xED00007372657463;
  }

  if (*v1)
  {
    v3 = 0x65636E65746E6553;
    v2 = 0xE900000000000073;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_21C6B5E74()
{
  result = qword_27CDE7148;
  if (!qword_27CDE7148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDE7148);
  }

  return result;
}

uint64_t sub_21C6B5EC8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE200000000000000;
  v4 = 28494;
  if (v2 != 1)
  {
    v4 = 7562585;
    v3 = 0xE300000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x746C7561666544;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0xE200000000000000;
  v8 = 28494;
  if (*a2 != 1)
  {
    v8 = 7562585;
    v7 = 0xE300000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x746C7561666544;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_21C6CEE20();
  }

  return v11 & 1;
}

uint64_t sub_21C6B5FA4()
{
  v1 = *v0;
  sub_21C6CEE50();
  sub_21C6CEBF0();

  return sub_21C6CEE90();
}

uint64_t sub_21C6B6034()
{
  *v0;
  *v0;
  sub_21C6CEBF0();
}

uint64_t sub_21C6B60B0()
{
  v1 = *v0;
  sub_21C6CEE50();
  sub_21C6CEBF0();

  return sub_21C6CEE90();
}

uint64_t sub_21C6B613C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_21C6B6D88();
  *a2 = result;
  return result;
}

void sub_21C6B616C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE200000000000000;
  v5 = 28494;
  if (v2 != 1)
  {
    v5 = 7562585;
    v4 = 0xE300000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x746C7561666544;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_21C6B626C()
{
  result = qword_27CDE7150;
  if (!qword_27CDE7150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDE7150);
  }

  return result;
}

uint64_t sub_21C6B62C0()
{
  v1 = *(v0 + *(type metadata accessor for TextFieldSetting() + 56));
  if (!*(v1 + 16))
  {
    return 1;
  }

  v2 = [objc_opt_self() currentDevice];
  v3 = [v2 userInterfaceIdiom];

  if (v3)
  {
    v4 = 6578512;
  }

  else
  {
    v4 = 0x656E6F6850;
  }

  if (v3)
  {
    v5 = 0xE300000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  v6 = (v1 + 40);
  v7 = *(v1 + 16) + 1;
  do
  {
    v8 = --v7 != 0;
    if (!v7)
    {
      break;
    }

    if (*(v6 - 1) == v4 && *v6 == v5)
    {
      break;
    }

    v6 += 2;
  }

  while ((sub_21C6CEE20() & 1) == 0);

  return v8;
}

uint64_t sub_21C6B63B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, _BYTE *a7@<X8>)
{
  v66 = a4;
  v67 = a6;
  v64 = a3;
  v65 = a5;
  v68 = a2;
  v9 = sub_21C6CE010();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = sub_21C6CDF00();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v58[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = sub_21C6CEB80();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6F10, &qword_21C6D1030);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v58[-v20];
  if (!*(a1 + 16))
  {
    goto LABEL_24;
  }

  v22 = sub_21C6C70F8(7955787, 0xE300000000000000);
  if ((v23 & 1) == 0)
  {
    goto LABEL_24;
  }

  sub_21C6A2734(*(a1 + 56) + 32 * v22, v71);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_24;
  }

  v24 = HIBYTE(v70) & 0xF;
  if ((v70 & 0x2000000000000000) == 0)
  {
    v24 = v69 & 0xFFFFFFFFFFFFLL;
  }

  if (!v24)
  {

LABEL_24:

    (*(v12 + 8))(v68, v11);
    v34 = type metadata accessor for TextFieldSetting();
    return (*(*(v34 - 8) + 56))(a7, 1, 1, v34);
  }

  v62 = v69;
  v63 = v70;
  if (*(a1 + 16) && (v25 = sub_21C6C70F8(0x656C746954, 0xE500000000000000), (v26 & 1) != 0) && (sub_21C6A2734(*(a1 + 56) + 32 * v25, v71), (swift_dynamicCast() & 1) != 0) && v70)
  {
    v60 = v69;
    v61 = v70;

    sub_21C6CEB70();
    (*(v12 + 16))(v15, v68, v11);

    sub_21C6CE000();
    sub_21C6CDF30();
    v27 = sub_21C6CDF20();
    (*(*(v27 - 8) + 56))(v21, 0, 1, v27);
  }

  else
  {
    v28 = sub_21C6CDF20();
    (*(*(v28 - 8) + 56))(v21, 1, 1, v28);
  }

  if (*(a1 + 16) && (v29 = sub_21C6C70F8(0x56746C7561666544, 0xEC00000065756C61), (v30 & 1) != 0) && (sub_21C6A2734(*(a1 + 56) + 32 * v29, v71), (swift_dynamicCast() & 1) != 0))
  {
    v31 = v70;
    v61 = v69;
  }

  else
  {
    v61 = 0;
    v31 = 0xE000000000000000;
  }

  v60 = v31;
  if (!*(a1 + 16))
  {
    v59 = 0;
LABEL_32:
    v38 = 0;
    goto LABEL_33;
  }

  v32 = sub_21C6C70F8(0x6572756365537349, 0xE800000000000000);
  if ((v33 & 1) != 0 && (sub_21C6A2734(*(a1 + 56) + 32 * v32, v71), swift_dynamicCast()))
  {
    v59 = v69;
  }

  else
  {
    v59 = 0;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_32;
  }

  v36 = sub_21C6C70F8(0x6472616F6279654BLL, 0xEC00000065707954);
  if ((v37 & 1) == 0)
  {
    goto LABEL_32;
  }

  sub_21C6A2734(*(a1 + 56) + 32 * v36, v71);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_32;
  }

  v38 = sub_21C6B6CF0();
  if (v38 == 5)
  {
    goto LABEL_32;
  }

LABEL_33:
  if (!*(a1 + 16) || (v39 = sub_21C6C70F8(0xD000000000000016, 0x800000021C6D15D0), (v40 & 1) == 0) || (sub_21C6A2734(*(a1 + 56) + 32 * v39, v71), (swift_dynamicCast() & 1) == 0) || (v41 = sub_21C6B6D3C(), v41 == 4))
  {
    v41 = 0;
  }

  if (*(a1 + 16) && (v42 = sub_21C6C70F8(0xD000000000000012, 0x800000021C6D15B0), (v43 & 1) != 0) && (sub_21C6A2734(*(a1 + 56) + 32 * v42, v71), (swift_dynamicCast() & 1) != 0))
  {
    v44 = sub_21C6CEDF0();

    if (v44 == 2)
    {
      v45 = 2;
    }

    else
    {
      v45 = v44 == 1;
    }
  }

  else
  {
    v45 = 0;
  }

  if (!*(a1 + 16) || (v46 = sub_21C6C70F8(0xD00000000000001CLL, 0x800000021C6D3170), (v47 & 1) == 0))
  {

    goto LABEL_50;
  }

  sub_21C6A2734(*(a1 + 56) + 32 * v46, v71);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6DB0, &unk_21C6D0E60);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_50:
    v48 = MEMORY[0x277D84F90];
    goto LABEL_51;
  }

  v48 = v69;
LABEL_51:
  *a7 = 4;
  v49 = type metadata accessor for TextFieldSetting();
  sub_21C6AC488(v21, &a7[v49[5]]);
  v50 = &a7[v49[6]];
  v51 = v63;
  *v50 = v62;
  v50[1] = v51;
  v52 = &a7[v49[7]];
  v53 = v60;
  *v52 = v61;
  v52[1] = v53;
  a7[v49[8]] = v59;
  a7[v49[9]] = v38;
  a7[v49[10]] = v41;
  a7[v49[11]] = v45;
  v54 = &a7[v49[12]];
  v55 = v65;
  v56 = v66;
  *v54 = v64;
  v54[1] = v56;
  v57 = &a7[v49[13]];
  *v57 = v55;
  v57[1] = v67;
  *&a7[v49[14]] = v48;
  (*(*(v49 - 1) + 56))(a7, 0, 1, v49);
  return (*(v12 + 8))(v68, v11);
}

uint64_t sub_21C6B6BB4()
{
  v1 = 0xD000000000000014;
  v2 = "ers";
  v3 = *v0;
  v4 = "PSSliderSpecifier";
  v5 = "PSTitleValueSpecifier";
  if (v3 == 4)
  {
    v6 = 0xD000000000000014;
  }

  else
  {
    v6 = 0xD000000000000015;
  }

  if (v3 != 4)
  {
    v5 = "PSTextFieldSpecifier";
  }

  if (v3 == 3)
  {
    v7 = 0xD000000000000015;
  }

  else
  {
    v7 = v6;
  }

  if (v3 != 3)
  {
    v4 = v5;
  }

  v8 = "PSChildPaneSpecifier";
  v9 = 0xD000000000000017;
  if (v3 != 1)
  {
    v9 = 0xD000000000000011;
    v8 = "PSToggleSwitchSpecifier";
  }

  if (*v0)
  {
    v1 = v9;
    v2 = v8;
  }

  if (*v0 <= 2u)
  {
    v10 = v1;
  }

  else
  {
    v10 = v7;
  }

  if (*v0 <= 2u)
  {
    v11 = v2;
  }

  else
  {
    v11 = v4;
  }

  MEMORY[0x21CF0F390](v10, v11 | 0x8000000000000000);

  MEMORY[0x21CF0F390](46, 0xE100000000000000);
  v12 = type metadata accessor for TextFieldSetting();
  MEMORY[0x21CF0F390](*&v0[*(v12 + 24)], *&v0[*(v12 + 24) + 8]);
  return 0;
}

uint64_t sub_21C6B6CC8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21C6B6BB4();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_21C6B6CF0()
{
  v0 = sub_21C6CEDF0();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_21C6B6D3C()
{
  v0 = sub_21C6CEDF0();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_21C6B6D88()
{
  v0 = sub_21C6CEDF0();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_21C6B6DD4()
{
  result = qword_27CDE7158;
  if (!qword_27CDE7158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDE7158);
  }

  return result;
}

unint64_t sub_21C6B6E28()
{
  result = qword_27CDE7160;
  if (!qword_27CDE7160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDE7160);
  }

  return result;
}

unint64_t sub_21C6B6E7C()
{
  result = qword_27CDE7168;
  if (!qword_27CDE7168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDE7168);
  }

  return result;
}

uint64_t type metadata accessor for TextFieldSettingView()
{
  result = qword_27CDE7170;
  if (!qword_27CDE7170)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21C6B6F4C()
{
  sub_21C6B6FD0();
  if (v0 <= 0x3F)
  {
    type metadata accessor for TextFieldSetting();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_21C6B6FD0()
{
  if (!qword_27CDE7180)
  {
    v0 = sub_21C6CE240();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDE7180);
    }
  }
}

uint64_t sub_21C6B703C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v73 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE71A0, &qword_21C6D1998);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v63 - v5;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE71A8, &qword_21C6D19A0);
  v7 = *(*(v75 - 8) + 64);
  MEMORY[0x28223BE20](v75);
  v9 = &v63 - v8;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE71B0, &qword_21C6D19A8);
  v65 = *(v68 - 8);
  v10 = *(v65 + 64);
  MEMORY[0x28223BE20](v68);
  v74 = &v63 - v11;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE71B8, &qword_21C6D19B0);
  v67 = *(v69 - 8);
  v12 = *(v67 + 64);
  MEMORY[0x28223BE20](v69);
  v76 = &v63 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE71C0, &unk_21C6D19B8);
  v71 = *(v14 - 8);
  v72 = v14;
  v15 = *(v71 + 64);
  MEMORY[0x28223BE20](v14);
  v70 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v66 = &v63 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6F10, &qword_21C6D1030);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v63 - v21;
  v23 = sub_21C6CDF20();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  v27 = &v63 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v30 = &v63 - v29;
  v31 = a1 + *(type metadata accessor for TextFieldSettingView() + 20);
  v32 = type metadata accessor for TextFieldSetting();
  sub_21C6A96C0(&v31[v32[5]], v22);
  if ((*(v24 + 48))(v22, 1, v23) == 1)
  {
    sub_21C68F7D4(v22, &qword_27CDE6F10, &qword_21C6D1030);
    v63 = 0;
    v64 = 0;
    v33 = 0;
    v34 = 0;
  }

  else
  {
    (*(v24 + 32))(v30, v22, v23);
    (*(v24 + 16))(v27, v30, v23);
    v35 = sub_21C6CE750();
    v63 = v36;
    v64 = v35;
    v33 = v37;
    v38 = a1;
    v40 = v39;
    (*(v24 + 8))(v30, v23);
    v34 = (v40 & 1);
    a1 = v38;
  }

  sub_21C6B779C(a1, v9);
  v41 = qword_21C6D1A00[v31[v32[9]]];
  v42 = sub_21C6B7CF0();
  sub_21C6CE7D0();
  sub_21C68F7D4(v9, &qword_27CDE71A8, &qword_21C6D19A0);
  v43 = v68;
  if (v31[v32[10]] > 1u)
  {
    if (v31[v32[10]] == 2)
    {
      sub_21C6CE660();
    }

    else
    {
      sub_21C6CE640();
    }
  }

  else if (v31[v32[10]])
  {
    sub_21C6CE670();
  }

  else
  {
    sub_21C6CE650();
  }

  v44 = sub_21C6CE680();
  v45 = 1;
  (*(*(v44 - 8) + 56))(v6, 0, 1, v44);
  v77 = v75;
  v78 = v42;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v47 = v74;
  sub_21C6CE840();
  sub_21C68F7D4(v6, &qword_27CDE71A0, &qword_21C6D1998);
  (*(v65 + 8))(v47, v43);
  if (v31[v32[11]])
  {
    v48 = v33;
    if (v31[v32[11]] == 1)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v48 = v33;
  }

  v45 = sub_21C6CEE20();
LABEL_16:

  v77 = v43;
  v78 = OpaqueTypeConformance2;
  v49 = swift_getOpaqueTypeConformance2();
  v50 = v66;
  v51 = v69;
  v52 = v76;
  MEMORY[0x21CF0EFC0](v45 & 1, v69, v49);
  (*(v67 + 8))(v52, v51);
  v54 = v70;
  v53 = v71;
  v55 = *(v71 + 16);
  v56 = v72;
  v55(v70, v50, v72);
  v57 = v73;
  v58 = v64;
  *v73 = v64;
  v57[1] = v48;
  v57[2] = v34;
  v76 = v34;
  v59 = v63;
  v57[3] = v63;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE7200, &qword_21C6D19E0);
  v55(v57 + *(v60 + 48), v54, v56);
  LOBYTE(v55) = v76;
  sub_21C6AD294(v58, v48, v76, v59);
  v61 = *(v53 + 8);
  v61(v50, v56);
  v61(v54, v56);
  return sub_21C6AD2D8(v58, v48, v55, v59);
}

uint64_t sub_21C6B779C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE71F8, &qword_21C6D19D8);
  v21 = *(v25 - 8);
  v3 = *(v21 + 64);
  MEMORY[0x28223BE20](v25);
  v5 = &v20 - v4;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE7208, &qword_21C6D19E8);
  v6 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22);
  v8 = &v20 - v7;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE71E8, &qword_21C6D19D0);
  v9 = *(v23 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v23);
  v12 = &v20 - v11;
  v13 = a1 + *(type metadata accessor for TextFieldSettingView() + 20);
  v14 = v13[*(type metadata accessor for TextFieldSetting() + 32)];
  sub_21C6CE580();
  v15 = *a1;
  sub_21C6CE230();
  if (v14 == 1)
  {
    sub_21C6CE2E0();
    v16 = v23;
    (*(v9 + 16))(v8, v12, v23);
    swift_storeEnumTagMultiPayload();
    sub_21C694224(&qword_27CDE71E0, &qword_27CDE71E8, &qword_21C6D19D0);
    sub_21C694224(&qword_27CDE71F0, &qword_27CDE71F8, &qword_21C6D19D8);
    sub_21C6CE5C0();
    return (*(v9 + 8))(v12, v16);
  }

  else
  {
    sub_21C6CEAD0();
    v18 = v21;
    v19 = v25;
    (*(v21 + 16))(v8, v5, v25);
    swift_storeEnumTagMultiPayload();
    sub_21C694224(&qword_27CDE71E0, &qword_27CDE71E8, &qword_21C6D19D0);
    sub_21C694224(&qword_27CDE71F0, &qword_27CDE71F8, &qword_21C6D19D8);
    sub_21C6CE5C0();
    return (*(v18 + 8))(v5, v19);
  }
}

uint64_t sub_21C6B7BB8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE7188, &qword_21C6D1988);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - v5;
  *v6 = sub_21C6CE520();
  *(v6 + 1) = 0;
  v6[16] = 1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE7190, &qword_21C6D1990);
  sub_21C6B703C(v1, &v6[*(v7 + 44)]);
  v8 = v1 + *(a1 + 20);
  sub_21C6B6BB4();
  sub_21C694224(&qword_27CDE7198, &qword_27CDE7188, &qword_21C6D1988);
  sub_21C6CE7F0();

  return sub_21C688C80(v6);
}

unint64_t sub_21C6B7CF0()
{
  result = qword_27CDE71C8;
  if (!qword_27CDE71C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDE71A8, &qword_21C6D19A0);
    sub_21C6B7D74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDE71C8);
  }

  return result;
}

unint64_t sub_21C6B7D74()
{
  result = qword_27CDE71D0;
  if (!qword_27CDE71D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDE71D8, &qword_21C6D19C8);
    sub_21C694224(&qword_27CDE71E0, &qword_27CDE71E8, &qword_21C6D19D0);
    sub_21C694224(&qword_27CDE71F0, &qword_27CDE71F8, &qword_21C6D19D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDE71D0);
  }

  return result;
}

unint64_t sub_21C6B7E58()
{
  result = qword_27CDE7210;
  if (!qword_27CDE7210)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDE7218, &unk_21C6D19F0);
    sub_21C694224(&qword_27CDE7198, &qword_27CDE7188, &qword_21C6D1988);
    sub_21C6AD1C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDE7210);
  }

  return result;
}

uint64_t type metadata accessor for TitleValueSetting()
{
  result = qword_27CDE7220;
  if (!qword_27CDE7220)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21C6B7F84()
{
  sub_21C6B18F8();
  if (v0 <= 0x3F)
  {
    type metadata accessor for PropertyListValue();
    if (v1 <= 0x3F)
    {
      sub_21C6A50C4();
      if (v2 <= 0x3F)
      {
        sub_21C6A2ED4(319, &qword_27CDE6C68, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_21C6A2ED4(319, &qword_27CDE6C70, MEMORY[0x277D83940]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_21C6B80A0()
{
  v1 = *(v0 + *(type metadata accessor for TitleValueSetting() + 44));
  if (!*(v1 + 16))
  {
    return 1;
  }

  v2 = [objc_opt_self() currentDevice];
  v3 = [v2 userInterfaceIdiom];

  if (v3)
  {
    v4 = 6578512;
  }

  else
  {
    v4 = 0x656E6F6850;
  }

  if (v3)
  {
    v5 = 0xE300000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  v6 = (v1 + 40);
  v7 = *(v1 + 16) + 1;
  do
  {
    v8 = --v7 != 0;
    if (!v7)
    {
      break;
    }

    if (*(v6 - 1) == v4 && *v6 == v5)
    {
      break;
    }

    v6 += 2;
  }

  while ((sub_21C6CEE20() & 1) == 0);

  return v8;
}

uint64_t sub_21C6B8198@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _BYTE *a9@<X8>)
{
  v131 = a8;
  v124 = a7;
  v130 = a6;
  v123 = a5;
  v134 = a4;
  v135 = a3;
  v117 = a2;
  v132 = a9;
  v115 = type metadata accessor for LocalizedSettingValue();
  v114 = *(v115 - 8);
  v10 = *(v114 + 64);
  MEMORY[0x28223BE20](v115);
  v120 = &v101 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v119 = &v101 - v13;
  v126 = sub_21C6CDF20();
  v125 = *(v126 - 8);
  v14 = *(v125 + 64);
  MEMORY[0x28223BE20](v126);
  v118 = &v101 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6DA0, &unk_21C6D0E50);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v113 = &v101 - v18;
  v19 = sub_21C6CE010();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v116 = &v101 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = sub_21C6CDF00();
  v22 = *(v133 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v133);
  v25 = &v101 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_21C6CEB80();
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26 - 8);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6F10, &qword_21C6D1030);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28 - 8);
  v122 = &v101 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v128 = &v101 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6DA8, &unk_21C6D1A90);
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x28223BE20](v33 - 8);
  v36 = &v101 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v39 = &v101 - v38;
  v40 = type metadata accessor for PropertyListValue();
  v129 = *(v40 - 8);
  v41 = *(v129 + 64);
  MEMORY[0x28223BE20](v40);
  v121 = &v101 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v43);
  v45 = &v101 - v44;
  MEMORY[0x28223BE20](v46);
  v48 = (&v101 - v47);
  MEMORY[0x28223BE20](v49);
  v51 = &v101 - v50;
  MEMORY[0x28223BE20](v52);
  v127 = &v101 - v53;
  if (!*(a1 + 16))
  {
    goto LABEL_14;
  }

  v54 = sub_21C6C70F8(7955787, 0xE300000000000000);
  if ((v55 & 1) == 0)
  {
    goto LABEL_14;
  }

  sub_21C6A2734(*(a1 + 56) + 32 * v54, &v138);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_14;
  }

  v56 = HIBYTE(*(&v137 + 1)) & 0xFLL;
  if ((*(&v137 + 1) & 0x2000000000000000) == 0)
  {
    v56 = v137 & 0xFFFFFFFFFFFFLL;
  }

  if (!v56)
  {

LABEL_14:

    goto LABEL_15;
  }

  v112 = v137;
  if (!*(a1 + 16) || (v57 = sub_21C6C70F8(0x56746C7561666544, 0xEC00000065756C61), (v58 & 1) == 0))
  {

LABEL_15:

    goto LABEL_16;
  }

  sub_21C6A2734(*(a1 + 56) + 32 * v57, &v137);
  sub_21C6A6FC0(&v137, &v138);
  sub_21C6A2734(&v138, &v137);
  sub_21C6C50F8(&v137, v39);
  v59 = *(v129 + 48);
  v111 = (v129 + 48);
  v110 = v59;
  if ((v59)(v39, 1, v40) == 1)
  {
    __swift_destroy_boxed_opaque_existential_1(&v138);

    sub_21C68F7D4(v39, &qword_27CDE6DA8, &unk_21C6D1A90);
LABEL_16:
    (*(v22 + 8))(v134, v133);
    v60 = type metadata accessor for TitleValueSetting();
    return (*(*(v60 - 8) + 56))(v132, 1, 1, v60);
  }

  sub_21C6A7100(v39, v127, type metadata accessor for PropertyListValue);
  if (*(a1 + 16) && (v62 = sub_21C6C70F8(0x656C746954, 0xE500000000000000), (v63 & 1) != 0) && (sub_21C6A2734(*(a1 + 56) + 32 * v62, &v137), (swift_dynamicCast() & 1) != 0) && *(&v136 + 1))
  {
    v108 = *(&v136 + 1);
    v109 = v136;

    sub_21C6CEB70();
    (*(v22 + 16))(v25, v134, v133);

    sub_21C6CE000();
    v64 = v128;
    sub_21C6CDF30();
    v109 = *(v125 + 56);
    v109(v64, 0, 1, v126);
  }

  else
  {
    v109 = *(v125 + 56);
    v109(v128, 1, 1, v126);
  }

  if (!*(a1 + 16))
  {
    goto LABEL_34;
  }

  v65 = sub_21C6C70F8(0x73656C746954, 0xE600000000000000);
  if (v66)
  {
    sub_21C6A2734(*(a1 + 56) + 32 * v65, &v137);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6DB0, &unk_21C6D0E60);
    v67 = swift_dynamicCast() ? v136 : 0;
  }

  else
  {
    v67 = 0;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_34;
  }

  v108 = v67;
  v68 = sub_21C6C70F8(0x7365756C6156, 0xE600000000000000);
  if ((v69 & 1) == 0)
  {
    goto LABEL_34;
  }

  sub_21C6A2734(*(a1 + 56) + 32 * v68, &v136);
  sub_21C6A6FC0(&v136, &v137);
  sub_21C6A2734(&v137, &v136);
  sub_21C6C50F8(&v136, v36);
  __swift_destroy_boxed_opaque_existential_1(&v137);
  if ((v110)(v36, 1, v40) == 1)
  {

    sub_21C68F7D4(v36, &qword_27CDE6DA8, &unk_21C6D1A90);
LABEL_35:
    v70 = MEMORY[0x277D84F90];
    goto LABEL_36;
  }

  sub_21C6A7100(v36, v51, type metadata accessor for PropertyListValue);
  sub_21C6A7100(v51, v48, type metadata accessor for PropertyListValue);
  if (swift_getEnumCaseMultiPayload() != 6)
  {

    sub_21C6A70A0(v48, type metadata accessor for PropertyListValue);
    goto LABEL_35;
  }

  v84 = *v48;
  result = v108;
  if (!v108)
  {
    v100 = *v48;
LABEL_34:

    goto LABEL_35;
  }

  v85 = *(v108 + 16);
  if (v85 != *(v84 + 16))
  {

    sub_21C68F7D4(v128, &qword_27CDE6F10, &qword_21C6D1030);
    sub_21C6A70A0(v127, type metadata accessor for PropertyListValue);
    __swift_destroy_boxed_opaque_existential_1(&v138);
    goto LABEL_16;
  }

  if (!v85)
  {
    v70 = MEMORY[0x277D84F90];
LABEL_61:

LABEL_36:
    if (*(a1 + 16) && (v71 = sub_21C6C70F8(0xD00000000000001CLL, 0x800000021C6D3170), (v72 & 1) != 0))
    {
      sub_21C6A2734(*(a1 + 56) + 32 * v71, &v137);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE6DB0, &unk_21C6D0E60);
      if (swift_dynamicCast())
      {
        __swift_destroy_boxed_opaque_existential_1(&v138);
        v73 = v136;
LABEL_42:
        v74 = v122;
        sub_21C6AC488(v128, v122);
        v75 = v121;
        sub_21C6A7100(v127, v121, type metadata accessor for PropertyListValue);
        v76 = v132;
        *v132 = 3;
        v77 = type metadata accessor for TitleValueSetting();
        sub_21C6AC488(v74, &v76[v77[5]]);
        v78 = &v76[v77[6]];
        v79 = *(&v112 + 1);
        *v78 = v112;
        v78[1] = v79;
        sub_21C6A7100(v75, &v76[v77[7]], type metadata accessor for PropertyListValue);
        *&v76[v77[8]] = v70;
        v80 = &v76[v77[9]];
        v81 = v130;
        *v80 = v123;
        v80[1] = v81;
        v82 = &v76[v77[10]];
        v83 = v131;
        *v82 = v124;
        v82[1] = v83;
        *&v76[v77[11]] = v73;
        (*(*(v77 - 1) + 56))(v76, 0, 1, v77);
        return (*(v22 + 8))(v134, v133);
      }
    }

    else
    {
    }

    __swift_destroy_boxed_opaque_existential_1(&v138);
    v73 = MEMORY[0x277D84F90];
    goto LABEL_42;
  }

  v86 = 0;
  v105 = (v22 + 16);
  v104 = (v125 + 16);
  v103 = v125 + 56;
  v102 = (v125 + 8);
  v87 = (v108 + 40);
  v70 = MEMORY[0x277D84F90];
  v107 = v84;
  v106 = v85;
  while (v86 < *(v84 + 16))
  {
    result = sub_21C6A7038(v84 + ((*(v129 + 80) + 32) & ~*(v129 + 80)) + *(v129 + 72) * v86, v45, type metadata accessor for PropertyListValue);
    v88 = *(v108 + 16);
    if (v86 == v88)
    {

      sub_21C6A70A0(v45, type metadata accessor for PropertyListValue);
      goto LABEL_36;
    }

    v111 = v70;
    v125 = v86;
    if (v86 >= v88)
    {
      goto LABEL_64;
    }

    v89 = *(v87 - 1);
    v90 = *v87;
    v110 = v87;
    v91 = v113;
    sub_21C6A7100(v45, v113, type metadata accessor for PropertyListValue);

    sub_21C6CEB70();
    (*v105)(v25, v134, v133);

    sub_21C6CE000();
    v92 = v118;
    sub_21C6CDF30();
    v93 = v115;
    v94 = v119;
    sub_21C6A7100(v91, v119 + *(v115 + 24), type metadata accessor for PropertyListValue);
    v95 = v126;
    (*v104)(v94, v92, v126);
    v96 = v109;
    v109(v94, 0, 1, v95);
    v96(v94 + *(v93 + 20), 1, 1, v95);
    sub_21C6A7038(v94, v120, type metadata accessor for LocalizedSettingValue);
    v70 = v111;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v70 = sub_21C6C6EA4(0, v70[2] + 1, 1, v70);
    }

    v98 = v70[2];
    v97 = v70[3];
    v99 = v125;
    if (v98 >= v97 >> 1)
    {
      v70 = sub_21C6C6EA4(v97 > 1, v98 + 1, 1, v70);
    }

    sub_21C6A70A0(v119, type metadata accessor for LocalizedSettingValue);
    (*v102)(v118, v126);
    v70[2] = v98 + 1;
    v86 = v99 + 1;
    result = sub_21C6A7100(v120, v70 + ((*(v114 + 80) + 32) & ~*(v114 + 80)) + *(v114 + 72) * v98, type metadata accessor for LocalizedSettingValue);
    v87 = v110 + 16;
    v84 = v107;
    if (v106 == v86)
    {
      goto LABEL_61;
    }
  }

  __break(1u);
LABEL_64:
  __break(1u);
  return result;
}

uint64_t sub_21C6B9258()
{
  v1 = 0xD000000000000014;
  v2 = "ers";
  v3 = *v0;
  v4 = "PSSliderSpecifier";
  v5 = "PSTitleValueSpecifier";
  if (v3 == 4)
  {
    v6 = 0xD000000000000014;
  }

  else
  {
    v6 = 0xD000000000000015;
  }

  if (v3 != 4)
  {
    v5 = "PSTextFieldSpecifier";
  }

  if (v3 == 3)
  {
    v7 = 0xD000000000000015;
  }

  else
  {
    v7 = v6;
  }

  if (v3 != 3)
  {
    v4 = v5;
  }

  v8 = "PSChildPaneSpecifier";
  v9 = 0xD000000000000017;
  if (v3 != 1)
  {
    v9 = 0xD000000000000011;
    v8 = "PSToggleSwitchSpecifier";
  }

  if (*v0)
  {
    v1 = v9;
    v2 = v8;
  }

  if (*v0 <= 2u)
  {
    v10 = v1;
  }

  else
  {
    v10 = v7;
  }

  if (*v0 <= 2u)
  {
    v11 = v2;
  }

  else
  {
    v11 = v4;
  }

  MEMORY[0x21CF0F390](v10, v11 | 0x8000000000000000);

  MEMORY[0x21CF0F390](46, 0xE100000000000000);
  v12 = type metadata accessor for TitleValueSetting();
  MEMORY[0x21CF0F390](*&v0[*(v12 + 24)], *&v0[*(v12 + 24) + 8]);
  return 0;
}