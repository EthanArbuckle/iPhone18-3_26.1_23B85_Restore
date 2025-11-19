uint64_t FeatureFlagProvider.isResponseFrameworkEnabled.getter()
{
  v0 = sub_2664DFE38();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_26629FC7C(0xD000000000000012, 0x80000002664F5E00, 0x6964754169726953, 0xE90000000000006FLL);
  v6 = sub_26629FC7C(0x5452414D53, 0xE500000000000000, 0xD000000000000011, 0x80000002664F5E20);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v0, qword_280F914F0);
  swift_beginAccess();
  (*(v1 + 16))(v4, v7, v0);
  v8 = sub_2664DFE18();
  v9 = sub_2664E06C8();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 67109120;
    v11 = v5 & v6;
    *(v10 + 4) = v11 & 1;
    _os_log_impl(&dword_26629C000, v8, v9, "FeatureFlagProvider#isResponseFrameworkEnabled#SiriAudio %{BOOL}d", v10, 8u);
    MEMORY[0x266784AD0](v10, -1, -1);
  }

  else
  {

    v11 = v5 & v6;
  }

  (*(v1 + 8))(v4, v0);
  return v11 & 1;
}

uint64_t sub_26629FC7C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = sub_2664DFE38();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = (MEMORY[0x28223BE20])();
  v13 = &v40[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v15 = &v40[-v14];
  v16 = [objc_opt_self() shared];
  v43 = a1;
  v17 = sub_2664E02A8();
  v44 = a3;
  v18 = sub_2664E02A8();
  v19 = [v16 stateForFeature:v17 domain:v18];

  if (v19)
  {
    v20 = v9;
    v21 = v8;
    v42 = [v19 value];
    v22 = v42 == 1;
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v23 = __swift_project_value_buffer(v8, qword_280F914F0);
    swift_beginAccess();
    v24 = v20;
    (*(v20 + 16))(v15, v23, v21);

    v25 = sub_2664DFE18();
    v26 = sub_2664E06C8();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v41 = v22;
      v29 = v28;
      v45 = v28;
      *v27 = 136446722;
      *(v27 + 4) = sub_2662A320C(v43, a2, &v45);
      *(v27 + 12) = 2082;
      *(v27 + 14) = sub_2662A320C(v44, a4, &v45);
      *(v27 + 22) = 2082;
      if (v42 == 1)
      {
        v30 = 0x64656C62616E65;
      }

      else
      {
        v30 = 0x64656C6261736964;
      }

      if (v42 == 1)
      {
        v31 = 0xE700000000000000;
      }

      else
      {
        v31 = 0xE800000000000000;
      }

      v32 = sub_2662A320C(v30, v31, &v45);

      *(v27 + 24) = v32;
      _os_log_impl(&dword_26629C000, v25, v26, "FeatureFlagProvider#featureIsEnabled Feature flag %{public}s/%{public}s : %{public}s", v27, 0x20u);
      swift_arrayDestroy();
      v33 = v29;
      v22 = v41;
      MEMORY[0x266784AD0](v33, -1, -1);
      MEMORY[0x266784AD0](v27, -1, -1);
    }

    (*(v24 + 8))(v15, v21);
  }

  else
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v34 = __swift_project_value_buffer(v8, qword_280F914F0);
    swift_beginAccess();
    (*(v9 + 16))(v13, v34, v8);

    v35 = sub_2664DFE18();
    v36 = sub_2664E06C8();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v45 = v38;
      *v37 = 136446466;
      *(v37 + 4) = sub_2662A320C(v43, a2, &v45);
      *(v37 + 12) = 2082;
      *(v37 + 14) = sub_2662A320C(v44, a4, &v45);
      _os_log_impl(&dword_26629C000, v35, v36, "FeatureFlagProvider#featureIsEnabled flag %{public}s/%{public}s : disabled", v37, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266784AD0](v38, -1, -1);
      MEMORY[0x266784AD0](v37, -1, -1);
    }

    (*(v9 + 8))(v13, v8);
    return 0;
  }

  return v22;
}

uint64_t sub_2662A019C(uint64_t a1, unint64_t a2)
{
  v4 = sub_2662A3AC8(a1, a2);
  sub_2662A3BFC(&unk_2877E11D8);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_2662A01E8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_2662A0244(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_2662A019C(a5, a6);
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
    result = sub_2664E0B78();
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

uint64_t sub_2662A0374()
{
  MEMORY[0x2667833B0](*(v0 + 16), *(v0 + 24));
  MEMORY[0x2667833B0](10, 0xE100000000000000);
  v31[2] = 0xE700000000000000;
  LOBYTE(v48) = *(v0 + 40);
  v1 = sub_2664E0318();
  MEMORY[0x2667833B0](v1);

  MEMORY[0x2667833B0](10, 0xE100000000000000);
  strcpy(v31, " State: RefId: ");
  v2 = 0xE000000000000000;
  v50 = 0;
  v51 = 0xE000000000000000;
  sub_2664E0B28();

  v48 = 0xD000000000000012;
  v49 = 0x80000002664FA600;
  swift_beginAccess();
  v46 = *(v0 + 48);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072530, &qword_2664EA4E0);
  v3 = sub_2664E0318();
  MEMORY[0x2667833B0](v3);

  MEMORY[0x2667833B0](10, 0xE100000000000000);
  swift_beginAccess();
  if (*(v0 + 64))
  {
    sub_2664E0B28();

    v46 = 0xD000000000000017;
    v47 = 0x80000002664FA700;
    v44 = *(v0 + 64);
    v4 = v44;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072C50, &qword_2664E63C0);
    v5 = sub_2664E0318();
    MEMORY[0x2667833B0](v5);

    MEMORY[0x2667833B0](10, 0xE100000000000000);
    v2 = 0x80000002664FA700;
    v29 = 0xD000000000000017;
  }

  else
  {
    v29 = 0;
  }

  swift_beginAccess();
  if (*(v0 + 72) == 2)
  {
    v27 = 0;
    v28 = 0xE000000000000000;
  }

  else
  {
    sub_2664E0B28();

    v44 = 0xD000000000000011;
    v45 = 0x80000002664FA6E0;
    LOBYTE(v42) = *(v0 + 72);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072C70, &qword_2664E6480);
    v6 = sub_2664E0318();
    MEMORY[0x2667833B0](v6);

    MEMORY[0x2667833B0](10, 0xE100000000000000);
    v27 = 0xD000000000000011;
    v28 = 0x80000002664FA6E0;
  }

  swift_beginAccess();
  v7 = 0xE000000000000000;
  if (*(v0 + 80))
  {
    sub_2664E0B28();

    v42 = 0xD000000000000018;
    v43 = 0x80000002664FA6C0;
    v40 = *(v0 + 80);
    v8 = v40;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072C50, &qword_2664E63C0);
    v9 = sub_2664E0318();
    MEMORY[0x2667833B0](v9);

    MEMORY[0x2667833B0](10, 0xE100000000000000);
    v7 = 0x80000002664FA6C0;
    v26 = 0xD000000000000018;
  }

  else
  {
    v26 = 0;
  }

  swift_beginAccess();
  v10 = 0xE000000000000000;
  v30 = v2;
  if (*(v0 + 88) == 2)
  {
    v25 = 0;
  }

  else
  {
    sub_2664E0B28();

    v40 = 0xD000000000000010;
    v41 = 0x80000002664FA6A0;
    LOBYTE(v38) = *(v0 + 88);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072C70, &qword_2664E6480);
    v11 = sub_2664E0318();
    MEMORY[0x2667833B0](v11);

    MEMORY[0x2667833B0](10, 0xE100000000000000);
    v10 = 0x80000002664FA6A0;
    v25 = 0xD000000000000010;
  }

  swift_beginAccess();
  v12 = 0xE000000000000000;
  if (*(v0 + 104))
  {
    v24 = 0;
  }

  else
  {
    sub_2664E0B28();

    v38 = 0xD000000000000018;
    v39 = 0x80000002664FA680;
    v36 = *(v0 + 96);
    LOBYTE(v37) = *(v0 + 104);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073468, &qword_2664EB040);
    v13 = sub_2664E0318();
    MEMORY[0x2667833B0](v13);

    MEMORY[0x2667833B0](10, 0xE100000000000000);
    v12 = 0x80000002664FA680;
    v24 = 0xD000000000000018;
  }

  swift_beginAccess();
  v14 = 0xE000000000000000;
  if (*(v0 + 120))
  {
    v23 = 0;
  }

  else
  {
    sub_2664E0B28();

    v36 = 0xD000000000000014;
    v37 = 0x80000002664FA660;
    v34 = *(v0 + 112);
    LOBYTE(v35) = *(v0 + 120);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073468, &qword_2664EB040);
    v15 = sub_2664E0318();
    MEMORY[0x2667833B0](v15);

    MEMORY[0x2667833B0](10, 0xE100000000000000);
    v14 = 0x80000002664FA660;
    v23 = 0xD000000000000014;
  }

  swift_beginAccess();
  v16 = 0xE000000000000000;
  if (*(v0 + 121) == 2)
  {
    v22 = 0;
  }

  else
  {
    sub_2664E0B28();

    v34 = 0xD000000000000017;
    v35 = 0x80000002664FA640;
    LOBYTE(v32) = *(v0 + 121);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072C70, &qword_2664E6480);
    v17 = sub_2664E0318();
    MEMORY[0x2667833B0](v17);

    MEMORY[0x2667833B0](10, 0xE100000000000000);
    v16 = 0x80000002664FA640;
    v22 = 0xD000000000000017;
  }

  swift_beginAccess();
  v18 = 0xE000000000000000;
  if (*(v0 + 128))
  {
    sub_2664E0B28();

    v32 = 0xD000000000000018;
    v33 = 0x80000002664FA620;
    v31[3] = CFCopyDescription(*(v0 + 128));
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800737F0, &unk_2664E5320);
    v19 = sub_2664E0318();
    MEMORY[0x2667833B0](v19);

    MEMORY[0x2667833B0](10, 0xE100000000000000);
    v20 = 0xD000000000000018;
    v18 = 0x80000002664FA620;
  }

  else
  {
    v20 = 0;
  }

  MEMORY[0x2667833B0](v31[0], 0xE800000000000000);

  MEMORY[0x2667833B0](0xD000000000000012, 0x80000002664FA600);

  MEMORY[0x2667833B0](v29, v30);

  MEMORY[0x2667833B0](v27, v28);

  MEMORY[0x2667833B0](v26, v7);

  MEMORY[0x2667833B0](v25, v10);

  MEMORY[0x2667833B0](v24, v12);

  MEMORY[0x2667833B0](v23, v14);

  MEMORY[0x2667833B0](v22, v16);

  MEMORY[0x2667833B0](v20, v18);

  return v31[1];
}

uint64_t static AirPlayRouteSetupContext.shared(refId:)(uint64_t a1, unint64_t a2)
{
  v4 = sub_2664E0038();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v87 = &v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2664E00B8();
  v86 = *(v8 - 8);
  v9 = *(v86 + 64);
  MEMORY[0x28223BE20](v8);
  v85 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2664E00E8();
  v83 = *(v11 - 8);
  v84 = v11;
  v12 = *(v83 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v80 = &v73 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v82 = &v73 - v15;
  v16 = sub_2664DFE38();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v73 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v73 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v73 - v25;
  if (a2)
  {
    v78 = v8;
    v27 = qword_280071C88;

    if (v27 != -1)
    {
      swift_once();
    }

    v79 = qword_280073EF0;
    [qword_280073EF0 lock];
    if (qword_280071C90 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v28 = off_280073EF8;
    if (*(off_280073EF8 + 2) && (v29 = sub_2662A3E98(a1, a2), (v30 & 1) != 0))
    {
      v87 = a1;
      v31 = *(v28[7] + 8 * v29);
      swift_endAccess();
      v32 = qword_280F914E8;

      if (v32 != -1)
      {
        swift_once();
      }

      v33 = __swift_project_value_buffer(v16, qword_280F914F0);
      swift_beginAccess();
      (*(v17 + 16))(v26, v33, v16);

      v34 = sub_2664DFE18();
      v35 = sub_2664E06C8();

      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v37 = v17;
        v38 = swift_slowAlloc();
        v90[0] = v38;
        *v36 = 136446466;
        v39 = sub_2662A320C(v87, a2, v90);

        *(v36 + 4) = v39;
        *(v36 + 12) = 2080;

        v40 = sub_2662A0374();
        v42 = v41;

        v43 = sub_2662A320C(v40, v42, v90);

        *(v36 + 14) = v43;
        _os_log_impl(&dword_26629C000, v34, v35, "AirPlayRouteSetupContext#shared Retrieving shared context for refId: %{public}s, %s", v36, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x266784AD0](v38, -1, -1);
        MEMORY[0x266784AD0](v36, -1, -1);

        (*(v37 + 8))(v26, v16);
      }

      else
      {

        (*(v17 + 8))(v26, v16);
      }
    }

    else
    {
      v76 = v5;
      v77 = v4;
      swift_endAccess();
      type metadata accessor for AirPlayRouteSetupContext();
      v31 = swift_allocObject();
      *(v31 + 24) = a2;
      *(v31 + 32) = 0;
      *(v31 + 40) = 0;
      *(v31 + 56) = 0;
      *(v31 + 64) = 0;
      *(v31 + 48) = 0;
      *(v31 + 72) = 2;
      *(v31 + 80) = 0;
      *(v31 + 88) = 2;
      *(v31 + 96) = 0;
      *(v31 + 104) = 1;
      *(v31 + 112) = 0;
      *(v31 + 120) = 513;
      *(v31 + 136) = 0;
      *(v31 + 144) = 0;
      *(v31 + 128) = 0;
      *(v31 + 16) = a1;
      v44 = qword_280F914E8;

      if (v44 != -1)
      {
        swift_once();
      }

      v45 = __swift_project_value_buffer(v16, qword_280F914F0);
      swift_beginAccess();
      (*(v17 + 16))(v24, v45, v16);

      v46 = sub_2664DFE18();
      v47 = sub_2664E06C8();

      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        v75 = v17;
        v49 = v48;
        v50 = swift_slowAlloc();
        aBlock[0] = v50;
        *v49 = 136446466;
        *(v49 + 4) = sub_2662A320C(a1, a2, aBlock);
        *(v49 + 12) = 2080;

        v51 = sub_2662A0374();
        v74 = v16;
        v52 = a1;
        v54 = v53;

        v55 = sub_2662A320C(v51, v54, aBlock);
        a1 = v52;

        *(v49 + 14) = v55;
        _os_log_impl(&dword_26629C000, v46, v47, "AirPlayRouteSetupContext#shared Retrieving (making new) shared context for refId: %{public}s, %s", v49, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x266784AD0](v50, -1, -1);
        MEMORY[0x266784AD0](v49, -1, -1);

        (*(v75 + 8))(v24, v74);
      }

      else
      {

        (*(v17 + 8))(v24, v16);
      }

      swift_beginAccess();
      swift_retain_n();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v89 = off_280073EF8;
      off_280073EF8 = 0x8000000000000000;
      sub_2662A74BC(v31, a1, a2, isUniquelyReferenced_nonNull_native);

      off_280073EF8 = v89;
      swift_endAccess();
      v61 = v80;
      if (qword_280071C98 != -1)
      {
        swift_once();
      }

      v75 = qword_280073F00;
      sub_2664E00C8();
      if (qword_280071CA0 != -1)
      {
        swift_once();
      }

      v62 = sub_2664E0018();
      v63 = __swift_project_value_buffer(v62, qword_280073F08);
      v64 = v82;
      MEMORY[0x266783140](v61, v63);
      v83 = *(v83 + 8);
      v65 = v61;
      v66 = v84;
      (v83)(v65, v84);
      v67 = swift_allocObject();
      v67[2] = a1;
      v67[3] = a2;
      v67[4] = v81;
      aBlock[4] = sub_266482E94;
      aBlock[5] = v67;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_2662A3F90;
      aBlock[3] = &block_descriptor_47;
      v68 = _Block_copy(aBlock);
      v69 = v85;
      sub_2664E0068();
      v89 = MEMORY[0x277D84F90];
      sub_2662A3E08(&qword_280F8F6A0, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280074210, &qword_2664E3640);
      sub_2662A5AC8();
      v70 = v87;
      v71 = v77;
      sub_2664E0A08();
      MEMORY[0x2667837B0](v64, v69, v70, v68);

      _Block_release(v68);
      (*(v76 + 8))(v70, v71);
      (*(v86 + 8))(v69, v78);
      (v83)(v64, v66);
    }

    [v79 unlock];
  }

  else
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v56 = __swift_project_value_buffer(v16, qword_280F914F0);
    swift_beginAccess();
    (*(v17 + 16))(v21, v56, v16);
    v57 = sub_2664DFE18();
    v58 = sub_2664E06D8();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      *v59 = 0;
      _os_log_impl(&dword_26629C000, v57, v58, "AirPlayRouteSetupContext#shared Cannot retrieve context for nil refId", v59, 2u);
      MEMORY[0x266784AD0](v59, -1, -1);
    }

    (*(v17 + 8))(v21, v16);
    return 0;
  }

  return v31;
}

uint64_t sub_2662A1818()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t INPlayMediaIntent.slimDescription.getter()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072878, &qword_2664E4ED8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2664E9030;
  *(inited + 32) = 0x6449746E65746E69;
  *(inited + 40) = 0xE800000000000000;
  v3 = [v0 intentId];
  if (v3)
  {
    v4 = v3;
    v5 = sub_2664E02C8();
    v7 = v6;

    v8 = MEMORY[0x277D837D0];
  }

  else
  {
    v5 = 0;
    v7 = 0;
    v8 = 0;
    *(inited + 64) = 0;
  }

  *(inited + 48) = v5;
  *(inited + 56) = v7;
  *(inited + 72) = v8;
  *(inited + 80) = 0x696669746E656469;
  *(inited + 88) = 0xEA00000000007265;
  v9 = [v1 identifier];
  if (v9)
  {
    v10 = v9;
    v11 = sub_2664E02C8();
    v13 = v12;

    v14 = MEMORY[0x277D837D0];
  }

  else
  {
    v11 = 0;
    v13 = 0;
    v14 = 0;
    *(inited + 112) = 0;
  }

  *(inited + 96) = v11;
  *(inited + 104) = v13;
  *(inited + 120) = v14;
  *(inited + 128) = 0x644968636E75616CLL;
  *(inited + 136) = 0xE800000000000000;
  v15 = [v1 launchId];
  if (v15)
  {
    v16 = v15;
    v17 = sub_2664E02C8();
    v19 = v18;

    v20 = MEMORY[0x277D837D0];
  }

  else
  {
    v17 = 0;
    v19 = 0;
    v20 = 0;
    *(inited + 160) = 0;
  }

  *(inited + 144) = v17;
  *(inited + 152) = v19;
  *(inited + 168) = v20;
  *(inited + 176) = 0x657449616964656DLL;
  *(inited + 184) = 0xEA0000000000736DLL;
  v21 = [v1 mediaItems];
  v78 = inited;
  if (v21)
  {
    v22 = v21;
    sub_2662C1744(0, &qword_280F8F650, 0x277CD3DB8);
    v23 = sub_2664E04A8();

    if (v23 >> 62)
    {
      goto LABEL_29;
    }

    v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
    for (i = v1; v24; i = v1)
    {
      v25 = 0;
      v79 = v23 & 0xC000000000000001;
      v1 = (v23 & 0xFFFFFFFFFFFFFF8);
      v26 = MEMORY[0x277D84F90];
      v27 = v23;
      while (1)
      {
        if (v79)
        {
          v28 = MEMORY[0x266783B70](v25, v23);
        }

        else
        {
          if (v25 >= v1[2])
          {
            goto LABEL_28;
          }

          v28 = *(v23 + 8 * v25 + 32);
        }

        v29 = v28;
        v30 = v25 + 1;
        if (__OFADD__(v25, 1))
        {
          break;
        }

        v31 = v24;
        v32 = INMediaItem.slimDescription.getter();
        v34 = v33;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v26 = sub_2663846F4(0, *(v26 + 2) + 1, 1, v26);
        }

        v36 = *(v26 + 2);
        v35 = *(v26 + 3);
        if (v36 >= v35 >> 1)
        {
          v26 = sub_2663846F4((v35 > 1), v36 + 1, 1, v26);
        }

        *(v26 + 2) = v36 + 1;
        v37 = &v26[16 * v36];
        *(v37 + 4) = v32;
        *(v37 + 5) = v34;
        ++v25;
        v24 = v31;
        v38 = v30 == v31;
        v23 = v27;
        if (v38)
        {
          goto LABEL_31;
        }
      }

      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      v24 = sub_2664E0A68();
    }

    v26 = MEMORY[0x277D84F90];
