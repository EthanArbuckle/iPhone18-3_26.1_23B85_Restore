uint64_t sub_21D293F9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t *a6, uint64_t a7)
{
  v101 = a3;
  v112 = a2;
  v104 = a4;
  v105 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a4);
  MEMORY[0x28223BE20](v10 - 8);
  v102 = &v89 - v11;
  v108 = a6;
  v109 = a7;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(a6);
  v100 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v107 = &v89 - v12;
  v103 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  v117 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v91 = &v89 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F2E0);
  MEMORY[0x28223BE20](v113);
  v95 = &v89 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v89 - v16;
  v18 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v89 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80);
  MEMORY[0x28223BE20](v22 - 8);
  v94 = &v89 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v93 = &v89 - v25;
  MEMORY[0x28223BE20](v26);
  v28 = &v89 - v27;
  MEMORY[0x28223BE20](v29);
  v31 = &v89 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FB90);
  MEMORY[0x28223BE20](v32 - 8);
  v90 = &v89 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v96 = &v89 - v35;
  MEMORY[0x28223BE20](v36);
  v106 = &v89 - v37;
  MEMORY[0x28223BE20](v38);
  v97 = &v89 - v39;
  MEMORY[0x28223BE20](v40);
  v42 = &v89 - v41;
  MEMORY[0x28223BE20](v43);
  v45 = &v89 - v44;
  v110 = a1;
  sub_21D0D3954(a1, v31, &unk_27CE5CD80);
  v46 = *(v19 + 48);
  v115 = v19 + 48;
  v116 = v18;
  v47 = v46(v31, 1, v18);
  v99 = v21;
  if (v47)
  {
    sub_21D0CF7E0(v31, &unk_27CE5CD80);
    v48 = 1;
  }

  else
  {
    sub_21D104E74(v31, v21, type metadata accessor for TTRRemindersListViewModel.Item);
    sub_21D0CF7E0(v31, &unk_27CE5CD80);
    TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v45);
    sub_21D106918(v21, type metadata accessor for TTRRemindersListViewModel.Item);
    v48 = 0;
  }

  v49 = v117;
  v50 = v103;
  v114 = *(v117 + 56);
  v114(v45, v48, 1, v103);
  sub_21D0D3954(v112, v28, &unk_27CE5CD80);
  v51 = v46(v28, 1, v116);
  v52 = v97;
  v98 = v46;
  if (v51 == 1)
  {
    sub_21D0CF7E0(v28, &unk_27CE5CD80);
    v53 = 1;
  }

  else
  {
    TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v42);
    sub_21D106918(v28, type metadata accessor for TTRRemindersListViewModel.Item);
    v53 = 0;
  }

  v114(v42, v53, 1, v50);
  v54 = *(v113 + 48);
  sub_21D0D3954(v45, v17, &qword_27CE5FB90);
  sub_21D0D3954(v42, &v17[v54], &qword_27CE5FB90);
  v55 = *(v49 + 48);
  v56 = v55(v17, 1, v50);
  v117 = v49 + 48;
  v92 = v55;
  if (v56 != 1)
  {
    sub_21D0D3954(v17, v52, &qword_27CE5FB90);
    if (v55(&v17[v54], 1, v50) != 1)
    {
      v64 = &v17[v54];
      v65 = v91;
      sub_21D2A0DC8(v64, v91, type metadata accessor for TTRRemindersListViewModel.ItemID);
      v66 = _s15RemindersUICore25TTRRemindersListViewModelC6ItemIDO2eeoiySbAE_AEtFZ_0(v52, v65);
      sub_21D106918(v65, type metadata accessor for TTRRemindersListViewModel.ItemID);
      sub_21D0CF7E0(v42, &qword_27CE5FB90);
      sub_21D0CF7E0(v45, &qword_27CE5FB90);
      sub_21D106918(v52, type metadata accessor for TTRRemindersListViewModel.ItemID);
      sub_21D0CF7E0(v17, &qword_27CE5FB90);
      v58 = v110;
      v57 = v111;
      v60 = v106;
      v59 = v107;
      v61 = v104;
      v62 = v102;
      v63 = v99;
      if ((v66 & 1) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_14;
    }

    sub_21D0CF7E0(v42, &qword_27CE5FB90);
    sub_21D0CF7E0(v45, &qword_27CE5FB90);
    sub_21D106918(v52, type metadata accessor for TTRRemindersListViewModel.ItemID);
LABEL_12:
    sub_21D0CF7E0(v17, &qword_27CE5F2E0);
    v58 = v110;
    v57 = v111;
    v60 = v106;
    v59 = v107;
    v61 = v104;
    v62 = v102;
    v63 = v99;
    goto LABEL_16;
  }

  sub_21D0CF7E0(v42, &qword_27CE5FB90);
  sub_21D0CF7E0(v45, &qword_27CE5FB90);
  if (v55(&v17[v54], 1, v50) != 1)
  {
    goto LABEL_12;
  }

  sub_21D0CF7E0(v17, &qword_27CE5FB90);
  v58 = v110;
  v57 = v111;
  v60 = v106;
  v59 = v107;
  v61 = v104;
  v62 = v102;
  v63 = v99;
LABEL_14:
  v67 = *(v57 + 36);
  v68 = *(v58 + v67);
  if (*(v112 + v67) < v68)
  {
    *(v58 + v67) = v68 - 1;
  }

LABEL_16:
  sub_21D0D3954(v101, v62, v61);
  if ((*(v100 + 48))(v62, 1, v57) == 1)
  {
    return sub_21D0CF7E0(v62, v61);
  }

  sub_21D0D523C(v62, v59, v108);
  v70 = v93;
  sub_21D0D3954(v58, v93, &unk_27CE5CD80);
  if (v98(v70, 1, v116))
  {
    sub_21D0CF7E0(v70, &unk_27CE5CD80);
    v71 = 1;
  }

  else
  {
    sub_21D104E74(v70, v63, type metadata accessor for TTRRemindersListViewModel.Item);
    sub_21D0CF7E0(v70, &unk_27CE5CD80);
    TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v60);
    sub_21D106918(v63, type metadata accessor for TTRRemindersListViewModel.Item);
    v71 = 0;
  }

  v72 = v96;
  v73 = v94;
  v114(v60, v71, 1, v50);
  sub_21D0D3954(v59, v73, &unk_27CE5CD80);
  if (v98(v73, 1, v116) == 1)
  {
    sub_21D0CF7E0(v73, &unk_27CE5CD80);
    v74 = 1;
  }

  else
  {
    TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v72);
    sub_21D106918(v73, type metadata accessor for TTRRemindersListViewModel.Item);
    v74 = 0;
  }

  v114(v72, v74, 1, v50);
  v75 = *(v113 + 48);
  v76 = v95;
  sub_21D0D3954(v60, v95, &qword_27CE5FB90);
  sub_21D0D3954(v72, v76 + v75, &qword_27CE5FB90);
  v77 = v92;
  if (v92(v76, 1, v50) == 1)
  {
    sub_21D0CF7E0(v72, &qword_27CE5FB90);
    sub_21D0CF7E0(v60, &qword_27CE5FB90);
    if (v77(v76 + v75, 1, v50) == 1)
    {
      sub_21D0CF7E0(v76, &qword_27CE5FB90);
      v58 = v110;
      goto LABEL_32;
    }

    goto LABEL_29;
  }

  v78 = v90;
  sub_21D0D3954(v76, v90, &qword_27CE5FB90);
  if (v77(v76 + v75, 1, v50) == 1)
  {
    sub_21D0CF7E0(v96, &qword_27CE5FB90);
    sub_21D0CF7E0(v60, &qword_27CE5FB90);
    sub_21D106918(v78, type metadata accessor for TTRRemindersListViewModel.ItemID);
LABEL_29:
    sub_21D0CF7E0(v76, &qword_27CE5F2E0);
    return sub_21D0CF7E0(v59, v108);
  }

  v79 = v76 + v75;
  v80 = v91;
  sub_21D2A0DC8(v79, v91, type metadata accessor for TTRRemindersListViewModel.ItemID);
  v81 = v78;
  v82 = _s15RemindersUICore25TTRRemindersListViewModelC6ItemIDO2eeoiySbAE_AEtFZ_0(v78, v80);
  sub_21D106918(v80, type metadata accessor for TTRRemindersListViewModel.ItemID);
  sub_21D0CF7E0(v96, &qword_27CE5FB90);
  sub_21D0CF7E0(v60, &qword_27CE5FB90);
  sub_21D106918(v81, type metadata accessor for TTRRemindersListViewModel.ItemID);
  sub_21D0CF7E0(v76, &qword_27CE5FB90);
  if ((v82 & 1) == 0)
  {
    return sub_21D0CF7E0(v59, v108);
  }

LABEL_32:
  v83 = v111;
  v84 = *(v59 + *(v111 + 36));
  result = sub_21D0CF7E0(v59, v108);
  v85 = *(v83 + 36);
  v86 = *(v58 + v85);
  if (v86 >= v84)
  {
    v87 = __OFADD__(v86, 1);
    v88 = v86 + 1;
    if (v87)
    {
      __break(1u);
    }

    else
    {
      *(v58 + v85) = v88;
    }
  }

  return result;
}

uint64_t sub_21D294CA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v97 = a3;
  v105 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A520);
  MEMORY[0x28223BE20](v4 - 8);
  v98 = &v86 - v5;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59A08);
  v96 = *(v102 - 8);
  MEMORY[0x28223BE20](v102);
  v107 = &v86 - v6;
  v99 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier(0);
  v110 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v88 = &v86 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A498);
  MEMORY[0x28223BE20](v106);
  v101 = &v86 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v86 - v10;
  v12 = type metadata accessor for TTRAccountsListsViewModel.Item(0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v86 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A490);
  MEMORY[0x28223BE20](v16 - 8);
  v93 = &v86 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v92 = &v86 - v19;
  MEMORY[0x28223BE20](v20);
  v22 = &v86 - v21;
  MEMORY[0x28223BE20](v23);
  v25 = &v86 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A4A0);
  MEMORY[0x28223BE20](v26 - 8);
  v87 = &v86 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v104 = &v86 - v29;
  MEMORY[0x28223BE20](v30);
  v100 = &v86 - v31;
  MEMORY[0x28223BE20](v32);
  v89 = &v86 - v33;
  MEMORY[0x28223BE20](v34);
  v36 = &v86 - v35;
  MEMORY[0x28223BE20](v37);
  v39 = &v86 - v38;
  v103 = a1;
  sub_21D0D3954(a1, v25, &qword_27CE5A490);
  v40 = *(v13 + 48);
  v108 = v13 + 48;
  v109 = v12;
  v41 = v40(v25, 1, v12);
  v95 = v15;
  if (v41)
  {
    sub_21D0CF7E0(v25, &qword_27CE5A490);
    v42 = 1;
  }

  else
  {
    sub_21D104E74(v25, v15, type metadata accessor for TTRAccountsListsViewModel.Item);
    sub_21D0CF7E0(v25, &qword_27CE5A490);
    TTRAccountsListsViewModel.Item.treeItemIdentifier.getter(v39);
    sub_21D106918(v15, type metadata accessor for TTRAccountsListsViewModel.Item);
    v42 = 0;
  }

  v43 = v110;
  v44 = *(v110 + 56);
  v45 = v99;
  v44(v39, v42, 1, v99);
  sub_21D0D3954(v105, v22, &qword_27CE5A490);
  v46 = v40(v22, 1, v109);
  v94 = v40;
  if (v46 == 1)
  {
    sub_21D0CF7E0(v22, &qword_27CE5A490);
    v47 = 1;
  }

  else
  {
    TTRAccountsListsViewModel.Item.treeItemIdentifier.getter(v36);
    sub_21D106918(v22, type metadata accessor for TTRAccountsListsViewModel.Item);
    v47 = 0;
  }

  v44(v36, v47, 1, v45);
  v48 = *(v106 + 48);
  sub_21D0D3954(v39, v11, &qword_27CE5A4A0);
  sub_21D0D3954(v36, &v11[v48], &qword_27CE5A4A0);
  v49 = *(v43 + 48);
  v50 = v49(v11, 1, v45);
  v110 = v43 + 48;
  v90 = v49;
  v91 = v44;
  if (v50 != 1)
  {
    v57 = v89;
    sub_21D0D3954(v11, v89, &qword_27CE5A4A0);
    if (v49(&v11[v48], 1, v45) != 1)
    {
      v58 = &v11[v48];
      v59 = v88;
      sub_21D2A0DC8(v58, v88, type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
      v60 = _s15RemindersUICore25TTRAccountsListsViewModelC14ItemIdentifierO2eeoiySbAE_AEtFZ_0(v57, v59);
      sub_21D106918(v59, type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
      sub_21D0CF7E0(v36, &qword_27CE5A4A0);
      sub_21D0CF7E0(v39, &qword_27CE5A4A0);
      sub_21D106918(v57, type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
      sub_21D0CF7E0(v11, &qword_27CE5A4A0);
      v52 = v102;
      v51 = v103;
      v53 = v107;
      v54 = v104;
      v55 = v98;
      v56 = v95;
      if ((v60 & 1) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_14;
    }

    sub_21D0CF7E0(v36, &qword_27CE5A4A0);
    sub_21D0CF7E0(v39, &qword_27CE5A4A0);
    sub_21D106918(v57, type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
LABEL_12:
    sub_21D0CF7E0(v11, &qword_27CE5A498);
    v53 = v107;
    v52 = v102;
    v54 = v104;
    v55 = v98;
    v56 = v95;
    goto LABEL_16;
  }

  sub_21D0CF7E0(v36, &qword_27CE5A4A0);
  sub_21D0CF7E0(v39, &qword_27CE5A4A0);
  if (v49(&v11[v48], 1, v45) != 1)
  {
    goto LABEL_12;
  }

  sub_21D0CF7E0(v11, &qword_27CE5A4A0);
  v52 = v102;
  v51 = v103;
  v53 = v107;
  v54 = v104;
  v55 = v98;
  v56 = v95;
LABEL_14:
  v61 = *(v52 + 36);
  v62 = *(v51 + v61);
  if (*(v105 + v61) < v62)
  {
    *(v51 + v61) = v62 - 1;
  }

LABEL_16:
  sub_21D0D3954(v97, v55, &qword_27CE5A520);
  v63 = (*(v96 + 48))(v55, 1, v52);
  v65 = v100;
  v64 = v101;
  if (v63 == 1)
  {
    return sub_21D0CF7E0(v55, &qword_27CE5A520);
  }

  sub_21D0D523C(v55, v53, &qword_27CE59A08);
  v67 = v92;
  sub_21D0D3954(v103, v92, &qword_27CE5A490);
  if (v94(v67, 1, v109))
  {
    sub_21D0CF7E0(v67, &qword_27CE5A490);
    v68 = 1;
  }

  else
  {
    sub_21D104E74(v67, v56, type metadata accessor for TTRAccountsListsViewModel.Item);
    sub_21D0CF7E0(v67, &qword_27CE5A490);
    TTRAccountsListsViewModel.Item.treeItemIdentifier.getter(v65);
    sub_21D106918(v56, type metadata accessor for TTRAccountsListsViewModel.Item);
    v68 = 0;
  }

  v69 = v93;
  v70 = v91;
  v91(v65, v68, 1, v45);
  sub_21D0D3954(v53, v69, &qword_27CE5A490);
  if (v94(v69, 1, v109) == 1)
  {
    sub_21D0CF7E0(v69, &qword_27CE5A490);
    v71 = 1;
  }

  else
  {
    TTRAccountsListsViewModel.Item.treeItemIdentifier.getter(v54);
    sub_21D106918(v69, type metadata accessor for TTRAccountsListsViewModel.Item);
    v71 = 0;
  }

  v70(v54, v71, 1, v45);
  v72 = *(v106 + 48);
  sub_21D0D3954(v65, v64, &qword_27CE5A4A0);
  sub_21D0D3954(v54, v64 + v72, &qword_27CE5A4A0);
  v73 = v90;
  if (v90(v64, 1, v45) == 1)
  {
    sub_21D0CF7E0(v54, &qword_27CE5A4A0);
    sub_21D0CF7E0(v65, &qword_27CE5A4A0);
    v74 = v73(v64 + v72, 1, v45);
    v75 = v107;
    if (v74 == 1)
    {
      sub_21D0CF7E0(v64, &qword_27CE5A4A0);
      goto LABEL_32;
    }

    goto LABEL_29;
  }

  v76 = v87;
  sub_21D0D3954(v64, v87, &qword_27CE5A4A0);
  if (v73(v64 + v72, 1, v45) == 1)
  {
    sub_21D0CF7E0(v104, &qword_27CE5A4A0);
    sub_21D0CF7E0(v65, &qword_27CE5A4A0);
    sub_21D106918(v76, type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
    v75 = v107;
LABEL_29:
    sub_21D0CF7E0(v64, &qword_27CE5A498);
    return sub_21D0CF7E0(v75, &qword_27CE59A08);
  }

  v77 = v64 + v72;
  v78 = v88;
  sub_21D2A0DC8(v77, v88, type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
  v79 = v76;
  v80 = _s15RemindersUICore25TTRAccountsListsViewModelC14ItemIdentifierO2eeoiySbAE_AEtFZ_0(v76, v78);
  sub_21D106918(v78, type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
  sub_21D0CF7E0(v104, &qword_27CE5A4A0);
  sub_21D0CF7E0(v65, &qword_27CE5A4A0);
  sub_21D106918(v79, type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
  sub_21D0CF7E0(v64, &qword_27CE5A4A0);
  v75 = v107;
  if ((v80 & 1) == 0)
  {
    return sub_21D0CF7E0(v75, &qword_27CE59A08);
  }

LABEL_32:
  v81 = *(v75 + *(v52 + 36));
  result = sub_21D0CF7E0(v75, &qword_27CE59A08);
  v82 = *(v52 + 36);
  v83 = *(v103 + v82);
  if (v83 >= v81)
  {
    v84 = __OFADD__(v83, 1);
    v85 = v83 + 1;
    if (v84)
    {
      __break(1u);
    }

    else
    {
      *(v103 + v82) = v85;
    }
  }

  return result;
}

BOOL sub_21D295994(uint64_t a1, uint64_t a2)
{
  v42 = a2;
  v43 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  v3 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v36 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F2E0);
  MEMORY[0x28223BE20](v39);
  v41 = &v36 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v36 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FB90);
  MEMORY[0x28223BE20](v12 - 8);
  v38 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v36 - v18;
  v37 = a1;
  sub_21D0D3954(a1, v11, &unk_27CE5CD80);
  v20 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v21 = *(*(v20 - 8) + 48);
  if (v21(v11, 1, v20) == 1)
  {
    sub_21D0CF7E0(v11, &unk_27CE5CD80);
    v22 = 1;
  }

  else
  {
    TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v19);
    sub_21D106918(v11, type metadata accessor for TTRRemindersListViewModel.Item);
    v22 = 0;
  }

  v40 = v3;
  v23 = *(v3 + 56);
  v23(v19, v22, 1, v43);
  sub_21D0D3954(v42, v8, &unk_27CE5CD80);
  if (v21(v8, 1, v20) == 1)
  {
    sub_21D0CF7E0(v8, &unk_27CE5CD80);
    v24 = 1;
  }

  else
  {
    TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v16);
    sub_21D106918(v8, type metadata accessor for TTRRemindersListViewModel.Item);
    v24 = 0;
  }

  v25 = v41;
  v26 = v43;
  v23(v16, v24, 1, v43);
  v27 = *(v39 + 48);
  sub_21D0D3954(v19, v25, &qword_27CE5FB90);
  sub_21D0D3954(v16, v25 + v27, &qword_27CE5FB90);
  v28 = *(v40 + 48);
  if (v28(v25, 1, v26) != 1)
  {
    v29 = v38;
    sub_21D0D3954(v25, v38, &qword_27CE5FB90);
    if (v28(v25 + v27, 1, v26) != 1)
    {
      v31 = v25 + v27;
      v32 = v36;
      sub_21D2A0DC8(v31, v36, type metadata accessor for TTRRemindersListViewModel.ItemID);
      v33 = v29;
      v34 = _s15RemindersUICore25TTRRemindersListViewModelC6ItemIDO2eeoiySbAE_AEtFZ_0(v29, v32);
      sub_21D106918(v32, type metadata accessor for TTRRemindersListViewModel.ItemID);
      sub_21D0CF7E0(v16, &qword_27CE5FB90);
      sub_21D0CF7E0(v19, &qword_27CE5FB90);
      sub_21D106918(v33, type metadata accessor for TTRRemindersListViewModel.ItemID);
      sub_21D0CF7E0(v25, &qword_27CE5FB90);
      if (v34)
      {
        goto LABEL_15;
      }

      return 0;
    }

    sub_21D0CF7E0(v16, &qword_27CE5FB90);
    sub_21D0CF7E0(v19, &qword_27CE5FB90);
    sub_21D106918(v29, type metadata accessor for TTRRemindersListViewModel.ItemID);
LABEL_12:
    sub_21D0CF7E0(v25, &qword_27CE5F2E0);
    return 0;
  }

  sub_21D0CF7E0(v16, &qword_27CE5FB90);
  sub_21D0CF7E0(v19, &qword_27CE5FB90);
  if (v28(v25 + v27, 1, v26) != 1)
  {
    goto LABEL_12;
  }

  sub_21D0CF7E0(v25, &qword_27CE5FB90);
LABEL_15:
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59D38);
  return *(v37 + *(v35 + 36)) < *(v42 + *(v35 + 36));
}

BOOL sub_21D295F78(uint64_t a1, uint64_t a2)
{
  v42 = a2;
  v43 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier(0);
  v3 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v36 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A498);
  MEMORY[0x28223BE20](v39);
  v41 = &v36 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A490);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v36 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A4A0);
  MEMORY[0x28223BE20](v12 - 8);
  v38 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v36 - v18;
  v37 = a1;
  sub_21D0D3954(a1, v11, &qword_27CE5A490);
  v20 = type metadata accessor for TTRAccountsListsViewModel.Item(0);
  v21 = *(*(v20 - 8) + 48);
  if (v21(v11, 1, v20) == 1)
  {
    sub_21D0CF7E0(v11, &qword_27CE5A490);
    v22 = 1;
  }

  else
  {
    TTRAccountsListsViewModel.Item.treeItemIdentifier.getter(v19);
    sub_21D106918(v11, type metadata accessor for TTRAccountsListsViewModel.Item);
    v22 = 0;
  }

  v40 = v3;
  v23 = *(v3 + 56);
  v23(v19, v22, 1, v43);
  sub_21D0D3954(v42, v8, &qword_27CE5A490);
  if (v21(v8, 1, v20) == 1)
  {
    sub_21D0CF7E0(v8, &qword_27CE5A490);
    v24 = 1;
  }

  else
  {
    TTRAccountsListsViewModel.Item.treeItemIdentifier.getter(v16);
    sub_21D106918(v8, type metadata accessor for TTRAccountsListsViewModel.Item);
    v24 = 0;
  }

  v25 = v41;
  v26 = v43;
  v23(v16, v24, 1, v43);
  v27 = *(v39 + 48);
  sub_21D0D3954(v19, v25, &qword_27CE5A4A0);
  sub_21D0D3954(v16, v25 + v27, &qword_27CE5A4A0);
  v28 = *(v40 + 48);
  if (v28(v25, 1, v26) != 1)
  {
    v29 = v38;
    sub_21D0D3954(v25, v38, &qword_27CE5A4A0);
    if (v28(v25 + v27, 1, v26) != 1)
    {
      v31 = v25 + v27;
      v32 = v36;
      sub_21D2A0DC8(v31, v36, type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
      v33 = v29;
      v34 = _s15RemindersUICore25TTRAccountsListsViewModelC14ItemIdentifierO2eeoiySbAE_AEtFZ_0(v29, v32);
      sub_21D106918(v32, type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
      sub_21D0CF7E0(v16, &qword_27CE5A4A0);
      sub_21D0CF7E0(v19, &qword_27CE5A4A0);
      sub_21D106918(v33, type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
      sub_21D0CF7E0(v25, &qword_27CE5A4A0);
      if (v34)
      {
        goto LABEL_15;
      }

      return 0;
    }

    sub_21D0CF7E0(v16, &qword_27CE5A4A0);
    sub_21D0CF7E0(v19, &qword_27CE5A4A0);
    sub_21D106918(v29, type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
LABEL_12:
    sub_21D0CF7E0(v25, &qword_27CE5A498);
    return 0;
  }

  sub_21D0CF7E0(v16, &qword_27CE5A4A0);
  sub_21D0CF7E0(v19, &qword_27CE5A4A0);
  if (v28(v25 + v27, 1, v26) != 1)
  {
    goto LABEL_12;
  }

  sub_21D0CF7E0(v25, &qword_27CE5A4A0);
LABEL_15:
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59A08);
  return *(v37 + *(v35 + 36)) < *(v42 + *(v35 + 36));
}

size_t sub_21D29655C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE581C8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - v6;
  v8 = *(*a1 + 136);
  swift_beginAccess();
  v9 = *(a1 + v8);
  if (v9 >> 62)
  {
    goto LABEL_18;
  }

  v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v11 = MEMORY[0x277D84F90];
  if (v10)
  {
    v23 = MEMORY[0x277D84F90];
    sub_21DBF8E0C();
    result = sub_21D18EB64(0, v10 & ~(v10 >> 63), 0);
    if ((v10 & 0x8000000000000000) == 0)
    {
      v19 = a1;
      v20 = v4;
      a1 = 0;
      v11 = v23;
      v21 = a2;
      v22 = v9 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if ((v9 & 0xC000000000000001) != 0)
        {
          v13 = MEMORY[0x223D44740](a1, v9);
        }

        else
        {
          if ((a1 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_17:
            __break(1u);
LABEL_18:
            v10 = sub_21DBFBD7C();
            goto LABEL_3;
          }

          if (a1 >= *(v22 + 16))
          {
            goto LABEL_17;
          }

          v13 = *(v9 + 8 * a1 + 32);
        }

        sub_21D29655C(v13);

        v23 = v11;
        v4 = *(v11 + 16);
        v14 = *(v11 + 24);
        a2 = v4 + 1;
        if (v4 >= v14 >> 1)
        {
          sub_21D18EB64(v14 > 1, v4 + 1, 1);
          v11 = v23;
        }

        ++a1;
        *(v11 + 16) = a2;
        sub_21D0D523C(v7, v11 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v4, &qword_27CE581C8);
        if (v10 == a1)
        {

          v4 = v20;
          a2 = v21;
          a1 = v19;
          goto LABEL_15;
        }
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:
    v15 = *(*a1 + 120);
    swift_beginAccess();
    sub_21D104E74(a1 + v15, a2, type metadata accessor for TTRRemindersListViewModel.Item);
    v16 = a1 + *(*a1 + 128);
    swift_beginAccess();
    v17 = *(v16 + 16);
    v18 = a2 + *(v4 + 52);
    *v18 = *v16;
    *(v18 + 16) = v17;
    *(a2 + *(v4 + 56)) = v11;
  }

  return result;
}

size_t sub_21D296850@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58180);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v26 - v6;
  v8 = *(*a1 + 136);
  swift_beginAccess();
  result = *(a1 + v8);
  if (result >> 62)
  {
    goto LABEL_19;
  }

  v10 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    v11 = MEMORY[0x277D84F90];
    if (!v10)
    {
LABEL_16:
      v20 = *(*a1 + 120);
      swift_beginAccess();
      sub_21D104E74(a1 + v20, a2, type metadata accessor for TTRAccountsListsViewModel.Item);
      v21 = a1 + *(*a1 + 128);
      swift_beginAccess();
      v22 = *v21;
      v23 = a2 + *(v4 + 52);
      *v23 = *v21;
      v24 = *(v21 + 8);
      *(v23 + 8) = v24;
      *(a2 + *(v4 + 56)) = v11;
      return sub_21D105AA4(v22, v24);
    }

    v33 = MEMORY[0x277D84F90];
    v12 = result;
    sub_21DBF8E0C();
    result = sub_21D0F5590(0, v10 & ~(v10 >> 63), 0);
    if (v10 < 0)
    {
      break;
    }

    v26 = a1;
    v27 = v4;
    v28 = a2;
    v13 = 0;
    a2 = 0;
    v11 = v33;
    v14 = v12;
    v30 = v12;
    v31 = v12 & 0xC000000000000001;
    v29 = v12 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      a1 = v10;
      v15 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v31)
      {
        v16 = MEMORY[0x223D44740](v13, v14);
      }

      else
      {
        if (v13 >= *(v29 + 16))
        {
          goto LABEL_18;
        }

        v16 = *(v14 + 8 * v13 + 32);
      }

      sub_21D296B6C(v16, v32, v7);

      v33 = v11;
      v18 = *(v11 + 16);
      v17 = *(v11 + 24);
      v4 = v18 + 1;
      if (v18 >= v17 >> 1)
      {
        sub_21D0F5590(v17 > 1, v18 + 1, 1);
        v11 = v33;
      }

      *(v11 + 16) = v4;
      result = sub_21D0D523C(v7, v11 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v18, &qword_27CE58180);
      ++v13;
      v19 = v15 == a1;
      v10 = a1;
      v14 = v30;
      if (v19)
      {

        v4 = v27;
        a2 = v28;
        a1 = v26;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    v25 = result;
    v10 = sub_21DBFBD7C();
    result = v25;
  }

  __break(1u);
  return result;
}

size_t sub_21D296B6C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v34 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58180);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v27 - v9;
  v11 = *(*a1 + 136);
  swift_beginAccess();
  result = *(a1 + v11);
  if (result >> 62)
  {
    goto LABEL_18;
  }

  v13 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    v14 = MEMORY[0x277D84F90];
    if (!v13)
    {
LABEL_15:
      v21 = *(*a1 + 120);
      swift_beginAccess();
      sub_21D104E74(a1 + v21, a3, type metadata accessor for TTRAccountsListsViewModel.Item);
      v22 = a1 + *(*a1 + 128);
      swift_beginAccess();
      v23 = *v22;
      v24 = a3 + *(v7 + 52);
      *v24 = *v22;
      v25 = *(v22 + 8);
      *(v24 + 8) = v25;
      *(a3 + *(v7 + 56)) = v14;
      return sub_21D105AA4(v23, v25);
    }

    v36 = MEMORY[0x277D84F90];
    v15 = v13 & ~(v13 >> 63);
    v16 = result;
    v35 = v13;
    sub_21DBF8E0C();
    result = sub_21D0F5590(0, v15, 0);
    if (v35 < 0)
    {
      break;
    }

    v28 = a1;
    v29 = v7;
    v7 = 0;
    v14 = v36;
    v17 = v16;
    v32 = v16;
    v33 = v16 & 0xC000000000000001;
    v30 = a3;
    v31 = v16 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      a1 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if (v33)
      {
        v18 = MEMORY[0x223D44740](v7, v17);
      }

      else
      {
        if (v7 >= *(v31 + 16))
        {
          goto LABEL_17;
        }

        v18 = *(v17 + 8 * v7 + 32);
      }

      sub_21D296B6C(v18, v34, v37);
      a3 = v4;

      v36 = v14;
      v20 = *(v14 + 16);
      v19 = *(v14 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_21D0F5590(v19 > 1, v20 + 1, 1);
        v14 = v36;
      }

      *(v14 + 16) = v20 + 1;
      result = sub_21D0D523C(v10, v14 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v20, &qword_27CE58180);
      ++v7;
      v17 = v32;
      if (a1 == v35)
      {

        v7 = v29;
        a3 = v30;
        a1 = v28;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    v26 = result;
    v13 = sub_21DBFBD7C();
    result = v26;
  }

  __break(1u);
  return result;
}

