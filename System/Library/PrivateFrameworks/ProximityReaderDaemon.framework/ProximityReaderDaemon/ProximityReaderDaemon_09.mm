void sub_26130F34C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v4 = sub_2613A17EC();
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  (*(a3 + 16))(a3);
}

uint64_t sub_26130F3D4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1 - 8);
  v5 = &v16 - v4;
  v6 = (*(**(v0 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_uiManager) + 528))(v3);
  v7 = *(v0 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_readTask);
  v8 = *(v0 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_pinTask);
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
    v13 = sub_2613A1D9C();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 67109632;
      *(v14 + 4) = v6 & 1;
      *(v14 + 8) = 1024;
      *(v14 + 10) = v7 != 0;
      *(v14 + 14) = 1024;
      *(v14 + 16) = v8 != 0;
      _os_log_impl(&dword_261243000, v12, v13, "checking busy, UI visible: %{BOOL}d, readTask: %{BOOL}d, pinTask: %{BOOL}d", v14, 0x14u);
      MEMORY[0x266701350](v14, -1, -1);
    }

    (*(v11 + 8))(v5, v10);
  }

  return v6 & 1 | (v7 != 0) | (v8 != 0);
}

uint64_t sub_26130F630(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v50 = v47 - v8;
  v9 = sub_26139FC1C();
  v53 = *(v9 - 8);
  v10 = *(v53 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v51 = v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = (v47 - v13);
  v15 = *(**sub_2612B4F84() + 88);

  v15(v55, v16);

  if (v55[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0600, &qword_2613AC8E0);
    type metadata accessor for SessionTask();
    v17 = swift_dynamicCast();
    v18 = v54;
    if (!v17)
    {
      v18 = 0;
    }

    v52 = v18;
  }

  else
  {
    sub_26124C718(v55, &qword_27FE9FAC0, &qword_2613A7F30);
    v52 = 0;
  }

  v19 = v53;
  v20 = *(v53 + 16);
  v20(v14, a2, v9);
  v21 = *(v19 + 88);
  v22 = v21(v14, v9);
  if (v22 != *MEMORY[0x277D43908])
  {

    (*(v19 + 8))(v14, v9);
LABEL_29:
    v45 = 0;
    return v45 & 1;
  }

  v23 = v22;
  v48 = a1;
  v49 = v3;
  v24 = *(v19 + 96);
  v24(v14, v9);
  v25 = v14[1];
  v26 = v52;
  if (!v52)
  {
LABEL_28:

    goto LABEL_29;
  }

  v47[0] = v24;
  v47[1] = v25;
  v27 = *v14;
  v28 = v51;
  v20(v51, v52 + OBJC_IVAR____TtC21ProximityReaderDaemon11SessionTask_sessionType, v9);
  v29 = v21(v28, v9);
  v30 = v26;
  if (v29 != v23)
  {

    (*(v53 + 8))(v28, v9);
    goto LABEL_29;
  }

  (v47[0])(v28, v9);
  v31 = *v28;
  v32 = v28[1];
  v33 = sub_26129B5FC();
  v34 = v50;
  sub_26125A870(v33, v50, &qword_27FE9F560, &qword_2613A3CB0);
  v35 = sub_2613A124C();
  v36 = *(v35 - 8);
  if ((*(v36 + 48))(v34, 1, v35) == 1)
  {
    sub_26124C718(v34, &qword_27FE9F560, &qword_2613A3CB0);
    v37 = v48;
  }

  else
  {

    v38 = sub_2613A122C();
    v39 = sub_2613A1D7C();
    v40 = os_log_type_enabled(v38, v39);
    v37 = v48;
    if (v40)
    {
      v53 = v31;
      v41 = swift_slowAlloc();
      *v41 = 134218240;
      v42 = *(v30 + OBJC_IVAR____TtC21ProximityReaderDaemon11SessionTask_serviceId);
      if (v42)
      {
        v42 = sub_2613A187C();
      }

      *(v41 + 4) = v42;
      v30 = v52;

      *(v41 + 12) = 2048;
      *(v41 + 14) = sub_2613A187C();
      _os_log_impl(&dword_261243000, v38, v39, "checking rebind to %ld from %ld", v41, 0x16u);
      MEMORY[0x266701350](v41, -1, -1);
    }

    else
    {
    }

    (*(v36 + 8))(v34, v35);
  }

  if (*(v30 + OBJC_IVAR____TtC21ProximityReaderDaemon11SessionTask_serviceId))
  {
    v43 = sub_2613A187C();
    if (v43 == sub_2613A187C())
    {
LABEL_27:

      goto LABEL_28;
    }
  }

  else
  {
    sub_2613A187C();
  }

  v44 = *(v30 + 24);
  if ((*(v44 + 64) != *(v37 + 64) || *(v44 + 72) != *(v37 + 72)) && (sub_2613A241C() & 1) == 0)
  {
    goto LABEL_27;
  }

  v45 = sub_2613A0FBC();

  return v45 & 1;
}

uint64_t sub_26130FBB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0) - 8) + 64) + 15;
  v5[6] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0650, &qword_2613ACAC0);
  v5[7] = v7;
  v8 = *(v7 - 8);
  v5[8] = v8;
  v9 = *(v8 + 64) + 15;
  v5[9] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEA0658, &qword_2613ACAC8);
  v5[10] = v10;
  v11 = *(v10 - 8);
  v5[11] = v11;
  v12 = *(v11 + 64) + 15;
  v5[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26130FD24);
}

uint64_t sub_26130FD24()
{
  v1 = *(v0 + 96);
  v3 = *(v0 + 64);
  v2 = *(v0 + 72);
  v4 = *(v0 + 56);
  (*(**(v0 + 32) + 264))();
  sub_2613A1C4C();
  (*(v3 + 8))(v2, v4);
  *(v0 + 104) = OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_client;
  v5 = *(MEMORY[0x277D85798] + 4);
  v6 = swift_task_alloc();
  *(v0 + 112) = v6;
  *v6 = v0;
  v6[1] = sub_26130FE50;
  v7 = *(v0 + 96);
  v8 = *(v0 + 80);

  return MEMORY[0x2822003E8](v0 + 16, 0, 0, v8);
}

uint64_t sub_26130FE50()
{
  v1 = *(*v0 + 112);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_26130FF4C);
}

uint64_t sub_26130FF4C()
{
  v1 = *(v0 + 16);
  if (*(v0 + 24) == 1)
  {
    v2 = *(v0 + 72);
    v3 = *(v0 + 48);
    (*(*(v0 + 88) + 8))(*(v0 + 96), *(v0 + 80));

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 48);
    v7 = sub_26129B5FC();
    sub_26125A870(v7, v6, &qword_27FE9F560, &qword_2613A3CB0);
    v8 = sub_2613A124C();
    v9 = *(v8 - 8);
    if ((*(v9 + 48))(v6, 1, v8) == 1)
    {
      sub_26124C718(*(v0 + 48), &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v10 = *(v0 + 48);
      v11 = sub_2613A122C();
      v12 = sub_2613A1D7C();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 134217984;
        *(v13 + 4) = v1;
        _os_log_impl(&dword_261243000, v11, v12, "progress %ld", v13, 0xCu);
        MEMORY[0x266701350](v13, -1, -1);
      }

      v14 = *(v0 + 48);

      (*(v9 + 8))(v14, v8);
    }

    [*(*(v0 + 40) + *(v0 + 104)) loading_];
    v15 = *(MEMORY[0x277D85798] + 4);
    v16 = swift_task_alloc();
    *(v0 + 112) = v16;
    *v16 = v0;
    v16[1] = sub_26130FE50;
    v17 = *(v0 + 96);
    v18 = *(v0 + 80);

    return MEMORY[0x2822003E8](v0 + 16, 0, 0, v18);
  }
}

uint64_t sub_2613101E4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[42] = a8;
  v8[43] = v22;
  v8[40] = a6;
  v8[41] = a7;
  v8[39] = a5;
  v10 = sub_26139FC1C();
  v8[44] = v10;
  v11 = *(v10 - 8);
  v8[45] = v11;
  v12 = *(v11 + 64) + 15;
  v8[46] = swift_task_alloc();
  v8[47] = swift_task_alloc();
  v8[48] = swift_task_alloc();
  v13 = sub_26139F64C();
  v8[49] = v13;
  v14 = *(v13 - 8);
  v8[50] = v14;
  v15 = *(v14 + 64) + 15;
  v8[51] = swift_task_alloc();
  v19 = (*a4 + 272);
  v20 = (*v19 + **v19);
  v16 = (*v19)[1];
  v17 = swift_task_alloc();
  v8[52] = v17;
  *v17 = v8;
  v17[1] = sub_261310400;

  return v20(v8 + 10);
}

uint64_t sub_261310400()
{
  v1 = *(*v0 + 416);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2613104FC);
}

uint64_t sub_2613104FC()
{
  v79 = v0;
  v2 = *(v0 + 400);
  v1 = *(v0 + 408);
  v3 = *(v0 + 392);
  v4 = *(v0 + 96);
  *(v0 + 16) = *(v0 + 80);
  *(v0 + 32) = v4;
  *(v0 + 48) = *(v0 + 112);
  *(v0 + 57) = *(v0 + 121);
  sub_26139F60C();
  sub_26139F5BC();
  (*(v2 + 8))(v1, v3);
  if ((*(v0 + 72) & 1) == 0)
  {
    v21 = *(v0 + 336);
    v20 = *(v0 + 344);
    v22 = *(v0 + 320);
    v23 = *(v0 + 328);
    v24 = *(v0 + 312);
    *v75 = *(v0 + 16);
    *&v75[8] = *(v0 + 24);
    *&v75[24] = *(v0 + 40);
    *&v75[40] = *(v0 + 56);
    v25 = *(v0 + 32);
    *(v0 + 144) = *(v0 + 16);
    *(v0 + 160) = v25;
    *(v0 + 176) = *(v0 + 48);
    *(v0 + 185) = *(v0 + 57);
    sub_261324738(v0 + 144, v0 + 208);
    v26 = sub_261310B4C(v75, v22, v23);
    v21(v26, 0);
    sub_26124C718(v0 + 16, &qword_27FEA0630, &unk_2613ACAB0);

    sub_26124C718(v0 + 16, &qword_27FEA0630, &unk_2613ACAB0);
    goto LABEL_24;
  }

  v5 = *(v0 + 16);
  sub_26139F2BC();
  v6 = sub_26139F2FC();
  if (v6 != sub_26139F2FC())
  {
    sub_26139F2BC();
    v27 = sub_26139F2FC();
    if (v27 != sub_26139F2FC())
    {
      goto LABEL_16;
    }

    v28 = *(v0 + 376);
    v29 = *(v0 + 352);
    v30 = *(v0 + 360);
    v31 = *(v0 + 320);
    sub_26139FEBC();
    v32 = (*(v30 + 88))(v28, v29);
    v12 = *(v0 + 376);
    v13 = *(v0 + 352);
    v14 = *(v0 + 360);
    if (v32 == *MEMORY[0x277D43908])
    {
      (*(v14 + 96))(*(v0 + 376), v13);
      v33 = sub_2612F6894(*v12, v12[1]);
      if (v34)
      {
        v35 = v34;
        v74 = v33;
      }

      else
      {
        v74 = sub_2613A0CFC();
        v35 = v36;
      }

      v37 = (*((*MEMORY[0x277D85000] & **(v0 + 312)) + 0x2A0))();
      if (v37)
      {
        v38 = *(v37 + 64);
        v39 = *(v37 + 72);
      }

      else
      {
        v38 = sub_2613A0CFC();
        v39 = v40;
      }

      v73 = *(v0 + 312);
      v41 = sub_2613A0CFC();
      v43 = v42;
      v44 = [v5 description];
      v45 = sub_2613A18CC();
      v47 = v46;

      sub_2612A77D4(v38, v39, v74, v35, v41, v43, v45, v47, v75);
      v77 = &type metadata for InternalSessionError;
      v78 = sub_2613248C8();
      v48 = swift_allocObject();
      *&v76 = v48;
      v49 = *&v75[16];
      v48[1] = *v75;
      v48[2] = v49;
      v50 = *&v75[48];
      v48[3] = *&v75[32];
      v48[4] = v50;
      sub_2612B64A4(6, &v76, (v0 + 264));
      v51 = *(v73 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_cardReaderAdapter + 24);
      v52 = *(v73 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_cardReaderAdapter + 32);
      __swift_project_boxed_opaque_existential_1((v73 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_cardReaderAdapter), v51);
      (*(v52 + 120))(v0 + 264, v51, v52);
      sub_2612A0E50(v0 + 264);

      goto LABEL_16;
    }

LABEL_10:
    (*(v14 + 8))(v12, v13);
    goto LABEL_16;
  }

  v7 = *(v0 + 384);
  v8 = *(v0 + 352);
  v9 = *(v0 + 360);
  v10 = *(v0 + 320);
  sub_26139FEBC();
  v11 = (*(v9 + 88))(v7, v8);
  v12 = *(v0 + 384);
  v13 = *(v0 + 352);
  v14 = *(v0 + 360);
  if (v11 != *MEMORY[0x277D43908])
  {
    goto LABEL_10;
  }

  v15 = *(v0 + 328);
  (*(v14 + 96))(*(v0 + 384), v13);
  v17 = *v12;
  v16 = v12[1];
  type metadata accessor for LinkTask();

  v19 = sub_261345EA4(v18, v17, v16, 0);
  (*(*v19 + 240))(v19);

LABEL_16:
  v54 = *(v0 + 360);
  v53 = *(v0 + 368);
  v55 = *(v0 + 352);
  v56 = *(v0 + 320);
  sub_26139FEBC();
  LODWORD(v56) = (*(v54 + 88))(v53, v55);
  v57 = *MEMORY[0x277D43900];
  (*(v54 + 8))(v53, v55);
  if (v56 == v57)
  {
    v58 = sub_26125B314(*(*(v0 + 328) + 64), *(*(v0 + 328) + 72));
    if (v58)
    {
      v59 = (*(*v58 + 376))(v58);
    }

    else
    {
      v59 = 0;
    }

    if ((*((*MEMORY[0x277D85000] & **(v0 + 312)) + 0x1B0))(v58))
    {
      v60 = [v5 description];
      v61 = sub_2613A18CC();
      v63 = v62;

      sub_261399FA8(v59, v61, v63);
    }
  }

  v65 = *(v0 + 336);
  v64 = *(v0 + 344);
  v66 = *(v0 + 16);
  v65(0, v5);
  sub_26124C718(v0 + 16, &qword_27FEA0630, &unk_2613ACAB0);
  sub_26124C718(v0 + 16, &qword_27FEA0630, &unk_2613ACAB0);

LABEL_24:
  v67 = *(v0 + 408);
  v68 = *(v0 + 376);
  v69 = *(v0 + 384);
  v70 = *(v0 + 368);

  v71 = *(v0 + 8);

  return v71();
}

