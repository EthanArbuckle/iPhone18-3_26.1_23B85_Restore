uint64_t SleepStageWidgetViewModel.noDataTexts.getter()
{
  sub_269E18D98(0, &qword_281571BC0, MEMORY[0x277D84560]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_269E546C0;
  if (qword_281571CB0 != -1)
  {
    swift_once();
  }

  *(v0 + 32) = sub_269E50A7C();
  *(v0 + 40) = v1;
  *(v0 + 48) = sub_269E50A7C();
  *(v0 + 56) = v2;
  *(v0 + 64) = 11565;
  *(v0 + 72) = 0xE200000000000000;
  sub_269E18D98(0, &qword_281571D70, MEMORY[0x277D83940]);
  sub_269E18DEC();
  v3 = sub_269E51E7C();

  return v3;
}

id sub_269E18A9C@<X0>(void *a1@<X8>)
{
  if (*(v1 + 32) == 2)
  {
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = 0;
  }

  else
  {
    v5 = *(v1 + 16);
    v6 = *(v1 + 24);
    v3 = *v1;
    v4 = *(v1 + 8);
    result = sub_269DF6E4C(*v1, v4, v5, v6);
  }

  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  return result;
}

uint64_t sub_269E18B28()
{
  if (qword_281571DC0 != -1)
  {
    swift_once();
  }

  v0 = qword_281575988;

  return v0;
}

BOOL _s13SleepWidgetUI0a5StageB9ViewModelV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *(a1 + 32);
  v8 = *a2;
  v7 = *(a2 + 8);
  v10 = *(a2 + 16);
  v9 = *(a2 + 24);
  v11 = *(a2 + 32);
  if (*a1)
  {
    v22 = *a1;
    v23 = v2;
    v24 = v5;
    v25 = v4;
    if (v8)
    {
      v18 = v8;
      v19 = v7;
      v20 = v10;
      v21 = v9;
      sub_269DF6E4C(v3, v2, v5, v4);
      sub_269DF6E4C(v8, v7, v10, v9);
      sub_269DF6E4C(v3, v2, v5, v4);
      v12 = _s13SleepWidgetUI0A17DaySummaryResultsV2eeoiySbAC_ACtFZ_0(&v22, &v18);
      v13 = v19;
      v14 = v21;

      v15 = v23;
      v16 = v25;

      sub_269DF6EA0(v3, v2, v5, v4);
      if ((v12 & 1) == 0)
      {
        return 0;
      }

      if (v6 == 3)
      {
        return v11 == 3;
      }

      return v11 != 3 && v6 == v11;
    }

    sub_269DF6E4C(v3, v2, v5, v4);
    sub_269DF6E4C(0, v7, v10, v9);
    sub_269DF6E4C(v3, v2, v5, v4);

LABEL_10:
    sub_269DF6EA0(v3, v2, v5, v4);
    sub_269DF6EA0(v8, v7, v10, v9);
    return 0;
  }

  sub_269DF6E4C(0, v2, v5, v4);
  if (v8)
  {
    sub_269DF6E4C(v8, v7, v10, v9);
    goto LABEL_10;
  }

  sub_269DF6E4C(0, v7, v10, v9);
  sub_269DF6EA0(0, v2, v5, v4);
  if (v6 != 3)
  {
    return v11 != 3 && v6 == v11;
  }

  return v11 == 3;
}

void sub_269E18D98(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277D837D0]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_269E18DEC()
{
  result = qword_281571D58;
  if (!qword_281571D58)
  {
    sub_269E18D98(255, &qword_281571D70, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281571D58);
  }

  return result;
}

unint64_t sub_269E18E64()
{
  result = qword_28035EE18;
  if (!qword_28035EE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28035EE18);
  }

  return result;
}

unint64_t sub_269E18EBC()
{
  result = qword_28035EE20;
  if (!qword_28035EE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28035EE20);
  }

  return result;
}

uint64_t sub_269E18F30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_269E1D01C(0, &qword_281571DE0, MEMORY[0x277CE3E20], MEMORY[0x277D83D88]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v17 - v6;
  if ((*(a1 + 8) & 1) != 0 || (*a1 - 2) < 2 || *a1 != 6)
  {

    return sub_269E51BDC();
  }

  else
  {
    v9 = (a1 + *(type metadata accessor for SleepWidgetViewModel() + 40));
    if (*v9)
    {
      v10 = v9[3];
      if (v10)
      {
        v11 = [v10 averageSleepDuration];
        if (v11)
        {
          v12 = v11;
          [v11 _value];
        }
      }

      sub_269E51BDC();
      v13 = sub_269E51BEC();
      v14 = *(v13 - 8);
      (*(v14 + 56))(v7, 0, 1, v13);
      return (*(v14 + 32))(a2, v7, v13);
    }

    else
    {
      v15 = sub_269E51BEC();
      v16 = *(v15 - 8);
      (*(v16 + 56))(v7, 1, 1, v15);
      sub_269E51BDC();
      result = (*(v16 + 48))(v7, 1, v15);
      if (result != 1)
      {
        return sub_269E1D530(v7, &qword_281571DE0, MEMORY[0x277CE3E20]);
      }
    }
  }

  return result;
}

uint64_t sub_269E191FC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_269E5101C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E50FFC();
  v7 = sub_269E5100C();
  v8 = sub_269E51ECC();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v27 = v10;
    *v9 = 136446210;
    *(v9 + 4) = sub_269E47920(0xD00000000000001BLL, 0x8000000269E548F0, &v27);
    _os_log_impl(&dword_269DE5000, v7, v8, "[%{public}s] Returning placeholder for sleep widget...", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x26D654490](v10, -1, -1);
    MEMORY[0x26D654490](v9, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  sub_269E50B7C();
  v11 = type metadata accessor for SleepWidgetEntry(0);
  v12 = v11[5];
  sub_269E50B7C();
  v13 = sub_269E50B9C();
  v14 = *(*(v13 - 8) + 56);
  v14(a1 + v12, 0, 1, v13);
  v15 = a1 + v11[6];
  v16 = type metadata accessor for SleepWidgetViewModel();
  v17 = v16[5];
  v18 = sub_269E50A0C();
  v19 = *(*(v18 - 8) + 56);
  v26 = a1;
  v19(v15 + v17, 1, 1, v18);
  v19(v15 + v16[6], 1, 1, v18);
  v20 = v15 + v16[8];
  sub_269E50B8C();
  v21 = v16[9];
  *(v15 + v21) = [objc_allocWithZone(sub_269E50F0C()) init];
  v14(v15 + v16[11], 1, 1, v13);
  v14(v15 + v16[12], 1, 1, v13);
  v14(v15 + v16[13], 1, 1, v13);
  *v15 = 0;
  *(v15 + 8) = 1;
  *(v15 + v16[7]) = 0;
  v22 = (v15 + v16[10]);
  *v22 = 0u;
  v22[1] = 0u;
  v23 = v11[7];
  v24 = sub_269E51BEC();
  return (*(*(v24 - 8) + 56))(v26 + v23, 1, 1, v24);
}

void sub_269E1957C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v32 = a2;
  v33 = a3;
  v6 = type metadata accessor for SleepWidgetTimelineProvider(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = sub_269E5101C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E50FFC();
  v14 = sub_269E5100C();
  v15 = sub_269E51ECC();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v31 = v7;
    v17 = v16;
    v18 = swift_slowAlloc();
    v30 = a1;
    v19 = v18;
    v34 = v18;
    *v17 = 136446210;
    *(v17 + 4) = sub_269E47920(0xD00000000000001BLL, 0x8000000269E548F0, &v34);
    _os_log_impl(&dword_269DE5000, v14, v15, "[%{public}s] Getting snapshot for sleep widget...", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v19);
    MEMORY[0x26D654490](v19, -1, -1);
    v20 = v17;
    v7 = v31;
    MEMORY[0x26D654490](v20, -1, -1);
  }

  (*(v10 + 8))(v13, v9);
  v21 = swift_allocObject();
  *(v21 + 16) = v32;
  *(v21 + 24) = v33;

  sub_269E51BFC();
  v23 = *(v4 + 24);
  v34 = *(v4 + 16);
  v22 = v34;
  v35 = v23;
  sub_269E1D5A0(v4, &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SleepWidgetTimelineProvider);
  v24 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v25 = swift_allocObject();
  sub_269E1D3E8(&v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v25 + v24);
  v26 = (v25 + ((v8 + v24 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v26 = sub_269E1D86C;
  v26[1] = v21;
  v27 = v22;
  v28 = v23;

  SleepWidgetViewModelProvider.currentSleepWidgetViewModel(showLiveContent:completion:)(1, sub_269E1D9B0, v25);

  v29 = v34;
}

uint64_t sub_269E198A8(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4 = sub_269E5101C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E50FFC();
  v9 = sub_269E5100C();
  v10 = sub_269E51ECC();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v15 = v12;
    *v11 = 136446210;
    *(v11 + 4) = sub_269E47920(0xD00000000000001BLL, 0x8000000269E548F0, &v15);
    _os_log_impl(&dword_269DE5000, v9, v10, "[%{public}s] Returning snapshot for sleep widget", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x26D654490](v12, -1, -1);
    MEMORY[0x26D654490](v11, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  return a2(a1);
}

void sub_269E19A64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v32 = a2;
  v33 = a3;
  v6 = type metadata accessor for SleepWidgetTimelineProvider(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = sub_269E5101C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E50FFC();
  v14 = sub_269E5100C();
  v15 = sub_269E51ECC();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v31 = v7;
    v17 = v16;
    v18 = swift_slowAlloc();
    v30 = a1;
    v19 = v18;
    v34 = v18;
    *v17 = 136446210;
    *(v17 + 4) = sub_269E47920(0xD00000000000001BLL, 0x8000000269E548F0, &v34);
    _os_log_impl(&dword_269DE5000, v14, v15, "[%{public}s] Getting timeline for sleep widget...", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v19);
    MEMORY[0x26D654490](v19, -1, -1);
    v20 = v17;
    v7 = v31;
    MEMORY[0x26D654490](v20, -1, -1);
  }

  (*(v10 + 8))(v13, v9);
  v21 = swift_allocObject();
  *(v21 + 16) = v32;
  *(v21 + 24) = v33;

  sub_269E51BFC();
  v23 = *(v4 + 24);
  v34 = *(v4 + 16);
  v22 = v34;
  v35 = v23;
  sub_269E1D5A0(v4, &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SleepWidgetTimelineProvider);
  v24 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v25 = swift_allocObject();
  sub_269E1D3E8(&v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v25 + v24);
  v26 = (v25 + ((v8 + v24 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v26 = sub_269E1D608;
  v26[1] = v21;
  v27 = v22;
  v28 = v23;

  SleepWidgetViewModelProvider.currentSleepWidgetViewModel(showLiveContent:completion:)(1, sub_269E1D9B0, v25);

  v29 = v34;
}

uint64_t sub_269E19D90(uint64_t a1, void (*a2)(void))
{
  v52 = a1;
  sub_269E1D7D8();
  v4 = v3;
  v54 = *(v3 - 8);
  v5 = *(v54 + 64);
  MEMORY[0x28223BE20](v3);
  v53 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E1D01C(0, &qword_281573C60, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v44 - v9;
  v11 = sub_269E50B9C();
  v47 = *(v11 - 8);
  v12 = *(v47 + 64);
  MEMORY[0x28223BE20](v11);
  v46 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_269E51BCC();
  v50 = *(v14 - 8);
  v51 = v14;
  v15 = *(v50 + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v48 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v49 = &v44 - v18;
  v19 = sub_269E5101C();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v44 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E50FFC();
  v24 = sub_269E5100C();
  v25 = sub_269E51ECC();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v45 = a2;
    v27 = v26;
    v28 = swift_slowAlloc();
    v44 = v11;
    v29 = v28;
    v55 = v28;
    *v27 = 136446210;
    *(v27 + 4) = sub_269E47920(0xD00000000000001BLL, 0x8000000269E548F0, &v55);
    _os_log_impl(&dword_269DE5000, v24, v25, "[%{public}s] Returning timeline for sleep widget", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v29);
    v11 = v44;
    MEMORY[0x26D654490](v29, -1, -1);
    v30 = v27;
    a2 = v45;
    MEMORY[0x26D654490](v30, -1, -1);
  }

  (*(v20 + 8))(v23, v19);
  v31 = type metadata accessor for SleepWidgetEntry(0);
  v32 = v52;
  sub_269E1D4B0(v52 + *(v31 + 20), v10, &qword_281573C60, MEMORY[0x277CC9578]);
  v33 = v47;
  v34 = (*(v47 + 48))(v10, 1, v11);
  v35 = v49;
  if (v34 == 1)
  {
    sub_269E1D530(v10, &qword_281573C60, MEMORY[0x277CC9578]);
    sub_269E51BBC();
  }

  else
  {
    v36 = v46;
    (*(v33 + 32))(v46, v10, v11);
    sub_269E51BAC();
    (*(v33 + 8))(v36, v11);
  }

  sub_269E1D01C(0, &qword_28035EE30, type metadata accessor for SleepWidgetEntry, MEMORY[0x277D84560]);
  v37 = *(*(v31 - 8) + 72);
  v38 = (*(*(v31 - 8) + 80) + 32) & ~*(*(v31 - 8) + 80);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_269E528D0;
  sub_269E1D5A0(v32, v39 + v38, type metadata accessor for SleepWidgetEntry);
  v41 = v50;
  v40 = v51;
  (*(v50 + 16))(v48, v35, v51);
  sub_269E1D29C(&qword_281572AD8, type metadata accessor for SleepWidgetEntry);
  v42 = v53;
  sub_269E51C2C();
  a2(v42);
  (*(v54 + 8))(v42, v4);
  return (*(v41 + 8))(v35, v40);
}

uint64_t sub_269E1A3C4(uint64_t a1, void *a2, uint64_t a3, void (*a4)(void), uint64_t a5)
{
  v77 = a5;
  v74 = a3;
  v78 = type metadata accessor for SleepWidgetEntry(0);
  v8 = *(*(v78 - 8) + 64);
  MEMORY[0x28223BE20](v78);
  v10 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E1D01C(0, &qword_281573C60, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v70 - v13;
  v79 = sub_269E50B9C();
  v15 = *(v79 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v79);
  v18 = &v70 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for SleepWidgetViewModel();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v70 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_269E5101C();
  v81 = *(v23 - 8);
  v82 = v23;
  v24 = *(v81 + 64);
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v70 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v29 = &v70 - v28;
  v80 = v14;
  if (a2)
  {
    v75 = v15;
    v30 = a2;
    sub_269E50FFC();
    v31 = a2;
    v32 = sub_269E5100C();
    v33 = sub_269E51EAC();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v72 = v22;
      v76 = v27;
      v35 = v34;
      v71 = swift_slowAlloc();
      v84 = v71;
      *v35 = 136446466;
      *(v35 + 4) = sub_269E47920(0xD00000000000001BLL, 0x8000000269E548F0, &v84);
      *(v35 + 12) = 2082;
      ErrorValue = swift_getErrorValue();
      v70 = &v70;
      v73 = a4;
      v37 = *(*(v83 - 8) + 64);
      MEMORY[0x28223BE20](ErrorValue);
      v39 = v33;
      v40 = v18;
      v41 = a1;
      (*(v42 + 16))(&v70 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
      v43 = sub_269E51D0C();
      v45 = sub_269E47920(v43, v44, &v84);
      a4 = v73;

      *(v35 + 14) = v45;
      a1 = v41;
      v18 = v40;
      _os_log_impl(&dword_269DE5000, v32, v39, "[%{public}s] Error getting sleep widget viewModel: %{public}s", v35, 0x16u);
      v46 = v71;
      swift_arrayDestroy();
      MEMORY[0x26D654490](v46, -1, -1);
      v47 = v35;
      v27 = v76;
      v22 = v72;
      MEMORY[0x26D654490](v47, -1, -1);
    }

    else
    {
    }

    (*(v81 + 8))(v29, v82);
    v14 = v80;
    v15 = v75;
  }

  sub_269E50FFC();
  sub_269E1D5A0(a1, v22, type metadata accessor for SleepWidgetViewModel);
  v48 = v27;
  v49 = sub_269E5100C();
  v50 = sub_269E51ECC();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v75 = a1;
    v73 = v52;
    v84 = v52;
    *v51 = 136446466;
    *(v51 + 4) = sub_269E47920(0xD00000000000001BLL, 0x8000000269E548F0, &v84);
    *(v51 + 12) = 2082;
    v76 = v48;
    v53 = SleepWidgetViewModel.description.getter();
    v54 = v22;
    v55 = v18;
    v56 = v15;
    v57 = a4;
    v59 = v58;
    sub_269E1D450(v54, type metadata accessor for SleepWidgetViewModel);
    v60 = sub_269E47920(v53, v59, &v84);
    a4 = v57;
    v15 = v56;
    v18 = v55;

    *(v51 + 14) = v60;
    _os_log_impl(&dword_269DE5000, v49, v50, "[%{public}s] Returning sleep widget viewModel: %{public}s", v51, 0x16u);
    v61 = v73;
    swift_arrayDestroy();
    a1 = v75;
    MEMORY[0x26D654490](v61, -1, -1);
    v62 = v51;
    v14 = v80;
    MEMORY[0x26D654490](v62, -1, -1);

    (*(v81 + 8))(v76, v82);
  }

  else
  {

    sub_269E1D450(v22, type metadata accessor for SleepWidgetViewModel);
    (*(v81 + 8))(v48, v82);
  }

  sub_269E50B8C();
  v63 = v79;
  if ((*(a1 + 8) & 1) != 0 || (*a1 - 6) > 0xFFFFFFFFFFFFFFFBLL)
  {
    (*(v15 + 56))(v14, 1, 1, v79);
  }

  else
  {
    v64 = v74 + *(type metadata accessor for SleepWidgetTimelineProvider(0) + 32);
    Calendar.midnight(after:)(v14);
  }

  (*(v15 + 16))(v10, v18, v63);
  v65 = v78;
  v66 = MEMORY[0x277CC9578];
  sub_269E1D4B0(v14, &v10[*(v78 + 20)], &qword_281573C60, MEMORY[0x277CC9578]);
  sub_269E1D5A0(a1, &v10[*(v65 + 24)], type metadata accessor for SleepWidgetViewModel);
  v67 = *(v65 + 28);
  sub_269E18F30(a1, &v10[v67]);
  v68 = sub_269E51BEC();
  (*(*(v68 - 8) + 56))(&v10[v67], 0, 1, v68);
  a4(v10);
  sub_269E1D450(v10, type metadata accessor for SleepWidgetEntry);
  sub_269E1D530(v14, &qword_281573C60, v66);
  return (*(v15 + 8))(v18, v63);
}

uint64_t sub_269E1ABE4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_269DF73E0;

  return sub_269E1AC7C(a1);
}

uint64_t sub_269E1AC7C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for SleepWidgetEntry(0);
  v2[4] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[5] = swift_task_alloc();
  v5 = sub_269E5101C();
  v2[6] = v5;
  v6 = *(v5 - 8);
  v2[7] = v6;
  v7 = *(v6 + 64) + 15;
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_269E1AD78, 0, 0);
}

uint64_t sub_269E1AD78()
{
  v19 = v0;
  v1 = v0[9];
  sub_269E50FFC();
  v2 = sub_269E5100C();
  v3 = sub_269E51ECC();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[9];
  v6 = v0[6];
  v7 = v0[7];
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18 = v9;
    *v8 = 136446210;
    *(v8 + 4) = sub_269E47920(0xD00000000000001BLL, 0x8000000269E548F0, &v18);
    _os_log_impl(&dword_269DE5000, v2, v3, "[%{public}s] fetching current entry for relevance...", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x26D654490](v9, -1, -1);
    MEMORY[0x26D654490](v8, -1, -1);
  }

  v10 = *(v7 + 8);
  v10(v5, v6);
  v0[10] = v10;
  v11 = v0[3];
  v12 = swift_task_alloc();
  v0[11] = v12;
  *(v12 + 16) = v11;
  *(v12 + 24) = 1;
  v13 = *(MEMORY[0x277D859E0] + 4);
  v14 = swift_task_alloc();
  v0[12] = v14;
  *v14 = v0;
  v14[1] = sub_269E1AF80;
  v16 = v0[4];
  v15 = v0[5];

  return MEMORY[0x2822007B8](v15, 0, 0, 0xD000000000000023, 0x8000000269E567C0, sub_269E1D304, v12, v16);
}

uint64_t sub_269E1AF80()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 88);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_269E1B098, 0, 0);
}

uint64_t sub_269E1B098()
{
  v18 = v0;
  v1 = v0[8];
  sub_269E50FFC();
  v2 = sub_269E5100C();
  v3 = sub_269E51ECC();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[10];
  v7 = v0[7];
  v6 = v0[8];
  v8 = v0[6];
  if (v4)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v17 = v10;
    *v9 = 136446210;
    *(v9 + 4) = sub_269E47920(0xD00000000000001BLL, 0x8000000269E548F0, &v17);
    _os_log_impl(&dword_269DE5000, v2, v3, "[%{public}s] determining relevance for entry...", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x26D654490](v10, -1, -1);
    MEMORY[0x26D654490](v9, -1, -1);
  }

  v5(v6, v8);
  v11 = v0[8];
  v12 = v0[9];
  v13 = v0[5];
  v14 = *(v0[4] + 24);
  sub_269DF453C(v0[2]);
  sub_269E1D450(v13, type metadata accessor for SleepWidgetEntry);

  v15 = v0[1];

  return v15();
}

void sub_269E1B250(uint64_t a1, uint64_t a2, int a3)
{
  v25 = a3;
  v5 = type metadata accessor for SleepWidgetTimelineProvider(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v24[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_269E1D310();
  v10 = v9;
  v11 = *(v9 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  (*(v11 + 16))(&v24[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)], a1, v10);
  v13 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v14 = swift_allocObject();
  (*(v11 + 32))(v14 + v13, &v24[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)], v10);
  v16 = *(a2 + 24);
  v26 = *(a2 + 16);
  v15 = v26;
  v27 = v16;
  sub_269E1D5A0(a2, v8, type metadata accessor for SleepWidgetTimelineProvider);
  v17 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v18 = (v7 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  sub_269E1D3E8(v8, v19 + v17);
  v20 = (v19 + v18);
  *v20 = sub_269E1D378;
  v20[1] = v14;
  v21 = v15;
  v22 = v16;

  SleepWidgetViewModelProvider.currentSleepWidgetViewModel(showLiveContent:completion:)(v25, sub_269E1D44C, v19);

  v23 = v26;
}

uint64_t sub_269E1B4B4(uint64_t a1)
{
  v2 = type metadata accessor for SleepWidgetEntry(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_269E1D5A0(a1, &v6 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SleepWidgetEntry);
  sub_269E1D310();
  return sub_269E51DEC();
}

SleepWidgetUI::SleepWidget __swiftcall SleepWidget.init()()
{
  v1 = v0;
  v2 = *MEMORY[0x277D62310];
  v3 = sub_269E51CDC();
  *v1 = v3;
  v1[1] = v4;
  result.kind._object = v4;
  result.kind._countAndFlagsBits = v3;
  return result;
}

uint64_t SleepWidget.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v84 = a1;
  v3 = sub_269E50BDC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SleepWidgetTimelineProvider(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_269E1C040();
  v69 = v12;
  v68 = *(v12 - 8);
  v13 = *(v68 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E1C370();
  v74 = v16;
  v71 = *(v16 - 8);
  v17 = *(v71 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v68 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E1C440();
  v76 = v20;
  v73 = *(v20 - 8);
  v21 = *(v73 + 64);
  MEMORY[0x28223BE20](v20);
  v70 = &v68 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E1C550();
  v81 = v23;
  v75 = *(v23 - 8);
  v24 = *(v75 + 64);
  MEMORY[0x28223BE20](v23);
  v72 = &v68 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E1C698();
  v82 = *(v26 - 8);
  v83 = v26;
  v27 = *(v82 + 64);
  MEMORY[0x28223BE20](v26);
  v79 = &v68 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E1C810();
  v80 = v29;
  v78 = *(v29 - 8);
  v30 = *(v78 + 64);
  MEMORY[0x28223BE20](v29);
  v77 = &v68 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = *v2;
  v32 = v2[1];
  v34 = *(v8 + 32);
  (*(v4 + 104))(v7, *MEMORY[0x277CC9830], v3);

  sub_269E50BEC();
  (*(v4 + 8))(v7, v3);
  v35 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
  *v11 = v35;
  v36 = objc_allocWithZone(MEMORY[0x277D62528]);
  v37 = v35;
  v38 = sub_269E51CCC();
  v39 = [v36 initWithIdentifier:v38 healthStore:v37 options:1];

  v11[1] = v39;
  v11[2] = v37;
  v11[3] = v39;
  sub_269E1C0A4();
  sub_269E1C230();
  sub_269E1D29C(qword_281572CC0, type metadata accessor for SleepWidgetTimelineProvider);
  v40 = v39;
  sub_269E51B8C();
  if (qword_281571CB0 != -1)
  {
    swift_once();
  }

  v85 = sub_269E50A7C();
  v86 = v41;
  v42 = sub_269E1D29C(&qword_281571DF0, sub_269E1C040);
  v43 = sub_269DF0E28();
  v44 = MEMORY[0x277D837D0];
  v45 = v69;
  sub_269E5138C();

  (*(v68 + 8))(v15, v45);
  v89 = sub_269E50A7C();
  v90 = v46;
  v85 = v45;
  v86 = v44;
  v87 = v42;
  v88 = v43;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v48 = v70;
  v49 = v74;
  sub_269E5135C();

  (*(v71 + 8))(v19, v49);
  _s13SleepWidgetUI0aB4ViewV17supportedFamiliesSay0B3Kit0B6FamilyOGvgZ_0();
  v85 = v49;
  v86 = v44;
  v87 = OpaqueTypeConformance2;
  v88 = v43;
  v50 = swift_getOpaqueTypeConformance2();
  v51 = v72;
  v52 = v76;
  sub_269E5136C();

  (*(v73 + 8))(v48, v52);
  v85 = v52;
  v86 = v50;
  v53 = swift_getOpaqueTypeConformance2();
  v54 = v79;
  v55 = v81;
  sub_269E5139C();
  (*(v75 + 8))(v51, v55);
  v56 = MEMORY[0x277D84560];
  sub_269E1D01C(0, &qword_281571BC8, MEMORY[0x277CE3BD8], MEMORY[0x277D84560]);
  v57 = *(sub_269E51B3C() - 8);
  v58 = *(v57 + 72);
  v59 = (*(v57 + 80) + 32) & ~*(v57 + 80);
  *(swift_allocObject() + 16) = xmmword_269E528E0;
  sub_269E51B2C();
  sub_269E51B1C();
  sub_269E1D01C(0, &qword_281571BD0, MEMORY[0x277CE3BA0], v56);
  v60 = sub_269E51B0C();
  v61 = *(v60 - 8);
  v62 = *(v61 + 72);
  v63 = (*(v61 + 80) + 32) & ~*(v61 + 80);
  v64 = swift_allocObject();
  *(v64 + 16) = xmmword_269E528D0;
  (*(v61 + 104))(v64 + v63, *MEMORY[0x277CE3B68], v60);
  v85 = v55;
  v86 = v53;
  swift_getOpaqueTypeConformance2();
  v65 = v77;
  v66 = v83;
  sub_269E5137C();

  (*(v82 + 8))(v54, v66);
  sub_269E1CB98(v84);
  return (*(v78 + 8))(v65, v80);
}

void sub_269E1C040()
{
  if (!qword_281571DE8)
  {
    sub_269E1C0A4();
    sub_269E1C230();
    v0 = sub_269E51B9C();
    if (!v1)
    {
      atomic_store(v0, &qword_281571DE8);
    }
  }
}

void sub_269E1C0A4()
{
  if (!qword_281572428)
  {
    sub_269E1C144();
    sub_269E1D1E8(255, &qword_2815720D8, MEMORY[0x277CE0180], MEMORY[0x277CE0178], MEMORY[0x277CE0498]);
    v0 = sub_269E510FC();
    if (!v1)
    {
      atomic_store(v0, &qword_281572428);
    }
  }
}

void sub_269E1C144()
{
  if (!qword_281571F80)
  {
    type metadata accessor for SleepWidgetView();
    sub_269E50B9C();
    sub_269E1D29C(&qword_281572B80, type metadata accessor for SleepWidgetView);
    sub_269E1D29C(&qword_281573C68, MEMORY[0x277CC9578]);
    v0 = sub_269E5192C();
    if (!v1)
    {
      atomic_store(v0, &qword_281571F80);
    }
  }
}

unint64_t sub_269E1C230()
{
  result = qword_281572430;
  if (!qword_281572430)
  {
    sub_269E1C0A4();
    sub_269E1D29C(&qword_281571F88, sub_269E1C144);
    sub_269E1C2E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281572430);
  }

  return result;
}

unint64_t sub_269E1C2E0()
{
  result = qword_2815720E0;
  if (!qword_2815720E0)
  {
    sub_269E1D1E8(255, &qword_2815720D8, MEMORY[0x277CE0180], MEMORY[0x277CE0178], MEMORY[0x277CE0498]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815720E0);
  }

  return result;
}

void sub_269E1C370()
{
  if (!qword_281572268)
  {
    sub_269E1C040();
    sub_269E1D29C(&qword_281571DF0, sub_269E1C040);
    sub_269DF0E28();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_281572268);
    }
  }
}

void sub_269E1C440()
{
  if (!qword_2815722A8)
  {
    sub_269E1C370();
    sub_269E1C040();
    sub_269E1D29C(&qword_281571DF0, sub_269E1C040);
    sub_269DF0E28();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2815722A8);
    }
  }
}

