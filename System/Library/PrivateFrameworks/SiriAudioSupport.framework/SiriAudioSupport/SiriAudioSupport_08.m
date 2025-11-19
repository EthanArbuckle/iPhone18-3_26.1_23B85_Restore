uint64_t LibraryProvider.isCloudLibrarySyncOn(sharedUserIdInfo:completion:)(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6)
{
  v7 = v6;
  v28 = a1;
  v29 = a2;
  v12 = sub_2664DFE38();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v12, qword_280F914F0);
  swift_beginAccess();
  (*(v13 + 16))(v16, v17, v12);
  v18 = sub_2664DFE18();
  v19 = sub_2664E06E8();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v27 = a3;
    v21 = a4;
    v22 = a5;
    v23 = v7;
    v24 = v20;
    *v20 = 0;
    _os_log_impl(&dword_26629C000, v18, v19, "LibraryProvider#isCloudLibrarySyncOn...", v20, 2u);
    v25 = v24;
    v7 = v23;
    a5 = v22;
    a4 = v21;
    a3 = v27;
    MEMORY[0x266784AD0](v25, -1, -1);
  }

  (*(v13 + 8))(v16, v12);

  sub_266364430(v28, v29, a3, a4, v7, a5, a6);
}

uint64_t sub_266360334(void *a1, uint64_t (*a2)(void), uint64_t a3)
{
  v25[1] = a3;
  v26 = a2;
  v4 = sub_2664DFE38();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = MEMORY[0x28223BE20](v4);
  v25[0] = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = v25 - v9;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v4, qword_280F914F0);
  swift_beginAccess();
  v12 = v5[2];
  v12(v10, v11, v4);
  v13 = sub_2664DFE18();
  v14 = sub_2664E06E8();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_26629C000, v13, v14, "LibraryProvider#isCloudLibrarySyncOn retrieved controller", v15, 2u);
    MEMORY[0x266784AD0](v15, -1, -1);
  }

  v16 = v5[1];
  v16(v10, v4);
  v17 = a1[3];
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v17);
  v19 = (*(v18 + 24))(v17, v18);
  v20 = v25[0];
  v12(v25[0], v11, v4);
  v21 = sub_2664DFE18();
  v22 = sub_2664E06E8();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 67240192;
    *(v23 + 4) = v19 & 1;
    _os_log_impl(&dword_26629C000, v21, v22, "LibraryProvider#isCloudLibrarySyncOn cloud library on? %{BOOL,public}d", v23, 8u);
    MEMORY[0x266784AD0](v23, -1, -1);
  }

  v16(v20, v4);
  return v26(v19 & 1);
}

id sub_266360610()
{
  v1 = [*(v0 + 88) nowPlayingItem];

  return v1;
}

uint64_t sub_2663606A4(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(__int128 *))
{
  v7 = *(a1 + 2);
  v9 = *a1;
  v10 = v7;
  sub_2664E0838();
  if (qword_280F91508 != -1)
  {
    swift_once();
  }

  sub_2664DFDD8();
  return a6(&v9);
}

uint64_t sub_266360778(void *a1, uint64_t a2, uint64_t a3)
{
  v13[3] = &type metadata for AccountStoreProvider;
  v13[4] = &protocol witness table for AccountStoreProvider;
  *(a3 + 16) = a1;
  sub_2662A7224(a2, a3 + 24, &qword_280072BF8, &unk_2664E6F40);
  sub_2662A5550(v13, a3 + 64);
  v6 = objc_opt_self();
  v7 = a1;
  v8 = [v6 defaultCenter];
  v9 = *MEMORY[0x277D7F8C8];
  v10 = objc_opt_self();

  v11 = [v10 defaultIdentityStore];
  [v8 addObserver:a3 selector:sel_handleActiveAccountDidChangeNotificationWithNotification_ name:v9 object:v11];

  sub_2662A9238(a2, &qword_280072BF8, &unk_2664E6F40);
  __swift_destroy_boxed_opaque_existential_1Tm(v13);
  return a3;
}

void sub_266360910(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, uint64_t (*a12)(_BOOL8), uint64_t a13)
{
  v87 = a5;
  *(&v90 + 1) = a4;
  v75 = a3;
  *&v90 = a2;
  v74 = a1;
  v85 = sub_2664DFE38();
  v91 = *(v85 - 8);
  v16 = *(v91 + 64);
  v17 = MEMORY[0x28223BE20](v85);
  v77 = &v73 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v76 = &v73 - v20;
  MEMORY[0x28223BE20](v19);
  v22 = &v73 - v21;
  v23 = swift_allocObject();
  v81 = a7;
  v23[2] = a7;
  v23[3] = a8;
  v78 = a9;
  v23[4] = a9;
  v23[5] = a10;
  v79 = a11;
  v23[6] = a11;
  v23[7] = a12;
  v80 = a12;
  v23[8] = a13;
  v24 = swift_allocObject();
  v24[2] = a6;
  v24[3] = sub_2663674F8;
  v88 = v24;
  v24[4] = v23;
  v25 = qword_280F914E8;
  v84 = a8;

  v82 = a10;

  v83 = a13;

  v89 = a6;

  v86 = v23;

  if (v25 != -1)
  {
    swift_once();
  }

  v26 = v85;
  v27 = __swift_project_value_buffer(v85, qword_280F914F0);
  swift_beginAccess();
  v28 = v91;
  v29 = *(v91 + 16);
  v29(v22, v27, v26);
  v30 = v22;
  v31 = sub_2664DFE18();
  v32 = sub_2664E06E8();
  v33 = v26;
  if (os_log_type_enabled(v31, v32))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&dword_26629C000, v31, v32, "LibraryProvider#library...", v34, 2u);
    MEMORY[0x266784AD0](v34, -1, -1);
  }

  v35 = *(v28 + 8);
  v91 = v28 + 8;
  v35(v30, v26);
  v36 = *(&v90 + 1);
  v37 = v90;
  if (v90 == 1 || v90 == 0)
  {
    v38 = v77;
    v39 = v27;
    v40 = v33;
    v29(v77, v39, v33);
    v41 = sub_2664DFE18();
    v42 = sub_2664E06E8();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_26629C000, v41, v42, "LibraryProvider#library no sharedUserIdInfo found, using default library", v43, 2u);
      MEMORY[0x266784AD0](v43, -1, -1);
    }

    v35(v38, v40);
    v44 = *v87;
    v45 = v89;
    swift_beginAccess();
    v46 = *(v45 + 16);
    v47 = v84;

    v48 = v82;

    v49 = v83;

    [v46 setMediaLibrary_];
    swift_beginAccess();
    v50 = *(v45 + 16);
    sub_2663555CC(v50, v81, v47, v78, v48, v79, v80, v49);
  }

  else
  {
    v51 = v76;
    v29(v76, v27, v26);

    v52 = sub_2664DFE18();
    v53 = sub_2664E06E8();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = v36;
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      *&v92[0] = v56;
      *v55 = 136315394;
      if (v37)
      {
        v57 = v74;
      }

      else
      {
        v57 = 0;
      }

      if (!v37)
      {
        v37 = 0xE000000000000000;
      }

      v58 = sub_2662A320C(v57, v37, v92);

      *(v55 + 4) = v58;
      *(v55 + 12) = 2080;
      if (v54)
      {
        v59 = v75;
      }

      else
      {
        v59 = 0;
      }

      if (v54)
      {
        v60 = v54;
      }

      else
      {
        v60 = 0xE000000000000000;
      }

      v61 = sub_2662A320C(v59, v60, v92);

      *(v55 + 14) = v61;
      _os_log_impl(&dword_26629C000, v52, v53, "LibraryProvider#library using multiuser identity for library, requestSharedUserID: %s,  sharedUserIdFromPlayableMusicAccount: %s", v55, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266784AD0](v56, -1, -1);
      MEMORY[0x266784AD0](v55, -1, -1);

      v62 = v76;
    }

    else
    {

      v62 = v51;
    }

    v35(v62, v26);
    v63 = v87[18];
    sub_2663608CC(v87, v92);
    v64 = swift_allocObject();
    v65 = v88;
    *(v64 + 16) = sub_266367660;
    *(v64 + 24) = v65;
    v66 = v92[7];
    *(v64 + 128) = v92[6];
    *(v64 + 144) = v66;
    *(v64 + 160) = v92[8];
    *(v64 + 176) = v93;
    v67 = v92[3];
    *(v64 + 64) = v92[2];
    *(v64 + 80) = v67;
    v68 = v92[5];
    *(v64 + 96) = v92[4];
    *(v64 + 112) = v68;
    v69 = v92[1];
    *(v64 + 32) = v92[0];
    *(v64 + 48) = v69;
    v70 = objc_opt_self();

    v71 = [v70 currentDeviceInfo];
    v72 = [v71 supportsMultipleITunesAccounts];

    if (v72)
    {
      sub_26633393C(v74, v90, v75, *(&v90 + 1), sub_266367658, v64);
    }

    else
    {
      if (qword_280071AD0 != -1)
      {
        swift_once();
      }

      v94[0] = 0x755F656C676E6973;
      v94[1] = 0xEB00000000726573;
      (*(*off_280072BE8 + 160))(v94, sub_266333820, 0, 0, 1, sub_266367658, v64);
    }
  }
}

void sub_2663611BC(void *a1, unint64_t a2, void *a3, unint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, void (*a9)(uint64_t, unint64_t, void *), uint64_t a10)
{
  v77 = a5;
  v75 = a4;
  v69 = a3;
  v81 = a2;
  v68 = a1;
  v13 = sub_2664DFE38();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v70 = &v68 - v20;
  MEMORY[0x28223BE20](v19);
  v22 = &v68 - v21;
  v23 = swift_allocObject();
  v72 = a7;
  v23[2] = a7;
  v23[3] = a8;
  v71 = a9;
  v23[4] = a9;
  v23[5] = a10;
  v24 = swift_allocObject();
  v24[2] = a6;
  v24[3] = sub_26636742C;
  v79 = v24;
  v24[4] = v23;
  v25 = qword_280F914E8;
  v74 = a8;

  v73 = a10;

  v80 = a6;

  v78 = v23;

  if (v25 != -1)
  {
    swift_once();
  }

  v26 = __swift_project_value_buffer(v13, qword_280F914F0);
  swift_beginAccess();
  v27 = v14;
  v28 = *(v14 + 16);
  v28(v22, v26, v13);
  v29 = sub_2664DFE18();
  v30 = sub_2664E06E8();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_26629C000, v29, v30, "LibraryProvider#library...", v31, 2u);
    MEMORY[0x266784AD0](v31, -1, -1);
  }

  v32 = *(v27 + 8);
  v76 = v27 + 8;
  v32(v22, v13);
  v33 = v81;
  if (v81 != 1 && v81 | v75)
  {
    v43 = v70;
    v28(v70, v26, v13);
    v44 = v75;

    v45 = sub_2664DFE18();
    v46 = sub_2664E06E8();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      *&v82[0] = v48;
      *v47 = 136315394;
      v49 = v33 == 0;
      v50 = v33;
      if (v33)
      {
        v51 = v68;
      }

      else
      {
        v51 = 0;
      }

      if (v49)
      {
        v52 = 0xE000000000000000;
      }

      else
      {
        v52 = v50;
      }

      v53 = sub_2662A320C(v51, v52, v82);

      *(v47 + 4) = v53;
      *(v47 + 12) = 2080;
      if (v44)
      {
        v54 = v69;
      }

      else
      {
        v54 = 0;
      }

      if (v44)
      {
        v55 = v44;
      }

      else
      {
        v55 = 0xE000000000000000;
      }

      v56 = sub_2662A320C(v54, v55, v82);

      *(v47 + 14) = v56;
      _os_log_impl(&dword_26629C000, v45, v46, "LibraryProvider#library using multiuser identity for library, requestSharedUserID: %s,  sharedUserIdFromPlayableMusicAccount: %s", v47, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266784AD0](v48, -1, -1);
      MEMORY[0x266784AD0](v47, -1, -1);

      v57 = v70;
    }

    else
    {

      v57 = v43;
    }

    v32(v57, v13);
    v58 = v79;
    v59 = v77[18];
    sub_2663608CC(v77, v82);
    v60 = swift_allocObject();
    *(v60 + 16) = sub_266367660;
    *(v60 + 24) = v58;
    v61 = v82[7];
    *(v60 + 128) = v82[6];
    *(v60 + 144) = v61;
    *(v60 + 160) = v82[8];
    *(v60 + 176) = v83;
    v62 = v82[3];
    *(v60 + 64) = v82[2];
    *(v60 + 80) = v62;
    v63 = v82[5];
    *(v60 + 96) = v82[4];
    *(v60 + 112) = v63;
    v64 = v82[1];
    *(v60 + 32) = v82[0];
    *(v60 + 48) = v64;
    v65 = objc_opt_self();

    v66 = [v65 currentDeviceInfo];
    v67 = [v66 supportsMultipleITunesAccounts];

    if (v67)
    {
      sub_26633393C(v68, v81, v69, v44, sub_266367658, v60);
    }

    else
    {
      if (qword_280071AD0 != -1)
      {
        swift_once();
      }

      v84[0] = 0x755F656C676E6973;
      v84[1] = 0xEB00000000726573;
      (*(*off_280072BE8 + 160))(v84, sub_266333820, 0, 0, 1, sub_266367658, v60);
    }
  }

  else
  {
    v28(v18, v26, v13);
    v34 = sub_2664DFE18();
    v35 = sub_2664E06E8();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_26629C000, v34, v35, "LibraryProvider#library no sharedUserIdInfo found, using default library", v36, 2u);
      MEMORY[0x266784AD0](v36, -1, -1);
    }

    v32(v18, v13);
    v37 = *v77;
    v38 = v80;
    swift_beginAccess();
    v39 = *(v38 + 16);
    v40 = v74;

    v41 = v73;

    [v39 setMediaLibrary_];
    swift_beginAccess();
    v42 = *(v38 + 16);
    sub_266358C74(v42, v72, v40, v71, v41);
  }
}

void sub_2663619D4(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, void *a8, void (*a9)(__int128 *), uint64_t a10, uint64_t a11, void *a12)
{
  v81 = a5;
  *(&v84 + 1) = a4;
  v71 = a3;
  *&v84 = a2;
  v70 = a1;
  v15 = sub_2664DFE38();
  v85 = *(v15 - 8);
  v16 = *(v85 + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v74 = &v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v72 = &v69 - v20;
  MEMORY[0x28223BE20](v19);
  v22 = &v69 - v21;
  v23 = swift_allocObject();
  v77 = a7;
  v23[2] = a7;
  v23[3] = a8;
  v75 = a9;
  v23[4] = a9;
  v23[5] = a10;
  v76 = a11;
  v23[6] = a11;
  v23[7] = a12;
  v24 = swift_allocObject();
  v24[2] = a6;
  v24[3] = sub_266367330;
  v82 = v24;
  v24[4] = v23;
  v25 = qword_280F914E8;
  v79 = a8;

  v78 = a10;

  v73 = a12;
  v83 = a6;

  v80 = v23;

  if (v25 != -1)
  {
    swift_once();
  }

  v26 = __swift_project_value_buffer(v15, qword_280F914F0);
  swift_beginAccess();
  v27 = v85;
  v28 = *(v85 + 16);
  v28(v22, v26, v15);
  v29 = sub_2664DFE18();
  v30 = sub_2664E06E8();
  v31 = v15;
  if (os_log_type_enabled(v29, v30))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&dword_26629C000, v29, v30, "LibraryProvider#library...", v32, 2u);
    MEMORY[0x266784AD0](v32, -1, -1);
  }

  v33 = *(v27 + 8);
  v85 = v27 + 8;
  v33(v22, v15);
  v34 = *(&v84 + 1);
  v35 = v84;
  if (v84 == 1 || v84 == 0)
  {
    v36 = v74;
    v28(v74, v26, v31);
    v37 = sub_2664DFE18();
    v38 = sub_2664E06E8();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_26629C000, v37, v38, "LibraryProvider#library no sharedUserIdInfo found, using default library", v39, 2u);
      MEMORY[0x266784AD0](v39, -1, -1);
    }

    v33(v36, v31);
    v40 = *v81;
    v41 = v83;
    swift_beginAccess();
    v42 = *(v41 + 16);
    v43 = v79;

    v44 = v78;

    v45 = v73;
    [v42 setMediaLibrary_];
    swift_beginAccess();
    v46 = *(v41 + 16);
    sub_26635DBA4(v46, v77, v43, v75, v44, v76, v45);
  }

  else
  {
    v47 = v72;
    v28(v72, v26, v15);

    v48 = sub_2664DFE18();
    v49 = sub_2664E06E8();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = v34;
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      *&v86[0] = v52;
      *v51 = 136315394;
      if (v35)
      {
        v53 = v70;
      }

      else
      {
        v53 = 0;
      }

      if (!v35)
      {
        v35 = 0xE000000000000000;
      }

      v54 = sub_2662A320C(v53, v35, v86);

      *(v51 + 4) = v54;
      *(v51 + 12) = 2080;
      if (v50)
      {
        v55 = v71;
      }

      else
      {
        v55 = 0;
      }

      if (v50)
      {
        v56 = v50;
      }

      else
      {
        v56 = 0xE000000000000000;
      }

      v57 = sub_2662A320C(v55, v56, v86);

      *(v51 + 14) = v57;
      _os_log_impl(&dword_26629C000, v48, v49, "LibraryProvider#library using multiuser identity for library, requestSharedUserID: %s,  sharedUserIdFromPlayableMusicAccount: %s", v51, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266784AD0](v52, -1, -1);
      MEMORY[0x266784AD0](v51, -1, -1);

      v58 = v72;
    }

    else
    {

      v58 = v47;
    }

    v33(v58, v15);
    v59 = v82;
    v60 = v81[18];
    sub_2663608CC(v81, v86);
    v61 = swift_allocObject();
    *(v61 + 16) = sub_266367660;
    *(v61 + 24) = v59;
    v62 = v86[7];
    *(v61 + 128) = v86[6];
    *(v61 + 144) = v62;
    *(v61 + 160) = v86[8];
    *(v61 + 176) = v87;
    v63 = v86[3];
    *(v61 + 64) = v86[2];
    *(v61 + 80) = v63;
    v64 = v86[5];
    *(v61 + 96) = v86[4];
    *(v61 + 112) = v64;
    v65 = v86[1];
    *(v61 + 32) = v86[0];
    *(v61 + 48) = v65;
    v66 = objc_opt_self();

    v67 = [v66 currentDeviceInfo];
    v68 = [v67 supportsMultipleITunesAccounts];

    if (v68)
    {
      sub_26633393C(v70, v84, v71, *(&v84 + 1), sub_266367658, v61);
    }

    else
    {
      if (qword_280071AD0 != -1)
      {
        swift_once();
      }

      v88[0] = 0x755F656C676E6973;
      v88[1] = 0xEB00000000726573;
      (*(*off_280072BE8 + 160))(v88, sub_266333820, 0, 0, 1, sub_266367658, v61);
    }
  }
}

void sub_266362244(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void (*a10)(__int128 *), uint64_t a11, void *a12)
{
  v81 = a5;
  *(&v84 + 1) = a4;
  v71 = a3;
  *&v84 = a2;
  v70 = a1;
  v15 = sub_2664DFE38();
  v85 = *(v15 - 8);
  v16 = *(v85 + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v74 = &v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v72 = &v69 - v20;
  MEMORY[0x28223BE20](v19);
  v22 = &v69 - v21;
  v23 = swift_allocObject();
  v77 = a7;
  v23[2] = a7;
  v23[3] = a8;
  v75 = a9;
  v23[4] = a9;
  v23[5] = a10;
  v76 = a10;
  v23[6] = a11;
  v23[7] = a12;
  v24 = swift_allocObject();
  v24[2] = a6;
  v24[3] = sub_26636730C;
  v82 = v24;
  v24[4] = v23;
  v25 = qword_280F914E8;
  v79 = a8;

  v78 = a11;

  v73 = a12;
  v83 = a6;

  v80 = v23;

  if (v25 != -1)
  {
    swift_once();
  }

  v26 = __swift_project_value_buffer(v15, qword_280F914F0);
  swift_beginAccess();
  v27 = v85;
  v28 = *(v85 + 16);
  v28(v22, v26, v15);
  v29 = sub_2664DFE18();
  v30 = sub_2664E06E8();
  v31 = v15;
  if (os_log_type_enabled(v29, v30))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&dword_26629C000, v29, v30, "LibraryProvider#library...", v32, 2u);
    MEMORY[0x266784AD0](v32, -1, -1);
  }

  v33 = *(v27 + 8);
  v85 = v27 + 8;
  v33(v22, v15);
  v34 = *(&v84 + 1);
  v35 = v84;
  if (v84 == 1 || v84 == 0)
  {
    v36 = v74;
    v28(v74, v26, v31);
    v37 = sub_2664DFE18();
    v38 = sub_2664E06E8();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_26629C000, v37, v38, "LibraryProvider#library no sharedUserIdInfo found, using default library", v39, 2u);
      MEMORY[0x266784AD0](v39, -1, -1);
    }

    v33(v36, v31);
    v40 = *v81;
    v41 = v83;
    swift_beginAccess();
    v42 = *(v41 + 16);
    v43 = v79;

    v44 = v78;

    v45 = v73;
    [v42 setMediaLibrary_];
    swift_beginAccess();
    v46 = *(v41 + 16);
    sub_26635F5CC(v46, v77, v43, v75, v76, v44, v45);
  }

  else
  {
    v47 = v72;
    v28(v72, v26, v15);

    v48 = sub_2664DFE18();
    v49 = sub_2664E06E8();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = v34;
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      *&v86[0] = v52;
      *v51 = 136315394;
      if (v35)
      {
        v53 = v70;
      }

      else
      {
        v53 = 0;
      }

      if (!v35)
      {
        v35 = 0xE000000000000000;
      }

      v54 = sub_2662A320C(v53, v35, v86);

      *(v51 + 4) = v54;
      *(v51 + 12) = 2080;
      if (v50)
      {
        v55 = v71;
      }

      else
      {
        v55 = 0;
      }

      if (v50)
      {
        v56 = v50;
      }

      else
      {
        v56 = 0xE000000000000000;
      }

      v57 = sub_2662A320C(v55, v56, v86);

      *(v51 + 14) = v57;
      _os_log_impl(&dword_26629C000, v48, v49, "LibraryProvider#library using multiuser identity for library, requestSharedUserID: %s,  sharedUserIdFromPlayableMusicAccount: %s", v51, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266784AD0](v52, -1, -1);
      MEMORY[0x266784AD0](v51, -1, -1);

      v58 = v72;
    }

    else
    {

      v58 = v47;
    }

    v33(v58, v15);
    v59 = v82;
    v60 = v81[18];
    sub_2663608CC(v81, v86);
    v61 = swift_allocObject();
    *(v61 + 16) = sub_266367324;
    *(v61 + 24) = v59;
    v62 = v86[7];
    *(v61 + 128) = v86[6];
    *(v61 + 144) = v62;
    *(v61 + 160) = v86[8];
    *(v61 + 176) = v87;
    v63 = v86[3];
    *(v61 + 64) = v86[2];
    *(v61 + 80) = v63;
    v64 = v86[5];
    *(v61 + 96) = v86[4];
    *(v61 + 112) = v64;
    v65 = v86[1];
    *(v61 + 32) = v86[0];
    *(v61 + 48) = v65;
    v66 = objc_opt_self();

    v67 = [v66 currentDeviceInfo];
    v68 = [v67 supportsMultipleITunesAccounts];

    if (v68)
    {
      sub_26633393C(v70, v84, v71, *(&v84 + 1), sub_266367658, v61);
    }

    else
    {
      if (qword_280071AD0 != -1)
      {
        swift_once();
      }

      v88[0] = 0x755F656C676E6973;
      v88[1] = 0xEB00000000726573;
      (*(*off_280072BE8 + 160))(v88, sub_266333820, 0, 0, 1, sub_266367658, v61);
    }
  }
}

void sub_266362AB4(void *a1, unint64_t a2, void *a3, unint64_t a4, void *a5, uint64_t a6, void (*a7)(void), uint64_t a8)
{
  v73 = a3;
  v72 = a1;
  v14 = sub_2664DFE38();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v75 = &v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v74 = &v69 - v20;
  MEMORY[0x28223BE20](v19);
  v22 = &v69 - v21;
  v23 = swift_allocObject();
  v23[2] = a6;
  v23[3] = a7;
  v78 = a7;
  v23[4] = a8;
  v24 = qword_280F914E8;
  v76 = a6;

  v77 = a8;

  if (v24 != -1)
  {
    swift_once();
  }

  v25 = __swift_project_value_buffer(v14, qword_280F914F0);
  swift_beginAccess();
  v80 = v15;
  v26 = *(v15 + 16);
  v79 = v14;
  v26(v22, v25, v14);
  v27 = sub_2664DFE18();
  v28 = sub_2664E06E8();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v71 = a5;
    v30 = a2;
    v31 = a4;
    v32 = v23;
    v33 = v29;
    *v29 = 0;
    _os_log_impl(&dword_26629C000, v27, v28, "LibraryProvider#library...", v29, 2u);
    v34 = v33;
    v23 = v32;
    a4 = v31;
    a2 = v30;
    a5 = v71;
    MEMORY[0x266784AD0](v34, -1, -1);
  }

  v35 = *(v80 + 8);
  v36 = v79;
  v80 += 8;
  v35(v22, v79);
  if (a2 != 1 && a2 | a4)
  {
    v45 = v74;
    v26(v74, v25, v36);

    v46 = sub_2664DFE18();
    v47 = sub_2664E06E8();

    v48 = os_log_type_enabled(v46, v47);
    v70 = a2;
    if (v48)
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v71 = a5;
      v51 = v50;
      *&v81[0] = v50;
      *v49 = 136315394;
      if (a2)
      {
        v52 = v72;
      }

      else
      {
        v52 = 0;
      }

      if (!a2)
      {
        a2 = 0xE000000000000000;
      }

      v53 = sub_2662A320C(v52, a2, v81);

      *(v49 + 4) = v53;
      *(v49 + 12) = 2080;
      if (a4)
      {
        v54 = v73;
      }

      else
      {
        v54 = 0;
      }

      if (a4)
      {
        v55 = a4;
      }

      else
      {
        v55 = 0xE000000000000000;
      }

      v56 = sub_2662A320C(v54, v55, v81);

      *(v49 + 14) = v56;
      _os_log_impl(&dword_26629C000, v46, v47, "LibraryProvider#library using multiuser identity for library, requestSharedUserID: %s,  sharedUserIdFromPlayableMusicAccount: %s", v49, 0x16u);
      swift_arrayDestroy();
      v57 = v51;
      a5 = v71;
      MEMORY[0x266784AD0](v57, -1, -1);
      MEMORY[0x266784AD0](v49, -1, -1);

      v58 = v74;
      v59 = v79;
    }

    else
    {

      v58 = v45;
      v59 = v36;
    }

    v35(v58, v59);
    v60 = a5[18];
    sub_2663608CC(a5, v81);
    v61 = swift_allocObject();
    *(v61 + 16) = sub_266367660;
    *(v61 + 24) = v23;
    v62 = v81[7];
    *(v61 + 128) = v81[6];
    *(v61 + 144) = v62;
    *(v61 + 160) = v81[8];
    *(v61 + 176) = v82;
    v63 = v81[3];
    *(v61 + 64) = v81[2];
    *(v61 + 80) = v63;
    v64 = v81[5];
    *(v61 + 96) = v81[4];
    *(v61 + 112) = v64;
    v65 = v81[1];
    *(v61 + 32) = v81[0];
    *(v61 + 48) = v65;
    v66 = objc_opt_self();

    v67 = [v66 currentDeviceInfo];
    v68 = [v67 supportsMultipleITunesAccounts];

    if (v68)
    {
      sub_26633393C(v72, v70, v73, a4, sub_266367658, v61);
    }

    else
    {
      if (qword_280071AD0 != -1)
      {
        swift_once();
      }

      v83[0] = 0x755F656C676E6973;
      v83[1] = 0xEB00000000726573;
      (*(*off_280072BE8 + 160))(v83, sub_266333820, 0, 0, 1, sub_266367658, v61);
    }
  }

  else
  {
    v37 = v75;
    v26(v75, v25, v36);
    v38 = sub_2664DFE18();
    v39 = sub_2664E06E8();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_26629C000, v38, v39, "LibraryProvider#library no sharedUserIdInfo found, using default library", v40, 2u);
      v41 = v40;
      v36 = v79;
      MEMORY[0x266784AD0](v41, -1, -1);
    }

    v35(v37, v36);
    v42 = *a5;
    v43 = v76;
    swift_beginAccess();
    [*(v43 + 16) setMediaLibrary_];
    swift_beginAccess();
    v44 = *(v43 + 16);
    v78();
  }
}

