uint64_t sub_261362FF0()
{
  v2 = *v1;
  v3 = *(*v1 + 208);
  v4 = *v1;
  *(*v1 + 216) = v0;

  v5 = v2[25];
  (*(v2[8] + 8))(v2[9], v2[7]);

  if (v0)
  {
    v6 = sub_261363B50;
  }

  else
  {
    v6 = sub_261363174;
  }

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_261363174()
{
  if (*(v0 + 264))
  {
    v2 = *(v0 + 176);
    v1 = *(v0 + 184);
    v3 = *(v0 + 160);
    v4 = *(v0 + 104);
    sub_26125A870(*(v0 + 152), v4, &qword_27FE9F560, &qword_2613A3CB0);
    if (v2(v4, 1, v3) == 1)
    {
      sub_26124C718(*(v0 + 104), &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v11 = *(v0 + 104);
      v12 = sub_2613A122C();
      v13 = sub_2613A1D8C();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&dword_261243000, v12, v13, "Batch already exists", v14, 2u);
        MEMORY[0x266701350](v14, -1, -1);
      }

      v15 = *(v0 + 160);
      v16 = *(v0 + 168);
      v17 = *(v0 + 104);

      (*(v16 + 8))(v17, v15);
    }

    v18 = *(v0 + 192);
    (*(*(v0 + 88) + 104))(*(v0 + 96), *MEMORY[0x277D438B8], *(v0 + 80));
    v19 = objc_allocWithZone(sub_26139FB2C());
    v20 = sub_26139FB3C();
    sub_2613770D8(&qword_27FEA07F0, MEMORY[0x277D438E0]);
    v21 = swift_allocError();
    *v22 = v20;
    swift_willThrow();

    *(v0 + 240) = v21;
    v23 = *(v0 + 40);
    v24 = sub_261372E48(v21, 0xD00000000000002CLL, 0x80000002613BD7D0);
    *(v0 + 248) = v24;
    type metadata accessor for SafMonitorEventDispatcher();
    v25 = *(v23 + OBJC_IVAR____TtC21ProximityReaderDaemon29PaymentReadResultStoreService_paymentContext);
    v26 = OBJC_IVAR____TtC21ProximityReaderDaemon29PaymentReadResultStoreService_cardReaderAdapter;
    v27 = swift_task_alloc();
    *(v0 + 256) = v27;
    *v27 = v0;
    v27[1] = sub_261363898;
    v28 = *(v0 + 32);

    return sub_2612A0064(v25, v23 + v26, v28, v24);
  }

  else
  {
    v5 = *(v0 + 192);
    v6 = *(v0 + 40);
    swift_unknownObjectWeakInit();
    v7 = swift_task_alloc();
    *(v0 + 224) = v7;
    *v7 = v0;
    v7[1] = sub_2613634A4;
    v8 = *(v0 + 32);
    v9 = *(v0 + 40);

    return sub_2613736F4(v5, v8, v9, v0 + 24);
  }
}

uint64_t sub_2613634A4(uint64_t a1)
{
  v3 = *(*v2 + 224);
  v6 = *v2;
  *(*v2 + 232) = a1;

  if (v1)
  {
    v4 = sub_261363720;
  }

  else
  {
    v4 = sub_2613635B8;
  }

  return MEMORY[0x2822009F8](v4);
}

uint64_t sub_2613635B8()
{
  v1 = v0[24];
  v2 = v0[16];
  v3 = v0[17];
  v4 = v0[14];
  v5 = v0[15];
  v6 = v0[12];
  v7 = v0[13];
  v8 = v0[9];
  v9 = v0[6];
  MEMORY[0x266701400](v0 + 3);

  v10 = sub_2613A1C1C();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v3;
  sub_261266800(0, 0, v9, &unk_2613AD250, v11);

  v12 = v0[1];
  v13 = v0[29];

  return v12(v13);
}

uint64_t sub_261363720()
{
  v1 = v0[29];
  v2 = v0[24];
  sub_26139FB2C();
  sub_2613770D8(&qword_27FEA07F0, MEMORY[0x277D438E0]);
  v3 = swift_allocError();
  *v4 = v1;
  MEMORY[0x266701400](v0 + 3);

  v0[30] = v3;
  v5 = v0[5];
  v6 = sub_261372E48(v3, 0xD00000000000002CLL, 0x80000002613BD7D0);
  v0[31] = v6;
  type metadata accessor for SafMonitorEventDispatcher();
  v7 = *(v5 + OBJC_IVAR____TtC21ProximityReaderDaemon29PaymentReadResultStoreService_paymentContext);
  v8 = OBJC_IVAR____TtC21ProximityReaderDaemon29PaymentReadResultStoreService_cardReaderAdapter;
  v9 = swift_task_alloc();
  v0[32] = v9;
  *v9 = v0;
  v9[1] = sub_261363898;
  v10 = v0[4];

  return sub_2612A0064(v7, v5 + v8, v10, v6);
}

uint64_t sub_261363898()
{
  v1 = *(*v0 + 256);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_261363994);
}

uint64_t sub_261363994()
{
  v1 = v0[30];
  v3 = v0[16];
  v2 = v0[17];
  v4 = v0[14];
  v5 = v0[15];
  v6 = v0[13];
  v13 = v0[12];
  v14 = v0[9];
  v7 = v0[6];
  v0[2] = v0[31];
  sub_26139FB2C();
  sub_2613770D8(&qword_27FEA07F0, MEMORY[0x277D438E0]);
  swift_willThrowTypedImpl();

  v8 = sub_2613A1C1C();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v2;
  sub_261266800(0, 0, v7, &unk_2613AD240, v9);

  v10 = v0[1];
  v11 = v0[31];

  return v10(v11);
}

uint64_t sub_261363B50()
{
  v1 = v0[24];

  v2 = v0[27];
  v0[30] = v2;
  v3 = v0[5];
  v4 = sub_261372E48(v2, 0xD00000000000002CLL, 0x80000002613BD7D0);
  v0[31] = v4;
  type metadata accessor for SafMonitorEventDispatcher();
  v5 = *(v3 + OBJC_IVAR____TtC21ProximityReaderDaemon29PaymentReadResultStoreService_paymentContext);
  v6 = OBJC_IVAR____TtC21ProximityReaderDaemon29PaymentReadResultStoreService_cardReaderAdapter;
  v7 = swift_task_alloc();
  v0[32] = v7;
  *v7 = v0;
  v7[1] = sub_261363898;
  v8 = v0[4];

  return sub_2612A0064(v5, v3 + v6, v8, v4);
}

uint64_t sub_261363C5C(uint64_t a1, uint64_t a2)
{
  v2[32] = a1;
  v2[33] = a2;
  v3 = sub_26139FAAC();
  v2[34] = v3;
  v4 = *(v3 - 8);
  v2[35] = v4;
  v5 = *(v4 + 64) + 15;
  v2[36] = swift_task_alloc();
  v6 = sub_26139FB0C();
  v2[37] = v6;
  v7 = *(v6 - 8);
  v2[38] = v7;
  v8 = *(v7 + 64) + 15;
  v2[39] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0) - 8) + 64) + 15;
  v2[40] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261363DB0);
}

uint64_t sub_261363DB0()
{
  v1 = v0[33];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_6;
  }

  v3 = Strong;
  v4 = *(Strong + OBJC_IVAR____TtC21ProximityReaderDaemon29PaymentReadResultStoreService_connection);

  v0[22] = sub_261364400;
  v0[23] = 0;
  v0[18] = MEMORY[0x277D85DD0];
  v0[19] = 1107296256;
  v0[20] = sub_261277574;
  v0[21] = &block_descriptor_13;
  v5 = _Block_copy(v0 + 18);
  v6 = [v4 synchronousRemoteObjectProxyWithErrorHandler_];
  _Block_release(v5);

  sub_2613A202C();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0828, &qword_2613AD400);
  if (swift_dynamicCast())
  {
    v7 = v0[31];
    v8 = v0[32];
    v0[41] = v7;
    sub_2613A008C();
    v9 = sub_2613A1B6C();
    v0[42] = v9;
    v0[2] = v0;
    v0[3] = sub_261364290;
    v10 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0830, &qword_2613AD408);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_261364608;
    v0[13] = &block_descriptor_170;
    v0[14] = v10;
    [v7 paymentCardReadResultsWithBatch:v9 completionHandler:v0 + 10];

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {
LABEL_6:
    v11 = v0[40];
    v12 = sub_26129B5FC();
    sub_26125A870(v12, v11, &qword_27FE9F560, &qword_2613A3CB0);
    v13 = sub_2613A124C();
    v14 = *(v13 - 8);
    if ((*(v14 + 48))(v11, 1, v13) == 1)
    {
      sub_26124C718(v0[40], &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v15 = v0[40];
      v16 = sub_2613A122C();
      v17 = sub_2613A1D8C();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&dword_261243000, v16, v17, "Could not retrieve transactions streaming proxy", v18, 2u);
        MEMORY[0x266701350](v18, -1, -1);
      }

      v19 = v0[40];

      (*(v14 + 8))(v19, v13);
    }

    v20 = v0[39];
    v21 = v0[40];
    v22 = v0[37];
    v23 = v0[38];
    v25 = v0[35];
    v24 = v0[36];
    v26 = v0[34];
    (*(v25 + 104))(v24, *MEMORY[0x277D43838], v26);
    v27 = sub_26139FA9C();
    (*(v25 + 8))(v24, v26);
    *v20 = v27;
    (*(v23 + 104))(v20, *MEMORY[0x277D438D8], v22);
    v28 = objc_allocWithZone(sub_26139FB2C());
    v29 = sub_26139FB3C();
    sub_2613770D8(&qword_27FEA07F0, MEMORY[0x277D438E0]);
    swift_allocError();
    *v30 = v29;
    swift_willThrow();

    v31 = v0[1];

    return v31();
  }
}

uint64_t sub_261364290()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_261364370);
}

uint64_t sub_261364370()
{
  v1 = v0[41];
  v2 = v0[42];
  v3 = v0[39];
  v4 = v0[40];
  v5 = v0[36];
  swift_unknownObjectRelease();

  v6 = v0[1];

  return v6();
}

uint64_t sub_261364400(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v17 - v4;
  v6 = sub_26129B5FC();
  sub_26125A870(v6, v5, &qword_27FE9F560, &qword_2613A3CB0);
  v7 = sub_2613A124C();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v5, 1, v7) == 1)
  {
    return sub_26124C718(v5, &qword_27FE9F560, &qword_2613A3CB0);
  }

  v10 = a1;
  v11 = sub_2613A122C();
  v12 = sub_2613A1D8C();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138412290;
    v15 = a1;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 4) = v16;
    *v14 = v16;
    _os_log_impl(&dword_261243000, v11, v12, "Transaction streaming error: %@", v13, 0xCu);
    sub_26124C718(v14, &qword_27FEA0410, &qword_2613AA780);
    MEMORY[0x266701350](v14, -1, -1);
    MEMORY[0x266701350](v13, -1, -1);
  }

  return (*(v8 + 8))(v5, v7);
}

uint64_t sub_261364608(uint64_t a1)
{
  v1 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));

  return MEMORY[0x282200948](v1);
}

uint64_t sub_2613647C0(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  a3;
  v6 = swift_task_alloc();
  v3[4] = v6;
  *v6 = v3;
  v6[1] = sub_26136487C;

  return sub_261362474(a1);
}

uint64_t sub_26136487C(void *a1)
{
  v4 = *v2;
  v5 = *(*v2 + 32);
  v6 = *(*v2 + 16);
  v7 = *v2;

  v8 = *(v4 + 24);
  if (v1)
  {
    sub_26139FB2C();
    sub_2613770D8(&qword_27FEA07F0, MEMORY[0x277D438E0]);
    v9 = swift_allocError();
    *v10 = a1;
    v11 = sub_26139EE6C();
    (v8)[2](v8, 0, v11);

    _Block_release(v8);
  }

  else
  {
    (v8)[2](v8, a1, 0);
    _Block_release(v8);
  }

  v12 = *(v7 + 8);

  return v12();
}

uint64_t sub_261364A70()
{
  v1[12] = v0;
  v2 = sub_26139FB0C();
  v1[13] = v2;
  v3 = *(v2 - 8);
  v1[14] = v3;
  v4 = *(v3 + 64) + 15;
  v1[15] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F280, &unk_2613A42B0);
  v1[16] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v7 = sub_26139F13C();
  v1[19] = v7;
  v8 = *(v7 - 8);
  v1[20] = v8;
  v1[21] = *(v8 + 64);
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v9 = sub_2613A1EBC();
  v1[24] = v9;
  v10 = *(v9 - 8);
  v1[25] = v10;
  v11 = *(v10 + 64) + 15;
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0) - 8) + 64) + 15;
  v1[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261364C88);
}

uint64_t sub_261364C88()
{
  v1 = *(v0 + 224);
  v2 = sub_26129B934();
  sub_26125A870(v2, v1, &qword_27FE9F560, &qword_2613A3CB0);
  v3 = sub_2613A124C();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 48))(v1, 1, v3);
  v6 = *(v0 + 224);
  if (v5 == 1)
  {
    sub_26124C718(*(v0 + 224), &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v7 = *(v0 + 96);
    v8 = sub_26125A798();
    v9 = sub_261291AA8();
    sub_26129BC3C(v8 & 1, v7, 0xD000000000000011, 0x80000002613BD800, v9, v10);

    (*(v4 + 8))(v6, v3);
  }

  v11 = *(v0 + 152);
  v12 = *(v0 + 160);
  v13 = *(v0 + 128);
  v14 = *(v0 + 96);
  v15 = swift_allocBox();
  *(v0 + 232) = v15;
  *(v0 + 240) = v16;
  (*(v12 + 56))(v16, 1, 1, v11);
  sub_261361BF0();
  v17 = *(v0 + 96);
  v18 = sub_261360684();
  v19 = v18;
  *(v0 + 248) = v18;
  if (v18)
  {
    v29 = *(v0 + 216);
    v30 = *(v0 + 192);
    v31 = *(v0 + 200);
    v32 = *(v0 + 96);
    *(v0 + 416) = *MEMORY[0x277CBE110];
    v33 = *(v31 + 104);
    *(v0 + 256) = v33;
    *(v0 + 264) = (v31 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v33(v29);
    v34 = swift_allocObject();
    *(v0 + 272) = v34;
    *(v34 + 16) = v32;
    *(v34 + 24) = v15;
    v35 = v32;

    v36 = swift_task_alloc();
    *(v0 + 280) = v36;
    *v36 = v0;
    v36[1] = sub_261365138;
    v37 = *(v0 + 216);
    v38 = MEMORY[0x277D84F78] + 8;

    return sub_261252A34(v36, v37, sub_261375F34, v34, v19, v38);
  }

  else
  {
    (*(*(v0 + 112) + 104))(*(v0 + 120), *MEMORY[0x277D438A0], *(v0 + 104));
    v39 = objc_allocWithZone(sub_26139FB2C());
    v40 = sub_26139FB3C();
    sub_2613770D8(&qword_27FEA07F0, MEMORY[0x277D438E0]);
    v41 = swift_allocError();
    *v42 = v40;
    swift_willThrow();
    v43 = v41;
    *(v0 + 392) = v41;
    v20 = *(v0 + 240);
    v21 = *(v0 + 136);
    v22 = *(v0 + 96);
    v23 = sub_261372E48(v43, 0xD000000000000011, 0x80000002613BD800);
    *(v0 + 400) = v23;
    type metadata accessor for SafMonitorEventDispatcher();
    v24 = *(v22 + OBJC_IVAR____TtC21ProximityReaderDaemon29PaymentReadResultStoreService_paymentContext);
    v25 = OBJC_IVAR____TtC21ProximityReaderDaemon29PaymentReadResultStoreService_cardReaderAdapter;
    swift_beginAccess();
    sub_26125A870(v20, v21, &qword_27FE9F280, &unk_2613A42B0);
    v26 = swift_task_alloc();
    *(v0 + 408) = v26;
    *v26 = v0;
    v26[1] = sub_261365FD8;
    v27 = *(v0 + 136);

    return sub_2612A0900(v24, v22 + v25, v27, v23);
  }
}

uint64_t sub_261365138()
{
  v2 = *v1;
  v3 = *(*v1 + 280);
  v4 = *v1;
  v2[36] = v0;

  v5 = v2[34];
  v6 = v2[27];
  v7 = v2[25];
  v8 = v2[24];
  v11 = *(v7 + 8);
  v9 = v7 + 8;
  v10 = v11;
  if (v0)
  {
    v10(v6, v8);

    v12 = sub_261366248;
  }

  else
  {
    v2[37] = v10;
    v2[38] = v9 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v10(v6, v8);

    v12 = sub_2613652E4;
  }

  return MEMORY[0x2822009F8](v12);
}

uint64_t sub_2613652E4()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 152);
  v3 = *(v0 + 160);
  v4 = *(v0 + 144);
  swift_beginAccess();
  sub_26125A870(v1, v4, &qword_27FE9F280, &unk_2613A42B0);
  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    v5 = *(v0 + 248);
    v6 = *(v0 + 144);

    sub_26124C718(v6, &qword_27FE9F280, &unk_2613A42B0);
    v8 = *(v0 + 224);
    v7 = *(v0 + 232);
    v10 = *(v0 + 208);
    v9 = *(v0 + 216);
    v12 = *(v0 + 176);
    v11 = *(v0 + 184);
    v14 = *(v0 + 136);
    v13 = *(v0 + 144);
    v15 = *(v0 + 120);

    v16 = *(v0 + 8);

    return v16();
  }

  else
  {
    v18 = *(v0 + 184);
    v19 = *(v0 + 152);
    v20 = *(v0 + 160);
    v21 = *(v0 + 144);
    v22 = *(v20 + 32);
    *(v0 + 312) = v22;
    *(v0 + 320) = (v20 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v22(v18, v21, v19);
    v23 = swift_allocObject();
    *(v0 + 328) = v23;
    *(v23 + 16) = 0;
    v24 = swift_allocObject();
    *(v0 + 336) = v24;
    *(v24 + 16) = 1;
    v25 = (v24 + 16);
    swift_beginAccess();
    if (*v25 == 1)
    {
      v26 = *(v0 + 328);
      v27 = *(v0 + 336);
      v48 = *(v0 + 312);
      v49 = *(v0 + 320);
      v28 = *(v0 + 264);
      v50 = *(v0 + 248);
      v29 = *(v0 + 184);
      v31 = *(v0 + 168);
      v30 = *(v0 + 176);
      v33 = *(v0 + 152);
      v32 = *(v0 + 160);
      v34 = *(v0 + 96);
      (*(v0 + 256))(*(v0 + 208), *(v0 + 416), *(v0 + 192));
      (*(v32 + 16))(v30, v29, v33);
      v35 = (*(v32 + 80) + 24) & ~*(v32 + 80);
      v36 = (v31 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
      v37 = swift_allocObject();
      *(v0 + 344) = v37;
      *(v37 + 16) = v34;
      v48(v37 + v35, v30, v33);
      *(v37 + v36) = v27;
      *(v37 + ((v36 + 15) & 0xFFFFFFFFFFFFFFF8)) = v26;
      v38 = v34;

      v39 = swift_task_alloc();
      *(v0 + 352) = v39;
      *v39 = v0;
      v39[1] = sub_2613656C0;
      v40 = *(v0 + 208);
      v41 = MEMORY[0x277D84F78] + 8;

      return sub_261252A34(v39, v40, sub_261375F50, v37, v50, v41);
    }

    else
    {
      v43 = *(v0 + 328);
      v42 = *(v0 + 336);
      v44 = *(v0 + 248);

      v45 = swift_task_alloc();
      *(v0 + 368) = v45;
      *v45 = v0;
      v45[1] = sub_26136584C;
      v46 = *(v0 + 184);
      v47 = *(v0 + 96);

      return sub_261366994(v44, v46);
    }
  }
}

uint64_t sub_2613656C0()
{
  v2 = *v1;
  v3 = *(*v1 + 352);
  v4 = *v1;
  *(*v1 + 360) = v0;

  v5 = *(v2 + 344);
  v6 = *(v2 + 304);
  (*(v2 + 296))(*(v2 + 208), *(v2 + 192));

  if (v0)
  {
    v7 = sub_261365BA0;
  }

  else
  {
    v7 = sub_261365960;
  }

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_26136584C()
{
  v2 = *(*v1 + 368);
  v5 = *v1;
  *(*v1 + 376) = v0;

  if (v0)
  {
    v3 = sub_261366394;
  }

  else
  {
    v3 = sub_261365D20;
  }

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_261365960()
{
  v1 = *(v0 + 328);
  v2 = *(v0 + 336);
  if (*(v2 + 16) == 1)
  {
    v23 = *(v0 + 312);
    v24 = *(v0 + 320);
    v3 = *(v0 + 264);
    v25 = *(v0 + 248);
    v4 = *(v0 + 184);
    v6 = *(v0 + 168);
    v5 = *(v0 + 176);
    v8 = *(v0 + 152);
    v7 = *(v0 + 160);
    v9 = *(v0 + 96);
    (*(v0 + 256))(*(v0 + 208), *(v0 + 416), *(v0 + 192));
    (*(v7 + 16))(v5, v4, v8);
    v10 = (*(v7 + 80) + 24) & ~*(v7 + 80);
    v11 = (v6 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
    v12 = swift_allocObject();
    *(v0 + 344) = v12;
    *(v12 + 16) = v9;
    v23(v12 + v10, v5, v8);
    *(v12 + v11) = v2;
    *(v12 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8)) = v1;
    v13 = v9;

    v14 = swift_task_alloc();
    *(v0 + 352) = v14;
    *v14 = v0;
    v14[1] = sub_2613656C0;
    v15 = *(v0 + 208);
    v16 = MEMORY[0x277D84F78] + 8;

    return sub_261252A34(v14, v15, sub_261375F50, v12, v25, v16);
  }

  else
  {
    v18 = *(v0 + 248);
    v19 = *(v0 + 336);

    v20 = swift_task_alloc();
    *(v0 + 368) = v20;
    *v20 = v0;
    v20[1] = sub_26136584C;
    v21 = *(v0 + 184);
    v22 = *(v0 + 96);

    return sub_261366994(v18, v21);
  }
}

uint64_t sub_261365BA0()
{
  v2 = v0[41];
  v1 = v0[42];
  v3 = v0[31];
  v4 = v0[23];
  v5 = v0[19];
  v6 = v0[20];

  (*(v6 + 8))(v4, v5);
  v7 = v0[45];
  v0[49] = v7;
  v8 = v0[30];
  v9 = v0[17];
  v10 = v0[12];
  v11 = sub_261372E48(v7, 0xD000000000000011, 0x80000002613BD800);
  v0[50] = v11;
  type metadata accessor for SafMonitorEventDispatcher();
  v12 = *(v10 + OBJC_IVAR____TtC21ProximityReaderDaemon29PaymentReadResultStoreService_paymentContext);
  v13 = OBJC_IVAR____TtC21ProximityReaderDaemon29PaymentReadResultStoreService_cardReaderAdapter;
  swift_beginAccess();
  sub_26125A870(v8, v9, &qword_27FE9F280, &unk_2613A42B0);
  v14 = swift_task_alloc();
  v0[51] = v14;
  *v14 = v0;
  v14[1] = sub_261365FD8;
  v15 = v0[17];

  return sub_2612A0900(v12, v10 + v13, v15, v11);
}

uint64_t sub_261365D20()
{
  v1 = v0[12];
  type metadata accessor for SafMonitorEventDispatcher();
  v2 = *(v1 + OBJC_IVAR____TtC21ProximityReaderDaemon29PaymentReadResultStoreService_paymentContext);
  v3 = OBJC_IVAR____TtC21ProximityReaderDaemon29PaymentReadResultStoreService_cardReaderAdapter;
  v4 = swift_task_alloc();
  v0[48] = v4;
  *v4 = v0;
  v4[1] = sub_261365DE8;
  v5 = v0[23];

  return sub_2612A0780(v2, v1 + v3, v5);
}

uint64_t sub_261365DE8()
{
  v1 = *(*v0 + 384);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_261365EE4);
}

uint64_t sub_261365EE4()
{
  v1 = v0[31];
  v2 = v0[23];
  v3 = v0[19];
  v4 = v0[20];

  (*(v4 + 8))(v2, v3);
  v6 = v0[28];
  v5 = v0[29];
  v8 = v0[26];
  v7 = v0[27];
  v10 = v0[22];
  v9 = v0[23];
  v12 = v0[17];
  v11 = v0[18];
  v13 = v0[15];

  v14 = v0[1];

  return v14();
}

uint64_t sub_261365FD8()
{
  v1 = *(*v0 + 408);
  v2 = *(*v0 + 136);
  v4 = *v0;

  sub_26124C718(v2, &qword_27FE9F280, &unk_2613A42B0);

  return MEMORY[0x2822009F8](sub_261366100);
}

uint64_t sub_261366100()
{
  v1 = v0[49];
  v3 = v0[28];
  v2 = v0[29];
  v5 = v0[26];
  v4 = v0[27];
  v6 = v0[22];
  v7 = v0[23];
  v11 = v0[18];
  v12 = v0[17];
  v13 = v0[15];
  v0[11] = v0[50];
  sub_26139FB2C();
  sub_2613770D8(&qword_27FEA07F0, MEMORY[0x277D438E0]);
  swift_willThrowTypedImpl();

  v8 = v0[1];
  v9 = v0[50];

  return v8(v9);
}

uint64_t sub_261366248()
{
  v1 = v0[31];

  v2 = v0[36];
  v0[49] = v2;
  v3 = v0[30];
  v4 = v0[17];
  v5 = v0[12];
  v6 = sub_261372E48(v2, 0xD000000000000011, 0x80000002613BD800);
  v0[50] = v6;
  type metadata accessor for SafMonitorEventDispatcher();
  v7 = *(v5 + OBJC_IVAR____TtC21ProximityReaderDaemon29PaymentReadResultStoreService_paymentContext);
  v8 = OBJC_IVAR____TtC21ProximityReaderDaemon29PaymentReadResultStoreService_cardReaderAdapter;
  swift_beginAccess();
  sub_26125A870(v3, v4, &qword_27FE9F280, &unk_2613A42B0);
  v9 = swift_task_alloc();
  v0[51] = v9;
  *v9 = v0;
  v9[1] = sub_261365FD8;
  v10 = v0[17];

  return sub_2612A0900(v7, v5 + v8, v10, v6);
}

uint64_t sub_261366394()
{
  v1 = v0[31];
  v2 = v0[23];
  v3 = v0[19];
  v4 = v0[20];

  (*(v4 + 8))(v2, v3);
  v5 = v0[47];
  v0[49] = v5;
  v6 = v0[30];
  v7 = v0[17];
  v8 = v0[12];
  v9 = sub_261372E48(v5, 0xD000000000000011, 0x80000002613BD800);
  v0[50] = v9;
  type metadata accessor for SafMonitorEventDispatcher();
  v10 = *(v8 + OBJC_IVAR____TtC21ProximityReaderDaemon29PaymentReadResultStoreService_paymentContext);
  v11 = OBJC_IVAR____TtC21ProximityReaderDaemon29PaymentReadResultStoreService_cardReaderAdapter;
  swift_beginAccess();
  sub_26125A870(v6, v7, &qword_27FE9F280, &unk_2613A42B0);
  v12 = swift_task_alloc();
  v0[51] = v12;
  *v12 = v0;
  v12[1] = sub_261365FD8;
  v13 = v0[17];

  return sub_2612A0900(v10, v8 + v11, v13, v9);
}

uint64_t sub_261366500(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v48 = a1;
  v5 = sub_26139FB0C();
  v6 = *(v5 - 8);
  v45 = v5;
  v46 = v6;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v44 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v44 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F280, &unk_2613A42B0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v44 - v18;
  v47 = swift_projectBox();
  v20 = *(a3 + OBJC_IVAR____TtC21ProximityReaderDaemon29PaymentReadResultStoreService_paymentContext);
  v21 = *(v20 + 80);
  v22 = *(v20 + 88);
  v23 = sub_26139F13C();
  v24 = *(*(v23 - 8) + 56);
  v24(v19, 1, 1, v23);

  v25 = v49;
  v26 = sub_261257344(a2, v21, v22, v19);
  sub_26124C718(v19, &qword_27FE9F280, &unk_2613A42B0);

  if (!v25)
  {
    v28 = v24;
    v29 = v47;
    if (v26)
    {
      v30 = [v26 batchId];
      sub_26139F11C();

      v28(v17, 0, 1, v23);
      swift_beginAccess();
      return sub_26125C010(v17, v29, &qword_27FE9F280, &unk_2613A42B0);
    }

    else
    {
      v31 = sub_26129B934();
      v32 = v12;
      sub_26125A870(v31, v12, &qword_27FE9F560, &qword_2613A3CB0);
      v33 = sub_2613A124C();
      v34 = *(v33 - 8);
      if ((*(v34 + 48))(v12, 1, v33) == 1)
      {
        sub_26124C718(v12, &qword_27FE9F560, &qword_2613A3CB0);
        v36 = v44;
        v35 = v45;
      }

      else
      {
        v37 = sub_2613A122C();
        v38 = sub_2613A1D8C();
        v39 = os_log_type_enabled(v37, v38);
        v36 = v44;
        v35 = v45;
        if (v39)
        {
          v40 = swift_slowAlloc();
          *v40 = 0;
          _os_log_impl(&dword_261243000, v37, v38, "Could not reset as no batch was found", v40, 2u);
          MEMORY[0x266701350](v40, -1, -1);
        }

        (*(v34 + 8))(v32, v33);
      }

      (*(v46 + 104))(v36, *MEMORY[0x277D438A0], v35);
      v41 = objc_allocWithZone(sub_26139FB2C());
      v42 = sub_26139FB3C();
      sub_2613770D8(&qword_27FEA07F0, MEMORY[0x277D438E0]);
      swift_allocError();
      *v43 = v42;
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_261366994(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_26139F13C();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v3[7] = *(v5 + 64);
  v3[8] = swift_task_alloc();
  v6 = sub_2613A1EBC();
  v3[9] = v6;
  v7 = *(v6 - 8);
  v3[10] = v7;
  v8 = *(v7 + 64) + 15;
  v3[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261366ABC);
}

uint64_t sub_261366ABC()
{
  v1 = v0[8];
  v3 = v0[6];
  v2 = v0[7];
  v5 = v0[4];
  v4 = v0[5];
  v6 = v0[3];
  (*(v0[10] + 104))(v0[11], *MEMORY[0x277CBE110], v0[9]);
  (*(v3 + 16))(v1, v6, v4);
  v7 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v8 = swift_allocObject();
  v0[12] = v8;
  *(v8 + 16) = v5;
  (*(v3 + 32))(v8 + v7, v1, v4);
  v9 = v5;
  v10 = swift_task_alloc();
  v0[13] = v10;
  *v10 = v0;
  v10[1] = sub_261366C30;
  v11 = v0[11];
  v12 = v0[2];
  v13 = MEMORY[0x277D84F78] + 8;

  return sub_261252A34(v10, v11, sub_261376B3C, v8, v12, v13);
}

uint64_t sub_261366C30()
{
  v2 = *(*v1 + 104);
  v3 = *(*v1 + 96);
  v4 = *(*v1 + 88);
  v5 = *(*v1 + 80);
  v6 = *(*v1 + 72);
  v9 = *v1;
  *(*v1 + 112) = v0;

  (*(v5 + 8))(v4, v6);

  if (v0)
  {
    v7 = sub_261366E34;
  }

  else
  {
    v7 = sub_261366DC4;
  }

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_261366DC4()
{
  v1 = v0[11];
  v2 = v0[8];

  v3 = v0[1];

  return v3();
}

uint64_t sub_261366E34()
{
  v1 = v0[11];
  v2 = v0[8];

  v3 = v0[1];
  v4 = v0[14];

  return v3();
}

uint64_t sub_261367018(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_2613670C0;

  return sub_261364A70();
}

uint64_t sub_2613670C0(uint64_t a1)
{
  v5 = *v2;
  v4 = *v2;
  v6 = *(*v2 + 32);
  v7 = *(*v2 + 16);
  v8 = *v2;

  v9 = *(v4 + 24);
  if (v1)
  {
    sub_26139FB2C();
    sub_2613770D8(&qword_27FEA07F0, MEMORY[0x277D438E0]);
    v10 = swift_allocError();
    *v11 = a1;
    v12 = sub_26139EE6C();
    (*(v9 + 16))(v9, v12);
  }

  else
  {
    (*(v9 + 16))(v9, 0);
  }

  _Block_release(*(v5 + 24));
  v13 = *(v8 + 8);

  return v13();
}

uint64_t sub_26136729C(uint64_t a1, uint64_t a2)
{
  v3[23] = a2;
  v3[24] = v2;
  v3[22] = a1;
  v4 = sub_26139F13C();
  v3[25] = v4;
  v5 = *(v4 - 8);
  v3[26] = v5;
  v6 = *(v5 + 64) + 15;
  v3[27] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA07F8, &qword_2613AD278) - 8) + 64) + 15;
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  v8 = sub_26139FB0C();
  v3[31] = v8;
  v9 = *(v8 - 8);
  v3[32] = v9;
  v10 = *(v9 + 64) + 15;
  v3[33] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA07D8, &qword_2613AD218) - 8) + 64) + 15;
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  v12 = sub_2613A1EBC();
  v3[36] = v12;
  v13 = *(v12 - 8);
  v3[37] = v13;
  v14 = *(v13 + 64) + 15;
  v3[38] = swift_task_alloc();
  v15 = type metadata accessor for ValidationResponse();
  v3[39] = v15;
  v16 = *(v15 - 8);
  v3[40] = v16;
  v3[41] = *(v16 + 64);
  v3[42] = swift_task_alloc();
  v3[43] = swift_task_alloc();
  v3[44] = swift_task_alloc();
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0) - 8) + 64) + 15;
  v3[45] = swift_task_alloc();
  v3[46] = swift_task_alloc();
  v18 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F280, &unk_2613A42B0) - 8) + 64) + 15;
  v3[47] = swift_task_alloc();
  v3[48] = swift_task_alloc();
  v3[49] = swift_task_alloc();
  v3[50] = swift_task_alloc();
  v3[51] = swift_task_alloc();
  v3[52] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2613675E0);
}

