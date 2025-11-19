uint64_t sub_21C9263C0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v67 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1A50, &qword_21CBB2360);
  v65 = *(v5 - 8);
  v66 = v5;
  v6 = *(v65 + 64);
  MEMORY[0x28223BE20](v5);
  v54 = &v54 - v7;
  v60 = type metadata accessor for PMAccount.Storage(0);
  v8 = *(*(v60 - 8) + 64);
  MEMORY[0x28223BE20](v60);
  v56 = (&v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for PMAccount(0);
  v11 = *(v10 - 8);
  v58 = v10 - 8;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v57 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1A58, &qword_21CBB2368);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v64 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v63 = &v54 - v18;
  v55 = sub_21CB83A34();
  v19 = *(v55 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v55);
  v22 = &v54 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF17F8, &qword_21CBB1EA0);
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  v27 = &v54 - v26;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1A60, &qword_21CBB2370);
  v59 = *(v62 - 8);
  v28 = *(v59 + 64);
  MEMORY[0x28223BE20](v62);
  v61 = &v54 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v32 = &v54 - v31;
  v69 = a2;
  v68 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1838, &unk_21CBB1F20);
  v33 = sub_21CB839C4();
  v70 = MEMORY[0x277CE0BD8];
  v71 = v33;
  v72 = MEMORY[0x277CE0BC8];
  v73 = MEMORY[0x277CE0758];
  swift_getOpaqueTypeConformance2();
  sub_21CB825D4();
  sub_21CB83A24();
  sub_21C942698();
  v34 = v32;
  sub_21CB844F4();
  (*(v19 + 8))(v22, v55);
  v35 = v56;
  (*(v24 + 8))(v27, v23);
  v36 = a1[1];
  swift_getKeyPath();
  swift_getKeyPath();
  v37 = v57;
  sub_21CB81DB4();

  sub_21C942ED4(v37 + *(v58 + 32), v35, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C943938(v35, type metadata accessor for PMAccount.Storage);
    sub_21C943938(v37, type metadata accessor for PMAccount);
LABEL_5:
    v42 = 1;
    v41 = v63;
    goto LABEL_6;
  }

  v38 = *v35;
  v39 = [v38 credentialTypes];

  sub_21C943938(v37, type metadata accessor for PMAccount);
  if (v39 != 3)
  {
    goto LABEL_5;
  }

  v40 = v54;
  sub_21C926ABC(a1, v54);
  v41 = v63;
  sub_21C716934(v40, v63, &qword_27CDF1A50, &qword_21CBB2360);
  v42 = 0;
LABEL_6:
  (*(v65 + 56))(v41, v42, 1, v66);
  v43 = v59;
  v44 = *(v59 + 16);
  v45 = v61;
  v46 = v34;
  v47 = v34;
  v48 = v62;
  v44(v61, v47, v62);
  v49 = v64;
  sub_21C6EDBAC(v41, v64, &qword_27CDF1A58, &qword_21CBB2368);
  v50 = v67;
  v44(v67, v45, v48);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1A68, &qword_21CBB2378);
  sub_21C6EDBAC(v49, &v50[*(v51 + 48)], &qword_27CDF1A58, &qword_21CBB2368);
  sub_21C6EA794(v41, &qword_27CDF1A58, &qword_21CBB2368);
  v52 = *(v43 + 8);
  v52(v46, v48);
  sub_21C6EA794(v49, &qword_27CDF1A58, &qword_21CBB2368);
  return (v52)(v45, v48);
}

uint64_t sub_21C926ABC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v65 = a2;
  v3 = type metadata accessor for PMCombinedAccountDetailsView();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE38, &unk_21CBA3770);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v56 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE40, &unk_21CBA8200);
  v63 = *(v11 - 8);
  v64 = v11;
  v12 = *(v63 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v56 - v13;
  sub_21CB81ED4();
  v15 = sub_21CB81F14();
  (*(*(v15 - 8) + 56))(v10, 0, 1, v15);
  sub_21C942ED4(a1, v6, type metadata accessor for PMCombinedAccountDetailsView);
  v16 = *(v4 + 80);
  v17 = (v16 + 16) & ~v16;
  v60 = v5;
  v59 = v16;
  v18 = swift_allocObject();
  sub_21C943454(v6, v18 + v17, type metadata accessor for PMCombinedAccountDetailsView);
  v62 = v14;
  sub_21CB84D94();
  v58 = sub_21C92765C();
  v57 = v19;
  v20 = *a1;
  v21 = a1[1];
  v61 = a1;
  type metadata accessor for PMCombinedAccountDetailsModel(0);
  sub_21C705F40(&qword_27CDEB520, type metadata accessor for PMCombinedAccountDetailsModel);
  sub_21CB82684();
  swift_getKeyPath();
  sub_21CB82694();

  v23 = v79;
  v22 = v80;
  v24 = v81;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v66 = v76;
  swift_getKeyPath();
  v76 = v23;
  v77 = v22;
  v78 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF16F0, &qword_21CBB1C78);
  sub_21CB84F44();

  v25 = v73;
  v26 = v74;
  v27 = v75;

  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v28 = v70;
  if (*(v70 + 16) && (v29 = sub_21CB10C54(2), (v30 & 1) != 0))
  {
    v31 = *(*(v28 + 56) + 8 * v29);
    v32 = v31;
  }

  else
  {
    v31 = 0;
  }

  v34 = v57;
  v35 = 0xE100000000000000;
  if (v57)
  {
    v35 = v57;
  }

  v57 = v35;
  v36 = 63;
  if (v34)
  {
    v36 = v58;
  }

  v58 = v36;
  MEMORY[0x28223BE20](v33);
  *(&v56 - 2) = v31;
  swift_getKeyPath();
  v70 = v25;
  v71 = v26;
  v72 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1700, &qword_21CBB1CE0);
  sub_21CB84F44();

  v37 = v67;
  v56 = v68;
  v38 = v69;

  v39 = v61;
  sub_21C942ED4(v61, v6, type metadata accessor for PMCombinedAccountDetailsView);
  v40 = swift_allocObject();
  sub_21C943454(v6, v40 + v17, type metadata accessor for PMCombinedAccountDetailsView);
  sub_21C942ED4(v39, v6, type metadata accessor for PMCombinedAccountDetailsView);
  v41 = swift_allocObject();
  sub_21C943454(v6, v41 + v17, type metadata accessor for PMCombinedAccountDetailsView);
  v42 = swift_allocObject();
  *(v42 + 16) = sub_21C943110;
  *(v42 + 24) = v40;
  v43 = swift_allocObject();
  *(v43 + 16) = sub_21C943128;
  *(v43 + 24) = v41;
  KeyPath = swift_getKeyPath();
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1A70, &qword_21CBB2380);
  v46 = v65;
  v47 = (v65 + *(v45 + 36));
  *v47 = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
  swift_storeEnumTagMultiPayload();
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1708, &unk_21CBB1CE8);
  *(v47 + v48[18]) = 0;
  v49 = (v47 + v48[15]);
  v50 = v57;
  *v49 = v58;
  v49[1] = v50;
  v51 = v47 + v48[16];
  v52 = v56;
  *v51 = v37;
  *(v51 + 1) = v52;
  v51[16] = v38;
  *(v47 + v48[17]) = 2;
  *(v47 + v48[19]) = 2;
  v53 = (v47 + v48[20]);
  *v53 = sub_21C9440B4;
  v53[1] = v42;
  v54 = (v47 + v48[21]);
  *v54 = sub_21C9440CC;
  v54[1] = v43;
  return (*(v63 + 32))(v46, v62, v64);
}

uint64_t sub_21C927220(uint64_t a1)
{
  v3 = type metadata accessor for PMAccount.Storage(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = (&v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v9 = (&v28 - v8);
  v10 = type metadata accessor for PMAccount(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v28 - v15;
  v17 = *(v1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  v29 = a1;
  if (a1 == 1)
  {
    sub_21CB81DB4();

    sub_21C942ED4(&v16[*(v10 + 24)], v9, type metadata accessor for PMAccount.Storage);
    sub_21C943938(v16, type metadata accessor for PMAccount);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v18 = objc_opt_self();
      v19 = *v9;
      v20 = [v18 configurationForDeleting:1 fromSavedAccount:*v9 isUndoable:1];

      swift_getKeyPath();
      swift_getKeyPath();
      v21 = sub_21CB81DA4();
      sub_21C87ED30(v20, 1);
      v21(v30, 0);
      v22 = v29;
LABEL_6:

      swift_getKeyPath();
      swift_getKeyPath();
      v30[0] = v22;

      return sub_21CB81DC4();
    }

    sub_21C943938(v9, type metadata accessor for PMAccount.Storage);
    __break(1u);
  }

  else
  {
    sub_21CB81DB4();

    sub_21C942ED4(&v13[*(v10 + 24)], v6, type metadata accessor for PMAccount.Storage);
    sub_21C943938(v13, type metadata accessor for PMAccount);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v23 = objc_opt_self();
      v24 = *v6;
      v22 = v29;
      v25 = [v23 configurationForDeleting:v29 fromSavedAccount:*v6];

      swift_getKeyPath();
      swift_getKeyPath();
      v26 = sub_21CB81DA4();
      sub_21C87ED30(v25, v22);
      v26(v30, 0);
      goto LABEL_6;
    }
  }

  result = sub_21C943938(v6, type metadata accessor for PMAccount.Storage);
  __break(1u);
  return result;
}

uint64_t sub_21C92765C()
{
  v1 = *(v0 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  if (*(v8 + 16) && (v2 = sub_21CB10C54(v8), (v3 & 1) != 0))
  {
    v4 = *(*(v8 + 56) + 8 * v2);

    v5 = [v4 title];

    if (v5)
    {
      v6 = sub_21CB855C4();

      return v6;
    }
  }

  else
  {
  }

  return 0;
}

uint64_t sub_21C92779C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  *a2 = v5;
  return result;
}

uint64_t sub_21C92781C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_21CB81DC4();
}

uint64_t sub_21C927898(uint64_t *a1)
{
  v1 = *a1;
  sub_21CB86484();
  MEMORY[0x21CF15F90](v1);
  return sub_21CB864D4();
}

unint64_t sub_21C9278E0@<X0>(unint64_t result@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v4 = *result;
  if (*(*result + 16) && (result = sub_21CB10C54(*a2), (v5 & 1) != 0))
  {
    v6 = *(*(v4 + 56) + 8 * result);
    result = v6;
  }

  else
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

uint64_t sub_21C927930(void **a1, void **a2)
{
  v2 = *a2;
  v3 = *a1;
  if (*a2)
  {
    if (v3)
    {
      sub_21C6E8F4C(0, &qword_27CDF1720, 0x277CBAA48);
      v4 = v2;
      v5 = v3;
      v6 = sub_21CB85DD4();

      if (v6)
      {
        return 1;
      }
    }
  }

  else if (!v3)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_21C9279BC(uint64_t *a1)
{
  v2 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF16F8, &qword_21CBB1CA0);
  sub_21C94246C();
  return sub_21CB85E64();
}

void sub_21C927A14(void **a1@<X0>, void **a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  if (*a2)
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v9 = 0;
  }

  else
  {
    sub_21C6E8F4C(0, &qword_27CDF1720, 0x277CBAA48);
    v7 = v4;
    v8 = v5;
    v9 = sub_21CB85DD4();
  }

  *a3 = v9 & 1;
}

void sub_21C927AA4(char *a1, void **a2, id *a3)
{
  v4 = *a3;
  v5 = *a1;
  v6 = *a2;
  v7 = *a3;

  if ((v5 & 1) == 0)
  {

    v4 = 0;
  }

  *a2 = v4;
}

uint64_t sub_21C927AFC@<X0>(char *a1@<X8>)
{
  v102 = a1;
  v90 = type metadata accessor for PMAccount.Storage(0);
  v1 = *(*(v90 - 8) + 64);
  MEMORY[0x28223BE20](v90);
  v91 = (&v87 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v88 = type metadata accessor for PMAccount(0);
  v3 = *(*(v88 - 8) + 64);
  MEMORY[0x28223BE20](v88);
  v89 = &v87 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC2B8, &qword_21CBA3EB0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v101 = &v87 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v107 = &v87 - v9;
  v10 = type metadata accessor for PMCombinedAccountDetailsView();
  v96 = *(v10 - 8);
  v11 = *(v96 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v105 = v12;
  v98 = &v87 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC948, &qword_21CBA4E30);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v100 = &v87 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v108 = &v87 - v17;
  v18 = sub_21CB81F14();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v87 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE38, &unk_21CBA3770);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v26 = &v87 - v25;
  v27 = sub_21CB81024();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  v31 = &v87 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE40, &unk_21CBA8200);
  v104 = *(v99 - 8);
  v32 = *(v104 + 64);
  MEMORY[0x28223BE20](v99);
  v106 = &v87 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v95 = &v87 - v35;
  MEMORY[0x28223BE20](v36);
  v38 = &v87 - v37;
  sub_21CB81014();
  v39 = sub_21CB81004();
  v41 = v40;
  v42 = *(v28 + 8);
  v93 = v28 + 8;
  v94 = v27;
  v92 = v42;
  v42(v31, v27);
  v112 = v39;
  v113 = v41;
  sub_21CB81EF4();
  v110 = v19;
  v111 = v18;
  v43 = *(v19 + 56);
  v43(v26, 0, 1, v18);
  v44 = sub_21C71F3FC();
  v97 = v38;
  sub_21CB84DC4();
  v109 = v22;
  sub_21CB81ED4();
  v45 = v103;
  v46 = *(v103 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v47 = v112;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v48 = v112;
  if (*(v112 + 16) && (v49 = sub_21CB10C54(v47), (v50 & 1) != 0))
  {
    v51 = *(*(v48 + 56) + 8 * v49);

    v52 = [v51 buttonTitle];

    if (v52)
    {
      v53 = sub_21CB855C4();
      v55 = v54;

      goto LABEL_7;
    }
  }

  else
  {
  }

  sub_21CB81014();
  v53 = sub_21CB81004();
  v55 = v56;
  v92(v31, v94);
LABEL_7:
  v112 = v53;
  v113 = v55;
  v57 = v111;
  (*(v110 + 16))(v26, v109, v111);
  v58 = 1;
  v43(v26, 0, 1, v57);
  v59 = v45;
  v60 = v98;
  sub_21C942ED4(v59, v98, type metadata accessor for PMCombinedAccountDetailsView);
  v61 = *(v96 + 80);
  v62 = swift_allocObject();
  sub_21C943454(v60, v62 + ((v61 + 16) & ~v61), type metadata accessor for PMCombinedAccountDetailsView);
  v63 = v95;
  v87 = v44;
  sub_21CB84DC4();
  sub_21C6EADEC(&qword_27CDEBE50, &qword_27CDEBE40, &unk_21CBA8200);
  v64 = v99;
  sub_21CB845C4();
  v65 = v104;
  v95 = *(v104 + 8);
  v96 = v104 + 8;
  (v95)(v63, v64);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  if (v112 == 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v66 = v89;
    sub_21CB81DB4();

    v67 = v91;
    sub_21C942ED4(v66 + *(v88 + 24), v91, type metadata accessor for PMAccount.Storage);
    sub_21C943938(v66, type metadata accessor for PMAccount);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_21C943938(v67, type metadata accessor for PMAccount.Storage);
LABEL_13:
      v58 = 1;
      goto LABEL_14;
    }

    v68 = *v67;
    if (![v68 hasValidWebsite])
    {

      goto LABEL_13;
    }

    sub_21CB81014();
    v69 = sub_21CB81004();
    v71 = v70;
    v92(v31, v94);
    v112 = v69;
    v113 = v71;
    sub_21C942ED4(v103, v60, type metadata accessor for PMCombinedAccountDetailsView);
    v65 = v104;
    v72 = swift_allocObject();
    *(v72 + 16) = v68;
    sub_21C943454(v60, v72 + ((v61 + 24) & ~v61), type metadata accessor for PMCombinedAccountDetailsView);
    v73 = v106;
    sub_21CB84DE4();
    (*(v65 + 32))(v107, v73, v64);
    v58 = 0;
  }

LABEL_14:
  v74 = v107;
  (*(v65 + 56))(v107, v58, 1, v64);
  v75 = *(v65 + 16);
  v76 = v106;
  v77 = v97;
  v75(v106, v97, v64);
  v78 = v64;
  v79 = v108;
  v80 = v100;
  sub_21C6EDBAC(v108, v100, &qword_27CDEC948, &qword_21CBA4E30);
  v81 = v101;
  sub_21C6EDBAC(v74, v101, &qword_27CDEC2B8, &qword_21CBA3EB0);
  v82 = v102;
  v75(v102, v76, v78);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1710, &qword_21CBB1CF8);
  sub_21C6EDBAC(v80, &v82[*(v83 + 48)], &qword_27CDEC948, &qword_21CBA4E30);
  sub_21C6EDBAC(v81, &v82[*(v83 + 64)], &qword_27CDEC2B8, &qword_21CBA3EB0);
  sub_21C6EA794(v74, &qword_27CDEC2B8, &qword_21CBA3EB0);
  sub_21C6EA794(v79, &qword_27CDEC948, &qword_21CBA4E30);
  (*(v110 + 8))(v109, v111);
  v84 = v77;
  v85 = v95;
  (v95)(v84, v78);
  sub_21C6EA794(v81, &qword_27CDEC2B8, &qword_21CBA3EB0);
  sub_21C6EA794(v80, &qword_27CDEC948, &qword_21CBA4E30);
  return v85(v76, v78);
}

uint64_t sub_21C928724@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v87 = a2;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1B38, &qword_21CBB2508);
  v76 = *(v78 - 8);
  v3 = *(v76 + 64);
  MEMORY[0x28223BE20](v78);
  v72 = &v70 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1B40, &unk_21CBB2510);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v80 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v79 = &v70 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0638, &qword_21CBAF088);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v77 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v82 = &v70 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1B48, &qword_21CBB2520);
  v85 = *(v15 - 8);
  v86 = v15;
  v16 = *(v85 + 64);
  MEMORY[0x28223BE20](v15);
  v75 = &v70 - v17;
  v81 = type metadata accessor for PMAccount.Storage(0);
  v18 = *(*(v81 - 8) + 64);
  MEMORY[0x28223BE20](v81);
  v74 = (&v70 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v20);
  v22 = (&v70 - v21);
  v23 = type metadata accessor for PMAccount(0);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23);
  v73 = &v70 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = &v70 - v27;
  MEMORY[0x28223BE20](v29);
  v31 = &v70 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1B50, &qword_21CBB2528);
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v32 - 8);
  v84 = &v70 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v37 = &v70 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1B58, &qword_21CBB2530);
  v39 = *(*(v38 - 8) + 64);
  MEMORY[0x28223BE20](v38 - 8);
  v83 = &v70 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v43 = &v70 - v42;
  sub_21C929058(&v70 - v42);
  v44 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  PMAccount.password.getter();
  v46 = v45;
  sub_21C943938(v31, type metadata accessor for PMAccount);
  if (!v46)
  {
    goto LABEL_10;
  }

  if ((sub_21C92D6D0() & 1) == 0)
  {
    goto LABEL_6;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  sub_21C942ED4(&v28[*(v23 + 24)], v22, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C943938(v28, type metadata accessor for PMAccount);
    sub_21C943938(v22, type metadata accessor for PMAccount.Storage);
    goto LABEL_6;
  }

  v47 = *v22;
  v48 = [*v22 credentialTypes];

  sub_21C943938(v28, type metadata accessor for PMAccount);
  if ((v48 & 2) == 0)
  {
LABEL_6:
    if (sub_21C92AB18())
    {
      goto LABEL_7;
    }

LABEL_10:
    v55 = 1;
    goto LABEL_13;
  }

LABEL_7:
  sub_21C92AE28(v82);
  v49 = sub_21C92D6D0();
  v71 = v43;
  if (v49)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v50 = v73;
    sub_21CB81DB4();

    v51 = v74;
    sub_21C942ED4(v50 + *(v23 + 24), v74, type metadata accessor for PMAccount.Storage);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v53 = v79;
    if (EnumCaseMultiPayload == 1)
    {
      sub_21C943938(v50, type metadata accessor for PMAccount);
      sub_21C943938(v51, type metadata accessor for PMAccount.Storage);
      v54 = 1;
    }

    else
    {
      v67 = *v51;
      v68 = [v67 credentialTypes];

      sub_21C943938(v50, type metadata accessor for PMAccount);
      if ((v68 & 2) != 0)
      {
        v69 = v72;
        sub_21C92AFF0(v72);
        sub_21C716934(v69, v53, &qword_27CDF1B38, &qword_21CBB2508);
        v54 = 0;
      }

      else
      {
        v54 = 1;
      }
    }
  }

  else
  {
    v54 = 1;
    v53 = v79;
  }

  (*(v76 + 56))(v53, v54, 1, v78);
  v56 = v82;
  v57 = v77;
  sub_21C6EDBAC(v82, v77, &qword_27CDF0638, &qword_21CBAF088);
  v58 = v80;
  sub_21C6EDBAC(v53, v80, &qword_27CDF1B40, &unk_21CBB2510);
  v59 = v53;
  v60 = v75;
  sub_21C6EDBAC(v57, v75, &qword_27CDF0638, &qword_21CBAF088);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1B68, &unk_21CBB2540);
  sub_21C6EDBAC(v58, v60 + *(v61 + 48), &qword_27CDF1B40, &unk_21CBB2510);
  sub_21C6EA794(v59, &qword_27CDF1B40, &unk_21CBB2510);
  sub_21C6EA794(v56, &qword_27CDF0638, &qword_21CBAF088);
  sub_21C6EA794(v58, &qword_27CDF1B40, &unk_21CBB2510);
  sub_21C6EA794(v57, &qword_27CDF0638, &qword_21CBAF088);
  sub_21C716934(v60, v37, &qword_27CDF1B48, &qword_21CBB2520);
  v55 = 0;
  v43 = v71;
LABEL_13:
  (*(v85 + 56))(v37, v55, 1, v86);
  v62 = v83;
  sub_21C6EDBAC(v43, v83, &qword_27CDF1B58, &qword_21CBB2530);
  v63 = v84;
  sub_21C6EDBAC(v37, v84, &qword_27CDF1B50, &qword_21CBB2528);
  v64 = v87;
  sub_21C6EDBAC(v62, v87, &qword_27CDF1B58, &qword_21CBB2530);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1B60, &qword_21CBB2538);
  sub_21C6EDBAC(v63, v64 + *(v65 + 48), &qword_27CDF1B50, &qword_21CBB2528);
  sub_21C6EA794(v37, &qword_27CDF1B50, &qword_21CBB2528);
  sub_21C6EA794(v43, &qword_27CDF1B58, &qword_21CBB2530);
  sub_21C6EA794(v63, &qword_27CDF1B50, &qword_21CBB2528);
  return sub_21C6EA794(v62, &qword_27CDF1B58, &qword_21CBB2530);
}

uint64_t sub_21C929058@<X0>(uint64_t a1@<X8>)
{
  v193 = a1;
  *&v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1B78, &qword_21CBBE2D0);
  v2 = *(*(v183 - 8) + 64);
  MEMORY[0x28223BE20](v183);
  v159 = &v157 - v3;
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1B80, &qword_21CBB2550);
  v172 = *(v174 - 8);
  v4 = *(v172 + 64);
  MEMORY[0x28223BE20](v174);
  v158 = &v157 - v5;
  v192 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1B88, &qword_21CBB2558);
  v6 = *(*(v192 - 8) + 64);
  MEMORY[0x28223BE20](v192);
  v173 = &v157 - v7;
  v164 = type metadata accessor for PMCombinedAccountDetailsView();
  v161 = *(v164 - 8);
  v8 = *(v161 + 64);
  MEMORY[0x28223BE20](v164);
  v162 = v9;
  v163 = &v157 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v167 = type metadata accessor for PMPasswordField();
  v10 = *(*(v167 - 8) + 64);
  MEMORY[0x28223BE20](v167);
  v165 = &v157 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1B90, &qword_21CBB2560);
  v168 = *(v169 - 8);
  v12 = *(v168 + 64);
  MEMORY[0x28223BE20](v169);
  v166 = &v157 - v13;
  v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1B98, &qword_21CBB2568);
  v14 = *(*(v188 - 8) + 64);
  MEMORY[0x28223BE20](v188);
  v171 = &v157 - v15;
  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1BA0, &qword_21CBB2570);
  v16 = *(*(v190 - 8) + 64);
  MEMORY[0x28223BE20](v190);
  v191 = &v157 - v17;
  v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1BA8, &qword_21CBB2578);
  v18 = *(*(v185 - 8) + 64);
  MEMORY[0x28223BE20](v185);
  v186 = &v157 - v19;
  v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1BB0, &unk_21CBB2580);
  v20 = *(*(v189 - 8) + 64);
  MEMORY[0x28223BE20](v189);
  v187 = &v157 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBB58, &qword_21CBAF8A0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v180 = &v157 - v24;
  v182 = sub_21CB83ED4();
  v181 = *(v182 - 8);
  v25 = *(v181 + 64);
  MEMORY[0x28223BE20](v182);
  v179 = &v157 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v178 = sub_21CB81024();
  v177 = *(v178 - 8);
  v27 = *(v177 + 64);
  MEMORY[0x28223BE20](v178);
  v175 = &v157 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v176 = &v157 - v30;
  v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1BB8, &qword_21CBBE2B0);
  v31 = *(*(v184 - 8) + 64);
  MEMORY[0x28223BE20](v184);
  v33 = &v157 - v32;
  v34 = type metadata accessor for PMAccount.Storage(0);
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x28223BE20](v34);
  v37 = (&v157 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  v38 = type metadata accessor for PMAccount(0);
  v39 = v38 - 8;
  v40 = *(*(v38 - 8) + 64);
  MEMORY[0x28223BE20](v38);
  v42 = &v157 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v43);
  v160 = &v157 - v44;
  MEMORY[0x28223BE20](v45);
  v47 = &v157 - v46;
  v170 = v1;
  v48 = v1[1];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  sub_21C942ED4(&v47[*(v39 + 32)], v37, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C943938(v47, type metadata accessor for PMAccount);
    sub_21C943938(v37, type metadata accessor for PMAccount.Storage);
  }

  else
  {
    v49 = *v37;
    v50 = [*v37 userIsNeverSaveMarker];

    sub_21C943938(v47, type metadata accessor for PMAccount);
    if (v50)
    {
      v51 = v176;
      sub_21CB81014();
      v174 = sub_21CB81004();
      v173 = v52;
      v53 = *(v177 + 8);
      v54 = v178;
      v53(v51, v178);
      sub_21CB81014();
      v55 = v175;
      sub_21CB81014();
      v177 = sub_21CB80FF4();
      v172 = v56;
      v53(v55, v54);
      v53(v51, v54);
      sub_21CB81014();
      v57 = sub_21CB81004();
      v59 = v58;
      v53(v51, v54);
      v60 = v181;
      v61 = v179;
      v62 = v182;
      (*(v181 + 104))(v179, *MEMORY[0x277CE0A68], v182);
      v63 = *MEMORY[0x277CE0980];
      v64 = sub_21CB83DC4();
      v65 = *(v64 - 8);
      v66 = v180;
      (*(v65 + 104))(v180, v63, v64);
      (*(v65 + 56))(v66, 0, 1, v64);
      v67 = sub_21CB83E24();
      sub_21C6EA794(v66, &qword_27CDEBB58, &qword_21CBAF8A0);
      (*(v60 + 8))(v61, v62);
      LOBYTE(v196) = 0;
      sub_21CB84D44();
      v68 = *(&v198 + 1);
      v33[88] = v198;
      *(v33 + 12) = v68;
      LOBYTE(v196) = 0;
      sub_21CB84D44();
      v69 = *(&v198 + 1);
      v33[104] = v198;
      *(v33 + 14) = v69;
      LOBYTE(v196) = 0;
      sub_21CB84D44();
      v70 = *(&v198 + 1);
      v33[120] = v198;
      *(v33 + 16) = v70;
      LOBYTE(v196) = 0;
      sub_21CB84D44();
      v71 = *(&v198 + 1);
      v33[136] = v198;
      *(v33 + 18) = v71;
      *(v33 + 19) = swift_getKeyPath();
      *(v33 + 20) = 0;
      v33[168] = 0;
      *(v33 + 22) = swift_getKeyPath();
      v33[184] = 0;
      v72 = v183;
      v73 = *(v183 + 116);
      *&v33[v73] = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB998, &qword_21CBA2700);
      swift_storeEnumTagMultiPayload();
      v74 = &v33[v72[30]];
      type metadata accessor for PMCombinedAccountDetailsModel(0);
      sub_21C705F40(&qword_27CDEB520, type metadata accessor for PMCombinedAccountDetailsModel);
      *v74 = sub_21CB823C4();
      v74[1] = v75;
      v76 = v72[31];
      type metadata accessor for PMWiFiDetailsModel();
      sub_21C705F40(&qword_27CDEB9B0, type metadata accessor for PMWiFiDetailsModel);
      sub_21CB821F4();
      *&v33[v72[32]] = 0;
      v77 = &v33[v72[33]];
      *v77 = 0x707954656772616CLL;
      *(v77 + 1) = 0xE900000000000065;
      v78 = v173;
      *v33 = v174;
      *(v33 + 1) = v78;
      v79 = v172;
      *(v33 + 2) = v177;
      *(v33 + 3) = v79;
      *(v33 + 4) = v57;
      *(v33 + 5) = v59;
      *(v33 + 6) = v67;
      v33[56] = 1;
      *(v33 + 57) = 0;
      *(v33 + 8) = 0;
      *(v33 + 9) = 0;
      *(v33 + 20) = 257;
      *(v33 + 42) = 256;
      v33[86] = 0;
      KeyPath = swift_getKeyPath();
      v81 = swift_allocObject();
      *(v81 + 16) = 1;
      v82 = &v33[*(v184 + 36)];
      *v82 = KeyPath;
      v82[1] = sub_21C87E800;
      v82[2] = v81;
      sub_21C6EDBAC(v33, v186, &qword_27CDF1BB8, &qword_21CBBE2B0);
      swift_storeEnumTagMultiPayload();
      sub_21C943548();
      sub_21C94362C();
      v83 = v187;
      sub_21CB83494();
      sub_21C6EDBAC(v83, v191, &qword_27CDF1BB0, &unk_21CBB2580);
      swift_storeEnumTagMultiPayload();
      sub_21C9434BC();
      sub_21C943774();
      sub_21CB83494();
      sub_21C6EA794(v83, &qword_27CDF1BB0, &unk_21CBB2580);
      v84 = v33;
      v85 = &qword_27CDF1BB8;
      v86 = &qword_21CBBE2B0;
      return sub_21C6EA794(v84, v85, v86);
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  if (v198 != 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_21CB81DB4();

    PMAccount.password.getter();
    v123 = v122;
    sub_21C943938(v42, type metadata accessor for PMAccount);
    if (v123)
    {

      swift_getKeyPath();
      swift_getKeyPath();
      sub_21CB81DB4();

      LODWORD(v188) = v198;
      v124 = v176;
      sub_21CB81014();
      v125 = sub_21CB81004();
      v186 = v126;
      v187 = v125;
      v127 = *(v177 + 8);
      v128 = v178;
      v127(v124, v178);
      sub_21CB81014();
      v129 = v175;
      sub_21CB81014();
      v130 = sub_21CB80FF4();
      v185 = v131;
      v127(v129, v128);
      v127(v124, v128);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_21CB81DB4();

      v132 = v198;
      v133 = v181;
      v134 = v179;
      v135 = v182;
      (*(v181 + 104))(v179, *MEMORY[0x277CE0A68], v182);
      v136 = *MEMORY[0x277CE0980];
      v137 = sub_21CB83DC4();
      v138 = *(v137 - 8);
      v139 = v180;
      (*(v138 + 104))(v180, v136, v137);
      (*(v138 + 56))(v139, 0, 1, v137);
      v140 = sub_21CB83E24();
      sub_21C6EA794(v139, &qword_27CDEBB58, &qword_21CBAF8A0);
      (*(v133 + 8))(v134, v135);
      LOBYTE(v196) = 0;
      sub_21CB84D44();
      v141 = *(&v198 + 1);
      v142 = v159;
      v159[88] = v198;
      *(v142 + 96) = v141;
      LOBYTE(v196) = 0;
      sub_21CB84D44();
      v143 = *(&v198 + 1);
      *(v142 + 104) = v198;
      *(v142 + 112) = v143;
      LOBYTE(v196) = 0;
      sub_21CB84D44();
      v144 = *(&v198 + 1);
      *(v142 + 120) = v198;
      *(v142 + 128) = v144;
      LOBYTE(v196) = 0;
      sub_21CB84D44();
      v145 = *(&v198 + 1);
      *(v142 + 136) = v198;
      *(v142 + 144) = v145;
      *(v142 + 152) = swift_getKeyPath();
      *(v142 + 160) = 0;
      *(v142 + 168) = 0;
      *(v142 + 176) = swift_getKeyPath();
      *(v142 + 184) = 0;
      v146 = v183;
      v147 = *(v183 + 116);
      *(v142 + v147) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB998, &qword_21CBA2700);
      swift_storeEnumTagMultiPayload();
      v148 = (v142 + v146[30]);
      type metadata accessor for PMCombinedAccountDetailsModel(0);
      sub_21C705F40(&qword_27CDEB520, type metadata accessor for PMCombinedAccountDetailsModel);
      *v148 = sub_21CB823C4();
      v148[1] = v149;
      v150 = v146[31];
      type metadata accessor for PMWiFiDetailsModel();
      sub_21C705F40(&qword_27CDEB9B0, type metadata accessor for PMWiFiDetailsModel);
      sub_21CB821F4();
      *(v142 + v146[32]) = 0;
      v151 = (v142 + v146[33]);
      *v151 = 0x707954656772616CLL;
      v151[1] = 0xE900000000000065;
      v152 = v186;
      *v142 = v187;
      *(v142 + 8) = v152;
      v153 = v185;
      *(v142 + 16) = v130;
      *(v142 + 24) = v153;
      *(v142 + 32) = v132;
      *(v142 + 48) = v140;
      *(v142 + 56) = 257;
      *(v142 + 58) = v188;
      *(v142 + 64) = 0;
      *(v142 + 72) = 0;
      *(v142 + 80) = 257;
      *(v142 + 84) = 256;
      *(v142 + 86) = 0;
      sub_21C6EADEC(&qword_27CDF1BD0, &qword_27CDF1B78, &qword_21CBBE2D0);
      v154 = v158;
      sub_21CB845C4();
      sub_21C6EA794(v142, &qword_27CDF1B78, &qword_21CBBE2D0);
      v155 = v173;
      sub_21C716934(v154, v173, &qword_27CDF1B80, &qword_21CBB2550);
      v156 = 0;
    }

    else
    {
      v156 = 1;
      v155 = v173;
    }

    (*(v172 + 56))(v155, v156, 1, v174);
    sub_21C6EDBAC(v155, v191, &qword_27CDF1B88, &qword_21CBB2558);
    swift_storeEnumTagMultiPayload();
    sub_21C9434BC();
    sub_21C943774();
    sub_21CB83494();
    v84 = v155;
    v85 = &qword_27CDF1B88;
    v86 = &qword_21CBB2558;
    return sub_21C6EA794(v84, v85, v86);
  }

  v87 = v170;
  v88 = *v170;
  type metadata accessor for PMCombinedAccountDetailsModel(0);
  sub_21C705F40(&qword_27CDEB520, type metadata accessor for PMCombinedAccountDetailsModel);
  sub_21CB82684();
  swift_getKeyPath();
  sub_21CB82694();

  v183 = v198;
  v182 = v199;
  v181 = v200;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  LODWORD(v180) = v196;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v89 = v196;
  swift_getKeyPath();
  swift_getKeyPath();
  v90 = v160;
  sub_21CB81DB4();

  v91 = PMAccount.userVisibleDomain.getter();
  v93 = v92;
  sub_21C943938(v90, type metadata accessor for PMAccount);
  if (v93)
  {
    v94 = v91;
  }

  else
  {
    v94 = 0;
  }

  if (v93)
  {
    v95 = v93;
  }

  else
  {
    v95 = 0xE000000000000000;
  }

  v96 = v163;
  sub_21C942ED4(v87, v163, type metadata accessor for PMCombinedAccountDetailsView);
  v97 = (*(v161 + 80) + 16) & ~*(v161 + 80);
  v98 = swift_allocObject();
  sub_21C943454(v96, v98 + v97, type metadata accessor for PMCombinedAccountDetailsView);
  v99 = v167;
  v100 = *(v167 + 44);
  v101 = swift_getKeyPath();
  v102 = v165;
  *&v165[v100] = v101;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB998, &qword_21CBA2700);
  swift_storeEnumTagMultiPayload();
  v103 = v99[12];
  *(v102 + v103) = swift_getKeyPath();
  v104 = v102 + v99[13];
  LOBYTE(v194) = 0;
  sub_21CB84D44();
  v105 = *(&v196 + 1);
  *v104 = v196;
  *(v104 + 8) = v105;
  v106 = v102 + v99[14];
  v194 = 0;
  v195 = 0xE000000000000000;
  sub_21CB84D44();
  v107 = v197;
  *v106 = v196;
  *(v106 + 16) = v107;
  v108 = v102 + v99[15];
  v194 = 0;
  v195 = 0xE000000000000000;
  sub_21CB84D44();
  v109 = v197;
  *v108 = v196;
  *(v108 + 16) = v109;
  *v102 = v183;
  v110 = v181;
  *(v102 + 16) = v182;
  *(v102 + 24) = v110;
  *(v102 + 32) = v180;
  *(v102 + 33) = 0;
  *(v102 + 34) = v89;
  *(v102 + 35) = 0;
  *(v102 + 40) = v94;
  *(v102 + 48) = v95;
  *(v102 + 56) = sub_21C9438E0;
  *(v102 + 64) = v98;
  v111 = v87 + *(v164 + 60);
  v112 = *v111;
  v113 = *(v111 + 8);
  LOBYTE(v111) = *(v111 + 16);
  LOBYTE(v198) = v112;
  *(&v198 + 1) = v113;
  LOBYTE(v199) = v111;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1640, &qword_21CBB1A60);
  sub_21CB81F74();
  v198 = v196;
  LOBYTE(v199) = v197;
  LOBYTE(v196) = 2;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1438, &qword_21CBB14B8);
  v115 = sub_21C705F40(&qword_27CDEDFB8, type metadata accessor for PMPasswordField);
  v116 = sub_21C940D0C();
  v117 = v166;
  sub_21CB84824();

  sub_21C943938(v102, type metadata accessor for PMPasswordField);
  *&v198 = v99;
  *(&v198 + 1) = v114;
  v199 = v115;
  v200 = v116;
  swift_getOpaqueTypeConformance2();
  v118 = v171;
  v119 = v169;
  sub_21CB845C4();
  (*(v168 + 8))(v117, v119);
  sub_21C6EDBAC(v118, v186, &qword_27CDF1B98, &qword_21CBB2568);
  swift_storeEnumTagMultiPayload();
  sub_21C943548();
  sub_21C94362C();
  v120 = v187;
  sub_21CB83494();
  sub_21C6EDBAC(v120, v191, &qword_27CDF1BB0, &unk_21CBB2580);
  swift_storeEnumTagMultiPayload();
  sub_21C9434BC();
  sub_21C943774();
  sub_21CB83494();
  sub_21C6EA794(v120, &qword_27CDF1BB0, &unk_21CBB2580);
  return sub_21C6EA794(v118, &qword_27CDF1B98, &qword_21CBB2568);
}

