uint64_t STSReader.StateChanges.makeAsyncIterator()()
{
  v0 = *(type metadata accessor for STSReader.StateChanges() + 20);
  sub_265370900(&qword_280016DD0, &qword_2653A6D70);
  return sub_2653A3560();
}

uint64_t type metadata accessor for STSReader.StateChanges()
{
  result = qword_280017740;
  if (!qword_280017740)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_265370900(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_265370948(uint64_t a1, uint64_t a2)
{
  sub_265370A8C(a2);
  v4 = sub_265370900(&qword_280016DD8, &qword_2653A6D78);
  v7 = *(v4 - 8);
  (*(v7 + 16))(a2, a1, v4);
  v5 = *(v7 + 56);

  return v5(a2, 0, 1, v4);
}

uint64_t sub_265370A1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_265370900(&qword_280016DE8, &qword_2653A6D88);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_265370A8C(uint64_t a1)
{
  v2 = sub_265370900(&qword_280016DE8, &qword_2653A6D88);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_265370AF4(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 20);
  sub_265370900(&qword_280016DD0, &qword_2653A6D70);
  sub_2653A3560();

  return sub_265371938(v2);
}

uint64_t STSReader.start(configuration:)(uint64_t a1, uint64_t a2)
{
  v3[11] = a2;
  v3[12] = v2;
  v3[10] = a1;
  v4 = *(*(type metadata accessor for STSReader.StateChanges() - 8) + 64) + 15;
  v3[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_265370BEC, 0, 0);
}

uint64_t sub_265370BEC()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];
  v0[2] = v0;
  v0[7] = v1;
  v0[3] = sub_265370C98;
  v4 = swift_continuation_init();
  sub_265370DD0(v4, v2, v3);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_265370C98()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 104);
  if (*(*v0 + 48))
  {
    v4 = *(v1 + 48);
    swift_willThrow();
  }

  else
  {
    sub_2653713E8(*(v1 + 104), *(*v0 + 80));
  }

  v5 = *(v2 + 8);

  return v5();
}

uint64_t sub_265370DD0(uint64_t a1, void *a2, uint64_t a3)
{
  v38 = a2;
  v39 = a3;
  v40 = a1;
  v41 = sub_265370900(&qword_280016DE0, &qword_2653A6D80);
  v3 = *(v41 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v41);
  v6 = &v36 - v5;
  v7 = sub_265370900(&qword_280016DE8, &qword_2653A6D88);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v36 - v12;
  v14 = type metadata accessor for STSReader.StateChanges();
  v15 = v14 - 8;
  v37 = *(v14 - 8);
  v16 = *(v37 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v18 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v36 - v19;
  v21 = sub_265370900(&qword_280016DD8, &qword_2653A6D78);
  v22 = *(v21 - 8);
  (*(v22 + 56))(v13, 1, 1, v21);
  v42 = v13;
  (*(v3 + 104))(v6, *MEMORY[0x277D85778], v41);
  v23 = &v20[*(v15 + 28)];
  sub_2653A3570();
  sub_265370A1C(v13, v11);
  result = (*(v22 + 48))(v11, 1, v21);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v22 + 32))(v20, v11, v21);
    sub_265370A8C(v13);
    sub_265371A8C(v20, v18);
    v25 = (*(v37 + 80) + 16) & ~*(v37 + 80);
    v26 = swift_allocObject();
    sub_2653713E8(v18, v26 + v25);
    v47 = sub_265371AF4;
    v48 = v26;
    aBlock = MEMORY[0x277D85DD0];
    v44 = 1107296256;
    v45 = sub_265371B54;
    v46 = &unk_2876E3BD8;
    v41 = _Block_copy(&aBlock);

    sub_265371A8C(v20, v18);
    v27 = swift_allocObject();
    sub_2653713E8(v18, v27 + v25);
    v47 = sub_265371CEC;
    v48 = v27;
    aBlock = MEMORY[0x277D85DD0];
    v44 = 1107296256;
    v45 = sub_265371D04;
    v46 = &unk_2876E3C28;
    v28 = _Block_copy(&aBlock);

    sub_265371A8C(v20, v18);
    v29 = swift_allocObject();
    sub_2653713E8(v18, v29 + v25);
    v47 = sub_265371E88;
    v48 = v29;
    aBlock = MEMORY[0x277D85DD0];
    v44 = 1107296256;
    v45 = sub_265371D04;
    v46 = &unk_2876E3C78;
    v30 = _Block_copy(&aBlock);

    sub_265371A8C(v20, v18);
    v31 = swift_allocObject();
    sub_2653713E8(v18, v31 + v25);
    v47 = sub_2653720EC;
    v48 = v31;
    aBlock = MEMORY[0x277D85DD0];
    v44 = 1107296256;
    v45 = sub_265371D04;
    v46 = &unk_2876E3CC8;
    v32 = _Block_copy(&aBlock);

    v33 = v41;
    v34 = [v38 startWithConfiguration:v39 connectionHandler:v41 tnepStatusHandler:v28 invalidationHandler:v30 completion:v32];
    _Block_release(v32);
    _Block_release(v30);
    _Block_release(v28);
    _Block_release(v33);
    if (v34)
    {
      sub_265370900(&qword_280016E10, &qword_2653A6EA8);
      swift_allocError();
      *v35 = v34;
      swift_continuation_throwingResumeWithError();
    }

    else
    {
      sub_265371A8C(v20, v18);
      sub_2653713E8(v18, *(*(v40 + 64) + 40));
      swift_continuation_throwingResume();
    }

    return sub_265371938(v20);
  }

  return result;
}

uint64_t sub_2653713E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for STSReader.StateChanges();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_265371450()
{
  result = qword_280016DF0;
  if (!qword_280016DF0)
  {
    sub_2653714B4(&qword_280016DF8, &qword_2653A6D98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280016DF0);
  }

  return result;
}

uint64_t sub_2653714B4(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_2653714FC(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t sub_265371518(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_26537152C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_265371574(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_2653715BC(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_2653715F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_265370900(&qword_280016DD8, &qword_2653A6D78);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_265370900(&qword_280016DD0, &qword_2653A6D70);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_265371714(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_265370900(&qword_280016DD8, &qword_2653A6D78);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_265370900(&qword_280016DD0, &qword_2653A6D70);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

void sub_265371828()
{
  sub_2653718E4(319, &qword_280016E00, MEMORY[0x277D85788]);
  if (v0 <= 0x3F)
  {
    sub_2653718E4(319, &qword_280016E08, MEMORY[0x277D857B8]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2653718E4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, ValueMetadata *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for STSReader.StateEvent);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_265371938(uint64_t a1)
{
  v2 = type metadata accessor for STSReader.StateChanges();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_265371994()
{
  v0 = sub_265370900(&qword_280016E18, qword_2653A6EB0);
  v1 = *(v0 - 8);
  v2 = (*(v1 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v4 = &v6 - v3;
  v6 = 0;
  v7 = 2;
  sub_265370900(&qword_280016DD8, &qword_2653A6D78);
  sub_2653A3540();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_265371A8C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for STSReader.StateChanges();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_265371AF4()
{
  v0 = *(*(type metadata accessor for STSReader.StateChanges() - 8) + 80);

  return sub_265371994();
}

void sub_265371B54(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_265371BBC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_265371BD4(uint64_t a1)
{
  v2 = sub_265370900(&qword_280016E18, qword_2653A6EB0);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x28223BE20](a1);
  v7 = &v10 - v6;
  if (v5)
  {
    v10 = v5;
    v11 = 0;
    v8 = v5;
  }

  else
  {
    v10 = 1;
    v11 = 2;
  }

  sub_265370900(&qword_280016DD8, &qword_2653A6D78);
  sub_2653A3540();
  return (*(v3 + 8))(v7, v2);
}

void sub_265371D04(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t sub_265371D70(void *a1)
{
  v2 = sub_265370900(&qword_280016E18, qword_2653A6EB0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  v9 = a1;
  v10 = 1;
  v7 = a1;
  sub_265370900(&qword_280016DD8, &qword_2653A6D78);
  sub_2653A3540();
  (*(v3 + 8))(v6, v2);
  return sub_2653A3550();
}

void *sub_265371EA0(uint64_t a1)
{
  v2 = sub_265370900(&qword_280016E18, qword_2653A6EB0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  result = MEMORY[0x28223BE20](a1);
  v7 = &v9 - v6;
  if (result)
  {
    v9 = result;
    v10 = 1;
    v8 = result;
    sub_265370900(&qword_280016DD8, &qword_2653A6D78);
    sub_2653A3540();
    (*(v3 + 8))(v7, v2);
    return sub_2653A3550();
  }

  return result;
}

uint64_t sub_265371FBC()
{
  v1 = (type metadata accessor for STSReader.StateChanges() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_265370900(&qword_280016DD8, &qword_2653A6D78);
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = v1[7];
  v7 = sub_265370900(&qword_280016DD0, &qword_2653A6D70);
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_265372104(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for STSReader.StateChanges() - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

void sub_265372674(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 8));
  sub_265398094(OS_LOG_TYPE_INFO, 0, "[STSSessionBase startWithDelegate:isFirstInQueue:]_block_invoke", 70, *(a1 + 32), @"Starting Control SE session", v2, v3, v7);
  v4 = [*(a1 + 32) nfHardwareManager];
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = sub_265372784;
  v10 = &unk_279B937F8;
  v5 = *(a1 + 40);
  v11 = *(a1 + 32);
  v12 = v5;
  v6 = [v4 startSecureElementManagerSession:&v7];

  **(a1 + 48) = [v6 isFirstInQueue];
  [*(a1 + 32) setInitiatingSession:v6];
  os_unfair_lock_unlock((*(a1 + 32) + 8));
}

void sub_265372784(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) callbackQueue];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_265372870;
  v12[3] = &unk_279B937D0;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v15 = v5;
  v16 = v9;
  v10 = v5;
  v11 = v6;
  dispatch_async(v7, v12);
}

uint64_t sub_265372870(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 32))
  {
    sub_265398094(OS_LOG_TYPE_ERROR, 0, "[STSSessionBase startWithDelegate:isFirstInQueue:]_block_invoke_3", 76, *(a1 + 40), @"Failed to start Control SE session: %@", a7, a8, *(a1 + 32));
  }

  os_unfair_lock_lock((*(a1 + 40) + 8));
  [*(a1 + 40) setMasterSESession:*(a1 + 48)];
  v9 = *(a1 + 40);
  v10 = [v9 masterSESession];
  [v10 setSessionDelegate:v9];

  v11 = *(a1 + 40);
  v12 = [v11 masterSESession];
  [v12 setDelegate:v11];

  [*(a1 + 40) setInitiatingSession:0];
  *(*(a1 + 40) + 24) = 0;
  v13 = *(a1 + 40);
  v14 = *(v13 + 32);
  *(v13 + 32) = 0;

  *(*(a1 + 40) + 56) = 1;
  os_unfair_lock_unlock((*(a1 + 40) + 8));
  sub_265398094(OS_LOG_TYPE_INFO, 0, "[STSSessionBase startWithDelegate:isFirstInQueue:]_block_invoke_3", 89, *(a1 + 40), @"Control SE session started", v15, v16, v23);
  v17 = [*(a1 + 40) theStartCallback];

  if (v17)
  {
    v18 = [*(a1 + 40) theStartCallback];
    v18[2](v18, *(a1 + 32));

    [*(a1 + 40) setTheStartCallback:0];
  }

  v19 = *(a1 + 56);
  result = objc_opt_respondsToSelector();
  if (result)
  {
    result = [*(a1 + 56) stsSession:*(a1 + 40) didStart:*(a1 + 32)];
  }

  if (!*(a1 + 32))
  {
    result = [*(a1 + 40) isTimeLimited];
    if (v21 > 0.0)
    {
      v22 = *(a1 + 40);

      return MEMORY[0x2821F9670](v22, sel_setSessionTimeLimit_);
    }
  }

  return result;
}

void sub_265372EA4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 48));
  _Unwind_Resume(a1);
}

uint64_t sub_265372EC0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = *(a1 + 40);
  v7 = WeakRetained;
  if (v3)
  {
    (*(v3 + 16))();
    WeakRetained = v7;
  }

  if (WeakRetained)
  {
    [*(a1 + 32) clearSessionTimer];
    os_unfair_lock_lock(v7 + 2);
    os_unfair_lock_opaque_low = LOBYTE(v7[14]._os_unfair_lock_opaque);
    LOBYTE(v7[14]._os_unfair_lock_opaque) = 0;
    os_unfair_lock_unlock(v7 + 2);
    if (os_unfair_lock_opaque_low == 1)
    {
      v5 = [(os_unfair_lock_s *)v7 delegate];
      if (objc_opt_respondsToSelector())
      {
        [v5 stsSession:*(a1 + 32) didEnd:0];
      }
    }
  }

  return MEMORY[0x2821F96F8]();
}

void sub_265374D34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_265374D58(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = _os_activity_create(&dword_26536F000, "com.apple.sts.session.activeTimer", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  *state = 0;
  *&state[8] = 0;
  os_activity_scope_enter(v3, state);
  os_activity_scope_leave(state);

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    v7 = objc_opt_class();
    Name = class_getName(v7);
    v9 = *(a1 + 40);
    *state = 136315394;
    *&state[4] = Name;
    *&state[12] = 2048;
    *&state[14] = v9;
    _os_log_fault_impl(&dword_26536F000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "%s is still active after %lf seconds", state, 0x16u);
  }

  v4 = [WeakRetained delegate];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_265374EE0;
  v10[3] = &unk_279B93898;
  v11 = v4;
  v12 = WeakRetained;
  v5 = v4;
  [WeakRetained endSessionWithCompletion:v10];

  v6 = *MEMORY[0x277D85DE8];
}

uint64_t sub_265374EE0(uint64_t a1)
{
  v2 = *(a1 + 32);
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);

    return [v4 stsSessionDidEndUnexpectedly:v5 errorCode:7];
  }

  return result;
}

void sub_2653752A8(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    dispatch_group_leave(v1);
  }
}

void sub_2653752B8(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    dispatch_group_leave(v1);
  }
}

void sub_2653752C8(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    dispatch_group_leave(v1);
  }
}

id sub_265376B78(uint64_t a1, void *a2)
{
  v31[4] = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = [v4 domain];
  v6 = [v5 isEqual:@"STSXPCHelperErrorDomain"];

  if (v6)
  {
    v7 = [*(a1 + 32) _translateSTSXPCHelperError:v4];
    goto LABEL_13;
  }

  if ([v4 code] != 50)
  {
    v14 = [v4 code];
    v15 = MEMORY[0x277CCA9B8];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
    v16 = *MEMORY[0x277CCA450];
    if (v14 == 47)
    {
      v28[0] = *MEMORY[0x277CCA450];
      v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Reader mode protection enable"];
      v29[0] = v17;
      v29[1] = &unk_2876ECD08;
      v28[1] = @"Line";
      v28[2] = @"Method";
      v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(*(a1 + 40))];
      v29[2] = v2;
      v28[3] = *MEMORY[0x277CCA068];
      v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(*(a1 + 40)), 307];
      v29[3] = v18;
      v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:4];
      v7 = [v15 errorWithDomain:v9 code:20 userInfo:v19];
    }

    else
    {
      v26[0] = *MEMORY[0x277CCA450];
      v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Unexpected Result"];
      v27[0] = v17;
      v26[1] = *MEMORY[0x277CCA7E8];
      v18 = v4;
      if (!v4)
      {
        v20 = MEMORY[0x277CCA9B8];
        v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
        v18 = [v20 errorWithDomain:v2 code:5 userInfo:0];
      }

      v27[1] = v18;
      v27[2] = &unk_2876ECD20;
      v26[2] = @"Line";
      v26[3] = @"Method";
      v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(*(a1 + 40))];
      v27[3] = v21;
      v26[4] = *MEMORY[0x277CCA068];
      v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(*(a1 + 40)), 309];
      v27[4] = v22;
      v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:5];
      v7 = [v15 errorWithDomain:v9 code:10 userInfo:v23];

      if (v4)
      {
        goto LABEL_11;
      }
    }

