uint64_t sub_22CFEE580(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v29[3] = type metadata accessor for StaleParticipant();
  v29[4] = &off_28402D258;
  v29[0] = a1;
  swift_beginAccess();
  v8 = *(*(a4 + 16) + 16);

  if (v8 && (, sub_22CEEC698(a2, a3), v10 = v9, , (v10 & 1) != 0))
  {
    if (qword_28143FB68 != -1)
    {
      swift_once();
    }

    v22 = sub_22D01637C();
    __swift_project_value_buffer(v22, qword_2814444C8);

    v23 = sub_22D01636C();
    v24 = sub_22D0168EC();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *&v28[0] = v26;
      *v25 = 136446210;
      *(v25 + 4) = sub_22CEEE31C(a2, a3, v28);
      _os_log_impl(&dword_22CEE1000, v23, v24, "[state-capture] identifier [%{public}s] is already in use", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v26);
      MEMORY[0x2318C6860](v26, -1, -1);
      MEMORY[0x2318C6860](v25, -1, -1);
    }

    result = sub_22D016CFC();
    __break(1u);
  }

  else
  {
    sub_22CEE3A84(v29, v28);
    v11 = swift_allocObject();
    sub_22CEF44D4(v28, v11 + 16);
    type metadata accessor for StateCaptureItem();
    v12 = swift_allocObject();
    v12[2] = 0xD000000000000010;
    v12[3] = 0x800000022D0228C0;
    v12[4] = a2;
    v12[5] = a3;
    v12[6] = sub_22CFF9010;
    v12[7] = v11;
    v13 = qword_281441AC8;

    if (v13 != -1)
    {
      swift_once();
    }

    sub_22CF67684(sub_22CFF9010, v11, 0xD000000000000010, 0x800000022D0228C0, qword_281441AD0, (v12 + 8));

    if (qword_28143FB68 != -1)
    {
      swift_once();
    }

    v14 = sub_22D01637C();
    __swift_project_value_buffer(v14, qword_2814444C8);

    v15 = sub_22D01636C();
    v16 = sub_22D01690C();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *&v28[0] = v18;
      *v17 = 136446466;
      *(v17 + 4) = sub_22CEEE31C(0xD000000000000010, 0x800000022D0228C0, v28);
      *(v17 + 12) = 2082;
      *(v17 + 14) = sub_22CEEE31C(a2, a3, v28);
      _os_log_impl(&dword_22CEE1000, v15, v16, "[state-capture] added StateCaptureItem with title: %{public}s, identifier: %{public}s", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2318C6860](v18, -1, -1);
      MEMORY[0x2318C6860](v17, -1, -1);
    }

    swift_beginAccess();

    v19 = *(a4 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = *(a4 + 16);
    *(a4 + 16) = 0x8000000000000000;
    sub_22CFBEED0(v12, a2, a3, isUniquelyReferenced_nonNull_native);

    *(a4 + 16) = v27;
    swift_endAccess();

    return __swift_destroy_boxed_opaque_existential_1Tm(v29);
  }

  return result;
}

uint64_t sub_22CFEEA38(void *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v30[3] = type metadata accessor for InputServer();
  v30[4] = &off_2840291F0;
  v30[0] = a1;
  swift_beginAccess();
  v8 = *(*(a4 + 16) + 16);
  v9 = a1;
  if (v8 && (, sub_22CEEC698(a2, a3), v11 = v10, , (v11 & 1) != 0))
  {
    if (qword_28143FB68 != -1)
    {
      swift_once();
    }

    v23 = sub_22D01637C();
    __swift_project_value_buffer(v23, qword_2814444C8);

    v24 = sub_22D01636C();
    v25 = sub_22D0168EC();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *&v29[0] = v27;
      *v26 = 136446210;
      *(v26 + 4) = sub_22CEEE31C(a2, a3, v29);
      _os_log_impl(&dword_22CEE1000, v24, v25, "[state-capture] identifier [%{public}s] is already in use", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v27);
      MEMORY[0x2318C6860](v27, -1, -1);
      MEMORY[0x2318C6860](v26, -1, -1);
    }

    result = sub_22D016CFC();
    __break(1u);
  }

  else
  {
    sub_22CEE3A84(v30, v29);
    v12 = swift_allocObject();
    sub_22CEF44D4(v29, v12 + 16);
    type metadata accessor for StateCaptureItem();
    v13 = swift_allocObject();
    v13[2] = 0x7265537475706E49;
    v13[3] = 0xEB00000000726576;
    v13[4] = a2;
    v13[5] = a3;
    v13[6] = sub_22CFF9010;
    v13[7] = v12;
    v14 = qword_281441AC8;

    if (v14 != -1)
    {
      swift_once();
    }

    sub_22CF67684(sub_22CFF9010, v12, 0x7265537475706E49, 0xEB00000000726576, qword_281441AD0, (v13 + 8));

    if (qword_28143FB68 != -1)
    {
      swift_once();
    }

    v15 = sub_22D01637C();
    __swift_project_value_buffer(v15, qword_2814444C8);

    v16 = sub_22D01636C();
    v17 = sub_22D01690C();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *&v29[0] = v19;
      *v18 = 136446466;
      *(v18 + 4) = sub_22CEEE31C(0x7265537475706E49, 0xEB00000000726576, v29);
      *(v18 + 12) = 2082;
      *(v18 + 14) = sub_22CEEE31C(a2, a3, v29);
      _os_log_impl(&dword_22CEE1000, v16, v17, "[state-capture] added StateCaptureItem with title: %{public}s, identifier: %{public}s", v18, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2318C6860](v19, -1, -1);
      MEMORY[0x2318C6860](v18, -1, -1);
    }

    swift_beginAccess();

    v20 = *(a4 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28 = *(a4 + 16);
    *(a4 + 16) = 0x8000000000000000;
    sub_22CFBEED0(v13, a2, a3, isUniquelyReferenced_nonNull_native);

    *(a4 + 16) = v28;
    swift_endAccess();

    return __swift_destroy_boxed_opaque_existential_1Tm(v30);
  }

  return result;
}

uint64_t sub_22CFEEEEC(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v29[3] = type metadata accessor for AuthorizationManager();
  v29[4] = &off_284029408;
  v29[0] = a1;
  swift_beginAccess();
  v8 = *(*(a4 + 16) + 16);

  if (v8 && (, sub_22CEEC698(a2, a3), v10 = v9, , (v10 & 1) != 0))
  {
    if (qword_28143FB68 != -1)
    {
      swift_once();
    }

    v22 = sub_22D01637C();
    __swift_project_value_buffer(v22, qword_2814444C8);

    v23 = sub_22D01636C();
    v24 = sub_22D0168EC();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *&v28[0] = v26;
      *v25 = 136446210;
      *(v25 + 4) = sub_22CEEE31C(a2, a3, v28);
      _os_log_impl(&dword_22CEE1000, v23, v24, "[state-capture] identifier [%{public}s] is already in use", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v26);
      MEMORY[0x2318C6860](v26, -1, -1);
      MEMORY[0x2318C6860](v25, -1, -1);
    }

    result = sub_22D016CFC();
    __break(1u);
  }

  else
  {
    sub_22CEE3A84(v29, v28);
    v11 = swift_allocObject();
    sub_22CEF44D4(v28, v11 + 16);
    type metadata accessor for StateCaptureItem();
    v12 = swift_allocObject();
    v12[2] = 0xD000000000000014;
    v12[3] = 0x800000022D0228E0;
    v12[4] = a2;
    v12[5] = a3;
    v12[6] = sub_22CFF9010;
    v12[7] = v11;
    v13 = qword_281441AC8;

    if (v13 != -1)
    {
      swift_once();
    }

    sub_22CF67684(sub_22CFF9010, v11, 0xD000000000000014, 0x800000022D0228E0, qword_281441AD0, (v12 + 8));

    if (qword_28143FB68 != -1)
    {
      swift_once();
    }

    v14 = sub_22D01637C();
    __swift_project_value_buffer(v14, qword_2814444C8);

    v15 = sub_22D01636C();
    v16 = sub_22D01690C();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *&v28[0] = v18;
      *v17 = 136446466;
      *(v17 + 4) = sub_22CEEE31C(0xD000000000000014, 0x800000022D0228E0, v28);
      *(v17 + 12) = 2082;
      *(v17 + 14) = sub_22CEEE31C(a2, a3, v28);
      _os_log_impl(&dword_22CEE1000, v15, v16, "[state-capture] added StateCaptureItem with title: %{public}s, identifier: %{public}s", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2318C6860](v18, -1, -1);
      MEMORY[0x2318C6860](v17, -1, -1);
    }

    swift_beginAccess();

    v19 = *(a4 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = *(a4 + 16);
    *(a4 + 16) = 0x8000000000000000;
    sub_22CFBEED0(v12, a2, a3, isUniquelyReferenced_nonNull_native);

    *(a4 + 16) = v27;
    swift_endAccess();

    return __swift_destroy_boxed_opaque_existential_1Tm(v29);
  }

  return result;
}

uint64_t sub_22CFEF3A4(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v29[3] = type metadata accessor for ActivityManager();
  v29[4] = &off_28402C2C8;
  v29[0] = a1;
  swift_beginAccess();
  v8 = *(*(a4 + 16) + 16);

  if (v8 && (, sub_22CEEC698(a2, a3), v10 = v9, , (v10 & 1) != 0))
  {
    if (qword_28143FB68 != -1)
    {
      swift_once();
    }

    v22 = sub_22D01637C();
    __swift_project_value_buffer(v22, qword_2814444C8);

    v23 = sub_22D01636C();
    v24 = sub_22D0168EC();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *&v28[0] = v26;
      *v25 = 136446210;
      *(v25 + 4) = sub_22CEEE31C(a2, a3, v28);
      _os_log_impl(&dword_22CEE1000, v23, v24, "[state-capture] identifier [%{public}s] is already in use", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v26);
      MEMORY[0x2318C6860](v26, -1, -1);
      MEMORY[0x2318C6860](v25, -1, -1);
    }

    result = sub_22D016CFC();
    __break(1u);
  }

  else
  {
    sub_22CEE3A84(v29, v28);
    v11 = swift_allocObject();
    sub_22CEF44D4(v28, v11 + 16);
    type metadata accessor for StateCaptureItem();
    v12 = swift_allocObject();
    v12[2] = 0x7974697669746341;
    v12[3] = 0xEF726567616E614DLL;
    v12[4] = a2;
    v12[5] = a3;
    v12[6] = sub_22CFF9010;
    v12[7] = v11;
    v13 = qword_281441AC8;

    if (v13 != -1)
    {
      swift_once();
    }

    sub_22CF67684(sub_22CFF9010, v11, 0x7974697669746341, 0xEF726567616E614DLL, qword_281441AD0, (v12 + 8));

    if (qword_28143FB68 != -1)
    {
      swift_once();
    }

    v14 = sub_22D01637C();
    __swift_project_value_buffer(v14, qword_2814444C8);

    v15 = sub_22D01636C();
    v16 = sub_22D01690C();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *&v28[0] = v18;
      *v17 = 136446466;
      *(v17 + 4) = sub_22CEEE31C(0x7974697669746341, 0xEF726567616E614DLL, v28);
      *(v17 + 12) = 2082;
      *(v17 + 14) = sub_22CEEE31C(a2, a3, v28);
      _os_log_impl(&dword_22CEE1000, v15, v16, "[state-capture] added StateCaptureItem with title: %{public}s, identifier: %{public}s", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2318C6860](v18, -1, -1);
      MEMORY[0x2318C6860](v17, -1, -1);
    }

    swift_beginAccess();

    v19 = *(a4 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = *(a4 + 16);
    *(a4 + 16) = 0x8000000000000000;
    sub_22CFBEED0(v12, a2, a3, isUniquelyReferenced_nonNull_native);

    *(a4 + 16) = v27;
    swift_endAccess();

    return __swift_destroy_boxed_opaque_existential_1Tm(v29);
  }

  return result;
}

uint64_t sub_22CFEF860(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v29[3] = type metadata accessor for ProcessMonitor();
  v29[4] = &off_284029838;
  v29[0] = a1;
  swift_beginAccess();
  v8 = *(*(a4 + 16) + 16);

  if (v8 && (, sub_22CEEC698(a2, a3), v10 = v9, , (v10 & 1) != 0))
  {
    if (qword_28143FB68 != -1)
    {
      swift_once();
    }

    v22 = sub_22D01637C();
    __swift_project_value_buffer(v22, qword_2814444C8);

    v23 = sub_22D01636C();
    v24 = sub_22D0168EC();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *&v28[0] = v26;
      *v25 = 136446210;
      *(v25 + 4) = sub_22CEEE31C(a2, a3, v28);
      _os_log_impl(&dword_22CEE1000, v23, v24, "[state-capture] identifier [%{public}s] is already in use", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v26);
      MEMORY[0x2318C6860](v26, -1, -1);
      MEMORY[0x2318C6860](v25, -1, -1);
    }

    result = sub_22D016CFC();
    __break(1u);
  }

  else
  {
    sub_22CEE3A84(v29, v28);
    v11 = swift_allocObject();
    sub_22CEF44D4(v28, v11 + 16);
    type metadata accessor for StateCaptureItem();
    v12 = swift_allocObject();
    strcpy((v12 + 16), "ProcessMonitor");
    *(v12 + 31) = -18;
    *(v12 + 32) = a2;
    *(v12 + 40) = a3;
    *(v12 + 48) = sub_22CFF9010;
    *(v12 + 56) = v11;
    v13 = qword_281441AC8;

    if (v13 != -1)
    {
      swift_once();
    }

    sub_22CF67684(sub_22CFF9010, v11, 0x4D737365636F7250, 0xEE00726F74696E6FLL, qword_281441AD0, v12 + 64);

    if (qword_28143FB68 != -1)
    {
      swift_once();
    }

    v14 = sub_22D01637C();
    __swift_project_value_buffer(v14, qword_2814444C8);

    v15 = sub_22D01636C();
    v16 = sub_22D01690C();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *&v28[0] = v18;
      *v17 = 136446466;
      *(v17 + 4) = sub_22CEEE31C(0x4D737365636F7250, 0xEE00726F74696E6FLL, v28);
      *(v17 + 12) = 2082;
      *(v17 + 14) = sub_22CEEE31C(a2, a3, v28);
      _os_log_impl(&dword_22CEE1000, v15, v16, "[state-capture] added StateCaptureItem with title: %{public}s, identifier: %{public}s", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2318C6860](v18, -1, -1);
      MEMORY[0x2318C6860](v17, -1, -1);
    }

    swift_beginAccess();

    v19 = *(a4 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = *(a4 + 16);
    *(a4 + 16) = 0x8000000000000000;
    sub_22CFBEED0(v12, a2, a3, isUniquelyReferenced_nonNull_native);

    *(a4 + 16) = v27;
    swift_endAccess();

    return __swift_destroy_boxed_opaque_existential_1Tm(v29);
  }

  return result;
}

uint64_t sub_22CFEFD1C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v29[3] = type metadata accessor for QoSManager();
  v29[4] = &off_28402AFD8;
  v29[0] = a1;
  swift_beginAccess();
  v8 = *(*(a4 + 16) + 16);

  if (v8 && (, sub_22CEEC698(a2, a3), v10 = v9, , (v10 & 1) != 0))
  {
    if (qword_28143FB68 != -1)
    {
      swift_once();
    }

    v22 = sub_22D01637C();
    __swift_project_value_buffer(v22, qword_2814444C8);

    v23 = sub_22D01636C();
    v24 = sub_22D0168EC();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *&v28[0] = v26;
      *v25 = 136446210;
      *(v25 + 4) = sub_22CEEE31C(a2, a3, v28);
      _os_log_impl(&dword_22CEE1000, v23, v24, "[state-capture] identifier [%{public}s] is already in use", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v26);
      MEMORY[0x2318C6860](v26, -1, -1);
      MEMORY[0x2318C6860](v25, -1, -1);
    }

    result = sub_22D016CFC();
    __break(1u);
  }

  else
  {
    sub_22CEE3A84(v29, v28);
    v11 = swift_allocObject();
    sub_22CEF44D4(v28, v11 + 16);
    type metadata accessor for StateCaptureItem();
    v12 = swift_allocObject();
    v12[2] = 0x67616E614D536F51;
    v12[3] = 0xEA00000000007265;
    v12[4] = a2;
    v12[5] = a3;
    v12[6] = sub_22CFF9010;
    v12[7] = v11;
    v13 = qword_281441AC8;

    if (v13 != -1)
    {
      swift_once();
    }

    sub_22CF67684(sub_22CFF9010, v11, 0x67616E614D536F51, 0xEA00000000007265, qword_281441AD0, (v12 + 8));

    if (qword_28143FB68 != -1)
    {
      swift_once();
    }

    v14 = sub_22D01637C();
    __swift_project_value_buffer(v14, qword_2814444C8);

    v15 = sub_22D01636C();
    v16 = sub_22D01690C();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *&v28[0] = v18;
      *v17 = 136446466;
      *(v17 + 4) = sub_22CEEE31C(0x67616E614D536F51, 0xEA00000000007265, v28);
      *(v17 + 12) = 2082;
      *(v17 + 14) = sub_22CEEE31C(a2, a3, v28);
      _os_log_impl(&dword_22CEE1000, v15, v16, "[state-capture] added StateCaptureItem with title: %{public}s, identifier: %{public}s", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2318C6860](v18, -1, -1);
      MEMORY[0x2318C6860](v17, -1, -1);
    }

    swift_beginAccess();

    v19 = *(a4 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = *(a4 + 16);
    *(a4 + 16) = 0x8000000000000000;
    sub_22CFBEED0(v12, a2, a3, isUniquelyReferenced_nonNull_native);

    *(a4 + 16) = v27;
    swift_endAccess();

    return __swift_destroy_boxed_opaque_existential_1Tm(v29);
  }

  return result;
}

uint64_t sub_22CFF01D8(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v29[3] = type metadata accessor for TaskScheduler();
  v29[4] = &off_28402BB50;
  v29[0] = a1;
  swift_beginAccess();
  v8 = *(*(a4 + 16) + 16);

  if (v8 && (, sub_22CEEC698(a2, a3), v10 = v9, , (v10 & 1) != 0))
  {
    if (qword_28143FB68 != -1)
    {
      swift_once();
    }

    v22 = sub_22D01637C();
    __swift_project_value_buffer(v22, qword_2814444C8);

    v23 = sub_22D01636C();
    v24 = sub_22D0168EC();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *&v28[0] = v26;
      *v25 = 136446210;
      *(v25 + 4) = sub_22CEEE31C(a2, a3, v28);
      _os_log_impl(&dword_22CEE1000, v23, v24, "[state-capture] identifier [%{public}s] is already in use", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v26);
      MEMORY[0x2318C6860](v26, -1, -1);
      MEMORY[0x2318C6860](v25, -1, -1);
    }

    result = sub_22D016CFC();
    __break(1u);
  }

  else
  {
    sub_22CEE3A84(v29, v28);
    v11 = swift_allocObject();
    sub_22CEF44D4(v28, v11 + 16);
    type metadata accessor for StateCaptureItem();
    v12 = swift_allocObject();
    strcpy((v12 + 16), "TaskScheduler");
    *(v12 + 30) = -4864;
    *(v12 + 32) = a2;
    *(v12 + 40) = a3;
    *(v12 + 48) = sub_22CFF9010;
    *(v12 + 56) = v11;
    v13 = qword_281441AC8;

    if (v13 != -1)
    {
      swift_once();
    }

    sub_22CF67684(sub_22CFF9010, v11, 0x656863536B736154, 0xED000072656C7564, qword_281441AD0, v12 + 64);

    if (qword_28143FB68 != -1)
    {
      swift_once();
    }

    v14 = sub_22D01637C();
    __swift_project_value_buffer(v14, qword_2814444C8);

    v15 = sub_22D01636C();
    v16 = sub_22D01690C();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *&v28[0] = v18;
      *v17 = 136446466;
      *(v17 + 4) = sub_22CEEE31C(0x656863536B736154, 0xED000072656C7564, v28);
      *(v17 + 12) = 2082;
      *(v17 + 14) = sub_22CEEE31C(a2, a3, v28);
      _os_log_impl(&dword_22CEE1000, v15, v16, "[state-capture] added StateCaptureItem with title: %{public}s, identifier: %{public}s", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2318C6860](v18, -1, -1);
      MEMORY[0x2318C6860](v17, -1, -1);
    }

    swift_beginAccess();

    v19 = *(a4 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = *(a4 + 16);
    *(a4 + 16) = 0x8000000000000000;
    sub_22CFBEED0(v12, a2, a3, isUniquelyReferenced_nonNull_native);

    *(a4 + 16) = v27;
    swift_endAccess();

    return __swift_destroy_boxed_opaque_existential_1Tm(v29);
  }

  return result;
}

uint64_t sub_22CFF0694(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v29[3] = type metadata accessor for KeepAliveParticipant();
  v29[4] = &off_28402A248;
  v29[0] = a1;
  swift_beginAccess();
  v8 = *(*(a4 + 16) + 16);

  if (v8 && (, sub_22CEEC698(a2, a3), v10 = v9, , (v10 & 1) != 0))
  {
    if (qword_28143FB68 != -1)
    {
      swift_once();
    }

    v22 = sub_22D01637C();
    __swift_project_value_buffer(v22, qword_2814444C8);

    v23 = sub_22D01636C();
    v24 = sub_22D0168EC();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *&v28[0] = v26;
      *v25 = 136446210;
      *(v25 + 4) = sub_22CEEE31C(a2, a3, v28);
      _os_log_impl(&dword_22CEE1000, v23, v24, "[state-capture] identifier [%{public}s] is already in use", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v26);
      MEMORY[0x2318C6860](v26, -1, -1);
      MEMORY[0x2318C6860](v25, -1, -1);
    }

    result = sub_22D016CFC();
    __break(1u);
  }

  else
  {
    sub_22CEE3A84(v29, v28);
    v11 = swift_allocObject();
    sub_22CEF44D4(v28, v11 + 16);
    type metadata accessor for StateCaptureItem();
    v12 = swift_allocObject();
    v12[2] = 0xD000000000000014;
    v12[3] = 0x800000022D022900;
    v12[4] = a2;
    v12[5] = a3;
    v12[6] = sub_22CFF9010;
    v12[7] = v11;
    v13 = qword_281441AC8;

    if (v13 != -1)
    {
      swift_once();
    }

    sub_22CF67684(sub_22CFF9010, v11, 0xD000000000000014, 0x800000022D022900, qword_281441AD0, (v12 + 8));

    if (qword_28143FB68 != -1)
    {
      swift_once();
    }

    v14 = sub_22D01637C();
    __swift_project_value_buffer(v14, qword_2814444C8);

    v15 = sub_22D01636C();
    v16 = sub_22D01690C();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *&v28[0] = v18;
      *v17 = 136446466;
      *(v17 + 4) = sub_22CEEE31C(0xD000000000000014, 0x800000022D022900, v28);
      *(v17 + 12) = 2082;
      *(v17 + 14) = sub_22CEEE31C(a2, a3, v28);
      _os_log_impl(&dword_22CEE1000, v15, v16, "[state-capture] added StateCaptureItem with title: %{public}s, identifier: %{public}s", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2318C6860](v18, -1, -1);
      MEMORY[0x2318C6860](v17, -1, -1);
    }

    swift_beginAccess();

    v19 = *(a4 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = *(a4 + 16);
    *(a4 + 16) = 0x8000000000000000;
    sub_22CFBEED0(v12, a2, a3, isUniquelyReferenced_nonNull_native);

    *(a4 + 16) = v27;
    swift_endAccess();

    return __swift_destroy_boxed_opaque_existential_1Tm(v29);
  }

  return result;
}

uint64_t sub_22CFF0B4C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v29[3] = type metadata accessor for DurationEnforcerParticipant();
  v29[4] = &off_28402C530;
  v29[0] = a1;
  swift_beginAccess();
  v8 = *(*(a4 + 16) + 16);

  if (v8 && (, sub_22CEEC698(a2, a3), v10 = v9, , (v10 & 1) != 0))
  {
    if (qword_28143FB68 != -1)
    {
      swift_once();
    }

    v22 = sub_22D01637C();
    __swift_project_value_buffer(v22, qword_2814444C8);

    v23 = sub_22D01636C();
    v24 = sub_22D0168EC();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *&v28[0] = v26;
      *v25 = 136446210;
      *(v25 + 4) = sub_22CEEE31C(a2, a3, v28);
      _os_log_impl(&dword_22CEE1000, v23, v24, "[state-capture] identifier [%{public}s] is already in use", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v26);
      MEMORY[0x2318C6860](v26, -1, -1);
      MEMORY[0x2318C6860](v25, -1, -1);
    }

    result = sub_22D016CFC();
    __break(1u);
  }

  else
  {
    sub_22CEE3A84(v29, v28);
    v11 = swift_allocObject();
    sub_22CEF44D4(v28, v11 + 16);
    type metadata accessor for StateCaptureItem();
    v12 = swift_allocObject();
    v12[2] = 0xD00000000000001BLL;
    v12[3] = 0x800000022D022920;
    v12[4] = a2;
    v12[5] = a3;
    v12[6] = sub_22CFF9010;
    v12[7] = v11;
    v13 = qword_281441AC8;

    if (v13 != -1)
    {
      swift_once();
    }

    sub_22CF67684(sub_22CFF9010, v11, 0xD00000000000001BLL, 0x800000022D022920, qword_281441AD0, (v12 + 8));

    if (qword_28143FB68 != -1)
    {
      swift_once();
    }

    v14 = sub_22D01637C();
    __swift_project_value_buffer(v14, qword_2814444C8);

    v15 = sub_22D01636C();
    v16 = sub_22D01690C();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *&v28[0] = v18;
      *v17 = 136446466;
      *(v17 + 4) = sub_22CEEE31C(0xD00000000000001BLL, 0x800000022D022920, v28);
      *(v17 + 12) = 2082;
      *(v17 + 14) = sub_22CEEE31C(a2, a3, v28);
      _os_log_impl(&dword_22CEE1000, v15, v16, "[state-capture] added StateCaptureItem with title: %{public}s, identifier: %{public}s", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2318C6860](v18, -1, -1);
      MEMORY[0x2318C6860](v17, -1, -1);
    }

    swift_beginAccess();

    v19 = *(a4 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = *(a4 + 16);
    *(a4 + 16) = 0x8000000000000000;
    sub_22CFBEED0(v12, a2, a3, isUniquelyReferenced_nonNull_native);

    *(a4 + 16) = v27;
    swift_endAccess();

    return __swift_destroy_boxed_opaque_existential_1Tm(v29);
  }

  return result;
}