uint64_t sub_261310B4C(uint64_t a1, _BYTE *a2, void *a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0280, &qword_2613AB430);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v78[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v88 = &v78[-v12];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA04F8, &qword_2613AC6F0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v78[-v15];
  v81 = sub_26139FC1C();
  v17 = *(v81 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v81);
  v21 = &v78[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = *a1;
  v23 = *(a1 + 9);
  v24 = *(a1 + 24);
  v86 = *(a1 + 16);
  v85 = v24;
  v25 = *(a1 + 40);
  v84 = *(a1 + 32);
  v83 = v25;
  v82 = *(a1 + 48);
  v89 = v3;
  v26 = *(v3 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_readerSessionActive);
  v87 = v11;
  if ((v26 & 1) == 0)
  {
    v79 = v23;
    v80 = a2;
    v27 = v22;
    v28 = v89;
    *(v89 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_readerSessionActive) = 1;
    if ((*((*MEMORY[0x277D85000] & *v28) + 0x1B0))(v19))
    {
      sub_261391B34(1);
    }

    v29 = a3[8];
    v30 = a3[9];

    v31 = nullsub_1(v29, v30);
    v33 = v32;
    v34 = *(v89 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_cardReaderAdapter + 24);
    v35 = *(v89 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_cardReaderAdapter + 32);
    __swift_project_boxed_opaque_existential_1((v89 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_cardReaderAdapter), v34);
    v95 = &type metadata for ReaderActive;
    v96 = sub_261324794();
    *&v93 = v31;
    *(&v93 + 1) = v33;
    sub_2612B64A4(0, &v93, v97);
    (*(v35 + 120))(v97, v34, v35);
    v19 = sub_2612A0E50(v97);
    v22 = v27;
    v23 = v79;
  }

  if (v23)
  {
    v36 = (*(*v22 + 376))(v19);
    if (v36)
    {
      v37 = v36;
      v38 = a3[8];
      v39 = a3[9];

      sub_2612B94C4(v38, v39, v37, v97);
      v91 = &type metadata for SessionCreated;
      v92 = sub_26132482C();
      v40 = swift_allocObject();
      *&v90 = v40;
      v41 = v97[1];
      v40[1] = v97[0];
      v40[2] = v41;
      v40[3] = v97[2];
      sub_2612B64A4(7, &v90, &v93);
      v42 = *(v89 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_cardReaderAdapter + 24);
      v43 = *(v89 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_cardReaderAdapter + 32);
      v80 = v16;
      __swift_project_boxed_opaque_existential_1((v89 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_cardReaderAdapter), v42);
      v16 = v80;
      (*(v43 + 120))(&v93, v42, v43);

      sub_2612A0E50(&v93);
    }
  }

  sub_26139FEBC();
  v44 = v81;
  v45 = (*(v17 + 88))(v21, v81);
  v46 = *MEMORY[0x277D43900];
  v47 = (*(v17 + 8))(v21, v44);
  if (v45 == v46)
  {
    v48 = (*(*v22 + 376))(v47);
    if (v48)
    {
      v49 = v48;
      if ((*((*MEMORY[0x277D85000] & *v89) + 0x1B0))())
      {
        sub_2613993D8(v49);
      }
    }
  }

  sub_26139FECC();
  v50 = sub_26139F95C();
  (*(*(v50 - 8) + 56))(v16, 0, 1, v50);
  (*(*a3 + 144))(v16);
  v51 = *sub_2612F9F2C();
  v52 = a3[4];
  v53 = a3[5];
  v55 = a3[2];
  v54 = a3[3];

  sub_2612FB13C();

  v56 = v89;
  v57 = *((*MEMORY[0x277D85000] & *v89) + 0x1B0);

  v57(v58);
  v59 = sub_261378868(v22, v52);
  v61 = v60;
  v80 = v60;
  v63 = v62;
  v65 = v64;
  v66 = v86;
  v67 = v85;
  *&v93 = v86;
  *(&v93 + 1) = v85;
  v81 = v22;
  v68 = v84;
  v69 = v83;
  v94 = v84;
  v95 = v83;
  v70 = v82;
  v96 = v82;
  sub_2613247E8(v86, v85);
  v71 = sub_26137887C(&v93, v59, v61, v63, v65);
  sub_261273F3C(v93, *(&v93 + 1));
  v72 = *(v56 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_deprecationAlertDialog);
  *(v56 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_deprecationAlertDialog) = v71;

  *&v93 = v66;
  *(&v93 + 1) = v67;
  v94 = v68;
  v95 = v69;
  v96 = v70;
  sub_2613247E8(v66, v67);
  v73 = v88;
  sub_261378DC0(&v93, v88);
  sub_261273F3C(v93, *(&v93 + 1));
  v74 = sub_26125A870(v73, v87, &qword_27FEA0280, &qword_2613AB430);
  (*(*v81 + 184))(v74);
  v75 = objc_allocWithZone(sub_26139F89C());
  v76 = sub_26139F88C();

  sub_26124C718(v73, &qword_27FEA0280, &qword_2613AB430);
  return v76;
}

uint64_t sub_2613113B4(int a1, char a2)
{
  v5 = sub_26139FDCC();
  v59 = *(v5 - 8);
  v60 = v5;
  v6 = *(v59 + 64);
  MEMORY[0x28223BE20](v5);
  v54 = &v51[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_26139FAEC();
  v57 = *(v8 - 8);
  v58 = v8;
  v9 = *(v57 + 64);
  MEMORY[0x28223BE20](v8);
  v62 = &v51[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v55 = sub_26139FB7C();
  v53 = *(v55 - 8);
  v11 = *(v53 + 64);
  MEMORY[0x28223BE20](v55);
  v61 = &v51[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v63 = &v51[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = MEMORY[0x28223BE20](v15);
  v56 = &v51[-v18];
  MEMORY[0x28223BE20](v17);
  v20 = &v51[-v19];
  v64 = sub_26129B5FC();
  sub_26125A870(v64, v20, &qword_27FE9F560, &qword_2613A3CB0);
  v21 = sub_2613A124C();
  v22 = *(v21 - 8);
  v23 = *(v22 + 48);
  if (v23(v20, 1, v21) == 1)
  {
    v24 = sub_26124C718(v20, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v26 = sub_26125A798();
    v27 = sub_261291AA8();
    v52 = a1;
    sub_26129BC3C(v26 & 1, v2, 0xD000000000000022, 0x80000002613BCA30, v27, v28);
    LOBYTE(a1) = v52;

    v24 = (*(v22 + 8))(v20, v21);
  }

  v25 = v2;
  if (*(v2 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_entitlements + 82) == 1 && (a2 & 1) != 0)
  {
    v29 = v63;
    sub_26125A870(v64, v63, &qword_27FE9F560, &qword_2613A3CB0);
    if (v23(v29, 1, v21) == 1)
    {
      return sub_26124C718(v29, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v41 = sub_2613A122C();
      v42 = sub_2613A1D9C();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        *v43 = 0;
        _os_log_impl(&dword_261243000, v41, v42, "Close session skipped - has retail entitlement and is backgrounded", v43, 2u);
        MEMORY[0x266701350](v43, -1, -1);
      }

      return (*(v22 + 8))(v29, v21);
    }
  }

  else
  {
    v31 = (*((*MEMORY[0x277D85000] & *v2) + 0x2A0))(v24);
    if (v31)
    {
      v32 = v31;
      if (*(v2 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_deprecationAlertDialog))
      {
        *(v2 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_deprecationAlertDialog) = 0;
        sub_26139F6CC();
      }

      if (a1)
      {
        v33 = v32[8];
        v34 = v32[9];

        sub_261311C30(v33, v34);

        sub_26139F73C();
        sub_26139F72C();
        v35 = v25;
        v36 = v32[4];
        v37 = v32[5];

        sub_26139F71C();

        v25 = v35;
      }

      v38 = *(v25 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_uiManager);
      if ((*(*v38 + 536))())
      {
        *(v25 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_appRequestedCloseSession) = 1;
        v39 = *(v25 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_readTask);
        if (v39)
        {
          v40 = *(*v39 + 296);

          v40(2);
        }

        [v38 updateWithTransactionEvent_];
      }

      else if ((*(*v38 + 544))())
      {
        *(v25 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_appRequestedCloseSession) = 1;
        (*(*v38 + 464))();
      }

      else
      {
        sub_26130DC08();
      }
    }

    else
    {
      v44 = v56;
      sub_26125A870(v64, v56, &qword_27FE9F560, &qword_2613A3CB0);
      if (v23(v44, 1, v21) == 1)
      {
        sub_26124C718(v44, &qword_27FE9F560, &qword_2613A3CB0);
      }

      else
      {
        v45 = sub_2613A122C();
        v46 = sub_2613A1D8C();
        if (os_log_type_enabled(v45, v46))
        {
          v47 = swift_slowAlloc();
          *v47 = 0;
          _os_log_impl(&dword_261243000, v45, v46, "no context", v47, 2u);
          MEMORY[0x266701350](v47, -1, -1);
        }

        (*(v22 + 8))(v44, v21);
      }

      (*(v57 + 104))(v62, *MEMORY[0x277D43868], v58);
      (*(v59 + 104))(v54, *MEMORY[0x277D43978], v60);
      v48 = [objc_opt_self() processInfo];
      v49 = [v48 processName];

      sub_2613A18CC();
      v50 = v61;
      sub_26139FB6C();
      sub_26139FDBC();
      return (*(v53 + 8))(v50, v55);
    }
  }
}

uint64_t sub_261311C30(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v27 - v8;
  v34 = 0u;
  v35 = 0u;
  v33 = 0u;
  v10 = sub_26125B314(a1, a2);
  if (v10)
  {
    v11 = (*(*v10 + 376))(v10);
    if (v11)
    {
      v12 = v11;

      sub_2612C1138(v36, a1, a2, v12);
      *(&v28 + 1) = &type metadata for SessionDeleted;
      *&v29 = sub_261324690();
      v13 = swift_allocObject();
      *&v27 = v13;
      v14 = v36[1];
      v13[1] = v36[0];
      v13[2] = v14;
      v13[3] = v36[2];
      sub_2612B64A4(8, &v27, &v30);

      sub_26124C718(&v33, &qword_27FE9F8D0, &unk_2613AC6E0);
      v33 = v30;
      v34 = v31;
      v35 = v32;
    }

    else
    {
    }
  }

  if (sub_26125B3FC(a1, a2))
  {
    v15 = sub_26129B5FC();
    sub_26125A870(v15, v9, &qword_27FE9F560, &qword_2613A3CB0);
    v16 = sub_2613A124C();
    v17 = *(v16 - 8);
    if ((*(v17 + 48))(v9, 1, v16) == 1)
    {
      sub_26124C718(v9, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {

      v18 = sub_2613A122C();
      v19 = sub_2613A1D9C();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        *&v30 = v21;
        *v20 = 136315138;
        *(v20 + 4) = sub_26124C11C(a1, a2, &v30);
        _os_log_impl(&dword_261243000, v18, v19, "Session deleted - %s", v20, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v21);
        MEMORY[0x266701350](v21, -1, -1);
        MEMORY[0x266701350](v20, -1, -1);
      }

      (*(v17 + 8))(v9, v16);
    }

    sub_26125A870(&v33, &v27, &qword_27FE9F8D0, &unk_2613AC6E0);
    if (!v29)
    {
      sub_26124C718(&v33, &qword_27FE9F8D0, &unk_2613AC6E0);
      v25 = &v27;
      return sub_26124C718(v25, &qword_27FE9F8D0, &unk_2613AC6E0);
    }

    v30 = v27;
    v31 = v28;
    v32 = v29;
    v22 = (v3 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_cardReaderAdapter);
    v23 = *(v3 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_cardReaderAdapter + 24);
    v24 = v22[4];
    __swift_project_boxed_opaque_existential_1(v22, v23);
    (*(v24 + 120))(&v30, v23, v24);
    sub_2612A0E50(&v30);
  }

  v25 = &v33;
  return sub_26124C718(v25, &qword_27FE9F8D0, &unk_2613AC6E0);
}

uint64_t sub_26131208C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[137] = a7;
  v7[136] = a6;
  v7[135] = a5;
  v7[134] = a4;
  v8 = sub_26139F97C();
  v7[138] = v8;
  v9 = *(v8 - 8);
  v7[139] = v9;
  v10 = *(v9 + 64) + 15;
  v7[140] = swift_task_alloc();
  v11 = sub_26139FDCC();
  v7[141] = v11;
  v12 = *(v11 - 8);
  v7[142] = v12;
  v13 = *(v12 + 64) + 15;
  v7[143] = swift_task_alloc();
  v14 = sub_26139FAEC();
  v7[144] = v14;
  v15 = *(v14 - 8);
  v7[145] = v15;
  v16 = *(v15 + 64) + 15;
  v7[146] = swift_task_alloc();
  v17 = sub_26139FB7C();
  v7[147] = v17;
  v18 = *(v17 - 8);
  v7[148] = v18;
  v19 = *(v18 + 64) + 15;
  v7[149] = swift_task_alloc();
  v20 = sub_26139F13C();
  v7[150] = v20;
  v21 = *(v20 - 8);
  v7[151] = v21;
  v22 = *(v21 + 64) + 15;
  v7[152] = swift_task_alloc();
  v23 = sub_26139F64C();
  v7[153] = v23;
  v24 = *(v23 - 8);
  v7[154] = v24;
  v25 = *(v24 + 64) + 15;
  v7[155] = swift_task_alloc();
  v26 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0) - 8) + 64) + 15;
  v7[156] = swift_task_alloc();
  v7[157] = swift_task_alloc();
  v7[158] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261312374);
}

uint64_t sub_261312374()
{
  v196 = v0;
  v1 = *(v0 + 1264);
  v189 = sub_26129B5FC();
  sub_26125A870(v189, v1, &qword_27FE9F560, &qword_2613A3CB0);
  v2 = sub_2613A124C();
  v3 = *(v2 - 8);
  v186 = *(v3 + 48);
  v4 = v186(v1, 1, v2);
  v5 = *(v0 + 1264);
  if (v4 == 1)
  {
    sub_26124C718(*(v0 + 1264), &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v6 = *(v0 + 1072);
    v7 = sub_26125A798();
    v8 = sub_261291AA8();
    sub_26129BC3C(v7 & 1, v6, 0xD00000000000001FLL, 0x80000002613BD080, v8, v9);

    (*(v3 + 8))(v5, v2);
  }

  v10 = *(v0 + 1240);
  v11 = *(v0 + 1232);
  v12 = *(v0 + 1224);
  v13 = *(v0 + 1072);
  sub_26139F5CC();
  sub_26139F5DC();
  v14 = *(v11 + 8);
  v14(v10, v12);
  sub_26139F3AC();
  sub_26139F5DC();
  v15 = (v14)(v10, v12);
  if ((*(v13 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_entitlements + 80) & 1) == 0)
  {
    v30 = *(v0 + 1072);
    sub_2613135DC(0, 0x7469746E65206F6ELL, 0xEE00746E656D656CLL, *(v0 + 1080), *(v0 + 1088), *(v0 + 1096));
LABEL_30:
    v71 = *(v30 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_startTransactionTask);
    *(v30 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_startTransactionTask) = 0;
    goto LABEL_31;
  }

  v182 = v3;
  v184 = v2;
  v16 = MEMORY[0x277D85000];
  v181 = *((*MEMORY[0x277D85000] & **(v0 + 1072)) + 0x1B0);
  v17 = (v181)(v15);
  if (v17)
  {
    v18 = v14;
    v19 = *(v0 + 1216);
    v20 = *(v0 + 1208);
    v21 = *(v0 + 1200);
    v22 = *(v0 + 1080);
    sub_26139FCEC();
    sub_261392D24(v19);

    v23 = v19;
    v14 = v18;
    v24 = v21;
    v16 = MEMORY[0x277D85000];
    v17 = (*(v20 + 8))(v23, v24);
  }

  v25 = (*((*v16 & **(v0 + 1072)) + 0x2A0))(v17);
  if (!v25)
  {
    v34 = *(v0 + 1192);
    v35 = *(v0 + 1184);
    v190 = *(v0 + 1176);
    v36 = *(v0 + 1168);
    v37 = *(v0 + 1160);
    v38 = *(v0 + 1152);
    v39 = *(v0 + 1144);
    v40 = *(v0 + 1136);
    v41 = *(v0 + 1128);
    v30 = *(v0 + 1072);
    sub_2613135DC(0, 0x65746E6F63206F6ELL, 0xEA00000000007478, *(v0 + 1080), *(v0 + 1088), *(v0 + 1096));
    (*(v37 + 104))(v36, *MEMORY[0x277D43868], v38);
    (*(v40 + 104))(v39, *MEMORY[0x277D43978], v41);
    v42 = [objc_opt_self() processInfo];
    v43 = [v42 processName];

    sub_2613A18CC();
    sub_26139FB6C();
    sub_26139FDBC();
    (*(v35 + 8))(v34, v190);
    goto LABEL_30;
  }

  v26 = v25;
  sub_2613A121C();
  if (sub_2613A10EC())
  {
    v27 = *(v0 + 1096);
    v28 = *(v0 + 1088);
    v29 = *(v0 + 1080);
    v30 = *(v0 + 1072);
    v31 = 0xD000000000000015;
    v32 = 0x80000002613BCB10;
    v33 = 18;
LABEL_28:
    sub_2613135DC(v33, v31, v32, v29, v28, v27);
LABEL_29:

    goto LABEL_30;
  }

  if ((sub_2613A10FC() & 1) == 0)
  {
    v27 = *(v0 + 1096);
    v28 = *(v0 + 1088);
    v29 = *(v0 + 1080);
    v30 = *(v0 + 1072);
    v32 = 0x80000002613BC9F0;
    v33 = 19;
LABEL_27:
    v31 = 0xD000000000000011;
    goto LABEL_28;
  }

  v179 = v14;
  v44 = *(v0 + 1256);
  v45 = v26[4];
  v46 = v26[5];

  v47 = sub_2613A117C();

  sub_26125A870(v189, v44, &qword_27FE9F560, &qword_2613A3CB0);
  v48 = v184;
  if (v186(v44, 1, v184) == 1)
  {
    sub_26124C718(*(v0 + 1256), &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v49 = *(v0 + 1256);
    v50 = sub_2613A122C();
    v51 = sub_2613A1D9C();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 67240192;
      *(v52 + 4) = v47 & 1;
      _os_log_impl(&dword_261243000, v50, v51, "Diagnostics mode = %{BOOL,public}d", v52, 8u);
      v48 = v184;
      MEMORY[0x266701350](v52, -1, -1);
    }

    v53 = *(v0 + 1256);

    (*(v182 + 8))(v53, v48);
  }

  v54 = (*(v0 + 1072) + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_cardReaderAdapter);
  v55 = v54[3];
  v56 = v54[4];
  __swift_project_boxed_opaque_existential_1(v54, v55);
  (*(v56 + 48))(v47 & 1, v55, v56);
  v57 = sub_26125B314(v26[8], v26[9]);
  if (!v57)
  {
LABEL_26:
    v27 = *(v0 + 1096);
    v28 = *(v0 + 1088);
    v29 = *(v0 + 1080);
    v30 = *(v0 + 1072);
    v32 = 0x80000002613BC580;
    v33 = 4;
    goto LABEL_27;
  }

  v58 = v57;
  v59 = (*(*v57 + 376))();
  if (!v59)
  {

    goto LABEL_26;
  }

  v60 = v59;
  v61 = *(v0 + 1080);
  v62 = sub_26139FC7C();
  if (v62 >> 62)
  {
    v63 = sub_2613A221C();
  }

  else
  {
    v63 = *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v63 >= 51)
  {
    v65 = *(v0 + 1096);
    v66 = *(v0 + 1088);
    v67 = *(v0 + 1080);
    v30 = *(v0 + 1072);
    v68 = 0xD000000000000023;
    v69 = 0x80000002613BD050;
    v70 = 24;
LABEL_45:
    sub_2613135DC(v70, v68, v69, v67, v66, v65);

    goto LABEL_29;
  }

  if ((*(*v58 + 304))(v64))
  {
    type metadata accessor for StoreAndForwardManager();
    v177 = v60;
    v83 = v26[10];
    v84 = v26[11];

    sub_26126B07C(v83, v84, v0 + 160);
    v60 = v177;
  }

  else
  {
    v86.n128_f64[0] = sub_26130CC3C((v0 + 160));
  }

  v87 = (*(*v58 + 400))(v85, v86);
  if (v87 == 2 || (v87 & 1) != 0)
  {
    v88 = *(v0 + 272);
    *(v0 + 400) = *(v0 + 256);
    *(v0 + 416) = v88;
    *(v0 + 425) = *(v0 + 281);
    v89 = *(v0 + 208);
    *(v0 + 336) = *(v0 + 192);
    *(v0 + 352) = v89;
    v90 = *(v0 + 240);
    *(v0 + 368) = *(v0 + 224);
    *(v0 + 384) = v90;
    v91 = *(v0 + 176);
    *(v0 + 304) = *(v0 + 160);
    *(v0 + 320) = v91;
    if (sub_261273F24(v0 + 304) == 1)
    {
      v191 = *(v0 + 1096);
      v187 = *(v0 + 1088);
      v92 = *(v0 + 1080);
      v93 = *(v0 + 1072);
      v94 = v26[8];
      v95 = v26[9];
      v96 = v58[2];
      v97 = v58[3];

      v98 = sub_2612B8F3C(v94);
      v100 = v99;
      v102 = v101;
      v104 = v103;
      v194 = &type metadata for InvalidPartnerToken;
      v195 = sub_26132445C();
      v105 = swift_allocObject();
      *&v193 = v105;
      v105[2] = v98;
      v105[3] = v100;
      v105[4] = v102;
      v105[5] = v104;
      sub_2612B64A4(2, &v193, (v0 + 1024));
      v106 = v54[3];
      v107 = v54[4];
      __swift_project_boxed_opaque_existential_1(v54, v106);
      (*(v107 + 120))(v0 + 1024, v106, v107);
      sub_2613135DC(6, 0xD000000000000015, 0x80000002613BCFA0, v92, v187, v191);

      sub_2612A0E50(v0 + 1024);
      v108 = *(v93 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_startTransactionTask);
      *(v93 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_startTransactionTask) = 0;
      goto LABEL_31;
    }
  }

  v175 = (v0 + 160);
  v109 = *(v0 + 1072);
  if (sub_26130F3D4() & 1) != 0 || (v110 = *(**sub_2612B4F84() + 120), v111 = , LOBYTE(v110) = v110(v111), , (v110))
  {
    v112 = *(v0 + 1096);
    v113 = *(v0 + 1088);
    v114 = *(v0 + 1080);
    v30 = *(v0 + 1072);
    sub_26124C718(v175, &qword_27FE9F458, &unk_2613A4BE0);
    v68 = 0x6920726564616572;
    v69 = 0xEE00797375622073;
    v70 = 9;
LABEL_44:
    v67 = v114;
    v66 = v113;
    v65 = v112;
    goto LABEL_45;
  }

  v115 = *(v0 + 272);
  *(v0 + 544) = *(v0 + 256);
  *(v0 + 560) = v115;
  *(v0 + 569) = *(v0 + 281);
  v116 = *(v0 + 208);
  *(v0 + 480) = *(v0 + 192);
  *(v0 + 496) = v116;
  v117 = *(v0 + 240);
  *(v0 + 512) = *(v0 + 224);
  *(v0 + 528) = v117;
  v118 = *(v0 + 176);
  *(v0 + 448) = *v175;
  *(v0 + 464) = v118;
  if (sub_261273F24(v0 + 448) != 1)
  {
    v124 = *(v0 + 560);
    *(v0 + 112) = *(v0 + 544);
    *(v0 + 128) = v124;
    *(v0 + 137) = *(v0 + 569);
    v125 = *(v0 + 496);
    *(v0 + 48) = *(v0 + 480);
    *(v0 + 64) = v125;
    v126 = *(v0 + 528);
    *(v0 + 80) = *(v0 + 512);
    *(v0 + 96) = v126;
    v127 = *(v0 + 464);
    *(v0 + 16) = *(v0 + 448);
    *(v0 + 32) = v127;
    v128 = *(v0 + 272);
    *(v0 + 832) = *(v0 + 256);
    *(v0 + 848) = v128;
    *(v0 + 857) = *(v0 + 281);
    v129 = *(v0 + 208);
    *(v0 + 768) = *(v0 + 192);
    *(v0 + 784) = v129;
    v130 = *(v0 + 240);
    *(v0 + 800) = *(v0 + 224);
    *(v0 + 816) = v130;
    v131 = *(v0 + 176);
    *(v0 + 736) = *v175;
    *(v0 + 752) = v131;
    sub_261274028(v0 + 736, v0 + 880);
    v132 = sub_26127E13C();
    sub_26124C718(v175, &qword_27FE9F458, &unk_2613A4BE0);
    if (v132)
    {
      v112 = *(v0 + 1096);
      v113 = *(v0 + 1088);
      v114 = *(v0 + 1080);
      v30 = *(v0 + 1072);
      sub_26124C718(v175, &qword_27FE9F458, &unk_2613A4BE0);
      v68 = 0xD000000000000013;
      v69 = 0x80000002613BD030;
      v70 = 5;
      goto LABEL_44;
    }

    if (*(v0 + 296))
    {
      v112 = *(v0 + 1096);
      v113 = *(v0 + 1088);
      v114 = *(v0 + 1080);
      v30 = *(v0 + 1072);
      sub_26124C718(v175, &qword_27FE9F458, &unk_2613A4BE0);
      v68 = 0xD000000000000035;
      v69 = 0x80000002613BCFF0;
      v70 = 4;
      goto LABEL_44;
    }
  }

  v119 = *(*(v0 + 1072) + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_continuityDisplayMonitor);
  if (sub_2612FC1C0())
  {
    v120 = *(v0 + 1096);
    v121 = *(v0 + 1088);
    v122 = *(v0 + 1080);
    v123 = *(v0 + 1072);
    sub_26124C718(v175, &qword_27FE9F458, &unk_2613A4BE0);
    sub_2613A11FC();
    sub_2613135DC(10, 0xD00000000000002BLL, 0x80000002613BCFC0, v122, v121, v120);
  }

  else
  {
    if (sub_2612FBFC4())
    {
      v112 = *(v0 + 1096);
      v113 = *(v0 + 1088);
      v114 = *(v0 + 1080);
      v30 = *(v0 + 1072);
      sub_26124C718(v175, &qword_27FE9F458, &unk_2613A4BE0);
      v68 = 0xD00000000000002BLL;
      v69 = 0x80000002613BCFC0;
      v70 = 17;
      goto LABEL_44;
    }

    v178 = v60;
    v173 = (v0 + 592);
    v133 = *(v0 + 1248);
    v134 = *(v0 + 1240);
    v135 = *(v0 + 1224);
    sub_26139F3AC();
    sub_26139F5BC();
    v179(v134, v135);
    sub_26125A870(v189, v133, &qword_27FE9F560, &qword_2613A3CB0);
    v136 = v184;
    if (v186(v133, 1, v184) == 1)
    {
      sub_26124C718(*(v0 + 1248), &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v137 = *(v0 + 1080);
      v138 = sub_2613A122C();
      v139 = sub_2613A1D7C();

      if (os_log_type_enabled(v138, v139))
      {
        v140 = *(v0 + 1080);
        v141 = swift_slowAlloc();
        v142 = swift_slowAlloc();
        *v141 = 138412290;
        *(v141 + 4) = v140;
        *v142 = v140;
        v143 = v140;
        _os_log_impl(&dword_261243000, v138, v139, "Transaction request: %@", v141, 0xCu);
        sub_26124C718(v142, &qword_27FEA0410, &qword_2613AA780);
        v136 = v184;
        MEMORY[0x266701350](v142, -1, -1);
        MEMORY[0x266701350](v141, -1, -1);
      }

      v144 = *(v0 + 1248);

      (*(v182 + 8))(v144, v136);
    }

    v145 = *(v0 + 1080);
    v146 = *(v0 + 1072);
    v188 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v192 = swift_allocObject();
    v147 = swift_unknownObjectWeakInit();
    (*(*v58 + 184))(v147);
    type metadata accessor for Mock();
    sub_26129B284(22);
    sub_26139FC5C();
    v148 = v58[3];
    v172 = v58[2];
    v149 = *(v0 + 272);
    *(v0 + 688) = *(v0 + 256);
    *(v0 + 704) = v149;
    *(v0 + 713) = *(v0 + 281);
    v150 = *(v0 + 208);
    *(v0 + 624) = *(v0 + 192);
    *(v0 + 640) = v150;
    v151 = *(v0 + 240);
    *(v0 + 656) = *(v0 + 224);
    *(v0 + 672) = v151;
    v152 = *(v0 + 176);
    *v173 = *v175;
    *(v0 + 608) = v152;
    if (sub_261273F24(v173) == 1)
    {

      v170 = 0;
      v171 = 0;
    }

    else
    {
      v171 = *(v0 + 592);
      v153 = *(v0 + 600);

      v170 = v153;

      sub_26124C718(v175, &qword_27FE9F458, &unk_2613A4BE0);
    }

    v180 = *(v0 + 1112);
    v183 = *(v0 + 1104);
    v185 = *(v0 + 1120);
    v176 = *(v0 + 1096);
    v174 = *(v0 + 1088);
    v154 = *(v0 + 1080);
    v123 = *(v0 + 1072);
    type metadata accessor for TransactionTask();
    v155 = v181();
    v156 = *(v123 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_uiManager);
    v157 = v154;

    v159 = sub_2613377D4(v158, v157, v172, v148, v171, v170, v155, v156, sub_26132454C, v192, sub_2613244B0, v188);
    v160 = *(v123 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_readTask);
    *(v123 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_readTask) = v159;

    (*(*v159 + 280))(v178);

    v161 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v162 = swift_allocObject();
    *(v162 + 2) = v161;
    *(v162 + 3) = v174;
    *(v162 + 4) = v176;
    *(v162 + 5) = v157;
    v163 = (v123 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_transactionCompletion);
    v164 = *(v123 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_transactionCompletion);
    v165 = *(v123 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_transactionCompletion + 8);
    *v163 = sub_261324624;
    v163[1] = v162;
    v166 = v157;

    sub_26124A228(v164);

    v167 = v26[4];
    v168 = v26[5];

    LOBYTE(v167) = sub_2613A116C();

    sub_261314844(v166, v185, v167 & 1);

    (*(v180 + 8))(v185, v183);
  }

  v169 = *(v123 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_startTransactionTask);
  *(v123 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_startTransactionTask) = 0;
LABEL_31:

  v72 = *(v0 + 1264);
  v73 = *(v0 + 1256);
  v74 = *(v0 + 1248);
  v75 = *(v0 + 1240);
  v76 = *(v0 + 1216);
  v77 = *(v0 + 1192);
  v78 = *(v0 + 1168);
  v79 = *(v0 + 1144);
  v80 = *(v0 + 1120);

  v81 = *(v0 + 8);

  return v81();
}

void sub_2613135DC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(void, void *), void *a6)
{
  v7 = v6;
  v48[1] = a6;
  v49 = a5;
  v48[0] = a4;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = v48 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F340, &unk_2613A4B40);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = v48 - v17;
  ErrorEventData = type metadata accessor for ReadErrorEventData();
  v20 = *(*(ErrorEventData - 8) + 64);
  MEMORY[0x28223BE20](ErrorEventData - 8);
  v22 = (v48 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = sub_26139F64C();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  v27 = v48 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50[0] = a2;
  v50[1] = a3;
  sub_261314DEC(v50, &v51);
  sub_26139F3AC();
  sub_26139F5BC();
  v28 = *(v24 + 8);
  v28(v27, v23);
  sub_26139F5CC();
  sub_26139F5BC();
  v29 = (v28)(v27, v23);
  v30 = MEMORY[0x277D85000];
  v31 = (*((*MEMORY[0x277D85000] & *v7) + 0x2A0))(v29);
  if (v31)
  {
    v32 = sub_26125B314(*(v31 + 64), *(v31 + 72));
    if (v32)
    {
      v33 = (*(*v32 + 376))();
      if (v33)
      {
        v34 = v33;
        v35 = type metadata accessor for TransactionData(0);
        (*(*(v35 - 8) + 56))(v18, 1, 1, v35);
        v36 = v48[0];

        v37 = sub_2612B5C88(v36, v34, a1, v18, v22);
        if ((*((*v30 & *v7) + 0x1B0))(v37))
        {
          v38 = sub_2613A055C();
          sub_2613965D4(v22, 0, v38, v39);
        }

        else
        {
        }

        sub_261324634(v22);
        goto LABEL_16;
      }
    }
  }

  v40 = sub_26129B858();
  sub_26125A870(v40, v14, &qword_27FE9F560, &qword_2613A3CB0);
  v41 = sub_2613A124C();
  v42 = *(v41 - 8);
  if ((*(v42 + 48))(v14, 1, v41) == 1)
  {
    sub_26124C718(v14, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v43 = sub_2613A122C();
    v44 = sub_2613A1D8C();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_261243000, v43, v44, "Could not send transaction error event, context or session is empty", v45, 2u);
      MEMORY[0x266701350](v45, -1, -1);
    }

    (*(v42 + 8))(v14, v41);
  }

LABEL_16:
  sub_2612B45EC();
  v46 = swift_allocError();
  *v47 = a1;
  v49(0, v46);
}

uint64_t sub_261313B18(uint64_t a1, uint64_t a2, int a3)
{
  v4 = v3;
  v39 = a3;
  v35 = a2;
  v38 = a1;
  v5 = sub_26139F64C();
  v37 = *(v5 - 8);
  v6 = *(v37 + 64);
  MEMORY[0x28223BE20](v5);
  v36 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v32 - v13;
  v15 = sub_26129B5FC();
  sub_26125A870(v15, v14, &qword_27FE9F560, &qword_2613A3CB0);
  v16 = sub_2613A124C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 48);
  if (v18(v14, 1, v16) == 1)
  {
    sub_26124C718(v14, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v33 = v15;
    v19 = sub_26125A798();
    v20 = sub_261291AA8();
    v34 = v16;
    v15 = v33;
    sub_26129BC3C(v19 & 1, v4, 0xD00000000000001DLL, 0x80000002613BD0C0, v20, v21);
    v16 = v34;

    (*(v17 + 8))(v14, v16);
  }

  v22 = v4 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_transactionCompletion;
  v23 = *(v4 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_transactionCompletion);
  if (v23)
  {
    v24 = *(v22 + 8);

    v25 = v38;
    if (v38 || (v39 & 1) == 0)
    {
      v27 = v36;
      sub_26139F52C();
      sub_26139F5DC();
      v28 = *(v37 + 8);
      v28(v27, v5);
      v23(v25, v35, v39 & 1);
      sub_26139F52C();
      sub_26139F5BC();
      sub_26124A228(v23);
      return (v28)(v27, v5);
    }

    else
    {
      v23(0, 25, 0);
      return sub_26124A228(v23);
    }
  }

  else
  {
    sub_26125A870(v15, v12, &qword_27FE9F560, &qword_2613A3CB0);
    if (v18(v12, 1, v16) == 1)
    {
      return sub_26124C718(v12, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v29 = sub_2613A122C();
      v30 = sub_2613A1D7C();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_261243000, v29, v30, "reportTransactionResult - completion is nil", v31, 2u);
        MEMORY[0x266701350](v31, -1, -1);
      }

      return (*(v17 + 8))(v12, v16);
    }
  }
}

void sub_261313F38(void *a1, uint64_t a2, int a3, uint64_t a4, void (*a5)(void *, void *), uint64_t a6, uint64_t a7)
{
  v75 = a7;
  v81 = a6;
  v82 = a5;
  v87 = a3;
  v78 = a2;
  v76 = sub_26139F13C();
  v9 = *(v76 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v76);
  v83 = v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_26139F64C();
  v12 = *(v79 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v79);
  v15 = v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v86 = v72 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v77 = v72 - v21;
  MEMORY[0x28223BE20](v20);
  v23 = v72 - v22;
  v80 = sub_26129B5FC();
  sub_26125A870(v80, v23, &qword_27FE9F560, &qword_2613A3CB0);
  v24 = sub_2613A124C();
  v25 = *(*(v24 - 8) + 48);
  v84 = *(v24 - 8);
  v85 = v25;
  v26 = v25(v23, 1, v24);
  v88 = a1;
  if (v26 == 1)
  {
    sub_26124C718(v23, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v74 = v9;
    v27 = a1;
    v28 = sub_2613A122C();
    v29 = sub_2613A1D7C();

    if (os_log_type_enabled(v28, v29))
    {
      v73 = a4;
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *v30 = 138412546;
      *(v30 + 4) = v27;
      *v31 = v88;
      *(v30 + 12) = 2112;
      if (v87)
      {
        v32 = v27;
        v33 = 0;
      }

      else
      {
        sub_2612B45EC();
        v72[1] = swift_allocError();
        *v34 = v78;
        v35 = v27;
        v33 = _swift_stdlib_bridgeErrorToNSError();
      }

      *(v30 + 14) = v33;
      v31[1] = v33;
      _os_log_impl(&dword_261243000, v28, v29, "transactionCompletion: result=%@. error=%@", v30, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0410, &qword_2613AA780);
      swift_arrayDestroy();
      MEMORY[0x266701350](v31, -1, -1);
      MEMORY[0x266701350](v30, -1, -1);
      a4 = v73;
    }

    (*(v84 + 8))(v23, v24);
    v9 = v74;
  }

  sub_26139F5CC();
  sub_26139F5BC();
  (*(v12 + 8))(v15, v79);
  v36 = v87;
  v37 = v88;
  v38 = v86;
  v39 = v80;
  if (v87)
  {
LABEL_12:
    if (!v37)
    {
      goto LABEL_21;
    }

    goto LABEL_13;
  }

  v40 = v77;
  sub_26125A870(v80, v77, &qword_27FE9F560, &qword_2613A3CB0);
  if (v85(v40, 1, v24) == 1)
  {
    sub_26124C718(v40, &qword_27FE9F560, &qword_2613A3CB0);
    goto LABEL_12;
  }

  v51 = sub_2613A122C();
  v52 = sub_2613A1D7C();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    *v53 = 138412290;
    sub_2612B45EC();
    swift_allocError();
    *v55 = v78;
    v56 = _swift_stdlib_bridgeErrorToNSError();
    *(v53 + 4) = v56;
    *v54 = v56;
    _os_log_impl(&dword_261243000, v51, v52, "Returning transaction error: %@", v53, 0xCu);
    sub_26124C718(v54, &qword_27FEA0410, &qword_2613AA780);
    v57 = v54;
    v38 = v86;
    MEMORY[0x266701350](v57, -1, -1);
    MEMORY[0x266701350](v53, -1, -1);
  }

  (*(v84 + 8))(v77, v24);
  v37 = v88;
  if (v88)
  {
LABEL_13:
    sub_26125A870(v39, v38, &qword_27FE9F560, &qword_2613A3CB0);
    if (v85(v38, 1, v24) == 1)
    {
      sub_26124C718(v38, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v41 = v37;
      v42 = v37;
      v43 = sub_2613A122C();
      v44 = sub_2613A1D7C();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        v46 = v9;
        v47 = swift_slowAlloc();
        *v45 = 138412290;
        *(v45 + 4) = v42;
        *v47 = v41;
        v48 = v42;
        _os_log_impl(&dword_261243000, v43, v44, "Returning transaction result: %@", v45, 0xCu);
        sub_26124C718(v47, &qword_27FEA0410, &qword_2613AA780);
        v49 = v47;
        v9 = v46;
        v36 = v87;
        MEMORY[0x266701350](v49, -1, -1);
        v50 = v45;
        v38 = v86;
        MEMORY[0x266701350](v50, -1, -1);
        v42 = v43;
        v43 = v48;
      }

      (*(v84 + 8))(v38, v24);
      v37 = v88;
    }
  }

LABEL_21:
  if (v36)
  {
    v58 = 0;
  }

  else
  {
    sub_2612B45EC();
    v58 = swift_allocError();
    *v59 = v78;
  }

  v60 = v83;
  v82(v37, v58);

  if (v37)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v62 = Strong;
      v63 = (*((*MEMORY[0x277D85000] & *Strong) + 0x1B0))();

      if (v63)
      {
        sub_26139FCEC();
        sub_261396B94(v60);
LABEL_32:

LABEL_33:
        (*(v9 + 8))(v60, v76);
      }
    }
  }

  else if (v36)
  {
    swift_beginAccess();
    v64 = swift_unknownObjectWeakLoadStrong();
    if (v64)
    {
      v65 = v64;
      v66 = (*((*MEMORY[0x277D85000] & *v64) + 0x1B0))();

      if (v66)
      {
        sub_26139FCEC();
        sub_261398A5C(v60);
        goto LABEL_32;
      }
    }
  }

  else
  {
    swift_beginAccess();
    v67 = swift_unknownObjectWeakLoadStrong();
    if (v67)
    {
      v68 = v67;
      v69 = (*((*MEMORY[0x277D85000] & *v67) + 0x1B0))();

      if (v69)
      {
        sub_26139FCEC();
        v70 = sub_26139FACC();
        sub_261396BCC(v60, v70, v71);

        goto LABEL_33;
      }
    }
  }

  sub_2613178E0(a4, &OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_transactionCompletion);
}

uint64_t sub_261314844(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v30 - v13;
  v33 = sub_26129B5FC();
  sub_26125A870(v33, v14, &qword_27FE9F560, &qword_2613A3CB0);
  v15 = sub_2613A124C();
  v16 = *(v15 - 8);
  v32 = *(v16 + 48);
  if (v32(v14, 1, v15) == 1)
  {
    sub_26124C718(v14, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v30 = v4;
    v17 = sub_26125A798();
    v18 = sub_261291AA8();
    v31 = v15;
    v4 = v30;
    sub_26129BC3C(v17 & 1, v30, 0xD000000000000018, 0x80000002613BD0A0, v18, v19);
    v15 = v31;

    (*(v16 + 8))(v14, v15);
  }

  v20 = [objc_opt_self() server];
  if (v20)
  {
    v21 = v20;
    v22 = [v20 voiceOverEnabled];
  }

  else
  {
    v22 = 0;
  }

  *(v4 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_voiceOverRequiresReEnabling) = v22;
  v23 = *(v4 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_uiManager);
  (*(*v23 + 368))(v4);
  sub_26125A870(v33, v12, &qword_27FE9F560, &qword_2613A3CB0);
  if (v32(v12, 1, v15) == 1)
  {
    sub_26124C718(v12, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v24 = sub_2613A122C();
    v25 = sub_2613A1D7C();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = v16;
      v27 = swift_slowAlloc();
      *v27 = 67109120;
      *(v27 + 4) = a3 & 1;
      _os_log_impl(&dword_261243000, v24, v25, "showTapUI - %{BOOL}d", v27, 8u);
      v28 = v27;
      v16 = v26;
      MEMORY[0x266701350](v28, -1, -1);
    }

    (*(v16 + 8))(v12, v15);
  }

  return (*(*v23 + 552))(a1, a2, a3 & 1);
}

void sub_261314D7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_26139EE6C();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

uint64_t sub_261314DEC@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v21 - v6;
  v8 = *a1;
  v9 = a1[1];
  v10 = sub_26129B5FC();
  sub_26125A870(v10, v7, &qword_27FE9F560, &qword_2613A3CB0);
  v11 = sub_2613A124C();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v7, 1, v11);
  if (v13 == 1)
  {
    result = sub_26124C718(v7, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {

    v15 = sub_2613A122C();
    v16 = sub_2613A1D8C();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v21 = a2;
      v18 = v17;
      v19 = swift_slowAlloc();
      v22 = v19;
      *v18 = 136446210;
      *(v18 + 4) = sub_26124C11C(v8, v9, &v22);
      _os_log_impl(&dword_261243000, v15, v16, "%{public}s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v19);
      MEMORY[0x266701350](v19, -1, -1);
      v20 = v18;
      a2 = v21;
      MEMORY[0x266701350](v20, -1, -1);
    }

    result = (*(v12 + 8))(v7, v11);
  }

  *a2 = v13 == 1;
  return result;
}

uint64_t sub_261315010(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = *(a1 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_readTask);
  if (v3)
  {
    v4 = *(*v3 + 296);
    v5 = *(a1 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_readTask);

    v6 = v4(0);
  }

  else
  {
    v6 = 0;
  }

  return a2(v6 & 1);
}

uint64_t sub_2613150B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a5;
  v6[3] = a6;
  v8 = *(MEMORY[0x277D857D0] + 4);
  v9 = swift_task_alloc();
  v6[4] = v9;
  *v9 = v6;
  v9[1] = sub_261315170;
  v10 = MEMORY[0x277D84A98];
  v11 = MEMORY[0x277D84AC0];
  v12 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200440](v6 + 5, a4, v12, v10, v11);
}

uint64_t sub_261315170()
{
  v1 = *(*v0 + 32);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_26131526C);
}

uint64_t sub_26131526C()
{
  v1 = *(v0 + 24);
  (*(v0 + 16))();
  v2 = *(v0 + 8);

  return v2();
}

void sub_2613152E8(void *a1, int a2, void *aBlock, void (*a4)(void))
{
  v6 = _Block_copy(aBlock);
  _Block_copy(v6);
  v7 = a1;
  a4();
  _Block_release(v6);
  _Block_release(v6);
}

uint64_t sub_261315364()
{
  v1[9] = v0;
  v2 = sub_2613A177C();
  v1[10] = v2;
  v3 = *(v2 - 8);
  v1[11] = v3;
  v4 = *(v3 + 64) + 15;
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v5 = sub_2613A172C();
  v1[14] = v5;
  v6 = *(v5 - 8);
  v1[15] = v6;
  v7 = *(v6 + 64) + 15;
  v1[16] = swift_task_alloc();
  v8 = sub_2613A171C();
  v1[17] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v1[18] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0) - 8) + 64) + 15;
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26131550C);
}

