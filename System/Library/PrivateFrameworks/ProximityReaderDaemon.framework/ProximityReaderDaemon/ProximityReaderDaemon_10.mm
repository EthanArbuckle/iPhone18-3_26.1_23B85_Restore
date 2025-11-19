uint64_t sub_26132AFB4()
{
  v1 = *(*v0 + 376);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_26132B0B0);
}

uint64_t sub_26132B0B0()
{
  v116 = v0;
  v1 = *(v0 + 280);
  v2 = *(v0 + 288);
  v3 = sub_2612F675C();
  v5 = *(v0 + 272);
  if (v5 && (v6 = *(v0 + 272), (v7 = (*(*v5 + 376))(v3)) != 0))
  {
    v8 = (*(*v7 + 200))(v7);
  }

  else
  {
    v8 = 1;
  }

  v10 = *(v0 + 288);
  v9 = *(v0 + 296);
  v11 = *(v0 + 272);
  v12 = sub_26132E2E4(v11);
  v13 = sub_26132EFD0(v11);
  if (!v5 || (v8 & 1) != 0 || (v12 & 1) != 0 || (v13 & 1) == 0)
  {
    v24 = v13;
    v26 = *(v0 + 360);
    v25 = *(v0 + 368);
    v27 = *(v0 + 344);
    v28 = *(v0 + 304);
    sub_26125A870(*(v0 + 336), v28, &qword_27FE9F560, &qword_2613A3CB0);
    if (v26(v28, 1, v27) == 1)
    {
      sub_26124C718(*(v0 + 304), &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v29 = *(v0 + 304);
      v30 = sub_2613A122C();
      v31 = sub_2613A1D9C();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 67240704;
        *(v32 + 4) = v8 & 1;
        *(v32 + 8) = 1026;
        *(v32 + 10) = v24 & 1;
        *(v32 + 14) = 1026;
        *(v32 + 16) = v12 & 1;
        _os_log_impl(&dword_261243000, v30, v31, "[SessionTask] session will be deleted, expired=%{BOOL,public}d, valid=%{BOOL,public}d, passcodeChanged=%{BOOL,public}d", v32, 0x14u);
        MEMORY[0x266701350](v32, -1, -1);
      }

      v33 = *(v0 + 344);
      v34 = *(v0 + 352);
      v35 = *(v0 + 304);

      (*(v34 + 8))(v35, v33);
    }

    v36 = *(*(v0 + 296) + 24);
    v37 = *(v36 + 64);
    v38 = *(v36 + 72);

    v39 = sub_26125B3FC(v37, v38);

    if (v5)
    {
      if (v39)
      {
        v41 = (*(**(v0 + 272) + 376))(v40);
        if (v41)
        {
          v42 = v41;
          v43 = *(v0 + 296);
          v44 = *(v36 + 64);
          v45 = *(v36 + 72);

          sub_2612C1138((v0 + 120), v44, v45, v42);
          v46 = *(v43 + OBJC_IVAR____TtC21ProximityReaderDaemon11SessionTask_cardReaderAdapter + 24);
          v47 = *(v43 + OBJC_IVAR____TtC21ProximityReaderDaemon11SessionTask_cardReaderAdapter + 32);
          __swift_project_boxed_opaque_existential_1((v43 + OBJC_IVAR____TtC21ProximityReaderDaemon11SessionTask_cardReaderAdapter), v46);
          v114 = &type metadata for SessionDeleted;
          v115 = sub_261324690();
          v48 = swift_allocObject();
          *&v112 = v48;
          v49 = *(v0 + 136);
          v48[1] = *(v0 + 120);
          v48[2] = v49;
          v48[3] = *(v0 + 152);
          sub_2612B64A4(8, &v112, (v0 + 168));
          (*(v47 + 120))(v0 + 168, v46, v47);

          sub_2612A0E50(v0 + 168);
        }
      }
    }

    v50 = swift_task_alloc();
    *(v0 + 384) = v50;
    *v50 = v0;
    v50[1] = sub_26132BB04;
    v51 = *(v0 + 288);
    v52 = *(v0 + 296);
    v54 = *(v0 + 272);
    v53 = *(v0 + 280);

    return sub_26132F2D8(v0 + 16, v53, v51, 0, 0, v54);
  }

  v14 = *(v0 + 296);
  v15 = *(v0 + 272);
  v17 = *(v14 + OBJC_IVAR____TtC21ProximityReaderDaemon11SessionTask_cardReaderAdapter + 24);
  v16 = *(v14 + OBJC_IVAR____TtC21ProximityReaderDaemon11SessionTask_cardReaderAdapter + 32);
  __swift_project_boxed_opaque_existential_1((v14 + OBJC_IVAR____TtC21ProximityReaderDaemon11SessionTask_cardReaderAdapter), v17);
  v18 = *(v15 + 48);
  v19 = *(v15 + 56);
  v20 = *(v14 + 24);
  v21 = *(v20 + 72);
  v106 = *(v20 + 64);
  v108 = *(v16 + 56);

  v108(v18, v19, 0, 0, v106, v21, v17, v16);
  v23 = v22;

  v105 = v20;
  v109 = v15;
  v110 = *(v23 + 16);
  if (!v110)
  {
LABEL_31:

    v111 = 0;
    v57 = 0;
    v62 = 0;
    v60 = 0;
    v61 = 0;
LABEL_33:
    v64 = *(v0 + 360);
    v63 = *(v0 + 368);
    v65 = *(v0 + 336);
    v66 = *(v0 + 344);
    v67 = *(v0 + 320);

    sub_26125A870(v65, v67, &qword_27FE9F560, &qword_2613A3CB0);
    if (v64(v67, 1, v66) == 1)
    {
      sub_26124C718(*(v0 + 320), &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v68 = *(v0 + 320);
      v69 = sub_2613A122C();
      v70 = sub_2613A1D9C();
      if (os_log_type_enabled(v69, v70))
      {
        v71 = swift_slowAlloc();
        *v71 = 0;
        _os_log_impl(&dword_261243000, v69, v70, "[SessionTask] session still valid", v71, 2u);
        MEMORY[0x266701350](v71, -1, -1);
      }

      v72 = *(v0 + 344);
      v73 = *(v0 + 352);
      v74 = *(v0 + 320);

      (*(v73 + 8))(v74, v72);
    }

    v75 = v111;
    v76 = sub_2612F9F2C();
    v77 = *(*v76 + 32);
    if (!v77)
    {
      goto LABEL_45;
    }

    v78 = *(*v76 + 24);
    v79 = *(v0 + 272);
    v80 = *(*v109 + 280);
    v81 = *(*v76 + 32);

    if (v80(v82) == v78 && v77 == v83)
    {
    }

    else
    {
      v84 = sub_2613A241C();

      if ((v84 & 1) == 0)
      {
        v91 = *(v0 + 360);
        v107 = *(v0 + 368);
        v103 = *(v0 + 336);
        v104 = *(v0 + 344);
        v92 = *(v0 + 312);
        v93 = *(v0 + 272);
        (*(*v109 + 288))(v78, v77);
        v95 = *(v105 + 64);
        v94 = *(v105 + 72);

        sub_26125B1E4(v95, v94, v109);

        sub_26125A870(v103, v92, &qword_27FE9F560, &qword_2613A3CB0);
        if (v91(v92, 1, v104) != 1)
        {
          v96 = *(v0 + 312);
          v97 = sub_2613A122C();
          v98 = sub_2613A1D7C();
          v75 = v111;
          if (os_log_type_enabled(v97, v98))
          {
            v99 = swift_slowAlloc();
            *v99 = 0;
            _os_log_impl(&dword_261243000, v97, v98, "[SessionTask] boot id was updated", v99, 2u);
            MEMORY[0x266701350](v99, -1, -1);
          }

          v100 = *(v0 + 344);
          v101 = *(v0 + 352);
          v102 = *(v0 + 312);

          (*(v101 + 8))(v102, v100);
          goto LABEL_45;
        }

        sub_26124C718(*(v0 + 312), &qword_27FE9F560, &qword_2613A3CB0);
LABEL_44:
        v75 = v111;
LABEL_45:
        v85 = *(v0 + 264);
        *&v112 = v75;
        *(&v112 + 1) = v57;
        v113 = v62;
        v114 = v60;
        v115 = v61;
        sub_26135F9FC(v109, 0, 0, &v112, v85);
        v87 = *(v0 + 320);
        v86 = *(v0 + 328);
        v89 = *(v0 + 304);
        v88 = *(v0 + 312);

        v90 = *(v0 + 8);

        return v90();
      }
    }

    goto LABEL_44;
  }

  v55 = 0;
  v56 = (v23 + 64);
  while (v55 < *(v23 + 16))
  {
    v58 = *(v56 - 4);
    v57 = *(v56 - 3);
    v59 = *(v56 - 2);
    v60 = *(v56 - 1);
    v61 = *v56;
    *&v112 = v58;
    *(&v112 + 1) = v57;
    v113 = v59;
    v114 = v60;
    v115 = v61;

    if (DeprecationWarning.isOSVersionDeprecation.getter())
    {
      v111 = v58;

      v62 = v59;
      goto LABEL_33;
    }

    ++v55;
    v56 += 5;
    if (v110 == v55)
    {
      goto LABEL_31;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_26132BB04()
{
  v2 = *(*v1 + 384);
  v5 = *v1;
  *(*v1 + 392) = v0;

  if (v0)
  {
    v3 = sub_26132BD38;
  }

  else
  {
    v3 = sub_26132BC18;
  }

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_26132BC18()
{
  v16 = v0;
  v1 = v0[33];
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0[8];
  v15[0] = v0[4];
  v4 = v15[0];
  v15[1] = v5;
  v15[2] = v6;
  v15[3] = v7;
  v15[4] = v8;

  sub_2613247E8(v15[0], v5);
  sub_26135F9FC(v2, 0, 1, v15, v1);

  sub_261273F3C(v4, v5);
  v10 = v0[40];
  v9 = v0[41];
  v12 = v0[38];
  v11 = v0[39];

  v13 = v0[1];

  return v13();
}

uint64_t sub_26132BD38()
{
  v1 = v0[49];
  v3 = v0[40];
  v2 = v0[41];
  v5 = v0[38];
  v4 = v0[39];

  v6 = v0[1];

  return v6();
}

uint64_t sub_26132BDC0(uint64_t a1, uint64_t a2)
{
  v3[85] = v2;
  v3[84] = a2;
  v3[83] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0) - 8) + 64) + 15;
  v3[86] = swift_task_alloc();
  v3[87] = swift_task_alloc();
  v3[88] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26132BE7C);
}

uint64_t sub_26132BE7C()
{
  v1 = *(v0 + 704);
  v58 = sub_26129B5FC();
  sub_26125A870(v58, v1, &qword_27FE9F560, &qword_2613A3CB0);
  v2 = sub_2613A124C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 48);
  v57 = v3;
  if (v4(v1, 1, v2) == 1)
  {
    sub_26124C718(*(v0 + 704), &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v5 = sub_2613A122C();
    v6 = sub_2613A1D9C();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_261243000, v5, v6, "[SessionTask] preparing SAF session", v7, 2u);
      MEMORY[0x266701350](v7, -1, -1);
    }

    v8 = *(v0 + 704);

    (*(v3 + 8))(v8, v2);
  }

  type metadata accessor for StoreAndForwardManager();
  v9 = sub_261269430();
  *(v0 + 712) = v9;
  v10 = *(v0 + 672);
  if (v10)
  {
    v11 = *(v10 + 48);
    v12 = *(v10 + 56);

    v13 = sub_2612F68AC(v11, v12);
    v15 = v14;

    *(v0 + 720) = v15;
    if (v15)
    {
      v16 = *(v0 + 680);
      v17 = *(v0 + 672);

      v18 = sub_26132E2E4(v17);

      v19 = *(v16 + 24);
      *(v0 + 728) = v19;
      v20 = OBJC_IVAR____TtC21ProximityReaderDaemon11SessionTask_cardReaderAdapter;
      *(v0 + 736) = OBJC_IVAR____TtC21ProximityReaderDaemon11SessionTask_cardReaderAdapter;
      v21 = swift_task_alloc();
      *(v0 + 744) = v21;
      *v21 = v0;
      v21[1] = sub_26132C720;

      return sub_2612694A0(v0 + 160, v0 + 568, v19, v10, v18 & 1, v13, v15, v16 + v20);
    }

    v24 = *(v0 + 696);

    sub_26125A870(v58, v24, &qword_27FE9F560, &qword_2613A3CB0);
    if (v4(v24, 1, v2) == 1)
    {
      sub_26124C718(*(v0 + 696), &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v35 = *(v0 + 696);
      v36 = sub_2613A122C();
      v37 = sub_2613A1D8C();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        *v38 = 0;
        _os_log_impl(&dword_261243000, v36, v37, "[SessionTask] no online session was found, cannot create SAF session", v38, 2u);
        MEMORY[0x266701350](v38, -1, -1);
      }

      v39 = *(v0 + 696);

      (*(v57 + 8))(v39, v2);
    }

    v30 = sub_26139F2CC();
    v40 = objc_allocWithZone(v30);
    v41 = sub_26139F2DC();
    sub_2612C5960();
    v33 = swift_allocError();
    *v42 = v41;
    swift_willThrow();
  }

  else
  {
    v23 = *(v0 + 688);
    sub_26125A870(v58, v23, &qword_27FE9F560, &qword_2613A3CB0);
    if (v4(v23, 1, v2) == 1)
    {
      sub_26124C718(*(v0 + 688), &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v25 = *(v0 + 688);
      v26 = sub_2613A122C();
      v27 = sub_2613A1D8C();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&dword_261243000, v26, v27, "[SessionTask] no online session was found, cannot create SAF session", v28, 2u);
        MEMORY[0x266701350](v28, -1, -1);
      }

      v29 = *(v0 + 688);

      (*(v57 + 8))(v29, v2);
    }

    v30 = sub_26139F2CC();
    v31 = objc_allocWithZone(v30);
    v32 = sub_26139F2DC();
    sub_2612C5960();
    v33 = swift_allocError();
    *v34 = v32;
    swift_willThrow();
  }

  *(v0 + 816) = v9;
  *(v0 + 640) = v33;
  v43 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F650, &qword_2613A57C0);
  sub_26139F2CC();
  *(v0 + 824) = v30;
  if (swift_dynamicCast())
  {

    *(v0 + 832) = *(v0 + 648);
    v44 = *(v0 + 680);
    if (v9)
    {
      v45 = *(v44 + 24);
      v46 = swift_task_alloc();
      *(v0 + 840) = v46;
      *v46 = v0;
      v46[1] = sub_26132D0E4;

      return sub_2612723D8(v45);
    }

    else
    {
      v52 = *(v0 + 672);
      v53 = *(v44 + 24);
      v54 = sub_2612B5A20(v44 + OBJC_IVAR____TtC21ProximityReaderDaemon11SessionTask_cardReaderAdapter, v0 + 528);
      if (v52)
      {
        v52 = (*(**(v0 + 672) + 376))(v54);
      }

      *(v0 + 856) = v52;
      type metadata accessor for SafMonitorEventDispatcher();
      v55 = swift_task_alloc();
      *(v0 + 864) = v55;
      *v55 = v0;
      v55[1] = sub_26132D318;
      v56 = *(v0 + 832);

      return sub_26129E62C(v53, v0 + 528, v52, 0, 0, v56);
    }
  }

  else
  {
    v47 = *(v0 + 816);
    v48 = *(v0 + 704);
    v49 = *(v0 + 696);
    v50 = *(v0 + 688);

    v51 = *(v0 + 8);

    return v51();
  }
}

uint64_t sub_26132C720()
{
  v2 = *v1;
  v3 = *(*v1 + 744);
  v31 = *v1;
  v30 = *(*v1 + 160);
  v29 = *(*v1 + 168);
  v28 = *(*v1 + 176);
  v27 = *(*v1 + 184);
  v26 = *(*v1 + 192);
  v25 = *(*v1 + 200);
  v24 = *(*v1 + 208);
  v23 = *(*v1 + 216);
  v4 = *(*v1 + 224);
  v5 = *(*v1 + 232);
  v6 = *(*v1 + 240);
  v7 = *(*v1 + 248);
  v8 = *(*v1 + 256);
  v9 = *(*v1 + 264);
  v10 = *(v2 + 272);
  v11 = *(v2 + 280);
  v12 = *(v2 + 288);
  v13 = *(v2 + 296);

  if (v0)
  {
    v14 = *(v2 + 720);
    v15 = *(v2 + 712);
    *(v2 + 752) = *(v2 + 656);

    v16 = sub_26132CA2C;
  }

  else
  {
    v17 = *(v2 + 720);
    *(v2 + 304) = v30;
    *(v2 + 312) = v29;
    *(v2 + 320) = v28;
    *(v2 + 328) = v27;
    *(v2 + 336) = v26;
    *(v2 + 344) = v25;
    *(v2 + 352) = v24;
    *(v2 + 360) = v23;
    *(v2 + 368) = v4;
    *(v2 + 376) = v5;
    *(v2 + 384) = v6;
    *(v2 + 392) = v7;
    *(v2 + 400) = v8;
    *(v2 + 408) = v9;
    *(v2 + 416) = v10;
    *(v2 + 424) = v11;
    *(v2 + 432) = v12;
    *(v2 + 440) = v13;
    v18 = *(v2 + 320);
    *(v2 + 16) = *(v2 + 304);
    *(v2 + 32) = v18;
    *(v2 + 137) = *(v2 + 425);
    v19 = *(v2 + 416);
    *(v2 + 112) = *(v2 + 400);
    *(v2 + 128) = v19;
    v20 = *(v2 + 384);
    *(v2 + 80) = *(v2 + 368);
    *(v2 + 96) = v20;
    v21 = *(v2 + 352);
    *(v2 + 48) = *(v2 + 336);
    *(v2 + 64) = v21;

    v16 = sub_26132CCC0;
  }

  return MEMORY[0x2822009F8](v16);
}

uint64_t sub_26132CA2C()
{
  v1 = *(v0 + 752);
  v2 = *(v0 + 672);
  v3 = sub_26139F2CC();
  sub_2612C5960();
  v4 = swift_allocError();
  *v5 = v1;

  v6 = *(v0 + 712);
  *(v0 + 816) = v6;
  *(v0 + 640) = v4;
  v7 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F650, &qword_2613A57C0);
  *(v0 + 824) = v3;
  if (swift_dynamicCast())
  {

    *(v0 + 832) = *(v0 + 648);
    v8 = *(v0 + 680);
    if (v6)
    {
      v9 = *(v8 + 24);
      v10 = swift_task_alloc();
      *(v0 + 840) = v10;
      *v10 = v0;
      v10[1] = sub_26132D0E4;

      return sub_2612723D8(v9);
    }

    else
    {
      v17 = *(v0 + 672);
      v18 = *(v8 + 24);
      v19 = sub_2612B5A20(v8 + OBJC_IVAR____TtC21ProximityReaderDaemon11SessionTask_cardReaderAdapter, v0 + 528);
      if (v17)
      {
        v17 = (*(**(v0 + 672) + 376))(v19);
      }

      *(v0 + 856) = v17;
      type metadata accessor for SafMonitorEventDispatcher();
      v20 = swift_task_alloc();
      *(v0 + 864) = v20;
      *v20 = v0;
      v20[1] = sub_26132D318;
      v21 = *(v0 + 832);

      return sub_26129E62C(v18, v0 + 528, v17, 0, 0, v21);
    }
  }

  else
  {
    v12 = *(v0 + 816);
    v13 = *(v0 + 704);
    v14 = *(v0 + 696);
    v15 = *(v0 + 688);

    v16 = *(v0 + 8);

    return v16();
  }
}

uint64_t sub_26132CCC0()
{
  *(v0 + 760) = *(v0 + 568);
  v1 = *(v0 + 592);
  *(v0 + 768) = *(v0 + 576);
  *(v0 + 784) = v1;
  v2 = swift_task_alloc();
  *(v0 + 800) = v2;
  *v2 = v0;
  v2[1] = sub_26132CD6C;
  v3 = *(v0 + 728);
  v4 = *(v0 + 712);

  return sub_2612723D8(v3);
}

uint64_t sub_26132CD6C(uint64_t a1, char a2)
{
  v5 = *v2;
  v6 = *(*v2 + 800);
  v7 = *(*v2 + 736);
  v8 = *(*v2 + 712);
  v9 = *(*v2 + 680);
  v12 = *v2;

  type metadata accessor for SafMonitorEventDispatcher();
  v10 = swift_task_alloc();
  *(v5 + 808) = v10;
  *v10 = v12;
  v10[1] = sub_26132CF18;

  return sub_26129E2A4(v9 + v7, v5 + 16, a1, a2 & 1);
}

uint64_t sub_26132CF18()
{
  v1 = *v0;
  v2 = *(*v0 + 808);
  v4 = *v0;

  sub_261273FD4(v1 + 304);

  return MEMORY[0x2822009F8](sub_26132D01C);
}

uint64_t sub_26132D01C()
{
  v13 = v0;
  v1 = *(v0 + 792);
  v2 = *(v0 + 712);
  v3 = *(v0 + 704);
  v4 = *(v0 + 696);
  v5 = *(v0 + 688);
  v6 = *(v0 + 672);
  v7 = *(v0 + 664);
  v8 = *(v0 + 776);
  v11[0] = *(v0 + 760);
  v11[1] = v8;
  v12 = v1;
  sub_26135F9FC(v6, 1, 0, v11, v7);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_26132D0E4(uint64_t a1, char a2)
{
  v3 = *v2;
  v4 = *(*v2 + 840);
  v6 = *v2;
  *(v3 + 848) = a1;
  *(v3 + 153) = a2;

  return MEMORY[0x2822009F8](sub_26132D1E8);
}

uint64_t sub_26132D1E8()
{
  if (*(v0 + 153))
  {
    v1 = 0;
  }

  else
  {
    v1 = *(v0 + 848);
  }

  v2 = *(v0 + 680);
  v3 = *(v0 + 672);
  v4 = *(v2 + 24);
  v5 = sub_2612B5A20(v2 + OBJC_IVAR____TtC21ProximityReaderDaemon11SessionTask_cardReaderAdapter, v0 + 528);
  if (v3)
  {
    v3 = (*(**(v0 + 672) + 376))(v5);
  }

  *(v0 + 856) = v3;
  type metadata accessor for SafMonitorEventDispatcher();
  v6 = swift_task_alloc();
  *(v0 + 864) = v6;
  *v6 = v0;
  v6[1] = sub_26132D318;
  v7 = *(v0 + 832);

  return sub_26129E62C(v4, v0 + 528, v3, v1, 0, v7);
}

uint64_t sub_26132D318()
{
  v1 = *v0;
  v2 = *(*v0 + 864);
  v3 = *(*v0 + 856);
  v5 = *v0;

  __swift_destroy_boxed_opaque_existential_0Tm((v1 + 528));

  return MEMORY[0x2822009F8](sub_26132D438);
}

uint64_t sub_26132D438()
{
  v1 = *(v0 + 832);
  v2 = *(v0 + 824);
  sub_2612C5960();
  swift_allocError();
  *v3 = v1;
  swift_willThrow();
  v4 = *(v0 + 816);
  v5 = *(v0 + 704);
  v6 = *(v0 + 696);
  v7 = *(v0 + 688);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_26132D504(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();
  v2[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26132D5AC);
}

uint64_t sub_26132D5AC()
{
  v1 = v0[2];
  if (!v1)
  {
    v7 = v0[4];
    v8 = sub_26129B5FC();
    sub_26125A870(v8, v7, &qword_27FE9F560, &qword_2613A3CB0);
    v9 = sub_2613A124C();
    v10 = *(v9 - 8);
    if ((*(v10 + 48))(v7, 1, v9) == 1)
    {
      sub_26124C718(v0[4], &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v15 = v0[4];
      v16 = sub_2613A122C();
      v17 = sub_2613A1D9C();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&dword_261243000, v16, v17, "[SessionTask] making sure no SAF session exists", v18, 2u);
        MEMORY[0x266701350](v18, -1, -1);
      }

      v19 = v0[4];

      (*(v10 + 8))(v19, v9);
    }

    v5 = swift_task_alloc();
    v0[7] = v5;
    *v5 = v0;
    v6 = sub_26132DB44;
    goto LABEL_13;
  }

  v2 = *(*v1 + 304);
  v3 = v0[2];

  if (v2(v4))
  {
    v5 = swift_task_alloc();
    v0[6] = v5;
    *v5 = v0;
    v6 = sub_26132D844;
LABEL_13:
    v5[1] = v6;
    v20 = v0[3];

    return sub_26132DC70();
  }

  v12 = v0[4];
  v11 = v0[5];

  v13 = v0[1];

  return v13();
}

uint64_t sub_26132D844()
{
  v1 = *(*v0 + 48);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_26132D940);
}

uint64_t sub_26132D940()
{
  v1 = v0[5];
  v2 = sub_26129B8EC();
  sub_26125A870(v2, v1, &qword_27FE9F560, &qword_2613A3CB0);
  v3 = sub_2613A124C();
  v4 = *(v3 - 8);
  if ((*(v4 + 48))(v1, 1, v3) == 1)
  {
    sub_26124C718(v0[5], &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v5 = v0[5];
    v6 = sub_2613A122C();
    v7 = sub_2613A1D9C();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_261243000, v6, v7, "[SessionTask] updating online session SAF active flag as [ false ]", v8, 2u);
      MEMORY[0x266701350](v8, -1, -1);
    }

    v9 = v0[5];

    (*(v4 + 8))(v9, v3);
  }

  v11 = v0[2];
  v10 = v0[3];
  (*(*v11 + 312))(0);
  v12 = *(v10 + 24);
  v13 = *(v12 + 64);
  v14 = *(v12 + 72);

  sub_26125B1E4(v13, v14, v11);

  v16 = v0[4];
  v15 = v0[5];

  v17 = v0[1];

  return v17();
}

uint64_t sub_26132DB44()
{
  v1 = *v0;
  v2 = *(*v0 + 56);
  v7 = *v0;

  v3 = *(v1 + 40);
  v4 = *(v1 + 32);

  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_26132DC70()
{
  v1[56] = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0) - 8) + 64) + 15;
  v1[57] = swift_task_alloc();
  v1[58] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26132DD18);
}

uint64_t sub_26132DD18()
{
  v1 = *(v0 + 448);
  *(v0 + 472) = type metadata accessor for StoreAndForwardManager();
  v2 = *(v1 + 24);
  *(v0 + 480) = v2;
  v3 = *(v2 + 80);
  v4 = *(v2 + 88);

  sub_26126B07C(v3, v4, v0 + 304);

  v5 = *(v0 + 416);
  *(v0 + 256) = *(v0 + 400);
  *(v0 + 272) = v5;
  *(v0 + 281) = *(v0 + 425);
  v6 = *(v0 + 352);
  *(v0 + 192) = *(v0 + 336);
  *(v0 + 208) = v6;
  v7 = *(v0 + 384);
  *(v0 + 224) = *(v0 + 368);
  *(v0 + 240) = v7;
  v8 = *(v0 + 320);
  *(v0 + 160) = *(v0 + 304);
  *(v0 + 176) = v8;
  if (sub_261273F24(v0 + 160) == 1)
  {
    v9 = *(v0 + 456);
    v10 = sub_26129B5FC();
    sub_26125A870(v10, v9, &qword_27FE9F560, &qword_2613A3CB0);
    v11 = sub_2613A124C();
    v12 = *(v11 - 8);
    if ((*(v12 + 48))(v9, 1, v11) == 1)
    {
      sub_26124C718(*(v0 + 456), &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v21 = *(v0 + 456);
      v22 = sub_2613A122C();
      v23 = sub_2613A1D9C();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&dword_261243000, v22, v23, "[SessionTask] no previous SAF session to delete", v24, 2u);
        MEMORY[0x266701350](v24, -1, -1);
      }

      v25 = *(v0 + 456);

      (*(v12 + 8))(v25, v11);
    }

    v27 = *(v0 + 456);
    v26 = *(v0 + 464);

    v28 = *(v0 + 8);

    return v28();
  }

  else
  {
    v13 = *(v0 + 448);
    v14 = *(v0 + 272);
    *(v0 + 112) = *(v0 + 256);
    *(v0 + 128) = v14;
    *(v0 + 137) = *(v0 + 281);
    v15 = *(v0 + 208);
    *(v0 + 48) = *(v0 + 192);
    *(v0 + 64) = v15;
    v16 = *(v0 + 240);
    *(v0 + 80) = *(v0 + 224);
    *(v0 + 96) = v16;
    v17 = *(v0 + 176);
    *(v0 + 16) = *(v0 + 160);
    *(v0 + 32) = v17;
    type metadata accessor for SafMonitorEventDispatcher();
    v18 = OBJC_IVAR____TtC21ProximityReaderDaemon11SessionTask_cardReaderAdapter;
    v19 = swift_task_alloc();
    *(v0 + 488) = v19;
    *v19 = v0;
    v19[1] = sub_26132DFF4;

    return sub_26129E984(v13 + v18, v0 + 16);
  }
}

uint64_t sub_26132DFF4()
{
  v1 = *v0;
  v2 = *(*v0 + 488);
  v4 = *v0;

  sub_26124C718(v1 + 304, &qword_27FE9F458, &unk_2613A4BE0);

  return MEMORY[0x2822009F8](sub_26132E108);
}

uint64_t sub_26132E108()
{
  v1 = v0[58];
  v2 = sub_26129B5FC();
  sub_26125A870(v2, v1, &qword_27FE9F560, &qword_2613A3CB0);
  v3 = sub_2613A124C();
  v4 = *(v3 - 8);
  if ((*(v4 + 48))(v1, 1, v3) == 1)
  {
    sub_26124C718(v0[58], &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v5 = v0[58];
    v6 = sub_2613A122C();
    v7 = sub_2613A1D9C();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_261243000, v6, v7, "[SessionTask] deleting previous SAF session", v8, 2u);
      MEMORY[0x266701350](v8, -1, -1);
    }

    v9 = v0[58];

    (*(v4 + 8))(v9, v3);
  }

  v11 = v0[59];
  v10 = v0[60];
  v12 = v0[56];
  v13 = *(v10 + 80);
  v14 = *(v10 + 88);

  sub_261272A54(v13, v14);

  if (*(v12 + OBJC_IVAR____TtC21ProximityReaderDaemon11SessionTask_analytics))
  {
    sub_26139AA34();
  }

  v16 = v0[57];
  v15 = v0[58];

  v17 = v0[1];

  return v17();
}