uint64_t sub_22CFF1004(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v29[3] = type metadata accessor for DismissParticipant();
  v29[4] = &off_28402BD48;
  v29[0] = a1;
  swift_beginAccess();
  v8 = *(*(a4 + 16) + 16);

  if (v8 && (, sub_22CEEC698(a2, a3), v10 = v9, , (v10 & 1) != 0))
  {
    if (qword_28143FB68 != -1)
    {
      swift_once();
    }

    v22 = sub_22D01637C();
    __swift_project_value_buffer(v22, qword_2814444C8);

    v23 = sub_22D01636C();
    v24 = sub_22D0168EC();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *&v28[0] = v26;
      *v25 = 136446210;
      *(v25 + 4) = sub_22CEEE31C(a2, a3, v28);
      _os_log_impl(&dword_22CEE1000, v23, v24, "[state-capture] identifier [%{public}s] is already in use", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v26);
      MEMORY[0x2318C6860](v26, -1, -1);
      MEMORY[0x2318C6860](v25, -1, -1);
    }

    result = sub_22D016CFC();
    __break(1u);
  }

  else
  {
    sub_22CEE3A84(v29, v28);
    v11 = swift_allocObject();
    sub_22CEF44D4(v28, v11 + 16);
    type metadata accessor for StateCaptureItem();
    v12 = swift_allocObject();
    v12[2] = 0xD000000000000012;
    v12[3] = 0x800000022D022940;
    v12[4] = a2;
    v12[5] = a3;
    v12[6] = sub_22CFF9010;
    v12[7] = v11;
    v13 = qword_281441AC8;

    if (v13 != -1)
    {
      swift_once();
    }

    sub_22CF67684(sub_22CFF9010, v11, 0xD000000000000012, 0x800000022D022940, qword_281441AD0, (v12 + 8));

    if (qword_28143FB68 != -1)
    {
      swift_once();
    }

    v14 = sub_22D01637C();
    __swift_project_value_buffer(v14, qword_2814444C8);

    v15 = sub_22D01636C();
    v16 = sub_22D01690C();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *&v28[0] = v18;
      *v17 = 136446466;
      *(v17 + 4) = sub_22CEEE31C(0xD000000000000012, 0x800000022D022940, v28);
      *(v17 + 12) = 2082;
      *(v17 + 14) = sub_22CEEE31C(a2, a3, v28);
      _os_log_impl(&dword_22CEE1000, v15, v16, "[state-capture] added StateCaptureItem with title: %{public}s, identifier: %{public}s", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2318C6860](v18, -1, -1);
      MEMORY[0x2318C6860](v17, -1, -1);
    }

    swift_beginAccess();

    v19 = *(a4 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = *(a4 + 16);
    *(a4 + 16) = 0x8000000000000000;
    sub_22CFBEED0(v12, a2, a3, isUniquelyReferenced_nonNull_native);

    *(a4 + 16) = v27;
    swift_endAccess();

    return __swift_destroy_boxed_opaque_existential_1Tm(v29);
  }

  return result;
}

uint64_t sub_22CFF14BC(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v29[3] = type metadata accessor for PersistentParticipant();
  v29[4] = &off_28402E588;
  v29[0] = a1;
  swift_beginAccess();
  v8 = *(*(a4 + 16) + 16);

  if (v8 && (, sub_22CEEC698(a2, a3), v10 = v9, , (v10 & 1) != 0))
  {
    if (qword_28143FB68 != -1)
    {
      swift_once();
    }

    v22 = sub_22D01637C();
    __swift_project_value_buffer(v22, qword_2814444C8);

    v23 = sub_22D01636C();
    v24 = sub_22D0168EC();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *&v28[0] = v26;
      *v25 = 136446210;
      *(v25 + 4) = sub_22CEEE31C(a2, a3, v28);
      _os_log_impl(&dword_22CEE1000, v23, v24, "[state-capture] identifier [%{public}s] is already in use", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v26);
      MEMORY[0x2318C6860](v26, -1, -1);
      MEMORY[0x2318C6860](v25, -1, -1);
    }

    result = sub_22D016CFC();
    __break(1u);
  }

  else
  {
    sub_22CEE3A84(v29, v28);
    v11 = swift_allocObject();
    sub_22CEF44D4(v28, v11 + 16);
    type metadata accessor for StateCaptureItem();
    v12 = swift_allocObject();
    v12[2] = 0xD000000000000015;
    v12[3] = 0x800000022D022960;
    v12[4] = a2;
    v12[5] = a3;
    v12[6] = sub_22CFF9010;
    v12[7] = v11;
    v13 = qword_281441AC8;

    if (v13 != -1)
    {
      swift_once();
    }

    sub_22CF67684(sub_22CFF9010, v11, 0xD000000000000015, 0x800000022D022960, qword_281441AD0, (v12 + 8));

    if (qword_28143FB68 != -1)
    {
      swift_once();
    }

    v14 = sub_22D01637C();
    __swift_project_value_buffer(v14, qword_2814444C8);

    v15 = sub_22D01636C();
    v16 = sub_22D01690C();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *&v28[0] = v18;
      *v17 = 136446466;
      *(v17 + 4) = sub_22CEEE31C(0xD000000000000015, 0x800000022D022960, v28);
      *(v17 + 12) = 2082;
      *(v17 + 14) = sub_22CEEE31C(a2, a3, v28);
      _os_log_impl(&dword_22CEE1000, v15, v16, "[state-capture] added StateCaptureItem with title: %{public}s, identifier: %{public}s", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2318C6860](v18, -1, -1);
      MEMORY[0x2318C6860](v17, -1, -1);
    }

    swift_beginAccess();

    v19 = *(a4 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = *(a4 + 16);
    *(a4 + 16) = 0x8000000000000000;
    sub_22CFBEED0(v12, a2, a3, isUniquelyReferenced_nonNull_native);

    *(a4 + 16) = v27;
    swift_endAccess();

    return __swift_destroy_boxed_opaque_existential_1Tm(v29);
  }

  return result;
}

uint64_t sub_22CFF1974(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v29[3] = type metadata accessor for PushParticipant();
  v29[4] = &off_28402B958;
  v29[0] = a1;
  swift_beginAccess();
  v8 = *(*(a4 + 16) + 16);

  if (v8 && (, sub_22CEEC698(a2, a3), v10 = v9, , (v10 & 1) != 0))
  {
    if (qword_28143FB68 != -1)
    {
      swift_once();
    }

    v22 = sub_22D01637C();
    __swift_project_value_buffer(v22, qword_2814444C8);

    v23 = sub_22D01636C();
    v24 = sub_22D0168EC();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *&v28[0] = v26;
      *v25 = 136446210;
      *(v25 + 4) = sub_22CEEE31C(a2, a3, v28);
      _os_log_impl(&dword_22CEE1000, v23, v24, "[state-capture] identifier [%{public}s] is already in use", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v26);
      MEMORY[0x2318C6860](v26, -1, -1);
      MEMORY[0x2318C6860](v25, -1, -1);
    }

    result = sub_22D016CFC();
    __break(1u);
  }

  else
  {
    sub_22CEE3A84(v29, v28);
    v11 = swift_allocObject();
    sub_22CEF44D4(v28, v11 + 16);
    type metadata accessor for StateCaptureItem();
    v12 = swift_allocObject();
    v12[2] = 0x7472615068737550;
    v12[3] = 0xEF746E6170696369;
    v12[4] = a2;
    v12[5] = a3;
    v12[6] = sub_22CFF9010;
    v12[7] = v11;
    v13 = qword_281441AC8;

    if (v13 != -1)
    {
      swift_once();
    }

    sub_22CF67684(sub_22CFF9010, v11, 0x7472615068737550, 0xEF746E6170696369, qword_281441AD0, (v12 + 8));

    if (qword_28143FB68 != -1)
    {
      swift_once();
    }

    v14 = sub_22D01637C();
    __swift_project_value_buffer(v14, qword_2814444C8);

    v15 = sub_22D01636C();
    v16 = sub_22D01690C();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *&v28[0] = v18;
      *v17 = 136446466;
      *(v17 + 4) = sub_22CEEE31C(0x7472615068737550, 0xEF746E6170696369, v28);
      *(v17 + 12) = 2082;
      *(v17 + 14) = sub_22CEEE31C(a2, a3, v28);
      _os_log_impl(&dword_22CEE1000, v15, v16, "[state-capture] added StateCaptureItem with title: %{public}s, identifier: %{public}s", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2318C6860](v18, -1, -1);
      MEMORY[0x2318C6860](v17, -1, -1);
    }

    swift_beginAccess();

    v19 = *(a4 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = *(a4 + 16);
    *(a4 + 16) = 0x8000000000000000;
    sub_22CFBEED0(v12, a2, a3, isUniquelyReferenced_nonNull_native);

    *(a4 + 16) = v27;
    swift_endAccess();

    return __swift_destroy_boxed_opaque_existential_1Tm(v29);
  }

  return result;
}

uint64_t sub_22CFF1E30(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v29[3] = type metadata accessor for AssertionManager();
  v29[4] = &off_284029CC0;
  v29[0] = a1;
  swift_beginAccess();
  v8 = *(*(a4 + 16) + 16);

  if (v8 && (, sub_22CEEC698(a2, a3), v10 = v9, , (v10 & 1) != 0))
  {
    if (qword_28143FB68 != -1)
    {
      swift_once();
    }

    v22 = sub_22D01637C();
    __swift_project_value_buffer(v22, qword_2814444C8);

    v23 = sub_22D01636C();
    v24 = sub_22D0168EC();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *&v28[0] = v26;
      *v25 = 136446210;
      *(v25 + 4) = sub_22CEEE31C(a2, a3, v28);
      _os_log_impl(&dword_22CEE1000, v23, v24, "[state-capture] identifier [%{public}s] is already in use", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v26);
      MEMORY[0x2318C6860](v26, -1, -1);
      MEMORY[0x2318C6860](v25, -1, -1);
    }

    result = sub_22D016CFC();
    __break(1u);
  }

  else
  {
    sub_22CEE3A84(v29, v28);
    v11 = swift_allocObject();
    sub_22CEF44D4(v28, v11 + 16);
    type metadata accessor for StateCaptureItem();
    v12 = swift_allocObject();
    v12[2] = 0xD000000000000010;
    v12[3] = 0x800000022D022980;
    v12[4] = a2;
    v12[5] = a3;
    v12[6] = sub_22CFF9010;
    v12[7] = v11;
    v13 = qword_281441AC8;

    if (v13 != -1)
    {
      swift_once();
    }

    sub_22CF67684(sub_22CFF9010, v11, 0xD000000000000010, 0x800000022D022980, qword_281441AD0, (v12 + 8));

    if (qword_28143FB68 != -1)
    {
      swift_once();
    }

    v14 = sub_22D01637C();
    __swift_project_value_buffer(v14, qword_2814444C8);

    v15 = sub_22D01636C();
    v16 = sub_22D01690C();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *&v28[0] = v18;
      *v17 = 136446466;
      *(v17 + 4) = sub_22CEEE31C(0xD000000000000010, 0x800000022D022980, v28);
      *(v17 + 12) = 2082;
      *(v17 + 14) = sub_22CEEE31C(a2, a3, v28);
      _os_log_impl(&dword_22CEE1000, v15, v16, "[state-capture] added StateCaptureItem with title: %{public}s, identifier: %{public}s", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2318C6860](v18, -1, -1);
      MEMORY[0x2318C6860](v17, -1, -1);
    }

    swift_beginAccess();

    v19 = *(a4 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = *(a4 + 16);
    *(a4 + 16) = 0x8000000000000000;
    sub_22CFBEED0(v12, a2, a3, isUniquelyReferenced_nonNull_native);

    *(a4 + 16) = v27;
    swift_endAccess();

    return __swift_destroy_boxed_opaque_existential_1Tm(v29);
  }

  return result;
}

uint64_t sub_22CFF22E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v52 = a2;
  v54 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3B38, qword_22D01C440);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v53 = v47 - v8;
  v49 = sub_22D01697C();
  v9 = *(v49 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v49, v11);
  v13 = v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22D01691C();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14, v16);
  v17 = sub_22D01653C();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8, v19);
  v59[3] = type metadata accessor for PersistentActivityStore();
  v59[4] = &off_28402CB48;
  v59[0] = a1;
  v50 = sub_22CEEC38C();
  v48 = "AssertionManager";
  sub_22D0164EC();
  *&v55 = MEMORY[0x277D84F90];
  v47[3] = sub_22CFF8F4C(&qword_28143FA20, MEMORY[0x277D85230]);
  v47[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3990, &unk_22D0189A0);
  sub_22CEE8394(&qword_28143FA40, &unk_27D9F3990, &unk_22D0189A0);
  sub_22D016ADC();
  v20 = *MEMORY[0x277D85260];
  v21 = v9 + 104;
  v22 = *(v9 + 104);
  v47[1] = v21;
  v47[0] = v13;
  v23 = v49;
  v22(v13, v20, v49);
  v24 = sub_22D0169BC();
  v25 = v51;
  *(v51 + 16) = v24;
  v48 = "atorParticipant.internal";
  sub_22D0164EC();
  *&v55 = MEMORY[0x277D84F90];
  sub_22D016ADC();
  v22(v47[0], v20, v23);
  v26 = v52;
  v27 = sub_22D0169BC();
  v28 = v25;
  *(v25 + 136) = 0u;
  v29 = v25 + 136;
  *(v29 - 112) = v27;
  *(v29 + 16) = 0u;
  *(v29 + 32) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3B60, &qword_22D01C638);
  v30 = swift_allocObject();
  *(v30 + 16) = 0;
  *(v29 + 40) = v30;
  *(v29 + 56) = 0;
  swift_unknownObjectWeakInit();
  v31 = MEMORY[0x277D84F98];
  *(v29 + 64) = MEMORY[0x277D84F98];
  *(v29 + 72) = v31;
  *(v29 + 80) = v31;
  *(v29 + 88) = 0;
  sub_22CEE3A84(v59, v29 - 40);
  if (*(v26 + 24))
  {
    sub_22CEEB6DC(v26, &v55, &qword_27D9F2E28, &unk_22D01A838);
  }

  else
  {
    v35 = sub_22D01591C();
    v36 = *(v35 + 48);
    v37 = *(v35 + 52);
    swift_allocObject();
    v38 = sub_22D01590C();
    *&v57 = MEMORY[0x277D466F8];
    *(&v57 + 1) = MEMORY[0x277D466B0];
    *&v58 = MEMORY[0x277D46690];
    *(&v58 + 1) = MEMORY[0x277D466B8];
    *(&v56 + 1) = v35;
    *&v55 = v38;
  }

  v32 = v54;
  v33 = v56;
  *(v28 + 32) = v55;
  *(v28 + 48) = v33;
  v34 = v58;
  *(v28 + 64) = v57;
  *(v28 + 80) = v34;
  swift_beginAccess();
  sub_22CFF8DDC(v32, v29);
  swift_endAccess();
  v39 = sub_22D0150DC();
  (*(*(v39 - 8) + 56))(v53, 1, 1, v39);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2EF0, &unk_22D01A8C0);
  v41 = *(v40 + 48);
  v42 = *(v40 + 52);
  swift_allocObject();
  *(v28 + 232) = sub_22D01644C();
  swift_beginAccess();
  v43 = *(v28 + 160);
  if (v43)
  {
    v44 = *(v28 + 168);
    __swift_mutable_project_boxed_opaque_existential_1(v29, *(v28 + 160));
    v45 = *(v44 + 24);

    v45(sub_22CFF8E4C, v28, v43, v44);
  }

  swift_endAccess();
  sub_22CEEC3D8(v32, &qword_27D9F2E40, &qword_22D01A858);
  __swift_destroy_boxed_opaque_existential_1Tm(v59);
  sub_22CEEC3D8(v26, &qword_27D9F2E28, &unk_22D01A838);
  return v28;
}

uint64_t sub_22CFF29E0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v26 = a3;
  v25 = *&a2;
  v6 = sub_22D01697C();
  v23 = *(v6 - 8);
  v24 = v6;
  v7 = *(v23 + 64);
  MEMORY[0x28223BE20](v6, v8);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22D01691C();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11, v13);
  v14 = sub_22D01653C();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8, v16);
  v29 = type metadata accessor for TaskScheduler();
  v30 = sub_22CFF8F4C(&qword_28143F548, type metadata accessor for TaskScheduler);
  *&v28 = a1;
  type metadata accessor for UnfairLock();
  v17 = swift_allocObject();
  v18 = swift_slowAlloc();
  *(v17 + 16) = v18;
  *v18 = 0;
  *(a4 + 16) = v17;
  v22[1] = sub_22CEEC38C();
  sub_22D0164EC();
  v27 = MEMORY[0x277D84F90];
  sub_22CFF8F4C(&qword_28143FA20, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3990, &unk_22D0189A0);
  sub_22CEE8394(&qword_28143FA40, &unk_27D9F3990, &unk_22D0189A0);
  sub_22D016ADC();
  (*(v23 + 104))(v10, *MEMORY[0x277D85260], v24);
  *(a4 + 72) = sub_22D0169BC();
  *(a4 + 80) = 0u;
  *(a4 + 96) = 0u;
  v19 = MEMORY[0x277D84F98];
  *(a4 + 112) = 0;
  *(a4 + 120) = v19;
  *(a4 + 136) = 0;
  swift_unknownObjectWeakInit();
  sub_22CEF44D4(&v28, a4 + 24);
  v20 = v25;
  if (v26)
  {
    v20 = 120.0;
  }

  *(a4 + 64) = v20;
  return a4;
}

void *sub_22CFF2D14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3BB8, &qword_22D01C7B8);
  v58 = *(v57 - 8);
  v12 = *(v58 + 64);
  MEMORY[0x28223BE20](v57, v13);
  v56 = &v46 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3670, &qword_22D01BF00);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8, v17);
  v51 = &v46 - v18;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3BC0, &qword_22D01C7C0);
  v55 = *(v54 - 8);
  v19 = *(v55 + 64);
  MEMORY[0x28223BE20](v54, v20);
  v52 = &v46 - v21;
  v49 = sub_22D01697C();
  v48 = *(v49 - 1);
  v22 = *(v48 + 64);
  MEMORY[0x28223BE20](v49, v23);
  v47 = &v46 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_22D01691C();
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25, v27);
  v28 = sub_22D01653C();
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28 - 8, v30);
  v50 = sub_22D015EDC();
  v66[3] = v50;
  v66[4] = MEMORY[0x277D4D608];
  v66[0] = a1;
  v65[3] = sub_22D015FFC();
  v65[4] = MEMORY[0x277D4D628];
  v65[0] = a2;
  v53 = type metadata accessor for QoSManager();
  v64[3] = v53;
  v64[4] = &off_28402AFF0;
  v64[0] = a3;
  v63[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3B70, &qword_22D01C648);
  v63[4] = &off_28402E860;
  v63[0] = a5;
  v31 = type metadata accessor for AuthorizationManager();
  v62[4] = &off_284029420;
  v62[3] = v31;
  v62[0] = a4;
  a6[3] = 0;
  swift_unknownObjectWeakInit();
  v59 = sub_22CEEC38C();
  sub_22D0164EC();
  v60 = MEMORY[0x277D84F90];
  sub_22CFF8F4C(&qword_28143FA20, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3990, &unk_22D0189A0);
  sub_22CEE8394(&qword_28143FA40, &unk_27D9F3990, &unk_22D0189A0);
  sub_22D016ADC();
  (*(v48 + 104))(v47, *MEMORY[0x277D85260], v49);
  a6[4] = sub_22D0169BC();
  type metadata accessor for UnfairLock();
  v32 = swift_allocObject();
  v33 = swift_slowAlloc();
  *(v32 + 16) = v33;
  *v33 = 0;
  a6[5] = v32;
  a6[31] = MEMORY[0x277D84FA0];
  sub_22CEE3A84(v66, (a6 + 6));
  sub_22CEE3A84(v65, (a6 + 11));
  sub_22CEE3A84(v64, (a6 + 16));
  sub_22CEE3A84(v62, (a6 + 21));
  sub_22CEE3A84(v63, (a6 + 26));
  v60 = sub_22D015C9C();
  v61 = a6[4];
  v34 = v61;
  v35 = sub_22D01693C();
  v36 = *(v35 - 8);
  v49 = *(v36 + 56);
  v50 = v36 + 56;
  v37 = v51;
  v49(v51, 1, 1, v35);
  v38 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3BC8, &qword_22D01C7C8);
  v48 = MEMORY[0x277CBCD90];
  sub_22CEE8394(&qword_28143FAC0, &qword_27D9F3BC8, &qword_22D01C7C8);
  v47 = sub_22CFF8F4C(&qword_28143FA10, sub_22CEEC38C);
  v39 = v52;
  sub_22D01647C();
  sub_22CEEC3D8(v37, &qword_27D9F3670, &qword_22D01BF00);

  swift_allocObject();
  swift_weakInit();
  sub_22CEE8394(&unk_28143FAD8, &qword_27D9F3BC0, &qword_22D01C7C0);

  v40 = v54;
  sub_22D0164AC();

  (*(v55 + 8))(v39, v40);
  swift_beginAccess();
  sub_22D0163EC();
  swift_endAccess();

  v60 = off_28402AFF8();
  v61 = a6[4];
  v41 = v61;
  v49(v37, 1, 1, v35);
  v42 = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3BD0, &qword_22D01C7D0);
  sub_22CEE8394(&qword_28143FAB8, &qword_27D9F3BD0, &qword_22D01C7D0);
  v43 = v56;
  sub_22D01647C();
  sub_22CEEC3D8(v37, &qword_27D9F3670, &qword_22D01BF00);

  swift_allocObject();
  swift_weakInit();

  sub_22CEE8394(&qword_28143FAD0, &qword_27D9F3BB8, &qword_22D01C7B8);
  v44 = v57;
  sub_22D0164AC();

  (*(v58 + 8))(v43, v44);
  swift_beginAccess();
  sub_22D0163EC();
  swift_endAccess();

  __swift_destroy_boxed_opaque_existential_1Tm(v63);
  __swift_destroy_boxed_opaque_existential_1Tm(v65);
  __swift_destroy_boxed_opaque_existential_1Tm(v62);
  __swift_destroy_boxed_opaque_existential_1Tm(v64);
  __swift_destroy_boxed_opaque_existential_1Tm(v66);
  return a6;
}

void *sub_22CFF36C8(uint64_t a1, uint64_t a2, void *a3)
{
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3BD8, &qword_22D01C7D8);
  v60 = *(v59 - 8);
  v6 = *(v60 + 64);
  MEMORY[0x28223BE20](v59, v7);
  v58 = &v52 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3670, &qword_22D01BF00);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v53 = &v52 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3BE0, &qword_22D01C7E0);
  v14 = *(v13 - 8);
  v67 = v13;
  v68 = v14;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13, v16);
  v62 = &v52 - v17;
  v66 = sub_22D01697C();
  v18 = *(v66 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v66, v20);
  v22 = &v52 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_22D01691C();
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23, v25);
  v26 = sub_22D01653C();
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26 - 8, v28);
  v72[3] = type metadata accessor for PersistentActivityStore();
  v72[4] = &off_28402CB48;
  v72[0] = a2;
  v71[3] = type metadata accessor for AppEventObserver();
  v71[4] = &off_28402BFA0;
  v71[0] = a1;
  a3[3] = 0;
  swift_unknownObjectWeakInit();
  v61 = sub_22CEEC38C();
  v65 = "ncore.PushParticipant.internal";
  sub_22D01651C();
  v69 = MEMORY[0x277D84F90];
  sub_22CFF8F4C(&qword_28143FA20, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3990, &unk_22D0189A0);
  sub_22CEE8394(&qword_28143FA40, &unk_27D9F3990, &unk_22D0189A0);
  sub_22D016ADC();
  (*(v18 + 104))(v22, *MEMORY[0x277D85268], v66);
  a3[14] = sub_22D0169BC();
  a3[15] = MEMORY[0x277D84FA0];
  sub_22CEE3A84(v72, (a3 + 4));
  sub_22CEE3A84(v71, (a3 + 9));
  v29 = *__swift_project_boxed_opaque_existential_1(a3 + 9, a3[12]);
  v69 = sub_22CFC4AB0();
  v70 = a3[14];
  v30 = v70;
  v65 = sub_22D01693C();
  v31 = *(v65 - 1);
  v64 = *(v31 + 56);
  v66 = v31 + 56;
  v32 = v53;
  v64(v53, 1, 1, v65);
  v33 = v30;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3BE8, &qword_22D01C7E8);
  v52 = MEMORY[0x277CBCD90];
  v56 = sub_22CEE8394(&qword_28143FAA8, &qword_27D9F3BE8, &qword_22D01C7E8);
  v63 = sub_22CFF8F4C(&qword_28143FA10, sub_22CEEC38C);
  v34 = v62;
  sub_22D01647C();
  sub_22CEEC3D8(v32, &qword_27D9F3670, &qword_22D01BF00);

  swift_allocObject();
  swift_weakInit();
  v55 = sub_22CEE8394(&qword_28143FAC8, &qword_27D9F3BE0, &qword_22D01C7E0);

  v35 = v67;
  sub_22D0164AC();

  v36 = *(v68 + 8);
  v68 += 8;
  v54 = v36;
  v36(v34, v35);
  swift_beginAccess();
  sub_22D0163EC();
  swift_endAccess();

  v37 = *__swift_project_boxed_opaque_existential_1(a3 + 9, a3[12]);
  v69 = sub_22CFC4B98();
  v70 = a3[14];
  v38 = v70;
  v39 = v32;
  v64(v32, 1, 1, v65);
  v40 = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3BF0, &qword_22D01C7F0);
  sub_22CEE8394(&unk_28143D9B8, &qword_27D9F3BF0, &qword_22D01C7F0);
  v41 = v58;
  sub_22D01647C();
  sub_22CEEC3D8(v39, &qword_27D9F3670, &qword_22D01BF00);

  v42 = swift_allocObject();
  swift_weakInit();
  v43 = swift_allocObject();
  *(v43 + 16) = sub_22CFF8E74;
  *(v43 + 24) = v42;
  sub_22CEE8394(&qword_28143DA00, &qword_27D9F3BD8, &qword_22D01C7D8);
  v44 = v59;
  sub_22D0164AC();

  (*(v60 + 8))(v41, v44);
  swift_beginAccess();
  sub_22D0163EC();
  swift_endAccess();

  v45 = *__swift_project_boxed_opaque_existential_1(a3 + 9, a3[12]);
  v69 = sub_22CFC4A9C();
  v70 = a3[14];
  v46 = v70;
  v47 = v39;
  v64(v39, 1, 1, v65);
  v48 = v46;
  v49 = v62;
  sub_22D01647C();
  sub_22CEEC3D8(v47, &qword_27D9F3670, &qword_22D01BF00);

  swift_allocObject();
  swift_weakInit();

  v50 = v67;
  sub_22D0164AC();

  v54(v49, v50);
  swift_beginAccess();
  sub_22D0163EC();
  swift_endAccess();

  __swift_destroy_boxed_opaque_existential_1Tm(v72);
  __swift_destroy_boxed_opaque_existential_1Tm(v71);
  return a3;
}

uint64_t sub_22CFF40BC(uint64_t a1, uint64_t a2, double a3)
{
  v6 = sub_22D01697C();
  v22 = *(v6 - 8);
  v23 = v6;
  v7 = *(v22 + 64);
  MEMORY[0x28223BE20](v6, v8);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22D01691C();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11, v13);
  v14 = sub_22D01653C();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8, v16);
  v26 = type metadata accessor for TaskScheduler();
  v27 = sub_22CFF8F4C(&qword_28143F548, type metadata accessor for TaskScheduler);
  *&v25 = a1;
  type metadata accessor for UnfairLock();
  v17 = swift_allocObject();
  v18 = swift_slowAlloc();
  *(v17 + 16) = v18;
  *v18 = 0;
  *(a2 + 16) = v17;
  v21[1] = sub_22CEEC38C();
  sub_22D0164EC();
  v24 = MEMORY[0x277D84F90];
  sub_22CFF8F4C(&qword_28143FA20, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3990, &unk_22D0189A0);
  sub_22CEE8394(&qword_28143FA40, &unk_27D9F3990, &unk_22D0189A0);
  sub_22D016ADC();
  (*(v22 + 104))(v10, *MEMORY[0x277D85260], v23);
  *(a2 + 72) = sub_22D0169BC();
  *(a2 + 80) = 0u;
  *(a2 + 96) = 0u;
  v19 = MEMORY[0x277D84F98];
  *(a2 + 112) = 0;
  *(a2 + 120) = v19;
  *(a2 + 136) = 0;
  swift_unknownObjectWeakInit();
  sub_22CEF44D4(&v25, a2 + 24);
  *(a2 + 64) = a3;
  return a2;
}

