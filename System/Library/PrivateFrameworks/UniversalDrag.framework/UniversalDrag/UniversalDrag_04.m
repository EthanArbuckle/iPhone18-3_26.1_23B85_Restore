uint64_t sub_2706D3100(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_2706E592C();
  v26 = *(v8 - 8);
  v9 = *(v26 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2706E594C();
  v24 = *(v12 - 8);
  v25 = v12;
  v13 = *(v24 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a2 + 24);

  v18 = sub_2706CB21C(v17, a2);

  sub_270690D44(0, &qword_28081CEF0, 0x277D85C78);
  v19 = sub_2706E5C4C();
  v20 = swift_allocObject();
  v20[2] = a3;
  v20[3] = a4;
  v20[4] = a1;
  v20[5] = v18;
  aBlock[4] = sub_2706DA544;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2706DA6A0;
  aBlock[3] = &block_descriptor_132;
  v21 = _Block_copy(aBlock);

  v22 = a1;

  sub_2706E593C();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_2706DA580(&qword_28081CEF8, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081CF00, &qword_2706EA080);
  sub_270690C38(&qword_28081CF08, &qword_28081CF00, &qword_2706EA080);
  sub_2706E5D7C();
  MEMORY[0x2743A60D0](0, v15, v11, v21);
  _Block_release(v21);

  (*(v26 + 8))(v11, v8);
  return (*(v24 + 8))(v15, v25);
}

void sub_2706D3484()
{
  OUTLINED_FUNCTION_21_0();
  v1 = v0;
  v3 = v2;
  v4 = sub_2706E592C();
  v5 = OUTLINED_FUNCTION_4(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3_0();
  v23 = OUTLINED_FUNCTION_24_4();
  v8 = OUTLINED_FUNCTION_4(v23);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_29_3();
  v11 = *(v1 + OBJC_IVAR____TtC13UniversalDrag21ArchiveTransferSource_queue);
  OUTLINED_FUNCTION_11_3();
  v12 = swift_allocObject();
  *(v12 + 16) = v1;
  *(v12 + 24) = v3;
  v24[4] = sub_2706DA3B8;
  v24[5] = v12;
  OUTLINED_FUNCTION_5_10();
  OUTLINED_FUNCTION_4_10(COERCE_DOUBLE(1107296256));
  v24[2] = v13;
  v24[3] = &block_descriptor_105;
  v14 = _Block_copy(v24);
  v15 = v11;

  sub_2706E593C();
  OUTLINED_FUNCTION_6_11();
  sub_2706DA580(v16, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081CF00, &qword_2706EA080);
  sub_270690C38(&qword_28081CF08, &qword_28081CF00, &qword_2706EA080);
  OUTLINED_FUNCTION_8_11();
  sub_2706E5D7C();
  v18 = OUTLINED_FUNCTION_18_7();
  MEMORY[0x2743A60D0](v18);
  _Block_release(v14);

  v19 = OUTLINED_FUNCTION_14_9();
  v20(v19);
  v21 = OUTLINED_FUNCTION_19_10();
  v22(v21);

  OUTLINED_FUNCTION_16_0();
}

uint64_t sub_2706D36AC(void *a1)
{
  v2 = sub_2706E592C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v47 = &v39[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_2706E594C();
  v46 = *(v6 - 8);
  v7 = *(v46 + 64);
  MEMORY[0x28223BE20](v6);
  v45 = &v39[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_2706E565C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v39[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = a1[3];
  v15 = *(v14 + 16);

  os_unfair_lock_lock(v15);
  sub_2706D4168(a1, aBlock);
  os_unfair_lock_unlock(*(v14 + 16));

  if (aBlock[0])
  {
    v43 = v6;
    sub_2706D4A58();
    v16 = a1[3];

    v42 = sub_2706CB21C(v17, a1);

    v44 = v3;
    if (qword_28081C748 != -1)
    {
      swift_once();
    }

    v18 = sub_2706E58DC();
    __swift_project_value_buffer(v18, qword_28081DC28);

    v19 = sub_2706E58BC();
    v20 = sub_2706E5BEC();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      aBlock[0] = v41;
      *v21 = 136446467;
      LODWORD(v40) = v20;
      sub_2706E572C();
      v22 = sub_2706B8734(8);
      v23 = MEMORY[0x2743A5EC0](v22);
      v25 = v24;

      v26 = sub_2706C83E8(v23, v25, aBlock);

      *(v21 + 4) = v26;
      *(v21 + 12) = 2081;
      (*(v10 + 16))(v13, a1 + OBJC_IVAR____TtC13UniversalDrag21ArchiveTransferSource_url, v9);
      sub_2706DA580(&qword_28081D288, MEMORY[0x277CC9260]);
      v27 = sub_2706E611C();
      v29 = v28;
      (*(v10 + 8))(v13, v9);
      v30 = sub_2706C83E8(v27, v29, aBlock);

      *(v21 + 14) = v30;
      _os_log_impl(&dword_270680000, v19, v40, "%{public}s completed: %{private}s", v21, 0x16u);
      v31 = v41;
      swift_arrayDestroy();
      MEMORY[0x2743A75B0](v31, -1, -1);
      MEMORY[0x2743A75B0](v21, -1, -1);
    }

    v32 = v43;
    v33 = v45;
    sub_270690D44(0, &qword_28081CEF0, 0x277D85C78);
    v45 = sub_2706E5C4C();
    aBlock[4] = sub_2706DA44C;
    aBlock[5] = v42;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2706DA6A0;
    aBlock[3] = &block_descriptor_114;
    v34 = _Block_copy(aBlock);

    sub_2706E593C();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_2706DA580(&qword_28081CEF8, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081CF00, &qword_2706EA080);
    sub_270690C38(&qword_28081CF08, &qword_28081CF00, &qword_2706EA080);
    v35 = v47;
    sub_2706E5D7C();
    v36 = v45;
    MEMORY[0x2743A60D0](0, v33, v35, v34);
    _Block_release(v34);

    (*(v44 + 8))(v35, v2);
    (*(v46 + 8))(v33, v32);
  }

  v37 = a1[5];
  a1[4] = nullsub_1;
  a1[5] = 0;
}

void sub_2706D4168(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = *(a1 + 16);
  swift_beginAccess();

  MEMORY[0x2743A5F60](v5);
  sub_2706E2658(*((*(v4 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10));
  sub_2706E5B4C();
  swift_endAccess();

  if (*(a1 + OBJC_IVAR____TtC13UniversalDrag21ArchiveTransferSource_state))
  {
    v6 = 0;
  }

  else
  {
    sub_2706D21F8(2);
    v6 = 1;
  }

  *a2 = v6;
}

void sub_2706D4274(void *a1, uint64_t a2)
{
  v3 = v2;
  v9 = 0;
  v6 = *(v3 + 24);
  v7 = *(v6 + 16);

  v8 = a1;

  os_unfair_lock_lock(v7);
  sub_2706D433C(v3, a2, a1, &v9);
  os_unfair_lock_unlock(*(v6 + 16));

  if (v9 == 1)
  {
    sub_2706DD768();
  }
}

void sub_2706D433C(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v4 = *(a1 + OBJC_IVAR____TtC13UniversalDrag21ArchiveTransferSource_state);
  if ((v4 - 1) < 2)
  {
    v7 = *(a1 + 16);
    swift_beginAccess();

    MEMORY[0x2743A5F60](v8);
    sub_2706E2658(*((*(v7 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10));
    sub_2706E5B4C();
    swift_endAccess();

    v9 = a3;
    sub_2706D21F8(a3);
  }

  else
  {
    if (v4)
    {
      v5 = v4 == 3;
    }

    else
    {
      v5 = 1;
    }

    if (v5)
    {
      *a4 = 1;
    }

    else
    {
      v10 = *(a1 + 16);
      swift_beginAccess();

      sub_2706DA380(v4);

      MEMORY[0x2743A5F60](v11);
      sub_2706E2658(*((*(v10 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10));
      sub_2706E5B4C();
      swift_endAccess();

      v12 = v4;
      sub_2706D21F8(v4);
      sub_2706DA390(v4);
    }
  }
}

uint64_t sub_2706D44C8()
{
  v1 = *(v0 + 24);
  v2 = *(v1 + 16);

  os_unfair_lock_lock(v2);
  v3 = *(v0 + OBJC_IVAR____TtC13UniversalDrag21ArchiveTransferSource_state);
  if (v3 >= 3)
  {
    if (v3 == 3)
    {
      result = sub_2706E5F8C();
      __break(1u);
    }

    else
    {
      v5 = *(v0 + OBJC_IVAR____TtC13UniversalDrag21ArchiveTransferSource_state);
      swift_willThrow();
      v6 = *(v1 + 16);
      v7 = v3;
      os_unfair_lock_unlock(v6);
    }
  }

  else
  {
    os_unfair_lock_unlock(*(v1 + 16));
  }

  return result;
}

uint64_t sub_2706D45CC()
{
  v2 = v1;
  v3 = v0;
  v63 = sub_2706E565C();
  v4 = OUTLINED_FUNCTION_4(v63);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_5_1();
  v11 = v9 - v10;
  MEMORY[0x28223BE20](v12);
  v62 = &v58 - v13;
  if (qword_28081C748 != -1)
  {
    OUTLINED_FUNCTION_2_8();
  }

  v14 = sub_2706E58DC();
  __swift_project_value_buffer(v14, qword_28081DC28);
  OUTLINED_FUNCTION_21_7();

  v15 = sub_2706E58BC();
  v16 = sub_2706E5BEC();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = OUTLINED_FUNCTION_27_1();
    v60 = v11;
    v18 = v17;
    v59 = OUTLINED_FUNCTION_26_1();
    v64 = v59;
    *v18 = 136446467;
    LODWORD(v58) = v16;
    sub_2706E572C();
    v19 = OUTLINED_FUNCTION_1_1();
    v20 = MEMORY[0x2743A5EC0](v19);
    v61 = v1;
    v21 = v20;
    v23 = v22;

    v24 = sub_2706C83E8(v21, v23, &v64);

    *(v18 + 4) = v24;
    *(v18 + 12) = 2081;
    v25 = v62;
    v26 = v63;
    (*(v6 + 16))(v62, v3 + OBJC_IVAR____TtC13UniversalDrag21ArchiveTransferSource_url, v63);
    OUTLINED_FUNCTION_1_12();
    sub_2706DA580(v27, v28);
    sub_2706E611C();
    v29 = v26;
    (*(v6 + 8))(v25, v26);
    v30 = OUTLINED_FUNCTION_35_3();
    v33 = sub_2706C83E8(v30, v31, v32);
    v2 = v61;

    *(v18 + 14) = v33;
    _os_log_impl(&dword_270680000, v15, v58, "%{public}s sizing started: %{private}s", v18, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_12_0();
    v11 = v60;
    OUTLINED_FUNCTION_12_0();
  }

  else
  {

    v29 = v63;
  }

  type metadata accessor for ArchiveReader();
  v34 = v6;
  v35 = OBJC_IVAR____TtC13UniversalDrag21ArchiveTransferSource_url;
  v36 = v34 + 16;
  v37 = *(v34 + 16);
  v37(v11, v3 + OBJC_IVAR____TtC13UniversalDrag21ArchiveTransferSource_url, v29);
  v38 = sub_2706D0AAC();
  v39 = v29;
  if (v2)
  {
    v41 = *(v34 + 8);
    v40 = v34 + 8;
    v41(v11, v29);
  }

  else
  {
    v42 = v38;
    v43 = *(v34 + 8);
    v61 = v34 + 8;
    v58 = v43;
    v59 = v37;
    v43(v11, v39);
    v40 = 0;
    v60 = v35;
    while (sub_2706D0F34())
    {
      v44 = v36;
      v45 = v3 + v35;
      v46 = v42;
      v47 = v62;
      v48 = v40;
      v49 = v3;
      v50 = v63;
      v59(v62, v45, v63);
      v51 = sub_2706D03AC();

      v52 = v47;
      v42 = v46;
      v35 = v60;
      v53 = v50;
      v3 = v49;
      v40 = v48;
      v58(v52, v53);
      if (!v51)
      {
        break;
      }

      sub_2706D44C8();
      v54 = sub_2706D01FC();

      v55 = __CFADD__(v48, v54);
      v40 = v48 + v54;
      v36 = v44;
      if (v55)
      {
        __break(1u);
        break;
      }
    }

    sub_2706D18D4(v56, v42, MEMORY[0x277D824D0]);
  }

  return v40;
}

uint64_t sub_2706D4A58()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D450, &qword_2706EAA20);
  OUTLINED_FUNCTION_16_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v5);
  v106 = &v88 - v6;
  v7 = sub_2706E565C();
  v8 = OUTLINED_FUNCTION_4(v7);
  v105 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_5_1();
  v14 = (v12 - v13);
  v16 = MEMORY[0x28223BE20](v15);
  v103 = &v88 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v88 - v19;
  MEMORY[0x28223BE20](v18);
  v104 = &v88 - v21;
  if (qword_28081C748 != -1)
  {
    OUTLINED_FUNCTION_2_8();
  }

  v22 = sub_2706E58DC();
  v23 = __swift_project_value_buffer(v22, qword_28081DC28);

  v98 = v23;
  v24 = sub_2706E58BC();
  v25 = sub_2706E5BEC();

  v26 = os_log_type_enabled(v24, v25);
  v99 = v14;
  if (v26)
  {
    v27 = OUTLINED_FUNCTION_27_1();
    v102 = v0;
    v28 = v27;
    v101 = OUTLINED_FUNCTION_26_1();
    v108 = v101;
    *v28 = 136446467;
    v29 = v107;
    sub_2706E572C();
    v30 = OUTLINED_FUNCTION_1_1();
    v32 = v31;
    v33 = MEMORY[0x2743A5EC0](v30);
    LODWORD(v100) = v25;
    v34 = v33;
    v36 = v35;

    sub_2706C83E8(v34, v36, &v108);
    OUTLINED_FUNCTION_28_3();

    *(v28 + 4) = v32;
    *(v28 + 12) = 2081;
    v37 = v104;
    v38 = v105;
    (v105[2])(v104, v29 + OBJC_IVAR____TtC13UniversalDrag21ArchiveTransferSource_url, v7);
    OUTLINED_FUNCTION_1_12();
    sub_2706DA580(v39, v40);
    v41 = sub_2706E611C();
    v43 = v42;
    (v38[1])(v37, v7);
    sub_2706C83E8(v41, v43, &v108);
    OUTLINED_FUNCTION_28_3();

    *(v28 + 14) = v41;
    _os_log_impl(&dword_270680000, v24, v100, "%{public}s writing started: %{private}s", v28, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_12_0();
    v1 = v102;
    OUTLINED_FUNCTION_12_0();
  }

  else
  {

    v38 = v105;
  }

  type metadata accessor for ArchiveReader();
  v44 = OBJC_IVAR____TtC13UniversalDrag21ArchiveTransferSource_url;
  v45 = v38[2];
  v45(v20, v107 + OBJC_IVAR____TtC13UniversalDrag21ArchiveTransferSource_url, v7);
  v105 = sub_2706D0AAC();
  if (v1)
  {
    return (v38[1])(v20, v7);
  }

  v101 = v45;
  v102 = v38 + 2;
  v97 = v44;
  v48 = v38 + 1;
  v47 = v38[1];
  v47(v20, v7);
  type metadata accessor for ArchiveWriter();
  v49 = sub_2706D1230(2);
  v50 = dispatch_semaphore_create(0);
  OUTLINED_FUNCTION_11_3();
  v51 = swift_allocObject();
  *(v51 + 16) = v107;
  *(v51 + 24) = v50;
  v52 = v49;
  v53 = v49[4];
  v52[3] = sub_2706DA2A0;
  v52[4] = v51;
  v96 = v52;

  v89 = v50;

  v91 = OBJC_IVAR____TtC13UniversalDrag21ArchiveTransferSource_id;
  v95 = (v38 + 4);
  *&v54 = 136446467;
  v90 = v54;
  v55 = v99;
  v56 = v47;
  v100 = v47;
  while (sub_2706D0F34())
  {
    v57 = v48;
    v58 = v104;
    v101(v104, v107 + v97, v7);
    v59 = sub_2706D03AC();

    v56(v58, v7);
    if (!v59)
    {
      break;
    }

    v60 = v106;
    sub_2706D021C(v106);
    if (__swift_getEnumTagSinglePayload(v60, 1, v7) == 1)
    {

      sub_2706ADE58(v106);
      v56 = v100;
    }

    else
    {
      v61 = v103;
      (*v95)(v103, v106, v7);
      sub_2706D44C8();
      v62 = v100;
      v101(v55, v61, v7);

      v63 = sub_2706E58BC();
      v64 = sub_2706E5BDC();

      if (os_log_type_enabled(v63, v64))
      {
        v65 = OUTLINED_FUNCTION_27_1();
        v66 = OUTLINED_FUNCTION_26_1();
        v93 = v63;
        v94 = v66;
        v108 = v66;
        *v65 = v90;
        sub_2706E572C();
        v67 = OUTLINED_FUNCTION_1_1();
        v68 = MEMORY[0x2743A5EC0](v67);
        v70 = v69;

        v71 = sub_2706C83E8(v68, v70, &v108);
        v72 = v103;

        *(v65 + 4) = v71;
        *(v65 + 12) = 2081;
        v92 = v64;
        v73 = v65;
        OUTLINED_FUNCTION_1_12();
        sub_2706DA580(&qword_28081D288, v74);
        v75 = v99;
        v76 = sub_2706E611C();
        v78 = v77;
        v79 = v75;
        v48 = v57;
        v100(v79, v7);
        sub_2706C83E8(v76, v78, &v108);
        OUTLINED_FUNCTION_28_3();

        *(v73 + 14) = v76;
        v80 = v93;
        _os_log_impl(&dword_270680000, v93, v92, "%{public}s archiving: %{private}s", v73, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_12_0();
        OUTLINED_FUNCTION_12_0();
      }

      else
      {

        v82 = OUTLINED_FUNCTION_22_6();
        v81 = v62(v82);
        v72 = v103;
      }

      MEMORY[0x28223BE20](v81);
      v83 = v105;
      *(&v88 - 6) = v59;
      *(&v88 - 5) = v83;
      *(&v88 - 4) = v107;
      *(&v88 - 3) = v72;
      *(&v88 - 2) = v96;
      sub_2706D1A8C(v59, sub_2706DA2BC);

      v84 = OUTLINED_FUNCTION_22_6();
      v56 = v100;
      (v100)(v84);
      v55 = v99;
    }
  }

  OUTLINED_FUNCTION_10_8();
  sub_2706D18D4(v85, v86, v87);
}

uint64_t sub_2706D52F0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v32 = a4;
  v5 = v4;
  if (a1)
  {
    v7 = a2 - a1;
  }

  else
  {
    v7 = 0;
  }

  v8 = sub_2706D571C(a1, v7);
  v10 = v9;
  if (qword_28081C748 != -1)
  {
    swift_once();
  }

  v11 = sub_2706E58DC();
  __swift_project_value_buffer(v11, qword_28081DC28);
  sub_270692D3C(v8, v10);
  sub_270692D3C(v8, v10);

  v12 = sub_2706E58BC();
  v13 = sub_2706E5BEC();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v31 = v30;
    *v14 = 136446466;
    sub_2706E572C();
    v15 = sub_2706B8734(8);
    v16 = MEMORY[0x2743A5EC0](v15);
    v18 = v17;

    v19 = sub_2706C83E8(v16, v18, &v31);

    *(v14 + 4) = v19;
    *(v14 + 12) = 2048;
    switch(v10 >> 62)
    {
      case 1uLL:
        sub_270688E88(v8, v10);
        LODWORD(v20) = HIDWORD(v8) - v8;
        if (__OFSUB__(HIDWORD(v8), v8))
        {
          __break(1u);
          JUMPOUT(0x2706D570CLL);
        }

        v20 = v20;
        break;
      case 2uLL:
        v22 = *(v8 + 16);
        v21 = *(v8 + 24);
        sub_270688E88(v8, v10);
        v20 = v21 - v22;
        if (__OFSUB__(v21, v22))
        {
          __break(1u);
          goto LABEL_13;
        }

        break;
      case 3uLL:
LABEL_13:
        sub_270688E88(v8, v10);
        v20 = 0;
        break;
      default:
        sub_270688E88(v8, v10);
        v20 = BYTE6(v10);
        break;
    }

    *(v14 + 14) = v20;
    sub_270688E88(v8, v10);
    _os_log_impl(&dword_270680000, v12, v13, "%{public}s writing bytes: %ld", v14, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v30);
    MEMORY[0x2743A75B0](v30, -1, -1);
    MEMORY[0x2743A75B0](v14, -1, -1);

    v5 = v4;
  }

  else
  {
    sub_270688E88(v8, v10);
    sub_270688E88(v8, v10);
  }

  v23 = a3;
  sub_2706D44C8();
  if (!v5)
  {
    v24 = swift_allocObject();
    *(v24 + 16) = MEMORY[0x2743A5B30](v8, v10);
    v26 = *(a3 + 32);
    v25 = *(a3 + 40);
    v27 = swift_allocObject();
    v27[2] = a3;
    v27[3] = v24;
    v28 = v32;
    v27[4] = v32;

    v28;
    v26(v8, v10, sub_2706DA33C, v27);

    sub_2706E5CDC();
    swift_beginAccess();
    v23 = *(v24 + 16);
    if (v23 != -1)
    {
      sub_270688E88(v8, v10);

      return v23;
    }

    v23 = sub_270690D44(0, &qword_28081D250, 0x277CCA9B8);
    sub_2706E4830(5, 0xD00000000000001ALL, 0x80000002706F1780, "/Library/Caches/com.apple.xbs/Sources/UniversalDrag/UniversalDrag/Utility/Archive.swift", 87, 2, 589);
    swift_willThrow();
  }

  sub_270688E88(v8, v10);
  return v23;
}

uint64_t sub_2706D571C(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (a1 && a2)
  {
    if (a2 <= 14)
    {
      return sub_2706E566C();
    }

    else
    {
      v5 = sub_2706E555C();
      v6 = *(v5 + 48);
      v7 = *(v5 + 52);
      swift_allocObject();
      sub_2706E551C();
      if (a2 >= 0x7FFFFFFF)
      {
        sub_2706E568C();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = a2;
      }

      else
      {
        return a2 << 32;
      }
    }
  }

  return result;
}

uint64_t sub_2706D57CC(void *a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v5 = a1;
    if (qword_28081C748 != -1)
    {
      swift_once();
    }

    v6 = sub_2706E58DC();
    __swift_project_value_buffer(v6, qword_28081DC28);
    v7 = a1;

    v8 = sub_2706E58BC();
    v9 = sub_2706E5BFC();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v22[0] = v11;
      *v10 = 136446466;
      sub_2706E572C();
      v12 = sub_2706B8734(8);
      v13 = MEMORY[0x2743A5EC0](v12);
      v15 = v14;

      v16 = sub_2706C83E8(v13, v15, v22);

      *(v10 + 4) = v16;
      *(v10 + 12) = 2082;
      v17 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D4A8, &qword_2706EAD40);
      v18 = sub_2706E5A4C();
      v20 = sub_2706C83E8(v18, v19, v22);

      *(v10 + 14) = v20;
      _os_log_impl(&dword_270680000, v8, v9, "%{public}s error while writing: %{public}s", v10, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2743A75B0](v11, -1, -1);
      MEMORY[0x2743A75B0](v10, -1, -1);
    }

    else
    {
    }

    swift_beginAccess();
    *(a3 + 16) = -1;
  }

  return sub_2706E5CEC();
}

void sub_2706D5A2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_2706E565C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);

  v16 = sub_2706CFF10(v15);
  if (v16 != 4)
  {
    if (v16 == 2)
    {

      sub_2706D18D4(v17, a2, MEMORY[0x277D824D8]);
    }

    return;
  }

  v52 = a3;
  v18 = *(a3 + OBJC_IVAR____TtC13UniversalDrag21ArchiveTransferSource_size) * 0.00000381469727;
  if (*(a3 + OBJC_IVAR____TtC13UniversalDrag21ArchiveTransferSource_size + 8))
  {
    v18 = 0.0;
  }

  v19 = ceil(v18);
  if (v19 == INFINITY)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (v19 <= -9.22337204e18)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (v19 >= 9.22337204e18)
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    JUMPOUT(0x2706D5F8CLL);
  }

  sub_270690D44(0, &qword_28081D258, 0x277CCA9F8);
  (*(v11 + 16))(v14, a4, v10);
  v20 = sub_2706D5F9C(v14, &selRef_fileHandleForReadingFromURL_error_);
  if (!v5)
  {
    v22 = v20;
    v23 = 0;
    v50 = OBJC_IVAR____TtC13UniversalDrag21ArchiveTransferSource_id;
    v51 = v19;
    *&v21 = 136446978;
    v49 = v21;
    v55 = a5;
    v48 = v20;
    while (1)
    {
      v24 = MEMORY[0x2743A6D20]();
      v25 = sub_2706E5BCC();
      v27 = v26;
      objc_autoreleasePoolPop(v24);
      if (v27 >> 60 == 15)
      {
        break;
      }

      v56 = v23;
      v28 = __OFADD__(v23, 1);
      v29 = v23 + 1;
      if (v28)
      {
        __break(1u);
        goto LABEL_30;
      }

      if (qword_28081C748 != -1)
      {
        swift_once();
      }

      v30 = sub_2706E58DC();
      __swift_project_value_buffer(v30, qword_28081DC28);
      sub_2706A6E0C(v25, v27);
      sub_2706A6E0C(v25, v27);

      v31 = sub_2706E58BC();
      v32 = sub_2706E5BEC();

      if (os_log_type_enabled(v31, v32))
      {
        v54 = v32;
        v33 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        v57 = v53;
        *v33 = v49;
        sub_2706E572C();
        v34 = sub_2706B8734(8);
        v35 = MEMORY[0x2743A5EC0](v34);
        v37 = v36;

        v38 = sub_2706C83E8(v35, v37, &v57);

        *(v33 + 4) = v38;
        *(v33 + 12) = 2048;
        *(v33 + 14) = v29;
        *(v33 + 22) = 2048;
        *(v33 + 24) = v51;
        *(v33 + 32) = 2048;
        v39 = v56;
        switch(v27 >> 62)
        {
          case 1uLL:
            sub_2706A3BA4(v25, v27);
            LODWORD(v40) = HIDWORD(v25) - v25;
            if (__OFSUB__(HIDWORD(v25), v25))
            {
              goto LABEL_34;
            }

            v40 = v40;
LABEL_25:
            v43 = v54;
            *(v33 + 34) = v40;
            sub_2706A3BA4(v25, v27);
            _os_log_impl(&dword_270680000, v31, v43, "%{public}s reading (%ld/%ld) bytes: %ld", v33, 0x2Au);
            v44 = v53;
            __swift_destroy_boxed_opaque_existential_1(v53);
            MEMORY[0x2743A75B0](v44, -1, -1);
            MEMORY[0x2743A75B0](v33, -1, -1);

            v22 = v48;
            break;
          case 2uLL:
            v42 = *(v25 + 16);
            v41 = *(v25 + 24);
            sub_2706A3BA4(v25, v27);
            v40 = v41 - v42;
            if (!__OFSUB__(v41, v42))
            {
              goto LABEL_25;
            }

            goto LABEL_33;
          case 3uLL:
            sub_2706A3BA4(v25, v27);
            v40 = 0;
            goto LABEL_25;
          default:
            sub_2706A3BA4(v25, v27);
            v40 = BYTE6(v27);
            goto LABEL_25;
        }
      }

      else
      {
        sub_2706A3BA4(v25, v27);
        sub_2706A3BA4(v25, v27);

        v39 = v56;
      }

      v45 = sub_2706D44C8();
      v46 = MEMORY[0x2743A6D20](v45);
      sub_2706D1B14(v25, v27);
      objc_autoreleasePoolPop(v46);
      sub_2706A3BA4(v25, v27);
      v23 = v39 + 1;
    }
  }
}

id sub_2706D5F9C(uint64_t a1, SEL *a2)
{
  v17[1] = *MEMORY[0x277D85DE8];
  v4 = sub_2706E55DC();
  v17[0] = 0;
  v5 = [swift_getObjCClassFromMetadata() *a2];

  v6 = v17[0];
  if (v5)
  {
    v7 = sub_2706E565C();
    OUTLINED_FUNCTION_6_0(v7);
    v9 = *(v8 + 8);
    v10 = v6;
    v11 = OUTLINED_FUNCTION_35_3();
    v9(v11);
  }

  else
  {
    v12 = v17[0];
    sub_2706E558C();

    swift_willThrow();
    v13 = sub_2706E565C();
    OUTLINED_FUNCTION_6_0(v13);
    (*(v14 + 8))(a1);
  }

  v15 = *MEMORY[0x277D85DE8];
  return v5;
}

char *sub_2706D60E0()
{
  v1 = *(v0 + 2);

  v2 = *(v0 + 3);

  v3 = *(v0 + 5);

  v4 = OBJC_IVAR____TtC13UniversalDrag21ArchiveTransferSource_id;
  v5 = sub_2706E576C();
  OUTLINED_FUNCTION_6_0(v5);
  (*(v6 + 8))(&v0[v4]);

  sub_2706DA390(*&v0[OBJC_IVAR____TtC13UniversalDrag21ArchiveTransferSource_state]);
  v7 = OBJC_IVAR____TtC13UniversalDrag21ArchiveTransferSource_url;
  v8 = sub_2706E565C();
  OUTLINED_FUNCTION_6_0(v8);
  (*(v9 + 8))(&v0[v7]);
  return v0;
}

uint64_t sub_2706D61E8()
{
  result = sub_2706E576C();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_2706E565C();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_2706D62F0()
{
  v1 = sub_2706E576C();
  v2 = OUTLINED_FUNCTION_4(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3_0();
  v9 = v8 - v7;
  (*(v4 + 16))(v8 - v7, v0 + OBJC_IVAR____TtC13UniversalDrag26ArchiveTransferDestination_id, v1);
  sub_2706E572C();
  (*(v4 + 8))(v9, v1);
  v10 = sub_2706B8734(8);
  v11 = MEMORY[0x2743A5EC0](v10);

  return v11;
}

void sub_2706D6404(char a1)
{
  if (qword_28081C748 != -1)
  {
    swift_once();
  }

  v3 = sub_2706E58DC();
  __swift_project_value_buffer(v3, qword_28081DC28);

  oslog = sub_2706E58BC();
  v4 = sub_2706E5BEC();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v20 = v6;
    *v5 = 136446722;
    v7 = sub_2706D62F0();
    v9 = sub_2706C83E8(v7, v8, &v20);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2082;
    v19 = &type metadata for ArchiveTransferDestination.State;
    LOBYTE(v18[0]) = a1;
    v10 = sub_2706CB238(v18);
    v12 = sub_2706C83E8(v10, v11, &v20);

    *(v5 + 14) = v12;
    *(v5 + 22) = 2082;
    v13 = *(v1 + OBJC_IVAR____TtC13UniversalDrag26ArchiveTransferDestination_state);
    v19 = &type metadata for ArchiveTransferDestination.State;
    LOBYTE(v18[0]) = v13;
    v14 = sub_2706CB238(v18);
    v16 = sub_2706C83E8(v14, v15, &v20);

    *(v5 + 24) = v16;
    _os_log_impl(&dword_270680000, oslog, v4, "%{public}s: %{public}s → %{public}s", v5, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x2743A75B0](v6, -1, -1);
    MEMORY[0x2743A75B0](v5, -1, -1);
  }
}

void sub_2706D65FC(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC13UniversalDrag26ArchiveTransferDestination_state);
  *(v1 + OBJC_IVAR____TtC13UniversalDrag26ArchiveTransferDestination_state) = a1;
  sub_2706D6404(v2);
}

void sub_2706D6614()
{
  OUTLINED_FUNCTION_21_0();
  v1 = v0;
  v46 = v2;
  v47 = v3;
  v44 = v4;
  v45 = v5;
  v43 = v6;
  v48 = v8;
  v49 = v7;
  v9 = sub_2706E5C3C();
  v10 = OUTLINED_FUNCTION_4(v9);
  v40 = v11;
  v41 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3_0();
  v39 = v15 - v14;
  v16 = sub_2706E5C2C();
  v17 = OUTLINED_FUNCTION_6_0(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_3_0();
  v20 = sub_2706E594C();
  v21 = OUTLINED_FUNCTION_16_3(v20);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_3_0();
  v24 = OBJC_IVAR____TtC13UniversalDrag26ArchiveTransferDestination_completions;
  type metadata accessor for Completions();
  OUTLINED_FUNCTION_19_0();
  v25 = swift_allocObject();
  *(v25 + 16) = MEMORY[0x277D84F90];
  *(v1 + v24) = v25;
  v26 = OBJC_IVAR____TtC13UniversalDrag26ArchiveTransferDestination_dataQueue;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081DE10, &qword_2706EDCC8);
  swift_allocObject();
  *(v1 + v26) = sub_2706D1EA0();
  *(v1 + OBJC_IVAR____TtC13UniversalDrag26ArchiveTransferDestination_state) = 0;
  v38 = OBJC_IVAR____TtC13UniversalDrag26ArchiveTransferDestination_queue;
  sub_270690D44(0, &qword_28081CEF0, 0x277D85C78);
  sub_2706E593C();
  OUTLINED_FUNCTION_11_9();
  sub_2706DA580(v27, v28);
  v29 = OUTLINED_FUNCTION_35_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(v29, v30);
  sub_270690C38(&qword_28081DE08, &qword_28081DE00, &unk_2706EDCB8);
  sub_2706E5D7C();
  (*(v40 + 104))(v39, *MEMORY[0x277D85260], v41);
  *(v1 + v38) = sub_2706E5C7C();
  v31 = OBJC_IVAR____TtC13UniversalDrag26ArchiveTransferDestination_id;
  v42 = sub_2706E576C();
  v32 = *(v42 - 8);
  (*(v32 + 16))(v1 + v31, v49, v42);
  v33 = OBJC_IVAR____TtC13UniversalDrag26ArchiveTransferDestination_outputMode;
  v34 = sub_2706E565C();
  v35 = *(v34 - 8);
  (*(v35 + 16))(v1 + v33, v48, v34);
  type metadata accessor for ArchiveTransferDestination.Mode(0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for Completion();
  swift_allocObject();
  sub_2706A5AA4(v43);
  sub_2706DD8C4(v45, v46, v47, v43, v44);
  v36 = *(v1 + OBJC_IVAR____TtC13UniversalDrag26ArchiveTransferDestination_completions);
  swift_beginAccess();

  MEMORY[0x2743A5F60](v37);
  sub_2706E2658(*((*(v36 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10));
  sub_2706E5B4C();
  swift_endAccess();

  sub_27068F6BC(v43);
  (*(v35 + 8))(v48, v34);
  (*(v32 + 8))(v49, v42);
  OUTLINED_FUNCTION_16_0();
}

void sub_2706D6A60()
{
  OUTLINED_FUNCTION_21_0();
  v1 = sub_2706E592C();
  v2 = OUTLINED_FUNCTION_4(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3_0();
  v19 = OUTLINED_FUNCTION_24_4();
  v5 = OUTLINED_FUNCTION_4(v19);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_29_3();
  v8 = *(v0 + OBJC_IVAR____TtC13UniversalDrag26ArchiveTransferDestination_queue);
  v20[4] = sub_2706DA228;
  v21 = v0;
  OUTLINED_FUNCTION_5_10();
  OUTLINED_FUNCTION_4_10(COERCE_DOUBLE(1107296256));
  v20[2] = v9;
  v20[3] = &block_descriptor_2;
  v10 = _Block_copy(v20);
  v11 = v8;

  sub_2706E593C();
  OUTLINED_FUNCTION_6_11();
  sub_2706DA580(v12, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081CF00, &qword_2706EA080);
  sub_270690C38(&qword_28081CF08, &qword_28081CF00, &qword_2706EA080);
  OUTLINED_FUNCTION_8_11();
  sub_2706E5D7C();
  v14 = OUTLINED_FUNCTION_18_7();
  MEMORY[0x2743A60D0](v14);
  _Block_release(v10);

  v15 = OUTLINED_FUNCTION_14_9();
  v16(v15);
  v17 = OUTLINED_FUNCTION_19_10();
  v18(v17);

  OUTLINED_FUNCTION_16_0();
}

uint64_t sub_2706D6C64(uint64_t a1)
{
  v2 = sub_2706E592C();
  v39 = *(v2 - 8);
  v3 = *(v39 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2706E594C();
  v7 = *(*(v6 - 8) + 64);
  result = MEMORY[0x28223BE20](v6);
  if (!*(a1 + OBJC_IVAR____TtC13UniversalDrag26ArchiveTransferDestination_state))
  {
    v36 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    v37 = v10;
    if (qword_28081C748 != -1)
    {
      swift_once();
    }

    v11 = sub_2706E58DC();
    __swift_project_value_buffer(v11, qword_28081DC28);

    v12 = sub_2706E58BC();
    v13 = sub_2706E5BEC();

    v14 = os_log_type_enabled(v12, v13);
    v38 = v5;
    if (v14)
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v35 = v6;
      v17 = v2;
      v18 = v16;
      aBlock[0] = v16;
      *v15 = 136446210;
      v19 = sub_2706D62F0();
      v21 = sub_2706C83E8(v19, v20, aBlock);

      *(v15 + 4) = v21;
      _os_log_impl(&dword_270680000, v12, v13, "%{public}s: starting archive destination", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v18);
      v22 = v18;
      v2 = v17;
      v6 = v35;
      MEMORY[0x2743A75B0](v22, -1, -1);
      MEMORY[0x2743A75B0](v15, -1, -1);
    }

    sub_2706D65FC(1);
    sub_2706D7538();

    v23 = sub_2706E58BC();
    v24 = sub_2706E5BEC();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      aBlock[0] = v26;
      *v25 = 136446210;
      v27 = sub_2706D62F0();
      v29 = sub_2706C83E8(v27, v28, aBlock);

      *(v25 + 4) = v29;
      _os_log_impl(&dword_270680000, v23, v24, "%{public}s: archive complete", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v26);
      MEMORY[0x2743A75B0](v26, -1, -1);
      MEMORY[0x2743A75B0](v25, -1, -1);
    }

    v30 = v38;
    sub_270690D44(0, &qword_28081CEF0, 0x277D85C78);
    v31 = sub_2706E5C4C();
    aBlock[4] = sub_2706DA248;
    aBlock[5] = a1;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2706DA6A0;
    aBlock[3] = &block_descriptor_92;
    v32 = _Block_copy(aBlock);

    v33 = v36;
    sub_2706E593C();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_2706DA580(&qword_28081CEF8, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081CF00, &qword_2706EA080);
    sub_270690C38(&qword_28081CF08, &qword_28081CF00, &qword_2706EA080);
    sub_2706E5D7C();
    MEMORY[0x2743A60D0](0, v33, v30, v32);
    _Block_release(v32);

    (*(v39 + 8))(v30, v2);
    return (*(v37 + 8))(v33, v6);
  }

  return result;
}

uint64_t sub_2706D7438(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC13UniversalDrag26ArchiveTransferDestination_completions);

  sub_2706DAAE8();
}

uint64_t sub_2706D7484()
{
  v1 = *(v0 + OBJC_IVAR____TtC13UniversalDrag26ArchiveTransferDestination_dataQueue);

  sub_2706D1BF8();
}

uint64_t sub_2706D74D8()
{
  v1 = *(v0 + OBJC_IVAR____TtC13UniversalDrag26ArchiveTransferDestination_dataQueue);

  sub_2706D1BF8();
}

void sub_2706D7538()
{
  v112 = *MEMORY[0x277D85DE8];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D450, &qword_2706EAA20);
  OUTLINED_FUNCTION_16_3(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_32_3();
  v6 = sub_2706E565C();
  v7 = OUTLINED_FUNCTION_4(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_5_1();
  v101 = (v12 - v13);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v95[-v16];
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v95[-v19];
  MEMORY[0x28223BE20](v18);
  v22 = &v95[-v21];
  v23 = type metadata accessor for ArchiveTransferDestination.Mode(0);
  v24 = OUTLINED_FUNCTION_6_0(v23);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_5_1();
  v104 = (v27 - v28);
  MEMORY[0x28223BE20](v29);
  v31 = &v95[-v30];
  v102 = OBJC_IVAR____TtC13UniversalDrag26ArchiveTransferDestination_outputMode;
  v107 = v0;
  sub_2706D98BC(v0 + OBJC_IVAR____TtC13UniversalDrag26ArchiveTransferDestination_outputMode, &v95[-v30]);
  v103 = v23;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v105 = v6;
  if (EnumCaseMultiPayload == 1)
  {
    (*(v9 + 32))(v22, v31, v6);
    if (qword_28081C748 != -1)
    {
      OUTLINED_FUNCTION_2_8();
    }

    v33 = sub_2706E58DC();
    __swift_project_value_buffer(v33, qword_28081DC28);
    (*(v9 + 16))(v20, v22, v6);
    v34 = v107;

    v35 = sub_2706E58BC();
    v36 = sub_2706E5BEC();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = OUTLINED_FUNCTION_27_1();
      v100 = v17;
      v38 = v37;
      v98 = OUTLINED_FUNCTION_26_1();
      *&v110 = v98;
      *v38 = 136446467;
      v97 = v35;
      v39 = sub_2706D62F0();
      v41 = sub_2706C83E8(v39, v40, &v110);
      v99 = v9;
      v42 = v41;

      *(v38 + 4) = v42;
      *(v38 + 12) = 2081;
      OUTLINED_FUNCTION_1_12();
      sub_2706DA580(v43, v44);
      v45 = sub_2706E611C();
      v47 = v46;
      v96 = v36;
      v48 = *(v99 + 8);
      (v48)(v20, v6);
      v49 = sub_2706C83E8(v45, v47, &v110);
      v9 = v99;

      *(v38 + 14) = v49;
      v50 = v97;
      _os_log_impl(&dword_270680000, v97, v96, "%{public}s: creating unarchiver: dest=%{private}s", v38, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_12_0();
      v17 = v100;
      OUTLINED_FUNCTION_12_0();

      v51 = OUTLINED_FUNCTION_22_6();
      v48(v51);
      v52 = v106;
      v34 = v107;
      goto LABEL_13;
    }

    v63 = *(v9 + 8);
    (v63)(v20, v6);
    v64 = OUTLINED_FUNCTION_22_6();
    v63(v64);
  }

  else
  {
    sub_2706D993C(v31);
    if (qword_28081C748 != -1)
    {
      OUTLINED_FUNCTION_2_8();
    }

    v53 = sub_2706E58DC();
    __swift_project_value_buffer(v53, qword_28081DC28);
    v34 = v107;

    v54 = sub_2706E58BC();
    v55 = sub_2706E5BEC();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v100 = v17;
      v58 = v57;
      *&v110 = v57;
      *v56 = 136446210;
      v59 = sub_2706D62F0();
      v61 = v9;
      v62 = sub_2706C83E8(v59, v60, &v110);

      *(v56 + 4) = v62;
      v9 = v61;
      _os_log_impl(&dword_270680000, v54, v55, "%{public}s: creating unarchiver: output=callback", v56, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v58);
      v17 = v100;
      OUTLINED_FUNCTION_12_0();
      OUTLINED_FUNCTION_12_0();
    }
  }

  v52 = v106;
LABEL_13:
  type metadata accessor for ArchiveReader();
  OUTLINED_FUNCTION_21_7();

  v65 = sub_2706D0750(2, sub_2706D9920, v34);

  if (!v52)
  {
    v67 = [objc_allocWithZone(MEMORY[0x277CCAA00]) init];
    v68 = (v9 + 32);
    v106 = (v9 + 8);
    v69 = v105;
    while (1)
    {
      v70 = sub_2706D0F34();
      if (!v70)
      {
        break;
      }

      sub_2706D0260(v1);
      if (__swift_getEnumTagSinglePayload(v1, 1, v69) == 1)
      {

        sub_2706ADE58(v1);
      }

      else
      {
        v71 = (*v68)(v17, v1, v69);
        v72 = v69;
        v73 = v17;
        v74 = MEMORY[0x2743A6D20](v71);
        sub_2706D80E4(v107, v65, v73, v70, v67, &v110);
        objc_autoreleasePoolPop(v74);

        v75 = OUTLINED_FUNCTION_30_1();
        v76(v75);
        v17 = v73;
        v69 = v72;
      }
    }

    v77 = v104;
    sub_2706D98BC(v107 + v102, v104);
    if (swift_getEnumCaseMultiPayload() != 1)
    {

      sub_2706D993C(v77);
      goto LABEL_14;
    }

    v78 = v101;
    (*v68)(v101, v77, v69);
    v79 = v78;
    sub_2706E564C();
    sub_2706E5A0C();
    OUTLINED_FUNCTION_23_5();

    *&v110 = 0;
    v80 = [v67 attributesOfItemAtPath:v77 error:&v110];

    v81 = v110;
    if (v80)
    {
      type metadata accessor for FileAttributeKey(0);
      OUTLINED_FUNCTION_12_9();
      sub_2706DA580(v82, v83);
      v107 = v67;
      v84 = sub_2706E599C();
      v85 = v81;

      v86 = *MEMORY[0x277CCA100];
      v87 = sub_270690D44(0, &qword_28081CEB8, 0x277CCABB0);
      v88 = v86;
      v89 = sub_2706E5D0C();
      v111 = v87;
      *&v110 = v89;
      sub_270690AAC(&v110, v109);
      swift_isUniquelyReferenced_nonNull_native();
      v108 = v84;
      sub_270690038(v109, v88);

      v67 = v107;
      sub_2706E598C();
      OUTLINED_FUNCTION_23_5();

      sub_2706E564C();
      v90 = sub_2706E5A0C();

      *&v110 = 0;
      LODWORD(v84) = [v67 setAttributes:v88 ofItemAtPath:v90 error:&v110];

      if (v84)
      {
        v91 = *v106;
        v92 = v110;
        v91(v79, v69);

        goto LABEL_14;
      }

      v94 = v110;
      OUTLINED_FUNCTION_23_5();
      sub_2706E558C();
    }

    else
    {
      v93 = v110;
      OUTLINED_FUNCTION_21_7();
      sub_2706E558C();
    }

    swift_willThrow();

    (*v106)(v79, v69);
  }

LABEL_14:
  v66 = *MEMORY[0x277D85DE8];
}

uint64_t sub_2706D7EA4(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC13UniversalDrag26ArchiveTransferDestination_dataQueue);

  sub_2706D1D04(&v17);

  v2 = v18;
  if ((~v18 & 0x3000000000000000) == 0)
  {
    return 0;
  }

  v3 = v17;
  if ((v18 & 0x2000000000000000) != 0 && v17)
  {
    if (qword_28081C748 != -1)
    {
      swift_once();
    }

    v4 = sub_2706E58DC();
    __swift_project_value_buffer(v4, qword_28081DC28);

    sub_2706DA1D8(v3, v2);
    v5 = sub_2706E58BC();
    v6 = sub_2706E5BFC();

    sub_2706DA1B8(v3, v2);
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v16 = v8;
      *v7 = 136446466;
      v9 = sub_2706D62F0();
      v11 = sub_2706C83E8(v9, v10, &v16);

      *(v7 + 4) = v11;
      *(v7 + 12) = 2082;
      sub_2706DA1AC(v3, v2);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D4A8, &qword_2706EAD40);
      v12 = sub_2706E5A4C();
      v14 = sub_2706C83E8(v12, v13, &v16);

      *(v7 + 14) = v14;
      _os_log_impl(&dword_270680000, v5, v6, "%{public}s: error during data read, error=%{public}s", v7, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2743A75B0](v8, -1, -1);
      MEMORY[0x2743A75B0](v7, -1, -1);
    }

    swift_willThrow();
  }

  return v3;
}