LABEL_11:
    goto LABEL_12;
  }

  v8 = MEMORY[0x277CCA9B8];
  v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
  v30[0] = *MEMORY[0x277CCA450];
  v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NFC radio disabled"];
  v31[0] = v10;
  v31[1] = &unk_2876ECCF0;
  v30[1] = @"Line";
  v30[2] = @"Method";
  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(*(a1 + 40))];
  v31[2] = v11;
  v30[3] = *MEMORY[0x277CCA068];
  v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(*(a1 + 40)), 305];
  v31[3] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:4];
  v7 = [v8 errorWithDomain:v9 code:18 userInfo:v13];

LABEL_12:
LABEL_13:

  v24 = *MEMORY[0x277D85DE8];

  return v7;
}

uint64_t sub_26537700C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_265377024(uint64_t a1, void *a2, void *a3)
{
  v19 = a2;
  v7 = a3;
  if (v7)
  {
    v8 = (*(*(a1 + 40) + 16))();
    sub_265398094(OS_LOG_TYPE_ERROR, 0, "[STSReader startWithConfiguration:connectionHandler:tnepStatusHandler:invalidationHandler:completion:]_block_invoke", 324, *(a1 + 32), @"Failed to start handover session: %@", v9, v10, v8);
    [*(a1 + 32) _activateSessionStartCompletion:v8];
  }

  else
  {
    sub_265398094(OS_LOG_TYPE_INFO, 0, "[STSReader startWithConfiguration:connectionHandler:tnepStatusHandler:invalidationHandler:completion:]_block_invoke", 329, *(a1 + 32), @"Handover session started", v5, v6, v18);
    v11 = *(a1 + 32);
    objc_sync_enter(v11);
    [*(a1 + 32) setHandoverSession:v19];
    v12 = *(a1 + 32);
    v13 = [v12 handoverSession];
    [v13 setDelegate:v12];

    objc_sync_exit(v11);
    v14 = *(*(a1 + 48) + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = 0;

    v16 = [*(a1 + 32) stsNotificationListener];
    v17 = [v16 xpcEndpoint];
    [v19 startSTSNotificationListenerWithEndpoint:v17];

    [*(a1 + 32) _activateSessionStartCompletion:0];
  }
}

void sub_2653771DC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  if (a2)
  {
    v7 = [v3 _translateSTSXPCHelperError:a2];
    sub_265398094(OS_LOG_TYPE_ERROR, 0, "[STSReader startWithConfiguration:connectionHandler:tnepStatusHandler:invalidationHandler:completion:]_block_invoke_4", 382, *(a1 + 32), @"Failed to start QRCode handover session: %@", v4, v5, v7);
    [*(a1 + 32) _activateTnepStatusHandler:v7];
    [*(a1 + 32) _activateInvalidationHandler:v7];
  }

  else
  {
    [v3 _activateTnepStatusHandler:0];
    v6 = *(a1 + 32);

    [v6 _activateSessionStartCompletion:0];
  }
}

void sub_265377ACC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v7 = v3;
    v4 = [v3 code];
    v5 = *(a1 + 32);
    if (v4 == 6)
    {
      [v5 _activateInvalidationHandler:v7];
    }

    else
    {
      [v5 _activateSendRequestCompletion:0 terminationRequested:0 error:v7];
      v6 = *(a1 + 32);
      objc_sync_enter(v6);
      if (![*(a1 + 32) transmissionState])
      {
        [*(a1 + 32) setTransmissionState:2];
      }

      objc_sync_exit(v6);
    }

    v3 = v7;
  }
}

void sub_265377B8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v20[4] = *MEMORY[0x277D85DE8];
  sub_265398094(OS_LOG_TYPE_ERROR, 0, "[STSReader sendDocumentRequest:timeoutInterval:sessionTermination:responseHandler:]_block_invoke", 471, *(a1 + 32), @"Timeout in getting response", a7, a8, v18);
  v9 = *(a1 + 32);
  v10 = MEMORY[0x277CCA9B8];
  v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
  v19[0] = *MEMORY[0x277CCA450];
  v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Timeout"];
  v20[0] = v12;
  v20[1] = &unk_2876ECD50;
  v19[1] = @"Line";
  v19[2] = @"Method";
  v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(*(a1 + 40))];
  v20[2] = v13;
  v19[3] = *MEMORY[0x277CCA068];
  v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(*(a1 + 40)), 472];
  v20[3] = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:4];
  v16 = [v10 errorWithDomain:v11 code:4 userInfo:v15];
  [v9 _activateSendRequestCompletion:0 terminationRequested:0 error:v16];

  v17 = *MEMORY[0x277D85DE8];
}

void sub_2653781F4(uint64_t a1)
{
  v14[4] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = MEMORY[0x277CCA9B8];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
  v5 = *(a1 + 48);
  v13[0] = *MEMORY[0x277CCA450];
  if (v5 >= 0x19)
  {
    v6 = 25;
  }

  else
  {
    v6 = v5;
  }

  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:off_279B93958[v6]];
  v14[0] = v7;
  v14[1] = &unk_2876ECD80;
  v13[1] = @"Line";
  v13[2] = @"Method";
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(*(a1 + 40))];
  v14[2] = v8;
  v13[3] = *MEMORY[0x277CCA068];
  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(*(a1 + 40)), 520];
  v14[3] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:4];
  v11 = [v3 errorWithDomain:v4 code:v5 userInfo:v10];
  (*(v2 + 16))(v2, v11);

  v12 = *MEMORY[0x277D85DE8];
}

void sub_265378C68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_265398094(OS_LOG_TYPE_INFO, 0, "[STSReader executeOnSEProxyWithBlock:]_block_invoke", 532, *(a1 + 32), @"Creating Proxy SE session", a7, a8, v15);
  v9 = [*(a1 + 32) nfHwManager];
  v10 = [v9 manager];

  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = sub_265378D8C;
  v18 = &unk_279B937F8;
  v11 = *(a1 + 40);
  v19 = *(a1 + 32);
  v20 = v11;
  v14 = [v10 startSecureElementManagerSession:&v15];
  if (v14)
  {
    [*(a1 + 32) setInitiatingSession:{v14, v15, v16, v17, v18, v19}];
  }

  else
  {
    sub_265398094(OS_LOG_TYPE_ERROR, 0, "[STSReader executeOnSEProxyWithBlock:]_block_invoke", 550, *(a1 + 32), @"Failed to start session.", v12, v13, v15);
  }
}

void sub_265378D8C(uint64_t a1, void *a2, uint64_t a3)
{
  v9 = a2;
  v7 = *(a1 + 32);
  if (a3)
  {
    sub_265398094(OS_LOG_TYPE_ERROR, 0, "[STSReader executeOnSEProxyWithBlock:]_block_invoke_2", 538, v7, @"Failed to create Proxy SE session: %@", v5, v6, a3);
  }

  else
  {
    sub_265398094(OS_LOG_TYPE_DEFAULT, 1, "[STSReader executeOnSEProxyWithBlock:]_block_invoke_2", 540, v7, @"Got the SE Proxy", v5, v6, v8);
    [*(a1 + 32) setInitiatingSession:0];
    [*(a1 + 32) setProxyReaderSESession:v9];
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

void sub_265378E84(uint64_t a1)
{
  v12[4] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = MEMORY[0x277CCA9B8];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
  v11[0] = *MEMORY[0x277CCA450];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Hardware Not Available"];
  v12[0] = v5;
  v12[1] = &unk_2876ECD98;
  v11[1] = @"Line";
  v11[2] = @"Method";
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(*(a1 + 40))];
  v12[2] = v6;
  v11[3] = *MEMORY[0x277CCA068];
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(*(a1 + 40)), 608];
  v12[3] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:4];
  v9 = [v3 errorWithDomain:v4 code:12 userInfo:v8];
  (*(v2 + 16))(v2, 0, v9);

  v10 = *MEMORY[0x277D85DE8];
}

void sub_265379038(uint64_t a1)
{
  v12[4] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = MEMORY[0x277CCA9B8];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
  v11[0] = *MEMORY[0x277CCA450];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Hardware Not Available"];
  v12[0] = v5;
  v12[1] = &unk_2876ECDB0;
  v11[1] = @"Line";
  v11[2] = @"Method";
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(*(a1 + 40))];
  v12[2] = v6;
  v11[3] = *MEMORY[0x277CCA068];
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(*(a1 + 40)), 621];
  v12[3] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:4];
  v9 = [v3 errorWithDomain:v4 code:12 userInfo:v8];
  (*(v2 + 16))(v2, 0, v9);

  v10 = *MEMORY[0x277D85DE8];
}

uint64_t sub_2653791EC(uint64_t a1)
{
  v2 = *(a1 + 32);
  (*(*(a1 + 48) + 16))();
  v3 = [*(a1 + 40) stsHelper];
  [v3 stopReaderSEProxyListener];

  v4 = *(a1 + 40);

  return [v4 _seProxyCleanup:0];
}

void sub_265379254(uint64_t a1)
{
  v12[4] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = MEMORY[0x277CCA9B8];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
  v11[0] = *MEMORY[0x277CCA450];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Hardware Not Available"];
  v12[0] = v5;
  v12[1] = &unk_2876ECDC8;
  v11[1] = @"Line";
  v11[2] = @"Method";
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(*(a1 + 40))];
  v12[2] = v6;
  v11[3] = *MEMORY[0x277CCA068];
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(*(a1 + 40)), 641];
  v12[3] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:4];
  v9 = [v3 errorWithDomain:v4 code:12 userInfo:v8];
  (*(v2 + 16))(v2, 0, v9);

  v10 = *MEMORY[0x277D85DE8];
}

void sub_26537988C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v7 = a2;
  sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[STSReader receiveISO18013DeviceResponse:sessionDataStatus:mDocResponseStatus:error:]_block_invoke", 703, v3, @"Session termination after SessionEstablishment", v4, v5, v6);
  [*(a1 + 32) _activateInvalidationHandler:v7];
}

void sub_26537A2F0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v3 = WeakRetained;
    objc_sync_enter(v3);
    v4 = [v3 sessionStartCompletion];

    if (v4)
    {
      v5 = [v3 sessionStartCompletion];
      v5[2](v5, *(a1 + 32));

      [v3 setSessionStartCompletion:0];
    }

    objc_sync_exit(v3);

    WeakRetained = v6;
  }
}

void sub_26537A4A8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v3 = WeakRetained;
    objc_sync_enter(v3);
    v4 = [v3 tnepStatusHandler];

    if (v4)
    {
      v5 = [v3 tnepStatusHandler];
      v5[2](v5, *(a1 + 32));

      [v3 setTnepStatusHandler:0];
    }

    objc_sync_exit(v3);

    WeakRetained = v6;
  }
}

void sub_26537A638(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v2 = [WeakRetained connectionHandler];

    WeakRetained = v4;
    if (v2)
    {
      v3 = [v4 connectionHandler];
      (v3)[2](v3, v4);

      [v4 setConnectionHandler:0];
      WeakRetained = v4;
    }
  }
}

void sub_26537A7EC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v10 = WeakRetained;
    v3 = [WeakRetained sendRequestCompletion];

    WeakRetained = v10;
    if (v3)
    {
      v4 = [v10 _translateSTSXPCHelperError:*(a1 + 32)];
      if (!*(a1 + 32))
      {
        v5 = [v10 caSessionStats];
        [v5 setTotalSuccessfulTransactionsInSession:{objc_msgSend(v5, "totalSuccessfulTransactionsInSession") + 1}];
      }

      v6 = [v10 sendRequestCompletion];
      (v6)[2](v6, *(a1 + 40), v4);

      [v10 setSendRequestCompletion:0];
      if (*(a1 + 64) == 1)
      {
        sub_265398094(OS_LOG_TYPE_INFO, 0, "[STSReader _activateSendRequestCompletion:terminationRequested:error:]_block_invoke", 895, *(a1 + 48), @"Invoking invalidation handler", v7, v8, v9);
        [*(a1 + 48) _activateInvalidationHandler:*(a1 + 32)];
      }

      WeakRetained = v10;
    }
  }
}

void sub_26537AA38(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v2 = [WeakRetained sendRequestCompletion];

    if (v2)
    {
      v3 = [WeakRetained sendRequestCompletion];
      v3[2](v3, 0, *(a1 + 32));

      [WeakRetained setSendRequestCompletion:0];
    }

    v4 = [WeakRetained invalidationHandler];

    if (v4)
    {
      v5 = [WeakRetained invalidationHandler];
      v5[2](v5, *(a1 + 32));

      [WeakRetained setInvalidationHandler:0];
    }
  }
}