id sub_21C92AB18()
{
  v1 = type metadata accessor for PMAccount.Storage(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = (&v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v7 = (&v21 - v6);
  v8 = type metadata accessor for PMAccount(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v21 - v13;
  v15 = *(v0 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  sub_21C942ED4(&v14[*(v8 + 24)], v7, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C943938(v14, type metadata accessor for PMAccount);
    sub_21C943938(v7, type metadata accessor for PMAccount.Storage);
  }

  else
  {
    v16 = *v7;
    v17 = [*v7 userIsNeverSaveMarker];

    sub_21C943938(v14, type metadata accessor for PMAccount);
    if (v17)
    {
      return 0;
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  sub_21C942ED4(&v11[*(v8 + 24)], v4, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C943938(v11, type metadata accessor for PMAccount);
    sub_21C943938(v4, type metadata accessor for PMAccount.Storage);
    return 0;
  }

  else
  {
    v19 = *v4;
    v20 = [v19 hasValidWebsite];

    sub_21C943938(v11, type metadata accessor for PMAccount);
    return v20;
  }
}

uint64_t sub_21C92AE28@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for PMChangePasswordOnWebsiteLink();
  v14 = *(v3 - 1);
  v4 = *(v14 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_21C92AB18())
  {
    v7 = *(v1 + 8);
    swift_getKeyPath();
    swift_getKeyPath();
    v8 = &v6[v3[5]];
    sub_21CB81DB4();

    *v6 = swift_getKeyPath();
    *(v6 + 1) = 0;
    v6[16] = 0;
    v9 = &v6[v3[7]];
    v10 = &v6[v3[9]];
    v6[v3[6]] = 0;
    *v9 = 0;
    *(v9 + 1) = 0;
    v6[v3[8]] = 0;
    *v10 = 0;
    *(v10 + 1) = 0;
    sub_21C943454(v6, a1, type metadata accessor for PMChangePasswordOnWebsiteLink);
    return (*(v14 + 56))(a1, 0, 1, v3);
  }

  else
  {
    v12 = *(v14 + 56);

    return v12(a1, 1, 1, v3);
  }
}

uint64_t sub_21C92AFF0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v59 = a1;
  v3 = type metadata accessor for PMCombinedAccountDetailsView();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1B70, &unk_21CBC2090);
  v57 = *(v58 - 8);
  v7 = *(v57 + 64);
  MEMORY[0x28223BE20](v58);
  v9 = &v50 - v8;
  sub_21C942ED4(v2, v6, type metadata accessor for PMCombinedAccountDetailsView);
  v10 = *(v4 + 80);
  v11 = (v10 + 16) & ~v10;
  v55 = v5;
  v53 = v10;
  v12 = swift_allocObject();
  v54 = v11;
  sub_21C943454(v6, v12 + v11, type metadata accessor for PMCombinedAccountDetailsView);
  v61 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC150, &unk_21CBA4F60);
  sub_21C943E28(&qword_27CDEC148, &qword_27CDEC150, &unk_21CBA4F60);
  v56 = v9;
  sub_21CB84DA4();
  v52 = sub_21C92765C();
  v51 = v13;
  v14 = *v2;
  v15 = v2[1];
  type metadata accessor for PMCombinedAccountDetailsModel(0);
  sub_21C705F40(&qword_27CDEB520, type metadata accessor for PMCombinedAccountDetailsModel);
  sub_21CB82684();
  swift_getKeyPath();
  sub_21CB82694();

  v17 = v74;
  v16 = v75;
  v18 = v76;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v60 = v71;
  swift_getKeyPath();
  v71 = v17;
  v72 = v16;
  v73 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF16F0, &qword_21CBB1C78);
  sub_21CB84F44();

  v19 = v68;
  v20 = v69;
  v21 = v70;

  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v22 = v65;
  if (*(v65 + 16) && (v23 = sub_21CB10C54(0), (v24 & 1) != 0))
  {
    v25 = *(*(v22 + 56) + 8 * v23);
    v26 = v25;
  }

  else
  {
    v25 = 0;
  }

  v28 = v51;
  v29 = 0xE100000000000000;
  if (v51)
  {
    v29 = v51;
  }

  v51 = v29;
  v30 = 63;
  if (v28)
  {
    v30 = v52;
  }

  v52 = v30;
  MEMORY[0x28223BE20](v27);
  *(&v50 - 2) = v25;
  swift_getKeyPath();
  v65 = v19;
  v66 = v20;
  v67 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1700, &qword_21CBB1CE0);
  sub_21CB84F44();

  v31 = v62;
  v50 = v63;
  v32 = v64;

  sub_21C942ED4(v2, v6, type metadata accessor for PMCombinedAccountDetailsView);
  v33 = v54;
  v34 = swift_allocObject();
  sub_21C943454(v6, v34 + v33, type metadata accessor for PMCombinedAccountDetailsView);
  sub_21C942ED4(v2, v6, type metadata accessor for PMCombinedAccountDetailsView);
  v35 = swift_allocObject();
  sub_21C943454(v6, v35 + v33, type metadata accessor for PMCombinedAccountDetailsView);
  v36 = swift_allocObject();
  *(v36 + 16) = sub_21C9440C4;
  *(v36 + 24) = v34;
  v37 = swift_allocObject();
  *(v37 + 16) = sub_21C9440C8;
  *(v37 + 24) = v35;
  KeyPath = swift_getKeyPath();
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1B38, &qword_21CBB2508);
  v40 = v59;
  v41 = (v59 + *(v39 + 36));
  *v41 = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
  swift_storeEnumTagMultiPayload();
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1708, &unk_21CBB1CE8);
  *(v41 + v42[18]) = 0;
  v43 = (v41 + v42[15]);
  v44 = v51;
  *v43 = v52;
  v43[1] = v44;
  v45 = v41 + v42[16];
  v46 = v50;
  *v45 = v31;
  *(v45 + 1) = v46;
  v45[16] = v32;
  *(v41 + v42[17]) = 2;
  *(v41 + v42[19]) = 2;
  v47 = (v41 + v42[20]);
  *v47 = sub_21C9440B4;
  v47[1] = v36;
  v48 = (v41 + v42[21]);
  *v48 = sub_21C9440CC;
  v48[1] = v37;
  return (*(v57 + 32))(v40, v56, v58);
}

uint64_t sub_21C92B728@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a2;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1A20, &qword_21CBB2340);
  v3 = *(*(v63 - 8) + 64);
  MEMORY[0x28223BE20](v63);
  v53 = &v52 - v4;
  v55 = type metadata accessor for PMAccount.Storage(0);
  v5 = *(*(v55 - 8) + 64);
  MEMORY[0x28223BE20](v55);
  v54 = (&v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1AB0, &qword_21CBB23B8);
  v7 = *(*(v60 - 8) + 64);
  MEMORY[0x28223BE20](v60);
  v62 = &v52 - v8;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1A10, &qword_21CBB2338);
  v9 = *(*(v61 - 8) + 64);
  MEMORY[0x28223BE20](v61);
  v57 = (&v52 - v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1AB8, &qword_21CBB23C0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v58 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v59 = &v52 - v15;
  v16 = type metadata accessor for PMCombinedAccountDetailsView();
  v56 = *(v16 - 8);
  v17 = *(v56 + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = type metadata accessor for PMAccount(0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v52 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v52 - v23;
  MEMORY[0x28223BE20](v25);
  v27 = &v52 - v26;
  v28 = a1;
  v29 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v30 = v65;
  if (!v65)
  {
    v43 = v54;
    v59 = v28;
    v42 = v64;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_21CB81DB4();

    PMAccount.password.getter();
    v45 = v44;
    sub_21C943938(v27, type metadata accessor for PMAccount);
    if (v45)
    {

      swift_getKeyPath();
      swift_getKeyPath();
      sub_21CB81DB4();

      sub_21C942ED4(&v21[*(v18 + 24)], v43, type metadata accessor for PMAccount.Storage);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_21C943938(v21, type metadata accessor for PMAccount);
        sub_21C943938(v43, type metadata accessor for PMAccount.Storage);
        v46 = v62;
        v47 = v53;
LABEL_8:
        sub_21C92C9A0(v47);
        sub_21C6EDBAC(v47, v46, &qword_27CDF1A20, &qword_21CBB2340);
        swift_storeEnumTagMultiPayload();
        sub_21C6EADEC(&qword_27CDF1A08, &qword_27CDF1A10, &qword_21CBB2338);
        sub_21C6EADEC(&qword_27CDF1A18, &qword_27CDF1A20, &qword_21CBB2340);
        sub_21CB83494();
        sub_21C6EA794(v47, &qword_27CDF1A20, &qword_21CBB2340);
        v41 = 0;
        goto LABEL_9;
      }

      v48 = *v43;
      v49 = [*v43 userIsNeverSaveMarker];

      sub_21C943938(v21, type metadata accessor for PMAccount);
      v46 = v62;
      v47 = v53;
      if ((v49 & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    v41 = 1;
    goto LABEL_9;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  sub_21C943938(v24, type metadata accessor for PMAccount);
  sub_21C942ED4(v28, &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMCombinedAccountDetailsView);
  v31 = (*(v56 + 80) + 16) & ~*(v56 + 80);
  v32 = swift_allocObject();
  sub_21C943454(&v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), v32 + v31, type metadata accessor for PMCombinedAccountDetailsView);
  v33 = v30;
  v34 = v59;
  sub_21C92BFAC(v33, v59);
  v35 = v58;
  sub_21C6EDBAC(v34, v58, &qword_27CDF1AB8, &qword_21CBB23C0);
  v36 = v57;
  *v57 = v33;
  *(v36 + 8) = sub_21C9431E4;
  *(v36 + 16) = v32;
  *(v36 + 24) = 0;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1AC0, &qword_21CBB23C8);
  sub_21C6EDBAC(v35, v36 + *(v37 + 48), &qword_27CDF1AB8, &qword_21CBB23C0);
  v38 = v33;
  swift_retain_n();
  v39 = v38;
  sub_21C6EA794(v35, &qword_27CDF1AB8, &qword_21CBB23C0);

  sub_21C6EDBAC(v36, v62, &qword_27CDF1A10, &qword_21CBB2338);
  swift_storeEnumTagMultiPayload();
  sub_21C6EADEC(&qword_27CDF1A08, &qword_27CDF1A10, &qword_21CBB2338);
  sub_21C6EADEC(&qword_27CDF1A18, &qword_27CDF1A20, &qword_21CBB2340);
  v40 = v64;
  sub_21CB83494();

  sub_21C6EA794(v36, &qword_27CDF1A10, &qword_21CBB2338);
  sub_21C6EA794(v34, &qword_27CDF1AB8, &qword_21CBB23C0);
  v41 = 0;
  v42 = v40;
LABEL_9:
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1A00, &qword_21CBB2330);
  return (*(*(v50 - 8) + 56))(v42, v41, 1, v50);
}

uint64_t sub_21C92BFAC@<X0>(_BYTE *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = v2;
  v88 = a1;
  v95 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1AC8, &qword_21CBB23D0);
  v5 = *(v4 - 8);
  v86 = (v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v96 = &v79[-v7];
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1AD0, &qword_21CBB23D8);
  v8 = *(*(v87 - 8) + 64);
  MEMORY[0x28223BE20](v87);
  v94 = &v79[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v89 = &v79[-v11];
  MEMORY[0x28223BE20](v12);
  v93 = &v79[-v13];
  v14 = type metadata accessor for PMCombinedAccountDetailsView();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v79[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE40, &unk_21CBA8200);
  v91 = *(v92 - 8);
  v18 = *(v91 + 64);
  MEMORY[0x28223BE20](v92);
  v90 = &v79[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v20);
  v22 = &v79[-v21];
  sub_21C942ED4(v3, v17, type metadata accessor for PMCombinedAccountDetailsView);
  v23 = *(v15 + 80);
  v24 = (v23 + 16) & ~v23;
  v25 = v24 + v16;
  v26 = (v24 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  sub_21C943454(v17, v27 + v24, type metadata accessor for PMCombinedAccountDetailsView);
  v28 = v88;
  *(v27 + v26) = v88;
  v29 = v28;
  v88 = v22;
  sub_21CB84DA4();
  sub_21C942ED4(v3, v17, type metadata accessor for PMCombinedAccountDetailsView);
  v84 = v23;
  v30 = v17;
  v83 = v25;
  v31 = swift_allocObject();
  v85 = v24;
  sub_21C943454(v17, v31 + v24, type metadata accessor for PMCombinedAccountDetailsView);
  v32 = v96;
  sub_21CB84DA4();
  *&v32[*(v86 + 11)] = sub_21CB84A64();
  v82 = sub_21C92765C();
  v81 = v33;
  v34 = *v3;
  v35 = v3[1];
  v86 = v3;
  type metadata accessor for PMCombinedAccountDetailsModel(0);
  sub_21C705F40(&qword_27CDEB520, type metadata accessor for PMCombinedAccountDetailsModel);
  sub_21CB82684();
  swift_getKeyPath();
  sub_21CB82694();

  v37 = v110;
  v36 = v111;
  v38 = v112;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v97 = v107;
  swift_getKeyPath();
  v107 = v37;
  v108 = v36;
  v109 = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF16F0, &qword_21CBB1C78);
  sub_21CB84F44();

  v39 = v104;
  v40 = v105;
  v41 = v106;

  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v42 = v101;
  if (*(v101 + 16) && (v43 = sub_21CB10C54(1), (v44 & 1) != 0))
  {
    v45 = *(*(v42 + 56) + 8 * v43);
    v46 = v45;
  }

  else
  {
    v45 = 0;
  }

  v48 = v81;
  v49 = 0xE100000000000000;
  if (v81)
  {
    v49 = v81;
  }

  v81 = v49;
  v50 = 63;
  if (v48)
  {
    v50 = v82;
  }

  v82 = v50;
  MEMORY[0x28223BE20](v47);
  *&v79[-16] = v45;
  swift_getKeyPath();
  v101 = v39;
  v102 = v40;
  v103 = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1700, &qword_21CBB1CE0);
  sub_21CB84F44();

  v51 = v98;
  v52 = v99;
  v80 = v100;

  v53 = v86;
  sub_21C942ED4(v86, v30, type metadata accessor for PMCombinedAccountDetailsView);
  v54 = swift_allocObject();
  v55 = v85;
  sub_21C943454(v30, v54 + v85, type metadata accessor for PMCombinedAccountDetailsView);
  sub_21C942ED4(v53, v30, type metadata accessor for PMCombinedAccountDetailsView);
  v56 = swift_allocObject();
  sub_21C943454(v30, v56 + v55, type metadata accessor for PMCombinedAccountDetailsView);
  v57 = swift_allocObject();
  *(v57 + 16) = sub_21C9440C4;
  *(v57 + 24) = v54;
  v58 = swift_allocObject();
  *(v58 + 16) = sub_21C9440C8;
  *(v58 + 24) = v56;
  KeyPath = swift_getKeyPath();
  v60 = v89;
  v61 = &v89[*(v87 + 36)];
  *v61 = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
  swift_storeEnumTagMultiPayload();
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1708, &unk_21CBB1CE8);
  *(v61 + v62[18]) = 0;
  v63 = (v61 + v62[15]);
  v64 = v81;
  *v63 = v82;
  v63[1] = v64;
  v65 = v61 + v62[16];
  *v65 = v51;
  *(v65 + 1) = v52;
  v65[16] = v80;
  *(v61 + v62[17]) = 2;
  *(v61 + v62[19]) = 2;
  v66 = (v61 + v62[20]);
  *v66 = sub_21C8E1174;
  v66[1] = v57;
  v67 = (v61 + v62[21]);
  *v67 = sub_21C943278;
  v67[1] = v58;
  sub_21C716934(v96, v60, &qword_27CDF1AC8, &qword_21CBB23D0);
  v68 = v93;
  sub_21C716934(v60, v93, &qword_27CDF1AD0, &qword_21CBB23D8);
  v69 = v91;
  v70 = *(v91 + 16);
  v71 = v90;
  v72 = v88;
  v73 = v92;
  v70(v90, v88, v92);
  v74 = v94;
  sub_21C6EDBAC(v68, v94, &qword_27CDF1AD0, &qword_21CBB23D8);
  v75 = v95;
  v70(v95, v71, v73);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1AD8, &unk_21CBB23E0);
  sub_21C6EDBAC(v74, &v75[*(v76 + 48)], &qword_27CDF1AD0, &qword_21CBB23D8);
  sub_21C6EA794(v68, &qword_27CDF1AD0, &qword_21CBB23D8);
  v77 = *(v69 + 8);
  v77(v72, v73);
  sub_21C6EA794(v74, &qword_27CDF1AD0, &qword_21CBB23D8);
  return (v77)(v71, v73);
}

uint64_t sub_21C92C9A0@<X0>(uint64_t a1@<X8>)
{
  v43 = a1;
  v2 = type metadata accessor for PMCombinedAccountDetailsView();
  v39 = *(v2 - 8);
  v38 = *(v39 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v37 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE40, &unk_21CBA8200);
  v5 = *(v4 - 8);
  v41 = v4;
  v42 = v5;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v36 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1B20, &qword_21CBB24F0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v40 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v36 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF17F8, &qword_21CBB1EA0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v36 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1B28, &qword_21CBB24F8);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = &v36 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = &v36 - v25;
  v44 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1838, &unk_21CBB1F20);
  v27 = sub_21CB839C4();
  v45 = MEMORY[0x277CE0BD8];
  v46 = v27;
  v47 = MEMORY[0x277CE0BC8];
  v48 = MEMORY[0x277CE0758];
  swift_getOpaqueTypeConformance2();
  sub_21CB825D4();
  sub_21C942698();
  sub_21CB845C4();
  (*(v16 + 8))(v19, v15);
  v28 = v37;
  sub_21C942ED4(v36, v37, type metadata accessor for PMCombinedAccountDetailsView);
  v29 = (*(v39 + 80) + 16) & ~*(v39 + 80);
  v30 = swift_allocObject();
  sub_21C943454(v28, v30 + v29, type metadata accessor for PMCombinedAccountDetailsView);
  sub_21CB84DA4();
  sub_21C6EADEC(&qword_27CDEBE50, &qword_27CDEBE40, &unk_21CBA8200);
  v31 = v41;
  sub_21CB845C4();
  (*(v42 + 8))(v8, v31);
  sub_21C6EDBAC(v26, v23, &qword_27CDF1B28, &qword_21CBB24F8);
  v32 = v40;
  sub_21C6EDBAC(v14, v40, &qword_27CDF1B20, &qword_21CBB24F0);
  v33 = v43;
  sub_21C6EDBAC(v23, v43, &qword_27CDF1B28, &qword_21CBB24F8);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1B30, &qword_21CBB2500);
  sub_21C6EDBAC(v32, v33 + *(v34 + 48), &qword_27CDF1B20, &qword_21CBB24F0);
  sub_21C6EA794(v14, &qword_27CDF1B20, &qword_21CBB24F0);
  sub_21C6EA794(v26, &qword_27CDF1B28, &qword_21CBB24F8);
  sub_21C6EA794(v32, &qword_27CDF1B20, &qword_21CBB24F0);
  return sub_21C6EA794(v23, &qword_27CDF1B28, &qword_21CBB24F8);
}

uint64_t sub_21C92CF3C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v72 = a2;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1A78, &qword_21CBB2388);
  v68 = *(v70 - 8);
  v3 = *(v68 + 64);
  MEMORY[0x28223BE20](v70);
  v62 = (&v62 - v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1A80, &qword_21CBB2390);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v71 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v67 = &v62 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1A88, &qword_21CBB2398);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v69 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v62 - v14;
  v16 = type metadata accessor for PMAccount.Storage(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = (&v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = type metadata accessor for PMAccount(0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  v23 = &v62 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1A90, &qword_21CBB23A0);
  v65 = *(v24 - 8);
  v66 = v24;
  v25 = *(v65 + 64);
  MEMORY[0x28223BE20](v24);
  v64 = &v62 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v29 = &v62 - v28;
  v30 = a1[1];

  if (sub_21C92D6D0())
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_21CB81DB4();

    sub_21C942ED4(&v23[*(v20 + 24)], v19, type metadata accessor for PMAccount.Storage);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_21C943938(v23, type metadata accessor for PMAccount);
      sub_21C943938(v19, type metadata accessor for PMAccount.Storage);
      v31 = 1;
    }

    else
    {
      v32 = *v19;
      v33 = [*v19 userIsNeverSaveMarker];

      sub_21C943938(v23, type metadata accessor for PMAccount);
      v31 = v33 ^ 1;
    }
  }

  else
  {
    v31 = 0;
  }

  LOBYTE(v73[0]) = 0;
  sub_21CB84D44();
  v34 = v74;
  v35 = v76;
  KeyPath = swift_getKeyPath();
  type metadata accessor for PMCombinedAccountDetailsModel(0);
  sub_21C705F40(&qword_27CDEB520, type metadata accessor for PMCombinedAccountDetailsModel);
  v37 = sub_21CB82674();
  v84 = 0;
  v74 = v31;
  *v75 = v86[0];
  *&v75[3] = *(v86 + 3);
  v76 = v37;
  v77 = v38;
  v78 = v34;
  *v79 = *v85;
  *&v79[3] = *&v85[3];
  v80 = v35;
  v81 = KeyPath;
  v82 = 0;
  v83 = 0;
  strcpy(v73, "editWebsites");
  HIBYTE(v73[6]) = 0;
  v73[7] = -5120;
  v39 = *(a1 + *(type metadata accessor for PMCombinedAccountDetailsView() + 56));
  sub_21CB852C4();
  sub_21C943190();
  sub_21CB845E4();

  sub_21C92D9F4(v15);
  if (sub_21C92FB9C())
  {
    v40 = sub_21CB85214();
    v41 = v62;
    *v62 = v40;
    v41[1] = v42;
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1AA8, &qword_21CBB23B0);
    sub_21C937180(a1, v41 + *(v43 + 44));
    v44 = sub_21CB832C4();
    v45 = v70;
    v46 = (v41 + *(v70 + 36));
    *v46 = v44;
    v46[1] = sub_21C7902AC;
    v46[2] = 0;
    v47 = v41;
    v48 = v67;
    sub_21C716934(v47, v67, &qword_27CDF1A78, &qword_21CBB2388);
    v49 = 0;
  }

  else
  {
    v49 = 1;
    v48 = v67;
    v45 = v70;
  }

  (*(v68 + 56))(v48, v49, 1, v45);
  v51 = v64;
  v50 = v65;
  v52 = *(v65 + 16);
  v63 = v29;
  v53 = v66;
  v52(v64, v29, v66);
  v54 = v15;
  v55 = v15;
  v56 = v69;
  sub_21C6EDBAC(v55, v69, &qword_27CDF1A88, &qword_21CBB2398);
  v57 = v71;
  sub_21C6EDBAC(v48, v71, &qword_27CDF1A80, &qword_21CBB2390);
  v58 = v72;
  v52(v72, v51, v53);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1AA0, &qword_21CBB23A8);
  sub_21C6EDBAC(v56, v58 + *(v59 + 48), &qword_27CDF1A88, &qword_21CBB2398);
  sub_21C6EDBAC(v57, v58 + *(v59 + 64), &qword_27CDF1A80, &qword_21CBB2390);
  sub_21C6EA794(v48, &qword_27CDF1A80, &qword_21CBB2390);
  sub_21C6EA794(v54, &qword_27CDF1A88, &qword_21CBB2398);
  v60 = *(v50 + 8);
  v60(v63, v53);
  sub_21C6EA794(v57, &qword_27CDF1A80, &qword_21CBB2390);
  sub_21C6EA794(v56, &qword_27CDF1A88, &qword_21CBB2398);
  return (v60)(v51, v53);
}

