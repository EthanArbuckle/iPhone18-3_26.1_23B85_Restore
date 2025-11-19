uint64_t AccountProvider.init(serviceController:multiuserConnection:accountStoreProvider:)(void *a1, uint64_t a2, uint64_t *a3)
{
  v7 = a3[3];
  v8 = a3[4];
  v9 = __swift_mutable_project_boxed_opaque_existential_1(a3, v7);
  v10 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12);
  v14 = sub_266339C5C(a1, a2, v12, v3, v7, v8);

  __swift_destroy_boxed_opaque_existential_1Tm(a3);
  return v14;
}

uint64_t sub_266333390()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072C18, &qword_2664E62E0);
  v0 = swift_allocObject();
  *(v0 + 16) = sub_266385DA4(MEMORY[0x277D84F90]);
  *(v0 + 32) = 0xD00000000000001DLL;
  *(v0 + 40) = 0x80000002664F5000;
  if (qword_280F91468 != -1)
  {
    swift_once();
  }

  v1 = qword_280F91470;
  v3[3] = type metadata accessor for SiriKitTaskLoggingProvider();
  v3[4] = &protocol witness table for SiriKitTaskLoggingProvider;
  v3[0] = v1;
  type metadata accessor for PThreadMutex();
  swift_allocObject();

  result = PThreadMutex.init(name:abortOnFail:analyticsService:)(0xD00000000000001DLL, 0x80000002664F5000, 1, v3);
  *(v0 + 24) = result;
  off_280072BE8 = v0;
  return result;
}

void sub_2663334A4(void (*a1)(id *))
{
  v2 = sub_2664DFE38();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v2, qword_280F914F0);
  swift_beginAccess();
  (*(v3 + 16))(v6, v7, v2);
  v8 = sub_2664DFE18();
  v9 = sub_2664E06C8();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_26629C000, v8, v9, "AccountProvider#defaultAccount Using active account with configured private listening for single user only device", v10, 2u);
    MEMORY[0x266784AD0](v10, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  v12 = [objc_opt_self() activeAccount];
  v13 = 0;
  a1(&v12);
  sub_26633C3AC(v12, v13);
}

void sub_266333698(void *a1, void *a2, void *a3, void *a4, void (*a5)(id *), uint64_t a6)
{
  v12 = [objc_opt_self() currentDeviceInfo];
  v13 = [v12 supportsMultipleITunesAccounts];

  if (v13)
  {

    sub_26633393C(a1, a2, a3, a4, a5, a6);
  }

  else
  {
    if (qword_280071AD0 != -1)
    {
      swift_once();
    }

    v14[0] = 0x755F656C676E6973;
    v14[1] = 0xEB00000000726573;
    (*(*off_280072BE8 + 160))(v14, sub_266333820, 0, 0, 1, a5, a6);
  }
}

uint64_t sub_266333824(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;

  sub_26633A5B4(a1, a2, 1, sub_266339DC8, v8);
}

void sub_2663338C0(uint64_t a1, void (*a2)(void **))
{
  v3 = *a1;
  if (*a1 == 1)
  {
    v4 = 0;
    v3 = 0;
  }

  else
  {
    v4 = *(a1 + 8);
    v5 = v4;
    v6 = v3;
  }

  v9 = v3;
  v10 = v4;
  a2(&v9);
  v7 = v9;
  v8 = v10;

  sub_26633C3AC(v7, v8);
}

void sub_26633393C(void *a1, void *a2, void *a3, void *a4, void (*a5)(id *), uint64_t a6)
{
  v84 = a1;
  v87 = a5;
  v88 = a6;
  v9 = sub_2664DFE38();
  v10 = *(v9 - 8);
  v11 = v10[8];
  v12 = MEMORY[0x28223BE20](v9);
  v79 = &v78 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v80 = &v78 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v82 = &v78 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v89 = &v78 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v78 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v78 - v23;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v25 = __swift_project_value_buffer(v9, qword_280F914F0);
  swift_beginAccess();
  v26 = v10[2];
  v93 = v10 + 2;
  v94 = v25;
  v92 = v26;
  v26(v24, v25, v9);
  v27 = sub_2664DFE18();
  v28 = sub_2664E06E8();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_26629C000, v27, v28, "AccountProvider#multiuserAccount On multi user device, computing account to use", v29, 2u);
    MEMORY[0x266784AD0](v29, -1, -1);
  }

  v30 = v10[1];
  v91 = v10 + 1;
  v30(v24, v9);
  v31 = sub_266339DD0(0xD000000000000017, 0x80000002664F4FA0);
  if (v32)
  {
    v33 = v32;
    v34 = a2;
    a3 = v31;
    v90 = v32;
  }

  else
  {
    v34 = a2;

    v90 = a4;
    v33 = a4;
  }

  v92(v22, v94, v9);

  v35 = sub_2664DFE18();
  v36 = sub_2664E06E8();

  v37 = os_log_type_enabled(v35, v36);
  v85 = a3;
  v86 = v30;
  v81 = v33;
  if (v37)
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v95 = v39;
    v96 = a3;
    *v38 = 136315138;
    v97 = v90;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800734A0, &qword_2664E3B40);
    v40 = sub_2664E0318();
    v42 = v34;
    v43 = sub_2662A320C(v40, v41, &v95);

    *(v38 + 4) = v43;
    v34 = v42;
    _os_log_impl(&dword_26629C000, v35, v36, "AccountProvider#multiuserAccount librarySharedUserID: %s", v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v39);
    MEMORY[0x266784AD0](v39, -1, -1);
    v44 = v38;
    v30 = v86;
    MEMORY[0x266784AD0](v44, -1, -1);
  }

  v30(v22, v9);
  v45 = v84;
  v46 = v89;
  v47 = sub_266339DD0(0xD000000000000019, 0x80000002664F4FC0);
  if (v48)
  {
    v45 = v47;
    v34 = v48;
  }

  else
  {
  }

  v92(v46, v94, v9);

  v49 = sub_2664DFE18();
  v50 = sub_2664E06E8();

  v51 = os_log_type_enabled(v49, v50);
  v84 = v34;
  if (v51)
  {
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v95 = v53;
    v96 = v45;
    *v52 = 136315138;
    v97 = v34;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800734A0, &qword_2664E3B40);
    v54 = sub_2664E0318();
    v56 = sub_2662A320C(v54, v55, &v95);

    *(v52 + 4) = v56;
    _os_log_impl(&dword_26629C000, v49, v50, "AccountProvider#multiuserAccount requesterSharedUserID: %s", v52, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v53);
    MEMORY[0x266784AD0](v53, -1, -1);
    v57 = v52;
    v30 = v86;
    MEMORY[0x266784AD0](v57, -1, -1);

    v30(v89, v9);
  }

  else
  {

    v30(v46, v9);
  }

  v58 = v85;
  if (v90)
  {
    v59 = v82;
    v92(v82, v94, v9);
    v60 = sub_2664DFE18();
    v61 = sub_2664E06E8();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      *v62 = 0;
      _os_log_impl(&dword_26629C000, v60, v61, "AccountProvider#multiuserAccount we have libraryID, transforming to identity...", v62, 2u);
      MEMORY[0x266784AD0](v62, -1, -1);
    }

    v30(v59, v9);
    v63 = swift_allocObject();
    v63[2] = v87;
    v63[3] = v88;
    v63[4] = v45;
    v64 = v83;
    v63[5] = v84;
    v63[6] = v64;

    sub_26633A5B4(v58, v81, 1, sub_26633C4A8, v63);
  }

  else if (v84)
  {
    v65 = [objc_opt_self() activeAccount];
    v92(v80, v94, v9);
    v66 = v65;
    v67 = sub_2664DFE18();
    v68 = sub_2664E06E8();

    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      *v69 = 138477827;
      *(v69 + 4) = v66;
      *v70 = v66;
      v71 = v66;

      _os_log_impl(&dword_26629C000, v67, v68, "AccountProvider#multiuserAccount using %{private}@ in forced guest mode with forced private listening: true", v69, 0xCu);
      sub_2662A9238(v70, &qword_2800734B0, &unk_2664E3670);
      MEMORY[0x266784AD0](v70, -1, -1);
      MEMORY[0x266784AD0](v69, -1, -1);
    }

    else
    {
    }

    v30(v80, v9);
    sub_2662C1744(0, &qword_280F8F550, 0x277CCABB0);
    v76 = v66;
    v77 = sub_2664E08E8();
    v96 = v66;
    v97 = v77;
    v87(&v96);

    sub_26633C3AC(v96, v97);
  }

  else
  {
    v72 = v79;
    v92(v79, v94, v9);
    v73 = sub_2664DFE18();
    v74 = sub_2664E06E8();
    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      *v75 = 0;
      _os_log_impl(&dword_26629C000, v73, v74, "AccountProvider#multiuserAccount using active account with configured private listening", v75, 2u);
      MEMORY[0x266784AD0](v75, -1, -1);
    }

    v30(v72, v9);
    sub_2663334A4(v87);
  }
}

void sub_266334288(void **a1, void (*a2)(void **), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v45 = a2;
  v9 = sub_2664DFE38();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v45 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v45 - v18;
  v20 = *a1;
  if (*a1 < 2)
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v21 = __swift_project_value_buffer(v9, qword_280F914F0);
    swift_beginAccess();
    (*(v10 + 16))(v19, v21, v9);
    v22 = sub_2664DFE18();
    v23 = sub_2664E06D8();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_26629C000, v22, v23, "AccountProvider#multiuserAccount LibraryUserIdenity was nil, returning nil", v24, 2u);
      MEMORY[0x266784AD0](v24, -1, -1);
    }

    (*(v10 + 8))(v19, v9);
    v46 = 0;
    v47 = 0;
    v45(&v46);
LABEL_18:
    sub_26633C3AC(v46, v47);
    return;
  }

  if (!a5)
  {
    v34 = qword_280F914E8;
    v35 = v20;
    if (v34 != -1)
    {
      swift_once();
    }

    v36 = __swift_project_value_buffer(v9, qword_280F914F0);
    swift_beginAccess();
    (*(v10 + 16))(v14, v36, v9);
    v37 = v35;
    v38 = sub_2664DFE18();
    v39 = sub_2664E06E8();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      *v40 = 138477827;
      *(v40 + 4) = v37;
      *v41 = v20;
      v42 = v37;
      _os_log_impl(&dword_26629C000, v38, v39, "AccountProvider#multiuserAccount No requesterSharedUserID. Using %{private}@ in guest mode with forced private listening: true", v40, 0xCu);
      sub_2662A9238(v41, &qword_2800734B0, &unk_2664E3670);
      MEMORY[0x266784AD0](v41, -1, -1);
      MEMORY[0x266784AD0](v40, -1, -1);
    }

    (*(v10 + 8))(v14, v9);
    sub_2662C1744(0, &qword_280F8F550, 0x277CCABB0);
    v43 = v37;
    v44 = sub_2664E08E8();
    v46 = v20;
    v47 = v44;
    v45(&v46);

    goto LABEL_18;
  }

  v25 = qword_280F914E8;
  v26 = v20;
  if (v25 != -1)
  {
    swift_once();
  }

  v27 = __swift_project_value_buffer(v9, qword_280F914F0);
  swift_beginAccess();
  (*(v10 + 16))(v17, v27, v9);
  v28 = sub_2664DFE18();
  v29 = sub_2664E06E8();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&dword_26629C000, v28, v29, "AccountProvider#multiuserAccount we have valid libraryID, transforming requesterID to identity...", v30, 2u);
    MEMORY[0x266784AD0](v30, -1, -1);
  }

  (*(v10 + 8))(v17, v9);
  v31 = swift_allocObject();
  v32 = v45;
  v31[2] = v26;
  v31[3] = v32;
  v31[4] = a3;
  v33 = v26;

  sub_26633A5B4(a4, a5, 0, sub_26633C4B8, v31);
}

void sub_2663347D0(uint64_t a1, void *a2, void (*a3)(void **), uint64_t a4)
{
  v37[1] = a4;
  v38 = a3;
  v6 = sub_2664DFE38();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v37 - v12;
  v14 = *a1;
  if (*a1 == 1)
  {
    v15 = 0;
    v16 = 0;
  }

  else
  {
    v15 = *(a1 + 8);
    v17 = v15;
    v16 = v14;
  }

  v18 = [v16 DSID];
  v19 = [a2 DSID];
  v20 = v19;
  if (!v18)
  {
    if (!v19)
    {
      goto LABEL_9;
    }

LABEL_15:

LABEL_16:
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v28 = __swift_project_value_buffer(v6, qword_280F914F0);
    swift_beginAccess();
    (*(v7 + 16))(v11, v28, v6);
    v29 = a2;
    v30 = sub_2664DFE18();
    v31 = sub_2664E06E8();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *v32 = 138477827;
      *(v32 + 4) = v29;
      *v33 = v29;
      v34 = v29;
      _os_log_impl(&dword_26629C000, v30, v31, "AccountProvider#multiuserAccount using %{private}@ in guest mode with forced private listening: true", v32, 0xCu);
      sub_2662A9238(v33, &qword_2800734B0, &unk_2664E3670);
      MEMORY[0x266784AD0](v33, -1, -1);
      MEMORY[0x266784AD0](v32, -1, -1);
    }

    (*(v7 + 8))(v11, v6);
    sub_2662C1744(0, &qword_280F8F550, 0x277CCABB0);
    v35 = sub_2664E08E8();
    v39 = v29;
    v40 = v35;
    v36 = v29;
    v38(&v39);

    goto LABEL_21;
  }

  if (!v19)
  {
    v20 = v18;
    goto LABEL_15;
  }

  sub_2662C1744(0, &qword_280F8F550, 0x277CCABB0);
  v21 = sub_2664E0918();

  if ((v21 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_9:
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v22 = __swift_project_value_buffer(v6, qword_280F914F0);
  swift_beginAccess();
  (*(v7 + 16))(v13, v22, v6);
  v23 = sub_2664DFE18();
  v24 = sub_2664E06E8();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_26629C000, v23, v24, "AccountProvider#multiuserAccount Owner spoke so return the active account and the configured private listening", v25, 2u);
    MEMORY[0x266784AD0](v25, -1, -1);
  }

  (*(v7 + 8))(v13, v6);
  v39 = a2;
  v40 = v15;
  v26 = v15;
  v27 = a2;
  v38(&v39);

LABEL_21:
  sub_26633C3AC(v39, v40);
}

void sub_266334C2C(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, void (*a5)(void **), uint64_t a6, int a7, uint64_t a8, char *a9)
{
  v83 = a8;
  v84 = a2;
  v82 = a7;
  v87 = a5;
  v88 = a6;
  v89 = a4;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073C60, &unk_2664EE400);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v78 - v13;
  v15 = sub_2664DE4A8();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v19 = &v78 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v78 - v20;
  v22 = sub_2664DFE38();
  v23 = *(v22 - 8);
  v85 = v22;
  v86 = v23;
  v24 = v23[8];
  v25 = MEMORY[0x28223BE20](v22);
  v26 = MEMORY[0x28223BE20](v25);
  v28 = &v78 - v27;
  MEMORY[0x28223BE20](v26);
  v31 = &v78 - v30;
  if (a3)
  {
    v32 = a3;
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v33 = v85;
    v34 = __swift_project_value_buffer(v85, qword_280F914F0);
    swift_beginAccess();
    v35 = v86;
    (v86[2])(v31, v34, v33);
    v36 = a3;
    v37 = sub_2664DFE18();
    v38 = sub_2664E06D8();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v91 = v40;
      *v39 = 136315138;
      swift_getErrorValue();
      v41 = sub_2664E0DE8();
      v43 = sub_2662A320C(v41, v42, &v91);

      *(v39 + 4) = v43;
      _os_log_impl(&dword_26629C000, v37, v38, "AccountProvider#sharedIDToICUser Error returned from getHomeUserId: %s", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v40);
      MEMORY[0x266784AD0](v40, -1, -1);
      MEMORY[0x266784AD0](v39, -1, -1);
    }

    v35[1](v31, v33);
    v91 = 0;
    v92 = 0;
    v87(&v91);

    goto LABEL_22;
  }

  v44 = v84;
  if (!v84)
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v56 = v85;
    v57 = __swift_project_value_buffer(v85, qword_280F914F0);
    swift_beginAccess();
    v58 = v86;
    (v86[2])(v28, v57, v56);
    v59 = sub_2664DFE18();
    v60 = sub_2664E06D8();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      *v61 = 0;
      _os_log_impl(&dword_26629C000, v59, v60, "AccountProvider#sharedIDToICUser Missing homeID from getHomeUserId", v61, 2u);
      MEMORY[0x266784AD0](v61, -1, -1);
    }

    v58[1](v28, v56);
    goto LABEL_21;
  }

  v45 = v16;
  v81 = v29;

  v46 = a1;
  sub_2664DE448();
  if ((*(v45 + 48))(v14, 1, v15) == 1)
  {
    sub_2662A9238(v14, &qword_280073C60, &unk_2664EE400);
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v47 = v85;
    v48 = __swift_project_value_buffer(v85, qword_280F914F0);
    swift_beginAccess();
    v49 = v86;
    v50 = v81;
    (v86[2])(v81, v48, v47);

    v51 = sub_2664DFE18();
    v52 = sub_2664E06D8();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v91 = v54;
      *v53 = 136315138;
      v55 = sub_2662A320C(v46, v44, &v91);

      *(v53 + 4) = v55;
      _os_log_impl(&dword_26629C000, v51, v52, "AccountProvider#sharedIDToICUser Couldn't grab home identifier from homeID: %s", v53, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v54);
      MEMORY[0x266784AD0](v54, -1, -1);
      MEMORY[0x266784AD0](v53, -1, -1);
    }

    else
    {
    }

    v49[1](v50, v47);
LABEL_21:
    v91 = 0;
    v92 = 0;
    v87(&v91);
LABEL_22:
    sub_26633C3AC(v91, v92);
    goto LABEL_23;
  }

  v81 = a9;
  v79 = a1;
  v62 = *(v45 + 32);
  v62(v21, v14, v15);
  v86 = [objc_opt_self() ic_sharedAccountStore];
  v63 = v15;
  v64 = v45;
  v80 = v21;
  v85 = sub_2664DE478();
  (*(v45 + 16))(v19, v21, v63);
  v65 = (*(v64 + 80) + 48) & ~*(v64 + 80);
  v66 = v65 + v17;
  v67 = (v65 + v17) & 0xFFFFFFFFFFFFFFF8;
  v68 = swift_allocObject();
  v69 = v84;
  *(v68 + 2) = v79;
  *(v68 + 3) = v69;
  v70 = v88;
  *(v68 + 4) = v87;
  *(v68 + 5) = v70;
  v62(&v68[v65], v19, v63);
  v68[v66] = v82 & 1;
  v71 = &v68[v67];
  v72 = v81;
  *(v71 + 1) = v83;
  *(v71 + 2) = v72;
  aBlock[4] = sub_26633C3F0;
  aBlock[5] = v68;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2662A6624;
  aBlock[3] = &block_descriptor_98_0;
  v73 = _Block_copy(aBlock);

  v75 = v85;
  v74 = v86;
  [v86 ic:v85 storeAccountForHomeUserIdentifier:v73 completion:?];
  _Block_release(v73);

  (*(v64 + 8))(v80, v63);
LABEL_23:
  v76 = v89;
  swift_beginAccess();
  v77 = *(v76 + 16);
  *(v76 + 16) = 0;
}

void sub_2663354E8(void *a1, void *a2, uint64_t a3, uint64_t a4, void (*a5)(id *), uint64_t a6, uint64_t a7, char a8, uint64_t a9, unint64_t a10)
{
  v118 = a6;
  v119 = a5;
  v116 = a3;
  v117 = a4;
  v14 = sub_2664DE4A8();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v114 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_2664DFE38();
  v120 = *(v19 - 8);
  v121 = v19;
  v20 = *(v120 + 64);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v114 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v114 - v25;
  v27 = MEMORY[0x28223BE20](v24);
  v28 = MEMORY[0x28223BE20](v27);
  v30 = &v114 - v29;
  MEMORY[0x28223BE20](v28);
  if (a2)
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v33 = v121;
    v34 = __swift_project_value_buffer(v121, qword_280F914F0);
    swift_beginAccess();
    v35 = v120;
    (*(v120 + 16))(v23, v34, v33);
    v36 = v117;

    v37 = a2;
    v38 = sub_2664DFE18();
    v39 = sub_2664E06D8();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v122 = v41;
      *v40 = 136315394;
      *(v40 + 4) = sub_2662A320C(v116, v36, &v122);
      *(v40 + 12) = 2080;
      swift_getErrorValue();
      v123 = sub_2664E0DE8();
      v124 = v42;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800734A0, &qword_2664E3B40);
      v43 = sub_2664E0318();
      v45 = sub_2662A320C(v43, v44, &v122);

      *(v40 + 14) = v45;
      _os_log_impl(&dword_26629C000, v38, v39, "AccountProvider#sharedIDToICUser homeID %s not found in database. Error: %s", v40, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266784AD0](v41, -1, -1);
      MEMORY[0x266784AD0](v40, -1, -1);
    }

    (*(v35 + 8))(v23, v33);
LABEL_7:
    v123 = 0;
    v124 = 0;
    v119(&v123);
LABEL_8:
    sub_26633C3AC(v123, v124);
    return;
  }

  v46 = a7;
  if (!a1)
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v59 = v121;
    v60 = __swift_project_value_buffer(v121, qword_280F914F0);
    swift_beginAccess();
    v61 = v120;
    (*(v120 + 16))(v26, v60, v59);
    v62 = v15;
    v63 = v14;
    (*(v15 + 16))(v18, v46, v14);
    v64 = sub_2664DFE18();
    v65 = sub_2664E06D8();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v123 = v67;
      *v66 = 136315138;
      v68 = MEMORY[0x266781480]();
      v70 = v69;
      (*(v62 + 8))(v18, v63);
      v71 = sub_2662A320C(v68, v70, &v123);

      *(v66 + 4) = v71;
      _os_log_impl(&dword_26629C000, v64, v65, "AccountProvider#sharedIDToICUser store Account is nil for homeIdentifier: %s", v66, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v67);
      MEMORY[0x266784AD0](v67, -1, -1);
      MEMORY[0x266784AD0](v66, -1, -1);

      (*(v120 + 8))(v26, v121);
    }

    else
    {

      (*(v62 + 8))(v18, v14);
      (*(v61 + 8))(v26, v59);
    }

    goto LABEL_7;
  }

  v47 = v32;
  v48 = &v114 - v31;
  v49 = a1;
  v50 = [v49 ic_DSID];
  if (!v50)
  {
    if (a8)
    {
      if (qword_280F914E8 != -1)
      {
        swift_once();
      }

      v72 = v121;
      v73 = __swift_project_value_buffer(v121, qword_280F914F0);
      swift_beginAccess();
      v74 = v120;
      (*(v120 + 16))(v47, v73, v72);
      v75 = v117;

      v76 = sub_2664DFE18();
      v77 = sub_2664E06C8();

      if (os_log_type_enabled(v76, v77))
      {
        v78 = v49;
        v79 = swift_slowAlloc();
        v80 = swift_slowAlloc();
        v123 = v80;
        *v79 = 136315138;
        *(v79 + 4) = sub_2662A320C(v116, v75, &v123);
        _os_log_impl(&dword_26629C000, v76, v77, "AccountProvider#sharedIDToICUser no DSID for homeID: %s, but it is NOT required", v79, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v80);
        MEMORY[0x266784AD0](v80, -1, -1);
        v49 = v78;
        MEMORY[0x266784AD0](v79, -1, -1);
      }

      (*(v74 + 8))(v47, v72);
      sub_2662C1744(0, &qword_280F8F550, 0x277CCABB0);
      v81 = sub_2664E08E8();
      v123 = 0;
      v124 = v81;
      v119(&v123);
    }

    else
    {
      v88 = v49;
      if (qword_280F914E8 != -1)
      {
        swift_once();
      }

      v89 = v121;
      v90 = __swift_project_value_buffer(v121, qword_280F914F0);
      swift_beginAccess();
      v91 = v120;
      (*(v120 + 16))(v30, v90, v89);
      v92 = v117;

      v93 = sub_2664DFE18();
      v94 = sub_2664E06C8();

      if (os_log_type_enabled(v93, v94))
      {
        v95 = swift_slowAlloc();
        v96 = swift_slowAlloc();
        v123 = v96;
        *v95 = 136315138;
        *(v95 + 4) = sub_2662A320C(v116, v92, &v123);
        _os_log_impl(&dword_26629C000, v93, v94, "AccountProvider#sharedIDToICUser no DSID for homeID: %s", v95, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v96);
        MEMORY[0x266784AD0](v96, -1, -1);
        MEMORY[0x266784AD0](v95, -1, -1);
      }

      (*(v91 + 8))(v30, v89);
      v123 = 0;
      v124 = 0;
      v119(&v123);
    }

    goto LABEL_8;
  }

  v51 = v50;
  v52 = [v49 ic_privateListeningEnabledForHomeUsers];
  v115 = v49;
  if (v52)
  {
    v53 = v52;
    sub_2662C1744(0, &qword_280F8F550, 0x277CCABB0);
    sub_2662A3D30(&qword_280072C08, MEMORY[0x277CC95F0]);
    v54 = sub_2664E01C8();

    if (*(v54 + 16) && (v55 = sub_26634D960(v46), (v56 & 1) != 0))
    {
      v57 = *(*(v54 + 56) + 8 * v55);
      v58 = v57;
    }

    else
    {
      v57 = 0;
    }

    v82 = v120;
    v83 = v121;
  }

  else
  {
    v57 = 0;
    v82 = v120;
    v83 = v121;
  }

  if ([objc_opt_self() isCurrentDeviceValidHomeAccessory])
  {
    v84 = sub_2664DE478();
    v85 = [objc_opt_self() userMonitorWithHomeIdentifier_];

    if (v85)
    {
      v86 = [v85 isPrivateListeningEnabledForCurrentAccessory];
      v87 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    }

    else
    {
      v87 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    }

    v57 = v87;
  }

  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v97 = __swift_project_value_buffer(v83, qword_280F914F0);
  swift_beginAccess();
  (*(v82 + 16))(v48, v97, v83);
  v98 = v51;

  v99 = sub_2664DFE18();
  v100 = v83;
  v101 = sub_2664E06C8();

  if (os_log_type_enabled(v99, v101))
  {
    v114 = a9;
    v102 = swift_slowAlloc();
    v103 = swift_slowAlloc();
    v117 = v57;
    v104 = v103;
    v105 = swift_slowAlloc();
    v116 = v105;
    *v102 = 138478339;
    *(v102 + 4) = v98;
    *v104 = v51;
    *(v102 + 12) = 2080;
    v122 = v117;
    v123 = v105;
    v106 = v98;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072BF0, qword_2664E6180);
    v107 = sub_2664E0938();
    v109 = sub_2662A320C(v107, v108, &v123);

    *(v102 + 14) = v109;
    *(v102 + 22) = 2080;
    *(v102 + 24) = sub_2662A320C(v114, a10, &v123);
    _os_log_impl(&dword_26629C000, v99, v101, "AccountProvider#sharedIDToICUser Returning Identity(withDSID: %{private}@, privateListening: %s) for sharedUserID: %s", v102, 0x20u);
    sub_2662A9238(v104, &qword_2800734B0, &unk_2664E3670);
    v57 = v117;
    MEMORY[0x266784AD0](v104, -1, -1);
    v110 = v116;
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v110, -1, -1);
    v111 = v102;
    v112 = v115;
    MEMORY[0x266784AD0](v111, -1, -1);

    (*(v82 + 8))(v48, v121);
  }

  else
  {

    (*(v82 + 8))(v48, v100);
    v112 = v115;
  }

  v123 = [objc_opt_self() specificAccountWithDSID_];
  v124 = v57;
  v113 = v57;
  v119(&v123);

  sub_26633C3AC(v123, v124);
}