uint64_t sub_266363244(void *a1, unint64_t a2, void *a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v78 = a5;
  v71 = a3;
  v70 = a1;
  v15 = sub_2664DFE38();
  v16 = *(v15 - 8);
  v17 = v16[8];
  v18 = MEMORY[0x28223BE20](v15);
  v72 = &v66 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v69 = &v66 - v21;
  MEMORY[0x28223BE20](v20);
  v23 = &v66 - v22;
  v24 = swift_allocObject();
  v75 = a6;
  v24[2] = a6;
  v24[3] = a7;
  v76 = a7;
  v24[4] = a8;
  v24[5] = a9;
  v73 = a9;
  v79 = v24;
  v24[6] = a10;
  v25 = qword_280F914E8;
  v77 = a8;

  v74 = a10;

  if (v25 != -1)
  {
    swift_once();
  }

  v26 = __swift_project_value_buffer(v15, qword_280F914F0);
  swift_beginAccess();
  v27 = v16[2];
  v80 = v15;
  (v27)(v23, v26, v15);
  v28 = sub_2664DFE18();
  v29 = sub_2664E06E8();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = a2;
    v31 = a4;
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&dword_26629C000, v28, v29, "LibraryProvider#library...", v32, 2u);
    v33 = v32;
    a4 = v31;
    a2 = v30;
    MEMORY[0x266784AD0](v33, -1, -1);
  }

  v34 = v16[1];
  v35 = v80;
  v34(v23, v80);
  if (a2 != 1 && a2 | a4)
  {
    v40 = v69;
    v27();

    v41 = sub_2664DFE18();
    v42 = sub_2664E06E8();

    v43 = os_log_type_enabled(v41, v42);
    v68 = a4;
    v67 = a2;
    if (v43)
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      LODWORD(v77) = v42;
      v46 = v45;
      *&v82[0] = v45;
      *v44 = 136315394;
      if (a2)
      {
        v47 = v70;
      }

      else
      {
        v47 = 0;
      }

      if (a2)
      {
        v48 = a2;
      }

      else
      {
        v48 = 0xE000000000000000;
      }

      v49 = sub_2662A320C(v47, v48, v82);

      *(v44 + 4) = v49;
      *(v44 + 12) = 2080;
      if (a4)
      {
        v50 = v71;
      }

      else
      {
        v50 = 0;
      }

      if (a4)
      {
        v51 = a4;
      }

      else
      {
        v51 = 0xE000000000000000;
      }

      v52 = sub_2662A320C(v50, v51, v82);

      *(v44 + 14) = v52;
      _os_log_impl(&dword_26629C000, v41, v77, "LibraryProvider#library using multiuser identity for library, requestSharedUserID: %s,  sharedUserIdFromPlayableMusicAccount: %s", v44, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266784AD0](v46, -1, -1);
      MEMORY[0x266784AD0](v44, -1, -1);

      v53 = v40;
      v54 = v80;
    }

    else
    {

      v53 = v40;
      v54 = v35;
    }

    v34(v53, v54);
    v55 = v79;
    v56 = *(v78 + 144);
    sub_2663608CC(v78, v82);
    v57 = swift_allocObject();
    *(v57 + 16) = sub_26636747C;
    *(v57 + 24) = v55;
    v58 = v82[7];
    *(v57 + 128) = v82[6];
    *(v57 + 144) = v58;
    *(v57 + 160) = v82[8];
    *(v57 + 176) = v83;
    v59 = v82[3];
    *(v57 + 64) = v82[2];
    *(v57 + 80) = v59;
    v60 = v82[5];
    *(v57 + 96) = v82[4];
    *(v57 + 112) = v60;
    v61 = v82[1];
    *(v57 + 32) = v82[0];
    *(v57 + 48) = v61;
    v62 = objc_opt_self();

    v63 = [v62 currentDeviceInfo];
    v64 = [v63 supportsMultipleITunesAccounts];

    if (v64)
    {
      sub_26633393C(v70, v67, v71, v68, sub_266367658, v57);
    }

    else
    {
      if (qword_280071AD0 != -1)
      {
        swift_once();
      }

      v81[0] = 0x755F656C676E6973;
      v81[1] = 0xEB00000000726573;
      (*(*off_280072BE8 + 160))(v81, sub_266333820, 0, 0, 1, sub_266367658, v57);
    }
  }

  else
  {
    v36 = v72;
    (v27)(v72, v26, v35);
    v37 = sub_2664DFE18();
    v38 = sub_2664E06E8();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_26629C000, v37, v38, "LibraryProvider#library no sharedUserIdInfo found, using default library", v39, 2u);
      MEMORY[0x266784AD0](v39, -1, -1);
    }

    v34(v36, v80);
    sub_266356D50(*v78, v75, v76, v77, v73, v74);
  }
}

uint64_t sub_2663639A8(void *a1, void *a2, void *a3, unint64_t a4, void *a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v64 = a5;
  v56 = a4;
  v55 = a3;
  v65 = a2;
  v54 = a1;
  v14 = sub_2664DFE38();
  v15 = *(v14 - 8);
  v16 = v15[8];
  v17 = MEMORY[0x28223BE20](v14);
  v57 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v53 - v19;
  v21 = swift_allocObject();
  v63 = a6;
  v21[2] = a6;
  v21[3] = a7;
  v60 = a8;
  v21[4] = a8;
  v21[5] = a9;
  v59 = a10;
  v21[6] = a10;
  v21[7] = a11;
  v22 = qword_280F914E8;
  v58 = a7;
  v61 = a9;

  v62 = a11;

  if (v22 != -1)
  {
    swift_once();
  }

  v23 = __swift_project_value_buffer(v14, qword_280F914F0);
  swift_beginAccess();
  v24 = v15[2];
  v24(v20, v23, v14);
  v25 = sub_2664DFE18();
  v26 = sub_2664E06E8();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_26629C000, v25, v26, "LibraryProvider#cloudController...", v27, 2u);
    MEMORY[0x266784AD0](v27, -1, -1);
  }

  v28 = v15[1];
  v28(v20, v14);
  v29 = v65;
  if (v65 != 1 && v65 | v56)
  {
    v43 = v64[18];
    sub_2663608CC(v64, v67);
    v44 = swift_allocObject();
    *(v44 + 16) = sub_2663673BC;
    *(v44 + 24) = v21;
    v45 = v67[7];
    *(v44 + 128) = v67[6];
    *(v44 + 144) = v45;
    *(v44 + 160) = v67[8];
    *(v44 + 176) = v68;
    v46 = v67[3];
    *(v44 + 64) = v67[2];
    *(v44 + 80) = v46;
    v47 = v67[5];
    *(v44 + 96) = v67[4];
    *(v44 + 112) = v47;
    v48 = v67[1];
    *(v44 + 32) = v67[0];
    *(v44 + 48) = v48;
    v49 = objc_opt_self();

    v50 = [v49 currentDeviceInfo];
    v51 = [v50 supportsMultipleITunesAccounts];

    if (v51)
    {
      sub_26633393C(v54, v29, v55, v56, sub_26636765C, v44);
    }

    else
    {
      if (qword_280071AD0 != -1)
      {
        swift_once();
      }

      v66[0] = 0x755F656C676E6973;
      v66[1] = 0xEB00000000726573;
      (*(*off_280072BE8 + 160))(v66, sub_266333820, 0, 0, 1, sub_26636765C, v44);
    }
  }

  else
  {
    v65 = v21;
    v30 = v57;
    v24(v57, v23, v14);
    v31 = sub_2664DFE18();
    v32 = sub_2664E06E8();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_26629C000, v31, v32, "LibraryProvider#addToPlaylist (adamId) retrieved controller, adding item...", v33, 2u);
      MEMORY[0x266784AD0](v33, -1, -1);
    }

    v28(v30, v14);
    v34 = v64[4];
    v35 = v64[5];
    __swift_project_boxed_opaque_existential_1(v64 + 1, v34);
    v36 = v58;
    v37 = [v58 persistentID];
    v38 = swift_allocObject();
    v39 = v61;
    v38[2] = v60;
    v38[3] = v39;
    v40 = v59;
    v38[4] = v36;
    v38[5] = v40;
    v38[6] = v62;
    v41 = *(v35 + 8);
    v42 = v36;

    v41(v63, v37, sub_2663673CC, v38, v34, v35);
  }
}

uint64_t sub_266363FB8(void *a1, unint64_t a2, void *a3, unint64_t a4, uint64_t a5, void *a6, void (*a7)(void), uint64_t a8, void *a9)
{
  v48 = a5;
  v46 = a3;
  v49 = a2;
  v45 = a1;
  v13 = sub_2664DFE38();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_allocObject();
  v18[2] = a6;
  v18[3] = a7;
  v18[4] = a8;
  v18[5] = a9;
  v19 = qword_280F914E8;
  v20 = a6;

  v47 = a9;
  if (v19 != -1)
  {
    swift_once();
  }

  v21 = __swift_project_value_buffer(v13, qword_280F914F0);
  swift_beginAccess();
  (*(v14 + 16))(v17, v21, v13);
  v22 = sub_2664DFE18();
  v23 = sub_2664E06E8();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v44 = v18;
    v25 = a8;
    v26 = a7;
    v27 = v20;
    v28 = a4;
    v29 = v24;
    *v24 = 0;
    _os_log_impl(&dword_26629C000, v22, v23, "LibraryProvider#cloudController...", v24, 2u);
    v30 = v29;
    a4 = v28;
    v20 = v27;
    a7 = v26;
    a8 = v25;
    v18 = v44;
    MEMORY[0x266784AD0](v30, -1, -1);
  }

  (*(v14 + 8))(v17, v13);
  v31 = v49;
  if (v49 != 1 && v49 | a4)
  {
    v32 = a4;
    v33 = *(v48 + 144);
    sub_2663608CC(v48, v51);
    v34 = swift_allocObject();
    *(v34 + 16) = sub_2663673A4;
    *(v34 + 24) = v18;
    v35 = v51[7];
    *(v34 + 128) = v51[6];
    *(v34 + 144) = v35;
    *(v34 + 160) = v51[8];
    *(v34 + 176) = v52;
    v36 = v51[3];
    *(v34 + 64) = v51[2];
    *(v34 + 80) = v36;
    v37 = v51[5];
    *(v34 + 96) = v51[4];
    *(v34 + 112) = v37;
    v38 = v51[1];
    *(v34 + 32) = v51[0];
    *(v34 + 48) = v38;
    v39 = objc_opt_self();

    v40 = [v39 currentDeviceInfo];
    v41 = [v40 supportsMultipleITunesAccounts];

    if (v41)
    {
      sub_26633393C(v45, v31, v46, v32, sub_26636765C, v34);
    }

    else
    {
      if (qword_280071AD0 != -1)
      {
        swift_once();
      }

      v50[0] = 0x755F656C676E6973;
      v50[1] = 0xEB00000000726573;
      (*(*off_280072BE8 + 160))(v50, sub_266333820, 0, 0, 1, sub_26636765C, v34);
    }
  }

  else
  {
    sub_26635C6B8((v48 + 8), v20, a7, a8, v47);
  }
}

uint64_t sub_266364430(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void), uint64_t a7)
{
  *&v35 = a4;
  v34 = a3;
  *(&v35 + 1) = a2;
  v33 = a1;
  v10 = sub_2664DFE38();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_allocObject();
  *(v15 + 16) = a6;
  *(v15 + 24) = a7;
  v16 = qword_280F914E8;

  if (v16 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v10, qword_280F914F0);
  swift_beginAccess();
  (*(v11 + 16))(v14, v17, v10);
  v18 = sub_2664DFE18();
  v19 = sub_2664E06E8();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_26629C000, v18, v19, "LibraryProvider#cloudController...", v20, 2u);
    MEMORY[0x266784AD0](v20, -1, -1);
  }

  (*(v11 + 8))(v14, v10);
  v21 = *(&v35 + 1);
  if (*(&v35 + 1) == 1 || v35 == 0)
  {
    sub_266360334((a5 + 8), a6, a7);
  }

  else
  {
    v22 = *(a5 + 144);
    sub_2663608CC(a5, v37);
    v23 = swift_allocObject();
    *(v23 + 16) = sub_266367274;
    *(v23 + 24) = v15;
    v24 = v37[7];
    *(v23 + 128) = v37[6];
    *(v23 + 144) = v24;
    *(v23 + 160) = v37[8];
    *(v23 + 176) = v38;
    v25 = v37[3];
    *(v23 + 64) = v37[2];
    *(v23 + 80) = v25;
    v26 = v37[5];
    *(v23 + 96) = v37[4];
    *(v23 + 112) = v26;
    v27 = v37[1];
    *(v23 + 32) = v37[0];
    *(v23 + 48) = v27;
    v28 = objc_opt_self();

    v29 = [v28 currentDeviceInfo];
    v30 = [v29 supportsMultipleITunesAccounts];

    if (v30)
    {
      sub_26633393C(v33, v21, v34, v35, sub_2663672F4, v23);
    }

    else
    {
      if (qword_280071AD0 != -1)
      {
        swift_once();
      }

      v36[0] = 0x755F656C676E6973;
      v36[1] = 0xEB00000000726573;
      (*(*off_280072BE8 + 160))(v36, sub_266333820, 0, 0, 1, sub_2663672F4, v23);
    }
  }
}

uint64_t sub_266364848(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, int a6, uint64_t *a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t a11, uint64_t a12, uint64_t (*a13)(_BOOL8), uint64_t a14)
{
  v82 = a7;
  v83 = a8;
  v78 = a6;
  v79 = a4;
  v76 = a1;
  v77 = a3;
  v81 = a2;
  v15 = sub_2664DFE38();
  v16 = *(v15 - 8);
  v17 = v16[8];
  v18 = MEMORY[0x28223BE20](v15);
  v87 = &v73 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v75 = &v73 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v74 = &v73 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v73 = &v73 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v73 - v27;
  MEMORY[0x28223BE20](v26);
  v30 = &v73 - v29;
  v31 = qword_280F914E8;
  v84 = a9;

  v86 = a11;

  v85 = a14;

  if (v31 != -1)
  {
    swift_once();
  }

  v32 = __swift_project_value_buffer(v15, qword_280F914F0);
  swift_beginAccess();
  v80 = v16[2];
  v80(v30, v32, v15);
  v33 = sub_2664DFE18();
  v34 = sub_2664E06E8();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = v28;
    v36 = v32;
    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&dword_26629C000, v33, v34, "LibraryProvider#mediaQuery...", v37, 2u);
    v38 = v37;
    v32 = v36;
    v28 = v35;
    MEMORY[0x266784AD0](v38, -1, -1);
  }

  v88 = v16[1];
  v88(v30, v15);
  v39 = swift_allocObject();
  if (a5 == 6)
  {
    v54 = v74;
    v40 = v80;
    v80(v74, v32, v15);
    v55 = sub_2664DFE18();
    v56 = sub_2664E06E8();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      *v57 = 0;
      _os_log_impl(&dword_26629C000, v55, v56, "LibraryProvider#mediaQuery playlist", v57, 2u);
      MEMORY[0x266784AD0](v57, -1, -1);
    }

    v58 = (v88)(v54, v15);
    v59 = v82[13];
    v53 = (v82[12])(v58);
    goto LABEL_20;
  }

  v40 = v80;
  if (a5 == 1)
  {
    v47 = v73;
    v80(v73, v32, v15);
    v48 = sub_2664DFE18();
    v49 = sub_2664E06E8();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&dword_26629C000, v48, v49, "LibraryProvider#mediaQuery album", v50, 2u);
      MEMORY[0x266784AD0](v50, -1, -1);
    }

    v51 = (v88)(v47, v15);
    v52 = v82[17];
    v53 = (v82[16])(v51);
    goto LABEL_20;
  }

  if (a5)
  {
    v60 = v75;
    v80(v75, v32, v15);
    v61 = sub_2664DFE18();
    v62 = sub_2664E06E8();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      *v63 = 0;
      _os_log_impl(&dword_26629C000, v61, v62, "LibraryProvider#mediaQuery default, empty", v63, 2u);
      MEMORY[0x266784AD0](v63, -1, -1);
    }

    v88(v60, v15);
    v53 = [objc_allocWithZone(MEMORY[0x277CD5E38]) init];
LABEL_20:
    *(v39 + 16) = v53;
    goto LABEL_21;
  }

  v80(v28, v32, v15);
  v41 = sub_2664DFE18();
  v42 = sub_2664E06E8();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    *v43 = 67109120;
    *(v43 + 4) = v78 & 1;
    _os_log_impl(&dword_26629C000, v41, v42, "LibraryProvider#mediaQuery title, shouldAllowNonLibraryContent: %{BOOL}d", v43, 8u);
    MEMORY[0x266784AD0](v43, -1, -1);
  }

  v44 = (v88)(v28, v15);
  v45 = v82[15];
  v46 = (v82[14])(v44);
  *(v39 + 16) = v46;
  [v46 setShouldIncludeNonLibraryEntities_];
  [v46 setIgnoreSystemFilterPredicates_];
LABEL_21:
  v64 = v81;
  if (v81 != 1 && v81 | v79)
  {
    v69 = v84;

    v70 = v86;

    v71 = v85;

    sub_266360910(v76, v64, v77, v79, v82, v39, v83, v69, a10, v70, a12, a13, v71);
  }

  else
  {
    v40(v87, v32, v15);
    v65 = sub_2664DFE18();
    v66 = sub_2664E06E8();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      *v67 = 0;
      _os_log_impl(&dword_26629C000, v65, v66, "LibraryProvider#mediaQuery no sharedUserIdInfo found, using default library for media query", v67, 2u);
      MEMORY[0x266784AD0](v67, -1, -1);
    }

    v88(v87, v15);
    v68 = *(v39 + 16);
    sub_2663555CC(v68, v83, v84, a10, v86, a12, a13, v85);
  }

  sub_266354A00(v39);
}

uint64_t sub_266365048(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_2663650C0(__int128 *a1)
{
  v3 = *(sub_2664DFE08() - 8);
  v4 = (*(v3 + 80) + 33) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v8 = *v7;
  v9 = *(v7 + 8);
  v10 = *(v1 + 32);

  return sub_2663606A4(a1, v5, v6, v10, v1 + v4, v8);
}

uint64_t sub_266365168(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, int a6, uint64_t *a7, uint64_t a8, uint64_t a9, void (*a10)(uint64_t, unint64_t, void *), uint64_t a11)
{
  v77 = a7;
  v78 = a8;
  v72 = a6;
  *&v76 = a4;
  *(&v76 + 1) = a2;
  v70 = a1;
  v71 = a3;
  v12 = a11;
  v13 = sub_2664DFE38();
  v14 = *(v13 - 8);
  v15 = v14[8];
  v16 = MEMORY[0x28223BE20](v13);
  v80 = &v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v75 = &v69 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v74 = &v69 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v69 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v73 = &v69 - v26;
  MEMORY[0x28223BE20](v25);
  v28 = &v69 - v27;
  v29 = qword_280F914E8;
  v79 = a9;

  if (v29 != -1)
  {
    swift_once();
  }

  v30 = __swift_project_value_buffer(v13, qword_280F914F0);
  swift_beginAccess();
  v81 = v14[2];
  v81(v28, v30, v13);
  v31 = sub_2664DFE18();
  v32 = sub_2664E06E8();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v69 = a5;
    v34 = v33;
    *v33 = 0;
    _os_log_impl(&dword_26629C000, v31, v32, "LibraryProvider#mediaQuery...", v33, 2u);
    v35 = v34;
    v12 = a11;
    a5 = v69;
    MEMORY[0x266784AD0](v35, -1, -1);
  }

  v36 = v14[1];
  v36(v28, v13);
  v37 = swift_allocObject();
  if (a5 == 6)
  {
    v81(v74, v30, v13);
    v54 = sub_2664DFE18();
    v55 = sub_2664E06E8();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&dword_26629C000, v54, v55, "LibraryProvider#mediaQuery playlist", v56, 2u);
      MEMORY[0x266784AD0](v56, -1, -1);
    }

    v57 = (v36)(v74, v13);
    v58 = v77[13];
    v53 = (v77[12])(v57);
    goto LABEL_20;
  }

  if (a5 == 1)
  {
    v81(v24, v30, v13);
    v44 = sub_2664DFE18();
    v45 = sub_2664E06E8();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v75 = v13;
      v47 = v24;
      v48 = v30;
      v49 = v46;
      *v46 = 0;
      _os_log_impl(&dword_26629C000, v44, v45, "LibraryProvider#mediaQuery album", v46, 2u);
      v50 = v49;
      v30 = v48;
      v24 = v47;
      v13 = v75;
      MEMORY[0x266784AD0](v50, -1, -1);
    }

    v51 = (v36)(v24, v13);
    v52 = v77[17];
    v53 = (v77[16])(v51);
    goto LABEL_20;
  }

  if (a5)
  {
    v81(v75, v30, v13);
    v59 = sub_2664DFE18();
    v60 = sub_2664E06E8();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      *v61 = 0;
      _os_log_impl(&dword_26629C000, v59, v60, "LibraryProvider#mediaQuery default, empty", v61, 2u);
      MEMORY[0x266784AD0](v61, -1, -1);
    }

    v36(v75, v13);
    v53 = [objc_allocWithZone(MEMORY[0x277CD5E38]) init];
LABEL_20:
    *(v37 + 16) = v53;
    goto LABEL_21;
  }

  v81(v73, v30, v13);
  v38 = sub_2664DFE18();
  v39 = sub_2664E06E8();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    *v40 = 67109120;
    *(v40 + 4) = v72 & 1;
    _os_log_impl(&dword_26629C000, v38, v39, "LibraryProvider#mediaQuery title, shouldAllowNonLibraryContent: %{BOOL}d", v40, 8u);
    MEMORY[0x266784AD0](v40, -1, -1);
  }

  v41 = (v36)(v73, v13);
  v42 = v77[15];
  v43 = (v77[14])(v41);
  *(v37 + 16) = v43;
  [v43 setShouldIncludeNonLibraryEntities_];
  [v43 setIgnoreSystemFilterPredicates_];
LABEL_21:
  v62 = *(&v76 + 1);
  if (*(&v76 + 1) == 1 || v76 == 0)
  {
    v81(v80, v30, v13);
    v63 = sub_2664DFE18();
    v64 = sub_2664E06E8();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      *v65 = 0;
      _os_log_impl(&dword_26629C000, v63, v64, "LibraryProvider#mediaQuery no sharedUserIdInfo found, using default library for media query", v65, 2u);
      MEMORY[0x266784AD0](v65, -1, -1);
    }

    v36(v80, v13);
    v66 = *(v37 + 16);
    sub_266358C74(v66, v78, v79, a10, v12);
  }

  else
  {
    v67 = v79;

    sub_2663611BC(v70, v62, v71, v76, v77, v37, v78, v67, a10, v12);
  }

  sub_266354A00(v37);
}