LABEL_31:

    v78[27] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072440, &qword_2664E3600);
    v78[24] = v26;
    inited = v78;
    v1 = i;
  }

  else
  {
    *(inited + 192) = 0u;
    *(inited + 208) = 0u;
  }

  *(inited + 224) = 0x616553616964656DLL;
  *(inited + 232) = 0xEB00000000686372;
  v39 = [v1 mediaSearch];
  v40 = v39;
  if (v39)
  {
    v39 = sub_2662C1744(0, &qword_280072F18, 0x277CD3DC8);
  }

  else
  {
    *(inited + 248) = 0;
    *(inited + 256) = 0;
  }

  *(inited + 240) = v40;
  *(inited + 264) = v39;
  *(inited + 272) = 0x6F4D746165706572;
  *(inited + 280) = 0xEA00000000006564;
  v41 = [v1 playbackRepeatMode];
  v42 = MEMORY[0x277D83B88];
  *(inited + 288) = v41;
  *(inited + 312) = v42;
  *(inited + 320) = 0x64656C6666756873;
  *(inited + 328) = 0xE800000000000000;
  v43 = [v1 backingStore];
  objc_opt_self();
  v44 = swift_dynamicCastObjCClass();
  if (v44)
  {
    v45 = [v44 playShuffled];

    *(inited + 336) = v45;
    v46 = MEMORY[0x277D839B0];
  }

  else
  {

    v46 = 0;
    *(inited + 336) = 0;
    *(inited + 344) = 0;
    *(inited + 352) = 0;
  }

  *(inited + 360) = v46;
  *(inited + 368) = 0x6465657073;
  *(inited + 376) = 0xE500000000000000;
  v47 = [v1 backingStore];
  objc_opt_self();
  v48 = swift_dynamicCastObjCClass();
  if (v48)
  {
    [v48 playbackSpeed];
    v50 = v49;

    v51 = MEMORY[0x277D839F8];
  }

  else
  {

    v51 = 0;
    *(inited + 392) = 0;
    *(inited + 400) = 0;
    v50 = 0;
  }

  *(inited + 384) = v50;
  *(inited + 408) = v51;
  *(inited + 416) = 0x736574756F72;
  *(inited + 424) = 0xE600000000000000;
  v52 = [v1 hashedRouteUIDs];
  if (v52)
  {
    v53 = v52;
    v54 = sub_2664E04A8();

    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072440, &qword_2664E3600);
  }

  else
  {
    v54 = 0;
    *(inited + 440) = 0;
    *(inited + 448) = 0;
  }

  *(inited + 432) = v54;
  *(inited + 456) = v52;
  *(inited + 464) = 0xD000000000000014;
  *(inited + 472) = 0x80000002664F5C30;
  v55 = [v1 privatePlayMediaIntentData];
  if (v55 && (v56 = v55, v57 = [v55 audioSearchResults], v56, v57))
  {
    sub_2662C1744(0, &qword_280F8F650, 0x277CD3DB8);
    v58 = sub_2664E04A8();

    v59 = v58;
    if (v58 >> 62)
    {
      goto LABEL_63;
    }

    for (j = *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10); j; v59 = v74)
    {
      v61 = 0;
      v80 = v59 & 0xC000000000000001;
      v62 = v59 & 0xFFFFFFFFFFFFFF8;
      v63 = MEMORY[0x277D84F90];
      v64 = v59;
      v65 = j;
      while (1)
      {
        if (v80)
        {
          v59 = MEMORY[0x266783B70](v61, v59);
        }

        else
        {
          if (v61 >= *(v62 + 16))
          {
            goto LABEL_62;
          }

          v59 = *(v59 + 8 * v61 + 32);
        }

        v66 = v59;
        v67 = v61 + 1;
        if (__OFADD__(v61, 1))
        {
          break;
        }

        v68 = INMediaItem.slimDescription.getter();
        v70 = v69;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v63 = sub_2663846F4(0, *(v63 + 2) + 1, 1, v63);
        }

        v72 = *(v63 + 2);
        v71 = *(v63 + 3);
        if (v72 >= v71 >> 1)
        {
          v63 = sub_2663846F4((v71 > 1), v72 + 1, 1, v63);
        }

        *(v63 + 2) = v72 + 1;
        v73 = &v63[16 * v72];
        *(v73 + 4) = v68;
        *(v73 + 5) = v70;
        ++v61;
        v59 = v64;
        if (v67 == v65)
        {
          goto LABEL_65;
        }
      }

      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      v74 = v59;
      j = sub_2664E0A68();
    }

    v63 = MEMORY[0x277D84F90];
LABEL_65:

    inited = v78;
    v78[63] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072440, &qword_2664E3600);
    v78[60] = v63;
  }

  else
  {
    *(inited + 480) = 0u;
    *(inited + 496) = 0u;
  }

  sub_266385778(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072880, &unk_2664E4EE0);
  swift_arrayDestroy();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280074250, &unk_2664E3680);
  v75 = sub_2664E01D8();

  return v75;
}

uint64_t static SiriEnvironmentWrapper.retrieve()()
{
  v0 = sub_2664E0038();
  v111 = *(v0 - 8);
  v1 = *(v111 + 64);
  MEMORY[0x28223BE20](v0);
  v109 = &v98 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = sub_2664E00B8();
  v108 = *(v110 - 8);
  v3 = *(v108 + 64);
  MEMORY[0x28223BE20](v110);
  v107 = &v98 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2664E00E8();
  v105 = *(v5 - 8);
  v106 = v5;
  v6 = *(v105 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v98 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v98 - v10;
  v12 = sub_2664DFE38();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v98 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v98 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v98 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v98 - v25;
  MEMORY[0x28223BE20](v24);
  v28 = &v98 - v27;
  if (sub_2662A3168() & 1) != 0 || (sub_2662A317C())
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v29 = __swift_project_value_buffer(v12, qword_280F914F0);
    swift_beginAccess();
    (*(v13 + 16))(v17, v29, v12);
    v30 = sub_2664DFE18();
    v31 = sub_2664E06D8();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_26629C000, v30, v31, "SiriEnvironmentWrapper called from warmup or makeFlow(from: Parse). This will result in the wrong SiriEnvironment", v32, 2u);
      MEMORY[0x266784AD0](v32, -1, -1);
    }

    (*(v13 + 8))(v17, v12);
    return 0;
  }

  v102 = v0;
  sub_2664DF528();
  v35 = sub_2664DF4F8();
  if (qword_280F91498 != -1)
  {
    swift_once();
  }

  v103 = qword_280F914A0;
  [qword_280F914A0 lock];
  v104 = v35;
  if (!v35 || (, v36 = sub_2664DF508(), , , v36 == v35))
  {
    if (qword_280F90B20 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v69 = qword_280F90B40;
    v68 = unk_280F90B48;
    v70 = __swift_project_boxed_opaque_existential_1(qword_280F90B28, qword_280F90B40);
    v71 = *(v69 - 8);
    v72 = *(v71 + 64);
    MEMORY[0x28223BE20](v70);
    v74 = &v98 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v71 + 16))(v74);
    v111 = (*(v68 + 16))(v69, v68);
    v76 = v75;
    (*(v71 + 8))(v74, v69);
    if (!v76)
    {
      if (qword_280F914E8 != -1)
      {
        swift_once();
      }

      v94 = __swift_project_value_buffer(v12, qword_280F914F0);
      swift_beginAccess();
      (*(v13 + 16))(v20, v94, v12);
      v95 = sub_2664DFE18();
      v96 = sub_2664E06D8();
      if (os_log_type_enabled(v95, v96))
      {
        v97 = swift_slowAlloc();
        *v97 = 0;
        _os_log_impl(&dword_26629C000, v95, v96, "SiriEnvironmentWrapper#retrieve Cannot retrieve siriEnvironment for nil refId", v97, 2u);
        MEMORY[0x266784AD0](v97, -1, -1);
      }

      (*(v13 + 8))(v20, v12);
      [v103 unlock];

      return 0;
    }

    if (qword_280F914B0 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v77 = off_280F914B8;
    v78 = v111;
    if (!*(off_280F914B8 + 2) || (v79 = sub_2662A3E98(v111, v76), (v80 & 1) == 0))
    {
      swift_endAccess();
      if (qword_280F914E8 != -1)
      {
        swift_once();
      }

      v88 = __swift_project_value_buffer(v12, qword_280F914F0);
      swift_beginAccess();
      (*(v13 + 16))(v23, v88, v12);

      v89 = sub_2664DFE18();
      v90 = sub_2664E06D8();

      if (os_log_type_enabled(v89, v90))
      {
        v91 = swift_slowAlloc();
        v92 = swift_slowAlloc();
        v114[0] = v92;
        *v91 = 136446210;
        v93 = sub_2662A320C(v78, v76, v114);

        *(v91 + 4) = v93;
        _os_log_impl(&dword_26629C000, v89, v90, "SiriEnvironmentWrapper#retrieve SiriEnvironment not present for current thread or in the cache for refId: %{public}s", v91, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v92);
        MEMORY[0x266784AD0](v92, -1, -1);
        MEMORY[0x266784AD0](v91, -1, -1);
      }

      else
      {
      }

      (*(v13 + 8))(v23, v12);
      [v103 unlock];

      return 0;
    }

    v33 = *(v77[7] + 8 * v79);
    swift_endAccess();
    v81 = qword_280F914E8;

    if (v81 != -1)
    {
      swift_once();
    }

    v82 = __swift_project_value_buffer(v12, qword_280F914F0);
    swift_beginAccess();
    (*(v13 + 16))(v26, v82, v12);

    v83 = sub_2664DFE18();
    v84 = sub_2664E06C8();

    if (os_log_type_enabled(v83, v84))
    {
      v85 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      v114[0] = v86;
      *v85 = 136446210;
      v87 = sub_2662A320C(v78, v76, v114);

      *(v85 + 4) = v87;
      _os_log_impl(&dword_26629C000, v83, v84, "SiriEnvironmentWrapper#retrieve Retrieving cached siriEnvironment for refId: %{public}s", v85, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v86);
      MEMORY[0x266784AD0](v86, -1, -1);
      MEMORY[0x266784AD0](v85, -1, -1);
    }

    else
    {
    }

    (*(v13 + 8))(v26, v12);
    [v103 unlock];
  }

  else
  {
    if (qword_280F90B20 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v37 = qword_280F90B40;
    v38 = unk_280F90B48;
    v39 = __swift_project_boxed_opaque_existential_1(qword_280F90B28, qword_280F90B40);
    v40 = *(v37 - 8);
    v41 = *(v40 + 64);
    MEMORY[0x28223BE20](v39);
    v43 = &v98 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v40 + 16))(v43);
    v101 = (*(v38 + 16))(v37, v38);
    v45 = v44;
    (*(v40 + 8))(v43, v37);
    if (v45)
    {
      v100 = v45;
      v46 = v104;
      if (qword_280F914E8 != -1)
      {
        swift_once();
      }

      v47 = __swift_project_value_buffer(v12, qword_280F914F0);
      swift_beginAccess();
      (*(v13 + 16))(v28, v47, v12);

      v48 = sub_2664DFE18();
      v49 = sub_2664E06C8();

      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        LODWORD(v99) = v49;
        v51 = v46;
        v52 = v50;
        v53 = swift_slowAlloc();
        aBlock[0] = v53;
        *v52 = 136315138;
        v113 = v51;
        v54 = sub_2664E0F18();
        v56 = sub_2662A320C(v54, v55, aBlock);

        *(v52 + 4) = v56;
        _os_log_impl(&dword_26629C000, v48, v99, "SiriEnvironmentWrapper#retrieve SiriEnvironment.forCurrentTask: %s", v52, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v53);
        MEMORY[0x266784AD0](v53, -1, -1);
        MEMORY[0x266784AD0](v52, -1, -1);
      }

      (*(v13 + 8))(v28, v12);
      v57 = v100;
      if (qword_280F914B0 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v33 = v104;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v113 = off_280F914B8;
      off_280F914B8 = 0x8000000000000000;
      sub_2662A3858(v33, v101, v57, isUniquelyReferenced_nonNull_native, sub_2664538D4, sub_26644FF84, sub_2662A39C4);

      off_280F914B8 = v113;
      swift_endAccess();
      if (qword_280071AE8 != -1)
      {
        swift_once();
      }

      v59 = v101;
      v99 = qword_280072CF0;
      sub_2664E00C8();
      if (qword_280071AF0 != -1)
      {
        swift_once();
      }

      v60 = sub_2664E0018();
      v61 = __swift_project_value_buffer(v60, qword_280072CF8);
      MEMORY[0x266783140](v9, v61);
      v62 = v106;
      v105 = *(v105 + 8);
      (v105)(v9, v106);
      v63 = swift_allocObject();
      *(v63 + 16) = v59;
      *(v63 + 24) = v57;
      aBlock[4] = sub_26634FF34;
      aBlock[5] = v63;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_2662A3F90;
      aBlock[3] = &block_descriptor_13;
      v64 = _Block_copy(aBlock);
      v65 = v107;
      sub_2664E0068();
      v113 = MEMORY[0x277D84F90];
      sub_2662A3D78(&qword_280F8F6A0, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280074210, &qword_2664E3640);
      sub_2662A5AC8();
      v66 = v109;
      v67 = v102;
      sub_2664E0A08();
      MEMORY[0x2667837B0](v11, v65, v66, v64);
      _Block_release(v64);
      (*(v111 + 8))(v66, v67);
      (*(v108 + 8))(v65, v110);
      (v105)(v11, v62);
    }

    else
    {
      v33 = v104;
    }

    [v103 unlock];
  }

  return v33;
}

