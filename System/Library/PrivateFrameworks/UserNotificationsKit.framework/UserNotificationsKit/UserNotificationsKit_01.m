uint64_t sub_270A5D620@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_270A88AF0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083F3C0);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_270A4E700(v2, &v14 - v9, &qword_28083F3C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_270A88910();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_270A891B0();
    v13 = sub_270A88C10();
    sub_270A88860();

    sub_270A88AE0();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_270A5D838()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083F3B8);
  sub_270A88E40();
  return v1;
}

uint64_t sub_270A5D88C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  sub_270A5CA90(v2, a2);
  sub_270A625E8(v2, &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for NotificationSummarizationOnboardingCustomizationByCategoriesView);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  sub_270A62AB4(&v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for NotificationSummarizationOnboardingCustomizationByCategoriesView);
  v8 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083F3C8) + 36));
  *v8 = sub_270A5DAA8;
  v8[1] = v7;
  v8[2] = 0;
  v8[3] = 0;
  sub_270A625E8(v2, &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for NotificationSummarizationOnboardingCustomizationByCategoriesView);
  v9 = swift_allocObject();
  sub_270A62AB4(&v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v6, type metadata accessor for NotificationSummarizationOnboardingCustomizationByCategoriesView);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083F3D0);
  v11 = (a2 + *(result + 36));
  *v11 = 0;
  v11[1] = 0;
  v11[2] = sub_270A5DBF8;
  v11[3] = v9;
  return result;
}

uint64_t sub_270A5DA50(uint64_t a1)
{
  result = sub_270A5DC74(&qword_28083F3B0, type metadata accessor for NotificationSummarizationOnboardingCustomizationByCategoriesView);
  *(a1 + 8) = result;
  return result;
}

uint64_t objectdestroyTm()
{
  v1 = type metadata accessor for NotificationSummarizationOnboardingCustomizationByCategoriesView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  if (*(v0 + v3))
  {
  }

  v6 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083F3C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_270A88910();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_270A5DC00(char a1)
{
  v3 = type metadata accessor for NotificationSummarizationOnboardingCustomizationByCategoriesView(0);
  v5 = *(v3 - 8);
  result = v3 - 8;
  v6 = (v1 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));
  if (*v6)
  {
    return (*v6)(a1 & 1);
  }

  return result;
}

uint64_t sub_270A5DC74(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_270A5DCBC()
{
  result = qword_28083F408;
  if (!qword_28083F408)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28083F3D8);
    sub_270A4E7E4(&qword_28083F410, &qword_28083F418);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28083F408);
  }

  return result;
}

uint64_t sub_270A5DD94()
{
  v1 = sub_270A88840();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v4, v0, v1);
  v5 = (*(v2 + 88))(v4, v1);
  if (v5 == *MEMORY[0x277D77EF0])
  {
    if (qword_28083EE00 == -1)
    {
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  if (v5 != *MEMORY[0x277D77EE8])
  {
    if (v5 == *MEMORY[0x277D77F00])
    {
      if (qword_28083EE00 == -1)
      {
        goto LABEL_11;
      }

      goto LABEL_12;
    }

    if (v5 != *MEMORY[0x277D77EF8])
    {
      (*(v2 + 8))(v4, v1);
    }
  }

  if (qword_28083EE00 != -1)
  {
LABEL_12:
    swift_once();
  }

LABEL_11:
  v6 = qword_280842BE0;
  v7 = sub_270A88FB0();
  v8 = sub_270A88FB0();
  v9 = [v6 localizedStringForKey:v7 value:0 table:v8];

  v10 = sub_270A88FC0();
  return v10;
}

char *sub_270A5E088()
{
  v1 = *(v0 + *(type metadata accessor for SourceGroupView(0) + 28));
  if (v1 >> 62)
  {
    v2 = sub_270A892D0();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v2)
  {
LABEL_12:
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28083FBB0);
    sub_270A4E7E4(&qword_28083FDB0, &unk_28083FBB0);
    v14 = sub_270A88F90();

    return v14;
  }

  v15 = MEMORY[0x277D84F90];
  result = sub_270A50388(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v4 = 0;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x2743AE840](v4, v1);
      }

      else
      {
        v5 = *(v1 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = [v5 displayName];
      v8 = sub_270A88FC0();
      v10 = v9;

      v12 = *(v15 + 16);
      v11 = *(v15 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_270A50388((v11 > 1), v12 + 1, 1);
      }

      ++v4;
      *(v15 + 16) = v12 + 1;
      v13 = v15 + 16 * v12;
      *(v13 + 32) = v8;
      *(v13 + 40) = v10;
    }

    while (v2 != v4);
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t sub_270A5E258()
{
  v0 = sub_270A88840();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SourceGroupView(0);
  (*(v1 + 104))(v3, *MEMORY[0x277D77EE8], v0);
  sub_270A5DC74(&qword_28122C2B0, MEMORY[0x277D77F08]);
  sub_270A89090();
  sub_270A89090();
  if (v12[2] == v12[0] && v12[3] == v12[1])
  {
    (*(v1 + 8))(v3, v0);
  }

  else
  {
    v5 = sub_270A89570();
    (*(v1 + 8))(v3, v0);

    if ((v5 & 1) == 0)
    {
      return 0;
    }
  }

  MEMORY[0x2743ADCC0](v4);
  if (qword_28083EE00 != -1)
  {
    swift_once();
  }

  v6 = qword_280842BE0;
  v7 = sub_270A88FB0();

  v8 = sub_270A88FB0();
  v9 = [v6 localizedStringForKey:v7 value:0 table:v8];

  v10 = sub_270A88FC0();
  return v10;
}

void sub_270A5E528(uint64_t a1)
{
  v2 = type metadata accessor for SourceGroupView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083F558);
  sub_270A88E40();
  sub_270A6A3B8(a1 + *(v2 + 20));
}

uint64_t sub_270A5E5A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a2;
  v59 = sub_270A88910();
  v3 = *(v59 - 8);
  v4 = MEMORY[0x28223BE20](v59);
  v6 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v58 - v7;
  v9 = sub_270A88990();
  v10 = v9 - 8;
  MEMORY[0x28223BE20](v9);
  v12 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083F4C0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v58 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083F4A8);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = (&v58 - v17);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083F498);
  v20 = v19 - 8;
  MEMORY[0x28223BE20](v19);
  v22 = &v58 - v21;
  *v18 = sub_270A88EA0();
  v18[1] = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083F4C8);
  sub_270A5EB54(a1, v18 + *(v24 + 44));
  sub_270A88EA0();
  sub_270A889A0();
  sub_270A63318(v18, v22, &qword_28083F4A8);
  v25 = *(v20 + 44);
  v60 = v22;
  v26 = &v22[v25];
  v27 = v12;
  v28 = v67;
  *(v26 + 4) = v66;
  *(v26 + 5) = v28;
  *(v26 + 6) = v68;
  v29 = v63;
  *v26 = v62;
  *(v26 + 1) = v29;
  v30 = v65;
  *(v26 + 2) = v64;
  *(v26 + 3) = v30;
  v31 = *(v10 + 28);
  v32 = *MEMORY[0x277CE0118];
  v33 = sub_270A88B20();
  (*(*(v33 - 8) + 104))(&v12[v31], v32, v33);
  __asm { FMOV            V0.2D, #16.0 }

  *v12 = _Q0;
  sub_270A5D620(v8);
  v39 = v59;
  (*(v3 + 104))(v6, *MEMORY[0x277CDF3C0], v59);
  sub_270A88900();
  v40 = *(v3 + 8);
  v40(v6, v39);
  v40(v8, v39);
  if (qword_28083EE50 != -1)
  {
    swift_once();
  }

  v41 = [objc_opt_self() currentDevice];
  [v41 userInterfaceIdiom];

  v42 = sub_270A88D80();
  sub_270A88940();
  sub_270A625E8(v27, v15, MEMORY[0x277CDFC08]);
  v43 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083F4D0) + 36)];
  v44 = v70;
  *v43 = v69;
  *(v43 + 1) = v44;
  *(v43 + 4) = v71;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083F4D8);
  *&v15[*(v45 + 52)] = v42;
  *&v15[*(v45 + 56)] = 256;
  v46 = sub_270A88EA0();
  v48 = v47;
  sub_270A62CF4(v27, MEMORY[0x277CDFC08]);
  v49 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083F4E0) + 36)];
  *v49 = v46;
  v49[1] = v48;
  v50 = sub_270A88EA0();
  v52 = v51;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083F480);
  v54 = v61;
  v55 = v61 + *(v53 + 36);
  sub_270A63318(v15, v55, &qword_28083F4C0);
  v56 = (v55 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083F4B8) + 36));
  *v56 = v50;
  v56[1] = v52;
  return sub_270A63318(v60, v54, &qword_28083F498);
}

uint64_t sub_270A5EB54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083F4E8);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v28 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083F4F0);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v28 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083F4F8);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v28 - v19;
  *v20 = sub_270A88B10();
  *(v20 + 1) = 0;
  v20[16] = 1;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083F500);
  sub_270A5EEC0(a1, &v20[*(v21 + 44)]);
  *v14 = sub_270A88B50();
  *(v14 + 1) = 0;
  v14[16] = 0;
  v22 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083F508) + 44)];
  *v8 = sub_270A88B00();
  *(v8 + 1) = 0;
  v8[16] = 0;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083F510);
  sub_270A5FD4C(a1, &v8[*(v23 + 44)]);
  sub_270A4E700(v8, v6, &qword_28083F4E8);
  sub_270A4E700(v6, v22, &qword_28083F4E8);
  v24 = v22 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083F518) + 48);
  *v24 = 0;
  *(v24 + 8) = 1;
  sub_270A4E644(v8, &qword_28083F4E8);
  sub_270A4E644(v6, &qword_28083F4E8);
  sub_270A4E700(v20, v18, &qword_28083F4F8);
  sub_270A4E700(v14, v12, &qword_28083F4F0);
  v25 = v29;
  sub_270A4E700(v18, v29, &qword_28083F4F8);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083F520);
  sub_270A4E700(v12, v25 + *(v26 + 48), &qword_28083F4F0);
  sub_270A4E644(v14, &qword_28083F4F0);
  sub_270A4E644(v20, &qword_28083F4F8);
  sub_270A4E644(v12, &qword_28083F4F0);
  return sub_270A4E644(v18, &qword_28083F4F8);
}

uint64_t sub_270A5EEC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a1;
  v34 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083F578);
  v4 = v3 - 8;
  v5 = MEMORY[0x28223BE20](v3);
  v35 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = (&v30 - v7);
  v9 = type metadata accessor for SourceGroupView(0);
  v10 = *(a1 + *(v9 + 28));
  v32 = type metadata accessor for NotificationSourceIconCache();
  v33 = sub_270A5DC74(&qword_28083F070, type metadata accessor for NotificationSourceIconCache);

  v11 = sub_270A889E0();
  v13 = v12;
  KeyPath = swift_getKeyPath();
  v15 = type metadata accessor for SourceGroupIconView(0);
  *(v8 + *(v15 + 20)) = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083F3C0);
  swift_storeEnumTagMultiPayload();
  *v8 = v11;
  v8[1] = v13;
  *(v8 + *(v15 + 24)) = v10;
  v16 = (v31 + *(v9 + 24));
  v18 = *v16;
  v17 = v16[1];
  v39 = v18;
  v40 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083F558);
  sub_270A88E40();
  v19 = v38[0];
  swift_getKeyPath();
  v39 = v19;
  sub_270A5DC74(&qword_28083FB80, type metadata accessor for NotificationSummarizationOnboardingViewModel);
  sub_270A88790();

  v20 = *&v19[OBJC_IVAR____TtC20UserNotificationsKit44NotificationSummarizationOnboardingViewModel__iconCache];

  v21 = sub_270A888B0();
  v22 = (v8 + *(v4 + 44));
  *v22 = v21;
  v22[1] = v20;
  v23 = sub_270A88B40();
  LOBYTE(v39) = 1;
  sub_270A5F278(v37);
  memcpy(&v36[7], v37, 0x193uLL);
  LOBYTE(v19) = v39;
  v24 = v35;
  sub_270A4E700(v8, v35, &qword_28083F578);
  v25 = v34;
  sub_270A4E700(v24, v34, &qword_28083F578);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083F580);
  v27 = *(v26 + 48);
  v38[0] = v23;
  v38[1] = 0;
  LOBYTE(v38[2]) = v19;
  memcpy(&v38[2] + 1, v36, 0x19AuLL);
  memcpy((v25 + v27), v38, 0x1ABuLL);
  v28 = v25 + *(v26 + 64);
  *v28 = 0;
  *(v28 + 8) = 1;
  sub_270A4E700(v38, &v39, &qword_28083F588);
  sub_270A4E644(v8, &qword_28083F578);
  v39 = v23;
  v40 = 0;
  v41 = v19;
  memcpy(v42, v36, sizeof(v42));
  sub_270A4E644(&v39, &qword_28083F588);
  return sub_270A4E644(v35, &qword_28083F578);
}

uint64_t sub_270A5F278@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v80 = type metadata accessor for SourceGroupView(0);
  v81 = *(v80 + 20);
  v153 = sub_270A5DD94();
  v154 = v3;
  sub_270A51284();
  v4 = sub_270A88CE0();
  v6 = v5;
  v8 = v7;
  if (qword_28083EE18 != -1)
  {
    swift_once();
  }

  v9 = sub_270A88CD0();
  v106 = v10;
  v107 = v9;
  v12 = v11;
  v108 = v13;
  sub_270A62D74(v4, v6, v8 & 1);

  if (qword_28083EE20 != -1)
  {
    swift_once();
  }

  v105 = qword_280842C08;

  v104 = sub_270A88C80();
  sub_270A888F0();
  v93 = v15;
  v94 = v14;
  v91 = v17;
  v92 = v16;
  v97 = v12 & 1;
  LOBYTE(v118) = 0;
  KeyPath = swift_getKeyPath();
  v103 = sub_270A88C40();
  sub_270A888F0();
  v101 = v19;
  v102 = v18;
  v99 = v21;
  v100 = v20;
  v153 = sub_270A5E088();
  v154 = v22;
  v23 = sub_270A88CE0();
  v25 = v24;
  v27 = v26;
  if (qword_28083EE28 != -1)
  {
    swift_once();
  }

  v28 = sub_270A88CD0();
  v30 = v29;
  v32 = v31;
  sub_270A62D74(v23, v25, v27 & 1);

  if (qword_28083EE30 != -1)
  {
    swift_once();
  }

  v33 = sub_270A88CC0();
  v88 = v34;
  v89 = v33;
  v36 = v35;
  v90 = v37;
  sub_270A62D74(v28, v30, v32 & 1);

  v82 = swift_getKeyPath();
  v87 = sub_270A88C80();
  sub_270A888F0();
  v85 = v39;
  v86 = v38;
  v83 = v41;
  v84 = v40;
  v96 = v36 & 1;
  LOBYTE(v118) = 0;
  LOBYTE(v136[0]) = 0;
  v153 = sub_270A5E258();
  v154 = v42;
  v43 = sub_270A88CE0();
  v45 = v44;
  v47 = v46;
  if (qword_28083EE48 != -1)
  {
    swift_once();
  }

  v48 = sub_270A88CD0();
  v50 = v49;
  v52 = v51;
  sub_270A62D74(v43, v45, v47 & 1);

  v154 = *(v2 + *(v80 + 24) + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083F558);
  sub_270A88E40();
  swift_getKeyPath();
  v153 = v118;
  sub_270A5DC74(&qword_28083FB80, type metadata accessor for NotificationSummarizationOnboardingViewModel);
  sub_270A88790();

  v53 = OBJC_IVAR____TtC20UserNotificationsKit44NotificationSummarizationOnboardingViewModel__selectedCategories;
  swift_beginAccess();
  v54 = *(v118 + v53);

  v55 = sub_270A6A0E0(v2 + v81, v54);

  if (v55)
  {
    if (qword_28083EE40 != -1)
    {
      swift_once();
    }

    v56 = &qword_280842C28;
  }

  else
  {
    if (qword_28083EE38 != -1)
    {
      swift_once();
    }

    v56 = &qword_280842C20;
  }

  v57 = *v56;

  v153 = v57;
  v58 = sub_270A88CC0();
  v60 = v59;
  v62 = v61;
  v64 = v63;
  sub_270A62D74(v48, v50, v52 & 1);

  v65 = swift_getKeyPath();
  LOBYTE(v57) = sub_270A88C80();
  sub_270A888F0();
  v67 = v66;
  v69 = v68;
  v71 = v70;
  v73 = v72;
  v181 = v62 & 1;
  v180 = 0;
  v74 = sub_270A88C50();
  sub_270A888F0();
  v182 = 0;
  *&v110 = v58;
  *(&v110 + 1) = v60;
  LOBYTE(v111) = v62 & 1;
  *(&v111 + 1) = v64;
  *&v112 = v65;
  BYTE8(v112) = 0;
  LOBYTE(v113) = v57;
  *(&v113 + 1) = v67;
  *&v114 = v69;
  *(&v114 + 1) = v71;
  *&v115 = v73;
  BYTE8(v115) = 0;
  LOBYTE(v116) = v74;
  *(&v116 + 1) = v75;
  *v117 = v76;
  *&v117[8] = v77;
  *&v117[16] = v78;
  v117[24] = 0;
  *&v117[25] = 256;
  nullsub_1(&v110);
  v136[6] = v116;
  v137[0] = *v117;
  *(v137 + 11) = *&v117[11];
  v136[2] = v112;
  v136[3] = v113;
  v136[5] = v115;
  v136[4] = v114;
  v136[1] = v111;
  v136[0] = v110;
  *&v118 = v107;
  *(&v118 + 1) = v106;
  LOBYTE(v119) = v97;
  *(&v119 + 1) = *v189;
  DWORD1(v119) = *&v189[3];
  *(&v119 + 1) = v108;
  LOWORD(v120) = 256;
  *(&v120 + 2) = v187;
  WORD3(v120) = v188;
  *(&v120 + 1) = v105;
  LOBYTE(v121) = v104;
  *(&v121 + 1) = *v186;
  DWORD1(v121) = *&v186[3];
  *(&v121 + 1) = v94;
  *&v122 = v93;
  *(&v122 + 1) = v92;
  *&v123 = v91;
  BYTE8(v123) = 0;
  *(&v123 + 9) = *v190;
  HIDWORD(v123) = *&v190[3];
  *&v124 = KeyPath;
  BYTE8(v124) = 0;
  *(&v124 + 9) = v192[0];
  HIDWORD(v124) = *(v192 + 3);
  LOBYTE(v125) = v103;
  DWORD1(v125) = *&v191[3];
  *(&v125 + 1) = *v191;
  *(&v125 + 1) = v102;
  *v126 = v101;
  *&v126[8] = v100;
  *&v126[16] = v99;
  v126[24] = 0;
  __src[4] = v122;
  __src[5] = v123;
  __src[2] = v120;
  __src[3] = v121;
  __src[0] = v118;
  __src[1] = v119;
  *(&__src[8] + 9) = *&v126[9];
  __src[6] = v124;
  __src[7] = v125;
  *&v127 = v89;
  *(&v127 + 1) = v88;
  LOBYTE(v128) = v96;
  *(&v128 + 1) = v185[0];
  DWORD1(v128) = *(v185 + 3);
  *(&v128 + 1) = v90;
  *&v129 = v82;
  *(&v129 + 1) = 1;
  LOBYTE(v130) = 0;
  *(&v130 + 1) = *v184;
  DWORD1(v130) = *&v184[3];
  BYTE8(v130) = v87;
  HIDWORD(v130) = *&v183[3];
  *(&v130 + 9) = *v183;
  *&v131 = v86;
  *(&v131 + 1) = v85;
  *&v132 = v84;
  *(&v132 + 1) = v83;
  __src[11] = v128;
  __src[12] = v129;
  __src[8] = *v126;
  __src[10] = v127;
  __src[14] = v131;
  __src[15] = v132;
  __src[13] = v130;
  v134[3] = v113;
  v134[2] = v112;
  v134[0] = v110;
  v134[1] = v111;
  *(v135 + 11) = *&v117[11];
  v135[0] = *v117;
  v134[6] = v116;
  v134[4] = v114;
  v134[5] = v115;
  *(&__src[22] + 8) = v116;
  *(&__src[23] + 8) = *v117;
  *(&__src[24] + 3) = *&v117[11];
  *(&__src[18] + 8) = v112;
  *(&__src[19] + 8) = v113;
  v133 = 0;
  LOBYTE(__src[16]) = 0;
  *(&__src[20] + 8) = v114;
  *(&__src[21] + 8) = v115;
  *(&__src[16] + 8) = v110;
  *(&__src[17] + 8) = v111;
  memcpy(a1, __src, 0x193uLL);
  sub_270A4E700(&v118, &v153, &qword_28083F590);
  sub_270A4E700(&v127, &v153, &qword_28083F598);
  sub_270A4E700(v134, &v153, &qword_28083F5A0);
  sub_270A4E644(v136, &qword_28083F5A0);
  v138[0] = v89;
  v138[1] = v88;
  v139 = v96;
  *v140 = v185[0];
  *&v140[3] = *(v185 + 3);
  v141 = v90;
  v142 = v82;
  v143 = 1;
  v144 = 0;
  *v145 = *v184;
  *&v145[3] = *&v184[3];
  v146 = v87;
  *&v147[3] = *&v183[3];
  *v147 = *v183;
  v148 = v86;
  v149 = v85;
  v150 = v84;
  v151 = v83;
  v152 = 0;
  sub_270A4E644(v138, &qword_28083F598);
  v153 = v107;
  v154 = v106;
  v155 = v97;
  *v156 = *v189;
  *&v156[3] = *&v189[3];
  v157 = v108;
  v158 = 256;
  v159 = v187;
  v160 = v188;
  v161 = v105;
  v162 = v104;
  *&v163[3] = *&v186[3];
  *v163 = *v186;
  v164 = v94;
  v165 = v93;
  v166 = v92;
  v167 = v91;
  v168 = 0;
  *v169 = *v190;
  *&v169[3] = *&v190[3];
  v170 = KeyPath;
  v171 = 0;
  *v172 = v192[0];
  *&v172[3] = *(v192 + 3);
  v173 = v103;
  *&v174[3] = *&v191[3];
  *v174 = *v191;
  v175 = v102;
  v176 = v101;
  v177 = v100;
  v178 = v99;
  v179 = 0;
  return sub_270A4E644(&v153, &qword_28083F590);
}