void sub_269E1C550()
{
  if (!qword_281572290)
  {
    sub_269E1C440();
    sub_269E1C370();
    sub_269E1C040();
    sub_269E1D29C(&qword_281571DF0, sub_269E1C040);
    sub_269DF0E28();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_281572290);
    }
  }
}

void sub_269E1C698()
{
  if (!qword_281572248)
  {
    sub_269E1C550();
    sub_269E1C440();
    sub_269E1C370();
    sub_269E1C040();
    sub_269E1D29C(&qword_281571DF0, sub_269E1C040);
    sub_269DF0E28();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_281572248);
    }
  }
}

void sub_269E1C810()
{
  if (!qword_281572278)
  {
    sub_269E1C698();
    sub_269E1C550();
    sub_269E1C440();
    sub_269E1C370();
    sub_269E1C040();
    sub_269E1D29C(&qword_281571DF0, sub_269E1C040);
    sub_269DF0E28();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_281572278);
    }
  }
}

void sub_269E1C9C0(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_269E51E1C();
  sub_269E51E0C();
  sub_269E51DDC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = *(type metadata accessor for SleepWidgetEntry(0) + 24);
  v5 = type metadata accessor for SleepWidgetView();
  sub_269E1D5A0(a1 + v4, a2 + v5[7], type metadata accessor for SleepWidgetViewModel);
  *a2 = swift_getKeyPath();
  sub_269E1D01C(0, &qword_281572608, MEMORY[0x277CE3BA0], MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  v6 = v5[5];
  *(a2 + v6) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v7 = a2 + v5[6];
  *v7 = swift_getKeyPath();
  sub_269E1C144();
  *(v7 + 2) = 0;
  *(v7 + 3) = 0;
  *(v7 + 1) = 0;
  v7[32] = 0;
  v9 = *(v8 + 52);
  v10 = sub_269E50B9C();
  (*(*(v10 - 8) + 16))(a2 + v9, a1, v10);
  v11 = sub_269E5107C();

  sub_269E1C0A4();
  *(a2 + *(v12 + 36)) = v11;
}

id sub_269E1CB98@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_269E5101C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v39 - v9;
  result = [objc_opt_self() sharedBehavior];
  if (result)
  {
    v12 = result;
    v13 = [result hksp_supportsSleepWidget];

    v39[0] = a1;
    v39[1] = v1;
    if (v13)
    {
      sub_269E50FFC();
      v14 = sub_269E5100C();
      v15 = sub_269E51E9C();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v40 = v17;
        *v16 = 136446210;
        *(v16 + 4) = sub_269E47920(0xD00000000000006BLL, 0x8000000269E56BF0, &v40);
        _os_log_impl(&dword_269DE5000, v14, v15, "[%{public}s] sleep widget supported", v16, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v17);
        MEMORY[0x26D654490](v17, -1, -1);
        MEMORY[0x26D654490](v16, -1, -1);
      }

      (*(v4 + 8))(v10, v3);
    }

    else
    {
      sub_269E50FFC();
      v18 = sub_269E5100C();
      v19 = sub_269E51ECC();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v40 = v21;
        *v20 = 136446210;
        *(v20 + 4) = sub_269E47920(0xD00000000000006BLL, 0x8000000269E56BF0, &v40);
        _os_log_impl(&dword_269DE5000, v18, v19, "[%{public}s] sleep widget not supported", v20, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v21);
        MEMORY[0x26D654490](v21, -1, -1);
        MEMORY[0x26D654490](v20, -1, -1);
      }

      (*(v4 + 8))(v8, v3);
    }

    sub_269E1C810();
    sub_269E1C698();
    v23 = v22;
    sub_269E1C550();
    v25 = v24;
    sub_269E1C440();
    v27 = v26;
    sub_269E1C370();
    v29 = v28;
    sub_269E1C040();
    v31 = v30;
    v32 = sub_269E1D29C(&qword_281571DF0, sub_269E1C040);
    v33 = sub_269DF0E28();
    v34 = MEMORY[0x277D837D0];
    v40 = v31;
    v41 = MEMORY[0x277D837D0];
    v42 = v32;
    v43 = v33;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v40 = v29;
    v41 = v34;
    v42 = OpaqueTypeConformance2;
    v43 = v33;
    v36 = swift_getOpaqueTypeConformance2();
    v40 = v27;
    v41 = v36;
    v37 = swift_getOpaqueTypeConformance2();
    v40 = v25;
    v41 = v37;
    v38 = swift_getOpaqueTypeConformance2();
    v40 = v23;
    v41 = v38;
    swift_getOpaqueTypeConformance2();
    return sub_269E513AC();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_269E1CFE4@<X0>(uint64_t *a1@<X8>)
{
  v2 = *MEMORY[0x277D62310];
  result = sub_269E51CDC();
  *a1 = result;
  a1[1] = v4;
  return result;
}