uint64_t sub_2662A3130()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_2662A320C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2662A0244(v11, 0, 0, 1, a1, a2);
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
    sub_2662A01E8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_2662A3324(unsigned __int8 *a1, const char *a2)
{
  v4 = sub_2664DFE38();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v4, qword_280F914F0);
  swift_beginAccess();
  (*(v5 + 16))(v8, v9, v4);
  v10 = sub_2664DFE18();
  v11 = sub_2664E06E8();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 67109120;
    *(v12 + 4) = *a1;
    _os_log_impl(&dword_26629C000, v10, v11, a2, v12, 8u);
    MEMORY[0x266784AD0](v12, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  return *a1;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_17(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_19(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_21(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_22(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_23(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_24(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_25(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_26(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_27(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_28(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_29(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_30(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_31(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_32(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_33(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_34(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_35(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_36(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_37(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_38(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_39(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_40(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_41(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_42(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_43(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_44(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_45(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_46(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_47(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_48(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_49(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_50(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_51(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_52(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_53(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2662A3858(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), void (*a6)(uint64_t, void), void (*a7)(unint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v11 = v7;
  v16 = *v7;
  v17 = sub_2662A3E98(a2, a3);
  v19 = *(v16 + 16);
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_16;
  }

  v23 = v18;
  v24 = *(v16 + 24);
  if (v24 < v22 || (a4 & 1) == 0)
  {
    if (v24 >= v22 && (a4 & 1) == 0)
    {
      v25 = v17;
      a5();
      v17 = v25;
      goto LABEL_8;
    }

    a6(v22, a4 & 1);
    v26 = *v11;
    v17 = sub_2662A3E98(a2, a3);
    if ((v23 & 1) != (v27 & 1))
    {
LABEL_16:
      result = sub_2664E0DD8();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v28 = *v11;
  if (v23)
  {
    v29 = *(v28 + 56);
    v30 = *(v29 + 8 * v17);
    *(v29 + 8 * v17) = a1;
  }

  else
  {
    a7(v17, a2, a3, a1, v28);
  }
}

unint64_t sub_2662A39CC(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

void *sub_2662A3A54(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072D28, &qword_2664E6A28);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t sub_2662A3AC8(uint64_t a1, unint64_t a2)
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

  v6 = sub_2662A3A54(v5, 0);
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

  result = sub_2664E0B78();
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
        v10 = sub_2664E03A8();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_2662A3A54(v10, 0);
        result = sub_2664E0B08();
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

uint64_t sub_2662A3BFC(uint64_t result)
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

  result = sub_26634D85C(result, v12, 1, v3);
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

uint64_t sub_2662A3CE8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2662A3D30(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2662A3D78(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2662A3DC0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2662A3E08(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2662A3E50(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2662A3E98(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_2664E0E68();
  sub_2664E0368();
  v6 = sub_2664E0EB8();

  return sub_2662A5B2C(a1, a2, v6);
}

uint64_t sub_2662A3F34(void *a1, void *a2, void *a3)
{
  if (*a1 != -1)
  {
    v6 = a2;
    v7 = a3;
    swift_once();
    a2 = v6;
    a3 = v7;
  }

  v3 = *a2;
  v4 = *a3;

  return v3;
}

uint64_t sub_2662A3F90(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_2662A3FD4()
{
  v0 = sub_2664DFE38();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_2662A3324(&byte_2800741B9, "SiriAudio#isMakeFlowFromParse#get %{BOOL}d");
  if (result)
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v6 = __swift_project_value_buffer(v0, qword_280F914F0);
    swift_beginAccess();
    (*(v1 + 16))(v4, v6, v0);
    v7 = sub_2664DFE18();
    v8 = sub_2664E06D8();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 134217984;
      *(v9 + 4) = 1000;
      _os_log_impl(&dword_26629C000, v7, v8, "SiriAudio#isMakeFlowFromParse#reset makeFlow(from:) did not finish within %ldms.", v9, 0xCu);
      MEMORY[0x266784AD0](v9, -1, -1);
    }

    (*(v1 + 8))(v4, v0);
    return sub_2662A5354(0);
  }

  return result;
}

void sub_2662A41AC(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, int a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char *a15, uint64_t a16, void *a17)
{
  v140 = a8;
  v136 = a7;
  v143 = a6;
  v138 = a5;
  v134 = a4;
  v150 = a3;
  v139 = a2;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072AA0, &qword_2664E9EA0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v137 = &v128 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072A98, &unk_2664E58C0);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v141 = &v128 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v26 = &v128 - v25;
  v27 = sub_2664DEA08();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  v149 = &v128 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_2664DFE38();
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  v34 = MEMORY[0x28223BE20](v31);
  v129 = &v128 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x28223BE20](v34);
  v142 = &v128 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v135 = &v128 - v39;
  MEMORY[0x28223BE20](v38);
  v41 = &v128 - v40;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v42 = __swift_project_value_buffer(v31, qword_280F914F0);
  swift_beginAccess();
  v43 = *(v32 + 16);
  v146 = v42;
  v152 = v43;
  v153 = v32 + 16;
  v43(v41, v42, v31);
  v44 = a1;
  v45 = sub_2664DFE18();
  v46 = sub_2664E06C8();
  v148 = a1;
  v47 = v32;
  v48 = v46;
  v133 = v44;

  v49 = os_log_type_enabled(v45, v48);
  v147 = v31;
  v144 = v28;
  v145 = v27;
  if (v49)
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    *v50 = 136315138;
    v154 = v148;
    v155[0] = v51;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072AE8, &qword_2664E5E10);
    v52 = sub_2664E0938();
    v54 = sub_2662A320C(v52, v53, v155);

    *(v50 + 4) = v54;
    v55 = v150;
    v27 = v145;
    _os_log_impl(&dword_26629C000, v45, v48, "SiriKitTaskLoggingProvider#submitMetric domainContext created %s", v50, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v51);
    v56 = v51;
    v28 = v144;
    MEMORY[0x266784AD0](v56, -1, -1);
    MEMORY[0x266784AD0](v50, -1, -1);

    v151 = *(v47 + 8);
    v151(v41, v147);
  }

  else
  {

    v151 = *(v47 + 8);
    v151(v41, v31);
    v55 = v150;
  }

  sub_2662A7224(v139, v26, &qword_280072A98, &unk_2664E58C0);
  v57 = *(v28 + 48);
  if (v57(v26, 1, v27) == 1)
  {
    (*(v28 + 104))(v149, *MEMORY[0x277D5BBE8], v27);
    if (v57(v26, 1, v27) != 1)
    {
      sub_2662A9238(v26, &qword_280072A98, &unk_2664E58C0);
    }
  }

  else
  {
    (*(v28 + 32))(v149, v26, v27);
  }

  v139 = v47;
  v132 = a13;
  if (v55)
  {
    v58 = [v55 typeName];
    v131 = sub_2664E02C8();
    v130 = v59;
  }

  else
  {
    v131 = 0;
    v130 = 0xE000000000000000;
  }

  sub_2664DE8D8();
  sub_2662A7224(v134, v137, &qword_280072AA0, &qword_2664E9EA0);
  v60 = swift_allocObject();
  *(v60 + 16) = v138;
  *(v60 + 24) = v143;
  v61 = v136;
  *(v60 + 32) = v148;
  *(v60 + 40) = v61;
  *(v60 + 48) = v140;
  *(v60 + 56) = a9;
  *(v60 + 64) = a10;
  *(v60 + 72) = a11;
  v62 = v132;
  *(v60 + 80) = a12;
  *(v60 + 88) = v62;
  *(v60 + 96) = a14;

  v136 = v133;

  sub_2664DE888();
  v63 = v135;
  v64 = v146;
  v65 = v147;
  v152(v135, v146, v147);
  v66 = sub_2664DFE18();
  v67 = sub_2664E06C8();
  if (os_log_type_enabled(v66, v67))
  {
    v68 = swift_slowAlloc();
    *v68 = 0;
    _os_log_impl(&dword_26629C000, v66, v67, "SiriKitTaskLoggingProvider#submitMetric siriKitEvent created", v68, 2u);
    MEMORY[0x266784AD0](v68, -1, -1);
  }

  v151(v63, v65);
  v69 = v141;
  (*(v144 + 56))(v141, 1, 1, v145);
  v70 = v142;
  if (qword_280F91480 != -1)
  {
    swift_once();
  }

  if (byte_280F91488 == 1)
  {
    v71 = *(a15 + 15);
    v72 = *(a15 + 16);
    __swift_project_boxed_opaque_existential_1(a15 + 12, v71);
    (*(v72 + 8))(v69, v71, v72);
  }

  sub_2664DE7D8();
  __swift_project_boxed_opaque_existential_1(v155, v155[3]);
  sub_2664DE7E8();
  sub_2662A9238(v69, &qword_280072A98, &unk_2664E58C0);
  __swift_destroy_boxed_opaque_existential_1Tm(v155);
  v152(v70, v64, v65);

  v73 = sub_2664DFE18();
  v74 = sub_2664E06C8();

  v75 = os_log_type_enabled(v73, v74);
  v149 = a15;
  if (v75)
  {
    v76 = swift_slowAlloc();
    v77 = v70;
    v78 = swift_slowAlloc();
    v155[0] = v78;
    *v76 = 136315138;
    v79 = sub_2664DE898();
    v81 = sub_2662A320C(v79, v80, v155);

    *(v76 + 4) = v81;
    v64 = v146;
    _os_log_impl(&dword_26629C000, v73, v74, "SiriKitTaskLoggingProvider#submitMetric siriKitEvent sent %s", v76, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v78);
    MEMORY[0x266784AD0](v78, -1, -1);
    MEMORY[0x266784AD0](v76, -1, -1);

    v82 = v77;
  }

  else
  {

    v82 = v70;
  }

  v151(v82, v65);
  if (!v150)
  {
    goto LABEL_34;
  }

  v83 = v150;
  _s16SiriAudioSupport17BundleIdentifiersO05localD10Identifier3forSSSgSo8INIntentC_tFZ_0(v83);
  if (!v84 || (Party16bundleIdentifierSbSS_tFZ_0 = _s16SiriAudioSupport17BundleIdentifiersO12isFirstParty16bundleIdentifierSbSS_tFZ_0(), , (Party16bundleIdentifierSbSS_tFZ_0 & 1) == 0))
  {

LABEL_34:

    return;
  }

  v86 = sub_2663DDFF8();
  if (v86)
  {
    v87 = v86;
    v88 = v148;
    if (v148)
    {
      v89 = [v136 mediaPlayerContext];
      if (v89)
      {
        v90 = v89;
        v91 = [v89 mediaPlayerPlaybackContext];

        if (v91)
        {
          v92 = [v91 linkId];

          if (v92)
          {

            objc_opt_self();
            v93 = swift_dynamicCastObjCClass();
            if (v93 && (v94 = [v93 mediaItems]) != 0)
            {
              v95 = v94;
              sub_2662C1744(0, &qword_280F8F650, 0x277CD3DB8);
              v96 = sub_2664E04A8();
            }

            else
            {
              v96 = MEMORY[0x277D84F90];
            }

            v101 = [v136 mediaPlayerContext];
            v102 = [v101 mediaPlayerPlaybackContext];

            v103 = [v102 linkId];
            v104 = sub_2664E08A8();
            sub_2663250BC(v87, v96, v103, v104, v105, a16);

            v88 = v148;
          }
        }
      }
    }

    v106 = [v87 identifier];
    if (v106)
    {
      v107 = v106;
      v108 = sub_2664E02C8();
      v110 = v109;

      v88 = v148;
    }

    else
    {
      v108 = 0;
      v110 = 0xE000000000000000;
    }

    static PlaybackItem.Identifier.parse(uri:)(v108, v110, v155);

    if (!v155[2])
    {
      goto LABEL_59;
    }

    if (!v88)
    {
      goto LABEL_53;
    }

    v111 = v155[0];
    v112 = [v136 mediaPlayerContext];
    if (!v112 || (v113 = v112, v114 = [v112 mediaPlayerPlaybackContext], v113, !v114) || (v115 = objc_msgSend(v114, sel_radioStationContext), v114, !v115) || (v116 = objc_msgSend(v115, sel_linkId), v115, !v116))
    {
LABEL_53:

      return;
    }

    LOBYTE(v155[0]) = v111;
    if (PlaybackItem.Scheme.rawValue.getter() == 0x6172706D61732D78 && v117 == 0xEB000000006F6964)
    {
    }

    else
    {
      v118 = sub_2664E0D88();

      if ((v118 & 1) == 0)
      {
LABEL_59:

        return;
      }
    }

    v119 = [v87 title];
    if (v119)
    {
      v120 = v119;
      v121 = sub_2664E02C8();
      v123 = v122;
    }

    else
    {
      v121 = 0;
      v123 = 0xE000000000000000;
    }

    v124 = [a17 radioStationContext];
    v125 = [v124 linkId];

    v126 = sub_2664E08A8();
    sub_266326050(v121, v123, v125, v126, v127);

    goto LABEL_59;
  }

  v97 = v129;
  v152(v129, v64, v65);
  v98 = sub_2664DFE18();
  v99 = sub_2664E06D8();
  if (os_log_type_enabled(v98, v99))
  {
    v100 = swift_slowAlloc();
    *v100 = 0;
    _os_log_impl(&dword_26629C000, v98, v99, "SiriKitTaskLoggingProvider#submitMetric Unexpected nil or empty items. Not emitting mediaPlayerPlaybackContext or mediaPlayerRadioStationContext", v100, 2u);
    MEMORY[0x266784AD0](v100, -1, -1);
  }

  else
  {
  }

  v151(v97, v65);
}

uint64_t sub_2662A5020()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 48);

  v3 = *(v0 + 64);

  v4 = *(v0 + 80);

  v5 = *(v0 + 96);

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

void *__swift_memcpy13_1(void *result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 5) = *(a2 + 5);
  *result = v2;
  return result;
}

uint64_t static MultiUserConnectionProvider.shared.getter()
{
  if (qword_280F8F800 != -1)
  {
    swift_once();
  }
}

uint64_t static DeviceProvider.shared.getter@<X0>(_BYTE *a1@<X8>)
{
  if (qword_280F90D58 != -1)
  {
    v5 = a1;
    result = swift_once();
    a1 = v5;
  }

  v1 = byte_280F90D61;
  v2 = byte_280F90D62;
  v3 = byte_280F90D63;
  v4 = byte_280F90D64;
  *a1 = byte_280F90D60;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
  a1[4] = v4;
  return result;
}

uint64_t __swift_memcpy5_1(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t static SiriKitTaskLoggingProvider.shared.getter()
{
  if (qword_280F91468 != -1)
  {
    swift_once();
  }
}

uint64_t static FeatureFlagProvider.shared.getter@<X0>(void *a1@<X8>)
{
  if (qword_280F905C0 != -1)
  {
    v1 = a1;
    result = swift_once();
    a1 = v1;
  }

  *a1 = qword_280F905C8;
  *(a1 + 5) = *(&qword_280F905C8 + 5);
  return result;
}

uint64_t static ExecutorProvider.shared.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_280F90B20 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return sub_2662A5550(&unk_280F90B28, a1);
}

uint64_t sub_2662A5354(char a1)
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
    *v10 = 67109120;
    *(v10 + 4) = a1 & 1;
    _os_log_impl(&dword_26629C000, v8, v9, "SiriAudio#isMakeFlowFromParse#set %{BOOL}d", v10, 8u);
    MEMORY[0x266784AD0](v10, -1, -1);
  }

  result = (*(v3 + 8))(v6, v2);
  byte_2800741B9 = a1 & 1;
  if (a1)
  {
    return sub_2664D5270();
  }

  return result;
}

uint64_t sub_2662A5550(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_2662A55B4(uint64_t a1, uint64_t a2, char a3, __int16 a4)
{
  v8 = sub_2664DFE38();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &aBlock[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v8, qword_280F914F0);
  swift_beginAccess();
  (*(v9 + 16))(v12, v13, v8);
  v14 = sub_2664DFE18();
  v15 = sub_2664E06C8();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_26629C000, v14, v15, "SubscriptionProvider#status Gathering music subscription status", v16, 2u);
    MEMORY[0x266784AD0](v16, -1, -1);
  }

  (*(v9 + 8))(v12, v8);
  v17 = [objc_opt_self() sharedStatusController];
  v18 = [objc_opt_self() activeAccount];
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  *(v19 + 24) = a2;
  *(v19 + 32) = a4;
  aBlock[4] = sub_2662A66B0;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2662A6624;
  aBlock[3] = &block_descriptor_89;
  v20 = _Block_copy(aBlock);

  [v17 getSubscriptionStatusForUserIdentity:v18 bypassingCache:a3 & 1 withCompletionHandler:v20];
  _Block_release(v20);
}

uint64_t sub_2662A5888()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 34, 7);
}

uint64_t _s16SiriAudioSupport17BundleIdentifiersO05localD10Identifier3forSSSgSo8INIntentC_tFZ_0(void *a1)
{
  v2 = sub_2664DFE38();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [a1 launchId];
  if (v7)
  {
    v8 = v7;
    v9 = sub_2664E02C8();
    v11 = v10;

    v12 = _s16SiriAudioSupport17BundleIdentifiersO26extractAppInfoFromLaunchId3forSSSgSS_tFZ_0(v9, v11);
  }

  else
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v13 = __swift_project_value_buffer(v2, qword_280F914F0);
    swift_beginAccess();
    (*(v3 + 16))(v6, v13, v2);
    v14 = sub_2664DFE18();
    v15 = sub_2664E06C8();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_26629C000, v14, v15, "BundleIdentifiers#localBundleIdentifier no launchId in intent", v16, 2u);
      MEMORY[0x266784AD0](v16, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
    return 0;
  }

  return v12;
}

unint64_t sub_2662A5AC8()
{
  result = qword_280F8F660;
  if (!qword_280F8F660)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280074210, &qword_2664E3640);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F8F660);
  }

  return result;
}

unint64_t sub_2662A5B2C(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_2664E0D88())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t _s16SiriAudioSupport5TasksV11parallelize5queue5tasks10completionySo012OS_dispatch_F0C_yyyccdyyctFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a3;
  v34 = a4;
  v6 = sub_2664E0038();
  v36 = *(v6 - 8);
  v7 = *(v36 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2664E00B8();
  v35 = *(v10 - 8);
  v11 = *(v35 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2664DF528();
  v14 = sub_2664DF4F8();
  if (!v14)
  {
    v14 = sub_2664DF518();
  }

  v15 = v14;
  v41 = a1;
  v42 = dispatch_group_create();
  v16 = *(a2 + 16);
  v17 = v13;
  if (v16)
  {
    v18 = (a2 + 32);
    v38 = (v36 + 8);
    v39 = &v46;
    v37 = (v35 + 8);
    v40 = v10;
    do
    {
      v19 = swift_allocObject();
      v20 = *v18++;
      *(v19 + 16) = v20;

      v21 = v42;
      dispatch_group_enter(v42);
      v22 = swift_allocObject();
      v22[2] = v15;
      v22[3] = sub_2662A617C;
      v22[4] = v19;
      v22[5] = v21;
      v48 = sub_26640431C;
      v49 = v22;
      aBlock = MEMORY[0x277D85DD0];
      v45 = 1107296256;
      v46 = sub_2662A3F90;
      v47 = &block_descriptor_35;
      v23 = _Block_copy(&aBlock);

      v24 = v21;
      sub_2664E0068();
      v43 = MEMORY[0x277D84F90];
      sub_2662A6120();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280074210, &qword_2664E3640);
      sub_2662A5AC8();
      sub_2664E0A08();
      MEMORY[0x266783800](0, v17, v9, v23);
      v25 = v23;
      v10 = v40;
      _Block_release(v25);

      (*v38)(v9, v6);
      (*v37)(v17, v10);

      --v16;
    }

    while (v16);
  }

  v26 = swift_allocObject();
  v27 = v33;
  v28 = v34;
  v26[2] = v15;
  v26[3] = v27;
  v26[4] = v28;
  v48 = sub_266404328;
  v49 = v26;
  aBlock = MEMORY[0x277D85DD0];
  v45 = 1107296256;
  v46 = sub_2662A3F90;
  v47 = &block_descriptor_42;
  v29 = _Block_copy(&aBlock);

  sub_2664E0068();
  v43 = MEMORY[0x277D84F90];
  sub_2662A6120();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280074210, &qword_2664E3640);
  v30 = v17;
  sub_2662A5AC8();
  sub_2664E0A08();
  v31 = v42;
  sub_2664E0758();
  _Block_release(v29);

  (*(v36 + 8))(v9, v6);
  (*(v35 + 8))(v30, v10);
}

uint64_t sub_2662A6094()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2662A60DC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

unint64_t sub_2662A6120()
{
  result = qword_280F8F6A0;
  if (!qword_280F8F6A0)
  {
    sub_2664E0038();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F8F6A0);
  }

  return result;
}

uint64_t sub_2662A6184(uint64_t a1, uint64_t a2, void (*a3)(void *))
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v8[0] = sub_2662AA544;
  v8[1] = v6;

  a3(v8);
}

uint64_t sub_2662A6220()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2662A6270()
{
  v1 = *(sub_2664DEA08() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_2662A62D4(v2, v3);
}

uint64_t sub_2662A62D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2664DEA08();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a2, v4);
  swift_beginAccess();
  v9 = *(a1 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a1 + 16) = v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = sub_266384F50(0, v9[2] + 1, 1, v9);
    *(a1 + 16) = v9;
  }

  v12 = v9[2];
  v11 = v9[3];
  if (v12 >= v11 >> 1)
  {
    v9 = sub_266384F50(v11 > 1, v12 + 1, 1, v9);
  }

  v9[2] = v12 + 1;
  (*(v5 + 32))(v9 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v12, v8, v4);
  *(a1 + 16) = v9;
  return swift_endAccess();
}

void sub_2662A6624(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

void sub_2662A66BC(void *a1, void *a2, void (*a3)(uint64_t **), uint64_t a4, int a5)
{
  v54 = a5;
  v56 = a4;
  v57 = a3;
  v58 = a2;
  v6 = sub_2664DFE38();
  v7 = *(v6 - 8);
  v8 = v7[8];
  v9 = MEMORY[0x28223BE20](v6);
  v53 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v51 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v51 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v51 - v17;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v19 = __swift_project_value_buffer(v6, qword_280F914F0);
  swift_beginAccess();
  v55 = v7[2];
  v55(v18, v19, v6);
  v20 = sub_2664DFE18();
  v21 = sub_2664E06C8();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v52 = a1;
    v23 = v6;
    v24 = v16;
    v25 = v13;
    v26 = v7;
    v27 = v22;
    *v22 = 0;
    _os_log_impl(&dword_26629C000, v20, v21, "SubscriptionProvider#status Subscription status request completed", v22, 2u);
    v28 = v27;
    v7 = v26;
    v13 = v25;
    v16 = v24;
    v6 = v23;
    a1 = v52;
    MEMORY[0x266784AD0](v28, -1, -1);
  }

  v31 = v7[1];
  v30 = v7 + 1;
  v29 = v31;
  v31(v18, v6);
  v32 = v58;
  if (v58)
  {
    v55(v16, v19, v6);
    v33 = v32;
    v34 = sub_2664DFE18();
    v35 = sub_2664E06D8();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v59 = v37;
      *v36 = 136315138;
      swift_getErrorValue();
      v38 = sub_2664E0DE8();
      v40 = sub_2662A320C(v38, v39, &v59);

      *(v36 + 4) = v40;
      v32 = v58;
      _os_log_impl(&dword_26629C000, v34, v35, "SubscriptionProvider#status Error while getting subscription status %s", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v37);
      MEMORY[0x266784AD0](v37, -1, -1);
      MEMORY[0x266784AD0](v36, -1, -1);
    }

    v29(v16, v6);
    LOWORD(v59) = v54;
    v57(&v59);
  }

  else if (a1)
  {
    v58 = v30;
    v41 = a1;
    v42 = [v41 statusType];
    if (v42 == 1)
    {
      v43 = 1;
    }

    else
    {
      v43 = 2 * (v42 == 2);
    }

    sub_2662A6C48(v41, &v59);
    v44 = v59;
    v55(v53, v19, v6);
    v45 = sub_2664DFE18();
    v46 = sub_2664E06C8();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 134218240;
      *(v47 + 4) = v43;
      *(v47 + 12) = 2048;
      *(v47 + 14) = v44;
      _os_log_impl(&dword_26629C000, v45, v46, "SubscriptionProvider#status Subscription status found as: musicSubscriptionStatus=%ld, musicSubscriptionType=%ld", v47, 0x16u);
      MEMORY[0x266784AD0](v47, -1, -1);
    }

    v29(v53, v6);
    LOBYTE(v59) = v43;
    BYTE1(v59) = v44;
    v57(&v59);
  }

  else
  {
    v55(v13, v19, v6);
    v48 = sub_2664DFE18();
    v49 = sub_2664E06D8();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&dword_26629C000, v48, v49, "SubscriptionProvider#status Received nil subscription status", v50, 2u);
      MEMORY[0x266784AD0](v50, -1, -1);
    }

    v29(v13, v6);
    LOWORD(v59) = v54;
    v57(&v59);
  }
}

id sub_2662A6C48@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v4 = sub_2664DFE38();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v31 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v31 - v13;
  result = [a1 statusType];
  if (result == 2)
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v21 = __swift_project_value_buffer(v4, qword_280F914F0);
    swift_beginAccess();
    v33 = v5[2];
    v33(v12, v21, v4);
    v22 = sub_2664DFE18();
    v23 = sub_2664E06C8();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v32 = a2;
      v25 = v24;
      *v24 = 0;
      _os_log_impl(&dword_26629C000, v22, v23, "SubscriptionProvider#subscriptionType account is not subscribed", v24, 2u);
      v26 = v25;
      a2 = v32;
      MEMORY[0x266784AD0](v26, -1, -1);
    }

    v27 = v5[1];
    v27(v12, v4);
    result = [a1 isMatchEnabled];
    if (result)
    {
      v33(v9, v21, v4);
      v28 = sub_2664DFE18();
      v29 = sub_2664E06C8();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&dword_26629C000, v28, v29, "SubscriptionProvider#subscriptionType account has iTunes match enabled", v30, 2u);
        MEMORY[0x266784AD0](v30, -1, -1);
      }

      result = (v27)(v9, v4);
      v20 = 8;
    }

    else
    {
      v20 = 1;
    }
  }

  else if (result == 1)
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v16 = __swift_project_value_buffer(v4, qword_280F914F0);
    swift_beginAccess();
    (v5[2])(v14, v16, v4);
    v17 = sub_2664DFE18();
    v18 = sub_2664E06C8();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_26629C000, v17, v18, "SubscriptionProvider#subscriptionType account is subscribed", v19, 2u);
      MEMORY[0x266784AD0](v19, -1, -1);
    }

    result = (v5[1])(v14, v4);
    v20 = 5;
  }

  else
  {
    v20 = 0;
  }

  *a2 = v20;
  return result;
}

uint64_t sub_2662A7040(__int16 *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *a1;
  return v2(&v5);
}

void sub_2662A707C(void *a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072A98, &unk_2664E58C0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072AA0, &qword_2664E9EA0) - 8);
  v7 = (v5 + *(v6 + 80) + 8) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 11) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 11) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 23) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 23) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + 23) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v13 + 23) & 0xFFFFFFFFFFFFFFF8;
  sub_2662A41AC(a1, v1 + v4, *(v1 + v5), v1 + v7, *(v1 + v8), *(v1 + v9), *(v1 + v10), *(v1 + v10 + 8), *(v1 + v11), *(v1 + v11 + 8), *(v1 + v12), *(v1 + v12 + 8), *(v1 + v13), *(v1 + v13 + 8), *(v1 + v14), *(v1 + ((v14 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v14 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_2662A7224(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2662A728C(uint64_t *a1)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  v4 = *(v1 + 56);
  v5 = *(v1 + 64);
  v8 = *(v1 + 88);
  v9 = *(v1 + 96);
  v7 = *(v1 + 72);
  return sub_2662ABC50(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32));
}

uint64_t sub_2662A72F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072A98, &unk_2664E58C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2662A7364(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072A98, &unk_2664E58C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2662A73DC(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t, uint64_t))
{
  if (static SiriEnvironmentWrapper.retrieve()())
  {
    sub_2664DF4E8();
    v4 = a1();

    return v4 & 1;
  }

  else
  {
    sub_2664DEC08();
    v6 = v10;
    v7 = v11;
    __swift_project_boxed_opaque_existential_1(v9, v10);
    v8 = a2(v6, v7);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    return v8 & 1;
  }
}

uint64_t sub_2662A74FC(void *a1, void *a2, void *a3, unint64_t a4, int a5, unint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v98 = a8;
  v103 = a7;
  v94 = a6;
  v99 = a5;
  v100 = a4;
  v101 = a2;
  v105 = a3;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072AA0, &qword_2664E9EA0);
  v95 = *(v18 - 8);
  v97 = *(v95 + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v104 = &v82 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072A98, &unk_2664E58C0);
  v92 = *(v20 - 8);
  v93 = *(v92 + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v96 = &v82 - v21;
  v22 = sub_2664DFE38();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v26 = &v82 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_2664DE4A8();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  v31 = &v82 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = a1;
  if (a1)
  {
    sub_2664DE498();
    v32 = objc_allocWithZone(MEMORY[0x277D5AC78]);
    v33 = sub_2664DE478();
    v34 = [v32 initWithNSUUID_];

    v35 = *(v28 + 8);
    v35(v31, v27);
    v36 = v102;
    [v102 setLinkId_];

    v37 = [v36 radioStationContext];
    if (v37)
    {
      v38 = v37;
      sub_2664DE498();
      v39 = objc_allocWithZone(MEMORY[0x277D5AC78]);
      v40 = sub_2664DE478();
      v41 = [v39 initWithNSUUID_];

      v35(v31, v27);
      [v38 setLinkId_];
    }
  }

  LOBYTE(v106[0]) = 5;
  v42 = sub_26632A4E8(v105, v106);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v91 = a17;
  v90 = a16;
  v86 = a15;
  v89 = a14;
  v85 = a13;
  v88 = a12;
  v84 = a11;
  v87 = a10;
  v83 = a9;
  v43 = __swift_project_value_buffer(v22, qword_280F914F0);
  swift_beginAccess();
  (*(v23 + 16))(v26, v43, v22);
  v44 = sub_2664DFE18();
  v45 = sub_2664E06C8();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    *v46 = 67109120;
    *(v46 + 4) = v42;
    _os_log_impl(&dword_26629C000, v44, v45, "SiriKitTaskLoggingProvider#submitMetric flowTaskType established %d", v46, 8u);
    MEMORY[0x266784AD0](v46, -1, -1);
  }

  (*(v23 + 8))(v26, v22);
  v47 = v96;
  sub_2662A7224(v94, v96, &qword_280072A98, &unk_2664E58C0);
  sub_2662A7224(v103, v104, &qword_280072AA0, &qword_2664E9EA0);
  v48 = (*(v92 + 80) + 16) & ~*(v92 + 80);
  v49 = (v93 + v48 + 7) & 0xFFFFFFFFFFFFFFF8;
  v50 = (*(v95 + 80) + v49 + 8) & ~*(v95 + 80);
  LODWORD(v103) = v42;
  v51 = (v97 + v50 + 7) & 0xFFFFFFFFFFFFFFF8;
  v52 = (v51 + 11) & 0xFFFFFFFFFFFFFFF8;
  v53 = (v52 + 11) & 0xFFFFFFFFFFFFFFF8;
  v54 = (v53 + 23) & 0xFFFFFFFFFFFFFFF8;
  v55 = (v54 + 23) & 0xFFFFFFFFFFFFFFF8;
  v95 = (v55 + 23) & 0xFFFFFFFFFFFFFFF8;
  v97 = (v95 + 23) & 0xFFFFFFFFFFFFFFF8;
  v94 = (v97 + 15) & 0xFFFFFFFFFFFFFFF8;
  v93 = (v94 + 15) & 0xFFFFFFFFFFFFFFF8;
  v56 = swift_allocObject();
  sub_266319B8C(v47, v56 + v48, &qword_280072A98, &unk_2664E58C0);
  v57 = v104;
  v58 = v105;
  *(v56 + v49) = v105;
  sub_266319B8C(v57, v56 + v50, &qword_280072AA0, &qword_2664E9EA0);
  *(v56 + v51) = v98;
  *(v56 + v52) = v103;
  v59 = (v56 + v53);
  v60 = v87;
  *v59 = v83;
  v59[1] = v60;
  v61 = (v56 + v54);
  v62 = v88;
  *v61 = v84;
  v61[1] = v62;
  v63 = (v56 + v55);
  v64 = v89;
  *v63 = v85;
  v63[1] = v64;
  v65 = (v56 + v95);
  v66 = v90;
  *v65 = v86;
  v65[1] = v66;
  v67 = v101;
  v68 = v102;
  *(v56 + v97) = v101;
  *(v56 + v94) = v91;
  *(v56 + v93) = v68;
  v69 = v58;
  v70 = qword_280F90B20;
  v71 = v69;

  v72 = v68;
  if (v70 != -1)
  {
    swift_once();
  }

  if (v99)
  {
    v73 = 0;
  }

  else
  {
    v73 = v100;
  }

  swift_beginAccess();
  sub_2662A5550(qword_280F90B28, v106);
  v74 = v107;
  v75 = v108;
  __swift_project_boxed_opaque_existential_1(v106, v107);
  v76 = (*(v75 + 16))(v74, v75);
  v78 = v77;
  __swift_destroy_boxed_opaque_existential_1Tm(v106);
  type metadata accessor for AirPlayRouteProvider();
  v79 = swift_allocObject();
  type metadata accessor for AirPlayRouteSetupContext();
  v80 = static AirPlayRouteSetupContext.shared(refId:)(v76, v78);

  *(v79 + 16) = v80;
  sub_2662A7FF4(v103, v105, v73, v68, v79, sub_2662A707C, v56, v67);
}

uint64_t sub_2662A7D44()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072A98, &unk_2664E58C0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072AA0, &qword_2664E9EA0) - 8);
  v6 = *(v5 + 80);
  v7 = (v4 + v6 + 8) & ~v6;
  v8 = *(v5 + 64);
  v9 = sub_2664DEA08();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v0 + v3, 1, v9))
  {
    (*(v10 + 8))(v0 + v3, v9);
  }

  v11 = sub_2664DE808();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(v0 + v7, 1, v11))
  {
    (*(v12 + 8))(v0 + v7, v11);
  }

  v13 = (v8 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = (((v13 + 11) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v14 + 23) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v15 + 23) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v16 + 23) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v17 + 23) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v18 + 15) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v19 + 15) & 0xFFFFFFFFFFFFFFF8;
  v21 = *(v0 + v13);

  v22 = *(v0 + v14 + 8);

  v23 = *(v0 + v15 + 8);

  v24 = *(v0 + v16 + 8);

  v25 = *(v0 + v17 + 8);

  v26 = *(v0 + v18);

  v27 = *(v0 + v19);

  return MEMORY[0x2821FE8E8](v0, v20 + 8, v2 | v6 | 7);
}