uint64_t sub_22CFF43DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_22D01697C();
  v20 = *(v4 - 8);
  v21 = v4;
  v5 = *(v20 + 64);
  MEMORY[0x28223BE20](v4, v6);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22D01691C();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9, v11);
  v12 = sub_22D01653C();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8, v14);
  v24 = type metadata accessor for TaskScheduler();
  v25 = sub_22CFF8F4C(&qword_28143F548, type metadata accessor for TaskScheduler);
  *&v23 = a1;
  type metadata accessor for UnfairLock();
  v15 = swift_allocObject();
  v16 = swift_slowAlloc();
  *(v15 + 16) = v16;
  *v16 = 0;
  *(a2 + 16) = v15;
  v19[1] = sub_22CEEC38C();
  sub_22D0164EC();
  v22 = MEMORY[0x277D84F90];
  sub_22CFF8F4C(&qword_28143FA20, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3990, &unk_22D0189A0);
  sub_22CEE8394(&qword_28143FA40, &unk_27D9F3990, &unk_22D0189A0);
  sub_22D016ADC();
  (*(v20 + 104))(v8, *MEMORY[0x277D85260], v21);
  *(a2 + 64) = sub_22D0169BC();
  *(a2 + 72) = 0u;
  *(a2 + 88) = 0u;
  v17 = MEMORY[0x277D84F98];
  *(a2 + 104) = 0;
  *(a2 + 112) = v17;
  *(a2 + 128) = 0;
  swift_unknownObjectWeakInit();
  sub_22CEF44D4(&v23, a2 + 24);
  return a2;
}

void *sub_22CFF46F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v12 = sub_22D0164CC();
  v13 = *(v12 - 8);
  v94 = v12;
  v95 = v13;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12, v15);
  v93 = v81 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F4070, &unk_22D01D5D0);
  v18 = *(v17 - 8);
  v89 = v17;
  v90 = v18;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17, v20);
  v87 = v81 - v21;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3BD8, &qword_22D01C7D8);
  v106 = *(v100 - 8);
  v22 = *(v106 + 64);
  MEMORY[0x28223BE20](v100, v23);
  v99 = v81 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3670, &qword_22D01BF00);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8, v27);
  v83 = v81 - v28;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3BE0, &qword_22D01C7E0);
  v105 = *(v85 - 8);
  v29 = *(v105 + 64);
  MEMORY[0x28223BE20](v85, v30);
  v84 = v81 - v31;
  v107 = sub_22D01697C();
  v104 = *(v107 - 8);
  v32 = *(v104 + 8);
  MEMORY[0x28223BE20](v107, v33);
  v103 = v81 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_22D01691C();
  v36 = *(*(v35 - 8) + 64);
  MEMORY[0x28223BE20](v35, v37);
  v38 = sub_22D01653C();
  v91 = *(v38 - 8);
  v92 = v38;
  v39 = *(v91 + 64);
  MEMORY[0x28223BE20](v38, v40);
  v42 = v81 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114[3] = sub_22D015EDC();
  v114[4] = MEMORY[0x277D4D608];
  v114[0] = a2;
  v113[3] = type metadata accessor for AppEventObserver();
  v113[4] = &off_28402BFA0;
  v113[0] = a1;
  v112[3] = type metadata accessor for PushToStartAppBundleIDProvider();
  v112[4] = &off_28402D240;
  v112[0] = a3;
  v111[3] = type metadata accessor for AuthorizationManager();
  v111[4] = &off_284029420;
  v111[0] = a4;
  v110[3] = type metadata accessor for KnownClientStore();
  v110[4] = &off_28402C270;
  v110[0] = a5;
  v101 = sub_22CEEC38C();
  v86 = v42;
  sub_22D01651C();
  v108[0] = MEMORY[0x277D84F90];
  sub_22CFF8F4C(&qword_28143FA20, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3990, &unk_22D0189A0);
  v88 = MEMORY[0x277D83970];
  sub_22CEE8394(&qword_28143FA40, &unk_27D9F3990, &unk_22D0189A0);
  sub_22D016ADC();
  (*(v104 + 13))(v103, *MEMORY[0x277D85268], v107);
  a6[27] = sub_22D0169BC();
  a6[28] = MEMORY[0x277D84FA0];
  v102 = a6 + 28;
  sub_22CEE3A84(v113, (a6 + 2));
  sub_22CEE3A84(v114, (a6 + 7));
  sub_22CEE3A84(v112, (a6 + 12));
  sub_22CEE3A84(v111, (a6 + 17));
  sub_22CEE3A84(v110, (a6 + 22));
  v43 = *__swift_project_boxed_opaque_existential_1(a6 + 2, a6[5]);
  v108[0] = sub_22CFC4A9C();
  v109 = a6[27];
  v44 = v109;
  v107 = sub_22D01693C();
  v45 = *(v107 - 8);
  v46 = *(v45 + 56);
  v103 = (v45 + 56);
  v104 = v46;
  v47 = v83;
  v46(v83, 1, 1, v107);
  v48 = v44;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3BE8, &qword_22D01C7E8);
  v98 = MEMORY[0x277CBCD90];
  v81[2] = sub_22CEE8394(&qword_28143FAA8, &qword_27D9F3BE8, &qword_22D01C7E8);
  v96 = sub_22CFF8F4C(&qword_28143FA10, sub_22CEEC38C);
  v49 = v84;
  sub_22D01647C();
  sub_22CEEC3D8(v47, &qword_27D9F3670, &qword_22D01BF00);

  swift_allocObject();
  swift_weakInit();
  v97 = MEMORY[0x277CBCD60];
  v81[1] = sub_22CEE8394(&qword_28143FAC8, &qword_27D9F3BE0, &qword_22D01C7E0);

  v50 = v85;
  sub_22D0164AC();

  v51 = *(v105 + 8);
  v105 += 8;
  v81[0] = v51;
  v52 = v49;
  v51(v49, v50);
  swift_beginAccess();
  sub_22D0163EC();
  swift_endAccess();

  v53 = *__swift_project_boxed_opaque_existential_1(a6 + 2, a6[5]);
  v108[0] = sub_22CFC4AB0();
  v109 = a6[27];
  v54 = v109;
  v55 = v104;
  v104(v47, 1, 1, v107);
  v56 = v54;
  sub_22D01647C();
  sub_22CEEC3D8(v47, &qword_27D9F3670, &qword_22D01BF00);

  swift_allocObject();
  swift_weakInit();
  sub_22D0164AC();

  (v81[0])(v52, v50);
  swift_beginAccess();
  sub_22D0163EC();
  swift_endAccess();

  v57 = *__swift_project_boxed_opaque_existential_1(a6 + 2, a6[5]);
  v108[0] = sub_22CFC4B98();
  v109 = a6[27];
  v58 = v109;
  v55(v47, 1, 1, v107);
  v59 = v58;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3BF0, &qword_22D01C7F0);
  v105 = sub_22CEE8394(&unk_28143D9B8, &qword_27D9F3BF0, &qword_22D01C7F0);
  v60 = v99;
  sub_22D01647C();
  sub_22CEEC3D8(v47, &qword_27D9F3670, &qword_22D01BF00);

  v61 = swift_allocObject();
  swift_weakInit();
  v62 = swift_allocObject();
  *(v62 + 16) = sub_22CFF8EEC;
  *(v62 + 24) = v61;
  v84 = sub_22CEE8394(&qword_28143DA00, &qword_27D9F3BD8, &qword_22D01C7D8);
  v63 = v100;
  sub_22D0164AC();

  v64 = *(v106 + 8);
  v106 += 8;
  v82 = v64;
  v64(v60, v63);
  swift_beginAccess();
  sub_22D0163EC();
  swift_endAccess();

  v65 = *__swift_project_boxed_opaque_existential_1(a6 + 17, a6[20]);
  v108[0] = sub_22CF46328();
  v109 = a6[27];
  v66 = v109;
  v104(v47, 1, 1, v107);
  v67 = v66;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F4080, &qword_22D01C7B0);
  sub_22CEE8394(&qword_28143D9E0, &unk_27D9F4080, &qword_22D01C7B0);
  v68 = v87;
  sub_22D01647C();
  sub_22CEEC3D8(v47, &qword_27D9F3670, &qword_22D01BF00);

  swift_allocObject();
  swift_weakInit();
  sub_22CEE8394(&qword_28143DA28, &unk_27D9F4070, &unk_22D01D5D0);
  v69 = v89;
  sub_22D0164AC();

  (*(v90 + 8))(v68, v69);
  swift_beginAccess();
  sub_22D0163EC();
  swift_endAccess();

  v70 = *__swift_project_boxed_opaque_existential_1(a6 + 22, a6[25]);
  v108[0] = sub_22CFCBD78();
  v109 = a6[27];
  v71 = v109;
  v104(v47, 1, 1, v107);
  v72 = v71;
  v73 = v99;
  sub_22D01647C();
  sub_22CEEC3D8(v47, &qword_27D9F3670, &qword_22D01BF00);

  swift_allocObject();
  swift_weakInit();

  v74 = v100;
  sub_22D0164AC();

  v82(v73, v74);
  swift_beginAccess();
  sub_22D0163EC();
  swift_endAccess();

  v75 = a6[27];
  v108[4] = sub_22CFF8EFC;
  v108[5] = a6;
  v108[0] = MEMORY[0x277D85DD0];
  v108[1] = 1107296256;
  v108[2] = sub_22CEF8B58;
  v108[3] = &block_descriptor_308;
  v76 = _Block_copy(v108);

  v77 = v86;
  sub_22D0164EC();
  v109 = MEMORY[0x277D84F90];
  sub_22CFF8F4C(&qword_28143FA60, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F2FE0, &qword_22D018B70);
  sub_22CEE8394(&qword_28143FA50, &unk_27D9F2FE0, &qword_22D018B70);
  v79 = v93;
  v78 = v94;
  sub_22D016ADC();
  MEMORY[0x2318C5B10](0, v77, v79, v76);
  _Block_release(v76);
  (*(v95 + 8))(v79, v78);
  (*(v91 + 8))(v77, v92);
  __swift_destroy_boxed_opaque_existential_1Tm(v114);
  __swift_destroy_boxed_opaque_existential_1Tm(v110);
  __swift_destroy_boxed_opaque_existential_1Tm(v111);
  __swift_destroy_boxed_opaque_existential_1Tm(v112);
  __swift_destroy_boxed_opaque_existential_1Tm(v113);

  return a6;
}

uint64_t sub_22CFF56A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22D01697C();
  v21 = *(v6 - 8);
  v22 = v6;
  v7 = *(v21 + 64);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22D01691C();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11, v13);
  v14 = sub_22D01653C();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8, v16);
  v28 = type metadata accessor for ProcessMonitor();
  v29 = &off_284029850;
  *&v27 = a1;
  v25 = type metadata accessor for KnownClientStore();
  v26 = &off_28402C270;
  *&v24 = a2;
  type metadata accessor for UnfairLock();
  v17 = swift_allocObject();
  v18 = swift_slowAlloc();
  *(v17 + 16) = v18;
  *v18 = 0;
  *(a3 + 96) = v17;
  v20 = sub_22CEEC38C();
  sub_22D0164EC();
  v23 = MEMORY[0x277D84F90];
  sub_22CFF8F4C(&qword_28143FA20, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3990, &unk_22D0189A0);
  sub_22CEE8394(&qword_28143FA40, &unk_27D9F3990, &unk_22D0189A0);
  sub_22D016ADC();
  (*(v21 + 104))(v10, *MEMORY[0x277D85260], v22);
  *(a3 + 104) = sub_22D0169BC();
  sub_22CEF44D4(&v27, a3 + 16);
  sub_22CEF44D4(&v24, a3 + 56);
  return a3;
}

uint64_t sub_22CFF598C(void *a1, uint64_t a2, char *a3)
{
  v36 = a2;
  v37 = a1;
  v35 = sub_22D01697C();
  v5 = *(v35 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v35, v7);
  v34 = v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22D01691C();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9, v11);
  v12 = sub_22D01653C();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8, v14);
  v42 = a2;
  *&a3[OBJC_IVAR____TtC11SessionCore27QoSObservationServiceServer_listener] = 0;
  v15 = OBJC_IVAR____TtC11SessionCore27QoSObservationServiceServer_lock;
  type metadata accessor for UnfairLock();
  v16 = swift_allocObject();
  v17 = swift_slowAlloc();
  *(v16 + 16) = v17;
  *v17 = 0;
  *&a3[v15] = v16;
  v18 = MEMORY[0x277D84F98];
  *&a3[OBJC_IVAR____TtC11SessionCore27QoSObservationServiceServer__lock_clients] = MEMORY[0x277D84F98];
  *&a3[OBJC_IVAR____TtC11SessionCore27QoSObservationServiceServer__lock_qos] = v18;
  *&a3[OBJC_IVAR____TtC11SessionCore27QoSObservationServiceServer_qosSubscription] = 0;
  v33[1] = sub_22CEEC38C();
  sub_22D01651C();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_22CFF8F4C(&qword_28143FA20, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3990, &unk_22D0189A0);
  sub_22CEE8394(&qword_28143FA40, &unk_27D9F3990, &unk_22D0189A0);
  sub_22D016ADC();
  (*(v5 + 104))(v34, *MEMORY[0x277D85268], v35);
  v19 = v37;
  *&a3[OBJC_IVAR____TtC11SessionCore27QoSObservationServiceServer_requestProcessingQueue] = sub_22D0169BC();
  v20 = type metadata accessor for QoSObservationServiceServer();
  v41.receiver = a3;
  v41.super_class = v20;
  v21 = objc_msgSendSuper2(&v41, sel_init);
  v22 = off_28402AFF8;
  type metadata accessor for QoSManager();
  v23 = v21;
  v24 = v22();

  aBlock[0] = v24;
  swift_allocObject();
  swift_unknownObjectWeakInit();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3BD0, &qword_22D01C7D0);
  sub_22CEE8394(&qword_28143FAB8, &qword_27D9F3BD0, &qword_22D01C7D0);
  v25 = sub_22D0164AC();

  v26 = *&v23[OBJC_IVAR____TtC11SessionCore27QoSObservationServiceServer_qosSubscription];
  *&v23[OBJC_IVAR____TtC11SessionCore27QoSObservationServiceServer_qosSubscription] = v25;

  v39 = v23;
  v27 = swift_allocObject();
  *(v27 + 16) = sub_22CFF8F24;
  *(v27 + 24) = &v38;
  aBlock[4] = sub_22CFF908C;
  aBlock[5] = v27;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22CEE5AA0;
  aBlock[3] = &block_descriptor_344;
  v28 = _Block_copy(aBlock);
  v29 = objc_opt_self();

  v30 = [v29 listenerWithConfigurator_];

  _Block_release(v28);

  LOBYTE(v19) = swift_isEscapingClosureAtFileLocation();

  if (v19)
  {
    __break(1u);
  }

  else
  {
    v32 = *&v23[OBJC_IVAR____TtC11SessionCore27QoSObservationServiceServer_listener];
    *&v23[OBJC_IVAR____TtC11SessionCore27QoSObservationServiceServer_listener] = v30;

    return v23;
  }

  return result;
}

uint64_t sub_22CFF5EE8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v55 = a3;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3C28, &qword_22D01C828);
  v49 = *(v50 - 8);
  v7 = *(v49 + 64);
  MEMORY[0x28223BE20](v50, v8);
  v48 = &v47 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3670, &qword_22D01BF00);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8, v12);
  v56 = &v47 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3BB8, &qword_22D01C7B8);
  v15 = *(v14 - 8);
  v59 = v14;
  v60 = v15;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14, v17);
  v57 = &v47 - v18;
  v58 = sub_22D01697C();
  v54 = *(v58 - 1);
  v19 = *(v54 + 8);
  MEMORY[0x28223BE20](v58, v20);
  v53 = &v47 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_22D01691C();
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22, v24);
  v51 = &v47 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_22D01653C();
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26 - 8, v28);
  v52 = type metadata accessor for AssertionManager();
  v67[3] = v52;
  v67[4] = &off_284029D10;
  v67[0] = a1;
  v65 = type metadata accessor for LockStateObserver();
  v66 = &off_284029998;
  v64[0] = a2;
  v29 = MEMORY[0x277D84F90];
  v62 = sub_22CEF4A08(MEMORY[0x277D84F90], &qword_27D9F2A38, &unk_22D0196F0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F29E8, &qword_22D019668);
  v31 = *(v30 + 48);
  v32 = *(v30 + 52);
  swift_allocObject();
  *(a4 + 16) = sub_22D01644C();
  *(a4 + 24) = sub_22CEF4A08(v29, &qword_27D9F2A38, &unk_22D0196F0);
  *(a4 + 32) = 0;
  *(a4 + 128) = MEMORY[0x277D84FA0];
  v61 = sub_22CEEC38C();
  sub_22D0164FC();
  v62 = v29;
  sub_22CFF8F4C(&qword_28143FA20, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3990, &unk_22D0189A0);
  sub_22CEE8394(&qword_28143FA40, &unk_27D9F3990, &unk_22D0189A0);
  sub_22D016ADC();
  (*(v54 + 13))(v53, *MEMORY[0x277D85268], v58);
  v58 = v55;
  *(a4 + 120) = sub_22D0169BC();
  sub_22CEE3A84(v67, a4 + 40);
  sub_22CEE3A84(v64, a4 + 80);
  v62 = off_284029D18();
  v63 = *(a4 + 120);
  v33 = v63;
  v34 = sub_22D01693C();
  v35 = *(v34 - 1);
  v36 = *(v35 + 56);
  v37 = v56;
  v55 = v34;
  v54 = v36;
  v53 = (v35 + 56);
  (v36)(v56, 1, 1);
  v38 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3BD0, &qword_22D01C7D0);
  sub_22CEE8394(&qword_28143FAB8, &qword_27D9F3BD0, &qword_22D01C7D0);
  sub_22CFF8F4C(&qword_28143FA10, sub_22CEEC38C);
  v39 = v57;
  v40 = v37;
  sub_22D01647C();
  sub_22CEEC3D8(v37, &qword_27D9F3670, &qword_22D01BF00);

  sub_22CEE8394(&qword_28143FAD0, &qword_27D9F3BB8, &qword_22D01C7B8);

  v41 = v59;
  sub_22D0164AC();

  (*(v60 + 8))(v39, v41);
  swift_beginAccess();
  v60 = a4 + 128;
  sub_22D0163EC();
  swift_endAccess();

  if (sub_22CEF4850())
  {
    v62 = *(*__swift_project_boxed_opaque_existential_1(v64, v65) + 16);
    v63 = *(a4 + 120);
    v42 = v63;
    v54(v37, 1, 1, v55);

    v43 = v42;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3BB0, &qword_22D01C7A8);
    sub_22CEE8394(&qword_28143FAA0, &qword_27D9F3BB0, &qword_22D01C7A8);
    v44 = v48;
    sub_22D01647C();
    sub_22CEEC3D8(v40, &qword_27D9F3670, &qword_22D01BF00);

    sub_22CEE8394(&qword_28143DA08, &qword_27D9F3C28, &qword_22D01C828);

    v45 = v50;
    sub_22D0164AC();

    (*(v49 + 8))(v44, v45);
    swift_beginAccess();
    sub_22D0163EC();
    swift_endAccess();
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v64);
  __swift_destroy_boxed_opaque_existential_1Tm(v67);
  return a4;
}