uint64_t sub_26132E2E4(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v68[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v68[-v10];
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v68[-v13];
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v68[-v16];
  MEMORY[0x28223BE20](v15);
  v19 = &v68[-v18];
  if (!a1)
  {
    v30 = sub_26129B5FC();
    sub_26125A870(v30, v8, &qword_27FE9F560, &qword_2613A3CB0);
    v31 = sub_2613A124C();
    v32 = *(v31 - 8);
    if ((*(v32 + 48))(v8, 1, v31) != 1)
    {
      v40 = sub_2613A122C();
      v41 = sub_2613A1D8C();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        *v42 = 0;
        _os_log_impl(&dword_261243000, v40, v41, "[SessionTask] no session to compare passcode creation dates", v42, 2u);
        MEMORY[0x266701350](v42, -1, -1);
      }

      (*(v32 + 8))(v8, v31);
      return 0;
    }

    v29 = v8;
    goto LABEL_7;
  }

  v20 = *sub_2612F9F2C();

  sub_2612FA6A8();
  v22 = v21;

  v24 = *(*a1 + 328);
  v25 = (v24)(v23);
  v26 = sub_26129B5FC();
  if (v22 == v25)
  {
    sub_26125A870(v26, v11, &qword_27FE9F560, &qword_2613A3CB0);
    v27 = sub_2613A124C();
    v28 = *(v27 - 8);
    if ((*(v28 + 48))(v11, 1, v27) != 1)
    {
      v37 = sub_2613A122C();
      v38 = sub_2613A1D7C();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 0;
        _os_log_impl(&dword_261243000, v37, v38, "[SessionTask] passcode creation timestamp did NOT change", v39, 2u);
        MEMORY[0x266701350](v39, -1, -1);
      }

      (*(v28 + 8))(v11, v27);
      return 0;
    }

    v29 = v11;
LABEL_7:
    sub_26124C718(v29, &qword_27FE9F560, &qword_2613A3CB0);
    return 0;
  }

  v70 = v17;
  v75 = v26;
  sub_26125A870(v26, v19, &qword_27FE9F560, &qword_2613A3CB0);
  v33 = sub_2613A124C();
  v34 = *(v33 - 8);
  v35 = *(v34 + 48);
  v72 = v34 + 48;
  v73 = v34;
  v71 = v35;
  v36 = v35(v19, 1, v33);
  v74 = v33;
  if (v36 == 1)
  {
    sub_26124C718(v19, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {

    v44 = sub_2613A122C();
    v45 = sub_2613A1D9C();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 134218240;
      v69 = v45;
      *(v46 + 4) = v24();
      *(v46 + 12) = 2048;
      *(v46 + 14) = v22;
      _os_log_impl(&dword_261243000, v44, v69, "[SessionTask] Passcode creation timestamp changed from [%f] to [%f] requesting reader status", v46, 0x16u);
      MEMORY[0x266701350](v46, -1, -1);
    }

    (*(v73 + 8))(v19, v33);
  }

  v47 = *(v2 + OBJC_IVAR____TtC21ProximityReaderDaemon11SessionTask_cardReaderAdapter + 24);
  v48 = *(v2 + OBJC_IVAR____TtC21ProximityReaderDaemon11SessionTask_cardReaderAdapter + 32);
  __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC21ProximityReaderDaemon11SessionTask_cardReaderAdapter), v47);
  v49 = a1[6];
  v50 = a1[7];
  v51 = v2;
  v52 = *(v48 + 40);

  v53 = v52(v49, v50, v47, v48);
  v54 = v51;

  if (v53)
  {
    v55 = v70;
    sub_26125A870(v75, v70, &qword_27FE9F560, &qword_2613A3CB0);
    v56 = v74;
    if (v71(v55, 1, v74) == 1)
    {
      v57 = sub_26124C718(v55, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v62 = sub_2613A122C();
      v63 = sub_2613A1D7C();
      if (os_log_type_enabled(v62, v63))
      {
        v64 = swift_slowAlloc();
        *v64 = 0;
        _os_log_impl(&dword_261243000, v62, v63, "[SessionTask] user did NOT change passcode On/Off state", v64, 2u);
        MEMORY[0x266701350](v64, -1, -1);
      }

      v57 = (*(v73 + 8))(v55, v56);
    }

    (*(*a1 + 336))(v57, v22);
    v65 = *(v54 + 24);
    v66 = *(v65 + 64);
    v67 = *(v65 + 72);

    sub_26125B1E4(v66, v67, a1);

    return 0;
  }

  sub_26125A870(v75, v14, &qword_27FE9F560, &qword_2613A3CB0);
  v58 = v74;
  if (v71(v14, 1, v74) == 1)
  {

    sub_26124C718(v14, &qword_27FE9F560, &qword_2613A3CB0);
    return 1;
  }

  else
  {
    v59 = sub_2613A122C();
    v60 = sub_2613A1D8C();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      *v61 = 0;
      _os_log_impl(&dword_261243000, v59, v60, "[SessionTask] user changed passcode On/Off state", v61, 2u);
      MEMORY[0x266701350](v61, -1, -1);
    }

    (*(v73 + 8))(v14, v58);
    return 1;
  }
}

uint64_t sub_26132EB10(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v41 - v8;
  if (!a1)
  {
    return 1;
  }

  v10 = a1[8];
  v11 = a1[9];
  v44 = *(*(v1 + 24) + 96);
  if (v10 == sub_261290024(&type metadata for SPSEnvironmentContext, &off_2873B6DC0) && v11 == v12)
  {

LABEL_11:
    v21 = (*(*a1 + 256))(v15);
    v23 = v22;
    type metadata accessor for SessionStore();
    if (v21 == sub_261292C7C() && v23 == v24)
    {
    }

    else
    {
      v26 = sub_2613A241C();

      if ((v26 & 1) == 0)
      {
        v27 = sub_26129B5FC();
        sub_26125A870(v27, v7, &qword_27FE9F560, &qword_2613A3CB0);
        v28 = sub_2613A124C();
        v29 = *(v28 - 8);
        if ((*(v29 + 48))(v7, 1, v28) != 1)
        {

          v33 = sub_2613A122C();
          v34 = sub_2613A1D8C();

          if (os_log_type_enabled(v33, v34))
          {
            v35 = swift_slowAlloc();
            v42 = swift_slowAlloc();
            v43 = v42;
            *v35 = 136446466;
            v36 = sub_26124C11C(v21, v23, &v43);

            *(v35 + 4) = v36;
            *(v35 + 12) = 2082;
            v37 = sub_261292C7C();
            v39 = sub_26124C11C(v37, v38, &v43);

            *(v35 + 14) = v39;
            _os_log_impl(&dword_261243000, v33, v34, "[SessionTask] os version mismatch: %{public}s --> %{public}s", v35, 0x16u);
            v40 = v42;
            swift_arrayDestroy();
            MEMORY[0x266701350](v40, -1, -1);
            MEMORY[0x266701350](v35, -1, -1);
          }

          else
          {
          }

          (*(v29 + 8))(v7, v28);
          return 0;
        }

        v19 = v7;
        goto LABEL_21;
      }
    }

    return 1;
  }

  v14 = sub_2613A241C();

  if (v14)
  {
    goto LABEL_11;
  }

  v16 = sub_26129B5FC();
  sub_26125A870(v16, v9, &qword_27FE9F560, &qword_2613A3CB0);
  v17 = sub_2613A124C();
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v9, 1, v17) != 1)
  {
    v30 = sub_2613A122C();
    v31 = sub_2613A1D8C();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_261243000, v30, v31, "[SessionTask] saved session does not have the same environment", v32, 2u);
      MEMORY[0x266701350](v32, -1, -1);
    }

    (*(v18 + 8))(v9, v17);
    return 0;
  }

  v19 = v9;
LABEL_21:
  sub_26124C718(v19, &qword_27FE9F560, &qword_2613A3CB0);
  return 0;
}

uint64_t sub_26132EFD0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v25 - v7;
  if (sub_26132EB10(a1))
  {
    if (a1)
    {
      v9 = a1[2];
      v10 = a1[3];
      if (sub_2613A0FBC())
      {
        return 1;
      }
    }

    v16 = sub_26129B5FC();
    sub_26125A870(v16, v8, &qword_27FE9F560, &qword_2613A3CB0);
    v17 = sub_2613A124C();
    v18 = *(v17 - 8);
    if ((*(v18 + 48))(v8, 1, v17) != 1)
    {
      v22 = sub_2613A122C();
      v23 = sub_2613A1D9C();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&dword_261243000, v22, v23, "[SessionTask] pspt is nil or pspt is different than partner token", v24, 2u);
        MEMORY[0x266701350](v24, -1, -1);
      }

      (*(v18 + 8))(v8, v17);
      return 0;
    }

    v15 = v8;
  }

  else
  {
    v12 = sub_26129B5FC();
    sub_26125A870(v12, v6, &qword_27FE9F560, &qword_2613A3CB0);
    v13 = sub_2613A124C();
    v14 = *(v13 - 8);
    if ((*(v14 + 48))(v6, 1, v13) != 1)
    {
      v19 = sub_2613A122C();
      v20 = sub_2613A1D9C();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&dword_261243000, v19, v20, "[SessionTask] existing session is invalid", v21, 2u);
        MEMORY[0x266701350](v21, -1, -1);
      }

      (*(v14 + 8))(v6, v13);
      return 0;
    }

    v15 = v6;
  }

  sub_26124C718(v15, &qword_27FE9F560, &qword_2613A3CB0);
  return 0;
}

uint64_t sub_26132F2D8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, uint64_t a6)
{
  *(v7 + 312) = a6;
  *(v7 + 320) = v6;
  *(v7 + 149) = a5;
  *(v7 + 148) = a4;
  *(v7 + 296) = a2;
  *(v7 + 304) = a3;
  *(v7 + 288) = a1;
  v8 = sub_26139F0BC();
  *(v7 + 328) = v8;
  v9 = *(v8 - 8);
  *(v7 + 336) = v9;
  v10 = *(v9 + 64) + 15;
  *(v7 + 344) = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F220, qword_2613A5530) - 8) + 64) + 15;
  *(v7 + 352) = swift_task_alloc();
  v12 = sub_26139EF7C();
  *(v7 + 360) = v12;
  v13 = *(v12 - 8);
  *(v7 + 368) = v13;
  v14 = *(v13 + 64) + 15;
  *(v7 + 376) = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0) - 8) + 64) + 15;
  *(v7 + 384) = swift_task_alloc();
  *(v7 + 392) = swift_task_alloc();
  *(v7 + 400) = swift_task_alloc();
  *(v7 + 408) = swift_task_alloc();
  *(v7 + 416) = swift_task_alloc();
  *(v7 + 424) = swift_task_alloc();
  *(v7 + 432) = swift_task_alloc();
  *(v7 + 440) = swift_task_alloc();
  *(v7 + 448) = swift_task_alloc();
  *(v7 + 456) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26132F4E0);
}

uint64_t sub_26132F4E0()
{
  v1 = *(v0 + 456);
  v2 = sub_26129B5FC();
  *(v0 + 464) = v2;
  sub_26125A870(v2, v1, &qword_27FE9F560, &qword_2613A3CB0);
  v3 = sub_2613A124C();
  *(v0 + 472) = v3;
  v4 = *(v3 - 8);
  *(v0 + 480) = v4;
  v5 = *(v4 + 48);
  *(v0 + 488) = v5;
  *(v0 + 496) = (v4 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v51 = v5;
  if (v5(v1, 1, v3) == 1)
  {
    sub_26124C718(*(v0 + 456), &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v6 = sub_2613A122C();
    v7 = sub_2613A1D9C();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = v2;
      v9 = *(v0 + 149);
      v10 = *(v0 + 148);
      v11 = swift_slowAlloc();
      *v11 = 67109376;
      *(v11 + 4) = v10;
      *(v11 + 8) = 1024;
      *(v11 + 10) = v9;
      v2 = v8;
      _os_log_impl(&dword_261243000, v6, v7, "[SessionTask] requesting reader to prepare, refresh: [ %{BOOL}d ] force: [ %{BOOL}d ]", v11, 0xEu);
      MEMORY[0x266701350](v11, -1, -1);
    }

    v12 = *(v0 + 456);

    (*(v4 + 8))(v12, v3);
  }

  v52 = *(v0 + 304);
  v13 = (*(v0 + 320) + OBJC_IVAR____TtC21ProximityReaderDaemon11SessionTask_cardReaderAdapter);
  v14 = v13[3];
  v15 = v13[4];
  __swift_project_boxed_opaque_existential_1(v13, v14);
  (*(v15 + 32))(v14, v15);
  v49 = v2;
  v47 = v4;
  v50 = v3;
  v16 = *(v0 + 320);
  v17 = *(v0 + 149);
  v18 = v13[3];
  v19 = v13[4];
  __swift_project_boxed_opaque_existential_1(v13, v18);
  v48 = v16;
  v20 = *(v16 + 24);
  v22 = *(v20 + 64);
  v21 = *(v20 + 72);
  v23 = *(v19 + 56);

  v23(0, 0, v17, 0, v22, v21, v18, v19);
  v25 = v24;
  *(v0 + 504) = 0;

  v53 = *(v25 + 16);
  if (v53)
  {
    v27 = 0;
    v28 = (v25 + 64);
    while (v27 < *(v25 + 16))
    {
      v30 = *(v28 - 4);
      v29 = *(v28 - 3);
      v32 = *(v28 - 2);
      v31 = *(v28 - 1);
      v33 = *v28;

      if (DeprecationWarning.isOSVersionDeprecation.getter())
      {

        goto LABEL_14;
      }

      ++v27;
      v28 += 5;
      if (v53 == v27)
      {

        v30 = 0;
        v29 = 0;
        v32 = 0;
        v31 = 0;
        v33 = 0;
LABEL_14:

        sub_261273F3C(0, 0);
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {

    v33 = 0;
    v31 = 0;
    v32 = 0;
    v29 = 0;
    v30 = 0;
LABEL_15:
    *(v0 + 544) = v30;
    *(v0 + 536) = v29;
    *(v0 + 528) = v32;
    *(v0 + 520) = v31;
    *(v0 + 512) = v33;
    v34 = *(v0 + 448);
    sub_26125A870(v49, v34, &qword_27FE9F560, &qword_2613A3CB0);
    if (v51(v34, 1, v50) == 1)
    {
      sub_26124C718(*(v0 + 448), &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v35 = *(v0 + 448);
      v36 = sub_2613A122C();
      v37 = sub_2613A1D9C();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        *v38 = 0;
        _os_log_impl(&dword_261243000, v36, v37, "[SessionTask] reader is prepared", v38, 2u);
        MEMORY[0x266701350](v38, -1, -1);
      }

      v39 = *(v0 + 448);

      (*(v47 + 8))(v39, v50);
    }

    v40 = *(v0 + 312);
    v41 = *(v48 + 24);
    *(v0 + 552) = v41;
    if (v40)
    {
      v42 = *(v40 + 32);
      v43 = *(v40 + 40);
    }

    else
    {
      v42 = 0;
      v43 = 0;
    }

    *(v0 + 560) = v43;
    type metadata accessor for AuthorizerService();
    v44 = swift_task_alloc();
    *(v0 + 568) = v44;
    *v44 = v0;
    v44[1] = sub_26132FB44;
    v45 = *(v0 + 296);
    v46 = *(v0 + 304);

    return sub_26124F738(v0 + 96, v41, v45, v46, v42, v43);
  }

  return result;
}

uint64_t sub_26132FB44()
{
  v1 = *(*v0 + 568);
  v2 = *(*v0 + 560);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_26132FC5C);
}

uint64_t sub_26132FC5C()
{
  v291 = v0;
  v1 = v0;
  v3 = *(v0 + 104);
  v2 = v0 + 96;
  v282 = *(v0 + 96);
  v4 = *(v0 + 120);
  v287 = *(v0 + 112);
  v5 = *(v0 + 128);
  if ((*(v0 + 144) & 1) == 0)
  {
    v272 = *(v0 + 136);
    v273 = *(v0 + 128);
    v276 = v0;
    v278 = *(v0 + 104);
    *(v0 + 147) = *(*(v0 + 552) + 96);

    v274 = v0 + 96;
    v16 = sub_261290024(&type metadata for SPSEnvironmentContext, &off_2873B6DC0);
    v275 = v17;
    v18 = sub_2612F9F2C();
    if (*(*v18 + 32))
    {
      v19 = *(*v18 + 24);
      v20 = *(*v18 + 32);
    }

    else
    {
      v19 = 0;
      v20 = 0xE000000000000000;
    }

    v1 = v276;
    v43 = *(v276 + 296);
    v44 = *(v276 + 304);
    type metadata accessor for SessionStore();

    sub_2612FA6A8();
    v46 = v45;

    v47 = sub_26125A798();

    v48 = sub_261292B44(v43, v44, v282, v3, v287, v4, v16, v275, v46, v19, v20, v47 & 1);
    *(v276 + 576) = v48;
    v49 = *v48;
    v50 = *(*v48 + 376);
    *(v276 + 584) = v50;
    *(v276 + 592) = (v49 + 376) & 0xFFFFFFFFFFFFLL | 0xC31D000000000000;
    v51 = v50();
    *(v276 + 600) = v51;
    if (!v51)
    {
      v54 = *(v276 + 528);
      v55 = *(v276 + 520);
      v56 = *(v276 + 512);
      v57 = *(v276 + 320);
      v59 = *(v276 + 296);
      v58 = *(v276 + 304);
      sub_261273F3C(*(v276 + 544), *(v276 + 536));
      sub_261332844(v282, v278, v59, v58);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F2E8, &unk_2613A43A0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_2613A4310;
      v61 = sub_26139F2CC();
      *(inited + 32) = sub_26139F29C();
      *(inited + 40) = v62;
      v63 = sub_261377F5C();
      v65 = *v63;
      v64 = v63[1];
      *(inited + 72) = MEMORY[0x277D837D0];
      *(inited + 48) = v65;
      *(inited + 56) = v64;

      sub_261259E78(inited);
      swift_setDeallocating();
      sub_26124C718(inited + 32, &qword_27FE9F2F0, &qword_2613A4BD0);
      v66 = objc_allocWithZone(v61);
      v2 = v274;
      v67 = sub_26139F2DC();
      sub_2612C5960();
      swift_allocError();
      *v68 = v67;
      swift_willThrow();

LABEL_85:
      sub_26124C718(v2, &qword_27FE9F230, &qword_2613A3F10);
      v236 = v1[56];
      v235 = v1[57];
      v238 = v1[54];
      v237 = v1[55];
      v240 = v1[52];
      v239 = v1[53];
      v242 = v1[50];
      v241 = v1[51];
      v243 = v1;
      v244 = v1[49];
      v245 = v243[48];
      v277 = v243[47];
      v281 = v243[44];
      v286 = v243[43];

      v154 = v243[1];
      goto LABEL_86;
    }

    v283 = v51;
    v52 = *(v276 + 312);
    if (v52)
    {
      v53 = (*(*v52 + 184))();
    }

    else
    {
      v53 = sub_2613A0C5C();
    }

    v78 = *(v276 + 312);
    v79 = (*(*v48 + 192))(v53);
    if (v78)
    {
      v80 = (*(**(v276 + 312) + 232))(v79);
    }

    else
    {
      v80 = 0;
      v81 = 1;
    }

    v82 = *(v276 + 312);
    v83 = (*(*v48 + 240))(v80, v81 & 1);
    if (v82)
    {
      v84 = (*(**(v276 + 312) + 352))(v83);
    }

    else
    {
      v84 = 0;
      v85 = 0;
      v86 = 1;
    }

    v87 = *(v276 + 148);
    (*(*v48 + 360))(v84, v85, v86 & 1);
    if (v87 == 1)
    {
      goto LABEL_33;
    }

    v111 = *(v276 + 552);
    v113 = *(v276 + 360);
    v112 = *(v276 + 368);
    v114 = *(v276 + 352);
    sub_26139F73C();
    sub_26139F72C();
    v115 = *(v111 + 32);
    v116 = *(v111 + 40);

    sub_26139F71C();

    type metadata accessor for Mock();

    sub_26129B1A8(19);

    sub_26139EF5C();

    if ((*(v112 + 48))(v114, 1, v113) == 1)
    {
      sub_26124C718(*(v276 + 352), &qword_27FE9F220, qword_2613A5530);
    }

    else
    {
      v118 = *(v276 + 368);
      v117 = *(v276 + 376);
      v119 = *(v276 + 360);
      (*(v118 + 32))(v117, *(v276 + 352), v119);
      sub_26139F72C();
      v120 = *(v111 + 32);
      v121 = *(v111 + 40);

      sub_26139F70C();

      (*(v118 + 8))(v117, v119);
    }

    v122 = sub_26129B0F4(4);
    v124 = *(v276 + 488);
    v123 = *(v276 + 496);
    v126 = *(v276 + 464);
    v125 = *(v276 + 472);
    if (v122)
    {
      v127 = *(v276 + 440);
      sub_26125A870(*(v276 + 464), v127, &qword_27FE9F560, &qword_2613A3CB0);
      if (v124(v127, 1, v125) == 1)
      {
        sub_26124C718(*(v276 + 440), &qword_27FE9F560, &qword_2613A3CB0);
      }

      else
      {
        v155 = *(v276 + 440);
        v156 = sub_2613A122C();
        v157 = sub_2613A1D7C();
        if (os_log_type_enabled(v156, v157))
        {
          v158 = swift_slowAlloc();
          *v158 = 0;
          _os_log_impl(&dword_261243000, v156, v157, "INTERNAL - skipping applet install", v158, 2u);
          MEMORY[0x266701350](v158, -1, -1);
        }

        v159 = *(v276 + 472);
        v160 = *(v276 + 480);
        v161 = *(v276 + 440);

        (*(v160 + 8))(v161, v159);
      }

LABEL_33:
      v88 = *(v276 + 504);
      goto LABEL_34;
    }

    v128 = *(v276 + 432);
    v129 = *(v276 + 320);
    v130 = sub_26132EB10(*(v276 + 312));
    sub_26125A870(v126, v128, &qword_27FE9F560, &qword_2613A3CB0);
    if (v124(v128, 1, v125) == 1)
    {
      v131 = sub_26124C718(*(v276 + 432), &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v162 = *(v276 + 432);
      v163 = sub_2613A122C();
      v164 = sub_2613A1D9C();
      if (os_log_type_enabled(v163, v164))
      {
        v165 = swift_slowAlloc();
        *v165 = 67240192;
        *(v165 + 4) = v130 & 1;
        _os_log_impl(&dword_261243000, v163, v164, "[SessionTask] sessionStoreValid: %{BOOL,public}d", v165, 8u);
        MEMORY[0x266701350](v165, -1, -1);
      }

      v166 = *(v276 + 472);
      v167 = *(v276 + 480);
      v168 = *(v276 + 432);

      v131 = (*(v167 + 8))(v168, v166);
    }

    *&v169 = COERCE_DOUBLE((*(*v48 + 232))(v131));
    if (v170)
    {
      v171 = 0;
    }

    else
    {
      v173 = *(v276 + 336);
      v172 = *(v276 + 344);
      v174 = *&v169;
      v175 = *(v276 + 328);
      sub_26139F0AC();
      sub_26139F07C();
      v177 = v176;
      (*(v173 + 8))(v172, v175);
      v171 = v177 < v174;
    }

    v179 = *(v276 + 488);
    v178 = *(v276 + 496);
    v180 = *(v276 + 472);
    v181 = *(v276 + 424);
    sub_26125A870(*(v276 + 464), v181, &qword_27FE9F560, &qword_2613A3CB0);
    if (v179(v181, 1, v180) == 1)
    {
      sub_26124C718(*(v276 + 424), &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v182 = *(v276 + 312);

      v183 = sub_2613A122C();
      v184 = sub_2613A1D9C();

      if (os_log_type_enabled(v183, v184))
      {
        v185 = *(v276 + 312);
        v186 = swift_slowAlloc();
        *v186 = 134349056;
        if (!v185 || (v187 = *(v276 + 312), v188 = (*(*v182 + 232))(), (v189 & 1) != 0))
        {
          v188 = 0;
        }

        *(v186 + 4) = v188;
        _os_log_impl(&dword_261243000, v183, v184, "[SessionTask] stale: %{public}f", v186, 0xCu);
        MEMORY[0x266701350](v186, -1, -1);
        v1 = v276;
      }

      v190 = v1[59];
      v191 = v1[60];
      v192 = v1[53];

      (*(v191 + 8))(v192, v190);
    }

    v194 = v1[61];
    v193 = v1[62];
    v195 = v1[59];
    v196 = v1[52];
    sub_26125A870(v1[58], v196, &qword_27FE9F560, &qword_2613A3CB0);
    if (v194(v196, 1, v195) == 1)
    {
      sub_26124C718(v1[52], &qword_27FE9F560, &qword_2613A3CB0);
      v197 = v1[39];
      if (v197)
      {
LABEL_69:
        v198 = v1[37];
        v199 = v1[38];
        v200 = *(v197 + 16);
        v201 = *(v197 + 24);
        v202 = sub_2613A0F8C();
        goto LABEL_74;
      }
    }

    else
    {
      v203 = v1[52];
      v204 = sub_2613A122C();
      v205 = sub_2613A1D9C();
      if (os_log_type_enabled(v204, v205))
      {
        v206 = swift_slowAlloc();
        *v206 = 67240192;
        *(v206 + 4) = v171;
        _os_log_impl(&dword_261243000, v204, v205, "[SessionTask] within24h: %{BOOL,public}d", v206, 8u);
        MEMORY[0x266701350](v206, -1, -1);
      }

      v207 = v1[59];
      v208 = v1[60];
      v209 = v1[52];

      (*(v208 + 8))(v209, v207);
      v197 = v1[39];
      if (v197)
      {
        goto LABEL_69;
      }
    }

    v202 = 0;
LABEL_74:
    v210 = v130 & v171;
    v212 = v1[61];
    v211 = v1[62];
    v213 = v1[59];
    v214 = v1[51];
    sub_26125A870(v1[58], v214, &qword_27FE9F560, &qword_2613A3CB0);
    if (v212(v214, 1, v213) == 1)
    {
      sub_26124C718(v1[51], &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v215 = v1[51];
      v216 = sub_2613A122C();
      v217 = sub_2613A1D9C();
      if (os_log_type_enabled(v216, v217))
      {
        v218 = swift_slowAlloc();
        *v218 = 67240192;
        *(v218 + 4) = v202 & 1;
        _os_log_impl(&dword_261243000, v216, v217, "[SessionTask] sameProfile: %{BOOL,public}d", v218, 8u);
        MEMORY[0x266701350](v218, -1, -1);
      }

      v219 = v1[59];
      v220 = v1[60];
      v221 = v1[51];

      (*(v220 + 8))(v221, v219);
    }

    v222 = v210 & v202;
    v88 = v1[63];
    if ((v222 & 1) != 0 || !v1[39])
    {
      v225 = (v1[40] + OBJC_IVAR____TtC21ProximityReaderDaemon11SessionTask_cardReaderAdapter);
      v226 = v225[3];
      v227 = v225[4];
      __swift_project_boxed_opaque_existential_1(v225, v226);
      v228 = v48[6];
      v229 = v48[7];
      v289 = *(v227 + 40);

      v230 = v289(v228, v229, v226, v227);

      if (v88)
      {
        v231 = v1[66];
        v232 = v1[65];
        v233 = v1[64];
        v234 = v1[40];
        sub_261273F3C(v1[68], v1[67]);

        sub_261332448(v88, v283, 0, 0);

        swift_willThrow();

        goto LABEL_84;
      }

      v224 = v222 & v230;
      v223 = v230 & 1;
    }

    else
    {
      v223 = 0;
      v224 = 0;
    }

    v247 = v1[61];
    v246 = v1[62];
    v248 = v1[59];
    v249 = v1[50];
    sub_26125A870(v1[58], v249, &qword_27FE9F560, &qword_2613A3CB0);
    if (v247(v249, 1, v248) == 1)
    {
      sub_26124C718(v1[50], &qword_27FE9F560, &qword_2613A3CB0);
      if ((v224 & 1) == 0)
      {
LABEL_92:
        v250 = v1[40];
        v251 = swift_allocObject();
        v1[76] = v251;
        swift_weakInit();

        v252 = swift_task_alloc();
        v1[77] = v252;
        *v252 = v1;
        v252[1] = sub_2613312D4;
        v253 = v1[40];

        return sub_261331F0C(v253, v48, sub_261333F90, v251);
      }
    }

    else
    {
      v254 = v1[50];
      v255 = sub_2613A122C();
      v256 = sub_2613A1D9C();
      if (os_log_type_enabled(v255, v256))
      {
        v257 = swift_slowAlloc();
        *v257 = 67240192;
        *(v257 + 4) = v223;
        _os_log_impl(&dword_261243000, v255, v256, "[SessionTask] readerValid: %{BOOL,public}d", v257, 8u);
        MEMORY[0x266701350](v257, -1, -1);
      }

      v258 = v1[59];
      v259 = v1[60];
      v260 = v1[50];

      (*(v259 + 8))(v260, v258);
      if ((v224 & 1) == 0)
      {
        goto LABEL_92;
      }
    }

    v262 = v1[61];
    v261 = v1[62];
    v263 = v1[59];
    v264 = v1[49];
    sub_26125A870(v1[58], v264, &qword_27FE9F560, &qword_2613A3CB0);
    if (v262(v264, 1, v263) == 1)
    {
      sub_26124C718(v1[49], &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v265 = v1[49];
      v266 = sub_2613A122C();
      v267 = sub_2613A1D9C();
      if (os_log_type_enabled(v266, v267))
      {
        v268 = swift_slowAlloc();
        *v268 = 0;
        _os_log_impl(&dword_261243000, v266, v267, "[SessionTask] skipping applet install", v268, 2u);
        MEMORY[0x266701350](v268, -1, -1);
      }

      v269 = v1[59];
      v270 = v1[60];
      v271 = v1[49];

      (*(v270 + 8))(v271, v269);
    }

LABEL_34:
    v89 = v1[72];
    v91 = *(v89 + 48);
    v90 = *(v89 + 56);

    LOBYTE(v91) = sub_2612F68E0(v91, v90);

    if (v91)
    {
      v93 = v1[74];
      v94 = v1[72];
      v95 = v1[69];
      v96 = v1[40];
      v284 = (v1[73])(v92);
      v97 = (v96 + OBJC_IVAR____TtC21ProximityReaderDaemon11SessionTask_cardReaderAdapter);
      v98 = *(v96 + OBJC_IVAR____TtC21ProximityReaderDaemon11SessionTask_cardReaderAdapter + 24);
      v99 = v97[4];
      __swift_project_boxed_opaque_existential_1(v97, v98);
      v100 = *(v89 + 48);
      v101 = *(v89 + 56);
      v102 = *(v95 + 64);
      v103 = *(v95 + 72);
      v104 = *(v99 + 56);

      v104(v100, v101, 0, 0, v102, v103, v98, v99);
      if (v88)
      {
        v105 = v1[75];
        v106 = v1[72];
        v107 = v1[66];
        v108 = v1[65];
        v109 = v1[64];
        v110 = v1[40];
        sub_261273F3C(v1[68], v1[67]);

        sub_261332448(v88, v284, 0, 0);
        swift_willThrow();

LABEL_84:

        v2 = v274;
        goto LABEL_85;
      }
    }

    v135 = v1[75];
    v136 = v1[72];
    v137 = v1[69];
    v138 = v1[64];
    v139 = v1[36];
    v140 = *(v137 + 64);
    v141 = *(v137 + 72);

    v285 = *(v1 + 67);
    v288 = *(v1 + 65);
    sub_26125B1E4(v140, v141, v136);

    sub_26124C718(v274, &qword_27FE9F230, &qword_2613A3F10);
    v139->i64[0] = v136;
    v139->i64[1] = v135;
    v139[1] = vextq_s8(v285, v285, 8uLL);
    v139[2] = vextq_s8(v288, v288, 8uLL);
    v139[3].i64[0] = v138;
    v143 = v1[56];
    v142 = v1[57];
    v145 = v1[54];
    v144 = v1[55];
    v147 = v1[52];
    v146 = v1[53];
    v149 = v1[50];
    v148 = v1[51];
    v150 = v1;
    v153 = v1 + 48;
    v152 = v1[48];
    v151 = v153[1];
    v280 = v150[47];
    v285.i64[0] = v150[44];
    v288.i64[0] = v150[43];

    v154 = v150[1];
LABEL_86:

    return v154();
  }

  v6 = *(v0 + 544);
  v7 = *(v0 + 536);
  v8 = *(v0 + 528);
  v9 = *(v0 + 520);
  v10 = *(v0 + 512);
  v12 = *(v0 + 488);
  v11 = *(v0 + 496);
  v13 = v1[58];
  v14 = v1[59];
  v15 = v1[48];
  sub_261273F3C(v6, v7);
  sub_26125A870(v13, v15, &qword_27FE9F560, &qword_2613A3CB0);
  if (v12(v15, 1, v14) == 1)
  {
    sub_26124C718(v1[48], &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v1[26] = v3;
    v1[27] = v287;
    v1[24] = v4;
    v1[25] = v5;
    sub_2612DDE08(v2 + 112, v2 + 128);
    sub_2612DDE08(v2 + 96, v2 + 144);
    v21 = sub_2613A122C();
    v22 = v3;
    v23 = sub_2613A1D8C();
    sub_26130105C(v2 + 112);
    sub_26130105C(v2 + 96);
    v279 = v22;
    if (os_log_type_enabled(v21, v23))
    {
      v24 = v5;
      v25 = swift_slowAlloc();
      v26 = v1;
      v27 = swift_slowAlloc();
      v290 = v27;
      *v25 = 136315138;
      v26[19] = v282;
      v26[20] = v22;
      v26[21] = v287;
      v26[22] = v4;
      v26[23] = v24;
      sub_2612DDE08(v2 + 112, v2 + 160);
      sub_2612DDE08(v2 + 96, v2 + 176);
      v28 = sub_2613A195C();
      v30 = sub_26124C11C(v28, v29, &v290);

      *(v25 + 4) = v30;
      _os_log_impl(&dword_261243000, v21, v23, "[SessionTask] openSession API error: %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v27);
      v31 = v27;
      v1 = v26;
      MEMORY[0x266701350](v31, -1, -1);
      MEMORY[0x266701350](v25, -1, -1);
    }

    (*(v1[60] + 8))(v1[48], v1[59]);
    v3 = v279;
  }

  if (*(v1 + 149))
  {
    goto LABEL_10;
  }

  v39 = sub_2613A0E3C();
  v41 = v40;
  if (v39 == sub_2613A197C() && v41 == v42)
  {
  }

  else
  {
    v69 = sub_2613A241C();

    if ((v69 & 1) == 0)
    {
LABEL_10:
      v32 = v1[40];
      v33 = sub_2613335E0(v282, v3, v287, v1[37], v1[38]);
      *(v1 + 145) = v282;
      *(v1 + 146) = 4;
      sub_26129572C();
      if ((sub_2613A188C() & 1) == 0)
      {
        v34 = v2;
        v35 = v1[39];
        sub_26139F2CC();
        sub_2612C5960();
        v36 = swift_allocError();
        *v37 = v33;
        if (v35)
        {
          v38 = (*(*v1[39] + 376))(v33);
        }

        else
        {
          v132 = v33;
          v38 = 0;
        }

        v133 = v1[40];
        sub_261332448(v36, v38, v1[37], v1[38]);

        v2 = v34;
      }

      sub_26139F2CC();
      sub_2612C5960();
      swift_allocError();
      *v134 = v33;
      swift_willThrow();
      goto LABEL_85;
    }
  }

  v70 = swift_task_alloc();
  v1[79] = v70;
  *v70 = v1;
  v70[1] = sub_2613318E8;
  v71 = v1[39];
  v72 = v1[40];
  v73 = *(v1 + 148);
  v74 = v1[37];
  v75 = v1[38];
  v76 = v1[36];

  return sub_26132F2D8(v76, v74, v75, v73, 1, v71);
}

uint64_t sub_2613312D4()
{
  v2 = *v1;
  v3 = *(*v1 + 616);
  v9 = *v1;
  *(*v1 + 624) = v0;

  if (v0)
  {
    v4 = v2[66];
    v5 = v2[65];
    v6 = v2[64];
    sub_261273F3C(v2[68], v2[67]);
    v7 = sub_261331780;
  }

  else
  {
    v7 = sub_261331400;
  }

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_261331400()
{
  v1 = *(v0 + 608);
  v2 = *(v0 + 600);

  v3 = *(v0 + 624);
  v4 = *(v0 + 576);
  v6 = *(v4 + 48);
  v5 = *(v4 + 56);

  LOBYTE(v6) = sub_2612F68E0(v6, v5);

  if (v6)
  {
    v8 = *(v0 + 592);
    v9 = *(v0 + 576);
    v10 = *(v0 + 552);
    v11 = *(v0 + 320);
    v59 = (*(v0 + 584))(v7);
    v12 = (v11 + OBJC_IVAR____TtC21ProximityReaderDaemon11SessionTask_cardReaderAdapter);
    v13 = *(v11 + OBJC_IVAR____TtC21ProximityReaderDaemon11SessionTask_cardReaderAdapter + 24);
    v14 = v12[4];
    __swift_project_boxed_opaque_existential_1(v12, v13);
    v15 = *(v4 + 48);
    v16 = *(v4 + 56);
    v18 = *(v10 + 64);
    v17 = *(v10 + 72);
    v57 = *(v14 + 56);

    v57(v15, v16, 0, 0, v18, v17, v13, v14);
    if (v3)
    {
      v19 = *(v0 + 600);
      v20 = *(v0 + 576);
      v21 = *(v0 + 528);
      v22 = *(v0 + 520);
      v23 = *(v0 + 512);
      v24 = *(v0 + 320);
      sub_261273F3C(*(v0 + 544), *(v0 + 536));

      sub_261332448(v3, v59, 0, 0);
      swift_willThrow();

      sub_26124C718(v0 + 96, &qword_27FE9F230, &qword_2613A3F10);
      v26 = *(v0 + 448);
      v25 = *(v0 + 456);
      v28 = *(v0 + 432);
      v27 = *(v0 + 440);
      v30 = *(v0 + 416);
      v29 = *(v0 + 424);
      v32 = *(v0 + 400);
      v31 = *(v0 + 408);
      v33 = *(v0 + 384);
      v34 = *(v0 + 392);
      v54 = *(v0 + 376);
      v55 = *(v0 + 352);
      v60 = *(v0 + 344);

      v35 = *(v0 + 8);
      goto LABEL_6;
    }
  }

  v36 = *(v0 + 600);
  v37 = *(v0 + 576);
  v38 = *(v0 + 552);
  v39 = *(v0 + 512);
  v40 = *(v0 + 288);
  v41 = *(v38 + 64);
  v42 = *(v38 + 72);

  v58 = *(v0 + 536);
  v61 = *(v0 + 520);
  sub_26125B1E4(v41, v42, v37);

  sub_26124C718(v0 + 96, &qword_27FE9F230, &qword_2613A3F10);
  v40->i64[0] = v37;
  v40->i64[1] = v36;
  v40[1] = vextq_s8(v58, v58, 8uLL);
  v40[2] = vextq_s8(v61, v61, 8uLL);
  v40[3].i64[0] = v39;
  v44 = *(v0 + 448);
  v43 = *(v0 + 456);
  v46 = *(v0 + 432);
  v45 = *(v0 + 440);
  v48 = *(v0 + 416);
  v47 = *(v0 + 424);
  v50 = *(v0 + 400);
  v49 = *(v0 + 408);
  v52 = *(v0 + 384);
  v51 = *(v0 + 392);
  v56 = *(v0 + 376);
  v58.i64[0] = *(v0 + 352);
  v61.i64[0] = *(v0 + 344);

  v35 = *(v0 + 8);
LABEL_6:

  return v35();
}

uint64_t sub_261331780()
{
  v1 = *(v0 + 608);
  v2 = *(v0 + 576);
  v3 = *(v0 + 320);
  sub_261332448(*(v0 + 624), *(v0 + 600), 0, 0);
  swift_willThrow();

  sub_26124C718(v0 + 96, &qword_27FE9F230, &qword_2613A3F10);

  v5 = *(v0 + 448);
  v4 = *(v0 + 456);
  v7 = *(v0 + 432);
  v6 = *(v0 + 440);
  v9 = *(v0 + 416);
  v8 = *(v0 + 424);
  v11 = *(v0 + 400);
  v10 = *(v0 + 408);
  v12 = *(v0 + 384);
  v13 = *(v0 + 392);
  v16 = *(v0 + 376);
  v17 = *(v0 + 352);
  v18 = *(v0 + 344);
  v19 = *(v0 + 624);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_2613318E8()
{
  v2 = *(*v1 + 632);
  v5 = *v1;
  *(*v1 + 640) = v0;

  if (v0)
  {
    v3 = sub_261331B18;
  }

  else
  {
    v3 = sub_2613319FC;
  }

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_2613319FC()
{
  sub_26124C718((v0 + 12), &qword_27FE9F230, &qword_2613A3F10);
  v2 = v0[56];
  v1 = v0[57];
  v4 = v0[54];
  v3 = v0[55];
  v6 = v0[52];
  v5 = v0[53];
  v8 = v0[50];
  v7 = v0[51];
  v10 = v0[48];
  v9 = v0[49];
  v13 = v0[47];
  v14 = v0[44];
  v15 = v0[43];

  v11 = v0[1];

  return v11();
}

uint64_t sub_261331B18()
{
  sub_26124C718((v0 + 12), &qword_27FE9F230, &qword_2613A3F10);
  v2 = v0[56];
  v1 = v0[57];
  v4 = v0[54];
  v3 = v0[55];
  v6 = v0[52];
  v5 = v0[53];
  v8 = v0[50];
  v7 = v0[51];
  v9 = v0[48];
  v10 = v0[49];
  v13 = v0[47];
  v14 = v0[44];
  v15 = v0[43];
  v16 = v0[80];

  v11 = v0[1];

  return v11();
}

uint64_t sub_261331C38(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0688, &qword_2613ACB40);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v21 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA06A0, &unk_2613ACB58);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA06E0, &qword_2613ACCF8);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = v21 - v13;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v16 = OBJC_IVAR____TtC21ProximityReaderDaemon11SessionTask_progressContinuation;
    v17 = Strong;
    swift_beginAccess();
    sub_26125A870(v17 + v16, v10, &qword_27FEA06A0, &unk_2613ACB58);

    if (!(*(v3 + 48))(v10, 1, v2))
    {
      (*(v3 + 16))(v6, v10, v2);
      sub_26124C718(v10, &qword_27FEA06A0, &unk_2613ACB58);
      v21[1] = a1;
      sub_2613A1C2C();
      (*(v3 + 8))(v6, v2);
      v18 = 0;
      goto LABEL_6;
    }

    sub_26124C718(v10, &qword_27FEA06A0, &unk_2613ACB58);
  }

  v18 = 1;
LABEL_6:
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA06E8, &qword_2613ACD00);
  (*(*(v19 - 8) + 56))(v14, v18, 1, v19);
  return sub_26124C718(v14, &qword_27FEA06E0, &qword_2613ACCF8);
}

uint64_t sub_261331F0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_26139F0BC();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261331FD0);
}

void sub_261331FD0()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = *(v2 + OBJC_IVAR____TtC21ProximityReaderDaemon11SessionTask_cardReaderAdapter + 32);
  __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC21ProximityReaderDaemon11SessionTask_cardReaderAdapter), *(v2 + OBJC_IVAR____TtC21ProximityReaderDaemon11SessionTask_cardReaderAdapter + 24));
  v4 = *(v1 + 48);
  v5 = *(v1 + 56);
  v6 = *(v2 + 24);
  v7 = *(v6 + 32);
  v0[9] = *(v6 + 40);
  v8 = *(v3 + 64);

  v13 = v8 + *v8;
  v9 = v8[1];
  v10 = swift_task_alloc();
  v0[10] = v10;
  *v10 = v0;
  v10[1] = sub_261332150;
  v11 = v0[4];
  v12 = v0[5];

  __asm { BRAA            X8, X16 }
}

uint64_t sub_261332150(uint64_t a1, double a2)
{
  v6 = *v3;
  v7 = *(*v3 + 80);
  v8 = *v3;
  *(*v3 + 88) = v2;

  if (v2)
  {
    v9 = sub_2613323DC;
  }

  else
  {
    v10 = *(v6 + 72);

    *(v6 + 96) = a2;
    *(v6 + 104) = a1;
    v9 = sub_261332290;
  }

  return MEMORY[0x2822009F8](v9);
}

uint64_t sub_261332290()
{
  v1 = v0[12];
  v3 = *(v0 + 7);
  v2 = *(v0 + 8);
  v4 = *(v0 + 6);
  v5 = *(v0 + 3);
  (*(*v5 + 192))(*(v0 + 13));
  sub_26139F0AC();
  sub_26139F07C();
  v7 = v6;
  (*(v3 + 8))(v2, v4);
  v8 = (*(*v5 + 240))(v7 + 86400.0, 0);
  (*(*v5 + 216))(v8, v1);

  v9 = *(v0 + 1);

  return v9();
}

uint64_t sub_2613323DC()
{
  v2 = v0[8];
  v1 = v0[9];

  v3 = v0[1];
  v4 = v0[11];

  return v3();
}

uint64_t sub_261332448(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v51 - v11;
  *&v57[0] = a1;
  v13 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F650, &qword_2613A57C0);
  sub_26139F2CC();
  if (swift_dynamicCast())
  {
    v14 = v56[0];
    if (a2)
    {
      v15 = a2[6];
      v16 = a2[7];
      v17 = *(*a2 + 192);

      v19 = v17(v18);
    }

    else
    {
      if (!a4 || (v34 = sub_2612F6894(a3, a4), !v35))
      {
        v34 = sub_2613A0CFC();
      }

      v15 = v34;
      v16 = v35;
      v19 = sub_2613A0CFC();
    }

    v36 = v19;
    v37 = v20;
    v38 = *(v4 + 24);
    v39 = *(v38 + 64);
    v40 = *(v38 + 72);

    v41 = [v14 description];
    v52 = v14;
    v42 = v41;
    v43 = sub_2613A18CC();
    v45 = v44;

    sub_2612A77D4(v39, v40, v15, v16, v36, v37, v43, v45, v57);
    v54 = &type metadata for InternalSessionError;
    v55 = sub_2613248C8();
    v46 = swift_allocObject();
    *&v53 = v46;
    v47 = v57[1];
    v46[1] = v57[0];
    v46[2] = v47;
    v48 = v57[3];
    v46[3] = v57[2];
    v46[4] = v48;
    sub_2612B64A4(6, &v53, v56);
    v49 = *(v4 + OBJC_IVAR____TtC21ProximityReaderDaemon11SessionTask_cardReaderAdapter + 24);
    v50 = *(v4 + OBJC_IVAR____TtC21ProximityReaderDaemon11SessionTask_cardReaderAdapter + 32);
    __swift_project_boxed_opaque_existential_1((v4 + OBJC_IVAR____TtC21ProximityReaderDaemon11SessionTask_cardReaderAdapter), v49);
    (*(v50 + 120))(v56, v49, v50);

    return sub_2612A0E50(v56);
  }

  else
  {
    v21 = sub_26129B5FC();
    sub_26125A870(v21, v12, &qword_27FE9F560, &qword_2613A3CB0);
    v22 = sub_2613A124C();
    v23 = *(v22 - 8);
    if ((*(v23 + 48))(v12, 1, v22) == 1)
    {
      return sub_26124C718(v12, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v25 = a1;
      v26 = sub_2613A122C();
      v27 = sub_2613A1D8C();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        *&v57[0] = v29;
        *v28 = 136315138;
        v56[0] = a1;
        v30 = a1;
        v31 = sub_2613A195C();
        v33 = sub_26124C11C(v31, v32, v57);

        *(v28 + 4) = v33;
        _os_log_impl(&dword_261243000, v26, v27, "[SessionTask] could not parse session internal error: [ %s ]", v28, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v29);
        MEMORY[0x266701350](v29, -1, -1);
        MEMORY[0x266701350](v28, -1, -1);
      }

      return (*(v23 + 8))(v12, v22);
    }
  }
}

uint64_t sub_261332844(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v29 - v9;
  v11 = sub_2612F6894(a3, a4);
  if (v12)
  {
    v13 = v11;
    v14 = v12;
    v15 = *(v4 + 24);
    v16 = *(v15 + 64);
    v17 = *(v15 + 72);

    sub_2612B9300(v16, v17, v13, v14, v34);
    v31 = &type metadata for InvalidSessionToken;
    v32 = sub_26133358C();
    v18 = swift_allocObject();
    *&v30 = v18;
    v19 = v34[1];
    v18[1] = v34[0];
    v18[2] = v19;
    v18[3] = v34[2];
    sub_2612B64A4(3, &v30, v33);
    v20 = *(v4 + OBJC_IVAR____TtC21ProximityReaderDaemon11SessionTask_cardReaderAdapter + 24);
    v21 = *(v4 + OBJC_IVAR____TtC21ProximityReaderDaemon11SessionTask_cardReaderAdapter + 32);
    __swift_project_boxed_opaque_existential_1((v4 + OBJC_IVAR____TtC21ProximityReaderDaemon11SessionTask_cardReaderAdapter), v20);
    (*(v21 + 120))(v33, v20, v21);
    return sub_2612A0E50(v33);
  }

  else
  {
    v23 = sub_26129B5FC();
    sub_26125A870(v23, v10, &qword_27FE9F560, &qword_2613A3CB0);
    v24 = sub_2613A124C();
    v25 = *(v24 - 8);
    if ((*(v25 + 48))(v10, 1, v24) == 1)
    {
      return sub_26124C718(v10, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v26 = sub_2613A122C();
      v27 = sub_2613A1D8C();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&dword_261243000, v26, v27, "[SessionTask] failed to build invalidSessionToken monitor event, merchantId was not found.", v28, 2u);
        MEMORY[0x266701350](v28, -1, -1);
      }

      return (*(v25 + 8))(v10, v24);
    }
  }
}