uint64_t sub_21D296E98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_21D0D3954(a1, a2, &unk_27CE5CD80);
  sub_21DBF5B9C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59D70);
  sub_21D2F89FC(&qword_280D1B818, MEMORY[0x277CC9A28]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE67A70);
  sub_21D0D0F1C(&qword_280D178C8, &unk_27CE67A70);
  return sub_21DBFBCBC();
}

uint64_t sub_21D296FBC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v12 - v3;
  v13 = 40;
  v14 = 0xE100000000000000;
  sub_21D0D3954(v1, v12 - v3, &unk_27CE5CD80);
  v5 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  if ((*(*(v5 - 8) + 48))(v4, 1, v5) == 1)
  {
    sub_21D0CF7E0(v4, &unk_27CE5CD80);
    v6 = 0xE300000000000000;
    v7 = 7104878;
  }

  else
  {
    v8 = sub_21D25D250();
    v6 = v9;
    sub_21D106918(v4, type metadata accessor for TTRRemindersListViewModel.Item);
    v7 = v8;
  }

  MEMORY[0x223D42AA0](v7, v6);

  MEMORY[0x223D42AA0](8236, 0xE200000000000000);
  v12[1] = *(v1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59D38) + 36));
  v10 = sub_21DBFC5BC();
  MEMORY[0x223D42AA0](v10);

  MEMORY[0x223D42AA0](41, 0xE100000000000000);
  return v13;
}

BOOL sub_21D297174(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v39 = a3;
  v40 = a4;
  v45 = a2;
  v46 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  v5 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v38 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F2E0);
  MEMORY[0x28223BE20](v43);
  v8 = &v37 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v37 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FB90);
  MEMORY[0x28223BE20](v15 - 8);
  v42 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v37 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v37 - v21;
  v41 = a1;
  sub_21D0D3954(a1, v14, &unk_27CE5CD80);
  v23 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v24 = *(*(v23 - 8) + 48);
  if (v24(v14, 1, v23) == 1)
  {
    sub_21D0CF7E0(v14, &unk_27CE5CD80);
    v25 = 1;
  }

  else
  {
    TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v22);
    sub_21D106918(v14, type metadata accessor for TTRRemindersListViewModel.Item);
    v25 = 0;
  }

  v44 = v5;
  v26 = *(v5 + 56);
  v26(v22, v25, 1, v46);
  sub_21D0D3954(v45, v11, &unk_27CE5CD80);
  if (v24(v11, 1, v23) == 1)
  {
    sub_21D0CF7E0(v11, &unk_27CE5CD80);
    v27 = 1;
  }

  else
  {
    TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v19);
    sub_21D106918(v11, type metadata accessor for TTRRemindersListViewModel.Item);
    v27 = 0;
  }

  v28 = v46;
  v26(v19, v27, 1, v46);
  v29 = *(v43 + 48);
  sub_21D0D3954(v22, v8, &qword_27CE5FB90);
  sub_21D0D3954(v19, &v8[v29], &qword_27CE5FB90);
  v30 = *(v44 + 48);
  if (v30(v8, 1, v28) != 1)
  {
    v31 = v42;
    sub_21D0D3954(v8, v42, &qword_27CE5FB90);
    if (v30(&v8[v29], 1, v28) != 1)
    {
      v33 = &v8[v29];
      v34 = v38;
      sub_21D2A0DC8(v33, v38, type metadata accessor for TTRRemindersListViewModel.ItemID);
      v35 = _s15RemindersUICore25TTRRemindersListViewModelC6ItemIDO2eeoiySbAE_AEtFZ_0(v31, v34);
      sub_21D106918(v34, type metadata accessor for TTRRemindersListViewModel.ItemID);
      sub_21D0CF7E0(v19, &qword_27CE5FB90);
      sub_21D0CF7E0(v22, &qword_27CE5FB90);
      sub_21D106918(v31, type metadata accessor for TTRRemindersListViewModel.ItemID);
      sub_21D0CF7E0(v8, &qword_27CE5FB90);
      if (v35)
      {
        goto LABEL_15;
      }

      return 0;
    }

    sub_21D0CF7E0(v19, &qword_27CE5FB90);
    sub_21D0CF7E0(v22, &qword_27CE5FB90);
    sub_21D106918(v31, type metadata accessor for TTRRemindersListViewModel.ItemID);
LABEL_12:
    sub_21D0CF7E0(v8, &qword_27CE5F2E0);
    return 0;
  }

  sub_21D0CF7E0(v19, &qword_27CE5FB90);
  sub_21D0CF7E0(v22, &qword_27CE5FB90);
  if (v30(&v8[v29], 1, v28) != 1)
  {
    goto LABEL_12;
  }

  sub_21D0CF7E0(v8, &qword_27CE5FB90);
LABEL_15:
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(v39);
  return *(v41 + *(v36 + 36)) == *(v45 + *(v36 + 36));
}

BOOL sub_21D297734(uint64_t a1, uint64_t a2)
{
  v41 = a2;
  v42 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier(0);
  v3 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v36 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A498);
  MEMORY[0x28223BE20](v38);
  v6 = &v35 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A490);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v35 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A4A0);
  MEMORY[0x28223BE20](v13 - 8);
  v39 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v35 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v35 - v19;
  v37 = a1;
  sub_21D0D3954(a1, v12, &qword_27CE5A490);
  v21 = type metadata accessor for TTRAccountsListsViewModel.Item(0);
  v22 = *(*(v21 - 8) + 48);
  if (v22(v12, 1, v21) == 1)
  {
    sub_21D0CF7E0(v12, &qword_27CE5A490);
    v23 = 1;
  }

  else
  {
    TTRAccountsListsViewModel.Item.treeItemIdentifier.getter(v20);
    sub_21D106918(v12, type metadata accessor for TTRAccountsListsViewModel.Item);
    v23 = 0;
  }

  v40 = v3;
  v24 = *(v3 + 56);
  v24(v20, v23, 1, v42);
  sub_21D0D3954(v41, v9, &qword_27CE5A490);
  if (v22(v9, 1, v21) == 1)
  {
    sub_21D0CF7E0(v9, &qword_27CE5A490);
    v25 = 1;
  }

  else
  {
    TTRAccountsListsViewModel.Item.treeItemIdentifier.getter(v17);
    sub_21D106918(v9, type metadata accessor for TTRAccountsListsViewModel.Item);
    v25 = 0;
  }

  v26 = v39;
  v27 = v42;
  v24(v17, v25, 1, v42);
  v28 = *(v38 + 48);
  sub_21D0D3954(v20, v6, &qword_27CE5A4A0);
  sub_21D0D3954(v17, &v6[v28], &qword_27CE5A4A0);
  v29 = *(v40 + 48);
  if (v29(v6, 1, v27) != 1)
  {
    sub_21D0D3954(v6, v26, &qword_27CE5A4A0);
    if (v29(&v6[v28], 1, v27) != 1)
    {
      v31 = &v6[v28];
      v32 = v36;
      sub_21D2A0DC8(v31, v36, type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
      v33 = _s15RemindersUICore25TTRAccountsListsViewModelC14ItemIdentifierO2eeoiySbAE_AEtFZ_0(v26, v32);
      sub_21D106918(v32, type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
      sub_21D0CF7E0(v17, &qword_27CE5A4A0);
      sub_21D0CF7E0(v20, &qword_27CE5A4A0);
      sub_21D106918(v26, type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
      sub_21D0CF7E0(v6, &qword_27CE5A4A0);
      if (v33)
      {
        goto LABEL_15;
      }

      return 0;
    }

    sub_21D0CF7E0(v17, &qword_27CE5A4A0);
    sub_21D0CF7E0(v20, &qword_27CE5A4A0);
    sub_21D106918(v26, type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
LABEL_12:
    sub_21D0CF7E0(v6, &qword_27CE5A498);
    return 0;
  }

  sub_21D0CF7E0(v17, &qword_27CE5A4A0);
  sub_21D0CF7E0(v20, &qword_27CE5A4A0);
  if (v29(&v6[v28], 1, v27) != 1)
  {
    goto LABEL_12;
  }

  sub_21D0CF7E0(v6, &qword_27CE5A4A0);
LABEL_15:
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59A08);
  return *(v37 + *(v34 + 36)) == *(v41 + *(v34 + 36));
}

uint64_t sub_21D297CFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27[0] = a2;
  v4 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v27 - v11;
  v13 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v2 + 16);
  v19 = *(v17 + 16);
  v18 = *(v17 + 24);
  ObjectType = swift_getObjectType();
  v27[1] = v19;
  (*(*(*(v18 + 8) + 8) + 48))(a1, ObjectType);
  v21 = *(v14 + 48);
  if (v21(v12, 1, v13) == 1)
  {
    sub_21D0CF7E0(v12, &unk_27CE5CD80);
  }

  else
  {
    sub_21D2A0DC8(v12, v16, type metadata accessor for TTRRemindersListViewModel.Item);
    TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v6);
    sub_21DAEBE84(v6, v9);
    sub_21D106918(v6, type metadata accessor for TTRRemindersListViewModel.ItemID);
    v22 = v21(v9, 1, v13);
    sub_21D0CF7E0(v9, &unk_27CE5CD80);
    if (v22 != 1)
    {
      v25 = v27[0];
      sub_21D2A0DC8(v16, v27[0], type metadata accessor for TTRRemindersListViewModel.Item);
      v24 = v25;
      v23 = 0;
      return (*(v14 + 56))(v24, v23, 1, v13);
    }

    sub_21D106918(v16, type metadata accessor for TTRRemindersListViewModel.Item);
  }

  v23 = 1;
  v24 = v27[0];
  return (*(v14 + 56))(v24, v23, 1, v13);
}

uint64_t sub_21D29801C(uint64_t a1, uint64_t *a2, uint64_t a3, void (*a4)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a5)(void, uint64_t, uint64_t, uint64_t))
{
  v9 = *(a1 + 8);
  result = sub_21DBFC59C();
  if (result < v9)
  {
    if (v9 >= -1)
    {
      v11 = result;
      v12 = v9 / 2;
      if (v9 <= 1)
      {
        v13 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(a2);
        v13 = sub_21DBFA69C();
        *(v13 + 16) = v12;
      }

      v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a2) - 8);
      v15[0] = v13 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
      v15[1] = v12;
      a4(v15, v16, a1, v11);
      *(v13 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v9 < 0)
  {
    goto LABEL_12;
  }

  if (v9)
  {
    return a5(0, v9, 1, a1);
  }

  return result;
}

void sub_21D298170(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58948);
  MEMORY[0x28223BE20](v34);
  v33 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v24 - v10;
  MEMORY[0x28223BE20](v12);
  v15 = &v24 - v14;
  v26 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v17 = *(v13 + 72);
    v18 = *a4 + v17 * (a3 - 1);
    v31 = -v17;
    v32 = v16;
    v19 = a1 - a3;
    v25 = v17;
    v20 = v16 + v17 * a3;
LABEL_5:
    v29 = v18;
    v30 = a3;
    v27 = v20;
    v28 = v19;
    while (1)
    {
      sub_21D0D3954(v20, v15, &qword_27CE58948);
      sub_21D0D3954(v18, v11, &qword_27CE58948);
      v21 = sub_21DBF5C8C();
      sub_21D0CF7E0(v11, &qword_27CE58948);
      sub_21D0CF7E0(v15, &qword_27CE58948);
      if ((v21 & 1) == 0)
      {
LABEL_4:
        a3 = v30 + 1;
        v18 = v29 + v25;
        v19 = v28 - 1;
        v20 = v27 + v25;
        if (v30 + 1 == v26)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v32)
      {
        break;
      }

      v22 = v33;
      sub_21D0D523C(v20, v33, &qword_27CE58948);
      swift_arrayInitWithTakeFrontToBack();
      sub_21D0D523C(v22, v18, &qword_27CE58948);
      v18 += v31;
      v20 += v31;
      if (__CFADD__(v19++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_21D2983D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3A0);
  MEMORY[0x28223BE20](v49);
  v47 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v37 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CDA0);
  MEMORY[0x28223BE20](v12);
  v46 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v50 = &v37 - v15;
  MEMORY[0x28223BE20](v16);
  v48 = &v37 - v18;
  v39 = a2;
  if (a3 != a2)
  {
    v19 = *a4;
    v20 = *(v17 + 72);
    v21 = *a4 + v20 * (a3 - 1);
    v44 = -v20;
    v45 = v19;
    v22 = a1 - a3;
    v23 = &qword_27CE5CDA0;
    v38 = v20;
    v24 = v19 + v20 * a3;
LABEL_5:
    v42 = v21;
    v43 = a3;
    v40 = v24;
    v41 = v22;
    v25 = v24;
    while (1)
    {
      v26 = v48;
      sub_21D0D3954(v25, v48, v23);
      sub_21D0D3954(v21, v50, v23);
      sub_21D0D3954(v26 + *(v12 + 56), v11, &qword_27CE5A3A0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v27 = *&v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3F0) + 48)];
      }

      else
      {
        v27 = 0;
      }

      v28 = v23;
      v29 = v11;
      sub_21D0CF7E0(v11, &unk_27CE5CD80);
      v30 = v12;
      v31 = v50 + *(v12 + 56);
      v32 = v47;
      sub_21D0D3954(v31, v47, &qword_27CE5A3A0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v33 = *(v32 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3F0) + 48));
      }

      else
      {
        v33 = 0;
      }

      sub_21D0CF7E0(v32, &unk_27CE5CD80);
      sub_21D0CF7E0(v50, v28);
      sub_21D0CF7E0(v48, v28);
      v34 = v27 < v33;
      v23 = v28;
      v12 = v30;
      v11 = v29;
      if (!v34)
      {
LABEL_4:
        a3 = v43 + 1;
        v21 = v42 + v38;
        v22 = v41 - 1;
        v24 = v40 + v38;
        if (v43 + 1 == v39)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v45)
      {
        break;
      }

      v35 = v46;
      sub_21D0D523C(v25, v46, v28);
      swift_arrayInitWithTakeFrontToBack();
      sub_21D0D523C(v35, v21, v28);
      v21 += v44;
      v25 += v44;
      if (__CFADD__(v22++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_21D2987B0(unint64_t *a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v108 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58948);
  v118 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v112 = &v105 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v121 = &v105 - v9;
  MEMORY[0x28223BE20](v10);
  v123 = &v105 - v11;
  MEMORY[0x28223BE20](v12);
  v122 = &v105 - v13;
  v119 = a3;
  v14 = a3[1];
  if (v14 < 1)
  {
    v16 = MEMORY[0x277D84F90];
LABEL_100:
    a4 = *v108;
    if (!*v108)
    {
      goto LABEL_139;
    }

    v6 = v16;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v31 = v109;
    if (isUniquelyReferenced_nonNull_native)
    {
      v100 = v6;
LABEL_103:
      v125 = v100;
      v6 = *(v100 + 2);
      if (v6 >= 2)
      {
        while (*v119)
        {
          v101 = *&v100[16 * v6];
          v102 = v100;
          v103 = *&v100[16 * v6 + 24];
          sub_21D299E54(*v119 + *(v118 + 72) * v101, *v119 + *(v118 + 72) * *&v100[16 * v6 + 16], *v119 + *(v118 + 72) * v103, a4);
          if (v31)
          {
            goto LABEL_111;
          }

          if (v103 < v101)
          {
            goto LABEL_126;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v102 = sub_21D82E300(v102);
          }

          if (v6 - 2 >= *(v102 + 2))
          {
            goto LABEL_127;
          }

          v104 = &v102[16 * v6];
          *v104 = v101;
          *(v104 + 1) = v103;
          v125 = v102;
          sub_21D82E274(v6 - 1);
          v100 = v125;
          v6 = *(v125 + 2);
          if (v6 <= 1)
          {
            goto LABEL_111;
          }
        }

        goto LABEL_137;
      }

LABEL_111:

      return;
    }

LABEL_133:
    v100 = sub_21D82E300(v6);
    goto LABEL_103;
  }

  v106 = a4;
  v15 = 0;
  v16 = MEMORY[0x277D84F90];
  v17 = &qword_27CE58948;
  v124 = v6;
  while (1)
  {
    v18 = v15;
    v113 = v16;
    if (v15 + 1 >= v14)
    {
      v30 = v15 + 1;
      v31 = v109;
    }

    else
    {
      v19 = v15;
      v20 = *v119;
      v116 = v20;
      v21 = *(v118 + 72);
      a4 = v20 + v21 * (v15 + 1);
      v22 = v122;
      sub_21D0D3954(a4, v122, v17);
      v23 = v20 + v21 * v19;
      v24 = v123;
      sub_21D0D3954(v23, v123, v17);
      LODWORD(v117) = sub_21DBF5C8C();
      sub_21D0CF7E0(v24, v17);
      sub_21D0CF7E0(v22, v17);
      v107 = v19;
      v25 = v19 + 2;
      v120 = v21;
      v26 = v116 + v21 * (v19 + 2);
      while (v14 != v25)
      {
        v27 = v122;
        sub_21D0D3954(v26, v122, v17);
        v28 = v123;
        sub_21D0D3954(a4, v123, v17);
        v29 = sub_21DBF5C8C() & 1;
        sub_21D0CF7E0(v28, v17);
        sub_21D0CF7E0(v27, v17);
        ++v25;
        v26 += v120;
        a4 += v120;
        if ((v117 & 1) != v29)
        {
          v30 = v25 - 1;
          goto LABEL_12;
        }
      }

      v30 = v14;
LABEL_12:
      v6 = v124;
      v18 = v107;
      v31 = v109;
      if (v117)
      {
        if (v30 < v107)
        {
          goto LABEL_130;
        }

        if (v107 < v30)
        {
          v32 = v120 * (v30 - 1);
          v33 = v30;
          v34 = v30 * v120;
          v35 = v30;
          v36 = v107;
          a4 = v107 * v120;
          do
          {
            if (v36 != --v33)
            {
              v37 = *v119;
              if (!*v119)
              {
                goto LABEL_136;
              }

              sub_21D0D523C(v37 + a4, v112, v17);
              if (a4 < v32 || v37 + a4 >= v37 + v34)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (a4 != v32)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              sub_21D0D523C(v112, v37 + v32, v17);
            }

            ++v36;
            v32 -= v120;
            v34 -= v120;
            a4 += v120;
          }

          while (v36 < v33);
          v31 = v109;
          v6 = v124;
          v18 = v107;
          v30 = v35;
        }
      }
    }

    v38 = v119[1];
    if (v30 >= v38)
    {
      goto LABEL_35;
    }

    if (__OFSUB__(v30, v18))
    {
      goto LABEL_129;
    }

    if (v30 - v18 >= v106)
    {
LABEL_35:
      v15 = v30;
      if (v30 < v18)
      {
        goto LABEL_128;
      }

      goto LABEL_36;
    }

    if (__OFADD__(v18, v106))
    {
      goto LABEL_131;
    }

    if (v18 + v106 >= v38)
    {
      v39 = v119[1];
    }

    else
    {
      v39 = v18 + v106;
    }

    if (v39 < v18)
    {
LABEL_132:
      __break(1u);
      goto LABEL_133;
    }

    if (v30 == v39)
    {
      goto LABEL_35;
    }

    v109 = v31;
    v86 = *v119;
    v87 = *(v118 + 72);
    v88 = *v119 + v87 * (v30 - 1);
    v89 = -v87;
    v107 = v18;
    v90 = v18 - v30;
    v117 = v30;
    v110 = v87;
    v111 = v39;
    v120 = v86;
    a4 = v86 + v30 * v87;
LABEL_90:
    v114 = a4;
    v115 = v90;
    v116 = v88;
    v91 = v88;
LABEL_91:
    v92 = v122;
    sub_21D0D3954(a4, v122, v17);
    v93 = v123;
    sub_21D0D3954(v91, v123, v17);
    v94 = sub_21DBF5C8C();
    sub_21D0CF7E0(v93, v17);
    sub_21D0CF7E0(v92, v17);
    if (v94)
    {
      break;
    }

    v6 = v124;
LABEL_89:
    v15 = v111;
    v88 = v116 + v110;
    v90 = v115 - 1;
    a4 = v114 + v110;
    if (++v117 != v111)
    {
      goto LABEL_90;
    }

    v31 = v109;
    v18 = v107;
    if (v111 < v107)
    {
      goto LABEL_128;
    }

LABEL_36:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v16 = v113;
    }

    else
    {
      v16 = sub_21D210B90(0, *(v113 + 2) + 1, 1, v113);
    }

    v41 = *(v16 + 2);
    v40 = *(v16 + 3);
    a4 = v41 + 1;
    if (v41 >= v40 >> 1)
    {
      v16 = sub_21D210B90((v40 > 1), v41 + 1, 1, v16);
    }

    *(v16 + 2) = a4;
    v42 = &v16[16 * v41];
    *(v42 + 4) = v18;
    *(v42 + 5) = v15;
    if (!*v108)
    {
      goto LABEL_138;
    }

    if (v41)
    {
      v43 = *v108;
      v6 = v124;
      while (1)
      {
        v44 = a4 - 1;
        if (a4 >= 4)
        {
          break;
        }

        if (a4 == 3)
        {
          v45 = *(v16 + 4);
          v46 = *(v16 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_56:
          if (v48)
          {
            goto LABEL_117;
          }

          v61 = &v16[16 * a4];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_120;
          }

          v67 = &v16[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_123;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_124;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = a4 - 2;
            }

            goto LABEL_77;
          }

          goto LABEL_70;
        }

        v71 = &v16[16 * a4];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_70:
        if (v66)
        {
          goto LABEL_119;
        }

        v74 = &v16[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_122;
        }

        if (v77 < v65)
        {
          goto LABEL_4;
        }

LABEL_77:
        v6 = v44 - 1;
        if (v44 - 1 >= a4)
        {
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
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
          goto LABEL_132;
        }

        if (!*v119)
        {
          goto LABEL_135;
        }

        v82 = v16;
        a4 = *&v16[16 * v6 + 32];
        v83 = *&v16[16 * v44 + 40];
        sub_21D299E54(*v119 + *(v118 + 72) * a4, *v119 + *(v118 + 72) * *&v16[16 * v44 + 32], *v119 + *(v118 + 72) * v83, v43);
        if (v31)
        {
          goto LABEL_111;
        }

        if (v83 < a4)
        {
          goto LABEL_113;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v84 = v82;
        }

        else
        {
          v84 = sub_21D82E300(v82);
        }

        if (v6 >= *(v84 + 2))
        {
          goto LABEL_114;
        }

        v85 = &v84[16 * v6];
        *(v85 + 4) = a4;
        *(v85 + 5) = v83;
        v125 = v84;
        sub_21D82E274(v44);
        v16 = v125;
        a4 = *(v125 + 2);
        v6 = v124;
        if (a4 <= 1)
        {
          goto LABEL_4;
        }
      }

      v49 = &v16[16 * a4 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_115;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_116;
      }

      v56 = &v16[16 * a4];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_118;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_121;
      }

      if (v60 >= v52)
      {
        v78 = &v16[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_125;
        }

        if (v47 < v81)
        {
          v44 = a4 - 2;
        }

        goto LABEL_77;
      }

      goto LABEL_56;
    }

    v6 = v124;
LABEL_4:
    v109 = v31;
    v14 = v119[1];
    if (v15 >= v14)
    {
      goto LABEL_100;
    }
  }

  if (v120)
  {
    v95 = v17;
    v96 = v121;
    sub_21D0D523C(a4, v121, v95);
    v6 = v124;
    swift_arrayInitWithTakeFrontToBack();
    v97 = v96;
    v17 = v95;
    sub_21D0D523C(v97, v91, v95);
    v91 += v89;
    a4 += v89;
    if (__CFADD__(v90++, 1))
    {
      goto LABEL_89;
    }

    goto LABEL_91;
  }

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
}

void sub_21D299118(unint64_t *a1, uint64_t a2, unint64_t *a3, unint64_t a4)
{
  v5 = v4;
  v132 = a1;
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3A0);
  MEMORY[0x28223BE20](v154);
  v150 = &v127 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v151 = &v127 - v10;
  MEMORY[0x28223BE20](v11);
  v140 = &v127 - v12;
  MEMORY[0x28223BE20](v13);
  v139 = &v127 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CDA0);
  v143 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v134 = &v127 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v149 = &v127 - v18;
  MEMORY[0x28223BE20](v19);
  v155 = &v127 - v20;
  MEMORY[0x28223BE20](v21);
  v153 = &v127 - v22;
  MEMORY[0x28223BE20](v23);
  v147 = &v127 - v24;
  MEMORY[0x28223BE20](v25);
  v145 = &v127 - v26;
  MEMORY[0x28223BE20](v27);
  v130 = &v127 - v28;
  MEMORY[0x28223BE20](v29);
  v129 = &v127 - v30;
  v144 = a3;
  v31 = a3[1];
  if (v31 < 1)
  {
    v33 = MEMORY[0x277D84F90];
LABEL_111:
    v35 = *v132;
    if (!*v132)
    {
      goto LABEL_153;
    }

    a4 = v33;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v122 = a4;
    }

    else
    {
LABEL_147:
      v122 = sub_21D82E300(a4);
    }

    v156 = v122;
    a4 = *(v122 + 2);
    if (a4 >= 2)
    {
      while (*v144)
      {
        v123 = *&v122[16 * a4];
        v124 = v122;
        v125 = *&v122[16 * a4 + 24];
        sub_21D29A36C(*v144 + *(v143 + 72) * v123, *v144 + *(v143 + 72) * *&v122[16 * a4 + 16], *v144 + *(v143 + 72) * v125, v35);
        if (v5)
        {
          goto LABEL_125;
        }

        if (v125 < v123)
        {
          goto LABEL_140;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v124 = sub_21D82E300(v124);
        }

        if (a4 - 2 >= *(v124 + 2))
        {
          goto LABEL_141;
        }

        v126 = &v124[16 * a4];
        *v126 = v123;
        *(v126 + 1) = v125;
        v156 = v124;
        sub_21D82E274(a4 - 1);
        v122 = v156;
        a4 = *(v156 + 2);
        if (a4 <= 1)
        {
          goto LABEL_125;
        }
      }

      goto LABEL_151;
    }

    goto LABEL_125;
  }

  v128 = a4;
  v32 = 0;
  v33 = MEMORY[0x277D84F90];
  v34 = &unk_21DC09B90;
  v35 = v151;
  v152 = v15;
  while (1)
  {
    v135 = v33;
    if (v32 + 1 < v31)
    {
      v146 = v31;
      v36 = *v144;
      v37 = *(v143 + 72);
      a4 = *v144 + v37 * (v32 + 1);
      v38 = v32;
      v39 = v129;
      v40 = v34;
      sub_21D0D3954(a4, v129, &qword_27CE5CDA0);
      v41 = v36;
      v42 = v36 + v37 * v38;
      v43 = v130;
      sub_21D0D3954(v42, v130, &qword_27CE5CDA0);
      LODWORD(v142) = sub_21D27C5DC(v39, v43);
      if (!v5)
      {
        sub_21D0CF7E0(v43, &qword_27CE5CDA0);
        sub_21D0CF7E0(v39, &qword_27CE5CDA0);
        v131 = v38;
        v44 = v38 + 2;
        v45 = v41 + v37 * (v38 + 2);
        v141 = 0;
        v34 = v40;
        v46 = v37;
        v148 = v37;
        while (1)
        {
          v51 = v146;
          if (v146 == v44)
          {
            break;
          }

          v52 = v145;
          sub_21D0D3954(v45, v145, &qword_27CE5CDA0);
          sub_21D0D3954(a4, v147, &qword_27CE5CDA0);
          v53 = v139;
          sub_21D0D3954(v52 + *(v152 + 56), v139, &qword_27CE5A3A0);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v54 = *(v53 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3F0) + 48));
          }

          else
          {
            v54 = 0;
          }

          v55 = v140;
          sub_21D0CF7E0(v53, &unk_27CE5CD80);
          sub_21D0D3954(v147 + *(v152 + 56), v55, &qword_27CE5A3A0);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v47 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3F0) + 48);
            v48 = v55;
            v49 = *(v55 + v47);
          }

          else
          {
            v48 = v55;
            v49 = 0;
          }

          sub_21D0CF7E0(v48, &unk_27CE5CD80);
          sub_21D0CF7E0(v147, &qword_27CE5CDA0);
          v34 = &unk_21DC09B90;
          sub_21D0CF7E0(v145, &qword_27CE5CDA0);
          v50 = v54 >= v49;
          ++v44;
          v46 = v148;
          v45 += v148;
          a4 += v148;
          v5 = v141;
          if (((v142 ^ v50) & 1) == 0)
          {
            v51 = v44 - 1;
            break;
          }
        }

        v32 = v131;
        if ((v142 & 1) == 0)
        {
          goto LABEL_30;
        }

        if (v51 < v131)
        {
          goto LABEL_146;
        }

        if (v131 < v51)
        {
          v56 = v46 * (v51 - 1);
          v57 = v51;
          v58 = v51 * v46;
          v146 = v51;
          a4 = v131 * v46;
          do
          {
            if (v32 != --v57)
            {
              v59 = *v144;
              if (!*v144)
              {
                goto LABEL_150;
              }

              sub_21D0D523C(v59 + a4, v134, &qword_27CE5CDA0);
              if (a4 < v56 || v59 + a4 >= v59 + v58)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (a4 != v56)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              sub_21D0D523C(v134, v59 + v56, &qword_27CE5CDA0);
              v46 = v148;
            }

            ++v32;
            v56 -= v46;
            v58 -= v46;
            a4 += v46;
          }

          while (v32 < v57);
          v5 = v141;
          v15 = v152;
          v32 = v131;
          v51 = v146;
        }

        else
        {
LABEL_30:
          v15 = v152;
        }

        goto LABEL_32;
      }

      sub_21D0CF7E0(v43, &qword_27CE5CDA0);
      sub_21D0CF7E0(v39, &qword_27CE5CDA0);