uint64_t sub_26131550C()
{
  v1 = v0[21];
  v60 = sub_26129B5FC();
  sub_26125A870(v60, v1, &qword_27FE9F560, &qword_2613A3CB0);
  v2 = sub_2613A124C();
  v3 = *(v2 - 8);
  v65 = *(v3 + 48);
  v4 = v65(v1, 1, v2);
  v5 = v0[21];
  v64 = v2;
  if (v4 == 1)
  {
    sub_26124C718(v5, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v6 = v0[9];
    v7 = sub_26125A798();
    v8 = sub_261291AA8();
    sub_26129BC3C(v7 & 1, v6, 0xD000000000000011, 0x80000002613BCF50, v8, v9);

    (*(v3 + 8))(v5, v2);
  }

  v61 = OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_issuerPINContinuationTimeout;
  v62 = v0[9];
  v63 = v3;
  if (*(v62 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_issuerPINContinuationTimeout))
  {

    sub_2613A179C();

    v10 = v0[9];
  }

  v12 = v0[17];
  v11 = v0[18];
  v13 = v0[15];
  v14 = v0[16];
  v57 = v0[13];
  v15 = v0[11];
  v55 = v0[14];
  v56 = v0[12];
  v58 = v0[10];
  v59 = v0[20];
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v0[6] = sub_26132440C;
  v0[7] = v16;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_261276D54;
  v0[5] = &block_descriptor_181;
  _Block_copy(v0 + 2);
  v0[8] = MEMORY[0x277D84F90];
  sub_2612D4168(&qword_27FE9F4B0, MEMORY[0x277D85198]);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F640, &unk_2613AA600);
  sub_26128D9C4();
  sub_2613A203C();
  v17 = sub_2613A17AC();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  v20 = sub_2613A178C();
  v21 = v0[7];

  v22 = *(v62 + v61);
  *(v62 + v61) = v20;

  sub_26127BBE0();
  (*(v13 + 104))(v14, *MEMORY[0x277D851C8], v55);
  v23 = sub_2613A1E3C();
  (*(v13 + 8))(v14, v55);
  sub_2613A176C();
  sub_2613A17CC();
  v24 = *(v15 + 8);
  v24(v56, v58);
  sub_2613A1DFC();

  v24(v57, v58);
  sub_26125A870(v60, v59, &qword_27FE9F560, &qword_2613A3CB0);
  if (v65(v59, 1, v64) == 1)
  {
    sub_26124C718(v0[20], &qword_27FE9F560, &qword_2613A3CB0);
    v25 = v63;
  }

  else
  {
    v26 = v0[20];
    v27 = sub_2613A122C();
    v28 = sub_2613A1D9C();
    v25 = v63;
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_261243000, v27, v28, "waitForTaskDone - about to wait", v29, 2u);
      MEMORY[0x266701350](v29, -1, -1);
    }

    v30 = v0[20];

    (*(v63 + 8))(v30, v64);
  }

  v31 = v0[9];
  if (sub_26130F3D4() & 1) != 0 || (v32 = *(**sub_2612B4F84() + 120), v33 = , LOBYTE(v32) = v32(v33), , (v32))
  {
    v34 = v0[9];
    v35 = swift_task_alloc();
    v0[22] = v35;
    *(v35 + 16) = v34;
    v36 = *(MEMORY[0x277D859E0] + 4);
    v37 = swift_task_alloc();
    v0[23] = v37;
    *v37 = v0;
    v37[1] = sub_261315CAC;
    v38 = MEMORY[0x277D839B0];

    return MEMORY[0x2822007B8](v0 + 24, 0, 0, 0xD000000000000011, 0x80000002613BCF50, sub_261324438, v35, v38);
  }

  v39 = v0[19];
  sub_26125A870(v60, v39, &qword_27FE9F560, &qword_2613A3CB0);
  if (v65(v39, 1, v64) != 1)
  {
    v41 = v0[19];
    v42 = sub_2613A122C();
    v43 = sub_2613A1D9C();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_261243000, v42, v43, "waitForTaskDone - already completed or nothing pending", v44, 2u);
      MEMORY[0x266701350](v44, -1, -1);
    }

    v45 = v0[19];

    (*(v25 + 8))(v45, v64);
    if (!*(v62 + v61))
    {
      goto LABEL_22;
    }

    goto LABEL_18;
  }

  sub_26124C718(v0[19], &qword_27FE9F560, &qword_2613A3CB0);
  if (*(v62 + v61))
  {
LABEL_18:

    sub_2613A179C();

    v40 = *(v62 + v61);
  }

LABEL_22:
  *(v62 + v61) = 0;

  v47 = v0[20];
  v46 = v0[21];
  v49 = v0[18];
  v48 = v0[19];
  v50 = v0[16];
  v52 = v0[12];
  v51 = v0[13];

  v53 = v0[1];

  return v53(1);
}

uint64_t sub_261315CAC()
{
  v1 = *(*v0 + 184);
  v2 = *(*v0 + 176);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_261315DC4);
}

uint64_t sub_261315DC4()
{
  v1 = *(v0 + 192);
  v3 = *(v0 + 160);
  v2 = *(v0 + 168);
  v5 = *(v0 + 144);
  v4 = *(v0 + 152);
  v6 = *(v0 + 128);
  v8 = *(v0 + 96);
  v7 = *(v0 + 104);

  v9 = *(v0 + 8);

  return v9(v1);
}

uint64_t sub_261315E80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = v17;
  v8[8] = v18;
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  v9 = sub_26139F13C();
  v8[9] = v9;
  v10 = *(v9 - 8);
  v8[10] = v10;
  v8[11] = *(v10 + 64);
  v8[12] = swift_task_alloc();
  v11 = sub_26139F64C();
  v8[13] = v11;
  v12 = *(v11 - 8);
  v8[14] = v12;
  v13 = *(v12 + 64) + 15;
  v8[15] = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0) - 8) + 64) + 15;
  v8[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261315FF0);
}

uint64_t sub_261315FF0()
{
  v1 = v0[2];
  if (sub_26130F3D4() & 1) != 0 || (v2 = *(**sub_2612B4F84() + 120), v3 = , LOBYTE(v2) = v2(v3), , (v2))
  {
    v4 = swift_task_alloc();
    v0[17] = v4;
    *v4 = v0;
    v4[1] = sub_261316494;
    v5 = v0[2];

    return sub_261315364();
  }

  else
  {
    v7 = v0[12];
    v8 = v0[9];
    v9 = v0[10];
    v42 = v9;
    v43 = v0[11];
    v38 = v8;
    v10 = v0[7];
    v11 = v0[8];
    v12 = v0[3];
    v44 = v0[4];
    v46 = v0[5];
    v40 = v12;
    v41 = v0[6];
    v13 = v0[2];
    v14 = swift_allocObject();
    v0[18] = v14;
    swift_unknownObjectWeakInit();
    type metadata accessor for IssuerPINTask();
    v39 = *(v9 + 16);
    v39(v7, v12, v8);
    v15 = *((*MEMORY[0x277D85000] & *v13) + 0x1B0);

    v17 = v15(v16);

    v18 = sub_261304C34(v7, v41, v10, v11, v17, sub_261324338, v14);
    v19 = OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_pinTask;
    v20 = *(v13 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_pinTask);
    *(v13 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_pinTask) = v18;

    v21 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v39(v7, v40, v38);
    v22 = (*(v42 + 80) + 24) & ~*(v42 + 80);
    v23 = swift_allocObject();
    *(v23 + 16) = v21;
    (*(v42 + 32))(v23 + v22, v7, v38);
    v24 = (v23 + ((v43 + v22 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v24 = v44;
    v24[1] = v46;
    v25 = (v13 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_pinCompletion);
    v26 = *(v13 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_pinCompletion);
    v27 = *(v13 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_pinCompletion + 8);
    *v25 = sub_261324350;
    v25[1] = v23;

    sub_26124A228(v26);

    v28 = *(v13 + v19);
    v0[19] = v28;
    if (v28)
    {
      v29 = *(*v28 + 232);

      v45 = (v29 + *v29);
      v30 = v29[1];
      v31 = swift_task_alloc();
      v0[20] = v31;
      *v31 = v0;
      v31[1] = sub_261316BF4;

      return v45();
    }

    else
    {
      v32 = v0[18];
      v33 = v0[2];
      sub_261317CBC(1);

      v35 = v0[15];
      v34 = v0[16];
      v36 = v0[12];

      v37 = v0[1];

      return v37();
    }
  }
}

uint64_t sub_261316494(char a1)
{
  v2 = *(*v1 + 136);
  v4 = *v1;
  *(*v1 + 176) = a1;

  return MEMORY[0x2822009F8](sub_261316594);
}

uint64_t sub_261316594()
{
  v63 = v0;
  if (*(v0 + 176))
  {
    v1 = *(v0 + 96);
    v2 = *(v0 + 72);
    v3 = *(v0 + 80);
    v56 = v3;
    v57 = *(v0 + 88);
    v52 = v2;
    v4 = *(v0 + 56);
    v5 = *(v0 + 64);
    v6 = *(v0 + 24);
    v58 = *(v0 + 32);
    v60 = *(v0 + 40);
    v54 = v6;
    v55 = *(v0 + 48);
    v7 = *(v0 + 16);
    v8 = swift_allocObject();
    *(v0 + 144) = v8;
    swift_unknownObjectWeakInit();
    type metadata accessor for IssuerPINTask();
    v53 = *(v3 + 16);
    v53(v1, v6, v2);
    v9 = *((*MEMORY[0x277D85000] & *v7) + 0x1B0);

    v11 = v9(v10);

    v12 = sub_261304C34(v1, v55, v4, v5, v11, sub_261324338, v8);
    v13 = OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_pinTask;
    v14 = *(v7 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_pinTask);
    *(v7 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_pinTask) = v12;

    v15 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v53(v1, v54, v52);
    v16 = (*(v56 + 80) + 24) & ~*(v56 + 80);
    v17 = swift_allocObject();
    *(v17 + 16) = v15;
    (*(v56 + 32))(v17 + v16, v1, v52);
    v18 = (v17 + ((v57 + v16 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v18 = v58;
    v18[1] = v60;
    v19 = (v7 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_pinCompletion);
    v20 = *(v7 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_pinCompletion);
    v21 = *(v7 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_pinCompletion + 8);
    *v19 = sub_261324350;
    v19[1] = v17;

    sub_26124A228(v20);

    v22 = *(v7 + v13);
    *(v0 + 152) = v22;
    if (v22)
    {
      v23 = *(*v22 + 232);

      v59 = (v23 + *v23);
      v24 = v23[1];
      v25 = swift_task_alloc();
      *(v0 + 160) = v25;
      *v25 = v0;
      v25[1] = sub_261316BF4;

      return v59();
    }

    v46 = *(v0 + 144);
    v47 = *(v0 + 16);
    sub_261317CBC(1);
  }

  else
  {
    v27 = *(v0 + 128);
    v28 = sub_26129B5FC();
    sub_26125A870(v28, v27, &qword_27FE9F560, &qword_2613A3CB0);
    v29 = sub_2613A124C();
    v30 = *(v29 - 8);
    if ((*(v30 + 48))(v27, 1, v29) == 1)
    {
      sub_26124C718(*(v0 + 128), &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v31 = *(v0 + 128);
      v32 = sub_2613A122C();
      v33 = sub_2613A1D8C();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        *v34 = 0;
        _os_log_impl(&dword_261243000, v32, v33, "timed out waiting for issuerPINContinuation", v34, 2u);
        MEMORY[0x266701350](v34, -1, -1);
      }

      v35 = *(v0 + 128);

      (*(v30 + 8))(v35, v29);
    }

    v37 = *(v0 + 112);
    v36 = *(v0 + 120);
    v38 = *(v0 + 104);
    v40 = *(v0 + 32);
    v39 = *(v0 + 40);
    v41 = *(v0 + 16);
    sub_26139F50C();
    sub_26139F5BC();
    v42 = *(v37 + 8);
    v42(v36, v38);
    strcpy(v62, "reader is busy");
    HIBYTE(v62[1]) = -18;
    v43 = sub_261314DEC(v62, &v61);
    (*((*MEMORY[0x277D85000] & *v41) + 0x2A0))(v43);

    sub_26139F47C();
    sub_26139F5DC();
    v42(v36, v38);
    sub_2612B45EC();
    v44 = swift_allocError();
    *v45 = 9;
    v40(0, v44);

    sub_26139F47C();
    sub_26139F5BC();
    v42(v36, v38);
    sub_261317CBC(1);
  }

  v49 = *(v0 + 120);
  v48 = *(v0 + 128);
  v50 = *(v0 + 96);

  v51 = *(v0 + 8);

  return v51();
}

uint64_t sub_261316BF4(uint64_t a1)
{
  v2 = *(*v1 + 160);
  v3 = *(*v1 + 152);
  v5 = *v1;
  *(*v1 + 168) = a1;

  return MEMORY[0x2822009F8](sub_261316D14);
}

uint64_t sub_261316D14()
{
  v1 = v0[21];
  v2 = v0[18];
  if (v1)
  {
    v3 = v0[7];
    v4 = v0[8];
    v5 = v0[6];
    v6 = v0[2];
    sub_2613A121C();
    v7 = *(v4 + 32);
    v8 = *(v4 + 40);
    v9 = sub_2613A116C();
    sub_261318200(v5, v3, v1, v9 & 1);
  }

  else
  {
    v10 = v0[2];
    sub_261317CBC(1);
  }

  v12 = v0[15];
  v11 = v0[16];
  v13 = v0[12];

  v14 = v0[1];

  return v14();
}

uint64_t sub_261316E00(uint64_t a1, uint64_t a2, int a3)
{
  v4 = v3;
  v44 = a3;
  v41 = a2;
  v43 = a1;
  v45 = sub_26139F64C();
  v42 = *(v45 - 8);
  v5 = *(v42 + 64);
  MEMORY[0x28223BE20](v45);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v38 - v13;
  v15 = sub_26129B5FC();
  sub_26125A870(v15, v14, &qword_27FE9F560, &qword_2613A3CB0);
  v16 = sub_2613A124C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 48);
  if (v18(v14, 1, v16) == 1)
  {
    sub_26124C718(v14, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v39 = v18;
    v19 = v15;
    v20 = v4;
    v21 = v17;
    v22 = sub_26125A798();
    v23 = sub_261291AA8();
    v40 = v16;
    v24 = v22 & 1;
    v17 = v21;
    v4 = v20;
    v15 = v19;
    v18 = v39;
    sub_26129BC3C(v24, v4, 0xD000000000000015, 0x80000002613BCF30, v23, v25);
    v16 = v40;

    (*(v17 + 8))(v14, v16);
  }

  v26 = *(v4 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_pinCompletion);
  if (v26)
  {
    v27 = *(v4 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_pinCompletion + 8);

    sub_26139F50C();
    sub_26139F5BC();
    v28 = *(v42 + 8);
    v28(v7, v45);
    v29 = v44;
    v30 = v43;
    if (v43 || (v44 & 1) == 0)
    {
      sub_26139F47C();
      sub_26139F5DC();
      v32 = v45;
      v28(v7, v45);
      v26(v30, v41, v29 & 1);
      sub_26139F47C();
      sub_26139F5BC();
      sub_26124A228(v26);
      return (v28)(v7, v32);
    }

    else
    {
      v26(0, 27, 0);
      return sub_26124A228(v26);
    }
  }

  else
  {
    sub_26125A870(v15, v12, &qword_27FE9F560, &qword_2613A3CB0);
    if (v18(v12, 1, v16) == 1)
    {
      return sub_26124C718(v12, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v33 = sub_2613A122C();
      v34 = sub_2613A1D7C();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = v17;
        v36 = swift_slowAlloc();
        *v36 = 0;
        _os_log_impl(&dword_261243000, v33, v34, "reportTransactionResult - completion is nil", v36, 2u);
        v37 = v36;
        v17 = v35;
        MEMORY[0x266701350](v37, -1, -1);
      }

      return (*(v17 + 8))(v12, v16);
    }
  }
}

void sub_261317248(void *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, void (*a6)(void, void), uint64_t a7)
{
  v61 = a2;
  v62 = a7;
  v64 = a3;
  v66 = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v65 = v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = v57 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = v57 - v17;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v20 = Strong;
    v21 = (*((*MEMORY[0x277D85000] & *Strong) + 0x1B0))();

    if (v21)
    {
      sub_261398A5C(a5);
    }
  }

  v63 = sub_26129B5FC();
  sub_26125A870(v63, v18, &qword_27FE9F560, &qword_2613A3CB0);
  v22 = sub_2613A124C();
  v23 = *(v22 - 8);
  v24 = *(v23 + 48);
  if (v24(v18, 1, v22) == 1)
  {
    sub_26124C718(v18, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v58 = a6;
    v59 = a4;
    v25 = v66;
    v26 = sub_2613A122C();
    v27 = sub_2613A1D7C();

    if (os_log_type_enabled(v26, v27))
    {
      v60 = v23;
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *v28 = 138412546;
      *(v28 + 4) = v25;
      *v29 = v66;
      *(v28 + 12) = 2112;
      if (v64)
      {
        v30 = v25;
        v31 = 0;
      }

      else
      {
        sub_2612B45EC();
        v57[1] = swift_allocError();
        *v32 = v61;
        v33 = v25;
        v31 = _swift_stdlib_bridgeErrorToNSError();
      }

      *(v28 + 14) = v31;
      v29[1] = v31;
      _os_log_impl(&dword_261243000, v26, v27, "pinCompletion: result=%@. error=%@", v28, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0410, &qword_2613AA780);
      swift_arrayDestroy();
      MEMORY[0x266701350](v29, -1, -1);
      MEMORY[0x266701350](v28, -1, -1);
      v23 = v60;
    }

    (*(v23 + 8))(v18, v22);
    a6 = v58;
    a4 = v59;
  }

  v34 = v64;
  v35 = v65;
  if (v64)
  {
LABEL_15:
    v36 = v66;
    if (!v66)
    {
      goto LABEL_24;
    }

    goto LABEL_16;
  }

  sub_26125A870(v63, v16, &qword_27FE9F560, &qword_2613A3CB0);
  if (v24(v16, 1, v22) == 1)
  {
    sub_26124C718(v16, &qword_27FE9F560, &qword_2613A3CB0);
    goto LABEL_15;
  }

  v46 = sub_2613A122C();
  v47 = sub_2613A1D7C();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v60 = v23;
    v49 = v48;
    v50 = swift_slowAlloc();
    *v49 = 138412290;
    sub_2612B45EC();
    swift_allocError();
    *v51 = v61;
    v52 = _swift_stdlib_bridgeErrorToNSError();
    *(v49 + 4) = v52;
    *v50 = v52;
    _os_log_impl(&dword_261243000, v46, v47, "Issuer PIN error: %@", v49, 0xCu);
    sub_26124C718(v50, &qword_27FEA0410, &qword_2613AA780);
    v53 = v50;
    v34 = v64;
    MEMORY[0x266701350](v53, -1, -1);
    v54 = v49;
    v23 = v60;
    MEMORY[0x266701350](v54, -1, -1);
  }

  (*(v23 + 8))(v16, v22);
  v35 = v65;
  v36 = v66;
  if (v66)
  {
LABEL_16:
    sub_26125A870(v63, v35, &qword_27FE9F560, &qword_2613A3CB0);
    if (v24(v35, 1, v22) == 1)
    {
      sub_26124C718(v35, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v60 = v23;
      v37 = v36;
      v38 = sub_2613A122C();
      v39 = sub_2613A1D7C();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v41 = a6;
        v42 = swift_slowAlloc();
        *v40 = 138412290;
        *(v40 + 4) = v37;
        *v42 = v36;
        v43 = v37;
        _os_log_impl(&dword_261243000, v38, v39, "Issuer PIN result: %@", v40, 0xCu);
        sub_26124C718(v42, &qword_27FEA0410, &qword_2613AA780);
        v44 = v42;
        a6 = v41;
        MEMORY[0x266701350](v44, -1, -1);
        v45 = v40;
        v34 = v64;
        MEMORY[0x266701350](v45, -1, -1);
        v37 = v38;
        v38 = v43;
      }

      (*(v60 + 8))(v65, v22);
    }
  }

LABEL_24:
  if (v34)
  {
    v55 = 0;
  }

  else
  {
    sub_2612B45EC();
    v55 = swift_allocError();
    *v56 = v61;
  }

  a6(v36, v55);

  sub_2613178E0(a4, &OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_pinCompletion);
}

void sub_2613178E0(uint64_t a1, void *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0560, &unk_2613AC8C0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v33 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA05F8, &unk_2613AC8D0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v33 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v33 - v14;
  v16 = sub_26129B5FC();
  sub_26125A870(v16, v15, &qword_27FE9F560, &qword_2613A3CB0);
  v17 = sub_2613A124C();
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v15, 1, v17) == 1)
  {
    sub_26124C718(v15, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v35 = v7;
    v19 = sub_2613A122C();
    v20 = sub_2613A1D7C();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v34 = v4;
      v22 = a2;
      v23 = v21;
      *v21 = 0;
      _os_log_impl(&dword_261243000, v19, v20, "!!!!!!! finishedCompletion: done", v21, 2u);
      v24 = v23;
      a2 = v22;
      v4 = v34;
      MEMORY[0x266701350](v24, -1, -1);
    }

    (*(v18 + 8))(v15, v17);
    v7 = v35;
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v26 = OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_finishedContinuation;
    v27 = Strong;
    swift_beginAccess();
    sub_26125A870(v27 + v26, v11, &qword_27FEA05F8, &unk_2613AC8D0);

    if ((*(v4 + 48))(v11, 1, v3))
    {
      sub_26124C718(v11, &qword_27FEA05F8, &unk_2613AC8D0);
    }

    else
    {
      (*(v4 + 16))(v7, v11, v3);
      sub_26124C718(v11, &qword_27FEA05F8, &unk_2613AC8D0);
      v36 = 1;
      sub_2613A1BDC();
      (*(v4 + 8))(v7, v3);
    }
  }

  swift_beginAccess();
  v28 = swift_unknownObjectWeakLoadStrong();
  if (v28)
  {
    v29 = (v28 + *a2);
    v31 = *v29;
    v30 = v29[1];
    *v29 = 0;
    v29[1] = 0;
    v32 = v28;
    sub_26124A228(v31);
  }
}

uint64_t sub_261317CBC(int a1)
{
  v2 = v1;
  LODWORD(v3) = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0560, &unk_2613AC8C0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v46 = &v43[-v7];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v43[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA05F8, &unk_2613AC8D0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = &v43[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v14);
  v18 = &v43[-v17];
  v47 = *(v5 + 56);
  v48 = v5 + 56;
  v47(&v43[-v17], 1, 1, v4);
  v19 = OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_finishedContinuation;
  swift_beginAccess();
  sub_2613242C8(v18, v2 + v19);
  swift_endAccess();
  v20 = OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_finishedContinuationTimeout;
  if (*(v2 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_finishedContinuationTimeout))
  {
    v21 = *(v2 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_finishedContinuationTimeout);

    sub_2613A179C();

    v22 = *(v2 + v20);
  }

  *(v2 + v20) = 0;

  v23 = sub_26129B5FC();
  sub_26125A870(v23, v11, &qword_27FE9F560, &qword_2613A3CB0);
  v24 = sub_2613A124C();
  v25 = *(v24 - 8);
  if ((*(v25 + 48))(v11, 1, v24) == 1)
  {
    sub_26124C718(v11, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v45 = v5;
    v26 = sub_2613A122C();
    v27 = sub_2613A1D7C();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v44 = v3;
      v3 = v28;
      *v28 = 0;
      _os_log_impl(&dword_261243000, v26, v27, "serviceCleanup: cleaning", v28, 2u);
      v29 = v3;
      LOBYTE(v3) = v44;
      MEMORY[0x266701350](v29, -1, -1);
    }

    (*(v25 + 8))(v11, v24);
    v5 = v45;
  }

  [*(v2 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_client) readFeedback_];
  v30 = &OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_pinTask;
  if ((v3 & 1) == 0)
  {
    v30 = &OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_readTask;
  }

  v31 = *v30;
  v32 = *(v2 + v31);
  *(v2 + v31) = 0;
  if (v3)
  {
    v33 = &OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_pinCompletion;
  }

  else
  {
    v33 = &OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_transactionCompletion;
  }

  v34 = (v2 + *v33);
  v35 = *v34;
  v36 = v34[1];
  *v34 = 0;
  v34[1] = 0;
  sub_26124A228(v35);
  if (*(v2 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_appRequestedCloseSession) == 1)
  {
    *(v2 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_appRequestedCloseSession) = 0;
    sub_26130DC08();
  }

  *(v2 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_voiceOverRequiresReEnabling) = 0;
  v37 = OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_issuerPINContinuation;
  swift_beginAccess();
  sub_26125A870(v2 + v37, v16, &qword_27FEA05F8, &unk_2613AC8D0);
  if ((*(v5 + 48))(v16, 1, v4))
  {
    sub_26124C718(v16, &qword_27FEA05F8, &unk_2613AC8D0);
  }

  else
  {
    v38 = v46;
    (*(v5 + 16))(v46, v16, v4);
    sub_26124C718(v16, &qword_27FEA05F8, &unk_2613AC8D0);
    v49 = 1;
    sub_2613A1BDC();
    (*(v5 + 8))(v38, v4);
  }

  v47(v18, 1, 1, v4);
  swift_beginAccess();
  sub_2613242C8(v18, v2 + v37);
  swift_endAccess();
  v39 = OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_issuerPINContinuationTimeout;
  if (*(v2 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_issuerPINContinuationTimeout))
  {
    v40 = *(v2 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_issuerPINContinuationTimeout);

    sub_2613A179C();

    v41 = *(v2 + v39);
  }

  *(v2 + v39) = 0;
}

id sub_261318200(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = v4;
  v35 = a4;
  v36 = a2;
  v34 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v31 - v12;
  v14 = sub_26129B5FC();
  sub_26125A870(v14, v13, &qword_27FE9F560, &qword_2613A3CB0);
  v15 = sub_2613A124C();
  v16 = *(v15 - 8);
  v33 = *(v16 + 48);
  if (v33(v13, 1, v15) == 1)
  {
    sub_26124C718(v13, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v32 = v15;
    v17 = sub_26125A798();
    v18 = sub_261291AA8();
    v15 = v32;
    sub_26129BC3C(v17 & 1, v5, 0xD000000000000027, 0x80000002613BCF70, v18, v19);

    (*(v16 + 8))(v13, v15);
  }

  v20 = [objc_opt_self() server];
  if (v20)
  {
    v21 = v20;
    v22 = [v20 voiceOverEnabled];
  }

  else
  {
    v22 = 0;
  }

  *(v5 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_voiceOverRequiresReEnabling) = v22;
  v23 = *(v5 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_uiManager);
  (*(*v23 + 368))(v5);
  sub_26125A870(v14, v11, &qword_27FE9F560, &qword_2613A3CB0);
  if (v33(v11, 1, v15) == 1)
  {
    sub_26124C718(v11, &qword_27FE9F560, &qword_2613A3CB0);
    v24 = v35;
  }

  else
  {
    v25 = v16;
    v26 = sub_2613A122C();
    v27 = sub_2613A1D7C();
    v28 = os_log_type_enabled(v26, v27);
    v24 = v35;
    if (v28)
    {
      v29 = swift_slowAlloc();
      *v29 = 67109120;
      *(v29 + 4) = v24 & 1;
      _os_log_impl(&dword_261243000, v26, v27, "show PINUI - %{BOOL}d", v29, 8u);
      MEMORY[0x266701350](v29, -1, -1);
    }

    (*(v25 + 8))(v11, v15);
  }

  (*(*v23 + 560))(v34, v36, a3, v24 & 1);
  return [*(v5 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_client) readFeedback_];
}

uint64_t sub_261318724(char *a1, uint64_t a2)
{
  v3 = v2;
  v63 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F580, &qword_2613A5480);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v61 = &v58 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v60 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v58 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v62 = &v58 - v16;
  MEMORY[0x28223BE20](v15);
  v18 = &v58 - v17;
  v19 = sub_26129B5FC();
  sub_26125A870(v19, v18, &qword_27FE9F560, &qword_2613A3CB0);
  v20 = sub_2613A124C();
  v21 = *(v20 - 8);
  v22 = *(v21 + 48);
  if (v22(v18, 1, v20) == 1)
  {
    sub_26124C718(v18, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v58 = v19;
    v59 = v14;
    v23 = sub_26125A798();
    v24 = sub_261291AA8();
    v19 = v58;
    v14 = v59;
    sub_26129BC3C(v23 & 1, v3, 0xD000000000000014, 0x80000002613BCB70, v24, v25);

    (*(v21 + 8))(v18, v20);
  }

  v26 = v62;
  if (v3[OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_voiceOverRequiresReEnabling] == 1)
  {
    sub_26125A870(v19, v62, &qword_27FE9F560, &qword_2613A3CB0);
    if (v22(v26, 1, v20) == 1)
    {
      sub_26124C718(v26, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v27 = sub_2613A122C();
      v28 = sub_2613A1D9C();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v59 = a1;
        v30 = v29;
        *v29 = 0;
        _os_log_impl(&dword_261243000, v27, v28, "attempting to restore VO", v29, 2u);
        v31 = v30;
        a1 = v59;
        MEMORY[0x266701350](v31, -1, -1);
      }

      (*(v21 + 8))(v62, v20);
    }

    v32 = [objc_opt_self() server];
    if (v32)
    {
      v33 = v32;
      [v32 setVoiceOverEnabled_];
    }
  }

  if (sub_2613A0DEC() == a1 && v34 == v63)
  {

LABEL_16:
    sub_26125A870(v19, v14, &qword_27FE9F560, &qword_2613A3CB0);
    if (v22(v14, 1, v20) == 1)
    {
      sub_26124C718(v14, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v36 = sub_2613A122C();
      v37 = sub_2613A1D9C();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        *v38 = 0;
        _os_log_impl(&dword_261243000, v36, v37, "cleaning invalidated TapUI", v38, 2u);
        MEMORY[0x266701350](v38, -1, -1);
      }

      (*(v21 + 8))(v14, v20);
    }

    v39 = *&v3[OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_readTask];
    if (v39)
    {
      v40 = v3;
      v41 = *(*v39 + 336);

      v41(0);
      v3 = v40;
    }

    if (*&v3[OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_transactionCompletion])
    {
      [*&v3[OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_client] readFeedback_];
    }

    v42 = sub_2613A1C1C();
    v43 = v61;
    (*(*(v42 - 8) + 56))(v61, 1, 1, v42);
    v44 = swift_allocObject();
    *(v44 + 16) = 0;
    *(v44 + 24) = 0;
    *(v44 + 32) = 0;
    *(v44 + 40) = v3;
    v45 = v3;
    v46 = &unk_2613AC940;
    v47 = v43;
LABEL_26:
    sub_261266800(0, 0, v47, v46, v44);
  }

  v35 = sub_2613A241C();

  if (v35)
  {
    goto LABEL_16;
  }

  if (sub_2613A0DDC() == a1 && v49 == v63)
  {

LABEL_32:
    v51 = v60;
    sub_26125A870(v19, v60, &qword_27FE9F560, &qword_2613A3CB0);
    if (v22(v51, 1, v20) == 1)
    {
      sub_26124C718(v60, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v52 = sub_2613A122C();
      v53 = sub_2613A1D9C();
      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        *v54 = 0;
        _os_log_impl(&dword_261243000, v52, v53, "cleaning invalidated Issuer PIN", v54, 2u);
        MEMORY[0x266701350](v54, -1, -1);
      }

      (*(v21 + 8))(v60, v20);
    }

    sub_261316E00(0, 27, 0);
    v55 = sub_2613A1C1C();
    v56 = v61;
    (*(*(v55 - 8) + 56))(v61, 1, 1, v55);
    v44 = swift_allocObject();
    *(v44 + 16) = 0;
    *(v44 + 24) = 0;
    *(v44 + 32) = 1;
    *(v44 + 40) = v3;
    v57 = v3;
    v46 = &unk_2613AC938;
    v47 = v56;
    goto LABEL_26;
  }

  v50 = sub_2613A241C();

  if (v50)
  {
    goto LABEL_32;
  }

  return result;
}

uint64_t sub_261318F10()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F580, &qword_2613A5480);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v52 = &v51 - v2;
  v3 = sub_26139F64C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v53 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v54 = &v51 - v13;
  MEMORY[0x28223BE20](v12);
  v15 = &v51 - v14;
  v16 = sub_26129B5FC();
  sub_26125A870(v16, v15, &qword_27FE9F560, &qword_2613A3CB0);
  v17 = sub_2613A124C();
  v18 = *(v17 - 8);
  v19 = *(v18 + 48);
  v56 = v17;
  if (v19(v15, 1) == 1)
  {
    sub_26124C718(v15, &qword_27FE9F560, &qword_2613A3CB0);
    v20 = v55;
  }

  else
  {
    v21 = v19;
    v22 = v4;
    v23 = v16;
    v24 = v3;
    v25 = sub_26125A798();
    v26 = sub_261291AA8();
    v20 = v55;
    v51 = v18;
    v27 = v25 & 1;
    v3 = v24;
    v16 = v23;
    v4 = v22;
    v19 = v21;
    sub_26129BC3C(v27, v55, 0x6469444955706174, 0xEE00292864616F4CLL, v26, v28);
    v18 = v51;

    (*(v18 + 8))(v15, v56);
  }

  sub_26139F61C();
  sub_26139F5BC();
  (*(v4 + 8))(v7, v3);
  v29 = *(v20 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_readTask);
  if (v29)
  {
    v30 = v18;
    v31 = *((*MEMORY[0x277D85000] & *v20) + 0x2A0);
    v32 = *(v20 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_readTask);

    v34 = v31(v33);
    if (v34)
    {
      if (sub_26125B314(*(v34 + 64), *(v34 + 72)))
      {

        v35 = sub_2613A1C1C();
        v36 = v52;
        (*(*(v35 - 8) + 56))(v52, 1, 1, v35);
        v37 = swift_allocObject();
        v37[2] = 0;
        v37[3] = 0;
        v37[4] = v29;
        sub_261266800(0, 0, v36, &unk_2613AC950, v37);
      }
    }

    v46 = v54;
    sub_26125A870(v16, v54, &qword_27FE9F560, &qword_2613A3CB0);
    if ((v19)(v46, 1, v56) == 1)
    {
      v47 = sub_26124C718(v54, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v48 = sub_2613A122C();
      v49 = sub_2613A1D8C();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        *v50 = 0;
        _os_log_impl(&dword_261243000, v48, v49, "Invalid context or no session store in daemon after TapUI loaded, cleaning up UI", v50, 2u);
        MEMORY[0x266701350](v50, -1, -1);
      }

      v47 = (*(v30 + 8))(v54, v56);
    }

    (*(**(v20 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_uiManager) + 464))(v47);
  }

  v38 = v16;
  v39 = v53;
  sub_26125A870(v38, v53, &qword_27FE9F560, &qword_2613A3CB0);
  if ((v19)(v39, 1, v56) == 1)
  {
    v40 = sub_26124C718(v39, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v41 = v18;
    v42 = sub_2613A122C();
    v43 = sub_2613A1D8C();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_261243000, v42, v43, "No read task in daemon after TapUI loaded, cleaning up UI", v44, 2u);
      MEMORY[0x266701350](v44, -1, -1);
    }

    v40 = (*(v41 + 8))(v39, v56);
  }

  return (*(**(v20 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_uiManager) + 464))(v40);
}

uint64_t sub_261319578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_2613A21DC();
  v4[3] = v5;
  v6 = *(v5 - 8);
  v4[4] = v6;
  v7 = *(v6 + 64) + 15;
  v4[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261319638);
}

uint64_t sub_261319638()
{
  v1 = *(v0 + 40);
  v2 = sub_2613A263C();
  v4 = v3;
  sub_2613A24CC();
  v5 = swift_task_alloc();
  *(v0 + 48) = v5;
  *v5 = v0;
  v5[1] = sub_261319714;
  v6 = *(v0 + 40);

  return sub_2612D3284(v2, v4, 0, 0, 1);
}

uint64_t sub_261319714()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v4 = *v1;

  v5 = v2[5];
  v6 = v2[4];
  v7 = v2[3];
  if (v0)
  {

    (*(v6 + 8))(v5, v7);
    v8 = sub_261324920;
  }

  else
  {
    (*(v6 + 8))(v5, v7);
    v8 = sub_2613198AC;
  }

  return MEMORY[0x2822009F8](v8);
}