uint64_t sub_261332ADC(void *a1)
{
  v2 = *(v1 + 24);
  v3 = *(v2 + 64);
  v4 = *(v2 + 72);
  v5 = a1[6];
  v6 = a1[7];
  v7 = *(*a1 + 192);

  v9 = v7(v8);
  sub_2612B695C(v3, v4, v5, v6, v9, v10, v20);
  v17 = &type metadata for SessionRefreshed;
  v18 = sub_261333F3C();
  v11 = swift_allocObject();
  *&v16 = v11;
  v12 = v20[1];
  v11[1] = v20[0];
  v11[2] = v12;
  v11[3] = v20[2];
  sub_2612B64A4(9, &v16, v19);
  v13 = *(v1 + OBJC_IVAR____TtC21ProximityReaderDaemon11SessionTask_cardReaderAdapter + 24);
  v14 = *(v1 + OBJC_IVAR____TtC21ProximityReaderDaemon11SessionTask_cardReaderAdapter + 32);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC21ProximityReaderDaemon11SessionTask_cardReaderAdapter), v13);
  (*(v14 + 120))(v19, v13, v14);
  return sub_2612A0E50(v19);
}

uint64_t sub_261332C10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_2612F6894(a3, a4);
  if (!v8)
  {
    v7 = sub_2613A0CFC();
  }

  v9 = v7;
  v10 = v8;
  v11 = *(v4 + 24);
  v12 = *(v11 + 64);
  v13 = *(v11 + 72);

  sub_2612C1170(v12, v13, v9, v10, a1, a2, v23);
  v20 = &type metadata for OpenSessionFailed;
  v21 = sub_261333538();
  v14 = swift_allocObject();
  *&v19 = v14;
  v15 = v23[1];
  v14[1] = v23[0];
  v14[2] = v15;
  v14[3] = v23[2];
  sub_2612B64A4(5, &v19, v22);
  v16 = *(v4 + OBJC_IVAR____TtC21ProximityReaderDaemon11SessionTask_cardReaderAdapter + 24);
  v17 = *(v4 + OBJC_IVAR____TtC21ProximityReaderDaemon11SessionTask_cardReaderAdapter + 32);
  __swift_project_boxed_opaque_existential_1((v4 + OBJC_IVAR____TtC21ProximityReaderDaemon11SessionTask_cardReaderAdapter), v16);
  (*(v17 + 120))(v22, v16, v17);
  return sub_2612A0E50(v22);
}

uint64_t sub_261332D38(void *a1)
{
  v2 = *(v1 + 24);
  v3 = *(v2 + 64);
  v4 = *(v2 + 72);
  v5 = a1[6];
  v6 = a1[7];
  v7 = *(*a1 + 192);

  v9 = v7(v8);
  sub_2612C1170(v3, v4, v5, v6, v9, v10, v20);
  v17 = &type metadata for SessionTokenExpired;
  v18 = sub_261333F98();
  v11 = swift_allocObject();
  *&v16 = v11;
  v12 = v20[1];
  v11[1] = v20[0];
  v11[2] = v12;
  v11[3] = v20[2];
  sub_2612B64A4(4, &v16, v19);
  v13 = *(v1 + OBJC_IVAR____TtC21ProximityReaderDaemon11SessionTask_cardReaderAdapter + 24);
  v14 = *(v1 + OBJC_IVAR____TtC21ProximityReaderDaemon11SessionTask_cardReaderAdapter + 32);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC21ProximityReaderDaemon11SessionTask_cardReaderAdapter), v13);
  (*(v14 + 120))(v19, v13, v14);
  return sub_2612A0E50(v19);
}

uint64_t sub_261332E6C()
{
  v1 = *(v0 + 3);

  v2 = OBJC_IVAR____TtC21ProximityReaderDaemon11SessionTask_sessionType;
  v3 = sub_26139FC1C();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = *&v0[OBJC_IVAR____TtC21ProximityReaderDaemon11SessionTask_analytics];

  __swift_destroy_boxed_opaque_existential_0Tm(&v0[OBJC_IVAR____TtC21ProximityReaderDaemon11SessionTask_cardReaderAdapter]);
  sub_26124C718(&v0[OBJC_IVAR____TtC21ProximityReaderDaemon11SessionTask_progressContinuation], &qword_27FEA06A0, &unk_2613ACB58);
  sub_26124C718(&v0[OBJC_IVAR____TtC21ProximityReaderDaemon11SessionTask_resultContinuation], &qword_27FEA06A8, &unk_2613ACB68);
  sub_2613331CC(*&v0[OBJC_IVAR____TtC21ProximityReaderDaemon11SessionTask_cachedResult], *&v0[OBJC_IVAR____TtC21ProximityReaderDaemon11SessionTask_cachedResult + 8], *&v0[OBJC_IVAR____TtC21ProximityReaderDaemon11SessionTask_cachedResult + 16], *&v0[OBJC_IVAR____TtC21ProximityReaderDaemon11SessionTask_cachedResult + 24], *&v0[OBJC_IVAR____TtC21ProximityReaderDaemon11SessionTask_cachedResult + 32], *&v0[OBJC_IVAR____TtC21ProximityReaderDaemon11SessionTask_cachedResult + 40], *&v0[OBJC_IVAR____TtC21ProximityReaderDaemon11SessionTask_cachedResult + 48], v0[OBJC_IVAR____TtC21ProximityReaderDaemon11SessionTask_cachedResult + 56]);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_261332F94()
{
  v2 = *(**v0 + 288);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_261262AA4;

  return v6();
}

uint64_t sub_2613330B0()
{
  v2 = *(**v0 + 280);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_261262AA4;

  return v6();
}

void sub_2613331CC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if (a8 != -1)
  {
    sub_2613331E4(a1, a2, a3, a4, a5, a6, a7, a8 & 1);
  }
}

void sub_2613331E4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if (a8)
  {
  }

  else
  {

    sub_261273F3C(a3, a4);
  }
}

uint64_t type metadata accessor for SessionTask()
{
  result = qword_27FEAE360;
  if (!qword_27FEAE360)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2613332B4()
{
  v0 = sub_26139FC1C();
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_261333428(319, &qword_27FEA06B8, &qword_27FEA0688, &qword_2613ACB40);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_261333428(319, &qword_27FEA06C0, &qword_27FEA0690, &qword_2613ACB48);
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_261333428(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_2613A1F8C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_21ProximityReaderDaemon18DeprecationWarningVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_261333494(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_2613334DC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_261333538()
{
  result = qword_27FEA06C8;
  if (!qword_27FEA06C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEA06C8);
  }

  return result;
}

unint64_t sub_26133358C()
{
  result = qword_27FEA06D0;
  if (!qword_27FEA06D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEA06D0);
  }

  return result;
}

uint64_t sub_2613335E0(unsigned __int8 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_26139FAAC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = v95 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 <= 2u)
  {
    if (!a1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F2E8, &unk_2613A43A0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_2613A4310;
      v16 = sub_26139F2CC();
      *(inited + 32) = sub_26139F29C();
      v17 = inited + 32;
      *(inited + 40) = v24;
      v19 = sub_261377F68();
      goto LABEL_11;
    }

    if (a1 == 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F2E8, &unk_2613A43A0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_2613A4310;
      v16 = sub_26139F2CC();
      *(inited + 32) = sub_26139F29C();
      v17 = inited + 32;
      *(inited + 40) = v18;
      v19 = sub_261377F74();
LABEL_11:
      v26 = *v19;
      v25 = v19[1];
      *(inited + 72) = MEMORY[0x277D837D0];
      *(inited + 48) = v26;
      *(inited + 56) = v25;

      sub_261259E78(inited);
      swift_setDeallocating();
      sub_26124C718(v17, &qword_27FE9F2F0, &qword_2613A4BD0);
      v27 = objc_allocWithZone(v16);
      return sub_26139F2DC();
    }

LABEL_12:
    v28 = objc_allocWithZone(sub_26139F2CC());
    return sub_26139F2DC();
  }

  if (a1 == 3)
  {
    goto LABEL_12;
  }

  if (a1 != 4)
  {
    v29 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F2E8, &unk_2613A43A0);
    v30 = swift_initStackObject();
    *(v30 + 16) = xmmword_2613A4310;
    v31 = sub_26139F2CC();
    *(v30 + 32) = sub_26139F28C();
    *(v30 + 40) = v32;
    (*(v10 + 104))(v14, *MEMORY[0x277D43838], v29);
    v33 = sub_26139FA9C();
    (*(v10 + 8))(v14, v29);
    *(v30 + 72) = MEMORY[0x277D83B88];
    *(v30 + 48) = v33;
    sub_261259E78(v30);
    swift_setDeallocating();
    sub_26124C718(v30 + 32, &qword_27FE9F2F0, &qword_2613A4BD0);
    v34 = objc_allocWithZone(v31);
    return sub_26139F2DC();
  }

  v20 = sub_2613A197C();
  v22 = v21;
  if (sub_2613A0DFC() == v20 && v23 == v22)
  {

LABEL_17:
    v37 = *(v5 + 3);
    v38 = *(v37 + 64);
    v39 = *(v37 + 72);

    v40 = sub_2612B8F3C(v38);
    v42 = v41;
    v44 = v43;
    v46 = v45;
    v97 = &type metadata for InvalidPartnerToken;
    v98 = sub_26132445C();
    v47 = swift_allocObject();
    *&v96 = v47;
    v47[2] = v40;
    v47[3] = v42;
    v47[4] = v44;
    v47[5] = v46;
    sub_2612B64A4(2, &v96, v99);
    v48 = *(v5 + OBJC_IVAR____TtC21ProximityReaderDaemon11SessionTask_cardReaderAdapter + 24);
    v49 = *(v5 + OBJC_IVAR____TtC21ProximityReaderDaemon11SessionTask_cardReaderAdapter + 32);
    __swift_project_boxed_opaque_existential_1((v5 + OBJC_IVAR____TtC21ProximityReaderDaemon11SessionTask_cardReaderAdapter), v48);
    (*(v49 + 120))(v99, v48, v49);
    v50 = objc_allocWithZone(sub_26139F2CC());
    v51 = sub_26139F2DC();
    sub_2612A0E50(v99);
    v52 = v20;
    v53 = v22;
    v54 = a4;
    v55 = a5;
LABEL_18:
    sub_261332C10(v52, v53, v54, v55);

    return v51;
  }

  v36 = sub_2613A241C();

  if (v36)
  {
    goto LABEL_17;
  }

  if (sub_2613A0E7C() == v20 && v56 == v22)
  {
    goto LABEL_32;
  }

  v57 = sub_2613A241C();

  if ((v57 & 1) == 0)
  {
    if (sub_2613A0E6C() == v20 && v59 == v22)
    {
      goto LABEL_32;
    }

    v60 = sub_2613A241C();

    if (v60)
    {
      goto LABEL_23;
    }

    if (sub_2613A0E5C() == v20 && v61 == v22)
    {
      goto LABEL_32;
    }

    v62 = sub_2613A241C();

    if (v62)
    {
      goto LABEL_23;
    }

    if (sub_2613A0E1C() == v20 && v63 == v22)
    {
LABEL_32:

      goto LABEL_23;
    }

    v64 = sub_2613A241C();

    if (v64)
    {
      goto LABEL_23;
    }

    v65 = sub_2613A0E4C();
    v95[1] = v5;
    if (v65 == v20 && v66 == v22)
    {
    }

    else
    {
      v67 = sub_2613A241C();

      if ((v67 & 1) == 0)
      {
        if (*(sub_2613A0E2C() + 16))
        {
          sub_26124E5EC(v20, v22);
          v78 = v77;

          if (v78)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F2E8, &unk_2613A43A0);
            v79 = swift_initStackObject();
            *(v79 + 16) = xmmword_2613A4310;
            v95[0] = sub_26139F2CC();
            *(v79 + 32) = sub_26139F27C();
            *(v79 + 40) = v80;
            v81 = sub_2613A0E2C();
            *(v79 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9FBA0, &qword_2613A9B30);
            if (*(v81 + 16) && (v82 = sub_26124E5EC(v20, v22), (v83 & 1) != 0))
            {
              v84 = (*(v81 + 56) + 16 * v82);
              v85 = *v84;
              v86 = v84[1];
            }

            else
            {
              v85 = 0;
              v86 = 0;
            }

            *(v79 + 48) = v85;
            *(v79 + 56) = v86;
            sub_261259E78(v79);
            swift_setDeallocating();
            sub_26124C718(v79 + 32, &qword_27FE9F2F0, &qword_2613A4BD0);
            v94 = objc_allocWithZone(v95[0]);
            goto LABEL_42;
          }
        }

        else
        {
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F2E8, &unk_2613A43A0);
        v87 = swift_initStackObject();
        *(v87 + 16) = xmmword_2613A4310;
        v88 = sub_26139F2CC();
        *(v87 + 32) = sub_26139F29C();
        *(v87 + 40) = v89;
        v90 = sub_261377F80();
        v92 = *v90;
        v91 = v90[1];
        *(v87 + 72) = MEMORY[0x277D837D0];
        *(v87 + 48) = v92;
        *(v87 + 56) = v91;

        sub_261259E78(v87);
        swift_setDeallocating();
        sub_26124C718(v87 + 32, &qword_27FE9F2F0, &qword_2613A4BD0);
        v93 = objc_allocWithZone(v88);
LABEL_42:
        v51 = sub_26139F2DC();
        v52 = v20;
        v53 = v22;
        v54 = a4;
        v55 = a5;
        goto LABEL_18;
      }
    }

    v68 = sub_261290BB0(*(*(v5 + 3) + 96), 12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F2E8, &unk_2613A43A0);
    v69 = swift_initStackObject();
    *(v69 + 16) = xmmword_2613A4310;
    if (v68)
    {
      v70 = sub_26139F2CC();
      *(v69 + 32) = sub_26139F27C();
      v71 = v69 + 32;
      *(v69 + 40) = v72;
      v73 = sub_2613A0F4C();
    }

    else
    {
      v70 = sub_26139F2CC();
      *(v69 + 32) = sub_26139F27C();
      v71 = v69 + 32;
      *(v69 + 40) = v75;
      v73 = sub_2613A0F5C();
    }

    *(v69 + 72) = MEMORY[0x277D837D0];
    *(v69 + 48) = v73;
    *(v69 + 56) = v74;
    sub_261259E78(v69);
    swift_setDeallocating();
    sub_26124C718(v71, &qword_27FE9F2F0, &qword_2613A4BD0);
    v76 = objc_allocWithZone(v70);
    goto LABEL_42;
  }