uint64_t sub_21C92D6D0()
{
  v1 = type metadata accessor for PMAccount.Storage(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = (&v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for PMAccount(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21CB82F84();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v0 + 88);
  if (*(v0 + 96) == 1)
  {
    if (v15)
    {
      return 0;
    }
  }

  else
  {
    v21 = v12;

    sub_21CB85B04();
    v16 = sub_21CB83C94();
    sub_21CB81C14();

    sub_21CB82F74();
    swift_getAtKeyPath();
    sub_21C7025C4(v15, 0);
    (*(v10 + 8))(v14, v21);
    if (v22)
    {
      return 0;
    }
  }

  if ((sub_21C938D40() & 1) == 0)
  {
    v18 = *(v0 + 8);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_21CB81DB4();

    sub_21C942ED4(&v8[*(v5 + 24)], v4, type metadata accessor for PMAccount.Storage);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_21C943938(v8, type metadata accessor for PMAccount);
      sub_21C943938(v4, type metadata accessor for PMAccount.Storage);
    }

    else
    {
      v19 = *v4;
      v20 = [v19 canUserEditSavedAccount];

      sub_21C943938(v8, type metadata accessor for PMAccount);
      if (!v20)
      {
        return 0;
      }
    }

    return 1;
  }

  return 0;
}

uint64_t sub_21C92D9F4@<X0>(uint64_t a1@<X8>)
{
  v250 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF17C0, &qword_21CBB1E68);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v249 = &v205 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v248 = &v205 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF17C8, &qword_21CBB1E70);
  v246 = *(v7 - 8);
  v247 = v7;
  v8 = *(v246 + 64);
  MEMORY[0x28223BE20](v7);
  v237 = &v205 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF17D0, &qword_21CBB1E78);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v236 = &v205 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v235 = &v205 - v14;
  v226 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF17D8, &qword_21CBB1E80);
  v15 = *(*(v226 - 8) + 64);
  MEMORY[0x28223BE20](v226);
  v225 = &v205 - v16;
  v231 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF17E0, &qword_21CBB1E88);
  v17 = *(*(v231 - 8) + 64);
  MEMORY[0x28223BE20](v231);
  v227 = &v205 - v18;
  v229 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF17E8, &qword_21CBB1E90);
  v19 = *(*(v229 - 8) + 64);
  MEMORY[0x28223BE20](v229);
  v230 = &v205 - v20;
  v205 = type metadata accessor for PMAccount.MockData(0);
  v21 = *(*(v205 - 8) + 64);
  MEMORY[0x28223BE20](v205);
  v206 = &v205 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v215 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  v214 = *(v215 - 8);
  v23 = *(v214 + 64);
  MEMORY[0x28223BE20](v215);
  v212 = &v205 - v24;
  v25 = type metadata accessor for PMMoveAccountToGroupPicker.Selection(0);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v213 = &v205 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v224 = sub_21CB81024();
  v223 = *(v224 - 8);
  v28 = *(v223 + 64);
  MEMORY[0x28223BE20](v224);
  v209 = &v205 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v222 = &v205 - v31;
  v221 = type metadata accessor for PMMoveAccountToGroupPicker(0);
  v32 = *(*(v221 - 8) + 64);
  MEMORY[0x28223BE20](v221);
  v216 = &v205 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v217 = &v205 - v35;
  v218 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF17F0, &qword_21CBB1E98);
  v36 = *(*(v218 - 8) + 64);
  MEMORY[0x28223BE20](v218);
  v220 = &v205 - v37;
  v240 = type metadata accessor for PMAdapativeStackLabeledContentStyle();
  v38 = *(*(v240 - 8) + 64);
  MEMORY[0x28223BE20](v240);
  v239 = (&v205 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF17F8, &qword_21CBB1EA0);
  v242 = *(v40 - 8);
  v243 = v40;
  v41 = *(v242 + 64);
  MEMORY[0x28223BE20](v40);
  v241 = &v205 - v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1800, &qword_21CBB6960);
  v251 = *(v43 - 8);
  v252 = v43;
  v44 = *(v251 + 64);
  MEMORY[0x28223BE20](v43);
  v238 = &v205 - v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7670, &unk_21CBAA8F0);
  v47 = *(*(v46 - 8) + 64);
  MEMORY[0x28223BE20](v46 - 8);
  v49 = &v205 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v50);
  v207 = &v205 - v51;
  v228 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1808, &qword_21CBB1EA8);
  v52 = *(*(v228 - 8) + 64);
  MEMORY[0x28223BE20](v228);
  v219 = &v205 - v53;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1810, &qword_21CBB1EB0);
  v55 = *(*(v54 - 8) + 64);
  MEMORY[0x28223BE20](v54 - 8);
  v234 = &v205 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v57);
  v233 = &v205 - v58;
  v59 = type metadata accessor for PMAccount.Storage(0);
  v60 = *(*(v59 - 8) + 64);
  MEMORY[0x28223BE20](v59);
  v210 = (&v205 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v62);
  v64 = (&v205 - v63);
  MEMORY[0x28223BE20](v65);
  v67 = (&v205 - v66);
  v68 = type metadata accessor for PMAccount(0);
  v211 = *(v68 - 8);
  v69 = *(v211 + 64);
  MEMORY[0x28223BE20](v68);
  v244 = &v205 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v71);
  v208 = &v205 - v72;
  MEMORY[0x28223BE20](v73);
  v75 = &v205 - v74;
  MEMORY[0x28223BE20](v76);
  v78 = &v205 - v77;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1818, &qword_21CBB1EB8);
  v80 = *(*(v79 - 8) + 64);
  MEMORY[0x28223BE20](v79 - 8);
  v245 = &v205 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v82);
  v254 = v1;
  v255 = &v205 - v83;
  v84 = *(v1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  v253 = v84;
  sub_21CB81DB4();

  v232 = v68;
  sub_21C942ED4(&v78[*(v68 + 24)], v67, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C943938(v78, type metadata accessor for PMAccount);
    sub_21C943938(v67, type metadata accessor for PMAccount.Storage);
  }

  else
  {
    v85 = *v67;
    v86 = [*v67 userIsNeverSaveMarker];

    sub_21C943938(v78, type metadata accessor for PMAccount);
    if (v86)
    {
LABEL_8:
      v90 = 1;
      v91 = v252;
      v92 = v255;
      goto LABEL_31;
    }
  }

  v87 = v254;
  v88 = *(v254 + 40);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v89 = *(v258 + 16);

  if (!v89)
  {
    goto LABEL_8;
  }

  if (sub_21C92D6D0())
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_21CB81DB4();

    sub_21C942ED4(&v75[*(v232 + 24)], v64, type metadata accessor for PMAccount.Storage);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_21C943938(v75, type metadata accessor for PMAccount);
      sub_21C943938(v64, type metadata accessor for PMAccount.Storage);
    }

    else
    {
      v93 = *v64;
      v94 = [*v64 isCurrentUserOriginalContributor];

      sub_21C943938(v75, type metadata accessor for PMAccount);
      if (v94)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        sub_21CB81DB4();

        if (v258 == 1)
        {
          v95 = v207;
          sub_21CA4B0DC(v207);
          v96 = type metadata accessor for PMSharingGroup();
          if ((*(*(v96 - 8) + 48))(v95, 1, v96) == 1)
          {
            sub_21C6EA794(v95, &qword_27CDF7670, &unk_21CBAA8F0);
            v98 = v251;
            v97 = v252;
            if (qword_27CDEA498 != -1)
            {
              swift_once();
            }

            v100 = qword_27CE18748;
            v99 = qword_27CE18750;

            v102 = v97;
          }

          else
          {
            v154 = (v95 + *(v96 + 20));
            v100 = *v154;
            v99 = v154[1];

            v101 = sub_21C943938(v95, type metadata accessor for PMSharingGroup);
            v98 = v251;
            v102 = v252;
          }

          MEMORY[0x28223BE20](v101);
          *(&v205 - 2) = v100;
          *(&v205 - 1) = v99;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1838, &unk_21CBB1F20);
          v155 = sub_21CB839C4();
          v258 = MEMORY[0x277CE0BD8];
          v259 = v155;
          v260 = MEMORY[0x277CE0BC8];
          v261 = MEMORY[0x277CE0758];
          swift_getOpaqueTypeConformance2();
          v156 = v241;
          sub_21CB825D4();

          v157 = sub_21CB83034();
          v158 = v239;
          *v239 = v157;
          *(v158 + 8) = 1;
          v159 = v240;
          v160 = *(v240 + 24);
          *(v158 + v160) = swift_getKeyPath();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB998, &qword_21CBA2700);
          swift_storeEnumTagMultiPayload();
          v161 = sub_21C942698();
          v162 = sub_21C705F40(&qword_27CDEB978, type metadata accessor for PMAdapativeStackLabeledContentStyle);
          v163 = v238;
          v164 = v243;
          sub_21CB844C4();
          sub_21C943938(v158, type metadata accessor for PMAdapativeStackLabeledContentStyle);
          (*(v242 + 8))(v156, v164);
          (*(v98 + 16))(v220, v163, v102);
          swift_storeEnumTagMultiPayload();
          v258 = v164;
          v259 = v159;
          v260 = v161;
          v261 = v162;
          swift_getOpaqueTypeConformance2();
          sub_21C705F40(&qword_27CDEC910, type metadata accessor for PMMoveAccountToGroupPicker);
          v165 = v219;
          sub_21CB83494();
          (*(v98 + 8))(v163, v102);
          v105 = v233;
        }

        else
        {
          swift_getKeyPath();
          swift_getKeyPath();
          v122 = v208;
          sub_21CB81DB4();

          v123 = v222;
          sub_21CB81014();
          v124 = v209;
          sub_21CB81014();
          v227 = sub_21CB80FF4();
          v126 = v125;
          v127 = *(v223 + 8);
          v128 = v124;
          v129 = v224;
          v127(v128, v224);
          v127(v123, v129);
          v130 = v221;
          v131 = v216;
          v132 = &v216[*(v221 + 32)];
          KeyPath = swift_getKeyPath();
          if (qword_27CDEA4C0 != -1)
          {
            swift_once();
          }

          sub_21CB86544();
          sub_21C7072A8(KeyPath, v258);

          type metadata accessor for PMAccountsState();
          sub_21C705F40(&qword_27CDEAE08, type metadata accessor for PMAccountsState);
          v134 = sub_21CB82674();
          v136 = v135;

          *v132 = v134;
          v132[1] = v136;
          v137 = (v131 + v130[9]);
          v138 = swift_getKeyPath();
          sub_21CB86544();
          sub_21C7073E8(v138, v258);

          type metadata accessor for PMGroupsStore();
          sub_21C705F40(&qword_27CDEB7C8, type metadata accessor for PMGroupsStore);
          v139 = sub_21CB82674();
          v141 = v140;

          *v137 = v139;
          v137[1] = v141;
          v142 = (v131 + v130[12]);
          v256 = sub_21CB12DEC(MEMORY[0x277D84F90]);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB7D0, &unk_21CBA25B0);
          sub_21CB84D44();
          v143 = v259;
          *v142 = v258;
          v142[1] = v143;
          v144 = v131 + v130[13];
          LOBYTE(v256) = 0;
          sub_21CB84D44();
          v145 = v259;
          *v144 = v258;
          *(v144 + 8) = v145;
          sub_21C942ED4(v122, v131, type metadata accessor for PMAccount);
          v146 = (v131 + v130[5]);
          *v146 = v227;
          v146[1] = v126;
          v147 = v210;
          sub_21C942ED4(v122 + *(v232 + 24), v210, type metadata accessor for PMAccount.Storage);
          v148 = v131;
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            sub_21C943938(v122, type metadata accessor for PMAccount);
            v149 = v147;
            v150 = v206;
            sub_21C943454(v149, v206, type metadata accessor for PMAccount.MockData);
            v151 = v212;
            sub_21C6EDBAC(v150 + *(v205 + 72), v212, &unk_27CDF20B0, &unk_21CBA0090);
            v152 = type metadata accessor for PMAccount.MockData;
            v153 = v150;
          }

          else
          {
            v166 = *v147;
            v151 = v212;
            sub_21CB85B94();

            v152 = type metadata accessor for PMAccount;
            v153 = v122;
          }

          sub_21C943938(v153, v152);
          v105 = v233;
          v165 = v219;
          v167 = v213;
          sub_21C716934(v151, v213, &unk_27CDF20B0, &unk_21CBA0090);
          (*(v214 + 56))(v167, 0, 2, v215);
          v168 = v148 + v130[10];
          *(v168 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB7D8, &qword_21CBB1F30) + 28)) = 0;
          sub_21C943454(v167, v168, type metadata accessor for PMMoveAccountToGroupPicker.Selection);
          v169 = v148 + v130[11];
          v170 = type metadata accessor for PMMoveAccountToGroupAlert.Configuration(0);
          (*(*(v170 - 8) + 56))(v169, 1, 1, v170);
          v171 = type metadata accessor for PMMoveAccountToGroupPicker.PresentationState(0);
          (*(v211 + 56))(v169 + *(v171 + 20), 1, 1, v232);
          type metadata accessor for PMMoveAccountToGroupPicker.PresentationStateStorage(0);
          swift_storeEnumTagMultiPayload();
          *(v169 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB7E0, &qword_21CBA25C0) + 28)) = 0;
          *(v148 + v130[6]) = 1;
          *(v148 + v130[7]) = 0;
          v172 = v148;
          v173 = v217;
          sub_21C943454(v172, v217, type metadata accessor for PMMoveAccountToGroupPicker);
          sub_21C942ED4(v173, v220, type metadata accessor for PMMoveAccountToGroupPicker);
          swift_storeEnumTagMultiPayload();
          v174 = sub_21C942698();
          v175 = sub_21C705F40(&qword_27CDEB978, type metadata accessor for PMAdapativeStackLabeledContentStyle);
          v258 = v243;
          v259 = v240;
          v260 = v174;
          v261 = v175;
          swift_getOpaqueTypeConformance2();
          sub_21C705F40(&qword_27CDEC910, type metadata accessor for PMMoveAccountToGroupPicker);
          sub_21CB83494();
          sub_21C943938(v173, type metadata accessor for PMMoveAccountToGroupPicker);
        }

        sub_21C6EDBAC(v165, v230, &qword_27CDF1808, &qword_21CBB1EA8);
        swift_storeEnumTagMultiPayload();
        sub_21C942768();
        sub_21C9428B0();
        sub_21CB83494();
        sub_21C6EA794(v165, &qword_27CDF1808, &qword_21CBB1EA8);
        v104 = 0;
        v92 = v255;
        goto LABEL_30;
      }
    }
  }

  sub_21CA4B0DC(v49);
  v103 = type metadata accessor for PMSharingGroup();
  if ((*(*(v103 - 8) + 48))(v49, 1, v103) == 1)
  {
    sub_21C6EA794(v49, &qword_27CDF7670, &unk_21CBAA8F0);
    v104 = 1;
    v92 = v255;
    v105 = v233;
  }

  else
  {
    v106 = &v49[*(v103 + 20)];
    v108 = *v106;
    v107 = *(v106 + 1);

    sub_21C943938(v49, type metadata accessor for PMSharingGroup);
    v109 = sub_21C938D40();
    if (v109)
    {
      v110 = v222;
      sub_21CB81014();
      v111 = sub_21CB81004();
      v113 = v112;
      v114 = (*(v223 + 8))(v110, v224);
      v256 = v111;
      v257 = v113;
      MEMORY[0x28223BE20](v114);
      *(&v205 - 2) = v108;
      *(&v205 - 1) = v107;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1838, &unk_21CBB1F20);
      v115 = sub_21CB839C4();
      v258 = MEMORY[0x277CE0BD8];
      v259 = v115;
      v260 = MEMORY[0x277CE0BC8];
      v261 = MEMORY[0x277CE0758];
      swift_getOpaqueTypeConformance2();
      sub_21C71F3FC();
      v116 = v241;
      sub_21CB825C4();
    }

    else
    {
      MEMORY[0x28223BE20](v109);
      *(&v205 - 2) = v108;
      *(&v205 - 1) = v107;
      MEMORY[0x28223BE20](v117);
      *(&v205 - 2) = v87;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1838, &unk_21CBB1F20);
      v118 = sub_21CB839C4();
      v258 = MEMORY[0x277CE0BD8];
      v259 = v118;
      v260 = MEMORY[0x277CE0BC8];
      v261 = MEMORY[0x277CE0758];
      swift_getOpaqueTypeConformance2();
      v116 = v241;
      sub_21CB825D4();
    }

    v92 = v255;
    v120 = v242;
    v119 = v243;
    (*(v242 + 16))(v225, v116, v243);
    swift_storeEnumTagMultiPayload();
    sub_21C942698();
    v121 = v227;
    sub_21CB83494();
    (*(v120 + 8))(v116, v119);
    sub_21C6EDBAC(v121, v230, &qword_27CDF17E0, &qword_21CBB1E88);
    swift_storeEnumTagMultiPayload();
    sub_21C942768();
    sub_21C9428B0();
    v105 = v233;
    sub_21CB83494();
    sub_21C6EA794(v121, &qword_27CDF17E0, &qword_21CBB1E88);
    v104 = 0;
  }

LABEL_30:
  v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1820, &qword_21CBB1F08);
  (*(*(v176 - 8) + 56))(v105, v104, 1, v176);
  v177 = v235;
  sub_21C934DA8(v235);
  v178 = v234;
  sub_21C6EDBAC(v105, v234, &qword_27CDF1810, &qword_21CBB1EB0);
  v179 = v105;
  v180 = v236;
  sub_21C6EDBAC(v177, v236, &qword_27CDF17D0, &qword_21CBB1E78);
  v181 = v237;
  sub_21C6EDBAC(v178, v237, &qword_27CDF1810, &qword_21CBB1EB0);
  v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1828, &qword_21CBB1F10);
  sub_21C6EDBAC(v180, v181 + *(v182 + 48), &qword_27CDF17D0, &qword_21CBB1E78);
  sub_21C6EA794(v177, &qword_27CDF17D0, &qword_21CBB1E78);
  sub_21C6EA794(v179, &qword_27CDF1810, &qword_21CBB1EB0);
  sub_21C6EA794(v180, &qword_27CDF17D0, &qword_21CBB1E78);
  sub_21C6EA794(v178, &qword_27CDF1810, &qword_21CBB1EB0);
  sub_21C716934(v181, v92, &qword_27CDF17C8, &qword_21CBB1E70);
  v90 = 0;
  v91 = v252;
LABEL_31:
  v183 = 1;
  (*(v246 + 56))(v92, v90, 1, v247);
  swift_getKeyPath();
  swift_getKeyPath();
  v184 = v244;
  sub_21CB81DB4();

  v185 = sub_21C7CBA64();
  v187 = v186;
  v188 = sub_21C943938(v184, type metadata accessor for PMAccount);
  if (v187)
  {
    MEMORY[0x28223BE20](v188);
    *(&v205 - 2) = v185;
    *(&v205 - 1) = v187;
    MEMORY[0x28223BE20](v189);
    *(&v205 - 2) = v254;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1838, &unk_21CBB1F20);
    v190 = sub_21CB839C4();
    v258 = MEMORY[0x277CE0BD8];
    v259 = v190;
    v260 = MEMORY[0x277CE0BC8];
    v261 = MEMORY[0x277CE0758];
    swift_getOpaqueTypeConformance2();
    v191 = v241;
    sub_21CB825D4();

    v192 = sub_21CB83034();
    v193 = v239;
    *v239 = v192;
    *(v193 + 8) = 1;
    v194 = *(v240 + 24);
    *(v193 + v194) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB998, &qword_21CBA2700);
    swift_storeEnumTagMultiPayload();
    sub_21C942698();
    sub_21C705F40(&qword_27CDEB978, type metadata accessor for PMAdapativeStackLabeledContentStyle);
    v195 = v238;
    v196 = v243;
    sub_21CB844C4();
    sub_21C943938(v193, type metadata accessor for PMAdapativeStackLabeledContentStyle);
    v197 = v191;
    v92 = v255;
    (*(v242 + 8))(v197, v196);
    v198 = v251;
    v199 = v248;
    (*(v251 + 32))(v248, v195, v91);
    v183 = 0;
  }

  else
  {
    v199 = v248;
    v198 = v251;
  }

  (*(v198 + 56))(v199, v183, 1, v91);
  v200 = v245;
  sub_21C6EDBAC(v92, v245, &qword_27CDF1818, &qword_21CBB1EB8);
  v201 = v249;
  sub_21C6EDBAC(v199, v249, &qword_27CDF17C0, &qword_21CBB1E68);
  v202 = v250;
  sub_21C6EDBAC(v200, v250, &qword_27CDF1818, &qword_21CBB1EB8);
  v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1830, &qword_21CBB1F18);
  sub_21C6EDBAC(v201, v202 + *(v203 + 48), &qword_27CDF17C0, &qword_21CBB1E68);
  sub_21C6EA794(v199, &qword_27CDF17C0, &qword_21CBB1E68);
  sub_21C6EA794(v92, &qword_27CDF1818, &qword_21CBB1EB8);
  sub_21C6EA794(v201, &qword_27CDF17C0, &qword_21CBB1E68);
  return sub_21C6EA794(v200, &qword_27CDF1818, &qword_21CBB1EB8);
}

uint64_t sub_21C92FB9C()
{
  v1 = type metadata accessor for PMAccount.Storage(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = (&v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for PMAccount(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((sub_21C92D6D0() & 1) == 0)
  {
    return 0;
  }

  v9 = *(v0 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  sub_21C942ED4(&v8[*(v5 + 24)], v4, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C943938(v8, type metadata accessor for PMAccount);
    sub_21C943938(v4, type metadata accessor for PMAccount.Storage);
    return 1;
  }

  else
  {
    v11 = *v4;
    v12 = [v11 userIsNeverSaveMarker];

    sub_21C943938(v8, type metadata accessor for PMAccount);
    return v12 ^ 1;
  }
}

uint64_t sub_21C92FD78()
{
  v1 = type metadata accessor for PMAccount.Storage(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = (&v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for PMAccount(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((sub_21C92D6D0() & 1) == 0)
  {
    v10 = *(v0 + 8);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_21CB81DB4();

    sub_21C942ED4(&v8[*(v5 + 24)], v4, type metadata accessor for PMAccount.Storage);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_21C943938(v8, type metadata accessor for PMAccount);
      sub_21C943938(v4, type metadata accessor for PMAccount.Storage);
      v9 = 1;
      return v9 & 1;
    }

    v11 = *v4;
    v12 = [v11 canUserEditSavedAccount];

    sub_21C943938(v8, type metadata accessor for PMAccount);
    if ((v12 & 1) == 0)
    {
      v9 = sub_21C938D40();
      return v9 & 1;
    }
  }

  v9 = 1;
  return v9 & 1;
}

uint64_t sub_21C92FF5C@<X0>(uint64_t a1@<X8>)
{
  v58 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1648, &qword_21CBB1AE0);
  v56 = *(v2 - 8);
  v57 = v2;
  v3 = *(v56 + 64);
  MEMORY[0x28223BE20](v2);
  v61 = &v48 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1650, &qword_21CBB1AE8);
  v54 = *(v5 - 8);
  v55 = v5;
  v6 = *(v54 + 64);
  MEMORY[0x28223BE20](v5);
  v53 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v60 = &v48 - v9;
  v10 = type metadata accessor for PMAccount.Storage(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (&v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = type metadata accessor for PMAccount(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1658, &qword_21CBB1AF0);
  v18 = *(v52 - 8);
  v19 = v18[8];
  MEMORY[0x28223BE20](v52);
  v59 = &v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v48 - v22;
  v24 = *(v1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  if ((v62 & 1) == 0 && (sub_21C938D40() & 1) == 0)
  {
    return (*(v56 + 56))(v58, 1, 1, v57);
  }

  v51 = xmmword_21CBA4340;
  v25 = sub_21C938D40();
  v50 = 0u;
  if (v25)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_21CB81DB4();

    sub_21C942ED4(&v17[*(v14 + 24)], v13, type metadata accessor for PMAccount.Storage);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_21C943938(v17, type metadata accessor for PMAccount);
      sub_21C943938(v13, type metadata accessor for PMAccount.Storage);
    }

    else
    {
      v27 = *v13;
      v28 = [v27 credentialTypes];

      sub_21C943938(v17, type metadata accessor for PMAccount);
      if (v28)
      {
        sub_21C93B1D4(&v62);
        v51 = v63;
        v50 = v62;
      }
    }
  }

  v29 = sub_21CB83D64();
  KeyPath = swift_getKeyPath();
  v31 = swift_getKeyPath();
  v63 = v51;
  v62 = v50;
  v64 = KeyPath;
  v65 = v29;
  v66 = v31;
  v67 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1660, &qword_21CBB1B58);
  sub_21C941EDC();
  v49 = v23;
  v32 = sub_21CB85064();
  MEMORY[0x28223BE20](v32);
  *(&v48 - 2) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1690, &qword_21CBB1B78);
  sub_21C6EADEC(&qword_27CDF1698, &qword_27CDF1690, &qword_21CBB1B78);
  v33 = v60;
  sub_21CB85054();
  v34 = v18[2];
  v35 = v59;
  v36 = v23;
  v37 = v52;
  v34(v59, v36, v52);
  v39 = v53;
  v38 = v54;
  v40 = *(v54 + 16);
  v41 = v33;
  v42 = v55;
  v40(v53, v41, v55);
  v34(v61, v35, v37);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF16A0, &qword_21CBB1B80);
  v44 = v61;
  v40(&v61[*(v43 + 48)], v39, v42);
  v45 = *(v38 + 8);
  v45(v60, v42);
  v46 = v18[1];
  v46(v49, v37);
  v45(v39, v42);
  v46(v59, v37);
  v47 = v58;
  sub_21C716934(v44, v58, &qword_27CDF1648, &qword_21CBB1AE0);
  return (*(v56 + 56))(v47, 0, 1, v57);
}

BOOL sub_21C930630()
{
  v1 = sub_21CB82F84();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 72);
  if (*(v0 + 80) == 1)
  {
    sub_21C940A00(*(v0 + 72));
  }

  else
  {

    sub_21CB85B04();
    v7 = sub_21CB83C94();
    sub_21CB81C14();

    sub_21CB82F74();
    swift_getAtKeyPath();
    sub_21C940E04(v6, 0);
    (*(v2 + 8))(v5, v1);
    v6 = v9[1];
  }

  sub_21C8D75F0(v6);
  return v6 >> 62 == 0;
}

uint64_t sub_21C930794@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v193 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC318, &qword_21CBB26D0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v169 = &v166 - v5;
  v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1C78, &qword_21CBB26D8);
  v6 = *(*(v168 - 8) + 64);
  MEMORY[0x28223BE20](v168);
  v171 = &v166 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v170 = &v166 - v9;
  v192 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1C80, &qword_21CBB26E0);
  v191 = *(v192 - 1);
  v10 = *(v191 + 64);
  MEMORY[0x28223BE20](v192);
  v167 = &v166 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1C88, &qword_21CBB26E8);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v201 = &v166 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v202 = &v166 - v16;
  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1A78, &qword_21CBB2388);
  v189 = *(v190 - 8);
  v17 = *(v189 + 64);
  MEMORY[0x28223BE20](v190);
  v182 = (&v166 - v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1A80, &qword_21CBB2390);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v214 = &v166 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v215 = &v166 - v23;
  v213 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1C90, &qword_21CBB26F0);
  v216 = *(v213 - 8);
  v24 = v216[8];
  MEMORY[0x28223BE20](v213);
  v212 = &v166 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v203 = &v166 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1A88, &qword_21CBB2398);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28 - 8);
  v211 = &v166 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v209 = &v166 - v32;
  v180 = type metadata accessor for PMAccount.Storage(0);
  v33 = *(*(v180 - 8) + 64);
  MEMORY[0x28223BE20](v180);
  v181 = (&v166 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  v200 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1A90, &qword_21CBB23A0);
  v199 = *(v200 - 8);
  v35 = v199[8];
  MEMORY[0x28223BE20](v200);
  v210 = &v166 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v208 = &v166 - v38;
  v39 = type metadata accessor for PMCombinedAccountDetailsView();
  v184 = *(v39 - 8);
  v40 = *(v184 + 64);
  MEMORY[0x28223BE20](v39);
  v185 = v41;
  v186 = &v166 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1B58, &qword_21CBB2530);
  v43 = *(*(v42 - 8) + 64);
  MEMORY[0x28223BE20](v42 - 8);
  v198 = &v166 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v45);
  v207 = &v166 - v46;
  v187 = sub_21CB83A34();
  v177 = *(v187 - 8);
  v47 = *(v177 + 64);
  MEMORY[0x28223BE20](v187);
  v176 = &v166 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF17F8, &qword_21CBB1EA0);
  v174 = *(v175 - 8);
  v49 = *(v174 + 64);
  MEMORY[0x28223BE20](v175);
  v173 = &v166 - v50;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDED250, &qword_21CBA64C0);
  v52 = *(*(v51 - 8) + 64);
  MEMORY[0x28223BE20](v51 - 8);
  v54 = &v166 - v53;
  v178 = type metadata accessor for PMAccount(0);
  v55 = *(*(v178 - 8) + 64);
  MEMORY[0x28223BE20](v178);
  v179 = &v166 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v57);
  v183 = &v166 - v58;
  MEMORY[0x28223BE20](v59);
  v61 = &v166 - v60;
  v62 = sub_21CB80DD4();
  v63 = *(v62 - 8);
  v64 = *(v63 + 64);
  MEMORY[0x28223BE20](v62);
  v172 = &v166 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1C98, &qword_21CBB26F8);
  v67 = *(*(v66 - 8) + 64);
  MEMORY[0x28223BE20](v66 - 8);
  v196 = &v166 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v69);
  v206 = &v166 - v70;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1BF0, &qword_21CBB2600);
  v72 = *(*(v71 - 8) + 64);
  MEMORY[0x28223BE20](v71 - 8);
  v195 = &v166 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v74);
  v205 = &v166 - v75;
  v76 = sub_21CB82F84();
  v77 = *(v76 - 8);
  v78 = *(v77 + 64);
  MEMORY[0x28223BE20](v76);
  v80 = &v166 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1CA0, &unk_21CBB2700);
  v82 = *(*(v81 - 8) + 64);
  MEMORY[0x28223BE20](v81 - 8);
  v194 = &v166 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v84);
  v204 = &v166 - v85;
  v188 = v39;
  v86 = a1 + *(v39 + 44);
  v87 = *v86;
  v88 = *(v86 + 8) == 1;
  v197 = a1;
  if (v88)
  {
    LOBYTE(v221) = v87;
  }

  else
  {

    sub_21CB85B04();
    v89 = v62;
    v90 = sub_21CB83C94();
    sub_21CB81C14();

    v62 = v89;
    a1 = v197;
    sub_21CB82F74();
    swift_getAtKeyPath();
    sub_21C7025C4(v87, 0);
    (*(v77 + 8))(v80, v76);
    LOBYTE(v87) = v221;
  }

  v91 = v87;
  v92 = v204;
  if (v91 <= 1 && v91)
  {
  }

  else
  {
    v93 = sub_21CB86344();

    if ((v93 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  if (sub_21C930630())
  {
    v94 = 1;
    goto LABEL_12;
  }

LABEL_11:
  sub_21C924A48(v92);
  v94 = 0;
LABEL_12:
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1858, &qword_21CBB1FA8);
  (*(*(v95 - 8) + 56))(v92, v94, 1, v95);
  sub_21C924F88(v205);
  v96 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  PMAccount.creationDateForPasskey.getter(v54);
  sub_21C943938(v61, type metadata accessor for PMAccount);
  if ((*(v63 + 48))(v54, 1, v62) == 1)
  {
    sub_21C6EA794(v54, &unk_27CDED250, &qword_21CBA64C0);
    v97 = 1;
    v98 = v206;
  }

  else
  {
    v99 = v172;
    v100 = (*(v63 + 32))(v172, v54, v62);
    MEMORY[0x28223BE20](v100);
    MEMORY[0x28223BE20](v101);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1838, &unk_21CBB1F20);
    v102 = sub_21CB839C4();
    *&v221 = MEMORY[0x277CE0BD8];
    *(&v221 + 1) = v102;
    v166 = v62;
    *&v222 = MEMORY[0x277CE0BC8];
    *(&v222 + 1) = MEMORY[0x277CE0758];
    swift_getOpaqueTypeConformance2();
    v103 = v173;
    a1 = v197;
    sub_21CB825D4();
    v104 = v176;
    sub_21CB83A24();
    sub_21C942698();
    v98 = v206;
    v105 = v175;
    sub_21CB844F4();
    (*(v177 + 8))(v104, v187);
    (*(v174 + 8))(v103, v105);
    (*(v63 + 8))(v99, v166);
    v97 = 0;
  }

  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1A60, &qword_21CBB2370);
  (*(*(v106 - 8) + 56))(v98, v97, 1, v106);
  sub_21C929058(v207);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v107 = v221;
  if (v221)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v108 = v183;
    sub_21CB81DB4();

    sub_21C943938(v108, type metadata accessor for PMAccount);
    v109 = v186;
    sub_21C942ED4(a1, v186, type metadata accessor for PMCombinedAccountDetailsView);
    v110 = (*(v184 + 80) + 16) & ~*(v184 + 80);
    v111 = swift_allocObject();
    sub_21C943454(v109, v111 + v110, type metadata accessor for PMCombinedAccountDetailsView);
    v186 = v111;

    v185 = sub_21C9440D0;
  }

  else
  {
    v185 = 0;
    v186 = 0;
  }

  v112 = v107;

  v113 = sub_21C92D6D0();
  v187 = v107;
  if (v113)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v114 = v179;
    sub_21CB81DB4();

    v115 = v181;
    sub_21C942ED4(v114 + *(v178 + 24), v181, type metadata accessor for PMAccount.Storage);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_21C943938(v114, type metadata accessor for PMAccount);
      sub_21C943938(v115, type metadata accessor for PMAccount.Storage);
      v116 = 1;
    }

    else
    {
      v117 = *v115;
      v118 = [v117 userIsNeverSaveMarker];

      sub_21C943938(v114, type metadata accessor for PMAccount);
      v116 = v118 ^ 1;
    }
  }

  else
  {
    v116 = 0;
  }

  LOBYTE(v217[0]) = 0;
  sub_21CB84D44();
  v119 = v221;
  v120 = *(&v221 + 1);
  KeyPath = swift_getKeyPath();
  type metadata accessor for PMCombinedAccountDetailsModel(0);
  sub_21C705F40(&qword_27CDEB520, type metadata accessor for PMCombinedAccountDetailsModel);
  v122 = sub_21CB82674();
  v218 = 0;
  LOBYTE(v221) = v116;
  *(&v221 + 1) = *v220;
  DWORD1(v221) = *&v220[3];
  *(&v221 + 1) = v122;
  *&v222 = v123;
  BYTE8(v222) = v119;
  *(&v222 + 9) = *v219;
  HIDWORD(v222) = *&v219[3];
  *&v223 = v120;
  *(&v223 + 1) = KeyPath;
  *&v224 = 0;
  BYTE8(v224) = 0;
  strcpy(v217, "editWebsites");
  HIBYTE(v217[6]) = 0;
  v217[7] = -5120;
  v124 = v197;
  v125 = *(v197 + *(v188 + 56));
  sub_21CB852C4();
  sub_21C943190();
  sub_21CB845E4();

  sub_21C92D9F4(v209);
  v126 = sub_21CB85184();
  MEMORY[0x28223BE20](v126);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED6E0, &qword_21CBBE3A0);
  sub_21C943E28(&qword_27CDED6F0, &qword_27CDED6E0, &qword_21CBBE3A0);
  sub_21CB851A4();
  if (sub_21C92FB9C())
  {
    v127 = sub_21CB85214();
    v128 = v182;
    *v182 = v127;
    *(v128 + 8) = v129;
    v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1AA8, &qword_21CBB23B0);
    sub_21C937180(v124, v128 + *(v130 + 44));
    v131 = sub_21CB832C4();
    v132 = v190;
    v133 = (v128 + *(v190 + 36));
    *v133 = v131;
    v133[1] = sub_21C7902AC;
    v133[2] = 0;
    sub_21C716934(v128, v215, &qword_27CDF1A78, &qword_21CBB2388);
    v134 = 0;
    v135 = v206;
  }

  else
  {
    v134 = 1;
    v135 = v206;
    v132 = v190;
  }

  (*(v189 + 56))(v215, v134, 1, v132);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v136 = v221;
  if ([objc_opt_self() isSavedAccountHistoryEnabled])
  {
    swift_getKeyPath();
    *&v221 = v136;
    sub_21C705F40(&qword_27CDF4060, type metadata accessor for PMAccountHistoryModel);
    sub_21CB810D4();

    v137 = *(v136 + OBJC_IVAR____TtC17PasswordManagerUI21PMAccountHistoryModel__historyItemsCount);

    v138 = 1;
    if (v137 > 1)
    {
      v139 = v169;
      sub_21C9324C0(v169);
      sub_21CB85214();
      sub_21CB82AC4();
      v140 = v139;
      v141 = v171;
      sub_21C716934(v140, v171, &qword_27CDEC318, &qword_21CBB26D0);
      v142 = (v141 + *(v168 + 36));
      v143 = v226;
      v142[4] = v225;
      v142[5] = v143;
      v142[6] = v227;
      v144 = v222;
      *v142 = v221;
      v142[1] = v144;
      v145 = v224;
      v142[2] = v223;
      v142[3] = v145;
      v146 = v141;
      v147 = v170;
      sub_21C716934(v146, v170, &qword_27CDF1C78, &qword_21CBB26D8);
      v148 = v147;
      v149 = v167;
      sub_21C716934(v148, v167, &qword_27CDF1C78, &qword_21CBB26D8);
      sub_21C716934(v149, v202, &qword_27CDF1C80, &qword_21CBB26E0);
      v138 = 0;
    }
  }

  else
  {

    v138 = 1;
  }

  v150 = v202;
  (*(v191 + 56))(v202, v138, 1, v192);
  v151 = v194;
  sub_21C6EDBAC(v204, v194, &qword_27CDF1CA0, &unk_21CBB2700);
  v152 = v195;
  sub_21C6EDBAC(v205, v195, &qword_27CDF1BF0, &qword_21CBB2600);
  v153 = v196;
  sub_21C6EDBAC(v135, v196, &qword_27CDF1C98, &qword_21CBB26F8);
  v154 = v198;
  sub_21C6EDBAC(v207, v198, &qword_27CDF1B58, &qword_21CBB2530);
  v197 = v199[2];
  (v197)(v210, v208, v200);
  sub_21C6EDBAC(v209, v211, &qword_27CDF1A88, &qword_21CBB2398);
  v192 = v216[2];
  v192(v212, v203, v213);
  sub_21C6EDBAC(v215, v214, &qword_27CDF1A80, &qword_21CBB2390);
  sub_21C6EDBAC(v150, v201, &qword_27CDF1C88, &qword_21CBB26E8);
  v155 = v193;
  sub_21C6EDBAC(v151, v193, &qword_27CDF1CA0, &unk_21CBB2700);
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1CA8, &qword_21CBB2710);
  sub_21C6EDBAC(v152, v155 + v156[12], &qword_27CDF1BF0, &qword_21CBB2600);
  sub_21C6EDBAC(v153, v155 + v156[16], &qword_27CDF1C98, &qword_21CBB26F8);
  sub_21C6EDBAC(v154, v155 + v156[20], &qword_27CDF1B58, &qword_21CBB2530);
  v157 = v155 + v156[24];
  v158 = v187;
  v159 = v185;
  *v157 = v187;
  *(v157 + 8) = v159;
  *(v157 + 16) = v186;
  *(v157 + 24) = 0;
  v160 = v200;
  (v197)(v155 + v156[28], v210, v200);
  sub_21C6EDBAC(v211, v155 + v156[32], &qword_27CDF1A88, &qword_21CBB2398);
  v161 = v213;
  v192((v155 + v156[36]), v212, v213);
  sub_21C6EDBAC(v214, v155 + v156[40], &qword_27CDF1A80, &qword_21CBB2390);
  v162 = v201;
  sub_21C6EDBAC(v201, v155 + v156[44], &qword_27CDF1C88, &qword_21CBB26E8);
  sub_21C943E88(v158);
  sub_21C943EC8(v158);
  sub_21C6EA794(v202, &qword_27CDF1C88, &qword_21CBB26E8);
  sub_21C6EA794(v215, &qword_27CDF1A80, &qword_21CBB2390);
  v163 = v216[1];
  ++v216;
  v163(v203, v161);
  sub_21C6EA794(v209, &qword_27CDF1A88, &qword_21CBB2398);
  v164 = v199[1];
  v164(v208, v160);
  sub_21C6EA794(v207, &qword_27CDF1B58, &qword_21CBB2530);
  sub_21C6EA794(v206, &qword_27CDF1C98, &qword_21CBB26F8);
  sub_21C6EA794(v205, &qword_27CDF1BF0, &qword_21CBB2600);
  sub_21C6EA794(v204, &qword_27CDF1CA0, &unk_21CBB2700);
  sub_21C6EA794(v162, &qword_27CDF1C88, &qword_21CBB26E8);
  sub_21C6EA794(v214, &qword_27CDF1A80, &qword_21CBB2390);
  v163(v212, v213);
  sub_21C6EA794(v211, &qword_27CDF1A88, &qword_21CBB2398);
  v164(v210, v160);
  sub_21C943EC8(v158);
  sub_21C6EA794(v198, &qword_27CDF1B58, &qword_21CBB2530);
  sub_21C6EA794(v196, &qword_27CDF1C98, &qword_21CBB26F8);
  sub_21C6EA794(v195, &qword_27CDF1BF0, &qword_21CBB2600);
  return sub_21C6EA794(v194, &qword_27CDF1CA0, &unk_21CBB2700);
}