unint64_t sub_22CFF67D0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3B80, &qword_22D01C778);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = (&v24 - v6);
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F31A0, &qword_22D01B110);
    v9 = sub_22D016D3C();
    v10 = *(v2 + 48);
    v11 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v12 = *(v3 + 72);

    while (1)
    {
      sub_22CEEB6DC(v11, v7, &qword_27D9F3B80, &qword_22D01C778);
      v13 = *v7;
      v14 = v7[1];
      result = sub_22CEEC698(*v7, v14);
      if (v16)
      {
        break;
      }

      v17 = result;
      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v18 = (v9[6] + 16 * result);
      *v18 = v13;
      v18[1] = v14;
      v19 = v9[7];
      v20 = sub_22D01490C();
      result = (*(*(v20 - 8) + 32))(v19 + *(*(v20 - 8) + 72) * v17, v7 + v10, v20);
      v21 = v9[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_10;
      }

      v9[2] = v23;
      v11 += v12;
      if (!--v8)
      {

        return v9;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22CFF69BC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3118, &qword_22D01ADA8);
    v3 = sub_22D016D3C();
    v4 = a1 + 32;

    while (1)
    {
      sub_22CEEB6DC(v4, v13, &qword_27D9F2A68, &qword_22D019818);
      result = sub_22CFB6140(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_22CF1D288(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22CFF6AF8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2620, &qword_22D01B1E0);
    v3 = sub_22D016D3C();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_22CEEC698(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22CFF6BF4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3BA0, &qword_22D01C798);
    v3 = sub_22D016D3C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_22CEEC698(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22CFF6CF8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2618, &unk_22D018B80);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = (&v24 - v6);
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3248, &qword_22D01B1D8);
    v9 = sub_22D016D3C();
    v10 = *(v2 + 48);
    v11 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v12 = *(v3 + 72);

    while (1)
    {
      sub_22CEEB6DC(v11, v7, &qword_27D9F2618, &unk_22D018B80);
      v13 = *v7;
      v14 = v7[1];
      result = sub_22CEEC698(*v7, v14);
      if (v16)
      {
        break;
      }

      v17 = result;
      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v18 = (v9[6] + 16 * result);
      *v18 = v13;
      v18[1] = v14;
      v19 = v9[7];
      v20 = sub_22D014AFC();
      result = (*(*(v20 - 8) + 32))(v19 + *(*(v20 - 8) + 72) * v17, v7 + v10, v20);
      v21 = v9[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_10;
      }

      v9[2] = v23;
      v11 += v12;
      if (!--v8)
      {

        return v9;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22CFF6EE4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F31E0, &qword_22D01B180);
    v3 = sub_22D016D3C();
    for (i = a1 + 32; ; i += 48)
    {
      sub_22CEEB6DC(i, &v11, &qword_27D9F3C38, &unk_22D01C838);
      v5 = v11;
      result = sub_22CEE637C(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 4 * result) = v5;
      result = sub_22CEF44D4(&v12, v3[7] + 40 * result);
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

void *sub_22CFF7004(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3C30, &qword_22D01C830);
  v3 = sub_22D016D3C();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = sub_22CEE637C(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = (a1 + 56);
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 4 * v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 2);
    v15 = *v10;

    v8 = sub_22CEE637C(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_22CFF7114(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3C08, &qword_22D01C808);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = (&v24 - v6);
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2A28, &qword_22D0196C8);
    v9 = sub_22D016D3C();
    v10 = *(v2 + 48);
    v11 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v12 = *(v3 + 72);

    while (1)
    {
      sub_22CEEB6DC(v11, v7, &qword_27D9F3C08, &qword_22D01C808);
      v13 = *v7;
      v14 = v7[1];
      result = sub_22CEEC698(*v7, v14);
      if (v16)
      {
        break;
      }

      v17 = result;
      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v18 = (v9[6] + 16 * result);
      *v18 = v13;
      v18[1] = v14;
      v19 = v9[7];
      v20 = type metadata accessor for Activity();
      result = sub_22CFF8E7C(v7 + v10, v19 + *(*(v20 - 8) + 72) * v17, type metadata accessor for Activity);
      v21 = v9[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_10;
      }

      v9[2] = v23;
      v11 += v12;
      if (!--v8)
      {

        return v9;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22CFF72FC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3C00, &qword_22D01C800);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = (&v24 - v6);
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2A10, &qword_22D0196B0);
    v9 = sub_22D016D3C();
    v10 = *(v2 + 48);
    v11 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v12 = *(v3 + 72);

    while (1)
    {
      sub_22CEEB6DC(v11, v7, &qword_27D9F3C00, &qword_22D01C800);
      v13 = *v7;
      v14 = v7[1];
      result = sub_22CEEC698(*v7, v14);
      if (v16)
      {
        break;
      }

      v17 = result;
      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v18 = (v9[6] + 16 * result);
      *v18 = v13;
      v18[1] = v14;
      v19 = v9[7];
      v20 = type metadata accessor for XPCInputParticipant.ActivityUpdate();
      result = sub_22CFF8E7C(v7 + v10, v19 + *(*(v20 - 8) + 72) * v17, type metadata accessor for XPCInputParticipant.ActivityUpdate);
      v21 = v9[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_10;
      }

      v9[2] = v23;
      v11 += v12;
      if (!--v8)
      {

        return v9;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22CFF74E4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3BF8, &qword_22D01C7F8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = (&v24 - v6);
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F31B0, &qword_22D01B128);
    v9 = sub_22D016D3C();
    v10 = *(v2 + 48);
    v11 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v12 = *(v3 + 72);

    while (1)
    {
      sub_22CEEB6DC(v11, v7, &qword_27D9F3BF8, &qword_22D01C7F8);
      v13 = *v7;
      v14 = v7[1];
      result = sub_22CEEC698(*v7, v14);
      if (v16)
      {
        break;
      }

      v17 = result;
      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v18 = (v9[6] + 16 * result);
      *v18 = v13;
      v18[1] = v14;
      v19 = v9[7];
      v20 = sub_22D01430C();
      result = (*(*(v20 - 8) + 32))(v19 + *(*(v20 - 8) + 72) * v17, v7 + v10, v20);
      v21 = v9[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_10;
      }

      v9[2] = v23;
      v11 += v12;
      if (!--v8)
      {

        return v9;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22CFF76D0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2E68, &unk_22D01A870);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = (&v22 - v6);
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3B88, &qword_22D01C780);
    v9 = sub_22D016D3C();
    v10 = *(v2 + 48);
    v11 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v12 = *(v3 + 72);
    while (1)
    {
      sub_22CEEB6DC(v11, v7, &qword_27D9F2E68, &unk_22D01A870);
      v13 = *v7;
      result = sub_22CFC1098(*v7);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v9[6] + 8 * result) = v13;
      v17 = v9[7];
      v18 = sub_22D015A1C();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v16, v7 + v10, v18);
      v19 = v9[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v9[2] = v21;
      v11 += v12;
      if (!--v8)
      {
        return v9;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22CFF78C0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3138, &qword_22D01AEC8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v23 - v6;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3B98, &qword_22D01C790);
    v9 = sub_22D016D3C();
    v10 = &v7[*(v2 + 48)];
    v11 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v12 = *(v3 + 72);

    while (1)
    {
      sub_22CEEB6DC(v11, v7, &qword_27D9F3138, &qword_22D01AEC8);
      result = sub_22CEFF728(v7);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = v9[6];
      v17 = sub_22D0149AC();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, v7, v17);
      v18 = v9[7] + 24 * v15;
      v19 = v10[16];
      *v18 = *v10;
      *(v18 + 16) = v19;
      v20 = v9[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v9[2] = v22;
      v11 += v12;
      if (!--v8)
      {

        return v9;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22CFF7ABC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3148, &qword_22D01AED8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v23 - v6;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3258, &unk_22D01B1F0);
    v9 = sub_22D016D3C();
    v10 = *(v2 + 48);
    v11 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v12 = *(v3 + 72);

    while (1)
    {
      sub_22CEEB6DC(v11, v7, &qword_27D9F3148, &qword_22D01AED8);
      result = sub_22CEFF728(v7);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = v9[6];
      v17 = sub_22D0149AC();
      (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, v7, v17);
      v18 = v9[7];
      v19 = sub_22D014EFC();
      result = sub_22CFF8E7C(&v7[v10], v18 + *(*(v19 - 8) + 72) * v15, MEMORY[0x277CB9790]);
      v20 = v9[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v9[2] = v22;
      v11 += v12;
      if (!--v8)
      {

        return v9;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22CFF7CD8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3238, &qword_22D01B1D0);
    v3 = sub_22D016D3C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_22CEEC698(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22CFF7DDC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F31E8, &qword_22D01B188);
  v3 = sub_22D016D3C();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  result = sub_22CEE637C(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    v16 = v5;
    return v3;
  }

  v8 = (a1 + 56);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 4 * result) = v4;
    *(v3[7] + 8 * result) = v5;
    v9 = v3[2];
    v10 = __OFADD__(v9, 1);
    v11 = v9 + 1;
    if (v10)
    {
      break;
    }

    v3[2] = v11;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v12 = v8 + 2;
    v4 = *(v8 - 2);
    v13 = *v8;
    v14 = v5;
    result = sub_22CEE637C(v4);
    v8 = v12;
    v5 = v13;
    if (v15)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_22CFF7EE0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3C10, &qword_22D01C810);
    v3 = sub_22D016D3C();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;
      result = sub_22CF259D0(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22CFF7FC0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3B90, &qword_22D01C788);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = (&v24 - v6);
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F31C8, &qword_22D01B160);
    v9 = sub_22D016D3C();
    v10 = *(v2 + 48);
    v11 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v12 = *(v3 + 72);

    while (1)
    {
      sub_22CEEB6DC(v11, v7, &qword_27D9F3B90, &qword_22D01C788);
      v13 = *v7;
      v14 = v7[1];
      result = sub_22CEEC698(*v7, v14);
      if (v16)
      {
        break;
      }

      v17 = result;
      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v18 = (v9[6] + 16 * result);
      *v18 = v13;
      v18[1] = v14;
      v19 = v9[7];
      v20 = sub_22D0162BC();
      result = (*(*(v20 - 8) + 32))(v19 + *(*(v20 - 8) + 72) * v17, v7 + v10, v20);
      v21 = v9[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_10;
      }

      v9[2] = v23;
      v11 += v12;
      if (!--v8)
      {

        return v9;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

void sub_22CFF81AC(NSObject *a1)
{
  aBlock[6] = *MEMORY[0x277D85DE8];
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = sub_22D01666C();
  v4 = [v2 BOOLForKey_];

  if (v4)
  {
    out_token = -1;
    v5 = swift_allocObject();
    *(v5 + 16) = 60;
    v6 = (v5 + 16);
    v7 = swift_allocObject();
    v7[2] = 0xD00000000000001FLL;
    v7[3] = 0x800000022D022ED0;
    v7[4] = v5;
    aBlock[4] = sub_22CFF8F94;
    aBlock[5] = v7;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22CEF261C;
    aBlock[3] = &block_descriptor_387;
    v8 = _Block_copy(aBlock);

    LODWORD(v9) = notify_register_dispatch("com.apple.liveactivitiesd.start", &out_token, a1, v8);
    _Block_release(v8);
    if (v9)
    {
      if (qword_27D9F1E40 == -1)
      {
        goto LABEL_4;
      }
    }

    else
    {
      if (qword_27D9F1E40 != -1)
      {
        swift_once();
      }

      v16 = sub_22D01637C();
      __swift_project_value_buffer(v16, qword_27D9F40B8);
      v9 = sub_22D01636C();
      v17 = sub_22D01690C();
      if (os_log_type_enabled(v9, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        aBlock[0] = v19;
        *v18 = 136446210;
        *(v18 + 4) = sub_22CEEE31C(0xD00000000000001FLL, 0x800000022D022ED0, aBlock);
        _os_log_impl(&dword_22CEE1000, v9, v17, "%{public}s: Waiting", v18, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v19);
        MEMORY[0x2318C6860](v19, -1, -1);
        MEMORY[0x2318C6860](v18, -1, -1);
      }

      swift_beginAccess();
      if (*v6 < 1)
      {
LABEL_13:
        notify_cancel(out_token);
        v11 = sub_22D01636C();
        v21 = sub_22D01690C();
        if (os_log_type_enabled(v11, v21))
        {
          v22 = swift_slowAlloc();
          v23 = swift_slowAlloc();
          v26 = v23;
          *v22 = 136446210;
          *(v22 + 4) = sub_22CEEE31C(0xD00000000000001FLL, 0x800000022D022ED0, &v26);
          _os_log_impl(&dword_22CEE1000, v11, v21, "%{public}s: Done waiting; startup continues", v22, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v23);
          MEMORY[0x2318C6860](v23, -1, -1);
          v15 = v22;
          goto LABEL_15;
        }

LABEL_16:

        goto LABEL_17;
      }

      while (1)
      {
        sleep(1u);
        v20 = *v6 - 1;
        if (__OFSUB__(*v6, 1))
        {
          break;
        }

        *v6 = v20;
        if (v20 <= 0)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
    }

    swift_once();
LABEL_4:
    v10 = sub_22D01637C();
    __swift_project_value_buffer(v10, qword_27D9F40B8);
    v11 = sub_22D01636C();
    v12 = sub_22D0168EC();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      aBlock[0] = v14;
      *v13 = 136446466;
      *(v13 + 4) = sub_22CEEE31C(0xD00000000000001FLL, 0x800000022D022ED0, aBlock);
      *(v13 + 12) = 1026;
      *(v13 + 14) = v9;
      _os_log_impl(&dword_22CEE1000, v11, v12, "%{public}s: %{public}u", v13, 0x12u);
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      MEMORY[0x2318C6860](v14, -1, -1);
      v15 = v13;
LABEL_15:
      MEMORY[0x2318C6860](v15, -1, -1);
      goto LABEL_16;
    }

    goto LABEL_16;
  }

LABEL_17:
  v24 = *MEMORY[0x277D85DE8];
}

uint64_t sub_22CFF8680(void *a1)
{
  sub_22D01570C();
  v2 = sub_22D0156FC();
  if (qword_281442150 != -1)
  {
    swift_once();
  }

  v3 = qword_2814444F8;
  v4 = type metadata accessor for PersistentSyncEngineRecordMetadataStore();
  swift_allocObject();

  v5 = sub_22CFDB00C(v3, a1);
  v6 = sub_22D0156EC();
  v15[3] = v4;
  v15[4] = sub_22CFF8F4C(qword_2814400F0, type metadata accessor for PersistentSyncEngineRecordMetadataStore);
  v15[0] = v5;

  v7 = sub_22D0156DC();
  sub_22D01576C();
  sub_22D0156CC();
  v13 = v6;
  v14 = MEMORY[0x277D4D6F0];
  v12 = v7;
  sub_22CEE3A84(v15, v11);
  v8 = v2;

  sub_22D0156AC();
  v9 = sub_22D01569C();

  __swift_destroy_boxed_opaque_existential_1Tm(v15);
  return v9;
}

void *sub_22CFF8844(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v44 = a1;
  v9 = sub_22D01697C();
  v42 = *(v9 - 8);
  v43 = v9;
  v10 = *(v42 + 64);
  MEMORY[0x28223BE20](v9, v11);
  v41 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22D01691C();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13, v15);
  v16 = sub_22D01653C();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8, v18);
  v48[3] = type metadata accessor for PersistentAssertionStore();
  v48[4] = &off_28402B4D0;
  v48[0] = a2;
  v47[3] = type metadata accessor for PersistentActivityStore();
  v47[4] = &off_28402CB48;
  v47[0] = a3;
  v46[3] = type metadata accessor for FirstLaunchDetector();
  v46[4] = &off_28402BEB0;
  v46[0] = a4;
  v19 = MEMORY[0x277D84F90];
  v45 = sub_22CEF4A08(MEMORY[0x277D84F90], &qword_27D9F2A38, &unk_22D0196F0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F29E8, &qword_22D019668);
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();
  a5[2] = sub_22D01644C();
  v45 = v19;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F29E0, &qword_22D019660);
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  swift_allocObject();
  a5[3] = sub_22D01644C();
  v45 = v19;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F29D8, &qword_22D019658);
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  swift_allocObject();
  a5[4] = sub_22D01644C();
  v45 = v19;
  v29 = *(v23 + 48);
  v30 = *(v23 + 52);
  swift_allocObject();
  a5[5] = sub_22D01644C();
  type metadata accessor for UnfairLock();
  v31 = swift_allocObject();
  v32 = swift_slowAlloc();
  *(v31 + 16) = v32;
  *v32 = 0;
  a5[6] = v31;
  a5[7] = sub_22CFF6EE4(v19);
  v33 = sub_22CEF4A08(v19, &qword_27D9F2A38, &unk_22D0196F0);
  v34 = MEMORY[0x277D84FA0];
  a5[8] = v33;
  a5[9] = v34;
  a5[10] = sub_22CFF7004(v19);
  a5[11] = sub_22CFF7004(v19);
  a5[12] = sub_22CFF7004(v19);
  a5[13] = v19;
  a5[14] = v34;
  type metadata accessor for AssertionExpirationTimer();
  v35 = swift_allocObject();
  *(v35 + 16) = 0;
  v36 = swift_allocObject();
  v37 = swift_slowAlloc();
  *(v36 + 16) = v37;
  *v37 = 0;
  *(v35 + 24) = v36;
  a5[21] = v35;
  sub_22CEEC38C();
  sub_22D01651C();
  v45 = v19;
  sub_22CFF8F4C(&qword_28143FA20, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3990, &unk_22D0189A0);
  sub_22CEE8394(&qword_28143FA40, &unk_27D9F3990, &unk_22D0189A0);
  sub_22D016ADC();
  (*(v42 + 104))(v41, *MEMORY[0x277D85268], v43);
  v38 = v44;
  a5[15] = sub_22D0169BC();
  sub_22CEE3A84(v48, (a5 + 16));
  sub_22CEE3A84(v46, (a5 + 22));
  sub_22CEE3A84(v47, (a5 + 27));
  sub_22CF68F3C();
  __swift_destroy_boxed_opaque_existential_1Tm(v47);
  __swift_destroy_boxed_opaque_existential_1Tm(v48);
  __swift_destroy_boxed_opaque_existential_1Tm(v46);
  return a5;
}

uint64_t objectdestroy_2Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22CFF8DDC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2E40, &qword_22D01A858);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_22CFF8E7C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22CFF8F4C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_22CFF9094()
{
  sub_22D014E2C();
  if (v0 <= 0x3F)
  {
    sub_22D01502C();
    if (v1 <= 0x3F)
    {
      sub_22CFF922C();
      if (v2 <= 0x3F)
      {
        sub_22CFF92D8(319, &qword_28143D958, MEMORY[0x277CB9350], MEMORY[0x277D83940]);
        if (v3 <= 0x3F)
        {
          sub_22D01430C();
          if (v4 <= 0x3F)
          {
            sub_22D0146BC();
            if (v5 <= 0x3F)
            {
              sub_22CFF92D8(319, &unk_2814439D0, MEMORY[0x277CB9378], MEMORY[0x277D83D88]);
              if (v6 <= 0x3F)
              {
                sub_22CFF933C();
                if (v7 <= 0x3F)
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

void sub_22CFF922C()
{
  if (!qword_28143D980)
  {
    sub_22D0149AC();
    sub_22D014EFC();
    sub_22CF0B598(&qword_28143F6B0, MEMORY[0x277CB9500]);
    v0 = sub_22D01660C();
    if (!v1)
    {
      atomic_store(v0, &qword_28143D980);
    }
  }
}

void sub_22CFF92D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_22CFF933C()
{
  if (!qword_28143D960)
  {
    v0 = sub_22D016A8C();
    if (!v1)
    {
      atomic_store(v0, &qword_28143D960);
    }
  }
}

uint64_t sub_22CFF939C(uint64_t a1, uint64_t a2)
{
  v98 = a1;
  v99 = a2;
  v94 = sub_22D01502C();
  v87 = *(v94 - 8);
  v3 = *(v87 + 64);
  MEMORY[0x28223BE20](v94, v4);
  v6 = &v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22D014EFC();
  v96 = *(v7 - 8);
  v8 = *(v96 + 64);
  v10 = MEMORY[0x28223BE20](v7 - 8, v9);
  v12 = &v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v10, v13);
  v16 = &v77 - v15;
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v77 - v18;
  v20 = sub_22D0149AC();
  v95 = *(v20 - 8);
  v21 = *(v95 + 64);
  MEMORY[0x28223BE20](v20, v22);
  v24 = &v77 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3828, &qword_22D01BD10);
  v26 = *(*(v25 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v25 - 8, v27);
  v30 = &v77 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28, v31);
  v33 = &v77 - v32;
  v34 = type metadata accessor for Activity();
  if (*(v2 + *(v34 + 52) + 8))
  {
    return 0;
  }

  v36 = v34;
  v92 = v19;
  v93 = v20;
  v89 = v30;
  v90 = v12;
  v97 = v33;
  v91 = v24;
  v88 = v6;
  v37 = v2;
  v38 = v2 + *(v34 + 24);
  if (sub_22D014F9C() == v98 && v39 == v99)
  {

    return 1;
  }

  v40 = sub_22D016DFC();

  if (v40)
  {
    return 1;
  }

  v41 = *(v37 + *(v36 + 28));
  v42 = *(v41 + 64);
  v79 = v41 + 64;
  v43 = 1 << *(v41 + 32);
  v44 = -1;
  if (v43 < 64)
  {
    v44 = ~(-1 << v43);
  }

  v45 = v44 & v42;
  v78 = (v43 + 63) >> 6;
  v46 = v95;
  v81 = v95 + 32;
  v82 = v95 + 16;
  v85 = (v87 + 8);
  v86 = (v87 + 32);
  v87 = v95 + 8;
  v84 = v41;

  v47 = 0;
  v48 = v96;
  v49 = v93;
  v83 = v16;
  v50 = v91;
  v51 = v92;
  if (v45)
  {
    while (1)
    {
      v52 = v49;
      v53 = v47;
LABEL_19:
      v55 = __clz(__rbit64(v45));
      v45 &= v45 - 1;
      v56 = v55 | (v53 << 6);
      v57 = v84;
      (*(v46 + 16))(v50, *(v84 + 48) + *(v46 + 72) * v56, v52);
      sub_22CEFEB00(*(v57 + 56) + *(v48 + 72) * v56, v51, MEMORY[0x277CB9790]);
      v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3830, &unk_22D01BD18);
      v59 = v46;
      v60 = *(v58 + 48);
      v61 = v89;
      (*(v59 + 32))(v89, v50, v52);
      sub_22CF033C4(v51, v61 + v60);
      (*(*(v58 - 8) + 56))(v61, 0, 1, v58);
      v62 = v53;
      v16 = v83;
LABEL_20:
      v63 = v97;
      sub_22CF03428(v61, v97);
      v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3830, &unk_22D01BD18);
      v65 = (*(*(v64 - 8) + 48))(v63, 1, v64);
      v66 = v90;
      if (v65 == 1)
      {

        return 0;
      }

      v67 = v93;
      v68 = v96;
      sub_22CF033C4(v63 + *(v64 + 48), v16);
      v69 = v16;
      sub_22CEFEB00(v16, v66, MEMORY[0x277CB9790]);
      v70 = v88;
      v71 = v94;
      (*v86)(v88, v66, v94);
      v72 = sub_22D014F9C();
      v74 = v73;
      (*v85)(v70, v71);
      if (v72 == v98 && v74 == v99)
      {
        break;
      }

      v75 = sub_22D016DFC();

      v16 = v69;
      sub_22CEFD754(v69, MEMORY[0x277CB9790]);
      if (v75)
      {
        goto LABEL_29;
      }

      v49 = v67;
      result = (*v87)(v97, v67);
      v47 = v62;
      v48 = v68;
      v46 = v95;
      v50 = v91;
      v51 = v92;
      if (!v45)
      {
        goto LABEL_11;
      }
    }

    sub_22CEFD754(v69, MEMORY[0x277CB9790]);
LABEL_29:

    (*v87)(v97, v67);
    return 1;
  }

LABEL_11:
  if (v78 <= v47 + 1)
  {
    v54 = v47 + 1;
  }

  else
  {
    v54 = v78;
  }

  v80 = v54 - 1;
  while (1)
  {
    v53 = v47 + 1;
    if (__OFADD__(v47, 1))
    {
      break;
    }

    if (v53 >= v78)
    {
      v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3830, &unk_22D01BD18);
      v61 = v89;
      (*(*(v76 - 8) + 56))(v89, 1, 1, v76);
      v45 = 0;
      v62 = v80;
      goto LABEL_20;
    }

    v45 = *(v79 + 8 * v53);
    ++v47;
    if (v45)
    {
      v52 = v49;
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22CFF9A90(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 1752397168;
  }

  else
  {
    v4 = 6910049;
  }

  if (v3)
  {
    v5 = 0xE300000000000000;
  }

  else
  {
    v5 = 0xE400000000000000;
  }

  if (*a2)
  {
    v6 = 1752397168;
  }

  else
  {
    v6 = 6910049;
  }

  if (*a2)
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE300000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_22D016DFC();
  }

  return v9 & 1;
}

uint64_t sub_22CFF9B28()
{
  v1 = *v0;
  sub_22D016EAC();
  sub_22D0166DC();

  return sub_22D016ECC();
}

uint64_t sub_22CFF9B9C()
{
  *v0;
  sub_22D0166DC();
}

uint64_t sub_22CFF9BFC()
{
  v1 = *v0;
  sub_22D016EAC();
  sub_22D0166DC();

  return sub_22D016ECC();
}

uint64_t sub_22CFF9C6C@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_22D016D4C();

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

void sub_22CFF9CCC(uint64_t *a1@<X8>)
{
  v2 = 6910049;
  if (*v1)
  {
    v2 = 1752397168;
  }

  v3 = 0xE300000000000000;
  if (*v1)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_22CFF9DB0()
{
  result = qword_27D9F3C40;
  if (!qword_27D9F3C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9F3C40);
  }

  return result;
}

unint64_t sub_22CFF9E04(char a1)
{
  result = 0x696669746E656469;
  switch(a1)
  {
    case 1:
      result = 0x74736575716572;
      break;
    case 2:
      result = 0x6574736575716572;
      break;
    case 3:
      result = 0x726154656E656373;
      break;
    case 4:
      result = 0xD000000000000011;
      break;
    case 5:
      result = 0x5472657474616C70;
      break;
    case 6:
      result = 0xD000000000000016;
      break;
    case 7:
      result = 0x7461447472617473;
      break;
    case 8:
      result = 0x4464657461657263;
      break;
    case 9:
      result = 0x6E6F697461657263;
      break;
    case 10:
      result = 0xD000000000000010;
      break;
    case 11:
      result = 0x64616F6C796170;
      break;
    case 12:
      result = 0x704F676E69646E65;
      break;
    case 13:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_22CFF9FDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22CFFD11C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22CFFA010(uint64_t a1)
{
  v2 = sub_22CFFBF70();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22CFFA04C(uint64_t a1)
{
  v2 = sub_22CFFBF70();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22CFFA088(void *a1)
{
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2350, &qword_22D018978);
  v2 = *(*(v69 - 8) + 64);
  MEMORY[0x28223BE20](v69, v3);
  v5 = &v59 - v4;
  v6 = sub_22D0149AC();
  v70 = *(v6 - 8);
  v7 = *(v70 + 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3C78, &qword_22D01CA00);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v59 - v15;
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22CFFBF70();
  v18 = v11;
  v19 = v71;
  sub_22D016EEC();
  v20 = *v19;
  v21 = v19[1];
  LOBYTE(v73) = 0;
  v22 = v72;
  sub_22D016DBC();
  if (v22)
  {
    return (*(v12 + 8))(v16, v18);
  }

  v66 = v10;
  v67 = v6;
  v68 = v5;
  v72 = v12;
  v24 = type metadata accessor for Activity();
  v25 = v24[5];
  LOBYTE(v73) = 1;
  sub_22D014E2C();
  sub_22CF0B598(&qword_2814439A8, MEMORY[0x277CB9678]);
  sub_22D016DDC();
  v26 = v18;
  v27 = v24[6];
  LOBYTE(v73) = 2;
  v28 = sub_22D01502C();
  v29 = sub_22CF0B598(&qword_27D9F3C80, MEMORY[0x277CB9810]);
  sub_22D016DDC();
  v64 = v29;
  v65 = v26;
  v62 = v28;
  v30 = *(v19 + v24[7]);
  v31 = v70;
  v32 = v66;
  v33 = v67;
  (*(v70 + 13))(v66, *MEMORY[0x277CB94E0], v67);
  v34 = *(v30 + 16);
  v63 = 0;
  v61 = v30;
  if (v34)
  {
    v35 = sub_22CEFF728(v32);
    if (v36)
    {
      v37 = v35;
      v38 = *(v30 + 56);
      v60 = sub_22D014EFC();
      v39 = *(v60 - 8);
      v40 = v38 + *(v39 + 72) * v37;
      v41 = v68;
      sub_22CEFEB00(v40, v68, MEMORY[0x277CB9790]);
      v42 = v32;
      v43 = v41;
      (*(v70 + 1))(v42, v33);
      (*(v39 + 56))(v41, 0, 1, v60);
      goto LABEL_9;
    }

    (*(v70 + 1))(v32, v33);
  }

  else
  {
    (*(v31 + 1))(v32, v33);
  }

  v44 = sub_22D014EFC();
  v43 = v68;
  (*(*(v44 - 8) + 56))(v68, 1, 1, v44);
LABEL_9:
  LOBYTE(v73) = 5;
  sub_22CFFCB48();
  v45 = v65;
  v46 = v63;
  sub_22D016DDC();
  sub_22CEEC3D8(v43, &qword_27D9F2350, &qword_22D018978);
  if (v46)
  {
    return (*(v72 + 8))(v16, v45);
  }

  LOBYTE(v73) = 2;
  sub_22D016DDC();
  v47 = v19;
  *&v73 = v61;
  v74 = 3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F26F0, &qword_22D018F98);
  sub_22CF5D9F4();
  v48 = v16;
  sub_22D016DDC();
  *&v73 = *(v19 + v24[8]);
  v74 = 4;
  sub_22D016DDC();
  *&v73 = *(v19 + v24[9]);
  v74 = 6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F26E8, &qword_22D018F90);
  sub_22CFFCBFC(&qword_28143FA58, &qword_2814439E8);
  sub_22D016DDC();
  v70 = v24;
  v49 = v24[10];
  LOBYTE(v73) = 7;
  sub_22D01430C();
  sub_22CF0B598(&qword_27D9F2F98, MEMORY[0x277CC9578]);
  sub_22D016DDC();
  v50 = v70;
  v51 = v70[11];
  LOBYTE(v73) = 8;
  sub_22D016DDC();
  v52 = v50;
  LOBYTE(v73) = *(v47 + v50[12]);
  v74 = 9;
  sub_22CFFCC98();
  sub_22D016DDC();
  v53 = (v47 + v50[13]);
  v55 = v53[1];
  *&v73 = *v53;
  v54 = v73;
  *(&v73 + 1) = v55;
  v74 = 10;
  sub_22CFFCCEC();
  sub_22D016DDC();
  v56 = v50[14];
  LOBYTE(v73) = 11;
  sub_22D0146BC();
  sub_22CF0B598(&qword_28143F6F8, MEMORY[0x277CB9250]);
  sub_22D016DDC();
  v57 = v52[15];
  LOBYTE(v73) = 12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F26E0, &unk_22D018F80);
  sub_22CFFCD40();
  sub_22D016DDC();
  *&v73 = v54;
  *(&v73 + 1) = v55;
  v74 = 10;
  sub_22D016DDC();
  v73 = *(v47 + v52[16]);
  v74 = 13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3CB0, &qword_22D01CA08);
  sub_22CFFCDF4();
  v58 = v65;
  sub_22D016DDC();
  return (*(v72 + 8))(v48, v58);
}

unint64_t sub_22CFFAA54@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v130 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F26E0, &unk_22D018F80);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v131 = &v124 - v6;
  v7 = sub_22D0146BC();
  v150 = *(v7 - 8);
  v151 = v7;
  v8 = *(v150 + 64);
  MEMORY[0x28223BE20](v7, v9);
  v132 = &v124 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2648, &unk_22D018BC0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8, v13);
  v134 = &v124 - v14;
  v15 = sub_22D01430C();
  v152 = *(v15 - 8);
  v153 = v15;
  v16 = *(v152 + 64);
  v18 = MEMORY[0x28223BE20](v15, v17);
  v133 = &v124 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v20);
  v142 = &v124 - v21;
  v22 = sub_22D0149AC();
  v143 = *(v22 - 8);
  v144 = v22;
  v23 = *(v143 + 64);
  MEMORY[0x28223BE20](v22, v24);
  v141 = &v124 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2340, &qword_22D01D0A0);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26 - 8, v28);
  v145 = &v124 - v29;
  v30 = sub_22D01502C();
  v148 = *(v30 - 8);
  v149 = v30;
  v31 = *(v148 + 64);
  v33 = MEMORY[0x28223BE20](v30, v32);
  v136 = &v124 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x28223BE20](v33, v35);
  v137 = &v124 - v37;
  MEMORY[0x28223BE20](v36, v38);
  v140 = &v124 - v39;
  v146 = sub_22D014EFC();
  v138 = *(v146 - 8);
  v40 = *(v138 + 64);
  v42 = MEMORY[0x28223BE20](v146, v41);
  v139 = &v124 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = MEMORY[0x28223BE20](v42, v44);
  v135 = &v124 - v46;
  MEMORY[0x28223BE20](v45, v47);
  v147 = &v124 - v48;
  v49 = sub_22D014E2C();
  v154 = *(v49 - 8);
  v155 = v49;
  v50 = *(v154 + 64);
  MEMORY[0x28223BE20](v49, v51);
  v53 = &v124 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3C48, &qword_22D01C9F8);
  v156 = *(v54 - 8);
  v55 = *(v156 + 64);
  MEMORY[0x28223BE20](v54, v56);
  v58 = &v124 - v57;
  v59 = type metadata accessor for Activity();
  v60 = *(*(v59 - 8) + 64);
  v62 = MEMORY[0x28223BE20](v59, v61);
  v64 = (&v124 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0));
  v65 = *(v62 + 60);
  v66 = sub_22D01486C();
  v67 = *(*(v66 - 8) + 56);
  v158 = v65;
  v159 = v64;
  v67(v64 + v65, 1, 1, v66);
  v68 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22CFFBF70();
  v69 = v157;
  sub_22D016EDC();
  if (v69)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    return sub_22CEEC3D8(v159 + v158, &qword_27D9F26E0, &unk_22D018F80);
  }

  v128 = v66;
  v129 = v59;
  v157 = a1;
  LOBYTE(v160) = 0;
  v70 = v58;
  v71 = sub_22D016D8C();
  v74 = v73;
  v75 = v159;
  *v159 = v71;
  v75[1] = v73;
  LOBYTE(v160) = 1;
  sub_22CF0B598(&qword_28143F660, MEMORY[0x277CB9678]);
  v76 = v53;
  v77 = v155;
  sub_22D016DAC();
  v78 = *(v154 + 32);
  v127 = v129[5];
  v78(v75 + v127, v76, v77);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F26F0, &qword_22D018F98);
  v161 = 3;
  sub_22CF5DBE4();
  sub_22D016D7C();
  v80 = v54;
  v126 = v74;
  v125 = v70;
  v81 = v160;
  if (!v160)
  {
    v124 = v79;
    *&v160 = 5;
    sub_22CF0B598(&qword_28143F650, MEMORY[0x277CB9790]);
    v83 = v147;
    sub_22D016DAC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3140, &qword_22D01AED0);
    v146 = v54;
    v84 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3148, &qword_22D01AED8) - 8);
    v85 = *(*v84 + 72);
    v86 = (*(*v84 + 80) + 32) & ~*(*v84 + 80);
    v87 = swift_allocObject();
    *(v87 + 16) = xmmword_22D0187A0;
    v88 = v87 + v86;
    v89 = v84[14];
    (*(v143 + 104))(v88, *MEMORY[0x277CB94E0], v144);
    v90 = MEMORY[0x277CB9790];
    sub_22CEFEB00(v83, v88 + v89, MEMORY[0x277CB9790]);
    v81 = sub_22CFF7ABC(v87);
    swift_setDeallocating();
    sub_22CEEC3D8(v88, &qword_27D9F3148, &qword_22D01AED8);
    v80 = v146;
    swift_deallocClassInstance();
    sub_22CEFD754(v83, v90);
    v75 = v159;
  }

  v82 = v129;
  *(v75 + v129[7]) = v81;
  v161 = 4;
  sub_22D016D7C();
  v147 = v81;
  v91 = v160;
  if (!v160)
  {
    v91 = sub_22CFF7ABC(MEMORY[0x277D84F90]);
  }

  v92 = v149;
  v93 = v145;
  *(v75 + v82[8]) = v91;
  LOBYTE(v160) = 2;
  sub_22CF0B598(&qword_27D9F3C58, MEMORY[0x277CB9810]);
  sub_22D016D7C();
  v146 = v80;
  v94 = v148;
  if ((*(v148 + 48))(v93, 1, v92) != 1)
  {
    v108 = v93;
    v109 = *(v94 + 32);
    v110 = v140;
    v109(v140, v108, v92);
    v109(v75 + v82[6], v110, v92);
    goto LABEL_12;
  }

  sub_22CEEC3D8(v93, &qword_27D9F2340, &qword_22D01D0A0);
  v96 = v143;
  v95 = v144;
  v97 = v141;
  result = (*(v143 + 104))(v141, *MEMORY[0x277CB94E0], v144);
  v98 = v147;
  if (!*(v147 + 2))
  {
    __break(1u);
    goto LABEL_17;
  }

  result = sub_22CEFF728(v97);
  v99 = v139;
  if ((v100 & 1) == 0)
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v101 = MEMORY[0x277CB9790];
  v102 = v135;
  sub_22CEFEB00(*(v98 + 7) + *(v138 + 72) * result, v135, MEMORY[0x277CB9790]);
  (*(v96 + 8))(v97, v95);
  sub_22CEFEB00(v102, v99, v101);
  v103 = v148;
  v147 = *(v148 + 32);
  v104 = v136;
  v105 = v99;
  v106 = v149;
  (v147)(v136, v105, v149);
  v145 = sub_22D014F9C();
  (*(v103 + 8))(v104, v106);
  sub_22CEFD754(v102, v101);
  v107 = v137;
  sub_22D014F8C();
  v82 = v129;
  (v147)(v75 + v129[6], v107, v106);