uint64_t sub_2706D80E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t *a6)
{
  v140 = a6;
  v135 = a5;
  v148 = *MEMORY[0x277D85DE8];
  v10 = sub_2706E565C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 8);
  v13 = MEMORY[0x28223BE20](v10);
  v133 = &v126[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = MEMORY[0x28223BE20](v13);
  v137 = &v126[-v16];
  v17 = MEMORY[0x28223BE20](v15);
  v138 = &v126[-v18];
  v19 = MEMORY[0x28223BE20](v17);
  v136 = &v126[-v20];
  v21 = MEMORY[0x28223BE20](v19);
  v142 = &v126[-v22];
  MEMORY[0x28223BE20](v21);
  v24 = &v126[-v23];
  v25 = type metadata accessor for ArchiveTransferDestination.Mode(0);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25);
  v28 = &v126[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2706D98BC(a1 + OBJC_IVAR____TtC13UniversalDrag26ArchiveTransferDestination_outputMode, v28);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v129 = a2;
    v141 = v11;
    (*(v11 + 4))(v24, v28, v10);
    v132 = a4;
    v139 = sub_2706D0038();
    v30 = sub_2706E55AC() == 46 && v29 == 0xE100000000000000;
    v134 = v24;
    if (v30)
    {
    }

    else
    {
      v31 = sub_2706E631C();

      if ((v31 & 1) == 0)
      {
        sub_2706E55AC();
        sub_2706E55EC();

        v32 = v10;
        goto LABEL_12;
      }
    }

    v32 = v10;
    (*(v141 + 2))(v142, v24, v10);
    v41 = *MEMORY[0x277CCA100];
    v42 = sub_270690D44(0, &qword_28081CEB8, 0x277CCABB0);
    v43 = v41;
    v44 = sub_2706E5D0C();
    v147 = v42;
    *&v146 = v44;
    sub_270690AAC(&v146, v145);
    v45 = v139;
    swift_isUniquelyReferenced_nonNull_native();
    v144 = v45;
    sub_270690038(v145, v43);

    v139 = v144;
LABEL_12:
    v46 = a3;
    v47 = v136;
    if (qword_28081C748 != -1)
    {
      swift_once();
    }

    v48 = sub_2706E58DC();
    __swift_project_value_buffer(v48, qword_28081DC28);
    v49 = v141;
    v51 = v141 + 16;
    v50 = *(v141 + 2);
    v50(v47, v46, v32);
    v52 = v138;
    v131 = v51;
    v130 = v50;
    v50(v138, v142, v32);

    v53 = sub_2706E58BC();
    v54 = sub_2706E5BEC();

    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v128 = swift_slowAlloc();
      *&v146 = v128;
      *v55 = 136446723;
      v127 = v54;
      v56 = sub_2706D62F0();
      v58 = sub_2706C83E8(v56, v57, &v146);

      *(v55 + 4) = v58;
      *(v55 + 12) = 2081;
      v59 = sub_2706E55BC();
      v61 = v60;
      v62 = *(v49 + 1);
      (v62)(v47, v32);
      v63 = sub_2706C83E8(v59, v61, &v146);

      *(v55 + 14) = v63;
      *(v55 + 22) = 2081;
      v64 = v138;
      v65 = sub_2706E564C();
      v67 = v66;
      (v62)(v64, v32);
      v68 = v134;
      v69 = sub_2706C83E8(v65, v67, &v146);

      *(v55 + 24) = v69;
      _os_log_impl(&dword_270680000, v53, v127, "%{public}s: archive entry: src=%{private}s dest=%{private}s", v55, 0x20u);
      v70 = v128;
      swift_arrayDestroy();
      MEMORY[0x2743A75B0](v70, -1, -1);
      MEMORY[0x2743A75B0](v55, -1, -1);
    }

    else
    {
      v71 = v47;
      v68 = v134;

      v62 = *(v49 + 1);
      (v62)(v52, v32);
      (v62)(v71, v32);
    }

    v73 = sub_2706CFF10(v72);
    v40 = v140;
    v74 = v137;
    switch(v73)
    {
      case 6:

        sub_2706D0234();
        if (v86)
        {
          sub_2706E559C();
          sub_2706E564C();
          v87 = v32;
          (v62)(v74, v32);
          v88 = sub_2706E5A0C();

          v89 = sub_2706E5A0C();

          *&v146 = 0;
          v90 = [v135 createSymbolicLinkAtPath:v88 withDestinationPath:v89 error:&v146];

          if (v90)
          {
            v91 = v146;
            (v62)(v142, v87);
            v32 = v87;
            v92 = v134;
LABEL_45:
            result = (v62)(v92, v32);
            goto LABEL_52;
          }

          v102 = v146;
          v103 = sub_2706E558C();

          v143 = v103;
          swift_willThrow();
          (v62)(v142, v87);
          result = (v62)(v134, v87);
          goto LABEL_51;
        }

        (v62)(v142, v32);
        break;
      case 4:
        v81 = v142;
        sub_2706E559C();
        sub_2706E564C();
        (v62)(v74, v32);
        v82 = sub_2706E5A0C();

        [v135 createFileAtPath:v82 contents:0 attributes:0];

        sub_270690D44(0, &qword_28081D258, 0x277CCA9F8);
        v83 = v133;
        v130(v133, v81, v32);
        v84 = v143;
        v85 = sub_2706D5F9C(v83, &selRef_fileHandleForWritingToURL_error_);
        v143 = v84;
        if (v84)
        {
          (v62)(v142, v32);

          result = (v62)(v134, v32);
        }

        else
        {
          v98 = v85;
          v141 = v62;
          [v85 fileDescriptor];

          v100 = v143;
          sub_2706D0908(v99, v99);
          v143 = v100;
          if (v100)
          {

            v101 = v141;
            (v141)(v142, v32);

            result = v101(v134, v32);
          }

          else
          {
            *&v146 = 0;
            v111 = [v98 closeAndReturnError_];
            v112 = v146;
            if (v111)
            {
              type metadata accessor for FileAttributeKey(0);
              sub_2706DA580(&qword_28081C858, type metadata accessor for FileAttributeKey);
              v113 = v32;
              v114 = v112;
              v115 = sub_2706E598C();

              sub_2706E559C();
              sub_2706E564C();
              v116 = v141;
              (v141)(v74, v32);
              v117 = sub_2706E5A0C();

              *&v146 = 0;
              v118 = [v135 setAttributes:v115 ofItemAtPath:v117 error:&v146];

              if (v118)
              {
                v119 = v146;

                v116(v142, v113);
                result = (v116)(v134, v113);
                goto LABEL_52;
              }

              v124 = v146;
              v125 = sub_2706E558C();

              v143 = v125;
              swift_willThrow();

              v116(v142, v113);
              result = (v116)(v134, v113);
            }

            else
            {
              v120 = v146;

              v121 = sub_2706E558C();

              v143 = v121;
              swift_willThrow();

              v122 = v141;
              (v141)(v142, v32);
              result = v122(v134, v32);
            }
          }
        }

        goto LABEL_51;
      case 2:
        if (sub_2706E55AC() == 46 && v75 == 0xE100000000000000)
        {

          v78 = v135;
        }

        else
        {
          v77 = sub_2706E631C();

          v78 = v135;
          if ((v77 & 1) == 0)
          {
LABEL_42:
            v106 = sub_2706E55DC();
            *&v146 = 0;
            v107 = sub_2706DA010(v106, 0, v139, &v146, v78);

            if (v107)
            {
              v108 = v146;
              (v62)(v142, v32);
              break;
            }

            v109 = v146;
            v110 = sub_2706E558C();

            v143 = v110;
            swift_willThrow();
            (v62)(v142, v32);
            result = (v62)(v68, v32);
LABEL_51:
            *v40 = v143;
            v143 = 1;
            goto LABEL_52;
          }
        }

        sub_2706E564C();
        v93 = sub_2706E5A0C();

        v94 = [v78 fileExistsAtPath_];

        if (v94)
        {
          v95 = sub_2706E55DC();
          *&v146 = 0;
          v96 = [v78 removeItemAtURL:v95 error:&v146];

          if (v96)
          {
            v97 = v146;
          }

          else
          {
            v104 = v146;
            v105 = sub_2706E558C();

            swift_willThrow();
            v143 = 0;
          }
        }

        goto LABEL_42;
      default:
        (v62)(v142, v32);

        break;
    }

    v92 = v68;
    goto LABEL_45;
  }

  v33 = a3;
  v35 = *v28;
  v34 = v28[1];
  v36 = v143;
  v37 = sub_2706D1010();
  v143 = v36;
  if (v36)
  {

    v40 = v140;
    goto LABEL_51;
  }

  v79 = v37;
  v80 = v38;
  v35(v33, v37, v38);

  result = sub_270688E88(v79, v80);
  v143 = 0;