void sub_26537D43C(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  v6 = *(a1 + 32);
  v7 = a3;
  v10 = v7;
  if (a3)
  {
    sub_265398094(OS_LOG_TYPE_ERROR, 0, "[SignPeerPaymentHandler startNFSessionWithCompletion:]_block_invoke", 41, v6, @"Failed to create NFPeerPaymentSession! %@", v8, v9, v7);
  }

  else
  {
    sub_265398094(OS_LOG_TYPE_INFO, 0, "[SignPeerPaymentHandler startNFSessionWithCompletion:]_block_invoke", 43, v6, @"Peer Payment session created", v8, v9, v11);
    objc_storeStrong((*(a1 + 32) + 56), a2);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_26537E740(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v7 = a3;
  if (v8)
  {
    sub_265398094(OS_LOG_TYPE_INFO, 0, "[STSSession(Identity) generateHandoverRequestForQRCodeWithConfiguration:responseHandler:]_block_invoke", 132, *(a1 + 32), @"request=%@", v5, v6, v8);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_26537EA28(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v3 = [WeakRetained sendRequestCompletion];

    WeakRetained = v5;
    if (v3)
    {
      v4 = [v5 sendRequestCompletion];
      v4[2](v4, 0, *(a1 + 32));

      [v5 setSendRequestCompletion:0];
      WeakRetained = v5;
    }
  }
}

uint64_t sub_265380088(void *a1, uint64_t a2, void *a3, int a4, void *a5)
{
  v9 = a3;
  v10 = a5;
  if (!a1)
  {
    goto LABEL_9;
  }

  v11 = [a1 initWithParent:a2];
  if (v11)
  {
    if (v10)
    {
      v12 = v10;
      v13 = *(v11 + 128);
      *(v11 + 128) = v12;
    }

    else
    {
      v14 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v13 = dispatch_queue_attr_make_with_qos_class(v14, QOS_CLASS_USER_INITIATED, 0);

      v15 = dispatch_queue_create("ISO18013Handler", v13);
      v16 = *(v11 + 128);
      *(v11 + 128) = v15;
    }

    v17 = [[STSXPCClientNotificationListener alloc] initWithDelegate:v9 queue:*(v11 + 128)];
    v18 = *(v11 + 72);
    *(v11 + 72) = v17;

    *(v11 + 64) = 0;
    if (a4)
    {
      sub_265398094(OS_LOG_TYPE_INFO, 0, "[ISO18013Handler initWithParent:notificationListenerDelegate:initSTSHelper:callbackQueue:]", 89, v11, @"Create STSHelper", v19, v20, v27);
      v21 = objc_opt_new();
      v22 = *(v11 + 80);
      *(v11 + 80) = v21;

      v23 = *(v11 + 80);
      v24 = [*(v11 + 72) xpcEndpoint];
      v25 = [v23 connectToNotificationListener:v24];

      if (v25)
      {

LABEL_9:
        v11 = 0;
      }
    }
  }

  return v11;
}

uint64_t sub_265380234(void *a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  if (a1)
  {
    v9 = [a1 initWithParent:a3];
    if (v9)
    {
      v10 = [[STSXPCClientNotificationListener alloc] initWithDelegate:v9 queue:v8];
      v11 = *(v9 + 72);
      *(v9 + 72) = v10;

      objc_storeWeak((v9 + 88), v7);
      *(v9 + 64) = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

uint64_t sub_2653802EC(uint64_t result)
{
  if (result)
  {
    v1 = result;
    [*(result + 96) setDelegate:0];
    [*(v1 + 96) endSession];
    v2 = *(v1 + 96);
    *(v1 + 96) = 0;

    [v1 setActiveChildSession:0];
    v3 = *(v1 + 72);

    return [v3 invalidateXPCConnection];
  }

  return result;
}

void sub_26538036C(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 96), a2);
  }
}

id sub_265380384(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v74[4] = *MEMORY[0x277D85DE8];
  v10 = *(a1 + 32);
  if (v10)
  {
    if (v10[12])
    {
      sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[ISO18013Handler _start18013Transaction]_block_invoke", 133, v10, @"handover session already exists, reusing", a7, a8, v49);
      v11 = 0;
      goto LABEL_20;
    }

    v10[13] = 0;
    v10 = *(a1 + 32);
  }

  v59 = 0;
  v60 = &v59;
  v61 = 0x3032000000;
  v62 = sub_265380DC0;
  v63 = sub_265380DD0;
  v64 = 0;
  sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[ISO18013Handler _start18013Transaction]_block_invoke", 143, v10, @"Starting handover device session, type=%lu", a7, a8, 3);
  v12 = dispatch_semaphore_create(0);
  v13 = [*(a1 + 32) nfHardwareManager];
  v56[0] = MEMORY[0x277D85DD0];
  v56[1] = 3221225472;
  v56[2] = sub_265380DD8;
  v56[3] = &unk_279B93C68;
  v56[4] = *(a1 + 32);
  v58 = &v59;
  v14 = v12;
  v57 = v14;
  v53 = v13;
  v54 = [v13 startSecureTransactionServicesSessionWithRole:0 connectionHandoverCofig:3 completion:v56];
  if (v54)
  {
    v19 = [*(a1 + 32) consumeHandoffToken];
    if (v19)
    {
      sub_26538036C(*(a1 + 32), v54);
      v20 = *(a1 + 32);
      if (v20)
      {
        v21 = *(v20 + 96);
      }

      else
      {
        v21 = 0;
      }

      v22 = v21;
      [v22 setDelegate:v20];

      sub_265398094(OS_LOG_TYPE_DEFAULT, 1, "[ISO18013Handler _start18013Transaction]_block_invoke", 182, *(a1 + 32), @"Activating session with token: %@", v23, v24, v19);
      v25 = *(a1 + 32);
      if (v25)
      {
        v25 = v25[12];
      }

      v26 = v25;
      v27 = [v26 activateWithToken:v19];

      if (v27)
      {
        sub_265398094(OS_LOG_TYPE_ERROR, 0, "[ISO18013Handler _start18013Transaction]_block_invoke", 185, *(a1 + 32), @"Session switching error=%@", v28, v29, v27);
        sub_2653802EC(*(a1 + 32));
        v30 = MEMORY[0x277CCA9B8];
        v31 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
        v69[0] = *MEMORY[0x277CCA450];
        v32 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Unexpected Result"];
        v33 = *MEMORY[0x277CCA7E8];
        v70[0] = v32;
        v70[1] = v27;
        v69[1] = v33;
        v69[2] = @"Line";
        v70[2] = &unk_2876ED230;
        v69[3] = @"Method";
        v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(*(a1 + 40))];
        v70[3] = v8;
        v69[4] = *MEMORY[0x277CCA068];
        v34 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(*(a1 + 40)), 189];
        v70[4] = v34;
        v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v70 forKeys:v69 count:5];
        v11 = [v30 errorWithDomain:v31 code:10 userInfo:v35];
      }

      else
      {
        dispatch_semaphore_wait(v14, 0xFFFFFFFFFFFFFFFFLL);

        v40 = *(a1 + 32);
        if (!v60[5])
        {
          if (v40)
          {
            v42 = *(v40 + 96);
          }

          else
          {
            v42 = 0;
          }

          v43 = v42;
          [*(a1 + 32) setActiveChildSession:v43];

          v55.receiver = *(a1 + 32);
          v55.super_class = ISO18013Handler;
          v44 = objc_msgSendSuper2(&v55, sel_startTransactionWithAuthorization_options_, 0, 0);
          v27 = 0;
          v14 = 0;
          v11 = 0;
          goto LABEL_19;
        }

        sub_2653802EC(v40);
        v41 = [v60[5] code];
        v52 = MEMORY[0x277CCA9B8];
        if (v41 != 50)
        {
          v31 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
          v65[0] = *MEMORY[0x277CCA450];
          v32 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Unexpected Result"];
          v66[0] = v32;
          v65[1] = *MEMORY[0x277CCA7E8];
          v34 = v60[5];
          v51 = v34;
          if (!v34)
          {
            v45 = MEMORY[0x277CCA9B8];
            v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
            v34 = [v45 errorWithDomain:v8 code:5 userInfo:0];
          }

          v66[1] = v34;
          v66[2] = &unk_2876ED260;
          v65[2] = @"Line";
          v65[3] = @"Method";
          v46 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(*(a1 + 40))];
          v66[3] = v46;
          v65[4] = *MEMORY[0x277CCA068];
          v47 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(*(a1 + 40)), 205];
          v66[4] = v47;
          v48 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v66 forKeys:v65 count:5];
          v11 = [v52 errorWithDomain:v31 code:10 userInfo:v48];

          v27 = 0;
          v14 = 0;
          if (v51)
          {
            goto LABEL_18;
          }

          goto LABEL_16;
        }

        v31 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
        v67[0] = *MEMORY[0x277CCA450];
        v32 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NFC radio disabled"];
        v68[0] = v32;
        v68[1] = &unk_2876ED248;
        v67[1] = @"Line";
        v67[2] = @"Method";
        v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(*(a1 + 40))];
        v68[2] = v8;
        v67[3] = *MEMORY[0x277CCA068];
        v34 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(*(a1 + 40)), 203];
        v68[3] = v34;
        v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v68 forKeys:v67 count:4];
        v11 = [v52 errorWithDomain:v31 code:18 userInfo:v35];
        v27 = 0;
        v14 = 0;
      }
    }

    else
    {
      sub_265398094(OS_LOG_TYPE_ERROR, 0, "[ISO18013Handler _start18013Transaction]_block_invoke", 173, *(a1 + 32), @"Fail to start SecureTransactionServicesSession, missing session token", v17, v18, v50);
      sub_2653802EC(*(a1 + 32));
      v37 = MEMORY[0x277CCA9B8];
      v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
      v71[0] = *MEMORY[0x277CCA450];
      v31 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Invalid State"];
      v72[0] = v31;
      v72[1] = &unk_2876ED218;
      v71[1] = @"Line";
      v71[2] = @"Method";
      v32 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(*(a1 + 40))];
      v72[2] = v32;
      v71[3] = *MEMORY[0x277CCA068];
      v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(*(a1 + 40)), 176];
      v72[3] = v8;
      v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v72 forKeys:v71 count:4];
      v11 = [v37 errorWithDomain:v27 code:9 userInfo:v34];
      v19 = 0;
    }

LABEL_16:

    goto LABEL_17;
  }

  sub_265398094(OS_LOG_TYPE_ERROR, 0, "[ISO18013Handler _start18013Transaction]_block_invoke", 164, *(a1 + 32), @"Fail to start SecureTransactionServicesSession", v15, v16, v50);
  sub_2653802EC(*(a1 + 32));
  v36 = MEMORY[0x277CCA9B8];
  v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
  v73[0] = *MEMORY[0x277CCA450];
  v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Invalid State"];
  v74[0] = v27;
  v74[1] = &unk_2876ED200;
  v73[1] = @"Line";
  v73[2] = @"Method";
  v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(*(a1 + 40))];
  v74[2] = v31;
  v73[3] = *MEMORY[0x277CCA068];
  v32 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(*(a1 + 40)), 167];
  v74[3] = v32;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v74 forKeys:v73 count:4];
  v11 = [v36 errorWithDomain:v19 code:9 userInfo:v8];
LABEL_17:

LABEL_18:
LABEL_19:

  _Block_object_dispose(&v59, 8);
LABEL_20:
  v38 = *MEMORY[0x277D85DE8];

  return v11;
}

void sub_265380D90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_265380DC0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_265380DD8(uint64_t a1, void *a2, void *a3)
{
  v14 = a2;
  v5 = a3;
  v8 = v5;
  v9 = *(a1 + 32);
  if (v5)
  {
    sub_265398094(OS_LOG_TYPE_ERROR, 0, "[ISO18013Handler _start18013Transaction]_block_invoke_2", 154, v9, @"Start session failed: %@", v6, v7, v5);
    v10 = *(*(a1 + 48) + 8);
    v11 = v8;
    v12 = *(v10 + 40);
    *(v10 + 40) = v11;
  }

  else
  {
    if (v9)
    {
      v13 = v9[9];
    }

    else
    {
      v13 = 0;
    }

    v12 = [v13 xpcEndpoint];
    [v14 startSTSNotificationListenerWithEndpoint:v12];
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

void sub_265380EF8(os_unfair_lock_s *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = sub_265380FBC;
    v4[3] = &unk_279B93910;
    v4[4] = a1;
    os_unfair_lock_lock(a1 + 16);
    sub_265380FBC(v4);
    os_unfair_lock_unlock(a1 + 16);
    if (v3)
    {
      v3[2](v3, 0);
    }
  }
}

uint64_t sub_265380FBC(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2)
  {
    goto LABEL_13;
  }

  *(v2 + 104) = 5;
  v3 = *(a1 + 32);
  if (!v3)
  {
    goto LABEL_13;
  }

  v4 = *(v3 + 96);
  if (v4)
  {
    [v4 setDelegate:0];
    v3 = *(a1 + 32);
    if (!v3)
    {
      goto LABEL_13;
    }
  }

  v5 = *(v3 + 96);
  if (!v5 || ([v5 endSessionAndWait], sub_26538036C(*(a1 + 32), 0), (v3 = *(a1 + 32)) != 0))
  {
    v6 = *(v3 + 80);
  }

  else
  {
LABEL_13:
    v6 = 0;
  }

  [v6 invalidate];
  v7 = *(a1 + 32);
  if (v7)
  {
    objc_storeStrong((v7 + 80), 0);
    v8 = *(a1 + 32);
  }

  else
  {
    v8 = 0;
  }

  return [v8 _tearDown];
}

void sub_2653811E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_265381200(uint64_t result)
{
  v1 = *(result + 32);
  if (v1)
  {
    v1 = *(v1 + 104);
  }

  *(*(*(result + 40) + 8) + 24) = v1;
  return result;
}

id *sub_2653812A0(id *a1, void *a2, void *a3, void *a4)
{
  v36 = *MEMORY[0x277D85DE8];
  v8 = a2;
  v9 = a3;
  v10 = a4;
  if (a1)
  {
    v28 = 0;
    v29 = &v28;
    v30 = 0x3032000000;
    v31 = sub_265380DC0;
    v32 = sub_265380DD0;
    v33 = 0;
    objc_storeStrong(a1 + 14, a2);
    v11 = sub_265398338();
    if (os_signpost_enabled(v11))
    {
      v12 = [v8 subIdentifier];
      *buf = 138412290;
      v35 = v12;
      _os_signpost_emit_with_name_impl(&dword_26536F000, v11, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ReleaseCredential", "keyIdentifier=%@", buf, 0xCu);
    }

    v13 = [v8 subIdentifier];
    sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[ISO18013Handler releaseCredential:withAuthorization:iso18013Selection:]", 291, a1, @"keyIdentifier=%@", v14, v15, v13);

    v16 = dispatch_semaphore_create(0);
    v17 = a1[9];
    v18 = [v8 subIdentifier];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = sub_26538158C;
    v25[3] = &unk_279B93CE0;
    v25[4] = a1;
    v27 = &v28;
    v19 = v16;
    v26 = v19;
    [v17 activateISO18013CredentialWithIdentifier:v18 elementSelection:v10 authData:v9 completion:v25];

    dispatch_semaphore_wait(v19, 0xFFFFFFFFFFFFFFFFLL);
    sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[ISO18013Handler releaseCredential:withAuthorization:iso18013Selection:]", 305, a1, @"exit", v20, v21, v24);
    a1 = v29[5];

    _Block_object_dispose(&v28, 8);
  }

  v22 = *MEMORY[0x277D85DE8];

  return a1;
}

void sub_265381560(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26538158C(uint64_t a1, void *a2)
{
  v3 = a2;
  sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[ISO18013Handler releaseCredential:withAuthorization:iso18013Selection:]_block_invoke", 298, *(a1 + 32), @"callback", v4, v5, v8);
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v3;
  v9 = v3;

  dispatch_semaphore_signal(*(a1 + 40));
}

void sub_26538199C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v11 - 144), 8);
  _Block_object_dispose((v11 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_2653819D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = *(a1 + 32);
  if (v10)
  {
    v11 = v10[13];
    v12 = (a1 + 72);
    sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[ISO18013Handler transactionStarted:]_block_invoke", 334, v10, @"status=%lu, transactionState=%lu", a7, a8, *(a1 + 72));
    v15 = v11 == 0;
    if (v11 > 4 || ((1 << v11) & 0x13) == 0)
    {
      sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[ISO18013Handler transactionStarted:]_block_invoke", 340, *(a1 + 32), @"Unexpected transaction state=%d", v13, v14, v11);
    }
  }

  else
  {
    v12 = (a1 + 72);
    sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[ISO18013Handler transactionStarted:]_block_invoke", 334, 0, @"status=%lu, transactionState=%lu", a7, a8, *(a1 + 72));
    v11 = 0;
    v15 = 1;
  }

  v17 = *v12;
  if (*v12 == 9)
  {
    v23 = *(a1 + 32);
    if (v23)
    {
      *(v23 + 104) = 1;
    }

    v24 = *(a1 + 48);
    goto LABEL_25;
  }

  if (v17)
  {
    if (v11 == 5 || v17 != 7)
    {
      if (v11 == 5 || v17 != 6)
      {
        return;
      }

      v24 = *(a1 + 64);
    }

    else
    {
      v24 = *(a1 + 56);
    }

LABEL_25:
    *(*(v24 + 8) + 24) = 1;
    return;
  }

  if (v15)
  {
    v18 = objc_opt_new();
    v19 = *(*(a1 + 40) + 8);
    v20 = *(v19 + 40);
    *(v19 + 40) = v18;

    v21 = [*(a1 + 32) activeSTSCredential];
    [*(*(*(a1 + 40) + 8) + 40) setCredential:v21];

    [*(*(*(a1 + 40) + 8) + 40) setTransactionMode:4];
    v22 = *(a1 + 32);
    if (v22)
    {
      *(v22 + 104) = 2;
    }
  }

  else
  {
    v25 = *(a1 + 32);

    sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[ISO18013Handler transactionStarted:]_block_invoke", 349, v25, @"Unexpected state, dropping start event", v13, v14, a9);
  }
}

void sub_265381D70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_265381D88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 32);
  if (v9 && (v9[13] & 0xFFFFFFFFFFFFFFFELL) == 4)
  {
    v28 = *(a1 + 48);
    sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[ISO18013Handler transactionEndedWithIdentifier:error:]_block_invoke", 401, v9, @"Dropping transaction end event, keyIdentifier: %@, error: %@", a7, a8, *(a1 + 40));
    return;
  }

  v29 = *(a1 + 48);
  sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[ISO18013Handler transactionEndedWithIdentifier:error:]_block_invoke", 405, v9, @"keyIdentifier: %@, error: %@", a7, a8, *(a1 + 40));
  v10 = *(a1 + 32);
  if (v10)
  {
    v11 = *(v10 + 112);
    v12 = *(a1 + 32);
    if (v11)
    {
      if (v12)
      {
        v13 = v12[14];
      }

      else
      {
        v13 = 0;
      }

      v30 = v13;

      v14 = v30;
      if (v30)
      {
        goto LABEL_9;
      }

LABEL_12:
      v31 = [STSCredential credentialWithType:2 identifier:0x2876E4FD0 subIdentifier:*(a1 + 40)];
      sub_265398094(OS_LOG_TYPE_ERROR, 0, "[ISO18013Handler transactionEndedWithIdentifier:error:]_block_invoke", 415, *(a1 + 32), @"A credential is not available.  Creating a credential for event - credential=%@", v16, v17, v31);
      v15 = 5;
      goto LABEL_13;
    }
  }

  else
  {
    v12 = 0;
  }

  v14 = [v12 activeSTSCredential];
  if (!v14)
  {
    goto LABEL_12;
  }

