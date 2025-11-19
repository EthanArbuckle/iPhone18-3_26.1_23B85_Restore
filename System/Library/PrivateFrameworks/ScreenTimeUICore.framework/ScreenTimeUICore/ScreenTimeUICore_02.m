uint64_t ModelProvider.addHourlyData(toDataModel:forDateInterval:userAltDSID:deviceIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  v8 = sub_264E23EA8();
  v7[9] = v8;
  v9 = *(v8 - 8);
  v7[10] = v9;
  v10 = *(v9 + 64) + 15;
  v7[11] = swift_task_alloc();
  v11 = sub_264E23EC8();
  v7[12] = v11;
  v12 = *(v11 - 8);
  v7[13] = v12;
  v13 = *(v12 + 64) + 15;
  v7[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_264DAB584, 0, 0);
}

uint64_t sub_264DAB584()
{
  v1 = v0[14];
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[9];
  v6 = v0[6];
  v5 = v0[7];
  v8 = v0[4];
  v7 = v0[5];
  v9 = v0[3];
  v10 = sub_264E238E8();
  (*(*(v10 - 8) + 16))(v2, v9, v10);
  (*(v3 + 104))(v2, *MEMORY[0x277CC5838], v4);

  sub_264E23EB8();
  v11 = swift_task_alloc();
  v0[15] = v11;
  *v11 = v0;
  v11[1] = sub_264DAB6F4;
  v12 = v0[14];
  v13 = v0[8];
  v14 = v0[2];

  return sub_264DAB918(v12, v13, v14);
}

uint64_t sub_264DAB6F4()
{
  v2 = *(*v1 + 120);
  v5 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = sub_264DAB890;
  }

  else
  {
    v3 = sub_264DAB808;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_264DAB808()
{
  v1 = v0[11];
  (*(v0[13] + 8))(v0[14], v0[12]);

  v2 = v0[1];

  return v2();
}

uint64_t sub_264DAB890()
{
  v1 = v0[11];
  (*(v0[13] + 8))(v0[14], v0[12]);

  v2 = v0[1];
  v3 = v0[16];

  return v2();
}

uint64_t sub_264DAB918(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a1;
  v3[4] = a3;
  v5 = sub_264E23DB8();
  v3[5] = v5;
  v6 = *(v5 - 8);
  v3[6] = v6;
  v7 = *(v6 + 64) + 15;
  v3[7] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2078, &qword_264E270A0) - 8) + 64) + 15;
  v3[8] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2080, &qword_264E270A8);
  v3[9] = v9;
  v10 = *(v9 - 8);
  v3[10] = v10;
  v11 = *(v10 + 64) + 15;
  v3[11] = swift_task_alloc();
  v12 = sub_264E23E58();
  v3[12] = v12;
  v13 = *(v12 - 8);
  v3[13] = v13;
  v14 = *(v13 + 64) + 15;
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v15 = sub_264E23DF8();
  v3[17] = v15;
  v16 = *(v15 - 8);
  v3[18] = v16;
  v17 = *(v16 + 64) + 15;
  v3[19] = swift_task_alloc();
  v18 = *(MEMORY[0x277CC57A0] + 4);
  v19 = swift_task_alloc();
  v3[20] = v19;
  *v19 = v3;
  v19[1] = sub_264DABB90;

  return MEMORY[0x2821162E0](a1, 0);
}

uint64_t sub_264DABB90(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 160);
  v7 = *v2;
  *(v3 + 168) = a1;
  *(v3 + 176) = v1;

  if (v1)
  {
    v5 = sub_264DABFDC;
  }

  else
  {
    v5 = sub_264DABCA4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_264DABCA4()
{
  result = v0[21];
  v38 = *(result + 16);
  if (v38)
  {
    v2 = 0;
    v35 = result + ((*(v0[18] + 80) + 32) & ~*(v0[18] + 80));
    v36 = v0[18];
    v3 = v0[6];
    v34 = (v0[10] + 8);
    v37 = v0[21];
    v44 = (v3 + 48);
    v43 = (v3 + 32);
    v40 = (v3 + 8);
    while (v2 < *(result + 16))
    {
      v4 = v0[19];
      v5 = v0[17];
      v6 = v0[11];
      v8 = v0[8];
      v7 = v0[9];
      v41 = v0[5];
      v9 = v0[3];
      v39 = v2;
      (*(v36 + 16))(v4, v35 + *(v36 + 72) * v2, v5);
      sub_264E23DC8();
      (*(v36 + 8))(v4, v5);
      sub_264E23E08();
      v10 = *v44;
      if ((*v44)(v8, 1, v41) != 1)
      {
        v42 = *v43;
        do
        {
          v11 = v0[11];
          v12 = v0[8];
          v13 = v0[7];
          v14 = v0[4];
          v15 = v0[5];
          v42(v13, v12, v15);
          v16 = type metadata accessor for AllActivityView.Model(0);
          v17 = v14 + v16[9];
          sub_264DB1A1C(v13);
          v18 = v14 + v16[10];
          sub_264DB203C(v13);
          v19 = v14 + v16[13];
          sub_264DB2EC8(v13);
          v20 = v14 + v16[16];
          sub_264DB766C(v13);
          v21 = v14 + v16[18];
          sub_264DB87E8(v13);
          v22 = v14 + v16[20];
          sub_264DB424C(v13);
          v23 = v14 + v16[23];
          sub_264DBB24C(v13);
          v24 = v16[25];
          sub_264DB4A64(v13);
          (*v40)(v13, v15);
          sub_264E23E08();
        }

        while (v10(v12, 1, v15) != 1);
      }

      v2 = v39 + 1;
      (*v34)(v0[11], v0[9]);
      result = v37;
      if (v39 + 1 == v38)
      {
        v25 = v0[21];
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_10:

    v26 = v0[19];
    v27 = v0[15];
    v28 = v0[16];
    v29 = v0[14];
    v30 = v0[11];
    v32 = v0[7];
    v31 = v0[8];

    v33 = v0[1];

    return v33();
  }

  return result;
}

uint64_t sub_264DABFDC()
{
  v1 = *(v0 + 176);
  *(v0 + 16) = v1;
  v2 = *(v0 + 128);
  v3 = *(v0 + 96);
  v4 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2088, &unk_264E270B0);
  if (swift_dynamicCast())
  {
    v6 = *(v0 + 120);
    v5 = *(v0 + 128);
    v8 = *(v0 + 104);
    v7 = *(v0 + 112);
    v9 = *(v0 + 96);

    (*(v8 + 32))(v6, v5, v9);
    (*(v8 + 104))(v7, *MEMORY[0x277CC57A8], v9);
    v10 = sub_264E23E48();
    v11 = *(v8 + 8);
    v11(v7, v9);
    if (v10)
    {
      if (qword_27FFB1690 != -1)
      {
        swift_once();
      }

      v12 = sub_264E23FC8();
      __swift_project_value_buffer(v12, qword_27FFB6C08);
      v13 = sub_264E23FA8();
      v14 = sub_264E252B8();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&dword_264D7D000, v13, v14, "enumerateActivitySegments DeviceActivityDataSource exception: dataSourceUnavailable", v15, 2u);
        MEMORY[0x26674FCD0](v15, -1, -1);
      }
    }

    v16 = *(v0 + 120);
    v18 = *(v0 + 96);
    v17 = *(v0 + 104);
    sub_264DBD13C(&qword_27FFB2090, MEMORY[0x277CC57B0]);
    swift_allocError();
    (*(v17 + 16))(v19, v16, v18);
    swift_willThrow();
    v11(v16, v18);
  }

  v20 = *(v0 + 152);
  v22 = *(v0 + 120);
  v21 = *(v0 + 128);
  v23 = *(v0 + 112);
  v24 = *(v0 + 88);
  v26 = *(v0 + 56);
  v25 = *(v0 + 64);

  v27 = *(v0 + 8);

  return v27();
}

uint64_t ModelProvider.summaryModel(forUserAltDSID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v101 = a2;
  v99 = a1;
  v103 = a3;
  v96 = sub_264E23EA8();
  v95 = *(v96 - 8);
  v3 = *(v95 + 64);
  MEMORY[0x28223BE20](v96);
  v94 = &v89 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_264E23EC8();
  v98 = *(v100 - 8);
  v5 = *(v98 + 64);
  MEMORY[0x28223BE20](v100);
  v97 = &v89 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1880, &qword_264E26220);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v121 = &v89 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v89 - v11;
  v126 = sub_264E238E8();
  v13 = *(v126 - 8);
  v14 = v13[8];
  MEMORY[0x28223BE20](v126);
  v93 = &v89 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v112 = &v89 - v17;
  MEMORY[0x28223BE20](v18);
  v109 = &v89 - v19;
  MEMORY[0x28223BE20](v20);
  v117 = &v89 - v21;
  v111 = type metadata accessor for ActivityNavigationState(0);
  v22 = *(*(v111 - 8) + 64);
  MEMORY[0x28223BE20](v111);
  v120 = &v89 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for SummaryView.Model(0);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v113 = &v89 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = sub_264E23C38();
  v125 = *(v119 - 8);
  v27 = *(v125 + 64);
  MEMORY[0x28223BE20](v119);
  v110 = &v89 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v31 = &v89 - v30;
  MEMORY[0x28223BE20](v32);
  v34 = &v89 - v33;
  v35 = sub_264E23AA8();
  v36 = *(v35 - 8);
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v35);
  v106 = &v89 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  v123 = &v89 - v40;
  MEMORY[0x28223BE20](v41);
  v43 = &v89 - v42;
  MEMORY[0x28223BE20](v44);
  v46 = &v89 - v45;
  sub_264E23A98();
  v115 = v34;
  sub_264E23BF8();
  v124 = v36;
  v47 = *(v36 + 16);
  v122 = v46;
  v47(v43, v46, v35);
  sub_264E23BF8();
  v48 = v43;
  v118 = v31;
  Calendar.weeksRoundedToDay(untilDateInLastDay:weekCount:)(v43, 1, v12);
  v107 = v13[6];
  v108 = v13 + 6;
  if (v107(v12, 1, v126) == 1)
  {
    sub_264D817BC(v12, &qword_27FFB1880, &qword_264E26220);
    result = sub_264E253E8();
    __break(1u);
  }

  else
  {
    v49 = v13[4];
    v50 = v117;
    v51 = v126;
    v92 = v13 + 4;
    v91 = v49;
    v49(v117, v12, v126);
    v105 = v48;
    v47(v123, v48, v35);
    v104 = v47;
    v52 = v13[2];
    v53 = v109;
    v52(v109, v50, v51);
    v116 = v35;
    v54 = v111;
    v55 = v125;
    v56 = v120;
    (*(v125 + 16))(&v120[*(v111 + 24)], v118, v119);
    *v56 = 1;
    v57 = v106;
    v104(v106, v123, v35);
    v58 = v112;
    v59 = v126;
    v104 = (v13 + 2);
    v90 = v52;
    v52(v112, v53, v126);
    v60 = v120;
    sub_264D9173C(v57, v58, &v120[*(v54 + 20)]);
    v61 = v13[1];
    v61(v53, v59);
    v63 = v124 + 8;
    v62 = *(v124 + 8);
    v64 = v116;
    v62(v123, v116);
    v65 = v117;
    v117 = (v13 + 1);
    v112 = v61;
    v61(v65, v59);
    v66 = *(v55 + 8);
    v67 = v119;
    v125 = v55 + 8;
    v66(v118, v119);
    v123 = v62;
    v124 = v63;
    v62(v105, v64);
    v68 = v110;
    sub_264E23BF8();
    v69 = v113;
    SummaryView.Model.init(dateState:calendar:)(v60, v68, v113);
    v70 = v121;
    v71 = v115;
    Calendar.weeksPreceding(date:weekCount:)(v122, 2, v121);
    v72 = v107(v70, 1, v59);
    v73 = v67;
    if (v72 == 1)
    {
      v74 = v71;
      v75 = v66;
      sub_264D817BC(v121, &qword_27FFB1880, &qword_264E26220);
      if (qword_27FFB1690 != -1)
      {
        swift_once();
      }

      v76 = sub_264E23FC8();
      __swift_project_value_buffer(v76, qword_27FFB6C08);
      v77 = sub_264E23FA8();
      v78 = sub_264E252A8();
      if (os_log_type_enabled(v77, v78))
      {
        v79 = v73;
        v80 = swift_slowAlloc();
        *v80 = 0;
        _os_log_impl(&dword_264D7D000, v77, v78, "Unable to calculate weeksPreceding. Returning empty SummaryView model.", v80, 2u);
        v81 = v80;
        v73 = v79;
        MEMORY[0x26674FCD0](v81, -1, -1);
      }

      v75(v74, v73);
      (v123)(v122, v116);
      return sub_264DBD214(v69, v103, type metadata accessor for SummaryView.Model);
    }

    else
    {
      v83 = v64;
      v84 = v93;
      v85 = v126;
      v91(v93, v121, v126);
      v86 = v94;
      v90(v94, v84, v85);
      (*(v95 + 104))(v86, *MEMORY[0x277CC5830], v96);

      v87 = v97;
      sub_264E23EB8();
      v88 = v114;
      sub_264DAA1D0(v87, v102, v69);
      (*(v98 + 8))(v87, v100);
      (v112)(v84, v126);
      v66(v115, v67);
      (v123)(v122, v83);
      if (!v88)
      {
        sub_264DBD27C(v69, v103, type metadata accessor for SummaryView.Model);
      }

      return sub_264DBD184(v69, type metadata accessor for SummaryView.Model);
    }
  }

  return result;
}

uint64_t SummaryView.Model.append(_:)(uint64_t a1)
{
  v60 = a1;
  v1 = sub_264E23C38();
  v56 = *(v1 - 8);
  v57 = v1;
  v2 = *(v56 + 64);
  MEMORY[0x28223BE20](v1);
  v54 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for OverviewChart.Day(0);
  v4 = *(*(v55 - 8) + 64);
  MEMORY[0x28223BE20](v55);
  v53 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_264E23AA8();
  v7 = *(v6 - 8);
  v64 = v6;
  v65 = v7;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_264E23C18();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1880, &qword_264E26220);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v52 - v18;
  v20 = sub_264E238E8();
  v61 = *(v20 - 8);
  v21 = *(v61 + 64);
  MEMORY[0x28223BE20](v20);
  v59 = &v52 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v52 - v24;
  MEMORY[0x28223BE20](v26);
  v28 = &v52 - v27;
  v58 = type metadata accessor for SummaryView.Model(0);
  v29 = *(v58 + 28);
  (*(v12 + 104))(v15, *MEMORY[0x277CC9940], v11);
  sub_264E23A98();
  v52 = v29;
  sub_264E23B08();
  v30 = *(v65 + 8);
  v65 += 8;
  v62 = v30;
  v30(v10, v64);
  v31 = v11;
  v32 = v61;
  (*(v12 + 8))(v15, v31);
  result = (*(v32 + 48))(v19, 1, v20);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v32 + 32))(v28, v19, v20);
    sub_264E23D98();
    _s16ScreenTimeUICore11DetailChartV4HourV2id10Foundation4DateVvg_0();
    v34 = *(v32 + 8);
    v34(v25, v20);
    v35 = sub_264E238C8();
    v36 = v64;
    v37 = v62;
    v62(v10, v64);
    v34(v28, v20);
    v38 = v63;
    if (v35)
    {
      sub_264E23D98();
      _s16ScreenTimeUICore11DetailChartV4HourV2id10Foundation4DateVvg_0();
      v34(v25, v20);
      sub_264E23D78();
      v40 = v39;
      v61 = v20;
      v42 = v56;
      v41 = v57;
      v43 = v54;
      (*(v56 + 16))(v54, v38 + v52, v57);
      v44 = v53;
      sub_264E23AF8();
      v45 = v41;
      v37 = v62;
      (*(v42 + 8))(v43, v45);
      v20 = v61;
      v37(v10, v64);
      *(v44 + *(v55 + 20)) = v40;
      sub_264DAE2D0(v44);
      v46 = v44;
      v36 = v64;
      sub_264DBD184(v46, type metadata accessor for OverviewChart.Day);
    }

    v47 = v38 + *(v58 + 20);
    sub_264E23D98();
    _s16ScreenTimeUICore11DetailChartV4HourV2id10Foundation4DateVvg_0();
    v34(v25, v20);
    sub_264E23D78();
    v49 = v48;
    v50 = v47 + *(type metadata accessor for UsageHeaderView.Model(0) + 20);
    v51 = v59;
    Calendar.fullDay(for:)(v10, v59);
    sub_264DB5838(v49, v51, 0, 1, &qword_27FFB1D90, &unk_264E268E0);
    v34(v51, v20);
    return (v37)(v10, v36);
  }

  return result;
}

void *ModelProvider.fetchDeviceRecordsFromDeviceActivity(forUserWithAltDSID:)(uint64_t a1, void *a2)
{
  v36 = a1;
  v40 = sub_264E23DD8();
  v3 = *(v40 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v40);
  v41 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_264E23DF8();
  v35 = *(v39 - 8);
  v6 = *(v35 + 64);
  MEMORY[0x28223BE20](v39);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_264E23EA8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_264E23EC8();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264E23848();
  (*(v10 + 104))(v13, *MEMORY[0x277CC5840], v9);

  sub_264E23EB8();
  v19 = v38;
  v20 = sub_264E23E68();
  if (v19)
  {
    (*(v15 + 8))(v18, v14);
  }

  else
  {
    v33 = v15;
    v34 = v14;
    v21 = *(v20 + 16);
    if (v21)
    {
      v31 = 0;
      v32 = v18;
      v23 = *(v35 + 16);
      v22 = v35 + 16;
      v24 = v20 + ((*(v35 + 80) + 32) & ~*(v35 + 80));
      v37 = *(v35 + 72);
      v38 = v23;
      v25 = (v35 + 8);
      v35 = v20;
      v36 = v3 + 32;
      a2 = MEMORY[0x277D84F90];
      do
      {
        v26 = v39;
        v27 = v22;
        v38(v8, v24, v39);
        sub_264E23DE8();
        (*v25)(v8, v26);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          a2 = sub_264DBC1A0(0, a2[2] + 1, 1, a2, &qword_27FFB2068, &qword_264E27080, MEMORY[0x277CC5770]);
        }

        v29 = a2[2];
        v28 = a2[3];
        if (v29 >= v28 >> 1)
        {
          a2 = sub_264DBC1A0(v28 > 1, v29 + 1, 1, a2, &qword_27FFB2068, &qword_264E27080, MEMORY[0x277CC5770]);
        }

        a2[2] = v29 + 1;
        (*(v3 + 32))(a2 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v29, v41, v40);
        v24 += v37;
        --v21;
        v22 = v27;
      }

      while (v21);

      v18 = v32;
    }

    else
    {

      a2 = MEMORY[0x277D84F90];
    }

    (*(v33 + 8))(v18, v34);
  }

  return a2;
}

uint64_t ModelProvider.refreshAndUploadLocalData(sinceDate:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_264DAD8CC, 0, 0);
}

uint64_t sub_264DAD8CC()
{
  v1 = sub_264E23ED8();
  v0[4] = v1;
  v2 = *(MEMORY[0x277CC5790] + 4);
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_264DAD974;
  v4 = v0[2];
  v5 = v0[3];

  return MEMORY[0x2821162C8](v4, v1);
}