LABEL_52:
  v123 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2706D8E60()
{
  sub_2706D993C(v0 + OBJC_IVAR____TtC13UniversalDrag26ArchiveTransferDestination_outputMode);
  v1 = *(v0 + OBJC_IVAR____TtC13UniversalDrag26ArchiveTransferDestination_completions);

  v2 = *(v0 + OBJC_IVAR____TtC13UniversalDrag26ArchiveTransferDestination_dataQueue);

  v3 = OBJC_IVAR____TtC13UniversalDrag26ArchiveTransferDestination_id;
  v4 = sub_2706E576C();
  OUTLINED_FUNCTION_6_0(v4);
  (*(v5 + 8))(v0 + v3);

  return v0;
}

uint64_t sub_2706D8F10(void (*a1)(void))
{
  a1();
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return MEMORY[0x2821FE8D8](v1, v2, v3);
}

uint64_t sub_2706D8F94()
{
  result = type metadata accessor for ArchiveTransferDestination.Mode(319);
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_2706E576C();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ArchiveTransferDestination.State(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
        JUMPOUT(0x2706D9174);
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_2706D91B8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 3 && *(a1 + 16))
    {
      v2 = *a1 + 2;
    }

    else
    {
      v2 = ((2 * ((*(a1 + 8) & 0x1000000000000000) != 0)) | ((*(a1 + 8) >> 60) >> 1) & 1) ^ 3;
      if (v2 >= 2)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_2706D9204(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 2)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    if (a3 >= 3)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 3)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = ((2 * a2) & 2 | 1u) << 60;
    }
  }

  return result;
}

unint64_t sub_2706D9284()
{
  result = sub_2706D92F8();
  if (v1 <= 0x3F)
  {
    result = sub_2706E565C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_2706D92F8()
{
  result = qword_28081DD48[0];
  if (!qword_28081DD48[0])
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, qword_28081DD48);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_13UniversalDrag21ArchiveTransferSourceC5StateO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2706D9358(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 8))
  {
    return (*a1 + 2147483644);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 3;
  if (v4 >= 5)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2706D93AC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFB)
  {
    *result = 0;
    *result = a2 - 2147483644;
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 3;
    }
  }

  return result;
}

uint64_t sub_2706D9420(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

uint64_t sub_2706D947C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 24);
  v5 = *(*(v4 - 8) + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(*(v4 - 8) + 64);
  if (!v5)
  {
    ++v7;
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v6;
  if (a2 > v6)
  {
    v9 = 8 * v7;
    if (v7 > 3)
    {
      goto LABEL_8;
    }

    v11 = ((v8 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v7);
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v11 <= 0xFF)
      {
        if (v11 < 2)
        {
          goto LABEL_23;
        }

LABEL_8:
        v10 = *(a1 + v7);
        if (!*(a1 + v7))
        {
          goto LABEL_23;
        }

LABEL_15:
        v12 = (v10 - 1) << v9;
        if (v7 > 3)
        {
          v12 = 0;
        }

        if (v7)
        {
          if (v7 > 3)
          {
            LODWORD(v7) = 4;
          }

          switch(v7)
          {
            case 2:
              LODWORD(v7) = *a1;
              break;
            case 3:
              LODWORD(v7) = *a1 | (*(a1 + 2) << 16);
              break;
            case 4:
              LODWORD(v7) = *a1;
              break;
            default:
              LODWORD(v7) = *a1;
              break;
          }
        }

        return v6 + (v7 | v12) + 1;
      }

      v10 = *(a1 + v7);
      if (*(a1 + v7))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_23:
  if (v5 < 2)
  {
    return 0;
  }

  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, v5, v4);
  if (EnumTagSinglePayload >= 2)
  {
    return EnumTagSinglePayload - 1;
  }

  else
  {
    return 0;
  }
}

void sub_2706D9604(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(a4 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  if (v9)
  {
    v10 = v9 - 1;
  }

  else
  {
    v10 = 0;
  }

  if (v9)
  {
    v11 = *(v8 + 64);
  }

  else
  {
    v11 = *(v8 + 64) + 1;
  }

  v12 = 8 * v11;
  v13 = a3 >= v10;
  v14 = a3 - v10;
  if (v14 != 0 && v13)
  {
    if (v11 <= 3)
    {
      v15 = ((v14 + ~(-1 << v12)) >> v12) + 1;
      if (HIWORD(v15))
      {
        v6 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v6 = v16;
        }

        else
        {
          v6 = 0;
        }
      }
    }

    else
    {
      v6 = 1;
    }
  }

  if (v10 < a2)
  {
    v17 = ~v10 + a2;
    if (v11 < 4)
    {
      v18 = (v17 >> v12) + 1;
      if (v11)
      {
        v19 = v17 & ~(-1 << v12);
        bzero(a1, v11);
        if (v11 == 3)
        {
          *a1 = v19;
          a1[2] = BYTE2(v19);
        }

        else if (v11 == 2)
        {
          *a1 = v19;
        }

        else
        {
          *a1 = v17;
        }
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v17;
      v18 = 1;
    }

    switch(v6)
    {
      case 1:
        a1[v11] = v18;
        return;
      case 2:
        *&a1[v11] = v18;
        return;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v11] = v18;
        return;
      default:
        return;
    }
  }

  switch(v6)
  {
    case 1:
      a1[v11] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    case 2:
      *&a1[v11] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    case 3:
LABEL_44:
      __break(1u);
      JUMPOUT(0x2706D9824);
    case 4:
      *&a1[v11] = 0;
      goto LABEL_30;
    default:
LABEL_30:
      if (a2)
      {
LABEL_31:
        if (v9 >= 2)
        {
          v20 = a2 + 1;

          __swift_storeEnumTagSinglePayload(a1, v20, v9, v7);
        }
      }

      return;
  }
}

unint64_t sub_2706D9868()
{
  result = qword_28081DDD0;
  if (!qword_28081DDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081DDD0);
  }

  return result;
}