uint64_t sub_266336224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072BD0, &qword_2664E3550);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v18 - v11;
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  *(v13 + 24) = a4;
  v14 = swift_allocObject();
  v14[2] = v4;
  v14[3] = a1;
  v14[4] = a2;
  v15 = sub_2664E05C8();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = sub_26633A764;
  v16[5] = v13;
  v16[6] = &unk_2664E6150;
  v16[7] = v14;

  sub_26633E760(0, 0, v12, &unk_2664E6160, v16);
}

uint64_t sub_2663363DC()
{
  v1 = *(v0 + 16);
  *v1 = 0;
  v1[1] = 0;
  return (*(v0 + 8))();
}

uint64_t sub_2663363F8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_266336498;

  return sub_26633A8F4();
}

uint64_t sub_266336498(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_266336594(uint64_t a1, uint64_t a2)
{
  v34 = *v2;
  v35 = v2;
  v5 = sub_2664DFE08();
  v32 = *(v5 - 8);
  v33 = v5;
  v6 = *(v32 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v31 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v31 - v8;
  v10 = sub_2664DFE38();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v10, qword_280F914F0);
  swift_beginAccess();
  (*(v11 + 16))(v14, v15, v10);
  v16 = sub_2664DFE18();
  v17 = sub_2664E06E8();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_26629C000, v16, v17, "AccountProvider#gdprPopIfNeeded", v18, 2u);
    MEMORY[0x266784AD0](v18, -1, -1);
  }

  (*(v11 + 8))(v14, v10);
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  *(v19 + 24) = a2;
  v20 = qword_280F91508;

  if (v20 != -1)
  {
    swift_once();
  }

  v21 = qword_280F91D48;
  sub_2664DFDE8();
  v22 = v31;
  v23 = v32;
  v24 = v33;
  (*(v32 + 16))(v31, v9, v33);
  v25 = (*(v23 + 80) + 33) & ~*(v23 + 80);
  v26 = (v6 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  *(v27 + 16) = "gdprPop";
  *(v27 + 24) = 7;
  *(v27 + 32) = 2;
  (*(v23 + 32))(v27 + v25, v22, v24);
  v28 = (v27 + v26);
  *v28 = sub_2662D2B60;
  v28[1] = v19;

  sub_2664E0848();
  sub_2664DFDC8();
  v29 = swift_allocObject();
  *(v29 + 16) = sub_2662D3010;
  *(v29 + 24) = v27;

  sub_266336A04(sub_2662DAE90, v29, v35, v34);

  return (*(v23 + 8))(v9, v24);
}

void sub_266336A04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = *(a3 + 16);
  v10 = swift_allocObject();
  v10[2] = sub_2662D2B74;
  v10[3] = v8;
  v10[4] = a4;
  v12[4] = sub_26633C308;
  v12[5] = v10;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_2663371F8;
  v12[3] = &block_descriptor_11;
  v11 = _Block_copy(v12);

  [v9 requestCapabilitiesWithCompletionHandler_];
  _Block_release(v11);
}

uint64_t sub_266336B28(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_2664E0038();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2664E00B8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280071AC8 != -1)
  {
    swift_once();
  }

  v17 = swift_allocObject();
  v17[2] = a2;
  v17[3] = a3;
  v17[4] = a4;
  aBlock[4] = sub_26633C36C;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2662A3F90;
  aBlock[3] = &block_descriptor_82;
  v18 = _Block_copy(aBlock);
  v19 = a2;

  sub_2664E0068();
  v21[1] = MEMORY[0x277D84F90];
  sub_2662A3D30(&qword_280F8F6A0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280074210, &qword_2664E3640);
  sub_2662A5AC8();
  sub_2664E0A08();
  MEMORY[0x266783800](0, v16, v11, v18);
  _Block_release(v18);
  (*(v8 + 8))(v11, v7);
  (*(v13 + 8))(v16, v12);
}

void sub_266336E10(void *a1, void (*a2)(void))
{
  v4 = sub_2664DFE38();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v33 - v10;
  if (a1)
  {
    v12 = a1;
    v13 = sub_2664DE198();
    if ([v13 code] == 9)
    {
      v14 = [v13 domain];
      v15 = sub_2664E02C8();
      v17 = v16;

      v18 = *MEMORY[0x277CDD438];
      if (v15 == sub_2664E02C8() && v17 == v19)
      {
        v21 = 1;
      }

      else
      {
        v21 = sub_2664E0D88();
      }
    }

    else
    {
      v21 = 0;
    }

    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v26 = __swift_project_value_buffer(v4, qword_280F914F0);
    swift_beginAccess();
    (*(v5 + 16))(v9, v26, v4);
    v27 = sub_2664DFE18();
    v28 = sub_2664E06E8();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v33 = v13;
      v30 = a2;
      v31 = v29;
      *v29 = 67109120;
      *(v29 + 4) = v21 & 1;
      _os_log_impl(&dword_26629C000, v27, v28, "AccountProvider#gdprPopIfNeeded privacyAcknowledgementRequired: %{BOOL}d", v29, 8u);
      v32 = v31;
      a2 = v30;
      v13 = v33;
      MEMORY[0x266784AD0](v32, -1, -1);
    }

    (*(v5 + 8))(v9, v4);
    a2(v21 & 1);
  }

  else
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v22 = __swift_project_value_buffer(v4, qword_280F914F0);
    swift_beginAccess();
    (*(v5 + 16))(v11, v22, v4);
    v23 = sub_2664DFE18();
    v24 = sub_2664E06E8();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_26629C000, v23, v24, "AccountProvider#gdprPopIfNeeded error is nil. Returning false", v25, 2u);
      MEMORY[0x266784AD0](v25, -1, -1);
    }

    (*(v5 + 8))(v11, v4);
    a2(0);
  }
}

void sub_2663371F8(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_266337294()
{
  v1[15] = v0;
  v2 = sub_2664DFE38();
  v1[16] = v2;
  v3 = *(v2 - 8);
  v1[17] = v3;
  v4 = *(v3 + 64) + 15;
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v5 = *(*(sub_2664DFAE8() - 8) + 64) + 15;
  v1[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2663373A4, 0, 0);
}

uint64_t sub_2663373A4()
{
  v1 = static SiriEnvironmentWrapper.retrieve()();
  v0[23] = v1;
  if (v1)
  {
    v2 = v0[22];
    sub_2664DF4D8();
    sub_2664DFAB8();

    v3 = sub_2664DFAD8();
    sub_26633AB20(v2);
    if (v3)
    {
      v4 = *(MEMORY[0x277D859E0] + 4);
      v5 = swift_task_alloc();
      v0[24] = v5;
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072BF0, qword_2664E6180);
      *v5 = v0;
      v5[1] = sub_266337658;
      v7 = v0[15];

      return MEMORY[0x2822007B8](v0 + 14, 0, 0, 0xD000000000000014, 0x80000002664F4E80, sub_26633AB7C, v7, v6);
    }
  }

  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v9 = v0[17];
  v8 = v0[18];
  v10 = v0[16];
  v11 = __swift_project_value_buffer(v10, qword_280F914F0);
  swift_beginAccess();
  (*(v9 + 16))(v8, v11, v10);
  v12 = sub_2664DFE18();
  v13 = sub_2664E06C8();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_26629C000, v12, v13, "AccountProvider#requestingUserIsDeviceOwner Non multi-user request: returning true", v14, 2u);
    MEMORY[0x266784AD0](v14, -1, -1);
  }

  v15 = v0[21];
  v16 = v0[22];
  v18 = v0[19];
  v17 = v0[20];
  (*(v0[17] + 8))(v0[18], v0[16]);

  v19 = v0[1];

  return v19(1);
}

uint64_t sub_266337658()
{
  v1 = *(*v0 + 192);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_266337754, 0, 0);
}

uint64_t sub_266337754()
{
  v1 = v0[14];
  if (!v1)
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v9 = v0 + 19;
    v22 = v0[19];
    v23 = v0[16];
    v24 = v0[17];
    v25 = __swift_project_value_buffer(v23, qword_280F914F0);
    swift_beginAccess();
    (*(v24 + 16))(v22, v25, v23);
    v26 = sub_2664DFE18();
    v27 = sub_2664E06D8();
    v28 = os_log_type_enabled(v26, v27);
    v29 = v0[23];
    if (v28)
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_26629C000, v26, v27, "AccountProvider#requestingUserIsDeviceOwner Unable to get requesting user's DSID (possibly unsure or unknown user).", v30, 2u);
      MEMORY[0x266784AD0](v30, -1, -1);

LABEL_19:
      v7 = 0;
      goto LABEL_20;
    }

LABEL_18:

    goto LABEL_19;
  }

  v2 = v0[15];
  v3 = v2[11];
  v4 = v2[12];
  __swift_project_boxed_opaque_existential_1(v2 + 8, v3);
  v5 = AccountStoreProviding.ownerDSID.getter(v3, v4);
  if (!v5)
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v9 = v0 + 20;
    v31 = v0[20];
    v32 = v0[16];
    v33 = v0[17];
    v34 = __swift_project_value_buffer(v32, qword_280F914F0);
    swift_beginAccess();
    (*(v33 + 16))(v31, v34, v32);
    v35 = sub_2664DFE18();
    v36 = sub_2664E06D8();
    v37 = os_log_type_enabled(v35, v36);
    v38 = v0[23];
    if (v37)
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_26629C000, v35, v36, "AccountProvider#requestingUserIsDeviceOwner unable to get device owner's DSID.", v39, 2u);
      MEMORY[0x266784AD0](v39, -1, -1);

      goto LABEL_19;
    }

    goto LABEL_18;
  }

  v6 = v5;
  sub_2662C1744(0, &qword_280F8F548, 0x277D82BB8);
  v7 = sub_2664E0918();
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v9 = v0 + 21;
  v8 = v0[21];
  v11 = v0[16];
  v10 = v0[17];
  v12 = __swift_project_value_buffer(v11, qword_280F914F0);
  swift_beginAccess();
  (*(v10 + 16))(v8, v12, v11);
  v13 = v1;
  v14 = v6;
  v15 = sub_2664DFE18();
  v16 = sub_2664E06E8();

  if (os_log_type_enabled(v15, v16))
  {
    v47 = v7;
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v17 = 138412802;
    *(v17 + 4) = v13;
    *(v17 + 12) = 2112;
    *(v17 + 14) = v14;
    *v18 = v1;
    v18[1] = v6;
    *(v17 + 22) = 1024;
    *(v17 + 24) = v47 & 1;
    v19 = v13;
    v13 = v14;
    _os_log_impl(&dword_26629C000, v15, v16, "AccountProvider#requestingUserIsDeviceOwner requestingUserDSID: %@, ownerDSID: %@. requestingUserIsDeviceOwner: %{BOOL}d", v17, 0x1Cu);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800734B0, &unk_2664E3670);
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v18, -1, -1);
    v20 = v17;
    v7 = v47;
    MEMORY[0x266784AD0](v20, -1, -1);
    v14 = v15;
    v15 = v19;
  }

  v21 = v0[23];

LABEL_20:
  v40 = v0[21];
  v41 = v0[22];
  v43 = v0[19];
  v42 = v0[20];
  v44 = v0[18];
  (*(v0[17] + 8))(*v9, v0[16]);

  v45 = v0[1];

  return v45(v7 & 1);
}

uint64_t sub_266337C5C()
{
  v1 = *(MEMORY[0x277D859E0] + 4);
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072BF0, qword_2664E6180);
  *v2 = v0;
  v2[1] = sub_266337D44;
  v4 = *(v0 + 24);

  return MEMORY[0x2822007B8](v0 + 16, 0, 0, 0xD000000000000014, 0x80000002664F4E80, sub_26633C4E0, v4, v3);
}

uint64_t sub_266337D44()
{
  v1 = *(*v0 + 32);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_266337E40, 0, 0);
}

uint64_t sub_266337E58(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072C00, &unk_2664E62C8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - v5;
  (*(v3 + 16))(&v10 - v5, a1, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v6, v2);
  sub_266337FF0(sub_26633C28C, v8);
}

uint64_t sub_266337FA0(void *a1)
{
  v1 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072C00, &unk_2664E62C8);
  return sub_2664E0588();
}

void sub_266337FF0(void (*a1)(void), uint64_t a2)
{
  v3 = v2;
  v6 = sub_2664DFE38();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2664DFAE8();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (static SiriEnvironmentWrapper.retrieve()())
  {
    sub_2664DF4D8();
    sub_2664DFAB8();

    v15 = sub_2664DFAD8();
    sub_26633AB20(v14);
    if (v15)
    {

      sub_26633B268(v16, a1, a2, v3);

      return;
    }
  }

  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v6, qword_280F914F0);
  swift_beginAccess();
  (*(v7 + 16))(v10, v17, v6);
  v18 = sub_2664DFE18();
  v19 = sub_2664E06C8();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_26629C000, v18, v19, "AccountProvider#requestingUserDSID Non multi-user request: Returning owner's DSID", v20, 2u);
    MEMORY[0x266784AD0](v20, -1, -1);
  }

  (*(v7 + 8))(v10, v6);
  v21 = v3[11];
  v22 = v3[12];
  __swift_project_boxed_opaque_existential_1(v3 + 8, v21);
  v23 = AccountStoreProviding.ownerDSID.getter(v21, v22);
  a1();
}

uint64_t sub_2663382B4(uint64_t a1, unint64_t a2, uint64_t (*a3)(void), uint64_t a4, void *a5)
{
  v10 = sub_2664DFE38();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v32 - v16;
  if (a2)
  {
    v33 = a3;
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v18 = __swift_project_value_buffer(v10, qword_280F914F0);
    swift_beginAccess();
    (*(v11 + 16))(v15, v18, v10);

    v19 = sub_2664DFE18();
    v20 = sub_2664E06E8();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v32 = a4;
      v22 = v21;
      v23 = swift_slowAlloc();
      v34 = v23;
      *v22 = 136315138;
      *(v22 + 4) = sub_2662A320C(a1, a2, &v34);
      _os_log_impl(&dword_26629C000, v19, v20, "AccountProvider#requestingUserDSID Multi-user request: Getting DSID for user homeID: %s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v23);
      MEMORY[0x266784AD0](v23, -1, -1);
      v24 = v22;
      a4 = v32;
      MEMORY[0x266784AD0](v24, -1, -1);
    }

    (*(v11 + 8))(v15, v10);
    v25 = a5[11];
    v26 = a5[12];
    __swift_project_boxed_opaque_existential_1(a5 + 8, v25);
    return AccountStoreProviding.amsDSID(forHomeUserIdentifier:completion:)(a1, a2, v33, a4, v25, v26);
  }

  else
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v28 = __swift_project_value_buffer(v10, qword_280F914F0);
    swift_beginAccess();
    (*(v11 + 16))(v17, v28, v10);
    v29 = sub_2664DFE18();
    v30 = sub_2664E06D8();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_26629C000, v29, v30, "AccountProvider#requestingUserDSID Multi-user request: Unable to get requesting user's home identifier (unknown user)", v31, 2u);
      MEMORY[0x266784AD0](v31, -1, -1);
    }

    (*(v11 + 8))(v17, v10);
    return a3(0);
  }
}

uint64_t sub_266338648(void (*a1)(void, void), uint64_t a2)
{
  v37 = a1;
  v38 = a2;
  v3 = sub_2664DFE38();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v35 - v9;
  v11 = sub_2664DEA98();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2664DFAE8();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (static SiriEnvironmentWrapper.retrieve()())
  {
    v36 = v10;
    v20 = v2;
    sub_2664DF4D8();
    sub_2664DFAB8();

    v21 = sub_2664DFAD8();
    sub_26633AB20(v19);
    if (v21)
    {
      sub_26633B7C0(v20 + 24, &v39);
      if (v40)
      {
        sub_2662A8618(&v39, v41);
        sub_2664DF4A8();
        sub_2664DEB48();

        v22 = sub_2664DEA18();
        v24 = v23;
        (*(v12 + 8))(v15, v11);
        if (v24)
        {
          sub_26633AD84(v22, v24, v41, v37, v38);
        }

        else
        {
          sub_26633B034(v41, v37, v38);
        }

        return __swift_destroy_boxed_opaque_existential_1Tm(v41);
      }

      else
      {
        sub_2662A9238(&v39, &qword_280072BF8, &unk_2664E6F40);
        if (qword_280F914E8 != -1)
        {
          swift_once();
        }

        v30 = __swift_project_value_buffer(v3, qword_280F914F0);
        swift_beginAccess();
        v31 = v36;
        (*(v4 + 16))(v36, v30, v3);
        v32 = sub_2664DFE18();
        v33 = sub_2664E06D8();
        if (os_log_type_enabled(v32, v33))
        {
          v34 = swift_slowAlloc();
          *v34 = 0;
          _os_log_impl(&dword_26629C000, v32, v33, "AccountProvider#requestingUserHomeID Unable to get multi user connection", v34, 2u);
          MEMORY[0x266784AD0](v34, -1, -1);
        }

        (*(v4 + 8))(v31, v3);
        v37(0, 0);
      }
    }
  }

  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v25 = __swift_project_value_buffer(v3, qword_280F914F0);
  swift_beginAccess();
  (*(v4 + 16))(v8, v25, v3);
  v26 = sub_2664DFE18();
  v27 = sub_2664E06E8();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_26629C000, v26, v27, "AccountProvider#requestingUserHomeID not multi-user returning nil", v28, 2u);
    MEMORY[0x266784AD0](v28, -1, -1);
  }

  (*(v4 + 8))(v8, v3);
  return (v37)(0, 0);
}

void sub_266338B24(uint64_t a1, unint64_t a2, void *a3, void (*a4)(void, void), void (*a5)(void, void))
{
  v10 = sub_2664DFE38();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v45 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v45 - v19;
  if (a3)
  {
    v21 = a3;
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v22 = __swift_project_value_buffer(v10, qword_280F914F0);
    swift_beginAccess();
    (*(v11 + 16))(v20, v22, v10);
    v23 = a3;
    v24 = sub_2664DFE18();
    v25 = sub_2664E06D8();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v46 = a4;
      v28 = v27;
      v47 = v27;
      *v26 = 136315138;
      swift_getErrorValue();
      v29 = sub_2664E0DE8();
      v31 = sub_2662A320C(v29, v30, &v47);
      v45 = v10;
      v32 = v31;

      *(v26 + 4) = v32;
      _os_log_impl(&dword_26629C000, v24, v25, "AccountProvider#requestingUserHomeID Error returned from getHomeUserId: %s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v28);
      v33 = v28;
      a4 = v46;
      MEMORY[0x266784AD0](v33, -1, -1);
      MEMORY[0x266784AD0](v26, -1, -1);

      (*(v11 + 8))(v20, v45);
    }

    else
    {

      (*(v11 + 8))(v20, v10);
    }

    a4(0, 0);
  }

  else
  {
    if (a2)
    {
      v46 = a5;
      if (qword_280F914E8 != -1)
      {
        swift_once();
      }

      v34 = __swift_project_value_buffer(v10, qword_280F914F0);
      swift_beginAccess();
      (*(v11 + 16))(v15, v34, v10);

      v35 = sub_2664DFE18();
      v36 = sub_2664E06E8();

      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v47 = v38;
        *v37 = 136315138;
        *(v37 + 4) = sub_2662A320C(a1, a2, &v47);
        _os_log_impl(&dword_26629C000, v35, v36, "AccountProvider#requestingUserHomeID Requesting user's home id: %s", v37, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v38);
        MEMORY[0x266784AD0](v38, -1, -1);
        MEMORY[0x266784AD0](v37, -1, -1);
      }

      (*(v11 + 8))(v15, v10);
      v39 = a1;
      v40 = a2;
    }

    else
    {
      if (qword_280F914E8 != -1)
      {
        swift_once();
      }

      v41 = __swift_project_value_buffer(v10, qword_280F914F0);
      swift_beginAccess();
      (*(v11 + 16))(v18, v41, v10);
      v42 = sub_2664DFE18();
      v43 = sub_2664E06D8();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        *v44 = 0;
        _os_log_impl(&dword_26629C000, v42, v43, "AccountProvider#requestingUserHomeID Missing homeUserID from getHomeUserId", v44, 2u);
        MEMORY[0x266784AD0](v44, -1, -1);
      }

      (*(v11 + 8))(v18, v10);
      v39 = 0;
      v40 = 0;
    }

    a4(v39, v40);
  }
}

uint64_t AccountProvider.deinit()
{
  sub_2662A9238(v0 + 24, &qword_280072BF8, &unk_2664E6F40);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 64));
  return v0;
}

uint64_t AccountProvider.__deallocating_deinit()
{
  sub_2662A9238(v0 + 24, &qword_280072BF8, &unk_2664E6F40);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 64));

  return swift_deallocClassInstance();
}

uint64_t sub_266339138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;

  sub_26633A5B4(a1, a2, 1, sub_26633C4E8, v8);
}

uint64_t sub_2663391D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072BD0, &qword_2664E3550);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v19 - v11;
  v13 = *v4;
  v14 = swift_allocObject();
  *(v14 + 16) = a3;
  *(v14 + 24) = a4;
  v15 = swift_allocObject();
  v15[2] = v13;
  v15[3] = a1;
  v15[4] = a2;
  v16 = sub_2664E05C8();
  (*(*(v16 - 8) + 56))(v12, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = sub_26633C4E4;
  v17[5] = v14;
  v17[6] = &unk_2664E62B8;
  v17[7] = v15;

  sub_26633E760(0, 0, v12, &unk_2664E62C0, v17);
}