uint64_t sub_264DAD974()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v7 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v4 = sub_264DADAF4;
  }

  else
  {
    v5 = *(v2 + 32);

    v4 = sub_264DADA90;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_264DADA90()
{
  v1 = *(v0 + 24);
  sub_264E23E18();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_264DADAF4()
{
  v1 = v0[4];

  v2 = v0[1];
  v3 = v0[6];

  return v2();
}

uint64_t sub_264DADB70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  v8 = sub_264E23EA8();
  v7[9] = v8;
  v9 = *(v8 - 8);
  v7[10] = v9;
  v10 = *(v9 + 64) + 15;
  v7[11] = swift_task_alloc();
  v11 = sub_264E23EC8();
  v7[12] = v11;
  v12 = *(v11 - 8);
  v7[13] = v12;
  v13 = *(v12 + 64) + 15;
  v7[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_264DADC98, 0, 0);
}

uint64_t sub_264DADC98()
{
  v1 = v0[14];
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[9];
  v6 = v0[6];
  v5 = v0[7];
  v8 = v0[4];
  v7 = v0[5];
  v9 = v0[3];
  v10 = sub_264E238E8();
  (*(*(v10 - 8) + 16))(v2, v9, v10);
  (*(v3 + 104))(v2, *MEMORY[0x277CC5838], v4);

  sub_264E23EB8();
  v11 = swift_task_alloc();
  v0[15] = v11;
  *v11 = v0;
  v11[1] = sub_264DADE08;
  v12 = v0[14];
  v13 = v0[8];
  v14 = v0[2];

  return sub_264DAB918(v12, v13, v14);
}

uint64_t sub_264DADE08()
{
  v2 = *(*v1 + 120);
  v5 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = sub_264DBD308;
  }

  else
  {
    v3 = sub_264DBD30C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

int64_t sub_264DADF4C(uint64_t a1)
{
  v3 = type metadata accessor for DetailChart.Hour(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v24[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2098, &qword_264E270C0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v24[-v10];
  v12 = *(type metadata accessor for DetailChart.Model(0) + 20);
  v13 = *(v1 + v12);
  v25 = a1;
  v14 = sub_264DA8FFC(sub_264DBCF90, v24, v13, type metadata accessor for DetailChart.Hour);
  if ((v15 & 1) == 0)
  {
    v20 = v14;
    v21 = *(a1 + *(v3 + 20));
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      if ((v20 & 0x8000000000000000) == 0)
      {
        goto LABEL_9;
      }
    }

    else
    {
      result = sub_264E15DF8(v13);
      v13 = result;
      if ((v20 & 0x8000000000000000) == 0)
      {
LABEL_9:
        if (v20 < v13[2])
        {
          v22 = v13 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v20;
          *(v22 + *(v3 + 20)) = v21 + *(v22 + *(v3 + 20));
LABEL_11:
          *(v1 + v12) = v13;
          return result;
        }

        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  MEMORY[0x28223BE20](v14);
  *&v24[-16] = a1;
  result = sub_264DA8FFC(sub_264DBCFC0, &v24[-32], v13, type metadata accessor for DetailChart.Hour);
  if (v17)
  {
    sub_264DBD27C(a1, v7, type metadata accessor for DetailChart.Hour);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_4:
      v19 = v13[2];
      v18 = v13[3];
      if (v19 >= v18 >> 1)
      {
        v13 = sub_264DBC1A0(v18 > 1, v19 + 1, 1, v13, &qword_27FFB1BC8, &unk_264E26650, type metadata accessor for DetailChart.Hour);
      }

      v13[2] = v19 + 1;
      result = sub_264DBD214(v7, v13 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v19, type metadata accessor for DetailChart.Hour);
      goto LABEL_11;
    }

LABEL_18:
    v13 = sub_264DBC1A0(0, v13[2] + 1, 1, v13, &qword_27FFB1BC8, &unk_264E26650, type metadata accessor for DetailChart.Hour);
    goto LABEL_4;
  }

  v23 = result;
  if (v13[2] < result)
  {
    __break(1u);
  }

  else if ((result & 0x8000000000000000) == 0)
  {
    sub_264DBD27C(a1, v11, type metadata accessor for DetailChart.Hour);
    return sub_264DBCCD4(v23, v23, v11);
  }

  __break(1u);
  return result;
}

int64_t sub_264DAE2D0(uint64_t a1)
{
  v3 = type metadata accessor for OverviewChart.Day(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v24[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2070, &qword_264E27088);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v24[-v10];
  v12 = *(type metadata accessor for OverviewChart.Model(0) + 20);
  v13 = *(v1 + v12);
  v25 = a1;
  v14 = sub_264DA8FFC(sub_264D915F8, v24, v13, type metadata accessor for OverviewChart.Day);
  if ((v15 & 1) == 0)
  {
    v20 = v14;
    v21 = *(a1 + *(v3 + 20));
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      if ((v20 & 0x8000000000000000) == 0)
      {
        goto LABEL_9;
      }
    }

    else
    {
      result = sub_264E15D94(v13);
      v13 = result;
      if ((v20 & 0x8000000000000000) == 0)
      {
LABEL_9:
        if (v20 < v13[2])
        {
          v22 = v13 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v20;
          *(v22 + *(v3 + 20)) = v21 + *(v22 + *(v3 + 20));
LABEL_11:
          *(v1 + v12) = v13;
          return result;
        }

        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  MEMORY[0x28223BE20](v14);
  *&v24[-16] = a1;
  result = sub_264DA8FFC(sub_264DBC744, &v24[-32], v13, type metadata accessor for OverviewChart.Day);
  if (v17)
  {
    sub_264DBD27C(a1, v7, type metadata accessor for OverviewChart.Day);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_4:
      v19 = v13[2];
      v18 = v13[3];
      if (v19 >= v18 >> 1)
      {
        v13 = sub_264DBC1A0(v18 > 1, v19 + 1, 1, v13, &qword_27FFB1BD0, &unk_264E27090, type metadata accessor for OverviewChart.Day);
      }

      v13[2] = v19 + 1;
      result = sub_264DBD214(v7, v13 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v19, type metadata accessor for OverviewChart.Day);
      goto LABEL_11;
    }

LABEL_18:
    v13 = sub_264DBC1A0(0, v13[2] + 1, 1, v13, &qword_27FFB1BD0, &unk_264E27090, type metadata accessor for OverviewChart.Day);
    goto LABEL_4;
  }

  v23 = result;
  if (v13[2] < result)
  {
    __break(1u);
  }

  else if ((result & 0x8000000000000000) == 0)
  {
    sub_264DBD27C(a1, v11, type metadata accessor for OverviewChart.Day);
    return sub_264DBCA74(v23, v23, v11);
  }

  __break(1u);
  return result;
}

BOOL sub_264DAE654(uint64_t a1, uint64_t a2, void (*a3)(void), unint64_t *a4, void (*a5)(uint64_t))
{
  a3(0);
  sub_264DBD13C(a4, a5);
  return (sub_264E25048() & 1) == 0;
}

uint64_t sub_264DAE6E4(int64_t a1)
{
  v157 = sub_264E23CB8();
  v162 = *(v157 - 8);
  v3 = *(v162 + 64);
  MEMORY[0x28223BE20](v157);
  v156 = &v138 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_264E23D18();
  v151 = *(v5 - 8);
  v6 = *(v151 + 64);
  MEMORY[0x28223BE20](v5);
  v147 = &v138 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v138 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB20B0, &unk_264E270E0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v150 = &v138 - v13;
  v155 = sub_264E238E8();
  v14 = *(v155 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v155);
  v160 = &v138 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163 = sub_264E23DB8();
  v17 = *(v163 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v163);
  v20 = &v138 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v161 = type metadata accessor for UsageDetailChart.HourlyUsage(0);
  v153 = *(v161 - 8);
  v21 = *(v153 + 64);
  MEMORY[0x28223BE20](v161);
  v159 = &v138 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v154 = &v138 - v24;
  v25 = *(type metadata accessor for UsageDetailChart.Model(0) + 20);
  v149 = v1;
  v148 = v25;
  v26 = *(v1 + v25);
  v165 = a1;
  v27 = 0;
  v28 = sub_264DA8FFC(sub_264DBD094, v164, v26, type metadata accessor for UsageDetailChart.HourlyUsage);
  v142 = v5;
  v152 = a1;
  if (v29)
  {
    MEMORY[0x28223BE20](v28);
    *(&v138 - 2) = a1;
    v30 = sub_264DA8FFC(sub_264DBD0B4, (&v138 - 4), v26, type metadata accessor for UsageDetailChart.HourlyUsage);
    v31 = a1;
    v32 = v30;
    v34 = v33;
    (*(v17 + 16))(v20, v31, v163);
    sub_264E23D98();
    sub_264E23D78();
    v36 = v35;
    v37 = *(v14 + 16);
    v38 = (v14 + 8);
    v39 = (v17 + 8);
    if ((v34 & 1) == 0)
    {
      v52 = v154;
      v53 = v160;
      v158 = v32;
      v54 = v155;
      v37(v154, v160, v155);
      v55 = MEMORY[0x277D84F90];
      v159 = sub_264DEB098(MEMORY[0x277D84F90]);
      v56 = sub_264DEB098(v55);
      (*v38)(v53, v54);
      (*v39)(v20, v163);
      v57 = v161;
      *(v52 + *(v161 + 20)) = v36;
      v48 = v158;
      *(v52 + *(v57 + 24)) = v159;
      *(v52 + *(v57 + 28)) = v56;
      if (*(v26 + 16) < v48)
      {
        __break(1u);
      }

      else if ((v48 & 0x8000000000000000) == 0)
      {
        v49 = v150;
        sub_264DBD214(v154, v150, type metadata accessor for UsageDetailChart.HourlyUsage);
        sub_264DBCBA4(v48, v48, v49);
        v5 = v142;
        goto LABEL_15;
      }

      __break(1u);
LABEL_94:
      __break(1u);
LABEL_95:
      __break(1u);
LABEL_96:
      __break(1u);
LABEL_97:
      result = sub_264E25498();
      __break(1u);
      return result;
    }

    v139 = 0;
    v41 = v159;
    v40 = v160;
    v42 = v155;
    v37(v159, v160, v155);
    v43 = MEMORY[0x277D84F90];
    v44 = sub_264DEB098(MEMORY[0x277D84F90]);
    v45 = sub_264DEB098(v43);
    (*v38)(v40, v42);
    (*v39)(v20, v163);
    v46 = v161;
    *(v41 + *(v161 + 20)) = v36;
    *(v41 + *(v46 + 24)) = v44;
    *(v41 + *(v46 + 28)) = v45;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_4;
    }
  }

  else
  {
    v49 = v28;
    sub_264E23D78();
    v36 = v50;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_88;
    }

    v48 = v49;
    if ((v49 & 0x8000000000000000) == 0)
    {
      goto LABEL_9;
    }

LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
  }

  v26 = sub_264DBC1A0(0, *(v26 + 16) + 1, 1, v26, &qword_27FFB1B58, &qword_264E265E0, type metadata accessor for UsageDetailChart.HourlyUsage);
LABEL_4:
  v5 = v142;
  v48 = *(v26 + 16);
  v47 = *(v26 + 24);
  v49 = v48 + 1;
  v27 = v139;
  if (v48 >= v47 >> 1)
  {
    v26 = sub_264DBC1A0(v47 > 1, v48 + 1, 1, v26, &qword_27FFB1B58, &qword_264E265E0, type metadata accessor for UsageDetailChart.HourlyUsage);
  }

  *(v26 + 16) = v49;
  sub_264DBD214(v159, v26 + ((*(v153 + 80) + 32) & ~*(v153 + 80)) + *(v153 + 72) * v48, type metadata accessor for UsageDetailChart.HourlyUsage);
  while (1)
  {
    *(v149 + v148) = v26;
LABEL_15:
    v139 = v27;
    v58 = sub_264E23DA8();
    v27 = v58;
    v59 = *(v58 + 16);
    v158 = v48;
    v163 = v59;
    if (v59)
    {
      v140 = 0;
      v60 = 0;
      v61 = *MEMORY[0x277CF9618];
      v159 = v58 + ((*(v151 + 80) + 32) & ~*(v151 + 80));
      v160 = v61;
      v155 = v151 + 16;
      v154 = *MEMORY[0x277CF9610];
      v150 = *MEMORY[0x277CF9620];
      v62 = (v151 + 8);
      while (1)
      {
        if (v60 >= v27[2])
        {
LABEL_85:
          __break(1u);
          goto LABEL_86;
        }

        (*(v151 + 16))(v10, v159 + *(v151 + 72) * v60, v5);
        sub_264E23CD8();
        v26 = sub_264E250E8();

        v63 = sub_264E25108();
        v65 = v64;
        v67 = sub_264E25108();
        v68 = v63;
        v49 = v66;
        if (v68 == v67 && v65 == v66)
        {
          break;
        }

        v69 = sub_264E25478();

        if (v69)
        {
          goto LABEL_22;
        }

        v70 = sub_264E25108();
        v72 = v71;
        v74 = sub_264E25108();
        v75 = v70;
        v49 = v73;
        if (v75 == v74 && v72 == v73)
        {
          break;
        }

        v76 = sub_264E25478();

        if (v76)
        {
          goto LABEL_22;
        }

        v77 = sub_264E25108();
        v49 = v78;

        if (v77 == sub_264E25108() && v49 == v79)
        {

LABEL_41:
          (*v62)(v10, v5);
LABEL_23:

          goto LABEL_24;
        }

        v80 = sub_264E25478();

        if (v80)
        {
          goto LABEL_41;
        }

        sub_264E23CC8();
        if (v81 <= 0.0)
        {
          goto LABEL_41;
        }

        v146 = sub_264E23CD8();
        v83 = v82;
        sub_264E23CC8();
        v36 = v84;
        v85 = *(v149 + v148);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v85 = sub_264E15DD0(v85);
        }

        if (v48 >= v85[2])
        {
          goto LABEL_94;
        }

        v86 = (*(v153 + 80) + 32) & ~*(v153 + 80);
        v143 = v85;
        v87 = v85 + v86 + *(v153 + 72) * v48;
        v88 = *(v161 + 24);
        sub_264D91628(v140);
        v89 = *&v87[v88];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v166 = *&v87[v88];
        v91 = v166;
        *&v87[v88] = 0x8000000000000000;
        v145 = v83;
        v92 = sub_264D9D57C(v146, v83);
        v93 = *(v91 + 16);
        LODWORD(v144) = v94;
        v95 = (v94 & 1) == 0;
        v96 = v93 + v95;
        if (__OFADD__(v93, v95))
        {
          goto LABEL_95;
        }

        if (*(v91 + 24) >= v96)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_264DA0FDC();
          }

          v99 = v144;
        }

        else
        {
          sub_264D9E134(v96, isUniquelyReferenced_nonNull_native);
          v97 = sub_264D9D57C(v146, v145);
          v99 = v144;
          if ((v144 & 1) != (v98 & 1))
          {
            goto LABEL_97;
          }

          v92 = v97;
        }

        v100 = *&v87[v88];
        *&v87[v88] = v166;

        v49 = *&v87[v88];
        if (v99)
        {

          v5 = v142;
          v48 = v158;
        }

        else
        {
          *(v49 + 8 * (v92 >> 6) + 64) |= 1 << v92;
          v101 = (*(v49 + 48) + 16 * v92);
          v102 = v145;
          *v101 = v146;
          v101[1] = v102;
          *(*(v49 + 56) + 8 * v92) = 0;
          v103 = *(v49 + 16);
          v104 = __OFADD__(v103, 1);
          v105 = v103 + 1;
          v5 = v142;
          v48 = v158;
          if (v104)
          {
            goto LABEL_96;
          }

          *(v49 + 16) = v105;
        }

        *(*(v49 + 56) + 8 * v92) = v36 + *(*(v49 + 56) + 8 * v92);

        (*v62)(v10, v5);
        *(v149 + v148) = v143;
        v140 = sub_264DBD2E4;
LABEL_24:
        if (v163 == ++v60)
        {
          goto LABEL_51;
        }
      }

LABEL_22:
      (*v62)(v10, v5);

      goto LABEL_23;
    }

    v140 = 0;
LABEL_51:

    v27 = *(v149 + v148);
    if (v48 < v27[2])
    {
      break;
    }

LABEL_87:
    __break(1u);
LABEL_88:
    v26 = sub_264E15DD0(v26);
    v48 = v49;
    if (v49 < 0)
    {
      goto LABEL_89;
    }

LABEL_9:
    if (v48 >= *(v26 + 16))
    {
      goto LABEL_90;
    }

    v51 = v26 + ((*(v153 + 80) + 32) & ~*(v153 + 80)) + *(v153 + 72) * v48;
    *(v51 + *(v161 + 20)) = v36 + *(v51 + *(v161 + 20));
  }

  v49 = (*(v153 + 80) + 32) & ~*(v153 + 80);
  v106 = *(v153 + 72) * v48;
  v10 = v161;
  if (*(*(v27 + v49 + v106 + *(v161 + 24)) + 16))
  {
    v107 = v140;
    return sub_264D91628(v107);
  }

  v108 = sub_264E23DA8();
  v146 = *(v108 + 16);
  if (v146)
  {
    v152 = v106;
    v153 = v49;
    v26 = 0;
    v109 = 0;
    v145 = v108 + ((*(v151 + 80) + 32) & ~*(v151 + 80));
    v144 = v151 + 16;
    v143 = (v151 + 8);
    v154 = v162 + 8;
    v155 = v162 + 16;
    v141 = v108;
    while (v109 < *(v108 + 16))
    {
      v49 = v151;
      v110 = *(v151 + 72);
      v150 = v109;
      v111 = v147;
      (*(v151 + 16))(v147, v145 + v110 * v109, v5);
      v112 = sub_264E23D08();
      (*(v49 + 8))(v111, v5);
      v163 = *(v112 + 16);
      if (v163)
      {
        v5 = 0;
        v113 = *(v162 + 80);
        v159 = v112;
        v160 = (v112 + ((v113 + 32) & ~v113));
        while (v5 < *(v112 + 16))
        {
          v114 = v162;
          v116 = v156;
          v115 = v157;
          (*(v162 + 16))(v156, &v160[*(v162 + 72) * v5], v157);
          v117 = sub_264E23C88();
          v119 = v118;
          sub_264E23C68();
          v36 = v120;
          (*(v114 + 8))(v116, v115);
          v121 = v27;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v121 = sub_264E15DD0(v27);
          }

          v49 = *(v121 + 16);
          sub_264D91628(v26);
          if (v48 >= v49)
          {
            goto LABEL_82;
          }

          v27 = v121;
          v122 = v121 + v153 + v152;
          v10 = *(v10 + 28);
          v123 = *(v122 + v10);
          v124 = swift_isUniquelyReferenced_nonNull_native();
          v166 = *(v122 + v10);
          v125 = v166;
          *(v122 + v10) = 0x8000000000000000;
          v26 = sub_264D9D57C(v117, v119);
          v127 = *(v125 + 16);
          v128 = (v126 & 1) == 0;
          v129 = v127 + v128;
          if (__OFADD__(v127, v128))
          {
            goto LABEL_83;
          }

          v49 = v126;
          if (*(v125 + 24) >= v129)
          {
            if ((v124 & 1) == 0)
            {
              sub_264DA0FDC();
            }
          }

          else
          {
            sub_264D9E134(v129, v124);
            v130 = sub_264D9D57C(v117, v119);
            if ((v49 & 1) != (v131 & 1))
            {
              goto LABEL_97;
            }

            v26 = v130;
          }

          v132 = *(v122 + v10);
          *(v122 + v10) = v166;

          v133 = *(v122 + v10);
          if (v49)
          {

            v10 = v161;
            v48 = v158;
          }

          else
          {
            v133[(v26 >> 6) + 8] |= 1 << v26;
            v134 = (v133[6] + 16 * v26);
            *v134 = v117;
            v134[1] = v119;
            *(v133[7] + 8 * v26) = 0;
            v135 = v133[2];
            v104 = __OFADD__(v135, 1);
            v136 = v135 + 1;
            v10 = v161;
            v48 = v158;
            if (v104)
            {
              goto LABEL_84;
            }

            v133[2] = v136;
          }

          ++v5;
          *(v133[7] + 8 * v26) = v36 + *(v133[7] + 8 * v26);
          v26 = sub_264DBD2E4;
          v112 = v159;
          if (v163 == v5)
          {

            *(v149 + v148) = v27;
            v26 = sub_264DBD2E4;
            v5 = v142;
            goto LABEL_57;
          }
        }

        __break(1u);
LABEL_82:
        __break(1u);
LABEL_83:
        __break(1u);
LABEL_84:
        __break(1u);
        goto LABEL_85;
      }

LABEL_57:
      v109 = v150 + 1;
      v108 = v141;
      if (v150 + 1 == v146)
      {

        goto LABEL_79;
      }
    }

LABEL_86:
    __break(1u);
    goto LABEL_87;
  }

  v26 = 0;
LABEL_79:
  sub_264D91628(v140);
  v107 = v26;
  return sub_264D91628(v107);
}

uint64_t sub_264DAF770()
{
  v0 = sub_264E238E8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264E23D98();
  v5 = sub_264E23878();
  (*(v1 + 8))(v4, v0);
  return v5 & 1;
}

BOOL sub_264DAF85C()
{
  v0 = sub_264E238E8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264E23D98();
  sub_264DBD13C(&qword_27FFB20A0, MEMORY[0x277CC88A8]);
  v5 = sub_264E25048();
  (*(v1 + 8))(v4, v0);
  return (v5 & 1) == 0;
}

uint64_t sub_264DAF98C(uint64_t a1)
{
  v2 = sub_264E23D18();
  v131 = *(v2 - 8);
  v132 = v2;
  v3 = *(v131 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v111 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB20C0, &qword_264E270F8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v114 = &v111 - v8;
  v125 = sub_264E23DB8();
  v117 = *(v125 - 8);
  v9 = *(v117 + 64);
  MEMORY[0x28223BE20](v125);
  v129 = &v111 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for UsageOverviewChart.Day(0);
  v120 = *(v11 - 8);
  v121 = v11;
  v12 = *(v120 + 64);
  MEMORY[0x28223BE20](v11);
  v115 = (&v111 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14);
  v116 = &v111 - v15;
  v16 = sub_264E238E8();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v111 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_264E23AA8();
  v128 = *(v21 - 1);
  v22 = *(v128 + 64);
  MEMORY[0x28223BE20](v21);
  v24 = &v111 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v111 - v26;
  v28 = type metadata accessor for UsageOverviewChart.Model(0);
  v29 = *(v28 + 24);
  v130 = a1;
  sub_264E23D98();
  _s16ScreenTimeUICore11DetailChartV4HourV2id10Foundation4DateVvg_0();
  (*(v17 + 8))(v20, v16);
  v30 = v127;
  v31 = v128;
  sub_264E23AF8();
  v32 = v21;
  v123 = *(v31 + 8);
  v124 = v31 + 8;
  v123(v24, v21);
  v126 = *(v28 + 20);
  v33 = *(v30 + v126);
  v134 = v27;
  v34 = sub_264DA8FFC(sub_264DBD2EC, v133, v33, type metadata accessor for UsageOverviewChart.Day);
  v119 = v21;
  v118 = v27;
  if ((v35 & 1) == 0)
  {
    v122 = v34;
    sub_264E23D78();
    v45 = v55;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_51;
    }

    v56 = v122;
    if ((v122 & 0x8000000000000000) == 0)
    {
      goto LABEL_9;
    }

LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v36 = v27;
  MEMORY[0x28223BE20](v34);
  *(&v111 - 2) = v27;
  v122 = sub_264DA8FFC(sub_264DBD1E4, (&v111 - 4), v33, type metadata accessor for UsageOverviewChart.Day);
  v38 = v37;
  v39 = v117 + 16;
  v40 = v125;
  (*(v117 + 16))(v129, v130, v125);
  v41 = *(v31 + 16);
  v41(v24, v36, v32);
  v42 = (v39 - 8);
  if (v38)
  {
    v21 = v115;
    v41(v115, v24, v32);
    v43 = v129;
    sub_264E23D78();
    v45 = v44;
    v46 = MEMORY[0x277D84F90];
    v128 = sub_264DEB098(MEMORY[0x277D84F90]);
    v47 = v121;
    v48 = v21 + v121[7];
    sub_264E23BF8();
    v49 = v47[6];
    sub_264DEB098(v46);
    v123(v24, v32);
    (*v42)(v43, v125);

    *(v21 + v47[5]) = v45;
    *(v21 + v49) = v128;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_4;
  }

  v58 = v116;
  v41(v116, v24, v32);
  v59 = v129;
  sub_264E23D78();
  v45 = v60;
  v61 = MEMORY[0x277D84F90];
  v128 = sub_264DEB098(MEMORY[0x277D84F90]);
  v62 = v121;
  v63 = v58 + v121[7];
  sub_264E23BF8();
  v117 = v62[6];
  sub_264DEB098(v61);
  v123(v24, v32);
  (*v42)(v59, v40);

  *(v58 + v62[5]) = v45;
  *(v58 + v117) = v128;
  v21 = v122;
  if (v33[2] < v122)
  {
    __break(1u);
  }

  else if ((v122 & 0x8000000000000000) == 0)
  {
    v64 = v114;
    sub_264DBD214(v116, v114, type metadata accessor for UsageOverviewChart.Day);
    sub_264DBC944(v21, v21, v64);
    while (1)
    {
      v65 = sub_264E23DA8();
      v33 = v65;
      v66 = *(v65 + 16);
      if (!v66)
      {
        v125 = 0;
LABEL_49:

        v123(v118, v119);
        return sub_264D91628(v125);
      }

      v125 = 0;
      v67 = 0;
      v68 = *MEMORY[0x277CF9618];
      v129 = (v65 + ((*(v131 + 80) + 32) & ~*(v131 + 80)));
      v130 = v68;
      v128 = *MEMORY[0x277CF9610];
      v117 = *MEMORY[0x277CF9620];
      v69 = (v131 + 8);
      while (v67 < v33[2])
      {
        (*(v131 + 16))(v5, &v129[*(v131 + 72) * v67], v132);
        sub_264E23CD8();
        v21 = sub_264E250E8();

        v70 = sub_264E25108();
        v72 = v71;
        if (v70 == sub_264E25108() && v72 == v73)
        {
          goto LABEL_20;
        }

        v74 = sub_264E25478();

        if (v74)
        {
          goto LABEL_22;
        }

        v75 = sub_264E25108();
        v77 = v76;
        if (v75 == sub_264E25108() && v77 == v78)
        {
LABEL_20:

LABEL_22:
          (*v69)(v5, v132);

          goto LABEL_23;
        }

        v79 = sub_264E25478();

        if (v79)
        {
          goto LABEL_22;
        }

        v80 = sub_264E25108();
        v82 = v81;

        if (v80 == sub_264E25108() && v82 == v83)
        {

LABEL_33:
          (*v69)(v5, v132);
LABEL_23:

          goto LABEL_24;
        }

        v84 = sub_264E25478();

        if (v84)
        {
          goto LABEL_33;
        }

        v115 = sub_264E23CD8();
        v86 = v85;
        sub_264E23CC8();
        v45 = v87;
        v88 = *(v127 + v126);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v88 = sub_264E15D6C(v88);
        }

        if (v122 >= v88[2])
        {
          goto LABEL_54;
        }

        v89 = (*(v120 + 80) + 32) & ~*(v120 + 80);
        v112 = v88;
        v90 = v88 + v89 + *(v120 + 72) * v122;
        v116 = v86;
        v91 = v121[6];
        sub_264D91628(v125);
        v92 = *(v90 + v91);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v135 = *(v90 + v91);
        v93 = v135;
        v114 = v90;
        *(v90 + v91) = 0x8000000000000000;
        v94 = sub_264D9D57C(v115, v116);
        v95 = *(v93 + 16);
        LODWORD(v125) = v96;
        v97 = (v96 & 1) == 0;
        v98 = v95 + v97;
        if (__OFADD__(v95, v97))
        {
          goto LABEL_55;
        }

        if (*(v93 + 24) >= v98)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_264DA0FDC();
          }
        }

        else
        {
          sub_264D9E134(v98, isUniquelyReferenced_nonNull_native);
          v99 = sub_264D9D57C(v115, v116);
          if ((v125 & 1) != (v100 & 1))
          {
            goto LABEL_60;
          }

          v94 = v99;
        }

        v101 = v114;
        v102 = *(v114 + v91);
        *(v114 + v91) = v135;

        v103 = *(v101 + v91);
        if (v125)
        {
        }

        else
        {
          v103[(v94 >> 6) + 8] |= 1 << v94;
          v104 = (v103[6] + 16 * v94);
          v105 = v116;
          *v104 = v115;
          v104[1] = v105;
          *(v103[7] + 8 * v94) = 0;
          v106 = v103[2];
          v107 = __OFADD__(v106, 1);
          v108 = v106 + 1;
          if (v107)
          {
            goto LABEL_59;
          }

          v103[2] = v108;
        }

        *(v103[7] + 8 * v94) = v45 + *(v103[7] + 8 * v94);

        (*v69)(v5, v132);
        *(v127 + v126) = v112;
        v125 = sub_264DBD2E4;
LABEL_24:
        if (v66 == ++v67)
        {
          goto LABEL_49;
        }
      }

      __break(1u);
LABEL_51:
      v33 = sub_264E15D6C(v33);
      v56 = v122;
      if (v122 < 0)
      {
        goto LABEL_52;
      }

LABEL_9:
      if (v56 < v33[2])
      {
        v57 = v33 + ((*(v120 + 80) + 32) & ~*(v120 + 80)) + *(v120 + 72) * v56;
        *(v57 + v121[5]) = v45 + *(v57 + v121[5]);
        goto LABEL_11;
      }

LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      v33 = sub_264DBC1A0(0, v33[2] + 1, 1, v33, &qword_27FFB1BF8, &qword_264E27100, type metadata accessor for UsageOverviewChart.Day);
LABEL_4:
      v51 = v33[2];
      v50 = v33[3];
      v52 = v51 + 1;
      if (v51 >= v50 >> 1)
      {
        v110 = v33[2];
        v33 = sub_264DBC1A0(v50 > 1, v51 + 1, 1, v33, &qword_27FFB1BF8, &qword_264E27100, type metadata accessor for UsageOverviewChart.Day);
        v51 = v110;
      }

      v33[2] = v52;
      v53 = v33 + ((*(v120 + 80) + 32) & ~*(v120 + 80));
      v54 = *(v120 + 72);
      v122 = v51;
      sub_264DBD214(v21, &v53[v54 * v51], type metadata accessor for UsageOverviewChart.Day);
LABEL_11:
      *(v127 + v126) = v33;
    }
  }

  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  result = sub_264E25498();
  __break(1u);
  return result;
}

void sub_264DB0668(uint64_t a1)
{
  v164 = a1;
  v149 = sub_264E23B98();
  v2 = *(v149 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v149);
  v148 = &v113 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = sub_264E23B78();
  v5 = *(v147 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v147);
  v146 = &v113 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = sub_264E23B38();
  v170 = *(v145 - 8);
  v8 = *(v170 + 64);
  MEMORY[0x28223BE20](v145);
  v144 = &v113 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1CE0, &unk_264E26AE0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v143 = &v113 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1C50, &unk_264E267D0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v142 = &v113 - v15;
  v141 = sub_264E23928();
  v169 = *(v141 - 8);
  v16 = *(v169 + 64);
  MEMORY[0x28223BE20](v141);
  v140 = &v113 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1858, &unk_264E26200);
  v18 = *(*(v160 - 8) + 64);
  MEMORY[0x28223BE20](v160);
  v173 = &v113 - v19;
  v128 = sub_264E23C18();
  v20 = *(v128 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v128);
  v127 = &v113 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1860, &qword_264E267E0);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v118 = &v113 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = &v113 - v27;
  MEMORY[0x28223BE20](v29);
  v31 = &v113 - v30;
  MEMORY[0x28223BE20](v32);
  v34 = &v113 - v33;
  v35 = sub_264E23AA8();
  v122 = *(v35 - 8);
  v36 = *(v122 + 64);
  MEMORY[0x28223BE20](v35);
  v119 = &v113 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v166 = &v113 - v39;
  MEMORY[0x28223BE20](v40);
  v172 = &v113 - v41;
  v162 = sub_264E238E8();
  v121 = *(v162 - 8);
  v42 = *(v121 + 64);
  MEMORY[0x28223BE20](v162);
  v116 = &v113 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44);
  v159 = &v113 - v45;
  v161 = type metadata accessor for UsageOverviewChart.Model(0);
  v163 = *(v161 - 8);
  v46 = *(v163 + 64);
  MEMORY[0x28223BE20](v161);
  v115 = &v113 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v48);
  v117 = &v113 - v49;
  MEMORY[0x28223BE20](v50);
  v52 = &v113 - v51;
  v120 = v1;
  v53 = *v1;
  v158 = *(*v1 + 16);
  if (!v158)
  {
LABEL_16:
    v90 = *(type metadata accessor for UsageOverviewTabView.Model(0) + 20);
    v91 = v116;
    sub_264E23D98();
    v92 = v166;
    _s16ScreenTimeUICore11DetailChartV4HourV2id10Foundation4DateVvg_0();
    (*(v121 + 8))(v91, v162);
    v93 = v120;
    v94 = v118;
    Calendar.startOfWeek(containing:)(v92, v118);
    v95 = v122;
    v96 = *(v122 + 8);
    v96(v92, v35);
    if ((*(v95 + 48))(v94, 1, v35) == 1)
    {
      sub_264D817BC(v94, &qword_27FFB1860, &qword_264E267E0);
      if (qword_27FFB1688 != -1)
      {
LABEL_32:
        swift_once();
      }

      v97 = sub_264E23FC8();
      __swift_project_value_buffer(v97, qword_27FFB2028);
      v98 = sub_264E23FA8();
      v99 = sub_264E252A8();
      if (os_log_type_enabled(v98, v99))
      {
        v100 = swift_slowAlloc();
        *v100 = 0;
        _os_log_impl(&dword_264D7D000, v98, v99, "Could not compute start of week; skipping activity segment", v100, 2u);
        MEMORY[0x26674FCD0](v100, -1, -1);
      }
    }

    else
    {
      v101 = *(v95 + 32);
      v102 = v95;
      v103 = v53;
      v104 = v102;
      v105 = v119;
      v101(v119, v94, v35);
      v106 = v117;
      (*(v104 + 16))(v117, v105, v35);
      v107 = v161;
      v108 = *(v161 + 24);
      v109 = sub_264E23C38();
      (*(*(v109 - 8) + 16))(v106 + v108, &v93[v90], v109);
      *(v106 + *(v107 + 28)) = 3;
      *(v106 + *(v107 + 20)) = MEMORY[0x277D84F90];
      sub_264DAF98C(v164);
      v110 = v115;
      sub_264DBD27C(v106, v115, type metadata accessor for UsageOverviewChart.Model);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v103 = sub_264DBC1A0(0, v103[2] + 1, 1, v103, &qword_27FFB1B68, &qword_264E265F0, type metadata accessor for UsageOverviewChart.Model);
      }

      v112 = v103[2];
      v111 = v103[3];
      if (v112 >= v111 >> 1)
      {
        v103 = sub_264DBC1A0(v111 > 1, v112 + 1, 1, v103, &qword_27FFB1B68, &qword_264E265F0, type metadata accessor for UsageOverviewChart.Model);
      }

      sub_264DBD184(v117, type metadata accessor for UsageOverviewChart.Model);
      v96(v119, v35);
      v103[2] = v112 + 1;
      sub_264DBD214(v110, v103 + ((*(v163 + 80) + 32) & ~*(v163 + 80)) + *(v163 + 72) * v112, type metadata accessor for UsageOverviewChart.Model);
      *v93 = v103;
    }

    return;
  }

  v54 = 0;
  v114 = (*(v163 + 80) + 32) & ~*(v163 + 80);
  v153 = v53 + v114;
  v152 = (v121 + 8);
  v171 = (v122 + 8);
  v126 = *MEMORY[0x277CC99B8];
  v125 = (v20 + 104);
  v124 = (v20 + 8);
  v139 = (v170 + 104);
  v138 = (v5 + 104);
  v137 = *MEMORY[0x277CC9878];
  v136 = (v2 + 104);
  v135 = (v2 + 8);
  v134 = *MEMORY[0x277CC98F0];
  v133 = (v5 + 8);
  v132 = (v170 + 8);
  v131 = *MEMORY[0x277CC9900];
  v130 = (v169 + 8);
  v170 = v122 + 16;
  v165 = (v122 + 56);
  v151 = (v122 + 48);
  v123 = (v122 + 32);
  v156 = v28;
  v157 = v53;
  v154 = v34;
  v155 = v31;
  v129 = v35;
  while (1)
  {
    if (v54 >= v53[2])
    {
      __break(1u);
      goto LABEL_32;
    }

    v56 = *(v163 + 72);
    v169 = v54;
    v150 = v56 * v54;
    sub_264DBD27C(&v153[v56 * v54], v52, type metadata accessor for UsageOverviewChart.Model);
    v57 = v159;
    sub_264E23D98();
    v58 = v172;
    _s16ScreenTimeUICore11DetailChartV4HourV2id10Foundation4DateVvg_0();
    (*v152)(v57, v162);
    v59 = *(v161 + 24);
    v60 = v166;
    sub_264E23AF8();
    v61 = sub_264E23A78();
    v168 = *v171;
    v168(v60, v35);
    v62 = v170 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    if ((v61 & 1) == 0)
    {
      goto LABEL_10;
    }

    v63 = v127;
    v64 = v128;
    (*v125)(v127, v126, v128);
    v65 = sub_264E23C28();
    (*v124)(v63, v64);
    if (v65 == sub_264E23B18())
    {
      v66 = *v170;
      v67 = v154;
      (*v170)(v154, v58, v35);
      (*v165)(v67, 0, 1, v35);
    }

    else
    {
LABEL_10:
      v68 = sub_264E23C38();
      (*(*(v68 - 8) + 56))(v142, 1, 1, v68);
      v69 = sub_264E23C48();
      v70 = *(*(v69 - 8) + 56);
      v167 = v62;
      v70(v143, 1, 1, v69);
      sub_264E23B18();
      v71 = v140;
      sub_264E23918();
      v72 = v144;
      v73 = v145;
      (*v139)(v144, v137, v145);
      v74 = v146;
      v75 = v147;
      (*v138)(v146, v134, v147);
      v76 = v148;
      v77 = v149;
      (*v136)(v148, v131, v149);
      v67 = v154;
      sub_264E23C08();
      v78 = v76;
      v35 = v129;
      (*v135)(v78, v77);
      (*v133)(v74, v75);
      (*v132)(v72, v73);
      (*v130)(v71, v141);
      v66 = *v170;
    }

    v79 = v155;
    v66(v155, v52, v35);
    (*v165)(v79, 0, 1, v35);
    v80 = *(v160 + 48);
    v81 = v173;
    sub_264D93A14(v67, v173);
    sub_264D93A14(v79, v81 + v80);
    v82 = *v151;
    v83 = (*v151)(v81, 1, v35);
    v84 = v156;
    if (v83 == 1)
    {
      break;
    }

    v85 = v173;
    sub_264D93A14(v173, v156);
    v86 = v82(v85 + v80, 1, v35);
    v53 = v157;
    if (v86 == 1)
    {
      sub_264D817BC(v79, &qword_27FFB1860, &qword_264E267E0);
      sub_264D817BC(v67, &qword_27FFB1860, &qword_264E267E0);
      v87 = v168;
      v168(v172, v35);
      sub_264DBD184(v52, type metadata accessor for UsageOverviewChart.Model);
      v87(v84, v35);
      goto LABEL_4;
    }

    v88 = v166;
    (*v123)(v166, v173 + v80, v35);
    sub_264DBD13C(&qword_27FFB1868, MEMORY[0x277CC9578]);
    LODWORD(v167) = sub_264E25068();
    v89 = v168;
    v168(v88, v35);
    sub_264D817BC(v79, &qword_27FFB1860, &qword_264E267E0);
    sub_264D817BC(v67, &qword_27FFB1860, &qword_264E267E0);
    v89(v172, v35);
    sub_264DBD184(v52, type metadata accessor for UsageOverviewChart.Model);
    v89(v84, v35);
    sub_264D817BC(v173, &qword_27FFB1860, &qword_264E267E0);
    if (v167)
    {
      goto LABEL_27;
    }

LABEL_5:
    v54 = v169 + 1;
    if (v158 == v169 + 1)
    {
      goto LABEL_16;
    }
  }

  sub_264D817BC(v79, &qword_27FFB1860, &qword_264E267E0);
  sub_264D817BC(v67, &qword_27FFB1860, &qword_264E267E0);
  v168(v172, v35);
  sub_264DBD184(v52, type metadata accessor for UsageOverviewChart.Model);
  v55 = v82(v173 + v80, 1, v35);
  v53 = v157;
  if (v55 != 1)
  {
LABEL_4:
    sub_264D817BC(v173, &qword_27FFB1858, &unk_264E26200);
    goto LABEL_5;
  }

  sub_264D817BC(v173, &qword_27FFB1860, &qword_264E267E0);