uint64_t sub_2663658E0(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, int a6, uint64_t *a7, uint64_t a8, void *a9, void (*a10)(__int128 *), uint64_t a11, uint64_t a12, void *a13)
{
  v88 = a8;
  *(&v85 + 1) = a2;
  v86 = a7;
  v81 = a6;
  *&v85 = a4;
  v79 = a1;
  v80 = a3;
  v14 = sub_2664DFE38();
  v15 = *(v14 - 8);
  v16 = v15[8];
  v17 = MEMORY[0x28223BE20](v14);
  v91 = &v77 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v84 = &v77 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v83 = &v77 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v77 - v24;
  v26 = MEMORY[0x28223BE20](v23);
  v82 = &v77 - v27;
  MEMORY[0x28223BE20](v26);
  v29 = &v77 - v28;
  v30 = qword_280F914E8;
  v89 = a9;

  v90 = a11;

  v87 = a13;
  if (v30 != -1)
  {
    swift_once();
  }

  v31 = __swift_project_value_buffer(v14, qword_280F914F0);
  swift_beginAccess();
  v32 = v15[2];
  v32(v29, v31, v14);
  v33 = sub_2664DFE18();
  v34 = sub_2664E06E8();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v78 = a5;
    v36 = v25;
    v37 = v32;
    v38 = v31;
    v39 = v35;
    *v35 = 0;
    _os_log_impl(&dword_26629C000, v33, v34, "LibraryProvider#mediaQuery...", v35, 2u);
    v40 = v39;
    v31 = v38;
    v32 = v37;
    v25 = v36;
    a5 = v78;
    MEMORY[0x266784AD0](v40, -1, -1);
  }

  v41 = v15[1];
  v41(v29, v14);
  v42 = swift_allocObject();
  if (a5 == 6)
  {
    v32(v83, v31, v14);
    v60 = sub_2664DFE18();
    v61 = sub_2664E06E8();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      *v62 = 0;
      _os_log_impl(&dword_26629C000, v60, v61, "LibraryProvider#mediaQuery playlist", v62, 2u);
      MEMORY[0x266784AD0](v62, -1, -1);
    }

    v63 = (v41)(v83, v14);
    v64 = v86[13];
    v59 = (v86[12])(v63);
    goto LABEL_20;
  }

  if (a5 == 1)
  {
    v32(v25, v31, v14);
    v49 = sub_2664DFE18();
    v50 = sub_2664E06E8();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v84 = v14;
      v52 = v25;
      v53 = v32;
      v54 = v31;
      v55 = v51;
      *v51 = 0;
      _os_log_impl(&dword_26629C000, v49, v50, "LibraryProvider#mediaQuery album", v51, 2u);
      v56 = v55;
      v31 = v54;
      v32 = v53;
      v25 = v52;
      v14 = v84;
      MEMORY[0x266784AD0](v56, -1, -1);
    }

    v57 = (v41)(v25, v14);
    v58 = v86[17];
    v59 = (v86[16])(v57);
    goto LABEL_20;
  }

  if (a5)
  {
    v32(v84, v31, v14);
    v65 = sub_2664DFE18();
    v66 = sub_2664E06E8();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      *v67 = 0;
      _os_log_impl(&dword_26629C000, v65, v66, "LibraryProvider#mediaQuery default, empty", v67, 2u);
      MEMORY[0x266784AD0](v67, -1, -1);
    }

    v41(v84, v14);
    v59 = [objc_allocWithZone(MEMORY[0x277CD5E38]) init];
LABEL_20:
    *(v42 + 16) = v59;
    goto LABEL_21;
  }

  v32(v82, v31, v14);
  v43 = sub_2664DFE18();
  v44 = sub_2664E06E8();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    *v45 = 67109120;
    *(v45 + 4) = v81 & 1;
    _os_log_impl(&dword_26629C000, v43, v44, "LibraryProvider#mediaQuery title, shouldAllowNonLibraryContent: %{BOOL}d", v45, 8u);
    MEMORY[0x266784AD0](v45, -1, -1);
  }

  v46 = (v41)(v82, v14);
  v47 = v86[15];
  v48 = (v86[14])(v46);
  *(v42 + 16) = v48;
  [v48 setShouldIncludeNonLibraryEntities_];
  [v48 setIgnoreSystemFilterPredicates_];
LABEL_21:
  if (*(&v85 + 1) == 1 || v85 == 0)
  {
    v32(v91, v31, v14);
    v68 = sub_2664DFE18();
    v69 = sub_2664E06E8();
    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      *v70 = 0;
      _os_log_impl(&dword_26629C000, v68, v69, "LibraryProvider#mediaQuery no sharedUserIdInfo found, using default library for media query", v70, 2u);
      MEMORY[0x266784AD0](v70, -1, -1);
    }

    v41(v91, v14);
    v71 = *(v42 + 16);
    v72 = v87;
    sub_26635DBA4(v71, v88, v89, a10, v90, a12, v87);
  }

  else
  {
    v73 = v89;
    v74 = *(&v85 + 1);

    v75 = v90;

    v72 = v87;
    v71 = v87;

    sub_2663619D4(v79, v74, v80, v85, v86, v42, v88, v73, a10, v75, a12, v71);
  }

  sub_266354A00(v42);
}

uint64_t sub_266366098(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, int a6, uint64_t *a7, uint64_t a8, uint64_t a9, uint64_t a10, void (*a11)(__int128 *), uint64_t a12, void *a13)
{
  v88 = a8;
  *(&v85 + 1) = a2;
  v86 = a7;
  v81 = a6;
  *&v85 = a4;
  v79 = a1;
  v80 = a3;
  v14 = sub_2664DFE38();
  v15 = *(v14 - 8);
  v16 = v15[8];
  v17 = MEMORY[0x28223BE20](v14);
  v91 = &v77 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v84 = &v77 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v83 = &v77 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v77 - v24;
  v26 = MEMORY[0x28223BE20](v23);
  v82 = &v77 - v27;
  MEMORY[0x28223BE20](v26);
  v29 = &v77 - v28;
  v30 = qword_280F914E8;
  v89 = a9;

  v90 = a12;

  v87 = a13;
  if (v30 != -1)
  {
    swift_once();
  }

  v31 = __swift_project_value_buffer(v14, qword_280F914F0);
  swift_beginAccess();
  v32 = v15[2];
  v32(v29, v31, v14);
  v33 = sub_2664DFE18();
  v34 = sub_2664E06E8();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v78 = a5;
    v36 = v25;
    v37 = v32;
    v38 = v31;
    v39 = v35;
    *v35 = 0;
    _os_log_impl(&dword_26629C000, v33, v34, "LibraryProvider#mediaQuery...", v35, 2u);
    v40 = v39;
    v31 = v38;
    v32 = v37;
    v25 = v36;
    a5 = v78;
    MEMORY[0x266784AD0](v40, -1, -1);
  }

  v41 = v15[1];
  v41(v29, v14);
  v42 = swift_allocObject();
  if (a5 == 6)
  {
    v32(v83, v31, v14);
    v60 = sub_2664DFE18();
    v61 = sub_2664E06E8();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      *v62 = 0;
      _os_log_impl(&dword_26629C000, v60, v61, "LibraryProvider#mediaQuery playlist", v62, 2u);
      MEMORY[0x266784AD0](v62, -1, -1);
    }

    v63 = (v41)(v83, v14);
    v64 = v86[13];
    v59 = (v86[12])(v63);
    goto LABEL_20;
  }

  if (a5 == 1)
  {
    v32(v25, v31, v14);
    v49 = sub_2664DFE18();
    v50 = sub_2664E06E8();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v84 = v14;
      v52 = v25;
      v53 = v32;
      v54 = v31;
      v55 = v51;
      *v51 = 0;
      _os_log_impl(&dword_26629C000, v49, v50, "LibraryProvider#mediaQuery album", v51, 2u);
      v56 = v55;
      v31 = v54;
      v32 = v53;
      v25 = v52;
      v14 = v84;
      MEMORY[0x266784AD0](v56, -1, -1);
    }

    v57 = (v41)(v25, v14);
    v58 = v86[17];
    v59 = (v86[16])(v57);
    goto LABEL_20;
  }

  if (a5)
  {
    v32(v84, v31, v14);
    v65 = sub_2664DFE18();
    v66 = sub_2664E06E8();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      *v67 = 0;
      _os_log_impl(&dword_26629C000, v65, v66, "LibraryProvider#mediaQuery default, empty", v67, 2u);
      MEMORY[0x266784AD0](v67, -1, -1);
    }

    v41(v84, v14);
    v59 = [objc_allocWithZone(MEMORY[0x277CD5E38]) init];
LABEL_20:
    *(v42 + 16) = v59;
    goto LABEL_21;
  }

  v32(v82, v31, v14);
  v43 = sub_2664DFE18();
  v44 = sub_2664E06E8();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    *v45 = 67109120;
    *(v45 + 4) = v81 & 1;
    _os_log_impl(&dword_26629C000, v43, v44, "LibraryProvider#mediaQuery title, shouldAllowNonLibraryContent: %{BOOL}d", v45, 8u);
    MEMORY[0x266784AD0](v45, -1, -1);
  }

  v46 = (v41)(v82, v14);
  v47 = v86[15];
  v48 = (v86[14])(v46);
  *(v42 + 16) = v48;
  [v48 setShouldIncludeNonLibraryEntities_];
  [v48 setIgnoreSystemFilterPredicates_];
LABEL_21:
  if (*(&v85 + 1) == 1 || v85 == 0)
  {
    v32(v91, v31, v14);
    v68 = sub_2664DFE18();
    v69 = sub_2664E06E8();
    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      *v70 = 0;
      _os_log_impl(&dword_26629C000, v68, v69, "LibraryProvider#mediaQuery no sharedUserIdInfo found, using default library for media query", v70, 2u);
      MEMORY[0x266784AD0](v70, -1, -1);
    }

    v41(v91, v14);
    v71 = *(v42 + 16);
    v72 = v87;
    sub_26635F5CC(v71, v88, v89, a10, a11, v90, v87);
  }

  else
  {
    v73 = v89;
    v74 = *(&v85 + 1);

    v75 = v90;

    v72 = v87;
    v71 = v87;

    sub_266362244(v79, v74, v80, v85, v86, v42, v88, v73, a10, a11, v75, v71);
  }

  sub_266354A00(v42);
}

unsigned __int8 *sub_266366848(uint64_t a1, unint64_t a2, void (*a3)(__int128 *), void *a4, unint64_t a5, unsigned __int8 *a6, unint64_t a7, void (*a8)(__int128 *), uint64_t a9)
{
  v70 = a3;
  v71 = a6;
  v68 = a4;
  v69 = a5;
  v13 = sub_2664DFE38();
  v14 = *(v13 - 8);
  v15 = v14[8];
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v72 = &v66 - v20;
  MEMORY[0x28223BE20](v19);
  v22 = &v66 - v21;
  result = swift_allocObject();
  v24 = result;
  *(result + 2) = a8;
  *(result + 3) = a9;
  v73 = a9;
  v25 = HIBYTE(a2) & 0xF;
  v26 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v27 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v27 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v27)
  {

    goto LABEL_63;
  }

  v67 = a7;
  if ((a2 & 0x1000000000000000) != 0)
  {

    v29 = sub_26640687C(a1, a2, 10);
    v61 = v60;

    if (v61)
    {
      goto LABEL_63;
    }

    goto LABEL_72;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v76[0] = a1;
    v76[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    if (a1 == 43)
    {
      if (v25)
      {
        if (--v25)
        {
          v29 = 0;
          v39 = v76 + 1;
          while (1)
          {
            v40 = *v39 - 48;
            if (v40 > 9)
            {
              break;
            }

            v41 = 10 * v29;
            if ((v29 * 10) >> 64 != (10 * v29) >> 63)
            {
              break;
            }

            v29 = v41 + v40;
            if (__OFADD__(v41, v40))
            {
              break;
            }

            ++v39;
            if (!--v25)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }

LABEL_81:
      __break(1u);
      return result;
    }

    if (a1 != 45)
    {
      if (v25)
      {
        v29 = 0;
        v44 = v76;
        while (1)
        {
          v45 = *v44 - 48;
          if (v45 > 9)
          {
            break;
          }

          v46 = 10 * v29;
          if ((v29 * 10) >> 64 != (10 * v29) >> 63)
          {
            break;
          }

          v29 = v46 + v45;
          if (__OFADD__(v46, v45))
          {
            break;
          }

          ++v44;
          if (!--v25)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    if (v25)
    {
      if (--v25)
      {
        v29 = 0;
        v33 = v76 + 1;
        while (1)
        {
          v34 = *v33 - 48;
          if (v34 > 9)
          {
            break;
          }

          v35 = 10 * v29;
          if ((v29 * 10) >> 64 != (10 * v29) >> 63)
          {
            break;
          }

          v29 = v35 - v34;
          if (__OFSUB__(v35, v34))
          {
            break;
          }

          ++v33;
          if (!--v25)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_79;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    result = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    result = sub_2664E0B78();
  }

  v28 = *result;
  if (v28 == 43)
  {
    if (v26 >= 1)
    {
      v25 = v26 - 1;
      if (v26 != 1)
      {
        v29 = 0;
        if (result)
        {
          v36 = result + 1;
          while (1)
          {
            v37 = *v36 - 48;
            if (v37 > 9)
            {
              goto LABEL_61;
            }

            v38 = 10 * v29;
            if ((v29 * 10) >> 64 != (10 * v29) >> 63)
            {
              goto LABEL_61;
            }

            v29 = v38 + v37;
            if (__OFADD__(v38, v37))
            {
              goto LABEL_61;
            }

            ++v36;
            if (!--v25)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_53;
      }

      goto LABEL_61;
    }

    goto LABEL_80;
  }

  if (v28 == 45)
  {
    if (v26 >= 1)
    {
      v25 = v26 - 1;
      if (v26 != 1)
      {
        v29 = 0;
        if (result)
        {
          v30 = result + 1;
          while (1)
          {
            v31 = *v30 - 48;
            if (v31 > 9)
            {
              goto LABEL_61;
            }

            v32 = 10 * v29;
            if ((v29 * 10) >> 64 != (10 * v29) >> 63)
            {
              goto LABEL_61;
            }

            v29 = v32 - v31;
            if (__OFSUB__(v32, v31))
            {
              goto LABEL_61;
            }

            ++v30;
            if (!--v25)
            {
              goto LABEL_62;
            }
          }
        }

LABEL_53:
        LOBYTE(v25) = 0;
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  if (v26)
  {
    v29 = 0;
    if (result)
    {
      while (1)
      {
        v42 = *result - 48;
        if (v42 > 9)
        {
          goto LABEL_61;
        }

        v43 = 10 * v29;
        if ((v29 * 10) >> 64 != (10 * v29) >> 63)
        {
          goto LABEL_61;
        }

        v29 = v43 + v42;
        if (__OFADD__(v43, v42))
        {
          goto LABEL_61;
        }

        ++result;
        if (!--v26)
        {
          goto LABEL_53;
        }
      }
    }

    goto LABEL_53;
  }

LABEL_61:
  v29 = 0;
  LOBYTE(v25) = 1;
LABEL_62:
  LOBYTE(v74) = v25;
  v47 = v25;

  if (v47)
  {
LABEL_63:
    v71 = v24;
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v70 = a8;
    v48 = __swift_project_value_buffer(v13, qword_280F914F0);
    swift_beginAccess();
    v49 = v14[2];
    v49(v22, v48, v13);
    v50 = sub_2664DFE18();
    v51 = sub_2664E06D8();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&dword_26629C000, v50, v51, "LibraryProvider#addToLibrary Error converting identifier from String to Int64", v52, 2u);
      MEMORY[0x266784AD0](v52, -1, -1);
    }

    v53 = v14[1];
    v53(v22, v13);
    v54 = v72;
    v49(v72, v48, v13);
    v55 = v54;
    v56 = sub_2664DFE18();
    v57 = sub_2664E06B8();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      *&v74 = v59;
      *v58 = 134218498;
      *(v58 + 4) = 8;
      *(v58 + 12) = 2048;
      *(v58 + 14) = 22;
      *(v58 + 22) = 2080;
      *(v58 + 24) = sub_2662A320C(0xD00000000000001BLL, 0x80000002664F57E0, &v74);
      _os_log_impl(&dword_26629C000, v56, v57, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v58, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v59);
      MEMORY[0x266784AD0](v59, -1, -1);
      MEMORY[0x266784AD0](v58, -1, -1);
    }

    v53(v55, v13);
    v74 = xmmword_2664E6E70;
    v75 = 0x80000002664F57E0;
    v70(&v74);
  }

LABEL_72:
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v62 = __swift_project_value_buffer(v13, qword_280F914F0);
  swift_beginAccess();
  (v14[2])(v18, v62, v13);
  v63 = sub_2664DFE18();
  v64 = sub_2664E06C8();
  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    *v65 = 0;
    _os_log_impl(&dword_26629C000, v63, v64, "LibraryProvider#addToLibrary looking up library for user...", v65, 2u);
    MEMORY[0x266784AD0](v65, -1, -1);
  }

  (v14[1])(v18, v13);

  sub_266363244(v68, v69, v71, v67, v70, v29, a1, a2, sub_266367438, v24);
}

uint64_t objectdestroy_24Tm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 48);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 64));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 104));

  v4 = *(v0 + 160);

  v5 = *(v0 + 176);

  v6 = *(v0 + 192);

  v7 = *(v0 + 200);

  if (*(v0 + 216) != 1)
  {

    v8 = *(v0 + 232);
  }

  return MEMORY[0x2821FE8E8](v0, 240, 7);
}

__n128 __swift_memcpy152_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_2663671B8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 152))
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

uint64_t sub_266367200(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
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
      *(result + 152) = 1;
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

    *(result + 152) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t objectdestroyTm_1()
{
  v1 = *(v0 + 24);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 40));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 80));

  v2 = *(v0 + 136);

  v3 = *(v0 + 152);

  v4 = *(v0 + 168);

  v5 = *(v0 + 176);

  return MEMORY[0x2821FE8E8](v0, 184, 7);
}

uint64_t objectdestroy_78Tm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_266367438(__int128 *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(a1 + 2);
  v6 = *a1;
  v7 = v4;
  return v2(&v6);
}

uint64_t objectdestroy_90Tm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t objectdestroy_125Tm()
{
  v1 = v0[3];

  v2 = v0[6];

  v3 = v0[8];

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t objectdestroy_104Tm()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t static ExecutorProvider.shared.setter(uint64_t *a1)
{
  if (qword_280F90B20 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  __swift_assign_boxed_opaque_existential_1(qword_280F90B28, a1);
  swift_endAccess();
  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t *__swift_assign_boxed_opaque_existential_1(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v2 = result[3];
    v3 = a2[3];
    if (v2 == v3)
    {
      v10 = *(v2 - 8);
      if ((*(v10 + 82) & 2) != 0)
      {
        v14 = *result;
        v15 = *a2;
        v16 = result;

        *v16 = v15;
      }

      else
      {
        v11 = *(v10 + 24);
        v12 = result[3];

        return v11();
      }
    }

    else
    {
      result[3] = v3;
      result[4] = a2[4];
      v4 = *(v2 - 8);
      v5 = *(v3 - 8);
      v6 = v5;
      v7 = *(v5 + 80);
      if ((*(v4 + 82) & 2) != 0)
      {
        v13 = *result;
        if ((v7 & 0x20000) != 0)
        {
          *result = *a2;
        }

        else
        {
          (*(v5 + 16))();
        }
      }

      else
      {
        v9 = result;
        (*(v4 + 32))(v17);
        if ((v7 & 0x20000) != 0)
        {
          *v9 = *a2;
        }

        else
        {
          (*(v6 + 16))(v9, a2, v3);
        }

        return (*(v4 + 8))(v17, v2);
      }
    }
  }

  return result;
}

uint64_t (*static ExecutorProvider.shared.modify())()
{
  if (qword_280F90B20 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_2663679BC@<X0>(uint64_t a1@<X8>)
{
  if (qword_280F90B20 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return sub_2662A5550(qword_280F90B28, a1);
}

uint64_t sub_266367A3C(uint64_t *a1)
{
  if (qword_280F90B20 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  __swift_assign_boxed_opaque_existential_1(qword_280F90B28, a1);
  return swift_endAccess();
}

uint64_t ExecutorProvider.executorPrepareForAudioHandoff(completion:)(uint64_t (*a1)(uint64_t))
{
  v2 = sub_2664DFE38();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v2, qword_280F914F0);
  swift_beginAccess();
  (*(v3 + 16))(v6, v7, v2);
  v8 = sub_2664DFE18();
  v9 = sub_2664E06D8();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_26629C000, v8, v9, "ExecutorProvidere#xecutorPrepareForAudioHandoff: expected AceService backed executor", v10, 2u);
    MEMORY[0x266784AD0](v10, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  return a1(1);
}

uint64_t ExecutorProvider.currentRequestId.getter()
{
  v0 = sub_2664DFE38();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_280F914F0);
  swift_beginAccess();
  (*(v1 + 16))(v4, v5, v0);
  v6 = sub_2664DFE18();
  v7 = sub_2664E06D8();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_26629C000, v6, v7, "ExecutorProvider#currentRequestId: expected AceService backed executor", v8, 2u);
    MEMORY[0x266784AD0](v8, -1, -1);
  }

  (*(v1 + 8))(v4, v0);
  return 0;
}

uint64_t ExecutorProvider.carPlay.getter()
{
  v0 = sub_2664DFE38();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_280F914F0);
  swift_beginAccess();
  (*(v1 + 16))(v4, v5, v0);
  v6 = sub_2664DFE18();
  v7 = sub_2664E06D8();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_26629C000, v6, v7, "ExecutorProvider#carPlay: expected DeviceState backed executor", v8, 2u);
    MEMORY[0x266784AD0](v8, -1, -1);
  }

  (*(v1 + 8))(v4, v0);
  return 2;
}

BOOL ExecutorProvider.willSiriSpeak.getter()
{
  v0 = sub_2664DF578();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v20 - v6;
  v8 = sub_2664DFE38();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v8, qword_280F914F0);
  swift_beginAccess();
  (*(v9 + 16))(v12, v13, v8);
  v14 = sub_2664DFE18();
  v15 = sub_2664E06D8();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_26629C000, v14, v15, "ExecutorProvider#willSiriSpeak: expected DeviceState backed executor", v16, 2u);
    MEMORY[0x266784AD0](v16, -1, -1);
  }

  (*(v9 + 8))(v12, v8);
  if (!static SiriEnvironmentWrapper.retrieve()())
  {
    sub_2664DF528();
    sub_2664DF508();
  }

  sub_2664DF4D8();

  sub_2664DFA98();

  sub_2664DF538();
  sub_266368330();
  v17 = sub_2664E0298();
  v18 = *(v1 + 8);
  v18(v5, v0);
  v18(v7, v0);
  return (v17 & 1) == 0;
}

unint64_t sub_266368330()
{
  result = qword_280072D78;
  if (!qword_280072D78)
  {
    sub_2664DF578();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280072D78);
  }

  return result;
}

void *sub_26636839C(void *result)
{
  v29 = result[3];
  v30 = result[4] >> 1;
  v1 = v30 - v29;
  if (!__OFSUB__(v30, v29))
  {
    v2 = *result;
    v26 = result[2];
    v28 = *(*result + 16);
    if (v1 >= v28)
    {
      v3 = *(*result + 16);
    }

    else
    {
      v3 = v30 - v29;
    }

    v34 = MEMORY[0x277D84F90];
    result = sub_2662FCFB4(0, v3 & ~(v3 >> 63), 0);
    if (v1 < 0)
    {
      goto LABEL_37;
    }

    v27 = v2;
    if (v3)
    {
      if (v29 <= v30)
      {
        v4 = v30;
      }

      else
      {
        v4 = v29;
      }

      result = swift_unknownObjectRetain();
      v5 = 0;
      v31 = v29 - v4;
      v6 = (v2 + 48);
      v7 = v28;
      v8 = (v26 + 24 * v29 + 16);
      do
      {
        if (-v28 == v5)
        {
          __break(1u);
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
          goto LABEL_33;
        }

        if (v29 - v30 == v5)
        {
          goto LABEL_31;
        }

        if (v31 == v5)
        {
          goto LABEL_32;
        }

        v10 = *(v6 - 2);
        v9 = *(v6 - 1);
        v11 = *v6;
        v12 = *v8;

        v14 = *(v34 + 16);
        v13 = *(v34 + 24);
        if (v14 >= v13 >> 1)
        {
          result = sub_2662FCFB4((v13 > 1), v14 + 1, 1);
          v7 = v28;
        }

        *(v34 + 16) = v14 + 1;
        v15 = v34 + 24 * v14;
        *(v15 + 32) = v10;
        *(v15 + 40) = v9;
        *(v15 + 48) = vabdd_f64(v11, v12);
        --v5;
        v6 += 3;
        v8 += 3;
      }

      while (-v3 != v5);
      v32 = v29 - v5;
      v2 = v27;
      if (v7 > v30 - v29)
      {
        goto LABEL_20;
      }

      goto LABEL_29;
    }

    result = swift_unknownObjectRetain();
    v7 = v28;
    v32 = v29;
    if (v28 <= v1)
    {
LABEL_29:
      swift_unknownObjectRelease();

      return v34;
    }

LABEL_20:
    v16 = (v2 + 24 * v3 + 48);
    v17 = v32;
    v18 = (v26 + 24 * v32 + 16);
    while (v3 < v7)
    {
      v19 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        goto LABEL_34;
      }

      if (v30 != v17)
      {
        if (v32 < v29 || v17 >= v30)
        {
          goto LABEL_35;
        }

        v20 = *(v16 - 1);
        v33 = *(v16 - 2);
        v21 = *v16;
        v22 = *v18;
        v24 = *(v34 + 16);
        v23 = *(v34 + 24);

        if (v24 >= v23 >> 1)
        {
          result = sub_2662FCFB4((v23 > 1), v24 + 1, 1);
        }

        *(v34 + 16) = v24 + 1;
        v25 = v34 + 24 * v24;
        ++v3;
        *(v25 + 32) = v33;
        *(v25 + 40) = v20;
        *(v25 + 48) = vabdd_f64(v21, v22);
        v16 += 3;
        v18 += 3;
        ++v17;
        v7 = v28;
        if (v19 != v28)
        {
          continue;
        }
      }

      goto LABEL_29;
    }

LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
  }

  __break(1u);
LABEL_37:
  __break(1u);
  return result;
}