uint64_t sub_266339394()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_266336498;

  return sub_266337294();
}

uint64_t sub_266339448()
{
  v1 = *(MEMORY[0x277D859E0] + 4);
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072BF0, qword_2664E6180);
  *v2 = v0;
  v2[1] = sub_266339530;
  v4 = *(v0 + 24);

  return MEMORY[0x2822007B8](v0 + 16, 0, 0, 0xD000000000000014, 0x80000002664F4E80, sub_26633C4E0, v4, v3);
}

uint64_t sub_266339530()
{
  v1 = *(*v0 + 32);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_26633C4EC, 0, 0);
}

uint64_t sub_26633962C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26633C4D0;

  return sub_26633A8F4();
}

uint64_t sub_2663396CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int *a6)
{
  v6[4] = a4;
  v6[5] = a5;
  v10 = (a6 + *a6);
  v7 = a6[1];
  v8 = swift_task_alloc();
  v6[6] = v8;
  *v8 = v6;
  v8[1] = sub_2663397C0;

  return v10(v6 + 2);
}

uint64_t sub_2663397C0()
{
  v1 = *(*v0 + 48);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2663398BC, 0, 0);
}

uint64_t sub_2663398BC()
{
  v1 = *(v0 + 40);
  (*(v0 + 32))(v0 + 16);
  v2 = *(v0 + 24);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_26633992C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int *a6)
{
  v6[2] = a4;
  v6[3] = a5;
  v10 = (a6 + *a6);
  v7 = a6[1];
  v8 = swift_task_alloc();
  v6[4] = v8;
  *v8 = v6;
  v8[1] = sub_266339A20;

  return v10(v6 + 5);
}

uint64_t sub_266339A20()
{
  v1 = *(*v0 + 32);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_266339B1C, 0, 0);
}

uint64_t sub_266339B1C()
{
  v1 = *(v0 + 24);
  (*(v0 + 16))(v0 + 40);
  v2 = *(v0 + 8);

  return v2();
}

void sub_266339BAC(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t sub_266339C5C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v19[3] = a5;
  v19[4] = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v19);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_1, a3, a5);
  *(a4 + 16) = a1;
  sub_26633B7C0(a2, a4 + 24);
  sub_2662A5550(v19, a4 + 64);
  v12 = objc_opt_self();
  v13 = a1;
  v14 = [v12 defaultCenter];
  v15 = *MEMORY[0x277D7F8C8];
  v16 = objc_opt_self();

  v17 = [v16 defaultIdentityStore];
  [v14 addObserver:a4 selector:sel_handleActiveAccountDidChangeNotificationWithNotification_ name:v15 object:v17];

  sub_2662A9238(a2, &qword_280072BF8, &unk_2664E6F40);
  __swift_destroy_boxed_opaque_existential_1Tm(v19);
  return a4;
}

uint64_t sub_266339DD0(uint64_t a1, unint64_t a2)
{
  v4 = sub_2664DFE38();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v60 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v60 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v60 - v16;
  v18 = [objc_opt_self() currentDeviceInfo];
  v19 = [v18 isInternalBuild];

  if (!v19)
  {
    v43 = a1;
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v44 = __swift_project_value_buffer(v4, qword_280F914F0);
    swift_beginAccess();
    (*(v5 + 16))(v9, v44, v4);

    v45 = sub_2664DFE18();
    v46 = v5;
    v47 = sub_2664E06E8();

    if (os_log_type_enabled(v45, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v68[0] = v49;
      *v48 = 136315138;
      *(v48 + 4) = sub_2662A320C(v43, a2, v68);
      _os_log_impl(&dword_26629C000, v45, v47, "AccountProvider#getOverrideSharedUserID Not on internal build, returning nil for %s", v48, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v49);
      MEMORY[0x266784AD0](v49, -1, -1);
      MEMORY[0x266784AD0](v48, -1, -1);
    }

    (*(v46 + 8))(v9, v4);
    return 0;
  }

  v64 = v15;
  v65 = v12;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v20 = __swift_project_value_buffer(v4, qword_280F914F0);
  swift_beginAccess();
  v66 = *(v5 + 16);
  (v66)(v17, v20, v4);

  v21 = sub_2664DFE18();
  v22 = sub_2664E06E8();

  v23 = os_log_type_enabled(v21, v22);
  v67 = v5;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v63 = v4;
    v26 = a1;
    v27 = v25;
    v68[0] = v25;
    *v24 = 136315138;
    *(v24 + 4) = sub_2662A320C(v26, a2, v68);
    _os_log_impl(&dword_26629C000, v21, v22, "AccountProvider#getOverrideSharedUserID possibly overriding %s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v27);
    v28 = v27;
    a1 = v26;
    v4 = v63;
    MEMORY[0x266784AD0](v28, -1, -1);
    MEMORY[0x266784AD0](v24, -1, -1);
  }

  v29 = *(v5 + 8);
  v29(v17, v4);
  v30 = sub_2664E02A8();
  v31 = sub_2664E02A8();
  CFPreferencesAppSynchronize(v30);
  v32 = CFPreferencesCopyAppValue(v31, v30);
  v33 = v32;
  if (!v32 || (v69 = v32, swift_unknownObjectRetain(), (swift_dynamicCast() & 1) == 0))
  {
    v50 = v65;
    (v66)(v65, v20, v4);
    swift_unknownObjectRetain();
    v51 = sub_2664DFE18();
    v52 = sub_2664E06E8();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v63 = v29;
      v54 = v53;
      v55 = swift_slowAlloc();
      v68[0] = v55;
      *v54 = 136315138;
      v69 = v33;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072C10, &qword_2664E62D8);
      v56 = sub_2664E0938();
      v58 = sub_2662A320C(v56, v57, v68);
      v62 = v31;
      v59 = v58;

      *(v54 + 4) = v59;
      _os_log_impl(&dword_26629C000, v51, v52, "AccountProvider#getOverrideSharedUserID appValue isn't a string type or nil: %s -- skipping", v54, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v55);
      MEMORY[0x266784AD0](v55, -1, -1);
      MEMORY[0x266784AD0](v54, -1, -1);
      swift_unknownObjectRelease();

      v63(v50, v4);
    }

    else
    {

      swift_unknownObjectRelease();
      v29(v50, v4);
    }

    return 0;
  }

  v62 = v31;
  v63 = v29;
  v61 = a1;
  v34 = v68[1];
  v65 = v68[0];
  v35 = v64;
  v66();

  v36 = sub_2664DFE18();
  v37 = sub_2664E06E8();

  v38 = v34;

  if (os_log_type_enabled(v36, v37))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v68[0] = v40;
    *v39 = 136315394;
    v41 = v65;
    *(v39 + 4) = sub_2662A320C(v65, v38, v68);
    *(v39 + 12) = 2080;
    *(v39 + 14) = sub_2662A320C(v61, a2, v68);
    _os_log_impl(&dword_26629C000, v36, v37, "AccountProvider#getOverrideSharedUserID override %s in place for %s", v39, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v40, -1, -1);
    MEMORY[0x266784AD0](v39, -1, -1);
    swift_unknownObjectRelease();

    v63(v64, v4);
    return v41;
  }

  else
  {

    swift_unknownObjectRelease();
    v63(v35, v4);
    return v65;
  }
}

void sub_26633A5B4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  v11 = [objc_allocWithZone(MEMORY[0x277CEF318]) init];
  *(v10 + 16) = v11;
  if (v11)
  {
    v12 = v11;
    v13 = sub_2664E02A8();
    v14 = swift_allocObject();
    *(v14 + 16) = v10;
    *(v14 + 24) = a4;
    *(v14 + 32) = a5;
    *(v14 + 40) = a3 & 1;
    *(v14 + 48) = a1;
    *(v14 + 56) = a2;
    v16[4] = sub_26633C378;
    v16[5] = v14;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 1107296256;
    v16[2] = sub_26639F104;
    v16[3] = &block_descriptor_92_0;
    v15 = _Block_copy(v16);

    [v12 getHomeUserIdForSharedUserId:v13 completion:v15];
    _Block_release(v15);
  }

  else
  {
  }
}

uint64_t sub_26633A76C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2662C1890;

  return sub_2663363BC(a1);
}

uint64_t sub_26633A820(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_2662C1890;

  return sub_2663396CC(a1, v4, v5, v6, v7, v9);
}

uint64_t sub_26633A8F4()
{
  v1 = sub_2664DFE38();
  v0[5] = v1;
  v2 = *(v1 - 8);
  v0[6] = v2;
  v3 = *(v2 + 64) + 15;
  v0[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26633A9B0, 0, 0);
}

uint64_t sub_26633A9B0()
{
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v4 = __swift_project_value_buffer(v3, qword_280F914F0);
  swift_beginAccess();
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_2664DFE18();
  v6 = sub_2664E06C8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_26629C000, v5, v6, "AccountProvider#sharedUserIdToAccount returning nil on non-tvOS platform", v7, 2u);
    MEMORY[0x266784AD0](v7, -1, -1);
  }

  v9 = v0[6];
  v8 = v0[7];
  v10 = v0[5];

  (*(v9 + 8))(v8, v10);

  v11 = v0[1];

  return v11(0);
}

uint64_t sub_26633AB20(uint64_t a1)
{
  v2 = sub_2664DFAE8();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26633AD84(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v28 = a4;
  v9 = sub_2664DFE38();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v9, qword_280F914F0);
  swift_beginAccess();
  (*(v10 + 16))(v13, v14, v9);

  v15 = sub_2664DFE18();
  v16 = sub_2664E06E8();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v27 = a5;
    v18 = a1;
    v19 = v17;
    v20 = swift_slowAlloc();
    v29 = v20;
    *v19 = 136315138;
    *(v19 + 4) = sub_2662A320C(v18, a2, &v29);
    _os_log_impl(&dword_26629C000, v15, v16, "AccountProvider#homeUserId for %s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    MEMORY[0x266784AD0](v20, -1, -1);
    v21 = v19;
    a1 = v18;
    a5 = v27;
    MEMORY[0x266784AD0](v21, -1, -1);
  }

  (*(v10 + 8))(v13, v9);
  v22 = a3[3];
  v23 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v22);
  v24 = swift_allocObject();
  *(v24 + 16) = v28;
  *(v24 + 24) = a5;
  v25 = *(v23 + 24);

  v25(a1, a2, sub_26633C250, v24, v22, v23);
}

uint64_t sub_26633B034(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2664DFE38();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v6, qword_280F914F0);
  swift_beginAccess();
  (*(v7 + 16))(v10, v11, v6);
  v12 = sub_2664DFE18();
  v13 = sub_2664E06E8();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_26629C000, v12, v13, "AccountProvider#getHomeUserIdOfRecognizedUser...", v14, 2u);
    MEMORY[0x266784AD0](v14, -1, -1);
  }

  (*(v7 + 8))(v10, v6);
  v15 = a1[3];
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v15);
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  *(v17 + 24) = a3;
  v18 = *(v16 + 16);

  v18(sub_26633C278, v17, v15, v16);
}

uint64_t sub_26633B268(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, void *a4)
{
  v39 = a1;
  v7 = sub_2664DFE38();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v37 = &v37 - v13;
  v14 = sub_2664DEA98();
  v38 = *(v14 - 8);
  v15 = *(v38 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_2664DFAE8();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_allocObject();
  v40 = a2;
  v41 = a3;
  v22[2] = a2;
  v22[3] = a3;
  v22[4] = a4;

  v42 = a4;

  if (static SiriEnvironmentWrapper.retrieve()())
  {
    sub_2664DF4D8();
    sub_2664DFAB8();

    v23 = sub_2664DFAD8();
    sub_26633AB20(v21);
    if (v23)
    {
      sub_26633B7C0(v39 + 24, &v43);
      if (v44)
      {
        sub_2662A8618(&v43, v45);
        sub_2664DF4A8();
        sub_2664DEB48();

        v24 = sub_2664DEA18();
        v26 = v25;
        (*(v38 + 8))(v17, v14);
        if (v26)
        {
          sub_26633AD84(v24, v26, v45, sub_26633C280, v22);
        }

        else
        {
          sub_26633B034(v45, sub_26633C280, v22);
        }

        __swift_destroy_boxed_opaque_existential_1Tm(v45);
      }

      else
      {
        sub_2662A9238(&v43, &qword_280072BF8, &unk_2664E6F40);
        if (qword_280F914E8 != -1)
        {
          swift_once();
        }

        v31 = __swift_project_value_buffer(v7, qword_280F914F0);
        swift_beginAccess();
        v32 = v37;
        (*(v8 + 16))(v37, v31, v7);
        v33 = sub_2664DFE18();
        v34 = sub_2664E06D8();
        if (os_log_type_enabled(v33, v34))
        {
          v35 = swift_slowAlloc();
          *v35 = 0;
          _os_log_impl(&dword_26629C000, v33, v34, "AccountProvider#requestingUserHomeID Unable to get multi user connection", v35, 2u);
          MEMORY[0x266784AD0](v35, -1, -1);
        }

        (*(v8 + 8))(v32, v7);
        sub_2663382B4(0, 0, v40, v41, v42);
      }
    }
  }

  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v27 = __swift_project_value_buffer(v7, qword_280F914F0);
  swift_beginAccess();
  (*(v8 + 16))(v12, v27, v7);
  v28 = sub_2664DFE18();
  v29 = sub_2664E06E8();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&dword_26629C000, v28, v29, "AccountProvider#requestingUserHomeID not multi-user returning nil", v30, 2u);
    MEMORY[0x266784AD0](v30, -1, -1);
  }

  (*(v8 + 8))(v12, v7);
  sub_2663382B4(0, 0, v40, v41, v42);
}

uint64_t sub_26633B7C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072BF8, &unk_2664E6F40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t dispatch thunk of AccountProviding.requestingUserIsDeviceOwner()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 40);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_26633C4D0;

  return v9(a1, a2);
}

uint64_t dispatch thunk of AccountProviding.requestingUserDSID()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 48);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_26633C4D0;

  return v9(a1, a2);
}

uint64_t dispatch thunk of AccountProviding.sharedUserIdToAccount(sharedUserId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 56);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_26633C4D0;

  return v13(a1, a2, a3, a4);
}

uint64_t sub_26633BBE0(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
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

uint64_t sub_26633BC3C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t dispatch thunk of AccountProvider.sharedUserIdToAccount(sharedUserId:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 176);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_266336498;

  return v10(a1, a2);
}

uint64_t dispatch thunk of AccountProvider.requestingUserIsDeviceOwner()()
{
  v2 = *(*v0 + 224);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_266336498;

  return v6();
}

uint64_t dispatch thunk of AccountProvider.requestingUserDSID()()
{
  v2 = *(*v0 + 232);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_26633C4D0;

  return v6();
}

uint64_t sub_26633C19C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2662BD660;

  return sub_2663363BC(a1);
}

uint64_t sub_26633C250()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_26633C28C(void *a1)
{
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072C00, &unk_2664E62C8) - 8) + 80);

  return sub_266337FA0(a1);
}

uint64_t objectdestroy_5Tm_1(void (*a1)(void), void (*a2)(void))
{
  a1(*(v2 + 16));
  a2(*(v2 + 32));

  return MEMORY[0x2821FE8E8](v2, 40, 7);
}

void sub_26633C3AC(void *a1, void *a2)
{
  if (a1 != 1)
  {
  }
}

void sub_26633C3F0(void *a1, void *a2)
{
  v5 = *(sub_2664DE4A8() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  sub_2663354E8(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), v2 + v6, *(v2 + v6 + *(v5 + 64)), *(v2 + ((v6 + *(v5 + 64)) & 0xFFFFFFFFFFFFFFF8) + 8), *(v2 + ((v6 + *(v5 + 64)) & 0xFFFFFFFFFFFFFFF8) + 16));
}

uint64_t sub_26633C4F0(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v36 = a8;
  v45 = a1;
  v46 = a2;
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](a1);
  v47 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v49 = *(AssociatedTypeWitness - 8);
  v16 = *(v49 + 64);
  v17 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v19 = &v34 - v18;
  v20 = *(*(a4 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v43 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_getAssociatedTypeWitness();
  v37 = *(v22 - 8);
  v38 = v22;
  v23 = *(v37 + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v34 - v24;
  v26 = sub_2664E0678();
  if (!v26)
  {
    return sub_2664E04E8();
  }

  v48 = v26;
  v52 = sub_2664E0C08();
  v39 = sub_2664E0C18();
  sub_2664E0BB8();
  result = sub_2664E0668();
  if ((v48 & 0x8000000000000000) == 0)
  {
    v34 = v11;
    v35 = a5;
    v28 = 0;
    v40 = (v49 + 16);
    v41 = (v49 + 8);
    v42 = v8;
    while (!__OFADD__(v28, 1))
    {
      v49 = v28 + 1;
      v29 = sub_2664E0698();
      v30 = v19;
      v31 = v19;
      v32 = AssociatedTypeWitness;
      (*v40)(v30);
      v29(v51, 0);
      v33 = v50;
      v45(v31, v47);
      if (v33)
      {
        (*v41)(v31, v32);
        (*(v37 + 8))(v25, v38);

        return (*(v34 + 32))(v36, v47, v35);
      }

      v50 = 0;
      (*v41)(v31, v32);
      sub_2664E0BF8();
      result = sub_2664E0688();
      ++v28;
      v19 = v31;
      if (v49 == v48)
      {
        (*(v37 + 8))(v25, v38);
        return v52;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

id _INPBString.init(from:)(uint64_t a1, unint64_t a2)
{
  v4 = sub_2664DFE38();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (result)
  {
    v10 = result;
    v11 = objc_allocWithZone(MEMORY[0x277CD43C0]);
    v12 = v10;
    v13 = [v11 init];
    if (v13)
    {
      v14 = v13;
      v15 = sub_2664E02A8();

      [v14 setValue_];

      [v12 addValue_];
    }

    else
    {
      if (qword_280F914E8 != -1)
      {
        swift_once();
      }

      v16 = __swift_project_value_buffer(v4, qword_280F914F0);
      swift_beginAccess();
      (*(v5 + 16))(v8, v16, v4);

      v17 = sub_2664DFE18();
      v18 = sub_2664E06D8();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v22 = v20;
        *v19 = 136315138;
        v21 = sub_2662A320C(a1, a2, &v22);

        *(v19 + 4) = v21;
        _os_log_impl(&dword_26629C000, v17, v18, "_INPBString#init Unable to create _INPBString for string: %s", v19, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v20);
        MEMORY[0x266784AD0](v20, -1, -1);
        MEMORY[0x266784AD0](v19, -1, -1);
      }

      else
      {
      }

      (*(v5 + 8))(v8, v4);
    }

    return v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::String_optional __swiftcall _INPBString.toString()()
{
  v1 = [v0 values];
  if (!v1)
  {
    goto LABEL_12;
  }

  v2 = v1;
  sub_2662C1744(0, &qword_280072C20, 0x277CD43C0);
  v3 = sub_2664E04A8();

  if (!(v3 >> 62))
  {
    v1 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v1)
    {
      goto LABEL_4;
    }

LABEL_10:

LABEL_11:
    v1 = 0;
LABEL_12:
    v4 = 0;
    goto LABEL_15;
  }

  v1 = sub_2664E0A68();
  if (!v1)
  {
    goto LABEL_10;
  }

LABEL_4:
  if ((v3 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x266783B70](0, v3);
  }

  else
  {
    if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_15;
    }

    v5 = *(v3 + 32);
  }

  v6 = v5;

  v7 = [v6 value];

  if (!v7)
  {
    goto LABEL_11;
  }

  v8 = sub_2664E02C8();
  v10 = v9;

  v4 = v10;
  v1 = v8;
LABEL_15:
  result.value._object = v4;
  result.value._countAndFlagsBits = v1;
  return result;
}

id sub_26633CD9C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  sub_2662C1744(0, &qword_280072C28, 0x277CD43B8);

  result = _INPBString.init(from:)(v3, v4);
  *a2 = result;
  return result;
}

void sub_26633CE5C(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 values];
  if (!v3)
  {
    goto LABEL_13;
  }

  v4 = v3;
  sub_2662C1744(0, &qword_280072C20, 0x277CD43C0);
  v5 = sub_2664E04A8();

  if (!(v5 >> 62))
  {
    if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

    goto LABEL_12;
  }

  if (!sub_2664E0A68())
  {
LABEL_12:

LABEL_13:
    *a2 = 0;
    a2[1] = 0;
    return;
  }

LABEL_4:
  if ((v5 & 0xC000000000000001) != 0)
  {
    v6 = MEMORY[0x266783B70](0, v5);
  }

  else
  {
    if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v6 = *(v5 + 32);
  }

  v7 = v6;

  v8 = [v7 value];

  if (v8)
  {
    v9 = sub_2664E02C8();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  *a2 = v9;
  a2[1] = v11;
}

uint64_t sub_26633CF9C()
{
  v0 = sub_2664DF248();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2664DF288();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  v8 = sub_2664DF278();
  sub_2664DFF88();
  if (v9)
  {
    sub_2664DF268();
  }

  (*(v1 + 104))(v4, *MEMORY[0x277D5EE18], v0);
  v10 = sub_2664DF2B8();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  sub_2664DF2A8();
  sub_2664DF298();

  sub_2664DF258();

  (*(v1 + 8))(v4, v0);
  return v8;
}

uint64_t INMediaDestination.toRREntity(groupIdentifier:targetApp:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v48 = a1;
  v50 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072C30, &qword_2664E62F0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v40 - v6;
  v8 = sub_2664DE4A8();
  v47 = *(v8 - 8);
  v9 = *(v47 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2664DFE38();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072C38, qword_2664E62F8);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v40 - v19;
  if (a2 && (v21 = sub_2664DF7D8(), v22))
  {
    v46 = v21;
    v49 = v22;
  }

  else
  {

    v49 = 0x80000002664F2F20;
    v46 = 0xD000000000000018;
  }

  v23 = sub_26633CF9C();
  sub_26633CF9C();
  v24 = MEMORY[0x266782230]();

  if (v24)
  {
    v42 = v24;
    v44 = v8;
    v45 = v7;
    v25 = sub_2664DF1C8();
    (*(*(v25 - 8) + 56))(v20, 1, 1, v25);
    v43 = v23;
    v26 = MEMORY[0x2667821D0](v23, v20);
    sub_26633D6B8(v20);
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v27 = __swift_project_value_buffer(v12, qword_280F914F0);
    swift_beginAccess();
    v28 = v13;
    (*(v13 + 16))(v16, v27, v12);

    v29 = sub_2664DFE18();
    v30 = sub_2664E06C8();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v51 = v26;
      v52 = v32;
      *v31 = 136315138;
      sub_2664DF2C8();
      v41 = v11;
      sub_26633D790();
      v33 = sub_2664E0D48();
      v35 = sub_2662A320C(v33, v34, &v52);

      *(v31 + 4) = v35;
      _os_log_impl(&dword_26629C000, v29, v30, "INMediaDestination#toRREntity UsoBuilderConversionUtils.convertEntityBuilderToEntity creating UsoEntity: %s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v32);
      MEMORY[0x266784AD0](v32, -1, -1);
      MEMORY[0x266784AD0](v31, -1, -1);

      (*(v28 + 8))(v16, v12);
      v11 = v41;
    }

    else
    {

      (*(v13 + 8))(v16, v12);
    }

    sub_2664DE498();
    sub_2664DE458();
    (*(v47 + 8))(v11, v44);
    sub_26633D720(v48, v45);
    v38 = v50;
    sub_2664DFEE8();

    v39 = sub_2664DFF28();
    return (*(*(v39 - 8) + 56))(v38, 0, 1, v39);
  }

  else
  {
    v36 = sub_2664DFF28();
    (*(*(v36 - 8) + 56))(v50, 1, 1, v36);
  }
}

uint64_t sub_26633D6B8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072C38, qword_2664E62F8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26633D720(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072C30, &qword_2664E62F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_26633D790()
{
  result = qword_280072C40;
  if (!qword_280072C40)
  {
    sub_2664DF2C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280072C40);
  }

  return result;
}

uint64_t sub_26633D7E8(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v8 = swift_allocObject();
  v9 = a1[3];
  v10 = __swift_mutable_project_boxed_opaque_existential_1(a1, v9);
  v11 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (&v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13);
  v15 = a3[3];
  v16 = __swift_mutable_project_boxed_opaque_existential_1(a3, v15);
  v17 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = (&v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v20 + 16))(v19);
  v21 = a4[3];
  v22 = __swift_mutable_project_boxed_opaque_existential_1(a4, v21);
  v23 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v22);
  v25 = (&v29 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v26 + 16))(v25);
  v27 = sub_26633DA8C(*v13, a2, v19, v25, v8);
  __swift_destroy_boxed_opaque_existential_1Tm(a4);
  __swift_destroy_boxed_opaque_existential_1Tm(a3);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v27;
}

uint64_t sub_26633DA8C(uint64_t a1, uint64_t *a2, _OWORD *a3, _OWORD *a4, uint64_t a5)
{
  v76 = a2;
  v10 = type metadata accessor for MediaPlaybackProvider();
  v100[3] = v10;
  v100[4] = &off_2877F3740;
  v100[0] = a1;
  v99[3] = &type metadata for PlaybackStarter;
  v99[4] = &off_2877EE098;
  v11 = swift_allocObject();
  v99[0] = v11;
  v12 = a3[3];
  v11[3] = a3[2];
  v11[4] = v12;
  v11[5] = a3[4];
  v13 = a3[1];
  v11[1] = *a3;
  v11[2] = v13;
  v98[3] = &type metadata for PlaybackQueueLocationProvider;
  v98[4] = &off_2877E8100;
  v14 = swift_allocObject();
  v98[0] = v14;
  v15 = a4[3];
  v14[3] = a4[2];
  v14[4] = v15;
  v14[5] = a4[4];
  v16 = a4[1];
  v14[1] = *a4;
  v14[2] = v16;
  sub_2662A5550(v100, v96);
  sub_2662A5550(a2, v95);
  sub_2662A5550(v99, v93);
  sub_2662A5550(v98, v91);
  v17 = v97;
  v18 = __swift_mutable_project_boxed_opaque_existential_1(v96, v97);
  v19 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v21 = (&v75 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v22 + 16))(v21);
  v23 = v94;
  v24 = __swift_mutable_project_boxed_opaque_existential_1(v93, v94);
  v25 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v24);
  v27 = (&v75 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v28 + 16))(v27);
  v29 = v92;
  v30 = __swift_mutable_project_boxed_opaque_existential_1(v91, v92);
  v31 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v30);
  v33 = (&v75 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v34 + 16))(v33);
  v35 = *v21;
  v90[3] = v10;
  v90[4] = &off_2877F3740;
  v90[0] = v35;
  v89[3] = &type metadata for PlaybackStarter;
  v89[4] = &off_2877EE098;
  v36 = swift_allocObject();
  v89[0] = v36;
  v37 = v27[3];
  v36[3] = v27[2];
  v36[4] = v37;
  v36[5] = v27[4];
  v38 = v27[1];
  v36[1] = *v27;
  v36[2] = v38;
  v87 = &type metadata for PlaybackQueueLocationProvider;
  v88 = &off_2877E8100;
  v39 = swift_allocObject();
  *&v86 = v39;
  v40 = v33[3];
  v39[3] = v33[2];
  v39[4] = v40;
  v39[5] = v33[4];
  v41 = v33[1];
  v39[1] = *v33;
  v39[2] = v41;
  sub_2662A5550(v90, a5 + 16);
  sub_2662A5550(v95, a5 + 56);
  sub_2662A5550(v89, a5 + 104);
  sub_2662A5550(v90, v84);
  sub_2662A5550(v95, v83);
  sub_2662A5550(v89, v81);
  v42 = v85;
  v43 = __swift_mutable_project_boxed_opaque_existential_1(v84, v85);
  v44 = *(*(v42 - 8) + 64);
  MEMORY[0x28223BE20](v43);
  v46 = (&v75 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v47 + 16))(v46);
  v48 = v82;
  v49 = __swift_mutable_project_boxed_opaque_existential_1(v81, v82);
  v50 = *(*(v48 - 8) + 64);
  MEMORY[0x28223BE20](v49);
  v52 = (&v75 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v53 + 16))(v52);
  v54 = *v46;
  v80[3] = v10;
  v80[4] = &off_2877F3740;
  v79 = &off_2877EE098;
  v80[0] = v54;
  v78 = &type metadata for PlaybackStarter;
  v55 = swift_allocObject();
  v77[0] = v55;
  v56 = v52[3];
  v55[3] = v52[2];
  v55[4] = v56;
  v55[5] = v52[4];
  v57 = v52[1];
  v55[1] = *v52;
  v55[2] = v57;
  type metadata accessor for LocalPlaybackHelper();
  v58 = swift_allocObject();
  v59 = __swift_mutable_project_boxed_opaque_existential_1(v80, v10);
  v60 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v59);
  v62 = (&v75 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v63 + 16))(v62);
  v64 = v78;
  v65 = __swift_mutable_project_boxed_opaque_existential_1(v77, v78);
  v66 = *(v64[-1].Description + 8);
  MEMORY[0x28223BE20](v65);
  v68 = (&v75 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v69 + 16))(v68);
  v70 = *v62;
  v58[5] = v10;
  v58[6] = &off_2877F3740;
  v58[2] = v70;
  v58[15] = &type metadata for PlaybackStarter;
  v58[16] = &off_2877EE098;
  v71 = swift_allocObject();
  v58[12] = v71;
  v72 = v68[3];
  v71[3] = v68[2];
  v71[4] = v72;
  v71[5] = v68[4];
  v73 = v68[1];
  v71[1] = *v68;
  v71[2] = v73;
  sub_2662A8618(v83, (v58 + 7));
  __swift_destroy_boxed_opaque_existential_1Tm(v77);
  __swift_destroy_boxed_opaque_existential_1Tm(v80);
  __swift_destroy_boxed_opaque_existential_1Tm(v76);
  __swift_destroy_boxed_opaque_existential_1Tm(v95);
  __swift_destroy_boxed_opaque_existential_1Tm(v98);
  __swift_destroy_boxed_opaque_existential_1Tm(v99);
  __swift_destroy_boxed_opaque_existential_1Tm(v100);
  __swift_destroy_boxed_opaque_existential_1Tm(v89);
  __swift_destroy_boxed_opaque_existential_1Tm(v90);
  __swift_destroy_boxed_opaque_existential_1Tm(v81);
  __swift_destroy_boxed_opaque_existential_1Tm(v84);
  *(a5 + 96) = v58;
  sub_2662A8618(&v86, a5 + 144);
  __swift_destroy_boxed_opaque_existential_1Tm(v91);
  __swift_destroy_boxed_opaque_existential_1Tm(v93);
  __swift_destroy_boxed_opaque_existential_1Tm(v96);
  return a5;
}