uint64_t sub_21C9324C0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v30 = a1;
  v3 = type metadata accessor for PMCombinedAccountDetailsView();
  v26 = *(v3 - 8);
  v27 = v3;
  v4 = *(v26 + 64);
  MEMORY[0x28223BE20](v3);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE40, &unk_21CBA8200);
  v28 = *(v5 - 8);
  v29 = v5;
  v6 = *(v28 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v25 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC310, &unk_21CBA3F10);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v25 - v12;
  v14 = *(v1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v15 = v31;
  if (![objc_opt_self() isSavedAccountHistoryEnabled])
  {

    goto LABEL_5;
  }

  swift_getKeyPath();
  v31 = v15;
  sub_21C705F40(&qword_27CDF4060, type metadata accessor for PMAccountHistoryModel);
  sub_21CB810D4();

  v16 = *(v15 + OBJC_IVAR____TtC17PasswordManagerUI21PMAccountHistoryModel__historyItemsCount);

  if (v16 <= 1)
  {
LABEL_5:
    v23 = 1;
    v22 = v30;
    return (*(v10 + 56))(v22, v23, 1, v9);
  }

  sub_21C942ED4(v2, &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMCombinedAccountDetailsView);
  v17 = (*(v26 + 80) + 16) & ~*(v26 + 80);
  v18 = swift_allocObject();
  sub_21C943454(&v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17, type metadata accessor for PMCombinedAccountDetailsView);
  sub_21CB84DA4();
  v31 = 0x79726F74736968;
  v32 = 0xE700000000000000;
  v19 = *(v2 + *(v27 + 56));
  sub_21CB852C4();
  sub_21C6EADEC(&qword_27CDEBE50, &qword_27CDEBE40, &unk_21CBA8200);
  v20 = v29;
  sub_21CB845E4();
  (*(v28 + 8))(v8, v20);
  v21 = v30;
  (*(v10 + 32))(v30, v13, v9);
  v22 = v21;
  v23 = 0;
  return (*(v10 + 56))(v22, v23, 1, v9);
}

uint64_t sub_21C93291C@<X0>(uint64_t a1@<X8>)
{
  v46 = a1;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF11D0, &qword_21CBB0B20);
  v2 = *(*(v39 - 8) + 64);
  MEMORY[0x28223BE20](v39);
  v38 = &v38 - v3;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1C38, &unk_21CBB26B0);
  v4 = *(*(v41 - 8) + 64);
  MEMORY[0x28223BE20](v41);
  v40 = &v38 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1C40, &qword_21CBCB960);
  v43 = *(v6 - 8);
  v44 = v6;
  v7 = *(v43 + 64);
  MEMORY[0x28223BE20](v6);
  v42 = &v38 - v8;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1C48, &qword_21CBB26C0);
  v9 = *(*(v45 - 8) + 64);
  MEMORY[0x28223BE20](v45);
  v11 = &v38 - v10;
  v12 = type metadata accessor for PMAccount.Storage(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = (&v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = type metadata accessor for PMAccount(0);
  v17 = v16 - 8;
  v18 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v1;
  v22 = *(v1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  sub_21C942ED4(&v20[*(v17 + 32)], v15, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C943938(v20, type metadata accessor for PMAccount);
    v23 = sub_21C943938(v15, type metadata accessor for PMAccount.Storage);
LABEL_5:
    MEMORY[0x28223BE20](v23);
    sub_21CB85184();
    v28 = MEMORY[0x277CE1340];
    v29 = MEMORY[0x277CE1350];
    sub_21CB831D4();
    *&v49 = v29;
    *(&v49 + 1) = v28;
    swift_getOpaqueTypeConformance2();
    sub_21CB851A4();
    type metadata accessor for PMAppAccountDetailsCredentialSecurityView(0);
    sub_21C943BA4();
    sub_21C705F40(&qword_27CDF1C58, type metadata accessor for PMAppAccountDetailsCredentialSecurityView);
    v30 = v42;
    sub_21CB85034();
    sub_21CB85224();
    sub_21CB82AC4();
    (*(v43 + 32))(v11, v30, v44);
    v31 = &v11[*(v45 + 36)];
    v32 = v54;
    *(v31 + 4) = v53;
    *(v31 + 5) = v32;
    *(v31 + 6) = v55;
    v33 = v50;
    *v31 = v49;
    *(v31 + 1) = v33;
    v34 = v52;
    *(v31 + 2) = v51;
    *(v31 + 3) = v34;
    v47 = 0xD000000000000011;
    v48 = 0x800000021CB934F0;
    v35 = *(v21 + *(type metadata accessor for PMCombinedAccountDetailsView() + 56));
    sub_21CB852C4();
    sub_21C943C6C(&qword_27CDF1C60, &qword_27CDF1C48, &qword_21CBB26C0, sub_21C943CF0);
    v27 = v46;
    sub_21CB845E4();
    sub_21C6EA794(v11, &qword_27CDF1C48, &qword_21CBB26C0);
    v26 = 0;
    goto LABEL_6;
  }

  v24 = *v15;
  v25 = [*v15 userIsNeverSaveMarker];

  v23 = sub_21C943938(v20, type metadata accessor for PMAccount);
  if ((v25 & 1) == 0)
  {
    goto LABEL_5;
  }

  v26 = 1;
  v27 = v46;
LABEL_6:
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1C70, &qword_21CBB26C8);
  return (*(*(v36 - 8) + 56))(v27, v26, 1, v36);
}

uint64_t sub_21C932F7C@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for PMAccount.Storage(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = (&v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for PMAccount(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((sub_21C92D6D0() & 1) == 0)
  {
    v11 = *(v1 + 8);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_21CB81DB4();

    sub_21C942ED4(&v10[*(v7 + 24)], v6, type metadata accessor for PMAccount.Storage);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_21C943938(v10, type metadata accessor for PMAccount);
      sub_21C943938(v6, type metadata accessor for PMAccount.Storage);
    }

    else
    {
      v12 = *v6;
      v13 = [v12 canUserEditSavedAccount];

      sub_21C943938(v10, type metadata accessor for PMAccount);
      if ((v13 & 1) == 0 && (sub_21C938D40() & 1) == 0)
      {
        v14 = 1;
        goto LABEL_7;
      }
    }
  }

  sub_21C92FF5C(a1);
  v14 = 0;
LABEL_7:
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1860, &qword_21CBB2090);
  return (*(*(v15 - 8) + 56))(a1, v14, 1, v15);
}

int *sub_21C9331C0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v53 = a1;
  v54 = sub_21CB82A04();
  v52 = *(v54 - 8);
  v3 = *(v52 + 64);
  MEMORY[0x28223BE20](v54);
  v48 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PMCombinedAccountDetailsView();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v50 = v7;
  v55 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21CB81024();
  v47 = v8;
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for PMPlatformRoleButton();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = (&v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21CB81014();
  v17 = sub_21CB81004();
  v19 = v18;
  v46 = *(v9 + 8);
  v46(v12, v8);
  v20 = v16 + *(v13 + 20);
  sub_21CB81EF4();
  v51 = type metadata accessor for PMCombinedAccountDetailsView;
  v21 = v55;
  sub_21C942ED4(v2, v55, type metadata accessor for PMCombinedAccountDetailsView);
  v49 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v22 = v49;
  v23 = swift_allocObject();
  sub_21C943454(v21, v23 + v22, type metadata accessor for PMCombinedAccountDetailsView);
  *v16 = v17;
  v16[1] = v19;
  v24 = (v16 + *(v13 + 24));
  *v24 = sub_21C942E24;
  v24[1] = v23;
  v25 = v48;
  sub_21CB829E4();
  sub_21C705F40(&qword_27CDEC040, type metadata accessor for PMPlatformRoleButton);
  v26 = v53;
  sub_21CB84334();
  (*(v52 + 8))(v25, v54);
  sub_21C943938(v16, type metadata accessor for PMPlatformRoleButton);
  sub_21CB81014();
  v54 = sub_21CB81004();
  v28 = v27;
  v46(v12, v47);
  v29 = v45;
  v30 = *v45;
  v31 = v45[1];
  type metadata accessor for PMCombinedAccountDetailsModel(0);
  sub_21C705F40(&qword_27CDEB520, type metadata accessor for PMCombinedAccountDetailsModel);
  sub_21CB82684();
  swift_getKeyPath();
  sub_21CB82694();

  v32 = v56;
  v33 = v57;
  LOBYTE(v17) = v58;
  v34 = v55;
  sub_21C942ED4(v29, v55, v51);
  v35 = v49;
  v36 = swift_allocObject();
  sub_21C943454(v34, v36 + v35, type metadata accessor for PMCombinedAccountDetailsView);
  v37 = swift_allocObject();
  *(v37 + 16) = sub_21C942EA4;
  *(v37 + 24) = v36;
  KeyPath = swift_getKeyPath();
  v39 = (v26 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1900, &qword_21CBB2248) + 36));
  *v39 = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
  swift_storeEnumTagMultiPayload();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1918, &qword_21CBB2250);
  *(v39 + result[18]) = 0;
  v41 = (v39 + result[15]);
  *v41 = v54;
  v41[1] = v28;
  v42 = v39 + result[16];
  *v42 = v32;
  *(v42 + 1) = v33;
  v42[16] = v17;
  *(v39 + result[17]) = 0;
  *(v39 + result[19]) = 2;
  v43 = (v39 + result[20]);
  *v43 = sub_21C9440B4;
  v43[1] = v37;
  v44 = (v39 + result[21]);
  *v44 = sub_21C9421D4;
  v44[1] = 0;
  return result;
}

uint64_t sub_21C933778@<X0>(uint64_t a1@<X8>)
{
  v83 = a1;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE40, &unk_21CBA8200);
  v66 = *(v68 - 8);
  v2 = *(v66 + 64);
  MEMORY[0x28223BE20](v68);
  v65 = v62 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC948, &qword_21CBA4E30);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v67 = v62 - v6;
  v73 = type metadata accessor for PMAccount.Storage(0);
  v7 = *(*(v73 - 8) + 64);
  MEMORY[0x28223BE20](v73);
  v74 = (v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v70 = type metadata accessor for PMAccount(0);
  v9 = *(*(v70 - 8) + 64);
  MEMORY[0x28223BE20](v70);
  v72 = v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1920, &qword_21CBB2258);
  v11 = *(*(v78 - 8) + 64);
  MEMORY[0x28223BE20](v78);
  v79 = v62 - v12;
  v13 = type metadata accessor for PMCombinedAccountDetailsView();
  v75 = *(v13 - 8);
  v14 = *(v75 + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v76 = v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_21CB81024();
  v69 = *(v15 - 8);
  v16 = *(v69 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for PMPlatformRoleButton();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  v22 = (v62 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF18F8, &unk_21CBB2238);
  v23 = *(*(v77 - 8) + 64);
  MEMORY[0x28223BE20](v77);
  v25 = v62 - v24;
  v80 = sub_21CB81F14();
  v71 = *(v80 - 8);
  v26 = *(v71 + 64);
  MEMORY[0x28223BE20](v80);
  v28 = v62 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF18D8, &qword_21CBB2228);
  v82 = *(v29 - 8);
  v30 = *(v82 + 64);
  MEMORY[0x28223BE20](v29);
  v81 = v62 - v31;
  if (sub_21C92D6D0())
  {
    v62[1] = v14;
    v63 = v29;
    v64 = v4;
    v32 = *(v1 + 8);
    swift_getKeyPath();
    swift_getKeyPath();
    v62[2] = v32;
    sub_21CB81DB4();

    if (v84 == 1)
    {
      sub_21CB81F04();
      sub_21CB81014();
      v33 = sub_21CB81004();
      v35 = v34;
      (*(v69 + 8))(v18, v15);
      v36 = v71;
      (*(v71 + 16))(v22 + *(v19 + 20), v28, v80);
      v37 = v76;
      sub_21C942ED4(v1, v76, type metadata accessor for PMCombinedAccountDetailsView);
      v38 = (*(v75 + 80) + 16) & ~*(v75 + 80);
      v39 = swift_allocObject();
      sub_21C943454(v37, v39 + v38, type metadata accessor for PMCombinedAccountDetailsView);
      *v22 = v33;
      v22[1] = v35;
      v40 = (v22 + *(v19 + 24));
      *v40 = sub_21C942E0C;
      v40[1] = v39;
      sub_21C705F40(&qword_27CDEC040, type metadata accessor for PMPlatformRoleButton);
      sub_21CB845C4();
      sub_21C943938(v22, type metadata accessor for PMPlatformRoleButton);
      LOBYTE(v33) = sub_21CA4A55C();
      KeyPath = swift_getKeyPath();
      v42 = swift_allocObject();
      *(v42 + 16) = (v33 & 1) == 0;
      v43 = &v25[*(v77 + 36)];
      *v43 = KeyPath;
      v43[1] = sub_21C87E800;
      v43[2] = v42;
      sub_21C6EDBAC(v25, v79, &qword_27CDF18F8, &unk_21CBB2238);
      swift_storeEnumTagMultiPayload();
      sub_21C942BDC();
      sub_21C80ED6C();
      v44 = v81;
      sub_21CB83494();
      sub_21C6EA794(v25, &qword_27CDF18F8, &unk_21CBB2238);
      (*(v36 + 8))(v28, v80);
      v45 = 0;
      v46 = v63;
LABEL_12:
      v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF18E8, &qword_21CBB2230);
      (*(*(v60 - 8) + 56))(v44, v45, 1, v60);
      v61 = v83;
      sub_21C716934(v44, v83, &qword_27CDF18D8, &qword_21CBB2228);
      return (*(v82 + 56))(v61, 0, 1, v46);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v50 = v72;
    sub_21CB81DB4();

    v51 = v74;
    sub_21C942ED4(v50 + *(v70 + 24), v74, type metadata accessor for PMAccount.Storage);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_21C943938(v50, type metadata accessor for PMAccount);
      sub_21C943938(v51, type metadata accessor for PMAccount.Storage);
      v46 = v63;
      v44 = v81;
    }

    else
    {
      v52 = *v51;
      v53 = [v52 userIsNeverSaveMarker];

      sub_21C943938(v50, type metadata accessor for PMAccount);
      v46 = v63;
      v44 = v81;
      if (v53)
      {
        v45 = 1;
        goto LABEL_12;
      }
    }

    v54 = v76;
    sub_21C942ED4(v1, v76, type metadata accessor for PMCombinedAccountDetailsView);
    v55 = (*(v75 + 80) + 16) & ~*(v75 + 80);
    v56 = swift_allocObject();
    sub_21C943454(v54, v56 + v55, type metadata accessor for PMCombinedAccountDetailsView);
    v57 = v65;
    sub_21CB84DA4();
    sub_21C6EADEC(&qword_27CDEBE50, &qword_27CDEBE40, &unk_21CBA8200);
    v59 = v67;
    v58 = v68;
    sub_21CB845C4();
    (*(v66 + 8))(v57, v58);
    sub_21C6EDBAC(v59, v79, &qword_27CDEC948, &qword_21CBA4E30);
    swift_storeEnumTagMultiPayload();
    sub_21C942BDC();
    sub_21C80ED6C();
    sub_21CB83494();
    sub_21C6EA794(v59, &qword_27CDEC948, &qword_21CBA4E30);
    v45 = 0;
    goto LABEL_12;
  }

  v47 = v83;
  v48 = *(v82 + 56);

  return v48(v47, 1, 1, v29);
}

uint64_t sub_21C9342D0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21CB80E34();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v41 = &v35[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v40 = &v35[-v8];
  v9 = type metadata accessor for PMMoveAccountToGroupPicker.PresentationState(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v35[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v13);
  v15 = &v35[-v14];
  v16 = type metadata accessor for PMShareAccountButton();
  v17 = *(v16 - 1);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v35[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (sub_21C934730())
  {
    v37 = v4;
    v38 = v3;
    v39 = a1;
    v21 = *(v1 + 8);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_21CB81DB4();

    if (v43)
    {
      v22 = 1;
      a1 = v39;
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v23 = &v20[v16[8]];
      sub_21CB81DB4();

      v36 = sub_21C93B800();
      v24 = sub_21C93B9F0();
      v25 = type metadata accessor for PMMoveAccountToGroupAlert.Configuration(0);
      (*(*(v25 - 8) + 56))(v15, 1, 1, v25);
      v26 = *(v9 + 20);
      v27 = type metadata accessor for PMAccount(0);
      (*(*(v27 - 8) + 56))(&v15[v26], 1, 1, v27);
      sub_21C942ED4(v15, v12, type metadata accessor for PMMoveAccountToGroupPicker.PresentationState);
      sub_21CB84D44();
      sub_21C943938(v15, type metadata accessor for PMMoveAccountToGroupPicker.PresentationState);
      v28 = v16[5];
      v29 = v40;
      sub_21CB80E24();
      v31 = v37;
      v30 = v38;
      (*(v37 + 16))(v41, v29, v38);
      sub_21CB84D44();
      (*(v31 + 8))(v29, v30);
      v32 = &v20[v16[6]];
      v42 = 0;
      sub_21CB84D44();
      v33 = v44;
      *v32 = v43;
      *(v32 + 1) = v33;
      *&v20[v16[7]] = 0;
      v20[v16[9]] = v36 & 1;
      v20[v16[10]] = v24;
      a1 = v39;
      sub_21C943454(v20, v39, type metadata accessor for PMShareAccountButton);
      v22 = 0;
    }
  }

  else
  {
    v22 = 1;
  }

  return (*(v17 + 56))(a1, v22, 1, v16);
}

uint64_t sub_21C934730()
{
  v1 = sub_21CB82F84();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = *(v0 + 88);
  if (*(v0 + 96) == 1)
  {
    if (v6)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v7 = *(v0 + 88);

    sub_21CB85B04();
    v8 = sub_21CB83C94();
    sub_21CB81C14();

    sub_21CB82F74();
    swift_getAtKeyPath();
    sub_21C7025C4(v6, 0);
    (*(v2 + 8))(v5, v1);
    if (v11[15])
    {
      goto LABEL_7;
    }
  }

  if ((sub_21C938D40() & 1) == 0 && !sub_21C930630())
  {
    v9 = 1;
    return v9 & 1;
  }

LABEL_7:
  v9 = sub_21C93B800();
  return v9 & 1;
}

uint64_t sub_21C9348A8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v18 - v8;
  sub_21CB81014();
  sub_21CB81014();
  v10 = sub_21CB80FF4();
  v12 = v11;
  v13 = *(v3 + 8);
  v13(v6, v2);
  v13(v9, v2);
  v18[0] = v10;
  v18[1] = v12;
  sub_21C71F3FC();
  result = sub_21CB84054();
  *a1 = result;
  *(a1 + 8) = v15;
  *(a1 + 16) = v16 & 1;
  *(a1 + 24) = v17;
  return result;
}

uint64_t sub_21C934A30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a1;
  v33 = a2;
  v2 = sub_21CB839C4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21CB81024();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v32 - v13;
  sub_21CB81014();
  sub_21CB81014();
  sub_21CB80FF4();
  v15 = *(v8 + 8);
  v15(v11, v7);
  v15(v14, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_21CBA0690;
  if (qword_27CDEA3B8 != -1)
  {
    swift_once();
  }

  v17 = qword_27CDF2480;
  [qword_27CDF2480 setDoesRelativeDateFormatting_];
  v18 = sub_21CB80D24();
  v19 = [v17 stringFromDate_];

  v20 = sub_21CB855C4();
  v22 = v21;

  *(v16 + 56) = MEMORY[0x277D837D0];
  *(v16 + 64) = sub_21C7C0050();
  *(v16 + 32) = v20;
  *(v16 + 40) = v22;
  v23 = sub_21CB85594();
  v25 = v24;

  v34 = v23;
  v35 = v25;
  sub_21C71F3FC();
  v26 = sub_21CB84054();
  v28 = v27;
  v34 = v26;
  v35 = v27;
  LOBYTE(v19) = v29 & 1;
  v36 = v29 & 1;
  v37 = v30;
  sub_21CB839B4();
  sub_21CB84244();
  (*(v3 + 8))(v6, v2);
  sub_21C74A72C(v26, v28, v19);
}

uint64_t sub_21C934DA8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v30 = a1;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF17F8, &qword_21CBB1EA0);
  v3 = *(v29 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v29);
  v28 = &v27 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDED250, &qword_21CBA64C0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v27 - v8;
  v10 = type metadata accessor for PMAccount(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_21CB80DD4();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v2 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  sub_21C7CBEBC(v9);
  sub_21C943938(v13, type metadata accessor for PMAccount);
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    sub_21C6EA794(v9, &unk_27CDED250, &qword_21CBA64C0);
    return (*(v3 + 56))(v30, 1, 1, v29);
  }

  else
  {
    v21 = (*(v15 + 32))(v18, v9, v14);
    v27 = &v27;
    MEMORY[0x28223BE20](v21);
    *(&v27 - 2) = v18;
    MEMORY[0x28223BE20](v22);
    *(&v27 - 2) = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1838, &unk_21CBB1F20);
    v23 = sub_21CB839C4();
    v31 = MEMORY[0x277CE0BD8];
    v32 = v23;
    v33 = MEMORY[0x277CE0BC8];
    v34 = MEMORY[0x277CE0758];
    swift_getOpaqueTypeConformance2();
    v24 = v28;
    sub_21CB825D4();
    v26 = v29;
    v25 = v30;
    (*(v3 + 32))(v30, v24, v29);
    (*(v3 + 56))(v25, 0, 1, v26);
    return (*(v15 + 8))(v18, v14);
  }
}

uint64_t sub_21C9351CC()
{
  v0 = sub_21CB839C4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21CB81024();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  sub_21CB81004();
  (*(v6 + 8))(v9, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_21CBA0690;
  if (qword_27CDEA3B8 != -1)
  {
    swift_once();
  }

  v11 = qword_27CDF2480;
  [qword_27CDF2480 setDoesRelativeDateFormatting_];
  v12 = sub_21CB80D24();
  v13 = [v11 stringFromDate_];

  v14 = sub_21CB855C4();
  v16 = v15;

  *(v10 + 56) = MEMORY[0x277D837D0];
  *(v10 + 64) = sub_21C7C0050();
  *(v10 + 32) = v14;
  *(v10 + 40) = v16;
  v17 = sub_21CB85594();
  v19 = v18;

  v26 = v17;
  v27 = v19;
  sub_21C71F3FC();
  v20 = sub_21CB84054();
  v22 = v21;
  v26 = v20;
  v27 = v21;
  LOBYTE(v13) = v23 & 1;
  v28 = v23 & 1;
  v29 = v24;
  sub_21CB839B4();
  sub_21CB84244();
  (*(v1 + 8))(v4, v0);
  sub_21C74A72C(v20, v22, v13);
}

uint64_t sub_21C9354F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21CB81024();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v9 = sub_21CB81004();
  v11 = v10;
  (*(v5 + 8))(v8, v4);
  v28 = v9;
  v29 = v11;
  sub_21C71F3FC();
  v12 = sub_21CB84054();
  v14 = v13;
  v16 = v15;
  v17 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  if (v28 == 1)
  {
    v18 = sub_21CB837E4();
  }

  else
  {
    v18 = sub_21CB837B4();
  }

  LODWORD(v28) = v18;
  v19 = sub_21CB83FC4();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  sub_21C74A72C(v12, v14, v16 & 1);

  *a2 = v19;
  *(a2 + 8) = v21;
  *(a2 + 16) = v23 & 1;
  *(a2 + 24) = v25;
  return result;
}

double sub_21C9356F8@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_21C9359E8())
  {
    sub_21CB81014();
    v7 = sub_21CB81004();
    v9 = v8;
    (*(v3 + 8))(v6, v2);
    *&v46 = v7;
    *(&v46 + 1) = v9;
    sub_21C71F3FC();
    v10 = sub_21CB84054();
    v12 = v11;
    v14 = v13;
    *&v46 = sub_21CB84A64();
    v15 = sub_21CB83FC4();
    v17 = v16;
    v19 = v18;
    v21 = v20;
    sub_21C74A72C(v10, v12, v14 & 1);

    v41 = v15;
    v42 = v17;
    v43 = v19 & 1;
    v44 = v21;
    v45 = 0;
  }

  else
  {
    sub_21CB81014();
    v22 = sub_21CB81004();
    v24 = v23;
    (*(v3 + 8))(v6, v2);
    *&v46 = v22;
    *(&v46 + 1) = v24;
    sub_21C71F3FC();
    v25 = sub_21CB84054();
    v27 = v26;
    v29 = v28;
    *&v46 = sub_21CB84A64();
    v30 = sub_21CB83FC4();
    v32 = v31;
    v34 = v33;
    v36 = v35;
    sub_21C74A72C(v25, v27, v29 & 1);

    v41 = v30;
    v42 = v32;
    v43 = v34 & 1;
    v44 = v36;
    v45 = 1;
  }

  sub_21CB83494();
  result = *&v46;
  v38 = v47;
  v39 = v48;
  *a1 = v46;
  *(a1 + 16) = v38;
  *(a1 + 32) = v39;
  return result;
}