uint64_t sub_2613198AC()
{
  v1 = v0[5];
  v2 = v0[2];
  v3 = sub_26125A798();
  v4 = sub_26125A798();
  v5 = sub_26125A798();
  v6.n128_f64[0] = sub_26133BE48();
  (*(*v2 + 344))(0, v3 & 1, v4 & 1, v5 & 1, v6);

  v7 = v0[1];

  return v7();
}

uint64_t sub_261319988()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v21 - v4;
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
    v9 = sub_26125A798();
    v10 = sub_261291AA8();
    sub_26129BC3C(v9 & 1, v1, 0xD000000000000016, 0x80000002613BCB90, v10, v11);

    (*(v8 + 8))(v5, v7);
  }

  v12 = *(v1 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_uiManager);
  v13 = [v12 updateWithTransactionEvent_];
  v14 = *(v1 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_readTask);
  if (!v14)
  {
    return (*(*v12 + 464))(v13);
  }

  v15 = *(v1 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_readTask);

  v16 = sub_26125A798();
  v17 = sub_26125A798();
  v18 = sub_26125A798();
  v19.n128_f64[0] = sub_26133BE48();
  (*(*v14 + 344))(1, v16 & 1, v17 & 1, v18 & 1, v19);
}

uint64_t sub_261319BD8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v16 - v4;
  v6 = sub_26129B5FC();
  sub_26125A870(v6, v5, &qword_27FE9F560, &qword_2613A3CB0);
  v7 = sub_2613A124C();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v5, 1, v7) == 1)
  {
    v9 = sub_26124C718(v5, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v10 = sub_26125A798();
    v11 = sub_261291AA8();
    sub_26129BC3C(v10 & 1, v1, 0xD000000000000017, 0x80000002613BCBB0, v11, v12);

    v9 = (*(v8 + 8))(v5, v7);
  }

  v13 = *(v1 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_readTask);
  if (!v13)
  {
    return (*(**(v1 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_uiManager) + 464))(v9);
  }

  v14 = *(*v13 + 296);

  v14(1);
}

uint64_t sub_261319DDC(int a1, int a2)
{
  v3 = v2;
  LODWORD(v4) = a2;
  v38 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F580, &qword_2613A5480);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v36 - v7;
  v9 = sub_26139F64C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v36 - v16;
  v18 = sub_26129B5FC();
  sub_26125A870(v18, v17, &qword_27FE9F560, &qword_2613A3CB0);
  v19 = sub_2613A124C();
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(v17, 1, v19) == 1)
  {
    sub_26124C718(v17, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v37 = v4;
    v4 = sub_2613A122C();
    v21 = sub_2613A1D7C();
    if (os_log_type_enabled(v4, v21))
    {
      v22 = swift_slowAlloc();
      v36 = v10;
      v23 = v22;
      *v22 = 67109120;
      *(v22 + 4) = v38 & 1;
      _os_log_impl(&dword_261243000, v4, v21, "tapUIFinished, expected: %{BOOL}d", v22, 8u);
      v24 = v23;
      v10 = v36;
      MEMORY[0x266701350](v24, -1, -1);
    }

    (*(v20 + 8))(v17, v19);
    LOBYTE(v4) = v37;
  }

  v25 = (v10 + 8);
  if (v4)
  {
    sub_26139F39C();
  }

  else
  {
    sub_26139F5EC();
  }

  sub_26139F5BC();
  (*v25)(v13, v9);
  v26 = *&v3[OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_readTask];
  if (v26)
  {
    v27 = *(*v26 + 336);
    v28 = *&v3[OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_readTask];

    v27(v38 & 1);
  }

  v29 = *&v3[OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_pinTask];
  if (v29)
  {
    v30 = *(*v29 + 304);
    v31 = *&v3[OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_pinTask];

    v30(v38 & 1);
  }

  v32 = sub_2613A1C1C();
  (*(*(v32 - 8) + 56))(v8, 1, 1, v32);
  v33 = swift_allocObject();
  *(v33 + 16) = 0;
  *(v33 + 24) = 0;
  *(v33 + 32) = v4 & 1;
  *(v33 + 40) = v3;
  v34 = v3;
  sub_261266800(0, 0, v8, &unk_2613AC958, v33);
}

uint64_t sub_26131A1F0(char a1)
{
  *(v2 + 72) = v1;
  *(v2 + 193) = a1;
  v3 = sub_2613A177C();
  *(v2 + 80) = v3;
  v4 = *(v3 - 8);
  *(v2 + 88) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 96) = swift_task_alloc();
  *(v2 + 104) = swift_task_alloc();
  v6 = sub_2613A172C();
  *(v2 + 112) = v6;
  v7 = *(v6 - 8);
  *(v2 + 120) = v7;
  v8 = *(v7 + 64) + 15;
  *(v2 + 128) = swift_task_alloc();
  v9 = sub_2613A171C();
  *(v2 + 136) = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  *(v2 + 144) = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0) - 8) + 64) + 15;
  *(v2 + 152) = swift_task_alloc();
  *(v2 + 160) = swift_task_alloc();
  *(v2 + 168) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26131A39C);
}

uint64_t sub_26131A39C()
{
  v1 = (v0 + 16);
  v2 = *(v0 + 168);
  v62 = sub_26129B5FC();
  sub_26125A870(v62, v2, &qword_27FE9F560, &qword_2613A3CB0);
  v3 = sub_2613A124C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 48);
  v6 = v5(v2, 1, v3);
  v7 = *(v0 + 168);
  if (v6 == 1)
  {
    sub_26124C718(*(v0 + 168), &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v8 = *(v0 + 72);
    if (*(v0 + 193))
    {
      v9 = 1702195828;
    }

    else
    {
      v9 = 0x65736C6166;
    }

    if (*(v0 + 193))
    {
      v10 = 0xE400000000000000;
    }

    else
    {
      v10 = 0xE500000000000000;
    }

    MEMORY[0x2666FFEA0](v9, v10);

    v11 = sub_26125A798();
    v12 = v8;
    v1 = (v0 + 16);
    sub_26129BC3C(v11 & 1, v12, 0xD000000000000023, 0x80000002613BCF00, 0x3D20726575737369, 0xE900000000000020);

    (*(v4 + 8))(v7, v3);
  }

  v61 = v5;
  v64 = v3;
  v65 = OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_finishedContinuationTimeout;
  v63 = *(v0 + 72);
  if (*(v63 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_finishedContinuationTimeout))
  {

    sub_2613A179C();

    v13 = *(v0 + 72);
  }

  v15 = *(v0 + 136);
  v14 = *(v0 + 144);
  v16 = *(v0 + 120);
  v17 = *(v0 + 128);
  v58 = *(v0 + 104);
  v18 = *(v0 + 88);
  v56 = *(v0 + 112);
  v57 = *(v0 + 96);
  v59 = *(v0 + 80);
  v60 = *(v0 + 160);
  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v0 + 48) = sub_261324260;
  *(v0 + 56) = v19;
  *(v0 + 16) = MEMORY[0x277D85DD0];
  *(v0 + 24) = 1107296256;
  *(v0 + 32) = sub_261276D54;
  *(v0 + 40) = &block_descriptor_11;
  _Block_copy(v1);
  *(v0 + 64) = MEMORY[0x277D84F90];
  sub_2612D4168(&qword_27FE9F4B0, MEMORY[0x277D85198]);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F640, &unk_2613AA600);
  sub_26128D9C4();
  sub_2613A203C();
  v20 = sub_2613A17AC();
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();
  v23 = sub_2613A178C();
  v24 = *(v0 + 56);

  v25 = *(v63 + v65);
  *(v63 + v65) = v23;

  sub_26127BBE0();
  (*(v16 + 104))(v17, *MEMORY[0x277D851C8], v56);
  v26 = sub_2613A1E3C();
  (*(v16 + 8))(v17, v56);
  sub_2613A176C();
  sub_2613A0C0C();
  sub_2613A17CC();
  v27 = *(v18 + 8);
  v27(v57, v59);
  sub_2613A1DFC();

  v27(v58, v59);
  sub_26125A870(v62, v60, &qword_27FE9F560, &qword_2613A3CB0);
  if (v61(v60, 1, v64) == 1)
  {
    sub_26124C718(*(v0 + 160), &qword_27FE9F560, &qword_2613A3CB0);
    v28 = v4;
  }

  else
  {
    v29 = *(v0 + 160);
    v30 = sub_2613A122C();
    v31 = sub_2613A1D9C();
    v28 = v4;
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_261243000, v30, v31, "waitForCompletionFinish - about to wait", v32, 2u);
      MEMORY[0x266701350](v32, -1, -1);
    }

    v33 = *(v0 + 160);

    (*(v4 + 8))(v33, v64);
  }

  v34 = *(v0 + 72);
  if (*(v0 + 193) == 1)
  {
    if (*(v34 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_pinCompletion))
    {
LABEL_19:
      v35 = swift_task_alloc();
      *(v0 + 176) = v35;
      *(v35 + 16) = v34;
      v36 = *(MEMORY[0x277D859E0] + 4);
      v37 = swift_task_alloc();
      *(v0 + 184) = v37;
      *v37 = v0;
      v37[1] = sub_26131AB70;
      v38 = MEMORY[0x277D839B0];

      return MEMORY[0x2822007B8](v0 + 192, 0, 0, 0xD000000000000023, 0x80000002613BCF00, sub_2613242A4, v35, v38);
    }
  }

  else if (*(v34 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_transactionCompletion))
  {
    goto LABEL_19;
  }

  v39 = *(v0 + 152);
  sub_26125A870(v62, v39, &qword_27FE9F560, &qword_2613A3CB0);
  if (v61(v39, 1, v64) == 1)
  {
    sub_26124C718(*(v0 + 152), &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v40 = *(v0 + 152);
    v41 = sub_2613A122C();
    v42 = sub_2613A1D9C();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_261243000, v41, v42, "waitForCompletionFinish - already completed or nothing pending", v43, 2u);
      MEMORY[0x266701350](v43, -1, -1);
    }

    v44 = *(v0 + 152);

    (*(v28 + 8))(v44, v64);
  }

  if (*(v63 + v65))
  {
    v45 = *(v63 + v65);

    sub_2613A179C();

    v46 = *(v63 + v65);
  }

  *(v63 + v65) = 0;

  v48 = *(v0 + 160);
  v47 = *(v0 + 168);
  v50 = *(v0 + 144);
  v49 = *(v0 + 152);
  v51 = *(v0 + 128);
  v53 = *(v0 + 96);
  v52 = *(v0 + 104);

  v54 = *(v0 + 8);

  return v54(1);
}

uint64_t sub_26131AB70()
{
  v1 = *(*v0 + 184);
  v2 = *(*v0 + 176);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_261324928);
}

void sub_26131AC88(uint64_t a1, void *a2, const char *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v34 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA05F8, &unk_2613AC8D0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v34 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0560, &unk_2613AC8C0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v34 - v19;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    (*(v17 + 56))(v15, 1, 1, v16);
    goto LABEL_6;
  }

  v37 = a3;
  v22 = *a2;
  v23 = Strong;
  swift_beginAccess();
  sub_26125A870(v23 + v22, v15, &qword_27FEA05F8, &unk_2613AC8D0);

  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
LABEL_6:
    sub_26124C718(v15, &qword_27FEA05F8, &unk_2613AC8D0);
    return;
  }

  (*(v17 + 32))(v20, v15, v16);
  v24 = sub_26129B5FC();
  sub_26125A870(v24, v8, &qword_27FE9F560, &qword_2613A3CB0);
  v25 = sub_2613A124C();
  v26 = *(v25 - 8);
  if ((*(v26 + 48))(v8, 1, v25) == 1)
  {
    sub_26124C718(v8, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v36 = a2;
    v27 = sub_2613A122C();
    v28 = sub_2613A1D7C();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v35 = v27;
      v30 = v29;
      *v29 = 0;
      _os_log_impl(&dword_261243000, v35, v28, v37, v29, 2u);
      v31 = v30;
      v27 = v35;
      MEMORY[0x266701350](v31, -1, -1);
    }

    (*(v26 + 8))(v8, v25);
    a2 = v36;
  }

  v38 = 0;
  sub_2613A1BDC();
  swift_beginAccess();
  v32 = swift_unknownObjectWeakLoadStrong();
  (*(v17 + 8))(v20, v16);
  if (v32)
  {
    (*(v17 + 56))(v13, 1, 1, v16);
    v33 = *a2;
    swift_beginAccess();
    sub_2613242C8(v13, v32 + v33);
    swift_endAccess();
  }
}

uint64_t sub_26131B0C0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA05F8, &unk_2613AC8D0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v14 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0560, &unk_2613AC8C0);
  v11 = *(v10 - 8);
  (*(v11 + 16))(v9, a1, v10);
  (*(v11 + 56))(v9, 0, 1, v10);
  v12 = *a3;
  swift_beginAccess();
  sub_2613242C8(v9, a2 + v12);
  return swift_endAccess();
}

uint64_t sub_26131B1F8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v5 + 16) = a5;
  *(v5 + 88) = a4;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0) - 8) + 64) + 15;
  *(v5 + 24) = swift_task_alloc();
  *(v5 + 32) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26131B2A4);
}

uint64_t sub_26131B2A4()
{
  v1 = *(v0 + 32);
  v2 = sub_26129B5FC();
  *(v0 + 40) = v2;
  sub_26125A870(v2, v1, &qword_27FE9F560, &qword_2613A3CB0);
  v3 = sub_2613A124C();
  *(v0 + 48) = v3;
  v4 = *(v3 - 8);
  *(v0 + 56) = v4;
  v5 = *(v4 + 48);
  *(v0 + 64) = v5;
  *(v0 + 72) = (v4 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v5(v1, 1, v3) == 1)
  {
    sub_26124C718(*(v0 + 32), &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v6 = *(v0 + 16);
    v7 = sub_2613A122C();
    v8 = sub_2613A1D7C();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = *(v0 + 16);
      v10 = *(v0 + 88);
      v11 = swift_slowAlloc();
      *v11 = 67109376;
      *(v11 + 4) = v10;
      *(v11 + 8) = 1024;
      *(v11 + 10) = v9[OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_appRequestedCloseSession];

      _os_log_impl(&dword_261243000, v7, v8, "uiFinishedCleanup: issuer=%{BOOL}d, closeSession=%{BOOL}d", v11, 0xEu);
      MEMORY[0x266701350](v11, -1, -1);
    }

    else
    {

      v7 = *(v0 + 16);
    }

    v12 = *(v0 + 32);

    (*(v4 + 8))(v12, v3);
  }

  if (*(*(v0 + 16) + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_appRequestedCloseSession))
  {
    v14 = *(v0 + 24);
    v13 = *(v0 + 32);
    sub_261317CBC(*(v0 + 88));

    v15 = *(v0 + 8);

    return v15();
  }

  else
  {
    v17 = swift_task_alloc();
    *(v0 + 80) = v17;
    *v17 = v0;
    v17[1] = sub_26131B53C;
    v18 = *(v0 + 16);
    v19 = *(v0 + 88);

    return sub_26131A1F0(v19);
  }
}

uint64_t sub_26131B53C(char a1)
{
  v2 = *(*v1 + 80);
  v4 = *v1;
  *(*v1 + 89) = a1;

  return MEMORY[0x2822009F8](sub_26131B63C);
}

uint64_t sub_26131B63C()
{
  if ((*(v0 + 89) & 1) == 0)
  {
    v2 = *(v0 + 64);
    v1 = *(v0 + 72);
    v3 = *(v0 + 48);
    v4 = *(v0 + 24);
    sub_26125A870(*(v0 + 40), v4, &qword_27FE9F560, &qword_2613A3CB0);
    if (v2(v4, 1, v3) == 1)
    {
      sub_26124C718(*(v0 + 24), &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v5 = *(v0 + 24);
      v6 = sub_2613A122C();
      v7 = sub_2613A1D8C();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        _os_log_impl(&dword_261243000, v6, v7, "timed out waiting for finishedContinuation", v8, 2u);
        MEMORY[0x266701350](v8, -1, -1);
      }

      v9 = *(v0 + 48);
      v10 = *(v0 + 56);
      v11 = *(v0 + 24);

      (*(v10 + 8))(v11, v9);
    }
  }

  v13 = *(v0 + 24);
  v12 = *(v0 + 32);
  v14 = *(v0 + 16);
  sub_261317CBC(*(v0 + 88));

  v15 = *(v0 + 8);

  return v15();
}

id sub_26131B7B0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F580, &qword_2613A5480);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v25 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v25 - v8;
  v10 = sub_26129B5FC();
  sub_26125A870(v10, v9, &qword_27FE9F560, &qword_2613A3CB0);
  v11 = sub_2613A124C();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v9, 1, v11) == 1)
  {
    v13 = sub_26124C718(v9, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v14 = sub_2613A122C();
    v15 = sub_2613A1D9C();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_261243000, v14, v15, "pinValidateSession", v16, 2u);
      MEMORY[0x266701350](v16, -1, -1);
    }

    v13 = (*(v12 + 8))(v9, v11);
  }

  v17 = (*((*MEMORY[0x277D85000] & *v1) + 0x2A0))(v13);
  if (v17)
  {
    v18 = v17;
    v19 = sub_26125B314(*(v17 + 64), *(v17 + 72));
    if (v19)
    {
      v20 = v19;
      v21 = sub_2613A1C1C();
      (*(*(v21 - 8) + 56))(v5, 1, 1, v21);
      v22 = swift_allocObject();
      v22[2] = 0;
      v22[3] = 0;
      v22[4] = v18;
      v22[5] = v20;
      v22[6] = v1;
      v23 = v1;
      sub_261266800(0, 0, v5, &unk_2613AC968, v22);
    }
  }

  return [*(v1 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_uiManager) updateSessionEventWithSessionEvent_];
}

uint64_t sub_26131BAB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[68] = a6;
  v6[67] = a5;
  v6[66] = a4;
  v7 = sub_26139FC1C();
  v6[69] = v7;
  v8 = *(v7 - 8);
  v6[70] = v8;
  v9 = *(v8 + 64) + 15;
  v6[71] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26131BB7C);
}

uint64_t sub_26131BB7C()
{
  v1 = v0[71];
  v2 = v0[70];
  v3 = v0[69];
  v4 = v0[68];
  v5 = v0[67];
  v6 = v0[66];
  type metadata accessor for SessionTask();
  v7 = *(v5 + 16);
  v8 = *(v5 + 24);
  *v1 = v7;
  v1[1] = v8;
  (*(v2 + 104))(v1, *MEMORY[0x277D43908], v3);

  v9 = sub_2613271E0(v6, v1, 0, 0);
  v0[72] = v9;
  v10 = swift_allocObject();
  v0[73] = v10;
  *(v10 + 16) = v4;
  v11 = v4;
  v12 = sub_26125A798();
  v16 = (*v9 + 296);
  v17 = (*v16 + **v16);
  v13 = (*v16)[1];
  v14 = swift_task_alloc();
  v0[74] = v14;
  *v14 = v0;
  v14[1] = sub_26131BD88;

  return (v17)(v0 + 26, v12 & 1, sub_2613241D0, v10);
}

uint64_t sub_26131BD88()
{
  v1 = *(*v0 + 592);
  v2 = *(*v0 + 584);
  v3 = *(*v0 + 576);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_26131BEBC);
}

uint64_t sub_26131BEBC()
{
  v13 = *(v0 + 568);
  v1 = *(v0 + 544);
  v3 = *(v0 + 224);
  v2 = *(v0 + 240);
  *(v0 + 160) = v3;
  *(v0 + 176) = v2;
  *(v0 + 185) = *(v0 + 249);
  v4 = *(v0 + 208);
  *(v0 + 144) = v4;
  *(v0 + 400) = v4;
  *(v0 + 416) = v3;
  *(v0 + 432) = *(v0 + 176);
  *(v0 + 441) = *(v0 + 185);
  v5 = swift_task_alloc();
  *(v5 + 16) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0610, &qword_2613ACB20);
  sub_26124A238(sub_2613241F0, v5, v6, v0 + 336);

  v7 = *(v0 + 352);
  *(v0 + 464) = *(v0 + 336);
  *(v0 + 480) = v7;
  *(v0 + 496) = *(v0 + 368);
  *(v0 + 505) = *(v0 + 377);
  v8 = swift_task_alloc();
  *(v8 + 16) = v1;
  sub_26124A42C(sub_261324234, v8, v6, v0 + 272);
  sub_26124C718(v0 + 144, &qword_27FEA0610, &qword_2613ACB20);

  v9 = *(v0 + 480);
  *(v0 + 80) = *(v0 + 464);
  *(v0 + 96) = v9;
  *(v0 + 112) = *(v0 + 496);
  *(v0 + 121) = *(v0 + 505);
  sub_26124C718(v0 + 80, &qword_27FEA0610, &qword_2613ACB20);
  v10 = *(v0 + 288);
  *(v0 + 16) = *(v0 + 272);
  *(v0 + 32) = v10;
  *(v0 + 48) = *(v0 + 304);
  *(v0 + 57) = *(v0 + 313);
  sub_26124C718(v0 + 16, &qword_27FEA0610, &qword_2613ACB20);

  v11 = *(v0 + 8);

  return v11();
}

id sub_26131C0A0(uint64_t *a1, uint64_t a2)
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
      _os_log_impl(&dword_261243000, v12, v13, "Session validation failed: %@", v14, 0xCu);
      sub_26124C718(v15, &qword_27FEA0410, &qword_2613AA780);
      MEMORY[0x266701350](v15, -1, -1);
      MEMORY[0x266701350](v14, -1, -1);
    }

    (*(v11 + 8))(v7, v10);
  }

  return [*(a2 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_uiManager) updateSessionEventWithSessionEvent_];
}

uint64_t sub_26131C2D8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v20 - v4;
  v6 = sub_26129B5FC();
  sub_26125A870(v6, v5, &qword_27FE9F560, &qword_2613A3CB0);
  v7 = sub_2613A124C();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v5, 1, v7) == 1)
  {
    result = sub_26124C718(v5, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v10 = sub_2613A122C();
    v11 = sub_2613A1D9C();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_261243000, v10, v11, "pinUIDidLoad", v12, 2u);
      MEMORY[0x266701350](v12, -1, -1);
    }

    result = (*(v8 + 8))(v5, v7);
  }

  v13 = *(v1 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_readTask);
  if (v13)
  {
    v14 = *(*v13 + 488);
    v15 = *(v1 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_readTask);

    v14(v16);
  }

  v17 = *(v1 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_pinTask);
  if (v17)
  {
    v18 = *(*v17 + 272);

    v18(v19);
  }

  return result;
}

uint64_t sub_26131C510()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v20 - v4;
  v6 = sub_26129B5FC();
  sub_26125A870(v6, v5, &qword_27FE9F560, &qword_2613A3CB0);
  v7 = sub_2613A124C();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v5, 1, v7) == 1)
  {
    result = sub_26124C718(v5, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v10 = sub_2613A122C();
    v11 = sub_2613A1D9C();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_261243000, v10, v11, "pinAuthNeeded", v12, 2u);
      MEMORY[0x266701350](v12, -1, -1);
    }

    result = (*(v8 + 8))(v5, v7);
  }

  v13 = *(v1 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_readTask);
  if (v13)
  {
    v14 = *(*v13 + 360);
    v15 = *(v1 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_readTask);

    v14(v16);
  }

  v17 = *(v1 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_pinTask);
  if (v17)
  {
    v18 = *(*v17 + 240);

    v18(v19);
  }

  return result;
}

uint64_t sub_26131C740(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v24 - v10;
  v12 = sub_26129B5FC();
  sub_26125A870(v12, v11, &qword_27FE9F560, &qword_2613A3CB0);
  v13 = sub_2613A124C();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v11, 1, v13) == 1)
  {
    result = sub_26124C718(v11, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v16 = sub_2613A122C();
    v17 = sub_2613A1D9C();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_261243000, v16, v17, "pinAuthResult", v18, 2u);
      MEMORY[0x266701350](v18, -1, -1);
    }

    result = (*(v14 + 8))(v11, v13);
  }

  v19 = *(v4 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_readTask);
  if (v19)
  {
    v20 = *(*v19 + 368);
    v21 = *(v4 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_readTask);

    v20(a1, a2, a3 & 1);
  }

  v22 = *(v4 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_pinTask);
  if (v22)
  {
    v23 = *(*v22 + 248);

    v23(a1, a2, a3 & 1);
  }

  return result;
}

id sub_26131C99C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v24 - v10;
  v12 = sub_26129B5FC();
  sub_26125A870(v12, v11, &qword_27FE9F560, &qword_2613A3CB0);
  v13 = sub_2613A124C();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v11, 1, v13) == 1)
  {
    sub_26124C718(v11, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v15 = sub_2613A122C();
    v16 = sub_2613A1D9C();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_261243000, v15, v16, "pinDataReceived", v17, 2u);
      MEMORY[0x266701350](v17, -1, -1);
    }

    (*(v14 + 8))(v11, v13);
  }

  result = [*(v4 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_client) readFeedback_];
  v19 = *(v4 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_readTask);
  if (v19)
  {
    v20 = *(*v19 + 496);
    v21 = *(v4 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_readTask);

    v20(a1, a2, a3);
  }

  v22 = *(v4 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_pinTask);
  if (v22)
  {
    v23 = *(*v22 + 280);

    v23(a1, a2, a3);
  }

  return result;
}

uint64_t sub_26131CC1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v29 - v10;
  v12 = sub_26129B5FC();
  sub_26125A870(v12, v11, &qword_27FE9F560, &qword_2613A3CB0);
  v13 = sub_2613A124C();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v11, 1, v13) == 1)
  {
    result = sub_26124C718(v11, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v16 = sub_2613A122C();
    v17 = sub_2613A1D9C();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v30 = a3;
      v19 = v18;
      v20 = swift_slowAlloc();
      *v19 = 138412290;
      sub_2612B45EC();
      swift_allocError();
      *v21 = a1;
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v19 + 4) = v22;
      *v20 = v22;
      _os_log_impl(&dword_261243000, v16, v17, "reportPINError: %@", v19, 0xCu);
      sub_26124C718(v20, &qword_27FEA0410, &qword_2613AA780);
      MEMORY[0x266701350](v20, -1, -1);
      v23 = v19;
      a3 = v30;
      MEMORY[0x266701350](v23, -1, -1);
    }

    result = (*(v14 + 8))(v11, v13);
  }

  v24 = *(v4 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_readTask);
  if (v24)
  {
    v25 = *(*v24 + 504);
    v26 = *(v4 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_readTask);

    v25(a1, a2, a3);
  }

  v27 = *(v4 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_pinTask);
  if (v27)
  {
    v28 = *(*v27 + 288);

    v28(a1, a2, a3);
  }

  return result;
}

uint64_t sub_26131CEF8(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_readTask);
  if (v4)
  {
    v7 = result;
    v8 = *(*v4 + 472);

    v8(v7 & 1, a2, a3);
  }

  return result;
}

uint64_t sub_26131CFA8(uint64_t result, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_readTask);
  if (v3)
  {
    v5 = result;
    v6 = *(*v3 + 480);

    v6(v5 & 1, a2);
  }

  return result;
}