uint64_t _s16SiriAudioSupport13ThresholdTrimV4trim17bundleConfidences9thresholdSaySSGSDySSSdG_SdtFZ_0(void *a1, double a2)
{
  v4 = sub_2664DFE38();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = MEMORY[0x28223BE20](v4);
  v100 = (&v99 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = MEMORY[0x28223BE20](v7);
  v99 = (&v99 - v10);
  v11 = MEMORY[0x28223BE20](v9);
  v101 = &v99 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v102 = &v99 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v99 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = (&v99 - v18);
  if (qword_280F914E8 != -1)
  {
    goto LABEL_45;
  }

  while (1)
  {
    v20 = __swift_project_value_buffer(v4, qword_280F914F0);
    swift_beginAccess();
    v21 = v5[2];
    v105 = v5 + 2;
    v106 = v20;
    v104 = v21;
    v21(v19, v20, v4);

    v22 = sub_2664DFE18();
    v23 = sub_2664E06C8();

    v24 = os_log_type_enabled(v22, v23);
    v103 = v5;
    if (v24)
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v109[0] = v26;
      *v25 = 136315394;
      v27 = sub_2664E01D8();
      v29 = sub_2662A320C(v27, v28, v109);

      *(v25 + 4) = v29;
      v5 = v103;
      *(v25 + 12) = 2048;
      *(v25 + 14) = a2;
      _os_log_impl(&dword_26629C000, v22, v23, "ThresholdTrim#trim bundleConfidences:%s, threshold:%f...", v25, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v26);
      MEMORY[0x266784AD0](v26, -1, -1);
      MEMORY[0x266784AD0](v25, -1, -1);
    }

    v107 = v5[1];
    v107(v19, v4);
    v30 = sub_266430D18(a1, 0, 0);
    v104(v17, v106, v4);

    v31 = sub_2664DFE18();
    v32 = sub_2664E06C8();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v109[0] = v34;
      *v33 = 136315138;
      v35 = sub_2664E01D8();
      v37 = sub_2662A320C(v35, v36, v109);

      *(v33 + 4) = v37;
      _os_log_impl(&dword_26629C000, v31, v32, "ThresholdTrim#trim normalized:%s", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v34);
      MEMORY[0x266784AD0](v34, -1, -1);
      MEMORY[0x266784AD0](v33, -1, -1);
    }

    v107(v17, v4);
    v38 = v102;
    v39 = *(v30 + 16);
    v40 = MEMORY[0x277D84F90];
    if (v39)
    {
      v40 = sub_26640C8A4(*(v30 + 16), 0);
      v41 = sub_26640CC9C(v109, v40 + 4, v39, v30);

      sub_2662B793C();
      if (v41 != v39)
      {
        __break(1u);
LABEL_47:
        __break(1u);
        goto LABEL_48;
      }

      v38 = v102;
    }

    v109[0] = v40;
    sub_2662DA3AC(v109);

    a1 = v109[0];
    v104(v38, v106, v4);
    swift_retain_n();
    v42 = sub_2664DFE18();
    v43 = sub_2664E06C8();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v109[0] = v45;
      *v44 = 136315138;
      v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072598, &unk_2664E3B50);
      v47 = MEMORY[0x2667834D0](a1, v46);
      v49 = sub_2662A320C(v47, v48, v109);

      *(v44 + 4) = v49;
      _os_log_impl(&dword_26629C000, v42, v43, "ThresholdTrim#trim sorted:%s", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v45);
      MEMORY[0x266784AD0](v45, -1, -1);
      MEMORY[0x266784AD0](v44, -1, -1);

      v50 = v102;
    }

    else
    {

      v50 = v38;
    }

    v107(v50, v4);
    v51 = v101;
    v5 = a1[2];
    v109[0] = a1;
    v109[1] = a1;
    v109[2] = a1 + 4;
    v109[3] = (v5 != 0);
    v109[4] = ((2 * v5) | 1);

    v52 = sub_26636839C(v109);

    v104(v51, v106, v4);

    v53 = sub_2664DFE18();
    v54 = sub_2664E06C8();

    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v108[0] = v56;
      *v55 = 136315138;
      v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800728B8, &unk_2664E4F20);
      v58 = MEMORY[0x2667834D0](v52, v57);
      v60 = sub_2662A320C(v58, v59, v108);

      *(v55 + 4) = v60;
      _os_log_impl(&dword_26629C000, v53, v54, "ThresholdTrim#trim differences: %s", v55, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v56);
      MEMORY[0x266784AD0](v56, -1, -1);
      MEMORY[0x266784AD0](v55, -1, -1);

      v61 = v101;
    }

    else
    {

      v61 = v51;
    }

    v107(v61, v4);
    v62 = v52[2];
    if (v62)
    {
      break;
    }

LABEL_19:

    v65 = v100;
    v104(v100, v106, v4);

    v19 = sub_2664DFE18();
    v66 = sub_2664E06E8();

    if (os_log_type_enabled(v19, v66))
    {
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v108[0] = v68;
      *v67 = 136446466;
      v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800728B8, &unk_2664E4F20);
      v70 = MEMORY[0x2667834D0](v52, v69);
      v72 = v71;

      v73 = sub_2662A320C(v70, v72, v108);

      *(v67 + 4) = v73;
      *(v67 + 12) = 2048;
      *(v67 + 14) = a2;
      _os_log_impl(&dword_26629C000, v19, v66, "ThresholdTrim#trim no differences in:%{public}s greater than threshold: %f", v67, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v68);
      MEMORY[0x266784AD0](v68, -1, -1);
      MEMORY[0x266784AD0](v67, -1, -1);

      v74 = v100;
    }

    else
    {

      v74 = v65;
    }

    v107(v74, v4);
    if (!v5)
    {
      v17 = MEMORY[0x277D84F90];
LABEL_42:

      return v17;
    }

    v75 = 0;
    v76 = a1 + 5;
    v17 = MEMORY[0x277D84F90];
    while (v75 < a1[2])
    {
      v77 = *(v76 - 1);
      v4 = *v76;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v17 = sub_2663846F4(0, *(v17 + 2) + 1, 1, v17);
      }

      v79 = *(v17 + 2);
      v78 = *(v17 + 3);
      v19 = (v79 + 1);
      if (v79 >= v78 >> 1)
      {
        v17 = sub_2663846F4((v78 > 1), v79 + 1, 1, v17);
      }

      v75 = (v75 + 1);
      *(v17 + 2) = v19;
      v80 = &v17[16 * v79];
      *(v80 + 4) = v77;
      *(v80 + 5) = v4;
      v76 += 3;
      if (v5 == v75)
      {
        goto LABEL_42;
      }
    }

    __break(1u);
LABEL_45:
    swift_once();
  }

  v63 = 0;
  v64 = 6;
  while (*&v52[v64] < a2)
  {
    ++v63;
    v64 += 3;
    if (v62 == v63)
    {
      goto LABEL_19;
    }
  }

  v39 = v63 + 1;
  if (__OFADD__(v63, 1))
  {
    goto LABEL_47;
  }

  v102 = v4;
  v81 = a1[2];

  if (v81 < v39)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  if ((v39 & 0x8000000000000000) == 0)
  {
    v82 = v63 + 1;
    v108[0] = MEMORY[0x277D84F90];
    sub_2662FCF24(0, v63 + 1, 0);
    v17 = v108[0];
    v83 = a1 + 5;
    do
    {
      v85 = *(v83 - 1);
      v84 = *v83;
      v108[0] = v17;
      v86 = *(v17 + 2);
      v87 = *(v17 + 3);

      if (v86 >= v87 >> 1)
      {
        sub_2662FCF24((v87 > 1), v86 + 1, 1);
        v17 = v108[0];
      }

      *(v17 + 2) = v86 + 1;
      v88 = &v17[16 * v86];
      *(v88 + 4) = v85;
      *(v88 + 5) = v84;
      v83 += 3;
      --v82;
    }

    while (v82);

    v89 = v99;
    v90 = v102;
    v104(v99, v106, v102);

    v91 = sub_2664DFE18();
    v92 = sub_2664E06C8();

    if (os_log_type_enabled(v91, v92))
    {
      v93 = swift_slowAlloc();
      v94 = swift_slowAlloc();
      v108[0] = v94;
      *v93 = 136315394;
      v95 = MEMORY[0x2667834D0](v17, MEMORY[0x277D837D0]);
      v97 = sub_2662A320C(v95, v96, v108);

      *(v93 + 4) = v97;
      *(v93 + 12) = 2048;
      *(v93 + 14) = v63;
      _os_log_impl(&dword_26629C000, v91, v92, "ThresholdTrim#trim result:%s with splitIndex:%ld", v93, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v94);
      MEMORY[0x266784AD0](v94, -1, -1);
      MEMORY[0x266784AD0](v93, -1, -1);
    }

    v107(v89, v90);
    return v17;
  }

LABEL_49:
  __break(1u);

  __break(1u);
  return result;
}

void sub_266369588(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, v8, a1);
  v9 = sub_2664E0D68();
  if (v9)
  {
    v10 = v9;
    (*(v4 + 8))(v7, a1);
  }

  else
  {
    v10 = swift_allocError();
    (*(v4 + 32))(v11, v7, a1);
  }

  v12 = sub_2664DE198();

  v13 = [v12 code];
  if ((v13 - 1) > 0xA)
  {
    v14 = 0;
  }

  else
  {
    v14 = asc_2664E7CEE[(v13 - 1)];
  }

  *a2 = v14;
}

SiriAudioSupport::PlaybackCode_optional __swiftcall PlaybackCode.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2664E0DA8();

  v5 = v3 - 128;
  if (v3 >= 0x80)
  {
    v6 = -109;
    LOBYTE(v3) = 0x80;
    switch(v5)
    {
      case 0uLL:
        goto LABEL_2;
      case 1uLL:
        LOBYTE(v3) = -127;
        goto LABEL_2;
      case 2uLL:
        LOBYTE(v3) = -126;
        goto LABEL_2;
      case 3uLL:
        LOBYTE(v3) = -125;
        goto LABEL_2;
      case 4uLL:
        LOBYTE(v3) = -124;
        goto LABEL_2;
      case 5uLL:
        LOBYTE(v3) = -123;
        goto LABEL_2;
      case 6uLL:
        LOBYTE(v3) = -122;
        goto LABEL_2;
      case 7uLL:
        LOBYTE(v3) = -121;
        goto LABEL_2;
      case 8uLL:
        LOBYTE(v3) = -120;
        goto LABEL_2;
      case 9uLL:
        LOBYTE(v3) = -119;
        goto LABEL_2;
      case 0xAuLL:
        LOBYTE(v3) = -118;
        goto LABEL_2;
      case 0xBuLL:
        LOBYTE(v3) = -117;
        goto LABEL_2;
      case 0xCuLL:
        LOBYTE(v3) = -116;
        goto LABEL_2;
      case 0xDuLL:
        LOBYTE(v3) = -115;
        goto LABEL_2;
      case 0xEuLL:
        LOBYTE(v3) = -114;
        goto LABEL_2;
      case 0xFuLL:
        LOBYTE(v3) = -113;
        goto LABEL_2;
      case 0x10uLL:
        LOBYTE(v3) = -112;
        goto LABEL_2;
      case 0x11uLL:
        LOBYTE(v3) = -111;
        goto LABEL_2;
      case 0x12uLL:
        LOBYTE(v3) = -110;
        goto LABEL_2;
      case 0x13uLL:
        break;
      case 0x14uLL:
        v6 = -108;
        break;
      case 0x15uLL:
        v6 = -107;
        break;
      case 0x16uLL:
        v6 = -106;
        break;
      case 0x17uLL:
        v6 = -105;
        break;
      case 0x18uLL:
        v6 = -104;
        break;
      case 0x19uLL:
        v6 = -103;
        break;
      case 0x1AuLL:
        v6 = -102;
        break;
      case 0x1BuLL:
        v6 = -101;
        break;
      case 0x1CuLL:
        v6 = -100;
        break;
      case 0x1DuLL:
        v6 = -99;
        break;
      case 0x1EuLL:
        v6 = -98;
        break;
      case 0x1FuLL:
        v6 = -97;
        break;
      case 0x20uLL:
        v6 = -96;
        break;
      case 0x21uLL:
        v6 = -95;
        break;
      case 0x22uLL:
        v6 = -94;
        break;
      case 0x23uLL:
        v6 = -93;
        break;
      case 0x24uLL:
        v6 = -92;
        break;
      default:
        v6 = -91;
        break;
    }
  }

  else
  {
LABEL_2:
    v6 = v3;
  }

  *v2 = v6;
  return result;
}

unint64_t PlaybackCode.rawValue.getter()
{
  result = 0x6E776F6E6B6E75;
  switch(*v0)
  {
    case 1:
    case 7:
    case 8:
    case 0x9C:
      result = 0xD000000000000012;
      break;
    case 2:
    case 0xD:
    case 0x17:
      result = 0xD000000000000016;
      break;
    case 3:
      result = 0x6575517465536F6ELL;
      break;
    case 4:
      result = 0x6B63616279616C70;
      break;
    case 5:
    case 0x9A:
      result = 0xD000000000000017;
      break;
    case 6:
      result = 0xD000000000000020;
      break;
    case 9:
      result = 0x536E776F6E6B6E75;
      break;
    case 0xA:
    case 0x10:
    case 0x15:
    case 0x20:
    case 0x2C:
      result = 0xD000000000000013;
      break;
    case 0xB:
      result = 0x656D726F666C616DLL;
      break;
    case 0xC:
      result = 0x6146746165706572;
      break;
    case 0xE:
    case 0x14:
    case 0x99:
      result = 0xD000000000000015;
      break;
    case 0xF:
      result = 0xD00000000000001ALL;
      break;
    case 0x11:
      result = 0xD00000000000001ELL;
      break;
    case 0x12:
      result = 0x646E756F46746F6ELL;
      break;
    case 0x13:
      result = 0x62694C7974706D65;
      break;
    case 0x16:
      result = 0x7079547466697773;
      break;
    case 0x18:
      result = 0xD00000000000001BLL;
      break;
    case 0x19:
      result = 0xD000000000000011;
      break;
    case 0x1A:
      result = 0xD000000000000011;
      break;
    case 0x1B:
      result = 0x74654E736465656ELL;
      break;
    case 0x1C:
      result = 0x6D6F43736465656ELL;
      break;
    case 0x1D:
    case 0x9B:
    case 0x9D:
      result = 0xD000000000000014;
      break;
    case 0x1E:
      result = 0x6563697665446E6FLL;
      break;
    case 0x1F:
      result = 0x6E61706D6F436E6FLL;
      break;
    case 0x21:
      result = 0xD000000000000011;
      break;
    case 0x22:
    case 0x9E:
    case 0xA3:
      result = 0xD000000000000019;
      break;
    case 0x23:
      result = 0x73696D7265506F6ELL;
      break;
    case 0x24:
      result = 0x62694C64756F6C63;
      break;
    case 0x25:
      result = 0x726F7774654E6F6ELL;
      break;
    case 0x26:
      result = 0x756F46746F4E6469;
      break;
    case 0x27:
      result = 0x6F70707553746F6ELL;
      break;
    case 0x28:
      result = 0x656C6C65636E6163;
      break;
    case 0x29:
      result = 0x74754F64656D6974;
      break;
    case 0x2A:
    case 0x2E:
    case 0x2F:
      result = 0xD000000000000010;
      break;
    case 0x2B:
      result = 0x50676E6968746F6ELL;
      break;
    case 0x2D:
      result = 0xD000000000000011;
      break;
    case 0x30:
      result = 0xD000000000000027;
      break;
    case 0x31:
      result = 0xD000000000000011;
      break;
    case 0x32:
      result = 0xD00000000000001DLL;
      break;
    case 0x33:
      result = 0xD000000000000021;
      break;
    case 0x34:
      result = 0xD000000000000025;
      break;
    case 0x35:
      result = 0xD000000000000018;
      break;
    case 0x36:
      result = 0xD000000000000011;
      break;
    case 0x37:
      result = 0x3145476563;
      break;
    case 0x38:
      result = 0x3245476563;
      break;
    case 0x39:
      result = 0x3345476563;
      break;
    case 0x3A:
      result = 0x3445476563;
      break;
    case 0x3B:
      result = 0x3545476563;
      break;
    case 0x3C:
      result = 0x3645476563;
      break;
    case 0x3D:
      result = 0x3745476563;
      break;
    case 0x3E:
      result = 0x3845476563;
      break;
    case 0x3F:
      result = 0x3945476563;
      break;
    case 0x40:
      result = 0x303145476563;
      break;
    case 0x41:
      result = 0x313145476563;
      break;
    case 0x42:
      result = 0x323145476563;
      break;
    case 0x43:
      result = 0x333145476563;
      break;
    case 0x44:
      result = 0x343145476563;
      break;
    case 0x45:
      result = 0x353145476563;
      break;
    case 0x46:
      result = 0x363145476563;
      break;
    case 0x47:
      result = 0x373145476563;
      break;
    case 0x48:
      result = 0x383145476563;
      break;
    case 0x49:
      result = 0x393145476563;
      break;
    case 0x4A:
      result = 0x303245476563;
      break;
    case 0x4B:
      result = 0x313245476563;
      break;
    case 0x4C:
      result = 0x323245476563;
      break;
    case 0x4D:
      result = 0x333245476563;
      break;
    case 0x4E:
      result = 0x343245476563;
      break;
    case 0x4F:
      result = 0x353245476563;
      break;
    case 0x50:
      result = 0x363245476563;
      break;
    case 0x51:
      result = 0x373245476563;
      break;
    case 0x52:
      result = 0x383245476563;
      break;
    case 0x53:
      result = 0x393245476563;
      break;
    case 0x54:
      result = 0x303345476563;
      break;
    case 0x55:
      result = 0x313345476563;
      break;
    case 0x56:
      result = 0x323345476563;
      break;
    case 0x57:
      result = 0x333345476563;
      break;
    case 0x58:
      result = 0x343345476563;
      break;
    case 0x59:
      result = 0x353345476563;
      break;
    case 0x5A:
      result = 0x363345476563;
      break;
    case 0x5B:
      result = 0x373345476563;
      break;
    case 0x5C:
      result = 0x383345476563;
      break;
    case 0x5D:
      result = 0x393345476563;
      break;
    case 0x5E:
      result = 0x303445476563;
      break;
    case 0x5F:
      result = 0x313445476563;
      break;
    case 0x60:
      result = 0x323445476563;
      break;
    case 0x61:
      result = 0x333445476563;
      break;
    case 0x62:
      result = 0x343445476563;
      break;
    case 0x63:
      result = 0x353445476563;
      break;
    case 0x64:
      result = 0x363445476563;
      break;
    case 0x65:
      result = 0x373445476563;
      break;
    case 0x66:
      result = 0x383445476563;
      break;
    case 0x67:
      result = 0x393445476563;
      break;
    case 0x68:
      result = 0x303545476563;
      break;
    case 0x69:
      result = 0x313545476563;
      break;
    case 0x6A:
      result = 0x323545476563;
      break;
    case 0x6B:
      result = 0x333545476563;
      break;
    case 0x6C:
      result = 0x343545476563;
      break;
    case 0x6D:
      result = 0x353545476563;
      break;
    case 0x6E:
      result = 0x363545476563;
      break;
    case 0x6F:
      result = 0x373545476563;
      break;
    case 0x70:
      result = 0x383545476563;
      break;
    case 0x71:
      result = 0x393545476563;
      break;
    case 0x72:
      result = 0x303645476563;
      break;
    case 0x73:
      result = 0x313645476563;
      break;
    case 0x74:
      result = 0x323645476563;
      break;
    case 0x75:
      result = 0x333645476563;
      break;
    case 0x76:
      result = 0x343645476563;
      break;
    case 0x77:
      result = 0x353645476563;
      break;
    case 0x78:
      result = 0x363645476563;
      break;
    case 0x79:
      result = 0x373645476563;
      break;
    case 0x7A:
      result = 0x383645476563;
      break;
    case 0x7B:
      result = 0x393645476563;
      break;
    case 0x7C:
      result = 0x303745476563;
      break;
    case 0x7D:
      result = 0x313745476563;
      break;
    case 0x7E:
      result = 0x323745476563;
      break;
    case 0x7F:
      result = 0x333745476563;
      break;
    case 0x80:
      result = 0x343745476563;
      break;
    case 0x81:
      result = 0x353745476563;
      break;
    case 0x82:
      result = 0x363745476563;
      break;
    case 0x83:
      result = 0x373745476563;
      break;
    case 0x84:
      result = 0x383745476563;
      break;
    case 0x85:
      result = 0x393745476563;
      break;
    case 0x86:
      result = 0x303845476563;
      break;
    case 0x87:
      result = 0x313845476563;
      break;
    case 0x88:
      result = 0x323845476563;
      break;
    case 0x89:
      result = 0x333845476563;
      break;
    case 0x8A:
      result = 0x343845476563;
      break;
    case 0x8B:
      result = 0x353845476563;
      break;
    case 0x8C:
      result = 0x363845476563;
      break;
    case 0x8D:
      result = 0x373845476563;
      break;
    case 0x8E:
      result = 0x383845476563;
      break;
    case 0x8F:
      result = 0x393845476563;
      break;
    case 0x90:
      result = 0x303945476563;
      break;
    case 0x91:
      result = 0x313945476563;
      break;
    case 0x92:
      result = 0x323945476563;
      break;
    case 0x93:
      result = 0x333945476563;
      break;
    case 0x94:
      result = 0x343945476563;
      break;
    case 0x95:
      result = 0x353945476563;
      break;
    case 0x96:
      result = 0x363945476563;
      break;
    case 0x97:
      result = 0x373945476563;
      break;
    case 0x98:
      result = 0x383945476563;
      break;
    case 0x9F:
      result = 0xD000000000000022;
      break;
    case 0xA0:
      result = 0x6E49746F4E707061;
      break;
    case 0xA1:
      result = 0x4F5479616C506F6ELL;
      break;
    case 0xA2:
      result = 0xD00000000000001CLL;
      break;
    case 0xA4:
      result = 0x55656D6568635378;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_26636A764(char *a1, char *a2)
{
  v10 = *a1;
  v9 = *a2;
  v2 = PlaybackCode.rawValue.getter();
  v4 = v3;
  if (v2 == PlaybackCode.rawValue.getter() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_2664E0D88();
  }

  return v7 & 1;
}

uint64_t sub_26636A800()
{
  v1 = *v0;
  sub_2664E0E68();
  PlaybackCode.rawValue.getter();
  sub_2664E0368();

  return sub_2664E0EB8();
}

uint64_t sub_26636A868()
{
  v2 = *v0;
  PlaybackCode.rawValue.getter();
  sub_2664E0368();
}

uint64_t sub_26636A8CC()
{
  v1 = *v0;
  sub_2664E0E68();
  PlaybackCode.rawValue.getter();
  sub_2664E0368();

  return sub_2664E0EB8();
}

unint64_t sub_26636A93C@<X0>(unint64_t *a1@<X8>)
{
  result = PlaybackCode.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

SiriAudioSupport::DomainCode_optional __swiftcall DomainCode.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 0;
  v3 = 2;
  switch(rawValue)
  {
    case 0:
      goto LABEL_3;
    case 1:
      v2 = 1;
LABEL_3:
      v3 = v2;
      goto LABEL_4;
    case 2:
LABEL_4:
      *v1 = v3;
      break;
    case 3:
      *v1 = 3;
      break;
    case 4:
      *v1 = 4;
      break;
    case 5:
      *v1 = 5;
      break;
    case 6:
      *v1 = 6;
      break;
    case 7:
      *v1 = 7;
      break;
    case 8:
      *v1 = 8;
      break;
    case 9:
      *v1 = 9;
      break;
    case 10:
      *v1 = 10;
      break;
    case 11:
      *v1 = 11;
      break;
    case 12:
      *v1 = 12;
      break;
    case 13:
      *v1 = 13;
      break;
    case 14:
      *v1 = 14;
      break;
    case 15:
      *v1 = 15;
      break;
    case 16:
      *v1 = 16;
      break;
    case 17:
      *v1 = 17;
      break;
    case 18:
      *v1 = 18;
      break;
    case 19:
      *v1 = 19;
      break;
    default:
      *v1 = 20;
      break;
  }

  return rawValue;
}

uint64_t PlaybackCodeAndDescription.errorDescription.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t PlaybackCodeAndDescription.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 1);
  v4 = *(v0 + 2);
  sub_2664E0B28();

  strcpy(v9, "domainCode: ");
  BYTE5(v9[1]) = 0;
  HIWORD(v9[1]) = -5120;
  v5 = sub_2664E0D48();
  MEMORY[0x2667833B0](v5);

  MEMORY[0x2667833B0](0xD000000000000010, 0x80000002664F5840);
  v8 = qword_2664E7D00[v1 ^ 0x80];
  v6 = sub_2664E0D48();
  MEMORY[0x2667833B0](v6);

  MEMORY[0x2667833B0](0x44726F727265202CLL, 0xED0000203A637365);
  MEMORY[0x2667833B0](v3, v4);
  return v9[0];
}

uint64_t sub_26636AC38@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

unint64_t sub_26636AC6C()
{
  result = qword_280072D80;
  if (!qword_280072D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280072D80);
  }

  return result;
}

unint64_t sub_26636ACC4()
{
  result = qword_280072D88;
  if (!qword_280072D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280072D88);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PlaybackCode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x5C)
  {
    goto LABEL_17;
  }

  if (a2 + 164 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 164) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 164;
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

      return (*a1 | (v4 << 8)) - 164;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 164;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA5;
  v8 = v6 - 165;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PlaybackCode(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 164 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 164) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x5C)
  {
    v4 = 0;
  }

  if (a2 > 0x5B)
  {
    v5 = ((a2 - 92) >> 8) + 1;
    *result = a2 - 92;
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
    *result = a2 - 92;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DomainCode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xED)
  {
    goto LABEL_17;
  }

  if (a2 + 19 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 19) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 19;
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

      return (*a1 | (v4 << 8)) - 19;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 19;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x14;
  v8 = v6 - 20;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DomainCode(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 19 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 19) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xED)
  {
    v4 = 0;
  }

  if (a2 > 0xEC)
  {
    v5 = ((a2 - 237) >> 8) + 1;
    *result = a2 + 19;
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
    *result = a2 + 19;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t SiriAudioDomainExecutionLogger.__allocating_init(type:taskType:domainPerfContextEventSender:analyticsQueue:)(int a1, uint64_t a2, uint64_t a3, uint64_t *a4, void *a5)
{
  v10 = swift_allocObject();
  v11 = a4[3];
  v12 = a4[4];
  v13 = __swift_mutable_project_boxed_opaque_existential_1(a4, v11);
  v14 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v16);
  v18 = sub_26636C8C0(a1, a2, a3, v16, a5, v10, v11, v12);

  __swift_destroy_boxed_opaque_existential_1Tm(a4);
  return v18;
}

uint64_t SiriAudioDomainExecutionLogger.deinit()
{
  v1 = v0;
  v2 = sub_2664DFE38();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + 96) != 1 || (*(v1 + 97) & 1) == 0)
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v7 = __swift_project_value_buffer(v2, qword_280F914F0);
    swift_beginAccess();
    (*(v3 + 16))(v6, v7, v2);

    v8 = sub_2664DFE18();
    v9 = sub_2664E06D8();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v18 = v11;
      *v10 = 136315138;
      v12 = *(v1 + 40);
      v13 = sub_2664E0898();
      v15 = sub_2662A320C(v13, v14, &v18);

      *(v10 + 4) = v15;
      _os_log_impl(&dword_26629C000, v8, v9, "SiriAudioDomainExecutionLogger#deinit Error event wasn't logged successfully. Make sure that you called send(event:) for: %s.", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v11);
      MEMORY[0x266784AD0](v11, -1, -1);
      MEMORY[0x266784AD0](v10, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
    sub_26636BE0C();
  }

  v16 = *(v1 + 32);

  __swift_destroy_boxed_opaque_existential_1Tm((v1 + 56));
  return v1;
}

uint64_t SiriAudioDomainExecutionLogger.__deallocating_deinit()
{
  SiriAudioDomainExecutionLogger.deinit();

  return swift_deallocClassInstance();
}