LABEL_12:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F26E8, &qword_22D018F90);
  v161 = 6;
  sub_22CFFCBFC(&qword_28143D950, &unk_28143F6C8);
  sub_22D016DAC();
  v111 = v142;
  *(v75 + v82[9]) = v160;
  LOBYTE(v160) = 8;
  sub_22CF0B598(&qword_27D9F2F88, MEMORY[0x277CC9578]);
  sub_22D016DAC();
  v112 = v75 + v82[11];
  v147 = *(v152 + 32);
  (v147)(v112, v111, v153);
  LOBYTE(v160) = 7;
  v113 = v134;
  sub_22D016D7C();
  if ((*(v152 + 48))(v113, 1, v153) == 1)
  {
    sub_22CEEC3D8(v113, &qword_27D9F2648, &unk_22D018BC0);
    v114 = v75 + v82[10];
    sub_22D014E1C();
  }

  else
  {
    v115 = v133;
    v116 = v113;
    v117 = v153;
    v118 = v147;
    (v147)(v133, v116, v153);
    v118(v75 + v82[10], v115, v117);
  }

  v161 = 9;
  sub_22CFFCA30();
  sub_22D016DAC();
  *(v159 + v129[12]) = v160;
  v161 = 10;
  sub_22CFFCA84();
  sub_22D016DAC();
  *(v159 + v129[13]) = v160;
  LOBYTE(v160) = 11;
  sub_22CF0B598(&qword_28143F6F0, MEMORY[0x277CB9250]);
  sub_22D016DAC();
  (*(v150 + 32))(v159 + v129[14], v132, v151);
  LOBYTE(v160) = 12;
  sub_22CF0B598(&qword_27D9F3C70, MEMORY[0x277CB9378]);
  sub_22D016D7C();
  sub_22CFFCAD8(v131, v159 + v158);
  LOBYTE(v160) = 13;
  v119 = sub_22D016D5C();
  v121 = v120;
  v122 = v159;
  v123 = (v159 + v129[16]);
  (*(v156 + 8))(v125, v146);
  *v123 = v119;
  v123[1] = v121;
  sub_22CEFEB00(v122, v130, type metadata accessor for Activity);
  __swift_destroy_boxed_opaque_existential_1Tm(v157);
  return sub_22CEFD754(v122, type metadata accessor for Activity);
}

unint64_t sub_22CFFBF70()
{
  result = qword_27D9F3C50;
  if (!qword_27D9F3C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9F3C50);
  }

  return result;
}

uint64_t sub_22CFFBFC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22D014EFC();
  v75 = *(v4 - 8);
  v5 = *(v75 + 64);
  v7 = MEMORY[0x28223BE20](v4 - 8, v6);
  v9 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v10);
  v74 = &v61 - v11;
  v76 = sub_22D0149AC();
  v68 = *(v76 - 8);
  v12 = *(v68 + 64);
  v14 = MEMORY[0x28223BE20](v76, v13);
  v69 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v16);
  v67 = &v61 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3828, &qword_22D01BD10);
  v19 = *(*(v18 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v18 - 8, v20);
  result = MEMORY[0x28223BE20](v21, v22);
  v26 = &v61 - v24;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v70 = v25;
  v66 = v9;
  v27 = 0;
  v64 = a1;
  v28 = *(a1 + 64);
  v61 = a1 + 64;
  v29 = 1 << *(a1 + 32);
  v30 = -1;
  if (v29 < 64)
  {
    v30 = ~(-1 << v29);
  }

  v31 = v30 & v28;
  v32 = (v29 + 63) >> 6;
  v62 = v32;
  v63 = v68 + 16;
  v71 = &v61 - v24;
  v72 = (v68 + 32);
  v65 = (v68 + 8);
  while (v31)
  {
    v73 = (v31 - 1) & v31;
    v33 = __clz(__rbit64(v31)) | (v27 << 6);
LABEL_16:
    v39 = v64;
    v41 = v67;
    v40 = v68;
    v42 = v76;
    (*(v68 + 16))(v67, *(v64 + 48) + *(v68 + 72) * v33, v76);
    v43 = v74;
    sub_22CEFEB00(*(v39 + 56) + *(v75 + 72) * v33, v74, MEMORY[0x277CB9790]);
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3830, &unk_22D01BD18);
    v45 = *(v44 + 48);
    v46 = *(v40 + 32);
    v36 = v70;
    v46(v70, v41, v42);
    sub_22CF033C4(v43, v36 + v45);
    (*(*(v44 - 8) + 56))(v36, 0, 1, v44);
    v26 = v71;
    v32 = v62;
LABEL_17:
    sub_22CF03428(v36, v26);
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3830, &unk_22D01BD18);
    v48 = (*(*(v47 - 8) + 48))(v26, 1, v47);
    v49 = v48 == 1;
    if (v48 == 1)
    {
      return v49;
    }

    v50 = *(v47 + 48);
    v51 = v69;
    v52 = v76;
    (*v72)(v69, v26, v76);
    v53 = &v26[v50];
    v54 = v66;
    sub_22CF033C4(v53, v66);
    v55 = sub_22CEFF728(v51);
    LOBYTE(v50) = v56;
    (*v65)(v51, v52);
    if ((v50 & 1) == 0)
    {
      sub_22CEFD754(v54, MEMORY[0x277CB9790]);
      return 0;
    }

    v57 = v74;
    v58 = MEMORY[0x277CB9790];
    sub_22CEFEB00(*(a2 + 56) + *(v75 + 72) * v55, v74, MEMORY[0x277CB9790]);
    v59 = MEMORY[0x2318C4040](v57, v54);
    sub_22CEFD754(v57, v58);
    result = sub_22CEFD754(v54, v58);
    v26 = v71;
    v31 = v73;
    if ((v59 & 1) == 0)
    {
      return v49;
    }
  }

  if (v32 <= v27 + 1)
  {
    v34 = v27 + 1;
  }

  else
  {
    v34 = v32;
  }

  v35 = v34 - 1;
  v36 = v70;
  while (1)
  {
    v37 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v37 >= v32)
    {
      v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3830, &unk_22D01BD18);
      (*(*(v60 - 8) + 56))(v36, 1, 1, v60);
      v73 = 0;
      v27 = v35;
      goto LABEL_17;
    }

    v38 = *(v61 + 8 * v37);
    ++v27;
    if (v38)
    {
      v73 = (v38 - 1) & v38;
      v33 = __clz(__rbit64(v38)) | (v37 << 6);
      v27 = v37;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22CFFC554(void *a1, void *a2)
{
  v4 = sub_22D01486C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v48[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F26E0, &unk_22D018F80);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8, v12);
  v14 = &v48[-v13];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3CC0, &qword_22D01CA10);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15, v17);
  v19 = &v48[-v18];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_22D016DFC() & 1) == 0)
  {
    return 0;
  }

  v20 = type metadata accessor for Activity();
  if ((MEMORY[0x2318C3F60](a1 + v20[5], a2 + v20[5]) & 1) == 0)
  {
    return 0;
  }

  v21 = v20[6];
  if ((sub_22D014FEC() & 1) == 0)
  {
    return 0;
  }

  if ((sub_22CFFBFC4(*(a1 + v20[7]), *(a2 + v20[7])) & 1) == 0)
  {
    return 0;
  }

  if ((sub_22CFFBFC4(*(a1 + v20[8]), *(a2 + v20[8])) & 1) == 0)
  {
    return 0;
  }

  if ((sub_22CF75904(*(a1 + v20[9]), *(a2 + v20[9])) & 1) == 0)
  {
    return 0;
  }

  v22 = v20[10];
  if ((sub_22D0142CC() & 1) == 0)
  {
    return 0;
  }

  v23 = v20[11];
  if ((sub_22D0142CC() & 1) == 0)
  {
    return 0;
  }

  v24 = v20[12];
  v25 = *(a1 + v24);
  v26 = *(a2 + v24);
  if (v25)
  {
    v27 = 1752397168;
  }

  else
  {
    v27 = 6910049;
  }

  if (v25)
  {
    v28 = 0xE400000000000000;
  }

  else
  {
    v28 = 0xE300000000000000;
  }

  if (v26)
  {
    v29 = 1752397168;
  }

  else
  {
    v29 = 6910049;
  }

  if (v26)
  {
    v30 = 0xE400000000000000;
  }

  else
  {
    v30 = 0xE300000000000000;
  }

  if (v27 == v29 && v28 == v30)
  {
  }

  else
  {
    v50 = v30;
    v49 = sub_22D016DFC();

    if ((v49 & 1) == 0)
    {
      return 0;
    }
  }

  v31 = v20[13];
  v32 = *(a1 + v31);
  v33 = *(a1 + v31 + 8);
  v34 = (a2 + v31);
  v35 = *v34;
  v36 = v34[1];
  if ((sub_22D014F5C() & 1) == 0 || (MEMORY[0x2318C37C0](a1 + v20[14], a2 + v20[14]) & 1) == 0)
  {
    return 0;
  }

  v37 = v20[15];
  v38 = *(v15 + 48);
  sub_22CF0B9D0(a1 + v37, v19);
  v50 = v38;
  sub_22CF0B9D0(a2 + v37, &v19[v38]);
  v39 = *(v5 + 48);
  if (v39(v19, 1, v4) != 1)
  {
    sub_22CF0B9D0(v19, v14);
    if (v39(&v19[v50], 1, v4) != 1)
    {
      (*(v5 + 32))(v9, &v19[v50], v4);
      sub_22CF0B598(&qword_27D9F3CC8, MEMORY[0x277CB9378]);
      v41 = sub_22D01665C();
      v42 = *(v5 + 8);
      v42(v9, v4);
      v42(v14, v4);
      sub_22CEEC3D8(v19, &qword_27D9F26E0, &unk_22D018F80);
      if ((v41 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_38;
    }

    (*(v5 + 8))(v14, v4);
LABEL_34:
    sub_22CEEC3D8(v19, &qword_27D9F3CC0, &qword_22D01CA10);
    return 0;
  }

  if (v39(&v19[v50], 1, v4) != 1)
  {
    goto LABEL_34;
  }

  sub_22CEEC3D8(v19, &qword_27D9F26E0, &unk_22D018F80);
LABEL_38:
  v43 = v20[16];
  v44 = (a1 + v43);
  v45 = *(a1 + v43 + 8);
  v46 = (a2 + v43);
  v47 = v46[1];
  if (v45)
  {
    if (v47 && (*v44 == *v46 && v45 == v47 || (sub_22D016DFC() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v47)
  {
    return 1;
  }

  return 0;
}

unint64_t sub_22CFFCA30()
{
  result = qword_27D9F3C60;
  if (!qword_27D9F3C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9F3C60);
  }

  return result;
}

unint64_t sub_22CFFCA84()
{
  result = qword_27D9F3C68;
  if (!qword_27D9F3C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9F3C68);
  }

  return result;
}

uint64_t sub_22CFFCAD8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F26E0, &unk_22D018F80);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_22CFFCB48()
{
  result = qword_27D9F3C88;
  if (!qword_27D9F3C88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D9F2350, &qword_22D018978);
    sub_22CF0B598(&qword_281443998, MEMORY[0x277CB9790]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9F3C88);
  }

  return result;
}

uint64_t sub_22CFFCBFC(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D9F26E8, &qword_22D018F90);
    sub_22CF0B598(a2, MEMORY[0x277CB9350]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_22CFFCC98()
{
  result = qword_27D9F3C90;
  if (!qword_27D9F3C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9F3C90);
  }

  return result;
}

unint64_t sub_22CFFCCEC()
{
  result = qword_27D9F3C98;
  if (!qword_27D9F3C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9F3C98);
  }

  return result;
}

unint64_t sub_22CFFCD40()
{
  result = qword_27D9F3CA0;
  if (!qword_27D9F3CA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D9F26E0, &unk_22D018F80);
    sub_22CF0B598(&qword_27D9F3CA8, MEMORY[0x277CB9378]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9F3CA0);
  }

  return result;
}

unint64_t sub_22CFFCDF4()
{
  result = qword_27D9F3CB8;
  if (!qword_27D9F3CB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D9F3CB0, &qword_22D01CA08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9F3CB8);
  }

  return result;
}

unint64_t sub_22CFFCE70()
{
  result = qword_27D9F3CD0;
  if (!qword_27D9F3CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9F3CD0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Activity.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 13;
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

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Activity.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_22CFFD018()
{
  result = qword_27D9F3CD8;
  if (!qword_27D9F3CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9F3CD8);
  }

  return result;
}

unint64_t sub_22CFFD070()
{
  result = qword_27D9F3CE0;
  if (!qword_27D9F3CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9F3CE0);
  }

  return result;
}

unint64_t sub_22CFFD0C8()
{
  result = qword_27D9F3CE8;
  if (!qword_27D9F3CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9F3CE8);
  }

  return result;
}