void sub_26131D050(char a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v41 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v41 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v41 - v13;
  v15 = [objc_opt_self() server];
  if (v15)
  {
    v16 = v15;
    v44 = v9;
    v17 = a1;
    v18 = sub_26129B5FC();
    sub_26125A870(v18, v14, &qword_27FE9F560, &qword_2613A3CB0);
    v19 = sub_2613A124C();
    v20 = *(v19 - 8);
    v21 = *(v20 + 48);
    if (v21(v14, 1, v19) == 1)
    {
      sub_26124C718(v14, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v43 = v20;
      v25 = sub_2613A122C();
      v26 = sub_2613A1D9C();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v42 = v19;
        v28 = v27;
        *v27 = 67109120;
        *(v27 + 4) = v17 & 1;
        _os_log_impl(&dword_261243000, v25, v26, "setVoiceOver request - %{BOOL}d", v27, 8u);
        v29 = v28;
        v19 = v42;
        MEMORY[0x266701350](v29, -1, -1);
      }

      v20 = v43;
      (*(v43 + 8))(v14, v19);
    }

    v30 = [v16 voiceOverEnabled];
    if (v17)
    {
      if ((v30 & 1) == 0)
      {
        v31 = v44;
        sub_26125A870(v18, v44, &qword_27FE9F560, &qword_2613A3CB0);
        if (v21(v31, 1, v19) == 1)
        {
          sub_26124C718(v31, &qword_27FE9F560, &qword_2613A3CB0);
        }

        else
        {
          v35 = sub_2613A122C();
          v36 = sub_2613A1D9C();
          if (os_log_type_enabled(v35, v36))
          {
            v37 = swift_slowAlloc();
            *v37 = 0;
            _os_log_impl(&dword_261243000, v35, v36, "setVoiceOver - enable", v37, 2u);
            MEMORY[0x266701350](v37, -1, -1);
          }

          (*(v20 + 8))(v31, v19);
        }

        [v16 setVoiceOverEnabled_];
      }
    }

    else if (v30)
    {
      sub_26125A870(v18, v12, &qword_27FE9F560, &qword_2613A3CB0);
      if (v21(v12, 1, v19) == 1)
      {
        sub_26124C718(v12, &qword_27FE9F560, &qword_2613A3CB0);
      }

      else
      {
        v38 = sub_2613A122C();
        v39 = sub_2613A1D9C();
        if (os_log_type_enabled(v38, v39))
        {
          v40 = swift_slowAlloc();
          *v40 = 0;
          _os_log_impl(&dword_261243000, v38, v39, "setVoiceOver - disable", v40, 2u);
          MEMORY[0x266701350](v40, -1, -1);
        }

        (*(v20 + 8))(v12, v19);
      }

      [v16 setVoiceOverEnabled_];
    }
  }

  else
  {
    v22 = sub_26129B7C4();
    sub_26125A870(v22, v6, &qword_27FE9F560, &qword_2613A3CB0);
    v23 = sub_2613A124C();
    v24 = *(v23 - 8);
    if ((*(v24 + 48))(v6, 1, v23) == 1)
    {
      sub_26124C718(v6, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v32 = sub_2613A122C();
      v33 = sub_2613A1D8C();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        *v34 = 0;
        _os_log_impl(&dword_261243000, v32, v33, "AX VoiceOver: Could not retrieve AX server", v34, 2u);
        MEMORY[0x266701350](v34, -1, -1);
      }

      (*(v24 + 8))(v6, v23);
    }
  }
}

void *sub_26131D5E4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v12 - v3;
  v5 = sub_26129B5FC();
  sub_26125A870(v5, v4, &qword_27FE9F560, &qword_2613A3CB0);
  v6 = sub_2613A124C();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v4, 1, v6) == 1)
  {
    sub_26124C718(v4, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v8 = sub_26125A798();
    v9 = sub_261291AA8();
    sub_26129BC3C(v8 & 1, v0, 0xD000000000000012, 0x80000002613BCBD0, v9, v10);

    (*(v7 + 8))(v4, v6);
  }

  return sub_26130EFF0(2, 0);
}

uint64_t sub_26131D770()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v12 - v3;
  v5 = sub_26129B5FC();
  sub_26125A870(v5, v4, &qword_27FE9F560, &qword_2613A3CB0);
  v6 = sub_2613A124C();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v4, 1, v6) == 1)
  {
    return sub_26124C718(v4, &qword_27FE9F560, &qword_2613A3CB0);
  }

  v9 = sub_26125A798();
  v10 = sub_261291AA8();
  sub_26129BC3C(v9 & 1, v0, 0x6469444955676572, 0xEE00292864616F4CLL, v10, v11);

  return (*(v7 + 8))(v4, v6);
}

void sub_26131D8E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v32 - v10;
  v12 = sub_26139F64C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26139F4DC();
  sub_26139F5DC();
  (*(v13 + 8))(v16, v12);
  v17 = sub_26129B5FC();
  sub_26125A870(v17, v11, &qword_27FE9F560, &qword_2613A3CB0);
  v18 = sub_2613A124C();
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v11, 1, v18) == 1)
  {
    sub_26124C718(v11, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v20 = sub_26125A798();
    v21 = sub_261291AA8();
    sub_26129BC3C(v20 & 1, v4, 0xD000000000000021, 0x80000002613BCBF0, v21, v22);

    (*(v19 + 8))(v11, v18);
  }

  v23 = sub_26139F68C();
  v25 = v24;

  v26 = HIBYTE(v25) & 0xF;
  if ((v25 & 0x2000000000000000) == 0)
  {
    v26 = v23 & 0xFFFFFFFFFFFFLL;
  }

  if (v26)
  {
    v27 = *(v4 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_linkTask);
    if (v27)
    {
      v28 = *(v4 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_linkTask);

      v29 = sub_26139F69C();
      (*(*v27 + 208))(a1, a2, a3, v29 & 1, *(v4 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_regUIManager));
    }

    else
    {
      v30 = *(v4 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_regUIManager);
      v31 = sub_2613A189C();
      [v30 notifyRegUIResultWithResult_];
    }
  }

  else
  {
    sub_26130EFF0(2, 0);
  }
}

void *sub_26131DC10(char a1, char a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v22 - v7;
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
    v24[0] = 0;
    v24[1] = 0xE000000000000000;
    sub_2613A211C();

    strcpy(v24, "userCancelled ");
    HIBYTE(v24[1]) = -18;
    if (a1)
    {
      v12 = 1702195828;
    }

    else
    {
      v12 = 0x65736C6166;
    }

    v23 = v2;
    if (a1)
    {
      v13 = 0xE400000000000000;
    }

    else
    {
      v13 = 0xE500000000000000;
    }

    MEMORY[0x2666FFEA0](v12, v13);

    MEMORY[0x2666FFEA0](0x617453676572202CLL, 0xEC00000020737574);
    if (a2)
    {
      v14 = 1702195828;
    }

    else
    {
      v14 = 0x65736C6166;
    }

    if (a2)
    {
      v15 = 0xE400000000000000;
    }

    else
    {
      v15 = 0xE500000000000000;
    }

    MEMORY[0x2666FFEA0](v14, v15);

    v16 = v24[0];
    v17 = v24[1];
    v18 = sub_26125A798();
    sub_26129BC3C(v18 & 1, v23, 0xD000000000000027, 0x80000002613BCC20, v16, v17);

    (*(v11 + 8))(v8, v10);
  }

  if (a1)
  {
    v19 = 0;
  }

  else
  {
    v19 = 2;
  }

  if (a2)
  {
    v20 = 1;
  }

  else
  {
    v20 = v19;
  }

  return sub_26130EFF0(v20, 0);
}

uint64_t sub_26131DE7C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F580, &qword_2613A5480);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v26 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v26 - v11;
  v13 = sub_26129B5FC();
  sub_26125A870(v13, v12, &qword_27FE9F560, &qword_2613A3CB0);
  v14 = sub_2613A124C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 48);
  if (v16(v12, 1, v14) == 1)
  {
    sub_26124C718(v12, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v26 = v10;
    v17 = sub_26125A798();
    v18 = sub_261291AA8();
    v27 = v13;
    v10 = v26;
    sub_26129BC3C(v17 & 1, v1, 0xD00000000000001BLL, 0x80000002613BCC50, v18, v19);
    v13 = v27;

    (*(v15 + 8))(v12, v14);
  }

  v20 = *&v1[OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_linkTask];
  if (v20)
  {
    v1[OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_postponedTaskCleanup] = 1;
    v21 = sub_2613A1C1C();
    (*(*(v21 - 8) + 56))(v5, 1, 1, v21);
    v22 = swift_allocObject();
    v22[2] = 0;
    v22[3] = 0;
    v22[4] = v20;
    v22[5] = v1;

    v23 = v1;
    sub_261266800(0, 0, v5, &unk_2613AC980, v22);
  }

  else
  {
    sub_26125A870(v13, v10, &qword_27FE9F560, &qword_2613A3CB0);
    if (v16(v10, 1, v14) == 1)
    {
      return sub_26124C718(v10, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v25 = sub_26125A798();
      sub_26129BC3C(v25 & 1, v1, 0xD00000000000001BLL, 0x80000002613BCC50, 0xD00000000000001ALL, 0x80000002613BCC70);
      return (*(v15 + 8))(v10, v14);
    }
  }
}

uint64_t sub_26131E218(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a5;
  v6 = *(*a4 + 216);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v5 + 24) = v8;
  *v8 = v5;
  v8[1] = sub_26131E330;

  return v10();
}

uint64_t sub_26131E330()
{
  v1 = *(*v0 + 24);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_26131E42C);
}

uint64_t sub_26131E42C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_linkTask);
  *(v1 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_linkTask) = 0;

  *(v1 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_postponedTaskCleanup) = 0;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t type metadata accessor for PaymentTerminalService()
{
  result = qword_27FEAE330;
  if (!qword_27FEAE330)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26131E4F4(uint64_t a1, unint64_t a2, int a3, uint64_t a4)
{
  v31 = a1;
  v7 = sub_26139F64C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v29 - v14;
  v16 = sub_26129B5FC();
  sub_26125A870(v16, v15, &qword_27FE9F560, &qword_2613A3CB0);
  v17 = sub_2613A124C();
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v15, 1, v17) == 1)
  {
    sub_26124C718(v15, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v30 = a3;

    v19 = sub_2613A122C();
    v20 = sub_2613A1D8C();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v29 = a4;
      v22 = v21;
      v23 = swift_slowAlloc();
      v24 = a2;
      v25 = v23;
      v32 = v23;
      *v22 = 136315138;
      *(v22 + 4) = sub_26124C11C(v31, v24, &v32);
      _os_log_impl(&dword_261243000, v19, v20, "%s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v25);
      MEMORY[0x266701350](v25, -1, -1);
      v26 = v22;
      a4 = v29;
      MEMORY[0x266701350](v26, -1, -1);
    }

    (*(v18 + 8))(v15, v17);
    LOBYTE(a3) = v30;
  }

  sub_26139F42C();
  sub_26139F5BC();
  v27 = *(v8 + 8);
  v27(v11, v7);
  sub_26139F5FC();
  sub_26139F5BC();
  v27(v11, v7);
  return (*(a4 + 16))(a4, 0, a3 & 1);
}

void sub_26131E7EC(uint64_t a1, void (**a2)(void, void, void))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F220, qword_2613A5530);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v173 = &v162 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v172 = &v162 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v171 = &v162 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v170 = &v162 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v169 = &v162 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v168 = &v162 - v17;
  MEMORY[0x28223BE20](v16);
  v167 = &v162 - v18;
  v179 = sub_26139FDCC();
  v178 = *(v179 - 8);
  v19 = *(v178 + 64);
  MEMORY[0x28223BE20](v179);
  v184 = &v162 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v177 = sub_26139FAEC();
  v176 = *(v177 - 8);
  v21 = *(v176 + 64);
  MEMORY[0x28223BE20](v177);
  v180 = &v162 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_26139FB7C();
  v182 = *(v23 - 8);
  v183 = v23;
  v24 = *(v182 + 64);
  MEMORY[0x28223BE20](v23);
  v181 = &v162 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_26139F64C();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  v30 = &v162 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v32 = *(*(v31 - 8) + 64);
  v33 = MEMORY[0x28223BE20](v31 - 8);
  v174 = &v162 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x28223BE20](v33);
  v175 = &v162 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v188 = &v162 - v38;
  MEMORY[0x28223BE20](v37);
  v40 = &v162 - v39;
  _Block_copy(a2);
  _Block_copy(a2);
  _Block_copy(a2);
  v187 = sub_26129B5FC();
  sub_26125A870(v187, v40, &qword_27FE9F560, &qword_2613A3CB0);
  v41 = sub_2613A124C();
  v42 = *(v41 - 8);
  v43 = v42 + 48;
  v186 = *(v42 + 48);
  if (v186(v40, 1, v41) == 1)
  {
    sub_26124C718(v40, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v185 = v30;
    v190 = v27;
    v44 = sub_26125A798();
    v45 = sub_261291AA8();
    v46 = v44 & 1;
    v43 = v42 + 48;
    v27 = v190;
    v30 = v185;
    sub_26129BC3C(v46, a1, 0xD00000000000001ALL, 0x80000002613BC870, v45, v47);

    (*(v42 + 8))(v40, v41);
  }

  sub_26139F5FC();
  sub_26139F5DC();
  v48 = *(v27 + 8);
  v48(v30, v26);
  sub_26139F42C();
  sub_26139F5DC();
  v190 = v27 + 8;
  v48(v30, v26);
  v189 = *(a1 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_entitlements + 82);
  if (*(a1 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_entitlements + 80) != 1)
  {
    _Block_copy(a2);
    sub_26131E4F4(0x7469746E65206F6ELL, 0xEE00746E656D656CLL, v189, a2);
    _Block_release(a2);
    goto LABEL_76;
  }

  v49 = v188;
  sub_26125A870(v187, v188, &qword_27FE9F560, &qword_2613A3CB0);
  if (v186(v49, 1, v41) == 1)
  {
    sub_26124C718(v49, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v166 = v48;
    v50 = sub_2613A122C();
    v51 = sub_2613A1D7C();
    if (os_log_type_enabled(v50, v51))
    {
      LODWORD(v185) = v51;
      v165 = v43;
      v164 = a1;
      v52 = swift_slowAlloc();
      v163 = swift_slowAlloc();
      v192 = v163;
      *v52 = 136315906;
      v53 = sub_2612E6298();
      v54 = *v53;
      v55 = v53[1];

      v56 = sub_26124C11C(v54, v55, &v192);

      *(v52 + 4) = v56;
      *(v52 + 12) = 2080;
      v57 = sub_2612E62A4();
      v58 = *v57;
      v59 = v57[1];

      v60 = sub_26124C11C(v58, v59, &v192);

      *(v52 + 14) = v60;
      *(v52 + 22) = 2080;
      v61 = (*sub_2612E788C() + OBJC_IVAR____TtC21ProximityReaderDaemon6Daemon_sprVersionCache);
      swift_beginAccess();
      if (v61[1])
      {
        v62 = *v61;
        v63 = v61[1];
      }

      else
      {
        v63 = 0xE700000000000000;
        v62 = 0x6E776F6E6B6E75;
      }

      v64 = sub_26124C11C(v62, v63, &v192);

      *(v52 + 24) = v64;
      *(v52 + 32) = 1024;
      v65 = sub_2613A0C2C();
      LOBYTE(v64) = v65();

      *(v52 + 34) = v64 & 1;
      _os_log_impl(&dword_261243000, v50, v185, "\nCOMPONENTS: ------------------------------------\nmd: %s (%s)\nspr: %s\ninternal: %{BOOL}d\n-------------------------------------------------", v52, 0x26u);
      v66 = v163;
      swift_arrayDestroy();
      MEMORY[0x266701350](v66, -1, -1);
      MEMORY[0x266701350](v52, -1, -1);

      a1 = v164;
      v43 = v165;
    }

    else
    {
    }

    (*(v42 + 8))(v188, v41);
    v48 = v166;
  }

  v67 = *(a1 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_installId + 8);
  v68 = HIBYTE(v67) & 0xF;
  v188 = *(a1 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_installId);
  if ((v67 & 0x2000000000000000) == 0)
  {
    v68 = v188 & 0xFFFFFFFFFFFFLL;
  }

  if (!v68)
  {
    _Block_copy(a2);
    sub_26131E4F4(0xD00000000000001DLL, 0x80000002613BC830, v189, a2);
    _Block_release(a2);
    (*(v176 + 104))(v180, *MEMORY[0x277D43868], v177);
    (*(v178 + 104))(v184, *MEMORY[0x277D43970], v179);
    v82 = [objc_opt_self() processInfo];
    v83 = [v82 processName];

    sub_2613A18CC();
    v81 = v181;
    goto LABEL_26;
  }

  v185 = v30;
  v69 = a1 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_seInfo;
  v70 = *(a1 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_seInfo + 8);
  if (!v70)
  {
    goto LABEL_24;
  }

  v71 = HIBYTE(v70) & 0xF;
  if ((v70 & 0x2000000000000000) == 0)
  {
    v71 = *v69 & 0xFFFFFFFFFFFFLL;
  }

  if (!v71)
  {
LABEL_24:
    _Block_copy(a2);
    sub_26131E4F4(0xD000000000000014, 0x80000002613BC7D0, v189, a2);
    _Block_release(a2);
    (*(v176 + 104))(v180, *MEMORY[0x277D43868], v177);
    (*(v178 + 104))(v184, *MEMORY[0x277D43968], v179);
    v79 = [objc_opt_self() processInfo];
    v80 = [v79 processName];

    sub_2613A18CC();
    v81 = v181;
LABEL_26:
    sub_26139FB6C();
    sub_26139FDBC();
    (*(v182 + 8))(v81, v183);
    goto LABEL_76;
  }

  v180 = *v69;
  v181 = v70;
  v182 = v67;
  v165 = v43;
  v184 = v41;
  v164 = a1;
  v72 = v185;
  sub_26139F42C();
  sub_26139F5BC();
  v48(v72, v26);
  sub_26139F51C();
  sub_26139F5DC();
  v48(v72, v26);
  LODWORD(v179) = sub_26128F68C(*(v69 + 16));
  sub_26139F51C();
  sub_26139F5BC();
  v183 = v26;
  v48(v72, v26);
  v73 = v167;
  sub_26128FAFC(46, v167);
  v74 = sub_26139EF7C();
  v75 = *(v74 - 8);
  v76 = *(v75 + 48);
  if (v76(v73, 1, v74) == 1)
  {
    sub_26124C718(v73, &qword_27FE9F220, qword_2613A5530);
    v77 = 0;
    v78 = 0xE000000000000000;
  }

  else
  {
    v77 = sub_26139EEAC();
    v78 = v84;
    (*(v75 + 8))(v73, v74);
  }

  v194 = v77;
  v195 = v78;
  v85 = v168;
  sub_26128FAFC(47, v168);
  if (v76(v85, 1, v74) == 1)
  {
    sub_26124C718(v85, &qword_27FE9F220, qword_2613A5530);
    v86 = 0;
    v87 = 0xE000000000000000;
  }

  else
  {
    v88 = sub_26139EEAC();
    v87 = v89;
    (*(v75 + 8))(v85, v74);
    v86 = v88;
  }

  MEMORY[0x2666FFEA0](v86, v87);

  v90 = v169;
  sub_26128FAFC(48, v169);
  if (v76(v90, 1, v74) == 1)
  {
    sub_26124C718(v90, &qword_27FE9F220, qword_2613A5530);
    v91 = 0;
    v92 = 0xE000000000000000;
  }

  else
  {
    v93 = sub_26139EEAC();
    v92 = v94;
    (*(v75 + 8))(v90, v74);
    v91 = v93;
  }

  MEMORY[0x2666FFEA0](v91, v92);

  v95 = v170;
  sub_26128FAFC(49, v170);
  if (v76(v95, 1, v74) == 1)
  {
    sub_26124C718(v95, &qword_27FE9F220, qword_2613A5530);
    v96 = 0;
    v97 = 0xE000000000000000;
  }

  else
  {
    v98 = sub_26139EEAC();
    v97 = v99;
    (*(v75 + 8))(v95, v74);
    v96 = v98;
  }

  MEMORY[0x2666FFEA0](v96, v97);

  v100 = v171;
  sub_26128FAFC(50, v171);
  if (v76(v100, 1, v74) == 1)
  {
    sub_26124C718(v100, &qword_27FE9F220, qword_2613A5530);
    v101 = 0;
    v102 = 0xE000000000000000;
  }

  else
  {
    v103 = sub_26139EEAC();
    v102 = v104;
    (*(v75 + 8))(v100, v74);
    v101 = v103;
  }

  MEMORY[0x2666FFEA0](v101, v102);

  v105 = v172;
  sub_26128FAFC(52, v172);
  if (v76(v105, 1, v74) == 1)
  {
    sub_26124C718(v105, &qword_27FE9F220, qword_2613A5530);
    v178 = 0;
    v106 = 0xE000000000000000;
  }

  else
  {
    v178 = sub_26139EEAC();
    v106 = v107;
    (*(v75 + 8))(v105, v74);
  }

  v108 = v173;
  sub_26128FAFC(51, v173);
  if (v76(v108, 1, v74) == 1)
  {
    sub_26124C718(v108, &qword_27FE9F220, qword_2613A5530);
    v109 = 0;
    v110 = 0xE000000000000000;
  }

  else
  {
    v111 = sub_26139EEAC();
    v110 = v112;
    (*(v75 + 8))(v108, v74);
    v109 = v111 & 0xFFFFFFFFFFFFLL;
  }

  v113 = v175;
  v114 = v179;
  sub_26125A870(v187, v175, &qword_27FE9F560, &qword_2613A3CB0);
  v115 = v184;
  v116 = v186(v113, 1, v184);
  v166 = v48;
  if (v116 == 1)
  {

    sub_26124C718(v113, &qword_27FE9F560, &qword_2613A3CB0);
    v117 = v164;
  }

  else
  {

    v118 = sub_2613A122C();
    v119 = sub_2613A1D9C();

    if (os_log_type_enabled(v118, v119))
    {
      v176 = v109;
      LODWORD(v177) = v119;
      v179 = v42;
      v120 = swift_slowAlloc();
      v173 = swift_slowAlloc();
      v191 = v173;
      *v120 = 136447490;
      LOBYTE(v192) = v114;
      v121 = sub_261290024(&type metadata for SPSEnvironmentContext, &off_2873B6DC0);
      v123 = sub_26124C11C(v121, v122, &v191);

      *(v120 + 4) = v123;
      *(v120 + 12) = 2080;
      swift_beginAccess();
      v124 = v194 & 0xFFFFFFFFFFFFLL;
      if ((v195 & 0x2000000000000000) != 0)
      {
        v124 = HIBYTE(v195) & 0xF;
      }

      if (v124)
      {
        v125 = 0xD000000000000017;
      }

      else
      {
        v125 = 0;
      }

      v126 = 0xE000000000000000;
      if (v124)
      {
        v127 = 0x80000002613BC810;
      }

      else
      {
        v127 = 0xE000000000000000;
      }

      v128 = sub_26124C11C(v125, v127, &v191);

      *(v120 + 14) = v128;
      *(v120 + 22) = 2082;
      LOBYTE(v192) = BYTE2(v114);
      v129 = sub_261290024(&type metadata for TOSEnvironmentContext, &off_2873B6E10);
      v131 = sub_26124C11C(v129, v130, &v191);

      *(v120 + 24) = v131;
      *(v120 + 32) = 2080;
      v132 = HIBYTE(v106) & 0xF;
      if ((v106 & 0x2000000000000000) == 0)
      {
        v132 = v178 & 0xFFFFFFFFFFFFLL;
      }

      if (v132)
      {
        v192 = 540945709;
        v193 = 0xE400000000000000;
        MEMORY[0x2666FFEA0]();
        v133 = v192;
        v126 = v193;
      }

      else
      {
        v133 = 0;
      }

      v134 = sub_26124C11C(v133, v126, &v191);

      *(v120 + 34) = v134;
      *(v120 + 42) = 2082;
      LOBYTE(v192) = BYTE1(v114);
      v135 = sub_261290024(&type metadata for WCSEnvironmentContext, &off_2873B6DE8);
      v137 = sub_26124C11C(v135, v136, &v191);

      *(v120 + 44) = v137;
      *(v120 + 52) = 2080;

      v138 = HIBYTE(v110) & 0xF;
      if ((v110 & 0x2000000000000000) == 0)
      {
        v138 = v176;
      }

      if (v138)
      {
        v192 = 540945709;
        v193 = 0xE400000000000000;
        MEMORY[0x2666FFEA0](v178, v106);

        v139 = v192;
        v140 = v193;
      }

      else
      {

        v139 = 0;
        v140 = 0xE000000000000000;
      }

      v117 = v164;
      v115 = v184;
      v42 = v179;
      v141 = sub_26124C11C(v139, v140, &v191);

      *(v120 + 54) = v141;
      _os_log_impl(&dword_261243000, v118, v177, "\nENVIRONMENT: ------------------------------------\nsps: %{public}s %s\ntos: %{public}s %s\nwcs: %{public}s %s\n-------------------------------------------------", v120, 0x3Eu);
      v142 = v173;
      swift_arrayDestroy();
      MEMORY[0x266701350](v142, -1, -1);
      MEMORY[0x266701350](v120, -1, -1);
    }

    else
    {

      v117 = v164;
    }

    (*(v42 + 8))(v175, v115);
  }

  type metadata accessor for PaymentTerminalContext();
  v143 = *(v117 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_bundleId);
  v144 = *(v117 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_bundleId + 8);

  v145 = v182;

  v146 = v181;

  v147 = sub_2613091D8(v143, v144, v188, v145, v180, v146, v114 & 0xFFFFFF);
  type metadata accessor for AnalyticsTask();

  v149 = sub_2613913B4(v148);
  (*((*MEMORY[0x277D85000] & *v117) + 0x1B8))(v149);
  v150 = OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_context;
  swift_beginAccess();
  v151 = *(v117 + v150);
  *(v117 + v150) = v147;

  v152 = v185;
  sub_26139F5FC();
  sub_26139F5BC();
  v166(v152, v183);
  v153 = v174;
  sub_26125A870(v187, v174, &qword_27FE9F560, &qword_2613A3CB0);
  if (v186(v153, 1, v115) == 1)
  {
    sub_26124C718(v153, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {

    v154 = sub_2613A122C();
    v155 = sub_2613A1D9C();

    if (os_log_type_enabled(v154, v155))
    {
      v156 = swift_slowAlloc();
      v157 = swift_slowAlloc();
      v191 = v157;
      *v156 = 136446210;
      v158 = *(v147 + 64);
      v159 = *(v147 + 72);

      v160 = sub_26124C11C(v158, v159, &v191);

      *(v156 + 4) = v160;
      v115 = v184;
      _os_log_impl(&dword_261243000, v154, v155, "context created for %{public}s", v156, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v157);
      MEMORY[0x266701350](v157, -1, -1);
      v161 = v156;
      v153 = v174;
      MEMORY[0x266701350](v161, -1, -1);
    }

    (*(v42 + 8))(v153, v115);
  }

  a2[2](a2, 1, v189);

LABEL_76:
  _Block_release(a2);
  _Block_release(a2);
  _Block_release(a2);
}

void sub_26131FFFC(void *a1, uint64_t a2)
{
  v61 = a2;
  v3 = sub_26139FDCC();
  v54 = *(v3 - 8);
  v55 = v3;
  v4 = *(v54 + 64);
  MEMORY[0x28223BE20](v3);
  v60 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_26139FAEC();
  v52 = *(v6 - 8);
  v53 = v6;
  v7 = *(v52 + 64);
  MEMORY[0x28223BE20](v6);
  v57 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_26139FB7C();
  v58 = *(v9 - 8);
  v59 = v9;
  v10 = *(v58 + 64);
  MEMORY[0x28223BE20](v9);
  v56 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v50 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v50 - v20;
  v22 = sub_26129B5FC();
  sub_26125A870(v22, v21, &qword_27FE9F560, &qword_2613A3CB0);
  v23 = sub_2613A124C();
  v24 = *(v23 - 8);
  v25 = *(v24 + 48);
  if (v25(v21, 1, v23) == 1)
  {
    v26 = sub_26124C718(v21, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v50 = v24;
    v51 = a1;
    v27 = v19;
    v28 = v16;
    v29 = v23;
    v30 = sub_26125A798();
    v31 = sub_261291AA8();
    v32 = v30 & 1;
    v23 = v29;
    v16 = v28;
    v19 = v27;
    v24 = v50;
    a1 = v51;
    sub_26129BC3C(v32, v51, 0xD00000000000001ALL, 0x80000002613BC8B0, v31, v33);

    v26 = (*(v24 + 8))(v21, v23);
  }

  if (*(a1 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_entitlements + 80) != 1)
  {
    sub_26125A870(v22, v19, &qword_27FE9F560, &qword_2613A3CB0);
    if (v25(v19, 1, v23) == 1)
    {
      sub_26124C718(v19, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v38 = sub_2613A122C();
      v39 = sub_2613A1D8C();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        *v40 = 0;
        _os_log_impl(&dword_261243000, v38, v39, "no entitlement", v40, 2u);
        MEMORY[0x266701350](v40, -1, -1);
      }

      (*(v24 + 8))(v19, v23);
    }

    v41 = objc_allocWithZone(sub_26139F2CC());
    v37 = sub_26139F2DC();
    (*(v61 + 16))(v61, 0, v37);
    goto LABEL_13;
  }

  v34 = (*((*MEMORY[0x277D85000] & *a1) + 0x2A0))(v26);
  if (v34)
  {
    v35 = *(v34 + 64);
    v36 = *(v34 + 72);

    v37 = sub_2613A189C();
    (*(v61 + 16))(v61, v37, 0);

LABEL_13:

    return;
  }

  sub_26125A870(v22, v16, &qword_27FE9F560, &qword_2613A3CB0);
  if (v25(v16, 1, v23) == 1)
  {
    sub_26124C718(v16, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v42 = sub_2613A122C();
    v43 = sub_2613A1D8C();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_261243000, v42, v43, "no context", v44, 2u);
      MEMORY[0x266701350](v44, -1, -1);
    }

    (*(v24 + 8))(v16, v23);
  }

  v45 = objc_allocWithZone(sub_26139F2CC());
  v46 = sub_26139F2DC();
  (*(v61 + 16))(v61, 0, v46);

  (*(v52 + 104))(v57, *MEMORY[0x277D43868], v53);
  (*(v54 + 104))(v60, *MEMORY[0x277D43978], v55);
  v47 = [objc_opt_self() processInfo];
  v48 = [v47 processName];

  sub_2613A18CC();
  v49 = v56;
  sub_26139FB6C();
  sub_26139FDBC();
  (*(v58 + 8))(v49, v59);
}

void sub_261320744(uint64_t a1, uint64_t a2, uint64_t a3, void (**a4)(const void *, void, void *))
{
  v47 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v42 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v42 - v15;
  v17 = swift_allocObject();
  *(v17 + 16) = a4;
  v46 = a4;
  _Block_copy(a4);
  v45 = sub_26129B5FC();
  sub_26125A870(v45, v16, &qword_27FE9F560, &qword_2613A3CB0);
  v18 = sub_2613A124C();
  v19 = *(v18 - 8);
  v20 = *(v19 + 48);
  if (v20(v16, 1, v18) == 1)
  {
    v21 = sub_26124C718(v16, &qword_27FE9F560, &qword_2613A3CB0);
    v22 = v47;
  }

  else
  {
    v44 = v14;
    v23 = sub_26125A798();
    v42 = v20;
    v24 = a1;
    v25 = a2;
    v26 = v11;
    v27 = v19;
    v28 = v23;
    v29 = sub_261291AA8();
    v43 = v18;
    v30 = v28 & 1;
    v19 = v27;
    v11 = v26;
    a2 = v25;
    a1 = v24;
    v14 = v44;
    v31 = v47;
    sub_26129BC3C(v30, v47, 0xD000000000000015, 0x80000002613BC9B0, v29, v32);
    v18 = v43;

    v21 = (*(v19 + 8))(v16, v18);
    v22 = v31;
    v20 = v42;
  }

  if (*(v22 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_entitlements + 83) == 1)
  {
    if ((*((*MEMORY[0x277D85000] & *v22) + 0x2A0))(v21))
    {

      sub_261309DC8(v33, a1, a2, sub_2613241AC, v17, v48);
      sub_261309590();

      sub_26131FFA8(v48);

      return;
    }

    sub_26125A870(v45, v11, &qword_27FE9F560, &qword_2613A3CB0);
    if (v20(v11, 1, v18) == 1)
    {
      sub_26124C718(v11, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v37 = sub_2613A122C();
      v38 = sub_2613A1D8C();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 0;
        _os_log_impl(&dword_261243000, v37, v38, "no context", v39, 2u);
        MEMORY[0x266701350](v39, -1, -1);
      }

      (*(v19 + 8))(v11, v18);
    }
  }

  else
  {
    sub_26125A870(v45, v14, &qword_27FE9F560, &qword_2613A3CB0);
    if (v20(v14, 1, v18) == 1)
    {
      sub_26124C718(v14, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v34 = sub_2613A122C();
      v35 = sub_2613A1D8C();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        _os_log_impl(&dword_261243000, v34, v35, "no entitlement", v36, 2u);
        MEMORY[0x266701350](v36, -1, -1);
      }

      (*(v19 + 8))(v14, v18);
    }
  }

  v40 = objc_allocWithZone(sub_26139F2CC());
  v41 = sub_26139F2DC();
  v46[2](v46, 0, v41);
}

void sub_261320C4C(uint64_t a1, uint64_t a2, unint64_t a3, int a4, uint64_t a5)
{
  v31 = a3;
  v32 = a1;
  v8 = sub_26139F64C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v28 - v15;
  v17 = sub_26129B5FC();
  sub_26125A870(v17, v16, &qword_27FE9F560, &qword_2613A3CB0);
  v18 = sub_2613A124C();
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v16, 1, v18) == 1)
  {
    sub_26124C718(v16, &qword_27FE9F560, &qword_2613A3CB0);
    if ((a4 & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v29 = a2;
  v30 = a4;

  v20 = sub_2613A122C();
  v21 = sub_2613A1D8C();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v28 = a5;
    v24 = v23;
    v33 = v23;
    *v22 = 136315138;
    *(v22 + 4) = sub_26124C11C(v29, v31, &v33);
    _os_log_impl(&dword_261243000, v20, v21, "%s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v24);
    v25 = v24;
    a5 = v28;
    MEMORY[0x266701350](v25, -1, -1);
    MEMORY[0x266701350](v22, -1, -1);
  }

  (*(v19 + 8))(v16, v18);
  if (v30)
  {
LABEL_7:
    sub_26139F44C();
    sub_26139F5BC();
    (*(v9 + 8))(v12, v8);
  }

LABEL_8:
  sub_26139F60C();
  sub_26139F5BC();
  (*(v9 + 8))(v12, v8);
  v26 = objc_allocWithZone(sub_26139F2CC());
  v27 = sub_26139F2DC();
  (*(a5 + 16))(a5, 0, v27);
}

void sub_261320F84(void *a1, void *a2, const void *a3)
{
  v89 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F580, &qword_2613A5480);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v84 = &v82 - v7;
  v86 = sub_26139FC1C();
  v85 = *(v86 - 8);
  v8 = *(v85 + 64);
  MEMORY[0x28223BE20](v86);
  v88 = &v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_26139FDCC();
  v96 = *(v10 - 8);
  v97 = v10;
  v11 = *(v96 + 64);
  MEMORY[0x28223BE20](v10);
  v102 = &v82 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_26139FAEC();
  v94 = *(v13 - 8);
  v95 = v13;
  v14 = *(v94 + 64);
  MEMORY[0x28223BE20](v13);
  v99 = &v82 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_26139FB7C();
  v100 = *(v16 - 8);
  v101 = v16;
  v17 = *(v100 + 64);
  MEMORY[0x28223BE20](v16);
  v98 = &v82 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_26139F64C();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v82 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v24 - 8);
  v93 = &v82 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v29 = &v82 - v28;
  _Block_copy(a3);
  v103 = swift_allocObject();
  *(v103 + 16) = a3;
  _Block_copy(a3);
  _Block_copy(a3);
  _Block_copy(a3);
  _Block_copy(a3);
  v92 = sub_26129B5FC();
  sub_26125A870(v92, v29, &qword_27FE9F560, &qword_2613A3CB0);
  v30 = sub_2613A124C();
  v31 = *(v30 - 8);
  v90 = *(v31 + 48);
  v91 = v31 + 48;
  if (v90(v29, 1, v30) == 1)
  {
    sub_26124C718(v29, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v87 = a3;
    v32 = sub_26125A798();
    v33 = sub_261291AA8();
    a3 = v87;
    sub_26129BC3C(v32 & 1, a2, 0xD00000000000001BLL, 0x80000002613BCA10, v33, v34);

    (*(v31 + 8))(v29, v30);
  }

  sub_26139F60C();
  sub_26139F5DC();
  v35 = *(v20 + 8);
  v35(v23, v19);
  sub_26139F44C();
  sub_26139F5DC();
  v36 = (v35)(v23, v19);
  if (*(a2 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_entitlements + 80) != 1)
  {
    _Block_copy(a3);
    sub_261320C4C(0, 0x7469746E65206F6ELL, 0xEE00746E656D656CLL, 1, a3);
    _Block_release(a3);
LABEL_20:

    goto LABEL_21;
  }

  v37 = v31;
  v38 = v30;
  v39 = (*((*MEMORY[0x277D85000] & *a2) + 0x2A0))(v36);
  if (!v39)
  {
    _Block_copy(a3);
    sub_261320C4C(0, 0x65746E6F63206F6ELL, 0xEA00000000007478, 1, a3);
    _Block_release(a3);
    (*(v94 + 104))(v99, *MEMORY[0x277D43868], v95);
    (*(v96 + 104))(v102, *MEMORY[0x277D43978], v97);
    v45 = [objc_opt_self() processInfo];
    v46 = [v45 processName];

    sub_2613A18CC();
    v47 = v98;
    sub_26139FB6C();
    sub_26139FDBC();
    (*(v100 + 8))(v47, v101);
    goto LABEL_20;
  }

  v40 = v39;
  sub_2613A121C();
  if ((sub_2613A10FC() & 1) == 0)
  {
    _Block_copy(a3);
    sub_261320C4C(11, 0xD000000000000011, 0x80000002613BC9F0, 1, a3);
    _Block_release(a3);

    goto LABEL_20;
  }

  v41 = *(v40 + 4);
  v100 = v19;
  v101 = v41;
  v102 = v40;
  v42 = *(v40 + 5);

  LODWORD(v101) = sub_2613A117C();

  v43 = v93;
  sub_26125A870(v92, v93, &qword_27FE9F560, &qword_2613A3CB0);
  v44 = v90(v43, 1, v38);
  v83 = v23;
  if (v44 == 1)
  {
    sub_26124C718(v43, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v48 = sub_2613A122C();
    v49 = sub_2613A1D9C();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 67240192;
      *(v50 + 4) = v101 & 1;
      _os_log_impl(&dword_261243000, v48, v49, "Diagnostics mode = %{BOOL,public}d", v50, 8u);
      MEMORY[0x266701350](v50, -1, -1);
    }

    (*(v37 + 8))(v43, v38);
  }

  v51 = *(a2 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_cardReaderAdapter + 24);
  v52 = *(a2 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_cardReaderAdapter + 32);
  __swift_project_boxed_opaque_existential_1((a2 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_cardReaderAdapter), v51);
  (*(v52 + 48))(v101 & 1, v51, v52);
  v101 = a2;
  v53 = sub_26130F3D4();
  v54 = v102;
  if (v53)
  {
    goto LABEL_16;
  }

  v55 = sub_2612B4F84();
  v56 = *(**v55 + 120);

  v58 = v56(v57);

  if (v58)
  {
    v59 = v88;
    sub_26139FEBC();
    v60 = sub_26130F630(v54, v59);
    (*(v85 + 8))(v59, v86);
    if ((v60 & 1) == 0)
    {
LABEL_16:
      _Block_copy(a3);
      sub_261320C4C(16, 0x6920726564616572, 0xEE00797375622073, 1, a3);
      _Block_release(a3);

      goto LABEL_20;
    }
  }

  v61 = v83;
  sub_26139F44C();
  sub_26139F5BC();
  v35(v61, v100);
  v62 = type metadata accessor for SessionTask();

  v63 = v88;
  v64 = sub_26139FEBC();
  v65 = v101;
  v66 = (*((*MEMORY[0x277D85000] & *v101) + 0x1B0))(v64);
  v67 = sub_2613271E0(v54, v63, v66, v65);
  v68 = *v55;
  v104[3] = v62;
  v104[4] = &off_2873BD1E8;
  v104[0] = v67;
  v69 = *(*v68 + 112);

  v69(v104);
  v87 = a3;

  __swift_destroy_boxed_opaque_existential_0Tm(v104);
  v70 = sub_2613A1C1C();
  v71 = *(*(v70 - 8) + 56);
  v72 = v84;
  v71(v84, 1, 1, v70);
  v73 = swift_allocObject();
  v73[2] = 0;
  v73[3] = 0;
  v74 = v101;
  v73[4] = v67;
  v73[5] = v74;

  v75 = v74;
  sub_261266800(0, 0, v72, &unk_2613ACA88, v73);

  v71(v72, 1, 1, v70);
  v76 = swift_allocObject();
  v76[2] = 0;
  v76[3] = 0;
  v76[4] = v67;
  v76[5] = v75;
  v77 = v89;
  v78 = v102;
  v79 = v103;
  v76[6] = v89;
  v76[7] = v78;
  v76[8] = sub_261323FD8;
  v76[9] = v79;

  v80 = v75;
  v81 = v77;

  sub_261266800(0, 0, v72, &unk_2613ACA90, v76);

  a3 = v87;
LABEL_21:
  _Block_release(a3);
  _Block_release(a3);
  _Block_release(a3);
  _Block_release(a3);
}

uint64_t sub_261321DDC()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_261265144;

  return sub_26131B1F8(v4, v5, v6, v2, v3);
}

uint64_t sub_261321E78()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_261265144;

  return sub_261319578(v3, v4, v5, v2);
}

uint64_t objectdestroy_25Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_261321F4C()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_261265144;

  return sub_26131BAB4(v5, v6, v7, v2, v3, v4);
}