LABEL_125:

      return;
    }

    v51 = v32 + 1;
LABEL_32:
    v60 = v144[1];
    if (v51 >= v60)
    {
      goto LABEL_41;
    }

    if (__OFSUB__(v51, v32))
    {
      goto LABEL_143;
    }

    if (v51 - v32 >= v128)
    {
LABEL_41:
      a4 = v51;
      if (v51 < v32)
      {
        goto LABEL_142;
      }

      goto LABEL_42;
    }

    if (__OFADD__(v32, v128))
    {
      goto LABEL_144;
    }

    if (v32 + v128 >= v60)
    {
      a4 = v144[1];
    }

    else
    {
      a4 = v32 + v128;
    }

    if (a4 < v32)
    {
LABEL_145:
      __break(1u);
LABEL_146:
      __break(1u);
      goto LABEL_147;
    }

    if (v51 == a4)
    {
      goto LABEL_41;
    }

    v141 = v5;
    v108 = *v144;
    v109 = *(v143 + 72);
    v110 = *v144 + v109 * (v51 - 1);
    v111 = -v109;
    v131 = v32;
    v112 = v32 - v51;
    v146 = v51;
    v148 = v108;
    v133 = v109;
    v113 = v108 + v51 * v109;
    v136 = a4;
LABEL_94:
    v137 = v113;
    v138 = v112;
    v114 = v113;
    v142 = v110;
    v115 = v110;
LABEL_95:
    v116 = v153;
    sub_21D0D3954(v114, v153, &qword_27CE5CDA0);
    sub_21D0D3954(v115, v155, &qword_27CE5CDA0);
    sub_21D0D3954(v116 + *(v15 + 56), v35, &qword_27CE5A3A0);
    v117 = swift_getEnumCaseMultiPayload() == 1 ? *(v35 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3F0) + 48)) : 0;
    sub_21D0CF7E0(v35, &unk_27CE5CD80);
    v118 = v150;
    sub_21D0D3954(v155 + *(v15 + 56), v150, &qword_27CE5A3A0);
    v119 = swift_getEnumCaseMultiPayload() == 1 ? *(v118 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3F0) + 48)) : 0;
    sub_21D0CF7E0(v118, &unk_27CE5CD80);
    sub_21D0CF7E0(v155, &qword_27CE5CDA0);
    sub_21D0CF7E0(v153, &qword_27CE5CDA0);
    if (v117 < v119)
    {
      break;
    }

    v35 = v151;
    v15 = v152;
LABEL_93:
    v110 = v142 + v133;
    v112 = v138 - 1;
    v113 = v137 + v133;
    ++v146;
    a4 = v136;
    if (v146 != v136)
    {
      goto LABEL_94;
    }

    v5 = v141;
    v34 = &unk_21DC09B90;
    v32 = v131;
    if (v136 < v131)
    {
      goto LABEL_142;
    }

LABEL_42:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v136 = a4;
    if (isUniquelyReferenced_nonNull_native)
    {
      v33 = v135;
    }

    else
    {
      v33 = sub_21D210B90(0, *(v135 + 2) + 1, 1, v135);
    }

    v63 = *(v33 + 2);
    v62 = *(v33 + 3);
    a4 = v63 + 1;
    if (v63 >= v62 >> 1)
    {
      v33 = sub_21D210B90((v62 > 1), v63 + 1, 1, v33);
    }

    *(v33 + 2) = a4;
    v64 = &v33[16 * v63];
    v65 = v136;
    *(v64 + 4) = v32;
    *(v64 + 5) = v65;
    v148 = *v132;
    if (!v148)
    {
      goto LABEL_152;
    }

    if (v63)
    {
      while (2)
      {
        v66 = a4 - 1;
        if (a4 >= 4)
        {
          v71 = &v33[16 * a4 + 32];
          v72 = *(v71 - 64);
          v73 = *(v71 - 56);
          v77 = __OFSUB__(v73, v72);
          v74 = v73 - v72;
          if (v77)
          {
            goto LABEL_129;
          }

          v76 = *(v71 - 48);
          v75 = *(v71 - 40);
          v77 = __OFSUB__(v75, v76);
          v69 = v75 - v76;
          v70 = v77;
          if (v77)
          {
            goto LABEL_130;
          }

          v78 = &v33[16 * a4];
          v80 = *v78;
          v79 = *(v78 + 1);
          v77 = __OFSUB__(v79, v80);
          v81 = v79 - v80;
          if (v77)
          {
            goto LABEL_132;
          }

          v77 = __OFADD__(v69, v81);
          v82 = v69 + v81;
          if (v77)
          {
            goto LABEL_135;
          }

          if (v82 >= v74)
          {
            v100 = &v33[16 * v66 + 32];
            v102 = *v100;
            v101 = *(v100 + 1);
            v77 = __OFSUB__(v101, v102);
            v103 = v101 - v102;
            if (v77)
            {
              goto LABEL_139;
            }

            if (v69 < v103)
            {
              v66 = a4 - 2;
            }
          }

          else
          {
LABEL_61:
            if (v70)
            {
              goto LABEL_131;
            }

            v83 = &v33[16 * a4];
            v85 = *v83;
            v84 = *(v83 + 1);
            v86 = __OFSUB__(v84, v85);
            v87 = v84 - v85;
            v88 = v86;
            if (v86)
            {
              goto LABEL_134;
            }

            v89 = &v33[16 * v66 + 32];
            v91 = *v89;
            v90 = *(v89 + 1);
            v77 = __OFSUB__(v90, v91);
            v92 = v90 - v91;
            if (v77)
            {
              goto LABEL_137;
            }

            if (__OFADD__(v87, v92))
            {
              goto LABEL_138;
            }

            if (v87 + v92 < v69)
            {
              goto LABEL_75;
            }

            if (v69 < v92)
            {
              v66 = a4 - 2;
            }
          }
        }

        else
        {
          if (a4 == 3)
          {
            v67 = *(v33 + 4);
            v68 = *(v33 + 5);
            v77 = __OFSUB__(v68, v67);
            v69 = v68 - v67;
            v70 = v77;
            goto LABEL_61;
          }

          v93 = &v33[16 * a4];
          v95 = *v93;
          v94 = *(v93 + 1);
          v77 = __OFSUB__(v94, v95);
          v87 = v94 - v95;
          v88 = v77;
LABEL_75:
          if (v88)
          {
            goto LABEL_133;
          }

          v96 = &v33[16 * v66];
          v98 = *(v96 + 4);
          v97 = *(v96 + 5);
          v77 = __OFSUB__(v97, v98);
          v99 = v97 - v98;
          if (v77)
          {
            goto LABEL_136;
          }

          if (v99 < v87)
          {
            break;
          }
        }

        v104 = v66 - 1;
        if (v66 - 1 >= a4)
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
          goto LABEL_145;
        }

        if (!*v144)
        {
          goto LABEL_149;
        }

        v105 = v33;
        a4 = *&v33[16 * v104 + 32];
        v106 = *&v33[16 * v66 + 40];
        sub_21D29A36C(*v144 + *(v143 + 72) * a4, *v144 + *(v143 + 72) * *&v33[16 * v66 + 32], *v144 + *(v143 + 72) * v106, v148);
        if (v5)
        {
          goto LABEL_125;
        }

        if (v106 < a4)
        {
          goto LABEL_127;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v105 = sub_21D82E300(v105);
        }

        if (v104 >= *(v105 + 2))
        {
          goto LABEL_128;
        }

        v107 = &v105[16 * v104];
        *(v107 + 4) = a4;
        *(v107 + 5) = v106;
        v156 = v105;
        sub_21D82E274(v66);
        v33 = v156;
        a4 = *(v156 + 2);
        if (a4 <= 1)
        {
          break;
        }

        continue;
      }
    }

    v31 = v144[1];
    v32 = v136;
    if (v136 >= v31)
    {
      goto LABEL_111;
    }
  }

  v35 = v151;
  v15 = v152;
  if (v148)
  {
    v120 = v149;
    sub_21D0D523C(v114, v149, &qword_27CE5CDA0);
    swift_arrayInitWithTakeFrontToBack();
    sub_21D0D523C(v120, v115, &qword_27CE5CDA0);
    v115 += v111;
    v114 += v111;
    if (__CFADD__(v112++, 1))
    {
      goto LABEL_93;
    }

    goto LABEL_95;
  }

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
}

void sub_21D299E54(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v44 = a3;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58948);
  MEMORY[0x28223BE20](v43);
  v42 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v36 - v9;
  v12 = *(v11 + 72);
  if (!v12)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v12 == -1)
  {
    goto LABEL_62;
  }

  v13 = v44 - a2;
  if (v44 - a2 == 0x8000000000000000 && v12 == -1)
  {
    goto LABEL_63;
  }

  v14 = (a2 - a1) / v12;
  v47 = a1;
  v46 = a4;
  if (v14 >= v13 / v12)
  {
    v16 = v13 / v12 * v12;
    if (a4 < a2 || a2 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    if (v16 < 1)
    {
      v24 = a4 + v16;
    }

    else
    {
      v22 = -v12;
      v23 = a4 + v16;
      v24 = a4 + v16;
      v39 = a4;
      v40 = -v12;
      v38 = a1;
      do
      {
        v36 = v24;
        v25 = a2;
        v26 = a2 + v22;
        v41 = v25;
        while (1)
        {
          v28 = v44;
          if (v25 <= a1)
          {
            v47 = v25;
            v45 = v36;
            goto LABEL_60;
          }

          v37 = v24;
          v44 += v22;
          v29 = v23 + v22;
          sub_21D0D3954(v29, v10, &qword_27CE58948);
          v30 = v26;
          v31 = v26;
          v32 = v10;
          v33 = v42;
          sub_21D0D3954(v31, v42, &qword_27CE58948);
          v34 = sub_21DBF5C8C();
          v35 = v33;
          v10 = v32;
          sub_21D0CF7E0(v35, &qword_27CE58948);
          sub_21D0CF7E0(v32, &qword_27CE58948);
          if (v34)
          {
            break;
          }

          v24 = v29;
          if (v28 < v23 || v44 >= v23)
          {
            swift_arrayInitWithTakeFrontToBack();
            v26 = v30;
            a1 = v38;
          }

          else
          {
            v26 = v30;
            a1 = v38;
            if (v28 != v23)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v23 = v29;
          v27 = v29 > v39;
          v22 = v40;
          v25 = v41;
          if (!v27)
          {
            a2 = v41;
            goto LABEL_59;
          }
        }

        if (v28 < v41 || v44 >= v41)
        {
          a2 = v30;
          swift_arrayInitWithTakeFrontToBack();
          v24 = v37;
          a1 = v38;
          v22 = v40;
        }

        else
        {
          v24 = v37;
          a1 = v38;
          a2 = v30;
          v22 = v40;
          if (v28 != v41)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v23 > v39);
    }

LABEL_59:
    v47 = a2;
    v45 = v24;
  }

  else
  {
    v15 = v14 * v12;
    if (a4 < a1 || a1 + v15 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v41 = a4 + v15;
    v45 = a4 + v15;
    if (v15 >= 1 && a2 < v44)
    {
      v40 = v12;
      do
      {
        sub_21D0D3954(a2, v10, &qword_27CE58948);
        v18 = v42;
        sub_21D0D3954(a4, v42, &qword_27CE58948);
        v19 = sub_21DBF5C8C();
        sub_21D0CF7E0(v18, &qword_27CE58948);
        sub_21D0CF7E0(v10, &qword_27CE58948);
        if (v19)
        {
          v20 = a2 + v12;
          if (a1 < a2 || a1 >= v20)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v20;
        }

        else
        {
          v21 = a4 + v12;
          if (a1 < a4 || a1 >= v21)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v46 = v21;
          a4 = v21;
        }

        v12 = v40;
        a1 += v40;
        v47 = a1;
      }

      while (a4 < v41 && a2 < v44);
    }
  }

LABEL_60:
  sub_21D65F5F8(&v47, &v46, &v45);
}

void sub_21D29A36C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v65 = a3;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3A0);
  MEMORY[0x28223BE20](v64);
  v58 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v59 = &v54 - v9;
  MEMORY[0x28223BE20](v10);
  v12 = &v54 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v54 - v14;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CDA0);
  MEMORY[0x28223BE20](v66);
  v60 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v62 = &v54 - v18;
  MEMORY[0x28223BE20](v19);
  v21 = &v54 - v20;
  MEMORY[0x28223BE20](v22);
  v63 = &v54 - v23;
  v25 = *(v24 + 72);
  if (!v25)
  {
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v25 == -1)
  {
    goto LABEL_73;
  }

  v26 = v65 - a2;
  if (v65 - a2 == 0x8000000000000000 && v25 == -1)
  {
    goto LABEL_74;
  }

  v27 = (a2 - a1) / v25;
  v69 = a1;
  v68 = a4;
  if (v27 >= v26 / v25)
  {
    v29 = v26 / v25 * v25;
    if (a4 < a2 || a2 + v29 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
      v30 = v60;
    }

    else
    {
      v30 = v60;
      if (a4 != a2)
      {
        swift_arrayInitWithTakeBackToFront();
      }
    }

    v61 = a2;
    v39 = a4 + v29;
    if (v29 >= 1)
    {
      v40 = -v25;
      v41 = a4 + v29;
      v42 = v59;
      v56 = a4;
      v63 = v40;
      while (2)
      {
        while (1)
        {
          v54 = v39;
          v43 = v61;
          v61 += v40;
          v57 = v43;
          while (1)
          {
            v45 = v65;
            if (v43 <= a1)
            {
              v69 = v43;
              v67 = v54;
              goto LABEL_71;
            }

            v55 = v39;
            v46 = v41 + v40;
            v47 = v62;
            sub_21D0D3954(v46, v62, &qword_27CE5CDA0);
            sub_21D0D3954(v61, v30, &qword_27CE5CDA0);
            sub_21D0D3954(v47 + *(v66 + 56), v42, &qword_27CE5A3A0);
            v48 = swift_getEnumCaseMultiPayload() == 1 ? *(v42 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3F0) + 48)) : 0;
            sub_21D0CF7E0(v42, &unk_27CE5CD80);
            v49 = v30 + *(v66 + 56);
            v50 = v58;
            sub_21D0D3954(v49, v58, &qword_27CE5A3A0);
            v51 = swift_getEnumCaseMultiPayload() == 1 ? *(v50 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3F0) + 48)) : 0;
            sub_21D0CF7E0(v50, &unk_27CE5CD80);
            v65 = v45 + v63;
            v30 = v60;
            sub_21D0CF7E0(v60, &qword_27CE5CDA0);
            sub_21D0CF7E0(v62, &qword_27CE5CDA0);
            if (v48 < v51)
            {
              break;
            }

            v39 = v46;
            v42 = v59;
            v52 = v56;
            if (v45 < v41 || v65 >= v41)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v45 != v41)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v41 = v46;
            v44 = v46 > v52;
            v40 = v63;
            v43 = v57;
            if (!v44)
            {
              v61 = v57;
              goto LABEL_70;
            }
          }

          v53 = v56;
          v42 = v59;
          if (v45 < v57 || v65 >= v57)
          {
            break;
          }

          v39 = v55;
          v40 = v63;
          if (v45 != v57)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v41 <= v53)
          {
            goto LABEL_70;
          }
        }

        swift_arrayInitWithTakeFrontToBack();
        v39 = v55;
        v40 = v63;
        if (v41 > v53)
        {
          continue;
        }

        break;
      }
    }

LABEL_70:
    v69 = v61;
    v67 = v39;
  }

  else
  {
    v28 = v27 * v25;
    if (a4 < a1 || a1 + v28 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v61 = a4 + v28;
    v67 = a4 + v28;
    if (v28 >= 1 && a2 < v65)
    {
      v62 = v25;
      v60 = v15;
      do
      {
        v32 = v63;
        sub_21D0D3954(a2, v63, &qword_27CE5CDA0);
        sub_21D0D3954(a4, v21, &qword_27CE5CDA0);
        sub_21D0D3954(v32 + *(v66 + 56), v15, &qword_27CE5A3A0);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v33 = *&v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3F0) + 48)];
        }

        else
        {
          v33 = 0;
        }

        v34 = a2;
        sub_21D0CF7E0(v15, &unk_27CE5CD80);
        sub_21D0D3954(&v21[*(v66 + 56)], v12, &qword_27CE5A3A0);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v35 = *&v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3F0) + 48)];
        }

        else
        {
          v35 = 0;
        }

        sub_21D0CF7E0(v12, &unk_27CE5CD80);
        sub_21D0CF7E0(v21, &qword_27CE5CDA0);
        sub_21D0CF7E0(v63, &qword_27CE5CDA0);
        if (v33 >= v35)
        {
          v38 = a4 + v62;
          a2 = v34;
          if (a1 < a4 || a1 >= v38)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v68 = v38;
          a4 = v38;
          v37 = v62;
        }

        else
        {
          v36 = v34;
          v37 = v62;
          a2 = v36 + v62;
          if (a1 < v36 || a1 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != v36)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v15 = v60;
        a1 += v37;
        v69 = a1;
      }

      while (a4 < v61 && a2 < v65);
    }
  }

LABEL_71:
  sub_21D65F60C(&v69, &v68, &v67);
}