uint64_t sub_270A5FD4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083F528);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = (&v33 - v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083F530);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v33 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v33 - v14;
  *v6 = sub_270A88E90();
  v6[1] = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083F538);
  sub_270A60038(a1, v6 + *(v17 + 44));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083F540);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_270A8E2A0;
  v19 = sub_270A88C80();
  *(inited + 32) = v19;
  v20 = sub_270A88C40();
  *(inited + 33) = v20;
  v21 = sub_270A88C70();
  sub_270A88C70();
  if (sub_270A88C70() != v19)
  {
    v21 = sub_270A88C70();
  }

  sub_270A88C70();
  if (sub_270A88C70() != v20)
  {
    v21 = sub_270A88C70();
  }

  sub_270A888F0();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  sub_270A63318(v6, v13, &qword_28083F528);
  v30 = &v13[*(v7 + 36)];
  *v30 = v21;
  *(v30 + 1) = v23;
  *(v30 + 2) = v25;
  *(v30 + 3) = v27;
  *(v30 + 4) = v29;
  v30[40] = 0;
  sub_270A63318(v13, v15, &qword_28083F530);
  sub_270A4E700(v15, v10, &qword_28083F530);
  *a2 = 0;
  *(a2 + 8) = 1;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083F548);
  sub_270A4E700(v10, a2 + *(v31 + 48), &qword_28083F530);
  sub_270A4E644(v15, &qword_28083F530);
  return sub_270A4E644(v10, &qword_28083F530);
}

uint64_t sub_270A60038@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_270A88EE0();
  v48 = *(v4 - 8);
  v49 = v4;
  MEMORY[0x28223BE20](v4);
  v46 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_270A88EC0();
  v45 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v44 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083F550);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v36 - v8;
  v10 = type metadata accessor for SourceGroupView(0);
  v11 = (a1 + *(v10 + 24));
  v12 = v11[1];
  v36 = *v11;
  v56 = v36;
  v57 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083F558);
  sub_270A88E40();
  v13 = v53;
  swift_getKeyPath();
  v56 = v13;
  sub_270A5DC74(&qword_28083FB80, type metadata accessor for NotificationSummarizationOnboardingViewModel);
  sub_270A88790();

  v14 = OBJC_IVAR____TtC20UserNotificationsKit44NotificationSummarizationOnboardingViewModel__selectedCategories;
  swift_beginAccess();
  v15 = *&v13[v14];

  v16 = a1;
  v17 = *(v10 + 20);
  sub_270A6A0E0(a1 + v17, v15);

  sub_270A88DE0();
  sub_270A88B60();
  v18 = sub_270A88B70();
  (*(*(v18 - 8) + 56))(v9, 0, 1, v18);
  v43 = sub_270A88E00();

  sub_270A4E644(v9, &qword_28083F550);
  sub_270A88EA0();
  sub_270A88970();
  v41 = v56;
  v19 = v57;
  v40 = v58;
  v20 = v59;
  v39 = v60;
  v38 = v61;
  if (qword_28083EE78 != -1)
  {
    swift_once();
  }

  v21 = qword_280842C60;
  KeyPath = swift_getKeyPath();
  v55 = v19;
  v42 = v20;
  v54 = v20;
  v50 = v36;
  v51 = v12;

  sub_270A88E40();
  v22 = v52;
  swift_getKeyPath();
  v50 = v22;
  sub_270A88790();

  v23 = OBJC_IVAR____TtC20UserNotificationsKit44NotificationSummarizationOnboardingViewModel__selectedCategories;
  swift_beginAccess();
  v24 = *&v22[v23];

  v25 = sub_270A6A0E0(v16 + v17, v24);

  if (v25)
  {
    if (qword_28083EE68 != -1)
    {
      swift_once();
    }

    v26 = &qword_280842C50;
  }

  else
  {
    if (qword_28083EE70 != -1)
    {
      swift_once();
    }

    v26 = &qword_280842C58;
  }

  v27 = *v26;

  v28 = swift_getKeyPath();
  v29 = v44;
  sub_270A88EB0();
  v30 = v46;
  sub_270A88ED0();
  v31 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083F560) + 36));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083F568);
  sub_270A5DC74(&qword_28083F570, MEMORY[0x277CE1598]);
  v32 = v47;
  sub_270A889B0();
  (*(v48 + 8))(v30, v49);
  (*(v45 + 8))(v29, v32);
  result = swift_getKeyPath();
  *v31 = result;
  v34 = v41;
  *a2 = v43;
  *(a2 + 8) = v34;
  *(a2 + 16) = v19;
  *(a2 + 24) = v40;
  *(a2 + 32) = v42;
  v35 = v38;
  *(a2 + 40) = v39;
  *(a2 + 48) = v35;
  *(a2 + 56) = KeyPath;
  *(a2 + 64) = v21;
  *(a2 + 72) = v28;
  *(a2 + 80) = v27;
  return result;
}

uint64_t sub_270A606A4(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  sub_270A625E8(v1, &v7[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for SourceGroupView);
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = swift_allocObject();
  sub_270A62AB4(&v7[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)], v5 + v4, type metadata accessor for SourceGroupView);
  v8 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083F480);
  sub_270A62B84();
  return sub_270A88E70();
}

uint64_t sub_270A60808@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083F5D0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = (&v37 - v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083F5D8);
  MEMORY[0x28223BE20](v7);
  v9 = &v37 - v8;
  *v6 = sub_270A88EA0();
  v6[1] = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083F5E0);
  sub_270A60ABC(v2, v6 + *(v11 + 44));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083F540);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_270A8D610;
  v13 = sub_270A88C40();
  *(inited + 32) = v13;
  v14 = sub_270A88C60();
  *(inited + 33) = v14;
  v15 = sub_270A88C50();
  *(inited + 34) = v15;
  v16 = sub_270A88C70();
  sub_270A88C70();
  if (sub_270A88C70() != v13)
  {
    v16 = sub_270A88C70();
  }

  sub_270A88C70();
  if (sub_270A88C70() != v14)
  {
    v16 = sub_270A88C70();
  }

  sub_270A88C70();
  if (sub_270A88C70() != v15)
  {
    v16 = sub_270A88C70();
  }

  sub_270A888F0();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  sub_270A63318(v6, v9, &qword_28083F5D0);
  v25 = &v9[*(v7 + 36)];
  *v25 = v16;
  *(v25 + 1) = v18;
  *(v25 + 2) = v20;
  *(v25 + 3) = v22;
  *(v25 + 4) = v24;
  v25[40] = 0;
  v26 = sub_270A88C80();
  sub_270A888F0();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  sub_270A63318(v9, a1, &qword_28083F5D8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083F5E8);
  v36 = a1 + *(result + 36);
  *v36 = v26;
  *(v36 + 8) = v28;
  *(v36 + 16) = v30;
  *(v36 + 24) = v32;
  *(v36 + 32) = v34;
  *(v36 + 40) = 0;
  return result;
}

uint64_t sub_270A60ABC@<X0>(char **a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a1;
  v49 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083F5F0);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v50 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v6 = &v46 - v5;
  v7 = sub_270A88910();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v46 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083F5F8);
  v15 = v14 - 8;
  MEMORY[0x28223BE20](v14);
  v17 = &v46 - v16;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083F600);
  v18 = MEMORY[0x28223BE20](v46);
  v48 = &v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v46 - v21;
  MEMORY[0x28223BE20](v20);
  v47 = &v46 - v23;
  v24 = *(sub_270A88990() + 20);
  v25 = *MEMORY[0x277CE0118];
  v26 = sub_270A88B20();
  (*(*(v26 - 8) + 104))(&v17[v24], v25, v26);
  __asm { FMOV            V0.2D, #6.0 }

  *v17 = _Q0;
  sub_270A88EA0();
  sub_270A88970();
  v32 = &v17[*(v15 + 44)];
  v33 = v53;
  *v32 = v52;
  *(v32 + 1) = v33;
  *(v32 + 2) = v54;
  sub_270A61CA8(type metadata accessor for SourceGroupIconView, v13);
  (*(v8 + 104))(v11, *MEMORY[0x277CDF3C0], v7);
  sub_270A88900();
  v34 = *(v8 + 8);
  v34(v11, v7);
  v34(v13, v7);
  if (qword_28083EE60 != -1)
  {
    swift_once();
  }

  v35 = [objc_opt_self() currentDevice];
  [v35 userInterfaceIdiom];

  v36 = sub_270A88D80();
  sub_270A63318(v17, v22, &qword_28083F5F8);
  *&v22[*(v46 + 36)] = v36;
  v37 = v22;
  v38 = v47;
  sub_270A63318(v37, v47, &qword_28083F600);
  *v6 = sub_270A88EA0();
  *(v6 + 1) = v39;
  *(v6 + 2) = 0x4008000000000000;
  v6[24] = 0;
  *(v6 + 4) = 0x4008000000000000;
  v6[40] = 0;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083F608);
  sub_270A6101C(v51, &v6[*(v40 + 44)]);
  v41 = v48;
  sub_270A4E700(v38, v48, &qword_28083F600);
  v42 = v50;
  sub_270A4E700(v6, v50, &qword_28083F5F0);
  v43 = v49;
  sub_270A4E700(v41, v49, &qword_28083F600);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083F610);
  sub_270A4E700(v42, v43 + *(v44 + 48), &qword_28083F5F0);
  sub_270A4E644(v6, &qword_28083F5F0);
  sub_270A4E644(v38, &qword_28083F600);
  sub_270A4E644(v42, &qword_28083F5F0);
  return sub_270A4E644(v41, &qword_28083F600);
}

uint64_t sub_270A6101C@<X0>(char **a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083F618);
  v5 = v4 - 8;
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v19 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v19 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v19 - v15;
  *v16 = 0;
  v16[8] = 1;
  sub_270A611FC(a1, &v19 + *(v5 + 44) - v15);
  *v14 = 0;
  v14[8] = 1;
  sub_270A61750(a1, &v14[*(v5 + 44)]);
  sub_270A4E700(v16, v11, &qword_28083F618);
  sub_270A4E700(v14, v8, &qword_28083F618);
  sub_270A4E700(v11, a2, &qword_28083F618);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083F620);
  sub_270A4E700(v8, a2 + *(v17 + 48), &qword_28083F618);
  sub_270A4E644(v14, &qword_28083F618);
  sub_270A4E644(v16, &qword_28083F618);
  sub_270A4E644(v8, &qword_28083F618);
  return sub_270A4E644(v11, &qword_28083F618);
}

uint64_t sub_270A611FC@<X0>(char **a1@<X0>, uint64_t a2@<X8>)
{
  v65 = type metadata accessor for SourceIconContainerView(0);
  v4 = MEMORY[0x28223BE20](v65);
  v6 = (&v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v4);
  v8 = (&v54 - v7);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083F628);
  v9 = MEMORY[0x28223BE20](v64);
  v11 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v54 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v54 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v54 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v54 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = &v54 - v24;
  v26 = *(type metadata accessor for SourceGroupIconView(0) + 24);
  v62 = a1;
  v27 = *(a1 + v26);
  v61 = v27 >> 62;
  if (v27 >> 62)
  {
    v28 = sub_270A892D0();
  }

  else
  {
    v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v58 = v11;
  v59 = a2;
  v56 = v20;
  v57 = v14;
  v63 = v25;
  v55 = v17;
  v60 = v6;
  if (v28 < 1)
  {
    v30 = 0;
  }

  else
  {
    if ((v27 & 0xC000000000000001) != 0)
    {
      v29 = MEMORY[0x2743AE840](0, v27);
    }

    else
    {
      if (!*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_22;
      }

      v29 = *(v27 + 32);
    }

    v30 = v29;
  }

  type metadata accessor for NotificationSourceIconCache();
  sub_270A5DC74(&qword_28083F070, type metadata accessor for NotificationSourceIconCache);
  v31 = sub_270A889E0();
  v33 = v32;
  KeyPath = swift_getKeyPath();
  v35 = v65;
  *(v8 + *(v65 + 20)) = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083F3C0);
  swift_storeEnumTagMultiPayload();
  *v8 = v31;
  v8[1] = v33;
  *(v8 + *(v35 + 24)) = v30;
  v14 = *v62;
  if (!*v62)
  {
    goto LABEL_24;
  }

  v36 = sub_270A888B0();
  sub_270A62AB4(v8, v23, type metadata accessor for SourceIconContainerView);
  v17 = v63;
  v37 = &v23[*(v64 + 36)];
  *v37 = v36;
  v37[1] = v14;
  sub_270A63318(v23, v17, &qword_28083F628);
  v6 = v60;
  if (v61)
  {
    if (sub_270A892D0() <= 1)
    {
      goto LABEL_12;
    }
  }

  else if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) <= 1)
  {
LABEL_12:
    v38 = 0;
LABEL_18:
    v40 = sub_270A889E0();
    v42 = v41;
    v43 = swift_getKeyPath();
    v44 = v65;
    *(v6 + *(v65 + 20)) = v43;
    swift_storeEnumTagMultiPayload();
    *v6 = v40;
    v6[1] = v42;
    *(v6 + *(v44 + 24)) = v38;

    v45 = sub_270A888B0();
    v46 = v55;
    sub_270A62AB4(v6, v55, type metadata accessor for SourceIconContainerView);
    v47 = (v46 + *(v64 + 36));
    *v47 = v45;
    v47[1] = v14;
    v48 = v56;
    sub_270A63318(v46, v56, &qword_28083F628);
    v49 = v57;
    sub_270A4E700(v17, v57, &qword_28083F628);
    v50 = v58;
    sub_270A4E700(v48, v58, &qword_28083F628);
    v51 = v59;
    sub_270A4E700(v49, v59, &qword_28083F628);
    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083F630);
    sub_270A4E700(v50, v51 + *(v52 + 48), &qword_28083F628);
    sub_270A4E644(v48, &qword_28083F628);
    sub_270A4E644(v17, &qword_28083F628);
    sub_270A4E644(v50, &qword_28083F628);
    return sub_270A4E644(v49, &qword_28083F628);
  }

  if ((v27 & 0xC000000000000001) != 0)
  {
LABEL_22:
    v39 = MEMORY[0x2743AE840](1, v27);
    goto LABEL_17;
  }

  if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
  {
    v39 = *(v27 + 40);
LABEL_17:
    v38 = v39;
    goto LABEL_18;
  }

  __break(1u);
LABEL_24:
  result = sub_270A889D0();
  __break(1u);
  return result;
}

uint64_t sub_270A61750@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v68 = type metadata accessor for SourceIconContainerView(0);
  v4 = MEMORY[0x28223BE20](v68);
  v6 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = (&v57 - v7);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083F628);
  v9 = MEMORY[0x28223BE20](v67);
  v11 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v57 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v57 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v57 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v57 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = &v57 - v24;
  v26 = *(type metadata accessor for SourceGroupIconView(0) + 24);
  v65 = a1;
  v27 = *(a1 + v26);
  v64 = v27 >> 62;
  if (v27 >> 62)
  {
    v28 = sub_270A892D0();
  }

  else
  {
    v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v61 = v11;
  v62 = a2;
  v59 = v20;
  v60 = v14;
  v66 = v25;
  v58 = v17;
  v63 = v6;
  if (v28 < 3)
  {
    v30 = 0;
  }

  else
  {
    if ((v27 & 0xC000000000000001) != 0)
    {
      v29 = MEMORY[0x2743AE840](2, v27);
    }

    else
    {
      if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) < 3uLL)
      {
        __break(1u);
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      v29 = *(v27 + 48);
    }

    v30 = v29;
  }

  type metadata accessor for NotificationSourceIconCache();
  sub_270A5DC74(&qword_28083F070, type metadata accessor for NotificationSourceIconCache);
  v31 = sub_270A889E0();
  v33 = v32;
  KeyPath = swift_getKeyPath();
  v35 = v68;
  *(v8 + *(v68 + 20)) = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083F3C0);
  swift_storeEnumTagMultiPayload();
  *v8 = v31;
  v8[1] = v33;
  *(v8 + *(v35 + 24)) = v30;
  v36 = *v65;
  if (*v65)
  {

    v37 = sub_270A888B0();
    sub_270A62AB4(v8, v23, type metadata accessor for SourceIconContainerView);
    v38 = v66;
    v39 = &v23[*(v67 + 36)];
    *v39 = v37;
    v39[1] = v36;
    sub_270A63318(v23, v38, &qword_28083F628);
    v40 = v63;
    if (v64)
    {
      if (sub_270A892D0() <= 3)
      {
        goto LABEL_12;
      }
    }

    else if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) <= 3)
    {
LABEL_12:
      v41 = 0;
LABEL_18:
      v43 = sub_270A889E0();
      v45 = v44;
      v46 = swift_getKeyPath();
      v47 = v68;
      *(v40 + *(v68 + 20)) = v46;
      swift_storeEnumTagMultiPayload();
      *v40 = v43;
      v40[1] = v45;
      *(v40 + *(v47 + 24)) = v41;

      v48 = sub_270A888B0();
      v49 = v58;
      sub_270A62AB4(v40, v58, type metadata accessor for SourceIconContainerView);
      v50 = (v49 + *(v67 + 36));
      *v50 = v48;
      v50[1] = v36;
      v51 = v59;
      sub_270A63318(v49, v59, &qword_28083F628);
      v52 = v60;
      sub_270A4E700(v38, v60, &qword_28083F628);
      v53 = v61;
      sub_270A4E700(v51, v61, &qword_28083F628);
      v54 = v62;
      sub_270A4E700(v52, v62, &qword_28083F628);
      v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083F630);
      sub_270A4E700(v53, v54 + *(v55 + 48), &qword_28083F628);
      sub_270A4E644(v51, &qword_28083F628);
      sub_270A4E644(v38, &qword_28083F628);
      sub_270A4E644(v53, &qword_28083F628);
      return sub_270A4E644(v52, &qword_28083F628);
    }

    if ((v27 & 0xC000000000000001) != 0)
    {
      v42 = MEMORY[0x2743AE840](3, v27);
      goto LABEL_17;
    }

    if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 4uLL)
    {
      v42 = *(v27 + 56);
LABEL_17:
      v41 = v42;
      goto LABEL_18;
    }

    goto LABEL_23;
  }

LABEL_24:
  result = sub_270A889D0();
  __break(1u);
  return result;
}