uint64_t sub_261321FF4()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_261265144;

  return sub_26131E218(v4, v5, v6, v2, v3);
}

void sub_261322094()
{
  sub_2613221B8();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_2613221B8()
{
  if (!qword_27FEA0608)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FEA0560, &unk_2613AC8C0);
    v0 = sub_2613A1F8C();
    if (!v1)
    {
      atomic_store(v0, &qword_27FEA0608);
    }
  }
}

uint64_t sub_26132221C(char *a1, void (**a2)(void, void))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F580, &qword_2613A5480);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v38 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v38 - v13;
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  _Block_copy(a2);
  v43 = sub_26129B5FC();
  sub_26125A870(v43, v14, &qword_27FE9F560, &qword_2613A3CB0);
  v16 = sub_2613A124C();
  v17 = *(v16 - 8);
  v42 = *(v17 + 48);
  v18 = v42(v14, 1, v16);
  v41 = v17;
  if (v18 == 1)
  {
    sub_26124C718(v14, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v39 = v16;
    v40 = a1;
    v19 = sub_26125A798();
    v20 = sub_261291AA8();
    v21 = v19 & 1;
    v16 = v39;
    a1 = v40;
    sub_26129BC3C(v21, v40, 0xD00000000000001ELL, 0x80000002613BCA60, v20, v22);

    (*(v17 + 8))(v14, v16);
  }

  v23 = swift_allocObject();
  v23[2] = a1;
  v23[3] = sub_26127DF5C;
  v23[4] = v15;
  v24 = *&a1[OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_startTransactionTask];
  if (v24)
  {

    v25 = a1;

    if (swift_task_isCancelled())
    {
      sub_26125A870(v43, v12, &qword_27FE9F560, &qword_2613A3CB0);
      if (v42(v12, 1, v16) == 1)
      {
        sub_26124C718(v12, &qword_27FE9F560, &qword_2613A3CB0);
      }

      else
      {
        v32 = v12;
        v33 = sub_2613A122C();
        v34 = sub_2613A1D7C();
        if (os_log_type_enabled(v33, v34))
        {
          v35 = swift_slowAlloc();
          *v35 = 0;
          _os_log_impl(&dword_261243000, v33, v34, "Transaction cancellation was already scheduled", v35, 2u);
          MEMORY[0x266701350](v35, -1, -1);
        }

        (*(v41 + 8))(v32, v16);
      }

      a2[2](a2, 0);
    }

    else
    {
      sub_2613A1C9C();
      v30 = sub_2613A1C1C();
      (*(*(v30 - 8) + 56))(v7, 1, 1, v30);
      v31 = swift_allocObject();
      v31[2] = 0;
      v31[3] = 0;
      v31[4] = v24;
      v31[5] = sub_261324934;
      v31[6] = v23;

      sub_261266800(0, 0, v7, &unk_2613ACA78, v31);
    }
  }

  else
  {
    v26 = *&a1[OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_readTask];
    if (v26)
    {
      v27 = *(*v26 + 296);

      v28 = a1;

      v29 = v27(0);
    }

    else
    {

      v36 = a1;
      v29 = 0;
    }

    a2[2](a2, v29 & 1);
  }
}

uint64_t sub_26132276C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void (**a5)(const void *, void, void *))
{
  v167 = a4;
  v157 = a2;
  v156 = a1;
  v155 = sub_26139F13C();
  v154 = *(v155 - 8);
  v7 = *(v154 + 64);
  MEMORY[0x28223BE20](v155);
  v152 = v8;
  v153 = v147 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F580, &qword_2613A5480);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v159 = v147 - v11;
  v166 = sub_26139F64C();
  v12 = *(v166 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v166);
  v15 = v147 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = v147 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = v147 - v21;
  v23 = swift_allocObject();
  v164 = a5;
  v165 = v23;
  *(v23 + 16) = a5;
  _Block_copy(a5);
  v161 = sub_26129B5FC();
  sub_26125A870(v161, v22, &qword_27FE9F560, &qword_2613A3CB0);
  v24 = sub_2613A124C();
  v25 = *(v24 - 8);
  v160 = *(v25 + 48);
  v26 = v160(v22, 1, v24);
  v163 = a3;
  v158 = v25;
  if (v26 == 1)
  {
    sub_26124C718(v22, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v27 = v15;
    v28 = v12;
    v29 = v24;
    v30 = sub_26125A798();
    v31 = sub_261291AA8();
    v32 = v30 & 1;
    v24 = v29;
    v12 = v28;
    v15 = v27;
    sub_26129BC3C(v32, v167, 0xD000000000000030, 0x80000002613BCB30, v31, v33);

    (*(v25 + 8))(v22, v24);
  }

  sub_26139F50C();
  sub_26139F5DC();
  v36 = *(v12 + 8);
  v34 = v12 + 8;
  v35 = v36;
  v37 = (v36)(v15, v166);
  v38 = MEMORY[0x277D85000];
  v39 = *((*MEMORY[0x277D85000] & *v167) + 0x1B0);
  v162 = (*MEMORY[0x277D85000] & *v167) + 432;
  v40 = (v39)(v37);
  if (v40)
  {
    sub_261397E34(v163);
  }

  if (*(v167 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_entitlements + 80) != 1)
  {
    sub_26139F50C();
    sub_26139F5BC();
    v68 = v166;
    v35(v15, v166);
    strcpy(&v171, "no entitlement");
    HIBYTE(v171) = -18;
    v69 = sub_261314DEC(&v171, &v168);
    (*((*v38 & *v167) + 0x2A0))(v69);

    sub_26139F47C();
    sub_26139F5DC();
    v35(v15, v68);
    sub_2612B45EC();
    v70 = swift_allocError();
    *v71 = 0;
    v72 = sub_26139EE6C();
    v164[2](v164, 0, v72);

    sub_26139F47C();
    sub_26139F5BC();
    v35(v15, v68);
LABEL_16:
    sub_261317CBC(1);
  }

  v41 = v24;
  v151 = v39;
  v42 = v20;
  v43 = *((*v38 & *v167) + 0x2A0);
  v44 = (*v38 & *v167) + 672;
  v45 = v43(v40);
  if (!v45)
  {
    sub_26139F50C();
    sub_26139F5BC();
    v73 = v166;
    v35(v15, v166);
    *&v171 = 0x65746E6F63206F6ELL;
    *(&v171 + 1) = 0xEA00000000007478;
    v74 = sub_261314DEC(&v171, &v168);
    v43(v74);

    sub_26139F47C();
    sub_26139F5DC();
    v35(v15, v73);
    sub_2612B45EC();
    v75 = swift_allocError();
    *v76 = 0;
    v77 = sub_26139EE6C();
    v164[2](v164, 0, v77);

    sub_26139F47C();
    sub_26139F5BC();
    v35(v15, v73);
    goto LABEL_16;
  }

  v46 = v45;
  v149 = v43;
  v47 = sub_2613A121C();
  v48 = sub_2613A10EC();
  v150 = v46;
  if (v48)
  {
    sub_26139F50C();
    sub_26139F5BC();
    v35(v15, v166);
    *&v171 = 0xD000000000000015;
    *(&v171 + 1) = 0x80000002613BCB10;
    v49 = sub_261314DEC(&v171, &v168);
    v50 = v149(v49);
    if (v50)
    {
      v51 = v50;
      v161 = v35;
      v148 = v34;
      v52 = v151();
      v53 = v163;
      if (v52)
      {
        v54 = sub_261253D64();
        v55 = sub_261253D64();
        v56 = sub_261396E6C();
        sub_261396E70(v53, 0, 0, v54, v55, v56, v57, 2, 18, 0, 1u);
      }

      type metadata accessor for PINMonitorEventBuilder();
      sub_2612BAC20(4);
      v58 = *(v51 + 64);
      v59 = *(v51 + 72);

      sub_2612BAC6C(0, v58, v59);

      v60 = sub_26139F0FC();
      sub_2612BAC6C(4u, v60, v61);

      v62 = sub_2613A03AC();
      sub_2612BAC6C(6u, v62, v63);

      v64 = sub_26139FACC();
      sub_2612BAC6C(8u, v64, v65);

      sub_2612BB0C0(&v168);
      if (v170)
      {
        v171 = v168;
        v172 = v169;
        v173 = v170;
        v66 = *(v167 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_cardReaderAdapter + 24);
        v67 = *(v167 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_cardReaderAdapter + 32);
        __swift_project_boxed_opaque_existential_1((v167 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_cardReaderAdapter), v66);
        (*(v67 + 120))(&v171, v66, v67);

        sub_2612A0E50(&v171);
      }

      else
      {

        sub_26124C718(&v168, &qword_27FE9F8D0, &unk_2613AC6E0);
      }

      v35 = v161;
    }

    sub_26139F47C();
    sub_26139F5DC();
    v127 = v166;
    v35(v15, v166);
    sub_2612B45EC();
    v129 = swift_allocError();
    v130 = 18;
LABEL_47:
    *v128 = v130;
    v145 = sub_26139EE6C();
    v164[2](v164, 0, v145);

    sub_26139F47C();
    sub_26139F5BC();
    v35(v15, v127);
    sub_261317CBC(1);
  }

  if ((sub_2613A10FC() & 1) == 0)
  {
    sub_26139F50C();
    sub_26139F5BC();
    v35(v15, v166);
    *&v171 = 0xD000000000000011;
    *(&v171 + 1) = 0x80000002613BC9F0;
    v81 = sub_261314DEC(&v171, &v168);
    v82 = v149(v81);
    if (v82)
    {
      v83 = v82;
      v161 = v35;
      v148 = v34;
      v84 = v151();
      v85 = v163;
      if (v84)
      {
        v86 = sub_261253D64();
        v87 = sub_261253D64();
        v88 = sub_261396E6C();
        sub_261396E70(v85, 0, 0, v86, v87, v88, v89, 2, 19, 0, 1u);
      }

      type metadata accessor for PINMonitorEventBuilder();
      sub_2612BAC20(4);
      v90 = *(v83 + 64);
      v91 = *(v83 + 72);

      sub_2612BAC6C(0, v90, v91);

      v92 = sub_26139F0FC();
      sub_2612BAC6C(4u, v92, v93);

      v94 = sub_2613A03AC();
      sub_2612BAC6C(6u, v94, v95);

      v96 = sub_26139FACC();
      sub_2612BAC6C(8u, v96, v97);

      sub_2612BB0C0(&v168);
      if (v170)
      {
        v171 = v168;
        v172 = v169;
        v173 = v170;
        v98 = *(v167 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_cardReaderAdapter + 24);
        v99 = *(v167 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_cardReaderAdapter + 32);
        __swift_project_boxed_opaque_existential_1((v167 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_cardReaderAdapter), v98);
        (*(v99 + 120))(&v171, v98, v99);

        sub_2612A0E50(&v171);
      }

      else
      {

        sub_26124C718(&v168, &qword_27FE9F8D0, &unk_2613AC6E0);
      }

      v35 = v161;
    }

    sub_26139F47C();
    sub_26139F5DC();
    v127 = v166;
    v35(v15, v166);
    sub_2612B45EC();
    v129 = swift_allocError();
    v130 = 19;
    goto LABEL_47;
  }

  v147[1] = v44;
  v148 = v34;
  v79 = *(v46 + 32);
  v78 = *(v46 + 40);

  v147[0] = v47;
  v80 = sub_2613A117C();

  sub_26125A870(v161, v42, &qword_27FE9F560, &qword_2613A3CB0);
  if (v160(v42, 1, v41) == 1)
  {
    sub_26124C718(v42, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v100 = sub_2613A122C();
    v101 = sub_2613A1D9C();
    if (os_log_type_enabled(v100, v101))
    {
      v102 = swift_slowAlloc();
      *v102 = 67109120;
      *(v102 + 4) = v80 & 1;
      _os_log_impl(&dword_261243000, v100, v101, "Diagnostics mode = %{BOOL}d", v102, 8u);
      MEMORY[0x266701350](v102, -1, -1);
    }

    (*(v158 + 8))(v42, v41);
  }

  v103 = v167;
  v104 = (v167 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_cardReaderAdapter);
  v105 = *(v167 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_cardReaderAdapter + 24);
  v106 = *(v167 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_cardReaderAdapter + 32);
  __swift_project_boxed_opaque_existential_1((v167 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_cardReaderAdapter), v105);
  (*(v106 + 48))(v80 & 1, v105, v106);
  v107 = *(v103 + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_continuityDisplayMonitor);
  if (sub_2612FC1C0())
  {
    v160 = v104;
    sub_2613A11FC();
    sub_26139F50C();
    sub_26139F5BC();
    v35(v15, v166);
    *&v171 = 0xD000000000000022;
    *(&v171 + 1) = 0x80000002613BCAE0;
LABEL_32:
    v108 = sub_261314DEC(&v171, &v168);
    v109 = v149(v108);
    if (v109)
    {
      v110 = v109;
      v161 = v35;
      v111 = v151();
      v112 = v163;
      if (v111)
      {
        v113 = sub_261253D64();
        v114 = sub_261253D64();
        v115 = sub_261396E6C();
        sub_261396E70(v112, 0, 0, v113, v114, v115, v116, 2, 30, 0, 1u);
      }

      type metadata accessor for PINMonitorEventBuilder();
      sub_2612BAC20(4);
      v117 = *(v110 + 64);
      v118 = *(v110 + 72);

      sub_2612BAC6C(0, v117, v118);

      v119 = sub_26139F0FC();
      sub_2612BAC6C(4u, v119, v120);

      v121 = sub_2613A03AC();
      sub_2612BAC6C(6u, v121, v122);

      v123 = sub_26139FACC();
      sub_2612BAC6C(8u, v123, v124);

      sub_2612BB0C0(&v168);
      if (v170)
      {
        v171 = v168;
        v172 = v169;
        v173 = v170;
        v125 = *(v160 + 3);
        v126 = *(v160 + 4);
        __swift_project_boxed_opaque_existential_1(v160, v125);
        (*(v126 + 120))(&v171, v125, v126);

        sub_2612A0E50(&v171);
      }

      else
      {

        sub_26124C718(&v168, &qword_27FE9F8D0, &unk_2613AC6E0);
      }

      v35 = v161;
    }

    sub_26139F47C();
    sub_26139F5DC();
    v127 = v166;
    v35(v15, v166);
    sub_2612B45EC();
    v129 = swift_allocError();
    v130 = 30;
    goto LABEL_47;
  }

  if (sub_2612FBFC4())
  {
    v160 = v104;
    sub_26139F50C();
    sub_26139F5BC();
    v35(v15, v166);
    *&v171 = 0xD000000000000025;
    *(&v171 + 1) = 0x80000002613BCA80;
    goto LABEL_32;
  }

  v131 = sub_2613A1C1C();
  (*(*(v131 - 8) + 56))(v159, 1, 1, v131);
  v132 = v154;
  v133 = v153;
  v134 = v155;
  (*(v154 + 16))(v153, v163, v155);
  v135 = (*(v132 + 80) + 40) & ~*(v132 + 80);
  v136 = (v152 + v135 + 7) & 0xFFFFFFFFFFFFFFF8;
  v137 = (v136 + 23) & 0xFFFFFFFFFFFFFFF8;
  v138 = v165;
  v139 = swift_allocObject();
  *(v139 + 2) = 0;
  *(v139 + 3) = 0;
  v140 = v167;
  *(v139 + 4) = v167;
  (*(v132 + 32))(&v139[v135], v133, v134);
  v141 = &v139[v136];
  *v141 = sub_261323B4C;
  v141[1] = v138;
  v142 = &v139[v137];
  v143 = v157;
  *v142 = v156;
  *(v142 + 1) = v143;
  *&v139[(v137 + 23) & 0xFFFFFFFFFFFFFFF8] = v150;
  v144 = v140;

  sub_261266800(0, 0, v159, &unk_2613ACA70, v139);
}

uint64_t objectdestroy_21Tm()
{
  v1 = sub_26139F13C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + 16);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);
  v9 = *(v0 + v5 + 8);

  v10 = *(v0 + v6 + 8);

  v11 = *(v0 + v7);

  return MEMORY[0x2821FE8E8](v0, v7 + 8, v3 | 7);
}

uint64_t sub_261323C64()
{
  v2 = *(sub_26139F13C() - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 32);
  v7 = (v0 + v4);
  v8 = *v7;
  v9 = v7[1];
  v10 = *(v0 + v5);
  v11 = *(v0 + v5 + 8);
  v12 = *(v0 + ((v5 + 23) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v1 + 16) = v13;
  *v13 = v1;
  v13[1] = sub_261265144;

  return sub_261315E80(v13, v14, v15, v6, v0 + v3, v8, v9, v10);
}

uint64_t objectdestroy_14Tm()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t objectdestroy_17Tm()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_261323E34()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_261265144;

  return sub_2613150B0(v5, v6, v7, v2, v3, v4);
}

uint64_t objectdestroy_10Tm_0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_261323F2C()
{
  v2 = v0[4];
  v3 = v0[5];
  v5 = v0[6];
  v4 = v0[7];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_261265144;

  return sub_26131208C(v6, v7, v8, v2, v3, v5, v4);
}

uint64_t sub_261323FF0()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_261265144;

  return sub_26130FBB8(v4, v5, v6, v2, v3);
}

uint64_t objectdestroy_6Tm_0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = *(v0 + 56);

  v4 = *(v0 + 72);

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_2613240E8()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v7 = v0[8];
  v6 = v0[9];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_261262AA4;

  return sub_2613101E4(v8, v9, v10, v2, v3, v4, v5, v7);
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2613242C8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA05F8, &unk_2613AC8D0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_261324350(void *a1, uint64_t a2, char a3)
{
  v7 = *(sub_26139F13C() - 8);
  v8 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v9 = *(v3 + 16);
  v10 = v3 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
  v11 = *v10;
  v12 = *(v10 + 8);

  sub_261317248(a1, a2, a3 & 1, v9, v3 + v8, v11, v12);
}

unint64_t sub_26132445C()
{
  result = qword_27FEA0618;
  if (!qword_27FEA0618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEA0618);
  }

  return result;
}

void sub_2613244C8(uint64_t a1, uint64_t a2, char a3, void (*a4)(uint64_t, uint64_t, void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    a4(a1, a2, a3 & 1);
  }
}

uint64_t sub_26132454C(uint64_t a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(result + OBJC_IVAR____TtC21ProximityReaderDaemon22PaymentTerminalService_client);
    v4 = result;
    swift_unknownObjectRetain();

    [v3 readFeedback_];
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t objectdestroy_2Tm(void (*a1)(void))
{
  a1(*(v1 + 16));
  v2 = *(v1 + 32);

  return MEMORY[0x2821FE8E8](v1, 48, 7);
}

uint64_t sub_261324634(uint64_t a1)
{
  ErrorEventData = type metadata accessor for ReadErrorEventData();
  (*(*(ErrorEventData - 8) + 8))(a1, ErrorEventData);
  return a1;
}

unint64_t sub_261324690()
{
  result = qword_27FEA0620;
  if (!qword_27FEA0620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEA0620);
  }

  return result;
}

unint64_t sub_2613246E4()
{
  result = qword_27FEA0628;
  if (!qword_27FEA0628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEA0628);
  }

  return result;
}

unint64_t sub_261324794()
{
  result = qword_27FEA0638;
  if (!qword_27FEA0638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEA0638);
  }

  return result;
}

uint64_t sub_2613247E8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_26132482C()
{
  result = qword_27FEA0640;
  if (!qword_27FEA0640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEA0640);
  }

  return result;
}

uint64_t objectdestroy_194Tm()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

unint64_t sub_2613248C8()
{
  result = qword_27FEA0648;
  if (!qword_27FEA0648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEA0648);
  }

  return result;
}

void *sub_261324938(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = a1;
  sub_26124A200(a2, (v6 + 4));
  v6[9] = a3;
  return v6;
}