uint64_t sub_21C9359E8()
{
  v1 = type metadata accessor for PMAccount(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  PMAccount.password.getter();
  v7 = v6;
  sub_21C943938(v4, type metadata accessor for PMAccount);
  if (!v7)
  {
    return 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  if (!v10)
  {
    return 0;
  }

  return 1;
}

uint64_t sub_21C935B30@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v105 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1AE0, &unk_21CBB23F0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v103 = v87 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBB58, &qword_21CBAF8A0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v93 = v87 - v10;
  v106 = sub_21CB83ED4();
  v94 = *(v106 - 8);
  v11 = *(v94 + 64);
  MEMORY[0x28223BE20](v106);
  v92 = v87 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_21CB81024();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = v87 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = v87 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1AE8, &qword_21CBB2400);
  v22 = *(*(v21 - 1) + 64);
  MEMORY[0x28223BE20](v21);
  v24 = (v87 - v23);
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1AF0, &qword_21CBB2408);
  v25 = *(*(v101 - 8) + 64);
  MEMORY[0x28223BE20](v101);
  v104 = v87 - v26;
  v27 = *(a2 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v102 = a1;
  v107 = v27;
  if (v109 == 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_21CB81DB4();

    v28 = v109 ^ 1;
  }

  else
  {
    v28 = 1;
  }

  sub_21CB81014();
  sub_21CB81014();
  v29 = sub_21CB80FF4();
  v98 = v30;
  v99 = v29;
  v31 = *(v14 + 8);
  v31(v17, v13);
  v31(v20, v13);
  sub_21CB81014();
  sub_21CB81014();
  v32 = sub_21CB80FF4();
  v96 = v33;
  v97 = v32;
  v31(v17, v13);
  v31(v20, v13);
  v100 = v28;
  if (v28)
  {
    v34 = v102;
    v35 = *(v102 + 4);
    v95 = *(v102 + 3);
    v36 = v94;
    v37 = v92;
    (*(v94 + 104))(v92, *MEMORY[0x277CE0A68], v106);
    v38 = *MEMORY[0x277CE0980];
    v39 = sub_21CB83DC4();
    v40 = *(v39 - 8);
    v41 = v93;
    (*(v40 + 104))(v93, v38, v39);
    (*(v40 + 56))(v41, 0, 1, v39);

    sub_21CB83E04();
    v91 = sub_21CB83E24();
    sub_21C6EA794(v41, &qword_27CDEBB58, &qword_21CBAF8A0);
    v42 = v37;
    v43 = v34;
    (*(v36 + 8))(v42, v106);
    v44 = *(v34 + 2);
    v106 = *(v34 + 1);

    v94 = v44;
    v90 = v35;
  }

  else
  {
    sub_21CB81014();
    v95 = sub_21CB81004();
    v90 = v45;
    v31(v20, v13);
    v46 = v94;
    v47 = v92;
    v48 = v106;
    (*(v94 + 104))(v92, *MEMORY[0x277CE0A68], v106);
    v49 = sub_21CB83DC4();
    v50 = v93;
    (*(*(v49 - 8) + 56))(v93, 1, 1, v49);
    v91 = sub_21CB83E24();
    sub_21C6EA794(v50, &qword_27CDEBB58, &qword_21CBAF8A0);
    (*(v46 + 8))(v47, v48);
    v106 = 0;
    v94 = 0;
    v43 = v102;
    v44 = *(v102 + 2);
    v35 = *(v102 + 4);
  }

  v87[1] = v44;
  swift_getKeyPath();
  swift_getKeyPath();
  swift_bridgeObjectRetain_n();
  v92 = v35;
  swift_bridgeObjectRetain_n();
  sub_21CB81DB4();

  LODWORD(v93) = v109;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v89 = v109;
  v51 = v21[12];
  v88 = v51;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1AF8, &qword_21CBB2410);
  v53 = *(*(v52 - 8) + 56);
  v53(v24 + v51, 1, 1, v52);
  v54 = (v24 + v21[15]);
  v55 = v24 + v21[23];
  v108 = 0;
  sub_21CB84D44();
  v56 = v110;
  *v55 = v109;
  *(v55 + 1) = v56;
  v57 = v24 + v21[24];
  v108 = 0;
  sub_21CB84D44();
  v58 = v110;
  *v57 = v109;
  *(v57 + 1) = v58;
  v59 = v24 + v21[25];
  v108 = 0;
  sub_21CB84D44();
  v60 = v110;
  *v59 = v109;
  *(v59 + 1) = v60;
  v61 = v24 + v21[26];
  v108 = 0;
  sub_21CB84D44();
  v62 = v110;
  *v61 = v109;
  *(v61 + 1) = v62;
  v63 = v24 + v21[27];
  *v63 = swift_getKeyPath();
  *(v63 + 1) = 0;
  v63[16] = 0;
  v64 = v24 + v21[28];
  *v64 = swift_getKeyPath();
  v64[8] = 0;
  v65 = v21[29];
  *(v24 + v65) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB998, &qword_21CBA2700);
  swift_storeEnumTagMultiPayload();
  v66 = (v24 + v21[30]);
  type metadata accessor for PMCombinedAccountDetailsModel(0);
  sub_21C705F40(&qword_27CDEB520, type metadata accessor for PMCombinedAccountDetailsModel);
  *v66 = sub_21CB823C4();
  v66[1] = v67;
  v68 = v21[31];
  type metadata accessor for PMWiFiDetailsModel();
  sub_21C705F40(&qword_27CDEB9B0, type metadata accessor for PMWiFiDetailsModel);
  sub_21CB821F4();
  *(v24 + v21[32]) = 0;
  v69 = (v24 + v21[33]);
  *v69 = 0x707954656772616CLL;
  v69[1] = 0xE900000000000065;
  v70 = v98;
  *v24 = v99;
  v24[1] = v70;
  v71 = v96;
  v24[2] = v97;
  v24[3] = v71;
  v73 = v90;
  v72 = v91;
  v24[4] = v95;
  v24[5] = v73;
  v24[6] = v72;
  v74 = v100;
  LOBYTE(v65) = v100 & 1;
  v75 = v103;
  sub_21C93676C(v43, v100 & 1, v103);
  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
  v53(v75, 0, 1, v52);
  sub_21C7D3344(v75, v24 + v88, &qword_27CDF1AE0, &unk_21CBB23F0);
  *(v24 + v21[13]) = 0;
  *(v24 + v21[14]) = 0;
  v76 = v94;
  *v54 = v106;
  v54[1] = v76;
  *(v24 + v21[16]) = v65;
  *(v24 + v21[17]) = (v93 & 1) == 0;
  *(v24 + v21[18]) = v65;
  *(v24 + v21[19]) = v65;
  *(v24 + v21[20]) = v89;
  *(v24 + v21[21]) = v65;
  *(v24 + v21[22]) = (v74 & 1) == 0;
  v77 = *MEMORY[0x277D49BF0];
  sub_21CB855C4();
  v78 = [objc_opt_self() pm_defaults];
  v79 = sub_21CB81E74();
  v80 = v104;
  sub_21C716934(v24, v104, &qword_27CDF1AE8, &qword_21CBB2400);
  v81 = v80 + *(v101 + 36);
  *v81 = v79;
  *(v81 + 8) = v65;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  LOBYTE(v65) = v109;
  KeyPath = swift_getKeyPath();
  v83 = swift_allocObject();
  *(v83 + 16) = v65;
  v84 = v105;
  sub_21C716934(v80, v105, &qword_27CDF1AF0, &qword_21CBB2408);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1B00, &unk_21CBB2470);
  v86 = (v84 + *(result + 36));
  *v86 = KeyPath;
  v86[1] = sub_21C87E800;
  v86[2] = v83;
  return result;
}

uint64_t sub_21C93676C@<X0>(__int128 *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  v28 = a1[1];
  v29 = v6;
  v27 = *(a1 + 4);
  v7 = *(a1 + 5);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1B08, &qword_21CBCF820);
  v9 = v8 - 8;
  v10 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v26 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1B10, &qword_21CBB2480);
  v14 = v13 - 8;
  v15 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v26 - v16;
  *v12 = v7;
  *&v31 = 0x402C000000000000;
  sub_21CB84D44();
  v18 = *(&v32 + 1);
  *(v12 + 1) = v32;
  *(v12 + 2) = v18;
  *(v12 + 3) = swift_getKeyPath();
  v12[32] = 0;
  v19 = *(v9 + 52);
  *&v12[v19] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1B18, &unk_21CBB3F50);
  swift_storeEnumTagMultiPayload();
  v20 = *(v9 + 56);
  *&v12[v20] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB998, &qword_21CBA2700);
  swift_storeEnumTagMultiPayload();
  if (a2)
  {
    v21 = 1.0;
  }

  else
  {
    v21 = 0.0;
  }

  sub_21C716934(v12, v17, &qword_27CDF1B08, &qword_21CBCF820);
  *&v17[*(v14 + 44)] = v21;
  sub_21C716934(v17, a3, &qword_27CDF1B10, &qword_21CBB2480);
  v22 = *(a1 + 8);
  v31 = *(a1 + 24);
  v32 = v22;
  v23 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1AF8, &qword_21CBB2410) + 36);
  v24 = v28;
  *v23 = v29;
  *(v23 + 16) = v24;
  *(v23 + 32) = v27;
  *(v23 + 40) = v7;
  sub_21C805950(&v32, v30);
  return sub_21C805950(&v31, v30);
}

uint64_t sub_21C9369D0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC300, &qword_21CBA3ED0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v7 = MEMORY[0x28223BE20](v6).n128_u64[0];
  v9 = &v19 - v8;
  v10 = [a1 exportableURL];
  if (v10)
  {
    v11 = v10;
    sub_21CB80B94();

    v12 = sub_21CB80BE4();
    (*(*(v12 - 8) + 56))(v5, 0, 1, v12);
  }

  else
  {
    v12 = sub_21CB80BE4();
    (*(*(v12 - 8) + 56))(v5, 1, 1, v12);
  }

  sub_21C716934(v5, v9, &qword_27CDEC300, &qword_21CBA3ED0);
  sub_21CB80BE4();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v9, 1, v12) == 1)
  {
    return sub_21C6EA794(v9, &qword_27CDEC300, &qword_21CBA3ED0);
  }

  v15 = sub_21CB80B64();
  v17 = v16;
  (*(v13 + 8))(v9, v12);
  if (qword_27CDEA480 != -1)
  {
    swift_once();
  }

  v18 = *(qword_27CE18710 + 16);
  sub_21CADAA84(v15, v17, 1);
}

uint64_t sub_21C936C64()
{
  v0 = sub_21CB839C4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21CB81024();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v10 = sub_21CB81004();
  v12 = v11;
  (*(v6 + 8))(v9, v5);
  v19 = v10;
  v20 = v12;
  sub_21C71F3FC();
  v13 = sub_21CB84054();
  v15 = v14;
  v19 = v13;
  v20 = v14;
  LOBYTE(v6) = v16 & 1;
  v21 = v16 & 1;
  v22 = v17;
  sub_21CB839B4();
  sub_21CB84244();
  (*(v1 + 8))(v4, v0);
  sub_21C74A72C(v13, v15, v6);
}

uint64_t sub_21C936E7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21CB81024();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v9 = sub_21CB81004();
  v11 = v10;
  (*(v5 + 8))(v8, v4);
  v28 = v9;
  v29 = v11;
  sub_21C71F3FC();
  v12 = sub_21CB84054();
  v14 = v13;
  v16 = v15;
  v17 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  if (v28 == 1)
  {
    v18 = sub_21CB837E4();
  }

  else
  {
    v18 = sub_21CB837B4();
  }

  LODWORD(v28) = v18;
  v19 = sub_21CB83FC4();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  sub_21C74A72C(v12, v14, v16 & 1);

  *a2 = v19;
  *(a2 + 8) = v21;
  *(a2 + 16) = v23 & 1;
  *(a2 + 24) = v25;
  return result;
}

uint64_t sub_21C937098(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for PMCombinedAccountDetailsView() + 60));
  v2 = *v1;
  v3 = *(v1 + 1);
  v4 = v1[16];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1640, &qword_21CBB1A60);
  result = sub_21CB81F54();
  if (v6 <= 2u)
  {
    return sub_21CB81F64();
  }

  return result;
}

uint64_t sub_21C937180@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v175 = a2;
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1758, &qword_21CBB1D38);
  v3 = *(*(v172 - 8) + 64);
  MEMORY[0x28223BE20](v172);
  v167 = &v126 - v4;
  v161 = type metadata accessor for PMCombinedAccountDetailsView();
  v136 = *(v161 - 8);
  v5 = *(v136 + 64);
  MEMORY[0x28223BE20](v161);
  v137 = v6;
  v139 = &v126 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1760, &qword_21CBB1D40);
  v163 = *(v164 - 8);
  v7 = *(v163 + 64);
  MEMORY[0x28223BE20](v164);
  v138 = &v126 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1768, &qword_21CBB1D48);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v165 = &v126 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v166 = &v126 - v13;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDFC8, &qword_21CBAC3B0);
  v143 = *(v144 - 8);
  v14 = *(v143 + 64);
  MEMORY[0x28223BE20](v144);
  v142 = &v126 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE010, &qword_21CBA92E0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v141 = &v126 - v18;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDFD0, &qword_21CBA9260);
  v19 = *(*(v146 - 8) + 64);
  MEMORY[0x28223BE20](v146);
  v145 = &v126 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDFD8, &qword_21CBA9268);
  v148 = *(v21 - 8);
  v22 = *(v148 + 64);
  MEMORY[0x28223BE20](v21);
  v147 = &v126 - v23;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDFE0, &qword_21CBA9270);
  v24 = *(*(v149 - 8) + 64);
  MEMORY[0x28223BE20](v149);
  v26 = &v126 - v25;
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDFE8, &qword_21CBA9278);
  v152 = *(v154 - 8);
  v27 = *(v152 + 64);
  MEMORY[0x28223BE20](v154);
  v150 = &v126 - v28;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1770, &qword_21CBB1D50);
  v153 = *(v155 - 8);
  v29 = *(v153 + 64);
  MEMORY[0x28223BE20](v155);
  v151 = &v126 - v30;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1778, &qword_21CBB1D58);
  v159 = *(v160 - 8);
  v31 = *(v159 + 64);
  MEMORY[0x28223BE20](v160);
  v158 = &v126 - v32;
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1780, &qword_21CBB1D60);
  v33 = *(*(v157 - 8) + 64);
  MEMORY[0x28223BE20](v157);
  v162 = &v126 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v156 = &v126 - v36;
  MEMORY[0x28223BE20](v37);
  v174 = &v126 - v38;
  v169 = sub_21CB81024();
  v39 = *(v169 - 8);
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v169);
  v42 = &v126 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v43);
  v168 = &v126 - v44;
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1788, &qword_21CBB1D68);
  v45 = *(*(v170 - 8) + 64);
  MEMORY[0x28223BE20](v170);
  v171 = &v126 - v46;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1790, &qword_21CBB1D70);
  v48 = *(*(v47 - 8) + 64);
  MEMORY[0x28223BE20](v47);
  v50 = &v126 - v49;
  v176 = a1;
  v51 = a1[1];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v52 = v185;

  v53 = HIBYTE(*(&v52 + 1)) & 0xFLL;
  if ((*(&v52 + 1) & 0x2000000000000000) == 0)
  {
    v53 = v52 & 0xFFFFFFFFFFFFLL;
  }

  if (v53 && (swift_getKeyPath(), swift_getKeyPath(), sub_21CB81DB4(), , , (v185 & 1) == 0))
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_21CB81DB4();

    sub_21C94250C();
    sub_21CB845C4();

    sub_21C6EDBAC(v50, v171, &qword_27CDF1790, &qword_21CBB1D70);
    swift_storeEnumTagMultiPayload();
    sub_21C942560();
    sub_21C6EADEC(&qword_27CDF17A8, &qword_27CDF1758, &qword_21CBB1D38);
    v109 = v175;
    sub_21CB83494();
    sub_21C6EA794(v50, &qword_27CDF1790, &qword_21CBB1D70);
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_21CB81DB4();

    v54 = v185;

    v55 = HIBYTE(*(&v54 + 1)) & 0xFLL;
    if ((*(&v54 + 1) & 0x2000000000000000) == 0)
    {
      v55 = v54 & 0xFFFFFFFFFFFFLL;
    }

    if (v55)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_21CB81DB4();

      if (v185 != 1)
      {
        v123 = 1;
        v109 = v175;
        goto LABEL_23;
      }
    }

    v135 = v47;
    v56 = v168;
    sub_21CB81014();
    sub_21CB81014();
    v57 = sub_21CB80FF4();
    v59 = v58;
    v60 = *(v39 + 8);
    v61 = v169;
    v60(v42, v169);
    v129 = v39 + 8;
    v127 = v60;
    v60(v56, v61);
    *&v185 = v57;
    *(&v185 + 1) = v59;
    v128 = sub_21C71F3FC();
    v62 = sub_21CB84054();
    v131 = v21;
    v63 = v62;
    v173 = v51;
    v65 = v64;
    v140 = v66;
    v130 = v26;
    v68 = v67;
    v69 = *v176;
    type metadata accessor for PMCombinedAccountDetailsModel(0);
    sub_21C705F40(&qword_27CDEB520, type metadata accessor for PMCombinedAccountDetailsModel);
    sub_21CB82684();
    swift_getKeyPath();
    sub_21CB82694();

    v70 = v185;
    v71 = v186;
    v72 = *MEMORY[0x277D49D50];
    swift_getKeyPath();
    swift_getKeyPath();
    sub_21CB81DB4();

    v73 = sub_21CB85694();

    if (v73 <= v72)
    {
      v74 = v72;
    }

    else
    {
      v74 = v73;
    }

    sub_21C91A0A0(v74, v70, *(&v70 + 1), v71, *(&v71 + 1));

    sub_21C79B058(v63, v65, v140 & 1);

    v75 = v142;
    v133 = v63;
    v132 = v65;
    v134 = v68;
    sub_21CB852E4();
    sub_21C6EADEC(&qword_27CDEDFF8, &qword_27CDEDFC8, &qword_21CBAC3B0);
    v76 = v141;
    v77 = v144;
    sub_21CB845C4();
    (*(v143 + 8))(v75, v77);
    KeyPath = swift_getKeyPath();
    v79 = v145;
    sub_21C716934(v76, v145, &qword_27CDEE010, &qword_21CBA92E0);
    v80 = v79 + *(v146 + 36);
    *v80 = KeyPath;
    *(v80 + 8) = 0;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_21CB81DB4();

    sub_21C853080();
    v81 = v147;
    sub_21CB849E4();
    sub_21C6EA794(v79, &qword_27CDEDFD0, &qword_21CBA9260);
    sub_21CB85224();
    sub_21CB82AC4();
    v82 = v130;
    (*(v148 + 32))(v130, v81, v131);
    v83 = v149;
    v84 = (v82 + *(v149 + 36));
    v85 = v82;
    v86 = v190;
    v84[4] = v189;
    v84[5] = v86;
    v84[6] = v191;
    v87 = v186;
    *v84 = v185;
    v84[1] = v87;
    v88 = v188;
    v84[2] = v187;
    v84[3] = v88;
    v89 = sub_21C853220();
    v90 = v150;
    sub_21CB841E4();
    sub_21C6EA794(v85, &qword_27CDEDFE0, &qword_21CBA9270);
    v91 = v176 + *(v161 + 60);
    v92 = *v91;
    v93 = *(v91 + 1);
    LOBYTE(v91) = v91[16];
    LOBYTE(v177) = v92;
    v178 = v93;
    LOBYTE(v179) = v91;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1640, &qword_21CBB1A60);
    sub_21CB81F74();
    v177 = v182;
    v178 = v183;
    LOBYTE(v179) = v184;
    v181 = 3;
    v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1438, &qword_21CBB14B8);
    v182 = v83;
    v183 = v89;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v96 = sub_21C940D0C();
    v97 = v151;
    v98 = v154;
    sub_21CB84824();

    (*(v152 + 8))(v90, v98);
    v177 = v98;
    v178 = v94;
    v179 = OpaqueTypeConformance2;
    v180 = v96;
    swift_getOpaqueTypeConformance2();
    v99 = v158;
    v100 = v155;
    sub_21CB84314();
    (*(v153 + 8))(v97, v100);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_21CB81DB4();

    v101 = 1;

    if ((v177 & 1) == 0)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_21CB81DB4();

      v102 = v177;
      v103 = v178;

      v104 = HIBYTE(v103) & 0xF;
      if ((v103 & 0x2000000000000000) == 0)
      {
        v104 = v102 & 0xFFFFFFFFFFFFLL;
      }

      v101 = v104 != 0;
    }

    v105 = v156;
    (*(v159 + 32))(v156, v99, v160);
    *(v105 + *(v157 + 36)) = v101;
    sub_21C716934(v105, v174, &qword_27CDF1780, &qword_21CBB1D60);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_21CB81DB4();

    if (v177)
    {
      v106 = 1;
      v107 = v166;
      v108 = v164;
    }

    else
    {
      v110 = v168;
      sub_21CB81014();
      v111 = sub_21CB81004();
      v113 = v112;
      v127(v110, v169);
      v177 = v111;
      v178 = v113;
      v114 = v139;
      sub_21C942ED4(v176, v139, type metadata accessor for PMCombinedAccountDetailsView);
      v115 = (*(v136 + 80) + 16) & ~*(v136 + 80);
      v116 = swift_allocObject();
      sub_21C943454(v114, v116 + v115, type metadata accessor for PMCombinedAccountDetailsView);
      v117 = v138;
      sub_21CB84DE4();
      v108 = v164;
      *(v117 + *(v164 + 36)) = 0;
      v107 = v166;
      sub_21C716934(v117, v166, &qword_27CDF1760, &qword_21CBB1D40);
      v106 = 0;
    }

    (*(v163 + 56))(v107, v106, 1, v108);
    v118 = v174;
    v119 = v162;
    sub_21C6EDBAC(v174, v162, &qword_27CDF1780, &qword_21CBB1D60);
    v120 = v165;
    sub_21C6EDBAC(v107, v165, &qword_27CDF1768, &qword_21CBB1D48);
    v121 = v167;
    sub_21C6EDBAC(v119, v167, &qword_27CDF1780, &qword_21CBB1D60);
    v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF17B8, &qword_21CBB1E10);
    sub_21C6EDBAC(v120, v121 + *(v122 + 48), &qword_27CDF1768, &qword_21CBB1D48);
    sub_21C6EA794(v120, &qword_27CDF1768, &qword_21CBB1D48);
    sub_21C6EA794(v119, &qword_27CDF1780, &qword_21CBB1D60);
    sub_21C6EDBAC(v121, v171, &qword_27CDF1758, &qword_21CBB1D38);
    swift_storeEnumTagMultiPayload();
    sub_21C942560();
    sub_21C6EADEC(&qword_27CDF17A8, &qword_27CDF1758, &qword_21CBB1D38);
    v109 = v175;
    sub_21CB83494();
    sub_21C74A72C(v133, v132, v140 & 1);

    sub_21C6EA794(v121, &qword_27CDF1758, &qword_21CBB1D38);
    sub_21C6EA794(v107, &qword_27CDF1768, &qword_21CBB1D48);
    sub_21C6EA794(v118, &qword_27CDF1780, &qword_21CBB1D60);
  }

  v123 = 0;
LABEL_23:
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF17B0, &qword_21CBB1DC0);
  return (*(*(v124 - 8) + 56))(v109, v123, 1, v124);
}

uint64_t sub_21C93889C()
{
  v1 = v0;
  v19 = sub_21CB853D4();
  v22 = *(v19 - 8);
  v2 = *(v22 + 64);
  MEMORY[0x28223BE20](v19);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21CB85404();
  v20 = *(v5 - 8);
  v21 = v5;
  v6 = *(v20 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PMCombinedAccountDetailsView();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = *(v0 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(aBlock[0]) = 1;
  swift_retain_n();
  sub_21CB81DC4();
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(aBlock[0]) = 1;
  sub_21CB81DC4();
  sub_21C6E8F4C(0, &qword_27CDEBE70, 0x277D85C78);
  v13 = sub_21CB85CF4();
  sub_21C942ED4(v1, &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMCombinedAccountDetailsView);
  v14 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v15 = swift_allocObject();
  sub_21C943454(&v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14, type metadata accessor for PMCombinedAccountDetailsView);
  aBlock[4] = sub_21C942678;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21C6ECBD4;
  aBlock[3] = &block_descriptor_13;
  v16 = _Block_copy(aBlock);

  sub_21CB853E4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_21C705F40(&qword_27CDEAF48, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE80, &qword_21CBA37F0);
  sub_21C6EADEC(&qword_27CDEAF50, &unk_27CDEBE80, &qword_21CBA37F0);
  v17 = v19;
  sub_21CB85F14();
  MEMORY[0x21CF15800](0, v8, v4, v16);
  _Block_release(v16);

  (*(v22 + 8))(v4, v17);
  return (*(v20 + 8))(v8, v21);
}

uint64_t sub_21C938CC4(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for PMCombinedAccountDetailsView() + 60));
  v3 = *v1;
  v4 = *(v1 + 1);
  v5 = v1[16];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1640, &qword_21CBB1A60);
  return sub_21CB81F64();
}

uint64_t sub_21C938D40()
{
  v1 = type metadata accessor for PMAccount.Storage(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = (v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for PMAccount(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21CB82F84();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v14 = v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v0 + 72);
  if (*(v0 + 80) == 1)
  {
    sub_21C940A00(*(v0 + 72));
  }

  else
  {
    v21[0] = v12;

    sub_21CB85B04();
    v16 = sub_21CB83C94();
    sub_21CB81C14();

    sub_21CB82F74();
    swift_getAtKeyPath();
    sub_21C940E04(v15, 0);
    (*(v10 + 8))(v14, v21[0]);
    v15 = v21[1];
  }

  sub_21C8D75F0(v15);
  if (v15 >> 62 == 1)
  {
    return 1;
  }

  v18 = *(v0 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  sub_21C942ED4(&v8[*(v5 + 24)], v4, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C943938(v8, type metadata accessor for PMAccount);
    sub_21C943938(v4, type metadata accessor for PMAccount.Storage);
  }

  else
  {
    v19 = *v4;
    v20 = [v19 isRecentlyDeleted];

    sub_21C943938(v8, type metadata accessor for PMAccount);
    if (v20)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_21C939070@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v135 = a1;
  v118 = type metadata accessor for PMAccount.MockData(0);
  v3 = *(*(v118 - 8) + 64);
  MEMORY[0x28223BE20](v118);
  v119 = &v117 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = type metadata accessor for PMAccount.Storage(0);
  v5 = *(*(v124 - 8) + 64);
  MEMORY[0x28223BE20](v124);
  v121 = (&v117 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v125 = (&v117 - v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v126 = &v117 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v127 = &v117 - v13;
  v122 = type metadata accessor for PMAccount(0);
  v14 = *(*(v122 - 8) + 64);
  MEMORY[0x28223BE20](v122);
  v120 = &v117 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v123 = &v117 - v17;
  v18 = type metadata accessor for PMCombinedAccountDetailsView();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE38, &unk_21CBA3770);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v24 = &v117 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE40, &unk_21CBA8200);
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  v29 = &v117 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC948, &qword_21CBA4E30);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30 - 8);
  v33 = &v117 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF16C0, &qword_21CBB1BA0);
  v35 = v34 - 8;
  v36 = *(*(v34 - 8) + 64);
  MEMORY[0x28223BE20](v34);
  v128 = &v117 - v37;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF16C8, &qword_21CBB1BA8);
  v38 = *(*(v134 - 1) + 64);
  MEMORY[0x28223BE20](v134);
  v129 = &v117 - v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF16D0, &unk_21CBB1BB0);
  v41 = *(*(v40 - 8) + 64);
  MEMORY[0x28223BE20](v40 - 8);
  v136 = &v117 - v42;
  sub_21CB81ED4();
  v43 = sub_21CB81F14();
  (*(*(v43 - 8) + 56))(v24, 0, 1, v43);
  sub_21C942ED4(v2, &v117 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMCombinedAccountDetailsView);
  v44 = *(v19 + 80);
  v45 = (v44 + 16) & ~v44;
  v132 = v20;
  v130 = v44;
  v46 = swift_allocObject();
  v131 = v45;
  v133 = &v117 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21C943454(v133, v46 + v45, type metadata accessor for PMCombinedAccountDetailsView);
  sub_21CB84D94();
  sub_21C6EADEC(&qword_27CDEBE50, &qword_27CDEBE40, &unk_21CBA8200);
  sub_21CB845C4();
  v47 = v25;
  v48 = v128;
  (*(v26 + 8))(v29, v47);
  sub_21C938D40();
  sub_21CB85214();
  sub_21CB82AC4();
  v49 = v2;
  sub_21C716934(v33, v48, &qword_27CDEC948, &qword_21CBA4E30);
  v50 = (v48 + *(v35 + 44));
  v51 = v155;
  v52 = v157;
  v53 = v158;
  v50[4] = v156;
  v50[5] = v52;
  v50[6] = v53;
  v54 = v153;
  v55 = v154;
  *v50 = v152;
  v50[1] = v54;
  v50[2] = v55;
  v50[3] = v51;
  if ((sub_21C938D40() & 1) == 0)
  {
    goto LABEL_6;
  }

  v56 = *(v2 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  v57 = v123;
  sub_21CB81DB4();

  v58 = v122;
  v59 = v125;
  sub_21C942ED4(v57 + *(v122 + 24), v125, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C943938(v57, type metadata accessor for PMAccount);
    v60 = v59;
    v61 = v119;
    sub_21C943454(v60, v119, type metadata accessor for PMAccount.MockData);
    v62 = v126;
    sub_21C6EDBAC(v61 + *(v118 + 72), v126, &unk_27CDF20B0, &unk_21CBA0090);
    v63 = type metadata accessor for PMAccount.MockData;
    v64 = v61;
  }

  else
  {
    v65 = *v59;
    v62 = v126;
    sub_21CB85B94();

    v63 = type metadata accessor for PMAccount;
    v64 = v57;
  }

  sub_21C943938(v64, v63);
  v66 = v127;
  sub_21C716934(v62, v127, &unk_27CDF20B0, &unk_21CBA0090);
  v67 = sub_21CB85C44();
  v68 = (*(*(v67 - 8) + 48))(v66, 1, v67);
  sub_21C6EA794(v66, &unk_27CDF20B0, &unk_21CBA0090);
  if (v68 != 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v113 = v120;
    sub_21CB81DB4();

    v114 = v121;
    sub_21C942ED4(v113 + *(v58 + 24), v121, type metadata accessor for PMAccount.Storage);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_21C943938(v113, type metadata accessor for PMAccount);
      sub_21C943938(v114, type metadata accessor for PMAccount.Storage);
      v69 = 1;
    }

    else
    {
      v115 = *v114;
      v116 = [v115 isCurrentUserOriginalContributor];

      sub_21C943938(v113, type metadata accessor for PMAccount);
      v69 = v116 ^ 1;
    }
  }

  else
  {
LABEL_6:
    v69 = 0;
  }

  KeyPath = swift_getKeyPath();
  v71 = swift_allocObject();
  *(v71 + 16) = v69;
  v72 = v129;
  sub_21C716934(v48, v129, &qword_27CDF16C0, &qword_21CBB1BA0);
  v73 = (v72 + *(v134 + 9));
  *v73 = KeyPath;
  v73[1] = sub_21C87E800;
  v73[2] = v71;
  sub_21C9420F0();
  sub_21CB845C4();
  sub_21C6EA794(v72, &qword_27CDF16C8, &qword_21CBB1BA8);
  v129 = sub_21C92765C();
  v128 = v74;
  v134 = v49;
  v75 = *v49;
  v76 = v49[1];
  type metadata accessor for PMCombinedAccountDetailsModel(0);
  sub_21C705F40(&qword_27CDEB520, type metadata accessor for PMCombinedAccountDetailsModel);
  sub_21CB82684();
  swift_getKeyPath();
  sub_21CB82694();

  v78 = v149;
  v77 = v150;
  v79 = v151;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  MEMORY[0x28223BE20](v80);
  swift_getKeyPath();
  v146 = v78;
  v147 = v77;
  v148 = v79;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF16F0, &qword_21CBB1C78);
  sub_21CB84F44();

  v81 = v143;
  v82 = v144;
  v83 = v145;

  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v84 = v140;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v85 = v140;
  if (*(v140 + 16))
  {
    v86 = sub_21CB10C54(v84);
    if (v87)
    {
      v88 = *(*(v85 + 56) + 8 * v86);
    }
  }

  v90 = v128;
  v91 = 0xE100000000000000;
  if (v128)
  {
    v91 = v128;
  }

  v128 = v91;
  v92 = 63;
  if (v90)
  {
    v92 = v129;
  }

  v129 = v92;
  MEMORY[0x28223BE20](v89);
  swift_getKeyPath();
  v140 = v81;
  v141 = v82;
  v142 = v83;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1700, &qword_21CBB1CE0);
  sub_21CB84F44();

  v93 = v137;
  v94 = v138;
  LODWORD(v127) = v139;

  v95 = v134;
  v96 = v133;
  sub_21C942ED4(v134, v133, type metadata accessor for PMCombinedAccountDetailsView);
  v97 = v131;
  v98 = swift_allocObject();
  sub_21C943454(v96, v98 + v97, type metadata accessor for PMCombinedAccountDetailsView);
  sub_21C942ED4(v95, v96, type metadata accessor for PMCombinedAccountDetailsView);
  v99 = swift_allocObject();
  sub_21C943454(v96, v99 + v97, type metadata accessor for PMCombinedAccountDetailsView);
  v100 = swift_allocObject();
  *(v100 + 16) = sub_21C9440C4;
  *(v100 + 24) = v98;
  v101 = swift_allocObject();
  *(v101 + 16) = sub_21C9440C8;
  *(v101 + 24) = v99;
  v102 = swift_getKeyPath();
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF16A8, &qword_21CBB1B88);
  v104 = v135;
  v105 = (v135 + *(v103 + 36));
  *v105 = v102;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
  swift_storeEnumTagMultiPayload();
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1708, &unk_21CBB1CE8);
  *(v105 + v106[18]) = 0;
  v107 = (v105 + v106[15]);
  v108 = v128;
  *v107 = v129;
  v107[1] = v108;
  v109 = v105 + v106[16];
  *v109 = v93;
  *(v109 + 1) = v94;
  v109[16] = v127;
  *(v105 + v106[17]) = 2;
  *(v105 + v106[19]) = 2;
  v110 = (v105 + v106[20]);
  *v110 = sub_21C9440B4;
  v110[1] = v100;
  v111 = (v105 + v106[21]);
  *v111 = sub_21C9440CC;
  v111[1] = v101;
  return sub_21C716934(v136, v104, &qword_27CDF16D0, &unk_21CBB1BB0);
}

uint64_t sub_21C93A0BC@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF16A8, &qword_21CBB1B88);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v18 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF16B0, &qword_21CBB1B90);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v18 - v14;
  sub_21C93A2AC(&v18 - v14);
  sub_21C939070(v8);
  sub_21C6EDBAC(v15, v12, &qword_27CDF16B0, &qword_21CBB1B90);
  sub_21C6EDBAC(v8, v5, &qword_27CDF16A8, &qword_21CBB1B88);
  sub_21C6EDBAC(v12, a1, &qword_27CDF16B0, &qword_21CBB1B90);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF16B8, &qword_21CBB1B98);
  sub_21C6EDBAC(v5, a1 + *(v16 + 48), &qword_27CDF16A8, &qword_21CBB1B88);
  sub_21C6EA794(v8, &qword_27CDF16A8, &qword_21CBB1B88);
  sub_21C6EA794(v15, &qword_27CDF16B0, &qword_21CBB1B90);
  sub_21C6EA794(v5, &qword_27CDF16A8, &qword_21CBB1B88);
  return sub_21C6EA794(v12, &qword_27CDF16B0, &qword_21CBB1B90);
}