id sub_2662A7FF4(unsigned int a1, void *a2, unint64_t a3, void *a4, uint64_t a5, void (*a6)(void), uint64_t a7, void *a8)
{
  v69 = a8;
  v70 = a6;
  v67 = a3;
  v68 = a1;
  v12 = sub_2664DFE38();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v63 - v18;
  v72[3] = type metadata accessor for AirPlayRouteProvider();
  v72[4] = &protocol witness table for AirPlayRouteProvider;
  v72[0] = a5;
  v20 = objc_allocWithZone(MEMORY[0x277D57520]);

  v21 = [v20 init];
  if (!v21)
  {
    goto LABEL_8;
  }

  v22 = v21;
  v66 = a7;
  v23 = [objc_allocWithZone(MEMORY[0x277D57628]) init];
  if (!v23)
  {

LABEL_8:
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v35 = __swift_project_value_buffer(v12, qword_280F914F0);
    swift_beginAccess();
    (*(v13 + 16))(v17, v35, v12);
    v36 = sub_2664DFE18();
    v37 = sub_2664E06D8();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_26629C000, v36, v37, "FLOWSchemaFLOWDomainContext error creating domainContext. Returning nil", v38, 2u);
      MEMORY[0x266784AD0](v38, -1, -1);
    }

    (*(v13 + 8))(v17, v12);
    v70(0);
    return __swift_destroy_boxed_opaque_existential_1Tm(v72);
  }

  v24 = v23;
  v65 = a2;
  if (!a2)
  {
    goto LABEL_25;
  }

  objc_opt_self();
  v25 = swift_dynamicCastObjCClass();
  if (!v25)
  {
    v39 = 0;
    if (!a4)
    {
      goto LABEL_29;
    }

LABEL_26:
    v48 = a4;
    if (_s16SiriAudioSupport34MediaPlayerPlaybackContextProviderC10isNotEmpty08playbackG0SbSo019FLOWSchemaFLOWMediaefG0C_tFZ_0(v48))
    {
      [v24 setMediaPlayerPlaybackContext_];

LABEL_34:
      [v24 setMediaType_];
      [v24 clearActiveSubscriptions];
      [v24 setTaskType_];
      v53 = v69[5];
      v54 = v69[6];
      __swift_project_boxed_opaque_existential_1(v69 + 2, v53);
      sub_2662A5550(v72, v71);
      v55 = swift_allocObject();
      v56 = v65;
      v55[2] = v24;
      v55[3] = v56;
      sub_2662A8618(v71, (v55 + 4));
      v57 = v70;
      v55[9] = v22;
      v55[10] = v57;
      v55[11] = v66;
      v58 = v22;
      v59 = *(v54 + 16);
      v60 = v56;
      v61 = v24;
      v62 = v58;

      v59(0, sub_26632C2A4, v55, v53, v54);

      return __swift_destroy_boxed_opaque_existential_1Tm(v72);
    }

LABEL_29:
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v49 = __swift_project_value_buffer(v12, qword_280F914F0);
    swift_beginAccess();
    (*(v13 + 16))(v19, v49, v12);
    v50 = sub_2664DFE18();
    v51 = sub_2664E06D8();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&dword_26629C000, v50, v51, "SiriKitTaskLoggingProvider#createFLOWDomainContext mediaPlayerPlaybackContext empty, not attaching to mediaPlayerContext", v52, 2u);
      MEMORY[0x266784AD0](v52, -1, -1);
    }

    (*(v13 + 8))(v19, v12);
    goto LABEL_34;
  }

  v26 = v25;
  v64 = v22;
  v27 = a2;
  v28 = &selRef_setUniversalStoreIdentifiersWithBlock_;
  v29 = [v26 hashedRouteUIDs];
  if (v29)
  {
    v30 = v29;
    v31 = v27;
    v32 = sub_2664E04A8();

    v33 = *(v32 + 16);
    v27 = v31;
    v28 = &selRef_setUniversalStoreIdentifiersWithBlock_;

    v34 = v33 != 0;
  }

  else
  {
    v34 = 0;
  }

  [v24 setIsWholeHouseAudio_];
  v40 = [v24 isWholeHouseAudio];
  v22 = v64;
  if (!v40)
  {
LABEL_24:

LABEL_25:
    v39 = v67;
    if (!a4)
    {
      goto LABEL_29;
    }

    goto LABEL_26;
  }

  v41 = [v26 v28[68]];
  if (v41)
  {
    v42 = v27;
    v43 = v41;
    v44 = sub_2664E04A8();

    v27 = v42;
    v45 = *(v44 + 16);
  }

  else
  {
    v45 = 0;
  }

  result = [objc_allocWithZone(MEMORY[0x277D57740]) init];
  v47 = result;
  if (!result)
  {
LABEL_23:
    [v24 setWholeHouseAudioDestinationContext_];

    goto LABEL_24;
  }

  if (!HIDWORD(v45))
  {
    [result setEligibleDeviceCount_];
    goto LABEL_23;
  }

  __break(1u);
  return result;
}

uint64_t sub_2662A8618(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t _s16SiriAudioSupport34MediaPlayerPlaybackContextProviderC10isNotEmpty08playbackG0SbSo019FLOWSchemaFLOWMediaefG0C_tFZ_0(void *a1)
{
  if ([a1 executionSource] || objc_msgSend(a1, sel_endpoint) || objc_msgSend(a1, sel_contentSource))
  {
    return 1;
  }

  result = [a1 radioStationContext];
  if (result || (result = [a1 playlistContext]) != 0)
  {

    return 1;
  }

  return result;
}

uint64_t sub_2662A86F4(unint64_t a1)
{
  if (a1 > 0x14)
  {
    return 0;
  }

  else
  {
    return dword_2664E5E24[a1];
  }
}

uint64_t SubscriptionProvider.status(bypassingCache:completion:)(int a1, uint64_t a2, uint64_t a3)
{
  v18 = a2;
  v19 = a1;
  v4 = sub_2664DFE08();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v18 - v9;
  if (qword_280F91508 != -1)
  {
    swift_once();
  }

  v11 = qword_280F91D48;
  sub_2664DFDE8();
  (*(v5 + 16))(v8, v10, v4);
  v12 = (*(v5 + 80) + 33) & ~*(v5 + 80);
  v13 = (v6 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = swift_allocObject();
  *(v14 + 16) = "subscriptionProviderStatus";
  *(v14 + 24) = 26;
  *(v14 + 32) = 2;
  (*(v5 + 32))(v14 + v12, v8, v4);
  v15 = (v14 + v13);
  *v15 = v18;
  v15[1] = a3;

  sub_2664E0848();
  sub_2664DFDD8();
  v16 = swift_allocObject();
  *(v16 + 16) = sub_2662A929C;
  *(v16 + 24) = v14;

  sub_2662A55B4(sub_2662A7040, v16, v19 & 1, 0);

  return (*(v5 + 8))(v10, v4);
}

uint64_t sub_2662A89A0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2662A89E4(uint64_t a1)
{
  v2 = sub_2664E0038();
  v68 = *(v2 - 8);
  v69 = v2;
  v3 = *(v68 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_2664E00B8();
  v6 = *(v67 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v67);
  v66 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2664DFE38();
  v71 = *(v9 - 8);
  v10 = *(v71 + 64);
  MEMORY[0x28223BE20](v9);
  v70 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072A98, &unk_2664E58C0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v53 - v14;
  v16 = sub_2664DEA08();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v64 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v53 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v53 - v23;
  sub_2662A72F4(a1, v15);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    return sub_2662A7364(v15);
  }

  v61 = v6;
  v62 = v5;
  v26 = *(v17 + 32);
  v59 = v17 + 32;
  v58 = v26;
  v26(v24, v15, v16);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v27 = v9;
  v28 = __swift_project_value_buffer(v9, qword_280F914F0);
  swift_beginAccess();
  v29 = v70;
  v30 = v71;
  v31 = *(v71 + 16);
  v54 = v27;
  v31(v70, v28, v27);
  v32 = v17;
  v33 = v29;
  v34 = *(v17 + 16);
  v56 = v17 + 16;
  v55 = v34;
  v34(v22, v24, v16);
  v35 = sub_2664DFE18();
  v36 = sub_2664E06C8();
  v37 = os_log_type_enabled(v35, v36);
  v60 = v17;
  v63 = v24;
  if (v37)
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    aBlock[0] = v39;
    *v38 = 136315138;
    v40 = sub_2664DE9F8();
    v42 = v41;
    v57 = *(v32 + 8);
    v57(v22, v16);
    v43 = sub_2662A320C(v40, v42, aBlock);

    *(v38 + 4) = v43;
    _os_log_impl(&dword_26629C000, v35, v36, "STCAuditProvider#addEvent adding activityType: %s", v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v39);
    MEMORY[0x266784AD0](v39, -1, -1);
    v44 = v38;
    v24 = v63;
    MEMORY[0x266784AD0](v44, -1, -1);

    (*(v71 + 8))(v70, v54);
  }

  else
  {

    v57 = *(v17 + 8);
    v57(v22, v16);
    (*(v30 + 8))(v33, v54);
  }

  v45 = v61;
  if (qword_280F90B08 != -1)
  {
    swift_once();
  }

  v46 = v64;
  v55(v64, v24, v16);
  v47 = (*(v60 + 80) + 24) & ~*(v60 + 80);
  v48 = swift_allocObject();
  *(v48 + 16) = v65;
  v58(v48 + v47, v46, v16);
  aBlock[4] = sub_2662A6270;
  aBlock[5] = v48;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2662A3F90;
  aBlock[3] = &block_descriptor_28;
  v49 = _Block_copy(aBlock);

  v50 = v66;
  sub_2664E0068();
  v72 = MEMORY[0x277D84F90];
  sub_2662A3CE8(&qword_280F8F6A0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280074210, &qword_2664E3640);
  sub_2662A5AC8();
  v51 = v62;
  v52 = v69;
  sub_2664E0A08();
  MEMORY[0x266783800](0, v50, v51, v49);
  _Block_release(v49);
  (*(v68 + 8))(v51, v52);
  (*(v45 + 8))(v50, v67);
  v57(v63, v16);
}

uint64_t sub_2662A9174()
{
  v1 = sub_2664DEA08();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2662A9238(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2662A929C(__int16 *a1)
{
  v3 = *(sub_2664DFE08() - 8);
  v4 = (*(v3 + 80) + 33) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v8 = *v7;
  v9 = *(v7 + 8);
  v10 = *(v1 + 32);

  return sub_2662A9344(a1, v5, v6, v10, v1 + v4, v8);
}

uint64_t sub_2662A9344(__int16 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(__int16 *))
{
  v8 = *a1;
  sub_2664E0838();
  if (qword_280F91508 != -1)
  {
    swift_once();
  }

  sub_2664DFDD8();
  return a6(&v8);
}

BOOL _s16SiriAudioSupport22InternalSignalsManagerC10doesIntent_4haveSbSo8INIntentC_SaySSGtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = sub_2664DFE38();
  v4 = *(v3 - 8);
  v5 = v4[8];
  v6 = MEMORY[0x28223BE20](v3);
  v44 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v39 - v8;
  if (qword_280071A88 != -1)
  {
    swift_once();
  }

  v43 = off_2800725D0;
  v10 = *(off_2800725D0 + 2);

  sub_2662A98AC();

  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v3, qword_280F914F0);
  swift_beginAccess();
  v40 = v4[2];
  v40(v9, v11, v3);
  v12 = sub_2664DFE18();
  v13 = sub_2664E06E8();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_26629C000, v12, v13, "InternalSignalsManager#doesIntent#have (lock aquired)", v14, 2u);
    MEMORY[0x266784AD0](v14, -1, -1);
  }

  v15 = v4[1];
  v45 = v4 + 1;
  v46 = v3;
  v41 = v15;
  v15(v9, v3);
  v16 = _s16SiriAudioSupport22InternalSignalsManagerC08internalE03forSaySSGSo8INIntentC_tFZ_0();
  v17 = v16;
  v18 = *(a2 + 16);
  v42 = a2;
  v19 = (a2 + 40);
  v20 = v18 + 1;
  do
  {
    if (!--v20)
    {
      break;
    }

    v21 = v19 + 2;
    v22 = *v19;
    v47[0] = *(v19 - 1);
    v47[1] = v22;
    MEMORY[0x28223BE20](v16);
    *(&v39 - 2) = v47;

    v23 = sub_2662AA720(sub_2662AA7CC, (&v39 - 4), v17);

    v19 = v21;
  }

  while ((v23 & 1) == 0);

  v24 = v44;
  v25 = v46;
  v40(v44, v11, v46);
  v26 = v42;

  v27 = sub_2664DFE18();
  v28 = sub_2664E06E8();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v47[0] = v30;
    *v29 = 136315394;
    v31 = MEMORY[0x2667834D0](v26, MEMORY[0x277D837D0]);
    v33 = sub_2662A320C(v31, v32, v47);

    *(v29 + 4) = v33;
    *(v29 + 12) = 2080;
    if (v20)
    {
      v34 = 0;
    }

    else
    {
      v34 = 7630702;
    }

    if (v20)
    {
      v35 = 0xE000000000000000;
    }

    else
    {
      v35 = 0xE300000000000000;
    }

    v36 = sub_2662A320C(v34, v35, v47);

    *(v29 + 14) = v36;
    _os_log_impl(&dword_26629C000, v27, v28, "InternalSignalsManager#doesIntent signals: %s %s present in intent. (unlock)", v29, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v30, -1, -1);
    MEMORY[0x266784AD0](v29, -1, -1);
  }

  v41(v24, v25);
  v37 = v43[2];

  sub_2662AA89C();

  return v20 != 0;
}