LABEL_9:
  v15 = 0;
  v31 = v14;
LABEL_13:
  v18 = objc_alloc_init(STSTransactionEndEvent);
  v19 = *(*(a1 + 56) + 8);
  v20 = *(v19 + 40);
  *(v19 + 40) = v18;

  [*(*(*(a1 + 56) + 8) + 40) setCredential:v31];
  [*(*(*(a1 + 56) + 8) + 40) setStatus:v15];
  v21 = *(a1 + 48);
  if (v21)
  {
    v22 = [v21 domain];
    v23 = [v22 isEqual:@"STSXPCHelperErrorDomain"];

    if (v23)
    {
      v24 = [*(a1 + 48) code];
      v25 = *(*(*(a1 + 56) + 8) + 40);
      if (v24 == 14)
      {
        v26 = 4;
      }

      else if (v24 == 15)
      {
        v26 = 6;
      }

      else
      {
        v26 = 3;
      }
    }

    else
    {
      v25 = *(*(*(a1 + 56) + 8) + 40);
      v26 = 2;
    }

    [v25 setStatus:v26];
  }

  v27 = *(a1 + 32);
  if (v27)
  {
    *(v27 + 104) = 4;
  }
}

id *sub_2653820A8(id *WeakRetained)
{
  if (WeakRetained)
  {
    WeakRetained = objc_loadWeakRetained(WeakRetained + 11);
    v1 = vars8;
  }

  return WeakRetained;
}

void sub_2653826D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_2653826F8(uint64_t result)
{
  v1 = *(result + 32);
  if (v1)
  {
    v1 = *(v1 + 104);
  }

  *(*(*(result + 40) + 8) + 24) = v1;
  return result;
}

uint64_t sub_265382874(uint64_t result)
{
  v1 = *(result + 32);
  if (v1)
  {
    *(v1 + 104) = 3;
  }

  return result;
}

void sub_265382994(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_2653829AC(uint64_t result)
{
  v1 = *(result + 32);
  if (v1)
  {
    v1 = *(v1 + 104);
  }

  *(*(*(result + 40) + 8) + 24) = v1;
  return result;
}

void sub_265382AD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_265382AEC(uint64_t result)
{
  v1 = *(result + 32);
  if (v1)
  {
    v1 = *(v1 + 104);
  }

  *(*(*(result + 40) + 8) + 24) = v1;
  return result;
}

void sub_265382B10(os_unfair_lock_s *a1)
{
  if (a1)
  {
    v2[0] = MEMORY[0x277D85DD0];
    v2[1] = 3221225472;
    v2[2] = sub_265382BB4;
    v2[3] = &unk_279B93910;
    v2[4] = a1;
    os_unfair_lock_lock(a1 + 16);
    sub_265382BB4(v2);
    os_unfair_lock_unlock(a1 + 16);
  }
}

void sub_265382BB4(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1[12])
  {
    objc_initWeak(&location, v1);
    v3 = dispatch_time(0, 200000000);
    v4 = [*(*(a1 + 32) + 96) callbackQueue];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = sub_265382CB4;
    v5[3] = &unk_279B93B90;
    objc_copyWeak(&v6, &location);
    dispatch_after(v3, v4, v5);

    objc_destroyWeak(&v6);
    objc_destroyWeak(&location);
  }
}

void sub_265382CB4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    sub_26539825C(OS_LOG_TYPE_DEFAULT, 0, "[ISO18013Handler delayedStopTNEPOperation]_block_invoke_2", 599, "After delay, stopTNEPOperation", v1, v2, v3, v5);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = sub_265382D8C;
    v6[3] = &unk_279B93910;
    v7 = WeakRetained;
    os_unfair_lock_lock(WeakRetained + 16);
    sub_265382D8C(v6);
    os_unfair_lock_unlock(WeakRetained + 16);
  }
}

uint64_t sub_265382D8C(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = *(v1 + 96);
  }

  else
  {
    v2 = 0;
  }

  return [v2 stopTNEPOperation];
}

void sub_265383020(uint64_t a1)
{
  v2 = [*(a1 + 32) parent];
  [v2 fireFieldNotificationEvent:*(a1 + 40)];
}

void sub_2653835D0(uint64_t a1)
{
  v2 = [*(a1 + 32) parent];
  [v2 fireSessionDidEndUnexpectedlyEventWithStatus:*(a1 + 40)];
}

id sub_2653837C8(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void *sub_265383F40(uint64_t a1)
{
  v1 = [*(a1 + 32) xpcConnection];
  if (v1)
  {
    v2 = MEMORY[0x277CBEC38];
  }

  else
  {
    v2 = MEMORY[0x277CBEC28];
  }

  v3 = v2;

  return v2;
}

void sub_265384098(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2653840B0(uint64_t a1)
{
  v2 = [*(a1 + 32) xpcConnection];

  if (v2)
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  else
  {
    v4 = [*(a1 + 32) delayWork];
    v3 = _Block_copy(*(a1 + 40));
    [v4 addObject:v3];
  }
}

void sub_265384218(uint64_t a1)
{
  v2 = *(a1 + 32);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_26538432C;
  v9[3] = &unk_279B93DD8;
  v9[4] = v2;
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v10 = v3;
  v11 = v4;
  v5 = [v2 _asynchronousRemoteProxyWithErrorHandler:v9];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_265384504;
  v7[3] = &unk_279B93E00;
  v6 = *(a1 + 40);
  v8 = *(a1 + 48);
  [v5 sendRawDataToAlternativeCarrier:v6 callback:v7];
}

void sub_26538432C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v19[4] = *MEMORY[0x277D85DE8];
  sub_265398094(OS_LOG_TYPE_ERROR, 0, "[STSXPCClientNotificationListener alternativerCarrierSend:completion:]_block_invoke_2", 74, *(a1 + 32), @"XPC error=%@", a7, a8, a2);
  v9 = *(a1 + 40);
  v10 = MEMORY[0x277CCA9B8];
  v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
  v18[0] = *MEMORY[0x277CCA450];
  v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"XPC Error"];
  v19[0] = v12;
  v19[1] = &unk_2876ED290;
  v18[1] = @"Line";
  v18[2] = @"Method";
  v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(*(a1 + 48))];
  v19[2] = v13;
  v18[3] = *MEMORY[0x277CCA068];
  v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(*(a1 + 48)), 75];
  v19[3] = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:4];
  v16 = [v10 errorWithDomain:v11 code:6 userInfo:v15];
  (*(v9 + 16))(v9, v16);

  v17 = *MEMORY[0x277D85DE8];
}

void sub_265384580(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = sub_265384608;
  v3[3] = &unk_279B938E8;
  v3[4] = v1;
  v2 = [v1 _asynchronousRemoteProxyWithErrorHandler:v3];
  [v2 sendConnectionHandoverStarted];
}

void sub_2653846B8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = sub_265384740;
  v3[3] = &unk_279B938E8;
  v3[4] = v1;
  v2 = [v1 _asynchronousRemoteProxyWithErrorHandler:v3];
  [v2 sendConnectionHandoverCompleted];
}

void sub_265384884(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_26538489C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2653848B4(uint64_t a1, void *a2)
{
  v3 = a2;
  sub_265398094(OS_LOG_TYPE_ERROR, 0, "[STSXPCClientNotificationListener setRequestHandoverConfirmation:]_block_invoke", 108, *(a1 + 32), @"XPC error=%@", v4, v5, v3);
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v3;
}

void sub_265384A88(uint64_t a1, void *a2)
{
  v3 = a2;
  sub_265398094(OS_LOG_TYPE_ERROR, 0, "[STSXPCClientNotificationListener startHandoff]_block_invoke", 118, *(a1 + 32), @"XPC error=%@", v4, v5, v3);
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v3;
}

void sub_265384C38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v19[4] = *MEMORY[0x277D85DE8];
  sub_265398094(OS_LOG_TYPE_ERROR, 0, "[STSXPCClientNotificationListener activateISO18013CredentialWithIdentifier:elementSelection:authData:completion:]_block_invoke", 137, *(a1 + 32), @"XPC error=%@", a7, a8, a2);
  v9 = *(a1 + 40);
  v10 = MEMORY[0x277CCA9B8];
  v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
  v18[0] = *MEMORY[0x277CCA450];
  v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"XPC Error"];
  v19[0] = v12;
  v19[1] = &unk_2876ED2A8;
  v18[1] = @"Line";
  v18[2] = @"Method";
  v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(*(a1 + 48))];
  v19[2] = v13;
  v18[3] = *MEMORY[0x277CCA068];
  v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(*(a1 + 48)), 138];
  v19[3] = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:4];
  v16 = [v10 errorWithDomain:v11 code:6 userInfo:v15];
  (*(v9 + 16))(v9, v16);

  v17 = *MEMORY[0x277D85DE8];
}

void sub_265384F38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v19[4] = *MEMORY[0x277D85DE8];
  sub_265398094(OS_LOG_TYPE_ERROR, 0, "[STSXPCClientNotificationListener sendISO18013SessionEstablishment:completion:]_block_invoke", 144, *(a1 + 32), @"XPC error=%@", a7, a8, a2);
  v9 = *(a1 + 40);
  v10 = MEMORY[0x277CCA9B8];
  v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
  v18[0] = *MEMORY[0x277CCA450];
  v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"XPC Error"];
  v19[0] = v12;
  v19[1] = &unk_2876ED2C0;
  v18[1] = @"Line";
  v18[2] = @"Method";
  v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(*(a1 + 48))];
  v19[2] = v13;
  v18[3] = *MEMORY[0x277CCA068];
  v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(*(a1 + 48)), 145];
  v19[3] = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:4];
  v16 = [v10 errorWithDomain:v11 code:6 userInfo:v15];
  (*(v9 + 16))(v9, v16);

  v17 = *MEMORY[0x277D85DE8];
}

void sub_265385264(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v19[4] = *MEMORY[0x277D85DE8];
  sub_265398094(OS_LOG_TYPE_ERROR, 0, "[STSXPCClientNotificationListener sendISO18013SessionData:status:completion:]_block_invoke", 156, *(a1 + 32), @"XPC error=%@", a7, a8, a2);
  v9 = *(a1 + 40);
  v10 = MEMORY[0x277CCA9B8];
  v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
  v18[0] = *MEMORY[0x277CCA450];
  v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"XPC Error"];
  v19[0] = v12;
  v19[1] = &unk_2876ED2D8;
  v18[1] = @"Line";
  v18[2] = @"Method";
  v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(*(a1 + 48))];
  v19[2] = v13;
  v18[3] = *MEMORY[0x277CCA068];
  v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(*(a1 + 48)), 157];
  v19[3] = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:4];
  v16 = [v10 errorWithDomain:v11 code:6 userInfo:v15];
  (*(v9 + 16))(v9, v16);

  v17 = *MEMORY[0x277D85DE8];
}

void sub_265385570(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v19[4] = *MEMORY[0x277D85DE8];
  sub_265398094(OS_LOG_TYPE_ERROR, 0, "[STSXPCClientNotificationListener testGetRemoteTransceiverProxyXPCEndpointWithType:completion:]_block_invoke", 171, *(a1 + 32), @"XPC error=%@", a7, a8, a2);
  v9 = *(a1 + 40);
  v10 = MEMORY[0x277CCA9B8];
  v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
  v18[0] = *MEMORY[0x277CCA450];
  v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"XPC Error"];
  v19[0] = v12;
  v19[1] = &unk_2876ED2F0;
  v18[1] = @"Line";
  v18[2] = @"Method";
  v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(*(a1 + 48))];
  v19[2] = v13;
  v18[3] = *MEMORY[0x277CCA068];
  v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(*(a1 + 48)), 172];
  v19[3] = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:4];
  v16 = [v10 errorWithDomain:v11 code:6 userInfo:v15];
  (*(v9 + 16))(v9, v16, 0);

  v17 = *MEMORY[0x277D85DE8];
}