uint64_t sub_2613675E0()
{
  v51 = v0;
  v2 = *(v0 + 408);
  v1 = *(v0 + 416);
  v3 = *(v0 + 200);
  v4 = *(v0 + 208);
  v5 = *(v0 + 192);
  v6 = *(v4 + 56);
  *(v0 + 424) = v6;
  *(v0 + 432) = (v4 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v6(v1, 1, 1, v3);
  v6(v2, 1, 1, v3);
  sub_261361BF0();
  v7 = *(v0 + 192);
  v8 = sub_261360684();
  *(v0 + 440) = v8;
  if (v8)
  {
    v29 = *(v0 + 368);
    v30 = sub_26129B934();
    *(v0 + 448) = v30;
    sub_26125A870(v30, v29, &qword_27FE9F560, &qword_2613A3CB0);
    v31 = sub_2613A124C();
    *(v0 + 456) = v31;
    v32 = *(v31 - 8);
    *(v0 + 464) = v32;
    v33 = *(v32 + 48);
    *(v0 + 472) = v33;
    *(v0 + 480) = (v32 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
    if (v33(v29, 1, v31) == 1)
    {
      sub_26124C718(*(v0 + 368), &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v38 = *(v0 + 184);

      v39 = sub_2613A122C();
      v40 = sub_2613A1D9C();

      if (os_log_type_enabled(v39, v40))
      {
        v42 = *(v0 + 176);
        v41 = *(v0 + 184);
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v50 = v44;
        *v43 = 136315138;
        *(v43 + 4) = sub_26124C11C(v42, v41, &v50);
        _os_log_impl(&dword_261243000, v39, v40, "Validating token: %s", v43, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v44);
        MEMORY[0x266701350](v44, -1, -1);
        MEMORY[0x266701350](v43, -1, -1);
      }

      (*(v32 + 8))(*(v0 + 368), v31);
    }

    v45 = swift_task_alloc();
    *(v0 + 488) = v45;
    *v45 = v0;
    v45[1] = sub_261367C7C;
    v46 = *(v0 + 352);
    v47 = *(v0 + 184);
    v48 = *(v0 + 192);
    v49 = *(v0 + 176);

    return sub_261369940(v46, v49, v47);
  }

  else
  {
    (*(*(v0 + 256) + 104))(*(v0 + 264), *MEMORY[0x277D438A0], *(v0 + 248));
    v34 = objc_allocWithZone(sub_26139FB2C());
    v35 = sub_26139FB3C();
    sub_2613770D8(&qword_27FEA07F0, MEMORY[0x277D438E0]);
    v36 = swift_allocError();
    *v37 = v35;
    swift_willThrow();
    *(v0 + 576) = v36;
    *(v0 + 152) = v36;
    v9 = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F650, &qword_2613A57C0);
    if (swift_dynamicCast())
    {
      v10 = *(v0 + 72);
      *(v0 + 16) = *(v0 + 56);
      *(v0 + 32) = v10;
      *(v0 + 48) = *(v0 + 88);
      v11 = sub_261375FD0((v0 + 16), 0x80000002613BD820);
      *(v0 + 136) = *(v0 + 24);
      sub_26130105C(v0 + 136);
      *(v0 + 120) = *(v0 + 40);
      sub_26130105C(v0 + 120);
    }

    else
    {
      v11 = sub_261372E48(v36, 0xD000000000000021, 0x80000002613BD820);
    }

    *(v0 + 584) = v11;
    v12 = *(v0 + 400);
    v13 = *(v0 + 200);
    v14 = *(v0 + 208);
    sub_26125A870(*(v0 + 416), v12, &qword_27FE9F280, &unk_2613A42B0);
    v15 = *(v14 + 48);
    *(v0 + 592) = v15;
    *(v0 + 600) = (v14 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
    LODWORD(v13) = v15(v12, 1, v13);
    v16 = v11;
    sub_26124C718(v12, &qword_27FE9F280, &unk_2613A42B0);
    if (v13 == 1 || (v17 = *(v0 + 392), v18 = *(v0 + 200), sub_26125A870(*(v0 + 408), v17, &qword_27FE9F280, &unk_2613A42B0), LODWORD(v18) = v15(v17, 1, v18), sub_26124C718(v17, &qword_27FE9F280, &unk_2613A42B0), v18 == 1))
    {
      v19 = swift_task_alloc();
      *(v0 + 608) = v19;
      *v19 = v0;
      v19[1] = sub_26136893C;
      v20 = *(v0 + 240);
      v21 = *(v0 + 192);

      return sub_26136B12C(v20);
    }

    else
    {
      v23 = *(v0 + 192);
      type metadata accessor for SafMonitorEventDispatcher();
      v24 = *(v23 + OBJC_IVAR____TtC21ProximityReaderDaemon29PaymentReadResultStoreService_paymentContext);
      *(v0 + 616) = v24;
      v25 = OBJC_IVAR____TtC21ProximityReaderDaemon29PaymentReadResultStoreService_cardReaderAdapter;
      v26 = swift_task_alloc();
      *(v0 + 624) = v26;
      *v26 = v0;
      v26[1] = sub_261368D5C;
      v27 = *(v0 + 584);
      v28 = *(v0 + 416);

      return sub_2612A0460(v24, v23 + v25, v28, v27);
    }
  }
}

uint64_t sub_261367C7C()
{
  v2 = *(*v1 + 488);
  v5 = *v1;
  *(*v1 + 496) = v0;

  if (v0)
  {
    v3 = sub_26136930C;
  }

  else
  {
    v3 = sub_261367D90;
  }

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_261367D90()
{
  v35 = v0;
  v2 = v0[59];
  v1 = v0[60];
  v3 = v0[57];
  v4 = v0[45];
  sub_26125A870(v0[56], v4, &qword_27FE9F560, &qword_2613A3CB0);
  if (v2(v4, 1, v3) == 1)
  {
    sub_26124C718(v0[45], &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    sub_2613765A4(v0[44], v0[43], type metadata accessor for ValidationResponse);
    v5 = sub_2613A122C();
    v6 = sub_2613A1D9C();
    v7 = os_log_type_enabled(v5, v6);
    v8 = v0[43];
    if (v7)
    {
      v9 = v0[39];
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v34 = v11;
      *v10 = 136315138;
      sub_2613770D8(&qword_27FEA0808, type metadata accessor for ValidationResponse);
      v12 = sub_2613A23EC();
      v14 = v13;
      sub_261376698(v8, type metadata accessor for ValidationResponse);
      v15 = sub_26124C11C(v12, v14, &v34);

      *(v10 + 4) = v15;
      _os_log_impl(&dword_261243000, v5, v6, "Resolving batch: %s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v11);
      MEMORY[0x266701350](v11, -1, -1);
      MEMORY[0x266701350](v10, -1, -1);
    }

    else
    {

      sub_261376698(v8, type metadata accessor for ValidationResponse);
    }

    (*(v0[58] + 8))(v0[45], v0[57]);
  }

  v16 = v0[44];
  v17 = v0[42];
  v32 = v0[41];
  v33 = v0[55];
  v18 = v0[40];
  v19 = v0[37];
  v20 = v0[38];
  v21 = v0[36];
  v22 = *(v0[24] + OBJC_IVAR____TtC21ProximityReaderDaemon29PaymentReadResultStoreService_paymentContext);
  v0[63] = v22;
  v24 = *(v22 + 80);
  v23 = *(v22 + 88);
  v25 = swift_allocObject();
  v0[64] = v25;
  *(v25 + 16) = 0;
  (*(v19 + 104))(v20, *MEMORY[0x277CBE110], v21);
  sub_2613765A4(v16, v17, type metadata accessor for ValidationResponse);
  v26 = (*(v18 + 80) + 40) & ~*(v18 + 80);
  v27 = swift_allocObject();
  v0[65] = v27;
  v27[2] = v25;
  v27[3] = v24;
  v27[4] = v23;
  sub_261377120(v17, v27 + v26, type metadata accessor for ValidationResponse);

  v28 = swift_task_alloc();
  v0[66] = v28;
  *v28 = v0;
  v28[1] = sub_261368150;
  v29 = v0[38];
  v30 = MEMORY[0x277D83B88];

  return sub_261252A34((v0 + 21), v29, sub_26137660C, v27, v33, v30);
}

uint64_t sub_261368150()
{
  v2 = *v1;
  v3 = *(*v1 + 528);
  v4 = *v1;
  *(*v1 + 536) = v0;

  v5 = v2[65];
  (*(v2[37] + 8))(v2[38], v2[36]);

  if (v0)
  {
    v6 = sub_261369610;
  }

  else
  {
    v6 = sub_2613682D4;
  }

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_2613682D4()
{
  v1 = *(v0 + 512);
  v2 = *(v0 + 352);
  v3 = *(v0 + 312);
  v4 = *(v0 + 192);
  *(v0 + 544) = *(v0 + 168);
  type metadata accessor for SafMonitorEventDispatcher();
  v5 = OBJC_IVAR____TtC21ProximityReaderDaemon29PaymentReadResultStoreService_cardReaderAdapter;
  swift_beginAccess();
  v6 = *(v1 + 16);
  *(v0 + 640) = *(v3 + 20);
  v7 = sub_26139F0FC();
  v9 = v8;
  *(v0 + 552) = v8;
  v10 = swift_task_alloc();
  *(v0 + 560) = v10;
  *v10 = v0;
  v10[1] = sub_2613683FC;
  v11 = *(v0 + 504);
  v12 = *(v0 + 352);

  return sub_2612A0254(v11, v4 + v5, v12, v6, v7, v9);
}

uint64_t sub_2613683FC()
{
  v1 = *v0;
  v2 = *(*v0 + 560);
  v3 = *(*v0 + 552);
  v4 = *v0;

  v5 = swift_task_alloc();
  v1[71] = v5;
  *v5 = v4;
  v5[1] = sub_261368570;
  v6 = v1[35];
  v7 = v1[24];

  return sub_26135FA2C(v6);
}

uint64_t sub_261368570()
{
  v1 = *(*v0 + 568);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_26136866C);
}

uint64_t sub_26136866C()
{
  v1 = *(v0 + 280);
  v2 = type metadata accessor for StoreAnalytics();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v3 = *(v0 + 440);
    v4 = *(v0 + 416);
    v5 = *(v0 + 352);

    sub_261376698(v5, type metadata accessor for ValidationResponse);
    sub_26124C718(v4, &qword_27FE9F280, &unk_2613A42B0);
    sub_26124C718(v1, &qword_27FEA07D8, &qword_2613AD218);
  }

  else
  {
    v6 = *(v0 + 640);
    v7 = *(v0 + 504);
    v8 = *(v0 + 440);
    v9 = *(v0 + 416);
    v10 = *(v0 + 352);
    v11 = *(v7 + 32);
    v12 = *(v7 + 40);

    v13 = sub_26139F0FC();
    sub_261266B00(v11, v12, v13, v14, 0);

    sub_261376698(v10, type metadata accessor for ValidationResponse);
    sub_26124C718(v9, &qword_27FE9F280, &unk_2613A42B0);
    sub_261376698(v1, type metadata accessor for StoreAnalytics);
  }

  v15 = *(v0 + 512);
  v17 = *(v0 + 408);
  v16 = *(v0 + 416);
  v19 = *(v0 + 392);
  v18 = *(v0 + 400);
  v21 = *(v0 + 376);
  v20 = *(v0 + 384);
  v23 = *(v0 + 360);
  v22 = *(v0 + 368);
  v24 = *(v0 + 352);
  v28 = *(v0 + 344);
  v29 = *(v0 + 336);
  v30 = *(v0 + 304);
  v31 = *(v0 + 280);
  v32 = *(v0 + 272);
  v33 = *(v0 + 264);
  v34 = *(v0 + 240);
  v35 = *(v0 + 232);
  v36 = *(v0 + 224);
  v37 = *(v0 + 216);

  sub_26124C718(v17, &qword_27FE9F280, &unk_2613A42B0);

  v25 = *(v0 + 8);
  v26 = *(v0 + 544);

  return v25(v26);
}

uint64_t sub_26136893C()
{
  v1 = *(*v0 + 608);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_261368A38);
}

uint64_t sub_261368A38()
{
  v1 = v0[29];
  v2 = v0[30];
  sub_26124C718(v0[52], &qword_27FE9F280, &unk_2613A42B0);
  sub_26125A870(v2, v1, &qword_27FEA07F8, &qword_2613AD278);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0800, &qword_2613AD288);
  v4 = *(*(v3 - 8) + 48);
  v5 = v4(v1, 1, v3);
  v7 = v0[53];
  v6 = v0[54];
  v8 = v0[48];
  v9 = v0[29];
  v10 = v0[25];
  if (v5 == 1)
  {
    sub_26124C718(v0[29], &qword_27FEA07F8, &qword_2613AD278);
    v7(v8, 1, 1, v10);
  }

  else
  {
    v11 = v0[26];
    v31 = *(v3 + 48);
    (*(v11 + 32))(v8, v9, v0[25]);
    v7(v8, 0, 1, v10);
    (*(v11 + 8))(v9 + v31, v10);
  }

  v12 = v0[30];
  v13 = v0[28];
  sub_261375F68(v0[48], v0[52], &qword_27FE9F280, &unk_2613A42B0);
  sub_261375F68(v12, v13, &qword_27FEA07F8, &qword_2613AD278);
  v14 = v4(v13, 1, v3);
  v16 = v0[53];
  v15 = v0[54];
  v17 = v0[47];
  v18 = v0[28];
  if (v14 == 1)
  {
    v19 = v0[25];
    sub_26124C718(v18, &qword_27FEA07F8, &qword_2613AD278);
    v16(v17, 1, 1, v19);
  }

  else
  {
    v20 = v0[25];
    v21 = v0[26];
    v22 = v18 + *(v3 + 48);
    v23 = v0[28];
    (*(v21 + 32))(v0[47], v22, v20);
    v16(v17, 0, 1, v20);
    (*(v21 + 8))(v23, v20);
  }

  sub_26125C010(v0[47], v0[51], &qword_27FE9F280, &unk_2613A42B0);
  v24 = v0[24];
  type metadata accessor for SafMonitorEventDispatcher();
  v25 = *(v24 + OBJC_IVAR____TtC21ProximityReaderDaemon29PaymentReadResultStoreService_paymentContext);
  v0[77] = v25;
  v26 = OBJC_IVAR____TtC21ProximityReaderDaemon29PaymentReadResultStoreService_cardReaderAdapter;
  v27 = swift_task_alloc();
  v0[78] = v27;
  *v27 = v0;
  v27[1] = sub_261368D5C;
  v28 = v0[73];
  v29 = v0[52];

  return sub_2612A0460(v25, v24 + v26, v29, v28);
}

uint64_t sub_261368D5C()
{
  v1 = *v0;
  v2 = *(*v0 + 624);
  v3 = *(*v0 + 584);
  v4 = *v0;

  v5 = swift_task_alloc();
  v1[79] = v5;
  *v5 = v4;
  v5[1] = sub_261368ECC;
  v6 = v1[34];
  v7 = v1[24];

  return sub_26135FA2C(v6);
}

uint64_t sub_261368ECC()
{
  v1 = *(*v0 + 632);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_261368FC8);
}

uint64_t sub_261368FC8()
{
  v1 = *(v0 + 272);
  v2 = type metadata accessor for StoreAnalytics();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v36 = *(v0 + 584);
    sub_26124C718(v1, &qword_27FEA07D8, &qword_2613AD218);
  }

  else
  {
    v3 = *(v0 + 616);
    v4 = *(v0 + 600);
    v5 = *(v0 + 408);
    v6 = *(v0 + 200);
    v8 = *(v3 + 32);
    v7 = *(v3 + 40);
    if ((*(v0 + 592))(v5, 1, v6))
    {

      v9 = 0;
      v10 = 0;
    }

    else
    {
      v12 = *(v0 + 208);
      v11 = *(v0 + 216);
      (*(v12 + 16))(v11, v5, v6);

      v9 = sub_26139F0FC();
      v10 = v13;
      (*(v12 + 8))(v11, v6);
      v1 = *(v0 + 272);
    }

    v36 = *(v0 + 584);
    sub_261266B00(v8, v7, v9, v10, v36);

    sub_261376698(v1, type metadata accessor for StoreAnalytics);
  }

  v14 = *(v0 + 576);
  v15 = *(v0 + 408);
  v16 = *(v0 + 416);
  v17 = *(v0 + 392);
  v18 = *(v0 + 400);
  v19 = *(v0 + 376);
  v20 = *(v0 + 384);
  v23 = *(v0 + 368);
  v24 = *(v0 + 360);
  v25 = *(v0 + 352);
  v26 = *(v0 + 344);
  v27 = *(v0 + 336);
  v28 = *(v0 + 304);
  v29 = *(v0 + 280);
  v30 = *(v0 + 272);
  v31 = *(v0 + 264);
  v32 = *(v0 + 240);
  v33 = *(v0 + 232);
  v34 = *(v0 + 224);
  v35 = *(v0 + 216);
  *(v0 + 160) = *(v0 + 584);
  sub_26139FB2C();
  sub_2613770D8(&qword_27FEA07F0, MEMORY[0x277D438E0]);
  swift_willThrowTypedImpl();

  sub_26124C718(v16, &qword_27FE9F280, &unk_2613A42B0);
  sub_26124C718(v15, &qword_27FE9F280, &unk_2613A42B0);

  v21 = *(v0 + 8);

  return v21(v36);
}

uint64_t sub_26136930C()
{
  v1 = *(v0 + 440);

  v2 = *(v0 + 496);
  *(v0 + 152) = v2;
  *(v0 + 576) = v2;
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F650, &qword_2613A57C0);
  if (swift_dynamicCast())
  {
    v4 = *(v0 + 72);
    *(v0 + 16) = *(v0 + 56);
    *(v0 + 32) = v4;
    *(v0 + 48) = *(v0 + 88);
    v5 = sub_261375FD0((v0 + 16), 0x80000002613BD820);
    *(v0 + 136) = *(v0 + 24);
    sub_26130105C(v0 + 136);
    *(v0 + 120) = *(v0 + 40);
    sub_26130105C(v0 + 120);
  }

  else
  {
    v5 = sub_261372E48(v2, 0xD000000000000021, 0x80000002613BD820);
  }

  *(v0 + 584) = v5;
  v6 = *(v0 + 400);
  v7 = *(v0 + 200);
  v8 = *(v0 + 208);
  sub_26125A870(*(v0 + 416), v6, &qword_27FE9F280, &unk_2613A42B0);
  v9 = *(v8 + 48);
  *(v0 + 592) = v9;
  *(v0 + 600) = (v8 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  LODWORD(v7) = v9(v6, 1, v7);
  v10 = v5;
  sub_26124C718(v6, &qword_27FE9F280, &unk_2613A42B0);
  if (v7 == 1 || (v11 = *(v0 + 392), v12 = *(v0 + 200), sub_26125A870(*(v0 + 408), v11, &qword_27FE9F280, &unk_2613A42B0), LODWORD(v12) = v9(v11, 1, v12), sub_26124C718(v11, &qword_27FE9F280, &unk_2613A42B0), v12 == 1))
  {
    v13 = swift_task_alloc();
    *(v0 + 608) = v13;
    *v13 = v0;
    v13[1] = sub_26136893C;
    v14 = *(v0 + 240);
    v15 = *(v0 + 192);

    return sub_26136B12C(v14);
  }

  else
  {
    v17 = *(v0 + 192);
    type metadata accessor for SafMonitorEventDispatcher();
    v18 = *(v17 + OBJC_IVAR____TtC21ProximityReaderDaemon29PaymentReadResultStoreService_paymentContext);
    *(v0 + 616) = v18;
    v19 = OBJC_IVAR____TtC21ProximityReaderDaemon29PaymentReadResultStoreService_cardReaderAdapter;
    v20 = swift_task_alloc();
    *(v0 + 624) = v20;
    *v20 = v0;
    v20[1] = sub_261368D5C;
    v21 = *(v0 + 584);
    v22 = *(v0 + 416);

    return sub_2612A0460(v18, v17 + v19, v22, v21);
  }
}

uint64_t sub_261369610()
{
  v1 = *(v0 + 512);
  v2 = *(v0 + 440);
  v3 = *(v0 + 352);

  sub_261376698(v3, type metadata accessor for ValidationResponse);

  v4 = *(v0 + 536);
  *(v0 + 152) = v4;
  *(v0 + 576) = v4;
  v5 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F650, &qword_2613A57C0);
  if (swift_dynamicCast())
  {
    v6 = *(v0 + 72);
    *(v0 + 16) = *(v0 + 56);
    *(v0 + 32) = v6;
    *(v0 + 48) = *(v0 + 88);
    v7 = sub_261375FD0((v0 + 16), 0x80000002613BD820);
    *(v0 + 136) = *(v0 + 24);
    sub_26130105C(v0 + 136);
    *(v0 + 120) = *(v0 + 40);
    sub_26130105C(v0 + 120);
  }

  else
  {
    v7 = sub_261372E48(v4, 0xD000000000000021, 0x80000002613BD820);
  }

  *(v0 + 584) = v7;
  v8 = *(v0 + 400);
  v9 = *(v0 + 200);
  v10 = *(v0 + 208);
  sub_26125A870(*(v0 + 416), v8, &qword_27FE9F280, &unk_2613A42B0);
  v11 = *(v10 + 48);
  *(v0 + 592) = v11;
  *(v0 + 600) = (v10 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  LODWORD(v9) = v11(v8, 1, v9);
  v12 = v7;
  sub_26124C718(v8, &qword_27FE9F280, &unk_2613A42B0);
  if (v9 == 1 || (v13 = *(v0 + 392), v14 = *(v0 + 200), sub_26125A870(*(v0 + 408), v13, &qword_27FE9F280, &unk_2613A42B0), LODWORD(v14) = v11(v13, 1, v14), sub_26124C718(v13, &qword_27FE9F280, &unk_2613A42B0), v14 == 1))
  {
    v15 = swift_task_alloc();
    *(v0 + 608) = v15;
    *v15 = v0;
    v15[1] = sub_26136893C;
    v16 = *(v0 + 240);
    v17 = *(v0 + 192);

    return sub_26136B12C(v16);
  }

  else
  {
    v19 = *(v0 + 192);
    type metadata accessor for SafMonitorEventDispatcher();
    v20 = *(v19 + OBJC_IVAR____TtC21ProximityReaderDaemon29PaymentReadResultStoreService_paymentContext);
    *(v0 + 616) = v20;
    v21 = OBJC_IVAR____TtC21ProximityReaderDaemon29PaymentReadResultStoreService_cardReaderAdapter;
    v22 = swift_task_alloc();
    *(v0 + 624) = v22;
    *v22 = v0;
    v22[1] = sub_261368D5C;
    v23 = *(v0 + 584);
    v24 = *(v0 + 416);

    return sub_2612A0460(v20, v19 + v21, v24, v23);
  }
}

uint64_t sub_261369940(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_26139FB0C();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();
  v8 = sub_2613A1EBC();
  v4[9] = v8;
  v9 = *(v8 - 8);
  v4[10] = v9;
  v10 = *(v9 + 64) + 15;
  v4[11] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0) - 8) + 64) + 15;
  v4[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261369A98);
}

uint64_t sub_261369A98()
{
  type metadata accessor for Mock();
  if (sub_26129B0F4(27))
  {
    v1 = v0[12];
    v2 = sub_26129B934();
    sub_26125A870(v2, v1, &qword_27FE9F560, &qword_2613A3CB0);
    v3 = sub_2613A124C();
    v4 = *(v3 - 8);
    if ((*(v4 + 48))(v1, 1, v3) == 1)
    {
      sub_26124C718(v0[12], &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v14 = v0[12];
      v15 = sub_2613A122C();
      v16 = sub_2613A1D7C();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&dword_261243000, v15, v16, "Using mocked API to validate deletion token", v17, 2u);
        MEMORY[0x266701350](v17, -1, -1);
      }

      v18 = v0[12];

      (*(v4 + 8))(v18, v3);
    }

    v19 = v0[5];
    v20 = sub_261360684();
    v21 = v20;
    v0[13] = v20;
    if (v20)
    {
      v26 = v0[11];
      v27 = v0[5];
      v28 = swift_allocObject();
      v0[14] = v28;
      *(v28 + 16) = v27;
      v29 = type metadata accessor for ValidationResponse();
      v30 = v27;
      sub_2612529C0(v26);
      v31 = swift_task_alloc();
      v0[15] = v31;
      *v31 = v0;
      v31[1] = sub_261369F20;
      v32 = v0[11];
      v33 = v0[2];

      return sub_261252A34(v33, v32, sub_261376B04, v28, v21, v29);
    }

    else
    {
      (*(v0[7] + 104))(v0[8], *MEMORY[0x277D438A0], v0[6]);
      v34 = objc_allocWithZone(sub_26139FB2C());
      v35 = sub_26139FB3C();
      sub_2613770D8(&qword_27FEA07F0, MEMORY[0x277D438E0]);
      swift_allocError();
      *v36 = v35;
      swift_willThrow();
      v23 = v0[11];
      v22 = v0[12];
      v24 = v0[8];

      v25 = v0[1];

      return v25();
    }
  }

  else
  {
    v5 = *(v0[5] + OBJC_IVAR____TtC21ProximityReaderDaemon29PaymentReadResultStoreService_paymentContext);
    v6 = sub_26129DFF4(*(v5 + 96) | (*(v5 + 98) << 16));
    v7 = *(v5 + 64);
    v8 = *(v5 + 72);
    v0[17] = v8;

    v9 = swift_task_alloc();
    v0[18] = v9;
    *v9 = v0;
    v9[1] = sub_26136A134;
    v10 = v0[3];
    v11 = v0[4];
    v12 = v0[2];

    return sub_26129C114(v12, v10, v11, v7, v8, v6 & 0xFFFFFF);
  }
}

uint64_t sub_261369F20()
{
  v2 = *(*v1 + 120);
  v3 = *(*v1 + 112);
  v4 = *(*v1 + 88);
  v5 = *(*v1 + 80);
  v6 = *(*v1 + 72);
  v9 = *v1;
  *(*v1 + 128) = v0;

  (*(v5 + 8))(v4, v6);

  if (v0)
  {
    v7 = sub_26136A290;
  }

  else
  {
    v7 = sub_26136A0B4;
  }

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_26136A0B4()
{
  v1 = v0[13];

  v3 = v0[11];
  v2 = v0[12];
  v4 = v0[8];

  v5 = v0[1];

  return v5();
}

uint64_t sub_26136A134()
{
  v2 = *(*v1 + 144);
  v3 = *v1;
  v3[19] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26136A318);
  }

  else
  {
    v4 = v3[17];

    v6 = v3[11];
    v5 = v3[12];
    v7 = v3[8];

    v8 = v3[1];

    return v8();
  }
}

uint64_t sub_26136A290()
{
  v1 = v0[13];

  v2 = v0[16];
  v4 = v0[11];
  v3 = v0[12];
  v5 = v0[8];

  v6 = v0[1];

  return v6();
}

uint64_t sub_26136A318()
{
  v1 = v0[17];

  v2 = v0[19];
  v4 = v0[11];
  v3 = v0[12];
  v5 = v0[8];

  v6 = v0[1];

  return v6();
}