uint64_t sub_22CFFD11C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_22D016DFC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74736575716572 && a2 == 0xE700000000000000 || (sub_22D016DFC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6574736575716572 && a2 == 0xE900000000000072 || (sub_22D016DFC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x726154656E656373 && a2 == 0xEC00000073746567 || (sub_22D016DFC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x800000022D01E8C0 == a2 || (sub_22D016DFC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x5472657474616C70 && a2 == 0xED00007465677261 || (sub_22D016DFC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000016 && 0x800000022D01E8E0 == a2 || (sub_22D016DFC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x7461447472617473 && a2 == 0xE900000000000065 || (sub_22D016DFC() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x4464657461657263 && a2 == 0xEB00000000657461 || (sub_22D016DFC() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6E6F697461657263 && a2 == 0xEE00656372756F53 || (sub_22D016DFC() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000010 && 0x800000022D01E870 == a2 || (sub_22D016DFC() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x64616F6C796170 && a2 == 0xE700000000000000 || (sub_22D016DFC() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x704F676E69646E65 && a2 == 0xED0000736E6F6974 || (sub_22D016DFC() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000010 && 0x800000022D01E920 == a2)
  {

    return 13;
  }

  else
  {
    v6 = sub_22D016DFC();

    if (v6)
    {
      return 13;
    }

    else
    {
      return 14;
    }
  }
}

uint64_t sub_22CFFD5B0()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 5);
  v4 = v0[10];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 11);

  return swift_deallocClassInstance();
}

void sub_22CFFD634(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*(*v1 + 80) + 16);
  os_unfair_lock_lock(v4);
  swift_beginAccess();
  sub_22CEE3A84(v3 + 88, a1);
  os_unfair_lock_unlock(v4);
}

void sub_22CFFD6AC()
{
  sub_22D01534C();
  if (v0 <= 0x3F)
  {
    sub_22D0154EC();
    if (v1 <= 0x3F)
    {
      sub_22CFFD798();
      if (v2 <= 0x3F)
      {
        sub_22D01430C();
        if (v3 <= 0x3F)
        {
          sub_22CFFD7F0();
          if (v4 <= 0x3F)
          {
            sub_22D01555C();
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_22CFFD798()
{
  if (!qword_28143FB98)
  {
    sub_22D01539C();
    v0 = sub_22D016A8C();
    if (!v1)
    {
      atomic_store(v0, &qword_28143FB98);
    }
  }
}

void sub_22CFFD7F0()
{
  if (!qword_28143D938)
  {
    v0 = sub_22D016A8C();
    if (!v1)
    {
      atomic_store(v0, &qword_28143D938);
    }
  }
}

uint64_t sub_22CFFD840()
{
  sub_22CF460CC(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));
  v1 = *(v0 + 72);

  return swift_deallocClassInstance();
}

void *sub_22CFFD8AC()
{
  v212 = sub_22D01495C();
  v245 = *(v212 - 8);
  v1 = *(v245 + 64);
  MEMORY[0x28223BE20](v212, v2);
  v211 = &v182 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v223 = sub_22D01486C();
  v242 = *(v223 - 8);
  v4 = *(v242 + 64);
  MEMORY[0x28223BE20](v223, v5);
  v213 = &v182 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2648, &unk_22D018BC0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v220 = &v182 - v10;
  v219 = sub_22D01461C();
  v239 = *(v219 - 8);
  v11 = v239[8];
  MEMORY[0x28223BE20](v219, v12);
  v218 = &v182 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F26E0, &unk_22D018F80);
  v15 = *(*(v14 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v14 - 8, v16);
  v217 = &v182 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v19);
  v222 = &v182 - v20;
  v231 = sub_22D01430C();
  v21 = *(v231 - 8);
  v22 = *(v21 + 64);
  v24 = MEMORY[0x28223BE20](v231, v23);
  v216 = &v182 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v24, v26);
  v210 = &v182 - v28;
  MEMORY[0x28223BE20](v27, v29);
  v229 = &v182 - v30;
  v234 = type metadata accessor for ActivityParticipantEvent(0);
  v226 = *(v234 - 8);
  v31 = *(v226 + 64);
  v33 = MEMORY[0x28223BE20](v234, v32);
  v205 = &v182 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x28223BE20](v33, v35);
  v204 = &v182 - v37;
  v39 = MEMORY[0x28223BE20](v36, v38);
  v225 = &v182 - v40;
  MEMORY[0x28223BE20](v39, v41);
  v232 = &v182 - v42;
  v236 = sub_22D01483C();
  v43 = *(v236 - 8);
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v236, v45);
  v235 = &v182 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for Activity();
  v244 = *(v47 - 8);
  v48 = *(v244 + 64);
  v50 = MEMORY[0x28223BE20](v47, v49);
  v52 = (&v182 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0));
  v54 = MEMORY[0x28223BE20](v50, v53);
  v203 = (&v182 - v55);
  v57 = MEMORY[0x28223BE20](v54, v56);
  v202 = (&v182 - v58);
  v60 = MEMORY[0x28223BE20](v57, v59);
  v62 = (&v182 - v61);
  v64 = MEMORY[0x28223BE20](v60, v63);
  v66 = (&v182 - v65);
  MEMORY[0x28223BE20](v64, v67);
  v243 = &v182 - v68;
  v69 = v0[7];
  v70 = v0[8];
  v228 = v0;
  v71 = __swift_project_boxed_opaque_existential_1(v0 + 4, v69);
  v72 = *(v69 - 8);
  v73 = *(v72 + 64);
  MEMORY[0x28223BE20](v71, v71);
  v75 = &v182 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v72 + 16))(v75);
  v76 = (*(v70 + 8))(v69, v70);
  v77 = v69;
  v78 = v52;
  (*(v72 + 8))(v75, v77);
  v79 = 1 << *(v76 + 32);
  v80 = -1;
  if (v79 < 64)
  {
    v80 = ~(-1 << v79);
  }

  v81 = v80 & *(v76 + 64);
  v82 = (v79 + 63) >> 6;
  v233 = v43 + 16;
  v230 = (v21 + 8);
  v221 = (v242 + 48);
  v209 = (v242 + 32);
  v208 = (v245 + 8);
  v201 = (v242 + 16);
  v207 = (v242 + 8);
  v83 = v47;
  v224 = v43;
  v227 = (v43 + 8);
  v215 = (v239 + 1);
  v214 = (v21 + 48);
  v206 = (v21 + 32);
  v245 = v76;
  v84 = v76 + 64;

  v86 = 0;
  v237 = MEMORY[0x277D84F90];
  *&v87 = 136446210;
  v238 = v87;
  v239 = v62;
  v240 = v47;
  v241 = v66;
  v242 = v82;
  while (v81)
  {
LABEL_11:
    v89 = __clz(__rbit64(v81));
    v81 &= v81 - 1;
    v90 = v243;
    sub_22CF0CCBC(*(v245 + 56) + *(v244 + 72) * (v89 | (v86 << 6)), v243, type metadata accessor for Activity);
    sub_22CF0A72C(v90, v66, type metadata accessor for Activity);
    v91 = *(v66 + v83[9]);
    if (*(v91 + 16))
    {
      v101 = v91 + ((*(v224 + 80) + 32) & ~*(v224 + 80));
      v198 = *(v224 + 16);
      v198(v235, v101, v236);
      if (qword_28143FB58 != -1)
      {
        swift_once();
      }

      v102 = sub_22D01637C();
      v103 = __swift_project_value_buffer(v102, qword_281444498);
      sub_22CF0CCBC(v66, v62, type metadata accessor for Activity);
      v193 = v103;
      v104 = sub_22D01636C();
      v105 = sub_22D01690C();
      v106 = os_log_type_enabled(v104, v105);
      v199 = v78;
      if (v106)
      {
        v107 = swift_slowAlloc();
        v108 = swift_slowAlloc();
        v246 = v108;
        *v107 = v238;
        v109 = *v62;
        v110 = v62[1];

        sub_22CF0F640(v62, type metadata accessor for Activity);
        v111 = sub_22CEEE31C(v109, v110, &v246);
        v83 = v240;

        *(v107 + 4) = v111;
        _os_log_impl(&dword_22CEE1000, v104, v105, "Adding start event for reloaded activity: %{public}s", v107, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v108);
        v112 = v108;
        v66 = v241;
        MEMORY[0x2318C6860](v112, -1, -1);
        MEMORY[0x2318C6860](v107, -1, -1);
      }

      else
      {

        sub_22CF0F640(v62, type metadata accessor for Activity);
      }

      v113 = v66[1];
      v196 = *v66;
      v200 = v113;
      v114 = (v66 + v83[13]);
      v116 = *v114;
      v115 = v114[1];
      v195 = v116;
      v197 = v115;
      v117 = v234;
      v118 = v232;
      sub_22CF0CCBC(v66, &v232[*(v234 + 24)], type metadata accessor for Activity);
      v191 = type metadata accessor for ActivityParticipantEvent.EventType(0);
      swift_storeEnumTagMultiPayload();
      v198(&v118[*(v117 + 28)], v235, v236);
      v119 = *(v117 + 36);
      v120 = v83[14];
      v121 = sub_22D0146BC();
      v122 = *(v121 - 8);
      v123 = *(v122 + 16);
      v194 = v120;
      v189 = v122 + 16;
      v188 = v123;
      v123(&v118[v119], v66 + v120, v121);
      v124 = *(v122 + 56);
      v192 = v121;
      v190 = v122 + 56;
      v187 = v124;
      v124(&v118[v119], 0, 1, v121);
      v125 = v200;
      *v118 = v196;
      *(v118 + 1) = v125;
      v126 = v197;
      *(v118 + 2) = v195;
      *(v118 + 3) = v126;
      v127 = v234;
      v128 = &v118[*(v234 + 32)];
      *v128 = v228;
      *(v128 + 1) = &off_28402E5B8;
      v118[*(v127 + 40)] = 0;
      v129 = v225;
      sub_22CF0CCBC(v118, v225, type metadata accessor for ActivityParticipantEvent);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v237 = sub_22CFCE570(0, v237[2] + 1, 1, v237);
      }

      v78 = v199;
      v131 = v237[2];
      v130 = v237[3];
      if (v131 >= v130 >> 1)
      {
        v237 = sub_22CFCE570(v130 > 1, v131 + 1, 1, v237);
      }

      v132 = v237;
      v237[2] = v131 + 1;
      v186 = (*(v226 + 80) + 32) & ~*(v226 + 80);
      v185 = *(v226 + 72);
      sub_22CF0A72C(v129, v132 + v186 + v185 * v131, type metadata accessor for ActivityParticipantEvent);
      v133 = v83[10];
      v134 = v229;
      sub_22D0142DC();
      sub_22CFFF79C();
      v135 = v231;
      LOBYTE(v133) = sub_22D01663C();
      v136 = *v230;
      (*v230)(v134, v135);
      if ((v133 & 1) == 0)
      {
        goto LABEL_33;
      }

      v184 = v136;
      v137 = v222;
      sub_22CEEB6DC(v66 + v83[15], v222, &qword_27D9F26E0, &unk_22D018F80);
      v138 = *v221;
      v139 = v223;
      v140 = (*v221)(v137, 1, v223);
      sub_22CEEC3D8(v137, &qword_27D9F26E0, &unk_22D018F80);
      if (v140 == 1)
      {
        v141 = v218;
        sub_22D01467C();
        v142 = v220;
        sub_22D01460C();
        (*v215)(v141, v219);
        v143 = v231;
        if ((*v214)(v142, 1, v231) == 1)
        {
          sub_22CEEC3D8(v142, &qword_27D9F2648, &unk_22D018BC0);
        }

        else
        {
          v145 = v210;
          (*v206)(v210, v142, v143);
          v146 = v229;
          sub_22D0142DC();
          sub_22D01428C();
          v147 = v184;
          v184(v146, v143);
          v147(v145, v143);
        }

        v83 = v240;
        v66 = v241;
        v78 = v199;
LABEL_33:
        sub_22CF0F640(v232, type metadata accessor for ActivityParticipantEvent);
        (*v227)(v235, v236);
        result = sub_22CF0F640(v66, type metadata accessor for Activity);
LABEL_34:
        v62 = v239;
        v82 = v242;
      }

      else
      {
        v66 = v241;
        v144 = v217;
        sub_22CEEB6DC(v241 + v240[15], v217, &qword_27D9F26E0, &unk_22D018F80);
        if (v138(v144, 1, v139) == 1)
        {
          sub_22CF0F640(v232, type metadata accessor for ActivityParticipantEvent);
          (*v227)(v235, v236);
          sub_22CF0F640(v66, type metadata accessor for Activity);
          result = sub_22CEEC3D8(v144, &qword_27D9F26E0, &unk_22D018F80);
          v83 = v240;
          v78 = v199;
          goto LABEL_34;
        }

        v148 = v213;
        (*v209)(v213, v144, v139);
        v149 = v211;
        sub_22D01484C();
        sub_22D01491C();
        (*v208)(v149, v212);
        v150 = v229;
        sub_22D0142DC();
        LOBYTE(v149) = sub_22D01428C();
        v151 = v231;
        v184(v150, v231);
        v62 = v239;
        if (v149)
        {
          v152 = v202;
          sub_22CF0CCBC(v241, v202, type metadata accessor for Activity);
          v153 = sub_22D01636C();
          v154 = sub_22D01690C();
          if (os_log_type_enabled(v153, v154))
          {
            v155 = swift_slowAlloc();
            v200 = swift_slowAlloc();
            v246 = v200;
            *v155 = v238;
            v156 = *v152;
            v157 = v152[1];

            sub_22CF0F640(v152, type metadata accessor for Activity);
            v158 = v156;
            v62 = v239;
            v159 = sub_22CEEE31C(v158, v157, &v246);

            *(v155 + 4) = v159;
            _os_log_impl(&dword_22CEE1000, v153, v154, "Reloaded activity is already obsolete: %{public}s", v155, 0xCu);
            v160 = v200;
            __swift_destroy_boxed_opaque_existential_1Tm(v200);
            MEMORY[0x2318C6860](v160, -1, -1);
            MEMORY[0x2318C6860](v155, -1, -1);

            v161 = v216;
            v162 = v231;
          }

          else
          {

            sub_22CF0F640(v152, type metadata accessor for Activity);
            v161 = v216;
            v162 = v151;
          }

          v184(v161, v162);
          (*v207)(v148, v223);
          sub_22CF0F640(v232, type metadata accessor for ActivityParticipantEvent);
          (*v227)(v235, v236);
          v78 = v199;
          v66 = v241;
          v82 = v242;
          result = sub_22CF0F640(v241, type metadata accessor for Activity);
          v83 = v240;
        }

        else
        {
          v163 = v203;
          sub_22CF0CCBC(v241, v203, type metadata accessor for Activity);
          v164 = sub_22D01636C();
          v165 = sub_22D01690C();
          if (os_log_type_enabled(v164, v165))
          {
            v166 = swift_slowAlloc();
            v167 = swift_slowAlloc();
            v246 = v167;
            *v166 = v238;
            v183 = *v163;
            LODWORD(v193) = v165;
            v168 = v163[1];

            sub_22CF0F640(v163, type metadata accessor for Activity);
            v169 = sub_22CEEE31C(v183, v168, &v246);

            *(v166 + 4) = v169;
            _os_log_impl(&dword_22CEE1000, v164, v193, "Adding restored end event for reloaded zombie activity: %{public}s", v166, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v167);
            MEMORY[0x2318C6860](v167, -1, -1);
            MEMORY[0x2318C6860](v166, -1, -1);
          }

          else
          {

            sub_22CF0F640(v163, type metadata accessor for Activity);
          }

          v170 = v234;
          v171 = v204;
          (*v201)(&v204[*(v234 + 24)], v148, v223);
          swift_storeEnumTagMultiPayload();
          v198(&v171[v170[7]], v235, v236);
          v172 = v170[9];
          v173 = v192;
          v188(&v171[v172], v241 + v194, v192);
          v187(&v171[v172], 0, 1, v173);
          v174 = v200;
          *v171 = v196;
          *(v171 + 1) = v174;
          v175 = v197;
          *(v171 + 2) = v195;
          *(v171 + 3) = v175;
          v176 = &v171[v170[8]];
          *v176 = v228;
          *(v176 + 1) = &off_28402E5B8;
          v171[v170[10]] = 0;
          sub_22CF0CCBC(v171, v205, type metadata accessor for ActivityParticipantEvent);
          v178 = v237[2];
          v177 = v237[3];

          if (v178 >= v177 >> 1)
          {
            v237 = sub_22CFCE570(v177 > 1, v178 + 1, 1, v237);
          }

          v78 = v199;
          v179 = v186;
          v180 = v185;
          sub_22CF0F640(v204, type metadata accessor for ActivityParticipantEvent);
          v184(v216, v231);
          (*v207)(v213, v223);
          sub_22CF0F640(v232, type metadata accessor for ActivityParticipantEvent);
          (*v227)(v235, v236);
          v181 = v237;
          v237[2] = v178 + 1;
          sub_22CF0A72C(v205, v181 + v179 + v178 * v180, type metadata accessor for ActivityParticipantEvent);
          v66 = v241;
          result = sub_22CF0F640(v241, type metadata accessor for Activity);
          v83 = v240;
          v82 = v242;
        }
      }
    }

    else
    {
      if (qword_28143FB58 != -1)
      {
        swift_once();
      }

      v92 = sub_22D01637C();
      __swift_project_value_buffer(v92, qword_281444498);
      sub_22CF0CCBC(v66, v78, type metadata accessor for Activity);
      v93 = sub_22D01636C();
      v94 = sub_22D0168EC();
      if (os_log_type_enabled(v93, v94))
      {
        v95 = swift_slowAlloc();
        v96 = swift_slowAlloc();
        v246 = v96;
        *v95 = v238;
        v97 = *v78;
        v98 = v78[1];

        sub_22CF0F640(v78, type metadata accessor for Activity);
        v99 = sub_22CEEE31C(v97, v98, &v246);
        v83 = v240;

        *(v95 + 4) = v99;
        v66 = v241;
        _os_log_impl(&dword_22CEE1000, v93, v94, "No sources exist for reloaded activity: %{public}s", v95, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v96);
        v100 = v96;
        v62 = v239;
        MEMORY[0x2318C6860](v100, -1, -1);
        MEMORY[0x2318C6860](v95, -1, -1);
      }

      else
      {

        sub_22CF0F640(v78, type metadata accessor for Activity);
      }

      v82 = v242;
      result = sub_22CF0F640(v66, type metadata accessor for Activity);
    }
  }

  while (1)
  {
    v88 = v86 + 1;
    if (__OFADD__(v86, 1))
    {
      break;
    }

    if (v88 >= v82)
    {

      return v237;
    }

    v81 = *(v84 + 8 * v88);
    ++v86;
    if (v81)
    {
      v86 = v88;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22CFFF108(uint64_t a1, uint64_t a2)
{
  v4 = *(*(v2 + 72) + 16);
  os_unfair_lock_lock(v4);
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  os_unfair_lock_unlock(v4);

  return swift_unknownObjectRelease();
}

uint64_t sub_22CFFF170()
{
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3840, &unk_22D01A2B0);
  v1 = *(*(v78 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v78, v2);
  v77 = &v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v76 = (&v67 - v7);
  v9 = MEMORY[0x28223BE20](v6, v8);
  v75 = (&v67 - v10);
  v12 = MEMORY[0x28223BE20](v9, v11);
  v74 = (&v67 - v13);
  MEMORY[0x28223BE20](v12, v14);
  v73 = &v67 - v15;
  v16 = v0[7];
  v17 = v0[8];
  v18 = __swift_project_boxed_opaque_existential_1(v0 + 4, v16);
  v19 = *(v16 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18, v18);
  v22 = &v67 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v22);
  v23 = (*(v17 + 8))(v16, v17);
  (*(v19 + 8))(v22, v16);
  v24 = *(v23 + 16);
  if (v24)
  {
    v86 = MEMORY[0x277D84F90];
    sub_22CF4414C(0, v24, 0);
    v25 = v86;
    v26 = v23 + 64;
    v27 = -1 << *(v23 + 32);
    v28 = sub_22D016AEC();
    v29 = 0;
    v30 = *(v23 + 36);
    v68 = v23 + 72;
    v69 = v24;
    v70 = v30;
    v71 = v23 + 64;
    v72 = v23;
    do
    {
      if (v28 < 0 || v28 >= 1 << *(v23 + 32))
      {
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
        result = swift_unexpectedError();
        __break(1u);
        return result;
      }

      if ((*(v26 + 8 * (v28 >> 6)) & (1 << v28)) == 0)
      {
        goto LABEL_26;
      }

      if (v30 != *(v23 + 36))
      {
        goto LABEL_27;
      }

      v80 = 1 << v28;
      v81 = v28 >> 6;
      v79 = v29;
      v33 = v78;
      v34 = *(v78 + 48);
      v35 = *(v23 + 56);
      v36 = (*(v23 + 48) + 16 * v28);
      v38 = *v36;
      v37 = v36[1];
      v39 = type metadata accessor for Activity();
      v40 = v73;
      sub_22CF0CCBC(v35 + *(*(v39 - 8) + 72) * v28, &v73[v34], type metadata accessor for Activity);
      v85 = v25;
      v41 = v74;
      *v74 = v38;
      v41[1] = v37;
      v42 = *(v33 + 48);
      sub_22CF0A72C(&v40[v34], v41 + v42, type metadata accessor for Activity);
      v43 = v75;
      *v75 = v38;
      *(v43 + 8) = v37;
      sub_22CF0CCBC(v41 + v42, v43 + *(v33 + 48), type metadata accessor for Activity);
      v44 = v76;
      sub_22CEEB6DC(v43, v76, &unk_27D9F3840, &unk_22D01A2B0);
      v45 = *v44;
      v83 = v44[1];
      v84 = v45;
      v82 = *(v33 + 48);
      v46 = v77;
      sub_22CEEB6DC(v43, v77, &unk_27D9F3840, &unk_22D01A2B0);
      v47 = *(v46 + 8);
      swift_bridgeObjectRetain_n();

      v48 = *(v33 + 48);
      v49 = sub_22CF0B174();
      v51 = v50;
      sub_22CEEC3D8(v43, &unk_27D9F3840, &unk_22D01A2B0);
      sub_22CF0F640(v46 + v48, type metadata accessor for Activity);
      sub_22CF0F640(v44 + v82, type metadata accessor for Activity);
      v52 = v41;
      v25 = v85;
      sub_22CEEC3D8(v52, &unk_27D9F3840, &unk_22D01A2B0);
      v86 = v25;
      v54 = *(v25 + 16);
      v53 = *(v25 + 24);
      if (v54 >= v53 >> 1)
      {
        sub_22CF4414C((v53 > 1), v54 + 1, 1);
        v25 = v86;
      }

      *(v25 + 16) = v54 + 1;
      v55 = (v25 + 48 * v54);
      v56 = v83;
      v55[4] = v84;
      v55[5] = v56;
      v55[6] = v49;
      v55[7] = v51;
      v55[9] = MEMORY[0x277D837D0];
      v23 = v72;
      v31 = 1 << *(v72 + 32);
      if (v28 >= v31)
      {
        goto LABEL_28;
      }

      v26 = v71;
      v57 = *(v71 + 8 * v81);
      if ((v57 & v80) == 0)
      {
        goto LABEL_29;
      }

      LODWORD(v30) = v70;
      if (v70 != *(v72 + 36))
      {
        goto LABEL_30;
      }

      v58 = v57 & (-2 << (v28 & 0x3F));
      if (v58)
      {
        v31 = __clz(__rbit64(v58)) | v28 & 0x7FFFFFFFFFFFFFC0;
        v32 = v69;
      }

      else
      {
        v59 = v81 << 6;
        v60 = v81 + 1;
        v32 = v69;
        v61 = (v68 + 8 * v81);
        while (v60 < (v31 + 63) >> 6)
        {
          v63 = *v61++;
          v62 = v63;
          v59 += 64;
          ++v60;
          if (v63)
          {
            sub_22CF44CF8(v28, v70, 0);
            v31 = __clz(__rbit64(v62)) + v59;
            goto LABEL_4;
          }
        }

        sub_22CF44CF8(v28, v70, 0);
      }

LABEL_4:
      v29 = v79 + 1;
      v28 = v31;
    }

    while (v79 + 1 != v32);

    if (!*(v25 + 16))
    {
      goto LABEL_23;
    }
  }

  else
  {

    if (!*(MEMORY[0x277D84F90] + 16))
    {
LABEL_23:
      v64 = MEMORY[0x277D84F98];
      goto LABEL_24;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F27A0, &qword_22D019090);
  v64 = sub_22D016D3C();
LABEL_24:
  v86 = v64;

  sub_22CF623EC(v65, 1, &v86);

  return v86;
}

unint64_t sub_22CFFF79C()
{
  result = qword_281443A30;
  if (!qword_281443A30)
  {
    sub_22D01430C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281443A30);
  }

  return result;
}

uint64_t sub_22CFFF7F4()
{
  v1 = OBJC_IVAR____TtC11SessionCore20XPCOutputParticipant_ossignposter;
  v2 = sub_22D01633C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 12);
  v4 = *(*v0 + 26);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for XPCOutputParticipant()
{
  result = qword_281440E60;
  if (!qword_281440E60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22CFFF8EC()
{
  result = sub_22D01633C();
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

void *sub_22CFFF9E4()
{
  result = sub_22CFF7EE0(&unk_284029130);
  off_28143E698 = result;
  return result;
}

void sub_22CFFFA0C(uint64_t a1, char a2, uint64_t a3)
{
  v4 = v3;
  *(v3 + 32) = MEMORY[0x277D84F98];
  if (a2)
  {
    v6 = [objc_opt_self() standardUserDefaults];
    v7 = sub_22D01666C();
    [v6 doubleForKey_];
    v9 = v8;

    if (v9 <= 0.0)
    {
      v9 = 3600.0;
    }

    if (!a3)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v9 = *&a1;
    if (!a3)
    {
LABEL_10:
      v13 = 0;
      v12 = 0;
      v14 = 1;
      v15 = 1;
      goto LABEL_16;
    }
  }

  if (!*(a3 + 16))
  {
    goto LABEL_10;
  }

  v10 = sub_22CF259D0(1);
  if (v11)
  {
    v12 = *(*(a3 + 56) + 8 * v10);
  }

  else
  {
    v12 = 0;
  }

  v15 = v11 ^ 1;
  if (*(a3 + 16) && (v16 = sub_22CF259D0(0), (v17 & 1) != 0))
  {
    v14 = 0;
    v13 = *(*(a3 + 56) + 8 * v16);
  }

  else
  {
    v13 = 0;
    v14 = 1;
  }

LABEL_16:
  if (qword_28143E690 != -1)
  {
    swift_once();
  }

  v18 = off_28143E698;
  if (!*(off_28143E698 + 2))
  {
    __break(1u);
    goto LABEL_31;
  }

  v19 = sub_22CF259D0(1);
  if ((v20 & 1) == 0)
  {
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (v15)
  {
    v21 = *(v18[7] + 8 * v19);
    v22 = [objc_opt_self() standardUserDefaults];
    v23 = sub_22D01666C();
    v12 = [v22 integerForKey_];

    if (v12 <= 0)
    {
      v12 = v21;
    }
  }

  if (!v18[2])
  {
    goto LABEL_32;
  }

  v24 = sub_22CF259D0(0);
  v26 = v25;

  if ((v26 & 1) == 0)
  {
LABEL_33:
    __break(1u);
    return;
  }

  if (v14)
  {
    v27 = *(v18[7] + 8 * v24);
    v28 = [objc_opt_self() standardUserDefaults];
    v29 = sub_22D01666C();
    v30 = [v28 integerForKey_];

    if (v30 <= 0)
    {
      v13 = v27;
    }

    else
    {
      v13 = v30;
    }
  }

  *(v4 + 24) = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3CF8, qword_22D01CDF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22D0189F0;
  *(inited + 32) = 0;
  *(inited + 40) = v13;
  *(inited + 48) = 1;
  *(inited + 56) = v12;
  v32 = sub_22CFF7EE0(inited);
  swift_setDeallocating();
  *(v4 + 16) = v32;
}

uint64_t sub_22CFFFD34()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t sub_22CFFFD98()
{
  result = sub_22D01430C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_22CFFFE20()
{
  result = qword_28143EBB0;
  if (!qword_28143EBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28143EBB0);
  }

  return result;
}

unint64_t *sub_22CFFFE74(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
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

    v8 = sub_22CF25E70(v7, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_22CFFFF74()
{
  result = sub_22D01430C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_22CFFFFF4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22D01430C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v8 = MEMORY[0x28223BE20](v4, v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v26 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2648, &unk_22D018BC0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8, v16);
  v18 = &v26 - v17;
  v19 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v20 = type metadata accessor for DefaultInputBackoffBudget();
  if (*(v19 + *(v20 + 20)))
  {
    (*(v5 + 56))(v18, 1, 1, v4);
  }

  else
  {
    v21 = *(v19 + *(v20 + 24));
    sub_22D01429C();
    sub_22D0142DC();
    v22 = sub_22D01427C();
    v23 = *(v5 + 8);
    v23(v10, v4);
    if (v22)
    {
      (*(v5 + 32))(v18, v13, v4);
      v24 = 0;
    }

    else
    {
      v23(v13, v4);
      v24 = 1;
    }

    (*(v5 + 56))(v18, v24, 1, v4);
    if ((*(v5 + 48))(v18, 1, v4) != 1)
    {
      return (*(v5 + 32))(a2, v18, v4);
    }
  }

  sub_22D01422C();
  result = (*(v5 + 48))(v18, 1, v4);
  if (result != 1)
  {
    return sub_22CEF7514(v18);
  }

  return result;
}

uint64_t sub_22D000294()
{
  v1 = sub_22D01430C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v5 = MEMORY[0x28223BE20](v1, v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v23 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2648, &unk_22D018BC0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8, v13);
  v15 = &v23 - v14;
  v16 = type metadata accessor for DefaultInputBackoffBudget();
  if (*(v0 + *(v16 + 20)))
  {
    (*(v2 + 56))(v15, 1, 1, v1);
LABEL_7:
    v21 = 0;
    goto LABEL_8;
  }

  v17 = *(v0 + *(v16 + 24));
  sub_22D01429C();
  sub_22D0142DC();
  v18 = sub_22D01427C();
  v19 = *(v2 + 8);
  v19(v7, v1);
  if (v18)
  {
    (*(v2 + 32))(v15, v10, v1);
    v20 = 0;
  }

  else
  {
    v19(v10, v1);
    v20 = 1;
  }

  v21 = 1;
  (*(v2 + 56))(v15, v20, 1, v1);
  if ((*(v2 + 48))(v15, 1, v1) == 1)
  {
    goto LABEL_7;
  }

LABEL_8:
  sub_22CEF7514(v15);
  return v21;
}

uint64_t sub_22D0004CC()
{
  v1 = sub_22D01430C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v5 = MEMORY[0x28223BE20](v1, v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v16 - v9;
  sub_22D0142DC();
  if (sub_22D01427C())
  {
    sub_22D01422C();
    (*(v2 + 40))(v0, v7, v1);
  }

  v11 = type metadata accessor for DefaultInputBackoffBudget();
  v12 = *(v0 + v11[6]);
  sub_22D01429C();
  v13 = sub_22D01428C();
  v14 = *(v2 + 8);
  v14(v7, v1);
  if ((v13 & 1) == 0)
  {
    return (v14)(v10, v1);
  }

  result = (*(v2 + 40))(v0, v10, v1);
  *(v0 + v11[5]) = *(v0 + v11[7]);
  return result;
}

BOOL sub_22D00067C(uint64_t a1, uint64_t a2)
{
  if ((sub_22D0142CC() & 1) != 0 && (v4 = type metadata accessor for DefaultInputBackoffBudget(), *(a1 + v4[5]) == *(a2 + v4[5])) && *(a1 + v4[6]) == *(a2 + v4[6]))
  {
    return *(a1 + v4[7]) == *(a2 + v4[7]);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22D000704()
{
  v1 = *(v0 + 18);
  if (*(v0 + 17))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return sub_22CEFD4D8(*v0, *(v0 + 8), v2 | *(v0 + 16));
}

uint64_t sub_22D00072C()
{
  v0 = sub_22D014F9C();
  v2 = v1;
  v3 = objc_allocWithZone(MEMORY[0x277CC1E70]);

  return v0;
}

uint64_t sub_22D000878@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a2;
  v3 = sub_22D01502C();
  v61 = *(v3 - 8);
  v62 = v3;
  v4 = *(v61 + 64);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v57 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v8);
  v10 = (&v56 - v9);
  v60 = sub_22D0145CC();
  v11 = *(v60 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v60, v13);
  v15 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_22D01481C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v20 = MEMORY[0x28223BE20](v16, v19);
  v56 = &v56 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v20, v22);
  v59 = &v56 - v24;
  MEMORY[0x28223BE20](v23, v25);
  v27 = (&v56 - v26);
  v28 = *(v17 + 16);
  v58 = a1;
  v28(&v56 - v26, a1, v16);
  v29 = (*(v17 + 88))(v27, v16);
  if (v29 == *MEMORY[0x277CB9330])
  {
    (*(v17 + 96))(v27, v16);
    v30 = (v27 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3158, &unk_22D01AEE0) + 48));
    v31 = *v30;
    v32 = v30[1];
    v33 = v60;
    (*(v11 + 32))(v15, v27, v60);
    sub_22CEFE530(v64, 1, v32, v10);
    sub_22CEFE9B4(v31, v32);
    sub_22D000E80(v15, v10, v63);
    (*(v61 + 8))(v10, v62);
    return (*(v11 + 8))(v15, v33);
  }

  else
  {
    v36 = v63;
    v35 = v64;
    if (v29 == *MEMORY[0x277CB9338])
    {
      (*(v17 + 96))(v27, v16);
      v37 = *v27;
      v38 = v27[1];
      v39 = v57;
      sub_22CEFE530(v35, 1, v38, v57);
      sub_22CEFE9B4(v37, v38);
      sub_22D001F3C(v39, v36);
      return (*(v61 + 8))(v39, v62);
    }

    else
    {
      if (qword_28143FB48 != -1)
      {
        swift_once();
      }

      v40 = sub_22D01637C();
      __swift_project_value_buffer(v40, qword_281444480);
      v41 = v59;
      v28(v59, v58, v16);
      v42 = sub_22D01636C();
      v43 = sub_22D0168EC();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v64 = v44;
        v65 = swift_slowAlloc();
        v66 = v65;
        *v44 = 136446210;
        v28(v56, v41, v16);
        v45 = sub_22D01669C();
        v46 = v41;
        v47 = v45;
        v49 = v48;
        v50 = *(v17 + 8);
        v50(v46, v16);
        v51 = sub_22CEEE31C(v47, v49, &v66);

        v52 = v64;
        *(v64 + 1) = v51;
        v53 = v43;
        v54 = v52;
        _os_log_impl(&dword_22CEE1000, v42, v53, "Unknown input: %{public}s", v52, 0xCu);
        v55 = v65;
        __swift_destroy_boxed_opaque_existential_1Tm(v65);
        MEMORY[0x2318C6860](v55, -1, -1);
        MEMORY[0x2318C6860](v54, -1, -1);
      }

      else
      {

        v50 = *(v17 + 8);
        v50(v41, v16);
      }

      type metadata accessor for PermissionsError();
      sub_22CEFF268(&qword_27D9F3150, type metadata accessor for PermissionsError);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      return (v50)(v27, v16);
    }
  }
}

uint64_t sub_22D000E80@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v166 = a2;
  v161 = a1;
  v157 = a3;
  v160 = sub_22D0145CC();
  v163 = *(v160 - 8);
  v4 = *(v163 + 64);
  v6 = MEMORY[0x28223BE20](v160, v5);
  v146 = v145 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6, v8);
  v148 = v145 - v10;
  MEMORY[0x28223BE20](v9, v11);
  v164 = v145 - v12;
  v13 = sub_22D01459C();
  v155 = *(v13 - 8);
  v156 = v13;
  v14 = *(v155 + 64);
  v16 = MEMORY[0x28223BE20](v13, v15);
  v154 = v145 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v18);
  v153 = (v145 - v19);
  v20 = sub_22D01502C();
  v167 = *(v20 - 8);
  v21 = v167[8];
  v23 = MEMORY[0x28223BE20](v20, v22);
  v147 = v145 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v23, v25);
  v149 = v145 - v27;
  v29 = MEMORY[0x28223BE20](v26, v28);
  v151 = v145 - v30;
  v32 = MEMORY[0x28223BE20](v29, v31);
  v34 = v145 - v33;
  MEMORY[0x28223BE20](v32, v35);
  v162 = v145 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F2358, &unk_22D018980);
  v38 = *(*(v37 - 8) + 64);
  MEMORY[0x28223BE20](v37 - 8, v39);
  v41 = v145 - v40;
  v42 = sub_22D0145EC();
  v43 = *(v42 - 8);
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v42, v45);
  v47 = v145 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for ContentSourceResolver();
  v152 = *(v48 + 28);
  sub_22D0022B4(v3 + v152, v41);
  if ((*(v43 + 48))(v41, 1, v42) == 1)
  {
    v159 = v43;
    v158 = v42;
    sub_22CEEC3D8(v41, &unk_27D9F2358, &unk_22D018980);
    v49 = v167[2];
    v165 = v20;
    v145[1] = v167 + 2;
    v49(v34, v3, v20);
    v50 = sub_22D014FEC();
    v51 = v34;
    v150 = v34;
    v162 = v49;
    if (v50)
    {
      v52 = v3;
      sub_22D014F9C();
      v166 = v53;
      v54 = v163;
      v55 = v164;
    }

    else
    {
      v54 = v163;
      v55 = v164;
      if (*(v3 + *(v48 + 20) + 17) != 1)
      {
        if (qword_28143FB48 != -1)
        {
          swift_once();
        }

        v90 = sub_22D01637C();
        __swift_project_value_buffer(v90, qword_281444480);
        v91 = v151;
        v92 = v165;
        v49(v151, v51, v165);
        v93 = sub_22D01636C();
        v94 = sub_22D0168EC();
        if (os_log_type_enabled(v93, v94))
        {
          v95 = swift_slowAlloc();
          v96 = swift_slowAlloc();
          v168 = v96;
          *v95 = 136380675;
          v97 = sub_22D014F9C();
          v98 = v91;
          v100 = v99;
          v101 = v167[1];
          v101(v98, v165);
          v102 = sub_22CEEE31C(v97, v100, &v168);

          *(v95 + 4) = v102;
          _os_log_impl(&dword_22CEE1000, v93, v94, "%{private}s is not entitled to set a custom push process", v95, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v96);
          v103 = v96;
          v104 = v101;
          MEMORY[0x2318C6860](v103, -1, -1);
          v105 = v95;
          v92 = v165;
          MEMORY[0x2318C6860](v105, -1, -1);
        }

        else
        {

          v104 = v167[1];
          v104(v91, v92);
        }

        type metadata accessor for PermissionsError();
        sub_22CEFF268(&qword_27D9F3150, type metadata accessor for PermissionsError);
        swift_allocError();
        (v162)(v115, v166, v92);
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        return (v104)(v150, v92);
      }

      v52 = v3;
      sub_22D014F9C();
      v166 = v72;
    }

    v73 = *(v54 + 16);
    v74 = v160;
    v73(v55, v161, v160);
    v75 = (*(v54 + 88))(v55, v74);
    if (v75 == *MEMORY[0x277CB9228])
    {
      (*(v54 + 96))(v55, v74);
      v76 = v55[1];
      v77 = (v52 + *(v48 + 20));
      v78 = v77[1];
      v79 = v162;
      if (v78)
      {
        v80 = *v55;
        v81 = v153;
        *v153 = *v77;
        v81[1] = v78;
        v81[2] = v80;
        v81[3] = v76;
        v83 = v155;
        v82 = v156;
        (*(v155 + 104))(v81, *MEMORY[0x277CB9218], v156);

LABEL_24:
        v88 = v150;
        v89 = v159;
        goto LABEL_25;
      }

      v111 = v150;
      if (qword_28143FB48 != -1)
      {
        swift_once();
      }

      v112 = sub_22D01637C();
      __swift_project_value_buffer(v112, qword_281444480);
      v113 = v149;
      v114 = v165;
      (v79)(v149, v111, v165);
      goto LABEL_38;
    }

    if (v75 == *MEMORY[0x277CB9230])
    {
      v86 = (v52 + *(v48 + 20));
      v87 = v86[1];
      v88 = v150;
      v89 = v159;
      if (v87)
      {
        v81 = v153;
        *v153 = *v86;
        v81[1] = v87;
        v83 = v155;
        v82 = v156;
        (*(v155 + 104))(v81, *MEMORY[0x277CB9210], v156);

LABEL_25:
        (*(v83 + 16))(v154, v81, v82);
        v106 = v157;
        sub_22D0145AC();
        (*(v83 + 8))(v81, v82);
        (v167[1])(v88, v165);
        v107 = v152;
        sub_22CEEC3D8(v52 + v152, &unk_27D9F2358, &unk_22D018980);
        v108 = v158;
        (*(v89 + 16))(v52 + v107, v106, v158);
        (*(v89 + 56))(v52 + v107, 0, 1, v108);
        v109 = *MEMORY[0x277CB9320];
        v110 = sub_22D01483C();
        return (*(*(v110 - 8) + 104))(v106, v109, v110);
      }

      if (qword_28143FB48 != -1)
      {
        swift_once();
      }

      v129 = sub_22D01637C();
      __swift_project_value_buffer(v129, qword_281444480);
      v113 = v147;
      v114 = v165;
      (v162)(v147, v88, v165);
LABEL_38:
      v130 = sub_22D01636C();
      v131 = sub_22D0168EC();
      v132 = os_log_type_enabled(v130, v131);
      v133 = v167;
      if (v132)
      {
        v134 = swift_slowAlloc();
        v135 = v113;
        v136 = swift_slowAlloc();
        v168 = v136;
        *v134 = 136380675;
        v137 = sub_22D014F9C();
        v139 = v138;
        v140 = v133[1];
        v140(v135, v165);
        v141 = sub_22CEEE31C(v137, v139, &v168);

        *(v134 + 4) = v141;
        _os_log_impl(&dword_22CEE1000, v130, v131, "%{private}s does not specify an APS environment name", v134, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v136);
        MEMORY[0x2318C6860](v136, -1, -1);
        v142 = v134;
        v114 = v165;
        MEMORY[0x2318C6860](v142, -1, -1);
      }

      else
      {

        v140 = v133[1];
        v140(v113, v114);
      }

      type metadata accessor for PermissionsError();
      sub_22CEFF268(&qword_27D9F3150, type metadata accessor for PermissionsError);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      return (v140)(v150, v114);
    }

    if (v75 == *MEMORY[0x277CB9238])
    {
      v83 = v155;
      v82 = v156;
      v81 = v153;
      (*(v155 + 104))(v153, *MEMORY[0x277CB9220], v156);
      goto LABEL_24;
    }

    if (qword_28143FB48 != -1)
    {
      swift_once();
    }

    v116 = sub_22D01637C();
    __swift_project_value_buffer(v116, qword_281444480);
    v117 = v148;
    v73(v148, v161, v74);
    v118 = sub_22D01636C();
    v119 = sub_22D0168EC();
    if (os_log_type_enabled(v118, v119))
    {
      v120 = v54;
      v121 = swift_slowAlloc();
      v166 = swift_slowAlloc();
      v168 = v166;
      *v121 = 136446210;
      v73(v146, v117, v74);
      v122 = sub_22D01669C();
      v123 = v117;
      v125 = v124;
      v126 = *(v120 + 8);
      v126(v123, v74);
      v127 = sub_22CEEE31C(v122, v125, &v168);

      *(v121 + 4) = v127;
      _os_log_impl(&dword_22CEE1000, v118, v119, "Push type %{public}s is unknown", v121, 0xCu);
      v128 = v166;
      __swift_destroy_boxed_opaque_existential_1Tm(v166);
      MEMORY[0x2318C6860](v128, -1, -1);
      MEMORY[0x2318C6860](v121, -1, -1);
    }

    else
    {

      v126 = *(v54 + 8);
      v126(v117, v74);
    }

    v143 = v165;
    v144 = v167;
    type metadata accessor for PermissionsError();
    sub_22CEFF268(&qword_27D9F3150, type metadata accessor for PermissionsError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    (v144[1])(v150, v143);
    return (v126)(v164, v74);
  }

  else
  {
    v56 = v166;
    v57 = v167;
    v58 = v20;
    (*(v43 + 32))(v47, v41, v42);
    if (qword_28143FB48 != -1)
    {
      swift_once();
    }

    v59 = sub_22D01637C();
    __swift_project_value_buffer(v59, qword_281444480);
    v60 = v162;
    (v57[2])(v162, v56, v20);
    v61 = sub_22D01636C();
    v62 = sub_22D0168EC();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v165 = v58;
      v64 = v63;
      v65 = swift_slowAlloc();
      v158 = v42;
      v66 = v65;
      v168 = v65;
      *v64 = 136380675;
      v67 = sub_22D014F9C();
      v159 = v43;
      v69 = v68;
      (v57[1])(v60, v165);
      v70 = sub_22CEEE31C(v67, v69, &v168);
      v43 = v159;

      *(v64 + 4) = v70;
      _os_log_impl(&dword_22CEE1000, v61, v62, "%{private}s cannot request two push inputs", v64, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v66);
      v71 = v66;
      v42 = v158;
      MEMORY[0x2318C6860](v71, -1, -1);
      MEMORY[0x2318C6860](v64, -1, -1);
    }

    else
    {

      (v57[1])(v60, v58);
    }

    type metadata accessor for PermissionsError();
    sub_22CEFF268(&qword_27D9F3150, type metadata accessor for PermissionsError);
    swift_allocError();
    (*(v43 + 16))(v84, v47, v42);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return (*(v43 + 8))(v47, v42);
  }
}

uint64_t sub_22D001F3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_22D01502C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_22D014FEC())
  {
    goto LABEL_4;
  }

  if (*(v3 + *(type metadata accessor for ContentSourceResolver() + 20) + 16))
  {
    v3 = a1;
LABEL_4:
    (*(v7 + 16))(a2, v3, v6);
    v12 = *MEMORY[0x277CB9348];
    v13 = sub_22D01483C();
    return (*(*(v13 - 8) + 104))(a2, v12, v13);
  }

  if (qword_28143FB48 != -1)
  {
    swift_once();
  }

  v15 = sub_22D01637C();
  __swift_project_value_buffer(v15, qword_281444480);
  v16 = *(v7 + 16);
  v16(v11, a1, v6);
  v17 = sub_22D01636C();
  v18 = sub_22D0168EC();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v30 = v7 + 16;
    v20 = v19;
    v28 = swift_slowAlloc();
    v31 = v28;
    *v20 = 136380675;
    v21 = sub_22D014F9C();
    v29 = v16;
    v23 = v22;
    (*(v7 + 8))(v11, v6);
    v24 = sub_22CEEE31C(v21, v23, &v31);
    v16 = v29;

    *(v20 + 4) = v24;
    _os_log_impl(&dword_22CEE1000, v17, v18, "%{private}s is not permitted to specify multiple process content sources", v20, 0xCu);
    v25 = v28;
    __swift_destroy_boxed_opaque_existential_1Tm(v28);
    MEMORY[0x2318C6860](v25, -1, -1);
    MEMORY[0x2318C6860](v20, -1, -1);
  }

  else
  {

    (*(v7 + 8))(v11, v6);
  }

  type metadata accessor for PermissionsError();
  sub_22CEFF268(&qword_27D9F3150, type metadata accessor for PermissionsError);
  swift_allocError();
  v16(v26, a1, v6);
  swift_storeEnumTagMultiPayload();
  return swift_willThrow();
}