uint64_t sub_270A61CA8@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_270A88AF0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083F3C0);
  MEMORY[0x28223BE20](v9);
  v11 = &v16 - v10;
  v12 = a1(0);
  sub_270A4E700(v2 + *(v12 + 20), v11, &qword_28083F3C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_270A88910();
    return (*(*(v13 - 8) + 32))(a2, v11, v13);
  }

  else
  {
    sub_270A891B0();
    v15 = sub_270A88C10();
    sub_270A88860();

    sub_270A88AE0();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_270A61EBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083F670);
  MEMORY[0x28223BE20](v46);
  v4 = &v42 - v3;
  v5 = sub_270A88910();
  v44 = *(v5 - 8);
  v45 = v5;
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v42 - v9;
  v11 = sub_270A88990();
  MEMORY[0x28223BE20](v11);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083F678);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v42 - v18;
  v20 = *(a1 + *(type metadata accessor for SourceIconContainerView(0) + 24));
  if (v20)
  {
    type metadata accessor for NotificationSourceIconCache();
    sub_270A5DC74(&qword_28083F070, type metadata accessor for NotificationSourceIconCache);
    v21 = v20;
    v22 = sub_270A889E0();
    v24 = v23;
    KeyPath = swift_getKeyPath();
    *v4 = v21;
    *(v4 + 1) = 0x4032000000000000;
    *(v4 + 2) = v22;
    *(v4 + 3) = v24;
    *(v4 + 4) = KeyPath;
    v4[40] = 0;
    swift_storeEnumTagMultiPayload();
    sub_270A63380();
    sub_270A633D4();
    return sub_270A88BC0();
  }

  else
  {
    v42 = v17;
    v43 = v19;
    v27 = *(v11 + 20);
    v28 = *MEMORY[0x277CE0118];
    v29 = sub_270A88B20();
    (*(*(v29 - 8) + 104))(&v13[v27], v28, v29);
    __asm { FMOV            V0.2D, #4.0 }

    *v13 = _Q0;
    sub_270A61CA8(type metadata accessor for SourceIconContainerView, v10);
    v36 = v44;
    v35 = v45;
    (*(v44 + 104))(v8, *MEMORY[0x277CDF3C0], v45);
    sub_270A88900();
    v37 = *(v36 + 8);
    v37(v8, v35);
    v37(v10, v35);
    if (qword_28083EE58 != -1)
    {
      swift_once();
    }

    v38 = [objc_opt_self() currentDevice];
    [v38 userInterfaceIdiom];

    v39 = sub_270A88D80();
    v40 = v42;
    sub_270A62AB4(v13, v42, MEMORY[0x277CDFC08]);
    *(v40 + *(v14 + 36)) = v39;
    v41 = v43;
    sub_270A63318(v40, v43, &qword_28083F678);
    sub_270A4E700(v41, v4, &qword_28083F678);
    swift_storeEnumTagMultiPayload();
    sub_270A63380();
    sub_270A633D4();
    sub_270A88BC0();
    return sub_270A4E644(v41, &qword_28083F678);
  }
}

double sub_270A623C0@<D0>(uint64_t a1@<X8>)
{
  sub_270A61EBC(v1, a1);
  sub_270A88EA0();
  sub_270A88970();
  v3 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083F668) + 36));
  *v3 = v5;
  v3[1] = v6;
  result = *&v7;
  v3[2] = v7;
  return result;
}

uint64_t sub_270A62440@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_270A5DC74(&qword_28083FB80, type metadata accessor for NotificationSummarizationOnboardingViewModel);
  sub_270A88790();

  *a2 = *(v3 + OBJC_IVAR____TtC20UserNotificationsKit44NotificationSummarizationOnboardingViewModel__iconCache);
}

uint64_t sub_270A62520(uint64_t a1)
{
  v2 = sub_270A889C0();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_270A88A70();
}

uint64_t sub_270A625E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_270A62678()
{
  sub_270A63154(319, &qword_28083F398, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_270A88840();
    if (v1 <= 0x3F)
    {
      sub_270A63154(319, &qword_28083F440, type metadata accessor for NotificationSummarizationOnboardingViewModel, MEMORY[0x277CE10B8]);
      if (v2 <= 0x3F)
      {
        sub_270A63154(319, &qword_28083F448, sub_270A627BC, MEMORY[0x277D83940]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_270A627BC()
{
  result = qword_28083F120;
  if (!qword_28083F120)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28083F120);
  }

  return result;
}

unint64_t sub_270A62808()
{
  result = qword_28083F450;
  if (!qword_28083F450)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28083F3D0);
    sub_270A62894();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28083F450);
  }

  return result;
}

unint64_t sub_270A62894()
{
  result = qword_28083F458;
  if (!qword_28083F458)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28083F3C8);
    sub_270A63574(&qword_28083F460, &qword_28083F468, "P{", sub_270A6294C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28083F458);
  }

  return result;
}

unint64_t sub_270A6294C()
{
  result = qword_28083F470;
  if (!qword_28083F470)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28083F478);
    sub_270A5DCBC();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28083F3E8);
    sub_270A88BE0();
    sub_270A4E7E4(&qword_28083F3F8, &qword_28083F3E8);
    sub_270A5DC74(&qword_28083F400, MEMORY[0x277CDE330]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28083F470);
  }

  return result;
}

uint64_t sub_270A62AB4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_270A62B1C()
{
  v1 = *(type metadata accessor for SourceGroupView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  sub_270A5E528(v2);
}

unint64_t sub_270A62B84()
{
  result = qword_28083F488;
  if (!qword_28083F488)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28083F480);
    sub_270A62C3C();
    sub_270A4E7E4(&qword_28083F4B0, &qword_28083F4B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28083F488);
  }

  return result;
}

unint64_t sub_270A62C3C()
{
  result = qword_28083F490;
  if (!qword_28083F490)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28083F498);
    sub_270A4E7E4(&qword_28083F4A0, &qword_28083F4A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28083F490);
  }

  return result;
}

uint64_t sub_270A62CF4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_270A62D74(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

void sub_270A62DCC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  sub_270A62EC4();
  if (v7 <= 0x3F)
  {
    sub_270A63154(319, &qword_28083F398, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
    if (v8 <= 0x3F)
    {
      sub_270A63154(319, a4, sub_270A627BC, a5);
      if (v9 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_270A62EC4()
{
  if (!qword_28083F5B8)
  {
    type metadata accessor for NotificationSourceIconCache();
    sub_270A5DC74(&qword_28083F070, type metadata accessor for NotificationSourceIconCache);
    v0 = sub_270A889F0();
    if (!v1)
    {
      atomic_store(v0, &qword_28083F5B8);
    }
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083F370);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

void *__swift_store_extra_inhabitant_indexTm(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083F370);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_270A63154(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_270A631B8()
{
  result = qword_28083F650;
  if (!qword_28083F650)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28083F5E8);
    sub_270A63244();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28083F650);
  }

  return result;
}

unint64_t sub_270A63244()
{
  result = qword_28083F658;
  if (!qword_28083F658)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28083F5D8);
    sub_270A4E7E4(&qword_28083F660, &qword_28083F5D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28083F658);
  }

  return result;
}

uint64_t sub_270A63318(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_270A63380()
{
  result = qword_28083F680;
  if (!qword_28083F680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28083F680);
  }

  return result;
}

unint64_t sub_270A633D4()
{
  result = qword_28083F688;
  if (!qword_28083F688)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28083F678);
    sub_270A5DC74(&qword_28083F690, MEMORY[0x277CDFC08]);
    sub_270A4E7E4(&qword_28083F698, &qword_28083F6A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28083F688);
  }

  return result;
}

unint64_t sub_270A634BC()
{
  result = qword_28083F6A8;
  if (!qword_28083F6A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28083F668);
    sub_270A63574(&qword_28083F6B0, &qword_28083F6B8, &unk_270A8E868, sub_270A635F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28083F6A8);
  }

  return result;
}

uint64_t sub_270A63574(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
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

unint64_t sub_270A635F0()
{
  result = qword_28083F6C0;
  if (!qword_28083F6C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28083F6C8);
    sub_270A63380();
    sub_270A633D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28083F6C0);
  }

  return result;
}

id UNNotificationOnboardingNavigationController.init(rootViewController:)(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithRootViewController_];

  return v2;
}

{
  swift_unknownObjectWeakInit();
  v5.receiver = v1;
  v5.super_class = UNNotificationOnboardingNavigationController;
  v3 = objc_msgSendSuper2(&v5, sel_initWithRootViewController_, a1);

  return v3;
}

id sub_270A637D4(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithRootViewController_];
  [a1 setDelegate_];
  [v2 setModalPresentationStyle_];
  [v2 setOverrideUserInterfaceStyle_];

  return v2;
}

id UNNotificationOnboardingNavigationController.init(coder:)(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCoder_];

  return v2;
}

void UNNotificationOnboardingNavigationController.init(coder:)()
{
  swift_unknownObjectWeakInit();
  sub_270A89450();
  __break(1u);
}

id UNNotificationOnboardingNavigationController.init(navigationBarClass:toolbarClass:)(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (a1)
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    if (!v2)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  ObjCClassFromMetadata = 0;
  if (a2)
  {
LABEL_3:
    v2 = swift_getObjCClassFromMetadata();
  }

LABEL_4:
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v4 initWithNavigationBarClass:ObjCClassFromMetadata toolbarClass:v2];
}

id UNNotificationOnboardingNavigationController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v4 = sub_270A88FB0();
  }

  else
  {
    v4 = 0;
  }

  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithNibName:v4 bundle:a3];

  return v5;
}

id UNNotificationOnboardingNavigationController.onboardingController(_:requestsPushingTo:)(int a1, id a2)
{
  [a2 setDelegate_];

  return [v2 pushViewController:a2 animated:1];
}

id sub_270A63CA4(uint64_t a1, char a2)
{
  v4 = [v2 presentingViewController];
  if (v4)
  {
    v5 = v4;
    [v4 dismissViewControllerAnimated:1 completion:0];
  }

  result = [v2 onboardingDelegate];
  if (result)
  {
    [result onboardingNavigationController:v2 didComplete:a2 & 1];

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_270A63D64(void *a1, uint64_t a2, void *a3, char a4)
{
  v6 = a3;
  v10 = a1;
  v7 = [v10 presentingViewController];
  if (v7)
  {
    v8 = v7;
    [v7 dismissViewControllerAnimated:1 completion:0];
  }

  v9 = [v10 onboardingDelegate];
  if (v9)
  {
    [v9 onboardingNavigationController:v10 didComplete:a4 & 1];

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

id _sSo44UNNotificationOnboardingNavigationControllerC20UserNotificationsKitE010onboardingD17RequestsGoingBackyySo0abD0_So06UIViewD0CXcF_0()
{
  v1 = [v0 viewControllers];
  sub_270A4DC8C(0, &qword_28083F6E8);
  v2 = sub_270A890D0();

  if (v2 >> 62)
  {
    v3 = sub_270A892D0();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v3 < 2)
  {
    v5 = [v0 presentingViewController];
    if (!v5)
    {
      goto LABEL_8;
    }

    v6 = v5;
    [v5 dismissViewControllerAnimated:1 completion:0];
    v4 = v6;
  }

  else
  {
    v4 = [v0 popViewControllerAnimated_];
  }

LABEL_8:
  result = [v0 onboardingDelegate];
  if (result)
  {
    [result onboardingNavigationController:v0 didComplete:0];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t ChinSuggestionAnalyticsEvent.init(bundleId:chinSuggestionEvent:suggestionType:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *a4;
  *a5 = result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = v5;
  return result;
}

Swift::Void __swiftcall ChinSuggestionAnalyticsEvent.log()()
{
  v11 = sub_270A88FB0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083F6F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_270A8D610;
  *(inited + 32) = 0x6449656C646E7562;
  *(inited + 40) = 0xE800000000000000;
  v1 = objc_allocWithZone(MEMORY[0x277CCACA8]);
  v2 = sub_270A88FB0();
  v3 = [v1 initWithString_];

  *(inited + 48) = v3;
  *(inited + 56) = 0xD000000000000011;
  *(inited + 64) = 0x8000000270A917A0;
  v4 = objc_allocWithZone(MEMORY[0x277CCACA8]);
  v5 = sub_270A88FB0();

  v6 = [v4 initWithString_];

  *(inited + 72) = v6;
  strcpy((inited + 80), "suggestionType");
  *(inited + 95) = -18;
  v7 = objc_allocWithZone(MEMORY[0x277CCACA8]);
  v8 = sub_270A88FB0();

  v9 = [v7 initWithString_];

  *(inited + 96) = v9;
  sub_270A64AB8(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083F6F8);
  swift_arrayDestroy();
  sub_270A64BBC();
  v10 = sub_270A88F50();

  AnalyticsSendEvent();
}

UserNotificationsKit::ChinSuggestionAnalyticsEvent::SuggestionType_optional __swiftcall ChinSuggestionAnalyticsEvent.SuggestionType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_270A894A0();

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

unint64_t ChinSuggestionAnalyticsEvent.SuggestionType.rawValue.getter()
{
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0xD000000000000014;
  }
}

uint64_t sub_270A643CC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000010;
  }

  else
  {
    v3 = 0xD000000000000014;
  }

  if (v2)
  {
    v4 = "summarizationCategoriesSelected";
  }

  else
  {
    v4 = "DisableSummarization";
  }

  v5 = v4 | 0x8000000000000000;
  if (*a2)
  {
    v6 = 0xD000000000000010;
  }

  else
  {
    v6 = 0xD000000000000014;
  }

  if (*a2)
  {
    v7 = "DisableSummarization";
  }

  else
  {
    v7 = "summarizationCategoriesSelected";
  }

  if (v3 == v6 && v5 == (v7 | 0x8000000000000000))
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_270A89570();
  }

  return v9 & 1;
}

uint64_t sub_270A64478()
{
  sub_270A89630();
  sub_270A89030();

  return sub_270A89680();
}

uint64_t sub_270A644F8()
{
  sub_270A89030();
}

uint64_t sub_270A64564()
{
  sub_270A89630();
  sub_270A89030();

  return sub_270A89680();
}

uint64_t sub_270A645E0@<X0>(char *a1@<X8>)
{
  v2 = sub_270A894A0();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

void sub_270A64640(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD000000000000010;
  }

  else
  {
    v2 = 0xD000000000000014;
  }

  if (*v1)
  {
    v3 = "DisableSummarization";
  }

  else
  {
    v3 = "summarizationCategoriesSelected";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

unint64_t sub_270A64680(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083F708);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083F710);
    v7 = sub_270A89490();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_270A4E700(v9, v5, &qword_28083F708);
      result = sub_270A7D2BC(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_270A88840();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_270A64868(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083F720);
    v3 = sub_270A89490();

    for (i = (a1 + 56); ; i = (i + 40))
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v16 = *i;
      v8 = v5;

      v9 = *(&v16 + 1);
      result = sub_270A7D168(v5, v6, v7);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v3[6] + 24 * result);
      *v12 = v5;
      v12[1] = v6;
      v12[2] = v7;
      *(v3[7] + 16 * result) = v16;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

unint64_t sub_270A649A0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083F718);
    v3 = sub_270A89490();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;
      v9 = v5;
      v10 = v8;
      result = sub_270A7D168(v5, v6, v7);
      if (v12)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v3[6] + 24 * result);
      *v13 = v5;
      v13[1] = v6;
      v13[2] = v7;
      *(v3[7] + 8 * result) = v10;
      v14 = v3[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v3[2] = v16;
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

unint64_t sub_270A64AB8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083F738);
    v3 = sub_270A89490();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_270A7D244(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

unint64_t sub_270A64BBC()
{
  result = qword_28083FBA0;
  if (!qword_28083FBA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28083FBA0);
  }

  return result;
}

unint64_t sub_270A64C0C()
{
  result = qword_28083F700;
  if (!qword_28083F700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28083F700);
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_270A64C74(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_270A64CBC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_270A64D20(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083F728);
    v3 = sub_270A89490();
    v4 = a1 + 32;

    while (1)
    {
      sub_270A4E700(v4, &v13, &qword_28083F730);
      v5 = v13;
      v6 = v14;
      result = sub_270A7D244(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_270A64E50(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

_OWORD *sub_270A64E50(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t get_enum_tag_for_layout_string_SbIegy_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_270A64E78(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
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

uint64_t sub_270A64ED4(uint64_t result, unsigned int a2, unsigned int a3)
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
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_270A64F54@<X0>(_OWORD *a1@<X8>)
{
  if (qword_28083EEA0 != -1)
  {
    swift_once();
  }

  v2 = qword_280842C98;
  v3 = *(qword_280842C98 + 16);
  if (v3)
  {
    v18 = a1;
    v20 = MEMORY[0x277D84F90];
    sub_270A5040C(0, v3, 0);
    v4 = v20;
    v5 = (v2 + 56);
    do
    {
      v7 = *(v5 - 3);
      v6 = *(v5 - 2);
      v8 = *(v5 - 1);
      v9 = *v5;
      v19 = v4;
      v10 = *(v4 + 16);
      v11 = *(v4 + 24);

      if (v10 >= v11 >> 1)
      {
        sub_270A5040C((v11 > 1), v10 + 1, 1);
      }

      v5 += 5;
      *(v4 + 16) = v10 + 1;
      v12 = (v4 + 32 * v10);
      v12[4] = v7;
      v12[5] = v6;
      v12[6] = v8;
      v12[7] = v9;
      --v3;
    }

    while (v3);
    a1 = v18;
  }

  KeyPath = swift_getKeyPath();
  v14 = type metadata accessor for NotificationOnboardingExplanationView();
  *(a1 + v14[6]) = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083F3C0);
  swift_storeEnumTagMultiPayload();
  *a1 = 0u;
  a1[1] = 0u;
  v15 = (a1 + v14[7]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083EF98);
  result = sub_270A88E30();
  *v15 = v19;
  v15[1] = v21;
  v17 = a1 + v14[8];
  *v17 = sub_270A52088;
  *(v17 + 1) = 0;
  v17[16] = 0;
  return result;
}

uint64_t sub_270A6511C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083F3B8);
  sub_270A88E40();
  return v1;
}

unint64_t sub_270A65170(uint64_t a1)
{
  result = sub_270A65198();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_270A65198()
{
  result = qword_28083F740;
  if (!qword_28083F740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28083F740);
  }

  return result;
}

uint64_t sub_270A651EC()
{
  if (qword_28083EE00 != -1)
  {
    swift_once();
  }

  v0 = qword_280842BE0;
  v1 = sub_270A88FB0();
  v2 = sub_270A88FB0();
  v3 = [v0 localizedStringForKey:v1 value:0 table:v2];

  v4 = sub_270A88FC0();
  return v4;
}

unint64_t sub_270A652E4()
{
  result = qword_28083F748;
  if (!qword_28083F748)
  {
    type metadata accessor for NotificationOnboardingExplanationView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28083F748);
  }

  return result;
}

uint64_t type metadata accessor for NotificationOnboardingExplanationView()
{
  result = qword_28083F750;
  if (!qword_28083F750)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_270A653B0()
{
  sub_270A5C918(319, &qword_28083F388, &qword_28083F390, &unk_270A8E308, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_270A654C4();
    if (v1 <= 0x3F)
    {
      sub_270A65514();
      if (v2 <= 0x3F)
      {
        sub_270A5C918(319, &qword_28083F768, &qword_28083EF98, &unk_270A8D340, MEMORY[0x277CE10B8]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_270A654C4()
{
  if (!qword_28083F760)
  {
    v0 = sub_270A89250();
    if (!v1)
    {
      atomic_store(v0, &qword_28083F760);
    }
  }
}

void sub_270A65514()
{
  if (!qword_28083F398)
  {
    sub_270A88910();
    v0 = sub_270A88920();
    if (!v1)
    {
      atomic_store(v0, &qword_28083F398);
    }
  }
}

uint64_t sub_270A65588@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_270A88AF0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083F3C0);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for NotificationOnboardingExplanationView();
  sub_270A4E700(v1 + *(v10 + 24), v9, &qword_28083F3C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_270A88910();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_270A891B0();
    v13 = sub_270A88C10();
    sub_270A88860();

    sub_270A88AE0();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

double sub_270A65790@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for NotificationOnboardingExplanationView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v18 = sub_270A88B30();
  v31 = 0;
  sub_270A65A50(v2, &v20);
  v40 = v28;
  v41[0] = v29[0];
  *(v41 + 11) = *(v29 + 11);
  v36 = v24;
  v37 = v25;
  v38 = v26;
  v39 = v27;
  v32 = v20;
  v33 = v21;
  v34 = v22;
  v35 = v23;
  v42[8] = v28;
  v43[0] = v29[0];
  *(v43 + 11) = *(v29 + 11);
  v42[4] = v24;
  v42[5] = v25;
  v42[6] = v26;
  v42[7] = v27;
  v42[0] = v20;
  v42[1] = v21;
  v42[2] = v22;
  v42[3] = v23;
  sub_270A4E700(&v32, &v19, &qword_28083F770);
  sub_270A4E644(v42, &qword_28083F770);
  *&v30[119] = v39;
  *&v30[135] = v40;
  *&v30[151] = v41[0];
  *&v30[162] = *(v41 + 11);
  *&v30[55] = v35;
  *&v30[71] = v36;
  *&v30[87] = v37;
  *&v30[103] = v38;
  *&v30[7] = v32;
  *&v30[23] = v33;
  *&v30[39] = v34;
  v7 = v31;
  sub_270A665F0(v2, &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  sub_270A66664(&v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8);
  sub_270A665F0(v2, &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = swift_allocObject();
  sub_270A66664(&v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v8);
  v11 = *&v30[144];
  *(a1 + 145) = *&v30[128];
  *(a1 + 161) = v11;
  *(a1 + 177) = *&v30[160];
  v12 = *&v30[80];
  *(a1 + 81) = *&v30[64];
  *(a1 + 97) = v12;
  v13 = *&v30[112];
  *(a1 + 113) = *&v30[96];
  *(a1 + 129) = v13;
  v14 = *&v30[16];
  *(a1 + 17) = *v30;
  *(a1 + 33) = v14;
  v15 = *&v30[48];
  *(a1 + 49) = *&v30[32];
  *a1 = v18;
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 193) = *&v30[176];
  *(a1 + 65) = v15;
  *(a1 + 200) = sub_270A666C8;
  *(a1 + 208) = v9;
  result = 0.0;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = sub_270A666D0;
  *(a1 + 256) = v10;
  return result;
}

__n128 sub_270A65A50@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_270A88910();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v27 - v9;
  v11 = a1 + *(type metadata accessor for NotificationOnboardingExplanationView() + 32);
  v12 = *v11;
  if (*(v11 + 16))
  {
    v13 = qword_28083EE00;

    if (v13 != -1)
    {
      swift_once();
    }

    v14 = qword_280842BE0;
    v15 = sub_270A88E20();
    sub_270A88EA0();
    sub_270A88970();
    LOBYTE(v61) = 1;
    *&v53[22] = v34;
    *&v53[38] = v35;
    *&v53[6] = v33;
    v54 = v15;
    LOWORD(v55[0]) = 1;
    *&v55[3] = *(&v35 + 1);
    *(&v55[2] + 2) = *&v53[32];
    *(&v55[1] + 2) = *&v53[16];
    *(v55 + 2) = *v53;
    sub_270A6674C(&v54);
    v51 = v59;
    v52[0] = v60[0];
    *(v52 + 11) = *(v60 + 11);
    v47 = v55[3];
    v48 = v56;
    v49 = v57;
    v50 = v58;
    v43 = v54;
    v44 = v55[0];
    v45 = v55[1];
    v46 = v55[2];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083F778);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083F780);
    sub_270A66758();
    sub_270A66974();
    sub_270A88BC0();
  }

  else
  {
    v28 = *(v11 + 8);

    sub_270A65588(v10);
    (*(v5 + 104))(v8, *MEMORY[0x277CDF3C0], v4);
    v16 = sub_270A88900();
    v17 = *(v5 + 8);
    v17(v8, v4);
    v17(v10, v4);
    if (v16)
    {
      v18 = v12(1);
      sub_270A66024(v18, v19, v29);

      v69 = v29[8];
      v70[0] = v30[0];
      *(v70 + 9) = *(v30 + 9);
      v66 = v29[5];
      v68 = v29[7];
      v67 = v29[6];
      v61 = v29[0];
      v62 = v29[1];
      v64 = v29[3];
      v65 = v29[4];
      v63 = v29[2];
      sub_270A66A98(&v61);
    }

    else
    {
      v20 = v12(0);
      sub_270A66024(v20, v21, v31);

      v69 = v31[8];
      v70[0] = v32[0];
      *(v70 + 9) = *(v32 + 9);
      v66 = v31[5];
      v68 = v31[7];
      v67 = v31[6];
      v61 = v31[0];
      v62 = v31[1];
      v64 = v31[3];
      v65 = v31[4];
      v63 = v31[2];
      sub_270A66A84(&v61);
    }

    v59 = v69;
    v60[0] = v70[0];
    *(v60 + 10) = *(v70 + 10);
    v55[3] = v65;
    v56 = v66;
    v57 = v67;
    v58 = v68;
    v54 = v61;
    v55[0] = v62;
    v55[1] = v63;
    v55[2] = v64;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083F798);
    sub_270A667DC();
    sub_270A88BC0();
    v59 = v41;
    v60[0] = v42[0];
    *(v60 + 10) = *(v42 + 10);
    v55[3] = v37;
    v56 = v38;
    v57 = v39;
    v58 = v40;
    v54 = v33;
    v55[0] = v34;
    v55[1] = v35;
    v55[2] = v36;
    sub_270A66A90(&v54);
    v69 = v59;
    v70[0] = v60[0];
    *(v70 + 11) = *(v60 + 11);
    v66 = v56;
    v68 = v58;
    v67 = v57;
    v61 = v54;
    v62 = v55[0];
    v64 = v55[2];
    v65 = v55[3];
    v63 = v55[1];
    sub_270A4E700(&v33, &v43, &qword_28083F778);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083F778);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083F780);
    sub_270A66758();
    sub_270A66974();
    sub_270A88BC0();
    sub_270A66654(v12, v28, 0);
    sub_270A4E644(&v33, &qword_28083F778);
    v69 = v51;
    v70[0] = v52[0];
    *(v70 + 11) = *(v52 + 11);
    v66 = v48;
    v68 = v50;
    v67 = v49;
    v61 = v43;
    v62 = v44;
    v64 = v46;
    v65 = v47;
    v63 = v45;
  }

  v22 = v70[0];
  *(a2 + 128) = v69;
  *(a2 + 144) = v22;
  *(a2 + 155) = *(v70 + 11);
  v23 = v66;
  *(a2 + 64) = v65;
  *(a2 + 80) = v23;
  v24 = v68;
  *(a2 + 96) = v67;
  *(a2 + 112) = v24;
  v25 = v62;
  *a2 = v61;
  *(a2 + 16) = v25;
  result = v64;
  *(a2 + 32) = v63;
  *(a2 + 48) = result;
  return result;
}

__n128 sub_270A66024@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v39 = a1;
  v38 = sub_270A88910();
  v6 = *(v38 - 8);
  v7 = MEMORY[0x28223BE20](v38);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v34 - v10;
  v12 = type metadata accessor for NotificationOnboardingExplanationView();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  if (qword_28083EE00 != -1)
  {
    v33 = v15;
    swift_once();
    v15 = v33;
  }

  v16 = (v3 + *(v15 + 28));
  v18 = *v16;
  v17 = v16[1];
  v40 = v18;
  v41 = v17;
  v37 = qword_280842BE0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083F7E0);
  sub_270A88E60();
  v35 = *v43;
  v36 = *&v43[8];
  sub_270A665F0(v3, &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v20 = swift_allocObject();
  sub_270A66664(&v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19);
  v21 = swift_allocObject();
  *(v21 + 16) = sub_270A66C04;
  *(v21 + 24) = v20;
  v43[0] = 0;

  sub_270A88EA0();
  sub_270A88970();
  *&v42[7] = *v43;
  *&v42[23] = *&v43[16];
  *&v42[39] = v44;
  sub_270A65588(v11);
  v22 = [objc_opt_self() currentDevice];
  v23 = [v22 userInterfaceIdiom];

  if (!v23)
  {
    v24 = v38;
    if (qword_28083EE88 != -1)
    {
      swift_once();
    }

    v26 = *(v6 + 8);
    goto LABEL_10;
  }

  v24 = v38;
  (*(v6 + 104))(v9, *MEMORY[0x277CDF3C0], v38);
  v25 = sub_270A88900();
  v26 = *(v6 + 8);
  v26(v9, v24);
  if (v25)
  {
    if (qword_28083EE88 != -1)
    {
      swift_once();
    }

LABEL_10:
    v27 = &qword_280842C70;
    goto LABEL_14;
  }

  if (qword_28083EE80 != -1)
  {
    swift_once();
  }

  v27 = &qword_280842C68;
LABEL_14:
  v28 = *v27;

  v26(v11, v24);
  v29 = sub_270A88C30();
  *a3 = v39;
  *(a3 + 8) = a2;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  *(a3 + 16) = v37;
  *(a3 + 40) = 257;
  *(a3 + 42) = 0;
  *(a3 + 48) = nullsub_1;
  *(a3 + 56) = 0;
  *(a3 + 64) = v35;
  *(a3 + 72) = v36;
  *(a3 + 88) = sub_270A66C84;
  *(a3 + 96) = v21;
  *(a3 + 104) = 0;
  result = *v42;
  v31 = *&v42[16];
  v32 = *&v42[32];
  *(a3 + 152) = *&v42[47];
  *(a3 + 160) = v28;
  *(a3 + 137) = v32;
  *(a3 + 121) = v31;
  *(a3 + 105) = result;
  *(a3 + 168) = v29;
  return result;
}

uint64_t sub_270A664BC()
{
  type metadata accessor for NotificationOnboardingExplanationView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083F7E0);
  sub_270A88E40();
  v0 = *(v4 + 16);

  if (v0 == 3)
  {

    result = sub_270A88E40();
    v2 = *(v5 + 16);
    if (v2)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || (v2 - 1) > *(v5 + 24) >> 1)
      {
        sub_270A6EEA8(isUniquelyReferenced_nonNull_native, v2, 1, v5);
      }

      sub_270A66E64(0, 1, 0);
      sub_270A88E50();
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_270A665F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NotificationOnboardingExplanationView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_270A66654(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_270A66664(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NotificationOnboardingExplanationView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_270A666D8(char a1)
{
  v3 = type metadata accessor for NotificationOnboardingExplanationView();
  v5 = *(v3 - 8);
  result = v3 - 8;
  v6 = (v1 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));
  if (*v6)
  {
    return (*v6)(a1 & 1);
  }

  return result;
}

unint64_t sub_270A66758()
{
  result = qword_28083F788;
  if (!qword_28083F788)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28083F778);
    sub_270A667DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28083F788);
  }

  return result;
}

unint64_t sub_270A667DC()
{
  result = qword_28083F790;
  if (!qword_28083F790)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28083F798);
    sub_270A66894();
    sub_270A4E7E4(&qword_28083F7B8, &qword_28083F7C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28083F790);
  }

  return result;
}