LABEL_27:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v53 = sub_264E15D80(v53);
  }

  if (v169 >= v53[2])
  {
    __break(1u);
  }

  else
  {
    sub_264DAF98C(v164);
    *v120 = v53;
  }
}

size_t sub_264DB1A1C(int64_t a1)
{
  v55 = a1;
  v58 = sub_264E23AA8();
  v4 = *(v58 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v58);
  v46 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v48 = &v43 - v8;
  MEMORY[0x28223BE20](v9);
  v51 = &v43 - v10;
  v50 = sub_264E238E8();
  v11 = *(v50 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v50);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for UsageDetailChart.Model(0);
  v16 = *(v15 - 8);
  v52 = v15;
  v53 = v16;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v45 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v44 = &v43 - v20;
  MEMORY[0x28223BE20](v21);
  v23 = &v43 - v22;
  v24 = 0;
  v47 = v1;
  v56 = *v1;
  v54 = v56[2];
  v49 = (v11 + 8);
  v43 = v4;
  v57 = v4 + 8;
  v25 = (v4 + 8);
  do
  {
    if (v54 == v24)
    {
      v32 = *(type metadata accessor for UsageDetailTabView.Model(0) + 20);
      v33 = v55;
      sub_264E23D98();
      v34 = v51;
      _s16ScreenTimeUICore11DetailChartV4HourV2id10Foundation4DateVvg_0();
      (*v49)(v14, v50);
      v3 = v46;
      v23 = v47;
      sub_264E23AF8();
      v35 = v43;
      v2 = *(v43 + 8);
      v36 = v34;
      v37 = v58;
      v2(v36, v58);
      v14 = v44;
      (*(v35 + 16))(v44, v3, v37);
      v38 = v52;
      v39 = v52[6];
      v40 = sub_264E23C38();
      (*(*(v40 - 8) + 16))(&v14[v39], &v23[v32], v40);
      *&v14[v38[7]] = 0x40BC200000000000;
      *&v14[v38[8]] = 3;
      *&v14[v38[5]] = MEMORY[0x277D84F90];
      sub_264DAE6E4(v33);
      v11 = v45;
      sub_264DBD27C(v14, v45, type metadata accessor for UsageDetailChart.Model);
      v25 = v56;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
LABEL_10:
        v42 = v25[2];
        v41 = v25[3];
        if (v42 >= v41 >> 1)
        {
          v25 = sub_264DBC1A0(v41 > 1, v42 + 1, 1, v25, &qword_27FFB1B60, &qword_264E265E8, type metadata accessor for UsageDetailChart.Model);
        }

        sub_264DBD184(v14, type metadata accessor for UsageDetailChart.Model);
        v2(v3, v58);
        v25[2] = (v42 + 1);
        result = sub_264DBD214(v11, v25 + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + *(v53 + 72) * v42, type metadata accessor for UsageDetailChart.Model);
        goto LABEL_13;
      }

LABEL_15:
      v25 = sub_264DBC1A0(0, v25[2] + 1, 1, v25, &qword_27FFB1B60, &qword_264E265E8, type metadata accessor for UsageDetailChart.Model);
      goto LABEL_10;
    }

    if (v24 >= v56[2])
    {
      __break(1u);
      goto LABEL_15;
    }

    v3 = v24 + 1;
    v11 = (*(v53 + 80) + 32) & ~*(v53 + 80);
    sub_264DBD27C(v56 + v11 + *(v53 + 72) * v24, v23, type metadata accessor for UsageDetailChart.Model);
    sub_264E23D98();
    v2 = v51;
    _s16ScreenTimeUICore11DetailChartV4HourV2id10Foundation4DateVvg_0();
    (*v49)(v14, v50);
    v26 = &v23[v52[6]];
    v27 = v48;
    sub_264E23AF8();
    LOBYTE(v26) = sub_264E23A78();
    v28 = *v25;
    v29 = v27;
    v30 = v58;
    (*v25)(v29, v58);
    v28(v2, v30);
    sub_264DBD184(v23, type metadata accessor for UsageDetailChart.Model);
    v24 = v3;
  }

  while ((v26 & 1) == 0);
  v25 = v56;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_264E15DE4(v25);
    v25 = result;
  }

  if (v3 - 1 < v25[2])
  {
    result = sub_264DAE6E4(v55);
    v23 = v47;
LABEL_13:
    *v23 = v25;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_264DB203C(uint64_t a1)
{
  v2 = v1;
  v143 = sub_264E23CB8();
  v150 = *(v143 - 8);
  v4 = *(v150 + 64);
  MEMORY[0x28223BE20](v143);
  v142 = &v128 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_264E23D18();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v134 = &v128 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v128 - v11;
  v13 = sub_264E238E8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v153 = &v128 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v154 = &v128 - v18;
  MEMORY[0x28223BE20](v19);
  v140 = &v128 - v20;
  MEMORY[0x28223BE20](v21);
  v23 = &v128 - v22;
  sub_264E23D78();
  v25 = v24;
  sub_264E23D98();
  sub_264DFC320(v25);
  v137 = v14;
  v146 = *(v14 + 8);
  v147 = v13;
  v146(v23, v13);
  v26 = sub_264E23DA8();
  v27 = *(v26 + 16);
  v138 = v1;
  v144 = v14 + 8;
  v145 = a1;
  v135 = v7;
  if (v27)
  {
    v139 = v23;
    v28 = *MEMORY[0x277CF9618];
    v30 = *(v7 + 16);
    v29 = v7 + 16;
    v151 = v30;
    v152 = v28;
    v31 = (*(v29 + 64) + 32) & ~*(v29 + 64);
    v136 = v26;
    v32 = v26 + v31;
    v149 = *(v29 + 56);
    v148 = *MEMORY[0x277CF9610];
    v141 = *MEMORY[0x277CF9620];
    v33 = (v29 - 8);
    while (1)
    {
      v151(v12, v32, v6);
      v34 = v12;
      sub_264E23CD8();
      v35 = sub_264E250E8();

      v36 = sub_264E25108();
      v38 = v37;
      if (v36 == sub_264E25108() && v38 == v39)
      {
        break;
      }

      v41 = sub_264E25478();

      if (v41)
      {
        goto LABEL_11;
      }

      v42 = sub_264E25108();
      v44 = v43;
      if (v42 == sub_264E25108() && v44 == v45)
      {
        break;
      }

      v46 = sub_264E25478();

      if (v46)
      {
        goto LABEL_11;
      }

      v47 = sub_264E25108();
      v49 = v48;

      if (v47 == sub_264E25108() && v49 == v50)
      {
      }

      else
      {
        v51 = sub_264E25478();

        if ((v51 & 1) == 0)
        {
          v133 = objc_opt_self();
          sub_264E23CD8();
          v52 = sub_264E250E8();

          v53 = [v133 shortLocalizedNameForIdentifier_];

          v131 = sub_264E25108();
          v133 = v54;

          v132 = v34;
          sub_264E23CC8();
          v56 = v55;
          v57 = v140;
          sub_264E23D98();
          if (v56 <= 0.0)
          {

            v146(v57, v147);
            v12 = v132;
            (*v33)(v132, v6);
          }

          else
          {
            v58 = v133;
            v59 = *(v138 + 8);
            if (*(v59 + 16) && (v60 = sub_264D9D6C8(v140), (v61 & 1) != 0))
            {
              v156 = *(*(v59 + 56) + 8 * v60);
            }

            else
            {
              v156 = sub_264DEB098(MEMORY[0x277D84F90]);
            }

            sub_264DFC630(v131, v58, v56);

            v62 = v156;
            v63 = v138;
            v64 = *(v138 + 8);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v155 = *(v63 + 8);
            v66 = v62;
            v67 = v140;
            sub_264DCD4E4(v66, v140, isUniquelyReferenced_nonNull_native);

            *(v63 + 8) = v155;
            v146(v67, v147);
            v12 = v34;
            (*v33)(v34, v6);
          }

          goto LABEL_13;
        }
      }

      v12 = v34;
      (*v33)(v34, v6);
LABEL_12:

LABEL_13:
      v32 += v149;
      if (!--v27)
      {

        v2 = v138;
        v23 = v139;
        v7 = v135;
        goto LABEL_29;
      }
    }

LABEL_11:
    v12 = v34;
    (*v33)(v34, v6);

    goto LABEL_12;
  }

LABEL_29:
  sub_264E23D98();
  v68 = sub_264DFC554(v23);
  result = (v146)(v23, v147);
  if (v68)
  {
    return result;
  }

  v70 = sub_264E23DA8();
  v133 = *(v70 + 16);
  if (!v133)
  {
  }

  v71 = 0;
  v132 = (v70 + ((*(v7 + 80) + 32) & ~*(v7 + 80)));
  v131 = v7 + 16;
  v130 = v7 + 8;
  v140 = v150 + 8;
  v141 = v150 + 16;
  v139 = (v137 + 16);
  v129 = v6;
  v128 = v70;
  while (1)
  {
    if (v71 >= *(v70 + 16))
    {
      goto LABEL_73;
    }

    v72 = *(v7 + 72);
    v136 = v71;
    v73 = v134;
    (*(v7 + 16))(v134, &v132[v72 * v71], v6);
    v74 = sub_264E23D08();
    (*(v7 + 8))(v73, v6);
    v151 = *(v74 + 16);
    v152 = v74;
    if (v151)
    {
      break;
    }

LABEL_32:
    v71 = v136 + 1;

    v6 = v129;
    v7 = v135;
    v70 = v128;
    if (v71 == v133)
    {
    }
  }

  v75 = objc_opt_self();
  v76 = 0;
  v148 = v152 + ((*(v150 + 80) + 32) & ~*(v150 + 80));
  v149 = v75;
  while (v76 < *(v152 + 16))
  {
    v79 = v150;
    v81 = v142;
    v80 = v143;
    (*(v150 + 16))(v142, v148 + *(v150 + 72) * v76, v143);
    sub_264E23C88();
    v82 = [v149 sharedCache];
    v83 = sub_264E250E8();

    v84 = [v82 appInfoForBundleIdentifier_];

    v85 = [v84 displayName];
    v86 = sub_264E25108();
    v88 = v87;

    sub_264E23C68();
    v90 = v89;
    (*(v79 + 8))(v81, v80);
    sub_264E23D98();
    if (v90 > 0.0)
    {
      v91 = *(v2 + 16);
      v78 = v147;
      if (*(v91 + 16) && (v92 = sub_264D9D6C8(v154), (v93 & 1) != 0))
      {
        v94 = *(*(v91 + 56) + 8 * v92);
      }

      else
      {
        v94 = sub_264DEB098(MEMORY[0x277D84F90]);
      }

      v95 = swift_isUniquelyReferenced_nonNull_native();
      v156 = v94;
      v97 = sub_264D9D57C(v86, v88);
      v98 = *(v94 + 16);
      v99 = (v96 & 1) == 0;
      v100 = v98 + v99;
      if (__OFADD__(v98, v99))
      {
        goto LABEL_69;
      }

      v101 = v96;
      if (*(v94 + 24) >= v100)
      {
        if (v95)
        {
          v104 = v156;
          if ((v96 & 1) == 0)
          {
            goto LABEL_53;
          }
        }

        else
        {
          sub_264DA0FDC();
          v104 = v156;
          if ((v101 & 1) == 0)
          {
            goto LABEL_53;
          }
        }
      }

      else
      {
        sub_264D9E134(v100, v95);
        v102 = sub_264D9D57C(v86, v88);
        if ((v101 & 1) != (v103 & 1))
        {
          goto LABEL_75;
        }

        v97 = v102;
        v104 = v156;
        if ((v101 & 1) == 0)
        {
LABEL_53:
          v104[(v97 >> 6) + 8] |= 1 << v97;
          v105 = (v104[6] + 16 * v97);
          *v105 = v86;
          v105[1] = v88;
          *(v104[7] + 8 * v97) = 0;
          v106 = v104[2];
          v107 = __OFADD__(v106, 1);
          v108 = v106 + 1;
          if (v107)
          {
            goto LABEL_71;
          }

          v104[2] = v108;
LABEL_55:
          *(v104[7] + 8 * v97) = v90 + *(v104[7] + 8 * v97);
          v109 = *v139;
          v110 = v153;
          (*v139)(v153, v154, v78);
          v2 = v138;
          v111 = *(v138 + 16);
          v112 = swift_isUniquelyReferenced_nonNull_native();
          v156 = *(v2 + 16);
          v113 = v156;
          v114 = sub_264D9D6C8(v110);
          v116 = *(v113 + 16);
          v117 = (v115 & 1) == 0;
          v107 = __OFADD__(v116, v117);
          v118 = v116 + v117;
          if (v107)
          {
            goto LABEL_70;
          }

          v119 = v115;
          if (*(v113 + 24) >= v118)
          {
            if (v112)
            {
              goto LABEL_60;
            }

            v124 = v114;
            sub_264DA1320();
            v114 = v124;
            v121 = v156;
            if ((v119 & 1) == 0)
            {
              goto LABEL_63;
            }

LABEL_61:
            v122 = v121[7];
            v123 = *(v122 + 8 * v114);
            *(v122 + 8 * v114) = v104;
          }

          else
          {
            sub_264D9EAB4(v118, v112);
            v114 = sub_264D9D6C8(v153);
            if ((v119 & 1) != (v120 & 1))
            {
              goto LABEL_74;
            }

LABEL_60:
            v121 = v156;
            if (v119)
            {
              goto LABEL_61;
            }

LABEL_63:
            v121[(v114 >> 6) + 8] |= 1 << v114;
            v125 = v114;
            v109(v121[6] + *(v137 + 72) * v114, v153, v78);
            *(v121[7] + 8 * v125) = v104;
            v126 = v121[2];
            v107 = __OFADD__(v126, 1);
            v127 = v126 + 1;
            if (v107)
            {
              goto LABEL_72;
            }

            v121[2] = v127;
          }

          v77 = v146;
          v146(v153, v78);

          *(v2 + 16) = v121;
          goto LABEL_37;
        }
      }

      goto LABEL_55;
    }

    v77 = v146;
    v78 = v147;
LABEL_37:
    ++v76;
    v77(v154, v78);
    if (v151 == v76)
    {
      goto LABEL_32;
    }
  }

  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  sub_264E25498();
  __break(1u);
LABEL_75:
  result = sub_264E25498();
  __break(1u);
  return result;
}

uint64_t sub_264DB2CC0()
{
  v2 = v0;
  v3 = sub_264E238E8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v24 - v9;
  sub_264E23D98();
  sub_264E23D78();
  v12 = v11;
  v13 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v0;
  v25 = v15;
  v17 = sub_264D9D6C8(v10);
  v18 = v15[2];
  v19 = (v16 & 1) == 0;
  v20 = v18 + v19;
  if (__OFADD__(v18, v19))
  {
    __break(1u);
    goto LABEL_11;
  }

  v1 = v16;
  if (v15[3] >= v20)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      *v2 = v15;
      if (v16)
      {
LABEL_9:
        *(v15[7] + 8 * v17) = v12 + *(v15[7] + 8 * v17);
        return (*(v4 + 8))(v10, v3);
      }

LABEL_8:
      (*(v4 + 16))(v7, v10, v3);
      sub_264DA0BE4(v17, v7, v15, 0.0);
      goto LABEL_9;
    }

LABEL_11:
    sub_264DA1348();
    v15 = v25;
    *v2 = v25;
    if (v1)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  sub_264D9EE90(v20, isUniquelyReferenced_nonNull_native);
  v15 = v25;
  v21 = sub_264D9D6C8(v10);
  if ((v1 & 1) == (v22 & 1))
  {
    v17 = v21;
    *v2 = v15;
    if (v1)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  result = sub_264E25498();
  __break(1u);
  return result;
}

uint64_t sub_264DB2EC8(uint64_t a1)
{
  v204 = sub_264E23D58();
  v2 = *(v204 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v204 - 8);
  v5 = &v189 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v196 = sub_264E23CB8();
  v6 = *(v196 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v196);
  v228 = &v189 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v218 = sub_264E238E8();
  v9 = *(v218 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v218);
  v200 = &v189 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v220 = &v189 - v13;
  MEMORY[0x28223BE20](v14);
  v197 = &v189 - v15;
  MEMORY[0x28223BE20](v16);
  v222 = (&v189 - v17);
  v217 = sub_264E23D18();
  v18 = *(v217 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v217);
  v227 = &v189 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v189 - v22;
  v216 = a1;
  v24 = sub_264E23DA8();
  v25 = *(v24 + 16);
  v26 = MEMORY[0x277CF9618];
  v214 = v5;
  v215 = v2;
  v213 = v6;
  v201 = v9;
  v202 = v18;
  if (v25)
  {
    v190 = 0;
    v27 = 0;
    v28 = *MEMORY[0x277CF9618];
    v225 = v24 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
    v226 = v28;
    v29 = *MEMORY[0x277CF9610];
    v223 = *MEMORY[0x277CF9620];
    v224 = v29;
    v212 = (v9 + 16);
    v221 = (v9 + 8);
    v30 = (v18 + 8);
    v31 = v24;
    while (1)
    {
      if (v27 >= *(v31 + 16))
      {
        goto LABEL_100;
      }

      (*(v202 + 16))(v23, v225 + *(v202 + 72) * v27, v217);
      sub_264E23CD8();
      v32 = sub_264E250E8();

      v33 = sub_264E25108();
      v35 = v34;
      if (v33 == sub_264E25108() && v35 == v36)
      {
      }

      else
      {
        v37 = v31;
        v38 = sub_264E25478();

        if (v38)
        {
          goto LABEL_8;
        }

        v39 = sub_264E25108();
        v41 = v40;
        if (v39 == sub_264E25108() && v41 == v42)
        {

          goto LABEL_12;
        }

        v43 = sub_264E25478();

        if (v43)
        {
LABEL_8:

          goto LABEL_13;
        }

        v44 = sub_264E25108();
        v46 = v45;

        if (v44 == sub_264E25108() && v46 == v47)
        {

LABEL_12:

LABEL_13:
          v31 = v37;
          goto LABEL_14;
        }

        v48 = sub_264E25478();

        v31 = v37;
        if ((v48 & 1) == 0)
        {
          sub_264E23CC8();
          if (v49 > 0.0)
          {
            v50 = sub_264E23CD8();
            v211 = v51;
            sub_264E23CC8();
            v53 = v52;
            v54 = sub_264E23CF8();
            if (v55)
            {
              v208 = v55;
              v209 = v54;
            }

            else
            {
              v56 = objc_opt_self();
              sub_264E23CD8();
              v57 = v50;
              v58 = sub_264E250E8();

              v59 = [v56 shortLocalizedNameForIdentifier_];

              v50 = v57;
              v209 = sub_264E25108();
              v208 = v60;
            }

            v61 = v222;
            sub_264E23D98();
            v62 = [objc_opt_self() sharedCache];
            v210 = v50;
            v63 = sub_264E250E8();
            v64 = [v62 imageForCategoryIdentifier_];

            v207 = sub_264E24D08();
            sub_264D91628(v190);
            v65 = v219;
            v66 = *v219;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v229 = *v65;
            v68 = v229;
            v70 = sub_264D9D6C8(v61);
            v71 = v68[2];
            v72 = (v69 & 1) == 0;
            v73 = v71 + v72;
            if (__OFADD__(v71, v72))
            {
              goto LABEL_103;
            }

            v74 = v69;
            if (v68[3] >= v73)
            {
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                sub_264DA15E8();
                v68 = v229;
              }
            }

            else
            {
              sub_264D9F254(v73, isUniquelyReferenced_nonNull_native);
              v68 = v229;
              v75 = sub_264D9D6C8(v222);
              if ((v74 & 1) != (v76 & 1))
              {
                goto LABEL_104;
              }

              v70 = v75;
            }

            *v219 = v68;
            if ((v74 & 1) == 0)
            {
              v77 = v197;
              (*v212)(v197, v222, v218);
              sub_264DA5CC0(v70, v77, MEMORY[0x277D84F90], v68);
            }

            v78 = v68[7];
            v79 = *(v78 + 8 * v70);
            v80 = swift_isUniquelyReferenced_nonNull_native();
            *(v78 + 8 * v70) = v79;
            if ((v80 & 1) == 0)
            {
              v79 = sub_264DBBD58(0, *(v79 + 2) + 1, 1, v79, &qword_27FFB1A78, &qword_264E264F8);
              *(v78 + 8 * v70) = v79;
            }

            v82 = *(v79 + 2);
            v81 = *(v79 + 3);
            v206 = v82 + 1;
            if (v82 >= v81 >> 1)
            {
              *(v78 + 8 * v70) = sub_264DBBD58((v81 > 1), v206, 1, v79, &qword_27FFB1A78, &qword_264E264F8);
            }

            (*v221)(v222, v218);
            (*v30)(v23, v217);
            v83 = *(v78 + 8 * v70);
            *(v83 + 16) = v206;
            v84 = v83 + 56 * v82;
            v85 = v211;
            *(v84 + 32) = v210;
            *(v84 + 40) = v85;
            *(v84 + 48) = v53;
            v86 = v208;
            *(v84 + 56) = v209;
            *(v84 + 64) = v86;
            *(v84 + 72) = v207;
            *(v84 + 80) = 1;
            *(v84 + 82) = 0;
            v190 = sub_264DBD2E8;
            v31 = v37;
            goto LABEL_15;
          }
        }
      }

LABEL_14:
      (*v30)(v23, v217);
LABEL_15:
      if (v25 == ++v27)
      {

        v5 = v214;
        v2 = v215;
        v6 = v213;
        v18 = v202;
        v26 = MEMORY[0x277CF9618];
        goto LABEL_40;
      }
    }
  }

  v190 = 0;
LABEL_40:
  v87 = sub_264E23DA8();
  v88 = v196;
  v195 = *(v87 + 16);
  if (!v195)
  {

    v186 = 0;
    v187 = 0;
LABEL_95:
    sub_264D91628(v190);
    sub_264D91628(v186);
    return sub_264D91628(v187);
  }

  v211 = 0;
  v212 = 0;
  v89 = 0;
  v194 = v87 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
  v193 = v18 + 16;
  v226 = *v26;
  v223 = v6 + 16;
  v199 = (v201 + 16);
  v210 = (v201 + 8);
  v221 = (v2 + 8);
  v222 = (v6 + 8);
  v191 = (v18 + 8);
  v192 = v87;
  v205 = v2 + 16;
  while (1)
  {
    if (v89 >= *(v87 + 16))
    {
      goto LABEL_102;
    }

    v90 = *(v18 + 72);
    v198 = v89;
    (*(v18 + 16))(v227, v194 + v90 * v89, v217);
    v91 = sub_264E23D08();
    v92 = v91;
    v93 = *(v91 + 16);
    if (v93)
    {
      break;
    }

LABEL_69:

    v143 = sub_264E23CE8();
    v144 = v143;
    v225 = *(v143 + 16);
    if (v225)
    {
      v145 = 0;
      v224 = v143 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
      v146 = v204;
      while (1)
      {
        if (v145 >= *(v144 + 16))
        {
          goto LABEL_97;
        }

        (*(v2 + 16))(v5, v224 + *(v2 + 72) * v145, v146);
        sub_264E23CD8();
        v147 = sub_264E250E8();

        v148 = sub_264E25108();
        v150 = v149;

        if (v148 == sub_264E25108() && v150 == v151)
        {
          break;
        }

        v152 = sub_264E25478();

        if (v152)
        {
          goto LABEL_72;
        }

        sub_264E23D28();
        if (v153 <= 0.0)
        {
          goto LABEL_72;
        }

        v154 = sub_264E23D38();
        v156 = v155;
        sub_264E23D28();
        v158 = v157;
        v159 = v200;
        sub_264E23D98();

        v160 = sub_264E23D48();
        sub_264D91628(v211);
        v161 = v219;
        v162 = v219[1];
        v163 = swift_isUniquelyReferenced_nonNull_native();
        v164 = v161[1];
        v229 = v164;
        v166 = sub_264D9D6C8(v159);
        v167 = v164[2];
        v168 = (v165 & 1) == 0;
        v169 = v167 + v168;
        if (__OFADD__(v167, v168))
        {
          goto LABEL_99;
        }

        v170 = v165;
        if (v164[3] >= v169)
        {
          if ((v163 & 1) == 0)
          {
            sub_264DA15E8();
            v164 = v229;
          }
        }

        else
        {
          sub_264D9F254(v169, v163);
          v164 = v229;
          v171 = sub_264D9D6C8(v159);
          if ((v170 & 1) != (v172 & 1))
          {
            goto LABEL_104;
          }

          v166 = v171;
        }

        v173 = v201;
        v219[1] = v164;
        if ((v170 & 1) == 0)
        {
          v164[(v166 >> 6) + 8] |= 1 << v166;
          (*(v173 + 16))(v164[6] + *(v173 + 72) * v166, v159, v218);
          *(v164[7] + 8 * v166) = MEMORY[0x277D84F90];
          v174 = v164[2];
          v175 = __OFADD__(v174, 1);
          v176 = v174 + 1;
          if (v175)
          {
            goto LABEL_101;
          }

          v164[2] = v176;
        }

        v177 = v164[7];
        v178 = *(v177 + 8 * v166);
        v179 = swift_isUniquelyReferenced_nonNull_native();
        *(v177 + 8 * v166) = v178;
        v209 = v154;
        if ((v179 & 1) == 0)
        {
          v178 = sub_264DBBD58(0, *(v178 + 2) + 1, 1, v178, &qword_27FFB1A78, &qword_264E264F8);
          *(v177 + 8 * v166) = v178;
        }

        v181 = *(v178 + 2);
        v180 = *(v178 + 3);
        if (v181 >= v180 >> 1)
        {
          *(v177 + 8 * v166) = sub_264DBBD58((v180 > 1), v181 + 1, 1, v178, &qword_27FFB1A78, &qword_264E264F8);
        }

        v182 = v160 & 1;
        (*v210)(v159, v218);
        v5 = v214;
        v146 = v204;
        (*v221)(v214, v204);
        v183 = *(v177 + 8 * v166);
        *(v183 + 16) = v181 + 1;
        v184 = v183 + 56 * v181;
        v185 = v209;
        *(v184 + 32) = v209;
        *(v184 + 40) = v156;
        *(v184 + 48) = v158;
        *(v184 + 56) = v185;
        *(v184 + 64) = v156;
        *(v184 + 72) = 0;
        *(v184 + 80) = v182;
        *(v184 + 81) = 0;
        v211 = sub_264DBD2E8;
        v2 = v215;
        v6 = v213;
LABEL_73:
        if (v225 == ++v145)
        {
          goto LABEL_42;
        }
      }

LABEL_72:
      (*v221)(v5, v146);
      goto LABEL_73;
    }

LABEL_42:
    v89 = v198 + 1;

    (*v191)(v227, v217);
    v88 = v196;
    v18 = v202;
    v87 = v192;
    if (v89 == v195)
    {

      v187 = v211;
      v186 = v212;
      goto LABEL_95;
    }
  }

  v94 = 0;
  v225 = v91 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  v203 = v93;
  while (v94 < *(v92 + 16))
  {
    (*(v6 + 16))(v228, v225 + *(v6 + 72) * v94, v88);
    sub_264E23CD8();
    v95 = sub_264E250E8();

    v96 = sub_264E25108();
    v98 = v97;

    if (v96 == sub_264E25108() && v98 == v99)
    {

LABEL_47:
      (*v222)(v228, v88);
      goto LABEL_48;
    }

    v100 = sub_264E25478();

    if (v100)
    {
      goto LABEL_47;
    }

    sub_264E23C68();
    if (v101 <= 0.0)
    {
      goto LABEL_47;
    }

    v102 = sub_264E23C88();
    v104 = v103;
    sub_264E23C68();
    v106 = v105;
    v107 = [objc_opt_self() sharedCache];
    v108 = sub_264E250E8();
    v109 = [v107 appInfoForBundleIdentifier_];

    sub_264E23D98();
    v208 = v109;
    v110 = [v109 displayName];
    v207 = sub_264E25108();
    v206 = v111;

    v112 = objc_opt_self();
    v113 = [v112 sharedCache];
    v224 = v102;
    v209 = v104;
    v114 = sub_264E250E8();
    v115 = [v113 imageForBundleIdentifier_];

    if (!v115)
    {
      v116 = [v112 sharedCache];
      [v116 imageForBlankApplicationIcon];
    }

    v117 = sub_264E24D08();
    v118 = v212;
    v119 = sub_264E23CA8();
    sub_264D91628(v118);
    v120 = v219;
    v121 = v219[1];
    v122 = swift_isUniquelyReferenced_nonNull_native();
    v123 = v120[1];
    v229 = v123;
    v125 = sub_264D9D6C8(v220);
    v126 = v123[2];
    v127 = (v124 & 1) == 0;
    v128 = v126 + v127;
    if (__OFADD__(v126, v127))
    {
      goto LABEL_98;
    }

    v129 = v124;
    if (v123[3] >= v128)
    {
      if ((v122 & 1) == 0)
      {
        sub_264DA15E8();
        v123 = v229;
      }
    }

    else
    {
      sub_264D9F254(v128, v122);
      v123 = v229;
      v130 = sub_264D9D6C8(v220);
      if ((v129 & 1) != (v131 & 1))
      {
        goto LABEL_104;
      }

      v125 = v130;
    }

    v219[1] = v123;
    if ((v129 & 1) == 0)
    {
      v132 = v197;
      (*v199)(v197, v220, v218);
      sub_264DA5CC0(v125, v132, MEMORY[0x277D84F90], v123);
    }

    v133 = v123[7];
    v134 = *(v133 + 8 * v125);
    v135 = swift_isUniquelyReferenced_nonNull_native();
    *(v133 + 8 * v125) = v134;
    v136 = v117;
    if ((v135 & 1) == 0)
    {
      v134 = sub_264DBBD58(0, *(v134 + 2) + 1, 1, v134, &qword_27FFB1A78, &qword_264E264F8);
      *(v133 + 8 * v125) = v134;
    }

    v138 = *(v134 + 2);
    v137 = *(v134 + 3);
    if (v138 >= v137 >> 1)
    {
      *(v133 + 8 * v125) = sub_264DBBD58((v137 > 1), v138 + 1, 1, v134, &qword_27FFB1A78, &qword_264E264F8);
    }

    (*v210)(v220, v218);
    (*v222)(v228, v88);
    v139 = *(v133 + 8 * v125);
    *(v139 + 16) = v138 + 1;
    v140 = v139 + 56 * v138;
    v141 = v209;
    *(v140 + 32) = v224;
    *(v140 + 40) = v141;
    *(v140 + 48) = v106;
    v142 = v206;
    *(v140 + 56) = v207;
    *(v140 + 64) = v142;
    *(v140 + 72) = v136;
    *(v140 + 80) = v119 & 1;
    *(v140 + 81) = 0;
    v212 = sub_264DBD2E8;
    v5 = v214;
    v2 = v215;
    v6 = v213;
    v93 = v203;
LABEL_48:
    if (v93 == ++v94)
    {
      goto LABEL_69;
    }
  }

  __break(1u);
LABEL_97:
  __break(1u);
LABEL_98:
  __break(1u);
LABEL_99:
  __break(1u);
LABEL_100:
  __break(1u);
LABEL_101:
  __break(1u);
LABEL_102:
  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  result = sub_264E25498();
  __break(1u);
  return result;
}