uint64_t sub_21C93A2AC@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1728, &qword_21CBB1D10);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v29 - v6;
  v8 = sub_21CB82F84();
  v32 = *(v8 - 8);
  v33 = v8;
  v9 = *(v32 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PMAccount.Storage(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = (&v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = type metadata accessor for PMAccount(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((sub_21C938D40() & 1) == 0)
  {
    goto LABEL_7;
  }

  v29 = v7;
  v30 = v3;
  v31 = a1;
  v20 = *(v1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  sub_21C942ED4(&v19[*(v16 + 24)], v15, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C943938(v19, type metadata accessor for PMAccount);
    sub_21C943938(v15, type metadata accessor for PMAccount.Storage);
  }

  else
  {
    v21 = *v15;
    v22 = [*v15 canUserEditSavedAccount];

    sub_21C943938(v19, type metadata accessor for PMAccount);
    if (!v22)
    {
      v26 = 1;
      v3 = v30;
      a1 = v31;
      return (*(v4 + 56))(a1, v26, 1, v3);
    }
  }

  v23 = v1 + *(type metadata accessor for PMCombinedAccountDetailsView() + 52);
  v24 = *v23;
  if (*(v23 + 8) != 1)
  {

    sub_21CB85B04();
    v27 = sub_21CB83C94();
    sub_21CB81C14();

    sub_21CB82F74();
    swift_getAtKeyPath();
    sub_21C7025C4(v24, 0);
    (*(v32 + 8))(v11, v33);
    v3 = v30;
    a1 = v31;
    v25 = v29;
    if (v34 != 1)
    {
      goto LABEL_7;
    }

LABEL_9:
    sub_21C93A6A4(v25);
    sub_21C716934(v25, a1, &qword_27CDF1728, &qword_21CBB1D10);
    v26 = 0;
    return (*(v4 + 56))(a1, v26, 1, v3);
  }

  v3 = v30;
  a1 = v31;
  v25 = v29;
  if (v24)
  {
    goto LABEL_9;
  }

LABEL_7:
  v26 = 1;
  return (*(v4 + 56))(a1, v26, 1, v3);
}

uint64_t sub_21C93A6A4@<X0>(uint64_t a1@<X8>)
{
  v95 = a1;
  v2 = type metadata accessor for PMCombinedAccountDetailsView();
  v81 = *(v2 - 8);
  v3 = *(v81 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v82 = v4;
  v83 = &v75 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE40, &unk_21CBA8200);
  v85 = *(v94 - 8);
  v5 = *(v85 + 64);
  MEMORY[0x28223BE20](v94);
  v84 = &v75 - v6;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1730, &qword_21CBB1D18);
  v7 = *(*(v91 - 8) + 64);
  MEMORY[0x28223BE20](v91);
  v93 = &v75 - v8;
  v9 = sub_21CB81024();
  v88 = *(v9 - 8);
  v89 = v9;
  v10 = *(v88 + 64);
  MEMORY[0x28223BE20](v9);
  v86 = &v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v87 = &v75 - v13;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1738, &unk_21CBB1D20);
  v76 = *(v92 - 8);
  v14 = *(v76 + 64);
  MEMORY[0x28223BE20](v92);
  v75 = &v75 - v15;
  v77 = type metadata accessor for PMAccount.MockData(0);
  v16 = *(*(v77 - 8) + 64);
  MEMORY[0x28223BE20](v77);
  v18 = &v75 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for PMAccount.Storage(0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  v80 = (&v75 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v22);
  v24 = (&v75 - v23);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v28 = &v75 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v31 = &v75 - v30;
  v32 = type metadata accessor for PMAccount(0);
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v32);
  v79 = &v75 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v37 = &v75 - v36;
  v90 = v1;
  v38 = *(v1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  v78 = v38;
  sub_21CB81DB4();

  sub_21C942ED4(&v37[*(v32 + 24)], v24, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C943938(v37, type metadata accessor for PMAccount);
    sub_21C943454(v24, v18, type metadata accessor for PMAccount.MockData);
    sub_21C6EDBAC(&v18[*(v77 + 72)], v28, &unk_27CDF20B0, &unk_21CBA0090);
    v39 = type metadata accessor for PMAccount.MockData;
    v40 = v18;
  }

  else
  {
    v41 = *v24;
    sub_21CB85B94();

    v39 = type metadata accessor for PMAccount;
    v40 = v37;
  }

  sub_21C943938(v40, v39);
  sub_21C716934(v28, v31, &unk_27CDF20B0, &unk_21CBA0090);
  v42 = sub_21CB85C44();
  v43 = (*(*(v42 - 8) + 48))(v31, 1, v42);
  sub_21C6EA794(v31, &unk_27CDF20B0, &unk_21CBA0090);
  if (v43 != 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v44 = v79;
    sub_21CB81DB4();

    v45 = v80;
    sub_21C942ED4(v44 + *(v32 + 24), v80, type metadata accessor for PMAccount.Storage);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_21C943938(v44, type metadata accessor for PMAccount);
      sub_21C943938(v45, type metadata accessor for PMAccount.Storage);
    }

    else
    {
      v46 = *v45;
      v47 = [v46 isCurrentUserOriginalContributor];

      sub_21C943938(v44, type metadata accessor for PMAccount);
      if (v47)
      {
        v48 = v87;
        sub_21CB81014();
        v49 = v86;
        sub_21CB81014();
        v50 = sub_21CB80FF4();
        v52 = v51;
        v53 = *(v88 + 8);
        v54 = v49;
        v55 = v89;
        v53(v54, v89);
        v56 = (v53)(v48, v55);
        v96 = v50;
        v97 = v52;
        MEMORY[0x28223BE20](v56);
        *(&v75 - 2) = v90;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1748, &qword_21CBBDF70);
        sub_21C6EADEC(&qword_27CDF1750, &qword_27CDF1748, &qword_21CBBDF70);
        sub_21C71F3FC();
        v57 = v75;
        sub_21CB83F64();
        v58 = v76;
        v59 = v92;
        (*(v76 + 16))(v93, v57, v92);
        swift_storeEnumTagMultiPayload();
        sub_21C6EADEC(&qword_27CDF1740, &qword_27CDF1738, &unk_21CBB1D20);
        sub_21C6EADEC(&qword_27CDEBE50, &qword_27CDEBE40, &unk_21CBA8200);
        sub_21CB83494();
        return (*(v58 + 8))(v57, v59);
      }
    }
  }

  v61 = v87;
  sub_21CB81014();
  v62 = v86;
  sub_21CB81014();
  v63 = sub_21CB80FF4();
  v65 = v64;
  v66 = *(v88 + 8);
  v67 = v62;
  v68 = v89;
  v66(v67, v89);
  v66(v61, v68);
  v96 = v63;
  v97 = v65;
  v69 = v83;
  sub_21C942ED4(v90, v83, type metadata accessor for PMCombinedAccountDetailsView);
  v70 = (*(v81 + 80) + 16) & ~*(v81 + 80);
  v71 = swift_allocObject();
  sub_21C943454(v69, v71 + v70, type metadata accessor for PMCombinedAccountDetailsView);
  sub_21C71F3FC();
  v72 = v84;
  sub_21CB84DE4();
  v73 = v85;
  v74 = v94;
  (*(v85 + 16))(v93, v72, v94);
  swift_storeEnumTagMultiPayload();
  sub_21C6EADEC(&qword_27CDF1740, &qword_27CDF1738, &unk_21CBB1D20);
  sub_21C6EADEC(&qword_27CDEBE50, &qword_27CDEBE40, &unk_21CBA8200);
  sub_21CB83494();
  return (*(v73 + 8))(v72, v74);
}

uint64_t sub_21C93B1D4@<X0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for PMAccount.Storage(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = (v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for PMAccount(0);
  v8 = v7 - 8;
  v9 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  sub_21C942ED4(&v11[*(v8 + 32)], v6, type metadata accessor for PMAccount.Storage);
  sub_21C943938(v11, type metadata accessor for PMAccount);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C943938(v6, type metadata accessor for PMAccount.Storage);
    result = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
  }

  else
  {
    v17 = *v6;
    v18 = [*v6 recentlyDeletedDetailViewDeleteSectionFooter];

    v19 = sub_21CB855C4();
    v21 = v20;

    v23[0] = v19;
    v23[1] = v21;
    sub_21C71F3FC();
    result = sub_21CB84054();
    v15 = v22 & 1;
  }

  *a1 = result;
  a1[1] = v14;
  a1[2] = v15;
  a1[3] = v16;
  return result;
}

uint64_t sub_21C93B3D4(uint64_t a1)
{
  v2 = type metadata accessor for PMAccount.Storage(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = (&v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for PMAccount(0);
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  sub_21C942ED4(&v10[*(v7 + 32)], v5, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C943938(v5, type metadata accessor for PMAccount.Storage);
    return sub_21C943938(v10, type metadata accessor for PMAccount);
  }

  v13 = *v5;
  v14 = [*v5 credentialTypes];

  result = sub_21C943938(v10, type metadata accessor for PMAccount);
  if (v14 > 7)
  {
    if ((v14 - 8) >= 2)
    {
      return result;
    }

    v15 = 5;
  }

  else
  {
    switch(v14)
    {
      case 1:
        v15 = 0;
        break;
      case 2:
        v15 = 2;
        break;
      case 3:
        v15 = 4;
        break;
      default:
        return result;
    }
  }

  return sub_21C927220(v15);
}

uint64_t sub_21C93B5F8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  if (!*(v13 + 16) || (v4 = sub_21CB10C54(v13), (v5 & 1) == 0))
  {

    goto LABEL_6;
  }

  v6 = *(*(v13 + 56) + 8 * v4);

  v7 = [v6 subtitle];

  if (!v7)
  {
LABEL_6:
    result = 0;
    v9 = 0;
    v12 = 0;
    v10 = 0;
    goto LABEL_7;
  }

  sub_21CB855C4();

  sub_21C71F3FC();
  result = sub_21CB84054();
  v12 = v11 & 1;
LABEL_7:
  *a2 = result;
  a2[1] = v9;
  a2[2] = v12;
  a2[3] = v10;
  return result;
}

uint64_t sub_21C93B770(uint64_t a1)
{
  v1 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_21CB81DC4();
}

id sub_21C93B800()
{
  v1 = type metadata accessor for PMAccount.Storage(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = (&v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for PMAccount(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [objc_opt_self() isOngoingCredentialSharingEnabled];
  if (result)
  {
    if ((sub_21C92D6D0() & 1) == 0)
    {
      return 0;
    }

    v10 = *(v0 + 8);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_21CB81DB4();

    sub_21C942ED4(&v8[*(v5 + 24)], v4, type metadata accessor for PMAccount.Storage);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_21C943938(v8, type metadata accessor for PMAccount);
      sub_21C943938(v4, type metadata accessor for PMAccount.Storage);
      return 0;
    }

    v11 = *v4;
    v12 = [v11 isCurrentUserOriginalContributor];

    sub_21C943938(v8, type metadata accessor for PMAccount);
    return v12;
  }

  return result;
}

BOOL sub_21C93B9F0()
{
  v1 = sub_21CB82F84();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = *(v0 + 88);
  if (*(v0 + 96) == 1)
  {
    if (v6)
    {
      return 0;
    }
  }

  else
  {
    v7 = *(v0 + 88);

    sub_21CB85B04();
    v8 = sub_21CB83C94();
    sub_21CB81C14();

    sub_21CB82F74();
    swift_getAtKeyPath();
    sub_21C7025C4(v6, 0);
    (*(v2 + 8))(v5, v1);
    if (v11[15])
    {
      return 0;
    }
  }

  if ((sub_21C938D40() & 1) == 0)
  {
    return !sub_21C930630();
  }

  return 0;
}

uint64_t sub_21C93BB64@<X0>(char *a1@<X8>)
{
  v64 = a1;
  v63 = sub_21CB82A04();
  v61 = *(v63 - 1);
  v1 = *(v61 + 64);
  MEMORY[0x28223BE20](v63);
  v58 = &v49 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE48, &qword_21CBA3780);
  v60 = *(v62 - 8);
  v3 = *(v60 + 64);
  MEMORY[0x28223BE20](v62);
  v59 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v66 = &v49 - v6;
  v7 = type metadata accessor for PMCombinedAccountDetailsView();
  v56 = *(v7 - 8);
  v55 = *(v56 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE38, &unk_21CBA3770);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v49 - v12;
  v14 = sub_21CB81024();
  v53 = v14;
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE40, &unk_21CBA8200);
  v67 = *(v57 - 8);
  v19 = *(v67 + 64);
  MEMORY[0x28223BE20](v57);
  v21 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v65 = &v49 - v23;
  sub_21CB81014();
  v24 = sub_21CB81004();
  v26 = v25;
  v52 = *(v15 + 8);
  v52(v18, v14);
  v68 = v24;
  v69 = v26;
  sub_21CB81ED4();
  v27 = sub_21CB81F14();
  v51 = *(*(v27 - 8) + 56);
  v51(v13, 0, 1, v27);
  sub_21C942ED4(v54, v9, type metadata accessor for PMCombinedAccountDetailsView);
  v28 = (*(v56 + 80) + 16) & ~*(v56 + 80);
  v29 = swift_allocObject();
  sub_21C943454(v9, v29 + v28, type metadata accessor for PMCombinedAccountDetailsView);
  sub_21C71F3FC();
  sub_21CB84DC4();
  sub_21CB81014();
  v30 = sub_21CB81004();
  v32 = v31;
  v52(v18, v53);
  v68 = v30;
  v69 = v32;
  sub_21CB81EF4();
  v51(v13, 0, 1, v27);
  sub_21CB84DC4();
  v33 = v58;
  sub_21CB829F4();
  sub_21C6EADEC(&qword_27CDEBE50, &qword_27CDEBE40, &unk_21CBA8200);
  v34 = v66;
  v35 = v57;
  sub_21CB84334();
  (*(v61 + 8))(v33, v63);
  v36 = v67;
  v63 = *(v67 + 8);
  v63(v21, v35);
  v37 = *(v36 + 16);
  v67 = v36 + 16;
  v50 = v21;
  v37(v21, v65, v35);
  v39 = v59;
  v38 = v60;
  v40 = *(v60 + 16);
  v41 = v62;
  v40(v59, v34, v62);
  v42 = v64;
  v37(v64, v21, v35);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1928, &qword_21CBB2290);
  v40(&v42[*(v43 + 48)], v39, v41);
  v44 = *(v38 + 8);
  v44(v66, v41);
  v45 = v35;
  v46 = v35;
  v47 = v63;
  v63(v65, v46);
  v44(v39, v41);
  return v47(v50, v45);
}

uint64_t sub_21C93C250(uint64_t a1)
{
  v1 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  swift_retain_n();
  sub_21CB81DC4();
  swift_getKeyPath();
  swift_getKeyPath();
  return sub_21CB81DC4();
}

uint64_t sub_21C93C30C()
{
  v1 = sub_21CB80DD4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PMAccount(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21CB81024();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_21CB85174();
  result = 0;
  if ((v15 & 1) == 0)
  {
    sub_21CB81014();
    sub_21CB81004();
    (*(v11 + 8))(v14, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_21CBA0690;
    v18 = *(v0 + 8);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_21CB81DB4();

    PMAccount.lastModifiedDate.getter(v5);
    sub_21C943938(v9, type metadata accessor for PMAccount);
    if (qword_27CDEA3B8 != -1)
    {
      swift_once();
    }

    v19 = qword_27CDF2480;
    [qword_27CDF2480 setDoesRelativeDateFormatting_];
    v20 = sub_21CB80D24();
    v21 = [v19 stringFromDate_];

    v22 = sub_21CB855C4();
    v24 = v23;

    (*(v2 + 8))(v5, v1);
    *(v17 + 56) = MEMORY[0x277D837D0];
    *(v17 + 64) = sub_21C7C0050();
    *(v17 + 32) = v22;
    *(v17 + 40) = v24;
    v25 = sub_21CB85594();

    return v25;
  }

  return result;
}

uint64_t sub_21C93C674@<X0>(uint64_t a1@<X8>)
{
  v31[1] = a1;
  v2 = type metadata accessor for PMAccountIcon();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC658, &qword_21CBB1FB0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v31 - v8;
  v10 = type metadata accessor for PMFileVaultRecoveryKeyIcon();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC638, &unk_21CBA4548);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = v31 - v19;
  v21 = (*(v1 + 8) + OBJC_IVAR____TtC17PasswordManagerUI29PMCombinedAccountDetailsModel_fileVaultRecoveryKeyModel);
  if (v21[1])
  {
    v22 = v21[7];
    *v13 = v21[6];
    *(v13 + 1) = v22;
    v31[0] = v2;
    v13[16] = 1;
    v23 = *(v10 + 24);
    *&v13[v23] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB5E0, &qword_21CBA21D0);
    swift_storeEnumTagMultiPayload();

    sub_21C93CAA0(v33);
    v24 = v33[0];
    v25 = v39;
    if (v36)
    {
      v26 = 0.3;
    }

    else
    {
      v26 = v35;
    }

    if (v36)
    {
      v27 = 0.3;
    }

    else
    {
      v27 = v34;
    }

    if (v38)
    {
      v28 = 0.6;
    }

    else
    {
      v28 = v37;
    }

    v32 = 1;
    sub_21C943454(v13, v17, type metadata accessor for PMFileVaultRecoveryKeyIcon);
    v29 = &v17[*(v14 + 36)];
    *v29 = v24;
    *(v29 + 1) = v27;
    *(v29 + 2) = v26;
    *(v29 + 3) = v28;
    *(v29 + 5) = 0;
    *(v29 + 6) = 0;
    *(v29 + 4) = 0x3FF1EB851EB851ECLL;
    v29[56] = 1;
    *(v29 + 8) = v25;
    sub_21C716934(v17, v20, &qword_27CDEC638, &unk_21CBA4548);
    sub_21C6EDBAC(v20, v9, &qword_27CDEC638, &unk_21CBA4548);
    swift_storeEnumTagMultiPayload();
    sub_21C805790();
    sub_21C705F40(&qword_27CDEC618, type metadata accessor for PMAccountIcon);
    sub_21CB83494();
    return sub_21C6EA794(v20, &qword_27CDEC638, &unk_21CBA4548);
  }

  else
  {
    sub_21C93CE14(v5);
    sub_21C942ED4(v5, v9, type metadata accessor for PMAccountIcon);
    swift_storeEnumTagMultiPayload();
    sub_21C805790();
    sub_21C705F40(&qword_27CDEC618, type metadata accessor for PMAccountIcon);
    sub_21CB83494();
    return sub_21C943938(v5, type metadata accessor for PMAccountIcon);
  }
}

int64x2_t sub_21C93CAA0@<Q0>(uint64_t a1@<X8>)
{
  v29 = type metadata accessor for PMAccount.MockData(0);
  v3 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29);
  v30 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PMAccount.Storage(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = (&v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v29 - v14;
  v16 = type metadata accessor for PMAccount(0);
  v17 = v16 - 8;
  v18 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  sub_21C942ED4(&v20[*(v17 + 32)], v8, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C943938(v20, type metadata accessor for PMAccount);
    v22 = v30;
    sub_21C943454(v8, v30, type metadata accessor for PMAccount.MockData);
    sub_21C6EDBAC(v22 + *(v29 + 72), v12, &unk_27CDF20B0, &unk_21CBA0090);
    v23 = type metadata accessor for PMAccount.MockData;
    v24 = v22;
  }

  else
  {
    v25 = *v8;
    sub_21CB85B94();

    v23 = type metadata accessor for PMAccount;
    v24 = v20;
  }

  sub_21C943938(v24, v23);
  sub_21C716934(v12, v15, &unk_27CDF20B0, &unk_21CBA0090);
  v26 = sub_21CB85C44();
  v27 = (*(*(v26 - 8) + 48))(v15, 1, v26) != 1;
  sub_21C6EA794(v15, &unk_27CDF20B0, &unk_21CBA0090);
  *a1 = v27;
  result = vdupq_n_s64(0x3FC999999999999AuLL);
  *(a1 + 8) = result;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0x3FD999999999999ALL;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  return result;
}

uint64_t sub_21C93CE14@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB2A8, &qword_21CBA1670);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v83 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v83 - v8;
  v10 = sub_21CB80E34();
  v97 = *(v10 - 8);
  v98 = v10;
  v11 = *(v97 + 64);
  MEMORY[0x28223BE20](v10);
  v96 = &v83 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v89 = &v83 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB3A0, &qword_21CBD0650);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v83 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v83 - v20;
  v22 = type metadata accessor for PMAccount(0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v99 = &v83 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v83 - v26;
  v28 = *(v1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  if (v102 != 1)
  {
    goto LABEL_8;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v30 = v102;
  v29 = v103;

  v31 = HIBYTE(v29) & 0xF;
  if ((v29 & 0x2000000000000000) == 0)
  {
    v31 = v30 & 0xFFFFFFFFFFFFLL;
  }

  if (v31)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_21CB81DB4();

    v99 = v102;
    v88 = v103;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_21CB81DB4();

    v87 = PMAccount.userVisibleDomain.getter();
    v86 = v32;
    sub_21C943938(v27, type metadata accessor for PMAccount);
    v33 = sub_21CB85B74();
    v34 = *(*(v33 - 8) + 56);
    v35 = v21;
    v34(v21, 1, 1, v33);
    sub_21C93CAA0(&v102);
    v85 = v102;
    v94 = v104;
    v95 = v103;
    v90 = v105;
    v93 = v106;
    v92 = v107;
    v91 = v108;
    KeyPath = swift_getKeyPath();
    if (qword_27CDEA4C0 != -1)
    {
      swift_once();
    }

    sub_21CB86544();
    sub_21C7072A8(KeyPath, v101);

    type metadata accessor for PMAccountsState();
    sub_21C705F40(&qword_27CDEAE08, type metadata accessor for PMAccountsState);
    v37 = sub_21CB82674();
    v39 = v38;

    *a1 = v37;
    *(a1 + 8) = v39;
    *(a1 + 16) = swift_getKeyPath();
    *(a1 + 24) = swift_getKeyPath();
    *(a1 + 32) = swift_getKeyPath();
    v100 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBA08, &qword_21CBA2A40);
    sub_21CB84D44();
    *(a1 + 40) = v101;
    v40 = type metadata accessor for PMAccountIcon();
    v41 = v40[11];
    v34((a1 + v41), 1, 1, v33);
    v42 = (a1 + v40[16]);
    v43 = a1 + v40[17];
    *v43 = sub_21C7E79A0;
    *(v43 + 8) = 0;
    *(v43 + 16) = 0;
    v44 = v40[18];
    v45 = v89;
    sub_21CB80E24();
    v46 = v97;
    v47 = v98;
    (*(v97 + 16))(v96, v45, v98);
    sub_21CB84D44();
    (*(v46 + 8))(v45, v47);
    v48 = v88;
    *(a1 + 56) = v99;
    *(a1 + 64) = v48;
    v49 = v86;
    *(a1 + 72) = v87;
    *(a1 + 80) = v49;
    result = sub_21C7D3344(v35, a1 + v41, &qword_27CDEB3A0, &qword_21CBD0650);
    *(a1 + v40[12]) = 1;
    *(a1 + v40[13]) = 1;
    *(a1 + v40[14]) = 1;
    v51 = a1 + v40[15];
    *v51 = xmmword_21CBA4340;
    *(v51 + 16) = 0;
    v52 = &v109;
  }

  else
  {
LABEL_8:
    swift_getKeyPath();
    swift_getKeyPath();
    sub_21CB81DB4();

    sub_21C93CAA0(&v102);
    v87 = v102;
    v94 = v104;
    v95 = v103;
    v90 = v105;
    v93 = v106;
    v92 = v107;
    v91 = v108;
    PMAccount.signInWithAppleAccount.getter(v9);
    v53 = type metadata accessor for PMSignInWithAppleAccount();
    v54 = *(*(v53 - 8) + 48);
    if (v54(v9, 1, v53) == 1)
    {
      sub_21C6EA794(v9, &qword_27CDEB2A8, &qword_21CBA1670);
      v86 = PMAccount.titleForSorting.getter();
      v85 = v55;
    }

    else
    {
      v56 = &v9[*(v53 + 24)];
      v57 = v56[1];
      v86 = *v56;
      v85 = v57;

      sub_21C943938(v9, type metadata accessor for PMSignInWithAppleAccount);
    }

    v84 = PMAccount.userVisibleDomain.getter();
    v83 = v58;
    PMAccount.signInWithAppleAccount.getter(v6);
    if (v54(v6, 1, v53) == 1)
    {
      sub_21C6EA794(v6, &qword_27CDEB2A8, &qword_21CBA1670);
      v59 = sub_21CB85B74();
      (*(*(v59 - 8) + 56))(v18, 1, 1, v59);
    }

    else
    {
      v60 = *(v53 + 20);
      v61 = sub_21CB85B74();
      v62 = *(v61 - 8);
      (*(v62 + 16))(v18, &v6[v60], v61);
      sub_21C943938(v6, type metadata accessor for PMSignInWithAppleAccount);
      (*(v62 + 56))(v18, 0, 1, v61);
    }

    v88 = v18;
    v63 = swift_getKeyPath();
    if (qword_27CDEA4C0 != -1)
    {
      swift_once();
    }

    sub_21CB86544();
    sub_21C7072A8(v63, v101);

    type metadata accessor for PMAccountsState();
    sub_21C705F40(&qword_27CDEAE08, type metadata accessor for PMAccountsState);
    v64 = sub_21CB82674();
    v66 = v65;

    *a1 = v64;
    *(a1 + 8) = v66;
    *(a1 + 16) = swift_getKeyPath();
    *(a1 + 24) = swift_getKeyPath();
    *(a1 + 32) = swift_getKeyPath();
    v100 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBA08, &qword_21CBA2A40);
    sub_21CB84D44();
    *(a1 + 40) = v101;
    v67 = type metadata accessor for PMAccountIcon();
    v68 = v67[11];
    v69 = sub_21CB85B74();
    (*(*(v69 - 8) + 56))(a1 + v68, 1, 1, v69);
    v42 = (a1 + v67[16]);
    v70 = a1 + v67[17];
    *v70 = sub_21C7E79A0;
    *(v70 + 8) = 0;
    *(v70 + 16) = 0;
    v71 = v67[18];
    v72 = v89;
    sub_21CB80E24();
    v73 = v97;
    v74 = v98;
    (*(v97 + 16))(v96, v72, v98);
    sub_21CB84D44();
    (*(v73 + 8))(v72, v74);
    sub_21C943938(v99, type metadata accessor for PMAccount);
    v75 = v85;
    *(a1 + 56) = v86;
    *(a1 + 64) = v75;
    v76 = v83;
    *(a1 + 72) = v84;
    *(a1 + 80) = v76;
    result = sub_21C7D3344(v88, a1 + v68, &qword_27CDEB3A0, &qword_21CBD0650);
    *(a1 + v67[12]) = 1;
    *(a1 + v67[13]) = 1;
    *(a1 + v67[14]) = 1;
    v77 = a1 + v67[15];
    *v77 = xmmword_21CBA4340;
    *(v77 + 16) = 0;
    v52 = &v110;
  }

  v78 = *(v52 - 32);
  v79 = v90;
  v80 = v94;
  v81 = v95;
  *v42 = v78;
  v42[1] = v81;
  v42[2] = v80;
  v42[3] = v79;
  v82 = v92;
  v42[4] = v93;
  v42[5] = v82;
  v42[6] = v91;
  return result;
}

uint64_t sub_21C93DA18(uint64_t a1)
{
  v2 = type metadata accessor for PMCombinedAccountDetailsView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1D50, &qword_21CBA0C00);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v16 - v8;
  v10 = sub_21CB858E4();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  sub_21C942ED4(a1, v5, type metadata accessor for PMCombinedAccountDetailsView);
  sub_21CB858B4();
  v11 = sub_21CB858A4();
  v12 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D85700];
  *(v13 + 16) = v11;
  *(v13 + 24) = v14;
  sub_21C943454(v5, v13 + v12, type metadata accessor for PMCombinedAccountDetailsView);
  sub_21C98B308(0, 0, v9, &unk_21CBB1D08, v13);
}

uint64_t sub_21C93DBF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a4;
  v5 = type metadata accessor for PMAccount.Storage(0);
  v4[5] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[6] = swift_task_alloc();
  v7 = type metadata accessor for PMAccount(0);
  v4[7] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v4[8] = swift_task_alloc();
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();
  v4[12] = sub_21CB858B4();
  v4[13] = sub_21CB858A4();
  v10 = sub_21CB85874();
  v4[14] = v10;
  v4[15] = v9;

  return MEMORY[0x2822009F8](sub_21C93DD18, v10, v9);
}