uint64_t static Task<>.withCallback<A>(_:operation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072BD0, &qword_2664E3550);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v17 - v12;
  v14 = sub_2664E05C8();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = a5;
  v15[5] = a3;
  v15[6] = a4;
  v15[7] = a1;
  v15[8] = a2;

  sub_26633E760(0, 0, v13, &unk_2664E6360, v15);
}

{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072BD0, &qword_2664E3550);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v17 - v12;
  v14 = sub_2664E05C8();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = a5;
  v15[5] = a1;
  v15[6] = a2;
  v15[7] = a3;
  v15[8] = a4;

  sub_26633E760(0, 0, v13, &unk_2664E6370, v15);
}

uint64_t sub_26633E474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int *a6, uint64_t a7, uint64_t a8)
{
  v8[3] = a5;
  v8[4] = a8;
  v8[2] = a4;
  v10 = *(a8 - 8);
  v8[5] = v10;
  v11 = *(v10 + 64) + 15;
  v12 = swift_task_alloc();
  v8[6] = v12;
  v16 = (a6 + *a6);
  v13 = a6[1];
  v14 = swift_task_alloc();
  v8[7] = v14;
  *v14 = v8;
  v14[1] = sub_26633E5CC;

  return v16(v12);
}

uint64_t sub_26633E5CC()
{
  v1 = *(*v0 + 56);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_26633E6C8, 0, 0);
}

uint64_t sub_26633E6C8()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  (*(v0 + 16))(v1);
  (*(v2 + 8))(v1, v4);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_26633E760(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072BD0, &qword_2664E3550);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_26633EF94(a3, v27 - v11);
  v13 = sub_2664E05C8();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_26633F004(v12);
  }

  else
  {
    sub_2664E05B8();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_2664E0578();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_2664E0338() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_26633F004(a3);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_26633F004(a3);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_26633EA20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_280073B30, &qword_2664E4E50);
  v9 = sub_2664E0ED8();
  v8[7] = v9;
  v10 = *(v9 - 8);
  v8[8] = v10;
  v11 = *(v10 + 64) + 15;
  v8[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26633EB10, 0, 0);
}

uint64_t sub_26633EB10()
{
  v1 = *(v0 + 48);
  v2 = swift_task_alloc();
  *(v0 + 80) = v2;
  v3 = *(v0 + 16);
  *(v2 + 16) = v1;
  *(v2 + 24) = v3;
  v4 = *(MEMORY[0x277D5C200] + 4);
  v5 = swift_task_alloc();
  *(v0 + 88) = v5;
  *v5 = v0;
  v5[1] = sub_26633EBE4;
  v6 = *(v0 + 72);
  v7 = *(v0 + 48);

  return MEMORY[0x2821BBDF0](v6, &unk_2664E6388, v2, v7);
}

uint64_t sub_26633EBE4()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_26633ECFC, 0, 0);
}

uint64_t sub_26633ECFC()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = *(v0 + 56);
  v4 = *(v0 + 40);
  (*(v0 + 32))(v1);
  (*(v2 + 8))(v1, v3);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_26633ED94(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_2662C1890;

  return sub_26633EA20(a1, v4, v5, v7, v8, v9, v10, v6);
}

uint64_t objectdestroyTm_0()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[6];

  v3 = v0[8];

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_26633EEB8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_2662BD660;

  return sub_26633E474(a1, v4, v5, v7, v8, v9, v10, v6);
}

uint64_t sub_26633EF94(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072BD0, &qword_2664E3550);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26633F004(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072BD0, &qword_2664E3550);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26633F06C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2662C1890;

  return sub_266396550(a1, v5);
}

uint64_t sub_26633F124(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2662BD660;

  return sub_2662BD568(a1, v5);
}

void sub_26633F1D8(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v67 = sub_2664DFE38();
  v65 = *(v67 - 8);
  v10 = *(v65 + 64);
  v11 = MEMORY[0x28223BE20](v67);
  v13 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v62 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v62 - v17;
  v19 = a1[3];
  v20 = a1[4];
  v21 = a1[5];
  v22 = swift_allocObject();
  *(v22 + 16) = a3;
  *(v22 + 24) = a4;
  v66 = v22;
  if (*(v19 + 16))
  {
    v23 = qword_280F914E8;
    swift_retain_n();
    if (v23 != -1)
    {
      swift_once();
    }

    v24 = v67;
    v25 = __swift_project_value_buffer(v67, qword_280F914F0);
    swift_beginAccess();
    v26 = v65;
    (*(v65 + 16))(v16, v25, v24);
    v27 = sub_2664DFE18();
    v28 = sub_2664E06C8();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_26629C000, v27, v28, "PlaybackCreateRadioProvider#createRadioFromNowPlaying Executing logic for hashedRouteUIDs (WHA)", v29, 2u);
      MEMORY[0x266784AD0](v29, -1, -1);
    }

    (*(v26 + 8))(v16, v24);
    sub_2662C1744(0, &qword_280072C48, 0x277D27850);
    v30 = [swift_getObjCClassFromMetadata() systemMediaApplicationDestination];
    v31 = sub_2664E0488();
    v32 = swift_allocObject();
    v33 = v66;
    *(v32 + 16) = sub_26633FE4C;
    *(v32 + 24) = v33;
    aBlock[4] = sub_26631D1BC;
    aBlock[5] = v32;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2663A0C48;
    aBlock[3] = &block_descriptor_12;
    v34 = _Block_copy(aBlock);

    [v30 resolveWithHashedRouteIdentifiers:v31 audioRoutingInfo:0 completion:v34];
    _Block_release(v34);
  }

  else
  {
    v64 = a4;
    if (v21)
    {
      v63 = v21;
      v35 = v5;
      v36 = qword_280F914E8;
      swift_retain_n();
      if (v36 != -1)
      {
        swift_once();
      }

      v37 = v67;
      v38 = __swift_project_value_buffer(v67, qword_280F914F0);
      swift_beginAccess();
      v39 = v65;
      (*(v65 + 16))(v13, v38, v37);
      v40 = sub_2664DFE18();
      v41 = sub_2664E06C8();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        *v42 = 0;
        _os_log_impl(&dword_26629C000, v40, v41, "PlaybackCreateRadioProvider#createRadioFromNowPlaying Executing logic for seRouteId", v42, 2u);
        MEMORY[0x266784AD0](v42, -1, -1);
      }

      (*(v39 + 8))(v13, v67);
      sub_2662C1744(0, &qword_280072C48, 0x277D27850);
      v43 = [swift_getObjCClassFromMetadata() systemMediaApplicationDestination];
      sub_266340E4C(v35, aBlock);
      sub_266340E4C(aBlock, &v69);
      v44 = swift_allocObject();
      v45 = v72;
      *(v44 + 48) = v71;
      *(v44 + 64) = v45;
      *(v44 + 80) = v73;
      v46 = v70;
      *(v44 + 16) = v69;
      *(v44 + 32) = v46;
      v47 = v63;
      *(v44 + 96) = v20;
      *(v44 + 104) = v47;
      v48 = v66;
      *(v44 + 112) = sub_26633FE4C;
      *(v44 + 120) = v48;
      v68[4] = sub_266340F24;
      v68[5] = v44;
      v68[0] = MEMORY[0x277D85DD0];
      v68[1] = 1107296256;
      v68[2] = sub_2663A0C48;
      v68[3] = &block_descriptor_12_0;
      v49 = _Block_copy(v68);

      [v43 resolveWithRouteIdentifiers:0 audioRoutingInfo:0 completion:v49];
      _Block_release(v49);

      sub_266340EF4(aBlock);
    }

    else
    {
      sub_266340E4C(v5, aBlock);
      v50 = qword_280F914E8;
      swift_retain_n();
      v51 = a2;
      if (v50 != -1)
      {
        swift_once();
      }

      v52 = v67;
      v53 = __swift_project_value_buffer(v67, qword_280F914F0);
      swift_beginAccess();
      v54 = v65;
      (*(v65 + 16))(v18, v53, v52);
      v55 = sub_2664DFE18();
      v56 = sub_2664E06E8();
      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        *v57 = 0;
        _os_log_impl(&dword_26629C000, v55, v56, "MediaPlaybackProvider#companionOriginIfAvailable On non-watch. Returning nil", v57, 2u);
        MEMORY[0x266784AD0](v57, -1, -1);
      }

      (*(v54 + 8))(v18, v52);
      sub_266340E4C(aBlock, &v69);
      v58 = swift_allocObject();
      v59 = v72;
      *(v58 + 48) = v71;
      *(v58 + 64) = v59;
      *(v58 + 80) = v73;
      v60 = v70;
      *(v58 + 16) = v69;
      *(v58 + 32) = v60;
      v61 = v64;
      *(v58 + 96) = a3;
      *(v58 + 104) = v61;

      sub_2664AD07C(v51, sub_266340E84, v58);

      sub_266340EF4(aBlock);
    }
  }
}

void sub_26633FA18(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2664DFE38();
  v7 = *(v6 - 8);
  v8 = v7[8];
  v9 = MEMORY[0x28223BE20](v6);
  v11 = v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v29 - v12;
  if (a1)
  {
    v14 = objc_allocWithZone(MEMORY[0x277D27828]);
    v15 = a1;
    v16 = [v14 init];
    v17 = swift_allocObject();
    *(v17 + 16) = a2;
    *(v17 + 24) = a3;
    v33 = sub_266340F90;
    v34 = v17;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    v31 = sub_26634045C;
    v32 = &block_descriptor_24;
    v18 = _Block_copy(&aBlock);

    [v16 sendCommand:121 toDestination:v15 withOptions:0 completion:v18];
    _Block_release(v18);
  }

  else
  {
    v29[0] = a2;
    v29[1] = a3;
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v19 = __swift_project_value_buffer(v6, qword_280F914F0);
    swift_beginAccess();
    v20 = v7[2];
    v20(v13, v19, v6);
    v21 = sub_2664DFE18();
    v22 = sub_2664E06D8();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_26629C000, v21, v22, "PlaybackCreateRadioProvider#createRadioFromNowPlaying unexpected nil MPCAssistantRemoteControlDestination from media remote", v23, 2u);
      MEMORY[0x266784AD0](v23, -1, -1);
    }

    v24 = v7[1];
    v24(v13, v6);
    v20(v11, v19, v6);
    v25 = sub_2664DFE18();
    v26 = sub_2664E06B8();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *&aBlock = v28;
      *v27 = 134218498;
      *(v27 + 4) = 9;
      *(v27 + 12) = 2048;
      *(v27 + 14) = 13;
      *(v27 + 22) = 2080;
      *(v27 + 24) = sub_2662A320C(0x736544524D6C694ELL, 0xE900000000000074, &aBlock);
      _os_log_impl(&dword_26629C000, v25, v26, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v27, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v28);
      MEMORY[0x266784AD0](v28, -1, -1);
      MEMORY[0x266784AD0](v27, -1, -1);
    }

    v24(v11, v6);
    aBlock = xmmword_2664E6390;
    v31 = 0xE900000000000074;
    LOBYTE(v32) = 1;
    (v29[0])(&aBlock);
    sub_2662D2F30(aBlock, *(&aBlock + 1), v31, v32);
  }
}

uint64_t sub_26633FE54(void *a1, unint64_t a2, uint64_t (*a3)(__int128 *), uint64_t a4)
{
  v62 = a4;
  v7 = sub_2664DFE38();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v61 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v55 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v55 - v15;
  v17 = sub_2662C1744(0, &qword_280F8F550, 0x277CCABB0);
  v18 = sub_2664E08F8();
  *&v66 = v18;
  v64 = &v66;
  v19 = sub_2662C5584(sub_266340F98, v63, a2);

  if (v19)
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v20 = __swift_project_value_buffer(v7, qword_280F914F0);
    swift_beginAccess();
    v21 = v8;
    (*(v8 + 16))(v16, v20, v7);
    v22 = sub_2664DFE18();
    v23 = sub_2664E06C8();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_26629C000, v22, v23, "PlaybackCreateRadioProvider#createRadioFromNowPlaying Create radio success", v24, 2u);
      MEMORY[0x266784AD0](v24, -1, -1);
    }

    (*(v21 + 8))(v16, v7);
    v66 = 0uLL;
    v68 = 0;
    v67 = 0;
    return a3(&v66);
  }

  else
  {
    v60 = a3;
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v26 = __swift_project_value_buffer(v7, qword_280F914F0);
    swift_beginAccess();
    v27 = v8;
    v28 = *(v8 + 16);
    v28(v14, v26, v7);
    v29 = a1;

    v30 = sub_2664DFE18();
    v59 = v7;
    v31 = v30;
    v32 = sub_2664E06D8();

    v58 = v32;
    v33 = v32;
    v34 = v31;
    if (os_log_type_enabled(v31, v33))
    {
      v35 = swift_slowAlloc();
      v57 = v28;
      v36 = v35;
      v37 = swift_slowAlloc();
      v65 = a1;
      *&v66 = v37;
      *v36 = 136315394;
      v38 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072C50, &qword_2664E63C0);
      v39 = sub_2664E0318();
      v41 = sub_2662A320C(v39, v40, &v66);
      v56 = v27;
      v42 = v26;
      v43 = v41;

      *(v36 + 4) = v43;
      *(v36 + 12) = 2080;
      v44 = MEMORY[0x2667834D0](a2, v17);
      v46 = sub_2662A320C(v44, v45, &v66);
      v26 = v42;

      *(v36 + 14) = v46;
      _os_log_impl(&dword_26629C000, v34, v58, "PlaybackCreateRadioProvider#createRadioFromNowPlaying Create radio failed. Error: %s, statuses: %s", v36, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266784AD0](v37, -1, -1);
      v47 = v36;
      v28 = v57;
      MEMORY[0x266784AD0](v47, -1, -1);

      v27 = v56;
    }

    else
    {
    }

    v48 = *(v27 + 8);
    v49 = v59;
    v48(v14, v59);
    v50 = v61;
    v28(v61, v26, v49);
    v51 = sub_2664DFE18();
    v52 = sub_2664E06B8();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      *&v66 = v54;
      *v53 = 134218498;
      *(v53 + 4) = 9;
      *(v53 + 12) = 2048;
      *(v53 + 14) = 8;
      *(v53 + 22) = 2080;
      *(v53 + 24) = sub_2662A320C(0xD000000000000011, 0x80000002664F5080, &v66);
      _os_log_impl(&dword_26629C000, v51, v52, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v53, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v54);
      MEMORY[0x266784AD0](v54, -1, -1);
      MEMORY[0x266784AD0](v53, -1, -1);
    }

    v48(v50, v49);
    v66 = xmmword_2664E63A0;
    v67 = 0x80000002664F5080;
    v68 = 1;
    v60(&v66);
    return sub_2662D2F30(v66, *(&v66 + 1), v67, v68);
  }
}

uint64_t sub_26634045C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  sub_2662C1744(0, &qword_280F8F550, 0x277CCABB0);
  v5 = sub_2664E04A8();

  v6 = a2;
  v4(a2, v5);
}

uint64_t sub_266340500(uint64_t a1, void *a2, uint64_t a3, void (*a4)(void), uint64_t a5)
{
  v10 = sub_2664DFE38();
  v80 = *(v10 - 8);
  v11 = *(v80 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v78 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v75 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v75 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v75 - v20;
  if (!a2)
  {
    v79 = a5;
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v34 = __swift_project_value_buffer(v10, qword_280F914F0);
    swift_beginAccess();
    v35 = v80;
    (*(v80 + 16))(v21, v34, v10);
    v36 = sub_2664DFE18();
    v37 = sub_2664E06C8();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v76 = a3;
      v39 = v38;
      v40 = swift_slowAlloc();
      v84 = v40;
      *v39 = 136315138;
      v85 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800726A8, &qword_2664E4B00);
      v41 = sub_2664E0318();
      v78 = v10;
      v43 = a4;
      v44 = sub_2662A320C(v41, v42, &v84);

      *(v39 + 4) = v44;
      a4 = v43;
      _os_log_impl(&dword_26629C000, v36, v37, "group leader endpoint %s", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v40);
      MEMORY[0x266784AD0](v40, -1, -1);
      v45 = v39;
      a3 = v76;
      MEMORY[0x266784AD0](v45, -1, -1);

      (*(v35 + 8))(v21, v78);
    }

    else
    {

      (*(v35 + 8))(v21, v10);
    }

    v46 = __swift_project_boxed_opaque_existential_1((a3 + 40), *(a3 + 64));
    v47 = swift_allocObject();
    *(v47 + 16) = a4;
    *(v47 + 24) = v79;
    v48 = *v46;

    sub_2664A3CBC(a1, sub_266341020, v47);
  }

  v76 = a3;
  type metadata accessor for CFError(0);
  sub_2662F0D58();
  v22 = swift_allocError();
  *v23 = a2;
  v75 = a2;
  v24 = sub_2664DE198();

  v25 = [v24 code];
  v77 = a4;
  if (v25 == 33)
  {
    v79 = a1;
    v26 = [v24 domain];
    result = sub_2664E02C8();
    if (!*MEMORY[0x277D27AE0])
    {
      __break(1u);
      return result;
    }

    v29 = result;
    v30 = v28;

    if (v29 == sub_2664E02C8() && v30 == v31)
    {

      v32 = v77;
      v33 = v79;
LABEL_14:
      if (qword_280F914E8 != -1)
      {
        swift_once();
      }

      v50 = __swift_project_value_buffer(v10, qword_280F914F0);
      swift_beginAccess();
      (*(v80 + 16))(v19, v50, v10);
      v51 = sub_2664DFE18();
      v52 = sub_2664E06C8();
      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        *v53 = 0;
        _os_log_impl(&dword_26629C000, v51, v52, "group leader legacy", v53, 2u);
        MEMORY[0x266784AD0](v53, -1, -1);
      }

      (*(v80 + 8))(v19, v10);
      v54 = __swift_project_boxed_opaque_existential_1((v76 + 40), *(v76 + 64));
      v55 = swift_allocObject();
      *(v55 + 16) = v32;
      *(v55 + 24) = a5;
      v56 = *v54;

      sub_2664A3CBC(v33, sub_266340F74, v55);
    }

    v49 = sub_2664E0D88();

    v32 = v77;
    v33 = v79;
    if (v49)
    {
      goto LABEL_14;
    }
  }

  v79 = a5;

  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v57 = __swift_project_value_buffer(v10, qword_280F914F0);
  swift_beginAccess();
  v58 = v80;
  v76 = *(v80 + 16);
  (v76)(v16, v57, v10);
  v59 = v75;
  v60 = sub_2664DFE18();
  v61 = sub_2664E06D8();

  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    *&v81 = v63;
    *v62 = 136315138;
    v85 = a2;
    v64 = v59;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800726B8, &qword_2664E4B08);
    v65 = sub_2664E0318();
    v67 = sub_2662A320C(v65, v66, &v81);

    *(v62 + 4) = v67;
    _os_log_impl(&dword_26629C000, v60, v61, "group leader endpoint not found: %s", v62, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v63);
    v68 = v63;
    v58 = v80;
    MEMORY[0x266784AD0](v68, -1, -1);
    MEMORY[0x266784AD0](v62, -1, -1);
  }

  v69 = *(v58 + 8);
  v69(v16, v10);
  v70 = v78;
  (v76)(v78, v57, v10);
  v71 = sub_2664DFE18();
  v72 = sub_2664E06B8();
  if (os_log_type_enabled(v71, v72))
  {
    v73 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    *&v81 = v74;
    *v73 = 134218498;
    *(v73 + 4) = 9;
    *(v73 + 12) = 2048;
    *(v73 + 14) = 8;
    *(v73 + 22) = 2080;
    *(v73 + 24) = sub_2662A320C(0xD00000000000001BLL, 0x80000002664F4660, &v81);
    _os_log_impl(&dword_26629C000, v71, v72, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v73, 0x20u);
    __swift_destroy_boxed_opaque_existential_1Tm(v74);
    MEMORY[0x266784AD0](v74, -1, -1);
    MEMORY[0x266784AD0](v73, -1, -1);
  }

  v69(v70, v10);
  v81 = xmmword_2664E63B0;
  v82 = 0x80000002664F4660;
  v83 = 1;
  v77(&v81);
  return sub_2662D2F30(v81, *(&v81 + 1), v82, v83);
}