void sub_26136A3A0(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v143 = a5;
  v140 = a2;
  v141 = a4;
  v136 = a3;
  v142 = a1;
  v129 = a7;
  v132 = sub_26139FB0C();
  v130 = *(v132 - 8);
  v8 = *(v130 + 64);
  MEMORY[0x28223BE20](v132);
  v131 = &v113 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ValidationResponse();
  v11 = v10 - 8;
  v12 = *(*(v10 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v124 = &v113 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v134 = &v113 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v125 = &v113 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v128 = &v113 - v21;
  MEMORY[0x28223BE20](v20);
  v135 = &v113 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F280, &unk_2613A42B0);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v127 = &v113 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v126 = (&v113 - v28);
  v29 = MEMORY[0x28223BE20](v27);
  v133 = &v113 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v137 = &v113 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v138 = &v113 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v37 = (&v113 - v36);
  MEMORY[0x28223BE20](v35);
  v39 = (&v113 - v38);
  v40 = sub_26139F13C();
  v41 = *(v40 - 8);
  v43 = v41 + 16;
  v42 = *(v41 + 16);
  v42(v39, a6, v40);
  v46 = *(v41 + 56);
  v45 = v41 + 56;
  v44 = v46;
  v46(v39, 0, 1, v40);
  v47 = *(v11 + 28);
  v139 = a6;
  v42(v37, a6 + v47, v40);
  v46(v37, 0, 1, v40);
  v48 = v144;
  v49 = sub_261253720(v140, v141, v143, v39, v37);
  v144 = v48;
  if (v48)
  {
    sub_26124C718(v37, &qword_27FE9F280, &unk_2613A42B0);
    sub_26124C718(v39, &qword_27FE9F280, &unk_2613A42B0);
  }

  else
  {
    v119 = v47;
    v120 = v42;
    v121 = v43;
    v122 = v44;
    v123 = v45;
    v50 = v49;
    sub_26124C718(v37, &qword_27FE9F280, &unk_2613A42B0);
    sub_26124C718(v39, &qword_27FE9F280, &unk_2613A42B0);
    v51 = v136;
    swift_beginAccess();
    *(v51 + 16) = v50;
    v117 = sub_26129B934();
    v52 = v135;
    sub_26125A870(v117, v135, &qword_27FE9F560, &qword_2613A3CB0);
    v53 = sub_2613A124C();
    v118 = *(v53 - 8);
    v54 = *(v118 + 48);
    v136 = v53;
    v116 = v118 + 48;
    v115 = v54;
    if ((v54)(v52, 1) == 1)
    {
      v55 = sub_26124C718(v52, &qword_27FE9F560, &qword_2613A3CB0);
      v56 = v141;
      v58 = v138;
      v57 = v139;
      v59 = v40;
      v60 = v120;
      v61 = v119;
    }

    else
    {
      v57 = v139;
      v62 = v134;
      sub_2613765A4(v139, v134, type metadata accessor for ValidationResponse);
      v63 = sub_2613A122C();
      v64 = sub_2613A1D9C();
      v59 = v40;
      if (os_log_type_enabled(v63, v64))
      {
        v65 = swift_slowAlloc();
        v114 = swift_slowAlloc();
        v145 = v114;
        *v65 = 136315138;
        sub_2613770D8(&qword_27FE9F570, MEMORY[0x277CC95F0]);
        v66 = sub_2613A23EC();
        v67 = v52;
        v69 = v68;
        sub_261376698(v62, type metadata accessor for ValidationResponse);
        v70 = sub_26124C11C(v66, v69, &v145);
        v52 = v67;

        *(v65 + 4) = v70;
        _os_log_impl(&dword_261243000, v63, v64, "Deleting batch: %s", v65, 0xCu);
        v71 = v114;
        __swift_destroy_boxed_opaque_existential_0Tm(v114);
        MEMORY[0x266701350](v71, -1, -1);
        MEMORY[0x266701350](v65, -1, -1);
      }

      else
      {

        sub_261376698(v62, type metadata accessor for ValidationResponse);
      }

      v56 = v141;
      v60 = v120;
      v61 = v119;
      v55 = (*(v118 + 8))(v52, v136);
      v58 = v138;
    }

    v138 = MEMORY[0x266700BB0](v55);
    v60(v58, v57, v59);
    v72 = v122;
    v122(v58, 0, 1, v59);
    v73 = v57 + v61;
    v74 = v137;
    v60(v137, v73, v59);
    v75 = v59;
    v76 = v59;
    v77 = v72;
    v72(v74, 0, 1, v76);
    v78 = v140;
    v79 = v144;
    sub_261256620(v140, v56, v143, v58, v74, v142);
    v144 = v79;
    if (v79)
    {
      sub_26124C718(v74, &qword_27FE9F280, &unk_2613A42B0);
      sub_26124C718(v58, &qword_27FE9F280, &unk_2613A42B0);
      objc_autoreleasePoolPop(v138);
    }

    else
    {
      sub_26124C718(v74, &qword_27FE9F280, &unk_2613A42B0);
      sub_26124C718(v58, &qword_27FE9F280, &unk_2613A42B0);
      objc_autoreleasePoolPop(v138);
      v80 = v133;
      v60(v133, v139, v75);
      v72(v80, 0, 1, v75);
      v81 = v144;
      v82 = sub_261257484(v78, v56, v143, v80, v142);
      sub_26124C718(v80, &qword_27FE9F280, &unk_2613A42B0);
      if (!v81)
      {
        v83 = v139;
        v84 = v75;
        if (v82)
        {
          v144 = 0;
          v85 = v125;
          sub_26125A870(v117, v125, &qword_27FE9F560, &qword_2613A3CB0);
          if (v115(v85, 1, v136) == 1)
          {
            sub_26124C718(v85, &qword_27FE9F560, &qword_2613A3CB0);
            v86 = v129;
            v87 = v140;
            v88 = v127;
            v89 = v126;
          }

          else
          {
            v94 = sub_2613A122C();
            v95 = sub_2613A1D9C();
            v96 = os_log_type_enabled(v94, v95);
            v87 = v140;
            v88 = v127;
            v89 = v126;
            if (v96)
            {
              v97 = swift_slowAlloc();
              *v97 = 0;
              _os_log_impl(&dword_261243000, v94, v95, "Batch entry deleted", v97, 2u);
              MEMORY[0x266701350](v97, -1, -1);
            }

            (*(v118 + 8))(v85, v136);
            v86 = v129;
          }

          v77(v89, 1, 1, v84);
          v77(v88, 1, 1, v84);
          v98 = v144;
          v99 = sub_261253720(v87, v141, v143, v89, v88);
          sub_26124C718(v88, &qword_27FE9F280, &unk_2613A42B0);
          sub_26124C718(v89, &qword_27FE9F280, &unk_2613A42B0);
          if (!v98)
          {
            *v86 = v99;
          }
        }

        else
        {
          v90 = v128;
          sub_26125A870(v117, v128, &qword_27FE9F560, &qword_2613A3CB0);
          if (v115(v90, 1, v136) == 1)
          {
            sub_26124C718(v90, &qword_27FE9F560, &qword_2613A3CB0);
            v91 = v131;
            v92 = v132;
            v93 = v130;
          }

          else
          {
            v100 = v124;
            sub_2613765A4(v83, v124, type metadata accessor for ValidationResponse);
            v101 = sub_2613A122C();
            v102 = sub_2613A1D8C();
            v103 = os_log_type_enabled(v101, v102);
            v92 = v132;
            if (v103)
            {
              v104 = swift_slowAlloc();
              v105 = swift_slowAlloc();
              v145 = v105;
              *v104 = 136315138;
              sub_2613770D8(&qword_27FE9F570, MEMORY[0x277CC95F0]);
              v106 = sub_2613A23EC();
              v108 = v107;
              sub_261376698(v100, type metadata accessor for ValidationResponse);
              v109 = sub_26124C11C(v106, v108, &v145);

              *(v104 + 4) = v109;
              _os_log_impl(&dword_261243000, v101, v102, "Could not resolve batch: %s", v104, 0xCu);
              __swift_destroy_boxed_opaque_existential_0Tm(v105);
              MEMORY[0x266701350](v105, -1, -1);
              MEMORY[0x266701350](v104, -1, -1);
            }

            else
            {

              sub_261376698(v100, type metadata accessor for ValidationResponse);
            }

            v93 = v130;
            (*(v118 + 8))(v90, v136);
            v91 = v131;
          }

          (*(v93 + 104))(v91, *MEMORY[0x277D438A0], v92);
          v110 = objc_allocWithZone(sub_26139FB2C());
          v111 = sub_26139FB3C();
          sub_2613770D8(&qword_27FEA07F0, MEMORY[0x277D438E0]);
          swift_allocError();
          *v112 = v111;
          swift_willThrow();
        }
      }
    }
  }
}

uint64_t sub_26136B12C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();
  v4 = sub_2613A1EBC();
  v2[5] = v4;
  v5 = *(v4 - 8);
  v2[6] = v5;
  v6 = *(v5 + 64) + 15;
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26136B224);
}

uint64_t sub_26136B224()
{
  v1 = *(v0[3] + OBJC_IVAR____TtC21ProximityReaderDaemon29PaymentReadResultStoreService_paymentContext);
  v3 = *(v1 + 80);
  v2 = *(v1 + 88);

  v4 = sub_261360684();
  v0[8] = v4;
  if (v4)
  {
    v5 = v0[7];
    v6 = swift_allocObject();
    v0[9] = v6;
    *(v6 + 16) = v3;
    *(v6 + 24) = v2;
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA07F8, &qword_2613AD278);
    sub_2612529C0(v5);
    v8 = swift_task_alloc();
    v0[10] = v8;
    *v8 = v0;
    v8[1] = sub_26136B628;
    v9 = v0[7];
    v10 = v0[2];

    return sub_261252A34(v10, v9, sub_261376B20, v6, v4, v7);
  }

  else
  {

    v12 = v0[2];
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0800, &qword_2613AD288);
    (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
    v14 = v0[7];
    v15 = v0[4];

    v16 = v0[1];

    return v16();
  }
}

uint64_t sub_26136B628()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 72);
  v5 = *(*v1 + 64);
  v6 = *(*v1 + 56);
  v7 = *(*v1 + 48);
  v8 = *(*v1 + 40);
  v9 = *v1;
  *(*v1 + 88) = v0;

  (*(v7 + 8))(v6, v8);

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26136B828);
  }

  else
  {
    v10 = *(v2 + 56);
    v11 = *(v2 + 32);

    v12 = *(v9 + 8);

    return v12();
  }
}

uint64_t sub_26136B828()
{
  v1 = v0[11];
  v2 = v0[4];
  v3 = sub_26129B934();
  sub_26125A870(v3, v2, &qword_27FE9F560, &qword_2613A3CB0);
  v4 = sub_2613A124C();
  v5 = *(v4 - 8);
  v6 = (*(v5 + 48))(v2, 1, v4);
  v7 = v0[4];
  if (v6 == 1)
  {

    sub_26124C718(v7, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v8 = v1;
    v9 = sub_2613A122C();
    v10 = sub_2613A1D8C();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      v13 = v1;
      v14 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 4) = v14;
      *v12 = v14;
      _os_log_impl(&dword_261243000, v9, v10, "Could not fetch batch validation information from DB: %@", v11, 0xCu);
      sub_26124C718(v12, &qword_27FEA0410, &qword_2613AA780);
      MEMORY[0x266701350](v12, -1, -1);
      MEMORY[0x266701350](v11, -1, -1);
    }

    else
    {
    }

    (*(v5 + 8))(v0[4], v4);
  }

  v15 = v0[2];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0800, &qword_2613AD288);
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  v17 = v0[7];
  v18 = v0[4];

  v19 = v0[1];

  return v19();
}

uint64_t sub_26136BC30(int a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = sub_2613A18CC();
  v7 = v6;
  v3[4] = v6;
  a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_26136BD04;

  return sub_26136729C(v5, v7);
}

uint64_t sub_26136BD04(uint64_t a1)
{
  v5 = *v2;
  v4 = *v2;
  v6 = *(*v2 + 40);
  v7 = *(*v2 + 32);
  v8 = *(*v2 + 16);
  v9 = *v2;

  v10 = *(v4 + 24);
  if (v1)
  {
    sub_26139FB2C();
    sub_2613770D8(&qword_27FEA07F0, MEMORY[0x277D438E0]);
    v11 = swift_allocError();
    *v12 = a1;
    v13 = sub_26139EE6C();
    (*(v10 + 16))(v10, 0, v13);
  }

  else
  {
    (*(v10 + 16))(*(v4 + 24), a1, 0);
  }

  _Block_release(*(v5 + 24));
  v14 = *(v9 + 8);

  return v14();
}

void *sub_26136BF0C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v27 = a4;
  v8 = sub_26139F13C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v26 - v14;
  result = sub_261253410(a1, a2, a3);
  if (!v4)
  {
    v26[1] = 0;
    v17 = v27;
    if (result)
    {
      v18 = result;
      v19 = [result batchId];
      if (v19)
      {
        v20 = v19;
        sub_26139F11C();

        (*(v9 + 32))(v15, v13, v8);
        v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0800, &qword_2613AD288);
        v22 = *(v21 + 48);
        (*(v9 + 16))(v17, v15, v8);
        v23 = v18;
        v24 = [v18 partnerId];
        sub_26139F11C();

        (*(v9 + 8))(v15, v8);
        return (*(*(v21 - 8) + 56))(v17, 0, 1, v21);
      }
    }

    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0800, &qword_2613AD288);
    return (*(*(v25 - 8) + 56))(v17, 1, 1, v25);
  }

  return result;
}

void sub_26136C180(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v87 = a6;
  v86 = a5;
  v89[1] = *MEMORY[0x277D85DE8];
  v10 = sub_26139F13C();
  v85 = *(v10 - 8);
  v11 = *(v85 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v18 = &v77 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v77 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v77 - v22;
  v24 = v88;
  v25 = sub_26136C854(a1, a2, a4);
  if (!v24)
  {
    v27 = v26;
    v83 = a3;
    v84 = a1;
    v79 = v13;
    v80 = v10;
    v81 = v21;
    v28 = a2;
    v88 = 0;
    v29 = v25;
    v30 = sub_26129B934();
    if (v29 != v27)
    {
      v36 = v18;
      sub_26125A870(v30, v18, &qword_27FE9F560, &qword_2613A3CB0);
      v37 = sub_2613A124C();
      v38 = *(v37 - 8);
      if ((*(v38 + 48))(v18, 1, v37) == 1)
      {
        sub_26124C718(v18, &qword_27FE9F560, &qword_2613A3CB0);
      }

      else
      {
        v55 = sub_2613A122C();
        v56 = sub_2613A1D9C();
        if (os_log_type_enabled(v55, v56))
        {
          v57 = swift_slowAlloc();
          *v57 = 0;
          _os_log_impl(&dword_261243000, v55, v56, "No lock is needed for the last SAF transaction", v57, 2u);
          MEMORY[0x266701350](v57, -1, -1);
        }

        (*(v38 + 8))(v36, v37);
      }

      v58 = v87;
LABEL_25:
      *v58 = v29;
      v58[1] = v27;
      goto LABEL_26;
    }

    v78 = v27;
    v82 = v29;
    v31 = v30;
    sub_26125A870(v30, v23, &qword_27FE9F560, &qword_2613A3CB0);
    v32 = sub_2613A124C();
    v33 = *(v32 - 8);
    v34 = *(v33 + 48);
    v35 = v34(v23, 1, v32);
    v77 = v33;
    if (v35 == 1)
    {
      sub_26124C718(v23, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v39 = sub_2613A122C();
      v40 = sub_2613A1D9C();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        *v41 = 0;
        v42 = v40;
        v43 = v41;
        _os_log_impl(&dword_261243000, v39, v42, "Locking last SAF transaction to avoid decline", v41, 2u);
        MEMORY[0x266701350](v43, -1, -1);
      }

      (*(v33 + 8))(v23, v32);
    }

    v44 = *(v83 + OBJC_IVAR____TtC21ProximityReaderDaemon29PaymentReadResultStoreService_paymentContext);
    v46 = *(v44 + 80);
    v45 = *(v44 + 88);

    v47 = v28;
    v48 = v46;
    v49 = v88;
    sub_2612545BC(v28, v48, v45, v82);
    v51 = v50;

    if (!v49)
    {
      if (v51)
      {
        v88 = 0;
        v52 = v32;
        v53 = v81;
        sub_26125A870(v31, v81, &qword_27FE9F560, &qword_2613A3CB0);
        v83 = v52;
        v54 = v34(v53, 1, v52);
        v84 = v51;
        if (v54 == 1)
        {
          sub_26124C718(v53, &qword_27FE9F560, &qword_2613A3CB0);
          v29 = v82;
        }

        else
        {
          v59 = v51;
          v60 = sub_2613A122C();
          v61 = sub_2613A1D9C();

          if (os_log_type_enabled(v60, v61))
          {
            v62 = swift_slowAlloc();
            v63 = swift_slowAlloc();
            v89[0] = v63;
            *v62 = 136315138;
            v64 = [v59 transactionId];
            v65 = v79;
            sub_26139F11C();

            v66 = sub_26139F0DC();
            v68 = v67;
            (*(v85 + 8))(v65, v80);
            v69 = sub_26124C11C(v66, v68, v89);

            *(v62 + 4) = v69;
            _os_log_impl(&dword_261243000, v60, v61, "Adding batchID to last transaction: %s", v62, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v63);
            v53 = v81;
            MEMORY[0x266701350](v63, -1, -1);
            v70 = v62;
            v47 = v28;
            MEMORY[0x266701350](v70, -1, -1);
          }

          v29 = v82;
          (*(v77 + 8))(v53, v83);
        }

        v71 = sub_26139F10C();
        v72 = v84;
        [v84 setBatchId_];

        v89[0] = 0;
        if (![v47 save_])
        {
          v75 = v72;
          v76 = v89[0];
          sub_26139EE7C();

          swift_willThrow();
          goto LABEL_26;
        }

        v73 = v89[0];

        v58 = v87;
      }

      else
      {
        v58 = v87;
        v29 = v82;
      }

      v27 = v78;
      goto LABEL_25;
    }
  }

LABEL_26:
  v74 = *MEMORY[0x277D85DE8];
}

uint64_t sub_26136C854(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v52 = a3;
  v59 = a2;
  v60 = a1;
  v4 = sub_26139FB0C();
  v55 = *(v4 - 8);
  v5 = *(v55 + 64);
  MEMORY[0x28223BE20](v4);
  v56 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F280, &unk_2613A42B0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = (&v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v13 = (&v49 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v51 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v50 = &v49 - v19;
  MEMORY[0x28223BE20](v18);
  v21 = &v49 - v20;
  v22 = *(v3 + OBJC_IVAR____TtC21ProximityReaderDaemon29PaymentReadResultStoreService_paymentContext);
  v23 = *(v22 + 80);
  v24 = *(v22 + 88);

  v54 = sub_26129B934();
  sub_26125A870(v54, v21, &qword_27FE9F560, &qword_2613A3CB0);
  v25 = sub_2613A124C();
  v57 = *(v25 - 8);
  v58 = v25;
  v53 = *(v57 + 48);
  if (v53(v21, 1) == 1)
  {
    sub_26124C718(v21, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v26 = sub_2613A122C();
    v27 = sub_2613A1D9C();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v49 = v4;
      v29 = v28;
      *v28 = 0;
      _os_log_impl(&dword_261243000, v26, v27, "Counting SAF transactions", v28, 2u);
      v30 = v29;
      v4 = v49;
      MEMORY[0x266701350](v30, -1, -1);
    }

    (*(v57 + 8))(v21, v58);
  }

  v31 = sub_26139F13C();
  v32 = *(*(v31 - 8) + 56);
  v32(v13, 1, 1, v31);
  v32(v11, 1, 1, v31);
  v33 = v61;
  v34 = sub_261253720(v59, v23, v24, v13, v11);

  sub_26124C718(v11, &qword_27FE9F280, &unk_2613A42B0);
  result = sub_26124C718(v13, &qword_27FE9F280, &unk_2613A42B0);
  if (!v33)
  {
    if (v34 < 1)
    {
      v37 = v51;
      sub_26125A870(v54, v51, &qword_27FE9F560, &qword_2613A3CB0);
      if ((v53)(v37, 1, v58) == 1)
      {
        sub_26124C718(v37, &qword_27FE9F560, &qword_2613A3CB0);
      }

      else
      {
        v39 = sub_2613A122C();
        v40 = sub_2613A1D8C();
        if (os_log_type_enabled(v39, v40))
        {
          v41 = swift_slowAlloc();
          *v41 = 0;
          _os_log_impl(&dword_261243000, v39, v40, "No SAF transaction was found to generate the batch", v41, 2u);
          MEMORY[0x266701350](v41, -1, -1);
        }

        (*(v57 + 8))(v37, v58);
      }

      v42 = MEMORY[0x277D438A8];
    }

    else
    {
      v36 = v52;
      if ((v52 & 0x8000000000000000) == 0 && v34 >= v52)
      {
        if (v52)
        {
          return v52;
        }

        else
        {
          return v34;
        }
      }

      v38 = v50;
      sub_26125A870(v54, v50, &qword_27FE9F560, &qword_2613A3CB0);
      if ((v53)(v38, 1, v58) == 1)
      {
        sub_26124C718(v38, &qword_27FE9F560, &qword_2613A3CB0);
      }

      else
      {
        v43 = sub_2613A122C();
        v44 = sub_2613A1D8C();
        if (os_log_type_enabled(v43, v44))
        {
          v45 = swift_slowAlloc();
          *v45 = 134218240;
          *(v45 + 4) = v36;
          *(v45 + 12) = 2048;
          *(v45 + 14) = v34;
          _os_log_impl(&dword_261243000, v43, v44, "Requesting an invalid batch size [requested: %ld available: %ld]", v45, 0x16u);
          MEMORY[0x266701350](v45, -1, -1);
        }

        (*(v57 + 8))(v38, v58);
      }

      v42 = MEMORY[0x277D438B0];
    }

    (*(v55 + 104))(v56, *v42, v4);
    v46 = objc_allocWithZone(sub_26139FB2C());
    v47 = sub_26139FB3C();
    sub_2613770D8(&qword_27FEA07F0, MEMORY[0x277D438E0]);
    swift_allocError();
    *v48 = v47;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_26136CEE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[17] = a5;
  v6[18] = v5;
  v6[15] = a3;
  v6[16] = a4;
  v6[13] = a1;
  v6[14] = a2;
  v7 = sub_26139FB0C();
  v6[19] = v7;
  v8 = *(v7 - 8);
  v6[20] = v8;
  v9 = *(v8 + 64) + 15;
  v6[21] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0) - 8) + 64) + 15;
  v6[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26136CFE8);
}

uint64_t sub_26136CFE8()
{
  v1 = *(v0 + 136);
  v3 = *(v0 + 120);
  v2 = *(v0 + 128);
  v4 = *(v0 + 112);
  v5 = (*(v0 + 144) + OBJC_IVAR____TtC21ProximityReaderDaemon29PaymentReadResultStoreService_cardReaderAdapter);
  v6 = v5[3];
  v7 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v6);
  (*(v7 + 112))(v4, v3, v2, v1, v6, v7);
  v8 = *(v0 + 176);
  v9 = *(v0 + 168);
  v10 = *(v0 + 104);
  v11 = *(v0 + 16);
  v12 = *(v0 + 32);
  v13 = *(v0 + 48);
  *(v10 + 48) = *(v0 + 64);
  *(v10 + 16) = v12;
  *(v10 + 32) = v13;
  *v10 = v11;

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_26136D308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[7] = a5;
  v6[8] = v5;
  v6[5] = a3;
  v6[6] = a4;
  v6[3] = a1;
  v6[4] = a2;
  v7 = sub_2613A1EBC();
  v6[9] = v7;
  v8 = *(v7 - 8);
  v6[10] = v8;
  v9 = *(v8 + 64) + 15;
  v6[11] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0) - 8) + 64) + 15;
  v6[12] = swift_task_alloc();
  v6[13] = swift_task_alloc();
  v6[14] = swift_task_alloc();
  v6[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26136D42C);
}

uint64_t sub_26136D42C()
{
  v1 = v0[15];
  v2 = sub_26129B934();
  sub_26125A870(v2, v1, &qword_27FE9F560, &qword_2613A3CB0);
  v3 = sub_2613A124C();
  v0[16] = v3;
  v4 = *(v3 - 8);
  v0[17] = v4;
  v5 = *(v4 + 48);
  v0[18] = v5;
  v0[19] = (v4 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v5(v1, 1, v3) == 1)
  {
    sub_26124C718(v0[15], &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v6 = v0[15];
    v7 = sub_2613A122C();
    v8 = sub_2613A1D9C();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_261243000, v7, v8, "Checking if resign is needed", v9, 2u);
      MEMORY[0x266701350](v9, -1, -1);
    }

    v10 = v0[15];

    (*(v4 + 8))(v10, v3);
  }

  v11 = v0[6];
  v12 = v0[7];
  v13 = sub_26139F00C();
  v15 = v14;
  v0[20] = v13;
  v0[21] = v14;
  v0[22] = 0;
  v16 = v0[11];
  v18 = v0[4];
  v17 = v0[5];
  v19 = swift_allocObject();
  v0[23] = v19;
  v19[2] = v18;
  v19[3] = v17;
  v19[4] = v13;
  v19[5] = v15;

  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0838, &qword_2613AD410);
  sub_2612529C0(v16);
  v21 = swift_task_alloc();
  v0[24] = v21;
  *v21 = v0;
  v21[1] = sub_26136D6AC;
  v22 = v0[11];
  v23 = v0[3];

  return sub_261252A34((v0 + 2), v22, sub_261376FB8, v19, v23, v20);
}

uint64_t sub_26136D6AC()
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v4 = *v1;
  v2[25] = v0;

  v5 = v2[23];
  if (v0)
  {
    v6 = v2[21];
    (*(v2[10] + 8))(v2[11], v2[9]);

    v7 = sub_26136E454;
  }

  else
  {
    (*(v2[10] + 8))(v2[11], v2[9]);

    v7 = sub_26136D828;
  }

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_26136D828()
{
  v1 = v0[2];
  v0[26] = v1;
  if (*(v1 + 16))
  {
    if (!v0[22])
    {
      v3 = v0[18];
      v2 = v0[19];
      v4 = v0[16];
      v5 = v0[14];
      v6 = sub_26129B8EC();
      sub_26125A870(v6, v5, &qword_27FE9F560, &qword_2613A3CB0);
      if (v3(v5, 1, v4) == 1)
      {
        sub_26124C718(v0[14], &qword_27FE9F560, &qword_2613A3CB0);
      }

      else
      {
        v15 = v0[14];
        v16 = sub_2613A122C();
        v17 = sub_2613A1D9C();
        if (os_log_type_enabled(v16, v17))
        {
          v18 = swift_slowAlloc();
          *v18 = 0;
          _os_log_impl(&dword_261243000, v16, v17, "There are transactions that need to be signed with latest key", v18, 2u);
          MEMORY[0x266701350](v18, -1, -1);
        }

        v19 = v0[16];
        v20 = v0[17];
        v21 = v0[14];

        (*(v20 + 8))(v21, v19);
      }
    }

    v22 = swift_task_alloc();
    v0[27] = v22;
    *v22 = v0;
    v22[1] = sub_26136DCE0;
    v23 = v0[8];
    v24 = v0[3];

    return sub_26136F88C(v24, v1);
  }

  else
  {

    v7 = v0[21];
    v8 = v0[22];

    v9 = sub_26129B8EC();
    v11 = v0[18];
    v10 = v0[19];
    v12 = v0[16];
    if (v8 < 1)
    {
      v14 = v0[12];
      sub_26125A870(v9, v14, &qword_27FE9F560, &qword_2613A3CB0);
      if (v11(v14, 1, v12) == 1)
      {
        sub_26124C718(v0[12], &qword_27FE9F560, &qword_2613A3CB0);
      }

      else
      {
        v37 = v0[12];
        v38 = sub_2613A122C();
        v39 = sub_2613A1D9C();
        if (os_log_type_enabled(v38, v39))
        {
          v40 = swift_slowAlloc();
          *v40 = 0;
          _os_log_impl(&dword_261243000, v38, v39, "All transactions are signed with latest key", v40, 2u);
          MEMORY[0x266701350](v40, -1, -1);
        }

        v41 = v0[16];
        v42 = v0[17];
        v43 = v0[12];

        (*(v42 + 8))(v43, v41);
      }

      v45 = v0[14];
      v44 = v0[15];
      v47 = v0[12];
      v46 = v0[13];
      v48 = v0[11];

      v49 = v0[1];

      return v49();
    }

    else
    {
      v13 = v0[13];
      sub_26125A870(v9, v13, &qword_27FE9F560, &qword_2613A3CB0);
      if (v11(v13, 1, v12) == 1)
      {
        sub_26124C718(v0[13], &qword_27FE9F560, &qword_2613A3CB0);
      }

      else
      {
        v26 = v0[13];
        v27 = sub_2613A122C();
        v28 = sub_2613A1D9C();
        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          *v29 = 134217984;
          *(v29 + 4) = v8;
          _os_log_impl(&dword_261243000, v27, v28, "Transactions resigned: [%ld]", v29, 0xCu);
          MEMORY[0x266701350](v29, -1, -1);
        }

        v30 = v0[16];
        v31 = v0[17];
        v32 = v0[13];

        (*(v31 + 8))(v32, v30);
      }

      v33 = v0[8];
      type metadata accessor for SafMonitorEventDispatcher();
      v34 = *(v33 + OBJC_IVAR____TtC21ProximityReaderDaemon29PaymentReadResultStoreService_paymentContext);
      v35 = OBJC_IVAR____TtC21ProximityReaderDaemon29PaymentReadResultStoreService_cardReaderAdapter;
      v36 = swift_task_alloc();
      v0[28] = v36;
      *v36 = v0;
      v36[1] = sub_26136E2C0;

      return sub_26129FC78(v34, v33 + v35, v8);
    }
  }
}

uint64_t sub_26136DCE0()
{
  v2 = *v1;
  v3 = *(*v1 + 216);
  v4 = *v1;

  if (v0)
  {
    v5 = v2[26];
    v6 = v2[21];

    v8 = v2[14];
    v7 = v2[15];
    v10 = v2[12];
    v9 = v2[13];
    v11 = v2[11];

    v12 = *(v4 + 8);

    return v12();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_26136DE6C);
  }
}

uint64_t sub_26136DE6C()
{
  v1 = v0[22];
  v2 = *(v0[26] + 16);

  v4 = __OFADD__(v1, v2);
  v5 = v1 + v2;
  if (v4)
  {
    __break(1u);
  }

  else if (v2 >= sub_2613A0D6C())
  {
    v0[22] = v5;
    v13 = v0[20];
    v12 = v0[21];
    v14 = v0[11];
    v16 = v0[4];
    v15 = v0[5];
    v17 = swift_allocObject();
    v0[23] = v17;
    v17[2] = v16;
    v17[3] = v15;
    v17[4] = v13;
    v17[5] = v12;

    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0838, &qword_2613AD410);
    sub_2612529C0(v14);
    v19 = swift_task_alloc();
    v0[24] = v19;
    *v19 = v0;
    v19[1] = sub_26136D6AC;
    v20 = v0[11];
    v21 = v0[3];

    return sub_261252A34((v0 + 2), v20, sub_261376FB8, v17, v21, v18);
  }

  else
  {
    v6 = v0[21];

    v7 = sub_26129B8EC();
    v9 = v0[18];
    v8 = v0[19];
    v10 = v0[16];
    if (v5 < 1)
    {
      v22 = v0[12];
      sub_26125A870(v7, v22, &qword_27FE9F560, &qword_2613A3CB0);
      if (v9(v22, 1, v10) == 1)
      {
        sub_26124C718(v0[12], &qword_27FE9F560, &qword_2613A3CB0);
      }

      else
      {
        v34 = v0[12];
        v35 = sub_2613A122C();
        v36 = sub_2613A1D9C();
        if (os_log_type_enabled(v35, v36))
        {
          v37 = swift_slowAlloc();
          *v37 = 0;
          _os_log_impl(&dword_261243000, v35, v36, "All transactions are signed with latest key", v37, 2u);
          MEMORY[0x266701350](v37, -1, -1);
        }

        v38 = v0[16];
        v39 = v0[17];
        v40 = v0[12];

        (*(v39 + 8))(v40, v38);
      }

      v42 = v0[14];
      v41 = v0[15];
      v44 = v0[12];
      v43 = v0[13];
      v45 = v0[11];

      v46 = v0[1];

      return v46();
    }

    else
    {
      v11 = v0[13];
      sub_26125A870(v7, v11, &qword_27FE9F560, &qword_2613A3CB0);
      if (v9(v11, 1, v10) == 1)
      {
        sub_26124C718(v0[13], &qword_27FE9F560, &qword_2613A3CB0);
      }

      else
      {
        v23 = v0[13];
        v24 = sub_2613A122C();
        v25 = sub_2613A1D9C();
        if (os_log_type_enabled(v24, v25))
        {
          v26 = swift_slowAlloc();
          *v26 = 134217984;
          *(v26 + 4) = v5;
          _os_log_impl(&dword_261243000, v24, v25, "Transactions resigned: [%ld]", v26, 0xCu);
          MEMORY[0x266701350](v26, -1, -1);
        }

        v27 = v0[16];
        v28 = v0[17];
        v29 = v0[13];

        (*(v28 + 8))(v29, v27);
      }

      v30 = v0[8];
      type metadata accessor for SafMonitorEventDispatcher();
      v31 = *(v30 + OBJC_IVAR____TtC21ProximityReaderDaemon29PaymentReadResultStoreService_paymentContext);
      v32 = OBJC_IVAR____TtC21ProximityReaderDaemon29PaymentReadResultStoreService_cardReaderAdapter;
      v33 = swift_task_alloc();
      v0[28] = v33;
      *v33 = v0;
      v33[1] = sub_26136E2C0;

      return sub_26129FC78(v31, v30 + v32, v5);
    }
  }

  return result;
}