uint64_t SiriAudioDomainExecutionLogger.init(type:taskType:domainPerfContextEventSender:analyticsQueue:)(int a1, uint64_t a2, uint64_t a3, uint64_t *a4, void *a5)
{
  v11 = a4[3];
  v12 = a4[4];
  v13 = __swift_mutable_project_boxed_opaque_existential_1(a4, v11);
  v14 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v16);
  v18 = sub_26636C8C0(a1, a2, a3, v16, a5, v5, v11, v12);

  __swift_destroy_boxed_opaque_existential_1Tm(a4);
  return v18;
}

void sub_26636B4BC()
{
  v1 = v0;
  v2 = sub_2664DFE38();
  v3 = *(v2 - 8);
  v4 = v3[8];
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v39 = &v37 - v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v37 - v10;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v2, qword_280F914F0);
  swift_beginAccess();
  v13 = v3[2];
  v13(v11, v12, v2);
  v14 = sub_2664DFE18();
  v15 = sub_2664E06B8();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v38 = v13;
    v17 = v2;
    v18 = v7;
    v19 = v1;
    v20 = v3;
    v21 = v16;
    *v16 = 0;
    _os_log_impl(&dword_26629C000, v14, v15, "SiriAudioDomainExecutionLogger#startDomainExecution...", v16, 2u);
    v22 = v21;
    v3 = v20;
    v1 = v19;
    v7 = v18;
    v2 = v17;
    v13 = v38;
    MEMORY[0x266784AD0](v22, -1, -1);
  }

  v23 = v3[1];
  v23(v11, v2);
  v24 = [objc_allocWithZone(MEMORY[0x277D57548]) init];
  if (!v24)
  {
    v13(v7, v12, v2);
    v29 = sub_2664DFE18();
    v30 = sub_2664E06D8();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_26629C000, v29, v30, "SiriAudioDomainExecutionLogger#startDomainExecution Couldn't initialize FLOWSchemaFLOWDomainExecutionStarted", v31, 2u);
      MEMORY[0x266784AD0](v31, -1, -1);
    }

    v32 = v7;
    goto LABEL_16;
  }

  v25 = v24;
  v26 = [objc_allocWithZone(MEMORY[0x277D57528]) init];
  if (!v26)
  {
    v33 = v39;
    v13(v39, v12, v2);
    v34 = sub_2664DFE18();
    v35 = sub_2664E06D8();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_26629C000, v34, v35, "SiriAudioDomainExecutionLogger#startDomainExecution Couldn't initialize start FLOWSchemaFLOWDomainExecutionContext", v36, 2u);
      MEMORY[0x266784AD0](v36, -1, -1);
    }

    else
    {
    }

    v32 = v33;
LABEL_16:
    v23(v32, v2);
    return;
  }

  v27 = v26;
  [v25 setDomainExecutionType_];
  [v27 setStartedOrChanged_];
  [v27 setContextId_];
  v28 = sub_26636C2E8(v27, 0x74726174732ELL, 0xE600000000000000);

  if (v28)
  {
    *(v1 + 96) = 1;
  }
}

void sub_26636B8D0()
{
  v0 = sub_2664DFE38();
  v1 = *(v0 - 8);
  v2 = v1[8];
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v47 - v7;
  v9 = MEMORY[0x28223BE20](v6);
  v50 = &v47 - v10;
  MEMORY[0x28223BE20](v9);
  v12 = &v47 - v11;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v0, qword_280F914F0);
  swift_beginAccess();
  v14 = v1[2];
  v14(v12, v13, v0);
  v15 = sub_2664DFE18();
  v16 = sub_2664E06B8();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v49 = v0;
    v18 = v14;
    v19 = v5;
    v20 = v8;
    v21 = v1;
    v22 = v17;
    *v17 = 0;
    _os_log_impl(&dword_26629C000, v15, v16, "SiriAudioDomainExecutionLogger#endDomainExecution...", v17, 2u);
    v23 = v22;
    v1 = v21;
    v8 = v20;
    v5 = v19;
    v14 = v18;
    v0 = v49;
    MEMORY[0x266784AD0](v23, -1, -1);
  }

  v51 = v1[1];
  v51(v12, v0);
  v24 = [objc_allocWithZone(MEMORY[0x277D57530]) init];
  if (!v24)
  {
    v14(v5, v13, v0);
    v37 = sub_2664DFE18();
    v38 = sub_2664E06D8();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = v0;
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_26629C000, v37, v38, "SiriAudioDomainExecutionLogger#endDomainExecution Couldn't initialize FLOWSchemaFLOWDomainExecutionEnded", v40, 2u);
      MEMORY[0x266784AD0](v40, -1, -1);

      v41 = v5;
      v42 = v39;
LABEL_18:
      v51(v41, v42);
      return;
    }

    v41 = v5;
LABEL_17:
    v42 = v0;
    goto LABEL_18;
  }

  v25 = v24;
  v26 = [objc_allocWithZone(MEMORY[0x277D57528]) init];
  if (!v26)
  {
    v14(v8, v13, v0);
    v43 = sub_2664DFE18();
    v44 = sub_2664E06D8();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = v0;
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_26629C000, v43, v44, "SiriAudioDomainExecutionLogger#endDomainExecution Couldn't initialize end FLOWSchemaFLOWDomainExecutionContext", v46, 2u);
      MEMORY[0x266784AD0](v46, -1, -1);

      v41 = v8;
      v42 = v45;
      goto LABEL_18;
    }

    v41 = v8;
    goto LABEL_17;
  }

  v27 = v26;
  [v26 setEnded_];
  v28 = v48;
  v29 = *(v48 + 48);
  [v27 setContextId_];
  v49 = v0;
  v14(v50, v13, v0);
  v30 = v28;

  v31 = sub_2664DFE18();
  v32 = sub_2664E06B8();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *v33 = 138412290;
    *(v33 + 4) = v29;
    *v34 = v29;
    v35 = v29;
    _os_log_impl(&dword_26629C000, v31, v32, "SiriAudioDomainExecutionLogger#endDomainExecution Sending Success - End events with contextId: %@", v33, 0xCu);
    sub_2662E4324(v34);
    MEMORY[0x266784AD0](v34, -1, -1);
    MEMORY[0x266784AD0](v33, -1, -1);
  }

  v51(v50, v49);
  v36 = sub_26636C2E8(v27, 1684956462, 0xE400000000000000);

  if (v36)
  {
    *(v30 + 97) = 1;
  }
}

void sub_26636BE0C()
{
  v1 = sub_2664DFE38();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v33 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v33 - v10;
  v12 = [objc_allocWithZone(MEMORY[0x277D57538]) init];
  if (v12)
  {
    v13 = v12;
    v14 = [objc_allocWithZone(MEMORY[0x277D57528]) init];
    if (v14)
    {
      v15 = v14;
      [v14 setFailed_];
      v16 = *(v0 + 48);
      [v15 setContextId_];
      if (qword_280F914E8 != -1)
      {
        swift_once();
      }

      v17 = __swift_project_value_buffer(v1, qword_280F914F0);
      swift_beginAccess();
      (*(v2 + 16))(v11, v17, v1);

      v18 = sub_2664DFE18();
      v19 = sub_2664E06B8();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v33 = v1;
        v21 = v20;
        v22 = swift_slowAlloc();
        *v21 = 138412290;
        *(v21 + 4) = v16;
        *v22 = v16;
        v23 = v16;
        _os_log_impl(&dword_26629C000, v18, v19, "SiriAudioDomainExecutionLogger#errorAndLog Sending Success - Failed events with contextId: %@", v21, 0xCu);
        sub_2662E4324(v22);
        MEMORY[0x266784AD0](v22, -1, -1);
        v24 = v21;
        v1 = v33;
        MEMORY[0x266784AD0](v24, -1, -1);
      }

      (*(v2 + 8))(v11, v1);
      sub_26636C2E8(v15, 0x64656C6961662ELL, 0xE700000000000000);
    }

    else
    {
      if (qword_280F914E8 != -1)
      {
        swift_once();
      }

      v29 = __swift_project_value_buffer(v1, qword_280F914F0);
      swift_beginAccess();
      (*(v2 + 16))(v9, v29, v1);
      v30 = sub_2664DFE18();
      v31 = sub_2664E06D8();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&dword_26629C000, v30, v31, "SiriAudioDomainExecutionLogger#errorAndLog Couldn't initialize failed FLOWSchemaFLOWDomainExecutionContext", v32, 2u);
        MEMORY[0x266784AD0](v32, -1, -1);
      }

      else
      {
      }

      (*(v2 + 8))(v9, v1);
    }
  }

  else
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v25 = __swift_project_value_buffer(v1, qword_280F914F0);
    swift_beginAccess();
    (*(v2 + 16))(v6, v25, v1);
    v26 = sub_2664DFE18();
    v27 = sub_2664E06D8();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_26629C000, v26, v27, "SiriAudioDomainExecutionLogger#errorAndLog Couldn't initialize FLOWSchemaFLOWDomainExecutionFailed", v28, 2u);
      MEMORY[0x266784AD0](v28, -1, -1);
    }

    (*(v2 + 8))(v6, v1);
  }
}

BOOL sub_26636C2E8(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v8 = sub_2664DFE38();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v55 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v55 - v17;
  v19 = [objc_allocWithZone(MEMORY[0x277D57500]) init];
  if (v19)
  {
    v60 = v16;
    v61 = v19;
    [v19 setFlowDomainExecutionContext_];
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v20 = __swift_project_value_buffer(v8, qword_280F914F0);
    swift_beginAccess();
    v58 = *(v9 + 16);
    v58(v18, v20, v8);

    v21 = sub_2664DFE18();
    v57 = v8;
    v22 = v21;
    v23 = sub_2664E06B8();
    v62 = v9;
    v24 = v23;

    v25 = os_log_type_enabled(v22, v24);
    v56 = a2;
    if (v25)
    {
      v26 = swift_slowAlloc();
      v55 = v20;
      v27 = v26;
      v28 = swift_slowAlloc();
      v29 = a2;
      v30 = v28;
      v63 = v28;
      *v27 = 136315394;
      *(v27 + 4) = sub_2662A320C(v29, a3, &v63);
      *(v27 + 12) = 2080;
      v31 = *(v4 + 40);
      v32 = sub_2664E0898();
      v33 = a3;
      v35 = sub_2662A320C(v32, v34, &v63);

      *(v27 + 14) = v35;
      _os_log_impl(&dword_26629C000, v22, v24, "SiriAudioDomainExecutionLogger#send sending %s event with domainExecutionType: %s", v27, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266784AD0](v30, -1, -1);
      v36 = v27;
      v20 = v55;
      MEMORY[0x266784AD0](v36, -1, -1);

      v37 = v57;
      v59 = *(v62 + 8);
      v59(v18, v57);
    }

    else
    {

      v37 = v57;
      v59 = *(v62 + 8);
      v59(v18, v57);
      v33 = a3;
    }

    v43 = *(v4 + 80);
    v44 = *(v4 + 88);
    __swift_project_boxed_opaque_existential_1((v4 + 56), v43);
    v42 = v61;
    (*(v44 + 8))(*(v4 + 24), *(v4 + 32), v61, v43, v44);
    v45 = v60;
    v58(v60, v20, v37);

    v46 = sub_2664DFE18();
    v47 = sub_2664E06B8();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v63 = v49;
      *v48 = 136315394;
      *(v48 + 4) = sub_2662A320C(v56, v33, &v63);
      *(v48 + 12) = 2080;
      v50 = *(v4 + 40);
      v51 = sub_2664E0898();
      v53 = sub_2662A320C(v51, v52, &v63);

      *(v48 + 14) = v53;
      _os_log_impl(&dword_26629C000, v46, v47, "SiriAudioDomainExecutionLogger#send sent %s event with domainExecutionType: %s", v48, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266784AD0](v49, -1, -1);
      MEMORY[0x266784AD0](v48, -1, -1);
    }

    v59(v45, v37);
  }

  else
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v38 = __swift_project_value_buffer(v8, qword_280F914F0);
    swift_beginAccess();
    (*(v9 + 16))(v13, v38, v8);
    v39 = sub_2664DFE18();
    v40 = sub_2664E06D8();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_26629C000, v39, v40, "SiriAudioDomainExecutionLogger#sendSirikitEvents Couldn't initialize FLOWSchemaFLOWClientEvent", v41, 2u);
      MEMORY[0x266784AD0](v41, -1, -1);
    }

    (*(v9 + 8))(v13, v8);
    v42 = 0;
  }

  return v42 != 0;
}

uint64_t sub_26636C8C0(int a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v26 = a2;
  v15 = sub_2664DE4A8();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v27[-1] - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27[3] = a7;
  v27[4] = a8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v27);
  (*(*(a7 - 8) + 32))(boxed_opaque_existential_1, a4, a7);
  *(a6 + 96) = 0;
  sub_2664DE498();
  v21 = objc_allocWithZone(MEMORY[0x277D5AC78]);
  v22 = sub_2664DE478();
  v23 = [v21 initWithNSUUID_];

  (*(v16 + 8))(v19, v15);
  *(a6 + 48) = v23;
  *(a6 + 40) = a1;
  *(a6 + 24) = v26;
  *(a6 + 32) = a3;
  *(a6 + 16) = a5;
  sub_2662A5550(v27, a6 + 56);
  v24 = a5;
  sub_26636B4BC();
  __swift_destroy_boxed_opaque_existential_1Tm(v27);
  return a6;
}

SiriAudioSupport::SiriAudioDeviceType_optional __swiftcall SiriAudioDeviceType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2664E0CB8();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t SiriAudioDeviceType.rawValue.getter()
{
  v1 = 0x656E6F685069;
  v2 = 0x646F50656D6F68;
  if (*v0 != 2)
  {
    v2 = 0x5654656C707061;
  }

  if (*v0)
  {
    v1 = 1684099177;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_26636CBF4()
{
  v1 = *v0;
  sub_2664E0E68();
  sub_2664E0368();

  return sub_2664E0EB8();
}

uint64_t sub_26636CCAC()
{
  *v0;
  *v0;
  *v0;
  sub_2664E0368();
}

uint64_t sub_26636CD50()
{
  v1 = *v0;
  sub_2664E0E68();
  sub_2664E0368();

  return sub_2664E0EB8();
}

void sub_26636CE10(uint64_t *a1@<X8>)
{
  v2 = 0xE600000000000000;
  v3 = 0x656E6F685069;
  v4 = 0x646F50656D6F68;
  if (*v1 != 2)
  {
    v4 = 0x5654656C707061;
  }

  if (*v1)
  {
    v3 = 1684099177;
    v2 = 0xE400000000000000;
  }

  if (*v1 <= 1u)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  if (*v1 > 1u)
  {
    v2 = 0xE700000000000000;
  }

  *a1 = v5;
  a1[1] = v2;
}

uint64_t DeviceProviding.deviceType.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  result = (*(a2 + 8))();
  if (result)
  {
    v7 = 2;
  }

  else
  {
    result = (*(a2 + 16))(a1, a2);
    if (result)
    {
      v7 = 3;
    }

    else
    {
      result = (*(a2 + 24))(a1, a2);
      if (result)
      {
        v7 = 1;
      }

      else
      {
        result = (*(a2 + 32))(a1, a2);
        if (result)
        {
          v7 = 0;
        }

        else
        {
          v7 = 4;
        }
      }
    }
  }

  *a3 = v7;
  return result;
}

unint64_t sub_26636CF54()
{
  result = qword_280072D90;
  if (!qword_280072D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280072D90);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SiriAudioDeviceType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SiriAudioDeviceType(uint64_t result, unsigned int a2, unsigned int a3)
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

SiriAudioSupport::NowPlayingInfoError_optional __swiftcall NowPlayingInfoError.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2664E0CB8();

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

uint64_t NowPlayingInfoError.rawValue.getter()
{
  if (*v0)
  {
    result = 0x616C50776F4E6F6ELL;
  }

  else
  {
    result = 0x6E776F6E6B6E75;
  }

  *v0;
  return result;
}

uint64_t sub_26636D21C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x616C50776F4E6F6ELL;
  }

  else
  {
    v4 = 0x6E776F6E6B6E75;
  }

  if (v3)
  {
    v5 = 0xE700000000000000;
  }

  else
  {
    v5 = 0xEF707041676E6979;
  }

  if (*a2)
  {
    v6 = 0x616C50776F4E6F6ELL;
  }

  else
  {
    v6 = 0x6E776F6E6B6E75;
  }

  if (*a2)
  {
    v7 = 0xEF707041676E6979;
  }

  else
  {
    v7 = 0xE700000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_2664E0D88();
  }

  return v9 & 1;
}

unint64_t sub_26636D2D4()
{
  result = qword_280072D98;
  if (!qword_280072D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280072D98);
  }

  return result;
}

uint64_t sub_26636D328()
{
  v1 = *v0;
  sub_2664E0E68();
  sub_2664E0368();

  return sub_2664E0EB8();
}

uint64_t sub_26636D3B8()
{
  *v0;
  sub_2664E0368();
}

uint64_t sub_26636D434()
{
  v1 = *v0;
  sub_2664E0E68();
  sub_2664E0368();

  return sub_2664E0EB8();
}

uint64_t sub_26636D4C0@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_2664E0CB8();

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

void sub_26636D520(uint64_t *a1@<X8>)
{
  v2 = 0x6E776F6E6B6E75;
  if (*v1)
  {
    v2 = 0x616C50776F4E6F6ELL;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xEF707041676E6979;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t PodcastEpisodeEntity.__allocating_init(_:)(uint64_t a1)
{
  v3 = sub_2664DF888();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + 48);
  v9 = *(v1 + 52);
  swift_allocObject();
  (*(v4 + 16))(v7, a1, v3);
  v10 = sub_2664DF8E8();
  (*(v4 + 8))(a1, v3);
  return v10;
}

uint64_t PodcastEpisodeEntity.init(_:)(uint64_t a1)
{
  v2 = sub_2664DF888();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  v6 = sub_2664DF8E8();
  (*(v3 + 8))(a1, v2);
  return v6;
}

uint64_t PodcastEpisodeEntity.__deallocating_deinit()
{
  _s16SiriAudioSupport20PodcastChannelEntityCfd_0();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PodcastEpisodeEntity()
{
  result = qword_280072E08;
  if (!qword_280072E08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26636DB6C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28213DE00](a1, a2, WitnessTable);
}

uint64_t sub_26636DC00(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28213DB58](a1, WitnessTable);
}

uint64_t sub_26636DC88(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PodcastEpisodeEntity();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_26636DCCC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28213DDE8](a1, a2, WitnessTable);
}

Swift::Int __swiftcall ListPosition.toIndex()()
{
  v1 = *v0;
  if (v0[1])
  {
    result = -v1;
    if (!__OFSUB__(0, v1))
    {
      return result;
    }

    __break(1u);
  }

  result = v1 - 1;
  if (__OFSUB__(v1, 1))
  {
    __break(1u);
  }

  return result;
}

uint64_t ListPosition.description.getter()
{
  if (v0[1])
  {
    v1 = 0x657372657665722ELL;
  }

  else
  {
    v1 = 0x6465726564726F2ELL;
  }

  v5 = v1;
  v4 = *v0;
  v2 = sub_2664E0D48();
  MEMORY[0x2667833B0](v2);

  MEMORY[0x2667833B0](41, 0xE100000000000000);
  return v5;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for ListPosition(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
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

uint64_t storeEnumTagSinglePayload for ListPosition(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_26636DF9C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800724D8, &unk_2664E3920);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2664E36E0;
  sub_2662D2EBC();
  v1 = MEMORY[0x277D837D0];
  v2 = sub_2664E0978();
  v4 = v3;
  *(v0 + 56) = v1;
  v5 = sub_2662C4094();
  *(v0 + 32) = v2;
  *(v0 + 40) = v4;
  *(v0 + 96) = v1;
  *(v0 + 104) = v5;
  *(v0 + 64) = v5;
  *(v0 + 72) = 0xD000000000000014;
  *(v0 + 80) = 0x80000002664F5990;
  *(v0 + 136) = v1;
  *(v0 + 144) = v5;
  *(v0 + 112) = 0x656C7069746C756DLL;
  *(v0 + 120) = 0xE800000000000000;
  result = sub_2664E02E8();
  qword_280072E18 = result;
  unk_280072E20 = v7;
  return result;
}

uint64_t sub_26636E148()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800724D8, &unk_2664E3920);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2664E36E0;
  sub_2662D2EBC();
  v1 = MEMORY[0x277D837D0];
  v2 = sub_2664E0978();
  v4 = v3;
  *(v0 + 56) = v1;
  v5 = sub_2662C4094();
  *(v0 + 32) = v2;
  *(v0 + 40) = v4;
  *(v0 + 96) = v1;
  *(v0 + 104) = v5;
  *(v0 + 64) = v5;
  *(v0 + 72) = 0xD000000000000010;
  *(v0 + 80) = 0x80000002664F5970;
  *(v0 + 136) = v1;
  *(v0 + 144) = v5;
  *(v0 + 112) = 0x656C7069746C756DLL;
  *(v0 + 120) = 0xE800000000000000;
  result = sub_2664E02E8();
  qword_280072E48 = result;
  unk_280072E50 = v7;
  return result;
}

uint64_t sub_26636E378(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, void *a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800724D8, &unk_2664E3920);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_2664E36E0;
  sub_2662D2EBC();
  v10 = MEMORY[0x277D837D0];
  v11 = sub_2664E0978();
  v13 = v12;
  *(v9 + 56) = v10;
  v14 = sub_2662C4094();
  *(v9 + 32) = v11;
  *(v9 + 40) = v13;
  *(v9 + 96) = v10;
  *(v9 + 104) = v14;
  *(v9 + 64) = v14;
  *(v9 + 72) = a2;
  *(v9 + 80) = a3;
  *(v9 + 136) = v10;
  *(v9 + 144) = v14;
  *(v9 + 112) = 0x656C7069746C756DLL;
  *(v9 + 120) = 0xE800000000000000;
  result = sub_2664E02E8();
  *a4 = result;
  *a5 = v16;
  return result;
}

uint64_t sub_26636E4B8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800724D8, &unk_2664E3920);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2664E36E0;
  sub_2662D2EBC();
  v1 = MEMORY[0x277D837D0];
  v2 = sub_2664E0978();
  v4 = v3;
  *(v0 + 56) = v1;
  v5 = sub_2662C4094();
  *(v0 + 32) = v2;
  *(v0 + 40) = v4;
  *(v0 + 96) = v1;
  *(v0 + 104) = v5;
  *(v0 + 64) = v5;
  *(v0 + 72) = 0xD000000000000012;
  *(v0 + 80) = 0x80000002664F5930;
  *(v0 + 136) = v1;
  *(v0 + 144) = v5;
  *(v0 + 112) = 0x656C7069746C756DLL;
  *(v0 + 120) = 0xE800000000000000;
  result = sub_2664E02E8();
  qword_280072E88 = result;
  unk_280072E90 = v7;
  return result;
}

uint64_t sub_26636E628(uint64_t a1, uint64_t *a2)
{
  v4 = swift_allocObject();
  v5 = a2[3];
  v6 = __swift_mutable_project_boxed_opaque_existential_1(a2, v5);
  v7 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = (v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v10 + 16))(v9);
  v11 = *v9;
  v22[3] = type metadata accessor for MediaPlaybackProvider();
  v22[4] = &off_2877F3740;
  v22[0] = v11;
  sub_2662A5550(v22, v20);
  v12 = v21;
  v13 = __swift_mutable_project_boxed_opaque_existential_1(v20, v21);
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = (v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v17 + 16))(v16);
  v18 = sub_2664DD13C(a1, *v16, v4);
  __swift_destroy_boxed_opaque_existential_1Tm(v22);
  __swift_destroy_boxed_opaque_existential_1Tm(v20);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  return v18;
}

uint64_t sub_26636E828(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v17 = *(a3 + 16);
  if (v17)
  {
    v5 = result;
    v6 = 0;
    v7 = (a3 + 40);
    v8 = MEMORY[0x277D84F90];
    v15 = result;
    while (v6 < *(v4 + 16))
    {
      v10 = *(v7 - 1);
      v9 = *v7;
      v18[0] = v10;
      v18[1] = v9;

      v11 = v5(v18);
      if (v3)
      {

        goto LABEL_16;
      }

      if (v11)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        v19 = v8;
        if ((result & 1) == 0)
        {
          result = sub_2662FCF24(0, *(v8 + 16) + 1, 1);
          v8 = v19;
        }

        v13 = *(v8 + 16);
        v12 = *(v8 + 24);
        if (v13 >= v12 >> 1)
        {
          result = sub_2662FCF24((v12 > 1), v13 + 1, 1);
          v8 = v19;
        }

        *(v8 + 16) = v13 + 1;
        v14 = v8 + 16 * v13;
        *(v14 + 32) = v10;
        *(v14 + 40) = v9;
        v4 = a3;
        v5 = v15;
      }

      else
      {
      }

      ++v6;
      v7 += 2;
      if (v17 == v6)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
LABEL_16:

    return v8;
  }

  return result;
}

uint64_t sub_26636E9A0(unsigned int a1)
{
  v26 = a1;
  v2 = sub_2664DEA98();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v25[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_2664DFE38();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v25[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = [v1 privatePlayMediaIntentData];
  if (v12 && (v13 = v12, v14 = [v12 privateMediaIntentData], v13, v14) && (v15 = objc_msgSend(v14, sel_speakerIDInfo), v14, v15) && (v16 = objc_msgSend(v15, sel_sharedUserID), v15, v16))
  {
    v17 = sub_2664E02C8();
  }

  else if (!static SiriEnvironmentWrapper.retrieve()() || (sub_2664DF4A8(), , sub_2664DEB48(), , v17 = sub_2664DEA18(), v19 = v18, (*(v3 + 8))(v6, v2), !v19))
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v21 = __swift_project_value_buffer(v7, qword_280F914F0);
    swift_beginAccess();
    (*(v8 + 16))(v11, v21, v7);
    v22 = sub_2664DFE18();
    v23 = sub_2664E06C8();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_26629C000, v22, v23, "PrivateMediaIntentDataProviding#sharedUserID and SiriEnvironment.UserIdentityProvider no sharedUserID", v24, 2u);
      MEMORY[0x266784AD0](v24, -1, -1);
    }

    (*(v8 + 8))(v11, v7);
    return 0;
  }

  if (sub_26636ED04(v26))
  {
    return v17;
  }

  return 0;
}