uint64_t sub_261324994(void (*a1)(uint64_t), uint64_t a2)
{
  v3 = v2;
  v118 = a1;
  v119 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F580, &qword_2613A5480);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v94 = &v93 - v6;
  v106 = sub_2613A170C();
  v111 = *(v106 - 8);
  v7 = *(v111 + 64);
  v8 = MEMORY[0x28223BE20](v106);
  v110 = (&v93 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v105 = (&v93 - v10);
  v11 = sub_2613A177C();
  v108 = *(v11 - 8);
  v109 = v11;
  v12 = *(v108 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v104 = &v93 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v107 = &v93 - v15;
  v103 = sub_2613A171C();
  v100 = *(v103 - 8);
  v16 = *(v100 + 64);
  MEMORY[0x28223BE20](v103);
  v18 = &v93 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_2613A175C();
  v101 = *(v102 - 8);
  v19 = *(v101 + 64);
  MEMORY[0x28223BE20](v102);
  v21 = &v93 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_2613A1E5C();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v26 = &v93 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v27 - 8);
  v97 = &v93 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29);
  v96 = &v93 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v95 = &v93 - v34;
  MEMORY[0x28223BE20](v33);
  v36 = &v93 - v35;
  v112 = sub_26129B5FC();
  sub_26125A870(v112, v36, &qword_27FE9F560, &qword_2613A3CB0);
  v37 = sub_2613A124C();
  v38 = *(v37 - 8);
  v39 = *(v38 + 48);
  v114 = v38 + 48;
  v115 = v38;
  v116 = v39;
  v40 = v39(v36, 1, v37);
  v117 = v3;
  v113 = v37;
  if (v40 != 1)
  {
    v41 = sub_26125A798();
    v42 = sub_261291AA8();
    v43 = v117;
    sub_26129BC3C(v41 & 1, v117, 0xD000000000000011, 0x80000002613BD1A0, v42, v44);

    (*(v115 + 8))(v36, v37);
    if (!*(v43 + 16))
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  sub_26124C718(v36, &qword_27FE9F560, &qword_2613A3CB0);
  if (*(v3 + 16))
  {
LABEL_5:
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_2613A1E8C();
    swift_unknownObjectRelease();
  }

LABEL_6:
  sub_26128D8D4();
  sub_2613A1E4C();
  v45 = sub_2613A1E6C();
  (*(v23 + 8))(v26, v22);
  v99 = v45;
  ObjectType = swift_getObjectType();
  v47 = swift_allocObject();
  v48 = v119;
  *(v47 + 16) = v118;
  *(v47 + 24) = v48;
  aBlock[4] = sub_2613258C8;
  aBlock[5] = v47;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_261276D54;
  aBlock[3] = &block_descriptor_12;
  v49 = _Block_copy(aBlock);

  sub_2613A173C();
  v98 = ObjectType;
  sub_261287B10();
  sub_2613A1E7C();
  _Block_release(v49);
  (*(v100 + 8))(v18, v103);
  (*(v101 + 8))(v21, v102);

  v50 = v104;
  sub_2613A176C();
  v51 = sub_2613A0CBC();
  v52 = v105;
  *v105 = v51;
  v53 = v111;
  v54 = *(v111 + 104);
  v55 = v106;
  v54(v52, *MEMORY[0x277D85188], v106);
  v56 = v107;
  MEMORY[0x2666FFC30](v50, v52);
  v57 = *(v53 + 8);
  v57(v52, v55);
  v111 = *(v108 + 8);
  v58 = v50;
  v59 = v109;
  (v111)(v58, v109);
  v54(v52, *MEMORY[0x277D85180], v55);
  v60 = v110;
  *v110 = 0;
  v54(v60, *MEMORY[0x277D85168], v55);
  v61 = v99;
  MEMORY[0x266700370](v56, v52, v60, v98);
  v57(v60, v55);
  v57(v52, v55);
  (v111)(v56, v59);
  sub_2613A1EAC();
  v62 = v117;
  v63 = *(v117 + 16);
  *(v117 + 16) = v61;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v64 = *(v62 + 24);
  v65 = *(v64 + 64);
  v66 = *(v64 + 72);

  v67 = sub_26125B314(v65, v66);

  v70 = v112;
  v69 = v113;
  if (v67)
  {
    v71 = (*(*v67 + 376))(v68);
    if (v71)
    {
      v72 = (*(*v71 + 216))();
      if (v72 < sub_2613A0CBC())
      {
        v73 = v95;
        sub_26125A870(v70, v95, &qword_27FE9F560, &qword_2613A3CB0);
        if (v116(v73, 1, v69) == 1)
        {
          sub_26124C718(v73, &qword_27FE9F560, &qword_2613A3CB0);
        }

        else
        {
          v80 = sub_2613A122C();
          v81 = sub_2613A1D7C();
          if (os_log_type_enabled(v80, v81))
          {
            v82 = swift_slowAlloc();
            v83 = swift_slowAlloc();
            aBlock[0] = v83;
            *v82 = 136315138;
            *(v82 + 4) = sub_26124C11C(0xD000000000000011, 0x80000002613BD1A0, aBlock);
            _os_log_impl(&dword_261243000, v80, v81, "%s - possible session timeout, go ahead and refresh", v82, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v83);
            MEMORY[0x266701350](v83, -1, -1);
            v84 = v82;
            v62 = v117;
            MEMORY[0x266701350](v84, -1, -1);
          }

          (*(v115 + 8))(v95, v69);
        }

        v85 = sub_2613A1C1C();
        v86 = v94;
        (*(*(v85 - 8) + 56))(v94, 1, 1, v85);
        v87 = swift_allocObject();
        v87[2] = 0;
        v87[3] = 0;
        v87[4] = v62;
        v87[5] = v67;
        v87[6] = v118;
        v87[7] = v119;

        sub_261266800(0, 0, v86, &unk_2613ACAD8, v87);
      }

      v88 = v96;
      sub_26125A870(v70, v96, &qword_27FE9F560, &qword_2613A3CB0);
      if (v116(v88, 1, v69) == 1)
      {
        swift_unknownObjectRelease();

        return sub_26124C718(v88, &qword_27FE9F560, &qword_2613A3CB0);
      }

      else
      {
        v89 = sub_2613A122C();
        v90 = sub_2613A1D7C();
        if (os_log_type_enabled(v89, v90))
        {
          v91 = swift_slowAlloc();
          v92 = swift_slowAlloc();
          aBlock[0] = v92;
          *v91 = 136315138;
          *(v91 + 4) = sub_26124C11C(0xD000000000000011, 0x80000002613BD1A0, aBlock);
          _os_log_impl(&dword_261243000, v89, v90, "%s - session ok", v91, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v92);
          MEMORY[0x266701350](v92, -1, -1);
          MEMORY[0x266701350](v91, -1, -1);
        }

        swift_unknownObjectRelease();

        return (*(v115 + 8))(v88, v69);
      }
    }
  }

  v74 = v97;
  sub_26125A870(v70, v97, &qword_27FE9F560, &qword_2613A3CB0);
  if (v116(v74, 1, v69) == 1)
  {
    v75 = sub_26124C718(v74, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v76 = sub_2613A122C();
    v77 = sub_2613A1D8C();
    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      *v78 = 0;
      _os_log_impl(&dword_261243000, v76, v77, "Missing store and token while refreshing session", v78, 2u);
      MEMORY[0x266701350](v78, -1, -1);
    }

    v75 = (*(v115 + 8))(v74, v69);
  }

  v118(v75);
  return swift_unknownObjectRelease();
}

uint64_t sub_261325718(uint64_t (*a1)(uint64_t))
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v14 - v4;
  v6 = sub_26129B5FC();
  sub_26125A870(v6, v5, &qword_27FE9F560, &qword_2613A3CB0);
  v7 = sub_2613A124C();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v5, 1, v7) == 1)
  {
    v9 = sub_26124C718(v5, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v10 = sub_2613A122C();
    v11 = sub_2613A1D7C();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_261243000, v10, v11, "PIN auth allowed timeout expired, remove transaction store", v12, 2u);
      MEMORY[0x266701350](v12, -1, -1);
    }

    v9 = (*(v8 + 8))(v5, v7);
  }

  return a1(v9);
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2613258E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[69] = a7;
  v7[68] = a6;
  v7[67] = a5;
  v7[66] = a4;
  v8 = sub_26139FC1C();
  v7[70] = v8;
  v9 = *(v8 - 8);
  v7[71] = v9;
  v10 = *(v9 + 64) + 15;
  v7[72] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2613259B4);
}

uint64_t sub_2613259B4()
{
  v1 = v0[72];
  v2 = v0[71];
  v3 = v0[70];
  v4 = v0[67];
  v5 = v0[66];
  type metadata accessor for SessionTask();
  v6 = *(v5 + 24);
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  *v1 = v7;
  v1[1] = v8;
  (*(v2 + 104))(v1, *MEMORY[0x277D43908], v3);

  v9 = sub_2613271E0(v6, v1, 0, 0);
  v0[73] = v9;
  v10 = sub_26125A798();
  v14 = (*v9 + 296);
  v15 = (*v14 + **v14);
  v11 = (*v14)[1];
  v12 = swift_task_alloc();
  v0[74] = v12;
  *v12 = v0;
  v12[1] = sub_261325B8C;

  return (v15)(v0 + 26, v10 & 1, 0, 0);
}

uint64_t sub_261325B8C()
{
  v1 = *(*v0 + 592);
  v2 = *(*v0 + 584);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_261325CA4);
}

uint64_t sub_261325CA4()
{
  v1 = *(v0 + 576);
  v3 = *(v0 + 224);
  v2 = *(v0 + 240);
  *(v0 + 160) = v3;
  *(v0 + 176) = v2;
  *(v0 + 185) = *(v0 + 249);
  v4 = *(v0 + 208);
  *(v0 + 144) = v4;
  *(v0 + 400) = v4;
  *(v0 + 416) = v3;
  *(v0 + 432) = *(v0 + 176);
  *(v0 + 441) = *(v0 + 185);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0610, &qword_2613ACB20);
  v12 = *(v0 + 544);
  sub_26124A238(sub_261325E70, 0, v5, v0 + 336);
  v6 = *(v0 + 352);
  *(v0 + 464) = *(v0 + 336);
  *(v0 + 480) = v6;
  *(v0 + 496) = *(v0 + 368);
  *(v0 + 505) = *(v0 + 377);
  v7 = swift_task_alloc();
  *(v7 + 16) = v12;
  sub_26124A42C(sub_26132716C, v7, v5, v0 + 272);
  sub_26124C718(v0 + 144, &qword_27FEA0610, &qword_2613ACB20);

  v8 = *(v0 + 480);
  *(v0 + 80) = *(v0 + 464);
  *(v0 + 96) = v8;
  *(v0 + 112) = *(v0 + 496);
  *(v0 + 121) = *(v0 + 505);
  sub_26124C718(v0 + 80, &qword_27FEA0610, &qword_2613ACB20);
  v9 = *(v0 + 288);
  *(v0 + 16) = *(v0 + 272);
  *(v0 + 32) = v9;
  *(v0 + 48) = *(v0 + 304);
  *(v0 + 57) = *(v0 + 313);
  sub_26124C718(v0 + 16, &qword_27FEA0610, &qword_2613ACB20);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_261325E70()
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
    return sub_26124C718(v3, &qword_27FE9F560, &qword_2613A3CB0);
  }

  v8 = sub_2613A122C();
  v9 = sub_2613A1D7C();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_261243000, v8, v9, "session is refreshed", v10, 2u);
    MEMORY[0x266701350](v10, -1, -1);
  }

  return (*(v6 + 8))(v3, v5);
}

uint64_t sub_261326014(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v20 - v6;
  v8 = *a1;
  v9 = sub_26129B5FC();
  sub_26125A870(v9, v7, &qword_27FE9F560, &qword_2613A3CB0);
  v10 = sub_2613A124C();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v7, 1, v10) == 1)
  {
    v12 = sub_26124C718(v7, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v13 = sub_2613A122C();
    v14 = sub_2613A1D8C();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138412290;
      sub_2612B45EC();
      swift_allocError();
      *v17 = v8;
      v18 = _swift_stdlib_bridgeErrorToNSError();
      *(v15 + 4) = v18;
      *v16 = v18;
      _os_log_impl(&dword_261243000, v13, v14, "failed while refreshing: %@", v15, 0xCu);
      sub_26124C718(v16, &qword_27FEA0410, &qword_2613AA780);
      MEMORY[0x266701350](v16, -1, -1);
      MEMORY[0x266701350](v15, -1, -1);
    }

    v12 = (*(v11 + 8))(v7, v10);
  }

  return a2(v12);
}

uint64_t sub_261326240(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v19 - v10;
  v12 = sub_26129B5FC();
  sub_26125A870(v12, v11, &qword_27FE9F560, &qword_2613A3CB0);
  v13 = sub_2613A124C();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v11, 1, v13) != 1)
  {
    v16 = sub_26125A798();
    v17 = sub_261291AA8();
    sub_26129BC3C(v16 & 1, v4, 0xD000000000000023, 0x80000002613BD1C0, v17, v18);

    result = (*(v14 + 8))(v11, v13);
    if (!*(v4 + 72))
    {
      return result;
    }

    return sub_261397594(a1, a2, a3);
  }

  result = sub_26124C718(v11, &qword_27FE9F560, &qword_2613A3CB0);
  if (*(v4 + 72))
  {
    return sub_261397594(a1, a2, a3);
  }

  return result;
}

uint64_t sub_2613263EC(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v44 = a7;
  v45 = a5;
  v46 = a6;
  v47 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v43[-v11];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0668, &unk_2613ACAE0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v43[-v15];
  v17 = sub_26139FA5C();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v43[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = sub_261327198(&unk_27FEA0670, MEMORY[0x277D437F8]);
  nullsub_1(v17, v22);
  sub_26124B218(v17, v17, v16);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_26124C718(v16, &qword_27FEA0668, &unk_2613ACAE0);
    v23 = sub_26129B4AC();
    sub_26125A870(v23, v12, &qword_27FE9F560, &qword_2613A3CB0);
    v24 = sub_2613A124C();
    v25 = *(v24 - 8);
    if ((*(v25 + 48))(v12, 1, v24) == 1)
    {
      return sub_26124C718(v12, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v37 = sub_2613A122C();
      v38 = sub_2613A1D8C();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 0;
        _os_log_impl(&dword_261243000, v37, v38, "failed to decode PINAnalyticsData", v39, 2u);
        MEMORY[0x266701350](v39, -1, -1);
      }

      return (*(v25 + 8))(v12, v24);
    }
  }

  else
  {
    (*(v18 + 32))(v21, v16, v17);
    v27 = v7;
    v28 = v47;
    if (*(v7 + 72))
    {
      v29 = sub_26139FA4C();
      v30 = sub_26139FA3C();
      v31 = sub_26139FA2C();
      v32 = sub_26125A798();
      sub_261396E70(a1, v28 & 1, v29 & 1, v30, v31, v45, v46, v44 & 1, 0, 1u, v32 & 1);
    }

    type metadata accessor for PINMonitorEventBuilder();
    sub_2612BAC20(1);
    v33 = sub_26139F0FC();
    sub_2612BAC6C(4u, v33, v34);

    if (v28)
    {
      v35 = sub_2613A039C();
    }

    else
    {
      v35 = sub_2613A03AC();
    }

    sub_2612BAC6C(6u, v35, v36);

    sub_26139FA3C();
    v40 = sub_26139FABC();
    v42 = sub_2612BAC6C(7u, v40, v41);

    (*(*v27 + 176))(v42);

    return (*(v18 + 8))(v21, v17);
  }
}

uint64_t sub_2613268C0(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v60 = a6;
  v61 = a7;
  v63 = a3;
  v62 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v58 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0668, &unk_2613ACAE0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v58 - v15;
  v17 = sub_26139FA5C();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_261327198(&unk_27FEA0670, MEMORY[0x277D437F8]);
  nullsub_1(v17, v22);
  sub_26124B218(v17, v17, v16);
  if ((*(v18 + 48))(v16, 1, v17) != 1)
  {
    v59 = v18;
    (*(v18 + 32))(v21, v16, v17);
    v58 = v7;
    v27 = v63;
    v28 = v62;
    if (*(v7 + 72))
    {
      v29 = sub_26139FA4C();
      v30 = sub_26139FA3C();
      v31 = sub_26139FA2C();
      v32 = sub_26125A798();
      sub_261396E70(a1, v27 & 1, v29 & 1, v30, v31, v60, v61, 2, v28, 0, v32 & 1);
    }

    if (v28 != 30)
    {
      type metadata accessor for PINMonitorEventBuilder();
      sub_2612BAC20(3);
      v40 = sub_26139F0FC();
      sub_2612BAC6C(4u, v40, v41);

      if (v27)
      {
        v42 = sub_2613A039C();
      }

      else
      {
        v42 = sub_2613A03AC();
      }

      sub_2612BAC6C(6u, v42, v43);

      sub_26139FA3C();
      v50 = sub_26139FABC();
      sub_2612BAC6C(7u, v50, v51);

      v52 = sub_26139FACC();
      v45 = v53;
      v54 = v52;
      goto LABEL_23;
    }

    v33 = sub_26139FA1C();
    if (v34)
    {
      goto LABEL_16;
    }

    if (v33 == 1)
    {
      v35 = sub_2613A057C();
      goto LABEL_17;
    }

    if (v33)
    {
LABEL_16:
      v35 = sub_2613A058C();
    }

    else
    {
      v35 = sub_2613A059C();
    }

LABEL_17:
    v44 = v35;
    v45 = v36;
    type metadata accessor for PINMonitorEventBuilder();
    sub_2612BAC20(2);
    v46 = sub_26139F0FC();
    sub_2612BAC6C(4u, v46, v47);

    if (v27)
    {
      v48 = sub_2613A039C();
    }

    else
    {
      v48 = sub_2613A03AC();
    }

    sub_2612BAC6C(6u, v48, v49);

    sub_26139FA3C();
    v55 = sub_26139FABC();
    sub_2612BAC6C(7u, v55, v56);

    v54 = v44;
LABEL_23:
    v57 = sub_2612BAC6C(8u, v54, v45);

    (*(*v58 + 176))(v57);

    return (*(v59 + 8))(v21, v17);
  }

  sub_26124C718(v16, &qword_27FEA0668, &unk_2613ACAE0);
  v23 = sub_26129B4AC();
  sub_26125A870(v23, v12, &qword_27FE9F560, &qword_2613A3CB0);
  v24 = sub_2613A124C();
  v25 = *(v24 - 8);
  if ((*(v25 + 48))(v12, 1, v24) == 1)
  {
    return sub_26124C718(v12, &qword_27FE9F560, &qword_2613A3CB0);
  }

  v37 = sub_2613A122C();
  v38 = sub_2613A1D8C();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 0;
    _os_log_impl(&dword_261243000, v37, v38, "failed to decode PINAnalyticsData", v39, 2u);
    MEMORY[0x266701350](v39, -1, -1);
  }

  return (*(v25 + 8))(v12, v24);
}

uint64_t sub_261326EDC()
{
  v1 = v0;
  v2 = v0[3];
  v3 = *(v2 + 64);
  v4 = *(v2 + 72);

  v5 = sub_26125B314(v3, v4);

  if (v5)
  {
    v7 = (*(*v5 + 376))(result);
    if (v7)
    {
      sub_2612BAE60(v7);

      sub_2612BB0C0(v10);
      if (v11)
      {
        v12[0] = v10[0];
        v12[1] = v10[1];
        v12[2] = v11;
        v8 = v1[7];
        v9 = v1[8];
        __swift_project_boxed_opaque_existential_1(v1 + 4, v8);
        (*(v9 + 120))(v12, v8, v9);

        return sub_2612A0E50(v12);
      }

      else
      {

        return sub_26124C718(v10, &qword_27FE9F8D0, &unk_2613AC6E0);
      }
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_26132704C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[3];

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 4);
  v3 = v0[9];

  return swift_deallocClassInstance();
}

uint64_t sub_26132709C()
{
  v2 = v0[4];
  v3 = v0[5];
  v5 = v0[6];
  v4 = v0[7];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_261262AA4;

  return sub_2613258E8(v6, v7, v8, v2, v3, v5, v4);
}

uint64_t sub_261327198(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2613271E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 48);
  v10 = *(v4 + 52);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  v12 = *(**sub_2612C11DC() + 112);

  v12(v13);

  v14 = OBJC_IVAR____TtC21ProximityReaderDaemon11SessionTask_progressContinuation;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0688, &qword_2613ACB40);
  (*(*(v15 - 8) + 56))(v11 + v14, 1, 1, v15);
  v16 = OBJC_IVAR____TtC21ProximityReaderDaemon11SessionTask_resultContinuation;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0690, &qword_2613ACB48);
  (*(*(v17 - 8) + 56))(v11 + v16, 1, 1, v17);
  v18 = v11 + OBJC_IVAR____TtC21ProximityReaderDaemon11SessionTask_cachedResult;
  *v18 = 0u;
  *(v18 + 16) = 0u;
  *(v18 + 32) = 0u;
  *(v18 + 48) = 0;
  *(v18 + 56) = -1;
  *(v11 + 24) = a1;
  v19 = OBJC_IVAR____TtC21ProximityReaderDaemon11SessionTask_sessionType;
  v20 = sub_26139FC1C();
  (*(*(v20 - 8) + 32))(v11 + v19, a2, v20);
  *(v11 + OBJC_IVAR____TtC21ProximityReaderDaemon11SessionTask_serviceId) = a4;
  *(v11 + OBJC_IVAR____TtC21ProximityReaderDaemon11SessionTask_analytics) = a3;
  return v11;
}

uint64_t sub_2613273C8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v29 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0698, &qword_2613ACB50);
  v27 = *(v3 - 8);
  v28 = v3;
  v4 = *(v27 + 64);
  MEMORY[0x28223BE20](v3);
  v26 = &v23 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0688, &qword_2613ACB40);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v24 = &v23 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA06A0, &unk_2613ACB58);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v23 - v15;
  v17 = OBJC_IVAR____TtC21ProximityReaderDaemon11SessionTask_progressContinuation;
  swift_beginAccess();
  sub_26125A870(v2 + v17, v16, &qword_27FEA06A0, &unk_2613ACB58);
  v25 = v7;
  v18 = *(v7 + 48);
  v19 = v18(v16, 1, v6);
  sub_26124C718(v16, &qword_27FEA06A0, &unk_2613ACB58);
  if (v19 != 1)
  {
    sub_26125A870(v2 + v17, v14, &qword_27FEA06A0, &unk_2613ACB58);
    if (v18(v14, 1, v6))
    {
      sub_26124C718(v14, &qword_27FEA06A0, &unk_2613ACB58);
    }

    else
    {
      v21 = v24;
      v20 = v25;
      (*(v25 + 16))(v24, v14, v6);
      sub_26124C718(v14, &qword_27FEA06A0, &unk_2613ACB58);
      sub_2613A1C3C();
      (*(v20 + 8))(v21, v6);
    }
  }

  (*(v27 + 104))(v26, *MEMORY[0x277D85778], v28);
  return sub_2613A1C7C();
}

uint64_t sub_261327704(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA06A0, &unk_2613ACB58);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v14 - v6;
  v8 = *(a2 + OBJC_IVAR____TtC21ProximityReaderDaemon11SessionTask_cachedResult + 56);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0688, &qword_2613ACB40);
  if (v8 != 255)
  {
    return sub_2613A1C3C();
  }

  v11 = *(v9 - 8);
  v12 = v9;
  (*(v11 + 16))(v7, a1, v9);
  (*(v11 + 56))(v7, 0, 1, v12);
  v13 = OBJC_IVAR____TtC21ProximityReaderDaemon11SessionTask_progressContinuation;
  swift_beginAccess();
  sub_26125C010(v7, a2 + v13, &qword_27FEA06A0, &unk_2613ACB58);
  return swift_endAccess();
}

uint64_t sub_261327890(uint64_t a1)
{
  v2[29] = a1;
  v2[30] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0690, &qword_2613ACB48);
  v2[31] = v3;
  v4 = *(v3 - 8);
  v2[32] = v4;
  v5 = *(v4 + 64) + 15;
  v2[33] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA06A8, &unk_2613ACB68) - 8) + 64) + 15;
  v2[34] = swift_task_alloc();
  v2[35] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2613279A0);
}

uint64_t sub_2613279A0()
{
  v1 = *(v0 + 240);
  v2 = (v1 + OBJC_IVAR____TtC21ProximityReaderDaemon11SessionTask_cachedResult);
  v4 = *(v1 + OBJC_IVAR____TtC21ProximityReaderDaemon11SessionTask_cachedResult + 16);
  v3 = *(v1 + OBJC_IVAR____TtC21ProximityReaderDaemon11SessionTask_cachedResult + 32);
  v5 = *(v1 + OBJC_IVAR____TtC21ProximityReaderDaemon11SessionTask_cachedResult);
  *(v0 + 57) = *(v1 + OBJC_IVAR____TtC21ProximityReaderDaemon11SessionTask_cachedResult + 41);
  *(v0 + 32) = v4;
  *(v0 + 48) = v3;
  *(v0 + 16) = v5;
  v6 = *(v0 + 72);
  if (v6 == 255)
  {
    v16 = *(v0 + 280);
    v17 = *(v0 + 248);
    v18 = *(v0 + 256);
    v19 = OBJC_IVAR____TtC21ProximityReaderDaemon11SessionTask_resultContinuation;
    swift_beginAccess();
    sub_26125A870(v1 + v19, v16, &qword_27FEA06A8, &unk_2613ACB68);
    v20 = *(v18 + 48);
    LODWORD(v17) = v20(v16, 1, v17);
    sub_26124C718(v16, &qword_27FEA06A8, &unk_2613ACB68);
    if (v17 != 1)
    {
      v21 = *(v0 + 272);
      v22 = *(v0 + 248);
      sub_26125A870(v1 + v19, v21, &qword_27FEA06A8, &unk_2613ACB68);
      v23 = v20(v21, 1, v22);
      v24 = *(v0 + 272);
      if (v23)
      {
        sub_26124C718(*(v0 + 272), &qword_27FEA06A8, &unk_2613ACB68);
      }

      else
      {
        v26 = *(v0 + 256);
        v25 = *(v0 + 264);
        v27 = *(v0 + 248);
        (*(v26 + 16))(v25, *(v0 + 272), v27);
        sub_26124C718(v24, &qword_27FEA06A8, &unk_2613ACB68);
        v28 = objc_allocWithZone(sub_26139F2CC());
        *(v0 + 144) = sub_26139F2DC();
        *(v0 + 200) = 1;
        sub_2613A1BDC();
        (*(v26 + 8))(v25, v27);
      }
    }

    v29 = *(MEMORY[0x277D859E0] + 4);
    v30 = swift_task_alloc();
    *(v0 + 288) = v30;
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0630, &unk_2613ACAB0);
    *v30 = v0;
    v30[1] = sub_261327CEC;
    v32 = *(v0 + 232);
    v33 = *(v0 + 240);

    return MEMORY[0x2822007B8](v32, 0, 0, 0x6C75736552746567, 0xEB00000000292874, sub_261327FB0, v33, v31);
  }

  else
  {
    v7 = *(v0 + 232);
    v8 = *v2;
    v9 = v2[1];
    v10 = v2[2];
    *(v7 + 48) = *(v2 + 6);
    *(v7 + 16) = v9;
    *(v7 + 32) = v10;
    *v7 = v8;
    *(v7 + 56) = v6;
    v11 = *(v0 + 272);
    v12 = *(v0 + 280);
    v13 = *(v0 + 264);
    sub_26125A870(v0 + 16, v0 + 80, &qword_27FEA06B0, qword_2613ACB78);

    v14 = *(v0 + 8);

    return v14();
  }
}

uint64_t sub_261327CEC()
{
  v1 = *v0;
  v2 = *(*v0 + 288);
  v3 = *v0;

  v4 = v1[35];
  v5 = v1[34];
  v6 = v1[33];
  sub_26125A870((v1 + 2), (v1 + 10), &qword_27FEA06B0, qword_2613ACB78);

  v7 = *(v3 + 8);

  return v7();
}

uint64_t sub_261327E60(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA06A8, &unk_2613ACB68);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0690, &qword_2613ACB48);
  v9 = *(v8 - 8);
  (*(v9 + 16))(v7, a1, v8);
  (*(v9 + 56))(v7, 0, 1, v8);
  v10 = OBJC_IVAR____TtC21ProximityReaderDaemon11SessionTask_resultContinuation;
  swift_beginAccess();
  sub_26125C010(v7, a2 + v10, &qword_27FEA06A8, &unk_2613ACB68);
  return swift_endAccess();
}

uint64_t sub_261327FD0()
{
  v1[54] = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0) - 8) + 64) + 15;
  v1[55] = swift_task_alloc();
  v1[56] = swift_task_alloc();
  v1[57] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0690, &qword_2613ACB48);
  v1[58] = v3;
  v4 = *(v3 - 8);
  v1[59] = v4;
  v5 = *(v4 + 64) + 15;
  v1[60] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA06A8, &unk_2613ACB68) - 8) + 64) + 15;
  v1[61] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0688, &qword_2613ACB40);
  v1[62] = v7;
  v8 = *(v7 - 8);
  v1[63] = v8;
  v9 = *(v8 + 64) + 15;
  v1[64] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA06A0, &unk_2613ACB58) - 8) + 64) + 15;
  v1[65] = swift_task_alloc();
  v1[66] = swift_task_alloc();
  v11 = OBJC_IVAR____TtC21ProximityReaderDaemon11SessionTask_sessionType;
  v12 = swift_task_alloc();
  v1[67] = v12;
  *v12 = v1;
  v12[1] = sub_261328210;

  return sub_26132A374((v1 + 34), v0 + v11);
}