uint64_t sub_22D0022B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F2358, &unk_22D018980);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_22D00234C()
{
  sub_22D01502C();
  if (v0 <= 0x3F)
  {
    sub_22D002450(319, &qword_28143D958, MEMORY[0x277CB9350], MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      sub_22D002450(319, &qword_2814439F8, MEMORY[0x277CB9240], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_22D002450(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

__n128 __swift_memcpy19_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 15) = *(a2 + 15);
  *a1 = result;
  return result;
}

uint64_t sub_22D0024C8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 19))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_22D002524(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 18) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 19) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 19) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_22D0025CC(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_22D0026A0()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 104));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + *(*v0 + 112)));
  v1 = *(v0 + *(*v0 + 136));

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + *(*v0 + 144)));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + *(*v0 + 152)));
  return v0;
}

uint64_t sub_22D002780()
{
  sub_22D0026A0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_22D0027F0(NSObject *a1, uint64_t a2)
{
  v212 = a2;
  v3 = sub_22D014E2C();
  v215 = *(v3 - 8);
  v4 = *(v215 + 64);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v199 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v6, v9);
  v12 = &v199 - v11;
  v14 = MEMORY[0x28223BE20](v10, v13);
  v16 = &v199 - v15;
  v18 = MEMORY[0x28223BE20](v14, v17);
  v20 = &v199 - v19;
  v22 = MEMORY[0x28223BE20](v18, v21);
  v24 = &v199 - v23;
  MEMORY[0x28223BE20](v22, v25);
  v27 = &v199 - v26;
  v28 = sub_22D014EFC();
  v208 = *(v28 - 8);
  v29 = *(v208 + 64);
  v31 = MEMORY[0x28223BE20](v28 - 8, v30);
  v205 = &v199 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v31, v33);
  v204 = &v199 - v35;
  v37 = MEMORY[0x28223BE20](v34, v36);
  v203 = &v199 - v38;
  v40 = MEMORY[0x28223BE20](v37, v39);
  v211 = (&v199 - v41);
  MEMORY[0x28223BE20](v40, v42);
  v207 = &v199 - v43;
  v213 = sub_22D0149AC();
  v209 = *(v213 - 8);
  v44 = *(v209 + 64);
  MEMORY[0x28223BE20](v213, v45);
  v206 = &v199 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3828, &qword_22D01BD10);
  v48 = *(*(v47 - 8) + 64);
  v50 = MEMORY[0x28223BE20](v47 - 8, v49);
  v52 = &v199 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v50, v53);
  v210 = &v199 - v54;
  if (sub_22D014CFC())
  {
    if (qword_28143FB28 != -1)
    {
      swift_once();
    }

    v55 = sub_22D01637C();
    __swift_project_value_buffer(v55, qword_281444420);
    v56 = v215;
    v57 = v3;
    (*(v215 + 16))(v8, a1, v3);
    v58 = sub_22D01636C();
    v59 = sub_22D0168EC();
    if (!os_log_type_enabled(v58, v59))
    {

      (*(v56 + 8))(v8, v57);
LABEL_19:
      v85 = sub_22D01496C();
      sub_22CEFF2B0(&qword_27D9F3D20, MEMORY[0x277CB94C8]);
      v86 = swift_allocError();
      v88 = v87;
      v89 = MEMORY[0x277CB9470];
LABEL_20:
      (*(*(v85 - 8) + 104))(v88, *v89, v85);
      return v86;
    }

    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v216 = v61;
    *v60 = 136446210;
    sub_22CEFF2B0(&qword_27D9F34A0, MEMORY[0x277CB9678]);
    v62 = sub_22D016DEC();
    v64 = v63;
    (*(v56 + 8))(v8, v57);
    v65 = sub_22CEEE31C(v62, v64, &v216);

    *(v60 + 4) = v65;
    _os_log_impl(&dword_22CEE1000, v58, v59, "Push cannot create ephemeral activities: %{public}s", v60, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v61);
    MEMORY[0x2318C6860](v61, -1, -1);
    v66 = v60;
LABEL_17:
    MEMORY[0x2318C6860](v66, -1, -1);

    goto LABEL_19;
  }

  if (sub_22D014D1C())
  {
    if (qword_28143FB28 != -1)
    {
      swift_once();
    }

    v67 = sub_22D01637C();
    __swift_project_value_buffer(v67, qword_281444420);
    v68 = v215;
    v69 = v3;
    (*(v215 + 16))(v12, a1, v3);
    v58 = sub_22D01636C();
    v70 = sub_22D0168EC();
    if (!os_log_type_enabled(v58, v70))
    {

      (*(v68 + 8))(v12, v3);
      goto LABEL_19;
    }

    v71 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    v216 = v72;
    *v71 = 136446210;
    sub_22CEFF2B0(&qword_27D9F34A0, MEMORY[0x277CB9678]);
    v73 = sub_22D016DEC();
    v75 = v74;
    (*(v68 + 8))(v12, v69);
    v76 = sub_22CEEE31C(v73, v75, &v216);

    *(v71 + 4) = v76;
    v77 = "Push cannot create momentary activities: %{public}s";
    goto LABEL_16;
  }

  if (sub_22D014D2C())
  {
    if (qword_28143FB28 == -1)
    {
LABEL_14:
      v78 = sub_22D01637C();
      __swift_project_value_buffer(v78, qword_281444420);
      v79 = v215;
      v80 = v3;
      (*(v215 + 16))(v16, a1, v3);
      v58 = sub_22D01636C();
      v70 = sub_22D0168EC();
      if (!os_log_type_enabled(v58, v70))
      {

        (*(v79 + 8))(v16, v3);
        goto LABEL_19;
      }

      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v216 = v72;
      *v71 = 136446210;
      sub_22CEFF2B0(&qword_27D9F34A0, MEMORY[0x277CB9678]);
      v81 = sub_22D016DEC();
      v83 = v82;
      (*(v79 + 8))(v16, v80);
      v84 = sub_22CEEE31C(v81, v83, &v216);

      *(v71 + 4) = v84;
      v77 = "Push cannot create unbounded activities: %{public}s";
LABEL_16:
      _os_log_impl(&dword_22CEE1000, v58, v70, v77, v71, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v72);
      MEMORY[0x2318C6860](v72, -1, -1);
      v66 = v71;
      goto LABEL_17;
    }

LABEL_111:
    swift_once();
    goto LABEL_14;
  }

  sub_22D014CEC();
  if (v91)
  {

    if (qword_28143FB28 != -1)
    {
      swift_once();
    }

    v92 = sub_22D01637C();
    __swift_project_value_buffer(v92, qword_281444420);
    v93 = v215;
    v94 = v3;
    (*(v215 + 16))(v20, a1, v3);
    v95 = sub_22D01636C();
    v96 = sub_22D0168EC();
    if (os_log_type_enabled(v95, v96))
    {
      v97 = swift_slowAlloc();
      v98 = swift_slowAlloc();
      v216 = v98;
      *v97 = 136446210;
      sub_22CEFF2B0(&qword_27D9F34A0, MEMORY[0x277CB9678]);
      v99 = sub_22D016DEC();
      v101 = v100;
      (*(v93 + 8))(v20, v94);
      v102 = sub_22CEEE31C(v99, v101, &v216);

      *(v97 + 4) = v102;
      _os_log_impl(&dword_22CEE1000, v95, v96, "Push cannot reconnect activities: %{public}s", v97, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v98);
      MEMORY[0x2318C6860](v98, -1, -1);
      MEMORY[0x2318C6860](v97, -1, -1);
    }

    else
    {

      (*(v93 + 8))(v20, v3);
    }

    v85 = sub_22D01496C();
    sub_22CEFF2B0(&qword_27D9F3D20, MEMORY[0x277CB94C8]);
    v86 = swift_allocError();
    v88 = v110;
    v89 = MEMORY[0x277CB94A8];
    goto LABEL_20;
  }

  v103 = sub_22D014D4C();
  v105 = v104 >> 62;
  if ((v104 >> 62) <= 1)
  {
    v106 = v3;
    if (v105)
    {
      v107 = HIDWORD(v103);
      v108 = v103;
      sub_22CEE7524(v103, v104);
      LODWORD(v109) = v107 - v108;
      if (!__OFSUB__(v107, v108))
      {
        v109 = v109;
        goto LABEL_36;
      }

      __break(1u);
      goto LABEL_113;
    }

LABEL_42:
    sub_22CEE7524(v103, v104);
    goto LABEL_43;
  }

  v106 = v3;
  if (v105 != 2)
  {
    goto LABEL_42;
  }

  v112 = *(v103 + 16);
  v111 = *(v103 + 24);
  sub_22CEE7524(v103, v104);
  v109 = v111 - v112;
  if (!__OFSUB__(v111, v112))
  {
LABEL_36:
    if (v109 > 4096)
    {
      if (qword_28143FB28 == -1)
      {
        goto LABEL_38;
      }

      goto LABEL_114;
    }

LABEL_43:
    v122 = sub_22D014DAC();
    sub_22D014C7C();
    if (v122)
    {
      if ((MEMORY[0x2318C3DC0]() & 1) == 0)
      {
LABEL_45:
        if (qword_28143FB28 != -1)
        {
          swift_once();
        }

        v123 = sub_22D01637C();
        __swift_project_value_buffer(v123, qword_281444420);
        v124 = v215;
        (*(v215 + 16))(v27, a1, v106);
        v125 = sub_22D01636C();
        v126 = sub_22D0168EC();
        if (os_log_type_enabled(v125, v126))
        {
          v127 = swift_slowAlloc();
          v128 = swift_slowAlloc();
          v216 = v128;
          *v127 = 136380675;
          sub_22CEFF2B0(&qword_27D9F34A0, MEMORY[0x277CB9678]);
          v129 = sub_22D016DEC();
          v131 = v130;
          (*(v124 + 8))(v27, v106);
          v132 = sub_22CEEE31C(v129, v131, &v216);

          *(v127 + 4) = v132;
          _os_log_impl(&dword_22CEE1000, v125, v126, "Live Activities are not supported for this type of request: %{private}s", v127, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v128);
          MEMORY[0x2318C6860](v128, -1, -1);
          MEMORY[0x2318C6860](v127, -1, -1);
        }

        else
        {

          (*(v124 + 8))(v27, v106);
        }

        v85 = sub_22D01496C();
        sub_22CEFF2B0(&qword_27D9F3D20, MEMORY[0x277CB94C8]);
        v86 = swift_allocError();
        v88 = v134;
        v89 = MEMORY[0x277CB9480];
        goto LABEL_20;
      }
    }

    else if ((MEMORY[0x2318C3DD0]() & 1) == 0)
    {
      goto LABEL_45;
    }

    if (*(v214 + *(*v214 + 128)) != 1)
    {
      if (qword_28143FB28 != -1)
      {
        swift_once();
      }

      v135 = sub_22D01637C();
      __swift_project_value_buffer(v135, qword_281444420);
      v136 = sub_22D01636C();
      v137 = sub_22D0168EC();
      if (os_log_type_enabled(v136, v137))
      {
        v138 = swift_slowAlloc();
        *v138 = 0;
        _os_log_impl(&dword_22CEE1000, v136, v137, "Persistence is not functional", v138, 2u);
        MEMORY[0x2318C6860](v138, -1, -1);
      }

      v85 = sub_22D01496C();
      sub_22CEFF2B0(&qword_27D9F3D20, MEMORY[0x277CB94C8]);
      v86 = swift_allocError();
      v88 = v139;
      v89 = MEMORY[0x277CB9498];
      goto LABEL_20;
    }

    if (sub_22CF04384(0))
    {
      v85 = sub_22D01496C();
      sub_22CEFF2B0(&qword_27D9F3D20, MEMORY[0x277CB94C8]);
      v86 = swift_allocError();
      v88 = v133;
      v89 = MEMORY[0x277CB94A0];
      goto LABEL_20;
    }

    v140 = *(v212 + 64);
    v200 = v212 + 64;
    v141 = 1 << *(v212 + 32);
    v142 = -1;
    if (v141 < 64)
    {
      v142 = ~(-1 << v141);
    }

    v143 = v142 & v140;
    v199 = (v141 + 63) >> 6;
    v201 = v209 + 32;
    v202 = v209 + 16;
    v215 = v209 + 8;

    v144 = 0;
    a1 = v211;
    if (!v143)
    {
LABEL_65:
      if (v199 <= (v144 + 1))
      {
        v146 = (v144 + 1);
      }

      else
      {
        v146 = v199;
      }

      v16 = (v146 - 1);
      while (1)
      {
        v145 = (v144 + 1);
        if (__OFADD__(v144, 1))
        {
          break;
        }

        if (v145 >= v199)
        {
          v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3830, &unk_22D01BD18);
          (*(*(v156 - 8) + 56))(v52, 1, 1, v156);
          v143 = 0;
          goto LABEL_73;
        }

        v143 = *(v200 + 8 * v145);
        ++v144;
        if (v143)
        {
          goto LABEL_72;
        }
      }

      __break(1u);
      goto LABEL_111;
    }

    while (1)
    {
      v145 = v144;
LABEL_72:
      v147 = __clz(__rbit64(v143));
      v143 &= v143 - 1;
      v148 = v147 | (v145 << 6);
      v150 = v212;
      v149 = v213;
      v151 = v209;
      v152 = v206;
      (*(v209 + 16))(v206, *(v212 + 48) + *(v209 + 72) * v148, v213);
      v3 = v207;
      sub_22CEFEB00(*(v150 + 56) + *(v208 + 72) * v148, v207, MEMORY[0x277CB9790]);
      v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3830, &unk_22D01BD18);
      v154 = *(v153 + 48);
      (*(v151 + 32))(v52, v152, v149);
      sub_22CF033C4(v3, &v52[v154]);
      (*(*(v153 - 8) + 56))(v52, 0, 1, v153);
      v16 = v145;
      a1 = v211;
LABEL_73:
      v106 = v210;
      sub_22CF03428(v52, v210);
      v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3830, &unk_22D01BD18);
      if ((*(*(v155 - 8) + 48))(v106, 1, v155) == 1)
      {

        return 0;
      }

      sub_22CF033C4(v106 + *(v155 + 48), a1);
      if (sub_22CF03498(a1, 0))
      {
        v163 = sub_22D01496C();
        sub_22CEFF2B0(&qword_27D9F3D20, MEMORY[0x277CB94C8]);
        v164 = a1;
        v86 = swift_allocError();
        (*(*(v163 - 8) + 104))(v165, *MEMORY[0x277CB94B0], v163);

        v166 = MEMORY[0x277CB9790];
        v167 = v164;
        goto LABEL_109;
      }

      if ((sub_22CF04684(a1) & 1) == 0)
      {
        if (qword_28143FB28 != -1)
        {
          goto LABEL_116;
        }

        goto LABEL_93;
      }

      if (sub_22CF048A8(a1))
      {
        break;
      }

      if ((sub_22D005A2C(a1) & 1) == 0)
      {
        if (qword_28143FB28 != -1)
        {
          swift_once();
        }

        v188 = sub_22D01637C();
        __swift_project_value_buffer(v188, qword_281444420);
        v189 = v203;
        sub_22CEFEB00(a1, v203, MEMORY[0x277CB9790]);
        v190 = sub_22D01636C();
        v191 = sub_22D0168EC();
        if (os_log_type_enabled(v190, v191))
        {
          v192 = swift_slowAlloc();
          v193 = swift_slowAlloc();
          v216 = v193;
          *v192 = 136446210;
          v194 = sub_22D014ECC();
          v196 = v195;
          sub_22CEFD754(v189, MEMORY[0x277CB9790]);
          v197 = sub_22CEEE31C(v194, v196, &v216);

          *(v192 + 4) = v197;
          _os_log_impl(&dword_22CEE1000, v190, v191, "Target does not include NSSupportsLiveActivities key in its Info.plist %{public}s", v192, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v193);
          MEMORY[0x2318C6860](v193, -1, -1);
          MEMORY[0x2318C6860](v192, -1, -1);
        }

        else
        {

          sub_22CEFD754(v189, MEMORY[0x277CB9790]);
        }

        v184 = sub_22D01496C();
        sub_22CEFF2B0(&qword_27D9F3D20, MEMORY[0x277CB94C8]);
        v86 = swift_allocError();
        v186 = v198;
        v187 = MEMORY[0x277CB9488];
        goto LABEL_108;
      }

      sub_22CEFD754(a1, MEMORY[0x277CB9790]);
      (*v215)(v106, v213);
      v144 = v16;
      if (!v143)
      {
        goto LABEL_65;
      }
    }

    if (qword_28143FB28 != -1)
    {
      swift_once();
    }

    v179 = sub_22D01637C();
    __swift_project_value_buffer(v179, qword_281444420);
    v169 = v204;
    sub_22CEFEB00(a1, v204, MEMORY[0x277CB9790]);
    v170 = sub_22D01636C();
    v171 = sub_22D0168EC();
    if (os_log_type_enabled(v170, v171))
    {
      v172 = swift_slowAlloc();
      v173 = swift_slowAlloc();
      v216 = v173;
      *v172 = 136380675;
      v180 = sub_22D014ECC();
      v182 = v181;
      sub_22CEFD754(v169, MEMORY[0x277CB9790]);
      v183 = sub_22CEEE31C(v180, v182, &v216);

      *(v172 + 4) = v183;
      v178 = "Scene target is restricted: %{private}s";
      goto LABEL_99;
    }