LABEL_23:
  objc_allocWithZone(sub_26139F2CC());
  v58 = sub_26139F2DC();
  sub_261332C10(v20, v22, a4, a5);

  return v58;
}

unint64_t sub_261333F3C()
{
  result = qword_27FEA06D8;
  if (!qword_27FEA06D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEA06D8);
  }

  return result;
}

unint64_t sub_261333F98()
{
  result = qword_27FEA06F0;
  if (!qword_27FEA06F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEA06F0);
  }

  return result;
}

void *sub_26133403C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v20 - v9;
  if (a2)
  {
    v3[7] = a1;
    v3[8] = a2;
    v11 = *(**sub_2612C11DC() + 112);

    v11(v21, v12);

    sub_26124A200(v21, (v3 + 2));
  }

  else
  {
    v13 = sub_26129B5FC();
    sub_26125A870(v13, v10, &qword_27FE9F560, &qword_2613A3CB0);
    v14 = sub_2613A124C();
    v15 = *(v14 - 8);
    if ((*(v15 + 48))(v10, 1, v14) == 1)
    {
      sub_26124C718(v10, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v16 = sub_2613A122C();
      v17 = sub_2613A1D8C();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&dword_261243000, v16, v17, "Device ID could not be retrieved", v18, 2u);
        MEMORY[0x266701350](v18, -1, -1);
      }

      (*(v15 + 8))(v10, v14);
    }

    swift_deallocPartialClassInstance();
    return 0;
  }

  return v3;
}

uint64_t sub_261334284(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();
  v2[5] = swift_task_alloc();
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261334338);
}

uint64_t sub_261334338()
{
  v36 = v0;
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  sub_2613A121C();
  v3 = *v2;
  *(v0 + 56) = *v2;
  v4 = *(v2 + 8);
  *(v0 + 64) = v4;
  v5 = *(v1 + 56);
  v6 = *(v1 + 64);
  v7 = sub_2613A10DC();
  v9 = v8;
  *(v0 + 72) = v7;
  *(v0 + 80) = v8;
  v10 = *(v2 + 16);
  *(v0 + 88) = *(v2 + 24);
  v34 = sub_2613A10CC();
  v12 = v11;
  *(v0 + 96) = v11;
  v13 = *(v2 + 32);
  *(v0 + 136) = v13;
  if ((v13 & 1) == 0)
  {
    sub_26125B3FC(v34, v11);
    type metadata accessor for StoreAndForwardManager();
    sub_261272A54(v7, v9);
  }

  v14 = *sub_2612A0F20();

  v15 = sub_2612A0F70();

  if (v15)
  {
    type metadata accessor for StoreAndForwardManager();
    v16 = sub_261269430();
    *(v0 + 104) = v16;
    v22 = v16;
    v23 = swift_task_alloc();
    *(v0 + 112) = v23;
    *v23 = v0;
    v23[1] = sub_261334720;
    v24 = *(v0 + 24);

    return sub_261335200(v7, v9, v22, v34, v12, v3, v4);
  }

  else
  {

    if ((v13 & 1) == 0)
    {
      v17 = *(v0 + 40);
      v18 = *sub_2612F9F2C();

      sub_2612FB2B4();

      v19 = sub_26129B5FC();
      sub_26125A870(v19, v17, &qword_27FE9F560, &qword_2613A3CB0);
      v20 = sub_2613A124C();
      v21 = *(v20 - 8);
      if ((*(v21 + 48))(v17, 1, v20) == 1)
      {
        sub_26124C718(*(v0 + 40), &qword_27FE9F560, &qword_2613A3CB0);
      }

      else
      {

        v26 = sub_2613A122C();
        v27 = sub_2613A1D9C();

        if (os_log_type_enabled(v26, v27))
        {
          v28 = swift_slowAlloc();
          v29 = swift_slowAlloc();
          v35 = v29;
          *v28 = 136315138;
          *(v28 + 4) = sub_26124C11C(v3, v4, &v35);
          _os_log_impl(&dword_261243000, v26, v27, "Deleted partner app %s", v28, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v29);
          MEMORY[0x266701350](v29, -1, -1);
          MEMORY[0x266701350](v28, -1, -1);
        }

        (*(v21 + 8))(*(v0 + 40), v20);
      }
    }

    v31 = *(v0 + 40);
    v30 = *(v0 + 48);
    v32 = *(v0 + 32);

    v33 = *(v0 + 8);

    return v33();
  }
}

uint64_t sub_261334720()
{
  v1 = *(*v0 + 112);
  v2 = *(*v0 + 96);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_261334838);
}

uint64_t sub_261334838()
{
  if (*(v0 + 136))
  {
    v1 = *(v0 + 104);
    v2 = *(v0 + 80);

    v4 = *(v0 + 40);
    v3 = *(v0 + 48);
    v5 = *(v0 + 32);

    v6 = *(v0 + 8);

    return v6();
  }

  else
  {
    v8 = *(v0 + 80);
    v9 = swift_task_alloc();
    *(v0 + 120) = v9;
    *v9 = v0;
    v9[1] = sub_261334944;
    v10 = *(v0 + 104);
    v11 = *(v0 + 72);

    return sub_2612719A8(v11, v8);
  }
}

uint64_t sub_261334944(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 120);
  v6 = *v2;
  *(*v2 + 128) = v1;

  if (v1)
  {
    v7 = sub_261334CF8;
  }

  else
  {
    v8 = *(v4 + 80);

    *(v4 + 137) = a1 & 1;
    v7 = sub_261334A78;
  }

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_261334A78()
{
  v28 = v0;
  if (*(v0 + 137))
  {
    v1 = *(v0 + 104);
  }

  else
  {
    v2 = *(v0 + 56);
    v3 = *(v0 + 64);
    v4 = *(v0 + 48);
    v5 = *sub_2612F9F2C();

    sub_2612FB2B4();

    v6 = sub_26129B5FC();
    sub_26125A870(v6, v4, &qword_27FE9F560, &qword_2613A3CB0);
    v7 = sub_2613A124C();
    v8 = *(v7 - 8);
    if ((*(v8 + 48))(v4, 1, v7) == 1)
    {
      v9 = *(v0 + 104);
      v10 = *(v0 + 48);

      sub_26124C718(v10, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v11 = *(v0 + 88);
      v12 = *(v0 + 64);
      v13 = *(v0 + 48);

      v14 = sub_2613A122C();
      v15 = sub_2613A1D9C();

      v16 = os_log_type_enabled(v14, v15);
      v17 = *(v0 + 104);
      if (v16)
      {
        v19 = *(v0 + 56);
        v18 = *(v0 + 64);
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v27 = v21;
        *v20 = 136315138;
        *(v20 + 4) = sub_26124C11C(v19, v18, &v27);
        _os_log_impl(&dword_261243000, v14, v15, "Deleted partner app %s", v20, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v21);
        MEMORY[0x266701350](v21, -1, -1);
        MEMORY[0x266701350](v20, -1, -1);
      }

      (*(v8 + 8))(*(v0 + 48), v7);
    }
  }

  v23 = *(v0 + 40);
  v22 = *(v0 + 48);
  v24 = *(v0 + 32);

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_261334CF8()
{
  v1 = v0[10];
  v2 = v0[4];

  v3 = sub_26129B5FC();
  sub_26125A870(v3, v2, &qword_27FE9F560, &qword_2613A3CB0);
  v4 = sub_2613A124C();
  v5 = *(v4 - 8);
  v6 = (*(v5 + 48))(v2, 1, v4);
  v7 = v0[16];
  if (v6 == 1)
  {
    v8 = v0[13];
    v9 = v0[4];

    sub_26124C718(v9, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v10 = v0[4];
    v11 = v7;
    v12 = sub_2613A122C();
    v13 = sub_2613A1D8C();

    v14 = os_log_type_enabled(v12, v13);
    v15 = v0[16];
    v16 = v0[13];
    if (v14)
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      v19 = v15;
      v20 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 4) = v20;
      *v18 = v20;
      _os_log_impl(&dword_261243000, v12, v13, "Could not evaluate if there are SAF transactions during cleanup: [%@]", v17, 0xCu);
      sub_26124C718(v18, &qword_27FEA0410, &qword_2613AA780);
      MEMORY[0x266701350](v18, -1, -1);
      MEMORY[0x266701350](v17, -1, -1);
    }

    else
    {
      v21 = v0[13];
    }

    (*(v5 + 8))(v0[4], v4);
  }

  v23 = v0[5];
  v22 = v0[6];
  v24 = v0[4];

  v25 = v0[1];

  return v25();
}

uint64_t sub_261334F5C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v11 - v2;
  v4 = sub_26129B5FC();
  sub_26125A870(v4, v3, &qword_27FE9F560, &qword_2613A3CB0);
  v5 = sub_2613A124C();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v3, 1, v5) == 1)
  {
    sub_26124C718(v3, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v7 = sub_2613A122C();
    v8 = sub_2613A1D9C();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_261243000, v7, v8, "No more apps using TTP, deleting all contents", v9, 2u);
      MEMORY[0x266701350](v9, -1, -1);
    }

    (*(v6 + 8))(v3, v5);
  }

  sub_2613367C8();
  type metadata accessor for SessionManager();
  sub_2612F8AD0(sub_261253D6C, 0);
  return sub_261337248();
}

uint64_t sub_261335120()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  v1 = *(v0 + 64);

  return swift_deallocClassInstance();
}

uint64_t sub_261335160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = (*a4 + 168) & 0xFFFFFFFFFFFFLL | 0x4FDC000000000000;
  v4[3] = *(*a4 + 168);
  v4[4] = v5;
  return MEMORY[0x2822009F8](sub_26133519C);
}

uint64_t sub_26133519C()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  (*(v0 + 24))();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_261335200(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[8] = a7;
  v8[9] = v7;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F580, &qword_2613A5480) - 8) + 64) + 15;
  v8[10] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0) - 8) + 64) + 15;
  v8[11] = swift_task_alloc();
  v8[12] = swift_task_alloc();
  v8[13] = swift_task_alloc();
  v8[14] = swift_task_alloc();
  v8[15] = swift_task_alloc();
  v8[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26133531C);
}

uint64_t sub_26133531C()
{
  *(v0 + 248) = sub_2612FF320();
  *(v0 + 136) = v1;
  v2 = sub_26128E1F4();
  v3 = *v2;
  *(v0 + 144) = *v2;
  v4 = *(*v3 + 160);

  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 152) = v6;
  *v6 = v0;
  v6[1] = sub_261335454;

  return v8();
}

uint64_t sub_261335454()
{
  v1 = *(*v0 + 152);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_261335550);
}

uint64_t sub_261335550()
{
  v1 = *(v0 + 128);
  v2 = sub_26129B5FC();
  *(v0 + 160) = v2;
  sub_26125A870(v2, v1, &qword_27FE9F560, &qword_2613A3CB0);
  v3 = sub_2613A124C();
  *(v0 + 168) = v3;
  v4 = *(v3 - 8);
  *(v0 + 176) = v4;
  v5 = *(v4 + 48);
  *(v0 + 184) = v5;
  *(v0 + 192) = (v4 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v5(v1, 1, v3) == 1)
  {
    sub_26124C718(*(v0 + 128), &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v6 = *(v0 + 128);
    v7 = sub_2613A122C();
    v8 = sub_2613A1D9C();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_261243000, v7, v8, "Deleting expired transactions", v9, 2u);
      MEMORY[0x266701350](v9, -1, -1);
    }

    v10 = *(v0 + 128);

    (*(v4 + 8))(v10, v3);
  }

  v11 = *(v0 + 72);
  v12 = swift_task_alloc();
  *(v0 + 200) = v12;
  *v12 = v0;
  v12[1] = sub_261335754;
  v13 = *(v0 + 136);
  v14 = *(v0 + 248);
  v15 = *(v0 + 56);
  v16 = *(v0 + 64);
  v17 = *(v0 + 40);
  v18 = *(v0 + 48);
  v19 = *(v0 + 24);
  v20 = *(v0 + 32);
  v21 = *(v0 + 16);

  return sub_26126ED54(v21, v19, v14, v15, v16, v17, v18, v11 + 16);
}

uint64_t sub_261335754()
{
  v2 = *(*v1 + 200);
  v5 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    v3 = sub_261335EFC;
  }

  else
  {
    v3 = sub_261335868;
  }

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_261335868()
{
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[21];
  v4 = v0[15];
  sub_26125A870(v0[20], v4, &qword_27FE9F560, &qword_2613A3CB0);
  if (v2(v4, 1, v3) == 1)
  {
    sub_26124C718(v0[15], &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v5 = v0[15];
    v6 = sub_2613A122C();
    v7 = sub_2613A1D9C();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_261243000, v6, v7, "Checking if there are empty batches", v8, 2u);
      MEMORY[0x266701350](v8, -1, -1);
    }

    v9 = v0[21];
    v10 = v0[22];
    v11 = v0[15];

    (*(v10 + 8))(v11, v9);
  }

  v12 = swift_task_alloc();
  v0[27] = v12;
  *v12 = v0;
  v12[1] = sub_2613359F8;
  v13 = v0[3];
  v14 = v0[4];
  v15 = v0[2];

  return sub_26126FA18(v15, v13);
}

uint64_t sub_2613359F8()
{
  v2 = *(*v1 + 216);
  v5 = *v1;
  *(*v1 + 224) = v0;

  if (v0)
  {
    v3 = sub_261336204;
  }

  else
  {
    v3 = sub_261335B0C;
  }

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_261335B0C()
{
  v2 = *(v0 + 184);
  v1 = *(v0 + 192);
  v3 = *(v0 + 168);
  v4 = *(v0 + 112);
  sub_26125A870(*(v0 + 160), v4, &qword_27FE9F560, &qword_2613A3CB0);
  if (v2(v4, 1, v3) == 1)
  {
    sub_26124C718(*(v0 + 112), &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v5 = *(v0 + 112);
    v6 = sub_2613A122C();
    v7 = sub_2613A1D9C();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_261243000, v6, v7, "Checking invalid transactions timestamp", v8, 2u);
      MEMORY[0x266701350](v8, -1, -1);
    }

    v9 = *(v0 + 168);
    v10 = *(v0 + 176);
    v11 = *(v0 + 112);

    (*(v10 + 8))(v11, v9);
  }

  v12 = swift_task_alloc();
  *(v0 + 232) = v12;
  *v12 = v0;
  v12[1] = sub_261335CA4;
  v13 = *(v0 + 136);
  v14 = *(v0 + 248);
  v15 = *(v0 + 24);
  v16 = *(v0 + 32);
  v17 = *(v0 + 16);

  return sub_261270B9C(v17, v15, v14, v13);
}

uint64_t sub_261335CA4()
{
  v2 = *(*v1 + 232);
  v5 = *v1;
  *(*v1 + 240) = v0;

  if (v0)
  {
    v3 = sub_261336514;
  }

  else
  {
    v3 = sub_261335DB8;
  }

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_261335DB8()
{
  v1 = v0[18];
  v2 = v0[15];
  v3 = v0[16];
  v4 = v0[13];
  v5 = v0[14];
  v6 = v0[11];
  v7 = v0[12];
  v8 = v0[10];
  v9 = sub_2613A1C1C();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v1;
  sub_261266800(0, 0, v8, &unk_2613ACD58, v10);

  v11 = v0[1];

  return v11();
}

uint64_t sub_261335EFC()
{
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[21];
  v4 = v0[13];
  sub_26125A870(v0[20], v4, &qword_27FE9F560, &qword_2613A3CB0);
  v5 = v2(v4, 1, v3);
  v6 = v0[26];
  v7 = v0[13];
  if (v5 == 1)
  {

    sub_26124C718(v7, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v8 = v6;
    v9 = sub_2613A122C();
    v10 = sub_2613A1D8C();

    v11 = os_log_type_enabled(v9, v10);
    v12 = v0[26];
    if (v11)
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      v15 = v12;
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 4) = v16;
      *v14 = v16;
      _os_log_impl(&dword_261243000, v9, v10, "Error trying to delete expired transactions: [%@]", v13, 0xCu);
      sub_26124C718(v14, &qword_27FEA0410, &qword_2613AA780);
      MEMORY[0x266701350](v14, -1, -1);
      MEMORY[0x266701350](v13, -1, -1);
    }

    else
    {
    }

    (*(v0[22] + 8))(v0[13], v0[21]);
  }

  v18 = v0[23];
  v17 = v0[24];
  v19 = v0[21];
  v20 = v0[15];
  sub_26125A870(v0[20], v20, &qword_27FE9F560, &qword_2613A3CB0);
  if (v18(v20, 1, v19) == 1)
  {
    sub_26124C718(v0[15], &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v21 = v0[15];
    v22 = sub_2613A122C();
    v23 = sub_2613A1D9C();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_261243000, v22, v23, "Checking if there are empty batches", v24, 2u);
      MEMORY[0x266701350](v24, -1, -1);
    }

    v25 = v0[21];
    v26 = v0[22];
    v27 = v0[15];

    (*(v26 + 8))(v27, v25);
  }

  v28 = swift_task_alloc();
  v0[27] = v28;
  *v28 = v0;
  v28[1] = sub_2613359F8;
  v29 = v0[3];
  v30 = v0[4];
  v31 = v0[2];

  return sub_26126FA18(v31, v29);
}

uint64_t sub_261336204()
{
  v2 = *(v0 + 184);
  v1 = *(v0 + 192);
  v3 = *(v0 + 168);
  v4 = *(v0 + 96);
  sub_26125A870(*(v0 + 160), v4, &qword_27FE9F560, &qword_2613A3CB0);
  v5 = v2(v4, 1, v3);
  v6 = *(v0 + 224);
  v7 = *(v0 + 96);
  if (v5 == 1)
  {

    sub_26124C718(v7, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v8 = v6;
    v9 = sub_2613A122C();
    v10 = sub_2613A1D8C();

    v11 = os_log_type_enabled(v9, v10);
    v12 = *(v0 + 224);
    if (v11)
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      v15 = v12;
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 4) = v16;
      *v14 = v16;
      _os_log_impl(&dword_261243000, v9, v10, "Error cleaning up empty batch: [%@]", v13, 0xCu);
      sub_26124C718(v14, &qword_27FEA0410, &qword_2613AA780);
      MEMORY[0x266701350](v14, -1, -1);
      MEMORY[0x266701350](v13, -1, -1);
    }

    else
    {
    }

    (*(*(v0 + 176) + 8))(*(v0 + 96), *(v0 + 168));
  }

  v18 = *(v0 + 184);
  v17 = *(v0 + 192);
  v19 = *(v0 + 168);
  v20 = *(v0 + 112);
  sub_26125A870(*(v0 + 160), v20, &qword_27FE9F560, &qword_2613A3CB0);
  if (v18(v20, 1, v19) == 1)
  {
    sub_26124C718(*(v0 + 112), &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v21 = *(v0 + 112);
    v22 = sub_2613A122C();
    v23 = sub_2613A1D9C();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_261243000, v22, v23, "Checking invalid transactions timestamp", v24, 2u);
      MEMORY[0x266701350](v24, -1, -1);
    }

    v25 = *(v0 + 168);
    v26 = *(v0 + 176);
    v27 = *(v0 + 112);

    (*(v26 + 8))(v27, v25);
  }

  v28 = swift_task_alloc();
  *(v0 + 232) = v28;
  *v28 = v0;
  v28[1] = sub_261335CA4;
  v29 = *(v0 + 136);
  v30 = *(v0 + 248);
  v31 = *(v0 + 24);
  v32 = *(v0 + 32);
  v33 = *(v0 + 16);

  return sub_261270B9C(v33, v31, v30, v29);
}

uint64_t sub_261336514()
{
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[21];
  v4 = v0[11];
  sub_26125A870(v0[20], v4, &qword_27FE9F560, &qword_2613A3CB0);
  v5 = v2(v4, 1, v3);
  v6 = v0[30];
  v7 = v0[11];
  if (v5 == 1)
  {

    sub_26124C718(v7, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v8 = v6;
    v9 = sub_2613A122C();
    v10 = sub_2613A1D8C();

    v11 = os_log_type_enabled(v9, v10);
    v12 = v0[30];
    if (v11)
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      v15 = v12;
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 4) = v16;
      *v14 = v16;
      _os_log_impl(&dword_261243000, v9, v10, "Error updating transactions timestamp: [%@]", v13, 0xCu);
      sub_26124C718(v14, &qword_27FEA0410, &qword_2613AA780);
      MEMORY[0x266701350](v14, -1, -1);
      MEMORY[0x266701350](v13, -1, -1);
    }

    else
    {
    }

    (*(v0[22] + 8))(v0[11], v0[21]);
  }

  v17 = v0[18];
  v18 = v0[15];
  v19 = v0[16];
  v20 = v0[13];
  v21 = v0[14];
  v22 = v0[11];
  v23 = v0[12];
  v24 = v0[10];
  v25 = sub_2613A1C1C();
  (*(*(v25 - 8) + 56))(v24, 1, 1, v25);
  v26 = swift_allocObject();
  v26[2] = 0;
  v26[3] = 0;
  v26[4] = v17;
  sub_261266800(0, 0, v24, &unk_2613ACD58, v26);

  v27 = v0[1];

  return v27();
}

uint64_t sub_2613367C8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v1 = *(*(v0 - 8) + 64);
  v2 = MEMORY[0x28223BE20](v0 - 8);
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v22[-v4];
  MEMORY[0x28223BE20](v3);
  v7 = &v22[-v6];
  v8 = *sub_2612A0F20();

  v9 = sub_2612A0F70();

  v10 = sub_26129B5FC();
  if (v9)
  {
    sub_26125A870(v10, v7, &qword_27FE9F560, &qword_2613A3CB0);
    v11 = sub_2613A124C();
    v12 = *(v11 - 8);
    if ((*(v12 + 48))(v7, 1, v11) == 1)
    {
      sub_26124C718(v7, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v15 = sub_2613A122C();
      v16 = sub_2613A1D9C();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&dword_261243000, v15, v16, "Deleting all remaining data stored in SAF database", v17, 2u);
        MEMORY[0x266701350](v17, -1, -1);
      }

      (*(v12 + 8))(v7, v11);
    }

    type metadata accessor for StoreAndForwardManager();
    sub_261269430();
    sub_261271E14();
  }

  else
  {
    sub_26125A870(v10, v5, &qword_27FE9F560, &qword_2613A3CB0);
    v13 = sub_2613A124C();
    v14 = *(v13 - 8);
    if ((*(v14 + 48))(v5, 1, v13) == 1)
    {
      return sub_26124C718(v5, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v19 = sub_2613A122C();
      v20 = sub_2613A1D9C();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&dword_261243000, v19, v20, "SAF database is not present, no need to reset it", v21, 2u);
        MEMORY[0x266701350](v21, -1, -1);
      }

      return (*(v14 + 8))(v5, v13);
    }
  }
}

void sub_261336C88(void *a1, uint64_t a2)
{
  v57[1] = *MEMORY[0x277D85DE8];
  v4 = sub_26139EF7C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v48 - v14;
  sub_26139EF4C();
  v16 = sub_2613A189C();

  v17 = [a1 fileExistsAtPath_];

  if (!v17)
  {
LABEL_18:
    v47 = *MEMORY[0x277D85DE8];
    return;
  }

  v54 = sub_26129B5FC();
  sub_26125A870(v54, v15, &qword_27FE9F560, &qword_2613A3CB0);
  v18 = sub_2613A124C();
  v56 = *(v18 - 8);
  v53 = *(v56 + 48);
  v19 = v53(v15, 1, v18);
  v55 = v13;
  if (v19 == 1)
  {
    sub_26124C718(v15, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v52 = v18;
    (*(v5 + 16))(v8, a2, v4);
    v20 = sub_2613A122C();
    v21 = sub_2613A1D9C();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v49 = v22;
      v51 = swift_slowAlloc();
      v57[0] = v51;
      *v22 = 136315138;
      v23 = sub_26139EEDC();
      v50 = v21;
      v25 = v24;
      (*(v5 + 8))(v8, v4);
      v26 = sub_26124C11C(v23, v25, v57);

      v27 = v49;
      *(v49 + 1) = v26;
      _os_log_impl(&dword_261243000, v20, v50, "Deleting folder: %s", v27, 0xCu);
      v28 = v51;
      __swift_destroy_boxed_opaque_existential_0Tm(v51);
      MEMORY[0x266701350](v28, -1, -1);
      MEMORY[0x266701350](v27, -1, -1);
    }

    else
    {

      (*(v5 + 8))(v8, v4);
    }

    v18 = v52;
    (*(v56 + 8))(v15, v52);
  }

  v29 = sub_26139EEFC();
  v57[0] = 0;
  v30 = [a1 removeItemAtURL:v29 error:v57];

  v31 = v57[0];
  if (!v30)
  {
    v52 = v57[0];
    v34 = v57[0];
    v35 = sub_26139EE7C();

    swift_willThrow();
    v36 = v55;
    sub_26125A870(v54, v55, &qword_27FE9F560, &qword_2613A3CB0);
    if (v53(v36, 1, v18) == 1)
    {

      sub_26124C718(v36, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v37 = v35;
      v38 = sub_2613A122C();
      v39 = sub_2613A1D8C();

      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v41 = v18;
        v42 = swift_slowAlloc();
        *v40 = 138412290;
        v43 = v35;
        v44 = _swift_stdlib_bridgeErrorToNSError();
        *(v40 + 4) = v44;
        *v42 = v44;
        _os_log_impl(&dword_261243000, v38, v39, "Error deleting folder: [%@]", v40, 0xCu);
        sub_26124C718(v42, &qword_27FEA0410, &qword_2613AA780);
        v45 = v42;
        v18 = v41;
        MEMORY[0x266701350](v45, -1, -1);
        v46 = v40;
        v36 = v55;
        MEMORY[0x266701350](v46, -1, -1);
      }

      else
      {
      }

      (*(v56 + 8))(v36, v18);
    }

    goto LABEL_18;
  }

  v32 = *MEMORY[0x277D85DE8];

  v33 = v31;
}

uint64_t sub_261337248()
{
  v0 = sub_26139EF7C();
  v1 = *(v0 - 8);
  v2 = v1[8];
  MEMORY[0x28223BE20](v0);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v21 - v7;
  v9 = sub_26129B5FC();
  sub_26125A870(v9, v8, &qword_27FE9F560, &qword_2613A3CB0);
  v10 = sub_2613A124C();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) == 1)
  {
    sub_26124C718(v8, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v12 = sub_2613A122C();
    v13 = sub_2613A1D9C();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_261243000, v12, v13, "Deleting required folders", v14, 2u);
      MEMORY[0x266701350](v14, -1, -1);
    }

    (*(v11 + 8))(v8, v10);
  }

  v15 = [objc_opt_self() defaultManager];
  v16 = sub_26124BDB0();
  v17 = v1[2];
  v17(v4, v16, v0);
  sub_261336C88(v15, v4);
  v18 = v1[1];
  v18(v4, v0);
  v19 = sub_26124BF4C();
  v17(v4, v19, v0);
  sub_261336C88(v15, v4);

  return (v18)(v4, v0);
}

uint64_t sub_261337534()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_261262AA4;

  return sub_261335160(v3, v4, v5, v2);
}

BOOL sub_2613375C8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F340, &unk_2613A4B40);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v16 - v3;
  v5 = type metadata accessor for TransactionData(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v0 + 48);
  (*(*v11 + 480))(v8);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_26124C718(v4, &qword_27FE9F340, &unk_2613A4B40);
    return 1;
  }

  else
  {
    v13 = sub_26125D080(v4, v10);
    if (v10[*(v5 + 72)] == 1)
    {
      sub_261345C6C(v10, type metadata accessor for TransactionData);
      return 0;
    }

    else
    {
      (*(*v11 + 504))(v13);
      v15 = v14;
      sub_261345C6C(v10, type metadata accessor for TransactionData);
      return v15 < 0xFC;
    }
  }
}

uint64_t sub_2613377D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v43 = a5;
  v44 = a8;
  v35 = a6;
  v36 = a3;
  v37 = a4;
  v38 = a2;
  v40 = a11;
  v41 = a12;
  v42 = a10;
  v39 = a9;
  v14 = sub_26139FC1C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = (&v35 - v20);
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  v23 = *(**sub_2612C11DC() + 112);

  v23(v24);
  v25 = v35;
  v26 = v37;

  v27 = v36;
  *(v22 + 152) = 0;
  *(v22 + 176) = 0;
  *(v22 + 24) = a1;
  *(v22 + 32) = v27;
  *(v22 + 40) = v26;
  *(v22 + 136) = a7;
  if (v25)
  {
    (*(v15 + 104))(v21, *MEMORY[0x277D43900], v14);
  }

  else
  {
    *v21 = v27;
    v21[1] = v26;
    (*(v15 + 104))(v21, *MEMORY[0x277D43908], v14);
  }

  type metadata accessor for SessionTask();
  (*(v15 + 16))(v19, v21, v14);

  *(v22 + 144) = sub_2613271E0(v28, v19, a7, 0);
  type metadata accessor for TransactionStore();
  v29 = sub_26125C610(v38);
  (*(v15 + 8))(v21, v14);
  v31 = v39;
  v30 = v40;
  *(v22 + 48) = v29;
  *(v22 + 56) = v30;
  *(v22 + 64) = v41;
  *(v22 + 72) = v31;
  v32 = v42;
  *(v22 + 160) = v43;
  *(v22 + 168) = v25;
  v33 = v44;
  *(v22 + 80) = v32;
  *(v22 + 88) = v33;
  return v22;
}

void *sub_261337A58()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v23 - v4;
  v6 = sub_26129B5FC();
  sub_26125A870(v6, v5, &qword_27FE9F560, &qword_2613A3CB0);
  v7 = sub_2613A124C();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v5, 1, v7) == 1)
  {
    sub_26124C718(v5, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v9 = sub_2613A122C();
    v10 = sub_2613A1D9C();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_261243000, v9, v10, "TransactionTask destroyed", v11, 2u);
      MEMORY[0x266701350](v11, -1, -1);
    }

    (*(v8 + 8))(v5, v7);
  }

  v12 = v1[3];

  v13 = v1[5];

  v14 = v1[6];

  v15 = v1[8];

  v16 = v1[10];

  v17 = v1[11];

  __swift_destroy_boxed_opaque_existential_0Tm(v1 + 12);
  v18 = v1[17];

  v19 = v1[18];

  v20 = v1[19];

  v21 = v1[21];

  return v1;
}

uint64_t sub_261337C54()
{
  sub_261337A58();

  return swift_deallocClassInstance();
}