uint64_t sub_264DB424C(uint64_t a1)
{
  v2 = v1;
  v89 = sub_264E238E8();
  v4 = *(v89 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v89);
  v82 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v99 = &v73 - v8;
  v104 = sub_264E23CB8();
  v9 = *(v104 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v104);
  v12 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_264E23D18();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v87 = a1;
  v88 = &v73 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_264E23DA8();
  v80 = *(v17 + 16);
  if (!v80)
  {

    v71 = 0;
    return sub_264D91628(v71);
  }

  v98 = 0;
  v18 = 0;
  v79 = v17 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
  v78 = v14 + 16;
  v19 = *MEMORY[0x277CF9618];
  v100 = v9 + 16;
  v101 = v19;
  v81 = (v4 + 16);
  v84 = (v4 + 8);
  v20 = (v9 + 8);
  v74 = (v14 + 8);
  v86 = v2;
  v77 = v13;
  v76 = v14;
  v75 = v17;
  v85 = v9;
  while (1)
  {
    if (v18 >= *(v17 + 16))
    {
      goto LABEL_37;
    }

    v21 = *(v14 + 72);
    v83 = v18;
    v22 = v79 + v21 * v18;
    v23 = *(v14 + 16);
    v24 = v88;
    v23(v88, v22, v13);
    v25 = sub_264E23D08();
    v26 = v25;
    v103 = *(v25 + 16);
    if (v103)
    {
      break;
    }

LABEL_3:
    v18 = v83 + 1;

    v13 = v77;
    (*v74)(v24, v77);
    v14 = v76;
    v17 = v75;
    if (v18 == v80)
    {

      v71 = v98;
      return sub_264D91628(v71);
    }
  }

  v27 = 0;
  v102 = v25 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  while (v27 < *(v26 + 16))
  {
    (*(v9 + 16))(v12, v102 + *(v9 + 72) * v27, v104);
    sub_264E23CD8();
    v28 = sub_264E250E8();

    v29 = sub_264E25108();
    v31 = v30;

    if (v29 == sub_264E25108() && v31 == v32)
    {
    }

    else
    {
      v33 = sub_264E25478();

      if ((v33 & 1) == 0 && sub_264E23C78() > 0)
      {
        v34 = sub_264E23C88();
        v36 = v35;
        v94 = sub_264E23C78();
        v37 = [objc_opt_self() sharedCache];
        v38 = sub_264E250E8();
        v39 = [v37 appInfoForBundleIdentifier_];

        sub_264E23D98();
        v93 = v39;
        v40 = [v39 displayName];
        v41 = sub_264E25108();
        v91 = v42;
        v92 = v41;

        v43 = objc_opt_self();
        v44 = [v43 sharedCache];
        v95 = v36;
        v96 = v34;
        v45 = sub_264E250E8();
        v46 = [v44 imageForBundleIdentifier_];

        if (!v46)
        {
          v47 = [v43 sharedCache];
          [v47 imageForBlankApplicationIcon];
        }

        v97 = sub_264E24D08();
        v90 = sub_264E23CA8();
        sub_264D91628(v98);
        v48 = v86;
        v49 = *v86;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v105 = *v48;
        v51 = v105;
        v53 = sub_264D9D6C8(v99);
        v54 = v51[2];
        v55 = (v52 & 1) == 0;
        v56 = v54 + v55;
        v9 = v85;
        if (__OFADD__(v54, v55))
        {
          goto LABEL_36;
        }

        v57 = v52;
        if (v51[3] >= v56)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            *v48 = v51;
            if ((v52 & 1) == 0)
            {
              goto LABEL_24;
            }
          }

          else
          {
            sub_264DA1B10();
            v51 = v105;
            *v48 = v105;
            if ((v57 & 1) == 0)
            {
              goto LABEL_24;
            }
          }
        }

        else
        {
          sub_264D9FA04(v56, isUniquelyReferenced_nonNull_native);
          v51 = v105;
          v58 = sub_264D9D6C8(v99);
          if ((v57 & 1) != (v59 & 1))
          {
            goto LABEL_38;
          }

          v53 = v58;
          *v48 = v51;
          if (v57)
          {
            goto LABEL_25;
          }

LABEL_24:
          v60 = v82;
          (*v81)(v82, v99, v89);
          sub_264DA5CC0(v53, v60, MEMORY[0x277D84F90], v51);
        }

LABEL_25:
        v61 = v51[7];
        v62 = *(v61 + 8 * v53);
        v63 = swift_isUniquelyReferenced_nonNull_native();
        *(v61 + 8 * v53) = v62;
        if ((v63 & 1) == 0)
        {
          v62 = sub_264DBBD58(0, *(v62 + 2) + 1, 1, v62, &qword_27FFB1A70, &qword_264E264F0);
          *(v61 + 8 * v53) = v62;
        }

        v65 = *(v62 + 2);
        v64 = *(v62 + 3);
        if (v65 >= v64 >> 1)
        {
          *(v61 + 8 * v53) = sub_264DBBD58((v64 > 1), v65 + 1, 1, v62, &qword_27FFB1A70, &qword_264E264F0);
        }

        (*v84)(v99, v89);
        (*v20)(v12, v104);
        v66 = *(v61 + 8 * v53);
        *(v66 + 16) = v65 + 1;
        v67 = v66 + 56 * v65;
        v68 = v95;
        *(v67 + 32) = v96;
        *(v67 + 40) = v68;
        v69 = v91;
        v70 = v92;
        *(v67 + 48) = v94;
        *(v67 + 56) = v70;
        *(v67 + 64) = v69;
        *(v67 + 72) = v97;
        *(v67 + 80) = v90 & 1;
        v98 = sub_264DBD2E8;
        v24 = v88;
        goto LABEL_9;
      }
    }

    (*v20)(v12, v104);
LABEL_9:
    if (v103 == ++v27)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  result = sub_264E25498();
  __break(1u);
  return result;
}

uint64_t sub_264DB4A64(uint64_t a1)
{
  v92 = sub_264E238E8();
  v2 = *(v92 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v92);
  v86 = &v85 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v108 = &v85 - v6;
  v7 = sub_264E23CB8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v85 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_264E23D18();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v85 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = a1;
  v17 = sub_264E23DA8();
  v18 = v17;
  v96 = *(v17 + 16);
  if (v96)
  {
    v105 = 0;
    v19 = 0;
    v95 = v17 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v94 = v13 + 16;
    v114 = *MEMORY[0x277CF9618];
    v85 = (v2 + 16);
    v87 = (v2 + 8);
    v109 = *MEMORY[0x277D4BC28];
    v113 = (v8 + 8);
    v93 = (v13 + 8);
    v106 = *MEMORY[0x277D4BC20];
    v91 = v12;
    v90 = v13;
    v112 = v16;
    v89 = v17;
    v110 = v8;
    v111 = v8 + 16;
    while (v19 < *(v18 + 16))
    {
      v21 = *(v13 + 72);
      v107 = v19;
      (*(v13 + 16))(v16, v95 + v21 * v19, v12);
      v22 = sub_264E23D08();
      v116 = *(v22 + 16);
      if (v116)
      {
        v23 = 0;
        v115 = v22 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
        while (1)
        {
          if (v23 >= *(v22 + 16))
          {
            __break(1u);
            goto LABEL_49;
          }

          v24 = v22;
          (*(v8 + 16))(v11, v115 + *(v8 + 72) * v23, v7);
          sub_264E23CD8();
          v25 = sub_264E250E8();

          v26 = sub_264E25108();
          v28 = v27;

          if (v26 == sub_264E25108() && v28 == v29)
          {
          }

          else
          {
            v30 = sub_264E25478();

            if ((v30 & 1) == 0)
            {
              v31 = v7;
              v32 = [objc_opt_self() systemHiddenBundleIdentifiersForDeviceFamily_];
              v33 = sub_264E25278();

              v34 = sub_264E23C88();
              v36 = v35;
              if (*(v33 + 16) && (v37 = v34, v38 = *(v33 + 40), sub_264E254A8(), sub_264E25168(), v39 = sub_264E254C8(), v40 = -1 << *(v33 + 32), v41 = v39 & ~v40, ((*(v33 + 56 + ((v41 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v41) & 1) != 0))
              {
                v42 = ~v40;
                while (1)
                {
                  v43 = (*(v33 + 48) + 16 * v41);
                  v44 = *v43 == v37 && v43[1] == v36;
                  if (v44 || (sub_264E25478() & 1) != 0)
                  {
                    break;
                  }

                  v41 = (v41 + 1) & v42;
                  if (((*(v33 + 56 + ((v41 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v41) & 1) == 0)
                  {
                    goto LABEL_21;
                  }
                }

                v7 = v31;
                v8 = v110;
                v16 = v112;
              }

              else
              {
LABEL_21:

                sub_264E23C88();
                sub_264E25108();
                v45 = sub_264E251A8();

                v7 = v31;
                v8 = v110;
                v16 = v112;
                if ((v45 & 1) == 0)
                {
                  sub_264E23C88();
                  sub_264E25108();
                  v46 = sub_264E251A8();

                  if ((v46 & 1) == 0 && sub_264E23C98() > 0)
                  {
                    v47 = sub_264E23C88();
                    v49 = v48;
                    v101 = sub_264E23C98();
                    v50 = [objc_opt_self() sharedCache];
                    v51 = sub_264E250E8();
                    v52 = [v50 appInfoForBundleIdentifier_];

                    sub_264E23D98();
                    v100 = v52;
                    v53 = [v52 displayName];
                    v99 = sub_264E25108();
                    v98 = v54;

                    v55 = objc_opt_self();
                    v56 = [v55 sharedCache];
                    v103 = v47;
                    v102 = v49;
                    v57 = sub_264E250E8();
                    v58 = [v56 imageForBundleIdentifier_];

                    if (!v58)
                    {
                      v59 = [v55 0x279B88DB9];
                      [v59 imageForBlankApplicationIcon];
                    }

                    v97 = sub_264E24D08();
                    sub_264D91628(v105);
                    v60 = v104;
                    v61 = *v104;
                    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                    v117 = *v60;
                    v63 = v117;
                    v65 = sub_264D9D6C8(v108);
                    v66 = v63[2];
                    v67 = (v64 & 1) == 0;
                    v68 = v66 + v67;
                    if (__OFADD__(v66, v67))
                    {
                      goto LABEL_50;
                    }

                    v69 = v64;
                    if (v63[3] >= v68)
                    {
                      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                      {
                        sub_264DA1B24();
                        v63 = v117;
                      }
                    }

                    else
                    {
                      sub_264D9FDF4(v68, isUniquelyReferenced_nonNull_native);
                      v63 = v117;
                      v70 = sub_264D9D6C8(v108);
                      if ((v69 & 1) != (v71 & 1))
                      {
                        goto LABEL_51;
                      }

                      v65 = v70;
                    }

                    *v104 = v63;
                    if ((v69 & 1) == 0)
                    {
                      v72 = v86;
                      (*v85)(v86, v108, v92);
                      sub_264DA5CC0(v65, v72, MEMORY[0x277D84F90], v63);
                    }

                    v73 = v63[7];
                    v74 = *(v73 + 8 * v65);
                    v75 = swift_isUniquelyReferenced_nonNull_native();
                    *(v73 + 8 * v65) = v74;
                    if ((v75 & 1) == 0)
                    {
                      v74 = sub_264DBBD58(0, *(v74 + 2) + 1, 1, v74, &qword_27FFB1A68, &qword_264E264E8);
                      *(v73 + 8 * v65) = v74;
                    }

                    v77 = *(v74 + 2);
                    v76 = *(v74 + 3);
                    if (v77 >= v76 >> 1)
                    {
                      *(v73 + 8 * v65) = sub_264DBBD58((v76 > 1), v77 + 1, 1, v74, &qword_27FFB1A68, &qword_264E264E8);
                    }

                    (*v87)(v108, v92);
                    (*v113)(v11, v7);
                    v78 = *(v73 + 8 * v65);
                    *(v78 + 16) = v77 + 1;
                    v79 = v78 + 56 * v77;
                    v80 = v102;
                    *(v79 + 32) = v103;
                    *(v79 + 40) = v80;
                    v81 = v99;
                    *(v79 + 48) = v101;
                    *(v79 + 56) = v81;
                    v82 = v97;
                    *(v79 + 64) = v98;
                    *(v79 + 72) = v82;
                    *(v79 + 80) = 1;
                    v105 = sub_264DBD2E8;
                    v16 = v112;
                    goto LABEL_28;
                  }
                }
              }
            }
          }

          (*v113)(v11, v7);
LABEL_28:
          ++v23;
          v22 = v24;
          if (v23 == v116)
          {

            v12 = v91;
            v13 = v90;
            v18 = v89;
            goto LABEL_3;
          }
        }
      }

LABEL_3:
      v20 = v107 + 1;
      (*v93)(v16, v12);
      v19 = v20;
      if (v20 == v96)
      {

        v83 = v105;
        return sub_264D91628(v83);
      }
    }

LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    result = sub_264E25498();
    __break(1u);
  }

  else
  {

    v83 = 0;
    return sub_264D91628(v83);
  }

  return result;
}

uint64_t sub_264DB54B4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_264E238E8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_264E23CB8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_264E23D18();
  v14 = *(v46 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v46);
  v45 = v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_264E23D68();
  result = sub_264E23DA8();
  v44 = *(result + 16);
  if (v44)
  {
    v34[0] = v8;
    v34[1] = a1;
    v35 = v5;
    v36 = v2;
    v37 = v4;
    v38 = result;
    v19 = 0;
    v43 = result + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v41 = v14 + 8;
    v42 = v14 + 16;
    v20 = (v10 + 8);
    v21 = v14;
    v22 = result;
    v39 = v14;
    v40 = v10;
    while (v19 < *(v22 + 16))
    {
      v23 = *(v21 + 72);
      v48 = v19;
      v25 = v45;
      v24 = v46;
      (*(v21 + 16))(v45, v43 + v23 * v19, v46);
      v26 = sub_264E23D08();
      (*(v21 + 8))(v25, v24);
      v27 = *(v26 + 16);
      if (v27)
      {
        v28 = (*(v40 + 80) + 32) & ~*(v40 + 80);
        v47 = v26;
        v29 = v26 + v28;
        v30 = *(v40 + 72);
        v31 = *(v40 + 16);
        while (1)
        {
          v31(v13, v29, v9);
          v32 = sub_264E23C78();
          result = (*v20)(v13, v9);
          v33 = __OFADD__(v17, v32);
          v17 += v32;
          if (v33)
          {
            break;
          }

          v29 += v30;
          if (!--v27)
          {

            v22 = v38;
            v21 = v39;
            goto LABEL_4;
          }
        }

        __break(1u);
        break;
      }

LABEL_4:
      v19 = v48 + 1;
      if (v48 + 1 == v44)
      {

        v4 = v37;
        v5 = v35;
        v8 = v34[0];
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_13:
    sub_264E23D98();
    sub_264DB5838(v17, v8, 0, 1, &qword_27FFB1D90, &unk_264E268E0);
    return (*(v5 + 8))(v8, v4);
  }

  return result;
}

uint64_t sub_264DB5838(double a1, uint64_t a2, uint64_t a3, int a4, uint64_t *a5, uint64_t *a6)
{
  v9 = v6;
  v33 = a4;
  v32 = *&a3;
  v11 = sub_264E238E8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_264E23AA8();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264E23858();
  _s16ScreenTimeUICore11DetailChartV4HourV2id10Foundation4DateVvg_0();
  (*(v12 + 8))(v15, v11);
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a5, a6) + 36);
  v22 = *(v6 + v21);
  v23 = 0.0;
  if (*(v22 + 16))
  {
    v24 = sub_264D9D5F4(v20);
    if (v25)
    {
      v23 = *(*(v22 + 56) + 8 * v24);
    }
  }

  v26 = v32;
  if (v23 + a1 <= v32)
  {
    v26 = v23 + a1;
  }

  if (v33)
  {
    v27 = v23 + a1;
  }

  else
  {
    v27 = v26;
  }

  v28 = *(v9 + v21);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v34 = *(v9 + v21);
  sub_264DCD340(v20, isUniquelyReferenced_nonNull_native, v27);
  result = (*(v17 + 8))(v20, v16);
  *(v9 + v21) = v34;
  return result;
}

void sub_264DB5A50(uint64_t a1)
{
  v209 = a1;
  v206 = type metadata accessor for OverviewChart.Model(0);
  v2 = *(*(v206 - 8) + 64);
  MEMORY[0x28223BE20](v206);
  v153 = &v151 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_264E23C38();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v158 = &v151 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v157 = &v151 - v9;
  v194 = sub_264E23B98();
  v10 = *(v194 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v194);
  v193 = &v151 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v192 = sub_264E23B78();
  v13 = *(v192 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v192);
  v191 = &v151 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v190 = sub_264E23B38();
  v16 = *(v190 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v190);
  v189 = &v151 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1CE0, &unk_264E26AE0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v188 = &v151 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1C50, &unk_264E267D0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v187 = &v151 - v24;
  v186 = sub_264E23928();
  v25 = *(v186 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v186);
  v185 = &v151 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v204 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1858, &unk_264E26200);
  v28 = *(*(v204 - 8) + 64);
  MEMORY[0x28223BE20](v204);
  v220 = &v151 - v29;
  v173 = sub_264E23C18();
  v30 = *(v173 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v173);
  v172 = &v151 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1860, &qword_264E267E0);
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x28223BE20](v33 - 8);
  v156 = &v151 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v164 = &v151 - v37;
  MEMORY[0x28223BE20](v38);
  v203 = &v151 - v39;
  MEMORY[0x28223BE20](v40);
  v42 = &v151 - v41;
  MEMORY[0x28223BE20](v43);
  v202 = &v151 - v44;
  v221 = sub_264E23AA8();
  v166 = *(v221 - 8);
  v45 = *(v166 + 64);
  MEMORY[0x28223BE20](v221);
  v155 = &v151 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v47);
  v159 = &v151 - v48;
  MEMORY[0x28223BE20](v49);
  v161 = &v151 - v50;
  MEMORY[0x28223BE20](v51);
  v211 = &v151 - v52;
  MEMORY[0x28223BE20](v53);
  v218 = &v151 - v54;
  v207 = sub_264E238E8();
  v165 = *(v207 - 8);
  v55 = *(v165 + 64);
  MEMORY[0x28223BE20](v207);
  v163 = &v151 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v57);
  v201 = &v151 - v58;
  v154 = type metadata accessor for PickupsOverviewChart.Model(0);
  v208 = *(v154 - 8);
  v59 = *(v208 + 64);
  MEMORY[0x28223BE20](v154);
  v152 = &v151 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v61);
  v160 = &v151 - v62;
  MEMORY[0x28223BE20](v63);
  v219 = (&v151 - v64);
  v167 = v1;
  v65 = *v1;
  v66 = *(*v1 + 16);
  v162 = v5;
  v200 = v66;
  v205 = v65;
  if (v66)
  {
    v67 = 0;
    v151 = (*(v208 + 80) + 32) & ~*(v208 + 80);
    v198 = v65 + v151;
    v197 = (v165 + 8);
    v217 = (v166 + 8);
    v171 = *MEMORY[0x277CC99B8];
    v170 = (v30 + 104);
    v169 = (v30 + 8);
    v184 = (v5 + 56);
    v183 = *MEMORY[0x277CC9878];
    v182 = (v16 + 104);
    v181 = (v13 + 104);
    v180 = (v10 + 104);
    v179 = *MEMORY[0x277CC98F0];
    v178 = (v10 + 8);
    v177 = (v13 + 8);
    v176 = *MEMORY[0x277CC9900];
    v175 = (v16 + 8);
    v174 = (v25 + 8);
    v216 = (v166 + 16);
    v210 = (v166 + 56);
    v196 = (v166 + 48);
    v168 = (v166 + 32);
    v213 = v4;
    v199 = v42;
    while (1)
    {
      if (v67 >= v65[2])
      {
        __break(1u);
        goto LABEL_33;
      }

      v70 = *(v208 + 72);
      v215 = v67;
      v195 = v70 * v67;
      v71 = v219;
      sub_264DBD27C(&v198[v70 * v67], v219, type metadata accessor for PickupsOverviewChart.Model);
      v72 = v201;
      sub_264E23D98();
      v73 = v218;
      _s16ScreenTimeUICore11DetailChartV4HourV2id10Foundation4DateVvg_0();
      (*v197)(v72, v207);
      v74 = *(v206 + 24);
      v75 = v211;
      sub_264E23AF8();
      v76 = sub_264E23A78();
      v214 = *v217;
      v214(v75, v221);
      v77 = v216 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      if ((v76 & 1) == 0)
      {
        goto LABEL_10;
      }

      v78 = v172;
      v79 = v173;
      (*v170)(v172, v171, v173);
      v80 = sub_264E23C28();
      (*v169)(v78, v79);
      if (v80 == sub_264E23B18())
      {
        v81 = *v216;
        v82 = v202;
        v83 = v221;
        (*v216)(v202, v73, v221);
        (*v210)(v82, 0, 1, v83);
      }

      else
      {
LABEL_10:
        (*v184)(v187, 1, 1, v213);
        v84 = sub_264E23C48();
        v85 = *(*(v84 - 8) + 56);
        v212 = v77;
        v85(v188, 1, 1, v84);
        sub_264E23B18();
        v86 = v185;
        sub_264E23918();
        v87 = v189;
        v88 = v190;
        (*v182)(v189, v183, v190);
        v89 = v191;
        v90 = v192;
        (*v181)(v191, v179, v192);
        v91 = v193;
        v92 = v194;
        (*v180)(v193, v176, v194);
        v93 = v202;
        sub_264E23C08();
        v94 = v91;
        v71 = v219;
        (*v178)(v94, v92);
        v82 = v93;
        (*v177)(v89, v90);
        (*v175)(v87, v88);
        (*v174)(v86, v186);
        v81 = *v216;
      }

      v95 = v199;
      v96 = v221;
      v81(v199, v71, v221);
      (*v210)(v95, 0, 1, v96);
      v97 = *(v204 + 48);
      v98 = v220;
      sub_264D93A14(v82, v220);
      sub_264D93A14(v95, &v98[v97]);
      v99 = *v196;
      if ((*v196)(v98, 1, v96) == 1)
      {
        break;
      }

      v100 = v220;
      sub_264D93A14(v220, v203);
      v101 = v99(&v100[v97], 1, v221);
      v65 = v205;
      v102 = v218;
      if (v101 == 1)
      {
        sub_264D817BC(v95, &qword_27FFB1860, &qword_264E267E0);
        sub_264D817BC(v82, &qword_27FFB1860, &qword_264E267E0);
        v103 = v221;
        v104 = v214;
        v214(v102, v221);
        sub_264DBD184(v219, type metadata accessor for PickupsOverviewChart.Model);
        v104(v203, v103);
LABEL_4:
        sub_264D817BC(v220, &qword_27FFB1858, &unk_264E26200);
        goto LABEL_5;
      }

      v105 = v221;
      v106 = v211;
      (*v168)(v211, &v220[v97], v221);
      sub_264DBD13C(&qword_27FFB1868, MEMORY[0x277CC9578]);
      v107 = v203;
      LODWORD(v212) = sub_264E25068();
      v108 = v214;
      v214(v106, v105);
      sub_264D817BC(v95, &qword_27FFB1860, &qword_264E267E0);
      sub_264D817BC(v82, &qword_27FFB1860, &qword_264E267E0);
      v108(v102, v105);
      sub_264DBD184(v219, type metadata accessor for PickupsOverviewChart.Model);
      v108(v107, v105);
      sub_264D817BC(v220, &qword_27FFB1860, &qword_264E267E0);
      if (v212)
      {
        goto LABEL_28;
      }

LABEL_5:
      v67 = v215 + 1;
      v4 = v213;
      if (v200 == v215 + 1)
      {
        goto LABEL_16;
      }
    }

    sub_264D817BC(v95, &qword_27FFB1860, &qword_264E267E0);
    sub_264D817BC(v82, &qword_27FFB1860, &qword_264E267E0);
    v68 = v221;
    v214(v218, v221);
    sub_264DBD184(v71, type metadata accessor for PickupsOverviewChart.Model);
    v69 = v99(&v220[v97], 1, v68);
    v65 = v205;
    if (v69 == 1)
    {
      sub_264D817BC(v220, &qword_27FFB1860, &qword_264E267E0);
LABEL_28:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v65 = sub_264E15DA8(v65);
      }

      v150 = v167;
      if (v215 < v65[2])
      {
        sub_264DB7130(v209);
        *v150 = v65;
        return;
      }

      __break(1u);
LABEL_35:
      __break(1u);
      return;
    }

    goto LABEL_4;
  }