uint64_t sub_2653859C4(uint64_t a1)
{
  v2 = [*(a1 + 32) xpcConnection];

  if (v2)
  {
    sub_265398094(OS_LOG_TYPE_ERROR, 0, "[STSXPCClientNotificationListener listener:shouldAcceptNewConnection:]_block_invoke", 208, *(a1 + 32), @"Connection existed", v3, v4, v19);
    return MEMORY[0x277CBEC28];
  }

  else
  {
    v6 = sub_265399670([STSEntitlementChecker alloc], *(a1 + 40));
    v9 = v6;
    if (!v6 || (*(v6 + 8) & 1) == 0)
    {
      sub_265398094(OS_LOG_TYPE_ERROR, 0, "[STSXPCClientNotificationListener listener:shouldAcceptNewConnection:]_block_invoke", 214, *(a1 + 32), @"Missing xpcClientNotificationListenerAccess entitlement", v7, v8, v19);
    }

    sub_265398094(OS_LOG_TYPE_INFO, 0, "[STSXPCClientNotificationListener listener:shouldAcceptNewConnection:]_block_invoke", 221, *(a1 + 32), @"Accepting new connection", v7, v8, v19);
    v10 = [*(a1 + 32) _stsHandoverNotificationListenerProtocol];
    [*(a1 + 40) setExportedInterface:v10];

    [*(a1 + 32) setXpcConnection:*(a1 + 40)];
    [*(a1 + 40) setExportedObject:*(a1 + 32)];
    v11 = [*(a1 + 32) _stsHandoverNotificationListenerCallbackProtocol];
    [*(a1 + 40) setRemoteObjectInterface:v11];

    objc_initWeak(&location, *(a1 + 32));
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = sub_265385CF8;
    v24[3] = &unk_279B93EC8;
    v24[4] = *(a1 + 32);
    objc_copyWeak(&v25, &location);
    [*(a1 + 40) setInvalidationHandler:v24];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = sub_265385E24;
    v22[3] = &unk_279B93EC8;
    v22[4] = *(a1 + 32);
    objc_copyWeak(&v23, &location);
    [*(a1 + 40) setInterruptionHandler:v22];
    v12 = *(a1 + 40);
    v13 = [*(a1 + 32) callbackQueue];
    [v12 _setQueue:v13];

    [*(a1 + 40) resume];
    v14 = [*(a1 + 32) delayWork];
    v15 = [v14 copy];

    v16 = [*(a1 + 32) delayWork];
    [v16 removeAllObjects];

    v17 = [*(a1 + 32) callbackQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_265385EB4;
    block[3] = &unk_279B93898;
    block[4] = *(a1 + 32);
    v21 = v15;
    v18 = v15;
    dispatch_async(v17, block);

    objc_destroyWeak(&v23);
    objc_destroyWeak(&v25);
    objc_destroyWeak(&location);

    return MEMORY[0x277CBEC38];
  }
}

void sub_265385CC4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_265385CF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[STSXPCClientNotificationListener listener:shouldAcceptNewConnection:]_block_invoke_2", 236, *(a1 + 32), @"XPC invalidated", a7, a8, v12);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v10 = WeakRetained;
  if (WeakRetained)
  {
    [(os_unfair_lock_s *)WeakRetained setXpcConnection:0];
    v11 = [(os_unfair_lock_s *)v10 delegate];
    [v11 xpcInvalidated];

    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = sub_265385DE0;
    v13[3] = &unk_279B93910;
    v13[4] = v10;
    os_unfair_lock_lock(v10 + 2);
    sub_265385DE0(v13);
    os_unfair_lock_unlock(v10 + 2);
  }
}

void sub_265385DE0(uint64_t a1)
{
  v1 = [*(a1 + 32) delayWork];
  [v1 removeAllObjects];
}

void sub_265385E24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[STSXPCClientNotificationListener listener:shouldAcceptNewConnection:]_block_invoke_4", 248, *(a1 + 32), @"XPC interrupted", a7, a8, v11);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v12 = WeakRetained;
    [WeakRetained setXpcConnection:0];
    v10 = [v12 delegate];
    [v10 xpcInterrupted];

    WeakRetained = v12;
  }
}

void sub_265385EB4(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    [v2 notificationClientConnected];
  }

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = *(a1 + 40);
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        (*(*(*(&v9 + 1) + 8 * v7) + 16))(*(*(&v9 + 1) + 8 * v7));
        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void sub_265386A88(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  v6 = objc_opt_new();
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v23;
    do
    {
      v11 = 0;
      do
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v22 + 1) + 8 * v11);
        v13 = [STS18013RequestElement alloc];
        if (v12)
        {
          v14 = *(v12 + 16);
          v15 = *(v12 + 8);
        }

        else
        {
          v14 = 0;
          v15 = 0;
        }

        v16 = [(STS18013RequestElement *)v13 initWithName:v14 retention:v15];
        [v6 addObject:v16];

        ++v11;
      }

      while (v9 != v11);
      v17 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
      v9 = v17;
    }

    while (v17);
  }

  v18 = *(a1 + 32);
  v19 = [v6 copy];
  [v18 setValue:v19 forKey:v4];

  v20 = *MEMORY[0x277D85DE8];
}

id sub_265386D24(uint64_t a1)
{
  v2 = [*(a1 + 32) xpcConnection];

  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = [v3 xpcConnection];
    v5 = [v4 remoteObjectProxy];
    v6 = [v5 synchronousRemoteObjectProxyWithErrorHandler:*(a1 + 40)];
  }

  else
  {
    v7 = [v3 callbackQueue];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = sub_265386E34;
    v11[3] = &unk_279B93AF8;
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    v12 = v8;
    v13 = v9;
    dispatch_async(v7, v11);

    v6 = 0;
  }

  return v6;
}

void sub_265386E34(uint64_t a1)
{
  v12[4] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = MEMORY[0x277CCA9B8];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
  v11[0] = *MEMORY[0x277CCA450];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"XPC Error"];
  v12[0] = v5;
  v12[1] = &unk_2876ED308;
  v11[1] = @"Line";
  v11[2] = @"Method";
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(*(a1 + 40))];
  v12[2] = v6;
  v11[3] = *MEMORY[0x277CCA068];
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(*(a1 + 40)), 509];
  v12[3] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:4];
  v9 = [v3 errorWithDomain:v4 code:6 userInfo:v8];
  (*(v2 + 16))(v2, v9);

  v10 = *MEMORY[0x277D85DE8];
}

id sub_2653870B4(uint64_t a1)
{
  v2 = [*(a1 + 32) xpcConnection];

  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = [v3 xpcConnection];
    v5 = [v4 remoteObjectProxy];
    v6 = [v5 remoteObjectProxyWithErrorHandler:*(a1 + 40)];
  }

  else
  {
    v7 = [v3 callbackQueue];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = sub_2653871C4;
    v11[3] = &unk_279B93AF8;
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    v12 = v8;
    v13 = v9;
    dispatch_async(v7, v11);

    v6 = 0;
  }

  return v6;
}

void sub_2653871C4(uint64_t a1)
{
  v12[4] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = MEMORY[0x277CCA9B8];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
  v11[0] = *MEMORY[0x277CCA450];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"XPC Error"];
  v12[0] = v5;
  v12[1] = &unk_2876ED320;
  v11[1] = @"Line";
  v11[2] = @"Method";
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(*(a1 + 40))];
  v12[2] = v6;
  v11[3] = *MEMORY[0x277CCA068];
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(*(a1 + 40)), 524];
  v12[3] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:4];
  v9 = [v3 errorWithDomain:v4 code:6 userInfo:v8];
  (*(v2 + 16))(v2, v9);

  v10 = *MEMORY[0x277D85DE8];
}

id *sub_265387464(id *a1, void *a2, void *a3, void *a4)
{
  v8 = a2;
  v9 = a3;
  v10 = a4;
  if (a1)
  {
    v13.receiver = a1;
    v13.super_class = STSCredentialSelect;
    v11 = objc_msgSendSuper2(&v13, sel_init);
    a1 = v11;
    if (v11)
    {
      objc_storeStrong(v11 + 1, a2);
      objc_storeStrong(a1 + 2, a3);
      objc_storeStrong(a1 + 3, a4);
    }
  }

  return a1;
}

void sub_2653878F0(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  v6 = *(a1 + 32);
  v7 = a3;
  v10 = v7;
  if (a3)
  {
    sub_265398094(OS_LOG_TYPE_ERROR, 0, "[PaymentHandler startNFSessionWithCompletion:]_block_invoke", 34, v6, @"Failed to create loyalty and payment session! %@", v8, v9, v7);
  }

  else
  {
    sub_265398094(OS_LOG_TYPE_INFO, 0, "[PaymentHandler startNFSessionWithCompletion:]_block_invoke", 36, v6, @"Loyalty and payment session created", v8, v9, v11);
    objc_storeStrong((*(a1 + 32) + 64), a2);
    [*(*(a1 + 32) + 64) setDelegate:?];
  }

  (*(*(a1 + 40) + 16))();
}

id sub_2653888E8(uint64_t a1, void *a2)
{
  v55[4] = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (a1)
  {
    if (*(a1 + 64))
    {
      v6 = objc_opt_new();
      v45 = 0u;
      v46 = 0u;
      v47 = 0u;
      v48 = 0u;
      v44 = v5;
      v7 = v5;
      v8 = [v7 countByEnumeratingWithState:&v45 objects:v53 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v46;
        while (2)
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v46 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v45 + 1) + 8 * i);
            if ([v12 type] != 1)
            {
              v24 = [v12 type];
              sub_265398094(OS_LOG_TYPE_ERROR, 0, "[PaymentHandler setAuxiliaryCredentials:]", 135, a1, @"Incorrect aux credential type: %ld", v25, v26, v24);
              v27 = MEMORY[0x277CCA9B8];
              v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
              v51[0] = *MEMORY[0x277CCA450];
              v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Invalid Parameter"];
              v52[0] = v29;
              v52[1] = &unk_2876ED3F8;
              v51[1] = @"Line";
              v51[2] = @"Method";
              v30 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(sel_setAuxiliaryCredentials_)];
              v52[2] = v30;
              v51[3] = *MEMORY[0x277CCA068];
              v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(sel_setAuxiliaryCredentials_), 136];
              v52[3] = v31;
              v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v52 forKeys:v51 count:4];
              v23 = [v27 errorWithDomain:v28 code:8 userInfo:v32];

              goto LABEL_16;
            }

            v13 = MEMORY[0x277D2C890];
            v14 = v12;
            v15 = objc_alloc_init(v13);
            v16 = [v14 merchantId];
            [v15 setIdentifier:v16];

            v17 = [v14 data];
            [v15 setData:v17];

            v18 = [v14 mobileToken];
            [v15 setToken:v18];

            [v15 setUserInterventionRequired:{objc_msgSend(v14, "userInterventionRequired")}];
            v19 = [v14 type];

            [v15 setType:v19];
            [v6 addObject:v15];
          }

          v9 = [v7 countByEnumeratingWithState:&v45 objects:v53 count:16];
          if (v9)
          {
            continue;
          }

          break;
        }
      }

      if ([*(a1 + 64) setHostCards:v6])
      {
        v22 = v7;
        v23 = 0;
        v7 = *(a1 + 72);
        *(a1 + 72) = v22;
      }

      else
      {
        sub_265398094(OS_LOG_TYPE_ERROR, 0, "[PaymentHandler setAuxiliaryCredentials:]", 151, a1, @"%@ failed to set VAS cards", v20, v21, v6);
        v37 = MEMORY[0x277CCA9B8];
        v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
        v49[0] = *MEMORY[0x277CCA450];
        v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Unexpected Result"];
        v50[0] = v28;
        v50[1] = &unk_2876ED410;
        v49[1] = @"Line";
        v49[2] = @"Method";
        v38 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(sel_setAuxiliaryCredentials_)];
        v50[2] = v38;
        v49[3] = *MEMORY[0x277CCA068];
        v39 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(sel_setAuxiliaryCredentials_), 152];
        v50[3] = v39;
        v40 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v50 forKeys:v49 count:4];
        v23 = [v37 errorWithDomain:v7 code:10 userInfo:v40];

LABEL_16:
      }

      v5 = v44;
    }

    else
    {
      sub_265398094(OS_LOG_TYPE_ERROR, 0, "[PaymentHandler setAuxiliaryCredentials:]", 127, a1, @"NF session does not exist!", v3, v4, v43);
      v33 = MEMORY[0x277CCA9B8];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
      v54[0] = *MEMORY[0x277CCA450];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Invalid State"];
      v55[0] = v7;
      v55[1] = &unk_2876ED3E0;
      v54[1] = @"Line";
      v54[2] = @"Method";
      v34 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(sel_setAuxiliaryCredentials_)];
      v55[2] = v34;
      v54[3] = *MEMORY[0x277CCA068];
      v35 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(sel_setAuxiliaryCredentials_), 128];
      v55[3] = v35;
      v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v55 forKeys:v54 count:4];
      v23 = [v33 errorWithDomain:v6 code:9 userInfo:v36];
    }
  }

  else
  {
    v23 = 0;
  }

  v41 = *MEMORY[0x277D85DE8];

  return v23;
}

id sub_265388F3C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v36[4] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v9 = a1[8];
    if (v9)
    {
      v10 = a2;
      v32 = 0;
      v11 = [v9 enablePlasticCardMode:a2 error:&v32];
      v12 = v32;
      v15 = v12;
      if (v11)
      {
        goto LABEL_13;
      }

      v16 = @"disabling";
      if (v10)
      {
        v16 = @"enabling";
      }

      v31 = v12;
      sub_265398094(OS_LOG_TYPE_ERROR, 0, "[PaymentHandler enablePlasticCardMode:]", 167, a1, @"%@ plastic card mode failed = %@", v13, v14, v16);
      v17 = MEMORY[0x277CCA9B8];
      v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
      v33[0] = *MEMORY[0x277CCA450];
      v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Unexpected Result"];
      v34[0] = v19;
      v33[1] = *MEMORY[0x277CCA7E8];
      v20 = v15;
      if (!v15)
      {
        v21 = MEMORY[0x277CCA9B8];
        v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
        v20 = [v21 errorWithDomain:v11 code:5 userInfo:0];
      }

      v34[1] = v20;
      v34[2] = &unk_2876ED440;
      v33[2] = @"Line";
      v33[3] = @"Method";
      v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(sel_enablePlasticCardMode_), v31];
      v34[3] = v22;
      v33[4] = *MEMORY[0x277CCA068];
      v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(sel_enablePlasticCardMode_), 168];
      v34[4] = v23;
      v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:v33 count:5];
      v25 = [v17 errorWithDomain:v18 code:10 userInfo:v24];

      if (v15)
      {
        goto LABEL_12;
      }
    }

    else
    {
      sub_265398094(OS_LOG_TYPE_ERROR, 0, "[PaymentHandler enablePlasticCardMode:]", 161, a1, @"NF session does not exist!", a7, a8, v30);
      v26 = MEMORY[0x277CCA9B8];
      v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
      v35[0] = *MEMORY[0x277CCA450];
      v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Invalid State"];
      v36[0] = v19;
      v36[1] = &unk_2876ED428;
      v35[1] = @"Line";
      v35[2] = @"Method";
      v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(sel_enablePlasticCardMode_)];
      v36[2] = v11;
      v35[3] = *MEMORY[0x277CCA068];
      v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(sel_enablePlasticCardMode_), 162];
      v36[3] = v20;
      v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:v35 count:4];
      v25 = [v26 errorWithDomain:v18 code:9 userInfo:v27];
    }

LABEL_12:
    v15 = v25;
    goto LABEL_13;
  }

  v15 = 0;
LABEL_13:
  v28 = *MEMORY[0x277D85DE8];

  return v15;
}