uint64_t sub_26136E2C0()
{
  v1 = *v0;
  v2 = *(*v0 + 224);
  v10 = *v0;

  v3 = v1[15];
  v4 = v1[14];
  v5 = v1[13];
  v6 = v1[12];
  v7 = v1[11];

  v8 = *(v10 + 8);

  return v8();
}

uint64_t sub_26136E454()
{
  v1 = v0[25];
  v3 = v0[14];
  v2 = v0[15];
  v5 = v0[12];
  v4 = v0[13];
  v6 = v0[11];

  v7 = v0[1];

  return v7();
}

uint64_t sub_26136E4F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[13] = a5;
  v6[14] = a6;
  v6[11] = a3;
  v6[12] = a4;
  v6[9] = a1;
  v6[10] = a2;
  v7 = sub_2613A1EBC();
  v6[15] = v7;
  v8 = *(v7 - 8);
  v6[16] = v8;
  v9 = *(v8 + 64) + 15;
  v6[17] = swift_task_alloc();
  v10 = sub_26139F13C();
  v6[18] = v10;
  v11 = *(v10 - 8);
  v6[19] = v11;
  v6[20] = *(v11 + 64);
  v6[21] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0) - 8) + 64) + 15;
  v6[22] = swift_task_alloc();
  v6[23] = swift_task_alloc();
  v6[24] = swift_task_alloc();
  v6[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26136E678);
}

uint64_t sub_26136E678()
{
  v1 = v0[25];
  v2 = sub_26129B934();
  v0[26] = v2;
  sub_26125A870(v2, v1, &qword_27FE9F560, &qword_2613A3CB0);
  v3 = sub_2613A124C();
  v0[27] = v3;
  v4 = *(v3 - 8);
  v0[28] = v4;
  v5 = *(v4 + 48);
  v0[29] = v5;
  v0[30] = (v4 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v6 = v5(v1, 1, v3);
  v7 = v0[25];
  if (v6 == 1)
  {
    sub_26124C718(v0[25], &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v49 = v0[13];
    v8 = sub_26125A798();
    v9 = sub_261291AA8();
    sub_26129BC3C(v8 & 1, v49, 0xD000000000000061, 0x80000002613BD950, v9, v10);

    (*(v4 + 8))(v7, v3);
  }

  v11 = v0[24];
  v12 = v0[12];
  v13 = swift_allocObject();
  v0[31] = v13;
  *(v13 + 16) = 0;
  v14 = (v13 + 16);
  v15 = swift_allocObject();
  v0[32] = v15;
  *(v15 + 16) = v12;
  sub_26125A870(v2, v11, &qword_27FE9F560, &qword_2613A3CB0);
  if (v5(v11, 1, v3) == 1)
  {
    sub_26124C718(v0[24], &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v16 = v0[24];
    v17 = sub_2613A122C();
    v18 = sub_2613A1D7C();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = v4;
      v20 = v0[10];
      v21 = swift_slowAlloc();
      *v21 = 134217984;
      *(v21 + 4) = v20;
      v4 = v19;
      _os_log_impl(&dword_261243000, v17, v18, "Transactions to load: %ld", v21, 0xCu);
      MEMORY[0x266701350](v21, -1, -1);
    }

    v22 = v0[24];

    (*(v4 + 8))(v22, v3);
  }

  v23 = v0[10];
  swift_beginAccess();
  swift_beginAccess();
  if (*v14 >= v23)
  {
    v41 = v0[31];
    v40 = v0[32];
    v43 = v0[24];
    v42 = v0[25];
    v45 = v0[22];
    v44 = v0[23];
    v46 = v0[21];
    v47 = v0[17];

    v48 = v0[1];

    return v48();
  }

  else
  {
    v24 = v0[19];
    v25 = *(v24 + 16);
    v0[33] = v25;
    v27 = v0[31];
    v26 = v0[32];
    v28 = v0[21];
    v30 = v0[17];
    v29 = v0[18];
    v31 = v0[13];
    v25(v28, v0[11], v29);
    v32 = (*(v24 + 80) + 40) & ~*(v24 + 80);
    v33 = swift_allocObject();
    v0[34] = v33;
    *(v33 + 2) = v31;
    *(v33 + 3) = v26;
    *(v33 + 4) = v27;
    (*(v24 + 32))(&v33[v32], v28, v29);
    v34 = v31;

    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0820, &qword_2613AD3E8);
    sub_2612529C0(v30);
    v36 = swift_task_alloc();
    v0[35] = v36;
    *v36 = v0;
    v36[1] = sub_26136EB48;
    v37 = v0[17];
    v38 = v0[9];

    return sub_261252A34((v0 + 8), v37, sub_261376EE8, v33, v38, v35);
  }
}

uint64_t sub_26136EB48()
{
  v2 = *v1;
  v3 = *(*v1 + 280);
  v4 = *v1;
  *(*v1 + 288) = v0;

  v5 = v2[34];
  (*(v2[16] + 8))(v2[17], v2[15]);

  if (v0)
  {
    v6 = sub_26136EF30;
  }

  else
  {
    v6 = sub_26136ECCC;
  }

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_26136ECCC()
{
  v1 = v0[8];
  v0[37] = v1;
  if (v1 >> 62)
  {
    if (sub_2613A221C())
    {
      goto LABEL_3;
    }
  }

  else if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    v2 = swift_task_alloc();
    v0[38] = v2;
    *v2 = v0;
    v2[1] = sub_26136EFE8;
    v3 = v0[14];

    return sub_261363C5C(v1, v3);
  }

  v6 = v0[29];
  v5 = v0[30];
  v8 = v0[26];
  v7 = v0[27];
  v9 = v0[23];

  sub_26125A870(v8, v9, &qword_27FE9F560, &qword_2613A3CB0);
  if (v6(v9, 1, v7) == 1)
  {
    sub_26124C718(v0[23], &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v10 = v0[23];
    v11 = sub_2613A122C();
    v12 = sub_2613A1D8C();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_261243000, v11, v12, "Less SAF transactions than expected", v13, 2u);
      MEMORY[0x266701350](v13, -1, -1);
    }

    v14 = v0[27];
    v15 = v0[28];
    v16 = v0[23];

    (*(v15 + 8))(v16, v14);
  }

  v18 = v0[31];
  v17 = v0[32];
  v20 = v0[24];
  v19 = v0[25];
  v22 = v0[22];
  v21 = v0[23];
  v23 = v0[21];
  v24 = v0[17];

  v25 = v0[1];

  return v25();
}

uint64_t sub_26136EF30()
{
  v2 = v0[31];
  v1 = v0[32];

  v3 = v0[36];
  v5 = v0[24];
  v4 = v0[25];
  v7 = v0[22];
  v6 = v0[23];
  v8 = v0[21];
  v9 = v0[17];

  v10 = v0[1];

  return v10();
}

uint64_t sub_26136EFE8()
{
  v2 = *(*v1 + 304);
  v5 = *v1;
  *(*v1 + 312) = v0;

  if (v0)
  {
    v3 = sub_26136F4C4;
  }

  else
  {
    v3 = sub_26136F0FC;
  }

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_26136F0FC()
{
  v1 = *(v0 + 296);
  if (v1 >> 62)
  {
    v2 = sub_2613A221C();
    v3 = *(v0 + 296);
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = *(v0 + 248);

  v6 = *(v4 + 16);
  v7 = __OFADD__(v6, v2);
  v8 = v6 + v2;
  if (v7)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    return result;
  }

  v9 = *(v0 + 240);
  v10 = *(v0 + 232);
  v11 = *(v0 + 208);
  v12 = *(v0 + 216);
  v13 = *(v0 + 176);
  *(*(v0 + 248) + 16) = v8;
  sub_26125A870(v11, v13, &qword_27FE9F560, &qword_2613A3CB0);
  if (v10(v13, 1, v12) == 1)
  {
    result = sub_26124C718(*(v0 + 176), &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v14 = *(v0 + 248);
    v15 = *(v0 + 176);

    v16 = sub_2613A122C();
    v17 = sub_2613A1D7C();
    v18 = os_log_type_enabled(v16, v17);
    v19 = *(v0 + 248);
    if (v18)
    {
      v20 = *(v0 + 80);
      v21 = swift_slowAlloc();
      *v21 = 134218240;
      *(v21 + 4) = *(v19 + 16);

      *(v21 + 12) = 2048;
      *(v21 + 14) = v20;
      _os_log_impl(&dword_261243000, v16, v17, "Streamed: %ld from: %ld transactions", v21, 0x16u);
      MEMORY[0x266701350](v21, -1, -1);
    }

    else
    {
      v22 = *(v0 + 248);
    }

    result = (*(*(v0 + 224) + 8))(*(v0 + 176), *(v0 + 216));
  }

  v23 = *(v0 + 80);
  v24 = *(*(v0 + 248) + 16);
  v25 = v23 - v24;
  if (__OFSUB__(v23, v24))
  {
    goto LABEL_22;
  }

  if (v25 >= *(v0 + 96))
  {
    v25 = *(v0 + 96);
  }

  *(*(v0 + 256) + 16) = v25;
  if (v24 >= v23)
  {
    v41 = *(v0 + 248);
    v40 = *(v0 + 256);
    v43 = *(v0 + 192);
    v42 = *(v0 + 200);
    v45 = *(v0 + 176);
    v44 = *(v0 + 184);
    v46 = *(v0 + 168);
    v47 = *(v0 + 136);

    v48 = *(v0 + 8);

    return v48();
  }

  else
  {
    v26 = *(v0 + 256);
    v27 = *(v0 + 248);
    v28 = *(v0 + 168);
    v29 = *(v0 + 144);
    v30 = *(v0 + 152);
    v31 = *(v0 + 136);
    v32 = *(v0 + 104);
    (*(v0 + 264))(v28, *(v0 + 88), v29);
    v33 = (*(v30 + 80) + 40) & ~*(v30 + 80);
    v34 = swift_allocObject();
    *(v0 + 272) = v34;
    *(v34 + 2) = v32;
    *(v34 + 3) = v26;
    *(v34 + 4) = v27;
    (*(v30 + 32))(&v34[v33], v28, v29);
    v35 = v32;

    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0820, &qword_2613AD3E8);
    sub_2612529C0(v31);
    v37 = swift_task_alloc();
    *(v0 + 280) = v37;
    *v37 = v0;
    v37[1] = sub_26136EB48;
    v38 = *(v0 + 136);
    v39 = *(v0 + 72);

    return sub_261252A34(v0 + 64, v38, sub_261376EE8, v34, v39, v36);
  }
}

uint64_t sub_26136F4C4()
{
  v1 = v0[37];
  v2 = v0[31];
  v3 = v0[32];

  v4 = v0[39];
  v6 = v0[24];
  v5 = v0[25];
  v8 = v0[22];
  v7 = v0[23];
  v9 = v0[21];
  v10 = v0[17];

  v11 = v0[1];

  return v11();
}

void sub_26136F588(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, void *a6@<X8>)
{
  v46 = a5;
  v44 = a6;
  v10 = type metadata accessor for SignableTransaction(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = (&v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = MEMORY[0x266700BB0](v13);
  v17 = sub_2613A0D6C();
  v18 = v47;
  v19 = sub_261255800(a1, a2, a3, a4, v46, v17);
  if (v18)
  {
    objc_autoreleasePoolPop(v16);
    return;
  }

  v43 = v16;
  v47 = v10;
  if (!(v19 >> 62))
  {
    v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v22 = v43;
    v21 = v44;
    if (v20)
    {
      goto LABEL_5;
    }

LABEL_15:

    v25 = MEMORY[0x277D84F90];
LABEL_16:
    objc_autoreleasePoolPop(v22);
    *v21 = v25;
    return;
  }

  v41 = v19;
  v20 = sub_2613A221C();
  v19 = v41;
  v22 = v43;
  v21 = v44;
  if (!v20)
  {
    goto LABEL_15;
  }

LABEL_5:
  v23 = v19;
  v42 = 0;
  v48 = MEMORY[0x277D84F90];
  sub_2613720CC(0, v20 & ~(v20 >> 63), 0);
  if ((v20 & 0x8000000000000000) == 0)
  {
    v24 = 0;
    v25 = v48;
    v26 = v23;
    v45 = v23 & 0xC000000000000001;
    v46 = v23;
    do
    {
      if (v45)
      {
        v27 = MEMORY[0x2667005C0](v24, v26);
      }

      else
      {
        v27 = *(v26 + 8 * v24 + 32);
      }

      v28 = v27;
      v29 = [v27 cardReaderBlob];
      v30 = sub_26139F01C();
      v32 = v31;

      *v15 = v30;
      v15[1] = v32;
      v33 = [v28 generalCardData];
      v34 = sub_26139F01C();
      v36 = v35;

      v15[2] = v34;
      v15[3] = v36;
      v37 = [v28 transactionId];
      v38 = v15 + *(v47 + 24);
      sub_26139F11C();

      v48 = v25;
      v40 = *(v25 + 16);
      v39 = *(v25 + 24);
      if (v40 >= v39 >> 1)
      {
        sub_2613720CC(v39 > 1, v40 + 1, 1);
        v25 = v48;
      }

      ++v24;
      *(v25 + 16) = v40 + 1;
      sub_261377120(v15, v25 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v40, type metadata accessor for SignableTransaction);
      v26 = v46;
    }

    while (v20 != v24);

    v22 = v43;
    v21 = v44;
    goto LABEL_16;
  }

  __break(1u);
}

uint64_t sub_26136F88C(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  v4 = sub_26139FB0C();
  v3[9] = v4;
  v5 = *(v4 - 8);
  v3[10] = v5;
  v6 = *(v5 + 64) + 15;
  v3[11] = swift_task_alloc();
  v7 = sub_26139F13C();
  v3[12] = v7;
  v8 = *(v7 - 8);
  v3[13] = v8;
  v9 = *(v8 + 64) + 15;
  v3[14] = swift_task_alloc();
  v10 = sub_2613A1EBC();
  v3[15] = v10;
  v11 = *(v10 - 8);
  v3[16] = v11;
  v12 = *(v11 + 64) + 15;
  v3[17] = swift_task_alloc();
  v13 = type metadata accessor for SignableTransaction(0);
  v3[18] = v13;
  v14 = *(v13 - 8);
  v3[19] = v14;
  v15 = *(v14 + 64) + 15;
  v3[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26136FA64);
}

unint64_t sub_26136FA64()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = *(v1 + 16);
  if (v3)
  {
    v63 = &v2[OBJC_IVAR____TtC21ProximityReaderDaemon29PaymentReadResultStoreService_cardReaderAdapter];
    v4 = v0[19];
    v61 = v0[20];
    v62 = OBJC_IVAR____TtC21ProximityReaderDaemon29PaymentReadResultStoreService_paymentContext;
    v60 = v0[18];
    v5 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v57 = v0[13];
    v58 = *(v4 + 72);
    v65 = (v57 + 16);
    v6 = MEMORY[0x277D84F98];
    v59 = v0[8];
    while (1)
    {
      v67 = v3;
      v71 = v6;
      v12 = v0[20];
      v13 = v0[14];
      v14 = v0[12];
      v66 = v5;
      sub_2613765A4(v5, v12, type metadata accessor for SignableTransaction);
      v15 = *(v60 + 24);
      v64 = *v65;
      (*v65)(v13, &v12[v15], v14);
      v17 = *(v63 + 3);
      v16 = *(v63 + 4);
      __swift_project_boxed_opaque_existential_1(v63, v17);
      v70 = *v12;
      v68 = v61[2];
      v69 = v61[1];
      v18 = *&v2[v62];
      v19 = v61[3];
      v21 = *(v18 + 64);
      v20 = *(v18 + 72);
      v22 = *(v16 + 104);

      v23 = v22(v70, v69, v68, v19, &v12[v15], v21, v20, v17, v16);
      v25 = v24;
      v27 = v26;
      v29 = v28;
      v30 = v0;
      v31 = v0[14];

      v6 = v71;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      result = sub_26128A6E4(v31);
      v35 = v71[2];
      v36 = (v34 & 1) == 0;
      v37 = __OFADD__(v35, v36);
      v38 = v35 + v36;
      if (v37)
      {
        __break(1u);
LABEL_23:
        __break(1u);
        return result;
      }

      v39 = v34;
      v0 = v30;
      if (v71[3] >= v38)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v48 = result;
          sub_2613726C8();
          result = v48;
          v6 = v71;
        }
      }

      else
      {
        v40 = v30[14];
        sub_2613722C4(v38, isUniquelyReferenced_nonNull_native);
        v6 = v71;
        result = sub_26128A6E4(v40);
        if ((v39 & 1) != (v41 & 1))
        {
          v56 = v0[12];

          return sub_2613A249C();
        }
      }

      v42 = v0[14];
      v43 = v0[12];
      if (v39)
      {
        v7 = (v6[7] + 32 * result);
        v8 = *v7;
        v9 = v7[1];
        v10 = v7[2];
        v11 = v7[3];
        *v7 = v23;
        v7[1] = v25;
        v7[2] = v27;
        v7[3] = v29;
        sub_26124C6C4(v8, v9);
        sub_26124C6C4(v10, v11);
        (*(v57 + 8))(v42, v43);
      }

      else
      {
        v6[(result >> 6) + 8] |= 1 << result;
        v44 = result;
        v64(v6[6] + *(v57 + 72) * result, v42, v43);
        v45 = (v6[7] + 32 * v44);
        *v45 = v23;
        v45[1] = v25;
        v45[2] = v27;
        v45[3] = v29;
        result = (*(v57 + 8))(v42, v43);
        v46 = v6[2];
        v37 = __OFADD__(v46, 1);
        v47 = v46 + 1;
        if (v37)
        {
          goto LABEL_23;
        }

        v6[2] = v47;
      }

      sub_261376698(v0[20], type metadata accessor for SignableTransaction);
      v2 = v59;
      v5 = v66 + v58;
      v3 = v67 - 1;
      if (v67 == 1)
      {
        v2 = v0[8];
        goto LABEL_16;
      }
    }
  }

  v6 = MEMORY[0x277D84F98];
LABEL_16:
  v49 = v0[17];
  v50 = swift_allocObject();
  v0[21] = v50;
  *(v50 + 16) = v2;
  *(v50 + 24) = v6;
  v51 = v2;
  v52 = MEMORY[0x277D84F78];
  sub_2612529C0(v49);
  v53 = swift_task_alloc();
  v0[22] = v53;
  *v53 = v0;
  v53[1] = sub_261370058;
  v54 = v0[17];
  v55 = v0[6];

  return sub_261252A34(v53, v54, sub_261377048, v50, v55, v52 + 8);
}

uint64_t sub_261370058()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v4 = *v1;
  *(*v1 + 184) = v0;

  v5 = v2[21];
  (*(v2[16] + 8))(v2[17], v2[15]);

  if (v0)
  {
    v6 = sub_26137026C;
  }

  else
  {
    v6 = sub_2613701DC;
  }

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_2613701DC()
{
  v1 = v0[20];
  v2 = v0[17];
  v3 = v0[14];
  v4 = v0[11];

  v5 = v0[1];

  return v5();
}

uint64_t sub_26137026C()
{
  v1 = v0[23];
  v2 = v0[20];
  v3 = v0[17];
  v4 = v0[14];
  v5 = v0[11];

  v6 = v0[1];

  return v6();
}

uint64_t sub_2613702FC(uint64_t a1, id a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = v5;
  v88[5] = *MEMORY[0x277D85DE8];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v81 = v71 - v14;
  v87 = sub_26139F13C();
  v85 = *(v87 - 8);
  v15 = *(v85 + 64);
  v16 = MEMORY[0x28223BE20](v87);
  v75 = v71 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v86 = v71 - v18;
  v19 = *(a3 + OBJC_IVAR____TtC21ProximityReaderDaemon29PaymentReadResultStoreService_paymentContext);
  v20 = *(v19 + 80);
  v21 = *(v19 + 88);
  v22 = *(a4 + 16);
  v80 = a4;
  if (v22)
  {
    v82 = v20;
    v83 = a1;
    v84 = v7;
    v73 = a2;
    v74 = a5;
    v23 = sub_261371FD0(v22, 0);
    v24 = sub_261372970(v88, (v23 + ((*(v85 + 80) + 32) & ~*(v85 + 80))), v22, a4);
    v25 = v88[1];
    a2 = v88[2];
    a5 = v88[3];
    v26 = v88[4];

    sub_2612BF078();
    if (v24 != v22)
    {
      __break(1u);
      goto LABEL_26;
    }

    a2 = v73;
    a5 = v74;
    a4 = v80;
    v7 = v84;
    v20 = v82;
  }

  else
  {

    v23 = MEMORY[0x277D84F90];
  }

  v27 = v20;
  v28 = v7;
  v25 = sub_26125431C(a2, v27, v21, v23);
  v26 = v28;

  v22 = v86;
  if (v28)
  {
    goto LABEL_6;
  }

  if (v25 >> 62)
  {
LABEL_26:
    v31 = sub_2613A221C();
    v32 = v81;
    if (v31)
    {
      goto LABEL_9;
    }

    goto LABEL_27;
  }

  v31 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v32 = v81;
  if (v31)
  {
LABEL_9:
    v84 = v25;
    v71[1] = v26;
    v73 = a2;
    v74 = a5;
    if (v31 < 1)
    {
      __break(1u);
    }

    v33 = 0;
    v82 = v84 & 0xC000000000000001;
    v85 += 8;
    v34 = &qword_27FE9F560;
    *&v30 = 136315138;
    v72 = v30;
    v83 = v31;
    do
    {
      if (v82)
      {
        v35 = MEMORY[0x2667005C0](v33, v84);
      }

      else
      {
        v35 = *(v84 + 8 * v33 + 32);
      }

      v36 = v35;
      v37 = [v35 transactionId];
      sub_26139F11C();

      if (*(a4 + 16) && (v38 = sub_26128A6E4(v22), (v39 & 1) != 0))
      {
        v40 = (*(a4 + 56) + 32 * v38);
        v41 = *v40;
        v42 = v40[1];
        v43 = v40[2];
        v44 = v40[3];
        sub_26124C778(*v40, v42);
        sub_26124C778(v43, v44);
        (*v85)(v22, v87);
        v45 = sub_26139EFFC();
        [v36 setSignature_];

        sub_26139F00C();
        v46 = sub_2613A189C();

        [v36 setKeyId_];

        v47 = v41;
        v32 = v81;
        v48 = v42;
        v34 = &qword_27FE9F560;
        sub_26124C6C4(v47, v48);
        sub_26124C6C4(v43, v44);
      }

      else
      {
        v49 = *v85;
        (*v85)(v22, v87);
        v50 = sub_26129B934();
        sub_26125A870(v50, v32, v34, &qword_2613A3CB0);
        v51 = sub_2613A124C();
        v52 = v34;
        v53 = *(v51 - 8);
        if ((*(v53 + 48))(v32, 1, v51) == 1)
        {

          sub_26124C718(v32, v52, &qword_2613A3CB0);
          v34 = v52;
        }

        else
        {
          v54 = v36;
          v55 = sub_2613A122C();
          v56 = sub_2613A1D8C();

          if (os_log_type_enabled(v55, v56))
          {
            v57 = swift_slowAlloc();
            v77 = v57;
            v78 = swift_slowAlloc();
            v88[0] = v78;
            *v57 = v72;
            v58 = [v54 transactionId];
            v76 = v56;
            v59 = v58;
            v79 = v54;
            v60 = v75;
            sub_26139F11C();

            sub_2613770D8(&qword_27FE9F570, MEMORY[0x277CC95F0]);
            v61 = v87;
            v62 = sub_2613A23EC();
            v64 = v63;
            v49(v60, v61);
            v65 = sub_26124C11C(v62, v64, v88);
            a4 = v80;

            v66 = v77;
            *(v77 + 1) = v65;
            v67 = v66;
            _os_log_impl(&dword_261243000, v55, v76, "Could not find transaction: %s to add new signature", v66, 0xCu);
            v68 = v78;
            __swift_destroy_boxed_opaque_existential_0Tm(v78);
            MEMORY[0x266701350](v68, -1, -1);
            v32 = v81;
            MEMORY[0x266701350](v67, -1, -1);
          }

          else
          {
          }

          (*(v53 + 8))(v32, v51);
          v34 = &qword_27FE9F560;
        }
      }

      ++v33;
      v22 = v86;
    }

    while (v83 != v33);

    a2 = v73;
    a5 = v74;
    goto LABEL_28;
  }

LABEL_27:

LABEL_28:
  result = [a2 hasChanges];
  if ((result & 1) == 0)
  {
    goto LABEL_31;
  }

  v88[0] = 0;
  if ([a2 save_])
  {
    result = v88[0];
    goto LABEL_31;
  }

  v70 = v88[0];
  v26 = sub_26139EE7C();

  result = swift_willThrow();
LABEL_6:
  *a5 = v26;
LABEL_31:
  v69 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_261370A5C(void *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, void *a6@<X8>)
{
  v41 = a6;
  v42 = a5;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F280, &unk_2613A42B0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v40 - v14;
  v43 = MEMORY[0x266700BB0](v13);
  v16 = *(a2 + OBJC_IVAR____TtC21ProximityReaderDaemon29PaymentReadResultStoreService_paymentContext);
  v17 = *(v16 + 80);
  v18 = *(v16 + 88);
  v19 = sub_26139F13C();
  (*(*(v19 - 8) + 56))(v15, 1, 1, v19);
  swift_beginAccess();
  v20 = *(a3 + 16);
  swift_beginAccess();
  v21 = *(a4 + 16);

  v22 = sub_261253D6C();
  v23 = a1;
  v24 = sub_261253D74(a1, v17, v18, v15, v20, v21, v22 & 1);
  if (v6)
  {
    sub_26124C718(v15, &qword_27FE9F280, &unk_2613A42B0);
    v25 = v43;

    [a1 reset];
    objc_autoreleasePoolPop(v25);
    return;
  }

  v26 = v24;
  v27 = v42;
  sub_26124C718(v15, &qword_27FE9F280, &unk_2613A42B0);

  if (v26 >> 62)
  {
    v30 = sub_2613A221C();
    v28 = v27;
    if (v30)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v28 = v27;
    if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_5:
      v29 = v23;
      sub_261255D18(v23, v28, v26);
      goto LABEL_8;
    }
  }

  v29 = v23;
LABEL_8:
  if (!(v26 >> 62))
  {
    v31 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v31)
    {
      goto LABEL_10;
    }

LABEL_16:

    v35 = MEMORY[0x277D84F90];
LABEL_20:
    v39 = v41;
    [v29 reset];
    objc_autoreleasePoolPop(v43);
    *v39 = v35;
    return;
  }

  v31 = sub_2613A221C();
  if (!v31)
  {
    goto LABEL_16;
  }

LABEL_10:
  v44 = MEMORY[0x277D84F90];
  sub_2613A219C();
  if ((v31 & 0x8000000000000000) == 0)
  {
    if ((v26 & 0xC000000000000001) != 0)
    {
      v32 = 0;
      do
      {
        v33 = v32 + 1;
        MEMORY[0x2667005C0]();
        sub_2612526DC();
        swift_unknownObjectRelease();
        sub_2613A217C();
        v34 = *(v44 + 16);
        sub_2613A21AC();
        sub_2613A21BC();
        sub_2613A218C();
        v32 = v33;
      }

      while (v31 != v33);
    }

    else
    {
      v36 = 32;
      do
      {
        v37 = *(v26 + v36);
        sub_2612526DC();

        sub_2613A217C();
        v38 = *(v44 + 16);
        sub_2613A21AC();
        sub_2613A21BC();
        sub_2613A218C();
        v36 += 8;
        --v31;
      }

      while (v31);
    }

    v35 = v44;
    goto LABEL_20;
  }

  __break(1u);
}