uint64_t sub_2706D98BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArchiveTransferDestination.Mode(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2706D993C(uint64_t a1)
{
  v2 = type metadata accessor for ArchiveTransferDestination.Mode(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2706D9998(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = MEMORY[0x277D84F98];
LABEL_9:

    return v3;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081CF70, &qword_2706E9180);
  v2 = sub_2706E5FCC();
  v3 = v2;
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = v2 + 64;
  v6 = a1 + 32;

  while (1)
  {
    sub_2706DA138(v6, &v15);
    v7 = v15;
    v8 = v16;
    result = sub_27068F7E8(v15, v16);
    if (v10)
    {
      break;
    }

    *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
    v11 = (v3[6] + 16 * result);
    *v11 = v7;
    v11[1] = v8;
    result = sub_270690AAC(&v17, (v3[7] + 32 * result));
    v12 = v3[2];
    v13 = __OFADD__(v12, 1);
    v14 = v12 + 1;
    if (v13)
    {
      goto LABEL_12;
    }

    v3[2] = v14;
    v6 += 48;
    if (!--v4)
    {

      return v3;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_2706D9AD0(uint64_t result, uint64_t a2)
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

  sub_2706D9CE8(result, 1, sub_2706E2A8C);
  v8 = *v2;
  v9 = *v2 + 32;
  v10 = (v9 + 16 * v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D8B0, &qword_2706EBB40);
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

  result = sub_2706C21FC((v9 + 16 * a2), v11 - a2, v10);
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

uint64_t sub_2706D9BD0(uint64_t result, uint64_t a2)
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

  sub_2706D9CE8(result, 1, sub_2706E29D0);
  v8 = *v2;
  v9 = *v2 + 32;
  v10 = (v9 + 16 * v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081DDF0, &unk_2706EE6F0);
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

  result = sub_2706BF75C((v9 + 16 * a2), v11 - a2, v10);
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

uint64_t sub_2706D9CE8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if (!result || a1 > *(v6 + 24) >> 1)
  {
    if (*(v6 + 16) > a1)
    {
      v8 = *(v6 + 16);
    }

    result = a3();
    *v3 = result;
  }

  return result;
}

uint64_t sub_2706D9D60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = *(a3 + 16);
    goto LABEL_6;
  }

  if ((a1 & 0x1000000000000000) == 0)
  {
LABEL_8:
    sub_2706E5E2C();
  }

  v3 = *(a3 + 16);
LABEL_6:
  archive_entry_set_pathname_utf8();
}

uint64_t sub_2706D9E04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = *(a3 + 16);
  v4 = archive_write_data();
  if (v4 < 0)
  {
    v5 = archive_errno();
    if (archive_error_string())
    {
      v6 = sub_2706E5A9C();
      v8 = v7;
    }

    else
    {
      v6 = 0;
      v8 = 0;
    }

    sub_2706DA0E4();
    swift_allocError();
    *v9 = v5;
    *(v9 + 8) = v6;
    *(v9 + 16) = v8;
    swift_willThrow();
  }

  v10 = *MEMORY[0x277D85DE8];
  return v4;
}

uint64_t sub_2706D9F08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_2706E552C();
  if (result)
  {
    result = sub_2706E554C();
    if (__OFSUB__(a1, result))
    {
      goto LABEL_11;
    }
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
LABEL_11:
    __break(1u);
    return result;
  }

  sub_2706E553C();
  v8 = *(a4 + 16);
  v9 = archive_write_data();
  if (v9 < 0)
  {
    v10 = archive_errno();
    if (archive_error_string())
    {
      v11 = sub_2706E5A9C();
      v13 = v12;
    }

    else
    {
      v11 = 0;
      v13 = 0;
    }

    sub_2706DA0E4();
    swift_allocError();
    *v14 = v10;
    *(v14 + 8) = v11;
    *(v14 + 16) = v13;
    swift_willThrow();
  }

  return v9;
}

id sub_2706DA010(uint64_t a1, char a2, uint64_t a3, uint64_t a4, void *a5)
{
  type metadata accessor for FileAttributeKey(0);
  sub_2706DA580(&qword_28081C858, type metadata accessor for FileAttributeKey);
  v9 = sub_2706E598C();

  v10 = [a5 createDirectoryAtURL:a1 withIntermediateDirectories:a2 & 1 attributes:v9 error:a4];

  return v10;
}

unint64_t sub_2706DA0E4()
{
  result = qword_28081DDD8;
  if (!qword_28081DDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081DDD8);
  }

  return result;
}

uint64_t sub_2706DA138(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081DDE8, &unk_2706EDCA8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_2706DA1AC(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    return a1;
  }

  else
  {
    return sub_270692D3C(a1, a2);
  }
}

void sub_2706DA1B8(uint64_t a1, unint64_t a2)
{
  if ((~a2 & 0x3000000000000000) != 0)
  {
    sub_2706DA1CC(a1, a2);
  }
}

void sub_2706DA1CC(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
  }

  else
  {
    sub_270688E88(a1, a2);
  }
}

uint64_t sub_2706DA1D8(uint64_t a1, unint64_t a2)
{
  if ((~a2 & 0x3000000000000000) != 0)
  {
    return sub_2706DA1AC(a1, a2);
  }

  return a1;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2706DA264()
{
  v1 = *(v0 + 16);

  OUTLINED_FUNCTION_11_3();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_2706DA2FC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = OUTLINED_FUNCTION_23_1();

  return MEMORY[0x2821FE8E8](v3, v4, v5);
}

uint64_t sub_2706DA348@<X0>(_DWORD *a1@<X8>)
{
  v3 = *(v1 + 16);
  result = archive_read_disk_open();
  *a1 = result;
  return result;
}

id sub_2706DA380(id result)
{
  if (result >= 4)
  {
    return result;
  }

  return result;
}

void sub_2706DA390(id a1)
{
  if (a1 >= 4)
  {
  }
}

uint64_t objectdestroy_101Tm(void (*a1)(void))
{
  v3 = *(v1 + 16);

  a1(*(v1 + 24));
  OUTLINED_FUNCTION_11_3();

  return MEMORY[0x2821FE8E8](v4, v5, v6);
}

uint64_t sub_2706DA424()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  return sub_2706DAAE8();
}

uint64_t sub_2706DA454()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = OUTLINED_FUNCTION_23_1();

  return MEMORY[0x2821FE8E8](v3, v4, v5);
}

uint64_t sub_2706DA498()
{
  v1 = *(v0 + 24);

  v2 = OUTLINED_FUNCTION_23_1();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_2706DA4FC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2706DA580(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2706DA5C8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 24))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2706DA61C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_8()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_19_10()
{
  v3 = *(v0 + 8);
  result = v1;
  v5 = *(v2 - 152);
  return result;
}

uint64_t OUTLINED_FUNCTION_24_4()
{

  return sub_2706E594C();
}

uint64_t OUTLINED_FUNCTION_36_4(uint64_t a1, uint64_t a2)
{
  *a2 = v2;
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;

  return swift_willThrow();
}

uint64_t sub_2706DA8BC(void *a1)
{
  v21 = *MEMORY[0x277D85DE8];
  type metadata accessor for PropertyListTypeEncoder();
  swift_initStackObject();
  v4 = sub_2706DAC7C(a1);
  if (!v1)
  {
    NSData = OPACKEncoderCreateNSData(v4);
    if (NSData)
    {
      v6 = NSData;
      v2 = sub_2706E56BC();
      v8 = v7;
    }

    else
    {
      v2 = 0;
      v8 = 0xF000000000000000;
    }

    if (sub_2706E590C())
    {
      v9 = 1;
    }

    else
    {
      v9 = v8 >> 60 == 15;
    }

    if (v9)
    {
      v10 = *MEMORY[0x277CCA590];
      v11 = sub_2706E5A3C();
      v13 = v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081DAB0, &qword_2706ED200);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_2706E8FC0;
      v15 = *MEMORY[0x277CCA068];
      *(inited + 32) = sub_2706E5A3C();
      *(inited + 40) = v16;
      *(inited + 72) = MEMORY[0x277D837D0];
      *(inited + 48) = 0xD000000000000014;
      *(inited + 56) = 0x80000002706F1220;
      v17 = sub_2706E59AC();
      v18 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
      sub_2706C82B8(v11, v13, 0, v17);
      swift_willThrow();
      swift_unknownObjectRelease();
      sub_2706A3BA4(v2, v8);
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  v19 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t OPACKEncoderCreateNSData(void *a1)
{
  v1 = a1;
  v2 = MEMORY[0x2743A6CA0]();

  return v2;
}

uint64_t sub_2706DAAE8()
{
  result = swift_beginAccess();
  v2 = *(v0 + 16);
  *(v0 + 16) = MEMORY[0x277D84F90];
  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }
  }

  result = sub_2706E5F9C();
  v3 = result;
  if (!result)
  {
  }

LABEL_3:
  if (v3 >= 1)
  {
    for (i = 0; i != v3; ++i)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        MEMORY[0x2743A62C0](i, v2);
      }

      else
      {
        v5 = *(v2 + 8 * i + 32);
      }

      sub_2706DD768();
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2706DABF8()
{
  if (*(v0 + 24))
  {
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 16);

    return v0;
  }

  return result;
}

uint64_t sub_2706DAC24()
{
  sub_2706DABF8();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_2706DAC7C(void *a1)
{
  v3 = sub_2706E5EAC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v23[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2706DBB8C(a1, v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081DE30, &qword_2706EDEF0);
  sub_2706DBB04();
  if (swift_dynamicCast())
  {
    return v23[6];
  }

  v22 = v4;
  v9 = type metadata accessor for PropertyListTypeEncoder.RootEncoder();
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  v11 = a1[4];
  v12 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v23[3] = v9;
  v23[4] = sub_2706DBB48(&qword_28081DE28);
  v23[0] = v10;

  v8 = v12;
  sub_2706E59BC();
  if (v1)
  {

    __swift_destroy_boxed_opaque_existential_1(v23);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v23);
    v8 = *(v10 + 16);
    if (v8)
    {
      v13 = *(v10 + 16);
      swift_unknownObjectRetain();
    }

    else
    {
      sub_2706E5E6C();
      v8 = sub_2706E5EBC();
      swift_allocError();
      v16 = v15;
      v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_28081DE38, &qword_2706EDEF8) + 48);
      v18 = a1[3];
      v19 = __swift_project_boxed_opaque_existential_1(a1, v18);
      v16[3] = v18;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v16);
      (*(*(v18 - 8) + 16))(boxed_opaque_existential_1, v19, v18);
      v21 = v22;
      (*(v22 + 16))(v16 + v17, v7, v3);
      (*(*(v8 - 8) + 104))(v16, *MEMORY[0x277D841A8], v8);
      swift_willThrow();

      (*(v21 + 8))(v7, v3);
    }
  }

  return v8;
}

uint64_t sub_2706DAFC0()
{
  sub_2706E5F3C();

  return sub_2706E59AC();
}

uint64_t sub_2706DB00C()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CBEB38]) init];
  v2 = *(v0 + 16);
  *(v0 + 16) = v1;
  v1;
  swift_unknownObjectRelease();
  type metadata accessor for PropertyListTypeEncoder.KeyedEncoder();
  swift_getWitnessTable();
  return sub_2706E60EC();
}

unint64_t sub_2706DB0D0@<X0>(void *a1@<X8>)
{
  v3 = [objc_allocWithZone(MEMORY[0x277CBEB18]) init];
  v4 = *(v1 + 16);
  *(v1 + 16) = v3;
  v5 = v3;
  swift_unknownObjectRelease();
  a1[3] = &type metadata for PropertyListTypeEncoder.UnkeyedEncoder;
  result = sub_2706DBA98();
  a1[4] = result;
  *a1 = MEMORY[0x277D84F90];
  a1[1] = v5;
  return result;
}

uint64_t sub_2706DB148@<X0>(void *a1@<X8>)
{
  a1[3] = *v1;
  a1[4] = sub_2706DBB48(&qword_28081DE18);
  *a1 = v1;
}

uint64_t sub_2706DB1CC(uint64_t a1)
{
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
  swift_unknownObjectRelease();

  return swift_unknownObjectRetain();
}

void sub_2706DB20C()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
  sub_2706DB1CC(v0);
}

void sub_2706DB254()
{
  v0 = sub_2706E5B5C();
  sub_2706DB1CC(v0);
}

void sub_2706DB288()
{
  v0 = sub_2706E5A0C();
  sub_2706DB1CC(v0);
}

void sub_2706DB2BC()
{
  v0 = sub_2706E5B6C();
  sub_2706DB1CC(v0);
}

void sub_2706DB2F0()
{
  v0 = sub_2706E5B8C();
  sub_2706DB1CC(v0);
}

void sub_2706DB324()
{
  v0 = sub_2706E5BAC();
  sub_2706DB1CC(v0);
}

void sub_2706DB358()
{
  v0 = sub_2706E650C();
  sub_2706DB1CC(v0);
}

void sub_2706DB38C()
{
  v0 = sub_2706E658C();
  sub_2706DB1CC(v0);
}

void sub_2706DB3C0()
{
  v0 = sub_2706E659C();
  sub_2706DB1CC(v0);
}

void sub_2706DB3F4()
{
  v0 = sub_2706E65AC();
  sub_2706DB1CC(v0);
}

void sub_2706DB428()
{
  v0 = sub_2706E5D4C();
  sub_2706DB1CC(v0);
}

void sub_2706DB45C()
{
  v0 = sub_2706E65BC();
  sub_2706DB1CC(v0);
}

void sub_2706DB490()
{
  v0 = sub_2706E664C();
  sub_2706DB1CC(v0);
}

void sub_2706DB4C4()
{
  v0 = sub_2706E665C();
  sub_2706DB1CC(v0);
}

void sub_2706DB4F8()
{
  v0 = sub_2706E666C();
  sub_2706DB1CC(v0);
}

void sub_2706DB52C(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v7 = *v4;
  v8 = *(*(a2 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  (*(v10 + 16))(&v16[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2);
  sub_2706DBB04();
  if (swift_dynamicCast())
  {
    v11 = v16[0];
    sub_2706DB1CC(v11);
  }

  else
  {
    v12 = swift_allocObject();
    v12[2] = 0;
    v16[3] = v7;
    v16[4] = sub_2706DBB48(&qword_28081DE28);
    v16[0] = v12;

    sub_2706E59BC();
    if (v3)
    {

      __swift_destroy_boxed_opaque_existential_1(v16);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(v16);
      v13 = v12[2];
      swift_unknownObjectRetain();

      v14 = *(v4 + 16);
      *(v4 + 16) = v13;
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_2706DB718()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

unint64_t sub_2706DBA98()
{
  result = qword_28081DE20;
  if (!qword_28081DE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081DE20);
  }

  return result;
}

unint64_t sub_2706DBB04()
{
  result = qword_28081D4D8;
  if (!qword_28081D4D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28081D4D8);
  }

  return result;
}

uint64_t sub_2706DBB48(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PropertyListTypeEncoder.RootEncoder();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2706DBB8C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_2706DBBF0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2706DBC44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + 8);
  v6 = *(a3 + 16);
  v7 = *(a3 + 24);
  v10 = sub_2706E66CC();
  [v5 __swift_setObject_forKeyedSubscript_];
  return swift_unknownObjectRelease();
}

void sub_2706DBCC0(uint64_t a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
  sub_2706DBC44(v4, a1, a2);
}

void sub_2706DBD20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_2706E5B5C();
  sub_2706DBC44(v5, a2, a3);
}

void sub_2706DBD6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_2706E5A0C();
  sub_2706DBC44(v6, a3, a4);
}

void sub_2706DBDB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2706E5B6C();
  sub_2706DBC44(v4, a1, a2);
}

void sub_2706DBE04(uint64_t a1, uint64_t a2)
{
  v4 = sub_2706E5B8C();
  sub_2706DBC44(v4, a1, a2);
}

void sub_2706DBE50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_2706E5BAC();
  sub_2706DBC44(v5, a2, a3);
}

void sub_2706DBE9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_2706E650C();
  sub_2706DBC44(v5, a2, a3);
}

void sub_2706DBEE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_2706E658C();
  sub_2706DBC44(v5, a2, a3);
}

void sub_2706DBF34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_2706E659C();
  sub_2706DBC44(v5, a2, a3);
}

void sub_2706DBF80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_2706E65AC();
  sub_2706DBC44(v5, a2, a3);
}

void sub_2706DBFCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_2706E5D4C();
  sub_2706DBC44(v5, a2, a3);
}

void sub_2706DC018(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_2706E65BC();
  sub_2706DBC44(v5, a2, a3);
}

void sub_2706DC064(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_2706E664C();
  sub_2706DBC44(v5, a2, a3);
}

void sub_2706DC0B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_2706E665C();
  sub_2706DBC44(v5, a2, a3);
}

void sub_2706DC0FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_2706E666C();
  sub_2706DBC44(v5, a2, a3);
}

uint64_t sub_2706DC148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a4 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](a1);
  v14 = *(v11 + 16);
  v14(&v20[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v15);
  sub_2706DBB04();
  if (swift_dynamicCast())
  {
    v16 = v20[0];
  }

  else
  {
    type metadata accessor for PropertyListTypeEncoder();
    swift_initStackObject();
    v20[3] = a4;
    v20[4] = a5;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v20);
    v14(boxed_opaque_existential_1, a1, a4);
    v16 = sub_2706DAC7C(v20);
    result = __swift_destroy_boxed_opaque_existential_1(v20);
    if (v5)
    {
      return result;
    }
  }

  sub_2706DBC44(v16, a2, a3);
  return swift_unknownObjectRelease();
}

void sub_2706DC2C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [objc_allocWithZone(MEMORY[0x277CBEB38]) init];
  sub_2706DBC44(v6, a2, a3);
  v7 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D568, &unk_2706EB370);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2706E8FC0;
  v9 = *(a3 + 16);
  *(inited + 56) = v9;
  *(inited + 64) = *(a3 + 24);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 32));
  (*(*(v9 - 8) + 16))(boxed_opaque_existential_1, a2, v9);
  v11 = v6;

  sub_2706DD674(inited);
  type metadata accessor for PropertyListTypeEncoder.KeyedEncoder();

  v12 = v11;
  swift_getWitnessTable();
  sub_2706E60EC();
}

void sub_2706DC450(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = [objc_allocWithZone(MEMORY[0x277CBEB18]) init];
  sub_2706DBC44(v7, a1, a2);
  v8 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D568, &unk_2706EB370);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2706E8FC0;
  v10 = *(a2 + 16);
  *(inited + 56) = v10;
  *(inited + 64) = *(a2 + 24);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 32));
  (*(*(v10 - 8) + 16))(boxed_opaque_existential_1, a1, v10);
  v12 = v7;

  sub_2706DD674(inited);
  a3[3] = &type metadata for PropertyListTypeEncoder.UnkeyedEncoder;
  a3[4] = sub_2706DBA98();

  *a3 = v8;
  a3[1] = v12;
}

void sub_2706DCB30()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
  [*(v0 + 8) addObject_];
}

void sub_2706DCB88()
{
  v1 = sub_2706E5B5C();
  [*(v0 + 8) addObject_];
}

void sub_2706DCBCC()
{
  v1 = sub_2706E5A0C();
  [*(v0 + 8) addObject_];
}

void sub_2706DCC10()
{
  v1 = sub_2706E5B6C();
  [*(v0 + 8) addObject_];
}

void sub_2706DCC54()
{
  v1 = sub_2706E5B8C();
  [*(v0 + 8) addObject_];
}