unint64_t sub_21D29AB90(uint64_t a1, uint64_t a2)
{
  sub_21DBFB62C();
  result = sub_21DBFBCFC();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_21D29AC14(_BYTE *a1, uint64_t a2)
{
  v4 = *v2;
  sub_21DBFC7DC();
  sub_21D621F3C(a2);
  sub_21DBFA27C();

  v5 = sub_21DBFC82C();
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  if ((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v28 = ~v6;
    while (1)
    {
      v8 = *(*(v4 + 48) + v7);
      if (v8 > 5)
      {
        if (*(*(v4 + 48) + v7) > 8u)
        {
          if (v8 == 9)
          {
            v9 = 0xD00000000000001DLL;
            v10 = 0x800000021DC43890;
          }

          else if (v8 == 10)
          {
            v9 = 0xD000000000000017;
            v10 = 0x800000021DC438B0;
          }

          else
          {
            v9 = 0x726F737365636361;
            v10 = 0xEB00000000736569;
          }
        }

        else if (v8 == 6)
        {
          v9 = 0xD000000000000017;
          v10 = 0x800000021DC43840;
        }

        else if (v8 == 7)
        {
          v9 = 0xD000000000000013;
          v10 = 0x800000021DC43860;
        }

        else
        {
          v9 = 0x53746E65746E6F63;
          v10 = 0xEC0000006B636174;
        }
      }

      else if (*(*(v4 + 48) + v7) > 2u)
      {
        if (v8 == 3)
        {
          v10 = 0xE500000000000000;
          v9 = 0x656C746974;
        }

        else if (v8 == 4)
        {
          v9 = 0x6F6E6E4177656976;
          v10 = 0xEE006E6F69746174;
        }

        else
        {
          v9 = 0x65646E496C6C6563;
          v10 = 0xEF6E6F697461746ELL;
        }
      }

      else if (*(*(v4 + 48) + v7))
      {
        if (v8 == 1)
        {
          v9 = 0x6574656C706D6F63;
        }

        else
        {
          v9 = 0x797469726F697270;
        }

        if (v8 == 1)
        {
          v10 = 0xEF6E6F7474754264;
        }

        else
        {
          v10 = 0xE800000000000000;
        }
      }

      else
      {
        v9 = 0x656E6961746E6F63;
        v10 = 0xED00007765695672;
      }

      v11 = 0xD00000000000001DLL;
      v12 = 0x726F737365636361;
      if (a2 == 10)
      {
        v12 = 0xD000000000000017;
      }

      v13 = 0xEB00000000736569;
      if (a2 == 10)
      {
        v13 = 0x800000021DC438B0;
      }

      if (a2 == 9)
      {
        v14 = 0x800000021DC43890;
      }

      else
      {
        v11 = v12;
        v14 = v13;
      }

      v15 = 0xD000000000000013;
      if (a2 != 7)
      {
        v15 = 0x53746E65746E6F63;
      }

      v16 = 0xEC0000006B636174;
      if (a2 == 7)
      {
        v16 = 0x800000021DC43860;
      }

      if (a2 == 6)
      {
        v15 = 0xD000000000000017;
        v16 = 0x800000021DC43840;
      }

      if (a2 <= 8u)
      {
        v11 = v15;
        v14 = v16;
      }

      v17 = 0x6F6E6E4177656976;
      if (a2 != 4)
      {
        v17 = 0x65646E496C6C6563;
      }

      v18 = 0xEF6E6F697461746ELL;
      if (a2 == 4)
      {
        v18 = 0xEE006E6F69746174;
      }

      if (a2 == 3)
      {
        v17 = 0x656C746974;
        v18 = 0xE500000000000000;
      }

      v19 = 0x797469726F697270;
      if (a2 == 1)
      {
        v19 = 0x6574656C706D6F63;
      }

      v20 = 0xEF6E6F7474754264;
      if (a2 != 1)
      {
        v20 = 0xE800000000000000;
      }

      if (!a2)
      {
        v19 = 0x656E6961746E6F63;
        v20 = 0xED00007765695672;
      }

      if (a2 <= 2u)
      {
        v17 = v19;
        v18 = v20;
      }

      v21 = a2 <= 5u ? v17 : v11;
      v22 = a2 <= 5u ? v18 : v14;
      if (v9 == v21 && v10 == v22)
      {
        break;
      }

      v23 = sub_21DBFC64C();

      if (v23)
      {
        goto LABEL_70;
      }

      v7 = (v7 + 1) & v28;
      if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_68;
      }
    }

LABEL_70:
    result = 0;
    LOBYTE(a2) = *(*(v4 + 48) + v7);
  }

  else
  {
LABEL_68:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v29 = *v26;
    sub_21D9ABBBC(a2, v7, isUniquelyReferenced_nonNull_native);
    *v26 = v29;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_21D29B0D0(void *a1, void *a2)
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
    sub_21DBF8E0C();
    v9 = sub_21DBFBD8C();

    if (v9)
    {

      sub_21D0D8CF0(0, &qword_280D17880);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_21DBFBD7C();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_21D29F4B8(v7, result + 1);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_21D8ACA8C(v20 + 1);
    }

    v18 = v8;
    sub_21D29AB90(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  sub_21D0D8CF0(0, &qword_280D17880);
  v11 = sub_21DBFB62C();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_21D9AC0C0(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_21DBFB63C();

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

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t sub_21D29B308(void *a1, void *a2)
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
    sub_21DBF8E0C();
    v9 = sub_21DBFBD8C();

    if (v9)
    {

      sub_21DBF634C();
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_21DBFBD7C();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_21D29F6A8(v7, result + 1);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_21D8ACAA0(v20 + 1);
    }

    v18 = v8;
    sub_21D29AB90(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  sub_21DBF634C();
  v11 = sub_21DBFB62C();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_21D9AC230(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_21DBFB63C();

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

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t sub_21D29B520(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v19 = a1;
  v5 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_21DBFC7DC();
  TTRRemindersListViewModel.ItemID.hash(into:)();
  v10 = sub_21DBFC82C();
  v11 = -1 << *(v9 + 32);
  v12 = v10 & ~v11;
  if ((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    v14 = *(v6 + 72);
    while (1)
    {
      sub_21D104E74(*(v9 + 48) + v14 * v12, v8, type metadata accessor for TTRRemindersListViewModel.ItemID);
      v15 = _s15RemindersUICore25TTRRemindersListViewModelC6ItemIDO2eeoiySbAE_AEtFZ_0(v8, a2);
      sub_21D106918(v8, type metadata accessor for TTRRemindersListViewModel.ItemID);
      if (v15)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      if (((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_21D106918(a2, type metadata accessor for TTRRemindersListViewModel.ItemID);
    sub_21D104E74(*(v9 + 48) + v14 * v12, v19, type metadata accessor for TTRRemindersListViewModel.ItemID);
    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_21D104E74(a2, v8, type metadata accessor for TTRRemindersListViewModel.ItemID);
    v20 = *v3;
    sub_21D9AC390(v8, v12, isUniquelyReferenced_nonNull_native);
    v17 = v19;
    *v3 = v20;
    sub_21D2A0DC8(a2, v17, type metadata accessor for TTRRemindersListViewModel.ItemID);
    return 1;
  }
}

uint64_t sub_21D29B760(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v9 = *v4;
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](a2);
  MEMORY[0x223D44FA0](a3);
  MEMORY[0x223D44FA0](a4 & 1);
  v10 = sub_21DBFC82C();
  v11 = -1 << *(v9 + 32);
  v12 = v10 & ~v11;
  if ((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    while (1)
    {
      v14 = *(v9 + 48) + 24 * v12;
      if (*v14 == a2 && *(v14 + 8) == a3)
      {
        v16 = *(v14 + 16);
        if (((v16 ^ a4) & 1) == 0)
        {
          break;
        }
      }

      v12 = (v12 + 1) & v13;
      if (((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    result = 0;
    *a1 = a2;
    *(a1 + 8) = a3;
    *(a1 + 16) = v16;
  }

  else
  {
LABEL_11:
    v18 = a4 & 1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v4;
    sub_21D9AC5D4(a2, a3, v18, v12, isUniquelyReferenced_nonNull_native);
    *v4 = v20;
    *a1 = a2;
    *(a1 + 8) = a3;
    *(a1 + 16) = v18;
    return 1;
  }

  return result;
}

uint64_t sub_21D29B8E4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_21DBFC7DC();
  sub_21DBFA27C();
  v8 = sub_21DBFC82C();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_21DBFC64C() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;
    sub_21DBF8E0C();
    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    sub_21DBF8E0C();
    sub_21D9AC810(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_21D29BA34(void *a1, void *a2)
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
    sub_21DBF8E0C();
    v9 = sub_21DBFBD8C();

    if (v9)
    {

      sub_21D0D8CF0(0, &qword_280D0C348);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_21DBFBD7C();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_21D29F888(v7, result + 1);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_21D8AD2CC(v20 + 1);
    }

    v18 = v8;
    sub_21D29AB90(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  sub_21D0D8CF0(0, &qword_280D0C348);
  v11 = sub_21DBFB62C();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_21D9AC990(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_21DBFB63C();

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

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t sub_21D29BC6C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v19 = a1;
  v5 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_21DBFC7DC();
  TTRRemindersListViewModel.SectionID.hash(into:)();
  v10 = sub_21DBFC82C();
  v11 = -1 << *(v9 + 32);
  v12 = v10 & ~v11;
  if ((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    v14 = *(v6 + 72);
    while (1)
    {
      sub_21D104E74(*(v9 + 48) + v14 * v12, v8, type metadata accessor for TTRRemindersListViewModel.SectionID);
      v15 = _s15RemindersUICore25TTRRemindersListViewModelC9SectionIDO2eeoiySbAE_AEtFZ_0(v8, a2);
      sub_21D106918(v8, type metadata accessor for TTRRemindersListViewModel.SectionID);
      if (v15)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      if (((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_21D106918(a2, type metadata accessor for TTRRemindersListViewModel.SectionID);
    sub_21D104E74(*(v9 + 48) + v14 * v12, v19, type metadata accessor for TTRRemindersListViewModel.SectionID);
    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_21D104E74(a2, v8, type metadata accessor for TTRRemindersListViewModel.SectionID);
    v20 = *v3;
    sub_21D9ACB00(v8, v12, isUniquelyReferenced_nonNull_native);
    v17 = v19;
    *v3 = v20;
    sub_21D2A0DC8(a2, v17, type metadata accessor for TTRRemindersListViewModel.SectionID);
    return 1;
  }
}

uint64_t sub_21D29BEAC(uint64_t a1, void *a2)
{
  v46 = a1;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58388);
  MEMORY[0x28223BE20](v58);
  v5 = &v43 - v4;
  v6 = type metadata accessor for TTRRemindersListViewModel.ReminderID(0);
  v61 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v44 = (&v43 - v10);
  v11 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
  MEMORY[0x28223BE20](v15 - 8);
  v48 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v43 - v18;
  v45 = v2;
  v59 = *v2;
  sub_21DBFC7DC();
  v49 = *a2;
  sub_21DBFB64C();
  v20 = *(v6 + 20);
  v60 = a2;
  v56 = v20;
  v57 = v6;
  sub_21D0D3954(a2 + v20, v19, &unk_27CE5CD70);
  v22 = *(v12 + 48);
  v21 = v12 + 48;
  v55 = v22;
  if (v22(v19, 1, v11) == 1)
  {
    sub_21DBFC7FC();
  }

  else
  {
    sub_21D2A0DC8(v19, v14, type metadata accessor for TTRRemindersListViewModel.SectionID);
    sub_21DBFC7FC();
    TTRRemindersListViewModel.SectionID.hash(into:)();
    sub_21D106918(v14, type metadata accessor for TTRRemindersListViewModel.SectionID);
  }

  v23 = sub_21DBFC82C();
  v24 = v59;
  v25 = v59 + 56;
  v26 = -1 << *(v59 + 32);
  v27 = v23 & ~v26;
  if (((*(v59 + 56 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) == 0)
  {
LABEL_15:
    v38 = v45;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v40 = v60;
    v41 = v44;
    sub_21D104E74(v60, v44, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    v63 = *v38;
    sub_21D9ACD44(v41, v27, isUniquelyReferenced_nonNull_native);
    *v38 = v63;
    sub_21D2A0DC8(v40, v46, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    return 1;
  }

  v47 = v14;
  v53 = v21;
  v54 = v11;
  v28 = ~v26;
  v29 = sub_21D0D8CF0(0, &qword_280D17680);
  v61 = *(v61 + 72);
  v62 = v29;
  v50 = v25;
  v51 = v8;
  v52 = v28;
  while (1)
  {
    v31 = v61 * v27;
    sub_21D104E74(*(v24 + 48) + v61 * v27, v8, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    if ((sub_21DBFB63C() & 1) == 0)
    {
      goto LABEL_8;
    }

    v32 = *(v58 + 48);
    sub_21D0D3954(&v8[*(v57 + 20)], v5, &unk_27CE5CD70);
    sub_21D0D3954(v60 + v56, &v5[v32], &unk_27CE5CD70);
    v33 = v54;
    v34 = v55;
    if (v55(v5, 1, v54) == 1)
    {
      break;
    }

    v35 = v48;
    sub_21D0D3954(v5, v48, &unk_27CE5CD70);
    if (v34(&v5[v32], 1, v33) == 1)
    {
      sub_21D106918(v35, type metadata accessor for TTRRemindersListViewModel.SectionID);
      v24 = v59;
      v28 = v52;
      goto LABEL_7;
    }

    v36 = v47;
    sub_21D2A0DC8(&v5[v32], v47, type metadata accessor for TTRRemindersListViewModel.SectionID);
    v37 = _s15RemindersUICore25TTRRemindersListViewModelC9SectionIDO2eeoiySbAE_AEtFZ_0(v35, v36);
    sub_21D106918(v36, type metadata accessor for TTRRemindersListViewModel.SectionID);
    sub_21D106918(v35, type metadata accessor for TTRRemindersListViewModel.SectionID);
    sub_21D0CF7E0(v5, &unk_27CE5CD70);
    v24 = v59;
    v25 = v50;
    v8 = v51;
    v28 = v52;
    if (v37)
    {
      goto LABEL_18;
    }

LABEL_8:
    sub_21D106918(v8, type metadata accessor for TTRRemindersListViewModel.ReminderID);
    v27 = (v27 + 1) & v28;
    if (((*(v25 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  v30 = v34(&v5[v32], 1, v33);
  v24 = v59;
  v28 = v52;
  if (v30 != 1)
  {
LABEL_7:
    sub_21D0CF7E0(v5, &qword_27CE58388);
    v25 = v50;
    v8 = v51;
    goto LABEL_8;
  }

  sub_21D0CF7E0(v5, &unk_27CE5CD70);
  v8 = v51;
LABEL_18:
  sub_21D106918(v8, type metadata accessor for TTRRemindersListViewModel.ReminderID);
  sub_21D106918(v60, type metadata accessor for TTRRemindersListViewModel.ReminderID);
  sub_21D104E74(*(v24 + 48) + v31, v46, type metadata accessor for TTRRemindersListViewModel.ReminderID);
  return 0;
}

uint64_t sub_21D29C590(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](a2);
  MEMORY[0x223D44FA0](a3);
  v8 = sub_21DBFC82C();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v14 = *v12;
      v13 = v12[1];
      if (v14 == a2 && v13 == a3)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    result = 0;
  }

  else
  {
LABEL_8:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    sub_21D9AD3D4(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    result = 1;
  }

  *a1 = a2;
  a1[1] = a3;
  return result;
}

uint64_t sub_21D29C6AC(void *a1, void *a2)
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
    sub_21DBF8E0C();
    v9 = sub_21DBFBD8C();

    if (v9)
    {

      sub_21D0D8CF0(0, &qword_280D176A0);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_21DBFBD7C();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_21D29FA78(v7, result + 1);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_21D8ADD1C(v20 + 1);
    }

    v18 = v8;
    sub_21D29AB90(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  sub_21D0D8CF0(0, &qword_280D176A0);
  v11 = sub_21DBFB62C();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_21D9AD544(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_21DBFB63C();

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

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t sub_21D29C8E4(uint64_t a1, uint64_t a2)
{
  v42 = a1;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F2E0);
  MEMORY[0x28223BE20](v51);
  v5 = &v39 - v4;
  v6 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FB90);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10 - 8);
  v50 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v54 = &v39 - v14;
  MEMORY[0x28223BE20](v15);
  v40 = &v39 - v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v39 - v18;
  v41 = v2;
  v53 = *v2;
  sub_21DBFC7DC();
  v52 = a2;
  sub_21D0D3954(a2, v19, &qword_27CE5FB90);
  v22 = *(v7 + 48);
  v20 = v7 + 48;
  v21 = v22;
  v23 = v6;
  if (v22(v19, 1, v6) == 1)
  {
    sub_21DBFC7FC();
  }

  else
  {
    sub_21D2A0DC8(v19, v9, type metadata accessor for TTRRemindersListViewModel.ItemID);
    sub_21DBFC7FC();
    TTRRemindersListViewModel.ItemID.hash(into:)();
    sub_21D106918(v9, type metadata accessor for TTRRemindersListViewModel.ItemID);
  }

  v24 = v9;
  v25 = sub_21DBFC82C();
  v26 = v54;
  v27 = -1 << *(v53 + 32);
  v28 = v25 & ~v27;
  v49 = v53 + 56;
  if (((*(v53 + 56 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
  {
LABEL_14:
    v34 = v41;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v36 = v52;
    v37 = v40;
    sub_21D0D3954(v52, v40, &qword_27CE5FB90);
    v55 = *v34;
    sub_21D9AD6B4(v37, v28, isUniquelyReferenced_nonNull_native);
    *v34 = v55;
    sub_21D0D523C(v36, v42, &qword_27CE5FB90);
    return 1;
  }

  v47 = v21;
  v48 = v20;
  v43 = v24;
  v45 = ~v27;
  v46 = *(v11 + 72);
  while (1)
  {
    v29 = v46 * v28;
    sub_21D0D3954(*(v53 + 48) + v46 * v28, v26, &qword_27CE5FB90);
    v30 = *(v51 + 48);
    sub_21D0D3954(v26, v5, &qword_27CE5FB90);
    sub_21D0D3954(v52, &v5[v30], &qword_27CE5FB90);
    v31 = v47;
    if (v47(v5, 1, v23) == 1)
    {
      break;
    }

    sub_21D0D3954(v5, v50, &qword_27CE5FB90);
    if (v31(&v5[v30], 1, v23) == 1)
    {
      sub_21D0CF7E0(v54, &qword_27CE5FB90);
      sub_21D106918(v50, type metadata accessor for TTRRemindersListViewModel.ItemID);
      goto LABEL_7;
    }

    v32 = v50;
    v33 = v43;
    sub_21D2A0DC8(&v5[v30], v43, type metadata accessor for TTRRemindersListViewModel.ItemID);
    v44 = _s15RemindersUICore25TTRRemindersListViewModelC6ItemIDO2eeoiySbAE_AEtFZ_0(v32, v33);
    sub_21D106918(v33, type metadata accessor for TTRRemindersListViewModel.ItemID);
    sub_21D0CF7E0(v54, &qword_27CE5FB90);
    sub_21D106918(v32, type metadata accessor for TTRRemindersListViewModel.ItemID);
    sub_21D0CF7E0(v5, &qword_27CE5FB90);
    if (v44)
    {
      goto LABEL_16;
    }

LABEL_8:
    v28 = (v28 + 1) & v45;
    v26 = v54;
    if (((*(v49 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  sub_21D0CF7E0(v26, &qword_27CE5FB90);
  if (v31(&v5[v30], 1, v23) != 1)
  {
LABEL_7:
    sub_21D0CF7E0(v5, &qword_27CE5F2E0);
    goto LABEL_8;
  }

  sub_21D0CF7E0(v5, &qword_27CE5FB90);
LABEL_16:
  sub_21D0CF7E0(v52, &qword_27CE5FB90);
  sub_21D0D3954(*(v53 + 48) + v29, v42, &qword_27CE5FB90);
  return 0;
}

uint64_t sub_21D29CEE0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v19 = a1;
  v5 = type metadata accessor for TTRRecurrenceRuleModel(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_21DBFC7DC();
  TTRRecurrenceRuleModel.hash(into:)();
  v10 = sub_21DBFC82C();
  v11 = -1 << *(v9 + 32);
  v12 = v10 & ~v11;
  if ((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    v14 = *(v6 + 72);
    while (1)
    {
      sub_21D104E74(*(v9 + 48) + v14 * v12, v8, type metadata accessor for TTRRecurrenceRuleModel);
      v15 = _s15RemindersUICore22TTRRecurrenceRuleModelV2eeoiySbAC_ACtFZ_0(v8, a2);
      sub_21D106918(v8, type metadata accessor for TTRRecurrenceRuleModel);
      if (v15)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      if (((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_21D106918(a2, type metadata accessor for TTRRecurrenceRuleModel);
    sub_21D104E74(*(v9 + 48) + v14 * v12, v19, type metadata accessor for TTRRecurrenceRuleModel);
    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_21D104E74(a2, v8, type metadata accessor for TTRRecurrenceRuleModel);
    v20 = *v3;
    sub_21D9ADC54(v8, v12, isUniquelyReferenced_nonNull_native);
    v17 = v19;
    *v3 = v20;
    sub_21D2A0DC8(a2, v17, type metadata accessor for TTRRecurrenceRuleModel);
    return 1;
  }
}

uint64_t sub_21D29D138(__int128 *a1, __int128 *a2)
{
  v4 = *v2;
  v5 = a2[3];
  v63 = a2[2];
  v64 = v5;
  v65 = a2[4];
  v6 = a2[1];
  v61 = *a2;
  v62 = v6;
  sub_21DBFC7DC();
  TTRParticipantModel.hash(into:)();
  v7 = sub_21DBFC82C();
  v8 = v4 + 56;
  v9 = -1 << *(v4 + 32);
  v10 = v7 & ~v9;
  v49 = a2;
  if ((*(v4 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = *(a2 + 1);
    v59 = *a2;
    v13 = *(a2 + 3);
    v53 = *(a2 + 2);
    v51 = *(a2 + 4);
    v54 = *(a2 + 5);
    v46 = *(a2 + 6);
    v52 = *(a2 + 7);
    v44 = v4;
    v45 = *(a2 + 8);
    v47 = *(a2 + 9);
    v14 = *(v4 + 48);
    v56 = ~v9;
    v57 = v4 + 56;
    v58 = v13;
    v55 = v14;
    do
    {
      v15 = (v14 + 80 * v10);
      v16 = v15[1];
      v17 = v15[2];
      v19 = v15[3];
      v18 = v15[4];
      v21 = v15[5];
      v20 = v15[6];
      v22 = v15[7];
      v23 = v15[8];
      v24 = v15[9];
      if (v16)
      {
        if (!v12)
        {
          goto LABEL_4;
        }

        if (*v15 != v59 || v16 != v12)
        {
          v26 = sub_21DBFC64C();
          v14 = v55;
          v11 = v56;
          v8 = v57;
          v13 = v58;
          if ((v26 & 1) == 0)
          {
            goto LABEL_4;
          }
        }
      }

      else if (v12)
      {
        goto LABEL_4;
      }

      if (v19)
      {
        if (!v13)
        {
          goto LABEL_4;
        }

        if (v17 != v53 || v19 != v13)
        {
          v28 = sub_21DBFC64C();
          v14 = v55;
          v11 = v56;
          v8 = v57;
          v13 = v58;
          if ((v28 & 1) == 0)
          {
            goto LABEL_4;
          }
        }
      }

      else if (v13)
      {
        goto LABEL_4;
      }

      if (v21)
      {
        if (!v54)
        {
          goto LABEL_4;
        }

        if (v18 != v51 || v21 != v54)
        {
          v30 = sub_21DBFC64C();
          v14 = v55;
          v11 = v56;
          v8 = v57;
          v13 = v58;
          if ((v30 & 1) == 0)
          {
            goto LABEL_4;
          }
        }
      }

      else if (v54)
      {
        goto LABEL_4;
      }

      if (v22)
      {
        if (!v52)
        {
          goto LABEL_4;
        }

        if (v20 != v46 || v22 != v52)
        {
          v32 = sub_21DBFC64C();
          v14 = v55;
          v11 = v56;
          v8 = v57;
          v13 = v58;
          if ((v32 & 1) == 0)
          {
            goto LABEL_4;
          }
        }
      }

      else if (v52)
      {
        goto LABEL_4;
      }

      if (v24)
      {
        if (v47)
        {
          if (v23 == v45 && v24 == v47 || (v33 = sub_21DBFC64C(), v14 = v55, v11 = v56, v8 = v57, v13 = v58, (v33 & 1) != 0))
          {
LABEL_46:
            sub_21D1D9B90(v49);
            v34 = (*(v44 + 48) + 80 * v10);
            v61 = *v34;
            v35 = v34[3];
            v36 = v34[4];
            v37 = v34[2];
            v62 = v34[1];
            v63 = v37;
            v64 = v35;
            v65 = v36;
            v38 = v34[3];
            a1[2] = v34[2];
            a1[3] = v38;
            a1[4] = v34[4];
            v39 = v34[1];
            *a1 = *v34;
            a1[1] = v39;
            sub_21D1D9B34(&v61, v60);
            return 0;
          }
        }
      }

      else if (!v47)
      {
        goto LABEL_46;
      }

LABEL_4:
      v10 = (v10 + 1) & v11;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v60[0] = *v48;
  sub_21D1D9B34(v49, &v61);
  sub_21D9ADEE0(v49, v10, isUniquelyReferenced_nonNull_native);
  *v48 = v60[0];
  v42 = v49[3];
  a1[2] = v49[2];
  a1[3] = v42;
  a1[4] = v49[4];
  v43 = v49[1];
  result = 1;
  *a1 = *v49;
  a1[1] = v43;
  return result;
}

uint64_t sub_21D29D4E4(_BYTE *a1, uint64_t a2)
{
  v4 = *v2;
  v5 = sub_21D1018B0();
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  if ((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    while (1)
    {
      v9 = *(*(v4 + 48) + v7);
      if (v9 <= 2)
      {
        if (*(*(v4 + 48) + v7))
        {
          if (v9 == 1)
          {
            v10 = 0x656C756465686373;
          }

          else
          {
            v10 = 7105633;
          }

          if (v9 == 1)
          {
            v11 = 0xE900000000000064;
          }

          else
          {
            v11 = 0xE300000000000000;
          }
        }

        else
        {
          v11 = 0xE500000000000000;
          v10 = 0x7961646F74;
        }
      }

      else if (*(*(v4 + 48) + v7) > 4u)
      {
        if (v9 == 5)
        {
          v10 = 0x6E756F4669726973;
          v11 = 0xEF737070416E4964;
        }

        else
        {
          v10 = 0x6574656C706D6F63;
          v11 = 0xE900000000000064;
        }
      }

      else
      {
        if (v9 == 3)
        {
          v10 = 0x64656767616C66;
        }

        else
        {
          v10 = 0x64656E6769737361;
        }

        if (v9 == 3)
        {
          v11 = 0xE700000000000000;
        }

        else
        {
          v11 = 0xE800000000000000;
        }
      }

      v12 = 0x6E756F4669726973;
      if (a2 != 5)
      {
        v12 = 0x6574656C706D6F63;
      }

      v13 = 0xEF737070416E4964;
      if (a2 != 5)
      {
        v13 = 0xE900000000000064;
      }

      v14 = 0x64656E6769737361;
      if (a2 == 3)
      {
        v14 = 0x64656767616C66;
      }

      v15 = 0xE700000000000000;
      if (a2 != 3)
      {
        v15 = 0xE800000000000000;
      }

      if (a2 <= 4u)
      {
        v12 = v14;
        v13 = v15;
      }

      v16 = 0x656C756465686373;
      if (a2 != 1)
      {
        v16 = 7105633;
      }

      v17 = 0xE300000000000000;
      if (a2 == 1)
      {
        v17 = 0xE900000000000064;
      }

      if (!a2)
      {
        v16 = 0x7961646F74;
        v17 = 0xE500000000000000;
      }

      v18 = a2 <= 2u ? v16 : v12;
      v19 = a2 <= 2u ? v17 : v13;
      if (v10 == v18 && v11 == v19)
      {
        break;
      }

      v20 = sub_21DBFC64C();

      if (v20)
      {
        goto LABEL_50;
      }

      v7 = (v7 + 1) & v8;
      if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_48;
      }
    }

LABEL_50:
    result = 0;
    LOBYTE(a2) = *(*(v4 + 48) + v7);
  }

  else
  {
LABEL_48:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = *v23;
    sub_21D9AE2A0(a2, v7, isUniquelyReferenced_nonNull_native);
    *v23 = v25;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_21D29D7C4(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_21DBF70DC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_21D2F89FC(&qword_27CE58AC0, MEMORY[0x277D45430]);
  v33 = a2;
  v11 = sub_21DBF9FFC();
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
      sub_21D2F89FC(&qword_27CE58DB0, MEMORY[0x277D45430]);
      v21 = sub_21DBFA10C();
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
    sub_21D9AE5C8(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_21D29DAA4(uint64_t *a1, uint64_t a2)
{
  v5 = *v2;
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](a2);
  v6 = sub_21DBFC82C();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_21D9AE86C(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_21D29DB9C(_BYTE *a1, uint64_t a2)
{
  v4 = *v2;
  sub_21DBFC7DC();
  sub_21DBFA27C();

  v5 = sub_21DBFC82C();
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  if ((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    while (1)
    {
      v9 = *(*(v4 + 48) + v7);
      if (v9 > 2)
      {
        if (v9 == 3)
        {
          v11 = 0xE700000000000000;
          v10 = 0x646E656B656577;
        }

        else
        {
          if (v9 == 4)
          {
            v10 = 0x57664F7472617473;
          }

          else
          {
            v10 = 0x6D6F74737563;
          }

          if (v9 == 4)
          {
            v11 = 0xEE007961646B6565;
          }

          else
          {
            v11 = 0xE600000000000000;
          }
        }
      }

      else if (*(*(v4 + 48) + v7))
      {
        if (v9 == 1)
        {
          v10 = 0x7961646F74;
        }

        else
        {
          v10 = 0x776F72726F6D6F74;
        }

        if (v9 == 1)
        {
          v11 = 0xE500000000000000;
        }

        else
        {
          v11 = 0xE800000000000000;
        }
      }

      else
      {
        v11 = 0xE400000000000000;
        v10 = 1701736302;
      }

      v12 = 0x57664F7472617473;
      if (a2 != 4)
      {
        v12 = 0x6D6F74737563;
      }

      v13 = 0xEE007961646B6565;
      if (a2 != 4)
      {
        v13 = 0xE600000000000000;
      }

      if (a2 == 3)
      {
        v12 = 0x646E656B656577;
        v13 = 0xE700000000000000;
      }

      v14 = 0x776F72726F6D6F74;
      if (a2 == 1)
      {
        v14 = 0x7961646F74;
      }

      v15 = 0xE500000000000000;
      if (a2 != 1)
      {
        v15 = 0xE800000000000000;
      }

      if (!a2)
      {
        v14 = 1701736302;
        v15 = 0xE400000000000000;
      }

      v16 = a2 <= 2u ? v14 : v12;
      v17 = a2 <= 2u ? v15 : v13;
      if (v10 == v16 && v11 == v17)
      {
        break;
      }

      v18 = sub_21DBFC64C();

      if (v18)
      {
        goto LABEL_44;
      }

      v7 = (v7 + 1) & v8;
      if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_42;
      }
    }

LABEL_44:
    result = 0;
    LOBYTE(a2) = *(*(v4 + 48) + v7);
  }

  else
  {
LABEL_42:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v21;
    sub_21D9AE9C8(a2, v7, isUniquelyReferenced_nonNull_native);
    *v21 = v23;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_21D29DF04(uint64_t a1, uint64_t a2)
{
  v28 = a1;
  v4 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v26 - v12;
  v27 = v2;
  v14 = *v2;
  sub_21DBFC7DC();
  v30 = a2;
  TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v13);
  TTRRemindersListViewModel.ItemID.hash(into:)();
  sub_21D106918(v13, type metadata accessor for TTRRemindersListViewModel.ItemID);
  v15 = sub_21DBFC82C();
  v16 = v14 + 56;
  v29 = v14;
  v17 = -1 << *(v14 + 32);
  v18 = v15 & ~v17;
  if ((*(v14 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18))
  {
    v19 = ~v17;
    v20 = *(v5 + 72);
    while (1)
    {
      sub_21D104E74(*(v29 + 48) + v20 * v18, v7, type metadata accessor for TTRRemindersListViewModel.Item);
      TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v13);
      TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v10);
      v21 = _s15RemindersUICore25TTRRemindersListViewModelC6ItemIDO2eeoiySbAE_AEtFZ_0(v13, v10);
      sub_21D106918(v10, type metadata accessor for TTRRemindersListViewModel.ItemID);
      sub_21D106918(v13, type metadata accessor for TTRRemindersListViewModel.ItemID);
      sub_21D106918(v7, type metadata accessor for TTRRemindersListViewModel.Item);
      if (v21)
      {
        break;
      }

      v18 = (v18 + 1) & v19;
      if (((*(v16 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_21D106918(v30, type metadata accessor for TTRRemindersListViewModel.Item);
    sub_21D104E74(*(v29 + 48) + v20 * v18, v28, type metadata accessor for TTRRemindersListViewModel.Item);
    return 0;
  }

  else
  {
LABEL_5:
    v22 = v27;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v30;
    sub_21D104E74(v30, v7, type metadata accessor for TTRRemindersListViewModel.Item);
    v31 = *v22;
    sub_21D9AED7C(v7, v18, isUniquelyReferenced_nonNull_native);
    *v22 = v31;
    sub_21D2A0DC8(v24, v28, type metadata accessor for TTRRemindersListViewModel.Item);
    return 1;
  }
}

uint64_t sub_21D29E22C(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_21DBF686C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_21D2F89FC(&unk_280D0C7E8, MEMORY[0x277D45298]);
  v33 = a2;
  v11 = sub_21DBF9FFC();
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
      sub_21D2F89FC(&qword_280D0C7E0, MEMORY[0x277D45298]);
      v21 = sub_21DBFA10C();
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
    sub_21D9AF088(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_21D29E50C(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_21DBF5D5C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_21D2F89FC(&qword_280D17160, MEMORY[0x277CC9AF8]);
  v33 = a2;
  v11 = sub_21DBF9FFC();
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
      sub_21D2F89FC(&qword_280D17150, MEMORY[0x277CC9AF8]);
      v21 = sub_21DBFA10C();
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
    sub_21D9AF32C(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_21D29E7EC(void *a1, void *a2)
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
    sub_21DBF8E0C();
    v9 = sub_21DBFBD8C();

    if (v9)
    {

      sub_21D0D8CF0(0, &qword_280D0C1A0);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_21DBFBD7C();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_21D29FC68(v7, result + 1);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_21D8AFE14(v20 + 1);
    }

    v18 = v8;
    sub_21D29AB90(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  sub_21D0D8CF0(0, &qword_280D0C1A0);
  v11 = sub_21DBFB62C();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_21D9AF5D0(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_21DBFB63C();

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

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t sub_21D29EA3C(void *a1, void *a2, void (*a3)(void))
{
  v4 = v3;
  v7 = *v3;
  sub_21DBFA16C();
  sub_21DBFC7DC();
  sub_21DBFA27C();
  v8 = sub_21DBFC82C();

  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = sub_21DBFA16C();
      v14 = v13;
      if (v12 == sub_21DBFA16C() && v14 == v15)
      {

        goto LABEL_12;
      }

      v17 = sub_21DBFC64C();

      if (v17)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

LABEL_12:
    v20 = *(*(v7 + 48) + 8 * v10);
    *a1 = v20;
    v21 = v20;
    return 0;
  }

  else
  {
LABEL_9:
    swift_isUniquelyReferenced_nonNull_native();
    v23 = *v4;
    v18 = a2;
    a3();
    *v4 = v23;
    *a1 = v18;
    return 1;
  }
}

uint64_t sub_21D29EC24(_BYTE *a1, uint64_t a2, void (*a3)(uint64_t, unint64_t, uint64_t))
{
  v7 = *v3;
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](a2);
  v8 = sub_21DBFC82C();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (*(*(v7 + 48) + v10) != a2)
    {
      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v3;
    a3(a2, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v14;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_21D29ED2C(uint64_t a1, void *a2)
{
  v49 = a1;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F2A0);
  MEMORY[0x28223BE20](v62);
  v46 = &v45 - v4;
  v5 = type metadata accessor for TTRAttachmentThumbnailsManager.ThumbnailRequest();
  v65 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v63 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v47 = (&v45 - v8);
  v9 = sub_21DBF54CC();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20);
  MEMORY[0x28223BE20](v13 - 8);
  v54 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v45 - v16;
  v48 = v2;
  v52 = *v2;
  sub_21DBFC7DC();
  v55 = *a2;
  sub_21DBFB64C();
  v18 = *(v5 + 20);
  v64 = a2;
  v60 = v18;
  v61 = v5;
  sub_21D0D3954(a2 + v18, v17, &qword_27CE5EA20);
  v19 = v10 + 48;
  v59 = *(v10 + 48);
  if (v59(v17, 1, v9) == 1)
  {
    v20 = v10;
    v21 = v9;
    sub_21DBFC7FC();
  }

  else
  {
    (*(v10 + 32))(v12, v17, v9);
    sub_21DBFC7FC();
    sub_21D2F89FC(&qword_280D171E0, MEMORY[0x277CC9260]);
    sub_21DBFA00C();
    v20 = v10;
    v22 = *(v10 + 8);
    v21 = v9;
    v22(v12, v9);
  }

  v23 = sub_21DBFC82C();
  v24 = v52;
  v25 = v52 + 56;
  v26 = -1 << *(v52 + 32);
  v27 = v23 & ~v26;
  if (((*(v52 + 56 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) == 0)
  {
LABEL_15:
    v40 = v48;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v42 = v64;
    v43 = v47;
    sub_21D104E74(v64, v47, type metadata accessor for TTRAttachmentThumbnailsManager.ThumbnailRequest);
    v67 = *v40;
    sub_21D9B0500(v43, v27, isUniquelyReferenced_nonNull_native);
    *v40 = v67;
    sub_21D2A0DC8(v42, v49, type metadata accessor for TTRAttachmentThumbnailsManager.ThumbnailRequest);
    return 1;
  }

  v58 = v19;
  v51 = v12;
  v28 = ~v26;
  v66 = sub_21D0D8CF0(0, &qword_280D17680);
  v50 = (v20 + 32);
  v65 = *(v65 + 72);
  v53 = (v20 + 8);
  v29 = v46;
  v30 = v63;
  v56 = v25;
  v57 = v28;
  while (1)
  {
    v32 = v65 * v27;
    sub_21D104E74(*(v24 + 48) + v65 * v27, v30, type metadata accessor for TTRAttachmentThumbnailsManager.ThumbnailRequest);
    if ((sub_21DBFB63C() & 1) == 0)
    {
      goto LABEL_8;
    }

    v33 = *(v62 + 48);
    sub_21D0D3954(v30 + *(v61 + 20), v29, &qword_27CE5EA20);
    sub_21D0D3954(v64 + v60, v29 + v33, &qword_27CE5EA20);
    v34 = v59;
    if (v59(v29, 1, v21) == 1)
    {
      break;
    }

    v35 = v54;
    sub_21D0D3954(v29, v54, &qword_27CE5EA20);
    if (v34(v29 + v33, 1, v21) == 1)
    {
      (*v53)(v35, v21);
      v25 = v56;
      v30 = v63;
      v28 = v57;
      goto LABEL_7;
    }

    v36 = v51;
    (*v50)(v51, v29 + v33, v21);
    sub_21D2F89FC(&qword_280D171D0, MEMORY[0x277CC9260]);
    v37 = sub_21DBFA10C();
    v38 = *v53;
    v39 = v36;
    v24 = v52;
    (*v53)(v39, v21);
    v38(v35, v21);
    sub_21D0CF7E0(v29, &qword_27CE5EA20);
    v25 = v56;
    v30 = v63;
    v28 = v57;
    if (v37)
    {
      goto LABEL_18;
    }

LABEL_8:
    sub_21D106918(v30, type metadata accessor for TTRAttachmentThumbnailsManager.ThumbnailRequest);
    v27 = (v27 + 1) & v28;
    if (((*(v25 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  v31 = v34(v29 + v33, 1, v21);
  v25 = v56;
  v28 = v57;
  v30 = v63;
  if (v31 != 1)
  {
LABEL_7:
    sub_21D0CF7E0(v29, &unk_27CE5F2A0);
    goto LABEL_8;
  }

  sub_21D0CF7E0(v29, &qword_27CE5EA20);
LABEL_18:
  sub_21D106918(v30, type metadata accessor for TTRAttachmentThumbnailsManager.ThumbnailRequest);
  sub_21D106918(v64, type metadata accessor for TTRAttachmentThumbnailsManager.ThumbnailRequest);
  sub_21D104E74(*(v24 + 48) + v32, v49, type metadata accessor for TTRAttachmentThumbnailsManager.ThumbnailRequest);
  return 0;
}

uint64_t sub_21D29F4B8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59328);
    v2 = sub_21DBFBEAC();
    v15 = v2;
    sub_21DBFBD1C();
    if (sub_21DBFBDBC())
    {
      sub_21D0D8CF0(0, &qword_280D17880);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_21D8ACA8C(v9 + 1);
        }

        v2 = v15;
        result = sub_21DBFB62C();
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (sub_21DBFBDBC());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t sub_21D29F6A8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59248);
    v2 = sub_21DBFBEAC();
    v15 = v2;
    sub_21DBFBD1C();
    if (sub_21DBFBDBC())
    {
      sub_21DBF634C();
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_21D8ACAA0(v9 + 1);
        }

        v2 = v15;
        result = sub_21DBFB62C();
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (sub_21DBFBDBC());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t sub_21D29F888(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59290);
    v2 = sub_21DBFBEAC();
    v15 = v2;
    sub_21DBFBD1C();
    if (sub_21DBFBDBC())
    {
      sub_21D0D8CF0(0, &qword_280D0C348);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_21D8AD2CC(v9 + 1);
        }

        v2 = v15;
        result = sub_21DBFB62C();
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (sub_21DBFBDBC());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t sub_21D29FA78(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A480);
    v2 = sub_21DBFBEAC();
    v15 = v2;
    sub_21DBFBD1C();
    if (sub_21DBFBDBC())
    {
      sub_21D0D8CF0(0, &qword_280D176A0);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_21D8ADD1C(v9 + 1);
        }

        v2 = v15;
        result = sub_21DBFB62C();
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (sub_21DBFBDBC());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t sub_21D29FC68(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A528);
    v2 = sub_21DBFBEAC();
    v15 = v2;
    sub_21DBFBD1C();
    if (sub_21DBFBDBC())
    {
      sub_21D0D8CF0(0, &qword_280D0C1A0);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_21D8AFE14(v9 + 1);
        }

        v2 = v15;
        result = sub_21DBFB62C();
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (sub_21DBFBDBC());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

unint64_t *sub_21D29FE58(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_21D2A3400(v7, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

uint64_t sub_21D29FEF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE65290) + 48);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE652A0) + 48);
  v6 = *(a1 + v4);
  sub_21D104E74(a1, a2, type metadata accessor for TTRRemindersListViewModel.ItemID);
  *(a2 + v5) = v6;
}

uint64_t sub_21D29FF8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = *(a7 - 8);
  MEMORY[0x28223BE20](a1);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v24 - v20;
  (*(v15 + 32))(&v24 - v20, v19);
  (*(v15 + 16))(v17, v21, a7);
  v22 = sub_21D2A00FC(a1, 0, v17, a3, a4, a5, a6, a7, a8);
  (*(v15 + 8))(v21, a7);
  return v22;
}

uint64_t sub_21D2A00FC(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v50 = a7;
  *&v46 = a6;
  v45 = a5;
  v54[3] = a8;
  v54[4] = a9;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v54);
  (*(*(a8 - 8) + 32))(boxed_opaque_existential_0, a3, a8);
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  v16 = swift_allocObject();
  *(v16 + 16) = MEMORY[0x277D84F98];
  v17 = swift_allocObject();
  v18 = MEMORY[0x277D84F90];
  *(v17 + 16) = MEMORY[0x277D84F90];
  v19 = (v17 + 16);
  v49 = v15;
  v48 = v16;
  v47 = v17;
  if (a2)
  {
    MEMORY[0x28223BE20](v17);
    v41 = v20;
    v42 = v15;
    v43 = v54;
    v44 = v16;
    v21 = sub_21D173ED4(sub_21D2F8AE4, v40, a1);
  }

  else
  {
    swift_beginAccess();
    v22 = sub_21DBF8E0C();
    sub_21D5624A0(v22);
    v23 = swift_endAccess();
    MEMORY[0x28223BE20](v23);
    v41 = v15 + 16;
    v42 = v54;
    v43 = (v16 + 16);
    v21 = sub_21D4E6184(sub_21D2F8BC8, v40, a1);
  }

  v24 = v21;

  v25 = sub_21D177CD4(v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A588);
  v26 = swift_allocObject();
  *&v51[0] = v18;
  v53[0] = MEMORY[0x277D84F98];
  sub_21DB8503C(v24, v51, v53);

  v27 = v53[0];
  v26[2] = *&v51[0];
  v26[3] = v27;
  v26[4] = v25;
  sub_21D2A0FC0(a4, v26);

  swift_beginAccess();
  v28 = *v19;
  sub_21DBF8E0C();
  sub_21D2A21B4(v26, v28);

  v29 = v45;
  if (v45)
  {
    v30 = swift_allocObject();
    v31 = v46;
    *(v30 + 16) = v29;
    *(v30 + 24) = v31;
    v32 = sub_21D2F8C00;
  }

  else
  {
    v32 = sub_21D2F8BEC;
    v30 = 0;
  }

  v33 = v48;
  v34 = swift_allocObject();
  *(v34 + 16) = v32;
  *(v34 + 24) = v30;
  v52 = v26;
  sub_21D0D0E78(v29);

  (v32)(v51, &v52);

  v46 = v51[0];
  swift_beginAccess();
  v35 = *(v33 + 16);
  sub_21DBF8E0C();
  sub_21D0D0E88(v29);
  swift_beginAccess();
  v36 = *(v49 + 16);
  sub_21D0D32E4(v54, v51);
  v37 = swift_allocObject();
  v38 = MEMORY[0x277D84FA0];
  *(v37 + 88) = MEMORY[0x277D84FA0];
  *(v37 + 80) = v26;
  *(v37 + 24) = v46;
  *(v37 + 96) = v35;
  *(v37 + 104) = sub_21D2F8BF4;
  *(v37 + 112) = v34;
  swift_beginAccess();
  *(v37 + 88) = v38;
  *(v37 + 16) = v36;
  sub_21D0D0FD0(v51, v37 + 40);

  __swift_destroy_boxed_opaque_existential_0(v54);
  return v37;
}

uint64_t _s15RemindersUICore29TTRRemindersListTreeViewModelC28RecurrentReminderReplacementV2eeoiySbAE_AEtFZ_0()
{
  v0 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v9 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v5 = &v9 - v4;
  TTRRemindersListViewModel.Item.treeItemIdentifier.getter(&v9 - v4);
  TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v2);
  v6 = _s15RemindersUICore25TTRRemindersListViewModelC6ItemIDO2eeoiySbAE_AEtFZ_0(v5, v2);
  sub_21D106918(v2, type metadata accessor for TTRRemindersListViewModel.ItemID);
  sub_21D106918(v5, type metadata accessor for TTRRemindersListViewModel.ItemID);
  if (v6)
  {
    type metadata accessor for TTRRemindersListTreeViewModel.RecurrentReminderReplacement(0);
    TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v5);
    TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v2);
    v7 = _s15RemindersUICore25TTRRemindersListViewModelC6ItemIDO2eeoiySbAE_AEtFZ_0(v5, v2);
    sub_21D106918(v2, type metadata accessor for TTRRemindersListViewModel.ItemID);
    sub_21D106918(v5, type metadata accessor for TTRRemindersListViewModel.ItemID);
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t sub_21D2A06F4(uint64_t a1, void *a2, uint64_t a3)
{
  v42 = a2;
  v43 = a3;
  v5 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  v41 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v40 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TTRRemindersListViewModel.ReminderID(0);
  v39 = *(v7 - 8);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v10)
  {
    v35 = v3;
    v47 = MEMORY[0x277D84F90];
    sub_21D18EBE8(0, v10, 0);
    v46 = v47;
    v12 = a1 + 56;
    result = sub_21DBFBCCC();
    v13 = result;
    v14 = 0;
    v36 = a1 + 64;
    v37 = v10;
    v38 = a1 + 56;
    while ((v13 & 0x8000000000000000) == 0 && v13 < 1 << *(a1 + 32))
    {
      v17 = v13 >> 6;
      if ((*(v12 + 8 * (v13 >> 6)) & (1 << v13)) == 0)
      {
        goto LABEL_22;
      }

      v18 = *(a1 + 36);
      v44 = v14;
      v45 = v18;
      v19 = *(a1 + 48) + *(v41 + 72) * v13;
      v20 = a1;
      v21 = v40;
      sub_21D104E74(v19, v40, type metadata accessor for TTRRemindersListViewModel.SectionID);
      v23 = v42[8];
      v22 = v42[9];
      __swift_project_boxed_opaque_existential_1(v42 + 5, v23);
      (*(v22 + 8))(v43, v21, v23, v22);
      sub_21D106918(v21, type metadata accessor for TTRRemindersListViewModel.SectionID);
      v24 = v46;
      v47 = v46;
      v26 = *(v46 + 16);
      v25 = *(v46 + 24);
      if (v26 >= v25 >> 1)
      {
        sub_21D18EBE8(v25 > 1, v26 + 1, 1);
        v24 = v47;
      }

      *(v24 + 16) = v26 + 1;
      v27 = (*(v39 + 80) + 32) & ~*(v39 + 80);
      v46 = v24;
      result = sub_21D2A0DC8(v9, v24 + v27 + *(v39 + 72) * v26, type metadata accessor for TTRRemindersListViewModel.ReminderID);
      v15 = 1 << *(v20 + 32);
      if (v13 >= v15)
      {
        goto LABEL_23;
      }

      v12 = v38;
      v28 = *(v38 + 8 * v17);
      if ((v28 & (1 << v13)) == 0)
      {
        goto LABEL_24;
      }

      a1 = v20;
      if (v45 != *(v20 + 36))
      {
        goto LABEL_25;
      }

      v29 = v28 & (-2 << (v13 & 0x3F));
      if (v29)
      {
        v15 = __clz(__rbit64(v29)) | v13 & 0x7FFFFFFFFFFFFFC0;
        v16 = v37;
      }

      else
      {
        v30 = v17 << 6;
        v31 = v17 + 1;
        v16 = v37;
        v32 = (v36 + 8 * v17);
        while (v31 < (v15 + 63) >> 6)
        {
          v34 = *v32++;
          v33 = v34;
          v30 += 64;
          ++v31;
          if (v34)
          {
            result = sub_21D15746C(v13, v45, 0);
            v15 = __clz(__rbit64(v33)) + v30;
            goto LABEL_4;
          }
        }

        result = sub_21D15746C(v13, v45, 0);
      }

LABEL_4:
      v14 = v44 + 1;
      v13 = v15;
      if (v44 + 1 == v16)
      {
        return v46;
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

uint64_t sub_21D2A0AC4(uint64_t a1)
{
  v2 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TTRRemindersListViewModel.Item.SectionCasesItem(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D104E74(a1, v8, type metadata accessor for TTRRemindersListViewModel.Item);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 8)
  {
    goto LABEL_4;
  }

  if ((EnumCaseMultiPayload - 2) < 7)
  {
    sub_21D106918(v8, type metadata accessor for TTRRemindersListViewModel.Item);
LABEL_4:
    (*(v3 + 56))(v11, 1, 1, v2);
    return 0;
  }

  if (EnumCaseMultiPayload)
  {
    sub_21D2A0DC8(v8, v11, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
    (*(v3 + 56))(v11, 0, 1, v2);
  }

  else
  {
    (*(v3 + 56))(v11, 1, 1, v2);
    sub_21D106918(v8, type metadata accessor for TTRRemindersListViewModel.Item);
  }

  if ((*(v3 + 48))(v11, 1, v2) == 1)
  {
    return 0;
  }

  sub_21D2A0DC8(v11, v5, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
  TTRRemindersListViewModel.SectionID.editableSectionCasesOnly.getter(&v14);
  sub_21D106918(v5, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
  if (v15 < 2u)
  {

    return 0;
  }

  if (v15 != 2)
  {
    return 0;
  }

  return 1;
}

uint64_t sub_21D2A0DC8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_21D2A0F60()
{
  result = qword_27CE5A428;
  if (!qword_27CE5A428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE5A428);
  }

  return result;
}

void sub_21D2A0FC0(uint64_t a1, uint64_t a2)
{
  v125 = sub_21DBF5B9C();
  v145 = *(v125 - 8);
  MEMORY[0x28223BE20](v125);
  v124 = &v108 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F2E0);
  MEMORY[0x28223BE20](v117);
  v116 = &v108 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FB90);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v108 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v118 = &v108 - v10;
  MEMORY[0x28223BE20](v11);
  v131 = &v108 - v12;
  v128 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  v129 = *(v128 - 8);
  MEMORY[0x28223BE20](v128);
  v14 = &v108 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v108 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3C0);
  MEMORY[0x28223BE20](v18 - 8);
  v127 = &v108 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v144 = &v108 - v21;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3C8);
  MEMORY[0x28223BE20](v130);
  v115 = &v108 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v126 = &v108 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80);
  MEMORY[0x28223BE20](v25 - 8);
  v114 = &v108 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v113 = &v108 - v28;
  MEMORY[0x28223BE20](v29);
  v132 = &v108 - v30;
  MEMORY[0x28223BE20](v31);
  v33 = &v108 - v32;
  MEMORY[0x28223BE20](v34);
  v36 = &v108 - v35;
  MEMORY[0x28223BE20](v37);
  v133 = &v108 - v38;
  v141 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v39 = *(v141 - 8);
  MEMORY[0x28223BE20](v141);
  v41 = &v108 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42);
  v44 = &v108 - v43;
  MEMORY[0x28223BE20](v45);
  v143 = &v108 - v46;
  v47 = type metadata accessor for TTRRemindersListTreeViewModel.RecurrentReminderReplacement(0);
  MEMORY[0x28223BE20](v47);
  v140 = &v108 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = *(a1 + 16);
  if (!v139)
  {
    return;
  }

  v51 = 0;
  v138 = a1 + ((*(v49 + 80) + 32) & ~*(v49 + 80));
  v52 = *(v48 + 20);
  v136 = (v39 + 56);
  v137 = v52;
  v123 = (v39 + 48);
  v135 = *(v49 + 72);
  v122 = (v129 + 56);
  v112 = (v129 + 48);
  v111 = (v145 + 8);
  v110 = xmmword_21DC08D00;
  v134 = a2;
  v109 = v8;
  v121 = v33;
  v142 = v36;
  v146 = v44;
  while (1)
  {
    v145 = v51;
    v53 = v140;
    sub_21D104E74(v138 + v135 * v51, v140, type metadata accessor for TTRRemindersListTreeViewModel.RecurrentReminderReplacement);
    sub_21D104E74(v53, v143, type metadata accessor for TTRRemindersListViewModel.Item);
    sub_21D104E74(v53 + v137, v44, type metadata accessor for TTRRemindersListViewModel.Item);
    sub_21D106918(v53, type metadata accessor for TTRRemindersListTreeViewModel.RecurrentReminderReplacement);
    TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v17);
    v54 = sub_21D2916C8(v17, sub_21D181E00);
    sub_21D106918(v17, type metadata accessor for TTRRemindersListViewModel.ItemID);
    if (v54 && (Strong = swift_weakLoadStrong(), , Strong))
    {
      v56 = *(*Strong + 120);
      swift_beginAccess();
      sub_21D104E74(Strong + v56, v36, type metadata accessor for TTRRemindersListViewModel.Item);

      v57 = 0;
    }

    else
    {
      v57 = 1;
    }

    (*v136)(v36, v57, 1, v141);
    v58 = sub_21D261568(v36);
    if (v58 < 0)
    {
      break;
    }

    v59 = v36;
    v60 = v58;
    ++v145;
    sub_21D0D3954(v59, v33, &unk_27CE5CD80);

    v61 = 0;
    while (1)
    {
      if (v60 == v61)
      {

        sub_21D0CF7E0(v33, &unk_27CE5CD80);
        sub_21D0CF7E0(v142, &unk_27CE5CD80);
        v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59D88);
        (*(*(v64 - 8) + 56))(v144, 1, 1, v64);
        goto LABEL_18;
      }

      sub_21D26181C(v61, v33, v41);
      TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v17);
      TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v14);
      v62 = _s15RemindersUICore25TTRRemindersListViewModelC6ItemIDO2eeoiySbAE_AEtFZ_0(v17, v14);
      sub_21D106918(v14, type metadata accessor for TTRRemindersListViewModel.ItemID);
      sub_21D106918(v17, type metadata accessor for TTRRemindersListViewModel.ItemID);
      sub_21D106918(v41, type metadata accessor for TTRRemindersListViewModel.Item);
      if (v62)
      {
        break;
      }

      if (__OFADD__(v61++, 1))
      {
        __break(1u);
        goto LABEL_46;
      }
    }

    v65 = v144;
    sub_21D0CF7E0(v33, &unk_27CE5CD80);
    v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59D88);
    v67 = *(v66 + 48);
    sub_21D0D523C(v142, v65, &unk_27CE5CD80);
    *(v65 + v67) = v61;
    (*(*(v66 - 8) + 56))(v65, 0, 1, v66);
LABEL_18:
    v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59D88);
    v69 = *(*(v68 - 8) + 48);
    if (v69(v144, 1, v68) == 1)
    {
      sub_21D106918(v143, type metadata accessor for TTRRemindersListViewModel.Item);
      sub_21D0CF7E0(v144, &qword_27CE5A3C0);
      v36 = v142;
    }

    else
    {
      v70 = *(v144 + *(v68 + 48));
      v71 = v130;
      v72 = *(v130 + 48);
      v73 = v126;
      sub_21D0D523C(v144, v126, &unk_27CE5CD80);
      *(v73 + v72) = v70;
      v129 = *(v73 + *(v71 + 48));
      v74 = v133;
      sub_21D0D523C(v73, v133, &unk_27CE5CD80);
      v75 = v127;
      v76 = v143;
      sub_21D25F7C0(v127);
      if (v69(v75, 1, v68) != 1)
      {
        v77 = *(v75 + *(v68 + 48));
        v78 = v74;
        v79 = v130;
        v80 = *(v130 + 48);
        v81 = v115;
        sub_21D0D523C(v75, v115, &unk_27CE5CD80);
        *(v81 + v80) = v77;
        v119 = *(v81 + *(v79 + 48));
        sub_21D0D523C(v81, v132, &unk_27CE5CD80);
        v82 = v113;
        sub_21D0D3954(v78, v113, &unk_27CE5CD80);
        v83 = *v123;
        if ((*v123)(v82, 1, v141) == 1)
        {
          sub_21D0CF7E0(v82, &unk_27CE5CD80);
          v84 = 1;
          v85 = v131;
        }

        else
        {
          v85 = v131;
          TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v131);
          sub_21D106918(v82, type metadata accessor for TTRRemindersListViewModel.Item);
          v84 = 0;
        }

        v86 = v128;
        v87 = v114;
        v88 = *v122;
        (*v122)(v85, v84, 1, v128);
        sub_21D0D3954(v132, v87, &unk_27CE5CD80);
        v89 = v83(v87, 1, v141);
        v90 = v134;
        if (v89 == 1)
        {
          sub_21D0CF7E0(v87, &unk_27CE5CD80);
          v91 = 1;
          v92 = v118;
        }

        else
        {
          v92 = v118;
          TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v118);
          v86 = v128;
          sub_21D106918(v87, type metadata accessor for TTRRemindersListViewModel.Item);
          v91 = 0;
        }

        v88(v92, v91, 1, v86);
        v93 = *(v117 + 48);
        v94 = v116;
        sub_21D0D3954(v131, v116, &qword_27CE5FB90);
        v120 = v93;
        sub_21D0D3954(v92, v94 + v93, &qword_27CE5FB90);
        v95 = *v112;
        if ((*v112)(v94, 1, v86) == 1)
        {
          sub_21D0CF7E0(v92, &qword_27CE5FB90);
          sub_21D0CF7E0(v131, &qword_27CE5FB90);
          if (v95(v94 + v120, 1, v128) == 1)
          {
            sub_21D0CF7E0(v94, &qword_27CE5FB90);
            v96 = v132;
            v36 = v142;
            v97 = v119;
            goto LABEL_40;
          }

LABEL_32:
          sub_21D0CF7E0(v94, &qword_27CE5F2E0);
          v96 = v132;
          v36 = v142;
          v97 = v119;
          goto LABEL_33;
        }

        v98 = v109;
        sub_21D0D3954(v94, v109, &qword_27CE5FB90);
        v99 = v120;
        if (v95(v94 + v120, 1, v128) == 1)
        {
          sub_21D0CF7E0(v118, &qword_27CE5FB90);
          sub_21D0CF7E0(v131, &qword_27CE5FB90);
          sub_21D106918(v98, type metadata accessor for TTRRemindersListViewModel.ItemID);
          goto LABEL_32;
        }

        sub_21D2A0DC8(v94 + v99, v17, type metadata accessor for TTRRemindersListViewModel.ItemID);
        v107 = _s15RemindersUICore25TTRRemindersListViewModelC6ItemIDO2eeoiySbAE_AEtFZ_0(v98, v17);
        sub_21D106918(v17, type metadata accessor for TTRRemindersListViewModel.ItemID);
        sub_21D0CF7E0(v118, &qword_27CE5FB90);
        sub_21D0CF7E0(v131, &qword_27CE5FB90);
        sub_21D106918(v98, type metadata accessor for TTRRemindersListViewModel.ItemID);
        sub_21D0CF7E0(v94, &qword_27CE5FB90);
        v96 = v132;
        v36 = v142;
        v97 = v119;
        if (v107)
        {
LABEL_40:
          v102 = v129;
          if (v129 != v97)
          {
            if (v129 >= v97)
            {
              v100 = v97 + 1;
              v101 = v133;
              if (__OFADD__(v97, 1))
              {
                goto LABEL_48;
              }

              v96 = v132;
            }

            else
            {
              v100 = v97--;
              v96 = v132;
              v101 = v133;
            }

            goto LABEL_35;
          }
        }

        else
        {
LABEL_33:
          v100 = v97 + 1;
          if (__OFADD__(v97, 1))
          {
            goto LABEL_47;
          }

          v101 = v133;
          v102 = v129;
LABEL_35:
          sub_21D260100(v102, v101, v100, v96);
          v102 = v97;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE586F0);
        v103 = swift_allocObject();
        *(v103 + 16) = v110;
        *(v103 + 32) = v102;
        v147 = v103;
        sub_21D2F89FC(&qword_280D1B818, MEMORY[0x277CC9A28]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE67A70);
        sub_21D0D0F1C(&qword_280D178C8, &unk_27CE67A70);
        v104 = v124;
        sub_21DBFBCBC();
        v105 = sub_21D2920E8(v104, v96);
        if (v105)
        {
          v106 = v105;

          sub_21D3041B8(v106, v90);
        }

        (*v111)(v124, v125);
        sub_21D0CF7E0(v96, &unk_27CE5CD80);
        sub_21D0CF7E0(v133, &unk_27CE5CD80);
        sub_21D106918(v143, type metadata accessor for TTRRemindersListViewModel.Item);
        v33 = v121;
        goto LABEL_4;
      }

      sub_21D0CF7E0(v74, &unk_27CE5CD80);
      sub_21D106918(v76, type metadata accessor for TTRRemindersListViewModel.Item);
      sub_21D0CF7E0(v75, &qword_27CE5A3C0);
      v33 = v121;
      v36 = v142;
    }

LABEL_4:
    v44 = v146;
    sub_21D106918(v146, type metadata accessor for TTRRemindersListViewModel.Item);
    v51 = v145;
    if (v145 == v139)
    {
      return;
    }
  }

LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
}

uint64_t sub_21D2A21B4(uint64_t a1, uint64_t a2)
{
  v95 = sub_21DBF5B9C();
  v91 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v93 = &v89 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v94 = &v89 - v6;
  v7 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  MEMORY[0x28223BE20](v7 - 8);
  v92 = &v89 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v99 = &v89 - v10;
  v11 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v89 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v14 = *(v110 - 8);
  MEMORY[0x28223BE20](v110);
  v16 = &v89 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v111 = &v89 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80);
  MEMORY[0x28223BE20](v19 - 8);
  v90 = &v89 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v98 = &v89 - v22;
  MEMORY[0x28223BE20](v23);
  v101 = &v89 - v24;
  MEMORY[0x28223BE20](v25);
  v107 = &v89 - v26;
  v27 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  v100 = *(v27 - 8);
  MEMORY[0x28223BE20](v27 - 8);
  v29 = &v89 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v32 = &v89 - v31;
  v33 = type metadata accessor for TTRRemindersListTreeViewModel.Section(0);
  MEMORY[0x28223BE20](v33);
  v37 = &v89 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x277D84FA0];
  v112 = MEMORY[0x277D84FA0];
  v39 = *(a2 + 16);
  v104 = a1;
  v105 = v16;
  if (v39)
  {
    v40 = *(v34 + 24);
    v41 = a2 + ((*(v35 + 80) + 32) & ~*(v35 + 80));
    v42 = *(v35 + 72);
    do
    {
      sub_21D104E74(v41, v37, type metadata accessor for TTRRemindersListTreeViewModel.Section);
      if (v37[v40] == 1)
      {
        sub_21D104E74(v37, v29, type metadata accessor for TTRRemindersListViewModel.SectionID);
        sub_21D29BC6C(v32, v29);
        sub_21D106918(v32, type metadata accessor for TTRRemindersListViewModel.SectionID);
      }

      sub_21D106918(v37, type metadata accessor for TTRRemindersListTreeViewModel.Section);
      v41 += v42;
      --v39;
    }

    while (v39);
    v38 = v112;
    v43 = v104;
    v16 = v105;
  }

  else
  {
    v43 = a1;
  }

  if (!*(v38 + 16))
  {
  }

  v44 = v107;
  v108 = *(v14 + 56);
  v109 = v14 + 56;
  v108(v107, 1, 1, v110);
  v45 = sub_21D261568(v44);
  result = sub_21D0CF7E0(v44, &unk_27CE5CD80);
  if (v45 < 0)
  {
    __break(1u);
    return result;
  }

  if (!v45)
  {

    v78 = MEMORY[0x277D84F90];
    goto LABEL_44;
  }

  v103 = v13;
  swift_beginAccess();
  v47 = 0;
  v97 = MEMORY[0x277D84F90];
  v96 = (v14 + 48);
  v48 = &unk_27CE5CD80;
  v106 = v45;
  v102 = v38 + 56;
  do
  {
    v49 = v48;
    v50 = v107;
    v108(v107, 1, 1, v110);
    v51 = v111;
    sub_21D26181C(v47, v50, v111);
    v52 = v50;
    v48 = v49;
    sub_21D0CF7E0(v52, v49);
    sub_21D104E74(v51, v16, type metadata accessor for TTRRemindersListViewModel.Item);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_21D106918(v51, type metadata accessor for TTRRemindersListViewModel.Item);
      sub_21D106918(v16, type metadata accessor for TTRRemindersListViewModel.Item);
      goto LABEL_13;
    }

    v53 = v103;
    sub_21D2A0DC8(v16, v103, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
    v54 = v102;
    if (!*(v38 + 16) || (sub_21DBFC7DC(), TTRRemindersListViewModel.SectionID.hash(into:)(), v55 = sub_21DBFC82C(), v56 = -1 << *(v38 + 32), v57 = v55 & ~v56, ((*(v54 + ((v57 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v57) & 1) == 0))
    {
LABEL_20:
      sub_21D106918(v53, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
      sub_21D106918(v111, type metadata accessor for TTRRemindersListViewModel.Item);
      v43 = v104;
LABEL_21:
      v16 = v105;
      goto LABEL_13;
    }

    v58 = ~v56;
    v59 = *(v100 + 72);
    while (1)
    {
      sub_21D104E74(*(v38 + 48) + v59 * v57, v32, type metadata accessor for TTRRemindersListViewModel.SectionID);
      v60 = _s15RemindersUICore25TTRRemindersListViewModelC9SectionIDO2eeoiySbAE_AEtFZ_0(v32, v53);
      sub_21D106918(v32, type metadata accessor for TTRRemindersListViewModel.SectionID);
      if (v60)
      {
        break;
      }

      v57 = (v57 + 1) & v58;
      if (((*(v54 + ((v57 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v57) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    v61 = v101;
    sub_21D104E74(v111, v101, type metadata accessor for TTRRemindersListViewModel.Item);
    v62 = v110;
    v108(v61, 0, 1, v110);
    v63 = v61;
    v64 = v98;
    sub_21D0D3954(v63, v98, v48);
    if ((*v96)(v64, 1, v62) == 1)
    {
      sub_21D0CF7E0(v64, v48);
      v65 = v104;
      v66 = *(v104 + 16);
      if (v66 >> 62)
      {
        v67 = sub_21DBFBD7C();
      }

      else
      {
        v67 = *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v16 = v105;
    }

    else
    {
      v68 = v92;
      TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v92);
      sub_21D106918(v64, type metadata accessor for TTRRemindersListViewModel.Item);
      v69 = v99;
      sub_21D2A0DC8(v68, v99, type metadata accessor for TTRRemindersListViewModel.ItemID);
      v65 = v104;
      v70 = sub_21D2916C8(v69, sub_21D181E00);
      if (v70)
      {
        v71 = *(*v70 + 136);
        v72 = v70;
        swift_beginAccess();
        v73 = *(v72 + v71);
        sub_21DBF8E0C();

        if (v73 >> 62)
        {
          v67 = sub_21DBFBD7C();
        }

        else
        {
          v67 = *((v73 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v16 = v105;
      }

      else
      {
        v67 = 0;
        v16 = v105;
      }

      sub_21D106918(v99, type metadata accessor for TTRRemindersListViewModel.ItemID);
    }

    sub_21D0CF7E0(v101, v48);
    sub_21D106918(v53, type metadata accessor for TTRRemindersListViewModel.SectionHeader);
    sub_21D106918(v111, type metadata accessor for TTRRemindersListViewModel.Item);
    if (!v67)
    {
      v74 = v97;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v113 = v74;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_21D18E658(0, *(v74 + 16) + 1, 1);
        v74 = v113;
      }

      v77 = *(v74 + 16);
      v76 = *(v74 + 24);
      v43 = v65;
      if (v77 >= v76 >> 1)
      {
        sub_21D18E658((v76 > 1), v77 + 1, 1);
        v43 = v65;
        v74 = v113;
      }

      *(v74 + 16) = v77 + 1;
      v97 = v74;
      *(v74 + 8 * v77 + 32) = v47;
      goto LABEL_21;
    }

    v43 = v65;
LABEL_13:
    ++v47;
  }

  while (v47 != v106);

  v78 = v97;
LABEL_44:
  v79 = v95;
  v80 = v94;
  v81 = v93;
  if (!*(v78 + 16))
  {
  }

  sub_21D2F89FC(&qword_280D1B818, MEMORY[0x277CC9A28]);
  sub_21DBFBCAC();
  v82 = *(v78 + 16);
  if (v82)
  {
    v83 = (v78 + 32);
    do
    {
      v84 = *v83++;
      v113 = v84;
      sub_21DBFBC6C();
      --v82;
    }

    while (v82);
  }

  v85 = v91;
  (*(v91 + 32))(v80, v81, v79);
  v86 = v90;
  v108(v90, 1, 1, v110);
  v87 = sub_21D2920E8(v80, v86);
  if (v87)
  {
    v88 = v87;

    sub_21D3041B8(v88, v43);
  }

  sub_21D0CF7E0(v86, &unk_27CE5CD80);
  return (*(v85 + 8))(v80, v79);
}

uint64_t sub_21D2A2E5C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v10 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  MEMORY[0x28223BE20](v10 - 8);
  v63 = v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  v68 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v61 = v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = v59 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A558);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = v59 - v17;
  v19 = -1 << *(a1 + 32);
  v20 = ~v19;
  v21 = *(a1 + 64);
  v22 = -v19;
  v69 = a1;
  v70 = a1 + 64;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  else
  {
    v23 = -1;
  }

  v71 = v20;
  v72 = 0;
  v73 = v23 & v21;
  v74 = a2;
  v24 = v18;
  v75 = a3;
  sub_21DBF8E0C();
  v59[0] = a3;

  *&v25 = 136315138;
  v60 = v25;
  v66 = v24;
  v67 = v15;
  while (1)
  {
    sub_21DA5E578(v24);
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE652A0);
    if ((*(*(v26 - 8) + 48))(v24, 1, v26) == 1)
    {
      sub_21D0CFAF8();
    }

    v27 = *(v26 + 48);
    sub_21D2A0DC8(v24, v15, type metadata accessor for TTRRemindersListViewModel.ItemID);
    v28 = *(v24 + v27);
    v29 = *a5;
    v32 = sub_21D181E00(v15, v30);
    v33 = v29[2];
    v34 = (v31 & 1) == 0;
    v35 = v33 + v34;
    if (__OFADD__(v33, v34))
    {
      break;
    }

    v36 = v31;
    if (v29[3] >= v35)
    {
      if (a4)
      {
        v40 = *a5;
        if ((v31 & 1) == 0)
        {
          goto LABEL_19;
        }
      }

      else
      {
        sub_21D221A94();
        v40 = *a5;
        if ((v36 & 1) == 0)
        {
          goto LABEL_19;
        }
      }

LABEL_14:
      v41 = *(v40[7] + 8 * v32);
      v42 = qword_27CE56620;

      if (v42 != -1)
      {
        swift_once();
      }

      v43 = sub_21DBF84BC();
      __swift_project_value_buffer(v43, qword_27CE5A918);

      v44 = sub_21DBF84AC();
      v45 = sub_21DBFAECC();

      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        v76 = v65;
        *v46 = v60;
        v47 = *(*v28 + 120);
        swift_beginAccess();
        v48 = v28 + v47;
        v49 = v63;
        sub_21D104E74(v48, v63, type metadata accessor for TTRRemindersListViewModel.Item);
        v64 = v41;
        TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v61);
        sub_21D106918(v49, type metadata accessor for TTRRemindersListViewModel.Item);
        v50 = sub_21DBFA1AC();
        v52 = a5;
        v53 = sub_21D0CDFB4(v50, v51, &v76);

        *(v46 + 4) = v53;
        a5 = v52;
        _os_log_impl(&dword_21D0C9000, v44, v45, "item ID is not unique {treeItemIdentifier: %s}", v46, 0xCu);
        v54 = v65;
        __swift_destroy_boxed_opaque_existential_0(v65);
        MEMORY[0x223D46520](v54, -1, -1);
        MEMORY[0x223D46520](v46, -1, -1);
      }

      v15 = v67;
      sub_21D106918(v67, type metadata accessor for TTRRemindersListViewModel.ItemID);
      *(v40[7] + 8 * v32) = v28;

      a4 = 1;
      v24 = v66;
    }

    else
    {
      sub_21D218074(v35, a4 & 1);
      v38 = sub_21D181E00(v15, v37);
      if ((v36 & 1) != (v39 & 1))
      {
        goto LABEL_24;
      }

      v32 = v38;
      v40 = *a5;
      if (v36)
      {
        goto LABEL_14;
      }

LABEL_19:
      v40[(v32 >> 6) + 8] |= 1 << v32;
      sub_21D2A0DC8(v15, v40[6] + *(v68 + 72) * v32, type metadata accessor for TTRRemindersListViewModel.ItemID);
      *(v40[7] + 8 * v32) = v28;
      v55 = v40[2];
      v56 = __OFADD__(v55, 1);
      v57 = v55 + 1;
      if (v56)
      {
        goto LABEL_23;
      }

      v40[2] = v57;
      a4 = 1;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_21DBFC70C();
  __break(1u);
  return result;
}

void sub_21D2A3400(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = a2;
  v23 = a1;
  v6 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  v25 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = 0;
  v9 = 0;
  v10 = 1 << *(a3 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a3 + 64);
  v13 = (v10 + 63) >> 6;
  while (v12)
  {
    v14 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v17 = v14 | (v9 << 6);
    sub_21D104E74(*(a3 + 48) + *(v25 + 72) * v17, v8, type metadata accessor for TTRRemindersListViewModel.ItemID);
    swift_beginAccess();
    if (*(*(a4 + 24) + 16) && (sub_21D181E00(v8, v18), (v19 & 1) != 0))
    {
      swift_endAccess();
      sub_21D106918(v8, type metadata accessor for TTRRemindersListViewModel.ItemID);
      *(v23 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      if (__OFADD__(v24++, 1))
      {
        __break(1u);
LABEL_17:
        sub_21D9852A0(v23, v22, v24, a3);
        return;
      }
    }

    else
    {
      swift_endAccess();
      sub_21D106918(v8, type metadata accessor for TTRRemindersListViewModel.ItemID);
    }
  }

  v15 = v9;
  while (1)
  {
    v9 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v9 >= v13)
    {
      goto LABEL_17;
    }

    v16 = *(a3 + 64 + 8 * v9);
    ++v15;
    if (v16)
    {
      v14 = __clz(__rbit64(v16));
      v12 = (v16 - 1) & v16;
      goto LABEL_12;
    }
  }

  __break(1u);
}

unint64_t *sub_21D2A3638(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v15[1] = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 32);
  v7 = v6 & 0x3F;
  v8 = ((1 << v6) + 63) >> 6;
  v9 = 8 * v8;
  v10 = swift_retain_n();
  if (v7 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v14 = swift_slowAlloc();

      v12 = sub_21D29FE58(v14, v8, a1, a2);
      MEMORY[0x223D46520](v14, -1, -1);

      return v12;
    }
  }

  MEMORY[0x28223BE20](v10);
  bzero(v15 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0), v9);

  sub_21D2A3400((v15 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0)), v8, a1, a2);
  v12 = v11;

  if (v3)
  {
    swift_willThrow();
  }

  return v12;
}

void *initializeBufferWithCopyOfBuffer for TTRRemindersListUncommittedReminder(void *a1, void *a2, uint64_t a3)
{
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3A0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v6 = type metadata accessor for TTRRemindersListViewModel.Item(0);
    v7 = *(v6 - 8);
    v8 = (*(v7 + 48))(a2, 1, v6);
    if (EnumCaseMultiPayload == 1)
    {
      if (v8)
      {
        v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80);
        memcpy(a1, a2, *(*(v9 - 8) + 64));
LABEL_264:
        v204 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3F0);
        *(a1 + *(v204 + 48)) = *(a2 + *(v204 + 48));
        goto LABEL_269;
      }

      v12 = swift_getEnumCaseMultiPayload();
      if (v12 > 3)
      {
        if (v12 > 5)
        {
          switch(v12)
          {
            case 6:
              v52 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
              v53 = *(v52 - 8);
              if ((*(v53 + 48))(a2, 1, v52))
              {
                v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440);
                memcpy(a1, a2, *(*(v54 - 8) + 64));
              }

              else
              {
                *a1 = *a2;
                v74 = *(v52 + 20);
                v325 = v6;
                v75 = sub_21DBF6C1C();
                v76 = *(*(v75 - 8) + 16);
                sub_21DBF8E0C();
                v77 = v75;
                v6 = v325;
                v76(a1 + v74, a2 + v74, v77);
                (*(v53 + 56))(a1, 0, 1, v52);
              }

              v78 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
              v79 = (a1 + v78);
              v80 = (a2 + v78);
              v81 = v80[1];
              if (v81)
              {
                *v79 = *v80;
                v79[1] = v81;
                v82 = v80[2];
                v79[2] = v82;
                sub_21DBF8E0C();
                v83 = v82;
              }

              else
              {
                *v79 = *v80;
                v79[2] = v80[2];
              }

              goto LABEL_262;
            case 7:
              v64 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
              v65 = *(v64 - 8);
              if ((*(v65 + 48))(a2, 1, v64))
              {
                v66 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
                memcpy(a1, a2, *(*(v66 - 8) + 64));
              }

              else
              {
                v96 = sub_21DBF563C();
                (*(*(v96 - 8) + 16))(a1, a2, v96);
                *(a1 + *(v64 + 20)) = *(a2 + *(v64 + 20));
                (*(v65 + 56))(a1, 0, 1, v64);
              }

              v97 = type metadata accessor for TTRTemplatePublicLinkData(0);
              *(a1 + *(v97 + 20)) = *(a2 + *(v97 + 20));
              goto LABEL_262;
            case 8:
              *a1 = *a2;
              v13 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
              v14 = sub_21DBF8D7C();
              (*(*(v14 - 8) + 16))(a1 + v13, a2 + v13, v14);
LABEL_262:
              swift_storeEnumTagMultiPayload();
              goto LABEL_263;
          }

LABEL_72:
          memcpy(a1, a2, *(v7 + 64));
LABEL_263:
          (*(v7 + 56))(a1, 0, 1, v6);
          goto LABEL_264;
        }

        if (v12 != 4)
        {
          *a1 = *a2;
          *(a1 + 8) = *(a2 + 8);
          *(a1 + 9) = *(a2 + 9);
          v36 = a2[2];
          a1[2] = v36;
          v37 = v36;
          goto LABEL_262;
        }

        v22 = v7;
        v58 = *a2;
        *a1 = *a2;
        v24 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v25 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v26 = *(v25 - 8);
        v59 = *(v26 + 48);
        v60 = v58;
        if (v59(a2 + v24, 1, v25))
        {
LABEL_57:
          v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
          memcpy(a1 + v24, a2 + v24, *(*(v47 - 8) + 64));
          v7 = v22;
          goto LABEL_262;
        }

        v94 = swift_getEnumCaseMultiPayload();
        if (v94 > 4)
        {
          v7 = v22;
          if (v94 <= 7)
          {
            if (v94 == 5 || v94 == 6)
            {
              goto LABEL_230;
            }

            goto LABEL_260;
          }

          if (v94 != 8 && v94 != 9)
          {
            goto LABEL_260;
          }

LABEL_226:
          v198 = *(a2 + v24);
          *(a1 + v24) = v198;
          v199 = v198;
          swift_storeEnumTagMultiPayload();
LABEL_261:
          (*(v26 + 56))(a1 + v24, 0, 1, v25);
          goto LABEL_262;
        }

        v7 = v22;
        if (v94 <= 2)
        {
          if (v94 != 1)
          {
            if (v94 == 2)
            {
              goto LABEL_230;
            }

LABEL_260:
            memcpy(a1 + v24, a2 + v24, *(v26 + 64));
            goto LABEL_261;
          }

          goto LABEL_226;
        }

LABEL_230:
        v202 = sub_21DBF563C();
        (*(*(v202 - 8) + 16))(a1 + v24, a2 + v24, v202);
        swift_storeEnumTagMultiPayload();
        goto LABEL_261;
      }

      if (v12 > 1)
      {
        if (v12 == 2)
        {
          v22 = v7;
          v44 = *a2;
          *a1 = *a2;
          v24 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
          v25 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v26 = *(v25 - 8);
          v45 = *(v26 + 48);
          v46 = v44;
          if (v45(a2 + v24, 1, v25))
          {
            goto LABEL_57;
          }

          v72 = swift_getEnumCaseMultiPayload();
          if (v72 > 4)
          {
            v7 = v22;
            if (v72 <= 7)
            {
              if (v72 == 5 || v72 == 6)
              {
                goto LABEL_230;
              }

              goto LABEL_260;
            }

            if (v72 != 8 && v72 != 9)
            {
              goto LABEL_260;
            }

            goto LABEL_226;
          }

          v7 = v22;
          if (v72 > 2)
          {
            goto LABEL_230;
          }

          if (v72 == 1)
          {
            goto LABEL_226;
          }

          if (v72 != 2)
          {
            goto LABEL_260;
          }
        }

        else
        {
          v22 = v7;
          v23 = *a2;
          *a1 = *a2;
          v24 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
          v25 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v26 = *(v25 - 8);
          v27 = *(v26 + 48);
          v28 = v23;
          if (v27(a2 + v24, 1, v25))
          {
            goto LABEL_57;
          }

          v70 = swift_getEnumCaseMultiPayload();
          if (v70 > 4)
          {
            v7 = v22;
            if (v70 <= 7)
            {
              if (v70 == 5 || v70 == 6)
              {
                goto LABEL_230;
              }

              goto LABEL_260;
            }

            if (v70 != 8 && v70 != 9)
            {
              goto LABEL_260;
            }

            goto LABEL_226;
          }

          v7 = v22;
          if (v70 > 2)
          {
            goto LABEL_230;
          }

          if (v70 == 1)
          {
            goto LABEL_226;
          }

          if (v70 != 2)
          {
            goto LABEL_260;
          }
        }

        goto LABEL_230;
      }

      if (v12)
      {
        if (v12 != 1)
        {
          goto LABEL_72;
        }

        v18 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v19 = swift_getEnumCaseMultiPayload();
        v322 = v6;
        if (v19 <= 4)
        {
          if (v19 > 2)
          {
LABEL_132:
            v100 = sub_21DBF563C();
            (*(*(v100 - 8) + 16))(a1, a2, v100);
            swift_storeEnumTagMultiPayload();
            goto LABEL_185;
          }

          if (v19 != 1)
          {
            if (v19 == 2)
            {
              goto LABEL_132;
            }

            goto LABEL_184;
          }

LABEL_136:
          v102 = *a2;
          *a1 = *a2;
          v103 = v102;
          swift_storeEnumTagMultiPayload();
          goto LABEL_185;
        }

        if (v19 > 7)
        {
          if (v19 == 8 || v19 == 9)
          {
            goto LABEL_136;
          }
        }

        else if (v19 == 5 || v19 == 6)
        {
          goto LABEL_132;
        }

LABEL_184:
        memcpy(a1, a2, *(*(v18 - 8) + 64));
LABEL_185:
        v112 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
        v113 = v112[5];
        v114 = a1 + v113;
        v115 = a2 + v113;
        v116 = *(a2 + v113 + 8);
        if (v116)
        {
          v310 = v7;
          v316 = a1;
          *v114 = *v115;
          *(v114 + 1) = v116;
          v117 = *(v115 + 2);
          v118 = *(v115 + 3);
          v119 = *(v115 + 4);
          v120 = *(v115 + 5);
          v122 = *(v115 + 6);
          v121 = *(v115 + 7);
          v123 = v115[64];
          sub_21DBF8E0C();
          sub_21D2A7DB4(v117, v118, v119, v120, v122, v121, v123);
          *(v114 + 2) = v117;
          *(v114 + 3) = v118;
          *(v114 + 4) = v119;
          *(v114 + 5) = v120;
          *(v114 + 6) = v122;
          *(v114 + 7) = v121;
          v114[64] = v123;
          *(v114 + 65) = *(v115 + 65);
          v124 = v115[120];
          if (v124 == 255)
          {
            *(v114 + 72) = *(v115 + 72);
            *(v114 + 88) = *(v115 + 88);
            *(v114 + 104) = *(v115 + 104);
            v114[120] = v115[120];
          }

          else
          {
            v125 = *(v115 + 9);
            v126 = *(v115 + 10);
            v127 = *(v115 + 11);
            v128 = *(v115 + 12);
            v130 = *(v115 + 13);
            v129 = *(v115 + 14);
            v131 = v124 & 1;
            sub_21D0FB960(v125, v126, v127, v128, v130, v129, v124 & 1);
            *(v114 + 9) = v125;
            *(v114 + 10) = v126;
            *(v114 + 11) = v127;
            *(v114 + 12) = v128;
            *(v114 + 13) = v130;
            *(v114 + 14) = v129;
            v114[120] = v131;
          }

          a1 = v316;
          v6 = v322;
          v7 = v310;
          v114[121] = v115[121];
          goto LABEL_205;
        }

LABEL_202:
        v169 = *(v115 + 5);
        *(v114 + 4) = *(v115 + 4);
        *(v114 + 5) = v169;
        *(v114 + 6) = *(v115 + 6);
        *(v114 + 106) = *(v115 + 106);
        v170 = *(v115 + 1);
        *v114 = *v115;
        *(v114 + 1) = v170;
        v171 = *(v115 + 3);
        *(v114 + 2) = *(v115 + 2);
        *(v114 + 3) = v171;
LABEL_205:
        *(a1 + v112[6]) = *(a2 + v112[6]);
        *(a1 + v112[7]) = *(a2 + v112[7]);
        *(a1 + v112[8]) = *(a2 + v112[8]);
        *(a1 + v112[9]) = *(a2 + v112[9]);
        *(a1 + v112[10]) = *(a2 + v112[10]);
        v172 = v112[11];
        v173 = *(a2 + v172);
        *(a1 + v172) = v173;
        v174 = v173;
        goto LABEL_262;
      }

      v40 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v41 = swift_getEnumCaseMultiPayload();
      v323 = v6;
      if (v41 <= 4)
      {
        if (v41 > 2)
        {
LABEL_140:
          v106 = sub_21DBF563C();
          (*(*(v106 - 8) + 16))(a1, a2, v106);
          swift_storeEnumTagMultiPayload();
          goto LABEL_199;
        }

        if (v41 != 1)
        {
          if (v41 == 2)
          {
            goto LABEL_140;
          }

          goto LABEL_198;
        }

LABEL_144:
        v108 = *a2;
        *a1 = *a2;
        v109 = v108;
        swift_storeEnumTagMultiPayload();
        goto LABEL_199;
      }

      if (v41 > 7)
      {
        if (v41 == 8 || v41 == 9)
        {
          goto LABEL_144;
        }
      }

      else if (v41 == 5 || v41 == 6)
      {
        goto LABEL_140;
      }

LABEL_198:
      memcpy(a1, a2, *(*(v40 - 8) + 64));
LABEL_199:
      v112 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
      v152 = v112[5];
      v114 = a1 + v152;
      v115 = a2 + v152;
      v153 = *(a2 + v152 + 8);
      if (v153)
      {
        v311 = v7;
        v318 = a1;
        *v114 = *v115;
        *(v114 + 1) = v153;
        v154 = *(v115 + 2);
        v155 = *(v115 + 3);
        v156 = *(v115 + 4);
        v157 = *(v115 + 5);
        v159 = *(v115 + 6);
        v158 = *(v115 + 7);
        v160 = v115[64];
        sub_21DBF8E0C();
        sub_21D2A7DB4(v154, v155, v156, v157, v159, v158, v160);
        *(v114 + 2) = v154;
        *(v114 + 3) = v155;
        *(v114 + 4) = v156;
        *(v114 + 5) = v157;
        *(v114 + 6) = v159;
        *(v114 + 7) = v158;
        v114[64] = v160;
        *(v114 + 65) = *(v115 + 65);
        v161 = v115[120];
        if (v161 == 255)
        {
          *(v114 + 72) = *(v115 + 72);
          *(v114 + 88) = *(v115 + 88);
          *(v114 + 104) = *(v115 + 104);
          v114[120] = v115[120];
        }

        else
        {
          v162 = *(v115 + 9);
          v163 = *(v115 + 10);
          v164 = *(v115 + 11);
          v165 = *(v115 + 12);
          v167 = *(v115 + 13);
          v166 = *(v115 + 14);
          v168 = v161 & 1;
          sub_21D0FB960(v162, v163, v164, v165, v167, v166, v161 & 1);
          *(v114 + 9) = v162;
          *(v114 + 10) = v163;
          *(v114 + 11) = v164;
          *(v114 + 12) = v165;
          *(v114 + 13) = v167;
          *(v114 + 14) = v166;
          v114[120] = v168;
        }

        a1 = v318;
        v6 = v323;
        v7 = v311;
        v114[121] = v115[121];
        goto LABEL_205;
      }

      goto LABEL_202;
    }

    if (v8)
    {
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80);
      memcpy(a1, a2, *(*(v11 - 8) + 64));
      goto LABEL_269;
    }

    v15 = swift_getEnumCaseMultiPayload();
    if (v15 > 3)
    {
      if (v15 > 5)
      {
        switch(v15)
        {
          case 6:
            v55 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
            v56 = *(v55 - 8);
            if ((*(v56 + 48))(a2, 1, v55))
            {
              v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440);
              memcpy(a1, a2, *(*(v57 - 8) + 64));
            }

            else
            {
              *a1 = *a2;
              v84 = *(v55 + 20);
              v326 = v6;
              v85 = sub_21DBF6C1C();
              v86 = *(*(v85 - 8) + 16);
              sub_21DBF8E0C();
              v87 = v85;
              v6 = v326;
              v86(a1 + v84, a2 + v84, v87);
              (*(v56 + 56))(a1, 0, 1, v55);
            }

            v88 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
            v89 = (a1 + v88);
            v90 = (a2 + v88);
            v91 = v90[1];
            if (v91)
            {
              *v89 = *v90;
              v89[1] = v91;
              v92 = v90[2];
              v89[2] = v92;
              sub_21DBF8E0C();
              v93 = v92;
            }

            else
            {
              *v89 = *v90;
              v89[2] = v90[2];
            }

            goto LABEL_267;
          case 7:
            v67 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
            v68 = *(v67 - 8);
            if ((*(v68 + 48))(a2, 1, v67))
            {
              v69 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
              memcpy(a1, a2, *(*(v69 - 8) + 64));
            }

            else
            {
              v98 = sub_21DBF563C();
              (*(*(v98 - 8) + 16))(a1, a2, v98);
              *(a1 + *(v67 + 20)) = *(a2 + *(v67 + 20));
              (*(v68 + 56))(a1, 0, 1, v67);
            }

            v99 = type metadata accessor for TTRTemplatePublicLinkData(0);
            *(a1 + *(v99 + 20)) = *(a2 + *(v99 + 20));
            goto LABEL_267;
          case 8:
            *a1 = *a2;
            v16 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
            v17 = sub_21DBF8D7C();
            (*(*(v17 - 8) + 16))(a1 + v16, a2 + v16, v17);
LABEL_267:
            swift_storeEnumTagMultiPayload();
            goto LABEL_268;
        }

LABEL_73:
        memcpy(a1, a2, *(v7 + 64));
LABEL_268:
        (*(v7 + 56))(a1, 0, 1, v6);
LABEL_269:
        swift_storeEnumTagMultiPayload();
        v205 = *(a3 + 20);
        v206 = (a1 + v205);
        v207 = (a2 + v205);
        v208 = swift_getEnumCaseMultiPayload();
        if (v208 > 3)
        {
          if (v208 > 5)
          {
            switch(v208)
            {
              case 6:
                v228 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
                v229 = *(v228 - 8);
                if ((*(v229 + 48))(v207, 1, v228))
                {
                  v230 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440);
                  memcpy(v206, v207, *(*(v230 - 8) + 64));
                }

                else
                {
                  *v206 = *v207;
                  v239 = v207;
                  v240 = v206;
                  v241 = *(v228 + 20);
                  v242 = sub_21DBF6C1C();
                  v243 = *(*(v242 - 8) + 16);
                  sub_21DBF8E0C();
                  v244 = v240 + v241;
                  v245 = v239 + v241;
                  v206 = v240;
                  v207 = v239;
                  v243(v244, v245, v242);
                  (*(v229 + 56))(v206, 0, 1, v228);
                }

                v246 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
                v247 = (v206 + v246);
                v248 = (v207 + v246);
                v249 = v248[1];
                if (v249)
                {
                  *v247 = *v248;
                  v247[1] = v249;
                  v250 = v248[2];
                  v247[2] = v250;
                  sub_21DBF8E0C();
                  v251 = v250;
                }

                else
                {
                  *v247 = *v248;
                  v247[2] = v248[2];
                }

                goto LABEL_395;
              case 7:
                v234 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
                v235 = *(v234 - 8);
                if ((*(v235 + 48))(v207, 1, v234))
                {
                  v236 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
                  memcpy(v206, v207, *(*(v236 - 8) + 64));
                }

                else
                {
                  v253 = sub_21DBF563C();
                  (*(*(v253 - 8) + 16))(v206, v207, v253);
                  *(v206 + *(v234 + 20)) = *(v207 + *(v234 + 20));
                  (*(v235 + 56))(v206, 0, 1, v234);
                }

                v254 = type metadata accessor for TTRTemplatePublicLinkData(0);
                *(v206 + *(v254 + 20)) = *(v207 + *(v254 + 20));
                goto LABEL_395;
              case 8:
                *v206 = *v207;
                v209 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
                v210 = sub_21DBF8D7C();
                (*(*(v210 - 8) + 16))(v206 + v209, v207 + v209, v210);
LABEL_395:
                swift_storeEnumTagMultiPayload();
                goto LABEL_396;
            }

LABEL_301:
            memcpy(v206, v207, *(v7 + 64));
LABEL_396:
            *(a1 + *(a3 + 24)) = *(a2 + *(a3 + 24));
            goto LABEL_397;
          }

          if (v208 != 4)
          {
            *v206 = *v207;
            *(v206 + 8) = *(v207 + 8);
            *(v206 + 9) = *(v207 + 9);
            v220 = v207[2];
            v206[2] = v220;
            v221 = v220;
            goto LABEL_395;
          }

          v231 = *v207;
          *v206 = *v207;
          v214 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
          v215 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v216 = *(v215 - 8);
          v217 = v206;
          v232 = *(v216 + 48);
          v233 = v231;
          if (v232(v207 + v214, 1, v215))
          {
LABEL_294:
            v227 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
            memcpy(v217 + v214, v207 + v214, *(*(v227 - 8) + 64));
            goto LABEL_395;
          }

          v252 = swift_getEnumCaseMultiPayload();
          if (v252 > 4)
          {
            if (v252 <= 7)
            {
              if (v252 == 5 || v252 == 6)
              {
                goto LABEL_380;
              }

              goto LABEL_393;
            }

            if (v252 != 8 && v252 != 9)
            {
              goto LABEL_393;
            }

LABEL_379:
            v304 = *(v207 + v214);
            *(v206 + v214) = v304;
            v305 = v304;
            swift_storeEnumTagMultiPayload();
LABEL_394:
            (*(v216 + 56))(v206 + v214, 0, 1, v215);
            goto LABEL_395;
          }

          if (v252 <= 2)
          {
            if (v252 != 1)
            {
              if (v252 == 2)
              {
                goto LABEL_380;
              }

LABEL_393:
              memcpy(v206 + v214, v207 + v214, *(v216 + 64));
              goto LABEL_394;
            }

            goto LABEL_379;
          }

LABEL_380:
          v306 = sub_21DBF563C();
          (*(*(v306 - 8) + 16))(v206 + v214, v207 + v214, v306);
          swift_storeEnumTagMultiPayload();
          goto LABEL_394;
        }

        if (v208 > 1)
        {
          if (v208 == 2)
          {
            v224 = *v207;
            *v206 = *v207;
            v214 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
            v215 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
            v216 = *(v215 - 8);
            v217 = v206;
            v225 = *(v216 + 48);
            v226 = v224;
            if (v225(v207 + v214, 1, v215))
            {
              goto LABEL_294;
            }

            v238 = swift_getEnumCaseMultiPayload();
            if (v238 > 4)
            {
              if (v238 <= 7)
              {
                if (v238 == 5 || v238 == 6)
                {
                  goto LABEL_380;
                }

                goto LABEL_393;
              }

              if (v238 != 8 && v238 != 9)
              {
                goto LABEL_393;
              }

              goto LABEL_379;
            }

            if (v238 > 2)
            {
              goto LABEL_380;
            }

            if (v238 == 1)
            {
              goto LABEL_379;
            }

            if (v238 != 2)
            {
              goto LABEL_393;
            }
          }

          else
          {
            v213 = *v207;
            *v206 = *v207;
            v214 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
            v215 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
            v216 = *(v215 - 8);
            v217 = v206;
            v218 = *(v216 + 48);
            v219 = v213;
            if (v218(v207 + v214, 1, v215))
            {
              goto LABEL_294;
            }

            v237 = swift_getEnumCaseMultiPayload();
            if (v237 > 4)
            {
              if (v237 <= 7)
              {
                if (v237 == 5 || v237 == 6)
                {
                  goto LABEL_380;
                }

                goto LABEL_393;
              }

              if (v237 != 8 && v237 != 9)
              {
                goto LABEL_393;
              }

              goto LABEL_379;
            }

            if (v237 > 2)
            {
              goto LABEL_380;
            }

            if (v237 == 1)
            {
              goto LABEL_379;
            }

            if (v237 != 2)
            {
              goto LABEL_393;
            }
          }

          goto LABEL_380;
        }

        if (v208)
        {
          if (v208 != 1)
          {
            goto LABEL_301;
          }

          v211 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v212 = swift_getEnumCaseMultiPayload();
          v320 = a1;
          if (v212 <= 4)
          {
            if (v212 > 2)
            {
LABEL_331:
              v255 = sub_21DBF563C();
              (*(*(v255 - 8) + 16))(v206, v207, v255);
              swift_storeEnumTagMultiPayload();
              goto LABEL_358;
            }

            if (v212 != 1)
            {
              if (v212 == 2)
              {
                goto LABEL_331;
              }

              goto LABEL_357;
            }

LABEL_334:
            v256 = *v207;
            *v206 = *v207;
            v257 = v256;
            swift_storeEnumTagMultiPayload();
            goto LABEL_358;
          }

          if (v212 > 7)
          {
            if (v212 == 8 || v212 == 9)
            {
              goto LABEL_334;
            }
          }

          else if (v212 == 5 || v212 == 6)
          {
            goto LABEL_331;
          }

LABEL_357:
          memcpy(v206, v207, *(*(v211 - 8) + 64));
LABEL_358:
          v261 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
          v262 = v261[5];
          v263 = v206 + v262;
          v264 = v207 + v262;
          v265 = *(v207 + v262 + 8);
          if (v265)
          {
            v312 = v207;
            v314 = v206;
            *v263 = *v264;
            *(v263 + 1) = v265;
            v266 = *(v264 + 2);
            v267 = *(v264 + 3);
            v268 = *(v264 + 4);
            v269 = *(v264 + 5);
            v270 = *(v264 + 6);
            v271 = *(v264 + 7);
            v272 = v264[64];
            sub_21DBF8E0C();
            sub_21D2A7DB4(v266, v267, v268, v269, v270, v271, v272);
            *(v263 + 2) = v266;
            *(v263 + 3) = v267;
            *(v263 + 4) = v268;
            *(v263 + 5) = v269;
            *(v263 + 6) = v270;
            *(v263 + 7) = v271;
            v263[64] = v272;
            *(v263 + 65) = *(v264 + 65);
            v273 = v264[120];
            if (v273 == 255)
            {
              *(v263 + 72) = *(v264 + 72);
              *(v263 + 88) = *(v264 + 88);
              *(v263 + 104) = *(v264 + 104);
              v263[120] = v264[120];
            }

            else
            {
              v274 = *(v264 + 9);
              v275 = *(v264 + 10);
              v276 = *(v264 + 11);
              v277 = *(v264 + 12);
              v278 = *(v264 + 13);
              v279 = *(v264 + 14);
              v280 = v273 & 1;
              sub_21D0FB960(v274, v275, v276, v277, v278, v279, v273 & 1);
              *(v263 + 9) = v274;
              *(v263 + 10) = v275;
              *(v263 + 11) = v276;
              *(v263 + 12) = v277;
              *(v263 + 13) = v278;
              *(v263 + 14) = v279;
              v263[120] = v280;
            }

            v206 = v314;
            a1 = v320;
            v263[121] = v264[121];
            v207 = v312;
            goto LABEL_364;
          }

LABEL_361:
          v281 = *(v264 + 5);
          *(v263 + 4) = *(v264 + 4);
          *(v263 + 5) = v281;
          *(v263 + 6) = *(v264 + 6);
          *(v263 + 106) = *(v264 + 106);
          v282 = *(v264 + 1);
          *v263 = *v264;
          *(v263 + 1) = v282;
          v283 = *(v264 + 3);
          *(v263 + 2) = *(v264 + 2);
          *(v263 + 3) = v283;
LABEL_364:
          *(v206 + v261[6]) = *(v207 + v261[6]);
          *(v206 + v261[7]) = *(v207 + v261[7]);
          *(v206 + v261[8]) = *(v207 + v261[8]);
          *(v206 + v261[9]) = *(v207 + v261[9]);
          *(v206 + v261[10]) = *(v207 + v261[10]);
          v284 = v261[11];
          v285 = *(v207 + v284);
          *(v206 + v284) = v285;
          v286 = v285;
          goto LABEL_395;
        }

        v222 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v223 = swift_getEnumCaseMultiPayload();
        v321 = a1;
        if (v223 <= 4)
        {
          if (v223 > 2)
          {
LABEL_335:
            v258 = sub_21DBF563C();
            (*(*(v258 - 8) + 16))(v206, v207, v258);
            swift_storeEnumTagMultiPayload();
            goto LABEL_366;
          }

          if (v223 != 1)
          {
            if (v223 == 2)
            {
              goto LABEL_335;
            }

            goto LABEL_365;
          }

LABEL_338:
          v259 = *v207;
          *v206 = *v207;
          v260 = v259;
          swift_storeEnumTagMultiPayload();
          goto LABEL_366;
        }

        if (v223 > 7)
        {
          if (v223 == 8 || v223 == 9)
          {
            goto LABEL_338;
          }
        }

        else if (v223 == 5 || v223 == 6)
        {
          goto LABEL_335;
        }

LABEL_365:
        memcpy(v206, v207, *(*(v222 - 8) + 64));
LABEL_366:
        v261 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
        v287 = v261[5];
        v263 = v206 + v287;
        v264 = v207 + v287;
        v288 = *(v207 + v287 + 8);
        if (v288)
        {
          v313 = v207;
          v315 = v206;
          *v263 = *v264;
          *(v263 + 1) = v288;
          v289 = *(v264 + 2);
          v290 = *(v264 + 3);
          v292 = *(v264 + 4);
          v291 = *(v264 + 5);
          v294 = *(v264 + 6);
          v293 = *(v264 + 7);
          v295 = v264[64];
          sub_21DBF8E0C();
          sub_21D2A7DB4(v289, v290, v292, v291, v294, v293, v295);
          *(v263 + 2) = v289;
          *(v263 + 3) = v290;
          *(v263 + 4) = v292;
          *(v263 + 5) = v291;
          *(v263 + 6) = v294;
          *(v263 + 7) = v293;
          v263[64] = v295;
          *(v263 + 65) = *(v264 + 65);
          v296 = v264[120];
          if (v296 == 255)
          {
            *(v263 + 72) = *(v264 + 72);
            *(v263 + 88) = *(v264 + 88);
            *(v263 + 104) = *(v264 + 104);
            v263[120] = v264[120];
          }

          else
          {
            v297 = *(v264 + 9);
            v298 = *(v264 + 10);
            v299 = *(v264 + 11);
            v300 = *(v264 + 12);
            v301 = *(v264 + 13);
            v302 = *(v264 + 14);
            v303 = v296 & 1;
            sub_21D0FB960(v297, v298, v299, v300, v301, v302, v296 & 1);
            *(v263 + 9) = v297;
            *(v263 + 10) = v298;
            *(v263 + 11) = v299;
            *(v263 + 12) = v300;
            *(v263 + 13) = v301;
            *(v263 + 14) = v302;
            v263[120] = v303;
          }

          v206 = v315;
          a1 = v321;
          v263[121] = v264[121];
          v207 = v313;
          goto LABEL_364;
        }

        goto LABEL_361;
      }

      if (v15 != 4)
      {
        *a1 = *a2;
        *(a1 + 8) = *(a2 + 8);
        *(a1 + 9) = *(a2 + 9);
        v38 = a2[2];
        a1[2] = v38;
        v39 = v38;
        goto LABEL_267;
      }

      v29 = v7;
      v61 = *a2;
      *a1 = *a2;
      v31 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v32 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v33 = *(v32 - 8);
      v62 = *(v33 + 48);
      v63 = v61;
      if (v62(a2 + v31, 1, v32))
      {
LABEL_59:
        v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
        memcpy(a1 + v31, a2 + v31, *(*(v51 - 8) + 64));
        v7 = v29;
        goto LABEL_267;
      }

      v95 = swift_getEnumCaseMultiPayload();
      if (v95 > 4)
      {
        v7 = v29;
        if (v95 <= 7)
        {
          if (v95 == 5 || v95 == 6)
          {
            goto LABEL_231;
          }

          goto LABEL_265;
        }

        if (v95 != 8 && v95 != 9)
        {
          goto LABEL_265;
        }

LABEL_229:
        v200 = *(a2 + v31);
        *(a1 + v31) = v200;
        v201 = v200;
        swift_storeEnumTagMultiPayload();
LABEL_266:
        (*(v33 + 56))(a1 + v31, 0, 1, v32);
        goto LABEL_267;
      }

      v7 = v29;
      if (v95 <= 2)
      {
        if (v95 != 1)
        {
          if (v95 == 2)
          {
            goto LABEL_231;
          }

LABEL_265:
          memcpy(a1 + v31, a2 + v31, *(v33 + 64));
          goto LABEL_266;
        }

        goto LABEL_229;
      }

LABEL_231:
      v203 = sub_21DBF563C();
      (*(*(v203 - 8) + 16))(a1 + v31, a2 + v31, v203);
      swift_storeEnumTagMultiPayload();
      goto LABEL_266;
    }

    if (v15 > 1)
    {
      if (v15 == 2)
      {
        v29 = v7;
        v48 = *a2;
        *a1 = *a2;
        v31 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v32 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v33 = *(v32 - 8);
        v49 = *(v33 + 48);
        v50 = v48;
        if (v49(a2 + v31, 1, v32))
        {
          goto LABEL_59;
        }

        v73 = swift_getEnumCaseMultiPayload();
        if (v73 > 4)
        {
          v7 = v29;
          if (v73 <= 7)
          {
            if (v73 == 5 || v73 == 6)
            {
              goto LABEL_231;
            }

            goto LABEL_265;
          }

          if (v73 != 8 && v73 != 9)
          {
            goto LABEL_265;
          }

          goto LABEL_229;
        }

        v7 = v29;
        if (v73 > 2)
        {
          goto LABEL_231;
        }

        if (v73 == 1)
        {
          goto LABEL_229;
        }

        if (v73 != 2)
        {
          goto LABEL_265;
        }
      }

      else
      {
        v29 = v7;
        v30 = *a2;
        *a1 = *a2;
        v31 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v32 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v33 = *(v32 - 8);
        v34 = *(v33 + 48);
        v35 = v30;
        if (v34(a2 + v31, 1, v32))
        {
          goto LABEL_59;
        }

        v71 = swift_getEnumCaseMultiPayload();
        if (v71 > 4)
        {
          v7 = v29;
          if (v71 <= 7)
          {
            if (v71 == 5 || v71 == 6)
            {
              goto LABEL_231;
            }

            goto LABEL_265;
          }

          if (v71 != 8 && v71 != 9)
          {
            goto LABEL_265;
          }

          goto LABEL_229;
        }

        v7 = v29;
        if (v71 > 2)
        {
          goto LABEL_231;
        }

        if (v71 == 1)
        {
          goto LABEL_229;
        }

        if (v71 != 2)
        {
          goto LABEL_265;
        }
      }

      goto LABEL_231;
    }

    if (v15)
    {
      if (v15 != 1)
      {
        goto LABEL_73;
      }

      v20 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v21 = swift_getEnumCaseMultiPayload();
      v308 = v7;
      if (v21 <= 4)
      {
        if (v21 > 2)
        {
LABEL_133:
          v101 = sub_21DBF563C();
          (*(*(v101 - 8) + 16))(a1, a2, v101);
          swift_storeEnumTagMultiPayload();
          goto LABEL_192;
        }

        if (v21 != 1)
        {
          if (v21 == 2)
          {
            goto LABEL_133;
          }

          goto LABEL_191;
        }

LABEL_139:
        v104 = *a2;
        *a1 = *a2;
        v105 = v104;
        swift_storeEnumTagMultiPayload();
        goto LABEL_192;
      }

      if (v21 > 7)
      {
        if (v21 == 8 || v21 == 9)
        {
          goto LABEL_139;
        }
      }

      else if (v21 == 5 || v21 == 6)
      {
        goto LABEL_133;
      }

LABEL_191:
      memcpy(a1, a2, *(*(v20 - 8) + 64));
LABEL_192:
      v132 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
      v133 = v132[5];
      v134 = a1 + v133;
      v135 = a2 + v133;
      v136 = *(a2 + v133 + 8);
      if (v136)
      {
        v317 = a1;
        v327 = v6;
        *v134 = *v135;
        *(v134 + 1) = v136;
        v137 = *(v135 + 2);
        v138 = *(v135 + 3);
        v139 = *(v135 + 4);
        v140 = *(v135 + 5);
        v142 = *(v135 + 6);
        v141 = *(v135 + 7);
        v143 = v135[64];
        sub_21DBF8E0C();
        sub_21D2A7DB4(v137, v138, v139, v140, v142, v141, v143);
        *(v134 + 2) = v137;
        *(v134 + 3) = v138;
        *(v134 + 4) = v139;
        *(v134 + 5) = v140;
        *(v134 + 6) = v142;
        *(v134 + 7) = v141;
        v134[64] = v143;
        *(v134 + 65) = *(v135 + 65);
        v144 = v135[120];
        if (v144 == 255)
        {
          *(v134 + 72) = *(v135 + 72);
          *(v134 + 88) = *(v135 + 88);
          *(v134 + 104) = *(v135 + 104);
          v134[120] = v135[120];
        }

        else
        {
          v145 = *(v135 + 9);
          v146 = *(v135 + 10);
          v147 = *(v135 + 11);
          v148 = *(v135 + 12);
          v150 = *(v135 + 13);
          v149 = *(v135 + 14);
          v151 = v144 & 1;
          sub_21D0FB960(v145, v146, v147, v148, v150, v149, v144 & 1);
          *(v134 + 9) = v145;
          *(v134 + 10) = v146;
          *(v134 + 11) = v147;
          *(v134 + 12) = v148;
          *(v134 + 13) = v150;
          *(v134 + 14) = v149;
          v134[120] = v151;
        }

        a1 = v317;
        v6 = v327;
        v7 = v308;
        v134[121] = v135[121];
        goto LABEL_213;
      }

LABEL_210:
      v192 = *(v135 + 5);
      *(v134 + 4) = *(v135 + 4);
      *(v134 + 5) = v192;
      *(v134 + 6) = *(v135 + 6);
      *(v134 + 106) = *(v135 + 106);
      v193 = *(v135 + 1);
      *v134 = *v135;
      *(v134 + 1) = v193;
      v194 = *(v135 + 3);
      *(v134 + 2) = *(v135 + 2);
      *(v134 + 3) = v194;
LABEL_213:
      *(a1 + v132[6]) = *(a2 + v132[6]);
      *(a1 + v132[7]) = *(a2 + v132[7]);
      *(a1 + v132[8]) = *(a2 + v132[8]);
      *(a1 + v132[9]) = *(a2 + v132[9]);
      *(a1 + v132[10]) = *(a2 + v132[10]);
      v195 = v132[11];
      v196 = *(a2 + v195);
      *(a1 + v195) = v196;
      v197 = v196;
      goto LABEL_267;
    }

    v42 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v43 = swift_getEnumCaseMultiPayload();
    v324 = v6;
    v309 = v7;
    if (v43 <= 4)
    {
      if (v43 > 2)
      {
LABEL_141:
        v107 = sub_21DBF563C();
        (*(*(v107 - 8) + 16))(a1, a2, v107);
        swift_storeEnumTagMultiPayload();
        goto LABEL_207;
      }

      if (v43 != 1)
      {
        if (v43 == 2)
        {
          goto LABEL_141;
        }

        goto LABEL_206;
      }

LABEL_147:
      v110 = *a2;
      *a1 = *a2;
      v111 = v110;
      swift_storeEnumTagMultiPayload();
      goto LABEL_207;
    }

    if (v43 > 7)
    {
      if (v43 == 8 || v43 == 9)
      {
        goto LABEL_147;
      }
    }

    else if (v43 == 5 || v43 == 6)
    {
      goto LABEL_141;
    }

LABEL_206:
    memcpy(a1, a2, *(*(v42 - 8) + 64));
LABEL_207:
    v132 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
    v175 = v132[5];
    v134 = a1 + v175;
    v135 = a2 + v175;
    v176 = *(a2 + v175 + 8);
    if (v176)
    {
      v319 = a1;
      *v134 = *v135;
      *(v134 + 1) = v176;
      v177 = *(v135 + 2);
      v178 = *(v135 + 3);
      v180 = *(v135 + 4);
      v179 = *(v135 + 5);
      v182 = *(v135 + 6);
      v181 = *(v135 + 7);
      v183 = v135[64];
      sub_21DBF8E0C();
      sub_21D2A7DB4(v177, v178, v180, v179, v182, v181, v183);
      *(v134 + 2) = v177;
      *(v134 + 3) = v178;
      *(v134 + 4) = v180;
      *(v134 + 5) = v179;
      *(v134 + 6) = v182;
      *(v134 + 7) = v181;
      v134[64] = v183;
      *(v134 + 65) = *(v135 + 65);
      v184 = v135[120];
      if (v184 == 255)
      {
        *(v134 + 72) = *(v135 + 72);
        *(v134 + 88) = *(v135 + 88);
        *(v134 + 104) = *(v135 + 104);
        v134[120] = v135[120];
      }

      else
      {
        v185 = *(v135 + 9);
        v186 = *(v135 + 10);
        v187 = *(v135 + 11);
        v188 = *(v135 + 12);
        v190 = *(v135 + 13);
        v189 = *(v135 + 14);
        v191 = v184 & 1;
        sub_21D0FB960(v185, v186, v187, v188, v190, v189, v184 & 1);
        *(v134 + 9) = v185;
        *(v134 + 10) = v186;
        *(v134 + 11) = v187;
        *(v134 + 12) = v188;
        *(v134 + 13) = v190;
        *(v134 + 14) = v189;
        v134[120] = v191;
      }

      a1 = v319;
      v6 = v324;
      v7 = v309;
      v134[121] = v135[121];
      goto LABEL_213;
    }

    goto LABEL_210;
  }

  v10 = *a2;
  *a1 = *a2;
  a1 = (v10 + ((v4 + 16) & ~v4));
LABEL_397:

  return a1;
}

id sub_21D2A7DB4(id result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7)
{
  if (a7 >> 6 == 2)
  {
    return sub_21DBF8E0C();
  }

  if (!(a7 >> 6))
  {
    return sub_21D0FB960(result, a2, a3, a4, a5, a6, a7 & 1);
  }

  return result;
}

uint64_t destroy for TTRRemindersListUncommittedReminder(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3A0);
  swift_getEnumCaseMultiPayload();
  v4 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  if ((*(*(v4 - 8) + 48))(a1, 1, v4))
  {
    goto LABEL_2;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      goto LABEL_50;
    }

    if (EnumCaseMultiPayload > 1)
    {
      goto LABEL_2;
    }

    type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v16 = swift_getEnumCaseMultiPayload();
    if (v16 > 4)
    {
      if (v16 <= 7)
      {
        if (v16 != 5 && v16 != 6)
        {
          goto LABEL_93;
        }

        goto LABEL_89;
      }

      if (v16 != 8 && v16 != 9)
      {
        goto LABEL_93;
      }
    }

    else
    {
      if (v16 > 2)
      {
        goto LABEL_89;
      }

      if (v16 != 1)
      {
        if (v16 != 2)
        {
LABEL_93:
          v40 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
          v41 = a1 + *(v40 + 20);
          if (*(v41 + 8))
          {

            sub_21D179EF0(*(v41 + 16), *(v41 + 24), *(v41 + 32), *(v41 + 40), *(v41 + 48), *(v41 + 56), *(v41 + 64));
            v42 = *(v41 + 120);
            if (v42 != 255)
            {
              sub_21D1078C0(*(v41 + 72), *(v41 + 80), *(v41 + 88), *(v41 + 96), *(v41 + 104), *(v41 + 112), v42 & 1);
            }
          }

          v23 = *(a1 + *(v40 + 44));
          goto LABEL_97;
        }

LABEL_89:
        v39 = sub_21DBF563C();
        (*(*(v39 - 8) + 8))(a1, v39);
        goto LABEL_93;
      }
    }

    goto LABEL_93;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload != 4)
    {
      v23 = *(a1 + 16);
LABEL_97:

      goto LABEL_2;
    }

LABEL_50:

    v24 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v25 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    if ((*(*(v25 - 8) + 48))(a1 + v24, 1, v25))
    {
      goto LABEL_2;
    }

    v26 = swift_getEnumCaseMultiPayload();
    if (v26 > 4)
    {
      if (v26 <= 7)
      {
        if (v26 != 5 && v26 != 6)
        {
          goto LABEL_2;
        }

LABEL_98:
        v43 = sub_21DBF563C();
        (*(*(v43 - 8) + 8))(a1 + v24, v43);
        goto LABEL_2;
      }

      if (v26 != 8 && v26 != 9)
      {
        goto LABEL_2;
      }
    }

    else
    {
      if (v26 > 2)
      {
        goto LABEL_98;
      }

      if (v26 != 1)
      {
        if (v26 != 2)
        {
          goto LABEL_2;
        }

        goto LABEL_98;
      }
    }

    v23 = *(a1 + v24);
    goto LABEL_97;
  }

  if (EnumCaseMultiPayload != 6)
  {
    if (EnumCaseMultiPayload == 7)
    {
      v35 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
      if (!(*(*(v35 - 8) + 48))(a1, 1, v35))
      {
        v36 = sub_21DBF563C();
        (*(*(v36 - 8) + 8))(a1, v36);
      }
    }

    else if (EnumCaseMultiPayload == 8)
    {
      v11 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
      v12 = sub_21DBF8D7C();
      (*(*(v12 - 8) + 8))(a1 + v11, v12);
    }

    goto LABEL_2;
  }

  v31 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
  if (!(*(*(v31 - 8) + 48))(a1, 1, v31))
  {

    v32 = *(v31 + 20);
    v33 = sub_21DBF6C1C();
    (*(*(v33 - 8) + 8))(a1 + v32, v33);
  }

  v34 = a1 + *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
  if (*(v34 + 8))
  {

    v23 = *(v34 + 16);
    goto LABEL_97;
  }

LABEL_2:
  v5 = (a1 + *(a2 + 20));
  v6 = swift_getEnumCaseMultiPayload();
  if (v6 > 3)
  {
    if (v6 > 5)
    {
      switch(v6)
      {
        case 6:
          v17 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
          if (!(*(*(v17 - 8) + 48))(v5, 1, v17))
          {

            v18 = *(v17 + 20);
            v19 = sub_21DBF6C1C();
            (*(*(v19 - 8) + 8))(v5 + v18, v19);
          }

          v20 = (v5 + *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20));
          if (v20[1])
          {
          }

          break;
        case 7:
          v21 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
          if (!(*(*(v21 - 8) + 48))(v5, 1, v21))
          {
            v22 = sub_21DBF563C();
            (*(*(v22 - 8) + 8))(v5, v22);
          }

          break;
        case 8:
          v7 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
          v8 = sub_21DBF8D7C();
          (*(*(v8 - 8) + 8))(v5 + v7, v8);
          break;
      }

      goto LABEL_79;
    }

    if (v6 != 4)
    {

      goto LABEL_79;
    }

LABEL_24:

    v13 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v14 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    if ((*(*(v14 - 8) + 48))(v5 + v13, 1, v14))
    {
      goto LABEL_79;
    }

    v15 = swift_getEnumCaseMultiPayload();
    if (v15 > 4)
    {
      if (v15 <= 7)
      {
        if (v15 != 5 && v15 != 6)
        {
          goto LABEL_79;
        }

LABEL_78:
        v37 = sub_21DBF563C();
        (*(*(v37 - 8) + 8))(v5 + v13, v37);
        goto LABEL_79;
      }

      if (v15 != 8 && v15 != 9)
      {
        goto LABEL_79;
      }
    }

    else
    {
      if (v15 > 2)
      {
        goto LABEL_78;
      }

      if (v15 != 1)
      {
        if (v15 != 2)
        {
          goto LABEL_79;
        }

        goto LABEL_78;
      }
    }

    goto LABEL_79;
  }

  if (v6 > 1)
  {
    goto LABEL_24;
  }

  if (v6 > 1)
  {
    goto LABEL_79;
  }

  type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  v9 = swift_getEnumCaseMultiPayload();
  if (v9 > 4)
  {
    if (v9 <= 7)
    {
      if (v9 != 5 && v9 != 6)
      {
        goto LABEL_64;
      }

      goto LABEL_60;
    }

    if (v9 != 8 && v9 != 9)
    {
      goto LABEL_64;
    }

    goto LABEL_63;
  }

  if (v9 > 2)
  {
LABEL_60:
    v27 = sub_21DBF563C();
    (*(*(v27 - 8) + 8))(v5, v27);
    goto LABEL_64;
  }

  if (v9 == 1)
  {
LABEL_63:

    goto LABEL_64;
  }

  if (v9 == 2)
  {
    goto LABEL_60;
  }

LABEL_64:
  v28 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
  v29 = v5 + *(v28 + 20);
  if (*(v29 + 1))
  {

    sub_21D179EF0(*(v29 + 2), *(v29 + 3), *(v29 + 4), *(v29 + 5), *(v29 + 6), *(v29 + 7), v29[64]);
    v30 = v29[120];
    if (v30 != 255)
    {
      sub_21D1078C0(*(v29 + 9), *(v29 + 10), *(v29 + 11), *(v29 + 12), *(v29 + 13), *(v29 + 14), v30 & 1);
    }
  }

LABEL_79:
}

void *initializeWithCopy for TTRRemindersListUncommittedReminder(void *a1, _BYTE *a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3A0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v5 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v6 = *(v5 - 8);
  v316 = a2;
  v7 = (*(v6 + 48))(a2, 1, v5);
  if (EnumCaseMultiPayload == 1)
  {
    if (v7)
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80);
      memcpy(a1, a2, *(*(v8 - 8) + 64));
LABEL_262:
      v198 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3F0);
      *(a1 + *(v198 + 48)) = *(v316 + *(v198 + 48));
      goto LABEL_267;
    }

    v10 = swift_getEnumCaseMultiPayload();
    if (v10 > 3)
    {
      if (v10 > 5)
      {
        switch(v10)
        {
          case 6:
            v48 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
            v49 = *(v48 - 8);
            if ((*(v49 + 48))(v316, 1, v48))
            {
              v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440);
              memcpy(a1, v316, *(*(v50 - 8) + 64));
            }

            else
            {
              *a1 = *v316;
              v72 = *(v48 + 20);
              v73 = sub_21DBF6C1C();
              v301 = *(*(v73 - 8) + 16);
              sub_21DBF8E0C();
              v301(a1 + v72, v316 + v72, v73);
              (*(v49 + 56))(a1, 0, 1, v48);
            }

            v74 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
            v75 = (a1 + v74);
            v76 = (v316 + v74);
            v77 = v76[1];
            if (v77)
            {
              *v75 = *v76;
              v75[1] = v77;
              v78 = v76[2];
              v75[2] = v78;
              sub_21DBF8E0C();
              v79 = v78;
            }

            else
            {
              *v75 = *v76;
              v75[2] = v76[2];
            }

            goto LABEL_260;
          case 7:
            v62 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
            v63 = *(v62 - 8);
            if ((*(v63 + 48))(v316, 1, v62))
            {
              v64 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
              memcpy(a1, v316, *(*(v64 - 8) + 64));
            }

            else
            {
              v90 = sub_21DBF563C();
              (*(*(v90 - 8) + 16))(a1, v316, v90);
              *(a1 + *(v62 + 20)) = *(v316 + *(v62 + 20));
              (*(v63 + 56))(a1, 0, 1, v62);
            }

            v91 = *(type metadata accessor for TTRTemplatePublicLinkData(0) + 20);
            *(a1 + v91) = *(v316 + v91);
            goto LABEL_260;
          case 8:
            *a1 = *a2;
            v11 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
            v12 = sub_21DBF8D7C();
            (*(*(v12 - 8) + 16))(a1 + v11, v316 + v11, v12);
LABEL_260:
            swift_storeEnumTagMultiPayload();
            goto LABEL_261;
        }

LABEL_70:
        memcpy(a1, a2, *(v6 + 64));
LABEL_261:
        (*(v6 + 56))(a1, 0, 1, v5);
        goto LABEL_262;
      }

      if (v10 != 4)
      {
        *a1 = *a2;
        *(a1 + 8) = a2[8];
        *(a1 + 9) = *(a2 + 9);
        v34 = *(a2 + 2);
        a1[2] = v34;
        v35 = v34;
        goto LABEL_260;
      }

      v20 = v6;
      v54 = *a2;
      *a1 = *a2;
      v22 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v23 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v24 = *(v23 - 8);
      v55 = *(v24 + 48);
      v56 = v54;
      if (v55(v316 + v22, 1, v23))
      {
LABEL_63:
        v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
        memcpy(a1 + v22, v316 + v22, *(*(v57 - 8) + 64));
        v6 = v20;
        goto LABEL_260;
      }

      v88 = swift_getEnumCaseMultiPayload();
      if (v88 > 4)
      {
        v6 = v20;
        if (v88 <= 7)
        {
          if (v88 == 5 || v88 == 6)
          {
            goto LABEL_228;
          }

          goto LABEL_258;
        }

        if (v88 != 8 && v88 != 9)
        {
          goto LABEL_258;
        }

LABEL_224:
        v192 = *(v316 + v22);
        *(a1 + v22) = v192;
        v193 = v192;
        swift_storeEnumTagMultiPayload();
LABEL_259:
        (*(v24 + 56))(a1 + v22, 0, 1, v23);
        goto LABEL_260;
      }

      v6 = v20;
      if (v88 <= 2)
      {
        if (v88 != 1)
        {
          if (v88 == 2)
          {
            goto LABEL_228;
          }

LABEL_258:
          memcpy(a1 + v22, v316 + v22, *(v24 + 64));
          goto LABEL_259;
        }

        goto LABEL_224;
      }

LABEL_228:
      v196 = sub_21DBF563C();
      (*(*(v196 - 8) + 16))(a1 + v22, v316 + v22, v196);
      swift_storeEnumTagMultiPayload();
      goto LABEL_259;
    }

    if (v10 > 1)
    {
      if (v10 == 2)
      {
        v20 = v6;
        v42 = *a2;
        *a1 = *a2;
        v22 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v23 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v24 = *(v23 - 8);
        v43 = *(v24 + 48);
        v44 = v42;
        if (v43(v316 + v22, 1, v23))
        {
          goto LABEL_63;
        }

        v70 = swift_getEnumCaseMultiPayload();
        if (v70 > 4)
        {
          v6 = v20;
          if (v70 <= 7)
          {
            if (v70 == 5 || v70 == 6)
            {
              goto LABEL_228;
            }

            goto LABEL_258;
          }

          if (v70 != 8 && v70 != 9)
          {
            goto LABEL_258;
          }

          goto LABEL_224;
        }

        v6 = v20;
        if (v70 > 2)
        {
          goto LABEL_228;
        }

        if (v70 == 1)
        {
          goto LABEL_224;
        }

        if (v70 != 2)
        {
          goto LABEL_258;
        }
      }

      else
      {
        v20 = v6;
        v21 = *a2;
        *a1 = *a2;
        v22 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v23 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v24 = *(v23 - 8);
        v25 = *(v24 + 48);
        v26 = v21;
        if (v25(v316 + v22, 1, v23))
        {
          goto LABEL_63;
        }

        v68 = swift_getEnumCaseMultiPayload();
        if (v68 > 4)
        {
          v6 = v20;
          if (v68 <= 7)
          {
            if (v68 == 5 || v68 == 6)
            {
              goto LABEL_228;
            }

            goto LABEL_258;
          }

          if (v68 != 8 && v68 != 9)
          {
            goto LABEL_258;
          }

          goto LABEL_224;
        }

        v6 = v20;
        if (v68 > 2)
        {
          goto LABEL_228;
        }

        if (v68 == 1)
        {
          goto LABEL_224;
        }

        if (v68 != 2)
        {
          goto LABEL_258;
        }
      }

      goto LABEL_228;
    }

    if (v10)
    {
      if (v10 != 1)
      {
        goto LABEL_70;
      }

      v16 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v17 = swift_getEnumCaseMultiPayload();
      v311 = v5;
      if (v17 <= 4)
      {
        if (v17 > 2)
        {
LABEL_130:
          v94 = sub_21DBF563C();
          (*(*(v94 - 8) + 16))(a1, a2, v94);
          swift_storeEnumTagMultiPayload();
          goto LABEL_183;
        }

        if (v17 != 1)
        {
          if (v17 == 2)
          {
            goto LABEL_130;
          }

          goto LABEL_182;
        }

LABEL_134:
        v96 = *a2;
        *a1 = *a2;
        v97 = v96;
        swift_storeEnumTagMultiPayload();
        goto LABEL_183;
      }

      if (v17 > 7)
      {
        if (v17 == 8 || v17 == 9)
        {
          goto LABEL_134;
        }
      }

      else if (v17 == 5 || v17 == 6)
      {
        goto LABEL_130;
      }

LABEL_182:
      memcpy(a1, a2, *(*(v16 - 8) + 64));
LABEL_183:
      v106 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
      v107 = v106[5];
      v108 = a1 + v107;
      v109 = v316 + v107;
      v110 = *(v316 + v107 + 8);
      if (v110)
      {
        v305 = v6;
        *v108 = *v109;
        *(v108 + 1) = v110;
        v111 = *(v109 + 2);
        v112 = *(v109 + 3);
        v113 = *(v109 + 4);
        v114 = *(v109 + 5);
        v115 = *(v109 + 6);
        v116 = *(v109 + 7);
        v117 = v109[64];
        sub_21DBF8E0C();
        sub_21D2A7DB4(v111, v112, v113, v114, v115, v116, v117);
        *(v108 + 2) = v111;
        *(v108 + 3) = v112;
        *(v108 + 4) = v113;
        *(v108 + 5) = v114;
        *(v108 + 6) = v115;
        *(v108 + 7) = v116;
        v108[64] = v117;
        *(v108 + 65) = *(v109 + 65);
        v118 = v109[120];
        if (v118 == 255)
        {
          *(v108 + 72) = *(v109 + 72);
          *(v108 + 88) = *(v109 + 88);
          *(v108 + 104) = *(v109 + 104);
          v108[120] = v109[120];
        }

        else
        {
          v119 = *(v109 + 9);
          v120 = *(v109 + 10);
          v121 = *(v109 + 11);
          v122 = *(v109 + 12);
          v123 = *(v109 + 13);
          v124 = *(v109 + 14);
          v125 = v118 & 1;
          sub_21D0FB960(v119, v120, v121, v122, v123, v124, v118 & 1);
          *(v108 + 9) = v119;
          *(v108 + 10) = v120;
          *(v108 + 11) = v121;
          *(v108 + 12) = v122;
          *(v108 + 13) = v123;
          *(v108 + 14) = v124;
          v108[120] = v125;
        }

        v5 = v311;
        v6 = v305;
        v108[121] = v109[121];
        goto LABEL_203;
      }

LABEL_200:
      v163 = *(v109 + 5);
      *(v108 + 4) = *(v109 + 4);
      *(v108 + 5) = v163;
      *(v108 + 6) = *(v109 + 6);
      *(v108 + 106) = *(v109 + 106);
      v164 = *(v109 + 1);
      *v108 = *v109;
      *(v108 + 1) = v164;
      v165 = *(v109 + 3);
      *(v108 + 2) = *(v109 + 2);
      *(v108 + 3) = v165;
LABEL_203:
      *(a1 + v106[6]) = *(v316 + v106[6]);
      *(a1 + v106[7]) = *(v316 + v106[7]);
      *(a1 + v106[8]) = *(v316 + v106[8]);
      *(a1 + v106[9]) = *(v316 + v106[9]);
      *(a1 + v106[10]) = *(v316 + v106[10]);
      v166 = v106[11];
      v167 = *(v316 + v166);
      *(a1 + v166) = v167;
      v168 = v167;
      goto LABEL_260;
    }

    v38 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v39 = swift_getEnumCaseMultiPayload();
    v312 = v5;
    if (v39 <= 4)
    {
      if (v39 > 2)
      {
LABEL_138:
        v100 = sub_21DBF563C();
        (*(*(v100 - 8) + 16))(a1, a2, v100);
        swift_storeEnumTagMultiPayload();
        goto LABEL_197;
      }

      if (v39 != 1)
      {
        if (v39 == 2)
        {
          goto LABEL_138;
        }

        goto LABEL_196;
      }

LABEL_142:
      v102 = *a2;
      *a1 = *a2;
      v103 = v102;
      swift_storeEnumTagMultiPayload();
      goto LABEL_197;
    }

    if (v39 > 7)
    {
      if (v39 == 8 || v39 == 9)
      {
        goto LABEL_142;
      }
    }

    else if (v39 == 5 || v39 == 6)
    {
      goto LABEL_138;
    }

LABEL_196:
    memcpy(a1, a2, *(*(v38 - 8) + 64));
LABEL_197:
    v106 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
    v146 = v106[5];
    v108 = a1 + v146;
    v109 = v316 + v146;
    v147 = *(v316 + v146 + 8);
    if (v147)
    {
      v306 = v6;
      *v108 = *v109;
      *(v108 + 1) = v147;
      v148 = *(v109 + 2);
      v149 = *(v109 + 3);
      v150 = *(v109 + 4);
      v151 = *(v109 + 5);
      v152 = *(v109 + 6);
      v153 = *(v109 + 7);
      v154 = v109[64];
      sub_21DBF8E0C();
      sub_21D2A7DB4(v148, v149, v150, v151, v152, v153, v154);
      *(v108 + 2) = v148;
      *(v108 + 3) = v149;
      *(v108 + 4) = v150;
      *(v108 + 5) = v151;
      *(v108 + 6) = v152;
      *(v108 + 7) = v153;
      v108[64] = v154;
      *(v108 + 65) = *(v109 + 65);
      v155 = v109[120];
      if (v155 == 255)
      {
        *(v108 + 72) = *(v109 + 72);
        *(v108 + 88) = *(v109 + 88);
        *(v108 + 104) = *(v109 + 104);
        v108[120] = v109[120];
      }

      else
      {
        v156 = *(v109 + 9);
        v157 = *(v109 + 10);
        v158 = *(v109 + 11);
        v159 = *(v109 + 12);
        v160 = *(v109 + 13);
        v161 = *(v109 + 14);
        v162 = v155 & 1;
        sub_21D0FB960(v156, v157, v158, v159, v160, v161, v155 & 1);
        *(v108 + 9) = v156;
        *(v108 + 10) = v157;
        *(v108 + 11) = v158;
        *(v108 + 12) = v159;
        *(v108 + 13) = v160;
        *(v108 + 14) = v161;
        v108[120] = v162;
      }

      v5 = v312;
      v6 = v306;
      v108[121] = v109[121];
      goto LABEL_203;
    }

    goto LABEL_200;
  }

  if (v7)
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80);
    memcpy(a1, a2, *(*(v9 - 8) + 64));
    goto LABEL_267;
  }

  v13 = swift_getEnumCaseMultiPayload();
  if (v13 <= 3)
  {
    if (v13 > 1)
    {
      if (v13 == 2)
      {
        v27 = v6;
        v45 = *a2;
        *a1 = *a2;
        v29 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v30 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v31 = *(v30 - 8);
        v46 = *(v31 + 48);
        v47 = v45;
        if (v46(v316 + v29, 1, v30))
        {
          goto LABEL_65;
        }

        v71 = swift_getEnumCaseMultiPayload();
        if (v71 > 4)
        {
          v6 = v27;
          if (v71 <= 7)
          {
            if (v71 == 5 || v71 == 6)
            {
              goto LABEL_229;
            }

            goto LABEL_263;
          }

          if (v71 != 8 && v71 != 9)
          {
            goto LABEL_263;
          }

          goto LABEL_227;
        }

        v6 = v27;
        if (v71 > 2)
        {
          goto LABEL_229;
        }

        if (v71 == 1)
        {
          goto LABEL_227;
        }

        if (v71 != 2)
        {
          goto LABEL_263;
        }
      }

      else
      {
        v27 = v6;
        v28 = *a2;
        *a1 = *a2;
        v29 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v30 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v31 = *(v30 - 8);
        v32 = *(v31 + 48);
        v33 = v28;
        if (v32(v316 + v29, 1, v30))
        {
          goto LABEL_65;
        }

        v69 = swift_getEnumCaseMultiPayload();
        if (v69 > 4)
        {
          v6 = v27;
          if (v69 <= 7)
          {
            if (v69 == 5 || v69 == 6)
            {
              goto LABEL_229;
            }

            goto LABEL_263;
          }

          if (v69 != 8 && v69 != 9)
          {
            goto LABEL_263;
          }

          goto LABEL_227;
        }

        v6 = v27;
        if (v69 > 2)
        {
          goto LABEL_229;
        }

        if (v69 == 1)
        {
          goto LABEL_227;
        }

        if (v69 != 2)
        {
          goto LABEL_263;
        }
      }

      goto LABEL_229;
    }

    if (v13)
    {
      if (v13 != 1)
      {
        goto LABEL_71;
      }

      v18 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v19 = swift_getEnumCaseMultiPayload();
      v303 = v6;
      if (v19 <= 4)
      {
        if (v19 > 2)
        {
LABEL_131:
          v95 = sub_21DBF563C();
          (*(*(v95 - 8) + 16))(a1, a2, v95);
          swift_storeEnumTagMultiPayload();
          goto LABEL_190;
        }

        if (v19 != 1)
        {
          if (v19 == 2)
          {
            goto LABEL_131;
          }

          goto LABEL_189;
        }

LABEL_137:
        v98 = *a2;
        *a1 = *a2;
        v99 = v98;
        swift_storeEnumTagMultiPayload();
        goto LABEL_190;
      }

      if (v19 > 7)
      {
        if (v19 == 8 || v19 == 9)
        {
          goto LABEL_137;
        }
      }

      else if (v19 == 5 || v19 == 6)
      {
        goto LABEL_131;
      }

LABEL_189:
      memcpy(a1, a2, *(*(v18 - 8) + 64));
LABEL_190:
      v126 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
      v127 = v126[5];
      v128 = a1 + v127;
      v129 = v316 + v127;
      v130 = *(v316 + v127 + 8);
      if (v130)
      {
        v314 = v5;
        *v128 = *v129;
        *(v128 + 1) = v130;
        v131 = *(v129 + 2);
        v132 = *(v129 + 3);
        v133 = *(v129 + 4);
        v134 = *(v129 + 5);
        v135 = *(v129 + 6);
        v136 = *(v129 + 7);
        v137 = v129[64];
        sub_21DBF8E0C();
        sub_21D2A7DB4(v131, v132, v133, v134, v135, v136, v137);
        *(v128 + 2) = v131;
        *(v128 + 3) = v132;
        *(v128 + 4) = v133;
        *(v128 + 5) = v134;
        *(v128 + 6) = v135;
        *(v128 + 7) = v136;
        v128[64] = v137;
        *(v128 + 65) = *(v129 + 65);
        v138 = v129[120];
        if (v138 == 255)
        {
          *(v128 + 72) = *(v129 + 72);
          *(v128 + 88) = *(v129 + 88);
          *(v128 + 104) = *(v129 + 104);
          v128[120] = v129[120];
        }

        else
        {
          v139 = *(v129 + 9);
          v140 = *(v129 + 10);
          v141 = *(v129 + 11);
          v142 = *(v129 + 12);
          v143 = *(v129 + 13);
          v144 = *(v129 + 14);
          v145 = v138 & 1;
          sub_21D0FB960(v139, v140, v141, v142, v143, v144, v138 & 1);
          *(v128 + 9) = v139;
          *(v128 + 10) = v140;
          *(v128 + 11) = v141;
          *(v128 + 12) = v142;
          *(v128 + 13) = v143;
          *(v128 + 14) = v144;
          v128[120] = v145;
        }

        v5 = v314;
        v6 = v303;
        v128[121] = v129[121];
        goto LABEL_211;
      }

LABEL_208:
      v186 = *(v129 + 5);
      *(v128 + 4) = *(v129 + 4);
      *(v128 + 5) = v186;
      *(v128 + 6) = *(v129 + 6);
      *(v128 + 106) = *(v129 + 106);
      v187 = *(v129 + 1);
      *v128 = *v129;
      *(v128 + 1) = v187;
      v188 = *(v129 + 3);
      *(v128 + 2) = *(v129 + 2);
      *(v128 + 3) = v188;
LABEL_211:
      *(a1 + v126[6]) = *(v316 + v126[6]);
      *(a1 + v126[7]) = *(v316 + v126[7]);
      *(a1 + v126[8]) = *(v316 + v126[8]);
      *(a1 + v126[9]) = *(v316 + v126[9]);
      *(a1 + v126[10]) = *(v316 + v126[10]);
      v189 = v126[11];
      v190 = *(v316 + v189);
      *(a1 + v189) = v190;
      v191 = v190;
      goto LABEL_265;
    }

    v40 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v41 = swift_getEnumCaseMultiPayload();
    v313 = v5;
    v304 = v6;
    if (v41 <= 4)
    {
      if (v41 > 2)
      {
LABEL_139:
        v101 = sub_21DBF563C();
        (*(*(v101 - 8) + 16))(a1, a2, v101);
        swift_storeEnumTagMultiPayload();
        goto LABEL_205;
      }

      if (v41 != 1)
      {
        if (v41 == 2)
        {
          goto LABEL_139;
        }

        goto LABEL_204;
      }

LABEL_145:
      v104 = *a2;
      *a1 = *a2;
      v105 = v104;
      swift_storeEnumTagMultiPayload();
      goto LABEL_205;
    }

    if (v41 > 7)
    {
      if (v41 == 8 || v41 == 9)
      {
        goto LABEL_145;
      }
    }

    else if (v41 == 5 || v41 == 6)
    {
      goto LABEL_139;
    }

LABEL_204:
    memcpy(a1, a2, *(*(v40 - 8) + 64));
LABEL_205:
    v126 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
    v169 = v126[5];
    v128 = a1 + v169;
    v129 = v316 + v169;
    v170 = *(v316 + v169 + 8);
    if (v170)
    {
      *v128 = *v129;
      *(v128 + 1) = v170;
      v171 = *(v129 + 2);
      v172 = *(v129 + 3);
      v174 = *(v129 + 4);
      v173 = *(v129 + 5);
      v175 = *(v129 + 6);
      v176 = *(v129 + 7);
      v177 = v129[64];
      sub_21DBF8E0C();
      sub_21D2A7DB4(v171, v172, v174, v173, v175, v176, v177);
      *(v128 + 2) = v171;
      *(v128 + 3) = v172;
      *(v128 + 4) = v174;
      *(v128 + 5) = v173;
      *(v128 + 6) = v175;
      *(v128 + 7) = v176;
      v128[64] = v177;
      *(v128 + 65) = *(v129 + 65);
      v178 = v129[120];
      if (v178 == 255)
      {
        *(v128 + 72) = *(v129 + 72);
        *(v128 + 88) = *(v129 + 88);
        *(v128 + 104) = *(v129 + 104);
        v128[120] = v129[120];
      }

      else
      {
        v179 = *(v129 + 9);
        v180 = *(v129 + 10);
        v181 = *(v129 + 11);
        v182 = *(v129 + 12);
        v183 = *(v129 + 13);
        v184 = *(v129 + 14);
        v185 = v178 & 1;
        sub_21D0FB960(v179, v180, v181, v182, v183, v184, v178 & 1);
        *(v128 + 9) = v179;
        *(v128 + 10) = v180;
        *(v128 + 11) = v181;
        *(v128 + 12) = v182;
        *(v128 + 13) = v183;
        *(v128 + 14) = v184;
        v128[120] = v185;
      }

      v5 = v313;
      v6 = v304;
      v128[121] = v129[121];
      goto LABEL_211;
    }

    goto LABEL_208;
  }

  if (v13 <= 5)
  {
    if (v13 != 4)
    {
      *a1 = *a2;
      *(a1 + 8) = a2[8];
      *(a1 + 9) = *(a2 + 9);
      v36 = *(a2 + 2);
      a1[2] = v36;
      v37 = v36;
      goto LABEL_265;
    }

    v27 = v6;
    v58 = *a2;
    *a1 = *a2;
    v29 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v30 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v31 = *(v30 - 8);
    v59 = *(v31 + 48);
    v60 = v58;
    if (v59(v316 + v29, 1, v30))
    {
LABEL_65:
      v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
      memcpy(a1 + v29, v316 + v29, *(*(v61 - 8) + 64));
      v6 = v27;
      goto LABEL_265;
    }

    v89 = swift_getEnumCaseMultiPayload();
    if (v89 > 4)
    {
      v6 = v27;
      if (v89 <= 7)
      {
        if (v89 == 5 || v89 == 6)
        {
          goto LABEL_229;
        }

        goto LABEL_263;
      }

      if (v89 != 8 && v89 != 9)
      {
        goto LABEL_263;
      }

LABEL_227:
      v194 = *(v316 + v29);
      *(a1 + v29) = v194;
      v195 = v194;
      swift_storeEnumTagMultiPayload();
LABEL_264:
      (*(v31 + 56))(a1 + v29, 0, 1, v30);
      goto LABEL_265;
    }

    v6 = v27;
    if (v89 <= 2)
    {
      if (v89 != 1)
      {
        if (v89 == 2)
        {
          goto LABEL_229;
        }

LABEL_263:
        memcpy(a1 + v29, v316 + v29, *(v31 + 64));
        goto LABEL_264;
      }

      goto LABEL_227;
    }

LABEL_229:
    v197 = sub_21DBF563C();
    (*(*(v197 - 8) + 16))(a1 + v29, v316 + v29, v197);
    swift_storeEnumTagMultiPayload();
    goto LABEL_264;
  }

  switch(v13)
  {
    case 6:
      v51 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
      v52 = *(v51 - 8);
      if ((*(v52 + 48))(v316, 1, v51))
      {
        v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440);
        memcpy(a1, v316, *(*(v53 - 8) + 64));
      }

      else
      {
        *a1 = *v316;
        v80 = *(v51 + 20);
        v81 = sub_21DBF6C1C();
        v302 = *(*(v81 - 8) + 16);
        sub_21DBF8E0C();
        v302(a1 + v80, v316 + v80, v81);
        (*(v52 + 56))(a1, 0, 1, v51);
      }

      v82 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
      v83 = (a1 + v82);
      v84 = (v316 + v82);
      v85 = v84[1];
      if (v85)
      {
        *v83 = *v84;
        v83[1] = v85;
        v86 = v84[2];
        v83[2] = v86;
        sub_21DBF8E0C();
        v87 = v86;
      }

      else
      {
        *v83 = *v84;
        v83[2] = v84[2];
      }

      goto LABEL_265;
    case 7:
      v65 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
      v66 = *(v65 - 8);
      if ((*(v66 + 48))(v316, 1, v65))
      {
        v67 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
        memcpy(a1, v316, *(*(v67 - 8) + 64));
      }

      else
      {
        v92 = sub_21DBF563C();
        (*(*(v92 - 8) + 16))(a1, v316, v92);
        *(a1 + *(v65 + 20)) = *(v316 + *(v65 + 20));
        (*(v66 + 56))(a1, 0, 1, v65);
      }

      v93 = *(type metadata accessor for TTRTemplatePublicLinkData(0) + 20);
      *(a1 + v93) = *(v316 + v93);
      goto LABEL_265;
    case 8:
      *a1 = *a2;
      v14 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
      v15 = sub_21DBF8D7C();
      (*(*(v15 - 8) + 16))(a1 + v14, v316 + v14, v15);
LABEL_265:
      swift_storeEnumTagMultiPayload();
      goto LABEL_266;
  }

LABEL_71:
  memcpy(a1, a2, *(v6 + 64));
LABEL_266:
  (*(v6 + 56))(a1, 0, 1, v5);
LABEL_267:
  swift_storeEnumTagMultiPayload();
  v199 = *(a3 + 20);
  v200 = (a1 + v199);
  v201 = (v316 + v199);
  v202 = swift_getEnumCaseMultiPayload();
  if (v202 <= 3)
  {
    if (v202 > 1)
    {
      if (v202 == 2)
      {
        v218 = *v201;
        *v200 = *v201;
        v208 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v209 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v210 = *(v209 - 8);
        v211 = v200;
        v219 = *(v210 + 48);
        v220 = v218;
        if (v219(v201 + v208, 1, v209))
        {
          goto LABEL_292;
        }

        v232 = swift_getEnumCaseMultiPayload();
        if (v232 > 4)
        {
          if (v232 <= 7)
          {
            if (v232 == 5 || v232 == 6)
            {
              goto LABEL_378;
            }

            goto LABEL_391;
          }

          if (v232 != 8 && v232 != 9)
          {
            goto LABEL_391;
          }

          goto LABEL_377;
        }

        if (v232 > 2)
        {
          goto LABEL_378;
        }

        if (v232 == 1)
        {
          goto LABEL_377;
        }

        if (v232 != 2)
        {
          goto LABEL_391;
        }
      }

      else
      {
        v207 = *v201;
        *v200 = *v201;
        v208 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v209 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v210 = *(v209 - 8);
        v211 = v200;
        v212 = *(v210 + 48);
        v213 = v207;
        if (v212(v201 + v208, 1, v209))
        {
          goto LABEL_292;
        }

        v231 = swift_getEnumCaseMultiPayload();
        if (v231 > 4)
        {
          if (v231 <= 7)
          {
            if (v231 == 5 || v231 == 6)
            {
              goto LABEL_378;
            }

            goto LABEL_391;
          }

          if (v231 != 8 && v231 != 9)
          {
            goto LABEL_391;
          }

          goto LABEL_377;
        }

        if (v231 > 2)
        {
          goto LABEL_378;
        }

        if (v231 == 1)
        {
          goto LABEL_377;
        }

        if (v231 != 2)
        {
          goto LABEL_391;
        }
      }

      goto LABEL_378;
    }

    if (v202)
    {
      if (v202 != 1)
      {
        goto LABEL_299;
      }

      v205 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v206 = swift_getEnumCaseMultiPayload();
      if (v206 <= 4)
      {
        if (v206 > 2)
        {
LABEL_329:
          v248 = sub_21DBF563C();
          (*(*(v248 - 8) + 16))(v200, v201, v248);
          swift_storeEnumTagMultiPayload();
          goto LABEL_356;
        }

        if (v206 != 1)
        {
          if (v206 == 2)
          {
            goto LABEL_329;
          }

          goto LABEL_355;
        }

LABEL_332:
        v249 = *v201;
        *v200 = *v201;
        v250 = v249;
        swift_storeEnumTagMultiPayload();
        goto LABEL_356;
      }

      if (v206 > 7)
      {
        if (v206 == 8 || v206 == 9)
        {
          goto LABEL_332;
        }
      }

      else if (v206 == 5 || v206 == 6)
      {
        goto LABEL_329;
      }

LABEL_355:
      memcpy(v200, v201, *(*(v205 - 8) + 64));
LABEL_356:
      v254 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
      v255 = v254[5];
      v256 = v200 + v255;
      v257 = v201 + v255;
      v258 = *(v201 + v255 + 8);
      if (v258)
      {
        v307 = v201;
        v309 = v200;
        *v256 = *v257;
        *(v256 + 1) = v258;
        v259 = *(v257 + 2);
        v260 = *(v257 + 3);
        v261 = *(v257 + 4);
        v262 = *(v257 + 5);
        v263 = *(v257 + 6);
        v264 = *(v257 + 7);
        v265 = v257[64];
        sub_21DBF8E0C();
        sub_21D2A7DB4(v259, v260, v261, v262, v263, v264, v265);
        *(v256 + 2) = v259;
        *(v256 + 3) = v260;
        *(v256 + 4) = v261;
        *(v256 + 5) = v262;
        *(v256 + 6) = v263;
        *(v256 + 7) = v264;
        v256[64] = v265;
        *(v256 + 65) = *(v257 + 65);
        v266 = v257[120];
        if (v266 == 255)
        {
          *(v256 + 72) = *(v257 + 72);
          *(v256 + 88) = *(v257 + 88);
          *(v256 + 104) = *(v257 + 104);
          v256[120] = v257[120];
        }

        else
        {
          v267 = *(v257 + 9);
          v268 = *(v257 + 10);
          v269 = *(v257 + 11);
          v270 = *(v257 + 12);
          v271 = *(v257 + 13);
          v272 = *(v257 + 14);
          v273 = v266 & 1;
          sub_21D0FB960(v267, v268, v269, v270, v271, v272, v266 & 1);
          *(v256 + 9) = v267;
          *(v256 + 10) = v268;
          *(v256 + 11) = v269;
          *(v256 + 12) = v270;
          *(v256 + 13) = v271;
          *(v256 + 14) = v272;
          v256[120] = v273;
        }

        v256[121] = v257[121];
        v201 = v307;
        v200 = v309;
        goto LABEL_362;
      }

LABEL_359:
      v274 = *(v257 + 5);
      *(v256 + 4) = *(v257 + 4);
      *(v256 + 5) = v274;
      *(v256 + 6) = *(v257 + 6);
      *(v256 + 106) = *(v257 + 106);
      v275 = *(v257 + 1);
      *v256 = *v257;
      *(v256 + 1) = v275;
      v276 = *(v257 + 3);
      *(v256 + 2) = *(v257 + 2);
      *(v256 + 3) = v276;
LABEL_362:
      *(v200 + v254[6]) = *(v201 + v254[6]);
      *(v200 + v254[7]) = *(v201 + v254[7]);
      *(v200 + v254[8]) = *(v201 + v254[8]);
      *(v200 + v254[9]) = *(v201 + v254[9]);
      *(v200 + v254[10]) = *(v201 + v254[10]);
      v277 = v254[11];
      v278 = *(v201 + v277);
      *(v200 + v277) = v278;
      v279 = v278;
      goto LABEL_393;
    }

    v216 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v217 = swift_getEnumCaseMultiPayload();
    if (v217 <= 4)
    {
      if (v217 > 2)
      {
LABEL_333:
        v251 = sub_21DBF563C();
        (*(*(v251 - 8) + 16))(v200, v201, v251);
        swift_storeEnumTagMultiPayload();
        goto LABEL_364;
      }

      if (v217 != 1)
      {
        if (v217 == 2)
        {
          goto LABEL_333;
        }

        goto LABEL_363;
      }

LABEL_336:
      v252 = *v201;
      *v200 = *v201;
      v253 = v252;
      swift_storeEnumTagMultiPayload();
      goto LABEL_364;
    }

    if (v217 > 7)
    {
      if (v217 == 8 || v217 == 9)
      {
        goto LABEL_336;
      }
    }

    else if (v217 == 5 || v217 == 6)
    {
      goto LABEL_333;
    }

LABEL_363:
    memcpy(v200, v201, *(*(v216 - 8) + 64));
LABEL_364:
    v254 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
    v280 = v254[5];
    v256 = v200 + v280;
    v257 = v201 + v280;
    v281 = *(v201 + v280 + 8);
    if (v281)
    {
      v308 = v201;
      v310 = v200;
      *v256 = *v257;
      *(v256 + 1) = v281;
      v282 = *(v257 + 2);
      v283 = *(v257 + 3);
      v284 = *(v257 + 4);
      v285 = *(v257 + 5);
      v287 = *(v257 + 6);
      v286 = *(v257 + 7);
      v288 = v257[64];
      sub_21DBF8E0C();
      sub_21D2A7DB4(v282, v283, v284, v285, v287, v286, v288);
      *(v256 + 2) = v282;
      *(v256 + 3) = v283;
      *(v256 + 4) = v284;
      *(v256 + 5) = v285;
      *(v256 + 6) = v287;
      *(v256 + 7) = v286;
      v256[64] = v288;
      *(v256 + 65) = *(v257 + 65);
      v289 = v257[120];
      if (v289 == 255)
      {
        *(v256 + 72) = *(v257 + 72);
        *(v256 + 88) = *(v257 + 88);
        *(v256 + 104) = *(v257 + 104);
        v256[120] = v257[120];
      }

      else
      {
        v290 = *(v257 + 9);
        v291 = *(v257 + 10);
        v292 = *(v257 + 11);
        v293 = *(v257 + 12);
        v294 = *(v257 + 13);
        v295 = *(v257 + 14);
        v296 = v289 & 1;
        sub_21D0FB960(v290, v291, v292, v293, v294, v295, v289 & 1);
        *(v256 + 9) = v290;
        *(v256 + 10) = v291;
        *(v256 + 11) = v292;
        *(v256 + 12) = v293;
        *(v256 + 13) = v294;
        *(v256 + 14) = v295;
        v256[120] = v296;
      }

      v256[121] = v257[121];
      v201 = v308;
      v200 = v310;
      goto LABEL_362;
    }

    goto LABEL_359;
  }

  if (v202 <= 5)
  {
    if (v202 != 4)
    {
      *v200 = *v201;
      *(v200 + 8) = *(v201 + 8);
      *(v200 + 9) = *(v201 + 9);
      v214 = v201[2];
      v200[2] = v214;
      v215 = v214;
      goto LABEL_393;
    }

    v225 = *v201;
    *v200 = *v201;
    v208 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v209 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v210 = *(v209 - 8);
    v211 = v200;
    v226 = *(v210 + 48);
    v227 = v225;
    if (v226(v201 + v208, 1, v209))
    {
LABEL_292:
      v221 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
      memcpy(v211 + v208, v201 + v208, *(*(v221 - 8) + 64));
      goto LABEL_393;
    }

    v245 = swift_getEnumCaseMultiPayload();
    if (v245 > 4)
    {
      if (v245 <= 7)
      {
        if (v245 == 5 || v245 == 6)
        {
          goto LABEL_378;
        }

        goto LABEL_391;
      }

      if (v245 != 8 && v245 != 9)
      {
        goto LABEL_391;
      }

LABEL_377:
      v297 = *(v201 + v208);
      *(v200 + v208) = v297;
      v298 = v297;
      swift_storeEnumTagMultiPayload();
LABEL_392:
      (*(v210 + 56))(v200 + v208, 0, 1, v209);
      goto LABEL_393;
    }

    if (v245 <= 2)
    {
      if (v245 != 1)
      {
        if (v245 == 2)
        {
          goto LABEL_378;
        }

LABEL_391:
        memcpy(v200 + v208, v201 + v208, *(v210 + 64));
        goto LABEL_392;
      }

      goto LABEL_377;
    }

LABEL_378:
    v299 = sub_21DBF563C();
    (*(*(v299 - 8) + 16))(v200 + v208, v201 + v208, v299);
    swift_storeEnumTagMultiPayload();
    goto LABEL_392;
  }

  switch(v202)
  {
    case 6:
      v222 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
      v223 = *(v222 - 8);
      if ((*(v223 + 48))(v201, 1, v222))
      {
        v224 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440);
        memcpy(v200, v201, *(*(v224 - 8) + 64));
      }

      else
      {
        *v200 = *v201;
        v233 = v200;
        v234 = *(v222 + 20);
        v235 = sub_21DBF6C1C();
        v236 = *(*(v235 - 8) + 16);
        sub_21DBF8E0C();
        v237 = v233 + v234;
        v238 = v201 + v234;
        v200 = v233;
        v236(v237, v238, v235);
        (*(v223 + 56))(v233, 0, 1, v222);
      }

      v239 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
      v240 = (v200 + v239);
      v241 = (v201 + v239);
      v242 = v241[1];
      if (v242)
      {
        *v240 = *v241;
        v240[1] = v242;
        v243 = v241[2];
        v240[2] = v243;
        sub_21DBF8E0C();
        v244 = v243;
      }

      else
      {
        *v240 = *v241;
        v240[2] = v241[2];
      }

      goto LABEL_393;
    case 7:
      v228 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
      v229 = *(v228 - 8);
      if ((*(v229 + 48))(v201, 1, v228))
      {
        v230 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
        memcpy(v200, v201, *(*(v230 - 8) + 64));
      }

      else
      {
        v246 = sub_21DBF563C();
        (*(*(v246 - 8) + 16))(v200, v201, v246);
        *(v200 + *(v228 + 20)) = *(v201 + *(v228 + 20));
        (*(v229 + 56))(v200, 0, 1, v228);
      }

      v247 = type metadata accessor for TTRTemplatePublicLinkData(0);
      *(v200 + *(v247 + 20)) = *(v201 + *(v247 + 20));
      goto LABEL_393;
    case 8:
      *v200 = *v201;
      v203 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
      v204 = sub_21DBF8D7C();
      (*(*(v204 - 8) + 16))(v200 + v203, v201 + v203, v204);
LABEL_393:
      swift_storeEnumTagMultiPayload();
      goto LABEL_394;
  }

LABEL_299:
  memcpy(v200, v201, *(v6 + 64));
LABEL_394:
  *(a1 + *(a3 + 24)) = *(v316 + *(a3 + 24));

  return a1;
}