uint64_t sub_2662A98AC()
{
  v1 = v0;
  v2 = sub_2664DFE38();
  v3 = *(v2 - 8);
  v4 = v3[8];
  v5 = MEMORY[0x28223BE20](v2);
  v71 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v70 = &v63 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  isEscapingClosureAtFileLocation = &v63 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v63 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v63 - v15;
  v17 = pthread_self();
  v18 = sub_2662AA36C();
  v72 = pthread_equal(v18, v17);
  if (!v72)
  {
    goto LABEL_13;
  }

  v66 = v14;
  if (qword_280F914E8 != -1)
  {
    goto LABEL_33;
  }

  while (1)
  {
    v19 = __swift_project_value_buffer(v2, qword_280F914F0);
    swift_beginAccess();
    v68 = v3[2];
    v69 = v19;
    v68(v16, v19, v2);

    v20 = sub_2664DFE18();
    v21 = sub_2664E06D8();

    v22 = os_log_type_enabled(v20, v21);
    v67 = v17;
    if (v22)
    {
      v23 = swift_slowAlloc();
      v65 = isEscapingClosureAtFileLocation;
      v24 = v17;
      v25 = v23;
      v64 = swift_slowAlloc();
      aBlock = v64;
      *v25 = 136315394;
      *(v25 + 4) = sub_2662A320C(*(v1 + 32), *(v1 + 40), &aBlock);
      *(v25 + 12) = 2080;
      v73 = v24;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800732C8, &qword_2664E9E98);
      v26 = sub_2664E0318();
      v28 = sub_2662A320C(v26, v27, &aBlock);
      isEscapingClosureAtFileLocation = v65;

      *(v25 + 14) = v28;
      _os_log_impl(&dword_26629C000, v20, v21, "PThreadMutex#lock expected mutex '%s' to NOT be locked on this thread: %s", v25, 0x16u);
      v29 = v64;
      swift_arrayDestroy();
      MEMORY[0x266784AD0](v29, -1, -1);
      MEMORY[0x266784AD0](v25, -1, -1);
    }

    v30 = v3[1];
    v30(v16, v2);
    sub_2663A5370();
    if ((*(v1 + 48) & 1) == 0)
    {
      v37 = v66;
      v68(v66, v69, v2);

      v38 = sub_2664DFE18();
      v39 = sub_2664E06D8();

      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        aBlock = v41;
        *v40 = 136315138;
        *(v40 + 4) = sub_2662A320C(*(v1 + 32), *(v1 + 40), &aBlock);
        _os_log_impl(&dword_26629C000, v38, v39, "PThreadMutex#lock double lock bailing out, not relocking mutex '%s'", v40, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v41);
        MEMORY[0x266784AD0](v41, -1, -1);
        MEMORY[0x266784AD0](v40, -1, -1);
      }

      v30(v37, v2);
      return 0;
    }

    v68(isEscapingClosureAtFileLocation, v69, v2);

    v31 = sub_2664DFE18();
    v32 = sub_2664E06D8();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = isEscapingClosureAtFileLocation;
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      aBlock = v35;
      *v34 = 136315138;
      *(v34 + 4) = sub_2662A320C(*(v1 + 32), *(v1 + 40), &aBlock);
      _os_log_impl(&dword_26629C000, v31, v32, "PThreadMutex#lock double lock START trying to lock mutex '%s'", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v35);
      MEMORY[0x266784AD0](v35, -1, -1);
      MEMORY[0x266784AD0](v34, -1, -1);

      v36 = v33;
    }

    else
    {

      v36 = isEscapingClosureAtFileLocation;
    }

    v30(v36, v2);
    v17 = v67;
LABEL_13:
    v16 = &unk_280F91000;
    v42 = pthread_mutex_lock(*(v1 + 16));
    if (qword_280F90F30 != -1)
    {
      swift_once();
    }

    v43 = qword_280F90F38;
    v44 = swift_allocObject();
    *(v44 + 16) = v1;
    *(v44 + 24) = v17;
    v45 = swift_allocObject();
    *(v45 + 16) = sub_2662AA590;
    *(v45 + 24) = v44;
    v79 = sub_2662AA544;
    v80 = v45;
    aBlock = MEMORY[0x277D85DD0];
    v76 = 1107296256;
    v77 = sub_2662ABACC;
    v78 = &block_descriptor_23;
    v17 = _Block_copy(&aBlock);

    dispatch_sync(v43, v17);
    _Block_release(v17);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      break;
    }

    __break(1u);
LABEL_33:
    swift_once();
  }

  if (v72)
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v46 = __swift_project_value_buffer(v2, qword_280F914F0);
    swift_beginAccess();
    v47 = v70;
    (v3[2])(v70, v46, v2);

    v48 = sub_2664DFE18();
    v49 = sub_2664E06D8();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      aBlock = v51;
      *v50 = 136315138;
      *(v50 + 4) = sub_2662A320C(*(v1 + 32), *(v1 + 40), &aBlock);
      _os_log_impl(&dword_26629C000, v48, v49, "PThreadMutex#lock double lock END did get lock for mutex '%s'", v50, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v51);
      MEMORY[0x266784AD0](v51, -1, -1);
      MEMORY[0x266784AD0](v50, -1, -1);
    }

    (v3[1])(v47, v2);
  }

  if (!v42)
  {
    return 1;
  }

  aBlock = 0;
  v76 = 0xE000000000000000;
  sub_2664E0B28();
  MEMORY[0x2667833B0](0xD00000000000002DLL, 0x80000002664F6630);
  LODWORD(v74) = v42;
  v52 = sub_2664E0D48();
  MEMORY[0x2667833B0](v52);

  MEMORY[0x2667833B0](0x20726F6620, 0xE500000000000000);
  MEMORY[0x2667833B0](*(v1 + 32), *(v1 + 40));
  v54 = aBlock;
  v53 = v76;
  if (*(v1 + 48) != 1)
  {
    v55 = v71;
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v56 = __swift_project_value_buffer(v2, qword_280F914F0);
    swift_beginAccess();
    (v3[2])(v55, v56, v2);

    v57 = sub_2664DFE18();
    v58 = sub_2664E06D8();

    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v74 = v60;
      *v59 = 136315138;
      v61 = sub_2662A320C(v54, v53, &v74);

      *(v59 + 4) = v61;
      _os_log_impl(&dword_26629C000, v57, v58, "%s", v59, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v60);
      MEMORY[0x266784AD0](v60, -1, -1);
      MEMORY[0x266784AD0](v59, -1, -1);
    }

    else
    {
    }

    (v3[1])(v55, v2);
    return 0;
  }

  result = sub_2664E0C48();
  __break(1u);
  return result;
}

uint64_t sub_2662AA324()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2662AA36C()
{
  v9 = 0;
  if (qword_280F90F30 != -1)
  {
    swift_once();
  }

  v1 = qword_280F90F38;
  v2 = swift_allocObject();
  *(v2 + 16) = &v9;
  *(v2 + 24) = v0;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_2662AA578;
  *(v3 + 24) = v2;
  aBlock[4] = sub_2662AA574;
  aBlock[5] = v3;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2662ABACC;
  aBlock[3] = &block_descriptor_33;
  v4 = _Block_copy(aBlock);

  dispatch_sync(v1, v4);
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v7 = v9;

    return v7;
  }

  return result;
}

uint64_t sub_2662AA500()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2662AA544()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t _s16SiriAudioSupport22InternalSignalsManagerC08internalE03forSaySSGSo8INIntentC_tFZ_0()
{
  objc_opt_self();
  v0 = swift_dynamicCastObjCClass();
  if (v0)
  {
    v1 = [v0 privatePlayMediaIntentData];
    if (!v1)
    {
      return MEMORY[0x277D84F90];
    }
  }

  else
  {
    objc_opt_self();
    v2 = swift_dynamicCastObjCClass();
    if (v2)
    {
      v1 = [v2 privateAddMediaIntentData];
      if (!v1)
      {
        return MEMORY[0x277D84F90];
      }
    }

    else
    {
      objc_opt_self();
      v3 = swift_dynamicCastObjCClass();
      if (v3)
      {
        v1 = [v3 privateUpdateMediaAffinityIntentData];
        if (!v1)
        {
          return MEMORY[0x277D84F90];
        }
      }

      else
      {
        objc_opt_self();
        v4 = swift_dynamicCastObjCClass();
        if (!v4)
        {
          return MEMORY[0x277D84F90];
        }

        v1 = [v4 privateSearchForMediaIntentData];
        if (!v1)
        {
          return MEMORY[0x277D84F90];
        }
      }
    }
  }

  v5 = v1;
  v6 = [v1 internalSignals];

  if (v6)
  {
    v7 = sub_2664E04A8();

    return v7;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_2662AA720(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_2662AA7EC(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_2664E0D88() & 1;
  }
}

uint64_t sub_2662AA844(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_2664E0D88() & 1;
  }
}

uint64_t sub_2662AA89C()
{
  v1 = v0;
  v2 = sub_2664DFE38();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F90F30 != -1)
  {
    swift_once();
  }

  v7 = qword_280F90F38;
  v8 = swift_allocObject();
  *(v8 + 16) = v1;
  *(v8 + 24) = 0;
  v9 = swift_allocObject();
  v10 = v9;
  *(v9 + 16) = sub_2662AAD1C;
  *(v9 + 24) = v8;
  v27 = sub_2662AA574;
  v28 = v9;
  aBlock = MEMORY[0x277D85DD0];
  v24 = 1107296256;
  v25 = sub_2662ABACC;
  v26 = &block_descriptor_14;
  v11 = _Block_copy(&aBlock);

  dispatch_sync(v7, v11);
  _Block_release(v11);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    goto LABEL_13;
  }

  v10 = pthread_mutex_unlock(*(v1 + 16));
  if (!v10)
  {
    return v10 == 0;
  }

  aBlock = 0;
  v24 = 0xE000000000000000;
  sub_2664E0B28();
  MEMORY[0x2667833B0](0xD000000000000031, 0x80000002664F6660);
  LODWORD(v22) = v10;
  v13 = sub_2664E0D48();
  MEMORY[0x2667833B0](v13);

  MEMORY[0x2667833B0](0x20726F6620, 0xE500000000000000);
  MEMORY[0x2667833B0](*(v1 + 32), *(v1 + 40));
  v11 = aBlock;
  isEscapingClosureAtFileLocation = v24;
  if (*(v1 + 48) != 1)
  {
    if (qword_280F914E8 == -1)
    {
LABEL_7:
      v14 = __swift_project_value_buffer(v2, qword_280F914F0);
      swift_beginAccess();
      (*(v3 + 16))(v6, v14, v2);

      v15 = sub_2664DFE18();
      v16 = sub_2664E06D8();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v22 = v18;
        *v17 = 136315138;
        v19 = sub_2662A320C(v11, isEscapingClosureAtFileLocation, &v22);

        *(v17 + 4) = v19;
        _os_log_impl(&dword_26629C000, v15, v16, "%s", v17, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v18);
        MEMORY[0x266784AD0](v18, -1, -1);
        MEMORY[0x266784AD0](v17, -1, -1);
      }

      else
      {
      }

      (*(v3 + 8))(v6, v2);
      return v10 == 0;
    }

LABEL_13:
    swift_once();
    goto LABEL_7;
  }

  result = sub_2664E0C48();
  __break(1u);
  return result;
}

uint64_t sub_2662AAD24(void *a1, uint64_t (*a2)(void), uint64_t a3)
{
  v6 = sub_2664DFE38();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v64 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v64 - v15;
  objc_opt_self();
  v17 = swift_dynamicCastObjCClass();
  if (v17)
  {
    v18 = v17;
    v19 = swift_allocObject();
    *(v19 + 16) = a2;
    *(v19 + 24) = a3;
    v20 = a1;

    v21 = [v20 airPlayRouteIds];
    if (v21)
    {
      v67 = a3;
      v22 = v21;
      v23 = sub_2664E04A8();

      if (*(v23 + 16))
      {
        if (qword_280F914E8 != -1)
        {
          swift_once();
        }

        v24 = __swift_project_value_buffer(v6, qword_280F914F0);
        swift_beginAccess();
        (*(v7 + 16))(v16, v24, v6);

        v25 = sub_2664DFE18();
        v26 = sub_2664E06B8();

        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          v28 = swift_slowAlloc();
          v65 = v20;
          v29 = v28;
          v68 = v28;
          *v27 = 136315138;
          v30 = MEMORY[0x2667834D0](v23, MEMORY[0x277D837D0]);
          v66 = v6;
          v64 = v7;
          v32 = sub_2662A320C(v30, v31, &v68);

          *(v27 + 4) = v32;
          _os_log_impl(&dword_26629C000, v25, v26, "AirPlayRouteProvider#getRouteIdsFromIntent Have airPlayRouteIds: %s", v27, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v29);
          v33 = v29;
          v20 = v65;
          MEMORY[0x266784AD0](v33, -1, -1);
          MEMORY[0x266784AD0](v27, -1, -1);

          (*(v64 + 8))(v16, v66);
        }

        else
        {

          (*(v7 + 8))(v16, v6);
        }

        sub_26647CB88(v23, a2, v67);
      }
    }

    v49 = [v18 hashedRouteUIDs];
    if (v49)
    {
      v67 = v19;
      v50 = v6;
      v51 = v7;
      v52 = a2;
      v53 = v49;
      v54 = sub_2664E04A8();

      if (*(v54 + 16))
      {
        if (qword_280F914E8 != -1)
        {
          swift_once();
        }

        v55 = __swift_project_value_buffer(v50, qword_280F914F0);
        swift_beginAccess();
        (*(v51 + 16))(v14, v55, v50);

        v56 = sub_2664DFE18();
        v57 = sub_2664E06B8();

        if (os_log_type_enabled(v56, v57))
        {
          v58 = swift_slowAlloc();
          v59 = swift_slowAlloc();
          v66 = v50;
          v60 = v59;
          v68 = v59;
          *v58 = 136315138;
          v61 = MEMORY[0x2667834D0](v54, MEMORY[0x277D837D0]);
          v63 = sub_2662A320C(v61, v62, &v68);

          *(v58 + 4) = v63;
          _os_log_impl(&dword_26629C000, v56, v57, "AirPlayRouteProvider#getRouteIdsFromIntent Have hashedRouteUIDs, will attempt decoding: %s", v58, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v60);
          MEMORY[0x266784AD0](v60, -1, -1);
          MEMORY[0x266784AD0](v58, -1, -1);

          (*(v51 + 8))(v14, v66);
        }

        else
        {

          (*(v51 + 8))(v14, v50);
        }

        sub_266482EA0(v54, sub_266483C7C, v67);
      }

      a2 = v52;
    }

    a2(0);
  }

  else
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v34 = __swift_project_value_buffer(v6, qword_280F914F0);
    swift_beginAccess();
    (*(v7 + 16))(v11, v34, v6);
    v35 = a1;
    v36 = sub_2664DFE18();
    v37 = sub_2664E06B8();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v67 = a3;
      v68 = v39;
      v40 = v39;
      *v38 = 136315138;
      v41 = [v35 debugDescription];
      v66 = v6;
      v42 = a2;
      v43 = v41;
      v44 = sub_2664E02C8();
      v46 = v45;

      v47 = sub_2662A320C(v44, v46, &v68);

      *(v38 + 4) = v47;
      a2 = v42;
      _os_log_impl(&dword_26629C000, v36, v37, "AirPlayRouteProvider#getRouteIdsFromIntent Not an INPlayMediaIntent: %s", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v40);
      MEMORY[0x266784AD0](v40, -1, -1);
      MEMORY[0x266784AD0](v38, -1, -1);

      (*(v7 + 8))(v11, v66);
    }

    else
    {

      (*(v7 + 8))(v11, v6);
    }

    return a2(0);
  }
}

uint64_t sub_2662AB4C0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

id sub_2662AB4F8(uint64_t a1)
{
  v3 = *(v1 + 16);
  if (!a1)
  {
    goto LABEL_4;
  }

  v4 = *(a1 + 16);
  if (HIDWORD(v4))
  {
    __break(1u);
LABEL_4:
    v4 = 0;
  }

  return [v3 setAirPlayTargetedDevicesCount_];
}