uint64_t sub_261370DD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v102 = a1;
  v94 = a4;
  v6 = sub_26139FB0C();
  v96 = *(v6 - 8);
  v97 = v6;
  v7 = *(v96 + 64);
  MEMORY[0x28223BE20](v6);
  v95 = &v88 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v90 = &v88 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v100 = &v88 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F280, &unk_2613A42B0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v88 - v16;
  v18 = sub_26139F13C();
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18);
  v93 = &v88 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v92 = &v88 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v91 = &v88 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v88 - v27;
  v29 = MEMORY[0x28223BE20](v26);
  v31 = &v88 - v30;
  MEMORY[0x28223BE20](v29);
  v33 = &v88 - v32;
  v34 = *(a3 + OBJC_IVAR____TtC21ProximityReaderDaemon29PaymentReadResultStoreService_paymentContext);
  v35 = *(v34 + 80);
  v36 = *(v34 + 88);
  v99 = v37;
  (*(v37 + 56))(v17, 1, 1, v18);

  v98 = a2;
  v38 = v101;
  v39 = sub_261257344(a2, v35, v36, v17);
  sub_26124C718(v17, &qword_27FE9F280, &unk_2613A42B0);

  if (!v38)
  {
    v88 = v28;
    v89 = 0;
    v41 = v100;
    v101 = v33;
    if (v39)
    {
      v42 = v18;
      v43 = [v39 batchId];

      sub_26139F11C();
      v44 = v99;
      v45 = *(v99 + 32);
      v46 = v101;
      v45(v101, v31, v42);
      v47 = *(v34 + 80);
      v48 = *(v34 + 88);

      v49 = v47;
      v50 = v89;
      v51 = sub_261253210(v98, v49, v48);
      if (v50)
      {
        (*(v44 + 8))(v46, v42);
      }

      else
      {
        v55 = v51;

        if (v55)
        {
          v56 = [v55 partnerId];

          v57 = v91;
          sub_26139F11C();

          v58 = v88;
          v45(v88, v57, v42);
          v59 = v99;
          v60 = *(v99 + 16);
          v61 = v92;
          v62 = v101;
          v60(v92, v101, v42);
          v63 = v93;
          v60(v93, v58, v42);
          sub_26129D54C(v61, v63, v94);
          v64 = *(v59 + 8);
          v64(v58, v42);
          return (v64)(v62, v42);
        }

        else
        {
          v71 = v42;
          v72 = sub_26129B934();
          v73 = v90;
          sub_26125A870(v72, v90, &qword_27FE9F560, &qword_2613A3CB0);
          v74 = sub_2613A124C();
          v75 = *(v74 - 8);
          if ((*(v75 + 48))(v73, 1, v74) == 1)
          {
            sub_26124C718(v73, &qword_27FE9F560, &qword_2613A3CB0);
            v77 = v95;
            v76 = v96;
            v78 = v97;
            v79 = v99;
          }

          else
          {
            v80 = sub_2613A122C();
            v81 = sub_2613A1D8C();
            v82 = os_log_type_enabled(v80, v81);
            v79 = v99;
            if (v82)
            {
              v83 = swift_slowAlloc();
              *v83 = 0;
              _os_log_impl(&dword_261243000, v80, v81, "Batch is empty", v83, 2u);
              MEMORY[0x266701350](v83, -1, -1);
            }

            (*(v75 + 8))(v73, v74);
            v77 = v95;
            v76 = v96;
            v78 = v97;
          }

          v84 = v101;
          (*(v76 + 104))(v77, *MEMORY[0x277D438A0], v78);
          v85 = objc_allocWithZone(sub_26139FB2C());
          v86 = sub_26139FB3C();
          sub_2613770D8(&qword_27FEA07F0, MEMORY[0x277D438E0]);
          swift_allocError();
          *v87 = v86;
          swift_willThrow();
          return (*(v79 + 8))(v84, v71);
        }
      }
    }

    else
    {
      v52 = sub_26129B934();
      sub_26125A870(v52, v41, &qword_27FE9F560, &qword_2613A3CB0);
      v53 = sub_2613A124C();
      v54 = *(v53 - 8);
      if ((*(v54 + 48))(v41, 1, v53) == 1)
      {
        sub_26124C718(v41, &qword_27FE9F560, &qword_2613A3CB0);
      }

      else
      {
        v65 = sub_2613A122C();
        v66 = sub_2613A1D8C();
        if (os_log_type_enabled(v65, v66))
        {
          v67 = swift_slowAlloc();
          *v67 = 0;
          _os_log_impl(&dword_261243000, v65, v66, "No batch found", v67, 2u);
          MEMORY[0x266701350](v67, -1, -1);
        }

        (*(v54 + 8))(v41, v53);
      }

      (*(v96 + 104))(v95, *MEMORY[0x277D438A0], v97);
      v68 = objc_allocWithZone(sub_26139FB2C());
      v69 = sub_26139FB3C();
      sub_2613770D8(&qword_27FEA07F0, MEMORY[0x277D438E0]);
      swift_allocError();
      *v70 = v69;
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_261371684(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_2613A256C();
  sub_2613A19DC();
  v7 = sub_2613A25CC();
  v8 = -1 << *(a3 + 32);
  v9 = v7 & ~v8;
  if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(a3 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_2613A241C() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_26137177C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F280, &unk_2613A42B0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v18 - v10;
  v12 = *(a3 + OBJC_IVAR____TtC21ProximityReaderDaemon29PaymentReadResultStoreService_paymentContext);
  v13 = *(v12 + 80);
  v14 = *(v12 + 88);
  v15 = sub_26139F13C();
  v16 = *(v15 - 8);
  (*(v16 + 16))(v11, a4, v15);
  (*(v16 + 56))(v11, 0, 1, v15);

  sub_261257484(a2, v13, v14, v11, a1);
  sub_26124C718(v11, &qword_27FE9F280, &unk_2613A42B0);
}

void sub_2613718EC(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5, uint64_t a6)
{
  v77 = a1;
  v73 = a6;
  v76 = a5;
  v80[6] = *MEMORY[0x277D85DE8];
  v9 = sub_26139F13C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v74 = v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v75 = (v68 - v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F280, &unk_2613A42B0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = v68 - v19;
  v79 = MEMORY[0x266700BB0](v18);
  v21 = *(a3 + OBJC_IVAR____TtC21ProximityReaderDaemon29PaymentReadResultStoreService_paymentContext);
  v23 = *(v21 + 80);
  v22 = *(v21 + 88);
  v24 = v10 + 16;
  v25 = *(v10 + 16);
  v71 = a4;
  v25(v20, a4, v9);
  v72 = v10;
  (*(v10 + 56))(v20, 0, 1, v9);

  v26 = sub_2613A0D6C();
  v27 = sub_261253D64();
  v28 = a2;
  v29 = v78;
  v30 = sub_261253D74(a2, v23, v22, v20, v26, v27, 0);
  v31 = v29;
  if (!v29)
  {
    v33 = v30;
    v34 = v76;
    v69 = v25;
    v70 = v24;
    v77 = v28;
    v78 = v9;
    sub_26124C718(v20, &qword_27FE9F280, &unk_2613A42B0);

    if (v33 >> 62)
    {
LABEL_30:
      v35 = sub_2613A221C();
      v36 = v79;
      if (v35)
      {
LABEL_5:
        v68[1] = v31;
        v37 = 0;
        v31 = &off_279AD5000;
        do
        {
          if ((v33 & 0xC000000000000001) != 0)
          {
            v38 = MEMORY[0x2667005C0](v37, v33);
          }

          else
          {
            if (v37 >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_29;
            }

            v38 = *(v33 + 8 * v37 + 32);
          }

          v34 = v38;
          v39 = v37 + 1;
          if (__OFADD__(v37, 1))
          {
            __break(1u);
LABEL_29:
            __break(1u);
            goto LABEL_30;
          }

          [v38 setBatchId_];

          ++v37;
        }

        while (v39 != v35);
        if (v33 >> 62)
        {
          v40 = sub_2613A221C();
        }

        else
        {
          v40 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v41 = v78;
        v42 = v79;
        v44 = v74;
        v43 = v75;
        v46 = v72;
        v45 = v73;
        v47 = v77;

        swift_beginAccess();
        v48 = *(v45 + 16);
        v49 = __OFADD__(v48, v40);
        v50 = v48 + v40;
        if (v49)
        {
          __break(1u);
        }

        *(v45 + 16) = v50;
        if ([v47 hasChanges])
        {
          v80[0] = 0;
          if (![v47 save:v80])
          {
            v65 = v80[0];
            sub_26139EE7C();

            swift_willThrow();
            v32 = v42;
            goto LABEL_33;
          }

          v51 = v80[0];
        }

        v78 = v40;
        [v47 reset];
        v52 = sub_26129B934();
        sub_26125A870(v52, v43, &qword_27FE9F560, &qword_2613A3CB0);
        v53 = sub_2613A124C();
        v54 = *(v53 - 8);
        if ((*(v54 + 48))(v43, 1, v53) == 1)
        {
          sub_26124C718(v43, &qword_27FE9F560, &qword_2613A3CB0);
        }

        else
        {
          v69(v44, v71, v41);

          v55 = sub_2613A122C();
          v56 = sub_2613A1D9C();
          if (os_log_type_enabled(v55, v56))
          {
            v57 = swift_slowAlloc();
            v77 = v55;
            v58 = v57;
            v75 = swift_slowAlloc();
            v80[0] = v75;
            *v58 = 134218242;
            swift_beginAccess();
            *(v58 + 4) = *(v45 + 16);

            *(v58 + 12) = 2080;
            sub_2613770D8(&qword_27FE9F570, MEMORY[0x277CC95F0]);
            LODWORD(v74) = v56;
            v59 = sub_2613A23EC();
            v61 = v60;
            (*(v46 + 8))(v44, v41);
            v62 = sub_26124C11C(v59, v61, v80);

            *(v58 + 14) = v62;
            v63 = v77;
            _os_log_impl(&dword_261243000, v77, v74, "Removed %ld transactions from batch %s", v58, 0x16u);
            v64 = v75;
            __swift_destroy_boxed_opaque_existential_0Tm(v75);
            MEMORY[0x266701350](v64, -1, -1);
            MEMORY[0x266701350](v58, -1, -1);
          }

          else
          {

            (*(v46 + 8))(v44, v41);
          }

          (*(v54 + 8))(v43, v53);
        }

        v66 = v78 >= sub_2613A0D6C();
        v34 = v76;
        swift_beginAccess();
        v36 = v79;
        goto LABEL_32;
      }
    }

    else
    {
      v35 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v36 = v79;
      if (v35)
      {
        goto LABEL_5;
      }
    }

    swift_beginAccess();
    v66 = 0;
LABEL_32:
    v34[16] = v66;
    v32 = v36;
    goto LABEL_33;
  }

  sub_26124C718(v20, &qword_27FE9F280, &unk_2613A42B0);

  v32 = v79;
LABEL_33:
  objc_autoreleasePoolPop(v32);
  v67 = *MEMORY[0x277D85DE8];
}

size_t sub_261371FD0(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F310, qword_2613A44C0);
  v4 = *(sub_26139F13C() - 8);
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

size_t sub_2613720CC(size_t a1, int64_t a2, char a3)
{
  result = sub_2613720EC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_2613720EC(size_t result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0848, &unk_2613AD430);
  v10 = *(type metadata accessor for SignableTransaction(0) - 8);
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
  v15 = *(type metadata accessor for SignableTransaction(0) - 8);
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

uint64_t sub_2613722C4(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_26139F13C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0840, &qword_2613AD428);
  v48 = a2;
  result = sub_2613A223C();
  v14 = result;
  if (*(v11 + 16))
  {
    v52 = v10;
    v53 = v6;
    v44 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v45 = (v7 + 16);
    v46 = v7;
    v49 = (v7 + 32);
    v21 = result + 64;
    v47 = v11;
    while (v19)
    {
      v25 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v28 = v25 | (v15 << 6);
      v29 = *(v11 + 48);
      v51 = *(v7 + 72);
      v30 = v29 + v51 * v28;
      if (v48)
      {
        (*v49)(v52, v30, v53);
        v31 = (*(v11 + 56) + 32 * v28);
        v32 = *v31;
        v54 = v31[1];
        v50 = v32;
      }

      else
      {
        (*v45)(v52, v30, v53);
        v33 = (*(v11 + 56) + 32 * v28);
        v34 = *v33;
        v54 = v33[1];
        v50 = v34;
        sub_26124C778(v34, *(&v34 + 1));
        sub_26124C778(v54, *(&v54 + 1));
      }

      v35 = *(v14 + 40);
      sub_2613770D8(&qword_281451E80, MEMORY[0x277CC95F0]);
      result = sub_2613A182C();
      v36 = -1 << *(v14 + 32);
      v37 = result & ~v36;
      v38 = v37 >> 6;
      if (((-1 << v37) & ~*(v21 + 8 * (v37 >> 6))) == 0)
      {
        v39 = 0;
        v40 = (63 - v36) >> 6;
        v7 = v46;
        v11 = v47;
        while (++v38 != v40 || (v39 & 1) == 0)
        {
          v41 = v38 == v40;
          if (v38 == v40)
          {
            v38 = 0;
          }

          v39 |= v41;
          v42 = *(v21 + 8 * v38);
          if (v42 != -1)
          {
            v22 = __clz(__rbit64(~v42)) + (v38 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v37) & ~*(v21 + 8 * (v37 >> 6)))) | v37 & 0x7FFFFFFFFFFFFFC0;
      v7 = v46;
      v11 = v47;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v49)(*(v14 + 48) + v51 * v22, v52, v53);
      v23 = (*(v14 + 56) + 32 * v22);
      v24 = v54;
      *v23 = v50;
      v23[1] = v24;
      ++*(v14 + 16);
    }

    v26 = v15;
    while (1)
    {
      v15 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v27 = v16[v15];
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v19 = (v27 - 1) & v27;
        goto LABEL_17;
      }
    }

    if ((v48 & 1) == 0)
    {

      v3 = v44;
      goto LABEL_36;
    }

    v43 = 1 << *(v11 + 32);
    v3 = v44;
    if (v43 >= 64)
    {
      bzero(v16, ((v43 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v43;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

void *sub_2613726C8()
{
  v1 = v0;
  v37 = sub_26139F13C();
  v39 = *(v37 - 8);
  v2 = *(v39 + 64);
  MEMORY[0x28223BE20](v37);
  v36 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0840, &qword_2613AD428);
  v4 = *v0;
  v5 = sub_2613A222C();
  v6 = v5;
  if (*(v4 + 16))
  {
    v33 = v1;
    result = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v8 + 8 * v9)
    {
      result = memmove(result, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v38 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v34 = v39 + 32;
    v35 = v39 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v41 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v39;
        v21 = *(v39 + 72) * v19;
        v22 = v36;
        v23 = v37;
        (*(v39 + 16))(v36, *(v4 + 48) + v21, v37);
        v19 *= 32;
        v24 = (*(v4 + 56) + v19);
        v25 = v38;
        v26 = *(v38 + 48);
        v27 = *(v20 + 32);
        v28 = v24[1];
        v40 = *v24;
        v42 = v28;
        v27(v26 + v21, v22, v23);
        v29 = (*(v25 + 56) + v19);
        v30 = v42;
        v31 = v40;
        *v29 = v40;
        v29[1] = v30;
        sub_26124C778(v31, *(&v31 + 1));
        result = sub_26124C778(v42, *(&v42 + 1));
        v14 = v41;
      }

      while (v41);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v33;
        v6 = v38;
        goto LABEL_18;
      }

      v18 = *(v8 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v41 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

uint64_t sub_261372970(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v41 = sub_26139F13C();
  v43 = *(v41 - 8);
  v8 = *(v43 + 64);
  v9 = MEMORY[0x28223BE20](v41);
  v42 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v40 = &v34 - v12;
  v13 = a4 + 64;
  v14 = -1 << *(a4 + 32);
  if (-v14 < 64)
  {
    v15 = ~(-1 << -v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(a4 + 64);
  if (!a2)
  {
LABEL_19:
    v32 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v13;
    *(a1 + 16) = ~v14;
    *(a1 + 24) = v32;
    *(a1 + 32) = v16;
    return a3;
  }

  if (!a3)
  {
    v32 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v34 = -1 << *(a4 + 32);
    v35 = a1;
    result = 0;
    v17 = 0;
    v18 = (63 - v14) >> 6;
    v36 = v43 + 32;
    v37 = v43 + 16;
    a1 = 1;
    v38 = a4 + 64;
    v39 = a3;
    v19 = v40;
    while (v16)
    {
      v45 = a2;
LABEL_15:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v44 = v17;
      v23 = a4;
      v24 = *(a4 + 48);
      v25 = v42;
      v26 = v43;
      v27 = *(v43 + 72);
      v28 = v41;
      (*(v43 + 16))(v42, v24 + v27 * (v22 | (v17 << 6)), v41);
      v29 = *(v26 + 32);
      v29(v19, v25, v28);
      v30 = v45;
      v29(v45, v19, v28);
      a3 = v39;
      if (a1 == v39)
      {
        v14 = v34;
        a1 = v35;
        a4 = v23;
        v32 = v44;
        v13 = v38;
        goto LABEL_25;
      }

      a2 = &v30[v27];
      result = a1;
      v31 = __OFADD__(a1++, 1);
      a4 = v23;
      v17 = v44;
      v13 = v38;
      if (v31)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v20 = v17;
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v21 >= v18)
      {
        break;
      }

      v16 = *(v13 + 8 * v21);
      ++v20;
      if (v16)
      {
        v45 = a2;
        v17 = v21;
        goto LABEL_15;
      }
    }

    v16 = 0;
    if (v18 <= v17 + 1)
    {
      v33 = v17 + 1;
    }

    else
    {
      v33 = v18;
    }

    v32 = v33 - 1;
    a3 = result;
    v14 = v34;
    a1 = v35;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_261372C14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v26 - v16;
  if (a6)
  {

    v18 = sub_26128F68C(a7 & 1);
    type metadata accessor for PaymentTerminalContext();

    return sub_2613091D8(a1, a2, a3, a4, a5, a6, v18 & 0xFFFFFF);
  }

  else
  {
    v20 = sub_26129B934();
    sub_26125A870(v20, v17, &qword_27FE9F560, &qword_2613A3CB0);
    v21 = sub_2613A124C();
    v22 = *(v21 - 8);
    if ((*(v22 + 48))(v17, 1, v21) == 1)
    {
      sub_26124C718(v17, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v23 = sub_2613A122C();
      v24 = sub_2613A1D8C();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&dword_261243000, v23, v24, "Could not fetch device id", v25, 2u);
        MEMORY[0x266701350](v25, -1, -1);
      }

      (*(v22 + 8))(v17, v21);
    }

    return 0;
  }
}

id sub_261372E48(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v66 = a2;
  v5 = sub_26139FB0C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = (&v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v57 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v57 - v18;
  v68 = a1;
  v20 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F650, &qword_2613A57C0);
  v21 = sub_26139FB2C();
  if (swift_dynamicCast())
  {
    v22 = v67;
    v23 = sub_26129B934();
    sub_26125A870(v23, v19, &qword_27FE9F560, &qword_2613A3CB0);
    v24 = sub_2613A124C();
    v25 = *(v24 - 8);
    if ((*(v25 + 48))(v19, 1, v24) == 1)
    {
      v26 = v19;
LABEL_15:
      sub_26124C718(v26, &qword_27FE9F560, &qword_2613A3CB0);
      return v22;
    }

    v22 = v22;
    v28 = sub_2613A122C();
    v29 = sub_2613A1D8C();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v68 = v32;
      *v30 = 136315394;
      *(v30 + 4) = sub_26124C11C(v66, a3, &v68);
      *(v30 + 12) = 2112;
      *(v30 + 14) = v22;
      *v31 = v22;
      v33 = v22;
      _os_log_impl(&dword_261243000, v28, v29, "%s: Returning error [%@]", v30, 0x16u);
      sub_26124C718(v31, &qword_27FEA0410, &qword_2613AA780);
      MEMORY[0x266701350](v31, -1, -1);
      __swift_destroy_boxed_opaque_existential_0Tm(v32);
      MEMORY[0x266701350](v32, -1, -1);
      MEMORY[0x266701350](v30, -1, -1);
    }

    (*(v25 + 8))(v19, v24);
  }

  else
  {
    v64 = sub_26129B934();
    sub_26125A870(v64, v17, &qword_27FE9F560, &qword_2613A3CB0);
    v27 = sub_2613A124C();
    v65 = *(v27 - 8);
    v63 = *(v65 + 48);
    if (v63(v17, 1, v27) == 1)
    {
      sub_26124C718(v17, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v59 = v6;
      v60 = v5;
      v34 = a1;

      v35 = sub_2613A122C();
      v36 = sub_2613A1D8C();

      v58 = v36;
      v61 = v35;
      v37 = os_log_type_enabled(v35, v36);
      v62 = a3;
      if (v37)
      {
        v38 = swift_slowAlloc();
        v57 = v27;
        v39 = v38;
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v68 = v41;
        *v39 = 136315394;
        *(v39 + 4) = sub_26124C11C(v66, a3, &v68);
        *(v39 + 12) = 2112;
        v42 = a1;
        v43 = _swift_stdlib_bridgeErrorToNSError();
        *(v39 + 14) = v43;
        v44 = v40;
        *v40 = v43;
        v45 = v61;
        _os_log_impl(&dword_261243000, v61, v58, "%s: Unexpected error [%@]", v39, 0x16u);
        sub_26124C718(v44, &qword_27FEA0410, &qword_2613AA780);
        MEMORY[0x266701350](v44, -1, -1);
        __swift_destroy_boxed_opaque_existential_0Tm(v41);
        MEMORY[0x266701350](v41, -1, -1);
        v46 = v39;
        v27 = v57;
        MEMORY[0x266701350](v46, -1, -1);
      }

      else
      {
      }

      v6 = v59;
      v5 = v60;
      (*(v65 + 8))(v17, v27);
      a3 = v62;
    }

    swift_getErrorValue();
    *v9 = sub_2613A250C();
    (*(v6 + 104))(v9, *MEMORY[0x277D43890], v5);
    v47 = objc_allocWithZone(v21);
    v22 = sub_26139FB3C();
    sub_26125A870(v64, v14, &qword_27FE9F560, &qword_2613A3CB0);
    if (v63(v14, 1, v27) == 1)
    {
      v26 = v14;
      goto LABEL_15;
    }

    v22 = v22;
    v48 = sub_2613A122C();
    v49 = sub_2613A1D8C();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = v27;
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v68 = v53;
      *v51 = 136315394;
      *(v51 + 4) = sub_26124C11C(v66, a3, &v68);
      *(v51 + 12) = 2112;
      *(v51 + 14) = v22;
      *v52 = v22;
      v54 = v22;
      _os_log_impl(&dword_261243000, v48, v49, "%s: Returning error [%@]", v51, 0x16u);
      sub_26124C718(v52, &qword_27FEA0410, &qword_2613AA780);
      MEMORY[0x266701350](v52, -1, -1);
      __swift_destroy_boxed_opaque_existential_0Tm(v53);
      MEMORY[0x266701350](v53, -1, -1);
      v55 = v51;
      v27 = v50;
      MEMORY[0x266701350](v55, -1, -1);
    }

    (*(v65 + 8))(v14, v27);
  }

  return v22;
}

uint64_t sub_2613735D8()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_261265144;

  return sub_261335160(v3, v4, v5, v2);
}

uint64_t sub_26137366C@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  v6 = *(*(v2 + 16) + OBJC_IVAR____TtC21ProximityReaderDaemon29PaymentReadResultStoreService_paymentContext);
  v7 = *(v6 + 80);
  v8 = *(v6 + 88);

  v9 = sub_26125735C(a1, v7, v8);

  if (!v3)
  {
    *a2 = v9 & 1;
  }

  return result;
}

uint64_t sub_2613736F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[24] = a3;
  v4[25] = a4;
  v4[22] = a1;
  v4[23] = a2;
  v5 = sub_2613A1EBC();
  v4[26] = v5;
  v6 = *(v5 - 8);
  v4[27] = v6;
  v7 = *(v6 + 64) + 15;
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();
  v8 = sub_26139F13C();
  v4[31] = v8;
  v9 = *(v8 - 8);
  v4[32] = v9;
  v4[33] = *(v9 + 64);
  v4[34] = swift_task_alloc();
  v4[35] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0) - 8) + 64) + 15;
  v4[36] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261373878);
}

uint64_t sub_261373878()
{
  v1 = *(v0 + 288);
  v2 = sub_26129B934();
  sub_26125A870(v2, v1, &qword_27FE9F560, &qword_2613A3CB0);
  v3 = sub_2613A124C();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 48))(v1, 1, v3);
  v6 = *(v0 + 288);
  if (v5 == 1)
  {
    sub_26124C718(*(v0 + 288), &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v7 = *(v0 + 192);
    v8 = sub_26125A798();
    v9 = sub_261291AA8();
    sub_26129BC3C(v8 & 1, v7, 0xD000000000000031, 0x80000002613BD910, v9, v10);

    (*(v4 + 8))(v6, v3);
  }

  v12 = *(v0 + 272);
  v11 = *(v0 + 280);
  v13 = *(v0 + 256);
  v14 = *(v0 + 264);
  v15 = *(v0 + 240);
  v16 = *(v0 + 248);
  v18 = *(v0 + 184);
  v17 = *(v0 + 192);
  sub_26139F12C();
  v19 = *(v13 + 16);
  *(v0 + 296) = v19;
  *(v0 + 304) = (v13 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v19(v12, v11, v16);
  v20 = *(v13 + 80);
  *(v0 + 560) = v20;
  v21 = (v20 + 32) & ~v20;
  v22 = swift_allocObject();
  *(v0 + 312) = v22;
  *(v22 + 16) = v17;
  *(v22 + 24) = v18;
  v23 = *(v13 + 32);
  *(v0 + 320) = v23;
  *(v0 + 328) = (v13 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v23(v22 + v21, v12, v16);
  v24 = v17;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0818, &qword_2613AD3C8);
  sub_2612529C0(v15);
  v26 = swift_task_alloc();
  *(v0 + 336) = v26;
  *v26 = v0;
  v26[1] = sub_261373B14;
  v27 = *(v0 + 240);
  v28 = *(v0 + 176);

  return sub_261252A34(v0 + 152, v27, sub_261376BBC, v22, v28, v25);
}

uint64_t sub_261373B14()
{
  v2 = *v1;
  v3 = *(*v1 + 336);
  v4 = *v1;
  v2[43] = v0;

  v5 = v2[39];
  v6 = v2[30];
  v7 = v2[27];
  v8 = v2[26];
  v11 = *(v7 + 8);
  v9 = v7 + 8;
  v10 = v11;
  if (v0)
  {
    v2[52] = v10;
    v10(v6, v8);

    v12 = sub_261373ED0;
  }

  else
  {
    v2[44] = v10;
    v2[45] = v9 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v10(v6, v8);

    v12 = sub_261373CC4;
  }

  return MEMORY[0x2822009F8](v12);
}

uint64_t sub_261373CC4()
{
  v1 = *(v0 + 192);
  v9 = *(v0 + 152);
  *(v0 + 368) = v9;
  v2 = *(v1 + OBJC_IVAR____TtC21ProximityReaderDaemon29PaymentReadResultStoreService_paymentContext);
  *(v0 + 384) = v2;
  v4 = *(v2 + 64);
  v3 = *(v2 + 72);
  *(v0 + 392) = v3;

  v5 = swift_task_alloc();
  *(v0 + 400) = v5;
  *v5 = v0;
  v5[1] = sub_261373DB4;
  v6 = *(v0 + 280);
  v7 = *(v0 + 192);

  return sub_26136CEE8(v0 + 16, v6, v9, v4, v3);
}

uint64_t sub_261373DB4()
{
  v2 = *v1;
  v3 = *(*v1 + 400);
  v7 = *v1;
  *(*v1 + 408) = v0;

  if (v0)
  {
    v4 = sub_26137438C;
  }

  else
  {
    v5 = *(v2 + 392);

    v4 = sub_26137419C;
  }

  return MEMORY[0x2822009F8](v4);
}

uint64_t sub_261373ED0()
{
  v1 = *(v0 + 344);
  *(v0 + 496) = *(v0 + 416);
  *(v0 + 504) = v1;
  v2 = swift_allocObject();
  *(v0 + 512) = v2;
  *(v2 + 16) = 0;
  v3 = swift_allocObject();
  *(v0 + 520) = v3;
  *(v3 + 16) = 1;
  v4 = (v3 + 16);
  swift_beginAccess();
  if (*v4 == 1)
  {
    v5 = *(v0 + 560);
    *(v0 + 564) = *MEMORY[0x277CBE110];
    v6 = *(v0 + 208);
    v7 = *(*(v0 + 216) + 104);
    *(v0 + 528) = v7;
    v8 = (v5 + 24) & ~v5;
    v9 = *(v0 + 272);
    v10 = (*(v0 + 264) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
    v31 = *(v0 + 520);
    v32 = *(v0 + 512);
    v30 = *(v0 + 328);
    v29 = *(v0 + 320);
    v11 = *(v0 + 296);
    v12 = *(v0 + 304);
    v13 = *(v0 + 280);
    v14 = *(v0 + 248);
    v15 = *(v0 + 192);
    v7(*(v0 + 224));
    v11(v9, v13, v14);
    v16 = swift_allocObject();
    *(v0 + 536) = v16;
    *(v16 + 16) = v15;
    v29(v16 + v8, v9, v14);
    *(v16 + v10) = v31;
    *(v16 + ((v10 + 15) & 0xFFFFFFFFFFFFFFF8)) = v32;
    v17 = v15;

    v18 = swift_task_alloc();
    *(v0 + 544) = v18;
    *v18 = v0;
    v18[1] = sub_261375718;
    v19 = *(v0 + 224);
    v20 = *(v0 + 176);
    v21 = MEMORY[0x277D84F78] + 8;

    return sub_261252A34(v18, v19, sub_26137722C, v16, v20, v21);
  }

  else
  {
    v23 = *(v0 + 520);
    v24 = *(v0 + 512);

    v25 = swift_task_alloc();
    *(v0 + 552) = v25;
    *v25 = v0;
    v25[1] = sub_261375BEC;
    v26 = *(v0 + 280);
    v27 = *(v0 + 192);
    v28 = *(v0 + 176);

    return sub_261366994(v28, v26);
  }
}

uint64_t sub_26137419C()
{
  v1 = v0[48];
  v3 = *(v1 + 80);
  v2 = *(v1 + 88);
  v0[53] = v2;
  v4 = v0[4];
  v5 = v0[5];

  v6 = swift_task_alloc();
  v0[54] = v6;
  *v6 = v0;
  v6[1] = sub_261374270;
  v7 = v0[24];
  v8 = v0[22];

  return sub_26136D308(v8, v3, v2, v4, v5);
}

uint64_t sub_261374270()
{
  v2 = *v1;
  v3 = *(*v1 + 432);
  v7 = *v1;
  *(*v1 + 440) = v0;

  if (v0)
  {
    v4 = sub_261374828;
  }

  else
  {
    v5 = *(v2 + 424);

    v4 = sub_261374660;
  }

  return MEMORY[0x2822009F8](v4);
}

uint64_t sub_26137438C()
{
  v1 = *(v0 + 392);

  v2 = *(v0 + 408);
  *(v0 + 496) = *(v0 + 352);
  *(v0 + 504) = v2;
  v3 = swift_allocObject();
  *(v0 + 512) = v3;
  *(v3 + 16) = 0;
  v4 = swift_allocObject();
  *(v0 + 520) = v4;
  *(v4 + 16) = 1;
  v5 = (v4 + 16);
  swift_beginAccess();
  if (*v5 == 1)
  {
    v6 = *(v0 + 560);
    *(v0 + 564) = *MEMORY[0x277CBE110];
    v7 = *(v0 + 208);
    v8 = *(*(v0 + 216) + 104);
    *(v0 + 528) = v8;
    v9 = (v6 + 24) & ~v6;
    v10 = *(v0 + 272);
    v11 = (*(v0 + 264) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
    v32 = *(v0 + 520);
    v33 = *(v0 + 512);
    v31 = *(v0 + 328);
    v30 = *(v0 + 320);
    v12 = *(v0 + 296);
    v13 = *(v0 + 304);
    v14 = *(v0 + 280);
    v15 = *(v0 + 248);
    v16 = *(v0 + 192);
    v8(*(v0 + 224));
    v12(v10, v14, v15);
    v17 = swift_allocObject();
    *(v0 + 536) = v17;
    *(v17 + 16) = v16;
    v30(v17 + v9, v10, v15);
    *(v17 + v11) = v32;
    *(v17 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8)) = v33;
    v18 = v16;

    v19 = swift_task_alloc();
    *(v0 + 544) = v19;
    *v19 = v0;
    v19[1] = sub_261375718;
    v20 = *(v0 + 224);
    v21 = *(v0 + 176);
    v22 = MEMORY[0x277D84F78] + 8;

    return sub_261252A34(v19, v20, sub_26137722C, v17, v21, v22);
  }

  else
  {
    v24 = *(v0 + 520);
    v25 = *(v0 + 512);

    v26 = swift_task_alloc();
    *(v0 + 552) = v26;
    *v26 = v0;
    v26[1] = sub_261375BEC;
    v27 = *(v0 + 280);
    v28 = *(v0 + 192);
    v29 = *(v0 + 176);

    return sub_261366994(v29, v27);
  }
}

uint64_t sub_261374660()
{
  v1 = v0[46];
  v2 = sub_2613A0D6C();
  if (v2 < v1)
  {
    v1 = v2;
  }

  v3 = swift_task_alloc();
  v0[56] = v3;
  *v3 = v0;
  v3[1] = sub_261374714;
  v4 = v0[46];
  v5 = v0[35];
  v6 = v0[24];
  v7 = v0[25];
  v8 = v0[22];

  return sub_26136E4F0(v8, v4, v5, v1, v6, v7);
}

uint64_t sub_261374714()
{
  v2 = *(*v1 + 448);
  v5 = *v1;
  *(*v1 + 456) = v0;

  if (v0)
  {
    v3 = sub_261374E3C;
  }

  else
  {
    v3 = sub_261374B04;
  }

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_261374828()
{
  v1 = *(v0 + 424);

  sub_261295F30(v0 + 16);
  v2 = *(v0 + 440);
  *(v0 + 496) = *(v0 + 352);
  *(v0 + 504) = v2;
  v3 = swift_allocObject();
  *(v0 + 512) = v3;
  *(v3 + 16) = 0;
  v4 = swift_allocObject();
  *(v0 + 520) = v4;
  *(v4 + 16) = 1;
  v5 = (v4 + 16);
  swift_beginAccess();
  if (*v5 == 1)
  {
    v6 = *(v0 + 560);
    *(v0 + 564) = *MEMORY[0x277CBE110];
    v7 = *(v0 + 208);
    v8 = *(*(v0 + 216) + 104);
    *(v0 + 528) = v8;
    v9 = (v6 + 24) & ~v6;
    v10 = *(v0 + 272);
    v11 = (*(v0 + 264) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
    v32 = *(v0 + 520);
    v33 = *(v0 + 512);
    v31 = *(v0 + 328);
    v30 = *(v0 + 320);
    v12 = *(v0 + 296);
    v13 = *(v0 + 304);
    v14 = *(v0 + 280);
    v15 = *(v0 + 248);
    v16 = *(v0 + 192);
    v8(*(v0 + 224));
    v12(v10, v14, v15);
    v17 = swift_allocObject();
    *(v0 + 536) = v17;
    *(v17 + 16) = v16;
    v30(v17 + v9, v10, v15);
    *(v17 + v11) = v32;
    *(v17 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8)) = v33;
    v18 = v16;

    v19 = swift_task_alloc();
    *(v0 + 544) = v19;
    *v19 = v0;
    v19[1] = sub_261375718;
    v20 = *(v0 + 224);
    v21 = *(v0 + 176);
    v22 = MEMORY[0x277D84F78] + 8;

    return sub_261252A34(v19, v20, sub_26137722C, v17, v21, v22);
  }

  else
  {
    v24 = *(v0 + 520);
    v25 = *(v0 + 512);

    v26 = swift_task_alloc();
    *(v0 + 552) = v26;
    *v26 = v0;
    v26[1] = sub_261375BEC;
    v27 = *(v0 + 280);
    v28 = *(v0 + 192);
    v29 = *(v0 + 176);

    return sub_261366994(v29, v27);
  }
}

uint64_t sub_261374B04()
{
  v1 = *(v0 + 368);
  v3 = *(v0 + 320);
  v2 = *(v0 + 328);
  v4 = *(v0 + 560);
  v5 = *(v0 + 304);
  v6 = *(v0 + 272);
  v7 = *(v0 + 264);
  v8 = *(v0 + 248);
  v21 = v1;
  v22 = *(v0 + 232);
  v9 = *(v0 + 192);
  (*(v0 + 296))(v6, *(v0 + 280), v8);
  v10 = (v4 + 24) & ~v4;
  v11 = (v10 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = swift_allocObject();
  *(v0 + 464) = v12;
  *(v12 + 16) = v9;
  v3(v12 + v10, v6, v8);
  *(v12 + v11) = v21;
  v13 = v12 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8);
  *(v13 + 48) = *(v0 + 64);
  v14 = *(v0 + 48);
  *(v13 + 16) = *(v0 + 32);
  *(v13 + 32) = v14;
  *v13 = *(v0 + 16);
  v15 = v9;
  sub_261259E1C(v0 + 16, v0 + 72);
  v16 = MEMORY[0x277D84F78];
  sub_2612529C0(v22);
  v17 = swift_task_alloc();
  *(v0 + 472) = v17;
  *v17 = v0;
  v17[1] = sub_261374CA0;
  v18 = *(v0 + 232);
  v19 = *(v0 + 176);

  return sub_261252A34(v17, v18, sub_261376DEC, v12, v19, v16 + 8);
}

uint64_t sub_261374CA0()
{
  v2 = *(*v1 + 472);
  v3 = *(*v1 + 464);
  v4 = *(*v1 + 360);
  v5 = *(*v1 + 352);
  v6 = *(*v1 + 232);
  v7 = *(*v1 + 208);
  v10 = *v1;
  *(*v1 + 480) = v0;

  v5(v6, v7);

  if (v0)
  {
    v8 = sub_261375444;
  }

  else
  {
    v8 = sub_261375110;
  }

  return MEMORY[0x2822009F8](v8);
}

uint64_t sub_261374E3C()
{
  sub_261295F30(v0 + 16);
  v1 = *(v0 + 456);
  *(v0 + 496) = *(v0 + 352);
  *(v0 + 504) = v1;
  v2 = swift_allocObject();
  *(v0 + 512) = v2;
  *(v2 + 16) = 0;
  v3 = swift_allocObject();
  *(v0 + 520) = v3;
  *(v3 + 16) = 1;
  v4 = (v3 + 16);
  swift_beginAccess();
  if (*v4 == 1)
  {
    v5 = *(v0 + 560);
    *(v0 + 564) = *MEMORY[0x277CBE110];
    v6 = *(v0 + 208);
    v7 = *(*(v0 + 216) + 104);
    *(v0 + 528) = v7;
    v8 = (v5 + 24) & ~v5;
    v9 = *(v0 + 272);
    v10 = (*(v0 + 264) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
    v31 = *(v0 + 520);
    v32 = *(v0 + 512);
    v30 = *(v0 + 328);
    v29 = *(v0 + 320);
    v11 = *(v0 + 296);
    v12 = *(v0 + 304);
    v13 = *(v0 + 280);
    v14 = *(v0 + 248);
    v15 = *(v0 + 192);
    v7(*(v0 + 224));
    v11(v9, v13, v14);
    v16 = swift_allocObject();
    *(v0 + 536) = v16;
    *(v16 + 16) = v15;
    v29(v16 + v8, v9, v14);
    *(v16 + v10) = v31;
    *(v16 + ((v10 + 15) & 0xFFFFFFFFFFFFFFF8)) = v32;
    v17 = v15;

    v18 = swift_task_alloc();
    *(v0 + 544) = v18;
    *v18 = v0;
    v18[1] = sub_261375718;
    v19 = *(v0 + 224);
    v20 = *(v0 + 176);
    v21 = MEMORY[0x277D84F78] + 8;

    return sub_261252A34(v18, v19, sub_26137722C, v16, v20, v21);
  }

  else
  {
    v23 = *(v0 + 520);
    v24 = *(v0 + 512);

    v25 = swift_task_alloc();
    *(v0 + 552) = v25;
    *v25 = v0;
    v25[1] = sub_261375BEC;
    v26 = *(v0 + 280);
    v27 = *(v0 + 192);
    v28 = *(v0 + 176);

    return sub_261366994(v28, v26);
  }
}

uint64_t sub_261375110()
{
  v1 = v0[24];
  type metadata accessor for SafMonitorEventDispatcher();
  v2 = OBJC_IVAR____TtC21ProximityReaderDaemon29PaymentReadResultStoreService_cardReaderAdapter;
  v3 = swift_task_alloc();
  v0[61] = v3;
  *v3 = v0;
  v3[1] = sub_2613751D8;
  v4 = v0[47];
  v5 = v0[48];
  v6 = v0[46];
  v7 = v0[35];

  return sub_26129FE18(v5, v1 + v2, v7, v6, v4, 0);
}

uint64_t sub_2613751D8()
{
  v1 = *(*v0 + 488);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2613752D4);
}

uint64_t sub_2613752D4()
{
  v1 = *(v0 + 304);
  v2 = *(v0 + 280);
  v3 = *(v0 + 256);
  v13 = *(v0 + 368);
  v14 = *(v0 + 248);
  v15 = *(v0 + 240);
  v16 = *(v0 + 232);
  v17 = *(v0 + 224);
  (*(v0 + 296))(*(v0 + 272), v2);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = *(v0 + 48);
  v12 = *(v0 + 56);
  v7 = *(v0 + 64);
  v8 = objc_allocWithZone(sub_2613A00AC());
  sub_26124C778(v4, v5);

  v9 = sub_2613A009C();
  sub_261295F30(v0 + 16);
  (*(v3 + 8))(v2, v14);

  v10 = *(v0 + 8);

  return v10(v9);
}

uint64_t sub_261375444()
{
  sub_261295F30(v0 + 16);
  v1 = *(v0 + 480);
  *(v0 + 496) = *(v0 + 352);
  *(v0 + 504) = v1;
  v2 = swift_allocObject();
  *(v0 + 512) = v2;
  *(v2 + 16) = 0;
  v3 = swift_allocObject();
  *(v0 + 520) = v3;
  *(v3 + 16) = 1;
  v4 = (v3 + 16);
  swift_beginAccess();
  if (*v4 == 1)
  {
    v5 = *(v0 + 560);
    *(v0 + 564) = *MEMORY[0x277CBE110];
    v6 = *(v0 + 208);
    v7 = *(*(v0 + 216) + 104);
    *(v0 + 528) = v7;
    v8 = (v5 + 24) & ~v5;
    v9 = *(v0 + 272);
    v10 = (*(v0 + 264) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
    v31 = *(v0 + 520);
    v32 = *(v0 + 512);
    v30 = *(v0 + 328);
    v29 = *(v0 + 320);
    v11 = *(v0 + 296);
    v12 = *(v0 + 304);
    v13 = *(v0 + 280);
    v14 = *(v0 + 248);
    v15 = *(v0 + 192);
    v7(*(v0 + 224));
    v11(v9, v13, v14);
    v16 = swift_allocObject();
    *(v0 + 536) = v16;
    *(v16 + 16) = v15;
    v29(v16 + v8, v9, v14);
    *(v16 + v10) = v31;
    *(v16 + ((v10 + 15) & 0xFFFFFFFFFFFFFFF8)) = v32;
    v17 = v15;

    v18 = swift_task_alloc();
    *(v0 + 544) = v18;
    *v18 = v0;
    v18[1] = sub_261375718;
    v19 = *(v0 + 224);
    v20 = *(v0 + 176);
    v21 = MEMORY[0x277D84F78] + 8;

    return sub_261252A34(v18, v19, sub_26137722C, v16, v20, v21);
  }

  else
  {
    v23 = *(v0 + 520);
    v24 = *(v0 + 512);

    v25 = swift_task_alloc();
    *(v0 + 552) = v25;
    *v25 = v0;
    v25[1] = sub_261375BEC;
    v26 = *(v0 + 280);
    v27 = *(v0 + 192);
    v28 = *(v0 + 176);

    return sub_261366994(v28, v26);
  }
}

uint64_t sub_261375718()
{
  v2 = *v1;
  v3 = *(*v1 + 544);
  v4 = *v1;

  v5 = v2[67];
  v6 = v2[62];
  v7 = v2[28];
  v8 = v2[26];
  v9 = v2[27] + 8;
  if (v0)
  {

    v6(v7, v8);
    v10 = sub_261375B3C;
  }

  else
  {
    v6(v7, v8);

    v10 = sub_2613758E4;
  }

  return MEMORY[0x2822009F8](v10);
}

uint64_t sub_2613758E4()
{
  v1 = *(v0 + 520);
  if (*(v1 + 16) == 1)
  {
    v25 = *(v0 + 328);
    v26 = *(v0 + 512);
    v24 = *(v0 + 320);
    v22 = *(v0 + 296);
    v23 = *(v0 + 304);
    v3 = *(v0 + 272);
    v2 = *(v0 + 280);
    v4 = *(v0 + 248);
    v5 = *(v0 + 192);
    v6 = (*(v0 + 560) + 24) & ~*(v0 + 560);
    v7 = (v6 + *(v0 + 264) + 7) & 0xFFFFFFFFFFFFFFF8;
    v8 = (*(v0 + 216) + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    (*(v0 + 528))(*(v0 + 224), *(v0 + 564), *(v0 + 208));
    v22(v3, v2, v4);
    v9 = swift_allocObject();
    *(v0 + 536) = v9;
    *(v9 + 16) = v5;
    v24(v9 + v6, v3, v4);
    *(v9 + v7) = v1;
    *(v9 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8)) = v26;
    v10 = v5;

    v11 = swift_task_alloc();
    *(v0 + 544) = v11;
    *v11 = v0;
    v11[1] = sub_261375718;
    v12 = *(v0 + 224);
    v13 = *(v0 + 176);
    v14 = MEMORY[0x277D84F78] + 8;

    return sub_261252A34(v11, v12, sub_26137722C, v9, v13, v14);
  }

  else
  {
    v16 = *(v0 + 512);
    v17 = *(v0 + 520);

    v18 = swift_task_alloc();
    *(v0 + 552) = v18;
    *v18 = v0;
    v18[1] = sub_261375BEC;
    v19 = *(v0 + 280);
    v20 = *(v0 + 192);
    v21 = *(v0 + 176);

    return sub_261366994(v21, v19);
  }
}

uint64_t sub_261375B3C()
{
  v1 = v0[65];
  v2 = v0[64];

  v3 = swift_task_alloc();
  v0[69] = v3;
  *v3 = v0;
  v3[1] = sub_261375BEC;
  v4 = v0[35];
  v5 = v0[24];
  v6 = v0[22];

  return sub_261366994(v6, v4);
}

uint64_t sub_261375BEC()
{
  v2 = *(*v1 + 552);
  v4 = *v1;

  if (v0)
  {
  }

  return MEMORY[0x2822009F8](sub_261375CF4);
}

uint64_t sub_261375CF4()
{
  v1 = v0[63];
  v2 = v0[35];
  v3 = v0[36];
  v5 = v0[31];
  v4 = v0[32];
  v6 = v0[29];
  v10 = v0[34];
  v11 = v0[30];
  v12 = v0[28];
  v7 = sub_261372E48(v1, 0xD000000000000031, 0x80000002613BD910);
  v0[21] = v7;
  sub_26139FB2C();
  sub_2613770D8(&qword_27FEA07F0, MEMORY[0x277D438E0]);
  swift_willThrowTypedImpl();

  (*(v4 + 8))(v2, v5);

  v8 = v0[1];

  return v8(v7);
}

uint64_t objectdestroy_6Tm_1()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_261375EA0()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_261262AA4;

  return sub_261335160(v3, v4, v5, v2);
}

uint64_t sub_261375F68(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

void *sub_261375FD0(unsigned __int8 *a1, unint64_t a2)
{
  v60 = a2;
  v3 = sub_26139FB0C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v57 - v13;
  v15 = sub_26129B7C4();
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
    v61 = v16;
    v62 = v18;
    v19 = *(a1 + 8);
    v64 = *(a1 + 24);
    v65 = v19;
    sub_2612DDE08(&v65, v63);
    sub_2612DDE08(&v64, v63);
    v20 = sub_2613A122C();
    v21 = sub_2613A1D8C();
    sub_26130105C(&v65);
    sub_26130105C(&v64);
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v58 = v12;
      v23 = v22;
      v24 = swift_slowAlloc();
      v59 = v17;
      v25 = v24;
      *v23 = 138412290;
      sub_26129DF9C();
      swift_allocError();
      v57 = v3;
      v26 = *(a1 + 4);
      v27 = *(a1 + 1);
      *v28 = *a1;
      *(v28 + 16) = v27;
      *(v28 + 32) = v26;
      sub_2612DDE08(&v65, v63);
      sub_2612DDE08(&v64, v63);
      v3 = v57;
      v29 = _swift_stdlib_bridgeErrorToNSError();
      *(v23 + 4) = v29;
      *v25 = v29;
      _os_log_impl(&dword_261243000, v20, v21, "Could not validate batch deletion token: [%@]", v23, 0xCu);
      sub_26124C718(v25, &qword_27FEA0410, &qword_2613AA780);
      v30 = v25;
      v17 = v59;
      MEMORY[0x266701350](v30, -1, -1);
      v31 = v23;
      v12 = v58;
      MEMORY[0x266701350](v31, -1, -1);
    }

    v16 = v61;
    (*(v17 + 8))(v14, v61);
    v18 = v62;
  }

  v32 = *a1;
  if (v32 == 3)
  {
    v40 = MEMORY[0x277D43880];
LABEL_12:
    (*(v4 + 104))(v7, *v40, v3);
    goto LABEL_15;
  }

  if (v32 != 4)
  {
    v40 = MEMORY[0x277D438C8];
    goto LABEL_12;
  }

  v62 = v18;
  v59 = v17;
  v33 = *(a1 + 1);
  v34 = *(a1 + 2);
  v35 = sub_2613A197C();
  v37 = v36;
  v38 = sub_2613A0E0C();
  LOBYTE(v35) = sub_261371684(v35, v37, v38);

  if (v35)
  {
    v39 = MEMORY[0x277D438C0];
  }

  else
  {
    v39 = MEMORY[0x277D438C8];
  }

  (*(v4 + 104))(v7, *v39, v3);
  v17 = v59;
  v18 = v62;
LABEL_15:
  v41 = objc_allocWithZone(sub_26139FB2C());
  v42 = sub_26139FB3C();
  v43 = sub_26129B934();
  sub_26125A870(v43, v12, &qword_27FE9F560, &qword_2613A3CB0);
  if (v18(v12, 1, v16) == 1)
  {
    sub_26124C718(v12, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v44 = v60;

    v45 = v42;
    v46 = sub_2613A122C();
    v47 = sub_2613A1D8C();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = v17;
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v61 = v16;
      v52 = v51;
      v63[0] = v51;
      *v48 = 136315394;
      *(v48 + 4) = sub_26124C11C(0xD000000000000021, v44, v63);
      *(v48 + 12) = 2112;
      *(v48 + 14) = v45;
      *v50 = v45;
      v53 = v45;
      _os_log_impl(&dword_261243000, v46, v47, "%s: Returning error [%@]", v48, 0x16u);
      sub_26124C718(v50, &qword_27FEA0410, &qword_2613AA780);
      v54 = v50;
      v17 = v49;
      MEMORY[0x266701350](v54, -1, -1);
      __swift_destroy_boxed_opaque_existential_0Tm(v52);
      v55 = v52;
      v16 = v61;
      MEMORY[0x266701350](v55, -1, -1);
      MEMORY[0x266701350](v48, -1, -1);
    }

    (*(v17 + 8))(v12, v16);
  }

  return v42;
}

uint64_t sub_2613765A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_261376698(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_261376720()
{
  sub_2613767EC();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_2613767EC()
{
  if (!qword_27FEA0810)
  {
    type metadata accessor for StoreAnalytics();
    v0 = sub_2613A1F8C();
    if (!v1)
    {
      atomic_store(v0, &qword_27FEA0810);
    }
  }
}

uint64_t sub_261376844()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_261265144;

  return sub_26136BC30(v2, v3, v4);
}

uint64_t sub_2613768F8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_261265144;

  return sub_261367018(v2, v3);
}

uint64_t sub_2613769A4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_261265144;

  return sub_2613647C0(v2, v3, v4);
}

uint64_t sub_261376A58()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_261265144;

  return sub_2613621E8(v2, v3);
}

uint64_t objectdestroy_36Tm()
{
  v1 = sub_26139F13C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5);

  v8 = *(v0 + v6);

  return MEMORY[0x2821FE8E8](v0, v6 + 8, v3 | 7);
}

void sub_261376D34(NSObject *a1, uint64_t a2)
{
  v5 = *(sub_26139F13C() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_2613718EC(a1, a2, *(v2 + 16), v2 + v6, *(v2 + v7), *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_261376DEC(uint64_t a1, void *a2)
{
  v4 = *(sub_26139F13C() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + v6);
  v9 = *(*(v2 + 16) + OBJC_IVAR____TtC21ProximityReaderDaemon29PaymentReadResultStoreService_paymentContext);
  v10 = *(v9 + 80);
  v11 = *(v9 + 88);

  sub_261256F30(a2, v10, v11, v2 + v5, v8, (v2 + v7));
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_23Tm(void (*a1)(void))
{
  a1(*(v1 + 24));

  return MEMORY[0x2821FE8E8](v1, 32, 7);
}

void sub_261377048(uint64_t a1, void *a2)
{
  v6 = *(v2 + 16);
  v5 = *(v2 + 24);
  v7 = MEMORY[0x266700BB0]();
  sub_2613702FC(a1, a2, v6, v5, &v8);
  objc_autoreleasePoolPop(v7);
}

uint64_t sub_2613770D8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_261377120(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2613771B0()
{
  result = sub_26139F13C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_261377274()
{
  v0 = sub_26139F30C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  sub_2613A121C();
  result = sub_2613A10FC();
  if ((result & 1) == 0)
  {
    v10 = sub_26129BA7C();
    sub_26124AA44(v10, v8);
    v11 = sub_2613A124C();
    v12 = *(v11 - 8);
    if ((*(v12 + 48))(v8, 1, v11) == 1)
    {
      sub_26124D0CC(v8);
    }

    else
    {
      v13 = sub_2613A122C();
      v14 = sub_2613A1D8C();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&dword_261243000, v13, v14, "Passcode disabled", v15, 2u);
        MEMORY[0x266701350](v15, -1, -1);
      }

      (*(v12 + 8))(v8, v11);
    }

    (*(v1 + 104))(v4, *MEMORY[0x277D43690], v0);
    sub_26139F33C();
    sub_26137778C();
    swift_allocError();
    sub_26139F31C();
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_2613774F8()
{
  v0 = sub_26139F30C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  sub_2613A121C();
  result = sub_2613A10EC();
  if (result)
  {
    v10 = sub_26129BA7C();
    sub_26124AA44(v10, v8);
    v11 = sub_2613A124C();
    v12 = *(v11 - 8);
    if ((*(v12 + 48))(v8, 1, v11) == 1)
    {
      sub_26124D0CC(v8);
    }

    else
    {
      v13 = sub_2613A122C();
      v14 = sub_2613A1D8C();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&dword_261243000, v13, v14, "Ongoing call detected", v15, 2u);
        MEMORY[0x266701350](v15, -1, -1);
      }

      (*(v12 + 8))(v8, v11);
    }

    (*(v1 + 104))(v4, *MEMORY[0x277D43640], v0);
    sub_26139F33C();
    sub_26137778C();
    swift_allocError();
    sub_26139F31C();
    return swift_willThrow();
  }

  return result;
}

unint64_t sub_26137778C()
{
  result = qword_27FEA0760;
  if (!qword_27FEA0760)
  {
    sub_26139F33C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEA0760);
  }

  return result;
}

uint64_t sub_2613777E4(uint64_t a1)
{
  v2 = a1 - 4000;
  result = 1;
  switch(v2)
  {
    case 0:
    case 3:
    case 4:
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
    case 12:
    case 14:
    case 16:
    case 17:
    case 18:
    case 19:
    case 20:
    case 23:
    case 24:
    case 28:
    case 29:
    case 31:
    case 32:
    case 34:
    case 40:
    case 41:
    case 42:
    case 43:
    case 44:
    case 45:
    case 47:
    case 48:
    case 49:
    case 50:
    case 51:
    case 52:
    case 53:
    case 54:
    case 55:
    case 56:
    case 58:
    case 59:
    case 60:
    case 61:
    case 62:
      return a1;
    case 1:
    case 33:
      return 0;
    case 2:
      return result;
    case 5:
      return 6;
    case 6:
    case 30:
    case 35:
    case 46:
      return 10;
    case 13:
      return 2;
    case 15:
      return 1;
    case 21:
      return 8;
    case 22:
      return 9;
    case 25:
    case 57:
      return 3;
    case 26:
      return 5;
    case 27:
      return 7;
    case 36:
      return 4;
    case 37:
    case 38:
    case 39:
      return 2;
    default:
      if (a1 == 4999)
      {
        return 10;
      }

      else
      {
        return a1;
      }
  }
}

uint64_t sub_2613778B4(void *a1)
{
  v36[0] = a1;
  v1 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F650, &qword_2613A57C0);
  type metadata accessor for ConfigurationError(0);
  if (!swift_dynamicCast())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F2E8, &unk_2613A43A0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2613A4310;
    v7 = sub_26139F2CC();
    *(inited + 32) = sub_26139F29C();
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 40) = v8;
    *(inited + 48) = 0xD000000000000019;
    *(inited + 56) = 0x80000002613BD9D0;
    sub_261259E78(inited);
    swift_setDeallocating();
    sub_261378344(inited + 32);
    v9 = objc_allocWithZone(v7);
    return sub_26139F2DC();
  }

  v2 = v37;
  v36[0] = v37;
  sub_2613785C8(&qword_27FEA0850, type metadata accessor for ConfigurationError);
  sub_26139EE1C();
  if (v37 == 2031 || (v36[0] = v37, sub_26139EE1C(), v37 == 2022) || (v36[0] = v37, sub_26139EE1C(), v37 == 2036))
  {
    v3 = sub_26139FBAC();
    v4 = *(v3 + 48);
    v5 = *(v3 + 52);
    swift_allocObject();
    sub_26139FB8C();
    sub_26139FB9C();
  }

  sub_26139EE1C();
  switch(v36[12])
  {
    case 0x7D0:
    case 0x7D4:
    case 0x7E3:
    case 0x7E5:
    case 0x7E6:
    case 0x7ECLL:
    case 0x7F3:
    case 0x7F4:
    case 0x7F5:
    case 0x7F9:
    case 0x7FELL:
      v32 = objc_allocWithZone(sub_26139F2CC());
      v33 = sub_26139F2DC();
      goto LABEL_47;
    case 0x7D7:
      v11 = "Unexpected session error";
      v12 = 0xD000000000000021;
      goto LABEL_45;
    case 0x7D8:
      v16 = "Reader initialized by wrong component";
      goto LABEL_20;
    case 0x7D9:
      v17 = "Reader install failed";
      goto LABEL_38;
    case 0x7DALL:
      v11 = "Reader install failed";
      v12 = 0xD00000000000001ALL;
      goto LABEL_45;
    case 0x7DBLL:
      v18 = "Reader configuration not valid";
      goto LABEL_34;
    case 0x7DCLL:
      v13 = "Reader configuration expired";
      goto LABEL_26;
    case 0x7DFLL:
      v11 = "Reader configuration expired";
      v12 = 0xD000000000000023;
      goto LABEL_45;
    case 0x7E0:
      v11 = "tion cannot be read";
      v12 = 0xD000000000000017;
      goto LABEL_45;
    case 0x7E1:
      v13 = "Reader could not be attested";
      goto LABEL_26;
    case 0x7E2:
      v36[11] = v37;
      v20 = sub_26139EE3C();
      v21 = sub_26139F2CC();
      v22 = sub_26139F2AC();
      if (!*(v20 + 16))
      {

        goto LABEL_49;
      }

      v24 = sub_26124E5EC(v22, v23);
      v26 = v25;

      if ((v26 & 1) == 0)
      {
LABEL_49:

        goto LABEL_50;
      }

      sub_26124C994(*(v20 + 56) + 32 * v24, v36);

      v27 = MEMORY[0x277D839F8];
      if (swift_dynamicCast())
      {
        v28 = v36[10];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F2E8, &unk_2613A43A0);
        v29 = swift_initStackObject();
        *(v29 + 16) = xmmword_2613A4310;
        *(v29 + 32) = sub_26139F2AC();
        *(v29 + 40) = v30;
        *(v29 + 72) = v27;
        *(v29 + 48) = v28;
        sub_261259E78(v29);
        swift_setDeallocating();
        sub_261378344(v29 + 32);
      }

LABEL_50:
      v35 = objc_allocWithZone(v21);
      v33 = sub_26139F2DC();
LABEL_47:
      v34 = v33;

      return v34;
    case 0x7E4:
      v16 = "Attestation failed due to clock issue";
LABEL_20:
      v11 = (v16 - 32);
      v12 = 0xD000000000000025;
      goto LABEL_45;
    case 0x7E7:
      v11 = "ed due to clock issue";
      v12 = 0xD00000000000001FLL;
      goto LABEL_45;
    case 0x7E8:
      v14 = "Attestation has wrong format or is expired";
      goto LABEL_40;
    case 0x7E9:
      v31 = "Cannot renew certificate";
      goto LABEL_42;
    case 0x7EALL:
      v11 = "Cannot renew certificate";
      v12 = 0xD000000000000016;
      goto LABEL_45;
    case 0x7EBLL:
      v17 = "Invalid reader script";
LABEL_38:
      v11 = (v17 - 32);
      v12 = 0xD000000000000015;
      goto LABEL_45;
    case 0x7EDLL:
      v31 = "Reader attestation error";
LABEL_42:
      v11 = (v31 - 32);
      v12 = 0xD000000000000018;
      goto LABEL_45;
    case 0x7EELL:
      v11 = "Reader attestation error";
      v12 = 0xD000000000000026;
      goto LABEL_45;
    case 0x7EFLL:
      v14 = "Reader configuration incompatible baseline";
LABEL_40:
      v11 = (v14 - 32);
      v12 = 0xD00000000000002ALL;
      goto LABEL_45;
    case 0x7F0:
      v15 = "Configuration endpoint not found";
      goto LABEL_44;
    case 0x7F1:
      v13 = "Reader software update issue";
      goto LABEL_26;
    case 0x7F6:
      v15 = "The environment is not supported";
LABEL_44:
      v11 = (v15 - 32);
      v12 = 0xD000000000000020;
      goto LABEL_45;
    case 0x7F7:
      v11 = "Reader secure pairing violation";
      v12 = 0xD000000000000022;
      goto LABEL_45;
    case 0x7F8:
      v18 = "Reader configuration cancelled";
LABEL_34:
      v11 = (v18 - 32);
      v12 = 0xD00000000000001ELL;
      goto LABEL_45;
    case 0x7FALL:
    case 0x7FBLL:
    case 0x7FCLL:
      v11 = "ot be synchronized";
      v12 = 0xD000000000000012;
LABEL_45:
      v19 = v11 | 0x8000000000000000;
      goto LABEL_46;
    default:
      v13 = "Reader could not be prepared";
LABEL_26:
      v19 = (v13 - 32) | 0x8000000000000000;
      v12 = 0xD00000000000001CLL;
LABEL_46:
      v33 = sub_2613783AC(v12, v19, v37);
      goto LABEL_47;
  }
}

uint64_t sub_261377F98(uint64_t a1)
{
  v2 = sub_2613785C8(&qword_27FEA0850, type metadata accessor for ConfigurationError);

  return MEMORY[0x28211CAD0](a1, v2);
}

uint64_t sub_261378004(uint64_t a1)
{
  v2 = sub_2613785C8(&qword_27FEA0850, type metadata accessor for ConfigurationError);

  return MEMORY[0x28211CA88](a1, v2);
}

uint64_t sub_261378070(void *a1, uint64_t a2)
{
  v4 = sub_2613785C8(&qword_27FEA0850, type metadata accessor for ConfigurationError);
  v5 = a1;

  return MEMORY[0x28211CA70](v5, a2, v4);
}

uint64_t sub_261378100(uint64_t a1, uint64_t a2)
{
  v4 = sub_2613785C8(&qword_27FEA0850, type metadata accessor for ConfigurationError);

  return MEMORY[0x28211CAB8](a1, a2, v4);
}

uint64_t sub_26137817C(uint64_t a1)
{
  v2 = sub_2613785C8(&qword_27FEA0870, type metadata accessor for ConfigurationError);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_2613781E8(uint64_t a1)
{
  v2 = sub_2613785C8(&qword_27FEA0870, type metadata accessor for ConfigurationError);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_261378254(uint64_t a1)
{
  v2 = sub_2613785C8(&qword_27FEA0850, type metadata accessor for ConfigurationError);

  return MEMORY[0x28211CA68](a1, v2);
}

uint64_t sub_2613782C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2613785C8(&qword_27FEA0850, type metadata accessor for ConfigurationError);

  return MEMORY[0x28211CA98](a1, a2, a3, v6);
}

uint64_t sub_261378344(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F2F0, &qword_2613A4BD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2613783AC(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a2;
  v4 = a1;
  if (a3)
  {
    v5 = a3;

    MEMORY[0x2666FFEA0](10272, 0xE200000000000000);
    type metadata accessor for ConfigurationError(0);
    sub_2613785C8(&qword_27FEA0850, type metadata accessor for ConfigurationError);
    sub_26139EE1C();
    v6 = sub_2613A23EC();
    MEMORY[0x2666FFEA0](v6);

    MEMORY[0x2666FFEA0](41, 0xE100000000000000);

    v4 = a1;
    v3 = a2;
  }

  else
  {
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F2E8, &unk_2613A43A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2613A4310;
  v8 = sub_26139F2CC();
  *(inited + 32) = sub_26139F29C();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 40) = v9;
  *(inited + 48) = v4;
  *(inited + 56) = v3;
  sub_261259E78(inited);
  swift_setDeallocating();
  sub_261378344(inited + 32);
  v10 = objc_allocWithZone(v8);
  return sub_26139F2DC();
}

uint64_t sub_2613785C8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26137887C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v55 = a5;
  v58 = a4;
  v59 = a3;
  v7 = sub_26139F0BC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v49[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v49[-v14];
  v16 = a1[1];
  if (!v16)
  {
    v26 = v59;
    sub_261378F40(a2, v59);
    v27 = [objc_opt_self() standardUserDefaults];
    v62 = 0;
    v63 = 0xE000000000000000;
    sub_2613A211C();

    v62 = 0xD000000000000013;
    v63 = 0x80000002613BDE80;
    MEMORY[0x2666FFEA0](a2, v26);
    v28 = sub_2613A189C();

    [v27 removeObjectForKey_];

    return 0;
  }

  v53 = v11;
  v54 = v8;
  v52 = v7;
  v17 = *a1;
  v19 = a1[2];
  v18 = a1[3];
  v20 = a1[4];
  v21 = sub_26129B5FC();
  sub_26124AA44(v21, v15);
  v22 = sub_2613A124C();
  v23 = *(v22 - 8);
  v24 = (*(v23 + 48))(v15, 1, v22);
  v56 = v18;
  v57 = v17;
  if (v24 == 1)
  {
    sub_26124D0CC(v15);
    v25 = v20;
  }

  else
  {
    v51 = a2;

    v29 = sub_2613A122C();
    v30 = v16;
    v31 = sub_2613A1D9C();
    sub_261273F3C(v17, v30);
    v50 = v31;
    v32 = v31;
    v16 = v30;
    v25 = v20;
    if (os_log_type_enabled(v29, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 134217984;
      v62 = v57;
      v63 = v30;
      v64 = v19;
      v65 = v56;
      v66 = v20;
      *(v33 + 4) = DeprecationWarning.remainingTimeUntilDeprecation.getter();
      _os_log_impl(&dword_261243000, v29, v50, "There is a OS deprecation warning, remaining time: %f", v33, 0xCu);
      MEMORY[0x266701350](v33, -1, -1);
    }

    (*(v23 + 8))(v15, v22);
    a2 = v51;
  }

  v35 = v56;
  v34 = v57;
  v62 = v57;
  v63 = v16;
  v64 = v19;
  v65 = v56;
  v66 = v25;
  v36 = DeprecationWarning.remainingTimeUntilDeprecation.getter();
  v37 = sub_261379024(a2, v59, v58, v36);
  v38 = v53;
  v39 = v54;
  if ((v37 & 1) == 0)
  {
    return 0;
  }

  v62 = v34;
  v63 = v16;
  v64 = v19;
  v65 = v35;
  v66 = v25;
  v40 = DeprecationWarning.remainingTimeUntilDeprecation.getter();
  v41 = [objc_opt_self() standardUserDefaults];
  v60 = 0;
  v61 = 0xE000000000000000;
  sub_2613A211C();

  v60 = 0xD000000000000013;
  v61 = 0x80000002613BDE80;
  MEMORY[0x2666FFEA0](a2, v59);
  v42 = sub_2613A189C();

  [v41 setDouble:v42 forKey:v40];

  v43 = v57;
  v44 = v55;
  if (v55)
  {
    v62 = v57;
    v63 = v16;
    v64 = v19;
    v65 = v35;
    v66 = v25;
    DeprecationWarning.deprecationDate.getter();
    sub_26139B0AC();
    (*(v39 + 8))(v38, v52);
  }

  sub_2613A121C();
  v62 = v43;
  v63 = v16;
  v64 = v19;
  v65 = v35;
  v66 = v25;
  DeprecationWarning.deprecationDate.getter();
  v45 = swift_allocObject();
  v45[2] = a2;
  v46 = v58;
  v45[3] = v59;
  v45[4] = v46;
  v45[5] = v44;

  v47 = sub_2613A114C();

  (*(v39 + 8))(v38, v52);
  return v47;
}

uint64_t sub_261378DC0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_26139F0BC();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1[1];
  if (v9)
  {
    v10 = a1[4];
    v14 = *(a1 + 1);
    v11 = *a1;
    v15 = v6;
    sub_26139F09C();
    v16 = v11;
    v17 = v9;
    v18 = v14;
    v19 = v10;
    DeprecationWarning.remainingTimeUntilDeprecation.getter();
    sub_26139F04C();
    (*(v15 + 8))(v8, v4);
    return (*(v15 + 56))(a2, 0, 1, v4);
  }

  else
  {
    v13 = *(v6 + 56);

    return v13(a2, 1, 1, v4);
  }
}

uint64_t sub_261378F40(uint64_t a1, uint64_t a2)
{
  v4 = [objc_opt_self() standardUserDefaults];
  sub_2613A211C();

  MEMORY[0x2666FFEA0](a1, a2);
  v5 = sub_2613A189C();

  [v4 doubleForKey_];
  v7 = v6;

  return v7;
}

uint64_t sub_261379024(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v62 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v62 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v62 - v20;
  v22 = (*(*a3 + 352))(v19);
  if ((v24 & 1) != 0 || ((v25 = v22, v26 = v23, v27 = sub_2612FF320(), v29 = v28 - v26, v27 == v25) ? (v30 = v29 > 2592000.0) : (v30 = 1), v30))
  {
    v31 = sub_26129B7C4();
    sub_26124AA44(v31, v12);
    v32 = sub_2613A124C();
    v33 = *(v32 - 8);
    if ((*(v33 + 48))(v12, 1, v32) != 1)
    {
      v35 = sub_2613A122C();
      v36 = sub_2613A1D9C();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        *v37 = 0;
        _os_log_impl(&dword_261243000, v35, v36, "OS deprecation received but merchant is not active, alert is not needed", v37, 2u);
        MEMORY[0x266701350](v37, -1, -1);
      }

      (*(v33 + 8))(v12, v32);
      return 0;
    }

    v34 = v12;
LABEL_9:
    sub_26124D0CC(v34);
    return 0;
  }

  if (a4 < 0.0)
  {
    v39 = sub_26129B7C4();
    sub_26124AA44(v39, v15);
    v40 = sub_2613A124C();
    v41 = *(v40 - 8);
    if ((*(v41 + 48))(v15, 1, v40) != 1)
    {
      v45 = sub_2613A122C();
      v46 = sub_2613A1D8C();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        *v47 = 0;
        _os_log_impl(&dword_261243000, v45, v46, "OS is deprecated, unexpected negative remaining time", v47, 2u);
        MEMORY[0x266701350](v47, -1, -1);
      }

      (*(v41 + 8))(v15, v40);
      return 0;
    }

    v34 = v15;
    goto LABEL_9;
  }

  if (a4 > 7776000.0)
  {
    v42 = sub_26129B7C4();
    sub_26124AA44(v42, v18);
    v43 = sub_2613A124C();
    v44 = *(v43 - 8);
    if ((*(v44 + 48))(v18, 1, v43) != 1)
    {
      v52 = sub_2613A122C();
      v53 = sub_2613A1D9C();
      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        *v54 = 0;
        _os_log_impl(&dword_261243000, v52, v53, "OS deprecation is greater than 90 days, alert is not needed", v54, 2u);
        MEMORY[0x266701350](v54, -1, -1);
      }

      (*(v44 + 8))(v18, v43);
      return 0;
    }

    v34 = v18;
    goto LABEL_9;
  }

  v48 = COERCE_DOUBLE(sub_261378F40(a1, a2));
  if (v48 >= a4)
  {
    if (a4 <= 259200.0)
    {
      v58 = 86400.0;
      if (a4 > 86400.0)
      {
        *&v59 = 172800.0;
        if (a4 > 172800.0)
        {
          *&v59 = 259200.0;
        }

        v58 = *&v59;
      }

      if (v58 >= v48)
      {
        return 0;
      }
    }

    else if (v48 - a4 < 604800.0)
    {
      return 0;
    }
  }

  else
  {
    v49 = sub_26129B7C4();
    sub_26124AA44(v49, v21);
    v50 = sub_2613A124C();
    v51 = *(v50 - 8);
    if ((*(v51 + 48))(v21, 1, v50) == 1)
    {
      sub_26124D0CC(v21);
    }

    else
    {
      v55 = sub_2613A122C();
      v56 = sub_2613A1D9C();
      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        *v57 = 0;
        _os_log_impl(&dword_261243000, v55, v56, "OS deprecation was postponed, showing alert with new deadline", v57, 2u);
        MEMORY[0x266701350](v57, -1, -1);
      }

      (*(v51 + 8))(v21, v50);
    }
  }

  v60 = [objc_opt_self() standardUserDefaults];
  v62 = 0;
  v63 = 0xE000000000000000;
  sub_2613A211C();

  v62 = 0xD000000000000013;
  v63 = 0x80000002613BDE80;
  MEMORY[0x2666FFEA0](a1, a2);
  v61 = sub_2613A189C();

  [v60 setDouble:v61 forKey:a4];

  return 1;
}