BOOL sub_26636ED04(uint64_t a1)
{
  v2 = v1;
  v89 = a1;
  v3 = sub_2664DEA98();
  v81 = *(v3 - 8);
  v82 = v3;
  v4 = *(v81 + 64);
  MEMORY[0x28223BE20](v3);
  v80 = &v78 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_2664DEA78();
  v86 = *(v88 - 8);
  v6 = *(v86 + 64);
  v7 = MEMORY[0x28223BE20](v88);
  v78 = &v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v78 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v79 = &v78 - v13;
  MEMORY[0x28223BE20](v12);
  v87 = &v78 - v14;
  v15 = sub_2664DFE38();
  v16 = *(v15 - 8);
  v17 = v16[8];
  v18 = MEMORY[0x28223BE20](v15);
  v84 = &v78 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v78 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v93 = &v78 - v24;
  MEMORY[0x28223BE20](v23);
  v26 = &v78 - v25;
  v27 = [v2 privatePlayMediaIntentData];
  if (v27 && (v28 = v27, v29 = [v27 privateMediaIntentData], v28, v29) && (v30 = objc_msgSend(v29, sel_speakerIDInfo), v29, v30))
  {
    v31 = [v30 speakerIDConfidence];
  }

  else
  {
    v31 = 0;
  }

  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v32 = __swift_project_value_buffer(v15, qword_280F914F0);
  swift_beginAccess();
  v33 = v16[2];
  v91 = v16 + 2;
  v92 = v32;
  v90 = v33;
  v33(v26, v32, v15);
  v34 = sub_2664DFE18();
  v35 = sub_2664E06C8();
  v36 = os_log_type_enabled(v34, v35);
  v85 = v22;
  v83 = v11;
  if (v36)
  {
    v37 = swift_slowAlloc();
    v38 = v15;
    v39 = swift_slowAlloc();
    v94 = v31;
    v95 = v39;
    *v37 = 136315138;
    type metadata accessor for INSpeakerIDConfidence(0);
    v40 = sub_2664E0318();
    v42 = sub_2662A320C(v40, v41, &v95);

    *(v37 + 4) = v42;
    _os_log_impl(&dword_26629C000, v34, v35, "PrivateMediaIntentDataProviding#isUserConfidenceEnoughToBeRecognized speakerID confidence: %s", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v39);
    v43 = v39;
    v15 = v38;
    MEMORY[0x266784AD0](v43, -1, -1);
    MEMORY[0x266784AD0](v37, -1, -1);

    v44 = v16[1];
    v44(v26, v38);
  }

  else
  {

    v44 = v16[1];
    v44(v26, v15);
  }

  v45 = *(&off_279BCC210 + v89);
  v46 = *(v45 + 16);
  v47 = 32;
  do
  {
    v48 = v46;
    if (v46-- == 0)
    {
      break;
    }

    v50 = *(v45 + v47);
    v47 += 8;
  }

  while (v50 != v31);

  v90(v93, v92, v15);
  v51 = sub_2664DFE18();
  v52 = sub_2664E06C8();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    *v53 = 67109376;
    *(v53 + 4) = v48 != 0;
    *(v53 + 8) = 2048;
    *(v53 + 10) = v31;
    _os_log_impl(&dword_26629C000, v51, v52, "PrivateMediaIntentDataProviding#isUserConfidenceEnoughToBeRecognized %{BOOL}d for confidence from PrivateMediaIntentData: %ld", v53, 0x12u);
    MEMORY[0x266784AD0](v53, -1, -1);
  }

  v44(v93, v15);
  if (v48)
  {
    return 1;
  }

  else if (static SiriEnvironmentWrapper.retrieve()())
  {
    sub_2664DF4A8();

    v55 = v80;
    sub_2664DEB48();

    v56 = v79;
    sub_2664DEA88();
    (*(v81 + 8))(v55, v82);
    v58 = v86;
    v57 = v87;
    v59 = v88;
    (*(v86 + 32))(v87, v56, v88);
    v90(v85, v92, v15);
    v82 = v15;
    v60 = *(v58 + 16);
    v61 = v83;
    v60(v83, v57, v59);
    v62 = sub_2664DFE18();
    v63 = sub_2664E06C8();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v95 = v65;
      *v64 = 136315138;
      LODWORD(v81) = v63;
      v60(v78, v61, v88);
      v66 = sub_2664E0318();
      v68 = v67;
      v93 = *(v86 + 8);
      (v93)(v61, v88);
      v69 = sub_2662A320C(v66, v68, &v95);

      *(v64 + 4) = v69;
      _os_log_impl(&dword_26629C000, v62, v81, "PrivateMediaIntentDataProviding#isUserConfidenceEnoughToBeRecognized userClassification confidence: %s", v64, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v65);
      v70 = v88;
      MEMORY[0x266784AD0](v65, -1, -1);
      MEMORY[0x266784AD0](v64, -1, -1);

      v71 = v82;
      v44(v85, v82);
    }

    else
    {

      v93 = *(v58 + 8);
      (v93)(v61, v59);
      v71 = v82;
      v44(v85, v82);
      v70 = v59;
    }

    LOBYTE(v95) = v89;
    v72 = sub_2664B74CC();
    v54 = sub_266457A34(v87, v72);

    v73 = v84;
    v90(v84, v92, v71);
    v74 = sub_2664DFE18();
    v75 = sub_2664E06C8();
    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      *v76 = 67109376;
      *(v76 + 4) = v54;
      *(v76 + 8) = 2048;
      *(v76 + 10) = v31;
      _os_log_impl(&dword_26629C000, v74, v75, "PrivateMediaIntentDataProviding#isUserConfidenceEnoughToBeRecognized %{BOOL}d for confidence from SiriEnvironment.UserIdentityProvider: %ld", v76, 0x12u);
      MEMORY[0x266784AD0](v76, -1, -1);
    }

    v44(v73, v71);
    (v93)(v87, v70);
  }

  else
  {
    return 0;
  }

  return v54;
}

uint64_t sub_26636F60C()
{
  if (qword_280F8F800 != -1)
  {
    swift_once();
  }

  v0 = qword_280F8F808;
  qword_280F91D38 = type metadata accessor for MultiUserConnectionProvider();
  unk_280F91D40 = &protocol witness table for MultiUserConnectionProvider;
  qword_280F91D20 = v0;
}

uint64_t sub_26636F694()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072EB8, &unk_2664E8B88);
  v0 = swift_allocObject();
  *(v0 + 16) = sub_266385DCC(MEMORY[0x277D84F90]);
  *(v0 + 32) = 0xD000000000000013;
  *(v0 + 40) = 0x80000002664F5A10;
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

  result = PThreadMutex.init(name:abortOnFail:analyticsService:)(0xD000000000000013, 0x80000002664F5A10, 1, v3);
  *(v0 + 24) = result;
  off_280F912E0 = v0;
  return result;
}

uint64_t sub_26636F7A8()
{
  v0 = sub_2664E0788();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2664E00B8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2664E0078();
  sub_2664E0768();
  v10 = _s16SiriAudioSupport14DispatchQueuesV5queue_3qos10attributesSo012OS_dispatch_F0CSS_0D00D3QoSVAhIE10AttributesVtFZ_0(0xD00000000000001FLL, 0x80000002664F5A90, v9, v4);
  (*(v1 + 8))(v4, v0);
  result = (*(v6 + 8))(v9, v5);
  qword_280072E98 = v10;
  return result;
}

uint64_t sub_26636F940(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v49 = a5;
  v50 = a6;
  v57 = a2;
  v54 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072EA0, &qword_2664E8B70);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v56 = &v48 - v10;
  v11 = sub_2664DFE38();
  v53 = *(v11 - 8);
  v12 = *(v53 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v13);
  v51 = &v48 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072EA8, &qword_2664E8B78);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v48 - v17;
  v19 = sub_2664DF478();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v52 = &v48 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_2664DF348();
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23);
  v28 = (&v48 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v58 = v26;
  if (a3 == 0x65726168536C696ELL && a4 == v25 || (v29 = sub_2664E0D88(), v26 = v58, (v29 & 1) != 0))
  {
    (*(v26 + 104))(v28, *MEMORY[0x277D5FF40], v23);
  }

  else
  {
    *v28 = a3;
    v28[1] = a4;
    (*(v26 + 104))(v28, *MEMORY[0x277D5FF38], v23);
  }

  sub_2664DF468();
  v55 = v23;
  (*(v20 + 56))(v18, 0, 1, v19);
  (*(v20 + 32))(v52, v18, v19);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v30 = v11;
  v31 = __swift_project_value_buffer(v11, qword_280F914F0);
  swift_beginAccess();
  v32 = v53;
  v33 = v51;
  (*(v53 + 16))(v51, v31, v11);
  v34 = v50;

  v35 = sub_2664DFE18();
  v36 = sub_2664E06C8();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v59 = v48;
    *v37 = 136315138;
    if (v34)
    {
      v38 = v49;
    }

    else
    {
      v38 = 0x3E6C696E3CLL;
    }

    if (!v34)
    {
      v34 = 0xE500000000000000;
    }

    v39 = sub_2662A320C(v38, v34, &v59);

    *(v37 + 4) = v39;
    _os_log_impl(&dword_26629C000, v35, v36, "SiriRemembersEntityProvider#storeForSharedUserId success initializing store for user: %s", v37, 0xCu);
    v40 = v48;
    __swift_destroy_boxed_opaque_existential_1Tm(v48);
    MEMORY[0x266784AD0](v40, -1, -1);
    MEMORY[0x266784AD0](v37, -1, -1);

    (*(v32 + 8))(v51, v30);
  }

  else
  {

    (*(v32 + 8))(v33, v30);
  }

  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072EB0, &qword_2664E8B80);
  v42 = *(v41 + 48);
  v43 = v56;
  v44 = v52;
  (*(v20 + 16))(v56, v52, v19);
  v45 = v58;
  v46 = v55;
  (*(v58 + 16))(v43 + v42, v28, v55);
  (*(*(v41 - 8) + 56))(v43, 0, 1, v41);
  v54(v43);
  sub_2662A9238(v43, &qword_280072EA0, &qword_2664E8B70);
  (*(v20 + 8))(v44, v19);
  return (*(v45 + 8))(v28, v46);
}

uint64_t sub_2663701A0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v39 = a2;
  v37 = a1;
  v4 = sub_2664E0038();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v38 = v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2664E00B8();
  v40 = *(v8 - 8);
  v41 = v8;
  v9 = *(v40 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2664DFE38();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v12, qword_280F914F0);
  swift_beginAccess();
  (*(v13 + 16))(v16, v17, v12);
  v18 = sub_2664DFE18();
  v19 = sub_2664E06E8();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_26629C000, v18, v19, "SiriRemembersEntityProvider#warmup", v20, 2u);
    MEMORY[0x266784AD0](v20, -1, -1);
  }

  (*(v13 + 8))(v16, v12);
  v21 = dispatch_group_create();
  dispatch_group_enter(v21);
  if (qword_280071B40 != -1)
  {
    swift_once();
  }

  v35[1] = qword_280072E98;
  sub_26634CBCC(v3, v49);
  v22 = swift_allocObject();
  v23 = v49[1];
  *(v22 + 16) = v49[0];
  *(v22 + 32) = v23;
  *(v22 + 48) = v50;
  *(v22 + 56) = v21;
  v47 = sub_2663746EC;
  v48 = v22;
  aBlock = MEMORY[0x277D85DD0];
  v44 = 1107296256;
  v35[5] = &v45;
  v45 = sub_2662A3F90;
  v46 = &block_descriptor_16;
  v24 = _Block_copy(&aBlock);
  v36 = v21;
  v25 = v11;
  sub_2664E0068();
  v42 = MEMORY[0x277D84F90];
  v35[4] = sub_2662A6120();
  v35[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280074210, &qword_2664E3640);
  sub_2662C1428(&qword_280F8F660, &qword_280074210, &qword_2664E3640);
  v26 = v38;
  sub_2664E0A08();
  MEMORY[0x266783800](0, v25, v26, v24);
  _Block_release(v24);
  v27 = *(v5 + 8);
  v35[2] = v5 + 8;
  v27(v26, v4);
  v28 = v41;
  v29 = *(v40 + 8);
  v29(v25, v41);

  v30 = swift_allocObject();
  v31 = v39;
  *(v30 + 16) = v37;
  *(v30 + 24) = v31;
  v47 = sub_266374738;
  v48 = v30;
  aBlock = MEMORY[0x277D85DD0];
  v44 = 1107296256;
  v45 = sub_2662A3F90;
  v46 = &block_descriptor_19;
  v32 = _Block_copy(&aBlock);

  sub_2664E0068();
  *&v49[0] = MEMORY[0x277D84F90];
  sub_2664E0A08();
  v33 = v36;
  sub_2664E0758();
  _Block_release(v32);

  v27(v26, v4);
  v29(v25, v28);
}

uint64_t sub_266370788(char *a1, NSObject *a2)
{
  v4 = sub_2664DFE38();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_15;
  }

  while (1)
  {
    v10 = *(a1 + 2);
    v9 = *(a1 + 3);
    if (v10 >= v9 >> 1)
    {
      a1 = sub_2663846F4((v9 > 1), v10 + 1, 1, a1);
    }

    *(a1 + 2) = v10 + 1;
    v11 = &a1[16 * v10];
    *(v11 + 4) = 0x65726168536C696ELL;
    *(v11 + 5) = 0xEF64497265735564;
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v12 = __swift_project_value_buffer(v4, qword_280F914F0);
    swift_beginAccess();
    (*(v5 + 16))(v8, v12, v4);
    v13 = sub_2664DFE18();
    v14 = sub_2664E06E8();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v32 = v4;
      v33 = v16;
      v17 = v16;
      *v15 = 136315138;

      v19 = MEMORY[0x2667834D0](v18, MEMORY[0x277D837D0]);
      v21 = v20;

      v22 = sub_2662A320C(v19, v21, &v33);

      *(v15 + 4) = v22;
      _os_log_impl(&dword_26629C000, v13, v14, "SiriRemembersEntityProvider#warmup warming up for users: %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v17);
      MEMORY[0x266784AD0](v17, -1, -1);
      MEMORY[0x266784AD0](v15, -1, -1);

      v23 = *(v5 + 8);
      v5 += 8;
      v23(v8, v32);
    }

    else
    {

      v24 = *(v5 + 8);
      v5 += 8;
      v24(v8, v4);
    }

    v25 = *(a1 + 2);

    if (!v25)
    {
      break;
    }

    v4 = 0;
    v26 = (a1 + 40);
    v8 = &unk_2877EB4C8;
    while (v4 < *(a1 + 2))
    {
      ++v4;
      v27 = *(v26 - 1);
      v5 = *v26;

      dispatch_group_enter(a2);
      v28 = swift_allocObject();
      *(v28 + 16) = a2;
      v29 = a2;
      sub_266373EC4(v27, v5, sub_266374740, v28);

      v26 += 2;
      if (v25 == v4)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_15:
    a1 = sub_2663846F4(0, *(a1 + 2) + 1, 1, a1);
  }

LABEL_13:

  dispatch_group_leave(a2);
}

uint64_t sub_266370B18(uint64_t (*a1)(uint64_t))
{
  v2 = sub_2664DFE38();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v2, qword_280F914F0);
  swift_beginAccess();
  (*(v3 + 16))(v6, v7, v2);
  v8 = sub_2664DFE18();
  v9 = sub_2664E06E8();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_26629C000, v8, v9, "SiriRemembersEntityProvider#warmup complete", v10, 2u);
    MEMORY[0x266784AD0](v10, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  return a1(1);
}

uint64_t sub_266370CDC(void *a1, int a2, void (*a3)(void), uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v29 = a2;
  v5 = sub_2664DFE38();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v28[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_2664DFE08();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v28[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = [a1 mediaSearch];
  v16 = sub_266373224(v15);
  v18 = v17;

  if (v18)
  {
    v19 = sub_26636E9A0(0);
    v21 = v20;
    sub_2664E0848();
    if (qword_280F91508 != -1)
    {
      swift_once();
    }

    sub_2664DFDF8();
    sub_2664DFDC8();
    (*(v11 + 8))(v14, v10);
    v22 = swift_allocObject();
    *(v22 + 16) = v30;
    *(v22 + 24) = v31;
    *(v22 + 32) = v16;
    *(v22 + 40) = v18;
    *(v22 + 48) = v29 & 1;

    sub_266373EC4(v19, v21, sub_266373EB4, v22);
  }

  else
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v23 = __swift_project_value_buffer(v5, qword_280F914F0);
    swift_beginAccess();
    (*(v6 + 16))(v9, v23, v5);
    v24 = sub_2664DFE18();
    v25 = sub_2664E06D8();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_26629C000, v24, v25, "SiriRemembersEntityProvider#findEntitiesSRView no query string, returning no matches", v26, 2u);
      MEMORY[0x266784AD0](v26, -1, -1);
    }

    (*(v6 + 8))(v9, v5);
    sub_266385DE0(MEMORY[0x277D84F90]);
    v30();
  }
}

uint64_t sub_26637109C(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  *&v204 = a6;
  v188 = a5;
  v185 = a4;
  v195 = a3;
  v196 = a2;
  v189 = a1;
  v182 = sub_2664DF3E8();
  v181 = *(v182 - 8);
  v6 = *(v181 + 64);
  MEMORY[0x28223BE20](v182);
  v180 = &v160 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v199 = sub_2664DF458();
  v183 = *(v199 - 8);
  v8 = *(v183 + 64);
  v9 = MEMORY[0x28223BE20](v199);
  v179 = &v160 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v187 = &v160 - v12;
  MEMORY[0x28223BE20](v11);
  v198 = &v160 - v13;
  v194 = sub_2664DF328();
  v205 = *(v194 - 8);
  v14 = *(v205 + 64);
  v15 = MEMORY[0x28223BE20](v194);
  v177 = &v160 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v178 = &v160 - v18;
  MEMORY[0x28223BE20](v17);
  v197 = &v160 - v19;
  v193 = sub_2664DF488();
  v192 = *(v193 - 8);
  v20 = *(v192 + 64);
  v21 = MEMORY[0x28223BE20](v193);
  v170 = &v160 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v176 = &v160 - v24;
  MEMORY[0x28223BE20](v23);
  v201 = (&v160 - v25);
  v203 = sub_2664DFE08();
  v206 = *(v203 - 8);
  v26 = *(v206 + 64);
  MEMORY[0x28223BE20](v203);
  v202 = &v160 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v191 = sub_2664DF348();
  v175 = *(v191 - 8);
  v28 = *(v175 + 64);
  MEMORY[0x28223BE20](v191);
  v200 = &v160 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v190 = sub_2664DF478();
  v30 = *(v190 - 8);
  v31 = v30[8];
  MEMORY[0x28223BE20](v190);
  v33 = &v160 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_2664DFE38();
  v207 = *(v34 - 8);
  v208 = v34;
  v35 = *(v207 + 64);
  v36 = MEMORY[0x28223BE20](v34);
  v169 = &v160 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x28223BE20](v36);
  v168 = &v160 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v172 = &v160 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v171 = &v160 - v43;
  v44 = MEMORY[0x28223BE20](v42);
  v186 = &v160 - v45;
  MEMORY[0x28223BE20](v44);
  v47 = &v160 - v46;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072EA0, &qword_2664E8B70);
  v49 = *(*(v48 - 8) + 64);
  MEMORY[0x28223BE20](v48 - 8);
  v51 = &v160 - v50;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072EB0, &qword_2664E8B80);
  v53 = *(v52 - 8);
  v54 = *(v53 + 64);
  v55 = MEMORY[0x28223BE20](v52);
  v57 = &v160 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v55);
  v59 = &v160 - v58;
  sub_2662A7224(v189, v51, &qword_280072EA0, &qword_2664E8B70);
  if ((*(v53 + 48))(v51, 1, v52) == 1)
  {
    sub_2662A9238(v51, &qword_280072EA0, &qword_2664E8B70);
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v60 = v208;
    v61 = __swift_project_value_buffer(v208, qword_280F914F0);
    swift_beginAccess();
    v62 = v207;
    (*(v207 + 16))(v47, v61, v60);
    v63 = sub_2664DFE18();
    v64 = sub_2664E06D8();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      *v65 = 0;
      _os_log_impl(&dword_26629C000, v63, v64, "SiriRemembersEntityProvider#findEntitiesSRView Failed to get results", v65, 2u);
      MEMORY[0x266784AD0](v65, -1, -1);
    }

    (*(v62 + 8))(v47, v60);
    sub_266385DE0(MEMORY[0x277D84F90]);
    v196();
  }

  else
  {
    sub_266374288(v51, v59);
    sub_2662A7224(v59, v57, &qword_280072EB0, &qword_2664E8B80);
    v67 = *(v52 + 48);
    v68 = v30[4];
    v184 = v33;
    v69 = v33;
    v70 = v190;
    v68(v69, v57, v190);
    v71 = v175;
    v72 = *(v175 + 8);
    v73 = &v57[v67];
    v74 = v191;
    v165 = v175 + 8;
    v164 = v72;
    v72(v73, v191);
    v166 = v59;
    sub_2662A7224(v59, v57, &qword_280072EB0, &qword_2664E8B80);
    (*(v71 + 32))(v200, &v57[*(v52 + 48)], v74);
    v163 = v30[1];
    v163(v57, v70);
    sub_2664E0838();
    v75 = v30 + 1;
    if (qword_280F91508 != -1)
    {
      swift_once();
    }

    v76 = qword_280F91D48;
    v77 = v202;
    sub_2664DFDF8();
    v162 = v76;
    sub_2664DFDD8();
    v78 = *(v206 + 8);
    v206 += 8;
    v161 = v78;
    v78(v77, v203);
    v79 = v201;
    v80 = v188;
    *v201 = v185;
    *(v79 + 1) = v80;
    v81 = v192;
    v82 = v193;
    (*(v192 + 104))(v79, *MEMORY[0x277D5FFF8], v193);
    v83 = qword_280F914E8;

    if (v83 != -1)
    {
      swift_once();
    }

    v167 = v75;
    LODWORD(v189) = v204 ^ 1;
    v84 = v208;
    v85 = __swift_project_value_buffer(v208, qword_280F914F0);
    swift_beginAccess();
    v86 = *(v207 + 16);
    v87 = v186;
    v175 = v85;
    v174 = v207 + 16;
    v173 = v86;
    v86(v186, v85, v84);
    v88 = *(v81 + 16);
    v89 = v176;
    v88(v176, v79, v82);
    v90 = sub_2664DFE18();
    v91 = sub_2664E06C8();
    if (os_log_type_enabled(v90, v91))
    {
      v92 = swift_slowAlloc();
      v160 = swift_slowAlloc();
      v210 = v160;
      *v92 = 136315394;
      v88(v170, v89, v82);
      v93 = sub_2664E0318();
      v95 = v94;
      v170 = *(v81 + 8);
      (v170)(v89, v82);
      v96 = sub_2662A320C(v93, v95, &v210);

      *(v92 + 4) = v96;
      *(v92 + 12) = 2080;
      v209 = v204 & 1;
      v97 = sub_2664E0318();
      v99 = sub_2662A320C(v97, v98, &v210);

      *(v92 + 14) = v99;
      _os_log_impl(&dword_26629C000, v90, v91, "SiriRemembersEntityProvider#findEntitiesSRView entity filter %s for srDataSource %s", v92, 0x16u);
      v100 = v160;
      swift_arrayDestroy();
      MEMORY[0x266784AD0](v100, -1, -1);
      MEMORY[0x266784AD0](v92, -1, -1);

      v176 = *(v207 + 8);
      (v176)(v186, v84);
    }

    else
    {

      v170 = *(v81 + 8);
      (v170)(v89, v82);
      v176 = *(v207 + 8);
      (v176)(v87, v84);
    }

    v101 = v198;
    v102 = v199;
    v103 = v177;
    sub_2664DF318();
    v104 = v178;
    sub_2664DF308();
    v105 = v205 + 8;
    v106 = *(v205 + 8);
    v107 = v194;
    v106(v103, v194);
    sub_2664DF2F8();
    v205 = v105;
    v178 = v106;
    v106(v104, v107);
    v108 = v179;
    sub_2664DF448();
    v109 = v187;
    sub_2664DF418();
    v110 = v183;
    v111 = v183 + 8;
    v112 = *(v183 + 8);
    v112(v108, v102);
    sub_2664DF438();
    v189 = v111;
    v186 = v112;
    v112(v109, v102);
    v113 = v202;
    v114 = v204;
    v115 = v182;
    if (v204)
    {
      v116 = v181;
      v117 = v180;
      (*(v181 + 104))(v180, *MEMORY[0x277D5FFA0], v182);
    }

    else
    {
      v117 = v180;
      sub_2664DF338();
      v116 = v181;
    }

    sub_2664DF428();
    (*(v116 + 8))(v117, v115);
    (v186)(v101, v102);
    v118 = *(v110 + 32);
    v118(v101, v109, v102);
    if (qword_280F91CD8 != 1)
    {
      v119 = v171;
      v173(v171, v175, v208);
      v120 = sub_2664DFE18();
      v121 = sub_2664E06E8();
      if (os_log_type_enabled(v120, v121))
      {
        v122 = swift_slowAlloc();
        *v122 = 0;
        _os_log_impl(&dword_26629C000, v120, v121, "SiriRemembersEntityProvider#findEntitiesSRView excluding direct writes for non-siri caller", v122, 2u);
        v123 = v122;
        v114 = v204;
        MEMORY[0x266784AD0](v123, -1, -1);
      }

      (v176)(v119, v208);
      v124 = v187;
      sub_2664DF408();
      (v186)(v101, v102);
      v118(v101, v124, v102);
    }

    sub_2664E0848();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800724D8, &unk_2664E3920);
    v125 = swift_allocObject();
    v204 = xmmword_2664E36F0;
    v126 = MEMORY[0x277D83B88];
    *(v125 + 16) = xmmword_2664E36F0;
    v127 = MEMORY[0x277D83C10];
    *(v125 + 56) = v126;
    *(v125 + 64) = v127;
    *(v125 + 32) = v114 & 1;
    sub_2664DFDF8();
    sub_2664DFDC8();

    v128 = v203;
    v129 = v161;
    v161(v113, v203);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072EC0, &qword_2664E8B98);
    v130 = sub_2664DF3D8();
    v131 = *(v130 - 8);
    v132 = *(v131 + 72);
    v133 = (*(v131 + 80) + 32) & ~*(v131 + 80);
    v134 = swift_allocObject();
    *(v134 + 16) = v204;
    v135 = v134 + v133;
    v136 = v198;
    (*(v131 + 104))(v135, *MEMORY[0x277D5FF90], v130);
    v137 = sub_2664DF3F8();

    sub_2664E0838();
    sub_2664DFDF8();
    sub_2664DFDD8();
    v129(v113, v128);
    v138 = v168;
    v173(v168, v175, v208);

    v139 = sub_2664DFE18();
    v140 = sub_2664E06E8();
    if (os_log_type_enabled(v139, v140))
    {
      v141 = swift_slowAlloc();
      *v141 = 134349056;
      *(v141 + 4) = *(v137 + 16);

      _os_log_impl(&dword_26629C000, v139, v140, "SiriRemembersEntityProvider#findEntitiesSRView Found %{public}ld matching media item entities", v141, 0xCu);
      MEMORY[0x266784AD0](v141, -1, -1);
    }

    else
    {
    }

    v142 = v199;
    v143 = v176;
    v144 = v197;
    v145 = v138;
    v146 = v208;
    v207 += 8;
    (v176)(v145, v208);
    v147 = v169;
    v173(v169, v175, v146);

    v148 = sub_2664DFE18();
    v149 = sub_2664E06E8();

    if (os_log_type_enabled(v148, v149))
    {
      v150 = swift_slowAlloc();
      v151 = swift_slowAlloc();
      v210 = v151;
      *v150 = 136315394;
      sub_2664DF398();
      v152 = sub_2664E01D8();
      v154 = sub_2662A320C(v152, v153, &v210);
      v176 = v143;
      v155 = v154;
      v144 = v197;
      v142 = v199;

      *(v150 + 4) = v155;
      v156 = v194;
      *(v150 + 12) = 2080;
      *(v150 + 14) = sub_2662A320C(v185, v188, &v210);
      _os_log_impl(&dword_26629C000, v148, v149, "SiriRemembersEntityProvider#findEntitiesSRView results : %s for query: %s", v150, 0x16u);
      swift_arrayDestroy();
      v157 = v151;
      v136 = v198;
      MEMORY[0x266784AD0](v157, -1, -1);
      MEMORY[0x266784AD0](v150, -1, -1);

      (v176)(v147, v146);
      v158 = v193;
    }

    else
    {

      (v143)(v147, v146);
      v158 = v193;
      v156 = v194;
    }

    v159 = sub_26631750C(v137);

    (v196)(v159);

    (v186)(v136, v142);
    (v178)(v144, v156);
    (v170)(v201, v158);
    v164(v200, v191);
    v163(v184, v190);
    return sub_2662A9238(v166, &qword_280072EB0, &qword_2664E8B80);
  }
}