id sub_265389320(void *a1, void *a2, void *a3)
{
  v46[4] = *MEMORY[0x277D85DE8];
  v6 = a2;
  v9 = v6;
  if (a1)
  {
    if (a1[8])
    {
      v10 = [v6 identifier];

      if (v10 && (v11 = a1[8], [v9 identifier], v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "appletWithIdentifier:", v12), v13 = objc_claimAutoreleasedReturnValue(), v12, v13))
      {
        sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[PaymentHandler felicaCredentialState:error:]", 193, a1, @"Felica applet %@", v14, v15, v13);
        v16 = a1[8];
        v40 = 0;
        v17 = [v16 felicaAppletState:v13 error:&v40];
        v18 = v40;
        if (v17)
        {
          v21 = v18 == 0;
        }

        else
        {
          v21 = 0;
        }

        if (v21)
        {
          v22 = 0;
          goto LABEL_21;
        }

        v22 = v18;
        sub_265398094(OS_LOG_TYPE_ERROR, 0, "[PaymentHandler felicaCredentialState:error:]", 197, a1, @"get felica state failed = %@", v19, v20, v18);
        if (!a3)
        {
LABEL_21:

LABEL_22:
          goto LABEL_23;
        }

        v38 = MEMORY[0x277CCA9B8];
        v39 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
        v43[0] = *MEMORY[0x277CCA450];
        v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Unexpected Result"];
        v44[0] = v23;
        v43[1] = *MEMORY[0x277CCA7E8];
        v24 = v22;
        if (!v22)
        {
          v25 = MEMORY[0x277CCA9B8];
          v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
          v24 = [v25 errorWithDomain:v3 code:5 userInfo:0];
        }

        v44[1] = v24;
        v44[2] = &unk_2876ED470;
        v43[2] = @"Line";
        v43[3] = @"Method";
        v37 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(sel_felicaCredentialState_error_)];
        v44[3] = v37;
        v43[4] = *MEMORY[0x277CCA068];
        v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(sel_felicaCredentialState_error_), 199];
        v44[4] = v26;
        v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v44 forKeys:v43 count:5];
        *a3 = [v38 errorWithDomain:v39 code:10 userInfo:v27];

        if (v22)
        {
          v28 = v39;
LABEL_20:

          goto LABEL_21;
        }
      }

      else
      {
        v29 = [v9 identifier];
        sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[PaymentHandler felicaCredentialState:error:]", 203, a1, @"applet not found for identifier = %@", v30, v31, v29);

        if (!a3)
        {
          v13 = 0;
          v17 = 0;
          goto LABEL_22;
        }

        v32 = MEMORY[0x277CCA9B8];
        v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
        v41[0] = *MEMORY[0x277CCA450];
        v39 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Invalid Parameter"];
        v42[0] = v39;
        v42[1] = &unk_2876ED488;
        v41[1] = @"Line";
        v41[2] = @"Method";
        v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(sel_felicaCredentialState_error_)];
        v42[2] = v23;
        v41[3] = *MEMORY[0x277CCA068];
        v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(sel_felicaCredentialState_error_), 205];
        v42[3] = v3;
        v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v42 forKeys:v41 count:4];
        [v32 errorWithDomain:v22 code:8 userInfo:v24];
        v13 = 0;
        *a3 = v17 = 0;
      }

      v28 = v39;
LABEL_19:

      goto LABEL_20;
    }

    sub_265398094(OS_LOG_TYPE_ERROR, 0, "[PaymentHandler felicaCredentialState:error:]", 178, a1, @"NF session does not exist!", v7, v8, v36);
    if (a3)
    {
      v33 = MEMORY[0x277CCA9B8];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
      v45[0] = *MEMORY[0x277CCA450];
      v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Invalid State"];
      v46[0] = v22;
      v46[1] = &unk_2876ED458;
      v45[1] = @"Line";
      v45[2] = @"Method";
      v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(sel_felicaCredentialState_error_)];
      v46[2] = v28;
      v45[3] = *MEMORY[0x277CCA068];
      v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(sel_felicaCredentialState_error_), 180];
      v46[3] = v23;
      v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v46 forKeys:v45 count:4];
      [v33 errorWithDomain:v13 code:9 userInfo:v3];
      *a3 = v17 = 0;
      goto LABEL_19;
    }
  }

  v17 = 0;
LABEL_23:

  v34 = *MEMORY[0x277D85DE8];

  return v17;
}

id sub_265389920(void *a1, void *a2, void *a3)
{
  v46[4] = *MEMORY[0x277D85DE8];
  v6 = a2;
  v9 = v6;
  if (a1)
  {
    if (a1[8])
    {
      v10 = [v6 identifier];

      if (v10 && (v11 = a1[8], [v9 identifier], v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "appletWithIdentifier:", v12), v13 = objc_claimAutoreleasedReturnValue(), v12, v13))
      {
        sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[PaymentHandler transitCredentialState:error:]", 231, a1, @"Transit applet %@", v14, v15, v13);
        v16 = a1[8];
        v40 = 0;
        v17 = [v16 transitAppletState:v13 error:&v40];
        v18 = v40;
        if (v17)
        {
          v21 = v18 == 0;
        }

        else
        {
          v21 = 0;
        }

        if (v21)
        {
          v22 = 0;
          goto LABEL_21;
        }

        v22 = v18;
        sub_265398094(OS_LOG_TYPE_ERROR, 0, "[PaymentHandler transitCredentialState:error:]", 235, a1, @"get transit state failed = %@", v19, v20, v18);
        if (!a3)
        {
LABEL_21:

LABEL_22:
          goto LABEL_23;
        }

        v38 = MEMORY[0x277CCA9B8];
        v39 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
        v43[0] = *MEMORY[0x277CCA450];
        v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Unexpected Result"];
        v44[0] = v23;
        v43[1] = *MEMORY[0x277CCA7E8];
        v24 = v22;
        if (!v22)
        {
          v25 = MEMORY[0x277CCA9B8];
          v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
          v24 = [v25 errorWithDomain:v3 code:5 userInfo:0];
        }

        v44[1] = v24;
        v44[2] = &unk_2876ED4B8;
        v43[2] = @"Line";
        v43[3] = @"Method";
        v37 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(sel_transitCredentialState_error_)];
        v44[3] = v37;
        v43[4] = *MEMORY[0x277CCA068];
        v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(sel_transitCredentialState_error_), 237];
        v44[4] = v26;
        v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v44 forKeys:v43 count:5];
        *a3 = [v38 errorWithDomain:v39 code:10 userInfo:v27];

        if (v22)
        {
          v28 = v39;
LABEL_20:

          goto LABEL_21;
        }
      }

      else
      {
        v29 = [v9 identifier];
        sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[PaymentHandler transitCredentialState:error:]", 241, a1, @"applet not found for identifier = %@", v30, v31, v29);

        if (!a3)
        {
          v13 = 0;
          v17 = 0;
          goto LABEL_22;
        }

        v32 = MEMORY[0x277CCA9B8];
        v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
        v41[0] = *MEMORY[0x277CCA450];
        v39 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Invalid Parameter"];
        v42[0] = v39;
        v42[1] = &unk_2876ED4D0;
        v41[1] = @"Line";
        v41[2] = @"Method";
        v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(sel_transitCredentialState_error_)];
        v42[2] = v23;
        v41[3] = *MEMORY[0x277CCA068];
        v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(sel_transitCredentialState_error_), 243];
        v42[3] = v3;
        v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v42 forKeys:v41 count:4];
        [v32 errorWithDomain:v22 code:8 userInfo:v24];
        v13 = 0;
        *a3 = v17 = 0;
      }

      v28 = v39;
LABEL_19:

      goto LABEL_20;
    }

    sub_265398094(OS_LOG_TYPE_ERROR, 0, "[PaymentHandler transitCredentialState:error:]", 216, a1, @"NF session does not exist!", v7, v8, v36);
    if (a3)
    {
      v33 = MEMORY[0x277CCA9B8];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
      v45[0] = *MEMORY[0x277CCA450];
      v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Invalid State"];
      v46[0] = v22;
      v46[1] = &unk_2876ED4A0;
      v45[1] = @"Line";
      v45[2] = @"Method";
      v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(sel_transitCredentialState_error_)];
      v46[2] = v28;
      v45[3] = *MEMORY[0x277CCA068];
      v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(sel_transitCredentialState_error_), 218];
      v46[3] = v23;
      v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v46 forKeys:v45 count:4];
      [v33 errorWithDomain:v13 code:9 userInfo:v3];
      *a3 = v17 = 0;
      goto LABEL_19;
    }
  }

  v17 = 0;
LABEL_23:

  v34 = *MEMORY[0x277D85DE8];

  return v17;
}

uint64_t sub_26538B4A4(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void sub_26538BC6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_26538BC90(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_26538BCA8(uint64_t a1, void *a2)
{
  v6 = a2;
  if (v6)
  {
    sub_265398094(OS_LOG_TYPE_ERROR, 0, "[STSHandler activateWithHandoffToken:]_block_invoke", 116, *(a1 + 32), @"%@", v4, v5, v6);
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

uint64_t sub_26538C184(void *a1, uint64_t a2, void *a3, int a4, void *a5)
{
  v9 = a3;
  v10 = a5;
  if (!a1)
  {
    goto LABEL_6;
  }

  v11 = [a1 initWithParent:a2];
  if (v11)
  {
    v12 = [[STSXPCClientNotificationListener alloc] initWithDelegate:v9 queue:v10];
    v13 = *(v11 + 72);
    *(v11 + 72) = v12;

    *(v11 + 64) = 0;
    if (a4)
    {
      sub_265398094(OS_LOG_TYPE_INFO, 0, "[ISO18013HybridHandler initWithParent:notificationListenerDelegate:initSTSHelper:callbackQueue:]", 79, v11, @"Create STSHelper", v14, v15, v22);
      v16 = objc_opt_new();
      v17 = *(v11 + 80);
      *(v11 + 80) = v16;

      v18 = *(v11 + 80);
      v19 = [*(v11 + 72) xpcEndpoint];
      v20 = [v18 connectToNotificationListener:v19];

      if (v20)
      {

LABEL_6:
        v11 = 0;
      }
    }
  }

  return v11;
}

uint64_t sub_26538C2B8(uint64_t a1)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = sub_26538C364;
  v3[3] = &unk_279B93910;
  v3[4] = a1;
  os_unfair_lock_lock((a1 + 64));
  sub_26538C364(v3);
  os_unfair_lock_unlock((a1 + 64));
  return [*(a1 + 72) invalidateXPCConnection];
}

uint64_t sub_26538C364(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(v2 + 96);
  }

  else
  {
    v3 = 0;
  }

  [v3 setDelegate:0];
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = *(v4 + 96);
  }

  else
  {
    v5 = 0;
  }

  [v5 endSession];
  sub_26538C3E8(*(a1 + 32), 0);
  v6 = *(a1 + 32);

  return [v6 setActiveChildSession:0];
}

void sub_26538C3E8(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 96), a2);
  }
}

void *sub_26538C400(os_unfair_lock_s *a1, void *a2)
{
  v83[4] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v73[0] = MEMORY[0x277D85DD0];
    v73[1] = 3221225472;
    v73[2] = sub_26538CEE8;
    v73[3] = &unk_279B93F90;
    v73[4] = a1;
    os_unfair_lock_lock(a1 + 16);
    v4 = sub_26538CEE8(v73);
    os_unfair_lock_unlock(a1 + 16);
    if (v4)
    {
      sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[ISO18013HybridHandler _startHandoverSession:]", 126, a1, @"handover session already exists, reusing", v5, v6, v50);
      if (a2)
      {
        *a2 = 0;
      }

      v7 = v4;
      a2 = v7;
      goto LABEL_32;
    }

    v67 = 0;
    v68 = &v67;
    v69 = 0x3032000000;
    v70 = sub_26538CF08;
    v71 = sub_26538CF18;
    v72 = 0;
    sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[ISO18013HybridHandler _startHandoverSession:]", 136, a1, @"Starting handover device session, type=%lu", v5, v6, 2);
    v8 = dispatch_semaphore_create(0);
    v58 = [(os_unfair_lock_s *)a1 nfHardwareManager];
    v64[0] = MEMORY[0x277D85DD0];
    v64[1] = 3221225472;
    v64[2] = sub_26538CF20;
    v64[3] = &unk_279B93FB8;
    v64[4] = a1;
    v66 = &v67;
    v9 = v8;
    v65 = v9;
    v7 = [v58 startHandoverHybridSessionWithCompletion:v64];
    if (!v7)
    {
      sub_265398094(OS_LOG_TYPE_ERROR, 0, "[ISO18013HybridHandler _startHandoverSession:]", 156, a1, @"Fail to start SecureTransactionServicesSession", v10, v11, v51);
      sub_26538C2B8(a1);
      if (!a2)
      {
LABEL_31:

        _Block_object_dispose(&v67, 8);
LABEL_32:

        goto LABEL_33;
      }

      v25 = MEMORY[0x277CCA9B8];
      v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
      v82[0] = *MEMORY[0x277CCA450];
      v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Invalid State"];
      v83[0] = v19;
      v83[1] = &unk_2876ED5A8;
      v82[1] = @"Line";
      v82[2] = @"Method";
      v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(sel__startHandoverSession_)];
      v83[2] = v26;
      v82[3] = *MEMORY[0x277CCA068];
      v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(sel__startHandoverSession_), 159];
      v83[3] = v27;
      v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v83 forKeys:v82 count:4];
      *a2 = [v25 errorWithDomain:v15 code:9 userInfo:v28];

      goto LABEL_28;
    }

    v12 = [(os_unfair_lock_s *)a1 consumeHandoffToken];
    v15 = v12;
    if (!v12)
    {
      sub_265398094(OS_LOG_TYPE_ERROR, 0, "[ISO18013HybridHandler _startHandoverSession:]", 165, a1, @"Missing session token", v13, v14, v51);
      if (!a2)
      {
        v15 = 0;
LABEL_30:

        goto LABEL_31;
      }

      v29 = MEMORY[0x277CCA9B8];
      v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
      v80[0] = *MEMORY[0x277CCA450];
      v30 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Invalid State"];
      v81[0] = v30;
      v81[1] = &unk_2876ED5C0;
      v80[1] = @"Line";
      v80[2] = @"Method";
      v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(sel__startHandoverSession_)];
      v81[2] = v31;
      v80[3] = *MEMORY[0x277CCA068];
      v32 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(sel__startHandoverSession_), 166];
      v81[3] = v32;
      v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v81 forKeys:v80 count:4];
      *a2 = [v29 errorWithDomain:v19 code:9 userInfo:v33];

      v15 = 0;
      goto LABEL_28;
    }

    sub_265398094(OS_LOG_TYPE_DEFAULT, 1, "[ISO18013HybridHandler _startHandoverSession:]", 170, a1, @"Activating session with token: %@", v13, v14, v12);
    v16 = [v7 activateWithToken:v15];
    v19 = v16;
    if (v16)
    {
      sub_265398094(OS_LOG_TYPE_ERROR, 0, "[ISO18013HybridHandler _startHandoverSession:]", 173, a1, @"Session switching error=%@", v17, v18, v16);
      sub_26538C2B8(a1);
      if (a2)
      {
        v54 = MEMORY[0x277CCA9B8];
        v56 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
        v78[0] = *MEMORY[0x277CCA450];
        v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Unexpected Result"];
        v21 = *MEMORY[0x277CCA7E8];
        v79[0] = v20;
        v79[1] = v19;
        v78[1] = v21;
        v78[2] = @"Line";
        v79[2] = &unk_2876ED5D8;
        v78[3] = @"Method";
        v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(sel__startHandoverSession_)];
        v79[3] = v22;
        v78[4] = *MEMORY[0x277CCA068];
        v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(sel__startHandoverSession_), 176];
        v79[4] = v23;
        v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v79 forKeys:v78 count:5];
        *a2 = [v54 errorWithDomain:v56 code:10 userInfo:v24];