uint64_t sub_21C93DD18()
{
  *(v0 + 128) = *(*(v0 + 32) + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v1 = *(v0 + 16);
  if (v1 > 1)
  {
    switch(v1)
    {
      case 2:
        v10 = *(v0 + 88);
        v9 = *(v0 + 96);
        *(v0 + 144) = *(*(v0 + 32) + 24);
        swift_getKeyPath();
        swift_getKeyPath();
        sub_21CB81DB4();

        *(v0 + 152) = sub_21CB858A4();
        v4 = sub_21CB85874();
        v6 = v11;
        *(v0 + 160) = v4;
        *(v0 + 168) = v11;
        v7 = sub_21C93E354;
        goto LABEL_11;
      case 4:
        v12 = *(v0 + 96);
        v13 = *(v0 + 80);
        *(v0 + 192) = *(*(v0 + 32) + 24);
        swift_getKeyPath();
        swift_getKeyPath();
        sub_21CB81DB4();

        *(v0 + 200) = sub_21CB858A4();
        v4 = sub_21CB85874();
        v6 = v14;
        *(v0 + 208) = v4;
        *(v0 + 216) = v14;
        v7 = sub_21C93E6B4;
        goto LABEL_11;
      case 5:
        v2 = *(v0 + 96);
        v3 = *(v0 + 72);
        *(v0 + 240) = *(*(v0 + 32) + 24);
        swift_getKeyPath();
        swift_getKeyPath();
        sub_21CB81DB4();

        *(v0 + 248) = sub_21CB858A4();
        v4 = sub_21CB85874();
        v6 = v5;
        *(v0 + 256) = v4;
        *(v0 + 264) = v5;
        v7 = sub_21C93EC08;
LABEL_11:

        return MEMORY[0x2822009F8](v7, v4, v6);
    }

    goto LABEL_17;
  }

  if (v1)
  {
    if (v1 == 1)
    {
      v8 = *(v0 + 104);

      swift_getKeyPath();
      swift_getKeyPath();
      *(v0 + 24) = 0;

      sub_21CB81DC4();
LABEL_18:
      v17 = *(v0 + 128);
      v19 = *(v0 + 56);
      v18 = *(v0 + 64);
      v21 = *(v0 + 40);
      v20 = *(v0 + 48);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_21CB81DB4();

      sub_21C942ED4(v18 + *(v19 + 24), v20, type metadata accessor for PMAccount.Storage);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v23 = *(v0 + 64);
      v24 = *(v0 + 48);
      if (EnumCaseMultiPayload == 1)
      {
        sub_21C943938(*(v0 + 64), type metadata accessor for PMAccount);
        sub_21C943938(v24, type metadata accessor for PMAccount.Storage);
      }

      else
      {
        v25 = *v24;
        v26 = [v25 isRecentlyDeleted];

        sub_21C943938(v23, type metadata accessor for PMAccount);
        if (v26)
        {
          v27 = *(v0 + 128);
          swift_getKeyPath();
          swift_getKeyPath();
          *(v0 + 288) = 0;

          sub_21CB81DC4();
        }
      }

      v29 = *(v0 + 80);
      v28 = *(v0 + 88);
      v31 = *(v0 + 64);
      v30 = *(v0 + 72);
      v32 = *(v0 + 48);

      v33 = *(v0 + 8);

      return v33();
    }

LABEL_17:
    v16 = *(v0 + 104);

    goto LABEL_18;
  }

  v15 = swift_task_alloc();
  *(v0 + 136) = v15;
  *v15 = v0;
  v15[1] = sub_21C93E234;

  return sub_21CA4A830();
}

uint64_t sub_21C93E234()
{
  v1 = *v0;
  v2 = *(*v0 + 136);
  v6 = *v0;

  v3 = *(v1 + 120);
  v4 = *(v1 + 112);

  return MEMORY[0x2822009F8](sub_21C9440C0, v4, v3);
}

uint64_t sub_21C93E354()
{
  v1 = v0[18];
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[22] = Strong;
  if (Strong)
  {
    v3 = *(v0[18] + 24);
    ObjectType = swift_getObjectType();
    v5 = *(v3 + 96);
    v13 = (v5 + *v5);
    v6 = v5[1];
    v7 = swift_task_alloc();
    v0[23] = v7;
    *v7 = v0;
    v7[1] = sub_21C93E4F0;
    v8 = v0[11];

    return v13(2, v8, ObjectType, v3);
  }

  else
  {
    v10 = v0[19];

    sub_21C943938(v0[11], type metadata accessor for PMAccount);
    v11 = v0[14];
    v12 = v0[15];

    return MEMORY[0x2822009F8](sub_21C9440C0, v11, v12);
  }
}

uint64_t sub_21C93E4F0()
{
  v1 = *v0;
  v2 = *(*v0 + 184);
  v3 = *(*v0 + 176);
  v7 = *v0;

  swift_unknownObjectRelease();
  v4 = *(v1 + 168);
  v5 = *(v1 + 160);

  return MEMORY[0x2822009F8](sub_21C93E634, v5, v4);
}

uint64_t sub_21C93E634()
{
  v1 = v0[19];

  sub_21C943938(v0[11], type metadata accessor for PMAccount);
  v2 = v0[14];
  v3 = v0[15];

  return MEMORY[0x2822009F8](sub_21C9440C0, v2, v3);
}

uint64_t sub_21C93E6B4()
{
  v1 = v0[24];
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[28] = Strong;
  if (Strong)
  {
    v3 = *(v0[24] + 24);
    ObjectType = swift_getObjectType();
    v5 = *(v3 + 96);
    v13 = (v5 + *v5);
    v6 = v5[1];
    v7 = swift_task_alloc();
    v0[29] = v7;
    *v7 = v0;
    v7[1] = sub_21C93E850;
    v8 = v0[10];

    return v13(3, v8, ObjectType, v3);
  }

  else
  {
    v10 = v0[25];

    sub_21C943938(v0[10], type metadata accessor for PMAccount);
    v11 = v0[14];
    v12 = v0[15];

    return MEMORY[0x2822009F8](sub_21C93EA14, v11, v12);
  }
}

uint64_t sub_21C93E850()
{
  v1 = *v0;
  v2 = *(*v0 + 232);
  v3 = *(*v0 + 224);
  v7 = *v0;

  swift_unknownObjectRelease();
  v4 = *(v1 + 216);
  v5 = *(v1 + 208);

  return MEMORY[0x2822009F8](sub_21C93E994, v5, v4);
}

uint64_t sub_21C93E994()
{
  v1 = v0[25];

  sub_21C943938(v0[10], type metadata accessor for PMAccount);
  v2 = v0[14];
  v3 = v0[15];

  return MEMORY[0x2822009F8](sub_21C93EA14, v2, v3);
}

uint64_t sub_21C93EA14()
{
  v1 = *(v0 + 104);

  v2 = *(v0 + 128);
  v4 = *(v0 + 56);
  v3 = *(v0 + 64);
  v6 = *(v0 + 40);
  v5 = *(v0 + 48);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  sub_21C942ED4(v3 + *(v4 + 24), v5, type metadata accessor for PMAccount.Storage);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v8 = *(v0 + 64);
  v9 = *(v0 + 48);
  if (EnumCaseMultiPayload == 1)
  {
    sub_21C943938(*(v0 + 64), type metadata accessor for PMAccount);
    sub_21C943938(v9, type metadata accessor for PMAccount.Storage);
  }

  else
  {
    v10 = *v9;
    v11 = [v10 isRecentlyDeleted];

    sub_21C943938(v8, type metadata accessor for PMAccount);
    if (v11)
    {
      v12 = *(v0 + 128);
      swift_getKeyPath();
      swift_getKeyPath();
      *(v0 + 288) = 0;

      sub_21CB81DC4();
    }
  }

  v14 = *(v0 + 80);
  v13 = *(v0 + 88);
  v16 = *(v0 + 64);
  v15 = *(v0 + 72);
  v17 = *(v0 + 48);

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_21C93EC08()
{
  v1 = v0[30];
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[34] = Strong;
  if (Strong)
  {
    v3 = *(v0[30] + 24);
    ObjectType = swift_getObjectType();
    v5 = *(v3 + 96);
    v13 = (v5 + *v5);
    v6 = v5[1];
    v7 = swift_task_alloc();
    v0[35] = v7;
    *v7 = v0;
    v7[1] = sub_21C93EDA4;
    v8 = v0[9];

    return v13(9, v8, ObjectType, v3);
  }

  else
  {
    v10 = v0[31];

    sub_21C943938(v0[9], type metadata accessor for PMAccount);
    v11 = v0[14];
    v12 = v0[15];

    return MEMORY[0x2822009F8](sub_21C9440C0, v11, v12);
  }
}

uint64_t sub_21C93EDA4()
{
  v1 = *v0;
  v2 = *(*v0 + 280);
  v3 = *(*v0 + 272);
  v7 = *v0;

  swift_unknownObjectRelease();
  v4 = *(v1 + 264);
  v5 = *(v1 + 256);

  return MEMORY[0x2822009F8](sub_21C93EEE8, v5, v4);
}

uint64_t sub_21C93EEE8()
{
  v1 = v0[31];

  sub_21C943938(v0[9], type metadata accessor for PMAccount);
  v2 = v0[14];
  v3 = v0[15];

  return MEMORY[0x2822009F8](sub_21C9440C0, v2, v3);
}

void sub_21C93EF68(void *a1, uint64_t a2)
{
  v4 = sub_21CB82F84();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21CB80BE4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v15 = MEMORY[0x28223BE20](v14).n128_u64[0];
  v17 = &v25 - v16;
  v18 = [a1 userVisibleDomain];
  if (!v18)
  {
    sub_21CB855C4();
    v18 = sub_21CB85584();
  }

  v19 = [v18 safari_bestURLForUserTypedString];

  if (v19)
  {
    sub_21CB80B94();

    (*(v10 + 32))(v17, v13, v9);
    v21 = *(a2 + 48);
    v20 = *(a2 + 56);
    if (*(a2 + 64) == 1)
    {
      v22 = *(a2 + 56);
    }

    else
    {
      v23 = *(a2 + 48);

      sub_21CB85B04();
      v24 = sub_21CB83C94();
      sub_21CB81C14();

      sub_21CB82F74();
      swift_getAtKeyPath();
      sub_21C79C1F4();
      (*(v5 + 8))(v8, v4);
      v21 = v25;
    }

    v21(v17);

    (*(v10 + 8))(v17, v9);
  }
}

uint64_t sub_21C93F228(uint64_t a1)
{
  v2 = type metadata accessor for PMAccount(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  sub_21CA4AE80(v5);
  return sub_21C943938(v5, type metadata accessor for PMAccount);
}

uint64_t sub_21C93F304(uint64_t a1)
{
  v1 = *(a1 + 8);
  result = sub_21CA49F24();
  v3 = *(v1 + OBJC_IVAR____TtC17PasswordManagerUI29PMCombinedAccountDetailsModel_onUncommittedChangesAlertConfirmation);
  if (v3)
  {
    v4 = *(v1 + OBJC_IVAR____TtC17PasswordManagerUI29PMCombinedAccountDetailsModel_onUncommittedChangesAlertConfirmation + 8);

    v3(v5);

    return sub_21C71B710(v3);
  }

  return result;
}

uint64_t sub_21C93F378(uint64_t a1)
{
  v2 = type metadata accessor for PMAccount(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  sub_21CA4AE80(v5);
  result = sub_21C943938(v5, type metadata accessor for PMAccount);
  v8 = *(v6 + OBJC_IVAR____TtC17PasswordManagerUI29PMCombinedAccountDetailsModel_onUncommittedChangesAlertConfirmation);
  if (v8)
  {
    v9 = *(v6 + OBJC_IVAR____TtC17PasswordManagerUI29PMCombinedAccountDetailsModel_onUncommittedChangesAlertConfirmation + 8);

    v8(v10);
    return sub_21C71B710(v8);
  }

  return result;
}

uint64_t sub_21C93F48C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v25[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v9 = &v25[-v8];
  sub_21CB81014();
  sub_21CB81014();
  v10 = sub_21CB80FF4();
  v12 = v11;
  v13 = *(v3 + 8);
  v13(v6, v2);
  v13(v9, v2);
  v26 = v10;
  v27 = v12;
  sub_21C71F3FC();
  v14 = sub_21CB84054();
  v16 = v15;
  LOBYTE(v9) = v17;
  LODWORD(v26) = sub_21CB837E4();
  v18 = sub_21CB83FC4();
  v20 = v19;
  LOBYTE(v13) = v21;
  v23 = v22;
  sub_21C74A72C(v14, v16, v9 & 1);

  *a1 = v18;
  *(a1 + 8) = v20;
  *(a1 + 16) = v13 & 1;
  *(a1 + 24) = v23;
  return result;
}

uint64_t sub_21C93F680@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21CB81024();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v30[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v11 = &v30[-v10];
  sub_21CB81014();
  sub_21CB81014();
  v12 = sub_21CB80FF4();
  v14 = v13;
  v15 = *(v5 + 8);
  v15(v8, v4);
  v15(v11, v4);
  v31 = v12;
  v32 = v14;
  sub_21C71F3FC();
  v16 = sub_21CB84054();
  v18 = v17;
  v20 = v19;
  v21 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  if (v31 == 1)
  {
    sub_21CB84B34();
  }

  else
  {
    sub_21CB84B14();
  }

  v22 = sub_21CB83FB4();
  v24 = v23;
  v26 = v25;
  v28 = v27;

  sub_21C74A72C(v16, v18, v20 & 1);

  *a2 = v22;
  *(a2 + 8) = v24;
  *(a2 + 16) = v26 & 1;
  *(a2 + 24) = v28;
  return result;
}

uint64_t sub_21C93F8C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v25 = a3;
  v24 = sub_21CB839C4();
  v5 = *(v24 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v24);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = a1;
  v27 = a2;
  sub_21C71F3FC();

  v9 = sub_21CB84054();
  v11 = v10;
  v13 = v12;
  LODWORD(v26) = sub_21CB837E4();
  v14 = sub_21CB83FC4();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  sub_21C74A72C(v9, v11, v13 & 1);

  v26 = v14;
  v27 = v16;
  v28 = v18 & 1;
  v29 = v20;
  sub_21CB839B4();
  v21 = v24;
  sub_21CB84244();
  (*(v5 + 8))(v8, v21);
  sub_21C74A72C(v14, v16, v18 & 1);
}

uint64_t sub_21C93FA94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21CB81024();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v9 = sub_21CB81004();
  v11 = v10;
  (*(v5 + 8))(v8, v4);
  v27 = v9;
  v28 = v11;
  sub_21C71F3FC();
  v12 = sub_21CB84054();
  v14 = v13;
  v16 = v15;
  v17 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  if (v27 == 1)
  {
    sub_21CB84B34();
  }

  else
  {
    sub_21CB84B14();
  }

  v18 = sub_21CB83FB4();
  v20 = v19;
  v22 = v21;
  v24 = v23;

  sub_21C74A72C(v12, v14, v16 & 1);

  *a2 = v18;
  *(a2 + 8) = v20;
  *(a2 + 16) = v22 & 1;
  *(a2 + 24) = v24;
  return result;
}

uint64_t sub_21C93FC94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21CB80DD4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PMAccount(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  PMAccount.lastModifiedDate.getter(v8);
  sub_21C943938(v12, type metadata accessor for PMAccount);
  if (qword_27CDEA3B8 != -1)
  {
    swift_once();
  }

  v14 = qword_27CDF2480;
  [qword_27CDF2480 setDoesRelativeDateFormatting_];
  v15 = sub_21CB80D24();
  v16 = [v14 stringFromDate_];

  v17 = sub_21CB855C4();
  v19 = v18;

  (*(v5 + 8))(v8, v4);
  v24[0] = v17;
  v24[1] = v19;
  sub_21C71F3FC();
  result = sub_21CB84054();
  *a2 = result;
  *(a2 + 8) = v21;
  *(a2 + 16) = v22 & 1;
  *(a2 + 24) = v23;
  return result;
}

uint64_t sub_21C93FEF0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v7 = sub_21CB81004();
  v9 = v8;
  (*(v3 + 8))(v6, v2);
  v14[0] = v7;
  v14[1] = v9;
  sub_21C71F3FC();
  result = sub_21CB84054();
  *a1 = result;
  *(a1 + 8) = v11;
  *(a1 + 16) = v12 & 1;
  *(a1 + 24) = v13;
  return result;
}

uint64_t sub_21C940014@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v55 = a1;
  v52 = a2;
  v2 = type metadata accessor for PMCombinedAccountDetailsView();
  v48 = *(v2 - 8);
  v3 = *(v48 + 8);
  MEMORY[0x28223BE20](v2 - 8);
  v45[1] = v3;
  v53 = v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21CB81024();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v45 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE40, &unk_21CBA8200);
  v13 = *(v12 - 8);
  v14 = v13[8];
  MEMORY[0x28223BE20](v12);
  v51 = v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v50 = v45 - v17;
  MEMORY[0x28223BE20](v18);
  v49 = v45 - v19;
  MEMORY[0x28223BE20](v20);
  v54 = v45 - v21;
  sub_21CB81014();
  sub_21CB81014();
  v22 = sub_21CB80FF4();
  v24 = v23;
  v25 = *(v5 + 8);
  v46 = v4;
  v25(v8, v4);
  v25(v11, v4);
  v56 = v22;
  v57 = v24;
  v47 = type metadata accessor for PMCombinedAccountDetailsView;
  v26 = v53;
  sub_21C942ED4(v55, v53, type metadata accessor for PMCombinedAccountDetailsView);
  v27 = (*(v48 + 80) + 16) & ~*(v48 + 80);
  v28 = swift_allocObject();
  v48 = type metadata accessor for PMCombinedAccountDetailsView;
  sub_21C943454(v26, v28 + v27, type metadata accessor for PMCombinedAccountDetailsView);
  v45[0] = sub_21C71F3FC();
  sub_21CB84DE4();
  sub_21CB81014();
  sub_21CB81014();
  v29 = sub_21CB80FF4();
  v31 = v30;
  v32 = v8;
  v33 = v46;
  v25(v32, v46);
  v25(v11, v33);
  v56 = v29;
  v57 = v31;
  v34 = v53;
  sub_21C942ED4(v55, v53, v47);
  v35 = swift_allocObject();
  sub_21C943454(v34, v35 + v27, v48);
  v36 = v49;
  sub_21CB84DE4();
  v37 = v13[2];
  v38 = v50;
  v39 = v54;
  v37(v50, v54, v12);
  v40 = v51;
  v37(v51, v36, v12);
  v41 = v52;
  v37(v52, v38, v12);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0168, &qword_21CBB1D30);
  v37(&v41[*(v42 + 48)], v40, v12);
  v43 = v13[1];
  v43(v36, v12);
  v43(v39, v12);
  v43(v40, v12);
  return (v43)(v38, v12);
}

uint64_t sub_21C940588(uint64_t a1)
{
  v1 = *(a1 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC2B0, &unk_21CBA0D70);
  v2 = *(type metadata accessor for PMAccount(0) - 8);
  v3 = *(v2 + 72);
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  *(swift_allocObject() + 16) = xmmword_21CBA0690;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_21CB81DB4();

  swift_getKeyPath();
  swift_getKeyPath();
  return sub_21CB81DC4();
}

uint64_t sub_21C9406CC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21CB82E94();
  *a1 = result;
  return result;
}

uint64_t sub_21C9406F8(uint64_t *a1)
{
  v1 = *a1;

  return sub_21CB82EA4();
}

uint64_t sub_21C940748@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  *a2 = v5;
  return result;
}

uint64_t sub_21C9407C8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_21CB81DC4();
}

uint64_t sub_21C940864@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  *a2 = v5;
  return result;
}

uint64_t sub_21C9408E4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_21CB81DC4();
}

uint64_t type metadata accessor for PMCombinedAccountDetailsView()
{
  result = qword_27CDF1408;
  if (!qword_27CDF1408)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_21C9409AC()
{
  result = qword_27CDF1400;
  if (!qword_27CDF1400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF1400);
  }

  return result;
}

unint64_t sub_21C940A00(unint64_t result)
{
  if ((result >> 62) <= 1)
  {
  }

  return result;
}

void sub_21C940A54()
{
  sub_21C940C08();
  if (v0 <= 0x3F)
  {
    sub_21C705CFC();
    if (v1 <= 0x3F)
    {
      sub_21C70640C();
      if (v2 <= 0x3F)
      {
        sub_21C72DE24(319, &unk_27CDEA9D0);
        if (v3 <= 0x3F)
        {
          sub_21C72DE24(319, &qword_27CDF1420);
          if (v4 <= 0x3F)
          {
            sub_21C72DE24(319, &qword_27CDEB890);
            if (v5 <= 0x3F)
            {
              sub_21C72C81C();
              if (v6 <= 0x3F)
              {
                sub_21C72DE24(319, &qword_27CDED658);
                if (v7 <= 0x3F)
                {
                  sub_21C7086F8();
                  if (v8 <= 0x3F)
                  {
                    sub_21C72DE24(319, &qword_27CDF1428);
                    if (v9 <= 0x3F)
                    {
                      sub_21C940C9C();
                      if (v10 <= 0x3F)
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

void sub_21C940C08()
{
  if (!qword_27CDF1418)
  {
    type metadata accessor for PMCombinedAccountDetailsModel(255);
    sub_21C705F40(&qword_27CDEB520, type metadata accessor for PMCombinedAccountDetailsModel);
    v0 = sub_21CB826A4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDF1418);
    }
  }
}

void sub_21C940C9C()
{
  if (!qword_27CDF1430)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF1438, &qword_21CBB14B8);
    sub_21C940D0C();
    v0 = sub_21CB81FB4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDF1430);
    }
  }
}

unint64_t sub_21C940D0C()
{
  result = qword_27CDF1440;
  if (!qword_27CDF1440)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF1438, &qword_21CBB14B8);
    sub_21C9409AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF1440);
  }

  return result;
}

unint64_t sub_21C940D94()
{
  result = qword_27CDF1448;
  if (!qword_27CDF1448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF1448);
  }

  return result;
}

unint64_t sub_21C940E04(unint64_t result, char a2)
{
  if (a2)
  {
    return sub_21C8D75F0(result);
  }

  else
  {
  }
}

uint64_t sub_21C940E28(uint64_t a1)
{
  v3 = *(type metadata accessor for PMCombinedAccountDetailsView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_21C9203E8(a1, v4);
}

uint64_t sub_21C940E98(uint64_t a1)
{
  v3 = *(type metadata accessor for PMCombinedAccountDetailsView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_21C9210D8(a1, v4);
}

unint64_t sub_21C940F08()
{
  result = qword_27CDF1488;
  if (!qword_27CDF1488)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF1450, &qword_21CBB1578);
    sub_21C940F94();
    sub_21C8C3E48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF1488);
  }

  return result;
}

unint64_t sub_21C940F94()
{
  result = qword_27CDF1490;
  if (!qword_27CDF1490)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF1480, &qword_21CBB16C8);
    sub_21C941020();
    sub_21C8C3DF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF1490);
  }

  return result;
}

unint64_t sub_21C941020()
{
  result = qword_27CDF1498;
  if (!qword_27CDF1498)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF1470, &qword_21CBB1658);
    sub_21C9410DC();
    sub_21C705F40(&qword_27CDF1608, type metadata accessor for PMSetUpVerificationCodeAlertViewModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF1498);
  }

  return result;
}

unint64_t sub_21C9410DC()
{
  result = qword_27CDF14A0;
  if (!qword_27CDF14A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF1460, &qword_21CBB15D8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF14A8, &qword_21CBB16F8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF14B0, &qword_21CBB1700);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF14B8, &qword_21CBB1708);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF14C0, &qword_21CBB1710);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF14C8, &qword_21CBB1718);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF14D0, &qword_21CBB1720);
    sub_21C9413B0();
    sub_21CB83994();
    sub_21C941AD8();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    type metadata accessor for PMEditAccountWebsitesView();
    sub_21C705F40(&qword_27CDF15E0, type metadata accessor for PMEditAccountWebsitesView);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF15E8, &unk_21CBB17B8);
    sub_21C943C6C(&qword_27CDF15F0, &qword_27CDF15E8, &unk_21CBB17B8, sub_21C941B2C);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_21C6EADEC(&qword_27CDF1600, &qword_27CDF1468, &qword_21CBB15E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF14A0);
  }

  return result;
}

unint64_t sub_21C9413B0()
{
  result = qword_27CDF14D8;
  if (!qword_27CDF14D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF14C8, &qword_21CBB1718);
    sub_21C941468();
    sub_21C6EADEC(&qword_27CDF15C8, &qword_27CDF15D0, &qword_21CBB17B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF14D8);
  }

  return result;
}

unint64_t sub_21C941468()
{
  result = qword_27CDF14E0;
  if (!qword_27CDF14E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF14E8, &qword_21CBB1728);
    sub_21C941520();
    sub_21C6EADEC(&qword_27CDF15B8, &qword_27CDF15C0, &qword_21CBB17A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF14E0);
  }

  return result;
}

unint64_t sub_21C941520()
{
  result = qword_27CDF14F0;
  if (!qword_27CDF14F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF14F8, &qword_21CBB1730);
    sub_21C9415D8();
    sub_21C6EADEC(&qword_27CDF15A8, &qword_27CDF15B0, &qword_21CBB17A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF14F0);
  }

  return result;
}

unint64_t sub_21C9415D8()
{
  result = qword_27CDF1500;
  if (!qword_27CDF1500)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF1508, &qword_21CBB1738);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF1510, &qword_21CBB1740);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF1518, &qword_21CBB1748);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF1520, &qword_21CBB1750);
    sub_21C9417A8();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF1570, &qword_21CBB1778);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF1578, &qword_21CBB1780);
    sub_21C9419F8();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_21C6EADEC(&qword_27CDED970, &qword_27CDED938, &qword_21CBA7D60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF1500);
  }

  return result;
}

unint64_t sub_21C9417A8()
{
  result = qword_27CDF1528;
  if (!qword_27CDF1528)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF1520, &qword_21CBB1750);
    sub_21C941860();
    sub_21C6EADEC(&qword_27CDEB288, &qword_27CDEB238, &qword_21CBA1570);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF1528);
  }

  return result;
}

unint64_t sub_21C941860()
{
  result = qword_27CDF1530;
  if (!qword_27CDF1530)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF1538, &qword_21CBB1758);
    sub_21C941918();
    sub_21C6EADEC(&qword_27CDEB278, &qword_27CDEB280, &unk_21CBA7D90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF1530);
  }

  return result;
}

unint64_t sub_21C941918()
{
  result = qword_27CDF1540;
  if (!qword_27CDF1540)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF1548, &qword_21CBB1760);
    sub_21C6EADEC(&qword_27CDF1550, &qword_27CDF1558, &qword_21CBB1768);
    sub_21C6EADEC(&qword_27CDF1560, &qword_27CDF1568, &qword_21CBB1770);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF1540);
  }

  return result;
}

unint64_t sub_21C9419F8()
{
  result = qword_27CDF1580;
  if (!qword_27CDF1580)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF1578, &qword_21CBB1780);
    sub_21C6EADEC(&qword_27CDF1588, &qword_27CDF1590, &qword_21CBB1788);
    sub_21C6EADEC(&qword_27CDF1598, &qword_27CDF15A0, &unk_21CBB1790);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF1580);
  }

  return result;
}

unint64_t sub_21C941AD8()
{
  result = qword_27CDF15D8;
  if (!qword_27CDF15D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF15D8);
  }

  return result;
}

unint64_t sub_21C941B2C()
{
  result = qword_27CDF15F8;
  if (!qword_27CDF15F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF15F8);
  }

  return result;
}

uint64_t sub_21C941B88(uint64_t a1)
{
  v4 = *(type metadata accessor for PMCombinedAccountDetailsView() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + v6);
  v10 = *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_21C6F35D0;

  return sub_21C920C28(a1, v7, v8, v1 + v5, v9, v10);
}

uint64_t sub_21C941CF0(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for PMCombinedAccountDetailsView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_21C941D88(uint64_t a1)
{
  v3 = *(type metadata accessor for PMCombinedAccountDetailsView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_21C922594(a1, v4);
}

uint64_t sub_21C941E58(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for PMCombinedAccountDetailsView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_21C941EDC()
{
  result = qword_27CDF1668;
  if (!qword_27CDF1668)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF1660, &qword_21CBB1B58);
    sub_21C941F94();
    sub_21C6EADEC(&qword_27CDED860, &qword_27CDED868, &unk_21CBA7B50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF1668);
  }

  return result;
}

unint64_t sub_21C941F94()
{
  result = qword_27CDF1670;
  if (!qword_27CDF1670)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF1678, &qword_21CBB1B60);
    sub_21C94204C();
    sub_21C6EADEC(&unk_27CDF4590, &qword_27CDEB8B8, &qword_21CBA4300);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF1670);
  }

  return result;
}

unint64_t sub_21C94204C()
{
  result = qword_27CDF1680;
  if (!qword_27CDF1680)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF1688, &qword_21CBB1B68);
    sub_21C87DED8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF1680);
  }

  return result;
}

unint64_t sub_21C9420F0()
{
  result = qword_27CDF16D8;
  if (!qword_27CDF16D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF16C8, &qword_21CBB1BA8);
    sub_21C943C6C(&qword_27CDF16E0, &qword_27CDF16C0, &qword_21CBB1BA0, sub_21C80ED6C);
    sub_21C6EADEC(&qword_27CDEBC80, &qword_27CDEBC88, &qword_21CBA3170);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF16D8);
  }

  return result;
}

uint64_t sub_21C9421D4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v7 = sub_21CB81004();
  v9 = v8;
  (*(v3 + 8))(v6, v2);
  v14[0] = v7;
  v14[1] = v9;
  sub_21C71F3FC();
  result = sub_21CB84054();
  *a1 = result;
  *(a1 + 8) = v11;
  *(a1 + 16) = v12 & 1;
  *(a1 + 24) = v13;
  return result;
}

void sub_21C942318()
{
  v1 = *(type metadata accessor for PMCombinedAccountDetailsView() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  sub_21C93EF68(v2, v3);
}

uint64_t sub_21C94237C(uint64_t a1)
{
  v4 = *(type metadata accessor for PMCombinedAccountDetailsView() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_21C702EFC;

  return sub_21C93DBF8(a1, v6, v7, v1 + v5);
}

unint64_t sub_21C94246C()
{
  result = qword_27CDF1718;
  if (!qword_27CDF1718)
  {
    sub_21C6E8F4C(255, &qword_27CDF1720, 0x277CBAA48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF1718);
  }

  return result;
}

unint64_t sub_21C94250C()
{
  result = qword_27CDF1798;
  if (!qword_27CDF1798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF1798);
  }

  return result;
}

unint64_t sub_21C942560()
{
  result = qword_27CDF17A0;
  if (!qword_27CDF17A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF1790, &qword_21CBB1D70);
    sub_21C94250C();
    sub_21C705F40(&qword_27CDEB908, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF17A0);
  }

  return result;
}

uint64_t sub_21C94261C()
{
  v1 = *(type metadata accessor for PMCombinedAccountDetailsView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  return sub_21C93889C();
}

unint64_t sub_21C942698()
{
  result = qword_27CDF1840;
  if (!qword_27CDF1840)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF17F8, &qword_21CBB1EA0);
    sub_21CB839C4();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF1840);
  }

  return result;
}

unint64_t sub_21C942768()
{
  result = qword_27CDF1848;
  if (!qword_27CDF1848)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF1808, &qword_21CBB1EA8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF17F8, &qword_21CBB1EA0);
    type metadata accessor for PMAdapativeStackLabeledContentStyle();
    sub_21C942698();
    sub_21C705F40(&qword_27CDEB978, type metadata accessor for PMAdapativeStackLabeledContentStyle);
    swift_getOpaqueTypeConformance2();
    sub_21C705F40(&qword_27CDEC910, type metadata accessor for PMMoveAccountToGroupPicker);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF1848);
  }

  return result;
}

unint64_t sub_21C9428B0()
{
  result = qword_27CDF1850;
  if (!qword_27CDF1850)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF17E0, &qword_21CBB1E88);
    sub_21C942698();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF1850);
  }

  return result;
}

void sub_21C942960(id a1)
{
  if (a1 != 1)
  {
  }
}

unint64_t sub_21C942994()
{
  result = qword_27CDF18B0;
  if (!qword_27CDF18B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF18A8, &qword_21CBB2218);
    sub_21C705F40(&qword_27CDF18B8, type metadata accessor for PMShareAccountButton);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF18B0);
  }

  return result;
}

unint64_t sub_21C942A48()
{
  result = qword_27CDF18C8;
  if (!qword_27CDF18C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF18C0, &qword_21CBB2220);
    sub_21C942ACC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF18C8);
  }

  return result;
}

unint64_t sub_21C942ACC()
{
  result = qword_27CDF18D0;
  if (!qword_27CDF18D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF18D8, &qword_21CBB2228);
    sub_21C942B50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF18D0);
  }

  return result;
}

unint64_t sub_21C942B50()
{
  result = qword_27CDF18E0;
  if (!qword_27CDF18E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF18E8, &qword_21CBB2230);
    sub_21C942BDC();
    sub_21C80ED6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF18E0);
  }

  return result;
}

unint64_t sub_21C942BDC()
{
  result = qword_27CDF18F0;
  if (!qword_27CDF18F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF18F8, &unk_21CBB2238);
    sub_21C852CFC();
    sub_21C6EADEC(&qword_27CDEBC80, &qword_27CDEBC88, &qword_21CBA3170);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF18F0);
  }

  return result;
}

unint64_t sub_21C942CB8()
{
  result = qword_27CDF1908;
  if (!qword_27CDF1908)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF1900, &qword_21CBB2248);
    type metadata accessor for PMPlatformRoleButton();
    sub_21C705F40(&qword_27CDEC040, type metadata accessor for PMPlatformRoleButton);
    swift_getOpaqueTypeConformance2();
    sub_21C6EADEC(&qword_27CDF1910, &qword_27CDF1918, &qword_21CBB2250);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF1908);
  }

  return result;
}

uint64_t sub_21C942E3C(uint64_t (*a1)(void))
{
  v3 = *(type metadata accessor for PMCombinedAccountDetailsView() - 8);
  v4 = *(v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)) + 8);
  return a1();
}

uint64_t sub_21C942ED4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_21C942F5C()
{
  result = qword_27CDF19F0;
  if (!qword_27CDF19F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF19E8, &qword_21CBB2328);
    sub_21C942FE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF19F0);
  }

  return result;
}

unint64_t sub_21C942FE0()
{
  result = qword_27CDF19F8;
  if (!qword_27CDF19F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF1A00, &qword_21CBB2330);
    sub_21C6EADEC(&qword_27CDF1A08, &qword_27CDF1A10, &qword_21CBB2338);
    sub_21C6EADEC(&qword_27CDF1A18, &qword_27CDF1A20, &qword_21CBB2340);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF19F8);
  }

  return result;
}

unint64_t sub_21C943190()
{
  result = qword_27CDF1A98;
  if (!qword_27CDF1A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF1A98);
  }

  return result;
}

uint64_t sub_21C943334(uint64_t a1)
{
  v3 = *(type metadata accessor for PMCombinedAccountDetailsView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
  return sub_21C927220(a1);
}

double sub_21C943414@<D0>(_OWORD *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v3(v7);
  result = *v7;
  v6 = v7[1];
  *a1 = v7[0];
  a1[1] = v6;
  return result;
}

uint64_t sub_21C943454(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_21C9434BC()
{
  result = qword_27CDF1BC0;
  if (!qword_27CDF1BC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF1BB0, &unk_21CBB2580);
    sub_21C943548();
    sub_21C94362C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF1BC0);
  }

  return result;
}

unint64_t sub_21C943548()
{
  result = qword_27CDF1BC8;
  if (!qword_27CDF1BC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF1BB8, &qword_21CBBE2B0);
    sub_21C6EADEC(&qword_27CDF1BD0, &qword_27CDF1B78, &qword_21CBBE2D0);
    sub_21C6EADEC(&qword_27CDEBC80, &qword_27CDEBC88, &qword_21CBA3170);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF1BC8);
  }

  return result;
}

unint64_t sub_21C94362C()
{
  result = qword_27CDF1BD8;
  if (!qword_27CDF1BD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF1B98, &qword_21CBB2568);
    type metadata accessor for PMPasswordField();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF1438, &qword_21CBB14B8);
    sub_21C705F40(&qword_27CDEDFB8, type metadata accessor for PMPasswordField);
    sub_21C940D0C();
    swift_getOpaqueTypeConformance2();
    sub_21C705F40(&qword_27CDEB908, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF1BD8);
  }

  return result;
}

unint64_t sub_21C943774()
{
  result = qword_27CDF1BE0;
  if (!qword_27CDF1BE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF1B88, &qword_21CBB2558);
    sub_21C9437F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF1BE0);
  }

  return result;
}

unint64_t sub_21C9437F8()
{
  result = qword_27CDF1BE8;
  if (!qword_27CDF1BE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF1B80, &qword_21CBB2550);
    sub_21C6EADEC(&qword_27CDF1BD0, &qword_27CDF1B78, &qword_21CBBE2D0);
    sub_21C705F40(&qword_27CDEB908, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF1BE8);
  }

  return result;
}

uint64_t sub_21C943938(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_21C943998()
{
  result = qword_27CDF1C28;
  if (!qword_27CDF1C28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF1C18, &qword_21CBB2628);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF1438, &qword_21CBB14B8);
    sub_21C853458();
    sub_21C940D0C();
    swift_getOpaqueTypeConformance2();
    sub_21C705F40(&qword_27CDEB908, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF1C28);
  }

  return result;
}

unint64_t sub_21C943AAC()
{
  result = qword_27CDF1C30;
  if (!qword_27CDF1C30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF1C00, &qword_21CBB2610);
    sub_21C9437F8();
    sub_21C6EADEC(&qword_27CDEBC80, &qword_27CDEBC88, &qword_21CBA3170);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF1C30);
  }

  return result;
}

uint64_t sub_21C943B64@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(*(v1 + 16) + 8);

  return sub_21C9B0330(a1);
}

unint64_t sub_21C943BA4()
{
  result = qword_27CDF1C50;
  if (!qword_27CDF1C50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF1C38, &unk_21CBB26B0);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF1C50);
  }

  return result;
}

uint64_t sub_21C943C6C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21C943CF0()
{
  result = qword_27CDF1C68;
  if (!qword_27CDF1C68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF1C40, &qword_21CBCB960);
    sub_21C943BA4();
    sub_21C705F40(&qword_27CDF1C58, type metadata accessor for PMAppAccountDetailsCredentialSecurityView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF1C68);
  }

  return result;
}