uint64_t sub_266340DC0(unsigned __int16 *a1, void (*a2)(uint64_t *))
{
  v4 = *(a1 + 2);
  if (v4)
  {
    v5 = *(a1 + 1);
    v7 = *a1;
    v8 = v5;
    v9 = v4;
    v10 = 1;

    a2(&v7);
    return sub_2662D2F30(v7, v8, v9, v10);
  }

  else
  {
    v7 = 0;
    v8 = 0;
    v10 = 0;
    v9 = 0;
    return (a2)(&v7);
  }
}

uint64_t sub_266340E90(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_2662C1744(0, &qword_280F8F550, 0x277CCABB0);
  return sub_2664E0918() & 1;
}

void sub_266340F24(uint64_t *a1)
{
  v2 = v1[12];
  v3 = v1[13];
  v4 = v1[14];
  v5 = v1[15];
  v6 = sub_2664AD590(a1, v2, v3);
  v4();
}

uint64_t sub_266340F98(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  v4 = *v2;
  sub_2662C1744(0, &qword_280F8F550, 0x277CCABB0);
  return sub_2664E0918() & 1;
}

uint64_t sub_266341038(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA00000000007374;
  v3 = 0x6C75736552706F74;
  v4 = a1;
  v5 = 0xE800000000000000;
  v6 = 0x736E6F6974617473;
  if (a1 != 6)
  {
    v6 = 0x6169726F74696465;
    v5 = 0xEE00736D6574496CLL;
  }

  v7 = 0x6970456F69646172;
  v8 = 0xED00007365646F73;
  if (a1 != 4)
  {
    v7 = 0x73676E6F73;
    v8 = 0xE500000000000000;
  }

  if (a1 <= 5u)
  {
    v6 = v7;
    v5 = v8;
  }

  v9 = 0xE700000000000000;
  v10 = 0x73747369747261;
  if (a1 != 2)
  {
    v10 = 0x7473696C79616C70;
    v9 = 0xE900000000000073;
  }

  v11 = 0xE600000000000000;
  v12 = 0x736D75626C61;
  if (!a1)
  {
    v12 = 0x6C75736552706F74;
    v11 = 0xEA00000000007374;
  }

  if (a1 <= 1u)
  {
    v10 = v12;
    v9 = v11;
  }

  if (a1 <= 3u)
  {
    v13 = v10;
  }

  else
  {
    v13 = v6;
  }

  if (v4 <= 3)
  {
    v14 = v9;
  }

  else
  {
    v14 = v5;
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v2 = 0xE800000000000000;
        if (v13 != 0x736E6F6974617473)
        {
          goto LABEL_41;
        }
      }

      else
      {
        v2 = 0xEE00736D6574496CLL;
        if (v13 != 0x6169726F74696465)
        {
          goto LABEL_41;
        }
      }
    }

    else if (a2 == 4)
    {
      v2 = 0xED00007365646F73;
      if (v13 != 0x6970456F69646172)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v2 = 0xE500000000000000;
      if (v13 != 0x73676E6F73)
      {
        goto LABEL_41;
      }
    }
  }

  else
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v2 = 0xE700000000000000;
        if (v13 != 0x73747369747261)
        {
          goto LABEL_41;
        }

        goto LABEL_38;
      }

      v3 = 0x7473696C79616C70;
      v2 = 0xE900000000000073;
    }

    else if (a2)
    {
      v2 = 0xE600000000000000;
      if (v13 != 0x736D75626C61)
      {
        goto LABEL_41;
      }

      goto LABEL_38;
    }

    if (v13 != v3)
    {
LABEL_41:
      v15 = sub_2664E0D88();
      goto LABEL_42;
    }
  }

LABEL_38:
  if (v14 != v2)
  {
    goto LABEL_41;
  }

  v15 = 1;
LABEL_42:

  return v15 & 1;
}

uint64_t sub_2663412C8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6D7269666E6F63;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x6F666E4965726F6DLL;
    }

    else
    {
      v4 = 0x6C65636E6163;
    }

    if (v3 == 2)
    {
      v5 = 0xE800000000000000;
    }

    else
    {
      v5 = 0xE600000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x7463656A6572;
    }

    else
    {
      v4 = 0x6D7269666E6F63;
    }

    if (v3)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  v6 = 0xE700000000000000;
  v7 = 0xE800000000000000;
  v8 = 0x6F666E4965726F6DLL;
  if (a2 != 2)
  {
    v8 = 0x6C65636E6163;
    v7 = 0xE600000000000000;
  }

  if (a2)
  {
    v2 = 0x7463656A6572;
    v6 = 0xE600000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2664E0D88();
  }

  return v11 & 1;
}

uint64_t sub_2663413F8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 1954047342;
    }

    else
    {
      v4 = 7827310;
    }

    if (v2)
    {
      v3 = 0xE400000000000000;
    }

    else
    {
      v3 = 0xE300000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xE500000000000000;
    v4 = 0x726574616CLL;
  }

  else if (a1 == 3)
  {
    v3 = 0xE700000000000000;
    v4 = 0x6E776F6E6B6E75;
  }

  else
  {
    v4 = 0x726F707075736E75;
    v3 = 0xEB00000000646574;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 1954047342;
    }

    else
    {
      v9 = 7827310;
    }

    if (a2)
    {
      v8 = 0xE400000000000000;
    }

    else
    {
      v8 = 0xE300000000000000;
    }

    if (v4 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0xE700000000000000;
    v6 = 0x6E776F6E6B6E75;
    if (a2 != 3)
    {
      v6 = 0x726F707075736E75;
      v5 = 0xEB00000000646574;
    }

    if (a2 == 2)
    {
      v7 = 0x726574616CLL;
    }

    else
    {
      v7 = v6;
    }

    if (a2 == 2)
    {
      v8 = 0xE500000000000000;
    }

    else
    {
      v8 = v5;
    }

    if (v4 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v3 != v8)
  {
LABEL_33:
    v10 = sub_2664E0D88();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_266341574(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 6647407;
    }

    else
    {
      v4 = 1701736302;
    }

    if (v2)
    {
      v3 = 0xE300000000000000;
    }

    else
    {
      v3 = 0xE400000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xE300000000000000;
    v4 = 7105633;
  }

  else if (a1 == 3)
  {
    v3 = 0xE700000000000000;
    v4 = 0x6E776F6E6B6E75;
  }

  else
  {
    v4 = 0x726F707075736E75;
    v3 = 0xEB00000000646574;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 6647407;
    }

    else
    {
      v9 = 1701736302;
    }

    if (a2)
    {
      v8 = 0xE300000000000000;
    }

    else
    {
      v8 = 0xE400000000000000;
    }

    if (v4 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0xE700000000000000;
    v6 = 0x6E776F6E6B6E75;
    if (a2 != 3)
    {
      v6 = 0x726F707075736E75;
      v5 = 0xEB00000000646574;
    }

    if (a2 == 2)
    {
      v7 = 7105633;
    }

    else
    {
      v7 = v6;
    }

    if (a2 == 2)
    {
      v8 = 0xE300000000000000;
    }

    else
    {
      v8 = v5;
    }

    if (v4 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v3 != v8)
  {
LABEL_33:
    v10 = sub_2664E0D88();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_2663416E8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000064;
  v3 = 0x6574656C706D6F63;
  v4 = a1;
  v5 = 0x80000002664F3300;
  v6 = 0x656C7069746C756DLL;
  v7 = 0xEE0064656C696146;
  if (a1 != 4)
  {
    v6 = 0x656C706D6F636E69;
    v7 = 0xEA00000000006574;
  }

  if (a1 == 3)
  {
    v6 = 0xD000000000000013;
  }

  else
  {
    v5 = v7;
  }

  v8 = 0xE600000000000000;
  v9 = 0x64656C696166;
  if (a1 != 1)
  {
    v9 = 0xD000000000000013;
    v8 = 0x80000002664F32E0;
  }

  if (!a1)
  {
    v9 = 0x6574656C706D6F63;
    v8 = 0xE900000000000064;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v6;
  }

  if (v4 <= 2)
  {
    v11 = v8;
  }

  else
  {
    v11 = v5;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v2 = 0x80000002664F3300;
      if (v10 != 0xD000000000000013)
      {
        goto LABEL_32;
      }
    }

    else if (a2 == 4)
    {
      v2 = 0xEE0064656C696146;
      if (v10 != 0x656C7069746C756DLL)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v2 = 0xEA00000000006574;
      if (v10 != 0x656C706D6F636E69)
      {
        goto LABEL_32;
      }
    }
  }

  else
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xE600000000000000;
        if (v10 != 0x64656C696166)
        {
          goto LABEL_32;
        }

        goto LABEL_29;
      }

      v3 = 0xD000000000000013;
      v2 = 0x80000002664F32E0;
    }

    if (v10 != v3)
    {
LABEL_32:
      v12 = sub_2664E0D88();
      goto LABEL_33;
    }
  }

LABEL_29:
  if (v11 != v2)
  {
    goto LABEL_32;
  }

  v12 = 1;
LABEL_33:

  return v12 & 1;
}

uint64_t sub_2663418D0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x6E696D7265746564;
    }

    else
    {
      v3 = 0x63697473756F6361;
    }

    if (v2)
    {
      v4 = 0xE900000000000065;
    }

    else
    {
      v4 = 0xEA00000000004449;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0x80000002664F1900;
    v3 = 0xD000000000000014;
  }

  else if (a1 == 3)
  {
    v3 = 0xD000000000000010;
    v4 = 0x80000002664F1920;
  }

  else
  {
    v3 = 0x6964654D6E65706FLL;
    v4 = 0xED00006D65744961;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 0x6E696D7265746564;
    }

    else
    {
      v6 = 0x63697473756F6361;
    }

    if (a2)
    {
      v5 = 0xE900000000000065;
    }

    else
    {
      v5 = 0xEA00000000004449;
    }

    if (v3 != v6)
    {
      goto LABEL_31;
    }
  }

  else if (a2 == 2)
  {
    v5 = 0x80000002664F1900;
    if (v3 != 0xD000000000000014)
    {
      goto LABEL_31;
    }
  }

  else if (a2 == 3)
  {
    v5 = 0x80000002664F1920;
    if (v3 != 0xD000000000000010)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v5 = 0xED00006D65744961;
    if (v3 != 0x6964654D6E65706FLL)
    {
LABEL_31:
      v7 = sub_2664E0D88();
      goto LABEL_32;
    }
  }

  if (v4 != v5)
  {
    goto LABEL_31;
  }

  v7 = 1;
LABEL_32:

  return v7 & 1;
}

uint64_t sub_266341AA4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE600000000000000;
  v4 = 0x62696C656C6F6877;
  v5 = 0xEC00000079726172;
  if (a1 != 6)
  {
    v4 = 0x6E776F6E6B6E75;
    v5 = 0xE700000000000000;
  }

  v6 = 0xE400000000000000;
  v7 = 1684630645;
  if (a1 != 4)
  {
    v7 = 0x6867696C746F7073;
    v6 = 0xE900000000000074;
  }

  if (a1 <= 5u)
  {
    v4 = v7;
    v5 = v6;
  }

  v8 = 0x72657669746C756DLL;
  v9 = 0xEA00000000006573;
  if (a1 != 2)
  {
    v8 = 0x65726F7473;
    v9 = 0xE500000000000000;
  }

  v10 = 0x636E797369726973;
  if (a1)
  {
    v3 = 0xE800000000000000;
  }

  else
  {
    v10 = 0x656369766564;
  }

  if (a1 > 1u)
  {
    v3 = v9;
  }

  else
  {
    v8 = v10;
  }

  if (a1 <= 3u)
  {
    v11 = v8;
  }

  else
  {
    v11 = v4;
  }

  if (v2 <= 3)
  {
    v12 = v3;
  }

  else
  {
    v12 = v5;
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v13 = 0xEC00000079726172;
        if (v11 != 0x62696C656C6F6877)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v13 = 0xE700000000000000;
        if (v11 != 0x6E776F6E6B6E75)
        {
LABEL_45:
          v14 = sub_2664E0D88();
          goto LABEL_46;
        }
      }
    }

    else if (a2 == 4)
    {
      v13 = 0xE400000000000000;
      if (v11 != 1684630645)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v13 = 0xE900000000000074;
      if (v11 != 0x6867696C746F7073)
      {
        goto LABEL_45;
      }
    }
  }

  else if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v13 = 0xEA00000000006573;
      if (v11 != 0x72657669746C756DLL)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v13 = 0xE500000000000000;
      if (v11 != 0x65726F7473)
      {
        goto LABEL_45;
      }
    }
  }

  else if (a2)
  {
    v13 = 0xE800000000000000;
    if (v11 != 0x636E797369726973)
    {
      goto LABEL_45;
    }
  }

  else
  {
    v13 = 0xE600000000000000;
    if (v11 != 0x656369766564)
    {
      goto LABEL_45;
    }
  }

  if (v12 != v13)
  {
    goto LABEL_45;
  }

  v14 = 1;
LABEL_46:

  return v14 & 1;
}

uint64_t sub_266341D20(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA00000000006575;
  v3 = 0x6575516F54646461;
  v4 = a1;
  if (a1 <= 3u)
  {
    v13 = 0x657469726F766166;
    v14 = 0xE900000000000064;
    if (a1 != 2)
    {
      v13 = 0x69726F7661666E75;
      v14 = 0xEB00000000646574;
    }

    v15 = 0x506F546465646461;
    v16 = 0xEF7473696C79616CLL;
    if (!a1)
    {
      v15 = 0x6575516F54646461;
      v16 = 0xEA00000000006575;
    }

    if (a1 <= 1u)
    {
      v11 = v15;
    }

    else
    {
      v11 = v13;
    }

    if (v4 <= 1)
    {
      v12 = v16;
    }

    else
    {
      v12 = v14;
    }
  }

  else
  {
    v5 = 0xE800000000000000;
    v6 = 0x7473614C79616C70;
    v7 = 0x6574664179616C70;
    v8 = 0xE900000000000072;
    if (a1 != 7)
    {
      v7 = 0x4C74736567677573;
      v8 = 0xEB00000000737365;
    }

    if (a1 != 6)
    {
      v6 = v7;
      v5 = v8;
    }

    v9 = 0x417972617262696CLL;
    v10 = 0xEC00000064656464;
    if (a1 != 4)
    {
      v9 = 0x7478654E79616C70;
      v10 = 0xE800000000000000;
    }

    if (a1 <= 5u)
    {
      v11 = v9;
    }

    else
    {
      v11 = v6;
    }

    if (v4 <= 5)
    {
      v12 = v10;
    }

    else
    {
      v12 = v5;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v2 = 0xE900000000000064;
        if (v11 != 0x657469726F766166)
        {
          goto LABEL_49;
        }
      }

      else
      {
        v2 = 0xEB00000000646574;
        if (v11 != 0x69726F7661666E75)
        {
          goto LABEL_49;
        }
      }

      goto LABEL_46;
    }

    if (a2)
    {
      v2 = 0xEF7473696C79616CLL;
      if (v11 != 0x506F546465646461)
      {
        goto LABEL_49;
      }

      goto LABEL_46;
    }
  }

  else
  {
    if (a2 <= 5u)
    {
      if (a2 == 4)
      {
        v2 = 0xEC00000064656464;
        if (v11 != 0x417972617262696CLL)
        {
          goto LABEL_49;
        }
      }

      else
      {
        v2 = 0xE800000000000000;
        if (v11 != 0x7478654E79616C70)
        {
          goto LABEL_49;
        }
      }

      goto LABEL_46;
    }

    if (a2 == 6)
    {
      v2 = 0xE800000000000000;
      if (v11 != 0x7473614C79616C70)
      {
        goto LABEL_49;
      }

      goto LABEL_46;
    }

    if (a2 == 7)
    {
      v2 = 0xE900000000000072;
      if (v11 != 0x6574664179616C70)
      {
        goto LABEL_49;
      }

      goto LABEL_46;
    }

    v3 = 0x4C74736567677573;
    v2 = 0xEB00000000737365;
  }

  if (v11 != v3)
  {
LABEL_49:
    v17 = sub_2664E0D88();
    goto LABEL_50;
  }

LABEL_46:
  if (v12 != v2)
  {
    goto LABEL_49;
  }

  v17 = 1;
LABEL_50:

  return v17 & 1;
}

uint64_t sub_266342030(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x656E6F685069;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x646F50656D6F68;
    }

    else
    {
      v4 = 0x5654656C707061;
    }

    v5 = 0xE700000000000000;
  }

  else
  {
    if (a1)
    {
      v4 = 1684099177;
    }

    else
    {
      v4 = 0x656E6F685069;
    }

    if (v3)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xE600000000000000;
    }
  }

  v6 = 0xE600000000000000;
  v7 = 0x646F50656D6F68;
  if (a2 != 2)
  {
    v7 = 0x5654656C707061;
  }

  if (a2)
  {
    v2 = 1684099177;
    v6 = 0xE400000000000000;
  }

  if (a2 <= 1u)
  {
    v8 = v2;
  }

  else
  {
    v8 = v7;
  }

  if (a2 <= 1u)
  {
    v9 = v6;
  }

  else
  {
    v9 = 0xE700000000000000;
  }

  if (v4 == v8 && v5 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_2664E0D88();
  }

  return v10 & 1;
}

uint64_t static PlaybackItem.Identifier.parse(uri:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_2664DFE08();
  v114 = *(v6 - 8);
  v115 = v6;
  v7 = *(v114 + 64);
  MEMORY[0x28223BE20](v6);
  v113 = &v102 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2664DFE38();
  v117 = *(v9 - 8);
  v118 = v9;
  v10 = *(v117 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v102 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v102 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v111 = &v102 - v18;
  MEMORY[0x28223BE20](v17);
  v20 = &v102 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072BC0, &qword_2664E6030);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v24 = &v102 - v23;
  v25 = sub_2664DE268();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  v29 = &v102 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = a1;
  sub_2664DE258();
  v30 = v26;
  v31 = *(v26 + 48);
  v116 = v25;
  if (v31(v24, 1, v25) == 1)
  {
    sub_2662A9238(v24, &qword_280072BC0, &qword_2664E6030);
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v32 = v118;
    v33 = __swift_project_value_buffer(v118, qword_280F914F0);
    swift_beginAccess();
    v34 = v117;
    (*(v117 + 16))(v13, v33, v32);

    v35 = sub_2664DFE18();
    v36 = sub_2664E06D8();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = a3;
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v119[0] = v39;
      *v38 = 136446210;
      *(v38 + 4) = sub_2662A320C(v112, a2, v119);
      _os_log_impl(&dword_26629C000, v35, v36, "Identifier#parse uri:%{public}s not parseable as URL", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v39);
      MEMORY[0x266784AD0](v39, -1, -1);
      v40 = v38;
      a3 = v37;
      MEMORY[0x266784AD0](v40, -1, -1);
    }

    (*(v34 + 8))(v13, v118);
    sub_2664E0858();
    if (qword_280F91508 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800724D8, &unk_2664E3920);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_2664E36F0;
    v42 = MEMORY[0x277D83C10];
    *(v41 + 56) = MEMORY[0x277D83B88];
    *(v41 + 64) = v42;
    *(v41 + 32) = 1;
    v43 = v113;
    sub_2664DFDF8();
    sub_2664DFDC8();

    result = (*(v114 + 8))(v43, v115);
LABEL_9:
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    return result;
  }

  v110 = a3;
  (*(v26 + 32))(v29, v24, v116);
  v119[1] = sub_2664DE238();
  v119[2] = v45;
  if (qword_280071AD8 != -1)
  {
    swift_once();
  }

  v46 = sub_2664DE098();
  __swift_project_value_buffer(v46, qword_280072C58);
  sub_2662D2EBC();
  v47 = sub_2664E0988();
  v49 = v48;

  v50 = sub_2664DE248();
  v52 = v117;
  if (!v51)
  {
    goto LABEL_22;
  }

  v53 = v51;
  v108 = v50;
  v54 = sub_2664DE228();
  if (v55)
  {
    v56 = v55;
    v57 = HIBYTE(v49) & 0xF;
    if ((v49 & 0x2000000000000000) == 0)
    {
      v57 = v47 & 0xFFFFFFFFFFFFLL;
    }

    if (!v57 || v54 == v47 && v55 == v49 || (v107 = v54, (sub_2664E0D88() & 1) != 0))
    {

      goto LABEL_21;
    }

    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v106 = v53;
    v112 = v56;
    v70 = v118;
    v71 = __swift_project_value_buffer(v118, qword_280F914F0);
    swift_beginAccess();
    v103 = *(v52 + 16);
    v104 = v71;
    v103(v20, v71, v70);

    v72 = sub_2664DFE18();
    v73 = sub_2664E06B8();

    v74 = os_log_type_enabled(v72, v73);
    v109 = v29;
    if (v74)
    {
      v75 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      v119[0] = v76;
      *v75 = 136315138;
      *(v75 + 4) = sub_2662A320C(v47, v49, v119);
      _os_log_impl(&dword_26629C000, v72, v73, "Identifier#parse identifier: %s ", v75, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v76);
      MEMORY[0x266784AD0](v76, -1, -1);
      MEMORY[0x266784AD0](v75, -1, -1);
    }

    v105 = *(v52 + 8);
    v105(v20, v118);
    a3 = v110;
    v77 = v112;

    v78._countAndFlagsBits = v107;
    v78._object = v77;
    PlaybackItem.ContentOrigin.init(rawValue:)(v78);
    if (LOBYTE(v119[0]) == 8)
    {
      v79 = 7;
    }

    else
    {
      v79 = LOBYTE(v119[0]);
    }

    v80 = v106;

    v81._countAndFlagsBits = v108;
    v81._object = v80;
    PlaybackItem.Scheme.init(rawValue:)(v81);
    if (LOBYTE(v119[0]) == 16)
    {
      v82 = 15;
    }

    else
    {
      v82 = LOBYTE(v119[0]);
    }

    LOBYTE(v119[0]) = v82;
    v83 = PlaybackItem.Scheme.rawValue.getter();
    v85 = v111;
    if (v83 == 0x6E776F6E6B6E75 && v84 == 0xE700000000000000)
    {
      goto LABEL_42;
    }

    v86 = sub_2664E0D88();

    if (v86)
    {

      a3 = v110;
      goto LABEL_46;
    }

    if (v79 > 3)
    {
      if (v79 > 5)
      {
        a3 = v110;
        if (v79 != 6)
        {
LABEL_42:

LABEL_43:

LABEL_46:
          v87 = v85;
          v103(v85, v104, v118);
          v88 = v112;

          v89 = v106;

          v90 = sub_2664DFE18();
          v91 = sub_2664E06D8();

          v92 = os_log_type_enabled(v90, v91);
          v93 = v109;
          if (v92)
          {
            v94 = swift_slowAlloc();
            v95 = swift_slowAlloc();
            v119[0] = v95;
            *v94 = 136446466;
            v96 = sub_2662A320C(v108, v89, v119);

            *(v94 + 4) = v96;
            *(v94 + 12) = 2082;
            v97 = sub_2662A320C(v107, v88, v119);

            *(v94 + 14) = v97;
            a3 = v110;
            _os_log_impl(&dword_26629C000, v90, v91, "Identifier#parse unknown scheme:%{public}s or contentOrigin: %{public}s", v94, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x266784AD0](v95, -1, -1);
            MEMORY[0x266784AD0](v94, -1, -1);
          }

          else
          {
          }

          v105(v87, v118);
          sub_2664E0858();
          if (qword_280F91508 != -1)
          {
            swift_once();
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800724D8, &unk_2664E3920);
          v98 = swift_allocObject();
          *(v98 + 16) = xmmword_2664E36F0;
          v99 = MEMORY[0x277D83C10];
          *(v98 + 56) = MEMORY[0x277D83B88];
          *(v98 + 64) = v99;
          *(v98 + 32) = 3;
          v100 = v113;
          sub_2664DFDF8();
          sub_2664DFDC8();

          (*(v114 + 8))(v100, v115);
          result = (*(v30 + 8))(v93, v116);
          goto LABEL_9;
        }
      }

      else
      {
        a3 = v110;
      }
    }

    else
    {
      a3 = v110;
    }

    v101 = sub_2664E0D88();

    if ((v101 & 1) == 0)
    {
      (*(v30 + 8))(v109, v116);

      *a3 = v82 | (v79 << 8);
      a3[1] = v47;
      a3[2] = v49;
      return result;
    }

    goto LABEL_43;
  }