uint64_t sub_261337C88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v117 = a1;
  v119 = a2;
  v3 = sub_26139F1CC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v107 = &v105 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v110 = &v105 - v9;
  MEMORY[0x28223BE20](v8);
  v108 = &v105 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v123 = &v105 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v111 = &v105 - v16;
  MEMORY[0x28223BE20](v15);
  v121 = (&v105 - v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F338, &unk_2613A4630);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v116 = &v105 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v109 = &v105 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v113 = &v105 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v105 - v27;
  MEMORY[0x28223BE20](v26);
  v30 = &v105 - v29;
  v31 = v4;
  v34 = *(v4 + 56);
  v32 = v4 + 56;
  v33 = v34;
  v34(&v105 - v29, 1, 1, v3);
  v118 = v2;
  v35 = *(v2 + 48);
  v36 = v35[2];
  sub_26139FCFC();
  v38 = v37;

  v39 = v34;
  if (v38)
  {
    sub_26139F14C();
    v33(v28, 0, 1, v3);
    sub_261344654(v28, v30);
  }

  v128 = v30;
  v124 = v28;
  v122 = v3;
  v40 = sub_26129B5FC();
  v41 = v121;
  sub_26125A870(v40, v121, &qword_27FE9F560, &qword_2613A3CB0);
  v42 = sub_2613A124C();
  v120 = *(v42 - 8);
  v43 = *(v120 + 48);
  v129 = v42;
  v126 = v43;
  v127 = v120 + 48;
  v44 = (v43)(v41, 1);
  v45 = v31;
  v125 = v31;
  v112 = v39;
  if (v44 == 1)
  {
    sub_26124C718(v41, &qword_27FE9F560, &qword_2613A3CB0);
    v46 = v32;
  }

  else
  {
    v47 = sub_2613A122C();
    v48 = sub_2613A1D9C();
    v46 = v32;
    if (os_log_type_enabled(v47, v48))
    {
      v114 = v35;
      v49 = swift_slowAlloc();
      v106 = swift_slowAlloc();
      v131 = v106;
      *v49 = 136315138;
      v50 = v128;
      swift_beginAccess();
      v51 = v45;
      v52 = v122;
      if ((*(v45 + 48))(v50, 1, v122))
      {
        v53 = 0;
        v54 = 0xE000000000000000;
      }

      else
      {
        v55 = *(v45 + 16);
        v56 = v108;
        v55(v108, v50, v52);
        v53 = sub_26139F15C();
        v54 = v57;
        (*(v51 + 8))(v56, v52);
      }

      v58 = sub_26124C11C(v53, v54, &v131);

      *(v49 + 4) = v58;
      _os_log_impl(&dword_261243000, v47, v48, "resolving locales for customer:%s", v49, 0xCu);
      v59 = v106;
      __swift_destroy_boxed_opaque_existential_0Tm(v106);
      MEMORY[0x266701350](v59, -1, -1);
      MEMORY[0x266701350](v49, -1, -1);

      v45 = v125;
      v35 = v114;
      v41 = v121;
    }

    else
    {
    }

    (*(v120 + 8))(v41, v129);
  }

  sub_26139F7CC();
  v60 = MEMORY[0x2666FDC30]();
  v115 = v40;
  if (v60)
  {
    v61 = v60;
    v62 = v128;
    swift_beginAccess();
    v63 = v113;
    sub_26125A870(v62, v113, &qword_27FE9F338, &unk_2613A4630);
    v64 = *(v45 + 48);
    v65 = v45;
    v66 = v122;
    if (v64(v63, 1, v122) == 1)
    {

      sub_26124C718(v63, &qword_27FE9F338, &unk_2613A4630);
      v67 = v123;
LABEL_19:
      v74 = v128;
      goto LABEL_24;
    }

    v114 = v35;
    v70 = *(v45 + 32);
    v71 = v110;
    v121 = v70;
    (v70)(v110, v63, v66);
    v72 = v124;
    (*(v65 + 16))(v124, v71, v66);
    v112(v72, 0, 1, v66);
    v113 = v46;
    v73 = v109;
    sub_26139F7AC();

    sub_26124C718(v72, &qword_27FE9F338, &unk_2613A4630);
    (*(v65 + 8))(v71, v66);
    if (v64(v73, 1, v66) == 1)
    {
      sub_26124C718(v73, &qword_27FE9F338, &unk_2613A4630);
      v67 = v123;
      v35 = v114;
      goto LABEL_19;
    }

    v79 = v107;
    v80 = v121;
    (v121)(v107, v73, v66);
    v80(v72, v79, v66);
    v112(v72, 0, 1, v66);
    v74 = v128;
    sub_261344654(v72, v128);
    v67 = v123;
    v35 = v114;
  }

  else
  {
    v68 = v111;
    sub_26125A870(v40, v111, &qword_27FE9F560, &qword_2613A3CB0);
    v69 = v126(v68, 1, v129);
    v67 = v123;
    if (v69 == 1)
    {
      sub_26124C718(v68, &qword_27FE9F560, &qword_2613A3CB0);
      v66 = v122;
      goto LABEL_19;
    }

    v75 = sub_2613A122C();
    v76 = sub_2613A1D8C();
    v77 = os_log_type_enabled(v75, v76);
    v66 = v122;
    v74 = v128;
    if (v77)
    {
      v78 = swift_slowAlloc();
      *v78 = 0;
      _os_log_impl(&dword_261243000, v75, v76, "UI Bundle not found, unable to check Locales", v78, 2u);
      MEMORY[0x266701350](v78, -1, -1);
    }

    (*(v120 + 8))(v68, v129);
  }

LABEL_24:
  swift_beginAccess();
  v81 = v116;
  sub_26125A870(v74, v116, &qword_27FE9F338, &unk_2613A4630);
  v82 = *(v125 + 48);
  v83 = v82(v81, 1, v66);
  sub_26124C718(v81, &qword_27FE9F338, &unk_2613A4630);
  if (v83 == 1)
  {
    v84 = sub_2613A056C();
  }

  else
  {
    v84 = sub_2613A054C();
  }

  v85 = v124;
  (*(*v35 + 34))(v84);
  sub_26125A870(v115, v67, &qword_27FE9F560, &qword_2613A3CB0);
  if (v126(v67, 1, v129) == 1)
  {
    sub_26124C718(v67, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v86 = sub_2613A122C();
    v87 = sub_2613A1D9C();
    if (os_log_type_enabled(v86, v87))
    {
      v114 = v35;
      v88 = swift_slowAlloc();
      v89 = v66;
      v90 = swift_slowAlloc();
      v130 = v90;
      *v88 = 136315138;
      if (v82(v74, 1, v89))
      {
        v91 = 0;
        v92 = 0xE000000000000000;
      }

      else
      {
        v93 = v125;
        v94 = v108;
        (*(v125 + 16))(v108, v74, v89);
        v128 = sub_26139F15C();
        v92 = v95;
        (*(v93 + 8))(v94, v89);
        v91 = v128;
      }

      v96 = sub_26124C11C(v91, v92, &v130);

      *(v88 + 4) = v96;
      _os_log_impl(&dword_261243000, v86, v87, "resolved locales for customer:%s", v88, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v90);
      MEMORY[0x266701350](v90, -1, -1);
      MEMORY[0x266701350](v88, -1, -1);

      v67 = v123;
      v35 = v114;
    }

    else
    {
    }

    (*(v120 + 8))(v67, v129);
  }

  sub_26125A870(v74, v85, &qword_27FE9F338, &unk_2613A4630);
  (*(*v35 + 28))(v85);
  v97 = v117;
  v99 = *(v117 + 64);
  v98 = *(v117 + 72);
  type metadata accessor for Mock();

  sub_26129B1A8(20);

  v100 = *(v97 + 80);
  sub_26129B284(21);
  v101 = *(v118 + 24);
  v102 = *(v101 + 32);
  v103 = *(v101 + 40);
  sub_26125A870(v74, v85, &qword_27FE9F338, &unk_2613A4630);

  sub_26139F96C();
  return sub_26124C718(v74, &qword_27FE9F338, &unk_2613A4630);
}

BOOL sub_261338934(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for ReaderEvent(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = (&v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v54 - v13;
  v15 = sub_26129B5FC();
  sub_26125A870(v15, v14, &qword_27FE9F560, &qword_2613A3CB0);
  v16 = sub_2613A124C();
  v17 = *(v16 - 8);
  v56 = *(v17 + 48);
  v18 = v56(v14, 1, v16);
  v57 = a1;
  if (v18 == 1)
  {
    sub_26124C718(v14, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v55 = v16;
    v19 = sub_26125A798();
    v20 = sub_261291AA8();
    v16 = v55;
    sub_26129BC3C(v19 & 1, v2, 0xD000000000000018, 0x80000002613BA370, v20, v21);

    (*(v17 + 8))(v14, v16);
  }

  v22 = sub_2613375C8();
  if (v22)
  {
    v23 = *(v2 + 24);
    v24 = sub_26125B314(*(v23 + 64), *(v23 + 72));
    if (v24)
    {
      v25 = (*(*v24 + 376))();
      if (v25)
      {
        v26 = v25;
        if ((*(v2 + 16) & 1) == 0)
        {
          v30 = *(v23 + 64);
          v31 = *(v23 + 72);
          v32 = v2;
          v33 = *(*(v2 + 48) + 16);
          v34 = v32[21] == 0;
          v56 = v7;
          v35 = !v34;

          v36 = v33;
          v2 = v32;
          v37 = v36;

          sub_2612B8908(v30, v31, v26, v37, v35, v62);
          v59 = &type metadata for CancelRequested;
          v60 = sub_2613446C4();
          v38 = swift_allocObject();
          *&v58 = v38;
          v39 = v62[5];
          v40 = v62[6];
          v41 = v62[3];
          v38[5] = v62[4];
          v38[6] = v39;
          v42 = v62[7];
          v38[7] = v40;
          v38[8] = v42;
          v43 = v62[1];
          v38[1] = v62[0];
          v38[2] = v43;
          v38[3] = v62[2];
          v38[4] = v41;
          sub_2612B64A4(15, &v58, v61);
          v44 = v32[15];
          v45 = v32[16];
          __swift_project_boxed_opaque_existential_1(v32 + 12, v44);
          v46 = *(v45 + 120);
          v47 = v45;
          v7 = v56;
          v46(v61, v44, v47);

          sub_2612A0E50(v61);
          goto LABEL_19;
        }
      }
    }

LABEL_19:
    *(v2 + 16) = 1;
    v48 = *(v2 + 120);
    v49 = *(v2 + 128);
    __swift_project_boxed_opaque_existential_1((v2 + 96), v48);
    v50 = v57;
    if (((*(v49 + 80))(v57, v48, v49) & 1) == 0)
    {
      v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9FBD0, &qword_2613AAAB0);
      v52 = *(*(v51 - 8) + 56);
      v52(v7, 3, 10, v51);
      sub_26133E934(v7);
      sub_261345C6C(v7, type metadata accessor for ReaderEvent);
      *v7 = v50;
      *(v7 + 8) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9FC30, &unk_2613A9E80);
      swift_storeEnumTagMultiPayload();
      v52(v7, 0, 10, v51);
      sub_26133E934(v7);
      sub_261345C6C(v7, type metadata accessor for ReaderEvent);
    }

    return v22;
  }

  sub_26125A870(v15, v12, &qword_27FE9F560, &qword_2613A3CB0);
  if (v56(v12, 1, v16) == 1)
  {
    sub_26124C718(v12, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v27 = sub_2613A122C();
    v28 = sub_2613A1D8C();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_261243000, v27, v28, "[TransactionTask] intercepting cancel request, read is not cancellable at current state", v29, 2u);
      MEMORY[0x266701350](v29, -1, -1);
    }

    (*(v17 + 8))(v12, v16);
  }

  return v22;
}

BOOL sub_261338F28(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F340, &unk_2613A4B40);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v33 - v5;
  v7 = type metadata accessor for TransactionData(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA04F8, &qword_2613AC6F0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v33 - v14;
  v16 = sub_26139F95C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(**(v1 + 24) + 136))(v19);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    v22 = &qword_27FEA04F8;
    v23 = &qword_2613AC6F0;
    v24 = v15;
LABEL_3:
    sub_26124C718(v24, v22, v23);
    return 0;
  }

  (*(v17 + 32))(v21, v15, v16);
  v26 = sub_26139F93C();
  (*(v17 + 8))(v21, v16);
  if ((v26 & 1) == 0)
  {
    return 0;
  }

  sub_26125A870(a1, v6, &qword_27FE9F340, &unk_2613A4B40);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    v22 = &qword_27FE9F340;
    v23 = &unk_2613A4B40;
    v24 = v6;
    goto LABEL_3;
  }

  sub_26125D080(v6, v11);
  v27 = &v11[*(v7 + 36)];
  v29 = *v27;
  v28 = *(v27 + 1);
  v30 = v29 & 0xFFFFFFFFFFFFLL;
  if ((v28 & 0x2000000000000000) != 0)
  {
    v31 = HIBYTE(v28) & 0xF;
  }

  else
  {
    v31 = v30;
  }

  v32 = v31 != 0;
  sub_261345C6C(v11, type metadata accessor for TransactionData);
  return v32;
}

uint64_t sub_261339260()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F580, &qword_2613A5480);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v249 = &v231 - v4;
  v5 = sub_26139F13C();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v254 = &v231 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA04F8, &qword_2613AC6F0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v252 = &v231 - v10;
  v244 = sub_26139F95C();
  v243 = *(v244 - 8);
  v11 = *(v243 + 64);
  MEMORY[0x28223BE20](v244);
  v241 = &v231 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v239 = sub_26139F1CC();
  v240 = *(v239 - 8);
  v13 = *(v240 + 64);
  MEMORY[0x28223BE20](v239);
  v236 = &v231 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F338, &unk_2613A4630);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v238 = &v231 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v237 = &v231 - v19;
  v20 = type metadata accessor for TransactionData(0);
  v260 = *(v20 - 1);
  v21 = *(v260 + 64);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v231 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v247 = v23;
  MEMORY[0x28223BE20](v22);
  v256 = &v231 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F340, &unk_2613A4B40);
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v26 - 8);
  v246 = &v231 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v28);
  v32 = &v231 - v31;
  v33 = MEMORY[0x28223BE20](v30);
  v258 = &v231 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v253 = &v231 - v36;
  MEMORY[0x28223BE20](v35);
  v257 = (&v231 - v37);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v39 = *(*(v38 - 8) + 64);
  v40 = MEMORY[0x28223BE20](v38 - 8);
  v42 = &v231 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = MEMORY[0x28223BE20](v40);
  v255 = (&v231 - v44);
  v45 = MEMORY[0x28223BE20](v43);
  v242 = &v231 - v46;
  v47 = MEMORY[0x28223BE20](v45);
  v250 = &v231 - v48;
  v49 = MEMORY[0x28223BE20](v47);
  v251 = &v231 - v50;
  v51 = MEMORY[0x28223BE20](v49);
  v259 = (&v231 - v52);
  v53 = MEMORY[0x28223BE20](v51);
  v55 = &v231 - v54;
  MEMORY[0x28223BE20](v53);
  v57 = &v231 - v56;
  v261 = sub_26129B5FC();
  sub_26125A870(v261, v57, &qword_27FE9F560, &qword_2613A3CB0);
  v58 = sub_2613A124C();
  v59 = *(v58 - 8);
  v262 = *(v59 + 6);
  v263 = v59 + 48;
  v60 = v262(v57, 1, v58);
  v248 = v24;
  v245 = v32;
  if (v60 == 1)
  {
    v61 = sub_26124C718(v57, &qword_27FE9F560, &qword_2613A3CB0);
    if ((*(v1 + 176) & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_8:
    sub_26125A870(v261, v42, &qword_27FE9F560, &qword_2613A3CB0);
    if (v262(v42, 1, v58) == 1)
    {
      return sub_26124C718(v42, &qword_27FE9F560, &qword_2613A3CB0);
    }

    v85 = sub_2613A122C();
    v86 = sub_2613A1D9C();
    if (os_log_type_enabled(v85, v86))
    {
      v87 = v58;
      v88 = swift_slowAlloc();
      *v88 = 0;
      _os_log_impl(&dword_261243000, v85, v86, "[TransactionTask] already returned, skipping return data/error", v88, 2u);
      v89 = v88;
      v58 = v87;
      MEMORY[0x266701350](v89, -1, -1);
    }

    return (*(v59 + 1))(v42, v58);
  }

  v76 = v20;
  v77 = v59;
  v78 = v58;
  v79 = sub_26125A798();
  v80 = sub_261291AA8();
  v81 = v79 & 1;
  v58 = v78;
  v59 = v77;
  v20 = v76;
  sub_26129BC3C(v81, v1, 0xD000000000000012, 0x80000002613BD350, v80, v82);

  v61 = (*(v59 + 1))(v57, v58);
  if (*(v1 + 176))
  {
    goto LABEL_8;
  }

LABEL_3:
  *(v1 + 176) = 1;
  v62 = *(v1 + 48);
  v63 = (*(*v62 + 66))(v61);
  if ((v64 & 1) == 0)
  {
    v84 = v63;
    sub_26125A870(v261, v55, &qword_27FE9F560, &qword_2613A3CB0);
    if (v262(v55, 1, v58) == 1)
    {
      sub_26124C718(v55, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v90 = v59;
      v91 = v58;
      v92 = sub_2613A122C();
      v93 = sub_2613A1D8C();
      if (os_log_type_enabled(v92, v93))
      {
        v94 = swift_slowAlloc();
        v95 = swift_slowAlloc();
        *v94 = 138412290;
        sub_2612B45EC();
        swift_allocError();
        *v96 = v84;
        v97 = _swift_stdlib_bridgeErrorToNSError();
        *(v94 + 4) = v97;
        *v95 = v97;
        _os_log_impl(&dword_261243000, v92, v93, "[TransactionTask] has error %@", v94, 0xCu);
        sub_26124C718(v95, &qword_27FEA0410, &qword_2613AA780);
        MEMORY[0x266701350](v95, -1, -1);
        MEMORY[0x266701350](v94, -1, -1);
      }

      v90[1](v55, v91);
    }

    v98 = *(v1 + 64);
    return (*(v1 + 56))(0, v84, 0);
  }

  v65 = (*v62 + 504);
  v66 = *v65;
  v67 = (*v65)(v63);
  if (v68 > 0xFBu)
  {
    goto LABEL_28;
  }

  v235 = v58;
  v69 = v66(v67);
  v71 = v70;
  v72 = (*v62 + 480);
  v73 = v257;
  v234 = *v72;
  v233 = v72;
  v234();
  v74 = v73;
  if ((*(v260 + 48))(v73, 1, v20))
  {
    v67 = sub_26124C718(v73, &qword_27FE9F340, &unk_2613A4B40);
    v75 = v71 > 0xFBu;
  }

  else
  {
    v99 = v73 + v20[25];
    v100 = *v99;
    v101 = v74;
    v102 = *(v99 + 8);
    v67 = sub_26124C718(v101, &qword_27FE9F340, &unk_2613A4B40);
    if (v71 <= 0xFBu)
    {
      v266 = v69;
      v267 = v71;
      v58 = v235;
      if (v102 > 0xFB)
      {
        goto LABEL_28;
      }

      v264 = v100;
      v265 = v102;
      sub_26134483C();
      v67 = sub_2613A188C();
      if ((v67 & 1) == 0)
      {
        goto LABEL_28;
      }

LABEL_24:
      v103 = v253;
      (v234)(v67);
      v104 = sub_261338F28(v103);
      v67 = sub_26124C718(v103, &qword_27FE9F340, &unk_2613A4B40);
      if (v104)
      {
        v67 = (*(*v62 + 64))(0, 252);
      }

      goto LABEL_28;
    }

    v75 = v102 > 0xFB;
  }

  v58 = v235;
  if (v75)
  {
    goto LABEL_24;
  }

LABEL_28:
  v257 = v59;
  v105 = v66(v67);
  if (v106 > 0xFBu)
  {
    v107 = (*v62 + 480);
    v108 = *v107;
    v109 = v107;
    v110 = v258;
    (*v107)(v105);
    v111 = *(v260 + 48);
    if (v111(v110, 1, v20) == 1)
    {
      sub_26124C718(v110, &qword_27FE9F340, &unk_2613A4B40);
      v112 = v255;
      sub_26125A870(v261, v255, &qword_27FE9F560, &qword_2613A3CB0);
      if (v262(v112, 1, v58) == 1)
      {
        sub_26124C718(v112, &qword_27FE9F560, &qword_2613A3CB0);
      }

      else
      {
        v134 = sub_2613A122C();
        v135 = sub_2613A1D8C();
        if (os_log_type_enabled(v134, v135))
        {
          v136 = v58;
          v137 = swift_slowAlloc();
          *v137 = 0;
          _os_log_impl(&dword_261243000, v134, v135, "[TransactionTask] no transaction data", v137, 2u);
          v138 = v137;
          v58 = v136;
          MEMORY[0x266701350](v138, -1, -1);
        }

        v257[1](v112, v58);
      }

      v139 = *(v1 + 64);
      return (*(v1 + 56))(0, 25, 0);
    }

    v259 = v111;
    v116 = v256;
    sub_26125D080(v110, v256);
    v117 = *(v1 + 24);
    v118 = *(v117 + 8);
    v119 = *(v117 + 9);
    v258 = v117;
    v120 = sub_26125B314(v118, v119);
    if (v120)
    {
      v121 = v120;
      v253 = v109;
      v255 = v108;
      v122 = v251;
      sub_26125A870(v261, v251, &qword_27FE9F560, &qword_2613A3CB0);
      if (v262(v122, 1, v58) == 1)
      {
        v123 = sub_26124C718(v122, &qword_27FE9F560, &qword_2613A3CB0);
      }

      else
      {
        v141 = sub_2613A122C();
        v142 = sub_2613A1D7C();
        if (os_log_type_enabled(v141, v142))
        {
          v143 = v58;
          v144 = swift_slowAlloc();
          *v144 = 0;
          _os_log_impl(&dword_261243000, v141, v142, "[TransactionTask] generating blob again, if needed", v144, 2u);
          v145 = v144;
          v58 = v143;
          v122 = v251;
          MEMORY[0x266701350](v145, -1, -1);
        }

        v123 = (v257[1])(v122, v58);
      }

      v146 = v252;
      if ((*(*v62 + 78))(v123) & 1) == 0 || ((*(*v1 + 440))(v116, v121), (v147))
      {
        v148 = *(v116 + v20[18]);
        v232 = v1;
        if ((v148 & 1) == 0 && *(v116 + v20[19]) == 1)
        {
          v235 = v58;
          v149 = *sub_261287C58();
          v150 = *(*v62 + 27);

          v152 = v237;
          v150(v151);
          v153 = v240;
          v154 = *(v240 + 48);
          v155 = v239;
          if ((v154)(v152, 1, v239))
          {
            v156 = sub_26124C718(v152, &qword_27FE9F338, &unk_2613A4630);
            v242 = 0;
            v251 = 0;
          }

          else
          {
            v165 = *(v153 + 16);
            v234 = v154;
            v166 = v236;
            v165(v236, v152, v155);
            sub_26124C718(v152, &qword_27FE9F338, &unk_2613A4630);
            v242 = sub_26139F15C();
            v251 = v167;
            v168 = v166;
            v154 = v234;
            v156 = (*(v153 + 8))(v168, v155);
          }

          v169 = v238;
          (*(*v62 + 30))(v156);
          if ((v154)(v169, 1, v155))
          {
            sub_26124C718(v169, &qword_27FE9F338, &unk_2613A4630);
            v170 = 0;
            v171 = 0;
          }

          else
          {
            v172 = v240;
            v173 = v169;
            v174 = v236;
            (*(v240 + 16))(v236, v173, v155);
            sub_26124C718(v173, &qword_27FE9F338, &unk_2613A4630);
            v170 = sub_26139F15C();
            v171 = v175;
            (*(v172 + 8))(v174, v155);
          }

          v116 = v256;
          (*(*v149 + 144))(v256, v242, v251, v170, v171);

          v1 = v232;
          v58 = v235;
          v146 = v252;
        }

        v176 = v250;
        sub_26125A870(v261, v250, &qword_27FE9F560, &qword_2613A3CB0);
        if (v262(v176, 1, v58) == 1)
        {
          v177 = sub_26124C718(v176, &qword_27FE9F560, &qword_2613A3CB0);
        }

        else
        {
          v178 = sub_2613A122C();
          v179 = sub_2613A1D7C();
          if (os_log_type_enabled(v178, v179))
          {
            v180 = v20;
            v181 = v58;
            v182 = swift_slowAlloc();
            *v182 = 0;
            _os_log_impl(&dword_261243000, v178, v179, "[TransactionTask] building result", v182, 2u);
            v183 = v182;
            v58 = v181;
            v20 = v180;
            v146 = v252;
            MEMORY[0x266701350](v183, -1, -1);
          }

          v177 = (v257[1])(v250, v58);
        }

        (*(*v258 + 136))(v177);
        v184 = v243;
        v185 = v244;
        v186 = (*(v243 + 48))(v146, 1, v244);
        v263 = v121;
        if (v186 == 1)
        {
          sub_26124C718(v146, &qword_27FEA04F8, &qword_2613AC6F0);
        }

        else
        {
          v187 = v241;
          (*(v184 + 32))(v241, v146, v185);
          v188 = v185;
          v189 = sub_26139F93C();
          (*(v184 + 8))(v187, v188);
          if (v189)
          {
            v190 = v116 + v20[25];
            v191 = *(v190 + 8);
            v192 = v255;
            if (v191 <= 0xFB)
            {
              if ((v191 & 0xC0) == 0x80 && *v190 == 11 && v191 == 128)
              {
                v230 = 1;
              }

              else
              {
                v230 = 2;
              }

              v262 = v230;
            }

            else
            {
              v262 = 0;
            }

            goto LABEL_78;
          }
        }

        v262 = 0;
        v192 = v255;
LABEL_78:
        v193 = v62[2];
        v261 = sub_26139FD2C();

        v194 = v62[2];
        sub_26139FCEC();

        if (*(v1 + 168))
        {
          v257 = 0xC000000000000000;
          v258 = 0;
        }

        else
        {
          v195 = (*(*v62 + 69))();
          v257 = v196;
          v258 = v195;
        }

        v197 = (v116 + v20[11]);
        v198 = *v197;
        v199 = v197[1];
        v200 = (v116 + v20[32]);
        v201 = v200[1];
        v252 = *v200;
        v253 = v199;
        v202 = *(v116 + v20[26]);
        v255 = v198;
        sub_26124C778(v198, v199);

        v251 = v201;

        v204 = v245;
        v192(v203);
        v205 = v259;
        if (v259(v204, 1, v20) || (v207 = *(v204 + v20[24])) == 0)
        {
          v206 = sub_26124C718(v204, &qword_27FE9F340, &unk_2613A4B40);
        }

        else
        {
          v208 = v207;
          sub_26124C718(v204, &qword_27FE9F340, &unk_2613A4B40);
          sub_2613A027C();
        }

        v209 = v246;
        v192(v206);
        if (v205(v209, 1, v20))
        {
          sub_26124C718(v209, &qword_27FE9F340, &unk_2613A4B40);
          v210 = v248;
        }

        else
        {
          v211 = v209;
          v212 = v209;
          v210 = v248;
          sub_261345CCC(v211, v248, type metadata accessor for TransactionData);
          sub_26124C718(v212, &qword_27FE9F340, &unk_2613A4B40);
          v213 = *(v210 + v20[22]);
          sub_261345C6C(v210, type metadata accessor for TransactionData);
        }

        v214 = v20[31];
        v215 = v256;
        v216 = (v256 + v20[30]);
        v217 = *v216;
        v218 = *(v216 + 8);
        v219 = *(v256 + v214);
        v220 = *(v256 + v214 + 8);
        v221 = objc_allocWithZone(sub_26139F66C());
        v222 = v262;
        v223 = sub_26139F65C();
        v224 = sub_2613A1C1C();
        v225 = v249;
        (*(*(v224 - 8) + 56))(v249, 1, 1, v224);
        sub_261345CCC(v215, v210, type metadata accessor for TransactionData);
        v226 = (*(v260 + 80) + 48) & ~*(v260 + 80);
        v227 = (v247 + v226 + 7) & 0xFFFFFFFFFFFFFFF8;
        v228 = swift_allocObject();
        v228[2] = 0;
        v228[3] = 0;
        v228[4] = v232;
        v228[5] = v222;
        sub_26125D080(v210, v228 + v226);
        *(v228 + v227) = v263;
        *(v228 + ((v227 + 15) & 0xFFFFFFFFFFFFFFF8)) = v223;

        v229 = v223;
        sub_261266800(0, 0, v225, &unk_2613ACD80, v228);

        v164 = v215;
        return sub_261345C6C(v164, type metadata accessor for TransactionData);
      }

      v163 = *(v1 + 64);
      (*(v1 + 56))(0, 25, 0);
    }

    else
    {
      v140 = v242;
      sub_26125A870(v261, v242, &qword_27FE9F560, &qword_2613A3CB0);
      if (v262(v140, 1, v58) == 1)
      {
        sub_26124C718(v140, &qword_27FE9F560, &qword_2613A3CB0);
      }

      else
      {
        v157 = sub_2613A122C();
        v158 = sub_2613A1D8C();
        if (os_log_type_enabled(v157, v158))
        {
          v159 = v58;
          v160 = swift_slowAlloc();
          *v160 = 0;
          _os_log_impl(&dword_261243000, v157, v158, "[TransactionTask] no session store", v160, 2u);
          v161 = v160;
          v58 = v159;
          MEMORY[0x266701350](v161, -1, -1);
        }

        v257[1](v140, v58);
      }

      v162 = *(v1 + 64);
      (*(v1 + 56))(0, 4, 0);
    }

    v164 = v116;
    return sub_261345C6C(v164, type metadata accessor for TransactionData);
  }

  v113 = v105;
  v114 = v106;
  v115 = v259;
  sub_26125A870(v261, v259, &qword_27FE9F560, &qword_2613A3CB0);
  if (v262(v115, 1, v58) == 1)
  {
    sub_26124C718(v115, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v124 = v58;
    v125 = sub_2613A122C();
    v126 = sub_2613A1D8C();
    if (os_log_type_enabled(v125, v126))
    {
      v127 = swift_slowAlloc();
      v128 = swift_slowAlloc();
      *v127 = 138412290;
      sub_2612B48D8();
      swift_allocError();
      *v129 = v113;
      *(v129 + 8) = v114;
      v130 = _swift_stdlib_bridgeErrorToNSError();
      *(v127 + 4) = v130;
      *v128 = v130;
      _os_log_impl(&dword_261243000, v125, v126, "[TransactionTask] has reader error %@", v127, 0xCu);
      sub_26124C718(v128, &qword_27FEA0410, &qword_2613AA780);
      MEMORY[0x266701350](v128, -1, -1);
      MEMORY[0x266701350](v127, -1, -1);
    }

    v257[1](v115, v124);
  }

  v131 = *(v1 + 56);
  v132 = *(v1 + 64);
  v133 = sub_2612CAFEC(v113, v114);
  return v131(0, v133, 0);
}

uint64_t sub_26133AC98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a7;
  v8[10] = a8;
  v8[7] = a5;
  v8[8] = a6;
  v8[6] = a4;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0) - 8) + 64) + 15;
  v8[11] = swift_task_alloc();
  v8[12] = swift_task_alloc();
  v8[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26133AD54);
}