LABEL_16:
  v109 = *(type metadata accessor for PickupsOverviewTabView.Model(0) + 20);
  v110 = v163;
  sub_264E23D98();
  v111 = v211;
  _s16ScreenTimeUICore11DetailChartV4HourV2id10Foundation4DateVvg_0();
  (*(v165 + 8))(v110, v207);
  v112 = v167;
  v113 = v164;
  Calendar.startOfWeek(containing:)(v111, v164);
  v114 = v166;
  v115 = (v166 + 8);
  v116 = v221;
  v220 = *(v166 + 8);
  (v220)(v111, v221);
  v117 = v114[6];
  if ((v117)(v113, 1, v116) == 1)
  {
    sub_264D817BC(v113, &qword_27FFB1860, &qword_264E267E0);
    if (qword_27FFB1688 != -1)
    {
LABEL_33:
      swift_once();
    }

    v118 = sub_264E23FC8();
    __swift_project_value_buffer(v118, qword_27FFB2028);
    v119 = sub_264E23FA8();
    v120 = sub_264E252A8();
    if (os_log_type_enabled(v119, v120))
    {
      v121 = swift_slowAlloc();
      *v121 = 0;
      _os_log_impl(&dword_264D7D000, v119, v120, "Could not compute start of week; skipping activity segment", v121, 2u);
      MEMORY[0x26674FCD0](v121, -1, -1);
    }
  }

  else
  {
    v217 = v115;
    v218 = v109;
    v122 = v4;
    v123 = v114[4];
    v219 = v117;
    v124 = v159;
    v125 = v161;
    v126 = v221;
    v215 = v123;
    v216 = (v114 + 4);
    (v123)(v161, v113, v221);
    v127 = v114[2];
    v127(v124, v125, v126);
    v128 = *(v162 + 16);
    v129 = v157;
    v128(v157, &v218[v112], v122);
    v127((v160 + *(v154 + 20)), v124, v126);
    v130 = v155;
    v131 = v124;
    v132 = v129;
    v127(v155, v131, v126);
    v133 = v158;
    v134 = v122;
    v128(v158, v129, v122);
    v218 = sub_264E24C78();
    v135 = v156;
    Calendar.startOfWeek(containing:)(v130, v156);
    if ((v219)(v135, 1, v126) == 1)
    {
      goto LABEL_35;
    }

    v137 = v220;
    v136 = v221;
    (v220)(v130, v221);
    v138 = v162;
    v139 = v132;
    v140 = v134;
    (*(v162 + 8))(v139, v134);
    v137(v159, v136);
    v141 = v153;
    v215(v153, v135, v136);
    v142 = v206;
    *(v141 + *(v206 + 20)) = MEMORY[0x277D84F90];
    (*(v138 + 32))(v141 + v142[6], v133, v140);
    *(v141 + v142[7]) = v218;
    *(v141 + v142[8]) = 1;
    v143 = v160;
    sub_264DBD214(v141, v160, type metadata accessor for OverviewChart.Model);
    sub_264DB7130(v209);
    v144 = v152;
    sub_264DBD27C(v143, v152, type metadata accessor for PickupsOverviewChart.Model);
    v145 = v205;
    v146 = v143;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v145 = sub_264DBC1A0(0, v145[2] + 1, 1, v145, &qword_27FFB1BA0, &qword_264E26628, type metadata accessor for PickupsOverviewChart.Model);
    }

    v147 = v167;
    v149 = v145[2];
    v148 = v145[3];
    if (v149 >= v148 >> 1)
    {
      v145 = sub_264DBC1A0(v148 > 1, v149 + 1, 1, v145, &qword_27FFB1BA0, &qword_264E26628, type metadata accessor for PickupsOverviewChart.Model);
    }

    sub_264DBD184(v146, type metadata accessor for PickupsOverviewChart.Model);
    v137(v161, v221);
    v145[2] = v149 + 1;
    sub_264DBD214(v144, v145 + ((*(v208 + 80) + 32) & ~*(v208 + 80)) + *(v208 + 72) * v149, type metadata accessor for PickupsOverviewChart.Model);
    *v147 = v145;
  }
}

uint64_t sub_264DB7130(uint64_t a1)
{
  v2 = sub_264E23CB8();
  v48 = *(v2 - 8);
  v3 = *(v48 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_264E23D18();
  v47 = *(v56 - 8);
  v6 = *(v47 + 64);
  MEMORY[0x28223BE20](v56);
  v55 = v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_264E23C38();
  v8 = *(v57 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v57);
  v52 = v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_264E23AA8();
  v53 = *(v11 - 8);
  v54 = v11;
  v12 = *(v53 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_264E238E8();
  v15 = *(v51 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v51);
  v18 = v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for OverviewChart.Day(0);
  v20 = v19 - 8;
  v21 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  v23 = v45 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = a1;
  sub_264E23D98();
  _s16ScreenTimeUICore11DetailChartV4HourV2id10Foundation4DateVvg_0();
  (*(v15 + 8))(v18, v51);
  v24 = sub_264E23D68();
  v25 = type metadata accessor for OverviewChart.Model(0);
  v26 = v52;
  v27 = v57;
  (*(v8 + 16))(v52, v45[1] + *(v25 + 24), v57);
  sub_264E23AF8();
  (*(v8 + 8))(v26, v27);
  (*(v53 + 8))(v14, v54);
  v28 = v24;
  v29 = *(v20 + 28);
  v49 = v23;
  v46 = v29;
  *&v23[v29] = v24;
  result = sub_264E23DA8();
  v54 = *(result + 16);
  if (v54)
  {
    v31 = 0;
    v33 = v47;
    v32 = v48;
    v52 = (result + ((*(v33 + 80) + 32) & ~*(v33 + 80)));
    v53 = result;
    v50 = v47 + 8;
    v51 = v47 + 16;
    v34 = (v48 + 8);
    while (v31 < *(result + 16))
    {
      v35 = v55;
      v36 = v56;
      (*(v33 + 16))(v55, &v52[*(v33 + 72) * v31], v56);
      v37 = sub_264E23D08();
      (*(v33 + 8))(v35, v36);
      v38 = *(v37 + 16);
      if (v38)
      {
        v39 = (*(v32 + 80) + 32) & ~*(v32 + 80);
        v57 = v37;
        v40 = v37 + v39;
        v41 = *(v32 + 72);
        v42 = *(v32 + 16);
        do
        {
          v42(v5, v40, v2);
          v43 = sub_264E23C78();
          (*v34)(v5, v2);
          v28 = v28 + v43;
          v40 += v41;
          --v38;
        }

        while (v38);

        v32 = v48;
        v33 = v47;
        *&v49[v46] = v28;
      }

      else
      {
      }

      result = v53;
      if (++v31 == v54)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_10:

    v44 = v49;
    sub_264DAE2D0(v49);
    return sub_264DBD184(v44, type metadata accessor for OverviewChart.Day);
  }

  return result;
}

size_t sub_264DB766C(uint64_t a1)
{
  v67 = a1;
  v3 = sub_264E23C38();
  v53 = *(v3 - 8);
  v54 = v3;
  v4 = *(v53 + 64);
  MEMORY[0x28223BE20](v3);
  v52 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_264E23AA8();
  v6 = *(v66 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v66);
  v57 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v59 = &v51 - v10;
  MEMORY[0x28223BE20](v11);
  v62 = &v51 - v12;
  v61 = sub_264E238E8();
  v13 = *(v61 - 8);
  v14 = v13[8];
  MEMORY[0x28223BE20](v61);
  v16 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for PickupsDetailChart.Model(0);
  v63 = *(v17 - 8);
  v18 = *(v63 + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v55 = (&v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v20);
  v56 = &v51 - v21;
  MEMORY[0x28223BE20](v22);
  v24 = &v51 - v23;
  v25 = 0;
  v58 = v1;
  v65 = *v1;
  v64 = v65[2];
  v60 = (v13 + 1);
  v51 = v6;
  v68 = (v6 + 8);
  v26 = v62;
  do
  {
    if (v64 == v25)
    {
      v33 = *(type metadata accessor for PickupsDetailTabView.Model(0) + 20);
      sub_264E23D98();
      v34 = v62;
      _s16ScreenTimeUICore11DetailChartV4HourV2id10Foundation4DateVvg_0();
      (*v60)(v16, v61);
      v35 = v57;
      v36 = v58;
      sub_264E23AF8();
      v37 = v51;
      v64 = *(v51 + 8);
      v38 = v66;
      v64(v34, v66);
      v39 = *(v37 + 16);
      v39(v34, v35, v38);
      v40 = v53;
      v41 = *(v53 + 16);
      v42 = v36 + v33;
      v43 = v52;
      v44 = v54;
      v41(v52, v42, v54);
      v45 = v56;
      v39(v56, v34, v38);
      v46 = type metadata accessor for DetailChart.Model(0);
      v41((v45 + v46[6]), v43, v44);
      v47 = sub_264E24C78();
      v48 = v43;
      v6 = v64;
      (*(v40 + 8))(v48, v44);
      (v6)(v34, v38);
      *(v45 + v46[5]) = MEMORY[0x277D84F90];
      *(v45 + v46[7]) = v47;
      *(v45 + v46[8]) = 1;
      *(v45 + v46[9]) = 1;
      *(v45 + v46[10]) = 0x40AC200000000000;
      sub_264DB7D7C();
      v2 = v55;
      sub_264DBD27C(v45, v55, type metadata accessor for PickupsDetailChart.Model);
      v13 = v65;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
LABEL_10:
        v50 = v13[2];
        v49 = v13[3];
        if (v50 >= v49 >> 1)
        {
          v13 = sub_264DBC1A0(v49 > 1, v50 + 1, 1, v13, &qword_27FFB1BE0, &unk_264E270D0, type metadata accessor for PickupsDetailChart.Model);
        }

        sub_264DBD184(v56, type metadata accessor for PickupsDetailChart.Model);
        (v6)(v57, v66);
        v13[2] = v50 + 1;
        result = sub_264DBD214(v2, v13 + ((*(v63 + 80) + 32) & ~*(v63 + 80)) + *(v63 + 72) * v50, type metadata accessor for PickupsDetailChart.Model);
        goto LABEL_13;
      }

LABEL_15:
      v13 = sub_264DBC1A0(0, v13[2] + 1, 1, v13, &qword_27FFB1BE0, &unk_264E270D0, type metadata accessor for PickupsDetailChart.Model);
      goto LABEL_10;
    }

    if (v25 >= v65[2])
    {
      __break(1u);
      goto LABEL_15;
    }

    v27 = (v25 + 1);
    v6 = (*(v63 + 80) + 32) & ~*(v63 + 80);
    sub_264DBD27C(v65 + v6 + *(v63 + 72) * v25, v24, type metadata accessor for PickupsDetailChart.Model);
    sub_264E23D98();
    _s16ScreenTimeUICore11DetailChartV4HourV2id10Foundation4DateVvg_0();
    (*v60)(v16, v61);
    v28 = &v24[*(type metadata accessor for DetailChart.Model(0) + 24)];
    v29 = v59;
    sub_264E23AF8();
    LOBYTE(v28) = sub_264E23A78();
    v13 = v68;
    v2 = *v68;
    v30 = v29;
    v31 = v66;
    (*v68)(v30, v66);
    v2(v26, v31);
    sub_264DBD184(v24, type metadata accessor for PickupsDetailChart.Model);
    v25 = v27;
  }

  while ((v28 & 1) == 0);
  v13 = v65;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_264E15E0C(v13);
    v13 = result;
  }

  if ((v27 - 1) < v13[2])
  {
    result = sub_264DB7D7C();
LABEL_13:
    *v58 = v13;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_264DB7D7C()
{
  v1 = sub_264E23CB8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_264E23D18();
  v6 = *(v41 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v41);
  v40 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DetailChart.Hour(0);
  v10 = v9 - 8;
  v11 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264E23D98();
  v14 = sub_264E23D68();
  v34 = *(v10 + 28);
  v35 = v13;
  *&v13[v34] = v14;
  result = sub_264E23DA8();
  v16 = result;
  v39 = *(result + 16);
  if (v39)
  {
    v30[1] = v0;
    v31 = result;
    v17 = 0;
    v38 = result + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v36 = v6 + 8;
    v37 = v6 + 16;
    v32 = v6;
    v33 = v2;
    v18 = (v2 + 8);
    while (v17 < *(v16 + 16))
    {
      v20 = v40;
      v19 = v41;
      (*(v6 + 16))(v40, v38 + *(v6 + 72) * v17, v41);
      v21 = sub_264E23D08();
      (*(v6 + 8))(v20, v19);
      v22 = v21;
      v23 = *(v21 + 16);
      if (v23)
      {
        v24 = (*(v33 + 80) + 32) & ~*(v33 + 80);
        v42 = v22;
        v25 = v22 + v24;
        v26 = *(v33 + 72);
        v27 = *(v33 + 16);
        do
        {
          v27(v5, v25, v1);
          v28 = sub_264E23C78();
          (*v18)(v5, v1);
          v14 = v14 + v28;
          v25 += v26;
          --v23;
        }

        while (v23);

        *&v35[v34] = v14;
        v16 = v31;
        v6 = v32;
      }

      else
      {
      }

      if (++v17 == v39)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_10:

    v29 = v35;
    sub_264DADF4C(v35);
    return sub_264DBD184(v29, type metadata accessor for DetailChart.Hour);
  }

  return result;
}

uint64_t sub_264DB80BC(unint64_t a1)
{
  v2 = sub_264E23CB8();
  v80 = *(v2 - 8);
  v3 = *(v80 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_264E23D18();
  v7 = *(v6 - 8);
  v86 = v6;
  v87 = v7;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v85 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1860, &qword_264E267E0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v68 - v12;
  v14 = sub_264E23AA8();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v74 = &v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v68 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v68 - v22;
  v24 = sub_264E238E8();
  v77 = *(v24 - 8);
  v25 = *(v77 + 64);
  MEMORY[0x28223BE20](v24);
  v27 = (&v68 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v89 = a1;
  sub_264E23D98();
  _s16ScreenTimeUICore11DetailChartV4HourV2id10Foundation4DateVvg_0();
  Calendar.startOfWeek(containing:)(v20, v13);
  v28 = *(v15 + 8);
  v75 = v20;
  v76 = v28;
  v28(v20, v14);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    (*(v77 + 8))(v27, v24);
    return sub_264D817BC(v13, &qword_27FFB1860, &qword_264E267E0);
  }

  else
  {
    v71 = v15 + 8;
    v72 = v27;
    v68 = v24;
    v69 = v15;
    v30 = *(v15 + 32);
    v73 = v23;
    v70 = v14;
    v30(v23, v13, v14);
    v31 = sub_264E23D68();
    v32 = sub_264E23DA8();
    v33 = v32;
    v84 = *(v32 + 16);
    if (v84)
    {
      v34 = 0;
      v83 = v32 + ((*(v87 + 80) + 32) & ~*(v87 + 80));
      v81 = v87 + 8;
      v82 = v87 + 16;
      v35 = v80 + 16;
      v27 = (v80 + 8);
      v79 = v32;
      do
      {
        if (v34 >= *(v33 + 16))
        {
          goto LABEL_29;
        }

        v36 = v86;
        v24 = v87;
        v37 = *(v87 + 72);
        v89 = v34;
        v38 = v85;
        (*(v87 + 16))(v85, v83 + v37 * v34, v86);
        v39 = sub_264E23D08();
        (*(v24 + 8))(v38, v36);
        v40 = v39;
        v20 = *(v39 + 16);
        if (!v20)
        {

          goto LABEL_6;
        }

        v41 = (*(v80 + 80) + 32) & ~*(v80 + 80);
        v88 = v40;
        v42 = v40 + v41;
        v33 = *(v80 + 72);
        v24 = *(v80 + 16);
        do
        {
          (v24)(v5, v42, v2);
          v43 = sub_264E23C78();
          (*v27)(v5, v2);
          v44 = __OFADD__(v31, v43);
          v31 += v43;
          if (v44)
          {
            __break(1u);
LABEL_29:
            __break(1u);
LABEL_30:
            __break(1u);
            goto LABEL_31;
          }

          v42 += v33;
          --v20;
        }

        while (v20);

        v33 = v79;
LABEL_6:
        v34 = v89 + 1;
      }

      while (v89 + 1 != v84);
    }

    v20 = v78;
    v45 = v75;
    _s16ScreenTimeUICore11DetailChartV4HourV2id10Foundation4DateVvg_0();
    v2 = v74;
    sub_264E23AF8();
    v33 = v70;
    v76(v45, v70);
    v24 = *(type metadata accessor for PickupsOverviewLegendView.Model(0) + 20);
    v46 = *&v20[v24];
    if (*(v46 + 16) && (v47 = sub_264D9D5F4(v73), (v48 & 1) != 0))
    {
      v49 = *(*(v46 + 56) + 8 * v47);
    }

    else
    {
      v49 = sub_264DEE390(MEMORY[0x277D84F90]);
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v90 = v49;
    v35 = sub_264D9D5F4(v2);
    v52 = v49[2];
    v53 = (v51 & 1) == 0;
    v54 = v52 + v53;
    if (__OFADD__(v52, v53))
    {
      goto LABEL_30;
    }

    LOBYTE(v27) = v51;
    if (v49[3] >= v54)
    {
      v58 = v69;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_23;
    }

    sub_264D9F644(v54, isUniquelyReferenced_nonNull_native);
    v49 = v90;
    v55 = sub_264D9D5F4(v2);
    if ((v27 & 1) == (v56 & 1))
    {
      v35 = v55;
      v57 = v68;
      v58 = v69;
      if ((v27 & 1) == 0)
      {
        goto LABEL_24;
      }

      while (1)
      {
        v60 = v49[7];
        v61 = *(v60 + 8 * v35);
        v44 = __OFADD__(v61, v31);
        v62 = v61 + v31;
        if (!v44)
        {
          break;
        }

LABEL_31:
        __break(1u);
LABEL_32:
        sub_264DA18A0();
        v58 = v69;
        v49 = v90;
LABEL_23:
        v57 = v68;
        if ((v27 & 1) == 0)
        {
LABEL_24:
          v59 = v75;
          (*(v58 + 16))(v75, v2, v33);
          sub_264DA0D8C(v35, v59, 0, v49);
        }
      }

      *(v60 + 8 * v35) = v62;
      v63 = *&v20[v24];
      v64 = swift_isUniquelyReferenced_nonNull_native();
      v90 = *&v20[v24];
      v65 = v49;
      v66 = v73;
      sub_264DCD6B0(v65, v73, v64);
      *&v20[v24] = v90;
      v67 = v76;
      v76(v2, v33);
      v67(v66, v33);
      return (*(v77 + 8))(v72, v57);
    }

    else
    {
      result = sub_264E25498();
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_264DB87E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1860, &qword_264E267E0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v97 = &v95 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v95 - v6;
  MEMORY[0x28223BE20](v8);
  v102 = &v95 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB20A8, &qword_264E270C8);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v101 = &v95 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v106 = &v95 - v14;
  MEMORY[0x28223BE20](v15);
  v105 = &v95 - v16;
  v112 = type metadata accessor for PickupsDetailLegendView.DayPickups(0);
  v104 = *(v112 - 8);
  v17 = *(v104 + 64);
  MEMORY[0x28223BE20](v112);
  v107 = &v95 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_264E23AA8();
  v113 = *(v19 - 8);
  v20 = *(v113 + 64);
  MEMORY[0x28223BE20](v19);
  v96 = &v95 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v95 - v23;
  MEMORY[0x28223BE20](v25);
  v110 = &v95 - v26;
  MEMORY[0x28223BE20](v27);
  v29 = &v95 - v28;
  v30 = sub_264E23CB8();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30);
  v34 = &v95 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = sub_264E23D18();
  v35 = *(v123 - 8);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v123);
  v122 = &v95 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_264E238E8();
  v99 = *(v100 - 8);
  v38 = *(v99 + 64);
  MEMORY[0x28223BE20](v100);
  v109 = &v95 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264E23D98();
  v40 = sub_264E23D68();
  v103 = a1;
  result = sub_264E23DA8();
  v42 = *(result + 16);
  v114 = v19;
  v121 = v42;
  v108 = v29;
  v98 = v24;
  if (v42)
  {
    v95 = v7;
    v43 = 0;
    v120 = result + ((*(v35 + 80) + 32) & ~*(v35 + 80));
    v118 = v35 + 8;
    v119 = v35 + 16;
    v116 = v35;
    v117 = v31;
    v44 = v35;
    v45 = result;
    v115 = result;
    while (v43 < *(v45 + 16))
    {
      v46 = *(v44 + 72);
      v125 = v43;
      v47 = v122;
      v48 = v123;
      (*(v44 + 16))(v122, v120 + v46 * v43, v123);
      v49 = sub_264E23D08();
      (*(v44 + 8))(v47, v48);
      v50 = v49;
      v51 = *(v49 + 16);
      if (v51)
      {
        v52 = (*(v117 + 80) + 32) & ~*(v117 + 80);
        v124 = v50;
        v53 = v50 + v52;
        v54 = *(v117 + 72);
        v55 = *(v117 + 16);
        while (1)
        {
          v55(v34, v53, v30);
          v56 = sub_264E23C78();
          result = (*(v31 + 8))(v34, v30);
          v57 = __OFADD__(v40, v56);
          v40 += v56;
          if (v57)
          {
            break;
          }

          v53 += v54;
          if (!--v51)
          {

            v45 = v115;
            v44 = v116;
            goto LABEL_4;
          }
        }

        __break(1u);
        break;
      }

LABEL_4:
      v43 = v125 + 1;
      if (v125 + 1 == v121)
      {

        v58 = v111;
        v19 = v114;
        v29 = v108;
        v7 = v95;
        goto LABEL_13;
      }
    }

    __break(1u);
    goto LABEL_36;
  }

  v58 = v111;
LABEL_13:
  v59 = v110;
  _s16ScreenTimeUICore11DetailChartV4HourV2id10Foundation4DateVvg_0();
  sub_264E23AF8();
  v60 = *(v113 + 8);
  v124 = v113 + 8;
  v125 = v60;
  (v60)(v59, v19);
  v123 = *(type metadata accessor for PickupsDetailLegendView.Model(0) + 20);
  v61 = *(v58 + v123);
  if (*(v61 + 16))
  {
    v62 = v7;
    v63 = sub_264D9D5F4(v29);
    if (v64)
    {
      v65 = v104;
      v66 = *(v61 + 56) + *(v104 + 72) * v63;
      v67 = v105;
      sub_264DBD27C(v66, v105, type metadata accessor for PickupsDetailLegendView.DayPickups);
      v68 = 0;
      v69 = v106;
      v70 = v107;
      v71 = v113;
      goto LABEL_18;
    }
  }

  else
  {
    v62 = v7;
  }

  v68 = 1;
  v69 = v106;
  v70 = v107;
  v71 = v113;
  v67 = v105;
  v65 = v104;
LABEL_18:
  v72 = v112;
  v122 = *(v65 + 56);
  (v122)(v67, v68, 1, v112);
  sub_264DBD024(v67, v69);
  v73 = (*(v65 + 48))(v69, 1, v72);
  v74 = v102;
  if (v73 == 1)
  {
    v75 = v114;
    (*(v71 + 56))(v70, 1, 1, v114);
    *(v70 + *(v72 + 20)) = 0;
    sub_264D817BC(v69, &qword_27FFB20A8, &qword_264E270C8);
  }

  else
  {
    sub_264DBD214(v69, v70, type metadata accessor for PickupsDetailLegendView.DayPickups);
    v75 = v114;
  }

  v76 = v74;
  sub_264E23D88();
  v77 = *(v71 + 48);
  if (v77(v76, 1, v75) == 1)
  {
    result = sub_264D817BC(v76, &qword_27FFB1860, &qword_264E267E0);
  }

  else
  {
    v78 = *(v71 + 32);
    v79 = v98;
    v80 = v76;
    v81 = v78;
    v78(v98, v80, v75);
    sub_264D93A14(v70, v62);
    if (v77(v62, 1, v75) == 1)
    {
      sub_264D817BC(v62, &qword_27FFB1860, &qword_264E267E0);
      sub_264D817BC(v70, &qword_27FFB1860, &qword_264E267E0);
      v81(v70, v79, v75);
      v71 = v113;
      result = (*(v113 + 56))(v70, 0, 1, v75);
    }

    else
    {
      v82 = v96;
      v81(v96, v62, v75);
      sub_264DBD13C(&qword_27FFB1BF0, MEMORY[0x277CC9578]);
      v83 = sub_264E25048();
      v84 = (v83 & 1) == 0;
      if (v83)
      {
        v85 = v79;
      }

      else
      {
        v85 = v82;
      }

      if (v84)
      {
        v82 = v79;
      }

      v125(v85, v75);
      v86 = v97;
      v81(v97, v82, v75);
      v71 = v113;
      (*(v113 + 56))(v86, 0, 1, v75);
      result = sub_264DBD0D4(v86, v70, &qword_27FFB1860, &qword_264E267E0);
    }
  }

  v87 = v112;
  v88 = *(v112 + 20);
  v89 = *(v70 + v88);
  v57 = __OFADD__(v89, v40);
  v90 = v89 + v40;
  if (!v57)
  {
    *(v70 + v88) = v90;
    v91 = v110;
    v92 = v108;
    v93 = v114;
    (*(v71 + 16))(v110, v108, v114);
    v94 = v101;
    sub_264DBD27C(v70, v101, type metadata accessor for PickupsDetailLegendView.DayPickups);
    (v122)(v94, 0, 1, v87);
    sub_264DA90EC(v94, v91);
    v125(v92, v93);
    (*(v99 + 8))(v109, v100);
    return sub_264DBD184(v70, type metadata accessor for PickupsDetailLegendView.DayPickups);
  }

LABEL_36:
  __break(1u);
  return result;
}

uint64_t sub_264DB92B0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_264E238E8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_264E23CB8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_264E23D18();
  v14 = *(v47 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v47);
  v46 = v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_264E23DA8();
  v45 = *(result + 16);
  if (v45)
  {
    v35[0] = v8;
    v35[1] = a1;
    v36 = v5;
    v37 = v2;
    v38 = v4;
    v39 = result;
    v18 = 0;
    v19 = 0;
    v44 = result + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v42 = v14 + 8;
    v43 = v14 + 16;
    v40 = v14;
    v41 = v10;
    v20 = (v10 + 8);
    v21 = v14;
    v22 = result;
    while (v19 < *(v22 + 16))
    {
      v23 = *(v21 + 72);
      v49 = v19;
      v24 = v46;
      v25 = v47;
      (*(v21 + 16))(v46, v44 + v23 * v19, v47);
      v26 = sub_264E23D08();
      (*(v21 + 8))(v24, v25);
      v27 = *(v26 + 16);
      if (v27)
      {
        v28 = (*(v41 + 80) + 32) & ~*(v41 + 80);
        v48 = v26;
        v29 = v26 + v28;
        v30 = *(v41 + 72);
        v31 = *(v41 + 16);
        while (1)
        {
          v31(v13, v29, v9);
          v32 = sub_264E23C98();
          result = (*v20)(v13, v9);
          v33 = __OFADD__(v18, v32);
          v18 += v32;
          if (v33)
          {
            break;
          }

          v29 += v30;
          if (!--v27)
          {

            v22 = v39;
            v21 = v40;
            goto LABEL_4;
          }
        }

        __break(1u);
        break;
      }

LABEL_4:
      v19 = v49 + 1;
      if (v49 + 1 == v45)
      {

        v34 = v18;
        v4 = v38;
        v5 = v36;
        v8 = v35[0];
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {

    v34 = 0.0;
LABEL_13:
    sub_264E23D98();
    sub_264DB5838(v34, v8, 0, 1, &qword_27FFB20B8, &qword_264E270F0);
    return (*(v5 + 8))(v8, v4);
  }

  return result;
}

void sub_264DB9640(uint64_t a1)
{
  v209 = a1;
  v206 = type metadata accessor for OverviewChart.Model(0);
  v2 = *(*(v206 - 8) + 64);
  MEMORY[0x28223BE20](v206);
  v153 = &v151 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_264E23C38();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v158 = &v151 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v157 = &v151 - v9;
  v194 = sub_264E23B98();
  v10 = *(v194 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v194);
  v193 = &v151 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v192 = sub_264E23B78();
  v13 = *(v192 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v192);
  v191 = &v151 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v190 = sub_264E23B38();
  v16 = *(v190 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v190);
  v189 = &v151 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1CE0, &unk_264E26AE0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v188 = &v151 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1C50, &unk_264E267D0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v187 = &v151 - v24;
  v186 = sub_264E23928();
  v25 = *(v186 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v186);
  v185 = &v151 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v204 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1858, &unk_264E26200);
  v28 = *(*(v204 - 8) + 64);
  MEMORY[0x28223BE20](v204);
  v220 = &v151 - v29;
  v173 = sub_264E23C18();
  v30 = *(v173 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v173);
  v172 = &v151 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1860, &qword_264E267E0);
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x28223BE20](v33 - 8);
  v156 = &v151 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v164 = &v151 - v37;
  MEMORY[0x28223BE20](v38);
  v203 = &v151 - v39;
  MEMORY[0x28223BE20](v40);
  v42 = &v151 - v41;
  MEMORY[0x28223BE20](v43);
  v202 = &v151 - v44;
  v221 = sub_264E23AA8();
  v166 = *(v221 - 8);
  v45 = *(v166 + 64);
  MEMORY[0x28223BE20](v221);
  v155 = &v151 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v47);
  v159 = &v151 - v48;
  MEMORY[0x28223BE20](v49);
  v161 = &v151 - v50;
  MEMORY[0x28223BE20](v51);
  v211 = &v151 - v52;
  MEMORY[0x28223BE20](v53);
  v218 = &v151 - v54;
  v207 = sub_264E238E8();
  v165 = *(v207 - 8);
  v55 = *(v165 + 64);
  MEMORY[0x28223BE20](v207);
  v163 = &v151 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v57);
  v201 = &v151 - v58;
  v154 = type metadata accessor for NotificationsOverviewChart.Model(0);
  v208 = *(v154 - 8);
  v59 = *(v208 + 64);
  MEMORY[0x28223BE20](v154);
  v152 = &v151 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v61);
  v160 = &v151 - v62;
  MEMORY[0x28223BE20](v63);
  v219 = (&v151 - v64);
  v167 = v1;
  v65 = *v1;
  v66 = *(*v1 + 16);
  v162 = v5;
  v200 = v66;
  v205 = v65;
  if (v66)
  {
    v67 = 0;
    v151 = (*(v208 + 80) + 32) & ~*(v208 + 80);
    v198 = v65 + v151;
    v197 = (v165 + 8);
    v217 = (v166 + 8);
    v171 = *MEMORY[0x277CC99B8];
    v170 = (v30 + 104);
    v169 = (v30 + 8);
    v184 = (v5 + 56);
    v183 = *MEMORY[0x277CC9878];
    v182 = (v16 + 104);
    v181 = (v13 + 104);
    v180 = (v10 + 104);
    v179 = *MEMORY[0x277CC98F0];
    v178 = (v10 + 8);
    v177 = (v13 + 8);
    v176 = *MEMORY[0x277CC9900];
    v175 = (v16 + 8);
    v174 = (v25 + 8);
    v216 = (v166 + 16);
    v210 = (v166 + 56);
    v196 = (v166 + 48);
    v168 = (v166 + 32);
    v213 = v4;
    v199 = v42;
    while (1)
    {
      if (v67 >= v65[2])
      {
        __break(1u);
        goto LABEL_33;
      }

      v70 = *(v208 + 72);
      v215 = v67;
      v195 = v70 * v67;
      v71 = v219;
      sub_264DBD27C(&v198[v70 * v67], v219, type metadata accessor for NotificationsOverviewChart.Model);
      v72 = v201;
      sub_264E23D98();
      v73 = v218;
      _s16ScreenTimeUICore11DetailChartV4HourV2id10Foundation4DateVvg_0();
      (*v197)(v72, v207);
      v74 = *(v206 + 24);
      v75 = v211;
      sub_264E23AF8();
      v76 = sub_264E23A78();
      v214 = *v217;
      v214(v75, v221);
      v77 = v216 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      if ((v76 & 1) == 0)
      {
        goto LABEL_10;
      }

      v78 = v172;
      v79 = v173;
      (*v170)(v172, v171, v173);
      v80 = sub_264E23C28();
      (*v169)(v78, v79);
      if (v80 == sub_264E23B18())
      {
        v81 = *v216;
        v82 = v202;
        v83 = v221;
        (*v216)(v202, v73, v221);
        (*v210)(v82, 0, 1, v83);
      }

      else
      {
LABEL_10:
        (*v184)(v187, 1, 1, v213);
        v84 = sub_264E23C48();
        v85 = *(*(v84 - 8) + 56);
        v212 = v77;
        v85(v188, 1, 1, v84);
        sub_264E23B18();
        v86 = v185;
        sub_264E23918();
        v87 = v189;
        v88 = v190;
        (*v182)(v189, v183, v190);
        v89 = v191;
        v90 = v192;
        (*v181)(v191, v179, v192);
        v91 = v193;
        v92 = v194;
        (*v180)(v193, v176, v194);
        v93 = v202;
        sub_264E23C08();
        v94 = v91;
        v71 = v219;
        (*v178)(v94, v92);
        v82 = v93;
        (*v177)(v89, v90);
        (*v175)(v87, v88);
        (*v174)(v86, v186);
        v81 = *v216;
      }

      v95 = v199;
      v96 = v221;
      v81(v199, v71, v221);
      (*v210)(v95, 0, 1, v96);
      v97 = *(v204 + 48);
      v98 = v220;
      sub_264D93A14(v82, v220);
      sub_264D93A14(v95, &v98[v97]);
      v99 = *v196;
      if ((*v196)(v98, 1, v96) == 1)
      {
        break;
      }

      v100 = v220;
      sub_264D93A14(v220, v203);
      v101 = v99(&v100[v97], 1, v221);
      v65 = v205;
      v102 = v218;
      if (v101 == 1)
      {
        sub_264D817BC(v95, &qword_27FFB1860, &qword_264E267E0);
        sub_264D817BC(v82, &qword_27FFB1860, &qword_264E267E0);
        v103 = v221;
        v104 = v214;
        v214(v102, v221);
        sub_264DBD184(v219, type metadata accessor for NotificationsOverviewChart.Model);
        v104(v203, v103);
LABEL_4:
        sub_264D817BC(v220, &qword_27FFB1858, &unk_264E26200);
        goto LABEL_5;
      }

      v105 = v221;
      v106 = v211;
      (*v168)(v211, &v220[v97], v221);
      sub_264DBD13C(&qword_27FFB1868, MEMORY[0x277CC9578]);
      v107 = v203;
      LODWORD(v212) = sub_264E25068();
      v108 = v214;
      v214(v106, v105);
      sub_264D817BC(v95, &qword_27FFB1860, &qword_264E267E0);
      sub_264D817BC(v82, &qword_27FFB1860, &qword_264E267E0);
      v108(v102, v105);
      sub_264DBD184(v219, type metadata accessor for NotificationsOverviewChart.Model);
      v108(v107, v105);
      sub_264D817BC(v220, &qword_27FFB1860, &qword_264E267E0);
      if (v212)
      {
        goto LABEL_28;
      }

LABEL_5:
      v67 = v215 + 1;
      v4 = v213;
      if (v200 == v215 + 1)
      {
        goto LABEL_16;
      }
    }

    sub_264D817BC(v95, &qword_27FFB1860, &qword_264E267E0);
    sub_264D817BC(v82, &qword_27FFB1860, &qword_264E267E0);
    v68 = v221;
    v214(v218, v221);
    sub_264DBD184(v71, type metadata accessor for NotificationsOverviewChart.Model);
    v69 = v99(&v220[v97], 1, v68);
    v65 = v205;
    if (v69 == 1)
    {
      sub_264D817BC(v220, &qword_27FFB1860, &qword_264E267E0);
LABEL_28:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v65 = sub_264E15DBC(v65);
      }

      v150 = v167;
      if (v215 < v65[2])
      {
        sub_264DBAD20();
        *v150 = v65;
        return;
      }

      __break(1u);
LABEL_35:
      __break(1u);
      return;
    }

    goto LABEL_4;
  }

LABEL_16:
  v109 = *(type metadata accessor for NotificationsOverviewTabView.Model(0) + 20);
  v110 = v163;
  sub_264E23D98();
  v111 = v211;
  _s16ScreenTimeUICore11DetailChartV4HourV2id10Foundation4DateVvg_0();
  (*(v165 + 8))(v110, v207);
  v112 = v167;
  v113 = v164;
  Calendar.startOfWeek(containing:)(v111, v164);
  v114 = v166;
  v115 = (v166 + 8);
  v116 = v221;
  v220 = *(v166 + 8);
  (v220)(v111, v221);
  v117 = v114[6];
  if ((v117)(v113, 1, v116) == 1)
  {
    sub_264D817BC(v113, &qword_27FFB1860, &qword_264E267E0);
    if (qword_27FFB1688 != -1)
    {
LABEL_33:
      swift_once();
    }

    v118 = sub_264E23FC8();
    __swift_project_value_buffer(v118, qword_27FFB2028);
    v119 = sub_264E23FA8();
    v120 = sub_264E252A8();
    if (os_log_type_enabled(v119, v120))
    {
      v121 = swift_slowAlloc();
      *v121 = 0;
      _os_log_impl(&dword_264D7D000, v119, v120, "Could not compute start of week; skipping activity segment", v121, 2u);
      MEMORY[0x26674FCD0](v121, -1, -1);
    }
  }

  else
  {
    v217 = v115;
    v218 = v109;
    v122 = v4;
    v123 = v114[4];
    v219 = v117;
    v124 = v159;
    v125 = v161;
    v126 = v221;
    v215 = v123;
    v216 = (v114 + 4);
    (v123)(v161, v113, v221);
    v127 = v114[2];
    v127(v124, v125, v126);
    v128 = *(v162 + 16);
    v129 = v157;
    v128(v157, &v218[v112], v122);
    v127((v160 + *(v154 + 20)), v124, v126);
    v130 = v155;
    v131 = v124;
    v132 = v129;
    v127(v155, v131, v126);
    v133 = v158;
    v134 = v122;
    v128(v158, v129, v122);
    v218 = sub_264E24C58();
    v135 = v156;
    Calendar.startOfWeek(containing:)(v130, v156);
    if ((v219)(v135, 1, v126) == 1)
    {
      goto LABEL_35;
    }

    v137 = v220;
    v136 = v221;
    (v220)(v130, v221);
    v138 = v162;
    v139 = v132;
    v140 = v134;
    (*(v162 + 8))(v139, v134);
    v137(v159, v136);
    v141 = v153;
    v215(v153, v135, v136);
    v142 = v206;
    *(v141 + *(v206 + 20)) = MEMORY[0x277D84F90];
    (*(v138 + 32))(v141 + v142[6], v133, v140);
    *(v141 + v142[7]) = v218;
    *(v141 + v142[8]) = 1;
    v143 = v160;
    sub_264DBD214(v141, v160, type metadata accessor for OverviewChart.Model);
    sub_264DBAD20();
    v144 = v152;
    sub_264DBD27C(v143, v152, type metadata accessor for NotificationsOverviewChart.Model);
    v145 = v205;
    v146 = v143;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v145 = sub_264DBC1A0(0, v145[2] + 1, 1, v145, &qword_27FFB1BA8, &qword_264E26630, type metadata accessor for NotificationsOverviewChart.Model);
    }

    v147 = v167;
    v149 = v145[2];
    v148 = v145[3];
    if (v149 >= v148 >> 1)
    {
      v145 = sub_264DBC1A0(v148 > 1, v149 + 1, 1, v145, &qword_27FFB1BA8, &qword_264E26630, type metadata accessor for NotificationsOverviewChart.Model);
    }

    sub_264DBD184(v146, type metadata accessor for NotificationsOverviewChart.Model);
    v137(v161, v221);
    v145[2] = v149 + 1;
    sub_264DBD214(v144, v145 + ((*(v208 + 80) + 32) & ~*(v208 + 80)) + *(v208 + 72) * v149, type metadata accessor for NotificationsOverviewChart.Model);
    *v147 = v145;
  }
}