LABEL_21:

LABEL_22:

  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v58 = v118;
  v59 = __swift_project_value_buffer(v118, qword_280F914F0);
  swift_beginAccess();
  (*(v52 + 16))(v16, v59, v58);

  v60 = sub_2664DFE18();
  v61 = sub_2664E06D8();

  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v109 = v29;
    v64 = v52;
    v65 = v63;
    v119[0] = v63;
    *v62 = 136446210;
    *(v62 + 4) = sub_2662A320C(v112, a2, v119);
    _os_log_impl(&dword_26629C000, v60, v61, "Identifier#parse could not initialize Identifier from uri: %{public}s", v62, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v65);
    MEMORY[0x266784AD0](v65, -1, -1);
    MEMORY[0x266784AD0](v62, -1, -1);

    (*(v64 + 8))(v16, v118);
    v29 = v109;
  }

  else
  {

    (*(v52 + 8))(v16, v118);
  }

  sub_2664E0858();
  if (qword_280F91508 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800724D8, &unk_2664E3920);
  v66 = swift_allocObject();
  *(v66 + 16) = xmmword_2664E36F0;
  v67 = MEMORY[0x277D83C10];
  *(v66 + 56) = MEMORY[0x277D83B88];
  *(v66 + 64) = v67;
  *(v66 + 32) = 2;
  v68 = v113;
  sub_2664DFDF8();
  sub_2664DFDC8();

  (*(v114 + 8))(v68, v115);
  result = (*(v30 + 8))(v29, v116);
  v69 = v110;
  *v110 = 0;
  v69[1] = 0;
  v69[2] = 0;
  return result;
}

uint64_t sub_2663430A0()
{
  sub_2664E0B28();

  MEMORY[0x2667833B0](v0[4], v0[5]);
  MEMORY[0x2667833B0](0x6573734173616820, 0xEF203A6F666E4974);
  swift_beginAccess();
  v1 = v0[3];
  if (v1 && (v1 & 0x2000000000000000) == 0)
  {
    v2 = v0[2] & 0xFFFFFFFFFFFFLL;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072C70, &qword_2664E6480);
  v3 = sub_2664E0318();
  MEMORY[0x2667833B0](v3);

  return 0x203A697275;
}

uint64_t PlaybackItem.init(_:assetInfo:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_2664DFE38();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v28[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  static PlaybackItem.Identifier.parse(uri:)(a1, a2, v28);
  v15 = v29;
  if (v29)
  {
    v17 = v28[0];
    v16 = v28[1];
    *(v5 + 32) = a1;
    *(v5 + 40) = a2;
    *(v5 + 48) = v17;
    *(v5 + 56) = v16;
    *(v5 + 64) = v15;
    swift_beginAccess();
    v18 = *(v5 + 24);
    *(v5 + 16) = a3;
    *(v5 + 24) = a4;
  }

  else
  {

    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v19 = __swift_project_value_buffer(v10, qword_280F914F0);
    swift_beginAccess();
    (*(v11 + 16))(v14, v19, v10);

    v20 = sub_2664DFE18();
    v21 = sub_2664E06D8();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v27 = v23;
      *v22 = 136315138;
      v24 = sub_2662A320C(a1, a2, &v27);

      *(v22 + 4) = v24;
      _os_log_impl(&dword_26629C000, v20, v21, "Error creating identifier for uri: %s. Failing initializer", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v23);
      MEMORY[0x266784AD0](v23, -1, -1);
      MEMORY[0x266784AD0](v22, -1, -1);
    }

    else
    {
    }

    (*(v11 + 8))(v14, v10);
    v25 = *(v5 + 24);

    type metadata accessor for PlaybackItem();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v5;
}

uint64_t sub_2663434D4(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v4 + 24);
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
}

uint64_t sub_266343534()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_266343580(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 24);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t PlaybackItem.uri.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t PlaybackItem.identifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 56);
  v2 = *(v1 + 64);
  *a1 = *(v1 + 48);
  *(a1 + 8) = v3;
  *(a1 + 16) = v2;
}

uint64_t PlaybackItem.Identifier.description.getter()
{
  v1 = v0[1];
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  BYTE8(v6) = 0;
  *&v6 = *v0;
  v4 = PlaybackItem.Scheme.rawValue.getter();
  MEMORY[0x2667833B0](v4);

  MEMORY[0x2667833B0](3092282, 0xE300000000000000);
  sub_2664E0C28();
  MEMORY[0x2667833B0](47, 0xE100000000000000);
  MEMORY[0x2667833B0](v2, v3);
  return *(&v6 + 1);
}

unint64_t PlaybackItem.Scheme.rawValue.getter()
{
  result = 0x6172706D61732D78;
  switch(*v0)
  {
    case 1:
      result = 0x6C70706D61732D78;
      break;
    case 2:
      result = 0xD000000000000016;
      break;
    case 3:
      result = 0x656D706D61732D78;
      break;
    case 4:
      result = 0xD000000000000014;
      break;
    case 5:
    case 8:
      result = 0xD000000000000017;
      break;
    case 6:
      result = 0xD000000000000018;
      break;
    case 7:
      result = 0xD00000000000001FLL;
      break;
    case 9:
      result = 0xD000000000000016;
      break;
    case 0xA:
      result = 0x2D616964656D2D78;
      break;
    case 0xB:
      result = 0x6574616572632D78;
      break;
    case 0xC:
      result = 0xD000000000000011;
      break;
    case 0xD:
    case 0xE:
      result = 0xD00000000000001ALL;
      break;
    case 0xF:
      result = 0x6E776F6E6B6E75;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_26634393C()
{
  v0 = sub_2664DE098();
  __swift_allocate_value_buffer(v0, qword_280072C58);
  __swift_project_value_buffer(v0, qword_280072C58);
  return sub_2664DE078();
}

uint64_t PlaybackItem.Identifier.identifier.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t PlaybackItem.Identifier.decodedSiriSyncID.getter()
{
  v1 = sub_2664E0308();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = *(v0 + 1);
  v4 = *(v0 + 8);
  v5 = *(v0 + 16);
  if (v3 <= 1)
  {
    if (v3)
    {
      v7 = sub_2664DE2A8();
      if (v8 >> 60 != 15)
      {
        v9 = v7;
        v10 = v8;
        sub_2664E02F8();
        v11 = sub_2664E02D8();
        v13 = v12;
        sub_2662B79A8(v9, v10);
        if (v13)
        {
          return v11;
        }
      }
    }
  }

  return v4;
}

uint64_t PlaybackItem.Identifier.identifierForSiriSyncID.getter()
{
  v1 = sub_2664E0308();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = *(v0 + 1);
  v5 = *(v0 + 8);
  v4 = *(v0 + 16);
  if (v3 > 1)
  {
    goto LABEL_2;
  }

  if (!*(v0 + 1))
  {
    goto LABEL_2;
  }

  v7 = *(v0 + 8);
  v8 = *(v0 + 16);
  v9 = sub_2664DE2A8();
  if (v10 >> 60 == 15)
  {
    goto LABEL_2;
  }

  v11 = v9;
  v12 = v10;
  sub_2664E02F8();
  v13 = sub_2664E02D8();
  v15 = v14;
  sub_2662B79A8(v11, v12);
  if (v15)
  {
    v5 = v13;
    v4 = v15;
  }

  else
  {
LABEL_2:
  }

  v6 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v6 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6)
  {
    goto LABEL_15;
  }

  if (v3 <= 1 && v3)
  {
  }

  else
  {
    v16 = sub_2664E0D88();

    if ((v16 & 1) == 0)
    {
LABEL_15:
      v17 = 0;
      goto LABEL_21;
    }
  }

  sub_2662D2EBC();
  v18 = sub_2664E0968();

  v19 = *(v18 + 16);
  if (v19)
  {
    v20 = (v18 + 16 + 16 * v19);
    v17 = *v20;
    v21 = v20[1];
  }

  else
  {
    v17 = 0;
  }

  v22 = sub_2662F26E0(1);
  v24 = v23;
  v26 = v25;
  v28 = v27;

  sub_2663487F8(v22, v24, v26, v28, 45, 0xE100000000000000);
LABEL_21:

  return v17;
}

SiriAudioSupport::PlaybackItem::Identifier_optional __swiftcall PlaybackItem.Identifier.init(from:)(Swift::String from)
{
  v137 = v1;
  v138 = sub_2664DFE38();
  v136 = *(v138 - 8);
  v2 = *(v136 + 64);
  v3 = MEMORY[0x28223BE20](v138);
  v135 = &v121 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v128 = &v121 - v6;
  v7 = MEMORY[0x28223BE20](v5);
  v131 = &v121 - v8;
  MEMORY[0x28223BE20](v7);
  v130 = &v121 - v9;
  v10 = sub_2664DF768();
  v11 = *(v10 - 1);
  v132 = v10;
  v133 = v11;
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v129 = &v121 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v121 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v121 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v121 - v21;
  v23 = sub_2664DF748();
  v134 = *(v23 - 8);
  v24 = *(v134 + 64);
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v121 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v25);
  v30 = &v121 - v29;
  v31 = MEMORY[0x28223BE20](v28);
  v33 = (&v121 - v32);
  MEMORY[0x28223BE20](v31);
  v35 = &v121 - v34;
  sub_2664DF778();
  v123 = v27;
  v124 = v30;
  v122 = v17;
  v125 = v20;
  v126 = v22;
  v36 = v133;

  v37 = v134;
  v38 = *(v134 + 16);
  v127 = v35;
  v38(v33, v35, v23);
  v39 = (*(v37 + 88))(v33, v23);
  if (v39 == *MEMORY[0x277D2A540])
  {
    v40 = *(v37 + 96);
    v135 = v23;
    v40(v33, v23);
    v42 = *v33;
    v41 = v33[1];
    v44 = v33[2];
    v43 = v33[3];
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v45 = v138;
    v46 = __swift_project_value_buffer(v138, qword_280F914F0);
    swift_beginAccess();
    v47 = v136;
    v48 = v131;
    (*(v136 + 16))(v131, v46, v45);

    v49 = sub_2664DFE18();
    v50 = sub_2664E06C8();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v133 = v44;
      v52 = v42;
      v53 = v51;
      v54 = swift_slowAlloc();
      v140 = v54;
      *v53 = 136315394;

      v55 = v47;
      v56 = sub_2664E0148();
      v58 = v57;

      v59 = sub_2662A320C(v56, v58, &v140);

      *(v53 + 4) = v59;
      *(v53 + 12) = 2080;
      *(v53 + 14) = sub_2662A320C(v133, v43, &v140);
      _os_log_impl(&dword_26629C000, v49, v50, "Identifier#init(from musicKitId:) catalog content with id: %s and type: %s", v53, 0x16u);
      swift_arrayDestroy();
      v60 = v54;
      v37 = v134;
      MEMORY[0x266784AD0](v60, -1, -1);
      v61 = v53;
      v42 = v52;
      v44 = v133;
      MEMORY[0x266784AD0](v61, -1, -1);

      (*(v55 + 8))(v131, v138);
    }

    else
    {

      (*(v47 + 8))(v48, v45);
    }

    v84 = v127;
    if (v44 == 0x736D75626C61 && v43 == 0xE600000000000000 || (sub_2664E0D88() & 1) != 0)
    {

      v85 = 2;
    }

    else if (v44 == 0x73676E6F73 && v43 == 0xE500000000000000 || (sub_2664E0D88() & 1) != 0)
    {

      v85 = 3;
    }

    else if (v44 == 0x7473696C79616C70 && v43 == 0xE900000000000073 || (sub_2664E0D88() & 1) != 0)
    {

      v85 = 1;
    }

    else if (v44 == 0x736E6F6974617473 && v43 == 0xE800000000000000)
    {

      v85 = 0;
    }

    else
    {
      v120 = sub_2664E0D88();

      if (v120)
      {
        v85 = 0;
      }

      else
      {
        v85 = 15;
      }
    }

    v140 = 0;
    v141 = 0xE000000000000000;
    LOBYTE(v139) = v85;
    v86 = PlaybackItem.Scheme.rawValue.getter();
    MEMORY[0x2667833B0](v86);

    MEMORY[0x2667833B0](3092282, 0xE300000000000000);
    LOBYTE(v139) = 3;
    sub_2664E0C28();
    MEMORY[0x2667833B0](47, 0xE100000000000000);
    MEMORY[0x2667833B0](v42, v41);

    v87 = v140;
    v88 = v141;
    v89 = 768;
    v90 = v135;
LABEL_47:
    v113 = (*(v37 + 8))(v84, v90);
    v119 = v137;
    *v137 = v89 | v85;
    v119[1] = v87;
    v119[2] = v88;
    goto LABEL_51;
  }

  if (v39 == *MEMORY[0x277D2A548])
  {
    v63 = *(v37 + 96);
    v135 = v23;
    v63(v33, v23);
    v64 = v33[1];
    v131 = *v33;
    v124 = v64;
    v65 = v33[2];
    v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072C78, &unk_2664E6488);
    v67 = v126;
    v68 = v132;
    (*(v36 + 32))(v126, v33 + *(v66 + 64), v132);
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v69 = v138;
    v70 = __swift_project_value_buffer(v138, qword_280F914F0);
    swift_beginAccess();
    v71 = v136;
    (*(v136 + 16))(v130, v70, v69);
    v72 = v125;
    v128 = *(v36 + 16);
    (v128)(v125, v67, v68);

    v73 = sub_2664DFE18();
    v74 = sub_2664E06C8();

    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      v123 = swift_slowAlloc();
      v140 = v123;
      *v75 = 134218498;
      *(v75 + 4) = v131;
      *(v75 + 12) = 2080;
      v76 = sub_2662A320C(v124, v65, &v140);

      *(v75 + 14) = v76;
      *(v75 + 22) = 2080;
      (v128)(v122, v72, v132);
      v77 = sub_2664E0318();
      v79 = v78;
      v80 = *(v36 + 8);
      v80(v72, v132);
      v81 = sub_2662A320C(v77, v79, &v140);

      *(v75 + 24) = v81;
      v82 = v80;
      _os_log_impl(&dword_26629C000, v73, v74, "Identifier#init(from musicKitId:) library content with deviceLocalId: %lld, deviceLocalDatabaseID: %s, kind: %s", v75, 0x20u);
      v83 = v123;
      swift_arrayDestroy();
      v68 = v132;
      MEMORY[0x266784AD0](v83, -1, -1);
      MEMORY[0x266784AD0](v75, -1, -1);
    }

    else
    {

      v82 = *(v36 + 8);
      v82(v72, v68);
    }

    (*(v71 + 8))(v130, v138);
    v110 = v135;
    v111 = v129;
    (v128)(v129, v126, v68);
    v112 = (*(v36 + 88))(v111, v68);
    if (v112 == *MEMORY[0x277D2A590])
    {
      v85 = 2;
    }

    else if (v112 == *MEMORY[0x277D2A5A0])
    {
      v85 = 8;
    }

    else if (v112 == *MEMORY[0x277D2A598])
    {
      v85 = 9;
    }

    else if (v112 == *MEMORY[0x277D2A5C8])
    {
      v85 = 1;
    }

    else if (v112 == *MEMORY[0x277D2A588])
    {
      v85 = 3;
    }

    else
    {
      v82(v111, v68);
      v85 = 15;
    }

    v140 = 0;
    v141 = 0xE000000000000000;
    LOBYTE(v139) = v85;
    v117 = PlaybackItem.Scheme.rawValue.getter();
    MEMORY[0x2667833B0](v117);

    MEMORY[0x2667833B0](3092282, 0xE300000000000000);
    LOBYTE(v139) = 0;
    sub_2664E0C28();
    MEMORY[0x2667833B0](47, 0xE100000000000000);
    v139 = v131;
    v118 = sub_2664E0D48();
    MEMORY[0x2667833B0](v118);

    v87 = v140;
    v88 = v141;
    v82(v126, v68);
    v89 = 0;
    v90 = v110;
    v37 = v134;
    v84 = v127;
    goto LABEL_47;
  }

  v133 = v33;
  v91 = v127;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v92 = v138;
  v93 = __swift_project_value_buffer(v138, qword_280F914F0);
  swift_beginAccess();
  v94 = v136;
  v95 = v128;
  (*(v136 + 16))(v128, v93, v92);
  v96 = v124;
  v38(v124, v91, v23);
  v97 = sub_2664DFE18();
  v98 = sub_2664E06D8();
  v99 = os_log_type_enabled(v97, v98);
  v100 = v123;
  if (v99)
  {
    v101 = swift_slowAlloc();
    v135 = v23;
    v102 = v101;
    v132 = swift_slowAlloc();
    v140 = v132;
    *v102 = 136315138;
    v38(v100, v96, v135);
    v131 = sub_2664E0318();
    v103 = v37;
    v105 = v104;
    v106 = *(v103 + 8);
    v106(v96, v135);
    v107 = sub_2662A320C(v131, v105, &v140);

    *(v102 + 4) = v107;
    _os_log_impl(&dword_26629C000, v97, v98, "Identifier#init(from musicKitId:) unknown musicKitId type: %s", v102, 0xCu);
    v108 = v132;
    __swift_destroy_boxed_opaque_existential_1Tm(v132);
    MEMORY[0x266784AD0](v108, -1, -1);
    v109 = v102;
    v23 = v135;
    MEMORY[0x266784AD0](v109, -1, -1);
  }

  else
  {

    v106 = *(v37 + 8);
    v106(v96, v23);
  }

  (*(v94 + 8))(v95, v138);
  v106(v127, v23);
  v113 = (v106)(v133, v23);
  v62 = v137;
  *v137 = 0;
  v62[1] = 0;
  v62[2] = 0;
LABEL_51:
  result.value.identifier._object = v115;
  result.value.identifier._countAndFlagsBits = v114;
  *&result.value.scheme = v113;
  result.is_nil = v116;
  return result;
}

uint64_t PlaybackItem.Identifier.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_2664DFBE8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2664DFC08();
  if (!v10)
  {
    v16 = sub_2664DFC48();
    result = (*(*(v16 - 8) + 8))(a1, v16);
    goto LABEL_7;
  }

  v11 = v10;
  v12 = v9;
  sub_2664DFC18();
  v13 = (*(v5 + 88))(v8, v4);
  if (v13 != *MEMORY[0x277D554A8] && v13 != *MEMORY[0x277D554C8] && v13 != *MEMORY[0x277D554C0])
  {
    v17 = v13 == *MEMORY[0x277D55510] || v13 == *MEMORY[0x277D55500];
    v18 = v12;
    if (!v17)
    {
      if (v13 == *MEMORY[0x277D55470])
      {
        goto LABEL_5;
      }

      if (v13 != *MEMORY[0x277D55528] && v13 != *MEMORY[0x277D55498])
      {
        if (v13 == *MEMORY[0x277D554F0])
        {
          goto LABEL_5;
        }

        if (v13 == *MEMORY[0x277D554F8])
        {
          goto LABEL_24;
        }

        if (v13 == *MEMORY[0x277D55448])
        {
          goto LABEL_5;
        }

        v18 = v12;
        if (v13 != *MEMORY[0x277D554B8])
        {
          if (v13 == *MEMORY[0x277D55488] || v13 == *MEMORY[0x277D554E0])
          {
            goto LABEL_5;
          }

          if (v13 != *MEMORY[0x277D554A0])
          {
            if (v13 == *MEMORY[0x277D55518] || v13 == *MEMORY[0x277D55480])
            {
              goto LABEL_5;
            }

            if (v13 == *MEMORY[0x277D55490])
            {
LABEL_24:
              v32 = 0;
              v33 = 0xE000000000000000;
              MEMORY[0x2667833B0](0xD000000000000017, 0x80000002664F1760);
              MEMORY[0x2667833B0](3092282, 0xE300000000000000);
              v35 = 3;
              sub_2664E0C28();
              MEMORY[0x2667833B0](47, 0xE100000000000000);
              MEMORY[0x2667833B0](v12, v11);

              v22 = v32;
              v21 = v33;
              v26 = sub_2664DFC48();
              result = (*(*(v26 - 8) + 8))(a1, v26);
              v24 = 768;
              v23 = 5;
              goto LABEL_16;
            }

            v18 = v12;
            if (v13 != *MEMORY[0x277D55458])
            {
              if (v13 == *MEMORY[0x277D55478] || v13 == *MEMORY[0x277D554D0])
              {
                goto LABEL_5;
              }

              if (v13 == *MEMORY[0x277D554E8])
              {
                v32 = 0;
                v33 = 0xE000000000000000;
                MEMORY[0x2667833B0](0xD000000000000014, 0x80000002664F1740);
                MEMORY[0x2667833B0](3092282, 0xE300000000000000);
                v35 = 3;
                sub_2664E0C28();
                MEMORY[0x2667833B0](47, 0xE100000000000000);
                MEMORY[0x2667833B0](v12, v11);

                v22 = v32;
                v21 = v33;
                v27 = sub_2664DFC48();
                result = (*(*(v27 - 8) + 8))(a1, v27);
                v24 = 768;
                v23 = 4;
                goto LABEL_16;
              }

              if (v13 == *MEMORY[0x277D55468])
              {
                v32 = 0;
                v33 = 0xE000000000000000;
                MEMORY[0x2667833B0](0xD00000000000001FLL, 0x80000002664F17A0);
                MEMORY[0x2667833B0](3092282, 0xE300000000000000);
                v35 = 3;
                sub_2664E0C28();
                MEMORY[0x2667833B0](47, 0xE100000000000000);
                MEMORY[0x2667833B0](v12, v11);

                v22 = v32;
                v21 = v33;
                v28 = sub_2664DFC48();
                result = (*(*(v28 - 8) + 8))(a1, v28);
                v24 = 768;
                v23 = 7;
                goto LABEL_16;
              }

              if (v13 == *MEMORY[0x277D554D8] || v13 == *MEMORY[0x277D55450] || v13 == *MEMORY[0x277D554B0] || v13 == *MEMORY[0x277D55520])
              {
                goto LABEL_5;
              }

              v18 = v12;
              if (v13 != *MEMORY[0x277D55460])
              {
                v29 = *MEMORY[0x277D55508];
                v30 = v13;
                v31 = sub_2664DFC48();
                (*(*(v31 - 8) + 8))(a1, v31);

                if (v30 != v29)
                {
                  result = (*(v5 + 8))(v8, v4);
                }

                goto LABEL_7;
              }
            }
          }
        }
      }
    }

    v19._countAndFlagsBits = v18;
    v19._object = v11;
    PlaybackItem.Identifier.init(from:)(v19);
    v20 = sub_2664DFC48();
    result = (*(*(v20 - 8) + 8))(a1, v20);
    v21 = v34;
    if (!v34)
    {
      goto LABEL_7;
    }

    v22 = v33;
    v23 = v32;
    v24 = v32 & 0xFF00;
LABEL_16:
    *a2 = v24 | v23;
    a2[1] = v22;
    a2[2] = v21;
    return result;
  }

LABEL_5:
  v14 = sub_2664DFC48();
  (*(*(v14 - 8) + 8))(a1, v14);

LABEL_7:
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return result;
}