void sub_2706DCC98(uint64_t a1, void (*a2)(void))
{
  a2();
  [OUTLINED_FUNCTION_0_10() addObject_];
}

void sub_2706DCCDC(uint64_t a1, void (*a2)(void))
{
  a2();
  [OUTLINED_FUNCTION_0_10() addObject_];
}

void sub_2706DCD20(uint64_t a1, void (*a2)(void))
{
  a2();
  [OUTLINED_FUNCTION_0_10() addObject_];
}

void sub_2706DCD64(uint64_t a1, void (*a2)(void))
{
  a2();
  [OUTLINED_FUNCTION_0_10() addObject_];
}

uint64_t sub_2706DCDA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(a2 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](a1);
  v11 = *(v8 + 16);
  v11(&v16[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2);
  sub_2706DBB04();
  if (swift_dynamicCast())
  {
    v12 = v16[0];
  }

  else
  {
    type metadata accessor for PropertyListTypeEncoder();
    swift_initStackObject();
    v16[3] = a2;
    v16[4] = a3;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v16);
    v11(boxed_opaque_existential_1, a1, a2);
    v12 = sub_2706DAC7C(v16);
    result = __swift_destroy_boxed_opaque_existential_1(v16);
    if (v4)
    {
      return result;
    }
  }

  [*(v3 + 8) addObject_];
  return swift_unknownObjectRelease();
}

uint64_t sub_2706DCF14()
{
  [v0[1] addObject_];
  v2 = *v0;
  type metadata accessor for PropertyListTypeEncoder.KeyedEncoder();

  swift_getWitnessTable();
  return sub_2706E60EC();
}

uint64_t sub_2706DCFDC@<X0>(void *a1@<X8>)
{
  v3 = [objc_allocWithZone(MEMORY[0x277CBEB18]) init];
  [v1[1] addObject_];
  v4 = *v1;
  a1[3] = &type metadata for PropertyListTypeEncoder.UnkeyedEncoder;
  a1[4] = sub_2706DBA98();
  *a1 = v4;
  a1[1] = v3;
}

uint64_t sub_2706DD674(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = sub_2706D9CD0(result, 1);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  if ((*(v6 + 24) >> 1) - *(v6 + 16) < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081DEC0, qword_2706EEF70);
  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v7 = *(v6 + 16);
  v8 = __OFADD__(v7, v3);
  v9 = v7 + v3;
  if (!v8)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

void sub_2706DD768()
{
  v1 = v0;
  v2 = *(v0 + 16);
  if (v2)
  {
    if (v2 == 1)
    {
      sub_2706E5E3C();

      OUTLINED_FUNCTION_2_9();
      OUTLINED_FUNCTION_0_11();
      __break(1u);
    }

    else
    {
      v3 = *(v0 + 24);
      *(v1 + 16) = xmmword_2706EE270;
      v2();

      sub_2706DDB64(v2);
    }
  }

  else
  {
    *(v0 + 16) = xmmword_2706EE270;
  }
}

void *sub_2706DD84C()
{
  OUTLINED_FUNCTION_1_13();
  v1 = sub_2706E611C();
  MEMORY[0x2743A5EF0](v1);

  v0[4] = v3;
  v0[5] = v4;
  v0[2] = 0;
  v0[3] = 0;
  return v0;
}

void *sub_2706DD8C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_1_13();
  v8 = sub_2706E611C();
  MEMORY[0x2743A5EF0](v8);

  v5[4] = v11;
  v5[5] = v12;
  if (a4)
  {
    v9 = a5;
  }

  else
  {
    v9 = 0;
  }

  v5[2] = a4;
  v5[3] = v9;
  return v5;
}

unint64_t *sub_2706DD954()
{
  sub_2706DD980();
  v1 = v0[3];
  sub_2706DDB64(v0[2]);
  v2 = v0[5];

  return v0;
}

uint64_t sub_2706DD980()
{
  if (*(v0 + 16) != 1)
  {
    sub_2706E5E3C();

    OUTLINED_FUNCTION_2_9();
    result = OUTLINED_FUNCTION_0_11();
    __break(1u);
  }

  return result;
}