uint64_t sub_26133AD54()
{
  if (!*(*(v0 + 48) + 168))
  {
    v5 = *(v0 + 64);
    if (*(v5 + *(type metadata accessor for TransactionData(0) + 132)) & 1) != 0 || (type metadata accessor for Mock(), (sub_26129B338(36)))
    {
      v6 = *(v0 + 88);
      v7 = sub_26129B5FC();
      sub_26125A870(v7, v6, &qword_27FE9F560, &qword_2613A3CB0);
      v8 = sub_2613A124C();
      v9 = *(v8 - 8);
      if ((*(v9 + 48))(v6, 1, v8) == 1)
      {
        sub_26124C718(*(v0 + 88), &qword_27FE9F560, &qword_2613A3CB0);
      }

      else
      {
        v28 = *(v0 + 88);
        v29 = sub_2613A122C();
        v30 = sub_2613A1D8C();
        if (os_log_type_enabled(v29, v30))
        {
          v31 = swift_slowAlloc();
          *v31 = 0;
          _os_log_impl(&dword_261243000, v29, v30, "[TransactionTask] invalid reader mode", v31, 2u);
          MEMORY[0x266701350](v31, -1, -1);
        }

        v32 = *(v0 + 88);

        (*(v9 + 8))(v32, v8);
      }

      v33 = *(*(v0 + 48) + 24);
      v35 = *(v33 + 64);
      v34 = *(v33 + 72);

      sub_26125B3FC(v35, v34);

      v36 = 0;
      v57 = 25;
      goto LABEL_26;
    }

LABEL_25:
    v57 = 0;
    v36 = 1;
LABEL_26:
    v40 = *(v0 + 96);
    v41 = *(v0 + 104);
    v43 = *(v0 + 80);
    v42 = *(v0 + 88);
    v44 = *(v0 + 72);
    v45 = *(v0 + 48);
    sub_2612FF320();
    (*(*v44 + 360))();
    v46 = *(v45 + 24);
    v47 = *(v46 + 64);
    v48 = *(v46 + 72);

    sub_26125B1E4(v47, v48, v44);

    v49 = *(v45 + 64);
    if (v36)
    {
      v50 = v43;
    }

    else
    {
      v50 = 0;
    }

    (*(v45 + 56))(v50, v57, v36);

    v51 = *(v0 + 8);

    return v51();
  }

  v1 = *(v0 + 56);
  v2 = sub_26139FC4C();
  if (v2 != sub_26139FC4C())
  {
    v10 = *(v0 + 104);
    v11 = sub_26129B5FC();
    sub_26125A870(v11, v10, &qword_27FE9F560, &qword_2613A3CB0);
    v12 = sub_2613A124C();
    v13 = *(v12 - 8);
    v14 = (*(v13 + 48))(v10, 1, v12);
    v15 = *(v0 + 104);
    if (v14 == 1)
    {
LABEL_16:
      sub_26124C718(v15, &qword_27FE9F560, &qword_2613A3CB0);
      goto LABEL_25;
    }

    v16 = *(v0 + 104);
    v17 = sub_2613A122C();
    v18 = sub_2613A1D8C();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_261243000, v17, v18, "[TransactionTask] returning SAF result with non-successful outcome", v19, 2u);
      MEMORY[0x266701350](v19, -1, -1);
    }

    v20 = *(v0 + 104);
LABEL_24:

    (*(v13 + 8))(v20, v12);
    goto LABEL_25;
  }

  v3 = *(v0 + 64);
  *(v0 + 144) = sub_2612CCA28();
  *(v0 + 145) = 0;
  sub_261344CAC();
  sub_2613A1B1C();
  sub_2613A1B1C();
  if (*(v0 + 16) == *(v0 + 32) && *(v0 + 24) == *(v0 + 40))
  {
    v4 = *(v0 + 40);

LABEL_15:
    v25 = *(v0 + 96);
    v26 = sub_26129B5FC();
    sub_26125A870(v26, v25, &qword_27FE9F560, &qword_2613A3CB0);
    v12 = sub_2613A124C();
    v13 = *(v12 - 8);
    v27 = (*(v13 + 48))(v25, 1, v12);
    v15 = *(v0 + 96);
    if (v27 == 1)
    {
      goto LABEL_16;
    }

    v37 = *(v0 + 96);
    v17 = sub_2613A122C();
    v38 = sub_2613A1D9C();
    if (os_log_type_enabled(v17, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_261243000, v17, v38, "[TransactionTask] VAS only transaction, no data to be stored", v39, 2u);
      MEMORY[0x266701350](v39, -1, -1);
    }

    v20 = *(v0 + 96);
    goto LABEL_24;
  }

  v21 = *(v0 + 24);
  v22 = *(v0 + 40);
  v23 = sub_2613A241C();

  if (v23)
  {
    goto LABEL_15;
  }

  *(v0 + 112) = (*(**(*(v0 + 48) + 48) + 552))(v24);
  *(v0 + 120) = v53;
  v54 = swift_task_alloc();
  *(v0 + 128) = v54;
  *v54 = v0;
  v54[1] = sub_26133B3B4;
  v55 = *(v0 + 64);
  v56 = *(v0 + 48);

  return sub_261344D00(v55);
}

uint64_t sub_26133B3B4(uint64_t a1, char a2)
{
  v3 = *v2;
  v4 = *(*v2 + 128);
  v5 = *(*v2 + 120);
  v6 = *(*v2 + 112);
  v8 = *v2;
  *(v3 + 136) = a1;
  *(v3 + 146) = a2;

  sub_26124A168(v6, v5);

  return MEMORY[0x2822009F8](sub_26133B4F0);
}

uint64_t sub_26133B4F0()
{
  v1 = *(v0 + 146);
  v2 = *(v0 + 136);
  v3 = *(v0 + 96);
  v4 = *(v0 + 104);
  v5 = *(v0 + 80);
  v15 = *(v0 + 88);
  v6 = *(v0 + 72);
  v7 = *(v0 + 48);
  sub_2612FF320();
  (*(*v6 + 360))();
  v8 = *(v7 + 24);
  v9 = *(v8 + 64);
  v10 = *(v8 + 72);

  sub_26125B1E4(v9, v10, v6);

  v11 = *(v7 + 64);
  if (v1)
  {
    v12 = v5;
  }

  else
  {
    v12 = 0;
  }

  (*(v7 + 56))(v12, v2, v1 & 1);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_26133B624(char a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F280, &unk_2613A42B0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v73 = &v69 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F340, &unk_2613A4B40);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v72 = &v69 - v9;
  ErrorEventData = type metadata accessor for ReadErrorEventData();
  v11 = *(*(ErrorEventData - 8) + 64);
  MEMORY[0x28223BE20](ErrorEventData - 8);
  v13 = (&v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v18 = &v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v69 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v69 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v69 - v25;
  v75 = sub_26129B5FC();
  sub_26125A870(v75, v26, &qword_27FE9F560, &qword_2613A3CB0);
  v27 = sub_2613A124C();
  v28 = *(v27 - 8);
  v76 = *(v28 + 48);
  v29 = v76(v26, 1, v27);
  v74 = v28;
  v71 = v24;
  if (v29 == 1)
  {
    sub_26124C718(v26, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v69 = v13;
    v70 = v21;
    v30 = v2;
    v31 = v27;
    v32 = sub_26125A798();
    v33 = sub_261291AA8();
    sub_26129BC3C(v32 & 1, v30, 0xD000000000000019, 0x80000002613BD370, v33, v34);

    v27 = v31;
    v35 = v31;
    v2 = v30;
    v13 = v69;
    v21 = v70;
    (*(v28 + 8))(v26, v35);
  }

  v36 = *(v2 + 120);
  v37 = *(v2 + 128);
  __swift_project_boxed_opaque_existential_1((v2 + 96), v36);
  v38 = (*(v37 + 80))(2, v36, v37);
  *(v2 + 16) = 1;
  if ((a1 & 1) != 0 || (v39 = v38, v40 = *(v2 + 48), (*(*v40 + 66))(), (v41 & 1) == 0))
  {
    sub_26125A870(v75, v18, &qword_27FE9F560, &qword_2613A3CB0);
    if (v76(v18, 1, v27) == 1)
    {
      v46 = sub_26124C718(v18, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v47 = sub_2613A122C();
      v48 = sub_2613A1D9C();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        *v49 = 0;
        _os_log_impl(&dword_261243000, v47, v48, "[TransactionTask] return data after tapUIFinished", v49, 2u);
        MEMORY[0x266701350](v49, -1, -1);
      }

      v46 = (*(v74 + 8))(v18, v27);
    }

    return (*(*v2 + 328))(v46);
  }

  else
  {
    v42 = *(v2 + 24);
    v43 = sub_26125B314(*(v42 + 64), *(v42 + 72));
    if (v43)
    {
      v44 = (*(*v43 + 376))();
      if (v44)
      {
        v70 = v44;
        if ((v39 & 1) == 0)
        {
          v45 = v71;
          sub_26125A870(v75, v71, &qword_27FE9F560, &qword_2613A3CB0);
          if (v76(v45, 1, v27) == 1)
          {
            sub_26124C718(v45, &qword_27FE9F560, &qword_2613A3CB0);
          }

          else
          {
            v58 = sub_2613A122C();
            v59 = sub_2613A1D7C();
            if (os_log_type_enabled(v58, v59))
            {
              v60 = swift_slowAlloc();
              *v60 = 0;
              _os_log_impl(&dword_261243000, v58, v59, "[TransactionTask] UI was dismissed and there is no active read, send readCancelled event", v60, 2u);
              MEMORY[0x266701350](v60, -1, -1);
            }

            (*(v74 + 8))(v45, v27);
          }

          v61 = *(*v40 + 60);
          v62 = v40[2];
          v63 = v70;

          v65 = v72;
          v61(v64);
          sub_2612B5BF0(v62, v63, 2, 0, v65, v13);
          v66 = sub_26139F13C();
          v67 = v73;
          (*(*(v66 - 8) + 56))(v73, 1, 1, v66);
          sub_261340E08(v67, v13);
          sub_26124C718(v67, &qword_27FE9F280, &unk_2613A42B0);
          sub_261345C6C(v13, type metadata accessor for ReadErrorEventData);
        }

        v68 = *(v2 + 64);
        (*(v2 + 56))(0, 10, 0);
      }
    }

    sub_26125A870(v75, v21, &qword_27FE9F560, &qword_2613A3CB0);
    if (v76(v21, 1, v27) == 1)
    {
      sub_26124C718(v21, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v51 = v21;
      v52 = sub_2613A122C();
      v53 = sub_2613A1D8C();
      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        *v54 = 0;
        _os_log_impl(&dword_261243000, v52, v53, "[TransactionTask] failed to load session store after tapUIFinished", v54, 2u);
        MEMORY[0x266701350](v54, -1, -1);
      }

      (*(v74 + 8))(v51, v27);
    }

    v55 = *(v42 + 64);
    v56 = *(v42 + 72);

    sub_26125B3FC(v55, v56);

    v57 = *(v2 + 64);
    return (*(v2 + 56))(0, 10, 0);
  }
}

uint64_t sub_26133BE50(int a1, char a2, int a3, int a4, double a5)
{
  v6 = v5;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F580, &qword_2613A5480);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v50[-v14];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v50[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v18);
  v22 = &v50[-v21];
  v23 = *(v6 + 16);
  v24 = sub_26129B5FC();
  if (v23 == 1)
  {
    sub_26125A870(v24, v22, &qword_27FE9F560, &qword_2613A3CB0);
    v25 = sub_2613A124C();
    v26 = *(v25 - 8);
    if ((*(v26 + 48))(v22, 1, v25) == 1)
    {
      v27 = sub_26124C718(v22, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v31 = sub_2613A122C();
      v32 = sub_2613A1D8C();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&dword_261243000, v31, v32, "[TransactionTask] canceled, read blocked", v33, 2u);
        MEMORY[0x266701350](v33, -1, -1);
      }

      v27 = (*(v26 + 8))(v22, v25);
    }

    v34 = *(v6 + 88);
    result = (*(*v34 + 536))(v27);
    if (result)
    {
      return [v34 updateWithTransactionEvent_];
    }
  }

  else
  {
    v52 = a1;
    v53 = a4;
    sub_26125A870(v24, v20, &qword_27FE9F560, &qword_2613A3CB0);
    v28 = sub_2613A124C();
    v29 = *(v28 - 8);
    v30 = (*(v29 + 48))(v20, 1, v28);
    v51 = a3;
    if (v30 == 1)
    {
      sub_26124C718(v20, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v36 = sub_2613A122C();
      v37 = sub_2613A1D9C();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        *v38 = 67110144;
        *(v38 + 4) = v52 & 1;
        *(v38 + 8) = 1024;
        *(v38 + 10) = a2 & 1;
        *(v38 + 14) = 1024;
        *(v38 + 16) = a3 & 1;
        *(v38 + 20) = 1024;
        *(v38 + 22) = v53 & 1;
        *(v38 + 26) = 2048;
        *(v38 + 28) = a5;
        _os_log_impl(&dword_261243000, v36, v37, "[TransactionTask] starting read retry=%{BOOL}d, silent=%{BOOL}d, prepareNeeded=%{BOOL}d, forceAttestation=%{BOOL}d, delay=%f", v38, 0x24u);
        MEMORY[0x266701350](v38, -1, -1);
      }

      (*(v29 + 8))(v20, v28);
    }

    v39 = *(v6 + 48);
    v40 = a2 & 1;
    (*(*v39 + 608))(v40);
    v41 = v39[2];
    v42 = *(v6 + 120);
    v43 = *(v6 + 128);
    __swift_project_boxed_opaque_existential_1((v6 + 96), v42);
    v44 = *(v43 + 80);
    v45 = v41;
    v44(2, v42, v43);
    v46 = swift_allocObject();
    swift_weakInit();
    v47 = sub_2613A1C1C();
    (*(*(v47 - 8) + 56))(v15, 1, 1, v47);
    v48 = swift_allocObject();
    v49 = v52 & 1;
    *(v48 + 16) = 0;
    *(v48 + 24) = 0;
    *(v48 + 32) = v49;
    *(v48 + 40) = a5;
    *(v48 + 48) = v6;
    *(v48 + 56) = v53 & 1;
    *(v48 + 57) = v40;
    *(v48 + 58) = v51 & 1;
    *(v48 + 64) = v45;
    *(v48 + 72) = sub_261344890;
    *(v48 + 80) = v46;

    sub_261266800(0, 0, v15, &unk_2613ACD90, v48);
  }

  return result;
}

uint64_t sub_26133C3C0(double a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, char a7, char a8, char a9)
{
  *(v9 + 560) = v17;
  *(v9 + 544) = v16;
  *(v9 + 76) = a9;
  *(v9 + 75) = a8;
  *(v9 + 74) = a7;
  *(v9 + 536) = a6;
  *(v9 + 528) = a1;
  *(v9 + 73) = a5;
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0) - 8) + 64) + 15;
  *(v9 + 568) = swift_task_alloc();
  *(v9 + 576) = swift_task_alloc();
  v11 = sub_2613A21DC();
  *(v9 + 584) = v11;
  v12 = *(v11 - 8);
  *(v9 + 592) = v12;
  v13 = *(v12 + 64) + 15;
  *(v9 + 600) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26133C4EC);
}

uint64_t sub_26133C4EC()
{
  if (*(v0 + 73) == 1)
  {
    v1 = *(v0 + 600);
    v2 = *(v0 + 528);
    v3 = sub_2613A263C();
    v5 = v4;
    sub_2613A24CC();
    v6 = swift_task_alloc();
    *(v0 + 608) = v6;
    *v6 = v0;
    v6[1] = sub_26133C8F4;
    v7 = *(v0 + 600);

    return sub_2612D3284(v3, v5, 0, 0, 1);
  }

  else
  {
    *(v0 + 624) = 0;
    v9 = *(v0 + 536);
    if (*(v9 + 16))
    {
      v10 = *(v0 + 568);
      v11 = sub_26129B5FC();
      sub_26125A870(v11, v10, &qword_27FE9F560, &qword_2613A3CB0);
      v12 = sub_2613A124C();
      v13 = *(v12 - 8);
      if ((*(v13 + 48))(v10, 1, v12) == 1)
      {
        sub_26124C718(*(v0 + 568), &qword_27FE9F560, &qword_2613A3CB0);
      }

      else
      {
        v22 = *(v0 + 568);
        v23 = sub_2613A122C();
        v24 = sub_2613A1D8C();
        if (os_log_type_enabled(v23, v24))
        {
          v25 = swift_slowAlloc();
          *v25 = 0;
          _os_log_impl(&dword_261243000, v23, v24, "[TransactionTask] card read was cancelled, skipping the read", v25, 2u);
          MEMORY[0x266701350](v25, -1, -1);
        }

        v26 = *(v0 + 568);

        (*(v13 + 8))(v26, v12);
      }

      v27 = *(v0 + 600);
      v28 = *(v0 + 576);
      v29 = *(v0 + 568);

      v30 = *(v0 + 8);

      return v30();
    }

    else
    {
      v14 = *(v0 + 75);
      v15 = swift_allocObject();
      *(v0 + 632) = v15;
      *(v15 + 16) = 0;
      v16 = *(v9 + 144);
      v17 = swift_allocObject();
      *(v0 + 640) = v17;
      *(v17 + 16) = v14;
      *(v17 + 24) = v9;
      *(v17 + 32) = v15;
      v18 = *(*v16 + 296);

      v31 = (v18 + *v18);
      v19 = v18[1];
      v20 = swift_task_alloc();
      *(v0 + 648) = v20;
      *v20 = v0;
      v20[1] = sub_26133D120;
      v21 = *(v0 + 74);

      return v31(v0 + 80, v21, sub_261344B44, v17);
    }
  }
}

uint64_t sub_26133C8F4()
{
  v2 = *v1;
  v3 = *(*v1 + 608);
  v4 = *v1;
  *(*v1 + 616) = v0;

  v5 = v2[75];
  v6 = v2[74];
  v7 = v2[73];
  if (v0)
  {

    (*(v6 + 8))(v5, v7);
    v8 = sub_26133CDD8;
  }

  else
  {
    (*(v6 + 8))(v5, v7);
    v8 = sub_26133CA8C;
  }

  return MEMORY[0x2822009F8](v8);
}

uint64_t sub_26133CA8C()
{
  *(v0 + 624) = *(v0 + 616);
  v1 = *(v0 + 536);
  if (*(v1 + 16))
  {
    v2 = *(v0 + 568);
    v3 = sub_26129B5FC();
    sub_26125A870(v3, v2, &qword_27FE9F560, &qword_2613A3CB0);
    v4 = sub_2613A124C();
    v5 = *(v4 - 8);
    if ((*(v5 + 48))(v2, 1, v4) == 1)
    {
      sub_26124C718(*(v0 + 568), &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v15 = *(v0 + 568);
      v16 = sub_2613A122C();
      v17 = sub_2613A1D8C();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&dword_261243000, v16, v17, "[TransactionTask] card read was cancelled, skipping the read", v18, 2u);
        MEMORY[0x266701350](v18, -1, -1);
      }

      v19 = *(v0 + 568);

      (*(v5 + 8))(v19, v4);
    }

    v20 = *(v0 + 600);
    v21 = *(v0 + 576);
    v22 = *(v0 + 568);

    v23 = *(v0 + 8);

    return v23();
  }

  else
  {
    v6 = *(v0 + 75);
    v7 = swift_allocObject();
    *(v0 + 632) = v7;
    *(v7 + 16) = 0;
    v8 = *(v1 + 144);
    v9 = swift_allocObject();
    *(v0 + 640) = v9;
    *(v9 + 16) = v6;
    *(v9 + 24) = v1;
    *(v9 + 32) = v7;
    v10 = *(*v8 + 296);

    v24 = (v10 + *v10);
    v11 = v10[1];
    v12 = swift_task_alloc();
    *(v0 + 648) = v12;
    *v12 = v0;
    v12[1] = sub_26133D120;
    v13 = *(v0 + 74);

    return v24(v0 + 80, v13, sub_261344B44, v9);
  }
}

uint64_t sub_26133CDD8()
{
  *(v0 + 624) = 0;
  v1 = *(v0 + 536);
  if (*(v1 + 16))
  {
    v2 = *(v0 + 568);
    v3 = sub_26129B5FC();
    sub_26125A870(v3, v2, &qword_27FE9F560, &qword_2613A3CB0);
    v4 = sub_2613A124C();
    v5 = *(v4 - 8);
    if ((*(v5 + 48))(v2, 1, v4) == 1)
    {
      sub_26124C718(*(v0 + 568), &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v15 = *(v0 + 568);
      v16 = sub_2613A122C();
      v17 = sub_2613A1D8C();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&dword_261243000, v16, v17, "[TransactionTask] card read was cancelled, skipping the read", v18, 2u);
        MEMORY[0x266701350](v18, -1, -1);
      }

      v19 = *(v0 + 568);

      (*(v5 + 8))(v19, v4);
    }

    v20 = *(v0 + 600);
    v21 = *(v0 + 576);
    v22 = *(v0 + 568);

    v23 = *(v0 + 8);

    return v23();
  }

  else
  {
    v6 = *(v0 + 75);
    v7 = swift_allocObject();
    *(v0 + 632) = v7;
    *(v7 + 16) = 0;
    v8 = *(v1 + 144);
    v9 = swift_allocObject();
    *(v0 + 640) = v9;
    *(v9 + 16) = v6;
    *(v9 + 24) = v1;
    *(v9 + 32) = v7;
    v10 = *(*v8 + 296);

    v24 = (v10 + *v10);
    v11 = v10[1];
    v12 = swift_task_alloc();
    *(v0 + 648) = v12;
    *v12 = v0;
    v12[1] = sub_26133D120;
    v13 = *(v0 + 74);

    return v24(v0 + 80, v13, sub_261344B44, v9);
  }
}

uint64_t sub_26133D120()
{
  v1 = *(*v0 + 648);
  v2 = *(*v0 + 640);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_26133D238);
}

uint64_t sub_26133D238()
{
  v1 = *(v0 + 536);
  v2 = *(v0 + 96);
  *(v0 + 16) = *(v0 + 80);
  *(v0 + 32) = v2;
  *(v0 + 48) = *(v0 + 112);
  *(v0 + 57) = *(v0 + 121);
  if (*(v1 + 16))
  {
    v3 = *(v0 + 576);
    v4 = sub_26129B5FC();
    sub_26125A870(v4, v3, &qword_27FE9F560, &qword_2613A3CB0);
    v5 = sub_2613A124C();
    v6 = *(v5 - 8);
    v7 = (*(v6 + 48))(v3, 1, v5);
    v8 = *(v0 + 576);
    if (v7 == 1)
    {
      sub_26124C718(v0 + 16, &qword_27FEA0610, &qword_2613ACB20);
      sub_26124C718(v8, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v20 = sub_2613A122C();
      v21 = sub_2613A1D8C();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&dword_261243000, v20, v21, "[TransactionTask] card read was cancelled, skipping the read", v22, 2u);
        MEMORY[0x266701350](v22, -1, -1);
      }

      v23 = *(v0 + 576);
      sub_26124C718(v0 + 16, &qword_27FEA0610, &qword_2613ACB20);

      (*(v6 + 8))(v23, v5);
    }

    v24 = *(v0 + 632);
  }

  else
  {
    v30 = *(v0 + 632);
    v9 = *(v0 + 624);
    v10 = *(v0 + 560);
    v11 = *(v0 + 76);
    v12 = *(v0 + 74);
    v13 = *(v0 + 32);
    *(v0 + 400) = *(v0 + 16);
    *(v0 + 416) = v13;
    *(v0 + 432) = *(v0 + 48);
    *(v0 + 441) = *(v0 + 57);
    v14 = swift_task_alloc();
    v15 = *(v0 + 544);
    *(v14 + 16) = v30 + 16;
    *(v14 + 24) = v11;
    *(v14 + 32) = v1;
    *(v14 + 40) = v12;
    *(v14 + 48) = v15;
    *(v14 + 64) = v10;
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0610, &qword_2613ACB20);
    sub_26124A238(sub_261344BA8, v14, v16, v0 + 336);

    v17 = *(v0 + 352);
    *(v0 + 464) = *(v0 + 336);
    *(v0 + 480) = v17;
    *(v0 + 496) = *(v0 + 368);
    *(v0 + 505) = *(v0 + 377);
    sub_26124A42C(sub_261344BD8, v1, v16, v0 + 272);
    sub_26124C718(v0 + 16, &qword_27FEA0610, &qword_2613ACB20);
    v18 = *(v0 + 480);
    *(v0 + 208) = *(v0 + 464);
    *(v0 + 224) = v18;
    *(v0 + 240) = *(v0 + 496);
    *(v0 + 249) = *(v0 + 505);
    sub_26124C718(v0 + 208, &qword_27FEA0610, &qword_2613ACB20);
    v19 = *(v0 + 288);
    *(v0 + 144) = *(v0 + 272);
    *(v0 + 160) = v19;
    *(v0 + 176) = *(v0 + 304);
    *(v0 + 185) = *(v0 + 313);
    sub_26124C718(v0 + 144, &qword_27FEA0610, &qword_2613ACB20);
  }

  v25 = *(v0 + 600);
  v26 = *(v0 + 576);
  v27 = *(v0 + 568);

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_26133D5B4(uint64_t *a1, _BYTE *a2, char a3, uint64_t a4, char a5, void *a6, uint64_t a7, uint64_t a8)
{
  v69 = a7;
  v70 = a8;
  v74 = a6;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F280, &unk_2613A42B0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v66 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v72 = &v66 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v71 = &v66 - v22;
  v23 = *a1;
  v24 = a1[1];
  swift_beginAccess();
  if (*a2 & 1) == 0 && (a3)
  {
    v66 = v17;
    v67 = v24;
    v25 = *(a4 + 120);
    v26 = *(a4 + 128);
    __swift_project_boxed_opaque_existential_1((a4 + 96), v25);
    v68 = a4;
    v27 = *(a4 + 24);
    v29 = *(v27 + 64);
    v28 = *(v27 + 72);
    v30 = *(v26 + 56);

    v30(0, 0, a5 & 1, 0, v29, v28, v25, v26);
    if (v8)
    {

      v31 = sub_26129B5FC();
      v32 = v72;
      sub_26125A870(v31, v72, &qword_27FE9F560, &qword_2613A3CB0);
      v33 = sub_2613A124C();
      v34 = *(v33 - 8);
      v35 = (*(v34 + 48))(v32, 1, v33);
      v37 = v67;
      v36 = v68;
      v38 = v66;
      if (v35 == 1)
      {
        sub_26124C718(v32, &qword_27FE9F560, &qword_2613A3CB0);
      }

      else
      {
        v57 = v8;
        v58 = sub_2613A122C();
        v59 = sub_2613A1D8C();

        if (os_log_type_enabled(v58, v59))
        {
          v60 = swift_slowAlloc();
          v61 = swift_slowAlloc();
          *v60 = 138412290;
          v62 = v8;
          v36 = v68;
          v63 = _swift_stdlib_bridgeErrorToNSError();
          *(v60 + 4) = v63;
          *v61 = v63;
          _os_log_impl(&dword_261243000, v58, v59, "[TransactionTask] failed to prepare during retry: [ %@ ]", v60, 0xCu);
          sub_26124C718(v61, &qword_27FEA0410, &qword_2613AA780);
          v64 = v61;
          v37 = v67;
          MEMORY[0x266701350](v64, -1, -1);
          MEMORY[0x266701350](v60, -1, -1);
        }

        (*(v34 + 8))(v72, v33);
      }

      v65 = sub_26139F13C();
      (*(*(v65 - 8) + 56))(v38, 1, 1, v65);
      (*(*v36 + 352))(v38, v37, 17);

      return sub_26124C718(v38, &qword_27FE9F280, &unk_2613A42B0);
    }

    v24 = v67;
    a4 = v68;
  }

  v39 = *(v23 + 48);
  v40 = *(v23 + 56);
  v41 = *(a4 + 24);
  v42 = v41[8];
  v43 = v41[9];
  v44 = *(v24 + 80);
  v45 = v41[4];
  v46 = v41[5];

  sub_2612A77D4(v39, v40, v42, v43, v44, v45, v46, v74, v73);
  if (*(a4 + 16))
  {
    v47 = sub_26129B5FC();
    v48 = v71;
    sub_26125A870(v47, v71, &qword_27FE9F560, &qword_2613A3CB0);
    v49 = sub_2613A124C();
    v50 = *(v49 - 8);
    if ((*(v50 + 48))(v48, 1, v49) == 1)
    {
      sub_2612B47F8(v73);
      return sub_26124C718(v48, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v54 = sub_2613A122C();
      v55 = sub_2613A1D8C();
      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        *v56 = 0;
        _os_log_impl(&dword_261243000, v54, v55, "[TransactionTask] card read was cancelled, skipping the read", v56, 2u);
        MEMORY[0x266701350](v56, -1, -1);
      }

      sub_2612B47F8(v73);

      return (*(v50 + 8))(v48, v49);
    }
  }

  else
  {
    v52 = *(a4 + 120);
    v53 = *(a4 + 128);
    __swift_project_boxed_opaque_existential_1((a4 + 96), v52);
    (*(v53 + 72))(v73, v69, v70, v52, v53);
    return sub_2612B47F8(v73);
  }
}

id sub_26133DBCC(uint64_t *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v19 - v6;
  v8 = *a1;
  v9 = sub_26129B5FC();
  sub_26125A870(v9, v7, &qword_27FE9F560, &qword_2613A3CB0);
  v10 = sub_2613A124C();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v7, 1, v10) == 1)
  {
    sub_26124C718(v7, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v12 = sub_2613A122C();
    v13 = sub_2613A1D8C();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138412290;
      sub_2612B45EC();
      swift_allocError();
      *v16 = v8;
      v17 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 4) = v17;
      *v15 = v17;
      _os_log_impl(&dword_261243000, v12, v13, "[TransactionTask] failed to refresh session: [ %@ ]", v14, 0xCu);
      sub_26124C718(v15, &qword_27FEA0410, &qword_2613AA780);
      MEMORY[0x266701350](v15, -1, -1);
      MEMORY[0x266701350](v14, -1, -1);
    }

    (*(v11 + 8))(v7, v10);
  }

  (*(**(a2 + 48) + 536))(v8, 0);
  return [*(a2 + 88) updateWithTransactionEvent_];
}

uint64_t sub_26133DE40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F340, &unk_2613A4B40);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v21 - v10;
  ErrorEventData = type metadata accessor for ReadErrorEventData();
  v13 = *(*(ErrorEventData - 8) + 64);
  MEMORY[0x28223BE20](ErrorEventData - 8);
  v15 = (&v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *(v3 + 48);
  (*(*v16 + 536))(a3, 0);
  v17 = v16[2];
  v18 = type metadata accessor for TransactionData(0);
  (*(*(v18 - 8) + 56))(v11, 1, 1, v18);
  v19 = v17;

  sub_2612B5C88(v19, a2, a3, v11, v15);
  sub_261340E08(a1, v15);
  [*(v4 + 88) updateWithTransactionEvent_];
  return sub_261345C6C(v15, type metadata accessor for ReadErrorEventData);
}

uint64_t sub_26133E014()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v24 - v3;
  v5 = swift_allocObject();
  swift_weakInit();
  v6 = *(**(v0 + 48) + 528);

  v8 = v6(v7);
  if (v9)
  {

    v10 = *(v0 + 152);
    if (v10)
    {
      v11 = *(*v10 + 144);

      v11(sub_2613449E4, v5);
    }
  }

  else
  {
    v13 = v8;
    v14 = sub_26129B5FC();
    sub_26125A870(v14, v4, &qword_27FE9F560, &qword_2613A3CB0);
    v15 = sub_2613A124C();
    v16 = *(v15 - 8);
    if ((*(v16 + 48))(v4, 1, v15) == 1)
    {
      sub_26124C718(v4, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v17 = sub_2613A122C();
      v18 = sub_2613A1D9C();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v24 = v13;
        v25 = v20;
        *v19 = 136315138;
        sub_2612B45EC();
        v21 = sub_2613A24FC();
        v23 = sub_26124C11C(v21, v22, &v25);

        *(v19 + 4) = v23;
        _os_log_impl(&dword_261243000, v17, v18, "[TransactionTask] pinAuthNeeded skipped due to %s", v19, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v20);
        MEMORY[0x266701350](v20, -1, -1);
        MEMORY[0x266701350](v19, -1, -1);
      }

      (*(v16 + 8))(v4, v15);
    }

    sub_26133E340();
  }
}