LABEL_100:

    sub_22CEFD754(v169, MEMORY[0x277CB9790]);
    goto LABEL_101;
  }

LABEL_113:
  __break(1u);
LABEL_114:
  swift_once();
LABEL_38:
  v113 = sub_22D01637C();
  __swift_project_value_buffer(v113, qword_281444420);
  v114 = v215;
  (*(v215 + 16))(v24, a1, v106);

  a1 = sub_22D01636C();
  v115 = sub_22D0168EC();
  if (!os_log_type_enabled(a1, v115))
  {
    (*(v114 + 8))(v24, v106);

LABEL_89:
    v85 = sub_22D01496C();
    sub_22CEFF2B0(&qword_27D9F3D20, MEMORY[0x277CB94C8]);
    v86 = swift_allocError();
    v88 = v162;
    v89 = MEMORY[0x277CB9490];
    goto LABEL_20;
  }

  v116 = swift_slowAlloc();
  *v116 = 134349312;
  v117 = sub_22D014D4C();
  v119 = v118 >> 62;
  if ((v118 >> 62) > 1)
  {
    if (v119 != 2)
    {
      sub_22CEE7524(v117, v118);
      v121 = 0;
      goto LABEL_88;
    }

    v158 = *(v117 + 16);
    v157 = *(v117 + 24);
    v117 = sub_22CEE7524(v117, v118);
    v159 = __OFSUB__(v157, v158);
    v121 = v157 - v158;
    if (!v159)
    {
      goto LABEL_88;
    }

    __break(1u);
  }

  else if (!v119)
  {
    v120 = BYTE6(v118);
    sub_22CEE7524(v117, v118);
    v121 = v120;
LABEL_88:
    (*(v114 + 8))(v24, v106);
    *(v116 + 4) = v121;
    *(v116 + 12) = 2050;
    *(v116 + 14) = 4096;

    _os_log_impl(&dword_22CEE1000, a1, v115, "Request attribute size %{public}ld exceeds maximum size of %{public}ld", v116, 0x16u);
    MEMORY[0x2318C6860](v116, -1, -1);

    goto LABEL_89;
  }

  v160 = HIDWORD(v117);
  v161 = v117;
  sub_22CEE7524(v117, v118);
  if (!__OFSUB__(v160, v161))
  {
    v121 = v160 - v161;
    goto LABEL_88;
  }

  __break(1u);
LABEL_116:
  swift_once();
LABEL_93:
  v168 = sub_22D01637C();
  __swift_project_value_buffer(v168, qword_281444420);
  v169 = v205;
  sub_22CEFEB00(a1, v205, MEMORY[0x277CB9790]);
  v170 = sub_22D01636C();
  v171 = sub_22D0168EC();
  if (!os_log_type_enabled(v170, v171))
  {
    goto LABEL_100;
  }

  v172 = swift_slowAlloc();
  v173 = swift_slowAlloc();
  v216 = v173;
  *v172 = 136446210;
  v174 = sub_22D014ECC();
  v176 = v175;
  sub_22CEFD754(v169, MEMORY[0x277CB9790]);
  v177 = sub_22CEEE31C(v174, v176, &v216);

  *(v172 + 4) = v177;
  v178 = "Target does not have user consent to request activities %{public}s";
LABEL_99:
  _os_log_impl(&dword_22CEE1000, v170, v171, v178, v172, 0xCu);
  __swift_destroy_boxed_opaque_existential_1Tm(v173);
  MEMORY[0x2318C6860](v173, -1, -1);
  MEMORY[0x2318C6860](v172, -1, -1);

LABEL_101:
  v184 = sub_22D01496C();
  sub_22CEFF2B0(&qword_27D9F3D20, MEMORY[0x277CB94C8]);
  v86 = swift_allocError();
  v186 = v185;
  v187 = MEMORY[0x277CB94C0];
LABEL_108:
  (*(*(v184 - 8) + 104))(v186, *v187, v184);

  v166 = MEMORY[0x277CB9790];
  v167 = v211;
LABEL_109:
  sub_22CEFD754(v167, v166);
  (*v215)(v106, v213);
  return v86;
}

uint64_t sub_22D004290(uint64_t a1, uint64_t a2)
{
  v5 = sub_22D014EFC();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22D01502C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22D014C7C();
  if (MEMORY[0x2318C3DC0]())
  {

    sub_22D014F8C();
    (*(v11 + 16))(v9, v15, v10);
    swift_storeEnumTagMultiPayload();
    v16 = __swift_project_boxed_opaque_existential_1((v2 + *(*v2 + 144)), *(v2 + *(*v2 + 144) + 24));
    v17 = *v16;
    v18 = *(*(*v16 + 40) + 16);
    os_unfair_lock_lock(v18);
    swift_beginAccess();
    v19 = *(v17 + 48);

    v20 = sub_22CF24034(a1, a2, v19);

    os_unfair_lock_unlock(v18);
    if (v20 & 1) != 0 && (sub_22D005A2C(v9))
    {
      v21 = sub_22CF04684(v9);
    }

    else
    {
      v21 = 0;
    }

    sub_22CEFD754(v9, MEMORY[0x277CB9790]);
    (*(v11 + 8))(v15, v10);
  }

  else
  {
    v21 = 0;
  }

  return v21 & 1;
}

uint64_t sub_22D004508(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3840, &unk_22D01A2B0);
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v6, v9);
  v12 = &v23[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v23[-v14];
  v16 = *a1;
  v17 = a1[1];
  *v15 = v16;
  v15[1] = v17;
  sub_22CEFEB00(a2, &v23[*(v7 + 56) - v14], type metadata accessor for Activity);
  sub_22CEEB6DC(v15, v12, &unk_27D9F3840, &unk_22D01A2B0);
  v18 = *(v12 + 1);

  v19 = &v12[*(v7 + 56)];
  v20 = *(v19 + *(type metadata accessor for Activity() + 28));

  sub_22CEFD754(v19, type metadata accessor for Activity);
  v24 = a3;
  v21 = sub_22CF4CFD4(sub_22D00645C, v23, v20);

  sub_22CEEC3D8(v15, &unk_27D9F3840, &unk_22D01A2B0);
  return v21 & 1;
}

unint64_t sub_22D0046B0@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return MEMORY[0x277D84F90];
    }

    v7 = sub_22D01679C();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_22CFCE10C(0, 1, 1, MEMORY[0x277D84F90]);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_22CFCE10C((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = MEMORY[0x277D84F90];
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = sub_22D01677C();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = sub_22D0166EC();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = sub_22D0166EC();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = sub_22D01679C();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_22CFCE10C(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_22D01679C();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_22CFCE10C(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_22CFCE10C((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_22D0166EC();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

void *sub_22D004A70(void *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = sub_22CF03BE4(result, a2, a3);

    return v6;
  }

  return result;
}

unsigned __int8 *sub_22D004AE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v64 = a1;
  v65 = a2;
  v66 = a3;
  v67 = a4;
  sub_22D00648C();

  result = sub_22D01678C();
  v8 = result;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_22D005080();
    v37 = v36;

    v7 = v37;
    if ((v37 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v9 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_22D016C8C();
      v9 = v63;
    }

    v10 = *result;
    if (v10 == 43)
    {
      if (v9 >= 1)
      {
        v21 = v9 - 1;
        if (v21)
        {
          v22 = a5 + 48;
          v23 = a5 + 55;
          v24 = a5 + 87;
          if (a5 > 10)
          {
            v22 = 58;
          }

          else
          {
            v24 = 97;
            v23 = 65;
          }

          if (result)
          {
            v15 = 0;
            v25 = result + 1;
            do
            {
              v26 = *v25;
              if (v26 < 0x30 || v26 >= v22)
              {
                if (v26 < 0x41 || v26 >= v23)
                {
                  v19 = 0;
                  if (v26 < 0x61 || v26 >= v24)
                  {
                    goto LABEL_127;
                  }

                  v27 = -87;
                }

                else
                {
                  v27 = -55;
                }
              }

              else
              {
                v27 = -48;
              }

              v28 = v15 * a5;
              if ((v15 * a5) >> 64 != (v15 * a5) >> 63)
              {
                goto LABEL_126;
              }

              v15 = v28 + (v26 + v27);
              if (__OFADD__(v28, (v26 + v27)))
              {
                goto LABEL_126;
              }

              ++v25;
              --v21;
            }

            while (v21);
LABEL_46:
            v19 = v15;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v19 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v10 != 45)
    {
      if (v9)
      {
        v29 = a5 + 48;
        v30 = a5 + 55;
        v31 = a5 + 87;
        if (a5 > 10)
        {
          v29 = 58;
        }

        else
        {
          v31 = 97;
          v30 = 65;
        }

        if (result)
        {
          v32 = 0;
          do
          {
            v33 = *result;
            if (v33 < 0x30 || v33 >= v29)
            {
              if (v33 < 0x41 || v33 >= v30)
              {
                v19 = 0;
                if (v33 < 0x61 || v33 >= v31)
                {
                  goto LABEL_127;
                }

                v34 = -87;
              }

              else
              {
                v34 = -55;
              }
            }

            else
            {
              v34 = -48;
            }

            v35 = v32 * a5;
            if ((v32 * a5) >> 64 != (v32 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v32 = v35 + (v33 + v34);
            if (__OFADD__(v35, (v33 + v34)))
            {
              goto LABEL_126;
            }

            ++result;
            --v9;
          }

          while (v9);
          v19 = v35 + (v33 + v34);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v9 >= 1)
    {
      v11 = v9 - 1;
      if (v11)
      {
        v12 = a5 + 48;
        v13 = a5 + 55;
        v14 = a5 + 87;
        if (a5 > 10)
        {
          v12 = 58;
        }

        else
        {
          v14 = 97;
          v13 = 65;
        }

        if (result)
        {
          v15 = 0;
          v16 = result + 1;
          while (1)
          {
            v17 = *v16;
            if (v17 < 0x30 || v17 >= v12)
            {
              if (v17 < 0x41 || v17 >= v13)
              {
                v19 = 0;
                if (v17 < 0x61 || v17 >= v14)
                {
                  goto LABEL_127;
                }

                v18 = -87;
              }

              else
              {
                v18 = -55;
              }
            }

            else
            {
              v18 = -48;
            }

            v20 = v15 * a5;
            if ((v15 * a5) >> 64 != (v15 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v15 = v20 - (v17 + v18);
            if (__OFSUB__(v20, (v17 + v18)))
            {
              goto LABEL_126;
            }

            ++v16;
            if (!--v11)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v19 = 0;
LABEL_127:

        return v19;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v38 = HIBYTE(v7) & 0xF;
  v64 = v8;
  v65 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v38)
      {
        v40 = 0;
        v56 = a5 + 48;
        v57 = a5 + 55;
        v58 = a5 + 87;
        if (a5 > 10)
        {
          v56 = 58;
        }

        else
        {
          v58 = 97;
          v57 = 65;
        }

        v59 = &v64;
        while (1)
        {
          v60 = *v59;
          if (v60 < 0x30 || v60 >= v56)
          {
            if (v60 < 0x41 || v60 >= v57)
            {
              v19 = 0;
              if (v60 < 0x61 || v60 >= v58)
              {
                goto LABEL_127;
              }

              v61 = -87;
            }

            else
            {
              v61 = -55;
            }
          }

          else
          {
            v61 = -48;
          }

          v62 = v40 * a5;
          if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v40 = v62 + (v60 + v61);
          if (__OFADD__(v62, (v60 + v61)))
          {
            goto LABEL_126;
          }

          v59 = (v59 + 1);
          if (!--v38)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v38)
    {
      v39 = v38 - 1;
      if (v39)
      {
        v40 = 0;
        v41 = a5 + 48;
        v42 = a5 + 55;
        v43 = a5 + 87;
        if (a5 > 10)
        {
          v41 = 58;
        }

        else
        {
          v43 = 97;
          v42 = 65;
        }

        v44 = &v64 + 1;
        while (1)
        {
          v45 = *v44;
          if (v45 < 0x30 || v45 >= v41)
          {
            if (v45 < 0x41 || v45 >= v42)
            {
              v19 = 0;
              if (v45 < 0x61 || v45 >= v43)
              {
                goto LABEL_127;
              }

              v46 = -87;
            }

            else
            {
              v46 = -55;
            }
          }

          else
          {
            v46 = -48;
          }

          v47 = v40 * a5;
          if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v40 = v47 - (v45 + v46);
          if (__OFSUB__(v47, (v45 + v46)))
          {
            goto LABEL_126;
          }

          ++v44;
          if (!--v39)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v38)
  {
    v48 = v38 - 1;
    if (v48)
    {
      v40 = 0;
      v49 = a5 + 48;
      v50 = a5 + 55;
      v51 = a5 + 87;
      if (a5 > 10)
      {
        v49 = 58;
      }

      else
      {
        v51 = 97;
        v50 = 65;
      }

      v52 = &v64 + 1;
      do
      {
        v53 = *v52;
        if (v53 < 0x30 || v53 >= v49)
        {
          if (v53 < 0x41 || v53 >= v50)
          {
            v19 = 0;
            if (v53 < 0x61 || v53 >= v51)
            {
              goto LABEL_127;
            }

            v54 = -87;
          }

          else
          {
            v54 = -55;
          }
        }

        else
        {
          v54 = -48;
        }

        v55 = v40 * a5;
        if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
        {
          goto LABEL_126;
        }

        v40 = v55 + (v53 + v54);
        if (__OFADD__(v55, (v53 + v54)))
        {
          goto LABEL_126;
        }

        ++v52;
        --v48;
      }

      while (v48);
LABEL_125:
      v19 = v40;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_22D005080()
{
  v0 = sub_22D01679C();
  v4 = sub_22D005100(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_22D005100(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_22D0166CC();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_22D016A9C();
  if (!v9)
  {
    v11 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_22CEEEC30(v9, 0);
  v12 = sub_22D005258(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_22D0166CC();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_22D016C8C();
LABEL_4:

  return sub_22D0166CC();
}

unint64_t sub_22D005258(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_22D005478(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_22D01675C();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_22D016C8C();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_22D005478(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_22D01672C();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_22D005478(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_22D01676C();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x2318C58A0](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_22D0054F4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    result = 0;
    goto LABEL_8;
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v14[0] = a3;
    v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v11 = v14;
  }

  else if ((a3 & 0x1000000000000000) != 0)
  {
    v11 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v11 = sub_22D016C8C();
  }

  result = sub_22D0055C0(v11, a1, a2, a3, a4, a5);
  if (!v5)
  {
    v15 = v13 & 1;
LABEL_8:
    v16 = (a4 & 0x1000000000000000) != 0;
  }

  return result;
}

uint64_t sub_22D0055C0(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  v8 = result;
  v9 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;
  v11 = a2 & 0xC;
  v12 = a2;
  if (v11 == v10)
  {
    v14 = a2;
    v15 = a3;
    v16 = a5;
    result = sub_22D005478(a2, a4, a5);
    a2 = v14;
    a3 = v15;
    a5 = v16;
    v12 = result;
    if ((v16 & 0x1000000000000000) == 0)
    {
LABEL_5:
      v13 = v12 >> 16;
      if (v11 != v10)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
    goto LABEL_5;
  }

  v17 = a4 & 0xFFFFFFFFFFFFLL;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(a5) & 0xF;
  }

  if (v17 < v12 >> 16)
  {
    goto LABEL_95;
  }

  v18 = a2;
  v19 = a3;
  v20 = a5;
  result = sub_22D01674C();
  a5 = v20;
  v13 = result;
  a3 = v19;
  a2 = v18;
  if (v11 == v10)
  {
LABEL_14:
    v21 = a3;
    v22 = a5;
    result = sub_22D005478(a2, a4, a5);
    a3 = v21;
    a5 = v22;
    a2 = result;
  }

LABEL_6:
  if ((a3 & 0xC) == v10)
  {
    v23 = a2;
    v24 = a5;
    result = sub_22D005478(a3, a4, a5);
    a2 = v23;
    a5 = v24;
    a3 = result;
    if ((v24 & 0x1000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
LABEL_8:
    result = (a3 >> 16) - (a2 >> 16);
    goto LABEL_21;
  }

  v25 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v25 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (v25 < a2 >> 16)
  {
    goto LABEL_91;
  }

  if (v25 < a3 >> 16)
  {
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  result = sub_22D01674C();
LABEL_21:
  v26 = v13 + result;
  if (__OFADD__(v13, result))
  {
    __break(1u);
    goto LABEL_90;
  }

  if (v26 < v13)
  {
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  v27 = (v13 + v8);
  if (!v8)
  {
    v27 = 0;
  }

  v28 = *v27;
  if (v28 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v39 = a6 + 48;
        v40 = a6 + 55;
        v41 = a6 + 87;
        if (a6 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        if (v27)
        {
          v32 = 0;
          v42 = v27 + 1;
          v43 = result - 1;
          do
          {
            v44 = *v42;
            if (v44 < 0x30 || v44 >= v39)
            {
              if (v44 < 0x41 || v44 >= v40)
              {
                v37 = 0;
                if (v44 < 0x61 || v44 >= v41)
                {
                  return v37;
                }

                v45 = -87;
              }

              else
              {
                v45 = -55;
              }
            }

            else
            {
              v45 = -48;
            }

            v46 = v32 * a6;
            if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
            {
              return 0;
            }

            v32 = v46 + (v44 + v45);
            if (__OFADD__(v46, (v44 + v45)))
            {
              return 0;
            }

            ++v42;
            --v43;
          }

          while (v43);
          return v32;
        }

        return 0;
      }

      return 0;
    }

    goto LABEL_94;
  }

  if (v28 != 45)
  {
    if (v26 != v13)
    {
      v47 = a6 + 48;
      v48 = a6 + 55;
      v49 = a6 + 87;
      if (a6 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      if (v27)
      {
        v32 = 0;
        while (1)
        {
          v50 = *v27;
          if (v50 < 0x30 || v50 >= v47)
          {
            if (v50 < 0x41 || v50 >= v48)
            {
              v37 = 0;
              if (v50 < 0x61 || v50 >= v49)
              {
                return v37;
              }

              v51 = -87;
            }

            else
            {
              v51 = -55;
            }
          }

          else
          {
            v51 = -48;
          }

          v52 = v32 * a6;
          if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
          {
            return 0;
          }

          v32 = v52 + (v50 + v51);
          if (__OFADD__(v52, (v50 + v51)))
          {
            return 0;
          }

          ++v27;
          if (!--result)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v29 = a6 + 48;
      v30 = a6 + 55;
      v31 = a6 + 87;
      if (a6 > 10)
      {
        v29 = 58;
      }

      else
      {
        v31 = 97;
        v30 = 65;
      }

      if (v27)
      {
        v32 = 0;
        v33 = v27 + 1;
        v34 = result - 1;
        while (1)
        {
          v35 = *v33;
          if (v35 < 0x30 || v35 >= v29)
          {
            if (v35 < 0x41 || v35 >= v30)
            {
              v37 = 0;
              if (v35 < 0x61 || v35 >= v31)
              {
                return v37;
              }

              v36 = -87;
            }

            else
            {
              v36 = -55;
            }
          }

          else
          {
            v36 = -48;
          }

          v38 = v32 * a6;
          if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
          {
            return 0;
          }

          v32 = v38 - (v35 + v36);
          if (__OFSUB__(v38, (v35 + v36)))
          {
            return 0;
          }

          ++v33;
          if (!--v34)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
  return result;
}

uint64_t sub_22D005A2C(uint64_t a1)
{
  v2 = sub_22D01502C();
  v3 = *(v2 - 8);
  v4 = v3[8];
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22D014EFC();
  v9 = *(*(v8 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v8, v10);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v11, v14);
  v17 = &v48 - v16;
  v19 = MEMORY[0x28223BE20](v15, v18);
  v21 = &v48 - v20;
  MEMORY[0x28223BE20](v19, v22);
  v24 = &v48 - v23;
  sub_22CEFEB00(a1, &v48 - v23, MEMORY[0x277CB9790]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_22CEFD754(v24, MEMORY[0x277CB9790]);
    return 1;
  }

  else
  {
    sub_22CEFEB00(a1, v21, MEMORY[0x277CB9790]);
    v50 = v3[4];
    v50(v7, v21, v2);
    v26 = sub_22D014F9C();
    v28 = v27;
    v51 = v3[1];
    v51(v7, v2);
    v29 = objc_allocWithZone(MEMORY[0x277CC1E70]);
    v30 = sub_22CEE8CD0(v26, v28, 0);
    if (v30)
    {
      v46 = v30;
      v47 = [v30 supportsLiveActivities];

      v51(v24, v2);
      return v47;
    }

    else
    {
      if (qword_28143FB28 != -1)
      {
        swift_once();
      }

      v31 = sub_22D01637C();
      __swift_project_value_buffer(v31, qword_281444420);
      sub_22CEFEB00(a1, v17, MEMORY[0x277CB9790]);
      v32 = sub_22D01636C();
      v33 = sub_22D0168EC();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v48 = v34;
        v49 = swift_slowAlloc();
        v52 = v49;
        *v34 = 136446210;
        v35 = MEMORY[0x277CB9790];
        sub_22CEFEB00(v17, v13, MEMORY[0x277CB9790]);
        v50(v7, v13, v2);
        v36 = v33;
        v37 = sub_22D014F9C();
        v39 = v38;
        v40 = v7;
        v41 = v51;
        v51(v40, v2);
        sub_22CEFD754(v17, v35);
        v42 = sub_22CEEE31C(v37, v39, &v52);

        v43 = v48;
        *(v48 + 1) = v42;
        v44 = v43;
        _os_log_impl(&dword_22CEE1000, v32, v36, "App does not exist: %{public}s", v43, 0xCu);
        v45 = v49;
        __swift_destroy_boxed_opaque_existential_1Tm(v49);
        MEMORY[0x2318C6860](v45, -1, -1);
        MEMORY[0x2318C6860](v44, -1, -1);
      }

      else
      {

        sub_22CEFD754(v17, MEMORY[0x277CB9790]);
        v41 = v51;
      }

      v41(v24, v2);
      return 0;
    }
  }
}

uint64_t sub_22D005EE4(void *a1)
{
  v32[1] = *MEMORY[0x277D85DE8];
  v2 = [objc_opt_self() identifierWithPid_];
  if (!v2)
  {
    goto LABEL_21;
  }

  v3 = v2;
  v4 = [objc_opt_self() predicateMatchingIdentifier_];
  v5 = [objc_allocWithZone(MEMORY[0x277D46FB0]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3650, &qword_22D018900);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_22D0187A0;
  v7 = *MEMORY[0x277D0AC90];
  *(v6 + 32) = sub_22D01667C();
  *(v6 + 40) = v8;
  v9 = sub_22D0167CC();

  [v5 setEndowmentNamespaces_];

  v32[0] = 0;
  v10 = [objc_opt_self() statesForPredicate:v4 withDescriptor:v5 error:v32];
  v11 = v32[0];
  if (!v10)
  {
    v23 = v32[0];
    v24 = sub_22D01416C();

    swift_willThrow();
LABEL_21:
    v22 = 0;
    goto LABEL_22;
  }

  v12 = v10;
  sub_22CEE82F8(0, &qword_28143D930, 0x277D46FA8);
  v13 = sub_22D0167DC();
  v14 = v11;

  if (!(v13 >> 62))
  {
    if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

  if (sub_22D016B7C() != 1)
  {
LABEL_15:

    if (qword_28143FB28 != -1)
    {
      swift_once();
    }

    v25 = sub_22D01637C();
    __swift_project_value_buffer(v25, qword_281444420);
    v26 = a1;
    v27 = sub_22D01636C();
    v28 = sub_22D0168EC();
    if (!os_log_type_enabled(v27, v28))
    {

      goto LABEL_21;
    }

    v29 = swift_slowAlloc();
    *v29 = 67240192;
    *(v29 + 4) = [v26 pid];

    _os_log_impl(&dword_22CEE1000, v27, v28, "Found multiple process state matches for pid: %{public}d", v29, 8u);
    MEMORY[0x2318C6860](v29, -1, -1);

    goto LABEL_19;
  }

  if (!sub_22D016B7C())
  {

LABEL_19:

    goto LABEL_21;
  }

LABEL_5:
  if ((v13 & 0xC000000000000001) != 0)
  {
    v15 = MEMORY[0x2318C5DE0](0, v13);
  }

  else
  {
    if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
    }

    v15 = *(v13 + 32);
  }

  v16 = v15;

  v17 = [v16 endowmentNamespaces];
  if (!v17)
  {

    goto LABEL_21;
  }

  v18 = v17;
  v19 = sub_22D01685C();

  v20 = sub_22D01667C();
  v22 = sub_22CF24034(v20, v21, v19);

LABEL_22:
  v30 = *MEMORY[0x277D85DE8];
  return v22 & 1;
}

unint64_t sub_22D00631C()
{
  result = qword_28143D918;
  if (!qword_28143D918)
  {
    sub_22CEE82F8(255, &qword_28143D920, 0x277D46F10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28143D918);
  }

  return result;
}

unint64_t sub_22D006384()
{
  result = qword_27D9F3D10;
  if (!qword_27D9F3D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9F3D10);
  }

  return result;
}

unint64_t sub_22D0063D8()
{
  result = qword_27D9F3D18;
  if (!qword_27D9F3D18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D9F3D08, &qword_22D01D0B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9F3D18);
  }

  return result;
}

unint64_t sub_22D00648C()
{
  result = qword_27D9F3D28;
  if (!qword_27D9F3D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9F3D28);
  }

  return result;
}

uint64_t sub_22D006510()
{
  MEMORY[0x2318C6860](*(v0 + 16), -1, -1);

  return swift_deallocClassInstance();
}

id sub_22D006550(void *a1, uint64_t a2)
{
  v4 = sub_22D01561C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  sub_22D0153EC();
  sub_22D016A3C();
  (*(v5 + 8))(v9, v4);
  sub_22D0153DC();
  v10 = sub_22D01666C();

  [a1 setService_];

  return [a1 setDelegate_];
}

void sub_22D00667C(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  sub_22D0153DC();
  v7 = sub_22D01666C();

  v8 = [objc_opt_self() interfaceWithIdentifier_];

  v9 = objc_opt_self();
  v10 = [v9 protocolForProtocol_];
  [v8 setClient_];

  v11 = [v9 protocolForProtocol_];
  [v8 setServer_];

  v12 = [objc_opt_self() userInitiated];
  [a1 setServiceQuality_];

  [a1 setInterface_];
  [a1 setInterfaceTarget_];
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(v14 + 24) = a4;
  v23 = sub_22D0080C4;
  v24 = v14;
  v19 = MEMORY[0x277D85DD0];
  v20 = 1107296256;
  v21 = sub_22D008590;
  v22 = &block_descriptor_37_2;
  v15 = _Block_copy(&v19);

  [a1 setInterruptionHandler_];
  _Block_release(v15);
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  *(v17 + 24) = a4;
  v23 = sub_22D0080EC;
  v24 = v17;
  v19 = MEMORY[0x277D85DD0];
  v20 = 1107296256;
  v21 = sub_22D008590;
  v22 = &block_descriptor_44_1;
  v18 = _Block_copy(&v19);

  [a1 setInvalidationHandler_];
  _Block_release(v18);
}