uint64_t sub_2706DDA14()
{
  sub_2706DD954();

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

uint64_t get_enum_tag_for_layout_string_13UniversalDrag10CompletionC5StateO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2706DDA84(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2706DDAD8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_2706DDB34(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

unint64_t sub_2706DDB64(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_11()
{

  return sub_2706E5F8C();
}

void OUTLINED_FUNCTION_1_13()
{

  JUMPOUT(0x2743A5EF0);
}

void OUTLINED_FUNCTION_2_9()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);

  JUMPOUT(0x2743A5EF0);
}

uint64_t sub_2706DDBD8()
{
  v1 = *(v0 + 16);
  swift_beginAccess();

  MEMORY[0x2743A5F60](v2);
  sub_2706E2658(*((*(v1 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10));
  sub_2706E5B4C();
  swift_endAccess();
}

uint64_t sub_2706DDC74()
{
  v1 = *(v0 + 16);

  sub_2706DAAE8();
}

uint64_t sub_2706DDCBC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x80000002706F1E90 == a2;
  if (v3 || (sub_2706E631C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000012 && 0x80000002706F1EB0 == a2;
    if (v6 || (sub_2706E631C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000016 && 0x80000002706F1ED0 == a2;
      if (v7 || (sub_2706E631C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x73736563637573 && a2 == 0xE700000000000000;
        if (v8 || (sub_2706E631C() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6572756C696166 && a2 == 0xE700000000000000;
          if (v9 || (sub_2706E631C() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6C65636E6163 && a2 == 0xE600000000000000;
            if (v10 || (sub_2706E631C() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x7465736572 && a2 == 0xE500000000000000;
              if (v11 || (sub_2706E631C() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 0x616F626574736170 && a2 == 0xEA00000000006472)
              {

                return 7;
              }

              else
              {
                v13 = sub_2706E631C();

                if (v13)
                {
                  return 7;
                }

                else
                {
                  return 8;
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_2706DDF44(char a1)
{
  result = 0x73736563637573;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000012;
      break;
    case 2:
      result = 0xD000000000000016;
      break;
    case 3:
      return result;
    case 4:
      result = 0x6572756C696166;
      break;
    case 5:
      result = 0x6C65636E6163;
      break;
    case 6:
      result = 0x7465736572;
      break;
    case 7:
      result = 0x616F626574736170;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

uint64_t sub_2706DE054(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x61746E6573657270 && a2 == 0xEC0000006E6F6974;
  if (v4 || (sub_2706E631C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x73746E65746E6F63 && a2 == 0xE800000000000000;
    if (v6 || (sub_2706E631C() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6E6F697461636F6CLL && a2 == 0xE800000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_2706E631C();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_2706DE170(char a1)
{
  if (!a1)
  {
    return 0x61746E6573657270;
  }

  if (a1 == 1)
  {
    return 0x73746E65746E6F63;
  }

  return 0x6E6F697461636F6CLL;
}

uint64_t sub_2706DE1D0(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081DF90, &qword_2706EE680);
  v4 = OUTLINED_FUNCTION_4(v3);
  v111 = v5;
  v112 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_13();
  v110 = v9;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081DF98, &qword_2706EE688);
  OUTLINED_FUNCTION_4(v96);
  v95 = v10;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_13();
  v94 = v14;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081DFA0, &qword_2706EE690);
  OUTLINED_FUNCTION_4(v93);
  v92 = v15;
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_13();
  v91 = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081DFA8, &qword_2706EE698);
  v21 = OUTLINED_FUNCTION_4(v20);
  v98 = v22;
  v99 = v21;
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_13();
  v97 = v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081DFB0, &qword_2706EE6A0);
  v28 = OUTLINED_FUNCTION_4(v27);
  v101 = v29;
  v102 = v28;
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_13();
  v100 = v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081DFB8, &qword_2706EE6A8);
  v35 = OUTLINED_FUNCTION_4(v34);
  v104 = v36;
  v105 = v35;
  v38 = *(v37 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_13();
  v103 = v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081DFC0, &qword_2706EE6B0);
  OUTLINED_FUNCTION_4(v41);
  v106 = v42;
  v44 = *(v43 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v45);
  v47 = &v90 - v46;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081DFC8, &qword_2706EE6B8);
  v49 = OUTLINED_FUNCTION_4(v48);
  v108 = v50;
  v109 = v49;
  v52 = *(v51 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_13();
  v107 = v54;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081DFD0, &qword_2706EE6C0);
  OUTLINED_FUNCTION_4(v55);
  v114 = v56;
  v58 = *(v57 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_13();
  v60 = *v1;
  v61 = v1[1];
  v62 = v1[2];
  *&v113 = v1[3];
  *(&v113 + 1) = v62;
  v63 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2706E24EC();
  sub_2706E66AC();
  switch((v61 >> 60) & 3)
  {
    case 1uLL:
      LOBYTE(v116) = 1;
      sub_2706E2F30();
      OUTLINED_FUNCTION_17_7();
      v116 = v60;
      LOBYTE(v117) = v61;
      sub_2706E302C();
      sub_2706E60DC();
      v73 = v106;
      goto LABEL_11;
    case 2uLL:
      LOBYTE(v116) = 7;
      sub_2706E2D38();
      v47 = v110;
      OUTLINED_FUNCTION_17_7();
      v116 = v60;
      v117 = v61 & 0xCFFFFFFFFFFFFFFFLL;
      sub_270688EE0();
      v41 = v112;
      sub_2706E60DC();
      v73 = v111;
LABEL_11:
      (*(v73 + 8))(v47, v41);
      goto LABEL_12;
    case 3uLL:
      if (v61 == 0x3000000000000000 && !(v113 | *(&v113 + 1) | v60))
      {
        LOBYTE(v116) = 2;
        sub_2706E2EDC();
        v74 = v103;
        OUTLINED_FUNCTION_12_10();
        v76 = v104;
        v75 = v105;
LABEL_27:
        v82 = *(v76 + 8);
        v83 = v74;
        goto LABEL_28;
      }

      v80 = v61 == 0x3000000000000000 && v60 == 1;
      if (v80 && v113 == 0)
      {
        LOBYTE(v116) = 3;
        sub_2706E2E88();
        v74 = v100;
        OUTLINED_FUNCTION_12_10();
        v76 = v101;
        v75 = v102;
        goto LABEL_27;
      }

      v81 = v61 == 0x3000000000000000 && v60 == 2;
      if (v81 && v113 == 0)
      {
        LOBYTE(v116) = 4;
        sub_2706E2E34();
        v74 = v97;
        OUTLINED_FUNCTION_12_10();
        v76 = v98;
        v75 = v99;
        goto LABEL_27;
      }

      v86 = v61 == 0x3000000000000000 && v60 == 3;
      if (v86 && v113 == 0)
      {
        LOBYTE(v116) = 5;
        sub_2706E2DE0();
        v87 = v91;
        OUTLINED_FUNCTION_12_10();
        OUTLINED_FUNCTION_11(&v119);
        v83 = v87;
        v88 = &v120;
      }

      else
      {
        LOBYTE(v116) = 6;
        sub_2706E2D8C();
        v89 = v94;
        OUTLINED_FUNCTION_12_10();
        OUTLINED_FUNCTION_11(&v121);
        v83 = v89;
        v88 = &v122;
      }

      v75 = *(v88 - 32);
LABEL_28:
      v82(v83, v75);
      v84 = OUTLINED_FUNCTION_44_2();
      return v85(v84);
    default:
      LOBYTE(v116) = 0;
      sub_2706E2FD8();
      v64 = v107;
      OUTLINED_FUNCTION_17_7();
      v116 = v60;
      v118 = 0;
      type metadata accessor for DragPresentation();
      OUTLINED_FUNCTION_20_7();
      sub_2706E3080(v65, v66);
      v67 = v109;
      v68 = v115;
      sub_2706E60DC();
      if (!v68)
      {
        v116 = v61;
        v118 = 1;
        type metadata accessor for PasteboardContents(0);
        OUTLINED_FUNCTION_19_11();
        sub_2706E3080(v69, v70);
        OUTLINED_FUNCTION_33_5();
        v116 = *(&v113 + 1);
        v117 = v113;
        v118 = 2;
        type metadata accessor for CGPoint(0);
        OUTLINED_FUNCTION_18_8();
        sub_2706E3080(v71, v72);
        OUTLINED_FUNCTION_33_5();
      }

      (*(v108 + 8))(v64, v67);
LABEL_12:
      v77 = OUTLINED_FUNCTION_44_2();
      return v78(v77);
  }
}

uint64_t sub_2706DEA18@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v147 = a2;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081DEE8, &qword_2706EE630);
  OUTLINED_FUNCTION_4(v149);
  v130 = v3;
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_13();
  v148 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081DEF0, &qword_2706EE638);
  v9 = OUTLINED_FUNCTION_4(v8);
  v140 = v10;
  v141 = v9;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_13();
  v146 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081DEF8, &qword_2706EE640);
  v16 = OUTLINED_FUNCTION_4(v15);
  v138 = v17;
  v139 = v16;
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_13();
  v145 = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081DF00, &qword_2706EE648);
  v23 = OUTLINED_FUNCTION_4(v22);
  v136 = v24;
  v137 = v23;
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_13();
  v144 = v28;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081DF08, &qword_2706EE650);
  OUTLINED_FUNCTION_4(v135);
  v134 = v29;
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_13();
  v143 = v33;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081DF10, &qword_2706EE658);
  OUTLINED_FUNCTION_4(v132);
  v131 = v34;
  v36 = *(v35 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_13();
  v142 = v38;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081DF18, &qword_2706EE660);
  OUTLINED_FUNCTION_4(v133);
  v128 = v39;
  v41 = *(v40 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v42);
  v44 = &v124 - v43;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081DF20, &qword_2706EE668);
  OUTLINED_FUNCTION_4(v45);
  v129 = v46;
  v48 = *(v47 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v49);
  v51 = &v124 - v50;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081DF28, &unk_2706EE670);
  OUTLINED_FUNCTION_4(v52);
  v54 = v53;
  v56 = *(v55 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v57);
  v59 = a1[3];
  v58 = a1[4];
  v150 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v59);
  sub_2706E24EC();
  v60 = v151;
  sub_2706E668C();
  if (v60)
  {
    goto LABEL_9;
  }

  v125 = v44;
  v126 = v51;
  v62 = v148;
  v61 = v149;
  v151 = v54;
  v63 = sub_2706E606C();
  sub_270698614(v63, 0);
  if (v65 == v66 >> 1)
  {
LABEL_8:
    v79 = sub_2706E5E8C();
    swift_allocError();
    v81 = v80;
    v82 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081C988, &qword_2706E7F10) + 48);
    *v81 = &type metadata for PeerDeviceEvent;
    sub_2706E600C();
    sub_2706E5E6C();
    (*(*(v79 - 8) + 104))(v81, *MEMORY[0x277D84160], v79);
    swift_willThrow();
    swift_unknownObjectRelease();
    v83 = OUTLINED_FUNCTION_4_11();
    v84(v83, v52);
LABEL_9:
    v85 = v150;
    return __swift_destroy_boxed_opaque_existential_1(v85);
  }

  v127 = v52;
  v124 = 0;
  if (v65 >= (v66 >> 1))
  {
    __break(1u);
    JUMPOUT(0x2706DF72CLL);
  }

  v67 = *(v64 + v65);
  v68 = sub_270698610(v65 + 1);
  v70 = v69;
  v72 = v71;
  swift_unknownObjectRelease();
  v73 = v68;
  if (v70 != v72 >> 1)
  {
    v52 = v127;
    goto LABEL_8;
  }

  v74 = v124;
  v75 = v147;
  switch(v67)
  {
    case 1:
      LOBYTE(v154) = 1;
      sub_2706E2F30();
      v94 = v125;
      v95 = v127;
      sub_2706E5FFC();
      if (v74)
      {
        v96 = OUTLINED_FUNCTION_4_11();
        v97(v96, v95);
        swift_unknownObjectRelease();
        goto LABEL_9;
      }

      sub_2706E2F84();
      v105 = v133;
      sub_2706E605C();
      swift_unknownObjectRelease();
      OUTLINED_FUNCTION_11(&v156);
      v115(v94, v105);
      v116 = OUTLINED_FUNCTION_4_11();
      v117(v116, v127);
      v111 = v154;
      v118 = BYTE8(v154) | 0x1000000000000000;
      goto LABEL_20;
    case 2:
      LOBYTE(v154) = 2;
      sub_2706E2EDC();
      v118 = v142;
      OUTLINED_FUNCTION_3_10();
      swift_unknownObjectRelease();
      OUTLINED_FUNCTION_11(&v158);
      v102(v118, v132);
      v103 = OUTLINED_FUNCTION_2_10();
      v104(v103);
      v111 = 0;
      *&v123 = OUTLINED_FUNCTION_41_2();
      break;
    case 3:
      v118 = v73;
      LOBYTE(v154) = 3;
      sub_2706E2E88();
      v90 = v143;
      OUTLINED_FUNCTION_3_10();
      swift_unknownObjectRelease();
      OUTLINED_FUNCTION_11(&v159);
      v91(v90, v135);
      v92 = OUTLINED_FUNCTION_2_10();
      v93(v92);
      *&v123 = OUTLINED_FUNCTION_41_2();
      v111 = 1;
      break;
    case 4:
      v118 = v73;
      LOBYTE(v154) = 4;
      sub_2706E2E34();
      v87 = v144;
      OUTLINED_FUNCTION_3_10();
      swift_unknownObjectRelease();
      (*(v136 + 8))(v87, v137);
      v88 = OUTLINED_FUNCTION_2_10();
      v89(v88);
      *&v123 = OUTLINED_FUNCTION_41_2();
      v111 = 2;
      break;
    case 5:
      v118 = v73;
      LOBYTE(v154) = 5;
      sub_2706E2DE0();
      v98 = v145;
      OUTLINED_FUNCTION_3_10();
      swift_unknownObjectRelease();
      (*(v138 + 8))(v98, v139);
      v99 = OUTLINED_FUNCTION_2_10();
      v100(v99);
      *&v123 = OUTLINED_FUNCTION_41_2();
      v111 = 3;
      break;
    case 6:
      v118 = v73;
      LOBYTE(v154) = 6;
      sub_2706E2D8C();
      v101 = v146;
      OUTLINED_FUNCTION_3_10();
      swift_unknownObjectRelease();
      (*(v140 + 8))(v101, v141);
      v106 = OUTLINED_FUNCTION_2_10();
      v107(v106);
      *&v123 = OUTLINED_FUNCTION_41_2();
      v111 = 4;
      break;
    case 7:
      LOBYTE(v154) = 7;
      sub_2706E2D38();
      OUTLINED_FUNCTION_3_10();
      sub_2706874EC();
      sub_2706E605C();
      swift_unknownObjectRelease();
      OUTLINED_FUNCTION_11(&v157);
      v108(v62, v61);
      v109 = OUTLINED_FUNCTION_47_3();
      v110(v109);
      v111 = v154;
      v118 = *(&v154 + 1) | 0x2000000000000000;
LABEL_20:
      v123 = 0uLL;
      break;
    default:
      LOBYTE(v154) = 0;
      sub_2706E2FD8();
      OUTLINED_FUNCTION_3_10();
      type metadata accessor for DragPresentation();
      LOBYTE(v154) = 0;
      OUTLINED_FUNCTION_20_7();
      sub_2706E3080(v76, v77);
      v78 = v45;
      sub_2706E605C();
      v111 = v155;
      type metadata accessor for PasteboardContents(0);
      LOBYTE(v154) = 1;
      OUTLINED_FUNCTION_19_11();
      sub_2706E3080(v112, v113);
      sub_2706E605C();
      v114 = v129;
      v118 = v153;
      type metadata accessor for CGPoint(0);
      v152 = 2;
      OUTLINED_FUNCTION_18_8();
      sub_2706E3080(v119, v120);
      sub_2706E605C();
      swift_unknownObjectRelease();
      (*(v114 + 8))(v126, v78);
      v121 = OUTLINED_FUNCTION_4_11();
      v122(v121, v127);
      v123 = v154;
      break;
  }

  v85 = v150;
  *v75 = v111;
  *(v75 + 8) = v118;
  *(v75 + 16) = v123;
  return __swift_destroy_boxed_opaque_existential_1(v85);
}

uint64_t sub_2706DF74C(uint64_t a1)
{
  v2 = sub_2706E2DE0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2706DF788(uint64_t a1)
{
  v2 = sub_2706E2DE0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2706DF7CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2706DDCBC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2706DF7F4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2706DDF3C();
  *a1 = result;
  return result;
}

uint64_t sub_2706DF81C(uint64_t a1)
{
  v2 = sub_2706E24EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2706DF858(uint64_t a1)
{
  v2 = sub_2706E24EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2706DF894(uint64_t a1)
{
  v2 = sub_2706E2E34();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2706DF8D0(uint64_t a1)
{
  v2 = sub_2706E2E34();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2706DF90C(uint64_t a1)
{
  v2 = sub_2706E2D38();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2706DF948(uint64_t a1)
{
  v2 = sub_2706E2D38();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2706DF98C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2706DE054(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2706DF9B4(uint64_t a1)
{
  v2 = sub_2706E2FD8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2706DF9F0(uint64_t a1)
{
  v2 = sub_2706E2FD8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2706DFA2C(uint64_t a1)
{
  v2 = sub_2706E2D8C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2706DFA68(uint64_t a1)
{
  v2 = sub_2706E2D8C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2706DFAA4(uint64_t a1)
{
  v2 = sub_2706E2E88();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2706DFAE0(uint64_t a1)
{
  v2 = sub_2706E2E88();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2706DFB1C(uint64_t a1)
{
  v2 = sub_2706E2EDC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2706DFB58(uint64_t a1)
{
  v2 = sub_2706E2EDC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2706DFB94(uint64_t a1)
{
  v2 = sub_2706E2F30();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2706DFBD0(uint64_t a1)
{
  v2 = sub_2706E2F30();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2706DFC3C()
{
  v0 = sub_2706E58DC();
  __swift_allocate_value_buffer(v0, qword_2808293C8);
  v1 = __swift_project_value_buffer(v0, qword_2808293C8);
  if (qword_28081C730 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_2808292D8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

unint64_t sub_2706DFD04()
{
  v1 = sub_2706E576C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = 0;
  v9 = 0xE000000000000000;
  sub_2706E5E3C();

  v8 = 0xD000000000000029;
  v9 = 0x80000002706F1BE0;
  (*(v2 + 16))(v5, v0 + OBJC_IVAR____TtCC13UniversalDrag25DragForwardingCoordinatorP33_783013B8C6E53A71170330565A32ABC87Context_target, v1);
  sub_2706E3080(&qword_28081D200, MEMORY[0x277CC95F0]);
  v6 = sub_2706E611C();
  MEMORY[0x2743A5EF0](v6);

  (*(v2 + 8))(v5, v1);
  MEMORY[0x2743A5EF0](8233, 0xE200000000000000);
  return v8;
}

uint64_t sub_2706DFE94(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = OBJC_IVAR____TtCC13UniversalDrag25DragForwardingCoordinatorP33_783013B8C6E53A71170330565A32ABC87Context_queuedPresentationUpdates;
  swift_beginAccess();

  sub_2706E25FC(sub_2706E2714);
  v5 = *(*(v1 + v4) + 16);
  sub_2706E26CC(v5, sub_2706E2714);
  v6 = *(v1 + v4);
  *(v6 + 16) = v5 + 1;
  v7 = v6 + 16 * v5;
  *(v7 + 32) = v2;
  *(v7 + 40) = v3;
  *(v1 + v4) = v6;
  return swift_endAccess();
}

uint64_t sub_2706DFF5C()
{
  v1 = *(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));
  v2 = OBJC_IVAR____TtCC13UniversalDrag25DragForwardingCoordinatorP33_783013B8C6E53A71170330565A32ABC87Context_target;
  v3 = sub_2706E576C();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(v0 + OBJC_IVAR____TtCC13UniversalDrag25DragForwardingCoordinatorP33_783013B8C6E53A71170330565A32ABC87Context_queuedPresentationUpdates);

  return v0;
}

uint64_t sub_2706DFFDC()
{
  v0 = sub_2706DFF5C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void sub_2706E0054(unint64_t a1)
{
  v2 = v1;
  if (qword_28081C730 != -1)
  {
    swift_once();
  }

  v4 = sub_2706E58DC();
  __swift_project_value_buffer(v4, qword_2808292D8);
  sub_2706E31A8(a1);

  v5 = sub_2706E58BC();
  v6 = sub_2706E5BEC();
  sub_2706E3200(a1);

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 136446466;
    v19 = &type metadata for DragForwardingCoordinator.State;
    v20 = v8;
    v18[0] = a1;
    sub_2706E31A8(a1);
    v9 = sub_2706CB238(v18);
    v11 = sub_2706C83E8(v9, v10, &v20);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2082;
    v12 = *(v2 + 40);
    v19 = &type metadata for DragForwardingCoordinator.State;
    v18[0] = v12;
    sub_2706E31A8(v12);
    v13 = sub_2706CB238(v18);
    v15 = sub_2706C83E8(v13, v14, &v20);

    *(v7 + 14) = v15;
    _os_log_impl(&dword_270680000, v5, v6, "DragForwardingCoordinator: %{public}s → %{public}s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2743A75B0](v8, -1, -1);
    MEMORY[0x2743A75B0](v7, -1, -1);
  }

  if (*(v2 + 40) == 0xA000000000000008)
  {
    v16 = *(v2 + 48) + 1;
    do
    {
      v17 = v16;
      v16 = 1;
    }

    while (!v17);
    *(v2 + 48) = v17;
  }
}

void sub_2706E0250(unint64_t a1)
{
  v3 = *(v1 + 40);
  *(v1 + 40) = a1;
  sub_2706E31A8(a1);
  sub_2706E0054(v3);
  sub_2706E3200(v3);

  sub_2706E3200(a1);
}

uint64_t sub_2706E02A8(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6)
{
  v12 = type metadata accessor for DragForwardingCoordinator.Event(0);
  v13 = OUTLINED_FUNCTION_6_0(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_3_0();
  v18 = v17 - v16;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081DFF8, &unk_2706EE6D0);
  v20 = *(v19 + 80);
  v21 = *(v19 + 96);
  *v18 = a1;
  *(v18 + 8) = a4;
  *(v18 + 16) = a5;
  *(v18 + 24) = a6;
  v22 = sub_2706E576C();
  OUTLINED_FUNCTION_6_0(v22);
  (*(v23 + 16))(v18 + v20, a2);
  *(v18 + v21) = a3;
  swift_storeEnumTagMultiPayload();

  sub_2706E05C8(v18);
  return sub_2706E314C(v18);
}

uint64_t sub_2706E03D4(uint64_t a1)
{
  v2 = type metadata accessor for DragForwardingCoordinator.Event(0);
  v3 = OUTLINED_FUNCTION_6_0(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3_0();
  v8 = v7 - v6;
  LOBYTE(v6) = *(a1 + 8);
  *v8 = *a1;
  *(v8 + 8) = v6;
  swift_storeEnumTagMultiPayload();

  sub_2706E05C8(v8);
  return sub_2706E314C(v8);
}

uint64_t sub_2706E0470(uint64_t a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = *(a1 + 8);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = v3;
    v8 = v4 | 0x1000000000000000;
    type metadata accessor for Completion();
    v9 = 0;
    v10 = 0;
    OUTLINED_FUNCTION_39_2();

    OUTLINED_FUNCTION_24_5();
    v6 = sub_2706DD84C();
    sub_2706C77D8(v2, &v7, v6);

    swift_unknownObjectRelease();
    return sub_2706B2C20(v7, v8);
  }

  return result;
}

uint64_t sub_2706E0538(void *a1)
{
  v2 = type metadata accessor for DragForwardingCoordinator.Event(0);
  v3 = OUTLINED_FUNCTION_6_0(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3_0();
  v8 = v7 - v6;
  *(v7 - v6) = a1;
  swift_storeEnumTagMultiPayload();
  v9 = a1;
  sub_2706E05C8(v8);
  return sub_2706E314C(v8);
}

void sub_2706E05C8(uint64_t Description)
{
  v2 = v1;
  v4 = sub_2706E576C();
  v5 = OUTLINED_FUNCTION_4(v4);
  v278 = v6;
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v5);
  v275 = v273 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v277 = v273 - v11;
  v282 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081DFF0, &qword_2706EE6C8);
  OUTLINED_FUNCTION_6_0(v282);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v14);
  v16 = v273 - v15;
  v17 = type metadata accessor for DragForwardingCoordinator.Event(0);
  v18 = OUTLINED_FUNCTION_6_0(v17);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = v273 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v21);
  v274 = (v273 - v25);
  MEMORY[0x28223BE20](v24);
  v27 = v273 - v26;
  if (qword_28081C730 != -1)
  {
    goto LABEL_141;
  }

LABEL_2:
  v281 = sub_2706E58DC();
  __swift_project_value_buffer(v281, qword_2808292D8);
  v283 = Description;
  sub_2706E30E8(Description, v27);

  v28 = sub_2706E58BC();
  Description = sub_2706E5BEC();

  v29 = os_log_type_enabled(v28, Description);
  v276 = v4;
  v279 = v23;
  if (v29)
  {
    v30 = swift_slowAlloc();
    v280 = v17;
    v31 = v30;
    v285[0] = swift_slowAlloc();
    *v31 = 136315394;
    v32 = *(v2 + 40);
    v288 = &type metadata for DragForwardingCoordinator.State;
    *&v286 = v32;
    sub_2706E31A8(v32);
    v33 = sub_2706CB238(&v286);
    v35 = v2;
    v36 = sub_2706C83E8(v33, v34, v285);

    *(v31 + 4) = v36;
    *(v31 + 12) = 2080;
    v288 = v280;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v286);
    sub_2706E30E8(v27, boxed_opaque_existential_1);
    v38 = sub_2706CB238(&v286);
    v40 = v39;
    sub_2706E314C(v27);
    v41 = sub_2706C83E8(v38, v40, v285);
    v2 = v35;

    *(v31 + 14) = v41;
    OUTLINED_FUNCTION_40_2();
    _os_log_impl(v42, v43, v44, v45, v31, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_12_0();
    v17 = v280;
    OUTLINED_FUNCTION_12_0();
  }

  else
  {

    sub_2706E314C(v27);
  }

  v23 = *(v2 + 40);
  v46 = &v16[*(v282 + 48)];
  sub_2706E30E8(v283, v46);
  switch(v23 >> 61)
  {
    case 0uLL:
      OUTLINED_FUNCTION_35_4();
      switch(swift_getEnumCaseMultiPayload())
      {
        case 2u:
          v47 = *v46;
          v48 = *(v46 + 8);
          v49 = OUTLINED_FUNCTION_53_2();
          if (0x28081C000 != -1)
          {
            v49 = OUTLINED_FUNCTION_0_12();
          }

          OUTLINED_FUNCTION_6_12(v49, qword_2808293C8);

          v50 = sub_2706E58BC();
          v51 = sub_2706E5C1C();
          sub_2706E3200(v23);
          if (os_log_type_enabled(v50, v51))
          {
            OUTLINED_FUNCTION_29_1();
            v52 = OUTLINED_FUNCTION_32_4();
            OUTLINED_FUNCTION_30_2(v52);
            *v16 = 136446210;
            *(v16 + 4) = OUTLINED_FUNCTION_14_10();
            OUTLINED_FUNCTION_40_2();
            OUTLINED_FUNCTION_52_2(v53, v54, v55, v56);
            OUTLINED_FUNCTION_8_12();
            OUTLINED_FUNCTION_8_0();
          }

          *&v286 = v47;
          BYTE8(v286) = v48;
          sub_2706DFE94(&v286);
          goto LABEL_83;
        case 3u:
          v116 = *v46;
          v117 = OUTLINED_FUNCTION_53_2();
          if (0x28081C000 != -1)
          {
            v117 = OUTLINED_FUNCTION_0_12();
          }

          OUTLINED_FUNCTION_6_12(v117, qword_2808293C8);
          sub_2706E31A8(v23);
          v118 = v116;
          v119 = sub_2706E58BC();
          v120 = sub_2706E5C1C();
          sub_2706E3200(v23);

          if (os_log_type_enabled(v119, v120))
          {
            v121 = swift_slowAlloc();
            v122 = swift_slowAlloc();
            OUTLINED_FUNCTION_30_2(v122);
            *v121 = 136446466;
            *(v121 + 4) = OUTLINED_FUNCTION_14_10();
            *(v121 + 12) = 2082;
            v285[0] = v116;
            v123 = v116;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D4A8, &qword_2706EAD40);
            v124 = sub_2706E5A4C();
            v126 = sub_2706C83E8(v124, v125, &v286);

            *(v121 + 14) = v126;
            OUTLINED_FUNCTION_22_7();
            _os_log_impl(v127, v128, v129, v130, v121, 0x16u);
            swift_arrayDestroy();
            OUTLINED_FUNCTION_12_0();
            OUTLINED_FUNCTION_8_0();
          }

          OUTLINED_FUNCTION_21_8();
          v131 = v116;
          sub_2706DDC74();
          if (swift_unknownObjectWeakLoadStrong())
          {
            v286 = xmmword_2706EAA60;
            type metadata accessor for Completion();
            v287 = 0;
            v288 = 0;
            OUTLINED_FUNCTION_39_2();
            OUTLINED_FUNCTION_24_5();
            sub_2706DD84C();
            v132 = OUTLINED_FUNCTION_9_9();
            sub_2706C77D8(v132, v133, v134);

            swift_unknownObjectRelease();
          }

          if (swift_unknownObjectWeakLoadStrong())
          {
            v135 = OUTLINED_FUNCTION_45_3();
            sub_2706C786C(v135, v136, v116);

            swift_unknownObjectRelease();
            sub_2706E3200(v23);
            v137 = v116;
            goto LABEL_90;
          }

          v202 = v116;
          goto LABEL_107;
        case 5u:
          sub_2706E31A8(v23);
          v106 = OUTLINED_FUNCTION_53_2();
          if (0x28081C000 != -1)
          {
            v106 = OUTLINED_FUNCTION_0_12();
          }

          OUTLINED_FUNCTION_6_12(v106, qword_2808293C8);

          v107 = sub_2706E58BC();
          v108 = sub_2706E5C1C();
          if (OUTLINED_FUNCTION_5_11(v108))
          {
            OUTLINED_FUNCTION_29_1();
            v109 = OUTLINED_FUNCTION_34_5();
            *&v286 = v109;
            *Description = 136446210;
            *(Description + 4) = OUTLINED_FUNCTION_14_10();
            OUTLINED_FUNCTION_22_7();
            _os_log_impl(v110, v111, v112, v113, Description, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v109);
            OUTLINED_FUNCTION_8_0();
            OUTLINED_FUNCTION_12_0();
          }

          sub_2706E0250(v23 | 0x2000000000000000);
          sub_2706DDC74();
          if (swift_unknownObjectWeakLoadStrong())
          {
            sub_2706C77F8();
            swift_unknownObjectRelease();
          }

          v16 = OBJC_IVAR____TtCC13UniversalDrag25DragForwardingCoordinatorP33_783013B8C6E53A71170330565A32ABC87Context_queuedPresentationUpdates;
          swift_beginAccess();
          v27 = *&v16[v23];
          v4 = *(v27 + 2);

          v114 = 0;
          v17 = (v27 + 40);
          while (2)
          {
            if (v4 != v114)
            {
              if (v114 < *(v27 + 2))
              {
                ++v114;
                Kind = v17->Kind;
                Description = v17[-1].Description;
                v285[0] = Description;
                LOBYTE(v285[1]) = Kind;

                sub_2706E0470(v285);

                ++v17;
                continue;
              }

              __break(1u);
LABEL_141:
              swift_once();
              goto LABEL_2;
            }

            break;
          }

          sub_2706E3200(v23);
          v163 = *&v16[v23];
          *&v16[v23] = MEMORY[0x277D84F90];

LABEL_109:
          sub_2706E3200(v23);
          return;
        case 6u:
          v138 = OUTLINED_FUNCTION_53_2();
          if (0x28081C000 != -1)
          {
            v138 = OUTLINED_FUNCTION_0_12();
          }

          OUTLINED_FUNCTION_6_12(v138, qword_2808293C8);

          v139 = sub_2706E58BC();
          v140 = sub_2706E5C1C();
          sub_2706E3200(v23);
          if (os_log_type_enabled(v139, v140))
          {
            v141 = swift_slowAlloc();
            *&v286 = swift_slowAlloc();
            *v141 = 136446466;
            *(v141 + 4) = OUTLINED_FUNCTION_14_10();
            *(v141 + 12) = 2082;
            *(v141 + 14) = sub_2706C83E8(7104878, 0xE300000000000000, &v286);
            OUTLINED_FUNCTION_40_2();
            _os_log_impl(v142, v143, v144, v145, v141, 0x16u);
            swift_arrayDestroy();
            OUTLINED_FUNCTION_8_0();
            OUTLINED_FUNCTION_12_0();
          }

          OUTLINED_FUNCTION_21_8();
          sub_2706DDC74();
          v146 = *MEMORY[0x277CCA590];
          v147 = sub_2706E5A3C();
          v149 = v148;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081DAB0, &qword_2706ED200);
          v150 = OUTLINED_FUNCTION_51_3();
          *(v150 + 16) = xmmword_2706E8FC0;
          v151 = *MEMORY[0x277CCA068];
          *(v150 + 32) = sub_2706E5A3C();
          *(v150 + 40) = v152;
          OUTLINED_FUNCTION_46_3();
          *(v150 + 72) = MEMORY[0x277D837D0];
          *(v150 + 48) = 0xD000000000000044;
          *(v150 + 56) = v153;
          v154 = sub_2706E59AC();
          v155 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
          v156 = sub_2706C82B8(v147, v149, -6723, v154);
          if (swift_unknownObjectWeakLoadStrong())
          {
            v286 = xmmword_2706EAA40;
            type metadata accessor for Completion();
            v287 = 0;
            v288 = 0;
            OUTLINED_FUNCTION_39_2();
            OUTLINED_FUNCTION_24_5();
            sub_2706DD84C();
            v157 = OUTLINED_FUNCTION_9_9();
            sub_2706C77D8(v157, v158, v159);

            swift_unknownObjectRelease();
          }

          if (swift_unknownObjectWeakLoadStrong())
          {
            v160 = v156;
            v161 = OUTLINED_FUNCTION_45_3();
            sub_2706C786C(v161, v162, v156);
            swift_unknownObjectRelease();

            sub_2706E3200(v23);
            return;
          }

          goto LABEL_109;
        default:
          goto LABEL_28;
      }

    case 1uLL:
      v57 = v23 & 0x1FFFFFFFFFFFFFFFLL;
      OUTLINED_FUNCTION_35_4();
      switch(swift_getEnumCaseMultiPayload())
      {
        case 1u:
          v76 = *v46;
          v77 = *(v46 + 8);

          if (v77 == 5 || !swift_unknownObjectWeakLoadStrong())
          {
            goto LABEL_109;
          }

          LOBYTE(v286) = v77;
          sub_2706C997C(v2, &v286);
          goto LABEL_81;
        case 2u:
          v191 = *(v46 + 8);
          *&v286 = *v46;
          BYTE8(v286) = v191;

          sub_2706E0470(&v286);
LABEL_83:
          sub_2706E3200(v23);

          return;
        case 3u:
          v102 = *v46;
          v192 = OUTLINED_FUNCTION_43_3();
          if (0x28081C000 != -1)
          {
            v192 = OUTLINED_FUNCTION_0_12();
          }

          OUTLINED_FUNCTION_6_12(v192, qword_2808293C8);

          v104 = sub_2706E58BC();
          v193 = sub_2706E5C1C();
          if (OUTLINED_FUNCTION_5_11(v193))
          {
            goto LABEL_87;
          }

          goto LABEL_88;
        case 4u:
          if (!swift_unknownObjectWeakLoadStrong())
          {
            return;
          }

          sub_2706C7804();
          break;
        case 5u:
          sub_2706E31A8(v23);
          v203 = OUTLINED_FUNCTION_43_3();
          if (0x28081C000 != -1)
          {
            v203 = OUTLINED_FUNCTION_0_12();
          }

          OUTLINED_FUNCTION_6_12(v203, qword_2808293C8);

          v204 = sub_2706E58BC();
          v205 = sub_2706E5C1C();
          if (OUTLINED_FUNCTION_5_11(v205))
          {
            OUTLINED_FUNCTION_29_1();
            v206 = OUTLINED_FUNCTION_32_4();
            OUTLINED_FUNCTION_30_2(v206);
            *v16 = 136446210;
            *(v16 + 4) = OUTLINED_FUNCTION_14_10();
            OUTLINED_FUNCTION_22_7();
            OUTLINED_FUNCTION_52_2(v207, v208, v209, v210);
            OUTLINED_FUNCTION_8_12();
            OUTLINED_FUNCTION_8_0();
          }

          sub_2706E0250(v57 | 0x4000000000000000);
          sub_2706E3200(v23);
          goto LABEL_109;
        case 6u:
          v211 = OUTLINED_FUNCTION_43_3();
          if (0x28081C000 != -1)
          {
            v211 = OUTLINED_FUNCTION_0_12();
          }

          OUTLINED_FUNCTION_6_12(v211, qword_2808293C8);

          v212 = sub_2706E58BC();
          v213 = sub_2706E5C1C();
          if (OUTLINED_FUNCTION_5_11(v213))
          {
            OUTLINED_FUNCTION_29_1();
            v214 = OUTLINED_FUNCTION_32_4();
            OUTLINED_FUNCTION_30_2(v214);
            *v16 = 136446210;
            *(v16 + 4) = OUTLINED_FUNCTION_14_10();
            OUTLINED_FUNCTION_22_7();
            OUTLINED_FUNCTION_52_2(v215, v216, v217, v218);
            OUTLINED_FUNCTION_8_12();
            OUTLINED_FUNCTION_8_0();
          }

          OUTLINED_FUNCTION_21_8();
          sub_2706DBB8C(v57 + 24, &v286);
          v219 = __swift_project_boxed_opaque_existential_1(&v286, v288);
          type metadata accessor for Completion();
          OUTLINED_FUNCTION_39_2();
          OUTLINED_FUNCTION_10_9();
          sub_2706DD84C();
          v220 = *v219;
          sub_27068A0A4();

          __swift_destroy_boxed_opaque_existential_1(&v286);
          v221 = *MEMORY[0x277CCA590];
          sub_2706E5A3C();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081DAB0, &qword_2706ED200);
          v222 = OUTLINED_FUNCTION_51_3();
          *(v222 + 16) = xmmword_2706E8FC0;
          v223 = *MEMORY[0x277CCA068];
          *(v222 + 32) = sub_2706E5A3C();
          *(v222 + 40) = v224;
          OUTLINED_FUNCTION_46_3();
          *(v222 + 72) = MEMORY[0x277D837D0];
          *(v222 + 48) = 0xD000000000000040;
          *(v222 + 56) = v225;
          sub_2706E59AC();
          v226 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
          v75 = OUTLINED_FUNCTION_38_4();
          if (swift_unknownObjectWeakLoadStrong())
          {
            goto LABEL_102;
          }

          goto LABEL_103;
        default:
          goto LABEL_28;
      }

      goto LABEL_81;
    case 2uLL:
      v57 = v23 & 0x1FFFFFFFFFFFFFFFLL;
      OUTLINED_FUNCTION_35_4();
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      switch(EnumCaseMultiPayload)
      {
        case 3:
          v102 = *v46;
          v103 = OUTLINED_FUNCTION_43_3();
          if (0x28081C000 != -1)
          {
            v103 = OUTLINED_FUNCTION_0_12();
          }

          OUTLINED_FUNCTION_6_12(v103, qword_2808293C8);

          v104 = sub_2706E58BC();
          v105 = sub_2706E5C1C();
          if (OUTLINED_FUNCTION_5_11(v105))
          {
LABEL_87:
            OUTLINED_FUNCTION_29_1();
            v194 = OUTLINED_FUNCTION_34_5();
            OUTLINED_FUNCTION_30_2(v194);
            *v57 = 136446210;
            *((v23 & 0x1FFFFFFFFFFFFFFFLL) + 4) = OUTLINED_FUNCTION_14_10();
            OUTLINED_FUNCTION_22_7();
            _os_log_impl(v195, v196, v197, v198, v57, 0xCu);
            OUTLINED_FUNCTION_8_12();
            OUTLINED_FUNCTION_12_0();
          }

LABEL_88:

          OUTLINED_FUNCTION_21_8();
          if (swift_unknownObjectWeakLoadStrong())
          {
            v199 = v102;
            v200 = OUTLINED_FUNCTION_45_3();
            sub_2706C786C(v200, v201, v102);

            swift_unknownObjectRelease();
            sub_2706E3200(v23);
            v137 = v102;
LABEL_90:

            return;
          }

          v202 = v102;
LABEL_107:

          goto LABEL_109;
        case 5:
          v94 = OUTLINED_FUNCTION_43_3();
          if (0x28081C000 != -1)
          {
            v94 = OUTLINED_FUNCTION_0_12();
          }

          OUTLINED_FUNCTION_6_12(v94, qword_2808293C8);

          v95 = sub_2706E58BC();
          v96 = sub_2706E5C1C();
          if (OUTLINED_FUNCTION_5_11(v96))
          {
            OUTLINED_FUNCTION_29_1();
            v97 = OUTLINED_FUNCTION_34_5();
            *&v286 = v97;
            *v57 = 136446210;
            *((v23 & 0x1FFFFFFFFFFFFFFFLL) + 4) = OUTLINED_FUNCTION_14_10();
            OUTLINED_FUNCTION_22_7();
            _os_log_impl(v98, v99, v100, v101, (v23 & 0x1FFFFFFFFFFFFFFFLL), 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v97);
            OUTLINED_FUNCTION_8_0();
            OUTLINED_FUNCTION_12_0();
          }

          OUTLINED_FUNCTION_21_8();
          if (swift_unknownObjectWeakLoadStrong())
          {
            sub_2706C786C(v2, 1, 0);
LABEL_81:
            swift_unknownObjectRelease();
          }

          goto LABEL_109;
        case 6:
          v59 = OUTLINED_FUNCTION_43_3();
          if (0x28081C000 != -1)
          {
            v59 = OUTLINED_FUNCTION_0_12();
          }

          OUTLINED_FUNCTION_6_12(v59, qword_2808293C8);

          v60 = sub_2706E58BC();
          v61 = sub_2706E5C1C();
          if (OUTLINED_FUNCTION_5_11(v61))
          {
            OUTLINED_FUNCTION_29_1();
            v62 = OUTLINED_FUNCTION_32_4();
            OUTLINED_FUNCTION_30_2(v62);
            *v16 = 136446210;
            *(v16 + 4) = OUTLINED_FUNCTION_14_10();
            OUTLINED_FUNCTION_22_7();
            OUTLINED_FUNCTION_52_2(v63, v64, v65, v66);
            OUTLINED_FUNCTION_8_12();
            OUTLINED_FUNCTION_8_0();
          }

          OUTLINED_FUNCTION_21_8();
          sub_2706DBB8C(v57 + 24, &v286);
          v67 = __swift_project_boxed_opaque_existential_1(&v286, v288);
          type metadata accessor for Completion();
          swift_initStackObject();
          OUTLINED_FUNCTION_10_9();
          sub_2706DD84C();
          v68 = *v67;
          sub_27068A0A4();

          __swift_destroy_boxed_opaque_existential_1(&v286);
          v69 = *MEMORY[0x277CCA590];
          sub_2706E5A3C();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081DAB0, &qword_2706ED200);
          v70 = OUTLINED_FUNCTION_51_3();
          *(v70 + 16) = xmmword_2706E8FC0;
          v71 = *MEMORY[0x277CCA068];
          *(v70 + 32) = sub_2706E5A3C();
          *(v70 + 40) = v72;
          OUTLINED_FUNCTION_46_3();
          *(v70 + 72) = MEMORY[0x277D837D0];
          *(v70 + 48) = 0xD000000000000043;
          *(v70 + 56) = v73;
          sub_2706E59AC();
          v74 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
          v75 = OUTLINED_FUNCTION_38_4();
          if (swift_unknownObjectWeakLoadStrong())
          {
LABEL_102:
            v286 = xmmword_2706EAA40;
            v287 = 0;
            v288 = 0;
            OUTLINED_FUNCTION_39_2();
            OUTLINED_FUNCTION_10_9();
            v227 = sub_2706DD84C();
            sub_2706C77D8(v2, &v286, v227);

            swift_unknownObjectRelease();
          }

LABEL_103:
          if (swift_unknownObjectWeakLoadStrong())
          {
            v228 = v75;
            v229 = OUTLINED_FUNCTION_45_3();
            sub_2706C786C(v229, v230, v75);
            swift_unknownObjectRelease();

            sub_2706E3200(v23);
            return;
          }

          goto LABEL_109;
      }

LABEL_28:
      OUTLINED_FUNCTION_35_4();
      if (swift_getEnumCaseMultiPayload() - 1 > 1)
      {
        *&v286 = 0;
        *(&v286 + 1) = 0xE000000000000000;
        sub_2706E31A8(v23);
        sub_2706E5E3C();
        MEMORY[0x2743A5EF0](0xD00000000000001DLL, 0x80000002706F1C40);
        v285[0] = *(v2 + 40);
        sub_2706E5F2C();
        MEMORY[0x2743A5EF0](2108704, 0xE300000000000000);
        sub_2706E5F2C();
        sub_2706E5F8C();
        __break(1u);
        JUMPOUT(0x2706E21E0);
      }

      v79 = sub_2706E314C(v46);
      v80 = v283;
      if (qword_28081C750 != -1)
      {
        goto LABEL_144;
      }

      goto LABEL_30;
    case 5uLL:
      if (v23 != 0xA000000000000000)
      {
        goto LABEL_28;
      }

      OUTLINED_FUNCTION_35_4();
      if (swift_getEnumCaseMultiPayload())
      {
        sub_2706E0250(0xA000000000000000);
        v78 = v46;
        goto LABEL_33;
      }

      v280 = v17;
      v164 = *(v46 + 8);
      v283 = *v46;
      v165 = *(v46 + 16);
      v166 = *(v46 + 24);
      v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081DFF8, &unk_2706EE6D0);
      v168 = *(v167 + 80);
      v282 = *(v46 + *(v167 + 96));
      v169 = v276;
      (*(v278 + 32))(v277, v46 + v168, v276);
      if (qword_28081C750 != -1)
      {
        OUTLINED_FUNCTION_0_12();
      }

      v273[1] = __swift_project_value_buffer(v281, qword_2808293C8);
      v170 = sub_2706E58BC();
      v171 = sub_2706E5C1C();
      if (OUTLINED_FUNCTION_13_0(v171))
      {
        v172 = swift_slowAlloc();
        *v172 = 0;
        OUTLINED_FUNCTION_22_7();
        _os_log_impl(v173, v174, v175, v176, v172, 2u);
        OUTLINED_FUNCTION_12_0();
      }

      v177 = *(v2 + 32);
      v178 = objc_allocWithZone(type metadata accessor for DragForwarder_iOS(0));

      v179 = v283;

      v180 = sub_2706E3448(v177, v179, v166, v2, v178);
      v181 = v275;
      (*(v278 + 16))(v275, v277, v169);
      v80 = v180;
      v182 = sub_2706E332C(v80, v181);
      sub_2706DDBD8();

      v279 = v182;
      sub_2706E0250(v183);
      v281 = v80;
      v184 = sub_270689978();
      if (!v184)
      {
        goto LABEL_112;
      }

      v185 = v184;
      v186 = *&v281[OBJC_IVAR____TtC13UniversalDrag17DragForwarder_iOS_pasteboardContents];
      if (v186)
      {
        Strong = swift_unknownObjectWeakLoadStrong();
        v275 = v185;
        v273[0] = v186;
        if (Strong)
        {
          v80 = Strong;
          *&v286 = v185;
          *(&v286 + 1) = v186;
          v287 = v164;
          v288 = v165;
          type metadata accessor for Completion();
          OUTLINED_FUNCTION_39_2();
          swift_retain_n();

          v185 = v275;
          OUTLINED_FUNCTION_24_5();
          sub_2706DD84C();
          v188 = OUTLINED_FUNCTION_9_9();
          sub_2706C77D8(v188, v189, v190);

          swift_unknownObjectRelease();
          sub_2706B2C20(v286, *(&v286 + 1));
        }

        else
        {
        }

        v251 = *&v185[OBJC_IVAR____TtC13UniversalDrag16DragPresentation_items];
        v252 = sub_2706C2200(v251);
        v17 = (v251 & 0xC000000000000001);

        v253 = 0;
        v280 = MEMORY[0x277D84F90];
        while (v252 != v253)
        {
          if (v17)
          {
            v254 = v2;
            v80 = MEMORY[0x2743A62C0](v253, v251);
          }

          else
          {
            if (v253 >= *((v251 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_143;
            }

            v254 = v2;
            v80 = *(v251 + 8 * v253 + 32);
          }

          if (__OFADD__(v253, 1))
          {
            __break(1u);
LABEL_143:
            __break(1u);
LABEL_144:
            v79 = OUTLINED_FUNCTION_0_12();
LABEL_30:
            OUTLINED_FUNCTION_6_12(v79, qword_2808293C8);
            v81 = v279;
            sub_2706E30E8(v80, v279);
            v82 = sub_2706E58BC();
            v83 = sub_2706E5BEC();
            if (OUTLINED_FUNCTION_13_0(v83))
            {
              v84 = OUTLINED_FUNCTION_29_1();
              v285[0] = swift_slowAlloc();
              *v84 = 136315138;
              v288 = v17;
              v85 = __swift_allocate_boxed_opaque_existential_1(&v286);
              sub_2706E30E8(v81, v85);
              v86 = sub_2706CB238(&v286);
              v88 = v87;
              sub_2706E314C(v81);
              v89 = sub_2706C83E8(v86, v88, v285);

              *(v84 + 4) = v89;
              OUTLINED_FUNCTION_40_2();
              _os_log_impl(v90, v91, v92, v93, v84, 0xCu);
              OUTLINED_FUNCTION_8_12();
              OUTLINED_FUNCTION_12_0();

              return;
            }

            v78 = v81;
LABEL_33:
            sub_2706E314C(v78);
            return;
          }

          v255 = v80[7];
          if (v255)
          {
            v284[80] = 1;
            v284[72] = 1;
            v285[0] = v253;
            v285[1] = 0;
            v285[2] = 0;
            LOBYTE(v285[3]) = 1;
            v285[4] = 0;
            v285[5] = 0;
            LOBYTE(v285[6]) = 1;
            v285[7] = 0;
            v285[8] = v255;
            v286 = v253;
            v287 = 0;
            LOBYTE(v288) = 1;
            v289 = 0;
            v290 = 0;
            v291 = 1;
            v292 = 0;
            v293 = v255;

            sub_27069111C(v285, v284);
            sub_270691178(&v286);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v280 = sub_2706E2814(0, v280[1].Kind + 1, 1, v280);
            }

            v257 = v280[1].Kind;
            v256 = v280[1].Description;
            if (v257 >= v256 >> 1)
            {
              v280 = sub_2706E2814(v256 > 1, v257 + 1, 1, v280);
            }

            v258 = v280;
            v280[1].Kind = v257 + 1;
            memcpy(&v258[2] + 72 * v257, v285, 0x48uLL);
            ++v253;
            v2 = v254;
            v185 = v275;
          }

          else
          {

            ++v253;
            v2 = v254;
          }
        }

        if (v280[1].Kind || v185[OBJC_IVAR____TtC13UniversalDrag16DragPresentation_badgeStyle] != 5)
        {
          v260 = sub_2706E58BC();
          v261 = sub_2706E5C1C();
          v262 = OUTLINED_FUNCTION_13_0(v261);
          v259 = v276;
          if (v262)
          {
            v263 = swift_slowAlloc();
            *v263 = 0;
            OUTLINED_FUNCTION_22_7();
            _os_log_impl(v264, v265, v266, v267, v263, 2u);
            OUTLINED_FUNCTION_12_0();
          }

          v268 = v185[OBJC_IVAR____TtC13UniversalDrag16DragPresentation_badgeStyle];
          if (swift_unknownObjectWeakLoadStrong())
          {
            *&v286 = v280;
            *(&v286 + 1) = v268 | 0x1000000000000000;
            type metadata accessor for Completion();
            v287 = 0;
            v288 = 0;
            OUTLINED_FUNCTION_39_2();
            OUTLINED_FUNCTION_24_5();
            sub_2706DD84C();
            v269 = OUTLINED_FUNCTION_9_9();
            sub_2706C77D8(v269, v270, v271);

            swift_unknownObjectRelease();
            sub_2706B2C20(v286, *(&v286 + 1));
          }

          else
          {
          }
        }

        else
        {

          v259 = v276;
        }

        v272 = swift_unknownObjectWeakLoadStrong();

        sub_2706E3200(0xA000000000000000);

        (*(v278 + 8))(v277, v259);
        if (v272)
        {
          swift_unknownObjectRelease();
        }
      }

      else
      {

LABEL_112:
        v231 = *MEMORY[0x277CCA590];
        v232 = sub_2706E5A3C();
        v234 = v233;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081DAB0, &qword_2706ED200);
        v235 = OUTLINED_FUNCTION_51_3();
        *(v235 + 16) = xmmword_2706E8FC0;
        v236 = *MEMORY[0x277CCA068];
        *(v235 + 32) = sub_2706E5A3C();
        *(v235 + 40) = v237;
        OUTLINED_FUNCTION_46_3();
        *(v235 + 72) = MEMORY[0x277D837D0];
        *(v235 + 48) = 0xD00000000000004DLL;
        *(v235 + 56) = v238;
        v239 = sub_2706E59AC();
        v240 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
        v241 = sub_2706C82B8(v232, v234, -6709, v239);
        v242 = sub_2706E58BC();
        v243 = sub_2706E5BFC();
        if (OUTLINED_FUNCTION_13_0(v243))
        {
          v244 = swift_slowAlloc();
          *v244 = 0;
          OUTLINED_FUNCTION_40_2();
          _os_log_impl(v245, v246, v247, v248, v244, 2u);
          OUTLINED_FUNCTION_8_0();
        }

        v249 = v274;
        *v274 = v241;
        swift_storeEnumTagMultiPayload();
        v250 = v241;
        sub_2706E05C8(v249);

        sub_2706E3200(0xA000000000000000);

        sub_2706E314C(v249);
        (*(v278 + 8))(v277, v169);
      }

      return;
    default:
      goto LABEL_28;
  }
}

uint64_t sub_2706E2228()
{
  sub_2706A59B4(v0 + 16);
  v1 = *(v0 + 32);

  sub_2706E3200(*(v0 + 40));
  return v0;
}

uint64_t sub_2706E2258()
{
  sub_2706E2228();

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

uint64_t sub_2706E22D8()
{
  result = sub_2706E576C();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_13UniversalDrag0B21ForwardingCoordinatorC5State33_783013B8C6E53A71170330565A32ABC8LLO(void *a1)
{
  v1 = *a1 >> 61;
  if (v1 <= 4)
  {
    return v1;
  }

  else
  {
    return (*a1 >> 3) + 5;
  }
}

uint64_t sub_2706E23A8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7B && *(a1 + 8))
    {
      v2 = *a1 + 122;
    }

    else
    {
      v2 = (((*a1 >> 57) >> 4) | (8 * ((*a1 >> 57) & 8 | *a1 & 7))) ^ 0x7F;
      if (v2 >= 0x7A)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_2706E23FC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7A)
  {
    *result = a2 - 123;
    if (a3 >= 0x7B)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7B)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 3) & 0xF | (16 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

unint64_t *sub_2706E244C(unint64_t *result, uint64_t a2)
{
  if (a2 < 5)
  {
    v2 = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 61);
  }

  else
  {
    v2 = (8 * (a2 - 5)) | 0xA000000000000000;
  }

  *result = v2;
  return result;
}

uint64_t get_enum_tag_for_layout_string_13UniversalDrag15PeerDeviceEventO(uint64_t a1)
{
  if (((*(a1 + 8) >> 60) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return (*(a1 + 8) >> 60) & 3;
  }
}

void *sub_2706E24B0(void *result, uint64_t a2)
{
  if (a2 < 3)
  {
    result[1] = result[1] & 0xCFFFFFFFFFFFFFFFLL | (a2 << 60);
  }

  else
  {
    *result = (a2 - 3);
    result[1] = 0x3000000000000000;
    result[2] = 0;
    result[3] = 0;
  }

  return result;
}

unint64_t sub_2706E24EC()
{
  result = qword_28081DF30;
  if (!qword_28081DF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081DF30);
  }

  return result;
}

uint64_t sub_2706E2540@<X0>(void *a1@<X8>)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_2706C9980(v1);

    return swift_unknownObjectRelease();
  }

  else
  {
    *a1 = 1;
  }

  return result;
}

uint64_t sub_2706E25FC(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
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

uint64_t sub_2706E2658(uint64_t result)
{
  if (result + 1 > *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    return sub_2706E5B2C();
  }

  return result;
}

uint64_t sub_2706E26CC(uint64_t result, uint64_t (*a2)(BOOL))
{
  v3 = *(*v2 + 24);
  if (result + 1 > (v3 >> 1))
  {
    result = a2(v3 > 1);
    *v2 = result;
  }

  return result;
}

uint64_t sub_2706E2714(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081E000, &qword_2706EE6E0);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 16);
      if (v5)
      {
LABEL_13:
        sub_2706BF75C((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_2706E2814(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D8A0, &qword_2706EBB30);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 72);
      if (v5)
      {
LABEL_13:
        sub_2706BF77C((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_2706E291C()
{
  OUTLINED_FUNCTION_49_2();
  if ((v5 & 1) == 0)
  {
    v6 = v4;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_27_5();
  if (v7 == v8)
  {
LABEL_7:
    OUTLINED_FUNCTION_25_4(v6);
    if (v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D238, &qword_2706EA060);
      v9 = OUTLINED_FUNCTION_42_3();
      v10 = _swift_stdlib_malloc_size(v9);
      OUTLINED_FUNCTION_13_11(v10);
      if (v1)
      {
LABEL_9:
        v11 = OUTLINED_FUNCTION_23_6();
        sub_2706BF75C(v11, v12, v13);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else
    {
      v9 = MEMORY[0x277D84F90];
      if (v1)
      {
        goto LABEL_9;
      }
    }

    memcpy((v9 + 32), (v0 + 32), 16 * v2);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_48_3();
  if (!v7)
  {
    OUTLINED_FUNCTION_26_5();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_2706E29D0()
{
  OUTLINED_FUNCTION_49_2();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_27_5();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_25_4(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081E008, &qword_2706EE6E8);
      v8 = OUTLINED_FUNCTION_42_3();
      v9 = _swift_stdlib_malloc_size(v8);
      OUTLINED_FUNCTION_13_11(v9);
      if (v1)
      {
LABEL_9:
        v10 = OUTLINED_FUNCTION_23_6();
        sub_2706BF75C(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081DDF0, &unk_2706EE6F0);
    OUTLINED_FUNCTION_31_5();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_48_3();
  if (!v6)
  {
    OUTLINED_FUNCTION_26_5();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_2706E2A8C()
{
  OUTLINED_FUNCTION_49_2();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_27_5();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_25_4(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D8A8, &qword_2706EBB38);
      v8 = OUTLINED_FUNCTION_42_3();
      v9 = _swift_stdlib_malloc_size(v8);
      OUTLINED_FUNCTION_13_11(v9);
      if (v1)
      {
LABEL_9:
        v10 = OUTLINED_FUNCTION_23_6();
        sub_2706C21FC(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D8B0, &qword_2706EBB40);
    OUTLINED_FUNCTION_31_5();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_48_3();
  if (!v6)
  {
    OUTLINED_FUNCTION_26_5();
    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_2706E2B48(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081E010, &qword_2706EE700);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 16);
      if (v5)
      {
LABEL_13:
        sub_2706C21FC((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081E018, &qword_2706EE708);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_2706E2C58()
{
  OUTLINED_FUNCTION_49_2();
  if ((v5 & 1) == 0)
  {
    v6 = v4;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_27_5();
  if (v7 == v8)
  {
LABEL_7:
    OUTLINED_FUNCTION_25_4(v6);
    if (v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081D568, &unk_2706EB370);
      v9 = swift_allocObject();
      v10 = _swift_stdlib_malloc_size(v9);
      v9[2] = v2;
      v9[3] = 2 * ((v10 - 32) / 40);
      if (v1)
      {
LABEL_9:
        v11 = OUTLINED_FUNCTION_23_6();
        sub_2706BF7C4(v11, v12, v13);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081DEC0, qword_2706EEF70);
    OUTLINED_FUNCTION_31_5();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_48_3();
  if (!v7)
  {
    OUTLINED_FUNCTION_26_5();
    goto LABEL_7;
  }

  __break(1u);
}

unint64_t sub_2706E2D38()
{
  result = qword_28081DF38;
  if (!qword_28081DF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081DF38);
  }

  return result;
}

unint64_t sub_2706E2D8C()
{
  result = qword_28081DF40;
  if (!qword_28081DF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081DF40);
  }

  return result;
}

unint64_t sub_2706E2DE0()
{
  result = qword_28081DF48;
  if (!qword_28081DF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081DF48);
  }

  return result;
}

unint64_t sub_2706E2E34()
{
  result = qword_28081DF50;
  if (!qword_28081DF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081DF50);
  }

  return result;
}

unint64_t sub_2706E2E88()
{
  result = qword_28081DF58;
  if (!qword_28081DF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081DF58);
  }

  return result;
}

unint64_t sub_2706E2EDC()
{
  result = qword_28081DF60;
  if (!qword_28081DF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081DF60);
  }

  return result;
}

unint64_t sub_2706E2F30()
{
  result = qword_28081DF68;
  if (!qword_28081DF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081DF68);
  }

  return result;
}

unint64_t sub_2706E2F84()
{
  result = qword_28081DF70;
  if (!qword_28081DF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081DF70);
  }

  return result;
}

unint64_t sub_2706E2FD8()
{
  result = qword_28081DF78;
  if (!qword_28081DF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081DF78);
  }

  return result;
}

unint64_t sub_2706E302C()
{
  result = qword_28081DFD8;
  if (!qword_28081DFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081DFD8);
  }

  return result;
}

uint64_t sub_2706E3080(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2706E30E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DragForwardingCoordinator.Event(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2706E314C(uint64_t a1)
{
  v2 = type metadata accessor for DragForwardingCoordinator.Event(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2706E31A8(unint64_t result)
{
  switch(result >> 61)
  {
    case 0uLL:
    case 1uLL:
    case 2uLL:
    case 3uLL:

      break;
    case 4uLL:
      result = (result & 0x1FFFFFFFFFFFFFFFLL);
      break;
    default:
      return result;
  }

  return result;
}

void sub_2706E3200(unint64_t a1)
{
  switch(a1 >> 61)
  {
    case 0uLL:
    case 1uLL:
    case 2uLL:
    case 3uLL:

      break;
    case 4uLL:

      break;
    default:
      return;
  }
}

uint64_t sub_2706E3258(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12 = type metadata accessor for DragForwarder_iOS(0);
  v13 = &off_28806B728;
  *&v11 = a1;
  type metadata accessor for Completions();
  v6 = swift_allocObject();
  v7 = MEMORY[0x277D84F90];
  *(v6 + 16) = MEMORY[0x277D84F90];
  *(a3 + 16) = v6;
  *(a3 + OBJC_IVAR____TtCC13UniversalDrag25DragForwardingCoordinatorP33_783013B8C6E53A71170330565A32ABC87Context_queuedPresentationUpdates) = v7;
  sub_2706E368C(&v11, a3 + 24);
  v8 = OBJC_IVAR____TtCC13UniversalDrag25DragForwardingCoordinatorP33_783013B8C6E53A71170330565A32ABC87Context_target;
  v9 = sub_2706E576C();
  (*(*(v9 - 8) + 32))(a3 + v8, a2, v9);
  return a3;
}

uint64_t sub_2706E332C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DragForwarder_iOS(0);
  v17[3] = v4;
  v17[4] = &off_28806B728;
  v17[0] = a1;
  v5 = type metadata accessor for DragForwardingCoordinator.Context(0);
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  v8 = swift_allocObject();
  v9 = __swift_mutable_project_boxed_opaque_existential_1(v17, v4);
  v10 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v17[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v13 + 16))(v12);
  v14 = sub_2706E3258(*v12, a2, v8);
  __swift_destroy_boxed_opaque_existential_1(v17);
  return v14;
}

uint64_t sub_2706E3448(uint64_t a1, uint64_t a2, double a3, uint64_t a4, char *a5)
{
  ObjectType = swift_getObjectType();
  *&a5[OBJC_IVAR____TtC13UniversalDrag17DragForwarder_iOS_privateDragPresentation] = 0;
  v10 = OBJC_IVAR____TtC13UniversalDrag17DragForwarder_iOS_druidSessionProxy;
  *&a5[OBJC_IVAR____TtC13UniversalDrag17DragForwarder_iOS_druidSessionProxy] = 0;
  v11 = &a5[OBJC_IVAR____TtC13UniversalDrag17DragForwarder_iOS_pasteboardCompletion];
  *v11 = 0;
  *(v11 + 1) = 0;
  v12 = OBJC_IVAR____TtC13UniversalDrag17DragForwarder_iOS_pasteboardContents;
  *&a5[OBJC_IVAR____TtC13UniversalDrag17DragForwarder_iOS_pasteboardContents] = 0;
  if (a3 != 1.0)
  {
    goto LABEL_9;
  }

  *&a5[OBJC_IVAR____TtC13UniversalDrag17DragForwarder_iOS_pasteboardController] = a1;
  v13 = *(a1 + 88);
  if (!v13)
  {
    __break(1u);
LABEL_9:
    result = sub_2706E5F8C();
    __break(1u);
    return result;
  }

  v14 = ObjectType;
  *&a5[v12] = v13;
  v15 = *(a2 + 16);
  *&a5[v10] = v15;
  v16 = qword_28081C730;

  v17 = v15;

  if (v16 != -1)
  {
    swift_once();
  }

  v18 = sub_2706E58DC();
  v19 = __swift_project_value_buffer(v18, qword_2808292D8);
  (*(*(v18 - 8) + 16))(&a5[OBJC_IVAR____TtC13UniversalDrag17DragForwarder_iOS_logger], v19, v18);
  *&a5[OBJC_IVAR____TtC13UniversalDrag17DragForwarder_iOS_delegate + 8] = &off_28806E630;
  swift_unknownObjectUnownedInit();
  v24.receiver = a5;
  v24.super_class = v14;
  v20 = objc_msgSendSuper2(&v24, sel_init);
  v21 = *&v20[OBJC_IVAR____TtC13UniversalDrag17DragForwarder_iOS_druidSessionProxy];
  if (v21)
  {
    [v21 setDelegate_];
  }

  v22 = v20;
  sub_2706986E4(v20, &off_28806B718);

  return v22;
}

uint64_t sub_2706E368C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void sub_2706E36A4()
{
  sub_2706E3724();
  if (v0 <= 0x3F)
  {
    sub_2706E3864();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_2706E3724()
{
  if (!qword_28081E030)
  {
    MEMORY[0x28223BE20](0);
    type metadata accessor for DragController.DragSessionProxy();
    type metadata accessor for CGPoint(255);
    sub_2706E576C();
    type metadata accessor for Completion();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_28081E030);
    }
  }
}

unint64_t sub_2706E3864()
{
  result = qword_28081E038;
  if (!qword_28081E038)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_28081E038);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PeerDeviceEvent.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF9)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 8;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v5 = v6 - 8;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for PeerDeviceEvent.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
        JUMPOUT(0x2706E3A14);
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PeerDeviceEvent.PrepareSurrogateCodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
        JUMPOUT(0x2706E3B18);
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_2706E3BB8(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x2706E3C54);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_2706E3C90()
{
  result = qword_28081E040;
  if (!qword_28081E040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081E040);
  }

  return result;
}

unint64_t sub_2706E3CE8()
{
  result = qword_28081E048;
  if (!qword_28081E048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081E048);
  }

  return result;
}

unint64_t sub_2706E3D40()
{
  result = qword_28081E050;
  if (!qword_28081E050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081E050);
  }

  return result;
}

unint64_t sub_2706E3D98()
{
  result = qword_28081E058;
  if (!qword_28081E058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081E058);
  }

  return result;
}

unint64_t sub_2706E3DF0()
{
  result = qword_28081E060;
  if (!qword_28081E060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081E060);
  }

  return result;
}

unint64_t sub_2706E3E48()
{
  result = qword_28081E068;
  if (!qword_28081E068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081E068);
  }

  return result;
}

unint64_t sub_2706E3EA0()
{
  result = qword_28081E070;
  if (!qword_28081E070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081E070);
  }

  return result;
}

unint64_t sub_2706E3EF8()
{
  result = qword_28081E078;
  if (!qword_28081E078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081E078);
  }

  return result;
}

unint64_t sub_2706E3F50()
{
  result = qword_28081E080;
  if (!qword_28081E080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081E080);
  }

  return result;
}

unint64_t sub_2706E3FA8()
{
  result = qword_28081E088;
  if (!qword_28081E088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081E088);
  }

  return result;
}

unint64_t sub_2706E4000()
{
  result = qword_28081E090;
  if (!qword_28081E090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081E090);
  }

  return result;
}

unint64_t sub_2706E4058()
{
  result = qword_28081E098;
  if (!qword_28081E098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081E098);
  }

  return result;
}

unint64_t sub_2706E40B0()
{
  result = qword_28081E0A0;
  if (!qword_28081E0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081E0A0);
  }

  return result;
}

unint64_t sub_2706E4108()
{
  result = qword_28081E0A8;
  if (!qword_28081E0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081E0A8);
  }

  return result;
}

unint64_t sub_2706E4160()
{
  result = qword_28081E0B0;
  if (!qword_28081E0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081E0B0);
  }

  return result;
}

unint64_t sub_2706E41B8()
{
  result = qword_28081E0B8;
  if (!qword_28081E0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081E0B8);
  }

  return result;
}

unint64_t sub_2706E4210()
{
  result = qword_28081E0C0;
  if (!qword_28081E0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081E0C0);
  }

  return result;
}

unint64_t sub_2706E4268()
{
  result = qword_28081E0C8;
  if (!qword_28081E0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081E0C8);
  }

  return result;
}

unint64_t sub_2706E42C0()
{
  result = qword_28081E0D0;
  if (!qword_28081E0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081E0D0);
  }

  return result;
}

unint64_t sub_2706E4318()
{
  result = qword_28081E0D8;
  if (!qword_28081E0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081E0D8);
  }

  return result;
}

unint64_t sub_2706E4370()
{
  result = qword_28081E0E0;
  if (!qword_28081E0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081E0E0);
  }

  return result;
}

unint64_t sub_2706E43C8()
{
  result = qword_28081E0E8;
  if (!qword_28081E0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081E0E8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_12()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_3_10()
{
  v2 = *(v0 - 328);

  return sub_2706E5FFC();
}

BOOL OUTLINED_FUNCTION_5_11(os_log_type_t a1)
{
  sub_2706E3200(v2);

  return os_log_type_enabled(v1, a1);
}

void OUTLINED_FUNCTION_8_12()
{
  __swift_destroy_boxed_opaque_existential_1(v0);

  JUMPOUT(0x2743A75B0);
}

uint64_t OUTLINED_FUNCTION_12_10()
{

  return sub_2706E608C();
}

uint64_t OUTLINED_FUNCTION_13_11(uint64_t result)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = 2 * ((result - 32) / 16);
  return result;
}

uint64_t OUTLINED_FUNCTION_14_10()
{

  return sub_2706C83E8(45, 0xE100000000000000, (v0 - 224));
}

uint64_t OUTLINED_FUNCTION_17_7()
{

  return sub_2706E608C();
}

void OUTLINED_FUNCTION_21_8()
{

  sub_2706E0250(0xA000000000000008);
}

void OUTLINED_FUNCTION_25_4(uint64_t a1@<X8>)
{
  if (a1 <= *(v1 + 16))
  {
    v2 = *(v1 + 16);
  }
}

uint64_t OUTLINED_FUNCTION_31_5()
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_32_4()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_33_5()
{

  return sub_2706E60DC();
}

uint64_t OUTLINED_FUNCTION_34_5()
{

  return swift_slowAlloc();
}

id OUTLINED_FUNCTION_38_4()
{

  return sub_2706C82B8(v0, v1, -6723, v2);
}

uint64_t OUTLINED_FUNCTION_39_2()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_42_3()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_43_3()
{
  v2 = *(v0 + 1872);
}

uint64_t OUTLINED_FUNCTION_47_3()
{
  v3 = *(v0 + 8);
  result = v1;
  v5 = *(v2 - 328);
  return result;
}

uint64_t OUTLINED_FUNCTION_51_3()
{

  return swift_allocObject();
}

void OUTLINED_FUNCTION_52_2(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0xCu);
}

uint64_t OUTLINED_FUNCTION_53_2()
{
  v2 = *(v0 + 1872);
}

id sub_2706E4848(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8)
{
  v11 = *a8;
  v12 = sub_2706E5A3C();
  return sub_2706E4FD0(v12, v13, a1, a2, a3, 0);
}

uint64_t sub_2706E48CC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E69616D6F64 && a2 == 0xE600000000000000;
  if (v4 || (sub_2706E631C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701080931 && a2 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_2706E631C();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_2706E4990(char a1)
{
  if (a1)
  {
    return 1701080931;
  }

  else
  {
    return 0x6E69616D6F64;
  }
}

uint64_t sub_2706E49C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2706E48CC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2706E49EC(uint64_t a1)
{
  v2 = sub_2706E4F7C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2706E4A28(uint64_t a1)
{
  v2 = sub_2706E4F7C();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_2706E4A64(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081E0F0, &qword_2706EEFF0);
  v4 = OUTLINED_FUNCTION_4(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = a1[4];
  v8 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2706E4F7C();
  sub_2706E668C();
  if (!v1)
  {
    v9 = sub_2706E603C();
    v11 = v10;
    v13 = sub_2706E604C();
    v14 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v8 = sub_2706C82B8(v9, v11, v13, 0);
    v15 = OUTLINED_FUNCTION_0_13();
    v16(v15);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v8;
}

void sub_2706E4C34(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28081E100, &qword_2706EEFF8);
  v4 = OUTLINED_FUNCTION_4(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  v10 = &v14[-v9];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2706E4F7C();
  sub_2706E66AC();
  v12 = sub_2706E557C();
  v13 = [v12 domain];
  sub_2706E5A3C();

  v14[15] = 0;
  sub_2706E60BC();
  if (v1)
  {
    (*(v6 + 8))(v10, v3);
  }

  else
  {

    [v12 code];
    v14[14] = 1;
    sub_2706E60CC();
    (*(v6 + 8))(v10, v3);
  }
}

void *sub_2706E4E04@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_2706E4A64(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

id sub_2706E4E4C()
{
  v0 = sub_2706E557C();
  result = [v0 domain];
  if (result)
  {
    v2 = result;

    v3 = [v2 description];
    v4 = sub_2706E5A3C();
    v6 = v5;

    MEMORY[0x2743A5EF0](v4, v6);

    MEMORY[0x2743A5EF0](10272, 0xE200000000000000);
    v7 = sub_2706E557C();
    [v7 code];

    v8 = sub_2706E611C();
    MEMORY[0x2743A5EF0](v8);

    MEMORY[0x2743A5EF0](41, 0xE100000000000000);
    return 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_2706E4F7C()
{
  result = qword_28081E0F8;
  if (!qword_28081E0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081E0F8);
  }

  return result;
}

id sub_2706E4FD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v9 = MEMORY[0x277D837D0];
  sub_2706E59AC();
  if (a5)
  {
    v10 = *MEMORY[0x277CCA068];
    v11 = sub_2706E5A3C();
    v13 = v12;
    v31 = v9;
    *&v30 = a4;
    *(&v30 + 1) = a5;
    sub_270690AAC(&v30, v27);
    swift_isUniquelyReferenced_nonNull_native();
    sub_27068FE04(v27, v11, v13);
  }

  if (a6)
  {
    v14 = *MEMORY[0x277CCA7E8];
    v15 = sub_2706E5A3C();
    v17 = v16;
    swift_getErrorValue();
    v18 = v28;
    v19 = v29;
    v31 = v29;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v30);
    (*(*(v19 - 8) + 16))(boxed_opaque_existential_1, v18, v19);
    sub_270690AAC(&v30, v27);
    swift_isUniquelyReferenced_nonNull_native();
    sub_27068FE04(v27, v15, v17);
  }

  v21 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v22 = sub_2706E5A0C();

  v23 = sub_2706E598C();

  v24 = [v21 initWithDomain:v22 code:a3 userInfo:v23];

  return v24;
}

_BYTE *storeEnumTagSinglePayload for P2PError.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x2706E52C0);
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

uint64_t sub_2706E52F8(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 8))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2706E5338(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2706E5388()
{
  result = qword_28081E108;
  if (!qword_28081E108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081E108);
  }

  return result;
}

unint64_t sub_2706E53E0()
{
  result = qword_28081E110;
  if (!qword_28081E110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081E110);
  }

  return result;
}

unint64_t sub_2706E5438()
{
  result = qword_28081E118;
  if (!qword_28081E118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28081E118);
  }

  return result;
}