uint64_t sub_2613796F8(uint64_t result)
{
  if (*(v1 + 40))
  {
    return sub_26139B28C(result & 1);
  }

  return result;
}

uint64_t sub_261379734@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, void *a4@<X8>)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v51 - v12;
  v14 = OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_analyticsSessions;
  swift_beginAccess();
  v15 = *(v4 + v14);
  if (!*(v15 + 16) || (v16 = sub_26124E5EC(a1, a2), (v17 & 1) == 0))
  {
    LODWORD(v55) = a3;
    swift_endAccess();
    v36 = sub_26129B858();
    sub_26125A870(v36, v13, &qword_27FE9F560, &qword_2613A3CB0);
    v37 = sub_2613A124C();
    v38 = *(v37 - 8);
    if ((*(v38 + 48))(v13, 1, v37) == 1)
    {
      sub_26124C718(v13, &qword_27FE9F560, &qword_2613A3CB0);
      if ((v55 & 1) == 0)
      {
LABEL_6:
        v39 = sub_2613A040C();
LABEL_11:
        v46 = v39;
        v47 = v40;
        v48 = *(v5 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_terminalContext + 16);
        v63[0] = *(v5 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_terminalContext);
        v63[1] = v48;
        v64 = *(v5 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_terminalContext + 32);
        v65 = v63[0];
        v66 = v48;
        v67 = v64;
        sub_2612DDE08(&v65, &v57);
        sub_2612DDE08(&v66, &v57);
        sub_2612DDE08(&v67, &v57);
        sub_2612D88E0(v63, v46, v47, &v57);
        swift_beginAccess();

        sub_26135F62C(&v57, v56);
        v49 = *(v5 + v14);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v56[0] = *(v5 + v14);
        *(v5 + v14) = 0x8000000000000000;
        sub_26135A79C(&v57, a1, a2, isUniquelyReferenced_nonNull_native);

        *(v5 + v14) = v56[0];
        result = swift_endAccess();
        v35 = *(&v62 + 1);
        v34 = v62;
        v33 = *(&v61 + 1);
        v32 = v61;
        v24 = *(&v60 + 1);
        v23 = v60;
        v26 = *(&v57 + 1);
        v25 = v57;
        v28 = *(&v58 + 1);
        v27 = v58;
        v30 = *(&v59 + 1);
        v29 = v59;
        goto LABEL_12;
      }
    }

    else
    {
      v54 = a1;
      v41 = sub_2613A122C();
      v42 = sub_2613A1D9C();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v53 = a2;
        v44 = v43;
        *v43 = 0;
        _os_log_impl(&dword_261243000, v41, v42, "Identity analytics session is not available, trying to create it", v43, 2u);
        v45 = v44;
        a2 = v53;
        MEMORY[0x266701350](v45, -1, -1);
      }

      (*(v38 + 8))(v13, v37);
      a1 = v54;
      if ((v55 & 1) == 0)
      {
        goto LABEL_6;
      }
    }

    v39 = sub_2613A03FC();
    goto LABEL_11;
  }

  v18 = (*(v15 + 56) + 96 * v16);
  v19 = v18[1];
  v57 = *v18;
  v58 = v19;
  v20 = v18[5];
  v22 = v18[2];
  v21 = v18[3];
  v61 = v18[4];
  v62 = v20;
  v59 = v22;
  v60 = v21;
  swift_endAccess();
  v54 = *(&v62 + 1);
  v55 = v62;
  v52 = *(&v61 + 1);
  v53 = v61;
  v24 = *(&v60 + 1);
  v23 = v60;
  v26 = *(&v57 + 1);
  v25 = v57;
  v28 = *(&v58 + 1);
  v27 = v58;
  v30 = *(&v59 + 1);
  v29 = v59;
  result = sub_26135F62C(&v57, v56);
  v33 = v52;
  v32 = v53;
  v35 = v54;
  v34 = v55;