Swift::Bool __swiftcall PlaybackItem.Identifier.isLibraryIdentifier()()
{
  v1 = sub_2664DFE38();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 1);
  v7 = *(v0 + 16);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v8 = 0x656369766564;
  v9 = __swift_project_value_buffer(v1, qword_280F914F0);
  swift_beginAccess();
  (*(v2 + 16))(v5, v9, v1);

  v10 = sub_2664DFE18();
  v11 = sub_2664E06B8();

  if (!os_log_type_enabled(v10, v11))
  {

    (*(v2 + 8))(v5, v1);
    goto LABEL_94;
  }

  v12 = swift_slowAlloc();
  v64 = swift_slowAlloc();
  v65 = v64;
  *v12 = 136315138;
  if (byte_2877E2D28 > 3u)
  {
    if (byte_2877E2D28 > 5u)
    {
      if (byte_2877E2D28 == 6)
      {
        v17 = 0x62696C656C6F6877;
        v18 = 0xEC00000079726172;
      }

      else
      {
        v18 = 0xE700000000000000;
        v17 = 0x6E776F6E6B6E75;
      }
    }

    else
    {
      if (byte_2877E2D28 == 4)
      {
        v17 = 1684630645;
      }

      else
      {
        v17 = 0x6867696C746F7073;
      }

      if (byte_2877E2D28 == 4)
      {
        v18 = 0xE400000000000000;
      }

      else
      {
        v18 = 0xE900000000000074;
      }
    }
  }

  else
  {
    v13 = 0xE600000000000000;
    v14 = 0x72657669746C756DLL;
    v15 = 0xEA00000000006573;
    if (byte_2877E2D28 != 2)
    {
      v14 = 0x65726F7473;
      v15 = 0xE500000000000000;
    }

    v16 = 0x636E797369726973;
    if (byte_2877E2D28)
    {
      v13 = 0xE800000000000000;
    }

    else
    {
      v16 = 0x656369766564;
    }

    if (byte_2877E2D28 <= 1u)
    {
      v17 = v16;
    }

    else
    {
      v17 = v14;
    }

    if (byte_2877E2D28 <= 1u)
    {
      v18 = v13;
    }

    else
    {
      v18 = v15;
    }
  }

  v19 = 0xE600000000000000;
  v20 = 0x62696C656C6F6877;
  v21 = 0xEC00000079726172;
  if (v6 != 6)
  {
    v20 = 0x6E776F6E6B6E75;
    v21 = 0xE700000000000000;
  }

  v22 = 0xE400000000000000;
  v23 = 1684630645;
  if (v6 != 4)
  {
    v23 = 0x6867696C746F7073;
    v22 = 0xE900000000000074;
  }

  if (v6 <= 5)
  {
    v20 = v23;
    v21 = v22;
  }

  v24 = 0x72657669746C756DLL;
  v25 = 0xEA00000000006573;
  if (v6 != 2)
  {
    v24 = 0x65726F7473;
    v25 = 0xE500000000000000;
  }

  v26 = 0x636E797369726973;
  if (v6)
  {
    v19 = 0xE800000000000000;
  }

  else
  {
    v26 = 0x656369766564;
  }

  if (v6 > 1)
  {
    v19 = v25;
  }

  else
  {
    v24 = v26;
  }

  if (v6 <= 3)
  {
    v27 = v24;
  }

  else
  {
    v27 = v20;
  }

  if (v6 <= 3)
  {
    v28 = v19;
  }

  else
  {
    v28 = v21;
  }

  v29 = 1702195828;
  if (v17 == v27 && v18 == v28)
  {
    goto LABEL_91;
  }

  v30 = sub_2664E0D88();

  if ((v30 & 1) == 0)
  {
    if (byte_2877E2D29 > 3u)
    {
      if (byte_2877E2D29 > 5u)
      {
        if (byte_2877E2D29 == 6)
        {
          v36 = 0x62696C656C6F6877;
          v37 = 0xEC00000079726172;
        }

        else
        {
          v37 = 0xE700000000000000;
          v36 = 0x6E776F6E6B6E75;
        }
      }

      else
      {
        if (byte_2877E2D29 == 4)
        {
          v36 = 1684630645;
        }

        else
        {
          v36 = 0x6867696C746F7073;
        }

        if (byte_2877E2D29 == 4)
        {
          v37 = 0xE400000000000000;
        }

        else
        {
          v37 = 0xE900000000000074;
        }
      }
    }

    else
    {
      v32 = 0xE600000000000000;
      v33 = 0x72657669746C756DLL;
      v34 = 0xEA00000000006573;
      if (byte_2877E2D29 != 2)
      {
        v33 = 0x65726F7473;
        v34 = 0xE500000000000000;
      }

      v35 = 0x636E797369726973;
      if (byte_2877E2D29)
      {
        v32 = 0xE800000000000000;
      }

      else
      {
        v35 = 0x656369766564;
      }

      if (byte_2877E2D29 <= 1u)
      {
        v36 = v35;
      }

      else
      {
        v36 = v33;
      }

      if (byte_2877E2D29 <= 1u)
      {
        v37 = v32;
      }

      else
      {
        v37 = v34;
      }
    }

    if (v6 > 3)
    {
      if (v6 > 5)
      {
        if (v6 == 6)
        {
          v39 = 0x62696C656C6F6877;
          v38 = 0xEC00000079726172;
        }

        else
        {
          v38 = 0xE700000000000000;
          v39 = 0x6E776F6E6B6E75;
        }
      }

      else if (v6 == 4)
      {
        v38 = 0xE400000000000000;
        v39 = 1684630645;
      }

      else
      {
        v39 = 0x6867696C746F7073;
        v38 = 0xE900000000000074;
      }
    }

    else if (v6 > 1)
    {
      if (v6 == 2)
      {
        v39 = 0x72657669746C756DLL;
        v38 = 0xEA00000000006573;
      }

      else
      {
        v38 = 0xE500000000000000;
        v39 = 0x65726F7473;
      }
    }

    else if (v6)
    {
      v38 = 0xE800000000000000;
      v39 = 0x636E797369726973;
    }

    else
    {
      v38 = 0xE600000000000000;
      v39 = 0x656369766564;
    }

    if (v36 != v39 || v37 != v38)
    {
      v50 = sub_2664E0D88();

      if (v50)
      {
        goto LABEL_50;
      }

      v51 = 0x656369766564;
      if (byte_2877E2D2A > 3u)
      {
        if (byte_2877E2D2A > 5u)
        {
          if (byte_2877E2D2A == 6)
          {
            v51 = 0x62696C656C6F6877;
            v52 = 0xEC00000079726172;
          }

          else
          {
            v52 = 0xE700000000000000;
            v51 = 0x6E776F6E6B6E75;
          }
        }

        else if (byte_2877E2D2A == 4)
        {
          v52 = 0xE400000000000000;
          v51 = 1684630645;
        }

        else
        {
          v51 = 0x6867696C746F7073;
          v52 = 0xE900000000000074;
        }
      }

      else if (byte_2877E2D2A > 1u)
      {
        if (byte_2877E2D2A == 2)
        {
          v51 = 0x72657669746C756DLL;
          v52 = 0xEA00000000006573;
        }

        else
        {
          v52 = 0xE500000000000000;
          v51 = 0x65726F7473;
        }
      }

      else if (byte_2877E2D2A)
      {
        v52 = 0xE800000000000000;
        v51 = 0x636E797369726973;
      }

      else
      {
        v52 = 0xE600000000000000;
      }

      if (v6 > 3)
      {
        if (v6 > 5)
        {
          if (v6 == 6)
          {
            v60 = 0x62696C656C6F6877;
            v59 = 0xEC00000079726172;
          }

          else
          {
            v59 = 0xE700000000000000;
            v60 = 0x6E776F6E6B6E75;
          }
        }

        else if (v6 == 4)
        {
          v59 = 0xE400000000000000;
          v60 = 1684630645;
        }

        else
        {
          v60 = 0x6867696C746F7073;
          v59 = 0xE900000000000074;
        }
      }

      else if (v6 > 1)
      {
        if (v6 == 2)
        {
          v60 = 0x72657669746C756DLL;
          v59 = 0xEA00000000006573;
        }

        else
        {
          v59 = 0xE500000000000000;
          v60 = 0x65726F7473;
        }
      }

      else if (v6)
      {
        v59 = 0xE800000000000000;
        v60 = 0x636E797369726973;
      }

      else
      {
        v59 = 0xE600000000000000;
        v60 = 0x656369766564;
      }

      if (v51 != v60 || v52 != v59)
      {
        v61 = sub_2664E0D88();

        v62 = (v61 & 1) == 0;
        v29 = 1702195828;
        if (v62)
        {
          v29 = 0x65736C6166;
        }

        if (v62)
        {
          v31 = 0xE500000000000000;
        }

        else
        {
          v31 = 0xE400000000000000;
        }

        goto LABEL_92;
      }
    }

    v29 = 1702195828;
LABEL_91:

    v31 = 0xE400000000000000;
LABEL_92:
    v8 = 0x656369766564;
    goto LABEL_93;
  }

LABEL_50:
  v31 = 0xE400000000000000;
  v8 = 0x656369766564;
  v29 = 1702195828;
LABEL_93:
  v40 = sub_2662A320C(v29, v31, &v65);

  *(v12 + 4) = v40;
  _os_log_impl(&dword_26629C000, v10, v11, "PlaybackItem#isLibraryIdentifier: %s ", v12, 0xCu);
  v41 = v64;
  __swift_destroy_boxed_opaque_existential_1Tm(v64);
  MEMORY[0x266784AD0](v41, -1, -1);
  MEMORY[0x266784AD0](v12, -1, -1);

  (*(v2 + 8))(v5, v1);
LABEL_94:
  if (byte_2877E2D28 > 3u)
  {
    if (byte_2877E2D28 > 5u)
    {
      if (byte_2877E2D28 == 6)
      {
        v43 = 0x62696C656C6F6877;
        v42 = 0xEC00000079726172;
        if (v6 <= 3)
        {
          goto LABEL_122;
        }
      }

      else
      {
        v42 = 0xE700000000000000;
        v43 = 0x6E776F6E6B6E75;
        if (v6 <= 3)
        {
          goto LABEL_122;
        }
      }

      goto LABEL_108;
    }

    if (byte_2877E2D28 == 4)
    {
      v42 = 0xE400000000000000;
      v43 = 1684630645;
      if (v6 > 3)
      {
        goto LABEL_108;
      }
    }

    else
    {
      v43 = 0x6867696C746F7073;
      v42 = 0xE900000000000074;
      if (v6 > 3)
      {
        goto LABEL_108;
      }
    }
  }

  else if (byte_2877E2D28 > 1u)
  {
    if (byte_2877E2D28 != 2)
    {
      v42 = 0xE500000000000000;
      v43 = 0x65726F7473;
      if (v6 <= 3)
      {
        goto LABEL_122;
      }

      goto LABEL_108;
    }

    v43 = 0x72657669746C756DLL;
    v42 = 0xEA00000000006573;
    if (v6 > 3)
    {
      goto LABEL_108;
    }
  }

  else
  {
    if (!byte_2877E2D28)
    {
      v42 = 0xE600000000000000;
      v43 = 0x656369766564;
      if (v6 <= 3)
      {
        goto LABEL_122;
      }

LABEL_108:
      if (v6 > 5)
      {
        if (v6 == 6)
        {
          v44 = 0xEC00000079726172;
          if (v43 != 0x62696C656C6F6877)
          {
            goto LABEL_139;
          }
        }

        else
        {
          v44 = 0xE700000000000000;
          if (v43 != 0x6E776F6E6B6E75)
          {
            goto LABEL_139;
          }
        }
      }

      else if (v6 == 4)
      {
        v44 = 0xE400000000000000;
        if (v43 != 1684630645)
        {
          goto LABEL_139;
        }
      }

      else
      {
        v44 = 0xE900000000000074;
        if (v43 != 0x6867696C746F7073)
        {
          goto LABEL_139;
        }
      }

      goto LABEL_136;
    }

    v42 = 0xE800000000000000;
    v43 = 0x636E797369726973;
    if (v6 > 3)
    {
      goto LABEL_108;
    }
  }

LABEL_122:
  if (v6 > 1)
  {
    if (v6 == 2)
    {
      v44 = 0xEA00000000006573;
      if (v43 != 0x72657669746C756DLL)
      {
        goto LABEL_139;
      }
    }

    else
    {
      v44 = 0xE500000000000000;
      if (v43 != 0x65726F7473)
      {
        goto LABEL_139;
      }
    }
  }

  else if (v6)
  {
    v44 = 0xE800000000000000;
    if (v43 != 0x636E797369726973)
    {
      goto LABEL_139;
    }
  }

  else
  {
    v44 = 0xE600000000000000;
    if (v43 != 0x656369766564)
    {
      goto LABEL_139;
    }
  }

LABEL_136:
  if (v42 == v44)
  {
    goto LABEL_137;
  }

LABEL_139:
  v46 = sub_2664E0D88();

  if (v46)
  {
LABEL_140:
    v45 = 1;
    return v45 & 1;
  }

  if (byte_2877E2D29 > 3u)
  {
    if (byte_2877E2D29 > 5u)
    {
      if (byte_2877E2D29 == 6)
      {
        v49 = 0x62696C656C6F6877;
        v48 = 0xEC00000079726172;
        if (v6 <= 3)
        {
          goto LABEL_173;
        }
      }

      else
      {
        v48 = 0xE700000000000000;
        v49 = 0x6E776F6E6B6E75;
        if (v6 <= 3)
        {
          goto LABEL_173;
        }
      }

      goto LABEL_161;
    }

    if (byte_2877E2D29 == 4)
    {
      v48 = 0xE400000000000000;
      v49 = 1684630645;
      if (v6 > 3)
      {
        goto LABEL_161;
      }
    }

    else
    {
      v49 = 0x6867696C746F7073;
      v48 = 0xE900000000000074;
      if (v6 > 3)
      {
        goto LABEL_161;
      }
    }
  }

  else if (byte_2877E2D29 > 1u)
  {
    if (byte_2877E2D29 != 2)
    {
      v48 = 0xE500000000000000;
      v49 = 0x65726F7473;
      if (v6 <= 3)
      {
        goto LABEL_173;
      }

      goto LABEL_161;
    }

    v49 = 0x72657669746C756DLL;
    v48 = 0xEA00000000006573;
    if (v6 > 3)
    {
      goto LABEL_161;
    }
  }

  else
  {
    if (!byte_2877E2D29)
    {
      v48 = 0xE600000000000000;
      v49 = 0x656369766564;
      if (v6 <= 3)
      {
        goto LABEL_173;
      }

LABEL_161:
      if (v6 > 5)
      {
        if (v6 == 6)
        {
          v54 = 0x62696C656C6F6877;
          v53 = 0xEC00000079726172;
        }

        else
        {
          v53 = 0xE700000000000000;
          v54 = 0x6E776F6E6B6E75;
        }
      }

      else if (v6 == 4)
      {
        v53 = 0xE400000000000000;
        v54 = 1684630645;
      }

      else
      {
        v54 = 0x6867696C746F7073;
        v53 = 0xE900000000000074;
      }

      goto LABEL_182;
    }

    v48 = 0xE800000000000000;
    v49 = 0x636E797369726973;
    if (v6 > 3)
    {
      goto LABEL_161;
    }
  }

LABEL_173:
  if (v6 > 1)
  {
    if (v6 == 2)
    {
      v54 = 0x72657669746C756DLL;
      v53 = 0xEA00000000006573;
    }

    else
    {
      v53 = 0xE500000000000000;
      v54 = 0x65726F7473;
    }
  }

  else if (v6)
  {
    v53 = 0xE800000000000000;
    v54 = 0x636E797369726973;
  }

  else
  {
    v53 = 0xE600000000000000;
    v54 = 0x656369766564;
  }

LABEL_182:
  if (v49 != v54 || v48 != v53)
  {
    v55 = sub_2664E0D88();

    if (v55)
    {
      goto LABEL_140;
    }

    if (byte_2877E2D2A > 3u)
    {
      if (byte_2877E2D2A > 5u)
      {
        if (byte_2877E2D2A == 6)
        {
          v57 = 0x62696C656C6F6877;
          v56 = 0xEC00000079726172;
        }

        else
        {
          v56 = 0xE700000000000000;
          v57 = 0x6E776F6E6B6E75;
        }
      }

      else if (byte_2877E2D2A == 4)
      {
        v56 = 0xE400000000000000;
        v57 = 1684630645;
      }

      else
      {
        v57 = 0x6867696C746F7073;
        v56 = 0xE900000000000074;
      }
    }

    else if (byte_2877E2D2A > 1u)
    {
      if (byte_2877E2D2A == 2)
      {
        v57 = 0x72657669746C756DLL;
        v56 = 0xEA00000000006573;
      }

      else
      {
        v56 = 0xE500000000000000;
        v57 = 0x65726F7473;
      }
    }

    else if (byte_2877E2D2A)
    {
      v56 = 0xE800000000000000;
      v57 = 0x636E797369726973;
    }

    else
    {
      v56 = 0xE600000000000000;
      v57 = 0x656369766564;
    }

    if (v6 > 3)
    {
      if (v6 > 5)
      {
        if (v6 == 6)
        {
          v8 = 0x62696C656C6F6877;
          v58 = 0xEC00000079726172;
        }

        else
        {
          v58 = 0xE700000000000000;
          v8 = 0x6E776F6E6B6E75;
        }
      }

      else if (v6 == 4)
      {
        v58 = 0xE400000000000000;
        v8 = 1684630645;
      }

      else
      {
        v8 = 0x6867696C746F7073;
        v58 = 0xE900000000000074;
      }
    }

    else if (v6 > 1)
    {
      if (v6 == 2)
      {
        v8 = 0x72657669746C756DLL;
        v58 = 0xEA00000000006573;
      }

      else
      {
        v58 = 0xE500000000000000;
        v8 = 0x65726F7473;
      }
    }

    else if (v6)
    {
      v58 = 0xE800000000000000;
      v8 = 0x636E797369726973;
    }

    else
    {
      v58 = 0xE600000000000000;
    }

    if (v57 != v8 || v56 != v58)
    {
      v45 = sub_2664E0D88();
      goto LABEL_138;
    }
  }

LABEL_137:
  v45 = 1;
LABEL_138:

  return v45 & 1;
}

uint64_t sub_266346598(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[13] = a3;
  v4[14] = v3;
  v4[11] = a1;
  v4[12] = a2;
  v5 = sub_2664DF6F8();
  v4[15] = v5;
  v6 = *(v5 - 8);
  v4[16] = v6;
  v7 = *(v6 + 64) + 15;
  v4[17] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072C80, &qword_2664E6498) - 8) + 64) + 15;
  v4[18] = swift_task_alloc();
  v9 = type metadata accessor for MusicSiriItemIdentifierResponse();
  v4[19] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  v11 = sub_2664DF7C8();
  v4[24] = v11;
  v12 = *(v11 - 8);
  v4[25] = v12;
  v13 = *(v12 + 64) + 15;
  v4[26] = swift_task_alloc();
  v14 = *(*(sub_2664E0308() - 8) + 64) + 15;
  v4[27] = swift_task_alloc();
  v15 = sub_2664DFE38();
  v4[28] = v15;
  v16 = *(v15 - 8);
  v4[29] = v16;
  v17 = *(v16 + 64) + 15;
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();
  v4[32] = swift_task_alloc();
  v4[33] = swift_task_alloc();
  v4[34] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2663467FC, 0, 0);
}

uint64_t sub_2663467FC()
{
  v122 = v0;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 272);
  v2 = *(v0 + 224);
  v3 = *(v0 + 232);
  v4 = *(v0 + 112);
  v5 = __swift_project_value_buffer(v2, qword_280F914F0);
  *(v0 + 280) = v5;
  swift_beginAccess();
  v6 = *(v3 + 16);
  *(v0 + 288) = v6;
  *(v0 + 296) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v5, v2);

  v7 = sub_2664DFE18();
  v8 = sub_2664E06C8();

  v117 = v6;
  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v0 + 112);
    v10 = swift_slowAlloc();
    v118 = swift_slowAlloc();
    v121[0] = v118;
    *v10 = 136315394;
    v11 = *(v9 + 49);
    v13 = *(v9 + 56);
    v12 = *(v9 + 64);
    if (v11 > 1)
    {
      goto LABEL_5;
    }

    if (!v11)
    {
      goto LABEL_5;
    }

    v89 = sub_2664DE2A8();
    if (v90 >> 60 == 15)
    {
      goto LABEL_5;
    }

    v112 = *(v0 + 216);
    v116 = v89;
    v91 = v90;
    sub_2664E02F8();
    v113 = sub_2664E02D8();
    v93 = v92;
    sub_2662B79A8(v116, v91);
    if (v93)
    {
      v13 = v113;
      v12 = v93;
    }

    else
    {
LABEL_5:
    }

    v14 = *(v0 + 232);
    v111 = *(v0 + 224);
    v114 = *(v0 + 272);
    v15 = *(v0 + 112);
    v16 = sub_2662A320C(v13, v12, v121);

    *(v10 + 4) = v16;
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_2662A320C(*(v15 + 32), *(v15 + 40), v121);
    _os_log_impl(&dword_26629C000, v7, v8, "PlaybackItem#toMusicSiriRepresentation... decoded siri sync ID: %s and catalog ID: %s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v118, -1, -1);
    MEMORY[0x266784AD0](v10, -1, -1);

    v17 = *(v14 + 8);
    v17(v114, v111);
    v6 = v117;
  }

  else
  {
    v18 = *(v0 + 272);
    v19 = *(v0 + 224);
    v20 = *(v0 + 232);

    v17 = *(v20 + 8);
    v17(v18, v19);
  }

  v119 = v17;
  *(v0 + 304) = v17;
  v21 = *(v0 + 112);
  v23 = *(v21 + 56);
  v22 = *(v21 + 64);
  LOWORD(v121[0]) = *(v21 + 48);
  v121[1] = v23;
  v121[2] = v22;

  v24 = PlaybackItem.Identifier.isLibraryIdentifier()();

  v25 = *(v0 + 224);
  if (v24)
  {
    v115 = v23;
    v6(*(v0 + 264), v5, v25);
    v26 = sub_2664DFE18();
    v27 = sub_2664E06B8();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_26629C000, v26, v27, "PlaybackItem#toMusicSiriRepresentation This is for the siriSyncIdentifier (Library).", v28, 2u);
      MEMORY[0x266784AD0](v28, -1, -1);
    }

    v29 = *(v0 + 264);
    v30 = *(v0 + 224);
    v31 = *(v0 + 232);
    v32 = *(v0 + 104);

    v119(v29, v30);
    if (!v32)
    {
      v79 = *(v0 + 96);
      v44 = v79[3];
      v45 = v79[4];
      __swift_project_boxed_opaque_existential_1(v79, v44);
      v80 = *(v21 + 49);
      v81 = v115;
      if (v80 > 1)
      {
        goto LABEL_22;
      }

      if (!v80)
      {
        goto LABEL_22;
      }

      v103 = sub_2664DE2A8();
      if (v104 >> 60 == 15)
      {
        goto LABEL_22;
      }

      v105 = *(v0 + 216);
      v106 = v103;
      v107 = v104;
      sub_2664E02F8();
      v108 = sub_2664E02D8();
      v110 = v109;
      v81 = v115;
      sub_2662B79A8(v106, v107);
      if (v110)
      {
        v81 = v108;
        v22 = v110;
      }

      else
      {
LABEL_22:
      }

      *(v0 + 328) = v22;
      v82 = *(v0 + 192);
      v83 = *(v0 + 200);
      v84 = *(v0 + 144);
      *(v0 + 353) = 0;
      (*(v83 + 56))(v84, 1, 1, v82);
      v85 = *(v45 + 8);
      v120 = (v85 + *v85);
      v86 = v85[1];
      v87 = swift_task_alloc();
      *(v0 + 336) = v87;
      *v87 = v0;
      v87[1] = sub_2663476BC;
      v54 = *(v0 + 168);
      v55 = *(v0 + 144);
      v56 = v0 + 353;
      v57 = v81;
      goto LABEL_24;
    }

    v33 = *(v0 + 256);
    v34 = *(v0 + 224);
    v35 = [*(v0 + 104) stringValue];
    sub_2664E02C8();

    v117(v33, v5, v34);
    v36 = sub_2664DFE18();
    v37 = sub_2664E06C8();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_26629C000, v36, v37, "PlaybackItem#toMusicSiriRepresentation... setting account ID.", v38, 2u);
      MEMORY[0x266784AD0](v38, -1, -1);
    }

    v39 = *(v0 + 256);
    v41 = *(v0 + 224);
    v40 = *(v0 + 232);
    v42 = *(v0 + 208);
    v43 = *(v0 + 96);

    v119(v39, v41);
    sub_2664DF7B8();

    v44 = v43[3];
    v45 = v43[4];
    __swift_project_boxed_opaque_existential_1(v43, v44);
    if (*(v21 + 49) <= 1u)
    {
      v46 = v115;
      if (*(v21 + 49))
      {
        v94 = sub_2664DE2A8();
        if (v95 >> 60 != 15)
        {
          v96 = *(v0 + 216);
          v97 = v94;
          v98 = v95;
          sub_2664E02F8();
          v99 = sub_2664E02D8();
          v101 = v100;
          v102 = v97;
          v46 = v115;
          sub_2662B79A8(v102, v98);
          if (v101)
          {
            v46 = v99;
            v22 = v101;
            goto LABEL_17;
          }
        }
      }
    }

    else
    {
      v46 = v115;
    }