void sub_269E1D01C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_269E1D0D4()
{
  sub_269DF6A7C(319, &qword_281571D10, 0x277CCD4D8);
  if (v0 <= 0x3F)
  {
    sub_269DF6A7C(319, &qword_281571D08, 0x277D62528);
    if (v1 <= 0x3F)
    {
      sub_269E1D1E8(319, &qword_281572B88, type metadata accessor for SleepWidgetViewModel, &protocol witness table for SleepWidgetViewModel, type metadata accessor for SleepWidgetRelevanceProvider);
      if (v2 <= 0x3F)
      {
        sub_269E50C8C();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_269E1D1E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, v9, a4);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_269E1D29C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_269E1D310()
{
  if (!qword_281571D30)
  {
    type metadata accessor for SleepWidgetEntry(255);
    v0 = sub_269E51DFC();
    if (!v1)
    {
      atomic_store(v0, &qword_281571D30);
    }
  }
}

uint64_t sub_269E1D378(uint64_t a1)
{
  sub_269E1D310();
  v3 = *(*(v2 - 8) + 80);

  return sub_269E1B4B4(a1);
}

uint64_t sub_269E1D3E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SleepWidgetTimelineProvider(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_269E1D450(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_269E1D4B0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_269E1D01C(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_269E1D530(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_269E1D01C(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_269E1D5A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_17Tm_0()
{
  v1 = (type metadata accessor for SleepWidgetTimelineProvider(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v0 + v3);

  v6 = v1[10];
  v7 = sub_269E50C8C();
  (*(*(v7 - 8) + 8))(v5 + v6, v7);
  v8 = *(v0 + v4 + 8);

  return MEMORY[0x2821FE8E8](v0, v4 + 16, v2 | 7);
}

uint64_t sub_269E1D728(uint64_t a1, void *a2)
{
  v5 = *(type metadata accessor for SleepWidgetTimelineProvider(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
  v8 = *v7;
  v9 = *(v7 + 8);

  return sub_269E1A3C4(a1, a2, v2 + v6, v8, v9);
}

void sub_269E1D7D8()
{
  if (!qword_28035EE28)
  {
    type metadata accessor for SleepWidgetEntry(255);
    sub_269E1D29C(&qword_281572AD8, type metadata accessor for SleepWidgetEntry);
    v0 = sub_269E51C3C();
    if (!v1)
    {
      atomic_store(v0, &qword_28035EE28);
    }
  }
}

void sub_269E1D89C()
{
  sub_269E50B9C();
  if (v0 <= 0x3F)
  {
    sub_269E1D01C(319, &qword_281573C60, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for SleepWidgetViewModel();
      if (v2 <= 0x3F)
      {
        sub_269E1D01C(319, &qword_281571DE0, MEMORY[0x277CE3E20], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

id SleepScoreWidgetViewModel.summaryResults.getter@<X0>(void *a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  *a1 = *v1;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return sub_269DF6E4C(v2, v3, v4, v5);
}

uint64_t SleepScoreWidgetViewModel.init(summaryResults:algorithmVersion:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1[1];
  *a3 = *a1;
  *(a3 + 1) = v5;
  v6 = *(type metadata accessor for SleepScoreWidgetViewModel() + 20);
  v7 = sub_269E50CDC();
  v8 = *(*(v7 - 8) + 32);

  return v8(&a3[v6], a2, v7);
}

uint64_t type metadata accessor for SleepScoreWidgetViewModel()
{
  result = qword_281573220;
  if (!qword_281573220)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_269E1DA9C@<X0>(uint64_t a1@<X8>)
{
  sub_269E1E718(0, &unk_281573CE0, MEMORY[0x277D625A8]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v25 - v5;
  v7 = sub_269E50CCC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  MEMORY[0x28223BE20](v10);
  v13 = &v25 - v12;
  v14 = *v1;
  if (*v1)
  {
    v26 = v11;
    v27 = v14;
    v15 = v1[2];
    v16 = v1[3];
    v28 = v1[1];
    v17 = v28;
    v29 = v15;
    v30 = v16;
    v18 = *(type metadata accessor for SleepScoreWidgetViewModel() + 20);
    v19 = v16;

    v20 = v17;
    SleepDaySummaryResults.lastSleepScoreSummary(algorithmVersion:)(v1 + v18, v6);
    v21 = v28;
    v22 = v30;

    if ((*(v8 + 48))(v6, 1, v7) != 1)
    {
      (*(v8 + 32))(v13, v6, v7);
      (*(v8 + 16))(v26, v13, v7);
      sub_269E50D6C();
      return (*(v8 + 8))(v13, v7);
    }
  }

  else
  {
    (*(v8 + 56))(v6, 1, 1, v7);
  }

  sub_269E1E76C(v6, &unk_281573CE0, MEMORY[0x277D625A8]);
  v24 = sub_269E50D8C();
  return (*(*(v24 - 8) + 56))(a1, 1, 1, v24);
}

uint64_t sub_269E1DD50()
{
  v21 = sub_269E51CBC();
  v0 = *(v21 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v21);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_269E50CAC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E1E718(0, &qword_28035EE48, MEMORY[0x277D626B8]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v20 - v11;
  v13 = sub_269E50D8C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E1DA9C(v12);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_269E1E76C(v12, &qword_28035EE48, MEMORY[0x277D626B8]);
    sub_269E51CAC();
    v18 = sub_269E35418(v3);
    (*(v0 + 8))(v3, v21);
  }

  else
  {
    (*(v14 + 32))(v17, v12, v13);
    sub_269E50D7C();
    v18 = sub_269E50C9C();
    (*(v5 + 8))(v8, v4);
    (*(v14 + 8))(v17, v13);
  }

  return v18;
}

uint64_t SleepScoreWidgetViewModel.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  if (!*v1)
  {
    goto LABEL_6;
  }

  v4 = *(v1 + 8);
  v5 = *(v1 + 24);
  v6 = *(v1 + 16);
  sub_269E5222C();
  sub_269E0EE0C(a1, v3);
  sub_269E5222C();
  if (v4)
  {
    v7 = v4;
    sub_269E51F7C();
  }

  MEMORY[0x26D653EA0](v6);
  if (v5)
  {
    sub_269E5222C();
    v8 = v5;
    sub_269E51F7C();
  }

  else
  {
LABEL_6:
    sub_269E5222C();
  }

  v9 = *(type metadata accessor for SleepScoreWidgetViewModel() + 20);
  sub_269E50CDC();
  sub_269E1E7C8(&qword_28035EE38, MEMORY[0x277D625B8]);
  return sub_269E51C4C();
}

uint64_t SleepScoreWidgetViewModel.hashValue.getter()
{
  sub_269E5220C();
  SleepScoreWidgetViewModel.hash(into:)(v1);
  return sub_269E5223C();
}

uint64_t sub_269E1E1EC()
{
  sub_269E5220C();
  SleepScoreWidgetViewModel.hash(into:)(v1);
  return sub_269E5223C();
}

uint64_t sub_269E1E230()
{
  sub_269E5220C();
  SleepScoreWidgetViewModel.hash(into:)(v1);
  return sub_269E5223C();
}

uint64_t SleepScoreWidgetViewModel.baseAccessibilityIdentifier.getter()
{
  if (qword_28035E8A0 != -1)
  {
    swift_once();
  }

  v0 = qword_2803610A8;

  return v0;
}

id sub_269E1E2E4@<X0>(void *a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  *a1 = *v1;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return sub_269DF6E4C(v2, v3, v4, v5);
}

uint64_t sub_269E1E304()
{
  if (qword_28035E8A0 != -1)
  {
    swift_once();
  }

  v0 = qword_2803610A8;

  return v0;
}

BOOL _s13SleepWidgetUI0a5ScoreB9ViewModelV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v7 = *a2;
  v6 = *(a2 + 8);
  v9 = *(a2 + 16);
  v8 = *(a2 + 24);
  if (*a1)
  {
    v21 = *a1;
    v22 = v2;
    v23 = v5;
    v24 = v4;
    if (v7)
    {
      v17 = v7;
      v18 = v6;
      v19 = v9;
      v20 = v8;
      sub_269DF6E4C(v3, v2, v5, v4);
      sub_269DF6E4C(v7, v6, v9, v8);
      sub_269DF6E4C(v3, v2, v5, v4);
      v10 = _s13SleepWidgetUI0A17DaySummaryResultsV2eeoiySbAC_ACtFZ_0(&v21, &v17);
      v11 = v18;
      v12 = v20;

      v13 = v22;
      v14 = v24;

      sub_269DF6EA0(v3, v2, v5, v4);
      if ((v10 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_10;
    }

    sub_269DF6E4C(v3, v2, v5, v4);
    sub_269DF6E4C(0, v6, v9, v8);
    sub_269DF6E4C(v3, v2, v5, v4);

LABEL_8:
    sub_269DF6EA0(v3, v2, v5, v4);
    sub_269DF6EA0(v7, v6, v9, v8);
    return 0;
  }

  sub_269DF6E4C(0, v2, v5, v4);
  if (v7)
  {
    sub_269DF6E4C(v7, v6, v9, v8);
    goto LABEL_8;
  }

  sub_269DF6E4C(0, v6, v9, v8);
  sub_269DF6EA0(0, v2, v5, v4);
LABEL_10:
  v16 = *(type metadata accessor for SleepScoreWidgetViewModel() + 20);
  sub_269E50CDC();
  sub_269E1E7C8(&qword_28035EE50, MEMORY[0x277D625B8]);
  sub_269E51D8C();
  sub_269E51D8C();
  return v21 == v17;
}

void sub_269E1E644()
{
  sub_269E1E6C8();
  if (v0 <= 0x3F)
  {
    sub_269E50CDC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_269E1E6C8()
{
  if (!qword_281573CD8)
  {
    v0 = sub_269E51F9C();
    if (!v1)
    {
      atomic_store(v0, &qword_281573CD8);
    }
  }
}

void sub_269E1E718(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_269E51F9C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_269E1E76C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_269E1E718(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_269E1E7C8(unint64_t *a1, void (*a2)(uint64_t))
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

BOOL SleepWidgetModelProviding.hasDataLastNight.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 8))(&v10);
  v2 = v10;
  if (!v10)
  {
    return 0;
  }

  v4 = v11;
  v3 = v12;
  v5 = v13;
  if (!v11)
  {
    sub_269DF6EA0(v10, 0, v12, v13);
    return 0;
  }

  [v11 sleepDuration];
  if (v6 > COERCE_DOUBLE(1) && v6 > 0.0)
  {
    sub_269DF6EA0(v2, v4, v3, v5);
    return 1;
  }

  [v4 inBedDuration];
  v9 = v8;
  sub_269DF6EA0(v2, v4, v3, v5);
  return v9 > COERCE_DOUBLE(1) && v9 > 0.0;
}

uint64_t SleepWidgetModelProviding.hasAsleepDataLastNight.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 8))(&v9);
  v2 = v9;
  if (v9)
  {
    v4 = v10;
    v3 = v11;
    v5 = v12;
    if (v10)
    {
      [v10 sleepDuration];
      v7 = v6;
      sub_269DF6EA0(v2, v4, v3, v5);
      if (v7 > COERCE_DOUBLE(1) && v7 > 0.0)
      {
        return 1;
      }
    }

    else
    {
      sub_269DF6EA0(v9, 0, v11, v12);
    }
  }

  return 0;
}

uint64_t SleepWidgetModelProviding.summaryDurationTitle.getter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v4(&v22);
  v5 = v22;
  if (v22)
  {
    v6 = v23;
    v7 = v24;
    v8 = v25;
    if (v25 && (v9 = [v25 averageSleepDuration]) != 0)
    {
      v10 = v9;
      [v9 _value];
      v12 = v11;

      sub_269DF6EA0(v5, v6, v7, v8);
      if (v12 > COERCE_DOUBLE(1))
      {
        goto LABEL_14;
      }
    }

    else
    {
      sub_269DF6EA0(v5, v6, v7, v8);
    }
  }

  (v4)(&v22, a1, a2);
  v13 = v22;
  if (v22)
  {
    v14 = v23;
    v15 = v24;
    v16 = v25;
    if (v25 && (v17 = [v25 averageInBedDuration]) != 0)
    {
      v18 = v17;
      [v17 _value];
      v20 = v19;

      sub_269DF6EA0(v13, v14, v15, v16);
      if (v20 > COERCE_DOUBLE(1))
      {
        if (qword_281571CB0 == -1)
        {
          return sub_269E50A7C();
        }

        goto LABEL_16;
      }
    }

    else
    {
      sub_269DF6EA0(v13, v14, v15, v16);
    }
  }

LABEL_14:
  if (qword_281571CB0 != -1)
  {
LABEL_16:
    swift_once();
  }

  return sub_269E50A7C();
}

uint64_t SleepWidgetModelProviding.summaryDurationText.getter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v4(&v30);
  v5 = v30;
  if (v30)
  {
    v6 = v31;
    v7 = v32;
    v8 = v33;
    if (v33 && (v9 = [v33 averageSleepDuration]) != 0)
    {
      v10 = v9;
      [v9 _value];
      v12 = v11;

      sub_269DF6EA0(v5, v6, v7, v8);
      if (v12 > COERCE_DOUBLE(1))
      {
        sub_269E51E2C();
        v14 = v13;
        v15 = [objc_allocWithZone(MEMORY[0x277CCA958]) init];
        [v15 setUnitsStyle_];
        [v15 setAllowedUnits_];
        v16 = [v15 stringFromTimeInterval_];
        if (v16)
        {
LABEL_6:
          v17 = v16;
          v18 = sub_269E51CDC();

          return v18;
        }

        goto LABEL_13;
      }
    }

    else
    {
      sub_269DF6EA0(v5, v6, v7, v8);
    }
  }

  (v4)(&v30, a1, a2);
  v20 = v30;
  if (v30)
  {
    v21 = v31;
    v22 = v32;
    v23 = v33;
    if (!v33 || (v24 = [v33 averageInBedDuration]) == 0)
    {
      sub_269DF6EA0(v20, v21, v22, v23);
      return 0;
    }

    v25 = v24;
    [v24 _value];
    v27 = v26;

    sub_269DF6EA0(v20, v21, v22, v23);
    if (v27 > COERCE_DOUBLE(1))
    {
      sub_269E51E2C();
      v29 = v28;
      v15 = [objc_allocWithZone(MEMORY[0x277CCA958]) init];
      [v15 setUnitsStyle_];
      [v15 setAllowedUnits_];
      v16 = [v15 stringFromTimeInterval_];
      if (v16)
      {
        goto LABEL_6;
      }

LABEL_13:
    }
  }

  return 0;
}

uint64_t sub_269E1EFA8()
{
  result = sub_269E5103C();
  if (v1 <= 0x3F)
  {
    result = sub_269E510EC();
    if (v2 <= 0x3F)
    {
      result = sub_269E51ADC();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_269E1F060@<X0>(uint64_t a1@<X8>)
{
  v71 = a1;
  v73 = sub_269E5146C();
  v72 = *(v73 - 8);
  v2 = *(v72 + 64);
  MEMORY[0x28223BE20](v73);
  v70 = &v65 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E20144(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v69 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Specs(0);
  v8 = v7 - 8;
  v9 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E201DC(0);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E20404(0);
  v18 = v17 - 8;
  v19 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v65 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E2042C(0);
  v23 = v22;
  v24 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22);
  v26 = &v65 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E21F38(0, &qword_28035EEE0, sub_269E2042C, sub_269E20454);
  v68 = v27;
  v67 = *(v27 - 8);
  v28 = *(v67 + 64);
  MEMORY[0x28223BE20](v27);
  v66 = &v65 - v29;
  *v16 = sub_269E5134C();
  *(v16 + 1) = 0;
  v16[16] = 0;
  sub_269E22140(0, &qword_28035EF08, sub_269E20298);
  sub_269E1F6C0(v1, &v16[*(v30 + 44)]);
  v31 = sub_269E514DC();
  sub_269E5102C();
  v32 = &v16[*(v13 + 44)];
  *v32 = v31;
  *(v32 + 1) = v33;
  *(v32 + 2) = v34;
  *(v32 + 3) = v35;
  *(v32 + 4) = v36;
  v32[40] = 0;
  v37 = sub_269E5150C();
  v38 = v1 + *(type metadata accessor for SleepScoreWidgetSmallView(0) + 20);
  sub_269E2EB30(v11);
  v39 = &v11[*(v8 + 28)];
  sub_269E510CC();
  sub_269E22524(v11, type metadata accessor for Specs);
  sub_269E5102C();
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v47 = v46;
  sub_269E218E0(v16, v21, sub_269E201DC);
  v48 = &v21[*(v18 + 44)];
  *v48 = v37;
  *(v48 + 1) = v41;
  *(v48 + 2) = v43;
  *(v48 + 3) = v45;
  *(v48 + 4) = v47;
  v48[40] = 0;
  sub_269E5199C();
  v49 = 1;
  sub_269E5111C();
  sub_269E218E0(v21, v26, sub_269E20404);
  v50 = &v26[*(v23 + 36)];
  v51 = v81;
  *(v50 + 4) = v80;
  *(v50 + 5) = v51;
  *(v50 + 6) = v82;
  v52 = v77;
  *v50 = v76;
  *(v50 + 1) = v52;
  v53 = v79;
  *(v50 + 2) = v78;
  *(v50 + 3) = v53;
  v54 = *MEMORY[0x277D62230];
  v55 = *MEMORY[0x277D62138];
  v56 = HKSPSleepURL();
  v57 = v69;
  if (v56)
  {
    v58 = v56;
    sub_269E50AFC();

    v49 = 0;
  }

  v59 = sub_269E50B0C();
  (*(*(v59 - 8) + 56))(v57, v49, 1, v59);
  v60 = sub_269E20454();
  v61 = v66;
  sub_269E5173C();
  sub_269E22524(v57, sub_269E20144);
  sub_269E22524(v26, sub_269E2042C);
  v62 = v70;
  sub_269E5145C();
  v74 = v23;
  v75 = v60;
  swift_getOpaqueTypeConformance2();
  v63 = v68;
  sub_269E517CC();
  (*(v72 + 8))(v62, v73);
  return (*(v67 + 8))(v61, v63);
}

uint64_t sub_269E1F6C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v75 = a1;
  v73 = a2;
  sub_269E203BC(0);
  v71 = v2;
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v74 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v72 = &v63 - v6;
  v67 = type metadata accessor for Specs(0);
  v7 = *(*(v67 - 8) + 64);
  MEMORY[0x28223BE20](v67);
  v9 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_269E50E6C();
  v10 = *(v65 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v65);
  v13 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E20178(0, &qword_28035EE48, MEMORY[0x277D626B8], MEMORY[0x277D83D88]);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v63 - v16;
  sub_269E20324();
  v19 = v18;
  v20 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v63 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E202FC(0);
  v64 = v23;
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23);
  v26 = &v63 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E202D4(0);
  v66 = v27;
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v27);
  v70 = &v63 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29);
  v33 = &v63 - v32;
  MEMORY[0x28223BE20](v31);
  v68 = &v63 - v34;
  sub_269E51E1C();
  v69 = sub_269E51E0C();
  sub_269E51DDC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v35 = v75;
  sub_269E1DA9C(v17);
  (*(v10 + 104))(v13, *MEMORY[0x277D62708], v65);
  sub_269E50E7C();
  KeyPath = swift_getKeyPath();
  v37 = &v22[*(v19 + 36)];
  sub_269E20178(0, &qword_28035EEB8, MEMORY[0x277D62728], MEMORY[0x277CE0860]);
  v39 = v37 + *(v38 + 28);
  sub_269E50EAC();
  *v37 = KeyPath;
  sub_269E519CC();
  sub_269E5111C();
  sub_269E218E0(v22, v26, sub_269E20324);
  v40 = &v26[*(v64 + 36)];
  v41 = v81;
  *(v40 + 4) = v80;
  *(v40 + 5) = v41;
  *(v40 + 6) = v82;
  v42 = v77;
  *v40 = v76;
  *(v40 + 1) = v42;
  v43 = v79;
  *(v40 + 2) = v78;
  *(v40 + 3) = v43;
  v44 = v35 + *(type metadata accessor for SleepScoreWidgetSmallView(0) + 20);
  sub_269E2EB30(v9);
  v45 = &v9[*(v67 + 20)];
  sub_269E510CC();
  sub_269E22524(v9, type metadata accessor for Specs);
  sub_269E519BC();
  sub_269E5111C();
  sub_269E218E0(v26, v33, sub_269E202FC);
  v46 = &v33[*(v66 + 36)];
  v47 = v88;
  *(v46 + 4) = v87;
  *(v46 + 5) = v47;
  *(v46 + 6) = v89;
  v48 = v84;
  *v46 = v83;
  *(v46 + 1) = v48;
  v49 = v86;
  *(v46 + 2) = v85;
  *(v46 + 3) = v49;
  v50 = v68;
  sub_269E218E0(v33, v68, sub_269E202D4);
  v51 = v72;
  sub_269E2199C(v35, v72, type metadata accessor for SleepScoreWidgetViewModel);
  v52 = swift_getKeyPath();
  *(v51 + *(type metadata accessor for SleepScoreWidgetSystemSmallTitleView(0) + 20)) = v52;
  sub_269E20178(0, &qword_28035EF10, type metadata accessor for Specs, MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  LOBYTE(v52) = sub_269E514FC();
  sub_269E5102C();
  v53 = v51 + *(v71 + 36);
  *v53 = v52;
  *(v53 + 8) = v54;
  *(v53 + 16) = v55;
  *(v53 + 24) = v56;
  *(v53 + 32) = v57;
  *(v53 + 40) = 0;
  v58 = v70;
  sub_269E2199C(v50, v70, sub_269E202D4);
  v59 = v74;
  sub_269E2199C(v51, v74, sub_269E203BC);
  v60 = v73;
  sub_269E2199C(v58, v73, sub_269E202D4);
  sub_269E21E74(0, &qword_28035EE98, sub_269E202D4, sub_269E203BC);
  sub_269E2199C(v59, v60 + *(v61 + 48), sub_269E203BC);
  sub_269E22524(v51, sub_269E203BC);
  sub_269E22524(v50, sub_269E202D4);
  sub_269E22524(v59, sub_269E203BC);
  sub_269E22524(v58, sub_269E202D4);
}

uint64_t sub_269E1FF48@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_269E512CC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E20178(0, &qword_28035EF10, type metadata accessor for Specs, MEMORY[0x277CDF458]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v16 - v10);
  v12 = type metadata accessor for SleepScoreWidgetSystemSmallTitleView(0);
  sub_269E22584(v1 + *(v12 + 20), v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_269E218E0(v11, a1, type metadata accessor for Specs);
  }

  v14 = *v11;
  sub_269E51EBC();
  v15 = sub_269E5149C();
  sub_269E50FEC();

  sub_269E512BC();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v7, v3);
}

void sub_269E20178(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_269E20204()
{
  if (!qword_28035EE88)
  {
    sub_269E20298(255);
    sub_269E224DC(&qword_28035EEC8, sub_269E20298);
    v0 = sub_269E5194C();
    if (!v1)
    {
      atomic_store(v0, &qword_28035EE88);
    }
  }
}

void sub_269E20324()
{
  if (!qword_28035EEB0)
  {
    sub_269E50E8C();
    sub_269E20178(255, &qword_28035EEB8, MEMORY[0x277D62728], MEMORY[0x277CE0860]);
    v0 = sub_269E510FC();
    if (!v1)
    {
      atomic_store(v0, &qword_28035EEB0);
    }
  }
}

unint64_t sub_269E20454()
{
  result = qword_28035EEE8;
  if (!qword_28035EEE8)
  {
    sub_269E2042C(255);
    sub_269E204D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28035EEE8);
  }

  return result;
}

unint64_t sub_269E204D4()
{
  result = qword_28035EEF0;
  if (!qword_28035EEF0)
  {
    sub_269E20404(255);
    sub_269E2058C(&qword_28035EEF8, sub_269E201DC, &qword_28035EF00, sub_269E20204);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28035EEF0);
  }

  return result;
}

uint64_t sub_269E2058C(unint64_t *a1, void (*a2)(uint64_t), unint64_t *a3, void (*a4)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    sub_269E224DC(a3, a4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_269E2062C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v61[2] = a1;
  sub_269DFE53C();
  v61[1] = v3;
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v66 = v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Specs(0);
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E21D48();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E21FC4(0);
  v62 = v15;
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E21FEC(0);
  v63 = v19;
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  v22 = v61 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E22078(0);
  v64 = v23;
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23);
  v26 = v61 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E220A8(0, &qword_28035EF70, sub_269E22078, &qword_2815720C0, MEMORY[0x277D85048]);
  v65 = v27;
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27);
  v30 = v61 - v29;
  v31 = sub_269E5134C();
  sub_269E1FF48(v10);
  v32 = &v10[*(v7 + 28)];
  LOBYTE(v32) = sub_269E510CC();
  sub_269E22524(v10, type metadata accessor for Specs);
  v33 = 0x4008000000000000;
  if (v32)
  {
    v33 = 0xC010000000000000;
  }

  *v14 = v31;
  *(v14 + 1) = v33;
  v14[16] = 0;
  sub_269E22140(0, &qword_28035EF78, sub_269E21DDC);
  sub_269E20CD8(v2, &v14[*(v34 + 44)]);
  sub_269E221A4(0, &qword_28035EF80, MEMORY[0x277CE0910], MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_269E528E0;
  v36 = sub_269E5151C();
  *(inited + 32) = v36;
  v37 = sub_269E5153C();
  *(inited + 33) = v37;
  v38 = sub_269E5152C();
  sub_269E5152C();
  if (sub_269E5152C() != v36)
  {
    v38 = sub_269E5152C();
  }

  sub_269E5152C();
  if (sub_269E5152C() != v37)
  {
    v38 = sub_269E5152C();
  }

  v39 = v65;
  sub_269E5102C();
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v47 = v46;
  sub_269E221F4(v14, v18, sub_269E21D48);
  v48 = &v18[*(v62 + 36)];
  *v48 = v38;
  *(v48 + 1) = v41;
  *(v48 + 2) = v43;
  *(v48 + 3) = v45;
  *(v48 + 4) = v47;
  v48[40] = 0;
  sub_269E519CC();
  sub_269E5111C();
  sub_269E221F4(v18, v22, sub_269E21FC4);
  v49 = &v22[*(v63 + 36)];
  v50 = v72;
  *(v49 + 4) = v71;
  *(v49 + 5) = v50;
  *(v49 + 6) = v73;
  v51 = v68;
  *v49 = v67;
  *(v49 + 1) = v51;
  v52 = v70;
  *(v49 + 2) = v69;
  *(v49 + 3) = v52;
  KeyPath = swift_getKeyPath();
  sub_269E221F4(v22, v26, sub_269E21FEC);
  v54 = &v26[*(v64 + 36)];
  *v54 = KeyPath;
  v54[8] = 1;
  v55 = swift_getKeyPath();
  sub_269E221F4(v26, v30, sub_269E22078);
  v56 = &v30[*(v39 + 36)];
  *v56 = v55;
  v56[1] = 0x3FE0000000000000;
  v57 = *MEMORY[0x277CDFA10];
  v58 = sub_269E510EC();
  v59 = v66;
  (*(*(v58 - 8) + 104))(v66, v57, v58);
  sub_269E224DC(&qword_281572560, MEMORY[0x277CDFA28]);
  result = sub_269E51C9C();
  if (result)
  {
    sub_269E2225C();
    sub_269E224DC(&qword_281571BF8, sub_269DFE53C);
    sub_269E5179C();
    sub_269E22524(v59, sub_269DFE53C);
    return sub_269DEB5A8(v30);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_269E20CD8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v94 = a1;
  v92 = a2;
  v87 = sub_269E51ADC();
  v86 = *(v87 - 8);
  v2 = *(v86 + 64);
  MEMORY[0x28223BE20](v87);
  v85 = v78 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E21EF0(0);
  v90 = *(v4 - 8);
  v91 = v4;
  v5 = *(v90 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v89 = v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v95 = v78 - v8;
  v93 = sub_269E5161C();
  v9 = *(v93 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v93);
  v12 = v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = type metadata accessor for Specs(0);
  v13 = *(*(v83 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v83);
  v84 = v78 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = v78 - v16;
  v18 = sub_269E51CBC();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = v78 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E51E1C();
  v88 = sub_269E51E0C();
  sub_269E51DDC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_269E51CAC();
  v23 = sub_269E35418(v22);
  v25 = v24;
  (*(v19 + 8))(v22, v18);
  v97 = v23;
  v98 = v25;
  v78[1] = sub_269DF0E28();
  v26 = sub_269E516CC();
  v28 = v27;
  v30 = v29;
  sub_269E1FF48(v17);
  sub_269E5164C();
  v31 = v93;
  (*(v9 + 104))(v12, *MEMORY[0x277CE0A10], v93);
  sub_269E5163C();

  (*(v9 + 8))(v12, v31);
  sub_269E515CC();
  sub_269E515FC();

  v78[0] = type metadata accessor for Specs;
  sub_269E22524(v17, type metadata accessor for Specs);
  v32 = sub_269E516AC();
  v34 = v33;
  LOBYTE(v25) = v35;
  KeyPath = v36;
  sub_269E00F48(v26, v28, v30 & 1);

  sub_269E1FF48(v17);
  v37 = sub_269E518AC();
  sub_269E22524(v17, type metadata accessor for Specs);
  v97 = v37;
  v82 = sub_269E5169C();
  v81 = v38;
  v79 = v39;
  v93 = v40;
  sub_269E00F48(v32, v34, v25 & 1);

  KeyPath = swift_getKeyPath();
  v97 = sub_269E1DD50();
  v98 = v41;
  v42 = sub_269E516CC();
  v44 = v43;
  LOBYTE(v26) = v45;
  sub_269E1FF48(v17);
  sub_269E215B0();
  sub_269E22524(v17, v78[0]);
  v46 = sub_269E516AC();
  v48 = v47;
  v50 = v49;
  sub_269E00F48(v42, v44, v26 & 1);

  v51 = v84;
  sub_269E1FF48(v84);
  v52 = *(v83 + 24);
  v53 = v85;
  sub_269E51ABC();
  sub_269E224DC(&qword_28035EA08, MEMORY[0x277CE3AF8]);
  v54 = v87;
  LOBYTE(v52) = sub_269E51C9C();
  (*(v86 + 8))(v53, v54);
  if (v52)
  {
    v55 = sub_269E5187C();
  }

  else
  {
    v55 = sub_269E5182C();
  }

  v56 = v55;
  sub_269E22524(v51, type metadata accessor for Specs);
  v97 = v56;
  v57 = sub_269E5169C();
  v59 = v58;
  v61 = v60;
  v63 = v62;
  sub_269E00F48(v46, v48, v50 & 1);

  v64 = swift_getKeyPath();
  v97 = v57;
  v98 = v59;
  v61 &= 1u;
  v99 = v61;
  v100 = v63;
  v101 = v64;
  v102 = 2;
  v103 = 0;
  sub_269E083BC();
  sub_269E088AC();
  v65 = v95;
  sub_269E5172C();
  sub_269E00F48(v57, v59, v61);

  LOBYTE(v97) = v79 & 1;
  v96 = 0;
  v67 = v89;
  v66 = v90;
  v68 = *(v90 + 16);
  v69 = v91;
  v68(v89, v65, v91);
  LOBYTE(v63) = v97;
  v70 = v96;
  v71 = v92;
  v72 = v82;
  v73 = v81;
  *v92 = v82;
  v71[1] = v73;
  *(v71 + 16) = v63;
  v74 = KeyPath;
  v71[3] = v93;
  v71[4] = v74;
  v71[5] = 1;
  *(v71 + 48) = v70;
  sub_269E21E74(0, &qword_28035EF38, sub_269E083BC, sub_269E21EF0);
  v68(v71 + *(v75 + 48), v67, v69);
  sub_269E00F58(v72, v73, v63);
  v76 = *(v66 + 8);

  v76(v95, v69);
  v76(v67, v69);
  sub_269E00F48(v72, v73, v97);
}

uint64_t sub_269E215B0()
{
  v0 = sub_269E5161C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E1506C(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_269E5166C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 104))(v13, *MEMORY[0x277CE0A90], v9);
  v14 = *MEMORY[0x277CE09A0];
  v15 = sub_269E5159C();
  v16 = *(v15 - 8);
  (*(v16 + 104))(v8, v14, v15);
  (*(v16 + 56))(v8, 0, 1, v15);
  sub_269E515EC();
  sub_269E22524(v8, sub_269E1506C);
  (*(v10 + 8))(v13, v9);
  (*(v1 + 104))(v4, *MEMORY[0x277CE0A10], v0);
  sub_269E5163C();

  (*(v1 + 8))(v4, v0);
  sub_269E515CC();
  v17 = sub_269E515FC();

  return v17;
}

uint64_t sub_269E21890@<X0>(uint64_t a1@<X8>)
{
  sub_269E5118C();
  v2 = type metadata accessor for Specs(0);
  v3 = a1 + *(v2 + 20);
  sub_269E5119C();
  v4 = a1 + *(v2 + 24);
  return sub_269E5126C();
}

uint64_t sub_269E218E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_269E21948@<X0>(uint64_t a1@<X8>)
{
  sub_269E5118C();
  v2 = type metadata accessor for Specs(0);
  v3 = a1 + *(v2 + 20);
  sub_269E5119C();
  v4 = a1 + *(v2 + 24);
  return sub_269E5126C();
}

uint64_t sub_269E2199C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t __swift_get_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SleepScoreWidgetViewModel();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    sub_269E20178(0, &qword_28035EE58, type metadata accessor for Specs, MEMORY[0x277CDF468]);
    v11 = v10;
    v12 = *(*(v10 - 8) + 48);
    v13 = a1 + *(a3 + 20);

    return v12(v13, a2, v11);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for SleepScoreWidgetViewModel();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    sub_269E20178(0, &qword_28035EE58, type metadata accessor for Specs, MEMORY[0x277CDF468]);
    v13 = v12;
    v14 = *(*(v12 - 8) + 56);
    v15 = a1 + *(a4 + 20);

    return v14(v15, a2, a2, v13);
  }
}

void sub_269E21C78()
{
  type metadata accessor for SleepScoreWidgetViewModel();
  if (v0 <= 0x3F)
  {
    sub_269E20178(319, &qword_28035EE58, type metadata accessor for Specs, MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_269E21D48()
{
  if (!qword_28035EF28)
  {
    sub_269E21DDC(255);
    sub_269E224DC(&qword_28035EF48, sub_269E21DDC);
    v0 = sub_269E5194C();
    if (!v1)
    {
      atomic_store(v0, &qword_28035EF28);
    }
  }
}

void sub_269E21E18(uint64_t a1, unint64_t *a2, unint64_t *a3, void (*a4)(uint64_t), void (*a5)(uint64_t))
{
  if (!*a2)
  {
    sub_269E21E74(255, a3, a4, a5);
    v6 = sub_269E519DC();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_269E21E74(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_269E21F38(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(void))
{
  if (!*a2)
  {
    a3(255);
    a4();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v7)
    {
      atomic_store(OpaqueTypeMetadata2, a2);
    }
  }
}

void sub_269E22014(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_269E510FC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_269E220A8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), unint64_t *a4, uint64_t a5)
{
  if (!*a2)
  {
    a3(255);
    sub_269E221A4(255, a4, a5, MEMORY[0x277CE0860]);
    v8 = sub_269E510FC();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_269E22140(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_269E5109C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_269E221A4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_269E221F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_269E2225C()
{
  result = qword_28035EF88;
  if (!qword_28035EF88)
  {
    v1 = MEMORY[0x277D85048];
    sub_269E220A8(255, &qword_28035EF70, sub_269E22078, &qword_2815720C0, MEMORY[0x277D85048]);
    sub_269E22328();
    sub_269E22478(&qword_2815720C8, &qword_2815720C0, v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28035EF88);
  }

  return result;
}

unint64_t sub_269E22328()
{
  result = qword_28035EF90;
  if (!qword_28035EF90)
  {
    sub_269E22078(255);
    sub_269E223C0();
    sub_269E22478(&qword_28035EFB0, &qword_28035EF68, MEMORY[0x277D839B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28035EF90);
  }

  return result;
}

unint64_t sub_269E223C0()
{
  result = qword_28035EF98;
  if (!qword_28035EF98)
  {
    sub_269E21FEC(255);
    sub_269E2058C(&qword_28035EFA0, sub_269E21FC4, &qword_28035EFA8, sub_269E21D48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28035EF98);
  }

  return result;
}

uint64_t sub_269E22478(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_269E221A4(255, a2, a3, MEMORY[0x277CE0860]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_269E224DC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_269E22524(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_269E22584(uint64_t a1, uint64_t a2)
{
  sub_269E20178(0, &qword_28035EF10, type metadata accessor for Specs, MEMORY[0x277CDF458]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t SleepWidgetRelevanceProvider.widgetRelevance(_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v42 = a2;
  v41 = sub_269E5096C();
  v39 = *(v41 - 8);
  v3 = *(v39 + 64);
  MEMORY[0x28223BE20](v41);
  v38 = v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_269E50B9C();
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  MEMORY[0x28223BE20](v7);
  v8 = sub_269E5097C();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v36[1] = v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269DF6CB8();
  v40 = v11;
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v37 = v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E258C8(0, &qword_281573CB8, MEMORY[0x277CC88A8], MEMORY[0x277D83D88]);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = v36 - v17;
  v19 = sub_269E509EC();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v19);
  v24 = v36 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = v36 - v25;
  (*(*(a1 + 24) + 16))(*(a1 + 16));
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    sub_269E22E54(v18, &qword_281573CB8, MEMORY[0x277CC88A8]);
    return sub_269E51B4C();
  }

  else
  {
    (*(v20 + 32))(v26, v18, v19);
    sub_269E509CC();
    sub_269E509AC();
    sub_269E509BC();
    v28 = v38;
    sub_269E5095C();
    sub_269E5094C();
    (*(v39 + 8))(v28, v41);
    v29 = *(v20 + 8);
    v29(v24, v19);
    v30 = v37;
    sub_269E51AEC();
    sub_269E258C8(0, &qword_281571BD8, sub_269DF6CB8, MEMORY[0x277D84560]);
    v31 = *(v12 + 72);
    v32 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_269E528D0;
    v34 = v33 + v32;
    v35 = v40;
    (*(v12 + 16))(v34, v30, v40);
    sub_269E51B4C();
    (*(v12 + 8))(v30, v35);
    return (v29)(v26, v19);
  }
}

uint64_t SleepStageWidgetViewModel.timelineEntryRelevance.getter@<X0>(uint64_t a1@<X8>)
{
  sub_269E258C8(0, &qword_281571DE0, MEMORY[0x277CE3E20], MEMORY[0x277D83D88]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v23 - v5;
  v7 = *v1;
  v8 = *(v1 + 8);
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = *(v1 + 32);
  if (v11 == 3)
  {
    if (v7)
    {
LABEL_3:
      if (v10)
      {
        v12 = v8;
        v13 = v10;

        v14 = [v13 averageSleepDuration];
        if (v14)
        {
          v15 = v14;
          [v14 _value];
        }
      }

      else
      {
        v20 = v8;
      }

      sub_269E51BDC();
      sub_269DF6EA0(v7, v8, v9, v10);
      v21 = sub_269E51BEC();
      v22 = *(v21 - 8);
      (*(v22 + 56))(v6, 0, 1, v21);
      return (*(v22 + 32))(a1, v6, v21);
    }
  }

  else if (v11 != 2 && v7 != 0)
  {
    goto LABEL_3;
  }

  v17 = sub_269E51BEC();
  v18 = *(v17 - 8);
  (*(v18 + 56))(v6, 1, 1, v17);
  sub_269E51BDC();
  result = (*(v18 + 48))(v6, 1, v17);
  if (result != 1)
  {
    return sub_269E22E54(v6, &qword_281571DE0, MEMORY[0x277CE3E20]);
  }

  return result;
}

uint64_t sub_269E22E54(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_269E258C8(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t SleepStageWidgetViewModel.relevantDateInterval.getter@<X0>(char *a1@<X8>)
{
  v47 = sub_269E5101C();
  v3 = *(v47 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v47);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v42 - v8;
  sub_269E258C8(0, &qword_281573CB8, MEMORY[0x277CC88A8], MEMORY[0x277D83D88]);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v42 - v12;
  v14 = sub_269E509EC();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v42 - v20;
  v22 = *(v1 + 8);
  v23 = *(v1 + 16);
  v24 = *(v1 + 24);
  if (*(v1 + 32) == 2 || !*v1)
  {
    (*(v15 + 56))(v13, 1, 1, v14);
  }

  else
  {
    v48[0] = *v1;
    v48[1] = v22;
    v49 = v23;
    v50 = v24;
    sub_269E23458(v13);
    if ((*(v15 + 48))(v13, 1, v14) != 1)
    {
      v46 = *(v15 + 32);
      v46(v21, v13, v14);
      sub_269E50FFC();
      (*(v15 + 16))(v19, v21, v14);
      v25 = sub_269E5100C();
      v26 = sub_269E51ECC();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v43 = v26;
        v28 = v27;
        v44 = swift_slowAlloc();
        v48[0] = v44;
        *v28 = 136446466;
        *(v28 + 4) = sub_269E47920(0xD000000000000019, 0x8000000269E56D30, v48);
        *(v28 + 12) = 2080;
        v42 = v25;
        v29 = sub_269E5098C();
        v45 = a1;
        v31 = v30;
        (*(v15 + 8))(v19, v14);
        v32 = sub_269E47920(v29, v31, v48);
        a1 = v45;

        *(v28 + 14) = v32;
        v33 = v42;
        _os_log_impl(&dword_269DE5000, v42, v43, "[%{public}s] relevant for dates %s, privacy: .public)", v28, 0x16u);
        v34 = v44;
        swift_arrayDestroy();
        MEMORY[0x26D654490](v34, -1, -1);
        MEMORY[0x26D654490](v28, -1, -1);
      }

      else
      {

        (*(v15 + 8))(v19, v14);
      }

      (*(v3 + 8))(v9, v47);
      v46(a1, v21, v14);
      v40 = 0;
      return (*(v15 + 56))(a1, v40, 1, v14);
    }
  }

  v35 = a1;
  sub_269E22E54(v13, &qword_281573CB8, MEMORY[0x277CC88A8]);
  sub_269E50FFC();
  v36 = sub_269E5100C();
  v37 = sub_269E51ECC();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v48[0] = v39;
    *v38 = 136446210;
    *(v38 + 4) = sub_269E47920(0xD000000000000019, 0x8000000269E56D30, v48);
    _os_log_impl(&dword_269DE5000, v36, v37, "[%{public}s] not relevant", v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v39);
    MEMORY[0x26D654490](v39, -1, -1);
    MEMORY[0x26D654490](v38, -1, -1);
  }

  (*(v3 + 8))(v7, v47);
  v40 = 1;
  a1 = v35;
  return (*(v15 + 56))(a1, v40, 1, v14);
}

uint64_t sub_269E23458@<X0>(uint64_t a1@<X8>)
{
  sub_269E258C8(0, &qword_281573CB8, MEMORY[0x277CC88A8], MEMORY[0x277D83D88]);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v36 - v8;
  v10 = sub_269E50B9C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v36 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v36 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v36 - v21;
  MEMORY[0x28223BE20](v20);
  v25 = &v36 - v24;
  v26 = *(v1 + 8);
  if (!v26)
  {
    goto LABEL_7;
  }

  v36 = v23;
  v37 = a1;
  v27 = [v26 creationInterval];
  if (v27)
  {
    v28 = v27;
    sub_269E5099C();

    v29 = sub_269E509EC();
    (*(*(v29 - 8) + 56))(v7, 0, 1, v29);
  }

  else
  {
    v29 = sub_269E509EC();
    (*(*(v29 - 8) + 56))(v7, 1, 1, v29);
  }

  sub_269E259C0(v7, v9);
  sub_269E509EC();
  v30 = *(v29 - 8);
  if ((*(v30 + 48))(v9, 1, v29) == 1)
  {
    sub_269E22E54(v9, &qword_281573CB8, MEMORY[0x277CC88A8]);
    a1 = v37;
LABEL_7:
    v31 = sub_269E509EC();
    return (*(*(v31 - 8) + 56))(a1, 1, 1, v31);
  }

  sub_269E509AC();
  (*(v30 + 8))(v9, v29);
  (*(v11 + 32))(v25, v22, v10);
  sub_269E50B4C();
  v33 = *(v11 + 16);
  v33(v16, v25, v10);
  v33(v36, v19, v10);
  v34 = v37;
  sub_269E509BC();
  v35 = *(v11 + 8);
  v35(v19, v10);
  v35(v25, v10);
  return (*(v30 + 56))(v34, 0, 1, v29);
}

uint64_t SleepScoreWidgetViewModel.timelineEntryRelevance.getter@<X0>(uint64_t a1@<X8>)
{
  sub_269E258C8(0, &qword_281571DE0, MEMORY[0x277CE3E20], MEMORY[0x277D83D88]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v15 - v5;
  if (*v1)
  {
    v7 = v1[3];
    if (v7)
    {
      v8 = [v7 averageSleepDuration];
      if (v8)
      {
        v9 = v8;
        [v8 _value];
      }
    }

    sub_269E51BDC();
    v10 = sub_269E51BEC();
    v11 = *(v10 - 8);
    (*(v11 + 56))(v6, 0, 1, v10);
    return (*(v11 + 32))(a1, v6, v10);
  }

  else
  {
    v13 = sub_269E51BEC();
    v14 = *(v13 - 8);
    (*(v14 + 56))(v6, 1, 1, v13);
    sub_269E51BDC();
    result = (*(v14 + 48))(v6, 1, v13);
    if (result != 1)
    {
      return sub_269E22E54(v6, &qword_281571DE0, MEMORY[0x277CE3E20]);
    }
  }

  return result;
}

uint64_t SleepScoreWidgetViewModel.relevantDateInterval.getter@<X0>(char *a1@<X8>)
{
  v47 = sub_269E5101C();
  v3 = *(v47 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v47);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v42 - v8;
  sub_269E258C8(0, &qword_281573CB8, MEMORY[0x277CC88A8], MEMORY[0x277D83D88]);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v42 - v12;
  v14 = sub_269E509EC();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v42 - v20;
  if (*v1)
  {
    v23 = v1[2];
    v22 = v1[3];
    v24 = v1[1];
    v48[0] = *v1;
    v48[1] = v24;
    v49 = v23;
    v50 = v22;
    sub_269E23458(v13);
    if ((*(v15 + 48))(v13, 1, v14) != 1)
    {
      v46 = *(v15 + 32);
      v46(v21, v13, v14);
      sub_269E50FFC();
      (*(v15 + 16))(v19, v21, v14);
      v25 = sub_269E5100C();
      v26 = sub_269E51ECC();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v43 = v26;
        v28 = v27;
        v44 = swift_slowAlloc();
        v48[0] = v44;
        *v28 = 136446466;
        *(v28 + 4) = sub_269E47920(0xD000000000000019, 0x8000000269E56D50, v48);
        *(v28 + 12) = 2080;
        v42 = v25;
        v29 = sub_269E5098C();
        v45 = a1;
        v31 = v30;
        (*(v15 + 8))(v19, v14);
        v32 = sub_269E47920(v29, v31, v48);
        a1 = v45;

        *(v28 + 14) = v32;
        v33 = v42;
        _os_log_impl(&dword_269DE5000, v42, v43, "[%{public}s] relevant for dates %s, privacy: .public)", v28, 0x16u);
        v34 = v44;
        swift_arrayDestroy();
        MEMORY[0x26D654490](v34, -1, -1);
        MEMORY[0x26D654490](v28, -1, -1);
      }

      else
      {

        (*(v15 + 8))(v19, v14);
      }

      (*(v3 + 8))(v9, v47);
      v46(a1, v21, v14);
      v40 = 0;
      return (*(v15 + 56))(a1, v40, 1, v14);
    }
  }

  else
  {
    (*(v15 + 56))(v13, 1, 1, v14);
  }

  v35 = a1;
  sub_269E22E54(v13, &qword_281573CB8, MEMORY[0x277CC88A8]);
  sub_269E50FFC();
  v36 = sub_269E5100C();
  v37 = sub_269E51ECC();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v48[0] = v39;
    *v38 = 136446210;
    *(v38 + 4) = sub_269E47920(0xD000000000000019, 0x8000000269E56D50, v48);
    _os_log_impl(&dword_269DE5000, v36, v37, "[%{public}s] not relevant", v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v39);
    MEMORY[0x26D654490](v39, -1, -1);
    MEMORY[0x26D654490](v38, -1, -1);
  }

  (*(v3 + 8))(v7, v47);
  v40 = 1;
  a1 = v35;
  return (*(v15 + 56))(a1, v40, 1, v14);
}

uint64_t sub_269E24088@<X0>(uint64_t a1@<X8>)
{
  sub_269E258C8(0, &qword_281571DE0, MEMORY[0x277CE3E20], MEMORY[0x277D83D88]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v15 - v5;
  if (*v1)
  {
    v7 = v1[3];
    if (v7)
    {
      v8 = [v7 averageSleepDuration];
      if (v8)
      {
        v9 = v8;
        [v8 _value];
      }
    }

    sub_269E51BDC();
    v10 = sub_269E51BEC();
    v11 = *(v10 - 8);
    (*(v11 + 56))(v6, 0, 1, v10);
    return (*(v11 + 32))(a1, v6, v10);
  }

  else
  {
    v13 = sub_269E51BEC();
    v14 = *(v13 - 8);
    (*(v14 + 56))(v6, 1, 1, v13);
    sub_269E51BDC();
    result = (*(v14 + 48))(v6, 1, v13);
    if (result != 1)
    {
      return sub_269E22E54(v6, &qword_281571DE0, MEMORY[0x277CE3E20]);
    }
  }

  return result;
}

uint64_t SleepWidgetViewModel.timelineEntryRelevance.getter@<X0>(uint64_t a1@<X8>)
{
  sub_269E258C8(0, &qword_281571DE0, MEMORY[0x277CE3E20], MEMORY[0x277D83D88]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v16 - v5;
  if ((*(v1 + 8) & 1) != 0 || (*v1 - 2) < 2 || *v1 != 6)
  {

    return sub_269E51BDC();
  }

  else
  {
    v8 = (v1 + *(type metadata accessor for SleepWidgetViewModel() + 40));
    if (*v8)
    {
      v9 = v8[3];
      if (v9)
      {
        v10 = [v9 averageSleepDuration];
        if (v10)
        {
          v11 = v10;
          [v10 _value];
        }
      }

      sub_269E51BDC();
      v12 = sub_269E51BEC();
      v13 = *(v12 - 8);
      (*(v13 + 56))(v6, 0, 1, v12);
      return (*(v13 + 32))(a1, v6, v12);
    }

    else
    {
      v14 = sub_269E51BEC();
      v15 = *(v14 - 8);
      (*(v15 + 56))(v6, 1, 1, v14);
      sub_269E51BDC();
      result = (*(v15 + 48))(v6, 1, v14);
      if (result != 1)
      {
        return sub_269E22E54(v6, &qword_281571DE0, MEMORY[0x277CE3E20]);
      }
    }
  }

  return result;
}

uint64_t SleepWidgetViewModel.relevantDateInterval.getter@<X0>(uint64_t a1@<X8>)
{
  v43 = a1;
  v1 = sub_269E5101C();
  v41 = *(v1 - 8);
  v42 = v1;
  v2 = *(v41 + 64);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v40 = &v39 - v6;
  v7 = sub_269E509EC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v39 - v13;
  sub_269E258C8(0, &qword_281572DD0, type metadata accessor for SleepWidgetRelevantState, MEMORY[0x277D83D88]);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v39 - v17;
  v19 = type metadata accessor for SleepWidgetRelevantState();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v39 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E24B48(v18);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    sub_269E22E54(v18, &qword_281572DD0, type metadata accessor for SleepWidgetRelevantState);
    sub_269E50FFC();
    v24 = sub_269E5100C();
    v25 = sub_269E51ECC();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v44 = v27;
      *v26 = 136446210;
      *(v26 + 4) = sub_269E47920(0xD000000000000014, 0x8000000269E56D70, &v44);
      _os_log_impl(&dword_269DE5000, v24, v25, "[%{public}s] not relevant", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v27);
      MEMORY[0x26D654490](v27, -1, -1);
      MEMORY[0x26D654490](v26, -1, -1);
    }

    (*(v41 + 8))(v5, v42);
    v28 = 1;
    v29 = v7;
  }

  else
  {
    sub_269E25554(v18, v23);
    sub_269E25078();
    sub_269E50FFC();
    (*(v8 + 16))(v12, v14, v7);
    v30 = sub_269E5100C();
    v31 = sub_269E51ECC();
    v29 = v7;
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v44 = v39;
      *v32 = 136446466;
      *(v32 + 4) = sub_269E47920(0xD000000000000014, 0x8000000269E56D70, &v44);
      *(v32 + 12) = 2080;
      v33 = sub_269E5098C();
      v35 = v34;
      (*(v8 + 8))(v12, v29);
      v36 = sub_269E47920(v33, v35, &v44);

      *(v32 + 14) = v36;
      _os_log_impl(&dword_269DE5000, v30, v31, "[%{public}s] relevant for dates %s, privacy: .public)", v32, 0x16u);
      v37 = v39;
      swift_arrayDestroy();
      MEMORY[0x26D654490](v37, -1, -1);
      MEMORY[0x26D654490](v32, -1, -1);
    }

    else
    {

      (*(v8 + 8))(v12, v7);
    }

    (*(v41 + 8))(v40, v42);
    sub_269E255B8(v23);
    (*(v8 + 32))(v43, v14, v29);
    v28 = 0;
  }

  return (*(v8 + 56))(v43, v28, 1, v29);
}

uint64_t sub_269E24B48@<X0>(char *a1@<X8>)
{
  sub_269E258C8(0, &qword_281573C60, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = v42 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = v42 - v11;
  v13 = sub_269E50B9C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = v42 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = v42 - v22;
  if ((v1[1] & 1) == 0)
  {
    v27 = *v1;
    if (*v1 == 6)
    {
      v30 = (v1 + *(type metadata accessor for SleepWidgetViewModel() + 40));
      v31 = *v30;
      if (!*v30)
      {
        goto LABEL_15;
      }

      v33 = v30[1];
      v32 = v30[2];
      v34 = v30[3];
      v42[0] = *v30;
      v42[1] = v33;
      v43 = v32;
      v44 = v34;
      v35 = v34;

      v36 = v33;
      sub_269E25298(v7);
      if ((*(v14 + 48))(v7, 1, v13) == 1)
      {
        sub_269E22E54(v7, &qword_281573C60, MEMORY[0x277CC9578]);
        sub_269DF6EA0(v31, v33, v32, v34);
        goto LABEL_15;
      }

      v41 = *(v14 + 32);
      v41(v18, v7, v13);
      sub_269DF6EA0(v31, v33, v32, v34);
      v41(a1, v18, v13);
      v39 = type metadata accessor for SleepWidgetRelevantState();
    }

    else if (v27 == 4)
    {
      v29 = type metadata accessor for SleepWidgetViewModel();
      sub_269E2592C(v1 + *(v29 + 48), v10);
      if ((*(v14 + 48))(v10, 1, v13) == 1)
      {
        sub_269E22E54(v10, &qword_281573C60, MEMORY[0x277CC9578]);
        goto LABEL_15;
      }

      v38 = *(v14 + 32);
      v38(v21, v10, v13);
      v38(a1, v21, v13);
      v39 = type metadata accessor for SleepWidgetRelevantState();
    }

    else
    {
      if (v27 != 3)
      {
        goto LABEL_2;
      }

      v28 = type metadata accessor for SleepWidgetViewModel();
      sub_269E2592C(v1 + *(v28 + 44), v12);
      if ((*(v14 + 48))(v12, 1, v13) == 1)
      {
        sub_269E22E54(v12, &qword_281573C60, MEMORY[0x277CC9578]);
LABEL_15:
        v37 = type metadata accessor for SleepWidgetRelevantState();
        return (*(*(v37 - 8) + 56))(a1, 1, 1, v37);
      }

      v40 = *(v14 + 32);
      v40(v23, v12, v13);
      v40(a1, v23, v13);
      v39 = type metadata accessor for SleepWidgetRelevantState();
    }

    swift_storeEnumTagMultiPayload();
    return (*(*(v39 - 8) + 56))(a1, 0, 1, v39);
  }

LABEL_2:
  v24 = type metadata accessor for SleepWidgetRelevantState();
  v25 = *(*(v24 - 8) + 56);

  return v25(a1, 1, 1, v24);
}

uint64_t sub_269E25078()
{
  v1 = type metadata accessor for SleepWidgetRelevantState();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_269E50B9C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v22 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v22 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v22 - v17;
  sub_269E25864(v0, v4);
  (*(v6 + 32))(v18, v4, v5);
  sub_269E50B4C();
  v19 = *(v6 + 16);
  v19(v13, v18, v5);
  v19(v10, v16, v5);
  sub_269E509BC();
  v20 = *(v6 + 8);
  v20(v16, v5);
  return (v20)(v18, v5);
}

uint64_t sub_269E25298@<X0>(uint64_t a1@<X8>)
{
  sub_269E258C8(0, &qword_281573CB8, MEMORY[0x277CC88A8], MEMORY[0x277D83D88]);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = *(v1 + 8);
  if (v10)
  {
    v11 = [v10 creationInterval];
    if (v11)
    {
      v12 = v11;
      sub_269E5099C();

      v13 = sub_269E509EC();
      (*(*(v13 - 8) + 56))(v7, 0, 1, v13);
    }

    else
    {
      v13 = sub_269E509EC();
      (*(*(v13 - 8) + 56))(v7, 1, 1, v13);
    }

    sub_269E259C0(v7, v9);
    sub_269E509EC();
    v15 = *(v13 - 8);
    if ((*(v15 + 48))(v9, 1, v13) == 1)
    {
      sub_269E22E54(v9, &qword_281573CB8, MEMORY[0x277CC88A8]);
      v14 = 1;
    }

    else
    {
      sub_269E509AC();
      (*(v15 + 8))(v9, v13);
      v14 = 0;
    }
  }

  else
  {
    v14 = 1;
  }

  v16 = sub_269E50B9C();
  return (*(*(v16 - 8) + 56))(a1, v14, 1, v16);
}

uint64_t type metadata accessor for SleepWidgetRelevantState()
{
  result = qword_281572DD8;
  if (!qword_281572DD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_269E25554(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SleepWidgetRelevantState();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_269E255B8(uint64_t a1)
{
  v2 = type metadata accessor for SleepWidgetRelevantState();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_269E25648(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *sub_269E25698(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

void sub_269E2577C()
{
  sub_269E2581C(319, &qword_281573C70);
  if (v0 <= 0x3F)
  {
    sub_269E2581C(319, &qword_281573C78);
    if (v1 <= 0x3F)
    {
      sub_269E2581C(319, &qword_281573C80);
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_269E2581C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_269E50B9C();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_269E25864(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SleepWidgetRelevantState();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_269E258C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_269E2592C(uint64_t a1, uint64_t a2)
{
  sub_269E258C8(0, &qword_281573C60, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_269E259C0(uint64_t a1, uint64_t a2)
{
  sub_269E258C8(0, &qword_281573CB8, MEMORY[0x277CC88A8], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_269E25A54(uint64_t result)
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
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v16 = v4 + v2;
  }

  else
  {
    v16 = v4;
  }

  v3 = sub_269E0DB4C(isUniquelyReferenced_nonNull_native, v16, 1, v3);
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
  v9 = (v3[3] >> 1) - v3[2];
  result = sub_269E51B0C();
  v10 = *(result - 8);
  if (v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = *(v10 + 72);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v13 = v3[2];
  v14 = __OFADD__(v13, v2);
  v15 = v13 + v2;
  if (!v14)
  {
    v3[2] = v15;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_269E25B80(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_269E0DFD4(result, v11, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_269E25C74@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_269E512CC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E27338(0, &qword_281572608, MEMORY[0x277CE3BA0], MEMORY[0x277CDF458]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v17 - v11);
  sub_269E00F68(v2, &v17 - v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_269E51B0C();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = *v12;
    sub_269E51EBC();
    v16 = sub_269E5149C();
    sub_269E50FEC();

    sub_269E512BC();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_269E25E80@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_269E512CC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E27338(0, &qword_281572608, MEMORY[0x277CE3BA0], MEMORY[0x277CDF458]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for SleepScoreWidgetView();
  sub_269E00F68(v1 + *(v12 + 20), v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_269E51B0C();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_269E51EBC();
    v16 = sub_269E5149C();
    sub_269E50FEC();

    sub_269E512BC();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t SleepScoreWidgetView.init(viewModel:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = swift_getKeyPath();
  sub_269E27338(0, &qword_281572608, MEMORY[0x277CE3BA0], MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  v4 = type metadata accessor for SleepScoreWidgetView();
  v5 = v4[5];
  *(a2 + v5) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v6 = a2 + v4[6];
  *v6 = swift_getKeyPath();
  *(v6 + 1) = 0;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  v6[32] = 0;
  return sub_269E27514(a1, a2 + v4[7], type metadata accessor for SleepScoreWidgetViewModel);
}

uint64_t SleepScoreWidgetView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_269E51B0C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v26 - v9;
  sub_269E272BC(0);
  v12 = v11 - 8;
  v13 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E263F4(v1, v15);
  v16 = sub_269E5180C();
  KeyPath = swift_getKeyPath();
  v18 = &v15[*(v12 + 44)];
  *v18 = KeyPath;
  v18[1] = v16;
  v19 = swift_getKeyPath();
  v20 = _s13SleepWidgetUI0a5ScoreB4ViewV17supportedFamiliesSay0B3Kit0B6FamilyOGvgZ_0();
  sub_269E25E80(v8);
  v21 = sub_269E02FE0(v8, v20);

  (*(v4 + 8))(v8, v3);
  if (v21)
  {
    sub_269E25E80(v10);
  }

  else
  {
    sub_269E25C74(v10);
  }

  sub_269E27490(0, &qword_28035EFE0, sub_269E272BC, sub_269E03738, MEMORY[0x277CDFAB8]);
  v23 = (a1 + *(v22 + 36));
  sub_269E03738(0);
  (*(v4 + 32))(v23 + *(v24 + 28), v10, v3);
  *v23 = v19;
  return sub_269E27514(v15, a1, sub_269E272BC);
}

uint64_t sub_269E263F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v70 = a2;
  sub_269E27B40(0, &qword_28035F030, MEMORY[0x277CE0330]);
  v60 = v3;
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v62 = &v53 - v5;
  sub_269E27B40(0, &qword_28035EFD8, MEMORY[0x277CE0338]);
  v69 = v6;
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v63 = &v53 - v8;
  v61 = type metadata accessor for SleepScoreWidgetSmallView(0);
  v9 = *(*(v61 - 8) + 64);
  MEMORY[0x28223BE20](v61);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for SleepScoreWidgetRectangularView(0);
  v12 = *(*(v59 - 8) + 64);
  MEMORY[0x28223BE20](v59);
  v54 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E273BC(0, &qword_28035F038, MEMORY[0x277CE0330]);
  v64 = v14;
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v68 = &v53 - v16;
  sub_269E27490(0, &qword_28035F040, type metadata accessor for SleepScoreWidgetCircularView, type metadata accessor for SleepScoreWidgetRectangularView, MEMORY[0x277CE0330]);
  v55 = v17;
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v57 = &v53 - v19;
  sub_269E27448(0);
  v66 = v20;
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  v58 = &v53 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for SleepScoreWidgetCircularView();
  v23 = *(*(v56 - 8) + 64);
  MEMORY[0x28223BE20](v56);
  v25 = &v53 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_269E51B0C();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  v29 = MEMORY[0x28223BE20](v26);
  v31 = &v53 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v33 = &v53 - v32;
  sub_269E2739C(0);
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x28223BE20](v34 - 8);
  v67 = &v53 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E51E1C();
  v65 = sub_269E51E0C();
  sub_269E51DDC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v37 = _s13SleepWidgetUI0a5ScoreB4ViewV17supportedFamiliesSay0B3Kit0B6FamilyOGvgZ_0();
  sub_269E25E80(v31);
  v38 = sub_269E02FE0(v31, v37);

  v39 = *(v27 + 8);
  v39(v31, v26);
  if (v38)
  {
    sub_269E25E80(v33);
  }

  else
  {
    sub_269E25C74(v33);
  }

  v40 = (*(v27 + 88))(v33, v26);
  if (v40 == *MEMORY[0x277CE3B68])
  {
    v41 = type metadata accessor for SleepScoreWidgetView();
    sub_269E27D00(a1 + *(v41 + 28), v11, type metadata accessor for SleepScoreWidgetViewModel);
    v42 = *(v61 + 20);
    *&v11[v42] = swift_getKeyPath();
    sub_269E27338(0, &qword_28035EF10, type metadata accessor for Specs, MEMORY[0x277CDF458]);
    swift_storeEnumTagMultiPayload();
    sub_269E27D00(v11, v62, type metadata accessor for SleepScoreWidgetSmallView);
    swift_storeEnumTagMultiPayload();
    sub_269E27A2C(&qword_28035F028, type metadata accessor for SleepScoreWidgetSmallView);
    v43 = v63;
    sub_269E513BC();
    sub_269E27BA8(v43, v68);
    swift_storeEnumTagMultiPayload();
    sub_269E2794C();
    sub_269E27A74();
    v44 = v67;
    sub_269E513BC();
    sub_269E27C28(v43);
    sub_269E27CA0(v11, type metadata accessor for SleepScoreWidgetSmallView);
  }

  else if (v40 == *MEMORY[0x277CE3B90])
  {
    v45 = type metadata accessor for SleepScoreWidgetView();
    sub_269E27D00(a1 + *(v45 + 28), v25, type metadata accessor for SleepScoreWidgetViewModel);
    sub_269E27D00(v25, v57, type metadata accessor for SleepScoreWidgetCircularView);
    swift_storeEnumTagMultiPayload();
    sub_269E27A2C(&qword_28035F010, type metadata accessor for SleepScoreWidgetCircularView);
    sub_269E27A2C(&qword_28035F018, type metadata accessor for SleepScoreWidgetRectangularView);
    v46 = v58;
    sub_269E513BC();
    sub_269E27D00(v46, v68, sub_269E27448);
    swift_storeEnumTagMultiPayload();
    sub_269E2794C();
    sub_269E27A74();
    v44 = v67;
    sub_269E513BC();
    sub_269E27CA0(v46, sub_269E27448);
    sub_269E27CA0(v25, type metadata accessor for SleepScoreWidgetCircularView);
  }

  else if (v40 == *MEMORY[0x277CE3B98])
  {
    v47 = type metadata accessor for SleepScoreWidgetView();
    v48 = v54;
    sub_269E27D00(a1 + *(v47 + 28), v54, type metadata accessor for SleepScoreWidgetViewModel);
    v49 = *(v59 + 20);
    *(v48 + v49) = swift_getKeyPath();
    sub_269E27338(0, &qword_28035F048, _s13SleepWidgetUI5SpecsVMa_0, MEMORY[0x277CDF458]);
    swift_storeEnumTagMultiPayload();
    sub_269E27D00(v48, v57, type metadata accessor for SleepScoreWidgetRectangularView);
    swift_storeEnumTagMultiPayload();
    sub_269E27A2C(&qword_28035F010, type metadata accessor for SleepScoreWidgetCircularView);
    sub_269E27A2C(&qword_28035F018, type metadata accessor for SleepScoreWidgetRectangularView);
    v50 = v58;
    sub_269E513BC();
    sub_269E27D00(v50, v68, sub_269E27448);
    swift_storeEnumTagMultiPayload();
    sub_269E2794C();
    sub_269E27A74();
    v44 = v67;
    sub_269E513BC();
    sub_269E27CA0(v50, sub_269E27448);
    sub_269E27CA0(v48, type metadata accessor for SleepScoreWidgetRectangularView);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_269E27A2C(&qword_28035F028, type metadata accessor for SleepScoreWidgetSmallView);
    v51 = v63;
    sub_269E513BC();
    sub_269E27BA8(v51, v68);
    swift_storeEnumTagMultiPayload();
    sub_269E2794C();
    sub_269E27A74();
    v44 = v67;
    sub_269E513BC();
    sub_269E27C28(v51);
    v39(v33, v26);
  }

  sub_269E27514(v44, v70, sub_269E2739C);
}

uint64_t _s13SleepWidgetUI0a5ScoreB4ViewV17supportedFamiliesSay0B3Kit0B6FamilyOGvgZ_0()
{
  v0 = sub_269E5101C();
  v20 = *(v0 - 8);
  v21 = v0;
  v1 = *(v20 + 64);
  MEMORY[0x28223BE20](v0);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E27338(0, &qword_281571BD0, MEMORY[0x277CE3BA0], MEMORY[0x277D84560]);
  v4 = sub_269E51B0C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 72);
  v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_269E528E0;
  v9 = *(v5 + 104);
  v9(v8 + v7, *MEMORY[0x277CE3B90], v4);
  v9(v8 + v7 + v6, *MEMORY[0x277CE3B98], v4);
  v23 = v8;
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_269E528D0;
  v9(v10 + v7, *MEMORY[0x277CE3B68], v4);
  sub_269E25A54(v10);
  sub_269E50FFC();
  v11 = v23;

  v12 = sub_269E5100C();
  v13 = sub_269E51E9C();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v22 = v15;
    *v14 = 136446466;
    *(v14 + 4) = sub_269E47920(0xD000000000000014, 0x8000000269E54EE0, &v22);
    *(v14 + 12) = 2082;
    v16 = MEMORY[0x26D653A40](v11, v4);
    v18 = sub_269E47920(v16, v17, &v22);

    *(v14 + 14) = v18;
    _os_log_impl(&dword_269DE5000, v12, v13, "[%{public}s] supportedFamilies: %{public}s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D654490](v15, -1, -1);
    MEMORY[0x26D654490](v14, -1, -1);
  }

  (*(v20 + 8))(v3, v21);
  return v11;
}

uint64_t type metadata accessor for SleepScoreWidgetView()
{
  result = qword_281573378;
  if (!qword_281573378)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_269E27338(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_269E273BC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_269E27448(255);
    v7 = v6;
    sub_269E27B40(255, &qword_28035EFD8, MEMORY[0x277CE0338]);
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_269E27490(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

uint64_t sub_269E27514(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_269E275C0()
{
  sub_269E27338(319, &qword_2815725E0, MEMORY[0x277CE3BA0], MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_269E03908(319, &qword_2815725D8, MEMORY[0x277CDF310], MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for SleepScoreWidgetViewModel();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_269E276B0()
{
  result = qword_28035EFE8;
  if (!qword_28035EFE8)
  {
    sub_269E27490(255, &qword_28035EFE0, sub_269E272BC, sub_269E03738, MEMORY[0x277CDFAB8]);
    sub_269E277A4();
    sub_269E27A2C(&qword_2815720B8, sub_269E03738);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28035EFE8);
  }

  return result;
}

unint64_t sub_269E277A4()
{
  result = qword_28035EFF0;
  if (!qword_28035EFF0)
  {
    sub_269E272BC(255);
    sub_269E27854();
    sub_269E27A2C(&qword_2815720A0, sub_269DFB55C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28035EFF0);
  }

  return result;
}

unint64_t sub_269E27854()
{
  result = qword_28035EFF8;
  if (!qword_28035EFF8)
  {
    sub_269E27304(255);
    sub_269E278CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28035EFF8);
  }

  return result;
}

unint64_t sub_269E278CC()
{
  result = qword_28035F000;
  if (!qword_28035F000)
  {
    sub_269E2739C(255);
    sub_269E2794C();
    sub_269E27A74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28035F000);
  }

  return result;
}

unint64_t sub_269E2794C()
{
  result = qword_28035F008;
  if (!qword_28035F008)
  {
    sub_269E27448(255);
    sub_269E27A2C(&qword_28035F010, type metadata accessor for SleepScoreWidgetCircularView);
    sub_269E27A2C(&qword_28035F018, type metadata accessor for SleepScoreWidgetRectangularView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28035F008);
  }

  return result;
}

uint64_t sub_269E27A2C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_269E27A74()
{
  result = qword_28035F020;
  if (!qword_28035F020)
  {
    sub_269E27B40(255, &qword_28035EFD8, MEMORY[0x277CE0338]);
    sub_269E27A2C(&qword_28035F028, type metadata accessor for SleepScoreWidgetSmallView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28035F020);
  }

  return result;
}

void sub_269E27B40(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void))
{
  if (!*a2)
  {
    v6 = type metadata accessor for SleepScoreWidgetSmallView(255);
    v7 = a3(a1, v6, MEMORY[0x277CE1428]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_269E27BA8(uint64_t a1, uint64_t a2)
{
  sub_269E27B40(0, &qword_28035EFD8, MEMORY[0x277CE0338]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_269E27C28(uint64_t a1)
{
  sub_269E27B40(0, &qword_28035EFD8, MEMORY[0x277CE0338]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_269E27CA0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_269E27D00(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_269E27D68()
{
  v0 = sub_269E50C8C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E50C5C();
  v5 = objc_allocWithZone(MEMORY[0x277D12820]);
  v6 = sub_269E50C1C();
  v7 = [v5 initWithCalendar_];

  result = (*(v1 + 8))(v4, v0);
  qword_280361090 = v7;
  return result;
}

uint64_t type metadata accessor for OccurrenceSleepWidgetRectangularView()
{
  result = qword_281573C10;
  if (!qword_281573C10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_269E27EE0()
{
  sub_269E2892C(319, &qword_2815725C0, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for SleepWidgetViewModel();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_269E27F90(uint64_t a1)
{
  result = sub_269E287C4(&qword_28035F050, type metadata accessor for OccurrenceSleepWidgetRectangularView);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_269E28004()
{
  v1 = sub_269E512CC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = *v0;
  if (*(v0 + 8) != 1)
  {
    v7 = *v0;

    sub_269E51EBC();
    v8 = sub_269E5149C();
    sub_269E50FEC();

    sub_269E512BC();
    swift_getAtKeyPath();
    sub_269DFC008(v6, 0);
    (*(v2 + 8))(v5, v1);
    LOBYTE(v6) = v10[15];
  }

  return v6 & 1;
}

uint64_t sub_269E2814C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v3 = type metadata accessor for ScheduleOccurrenceSectionView(0);
  v4 = *(*(v3 - 1) + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v27 - v8;
  sub_269E28614();
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v27 - v15;
  sub_269E51E1C();
  v27 = sub_269E51E0C();
  sub_269E51DDC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *v16 = sub_269E512FC();
  *(v16 + 1) = 0;
  v16[16] = 1;
  sub_269E51E0C();
  sub_269E51DDC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (sub_269E28004())
  {
    v17 = 12;
  }

  else
  {
    v17 = 6;
  }

  sub_269E2897C(0, &qword_28035F0A8, sub_269E286A8);
  v19 = &v16[*(v18 + 44)];
  v20 = type metadata accessor for OccurrenceSleepWidgetRectangularView();
  sub_269E289E8(a1 + *(v20 + 20), v9, type metadata accessor for SleepWidgetViewModel);
  LOBYTE(v20) = *(a1 + *(v20 + 24));
  *&v9[v3[7]] = swift_getKeyPath();
  sub_269E286DC(0, &qword_281572600, MEMORY[0x277CDFA28], MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  v9[v3[5]] = v20;
  *&v9[v3[6]] = v17;
  sub_269E289E8(v9, v7, type metadata accessor for ScheduleOccurrenceSectionView);
  sub_269E289E8(v7, v19, type metadata accessor for ScheduleOccurrenceSectionView);
  sub_269E28740(0);
  v22 = v19 + *(v21 + 48);
  *v22 = 0;
  *(v22 + 8) = 0;
  sub_269E28A50(v9, type metadata accessor for ScheduleOccurrenceSectionView);
  sub_269E28A50(v7, type metadata accessor for ScheduleOccurrenceSectionView);

  sub_269E289E8(v16, v14, sub_269E28614);
  v23 = v28;
  sub_269E289E8(v14, v28, sub_269E28614);
  sub_269E285F4(0);
  v25 = v23 + *(v24 + 48);
  *v25 = 0;
  *(v25 + 8) = 0;
  sub_269E28A50(v16, sub_269E28614);
  sub_269E28A50(v14, sub_269E28614);
}

void sub_269E28520(uint64_t a1@<X8>)
{
  *a1 = sub_269E5133C();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  sub_269E2897C(0, &qword_28035F058, sub_269E285C0);
  sub_269E2814C(v1, a1 + *(v3 + 44));
  KeyPath = swift_getKeyPath();
  sub_269E2880C();
  v6 = (a1 + *(v5 + 36));
  *v6 = KeyPath;
  v6[1] = 0x3FE3333333333333;
}

void sub_269E28614()
{
  if (!qword_28035F070)
  {
    sub_269E286A8(255);
    sub_269E287C4(&qword_28035F088, sub_269E286A8);
    v0 = sub_269E5191C();
    if (!v1)
    {
      atomic_store(v0, &qword_28035F070);
    }
  }
}

void sub_269E286DC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_269E28760(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_269E287C4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_269E2880C()
{
  if (!qword_28035F090)
  {
    sub_269E28898();
    sub_269E2892C(255, &qword_2815720C0, MEMORY[0x277D85048], MEMORY[0x277CE0860]);
    v0 = sub_269E510FC();
    if (!v1)
    {
      atomic_store(v0, &qword_28035F090);
    }
  }
}

void sub_269E28898()
{
  if (!qword_28035F098)
  {
    sub_269E285C0(255);
    sub_269E287C4(&qword_28035F0A0, sub_269E285C0);
    v0 = sub_269E5194C();
    if (!v1)
    {
      atomic_store(v0, &qword_28035F098);
    }
  }
}

void sub_269E2892C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_269E2897C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_269E5109C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_269E289E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_269E28A50(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_269E28AB0()
{
  result = qword_28035F0B0;
  if (!qword_28035F0B0)
  {
    sub_269E2880C();
    sub_269E287C4(&qword_28035F0B8, sub_269E28898);
    sub_269E07F10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28035F0B0);
  }

  return result;
}

uint64_t sub_269E28B60()
{
  v12 = *v0;
  v13 = v0[1];
  v14 = v0[2];
  v1 = sub_269E295F0();
  v2 = 0;
  v3 = v1[2];
  while (v3 != v2)
  {
    v4 = &v1[v2++];
    if (*(v4[4] + 16))
    {
      v5 = 0;
      do
      {
        v6 = v1[v5++ + 4];
        v7 = (v6 + 40);
        v8 = *(v6 + 16) + 1;
        while (--v8)
        {
          v10 = *(v7 - 1);
          v9 = *v7;
          v7 += 3;
          if (v9 > v10)
          {

            return 0;
          }
        }
      }

      while (v5 != v3);
      break;
    }
  }

  return 1;
}

uint64_t sub_269E28C14()
{
  v8 = *v0;
  v9 = v0[1];
  v10 = v0[2];
  v1 = sub_269E295F0();
  v2 = v1[2];
  if (v2)
  {
    v3 = 0.0;
    v4 = v1 + 4;
    v5 = 1;
    do
    {
      if (*(*v4 + 16))
      {
        v6 = *(*v4 + 32);
        if (v5)
        {
          v5 = 0;
        }

        else
        {
          v5 = 0;
          if (v6 >= v3)
          {
            v6 = v3;
          }
        }

        v3 = v6;
      }

      ++v4;
      --v2;
    }

    while (v2);
  }

  else
  {
    v3 = 0.0;
  }

  return *&v3;
}

uint64_t sub_269E28CB8()
{
  v9 = *v0;
  v10 = v0[1];
  v11 = v0[2];
  v1 = sub_269E295F0();
  v2 = v1[2];
  if (v2)
  {
    v3 = 0.0;
    v4 = v1 + 4;
    v5 = 1;
    do
    {
      v6 = *(*v4 + 16);
      if (v6)
      {
        v7 = *(*v4 + 24 * v6 + 16);
        if (v5)
        {
          v5 = 0;
        }

        else
        {
          v5 = 0;
          if (v7 < v3)
          {
            v7 = v3;
          }
        }

        v3 = v7;
      }

      ++v4;
      --v2;
    }

    while (v2);
  }

  else
  {
    v3 = 0.0;
  }

  return *&v3;
}

uint64_t sub_269E28D64(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = (a2 + 48);
  v4 = (a1 + 48);
  do
  {
    v5 = *(v4 - 2) != *(v3 - 2);
    if (*(v4 - 1) != *(v3 - 1))
    {
      v5 = 1;
    }

    v6 = v5 | *v4 ^ *v3;
    if (v6)
    {
      break;
    }

    v3 += 3;
    v4 += 3;
    --v2;
  }

  while (v2);
  return (v6 ^ 1) & 1;
}

uint64_t sub_269E28DF4(unint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v5)
    {
      goto LABEL_29;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if (a2 < 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_29:
      v18 = 1;
      return v18 & 1;
    }

    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    v4 = sub_269E29A10();
    if (((a2 | v3) & 0xC000000000000001) != 0)
    {
      v11 = a2 & 0xC000000000000001;
      v12 = 4;
      while (1)
      {
        v13 = v12 - 4;
        v14 = v12 - 3;
        if (__OFADD__(v12 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x26D653D70](v12 - 4, v3);
          if (!v11)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v13 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v15 = *(v3 + 8 * v12);
          if (!v11)
          {
LABEL_24:
            if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v16 = *(a2 + 8 * v12);
            goto LABEL_26;
          }
        }

        v16 = MEMORY[0x26D653D70](v12 - 4, a2);
LABEL_26:
        v17 = v16;
        v18 = sub_269E51F6C();

        if (v18)
        {
          ++v12;
          if (v14 != v5)
          {
            continue;
          }
        }

        return v18 & 1;
      }
    }

    v19 = (v3 + 32);
    v20 = (a2 + 32);
    v21 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v22 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = v5 - 1;
    while (1)
    {
      if (!v21)
      {
        goto LABEL_40;
      }

      if (!v22)
      {
        break;
      }

      v25 = *v19++;
      v24 = v25;
      v26 = *v20++;
      a2 = v24;
      v3 = v26;
      v18 = sub_269E51F6C();

      v28 = v23-- != 0;
      if (v18)
      {
        --v22;
        --v21;
        if (v28)
        {
          continue;
        }
      }

      return v18 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v5 = sub_269E5204C();
  }

  result = sub_269E5204C();
  if (v5 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v18 = 0;
  return v18 & 1;
}

void sub_269E29034()
{
  v1 = *v0;
  v19 = *(*v0 + 16);
  if (!v19)
  {
    v3 = MEMORY[0x277D84F90];
    v13 = *(MEMORY[0x277D84F90] + 16);
    if (v13)
    {
      goto LABEL_22;
    }

    goto LABEL_29;
  }

  v2 = 0;
  v3 = MEMORY[0x277D84F90];
  do
  {
    while (1)
    {
      if (v2 >= *(v1 + 16))
      {
        __break(1u);
        return;
      }

      v4 = (v1 + 32 + 48 * v2++);
      v20 = *v4;
      v21 = v4[1];
      v22 = v4[2];
      v23 = v4[3];
      v24 = v4[4];
      v25 = v4[5];

      v5 = sub_269E295F0();
      v6 = v5[2];
      if (v6)
      {
        break;
      }

LABEL_5:
      if (v2 == v19)
      {
        goto LABEL_21;
      }
    }

    v7 = 1;
    v8 = 0.0;
    v9 = 4;
    do
    {
      v10 = v5[v9];
      if (*(v10 + 16))
      {
        if (v7)
        {
          v7 = 0;
          v8 = *(v10 + 32);
        }

        else
        {
          v7 = 0;
          if (*(v10 + 32) < v8)
          {
            v8 = *(v10 + 32);
          }
        }
      }

      ++v9;
      --v6;
    }

    while (v6);

    if (v7)
    {
      goto LABEL_5;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_269E0E218(0, *(v3 + 2) + 1, 1, v3);
    }

    v12 = *(v3 + 2);
    v11 = *(v3 + 3);
    if (v12 >= v11 >> 1)
    {
      v3 = sub_269E0E218((v11 > 1), v12 + 1, 1, v3);
    }

    *(v3 + 2) = v12 + 1;
    *&v3[8 * v12 + 32] = v8;
  }

  while (v2 != v19);
LABEL_21:
  v13 = *(v3 + 2);
  if (!v13)
  {
    goto LABEL_29;
  }

LABEL_22:
  v14 = *(v3 + 4);
  v15 = v13 - 1;
  if (v13 != 1)
  {
    v16 = (v3 + 40);
    do
    {
      v17 = *v16++;
      v18 = v17;
      if (v17 < v14)
      {
        v14 = v18;
      }

      --v15;
    }

    while (v15);
  }

LABEL_29:
}

void sub_269E292D4()
{
  v1 = *v0;
  v23 = *(*v0 + 16);
  if (!v23)
  {
    v3 = MEMORY[0x277D84F90];
    v15 = *(MEMORY[0x277D84F90] + 16);
    if (v15)
    {
      goto LABEL_22;
    }

    goto LABEL_29;
  }

  v2 = 0;
  v21 = v1 + 32;
  v3 = MEMORY[0x277D84F90];
  v22 = *v0;
  do
  {
    while (1)
    {
      if (v2 >= *(v1 + 16))
      {
        __break(1u);
        return;
      }

      v4 = (v21 + 48 * v2++);
      v24 = *v4;
      v25 = v4[1];
      v26 = v4[2];
      v27 = v4[3];
      v28 = v4[4];
      v29 = v4[5];

      v5 = sub_269E295F0();
      v6 = v5[2];
      if (v6)
      {
        break;
      }

LABEL_5:
      v1 = v22;
      if (v2 == v23)
      {
        goto LABEL_21;
      }
    }

    v7 = 1;
    v8 = 0.0;
    v9 = 4;
    do
    {
      v10 = v5[v9];
      v11 = *(v10 + 16);
      if (v11)
      {
        v12 = v10 + 24 * v11;
        if (v7)
        {
          v7 = 0;
          v8 = *(v12 + 16);
        }

        else
        {
          v7 = 0;
          if (v8 <= *(v12 + 16))
          {
            v8 = *(v12 + 16);
          }
        }
      }

      ++v9;
      --v6;
    }

    while (v6);

    if (v7)
    {
      goto LABEL_5;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_269E0E218(0, *(v3 + 2) + 1, 1, v3);
    }

    v14 = *(v3 + 2);
    v13 = *(v3 + 3);
    if (v14 >= v13 >> 1)
    {
      v3 = sub_269E0E218((v13 > 1), v14 + 1, 1, v3);
    }

    *(v3 + 2) = v14 + 1;
    *&v3[8 * v14 + 32] = v8;
    v1 = v22;
  }

  while (v2 != v23);
LABEL_21:
  v15 = *(v3 + 2);
  if (!v15)
  {
    goto LABEL_29;
  }

LABEL_22:
  v16 = *(v3 + 4);
  v17 = v15 - 1;
  if (v15 != 1)
  {
    v18 = (v3 + 40);
    do
    {
      v19 = *v18++;
      v20 = v19;
      if (v16 < v19)
      {
        v16 = v20;
      }

      --v17;
    }

    while (v17);
  }

LABEL_29:
}

uint64_t static Segment.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    return (*(a2 + 16) ^ *(a1 + 16) ^ 1) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_269E295BC(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    return (*(a2 + 16) ^ *(a1 + 16) ^ 1) & 1;
  }

  else
  {
    return 0;
  }
}

void *sub_269E295F0()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v6 = v0[4];
  v5 = v0[5];

  v7 = sub_269E0DD48(0, 1, 1, MEMORY[0x277D84F90]);
  v9 = v7[2];
  v8 = v7[3];
  v10 = v8 >> 1;
  v11 = v9 + 1;
  if (v8 >> 1 <= v9)
  {
    v7 = sub_269E0DD48((v8 > 1), v9 + 1, 1, v7);
    v8 = v7[3];
    v10 = v8 >> 1;
  }

  v7[2] = v11;
  v7[v9 + 4] = v2;
  v12 = v9 + 2;
  if (v10 < (v9 + 2))
  {
    v7 = sub_269E0DD48((v8 > 1), v9 + 2, 1, v7);
  }

  v7[2] = v12;
  v7[v11 + 4] = v1;
  v13 = v7[3];
  v14 = v9 + 3;
  if ((v9 + 3) > (v13 >> 1))
  {
    v7 = sub_269E0DD48((v13 > 1), v9 + 3, 1, v7);
  }

  v7[2] = v14;
  v7[v12 + 4] = v4;
  v15 = v7[3];
  v16 = v9 + 4;
  if ((v9 + 4) > (v15 >> 1))
  {
    v7 = sub_269E0DD48((v15 > 1), v9 + 4, 1, v7);
  }

  v7[2] = v16;
  v7[v14 + 4] = v3;
  v17 = v7[3];
  v18 = v9 + 5;
  if ((v9 + 5) > (v17 >> 1))
  {
    v7 = sub_269E0DD48((v17 > 1), v9 + 5, 1, v7);
  }

  v7[2] = v18;
  v7[v16 + 4] = v6;
  v19 = v7[3];
  v20 = v9 + 6;
  if (v20 > (v19 >> 1))
  {
    v7 = sub_269E0DD48((v19 > 1), v20, 1, v7);
  }

  v7[2] = v20;
  v7[v18 + 4] = v5;
  return v7;
}

uint64_t _s13SleepWidgetUI0aB8ChartBarV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  v6 = a1[4];
  v5 = a1[5];
  v7 = a2[1];
  v9 = a2[2];
  v8 = a2[3];
  v11 = a2[4];
  v10 = a2[5];
  if ((sub_269E28D64(*a1, *a2) & 1) == 0 || (sub_269E28D64(v2, v7) & 1) == 0 || (sub_269E28D64(v4, v9) & 1) == 0 || (sub_269E28D64(v3, v8) & 1) == 0 || (sub_269E28D64(v6, v11) & 1) == 0)
  {
    return 0;
  }

  return sub_269E28D64(v5, v10);
}

uint64_t sub_269E298C8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_269E29910(uint64_t result, int a2, int a3)
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

uint64_t sub_269E2996C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_269E299B4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_269E29A10()
{
  result = qword_281573CC0;
  if (!qword_281573CC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281573CC0);
  }

  return result;
}

uint64_t type metadata accessor for SleepWidgetCircularView()
{
  result = qword_281572E68;
  if (!qword_281572E68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_269E29AD0(uint64_t a1)
{
  result = sub_269E2CA60(&qword_281572EA0, type metadata accessor for SleepWidgetCircularView);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_269E29B28(uint64_t a1)
{
  result = sub_269E2CA60(&qword_28035F0C0, type metadata accessor for SleepWidgetCircularView);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_269E29B9C@<X0>(uint64_t a1@<X8>)
{
  v134 = a1;
  v121 = type metadata accessor for BedtimeSleepWidgetView();
  v2 = *(*(v121 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v121);
  v120 = &v115 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v123 = &v115 - v5;
  v126 = type metadata accessor for GreetingSleepWidgetView();
  v6 = *(*(v126 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v126);
  v135 = &v115 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v125 = &v115 - v10;
  MEMORY[0x28223BE20](v9);
  v124 = &v115 - v11;
  v12 = MEMORY[0x277CE0330];
  sub_269E2CAA8(0, &qword_2815721F8, sub_269E01714, MEMORY[0x277CE0330]);
  v133 = v13;
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v132 = &v115 - v15;
  sub_269E2CAA8(0, &qword_281572210, sub_269E0178C, v12);
  v127 = v16;
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v129 = &v115 - v18;
  sub_269E01714(0);
  v131 = v19;
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  v130 = &v115 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E2C994(0, &qword_281573C88, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v22 - 8);
  v26 = &v115 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v24);
  v29 = &v115 - v28;
  v30 = MEMORY[0x28223BE20](v27);
  v118 = &v115 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v119 = &v115 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v36 = &v115 - v35;
  v37 = MEMORY[0x28223BE20](v34);
  v39 = &v115 - v38;
  v40 = MEMORY[0x28223BE20](v37);
  v116 = &v115 - v41;
  MEMORY[0x28223BE20](v40);
  v117 = &v115 - v42;
  v43 = type metadata accessor for UpcomingSleepWidgetView();
  v44 = *(*(v43 - 8) + 64);
  v45 = MEMORY[0x28223BE20](v43);
  v47 = &v115 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v45);
  v122 = &v115 - v48;
  sub_269E0178C();
  v128 = v49;
  v50 = *(*(v49 - 8) + 64);
  v51 = MEMORY[0x28223BE20](v1);
  v53 = &v115 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = MEMORY[0x28223BE20](v51);
  v55 = MEMORY[0x28223BE20](v54);
  v57 = &v115 - v56;
  v58 = MEMORY[0x28223BE20](v55);
  v62 = &v115 - v61;
  if ((*(v1 + 8) & 1) != 0 || (v69 = *v58, *v58 > 7))
  {
LABEL_2:
    v63 = v59;
    v64 = v135;
    sub_269E2C9F8(v58, v135, type metadata accessor for SleepWidgetViewModel);
    sub_269E2C9F8(v64, v125, type metadata accessor for GreetingSleepWidgetView);
    sub_269E2CA60(qword_281573920, type metadata accessor for GreetingSleepWidgetView);
    v136 = sub_269E5196C();
    v65 = *MEMORY[0x277D62138];
    v66 = HKSPSleepURL();
    if (v66)
    {
      v67 = v66;
      sub_269E50AFC();

      v68 = 0;
    }

    else
    {
      v68 = 1;
    }

    v80 = v132;
    v82 = v129;
    v83 = sub_269E50B0C();
    (*(*(v83 - 8) + 56))(v26, v68, 1, v83);
    sub_269DF0960(v26, v29);
    v84 = MEMORY[0x277CE11C8];
    v85 = MEMORY[0x277CE11C0];
    sub_269E5173C();
    sub_269DF0A3C(v29);

    sub_269E2C814(v135, type metadata accessor for GreetingSleepWidgetView);
    v86 = v128;
    (*(v63 + 16))(v82, v53, v128);
    swift_storeEnumTagMultiPayload();
    v136 = v84;
    v137 = v85;
    swift_getOpaqueTypeConformance2();
    v87 = v130;
    sub_269E513BC();
    v62 = v53;
    goto LABEL_22;
  }

  if (((1 << v69) & 0xC2) != 0)
  {
    v63 = v59;
    v88 = v124;
    sub_269E2C9F8(v58, v124, type metadata accessor for SleepWidgetViewModel);
    sub_269E2C9F8(v88, v125, type metadata accessor for GreetingSleepWidgetView);
    sub_269E2CA60(qword_281573920, type metadata accessor for GreetingSleepWidgetView);
    v136 = sub_269E5196C();
    v89 = *MEMORY[0x277D62138];
    v90 = HKSPSleepURL();
    if (v90)
    {
      v91 = v90;
      sub_269E50AFC();

      v92 = 0;
    }

    else
    {
      v92 = 1;
    }

    v101 = v129;
    v102 = sub_269E50B0C();
    (*(*(v102 - 8) + 56))(v36, v92, 1, v102);
    sub_269DF0960(v36, v39);
    v103 = MEMORY[0x277CE11C8];
    v104 = MEMORY[0x277CE11C0];
    sub_269E5173C();
    sub_269DF0A3C(v39);

    sub_269E2C814(v124, type metadata accessor for GreetingSleepWidgetView);
    v105 = v128;
    (*(v63 + 16))(v101, v57, v128);
    swift_storeEnumTagMultiPayload();
    v136 = v103;
    v137 = v104;
    swift_getOpaqueTypeConformance2();
    v87 = v130;
    sub_269E513BC();
    v62 = v57;
    v86 = v105;
    v80 = v132;
  }

  else
  {
    if (((1 << v69) & 0xC) == 0)
    {
      if (((1 << v69) & 0x30) != 0)
      {
        v62 = v60;
        v135 = v59;
        v70 = v123;
        sub_269E2C9F8(v58, v123, type metadata accessor for SleepWidgetViewModel);
        KeyPath = swift_getKeyPath();
        v72 = v121;
        *(v70 + *(v121 + 20)) = KeyPath;
        v73 = MEMORY[0x277CDF458];
        sub_269E2C994(0, &qword_281572600, MEMORY[0x277CDFA28], MEMORY[0x277CDF458]);
        swift_storeEnumTagMultiPayload();
        *(v70 + *(v72 + 24)) = swift_getKeyPath();
        sub_269E2C994(0, qword_281572618, MEMORY[0x277CC9788], v73);
        swift_storeEnumTagMultiPayload();
        sub_269E2C9F8(v70, v120, type metadata accessor for BedtimeSleepWidgetView);
        sub_269E2CA60(qword_281573AF0, type metadata accessor for BedtimeSleepWidgetView);
        v136 = sub_269E5196C();
        v74 = *MEMORY[0x277D62240];
        v75 = *MEMORY[0x277D62138];
        v76 = HKSPSleepURL();
        if (v76)
        {
          v77 = v118;
          v78 = v76;
          sub_269E50AFC();

          v79 = 0;
          v80 = v132;
          v81 = v129;
        }

        else
        {
          v79 = 1;
          v80 = v132;
          v81 = v129;
          v77 = v118;
        }

        v111 = sub_269E50B0C();
        (*(*(v111 - 8) + 56))(v77, v79, 1, v111);
        v112 = v119;
        sub_269DF0960(v77, v119);
        v113 = MEMORY[0x277CE11C8];
        sub_269E5173C();
        sub_269DF0A3C(v112);

        sub_269E2C814(v123, type metadata accessor for BedtimeSleepWidgetView);
        v63 = v135;
        v86 = v128;
        (*(v135 + 16))(v81, v62, v128);
        swift_storeEnumTagMultiPayload();
        v136 = v113;
        v137 = MEMORY[0x277CE11C0];
        swift_getOpaqueTypeConformance2();
        v87 = v130;
        sub_269E513BC();
        goto LABEL_22;
      }

      goto LABEL_2;
    }

    v135 = v59;
    v93 = v122;
    sub_269E2C9F8(v58, v122, type metadata accessor for SleepWidgetViewModel);
    *(v93 + *(v43 + 20)) = swift_getKeyPath();
    v94 = MEMORY[0x277CDF458];
    sub_269E2C994(0, &qword_281572600, MEMORY[0x277CDFA28], MEMORY[0x277CDF458]);
    swift_storeEnumTagMultiPayload();
    *(v93 + *(v43 + 24)) = swift_getKeyPath();
    sub_269E2C994(0, qword_281572618, MEMORY[0x277CC9788], v94);
    swift_storeEnumTagMultiPayload();
    sub_269E2C9F8(v93, v47, type metadata accessor for UpcomingSleepWidgetView);
    sub_269E2CA60(qword_2815737F8, type metadata accessor for UpcomingSleepWidgetView);
    v136 = sub_269E5196C();
    v95 = *MEMORY[0x277D62240];
    v96 = *MEMORY[0x277D62138];
    v97 = HKSPSleepURL();
    if (v97)
    {
      v98 = v116;
      v99 = v97;
      sub_269E50AFC();

      v100 = 0;
      v80 = v132;
    }

    else
    {
      v100 = 1;
      v80 = v132;
      v98 = v116;
    }

    v106 = sub_269E50B0C();
    (*(*(v106 - 8) + 56))(v98, v100, 1, v106);
    v107 = v117;
    sub_269DF0960(v98, v117);
    v108 = MEMORY[0x277CE11C8];
    v109 = MEMORY[0x277CE11C0];
    sub_269E5173C();
    sub_269DF0A3C(v107);

    sub_269E2C814(v122, type metadata accessor for UpcomingSleepWidgetView);
    v63 = v135;
    v110 = v128;
    (*(v135 + 16))(v129, v62, v128);
    swift_storeEnumTagMultiPayload();
    v136 = v108;
    v137 = v109;
    swift_getOpaqueTypeConformance2();
    v87 = v130;
    v86 = v110;
    sub_269E513BC();
  }

LABEL_22:
  sub_269DEBC30(v87, v80);
  swift_storeEnumTagMultiPayload();
  sub_269E01CFC();
  sub_269E513BC();
  sub_269DEBC94(v87);
  return (*(v63 + 8))(v62, v86);
}

uint64_t sub_269E2AB34@<X0>(uint64_t a1@<X8>)
{
  v127 = a1;
  v118 = type metadata accessor for GreetingSleepWidgetRectangularView();
  v2 = *(*(v118 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v118);
  v5 = &v109 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v117 = &v109 - v7;
  MEMORY[0x28223BE20](v6);
  v115 = &v109 - v8;
  v9 = MEMORY[0x277CE0330];
  sub_269E2CAA8(0, &qword_2815721F8, sub_269E01714, MEMORY[0x277CE0330]);
  v126 = v10;
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v125 = &v109 - v12;
  sub_269E2CAA8(0, &qword_281572210, sub_269E0178C, v9);
  v119 = v13;
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v122 = &v109 - v15;
  sub_269E01714(0);
  v124 = v16;
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v123 = &v109 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E2C994(0, &qword_281573C88, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = &v109 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v109 - v25;
  v27 = MEMORY[0x28223BE20](v24);
  v111 = &v109 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v112 = &v109 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v113 = &v109 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v114 = &v109 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v109 = &v109 - v36;
  MEMORY[0x28223BE20](v35);
  v110 = &v109 - v37;
  v38 = type metadata accessor for OccurrenceSleepWidgetRectangularView();
  v39 = *(*(v38 - 8) + 64);
  v40 = MEMORY[0x28223BE20](v38);
  v116 = &v109 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = MEMORY[0x28223BE20](v40);
  v44 = &v109 - v43;
  MEMORY[0x28223BE20](v42);
  v46 = &v109 - v45;
  sub_269E0178C();
  v120 = *(v47 - 8);
  v121 = v47;
  v48 = *(v120 + 64);
  v49 = MEMORY[0x28223BE20](v47);
  v51 = &v109 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = MEMORY[0x28223BE20](v49);
  v53 = MEMORY[0x28223BE20](v52);
  v55 = &v109 - v54;
  MEMORY[0x28223BE20](v53);
  v58 = &v109 - v57;
  if ((*(v1 + 8) & 1) != 0 || (v63 = *v1, *v1 > 7uLL))
  {
LABEL_2:
    sub_269E2C9F8(v1, &v5[*(v118 + 20)], type metadata accessor for SleepWidgetViewModel);
    *v5 = swift_getKeyPath();
    v5[8] = 0;
    sub_269E2C9F8(v5, v117, type metadata accessor for GreetingSleepWidgetRectangularView);
    sub_269E2CA60(qword_2815739B8, type metadata accessor for GreetingSleepWidgetRectangularView);
    v128 = sub_269E5196C();
    v59 = *MEMORY[0x277D62138];
    v60 = HKSPSleepURL();
    if (v60)
    {
      v61 = v60;
      sub_269E50AFC();

      v62 = 0;
    }

    else
    {
      v62 = 1;
    }

    v75 = v122;
    v76 = sub_269E50B0C();
    (*(*(v76 - 8) + 56))(v23, v62, 1, v76);
    sub_269DF0960(v23, v26);
    v77 = MEMORY[0x277CE11C8];
    v78 = MEMORY[0x277CE11C0];
    sub_269E5173C();
    sub_269DF0A3C(v26);

    sub_269E2C814(v5, type metadata accessor for GreetingSleepWidgetRectangularView);
    v80 = v120;
    v79 = v121;
    (*(v120 + 16))(v75, v51, v121);
    swift_storeEnumTagMultiPayload();
    v128 = v77;
    v129 = v78;
    swift_getOpaqueTypeConformance2();
    v81 = v123;
    sub_269E513BC();
    v58 = v51;
    v72 = v125;
    goto LABEL_12;
  }

  if (((1 << v63) & 0xC2) != 0)
  {
    v83 = v115;
    sub_269E2C9F8(v1, &v115[*(v118 + 20)], type metadata accessor for SleepWidgetViewModel);
    *v83 = swift_getKeyPath();
    *(v83 + 8) = 0;
    sub_269E2C9F8(v83, v117, type metadata accessor for GreetingSleepWidgetRectangularView);
    sub_269E2CA60(qword_2815739B8, type metadata accessor for GreetingSleepWidgetRectangularView);
    v128 = sub_269E5196C();
    v84 = *MEMORY[0x277D62138];
    v85 = HKSPSleepURL();
    if (v85)
    {
      v86 = v113;
      v87 = v85;
      sub_269E50AFC();

      v88 = 0;
      v72 = v125;
      v89 = v122;
    }

    else
    {
      v88 = 1;
      v72 = v125;
      v89 = v122;
      v86 = v113;
    }

    v96 = sub_269E50B0C();
    (*(*(v96 - 8) + 56))(v86, v88, 1, v96);
    v97 = v86;
    v98 = v114;
    sub_269DF0960(v97, v114);
    v99 = MEMORY[0x277CE11C0];
    sub_269E5173C();
    sub_269DF0A3C(v98);

    sub_269E2C814(v83, type metadata accessor for GreetingSleepWidgetRectangularView);
    v100 = v120;
    v79 = v121;
    (*(v120 + 16))(v89, v55, v121);
    swift_storeEnumTagMultiPayload();
    v128 = MEMORY[0x277CE11C8];
    v129 = v99;
    swift_getOpaqueTypeConformance2();
    v81 = v123;
    v80 = v100;
    sub_269E513BC();
    v58 = v55;
  }

  else
  {
    if (((1 << v63) & 0xC) == 0)
    {
      if (((1 << v63) & 0x30) != 0)
      {
        v58 = v56;
        v64 = v116;
        sub_269E2C9F8(v1, v116 + *(v38 + 20), type metadata accessor for SleepWidgetViewModel);
        v65 = *(v1 + *(type metadata accessor for SleepWidgetViewModel() + 28));
        *v64 = swift_getKeyPath();
        *(v64 + 8) = 0;
        *(v64 + *(v38 + 24)) = v65;
        sub_269E2C9F8(v64, v44, type metadata accessor for OccurrenceSleepWidgetRectangularView);
        sub_269E2CA60(&qword_28035F050, type metadata accessor for OccurrenceSleepWidgetRectangularView);
        v128 = sub_269E5196C();
        v66 = *MEMORY[0x277D62240];
        v67 = *MEMORY[0x277D62138];
        v68 = HKSPSleepURL();
        if (v68)
        {
          v69 = v111;
          v70 = v68;
          sub_269E50AFC();

          v71 = 0;
          v72 = v125;
          v73 = v122;
        }

        else
        {
          v71 = 1;
          v72 = v125;
          v73 = v122;
          v69 = v111;
        }

        v74 = v112;
        v106 = sub_269E50B0C();
        (*(*(v106 - 8) + 56))(v69, v71, 1, v106);
        sub_269DF0960(v69, v74);
        v107 = MEMORY[0x277CE11C8];
        sub_269E5173C();
        sub_269DF0A3C(v74);

        sub_269E2C814(v116, type metadata accessor for OccurrenceSleepWidgetRectangularView);
        v108 = v120;
        v79 = v121;
        (*(v120 + 16))(v73, v58, v121);
        swift_storeEnumTagMultiPayload();
        v128 = v107;
        v129 = MEMORY[0x277CE11C0];
        v80 = v108;
        swift_getOpaqueTypeConformance2();
        v81 = v123;
        sub_269E513BC();
        goto LABEL_12;
      }

      goto LABEL_2;
    }

    sub_269E2C9F8(v1, &v46[*(v38 + 20)], type metadata accessor for SleepWidgetViewModel);
    *v46 = swift_getKeyPath();
    v46[8] = 0;
    v46[*(v38 + 24)] = 3;
    sub_269E2C9F8(v46, v44, type metadata accessor for OccurrenceSleepWidgetRectangularView);
    sub_269E2CA60(&qword_28035F050, type metadata accessor for OccurrenceSleepWidgetRectangularView);
    v128 = sub_269E5196C();
    v90 = *MEMORY[0x277D62240];
    v91 = *MEMORY[0x277D62138];
    v92 = HKSPSleepURL();
    if (v92)
    {
      v93 = v109;
      v94 = v92;
      sub_269E50AFC();

      v95 = 0;
      v72 = v125;
      v80 = v120;
    }

    else
    {
      v95 = 1;
      v72 = v125;
      v80 = v120;
      v93 = v109;
    }

    v101 = sub_269E50B0C();
    (*(*(v101 - 8) + 56))(v93, v95, 1, v101);
    v102 = v93;
    v103 = v110;
    sub_269DF0960(v102, v110);
    v104 = MEMORY[0x277CE11C0];
    sub_269E5173C();
    sub_269DF0A3C(v103);

    sub_269E2C814(v46, type metadata accessor for OccurrenceSleepWidgetRectangularView);
    v105 = v121;
    (*(v80 + 16))(v122, v58, v121);
    swift_storeEnumTagMultiPayload();
    v128 = MEMORY[0x277CE11C8];
    v129 = v104;
    swift_getOpaqueTypeConformance2();
    v81 = v123;
    v79 = v105;
    sub_269E513BC();
  }

LABEL_12:
  sub_269DEBC30(v81, v72);
  swift_storeEnumTagMultiPayload();
  sub_269E01CFC();
  sub_269E513BC();
  sub_269DEBC94(v81);
  return (*(v80 + 8))(v58, v79);
}

uint64_t sub_269E2B9B4@<X0>(uint64_t a1@<X8>)
{
  v131 = a1;
  v117 = type metadata accessor for BedtimeSleepWidgetCircularView();
  v2 = *(*(v117 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v117);
  v116 = &v112 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v119 = &v112 - v5;
  v122 = type metadata accessor for GreetingSleepWidgetCircularView();
  v6 = *(*(v122 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v122);
  v132 = &v112 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v121 = &v112 - v10;
  MEMORY[0x28223BE20](v9);
  v120 = &v112 - v11;
  v12 = MEMORY[0x277CE0330];
  sub_269E2CAA8(0, &qword_2815721F8, sub_269E01714, MEMORY[0x277CE0330]);
  v130 = v13;
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v129 = &v112 - v15;
  sub_269E2CAA8(0, &qword_281572210, sub_269E0178C, v12);
  v123 = v16;
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v126 = &v112 - v18;
  sub_269E01714(0);
  v128 = v19;
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  v127 = &v112 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E2C994(0, &qword_281573C88, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v22 - 8);
  v26 = &v112 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v24);
  v29 = &v112 - v28;
  v30 = MEMORY[0x28223BE20](v27);
  v114 = &v112 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v115 = &v112 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v36 = &v112 - v35;
  v37 = MEMORY[0x28223BE20](v34);
  v118 = &v112 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v112 = &v112 - v40;
  MEMORY[0x28223BE20](v39);
  v113 = &v112 - v41;
  v42 = type metadata accessor for UpcomingSleepWidgetCircularView();
  v43 = *(*(v42 - 8) + 64);
  v44 = MEMORY[0x28223BE20](v42);
  v46 = &v112 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44);
  v48 = &v112 - v47;
  sub_269E0178C();
  v125 = v49;
  v124 = *(v49 - 8);
  v50 = *(v124 + 64);
  v51 = MEMORY[0x28223BE20](v1);
  v53 = &v112 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = MEMORY[0x28223BE20](v51);
  v55 = MEMORY[0x28223BE20](v54);
  v57 = &v112 - v56;
  v58 = MEMORY[0x28223BE20](v55);
  v61 = &v112 - v60;
  if ((*(v1 + 8) & 1) != 0 || (v67 = *v58, *v58 > 7))
  {
LABEL_2:
    v62 = v132;
    sub_269E2C9F8(v58, v132, type metadata accessor for SleepWidgetViewModel);
    sub_269E2C9F8(v62, v121, type metadata accessor for GreetingSleepWidgetCircularView);
    sub_269E2CA60(qword_281573A50, type metadata accessor for GreetingSleepWidgetCircularView);
    v133 = sub_269E5196C();
    v63 = *MEMORY[0x277D62138];
    v64 = HKSPSleepURL();
    if (v64)
    {
      v65 = v64;
      sub_269E50AFC();

      v66 = 0;
    }

    else
    {
      v66 = 1;
    }

    v75 = v129;
    v77 = sub_269E50B0C();
    (*(*(v77 - 8) + 56))(v26, v66, 1, v77);
    sub_269DF0960(v26, v29);
    v78 = MEMORY[0x277CE11C8];
    v79 = MEMORY[0x277CE11C0];
    sub_269E5173C();
    sub_269DF0A3C(v29);

    sub_269E2C814(v132, type metadata accessor for GreetingSleepWidgetCircularView);
    v80 = v124;
    v81 = v125;
    (*(v124 + 16))(v126, v53, v125);
    swift_storeEnumTagMultiPayload();
    v133 = v78;
    v134 = v79;
    v82 = v80;
    swift_getOpaqueTypeConformance2();
    v83 = v127;
    sub_269E513BC();
    v61 = v53;
    goto LABEL_22;
  }

  if (((1 << v67) & 0xC2) != 0)
  {
    v84 = v120;
    sub_269E2C9F8(v58, v120, type metadata accessor for SleepWidgetViewModel);
    sub_269E2C9F8(v84, v121, type metadata accessor for GreetingSleepWidgetCircularView);
    sub_269E2CA60(qword_281573A50, type metadata accessor for GreetingSleepWidgetCircularView);
    v133 = sub_269E5196C();
    v85 = *MEMORY[0x277D62138];
    v86 = HKSPSleepURL();
    if (v86)
    {
      v87 = v86;
      sub_269E50AFC();

      v88 = 0;
    }

    else
    {
      v88 = 1;
    }

    v75 = v129;
    v95 = v126;
    v96 = sub_269E50B0C();
    (*(*(v96 - 8) + 56))(v36, v88, 1, v96);
    v97 = v118;
    sub_269DF0960(v36, v118);
    v98 = MEMORY[0x277CE11C8];
    v99 = MEMORY[0x277CE11C0];
    sub_269E5173C();
    sub_269DF0A3C(v97);

    sub_269E2C814(v120, type metadata accessor for GreetingSleepWidgetCircularView);
    v101 = v124;
    v100 = v125;
    (*(v124 + 16))(v95, v57, v125);
    swift_storeEnumTagMultiPayload();
    v133 = v98;
    v134 = v99;
    v82 = v101;
    v81 = v100;
    swift_getOpaqueTypeConformance2();
    v83 = v127;
    sub_269E513BC();
    v61 = v57;
  }

  else
  {
    if (((1 << v67) & 0xC) == 0)
    {
      if (((1 << v67) & 0x30) != 0)
      {
        v61 = v59;
        v68 = v119;
        sub_269E2C9F8(v58, v119, type metadata accessor for SleepWidgetViewModel);
        sub_269E2C9F8(v68, v116, type metadata accessor for BedtimeSleepWidgetCircularView);
        sub_269E2CA60(&qword_28035F0C8, type metadata accessor for BedtimeSleepWidgetCircularView);
        v133 = sub_269E5196C();
        v69 = *MEMORY[0x277D62240];
        v70 = *MEMORY[0x277D62138];
        v71 = HKSPSleepURL();
        if (v71)
        {
          v72 = v114;
          v73 = v71;
          sub_269E50AFC();

          v74 = 0;
          v75 = v129;
          v76 = v126;
        }

        else
        {
          v74 = 1;
          v75 = v129;
          v76 = v126;
          v72 = v114;
        }

        v107 = sub_269E50B0C();
        (*(*(v107 - 8) + 56))(v72, v74, 1, v107);
        v108 = v72;
        v109 = v115;
        sub_269DF0960(v108, v115);
        sub_269E5173C();
        sub_269DF0A3C(v109);

        sub_269E2C814(v119, type metadata accessor for BedtimeSleepWidgetCircularView);
        v82 = v124;
        v110 = v76;
        v81 = v125;
        (*(v124 + 16))(v110, v61, v125);
        swift_storeEnumTagMultiPayload();
        v133 = MEMORY[0x277CE11C8];
        v134 = MEMORY[0x277CE11C0];
        swift_getOpaqueTypeConformance2();
        v83 = v127;
        sub_269E513BC();
        goto LABEL_22;
      }

      goto LABEL_2;
    }

    sub_269E2C9F8(v58, v48, type metadata accessor for SleepWidgetViewModel);
    sub_269E2C9F8(v48, v46, type metadata accessor for UpcomingSleepWidgetCircularView);
    sub_269E2CA60(&qword_28035F0D0, type metadata accessor for UpcomingSleepWidgetCircularView);
    v133 = sub_269E5196C();
    v89 = *MEMORY[0x277D62240];
    v90 = *MEMORY[0x277D62138];
    v91 = HKSPSleepURL();
    if (v91)
    {
      v92 = v112;
      v93 = v91;
      sub_269E50AFC();

      v94 = 0;
      v81 = v125;
    }

    else
    {
      v94 = 1;
      v81 = v125;
      v92 = v112;
    }

    v102 = sub_269E50B0C();
    (*(*(v102 - 8) + 56))(v92, v94, 1, v102);
    v103 = v92;
    v104 = v113;
    sub_269DF0960(v103, v113);
    v105 = MEMORY[0x277CE11C0];
    sub_269E5173C();
    sub_269DF0A3C(v104);

    sub_269E2C814(v48, type metadata accessor for UpcomingSleepWidgetCircularView);
    v106 = v124;
    (*(v124 + 16))(v126, v61, v81);
    swift_storeEnumTagMultiPayload();
    v133 = MEMORY[0x277CE11C8];
    v134 = v105;
    v82 = v106;
    swift_getOpaqueTypeConformance2();
    v83 = v127;
    sub_269E513BC();
    v75 = v129;
  }

LABEL_22:
  sub_269DEBC30(v83, v75);
  swift_storeEnumTagMultiPayload();
  sub_269E01CFC();
  sub_269E513BC();
  sub_269DEBC94(v83);
  return (*(v82 + 8))(v61, v81);
}

uint64_t sub_269E2C814(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_269E2C8C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = (*(*(a5(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

void sub_269E2C994(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_269E2C9F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_269E2CA60(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_269E2CAA8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t type metadata accessor for BedtimeSleepWidgetCircularView()
{
  result = qword_281573B50;
  if (!qword_281573B50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_269E2CB84(uint64_t a1)
{
  result = sub_269E2CE9C(&qword_28035F0C8, type metadata accessor for BedtimeSleepWidgetCircularView);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_269E2CBF8@<X0>(uint64_t a1@<X8>)
{
  v9[0] = a1;
  v1 = sub_269E51A8C();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v3 = sub_269E50FBC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E50FAC();
  sub_269E50F6C();
  (*(v4 + 8))(v7, v3);
  if (qword_281571DB8 != -1)
  {
    swift_once();
  }

  v9[1] = MEMORY[0x277D84F90];
  sub_269E2CE9C(&qword_281571E30, MEMORY[0x277D12700]);
  sub_269E2CE44();
  sub_269E2CE9C(&qword_281571D78, sub_269E2CE44);

  sub_269E51FEC();
  return sub_269E51A7C();
}

void sub_269E2CE44()
{
  if (!qword_281571D80)
  {
    sub_269E51A8C();
    v0 = sub_269E51DCC();
    if (!v1)
    {
      atomic_store(v0, &qword_281571D80);
    }
  }
}

uint64_t sub_269E2CE9C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_269E2CF4C()
{
  type metadata accessor for SleepScoreWidgetViewModel();
  if (v0 <= 0x3F)
  {
    sub_269E2E2C8(319, &qword_28035F0D8, _s13SleepWidgetUI5SpecsVMa_0, MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_269E2D028()
{
  result = sub_269E51ADC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_269E2D0C0()
{
  result = qword_28035F100;
  if (!qword_28035F100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28035F100);
  }

  return result;
}

uint64_t sub_269E2D114@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  sub_269E2E2C8(0, &qword_281573C88, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v32 = &v31 - v4;
  v5 = sub_269E51C1C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E2E32C();
  v11 = v10;
  v12 = *(v10 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E2E7F8();
  v33 = v16;
  v31 = *(v16 - 8);
  v17 = *(v31 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = v1;
  v35 = v1;
  sub_269E2E2C8(0, &qword_28035F110, sub_269E2E3E8, MEMORY[0x277CE14B8]);
  sub_269E20324();
  sub_269E2E638();
  sub_269E2E6C0();
  sub_269E518FC();
  sub_269E51C0C();
  v20 = sub_269E2EF68(&qword_28035F160, sub_269E2E32C);
  v21 = sub_269E2EF68(&qword_28035F168, MEMORY[0x277CE3ED8]);
  sub_269E5176C();
  (*(v6 + 8))(v9, v5);
  (*(v12 + 8))(v15, v11);
  v22 = *MEMORY[0x277D62230];
  v23 = *MEMORY[0x277D62138];
  v24 = HKSPSleepURL();
  if (v24)
  {
    v25 = v32;
    v26 = v24;
    sub_269E50AFC();

    v27 = 0;
  }

  else
  {
    v27 = 1;
    v25 = v32;
  }

  v28 = sub_269E50B0C();
  (*(*(v28 - 8) + 56))(v25, v27, 1, v28);
  v37 = v11;
  v38 = v5;
  v39 = v20;
  v40 = v21;
  swift_getOpaqueTypeConformance2();
  v29 = v33;
  sub_269E5173C();
  sub_269E2ED4C(v25, &qword_281573C88, MEMORY[0x277CC9260]);
  return (*(v31 + 8))(v19, v29);
}

uint64_t sub_269E2D5B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v111 = a1;
  v108 = a2;
  sub_269E2E2C8(0, &qword_281572070, MEMORY[0x277CE09A8], MEMORY[0x277D83D88]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v83[-v4];
  v6 = sub_269E5166C();
  v113 = *(v6 - 8);
  v7 = *(v113 + 64);
  MEMORY[0x28223BE20](v6);
  v110 = &v83[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = _s13SleepWidgetUI5SpecsVMa_0(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v109 = &v83[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_269E51CBC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v83[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_269E2E458();
  v106 = *(v17 - 8);
  v107 = v17;
  v18 = *(v106 + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v112 = &v83[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v19);
  v114 = &v83[-v21];
  sub_269E51E1C();
  v105 = sub_269E51E0C();
  sub_269E51DDC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_269E51CAC();
  v22 = sub_269E35418(v16);
  v24 = v23;
  (*(v13 + 8))(v16, v12);
  *&v125 = v22;
  *(&v125 + 1) = v24;
  v104 = sub_269DF0E28();
  v25 = sub_269E516CC();
  v88 = v26;
  v84 = v27;
  v86 = v28;
  v29 = *(type metadata accessor for SleepScoreWidgetRectangularView(0) + 20);
  v102 = _s13SleepWidgetUI5SpecsVMa_0;
  v103 = v29;
  v101 = _s13SleepWidgetUI5SpecsVMa_0;
  v30 = v109;
  sub_269E2EB64(&qword_28035F048, _s13SleepWidgetUI5SpecsVMa_0, _s13SleepWidgetUI5SpecsVMa_0, v109);
  v98 = *MEMORY[0x277CE0A68];
  v31 = v113;
  v32 = *(v113 + 104);
  v99 = v113 + 104;
  v100 = v32;
  v33 = v110;
  v85 = v6;
  v32(v110);
  v96 = *MEMORY[0x277CE09A0];
  v34 = v96;
  v35 = sub_269E5159C();
  v36 = *(v35 - 8);
  v95 = *(v36 + 104);
  v97 = v36 + 104;
  v37 = v34;
  v38 = v35;
  v90 = v35;
  v95(v5, v37);
  v39 = *(v36 + 56);
  v93 = v36 + 56;
  v94 = v39;
  v39(v5, 0, 1, v38);
  sub_269E515EC();
  v92 = MEMORY[0x277CE09A8];
  sub_269E2ED4C(v5, &qword_281572070, MEMORY[0x277CE09A8]);
  v40 = *(v31 + 8);
  v113 = v31 + 8;
  v91 = v40;
  v40(v33, v6);
  sub_269E515BC();
  sub_269E515FC();

  v89 = _s13SleepWidgetUI5SpecsVMa_0;
  sub_269E2EDBC(v30, _s13SleepWidgetUI5SpecsVMa_0);
  LOBYTE(v24) = v84;
  v41 = v88;
  v42 = sub_269E516AC();
  v44 = v43;
  LOBYTE(v30) = v45;
  v87 = v5;
  sub_269E00F48(v25, v41, v24 & 1);

  *&v125 = sub_269E5180C();
  v46 = sub_269E5169C();
  v48 = v47;
  LOBYTE(v41) = v49;
  v51 = v50;
  sub_269E00F48(v42, v44, v30 & 1);

  KeyPath = swift_getKeyPath();
  v53 = swift_getKeyPath();
  LOBYTE(v120) = v41 & 1;
  v117 = 0;
  *&v125 = v46;
  *(&v125 + 1) = v48;
  LOBYTE(v126) = v41 & 1;
  *(&v126 + 1) = v51;
  *&v127 = KeyPath;
  *(&v127 + 1) = 1;
  LOBYTE(v128) = 0;
  *(&v128 + 1) = v53;
  v129 = 0x3FE3333333333333;
  sub_269E2E4DC();
  sub_269E2E5B8();
  sub_269E5172C();
  v118[2] = v127;
  v118[3] = v128;
  v119 = v129;
  v118[0] = v125;
  v118[1] = v126;
  v88 = sub_269E2E4DC;
  sub_269E2EDBC(v118, sub_269E2E4DC);
  *&v125 = sub_269E1DD50();
  *(&v125 + 1) = v54;
  v55 = sub_269E516CC();
  v57 = v56;
  LOBYTE(v30) = v58;
  v59 = v109;
  sub_269E2EB64(&qword_28035F048, v102, v101, v109);
  v60 = v110;
  v61 = v85;
  v100(v110, v98, v85);
  v62 = v87;
  v63 = v90;
  (v95)(v87, v96, v90);
  v94(v62, 0, 1, v63);
  sub_269E515EC();
  sub_269E2ED4C(v62, &qword_281572070, v92);
  v91(v60, v61);
  sub_269E515BC();
  sub_269E515FC();

  sub_269E2EDBC(v59, v89);
  v113 = sub_269E516AC();
  v110 = v64;
  v111 = v65;
  LOBYTE(v61) = v66;
  sub_269E00F48(v55, v57, v30 & 1);

  v67 = swift_getKeyPath();
  v68 = swift_getKeyPath();
  LOBYTE(v46) = v61 & 1;
  LOBYTE(v125) = v61 & 1;
  LOBYTE(v120) = 0;
  v70 = v106;
  v69 = v107;
  v71 = *(v106 + 16);
  v72 = v112;
  v71(v112, v114, v107);
  v73 = v108;
  v71(v108, v72, v69);
  sub_269E2E3E8();
  v75 = v73 + *(v74 + 48);
  v76 = v110;
  v77 = v111;
  *&v120 = v113;
  *(&v120 + 1) = v110;
  LOBYTE(v121) = v46;
  *(&v121 + 1) = v116[0];
  DWORD1(v121) = *(v116 + 3);
  *(&v121 + 1) = v111;
  *&v122 = v67;
  *(&v122 + 1) = 1;
  LOBYTE(v123) = 0;
  *(&v123 + 1) = *v115;
  DWORD1(v123) = *&v115[3];
  *(&v123 + 1) = v68;
  v124 = 0x3FE3333333333333;
  *(v75 + 64) = 0x3FE3333333333333;
  v79 = v121;
  v78 = v122;
  *v75 = v120;
  *(v75 + 16) = v79;
  v80 = v123;
  *(v75 + 32) = v78;
  *(v75 + 48) = v80;
  sub_269E2EE1C(&v120, &v125);
  v81 = *(v70 + 8);
  v81(v114, v69);
  *&v125 = v113;
  *(&v125 + 1) = v76;
  LOBYTE(v126) = v46;
  *(&v126 + 1) = v116[0];
  DWORD1(v126) = *(v116 + 3);
  *(&v126 + 1) = v77;
  *&v127 = v67;
  *(&v127 + 1) = 1;
  LOBYTE(v128) = 0;
  *(&v128 + 1) = *v115;
  DWORD1(v128) = *&v115[3];
  *(&v128 + 1) = v68;
  v129 = 0x3FE3333333333333;
  sub_269E2EDBC(&v125, v88);
  v81(v112, v69);
}

uint64_t sub_269E2DF4C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_269E50E6C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E2E2C8(0, &qword_28035EE48, MEMORY[0x277D626B8], MEMORY[0x277D83D88]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v17 - v9;
  sub_269E51E1C();
  sub_269E51E0C();
  sub_269E51DDC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_269E1DA9C(v10);
  (*(v3 + 104))(v6, *MEMORY[0x277D62708], v2);
  sub_269E50E7C();
  KeyPath = swift_getKeyPath();
  sub_269E20324();
  v13 = (a1 + *(v12 + 36));
  sub_269E2E2C8(0, &qword_28035EEB8, MEMORY[0x277D62728], MEMORY[0x277CE0860]);
  v15 = v13 + *(v14 + 28);
  sub_269E50ECC();

  *v13 = KeyPath;
  return result;
}

id sub_269E2E188@<X0>(uint64_t a1@<X8>)
{
  result = [objc_opt_self() sharedBehavior];
  if (result)
  {
    v3 = result;
    v4 = [result isAppleWatch];

    sub_269E5124C();
    sub_269E2EF68(&qword_2815722C0, MEMORY[0x277CE3940]);
    v5 = sub_269E512DC();
    if (v16)
    {
      v6 = 2;
    }

    else
    {
      v6 = 1;
    }

    if (v4)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    v8 = MEMORY[0x26D652F10](v5);
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v15 = a1 + *(_s13SleepWidgetUI5SpecsVMa_0(0) + 24);
    result = sub_269E5126C();
    *a1 = v7;
    *(a1 + 8) = v8;
    *(a1 + 16) = v10;
    *(a1 + 24) = v12;
    *(a1 + 32) = v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_269E2E2C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_269E2E32C()
{
  if (!qword_28035F108)
  {
    sub_269E2E2C8(255, &qword_28035F110, sub_269E2E3E8, MEMORY[0x277CE14B8]);
    sub_269E20324();
    sub_269E2E638();
    sub_269E2E6C0();
    v0 = sub_269E5190C();
    if (!v1)
    {
      atomic_store(v0, &qword_28035F108);
    }
  }
}

void sub_269E2E3E8()
{
  if (!qword_28035F118)
  {
    sub_269E2E458();
    sub_269E2E4DC();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_28035F118);
    }
  }
}

void sub_269E2E458()
{
  if (!qword_28035F120)
  {
    sub_269E2E4DC();
    sub_269E2E5B8();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_28035F120);
    }
  }
}

void sub_269E2E4DC()
{
  if (!qword_28035F128)
  {
    sub_269E083BC();
    sub_269E2E568(255, &qword_2815720C0, MEMORY[0x277D85048], MEMORY[0x277CE0860]);
    v0 = sub_269E510FC();
    if (!v1)
    {
      atomic_store(v0, &qword_28035F128);
    }
  }
}

void sub_269E2E568(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_269E2E5B8()
{
  result = qword_28035F130;
  if (!qword_28035F130)
  {
    sub_269E2E4DC();
    sub_269E088AC();
    sub_269E07F10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28035F130);
  }

  return result;
}

unint64_t sub_269E2E638()
{
  result = qword_28035F138;
  if (!qword_28035F138)
  {
    sub_269E2E2C8(255, &qword_28035F110, sub_269E2E3E8, MEMORY[0x277CE14B8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28035F138);
  }

  return result;
}

unint64_t sub_269E2E6C0()
{
  result = qword_28035F140;
  if (!qword_28035F140)
  {
    sub_269E20324();
    sub_269E2EF68(&qword_28035F148, MEMORY[0x277D62710]);
    sub_269E2E770();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28035F140);
  }

  return result;
}

unint64_t sub_269E2E770()
{
  result = qword_28035F150;
  if (!qword_28035F150)
  {
    sub_269E2E2C8(255, &qword_28035EEB8, MEMORY[0x277D62728], MEMORY[0x277CE0860]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28035F150);
  }

  return result;
}

void sub_269E2E7F8()
{
  if (!qword_28035F158)
  {
    sub_269E2E32C();
    sub_269E51C1C();
    sub_269E2EF68(&qword_28035F160, sub_269E2E32C);
    sub_269E2EF68(&qword_28035F168, MEMORY[0x277CE3ED8]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_28035F158);
    }
  }
}

uint64_t sub_269E2E90C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_269E512CC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x277CE3AF8];
  sub_269E2E2C8(0, &qword_281572610, MEMORY[0x277CE3AF8], MEMORY[0x277CDF458]);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (&v18 - v12);
  sub_269E2EEE8(v2, &v18 - v12, &qword_281572610, v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_269E51ADC();
    return (*(*(v14 - 8) + 32))(a1, v13, v14);
  }

  else
  {
    v16 = *v13;
    sub_269E51EBC();
    v17 = sub_269E5149C();
    sub_269E50FEC();

    sub_269E512BC();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_269E2EB64@<X0>(unint64_t *a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v8 = v4;
  v10 = sub_269E512CC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E2E2C8(0, a1, a2, MEMORY[0x277CDF458]);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = (&v22 - v17);
  sub_269E2EEE8(v8, &v22 - v17, a1, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_269E2EE80(v18, a4, a3);
  }

  v20 = *v18;
  sub_269E51EBC();
  v21 = sub_269E5149C();
  sub_269E50FEC();

  sub_269E512BC();
  swift_getAtKeyPath();

  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_269E2ED4C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_269E2E2C8(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_269E2EDBC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_269E2EE1C(uint64_t a1, uint64_t a2)
{
  sub_269E2E4DC();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_269E2EE80(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_269E2EEE8(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_269E2E2C8(0, a3, a4, MEMORY[0x277CDF458]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_269E2EF68(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_269E2EFC4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t type metadata accessor for UpcomingSleepWidgetView()
{
  result = qword_2815737E8;
  if (!qword_2815737E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_269E2F088()
{
  type metadata accessor for SleepWidgetViewModel();
  if (v0 <= 0x3F)
  {
    sub_269E2EFC4(319, &qword_2815725D0, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      sub_269E2EFC4(319, &qword_2815725F0, MEMORY[0x277CC9788], MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_269E2F1A0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_269E512CC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x277CDFA28];
  sub_269E2EFC4(0, &qword_281572600, MEMORY[0x277CDFA28], MEMORY[0x277CDF458]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v18 - v11);
  v13 = type metadata accessor for UpcomingSleepWidgetView();
  sub_269E317DC(v1 + *(v13 + 20), v12, &qword_281572600, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_269E510EC();
    return (*(*(v14 - 8) + 32))(a1, v12, v14);
  }

  else
  {
    v16 = *v12;
    sub_269E51EBC();
    v17 = sub_269E5149C();
    sub_269E50FEC();

    sub_269E512BC();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

void sub_269E2F3CC(uint64_t a1@<X8>)
{
  sub_269DFE53C();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E30E2C();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v10 = sub_269E5134C();
  *(v10 + 1) = 0;
  v10[16] = 0;
  sub_269E314B4();
  sub_269E2F63C(v1, &v10[*(v11 + 44)]);
  v12 = *MEMORY[0x277CDF998];
  v13 = sub_269E510EC();
  (*(*(v13 - 8) + 104))(v6, v12, v13);
  sub_269E31170(&qword_281572560, MEMORY[0x277CDFA28]);
  if (sub_269E51C9C())
  {
    sub_269E31170(&qword_28035F1E8, sub_269E30E2C);
    sub_269E31170(&qword_281571BF8, sub_269DFE53C);
    sub_269E5179C();
    sub_269E316AC(v6, sub_269DFE53C);
    sub_269DEC69C(v10);
    KeyPath = swift_getKeyPath();
    sub_269E3151C();
    v16 = (a1 + *(v15 + 36));
    *v16 = KeyPath;
    v16[1] = 0x3FE0000000000000;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_269E2F63C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v141 = a2;
  sub_269E3123C(0);
  v139 = v3;
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v138 = v127 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E311B8();
  v142 = v6;
  v140 = *(v6 - 8);
  v7 = *(v140 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v152 = v127 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v156 = v127 - v10;
  v11 = type metadata accessor for SleepWidgetViewModel();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v131 = v127 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = type metadata accessor for ScheduleOccurrenceSectionView(0);
  v14 = *(*(v132 - 8) + 64);
  MEMORY[0x28223BE20](v132);
  v135 = v127 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269DFE6F4();
  v134 = v16;
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v151 = v127 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v133 = v127 - v21;
  MEMORY[0x28223BE20](v20);
  v155 = v127 - v22;
  sub_269DFE53C();
  v130 = v23;
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23);
  v145 = v127 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_269E510EC();
  v27 = *(v26 - 8);
  v28 = v27[8];
  v29 = MEMORY[0x28223BE20](v26);
  v31 = v127 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v33 = v127 - v32;
  v34 = type metadata accessor for HeaderView(0);
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x28223BE20](v34);
  v37 = (v127 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_269E08998(0);
  v147 = v38;
  v39 = *(*(v38 - 1) + 64);
  MEMORY[0x28223BE20](v38);
  v148 = (v127 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_269E0895C(0);
  v143 = v41;
  v42 = *(*(v41 - 8) + 64);
  MEMORY[0x28223BE20](v41);
  v144 = v127 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E30FB0();
  v150 = v44;
  v137 = *(v44 - 8);
  v45 = *(v137 + 64);
  v46 = MEMORY[0x28223BE20](v44);
  v149 = v127 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v46);
  v154 = v127 - v48;
  sub_269E51E1C();
  v136 = sub_269E51E0C();
  sub_269E51DDC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_281571CB0 != -1)
  {
    swift_once();
  }

  v49 = sub_269E50A7C();
  v51 = v50;
  *v37 = swift_getKeyPath();
  sub_269E2EFC4(0, &qword_281572610, MEMORY[0x277CE3AF8], MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  v52 = (v37 + *(v34 + 20));
  *v52 = v49;
  v52[1] = v51;
  LOBYTE(v49) = sub_269E5150C();
  sub_269E2F1A0(v33);
  v53 = *MEMORY[0x277CDFA10];
  v153 = a1;
  v54 = (v27 + 13);
  v55 = v27[13];
  v55(v31, v53, v26);
  sub_269E510DC();
  v56 = v31;
  v57 = v33;
  v60 = v27[1];
  v59 = v27 + 1;
  v58 = v60;
  v128 = v56;
  v60();
  v129 = v57;
  (v60)(v57, v26);
  sub_269E5102C();
  v62 = v61;
  v64 = v63;
  v66 = v65;
  v68 = v67;
  v69 = v148;
  sub_269E3170C(v37, v148, type metadata accessor for HeaderView);
  v70 = v69 + v147[9];
  *v70 = v49;
  *(v70 + 1) = v62;
  *(v70 + 2) = v64;
  *(v70 + 3) = v66;
  *(v70 + 4) = v68;
  v70[40] = 0;
  LOBYTE(v49) = sub_269E514FC();
  sub_269E5102C();
  v72 = v71;
  v74 = v73;
  v76 = v75;
  v78 = v77;
  v79 = v144;
  sub_269E3170C(v69, v144, sub_269E08998);
  v80 = v79 + *(v143 + 36);
  *v80 = v49;
  *(v80 + 8) = v72;
  *(v80 + 16) = v74;
  *(v80 + 24) = v76;
  *(v80 + 32) = v78;
  *(v80 + 40) = 0;
  v81 = v145;
  v147 = v55;
  v148 = v54;
  v55(v145, v53, v26);
  sub_269E31170(&qword_281572560, MEMORY[0x277CDFA28]);
  result = sub_269E51C9C();
  if (result)
  {
    sub_269E310F0();
    sub_269E31170(&qword_281571BF8, sub_269DFE53C);
    sub_269E5179C();
    sub_269E316AC(v81, sub_269DFE53C);
    sub_269E316AC(v79, sub_269E0895C);
    v83 = v131;
    sub_269E31774(v153, v131, type metadata accessor for SleepWidgetViewModel);
    if (sub_269E30914())
    {
      v84 = 17;
    }

    else
    {
      v84 = 16;
    }

    KeyPath = swift_getKeyPath();
    v86 = v132;
    v87 = *(v132 + 28);
    v146 = v58;
    v88 = v129;
    v89 = v59;
    v90 = v135;
    *&v135[v87] = KeyPath;
    sub_269E2EFC4(0, &qword_281572600, MEMORY[0x277CDFA28], MEMORY[0x277CDF458]);
    swift_storeEnumTagMultiPayload();
    sub_269E3170C(v83, v90, type metadata accessor for SleepWidgetViewModel);
    *(v90 + *(v86 + 20)) = 3;
    *(v90 + *(v86 + 24)) = v84;
    v91 = sub_269E5150C();
    sub_269E2F1A0(v88);
    v93 = v128;
    LODWORD(v145) = *MEMORY[0x277CDF988];
    v92 = v145;
    (v147)(v128, v145, v26);
    v144 = sub_269E31170(&qword_281572568, MEMORY[0x277CDFA28]);
    sub_269E51C8C();
    v94 = v146;
    v127[1] = v89;
    (v146)(v93, v26);
    (v94)(v88, v26);
    sub_269E5102C();
    v96 = v95;
    v98 = v97;
    v100 = v99;
    v102 = v101;
    v103 = v133;
    sub_269E3170C(v90, v133, type metadata accessor for ScheduleOccurrenceSectionView);
    v104 = v103 + *(v134 + 36);
    *v104 = v91;
    *(v104 + 8) = v96;
    *(v104 + 16) = v98;
    *(v104 + 24) = v100;
    *(v104 + 32) = v102;
    *(v104 + 40) = 0;
    sub_269E3170C(v103, v155, sub_269DFE6F4);
    v105 = v138;
    sub_269E30454(v153, v138);
    sub_269E2F1A0(v88);
    v106 = v92;
    v107 = v147;
    (v147)(v93, v106, v26);
    sub_269E51C8C();
    v108 = v146;
    (v146)(v93, v26);
    (v108)(v88, v26);
    sub_269E3140C();
    sub_269E5171C();
    sub_269E316AC(v105, sub_269E3123C);
    sub_269E2F1A0(v88);
    v107(v93, v145, v26);
    LODWORD(v153) = sub_269E51C8C();
    (v108)(v93, v26);
    (v108)(v88, v26);
    v109 = v137;
    v110 = *(v137 + 16);
    v111 = v149;
    v112 = v150;
    v110(v149, v154, v150);
    v158 = 0;
    v148 = sub_269DFE6F4;
    v113 = v151;
    sub_269E31774(v155, v151, sub_269DFE6F4);
    v114 = v140;
    v147 = *(v140 + 16);
    v115 = v142;
    (v147)(v152, v156, v142);
    v157 = (v153 & 1) == 0;
    v116 = v141;
    v110(v141, v111, v112);
    sub_269E30EF4();
    v118 = v117;
    v119 = &v116[*(v117 + 48)];
    v120 = v158;
    *v119 = 0;
    v119[8] = v120;
    sub_269E31774(v113, &v116[*(v117 + 64)], v148);
    v121 = v152;
    (v147)(&v116[*(v118 + 80)], v152, v115);
    v122 = &v116[*(v118 + 96)];
    v123 = v157;
    *v122 = 0;
    v122[8] = 0;
    v122[9] = v123;
    v124 = *(v114 + 8);
    v124(v156, v115);
    sub_269E316AC(v155, sub_269DFE6F4);
    v125 = *(v109 + 8);
    v126 = v150;
    v125(v154, v150);
    v124(v121, v115);
    sub_269E316AC(v151, sub_269DFE6F4);
    v125(v149, v126);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_269E30454@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = type metadata accessor for SleepWidgetViewModel();
  v4 = *(*(v39 - 8) + 64);
  MEMORY[0x28223BE20](v39);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ScheduleOccurrenceSectionView(0);
  v8 = *(*(v7 - 1) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269DFE6F4();
  v40 = v11;
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v39 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v39 - v19;
  sub_269E51E1C();
  v41 = sub_269E51E0C();
  sub_269E51DDC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_269E519BC();
  sub_269E5111C();
  *&v42[55] = v47;
  *&v42[71] = v48;
  *&v42[87] = v49;
  *&v42[103] = v50;
  *&v42[7] = v44;
  *&v42[23] = v45;
  v43 = 0;
  *&v42[39] = v46;
  sub_269E31774(a1, v6, type metadata accessor for SleepWidgetViewModel);
  v21 = *(a1 + *(v39 + 28));
  if (sub_269E30914())
  {
    v22 = 17;
  }

  else
  {
    v22 = 16;
  }

  *&v10[v7[7]] = swift_getKeyPath();
  sub_269E2EFC4(0, &qword_281572600, MEMORY[0x277CDFA28], MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  sub_269E3170C(v6, v10, type metadata accessor for SleepWidgetViewModel);
  v10[v7[5]] = v21;
  *&v10[v7[6]] = v22;
  v23 = sub_269E5150C();
  sub_269E5102C();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  sub_269E3170C(v10, v18, type metadata accessor for ScheduleOccurrenceSectionView);
  v32 = &v18[*(v40 + 36)];
  *v32 = v23;
  *(v32 + 1) = v25;
  *(v32 + 2) = v27;
  *(v32 + 3) = v29;
  *(v32 + 4) = v31;
  v32[40] = 0;
  sub_269E3170C(v18, v20, sub_269DFE6F4);
  sub_269E31774(v20, v15, sub_269DFE6F4);
  v33 = *&v42[80];
  *(a2 + 73) = *&v42[64];
  *(a2 + 89) = v33;
  *(a2 + 105) = *&v42[96];
  v34 = *&v42[16];
  *(a2 + 9) = *v42;
  *(a2 + 25) = v34;
  v35 = *&v42[48];
  *(a2 + 41) = *&v42[32];
  *a2 = 0;
  *(a2 + 8) = 0;
  v36 = *&v42[111];
  *(a2 + 57) = v35;
  *(a2 + 120) = v36;
  *(a2 + 128) = 0x3FF0000000000000;
  sub_269E312A4();
  sub_269E31774(v15, a2 + *(v37 + 48), sub_269DFE6F4);
  sub_269E316AC(v20, sub_269DFE6F4);
  sub_269E316AC(v15, sub_269DFE6F4);
}

BOOL sub_269E30914()
{
  v0 = sub_269E510EC();
  v1 = *(v0 - 8);
  v2 = v1[8];
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v14 - v6;
  sub_269E2F1A0(&v14 - v6);
  v8 = v1[13];
  v8(v5, *MEMORY[0x277CDF988], v0);
  sub_269E31170(&qword_281572568, MEMORY[0x277CDFA28]);
  v9 = sub_269E51C8C();
  v10 = v1[1];
  v10(v5, v0);
  v10(v7, v0);
  if (v9)
  {
    if (sub_269E30B78())
    {
      return 0;
    }

    sub_269E2F1A0(v7);
    v8(v5, *MEMORY[0x277CDF9D8], v0);
    v11 = sub_269E51C7C();
  }

  else
  {
    sub_269E2F1A0(v7);
    v8(v5, *MEMORY[0x277CDF9F0], v0);
    v11 = sub_269E51C8C();
  }

  v12 = v11;
  v10(v5, v0);
  v10(v7, v0);
  return (v12 & 1) != 0;
}

uint64_t sub_269E30B78()
{
  v21 = sub_269E512CC();
  v1 = *(v21 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v21);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x277CC9788];
  sub_269E2EFC4(0, qword_281572618, MEMORY[0x277CC9788], MEMORY[0x277CDF458]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = (&v20 - v8);
  v10 = sub_269E50BCC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for UpcomingSleepWidgetView();
  sub_269E317DC(v0 + *(v15 + 24), v9, qword_281572618, v5);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v11 + 32))(v14, v9, v10);
  }

  else
  {
    v16 = *v9;
    sub_269E51EBC();
    v17 = sub_269E5149C();
    sub_269E50FEC();

    sub_269E512BC();
    swift_getAtKeyPath();

    (*(v1 + 8))(v4, v21);
  }

  v18 = sub_269E50BBC();
  (*(v11 + 8))(v14, v10);
  return v18 & 1;
}

void sub_269E30E2C()
{
  if (!qword_28035F170)
  {
    sub_269E30EC0(255);
    sub_269E31170(&qword_28035F1D8, sub_269E30EC0);
    v0 = sub_269E5194C();
    if (!v1)
    {
      atomic_store(v0, &qword_28035F170);
    }
  }
}

void sub_269E30EF4()
{
  if (!qword_28035F180)
  {
    sub_269E30FB0();
    v0 = MEMORY[0x277CE1180];
    sub_269DFE6F4();
    sub_269E311B8();
    sub_269E2E568(255, &qword_28035EA40, v0, MEMORY[0x277D83D88]);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_28035F180);
    }
  }
}

void sub_269E30FB0()
{
  if (!qword_28035F188)
  {
    sub_269E0895C(255);
    sub_269DFE53C();
    sub_269E310F0();
    sub_269E31170(&qword_281571BF8, sub_269DFE53C);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_28035F188);
    }
  }
}

void sub_269E31084(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, v9, a4);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_269E310F0()
{
  result = qword_2815723F8;
  if (!qword_2815723F8)
  {
    sub_269E0895C(255);
    sub_269E08BA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815723F8);
  }

  return result;
}

uint64_t sub_269E31170(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_269E311B8()
{
  if (!qword_28035F190)
  {
    sub_269E3123C(255);
    sub_269E3140C();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_28035F190);
    }
  }
}

void sub_269E312A4()
{
  if (!qword_28035F1A8)
  {
    sub_269E31314();
    sub_269DFE6F4();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_28035F1A8);
    }
  }
}

void sub_269E31314()
{
  if (!qword_28035F1B0)
  {
    sub_269E313B4();
    sub_269E31084(255, &qword_28035F1C0, MEMORY[0x277CE0508], MEMORY[0x277CE0500], MEMORY[0x277CE0498]);
    v0 = sub_269E510FC();
    if (!v1)
    {
      atomic_store(v0, &qword_28035F1B0);
    }
  }
}

void sub_269E313B4()
{
  if (!qword_28035F1B8)
  {
    v0 = sub_269E510FC();
    if (!v1)
    {
      atomic_store(v0, &qword_28035F1B8);
    }
  }
}

unint64_t sub_269E3140C()
{
  result = qword_28035F1C8;
  if (!qword_28035F1C8)
  {
    sub_269E3123C(255);
    sub_269E31170(&qword_28035F1D0, sub_269E31270);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28035F1C8);
  }

  return result;
}

void sub_269E314B4()
{
  if (!qword_28035F1E0)
  {
    sub_269E30EC0(255);
    v0 = sub_269E5109C();
    if (!v1)
    {
      atomic_store(v0, &qword_28035F1E0);
    }
  }
}

void sub_269E3151C()
{
  if (!qword_28035F1F0)
  {
    sub_269E315A8();
    sub_269E2E568(255, &qword_2815720C0, MEMORY[0x277D85048], MEMORY[0x277CE0860]);
    v0 = sub_269E510FC();
    if (!v1)
    {
      atomic_store(v0, &qword_28035F1F0);
    }
  }
}

void sub_269E315A8()
{
  if (!qword_28035F1F8)
  {
    sub_269E30E2C();
    sub_269DFE53C();
    sub_269E31170(&qword_28035F1E8, sub_269E30E2C);
    sub_269E31170(&qword_281571BF8, sub_269DFE53C);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_28035F1F8);
    }
  }
}

uint64_t sub_269E316AC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_269E3170C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_269E31774(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_269E317DC(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_269E2EFC4(0, a3, a4, MEMORY[0x277CDF458]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_269E3185C()
{
  result = qword_28035F200;
  if (!qword_28035F200)
  {
    sub_269E3151C();
    sub_269E30E2C();
    sub_269DFE53C();
    sub_269E31170(&qword_28035F1E8, sub_269E30E2C);
    sub_269E31170(&qword_281571BF8, sub_269DFE53C);
    swift_getOpaqueTypeConformance2();
    sub_269E07F10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28035F200);
  }

  return result;
}

unint64_t sub_269E319C0()
{
  result = qword_281573C20;
  if (!qword_281573C20)
  {
    sub_269E50FDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281573C20);
  }

  return result;
}

uint64_t type metadata accessor for GreetingSleepWidgetView()
{
  result = qword_2815738E8;
  if (!qword_2815738E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_269E31AA8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for SleepWidgetViewModel() + 40));
  v4 = *v3;
  if (*v3)
  {
    v6 = v3[2];
    v5 = v3[3];
    v7 = v3[1];
    v10[0] = v4;
    v10[1] = v7;
    v11 = v6;
    v12 = v5;
    sub_269E0B178(&v13);
    v8 = v13;
  }

  else
  {
    v8 = 0;
  }

  v10[0] = v8;
  return sub_269E49E94(v10, 0, a2);
}

uint64_t sub_269E31B2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  *(a2 + 24) = type metadata accessor for SleepWidgetViewModel();
  *(a2 + 32) = &protocol witness table for SleepWidgetViewModel;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  sub_269E31CE0(v2, boxed_opaque_existential_1, type metadata accessor for SleepWidgetViewModel);
  sub_269E31CE0(v2, &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for GreetingSleepWidgetView);
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = swift_allocObject();
  sub_269E31D48(&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);
  result = swift_getKeyPath();
  *(a2 + 48) = v8;
  *(a2 + 56) = result;
  *(a2 + 64) = 0;
  *(a2 + 40) = sub_269E31DAC;
  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_269E31CE0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_269E31D48(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GreetingSleepWidgetView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_269E31DAC@<X0>(void *a1@<X8>)
{
  v3 = *(type metadata accessor for GreetingSleepWidgetView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_269E31AA8(v4, a1);
}

void sub_269E31E1C()
{
  if (!qword_281572EA8)
  {
    type metadata accessor for SleepWidgetChartView();
    sub_269E31EB0(&qword_281572A30, type metadata accessor for SleepWidgetChartView);
    v0 = type metadata accessor for SleepWidgetResultsView();
    if (!v1)
    {
      atomic_store(v0, &qword_281572EA8);
    }
  }
}

uint64_t sub_269E31EB0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t Calendar.midnight(after:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_269E50C6C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E3216C();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_269E50B9C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v6, *MEMORY[0x277CC9968], v2);
  sub_269E50C3C();
  (*(v3 + 8))(v6, v2);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_269DFEA3C(v10);
    v16 = 1;
  }

  else
  {
    (*(v12 + 32))(v15, v10, v11);
    sub_269E50BFC();
    (*(v12 + 8))(v15, v11);
    v16 = 0;
  }

  return (*(v12 + 56))(a1, v16, 1, v11);
}

void sub_269E3216C()
{
  if (!qword_281573C60)
  {
    sub_269E50B9C();
    v0 = sub_269E51F9C();
    if (!v1)
    {
      atomic_store(v0, &qword_281573C60);
    }
  }
}

void sub_269E3220C()
{
  sub_269E34FE4(319, &qword_2815725E0, MEMORY[0x277CE3BA0], MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_269E34FE4(319, &qword_2815725E8, MEMORY[0x277CE3AF8], MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_269E32314(uint64_t a1, uint64_t a2)
{
  v33 = a1;
  sub_269E34E94();
  v31 = v4;
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v32 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - v8;
  v10 = sub_269E50E4C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v28 - v16;
  v18 = *(v11 + 16);
  v30 = v2;
  v18(v15, v2, v10);
  v19 = MEMORY[0x277D626D0];
  v28 = sub_269E34CD4(&qword_281573C30, MEMORY[0x277D626D0]);
  sub_269E51FBC();
  v20 = v19;
  v21 = v31;
  sub_269E34CD4(&qword_281573C38, v20);
  v29 = a2;
  v22 = sub_269E51C9C();
  v23 = *(v21 + 48);
  *v9 = (v22 & 1) == 0;
  if (v22)
  {
    (*(v11 + 32))(&v9[v23], v17, v10);
  }

  else
  {
    (*(v11 + 8))(v17, v10);
    v24 = v29;
    v18(&v9[v23], v29, v10);
    v18(v15, v24, v10);
    sub_269E51FCC();
  }

  v25 = v32;
  sub_269E34F00(v9, v32);
  v26 = *v25;
  (*(v11 + 32))(v33, &v25[*(v21 + 48)], v10);
  return v26;
}

uint64_t sub_269E325FC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_269E512CC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x277CE3BA0];
  sub_269E34FE4(0, &qword_281572608, MEMORY[0x277CE3BA0], MEMORY[0x277CDF458]);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (&v18 - v12);
  sub_269E34F64(v2, &v18 - v12, &qword_281572608, v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_269E51B0C();
    return (*(*(v14 - 8) + 32))(a1, v13, v14);
  }

  else
  {
    v16 = *v13;
    sub_269E51EBC();
    v17 = sub_269E5149C();
    sub_269E50FEC();

    sub_269E512BC();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_269E32820@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_269E512CC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x277CE3AF8];
  sub_269E34FE4(0, &qword_281572610, MEMORY[0x277CE3AF8], MEMORY[0x277CDF458]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v18 - v11);
  v13 = type metadata accessor for SleepStageResultsView(0);
  sub_269E34F64(v1 + *(v13 + 20), v12, &qword_281572610, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_269E51ADC();
    return (*(*(v14 - 8) + 32))(a1, v12, v14);
  }

  else
  {
    v16 = *v12;
    sub_269E51EBC();
    v17 = sub_269E5149C();
    sub_269E50FEC();

    sub_269E512BC();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_269E32A4C@<X0>(uint64_t a1@<X8>)
{
  v128 = a1;
  v2 = MEMORY[0x277CE0330];
  sub_269E3497C(0, &qword_281572238, type metadata accessor for SleepStageBarView, MEMORY[0x277CE0330]);
  v102 = v3;
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v103 = &v102 - v5;
  sub_269E34948(0);
  v127 = v6;
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v104 = &v102 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x277CE0330];
  sub_269E35394(0, &qword_2815721E8, sub_269E349E8, sub_269E34948, MEMORY[0x277CE0330]);
  v124 = v10;
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v126 = &v102 - v12;
  sub_269E35394(0, &qword_2815721F0, sub_269E34A30, MEMORY[0x277D626E8], v9);
  v121 = v13;
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v122 = &v102 - v15;
  sub_269E349E8(0);
  v125 = v16;
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v123 = &v102 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = sub_269E50BCC();
  v109 = *(v110 - 8);
  v19 = *(v109 + 64);
  MEMORY[0x28223BE20](v110);
  v108 = &v102 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = type metadata accessor for SleepStageBarView();
  v21 = *(*(v115 - 8) + 64);
  MEMORY[0x28223BE20](v115);
  v111 = (&v102 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_269E3497C(0, &qword_281572208, sub_269E34A64, v2);
  v117 = v23;
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23);
  v118 = &v102 - v25;
  sub_269E35394(0, &qword_281572240, MEMORY[0x277D626E8], type metadata accessor for SleepStageBarView, v9);
  v112 = v26;
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26);
  v113 = &v102 - v28;
  sub_269E34A64(0);
  v116 = v29;
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29);
  v114 = &v102 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_269E51ADC();
  v105 = *(v32 - 8);
  v33 = *(v105 + 64);
  MEMORY[0x28223BE20](v32);
  v35 = &v102 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_269E51B0C();
  v37 = *(v36 - 8);
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v36);
  v40 = &v102 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_269E50E4C();
  v42 = *(*(v41 - 8) + 64);
  MEMORY[0x28223BE20](v41 - 8);
  v44 = &v102 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_269E50DAC();
  v46 = *(*(v45 - 8) + 64);
  MEMORY[0x28223BE20](v45 - 8);
  v48 = &v102 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = sub_269E50E5C();
  v107 = *(v120 - 8);
  v49 = *(v107 + 64);
  MEMORY[0x28223BE20](v120);
  v106 = &v102 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E34A30(0);
  v119 = v51;
  v52 = *(*(v51 - 8) + 64);
  MEMORY[0x28223BE20](v51);
  v54 = (&v102 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0));
  v55 = v1 + *(type metadata accessor for SleepStageResultsView(0) + 24);
  if (*(v55 + 32) <= 1u)
  {
    if (*(v55 + 32))
    {
      v61 = v115;
      v62 = v111;
      sub_269E346D0(v111 + *(v115 + 32));
      *v62 = swift_getKeyPath();
      v63 = MEMORY[0x277CDF458];
      sub_269E34FE4(0, &qword_281572600, MEMORY[0x277CDFA28], MEMORY[0x277CDF458]);
      swift_storeEnumTagMultiPayload();
      *(v62 + v61[5]) = swift_getKeyPath();
      sub_269E34FE4(0, &qword_281572608, MEMORY[0x277CE3BA0], v63);
      swift_storeEnumTagMultiPayload();
      KeyPath = swift_getKeyPath();
      v65 = v61[6];
      *(v62 + v65) = swift_getKeyPath();
      sub_269E34FE4(0, &qword_281572610, MEMORY[0x277CE3AF8], v63);
      swift_storeEnumTagMultiPayload();
      v66 = v62 + v61[7];
      *v66 = KeyPath;
      v66[8] = 0;
      v67 = v61[9];
      sub_269DF6A7C(0, &qword_281571D00, 0x277CCA968);
      v68 = v108;
      sub_269E50BAC();
      HKSPIsRemoveSpacesForTimeFormatEnabled();
      v69 = sub_269E51EDC();
      (*(v109 + 8))(v68, v110);
      *(v62 + v67) = v69;
      sub_269E34DCC(v62, v113, type metadata accessor for SleepStageBarView);
      swift_storeEnumTagMultiPayload();
      sub_269E34CD4(&qword_281573C28, MEMORY[0x277D626E8]);
      sub_269E34CD4(qword_281573758, type metadata accessor for SleepStageBarView);
      v70 = v114;
      sub_269E513BC();
      sub_269E34DCC(v70, v118, sub_269E34A64);
      swift_storeEnumTagMultiPayload();
      sub_269E34BF4();
      sub_269E34AAC();
      sub_269E513BC();
      sub_269E34E34(v70, sub_269E34A64);
      sub_269E34E34(v62, type metadata accessor for SleepStageBarView);
    }

    else
    {
      sub_269E33DF8(v48);
      sub_269E325FC(v40);
      sub_269E32820(v35);
      sub_269E3400C(v35, v44);
      (*(v105 + 8))(v35, v32);
      (*(v37 + 8))(v40, v36);
      v56 = objc_allocWithZone(sub_269E50EFC());
      sub_269E50EEC();
      v57 = v106;
      sub_269E50DBC();
      v58 = v107;
      v59 = v120;
      (*(v107 + 16))(v113, v57, v120);
      swift_storeEnumTagMultiPayload();
      sub_269E34CD4(&qword_281573C28, MEMORY[0x277D626E8]);
      sub_269E34CD4(qword_281573758, type metadata accessor for SleepStageBarView);
      v60 = v114;
      sub_269E513BC();
      sub_269E34DCC(v60, v118, sub_269E34A64);
      swift_storeEnumTagMultiPayload();
      sub_269E34BF4();
      sub_269E34AAC();
      sub_269E513BC();
      sub_269E34E34(v60, sub_269E34A64);
      (*(v58 + 8))(v57, v59);
    }

    goto LABEL_7;
  }

  if (*(v55 + 32) == 2)
  {
    swift_storeEnumTagMultiPayload();
    sub_269E34BF4();
    sub_269E34AAC();
    sub_269E513BC();
LABEL_7:
    v71 = sub_269E34A30;
    sub_269E34DCC(v54, v122, sub_269E34A30);
    swift_storeEnumTagMultiPayload();
    sub_269E352C0(&qword_281572148, sub_269E34A30, sub_269E34BF4, sub_269E34AAC);
    sub_269E34CD4(&qword_281573C28, MEMORY[0x277D626E8]);
    v72 = v123;
    sub_269E513BC();
    v73 = sub_269E349E8;
    sub_269E34DCC(v72, v126, sub_269E349E8);
LABEL_8:
    swift_storeEnumTagMultiPayload();
    sub_269E34B00();
    sub_269E34D1C();
    sub_269E513BC();
    sub_269E34E34(v72, v73);
    v74 = v54;
    return sub_269E34E34(v74, v71);
  }

  v77 = *v55;
  v76 = *(v55 + 8);
  if (!*v55 || !v76)
  {
    v83 = *(v55 + 16);
    v84 = *(v55 + 24);
    goto LABEL_15;
  }

  if (![v76 hasSleepStageData])
  {
    v77 = *v55;
    v76 = *(v55 + 8);
    v90 = *(v55 + 32);
    v83 = *(v55 + 16);
    v84 = *(v55 + 24);
    if (v90 != 3)
    {
      if (v90 == 2 || !v77)
      {
        goto LABEL_27;
      }

LABEL_16:
      if (v76)
      {
        v85 = v76;
        v86 = v84;

        v87 = v85;
        v88 = v85;
        [v88 sleepDuration];
        if (v89 > COERCE_DOUBLE(1) && v89 > 0.0)
        {
          sub_269DF6EA0(v77, v87, v83, v84);
LABEL_26:
          v93 = v115;
          v54 = v111;
          sub_269E346D0(v111 + *(v115 + 32));
          *v54 = swift_getKeyPath();
          v94 = MEMORY[0x277CDF458];
          sub_269E34FE4(0, &qword_281572600, MEMORY[0x277CDFA28], MEMORY[0x277CDF458]);
          swift_storeEnumTagMultiPayload();
          *(v54 + v93[5]) = swift_getKeyPath();
          sub_269E34FE4(0, &qword_281572608, MEMORY[0x277CE3BA0], v94);
          swift_storeEnumTagMultiPayload();
          v95 = swift_getKeyPath();
          v96 = v93[6];
          *(v54 + v96) = swift_getKeyPath();
          sub_269E34FE4(0, &qword_281572610, MEMORY[0x277CE3AF8], v94);
          swift_storeEnumTagMultiPayload();
          v97 = v54 + v93[7];
          *v97 = v95;
          v97[8] = 0;
          v98 = v93[9];
          sub_269DF6A7C(0, &qword_281571D00, 0x277CCA968);
          v99 = v108;
          sub_269E50BAC();
          HKSPIsRemoveSpacesForTimeFormatEnabled();
          v100 = sub_269E51EDC();
          (*(v109 + 8))(v99, v110);
          *(v54 + v98) = v100;
          v71 = type metadata accessor for SleepStageBarView;
          sub_269E34DCC(v54, v103, type metadata accessor for SleepStageBarView);
          swift_storeEnumTagMultiPayload();
          sub_269E34CD4(qword_281573758, type metadata accessor for SleepStageBarView);
          sub_269E34AAC();
          v72 = v104;
          sub_269E513BC();
          v73 = sub_269E34948;
          sub_269E34DCC(v72, v126, sub_269E34948);
          goto LABEL_8;
        }

        [v88 inBedDuration];
        v92 = v91;
        sub_269DF6EA0(v77, v87, v83, v84);
        if (v92 > COERCE_DOUBLE(1) && v92 > 0.0)
        {
          goto LABEL_26;
        }
      }

LABEL_27:
      swift_storeEnumTagMultiPayload();
      sub_269E34CD4(qword_281573758, type metadata accessor for SleepStageBarView);
      sub_269E34AAC();
      v101 = v104;
      sub_269E513BC();
      v71 = sub_269E34948;
      sub_269E34DCC(v101, v126, sub_269E34948);
      swift_storeEnumTagMultiPayload();
      sub_269E34B00();
      sub_269E34D1C();
      sub_269E513BC();
      v74 = v101;
      return sub_269E34E34(v74, v71);
    }

LABEL_15:
    if (!v77)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

  sub_269E33DF8(v48);
  sub_269E325FC(v40);
  sub_269E32820(v35);
  sub_269E3400C(v35, v44);
  (*(v105 + 8))(v35, v32);
  (*(v37 + 8))(v40, v36);
  v78 = objc_allocWithZone(sub_269E50EFC());
  sub_269E50EEC();
  v79 = v106;
  sub_269E50DBC();
  v80 = v107;
  v81 = v120;
  (*(v107 + 16))(v122, v79, v120);
  swift_storeEnumTagMultiPayload();
  sub_269E352C0(&qword_281572148, sub_269E34A30, sub_269E34BF4, sub_269E34AAC);
  sub_269E34CD4(&qword_281573C28, MEMORY[0x277D626E8]);
  v82 = v123;
  sub_269E513BC();
  sub_269E34DCC(v82, v126, sub_269E349E8);
  swift_storeEnumTagMultiPayload();
  sub_269E34B00();
  sub_269E34D1C();
  sub_269E513BC();
  sub_269E34E34(v82, sub_269E349E8);
  return (*(v80 + 8))(v79, v81);
}

uint64_t sub_269E33DF8@<X0>(uint64_t a1@<X8>)
{
  sub_269E34FE4(0, &qword_281573C40, MEMORY[0x277D626C0], MEMORY[0x277D83D88]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v20 - v5;
  v7 = (v1 + *(type metadata accessor for SleepStageResultsView(0) + 24));
  v9 = *v7;
  v8 = v7[1];
  v10 = *(v7 + 32);
  if (v10 == 3)
  {
    if (v9)
    {
      v11 = v8 == 0;
    }

    else
    {
      v11 = 1;
    }

    if (!v11)
    {
LABEL_6:
      v12 = v8;
      sub_269E51F1C();

      v13 = sub_269E50DAC();
      v14 = *(v13 - 8);
      (*(v14 + 56))(v6, 0, 1, v13);
      return (*(v14 + 32))(a1, v6, v13);
    }
  }

  else if (v10 != 2 && v9 != 0 && v8 != 0)
  {
    goto LABEL_6;
  }

  v18 = sub_269E50DAC();
  v19 = *(v18 - 8);
  (*(v19 + 56))(v6, 1, 1, v18);
  sub_269E50D9C();
  result = (*(v19 + 48))(v6, 1, v18);
  if (result != 1)
  {
    return sub_269E35048(v6);
  }

  return result;
}

uint64_t sub_269E3400C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v66 = a2;
  v49 = a1;
  v50 = sub_269E51ADC();
  v48 = *(v50 - 8);
  v2 = *(v48 + 64);
  MEMORY[0x28223BE20](v50);
  v47 = v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_269E50E4C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v62 = v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v60 = v45 - v9;
  v10 = sub_269E51B0C();
  v64 = *(v10 - 8);
  v11 = *(v64 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v61 = v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v45 - v14;
  v16 = MEMORY[0x277D626D0];
  sub_269E34FE4(0, &qword_281571BE8, MEMORY[0x277D626D0], MEMORY[0x277D84560]);
  v18 = v17;
  v19 = *(v5 + 72);
  v63 = v5;
  v20 = *(v5 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_269E528D0;
  v58 = (v20 + 32) & ~v20;
  sub_269E50DFC();
  v67 = v21;
  v22 = sub_269E34CD4(&qword_281573C30, MEMORY[0x277D626D0]);
  sub_269E34FE4(0, &qword_281571DB0, v16, MEMORY[0x277D83940]);
  v24 = v23;
  v25 = sub_269E0482C();
  v55 = v4;
  v56 = v24;
  v57 = v22;
  sub_269E51FEC();
  v26 = v64;
  v53 = *(v64 + 16);
  v54 = v64 + 16;
  v53(v15, v65, v10);
  v27 = *(v26 + 88);
  v46 = v15;
  v59 = v10;
  v52 = v27;
  v28 = v27(v15, v10);
  v51 = *MEMORY[0x277CE3B98];
  v45[4] = v19;
  v45[3] = v18;
  v45[2] = v20;
  v45[1] = v25;
  if (v28 == v51)
  {
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_269E546C0;
    sub_269E50E0C();
    sub_269E50E1C();
    sub_269E50DEC();
    v67 = v29;
    v30 = v62;
    v33 = v55;
    sub_269E51FEC();
    v34 = v60;
    sub_269E32314(v60, v30);
    v35 = *(v63 + 8);
    v35(v30, v33);
    v35(v34, v33);
    v36 = v64;
    v37 = v59;
  }

  else
  {
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_269E528E0;
    sub_269E50E3C();
    sub_269E50E2C();
    v67 = v31;
    v32 = v62;
    v33 = v55;
    sub_269E51FEC();
    v34 = v60;
    sub_269E32314(v60, v32);
    v35 = *(v63 + 8);
    v35(v32, v33);
    v35(v34, v33);
    v36 = v64;
    v37 = v59;
    (*(v64 + 8))(v46, v59);
  }

  v38 = v61;
  v53(v61, v65, v37);
  v39 = v52(v38, v37);
  if (v39 != v51 && v39 != *MEMORY[0x277CE3B68])
  {
    return (*(v36 + 8))(v38, v37);
  }

  v41 = v47;
  sub_269E51ABC();
  v42 = sub_269E51AAC();
  result = (*(v48 + 8))(v41, v50);
  if (v42)
  {
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_269E528E0;
    sub_269E50DCC();
    sub_269E50E2C();
    v67 = v43;
    v44 = v62;
    sub_269E51FEC();
    sub_269E32314(v34, v44);
    v35(v44, v33);
    return (v35)(v34, v33);
  }

  return result;
}

uint64_t sub_269E346D0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_269E509EC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v1 + *(type metadata accessor for SleepStageResultsView(0) + 24);
  v9 = *v8;
  v10 = *(v8 + 8);
  v11 = *(v8 + 16);
  v12 = *(v8 + 24);
  v13 = *(v8 + 32);
  if (v13 != 3)
  {
    if (v13 != 2 && v9 != 0 && v10 != 0)
    {
      goto LABEL_6;
    }

LABEL_18:
    sub_269E509DC();
    result = type metadata accessor for SleepStageBarViewModel(0);
    v18 = MEMORY[0x277D84F90];
    v24 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  if (v9)
  {
    v14 = v10 == 0;
  }

  else
  {
    v14 = 1;
  }

  if (v14)
  {
    goto LABEL_18;
  }

LABEL_6:
  v15 = v10;
  sub_269DF6E4C(v9, v10, v11, v12);
  sub_269E51F0C();
  v32 = a1;
  if (v11 == 2)
  {
    v16 = 1;
  }

  else
  {
    v16 = 2;
  }

  v17 = sub_269E350F4(&unk_287AB3338);
  v31 = v3;
  v34 = v16;
  v18 = HKSleepDaySummary.segments(_:highlightBehavior:)(v17, &v34);

  v19 = HKCategoryValueSleepAnalysisAsleepValues();
  sub_269DF6A7C(0, &qword_28035EB28, 0x277CCABB0);
  v30 = v12;
  sub_269E0F23C();
  v20 = sub_269E51E3C();

  sub_269E0AC2C(v20);
  v22 = v21;

  v23 = sub_269E0F2A4(v22);

  v33[0] = v16;
  a1 = v32;
  v24 = HKSleepDaySummary.segments(_:highlightBehavior:)(v23, v33);

  sub_269DF6EA0(v9, v10, v11, v30);
  (*(v4 + 32))(a1, v7, v31);
  result = type metadata accessor for SleepStageBarViewModel(0);
LABEL_19:
  v28 = (a1 + *(result + 20));
  *v28 = v18;
  v28[1] = v24;
  v29 = MEMORY[0x277D84F90];
  v28[2] = MEMORY[0x277D84F90];
  v28[3] = v29;
  v28[4] = v29;
  v28[5] = v29;
  return result;
}

void sub_269E3497C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t, ValueMetadata *))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7, &type metadata for SleepStageEmptyView);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_269E34AAC()
{
  result = qword_2815736B0[0];
  if (!qword_2815736B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2815736B0);
  }

  return result;
}

unint64_t sub_269E34B00()
{
  result = qword_281572100;
  if (!qword_281572100)
  {
    sub_269E349E8(255);
    sub_269E352C0(&qword_281572148, sub_269E34A30, sub_269E34BF4, sub_269E34AAC);
    sub_269E34CD4(&qword_281573C28, MEMORY[0x277D626E8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281572100);
  }

  return result;
}

unint64_t sub_269E34BF4()
{
  result = qword_2815721E0;
  if (!qword_2815721E0)
  {
    sub_269E34A64(255);
    sub_269E34CD4(&qword_281573C28, MEMORY[0x277D626E8]);
    sub_269E34CD4(qword_281573758, type metadata accessor for SleepStageBarView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815721E0);
  }

  return result;
}

uint64_t sub_269E34CD4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_269E34D1C()
{
  result = qword_2815721D0;
  if (!qword_2815721D0)
  {
    sub_269E34948(255);
    sub_269E34CD4(qword_281573758, type metadata accessor for SleepStageBarView);
    sub_269E34AAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815721D0);
  }

  return result;
}

uint64_t sub_269E34DCC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_269E34E34(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_269E34E94()
{
  if (!qword_281571D48)
  {
    sub_269E50E4C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_281571D48);
    }
  }
}

uint64_t sub_269E34F00(uint64_t a1, uint64_t a2)
{
  sub_269E34E94();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_269E34F64(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_269E34FE4(0, a3, a4, MEMORY[0x277CDF458]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_269E34FE4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_269E35048(uint64_t a1)
{
  sub_269E34FE4(0, &qword_281573C40, MEMORY[0x277D626C0], MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_269E350F4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_269E0F61C();
    v3 = sub_269E5209C();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + 8 * v4);
      v11 = *(v3 + 40);
      sub_269E5220C();
      MEMORY[0x26D653EA0](v10);
      result = sub_269E5223C();
      v13 = ~(-1 << *(v3 + 32));
      v14 = result & v13;
      v15 = (result & v13) >> 6;
      v16 = *(v5 + 8 * v15);
      v17 = 1 << (result & v13);
      v18 = *(v3 + 48);
      if ((v17 & v16) != 0)
      {
        while (*(v18 + 8 * v14) != v10)
        {
          v14 = (v14 + 1) & v13;
          v15 = v14 >> 6;
          v16 = *(v5 + 8 * (v14 >> 6));
          v17 = 1 << v14;
          if (((1 << v14) & v16) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v15) = v17 | v16;
        *(v18 + 8 * v14) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_269E3524C()
{
  result = sub_269E509EC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_269E352C0(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void), void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_269E35394(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

uint64_t sub_269E35418(uint64_t a1)
{
  v2 = sub_269E50BCC();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = sub_269E51CBC();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  (*(v7 + 16))(&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  sub_269DF6A7C(0, qword_281571C10, 0x277CCA8D8);
  if (!sub_269E51F4C())
  {
    v8 = [objc_opt_self() mainBundle];
  }

  sub_269E50BAC();
  return sub_269E51CFC();
}

uint64_t sub_269E355AC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_269E5101C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E50FFC();
  v9 = sub_269E5100C();
  v10 = sub_269E51ECC();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v24 = v12;
    *v11 = 136446210;
    *(v11 + 4) = sub_269E47920(0xD000000000000020, 0x8000000269E558D0, &v24);
    _os_log_impl(&dword_269DE5000, v9, v10, "[%{public}s] Returning placeholder for sleep score widget...", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x26D654490](v12, -1, -1);
    MEMORY[0x26D654490](v11, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  sub_269E50B7C();
  v13 = type metadata accessor for SleepScoreWidgetEntry(0);
  v14 = v13[5];
  sub_269E50B7C();
  v15 = sub_269E50B9C();
  (*(*(v15 - 8) + 56))(a1 + v14, 0, 1, v15);
  v16 = *(type metadata accessor for SleepScoreWidgetTimelineProvider(0) + 24);
  v17 = (a1 + v13[6]);
  v18 = *(type metadata accessor for SleepScoreWidgetViewModel() + 20);
  v19 = sub_269E50CDC();
  (*(*(v19 - 8) + 16))(&v17[v18], v2 + v16, v19);
  *v17 = 0u;
  *(v17 + 1) = 0u;
  v20 = v13[7];
  v21 = sub_269E51BEC();
  return (*(*(v21 - 8) + 56))(a1 + v20, 1, 1, v21);
}

uint64_t sub_269E3585C(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4 = sub_269E5101C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E50FFC();
  v9 = sub_269E5100C();
  v10 = sub_269E51ECC();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v15 = v12;
    *v11 = 136446210;
    *(v11 + 4) = sub_269E47920(0xD000000000000020, 0x8000000269E558D0, &v15);
    _os_log_impl(&dword_269DE5000, v9, v10, "[%{public}s] Returning snapshot for sleep score widget", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x26D654490](v12, -1, -1);
    MEMORY[0x26D654490](v11, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  return a2(a1);
}

uint64_t sub_269E35A18(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6)
{
  v26 = a4;
  v27 = a5;
  v10 = sub_269E5101C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269E50FFC();
  v15 = sub_269E5100C();
  v16 = sub_269E51ECC();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v24 = a6;
    v25 = a1;
    v18 = v17;
    v19 = swift_slowAlloc();
    v28 = v19;
    *v18 = 136446210;
    *(v18 + 4) = sub_269E47920(0xD000000000000020, 0x8000000269E558D0, &v28);
    _os_log_impl(&dword_269DE5000, v15, v16, v26, v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v19);
    MEMORY[0x26D654490](v19, -1, -1);
    v20 = v18;
    a6 = v24;
    MEMORY[0x26D654490](v20, -1, -1);
  }

  (*(v11 + 8))(v14, v10);
  v21 = swift_allocObject();
  *(v21 + 16) = a2;
  *(v21 + 24) = a3;

  sub_269E51BFC();
  sub_269E3625C(1, a6, v21);
}