LABEL_12:
  *a4 = v25;
  a4[1] = v26;
  a4[2] = v27;
  a4[3] = v28;
  a4[4] = v29;
  a4[5] = v30;
  a4[6] = v23;
  a4[7] = v24;
  a4[8] = v32;
  a4[9] = v33;
  a4[10] = v34;
  a4[11] = v35;
  return result;
}

uint64_t sub_261379ADC(uint64_t a1, uint64_t a2)
{
  v3[5] = v2;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0750, &qword_2613ACF00) - 8) + 64) + 15;
  v7 = swift_task_alloc();
  v3[6] = v7;
  v8 = swift_task_alloc();
  v3[7] = v8;
  *v8 = v3;
  v8[1] = sub_261379BC8;

  return sub_261379D64(v7, a1, a2);
}

uint64_t sub_261379BC8()
{
  v1 = *(*v0 + 56);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_261379CC4);
}

uint64_t sub_261379CC4()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_analyticsTransaction;
  swift_beginAccess();
  sub_261349F44(v2, v1 + v3);
  swift_endAccess();

  v4 = v0[1];

  return v4();
}

uint64_t sub_261379D64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[16] = a3;
  v4[17] = v3;
  v4[14] = a1;
  v4[15] = a2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0) - 8) + 64) + 15;
  v4[18] = swift_task_alloc();
  v6 = *(*(type metadata accessor for IdentityAnalyticsRequestInformation(0) - 8) + 64) + 15;
  v4[19] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9FD30, "HM") - 8) + 64) + 15;
  v4[20] = swift_task_alloc();
  v8 = type metadata accessor for IdentityAnalyticsReporter(0);
  v4[21] = v8;
  v9 = *(v8 - 8);
  v4[22] = v9;
  v10 = *(v9 + 64) + 15;
  v4[23] = swift_task_alloc();
  v11 = sub_2613A006C();
  v4[24] = v11;
  v12 = *(v11 - 8);
  v4[25] = v12;
  v13 = *(v12 + 64) + 15;
  v4[26] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261379F20);
}

uint64_t sub_261379F20()
{
  v2 = v0[25];
  v1 = v0[26];
  v3 = v0[24];
  v4 = v0[15];
  v5 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_2613A00DC();
  v6 = sub_2613A005C();
  (*(v2 + 8))(v1, v3);
  if (v6)
  {
    v7 = sub_2613A08FC();
  }

  else
  {
    v7 = sub_2613A08EC();
  }

  v9 = v7;
  v10 = v8;
  v0[27] = v8;
  v0[28] = v7;
  v11 = swift_task_alloc();
  v0[29] = v11;
  *v11 = v0;
  v11[1] = sub_26137A03C;
  v12 = v0[20];
  v13 = v0[17];

  return sub_26137AED4(v12, v9, v10);
}

uint64_t sub_26137A03C()
{
  v1 = *(*v0 + 232);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_26137A138);
}

uint64_t sub_26137A138()
{
  v60 = v0;
  v1 = *(v0 + 160);
  if ((*(*(v0 + 176) + 48))(v1, 1, *(v0 + 168)) == 1)
  {
    v2 = *(v0 + 216);
    v3 = *(v0 + 112);

    sub_26124C718(v1, &qword_27FE9FD30, "HM");
    v4 = type metadata accessor for IdentityAnalyticsTransaction(0);
    (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  }

  else
  {
    v5 = *(v0 + 208);
    v6 = *(v0 + 144);
    v57 = *(v0 + 152);
    v7 = *(v0 + 128);
    v8 = *(v0 + 136);
    v9 = *(v0 + 120);
    sub_26137D284(v1, *(v0 + 184), type metadata accessor for IdentityAnalyticsReporter);
    v10 = v9[4];
    __swift_project_boxed_opaque_existential_1(v9, v9[3]);
    v11 = sub_2613A00FC();
    v13 = v12;
    v14 = sub_26139FF0C();
    v16 = v15;

    v17 = HIBYTE(v16) & 0xF;
    if ((v16 & 0x2000000000000000) == 0)
    {
      v17 = v14 & 0xFFFFFFFFFFFFLL;
    }

    sub_261379734(v11, v13, v17 != 0, (v0 + 16));

    v18 = v9[4];
    __swift_project_boxed_opaque_existential_1(v9, v9[3]);
    v19 = sub_2613A00CC();
    v20 = v9[4];
    __swift_project_boxed_opaque_existential_1(v9, v9[3]);
    v21 = sub_2613A00EC();
    v22 = v9[4];
    __swift_project_boxed_opaque_existential_1(v9, v9[3]);
    sub_2613A00DC();
    sub_2612D92B4(v19 & 1, v21, v5, v57);
    v23 = sub_26139FEFC();
    v25 = v24;
    sub_26139FF0C();
    v26 = nullsub_1(v23, v25);
    v28 = v27;
    v58 = v29;
    v31 = v30;
    v32 = sub_26129B858();
    sub_26125A870(v32, v6, &qword_27FE9F560, &qword_2613A3CB0);
    v33 = sub_2613A124C();
    v34 = *(v33 - 8);
    v35 = (*(v34 + 48))(v6, 1, v33);
    v36 = *(v0 + 216);
    v37 = *(v0 + 144);
    if (v35 == 1)
    {

      sub_26124C718(v37, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v56 = v26;

      v38 = sub_2613A122C();
      v39 = sub_2613A1D9C();

      if (os_log_type_enabled(v38, v39))
      {
        v55 = v31;
        v41 = *(v0 + 216);
        v40 = *(v0 + 224);
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v59 = v43;
        *v42 = 136315138;
        v44 = sub_26124C11C(v40, v41, &v59);
        v31 = v55;

        *(v42 + 4) = v44;
        _os_log_impl(&dword_261243000, v38, v39, "Identity analytics transaction for [%s] is ready", v42, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v43);
        MEMORY[0x266701350](v43, -1, -1);
        MEMORY[0x266701350](v42, -1, -1);
      }

      else
      {
        v45 = *(v0 + 216);
      }

      (*(v34 + 8))(*(v0 + 144), v33);
      v26 = v56;
    }

    v46 = *(v0 + 184);
    v47 = *(v0 + 152);
    sub_2612D8F54(v46, v26, v28, v58, v31, v47, *(v0 + 112));
    sub_26137D2EC(v0 + 16);

    sub_26137D340(v47, type metadata accessor for IdentityAnalyticsRequestInformation);
    sub_26137D340(v46, type metadata accessor for IdentityAnalyticsReporter);
  }

  v48 = *(v0 + 208);
  v49 = *(v0 + 184);
  v51 = *(v0 + 152);
  v50 = *(v0 + 160);
  v52 = *(v0 + 144);

  v53 = *(v0 + 8);

  return v53();
}

uint64_t sub_26137A604(char a1, uint64_t a2)
{
  v5 = sub_26139F33C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F580, &qword_2613A5480);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v17 - v10;
  v12 = sub_2613A1C1C();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  (*(v6 + 16))(&v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v5);
  v13 = (*(v6 + 80) + 41) & ~*(v6 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  *(v14 + 32) = v2;
  *(v14 + 40) = a1;
  (*(v6 + 32))(v14 + v13, &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  v15 = v2;
  sub_261266800(0, 0, v11, &unk_2613AD7E0, v14);
}

uint64_t sub_26137A7EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v6 + 352) = a5;
  *(v6 + 256) = a4;
  *(v6 + 264) = a6;
  v7 = sub_26139F30C();
  *(v6 + 272) = v7;
  v8 = *(v7 - 8);
  *(v6 + 280) = v8;
  v9 = *(v8 + 64) + 15;
  *(v6 + 288) = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0) - 8) + 64) + 15;
  *(v6 + 296) = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9FD30, "HM") - 8) + 64) + 15;
  *(v6 + 304) = swift_task_alloc();
  v12 = type metadata accessor for IdentityAnalyticsReporter(0);
  *(v6 + 312) = v12;
  v13 = *(v12 - 8);
  *(v6 + 320) = v13;
  v14 = *(v13 + 64) + 15;
  *(v6 + 328) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26137A97C);
}

uint64_t sub_26137A97C()
{
  v1 = sub_2613A08EC();
  v3 = v2;
  v0[42] = v2;
  v4 = swift_task_alloc();
  v0[43] = v4;
  *v4 = v0;
  v4[1] = sub_26137AA34;
  v5 = v0[38];
  v6 = v0[32];

  return sub_26137AED4(v5, v1, v3);
}

uint64_t sub_26137AA34()
{
  v1 = *(*v0 + 344);
  v2 = *(*v0 + 336);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_26137AB4C);
}

uint64_t sub_26137AB4C()
{
  v1 = *(v0 + 304);
  if ((*(*(v0 + 320) + 48))(v1, 1, *(v0 + 312)) != 1)
  {
    v6 = *(v0 + 352);
    sub_26137D284(v1, *(v0 + 328), type metadata accessor for IdentityAnalyticsReporter);
    if (v6 == 1)
    {
      v7 = sub_2613A03FC();
    }

    else
    {
      v7 = sub_2613A040C();
    }

    v14 = v7;
    v15 = v8;
    v17 = *(v0 + 280);
    v16 = *(v0 + 288);
    v18 = *(v0 + 264);
    v19 = *(v0 + 272);
    v20 = (*(v0 + 256) + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_terminalContext);
    v22 = v20[1];
    v21 = v20[2];
    *(v0 + 112) = *v20;
    *(v0 + 128) = v22;
    *(v0 + 144) = v21;
    *(v0 + 192) = *v20;
    *(v0 + 176) = v20[1];
    *(v0 + 160) = v20[2];
    sub_2612DDE08(v0 + 192, v0 + 208);
    sub_2612DDE08(v0 + 176, v0 + 224);
    sub_2612DDE08(v0 + 160, v0 + 240);
    sub_2612D88E0((v0 + 112), v14, v15, v0 + 16);
    sub_26139F32C();
    v23 = (*(v17 + 88))(v16, v19);
    if (v23 == *MEMORY[0x277D43648])
    {
      v24 = sub_2613A099C();
    }

    else
    {
      if (v23 != *MEMORY[0x277D43698])
      {
        v29 = *(v0 + 280);
        v28 = *(v0 + 288);
        v30 = *(v0 + 272);
        v26 = sub_2613A09AC();
        v27 = v31;
        (*(v29 + 8))(v28, v30);
        goto LABEL_16;
      }

      v24 = sub_2613A09CC();
    }

    v26 = v24;
    v27 = v25;
LABEL_16:
    v32 = *(v0 + 328);
    sub_2612D8B9C(v32, v26, v27);

    sub_26137D2EC(v0 + 16);
    sub_26137D340(v32, type metadata accessor for IdentityAnalyticsReporter);
    goto LABEL_17;
  }

  v2 = *(v0 + 296);
  sub_26124C718(v1, &qword_27FE9FD30, "HM");
  v3 = sub_26129B858();
  sub_26125A870(v3, v2, &qword_27FE9F560, &qword_2613A3CB0);
  v4 = sub_2613A124C();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(v2, 1, v4) == 1)
  {
    sub_26124C718(*(v0 + 296), &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v9 = *(v0 + 296);
    v10 = sub_2613A122C();
    v11 = sub_2613A1D8C();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_261243000, v10, v11, "Identity analytics reporter could not be created", v12, 2u);
      MEMORY[0x266701350](v12, -1, -1);
    }

    v13 = *(v0 + 296);

    (*(v5 + 8))(v13, v4);
  }

LABEL_17:
  v33 = *(v0 + 328);
  v34 = *(v0 + 296);
  v35 = *(v0 + 304);
  v36 = *(v0 + 288);

  v37 = *(v0 + 8);

  return v37();
}

uint64_t sub_26137AED4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0) - 8) + 64) + 15;
  v4[6] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9FD30, "HM") - 8) + 64) + 15;
  v4[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26137AFAC);
}

uint64_t sub_26137AFAC()
{
  v1 = *(**(v0[5] + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_analyticsManager) + 120);
  v8 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  v3[1] = sub_26137B0DC;
  v4 = v0[7];
  v5 = v0[3];
  v6 = v0[4];

  return v8(v4, v5, v6);
}

uint64_t sub_26137B0DC()
{
  v1 = *(*v0 + 64);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_26137B1D8);
}

uint64_t sub_26137B1D8()
{
  v21 = v0;
  v1 = v0[7];
  v2 = type metadata accessor for IdentityAnalyticsReporter(0);
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[6];
    sub_26124C718(v1, &qword_27FE9FD30, "HM");
    v5 = sub_26129B858();
    sub_26125A870(v5, v4, &qword_27FE9F560, &qword_2613A3CB0);
    v6 = sub_2613A124C();
    v7 = *(v6 - 8);
    if ((*(v7 + 48))(v4, 1, v6) == 1)
    {
      sub_26124C718(v0[6], &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v9 = v0[4];

      v10 = sub_2613A122C();
      v11 = sub_2613A1D9C();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = v0[3];
        v19 = v0[4];
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v20 = v14;
        *v13 = 136315138;
        *(v13 + 4) = sub_26124C11C(v12, v19, &v20);
        _os_log_impl(&dword_261243000, v10, v11, "Could not create identity analytics reporter [%s]", v13, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v14);
        MEMORY[0x266701350](v14, -1, -1);
        MEMORY[0x266701350](v13, -1, -1);
      }

      (*(v7 + 8))(v0[6], v6);
    }

    v8 = 1;
  }

  else
  {
    sub_26137D284(v1, v0[2], type metadata accessor for IdentityAnalyticsReporter);
    v8 = 0;
  }

  v16 = v0[6];
  v15 = v0[7];
  (*(v3 + 56))(v0[2], v8, 1, v2);

  v17 = v0[1];

  return v17();
}

uint64_t sub_26137B4C0(uint64_t a1, uint64_t a2)
{
  v5 = sub_26139F33C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F580, &qword_2613A5480);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v17 - v10;
  v12 = sub_2613A1C1C();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  sub_2612B5A20(a1, v18);
  (*(v6 + 16))(&v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v5);
  v13 = (*(v6 + 80) + 80) & ~*(v6 + 80);
  v14 = swift_allocObject();
  *(v14 + 2) = 0;
  *(v14 + 3) = 0;
  *(v14 + 4) = v2;
  sub_26124A200(v18, (v14 + 40));
  (*(v6 + 32))(&v14[v13], &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  v15 = v2;
  sub_261266800(0, 0, v11, &unk_2613AD7F0, v14);
}

uint64_t sub_26137B6B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v8 = sub_26139F30C();
  v6[5] = v8;
  v9 = *(v8 - 8);
  v6[6] = v9;
  v10 = *(v9 + 64) + 15;
  v6[7] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0) - 8) + 64) + 15;
  v6[8] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0750, &qword_2613ACF00) - 8) + 64) + 15;
  v6[9] = swift_task_alloc();
  v13 = type metadata accessor for IdentityAnalyticsTransaction(0);
  v6[10] = v13;
  v14 = *(v13 - 8);
  v6[11] = v14;
  v15 = *(v14 + 64) + 15;
  v6[12] = swift_task_alloc();
  v16 = sub_26139FF3C();
  v6[13] = v16;
  v17 = *(v16 - 8);
  v6[14] = v17;
  v18 = *(v17 + 64) + 15;
  v6[15] = swift_task_alloc();
  v19 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA08A8, &qword_2613AD7F8) - 8) + 64) + 15;
  v6[16] = swift_task_alloc();
  v20 = swift_task_alloc();
  v6[17] = v20;
  v21 = swift_task_alloc();
  v6[18] = v21;
  *v21 = v6;
  v21[1] = sub_26137B938;

  return sub_26134FBC8(v20, a5);
}

uint64_t sub_26137B938()
{
  v2 = *(*v1 + 144);
  v5 = *v1;

  if (v0)
  {

    v3 = sub_26137C07C;
  }

  else
  {
    v3 = sub_26137BA50;
  }

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_26137BA50()
{
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[13];
  v4 = v0[14];
  (*(v4 + 56))(v2, 0, 1, v3);
  sub_26125A870(v2, v1, &qword_27FEA08A8, &qword_2613AD7F8);
  v5 = *(v4 + 48);
  v6 = v5(v1, 1, v3);
  v7 = v0[16];
  if (v6 == 1)
  {
    v8 = v0[13];
    v9 = v0[15];
    sub_26139FF1C();
    if (v5(v7, 1, v8) != 1)
    {
      sub_26124C718(v0[16], &qword_27FEA08A8, &qword_2613AD7F8);
    }
  }

  else
  {
    (*(v0[14] + 32))(v0[15], v0[16], v0[13]);
  }

  v10 = swift_task_alloc();
  v0[19] = v10;
  *v10 = v0;
  v10[1] = sub_26137BBD0;
  v11 = v0[15];
  v12 = v0[9];
  v14 = v0[2];
  v13 = v0[3];

  return sub_261379D64(v12, v13, v11);
}

uint64_t sub_26137BBD0()
{
  v1 = *(*v0 + 152);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_26137BCCC);
}