LABEL_17:
    *(v0 + 312) = v22;
    v48 = *(v0 + 200);
    v47 = *(v0 + 208);
    v49 = *(v0 + 192);
    v50 = *(v0 + 144);
    *(v0 + 354) = 0;
    (*(v48 + 16))(v50, v47, v49);
    (*(v48 + 56))(v50, 0, 1, v49);
    v51 = *(v45 + 8);
    v120 = (v51 + *v51);
    v52 = v51[1];
    v53 = swift_task_alloc();
    *(v0 + 320) = v53;
    *v53 = v0;
    v53[1] = sub_2663471DC;
    v54 = *(v0 + 176);
    v55 = *(v0 + 144);
    v56 = v0 + 354;
    v57 = v46;
LABEL_24:
    v76 = v22;
    v77 = v44;
    v78 = v45;
    goto LABEL_25;
  }

  v6(*(v0 + 248), v5, v25);
  v58 = sub_2664DFE18();
  v59 = sub_2664E06B8();
  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    *v60 = 0;
    _os_log_impl(&dword_26629C000, v58, v59, "PlaybackItem#toMusicSiriRepresentation This is for the legacySiriIdentifier (Catalog).", v60, 2u);
    MEMORY[0x266784AD0](v60, -1, -1);
  }

  v61 = *(v0 + 248);
  v62 = *(v0 + 224);
  v63 = *(v0 + 232);
  v64 = *(v0 + 192);
  v65 = *(v0 + 200);
  v66 = *(v0 + 144);
  v67 = *(v0 + 112);
  v68 = *(v0 + 96);

  v119(v61, v62);
  v69 = v68[3];
  v70 = v68[4];
  __swift_project_boxed_opaque_existential_1(v68, v69);
  v71 = *(v67 + 32);
  v72 = *(v67 + 40);
  *(v0 + 352) = 1;
  (*(v65 + 56))(v66, 1, 1, v64);
  v73 = *(v70 + 8);
  v120 = (v73 + *v73);
  v74 = v73[1];
  v75 = swift_task_alloc();
  *(v0 + 344) = v75;
  *v75 = v0;
  v75[1] = sub_266347B88;
  v54 = *(v0 + 160);
  v55 = *(v0 + 144);
  v56 = v0 + 352;
  v57 = v71;
  v76 = v72;
  v77 = v69;
  v78 = v70;
LABEL_25:

  return v120(v54, v57, v76, v56, v55, v77, v78);
}

uint64_t sub_2663471DC()
{
  v1 = *(*v0 + 320);
  v2 = *(*v0 + 312);
  v3 = *(*v0 + 144);
  v5 = *v0;

  sub_2662A9238(v3, &qword_280072C80, &qword_2664E6498);

  return MEMORY[0x2822009F8](sub_266347320, 0, 0);
}

uint64_t sub_266347320()
{
  v54 = v0;
  v2 = v0[36];
  v1 = v0[37];
  v3 = v0[35];
  v4 = v0[30];
  v5 = v0[28];
  v6 = v0[23];
  sub_266348870(v0[22], v6);
  v8 = *v6;
  v7 = v6[1];
  v2(v4, v3, v5);
  swift_bridgeObjectRetain_n();
  v9 = sub_2664DFE18();
  v10 = sub_2664E06C8();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = v0[23];
    v49 = v0[19];
    v12 = v0[15];
    v13 = v0[16];
    v14 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v53 = v51;
    *v14 = 136315394;
    if (v7)
    {
      v15 = v8;
    }

    else
    {
      v15 = 0;
    }

    v16 = 0xE000000000000000;
    if (!v7)
    {
      v7 = 0xE000000000000000;
    }

    v17 = sub_2662A320C(v15, v7, &v53);

    *(v14 + 4) = v17;
    *(v14 + 12) = 2080;
    swift_beginAccess();
    v18 = *(v49 + 20);
    if ((*(v13 + 48))(v11 + v18, 1, v12))
    {
      v19 = 0;
    }

    else
    {
      v24 = v0[16];
      v25 = v0[17];
      v26 = v0[15];
      (*(v24 + 16))(v25, v11 + v18, v26);
      sub_266348994();
      v27 = sub_2664E0DE8();
      v16 = v28;
      (*(v24 + 8))(v25, v26);
      v19 = v27;
    }

    v29 = v0[38];
    v31 = v0[29];
    v30 = v0[30];
    v32 = v0[28];
    v33 = sub_2662A320C(v19, v16, &v53);

    *(v14 + 14) = v33;
    _os_log_impl(&dword_26629C000, v9, v10, "PlaybackItem#toMusicSiriRepresentation Music Siri Item representation ID: %s, error: %s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v51, -1, -1);
    MEMORY[0x266784AD0](v14, -1, -1);

    v29(v30, v32);
  }

  else
  {
    v20 = v0[38];
    v22 = v0[29];
    v21 = v0[30];
    v23 = v0[28];

    v20(v21, v23);
  }

  v34 = v0[23];
  v35 = v0[11];
  swift_beginAccess();
  sub_2663488D4(v34, v35);
  sub_266348938(v34);
  (*(v0[25] + 8))(v0[26], v0[24]);
  v37 = v0[33];
  v36 = v0[34];
  v39 = v0[31];
  v38 = v0[32];
  v40 = v0[30];
  v42 = v0[26];
  v41 = v0[27];
  v44 = v0[22];
  v43 = v0[23];
  v45 = v0[21];
  v48 = v0[20];
  v50 = v0[18];
  v52 = v0[17];

  v46 = v0[1];

  return v46();
}

uint64_t sub_2663476BC()
{
  v1 = *(*v0 + 336);
  v2 = *(*v0 + 328);
  v3 = *(*v0 + 144);
  v5 = *v0;

  sub_2662A9238(v3, &qword_280072C80, &qword_2664E6498);

  return MEMORY[0x2822009F8](sub_266347800, 0, 0);
}

uint64_t sub_266347800()
{
  v54 = v0;
  v2 = v0[36];
  v1 = v0[37];
  v3 = v0[35];
  v4 = v0[30];
  v5 = v0[28];
  v6 = v0[23];
  sub_266348870(v0[21], v6);
  v8 = *v6;
  v7 = v6[1];
  v2(v4, v3, v5);
  swift_bridgeObjectRetain_n();
  v9 = sub_2664DFE18();
  v10 = sub_2664E06C8();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = v0[23];
    v49 = v0[19];
    v12 = v0[15];
    v13 = v0[16];
    v14 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v53 = v51;
    *v14 = 136315394;
    if (v7)
    {
      v15 = v8;
    }

    else
    {
      v15 = 0;
    }

    v16 = 0xE000000000000000;
    if (!v7)
    {
      v7 = 0xE000000000000000;
    }

    v17 = sub_2662A320C(v15, v7, &v53);

    *(v14 + 4) = v17;
    *(v14 + 12) = 2080;
    swift_beginAccess();
    v18 = *(v49 + 20);
    if ((*(v13 + 48))(v11 + v18, 1, v12))
    {
      v19 = 0;
    }

    else
    {
      v24 = v0[16];
      v25 = v0[17];
      v26 = v0[15];
      (*(v24 + 16))(v25, v11 + v18, v26);
      sub_266348994();
      v27 = sub_2664E0DE8();
      v16 = v28;
      (*(v24 + 8))(v25, v26);
      v19 = v27;
    }

    v29 = v0[38];
    v31 = v0[29];
    v30 = v0[30];
    v32 = v0[28];
    v33 = sub_2662A320C(v19, v16, &v53);

    *(v14 + 14) = v33;
    _os_log_impl(&dword_26629C000, v9, v10, "PlaybackItem#toMusicSiriRepresentation Music Siri Item representation ID: %s, error: %s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v51, -1, -1);
    MEMORY[0x266784AD0](v14, -1, -1);

    v29(v30, v32);
  }

  else
  {
    v20 = v0[38];
    v22 = v0[29];
    v21 = v0[30];
    v23 = v0[28];

    v20(v21, v23);
  }

  v34 = v0[23];
  v35 = v0[11];
  swift_beginAccess();
  sub_2663488D4(v34, v35);
  sub_266348938(v34);
  v37 = v0[33];
  v36 = v0[34];
  v39 = v0[31];
  v38 = v0[32];
  v40 = v0[30];
  v42 = v0[26];
  v41 = v0[27];
  v44 = v0[22];
  v43 = v0[23];
  v45 = v0[21];
  v48 = v0[20];
  v50 = v0[18];
  v52 = v0[17];

  v46 = v0[1];

  return v46();
}

uint64_t sub_266347B88()
{
  v1 = *(*v0 + 344);
  v2 = *(*v0 + 144);
  v4 = *v0;

  sub_2662A9238(v2, &qword_280072C80, &qword_2664E6498);

  return MEMORY[0x2822009F8](sub_266347CB0, 0, 0);
}

uint64_t sub_266347CB0()
{
  v54 = v0;
  v2 = v0[36];
  v1 = v0[37];
  v3 = v0[35];
  v4 = v0[30];
  v5 = v0[28];
  v6 = v0[23];
  sub_266348870(v0[20], v6);
  v8 = *v6;
  v7 = v6[1];
  v2(v4, v3, v5);
  swift_bridgeObjectRetain_n();
  v9 = sub_2664DFE18();
  v10 = sub_2664E06C8();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = v0[23];
    v49 = v0[19];
    v12 = v0[15];
    v13 = v0[16];
    v14 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v53 = v51;
    *v14 = 136315394;
    if (v7)
    {
      v15 = v8;
    }

    else
    {
      v15 = 0;
    }

    v16 = 0xE000000000000000;
    if (!v7)
    {
      v7 = 0xE000000000000000;
    }

    v17 = sub_2662A320C(v15, v7, &v53);

    *(v14 + 4) = v17;
    *(v14 + 12) = 2080;
    swift_beginAccess();
    v18 = *(v49 + 20);
    if ((*(v13 + 48))(v11 + v18, 1, v12))
    {
      v19 = 0;
    }

    else
    {
      v24 = v0[16];
      v25 = v0[17];
      v26 = v0[15];
      (*(v24 + 16))(v25, v11 + v18, v26);
      sub_266348994();
      v27 = sub_2664E0DE8();
      v16 = v28;
      (*(v24 + 8))(v25, v26);
      v19 = v27;
    }

    v29 = v0[38];
    v31 = v0[29];
    v30 = v0[30];
    v32 = v0[28];
    v33 = sub_2662A320C(v19, v16, &v53);

    *(v14 + 14) = v33;
    _os_log_impl(&dword_26629C000, v9, v10, "PlaybackItem#toMusicSiriRepresentation Music Siri Item representation ID: %s, error: %s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v51, -1, -1);
    MEMORY[0x266784AD0](v14, -1, -1);

    v29(v30, v32);
  }

  else
  {
    v20 = v0[38];
    v22 = v0[29];
    v21 = v0[30];
    v23 = v0[28];

    v20(v21, v23);
  }

  v34 = v0[23];
  v35 = v0[11];
  swift_beginAccess();
  sub_2663488D4(v34, v35);
  sub_266348938(v34);
  v37 = v0[33];
  v36 = v0[34];
  v39 = v0[31];
  v38 = v0[32];
  v40 = v0[30];
  v42 = v0[26];
  v41 = v0[27];
  v44 = v0[22];
  v43 = v0[23];
  v45 = v0[21];
  v48 = v0[20];
  v50 = v0[18];
  v52 = v0[17];

  v46 = v0[1];

  return v46();
}

SiriAudioSupport::PlaybackItem::ContentOrigin_optional __swiftcall PlaybackItem.ContentOrigin.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2664E0CB8();

  v5 = 8;
  if (v3 < 8)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t PlaybackItem.ContentOrigin.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x656369766564;
  v3 = 0x62696C656C6F6877;
  if (v1 != 6)
  {
    v3 = 0x6E776F6E6B6E75;
  }

  v4 = 1684630645;
  if (v1 != 4)
  {
    v4 = 0x6867696C746F7073;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x72657669746C756DLL;
  if (v1 != 2)
  {
    v5 = 0x65726F7473;
  }

  if (*v0)
  {
    v2 = 0x636E797369726973;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

void sub_2663481C4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x656369766564;
  v5 = 0xEC00000079726172;
  v6 = 0x62696C656C6F6877;
  if (v2 != 6)
  {
    v6 = 0x6E776F6E6B6E75;
    v5 = 0xE700000000000000;
  }

  v7 = 0xE400000000000000;
  v8 = 1684630645;
  if (v2 != 4)
  {
    v8 = 0x6867696C746F7073;
    v7 = 0xE900000000000074;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEA00000000006573;
  v10 = 0x72657669746C756DLL;
  if (v2 != 2)
  {
    v10 = 0x65726F7473;
    v9 = 0xE500000000000000;
  }

  if (*v1)
  {
    v4 = 0x636E797369726973;
    v3 = 0xE800000000000000;
  }

  if (*v1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 3);
  v11 = v2 == 3;
  v12 = v2 - 3 < 0;
  if (*v1 <= 3u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

SiriAudioSupport::PlaybackItem::Scheme_optional __swiftcall PlaybackItem.Scheme.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2664E0CB8();

  v5 = 16;
  if (v3 < 0x10)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

Swift::String __swiftcall PlaybackItem.Scheme.toMediaTypeString()()
{
  v1 = 0xE500000000000000;
  v2 = 0x6D75626C61;
  switch(*v0)
  {
    case 1:
      v1 = 0xE800000000000000;
      v2 = 0x7473696C79616C70;
      goto LABEL_15;
    case 2:
      goto LABEL_15;
    case 3:
      v1 = 0xE400000000000000;
      v2 = 1735290739;
      goto LABEL_15;
    case 4:
      v1 = 0xEE0065646F736970;
      v2 = 0x4574736163646F70;
      goto LABEL_15;
    case 5:
      v1 = 0xEB00000000776F68;
      goto LABEL_12;
    case 6:
    case 0xA:
    case 0xC:
    case 0xE:
    case 0xF:
      v1 = 0xE700000000000000;
      v2 = 0x6E776F6E6B6E75;
      goto LABEL_15;
    case 7:
      v1 = 0xEE006E6F69746174;
LABEL_12:
      v2 = 0x5374736163646F70;
      goto LABEL_15;
    case 8:
      v1 = 0xE600000000000000;
      v2 = 0x747369747261;
      goto LABEL_15;
    case 9:
      v2 = 0x65726E6567;
      goto LABEL_15;
    case 0xB:
      v3 = 0x53636973756DLL;
      goto LABEL_8;
    case 0xD:
      v1 = 0xE90000000000006BLL;
      v2 = 0x6F6F426F69647561;
      goto LABEL_15;
    default:
      v3 = 0x536F69646172;
LABEL_8:
      v2 = v3 & 0xFFFFFFFFFFFFLL | 0x6174000000000000;
      v1 = 0xEC0000006E6F6974;
LABEL_15:
      result._object = v1;
      result._countAndFlagsBits = v2;
      return result;
  }
}

uint64_t sub_266348484(char *a1, char *a2)
{
  v10 = *a1;
  v9 = *a2;
  v2 = PlaybackItem.Scheme.rawValue.getter();
  v4 = v3;
  if (v2 == PlaybackItem.Scheme.rawValue.getter() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_2664E0D88();
  }

  return v7 & 1;
}

uint64_t sub_266348520()
{
  v1 = *v0;
  sub_2664E0E68();
  PlaybackItem.Scheme.rawValue.getter();
  sub_2664E0368();

  return sub_2664E0EB8();
}

uint64_t sub_266348588()
{
  v2 = *v0;
  PlaybackItem.Scheme.rawValue.getter();
  sub_2664E0368();
}

uint64_t sub_2663485EC()
{
  v1 = *v0;
  sub_2664E0E68();
  PlaybackItem.Scheme.rawValue.getter();
  sub_2664E0368();

  return sub_2664E0EB8();
}

unint64_t sub_26634865C@<X0>(unint64_t *a1@<X8>)
{
  result = PlaybackItem.Scheme.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void *PlaybackItem.deinit()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[8];

  return v0;
}

uint64_t PlaybackItem.__deallocating_deinit()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[8];

  return swift_deallocClassInstance();
}

uint64_t sub_266348774(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_2663487C8@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_2663487F8(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(a6) & 0xF;
  }

  else
  {
    v6 = a5 & 0xFFFFFFFFFFFFLL;
  }

  if (a3 == a5 && a4 == a6 && !(a1 >> 16) && a2 >> 16 == v6)
  {
    return 1;
  }

  else
  {
    return sub_2664E0D38() & 1;
  }
}

uint64_t sub_266348870(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MusicSiriItemIdentifierResponse();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2663488D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MusicSiriItemIdentifierResponse();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_266348938(uint64_t a1)
{
  v2 = type metadata accessor for MusicSiriItemIdentifierResponse();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_266348994()
{
  result = qword_280072C88;
  if (!qword_280072C88)
  {
    sub_2664DF6F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280072C88);
  }

  return result;
}

unint64_t sub_2663489F0()
{
  result = qword_280072C90;
  if (!qword_280072C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280072C90);
  }

  return result;
}

unint64_t sub_266348A78()
{
  result = qword_280072CA8;
  if (!qword_280072CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280072CA8);
  }

  return result;
}

uint64_t sub_266348AFC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t dispatch thunk of PlaybackItem.toMusicSiriRepresentation(musicSiriItemProvider:accountId:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 144);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_2662BD660;

  return v12(a1, a2, a3);
}

uint64_t sub_266348D48(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_266348D90(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for PlaybackItem.ContentOrigin(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PlaybackItem.ContentOrigin(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PlaybackItem.Scheme(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF1)
  {
    goto LABEL_17;
  }

  if (a2 + 15 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 15) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 15;
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

      return (*a1 | (v4 << 8)) - 15;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 15;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x10;
  v8 = v6 - 16;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PlaybackItem.Scheme(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 15 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 15) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF1)
  {
    v4 = 0;
  }

  if (a2 > 0xF0)
  {
    v5 = ((a2 - 241) >> 8) + 1;
    *result = a2 + 15;
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
    *result = a2 + 15;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_266349094(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (!v3)
  {
    return MEMORY[0x277D84F90];
  }

  v4 = 0;
  v5 = a3 + 48;
  result = MEMORY[0x277D84F90];
  v37 = a3 + 48;
  do
  {
    v38 = result;
    v7 = (v5 + 24 * v4);
    for (i = v4; ; ++i)
    {
      if (i >= v3)
      {
        __break(1u);
LABEL_31:
        __break(1u);
        return result;
      }

      v4 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_31;
      }

      v20 = *(v7 - 1);
      v19 = *v7;
      v21 = *(*v7 + 16);
      if (!a2)
      {
        if (!v21)
        {
          goto LABEL_19;
        }

        v25 = *(v7 - 1);

        goto LABEL_15;
      }

      v22 = *(v7 - 1);

      if (!v21)
      {
        goto LABEL_18;
      }

      v23 = sub_2662A3E98(a1, a2);
      if (v24)
      {
        break;
      }

      if (!*(v19 + 16))
      {
        goto LABEL_18;
      }

LABEL_15:
      v26 = sub_2662A3E98(0x6B6361626C6C6166, 0xE800000000000000);
      if ((v27 & 1) == 0)
      {
LABEL_18:

LABEL_19:
        v18 = 0;
        v17 = 0;
        v14 = 0;
        v15 = 0uLL;
        v16 = 0uLL;
        goto LABEL_5;
      }

      v28 = (*(v19 + 56) + (v26 << 6));
      v30 = v28[2];
      v29 = v28[3];
      v31 = v28[1];
      v44 = *v28;
      v45 = v31;
      v46 = v30;
      v47 = v29;
      v13 = *(&v44 + 1);
      v14 = v44;
      v39 = v30;
      v40 = v31;
      v18 = *(&v29 + 1);
      v17 = v29;
      sub_2662C0AE0(&v44, v43);

      if (v13)
      {
        goto LABEL_21;
      }

      v16 = v39;
      v15 = v40;
LABEL_5:
      v44 = v14;
      v45 = v15;
      v46 = v16;
      *&v47 = v17;
      *(&v47 + 1) = v18;
      result = sub_26634AACC(&v44);
      v7 += 3;
      if (v4 == v3)
      {
        return v38;
      }
    }

    v9 = (*(v19 + 56) + (v23 << 6));
    v11 = v9[2];
    v10 = v9[3];
    v12 = v9[1];
    v44 = *v9;
    v45 = v12;
    v46 = v11;
    v47 = v10;
    sub_2662C0AE0(&v44, v43);

    v13 = *(&v44 + 1);
    v14 = v44;
    v15 = v45;
    v16 = v46;
    v18 = *(&v47 + 1);
    v17 = v47;
    if (!*(&v44 + 1))
    {
      goto LABEL_5;
    }

    v39 = v46;
    v40 = v45;
LABEL_21:
    v5 = v37;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = v38;
    }

    else
    {
      result = sub_2663845E8(0, *(v38 + 16) + 1, 1, v38);
    }

    v33 = *(result + 16);
    v32 = *(result + 24);
    v35 = v39;
    v34 = v40;
    if (v33 >= v32 >> 1)
    {
      result = sub_2663845E8((v32 > 1), v33 + 1, 1, result);
      v35 = v39;
      v34 = v40;
    }

    *(result + 16) = v33 + 1;
    v36 = result + (v33 << 6);
    *(v36 + 32) = v14;
    *(v36 + 40) = v13;
    *(v36 + 48) = v34;
    *(v36 + 64) = v35;
    *(v36 + 80) = v17;
    *(v36 + 88) = v18;
  }

  while (v4 != v3);
  return result;
}

uint64_t sub_266349310(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v33 = MEMORY[0x277D84F90];
  sub_2662FCF04(0, v1, 0);
  v2 = v33;
  v4 = a1 + 64;
  v5 = -1 << *(a1 + 32);
  result = sub_2664E0A18();
  v7 = result;
  v8 = 0;
  v30 = *(a1 + 36);
  v29 = v1;
  while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(a1 + 32))
  {
    v11 = v7 >> 6;
    if ((*(v4 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
    {
      goto LABEL_22;
    }

    if (v30 != *(a1 + 36))
    {
      goto LABEL_23;
    }

    v12 = (*(a1 + 48) + 16 * v7);
    v13 = *v12;
    v14 = v12[1];
    v15 = *(*(a1 + 56) + 8 * v7);

    sub_266349688(v13, v14, v15, &v31);

    v16 = v31;
    v17 = v32;
    v33 = v2;
    v19 = *(v2 + 16);
    v18 = *(v2 + 24);
    if (v19 >= v18 >> 1)
    {
      v28 = v32;
      result = sub_2662FCF04((v18 > 1), v19 + 1, 1);
      v17 = v28;
      v2 = v33;
    }

    *(v2 + 16) = v19 + 1;
    v20 = v2 + 24 * v19;
    *(v20 + 32) = v16;
    *(v20 + 40) = v17;
    v9 = 1 << *(a1 + 32);
    if (v7 >= v9)
    {
      goto LABEL_24;
    }

    v4 = a1 + 64;
    v21 = *(a1 + 64 + 8 * v11);
    if ((v21 & (1 << v7)) == 0)
    {
      goto LABEL_25;
    }

    if (v30 != *(a1 + 36))
    {
      goto LABEL_26;
    }

    v22 = v21 & (-2 << (v7 & 0x3F));
    if (v22)
    {
      v9 = __clz(__rbit64(v22)) | v7 & 0x7FFFFFFFFFFFFFC0;
      v10 = v29;
    }

    else
    {
      v23 = v11 << 6;
      v24 = v11 + 1;
      v10 = v29;
      v25 = (a1 + 72 + 8 * v11);
      while (v24 < (v9 + 63) >> 6)
      {
        v27 = *v25++;
        v26 = v27;
        v23 += 64;
        ++v24;
        if (v27)
        {
          result = sub_26634AE1C(v7, v30, 0);
          v9 = __clz(__rbit64(v26)) + v23;
          goto LABEL_4;
        }
      }

      result = sub_26634AE1C(v7, v30, 0);
    }

LABEL_4:
    ++v8;
    v7 = v9;
    if (v8 == v10)
    {
      return v2;
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
LABEL_26:
  __break(1u);
  return result;
}