void *sub_2663728EC@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t sub_26637290C(uint64_t result)
{
  if (result)
  {
    v1 = 0;
    v2 = *(result + 16);
    v3 = result + 40;
    v4 = MEMORY[0x277D84F90];
    v5 = MEMORY[0x277D84F90];
LABEL_3:
    v6 = (v3 + 16 * v1);
    while (v2 != v1)
    {
      if (v1 >= v2)
      {
        __break(1u);
LABEL_27:
        __break(1u);
        return result;
      }

      v7 = v1 + 1;
      if (__OFADD__(v1, 1))
      {
        goto LABEL_27;
      }

      v9 = *(v6 - 1);
      v8 = *v6;
      v10 = HIBYTE(*v6) & 0xF;
      if ((*v6 & 0x2000000000000000) == 0)
      {
        v10 = v9 & 0xFFFFFFFFFFFFLL;
      }

      ++v1;
      v6 += 2;
      if (v10)
      {

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_2662FCF24(0, v5[2] + 1, 1);
        }

        v12 = v5[2];
        v11 = v5[3];
        if (v12 >= v11 >> 1)
        {
          result = sub_2662FCF24((v11 > 1), v12 + 1, 1);
        }

        v5[2] = v12 + 1;
        v13 = &v5[2 * v12];
        v13[4] = v9;
        v13[5] = v8;
        v1 = v7;
        goto LABEL_3;
      }
    }

    v14 = v5[2];
    if (v14)
    {
      sub_2662FCF24(0, v14, 0);
      v15 = v4;
      v16 = v5 + 5;
      do
      {
        v17 = *(v16 - 1);
        v18 = *v16;

        MEMORY[0x2667833B0](v17, v18);
        MEMORY[0x2667833B0](34, 0xE100000000000000);

        v20 = *(v15 + 16);
        v19 = *(v15 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_2662FCF24((v19 > 1), v20 + 1, 1);
        }

        *(v15 + 16) = v20 + 1;
        v21 = v15 + 16 * v20;
        *(v21 + 32) = 34;
        *(v21 + 40) = 0xE100000000000000;
        v16 += 2;
        --v14;
      }

      while (v14);
    }

    MEMORY[0x2667833B0](32, 0xE100000000000000);
    sub_2664E0C28();
    MEMORY[0x2667833B0](32, 0xE100000000000000);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072440, &qword_2664E3600);
    sub_2662C1428(&qword_280F8F658, &qword_280072440, &qword_2664E3600);
    v22 = sub_2664E0288();
    v24 = v23;

    v25 = HIBYTE(v24) & 0xF;
    if ((v24 & 0x2000000000000000) == 0)
    {
      v25 = v22 & 0xFFFFFFFFFFFFLL;
    }

    if (v25)
    {
      return v22;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t sub_266372C18(uint64_t a1)
{
  v4 = sub_2664DFE38();
  v63 = *(v4 - 8);
  v64 = v4;
  v5 = *(v63 + 64);
  MEMORY[0x28223BE20](v4);
  v62 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v9 = 4;
LABEL_2:
  if (v7 <= 4)
  {
    v10 = 4;
  }

  else
  {
    v10 = v7;
  }

  do
  {
    if (v7 == v10)
    {
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      swift_once();
      goto LABEL_55;
    }

    v11 = qword_2877E2EA0[v7++ + 4];
    v12 = *(v11 + 16);
    v13 = 32;
    while (v12)
    {
      v14 = *(v11 + v13);
      v13 += 8;
      --v12;
      if (v14 == a1)
      {

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v65 = v8;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_2662FD0DC(0, *(v8 + 16) + 1, 1);
          v8 = v65;
        }

        v1 = *(v8 + 16);
        v16 = *(v8 + 24);
        v17 = v1 + 1;
        if (v1 >= v16 >> 1)
        {
          sub_2662FD0DC((v16 > 1), v1 + 1, 1);
          v8 = v65;
        }

        *(v8 + 16) = v17;
        *(v8 + 8 * v1 + 32) = v11;
        if (v7 == 4)
        {
LABEL_19:
          v18 = 0;
          v19 = MEMORY[0x277D84F90];
          while (1)
          {
            if (v18 >= *(v8 + 16))
            {
              goto LABEL_60;
            }

            v20 = v8 + 8 * v18;
            v21 = *(v20 + 32);
            v9 = *(v21 + 16);
            v1 = *(v19 + 2);
            v2 = v1 + v9;
            if (__OFADD__(v1, v9))
            {
              goto LABEL_61;
            }

            v22 = *(v20 + 32);

            v23 = swift_isUniquelyReferenced_nonNull_native();
            if (v23 && v2 <= *(v19 + 3) >> 1)
            {
              if (!*(v21 + 16))
              {
                goto LABEL_20;
              }
            }

            else
            {
              if (v1 <= v2)
              {
                v24 = v1 + v9;
              }

              else
              {
                v24 = v1;
              }

              v19 = sub_266384BD0(v23, v24, 1, v19);
              if (!*(v21 + 16))
              {
LABEL_20:

                if (v9)
                {
                  goto LABEL_62;
                }

                goto LABEL_21;
              }
            }

            v25 = *(v19 + 2);
            if ((*(v19 + 3) >> 1) - v25 < v9)
            {
              goto LABEL_63;
            }

            memcpy(&v19[8 * v25 + 32], (v21 + 32), 8 * v9);

            if (v9)
            {
              v26 = *(v19 + 2);
              v27 = __OFADD__(v26, v9);
              v28 = v26 + v9;
              if (v27)
              {
                goto LABEL_64;
              }

              *(v19 + 2) = v28;
            }

LABEL_21:
            if (v17 == ++v18)
            {
              goto LABEL_37;
            }
          }
        }

        goto LABEL_2;
      }
    }
  }

  while (v7 != 4);
  v17 = *(v8 + 16);
  if (v17)
  {
    goto LABEL_19;
  }

  v19 = MEMORY[0x277D84F90];
LABEL_37:

  v29 = *(v19 + 2);
  v30 = MEMORY[0x277D84F90];
  if (v29)
  {
    v31 = (v19 + 32);
    v32 = MEMORY[0x277D84F90];
    do
    {
      v34 = *v31++;
      v35 = INMediaItemTypeGetName();
      if (v35)
      {
        v36 = v35;
        v37 = sub_2664E02C8();
        v39 = v38;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v32 = sub_2663846F4(0, *(v32 + 2) + 1, 1, v32);
        }

        v41 = *(v32 + 2);
        v40 = *(v32 + 3);
        if (v41 >= v40 >> 1)
        {
          v32 = sub_2663846F4((v40 > 1), v41 + 1, 1, v32);
        }

        *(v32 + 2) = v41 + 1;
        v33 = &v32[16 * v41];
        *(v33 + 4) = v37;
        *(v33 + 5) = v39;
      }

      --v29;
    }

    while (v29);
  }

  else
  {
    v32 = MEMORY[0x277D84F90];
  }

  v42 = *(v32 + 2);
  if (v42)
  {
    v67 = v30;
    sub_2662FCF24(0, v42, 0);
    v8 = v67;
    v43 = (v32 + 40);
    do
    {
      v44 = *(v43 - 1);
      v45 = *v43;
      v65 = 0x707974616964656DLL;
      v66 = 0xEA00000000003D65;

      MEMORY[0x2667833B0](v44, v45);

      v47 = v65;
      v46 = v66;
      v67 = v8;
      v49 = *(v8 + 16);
      v48 = *(v8 + 24);
      if (v49 >= v48 >> 1)
      {
        sub_2662FCF24((v48 > 1), v49 + 1, 1);
        v8 = v67;
      }

      *(v8 + 16) = v49 + 1;
      v50 = v8 + 16 * v49;
      *(v50 + 32) = v47;
      *(v50 + 40) = v46;
      v43 += 2;
      --v42;
    }

    while (v42);
  }

  else
  {

    v8 = MEMORY[0x277D84F90];
  }

  v2 = v63;
  v1 = v64;
  v9 = v62;
  if (qword_280F914E8 != -1)
  {
    goto LABEL_65;
  }

LABEL_55:
  v51 = __swift_project_value_buffer(v1, qword_280F914F0);
  swift_beginAccess();
  (*(v2 + 16))(v9, v51, v1);

  v52 = sub_2664DFE18();
  v53 = sub_2664E06C8();

  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v67 = v55;
    *v54 = 136315394;
    v56 = MEMORY[0x2667834D0](v8, MEMORY[0x277D837D0]);
    v58 = sub_2662A320C(v56, v57, &v67);

    *(v54 + 4) = v58;
    *(v54 + 12) = 2048;
    *(v54 + 14) = a1;
    _os_log_impl(&dword_26629C000, v52, v53, "SiriRemembersEntityProvider#typeQuery terms: %s for type: %ld", v54, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v55);
    MEMORY[0x266784AD0](v55, -1, -1);
    MEMORY[0x266784AD0](v54, -1, -1);

    (*(v2 + 8))(v9, v64);
  }

  else
  {

    (*(v2 + 8))(v9, v1);
  }

  v59 = sub_26637290C(v8);

  return v59;
}

uint64_t sub_266373224(char *a1)
{
  v2 = sub_2664DFE38();
  v3 = *(v2 - 8);
  v4 = *(v3 + 8);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v126 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v126 = &v126 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v130 = &v126 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v131 = &v126 - v13;
  MEMORY[0x28223BE20](v12);
  v15 = (&v126 - v14);
  if (qword_280F914E8 != -1)
  {
    goto LABEL_81;
  }

  while (1)
  {
    v16 = __swift_project_value_buffer(v2, qword_280F914F0);
    swift_beginAccess();
    v17 = *(v3 + 2);
    v134 = v3 + 16;
    v135 = v16;
    v133 = v17;
    v17(v15, v16, v2);
    v18 = a1;
    v19 = sub_2664DFE18();
    v20 = sub_2664E06C8();

    v21 = os_log_type_enabled(v19, v20);
    v136 = v18;
    if (v21)
    {
      v22 = swift_slowAlloc();
      v129 = swift_slowAlloc();
      v137 = a1;
      v138 = v129;
      *v22 = 136315138;
      v23 = v18;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072EC8, qword_2664E8BA0);
      v24 = sub_2664E0318();
      v26 = v3;
      v27 = v2;
      v28 = sub_2662A320C(v24, v25, &v138);

      *(v22 + 4) = v28;
      v2 = v27;
      v3 = v26;
      _os_log_impl(&dword_26629C000, v19, v20, "SiriRemembersEntityProvider#findEntities building query for search: %s...", v22, 0xCu);
      v29 = v129;
      __swift_destroy_boxed_opaque_existential_1Tm(v129);
      MEMORY[0x266784AD0](v29, -1, -1);
      MEMORY[0x266784AD0](v22, -1, -1);

      v30 = v26;
    }

    else
    {

      v30 = v3;
    }

    v31 = *(v30 + 1);
    (v31)(v15, v2);
    if (!a1)
    {
      v133(v7, v135, v2);
      v41 = sub_2664DFE18();
      v42 = sub_2664E06E8();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = v2;
        v44 = swift_slowAlloc();
        *v44 = 0;
        _os_log_impl(&dword_26629C000, v41, v42, "SiriRemembersEntityProvider#findEntities nil MediaSearch returning implicit music types search", v44, 2u);
        v45 = v44;
        v2 = v43;
        MEMORY[0x266784AD0](v45, -1, -1);
      }

      (v31)(v7, v2);
      return sub_266372C18(18);
    }

    v132 = v2;
    v32 = v136;
    v33 = [v32 mediaName];
    if (v33)
    {
      v34 = v33;
      v35 = sub_2664E02C8();
      v37 = v36;

      a1 = sub_2663846F4(0, 1, 1, MEMORY[0x277D84F90]);
      v39 = *(a1 + 2);
      v38 = *(a1 + 3);
      if (v39 >= v38 >> 1)
      {
        a1 = sub_2663846F4((v38 > 1), v39 + 1, 1, a1);
      }

      *(a1 + 2) = v39 + 1;
      v40 = &a1[16 * v39];
      *(v40 + 4) = v35;
      *(v40 + 5) = v37;
    }

    else
    {
      a1 = MEMORY[0x277D84F90];
    }

    v47 = [v32 artistName];
    if (v47)
    {
      v48 = v47;
      v49 = sub_2664E02C8();
      v51 = v50;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        a1 = sub_2663846F4(0, *(a1 + 2) + 1, 1, a1);
      }

      v53 = *(a1 + 2);
      v52 = *(a1 + 3);
      if (v53 >= v52 >> 1)
      {
        a1 = sub_2663846F4((v52 > 1), v53 + 1, 1, a1);
      }

      *(a1 + 2) = v53 + 1;
      v54 = &a1[16 * v53];
      *(v54 + 4) = v49;
      *(v54 + 5) = v51;
    }

    v55 = [v32 albumName];
    if (v55)
    {
      v56 = v55;
      v57 = sub_2664E02C8();
      v59 = v58;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        a1 = sub_2663846F4(0, *(a1 + 2) + 1, 1, a1);
      }

      v61 = *(a1 + 2);
      v60 = *(a1 + 3);
      if (v61 >= v60 >> 1)
      {
        a1 = sub_2663846F4((v60 > 1), v61 + 1, 1, a1);
      }

      *(a1 + 2) = v61 + 1;
      v62 = &a1[16 * v61];
      *(v62 + 4) = v57;
      *(v62 + 5) = v59;
    }

    v136 = v32;
    v63 = sub_26637290C(a1);
    if (v64)
    {
      v65 = v63;
      v66 = v64;

      v67 = sub_2663846F4(0, 1, 1, MEMORY[0x277D84F90]);
      v69 = *(v67 + 2);
      v68 = *(v67 + 3);
      if (v69 >= v68 >> 1)
      {
        v67 = sub_2663846F4((v68 > 1), v69 + 1, 1, v67);
      }

      *(v67 + 2) = v69 + 1;
      v70 = &v67[16 * v69];
      *(v70 + 4) = v65;
      *(v70 + 5) = v66;
    }

    else
    {
      v67 = MEMORY[0x277D84F90];
    }

    v71 = [v136 genreNames];
    v129 = v31;
    if (v71)
    {
      v72 = v71;
      v73 = sub_2664E04A8();
    }

    else
    {
      v73 = MEMORY[0x277D84F90];
    }

    v74 = [v136 moodNames];
    v75 = MEMORY[0x277D84F90];
    if (v74)
    {
      v76 = v74;
      v77 = sub_2664E04A8();
    }

    else
    {
      v77 = MEMORY[0x277D84F90];
    }

    v138 = v73;
    sub_2662F9CB0(v77);
    v78 = sub_26637290C(v138);
    v15 = v79;

    if (v15)
    {

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v67 = sub_2663846F4(0, *(v67 + 2) + 1, 1, v67);
      }

      v81 = *(v67 + 2);
      v80 = *(v67 + 3);
      if (v81 >= v80 >> 1)
      {
        v67 = sub_2663846F4((v80 > 1), v81 + 1, 1, v67);
      }

      *(v67 + 2) = v81 + 1;
      v82 = &v67[16 * v81];
      *(v82 + 4) = v78;
      *(v82 + 5) = v15;
    }

    v128 = a1;
    v2 = *(v67 + 2);
    if (!v2)
    {
      break;
    }

    v83 = 0;
    v84 = (v67 + 40);
    while (v83 < *(v67 + 2))
    {
      v85 = *(v84 - 1);
      v15 = *v84;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v75 = sub_2663846F4(0, *(v75 + 2) + 1, 1, v75);
      }

      v7 = *(v75 + 2);
      v86 = *(v75 + 3);
      a1 = (v7 + 1);
      if (v7 >= v86 >> 1)
      {
        v75 = sub_2663846F4((v86 > 1), v7 + 1, 1, v75);
      }

      ++v83;
      *(v75 + 2) = a1;
      v87 = &v75[16 * v7];
      *(v87 + 4) = v85;
      *(v87 + 5) = v15;
      v84 += 2;
      if (v2 == v83)
      {
        goto LABEL_53;
      }
    }

LABEL_80:
    __break(1u);
LABEL_81:
    swift_once();
  }

  a1 = *(v75 + 2);
LABEL_53:
  v2 = 0;
  v88 = v75 + 40;
  v15 = MEMORY[0x277D84F90];
LABEL_54:
  v89 = &v88[16 * v2];
  while (a1 != v2)
  {
    if (v2 >= *(v75 + 2))
    {
      __break(1u);
      goto LABEL_80;
    }

    ++v2;
    v91 = *(v89 - 1);
    v90 = *v89;
    v89 += 16;
    v92 = HIBYTE(v90) & 0xF;
    if ((v90 & 0x2000000000000000) == 0)
    {
      v92 = v91 & 0xFFFFFFFFFFFFLL;
    }

    if (v92)
    {

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v138 = v15;
      v127 = v88;
      v7 = v3;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_2662FCF24(0, v15[2] + 1, 1);
        v15 = v138;
      }

      v95 = v15[2];
      v94 = v15[3];
      if (v95 >= v94 >> 1)
      {
        sub_2662FCF24((v94 > 1), v95 + 1, 1);
        v15 = v138;
      }

      v15[2] = v95 + 1;
      v96 = &v15[2 * v95];
      v96[4] = v91;
      v96[5] = v90;
      v3 = v7;
      v88 = v127;
      goto LABEL_54;
    }
  }

  if (v15[2])
  {
    v46 = v15[4];
    v97 = v15[5];

    v98 = v131;
    v99 = v132;
    v133(v131, v135, v132);

    v100 = sub_2664DFE18();
    v101 = sub_2664E06C8();
    if (os_log_type_enabled(v100, v101))
    {
      v102 = v98;
      v103 = swift_slowAlloc();
      v104 = swift_slowAlloc();
      v138 = v104;
      *v103 = 136315138;
      v105 = sub_2662A320C(v46, v97, &v138);

      *(v103 + 4) = v105;
      _os_log_impl(&dword_26629C000, v100, v101, "SiriRemembersEntityProvider#findEntities EntitySearch query for term: %s", v103, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v104);
      MEMORY[0x266784AD0](v104, -1, -1);
      MEMORY[0x266784AD0](v103, -1, -1);

      v106 = v102;
      v107 = v132;
    }

    else
    {

      v106 = v98;
      v107 = v99;
    }

    (v129)(v106, v107);
  }

  else
  {

    v108 = v136;
    v109 = [v136 mediaType];
    v110 = v132;
    if (v109)
    {
      v133(v130, v135, v132);
      v111 = v108;
      v112 = sub_2664DFE18();
      v113 = sub_2664E06E8();
      v114 = os_log_type_enabled(v112, v113);
      v115 = v129;
      if (v114)
      {
        v116 = swift_slowAlloc();
        *v116 = 134349056;
        *(v116 + 4) = [v111 mediaType];

        _os_log_impl(&dword_26629C000, v112, v113, "SiriRemembersEntityProvider#findEntities no primary term, but we do have a type: %{public}ld, creating family-type query", v116, 0xCu);
        v117 = v116;
        v110 = v132;
        MEMORY[0x266784AD0](v117, -1, -1);
      }

      else
      {

        v112 = v111;
      }

      (v115)(v130, v110);
      v46 = sub_266372C18([v111 mediaType]);
    }

    else
    {
      v118 = v126;
      v133(v126, v135, v132);
      v119 = sub_2664DFE18();
      v120 = sub_2664E06E8();
      v121 = os_log_type_enabled(v119, v120);
      v122 = v129;
      if (v121)
      {
        v123 = swift_slowAlloc();
        *v123 = 0;
        _os_log_impl(&dword_26629C000, v119, v120, "SiriRemembersEntityProvider#findEntities had non-nil (but empty) search, defaulting to music-family types", v123, 2u);
        v124 = v123;
        v110 = v132;
        MEMORY[0x266784AD0](v124, -1, -1);
      }

      (v122)(v118, v110);
      v46 = sub_266372C18(18);
    }
  }

  return v46;
}

uint64_t sub_266373EC4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_2664DFE38();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v8, qword_280F914F0);
  swift_beginAccess();
  (*(v9 + 16))(v12, v13, v8);

  v14 = sub_2664DFE18();
  v15 = sub_2664E06E8();

  v16 = os_log_type_enabled(v14, v15);
  v35 = a1;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v34 = a4;
    v18 = v17;
    v19 = swift_slowAlloc();
    v33 = a3;
    v20 = v19;
    v36[0] = v19;
    *v18 = 136315138;
    if (a2)
    {
      v21 = a2;
    }

    else
    {
      a1 = 0x3E6C696E3CLL;
      v21 = 0xE500000000000000;
    }

    v22 = sub_2662A320C(a1, v21, v36);

    *(v18 + 4) = v22;
    _os_log_impl(&dword_26629C000, v14, v15, "SiriRemembersEntityProvider#storeForSharedUserId: %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    v23 = v20;
    a3 = v33;
    MEMORY[0x266784AD0](v23, -1, -1);
    v24 = v18;
    a4 = v34;
    MEMORY[0x266784AD0](v24, -1, -1);
  }

  (*(v9 + 8))(v12, v8);
  v25 = qword_280F912D8;

  if (v25 != -1)
  {
    swift_once();
  }

  if (a2)
  {
    v26 = a2;
  }

  else
  {
    v26 = 0xEF64497265735564;
  }

  v27 = off_280F912E0;
  v28 = v35;
  if (a2)
  {
    v29 = v35;
  }

  else
  {
    v29 = 0x65726168536C696ELL;
  }

  v36[0] = v29;
  v36[1] = v26;
  v30 = swift_allocObject();
  v30[2] = v29;
  v30[3] = v26;
  v30[4] = v28;
  v30[5] = a2;
  v31 = *(*v27 + 160);

  v31(v36, sub_26637427C, v30, 0, 1, a3, a4);
}

uint64_t objectdestroyTm_2(void (*a1)(void), uint64_t a2)
{
  a1(*(v2 + 24));
  v4 = *(v2 + 40);

  return MEMORY[0x2821FE8E8](v2, a2, 7);
}

uint64_t sub_266374288(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072EB0, &qword_2664E8B80);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2663742F8(uint64_t a1)
{
  v2 = sub_2664DFE38();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v43 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = MEMORY[0x277D84F90];
  if (v6)
  {
    v8 = (a1 + 32);
    v9 = MEMORY[0x277D84F90];
    do
    {
      v11 = *v8++;
      v12 = INMediaItemTypeGetName();
      if (v12)
      {
        v13 = v12;
        v14 = sub_2664E02C8();
        v16 = v15;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_2663846F4(0, *(v9 + 2) + 1, 1, v9);
        }

        v18 = *(v9 + 2);
        v17 = *(v9 + 3);
        if (v18 >= v17 >> 1)
        {
          v9 = sub_2663846F4((v17 > 1), v18 + 1, 1, v9);
        }

        *(v9 + 2) = v18 + 1;
        v10 = &v9[16 * v18];
        *(v10 + 4) = v14;
        *(v10 + 5) = v16;
      }

      --v6;
    }

    while (v6);
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v19 = *(v9 + 2);
  if (v19)
  {
    v41 = v3;
    v42 = v2;
    v46 = v7;
    sub_2662FCF24(0, v19, 0);
    v20 = v46;
    v21 = (v9 + 40);
    do
    {
      v22 = *(v21 - 1);
      v23 = *v21;
      v44 = 0x707974616964656DLL;
      v45 = 0xEA00000000003D65;

      MEMORY[0x2667833B0](v22, v23);

      v25 = v44;
      v24 = v45;
      v46 = v20;
      v27 = *(v20 + 16);
      v26 = *(v20 + 24);
      if (v27 >= v26 >> 1)
      {
        sub_2662FCF24((v26 > 1), v27 + 1, 1);
        v20 = v46;
      }

      *(v20 + 16) = v27 + 1;
      v28 = v20 + 16 * v27;
      *(v28 + 32) = v25;
      *(v28 + 40) = v24;
      v21 += 2;
      --v19;
    }

    while (v19);

    v3 = v41;
    v2 = v42;
  }

  else
  {

    v20 = MEMORY[0x277D84F90];
  }

  v29 = v43;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v30 = __swift_project_value_buffer(v2, qword_280F914F0);
  swift_beginAccess();
  (*(v3 + 16))(v29, v30, v2);

  v31 = sub_2664DFE18();
  v32 = sub_2664E06C8();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v46 = v34;
    *v33 = 136315138;
    v35 = MEMORY[0x2667834D0](v20, MEMORY[0x277D837D0]);
    v37 = sub_2662A320C(v35, v36, &v46);

    *(v33 + 4) = v37;
    _os_log_impl(&dword_26629C000, v31, v32, "SiriRemembersEntityProvider#typeGroupQuery terms: %s", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v34);
    MEMORY[0x266784AD0](v34, -1, -1);
    MEMORY[0x266784AD0](v33, -1, -1);
  }

  (*(v3 + 8))(v29, v2);
  v38 = sub_26637290C(v20);

  return v38;
}