uint64_t sub_26137BCCC()
{
  v1 = v0[9];
  if ((*(v0[11] + 48))(v1, 1, v0[10]) != 1)
  {
    v12 = v0[6];
    v11 = v0[7];
    v13 = v0[4];
    v14 = v0[5];
    sub_26137D284(v1, v0[12], type metadata accessor for IdentityAnalyticsTransaction);
    sub_26139F32C();
    v15 = (*(v12 + 88))(v11, v14);
    if (v15 == *MEMORY[0x277D43648])
    {
      v16 = sub_2613A099C();
      v18 = v17;
    }

    else if (v15 == *MEMORY[0x277D43698])
    {
      v16 = sub_2613A09CC();
      v18 = v28;
    }

    else
    {
      v30 = v0[6];
      v29 = v0[7];
      v31 = v0[5];
      v32 = sub_2613A09AC();
      v18 = v33;
      (*(v30 + 8))(v29, v31);
      v16 = v32;
    }

    v34 = v0[17];
    v36 = v0[14];
    v35 = v0[15];
    v37 = v0[12];
    v38 = v0[13];
    sub_2612DBA44(v16, v18);

    sub_26137D340(v37, type metadata accessor for IdentityAnalyticsTransaction);
    (*(v36 + 8))(v35, v38);
    v8 = &qword_27FEA08A8;
    v9 = &qword_2613AD7F8;
    v10 = v34;
    goto LABEL_13;
  }

  v2 = v0[8];
  sub_26124C718(v1, &qword_27FEA0750, &qword_2613ACF00);
  v3 = sub_26129B858();
  sub_26125A870(v3, v2, &qword_27FE9F560, &qword_2613A3CB0);
  v4 = sub_2613A124C();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(v2, 1, v4) == 1)
  {
    v6 = v0[17];
    v7 = v0[8];
    (*(v0[14] + 8))(v0[15], v0[13]);
    sub_26124C718(v6, &qword_27FEA08A8, &qword_2613AD7F8);
    v8 = &qword_27FE9F560;
    v9 = &qword_2613A3CB0;
    v10 = v7;
LABEL_13:
    sub_26124C718(v10, v8, v9);
    goto LABEL_14;
  }

  v19 = v0[8];
  v20 = sub_2613A122C();
  v21 = sub_2613A1D8C();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_261243000, v20, v21, "Could not create identity analytics transaction", v22, 2u);
    MEMORY[0x266701350](v22, -1, -1);
  }

  v23 = v0[17];
  v25 = v0[14];
  v24 = v0[15];
  v26 = v0[13];
  v27 = v0[8];

  (*(v25 + 8))(v24, v26);
  sub_26124C718(v23, &qword_27FEA08A8, &qword_2613AD7F8);
  (*(v5 + 8))(v27, v4);
LABEL_14:
  v40 = v0[16];
  v39 = v0[17];
  v41 = v0[15];
  v42 = v0[12];
  v44 = v0[8];
  v43 = v0[9];
  v45 = v0[7];

  v46 = v0[1];

  return v46();
}

uint64_t sub_26137C07C()
{
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[13];
  v4 = v0[14];
  (*(v4 + 56))(v2, 1, 1, v3);
  sub_26125A870(v2, v1, &qword_27FEA08A8, &qword_2613AD7F8);
  v5 = *(v4 + 48);
  v6 = v5(v1, 1, v3);
  v7 = v0[16];
  if (v6 == 1)
  {
    v8 = v0[13];
    v9 = v0[15];
    sub_26139FF1C();
    if (v5(v7, 1, v8) != 1)
    {
      sub_26124C718(v0[16], &qword_27FEA08A8, &qword_2613AD7F8);
    }
  }

  else
  {
    (*(v0[14] + 32))(v0[15], v0[16], v0[13]);
  }

  v10 = swift_task_alloc();
  v0[19] = v10;
  *v10 = v0;
  v10[1] = sub_26137BBD0;
  v11 = v0[15];
  v12 = v0[9];
  v14 = v0[2];
  v13 = v0[3];

  return sub_261379D64(v12, v13, v11);
}

uint64_t sub_26137C1FC()
{
  v1 = type metadata accessor for IdentityAnalyticsTransaction(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_analyticsTransaction;
  swift_beginAccess();
  result = (*(v2 + 48))(v0 + v6, 1, v1);
  if (!result)
  {
    sub_26135E584(v0 + v6, v5);
    v8 = sub_2613A096C();
    v10 = v9;
    v11 = sub_2613A08BC();
    sub_2612DC0FC(v8, v10, v11, v12);

    return sub_26137D340(v5, type metadata accessor for IdentityAnalyticsTransaction);
  }

  return result;
}

uint64_t sub_26137C34C(uint64_t a1, char a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v56 - v8;
  v10 = type metadata accessor for IdentityAnalyticsTransaction(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  result = MEMORY[0x28223BE20](v10);
  v15 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  switch(a3)
  {
    case 0:
    case 4:
    case 5:
    case 16:
    case 18:
    case 19:
    case 20:
      return result;
    case 1:
      v27 = OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_analyticsTransaction;
      swift_beginAccess();
      result = (*(v11 + 48))(v3 + v27, 1, v10);
      if (!result)
      {
        sub_26135E584(v3 + v27, v15);
        v25 = sub_2613A0A7C();
        goto LABEL_19;
      }

      break;
    case 2:
      v30 = OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_analyticsTransaction;
      swift_beginAccess();
      result = (*(v11 + 48))(v3 + v30, 1, v10);
      if (!result)
      {
        sub_26135E584(v3 + v30, v15);
        v25 = sub_2613A0A1C();
        goto LABEL_19;
      }

      break;
    case 3:
      if ((a2 & 1) != 0 || (v23 = sub_26139F92C(), result = sub_26139F92C(), v23 != result))
      {
        v24 = OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_analyticsTransaction;
        swift_beginAccess();
        result = (*(v11 + 48))(v3 + v24, 1, v10);
        if (!result)
        {
          sub_26135E584(v3 + v24, v15);
          v25 = sub_2613A0A3C();
LABEL_19:
          sub_2612DC210(v25, v26);
          goto LABEL_6;
        }
      }

      break;
    case 6:
      if ((a2 & 1) == 0 && ((v44 = sub_26139F92C(), v44 == sub_26139F92C()) || (v45 = sub_26139F92C(), v45 == sub_26139F92C()) || (v46 = sub_26139F92C(), v46 == sub_26139F92C())))
      {
        v47 = OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_analyticsTransaction;
        swift_beginAccess();
        result = (*(v11 + 48))(v3 + v47, 1, v10);
        if (!result)
        {
          sub_26135E584(v3 + v47, v15);
          v19 = sub_2613A0AFC();
          v20 = v48;
          v21 = sub_2613A09DC();
          goto LABEL_5;
        }
      }

      else
      {
        v28 = OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_analyticsTransaction;
        swift_beginAccess();
        result = (*(v11 + 48))(v3 + v28, 1, v10);
        if (!result)
        {
          sub_26135E584(v3 + v28, v15);
          v19 = sub_2613A0B9C();
          v20 = v29;
          v21 = sub_2613A09BC();
          goto LABEL_5;
        }
      }

      break;
    case 7:
    case 8:
    case 9:
    case 12:
    case 13:
    case 14:
    case 21:
      v16 = OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_analyticsTransaction;
      swift_beginAccess();
      result = (*(v11 + 48))(v3 + v16, 1, v10);
      if (!result)
      {
        sub_26135E584(v3 + v16, v15);
        v17 = sub_2613A0AFC();
        goto LABEL_4;
      }

      break;
    case 10:
      v35 = OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_analyticsTransaction;
      swift_beginAccess();
      result = (*(v11 + 48))(v3 + v35, 1, v10);
      if (!result)
      {
        sub_26135E584(v3 + v35, v15);
        v19 = sub_2613A0A4C();
        v20 = v36;
        v21 = sub_2613A09CC();
        goto LABEL_5;
      }

      break;
    case 11:
      v40 = OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_analyticsTransaction;
      swift_beginAccess();
      result = (*(v11 + 48))(v3 + v40, 1, v10);
      if (!result)
      {
        sub_26135E584(v3 + v40, v15);
        v19 = sub_2613A0A4C();
        v20 = v41;
        v21 = sub_2613A099C();
        goto LABEL_5;
      }

      break;
    case 15:
      if ((a2 & 1) != 0 || (v31 = sub_26139F92C(), v31 != sub_26139F92C()))
      {
        v42 = OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_analyticsTransaction;
        swift_beginAccess();
        result = (*(v11 + 48))(v3 + v42, 1, v10);
        if (!result)
        {
          sub_26135E584(v3 + v42, v15);
          v19 = sub_2613A0AFC();
          v20 = v43;
          v21 = sub_2613A098C();
          goto LABEL_5;
        }
      }

      else
      {
        v32 = OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_analyticsTransaction;
        swift_beginAccess();
        result = (*(v11 + 48))(v3 + v32, 1, v10);
        if (!result)
        {
          sub_26135E584(v3 + v32, v15);
          v19 = sub_2613A0B9C();
          v20 = v33;
          v21 = sub_2613A09EC();
          goto LABEL_5;
        }
      }

      break;
    case 17:
      v34 = OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_analyticsTransaction;
      swift_beginAccess();
      result = (*(v11 + 48))(v3 + v34, 1, v10);
      if (!result)
      {
        sub_26135E584(v3 + v34, v15);
        v17 = sub_2613A0A4C();
LABEL_4:
        v19 = v17;
        v20 = v18;
        v21 = sub_2613A09AC();
LABEL_5:
        sub_2612DC2FC(v19, v20, v21, v22);

LABEL_6:

        result = sub_26137D340(v15, type metadata accessor for IdentityAnalyticsTransaction);
      }

      break;
    default:
      v37 = sub_26129B858();
      sub_26125A870(v37, v9, &qword_27FE9F560, &qword_2613A3CB0);
      v38 = sub_2613A124C();
      v39 = *(v38 - 8);
      if ((*(v39 + 48))(v9, 1, v38) == 1)
      {
        result = sub_26124C718(v9, &qword_27FE9F560, &qword_2613A3CB0);
      }

      else
      {
        v49 = sub_2613A122C();
        v50 = sub_2613A1D8C();
        if (os_log_type_enabled(v49, v50))
        {
          v51 = swift_slowAlloc();
          v52 = swift_slowAlloc();
          v57 = v52;
          *v51 = 136315138;
          v53 = sub_26139F91C();
          v55 = sub_26124C11C(v53, v54, &v57);

          *(v51 + 4) = v55;
          _os_log_impl(&dword_261243000, v49, v50, "No analytics for UI event: [%s]", v51, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v52);
          MEMORY[0x266701350](v52, -1, -1);
          MEMORY[0x266701350](v51, -1, -1);
        }

        result = (*(v39 + 8))(v9, v38);
      }

      break;
  }

  return result;
}

uint64_t sub_26137CAE0()
{
  v1 = v0;
  v2 = type metadata accessor for IdentityAnalyticsTransaction(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v21 - v9;
  v11 = sub_26129B858();
  sub_26125A870(v11, v10, &qword_27FE9F560, &qword_2613A3CB0);
  v12 = sub_2613A124C();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v10, 1, v12) == 1)
  {
    sub_26124C718(v10, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v14 = sub_26125A798();
    v15 = sub_261291AA8();
    sub_26129BC3C(v14 & 1, v1, 0xD000000000000015, 0x80000002613BDEA0, v15, v16);

    (*(v13 + 8))(v10, v12);
  }

  v17 = OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_analyticsTransaction;
  swift_beginAccess();
  result = (*(v3 + 48))(v1 + v17, 1, v2);
  if (!result)
  {
    sub_26135E584(v1 + v17, v6);
    v19 = sub_2613A0A8C();
    sub_2612DC210(v19, v20);

    return sub_26137D340(v6, type metadata accessor for IdentityAnalyticsTransaction);
  }

  return result;
}

uint64_t sub_26137CDA4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for IdentityAnalyticsTransaction(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v25 - v13;
  v15 = sub_26129B858();
  sub_26125A870(v15, v14, &qword_27FE9F560, &qword_2613A3CB0);
  v16 = sub_2613A124C();
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v14, 1, v16) == 1)
  {
    sub_26124C718(v14, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v27 = v3;
    v18 = sub_26125A798();
    v19 = sub_261291AA8();
    v26 = v7;
    v3 = v27;
    sub_26129BC3C(v18 & 1, v27, 0xD000000000000017, 0x80000002613BDEC0, v19, v20);
    v7 = v26;

    (*(v17 + 8))(v14, v16);
  }

  v21 = OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_analyticsTransaction;
  swift_beginAccess();
  result = (*(v7 + 48))(v3 + v21, 1, v6);
  if (!result)
  {
    sub_26135E584(v3 + v21, v10);
    v23 = sub_2613A0BCC();
    sub_2612DC2FC(v23, v24, a1, a2);

    return sub_26137D340(v10, type metadata accessor for IdentityAnalyticsTransaction);
  }

  return result;
}

uint64_t sub_26137D0C8()
{
  v2 = *(sub_26139F33C() - 8);
  v3 = (*(v2 + 80) + 41) & ~*(v2 + 80);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_261265144;

  return sub_26137A7EC(v6, v7, v8, v4, v5, v0 + v3);
}

uint64_t sub_26137D1A8()
{
  v2 = *(sub_26139F33C() - 8);
  v3 = (*(v2 + 80) + 80) & ~*(v2 + 80);
  v4 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_261262AA4;

  return sub_26137B6B8(v5, v6, v7, v4, v0 + 40, v0 + v3);
}

uint64_t sub_26137D284(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_26137D340(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_26137D3A0()
{
  v1 = *v0;
  sub_2613A256C();
  MEMORY[0x2667009F0](v1 + 1);
  return sub_2613A25CC();
}

uint64_t sub_26137D418()
{
  v1 = *v0;
  sub_2613A256C();
  MEMORY[0x2667009F0](v1 + 1);
  return sub_2613A25CC();
}

uint64_t sub_26137D45C@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_261390F80(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_26137D498(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 48);
  v10 = *(v4 + 52);
  v11 = swift_allocObject();
  sub_26137D500(a1, a2, a3, a4);
  return v11;
}

uint64_t sub_26137D500(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21[0] = a3;
  v21[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA08B0, &qword_2613AD828);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v21 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA07A0, &qword_2613AD170);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v21 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA08B8, &qword_2613AD830);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = v21 - v17;
  swift_defaultActor_initialize();
  *(v4 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderAdapter_documentReadTask) = 0;
  sub_2613A14FC();
  *(v4 + 112) = sub_2613A149C();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA08C0, &unk_2613AD838);
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  v21[4] = v18;
  (*(v6 + 104))(v9, *MEMORY[0x277D85778], v5);
  sub_2613A1C7C();
  (*(v11 + 32))(v4 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderAdapter_events, v14, v10);
  sub_261375F68(v18, v4 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderAdapter_eventEmitter, &qword_27FEA08B8, &qword_2613AD830);
  return v4;
}

uint64_t sub_26137D7C8(uint64_t a1)
{
  v3 = *(v1 + 16);
  sub_26124C718(v3, &qword_27FEA08B8, &qword_2613AD830);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA08C0, &unk_2613AD838);
  v7 = *(v4 - 8);
  (*(v7 + 16))(v3, a1, v4);
  v5 = *(v7 + 56);

  return v5(v3, 0, 1, v4);
}

uint64_t sub_26137D8A4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA08B8, &qword_2613AD830);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v14 - v4;
  v6 = OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderAdapter_eventEmitter;
  sub_26125A870(v1 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderAdapter_eventEmitter, &v14 - v4, &qword_27FEA08B8, &qword_2613AD830);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA08C0, &unk_2613AD838);
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v5, 1, v7) == 1)
  {
    sub_26124C718(v5, &qword_27FEA08B8, &qword_2613AD830);
  }

  else
  {
    sub_2613A1C3C();
    (*(v8 + 8))(v5, v7);
  }

  v9 = *(v1 + 112);

  sub_26124C718(v1 + v6, &qword_27FEA08B8, &qword_2613AD830);
  v10 = OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderAdapter_events;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA07A0, &qword_2613AD170);
  (*(*(v11 - 8) + 8))(v1 + v10, v11);
  v12 = *(v1 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderAdapter_documentReadTask);

  swift_defaultActor_destroy();
  return swift_defaultActor_deallocate();
}

uint64_t sub_26137DA78@<X0>(_DWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v176 = a3;
  v148 = sub_26139F33C();
  v147 = *(v148 - 8);
  v5 = *(v147 + 64);
  MEMORY[0x28223BE20](v148);
  v146 = &v140 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA08B8, &qword_2613AD830);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v150 = &v140 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v159 = &v140 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v161 = &v140 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v153 = &v140 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v155 = &v140 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v163 = &v140 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v157 = &v140 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v169 = &v140 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v172 = &v140 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v165 = &v140 - v28;
  MEMORY[0x28223BE20](v27);
  v167 = &v140 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0908, &qword_2613AD998);
  v31 = *(*(v30 - 8) + 64);
  v32 = MEMORY[0x28223BE20](v30 - 8);
  v149 = &v140 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v32);
  v158 = &v140 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v160 = &v140 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v152 = &v140 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v154 = &v140 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v162 = &v140 - v43;
  v44 = MEMORY[0x28223BE20](v42);
  v156 = &v140 - v45;
  v46 = MEMORY[0x28223BE20](v44);
  v168 = &v140 - v47;
  v48 = MEMORY[0x28223BE20](v46);
  v171 = &v140 - v49;
  v50 = MEMORY[0x28223BE20](v48);
  v164 = &v140 - v51;
  MEMORY[0x28223BE20](v50);
  v166 = &v140 - v52;
  v53 = sub_26139F30C();
  v178 = *(v53 - 8);
  v179 = v53;
  v54 = *(v178 + 64);
  MEMORY[0x28223BE20](v53);
  v177 = &v140 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_2613A14DC();
  v173 = *(v56 - 8);
  v174 = v56;
  v57 = *(v173 + 64);
  MEMORY[0x28223BE20](v56);
  v59 = &v140 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v61 = *(*(v60 - 8) + 64);
  v62 = MEMORY[0x28223BE20](v60 - 8);
  v151 = &v140 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v62);
  v65 = &v140 - v64;
  v66 = sub_2613A14AC();
  v67 = *(*(v66 - 8) + 64);
  MEMORY[0x28223BE20](v66);
  v175 = a1;
  sub_2613A14CC();
  v68 = sub_2613A195C();
  v70 = HIBYTE(v69) & 0xF;
  if ((v69 & 0x2000000000000000) == 0)
  {
    v70 = v68 & 0xFFFFFFFFFFFFLL;
  }

  if (v70)
  {
    v71 = 4 * v70;
    while (sub_2613A1ACC() != 40 || v72 != 0xE100000000000000)
    {
      v73 = sub_2613A241C();

      if ((v73 & 1) != 0 || v71 == sub_2613A19FC() >> 14)
      {
        goto LABEL_12;
      }
    }
  }

LABEL_12:
  v74 = sub_2613A1AEC();
  v76 = v75;
  v170 = v77;
  v79 = v78;

  v145 = sub_26129BA7C();
  sub_26125A870(v145, v65, &qword_27FE9F560, &qword_2613A3CB0);
  v80 = sub_2613A124C();
  v81 = *(v80 - 8);
  v144 = *(v81 + 48);
  if (v144(v65, 1, v80) == 1)
  {

    sub_26124C718(v65, &qword_27FE9F560, &qword_2613A3CB0);
    v83 = v178;
    v82 = v179;
    v84 = v177;
    v85 = v175;
  }

  else
  {
    v143 = v81;

    v86 = sub_2613A122C();
    v87 = sub_2613A1D8C();

    if (os_log_type_enabled(v86, v87))
    {
      v88 = swift_slowAlloc();
      v141 = v80;
      v89 = v88;
      v90 = swift_slowAlloc();
      v142 = a2;
      v91 = v90;
      v180 = v90;
      *v89 = 136315138;
      v92 = MEMORY[0x2666FFE20](v74, v76, v170, v79);
      v94 = v93;

      v95 = sub_26124C11C(v92, v94, &v180);

      *(v89 + 4) = v95;
      _os_log_impl(&dword_261243000, v86, v87, "Identity session error: [ %s ]", v89, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v91);
      v96 = v91;
      a2 = v142;
      MEMORY[0x266701350](v96, -1, -1);
      v97 = v89;
      v80 = v141;
      MEMORY[0x266701350](v97, -1, -1);
    }

    else
    {
    }

    v83 = v178;
    v82 = v179;
    v84 = v177;
    v85 = v175;
    v81 = v143;
    (*(v143 + 8))(v65, v80);
  }

  (*(v173 + 16))(v59, v85, v174);
  sub_26139F34C();
  sub_26139F32C();
  result = (*(v83 + 88))(v84, v82);
  if (result == *MEMORY[0x277D436C8])
  {
    return (*(v83 + 8))(v84, v82);
  }

  if (result == *MEMORY[0x277D436D0])
  {
    v99 = v172;
    sub_26125A870(a2, v172, &qword_27FEA08B8, &qword_2613AD830);
    v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA08C0, &unk_2613AD838);
    v101 = *(v100 - 8);
    if ((*(v101 + 48))(v99, 1, v100) == 1)
    {
      sub_26124C718(v99, &qword_27FEA08B8, &qword_2613AD830);
      v102 = 1;
      v103 = v171;
LABEL_29:
      v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0910, &unk_2613AD9A0);
      (*(*(v104 - 8) + 56))(v103, v102, 1, v104);
      v105 = v103;
      return sub_26124C718(v105, &qword_27FEA0908, &qword_2613AD998);
    }

    v180 = 14;
    v103 = v171;
    goto LABEL_28;
  }

  if (result == *MEMORY[0x277D43638])
  {
    return result;
  }

  if (result == *MEMORY[0x277D436D8])
  {
    v99 = v169;
    sub_26125A870(a2, v169, &qword_27FEA08B8, &qword_2613AD830);
    v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA08C0, &unk_2613AD838);
    v101 = *(v100 - 8);
    if ((*(v101 + 48))(v99, 1, v100) == 1)
    {
      sub_26124C718(v99, &qword_27FEA08B8, &qword_2613AD830);
      v102 = 1;
      v103 = v168;
      goto LABEL_29;
    }

    v180 = 8;
    v103 = v168;
LABEL_28:
    sub_2613A1C2C();
    (*(v101 + 8))(v99, v100);
    v102 = 0;
    goto LABEL_29;
  }

  if (result == *MEMORY[0x277D43630] || result == *MEMORY[0x277D43670])
  {
    goto LABEL_59;
  }

  if (result == *MEMORY[0x277D43680])
  {
    v99 = v165;
    sub_26125A870(a2, v165, &qword_27FEA08B8, &qword_2613AD830);
    v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA08C0, &unk_2613AD838);
    v101 = *(v100 - 8);
    if ((*(v101 + 48))(v99, 1, v100) == 1)
    {
      sub_26124C718(v99, &qword_27FEA08B8, &qword_2613AD830);
      v102 = 1;
      v103 = v164;
      goto LABEL_29;
    }

    v180 = 7;
    v103 = v164;
    goto LABEL_28;
  }

  if (result == *MEMORY[0x277D43658] || result == *MEMORY[0x277D43640])
  {
LABEL_59:
    v99 = v167;
    sub_26125A870(a2, v167, &qword_27FEA08B8, &qword_2613AD830);
    v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA08C0, &unk_2613AD838);
    v101 = *(v100 - 8);
    if ((*(v101 + 48))(v99, 1, v100) == 1)
    {
      sub_26124C718(v99, &qword_27FEA08B8, &qword_2613AD830);
      v102 = 1;
      v103 = v166;
      goto LABEL_29;
    }

    v180 = 9;
    v103 = v166;
    goto LABEL_28;
  }

  if (result == *MEMORY[0x277D43648])
  {
    v99 = v163;
    sub_26125A870(a2, v163, &qword_27FEA08B8, &qword_2613AD830);
    v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA08C0, &unk_2613AD838);
    v101 = *(v100 - 8);
    if ((*(v101 + 48))(v99, 1, v100) == 1)
    {
      sub_26124C718(v99, &qword_27FEA08B8, &qword_2613AD830);
      v102 = 1;
      v103 = v162;
      goto LABEL_29;
    }

    v180 = 11;
    v103 = v162;
    goto LABEL_28;
  }

  if (result == *MEMORY[0x277D43650])
  {
    v99 = v161;
    sub_26125A870(a2, v161, &qword_27FEA08B8, &qword_2613AD830);
    v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA08C0, &unk_2613AD838);
    v101 = *(v100 - 8);
    if ((*(v101 + 48))(v99, 1, v100) == 1)
    {
      sub_26124C718(v99, &qword_27FEA08B8, &qword_2613AD830);
      v102 = 1;
      v103 = v160;
      goto LABEL_29;
    }

    v180 = 12;
    v103 = v160;
    goto LABEL_28;
  }

  if (result == *MEMORY[0x277D436B8])
  {
    v99 = v159;
    sub_26125A870(a2, v159, &qword_27FEA08B8, &qword_2613AD830);
    v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA08C0, &unk_2613AD838);
    v101 = *(v100 - 8);
    if ((*(v101 + 48))(v99, 1, v100) == 1)
    {
      sub_26124C718(v99, &qword_27FEA08B8, &qword_2613AD830);
      v102 = 1;
      v103 = v158;
      goto LABEL_29;
    }

    v180 = 13;
    v103 = v158;
    goto LABEL_28;
  }

  if (result == *MEMORY[0x277D43698])
  {
    v99 = v157;
    sub_26125A870(a2, v157, &qword_27FEA08B8, &qword_2613AD830);
    v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA08C0, &unk_2613AD838);
    v101 = *(v100 - 8);
    if ((*(v101 + 48))(v99, 1, v100) == 1)
    {
      sub_26124C718(v99, &qword_27FEA08B8, &qword_2613AD830);
      v102 = 1;
      v103 = v156;
      goto LABEL_29;
    }

    v180 = 10;
    v103 = v156;
    goto LABEL_28;
  }

  if (result != *MEMORY[0x277D436C0] && result != *MEMORY[0x277D43688])
  {
    if (result == *MEMORY[0x277D43660])
    {
      goto LABEL_59;
    }

    if (result != *MEMORY[0x277D43690])
    {
      v106 = a2;
      if (result == *MEMORY[0x277D43628])
      {
        v107 = v155;
        sub_26125A870(a2, v155, &qword_27FEA08B8, &qword_2613AD830);
        v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA08C0, &unk_2613AD838);
        v109 = *(v108 - 8);
        if ((*(v109 + 48))(v107, 1, v108) == 1)
        {
          sub_26124C718(v155, &qword_27FEA08B8, &qword_2613AD830);
          v110 = 1;
        }

        else
        {
          v180 = 15;
          v114 = v155;
          sub_2613A1C2C();
          (*(v109 + 8))(v114, v108);
          v110 = 0;
        }

        v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0910, &unk_2613AD9A0);
        v116 = *(*(v115 - 8) + 56);
        v117 = &v182;
LABEL_80:
        v120 = *(v117 - 32);
        v116(v120, v110, 1, v115);
        v105 = v120;
        return sub_26124C718(v105, &qword_27FEA0908, &qword_2613AD998);
      }

      if (result == *MEMORY[0x277D43668])
      {
        v111 = v153;
        sub_26125A870(a2, v153, &qword_27FEA08B8, &qword_2613AD830);
        v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA08C0, &unk_2613AD838);
        v113 = *(v112 - 8);
        if ((*(v113 + 48))(v111, 1, v112) == 1)
        {
          sub_26124C718(v153, &qword_27FEA08B8, &qword_2613AD830);
          v110 = 1;
        }

        else
        {
          v180 = 6;
          v119 = v153;
          sub_2613A1C2C();
          (*(v113 + 8))(v119, v112);
          v110 = 0;
        }

        v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0910, &unk_2613AD9A0);
        v116 = *(*(v115 - 8) + 56);
        v117 = &v181;
        goto LABEL_80;
      }

      if (result == *MEMORY[0x277D43678] || result == *MEMORY[0x277D436A0] || result == *MEMORY[0x277D436A8] || result == *MEMORY[0x277D436B0])
      {
        goto LABEL_59;
      }

      v118 = v151;
      sub_26125A870(v145, v151, &qword_27FE9F560, &qword_2613A3CB0);
      if (v144(v118, 1, v80) == 1)
      {
        sub_26124C718(v151, &qword_27FE9F560, &qword_2613A3CB0);
      }

      else
      {
        v121 = *(v147 + 16);
        v121(v146, v176, v148);
        v122 = sub_2613A122C();
        v123 = sub_2613A1D8C();
        if (os_log_type_enabled(v122, v123))
        {
          v124 = swift_slowAlloc();
          v175 = v124;
          v176 = swift_slowAlloc();
          *v124 = 138412290;
          sub_2613912F8(&qword_27FEA0760, MEMORY[0x277D436E0]);
          v125 = v148;
          swift_allocError();
          v126 = v146;
          v121(v127, v146, v125);
          v128 = _swift_stdlib_bridgeErrorToNSError();
          (*(v147 + 8))(v126, v125);
          v129 = v175;
          v130 = v176;
          *(v175 + 1) = v128;
          *v130 = v128;
          v131 = v123;
          v132 = v129;
          _os_log_impl(&dword_261243000, v122, v131, "Could not parse identity session error: [ %@ ]", v129, 0xCu);
          sub_26124C718(v130, &qword_27FEA0410, &qword_2613AA780);
          MEMORY[0x266701350](v130, -1, -1);
          MEMORY[0x266701350](v132, -1, -1);
        }

        else
        {

          (*(v147 + 8))(v146, v148);
        }

        (*(v81 + 8))(v151, v80);
      }

      v133 = v150;
      sub_26125A870(v106, v150, &qword_27FEA08B8, &qword_2613AD830);
      v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA08C0, &unk_2613AD838);
      v135 = *(v134 - 8);
      if ((*(v135 + 48))(v133, 1, v134) == 1)
      {
        sub_26124C718(v150, &qword_27FEA08B8, &qword_2613AD830);
        v136 = 1;
      }

      else
      {
        v180 = 9;
        v137 = v150;
        sub_2613A1C2C();
        (*(v135 + 8))(v137, v134);
        v136 = 0;
      }

      v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0910, &unk_2613AD9A0);
      v139 = v149;
      (*(*(v138 - 8) + 56))(v149, v136, 1, v138);
      sub_26124C718(v139, &qword_27FEA0908, &qword_2613AD998);
      return (*(v178 + 8))(v177, v179);
    }
  }

  return result;
}