LABEL_28:
        a2 = 0;
      }
    }

    else
    {
      dispatch_semaphore_wait(v9, 0xFFFFFFFFFFFFFFFFLL);

      if (v68[5])
      {
        sub_26538C2B8(a1);
        if (a2)
        {
          v34 = [v68[5] code];
          v57 = MEMORY[0x277CCA9B8];
          if (v34 == 50)
          {
            v35 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
            v76[0] = *MEMORY[0x277CCA450];
            v36 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NFC radio disabled"];
            v77[0] = v36;
            v77[1] = &unk_2876ED5F0;
            v76[1] = @"Line";
            v76[2] = @"Method";
            v37 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(sel__startHandoverSession_)];
            v77[2] = v37;
            v76[3] = *MEMORY[0x277CCA068];
            v38 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(sel__startHandoverSession_), 190];
            v77[3] = v38;
            v39 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v77 forKeys:v76 count:4];
            *a2 = [v57 errorWithDomain:v35 code:18 userInfo:v39];
          }

          else
          {
            v53 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
            v74[0] = *MEMORY[0x277CCA450];
            v55 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Unexpected Result"];
            v75[0] = v55;
            v74[1] = *MEMORY[0x277CCA7E8];
            v42 = v68[5];
            if (v42)
            {
              v43 = v68[5];
            }

            else
            {
              v44 = MEMORY[0x277CCA9B8];
              v52 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
              v43 = [v44 errorWithDomain:v52 code:5 userInfo:0];
            }

            v75[1] = v43;
            v75[2] = &unk_2876ED608;
            v74[2] = @"Line";
            v74[3] = @"Method";
            v45 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(sel__startHandoverSession_)];
            v75[3] = v45;
            v74[4] = *MEMORY[0x277CCA068];
            v46 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(sel__startHandoverSession_), 192];
            v75[4] = v46;
            v47 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v75 forKeys:v74 count:5];
            *a2 = [v57 errorWithDomain:v53 code:10 userInfo:v47];

            if (!v42)
            {
            }
          }

          v19 = 0;
          v9 = 0;
          goto LABEL_28;
        }
      }

      v59[0] = MEMORY[0x277D85DD0];
      v59[1] = 3221225472;
      v60 = sub_26538D020;
      v61 = &unk_279B93898;
      v62 = a1;
      v40 = v7;
      v63 = v40;
      v41 = v59;
      os_unfair_lock_lock(a1 + 16);
      v60(v41);
      os_unfair_lock_unlock(a1 + 16);

      a2 = v40;
      v19 = 0;
      v9 = 0;
    }

    goto LABEL_30;
  }

  a2 = 0;
LABEL_33:
  v48 = *MEMORY[0x277D85DE8];

  return a2;
}

id sub_26538CEE8(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    return *(v1 + 96);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26538CF08(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_26538CF20(uint64_t a1, void *a2, void *a3)
{
  v16 = a2;
  v5 = a3;
  v8 = v5;
  v9 = *(a1 + 32);
  if (v5)
  {
    sub_265398094(OS_LOG_TYPE_ERROR, 0, "[ISO18013HybridHandler _startHandoverSession:]_block_invoke", 144, v9, @"Start session failed: %@", v6, v7, v5);
    v10 = *(*(a1 + 48) + 8);
    v11 = v8;
    v12 = *(v10 + 40);
    *(v10 + 40) = v11;
  }

  else
  {
    sub_265398094(OS_LOG_TYPE_ERROR, 0, "[ISO18013HybridHandler _startHandoverSession:]_block_invoke", 149, v9, @"Start session started", v6, v7, v15);
    v13 = *(a1 + 32);
    if (v13)
    {
      v14 = *(v13 + 72);
    }

    else
    {
      v14 = 0;
    }

    v12 = [v14 xpcEndpoint];
    [v16 startSTSNotificationListenerWithEndpoint:v12];
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

uint64_t sub_26538D020(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    *(v2 + 120) = 0;
    v3 = *(a1 + 32);
  }

  else
  {
    v3 = 0;
  }

  sub_26538C3E8(v3, *(a1 + 40));
  [*(a1 + 32) setActiveChildSession:*(a1 + 40)];
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = *(v4 + 96);
  }

  else
  {
    v5 = 0;
  }

  return [v5 setDelegate:?];
}

void sub_26538DED0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a33, 8);
  _Unwind_Resume(a1);
}

void sub_26538DF04(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 112), a2);
  }
}

void sub_26538DF1C(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v13 = a2;
  v7 = [v13 type];
  if (v7 == [*(a1 + 32) supportedCredentialType] && (objc_msgSend(v13, "identifier"), (v8 = objc_claimAutoreleasedReturnValue()) != 0) && (v9 = v8, objc_msgSend(v13, "secondarySubIdentifier"), v10 = objc_claimAutoreleasedReturnValue(), v10, v9, !v10))
  {
    v11 = [v13 subIdentifier];

    if (v11)
    {
      v12 = *(a1 + 40);
    }

    else
    {
      v12 = *(a1 + 48);
    }

    objc_storeStrong((*(v12 + 8) + 40), a2);
  }

  else
  {
    *a4 = 1;
  }
}

void sub_26538E044(os_unfair_lock_s *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = sub_26538E108;
    v4[3] = &unk_279B93910;
    v4[4] = a1;
    os_unfair_lock_lock(a1 + 16);
    sub_26538E108(v4);
    os_unfair_lock_unlock(a1 + 16);
    if (v3)
    {
      v3[2](v3, 0);
    }
  }
}

uint64_t sub_26538E108(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2)
  {
    goto LABEL_11;
  }

  *(v2 + 120) = 5;
  v3 = *(a1 + 32);
  if (!v3)
  {
    goto LABEL_11;
  }

  v4 = *(v3 + 96);
  if (v4)
  {
    [v4 setDelegate:0];
    v3 = *(a1 + 32);
    if (!v3)
    {
      goto LABEL_11;
    }
  }

  v5 = *(v3 + 96);
  if (!v5 || ([v5 endSessionAndWait], sub_26538C3E8(*(a1 + 32), 0), objc_msgSend(*(a1 + 32), "setActiveChildSession:", 0), (v3 = *(a1 + 32)) != 0))
  {
    v6 = *(v3 + 80);
  }

  else
  {
LABEL_11:
    v6 = 0;
  }

  [v6 invalidate];
  v7 = *(a1 + 32);

  return [v7 _tearDown];
}

id sub_26538E56C(id a1, void *a2, void *a3, void *a4)
{
  v41 = *MEMORY[0x277D85DE8];
  v8 = a2;
  v9 = a3;
  v10 = a4;
  if (a1)
  {
    v33 = 0;
    v34 = &v33;
    v35 = 0x3032000000;
    v36 = sub_26538CF08;
    v37 = sub_26538CF18;
    v38 = 0;
    objc_storeStrong(a1 + 13, a2);
    v11 = sub_265398338();
    if (os_signpost_enabled(v11))
    {
      v12 = [v8 subIdentifier];
      *buf = 138412290;
      v40 = v12;
      _os_signpost_emit_with_name_impl(&dword_26536F000, v11, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ReleaseCredential", "keyIdentifier=%@", buf, 0xCu);
    }

    v13 = [v8 subIdentifier];
    sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[ISO18013HybridHandler releaseCredential:withAuthorization:iso18013Selection:]", 385, a1, @"keyIdentifier=%@", v14, v15, v13);

    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v30 = sub_26538E8D0;
    v31 = &unk_279B93910;
    v32 = a1;
    v16 = v29;
    os_unfair_lock_lock(a1 + 16);
    v30(v16);
    os_unfair_lock_unlock(a1 + 16);

    v17 = dispatch_semaphore_create(0);
    v18 = *(a1 + 9);
    v19 = [v8 subIdentifier];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = sub_26538E8F0;
    v26[3] = &unk_279B93CE0;
    v26[4] = a1;
    v28 = &v33;
    v20 = v17;
    v27 = v20;
    [v18 activateISO18013CredentialWithIdentifier:v19 elementSelection:v10 authData:v9 completion:v26];

    dispatch_semaphore_wait(v20, 0xFFFFFFFFFFFFFFFFLL);
    sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[ISO18013HybridHandler releaseCredential:withAuthorization:iso18013Selection:]", 406, a1, @"exit", v21, v22, v25);
    a1 = v34[5];

    _Block_object_dispose(&v33, 8);
  }

  v23 = *MEMORY[0x277D85DE8];

  return a1;
}

void sub_26538E8A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_26538E8D0(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = *(v1 + 96);
  }

  else
  {
    v2 = 0;
  }

  return [v2 stopTNEPOperation];
}

void sub_26538E8F0(uint64_t a1, void *a2)
{
  v3 = a2;
  sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[ISO18013HybridHandler releaseCredential:withAuthorization:iso18013Selection:]_block_invoke_2", 399, *(a1 + 32), @"callback", v4, v5, v8);
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v3;
  v9 = v3;

  dispatch_semaphore_signal(*(a1 + 40));
}

uint64_t sub_26538F3D8(uint64_t a1)
{
  v3.receiver = *(a1 + 32);
  v3.super_class = ISO18013HybridHandler;
  v1 = objc_msgSendSuper2(&v3, sel_startTransactionWithAuthorization_options_, 0, 0);
  return 0;
}

id *sub_26538F90C(id *WeakRetained)
{
  if (WeakRetained)
  {
    WeakRetained = objc_loadWeakRetained(WeakRetained + 11);
    v1 = vars8;
  }

  return WeakRetained;
}

void sub_265390080(os_unfair_lock_s *a1)
{
  if (a1)
  {
    v2[0] = MEMORY[0x277D85DD0];
    v2[1] = 3221225472;
    v2[2] = sub_265390124;
    v2[3] = &unk_279B93910;
    v2[4] = a1;
    os_unfair_lock_lock(a1 + 16);
    sub_265390124(v2);
    os_unfair_lock_unlock(a1 + 16);
  }
}

void sub_265390124(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1[12])
  {
    objc_initWeak(&location, v1);
    v3 = dispatch_time(0, 200000000);
    v4 = [*(*(a1 + 32) + 96) callbackQueue];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = sub_265390224;
    v5[3] = &unk_279B93B90;
    objc_copyWeak(&v6, &location);
    dispatch_after(v3, v4, v5);

    objc_destroyWeak(&v6);
    objc_destroyWeak(&location);
  }
}

void sub_265390224(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    sub_26539825C(OS_LOG_TYPE_DEFAULT, 0, "[ISO18013HybridHandler delayedStopTNEPOperation]_block_invoke_2", 683, "After delay, stopTNEPOperation", v1, v2, v3, v5);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = sub_2653902FC;
    v6[3] = &unk_279B93910;
    v7 = WeakRetained;
    os_unfair_lock_lock(WeakRetained + 16);
    sub_2653902FC(v6);
    os_unfair_lock_unlock(WeakRetained + 16);
  }
}

uint64_t sub_2653902FC(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = *(v1 + 96);
  }

  else
  {
    v2 = 0;
  }

  return [v2 stopTNEPOperation];
}

void sub_265391320(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_265391338(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_265391350(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v6 = a3;
  sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[STSListener startWithDelegate:]_block_invoke", 49, *(a1 + 32), @"Session created: error: %@", v7, v8, v6);
  sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[STSListener startWithDelegate:]_block_invoke", 50, *(a1 + 32), @"Session: %@", v9, v10, v11);
  dispatch_resume(*(*(a1 + 32) + 8));
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  if (!v6)
  {
    objc_storeStrong((*(a1 + 32) + 16), a2);
    [v11 setDelegate:*(a1 + 32)];
  }
}

void sub_265391508(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 16);
  *(v1 + 16) = 0;
}

void sub_2653915B8(uint64_t a1)
{
  v5 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[STSListener didEndSession]_block_invoke", 80, *(a1 + 32), @"firing event", v2, v3, v4);
    [v5 listenerDidEndUnexpectedly:*(a1 + 32)];
  }
}

void sub_26539170C(uint64_t a1)
{
  v5 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[STSListener didStartSession:]_block_invoke", 91, *(a1 + 32), @"firing event", v2, v3, v4);
    [v5 listenerDidStart:*(a1 + 32) error:*(a1 + 40)];
  }
}

void sub_265391860(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 24), *(a1 + 40));
  v5 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[STSListener didEnterField:]_block_invoke", 103, *(a1 + 32), @"firing event", v2, v3, v4);
    [v5 listener:*(a1 + 32) didEnterField:*(*(a1 + 32) + 24)];
  }
}

void sub_26539199C(uint64_t a1)
{
  v5 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[STSListener didExitField]_block_invoke", 114, *(a1 + 32), @"firing event", v2, v3, v4);
    [v5 listener:*(a1 + 32) didExitField:*(*(a1 + 32) + 24)];
  }
}

id sub_265393DE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a1 + 40);
  sub_265398190(OS_LOG_TYPE_INFO, 0, "+[CALogger postCAEventFor:eventInput:]_block_invoke", 20, @"Posting for %@ = %@", a6, a7, a8, *(a1 + 32));
  v9 = *(a1 + 40);

  return v9;
}

void sub_2653942D4(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  v6 = *(a1 + 32);
  v7 = a3;
  v10 = v7;
  if (a3)
  {
    sub_265398094(OS_LOG_TYPE_ERROR, 0, "[SignMerchantPaymentHandler startNFSessionWithCompletion:]_block_invoke", 39, v6, @"Failed to create NFECommercePaymentSession! %@", v8, v9, v7);
  }

  else
  {
    sub_265398094(OS_LOG_TYPE_INFO, 0, "[SignMerchantPaymentHandler startNFSessionWithCompletion:]_block_invoke", 41, v6, @"NFECommercePaymentSession session created", v8, v9, v11);
    objc_storeStrong((*(a1 + 32) + 56), a2);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_265394EA8(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  v6 = *(a1 + 32);
  v7 = a3;
  v10 = v7;
  if (a3)
  {
    sub_265398094(OS_LOG_TYPE_ERROR, 0, "[DigitalCarKeyHandler startNFSessionWithCompletion:]_block_invoke", 36, v6, @"Failed to create digital car key session! %@", v8, v9, v7);
  }

  else
  {
    sub_265398094(OS_LOG_TYPE_INFO, 0, "[DigitalCarKeyHandler startNFSessionWithCompletion:]_block_invoke", 38, v6, @"Digital car key session created", v8, v9, v11);
    objc_storeStrong((*(a1 + 32) + 64), a2);
    [*(*(a1 + 32) + 64) setDelegate:?];
    [*(*(a1 + 32) + 64) setPassthroughDelegate:?];
  }

  (*(*(a1 + 40) + 16))();
}

uint64_t sub_265396254(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    return 0;
  }

  v11 = a1[8];
  if (!v11)
  {
    sub_265398094(OS_LOG_TYPE_ERROR, 0, "[DigitalCarKeyHandler supportsSecureRanging]", 138, a1, @"NF session does not exist!", a7, a8, v8);
    return 0;
  }

  return MEMORY[0x2821F9670](v11, sel_supportsSecureRanging);
}

id sub_2653962B8(id a1, uint64_t a2)
{
  v2 = a1;
  if (a1)
  {
    v3 = [MEMORY[0x277D2C830] vehicleReports:a2];
    v6 = v3;
    if (v3 && [v3 count])
    {
      v7 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v6, "count")}];
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = sub_2653963D8;
      v10[3] = &unk_279B94120;
      v2 = v7;
      v11 = v2;
      [v6 enumerateKeysAndObjectsUsingBlock:v10];
    }

    else
    {
      sub_265398094(OS_LOG_TYPE_DEFAULT, 0, "[DigitalCarKeyHandler vehicleReports:]", 149, v2, @"No vehicle reports.", v4, v5, v9);
      v2 = 0;
    }
  }

  return v2;
}