uint64_t sub_2662AB534(unsigned __int8 *a1, void *a2, void *a3, void *a4, void *a5, uint64_t (*a6)(id), uint64_t a7)
{
  v51 = a7;
  v52 = a6;
  v49 = a4;
  v50 = a5;
  v53 = a3;
  v9 = sub_2664DFE38();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2664DFE08();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a1[1];
  [a2 setIsMusicSubscriber_];
  v54 = a2;
  [a2 addActiveSubscriptions_];
  sub_2664E0858();
  if (qword_280F91508 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800724D8, &unk_2664E3920);
  v20 = swift_allocObject();
  v21 = MEMORY[0x277D83B88];
  *(v20 + 16) = xmmword_2664E36F0;
  v22 = MEMORY[0x277D83C10];
  *(v20 + 56) = v21;
  *(v20 + 64) = v22;
  *(v20 + 32) = v19;
  sub_2664DFDF8();
  sub_2664DFDC8();

  (*(v15 + 8))(v18, v14);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v23 = __swift_project_value_buffer(v9, qword_280F914F0);
  swift_beginAccess();
  (*(v10 + 16))(v13, v23, v9);
  v24 = sub_2664DFE18();
  v25 = sub_2664E06C8();
  v26 = os_log_type_enabled(v24, v25);
  v27 = v54;
  if (v26)
  {
    v28 = swift_slowAlloc();
    *v28 = 134217984;
    *(v28 + 4) = v19;
    _os_log_impl(&dword_26629C000, v24, v25, "SiriKitTaskLoggingProvider#createFLOWDomainContext addActiveSubscriptions: %ld", v28, 0xCu);
    MEMORY[0x266784AD0](v28, -1, -1);
  }

  (*(v10 + 8))(v13, v9);
  v29 = v53;
  if (!v53)
  {
    goto LABEL_15;
  }

  objc_opt_self();
  v30 = swift_dynamicCastObjCClass();
  if (!v30)
  {
    goto LABEL_15;
  }

  v31 = v30;
  v53 = v29;
  [v27 setIsSiriForAirPlayRequest_];
  v32 = v49;
  v33 = v49[3];
  v34 = v49[4];
  __swift_project_boxed_opaque_existential_1(v49, v33);
  v35 = swift_allocObject();
  *(v35 + 16) = v27;
  v36 = *(v34 + 16);
  v37 = v27;
  v36(v31, sub_2662AB4F8, v35, v33, v34);

  v38 = v32[3];
  v39 = v32[4];
  __swift_project_boxed_opaque_existential_1(v32, v38);
  v40 = (*(v39 + 8))(v38, v39);
  if (!v40 || (v41 = v40, swift_beginAccess(), v42 = *(v41 + 112), v43 = *(v41 + 120), result = , (v43 & 1) != 0))
  {
    v42 = 0;
LABEL_14:
    [v37 setAirPlaySuccessfullyPlayingDevicesCount_];
    v45 = v49[3];
    v46 = v49[4];
    __swift_project_boxed_opaque_existential_1(v49, v45);
    v47 = (*(v46 + 8))(v45, v46);
    [v37 setAirPlayRouteSettingStatus_];

LABEL_15:
    v48 = v50;
    [v50 setMediaPlayerContext_];
    return v52(v48);
  }

  if ((v42 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(v42))
  {
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

uint64_t sub_2662ABA94()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2662ABAF8(uint64_t result)
{
  if (result)
  {
    v1 = result;
    swift_beginAccess();
    if (*(v1 + 64))
    {

      return 5;
    }

    else
    {
      swift_beginAccess();
      if (*(v1 + 80))
      {

        return 6;
      }

      else
      {
        swift_beginAccess();
        if (*(v1 + 56))
        {

          return 4;
        }

        else
        {
          swift_beginAccess();
          if (*(v1 + 88) == 2)
          {
            swift_beginAccess();
            if (*(v1 + 72) == 2)
            {
              swift_beginAccess();
              v2 = *(v1 + 112);
              v3 = *(v1 + 120);

              if (v3 & 1 | (v2 == 0))
              {
                return 2;
              }

              else
              {
                return 1;
              }
            }

            else
            {

              return 3;
            }
          }

          else
          {

            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_2662ABC50(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = *a1;

  sub_2664DE858();
  sub_2664E08A8();
  sub_2664DE878();
  v6 = a4;
  sub_2664DE828();

  sub_2664DE818();

  sub_2664DE848();

  sub_2664DE838();

  return sub_2664DE868();
}

uint64_t objectdestroy_52Tm()
{
  v1 = sub_2664DFE08();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 33) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5 + 8);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t AirPlayRouteProvider.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_2662ABE1C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072850, &qword_2664EDE70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t AdditionalPlaybackContext.__deallocating_deinit()
{
  sub_2662ABE1C(v0 + OBJC_IVAR____TtC16SiriAudioSupport25AdditionalPlaybackContext_userDialogAct);
  v1 = *(v0 + OBJC_IVAR____TtC16SiriAudioSupport25AdditionalPlaybackContext_alternativeIds);

  v2 = *(*v0 + 48);
  v3 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void *sub_2662ABF28@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

_DWORD *sub_2662ABF44@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_2662ABF6C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2662ABFA8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2662ABFE8()
{
  v1 = sub_2664DFE08();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 33) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5 + 8);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_2662AC088()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2662AC0C0()
{
  v1 = sub_2664DE438();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 47) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 16);

  v8 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + v5));
  v9 = *(v0 + v6 + 8);

  return MEMORY[0x2821FE8E8](v0, v6 + 16, v3 | 7);
}

uint64_t sub_2662AC1BC()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2662AC1F4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2662AC234()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  v4 = *(v0 + 56);

  v5 = *(v0 + 80);

  v6 = *(v0 + 88);

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_2662AC29C()
{
  v1 = v0[3];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 4);
  v2 = v0[10];

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_2662AC2E8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2662AC35C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void *sub_2662AC3A0(_DWORD **a1, uint64_t a2, uint64_t a3, void *(*a4)(uint64_t *__return_ptr))
{
  result = a4(&v7);
  v6 = *a1;
  *v6 = v7;
  *a1 = v6 + 1;
  return result;
}

uint64_t sub_2662AC3E8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2662AC420()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2662AC46C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 48);

  v4 = *(v0 + 56);

  v5 = *(v0 + 72);

  v6 = *(v0 + 88);

  v7 = *(v0 + 112);

  return MEMORY[0x2821FE8E8](v0, 120, 7);
}

uint64_t sub_2662AC4DC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 64);

  v4 = *(v0 + 72);

  v5 = *(v0 + 88);

  v6 = *(v0 + 112);

  return MEMORY[0x2821FE8E8](v0, 120, 7);
}

uint64_t sub_2662AC544()
{
  v1 = v0[2];

  v2 = v0[5];

  v3 = v0[6];

  v4 = v0[8];

  v5 = v0[11];

  v6 = v0[13];

  return MEMORY[0x2821FE8E8](v0, 112, 7);
}

uint64_t sub_2662AC5C4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2662AC60C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 64);

  v4 = *(v0 + 72);

  v5 = *(v0 + 88);

  v6 = *(v0 + 112);

  return MEMORY[0x2821FE8E8](v0, 120, 7);
}

uint64_t sub_2662AC674()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 56);

  v3 = *(v0 + 64);

  v4 = *(v0 + 80);

  v5 = *(v0 + 104);

  return MEMORY[0x2821FE8E8](v0, 112, 7);
}

uint64_t sub_2662AC6DC()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  v4 = *(v0 + 88);

  v5 = *(v0 + 104);

  return MEMORY[0x2821FE8E8](v0, 112, 7);
}

uint64_t sub_2662AC77C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  v4 = *(v0 + 48);

  v5 = *(v0 + 56);

  v6 = *(v0 + 64);

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_2662AC7E4()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2662AC824()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2662AC85C()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  v5 = v0[7];

  v6 = v0[8];

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_2662AC8BC()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v1 = *(v0 + 64);

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_2662AC900()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2662AC938()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_2662AC990@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___SAAudioAppPredictorOptions_trimDisambiguationForRelevance;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_2662AC9E8(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___SAAudioAppPredictorOptions_trimDisambiguationForRelevance;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_2662ACA3C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2662ACA78()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2662ACAB0()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  v3 = *(v0 + 64);

  v4 = *(v0 + 72);

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_2662ACB14()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2662ACB5C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2662ACC28()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2662ACC70()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

id sub_2662ACCD4()
{
  v1 = [*v0 mediaSearch];

  return v1;
}

uint64_t sub_2662ACD0C()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2662ACD44()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2662ACD8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = (*(**a1 + 168))(a2);
  *a3 = result;
  return result;
}

__n128 sub_2662ACDEC(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_2662ACE04()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2662ACE4C()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2662ACE84()
{
  v1 = sub_2664DE438();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 64) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 4);

  v8 = *(v0 + 5);

  v9 = *(v0 + 7);

  (*(v2 + 8))(&v0[v4], v1);
  v10 = *&v0[v5];

  return MEMORY[0x2821FE8E8](v0, v6 + 8, v3 | 7);
}

uint64_t sub_2662ACF84()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_2664DE438();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = v3 | v8;
  v11 = (v9 + *(v7 + 64)) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 31) & 0xFFFFFFFFFFFFFFF8;

  v13 = *(v0 + 48);

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);
  v14 = *(v0 + v11 + 16);

  v15 = *(v0 + v12);

  return MEMORY[0x2821FE8E8](v0, v12 + 8, v10 | 7);
}

uint64_t sub_2662AD0F8()
{
  v1 = sub_2664DE438();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 24);

  v8 = *(v0 + 40);

  (*(v2 + 8))(v0 + v4, v1);
  v9 = *(v0 + v5);

  return MEMORY[0x2821FE8E8](v0, v6 + 8, v3 | 7);
}

uint64_t sub_2662AD1F0()
{
  v1 = *(v0 + 2);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 4);

  v7 = *(v0 + 6);

  (*(v2 + 8))(&v0[v4], v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2662AD2B4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2662AD340()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2662AD37C()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2662AD3D0()
{
  v1 = *(v0 + 2);
  v2 = *(sub_2664E0948() - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 3);

  v7 = *(v0 + 5);

  v8 = *(v1 - 8);
  if (!(*(v8 + 48))(&v0[v4], 1, v1))
  {
    (*(v8 + 8))(&v0[v4], v1);
  }

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2662AD528()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2662AD560()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 64);

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_2662AD5B0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 32);

  v4 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_2662AD610()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2662AD648()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2662AD688()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  v3 = *(v0 + 64);

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_2662AD6FC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2662AD7FC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2662AD844()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2662ADC00()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2662ADC3C()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072A98, &unk_2664E58C0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072AA0, &qword_2664E9EA0) - 8);
  v6 = *(v5 + 80);
  v7 = (v3 + v4 + v6) & ~v6;
  v8 = *(v5 + 64);
  v9 = *(v0 + 16);

  v10 = sub_2664DEA08();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v0 + v3, 1, v10))
  {
    (*(v11 + 8))(v0 + v3, v10);
  }

  v12 = sub_2664DE808();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v0 + v7, 1, v12))
  {
    (*(v13 + 8))(v0 + v7, v12);
  }

  v14 = (v8 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v14 + 23) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v15 + 23) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v16 + 23) & 0xFFFFFFFFFFFFFFF8;
  v18 = *(v0 + v14 + 8);

  v19 = *(v0 + v15 + 8);

  v20 = *(v0 + v16 + 8);

  v21 = *(v0 + v17 + 8);

  return MEMORY[0x2821FE8E8](v0, v17 + 16, v2 | v6 | 7);
}

uint64_t sub_2662ADEB0()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072A98, &unk_2664E58C0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 17) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072AA0, &qword_2664E9EA0) - 8);
  v6 = *(v5 + 80);
  v7 = (v3 + v4 + v6) & ~v6;
  v8 = *(v5 + 64);
  v9 = sub_2664DEA08();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v0 + v3, 1, v9))
  {
    (*(v10 + 8))(v0 + v3, v9);
  }

  v11 = sub_2664DE808();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(v0 + v7, 1, v11))
  {
    (*(v12 + 8))(v0 + v7, v11);
  }

  v13 = (((v8 + v7 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 11) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v13 + 23) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v14 + 23) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v15 + 23) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v16 + 23) & 0xFFFFFFFFFFFFFFF8;
  v18 = *(v0 + v13 + 8);

  v19 = *(v0 + v14 + 8);

  v20 = *(v0 + v15 + 8);

  v21 = *(v0 + v16 + 8);

  v22 = *(v0 + v17);

  return MEMORY[0x2821FE8E8](v0, v17 + 8, v2 | v6 | 7);
}

uint64_t sub_2662AE144()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2662AE17C()
{
  v1 = sub_2664DFE08();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 33) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5 + 8);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_2662AE21C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2662AE280()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2662AE2B8()
{
  v1 = sub_2664DFE08();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 33) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5 + 8);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_2662AE388()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2662AE3C8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072C00, &unk_2664E62C8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2662AE45C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2662AE4C0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2662AE4F8()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2662AE540()
{
  v1 = sub_2664DE4A8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (v4 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 24);

  v7 = *(v0 + 40);

  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5 + 16);

  return MEMORY[0x2821FE8E8](v0, v5 + 24, v3 | 7);
}

uint64_t sub_2662AE620()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2662AE668()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2662AE6DC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2662AE71C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2662AE754()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  v1 = v0[13];

  return MEMORY[0x2821FE8E8](v0, 112, 7);
}

uint64_t sub_2662AE79C()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  v1 = v0[13];

  v2 = v0[15];

  return MEMORY[0x2821FE8E8](v0, 128, 7);
}

uint64_t sub_2662AE87C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t sub_2662AE8CC()
{
  v1 = sub_2664DE438();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2662AE998()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2662AE9D0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2662AEA08()
{
  v1 = sub_2664DFE08();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 33) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5 + 8);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_2662AEAA8()
{
  v1 = sub_2664DE438();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (v4 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5 + 16);

  return MEMORY[0x2821FE8E8](v0, v5 + 24, v3 | 7);
}

unint64_t sub_2662AEB4C(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = sub_2664E0E58();
  return sub_26634ECF0(a1, v4);
}

uint64_t sub_2662AEC08()
{
  v1 = sub_2664DFE08();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 33) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5 + 8);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_2662AECA8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2662AECE8()
{
  v1 = sub_2664DE438();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2662AEDAC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2662AEDEC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2662AEE24()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 64));

  v1 = *(v0 + 120);

  v2 = *(v0 + 136);

  v3 = *(v0 + 152);

  v4 = *(v0 + 160);

  if (*(v0 + 176) != 1)
  {

    v5 = *(v0 + 192);
  }

  v6 = *(v0 + 208);

  return MEMORY[0x2821FE8E8](v0, 216, 7);
}

uint64_t sub_2662AEEB4()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2662AEEFC()
{
  v1 = sub_2664DFE08();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 33) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5 + 8);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_2662AEF9C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 96));

  v3 = *(v0 + 152);

  v4 = *(v0 + 168);

  v5 = *(v0 + 184);

  v6 = *(v0 + 192);

  return MEMORY[0x2821FE8E8](v0, 200, 7);
}

uint64_t sub_2662AF01C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 96));

  v3 = *(v0 + 152);

  v4 = *(v0 + 168);

  v5 = *(v0 + 184);

  v6 = *(v0 + 192);

  if (*(v0 + 208) != 1)
  {

    v7 = *(v0 + 224);
  }

  return MEMORY[0x2821FE8E8](v0, 232, 7);
}

uint64_t sub_2662AF0B4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

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

uint64_t sub_2662AF158()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2662AF1A0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2662AF1E8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 64));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 104));

  v3 = *(v0 + 160);

  v4 = *(v0 + 176);

  v5 = *(v0 + 192);

  v6 = *(v0 + 200);

  if (*(v0 + 216) != 1)
  {

    v7 = *(v0 + 232);
  }

  return MEMORY[0x2821FE8E8](v0, 248, 7);
}

uint64_t sub_2662AF288()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2662AF2D0()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2662AF310()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2662AF35C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2662AF39C()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[8];

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_2662AF894()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2662AF8D4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2662AF90C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2662AF950()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 72);

  v3 = *(v0 + 80);

  v4 = *(v0 + 96);

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t sub_2662AF9B4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 80);

  v4 = *(v0 + 96);

  v5 = *(v0 + 104);

  v6 = *(v0 + 120);

  return MEMORY[0x2821FE8E8](v0, 136, 7);
}

uint64_t sub_2662AFA34()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2662AFA6C()
{
  v1 = sub_2664DFE08();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 33) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5 + 8);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_2662AFB18()
{
  v1 = sub_2664DFE08();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 33) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5 + 8);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_2662AFBB8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2662AFBF0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2662AFC30()
{
  v1 = sub_2664DE438();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2662AFCF8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2662AFD34()
{
  v1 = v0[3];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 4);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 9);
  if (v0[17])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 14);
  }

  v2 = v0[20];

  return MEMORY[0x2821FE8E8](v0, 168, 7);
}

uint64_t sub_2662AFD94()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  v1 = v0[13];

  if (v0[17])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 14);
  }

  return MEMORY[0x2821FE8E8](v0, 152, 7);
}

uint64_t sub_2662AFE28@<X0>(uint64_t *a1@<X8>)
{
  result = FeatureFlagProvider.lastBundleIdentifier.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void sub_2662AFE50(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  FeatureFlagProvider.lastBundleIdentifier.setter(v1, v2);
}

unint64_t sub_2662AFEA8@<X0>(unint64_t *a1@<X8>)
{
  result = FeatureFlagProvider.resolvedAppHistory.getter();
  *a1 = result;
  return result;
}

void sub_2662AFED0(uint64_t *a1)
{
  v1 = *a1;

  FeatureFlagProvider.resolvedAppHistory.setter();
}

uint64_t sub_2662AFEFC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2662AFF34()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2662AFF70()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800730D0, &qword_2664E95F8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2662B004C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2662B008C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800731B0, &qword_2664E98E0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_2662B0154(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800731B0, &qword_2664E98E0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2662B0208()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2662B0240()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2662B0288()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2662B02C0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2662B02FC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 64);
  *a2 = *(v3 + 56);
  a2[1] = v4;
}

uint64_t sub_2662B034C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 72);
}

uint64_t sub_2662B039C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2662B03DC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2662B0510()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2662B0548()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2662B0580()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_2662B05D0()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_2662B0608()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2662B0640()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2662B0680@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 96);
  v5 = *(v3 + 112);
  v6 = *(v3 + 128);
  v17 = *(v3 + 144);
  v16[6] = v5;
  v16[7] = v6;
  v7 = *(v3 + 32);
  v8 = *(v3 + 48);
  v9 = *(v3 + 80);
  v16[3] = *(v3 + 64);
  v16[4] = v9;
  v16[1] = v7;
  v16[2] = v8;
  v16[5] = v4;
  v16[0] = *(v3 + 16);
  v10 = *(v3 + 128);
  *(a2 + 96) = *(v3 + 112);
  *(a2 + 112) = v10;
  *(a2 + 128) = *(v3 + 144);
  v11 = *(v3 + 64);
  *(a2 + 32) = *(v3 + 48);
  *(a2 + 48) = v11;
  v12 = *(v3 + 96);
  *(a2 + 64) = *(v3 + 80);
  *(a2 + 80) = v12;
  v13 = *(v3 + 32);
  *a2 = *(v3 + 16);
  *(a2 + 16) = v13;
  return sub_2662A7224(v16, &v15, &qword_280072590, &qword_2664E3B48);
}

id sub_2662B0748@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 184);
  *a2 = v4;

  return v4;
}

uint64_t sub_2662B07A4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 192);
  return result;
}

uint64_t sub_2662B07EC(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 192) = v2;
  return result;
}

uint64_t sub_2662B0830()
{
  v1 = sub_2664DE438();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 240) & ~v3;
  v5 = (v4 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 24);

  v7 = *(v0 + 64);

  v8 = *(v0 + 72);

  v9 = *(v0 + 160);

  v10 = *(v0 + 168);

  v11 = *(v0 + 192);

  v12 = *(v0 + 208);

  v13 = *(v0 + 224);

  v14 = *(v0 + 232);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_2662B0944()
{
  v1 = sub_2664DE438();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 2);

  v7 = *(v0 + 3);

  v8 = *(v0 + 4);

  v9 = *(v0 + 5);

  (*(v2 + 8))(&v0[v4], v1);
  v10 = *&v0[v5 + 8];

  return MEMORY[0x2821FE8E8](v0, ((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_2662B0A64()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  if (v0[6] != 1)
  {

    if (v0[7])
    {

      v5 = v0[8];

      v6 = v0[9];

      v7 = v0[10];
    }

    v8 = v0[11];
  }

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t sub_2662B0B0C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2662B0B5C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2662B0B94()
{
  if (v0[3])
  {

    v1 = v0[4];

    v2 = v0[5];

    v3 = v0[6];
  }

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2662B0BE8()
{
  v1 = sub_2664DE438();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 3);

  v8 = *(v0 + 4);

  v9 = *(v0 + 6);

  (*(v2 + 8))(&v0[v4], v1);
  v10 = *&v0[v5];

  return MEMORY[0x2821FE8E8](v0, v6 + 8, v3 | 7);
}

uint64_t sub_2662B0CE8()
{
  v1 = sub_2664DE438();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);

  v5 = *(v0 + 40);

  if (*(v0 + 56))
  {

    v6 = *(v0 + 64);

    v7 = *(v0 + 72);

    v8 = *(v0 + 80);
  }

  v9 = (v3 + 88) & ~v3;
  v10 = (v9 + v4) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 31) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v9, v1);
  v12 = *(v0 + v10 + 16);

  v13 = *(v0 + v11);

  return MEMORY[0x2821FE8E8](v0, v11 + 8, v3 | 7);
}