void sub_2663746EC()
{
  v1 = *(v0 + 56);
  sub_266370788(MEMORY[0x277D84F90], v1);
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_26637477C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_2663747C4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_266374820()
{
  result = qword_280072ED0;
  if (!qword_280072ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280072ED0);
  }

  return result;
}

unint64_t sub_266374878()
{
  result = qword_280072ED8;
  if (!qword_280072ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280072ED8);
  }

  return result;
}

uint64_t sub_2663748EC(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4, uint64_t a5, void *a6, void (*a7)(__int128 *), uint64_t a8)
{
  v69 = a8;
  v68 = a7;
  v67 = a6;
  v63 = a5;
  v64 = a4;
  v65 = a3;
  v10 = sub_2664DFE38();
  v11 = *(v10 - 8);
  v12 = v11[8];
  v13 = MEMORY[0x28223BE20](v10);
  v70 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v60 - v15;
  v17 = sub_2664DFE08();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v60 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = *(a1 + 16);
  v22 = *(a2 + 40);
  v66 = a2;
  v23 = *__swift_project_boxed_opaque_existential_1((a2 + 16), v22);
  if (qword_280F91508 != -1)
  {
    swift_once();
  }

  v24 = qword_280F91D48;
  sub_2664DFDE8();
  sub_2664E0848();
  sub_2664DFDC8();
  sub_26648D3D0(0, v23, v77);
  sub_2664E0838();
  sub_2664DFDD8();
  (*(v18 + 8))(v21, v17);
  v62 = *&v77[0];
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v25 = __swift_project_value_buffer(v10, qword_280F914F0);
  swift_beginAccess();
  v26 = v11[2];
  v26(v16, v25, v10);
  v27 = sub_2664DFE18();
  v28 = sub_2664E06E8();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_26629C000, v27, v28, "LocalPlaybackHelper#playLocalMediaItems Setting local queue", v29, 2u);
    MEMORY[0x266784AD0](v29, -1, -1);
  }

  v30 = v11[1];
  v30(v16, v10);
  v31 = v61;
  if (v61)
  {
    v26(v70, v25, v10);
    v32 = v31;
    v33 = sub_2664DFE18();
    v34 = sub_2664E06E8();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_26629C000, v33, v34, "LocalPlaybackHelper#playLocalMediaItems using x scheme", v35, 2u);
      MEMORY[0x266784AD0](v35, -1, -1);
    }

    v30(v70, v10);
    v36 = v32;
    v37 = v65;
    v38 = v64;
    v39 = v63;
  }

  else
  {
    v40 = objc_allocWithZone(MEMORY[0x277D27868]);
    v37 = v65;
    v41 = [v40 initWithContextID:0 query:v65];
    v38 = v64;
    v42 = *v64;
    v36 = v41;
    [v36 setShuffleType_];
    [v36 setShouldOverrideManuallyCuratedQueue_];
    v39 = v63;
    if (*(v63 + 88))
    {
      v43 = *(v63 + 80);
      v44 = sub_2664E02A8();
    }

    else
    {
      v44 = 0;
    }

    [v36 setSiriRecommendationID_];

    swift_beginAccess();
    if (*(v39 + 24))
    {
      v45 = *(v39 + 16);
      v46 = *(v39 + 24);

      v47 = sub_2664E02A8();
    }

    else
    {
      v47 = 0;
    }

    [v36 setSiriAssetInfo_];

    v48 = sub_2664E01A8();
    [v36 setSiriWHAMetricsInfo_];
  }

  v49 = v38[49];
  if (v49 < 3)
  {
    v50 = v49 + 1;
  }

  else
  {
    v50 = 0;
  }

  v51 = v62 == 4;
  v52 = [objc_opt_self() systemMediaApplicationDestination];
  v53 = v38[50];
  v54 = *(v38 + 8);
  v55 = *(v39 + 96);
  v57 = *(v38 + 3);
  v56 = *(v38 + 4);
  v58 = *(v38 + 5);
  *&v71 = v52;
  *(&v71 + 1) = v36;
  LOBYTE(v72) = v51;
  *(&v72 + 1) = 0;
  DWORD2(v72) = v50;
  BYTE12(v72) = v53;
  v74 = v55;
  v73 = v54;
  *&v75 = v57;
  *(&v75 + 1) = v56;
  v76 = v58;
  v78 = v58;
  v77[2] = v54;
  v77[3] = v55;
  v77[4] = v75;
  v77[0] = v71;
  v77[1] = v72;

  sub_266379CF4(v77, v37, v67, v68, v69);

  return sub_26637F5FC(&v71);
}

id sub_266374FE8(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, int a5)
{
  v6 = v5;
  v112 = a5;
  v126 = a4;
  v10 = sub_2664DFE38();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v116 = &v110 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v115 = &v110 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v117 = &v110 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v120 = &v110 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v114 = &v110 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v119 = &v110 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v110 - v26;
  MEMORY[0x28223BE20](v25);
  v29 = &v110 - v28;
  result = [objc_opt_self() ULIDPropertyForGroupingType_];
  if (!result)
  {
    goto LABEL_98;
  }

  v127 = result;
  v118 = sub_2664E02C8();
  v32 = v31;
  if (!a2 || ![a2 _countOfCollections])
  {

    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v51 = __swift_project_value_buffer(v10, qword_280F914F0);
    swift_beginAccess();
    (*(v11 + 16))(v29, v51, v10);
    v52 = sub_2664DFE18();
    v53 = sub_2664E06E8();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = a1;
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&dword_26629C000, v52, v53, "LocalPlaybackHelper#makeCollectionQuery Count of collections in query is 0", v55, 2u);
      v56 = v55;
      a1 = v54;
      MEMORY[0x266784AD0](v56, -1, -1);
    }

    (*(v11 + 8))(v29, v10);
    return sub_266379168(v126, a1);
  }

  v113 = a2;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v33 = __swift_project_value_buffer(v10, qword_280F914F0);
  swift_beginAccess();
  v34 = *(v11 + 16);
  v123 = v33;
  v122 = v11 + 16;
  v121 = v34;
  v34(v27, v33, v10);
  v35 = sub_2664DFE18();
  v36 = sub_2664E06E8();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = v10;
    v38 = a3;
    v39 = a1;
    v40 = v11;
    v41 = v6;
    v42 = swift_slowAlloc();
    *v42 = 0;
    _os_log_impl(&dword_26629C000, v35, v36, "LocalPlaybackHelper#makeCollectionQuery Count of collections in query is > 0", v42, 2u);
    v43 = v42;
    v6 = v41;
    v11 = v40;
    a1 = v39;
    a3 = v38;
    v10 = v37;
    MEMORY[0x266784AD0](v43, -1, -1);
  }

  v124 = *(v11 + 8);
  v125 = v11 + 8;
  v124(v27, v10);
  v44 = [v113 collections];
  v45 = v32;
  if (v44)
  {
    v46 = v44;
    sub_2662C1744(0, &qword_280072D70, 0x277CD5DF0);
    v47 = sub_2664E04A8();

    if (v47 >> 62)
    {
      v48 = sub_2664E0A68();
    }

    else
    {
      v48 = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v49 = v119;
    if (v48)
    {
      if ((v47 & 0xC000000000000001) != 0)
      {
        v50 = MEMORY[0x266783B70](0, v47);
      }

      else
      {
        if (!*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_75:
          result = sub_2664E0A68();
          if (result)
          {
            goto LABEL_62;
          }

          goto LABEL_76;
        }

        v50 = *(v47 + 32);
      }

      v32 = v50;
    }

    else
    {

      v32 = 0;
    }
  }

  else
  {
    v32 = 0;
    v49 = v119;
  }

  v121(v49, v123, v10);

  v57 = sub_2664DFE18();
  v58 = sub_2664E06E8();

  v59 = os_log_type_enabled(v57, v58);
  v111 = v6;
  if (v59)
  {
    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    *&v132 = v61;
    *v60 = 136315138;
    *(v60 + 4) = sub_2662A320C(v118, v45, &v132);
    _os_log_impl(&dword_26629C000, v57, v58, "LocalPlaybackHelper#makeCollectionQuery ulidProperty: %s", v60, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v61);
    MEMORY[0x266784AD0](v61, -1, -1);
    MEMORY[0x266784AD0](v60, -1, -1);
  }

  v124(v49, v10);
  v6 = v113;
  if (v32 && (v62 = [v32 representativeItem]) != 0)
  {
    v63 = v62;
    v64 = [v62 valueForProperty_];

    if (v64)
    {
      sub_2664E09E8();
      swift_unknownObjectRelease();
    }

    else
    {
      v128 = 0u;
      v129 = 0u;
    }

    v130 = v128;
    v131 = v129;
    if (*(&v129 + 1))
    {
      sub_266318804(&v130, &v132);
      v121(v114, v123, v10);
      v70 = sub_2664DFE18();
      v71 = sub_2664E06E8();
      if (os_log_type_enabled(v70, v71))
      {
        v72 = swift_slowAlloc();
        *v72 = 0;
        _os_log_impl(&dword_26629C000, v70, v71, "LocalPlaybackHelper#makeCollectionQuery have mediaItemCollection representativeItem", v72, 2u);
        MEMORY[0x266784AD0](v72, -1, -1);
      }

      v124(v114, v10);
      sub_266318804(&v132, v134);
      goto LABEL_42;
    }
  }

  else
  {
    v130 = 0u;
    v131 = 0u;
  }

  sub_26637F490(&v130);
  v121(v120, v123, v10);
  v65 = sub_2664DFE18();
  v66 = sub_2664E06E8();
  if (os_log_type_enabled(v65, v66))
  {
    v67 = swift_slowAlloc();
    *v67 = 0;
    _os_log_impl(&dword_26629C000, v65, v66, "LocalPlaybackHelper#makeCollectionQuery using mediaItemCollection value", v67, 2u);
    MEMORY[0x266784AD0](v67, -1, -1);
  }

  v124(v120, v10);
  if (v32 && [v32 valueForProperty_])
  {
    sub_2664E09E8();
    swift_unknownObjectRelease();
    v68 = v132;
    v69 = v133;
  }

  else
  {
    v68 = 0uLL;
    v69 = 0uLL;
  }

  v134[0] = v68;
  v134[1] = v69;
LABEL_42:
  sub_26637F58C(v134, &v132);
  if (*(&v133 + 1))
  {
    if (swift_dynamicCast())
    {
      v73 = *(&v128 + 1);
      v74 = v128 & 0xFFFFFFFFFFFFLL;
      goto LABEL_47;
    }
  }

  else
  {
    sub_26637F490(&v132);
  }

  v74 = 0;
  v73 = 0;
  v128 = 0uLL;
LABEL_47:
  if (v73)
  {
    v75 = v74;
  }

  else
  {
    v75 = 0;
  }

  if (v73)
  {
    v76 = v73;
  }

  else
  {
    v76 = 0xE000000000000000;
  }

  v77 = HIBYTE(v76) & 0xF;
  if ((v76 & 0x2000000000000000) == 0)
  {
    v77 = v75;
  }

  v110 = a1;
  if (v77)
  {

    goto LABEL_80;
  }

  v121(v117, v123, v10);
  v78 = sub_2664DFE18();
  v79 = sub_2664E06D8();
  if (os_log_type_enabled(v78, v79))
  {
    v80 = swift_slowAlloc();
    *v80 = 0;
    _os_log_impl(&dword_26629C000, v78, v79, "LocalPlaybackHelper#makeCollectionQuery Unable to unwrap ulidIDOpt value to String", v80, 2u);
    MEMORY[0x266784AD0](v80, -1, -1);
  }

  v124(v117, v10);
  v81 = [v6 items];
  if (!v81)
  {

LABEL_77:
    v132 = 0u;
    v133 = 0u;
    goto LABEL_78;
  }

  v82 = v81;
  sub_2662C1744(0, &qword_280072D58, 0x277CD5DE0);
  v47 = sub_2664E04A8();

  if (v47 >> 62)
  {
    goto LABEL_75;
  }

  result = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
LABEL_76:

    goto LABEL_77;
  }

LABEL_62:
  if ((v47 & 0xC000000000000001) != 0)
  {
    v83 = MEMORY[0x266783B70](0, v47);
LABEL_65:
    v84 = v83;

    v85 = v127;
    v86 = [v84 valueForProperty_];

    if (v86)
    {
      sub_2664E09E8();
      swift_unknownObjectRelease();
    }

    else
    {
      v130 = 0u;
      v131 = 0u;
    }

    v132 = v130;
    v133 = v131;
    if (*(&v131 + 1))
    {
      v87 = swift_dynamicCast();
      v89 = *(&v130 + 1);
      v88 = v130;
      if (!v87)
      {
        v88 = 0;
        v89 = 0;
      }

      goto LABEL_79;
    }

LABEL_78:
    sub_26637F490(&v132);
    v88 = 0;
    v89 = 0;
LABEL_79:
    *&v128 = v88;
    *(&v128 + 1) = v89;

LABEL_80:
    v127 = v32;
    v90 = *(&v128 + 1);
    if (!*(&v128 + 1))
    {
      goto LABEL_86;
    }

    v91 = v128;
    v92 = HIBYTE(*(&v128 + 1)) & 0xFLL;
    if ((*(&v128 + 1) & 0x2000000000000000) == 0)
    {
      v92 = v128 & 0xFFFFFFFFFFFFLL;
    }

    if (v92)
    {
      v93 = v115;
      v121(v115, v123, v10);

      v94 = sub_2664DFE18();
      v95 = sub_2664E06E8();

      if (os_log_type_enabled(v94, v95))
      {
        v96 = swift_slowAlloc();
        v123 = a3;
        v97 = v96;
        v122 = swift_slowAlloc();
        *&v132 = v122;
        *v97 = 136315650;
        *&v130 = v123;
        v98 = sub_2664E0D48();
        v100 = sub_2662A320C(v98, v99, &v132);

        *(v97 + 4) = v100;
        *(v97 + 12) = 2080;

        v101 = v118;
        v102 = sub_2662A320C(v118, v45, &v132);

        *(v97 + 14) = v102;
        *(v97 + 22) = 2080;
        *(v97 + 24) = sub_2662A320C(v91, v90, &v132);
        _os_log_impl(&dword_26629C000, v94, v95, "LocalPlaybackHelper#makeCollectionQuery Using grouping: %s, ulidProperty: %s, and ulidID: %s for .ulid", v97, 0x20u);
        v103 = v122;
        swift_arrayDestroy();
        MEMORY[0x266784AD0](v103, -1, -1);
        v104 = v97;
        a3 = v123;
        MEMORY[0x266784AD0](v104, -1, -1);

        v124(v115, v10);
      }

      else
      {

        v124(v93, v10);
        v101 = v118;
      }

      v6 = sub_266375FE0(v110, v126, v112 & 1, a3, v101, v45, v91, v90, 2u);

      sub_26637F490(v134);
    }

    else
    {
LABEL_86:

      v105 = v116;
      v121(v116, v123, v10);
      v106 = sub_2664DFE18();
      v107 = sub_2664E06D8();
      if (os_log_type_enabled(v106, v107))
      {
        v108 = swift_slowAlloc();
        *v108 = 0;
        _os_log_impl(&dword_26629C000, v106, v107, "LocalPlaybackHelper#makeCollectionQuery Unable to extract Query Items as fallback; returning original query", v108, 2u);
        MEMORY[0x266784AD0](v108, -1, -1);
      }

      v124(v105, v10);
      if (a3 == 6)
      {
        [v6 setGroupingType_];

        sub_26637F490(v134);
      }

      else
      {
        sub_26637F490(v134);
      }

      v109 = v6;
    }

    return v6;
  }

  if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v83 = *(v47 + 32);
    goto LABEL_65;
  }

  __break(1u);
LABEL_98:
  __break(1u);
  return result;
}

id sub_266375FE0(uint64_t a1, unint64_t a2, int a3, uint64_t a4, uint64_t a5, void *a6, void (*a7)(char *, uint64_t), unint64_t a8, unsigned __int8 a9)
{
  v146 = a7;
  v147 = a8;
  v150 = a5;
  v151 = a6;
  v148 = a1;
  v13 = sub_2664DFE38();
  v14 = *(v13 - 8);
  v15 = v14[8];
  v16 = MEMORY[0x28223BE20](v13);
  v144 = &v134 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v19 = MEMORY[0x28223BE20](v18);
  v20 = MEMORY[0x28223BE20](v19);
  MEMORY[0x28223BE20](v20);
  v22 = MEMORY[0x28223BE20](&v134 - v21);
  v23 = MEMORY[0x28223BE20](v22);
  v25 = &v134 - v24;
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v134 - v27;
  v29 = MEMORY[0x28223BE20](v26);
  v31 = &v134 - v30;
  v32 = MEMORY[0x28223BE20](v29);
  v38 = &v134 - v37;
  v152 = v13;
  v145 = a3;
  if ((a3 & 1) == 0 && a4 == 6)
  {
    v147 = a2;
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v39 = __swift_project_value_buffer(v13, qword_280F914F0);
    swift_beginAccess();
    v40 = v14[2];
    v40(v38, v39, v13);
    v41 = sub_2664DFE18();
    v42 = sub_2664E06E8();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_26629C000, v41, v42, "LocalPlaybackHelper#getResultQuery Local search for !onlyPlayableItems and playlist mediaGrouping", v43, 2u);
      v44 = v43;
      v13 = v152;
      MEMORY[0x266784AD0](v44, -1, -1);
    }

    v45 = v14[1];
    v149 = v14 + 1;
    v146 = v45;
    v45(v38, v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280073490, &qword_2664E8E20);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2664E34F0;
    v47 = *(v148 + 64);
    v153[0] = *(v148 + 56);
    v153[1] = v47;

    v48 = sub_2664E0DB8();
    v49 = sub_2664E02A8();
    v50 = [objc_opt_self() predicateWithValue:v48 forProperty:v49];
    swift_unknownObjectRelease();

    *(inited + 32) = v50;
    v51 = sub_26639ED20(inited);
    swift_setDeallocating();
    v52 = *(inited + 16);
    swift_arrayDestroy();
    v53 = [objc_opt_self() deviceMediaLibraryWithUserIdentity_];
    sub_266460394(v51);

    v54 = objc_allocWithZone(MEMORY[0x277CD5E38]);
    v55 = v53;
    v56 = sub_2664E05F8();

    v57 = [v54 initWithFilterPredicates:v56 library:v55];

    if (v57)
    {
      [v57 setGroupingType_];
    }

    v58 = v152;
    v40(v31, v39, v152);
    v59 = v57;
    v60 = sub_2664DFE18();
    v61 = sub_2664E06C8();

    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v153[0] = v63;
      *v62 = 136446210;
      if (v57)
      {
        v64 = [v59 description];
        v65 = sub_2664E02C8();
        v67 = v66;
      }

      else
      {
        v65 = 7104878;
        v67 = 0xE300000000000000;
      }

      v117 = sub_2662A320C(v65, v67, v153);

      *(v62 + 4) = v117;
      _os_log_impl(&dword_26629C000, v60, v61, "LocalPlaybackHelper#getResultQuery returning query: %{public}s", v62, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v63);
      MEMORY[0x266784AD0](v63, -1, -1);
      MEMORY[0x266784AD0](v62, -1, -1);

      v87 = v31;
      v88 = v152;
    }

    else
    {

      v87 = v31;
      v88 = v58;
    }

    v146(v87, v88);
    return v57;
  }

  v140 = v33;
  v142 = v32;
  v138 = v9;
  v137 = v36;
  v68 = a2;
  v135 = v35;
  v134 = v34;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v143 = a9;
  v69 = __swift_project_value_buffer(v13, qword_280F914F0);
  swift_beginAccess();
  v70 = v14[2];
  v70(v28, v69, v13);
  v71 = sub_2664DFE18();
  v72 = sub_2664E06C8();
  v73 = os_log_type_enabled(v71, v72);
  v141 = a4;
  if (v73)
  {
    v74 = v69;
    v75 = v14;
    v76 = swift_slowAlloc();
    *v76 = 0;
    _os_log_impl(&dword_26629C000, v71, v72, "LocalPlaybackHelper#getResultQuery getting localQuery", v76, 2u);
    v77 = v76;
    v14 = v75;
    v69 = v74;
    a4 = v141;
    MEMORY[0x266784AD0](v77, -1, -1);
  }

  v79 = v14[1];
  v78 = v14 + 1;
  v80 = v28;
  v81 = v79;
  v82 = v152;
  v79(v80, v152);
  if (a4 == 7)
  {
    goto LABEL_19;
  }

  if (a4 == 6)
  {
    v70(v140, v69, v82);
    v89 = sub_2664DFE18();
    v90 = sub_2664E06E8();
    if (os_log_type_enabled(v89, v90))
    {
      v91 = swift_slowAlloc();
      v139 = v81;
      v92 = v69;
      v93 = v78;
      v94 = v91;
      *v91 = 0;
      _os_log_impl(&dword_26629C000, v89, v90, "LocalPlaybackHelper#getResultQuery using title for playlist query as want items", v91, 2u);
      v95 = v94;
      v78 = v93;
      v69 = v92;
      a4 = 6;
      v81 = v139;
      MEMORY[0x266784AD0](v95, -1, -1);
    }

    v81(v140, v82);
    v83 = 0;
  }

  else
  {
    v83 = a4;
    if (!a4)
    {
LABEL_19:
      v70(v25, v69, v82);
      v84 = sub_2664DFE18();
      v85 = sub_2664E06E8();
      if (os_log_type_enabled(v84, v85))
      {
        v86 = swift_slowAlloc();
        *v86 = 0;
        _os_log_impl(&dword_26629C000, v84, v85, "LocalPlaybackHelper#getResultQuery Media grouping is title / podcastTitle", v86, 2u);
        MEMORY[0x266784AD0](v86, -1, -1);
      }

      v81(v25, v82);
      return sub_26637E54C(v68, v150, v151, v146, v147, v143, a4, a4, v145 & 1);
    }
  }

  v140 = v83;
  v96 = sub_26637E54C(v68, v150, v151, v146, v147, v143, a4, v83, v145 & 1);
  v97 = v96;
  v149 = v78;
  v136 = v70;
  v139 = v81;
  if (v96 && (v98 = [v96 collections]) != 0 && ((v99 = v98, sub_2662C1744(0, &qword_280072D70, 0x277CD5DF0), v100 = sub_2664E04A8(), v99, v100 >> 62) ? (v101 = sub_2664E0A68()) : (v101 = *((v100 & 0xFFFFFFFFFFFFFF8) + 0x10)), , v101))
  {
    v57 = v97;
  }

  else
  {
    v70(v142, v69, v82);
    v102 = sub_2664DFE18();
    v103 = sub_2664E06E8();
    if (os_log_type_enabled(v102, v103))
    {
      v104 = swift_slowAlloc();
      *v104 = 0;
      _os_log_impl(&dword_26629C000, v102, v103, "LocalPlaybackHelper#getResultQuery Query.collections is empty, trying to read each item out individually", v104, 2u);
      MEMORY[0x266784AD0](v104, -1, -1);
    }

    v81(v142, v82);
    v105 = sub_266379168(v68, v148);
    if (v105)
    {
      v57 = v105;
    }

    else
    {
      v119 = v145 ^ 1;
      v136(v137, v69, v82);
      v120 = sub_2664DFE18();
      v121 = sub_2664E06D8();
      if (os_log_type_enabled(v120, v121))
      {
        v122 = swift_slowAlloc();
        *v122 = 0;
        _os_log_impl(&dword_26629C000, v120, v121, "LocalPlaybackHelper#getResultQuery createLocalCollection returned nil, trying with onlyPlayableItems: false", v122, 2u);
        MEMORY[0x266784AD0](v122, -1, -1);
      }

      v139(v137, v82);
      v123 = v141;
      v57 = sub_26637E54C(v68, v150, v151, v146, v147, v143, v141, v140, v119 & 1);

      if (v123 == 2 && !v57)
      {
        v124 = v69;
        v125 = v152;
        v136(v135, v69, v152);
        v126 = sub_2664DFE18();
        v127 = sub_2664E06E8();
        if (os_log_type_enabled(v126, v127))
        {
          v128 = swift_slowAlloc();
          *v128 = 134218240;
          *(v128 + 4) = 2;
          *(v128 + 12) = 2048;
          *(v128 + 14) = 3;
          _os_log_impl(&dword_26629C000, v126, v127, "LocalPlaybackHelper#getResultQuery mediaGrouping: %ld, trying fallback: %ld for failed query", v128, 0x16u);
          MEMORY[0x266784AD0](v128, -1, -1);
        }

        v139(v135, v125);
        v57 = sub_26637E54C(v68, v150, v151, v146, v147, v143, 3, v140, v145 & 1);
        v69 = v124;
        if (!v57)
        {
          v129 = v152;
          v136(v134, v124, v152);
          v130 = sub_2664DFE18();
          v131 = sub_2664E06E8();
          if (os_log_type_enabled(v130, v131))
          {
            v132 = swift_slowAlloc();
            *v132 = 0;
            _os_log_impl(&dword_26629C000, v130, v131, "LocalPlaybackHelper#getResultQuery failed again, trying non playable items", v132, 2u);
            MEMORY[0x266784AD0](v132, -1, -1);
          }

          v139(v134, v129);
          v57 = sub_26637E54C(v68, v150, v151, v146, v147, v143, 3, v140, v119 & 1);
          v69 = v124;
        }
      }
    }
  }

  v106 = v144;
  v107 = v152;
  v136(v144, v69, v152);
  v108 = sub_2664DFE18();
  v109 = sub_2664E06E8();
  if (os_log_type_enabled(v108, v109))
  {
    v110 = v139;
    v111 = swift_slowAlloc();
    v112 = swift_slowAlloc();
    v153[0] = v112;
    *v111 = 136446210;
    if (v57)
    {
      v113 = [v57 description];
      v114 = sub_2664E02C8();
      v116 = v115;
    }

    else
    {
      v114 = 7104878;
      v116 = 0xE300000000000000;
    }

    v133 = sub_2662A320C(v114, v116, v153);

    *(v111 + 4) = v133;
    _os_log_impl(&dword_26629C000, v108, v109, "LocalPlaybackHelper#getResultQuery returning query: %{public}s", v111, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v112);
    MEMORY[0x266784AD0](v112, -1, -1);
    MEMORY[0x266784AD0](v111, -1, -1);

    v110(v106, v152);
  }

  else
  {

    v139(v106, v107);
  }

  return v57;
}