unint64_t sub_270A66894()
{
  result = qword_28083F7A0;
  if (!qword_28083F7A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28083F7A8);
    sub_270A66920();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28083F7A0);
  }

  return result;
}

unint64_t sub_270A66920()
{
  result = qword_28083F7B0;
  if (!qword_28083F7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28083F7B0);
  }

  return result;
}

unint64_t sub_270A66974()
{
  result = qword_28083F7C8;
  if (!qword_28083F7C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28083F780);
    sub_270A66A00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28083F7C8);
  }

  return result;
}

unint64_t sub_270A66A00()
{
  result = qword_28083F7D0;
  if (!qword_28083F7D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28083F7D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28083F7D0);
  }

  return result;
}

uint64_t objectdestroyTm_0()
{
  v1 = type metadata accessor for NotificationOnboardingExplanationView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  if (*(v0 + v3))
  {
  }

  v6 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083F3C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_270A88910();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  sub_270A66654(*(v5 + *(v1 + 32)), *(v5 + *(v1 + 32) + 8), *(v5 + *(v1 + 32) + 16));

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_270A66C04()
{
  type metadata accessor for NotificationOnboardingExplanationView();

  return sub_270A664BC();
}

unint64_t sub_270A66C8C(unint64_t result, uint64_t a2, uint64_t a3, void *a4, double a5, double a6)
{
  v7 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v13 = *v6;
  v14 = v13 + 32 + 24 * result;
  result = swift_arrayDestroy();
  v15 = __OFSUB__(a3, v7);
  v16 = a3 - v7;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v16)
  {
    v17 = *(v13 + 16);
    v15 = __OFSUB__(v17, a2);
    v18 = v17 - a2;
    if (!v15)
    {
      result = v14 + 24 * a3;
      v19 = (v13 + 32 + 24 * a2);
      if (result != v19 || result >= v19 + 24 * v18)
      {
        result = memmove(result, v19, 24 * v18);
      }

      v21 = *(v13 + 16);
      v15 = __OFADD__(v21, v16);
      v22 = v21 + v16;
      if (!v15)
      {
        *(v13 + 16) = v22;
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
  if (a3 >= 1)
  {
    *v14 = a4;
    *(v14 + 8) = a5;
    *(v14 + 16) = a6;
    result = a4;
    if (a3 != 1)
    {
      goto LABEL_20;
    }
  }

  return result;
}

unint64_t sub_270A66D8C(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 24 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 24 * a3;
  v13 = (v7 + 32 + 24 * a2);
  if (result != v13 || result >= v13 + 24 * v12)
  {
    result = memmove(result, v13, 24 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_270A66E64(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 32 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 32 * a3;
  v13 = (v7 + 32 + 32 * a2);
  if (result != v13 || result >= v13 + 32 * v12)
  {
    result = memmove(result, v13, 32 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_270A66F24()
{
  result = qword_28083F7E8;
  if (!qword_28083F7E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28083F7F0);
    sub_270A66FB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28083F7E8);
  }

  return result;
}

unint64_t sub_270A66FB0()
{
  result = qword_28083F7F8;
  if (!qword_28083F7F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28083F800);
    sub_270A4E7E4(&qword_28083F808, &qword_28083F810);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28083F7F8);
  }

  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_270A6707C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
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

uint64_t sub_270A670D8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_270A67164@<X0>(_OWORD *a1@<X8>)
{
  if (qword_28083EEA0 != -1)
  {
    swift_once();
  }

  v2 = qword_280842C98;
  v3 = *(qword_280842C98 + 16);
  if (v3)
  {
    v23 = MEMORY[0x277D84F90];
    sub_270A5040C(0, v3, 0);
    v4 = v23;
    v5 = (v2 + 56);
    do
    {
      v7 = *(v5 - 3);
      v6 = *(v5 - 2);
      v8 = *(v5 - 1);
      v9 = *v5;
      v22 = v4;
      v10 = *(v4 + 16);
      v11 = *(v4 + 24);

      if (v10 >= v11 >> 1)
      {
        sub_270A5040C((v11 > 1), v10 + 1, 1);
      }

      v5 += 5;
      *(v4 + 16) = v10 + 1;
      v12 = (v4 + 32 * v10);
      v12[4] = v7;
      v12[5] = v6;
      v12[6] = v8;
      v12[7] = v9;
      --v3;
    }

    while (v3);
  }

  v13 = [objc_opt_self() mainScreen];
  v14 = [v13 traitCollection];

  v15 = [v14 userInterfaceIdiom];
  if (v15 == 1)
  {
    v16 = sub_270A520BC;
  }

  else
  {
    v16 = sub_270A520D8;
  }

  KeyPath = swift_getKeyPath();
  v18 = type metadata accessor for NotificationOnboardingExplanationView();
  *(a1 + v18[6]) = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083F3C0);
  swift_storeEnumTagMultiPayload();
  *a1 = 0u;
  a1[1] = 0u;
  v19 = (a1 + v18[7]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083EF98);
  result = sub_270A88E30();
  *v19 = v22;
  v19[1] = v24;
  v21 = a1 + v18[8];
  *v21 = v16;
  *(v21 + 1) = 0;
  v21[16] = 0;
  return result;
}

uint64_t sub_270A6739C()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_270A673CC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083F3B8);
  sub_270A88E40();
  return v1;
}

unint64_t sub_270A67434(uint64_t a1)
{
  result = sub_270A6745C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_270A6745C()
{
  result = qword_28083F818;
  if (!qword_28083F818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28083F818);
  }

  return result;
}

id sub_270A6750C()
{
  sub_270A6969C();
  v0 = swift_unknownObjectRetain();

  return v0;
}

void sub_270A67544(void *a1, uint64_t a2, uint64_t a3)
{
  swift_unknownObjectRetain();
  v5 = a1;
  sub_270A675A4(a3);
}

id sub_270A675BC(void *a1)
{
  v1 = a1;
  v2 = sub_270A67600();

  return v2;
}

uint64_t sub_270A67600()
{
  v4.receiver = v0;
  v4.super_class = type metadata accessor for NotificationOnboardingViewHost();
  v1 = objc_msgSendSuper2(&v4, sel_traitCollection);
  v2 = sub_270A89200();

  return v2;
}

void sub_270A676AC(uint64_t a1)
{
  v2 = [objc_opt_self() currentDevice];
  v3 = [v2 userInterfaceIdiom];

  if (v3 != 1)
  {
    __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));
    sub_270A888A0();
  }
}

void sub_270A6773C(uint64_t a1)
{
  v2 = v1;
  v3 = *((*MEMORY[0x277D85000] & *v1) + 0x50);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](a1);
  v6 = &v35 - v5;
  v9 = *((v8 & v7) + 0x58);
  v10 = type metadata accessor for NotificationOnboardingViewHost();
  v37.receiver = v1;
  v37.super_class = v10;
  objc_msgSendSuper2(&v37, sel_viewDidLoad);
  v11 = *&v1[qword_28083F890];
  if (v11)
  {
    v12 = v11;
    sub_270A88BB0();

    (*(v9 + 24))(v3, v9);
    v14 = v13;
    (*(v4 + 8))(v6, v3);
    if (v14)
    {
      v15 = [v2 buttonTray];
      v16 = sub_270A88FB0();

      [v15 setCaptionText_];
    }

    v18 = *&v2[qword_28083F898 + 16];
    v17 = *&v2[qword_28083F898 + 24];
    v19 = *&v2[qword_28083F898 + 32];
    v38 = *&v2[qword_28083F898];
    v39 = v18;
    v40 = v17;
    v41 = v19;
    if (v17)
    {
      v58 = v38;
      v59 = v39;
      v60 = v17;
      v61 = v19;
      v20 = objc_opt_self();
      sub_270A695D0(&v38, &v54);
      v21 = [v20 boldButton];
      sub_270A67E88(v21, &v58);
      [v21 addTarget:v2 action:sel_primaryButtonPressed forControlEvents:64];
      v22 = [v2 buttonTray];
      [v22 addButton_];

      v62 = v58;
      v63 = v59;
      sub_270A696AC(&v62);
    }

    v24 = *&v2[qword_28083F8A0 + 16];
    v23 = *&v2[qword_28083F8A0 + 24];
    v25 = *&v2[qword_28083F8A0 + 32];
    v42 = *&v2[qword_28083F8A0];
    v43 = v24;
    v44 = v23;
    v45 = v25;
    if (v23)
    {
      v54 = v42;
      v55 = v43;
      v56 = v23;
      v57 = v25;
      v26 = objc_opt_self();
      sub_270A695D0(&v42, &v50);
      v27 = [v26 linkButton];
      sub_270A67E88(v27, &v54);
      [v27 addTarget:v2 action:sel_secondaryButtonPressed forControlEvents:64];
      v28 = [v2 buttonTray];
      [v28 addButton_];

      v64 = v54;
      v65 = v55;
      sub_270A696AC(&v64);
    }

    v30 = *&v2[qword_28083F8A8 + 16];
    v29 = *&v2[qword_28083F8A8 + 24];
    v31 = *&v2[qword_28083F8A8 + 32];
    v46 = *&v2[qword_28083F8A8];
    v47 = v30;
    v48 = v29;
    v49 = v31;
    if (v29)
    {
      v50 = v46;
      v51 = v47;
      v52 = v29;
      v53 = v31;
      sub_270A695D0(&v46, &v35);
      v32 = [v2 navigationItem];
      [v32 setHidesBackButton_];

      *&v35 = v2;
      v33 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithTitle:0 style:0 target:sub_270A89560() action:sel_backButtonPressed];
      swift_unknownObjectRelease();
      sub_270A67C5C(v33, &v50);
      v34 = [v2 navigationItem];
      [v34 setLeftBarButtonItem_];

      v35 = v50;
      v36 = v51;
      sub_270A696AC(&v35);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_270A67C14(void *a1)
{
  v1 = a1;
  sub_270A6773C(v1);
}

void sub_270A67C5C(void *a1, __int128 *a2)
{
  v5 = *v2;
  v6 = *MEMORY[0x277D85000];
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = *a2;
  v17 = *(a2 + 16);
  v8 = swift_allocObject();
  *(v8 + 16) = *((v6 & v5) + 0x50);
  *(v8 + 24) = *((v6 & v5) + 0x58);
  *(v8 + 32) = v7;
  *(v8 + 40) = a1;
  v9 = a2[1];
  *(v8 + 48) = *a2;
  *(v8 + 64) = v9;
  *(v8 + 80) = *(a2 + 4);

  v10 = a1;

  sub_270A69640(&v16, v15);
  sub_270A68148();

  if (qword_28083EE00 != -1)
  {
    swift_once();
  }

  v11 = qword_280842BE0;
  v12 = sub_270A88FB0();

  v13 = sub_270A88FB0();
  v14 = [v11 localizedStringForKey:v12 value:0 table:v13];

  if (!v14)
  {
    sub_270A88FC0();
    v14 = sub_270A88FB0();
  }

  [v10 setTitle_];
}

id sub_270A67E88(void *a1, __int128 *a2)
{
  v5 = *v2;
  v6 = *MEMORY[0x277D85000];
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v19 = *a2;
  v20 = *(a2 + 16);
  v8 = swift_allocObject();
  *(v8 + 16) = *((v6 & v5) + 0x50);
  *(v8 + 24) = *((v6 & v5) + 0x58);
  *(v8 + 32) = v7;
  *(v8 + 40) = a1;
  v9 = a2[1];
  *(v8 + 48) = *a2;
  *(v8 + 64) = v9;
  *(v8 + 80) = *(a2 + 4);

  v10 = a1;

  sub_270A69640(&v19, v18);
  sub_270A68148();
  v12 = v11;

  if (qword_28083EE00 != -1)
  {
    swift_once();
  }

  v13 = qword_280842BE0;
  v14 = sub_270A88FB0();

  v15 = sub_270A88FB0();
  v16 = [v13 localizedStringForKey:v14 value:0 table:v15];

  if (!v16)
  {
    sub_270A88FC0();
    v16 = sub_270A88FB0();
  }

  [v10 setTitle:v16 forState:0];

  return [v10 setEnabled_];
}

void sub_270A680D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    a6(a2, a3);
  }
}