uint64_t sub_261328210()
{
  v2 = *(*v1 + 536);
  v5 = *v1;
  *(*v1 + 544) = v0;

  if (v0)
  {
    v3 = sub_2613286D8;
  }

  else
  {
    v3 = sub_261328324;
  }

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_261328324()
{
  v1 = *(v0 + 288);
  *(v0 + 16) = *(v0 + 272);
  *(v0 + 32) = v1;
  *(v0 + 64) = *(v0 + 320);
  *(v0 + 48) = *(v0 + 304);
  *(v0 + 552) = 0;
  *(v0 + 72) = 0;
  v2 = *(v0 + 528);
  v3 = *(v0 + 496);
  v4 = *(v0 + 504);
  v5 = *(v0 + 432);
  v6 = (v5 + OBJC_IVAR____TtC21ProximityReaderDaemon11SessionTask_cachedResult);
  v8 = *(v5 + OBJC_IVAR____TtC21ProximityReaderDaemon11SessionTask_cachedResult + 16);
  v7 = *(v5 + OBJC_IVAR____TtC21ProximityReaderDaemon11SessionTask_cachedResult + 32);
  v9 = *(v5 + OBJC_IVAR____TtC21ProximityReaderDaemon11SessionTask_cachedResult);
  *(v0 + 121) = *(v5 + OBJC_IVAR____TtC21ProximityReaderDaemon11SessionTask_cachedResult + 41);
  *(v0 + 80) = v9;
  *(v0 + 96) = v8;
  *(v0 + 112) = v7;
  v10 = *(v0 + 16);
  v11 = *(v0 + 32);
  v12 = *(v0 + 48);
  *(v6 + 41) = *(v0 + 57);
  v6[1] = v11;
  v6[2] = v12;
  *v6 = v10;
  sub_26125A870(v0 + 16, v0 + 144, &qword_27FEA0630, &unk_2613ACAB0);
  sub_26124C718(v0 + 80, &qword_27FEA06B0, qword_2613ACB78);
  v13 = OBJC_IVAR____TtC21ProximityReaderDaemon11SessionTask_progressContinuation;
  swift_beginAccess();
  sub_26125A870(v5 + v13, v2, &qword_27FEA06A0, &unk_2613ACB58);
  v14 = (*(v4 + 48))(v2, 1, v3);
  v15 = *(v0 + 528);
  if (v14)
  {
    sub_26124C718(*(v0 + 528), &qword_27FEA06A0, &unk_2613ACB58);
  }

  else
  {
    v17 = *(v0 + 504);
    v16 = *(v0 + 512);
    v18 = *(v0 + 496);
    (*(v17 + 16))(v16, *(v0 + 528), v18);
    sub_26124C718(v15, &qword_27FEA06A0, &unk_2613ACB58);
    sub_2613A1C3C();
    (*(v17 + 8))(v16, v18);
  }

  v19 = *(v0 + 520);
  v20 = *(v0 + 488);
  v21 = *(v0 + 464);
  v22 = *(v0 + 472);
  v23 = *(v0 + 432);
  (*(*(v0 + 504) + 56))(v19, 1, 1, *(v0 + 496));
  swift_beginAccess();
  sub_26125C010(v19, v5 + v13, &qword_27FEA06A0, &unk_2613ACB58);
  swift_endAccess();
  v24 = OBJC_IVAR____TtC21ProximityReaderDaemon11SessionTask_resultContinuation;
  swift_beginAccess();
  sub_26125A870(v23 + v24, v20, &qword_27FEA06A8, &unk_2613ACB68);
  v25 = (*(v22 + 48))(v20, 1, v21);
  v26 = *(v0 + 488);
  if (v25)
  {
    sub_26124C718(v0 + 16, &qword_27FEA0630, &unk_2613ACAB0);
    sub_26124C718(v26, &qword_27FEA06A8, &unk_2613ACB68);
  }

  else
  {
    v28 = *(v0 + 472);
    v27 = *(v0 + 480);
    v29 = *(v0 + 464);
    (*(v28 + 16))(v27, *(v0 + 488), v29);
    sub_26124C718(v26, &qword_27FEA06A8, &unk_2613ACB68);
    v30 = *(v0 + 32);
    *(v0 + 208) = *(v0 + 16);
    *(v0 + 224) = v30;
    *(v0 + 240) = *(v0 + 48);
    *(v0 + 249) = *(v0 + 57);
    sub_2613A1BDC();
    (*(v28 + 8))(v27, v29);
  }

  v31 = *(v0 + 528);
  v32 = *(v0 + 520);
  v33 = *(v0 + 512);
  v35 = *(v0 + 480);
  v34 = *(v0 + 488);
  v37 = *(v0 + 448);
  v36 = *(v0 + 456);
  v38 = *(v0 + 440);

  v39 = *(v0 + 8);

  return v39();
}

uint64_t sub_2613286D8()
{
  v99 = v0;
  v1 = *(v0 + 544);
  *(v0 + 400) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F650, &qword_2613A57C0);
  v3 = sub_26139F2CC();
  if (swift_dynamicCast())
  {
    v4 = *(v0 + 456);
    v5 = *(v0 + 408);
    v6 = sub_26129B780();
    sub_26125A870(v6, v4, &qword_27FE9F560, &qword_2613A3CB0);
    v7 = sub_2613A124C();
    v8 = *(v7 - 8);
    if ((*(v8 + 48))(v4, 1, v7) == 1)
    {
      v9 = *(v0 + 456);

      sub_26124C718(v9, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v16 = *(v0 + 456);
      v17 = v5;
      v18 = sub_2613A122C();
      v19 = sub_2613A1D8C();

      v20 = os_log_type_enabled(v18, v19);
      v21 = *(v0 + 544);
      if (v20)
      {
        v97 = *(v0 + 544);
        v22 = swift_slowAlloc();
        v96 = swift_slowAlloc();
        v98 = v96;
        *v22 = 136315138;
        v23 = v17;
        v24 = [v23 description];
        v25 = sub_2613A18CC();
        v95 = v19;
        v26 = v5;
        v28 = v27;

        v29 = sub_26124C11C(v25, v28, &v98);
        v5 = v26;

        *(v22 + 4) = v29;
        _os_log_impl(&dword_261243000, v18, v95, "[SessionTask] error creating session: [ %s ]", v22, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v96);
        MEMORY[0x266701350](v96, -1, -1);
        MEMORY[0x266701350](v22, -1, -1);
        v30 = v97;
      }

      else
      {
        v30 = *(v0 + 544);
      }

      (*(v8 + 8))(*(v0 + 456), v7);
    }

    LOBYTE(v98) = 1;
    *(v0 + 16) = v5;
  }

  else
  {
    v10 = *(v0 + 544);
    *(v0 + 416) = v10;
    v11 = v10;
    if ((swift_dynamicCast() & 1) != 0 && !*(v0 + 73))
    {
      v85 = *(v0 + 448);
      v86 = sub_26129B780();
      sub_26125A870(v86, v85, &qword_27FE9F560, &qword_2613A3CB0);
      v87 = sub_2613A124C();
      v88 = *(v87 - 8);
      if ((*(v88 + 48))(v85, 1, v87) == 1)
      {
        sub_26124C718(*(v0 + 448), &qword_27FE9F560, &qword_2613A3CB0);
      }

      else
      {
        v89 = *(v0 + 448);
        v90 = sub_2613A122C();
        v91 = sub_2613A1D8C();
        if (os_log_type_enabled(v90, v91))
        {
          v92 = swift_slowAlloc();
          *v92 = 0;
          _os_log_impl(&dword_261243000, v90, v91, "[SessionTask] error creating session: [ busy ]", v92, 2u);
          MEMORY[0x266701350](v92, -1, -1);
        }

        v93 = *(v0 + 448);

        (*(v88 + 8))(v93, v87);
      }

      v43 = *(v0 + 544);
      v94 = objc_allocWithZone(v3);
    }

    else
    {
      v12 = *(v0 + 440);
      v13 = sub_26129B5FC();
      sub_26125A870(v13, v12, &qword_27FE9F560, &qword_2613A3CB0);
      v14 = sub_2613A124C();
      v15 = *(v14 - 8);
      if ((*(v15 + 48))(v12, 1, v14) == 1)
      {
        sub_26124C718(*(v0 + 440), &qword_27FE9F560, &qword_2613A3CB0);
      }

      else
      {
        v31 = *(v0 + 544);
        v32 = *(v0 + 440);
        v33 = v31;
        v34 = sub_2613A122C();
        v35 = sub_2613A1D8C();

        if (os_log_type_enabled(v34, v35))
        {
          v36 = *(v0 + 544);
          v37 = swift_slowAlloc();
          v38 = swift_slowAlloc();
          v98 = v38;
          *v37 = 136315138;
          *(v0 + 424) = v36;
          v39 = v36;
          v40 = sub_2613A195C();
          v42 = sub_26124C11C(v40, v41, &v98);

          *(v37 + 4) = v42;
          _os_log_impl(&dword_261243000, v34, v35, "[SessionTask] error creating session, unexpected error: [ %s ]", v37, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v38);
          MEMORY[0x266701350](v38, -1, -1);
          MEMORY[0x266701350](v37, -1, -1);
        }

        (*(v15 + 8))(*(v0 + 440), v14);
      }

      v43 = *(v0 + 544);
      v44 = objc_allocWithZone(v3);
    }

    v45 = sub_26139F2DC();

    LOBYTE(v98) = 1;
    *(v0 + 16) = v45;
  }

  *(v0 + 72) = 1;
  v46 = *(v0 + 528);
  v47 = *(v0 + 496);
  v48 = *(v0 + 504);
  v49 = *(v0 + 432);
  v50 = (v49 + OBJC_IVAR____TtC21ProximityReaderDaemon11SessionTask_cachedResult);
  v52 = *(v49 + OBJC_IVAR____TtC21ProximityReaderDaemon11SessionTask_cachedResult + 16);
  v51 = *(v49 + OBJC_IVAR____TtC21ProximityReaderDaemon11SessionTask_cachedResult + 32);
  v53 = *(v49 + OBJC_IVAR____TtC21ProximityReaderDaemon11SessionTask_cachedResult);
  *(v0 + 121) = *(v49 + OBJC_IVAR____TtC21ProximityReaderDaemon11SessionTask_cachedResult + 41);
  *(v0 + 96) = v52;
  *(v0 + 112) = v51;
  *(v0 + 80) = v53;
  v54 = *(v0 + 16);
  v55 = *(v0 + 32);
  v56 = *(v0 + 48);
  *(v50 + 41) = *(v0 + 57);
  v50[1] = v55;
  v50[2] = v56;
  *v50 = v54;
  sub_26125A870(v0 + 16, v0 + 144, &qword_27FEA0630, &unk_2613ACAB0);
  sub_26124C718(v0 + 80, &qword_27FEA06B0, qword_2613ACB78);
  v57 = OBJC_IVAR____TtC21ProximityReaderDaemon11SessionTask_progressContinuation;
  swift_beginAccess();
  sub_26125A870(v49 + v57, v46, &qword_27FEA06A0, &unk_2613ACB58);
  v58 = (*(v48 + 48))(v46, 1, v47);
  v59 = *(v0 + 528);
  if (v58)
  {
    sub_26124C718(*(v0 + 528), &qword_27FEA06A0, &unk_2613ACB58);
  }

  else
  {
    v61 = *(v0 + 504);
    v60 = *(v0 + 512);
    v62 = *(v0 + 496);
    (*(v61 + 16))(v60, *(v0 + 528), v62);
    sub_26124C718(v59, &qword_27FEA06A0, &unk_2613ACB58);
    sub_2613A1C3C();
    (*(v61 + 8))(v60, v62);
  }

  v63 = *(v0 + 520);
  v64 = *(v0 + 488);
  v65 = *(v0 + 464);
  v66 = *(v0 + 472);
  v67 = *(v0 + 432);
  (*(*(v0 + 504) + 56))(v63, 1, 1, *(v0 + 496));
  swift_beginAccess();
  sub_26125C010(v63, v49 + v57, &qword_27FEA06A0, &unk_2613ACB58);
  swift_endAccess();
  v68 = OBJC_IVAR____TtC21ProximityReaderDaemon11SessionTask_resultContinuation;
  swift_beginAccess();
  sub_26125A870(v67 + v68, v64, &qword_27FEA06A8, &unk_2613ACB68);
  v69 = (*(v66 + 48))(v64, 1, v65);
  v70 = *(v0 + 488);
  if (v69)
  {
    sub_26124C718(v0 + 16, &qword_27FEA0630, &unk_2613ACAB0);
    sub_26124C718(v70, &qword_27FEA06A8, &unk_2613ACB68);
  }

  else
  {
    v72 = *(v0 + 472);
    v71 = *(v0 + 480);
    v73 = *(v0 + 464);
    (*(v72 + 16))(v71, *(v0 + 488), v73);
    sub_26124C718(v70, &qword_27FEA06A8, &unk_2613ACB68);
    v74 = *(v0 + 32);
    *(v0 + 208) = *(v0 + 16);
    *(v0 + 224) = v74;
    *(v0 + 240) = *(v0 + 48);
    *(v0 + 249) = *(v0 + 57);
    sub_2613A1BDC();
    (*(v72 + 8))(v71, v73);
  }

  v75 = *(v0 + 528);
  v76 = *(v0 + 520);
  v77 = *(v0 + 512);
  v79 = *(v0 + 480);
  v78 = *(v0 + 488);
  v81 = *(v0 + 448);
  v80 = *(v0 + 456);
  v82 = *(v0 + 440);

  v83 = *(v0 + 8);

  return v83();
}

uint64_t sub_26132900C(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 112) = a4;
  *(v5 + 120) = v4;
  *(v5 + 304) = a2;
  *(v5 + 96) = a1;
  *(v5 + 104) = a3;
  v6 = sub_26139FC1C();
  *(v5 + 128) = v6;
  v7 = *(v6 - 8);
  *(v5 + 136) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 144) = swift_task_alloc();
  *(v5 + 152) = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0) - 8) + 64) + 15;
  *(v5 + 160) = swift_task_alloc();
  *(v5 + 168) = swift_task_alloc();
  *(v5 + 176) = swift_task_alloc();
  *(v5 + 184) = swift_task_alloc();
  *(v5 + 192) = swift_task_alloc();
  *(v5 + 200) = swift_task_alloc();
  *(v5 + 208) = swift_task_alloc();
  *(v5 + 216) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26132916C);
}

uint64_t sub_26132916C()
{
  v1 = *(v0 + 216);
  v2 = sub_26129B5FC();
  *(v0 + 224) = v2;
  sub_26125A870(v2, v1, &qword_27FE9F560, &qword_2613A3CB0);
  v3 = sub_2613A124C();
  *(v0 + 232) = v3;
  v4 = *(v3 - 8);
  *(v0 + 240) = v4;
  v5 = *(v4 + 48);
  *(v0 + 248) = v5;
  *(v0 + 256) = (v4 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v6 = v5(v1, 1, v3);
  v7 = *(v0 + 216);
  if (v6 == 1)
  {
    sub_26124C718(*(v0 + 216), &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v92 = *(v0 + 120);
    v8 = sub_26125A798();
    v9 = sub_261291AA8();
    sub_26129BC3C(v8 & 1, v92, 0xD000000000000036, 0x80000002613BD240, v9, v10);

    (*(v4 + 8))(v7, v3);
  }

  v11 = *(*(v0 + 120) + 24);
  v12 = *(v11 + 64);
  v13 = *(v11 + 72);

  v14 = sub_26125B314(v12, v13);
  *(v0 + 264) = v14;

  if (!v14)
  {
    goto LABEL_13;
  }

  v16 = (*(*v14 + 376))(v15);
  *(v0 + 272) = v16;
  if (!v16)
  {

LABEL_13:
    v32 = *(v0 + 176);
    sub_26125A870(v2, v32, &qword_27FE9F560, &qword_2613A3CB0);
    if (v5(v32, 1, v3) == 1)
    {
      sub_26124C718(*(v0 + 176), &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v33 = *(v0 + 176);
      v34 = sub_2613A122C();
      v35 = sub_2613A1D8C();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        _os_log_impl(&dword_261243000, v34, v35, "[SessionTask] previous session not found", v36, 2u);
        MEMORY[0x266701350](v36, -1, -1);
      }

      v37 = *(v0 + 176);

      (*(v4 + 8))(v37, v3);
    }

    v38 = *(v0 + 96);
    v39 = 4;
    goto LABEL_19;
  }

  v89 = v2;
  v90 = v5;
  v91 = v3;
  v93 = v16;
  v88 = v4;
  v17 = *(v0 + 152);
  v18 = *(v0 + 128);
  v19 = *(v0 + 136);
  v20 = *(v0 + 120);
  v21 = OBJC_IVAR____TtC21ProximityReaderDaemon11SessionTask_sessionType;
  (*(v19 + 16))(v17, v20 + OBJC_IVAR____TtC21ProximityReaderDaemon11SessionTask_sessionType, v18);
  v22 = (*(v19 + 88))(v17, v18);
  v23 = *(v0 + 152);
  if (v22 != *MEMORY[0x277D43908])
  {
    v53 = *(v0 + 136);
    v52 = *(v0 + 144);
    v54 = *(v0 + 128);
    v55 = *(v53 + 8);
    v55(v23, v54);
    (*(v53 + 104))(v52, *MEMORY[0x277D43900], v54);
    v56 = MEMORY[0x2666FE080](v20 + v21, v52);
    v55(v52, v54);
    if (v56)
    {
      v57 = *(v0 + 184);
      sub_26125A870(v89, v57, &qword_27FE9F560, &qword_2613A3CB0);
      if (v90(v57, 1, v3) == 1)
      {
        sub_26124C718(*(v0 + 184), &qword_27FE9F560, &qword_2613A3CB0);
      }

      else
      {
        v74 = *(v0 + 184);
        v75 = sub_2613A122C();
        v76 = sub_2613A1D9C();
        if (os_log_type_enabled(v75, v76))
        {
          v77 = swift_slowAlloc();
          *v77 = 0;
          _os_log_impl(&dword_261243000, v75, v76, "[SessionTask] SAF is active, no refresh is needed", v77, 2u);
          MEMORY[0x266701350](v77, -1, -1);
        }

        v78 = *(v0 + 184);

        (*(v88 + 8))(v78, v91);
      }

      v79 = *(v0 + 96);
      *v79 = v14;
      *(v79 + 8) = v93;
      *(v79 + 16) = 0u;
      *(v79 + 32) = 0u;
      *(v79 + 48) = 0;
      *(v79 + 56) = 0;
    }

    else
    {
      v59 = *(v0 + 96);

      *v59 = 4;
      *(v59 + 56) = 1;
    }

    goto LABEL_20;
  }

  v24 = (*(*(v0 + 136) + 96))(*(v0 + 152), *(v0 + 128));
  v25 = *v23;
  v26 = v23[1];
  *(v0 + 280) = v26;
  if (((*(*v93 + 200))(v24) & 1) == 0)
  {
    v58 = *(v0 + 96);

    *v58 = v14;
    *(v58 + 8) = v93;
    *(v58 + 16) = 0u;
    *(v58 + 32) = 0u;
    *(v58 + 48) = 0;
    *(v58 + 56) = 0;
    goto LABEL_20;
  }

  v27 = *(v0 + 120);
  v28 = *(v0 + 104);
  v29 = sub_261332D38(v93);
  if (v28)
  {
    v30 = *(v0 + 112);
    (*(v0 + 104))(v29);
  }

  v31 = *(v0 + 208);
  sub_26125A870(v89, v31, &qword_27FE9F560, &qword_2613A3CB0);
  if (v90(v31, 1, v91) == 1)
  {
    sub_26124C718(*(v0 + 208), &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v60 = *(v0 + 208);
    v61 = sub_2613A122C();
    v62 = sub_2613A1D9C();
    if (os_log_type_enabled(v61, v62))
    {
      v87 = v25;
      v63 = v61;
      v64 = swift_slowAlloc();
      *v64 = 0;
      _os_log_impl(&dword_261243000, v63, v62, "[SessionTask] refreshing...", v64, 2u);
      v65 = v64;
      v61 = v63;
      v25 = v87;
      MEMORY[0x266701350](v65, -1, -1);
    }

    v66 = *(v0 + 208);

    (*(v88 + 8))(v66, v91);
  }

  v67 = *(v0 + 120);
  v68 = *(v11 + 64);
  v69 = *(v11 + 72);

  sub_26125B3FC(v68, v69);

  if (sub_26132EFD0(v70))
  {
    v71 = swift_task_alloc();
    *(v0 + 288) = v71;
    *v71 = v0;
    v71[1] = sub_261329AC4;
    v72 = *(v0 + 120);
    v73 = *(v0 + 304);

    return sub_26132F2D8(v0 + 16, v25, v26, 1, v73, v14);
  }

  v80 = *(v0 + 200);

  sub_26125A870(v89, v80, &qword_27FE9F560, &qword_2613A3CB0);
  v81 = v90(v80, 1, v91);
  v82 = *(v0 + 200);
  if (v81 == 1)
  {

    sub_26124C718(v82, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v83 = sub_2613A122C();
    v84 = sub_2613A1D8C();
    if (os_log_type_enabled(v83, v84))
    {
      v85 = swift_slowAlloc();
      *v85 = 0;
      _os_log_impl(&dword_261243000, v83, v84, "[SessionTask] session refresh failed, invalid reader", v85, 2u);
      MEMORY[0x266701350](v85, -1, -1);
    }

    v86 = *(v0 + 200);

    (*(v88 + 8))(v86, v91);
  }

  v38 = *(v0 + 96);
  v39 = 5;
LABEL_19:
  *v38 = v39;
  *(v38 + 56) = 1;
LABEL_20:
  v41 = *(v0 + 208);
  v40 = *(v0 + 216);
  v43 = *(v0 + 192);
  v42 = *(v0 + 200);
  v45 = *(v0 + 176);
  v44 = *(v0 + 184);
  v47 = *(v0 + 160);
  v46 = *(v0 + 168);
  v49 = *(v0 + 144);
  v48 = *(v0 + 152);

  v50 = *(v0 + 8);

  return v50();
}

uint64_t sub_261329AC4()
{
  v2 = *(*v1 + 288);
  v3 = *(*v1 + 280);
  v4 = *(*v1 + 264);
  v7 = *v1;
  *(*v1 + 296) = v0;

  if (v0)
  {
    v5 = sub_261329E3C;
  }

  else
  {
    v5 = sub_261329C18;
  }

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_261329C18()
{
  v2 = *(v0 + 248);
  v1 = *(v0 + 256);
  v4 = *(v0 + 224);
  v3 = *(v0 + 232);
  v5 = *(v0 + 192);
  v6 = *(v0 + 120);
  v8 = *(v0 + 16);
  v7 = *(v0 + 24);
  v35 = *(v0 + 48);
  v36 = *(v0 + 32);
  v9 = *(v0 + 64);
  sub_261332ADC(v7);
  sub_26125A870(v4, v5, &qword_27FE9F560, &qword_2613A3CB0);
  if (v2(v5, 1, v3) == 1)
  {
    v11 = *(v0 + 264);
    v10 = *(v0 + 272);
    v12 = *(v0 + 192);

    sub_26124C718(v12, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v13 = *(v0 + 192);
    v14 = sub_2613A122C();
    v15 = sub_2613A1D9C();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_261243000, v14, v15, "[SessionTask] session refreshed", v16, 2u);
      MEMORY[0x266701350](v16, -1, -1);
    }

    v18 = *(v0 + 264);
    v17 = *(v0 + 272);
    v19 = *(v0 + 232);
    v20 = *(v0 + 240);
    v21 = *(v0 + 192);

    (*(v20 + 8))(v21, v19);
  }

  v22 = *(v0 + 96);
  *v22 = v8;
  *(v22 + 8) = v7;
  *(v22 + 16) = v36;
  *(v22 + 32) = v35;
  *(v22 + 48) = v9;
  *(v22 + 56) = 0;
  v24 = *(v0 + 208);
  v23 = *(v0 + 216);
  v26 = *(v0 + 192);
  v25 = *(v0 + 200);
  v28 = *(v0 + 176);
  v27 = *(v0 + 184);
  v30 = *(v0 + 160);
  v29 = *(v0 + 168);
  v32 = *(v0 + 144);
  v31 = *(v0 + 152);

  v33 = *(v0 + 8);

  return v33();
}

uint64_t sub_261329E3C()
{
  v64 = v0;
  v1 = *(v0 + 296);
  *(v0 + 72) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F650, &qword_2613A57C0);
  sub_26139F2CC();
  if (swift_dynamicCast())
  {
    v4 = *(v0 + 248);
    v3 = *(v0 + 256);
    v6 = *(v0 + 224);
    v5 = *(v0 + 232);
    v7 = *(v0 + 168);

    v8 = *(v0 + 80);
    sub_26125A870(v6, v7, &qword_27FE9F560, &qword_2613A3CB0);
    if (v4(v7, 1, v5) == 1)
    {
      sub_26124C718(*(v0 + 168), &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v19 = v8;
      v20 = sub_2613A122C();
      v21 = sub_2613A1D8C();

      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        v63 = v62;
        *v22 = 136315138;
        v23 = v19;
        v24 = [v23 description];
        v25 = sub_2613A18CC();
        v27 = v26;

        v28 = sub_26124C11C(v25, v27, &v63);

        *(v22 + 4) = v28;
        _os_log_impl(&dword_261243000, v20, v21, "[SessionTask] session refresh failed: [ %s ]", v22, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v62);
        MEMORY[0x266701350](v62, -1, -1);
        MEMORY[0x266701350](v22, -1, -1);
      }

      (*(*(v0 + 240) + 8))(*(v0 + 168), *(v0 + 232));
    }

    v30 = *(v0 + 264);
    v29 = *(v0 + 272);
    v31 = *(v0 + 96);
    v32 = sub_26139F2BC();

    v33 = *(v0 + 96);
    if (v32 > 9)
    {
      if (v32 == 10)
      {
        LOBYTE(v63) = 1;
        v34 = 6;
        goto LABEL_24;
      }

      if (v32 == 11)
      {
        LOBYTE(v63) = 1;
        v34 = 19;
        goto LABEL_24;
      }
    }

    else
    {
      if (v32 == 2)
      {
        LOBYTE(v63) = 1;
        v34 = 7;
        goto LABEL_24;
      }

      if (v32 == 3)
      {
        LOBYTE(v63) = 1;
        v34 = 8;
LABEL_24:
        *v33 = v34;
        *(v31 + 56) = 1;

        goto LABEL_25;
      }
    }

    LOBYTE(v63) = 1;
    v34 = 5;
    goto LABEL_24;
  }

  v10 = *(v0 + 248);
  v9 = *(v0 + 256);
  v12 = *(v0 + 224);
  v11 = *(v0 + 232);
  v13 = *(v0 + 160);

  sub_26125A870(v12, v13, &qword_27FE9F560, &qword_2613A3CB0);
  v14 = v10(v13, 1, v11);
  v15 = *(v0 + 296);
  if (v14 == 1)
  {
    v16 = *(v0 + 264);
    v17 = *(v0 + 272);
    v18 = *(v0 + 160);

    sub_26124C718(v18, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v35 = *(v0 + 160);
    v36 = v15;
    v37 = sub_2613A122C();
    v38 = sub_2613A1D8C();

    v39 = os_log_type_enabled(v37, v38);
    v40 = *(v0 + 296);
    v42 = *(v0 + 264);
    v41 = *(v0 + 272);
    if (v39)
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v63 = v44;
      *v43 = 136315138;
      *(v0 + 88) = v40;
      v45 = v40;
      v46 = sub_2613A195C();
      v48 = sub_26124C11C(v46, v47, &v63);

      *(v43 + 4) = v48;
      _os_log_impl(&dword_261243000, v37, v38, "[SessionTask] session refresh failed, unexpected error: [ %s ]", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v44);
      MEMORY[0x266701350](v44, -1, -1);
      MEMORY[0x266701350](v43, -1, -1);
    }

    else
    {
    }

    (*(*(v0 + 240) + 8))(*(v0 + 160), *(v0 + 232));
  }

  v49 = *(v0 + 96);
  LOBYTE(v63) = 1;
  *v49 = 5;
  *(v49 + 56) = 1;
LABEL_25:
  v51 = *(v0 + 208);
  v50 = *(v0 + 216);
  v53 = *(v0 + 192);
  v52 = *(v0 + 200);
  v55 = *(v0 + 176);
  v54 = *(v0 + 184);
  v57 = *(v0 + 160);
  v56 = *(v0 + 168);
  v59 = *(v0 + 144);
  v58 = *(v0 + 152);

  v60 = *(v0 + 8);

  return v60();
}

uint64_t sub_26132A374(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0) - 8) + 64) + 15;
  v3[5] = swift_task_alloc();
  v5 = sub_26139FC1C();
  v3[6] = v5;
  v6 = *(v5 - 8);
  v3[7] = v6;
  v7 = *(v6 + 64) + 15;
  v3[8] = swift_task_alloc();
  v8 = sub_26139F64C();
  v3[9] = v8;
  v9 = *(v8 - 8);
  v3[10] = v9;
  v10 = *(v9 + 64) + 15;
  v3[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26132A4CC);
}

uint64_t sub_26132A4CC()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[4];
  v43 = v0[3];
  sub_26139F3CC();
  sub_26139F5DC();
  v8 = *(v2 + 8);
  v8(v1, v4);
  v9 = *(v7 + 24);
  v10 = *(v9 + 64);
  v11 = *(v9 + 72);

  v12 = sub_26125B314(v10, v11);
  v0[12] = v12;

  sub_26139F3CC();
  sub_26139F5BC();
  v8(v1, v4);
  (*(v6 + 16))(v3, v43, v5);
  v13 = (*(v6 + 88))(v3, v5);
  if (v13 == *MEMORY[0x277D43908])
  {
    v14 = v0[8];
    (*(v0[7] + 96))(v14, v0[6]);
    v15 = *v14;
    v16 = v14[1];
    v0[13] = v16;
    v17 = swift_task_alloc();
    v0[14] = v17;
    *v17 = v0;
    v17[1] = sub_26132A91C;
    v18 = v0[4];
    v19 = v0[2];

    return sub_26132AD04(v19, v12, v15, v16);
  }

  else if (v13 == *MEMORY[0x277D43900])
  {
    v21 = swift_task_alloc();
    v0[16] = v21;
    *v21 = v0;
    v21[1] = sub_26132AAD8;
    v22 = v0[4];
    v23 = v0[2];

    return sub_26132BDC0(v23, v12);
  }

  else
  {
    v24 = v0[5];
    v25 = sub_26129B5FC();
    sub_26125A870(v25, v24, &qword_27FE9F560, &qword_2613A3CB0);
    v26 = sub_2613A124C();
    v27 = *(v26 - 8);
    if ((*(v27 + 48))(v24, 1, v26) == 1)
    {
      sub_26124C718(v0[5], &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v28 = v0[5];
      v29 = sub_2613A122C();
      v30 = sub_2613A1D8C();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_261243000, v29, v30, "[SessionTask] unknown session type", v31, 2u);
        MEMORY[0x266701350](v31, -1, -1);
      }

      v32 = v0[5];

      (*(v27 + 8))(v32, v26);
    }

    v34 = v0[7];
    v33 = v0[8];
    v35 = v0[6];
    v36 = objc_allocWithZone(sub_26139F2CC());
    v37 = sub_26139F2DC();
    sub_2612C5960();
    swift_allocError();
    *v38 = v37;
    swift_willThrow();

    (*(v34 + 8))(v33, v35);
    v39 = v0[11];
    v40 = v0[8];
    v41 = v0[5];

    v42 = v0[1];

    return v42();
  }
}

uint64_t sub_26132A91C()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  v6 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v4 = sub_26132ABEC;
  }

  else
  {
    v4 = sub_26132AA4C;
  }

  return MEMORY[0x2822009F8](v4);
}

uint64_t sub_26132AA4C()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[8];
  v4 = v0[5];

  v5 = v0[1];

  return v5();
}

uint64_t sub_26132AAD8()
{
  v2 = *(*v1 + 128);
  v5 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = sub_26132AC78;
  }

  else
  {
    v3 = sub_261333FEC;
  }

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_26132ABEC()
{
  v1 = v0[12];

  v2 = v0[15];
  v3 = v0[11];
  v4 = v0[8];
  v5 = v0[5];

  v6 = v0[1];

  return v6();
}

uint64_t sub_26132AC78()
{
  v1 = v0[12];

  v2 = v0[17];
  v3 = v0[11];
  v4 = v0[8];
  v5 = v0[5];

  v6 = v0[1];

  return v6();
}

uint64_t sub_26132AD04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[36] = a4;
  v5[37] = v4;
  v5[34] = a2;
  v5[35] = a3;
  v5[33] = a1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0) - 8) + 64) + 15;
  v5[38] = swift_task_alloc();
  v5[39] = swift_task_alloc();
  v5[40] = swift_task_alloc();
  v5[41] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26132ADCC);
}

uint64_t sub_26132ADCC()
{
  v1 = v0[41];
  v2 = sub_26129B5FC();
  v0[42] = v2;
  sub_26125A870(v2, v1, &qword_27FE9F560, &qword_2613A3CB0);
  v3 = sub_2613A124C();
  v0[43] = v3;
  v4 = *(v3 - 8);
  v0[44] = v4;
  v5 = *(v4 + 48);
  v0[45] = v5;
  v0[46] = (v4 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v5(v1, 1, v3) == 1)
  {
    sub_26124C718(v0[41], &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v6 = v0[41];
    v7 = sub_2613A122C();
    v8 = sub_2613A1D9C();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_261243000, v7, v8, "[SessionTask] preparing online session", v9, 2u);
      MEMORY[0x266701350](v9, -1, -1);
    }

    v10 = v0[41];

    (*(v4 + 8))(v10, v3);
  }

  v11 = swift_task_alloc();
  v0[47] = v11;
  *v11 = v0;
  v11[1] = sub_26132AFB4;
  v12 = v0[37];
  v13 = v0[34];

  return sub_26132D504(v13);
}