uint64_t sub_2662B0DFC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2662B0E3C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 32);

  v4 = *(v0 + 40);

  v5 = *(v0 + 64);

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_2662B0E9C()
{
  v1 = sub_2664DE438();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 57) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  v7 = *(v0 + 40);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_2662B0F7C()
{
  v1 = sub_2664DE438();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 249) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 24);

  v7 = *(v0 + 32);

  v8 = *(v0 + 72);

  v9 = *(v0 + 80);

  v10 = *(v0 + 168);

  v11 = *(v0 + 176);

  v12 = *(v0 + 200);

  v13 = *(v0 + 216);

  v14 = *(v0 + 232);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_2662B10A0()
{
  v1 = sub_2664DE438();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 249) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  v6 = *(v0 + 32);

  v7 = *(v0 + 40);

  v8 = *(v0 + 72);

  v9 = *(v0 + 80);

  v10 = *(v0 + 168);

  v11 = *(v0 + 176);

  v12 = *(v0 + 200);

  v13 = *(v0 + 216);

  v14 = *(v0 + 232);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_2662B11C0()
{
  v1 = sub_2664DE438();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (v4 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8;
  v6 = (((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 199) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5 + 8);

  v9 = *(v0 + v6 + 24);

  v10 = *(v0 + v6 + 32);

  v11 = *(v0 + v6 + 120);

  v12 = *(v0 + v6 + 128);

  v13 = *(v0 + v6 + 152);

  v14 = *(v0 + v6 + 168);

  v15 = *(v0 + v6 + 184);

  v16 = *(v0 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 8);

  return MEMORY[0x2821FE8E8](v0, ((v7 + 39) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_2662B12EC()
{
  v1 = sub_2664DE438();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 224) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  v7 = *(v0 + 56);

  v8 = *(v0 + 64);

  v9 = *(v0 + 152);

  v10 = *(v0 + 160);

  v11 = *(v0 + 184);

  v12 = *(v0 + 200);

  v13 = *(v0 + 216);

  (*(v2 + 8))(v0 + v4, v1);
  v14 = (v0 + v5);
  if (*(v0 + v5) != 1)
  {

    if (v14[1])
    {

      v15 = v14[2];

      v16 = v14[3];

      v17 = v14[4];
    }

    v18 = v14[5];
  }

  v19 = (v5 + 55) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v19 + 15) & 0xFFFFFFFFFFFFFFF8;

  v21 = *(v0 + v20 + 8);

  return MEMORY[0x2821FE8E8](v0, v20 + 16, v3 | 7);
}

uint64_t sub_2662B1468()
{
  v1 = sub_2664DE438();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 3);

  if (*(v0 + 4) != 1)
  {

    if (*(v0 + 5))
    {

      v6 = *(v0 + 6);

      v7 = *(v0 + 7);

      v8 = *(v0 + 8);
    }

    v9 = *(v0 + 9);
  }

  v10 = (v3 + 96) & ~v3;
  v11 = (v4 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 215) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + 39) & 0xFFFFFFFFFFFFFFF8;
  v14 = *(v0 + 11);

  (*(v2 + 8))(&v0[v10], v1);
  v15 = *&v0[v11 + 24];

  v16 = *&v0[v11 + 32];

  v17 = *&v0[v11 + 120];

  v18 = *&v0[v11 + 128];

  v19 = *&v0[v11 + 152];

  v20 = *&v0[v11 + 168];

  v21 = *&v0[v11 + 184];

  v22 = *&v0[v12 + 8];

  return MEMORY[0x2821FE8E8](v0, v13 + 8, v3 | 7);
}

uint64_t sub_2662B15EC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 80);

  v4 = *(v0 + 88);

  v5 = *(v0 + 176);

  v6 = *(v0 + 184);

  v7 = *(v0 + 208);

  v8 = *(v0 + 224);

  v9 = *(v0 + 240);

  v10 = *(v0 + 256);

  return MEMORY[0x2821FE8E8](v0, 280, 7);
}

uint64_t sub_2662B1674()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2662B16AC()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v1 = *(v0 + 64);

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_2662B16EC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2662B17AC()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_2662B17EC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2662B1824()
{
  v1 = sub_2664DFE08();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 33) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5 + 8);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_2662B18CC()
{
  v1 = *(v0 + 24);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 72));

  v2 = *(v0 + 120);

  v3 = *(v0 + 136);

  return MEMORY[0x2821FE8E8](v0, 144, 7);
}

uint64_t sub_2662B192C()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2662B1974()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  v1 = *(v0 + 96);

  v2 = *(v0 + 112);

  v3 = *(v0 + 128);

  return MEMORY[0x2821FE8E8](v0, 144, 7);
}

uint64_t sub_2662B19D4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2662B1A0C()
{
  v1 = *(v0 + 24);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 88));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 128));
  v2 = *(v0 + 176);

  v3 = *(v0 + 192);

  return MEMORY[0x2821FE8E8](v0, 217, 7);
}

uint64_t sub_2662B1A84()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2662B1ABC()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  v1 = *(v0 + 104);

  v2 = *(v0 + 120);

  v3 = *(v0 + 152);

  return MEMORY[0x2821FE8E8](v0, 169, 7);
}

uint64_t sub_2662B1B2C()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 64));

  v1 = *(v0 + 120);

  v2 = *(v0 + 152);

  return MEMORY[0x2821FE8E8](v0, 160, 7);
}

uint64_t sub_2662B1BA0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2663C528C();
  *a1 = result;
  return result;
}

uint64_t sub_2662B1C18()
{
  v1 = sub_2664DFE08();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 87) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v9 = (v0 + v5);
  __swift_destroy_boxed_opaque_existential_1Tm(v9);
  __swift_destroy_boxed_opaque_existential_1Tm(v9 + 5);
  v10 = *(v0 + v6);

  v11 = *(v0 + v7 + 8);

  return MEMORY[0x2821FE8E8](v0, v8 + 8, v3 | 7);
}

uint64_t sub_2662B1CFC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2662B1D38()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  v4 = *(v0 + 64);

  v5 = *(v0 + 88);

  v6 = *(v0 + 104);

  return MEMORY[0x2821FE8E8](v0, 112, 7);
}

uint64_t sub_2662B1DA0()
{
  v1 = v0[4];

  v2 = v0[5];

  v3 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 67, 7);
}

uint64_t sub_2662B1DEC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 48);

  v3 = *(v0 + 56);

  v4 = *(v0 + 72);

  v5 = *(v0 + 96);

  v6 = *(v0 + 112);

  return MEMORY[0x2821FE8E8](v0, 120, 7);
}

uint64_t sub_2662B1E5C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  v4 = *(v0 + 64);

  v5 = *(v0 + 96);

  v6 = *(v0 + 112);

  return MEMORY[0x2821FE8E8](v0, 120, 7);
}

uint64_t sub_2662B1EE4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2662B1F30()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2662B1F68()
{
  v1 = sub_2664DFE08();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 33) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5 + 8);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_2662B2008()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2662B2040()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2662B2080()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2662B21C0()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[7];

  v4 = v0[8];

  v5 = v0[10];

  v6 = v0[12];

  return MEMORY[0x2821FE8E8](v0, 112, 7);
}

uint64_t sub_2662B2224()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2662B225C()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[7];

  v4 = v0[8];

  v5 = v0[10];

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t sub_2662B22B8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2662B2304()
{
  v1 = sub_2664DFE08();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 33) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5 + 8);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_2662B23A4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2662B23DC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2662B241C()
{
  v1 = sub_2664DE438();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 72) & ~v3;
  v5 = *(v2 + 64);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v6 = *(v0 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2662B24E8()
{
  v1 = sub_2664DE438();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2662B25B4()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2662B25FC()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_2662B263C()
{
  v1 = sub_2664DFE08();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 33) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5 + 8);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_2662B26DC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2662B2714()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2662B2754()
{
  v1 = sub_2664DE438();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2662B2818()
{
  v1 = sub_2664DFE08();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 33) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5 + 8);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_2662B28B8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2662B2900@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_2800735C0;
  return result;
}

uint64_t sub_2662B294C(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_2800735C0 = v1;
  return result;
}

uint64_t sub_2662B2994@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC16SiriAudioSupport16RecordableResult_info;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_2662B2A48()
{
  v1 = sub_2664DE4A8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5 + 8);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_2662B2AE8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2662B2B38()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2662B2B78()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2662B2BB0()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2662B2BE8()
{
  v1 = sub_2664DE438();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 3);

  v8 = *(v0 + 4);

  v9 = *(v0 + 6);

  (*(v2 + 8))(&v0[v4], v1);
  v10 = *&v0[v5];

  return MEMORY[0x2821FE8E8](v0, v6 + 8, v3 | 7);
}

uint64_t sub_2662B2CE8()
{
  v1 = sub_2664DE438();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 72) & ~v3;
  v5 = (v4 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 31) & 0xFFFFFFFFFFFFFFF8;

  v7 = *(v0 + 40);

  v8 = *(v0 + 64);

  (*(v2 + 8))(v0 + v4, v1);
  v9 = *(v0 + v5 + 16);

  v10 = *(v0 + v6);

  return MEMORY[0x2821FE8E8](v0, v6 + 8, v3 | 7);
}

uint64_t sub_2662B2E44()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2662B2E7C()
{
  v1 = sub_2664DFE08();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 87) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v9 = (v0 + v5);
  __swift_destroy_boxed_opaque_existential_1Tm(v9);
  __swift_destroy_boxed_opaque_existential_1Tm(v9 + 5);
  v10 = *(v0 + v6);

  v11 = *(v0 + v7 + 8);

  return MEMORY[0x2821FE8E8](v0, v8 + 8, v3 | 7);
}

uint64_t sub_2662B2F64()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  v3 = *(v0 + 56);

  v4 = *(v0 + 72);

  v5 = *(v0 + 96);

  v6 = *(v0 + 104);

  return MEMORY[0x2821FE8E8](v0, 117, 7);
}

uint64_t sub_2662B2FCC()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  v4 = *(v0 + 80);

  v5 = *(v0 + 88);

  v6 = *(v0 + 104);

  return MEMORY[0x2821FE8E8](v0, 113, 7);
}

uint64_t sub_2662B3034()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2662B306C()
{
  v1 = v0[4];

  v2 = v0[5];

  v3 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 67, 7);
}

uint64_t sub_2662B30B8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 48);

  v4 = *(v0 + 56);

  v5 = *(v0 + 72);

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t sub_2662B3120()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  v3 = *(v0 + 56);

  v4 = *(v0 + 72);

  v5 = *(v0 + 88);

  v6 = *(v0 + 112);

  return MEMORY[0x2821FE8E8](v0, 121, 7);
}

uint64_t sub_2662B3190()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2662B31D8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 48);

  v3 = *(v0 + 56);

  v4 = *(v0 + 72);

  v5 = *(v0 + 96);

  v6 = *(v0 + 120);

  return MEMORY[0x2821FE8E8](v0, 128, 7);
}

uint64_t sub_2662B3248()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  v4 = *(v0 + 64);

  v5 = *(v0 + 96);

  v6 = *(v0 + 120);

  return MEMORY[0x2821FE8E8](v0, 128, 7);
}

uint64_t sub_2662B32C8()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 5);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 10);

  return MEMORY[0x2821FE8E8](v0, 120, 7);
}

uint64_t sub_2662B3310()
{
  v1 = sub_2664E05C8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5 + 8);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_2662B33F4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2662B3434()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2662B3474()
{
  v1 = sub_2664DFE08();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 33) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5 + 8);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_2662B3514()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2662B3550()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2662B3590()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2662B35C8()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2662B3604()
{
  v1 = sub_2664DE438();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 120) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 2);

  v7 = *(v0 + 3);

  v8 = *(v0 + 4);

  v9 = *(v0 + 5);

  v10 = *(v0 + 7);

  v11 = *(v0 + 9);

  v12 = *(v0 + 10);

  v13 = *(v0 + 11);

  v14 = *(v0 + 12);

  v15 = *(v0 + 13);

  v16 = *(v0 + 14);

  (*(v2 + 8))(&v0[v4], v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2662B37C0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800737D0, qword_2664E4FD0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 48);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2662B387C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800737D0, qword_2664E4FD0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 48);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2662B3934()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2662B3990()
{
  v1 = sub_2664DFE08();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 33) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5 + 8);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_2662B3A30()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2662B3A70(uint64_t a1, uint64_t a2)
{
  v4 = sub_2664DE438();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2662B3ADC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2664DE438();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_2662B3B4C()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2662B3B9C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2662B3BE8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26642B35C();
  *a1 = result;
  return result;
}

uint64_t sub_2662B3C48()
{
  v1 = sub_2664DFE08();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 87) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v9 = (v0 + v5);
  __swift_destroy_boxed_opaque_existential_1Tm(v9);
  __swift_destroy_boxed_opaque_existential_1Tm(v9 + 5);
  v10 = *(v0 + v6);

  v11 = *(v0 + v7 + 8);

  return MEMORY[0x2821FE8E8](v0, v8 + 8, v3 | 7);
}

uint64_t sub_2662B3D2C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2662B3D68()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  v4 = *(v0 + 72);

  v5 = *(v0 + 80);

  v6 = *(v0 + 96);

  return MEMORY[0x2821FE8E8](v0, 112, 7);
}

uint64_t sub_2662B3DD0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  v4 = *(v0 + 64);

  v5 = *(v0 + 88);

  v6 = *(v0 + 104);

  return MEMORY[0x2821FE8E8](v0, 112, 7);
}

uint64_t sub_2662B3E38()
{
  v1 = v0[4];

  v2 = v0[5];

  v3 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 67, 7);
}

uint64_t sub_2662B3E80()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  v1 = *(v0 + 104);

  v2 = *(v0 + 120);

  v3 = *(v0 + 136);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 144));

  return MEMORY[0x2821FE8E8](v0, 201, 7);
}

uint64_t sub_2662B3EF0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 48);

  v3 = *(v0 + 56);

  v4 = *(v0 + 72);

  v5 = *(v0 + 88);

  v6 = *(v0 + 112);

  return MEMORY[0x2821FE8E8](v0, 120, 7);
}

uint64_t sub_2662B3F60()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  v3 = *(v0 + 56);

  v4 = *(v0 + 72);

  v5 = *(v0 + 88);

  v6 = *(v0 + 96);

  return MEMORY[0x2821FE8E8](v0, 112, 7);
}

uint64_t sub_2662B3FF8()
{
  v1 = v0[4];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 5);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 10);
  v2 = v0[16];

  return MEMORY[0x2821FE8E8](v0, 136, 7);
}

uint64_t sub_2662B4048()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2662B4080()
{
  v1 = sub_2664DFE08();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 33) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5 + 8);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_2662B4120(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800737D0, qword_2664E4FD0);
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(v10 + 48);
      v13 = a1 + *(a3 + 96);

      return v12(v13, a2, v11);
    }

    else
    {
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072BC0, &qword_2664E6030);
      v15 = *(*(v14 - 8) + 48);
      v16 = a1 + *(a3 + 108);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_2662B4268(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800737D0, qword_2664E4FD0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 96);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072BC0, &qword_2664E6030);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 108);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_2662B43A4()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2662B43DC()
{
  v1 = *(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 40));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 80));
  v2 = *(v0 + 128);

  return MEMORY[0x2821FE8E8](v0, 136, 7);
}

uint64_t sub_2662B443C()
{
  v1 = sub_2664DE438();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 3);

  v8 = *(v0 + 4);

  v9 = *(v0 + 6);

  (*(v2 + 8))(&v0[v4], v1);
  v10 = *&v0[v5];

  return MEMORY[0x2821FE8E8](v0, v6 + 8, v3 | 7);
}

uint64_t sub_2662B453C()
{
  v1 = sub_2664DE438();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = (v4 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 31) & 0xFFFFFFFFFFFFFFF8;

  v7 = *(v0 + 40);

  v8 = *(v0 + 48);

  (*(v2 + 8))(v0 + v4, v1);
  v9 = *(v0 + v5 + 16);

  v10 = *(v0 + v6);

  return MEMORY[0x2821FE8E8](v0, v6 + 8, v3 | 7);
}

uint64_t sub_2662B463C()
{
  v1 = *(v0 + 24);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 72));
  v2 = *(v0 + 120);

  return MEMORY[0x2821FE8E8](v0, 136, 7);
}

uint64_t sub_2662B4694()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2662B46D4()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2662B4730()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2662B476C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2662B47A4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2662B47FC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 32);

  v4 = *(v0 + 40);

  v5 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_2662B4864()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 32);

  v4 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2662B48BC()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2662B490C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2662B4964()
{
  v1 = *(v0 + 24);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_2662B49B4()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  v5 = v0[6];

  v6 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_2662B4A14()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2662B4A60()
{
  v1 = *(v0 + 24);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_2662B4AA0()
{
  v1 = *(v0 + 32);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_2662B4AE4()
{
  v1 = sub_2664DE438();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 2);

  v7 = *(v0 + 3);

  v8 = *(v0 + 4);

  (*(v2 + 8))(&v0[v4], v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_2662B4BCC()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2662B4CBC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073BA0, &qword_2664ED7B8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2662B4DAC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 56);

  v4 = *(v0 + 64);

  v5 = *(v0 + 80);

  v6 = *(v0 + 96);

  return MEMORY[0x2821FE8E8](v0, 112, 7);
}

uint64_t sub_2662B4E14()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2662B4E4C()
{
  v1 = sub_2664DFE08();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 33) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5 + 8);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_2662B4EEC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 48);

  v3 = *(v0 + 56);

  v4 = *(v0 + 72);

  v5 = *(v0 + 96);

  v6 = *(v0 + 112);

  return MEMORY[0x2821FE8E8](v0, 120, 7);
}

uint64_t sub_2662B4F5C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  v4 = *(v0 + 64);

  v5 = *(v0 + 96);

  v6 = *(v0 + 112);

  return MEMORY[0x2821FE8E8](v0, 120, 7);
}

uint64_t sub_2662B4FCC()
{
  v1 = v0[4];

  v2 = v0[5];

  v3 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 67, 7);
}

uint64_t sub_2662B5024()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2662B5068()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 72);

  v4 = *(v0 + 80);

  v5 = *(v0 + 96);

  return MEMORY[0x2821FE8E8](v0, 107, 7);
}

uint64_t sub_2662B50D4()
{
  v1 = sub_2664DFE08();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 33) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5 + 8);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_2662B5174()
{
  v1 = sub_2664DFE08();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 33) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5 + 8);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_2662B5214()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2662B524C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2662B528C()
{
  v1 = sub_2664DE438();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2662B5358()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

unint64_t sub_2662B5398@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2664778A0(*a1);
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

int *sub_2662B53D4@<X0>(int *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 2;
  if (*result > 2)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 4) = v3;
  return result;
}

unint64_t sub_2662B53F0@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_266478050(*a1);
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

unint64_t sub_2662B5424@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_26647839C(*a1);
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

unint64_t sub_2662B5458@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2664782E4(*a1);
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_2662B5828@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_280073C50;
  return result;
}

uint64_t sub_2662B5874(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_280073C50 = v1;
  return result;
}

uint64_t sub_2662B5E24()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2662B5E64()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

id sub_2662B5EAC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 32);
  *a2 = v4;

  return v4;
}

uint64_t sub_2662B5F18(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return sub_266481BC0(&v4);
}

uint64_t sub_2662B5F50@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 48);
}

id sub_2662B5FA0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 56);
  *a2 = v4;
  return v4;
}

id sub_2662B5FF0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 64);
  *a2 = v4;
  return v4;
}

uint64_t sub_2662B6040@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 72);
  return result;
}

uint64_t sub_2662B6088(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 72) = v2;
  return result;
}

id sub_2662B60CC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 80);
  *a2 = v4;
  return v4;
}

uint64_t sub_2662B611C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 88);
  return result;
}

uint64_t sub_2662B6164(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 88) = v2;
  return result;
}

uint64_t sub_2662B61A8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  v5 = *(v3 + 104);
  *a2 = *(v3 + 96);
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_2662B61F8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  result = swift_beginAccess();
  *(v4 + 96) = v2;
  *(v4 + 104) = v3;
  return result;
}

uint64_t sub_2662B624C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  v5 = *(v3 + 120);
  *a2 = *(v3 + 112);
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_2662B629C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  result = swift_beginAccess();
  *(v4 + 112) = v2;
  *(v4 + 120) = v3;
  return result;
}

uint64_t sub_2662B62F0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 121);
  return result;
}

uint64_t sub_2662B6338(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 121) = v2;
  return result;
}

id sub_2662B637C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 128);
  *a2 = v4;

  return v4;
}

uint64_t sub_2662B63D8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 136);
}

uint64_t sub_2662B6428@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 144);
}

uint64_t sub_2662B67B0()
{
  v1 = sub_2664DE438();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5 + 8);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_2662B68C0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 104);
  *a2 = *(v3 + 96);
  a2[1] = v4;
}

uint64_t sub_2662B6910()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2662B6950()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2662B69A8()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[8];

  v4 = v0[10];

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_2662B69F8()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[8];

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_2662B6A48()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_2662B6AC0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2662B6B00()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2662B6B40()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2662B6B7C()
{
  v1 = sub_2664DE438();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 72) & ~v3;
  v5 = (v4 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 31) & 0xFFFFFFFFFFFFFFF8;

  v7 = *(v0 + 40);

  v8 = *(v0 + 64);

  (*(v2 + 8))(v0 + v4, v1);
  v9 = *(v0 + v5 + 16);

  v10 = *(v0 + v6);

  return MEMORY[0x2821FE8E8](v0, v6 + 8, v3 | 7);
}