uint64_t sub_270A68148()
{
  swift_allocObject();
  swift_unknownObjectWeakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28083FA10);
  sub_270A88770();

  return v1;
}

void sub_270A68254(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_6;
  }

  v12 = *(Strong + qword_28083F890);
  v13 = Strong;
  v14 = v12;

  if (v12)
  {
    sub_270A88BB0();

    v15 = (*(a3 + 32))(a2, a3);
    (*(v8 + 8))(v10, a2);
    if (v15)
    {
      type metadata accessor for NotificationSummarizationOnboardingViewModel();
      v16 = swift_dynamicCastClass();
      if (!v16)
      {
        swift_unknownObjectRelease();
      }

      goto LABEL_7;
    }

LABEL_6:
    v16 = 0;
LABEL_7:
    v17 = (*(a1 + 24))(v16);
    v19 = v18;
    v21 = v20;

    *a4 = v17;
    *(a4 + 8) = v19;
    *(a4 + 16) = v21 & 1;
    return;
  }

  __break(1u);
}

uint64_t sub_270A68400(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28083FE40);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v12 - v5;
  v7 = sub_270A89150();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  sub_270A89130();

  v8 = sub_270A89120();
  v9 = swift_allocObject();
  v10 = MEMORY[0x277D85700];
  v9[2] = v8;
  v9[3] = v10;
  v9[4] = a1;
  v9[5] = a2;
  sub_270A7F07C(0, 0, v6, &unk_270A8EE40, v9);
}

uint64_t sub_270A68528(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_270A89130();
  v5[4] = sub_270A89120();
  v7 = sub_270A89110();

  return MEMORY[0x2822009F8](sub_270A685C0, v7, v6);
}