uint64_t sub_26133E340()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F340, &unk_2613A4B40);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v31 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA04F8, &qword_2613AC6F0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v31 - v6;
  v8 = sub_26139F95C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v31 - v15;
  v17 = sub_26129B5FC();
  sub_26125A870(v17, v16, &qword_27FE9F560, &qword_2613A3CB0);
  v18 = sub_2613A124C();
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v16, 1, v18) == 1)
  {
    sub_26124C718(v16, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v33 = v9;
    v20 = sub_2613A122C();
    v21 = sub_2613A1D9C();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v32 = v3;
      v23 = v22;
      *v22 = 0;
      _os_log_impl(&dword_261243000, v20, v21, "[TransactionTask] pinAuthNeeded cleanup handler called", v22, 2u);
      v24 = v23;
      v3 = v32;
      MEMORY[0x266701350](v24, -1, -1);
    }

    (*(v19 + 8))(v16, v18);
    v9 = v33;
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v26 = result;
    (*(**(result + 24) + 136))();
    if ((*(v9 + 48))(v7, 1, v8) == 1)
    {
      sub_26124C718(v7, &qword_27FEA04F8, &qword_2613AC6F0);
    }

    else
    {
      (*(v9 + 32))(v12, v7, v8);
      v27 = sub_26139F94C();
      (*(v9 + 8))(v12, v8);
      if (v27)
      {
      }
    }

    v28 = *(**(v26 + 48) + 560);

    v28(0, 0xF000000000000000);

    v29 = *(v26 + 48);
    v30 = type metadata accessor for TransactionData(0);
    (*(*(v30 - 8) + 56))(v3, 1, 1, v30);
    (*(*v29 + 488))(v3);
  }

  return result;
}

uint64_t sub_26133E7B8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_26139F13C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  result = MEMORY[0x28223BE20](v8);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    result = (*(**(v4 + 48) + 536))(30, 0);
  }

  v14 = *(v4 + 152);
  if (v14)
  {
    v15 = *(*(v4 + 48) + 16);
    v16 = *(v4 + 152);

    v17 = v15;
    sub_26139FCEC();

    (*(*v14 + 152))(v13, a1, a2);

    return (*(v9 + 8))(v13, v8);
  }

  return result;
}

id sub_26133E934(void *a1)
{
  v2 = v1;
  v99 = a1;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9FC30, &unk_2613A9E80);
  v3 = *(*(v90 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v90);
  v92 = &v85 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v91 = &v85 - v7;
  MEMORY[0x28223BE20](v6);
  v96 = &v85 - v8;
  v95 = sub_26139F64C();
  v94 = *(v95 - 8);
  v9 = *(v94 + 64);
  MEMORY[0x28223BE20](v95);
  v93 = &v85 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_26139F13C();
  v98 = *(v11 - 8);
  v12 = *(v98 + 64);
  MEMORY[0x28223BE20](v11);
  v97 = &v85 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F280, &unk_2613A42B0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v89 = &v85 - v16;
  v17 = type metadata accessor for ReaderEvent(0);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v85 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v85 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v27 = &v85 - v26;
  v28 = sub_26129B5FC();
  sub_26125A870(v28, v27, &qword_27FE9F560, &qword_2613A3CB0);
  v29 = sub_2613A124C();
  v30 = *(v29 - 8);
  if ((*(v30 + 48))(v27, 1, v29) == 1)
  {
    sub_26124C718(v27, &qword_27FE9F560, &qword_2613A3CB0);
    v31 = v99;
  }

  else
  {
    v87 = v11;
    v88 = v1;
    v31 = v99;
    sub_261345CCC(v99, v23, type metadata accessor for ReaderEvent);
    v32 = sub_2613A122C();
    v33 = sub_2613A1D9C();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      *&v104[0] = v86;
      *v34 = 136315138;
      sub_261345E5C(&qword_27FE9FDC0, type metadata accessor for ReaderEvent);
      v35 = sub_2613A23EC();
      v37 = v36;
      sub_261345C6C(v23, type metadata accessor for ReaderEvent);
      v38 = sub_26124C11C(v35, v37, v104);

      *(v34 + 4) = v38;
      _os_log_impl(&dword_261243000, v32, v33, "[TransactionTask] ReadEvent: [ %s ]", v34, 0xCu);
      v39 = v86;
      __swift_destroy_boxed_opaque_existential_0Tm(v86);
      MEMORY[0x266701350](v39, -1, -1);
      v40 = v34;
      v31 = v99;
      MEMORY[0x266701350](v40, -1, -1);
    }

    else
    {

      sub_261345C6C(v23, type metadata accessor for ReaderEvent);
    }

    (*(v30 + 8))(v27, v29);
    v2 = v88;
    v11 = v87;
  }

  sub_261345CCC(v31, v21, type metadata accessor for ReaderEvent);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9FBD0, &qword_2613AAAB0);
  result = (*(*(v41 - 8) + 48))(v21, 10, v41);
  if (result <= 4)
  {
    if (result <= 1)
    {
      if (result)
      {
        v60 = *(v2 + 48);
        (*(*v60 + 464))(1);
        [*(v2 + 88) updateWithTransactionEvent_];
        v61 = *(v2 + 80);
        (*(v2 + 72))(0);
        v62 = *(v2 + 24);
        result = sub_26125B314(*(v62 + 64), *(v62 + 72));
        if (result)
        {
          v63 = (*(*result + 376))();
          if (v63)
          {
            v64 = v63;
            if (*(v2 + 136))
            {
              v65 = v60[2];
              v66 = *(*v60 + 264);
              v99 = v63;
              v67 = v65;
              v68 = v66();
              v64 = v99;
              sub_2613956FC(v99, v67, v68, v69);
            }

            v70 = *(v62 + 72);
            v99 = *(v62 + 64);
            v71 = *(*v60 + 312);

            v73 = v64;
            v74 = v89;
            v71(v72);
            (*(v98 + 56))(v74, 0, 1, v11);
            v75 = *(v2 + 160);
            v76 = *(v2 + 168);

            sub_2612B69B0(v99, v70, v73, v60, v74, v75, v76, v104);
            v101 = &type metadata for ReadStarted;
            v102 = sub_261345D90();
            v77 = swift_allocObject();
            *&v100 = v77;
            v78 = v104[7];
            v77[7] = v104[6];
            v77[8] = v78;
            v77[9] = v104[8];
            v79 = v104[3];
            v77[3] = v104[2];
            v77[4] = v79;
            v80 = v104[5];
            v77[5] = v104[4];
            v77[6] = v80;
            v81 = v104[1];
            v77[1] = v104[0];
            v77[2] = v81;
            sub_2612B64A4(10, &v100, v103);
            v82 = *(v2 + 120);
            v83 = *(v2 + 128);
            __swift_project_boxed_opaque_existential_1((v2 + 96), v82);
            (*(v83 + 120))(v103, v82, v83);

            return sub_2612A0E50(v103);
          }

          else
          {
          }
        }
      }

      else
      {
        v47 = v96;
        sub_2612CD008(v21, v96);
        v48 = sub_26133FC48();
        if (v48)
        {
          v49 = MEMORY[0x28223BE20](v48);
          *(&v85 - 4) = v2;
          *(&v85 - 3) = v50;
          *(&v85 - 2) = v49;
          v51 = v92;
          v52 = v50;
          v53 = v90;
          v54 = sub_26124A238(sub_261345D34, (&v85 - 6), v90, v92);
          MEMORY[0x28223BE20](v54);
          *(&v85 - 2) = v2;
          *(&v85 - 1) = v52;
          v55 = v91;
          sub_26124A42C(sub_261345D64, (&v85 - 4), v53, v91);

          sub_26124C718(v51, &qword_27FE9FC30, &unk_2613A9E80);
          sub_26124C718(v55, &qword_27FE9FC30, &unk_2613A9E80);
        }

        return sub_26124C718(v47, &qword_27FE9FC30, &unk_2613A9E80);
      }
    }

    else if (result == 2)
    {
      if (*(v2 + 136))
      {
        v56 = *(*(v2 + 48) + 16);
        v57 = v97;
        sub_26139FCEC();

        sub_261395F70(v57);
        (*(v98 + 8))(v57, v11);
      }

      [*(v2 + 88) updateWithTransactionEvent_];
      v58 = *(v2 + 80);
      return (*(v2 + 72))(1);
    }

    else if (result == 3)
    {
      v45 = *(v2 + 80);
      return (*(v2 + 72))(5);
    }
  }

  else if (result > 7)
  {
    if (result == 8)
    {
      return result;
    }

    if (result == 9)
    {
      [*(v2 + 88) updateWithTransactionEvent_];
LABEL_21:
      v46 = *(v2 + 80);
      return (*(v2 + 72))(4);
    }

    (*(**(v2 + 48) + 440))(1);
    v84 = v93;
    sub_26139F5EC();
    sub_26139F5DC();
    (*(v94 + 8))(v84, v95);
    return [*(v2 + 88) updateWithTransactionEvent_];
  }

  else
  {
    if (result != 5)
    {
      if (result == 6)
      {
        if (*(v2 + 136))
        {
          v43 = *(*(v2 + 48) + 16);
          v44 = v97;
          sub_26139FCEC();

          sub_261395FA8(v44);
          (*(v98 + 8))(v44, v11);
        }
      }

      [*(v2 + 88) updateWithTransactionEvent_];
      goto LABEL_21;
    }

    [*(v2 + 88) updateWithTransactionEvent_];
    v59 = *(v2 + 80);
    return (*(v2 + 72))(2);
  }

  return result;
}

uint64_t sub_26133F55C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v50 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F340, &unk_2613A4B40);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v42[-v9];
  v11 = sub_26139F13C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v42[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v42[-v18];
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F280, &unk_2613A42B0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = &v42[-v22];
  v24 = type metadata accessor for TransactionData(0);
  v25 = a1 + *(v24 + 100);
  if (*(v25 + 8) < 0xFCu)
  {
    v27 = v24;
    LODWORD(v50) = *(v25 + 8);
    v47 = a1;
    v48 = v11;
    v49 = a3;
    v46 = a2;
    v28 = *v25;
    v29 = sub_26129B5FC();
    sub_26125A870(v29, v19, &qword_27FE9F560, &qword_2613A3CB0);
    v30 = sub_2613A124C();
    v31 = *(v30 - 8);
    if ((*(v31 + 48))(v19, 1, v30) == 1)
    {
      v32 = sub_26124C718(v19, &qword_27FE9F560, &qword_2613A3CB0);
      v33 = v48;
    }

    else
    {
      v45 = v28;
      v34 = sub_2613A122C();
      v35 = sub_2613A1D9C();
      v44 = v34;
      v36 = os_log_type_enabled(v34, v35);
      v33 = v48;
      if (v36)
      {
        v37 = swift_slowAlloc();
        v43 = v35;
        v38 = v37;
        v39 = swift_slowAlloc();
        *v38 = 138412290;
        sub_2612B48D8();
        swift_allocError();
        *v40 = v45;
        *(v40 + 8) = v50;
        v41 = _swift_stdlib_bridgeErrorToNSError();
        *(v38 + 4) = v41;
        *v39 = v41;
        _os_log_impl(&dword_261243000, v44, v43, "[TransactionTask] data returned with error: %@", v38, 0xCu);
        sub_26124C718(v39, &qword_27FEA0410, &qword_2613AA780);
        MEMORY[0x266701350](v39, -1, -1);
        MEMORY[0x266701350](v38, -1, -1);
      }

      v32 = (*(v31 + 8))(v19, v30);
      v28 = v45;
    }

    (*(**(v46 + 48) + 312))(v32);
    sub_261345CCC(v47, v10, type metadata accessor for TransactionData);
    (*(*(v27 - 8) + 56))(v10, 0, 1, v27);
    sub_2613404F0(v15, v49, v28, v50, v10);
    sub_26124C718(v10, &qword_27FE9F340, &unk_2613A4B40);
    return (*(v12 + 8))(v15, v33);
  }

  else
  {
    (*(**(a2 + 48) + 312))();
    (*(v12 + 56))(v23, 0, 1, v11);
    sub_261341328(v23, a3, v50, a1);
    return sub_26124C718(v23, &qword_27FE9F280, &unk_2613A42B0);
  }
}

uint64_t sub_26133FA54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F340, &unk_2613A4B40);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v20 - v8;
  v10 = sub_26139F13C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_26133FEC4(*a1, *(a1 + 8));
  if (v16 <= 0xFBu)
  {
    v17 = result;
    v18 = v16;
    (*(**(a2 + 48) + 312))();
    v19 = type metadata accessor for TransactionData(0);
    (*(*(v19 - 8) + 56))(v9, 1, 1, v19);
    sub_2613404F0(v14, a3, v17, v18, v9);
    sub_26124C718(v9, &qword_27FE9F340, &unk_2613A4B40);
    return (*(v11 + 8))(v14, v10);
  }

  return result;
}

uint64_t sub_26133FC48()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v18 - v4;
  v6 = *(v0 + 24);
  v7 = sub_26125B314(*(v6 + 64), *(v6 + 72));
  if (v7)
  {
    v8 = v7;
    if ((*(*v7 + 376))(v7))
    {
      return v8;
    }
  }

  v9 = sub_26129B5FC();
  sub_26125A870(v9, v5, &qword_27FE9F560, &qword_2613A3CB0);
  v10 = sub_2613A124C();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v5, 1, v10) == 1)
  {
    sub_26124C718(v5, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v12 = sub_2613A122C();
    v13 = sub_2613A1D8C();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_261243000, v12, v13, "[TransactionTask] failed to load session store after read completed", v14, 2u);
      MEMORY[0x266701350](v14, -1, -1);
    }

    (*(v11 + 8))(v5, v10);
  }

  v15 = *(v6 + 64);
  v16 = *(v6 + 72);

  sub_26125B3FC(v15, v16);

  (*(**(v1 + 48) + 536))(4, 0);
  [*(v1 + 88) updateWithTransactionEvent_];
  return 0;
}

uint64_t sub_26133FEC4(uint64_t a1, unsigned __int8 a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v39 - v8;
  v10 = a2 >> 6;
  if (v10 != 1)
  {
    if (v10 != 2 || a1 != 4 || a2 != 128)
    {
      return a1;
    }

    v11 = *(v3 + 48);
    result = (*(*v11 + 400))(v42);
    if (!__OFADD__(*v13, 1))
    {
      ++*v13;
      v14 = (result)(v42, 0);
      v15 = *(*v11 + 384);
      v16 = v15(v14);
      if (v16 == 1)
      {
        v16 = [*(v3 + 88) updateWithTransactionEvent_];
      }

      if (v15(v16) >= 6 || ((*(*v11 + 456))() & 1) != 0)
      {
        return 4;
      }

      v19 = 0;
      v23 = 0;
      v20 = 1.0;
LABEL_25:
      v25 = sub_26129B5FC();
      sub_26125A870(v25, v9, &qword_27FE9F560, &qword_2613A3CB0);
      v26 = sub_2613A124C();
      v27 = *(v26 - 8);
      if ((*(v27 + 48))(v9, 1, v26) == 1)
      {
        sub_26124C718(v9, &qword_27FE9F560, &qword_2613A3CB0);
      }

      else
      {

        v28 = sub_2613A122C();
        v29 = sub_2613A1D9C();

        if (os_log_type_enabled(v28, v29))
        {
          v30 = swift_slowAlloc();
          v40 = v23;
          v31 = v30;
          v32 = swift_slowAlloc();
          v41 = v19;
          v33 = v32;
          v42[0] = v32;
          *v31 = 136315138;
          v34 = (*(*v11 + 616))();
          v36 = sub_26124C11C(v34, v35, v42);

          *(v31 + 4) = v36;
          _os_log_impl(&dword_261243000, v28, v29, "[TransactionTask] silent retry: %s", v31, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v33);
          v37 = v33;
          v19 = v41;
          MEMORY[0x266701350](v37, -1, -1);
          v38 = v31;
          v23 = v40;
          MEMORY[0x266701350](v38, -1, -1);
        }

        (*(v27 + 8))(v9, v26);
      }

      (*(*v3 + 344))(1, 1, v23, v19, v20);
      return 0;
    }

    __break(1u);
    goto LABEL_34;
  }

  if ((a2 & 0x3F) == 0)
  {
    v11 = *(v3 + 48);
    result = (*(*v11 + 376))(v42);
    if (__OFADD__(*v21, 1))
    {
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    ++*v21;
    v22 = (result)(v42, 0);
    if ((*(*v11 + 360))(v22) >= 2)
    {
      return a1;
    }

    v20 = 0.5;
    v19 = 1;
LABEL_21:
    v23 = 1;
    goto LABEL_25;
  }

  if ((a2 & 0x3F) != 2)
  {
    return a1;
  }

  if (a1 != 2)
  {
    if (a1)
    {
      return a1;
    }

    v11 = *(v3 + 48);
    result = (*(*v11 + 352))(v42);
    if (__OFADD__(*v17, 1))
    {
      goto LABEL_35;
    }

    ++*v17;
    v18 = (result)(v42, 0);
    if ((*(*v11 + 336))(v18) >= 2)
    {
      return 0;
    }

    v19 = 0;
    v20 = 0.5;
    goto LABEL_21;
  }

  v11 = *(v3 + 48);
  result = (*(*v11 + 424))(v42);
  if (!__OFADD__(*v24, 1))
  {
    ++*v24;
    (result)(v42, 0);
    v19 = 0;
    v23 = 0;
    v20 = 0.5;
    goto LABEL_25;
  }

LABEL_36:
  __break(1u);
  return result;
}

uint64_t sub_2613404F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v68 = a5;
  v65 = a2;
  v66 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F280, &unk_2613A42B0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v61 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F340, &unk_2613A4B40);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v61 - v15;
  ErrorEventData = type metadata accessor for ReadErrorEventData();
  v18 = *(*(ErrorEventData - 8) + 64);
  MEMORY[0x28223BE20](ErrorEventData - 8);
  v69 = (&v61 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20 - 8);
  v24 = &v61 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = &v61 - v25;
  v64 = a3;
  v67 = a4;
  if (sub_2612CA6AC(a3, a4, 2, 128))
  {
    v27 = sub_26129B5FC();
    sub_26125A870(v27, v26, &qword_27FE9F560, &qword_2613A3CB0);
    v28 = sub_2613A124C();
    v29 = *(v28 - 8);
    v62 = *(v29 + 48);
    v63 = v29;
    if ((v62)(v26, 1, v28) == 1)
    {
      sub_26124C718(v26, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v61 = v27;
      v30 = v24;
      v31 = sub_2613A122C();
      v32 = sub_2613A1D9C();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&dword_261243000, v31, v32, "[TransactionTask] config needed, invalidating session", v33, 2u);
        MEMORY[0x266701350](v33, -1, -1);
      }

      (*(v63 + 8))(v26, v28);
      v24 = v30;
      v27 = v61;
    }

    v34 = *(v6 + 24);
    v35 = *(v34 + 64);
    v36 = *(v34 + 72);

    LOBYTE(v35) = sub_26125B3FC(v35, v36);

    if (v35)
    {
      sub_26125A870(v27, v24, &qword_27FE9F560, &qword_2613A3CB0);
      if ((v62)(v24, 1, v28) == 1)
      {
        sub_26124C718(v24, &qword_27FE9F560, &qword_2613A3CB0);
      }

      else
      {

        v37 = sub_2613A122C();
        v38 = sub_2613A1D9C();

        if (os_log_type_enabled(v37, v38))
        {
          v39 = swift_slowAlloc();
          v62 = v24;
          v40 = v39;
          v41 = swift_slowAlloc();
          v70 = v41;
          *v40 = 136315138;
          v42 = *(v34 + 64);
          v43 = *(v34 + 72);

          v44 = sub_26124C11C(v42, v43, &v70);

          *(v40 + 4) = v44;
          _os_log_impl(&dword_261243000, v37, v38, "[TransactionTask] existing session deleted: %s", v40, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v41);
          MEMORY[0x266701350](v41, -1, -1);
          v45 = v40;
          v24 = v62;
          MEMORY[0x266701350](v45, -1, -1);
        }

        (*(v63 + 8))(v24, v28);
      }
    }
  }

  v46 = *(v6 + 48);
  v47 = *(*v46 + 36);
  v48 = v46[2];
  v49 = v65;

  v47(v50);
  v51 = v68;
  sub_26125A870(v68, v16, &qword_27FE9F340, &unk_2613A4B40);
  v52 = v69;
  v53 = v48;
  v54 = v49;
  v55 = v64;
  v56 = v67;
  sub_2612B5BF0(v53, v54, v64, v67, v16, v69);
  v57 = sub_26139F13C();
  v58 = *(v57 - 8);
  (*(v58 + 16))(v12, v66, v57);
  (*(v58 + 56))(v12, 0, 1, v57);
  sub_261340E08(v12, v52);
  sub_26124C718(v12, &qword_27FE9F280, &unk_2613A42B0);
  if (sub_2612CA6AC(v55, v56, 9, 128))
  {
    v59 = *(v6 + 80);
    (*(v6 + 72))(4);
    (*(*v6 + 344))(1, 0, 0, 0, 0.5);
  }

  else
  {
    sub_26125A870(v51, v16, &qword_27FE9F340, &unk_2613A4B40);
    (*(*v46 + 61))(v16);
    (*(*v46 + 64))(v55, v56);
  }

  [*(v6 + 88) updateWithTransactionEvent_];
  return sub_261345C6C(v52, type metadata accessor for ReadErrorEventData);
}

uint64_t sub_261340C08(unint64_t a1, unsigned __int8 a2)
{
  if (!(a2 >> 6))
  {
    return 19;
  }

  if (a2 >> 6 == 1)
  {
    return 12;
  }

  if (__PAIR128__(-128, 5) >= __PAIR128__(a2, a1))
  {
    if (__PAIR128__(-128, 2) >= __PAIR128__(a2, a1))
    {
      return 12;
    }

    if (a2 == 128 && a1 == 3)
    {
      return 14;
    }

    if (a2 == 128 && a1 == 4)
    {
      return 15;
    }

LABEL_29:
    v8 = v2;
    v9 = *(v2 + 48);
    result = (*(*v9 + 304))(v12);
    if (__OFADD__(*v10, 1))
    {
      __break(1u);
    }

    else
    {
      ++*v10;
      v11 = (result)(v12, 0);
      if ((*(*v9 + 288))(v11) <= 1)
      {
        (*(*v8 + 344))(1, 0, 0, 0, 2.0);
        return 7;
      }

      else
      {
        return 13;
      }
    }

    return result;
  }

  if (__PAIR128__(-128, 8) < __PAIR128__(a2, a1))
  {
    if (__PAIR128__(((a1 >= 0xA) + a2 + 127), a1 - 10) >= 2)
    {
      return 10;
    }

    goto LABEL_29;
  }

  if (a2 == 128 && a1 == 6)
  {
    return 11;
  }

  if (a2 == 128 && a1 == 7)
  {
    return 16;
  }

  else
  {
    return 17;
  }
}

uint64_t sub_261340E08(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F340, &unk_2613A4B40);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v64 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F280, &unk_2613A42B0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v64 - v16;
  if (v2[17])
  {
    v18 = v2[6];
    v19 = (*(*v18 + 456))(v15);
    v66 = a2;
    v20 = v19;
    v21 = (*(*v18 + 264))();
    v22 = v17;
    v23 = v3;
    v24 = v9;
    v25 = v14;
    v26 = a1;
    v28 = v27;
    LOBYTE(v27) = v20 & 1;
    a2 = v66;
    sub_2613965D4(v66, v27, v21, v28);
    a1 = v26;
    v14 = v25;
    v9 = v24;
    v3 = v23;
    v17 = v22;
  }

  if (*(a2 + 48) == 1)
  {
    v29 = v3[3];
    v30 = *(v29 + 64);
    v31 = *(v29 + 72);
    v32 = a2[1];
    v33 = v3[6];
    v34 = v3[21] != 0;
    sub_26125A870(a1, v17, &qword_27FE9F280, &unk_2613A42B0);

    sub_2612B8198(v30, v31, v32, v33, v34, v17, &v72);
    v71[3] = &type metadata for ReadCanceled;
    v71[4] = sub_261344C58();
    v35 = swift_allocObject();
    v71[0] = v35;
    v36 = v79;
    v35[7] = v78;
    v35[8] = v36;
    v35[9] = v80;
    v37 = v75;
    v35[3] = v74;
    v35[4] = v37;
    v38 = v77;
    v35[5] = v76;
    v35[6] = v38;
    v39 = v73;
    v35[1] = v72;
    v35[2] = v39;
    v40 = 13;
  }

  else
  {
    v41 = v3[3];
    v42 = *(v41 + 64);
    v43 = *(v41 + 72);
    v44 = a2[1];
    v45 = a2;
    v46 = *(v3[6] + 16);
    v47 = v45[5];
    v65 = v45[4];
    v66 = v42;
    v64 = v3[21];
    sub_26125A870(a1, v14, &qword_27FE9F280, &unk_2613A42B0);
    ErrorEventData = type metadata accessor for ReadErrorEventData();
    sub_26125A870(v45 + *(ErrorEventData + 36), v9, &qword_27FE9F340, &unk_2613A4B40);
    v49 = type metadata accessor for TransactionData(0);
    if ((*(*(v49 - 8) + 48))(v9, 1, v49) == 1)
    {

      v50 = v46;

      sub_26124C718(v9, &qword_27FE9F340, &unk_2613A4B40);
      v51 = 0;
      v52 = 0;
    }

    else
    {
      v53 = &v9[*(v49 + 20)];
      v51 = *v53;
      v52 = v53[1];

      v54 = v46;

      sub_261345C6C(v9, type metadata accessor for TransactionData);
    }

    sub_2612B7948(v66, v43, v44, v46, v65, v47, v64 != 0, v14, &v72, v51, v52);
    v69 = &type metadata for ReadFailed;
    v70 = sub_261344C04();
    v55 = swift_allocObject();
    *&v68 = v55;
    v56 = v81;
    v55[9] = v80;
    v55[10] = v56;
    v55[11] = v82;
    v57 = v77;
    v55[5] = v76;
    v55[6] = v57;
    v58 = v79;
    v55[7] = v78;
    v55[8] = v58;
    v59 = v73;
    v55[1] = v72;
    v55[2] = v59;
    v60 = v75;
    v55[3] = v74;
    v55[4] = v60;
    sub_26124A200(&v68, v71);
    v40 = 12;
  }

  sub_2612B5A20(v71, v67);
  sub_2612B64A4(v40, v67, &v68);
  v61 = v3[15];
  v62 = v3[16];
  __swift_project_boxed_opaque_existential_1(v3 + 12, v61);
  (*(v62 + 120))(&v68, v61, v62);
  sub_2612A0E50(&v68);
  return __swift_destroy_boxed_opaque_existential_0Tm(v71);
}

uint64_t sub_261341328(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v221 = a3;
  v231 = a2;
  v232 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA04F8, &qword_2613AC6F0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v215 = &v195 - v9;
  v214 = sub_26139F95C();
  v213 = *(v214 - 8);
  v10 = *(v213 + 64);
  MEMORY[0x28223BE20](v214);
  v204 = &v195 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  ErrorEventData = type metadata accessor for ReadErrorEventData();
  v13 = *(*(ErrorEventData - 8) + 64);
  MEMORY[0x28223BE20](ErrorEventData - 8);
  v202 = (&v195 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v219 = sub_26139F64C();
  v218 = *(v219 - 8);
  v15 = *(v218 + 64);
  MEMORY[0x28223BE20](v219);
  v217 = &v195 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v203 = &v195 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v211 = &v195 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v209 = &v195 - v24;
  MEMORY[0x28223BE20](v23);
  v233 = &v195 - v25;
  v238 = sub_26139F1CC();
  v240 = *(v238 - 8);
  v26 = *(v240 + 64);
  MEMORY[0x28223BE20](v238);
  v235 = &v195 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F338, &unk_2613A4630);
  v29 = *(*(v28 - 8) + 64);
  v30 = MEMORY[0x28223BE20](v28 - 8);
  v212 = &v195 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v30);
  v210 = &v195 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v228 = &v195 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v206 = &v195 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v225 = &v195 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v236 = &v195 - v41;
  MEMORY[0x28223BE20](v40);
  v43 = &v195 - v42;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F3B8, &qword_2613A4828);
  v45 = *(*(v44 - 8) + 64);
  v46 = MEMORY[0x28223BE20](v44 - 8);
  v230 = &v195 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v46);
  v239 = &v195 - v48;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F280, &unk_2613A42B0);
  v50 = *(*(v49 - 8) + 64);
  MEMORY[0x28223BE20](v49 - 8);
  v52 = &v195 - v51;
  v53 = type metadata accessor for TransactionData(0);
  v54 = *(v53 - 8);
  v55 = *(v54 + 64);
  v56 = MEMORY[0x28223BE20](v53);
  v224 = &v195 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v56);
  v59 = &v195 - v58;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F340, &unk_2613A4B40);
  v61 = *(*(v60 - 8) + 64);
  MEMORY[0x28223BE20](v60 - 8);
  v63 = &v195 - v62;
  v64 = v5[6];
  sub_261345CCC(a4, &v195 - v62, type metadata accessor for TransactionData);
  v65 = *(v54 + 56);
  v237 = v53;
  v201 = v54 + 56;
  v199 = v65;
  v65(v63, 0, 1, v53);
  v66 = *(*v64 + 61);
  v200 = v63;
  v66(v63);
  (*(*v64 + 64))(0, 252);
  v67 = v5[3];
  v68 = *(v67 + 64);
  v69 = *(v67 + 72);
  v223 = v67;
  v70 = a4;
  v71 = a4;
  v72 = v5;
  sub_261345CCC(v70, v59, type metadata accessor for TransactionData);
  v73 = v5[21] != 0;
  sub_26125A870(v232, v52, &qword_27FE9F280, &unk_2613A42B0);

  v74 = v231;

  sub_2612B714C(v68, v69, v74, v64, v59, v73, v52, v245);
  v242 = &type metadata for ReadCompleted;
  v243 = sub_261344AA4();
  v75 = swift_allocObject();
  v76 = v245[7];
  v77 = v245[8];
  v78 = v245[5];
  v75[7] = v245[6];
  v75[8] = v76;
  v79 = v245[9];
  v75[9] = v77;
  v75[10] = v79;
  v80 = v245[3];
  v81 = v245[4];
  v75[3] = v245[2];
  v75[4] = v80;
  *&v241 = v75;
  v75[5] = v81;
  v75[6] = v78;
  v82 = v245[1];
  v75[1] = v245[0];
  v75[2] = v82;
  sub_2612B64A4(11, &v241, v244);
  v83 = v72[15];
  v84 = v72[16];
  __swift_project_boxed_opaque_existential_1(v72 + 12, v83);
  (*(v84 + 120))(v244, v83, v84);
  v85 = v72[17];
  if (v85)
  {
    v86 = v64[2];
    sub_261396250(v71, v86);
  }

  v205 = v85;
  v229 = v72[11];
  [v229 updateWithTransactionEvent_];
  v87 = *(*v72 + 432);
  v234 = v71;
  v88 = v87(v71);
  v89 = (*v64 + 216);
  v208 = *v89;
  v207 = v89;
  v208(v88);
  v90 = v240;
  v91 = v238;
  v227 = *(v240 + 48);
  if (v227(v43, 1, v238))
  {
    sub_26124C718(v43, &qword_27FE9F338, &unk_2613A4630);
    v92 = sub_26139F19C();
    v93 = v230;
    (*(*(v92 - 8) + 56))(v230, 1, 1, v92);
    v94 = v236;
  }

  else
  {
    v95 = v235;
    (*(v90 + 16))(v235, v43, v91);
    sub_26124C718(v43, &qword_27FE9F338, &unk_2613A4630);
    v93 = v230;
    sub_26139F1AC();
    v220 = *(v90 + 8);
    v220(v95, v91);
    v92 = sub_26139F19C();
    v96 = *(v92 - 8);
    v97 = (*(v96 + 48))(v93, 1, v92);
    v94 = v236;
    if (v97 != 1)
    {
      v98 = v239;
      (*(v96 + 32))(v239, v93, v92);
      (*(v96 + 56))(v98, 0, 1, v92);
      goto LABEL_9;
    }
  }

  v98 = v239;
  v99 = v235;
  sub_26139F1BC();
  sub_26139F1AC();
  v220 = *(v240 + 8);
  v220(v99, v91);
  sub_26139F19C();
  if ((*(*(v92 - 8) + 48))(v93, 1, v92) != 1)
  {
    sub_26124C718(v93, &qword_27FE9F3B8, &qword_2613A4828);
  }