uint64_t sub_264DBAD20()
{
  v0 = sub_264E23CB8();
  v45 = *(v0 - 8);
  v1 = *(v45 + 64);
  MEMORY[0x28223BE20](v0);
  v3 = v42 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_264E23D18();
  v44 = *(v53 - 8);
  v4 = *(v44 + 64);
  MEMORY[0x28223BE20](v53);
  v52 = v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_264E23C38();
  v6 = *(v54 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v54);
  v49 = v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_264E23AA8();
  v50 = *(v9 - 8);
  v51 = v9;
  v10 = *(v50 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_264E238E8();
  v13 = *(v48 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v48);
  v16 = v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for OverviewChart.Day(0);
  v18 = v17 - 8;
  v19 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v21 = v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264E23D98();
  _s16ScreenTimeUICore11DetailChartV4HourV2id10Foundation4DateVvg_0();
  (*(v13 + 8))(v16, v48);
  v22 = type metadata accessor for OverviewChart.Model(0);
  v23 = v49;
  v24 = v54;
  (*(v6 + 16))(v49, v42[1] + *(v22 + 24), v54);
  sub_264E23AF8();
  (*(v6 + 8))(v23, v24);
  (*(v50 + 8))(v12, v51);
  v25 = *(v18 + 28);
  v46 = v21;
  v43 = v25;
  *&v21[v25] = 0;
  result = sub_264E23DA8();
  v51 = *(result + 16);
  if (v51)
  {
    v27 = 0;
    v29 = v44;
    v28 = v45;
    v49 = (result + ((*(v29 + 80) + 32) & ~*(v29 + 80)));
    v50 = result;
    v47 = v44 + 8;
    v48 = v44 + 16;
    v30 = (v45 + 8);
    v31 = 0.0;
    while (v27 < *(result + 16))
    {
      v32 = v52;
      v33 = v53;
      (*(v29 + 16))(v52, &v49[*(v29 + 72) * v27], v53);
      v34 = sub_264E23D08();
      (*(v29 + 8))(v32, v33);
      v35 = *(v34 + 16);
      if (v35)
      {
        v36 = (*(v28 + 80) + 32) & ~*(v28 + 80);
        v54 = v34;
        v37 = v34 + v36;
        v38 = *(v28 + 72);
        v39 = *(v28 + 16);
        do
        {
          v39(v3, v37, v0);
          v40 = sub_264E23C98();
          (*v30)(v3, v0);
          v31 = v31 + v40;
          v37 += v38;
          --v35;
        }

        while (v35);

        v28 = v45;
        v29 = v44;
        *&v46[v43] = v31;
      }

      else
      {
      }

      result = v50;
      if (++v27 == v51)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_10:

    v41 = v46;
    sub_264DAE2D0(v46);
    return sub_264DBD184(v41, type metadata accessor for OverviewChart.Day);
  }

  return result;
}

size_t sub_264DBB24C(uint64_t a1)
{
  v67 = a1;
  v3 = sub_264E23C38();
  v53 = *(v3 - 8);
  v54 = v3;
  v4 = *(v53 + 64);
  MEMORY[0x28223BE20](v3);
  v52 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_264E23AA8();
  v6 = *(v66 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v66);
  v57 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v59 = &v51 - v10;
  MEMORY[0x28223BE20](v11);
  v62 = &v51 - v12;
  v61 = sub_264E238E8();
  v13 = *(v61 - 8);
  v14 = v13[8];
  MEMORY[0x28223BE20](v61);
  v16 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for NotificationsDetailChart.Model(0);
  v63 = *(v17 - 8);
  v18 = *(v63 + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v55 = (&v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v20);
  v56 = &v51 - v21;
  MEMORY[0x28223BE20](v22);
  v24 = &v51 - v23;
  v25 = 0;
  v58 = v1;
  v65 = *v1;
  v64 = v65[2];
  v60 = (v13 + 1);
  v51 = v6;
  v68 = (v6 + 8);
  v26 = v62;
  do
  {
    if (v64 == v25)
    {
      v33 = *(type metadata accessor for NotificationsDetailTabView.Model(0) + 20);
      sub_264E23D98();
      v34 = v62;
      _s16ScreenTimeUICore11DetailChartV4HourV2id10Foundation4DateVvg_0();
      (*v60)(v16, v61);
      v35 = v57;
      v36 = v58;
      sub_264E23AF8();
      v37 = v51;
      v64 = *(v51 + 8);
      v38 = v66;
      v64(v34, v66);
      v39 = *(v37 + 16);
      v39(v34, v35, v38);
      v40 = v53;
      v41 = *(v53 + 16);
      v42 = v36 + v33;
      v43 = v52;
      v44 = v54;
      v41(v52, v42, v54);
      v45 = v56;
      v39(v56, v34, v38);
      v46 = type metadata accessor for DetailChart.Model(0);
      v41((v45 + v46[6]), v43, v44);
      v47 = sub_264E24C58();
      v48 = v43;
      v6 = v64;
      (*(v40 + 8))(v48, v44);
      (v6)(v34, v38);
      *(v45 + v46[5]) = MEMORY[0x277D84F90];
      *(v45 + v46[7]) = v47;
      *(v45 + v46[8]) = 1;
      *(v45 + v46[9]) = 0;
      *(v45 + v46[10]) = 0x40AC200000000000;
      sub_264DBB95C();
      v2 = v55;
      sub_264DBD27C(v45, v55, type metadata accessor for NotificationsDetailChart.Model);
      v13 = v65;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
LABEL_10:
        v50 = v13[2];
        v49 = v13[3];
        if (v50 >= v49 >> 1)
        {
          v13 = sub_264DBC1A0(v49 > 1, v50 + 1, 1, v13, &qword_27FFB1BE8, &unk_264E26670, type metadata accessor for NotificationsDetailChart.Model);
        }

        sub_264DBD184(v56, type metadata accessor for NotificationsDetailChart.Model);
        (v6)(v57, v66);
        v13[2] = v50 + 1;
        result = sub_264DBD214(v2, v13 + ((*(v63 + 80) + 32) & ~*(v63 + 80)) + *(v63 + 72) * v50, type metadata accessor for NotificationsDetailChart.Model);
        goto LABEL_13;
      }

LABEL_15:
      v13 = sub_264DBC1A0(0, v13[2] + 1, 1, v13, &qword_27FFB1BE8, &unk_264E26670, type metadata accessor for NotificationsDetailChart.Model);
      goto LABEL_10;
    }

    if (v25 >= v65[2])
    {
      __break(1u);
      goto LABEL_15;
    }

    v27 = (v25 + 1);
    v6 = (*(v63 + 80) + 32) & ~*(v63 + 80);
    sub_264DBD27C(v65 + v6 + *(v63 + 72) * v25, v24, type metadata accessor for NotificationsDetailChart.Model);
    sub_264E23D98();
    _s16ScreenTimeUICore11DetailChartV4HourV2id10Foundation4DateVvg_0();
    (*v60)(v16, v61);
    v28 = &v24[*(type metadata accessor for DetailChart.Model(0) + 24)];
    v29 = v59;
    sub_264E23AF8();
    LOBYTE(v28) = sub_264E23A78();
    v13 = v68;
    v2 = *v68;
    v30 = v29;
    v31 = v66;
    (*v68)(v30, v66);
    v2(v26, v31);
    sub_264DBD184(v24, type metadata accessor for NotificationsDetailChart.Model);
    v25 = v27;
  }

  while ((v28 & 1) == 0);
  v13 = v65;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_264E15E20(v13);
    v13 = result;
  }

  if ((v27 - 1) < v13[2])
  {
    result = sub_264DBB95C();
LABEL_13:
    *v58 = v13;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_264DBB95C()
{
  v1 = sub_264E23CB8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_264E23D18();
  v6 = *(v41 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v41);
  v40 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DetailChart.Hour(0);
  v10 = v9 - 8;
  v11 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264E23D98();
  v34 = *(v10 + 28);
  v35 = v13;
  *&v13[v34] = 0;
  result = sub_264E23DA8();
  v15 = result;
  v39 = *(result + 16);
  if (v39)
  {
    v30[1] = v0;
    v31 = result;
    v16 = 0;
    v38 = result + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v36 = v6 + 8;
    v37 = v6 + 16;
    v32 = v6;
    v33 = v2;
    v17 = (v2 + 8);
    v18 = 0.0;
    while (v16 < *(v15 + 16))
    {
      v20 = v40;
      v19 = v41;
      (*(v6 + 16))(v40, v38 + *(v6 + 72) * v16, v41);
      v21 = sub_264E23D08();
      (*(v6 + 8))(v20, v19);
      v22 = v21;
      v23 = *(v21 + 16);
      if (v23)
      {
        v24 = (*(v33 + 80) + 32) & ~*(v33 + 80);
        v42 = v22;
        v25 = v22 + v24;
        v26 = *(v33 + 72);
        v27 = *(v33 + 16);
        do
        {
          v27(v5, v25, v1);
          v28 = sub_264E23C98();
          (*v17)(v5, v1);
          v18 = v18 + v28;
          v25 += v26;
          --v23;
        }

        while (v23);

        *&v35[v34] = v18;
        v15 = v31;
        v6 = v32;
      }

      else
      {
      }

      if (++v16 == v39)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_10:

    v29 = v35;
    sub_264DADF4C(v35);
    return sub_264DBD184(v29, type metadata accessor for DetailChart.Hour);
  }

  return result;
}

char *sub_264DBBD58(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * ((v13 - 32) / 56);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[56 * v10])
    {
      memmove(v14, v15, 56 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

uint64_t sub_264DBBFD0(uint64_t a1, uint64_t a2)
{
  v4 = sub_264E23E88();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_264DBC050(uint64_t a1, uint64_t a2)
{
  v4 = sub_264E23E88();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for ModelProvider()
{
  result = qword_27FFB2040;
  if (!qword_27FFB2040)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_264DBC10C()
{
  result = sub_264E23E88();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

size_t sub_264DBC1A0(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_264DBC3B4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1C88, qword_264E27110);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_264DBC4C0(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1B80, &unk_264E27060);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1B88, &qword_264E26610);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_264DBC624(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * ((v13 - 32) / 24);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[24 * v10])
    {
      memmove(v14, v15, 24 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

uint64_t sub_264DBC7A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_264D9D5F4(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v23 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_264DA1DB0();
      v11 = v23;
    }

    v12 = *(v11 + 48);
    v13 = sub_264E23AA8();
    (*(*(v13 - 8) + 8))(v12 + *(*(v13 - 8) + 72) * v8, v13);
    v14 = *(v11 + 56);
    v15 = type metadata accessor for PickupsDetailLegendView.DayPickups(0);
    v22 = *(v15 - 8);
    sub_264DBD214(v14 + *(v22 + 72) * v8, a2, type metadata accessor for PickupsDetailLegendView.DayPickups);
    sub_264DA07C4(v8, v11);
    *v3 = v11;
    v16 = *(v22 + 56);
    v17 = a2;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = type metadata accessor for PickupsDetailLegendView.DayPickups(0);
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a2;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

unint64_t sub_264DBC944(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = *v3;
  v6 = *(*v3 + 16);
  if (v6 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = __OFSUB__(1, v8);
  v10 = 1 - v8;
  if (v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = v6 + v10;
  if (__OFADD__(v6, v10))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v13 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v5;
  if (!isUniquelyReferenced_nonNull_native || v11 > v5[3] >> 1)
  {
    if (v6 <= v11)
    {
      v15 = v11;
    }

    else
    {
      v15 = v6;
    }

    v5 = sub_264DBC1A0(isUniquelyReferenced_nonNull_native, v15, 1, v5, &qword_27FFB1BF8, &qword_264E27100, type metadata accessor for UsageOverviewChart.Day);
    *v3 = v5;
  }

  result = sub_264DBCE04(v7, a2, 1, a3, type metadata accessor for UsageOverviewChart.Day, type metadata accessor for UsageOverviewChart.Day, &qword_27FFB20C0, &qword_264E270F8);
  *v3 = v5;
  return result;
}

unint64_t sub_264DBCA74(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = *v3;
  v6 = *(*v3 + 16);
  if (v6 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = __OFSUB__(1, v8);
  v10 = 1 - v8;
  if (v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = v6 + v10;
  if (__OFADD__(v6, v10))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v13 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v5;
  if (!isUniquelyReferenced_nonNull_native || v11 > v5[3] >> 1)
  {
    if (v6 <= v11)
    {
      v15 = v11;
    }

    else
    {
      v15 = v6;
    }

    v5 = sub_264DBC1A0(isUniquelyReferenced_nonNull_native, v15, 1, v5, &qword_27FFB1BD0, &unk_264E27090, type metadata accessor for OverviewChart.Day);
    *v3 = v5;
  }

  result = sub_264DBCE04(v7, a2, 1, a3, type metadata accessor for OverviewChart.Day, type metadata accessor for OverviewChart.Day, &qword_27FFB2070, &qword_264E27088);
  *v3 = v5;
  return result;
}

unint64_t sub_264DBCBA4(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = *v3;
  v6 = *(*v3 + 16);
  if (v6 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = __OFSUB__(1, v8);
  v10 = 1 - v8;
  if (v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = v6 + v10;
  if (__OFADD__(v6, v10))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v13 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v5;
  if (!isUniquelyReferenced_nonNull_native || v11 > v5[3] >> 1)
  {
    if (v6 <= v11)
    {
      v15 = v11;
    }

    else
    {
      v15 = v6;
    }

    v5 = sub_264DBC1A0(isUniquelyReferenced_nonNull_native, v15, 1, v5, &qword_27FFB1B58, &qword_264E265E0, type metadata accessor for UsageDetailChart.HourlyUsage);
    *v3 = v5;
  }

  result = sub_264DBCE04(v7, a2, 1, a3, type metadata accessor for UsageDetailChart.HourlyUsage, type metadata accessor for UsageDetailChart.HourlyUsage, &qword_27FFB20B0, &unk_264E270E0);
  *v3 = v5;
  return result;
}

unint64_t sub_264DBCCD4(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = *v3;
  v6 = *(*v3 + 16);
  if (v6 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = __OFSUB__(1, v8);
  v10 = 1 - v8;
  if (v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = v6 + v10;
  if (__OFADD__(v6, v10))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v13 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v5;
  if (!isUniquelyReferenced_nonNull_native || v11 > v5[3] >> 1)
  {
    if (v6 <= v11)
    {
      v15 = v11;
    }

    else
    {
      v15 = v6;
    }

    v5 = sub_264DBC1A0(isUniquelyReferenced_nonNull_native, v15, 1, v5, &qword_27FFB1BC8, &unk_264E26650, type metadata accessor for DetailChart.Hour);
    *v3 = v5;
  }

  result = sub_264DBCE04(v7, a2, 1, a3, type metadata accessor for DetailChart.Hour, type metadata accessor for DetailChart.Hour, &qword_27FFB2098, &qword_264E270C0);
  *v3 = v5;
  return result;
}

unint64_t sub_264DBCE04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t *a7, uint64_t *a8)
{
  v15 = *v8;
  result = a5(0);
  v18 = *(*(result - 8) + 72);
  v19 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v31 = a7;
  v32 = a8;
  v17 = *(*(result - 8) + 80);
  v20 = v15 + ((v17 + 32) & ~v17);
  v21 = v20 + v18 * a1;
  result = swift_arrayDestroy();
  v22 = a3 - v19;
  if (__OFSUB__(a3, v19))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v23 = v18 * a3;
  if (v22)
  {
    v24 = *(v15 + 16);
    if (!__OFSUB__(v24, a2))
    {
      result = v21 + v23;
      v25 = v20 + v18 * a2;
      if (v21 + v23 < v25 || result >= v25 + (v24 - a2) * v18)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v25)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v27 = *(v15 + 16);
      v28 = __OFADD__(v27, v22);
      v29 = v27 + v22;
      if (!v28)
      {
        *(v15 + 16) = v29;
        goto LABEL_15;
      }

LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

LABEL_15:
  if (a3 < 1)
  {
    return sub_264D817BC(a4, v31, v32);
  }

  if (v23 < 1)
  {
    return sub_264D817BC(a4, v31, v32);
  }

  result = sub_264DBD27C(a4, v21, a6);
  if (v18 >= v23)
  {
    return sub_264D817BC(a4, v31, v32);
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_264DBD024(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB20A8, &qword_264E270C8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_264DBD0D4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_264DBD13C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_264DBD184(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_264DBD214(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_264DBD27C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

id AgeMigrationTipViewControllerFactory.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AgeMigrationTipViewControllerFactory.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AgeMigrationTipViewControllerFactory();
  return objc_msgSendSuper2(&v2, sel_init);
}

id AgeMigrationTipViewControllerFactory.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AgeMigrationTipViewControllerFactory();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id _s16ScreenTimeUICore36AgeMigrationTipViewControllerFactoryC06createdeF013ageOfMajority13userFirstName11actionBlock07dismissR0So06UIViewH0CSi_SSyycyyctFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = sub_264E24968();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  *&v26 = 0xD000000000000033;
  *(&v26 + 1) = 0x8000000264E2BC20;
  *&v27 = 0xD000000000000026;
  *(&v27 + 1) = 0x8000000264E2BC60;
  *&v28 = a1;
  *(&v28 + 1) = a2;
  *&v29 = a3;
  *(&v29 + 1) = a4;
  *&v30 = a5;
  *(&v30 + 1) = a6;
  v31 = a7;
  v23 = v29;
  v24 = v30;
  v25 = a7;
  *&v20[88] = v26;
  v21 = v27;
  v22 = v28;
  objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB20D0, &qword_264E27178));

  sub_264DBD744(&v26, v20);
  v16 = sub_264E24848();
  result = [v16 view];
  if (result)
  {
    v18 = result;
    v19 = [objc_opt_self() clearColor];
    [v18 setBackgroundColor_];

    sub_264E24958();
    sub_264E24838();

    sub_264DBD7A0(&v26);
    return v16;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_264DBD704()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t PickupsDetailChart.body.getter()
{
  v1 = v0;
  v2 = type metadata accessor for PickupsDetailChart.Model(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DetailChart(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264DBD98C(v1, v5);
  sub_264DBD9F0(v5, v9);
  *&v9[*(v6 + 20)] = *(v1 + *(type metadata accessor for PickupsDetailChart(0) + 24));
  sub_264DBE240(&qword_27FFB20D8, type metadata accessor for DetailChart);

  sub_264E24C08();
  return sub_264DBDBD8(v9);
}

uint64_t sub_264DBD98C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PickupsDetailChart.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_264DBD9F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DetailChart.Model(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_264DBDA74(uint64_t a1)
{
  v3 = type metadata accessor for PickupsDetailChart.Model(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DetailChart(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264DBD98C(v1, v6);
  sub_264DBD9F0(v6, v10);
  *&v10[*(v7 + 20)] = *(v1 + *(a1 + 24));
  sub_264DBE240(&qword_27FFB20D8, type metadata accessor for DetailChart);

  sub_264E24C08();
  return sub_264DBDBD8(v10);
}

uint64_t sub_264DBDBD8(uint64_t a1)
{
  v2 = type metadata accessor for DetailChart(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_264DBDC64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PickupsDetailChart.Model(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for DetailChart.Model(0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  v15 = v14 - 1;
  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

uint64_t sub_264DBDD90(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for PickupsDetailChart.Model(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for DetailChart.Model(0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

void sub_264DBDE98()
{
  type metadata accessor for PickupsDetailChart.Model(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for DetailChart.Model(319);
    if (v1 <= 0x3F)
    {
      sub_264DBDF34();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_264DBDF34()
{
  if (!qword_27FFB20F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB20F8, &unk_264E27330);
    v0 = sub_264E25318();
    if (!v1)
    {
      atomic_store(v0, &qword_27FFB20F0);
    }
  }
}

unint64_t sub_264DBDF9C()
{
  result = qword_27FFB2100;
  if (!qword_27FFB2100)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB2108, "ެ");
    sub_264DBE240(&qword_27FFB20D8, type metadata accessor for DetailChart);
    sub_264DBE240(&qword_27FFB1B10, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB2100);
  }

  return result;
}

uint64_t sub_264DBE09C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DetailChart.Model(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_264DBE11C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DetailChart.Model(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_264DBE18C()
{
  result = type metadata accessor for DetailChart.Model(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_264DBE240(unint64_t *a1, void (*a2)(uint64_t))
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

BOOL sub_264DBE288(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (sub_264E23A78())
  {
    v4 = type metadata accessor for DetailChart.Model(0);
    if (sub_264D84338(*(a1 + v4[5]), *(a2 + v4[5])) & 1) != 0 && (MEMORY[0x26674DD10](a1 + v4[6], a2 + v4[6]))
    {
      v5 = v4[7];
      v6 = *(a1 + v5);
      v7 = *(a2 + v5);
      if ((sub_264E24C48() & 1) != 0 && *(a1 + v4[8]) == *(a2 + v4[8]) && *(a1 + v4[9]) == *(a2 + v4[9]) && *(a1 + v4[10]) == *(a2 + v4[10]))
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t NotificationsDetailChart.body.getter()
{
  v1 = v0;
  v2 = type metadata accessor for NotificationsDetailChart.Model(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DetailChart(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264DA76B4(v1, v5);
  sub_264DBD9F0(v5, v9);
  *&v9[*(v6 + 20)] = *(v1 + *(type metadata accessor for NotificationsDetailChart(0) + 24));
  sub_264DBE240(&qword_27FFB20D8, type metadata accessor for DetailChart);

  sub_264E24C08();
  return sub_264DBDBD8(v9);
}

uint64_t sub_264DBE4F8(uint64_t a1)
{
  v3 = type metadata accessor for NotificationsDetailChart.Model(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DetailChart(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264DA76B4(v1, v6);
  sub_264DBD9F0(v6, v10);
  *&v10[*(v7 + 20)] = *(v1 + *(a1 + 24));
  sub_264DBE240(&qword_27FFB20D8, type metadata accessor for DetailChart);

  sub_264E24C08();
  return sub_264DBDBD8(v10);
}

uint64_t sub_264DBE68C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for NotificationsDetailChart.Model(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for DetailChart.Model(0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  v15 = v14 - 1;
  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

uint64_t sub_264DBE7B8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for NotificationsDetailChart.Model(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for DetailChart.Model(0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

void sub_264DBE8C0()
{
  type metadata accessor for NotificationsDetailChart.Model(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for DetailChart.Model(319);
    if (v1 <= 0x3F)
    {
      sub_264DBDF34();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_264DBE974(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DetailChart.Model(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_264DBE9F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DetailChart.Model(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t dispatch thunk of ModelProviding.addHourlyData(toDataModel:forDateInterval:userAltDSID:deviceIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = *(a8 + 16);
  v21 = (v17 + *v17);
  v18 = v17[1];
  v19 = swift_task_alloc();
  *(v8 + 16) = v19;
  *v19 = v8;
  v19[1] = sub_264D9A59C;

  return v21(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t PickupsDetailTabView.Model.init(calendar:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = *(type metadata accessor for PickupsDetailTabView.Model(0) + 20);
  v5 = sub_264E23C38();
  result = (*(*(v5 - 8) + 32))(&a2[v4], a1, v5);
  *a2 = MEMORY[0x277D84F90];
  return result;
}

uint64_t sub_264DBECDC@<X0>(char *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v44 = a3;
  v6 = sub_264E23C38();
  v42 = *(v6 - 8);
  v7 = *(v42 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_264E23AA8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v43 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB21D0, &qword_264E274E8);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v35 - v16;
  v18 = *a2;
  v19 = a1;
  v45 = a1;
  sub_264D93CD0(sub_264DC05A0, v18, &v35 - v16);
  v46 = v3;
  v20 = type metadata accessor for PickupsDetailChart.Model(0);
  v21 = *(v20 - 8);
  v22 = *(v21 + 48);
  v40 = v21 + 48;
  v41 = v22;
  if (v22(v17, 1, v20) != 1)
  {
    return sub_264DC05C0(v17, v44, type metadata accessor for PickupsDetailChart.Model);
  }

  v23 = v9;
  v38 = v11;
  v24 = *(v11 + 16);
  v35 = a2;
  v36 = v24;
  v25 = v43;
  v24(v43, v19, v10);
  v26 = *(type metadata accessor for PickupsDetailTabView.Model(0) + 20);
  v27 = v6;
  v39 = v20;
  v28 = v42;
  v29 = v44;
  v37 = v17;
  v30 = *(v42 + 16);
  v30(v9, v35 + v26, v6);
  v36(v29, v25, v10);
  v31 = type metadata accessor for DetailChart.Model(0);
  v30((v29 + v31[6]), v23, v6);
  v32 = v37;
  v33 = sub_264E24C78();
  (*(v28 + 8))(v23, v27);
  (*(v38 + 8))(v43, v10);
  *(v29 + v31[5]) = MEMORY[0x277D84F90];
  *(v29 + v31[7]) = v33;
  *(v29 + v31[8]) = 1;
  *(v29 + v31[9]) = 1;
  *(v29 + v31[10]) = 0x40AC200000000000;
  result = v41(v32, 1, v39);
  if (result != 1)
  {
    return sub_264D817BC(v32, &qword_27FFB21D0, &qword_264E274E8);
  }

  return result;
}

uint64_t sub_264DBF088(uint64_t a1)
{
  v2 = sub_264E23AA8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a1 + *(type metadata accessor for DetailChart.Model(0) + 24);
  sub_264E23AF8();
  LOBYTE(v7) = sub_264E23A78();
  (*(v3 + 8))(v6, v2);
  return v7 & 1;
}

uint64_t PickupsDetailTabView.body.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2140, &qword_264E273E0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v7 - v3;
  *v4 = sub_264E24818();
  *(v4 + 1) = 0;
  v4[16] = 1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2148, &qword_264E273E8);
  sub_264DBF2B0(v0, &v4[*(v5 + 44)]);
  sub_264D81DCC(&qword_27FFB2150, &qword_27FFB2140, &qword_264E273E0);
  sub_264E24C08();
  return sub_264DBFD74(v4);
}

uint64_t sub_264DBF2B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v3 = sub_264E24538();
  v36 = *(v3 - 8);
  v37 = v3;
  v4 = *(v36 + 64);
  MEMORY[0x28223BE20](v3);
  v35 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v33 - v7;
  v9 = sub_264E24558();
  v10 = *(v9 - 8);
  v38 = v9;
  v39 = v10;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1F70, &qword_264E28470);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v33 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1FB8, &qword_264E26E20);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v33 - v20;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2190, &qword_264E274A0);
  v22 = *(v34 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v34);
  v25 = &v33 - v24;
  v26 = a1 + *(type metadata accessor for PickupsDetailTabView(0) + 20);
  sub_264E24E78();
  swift_getKeyPath();
  sub_264E24E68();

  sub_264D817BC(v17, &qword_27FFB1F70, &qword_264E28470);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1FC8, &qword_264E274D0);
  (*(*(v27 - 8) + 56))(v21, 0, 1, v27);
  v41 = a1;
  sub_264E23AA8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2198, &qword_264E274D8);
  sub_264DC0558(&qword_27FFB19D0, MEMORY[0x277CC9578]);
  sub_264DC0484();
  sub_264E24F48();
  sub_264E24528();
  v28 = v36;
  v29 = v37;
  (*(v36 + 16))(v35, v8, v37);
  sub_264E24548();
  (*(v28 + 8))(v8, v29);
  sub_264D81DCC(&qword_27FFB21B0, &qword_27FFB2190, &qword_264E274A0);
  v30 = v34;
  v31 = v38;
  sub_264E24B68();
  (*(v39 + 8))(v13, v31);
  return (*(v22 + 8))(v25, v30);
}

uint64_t sub_264DBF750@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32[1] = a2;
  v32[0] = sub_264E23AA8();
  v3 = *(v32[0] - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v32[0]);
  v6 = v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v32 - v8;
  v10 = sub_264E238E8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ActivityNavigationState(0);
  v16 = v15 - 8;
  v17 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v19 = v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(type metadata accessor for PickupsDetailTabView(0) + 20);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1F70, &qword_264E28470);
  MEMORY[0x26674EFA0](v21);
  v22 = *(v16 + 28);
  v23 = type metadata accessor for ActivityNavigationState.DateAndBounds(0);
  (*(v11 + 16))(v14, &v19[v22 + *(v23 + 20)], v10);
  sub_264DA75F0(v19);
  LODWORD(v16) = *(type metadata accessor for PickupsDetailTabView.Model(0) + 20);
  _s16ScreenTimeUICore11DetailChartV4HourV2id10Foundation4DateVvg_0();
  sub_264E23888();
  v24 = Calendar.startOfEachDay(fromDayContaining:throughDayExcluding:)();
  v25 = *(v3 + 8);
  v26 = v6;
  v27 = v32[0];
  v25(v26, v32[0]);
  v28 = v25(v9, v27);
  if (v24)
  {
    MEMORY[0x28223BE20](v28);
    v31 = a1;
    v29 = sub_264E0AB7C(sub_264DC0538, &v32[-4], v24);

    (*(v11 + 8))(v14, v10);
    v32[2] = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB21B8, &qword_264E274E0);
    type metadata accessor for PickupsDetailChart(0);
    sub_264D81DCC(&qword_27FFB21C0, &qword_27FFB21B8, &qword_264E274E0);
    sub_264DC0558(&qword_27FFB21A8, type metadata accessor for PickupsDetailChart);
    v31 = sub_264DC0558(&qword_27FFB21C8, type metadata accessor for PickupsDetailChart.Model);
    return sub_264E24EF8();
  }

  else
  {
    result = sub_264E253E8();
    __break(1u);
  }

  return result;
}

uint64_t sub_264DBFB90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PickupsDetailChart.Model(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264DBD98C(a1, v7);
  v8 = type metadata accessor for PickupsDetailChart(0);
  *(a2 + *(v8 + 24)) = 0;
  sub_264DBD98C(v7, a2);
  return sub_264DC05C0(v7, a2 + *(v8 + 20), type metadata accessor for DetailChart.Model);
}

uint64_t sub_264DBFC54()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2140, &qword_264E273E0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v7 - v3;
  *v4 = sub_264E24818();
  *(v4 + 1) = 0;
  v4[16] = 1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2148, &qword_264E273E8);
  sub_264DBF2B0(v0, &v4[*(v5 + 44)]);
  sub_264D81DCC(&qword_27FFB2150, &qword_27FFB2140, &qword_264E273E0);
  sub_264E24C08();
  return sub_264DBFD74(v4);
}

uint64_t sub_264DBFD74(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB2140, &qword_264E273E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_264DBFE0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PickupsDetailTabView.Model(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1F70, &qword_264E28470);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_264DBFF1C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for PickupsDetailTabView.Model(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1F70, &qword_264E28470);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

void sub_264DC0044()
{
  type metadata accessor for PickupsDetailTabView.Model(319);
  if (v0 <= 0x3F)
  {
    sub_264DC0324(319, &qword_27FFB1F88, type metadata accessor for ActivityNavigationState, MEMORY[0x277CE11F8]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_264DC010C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_264E23C38();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_264DC01CC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_264E23C38();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_264DC0270()
{
  sub_264DC0324(319, &qword_27FFB2178, type metadata accessor for PickupsDetailChart.Model, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_264E23C38();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_264DC0324(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_264DC038C()
{
  result = qword_27FFB2180;
  if (!qword_27FFB2180)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB2188, &unk_264E27490);
    sub_264D81DCC(&qword_27FFB2150, &qword_27FFB2140, &qword_264E273E0);
    sub_264DC0558(&qword_27FFB1B10, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB2180);
  }

  return result;
}

unint64_t sub_264DC0484()
{
  result = qword_27FFB21A0;
  if (!qword_27FFB21A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB2198, &qword_264E274D8);
    sub_264DC0558(&qword_27FFB21A8, type metadata accessor for PickupsDetailChart);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB21A0);
  }

  return result;
}

uint64_t sub_264DC0558(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_264DC05C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t Calendar.startOfWeek(containing:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a2;
  v3 = sub_264E23B98();
  v54 = *(v3 - 8);
  v55 = v3;
  v4 = *(v54 + 64);
  MEMORY[0x28223BE20](v3);
  v52 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_264E23B78();
  v51 = *(v53 - 8);
  v6 = *(v51 + 64);
  MEMORY[0x28223BE20](v53);
  v50 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_264E23B38();
  v49 = *(v57 - 8);
  v8 = *(v49 + 64);
  MEMORY[0x28223BE20](v57);
  v46 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1CE0, &unk_264E26AE0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v45 = &v45 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1C50, &unk_264E267D0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v45 - v15;
  v17 = sub_264E23928();
  v47 = *(v17 - 8);
  v48 = v17;
  v18 = *(v47 + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_264E23C18();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v25 = &v45 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_264E23AA8();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  v30 = &v45 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264E23AF8();
  v58 = a1;
  LOBYTE(a1) = sub_264E23A78();
  (*(v27 + 8))(v30, v26);
  if ((a1 & 1) != 0 && ((*(v22 + 104))(v25, *MEMORY[0x277CC99B8], v21), v31 = sub_264E23C28(), (*(v22 + 8))(v25, v21), v31 == sub_264E23B18()))
  {
    v32 = v56;
    (*(v27 + 16))(v56, v58, v26);
    return (*(v27 + 56))(v32, 0, 1, v26);
  }

  else
  {
    v34 = sub_264E23C38();
    (*(*(v34 - 8) + 56))(v16, 1, 1, v34);
    v35 = sub_264E23C48();
    (*(*(v35 - 8) + 56))(v45, 1, 1, v35);
    sub_264E23B18();
    v36 = v20;
    sub_264E23918();
    v37 = v49;
    v38 = v46;
    (*(v49 + 104))(v46, *MEMORY[0x277CC9878], v57);
    v40 = v50;
    v39 = v51;
    v41 = v53;
    (*(v51 + 104))(v50, *MEMORY[0x277CC98F0], v53);
    v43 = v54;
    v42 = v55;
    v44 = v52;
    (*(v54 + 104))(v52, *MEMORY[0x277CC9900], v55);
    sub_264E23C08();
    (*(v43 + 8))(v44, v42);
    (*(v39 + 8))(v40, v41);
    (*(v37 + 8))(v38, v57);
    return (*(v47 + 8))(v36, v48);
  }
}

uint64_t Calendar.numberOfDaysElapsedInWeek(containing:endDate:)(uint64_t a1, uint64_t a2)
{
  v107 = a2;
  v4 = sub_264E23928();
  v95 = *(v4 - 8);
  v96 = v4;
  v5 = *(v95 + 64);
  MEMORY[0x28223BE20](v4);
  v94 = &v85 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = sub_264E23C18();
  v105 = *(v111 - 8);
  v7 = *(v105 + 64);
  v8 = MEMORY[0x28223BE20](v111);
  v102 = &v85 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v85 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1880, &qword_264E26220);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v85 - v14;
  v16 = sub_264E238E8();
  v103 = *(v16 - 8);
  v104 = v16;
  v17 = *(v103 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v85 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1860, &qword_264E267E0);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20 - 8);
  v93 = &v85 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v25 = &v85 - v24;
  v26 = sub_264E23AA8();
  v27 = *(v26 - 8);
  v28 = v27[8];
  v29 = MEMORY[0x28223BE20](v26);
  v92 = &v85 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29);
  v33 = &v85 - v32;
  MEMORY[0x28223BE20](v31);
  v35 = &v85 - v34;
  v101 = a1;
  Calendar.startOfWeek(containing:)(a1, v25);
  v106 = v27[6];
  v110 = v106(v25, 1, v26);
  if (v110 == 1)
  {
    sub_264D817BC(v25, &qword_27FFB1860, &qword_264E267E0);
    return 0;
  }

  v37 = v27[4];
  v109 = v35;
  v87 = v27 + 4;
  v86 = v37;
  v37(v35, v25, v26);
  v38 = v105;
  v39 = *(v105 + 104);
  v90 = *MEMORY[0x277CC9940];
  v40 = v111;
  v99 = v39;
  v100 = v105 + 104;
  v39(v11);
  sub_264E23A98();
  v88 = v2;
  sub_264E23B08();
  v41 = v27[1];
  v97 = v26;
  v91 = v27 + 1;
  v108 = v41;
  v41(v33, v26);
  v42 = *(v38 + 8);
  v89 = v11;
  v98 = v42;
  v42(v11, v40);
  v44 = v103;
  v43 = v104;
  result = (*(v103 + 48))(v15, 1, v104);
  if (result == 1)
  {
    goto LABEL_28;
  }

  (*(v44 + 32))(v19, v15, v43);
  v45 = sub_264E238C8();
  (*(v44 + 8))(v19, v43);
  v46 = MEMORY[0x277CC99B8];
  v47 = v102;
  v48 = v97;
  if (v45 & 1) != 0 || (sub_264E23A98(), v49 = sub_264E23A48(), v108(v33, v48), (v49) || v106(v107, 1, v48) != 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB21D8, &qword_264E274F0);
    v61 = *(v38 + 72);
    v62 = (*(v38 + 80) + 32) & ~*(v38 + 80);
    v63 = swift_allocObject();
    *(v63 + 16) = xmmword_264E261E0;
    v60 = v111;
    v99((v63 + v62), *MEMORY[0x277CC9968], v111);
    sub_264DC6370(v63);
    swift_setDeallocating();
    v98(v63 + v62, v60);
    swift_deallocClassInstance();
    v64 = v93;
    sub_264D93A14(v107, v93);
    v65 = v106;
    if (v106(v64, 1, v48) == 1)
    {
      v66 = v92;
      sub_264E23A98();
      v67 = v66;
      if (v65(v64, 1, v48) != 1)
      {
        sub_264D817BC(v64, &qword_27FFB1860, &qword_264E267E0);
      }
    }

    else
    {
      v67 = v92;
      v86(v92, v64, v48);
    }

    v68 = v94;
    sub_264E23B48();

    v108(v67, v48);
    v69 = sub_264E238F8();
    v71 = v70;
    result = (*(v95 + 8))(v68, v96);
    v50 = v89;
    if (v71)
    {
      v59 = 0;
      goto LABEL_17;
    }

    v72 = v69 + 1;
    if (__OFADD__(v69, 1))
    {
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }
  }

  else
  {
    v50 = v89;
    v51 = v111;
    v52 = v99;
    v99(v89, *v46, v111);
    v52(v47, v90, v51);
    v53 = sub_264E23BD8();
    v55 = v54;
    v57 = v56;
    v58 = v98;
    v98(v47, v51);
    result = v58(v50, v51);
    if (v57)
    {
      v59 = 0;
      v60 = v111;
      goto LABEL_17;
    }

    v72 = v55 - v53;
    if (__OFSUB__(v55, v53))
    {
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v60 = v111;
  }

  v59 = v72 & ~(v72 >> 63);
LABEL_17:
  v73 = v99;
  v99(v50, *v46, v60);
  v73(v47, v90, v60);
  v74 = v109;
  v75 = sub_264E23BD8();
  v77 = v76;
  v78 = v60;
  v80 = v79;
  v81 = v47;
  v82 = v98;
  v98(v81, v78);
  result = v82(v50, v78);
  if (v80)
  {
LABEL_29:
    __break(1u);
    return result;
  }

  v83 = __OFSUB__(v77, v75);
  v84 = v77 - v75;
  if (v83)
  {
    __break(1u);
    goto LABEL_26;
  }

  v108(v74, v97);
  if (v84 >= v59)
  {
    return v59;
  }

  else
  {
    return v84;
  }
}

uint64_t Calendar.weekContaining(date:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_264E23C18();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1880, &qword_264E26220);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v15 - v10;
  (*(v3 + 104))(v6, *MEMORY[0x277CC9940], v2, v9);
  sub_264E23B08();
  (*(v3 + 8))(v6, v2);
  v12 = sub_264E238E8();
  v13 = *(v12 - 8);
  result = (*(v13 + 48))(v11, 1, v12);
  if (result != 1)
  {
    return (*(v13 + 32))(a1, v11, v12);
  }

  __break(1u);
  return result;
}

uint64_t Calendar.weeksRoundedToDay(untilDateInLastDay:weekCount:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v43 = a1;
  v42 = a3;
  v4 = sub_264E23C18();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1860, &qword_264E267E0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v39 - v11;
  v13 = sub_264E23AA8();
  v40 = *(v13 - 8);
  v41 = v13;
  v14 = *(v40 + 64);
  MEMORY[0x28223BE20](v13);
  v39[2] = v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v39[1] = v39 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = v39 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1880, &qword_264E26220);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v24 = v39 - v23;
  v25 = sub_264E238E8();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  v29 = v39 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 >= 1)
  {
    Calendar.weeksPreceding(date:weekCount:)(v43, a2, v24);
    if ((*(v26 + 48))(v24, 1, v25) == 1)
    {
      v30 = &qword_27FFB1880;
      v31 = &qword_264E26220;
      v32 = v24;
    }

    else
    {
      (*(v26 + 32))(v29, v24, v25);
      (*(v5 + 104))(v8, *MEMORY[0x277CC9968], v4);
      sub_264E23BC8();
      (*(v5 + 8))(v8, v4);
      v34 = v40;
      v33 = v41;
      if ((*(v40 + 48))(v12, 1, v41) != 1)
      {
        (*(v34 + 32))(v20, v12, v33);
        _s16ScreenTimeUICore11DetailChartV4HourV2id10Foundation4DateVvg_0();
        sub_264E23AF8();
        v37 = v42;
        sub_264E23898();
        (*(v34 + 8))(v20, v33);
        (*(v26 + 8))(v29, v25);
        v36 = v37;
        v35 = 0;
        return (*(v26 + 56))(v36, v35, 1, v25);
      }

      (*(v26 + 8))(v29, v25);
      v30 = &qword_27FFB1860;
      v31 = &qword_264E267E0;
      v32 = v12;
    }

    sub_264D817BC(v32, v30, v31);
    v35 = 1;
    v36 = v42;
    return (*(v26 + 56))(v36, v35, 1, v25);
  }

  result = sub_264E253E8();
  __break(1u);
  return result;
}

uint64_t Calendar.startOfEachDay(fromDayContaining:throughDayExcluding:)()
{
  v0 = sub_264E23B78();
  v66 = *(v0 - 8);
  v67 = v0;
  v1 = *(v66 + 64);
  MEMORY[0x28223BE20](v0);
  v64 = v53 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_264E23B98();
  v60 = *(v65 - 8);
  v3 = *(v60 + 64);
  MEMORY[0x28223BE20](v65);
  v62 = v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_264E23B38();
  v58 = *(v70 - 8);
  v5 = *(v58 + 64);
  MEMORY[0x28223BE20](v70);
  v59 = v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1CE0, &unk_264E26AE0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v53 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1C50, &unk_264E267D0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = v53 - v13;
  v63 = sub_264E23928();
  v61 = *(v63 - 8);
  v15 = *(v61 + 64);
  MEMORY[0x28223BE20](v63);
  v69 = v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_264E23AA8();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = v53 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = v53 - v23;
  MEMORY[0x28223BE20](v25);
  v27 = v53 - v26;
  MEMORY[0x28223BE20](v28);
  v30 = v53 - v29;
  if ((sub_264E23A58() & 1) == 0)
  {
    return MEMORY[0x277D84F90];
  }

  v68 = v30;
  sub_264E23AF8();
  sub_264E23AF8();
  v31 = sub_264E23A78();
  v56 = v27;
  v57 = v24;
  if (v31)
  {
    sub_264E23A28();
    sub_264E23AF8();
    (*(v18 + 8))(v21, v17);
  }

  else
  {
    (*(v18 + 16))(v24, v27, v17);
  }

  v54 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1960, &unk_264E262C0);
  v33 = *(v18 + 72);
  v34 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v35 = swift_allocObject();
  v55 = v18;
  v36 = v35;
  *(v35 + 16) = xmmword_264E261E0;
  (*(v18 + 16))(v35 + v34, v68, v17);
  v72 = v36;
  v37 = sub_264E23C38();
  v38 = *(v37 - 8);
  (*(v38 + 16))(v14, v71, v37);
  (*(v38 + 56))(v14, 0, 1, v37);
  v39 = sub_264E23C48();
  (*(*(v39 - 8) + 56))(v10, 1, 1, v39);
  sub_264E23918();
  v40 = v58;
  v41 = v59;
  v42 = (*(v58 + 104))(v59, *MEMORY[0x277CC9878], v70);
  v53[1] = v53;
  v43 = MEMORY[0x28223BE20](v42);
  v44 = v60;
  v45 = v62;
  v46 = v65;
  (*(v60 + 104))(v62, *MEMORY[0x277CC9900], v65, v43);
  v48 = v66;
  v47 = v67;
  v49 = v64;
  (*(v66 + 104))(v64, *MEMORY[0x277CC98E8], v67);
  sub_264E23B58();
  (*(v48 + 8))(v49, v47);
  (*(v44 + 8))(v45, v46);
  (*(v40 + 8))(v41, v70);
  (*(v61 + 8))(v69, v63);
  v50 = *(v55 + 8);
  v51 = v54;
  v50(v56, v54);
  v50(v68, v51);
  v32 = v72;
  v50(v57, v51);
  return v32;
}

uint64_t Calendar.weeksPreceding(date:weekCount:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v50 = a3;
  v6 = sub_264E23C18();
  v47 = *(v6 - 8);
  v7 = *(v47 + 64);
  MEMORY[0x28223BE20](v6);
  v48 = v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1860, &qword_264E267E0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v49 = v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = v40 - v13;
  v15 = sub_264E23AA8();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  MEMORY[0x28223BE20](v18);
  v20 = v40 - v19;
  MEMORY[0x28223BE20](v21);
  v25 = MEMORY[0x28223BE20](v22);
  v27 = v40 - v26;
  if (a2 < 1)
  {
    (*(v16 + 16))(v20, a1, v15, v25);
    sub_264E238A8();
    goto LABEL_9;
  }

  v42 = v24;
  v43 = v23;
  v44 = a1;
  v45 = v6;
  v46 = v3;
  Calendar.startOfWeek(containing:)(a1, v14);
  v28 = *(v16 + 48);
  if (v28(v14, 1, v15) != 1)
  {
    v41 = v28;
    v40[0] = *(v16 + 32);
    v40[1] = v16 + 32;
    (v40[0])(v27, v14, v15);
    v31 = v47;
    v30 = v48;
    v32 = v45;
    (*(v47 + 104))(v48, *MEMORY[0x277CC9940], v45);
    v33 = v49;
    sub_264E23BC8();
    (*(v31 + 8))(v30, v32);
    if (v41(v33, 1, v15) == 1)
    {
      (*(v16 + 8))(v27, v15);
      v29 = v33;
      goto LABEL_7;
    }

    v35 = v42;
    (v40[0])(v42, v33, v15);
    v36 = *(v16 + 16);
    v36(v20, v35, v15);
    v36(v43, v44, v15);
    sub_264E23898();
    v37 = *(v16 + 8);
    v37(v35, v15);
    v37(v27, v15);
LABEL_9:
    v34 = 0;
    goto LABEL_10;
  }

  v29 = v14;
LABEL_7:
  sub_264D817BC(v29, &qword_27FFB1860, &qword_264E267E0);
  v34 = 1;
LABEL_10:
  v38 = sub_264E238E8();
  return (*(*(v38 - 8) + 56))(v50, v34, 1, v38);
}

uint64_t Calendar.thisWeek.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_264E23AA8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_264E23C18();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1880, &qword_264E26220);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = &v20 - v15;
  (*(v8 + 104))(v11, *MEMORY[0x277CC9940], v7, v14);
  sub_264E23A98();
  sub_264E23B08();
  (*(v3 + 8))(v6, v2);
  (*(v8 + 8))(v11, v7);
  v17 = sub_264E238E8();
  v18 = *(v17 - 8);
  result = (*(v18 + 48))(v16, 1, v17);
  if (result != 1)
  {
    return (*(v18 + 32))(a1, v16, v17);
  }

  __break(1u);
  return result;
}

uint64_t Calendar.fullDay(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v3 = sub_264E23AA8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v9 = sub_264E23C18();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1880, &qword_264E26220);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v18 = &v22 - v17;
  (*(v10 + 104))(v13, *MEMORY[0x277CC9968], v9, v16);
  sub_264E23B08();
  (*(v10 + 8))(v13, v9);
  v19 = sub_264E238E8();
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(v18, 1, v19) != 1)
  {
    return (*(v20 + 32))(v23, v18, v19);
  }

  sub_264D817BC(v18, &qword_27FFB1880, &qword_264E26220);
  sub_264E23AF8();
  (*(v4 + 16))(v7, a1, v3);
  return sub_264E23898();
}

double Calendar.fullDayDuration(for:)(uint64_t a1)
{
  v2 = sub_264E238E8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  Calendar.fullDay(for:)(a1, v6);
  sub_264E238D8();
  v8 = v7;
  (*(v3 + 8))(v6, v2);
  return v8;
}

uint64_t Calendar.today.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_264E23AA8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264E23A98();
  Calendar.fullDay(for:)(v6, a1);
  return (*(v3 + 8))(v6, v2);
}

uint64_t Calendar.isDayInWeek(date:week:)()
{
  v0 = sub_264E23C18();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_264E23AA8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s16ScreenTimeUICore11DetailChartV4HourV2id10Foundation4DateVvg_0();
  (*(v1 + 104))(v4, *MEMORY[0x277CC9940], v0);
  v10 = sub_264E23BE8();
  (*(v1 + 8))(v4, v0);
  (*(v6 + 8))(v9, v5);
  return v10 & 1;
}

uint64_t Calendar.numberOfDaysInWeek(startingOn:)()
{
  v0 = sub_264E23C18();
  v1 = *(v0 - 8);
  v2 = v1[8];
  MEMORY[0x28223BE20](v0);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v17 - v7;
  v9 = v1[13];
  v9(&v17 - v7, *MEMORY[0x277CC99B8], v0, v6);
  (v9)(v4, *MEMORY[0x277CC9940], v0);
  v10 = sub_264E23BD8();
  v12 = v11;
  v14 = v13;
  v15 = v1[1];
  v15(v4, v0);
  v15(v8, v0);
  result = 0;
  if ((v14 & 1) == 0)
  {
    result = v12 - v10;
    if (__OFSUB__(v12, v10))
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t Calendar.numberOfHoursElapsedInDay(containing:now:)(uint64_t a1, uint64_t a2)
{
  v60 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1860, &qword_264E267E0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v54 = &v52 - v5;
  v6 = sub_264E23928();
  v56 = *(v6 - 8);
  v57 = v6;
  v7 = *(v56 + 64);
  MEMORY[0x28223BE20](v6);
  v55 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_264E238E8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v52 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v52 - v14;
  v16 = sub_264E23AA8();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v53 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v52 - v21;
  MEMORY[0x28223BE20](v23);
  v25 = &v52 - v24;
  _s16ScreenTimeUICore11DetailChartV4HourV2id10Foundation4DateVvg_0();
  v61 = v25;
  sub_264E23AF8();
  v59 = v17;
  v26 = *(v17 + 8);
  v26(v22, v16);
  sub_264E23A98();
  v58 = v2;
  Calendar.fullDay(for:)(v22, v15);
  v26(v22, v16);
  _s16ScreenTimeUICore11DetailChartV4HourV2id10Foundation4DateVvg_0();
  v27 = sub_264E238C8();
  v26(v22, v16);
  if (v27)
  {
    sub_264E23888();
    v28 = sub_264E238C8();
    v26(v22, v16);
    v29 = *(v10 + 8);
    v29(v15, v9);
    if (v28)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v29 = *(v10 + 8);
    v29(v15, v9);
  }

  sub_264E23A98();
  v30 = sub_264E23A48();
  v26(v22, v16);
  if ((v30 & 1) != 0 || (*(v59 + 48))(v60, 1, v16) != 1)
  {
LABEL_11:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB21D8, &qword_264E274F0);
    v38 = sub_264E23C18();
    v39 = *(v38 - 8);
    v40 = *(v39 + 72);
    v41 = (*(v39 + 80) + 32) & ~*(v39 + 80);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_264E261E0;
    (*(v39 + 104))(v42 + v41, *MEMORY[0x277CC9980], v38);
    sub_264DC6370(v42);
    swift_setDeallocating();
    (*(v39 + 8))(v42 + v41, v38);
    swift_deallocClassInstance();
    v43 = v54;
    sub_264D93A14(v60, v54);
    v44 = v59;
    v45 = *(v59 + 48);
    if (v45(v43, 1, v16) == 1)
    {
      v46 = v53;
      sub_264E23A98();
      if (v45(v43, 1, v16) != 1)
      {
        sub_264D817BC(v43, &qword_27FFB1860, &qword_264E267E0);
      }
    }

    else
    {
      v46 = v53;
      (*(v44 + 32))(v53, v43, v16);
    }

    v47 = v55;
    v48 = v61;
    sub_264E23B48();

    v26(v46, v16);
    v49 = sub_264E23908();
    v51 = v50;
    (*(v56 + 8))(v47, v57);
    if (v51)
    {
      v26(v48, v16);
      return 0;
    }

    result = (v26)(v48, v16);
    v37 = v49 + 1;
    if (!__OFADD__(v49, 1))
    {
      return v37 & ~(v37 >> 63);
    }

    __break(1u);
    goto LABEL_20;
  }

  v31 = v52;
  v32 = v61;
  Calendar.fullDay(for:)(v61, v52);
  sub_264E238D8();
  v34 = v33;
  v29(v31, v9);
  result = (v26)(v32, v16);
  v36 = v34 / 3600.0;
  if (COERCE__INT64(fabs(v34 / 3600.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v36 <= -9.22337204e18)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v36 < 9.22337204e18)
  {
    v37 = v36;
    return v37 & ~(v37 >> 63);
  }

LABEL_22:
  __break(1u);
  return result;
}

uint64_t Calendar.startOfEachWeek(count:through:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_264E23AA8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1880, &qword_264E26220);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v20 - v11;
  v13 = sub_264E238E8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  Calendar.weeksPreceding(date:weekCount:)(a2, a1, v12);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_264D817BC(v12, &qword_27FFB1880, &qword_264E26220);
    return 0;
  }

  else
  {
    (*(v14 + 32))(v17, v12, v13);
    _s16ScreenTimeUICore11DetailChartV4HourV2id10Foundation4DateVvg_0();
    v19 = sub_264DC3BF8(v8, a2);
    (*(v5 + 8))(v8, v4);
    (*(v14 + 8))(v17, v13);
    return v19;
  }
}

uint64_t sub_264DC3BF8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1860, &qword_264E267E0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v27 - v9;
  v11 = sub_264E23AA8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v27 - v17;
  Calendar.startOfWeek(containing:)(a1, v10);
  v19 = *(v12 + 48);
  if (v19(v10, 1, v11) == 1)
  {
    v20 = v10;
LABEL_5:
    sub_264D817BC(v20, &qword_27FFB1860, &qword_264E267E0);
    return 0;
  }

  v28 = v15;
  v21 = v10;
  v22 = *(v12 + 32);
  v22(v18, v21, v11);
  Calendar.startOfWeek(containing:)(a2, v7);
  if (v19(v7, 1, v11) == 1)
  {
    (*(v12 + 8))(v18, v11);
    v20 = v7;
    goto LABEL_5;
  }

  v24 = v28;
  v22(v28, v7, v11);
  v25 = sub_264DC3E84(v18, v24);
  v26 = *(v12 + 8);
  v26(v24, v11);
  v26(v18, v11);
  return v25;
}

uint64_t sub_264DC3E84(uint64_t a1, uint64_t a2)
{
  v52 = a2;
  v43 = a1;
  v53 = sub_264E23B78();
  v44 = *(v53 - 8);
  v4 = *(v44 + 64);
  MEMORY[0x28223BE20](v53);
  v51 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_264E23B98();
  v49 = *(v6 - 8);
  v50 = v6;
  v7 = *(v49 + 64);
  MEMORY[0x28223BE20](v6);
  v48 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_264E23B38();
  v54 = *(v45 - 8);
  v9 = *(v54 + 64);
  MEMORY[0x28223BE20](v45);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1CE0, &unk_264E26AE0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v41 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1C50, &unk_264E267D0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v41 - v18;
  v20 = sub_264E23928();
  v46 = *(v20 - 8);
  v47 = v20;
  v21 = *(v46 + 64);
  MEMORY[0x28223BE20](v20);
  v23 = &v41 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1960, &unk_264E262C0);
  v24 = sub_264E23AA8();
  v25 = *(v24 - 8);
  v26 = *(v25 + 72);
  v27 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_264E261E0;
  (*(v25 + 16))(v28 + v27, a1, v24);
  v57 = v28;
  v29 = sub_264E23C38();
  v30 = *(v29 - 8);
  v31 = *(v30 + 16);
  v42 = v2;
  v31(v19, v2, v29);
  (*(v30 + 56))(v19, 0, 1, v29);
  v32 = sub_264E23C48();
  (*(*(v32 - 8) + 56))(v15, 1, 1, v32);
  sub_264E23B18();
  sub_264E23918();
  v33 = v45;
  (*(v54 + 104))(v11, *MEMORY[0x277CC9878], v45);
  v55 = v52;
  v56 = &v57;
  v34 = v48;
  v35 = v49;
  v36 = v50;
  (*(v49 + 104))(v48, *MEMORY[0x277CC9900], v50);
  v37 = v44;
  v38 = v51;
  v39 = v53;
  (*(v44 + 104))(v51, *MEMORY[0x277CC98E8], v53);
  sub_264E23B58();
  (*(v37 + 8))(v38, v39);
  (*(v35 + 8))(v34, v36);
  (*(v54 + 8))(v11, v33);
  (*(v46 + 8))(v23, v47);
  return v57;
}

uint64_t Calendar.startOfEachWeek(fromWeekContaining:throughWeekExcluding:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_264E23B78();
  v98 = *(v4 - 8);
  v99 = v4;
  v5 = *(v98 + 64);
  MEMORY[0x28223BE20](v4);
  v97 = &v84 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_264E23B98();
  v96 = *(v102 - 8);
  v7 = *(v96 + 64);
  MEMORY[0x28223BE20](v102);
  v95 = &v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_264E23B38();
  v94 = *(v101 - 8);
  v9 = *(v94 + 64);
  MEMORY[0x28223BE20](v101);
  v93 = &v84 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1CE0, &unk_264E26AE0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v84 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1C50, &unk_264E267D0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v89 = &v84 - v17;
  v18 = sub_264E23928();
  v91 = *(v18 - 8);
  v92 = v18;
  v19 = *(v91 + 64);
  MEMORY[0x28223BE20](v18);
  v90 = &v84 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1860, &qword_264E267E0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v88 = &v84 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = &v84 - v25;
  MEMORY[0x28223BE20](v27);
  v29 = &v84 - v28;
  v104 = sub_264E23AA8();
  v30 = *(v104 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v104);
  v33 = &v84 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v36 = &v84 - v35;
  MEMORY[0x28223BE20](v37);
  v100 = &v84 - v38;
  MEMORY[0x28223BE20](v39);
  v41 = &v84 - v40;
  MEMORY[0x28223BE20](v42);
  v103 = &v84 - v43;
  v44 = a1;
  v45 = a2;
  if ((sub_264E23A58() & 1) == 0)
  {
    return MEMORY[0x277D84F90];
  }

  v87 = v14;
  Calendar.startOfWeek(containing:)(v44, v29);
  v46 = *(v30 + 48);
  if (v46(v29, 1, v104) == 1)
  {
    v47 = v29;
  }

  else
  {
    v84 = v36;
    v86 = v41;
    v49 = v103;
    v50 = v29;
    v51 = v104;
    v85 = *(v30 + 32);
    v85(v103, v50, v104);
    Calendar.startOfWeek(containing:)(v45, v26);
    if (v46(v26, 1, v51) != 1)
    {
      v52 = v86;
      v53 = v85;
      v85(v86, v26, v104);
      if (sub_264E23A78())
      {
        sub_264E23A28();
        v54 = v88;
        Calendar.startOfWeek(containing:)(v33, v88);
        v55 = *(v30 + 8);
        v56 = v33;
        v57 = v104;
        v55(v56, v104);
        if (v46(v54, 1, v57) == 1)
        {
          v58 = v104;
          v55(v52, v104);
          v55(v103, v58);
          v47 = v54;
          goto LABEL_7;
        }

        v60 = v84;
        v61 = v104;
        v53(v84, v54, v104);
        v53(v100, v60, v61);
        v59 = v30;
      }

      else
      {
        v59 = v30;
        (*(v30 + 16))(v100, v52, v104);
      }

      v62 = v103;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1960, &unk_264E262C0);
      v63 = *(v59 + 72);
      v64 = (*(v59 + 80) + 32) & ~*(v59 + 80);
      v65 = swift_allocObject();
      *(v65 + 16) = xmmword_264E261E0;
      (*(v59 + 16))(v65 + v64, v62, v104);
      v105 = v65;
      v66 = sub_264E23C38();
      v67 = *(v66 - 8);
      v68 = v89;
      (*(v67 + 16))(v89);
      (*(v67 + 56))(v68, 0, 1, v66);
      v69 = sub_264E23C48();
      (*(*(v69 - 8) + 56))(v87, 1, 1, v69);
      sub_264E23B18();
      v70 = v90;
      sub_264E23918();
      v71 = v93;
      v72 = v94;
      v73 = (*(v94 + 104))(v93, *MEMORY[0x277CC9878], v101);
      v89 = &v84;
      v74 = MEMORY[0x28223BE20](v73);
      v75 = v95;
      v76 = v96;
      (*(v96 + 104))(v95, *MEMORY[0x277CC9900], v102, v74);
      v77 = v59;
      v79 = v97;
      v78 = v98;
      v80 = v99;
      (*(v98 + 104))(v97, *MEMORY[0x277CC98E8], v99);
      sub_264E23B58();
      (*(v78 + 8))(v79, v80);
      (*(v76 + 8))(v75, v102);
      (*(v72 + 8))(v71, v101);
      (*(v91 + 8))(v70, v92);
      v81 = *(v77 + 8);
      v82 = v104;
      v81(v86, v104);
      v81(v103, v82);
      v83 = v105;
      v81(v100, v82);
      return v83;
    }

    (*(v30 + 8))(v49, v104);
    v47 = v26;
  }

LABEL_7:
  sub_264D817BC(v47, &qword_27FFB1860, &qword_264E267E0);
  return 0;
}

uint64_t sub_264DC4ECC(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, size_t *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1860, &qword_264E267E0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v27 - v10;
  v12 = sub_264E23AA8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v27 - v18;
  sub_264D93A14(a1, v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    result = sub_264D817BC(v11, &qword_27FFB1860, &qword_264E267E0);
LABEL_5:
    *a3 = 1;
    return result;
  }

  v21 = *(v13 + 32);
  v21(v19, v11, v12);
  sub_264DC6980(&qword_27FFB1BF0, MEMORY[0x277CC9578]);
  if (sub_264E25048())
  {
    result = (*(v13 + 8))(v19, v12);
    goto LABEL_5;
  }

  (*(v13 + 16))(v16, v19, v12);
  v22 = *a5;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a5 = v22;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v22 = sub_264DBC178(0, v22[2] + 1, 1, v22);
    *a5 = v22;
  }

  v25 = v22[2];
  v24 = v22[3];
  if (v25 >= v24 >> 1)
  {
    *a5 = sub_264DBC178(v24 > 1, v25 + 1, 1, v22);
  }

  (*(v13 + 8))(v19, v12);
  v26 = *a5;
  v26[2] = v25 + 1;
  return (v21)(v26 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v25, v16, v12);
}

uint64_t Calendar.numberOfDaysInFirstWeek(startingOn:through:)(uint64_t a1, uint64_t a2)
{
  v50 = a2;
  v4 = sub_264E23AA8();
  v45 = *(v4 - 8);
  v46 = v4;
  v5 = *(v45 + 64);
  MEMORY[0x28223BE20](v4);
  v44 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_264E23C18();
  v8 = *(v7 - 8);
  v9 = v8[8];
  MEMORY[0x28223BE20](v7);
  v49 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v41 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1880, &qword_264E26220);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v41 - v16;
  v18 = sub_264E238E8();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v18);
  v52 = &v41 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v8[13];
  v48 = *MEMORY[0x277CC9940];
  v23(v13, v21);
  v47 = a1;
  v51 = v2;
  sub_264E23B08();
  v24 = v18;
  v25 = v19;
  v26 = v8[1];
  v26(v13, v7);
  if ((*(v25 + 48))(v17, 1, v24) == 1)
  {
    sub_264D817BC(v17, &qword_27FFB1880, &qword_264E26220);
    return 0;
  }

  v27 = *(v25 + 32);
  v43 = v24;
  v27(v52, v17, v24);
  if ((sub_264E238C8() & 1) == 0)
  {
    goto LABEL_5;
  }

  v42 = v26;
  v28 = v44;
  sub_264E23888();
  sub_264DC6980(&qword_27FFB1868, MEMORY[0x277CC9578]);
  v29 = v46;
  v30 = sub_264E25068();
  v31 = v28;
  v26 = v42;
  (*(v45 + 8))(v31, v29);
  if ((v30 & 1) == 0)
  {
    (v23)(v13, *MEMORY[0x277CC99B8], v7);
    v39 = v49;
    (v23)(v49, v48, v7);
    v40 = sub_264E23AE8();
    v26(v39, v7);
    v26(v13, v7);
    (*(v25 + 8))(v52, v43);
    return v40;
  }

  else
  {
LABEL_5:
    (v23)(v13, *MEMORY[0x277CC99B8], v7);
    v32 = v49;
    (v23)(v49, v48, v7);
    v33 = sub_264E23BD8();
    v35 = v34;
    v37 = v36;
    v26(v32, v7);
    v26(v13, v7);
    (*(v25 + 8))(v52, v43);
    if (v37)
    {
      return 0;
    }

    result = v35 - v33;
    if (__OFSUB__(v35, v33))
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t Calendar.dateIntervalOfWeekPreceding(date:)@<X0>(uint64_t a1@<X8>)
{
  v24 = a1;
  v2 = sub_264E23C18();
  v3 = *(v2 - 8);
  v4 = v3[8];
  MEMORY[0x28223BE20](v2);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1860, &qword_264E267E0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v21 - v9;
  v11 = sub_264E23AA8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = v3[13];
  v22 = *MEMORY[0x277CC9940];
  v21 = v17;
  v17(v6, v14);
  v23 = v1;
  sub_264E23BC8();
  v18 = v3[1];
  v18(v6, v2);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_264D817BC(v10, &qword_27FFB1860, &qword_264E267E0);
    v19 = sub_264E238E8();
    return (*(*(v19 - 8) + 56))(v24, 1, 1, v19);
  }

  else
  {
    (*(v12 + 32))(v16, v10, v11);
    v21(v6, v22, v2);
    sub_264E23B08();
    v18(v6, v2);
    return (*(v12 + 8))(v16, v11);
  }
}

uint64_t Calendar.numberOfWeeksInPast(forDate:comparedTo:)(uint64_t a1, uint64_t a2)
{
  v77 = a2;
  v4 = sub_264E23B78();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v72 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_264E23B98();
  v71 = *(v76 - 8);
  v8 = *(v71 + 64);
  MEMORY[0x28223BE20](v76);
  v70 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_264E23B38();
  v74 = *(v10 - 8);
  v75 = v10;
  v11 = *(v74 + 64);
  MEMORY[0x28223BE20](v10);
  v69 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1CE0, &unk_264E26AE0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v66 = &v62 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1C50, &unk_264E267D0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v65 = &v62 - v18;
  v19 = sub_264E23928();
  v67 = *(v19 - 8);
  v68 = v19;
  v20 = *(v67 + 64);
  MEMORY[0x28223BE20](v19);
  v73 = &v62 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1860, &qword_264E267E0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v25 = &v62 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = &v62 - v27;
  v29 = sub_264E23AA8();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  v33 = &v62 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v78 = &v62 - v35;
  Calendar.startOfWeek(containing:)(a1, v28);
  v36 = *(v30 + 48);
  if (v36(v28, 1, v29) == 1)
  {
    v37 = v28;
LABEL_5:
    sub_264D817BC(v37, &qword_27FFB1860, &qword_264E267E0);
    return 0;
  }

  v63 = v5;
  v64 = v4;
  v38 = *(v30 + 32);
  v38(v78, v28, v29);
  Calendar.startOfWeek(containing:)(v77, v25);
  if (v36(v25, 1, v29) == 1)
  {
    (*(v30 + 8))(v78, v29);
    v37 = v25;
    goto LABEL_5;
  }

  v40 = v33;
  v38(v33, v25, v29);
  if (sub_264E23A58())
  {
    v79 = 1;
    v41 = sub_264E23C38();
    v42 = *(v41 - 8);
    v43 = v65;
    (*(v42 + 16))(v65, v2, v41);
    (*(v42 + 56))(v43, 0, 1, v41);
    v44 = sub_264E23C48();
    (*(*(v44 - 8) + 56))(v66, 1, 1, v44);
    LOBYTE(v61) = 1;
    v60 = 0;
    v59 = 1;
    v58 = 0;
    sub_264E23B18();
    sub_264E23918();
    v45 = v69;
    v46 = (*(v74 + 104))(v69, *MEMORY[0x277CC9878], v75);
    v77 = &v62;
    v47 = MEMORY[0x28223BE20](v46);
    v65 = &v58;
    v60 = v40;
    v61 = &v79;
    v48 = *MEMORY[0x277CC9900];
    v66 = v40;
    v50 = v70;
    v49 = v71;
    (*(v71 + 104))(v70, v48, v76, v47);
    v52 = v63;
    v51 = v64;
    v53 = v72;
    (*(v63 + 104))(v72, *MEMORY[0x277CC98E8], v64);
    v54 = v73;
    sub_264E23B58();
    (*(v52 + 8))(v53, v51);
    (*(v49 + 8))(v50, v76);
    (*(v74 + 8))(v45, v75);
    (*(v67 + 8))(v54, v68);
    v55 = *(v30 + 8);
    v55(v78, v29);
    v56 = v79;
    v55(v66, v29);
    return v56;
  }

  else
  {
    v57 = *(v30 + 8);
    v57(v78, v29);
    v57(v33, v29);
    return 0;
  }
}

uint64_t sub_264DC61A8(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, void *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB1860, &qword_264E267E0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v19 - v10;
  v12 = sub_264E23AA8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264D93A14(a1, v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    result = sub_264D817BC(v11, &qword_27FFB1860, &qword_264E267E0);
LABEL_6:
    *a3 = 1;
    return result;
  }

  (*(v13 + 32))(v16, v11, v12);
  v18 = sub_264E23A58();
  result = (*(v13 + 8))(v16, v12);
  if ((v18 & 1) == 0)
  {
    goto LABEL_6;
  }

  if (*a5 == -1)
  {
    __break(1u);
  }

  else
  {
    ++*a5;
  }

  return result;
}