uint64_t sub_21C943E28(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

void *sub_21C943E88(void *result)
{
  if (result)
  {
    v1 = result;
  }

  return result;
}

void *sub_21C943EC8(void *result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_21C943F08@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for PMCombinedAccountDetailsView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_21C935B30(a1, v6, a2);
}

unint64_t sub_21C943FA4()
{
  result = qword_27CDF1CB0;
  if (!qword_27CDF1CB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF1CB8, &qword_21CBB2748);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF1450, &qword_21CBB1578);
    type metadata accessor for PMCombinedAccountDetailsModel(255);
    sub_21C940F08();
    swift_getOpaqueTypeConformance2();
    sub_21C705F40(&qword_27CDEB908, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF1CB0);
  }

  return result;
}

void sub_21C9440E4(uint64_t *a1@<X8>)
{
  v3 = [*v1 identifier];
  if (v3)
  {
    v4 = v3;
    v5 = sub_21CB855C4();
    v7 = v6;

    *a1 = v5;
    a1[1] = v7;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_21C94431C(int a1, void *aBlock, void *a3)
{
  *(v3 + 16) = a3;
  *(v3 + 24) = _Block_copy(aBlock);
  v5 = a3;

  return MEMORY[0x2822009F8](sub_21C944398, 0, 0);
}

uint64_t sub_21C944398()
{
  v1 = v0[2];
  v2 = *&v1[OBJC_IVAR____TtCV17PasswordManagerUI42PMConfigureCredentialProviderExtensionView11Coordinator_onDismiss];
  if (v2)
  {
    v3 = *&v1[OBJC_IVAR____TtCV17PasswordManagerUI42PMConfigureCredentialProviderExtensionView11Coordinator_onDismiss + 8];

    v2(v4);

    sub_21C71B710(v2);
  }

  else
  {
  }

  v5 = v0[3];
  v5[2](v5);
  _Block_release(v5);
  v6 = v0[1];

  return v6();
}

id sub_21C944458()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_21C9444C8(uint64_t a1)
{
  v2 = sub_21CB82F84();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = (&v20 - v9);
  v11 = sub_21CB823B4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for PMConfigureCredentialProviderExtensionView();
  sub_21C7B8998(a1 + *(v16 + 20), v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v12 + 32))(v15, v10, v11);
  }

  else
  {
    v17 = *v10;
    sub_21CB85B04();
    v18 = sub_21CB83C94();
    sub_21CB81C14();

    sub_21CB82F74();
    swift_getAtKeyPath();

    (*(v3 + 8))(v6, v2);
  }

  sub_21CB823A4();
  return (*(v12 + 8))(v15, v11);
}

id sub_21C94473C()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CBAA38]) initWithExtension_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF1D38, &qword_21CBB28F0);
  sub_21CB83C84();
  [v1 setDelegate_];

  [v1 beginConfiguringExtension];
  return v1;
}

void sub_21C9447E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF1D38, &qword_21CBB28F0);
  sub_21CB83C84();
  v7 = v13[1];
  sub_21C944B08(v4, v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  sub_21C944B6C(v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8);
  v10 = &v7[OBJC_IVAR____TtCV17PasswordManagerUI42PMConfigureCredentialProviderExtensionView11Coordinator_onDismiss];
  v11 = *&v7[OBJC_IVAR____TtCV17PasswordManagerUI42PMConfigureCredentialProviderExtensionView11Coordinator_onDismiss];
  v12 = *&v7[OBJC_IVAR____TtCV17PasswordManagerUI42PMConfigureCredentialProviderExtensionView11Coordinator_onDismiss + 8];
  *v10 = sub_21C944BD0;
  v10[1] = v9;
  sub_21C71B710(v11);
}

id sub_21C94490C@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(type metadata accessor for PMConfigureCredentialProviderExtensionView.Coordinator()) init];
  *a1 = result;
  return result;
}

uint64_t sub_21C944944(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21C944C30(&qword_27CDF1D48);

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_21C9449C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21C944C30(&qword_27CDF1D48);

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_21C944A44()
{
  sub_21C944C30(&qword_27CDF1D48);
  sub_21CB83B44();
  __break(1u);
}

uint64_t type metadata accessor for PMConfigureCredentialProviderExtensionView()
{
  result = qword_27CDF1D58;
  if (!qword_27CDF1D58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21C944B08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMConfigureCredentialProviderExtensionView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C944B6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMConfigureCredentialProviderExtensionView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C944BD0()
{
  v1 = *(type metadata accessor for PMConfigureCredentialProviderExtensionView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_21C9444C8(v2);
}

uint64_t sub_21C944C30(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PMConfigureCredentialProviderExtensionView();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21C944C74()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_21C702EFC;

  return sub_21C94431C(v2, v3, v4);
}

void sub_21C944D50()
{
  sub_21C721A6C();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_21C944E10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_21CB82F84();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v36[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1D78, &qword_21CBB2968);
  v12 = v11 - 8;
  v13 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v36[-v14];
  *v15 = sub_21CB83074();
  *(v15 + 1) = 0x4024000000000000;
  v15[16] = 0;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1D80, &qword_21CBB2970);
  sub_21C9450B4(v3, a1, &v15[*(v16 + 44)]);
  LOBYTE(a1) = sub_21CB83D44();
  sub_21CB81F24();
  v17 = &v15[*(v12 + 44)];
  *v17 = a1;
  *(v17 + 1) = v18;
  *(v17 + 2) = v19;
  *(v17 + 3) = v20;
  *(v17 + 4) = v21;
  v17[40] = 0;
  v22 = sub_21CB83D14();
  v23 = v3 + *(type metadata accessor for PMAppSourceListRowLabelStyle() + 20);
  v24 = *v23;
  if (*(v23 + 8) != 1)
  {

    sub_21CB85B04();
    v25 = sub_21CB83C94();
    sub_21CB81C14();

    sub_21CB82F74();
    swift_getAtKeyPath();
    sub_21C7025C4(v24, 0);
    (*(v7 + 8))(v10, v6);
  }

  sub_21CB81F24();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  sub_21C716934(v15, a2, &qword_27CDF1D78, &qword_21CBB2968);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1D88, &unk_21CBB2978);
  v35 = a2 + *(result + 36);
  *v35 = v22;
  *(v35 + 8) = v27;
  *(v35 + 16) = v29;
  *(v35 + 24) = v31;
  *(v35 + 32) = v33;
  *(v35 + 40) = 0;
  return result;
}

uint64_t sub_21C9450B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v43 = a2;
  v44 = a1;
  v45 = a3;
  v4 = sub_21CB838A4();
  v5 = *(v4 - 8);
  v6 = v5[8];
  MEMORY[0x28223BE20](v4);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v40 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBB58, &qword_21CBAF8A0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v40 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1D90, &qword_21CBB2988);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = (&v40 - v18);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1D98, &qword_21CBB2990);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = &v40 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = &v40 - v25;
  *v19 = sub_21CB85214();
  v19[1] = v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1DA0, &qword_21CBB2998);
  sub_21C9454E4(v44, a2, v19 + *(v28 + 44));
  v29 = sub_21CB83DC4();
  (*(*(v29 - 8) + 56))(v15, 1, 1, v29);
  v30 = sub_21CB83E14();
  sub_21C6EA794(v15, &qword_27CDEBB58, &qword_21CBAF8A0);
  KeyPath = swift_getKeyPath();
  v32 = (v19 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1DA8, &qword_21CBB29D0) + 36));
  *v32 = KeyPath;
  v32[1] = v30;
  sub_21CB85214();
  sub_21CB82374();
  v33 = (v19 + *(v16 + 36));
  v34 = v47;
  *v33 = v46;
  v33[1] = v34;
  v33[2] = v48;
  sub_21C94619C();
  v42 = v26;
  sub_21CB84494();
  sub_21C6EA794(v19, &qword_27CDF1D90, &qword_21CBB2988);
  sub_21CB838B4();
  v41 = v23;
  sub_21C6EDBAC(v26, v23, &qword_27CDF1D98, &qword_21CBB2990);
  v35 = v5[2];
  v35(v8, v11, v4);
  v36 = v45;
  sub_21C6EDBAC(v23, v45, &qword_27CDF1D98, &qword_21CBB2990);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1DD0, &qword_21CBB29E8);
  v35((v36 + *(v37 + 48)), v8, v4);
  v38 = v5[1];
  v38(v11, v4);
  sub_21C6EA794(v42, &qword_27CDF1D98, &qword_21CBB2990);
  v38(v8, v4);
  return sub_21C6EA794(v41, &qword_27CDF1D98, &qword_21CBB2990);
}

uint64_t sub_21C9454E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v125 = a3;
  v126 = a2;
  v4 = sub_21CB83884();
  v113 = *(v4 - 8);
  v5 = *(v113 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = v92 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1DD8, &qword_21CBB29F0);
  v8 = *(*(v123 - 8) + 64);
  MEMORY[0x28223BE20](v123);
  v10 = v92 - v9;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1DE0, &qword_21CBB29F8);
  v11 = *(*(v124 - 8) + 64);
  MEMORY[0x28223BE20](v124);
  v120 = v92 - v12;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1DE8, &qword_21CBB2A00);
  v13 = *(*(v121 - 8) + 64);
  MEMORY[0x28223BE20](v121);
  v109 = (v92 - v14);
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1DF0, &qword_21CBB2A08);
  v15 = *(*(v115 - 8) + 64);
  MEMORY[0x28223BE20](v115);
  v117 = v92 - v16;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1DF8, &qword_21CBB2A10);
  v17 = *(*(v116 - 8) + 64);
  MEMORY[0x28223BE20](v116);
  v108 = (v92 - v18);
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1E00, &qword_21CBB2A18);
  v19 = *(*(v105 - 8) + 64);
  MEMORY[0x28223BE20](v105);
  v106 = v92 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v107 = v92 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1E08, &qword_21CBB2A20);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v118 = v92 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v119 = v92 - v27;
  v28 = sub_21CB84A44();
  v111 = *(v28 - 8);
  v112 = v28;
  v29 = *(v111 + 64);
  MEMORY[0x28223BE20](v28);
  v110 = v92 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_21CB834E4();
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31);
  v35 = v92 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v38 = v92 - v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1E10, &qword_21CBB2A28);
  v40 = *(*(v39 - 8) + 64);
  MEMORY[0x28223BE20](v39);
  v114 = v92 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42);
  v44 = (v92 - v43);
  MEMORY[0x28223BE20](v45);
  v122 = v92 - v46;
  if (*(a1 + *(type metadata accessor for PMAppSourceListRowLabelStyle() + 24)) == 1)
  {
    v104 = v10;
    v113 = v4;
    v103 = a1;
    sub_21C95B534(v38);
    sub_21CB834C4();
    v47 = sub_21CB834B4();
    v48 = *(v32 + 8);
    v48(v35, v31);
    v102 = v48;
    v48(v38, v31);
    if (v47)
    {
      (*(v111 + 104))(v110, *MEMORY[0x277CE0EE0], v112);
      v49 = sub_21CB84B54();
    }

    else
    {
      v49 = sub_21CB84AD4();
    }

    v127 = v49;
    v101 = sub_21CB82384();
    v100 = sub_21CB85214();
    v99 = v52;
    v98 = sub_21CB85214();
    v97 = v53;
    v54 = (v44 + *(v39 + 36));
    v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1E28, &qword_21CBB2A30);
    v55 = v54 + *(v96 + 36);
    sub_21CB83894();
    v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1E30, &qword_21CBB2A38);
    v56 = *(v95 + 36);
    v57 = *MEMORY[0x277CE13C0];
    v58 = sub_21CB85284();
    v59 = *(v58 - 8);
    v60 = *(v59 + 104);
    v94 = v57;
    v93 = v60;
    v92[1] = v59 + 104;
    v60(&v55[v56], v57, v58);
    v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1E38, &qword_21CBB2A40);
    v62 = &v55[*(v61 + 36)];
    v63 = v99;
    *v62 = v100;
    v62[1] = v63;
    v64 = v97;
    *v54 = v98;
    v54[1] = v64;
    *v44 = v101;
    sub_21C716934(v44, v122, &qword_27CDF1E10, &qword_21CBB2A28);
    sub_21C95B534(v38);
    sub_21CB834C4();
    LOBYTE(v54) = sub_21CB834B4();
    v65 = v102;
    v102(v35, v31);
    v65(v38, v31);
    if (v54)
    {
      (*(v111 + 104))(v110, *MEMORY[0x277CE0EE0], v112);
      v66 = sub_21CB84B54();
      v67 = v107;
      sub_21CB83894();
      *(v67 + *(v105 + 36)) = sub_21CB84AD4();
      v68 = v106;
      sub_21C6EDBAC(v67, v106, &qword_27CDF1E00, &qword_21CBB2A18);
      v69 = v108;
      *v108 = v66;
      v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1E70, &qword_21CBB2A60);
      sub_21C6EDBAC(v68, v69 + *(v70 + 48), &qword_27CDF1E00, &qword_21CBB2A18);
      swift_retain_n();
      sub_21C6EA794(v68, &qword_27CDF1E00, &qword_21CBB2A18);

      sub_21C6EDBAC(v69, v117, &qword_27CDF1DF8, &qword_21CBB2A10);
      swift_storeEnumTagMultiPayload();
      sub_21C6EADEC(&qword_27CDF1E40, &qword_27CDF1DF8, &qword_21CBB2A10);
      sub_21C946364();
      v71 = v119;
      sub_21CB83494();

      sub_21C6EA794(v69, &qword_27CDF1DF8, &qword_21CBB2A10);
      v72 = v67;
      v73 = &qword_27CDF1E00;
      v74 = &qword_21CBB2A18;
    }

    else
    {
      v112 = sub_21CB84AD4();
      v75 = sub_21CB85214();
      v77 = v76;
      v78 = sub_21CB85214();
      v80 = v79;
      v81 = v109;
      v82 = (v109 + *(v121 + 36));
      v83 = v61;
      v84 = v82 + *(v96 + 36);
      sub_21CB83894();
      v93(&v84[*(v95 + 36)], v94, v58);
      v85 = &v84[*(v83 + 36)];
      *v85 = v75;
      v85[1] = v77;
      *v82 = v78;
      v82[1] = v80;
      *v81 = v112;
      sub_21C6EDBAC(v81, v117, &qword_27CDF1DE8, &qword_21CBB2A00);
      swift_storeEnumTagMultiPayload();
      sub_21C6EADEC(&qword_27CDF1E40, &qword_27CDF1DF8, &qword_21CBB2A10);
      sub_21C946364();
      v71 = v119;
      sub_21CB83494();
      v72 = v81;
      v73 = &qword_27CDF1DE8;
      v74 = &qword_21CBB2A00;
    }

    sub_21C6EA794(v72, v73, v74);
    v86 = v104;
    v87 = v122;
    v88 = v114;
    sub_21C6EDBAC(v122, v114, &qword_27CDF1E10, &qword_21CBB2A28);
    v89 = v118;
    sub_21C6EDBAC(v71, v118, &qword_27CDF1E08, &qword_21CBB2A20);
    v90 = v120;
    sub_21C6EDBAC(v88, v120, &qword_27CDF1E10, &qword_21CBB2A28);
    v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1E68, &qword_21CBB2A58);
    sub_21C6EDBAC(v89, v90 + *(v91 + 48), &qword_27CDF1E08, &qword_21CBB2A20);
    sub_21C6EA794(v89, &qword_27CDF1E08, &qword_21CBB2A20);
    sub_21C6EA794(v88, &qword_27CDF1E10, &qword_21CBB2A28);
    sub_21C6EDBAC(v90, v86, &qword_27CDF1DE0, &qword_21CBB29F8);
    swift_storeEnumTagMultiPayload();
    sub_21C6EADEC(&qword_27CDF1E18, &qword_27CDF1DE0, &qword_21CBB29F8);
    sub_21C94630C();
    sub_21CB83494();
    sub_21C6EA794(v90, &qword_27CDF1DE0, &qword_21CBB29F8);
    sub_21C6EA794(v71, &qword_27CDF1E08, &qword_21CBB2A20);
    return sub_21C6EA794(v87, &qword_27CDF1E10, &qword_21CBB2A28);
  }

  else
  {
    sub_21CB83894();
    v50 = v113;
    (*(v113 + 16))(v10, v7, v4);
    swift_storeEnumTagMultiPayload();
    sub_21C6EADEC(&qword_27CDF1E18, &qword_27CDF1DE0, &qword_21CBB29F8);
    sub_21C94630C();
    sub_21CB83494();
    return (*(v50 + 8))(v7, v4);
  }
}

unint64_t sub_21C94619C()
{
  result = qword_27CDF1DB0;
  if (!qword_27CDF1DB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF1D90, &qword_21CBB2988);
    sub_21C946228();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF1DB0);
  }

  return result;
}

unint64_t sub_21C946228()
{
  result = qword_27CDF1DB8;
  if (!qword_27CDF1DB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF1DA8, &qword_21CBB29D0);
    sub_21C6EADEC(&qword_27CDF1DC0, &qword_27CDF1DC8, &unk_21CBB29D8);
    sub_21C6EADEC(&unk_27CDF4590, &qword_27CDEB8B8, &qword_21CBA4300);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF1DB8);
  }

  return result;
}

unint64_t sub_21C94630C()
{
  result = qword_27CDF1E20;
  if (!qword_27CDF1E20)
  {
    sub_21CB83884();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF1E20);
  }

  return result;
}

unint64_t sub_21C946364()
{
  result = qword_27CDF1E48;
  if (!qword_27CDF1E48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF1DE8, &qword_21CBB2A00);
    sub_21C74A048();
    sub_21C6EADEC(&qword_27CDF1E60, &qword_27CDF1E28, &qword_21CBB2A30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF1E48);
  }

  return result;
}

unint64_t sub_21C94641C()
{
  result = qword_27CDF1E78;
  if (!qword_27CDF1E78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF1D88, &unk_21CBB2978);
    sub_21C9464A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF1E78);
  }

  return result;
}

unint64_t sub_21C9464A8()
{
  result = qword_27CDF1E80;
  if (!qword_27CDF1E80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF1D78, &qword_21CBB2968);
    sub_21C6EADEC(&qword_27CDF1E88, &qword_27CDF1E90, &qword_21CBB2A68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF1E80);
  }

  return result;
}

uint64_t sub_21C946560(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for PMGroupMembersProviderMain();
  v6 = swift_allocObject();
  *(v6 + 16) = [objc_opt_self() sharedManager];
  type metadata accessor for PMGroupManagerMain();
  v7 = swift_allocObject();

  return sub_21C94AB4C(v6, v7, a1, a2, a3);
}

uint64_t sub_21C946620@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v56 = a1;
  v3 = sub_21CB829D4();
  v50 = *(v3 - 8);
  v4 = *(v50 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1EF8, &qword_21CBB2C30);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v48 - v10;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1F00, &qword_21CBB2C38);
  v52 = *(v51 - 8);
  v12 = *(v52 + 64);
  MEMORY[0x28223BE20](v51);
  v14 = &v48 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1F08, &qword_21CBB2C40);
  v16 = *(v15 - 8);
  v53 = v15 - 8;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v57 = &v48 - v18;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1F10, &qword_21CBB2C48);
  v19 = *(*(v55 - 8) + 64);
  MEMORY[0x28223BE20](v55);
  v54 = &v48 - v20;
  v59 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1F18, &qword_21CBB2C50);
  sub_21C6EADEC(&qword_27CDF1F20, &qword_27CDF1F18, &qword_21CBB2C50);
  sub_21CB83EF4();
  sub_21CB85294();
  v21 = sub_21C6EADEC(&qword_27CDF1F28, &qword_27CDF1EF8, &qword_21CBB2C30);
  v22 = sub_21C94B65C(&qword_27CDED1A0, MEMORY[0x277CDDAB8]);
  sub_21CB849C4();
  (*(v50 + 8))(v6, v3);
  (*(v8 + 8))(v11, v7);
  v58 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1F30, &qword_21CBB2C58);
  *&v61 = v7;
  *(&v61 + 1) = v3;
  v62 = v21;
  v63 = v22;
  swift_getOpaqueTypeConformance2();
  v23 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF1F38, &qword_21CBB2C60);
  v24 = sub_21C6EADEC(&qword_27CDF1F40, &qword_27CDF1F38, &qword_21CBB2C60);
  *&v61 = v23;
  *(&v61 + 1) = v24;
  swift_getOpaqueTypeConformance2();
  v25 = v57;
  v26 = v51;
  sub_21CB84894();
  (*(v52 + 8))(v14, v26);
  v49 = v2;
  v27 = *(v2 + 16);
  v28 = *(v2 + 24);
  v29 = *(v2 + 32);
  type metadata accessor for PMCreateGroupViewModel(0);
  v30 = sub_21C94B65C(&qword_27CDF1F48, type metadata accessor for PMCreateGroupViewModel);
  sub_21CB82134();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  LOBYTE(v22) = v61;
  KeyPath = swift_getKeyPath();
  v32 = swift_allocObject();
  *(v32 + 16) = v22;
  v33 = &v25[*(v53 + 44)];
  *v33 = KeyPath;
  v33[1] = sub_21C735744;
  v33[2] = v32;
  sub_21CB82144();
  swift_getKeyPath();
  sub_21CB82694();

  v34 = v61;
  LODWORD(KeyPath) = v62;
  v51 = v28;
  v52 = v30;
  sub_21CB82134();
  v35 = v54;
  v36 = KeyPath;
  v37 = v57;
  sub_21C948E94(v34, *(&v34 + 1), v36, v54);

  sub_21C6EA794(v37, &qword_27CDF1F08, &qword_21CBB2C40);
  sub_21CB82134();
  swift_getKeyPath();
  swift_getKeyPath();
  v38 = v35 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1F50, &qword_21CBB2D50) + 36);
  sub_21CB81DB4();

  v39 = v49;
  v40 = *(v49 + 8);
  v61 = *(v49 + 40);
  LOBYTE(v62) = *(v49 + 56);
  v41 = swift_allocObject();
  v42 = v39[1];
  v41[1] = *v39;
  v41[2] = v42;
  v41[3] = v39[2];
  *(v41 + 57) = *(v39 + 41);
  v43 = (v38 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1F58, &qword_21CBB2D58) + 36));
  *v43 = sub_21C94AFF8;
  v43[1] = v41;
  v44 = swift_allocObject();
  v45 = v39[1];
  v44[1] = *v39;
  v44[2] = v45;
  v44[3] = v39[2];
  *(v44 + 57) = *(v39 + 41);
  v46 = (v35 + *(v55 + 36));
  *v46 = sub_21C94B000;
  v46[1] = v44;
  v46[2] = 0;
  v46[3] = 0;

  sub_21C70C78C();
  sub_21C6EDBAC(&v61, v60, &qword_27CDF1F60, &unk_21CBB2D60);

  sub_21C70C78C();
  sub_21C6EDBAC(&v61, v60, &qword_27CDF1F60, &unk_21CBB2D60);
  sub_21CB82134();
  sub_21C951184();

  sub_21C94B05C();
  sub_21CB84644();
  return sub_21C6EA794(v35, &qword_27CDF1F10, &qword_21CBB2C48);
}

uint64_t sub_21C946EF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v106 = a1;
  v126 = a2;
  v3 = sub_21CB82FD4();
  v119 = *(v3 - 8);
  v120 = v3;
  v4 = *(v119 + 64);
  MEMORY[0x28223BE20](v3);
  v118 = &v106 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1FE8, &qword_21CBB59F0);
  v6 = *(*(v110 - 8) + 64);
  MEMORY[0x28223BE20](v110);
  v109 = &v106 - v7;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1FF0, &qword_21CBB2EC0);
  v125 = *(v123 - 8);
  v8 = *(v125 + 64);
  MEMORY[0x28223BE20](v123);
  v117 = &v106 - v9;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1FF8, &qword_21CBB2EC8);
  v122 = *(v124 - 8);
  v10 = *(v122 + 64);
  MEMORY[0x28223BE20](v124);
  v121 = &v106 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v129 = &v106 - v13;
  v108 = sub_21CB830D4();
  v14 = *(v108 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v108);
  v17 = &v106 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_21CB81024();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v106 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = v22;
  MEMORY[0x28223BE20](v23);
  v25 = &v106 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2000, &qword_21CBB2ED0);
  v27 = *(v26 - 8);
  v107 = v26 - 8;
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26 - 8);
  v128 = &v106 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v127 = &v106 - v31;
  v130 = a1;
  sub_21CB81014();
  sub_21CB81014();
  v111 = v25;
  v32 = sub_21CB80FF4();
  v34 = v33;
  v35 = *(v19 + 8);
  v114 = v19 + 8;
  v115 = v35;
  v113 = v18;
  v35(v22, v18);
  v35(v25, v18);
  *&v138 = v32;
  *(&v138 + 1) = v34;
  v116 = sub_21C71F3FC();
  *&v138 = sub_21CB84054();
  *(&v138 + 1) = v36;
  LOBYTE(v139) = v37 & 1;
  *(&v139 + 1) = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2008, &unk_21CBB2ED8);
  v39 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEDFC8, &qword_21CBAC3B0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF2010, &qword_21CBB2EE8);
  v41 = sub_21C6EADEC(&qword_27CDEDFF8, &qword_27CDEDFC8, &qword_21CBAC3B0);
  v42 = sub_21C94B8C0();
  *&v135 = v39;
  *(&v135 + 1) = v40;
  v136 = v41;
  v137 = v42;
  swift_getOpaqueTypeConformance2();
  v43 = v127;
  sub_21CB85034();
  sub_21CB830A4();
  v44 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2028, &qword_21CBB2EF0) + 36);
  v45 = v14;
  v46 = *(v14 + 16);
  v47 = v17;
  v48 = v108;
  v46(v43 + v44, v17, v108);
  v49 = *(v45 + 56);
  v49(v43 + v44, 0, 1, v48);
  KeyPath = swift_getKeyPath();
  v51 = (v43 + *(v107 + 44));
  v52 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB238, &qword_21CBA1570) + 28);
  (*(v45 + 32))(v51 + v52, v47, v48);
  v49(v51 + v52, 0, 1, v48);
  *v51 = KeyPath;
  v53 = v106;
  v54 = *(v106 + 24);
  v108 = *(v106 + 16);
  LODWORD(v107) = *(v106 + 32);
  type metadata accessor for PMCreateGroupViewModel(0);
  sub_21C94B65C(&qword_27CDF1F48, type metadata accessor for PMCreateGroupViewModel);
  v55 = sub_21CB82134();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB018, &qword_21CBA0D90);
  v56 = swift_allocObject();
  *(v56 + 16) = xmmword_21CBA0690;
  v57 = v55[11];
  v142 = v55[10];
  v143 = v57;
  v144 = v55[12];
  v58 = v55[7];
  v138 = v55[6];
  v139 = v58;
  v59 = v55[9];
  v140 = v55[8];
  v141 = v59;
  memmove((v56 + 32), v55 + 6, 0x70uLL);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21C7A33F0(&v138, &v135);
  sub_21CB81DB4();

  v60 = v135;
  *&v135 = v56;
  sub_21CAE8E18(v60);

  v61 = v135;
  v62 = *(v53 + 8);
  v135 = *(v53 + 40);
  LOBYTE(v136) = *(v53 + 56);
  v63 = swift_allocObject();
  v64 = *(v53 + 16);
  v63[1] = *v53;
  v63[2] = v64;
  v63[3] = *(v53 + 32);
  *(v63 + 57) = *(v53 + 41);
  v65 = swift_allocObject();
  v66 = *(v53 + 16);
  v65[1] = *v53;
  v65[2] = v66;
  v65[3] = *(v53 + 32);
  *(v65 + 57) = *(v53 + 41);
  v67 = swift_allocObject();
  v68 = *(v53 + 16);
  v67[1] = *v53;
  v67[2] = v68;
  v67[3] = *(v53 + 32);
  *(v67 + 57) = *(v53 + 41);
  v69 = v110;
  v70 = *(v110 + 76);
  v71 = type metadata accessor for PMRemoveGroupMemberConfirmationAlert.Parameters(0);
  v72 = v109;
  (*(*(v71 - 8) + 56))(&v109[v70], 1, 1, v71);
  *v72 = v61;
  *(v72 + 8) = 16777473;
  *(v72 + 12) = 0;
  *(v72 + 16) = sub_21C9480B0;
  *(v72 + 24) = 0;
  *(v72 + 32) = sub_21C94B998;
  *(v72 + 40) = v63;
  *(v72 + 48) = sub_21C94B9A0;
  *(v72 + 56) = v65;
  *(v72 + 64) = 1;
  *(v72 + 72) = sub_21C94B9F4;
  *(v72 + 80) = v67;
  v73 = v72 + v69[20];
  LOBYTE(v131) = 0;

  sub_21C70C78C();
  sub_21C6EDBAC(&v135, &v133, &qword_27CDF1F60, &unk_21CBB2D60);

  sub_21C70C78C();
  sub_21C6EDBAC(&v135, &v133, &qword_27CDF1F60, &unk_21CBB2D60);

  sub_21C70C78C();
  sub_21C6EDBAC(&v135, &v133, &qword_27CDF1F60, &unk_21CBB2D60);
  sub_21CB84D44();
  v74 = v134;
  *v73 = v133;
  *(v73 + 8) = v74;
  v75 = v72 + v69[21];
  LOBYTE(v131) = 0;
  sub_21CB84D44();
  v76 = v134;
  *v75 = v133;
  *(v75 + 8) = v76;
  v77 = v69;
  v78 = v72 + v69[22];
  *v78 = swift_getKeyPath();
  *(v78 + 8) = 0;
  *(v72 + v69[23]) = 0;
  v79 = (v72 + v69[24]);
  *v79 = 0x65626D654D646461;
  v79[1] = 0xEA00000000007372;
  v80 = v118;
  v81 = v119;
  v82 = v120;
  (*(v119 + 104))(v118, *MEMORY[0x277CDDDC0], v120);
  v108 = sub_21C6EADEC(&qword_27CDF2030, &qword_27CDF1FE8, &qword_21CBB59F0);
  v83 = v117;
  sub_21CB84684();
  (*(v81 + 8))(v80, v82);
  sub_21C6EA794(v72, &qword_27CDF1FE8, &qword_21CBB59F0);
  v84 = v111;
  sub_21CB81014();
  v85 = v112;
  sub_21CB81014();
  v86 = sub_21CB80FF4();
  v88 = v87;
  v89 = v85;
  v90 = v113;
  v91 = v115;
  v115(v89, v113);
  v91(v84, v90);
  v133 = v86;
  v134 = v88;
  v131 = v77;
  v132 = v108;
  swift_getOpaqueTypeConformance2();
  v92 = v129;
  v93 = v123;
  sub_21CB842F4();

  (*(v125 + 8))(v83, v93);
  v95 = v127;
  v94 = v128;
  sub_21C6EDBAC(v127, v128, &qword_27CDF2000, &qword_21CBB2ED0);
  v96 = v121;
  v97 = v122;
  v98 = *(v122 + 16);
  v99 = v92;
  v100 = v124;
  v98(v121, v99, v124);
  v101 = v94;
  v102 = v126;
  sub_21C6EDBAC(v101, v126, &qword_27CDF2000, &qword_21CBB2ED0);
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2038, &qword_21CBB2F98);
  v98((v102 + *(v103 + 48)), v96, v100);
  v104 = *(v97 + 8);
  v104(v129, v100);
  sub_21C6EA794(v95, &qword_27CDF2000, &qword_21CBB2ED0);
  v104(v96, v100);
  return sub_21C6EA794(v128, &qword_27CDF2000, &qword_21CBB2ED0);
}

uint64_t sub_21C947C08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v3 = sub_21CB81024();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v30 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDFC8, &qword_21CBAC3B0);
  v12 = *(v11 - 8);
  v34 = v11;
  v35 = v12;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v33 = &v30 - v14;
  sub_21CB81014();
  sub_21CB81014();
  v15 = sub_21CB80FF4();
  v17 = v16;
  v18 = *(v4 + 8);
  v31 = v3;
  v18(v7, v3);
  v18(v10, v3);
  *&v37 = v15;
  *(&v37 + 1) = v17;
  v32 = a1;
  v19 = *(a1 + 16);
  v20 = *(a1 + 24);
  v21 = *(a1 + 32);
  type metadata accessor for PMCreateGroupViewModel(0);
  sub_21C94B65C(&qword_27CDF1F48, type metadata accessor for PMCreateGroupViewModel);
  sub_21CB82144();
  swift_getKeyPath();
  sub_21CB82694();

  sub_21C91A0A0(*MEMORY[0x277D49C40], v39, *(&v39 + 1), v40, v41);
  v30 = v22;

  sub_21CB81014();
  sub_21CB81014();
  v23 = sub_21CB80FF4();
  v25 = v24;
  v26 = v31;
  v18(v7, v31);
  v18(v10, v26);
  *&v39 = v23;
  *(&v39 + 1) = v25;
  sub_21C71F3FC();
  sub_21CB84054();
  v27 = v33;
  sub_21CB85344();
  v39 = *(v32 + 40);
  LOBYTE(v40) = *(v32 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1F60, &unk_21CBB2D60);
  sub_21CB81F74();
  v39 = v37;
  LOBYTE(v40) = v38;
  LOBYTE(v37) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2010, &qword_21CBB2EE8);
  sub_21C6EADEC(&qword_27CDEDFF8, &qword_27CDEDFC8, &qword_21CBAC3B0);
  sub_21C94B8C0();
  v28 = v34;
  sub_21CB84824();

  return (*(v35 + 8))(v27, v28);
}

uint64_t sub_21C9480B0@<X0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() groupCreationViewSubtitleString];
  sub_21CB855C4();

  sub_21C71F3FC();
  result = sub_21CB84054();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}