LABEL_9:
  v100 = v234;
  v101 = v233;
  sub_26139F7CC();
  v102 = v237;
  v103 = (v100 + v237[27]);
  v104 = *v103;
  v105 = v103[1];
  sub_26139F79C();
  v216 = sub_26129B5FC();
  sub_26125A870(v216, v101, &qword_27FE9F560, &qword_2613A3CB0);
  v106 = sub_2613A124C();
  v226 = *(v106 - 8);
  v108 = v226 + 48;
  v107 = *(v226 + 48);
  v230 = v106;
  v222 = v107;
  if ((v107)(v101, 1) == 1)
  {
    sub_26124C718(v101, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v198 = v108;
    v109 = v94;
    v110 = v94;
    v111 = v225;
    sub_26125A870(v110, v225, &qword_27FE9F338, &unk_2613A4630);
    v112 = v224;
    sub_261345CCC(v100, v224, type metadata accessor for TransactionData);
    v113 = sub_2613A122C();
    v114 = sub_2613A1D9C();
    if (os_log_type_enabled(v113, v114))
    {
      v197 = v114;
      v115 = swift_slowAlloc();
      v196 = swift_slowAlloc();
      *&v241 = v196;
      *v115 = 136315395;
      v116 = v206;
      sub_26125A870(v111, v206, &qword_27FE9F338, &unk_2613A4630);
      v117 = v238;
      if (v227(v116, 1, v238) == 1)
      {
        sub_26124C718(v116, &qword_27FE9F338, &unk_2613A4630);
        v118 = 0;
        v119 = 0xE000000000000000;
      }

      else
      {
        v120 = v116;
        v118 = sub_26139F15C();
        v119 = v121;
        v220(v120, v117);
      }

      v122 = v224;
      sub_26124C718(v225, &qword_27FE9F338, &unk_2613A4630);
      v123 = sub_26124C11C(v118, v119, &v241);

      *(v115 + 4) = v123;
      *(v115 + 12) = 2081;
      v124 = (v122 + v237[27]);
      v125 = *v124;
      v126 = v124[1];

      sub_261345C6C(v122, type metadata accessor for TransactionData);
      v127 = sub_26124C11C(v125, v126, &v241);

      *(v115 + 14) = v127;
      _os_log_impl(&dword_261243000, v113, v197, "resolved card preferred locale:%s from %{private}s", v115, 0x16u);
      v128 = v196;
      swift_arrayDestroy();
      MEMORY[0x266701350](v128, -1, -1);
      MEMORY[0x266701350](v115, -1, -1);

      v94 = v236;
      v100 = v234;
      v101 = v233;
    }

    else
    {

      sub_261345C6C(v112, type metadata accessor for TransactionData);
      sub_26124C718(v111, &qword_27FE9F338, &unk_2613A4630);
      v94 = v109;
    }

    (*(v226 + 8))(v101, v230);
    v98 = v239;
    v102 = v237;
  }

  v129 = v228;
  sub_26125A870(v94, v228, &qword_27FE9F338, &unk_2613A4630);
  v130 = (*(*v64 + 31))(v129);
  if (*(v100 + v102[18]) != 1)
  {
    if (((*(*v64 + 78))(v130) & 1) != 0 && (v155 = (*(*v72 + 440))(v100, v221), (v156 & 1) == 0))
    {
      v173 = v64[2];
      v174 = v155;
      v175 = v200;
      sub_261345CCC(v100, v200, type metadata accessor for TransactionData);
      v199(v175, 0, 1, v102);
      v176 = v231;

      v177 = v173;
      v178 = v202;
      sub_2612B5C88(v177, v176, v174, v175, v202);
      (*(*v64 + 67))(v174, 0);
      sub_261340E08(v232, v178);
      [v229 updateWithTransactionEvent_];
      sub_261345C6C(v178, type metadata accessor for ReadErrorEventData);
    }

    else
    {
      v157 = v72[10];
      v158 = (v72[9])(3);
      if (((*(*v64 + 54))(v158) & 1) == 0)
      {
        v159 = v217;
        sub_26139F5EC();
        sub_26139F5DC();
        (*(v218 + 8))(v159, v219);
      }

      v160 = [v229 updateWithTransactionEvent_];
      v161 = v215;
      (*(*v223 + 136))(v160);
      v162 = v213;
      v163 = v214;
      v164 = (*(v213 + 48))(v161, 1, v214);
      v165 = v230;
      if (v164 == 1)
      {
        sub_26124C718(v98, &qword_27FE9F3B8, &qword_2613A4828);
        sub_2612A0E50(v244);
        sub_26124C718(v161, &qword_27FEA04F8, &qword_2613AC6F0);
        return sub_26124C718(v94, &qword_27FE9F338, &unk_2613A4630);
      }

      v169 = v204;
      (*(v162 + 32))(v204, v161, v163);
      v170 = sub_26139F94C();
      (*(v162 + 8))(v169, v163);
      if (v170)
      {
        v171 = v203;
        sub_26125A870(v216, v203, &qword_27FE9F560, &qword_2613A3CB0);
        if (v222(v171, 1, v165) == 1)
        {
          v172 = sub_26124C718(v171, &qword_27FE9F560, &qword_2613A3CB0);
        }

        else
        {
          v191 = sub_2613A122C();
          v192 = sub_2613A1D9C();
          if (os_log_type_enabled(v191, v192))
          {
            v193 = swift_slowAlloc();
            *v193 = 0;
            _os_log_impl(&dword_261243000, v191, v192, "[TransactionTask] returning data early", v193, 2u);
            MEMORY[0x266701350](v193, -1, -1);
          }

          v172 = (*(v226 + 8))(v203, v165);
        }

        goto LABEL_55;
      }
    }

LABEL_56:
    sub_26124C718(v98, &qword_27FE9F3B8, &qword_2613A4828);
    sub_2612A0E50(v244);
    return sub_26124C718(v94, &qword_27FE9F338, &unk_2613A4630);
  }

  v131 = v72[9];
  v132 = v72[10];
  v131(3);
  if (*(v100 + v102[19]) != 1)
  {
    v166 = v216;
    v167 = v209;
    sub_26125A870(v216, v209, &qword_27FE9F560, &qword_2613A3CB0);
    v168 = v230;
    if (v222(v167, 1, v230) == 1)
    {
      sub_26124C718(v167, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v179 = sub_2613A122C();
      v180 = sub_2613A1D8C();
      if (os_log_type_enabled(v179, v180))
      {
        v181 = swift_slowAlloc();
        *v181 = 0;
        _os_log_impl(&dword_261243000, v179, v180, "[TransactionTask] PIN requested but not supported", v181, 2u);
        v182 = v181;
        v166 = v216;
        MEMORY[0x266701350](v182, -1, -1);
      }

      (*(v226 + 8))(v167, v168);
    }

    (*(*v64 + 67))(31, 0);
    [v229 updateWithTransactionEvent_];
    v183 = v211;
    sub_26125A870(v166, v211, &qword_27FE9F560, &qword_2613A3CB0);
    if (v222(v183, 1, v168) == 1)
    {
      v172 = sub_26124C718(v183, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v184 = sub_2613A122C();
      v185 = sub_2613A1D9C();
      if (os_log_type_enabled(v184, v185))
      {
        v186 = swift_slowAlloc();
        *v186 = 0;
        _os_log_impl(&dword_261243000, v184, v185, "[TransactionTask] PIN required but has error, returning", v186, 2u);
        MEMORY[0x266701350](v186, -1, -1);
      }

      v172 = (*(v226 + 8))(v183, v168);
    }

LABEL_55:
    (*(*v72 + 328))(v172);
    goto LABEL_56;
  }

  v131(7);
  v133 = v217;
  sub_26139F4AC();
  sub_26139F5DC();
  v134 = (*(v218 + 8))(v133, v219);
  v135 = (*(*v221 + 184))(v134);
  type metadata accessor for Mock();
  v136 = sub_26129B284(22);
  if (v136)
  {
    v137 = v136;
  }

  else
  {
    v137 = v135;
  }

  v237 = v137;
  type metadata accessor for PINHelper();
  sub_2612B5A20((v72 + 12), &v241);
  v138 = v205;

  v139 = v223;

  v141 = sub_261324938(v140, &v241, v138);
  v142 = v72[19];
  v72[19] = v141;

  if (v227(v94, 1, v238) != 1)
  {
    v143 = sub_2613A053C();
    (*(*v64 + 34))(v143);
  }

  v144 = (v100 + v102[29]);
  v145 = v144[1];
  v234 = *v144;
  v146 = *(v100 + v102[21]);
  sub_2613A121C();
  v147 = *(v139 + 32);
  v148 = *(v139 + 40);

  sub_2613A115C();

  v150 = v210;
  v208(v149);
  v151 = v238;
  v152 = v227(v150, 1, v238);
  v153 = v212;
  if (v152)
  {
    v154 = sub_26124C718(v150, &qword_27FE9F338, &unk_2613A4630);
  }

  else
  {
    v187 = v235;
    (*(v240 + 16))(v235, v150, v151);
    sub_26124C718(v150, &qword_27FE9F338, &unk_2613A4630);
    sub_26139F15C();
    v153 = v212;
    v154 = (v220)(v187, v151);
  }

  (*(*v64 + 30))(v154);
  if (v227(v153, 1, v151))
  {
    sub_26124C718(v153, &qword_27FE9F338, &unk_2613A4630);
  }

  else
  {
    v188 = v235;
    (*(v240 + 16))(v235, v153, v151);
    sub_26124C718(v153, &qword_27FE9F338, &unk_2613A4630);
    sub_26139F15C();
    v220(v188, v151);
  }

  sub_261344AF8();
  sub_2613A1F2C();
  v189 = objc_allocWithZone(sub_26139FA7C());
  v190 = sub_26139FA6C();
  [v229 requiresCardPIN_];

  sub_26124C718(v239, &qword_27FE9F3B8, &qword_2613A4828);
  sub_2612A0E50(v244);
  v94 = v236;
  return sub_26124C718(v94, &qword_27FE9F338, &unk_2613A4630);
}

void sub_261342EC8(uint64_t a1)
{
  type metadata accessor for Mock();
  if (sub_26129B0F4(6))
  {
    v2 = sub_26129B1A8(53);
    v4 = v3;

    v5 = HIBYTE(v4) & 0xF;
    if ((v4 & 0x2000000000000000) == 0)
    {
      v5 = v2 & 0xFFFFFFFFFFFFLL;
    }

    if (v5)
    {
      v6 = *(v44 + 88);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F3F8, &unk_2613A9AF0);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_2613A4310;
      *(v7 + 32) = sub_26129B1A8(53);
      *(v7 + 40) = v8;
      goto LABEL_64;
    }
  }

  v9 = *(a1 + *(type metadata accessor for TransactionData(0) + 104));
  if (v9)
  {
    v49 = MEMORY[0x277D84F90];
    if (v9 >> 62)
    {
      goto LABEL_24;
    }

    for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2613A221C())
    {
      v11 = 0;
      while (1)
      {
        if ((v9 & 0xC000000000000001) != 0)
        {
          v12 = MEMORY[0x2667005C0](v11, v9);
        }

        else
        {
          if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_23;
          }

          v12 = *(v9 + 8 * v11 + 32);
        }

        v13 = v12;
        v14 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        if (sub_26139F7DC() == 36864)
        {
          sub_2613A217C();
          v15 = *(v49 + 16);
          sub_2613A21AC();
          sub_2613A21BC();
          sub_2613A218C();
        }

        else
        {
        }

        ++v11;
        if (v14 == i)
        {
          v16 = v49;
          if ((v49 & 0x8000000000000000) != 0)
          {
            goto LABEL_62;
          }

LABEL_26:
          if ((v16 & 0x4000000000000000) == 0)
          {
            v17 = *(v16 + 16);
            if (!v17)
            {
              goto LABEL_63;
            }

            goto LABEL_28;
          }

LABEL_62:
          v17 = sub_2613A221C();
          if (!v17)
          {
            goto LABEL_63;
          }

LABEL_28:
          v18 = 0;
          v42 = v16 + 32;
          v43 = v16 & 0xC000000000000001;
          v19 = MEMORY[0x277D84F90];
          v41 = v16;
LABEL_29:
          v45 = v19;
          while (1)
          {
            if (v43)
            {
              v20 = MEMORY[0x2667005C0](v18, v16);
            }

            else
            {
              if (v18 >= *(v16 + 16))
              {
                goto LABEL_61;
              }

              v20 = *(v42 + 8 * v18);
            }

            v47 = v20;
            v21 = __OFADD__(v18, 1);
            v22 = v18 + 1;
            if (v21)
            {
LABEL_60:
              __break(1u);
LABEL_61:
              __break(1u);
              goto LABEL_62;
            }

            v23 = *(*(v44 + 48) + 16);
            v24 = sub_26139FC7C();

            v46 = v22;
            if (v24 >> 62)
            {
              v25 = sub_2613A221C();
              if (v25)
              {
LABEL_37:
                v26 = 0;
                v16 = v24 & 0xC000000000000001;
                while (1)
                {
                  if (v16)
                  {
                    v27 = MEMORY[0x2667005C0](v26, v24);
                  }

                  else
                  {
                    if (v26 >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
                    {
                      goto LABEL_59;
                    }

                    v27 = *(v24 + 8 * v26 + 32);
                  }

                  v28 = v27;
                  v29 = v26 + 1;
                  if (__OFADD__(v26, 1))
                  {
                    __break(1u);
LABEL_59:
                    __break(1u);
                    goto LABEL_60;
                  }

                  v30 = sub_26139FD7C();
                  v32 = v31;
                  if (v30 == sub_26139F7FC() && v32 == v33)
                  {
                    break;
                  }

                  v34 = sub_2613A241C();

                  if (v34)
                  {
                    goto LABEL_52;
                  }

                  ++v26;
                  if (v29 == v25)
                  {
                    goto LABEL_30;
                  }
                }

LABEL_52:

                v35 = sub_26139FD6C();
                v37 = v36;

                v19 = v45;
                v16 = v41;
                v18 = v46;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v19 = sub_2612DC724(0, *(v45 + 2) + 1, 1, v45);
                }

                v39 = *(v19 + 2);
                v38 = *(v19 + 3);
                if (v39 >= v38 >> 1)
                {
                  v19 = sub_2612DC724((v38 > 1), v39 + 1, 1, v19);
                }

                *(v19 + 2) = v39 + 1;
                v40 = &v19[16 * v39];
                *(v40 + 4) = v35;
                *(v40 + 5) = v37;
                if (v46 == v17)
                {
LABEL_63:

                  v6 = *(v44 + 88);
LABEL_64:
                  v48 = sub_2613A1B6C();

                  [v6 vasReadSuccessWithMerchantNames_];

                  return;
                }

                goto LABEL_29;
              }
            }

            else
            {
              v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v25)
              {
                goto LABEL_37;
              }
            }

LABEL_30:

            v16 = v41;
            v18 = v46;
            if (v46 == v17)
            {
              goto LABEL_63;
            }
          }
        }
      }

      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      ;
    }

    v16 = MEMORY[0x277D84F90];
    if ((MEMORY[0x277D84F90] & 0x8000000000000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_62;
  }
}

uint64_t sub_261343390(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v34 - v11;
  v13 = *(v3 + 120);
  v14 = *(v3 + 128);
  __swift_project_boxed_opaque_existential_1((v3 + 96), v13);
  v15 = (*(v14 + 88))(*(a2 + 32), *(a2 + 40), a1, 0, v13, v14);
  if (v16 >> 60 == 15)
  {
    goto LABEL_12;
  }

  v17 = v16 >> 62;
  if ((v16 >> 62) > 1)
  {
    if (v17 != 2 || *(v15 + 16) == *(v15 + 24))
    {
      goto LABEL_11;
    }
  }

  else if (v17)
  {
    if (v15 == v15 >> 32)
    {
LABEL_11:
      sub_26124A168(v15, v16);
LABEL_12:
      v23 = sub_26129B5FC();
      sub_26125A870(v23, v10, &qword_27FE9F560, &qword_2613A3CB0);
      v24 = sub_2613A124C();
      v25 = *(v24 - 8);
      if ((*(v25 + 48))(v10, 1, v24) == 1)
      {
        sub_26124C718(v10, &qword_27FE9F560, &qword_2613A3CB0);
      }

      else
      {
        v26 = sub_2613A122C();
        v27 = sub_2613A1D9C();
        if (os_log_type_enabled(v26, v27))
        {
          v28 = swift_slowAlloc();
          *v28 = 0;
          _os_log_impl(&dword_261243000, v26, v27, "[TransactionTask] cardBlob failed", v28, 2u);
          MEMORY[0x266701350](v28, -1, -1);
        }

        (*(v25 + 8))(v10, v24);
      }

      return 25;
    }
  }

  else if ((v16 & 0xFF000000000000) == 0)
  {
    goto LABEL_11;
  }

  v18 = v15;
  v19 = v16;
  v20 = sub_26129B5FC();
  sub_26125A870(v20, v12, &qword_27FE9F560, &qword_2613A3CB0);
  v21 = sub_2613A124C();
  v22 = *(v21 - 8);
  if ((*(v22 + 48))(v12, 1, v21) == 1)
  {
    sub_26124C718(v12, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v30 = sub_2613A122C();
    v31 = sub_2613A1D9C();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_261243000, v30, v31, "[TransactionTask] cardBlob encrypted", v32, 2u);
      MEMORY[0x266701350](v32, -1, -1);
    }

    (*(v22 + 8))(v12, v21);
  }

  v33 = *(**(v3 + 48) + 560);
  sub_26125C348(v18, v19);
  v33(v18, v19);
  sub_26124A168(v18, v19);
  return 0;
}

uint64_t sub_261343780(char a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_26139F13C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  result = MEMORY[0x28223BE20](v7);
  v12 = &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v3 + 136))
  {
    v13 = *(*(v3 + 48) + 16);
    sub_26139FCEC();

    sub_2613978BC(v12, a1 & 1, a2, a3);
    return (*(v8 + 8))(v12, v7);
  }

  return result;
}

uint64_t sub_261343890(char a1, int a2)
{
  v3 = v2;
  v6 = sub_26139F13C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v28 - v13;
  type metadata accessor for Mock();
  result = sub_26129B0F4(6);
  if (result & 1) != 0 && (result = sub_26129B0F4(43), (result) && a2 == -1)
  {
    v16 = sub_26129B5FC();
    sub_26125A870(v16, v14, &qword_27FE9F560, &qword_2613A3CB0);
    v17 = sub_2613A124C();
    v18 = *(v17 - 8);
    if ((*(v18 + 48))(v14, 1, v17) == 1)
    {
      sub_26124C718(v14, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v20 = sub_2613A122C();
      v21 = sub_2613A1D9C();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&dword_261243000, v20, v21, "[TransactionTask] tapped via prox sensor", v22, 2u);
        MEMORY[0x266701350](v22, -1, -1);
      }

      (*(v18 + 8))(v14, v17);
    }

    v23 = nullsub_1(0x7061742D786F7270, 0xE800000000000000);
    v25 = v24;
    v30 = &type metadata for ReaderActive;
    v31 = sub_261324794();
    *&v29 = v23;
    *(&v29 + 1) = v25;
    sub_2612B64A4(0, &v29, v32);
    v26 = v3[15];
    v27 = v3[16];
    __swift_project_boxed_opaque_existential_1(v3 + 12, v26);
    (*(v27 + 120))(v32, v26, v27);
    return sub_2612A0E50(v32);
  }

  else if (v2[17])
  {
    v19 = *(v2[6] + 16);
    sub_26139FCEC();

    sub_261397B74(v10, a1 & 1, a2);
    return (*(v7 + 8))(v10, v6);
  }

  return result;
}

uint64_t sub_261343BBC()
{
  v1 = sub_26139F13C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  result = MEMORY[0x28223BE20](v1);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + 152);
  if (v7)
  {
    type metadata accessor for PINMonitorEventBuilder();

    sub_2612BAC20(0);
    v8 = *(*(v0 + 48) + 16);
    sub_26139FCEC();

    v9 = sub_26139F0FC();
    v11 = v10;
    (*(v2 + 8))(v6, v1);
    sub_2612BAC6C(4u, v9, v11);

    v12 = sub_2613A039C();
    v14 = sub_2612BAC6C(6u, v12, v13);

    (*(*v7 + 176))(v14);
  }

  return result;
}

uint64_t sub_261343D70(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F580, &qword_2613A5480);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v67 = &v63 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v63 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA04F8, &qword_2613AC6F0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v63 - v17;
  v70 = sub_26139F95C();
  v19 = *(v70 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v70);
  v68 = &v63 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_26139F13C();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v63 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = *(v4 + 152);
  if (v28)
  {
    v65 = v19;
    v66 = v14;
    v69 = v4;
    v29 = *(v4 + 48);
    v30 = a1;
    v31 = v29[2];
    v64 = v25;

    v32 = v31;
    sub_26139FCEC();

    v33 = (*(*v29 + 264))();
    v34 = v18;
    v35 = a3;
    v37 = v36;
    v38 = sub_2613A027C();
    v39 = v35;
    v18 = v34;
    v40 = v33;
    v4 = v69;
    v14 = v66;
    (*(*v28 + 160))(v27, 1, a2, v39, v40, v37, v38 & 1);
    a1 = v30;
    v19 = v65;

    (*(v23 + 8))(v27, v64);
  }

  v41 = a1;
  v42 = (*(**(v4 + 48) + 496))(v71);
  v44 = v43;
  v45 = type metadata accessor for TransactionData(0);
  if (!(*(*(v45 - 8) + 48))(v44, 1, v45))
  {
    v46 = *(v45 + 96);
    v47 = *(v44 + v46);
    *(v44 + v46) = v41;
    v48 = v41;
  }

  v49 = v42(v71, 0);
  (*(**(v4 + 24) + 136))(v49);
  v50 = v70;
  if ((*(v19 + 48))(v18, 1, v70) == 1)
  {
    return sub_26124C718(v18, &qword_27FEA04F8, &qword_2613AC6F0);
  }

  v52 = v68;
  (*(v19 + 32))(v68, v18, v50);
  v53 = sub_26139F94C();
  result = (*(v19 + 8))(v52, v50);
  if (v53)
  {
    v54 = sub_26129B5FC();
    sub_26125A870(v54, v14, &qword_27FE9F560, &qword_2613A3CB0);
    v55 = sub_2613A124C();
    v56 = *(v55 - 8);
    if ((*(v56 + 48))(v14, 1, v55) == 1)
    {
      sub_26124C718(v14, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v57 = sub_2613A122C();
      v58 = sub_2613A1D9C();
      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        *v59 = 0;
        _os_log_impl(&dword_261243000, v57, v58, "[TransactionTask] returning data+PIN early", v59, 2u);
        MEMORY[0x266701350](v59, -1, -1);
      }

      (*(v56 + 8))(v14, v55);
    }

    v60 = sub_2613A1C1C();
    v61 = v67;
    (*(*(v60 - 8) + 56))(v67, 1, 1, v60);
    v62 = swift_allocObject();
    v62[2] = 0;
    v62[3] = 0;
    v62[4] = v4;

    sub_261266800(0, 0, v61, &unk_2613ACDA8, v62);
  }

  return result;
}

uint64_t sub_2613443F4()
{
  (*(**(v0 + 16) + 328))();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26134447C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_26139F13C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v3 + 152);
  if (v13)
  {
    v14 = *(v3 + 48);
    v15 = v14[2];

    v16 = v15;
    sub_26139FCEC();

    v17 = (*(*v14 + 264))();
    (*(*v13 + 168))(v12, a1, 1, a2, a3, v17, v18);

    (*(v9 + 8))(v12, v8);
  }

  return (*(**(v4 + 48) + 536))(a1, 0);
}

uint64_t sub_261344654(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F338, &unk_2613A4630);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_2613446C4()
{
  result = qword_27FEA06F8;
  if (!qword_27FEA06F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEA06F8);
  }

  return result;
}

uint64_t sub_261344718()
{
  v2 = *(type metadata accessor for TransactionData(0) - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 32);
  v6 = *(v0 + 40);
  v7 = *(v0 + v4);
  v8 = *(v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_261265144;

  return sub_26133AC98(v9, v10, v11, v5, v6, v0 + v3, v7, v8);
}

unint64_t sub_26134483C()
{
  result = qword_27FEA0700;
  if (!qword_27FEA0700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEA0700);
  }

  return result;
}

uint64_t sub_261344890(void *a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_26133E934(a1);
  }

  return result;
}

uint64_t sub_2613448EC()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  v6 = *(v0 + 57);
  v7 = *(v0 + 58);
  v13 = *(v0 + 64);
  v8 = *(v0 + 80);
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_261265144;

  return sub_26133C3C0(v3, v9, v10, v11, v2, v4, v5, v6, v7);
}

uint64_t sub_2613449EC()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_261262AA4;

  return sub_2613443D4(v3, v4, v5, v2);
}

unint64_t sub_261344AA4()
{
  result = qword_27FEA0708;
  if (!qword_27FEA0708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEA0708);
  }

  return result;
}

unint64_t sub_261344AF8()
{
  result = qword_27FE9FE70;
  if (!qword_27FE9FE70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FE9FE70);
  }

  return result;
}

uint64_t sub_261344B44()
{
  v1 = *(v0 + 32);
  if ((*(v0 + 16) & 1) == 0)
  {
    [*(*(v0 + 24) + 88) updateWithTransactionEvent_];
  }

  result = swift_beginAccess();
  *(v1 + 16) = 1;
  return result;
}

unint64_t sub_261344C04()
{
  result = qword_27FEA0710;
  if (!qword_27FEA0710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEA0710);
  }

  return result;
}

unint64_t sub_261344C58()
{
  result = qword_27FEA0718;
  if (!qword_27FEA0718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEA0718);
  }

  return result;
}

unint64_t sub_261344CAC()
{
  result = qword_27FEA0720;
  if (!qword_27FEA0720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEA0720);
  }

  return result;
}

uint64_t sub_261344D00(uint64_t a1)
{
  v2[86] = v1;
  v2[85] = a1;
  v3 = type metadata accessor for TransactionData(0);
  v2[87] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[88] = swift_task_alloc();
  v5 = *(*(type metadata accessor for StoreAndForwardReadResult() - 8) + 64) + 15;
  v2[89] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261344DC4);
}

uint64_t sub_261344DC4()
{
  v0[90] = type metadata accessor for StoreAndForwardManager();
  v0[91] = sub_261269430();
  v0[92] = 0;
  v1 = v0[86];
  v37 = (*(**(v1 + 48) + 552))();
  v0[93] = v37;
  v0[94] = v2;
  v3 = *(v1 + 24);
  v0[95] = v3;
  if (v2 >> 60 == 15)
  {
    v4 = v0[86];
    v5 = v3[10];
    v6 = v3[11];

    sub_26126B07C(v5, v6, (v0 + 20));

    type metadata accessor for SafMonitorEventDispatcher();
    v7 = swift_task_alloc();
    v0[105] = v7;
    *v7 = v0;
    v7[1] = sub_26134594C;
    v8 = v0[85];

    return sub_26129F3A0(v4 + 96, (v0 + 20), v8, 2, 2);
  }

  else
  {
    v9 = v2;
    v10 = v0[87];
    v11 = v0[86];
    v12 = v0[85];
    v13 = v3[9];
    v35 = v3[8];
    v15 = v11[15];
    v14 = v11[16];
    __swift_project_boxed_opaque_existential_1(v11 + 12, v15);
    v16 = (v12 + *(v10 + 44));
    v31 = v16[1];
    v32 = *v16;
    v33 = *(v14 + 104);

    v17 = v33(v37, v9, v32, v31, v12, v35, v13, v15, v14);
    v0[96] = 0;
    v0[97] = v17;
    v0[98] = v18;
    v0[99] = v19;
    v0[100] = v20;
    v22 = v17;
    v23 = v18;
    v24 = v19;
    v25 = v20;
    v36 = v0[89];
    v26 = v0[88];
    v27 = v0[85];

    v28 = v3[11];
    v34 = v3[10];
    sub_261345CCC(v27, v26, type metadata accessor for TransactionData);

    sub_26125C348(v37, v9);
    sub_26124C778(v22, v23);
    sub_26124C778(v24, v25);
    sub_2612A868C(v34, v28, v37, v9, v26, v22, v23, v24, v36, v25);
    v29 = swift_task_alloc();
    v0[101] = v29;
    *v29 = v0;
    v29[1] = sub_261345298;
    v30 = v0[89];

    return sub_26126D92C(v30);
  }
}

uint64_t sub_261345298(uint64_t a1, char a2)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 656) = a2;
  *(v4 + 648) = a1;
  *(v4 + 640) = v2;
  v5 = *(v3 + 808);
  v7 = *v2;
  *(v4 + 153) = a2;

  return MEMORY[0x2822009F8](sub_2613453A4);
}

uint64_t sub_2613453A4()
{
  if (*(v0 + 153) == 255)
  {
    v11 = *(v0 + 800);
    v12 = *(v0 + 792);
    v13 = *(v0 + 784);
    v14 = *(v0 + 776);
    v15 = *(v0 + 752);
    v16 = *(v0 + 744);
    v17 = *(v0 + 728);
    sub_261345C6C(*(v0 + 712), type metadata accessor for StoreAndForwardReadResult);
    sub_26124C6C4(v14, v13);
    sub_26124C6C4(v12, v11);
    sub_26124A168(v16, v15);

    v18 = *(v0 + 712);
    v19 = *(v0 + 704);

    v20 = *(v0 + 8);

    return v20(0, 1);
  }

  else
  {
    v1 = *(v0 + 648);
    v2 = *(v0 + 760);
    v3 = *(v0 + 720);
    v4 = *(v0 + 688);
    *(v0 + 824) = v1;
    v5 = *(v2 + 80);
    v6 = *(v2 + 88);

    sub_26126B07C(v5, v6, v0 + 304);

    type metadata accessor for SafMonitorEventDispatcher();
    v7 = swift_task_alloc();
    *(v0 + 832) = v7;
    *v7 = v0;
    v7[1] = sub_261345728;
    v8 = *(v0 + 680);
    v9 = *(v0 + 153);

    return sub_26129F3A0(v4 + 96, v0 + 304, v8, v1, v9);
  }
}