void sub_2653963D8(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [[STSVehicleReport alloc] initVehicleReport:v5];

  [*(a1 + 32) setValue:v7 forKey:v6];
}

id sub_265396464(void *a1, void *a2)
{
  v35[4] = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (!a1)
  {
    v12 = 0;
    goto LABEL_11;
  }

  if (!a1[8])
  {
    sub_265398094(OS_LOG_TYPE_ERROR, 0, "[DigitalCarKeyHandler rkeSendPassthroughMessage:]", 167, a1, @"NF session does not exist!", v3, v4, v28);
    v22 = MEMORY[0x277CCA9B8];
    v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
    v34[0] = *MEMORY[0x277CCA450];
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Invalid State"];
    v35[0] = v15;
    v35[1] = &unk_2876ED950;
    v34[1] = @"Line";
    v34[2] = @"Method";
    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(sel_rkeSendPassthroughMessage_)];
    v35[2] = v16;
    v34[3] = *MEMORY[0x277CCA068];
    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(sel_rkeSendPassthroughMessage_), 168];
    v35[3] = v17;
    v23 = MEMORY[0x277CBEAC0];
    v24 = v35;
    v25 = v34;
LABEL_9:
    v18 = [v23 dictionaryWithObjects:v24 forKeys:v25 count:4];
    v19 = v22;
    v20 = v14;
    v21 = 9;
    goto LABEL_10;
  }

  v6 = [a1 activeSTSCredential];

  if (!v6)
  {
    sub_265398094(OS_LOG_TYPE_ERROR, 0, "[DigitalCarKeyHandler rkeSendPassthroughMessage:]", 170, a1, @"Credential does not exist!", v7, v8, v28);
    v22 = MEMORY[0x277CCA9B8];
    v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
    v32[0] = *MEMORY[0x277CCA450];
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Invalid State"];
    v33[0] = v15;
    v33[1] = &unk_2876ED968;
    v32[1] = @"Line";
    v32[2] = @"Method";
    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(sel_rkeSendPassthroughMessage_)];
    v33[2] = v16;
    v32[3] = *MEMORY[0x277CCA068];
    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(sel_rkeSendPassthroughMessage_), 171];
    v33[3] = v17;
    v23 = MEMORY[0x277CBEAC0];
    v24 = v33;
    v25 = v32;
    goto LABEL_9;
  }

  v9 = a1[8];
  v29 = 0;
  v10 = [v9 sendPassthroughMessage:v5 error:&v29];
  v11 = v29;
  v12 = v11;
  if ((v10 & 1) == 0 && !v11)
  {
    v13 = MEMORY[0x277CCA9B8];
    v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
    v30[0] = *MEMORY[0x277CCA450];
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Unknown Error"];
    v31[0] = v15;
    v31[1] = &unk_2876ED980;
    v30[1] = @"Line";
    v30[2] = @"Method";
    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(sel_rkeSendPassthroughMessage_)];
    v31[2] = v16;
    v30[3] = *MEMORY[0x277CCA068];
    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(sel_rkeSendPassthroughMessage_), 178];
    v31[3] = v17;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:4];
    v19 = v13;
    v20 = v14;
    v21 = 5;
LABEL_10:
    v12 = [v19 errorWithDomain:v20 code:v21 userInfo:v18];
  }

LABEL_11:

  v26 = *MEMORY[0x277D85DE8];

  return v12;
}

id *sub_2653968C0(id *a1, uint64_t a2)
{
  if (a1)
  {
    a1 = [a1[8] cancelRKEFunction:a2];
    v2 = vars8;
  }

  return a1;
}

id sub_265396900(void *a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    a1 = [MEMORY[0x277D2C830] pauseRangingForReaderIdentifier:a2 durationInSec:a3];
    v3 = vars8;
  }

  return a1;
}

id sub_265396940(void *a1, uint64_t a2)
{
  if (a1)
  {
    a1 = [MEMORY[0x277D2C830] resumeRangingForReaderIdentifier:a2];
    v2 = vars8;
  }

  return a1;
}

uint64_t sub_265397ED4()
{
  if (qword_280017758 != -1)
  {
    dispatch_once(&qword_280017758, &unk_2876E3D30);
  }

  return dword_280017754;
}

uint64_t sub_265397F1C()
{
  result = arc4random();
  dword_280017754 = result;
  return result;
}

void sub_265397F3C(os_log_type_t a1, void *a2, uint64_t a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (qword_280017768 != -1)
  {
    dispatch_once(&qword_280017768, &unk_2876E3D50);
  }

  v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:v5 arguments:a3];
  v7 = [v6 UTF8String];
  v8 = qword_280017760;
  if (os_log_type_enabled(qword_280017760, a1))
  {
    v10 = 136446210;
    v11 = v7;
    _os_log_impl(&dword_26536F000, v8, a1, "%{public}s", &v10, 0xCu);
  }

  v9 = *MEMORY[0x277D85DE8];
}

uint64_t sub_265398050()
{
  qword_280017760 = os_log_create("com.apple.sts", "logging");

  return MEMORY[0x2821F96F8]();
}

void sub_265398094(os_log_type_t a1, int a2, uint64_t a3, uint64_t a4, void *a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v14 = a5;
  v15 = a6;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (qword_280017780 != -1)
  {
    dispatch_once(&qword_280017780, &unk_2876E3D90);
  }

  if (byte_280017750 == 1)
  {
LABEL_5:
    v16 = MEMORY[0x277CCACA8];
    v17 = v15;
    v18 = [v16 stringWithFormat:@"%08x [%s]:%d %@", objc_msgSend(v14, "objectInstanceID"), a3, a4, v17];

    sub_265397F3C(a1, v18, &a9);
  }
}

void sub_265398190(os_log_type_t a1, int a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v13 = a5;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (qword_280017780 != -1)
  {
    dispatch_once(&qword_280017780, &unk_2876E3D90);
  }

  if (byte_280017750 == 1)
  {
LABEL_5:
    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s : %d : %@", a3, a4, v13];
    sub_265397F3C(a1, v14, &a9);
  }
}

void sub_26539825C(os_log_type_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (!a2)
  {
    goto LABEL_5;
  }

  if (qword_280017780 != -1)
  {
    dispatch_once(&qword_280017780, &unk_2876E3D90);
  }

  if (byte_280017750 == 1)
  {
LABEL_5:
    v13 = [MEMORY[0x277CCACA8] stringWithCString:a5 encoding:4];
    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s : %d : %@", a3, a4, v13];

    sub_265397F3C(a1, v14, &a9);
  }
}

id sub_265398338()
{
  if (qword_280017778 != -1)
  {
    dispatch_once(&qword_280017778, &unk_2876E3D70);
  }

  v1 = qword_280017770;

  return v1;
}

uint64_t sub_26539838C()
{
  qword_280017770 = os_log_create("com.apple.sts.signpost", "GeneralSignposts");

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_2653983D0()
{
  result = MGGetBoolAnswer();
  if (result)
  {
    byte_280017750 = 1;
  }

  return result;
}

uint64_t sub_265398804()
{
  qword_280017788 = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_265399264(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 48);
  return MEMORY[0x2821F9670](*(a1 + 32), sel__postReaderTransactionEvent_prepOnly_);
}

uint64_t sub_265399324(int a1)
{
  if ((a1 - 1) > 8)
  {
    return 0;
  }

  else
  {
    return dword_2653A6FC8[a1 - 1];
  }
}

id sub_265399348(void *a1)
{
  v1 = a1;
  v2 = objc_opt_new();
  [v1 rfTechnology];
  [v2 setNFCTechnology:0];
  [v2 setFieldType:1];
  v3 = [v1 notificationType];
  switch(v3)
  {
    case 3:
      v9 = v1;
      [v2 setODARequired:{objc_msgSend(v9, "odaRequired")}];
      v10 = [v9 terminalType];
      v11 = [v9 terminalSubType];
      if (v10 != 1)
      {
        if (v10 == 2)
        {
          if (v11 >= 8)
          {
            v10 = 2;
          }

          else
          {
            v10 = qword_2653A6FF0[v11];
          }
        }

        else
        {
          v10 = 7;
        }
      }

      [v2 setTerminalType:v10];
      v12 = [v9 tciArray];
      [v2 setTCIS:v12];

      v13 = [v9 openLoopSchemeBitfield];

      [v2 setOpenLoopSchemeBitfield:v13];
      v4 = v2;
      v5 = 2;
      goto LABEL_16;
    case 2:
      v6 = v1;
      [v2 setODARequired:{objc_msgSend(v6, "odaRequired")}];
      v7 = [v6 terminalMode] - 1;
      if (v7 > 3)
      {
        v8 = 0;
      }

      else
      {
        v8 = dword_2653A7030[v7];
      }

      [v2 setTerminalMode:v8];
      [v2 setTerminalType:4];
      [v2 setEcpVersion:1];

      break;
    case 1:
      [v2 setODARequired:0];
      [v2 setTerminalType:4];
      v4 = v2;
      v5 = 0;
LABEL_16:
      [v4 setEcpVersion:v5];
      break;
  }

  return v2;
}

id sub_265399670(id a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v17.receiver = a1;
    v17.super_class = STSEntitlementChecker;
    a1 = objc_msgSendSuper2(&v17, sel_init);
    if (a1)
    {
      *(a1 + 3) = [v3 processIdentifier];
      v4 = *MEMORY[0x277CBECE8];
      if (v3)
      {
        [v3 auditToken];
      }

      else
      {
        memset(&token, 0, sizeof(token));
      }

      v5 = SecTaskCreateWithAuditToken(v4, &token);
      if (v5)
      {
        v8 = v5;
        v9 = @"com.apple.sts.xpcclientnotification.listener";
        *token.val = 0;
        v12 = SecTaskCopyValueForEntitlement(v8, @"com.apple.sts.xpcclientnotification.listener", &token);
        if (*token.val)
        {
          sub_265398094(OS_LOG_TYPE_ERROR, 0, "[STSEntitlementChecker _copyValueOfEntitlement:secTask:]", 30, a1, @"Failed to get entitlements: %@", v10, v11, *token.val);
          CFRelease(*token.val);
        }

        if (v12)
        {
          v13 = CFGetTypeID(v12);
          v14 = v13 == CFBooleanGetTypeID() && CFBooleanGetValue(v12) != 0;
          CFRelease(v12);
        }

        else
        {
          v14 = 0;
        }

        *(a1 + 8) = v14;
        CFRelease(v8);
      }

      else
      {
        sub_265398094(OS_LOG_TYPE_ERROR, 0, "[STSEntitlementChecker initWithConnection:]", 84, a1, @"Cannot create SecTaskRef with XPC Connection: %@", v6, v7, v3);

        a1 = 0;
      }
    }
  }

  return a1;
}

void sub_26539A1F0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_26539A2D8;
  block[3] = &unk_279B93B20;
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

void sub_26539D2B8(uint64_t a1)
{
  v12[4] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = MEMORY[0x277CCA9B8];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"STS.fwk"];
  v11[0] = *MEMORY[0x277CCA450];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Invalid State"];
  v12[0] = v5;
  v12[1] = &unk_2876EDBF0;
  v11[1] = @"Line";
  v11[2] = @"Method";
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", sel_getName(*(a1 + 40))];
  v12[2] = v6;
  v11[3] = *MEMORY[0x277CCA068];
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d", sel_getName(*(a1 + 40)), 204];
  v12[3] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:4];
  v9 = [v3 errorWithDomain:v4 code:9 userInfo:v8];
  (*(v2 + 16))(v2, v9);

  v10 = *MEMORY[0x277D85DE8];
}

void sub_26539E288(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    a2 = [STSTapToProvisionAppletData fromOR:a2];
  }

  (*(*(a1 + 32) + 16))();
}

void sub_26539E48C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_26539E4B0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_26539E4C8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  v9 = a3;
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
  v8 = v5;

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_26539E61C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [STSTapToProvisionResult fromOR:a2];
  (*(v4 + 16))(v4, v6, v5);
}

void sub_26539EF5C(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  v6 = *(a1 + 32);
  v7 = a3;
  v10 = v7;
  if (a3)
  {
    sub_265398094(OS_LOG_TYPE_ERROR, 0, "[UnifiedAccessHandler startNFSessionWithCompletion:]_block_invoke", 42, v6, @"Failed to create Unified Access session! %@", v8, v9, v7);
  }

  else
  {
    sub_265398094(OS_LOG_TYPE_INFO, 0, "[UnifiedAccessHandler startNFSessionWithCompletion:]_block_invoke", 44, v6, @"Unified session created", v8, v9, v11);
    objc_storeStrong((*(a1 + 32) + 64), a2);
    [*(*(a1 + 32) + 64) setDelegate:?];
  }

  (*(*(a1 + 40) + 16))();
}

id sub_2653A13E0(void *a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (a1)
  {
    v4 = [a1 activeSTSCredential];
    v5 = [a1 activeSTSCredentials];

    if (v5)
    {
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v6 = [a1 activeSTSCredentials];
      v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v18;
        while (2)
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v18 != v9)
            {
              objc_enumerationMutation(v6);
            }

            v11 = *(*(&v17 + 1) + 8 * i);
            v12 = [v11 identifier];
            v13 = [v3 isEqual:v12];

            if (v13)
            {
              v14 = v11;

              v4 = v14;
              goto LABEL_13;
            }
          }

          v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
          if (v8)
          {
            continue;
          }

          break;
        }
      }

LABEL_13:
    }
  }

  else
  {
    v4 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v4;
}

uint64_t sub_2653A3E00(double a1)
{
  if (!atomic_load(&unk_2800176B8))
  {
    sub_2653A3E50(a1);
  }

  return MEMORY[0x2821AA818]();
}

double sub_2653A3E2C(double result)
{
  if (!atomic_load(&unk_2800176B8))
  {
    return sub_2653A3E50(result);
  }

  return result;
}

double __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_2653A3E50(double a1)
{
  dlopen("/System/Library/PrivateFrameworks/SEService.framework/SEService", 0);
  atomic_store(1u, &unk_2800176B8);
  return a1;
}