uint64_t sub_2662B6C7C()
{
  v1 = sub_2664DE438();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5 + 8);

  return MEMORY[0x2821FE8E8](v0, ((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_2662B6D80()
{
  v1 = sub_2664DE438();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  v7 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5 + 8);

  return MEMORY[0x2821FE8E8](v0, ((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_2662B6E78()
{
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 57, 7);
}

uint64_t sub_2662B6ECC()
{
  v1 = sub_2664DE438();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (v4 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + 16);

  v9 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);

  v10 = *(v0 + v6 + 8);

  v11 = *(v0 + v7);

  return MEMORY[0x2821FE8E8](v0, ((((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_2662B6FF0()
{
  v1 = sub_2664DE438();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 49) & ~v3;
  v5 = (v4 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 31) & 0xFFFFFFFFFFFFFFF8;

  v7 = *(v0 + 40);

  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5 + 16);

  v9 = *(v0 + v6);

  return MEMORY[0x2821FE8E8](v0, v6 + 8, v3 | 7);
}

uint64_t sub_2662B70E8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2662B7120()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2662B72CC()
{
  v1 = sub_2664DFE08();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 33) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5 + 8);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_2662B736C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2662B73A4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2662B73E4()
{
  v1 = sub_2664DE438();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5 + 8);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_2662B7484()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2662B74BC()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 48);

  v3 = *(v0 + 64);

  v4 = *(v0 + 80);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 88));
  v5 = *(v0 + 144);

  return MEMORY[0x2821FE8E8](v0, 152, 7);
}

uint64_t sub_2662B7524()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 56);

  v3 = *(v0 + 72);

  v4 = *(v0 + 96);

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t sub_2662B7584()
{
  v1 = sub_2664DE438();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5 + 8);

  return MEMORY[0x2821FE8E8](v0, ((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_2662B7670()
{
  v1 = sub_2664DE438();
  v2 = *(v1 - 8);
  v3 = *(v2 + 8);
  v4 = *(v2 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v2 + 64) + 7;
  v7 = (((v6 + v5) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v4 + 16 + v7) & ~v4;
  v9 = (v6 + v8) & 0xFFFFFFFFFFFFFFF8;
  v3(v0 + v5, v1);
  v10 = *(v0 + v7 + 8);

  v3(v0 + v8, v1);

  return MEMORY[0x2821FE8E8](v0, v9 + 8, v4 | 7);
}

uint64_t sub_2662B7750()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2662B7788()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2662B77C8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2662A3324(&byte_2800741B8, "SiriAudio#isWarmup#get %{BOOL}d");
  *a1 = result & 1;
  return result;
}

uint64_t sub_2662B780C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2662A3324(&byte_2800741B9, "SiriAudio#isMakeFlowFromParse#get %{BOOL}d");
  *a1 = result & 1;
  return result;
}

uint64_t sub_2662B7860()
{
  v1 = *(v0 + 24);
  if (v1 >> 60 != 15)
  {
    sub_266348774(*(v0 + 16), v1);
  }

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2662B78A8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2662B78F8()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2662B79A8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_266348774(a1, a2);
  }

  return a1;
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

uint64_t sub_2662B7B5C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 64))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2662B7B7C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
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

  *(result + 64) = v3;
  return result;
}

uint64_t sub_2662B7C58(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

uint64_t sub_2662B7C90(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 0x2000))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2662B7CB4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8184) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 4344) = 0u;
    *(result + 4328) = 0u;
    *(result + 4312) = 0u;
    *(result + 4296) = 0u;
    *(result + 4280) = 0u;
    *(result + 4264) = 0u;
    *(result + 4248) = 0u;
    *(result + 4232) = 0u;
    *(result + 4216) = 0u;
    *(result + 4200) = 0u;
    *(result + 4184) = 0u;
    *(result + 4168) = 0u;
    *(result + 4152) = 0u;
    *(result + 4136) = 0u;
    *(result + 4120) = 0u;
    *(result + 4104) = 0u;
    *(result + 4088) = 0u;
    *(result + 4072) = 0u;
    *(result + 4056) = 0u;
    *(result + 4040) = 0u;
    *(result + 4024) = 0u;
    *(result + 4008) = 0u;
    *(result + 3992) = 0u;
    *(result + 3976) = 0u;
    *(result + 3960) = 0u;
    *(result + 3944) = 0u;
    *(result + 3928) = 0u;
    *(result + 3912) = 0u;
    *(result + 3896) = 0u;
    *(result + 3880) = 0u;
    *(result + 3864) = 0u;
    *(result + 3848) = 0u;
    *(result + 3832) = 0u;
    *(result + 3816) = 0u;
    *(result + 3800) = 0u;
    *(result + 3784) = 0u;
    *(result + 3768) = 0u;
    *(result + 3752) = 0u;
    *(result + 3736) = 0u;
    *(result + 3720) = 0u;
    *(result + 3704) = 0u;
    *(result + 3688) = 0u;
    *(result + 3672) = 0u;
    *(result + 3656) = 0u;
    *(result + 3640) = 0u;
    *(result + 3624) = 0u;
    *(result + 3608) = 0u;
    *(result + 3592) = 0u;
    *(result + 3576) = 0u;
    *(result + 3560) = 0u;
    *(result + 3544) = 0u;
    *(result + 3528) = 0u;
    *(result + 3512) = 0u;
    *(result + 3496) = 0u;
    *(result + 3480) = 0u;
    *(result + 3464) = 0u;
    *(result + 3448) = 0u;
    *(result + 3432) = 0u;
    *(result + 3416) = 0u;
    *(result + 3400) = 0u;
    *(result + 3384) = 0u;
    *(result + 3368) = 0u;
    *(result + 3352) = 0u;
    *(result + 3336) = 0u;
    *(result + 3320) = 0u;
    *(result + 3304) = 0u;
    *(result + 3288) = 0u;
    *(result + 3272) = 0u;
    *(result + 3256) = 0u;
    *(result + 3240) = 0u;
    *(result + 3224) = 0u;
    *(result + 3208) = 0u;
    *(result + 3192) = 0u;
    *(result + 3176) = 0u;
    *(result + 3160) = 0u;
    *(result + 3144) = 0u;
    *(result + 3128) = 0u;
    *(result + 3112) = 0u;
    *(result + 3096) = 0u;
    *(result + 3080) = 0u;
    *(result + 3064) = 0u;
    *(result + 3048) = 0u;
    *(result + 3032) = 0u;
    *(result + 3016) = 0u;
    *(result + 3000) = 0u;
    *(result + 2984) = 0u;
    *(result + 2968) = 0u;
    *(result + 2952) = 0u;
    *(result + 2936) = 0u;
    *(result + 2920) = 0u;
    *(result + 2904) = 0u;
    *(result + 2888) = 0u;
    *(result + 2872) = 0u;
    *(result + 2856) = 0u;
    *(result + 2840) = 0u;
    *(result + 2824) = 0u;
    *(result + 2808) = 0u;
    *(result + 2792) = 0u;
    *(result + 2776) = 0u;
    *(result + 2760) = 0u;
    *(result + 2744) = 0u;
    *(result + 2728) = 0u;
    *(result + 2712) = 0u;
    *(result + 2696) = 0u;
    *(result + 2680) = 0u;
    *(result + 2664) = 0u;
    *(result + 2648) = 0u;
    *(result + 2632) = 0u;
    *(result + 2616) = 0u;
    *(result + 2600) = 0u;
    *(result + 2584) = 0u;
    *(result + 2568) = 0u;
    *(result + 2552) = 0u;
    *(result + 2536) = 0u;
    *(result + 2520) = 0u;
    *(result + 2504) = 0u;
    *(result + 2488) = 0u;
    *(result + 2472) = 0u;
    *(result + 2456) = 0u;
    *(result + 2440) = 0u;
    *(result + 2424) = 0u;
    *(result + 2408) = 0u;
    *(result + 2392) = 0u;
    *(result + 2376) = 0u;
    *(result + 2360) = 0u;
    *(result + 2344) = 0u;
    *(result + 2328) = 0u;
    *(result + 2312) = 0u;
    *(result + 2296) = 0u;
    *(result + 2280) = 0u;
    *(result + 2264) = 0u;
    *(result + 2248) = 0u;
    *(result + 2232) = 0u;
    *(result + 2216) = 0u;
    *(result + 2200) = 0u;
    *(result + 2184) = 0u;
    *(result + 2168) = 0u;
    *(result + 2152) = 0u;
    *(result + 2136) = 0u;
    *(result + 2120) = 0u;
    *(result + 2104) = 0u;
    *(result + 2088) = 0u;
    *(result + 2072) = 0u;
    *(result + 2056) = 0u;
    *(result + 2040) = 0u;
    *(result + 2024) = 0u;
    *(result + 2008) = 0u;
    *(result + 1992) = 0u;
    *(result + 1976) = 0u;
    *(result + 1960) = 0u;
    *(result + 1944) = 0u;
    *(result + 1928) = 0u;
    *(result + 1912) = 0u;
    *(result + 1896) = 0u;
    *(result + 1880) = 0u;
    *(result + 1864) = 0u;
    *(result + 1848) = 0u;
    *(result + 1832) = 0u;
    *(result + 1816) = 0u;
    *(result + 1800) = 0u;
    *(result + 1784) = 0u;
    *(result + 1768) = 0u;
    *(result + 1752) = 0u;
    *(result + 1736) = 0u;
    *(result + 1720) = 0u;
    *(result + 1704) = 0u;
    *(result + 1688) = 0u;
    *(result + 1672) = 0u;
    *(result + 1656) = 0u;
    *(result + 1640) = 0u;
    *(result + 1624) = 0u;
    *(result + 1608) = 0u;
    *(result + 1592) = 0u;
    *(result + 1576) = 0u;
    *(result + 1560) = 0u;
    *(result + 1544) = 0u;
    *(result + 1528) = 0u;
    *(result + 1512) = 0u;
    *(result + 1496) = 0u;
    *(result + 1480) = 0u;
    *(result + 1464) = 0u;
    *(result + 1448) = 0u;
    *(result + 1432) = 0u;
    *(result + 1416) = 0u;
    *(result + 1400) = 0u;
    *(result + 1384) = 0u;
    *(result + 1368) = 0u;
    *(result + 1352) = 0u;
    *(result + 1336) = 0u;
    *(result + 1320) = 0u;
    *(result + 1304) = 0u;
    *(result + 1288) = 0u;
    *(result + 1272) = 0u;
    *(result + 1256) = 0u;
    *(result + 1240) = 0u;
    *(result + 1224) = 0u;
    *(result + 1208) = 0u;
    *(result + 1192) = 0u;
    *(result + 1176) = 0u;
    *(result + 1160) = 0u;
    *(result + 1144) = 0u;
    *(result + 1128) = 0u;
    *(result + 1112) = 0u;
    *(result + 1096) = 0u;
    *(result + 1080) = 0u;
    *(result + 1064) = 0u;
    *(result + 1048) = 0u;
    *(result + 1032) = 0u;
    *(result + 1016) = 0u;
    *(result + 1000) = 0u;
    *(result + 984) = 0u;
    *(result + 968) = 0u;
    *(result + 952) = 0u;
    *(result + 936) = 0u;
    *(result + 920) = 0u;
    *(result + 904) = 0u;
    *(result + 888) = 0u;
    *(result + 872) = 0u;
    *(result + 856) = 0u;
    *(result + 840) = 0u;
    *(result + 824) = 0u;
    *(result + 808) = 0u;
    *(result + 792) = 0u;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 536) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *(result + 8168) = 0u;
    *(result + 8152) = 0u;
    *(result + 8136) = 0u;
    *(result + 8120) = 0u;
    *(result + 8104) = 0u;
    *(result + 8088) = 0u;
    *(result + 8072) = 0u;
    *(result + 8056) = 0u;
    *(result + 8040) = 0u;
    *(result + 8024) = 0u;
    *(result + 8008) = 0u;
    *(result + 7992) = 0u;
    *(result + 7976) = 0u;
    *(result + 7960) = 0u;
    *(result + 7944) = 0u;
    *(result + 7928) = 0u;
    *(result + 7912) = 0u;
    *(result + 7896) = 0u;
    *(result + 7880) = 0u;
    *(result + 7864) = 0u;
    *(result + 7848) = 0u;
    *(result + 7832) = 0u;
    *(result + 7816) = 0u;
    *(result + 7800) = 0u;
    *(result + 7784) = 0u;
    *(result + 7768) = 0u;
    *(result + 7752) = 0u;
    *(result + 7736) = 0u;
    *(result + 7720) = 0u;
    *(result + 7704) = 0u;
    *(result + 7688) = 0u;
    *(result + 7672) = 0u;
    *(result + 7656) = 0u;
    *(result + 7640) = 0u;
    *(result + 7624) = 0u;
    *(result + 7608) = 0u;
    *(result + 7592) = 0u;
    *(result + 7576) = 0u;
    *(result + 7560) = 0u;
    *(result + 7544) = 0u;
    *(result + 7528) = 0u;
    *(result + 7512) = 0u;
    *(result + 7496) = 0u;
    *(result + 7480) = 0u;
    *(result + 7464) = 0u;
    *(result + 7448) = 0u;
    *(result + 7432) = 0u;
    *(result + 7416) = 0u;
    *(result + 7400) = 0u;
    *(result + 7384) = 0u;
    *(result + 7368) = 0u;
    *(result + 7352) = 0u;
    *(result + 7336) = 0u;
    *(result + 7320) = 0u;
    *(result + 7304) = 0u;
    *(result + 7288) = 0u;
    *(result + 7272) = 0u;
    *(result + 7256) = 0u;
    *(result + 7240) = 0u;
    *(result + 7224) = 0u;
    *(result + 7208) = 0u;
    *(result + 7192) = 0u;
    *(result + 7176) = 0u;
    *(result + 7160) = 0u;
    *(result + 7144) = 0u;
    *(result + 7128) = 0u;
    *(result + 7112) = 0u;
    *(result + 7096) = 0u;
    *(result + 7080) = 0u;
    *(result + 7064) = 0u;
    *(result + 7048) = 0u;
    *(result + 7032) = 0u;
    *(result + 7016) = 0u;
    *(result + 7000) = 0u;
    *(result + 6984) = 0u;
    *(result + 6968) = 0u;
    *(result + 6952) = 0u;
    *(result + 6936) = 0u;
    *(result + 6920) = 0u;
    *(result + 6904) = 0u;
    *(result + 6888) = 0u;
    *(result + 6872) = 0u;
    *(result + 6856) = 0u;
    *(result + 6840) = 0u;
    *(result + 6824) = 0u;
    *(result + 6808) = 0u;
    *(result + 6792) = 0u;
    *(result + 6776) = 0u;
    *(result + 6760) = 0u;
    *(result + 6744) = 0u;
    *(result + 6728) = 0u;
    *(result + 6712) = 0u;
    *(result + 6696) = 0u;
    *(result + 6680) = 0u;
    *(result + 6664) = 0u;
    *(result + 6648) = 0u;
    *(result + 6632) = 0u;
    *(result + 6616) = 0u;
    *(result + 6600) = 0u;
    *(result + 6584) = 0u;
    *(result + 6568) = 0u;
    *(result + 6552) = 0u;
    *(result + 6536) = 0u;
    *(result + 6520) = 0u;
    *(result + 6504) = 0u;
    *(result + 6488) = 0u;
    *(result + 6472) = 0u;
    *(result + 6456) = 0u;
    *(result + 6440) = 0u;
    *(result + 6424) = 0u;
    *(result + 6408) = 0u;
    *(result + 6392) = 0u;
    *(result + 6376) = 0u;
    *(result + 6360) = 0u;
    *(result + 6344) = 0u;
    *(result + 6328) = 0u;
    *(result + 6312) = 0u;
    *(result + 6296) = 0u;
    *(result + 6280) = 0u;
    *(result + 6264) = 0u;
    *(result + 6248) = 0u;
    *(result + 6232) = 0u;
    *(result + 6216) = 0u;
    *(result + 6200) = 0u;
    *(result + 6184) = 0u;
    *(result + 6168) = 0u;
    *(result + 6152) = 0u;
    *(result + 6136) = 0u;
    *(result + 6120) = 0u;
    *(result + 6104) = 0u;
    *(result + 6088) = 0u;
    *(result + 6072) = 0u;
    *(result + 6056) = 0u;
    *(result + 6040) = 0u;
    *(result + 6024) = 0u;
    *(result + 6008) = 0u;
    *(result + 5992) = 0u;
    *(result + 5976) = 0u;
    *(result + 5960) = 0u;
    *(result + 5944) = 0u;
    *(result + 5928) = 0u;
    *(result + 5912) = 0u;
    *(result + 5896) = 0u;
    *(result + 5880) = 0u;
    *(result + 5864) = 0u;
    *(result + 5848) = 0u;
    *(result + 5832) = 0u;
    *(result + 5816) = 0u;
    *(result + 5800) = 0u;
    *(result + 5784) = 0u;
    *(result + 5768) = 0u;
    *(result + 5752) = 0u;
    *(result + 5736) = 0u;
    *(result + 5720) = 0u;
    *(result + 5704) = 0u;
    *(result + 5688) = 0u;
    *(result + 5672) = 0u;
    *(result + 5656) = 0u;
    *(result + 5640) = 0u;
    *(result + 5624) = 0u;
    *(result + 5608) = 0u;
    *(result + 5592) = 0u;
    *(result + 5576) = 0u;
    *(result + 5560) = 0u;
    *(result + 5544) = 0u;
    *(result + 5528) = 0u;
    *(result + 5512) = 0u;
    *(result + 5496) = 0u;
    *(result + 5480) = 0u;
    *(result + 5464) = 0u;
    *(result + 5448) = 0u;
    *(result + 5432) = 0u;
    *(result + 5416) = 0u;
    *(result + 5400) = 0u;
    *(result + 5384) = 0u;
    *(result + 5368) = 0u;
    *(result + 5352) = 0u;
    *(result + 5336) = 0u;
    *(result + 5320) = 0u;
    *(result + 5304) = 0u;
    *(result + 5288) = 0u;
    *(result + 5272) = 0u;
    *(result + 5256) = 0u;
    *(result + 5240) = 0u;
    *(result + 5224) = 0u;
    *(result + 5208) = 0u;
    *(result + 5192) = 0u;
    *(result + 5176) = 0u;
    *(result + 5160) = 0u;
    *(result + 5144) = 0u;
    *(result + 5128) = 0u;
    *(result + 5112) = 0u;
    *(result + 5096) = 0u;
    *(result + 5080) = 0u;
    *(result + 5064) = 0u;
    *(result + 5048) = 0u;
    *(result + 5032) = 0u;
    *(result + 5016) = 0u;
    *(result + 5000) = 0u;
    *(result + 4984) = 0u;
    *(result + 4968) = 0u;
    *(result + 4952) = 0u;
    *(result + 4936) = 0u;
    *(result + 4920) = 0u;
    *(result + 4904) = 0u;
    *(result + 4888) = 0u;
    *(result + 4872) = 0u;
    *(result + 4856) = 0u;
    *(result + 4840) = 0u;
    *(result + 4824) = 0u;
    *(result + 4808) = 0u;
    *(result + 4792) = 0u;
    *(result + 4776) = 0u;
    *(result + 4760) = 0u;
    *(result + 4744) = 0u;
    *(result + 4728) = 0u;
    *(result + 4712) = 0u;
    *(result + 4696) = 0u;
    *(result + 4680) = 0u;
    *(result + 4664) = 0u;
    *(result + 4648) = 0u;
    *(result + 4632) = 0u;
    *(result + 4616) = 0u;
    *(result + 4600) = 0u;
    *(result + 4584) = 0u;
    *(result + 4568) = 0u;
    *(result + 4552) = 0u;
    *(result + 4536) = 0u;
    *(result + 4520) = 0u;
    *(result + 4504) = 0u;
    *(result + 4488) = 0u;
    *(result + 4472) = 0u;
    *(result + 4456) = 0u;
    *(result + 4440) = 0u;
    *(result + 4424) = 0u;
    *(result + 4408) = 0u;
    *(result + 4392) = 0u;
    *(result + 4376) = 0u;
    *(result + 4360) = 0u;
    *result = (a2 - 1);
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

  *(result + 0x2000) = v3;
  return result;
}