uint64_t sub_270A685C0()
{
  v1 = *(v0 + 16);

  v1(v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_270A6862C()
{
  v1 = *(v0 + qword_28083F898 + 32);
  v2 = *(v0 + qword_28083F898 + 16);
  v5[0] = *(v0 + qword_28083F898);
  v5[1] = v2;
  v6 = v1;
  sub_270A695D0(v5, v4);
  sub_270A69060(v5, 0xD000000000000016, 0x8000000270A91990);
  return sub_270A69808(v5);
}

void sub_270A686A0(void *a1)
{
  v1 = a1;
  sub_270A6862C();
}

uint64_t sub_270A686E8()
{
  v1 = *(v0 + qword_28083F8A0 + 32);
  v2 = *(v0 + qword_28083F8A0 + 16);
  v5[0] = *(v0 + qword_28083F8A0);
  v5[1] = v2;
  v6 = v1;
  sub_270A695D0(v5, v4);
  sub_270A69060(v5, 0xD000000000000018, 0x8000000270A91970);
  return sub_270A69808(v5);
}

void sub_270A6875C(void *a1)
{
  v1 = a1;
  sub_270A686E8();
}

uint64_t sub_270A687A4()
{
  v1 = *(v0 + qword_28083F8A8 + 32);
  v2 = *(v0 + qword_28083F8A8 + 16);
  v5[0] = *(v0 + qword_28083F8A8);
  v5[1] = v2;
  v6 = v1;
  sub_270A695D0(v5, v4);
  sub_270A69060(v5, 0xD000000000000013, 0x8000000270A91950);
  return sub_270A69808(v5);
}

void sub_270A68818(void *a1)
{
  v1 = a1;
  sub_270A687A4();
}

uint64_t sub_270A68860(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v65 = a2;
  v66 = a1;
  v4 = *v2;
  v5 = *MEMORY[0x277D85000];
  v69 = *MEMORY[0x277D85000] & v4;
  v6 = type metadata accessor for NotificationSummarizationOnboardingCustomizationByCategoriesView(0);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *((v5 & v4) + 0x50);
  v68 = *(v10 - 8);
  v11 = MEMORY[0x28223BE20](v7);
  v67 = v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v64 = v63 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v17 = v63 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = v63 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v22 = MEMORY[0x28223BE20](v21);
  v24 = v63 - v23;
  result = MEMORY[0x28223BE20](v22);
  v26 = *(v3 + qword_28083F890);
  if (!v26)
  {
    __break(1u);
    goto LABEL_36;
  }

  v27 = v26;
  sub_270A88BB0();

  result = swift_dynamicCast();
  if (result)
  {
    v28 = v71;
    sub_270A4DFC0(v70);

    v29 = *(v3 + qword_28083F890);
    if (!v29)
    {
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    v30 = v29;
    sub_270A88BB0();

    v31 = (*(*(v69 + 88) + 32))(v10);
    result = (*(v68 + 8))(v24, v10);
    if (v31)
    {
      type metadata accessor for NotificationSummarizationOnboardingViewModel();
      v32 = swift_dynamicCastClass();
      if (!v32)
      {
LABEL_9:
        result = swift_unknownObjectRelease();
        goto LABEL_10;
      }

      v33 = v32;
      v34 = v32 + OBJC_IVAR____TtC20UserNotificationsKit44NotificationSummarizationOnboardingViewModel__summaryOutcome;
      if ((*(v32 + OBJC_IVAR____TtC20UserNotificationsKit44NotificationSummarizationOnboardingViewModel__summaryOutcome + 8) & 1) == 0 && *v34 == 2 * (v66 == 2))
      {
        *(v34 + 8) = 0;
        goto LABEL_9;
      }

      v63[0] = 2 * (v66 == 2);
      KeyPath = swift_getKeyPath();
      v63[1] = v17;
      v63[2] = v63;
      MEMORY[0x28223BE20](KeyPath);
      v44 = v63[0];
      v63[-4] = v33;
      v63[-3] = v44;
      LOBYTE(v63[-2]) = 0;
      v63[0] = OBJC_IVAR____TtC20UserNotificationsKit44NotificationSummarizationOnboardingViewModel___observationRegistrar;
      v70 = v33;
      sub_270A69734();
      sub_270A88780();
      swift_unknownObjectRelease();
    }
  }

LABEL_10:
  v35 = *(v3 + qword_28083F890);
  if (!v35)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v36 = v35;
  sub_270A88BB0();

  result = swift_dynamicCast();
  if (result)
  {
    result = sub_270A6978C(v9);
    v37 = *(v3 + qword_28083F890);
    if (!v37)
    {
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v38 = v37;
    sub_270A88BB0();

    v39 = (*(*(v69 + 88) + 32))(v10);
    result = (*(v68 + 8))(v20, v10);
    if (v39)
    {
      type metadata accessor for NotificationSummarizationOnboardingViewModel();
      v40 = swift_dynamicCastClass();
      if (!v40)
      {
LABEL_18:
        result = swift_unknownObjectRelease();
        goto LABEL_21;
      }

      v41 = v40;
      v42 = v40 + OBJC_IVAR____TtC20UserNotificationsKit44NotificationSummarizationOnboardingViewModel__summaryOutcome;
      if ((*(v40 + OBJC_IVAR____TtC20UserNotificationsKit44NotificationSummarizationOnboardingViewModel__summaryOutcome + 8) & 1) == 0 && *v42 == v66)
      {
        *(v42 + 8) = 0;
        goto LABEL_18;
      }

      v45 = swift_getKeyPath();
      MEMORY[0x28223BE20](v45);
      v46 = v66;
      v63[-4] = v41;
      v63[-3] = v46;
      LOBYTE(v63[-2]) = 0;
      v70 = v41;
      sub_270A69734();
      sub_270A88780();
      swift_unknownObjectRelease();
    }
  }

LABEL_21:
  v47 = *(v3 + qword_28083F890);
  if (!v47)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v48 = v47;
  sub_270A88BB0();

  result = swift_dynamicCast();
  if (result)
  {
    v49 = v72;
    sub_270A4DFC0(v70);

    v50 = *(v3 + qword_28083F890);
    if (!v50)
    {
LABEL_41:
      __break(1u);
      return result;
    }

    v51 = v50;
    v52 = v64;
    sub_270A88BB0();

    v53 = (*(*(v69 + 88) + 32))(v10);
    result = (*(v68 + 8))(v52, v10);
    if (v53)
    {
      type metadata accessor for NotificationSummarizationOnboardingViewModel();
      v54 = swift_dynamicCastClass();
      if (!v54)
      {
LABEL_29:
        result = swift_unknownObjectRelease();
        goto LABEL_31;
      }

      v55 = v54;
      v56 = v54 + OBJC_IVAR____TtC20UserNotificationsKit44NotificationSummarizationOnboardingViewModel__priorityOutcome;
      if ((*(v54 + OBJC_IVAR____TtC20UserNotificationsKit44NotificationSummarizationOnboardingViewModel__priorityOutcome + 8) & 1) == 0 && *v56 == v66)
      {
        *(v56 + 8) = 0;
        goto LABEL_29;
      }

      v57 = swift_getKeyPath();
      MEMORY[0x28223BE20](v57);
      v58 = v66;
      v63[-4] = v55;
      v63[-3] = v58;
      LOBYTE(v63[-2]) = 0;
      v70 = v55;
      sub_270A69734();
      sub_270A88780();
      swift_unknownObjectRelease();
    }
  }

LABEL_31:
  v59 = *(v3 + qword_28083F890);
  if (!v59)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v60 = v59;
  v61 = v67;
  sub_270A88BB0();

  v62 = (*(*(v69 + 88) + 32))(v10);
  result = (*(v68 + 8))(v61, v10);
  if (v62)
  {
    [v62 saveWithOutcome_];
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_270A69060(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(a1 + 24))
  {
    v4 = v3;
    v5 = *a1;
    v21 = *a1;
    v22 = *(a1 + 16);
    v6 = v21;
    if (v21 > 1)
    {
      if (v21 != 2)
      {
        if (v21 != 3)
        {
          goto LABEL_5;
        }

        goto LABEL_16;
      }

      sub_270A69700(v5);

      sub_270A68860(1, 1);
      v18 = *(v3 + qword_28083F880);
      if (v18)
      {
        [v18 onboardingControllerDidFinish_];
      }
    }

    else
    {
      if (v21)
      {
        if (v21 != 1)
        {
LABEL_5:
          if (v22)
          {
            v7 = 1;
          }

          else
          {
            v7 = 2;
          }

          sub_270A695D0(a1, v20);
          sub_270A69640(&v21, v20);
          v8 = sub_270A68860(v7, 0);
          v9 = v6(v8);
          if (*(v4 + qword_28083F880))
          {
            [swift_unknownObjectRetain() onboardingController:v4 requestsPushingTo:v9];
            sub_270A696AC(&v21);
            swift_unknownObjectRelease();
            sub_270A696AC(&v21);

LABEL_30:

            return;
          }

          sub_270A696AC(&v21);

LABEL_29:
          sub_270A696AC(&v21);
          goto LABEL_30;
        }

LABEL_16:
        sub_270A69700(v5);

        sub_270A68860(2, 2);
        v16 = *(v3 + qword_28083F880);
        if (v16)
        {
          [v16 onboardingControllerRequestsCancellation_];
        }

        goto LABEL_29;
      }

      sub_270A69700(v5);

      sub_270A68860(0, 0);
      v17 = *(v3 + qword_28083F880);
      if (v17)
      {
        [v17 onboardingControllerRequestsGoingBack_];
      }
    }
  }

  else
  {
    if (qword_28122C2A0 != -1)
    {
      swift_once();
    }

    v12 = sub_270A88890();
    __swift_project_value_buffer(v12, qword_28122C340);

    oslog = sub_270A88870();
    v13 = sub_270A891C0();

    if (os_log_type_enabled(oslog, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v20[0] = v15;
      *v14 = 136446210;
      *(v14 + 4) = sub_270A4D698(a2, a3, v20);
      _os_log_impl(&dword_270A33000, oslog, v13, "Action not implemented for '%{public}s'", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x2743AF520](v15, -1, -1);
      MEMORY[0x2743AF520](v14, -1, -1);
    }

    else
    {
    }
  }
}

void sub_270A69408(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5 = a5;

  sub_270A69A90();
}

id sub_270A69478()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NotificationOnboardingViewHost();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_270A694E8(uint64_t a1)
{
  swift_unknownObjectRelease();

  sub_270A69B10(*(a1 + qword_28083F898), *(a1 + qword_28083F898 + 8), *(a1 + qword_28083F898 + 16), *(a1 + qword_28083F898 + 24));
  sub_270A69B10(*(a1 + qword_28083F8A0), *(a1 + qword_28083F8A0 + 8), *(a1 + qword_28083F8A0 + 16), *(a1 + qword_28083F8A0 + 24));
  sub_270A69B10(*(a1 + qword_28083F8A8), *(a1 + qword_28083F8A8 + 8), *(a1 + qword_28083F8A8 + 16), *(a1 + qword_28083F8A8 + 24));
}

uint64_t sub_270A695D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28083FA00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_270A69700(unint64_t result)
{
  if (result >= 4)
  {
  }

  return result;
}

unint64_t sub_270A69734()
{
  result = qword_28083FB80;
  if (!qword_28083FB80)
  {
    type metadata accessor for NotificationSummarizationOnboardingViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28083FB80);
  }

  return result;
}

uint64_t sub_270A6978C(uint64_t a1)
{
  v2 = type metadata accessor for NotificationSummarizationOnboardingCustomizationByCategoriesView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_270A69808(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28083FA00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t (*sub_270A6987C())()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;

  return sub_270A698E4;
}

uint64_t sub_270A698EC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_270A4DECC;

  return sub_270A68528(a1, v4, v5, v7, v6);
}

uint64_t objectdestroy_16Tm()
{

  if (*(v0 + 48) >= 4uLL)
  {
  }

  return MEMORY[0x2821FE8E8](v0, 88, 7);
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

unint64_t sub_270A69B10(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    sub_270A69B50(result);
  }

  return result;
}

unint64_t sub_270A69B50(unint64_t result)
{
  if (result >= 4)
  {
  }

  return result;
}

uint64_t sub_270A69BAC(uint64_t a1)
{
  v35 = sub_270A88840();
  v3 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v5)
  {
    v27 = v1;
    v39 = MEMORY[0x277D84F90];
    sub_270A50388(0, v5, 0);
    v38 = v39;
    v7 = a1 + 56;
    result = sub_270A89290();
    v8 = result;
    v9 = 0;
    v32 = v3 + 8;
    v33 = v3 + 16;
    v28 = a1 + 64;
    v29 = v5;
    v30 = v3;
    v31 = a1 + 56;
    while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(a1 + 32))
    {
      v11 = v8 >> 6;
      if ((*(v7 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
      {
        goto LABEL_22;
      }

      v36 = *(a1 + 36);
      v12 = v34;
      v13 = v35;
      (*(v3 + 16))(v34, *(a1 + 48) + *(v3 + 72) * v8, v35);
      v37 = sub_270A88830();
      v15 = v14;
      result = (*(v3 + 8))(v12, v13);
      v16 = v38;
      v39 = v38;
      v18 = *(v38 + 16);
      v17 = *(v38 + 24);
      if (v18 >= v17 >> 1)
      {
        result = sub_270A50388((v17 > 1), v18 + 1, 1);
        v16 = v39;
      }

      *(v16 + 16) = v18 + 1;
      v19 = v16 + 16 * v18;
      *(v19 + 32) = v37;
      *(v19 + 40) = v15;
      v10 = 1 << *(a1 + 32);
      if (v8 >= v10)
      {
        goto LABEL_23;
      }

      v7 = v31;
      v20 = *(v31 + 8 * v11);
      if ((v20 & (1 << v8)) == 0)
      {
        goto LABEL_24;
      }

      v38 = v16;
      if (v36 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v21 = v20 & (-2 << (v8 & 0x3F));
      if (v21)
      {
        v10 = __clz(__rbit64(v21)) | v8 & 0x7FFFFFFFFFFFFFC0;
        v3 = v30;
      }

      else
      {
        v22 = v11 << 6;
        v23 = v11 + 1;
        v24 = (v28 + 8 * v11);
        v3 = v30;
        while (v23 < (v10 + 63) >> 6)
        {
          v26 = *v24++;
          v25 = v26;
          v22 += 64;
          ++v23;
          if (v26)
          {
            result = sub_270A76484(v8, v36, 0);
            v10 = __clz(__rbit64(v25)) + v22;
            goto LABEL_4;
          }
        }

        result = sub_270A76484(v8, v36, 0);
      }

LABEL_4:
      ++v9;
      v8 = v10;
      if (v9 == v29)
      {
        return v38;
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
  }

  return result;
}

uint64_t sub_270A69EB4(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28083FDC0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v20 - v7;
  v9 = _s21ShownExperienceRecordVMa();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_270A4E644(a1, &unk_28083FDC0);
    v13 = sub_270A7D354(a2);
    if (v14)
    {
      v15 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = *v3;
      v21 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_270A718F0();
        v17 = v21;
      }

      sub_270A76490(*(v17 + 56) + *(v10 + 72) * v15, v8);
      sub_270A708AC(v15, v17);
      *v3 = v17;
      (*(v10 + 56))(v8, 0, 1, v9);
    }

    else
    {
      (*(v10 + 56))(v8, 1, 1, v9);
    }

    return sub_270A4E644(v8, &unk_28083FDC0);
  }

  else
  {
    sub_270A76490(a1, v12);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v3;
    result = sub_270A70E34(v12, a2, v18);
    *v3 = v21;
  }

  return result;
}

uint64_t sub_270A6A0E0(uint64_t a1, uint64_t a2)
{
  v3 = sub_270A88840();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_270A76398(&unk_28083FB50, MEMORY[0x277D77F08]), v7 = sub_270A88F70(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      sub_270A76398(&qword_28083F0E0, MEMORY[0x277D77F08]);
      v15 = sub_270A88FA0();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_270A6A2F8()
{
  swift_getKeyPath();
  sub_270A76398(&qword_28083FB80, type metadata accessor for NotificationSummarizationOnboardingViewModel);
  sub_270A88790();

  swift_beginAccess();
}

uint64_t sub_270A6A3B8(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083FBE0);
  MEMORY[0x28223BE20](v4 - 8);
  v36 = &v31 - v5;
  v6 = sub_270A88840();
  v39 = *(v6 - 8);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v38 = &v31 - v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v31 - v12;
  swift_getKeyPath();
  v14 = OBJC_IVAR____TtC20UserNotificationsKit44NotificationSummarizationOnboardingViewModel___observationRegistrar;
  v45 = v1;
  sub_270A76398(&qword_28083FB80, type metadata accessor for NotificationSummarizationOnboardingViewModel);
  sub_270A88790();

  v15 = OBJC_IVAR____TtC20UserNotificationsKit44NotificationSummarizationOnboardingViewModel__selectedCategories;
  swift_beginAccess();
  v16 = *(v1 + v15);

  v40 = a1;
  v17 = sub_270A6A0E0(a1, v16);

  if (v17)
  {
    swift_getKeyPath();
    v41 = v2;
    sub_270A88790();

    v41 = v2;
    swift_getKeyPath();
    sub_270A887B0();

    swift_beginAccess();
    v18 = v36;
    sub_270A74688(v40, v36);
    sub_270A4E644(v18, &qword_28083FBE0);
    swift_endAccess();
    v41 = v2;
    swift_getKeyPath();
  }

  else
  {
    v37 = v15;
    v35 = v14;
    v33 = v9;
    v19 = *(v39 + 104);
    v32 = *MEMORY[0x277D77EF8];
    v31 = v19;
    (v19)(v13);
    sub_270A76398(&qword_28122C2B0, MEMORY[0x277D77F08]);
    sub_270A89090();
    sub_270A89090();
    if (v41 == v43 && v42 == v44)
    {
      v20 = 1;
    }

    else
    {
      v20 = sub_270A89570();
    }

    v21 = *(v39 + 8);
    v34 = v39 + 8;
    v35 = v21;
    v21(v13, v6);

    swift_getKeyPath();
    v22 = v37;
    if (v20)
    {
      v41 = v2;
      sub_270A88790();

      v41 = v2;
      swift_getKeyPath();
      sub_270A887B0();

      *(v2 + v22) = MEMORY[0x277D84FA0];

      v41 = v2;
      swift_getKeyPath();
      sub_270A887A0();

      v23 = v38;
    }

    else
    {
      v41 = v2;
      sub_270A88790();

      v24 = *(v2 + v22);
      v23 = v38;
      v25 = v32;
      v26 = v31;
      v31(v38, v32, v6);

      v27 = sub_270A6A0E0(v23, v24);

      v35(v23, v6);
      if (v27)
      {
        v26(v23, v25, v6);
        swift_getKeyPath();
        v41 = v2;
        sub_270A88790();

        v41 = v2;
        swift_getKeyPath();
        sub_270A887B0();

        swift_beginAccess();
        v28 = v36;
        sub_270A74688(v38, v36);
        v35(v38, v6);
        sub_270A4E644(v28, &qword_28083FBE0);
        swift_endAccess();
        v41 = v2;
        v23 = v38;
        swift_getKeyPath();
        sub_270A887A0();
      }
    }

    v29 = v33;
    (*(v39 + 16))(v33, v40, v6);
    swift_getKeyPath();
    v41 = v2;
    sub_270A88790();

    v41 = v2;
    swift_getKeyPath();
    sub_270A887B0();

    swift_beginAccess();
    sub_270A72198(v23, v29);
    v35(v23, v6);
    swift_endAccess();
    v41 = v2;
    swift_getKeyPath();
  }

  sub_270A887A0();
}

uint64_t sub_270A6AADC()
{
  swift_getKeyPath();
  sub_270A76398(&qword_28083FB80, type metadata accessor for NotificationSummarizationOnboardingViewModel);
  sub_270A88790();
}

uint64_t sub_270A6ABD8(uint64_t result, char a2, void *a3)
{
  v4 = v3 + *a3;
  if ((*(v4 + 8) & 1) == 0)
  {
    if ((a2 & 1) != 0 || *v4 != result)
    {
      goto LABEL_7;
    }

LABEL_6:
    *v4 = result;
    *(v4 + 8) = a2 & 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_6;
  }

LABEL_7:
  swift_getKeyPath();
  MEMORY[0x28223BE20]();
  sub_270A76398(&qword_28083FB80, type metadata accessor for NotificationSummarizationOnboardingViewModel);
  sub_270A88780();
}

uint64_t sub_270A6AD98(uint64_t result, uint64_t a2, char a3)
{
  v3 = result + OBJC_IVAR____TtC20UserNotificationsKit44NotificationSummarizationOnboardingViewModel__priorityOutcome;
  *v3 = a2;
  *(v3 + 8) = a3 & 1;
  return result;
}

uint64_t sub_270A6ADC8(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_270A76398(&qword_28083FB80, type metadata accessor for NotificationSummarizationOnboardingViewModel);
  sub_270A88790();

  return *(v2 + *a2);
}

uint64_t sub_270A6AE70(uint64_t result, uint64_t a2, char a3)
{
  v3 = result + OBJC_IVAR____TtC20UserNotificationsKit44NotificationSummarizationOnboardingViewModel__summaryOutcome;
  *v3 = a2;
  *(v3 + 8) = a3 & 1;
  return result;
}

uint64_t sub_270A6AEA0(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_270A76398(&qword_28083FB80, type metadata accessor for NotificationSummarizationOnboardingViewModel);
  sub_270A88790();

  return *(v2 + *a2);
}

uint64_t sub_270A6AF68(uint64_t result, void *a2)
{
  if (*(v2 + *a2) == (result & 1))
  {
    *(v2 + *a2) = result & 1;
  }

  else
  {
    swift_getKeyPath();
    MEMORY[0x28223BE20]();
    sub_270A76398(&qword_28083FB80, type metadata accessor for NotificationSummarizationOnboardingViewModel);
    sub_270A88780();
  }

  return result;
}

uint64_t sub_270A6B06C()
{
  v1 = v0;
  v2 = sub_270A88840();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v17 = v0;
  sub_270A76398(&qword_28083FB80, type metadata accessor for NotificationSummarizationOnboardingViewModel);
  sub_270A88790();

  v6 = OBJC_IVAR____TtC20UserNotificationsKit44NotificationSummarizationOnboardingViewModel__selectedCategories;
  swift_beginAccess();
  if (*(*(v0 + v6) + 16))
  {
    swift_getKeyPath();
    v16 = v0;
    sub_270A88790();

    if (*(*(v0 + v6) + 16) == 1 && (swift_getKeyPath(), v16 = v0, sub_270A88790(), , v7 = *(v0 + v6), (*(v3 + 104))(v5, *MEMORY[0x277D77EF8], v2), , v8 = sub_270A6A0E0(v5, v7), , (*(v3 + 8))(v5, v2), (v8 & 1) != 0))
    {
      v9 = qword_28083EE00;
    }

    else
    {
      swift_getKeyPath();
      v16 = v1;
      sub_270A88790();

      v9 = qword_28083EE00;
      if (*(*(v1 + v6) + 16) == 3)
      {
        if (qword_28083EE00 == -1)
        {
          goto LABEL_10;
        }

        goto LABEL_12;
      }
    }

    if (v9 == -1)
    {
LABEL_10:
      v11 = qword_280842BE0;
      v12 = sub_270A88FB0();
      v13 = sub_270A88FB0();
      v14 = [v11 localizedStringForKey:v12 value:0 table:v13];

      v10 = sub_270A88FC0();
      return v10;
    }

LABEL_12:
    swift_once();
    goto LABEL_10;
  }

  return 0;
}

uint64_t sub_270A6B430(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20UserNotificationsKit44NotificationSummarizationOnboardingViewModel__selectedCategories;
  swift_beginAccess();

  v5 = sub_270A75324(v4, a1);

  if (v5)
  {
    *(v1 + v3) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_270A76398(&qword_28083FB80, type metadata accessor for NotificationSummarizationOnboardingViewModel);
    sub_270A88780();
  }
}

uint64_t sub_270A6B580(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC20UserNotificationsKit44NotificationSummarizationOnboardingViewModel__selectedCategories;
  swift_beginAccess();
  *(a1 + v4) = a2;
}

id sub_270A6B5F0(char a1, char a2)
{
  ObjectType = swift_getObjectType();
  v6 = &v2[OBJC_IVAR____TtC20UserNotificationsKit44NotificationSummarizationOnboardingViewModel__priorityOutcome];
  *v6 = 0;
  v6[8] = 1;
  v7 = &v2[OBJC_IVAR____TtC20UserNotificationsKit44NotificationSummarizationOnboardingViewModel__summaryOutcome];
  *v7 = 0;
  v7[8] = 1;
  v2[OBJC_IVAR____TtC20UserNotificationsKit44NotificationSummarizationOnboardingViewModel__supportsBackButton] = 1;
  *&v2[OBJC_IVAR____TtC20UserNotificationsKit44NotificationSummarizationOnboardingViewModel__selectedCategories] = MEMORY[0x277D84FA0];
  type metadata accessor for NotificationSourceIconCache();
  swift_allocObject();
  *&v2[OBJC_IVAR____TtC20UserNotificationsKit44NotificationSummarizationOnboardingViewModel__iconCache] = sub_270A53054(8);
  sub_270A887C0();
  v2[OBJC_IVAR____TtC20UserNotificationsKit44NotificationSummarizationOnboardingViewModel__showsSummaryOnboarding] = a1;
  v2[OBJC_IVAR____TtC20UserNotificationsKit44NotificationSummarizationOnboardingViewModel__showsPriorityOnboarding] = a2;
  v8 = sub_270A75D38();
  v9 = sub_270A6F244(v8);

  v10 = sub_270A75F9C(v9);
  *&v2[OBJC_IVAR____TtC20UserNotificationsKit44NotificationSummarizationOnboardingViewModel_sources] = v9;
  *&v2[OBJC_IVAR____TtC20UserNotificationsKit44NotificationSummarizationOnboardingViewModel_categorizedSources] = v10;
  v12.receiver = v2;
  v12.super_class = ObjectType;
  return objc_msgSendSuper2(&v12, sel_init);
}

uint64_t sub_270A6B728(uint64_t a1)
{
  if (*(v1 + OBJC_IVAR____TtC20UserNotificationsKit44NotificationSummarizationOnboardingViewModel__iconCache) == a1)
  {
  }

  else
  {
    swift_getKeyPath();
    MEMORY[0x28223BE20]();
    sub_270A76398(&qword_28083FB80, type metadata accessor for NotificationSummarizationOnboardingViewModel);
    sub_270A88780();
  }
}

char *sub_270A6B898()
{
  v1 = v0;
  v2 = sub_270A88840();
  v70 = *(v2 - 8);
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v69 = &v59 - v6;
  sub_270A89690();
  v7 = *(v0 + OBJC_IVAR____TtC20UserNotificationsKit44NotificationSummarizationOnboardingViewModel_sources);
  if (v7 >> 62)
  {
    goto LABEL_47;
  }

  for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_270A892D0())
  {
    v9 = MEMORY[0x277D84F90];
    v62 = v2;
    v61 = v5;
    v75 = v1;
    if (i)
    {
      break;
    }

    v20 = *(MEMORY[0x277D84F90] + 16);
LABEL_14:
    MEMORY[0x2743AEAF0](v20);
    v22 = *(v9 + 16);
    if (v22)
    {
      v23 = v9 + 40;
      do
      {

        sub_270A89030();

        v23 += 16;
        --v22;
      }

      while (v22);
    }

    v1 = *(v75 + OBJC_IVAR____TtC20UserNotificationsKit44NotificationSummarizationOnboardingViewModel_categorizedSources);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083FC28);
    v24 = sub_270A89470();
    v25 = v24;
    v26 = 0;
    v27 = *(v1 + 64);
    v60 = v1 + 64;
    v68 = v1;
    v28 = 1 << *(v1 + 32);
    v29 = -1;
    if (v28 < 64)
    {
      v29 = ~(-1 << v28);
    }

    v30 = v29 & v27;
    v31 = (v28 + 63) >> 6;
    v67 = v70 + 16;
    v7 = v70 + 32;
    v64 = v24 + 64;
    v32 = MEMORY[0x277D84F90];
    v66 = v24;
    v63 = v31;
    v65 = v70 + 32;
    if (v30)
    {
      while (1)
      {
        v33 = __clz(__rbit64(v30));
        v71 = (v30 - 1) & v30;
LABEL_26:
        v36 = v33 | (v26 << 6);
        v37 = v68;
        v38 = *(v68 + 48);
        v39 = v70;
        v40 = *(v70 + 16);
        v74 = *(v70 + 72) * v36;
        v41 = v69;
        v40(v69, v38 + v74, v2);
        v42 = *(v37 + 56);
        v75 = v36;
        v43 = *(v42 + 8 * v36);
        v73 = *(v39 + 32);
        v73(v5, v41, v2);
        v44 = v43 >> 62 ? sub_270A892D0() : *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v72 = v26;
        if (v44)
        {
          *&v78 = v32;
          v1 = v44 & ~(v44 >> 63);

          sub_270A50388(0, v1, 0);
          if (v44 < 0)
          {
            goto LABEL_46;
          }

          v45 = 0;
          v46 = v78;
          do
          {
            if ((v43 & 0xC000000000000001) != 0)
            {
              v47 = MEMORY[0x2743AE840](v45, v43);
            }

            else
            {
              v47 = *(v43 + 8 * v45 + 32);
            }

            v48 = v47;
            v49 = [v47 sourceIdentifier];
            v50 = sub_270A88FC0();
            v52 = v51;

            *&v78 = v46;
            v54 = *(v46 + 16);
            v53 = *(v46 + 24);
            if (v54 >= v53 >> 1)
            {
              sub_270A50388((v53 > 1), v54 + 1, 1);
              v46 = v78;
            }

            ++v45;
            *(v46 + 16) = v54 + 1;
            v55 = v46 + 16 * v54;
            *(v55 + 32) = v50;
            *(v55 + 40) = v52;
          }

          while (v44 != v45);

          v2 = v62;
          v5 = v61;
          v32 = MEMORY[0x277D84F90];
        }

        else
        {
          v46 = v32;
        }

        v1 = v75;
        *(v64 + ((v75 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v75;
        v25 = v66;
        v7 = v65;
        v73((*(v66 + 48) + v74), v5, v2);
        *(*(v25 + 56) + 8 * v1) = v46;
        v56 = *(v25 + 16);
        v57 = __OFADD__(v56, 1);
        v58 = v56 + 1;
        if (v57)
        {
          break;
        }

        *(v25 + 16) = v58;
        v26 = v72;
        v31 = v63;
        v30 = v71;
        if (!v71)
        {
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_21:
      v34 = v26;
      while (1)
      {
        v26 = v34 + 1;
        if (__OFADD__(v34, 1))
        {
          break;
        }

        if (v26 >= v31)
        {
          sub_270A756D4(v76, v25);

          v80 = v76[2];
          v81 = v76[3];
          v82 = v77;
          v78 = v76[0];
          v79 = v76[1];
          return sub_270A89670();
        }

        v35 = *(v60 + 8 * v26);
        ++v34;
        if (v35)
        {
          v33 = __clz(__rbit64(v35));
          v71 = (v35 - 1) & v35;
          goto LABEL_26;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    ;
  }

  *&v78 = MEMORY[0x277D84F90];
  result = sub_270A50388(0, i & ~(i >> 63), 0);
  if ((i & 0x8000000000000000) == 0)
  {
    v11 = 0;
    v9 = v78;
    do
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x2743AE840](v11, v7);
      }

      else
      {
        v12 = *(v7 + 8 * v11 + 32);
      }

      v13 = v12;
      v14 = [v12 sourceIdentifier];
      v15 = sub_270A88FC0();
      v17 = v16;

      *&v78 = v9;
      v19 = *(v9 + 16);
      v18 = *(v9 + 24);
      v20 = v19 + 1;
      if (v19 >= v18 >> 1)
      {
        sub_270A50388((v18 > 1), v19 + 1, 1);
        v9 = v78;
      }

      ++v11;
      *(v9 + 16) = v20;
      v21 = v9 + 16 * v19;
      *(v21 + 32) = v15;
      *(v21 + 40) = v17;
    }

    while (i != v11);
    v2 = v62;
    v5 = v61;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

uint64_t sub_270A6BEB8(uint64_t a1)
{
  swift_getObjectType();
  sub_270A765BC(a1, v11);
  if (!v12)
  {
    sub_270A4E644(v11, &qword_28083FCB0);
    goto LABEL_7;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    v8 = 0;
    return v8 & 1;
  }

  v3 = *(v1 + OBJC_IVAR____TtC20UserNotificationsKit44NotificationSummarizationOnboardingViewModel_sources);
  v4 = *&v10[OBJC_IVAR____TtC20UserNotificationsKit44NotificationSummarizationOnboardingViewModel_sources];

  LOBYTE(v3) = sub_270A7662C(v3, v4);

  if ((v3 & 1) == 0)
  {

    goto LABEL_7;
  }

  v5 = *(v1 + OBJC_IVAR____TtC20UserNotificationsKit44NotificationSummarizationOnboardingViewModel_categorizedSources);
  v6 = *&v10[OBJC_IVAR____TtC20UserNotificationsKit44NotificationSummarizationOnboardingViewModel_categorizedSources];

  sub_270A7699C(v5, v6);
  v8 = v7;

  return v8 & 1;
}

id sub_270A6C04C@<X0>(void *a1@<X8>)
{
  ObjectType = swift_getObjectType();
  v4 = *(v1 + OBJC_IVAR____TtC20UserNotificationsKit44NotificationSummarizationOnboardingViewModel_sources);
  v5 = *(v1 + OBJC_IVAR____TtC20UserNotificationsKit44NotificationSummarizationOnboardingViewModel_categorizedSources);
  swift_getKeyPath();
  v13 = v1;
  sub_270A76398(&qword_28083FB80, type metadata accessor for NotificationSummarizationOnboardingViewModel);

  sub_270A88790();

  v6 = *(v1 + OBJC_IVAR____TtC20UserNotificationsKit44NotificationSummarizationOnboardingViewModel__showsSummaryOnboarding);
  swift_getKeyPath();
  v13 = v1;
  sub_270A88790();

  v7 = *(v1 + OBJC_IVAR____TtC20UserNotificationsKit44NotificationSummarizationOnboardingViewModel__showsPriorityOnboarding);
  v8 = objc_allocWithZone(ObjectType);
  v9 = &v8[OBJC_IVAR____TtC20UserNotificationsKit44NotificationSummarizationOnboardingViewModel__priorityOutcome];
  *v9 = 0;
  v9[8] = 1;
  v10 = &v8[OBJC_IVAR____TtC20UserNotificationsKit44NotificationSummarizationOnboardingViewModel__summaryOutcome];
  *v10 = 0;
  v10[8] = 1;
  v8[OBJC_IVAR____TtC20UserNotificationsKit44NotificationSummarizationOnboardingViewModel__supportsBackButton] = 1;
  *&v8[OBJC_IVAR____TtC20UserNotificationsKit44NotificationSummarizationOnboardingViewModel__selectedCategories] = MEMORY[0x277D84FA0];
  type metadata accessor for NotificationSourceIconCache();
  swift_allocObject();
  *&v8[OBJC_IVAR____TtC20UserNotificationsKit44NotificationSummarizationOnboardingViewModel__iconCache] = sub_270A53054(8);
  sub_270A887C0();
  *&v8[OBJC_IVAR____TtC20UserNotificationsKit44NotificationSummarizationOnboardingViewModel_sources] = v4;
  *&v8[OBJC_IVAR____TtC20UserNotificationsKit44NotificationSummarizationOnboardingViewModel_categorizedSources] = v5;
  v8[OBJC_IVAR____TtC20UserNotificationsKit44NotificationSummarizationOnboardingViewModel__showsSummaryOnboarding] = v6;
  v8[OBJC_IVAR____TtC20UserNotificationsKit44NotificationSummarizationOnboardingViewModel__showsPriorityOnboarding] = v7;
  v12.receiver = v8;
  v12.super_class = ObjectType;
  result = objc_msgSendSuper2(&v12, sel_init);
  a1[3] = ObjectType;
  *a1 = result;
  return result;
}

void sub_270A6C2C8(void *a1)
{
  v68 = sub_270A88840();
  v3 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v67 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083FC18);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v65 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v64 = &v55 - v8;
  sub_270A6CADC(*(v1 + OBJC_IVAR____TtC20UserNotificationsKit44NotificationSummarizationOnboardingViewModel_sources));
  v9 = objc_allocWithZone(MEMORY[0x277CBEA60]);
  v10 = sub_270A890B0();

  v11 = [v9 initWithArray_];

  v12 = sub_270A88FB0();
  v57 = a1;
  [a1 encodeObject:v11 forKey:v12];

  v63 = [objc_allocWithZone(MEMORY[0x277CBEB38]) init];
  v56 = v1;
  v13 = *(v1 + OBJC_IVAR____TtC20UserNotificationsKit44NotificationSummarizationOnboardingViewModel_categorizedSources);
  v14 = *(v13 + 64);
  v58 = v13 + 64;
  v15 = 1 << *(v13 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & v14;
  v18 = (v15 + 63) >> 6;
  v59 = v3 + 16;
  v60 = v3;
  v66 = (v3 + 32);
  v61 = v13;
  v62 = (v3 + 8);

  v19 = 0;
  if (v17)
  {
    while (1)
    {
      v20 = v19;
LABEL_12:
      v24 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      v25 = v24 | (v20 << 6);
      v26 = v60;
      v27 = v61;
      v29 = v67;
      v28 = v68;
      (*(v60 + 16))(v67, *(v61 + 48) + *(v60 + 72) * v25, v68);
      v30 = *(*(v27 + 56) + 8 * v25);
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083FC20);
      v32 = *(v31 + 48);
      v33 = *(v26 + 32);
      v23 = v65;
      v33(v65, v29, v28);
      *(v23 + v32) = v30;
      (*(*(v31 - 8) + 56))(v23, 0, 1, v31);

      v22 = v20;
LABEL_13:
      v34 = v64;
      sub_270A63318(v23, v64, &qword_28083FC18);
      v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083FC20);
      if ((*(*(v35 - 8) + 48))(v34, 1, v35) == 1)
      {
        break;
      }

      v36 = v67;
      v37 = v68;
      (*v66)(v67, v34, v68);
      v38 = sub_270A88830();
      v40 = v39;
      sub_270A4DC8C(0, &qword_28083F120);
      v41 = sub_270A890B0();

      v69 = v38;
      v70 = v40;
      [v63 __swift_setObject_forKeyedSubscript_];

      swift_unknownObjectRelease();
      (*v62)(v36, v37);
      v19 = v22;
      if (!v17)
      {
        goto LABEL_5;
      }
    }

    v43 = v63;
    v44 = sub_270A88FB0();
    v45 = v57;
    [v57 encodeObject:v43 forKey:v44];

    swift_getKeyPath();
    v46 = v56;
    v69 = v56;
    sub_270A76398(&qword_28083FB80, type metadata accessor for NotificationSummarizationOnboardingViewModel);
    sub_270A88790();

    v47 = *(v46 + OBJC_IVAR____TtC20UserNotificationsKit44NotificationSummarizationOnboardingViewModel__showsSummaryOnboarding);
    v48 = sub_270A88FB0();
    [v45 encodeBool:v47 forKey:v48];

    swift_getKeyPath();
    v69 = v46;
    sub_270A88790();

    v49 = *(v46 + OBJC_IVAR____TtC20UserNotificationsKit44NotificationSummarizationOnboardingViewModel__showsPriorityOnboarding);
    v50 = sub_270A88FB0();
    [v45 encodeBool:v49 forKey:v50];

    swift_getKeyPath();
    v69 = v46;
    sub_270A88790();

    if (*(v46 + OBJC_IVAR____TtC20UserNotificationsKit44NotificationSummarizationOnboardingViewModel__summaryOutcome + 8))
    {
      v51 = 0;
    }

    else
    {
      v69 = *(v46 + OBJC_IVAR____TtC20UserNotificationsKit44NotificationSummarizationOnboardingViewModel__summaryOutcome);
      type metadata accessor for NotificationOnboardingOutcome(0);
      v51 = sub_270A89580();
    }

    v52 = sub_270A88FB0();
    [v45 encodeObject:v51 forKey:v52];
    swift_unknownObjectRelease();

    swift_getKeyPath();
    v69 = v46;
    sub_270A88790();

    if (*(v46 + OBJC_IVAR____TtC20UserNotificationsKit44NotificationSummarizationOnboardingViewModel__priorityOutcome + 8))
    {
      v53 = 0;
    }

    else
    {
      v69 = *(v46 + OBJC_IVAR____TtC20UserNotificationsKit44NotificationSummarizationOnboardingViewModel__priorityOutcome);
      type metadata accessor for NotificationOnboardingOutcome(0);
      v53 = sub_270A89580();
    }

    v54 = sub_270A88FB0();
    [v45 encodeObject:v53 forKey:v54];

    swift_unknownObjectRelease();
  }

  else
  {
LABEL_5:
    if (v18 <= v19 + 1)
    {
      v21 = v19 + 1;
    }

    else
    {
      v21 = v18;
    }

    v22 = v21 - 1;
    v23 = v65;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v20 >= v18)
      {
        v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083FC20);
        (*(*(v42 - 8) + 56))(v23, 1, 1, v42);
        v17 = 0;
        goto LABEL_13;
      }

      v17 = *(v58 + 8 * v20);
      ++v19;
      if (v17)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

char *sub_270A6CADC(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_270A892D0();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v13 = MEMORY[0x277D84F90];
  result = sub_270A5042C(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        MEMORY[0x2743AE840](i, a1);
        sub_270A4DC8C(0, &qword_28083F120);
        swift_dynamicCast();
        v13 = v3;
        v7 = *(v3 + 16);
        v6 = *(v3 + 24);
        if (v7 >= v6 >> 1)
        {
          sub_270A5042C((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v7 + 1;
        sub_270A64E50(v12, (v3 + 32 * v7 + 32));
      }
    }

    else
    {
      v8 = (a1 + 32);
      sub_270A4DC8C(0, &qword_28083F120);
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = *(v3 + 16);
        v10 = *(v3 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_270A5042C((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v11 + 1;
        sub_270A64E50(v12, (v3 + 32 * v11 + 32));
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_270A6CD40(unint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083FBE0);
  MEMORY[0x28223BE20](v5 - 8);
  v102 = &v84 - v6;
  v104 = sub_270A88840();
  v99 = *(v104 - 8);
  v7 = MEMORY[0x28223BE20](v104);
  v101 = &v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v103 = &v84 - v9;
  v10 = &v1[OBJC_IVAR____TtC20UserNotificationsKit44NotificationSummarizationOnboardingViewModel__priorityOutcome];
  *v10 = 0;
  v97 = v10;
  *(v10 + 8) = 1;
  v11 = &v1[OBJC_IVAR____TtC20UserNotificationsKit44NotificationSummarizationOnboardingViewModel__summaryOutcome];
  *v11 = 0;
  v98 = v11;
  *(v11 + 8) = 1;
  v1[OBJC_IVAR____TtC20UserNotificationsKit44NotificationSummarizationOnboardingViewModel__supportsBackButton] = 1;
  v12 = OBJC_IVAR____TtC20UserNotificationsKit44NotificationSummarizationOnboardingViewModel__selectedCategories;
  *&v1[OBJC_IVAR____TtC20UserNotificationsKit44NotificationSummarizationOnboardingViewModel__selectedCategories] = MEMORY[0x277D84FA0];
  type metadata accessor for NotificationSourceIconCache();
  swift_allocObject();
  v13 = sub_270A53054(8);
  v105 = OBJC_IVAR____TtC20UserNotificationsKit44NotificationSummarizationOnboardingViewModel__iconCache;
  *&v1[OBJC_IVAR____TtC20UserNotificationsKit44NotificationSummarizationOnboardingViewModel__iconCache] = v13;
  v14 = OBJC_IVAR____TtC20UserNotificationsKit44NotificationSummarizationOnboardingViewModel___observationRegistrar;
  sub_270A887C0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083FBE8);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_270A8E2A0;
  v16 = sub_270A4DC8C(0, &unk_28083FBF0);
  *(v15 + 32) = v16;
  v17 = sub_270A4DC8C(0, &qword_28083F120);
  *(v15 + 40) = v17;
  sub_270A89210();

  if (!v109)
  {

    sub_270A4E644(v108, &qword_28083FCB0);
LABEL_39:

    goto LABEL_40;
  }

  v100 = v12;
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_39;
  }

  v18 = v107;
  v108[0] = 0;
  sub_270A890C0();
  if (v108[0])
  {
    v94 = v18;
    v95 = v108[0];
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_270A8EE50;
    *(v19 + 32) = sub_270A4DC8C(0, &qword_28083FC00);
    *(v19 + 40) = v16;
    *(v19 + 48) = sub_270A4DC8C(0, &qword_28083FC08);
    *(v19 + 56) = v17;
    sub_270A89210();

    if (v109)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083FC10);
      if (swift_dynamicCast())
      {
        v85 = v14;
        v87 = a1;
        v86 = ObjectType;
        v20 = 0;
        v22 = v107 + 64;
        v21 = *(v107 + 64);
        v93 = v107;
        v23 = 1 << *(v107 + 32);
        v24 = -1;
        if (v23 < 64)
        {
          v24 = ~(-1 << v23);
        }

        a1 = v24 & v21;
        v25 = (v23 + 63) >> 6;
        v92 = (v99 + 48);
        v91 = (v99 + 32);
        v96 = (v99 + 16);
        v90 = (v99 + 8);
        v26 = MEMORY[0x277D84F98];
        v14 = v101;
        v27 = v102;
        v89 = v107 + 64;
        if ((v24 & v21) != 0)
        {
          goto LABEL_17;
        }

LABEL_18:
        while (1)
        {
          v35 = v20 + 1;
          if (__OFADD__(v20, 1))
          {
            break;
          }

          if (v35 >= v25)
          {

            *&v2[OBJC_IVAR____TtC20UserNotificationsKit44NotificationSummarizationOnboardingViewModel_sources] = v95;
            *&v2[OBJC_IVAR____TtC20UserNotificationsKit44NotificationSummarizationOnboardingViewModel_categorizedSources] = v26;
            v64 = sub_270A88FB0();
            v65 = v87;
            v66 = [v87 decodeBoolForKey_];

            v2[OBJC_IVAR____TtC20UserNotificationsKit44NotificationSummarizationOnboardingViewModel__showsSummaryOnboarding] = v66;
            v67 = sub_270A88FB0();
            v68 = [v65 decodeBoolForKey_];

            v2[OBJC_IVAR____TtC20UserNotificationsKit44NotificationSummarizationOnboardingViewModel__showsPriorityOnboarding] = v68;
            v69 = sub_270A88FB0();
            v70 = [v65 decodeIntegerForKey_];

            if ((v70 & 0x8000000000000000) != 0)
            {
LABEL_53:
              __break(1u);
            }

            else
            {
              v71 = v98;
              *v98 = v70;
              *(v71 + 8) = 0;
              v72 = sub_270A88FB0();
              v73 = [v65 decodeIntegerForKey_];

              v74 = v86;
              if ((v73 & 0x8000000000000000) == 0)
              {
                v75 = v97;
                *v97 = v73;
                *(v75 + 8) = 0;
                v106.receiver = v2;
                v106.super_class = v74;
                v76 = objc_msgSendSuper2(&v106, sel_init);

                return v76;
              }
            }

            __break(1u);
LABEL_55:
            swift_once();
            goto LABEL_45;
          }

          a1 = *(v22 + 8 * v35);
          ++v20;
          if (a1)
          {
            while (1)
            {
              v36 = *(*(v93 + 56) + 8 * (__clz(__rbit64(a1)) | (v35 << 6)));

              sub_270A88820();
              v37 = v104;
              if ((*v92)(v27, 1, v104) == 1)
              {
                break;
              }

              v38 = v27;
              v39 = v103;
              (*v91)(v103, v38, v37);
              v40 = *v96;
              (*v96)(v14, v39, v37);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v108[0] = v26;
              v42 = sub_270A7D2BC(v14);
              v44 = v26[2];
              v45 = (v43 & 1) == 0;
              v46 = __OFADD__(v44, v45);
              v47 = v44 + v45;
              if (v46)
              {
                goto LABEL_50;
              }

              v48 = v43;
              if (v26[3] >= v47)
              {
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  v58 = v42;
                  sub_270A71670();
                  v42 = v58;
                }
              }

              else
              {
                sub_270A6F920(v47, isUniquelyReferenced_nonNull_native);
                v42 = sub_270A7D2BC(v14);
                if ((v48 & 1) != (v49 & 1))
                {
                  result = sub_270A895A0();
                  __break(1u);
                  return result;
                }
              }

              v27 = v102;
              a1 &= a1 - 1;
              v26 = v108[0];
              if (v48)
              {
                *(*(v108[0] + 56) + 8 * v42) = v36;

                v33 = *v90;
                v34 = v104;
                (*v90)(v14, v104);
                v33(v103, v34);
                v20 = v35;
                v22 = v89;
                if (!a1)
                {
                  goto LABEL_18;
                }
              }

              else
              {
                v88 = v36;
                v50 = v25;
                v51 = v102;
                *(v108[0] + 8 * (v42 >> 6) + 64) |= 1 << v42;
                v52 = v99;
                v53 = v42;
                v54 = v104;
                v40(v26[6] + *(v99 + 72) * v42, v101, v104);
                *(v26[7] + 8 * v53) = v88;
                v55 = *(v52 + 8);
                v14 = v101;
                v55(v101, v54);
                v55(v103, v54);
                v56 = v26[2];
                v46 = __OFADD__(v56, 1);
                v57 = v56 + 1;
                if (v46)
                {
                  __break(1u);
                  goto LABEL_53;
                }

                v26[2] = v57;
                v20 = v35;
                v22 = v89;
                v27 = v51;
                v25 = v50;
                if (!a1)
                {
                  goto LABEL_18;
                }
              }

LABEL_17:
              v35 = v20;
            }

            sub_270A4E644(v27, &qword_28083FBE0);
            if (qword_28122C2A0 != -1)
            {
              goto LABEL_55;
            }

LABEL_45:
            v77 = sub_270A88890();
            __swift_project_value_buffer(v77, qword_28122C340);
            v78 = sub_270A88870();
            v79 = sub_270A891A0();
            v80 = os_log_type_enabled(v78, v79);
            v81 = v87;
            v14 = v85;
            if (v80)
            {
              v82 = swift_slowAlloc();
              *v82 = 0;
              _os_log_impl(&dword_270A33000, v78, v79, "NotificationSummarizationOnboardingViewModel decoding: Cannot create 'category' from 'categoryInt'", v82, 2u);
              MEMORY[0x2743AF520](v82, -1, -1);
            }

            else
            {
            }

            goto LABEL_39;
          }
        }

        __break(1u);
LABEL_50:
        __break(1u);
        goto LABEL_51;
      }
    }

    else
    {

      sub_270A4E644(v108, &qword_28083FCB0);
    }

    if (qword_28122C2A0 == -1)
    {
LABEL_35:
      v59 = sub_270A88890();
      __swift_project_value_buffer(v59, qword_28122C340);
      v60 = sub_270A88870();
      v61 = sub_270A891A0();
      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        *v62 = 0;
        _os_log_impl(&dword_270A33000, v60, v61, "NotificationSummarizationOnboardingViewModel decoding: Cannot create 'categorizedSources' from 'categorizedSourcesNSDictionary'", v62, 2u);
        MEMORY[0x2743AF520](v62, -1, -1);
      }

      goto LABEL_39;
    }

LABEL_51:
    swift_once();
    goto LABEL_35;
  }

  if (qword_28122C2A0 != -1)
  {
    swift_once();
  }

  v28 = sub_270A88890();
  __swift_project_value_buffer(v28, qword_28122C340);
  v29 = v18;
  v30 = sub_270A88870();
  v31 = sub_270A891A0();
  if (!os_log_type_enabled(v30, v31))
  {

    goto LABEL_39;
  }

  v32 = swift_slowAlloc();
  *v32 = 134349056;
  *(v32 + 4) = [v29 count];

  _os_log_impl(&dword_270A33000, v30, v31, "NotificationSummarizationOnboardingViewModel decoding: Cannot create 'sources' from 'sourcesNSArray' with count '%{public}ld'", v32, 0xCu);
  MEMORY[0x2743AF520](v32, -1, -1);

LABEL_40:

  v63 = sub_270A887D0();
  (*(*(v63 - 8) + 8))(&v2[v14], v63);
  swift_deallocPartialClassInstance();
  return 0;
}

void sub_270A6D9D4(int a1)
{
  v2 = v1;
  LODWORD(v3) = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28083FDC0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = (v56 - v5);
  v7 = MEMORY[0x277D84F90];
  v62 = MEMORY[0x277D84F90];
  swift_getKeyPath();
  v8 = OBJC_IVAR____TtC20UserNotificationsKit44NotificationSummarizationOnboardingViewModel___observationRegistrar;
  v61[0] = v1;
  v9 = sub_270A76398(&qword_28083FB80, type metadata accessor for NotificationSummarizationOnboardingViewModel);
  sub_270A88790();

  v10 = (v1 + OBJC_IVAR____TtC20UserNotificationsKit44NotificationSummarizationOnboardingViewModel__summaryOutcome);
  v11 = MEMORY[0x277D84F98];
  if ((*(v1 + OBJC_IVAR____TtC20UserNotificationsKit44NotificationSummarizationOnboardingViewModel__summaryOutcome + 8) & 1) == 0)
  {
    v59 = v9;
    v60 = v8;
    v12 = *v10;
    v13 = *v10 == 2;
    v58 = v3;
    if (!v13)
    {
      if (v12 != 1)
      {
        v14 = MEMORY[0x277D84F90];
LABEL_11:
        v3 = [objc_allocWithZone(UNNotificationOnboardingDefaults) init];

        sub_270A7A9A0(v12, v14, v6);
        v25 = _s21ShownExperienceRecordVMa();
        (*(*(v25 - 8) + 56))(v6, 0, 1, v25);
        swift_beginAccess();
        sub_270A69EB4(v6, 1);
        swift_endAccess();

        sub_270A6E55C(v14);
        v26 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInteger_];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v61[0] = v11;
        sub_270A70F80(v26, 0x656D6F6374756FLL, 0xE700000000000000, isUniquelyReferenced_nonNull_native);
        v28 = v61[0];
        swift_getKeyPath();
        v61[0] = v2;
        sub_270A88790();

        swift_beginAccess();

        v30 = sub_270A69BAC(v29);

        v61[0] = v30;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28083FBB0);
        sub_270A503A8();
        sub_270A88F90();

        v31 = objc_allocWithZone(MEMORY[0x277CCACA8]);
        v32 = sub_270A88FB0();

        v33 = [v31 initWithString_];

        v34 = swift_isUniquelyReferenced_nonNull_native();
        v61[0] = v28;
        sub_270A70F80(v33, 0x69726F6765746163, 0xEA00000000007365, v34);
        v11 = v61[0];
        LOBYTE(v3) = v58;
        goto LABEL_12;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083FBC0);
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_270A8EE60;
      swift_getKeyPath();
      v61[0] = v1;
      sub_270A88790();

      v15 = OBJC_IVAR____TtC20UserNotificationsKit44NotificationSummarizationOnboardingViewModel__selectedCategories;
      swift_beginAccess();
      v16 = *&v2[v15];
      v17 = *(v16 + 16);
      if (!v17)
      {
        v18 = MEMORY[0x277D84F90];
        goto LABEL_10;
      }

      v18 = sub_270A6F0C0(*(v16 + 16), 0);
      v19 = *(sub_270A88840() - 8);
      v20 = sub_270A75080(v61, (v18 + ((*(v19 + 80) + 32) & ~*(v19 + 80))), v17, v16);
      v56[5] = v61[0];
      *&v57 = v20;
      v56[4] = v61[1];
      v56[3] = v61[2];
      v56[2] = v61[3];
      v56[1] = v61[4];

      sub_270A762E0();
      if (v57 == v17)
      {
LABEL_10:
        *(v14 + 32) = v18;
        goto LABEL_11;
      }

      __break(1u);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083FBC0);
    v14 = swift_allocObject();
    v57 = xmmword_270A8EE60;
    *(v14 + 16) = xmmword_270A8EE60;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083FBC8);
    v21 = sub_270A88840();
    v22 = *(v21 - 8);
    v23 = (*(v22 + 80) + 32) & ~*(v22 + 80);
    v18 = swift_allocObject();
    *(v18 + 16) = v57;
    v24 = v18 + v23;
    v7 = MEMORY[0x277D84F90];
    (*(v22 + 104))(v24, *MEMORY[0x277D77EF8], v21);
    goto LABEL_10;
  }

LABEL_12:
  swift_getKeyPath();
  v61[0] = v2;
  sub_270A88790();

  v35 = &v2[OBJC_IVAR____TtC20UserNotificationsKit44NotificationSummarizationOnboardingViewModel__priorityOutcome];
  if ((v2[OBJC_IVAR____TtC20UserNotificationsKit44NotificationSummarizationOnboardingViewModel__priorityOutcome + 8] & 1) == 0)
  {
    v36 = *v35;
    v37 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInteger_];
    v38 = swift_isUniquelyReferenced_nonNull_native();
    v61[0] = v11;
    sub_270A70F80(v37, 0x797469726F697270, 0xEF656D6F6374754FLL, v38);
    if (v36 == 1)
    {
      v7 = &unk_28808C7C0;
    }

    v39 = [objc_allocWithZone(UNNotificationOnboardingDefaults) init];

    sub_270A7A9A0(v36, v7, v6);
    v40 = _s21ShownExperienceRecordVMa();
    (*(*(v40 - 8) + 56))(v6, 0, 1, v40);
    swift_beginAccess();
    sub_270A69EB4(v6, 2);
    swift_endAccess();

    sub_270A6E55C(v7);
  }

  if ((v3 & 1) == 0)
  {

    goto LABEL_23;
  }

  v41 = sub_270A88FB0();
  sub_270A4DC8C(0, &qword_28083FBA0);
  v42 = sub_270A88F50();

  AnalyticsSendEvent();

  v43 = v62;
  v44 = *(v62 + 16);
  if (!v44)
  {
LABEL_23:

    return;
  }

  v45 = objc_opt_self();
  v46 = v2;
  v47 = [v45 currentNotificationSettingsCenter];
  v48 = [v47 notificationSystemSettings];
  [v48 mutableCopy];

  sub_270A89270();
  swift_unknownObjectRelease();
  sub_270A4DC8C(0, &qword_28083F0C0);
  if (swift_dynamicCast())
  {
    v49 = v61[12];
    v50 = 32;
    do
    {
      v61[0] = *(v43 + v50);

      v51 = v46;
      sub_270A50C64(v61, v49, v47, v51);

      v50 += 8;
      --v44;
    }

    while (v44);
  }

  else
  {
    if (qword_28122C2A0 != -1)
    {
      swift_once();
    }

    v52 = sub_270A88890();
    __swift_project_value_buffer(v52, qword_28122C340);
    v53 = sub_270A88870();
    v54 = sub_270A891B0();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&dword_270A33000, v53, v54, "Cannot get a mutable copy of UNNotificationSystemSettings", v55, 2u);
      MEMORY[0x2743AF520](v55, -1, -1);
    }
  }
}

id sub_270A6E478()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_270A6E55C(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_270A6EFB4(result, v10, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void sub_270A6E650(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083FB70);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v20 - v6;
  v8 = [a1 bundleIdentifier];
  if (v8)
  {
    v9 = v8;
    v10 = [a1 bundleContainerURL];
    if (v10)
    {
      v11 = v10;
      sub_270A886C0();

      v12 = sub_270A886D0();
      (*(*(v12 - 8) + 56))(v5, 0, 1, v12);
    }

    else
    {
      v12 = sub_270A886D0();
      (*(*(v12 - 8) + 56))(v5, 1, 1, v12);
    }

    sub_270A63318(v5, v7, &qword_28083FB70);
    sub_270A886D0();
    v13 = *(v12 - 8);
    if ((*(v13 + 48))(v7, 1, v12) == 1)
    {

      sub_270A4E644(v7, &qword_28083FB70);
    }

    else
    {
      sub_270A886A0();
      (*(v13 + 8))(v7, v12);
      v14 = [a1 localizedName];
      if (!v14)
      {
        sub_270A88FC0();
        v14 = sub_270A88FB0();
      }

      v15 = [objc_opt_self() iconNamed_];

      v16 = [objc_allocWithZone(MEMORY[0x277D77F80]) init];
      v17 = objc_allocWithZone(MEMORY[0x277D77F70]);
      v18 = sub_270A88FB0();

      v19 = [v17 initWithIdentifier:v9 isHidden:0 displayName:v14 icon:v15 settings:v16 bundlePath:v18];

      sub_270A72478(&v21, v19);
    }
  }
}

void sub_270A6E988(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

uint64_t UNNotificationSource.id.getter()
{
  v1 = [v0 sourceIdentifier];
  v2 = sub_270A88FC0();

  return v2;
}

void sub_270A6EA38(uint64_t *a1@<X8>)
{
  v3 = [*v1 sourceIdentifier];
  v4 = sub_270A88FC0();
  v6 = v5;

  *a1 = v4;
  a1[1] = v6;
}

uint64_t type metadata accessor for NotificationSummarizationOnboardingViewModel()
{
  result = qword_28083FB38;
  if (!qword_28083FB38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_270A6EAE4()
{
  result = sub_270A887D0();
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

char *sub_270A6EBB0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28083FC60);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_270A6ECD0(size_t result, int64_t a2, char a3, void *a4)
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
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083FBC8);
  v10 = *(sub_270A88840() - 8);
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
  v15 = *(sub_270A88840() - 8);
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

char *sub_270A6EEA8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28083FC50);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_270A6EFB4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083FBC0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_270A6F0C0(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083FBC8);
  v4 = *(sub_270A88840() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if (result - v6 != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_270A6F1BC(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083F100);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

void *sub_270A6F244(unint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v2 = sub_270A892D0();
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  while (1)
  {
    v3 = sub_270A6F1BC(v2, 0);

    v1 = sub_270A74E64(&v5, v3 + 4, v2, v1);
    sub_270A762E0();
    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = v1[2];
    if (!v2)
    {
      return MEMORY[0x277D84F90];
    }
  }

  return v3;
}

uint64_t sub_270A6F2F4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083F718);
  v40 = a2;
  result = sub_270A89480();
  v7 = result;
  if (*(v5 + 16))
  {
    v39 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(v5 + 48) + 24 * v20;
      v22 = *v21;
      v23 = *(v21 + 8);
      v24 = *(v21 + 16);
      v25 = *(*(v5 + 56) + 8 * v20);
      if ((v40 & 1) == 0)
      {
        v26 = v22;
        v27 = v25;
      }

      sub_270A89630();
      sub_270A89650();
      if (v22)
      {
        v28 = v22;
        sub_270A89240();
      }

      if (v23 == 0.0)
      {
        v29 = 0.0;
      }

      else
      {
        v29 = v23;
      }

      MEMORY[0x2743AEB10](*&v29);
      if (v24 == 0.0)
      {
        v30 = 0.0;
      }

      else
      {
        v30 = v24;
      }

      MEMORY[0x2743AEB10](*&v30);
      result = sub_270A89680();
      v31 = -1 << *(v7 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v14 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v14 + 8 * v33);
          if (v37 != -1)
          {
            v15 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_7;
          }
        }

LABEL_43:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v32) & ~*(v14 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 24 * v15;
      *v16 = v22;
      *(v16 + 8) = v23;
      *(v16 + 16) = v24;
      *(*(v7 + 56) + 8 * v15) = v25;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_43;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if (v40)
    {
      v38 = 1 << *(v5 + 32);
      if (v38 >= 64)
      {
        bzero((v5 + 64), ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v38;
      }

      *(v5 + 16) = 0;
    }

    v3 = v39;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_270A6F60C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083F720);
  result = sub_270A89480();
  v7 = result;
  if (*(v5 + 16))
  {
    v38 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(v5 + 48) + 24 * v20;
      v22 = *v21;
      v23 = *(v21 + 8);
      v24 = *(v21 + 16);
      v39 = *(*(v5 + 56) + 16 * v20);
      if ((a2 & 1) == 0)
      {
        v25 = v22;

        v26 = *(&v39 + 1);
      }

      sub_270A89630();
      sub_270A89650();
      if (v22)
      {
        v27 = v22;
        sub_270A89240();
      }

      if (v23 == 0.0)
      {
        v28 = 0.0;
      }

      else
      {
        v28 = v23;
      }

      MEMORY[0x2743AEB10](*&v28);
      if (v24 == 0.0)
      {
        v29 = 0.0;
      }

      else
      {
        v29 = v24;
      }

      MEMORY[0x2743AEB10](*&v29);
      result = sub_270A89680();
      v30 = -1 << *(v7 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v14 + 8 * (v31 >> 6))) == 0)
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
          v36 = *(v14 + 8 * v32);
          if (v36 != -1)
          {
            v15 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_43:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v31) & ~*(v14 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 24 * v15;
      *v16 = v22;
      *(v16 + 8) = v23;
      *(v16 + 16) = v24;
      *(*(v7 + 56) + 16 * v15) = v39;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_43;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v37 = 1 << *(v5 + 32);
      if (v37 >= 64)
      {
        bzero((v5 + 64), ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v37;
      }

      *(v5 + 16) = 0;
    }

    v3 = v38;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_270A6F920(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = sub_270A88840();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083F710);
  v39 = a2;
  result = sub_270A89480();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      sub_270A76398(&unk_28083FB50, MEMORY[0x277D77F08]);
      result = sub_270A88F70();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_270A6FCFC(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = _s21ShownExperienceRecordVMa();
  v34 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v36 = v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28083FBD0);
  v35 = a2;
  result = sub_270A89480();
  v9 = result;
  if (*(v7 + 16))
  {
    v33[0] = v2;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v33[1] = 0x8000000270A90970;
    v16 = result + 64;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = v18 | (v10 << 6);
      v22 = *(*(v7 + 48) + v21);
      v23 = *(v34 + 72);
      v24 = *(v7 + 56) + v23 * v21;
      if (v35)
      {
        sub_270A76490(v24, v36);
      }

      else
      {
        sub_270A76558(v24, v36);
      }

      sub_270A89630();
      sub_270A89030();

      result = sub_270A89680();
      v25 = -1 << *(v9 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v16 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v16 + 8 * v27);
          if (v31 != -1)
          {
            v17 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v26) & ~*(v16 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + v17) = v22;
      result = sub_270A76490(v36, *(v9 + 56) + v23 * v17);
      ++*(v9 + 16);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v33[0];
      goto LABEL_34;
    }

    v32 = 1 << *(v7 + 32);
    v3 = v33[0];
    if (v32 >= 64)
    {
      bzero((v7 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v32;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_270A7009C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083F738);
  v35 = a2;
  result = sub_270A89480();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      sub_270A89630();
      sub_270A89030();
      result = sub_270A89680();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_270A70340(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083F728);
  v33 = a2;
  result = sub_270A89480();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_270A64E50(v24, v34);
      }

      else
      {
        sub_270A4D604(v24, v34);
      }

      sub_270A89630();
      sub_270A89030();
      result = sub_270A89680();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_270A64E50(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_270A7060C(uint64_t a1, char a2, uint64_t *a3)
{
  v4 = v3;
  v6 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v35 = a2;
  result = sub_270A89480();
  v8 = result;
  if (*(v6 + 16))
  {
    v34 = v6;
    v9 = 0;
    v10 = (v6 + 64);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v21 = v18 | (v9 << 6);
      v22 = (*(v6 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v6 + 56) + 8 * v21);
      if ((v35 & 1) == 0)
      {
      }

      sub_270A89630();
      sub_270A89030();
      result = sub_270A89680();
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
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v6 = v34;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
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
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v4 = v3;
      goto LABEL_33;
    }

    v33 = 1 << *(v6 + 32);
    v4 = v3;
    if (v33 >= 64)
    {
      bzero(v10, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v33;
    }

    *(v6 + 16) = 0;
  }

LABEL_33:
  *v4 = v8;
  return result;
}

unint64_t sub_270A708AC(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_270A892A0() + 1) & ~v5;
    while (1)
    {
      sub_270A89630();
      sub_270A89030();

      result = sub_270A89680();
      v9 = result & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v9 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v10 = *(a2 + 48);
      v11 = (v10 + v3);
      v12 = (v10 + v6);
      if (v3 != v6 || v11 >= v12 + 1)
      {
        *v11 = *v12;
      }

      v13 = *(a2 + 56);
      v14 = *(*(_s21ShownExperienceRecordVMa() - 8) + 72);
      v15 = v14 * v3;
      result = v13 + v14 * v3;
      v16 = v14 * v6;
      v17 = v13 + v14 * v6 + v14;
      if (v15 < v16 || result >= v17)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v15 == v16)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v9 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v9)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

id sub_270A70B00(uint64_t a1, void *a2, char a3, double a4, double a5)
{
  v6 = v5;
  v11 = *v5;
  v12 = sub_270A7D168(a2, a4, a5);
  v14 = *(v11 + 16);
  v15 = (v13 & 1) == 0;
  v16 = __OFADD__(v14, v15);
  v17 = v14 + v15;
  if (v16)
  {
    __break(1u);
    goto LABEL_17;
  }

  v18 = v13;
  v19 = *(v11 + 24);
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 < v17 || (a3 & 1) != 0)
    {
      sub_270A6F2F4(v17, a3 & 1);
      v12 = sub_270A7D168(a2, a4, a5);
      if ((v18 & 1) != (v21 & 1))
      {
LABEL_18:
        sub_270A895A0();
        __break(1u);
        return MEMORY[0x2821F96F8]();
      }
    }

    else
    {
      v20 = v12;
      sub_270A71348();
      v12 = v20;
    }
  }

  v22 = *v6;
  if (v18)
  {
    *(v22[7] + 8 * v12) = a1;

    return MEMORY[0x2821F96F8]();
  }

  v22[(v12 >> 6) + 8] |= 1 << v12;
  v23 = v22[6] + 24 * v12;
  *v23 = a2;
  *(v23 + 8) = a4;
  *(v23 + 16) = a5;
  *(v22[7] + 8 * v12) = a1;
  v24 = v22[2];
  v16 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v16)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v25;

  return a2;
}

id sub_270A70C90(uint64_t a1, uint64_t a2, void *a3, char a4, double a5, double a6)
{
  v7 = v6;
  v13 = *v6;
  v14 = sub_270A7D168(a3, a5, a6);
  v16 = *(v13 + 16);
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
    __break(1u);
    goto LABEL_17;
  }

  v20 = v15;
  v21 = *(v13 + 24);
  if (v21 < v19 || (a4 & 1) == 0)
  {
    if (v21 < v19 || (a4 & 1) != 0)
    {
      sub_270A6F60C(v19, a4 & 1);
      v14 = sub_270A7D168(a3, a5, a6);
      if ((v20 & 1) != (v23 & 1))
      {
LABEL_18:
        result = sub_270A895A0();
        __break(1u);
        return result;
      }
    }

    else
    {
      v22 = v14;
      sub_270A714D4();
      v14 = v22;
    }
  }

  v24 = *v7;
  if (v20)
  {
    v25 = (v24[7] + 16 * v14);
    v26 = v25[1];
    *v25 = a1;
    v25[1] = a2;
  }

  v24[(v14 >> 6) + 8] |= 1 << v14;
  v28 = v24[6] + 24 * v14;
  *v28 = a3;
  *(v28 + 8) = a5;
  *(v28 + 16) = a6;
  v29 = (v24[7] + 16 * v14);
  *v29 = a1;
  v29[1] = a2;
  v30 = v24[2];
  v18 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (v18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v24[2] = v31;

  return a3;
}

uint64_t sub_270A70E34(uint64_t a1, char a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_270A7D354(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_270A718F0();
      goto LABEL_7;
    }

    sub_270A6FCFC(v13, a3 & 1);
    v20 = sub_270A7D354(a2);
    if ((v14 & 1) == (v21 & 1))
    {
      v10 = v20;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_270A895A0();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if (v14)
  {
LABEL_8:
    v17 = v16[7];
    v18 = v17 + *(*(_s21ShownExperienceRecordVMa() - 8) + 72) * v10;

    return sub_270A764F4(a1, v18);
  }

LABEL_13:

  return sub_270A71248(v10, a2, a1, v16);
}

uint64_t sub_270A70F80(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_270A7D244(a2, a3);
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
      sub_270A7009C(v16, a4 & 1);
      v11 = sub_270A7D244(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_270A895A0();
        __break(1u);
        return MEMORY[0x2821F96F8]();
      }
    }

    else
    {
      v19 = v11;
      sub_270A71AFC();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return MEMORY[0x2821F96F8]();
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v24;
}

_OWORD *sub_270A710F8(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_270A7D244(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_270A71C68();
      v11 = v19;
      goto LABEL_8;
    }

    sub_270A70340(v16, a4 & 1);
    v11 = sub_270A7D244(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_270A895A0();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_0(v22);

    return sub_270A64E50(a1, v22);
  }

  else
  {
    sub_270A712DC(v11, a2, a3, a1, v21);
  }
}

uint64_t sub_270A71248(unint64_t a1, char a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + a1) = a2;
  v7 = a4[7];
  v8 = _s21ShownExperienceRecordVMa();
  result = sub_270A76490(a3, v7 + *(*(v8 - 8) + 72) * a1);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

_OWORD *sub_270A712DC(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_270A64E50(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

id sub_270A71348()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083F718);
  v2 = *v0;
  v3 = sub_270A89470();
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
        v18 = *(v2 + 48) + 24 * v17;
        v19 = *v18;
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = *(v4 + 48) + 24 * v17;
        v22 = *(v18 + 8);
        *v21 = *v18;
        *(v21 + 8) = v22;
        *(*(v4 + 56) + 8 * v17) = v20;
        v23 = v19;
        result = v20;
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

id sub_270A714D4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083F720);
  v2 = *v0;
  v3 = sub_270A89470();
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
        v18 = 24 * v17;
        v19 = *(v2 + 48) + 24 * v17;
        v20 = *v19;
        v17 *= 16;
        v21 = *(v4 + 48) + v18;
        v24 = *(*(v2 + 56) + v17);
        v22 = *(v19 + 8);
        *v21 = *v19;
        *(v21 + 8) = v22;
        *(*(v4 + 56) + v17) = v24;
        v23 = v20;

        result = *(&v24 + 1);
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

char *sub_270A71670()
{
  v1 = v0;
  v33 = sub_270A88840();
  v35 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v32 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083F710);
  v3 = *v0;
  v4 = sub_270A89470();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v28 = v1;
    v29 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v34 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v30 = v35 + 32;
    v31 = v35 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v36 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v35;
        v20 = *(v35 + 72) * v18;
        v22 = v32;
        v21 = v33;
        (*(v35 + 16))(v32, *(v3 + 48) + v20, v33);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v3;
        v25 = v34;
        (*(v19 + 32))(*(v34 + 48) + v20, v22, v21);
        v26 = *(v25 + 56);
        v3 = v24;
        *(v26 + 8 * v18) = v23;

        v13 = v36;
      }

      while (v36);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v28;
        v5 = v34;
        goto LABEL_18;
      }

      v17 = *(v29 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v36 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

void *sub_270A718F0()
{
  v1 = v0;
  v2 = _s21ShownExperienceRecordVMa();
  v24 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28083FBD0);
  v5 = *v0;
  v6 = sub_270A89470();
  v7 = v6;
  if (*(v5 + 16))
  {
    v23 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
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
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = *(*(v5 + 48) + v20);
        v22 = *(v24 + 72) * v20;
        sub_270A76558(*(v5 + 56) + v22, v4);
        *(*(v7 + 48) + v20) = v21;
        result = sub_270A76490(v4, *(v7 + 56) + v22);
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

        v1 = v23;
        goto LABEL_18;
      }

      v19 = *(v9 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

id sub_270A71AFC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083F738);
  v2 = *v0;
  v3 = sub_270A89470();
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

        result = v20;
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

void *sub_270A71C68()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083F728);
  v2 = *v0;
  v3 = sub_270A89470();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_270A4D604(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_270A64E50(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
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

void *sub_270A71E20(uint64_t *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *v1;
  v4 = sub_270A89470();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 64);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = v12 & v11;
    v14 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_17:
        v18 = v15 | (v9 << 6);
        v19 = (*(v3 + 48) + 16 * v18);
        v20 = v19[1];
        v21 = *(*(v3 + 56) + 8 * v18);
        v22 = (*(v5 + 48) + 16 * v18);
        *v22 = *v19;
        v22[1] = v20;
        *(*(v5 + 56) + 8 * v18) = v21;
      }

      while (v13);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 64 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

uint64_t sub_270A71F80(uint64_t a1, void *a2, double a3, double a4)
{
  v8 = *v4;
  sub_270A89630();
  sub_270A89650();
  if (a2)
  {
    v9 = a2;
    sub_270A89240();
  }

  if (a3 == 0.0)
  {
    v10 = 0.0;
  }

  else
  {
    v10 = a3;
  }

  MEMORY[0x2743AEB10](*&v10);
  if (a4 == 0.0)
  {
    v11 = 0.0;
  }

  else
  {
    v11 = a4;
  }

  MEMORY[0x2743AEB10](*&v11);
  v12 = sub_270A89680();
  v13 = -1 << *(v8 + 32);
  v14 = v12 & ~v13;
  if (((*(v8 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
LABEL_21:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v32 = *v30;
    v25 = a2;
    sub_270A73170(a2, v14, isUniquelyReferenced_nonNull_native, a3, a4);
    *v30 = v32;
    *a1 = a2;
    *(a1 + 8) = a3;
    *(a1 + 16) = a4;
    return 1;
  }

  v15 = ~v13;
  while (1)
  {
    v17 = *(v8 + 48) + 24 * v14;
    v18 = *v17;
    v20 = *(v17 + 8);
    v19 = *(v17 + 16);
    if (*v17)
    {
      break;
    }

    if (!a2)
    {
      goto LABEL_12;
    }

LABEL_16:
    v14 = (v14 + 1) & v15;
    if (((*(v8 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  if (!a2)
  {
    goto LABEL_16;
  }

  sub_270A4DC8C(0, &qword_28083F120);
  v21 = a2;
  v22 = v18;
  v23 = sub_270A89230();

  if ((v23 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_12:
  if (v20 != a3 || v19 != a4)
  {
    goto LABEL_16;
  }

  v27 = *(v8 + 48) + 24 * v14;
  v28 = *v27;
  *a1 = *v27;
  *(a1 + 8) = *(v27 + 8);
  v29 = v28;
  return 0;
}

uint64_t sub_270A72198(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_270A88840();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_270A76398(&unk_28083FB50, MEMORY[0x277D77F08]);
  v33 = a2;
  v11 = sub_270A88F70();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_270A76398(&qword_28083F0E0, MEMORY[0x277D77F08]);
      v21 = sub_270A88FA0();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_270A733AC(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_270A72478(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_270A892E0();

    if (v9)
    {

      sub_270A4DC8C(0, &qword_28083F120);
      swift_dynamicCast();
      result = 0;
      *a1 = v22;
      return result;
    }

    result = sub_270A892D0();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_270A726B0(v7, result + 1);
    if (*(v19 + 24) <= *(v19 + 16))
    {
      sub_270A72EC4();
    }

    v18 = v8;
    sub_270A730EC(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  sub_270A4DC8C(0, &qword_28083F120);
  v11 = sub_270A89220();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v3;
    v18 = a2;
    sub_270A73650(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v23;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_270A89230();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v20 = *(*(v6 + 48) + 8 * v13);
  *a1 = v20;
  v21 = v20;
  return 0;
}