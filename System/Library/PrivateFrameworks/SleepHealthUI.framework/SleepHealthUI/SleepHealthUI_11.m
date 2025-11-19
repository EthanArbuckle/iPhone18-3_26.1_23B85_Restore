uint64_t _s13SleepHealthUI27ScheduleOccurrenceViewModelV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v112 = a2;
  v3 = sub_269D97580();
  v106 = *(v3 - 8);
  v107 = v3;
  MEMORY[0x28223BE20](v3);
  v102 = &v97 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x277CC9578];
  v6 = MEMORY[0x277D83D88];
  sub_269D41554(0, &qword_280C0BB60, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v7 - 8);
  v98 = &v97 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v100 = &v97 - v10;
  MEMORY[0x28223BE20](v11);
  v103 = &v97 - v12;
  sub_269D41480(0, &qword_2803509D0, &qword_280C0BB60, v5);
  v105 = v13;
  MEMORY[0x28223BE20](v13);
  v99 = &v97 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v101 = &v97 - v16;
  MEMORY[0x28223BE20](v17);
  v104 = &v97 - v18;
  v19 = sub_269D971F0();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v109 = &v97 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x277CC8990];
  sub_269D41554(0, &qword_28034E048, MEMORY[0x277CC8990], v6);
  MEMORY[0x28223BE20](v23 - 8);
  v108 = &v97 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v97 - v26;
  sub_269D41480(0, &qword_2803510D8, &qword_28034E048, v22);
  v29 = v28;
  MEMORY[0x28223BE20](v28);
  v110 = (&v97 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v31);
  v33 = &v97 - v32;
  v35 = *(v34 + 48);
  v111 = a1;
  sub_269D40D00(a1, &v97 - v32, &qword_28034E048, v22);
  sub_269D40D00(v112, &v33[v35], &qword_28034E048, v22);
  v36 = *(v20 + 48);
  if (v36(v33, 1, v19) == 1)
  {
    if (v36(&v33[v35], 1, v19) == 1)
    {
      sub_269D40C90(v33, &qword_28034E048, MEMORY[0x277CC8990]);
      goto LABEL_8;
    }

LABEL_6:
    v37 = &qword_2803510D8;
    v38 = &qword_28034E048;
    v39 = MEMORY[0x277CC8990];
    v40 = v33;
LABEL_32:
    sub_269D414F8(v40, v37, v38, v39);
    goto LABEL_33;
  }

  sub_269D40D00(v33, v27, &qword_28034E048, MEMORY[0x277CC8990]);
  if (v36(&v33[v35], 1, v19) == 1)
  {
    (*(v20 + 8))(v27, v19);
    goto LABEL_6;
  }

  v41 = v109;
  (*(v20 + 32))(v109, &v33[v35], v19);
  sub_269D40D80(&qword_28034FAE0, MEMORY[0x277CC8990]);
  LODWORD(v97) = sub_269D9A560();
  v42 = *(v20 + 8);
  v42(v41, v19);
  v42(v27, v19);
  sub_269D40C90(v33, &qword_28034E048, MEMORY[0x277CC8990]);
  if ((v97 & 1) == 0)
  {
    goto LABEL_33;
  }

LABEL_8:
  v43 = v20;
  v97 = type metadata accessor for ScheduleOccurrenceViewModel();
  v44 = v97[5];
  v45 = *(v29 + 48);
  v46 = MEMORY[0x277CC8990];
  v47 = v110;
  sub_269D40D00(v111 + v44, v110, &qword_28034E048, MEMORY[0x277CC8990]);
  v48 = v112;
  sub_269D40D00(v112 + v44, v47 + v45, &qword_28034E048, v46);
  if (v36(v47, 1, v19) == 1)
  {
    if (v36((v47 + v45), 1, v19) == 1)
    {
      sub_269D40C90(v47, &qword_28034E048, MEMORY[0x277CC8990]);
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  v49 = v108;
  sub_269D40D00(v47, v108, &qword_28034E048, MEMORY[0x277CC8990]);
  if (v36((v47 + v45), 1, v19) == 1)
  {
    (*(v43 + 8))(v49, v19);
LABEL_13:
    v37 = &qword_2803510D8;
    v38 = &qword_28034E048;
    v39 = MEMORY[0x277CC8990];
    v40 = v47;
    goto LABEL_32;
  }

  v50 = v43;
  v51 = *(v43 + 32);
  v52 = v109;
  v51(v109, v47 + v45, v19);
  sub_269D40D80(&qword_28034FAE0, MEMORY[0x277CC8990]);
  v53 = sub_269D9A560();
  v54 = *(v50 + 8);
  v54(v52, v19);
  v54(v49, v19);
  sub_269D40C90(v47, &qword_28034E048, MEMORY[0x277CC8990]);
  if ((v53 & 1) == 0)
  {
    goto LABEL_33;
  }

LABEL_15:
  v55 = v97;
  v56 = v97[6];
  v57 = v111;
  v58 = (v111 + v56);
  v59 = *(v111 + v56 + 8);
  v60 = (v48 + v56);
  v61 = *(v48 + v56 + 8);
  if (v59)
  {
    v62 = v107;
    if (!v61)
    {
      return v61 & 1;
    }
  }

  else
  {
    if (*v58 != *v60)
    {
      LOBYTE(v61) = 1;
    }

    v62 = v107;
    if (v61)
    {
      goto LABEL_33;
    }
  }

  v63 = v97[13];
  v64 = v104;
  v65 = *(v105 + 48);
  v66 = MEMORY[0x277CC9578];
  sub_269D40D00(v111 + v63, v104, &qword_280C0BB60, MEMORY[0x277CC9578]);
  v67 = v64;
  sub_269D40D00(v48 + v63, v64 + v65, &qword_280C0BB60, v66);
  v68 = *(v106 + 48);
  if (v68(v67, 1, v62) == 1)
  {
    if (v68(v67 + v65, 1, v62) != 1)
    {
LABEL_31:
      v37 = &qword_2803509D0;
      v38 = &qword_280C0BB60;
      v39 = MEMORY[0x277CC9578];
      v40 = v67;
      goto LABEL_32;
    }

    sub_269D40C90(v67, &qword_280C0BB60, MEMORY[0x277CC9578]);
  }

  else
  {
    v69 = v103;
    sub_269D40D00(v67, v103, &qword_280C0BB60, MEMORY[0x277CC9578]);
    if (v68(v67 + v65, 1, v62) == 1)
    {
LABEL_30:
      (*(v106 + 8))(v69, v62);
      goto LABEL_31;
    }

    v70 = v106;
    v71 = v102;
    (*(v106 + 32))(v102, v67 + v65, v62);
    sub_269D40D80(&qword_2803509D8, MEMORY[0x277CC9578]);
    v110 = v68;
    v72 = v69;
    LODWORD(v109) = sub_269D9A560();
    v73 = v70;
    v55 = v97;
    v74 = *(v73 + 8);
    v74(v71, v62);
    v75 = v72;
    v68 = v110;
    v74(v75, v62);
    sub_269D40C90(v67, &qword_280C0BB60, MEMORY[0x277CC9578]);
    if ((v109 & 1) == 0)
    {
      goto LABEL_33;
    }
  }

  v76 = v55[12];
  v77 = *(v105 + 48);
  v78 = MEMORY[0x277CC9578];
  v79 = v101;
  sub_269D40D00(v57 + v76, v101, &qword_280C0BB60, MEMORY[0x277CC9578]);
  v67 = v79;
  sub_269D40D00(v48 + v76, v79 + v77, &qword_280C0BB60, v78);
  if (v68(v79, 1, v62) == 1)
  {
    if (v68(v79 + v77, 1, v62) == 1)
    {
      sub_269D40C90(v79, &qword_280C0BB60, MEMORY[0x277CC9578]);
      goto LABEL_36;
    }

    goto LABEL_31;
  }

  v69 = v100;
  sub_269D40D00(v79, v100, &qword_280C0BB60, MEMORY[0x277CC9578]);
  if (v68(v79 + v77, 1, v62) == 1)
  {
    goto LABEL_30;
  }

  v81 = v106;
  v82 = v79 + v77;
  v83 = v102;
  (*(v106 + 32))(v102, v82, v62);
  sub_269D40D80(&qword_2803509D8, MEMORY[0x277CC9578]);
  LODWORD(v110) = sub_269D9A560();
  v84 = *(v81 + 8);
  v84(v83, v62);
  v84(v100, v62);
  sub_269D40C90(v67, &qword_280C0BB60, MEMORY[0x277CC9578]);
  if ((v110 & 1) == 0)
  {
    goto LABEL_33;
  }

LABEL_36:
  v85 = v97[11];
  v86 = *(v105 + 48);
  v87 = MEMORY[0x277CC9578];
  v88 = v99;
  sub_269D40D00(v57 + v85, v99, &qword_280C0BB60, MEMORY[0x277CC9578]);
  v89 = v48 + v85;
  v90 = v88;
  sub_269D40D00(v89, v88 + v86, &qword_280C0BB60, v87);
  if (v68(v88, 1, v62) != 1)
  {
    v91 = v88;
    v92 = v98;
    sub_269D40D00(v91, v98, &qword_280C0BB60, MEMORY[0x277CC9578]);
    if (v68(v90 + v86, 1, v62) != 1)
    {
      v93 = v106;
      v94 = v102;
      (*(v106 + 32))(v102, v90 + v86, v62);
      sub_269D40D80(&qword_2803509D8, MEMORY[0x277CC9578]);
      v95 = sub_269D9A560();
      v96 = *(v93 + 8);
      v96(v94, v62);
      v96(v92, v62);
      sub_269D40C90(v90, &qword_280C0BB60, MEMORY[0x277CC9578]);
      if ((v95 & 1) == 0)
      {
        goto LABEL_33;
      }

      goto LABEL_43;
    }

    (*(v106 + 8))(v92, v62);
    goto LABEL_41;
  }

  if (v68(v88 + v86, 1, v62) != 1)
  {
LABEL_41:
    v37 = &qword_2803509D0;
    v38 = &qword_280C0BB60;
    v39 = MEMORY[0x277CC9578];
    v40 = v90;
    goto LABEL_32;
  }

  sub_269D40C90(v88, &qword_280C0BB60, MEMORY[0x277CC9578]);
LABEL_43:
  if (*(v57 + v97[7]) == *(v48 + v97[7]) && *(v57 + v97[8]) == *(v48 + v97[8]))
  {
    LOBYTE(v61) = *(v57 + v97[9]) ^ *(v48 + v97[9]) ^ 1;
    return v61 & 1;
  }

LABEL_33:
  LOBYTE(v61) = 0;
  return v61 & 1;
}

size_t _s13SleepHealthUI27ScheduleOccurrenceViewModelV013makeRepeatingeF6Models05sleepD09viewStyleSayACGSo09HKSPSleepD0CSg_AC0fM0VtFZ_0(unint64_t a1, __int128 *a2)
{
  v4 = MEMORY[0x277D83D88];
  sub_269D41554(0, &qword_280C0BB60, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v81 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v80 = &v66 - v9;
  MEMORY[0x28223BE20](v8);
  v79 = &v66 - v10;
  sub_269D41554(0, &qword_28034E048, MEMORY[0x277CC8990], v4);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v72 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v78 = &v66 - v14;
  v15 = type metadata accessor for ScheduleOccurrenceViewModel();
  v70 = *(v15 - 8);
  v71 = v15;
  MEMORY[0x28223BE20](v15);
  v17 = &v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a2[11];
  v94 = a2[10];
  v95 = v18;
  v96 = *(a2 + 24);
  v19 = a2[7];
  v90 = a2[6];
  v91 = v19;
  v20 = a2[9];
  v92 = a2[8];
  v93 = v20;
  v21 = a2[3];
  v86 = a2[2];
  v87 = v21;
  v22 = a2[5];
  v88 = a2[4];
  v89 = v22;
  v23 = a2[1];
  v84 = *a2;
  v85 = v23;
  v24 = MEMORY[0x277D84F90];
  if (!a1)
  {
    return v24;
  }

  v25 = [a1 occurrences];
  sub_269D415B8();
  v26 = sub_269D9A7E0();

  v82[0] = v24;
  if (v26 >> 62)
  {
    goto LABEL_17;
  }

  v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = a1; v27; i = a1)
  {
    a1 = 0;
    v24 = v26 & 0xC000000000000001;
    v77 = v26 & 0xC000000000000001;
    v66 = v17;
    while (1)
    {
      if (v24)
      {
        v28 = MEMORY[0x26D651260](a1, v26);
      }

      else
      {
        if (a1 >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v28 = *(v26 + 8 * a1 + 32);
      }

      v29 = v28;
      v30 = (a1 + 1);
      if (__OFADD__(a1, 1))
      {
        break;
      }

      if ([v28 isSingleDayOverride])
      {
      }

      else
      {
        sub_269D9B050();
        sub_269D9B090();
        v17 = v66;
        sub_269D9B0A0();
        sub_269D9B060();
        v24 = v77;
      }

      ++a1;
      if (v30 == v27)
      {
        v31 = v82[0];
        v24 = MEMORY[0x277D84F90];
        a1 = i;
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    v27 = sub_269D9AF50();
  }

  v31 = v24;
LABEL_19:

  if ((v31 & 0x8000000000000000) == 0 && (v31 & 0x4000000000000000) == 0)
  {
    v32 = *(v31 + 16);
    if (v32)
    {
      goto LABEL_22;
    }

LABEL_33:

    return v24;
  }

  v32 = sub_269D9AF50();
  if (!v32)
  {
    goto LABEL_33;
  }

LABEL_22:
  v83 = v24;
  result = sub_269C75518(0, v32 & ~(v32 >> 63), 0);
  if ((v32 & 0x8000000000000000) == 0)
  {
    v34 = 0;
    v24 = v83;
    v35 = v31;
    v67 = v31 & 0xC000000000000001;
    v68 = v32;
    v69 = v31;
    do
    {
      v76 = v34;
      v77 = v24;
      if (v67)
      {
        v36 = MEMORY[0x26D651260](v34, v35);
      }

      else
      {
        v36 = *(v35 + 8 * v34 + 32);
      }

      v37 = v36;
      [a1 windDownTime];
      v39 = v38;
      sub_269D40C58(&v84, v82);
      v40 = [v37 bedtimeComponents];
      v41 = v78;
      sub_269D97120();

      v42 = sub_269D971F0();
      v43 = *(*(v42 - 8) + 56);
      v43(v41, 0, 1, v42);
      v44 = [v37 wakeUpComponents];
      v45 = v72;
      sub_269D97120();

      v43(v45, 0, 1, v42);
      v75 = [v37 weekdays];
      v46 = sub_269D97580();
      v47 = *(*(v46 - 8) + 56);
      v47(v79, 1, 1, v46);
      v47(v80, 1, 1, v46);
      v47(v81, 1, 1, v46);
      v48 = v37;
      v49 = [v48 alarmConfiguration];
      v50 = [v49 isEnabled];

      if (v50)
      {
        v51 = 0;
      }

      else
      {
        v51 = 2;
      }

      v74 = v51;
      v52 = v71;
      v53 = v71[11];
      v47(&v17[v53], 1, 1, v46);
      v54 = v52[12];
      v47(&v17[v54], 1, 1, v46);
      v55 = v52[13];
      v47(&v17[v55], 1, 1, v46);
      sub_269C4E3A0(v78, v17);
      sub_269C4E3A0(v45, &v17[v52[5]]);
      v56 = &v17[v52[6]];
      *v56 = v39;
      v56[8] = 0;
      *&v17[v52[7]] = v75;
      sub_269CB9F30(v79, &v17[v55]);
      sub_269CB9F30(v80, &v17[v54]);
      sub_269CB9F30(v81, &v17[v53]);
      *&v17[v52[14]] = 0;
      v17[v52[8]] = v74;
      v17[v52[9]] = 0;
      v57 = &v17[v52[10]];
      v58 = v87;
      *(v57 + 2) = v86;
      *(v57 + 3) = v58;
      v59 = v85;
      *v57 = v84;
      *(v57 + 1) = v59;
      v60 = v91;
      *(v57 + 6) = v90;
      *(v57 + 7) = v60;
      v61 = v89;
      *(v57 + 4) = v88;
      *(v57 + 5) = v61;
      *(v57 + 24) = v96;
      v62 = v95;
      *(v57 + 10) = v94;
      *(v57 + 11) = v62;
      v63 = v93;
      *(v57 + 8) = v92;
      *(v57 + 9) = v63;
      v24 = v77;
      v83 = v77;
      v65 = *(v77 + 16);
      v64 = *(v77 + 24);
      if (v65 >= v64 >> 1)
      {
        sub_269C75518(v64 > 1, v65 + 1, 1);
        v24 = v83;
      }

      v34 = v76 + 1;
      *(v24 + 16) = v65 + 1;
      sub_269D41604(v17, v24 + ((*(v70 + 80) + 32) & ~*(v70 + 80)) + *(v70 + 72) * v65);
      v35 = v69;
      a1 = i;
    }

    while (v68 != v34);
    goto LABEL_33;
  }

  __break(1u);
  return result;
}

uint64_t sub_269D40C90(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_269D41554(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_269D40D00(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_269D41554(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_269D40D80(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_269D40DC8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_269D40E1C()
{
  result = qword_280351080;
  if (!qword_280351080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280351080);
  }

  return result;
}

unint64_t sub_269D40EBC()
{
  result = qword_280351090;
  if (!qword_280351090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280351090);
  }

  return result;
}

unint64_t sub_269D40F14()
{
  result = qword_280351098;
  if (!qword_280351098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280351098);
  }

  return result;
}

unint64_t sub_269D40F6C()
{
  result = qword_2803510A0;
  if (!qword_2803510A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803510A0);
  }

  return result;
}

unint64_t sub_269D40FC0()
{
  result = qword_2803510A8;
  if (!qword_2803510A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803510A8);
  }

  return result;
}

unint64_t sub_269D41018()
{
  result = qword_2803510B0;
  if (!qword_2803510B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803510B0);
  }

  return result;
}

unint64_t sub_269D41070()
{
  result = qword_2803510B8;
  if (!qword_2803510B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803510B8);
  }

  return result;
}

void sub_269D41100()
{
  sub_269D41554(319, &qword_28034E048, MEMORY[0x277CC8990], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_269D40DC8(319, &qword_280C0B4E0, MEMORY[0x277D839F8], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for HKSPWeekdays(319);
      if (v2 <= 0x3F)
      {
        sub_269D41554(319, &qword_280C0BB60, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_269D41554(319, &qword_2803510D0, type metadata accessor for RelativeWeekdayFormatter, MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

__n128 __swift_memcpy200_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 176);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 160) = v9;
  *(a1 + 176) = v10;
  *(a1 + 144) = result;
  return result;
}

uint64_t sub_269D412F8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 200))
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

uint64_t sub_269D41340(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 184) = 0u;
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
      *(result + 200) = 1;
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

    *(result + 200) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy26_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 10) = *(a2 + 10);
  *a1 = result;
  return result;
}

uint64_t sub_269D413D4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 26))
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

uint64_t sub_269D4141C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 26) = 1;
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

    *(result + 26) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_269D41480(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_269D41554(255, a3, a4, MEMORY[0x277D83D88]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_269D414F8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_269D41480(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void sub_269D41554(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_269D415B8()
{
  result = qword_28034E050;
  if (!qword_28034E050)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28034E050);
  }

  return result;
}

uint64_t sub_269D41604(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ScheduleOccurrenceViewModel();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_269D41670(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = &v3[OBJC_IVAR____TtC13SleepHealthUI33ConfirmationListItemTableViewCell_item];
  *v5 = 0u;
  *(v5 + 1) = 0u;
  *(v5 + 4) = 0;
  v6 = *MEMORY[0x277D769D0];
  v7 = [objc_opt_self() hk_sleepKeyColor];
  v8 = *MEMORY[0x277D74420];
  v9 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v10 = v9;
  if (v7)
  {
    [v9 setTextColor_];
  }

  v11 = OBJC_IVAR____TtC13SleepHealthUI33ConfirmationListItemTableViewCell_titleLabel;
  sub_269C1B0B8(0, &qword_28034E5F0);
  v12 = static UIFont.preferredFont(for:traits:rounded:short:loose:smallCaps:monospaced:weight:)(v6, 0, 0, 0, 0, 0, 0, v8, 0);
  [v10 setFont_];

  [v10 setTranslatesAutoresizingMaskIntoConstraints_];
  [v10 setAdjustsFontForContentSizeCategory_];
  [v10 setLineBreakMode_];
  [v10 setNumberOfLines_];

  *&v3[v11] = v10;
  v13 = OBJC_IVAR____TtC13SleepHealthUI33ConfirmationListItemTableViewCell_detailLabel;
  v14 = *MEMORY[0x277D76918];
  v15 = *MEMORY[0x277D743F8];
  v16 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v17 = static UIFont.preferredFont(for:traits:rounded:short:loose:smallCaps:monospaced:weight:)(v14, 0, 1, 0, 0, 0, 0, v15, 0);
  [v16 setFont_];

  [v16 setTranslatesAutoresizingMaskIntoConstraints_];
  [v16 setAdjustsFontForContentSizeCategory_];
  [v16 setLineBreakMode_];
  [v16 setNumberOfLines_];
  [v16 setSizingRule_];
  *&v4[v13] = v16;
  if (a3)
  {
    v18 = sub_269D9A5F0();
  }

  else
  {
    v18 = 0;
  }

  v24.receiver = v4;
  v24.super_class = type metadata accessor for ConfirmationListItemTableViewCell();
  v19 = objc_msgSendSuper2(&v24, sel_initWithStyle_reuseIdentifier_, a1, v18);

  v20 = v19;
  [v20 setAccessoryType_];
  [v20 setSelectionStyle_];
  sub_269D41AEC();

  return v20;
}

void sub_269D41AEC()
{
  v1 = v0;
  sub_269C4E764();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_269DA13E0;
  v3 = *&v0[OBJC_IVAR____TtC13SleepHealthUI33ConfirmationListItemTableViewCell_titleLabel];
  *(inited + 32) = v3;
  v4 = *&v0[OBJC_IVAR____TtC13SleepHealthUI33ConfirmationListItemTableViewCell_detailLabel];
  *(inited + 40) = v4;
  v5 = v3;
  v6 = v4;
  v7 = [v1 contentView];
  UIView.addSubviews(_:useAutoLayout:)(inited, 1);

  v8 = [v1 contentView];
  UIView.constraints(verticallyStackedViews:interitemSpacing:contentInsets:)(inited, 4.0, 16.0, 0.0, 16.0, 0.0);

  swift_setDeallocating();
  swift_arrayDestroy();
  v9 = objc_opt_self();
  sub_269C1B0B8(0, &qword_28034E1C0);
  v10 = sub_269D9A7D0();

  [v9 activateConstraints_];
}

id sub_269D41C50()
{
  v1 = OBJC_IVAR____TtC13SleepHealthUI33ConfirmationListItemTableViewCell_item;
  swift_beginAccess();
  sub_269C63264(v0 + v1, v16);
  if (!v17)
  {
    sub_269C8492C(v16, &qword_28034E548, &qword_28034E550);
    v18 = 0u;
    v19 = 0u;
    v20 = 0;
    goto LABEL_10;
  }

  sub_269C3232C(0, &qword_28034E550);
  sub_269C3232C(0, &qword_280351100);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v20 = 0;
    v18 = 0u;
    v19 = 0u;
    goto LABEL_10;
  }

  if (!*(&v19 + 1))
  {
LABEL_10:
    sub_269C8492C(&v18, &qword_2803510F8, &qword_280351100);
    [*(v0 + OBJC_IVAR____TtC13SleepHealthUI33ConfirmationListItemTableViewCell_titleLabel) setText_];
    return [*(v0 + OBJC_IVAR____TtC13SleepHealthUI33ConfirmationListItemTableViewCell_detailLabel) setText_];
  }

  sub_269C25520(&v18, v21);
  v2 = *(v0 + OBJC_IVAR____TtC13SleepHealthUI33ConfirmationListItemTableViewCell_titleLabel);
  if (qword_280C0AE70 != -1)
  {
    swift_once();
  }

  sub_269D972C0();
  v3 = sub_269D9A5F0();

  [v2 setText_];

  v4 = *(v0 + OBJC_IVAR____TtC13SleepHealthUI33ConfirmationListItemTableViewCell_detailLabel);
  v5 = __swift_project_boxed_opaque_existential_1Tm(v21, v22);
  if (v5[1])
  {
    sub_269D972C0();
  }

  else
  {
    v7 = *v5;
    v8 = type metadata accessor for ShorterDateComponentsFormatter();
    v9 = objc_allocWithZone(v8);
    *&v9[OBJC_IVAR____TtC13SleepHealthUI30ShorterDateComponentsFormatter_options] = 4;
    v15.receiver = v9;
    v15.super_class = v8;
    v10 = objc_msgSendSuper2(&v15, sel_init);
    v11 = [v10 stringFromTimeInterval_];

    if (v11)
    {
      sub_269D9A630();
    }
  }

  v12 = sub_269D9A5F0();

  [v4 setText_];

  __swift_project_boxed_opaque_existential_1Tm(v21, v22);
  v13 = sub_269D98160();
  sub_269D41FC0(v13, v14);

  return __swift_destroy_boxed_opaque_existential_1Tm(v21);
}

void sub_269D41FC0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(v2 + OBJC_IVAR____TtC13SleepHealthUI33ConfirmationListItemTableViewCell_titleLabel);

    MEMORY[0x26D650930](0x6554656C7469542ELL, 0xEA00000000007478);
    v4 = sub_269D9A5F0();

    [v3 setAccessibilityIdentifier_];

    v5 = *(v2 + OBJC_IVAR____TtC13SleepHealthUI33ConfirmationListItemTableViewCell_detailLabel);

    MEMORY[0x26D650930](0x546C69617465442ELL, 0xEB00000000747865);
    v7 = sub_269D9A5F0();

    [v5 setAccessibilityIdentifier_];
  }

  else
  {
    [*(v2 + OBJC_IVAR____TtC13SleepHealthUI33ConfirmationListItemTableViewCell_titleLabel) setAccessibilityIdentifier_];
    v6 = *(v2 + OBJC_IVAR____TtC13SleepHealthUI33ConfirmationListItemTableViewCell_detailLabel);

    [v6 setAccessibilityIdentifier_];
  }
}

id sub_269D42148()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ConfirmationListItemTableViewCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_269D42214@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC13SleepHealthUI33ConfirmationListItemTableViewCell_item;
  swift_beginAccess();
  return sub_269C63264(v1 + v3, a1);
}

uint64_t sub_269D4226C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13SleepHealthUI33ConfirmationListItemTableViewCell_item;
  swift_beginAccess();
  sub_269C6314C(a1, v1 + v3);
  swift_endAccess();
  sub_269D41C50();
  return sub_269C8492C(a1, &qword_28034E548, &qword_28034E550);
}

id (*sub_269D422F0(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_269D42354;
}

id sub_269D42354(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_269D41C50();
  }

  return result;
}

void sub_269D42420()
{
  v1 = v0;
  v2 = v0 + OBJC_IVAR____TtC13SleepHealthUI33ConfirmationListItemTableViewCell_item;
  *v2 = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0;
  v3 = *MEMORY[0x277D769D0];
  v4 = [objc_opt_self() hk_sleepKeyColor];
  v5 = *MEMORY[0x277D74420];
  v6 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v7 = v6;
  if (v4)
  {
    [v6 setTextColor_];
  }

  v8 = OBJC_IVAR____TtC13SleepHealthUI33ConfirmationListItemTableViewCell_titleLabel;
  sub_269C1B0B8(0, &qword_28034E5F0);
  v9 = static UIFont.preferredFont(for:traits:rounded:short:loose:smallCaps:monospaced:weight:)(v3, 0, 0, 0, 0, 0, 0, v5, 0);
  [v7 setFont_];

  [v7 setTranslatesAutoresizingMaskIntoConstraints_];
  [v7 setAdjustsFontForContentSizeCategory_];
  [v7 setLineBreakMode_];
  [v7 setNumberOfLines_];

  *(v0 + v8) = v7;
  v10 = OBJC_IVAR____TtC13SleepHealthUI33ConfirmationListItemTableViewCell_detailLabel;
  v11 = *MEMORY[0x277D76918];
  v12 = *MEMORY[0x277D743F8];
  v13 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v14 = static UIFont.preferredFont(for:traits:rounded:short:loose:smallCaps:monospaced:weight:)(v11, 0, 1, 0, 0, 0, 0, v12, 0);
  [v13 setFont_];

  [v13 setTranslatesAutoresizingMaskIntoConstraints_];
  [v13 setAdjustsFontForContentSizeCategory_];
  [v13 setLineBreakMode_];
  [v13 setNumberOfLines_];
  [v13 setSizingRule_];
  *(v1 + v10) = v13;
  sub_269D9B100();
  __break(1u);
}

uint64_t sub_269D426B8()
{
  v0 = sub_269D975F0();
  __swift_allocate_value_buffer(v0, qword_280351108);
  __swift_project_value_buffer(v0, qword_280351108);
  return sub_269D975E0();
}

uint64_t static Locale.NumberingSystem.latn.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_28034D730 != -1)
  {
    swift_once();
  }

  v2 = sub_269D975F0();
  v3 = __swift_project_value_buffer(v2, qword_280351108);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t WindDownPickerItem.baseIdentifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t WindDownPickerItem.baseIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t WindDownPickerItem.reuseIdentifier.getter()
{
  type metadata accessor for WindDownTimePickerCollectionViewCell();
  sub_269D2588C();
  return sub_269D97F90();
}

uint64_t WindDownPickerItem.uniqueIdentifier.getter()
{
  sub_269D42938();
  v0 = sub_269D9A660();
  sub_269D9A930();

  MEMORY[0x26D650930](0, 0xE000000000000000);

  return v0;
}

unint64_t sub_269D42938()
{
  result = qword_280351120;
  if (!qword_280351120)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_280351120);
  }

  return result;
}

uint64_t WindDownPickerItem.init(windDownDurationPublisher:maxDuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  sub_269C4BDE4(0, &qword_280C0B440, MEMORY[0x277D84560]);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_269DA0D60;
  *(v6 + 32) = sub_269D9A630();
  *(v6 + 40) = v7;
  *(v6 + 48) = 0x7065656C53;
  *(v6 + 56) = 0xE500000000000000;
  *(v6 + 64) = 0x736E6F6974704FLL;
  *(v6 + 72) = 0xE700000000000000;
  sub_269C49A1C(&unk_287A9FFB8);
  sub_269C4BDE4(0, &qword_280C0B4F0, MEMORY[0x277D83940]);
  sub_269C4BE38();
  v8 = sub_269D9A520();
  v10 = v9;

  result = sub_269C4BEAC(&unk_287A9FFD8);
  *(a2 + 16) = v8;
  *(a2 + 24) = v10;
  *(a2 + 8) = a3;
  *a2 = a1;
  return result;
}

unint64_t sub_269D42AD0(uint64_t a1)
{
  *(a1 + 8) = sub_269D42B00();
  result = sub_269D42B54();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_269D42B00()
{
  result = qword_280351128;
  if (!qword_280351128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280351128);
  }

  return result;
}

unint64_t sub_269D42B54()
{
  result = qword_280351130;
  if (!qword_280351130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280351130);
  }

  return result;
}

unint64_t sub_269D42BAC()
{
  result = qword_280351138;
  if (!qword_280351138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280351138);
  }

  return result;
}

uint64_t sub_269D42C00()
{
  type metadata accessor for WindDownTimePickerCollectionViewCell();
  sub_269D2588C();
  return sub_269D97F90();
}

uint64_t sub_269D42C3C(uint64_t a1)
{
  v2 = sub_269D42B00();

  return MEMORY[0x282169440](a1, v2);
}

void sub_269D42C98()
{
  v1 = [v0 textLabel];
  if (v1)
  {
    v2 = v1;
    v3 = OBJC_IVAR____TtC13SleepHealthUI17TextTableViewCell_model;
    swift_beginAccess();
    sub_269D433F8(v0 + v3, v11);
    v4 = v12;
    if (v12)
    {
      v5 = __swift_project_boxed_opaque_existential_1Tm(v11, v12);
      v6 = *(v4 - 1);
      MEMORY[0x28223BE20](v5);
      v8 = &v10[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
      (*(v6 + 16))(v8);
      sub_269C77BA0(v11);
      v9 = *(v6 + 8);

      v9(v8, v4);
      v4 = sub_269D9A5F0();
    }

    else
    {
      sub_269C77BA0(v11);
    }

    [v2 setText_];
  }

  sub_269D42E3C();
}

void sub_269D42E3C()
{
  v1 = [v0 textLabel];
  if (v1)
  {
    v2 = v1;
    v3 = OBJC_IVAR____TtC13SleepHealthUI17TextTableViewCell_model;
    swift_beginAccess();
    sub_269D433F8(v0 + v3, v13);
    v4 = v14;
    if (v14)
    {
      v5 = __swift_project_boxed_opaque_existential_1Tm(v13, v14);
      v6 = *(v4 - 8);
      MEMORY[0x28223BE20](v5);
      v8 = &v12[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
      (*(v6 + 16))(v8);
      sub_269C77BA0(v13);
      v9 = *(v8 + 2);
      v10 = *(v6 + 8);
      v11 = v9;
      v10(v8, v4);
      if (v9)
      {
LABEL_7:
        [v2 setTextColor_];

        return;
      }
    }

    else
    {
      sub_269C77BA0(v13);
    }

    v11 = [v0 tintColor];
    goto LABEL_7;
  }
}

id sub_269D43240()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TextTableViewCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_269D432A8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v6 = &v2[OBJC_IVAR____TtC13SleepHealthUI17TextTableViewCell_model];
  *v6 = 0u;
  *(v6 + 1) = 0u;
  *(v6 + 4) = 0;
  v7 = (*(ObjectType + 112))();
  if (a2)
  {
    v8 = sub_269D9A5F0();
  }

  else
  {
    v8 = 0;
  }

  v15.receiver = v3;
  v15.super_class = type metadata accessor for TextTableViewCell();
  v9 = objc_msgSendSuper2(&v15, sel_initWithStyle_reuseIdentifier_, v7, v8);

  v10 = v9;
  [v10 setAccessoryType_];
  v11 = [v10 textLabel];
  if (v11)
  {
    v12 = v11;
    [v11 setNumberOfLines_];
  }

  v13 = [v10 textLabel];

  if (v13)
  {
    [v13 setLineBreakMode_];
  }

  return v10;
}

uint64_t sub_269D433F8(uint64_t a1, uint64_t a2)
{
  sub_269C77AE4();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_269D4345C@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v43 = a8;
  v42 = a7;
  v40 = a5;
  v41 = a6;
  v44 = a4;
  v46 = a2;
  v47 = a3;
  v45 = a9;
  v10 = sub_269D973D0();
  v48 = *(v10 - 8);
  v49 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v13 = sub_269D1E1AC();
    v15 = v14;
    sub_269D1E284();
  }

  else
  {
    v13 = sub_269D1E35C();
    v15 = v16;
    sub_269D1E438();
  }

  v17 = sub_269D1E514();
  sub_269D1E5F0();
  v19 = v18;
  result = HKSPScreenTimeURL();
  if (result)
  {
    v21 = result;
    sub_269D973B0();

    v39[1] = v39;
    v56 = &type metadata for DeepLinkOpener;
    v57 = &protocol witness table for DeepLinkOpener;
    v52[0] = v40;
    v52[1] = v41;
    v53 = v42 & 1;
    v54 = v43;
    v50 = v13;
    v51 = v15;
    v23 = MEMORY[0x28223BE20](v22);
    v39[-10] = v52;
    v39[-9] = v17;
    MEMORY[0x28223BE20](v23);
    v43 = v19;
    sub_269D465D4(0, &qword_28034F1D0, sub_269C9D7DC, MEMORY[0x277CE14B8]);
    v25 = v24;
    sub_269D25674(0, &qword_28034F208, &type metadata for ClearTextCaseFromEnvironment, MEMORY[0x277CDFAB8]);
    v27 = v26;
    v28 = sub_269C3EEE8();
    v29 = sub_269D25720();
    v30 = sub_269C9DA98();
    v37 = v29;
    v38 = v30;
    v35 = MEMORY[0x277CE0BC8];
    v36 = v28;
    v33 = v25;
    v34 = v27;
    v31 = MEMORY[0x277CE0BD8];
    v32 = MEMORY[0x277D837D0];
    sub_269D99BF0();

    __swift_destroy_boxed_opaque_existential_1Tm(v55);
    return (*(v48 + 8))(v12, v49);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_269D43790@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v44 = a5;
  v45 = a4;
  v46 = a2;
  v47 = a3;
  v6 = sub_269D973D0();
  v48 = *(v6 - 8);
  v49 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v9 = sub_269D1E1AC();
    v11 = v10;
    sub_269D1E284();
  }

  else
  {
    v9 = sub_269D1E35C();
    v11 = v12;
    sub_269D1E438();
  }

  v13 = sub_269D1E514();
  sub_269D1E5F0();
  v15 = v14;
  result = HKSPScreenTimeURL();
  if (result)
  {
    v17 = result;
    sub_269D973B0();

    v42 = &v38;
    v53 = &type metadata for DeepLinkOpener;
    v54 = &protocol witness table for DeepLinkOpener;
    v50 = v9;
    v51 = v11;
    MEMORY[0x28223BE20](v18);
    v40 = &v38 - 12;
    v41 = v15;
    *(&v38 - 10) = v43;
    *(&v38 - 9) = v13;
    MEMORY[0x28223BE20](v19);
    sub_269D45198();
    v39 = v20;
    sub_269D465D4(0, &qword_28034F1D0, sub_269C9D7DC, MEMORY[0x277CE14B8]);
    v22 = v21;
    sub_269D25674(0, &qword_28034F208, &type metadata for ClearTextCaseFromEnvironment, MEMORY[0x277CDFAB8]);
    v24 = v23;
    v25 = sub_269D46638(&qword_280351168, sub_269D45198);
    v26 = sub_269C3EEE8();
    v27 = sub_269D25720();
    v38 = v8;
    v28 = v27;
    v29 = sub_269C9DA98();
    v36 = v28;
    v37 = v29;
    v34 = v25;
    v35 = v26;
    v32 = v22;
    v33 = v24;
    v31 = MEMORY[0x277D837D0];
    v30 = v39;
    sub_269D99BF0();

    __swift_destroy_boxed_opaque_existential_1Tm(v52);
    return (*(v48 + 8))(v38, v49);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t SleepDeepLinkDestination.deepLinkURL.getter@<X0>(uint64_t a1@<X8>)
{
  if (*v1)
  {
    v3 = MEMORY[0x277D62210];
    if (*v1 == 1)
    {
      v3 = MEMORY[0x277D62218];
    }

    v4 = *v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = HKSPSleepURL();

  if (v5)
  {
    sub_269D973B0();

    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = sub_269D973D0();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1, v6, 1, v7);
}

uint64_t sub_269D43BC0@<X0>(uint64_t a1@<X4>, uint64_t a2@<X5>, uint64_t a3@<X6>, uint64_t a4@<X7>, uint64_t a5@<X8>, uint64_t a6, uint64_t a7, __int128 a8)
{
  v47 = a4;
  v46 = a3;
  v60 = a5;
  v53 = a2;
  v54 = a8;
  v57 = a6;
  v58 = a7;
  sub_269D465D4(0, &qword_280351170, MEMORY[0x277CDD650], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v9 - 8);
  v55 = &v44 - v10;
  sub_269C9D9B8();
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v59 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v56 = &v44 - v14;
  v51 = sub_269D98D30();
  v48 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v16 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_269D973D0();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  sub_269D25674(0, &qword_28034F1F0, MEMORY[0x277CE0BC8], MEMORY[0x277CDF020]);
  v45 = v20;
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v44 - v22;
  sub_269D25614();
  v25 = MEMORY[0x28223BE20](v24 - 8);
  v52 = &v44 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v50 = &v44 - v27;
  sub_269D9A8E0();
  v49 = sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v62 = a1;
  v63 = v53;
  sub_269C2DB5C(v46, v61);
  (*(v18 + 16))(&v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), v47, v17);
  v28 = (*(v18 + 80) + 56) & ~*(v18 + 80);
  v29 = swift_allocObject();
  sub_269C25520(v61, v29 + 16);
  (*(v18 + 32))(v29 + v28, &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), v17);
  v30 = (v29 + ((v19 + v28 + 7) & 0xFFFFFFFFFFFFFFF8));
  v32 = v57;
  v31 = v58;
  *v30 = v57;
  v30[1] = v31;

  sub_269C255A8(v32);
  sub_269C3EEE8();
  sub_269D99ED0();
  sub_269D98D20();
  sub_269C9D934();
  v33 = v50;
  v34 = v45;
  sub_269D99B10();
  (*(v48 + 8))(v16, v51);
  (*(v21 + 8))(v23, v34);
  v61[0] = v54;

  v35 = v55;
  sub_269D98970();
  v36 = sub_269D98980();
  (*(*(v36 - 8) + 56))(v35, 0, 1, v36);
  v37 = swift_allocObject();
  *(v37 + 16) = v32;
  *(v37 + 24) = v31;
  sub_269C255A8(v32);
  v38 = v56;
  sub_269D99EC0();
  v39 = v52;
  sub_269C23218(v33, v52);
  v40 = v59;
  sub_269D466D4(v38, v59);
  v41 = v60;
  sub_269C23218(v39, v60);
  sub_269C9D7DC();
  sub_269D466D4(v40, v41 + *(v42 + 48));
  sub_269D46738(v38);
  sub_269C2327C(v33);
  sub_269D46738(v40);
  sub_269C2327C(v39);
}

uint64_t sub_269D44240@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v61 = a7;
  v66 = a5;
  v67 = a6;
  v54 = a4;
  v51 = a3;
  v69 = a8;
  v68 = a13;
  v64 = a12;
  v58 = a2;
  v59 = a11;
  v55 = a10;
  v60 = a9;
  sub_269D465D4(0, &qword_280351170, MEMORY[0x277CDD650], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v14 - 8);
  v62 = &v48 - v15;
  sub_269C9D9B8();
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v65 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v63 = &v48 - v19;
  v56 = sub_269D98D30();
  v52 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v21 = &v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_269D973D0();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  sub_269D25674(0, &qword_28034F1F0, MEMORY[0x277CE0BC8], MEMORY[0x277CDF020]);
  v50 = v25;
  v49 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v27 = &v48 - v26;
  sub_269D25614();
  v29 = MEMORY[0x28223BE20](v28 - 8);
  v57 = &v48 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v32 = &v48 - v31;
  sub_269D9A8E0();
  v53 = sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v71 = a1;
  v72 = v58;
  sub_269C2DB5C(v51, v70);
  (*(v23 + 16))(&v48 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0), v54, v22);
  v33 = (*(v23 + 80) + 56) & ~*(v23 + 80);
  v34 = swift_allocObject();
  sub_269C25520(v70, v34 + 16);
  (*(v23 + 32))(v34 + v33, &v48 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0), v22);
  v35 = (v34 + ((v24 + v33 + 7) & 0xFFFFFFFFFFFFFFF8));
  v37 = v66;
  v36 = v67;
  *v35 = v66;
  v35[1] = v36;

  sub_269C255A8(v37);
  sub_269C3EEE8();
  sub_269D99ED0();
  sub_269D98D20();
  sub_269C9D934();
  v38 = v50;
  sub_269D99B10();
  (*(v52 + 8))(v21, v56);
  (*(v49 + 8))(v27, v38);
  *&v70[0] = v61;
  *(&v70[0] + 1) = v60;

  v39 = v62;
  sub_269D98970();
  v40 = sub_269D98980();
  (*(*(v40 - 8) + 56))(v39, 0, 1, v40);
  v41 = swift_allocObject();
  *(v41 + 16) = v37;
  *(v41 + 24) = v36;
  sub_269C255A8(v37);
  v42 = v63;
  sub_269D99EC0();
  v43 = v57;
  sub_269C23218(v32, v57);
  v44 = v65;
  sub_269D466D4(v42, v65);
  v45 = v69;
  sub_269C23218(v43, v69);
  sub_269C9D7DC();
  sub_269D466D4(v44, v45 + *(v46 + 48));
  sub_269D46738(v42);
  sub_269C2327C(v32);
  sub_269D46738(v44);
  sub_269C2327C(v43);
}

SleepHealthUI::SleepDeepLinkDestination_optional __swiftcall SleepDeepLinkDestination.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_269D9B1C0();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t SleepDeepLinkDestination.rawValue.getter()
{
  v1 = 0x696472616F626E6FLL;
  if (*v0 != 1)
  {
    v1 = 0x63536567616E616DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x657078456E69616DLL;
  }
}

uint64_t sub_269D4493C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x696472616F626E6FLL;
  v4 = 0xEA0000000000676ELL;
  if (v2 != 1)
  {
    v3 = 0x63536567616E616DLL;
    v4 = 0xEE00656C75646568;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x657078456E69616DLL;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xEE0065636E656972;
  }

  v7 = 0x696472616F626E6FLL;
  v8 = 0xEA0000000000676ELL;
  if (*a2 != 1)
  {
    v7 = 0x63536567616E616DLL;
    v8 = 0xEE00656C75646568;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x657078456E69616DLL;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xEE0065636E656972;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_269D9B280();
  }

  return v11 & 1;
}

uint64_t sub_269D44A68()
{
  sub_269D9B350();
  sub_269D9A6A0();

  return sub_269D9B390();
}

uint64_t sub_269D44B28()
{
  sub_269D9A6A0();
}

uint64_t sub_269D44BD4()
{
  sub_269D9B350();
  sub_269D9A6A0();

  return sub_269D9B390();
}

void sub_269D44C9C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEE0065636E656972;
  v4 = 0xEA0000000000676ELL;
  v5 = 0x696472616F626E6FLL;
  if (v2 != 1)
  {
    v5 = 0x63536567616E616DLL;
    v4 = 0xEE00656C75646568;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x657078456E69616DLL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t SleepDeepLinkDestination.description.getter()
{
  v1 = 0xEA0000000000676ELL;
  v2 = 0x696472616F626E6FLL;
  if (*v0 != 1)
  {
    v2 = 0x63536567616E616DLL;
    v1 = 0xEE00656C75646568;
  }

  if (*v0)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0x657078456E69616DLL;
  }

  if (*v0)
  {
    v4 = v1;
  }

  else
  {
    v4 = 0xEE0065636E656972;
  }

  MEMORY[0x26D650930](v3, v4);

  return 0xD000000000000019;
}

unint64_t SleepDeepLinkDestination.route.getter()
{
  v1 = *v0;
  if (*v0)
  {
    v2 = MEMORY[0x277D62218];
    if (v1 != 1)
    {
      v2 = MEMORY[0x277D62210];
    }

    v1 = *v2;
    v3 = *v2;
  }

  return v1;
}

uint64_t SleepDeepLinkDestination.localizedTitle.getter()
{
  if (qword_280C0AE70 != -1)
  {
    swift_once();
  }

  v0 = qword_280C0D990;
  v1 = sub_269D972C0();

  return v1;
}

uint64_t SleepDeepLinkButton.init(destination:deepLinkOpener:)@<X0>(char *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  sub_269D99E60();
  *(a3 + 48) = v7;
  *(a3 + 56) = v8;
  *a3 = v5;
  return sub_269C25520(a2, a3 + 8);
}

uint64_t SleepDeepLinkButton.body.getter@<X0>(uint64_t a1@<X8>)
{
  sub_269D45198();
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_269C9E22C(v1, &v18);
  v8 = swift_allocObject();
  v9 = v19;
  v8[1] = v18;
  v8[2] = v9;
  v10 = v21;
  v8[3] = v20;
  v8[4] = v10;
  v15 = v1;
  sub_269D27D88();
  sub_269D45278();
  sub_269D99EB0();
  v11 = *v1 != 1;
  v12 = *(v1 + 56);
  v16 = *(v1 + 48);
  v17 = v12;
  sub_269D45668(0, &qword_28034E300, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
  sub_269D99E90();
  sub_269D43790(v11, v18, *(&v18 + 1), v19, a1);

  return (*(v5 + 8))(v7, v4);
}

void sub_269D45198()
{
  if (!qword_280351148)
  {
    sub_269D27D88();
    sub_269D45278();
    v0 = sub_269D99EE0();
    if (!v1)
    {
      atomic_store(v0, &qword_280351148);
    }
  }
}

void sub_269D451FC()
{
  if (!qword_28034E270)
  {
    sub_269D45668(255, &qword_28034E278, MEMORY[0x277D83B88], MEMORY[0x277D83D88]);
    v0 = sub_269D99530();
    if (!v1)
    {
      atomic_store(v0, &qword_28034E270);
    }
  }
}

unint64_t sub_269D45278()
{
  result = qword_280351150;
  if (!qword_280351150)
  {
    sub_269D27D88();
    sub_269D45328();
    sub_269D46638(&qword_28034E2D0, sub_269D451FC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280351150);
  }

  return result;
}

unint64_t sub_269D45328()
{
  result = qword_280351158;
  if (!qword_280351158)
  {
    sub_269D27E08();
    sub_269CC5C7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280351158);
  }

  return result;
}

id sub_269D453A8(uint64_t a1)
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = [objc_opt_self() sharedBehavior];
  if (result)
  {
    v3 = result;
    v4 = [result healthAppHidden];

    if (v4)
    {
      sub_269D462F8(a1);
    }

    else
    {
      sub_269D456B8(a1);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall SleepDeepLinkButton.openDeepLink()()
{
  v1 = [objc_opt_self() sharedBehavior];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 healthAppHidden];

    if (v3)
    {

      sub_269D462F8(v0);
    }

    else
    {

      sub_269D456B8(v0);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_269D45534@<X0>(uint64_t a1@<X8>)
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  SleepDeepLinkDestination.localizedTitle.getter();
  sub_269C3EEE8();
  v2 = sub_269D99960();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  KeyPath = swift_getKeyPath();
  v10 = swift_getKeyPath();

  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v8;
  *(a1 + 32) = KeyPath;
  *(a1 + 40) = 0;
  *(a1 + 48) = v10;
  *(a1 + 56) = 0;
  *(a1 + 64) = 1;
  return result;
}

void sub_269D45668(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_269D456B8(uint64_t a1)
{
  v2 = sub_269D973D0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v43 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v43 - v10;
  if (*a1)
  {
    v12 = MEMORY[0x277D62210];
    if (*a1 == 1)
    {
      v12 = MEMORY[0x277D62218];
    }

    v13 = *v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = HKSPSleepURL();

  if (v14)
  {
    sub_269D973B0();

    v46 = *(v3 + 32);
    v47 = v3 + 32;
    v46(v11, v8, v2);
    if (qword_28034D640 != -1)
    {
      swift_once();
    }

    v15 = sub_269D98250();
    __swift_project_value_buffer(v15, qword_28035E4B8);
    sub_269C9E22C(a1, v51);
    v16 = sub_269D98230();
    v17 = sub_269D9AB80();
    if (os_log_type_enabled(v16, v17))
    {
      v45 = v17;
      v18 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v50 = v44;
      *v18 = 136446466;
      *(v18 + 4) = sub_269C2EACC(0xD000000000000013, 0x8000000269DA9790, &v50);
      *(v18 + 12) = 2082;
      v48 = 0xD000000000000019;
      v49 = 0x8000000269DAF450;
      v19 = 0x696472616F626E6FLL;
      v20 = 0xEA0000000000676ELL;
      if (v51[0] != 1)
      {
        v19 = 0x63536567616E616DLL;
        v20 = 0xEE00656C75646568;
      }

      if (v51[0])
      {
        v21 = v19;
      }

      else
      {
        v21 = 0x657078456E69616DLL;
      }

      if (v51[0])
      {
        v22 = v20;
      }

      else
      {
        v22 = 0xEE0065636E656972;
      }

      MEMORY[0x26D650930](v21, v22);

      v23 = v48;
      v24 = v49;
      sub_269C9E3A0(v51);
      v25 = sub_269C2EACC(v23, v24, &v50);

      *(v18 + 14) = v25;
      _os_log_impl(&dword_269C18000, v16, v45, "[%{public}s] Opening deep link to destination: %{public}s", v18, 0x16u);
      v26 = v44;
      swift_arrayDestroy();
      MEMORY[0x26D652460](v26, -1, -1);
      MEMORY[0x26D652460](v18, -1, -1);
    }

    else
    {

      sub_269C9E3A0(v51);
    }

    v39 = *(a1 + 32);
    v40 = *(a1 + 40);
    __swift_project_boxed_opaque_existential_1Tm((a1 + 8), v39);
    (*(v3 + 16))(v5, v11, v2);
    v41 = (*(v3 + 80) + 16) & ~*(v3 + 80);
    v42 = swift_allocObject();
    v46((v42 + v41), v5, v2);
    (*(v40 + 8))(v11, sub_269D46878, v42, v39, v40);

    (*(v3 + 8))(v11, v2);
  }

  else
  {
    if (qword_28034D640 != -1)
    {
      swift_once();
    }

    v27 = sub_269D98250();
    __swift_project_value_buffer(v27, qword_28035E4B8);
    sub_269C9E22C(a1, v51);
    v28 = sub_269D98230();
    v29 = sub_269D9AB70();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v50 = v31;
      *v30 = 136446466;
      *(v30 + 4) = sub_269C2EACC(0xD000000000000013, 0x8000000269DA9790, &v50);
      *(v30 + 12) = 2082;
      v48 = 0xD000000000000019;
      v49 = 0x8000000269DAF450;
      v32 = 0x696472616F626E6FLL;
      v33 = 0xEA0000000000676ELL;
      if (v51[0] != 1)
      {
        v32 = 0x63536567616E616DLL;
        v33 = 0xEE00656C75646568;
      }

      if (v51[0])
      {
        v34 = v32;
      }

      else
      {
        v34 = 0x657078456E69616DLL;
      }

      if (v51[0])
      {
        v35 = v33;
      }

      else
      {
        v35 = 0xEE0065636E656972;
      }

      MEMORY[0x26D650930](v34, v35);

      v36 = v48;
      v37 = v49;
      sub_269C9E3A0(v51);
      v38 = sub_269C2EACC(v36, v37, &v50);

      *(v30 + 14) = v38;
      _os_log_impl(&dword_269C18000, v28, v29, "[%{public}s] Unable to resolve deep link URL for destination: %{public}s", v30, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D652460](v31, -1, -1);
      MEMORY[0x26D652460](v30, -1, -1);
    }

    else
    {

      sub_269C9E3A0(v51);
    }
  }
}

void sub_269D45D4C(void *a1, uint64_t a2)
{
  v4 = sub_269D973D0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v38 - v9;
  if (a1)
  {
    v11 = a1;
    if (qword_28034D640 != -1)
    {
      swift_once();
    }

    v12 = sub_269D98250();
    __swift_project_value_buffer(v12, qword_28035E4B8);
    (*(v5 + 16))(v10, a2, v4);
    v13 = a1;
    v14 = sub_269D98230();
    v15 = sub_269D9AB60();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v39 = v17;
      *v16 = 136446722;
      *(v16 + 4) = sub_269C2EACC(0xD000000000000013, 0x8000000269DA9790, &v39);
      *(v16 + 12) = 2082;
      sub_269D46638(&qword_280351178, MEMORY[0x277CC9260]);
      v18 = sub_269D9B230();
      v20 = v19;
      (*(v5 + 8))(v10, v4);
      v21 = sub_269C2EACC(v18, v20, &v39);

      *(v16 + 14) = v21;
      *(v16 + 22) = 2082;
      ErrorValue = swift_getErrorValue();
      v23 = MEMORY[0x28223BE20](ErrorValue);
      (*(v25 + 16))(&v38 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0), v23);
      v26 = sub_269D9A660();
      v28 = sub_269C2EACC(v26, v27, &v39);

      *(v16 + 24) = v28;
      _os_log_impl(&dword_269C18000, v14, v15, "[%{public}s] Failed to open deep link (%{public}s) due to error: %{public}s", v16, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x26D652460](v17, -1, -1);
      MEMORY[0x26D652460](v16, -1, -1);
    }

    else
    {

      (*(v5 + 8))(v10, v4);
    }
  }

  else
  {
    if (qword_28034D640 != -1)
    {
      swift_once();
    }

    v29 = sub_269D98250();
    __swift_project_value_buffer(v29, qword_28035E4B8);
    (*(v5 + 16))(v7, a2, v4);
    v30 = sub_269D98230();
    v31 = sub_269D9AB80();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v39 = v33;
      *v32 = 136446466;
      *(v32 + 4) = sub_269C2EACC(0xD000000000000013, 0x8000000269DA9790, &v39);
      *(v32 + 12) = 2082;
      sub_269D46638(&qword_280351178, MEMORY[0x277CC9260]);
      v34 = sub_269D9B230();
      v36 = v35;
      (*(v5 + 8))(v7, v4);
      v37 = sub_269C2EACC(v34, v36, &v39);

      *(v32 + 14) = v37;
      _os_log_impl(&dword_269C18000, v30, v31, "[%{public}s] Successfully opened deep link (%{public}s)", v32, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D652460](v33, -1, -1);
      MEMORY[0x26D652460](v32, -1, -1);
    }

    else
    {

      (*(v5 + 8))(v7, v4);
    }
  }
}

uint64_t sub_269D462F8(uint64_t a1)
{
  if (qword_28034D640 != -1)
  {
    swift_once();
  }

  v2 = sub_269D98250();
  __swift_project_value_buffer(v2, qword_28035E4B8);
  v3 = sub_269D98230();
  v4 = sub_269D9AB80();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v9[0] = v6;
    *v5 = 136446210;
    *(v5 + 4) = sub_269C2EACC(0xD000000000000013, 0x8000000269DA9790, v9);
    _os_log_impl(&dword_269C18000, v3, v4, "[%{public}s] Displaying Health App Hidden Alert", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x26D652460](v6, -1, -1);
    MEMORY[0x26D652460](v5, -1, -1);
  }

  v7 = *(a1 + 56);
  LOBYTE(v9[0]) = *(a1 + 48);
  v9[1] = v7;
  sub_269D45668(0, &qword_28034E300, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
  return sub_269D99E80();
}

unint64_t sub_269D46494()
{
  result = qword_280351160;
  if (!qword_280351160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280351160);
  }

  return result;
}

uint64_t sub_269D4652C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_269D46574(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_269D465D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_269D46638(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_269D466D4(uint64_t a1, uint64_t a2)
{
  sub_269C9D9B8();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_269D46738(uint64_t a1)
{
  sub_269C9D9B8();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroy_9Tm()
{
  v1 = sub_269D973D0();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  (*(v2 + 8))(v0 + v3, v1);
  if (*(v0 + v4))
  {
  }

  return swift_deallocObject();
}

void sub_269D46878(void *a1)
{
  v3 = *(sub_269D973D0() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_269D45D4C(a1, v4);
}

uint64_t sub_269D46958()
{
  v1 = *(sub_269D973D0() - 8);
  v2 = (*(v1 + 80) + 56) & ~*(v1 + 80);
  v3 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v4 = *v3;
  v5 = v3[1];

  return sub_269CE660C((v0 + 16), v0 + v2, v4, v5);
}

uint64_t SleepSettingsProviderWrapper.__allocating_init(sleepStore:sleepSettings:)(void *a1, void *a2)
{
  v4 = swift_allocObject();
  v5 = objc_allocWithZone(type metadata accessor for SleepSettingsProvider());
  *(v4 + 16) = SleepSettingsProvider.init(sleepStore:sleepSettings:)(a1, a2);
  return v4;
}

uint64_t SleepSettingsProviderWrapper.init(sleepStore:sleepSettings:)(void *a1, void *a2)
{
  v3 = v2;
  v6 = objc_allocWithZone(type metadata accessor for SleepSettingsProvider());
  *(v3 + 16) = SleepSettingsProvider.init(sleepStore:sleepSettings:)(a1, a2);
  return v3;
}

uint64_t SleepSettingsProviderWrapper.__allocating_init(sleepStore:)(void *a1)
{
  v2 = swift_allocObject();
  v3 = HKSPSleepStore.settings.getter();
  v4 = objc_allocWithZone(type metadata accessor for SleepSettingsProvider());
  *(v2 + 16) = SleepSettingsProvider.init(sleepStore:sleepSettings:)(a1, v3);
  return v2;
}

uint64_t SleepSettingsProviderWrapper.init(sleepStore:)(void *a1)
{
  v2 = v1;
  v4 = HKSPSleepStore.settings.getter();
  v5 = objc_allocWithZone(type metadata accessor for SleepSettingsProvider());
  *(v2 + 16) = SleepSettingsProvider.init(sleepStore:sleepSettings:)(a1, v4);
  return v2;
}

uint64_t SleepSettingsProviderWrapper.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t LockScreenContentView.$model.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = type metadata accessor for LockScreenContentModel();
  v4 = sub_269D47BA4(&unk_28034EA90, type metadata accessor for LockScreenContentModel);

  return MEMORY[0x282130E30](v1, v2, v3, v4);
}

uint64_t LockScreenContentView.init(model:)@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for LockScreenContentModel();
  sub_269D47BA4(&unk_28034EA90, type metadata accessor for LockScreenContentModel);
  result = sub_269D98C70();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void LockScreenContentView.body.getter(uint64_t a1@<X8>)
{
  sub_269D46FE4(*(v1 + 8), a1);
  v3 = sub_269D995E0();
  sub_269D98990();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  sub_269D475FC(0);
  v13 = a1 + *(v12 + 36);
  *v13 = v3;
  *(v13 + 8) = v5;
  *(v13 + 16) = v7;
  *(v13 + 24) = v9;
  *(v13 + 32) = v11;
  *(v13 + 40) = 0;
  v14 = sub_269D995F0();
  sub_269D98990();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  sub_269D476C8(0, &qword_2803511A0, sub_269D475FC, MEMORY[0x277CDF928], MEMORY[0x277CDFAB8]);
  v24 = a1 + *(v23 + 36);
  *v24 = v14;
  *(v24 + 8) = v16;
  *(v24 + 16) = v18;
  *(v24 + 24) = v20;
  *(v24 + 32) = v22;
  *(v24 + 40) = 0;
}

uint64_t sub_269D46FE4@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  v31 = a2;
  v3 = MEMORY[0x277CE1428];
  v4 = MEMORY[0x277CE0330];
  sub_269D476C8(0, &qword_2803511E0, sub_269D47734, MEMORY[0x277CE1428], MEMORY[0x277CE0330]);
  v30[3] = v5;
  MEMORY[0x28223BE20](v5);
  v7 = v30 - v6;
  sub_269D476C8(0, &qword_2803511E8, type metadata accessor for LockScreenGreetingView, &type metadata for LockScreenBedtimeView, v4);
  MEMORY[0x28223BE20](v8);
  v10 = (v30 - v9);
  sub_269D47734(0);
  v30[2] = v11;
  MEMORY[0x28223BE20](v11);
  v13 = v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for LockScreenGreetingView(0);
  MEMORY[0x28223BE20](v14);
  v16 = (v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_269D476C8(0, &qword_280351190, sub_269D47734, v3, MEMORY[0x277CE0338]);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = v30 - v18;
  sub_269D9A8E0();
  v30[1] = sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v20 = a1;
  sub_269D98880();

  v21 = v32;

  if ((v21 - 1) < 2)
  {
    type metadata accessor for LockScreenContentModel();
    sub_269D47BA4(&unk_28034EA90, type metadata accessor for LockScreenContentModel);
    v22 = sub_269D98C70();
    v24 = v23;
    *v10 = v22;
    v10[1] = v23;
    swift_storeEnumTagMultiPayload();
    sub_269D47BA4(&qword_2803511D0, type metadata accessor for LockScreenGreetingView);
    sub_269D47BEC();
    v25 = v24;
    sub_269D992D0();
    sub_269D47D34(v13, v7, sub_269D47734);
    swift_storeEnumTagMultiPayload();
    sub_269D47AF4();
    sub_269D992D0();

    v26 = v13;
    v27 = sub_269D47734;
LABEL_8:
    sub_269D47D9C(v26, v27);
    goto LABEL_9;
  }

  if (v21)
  {
    *(v16 + *(v14 + 20)) = swift_getKeyPath();
    sub_269D47CDC();
    swift_storeEnumTagMultiPayload();
    type metadata accessor for LockScreenContentModel();
    sub_269D47BA4(&unk_28034EA90, type metadata accessor for LockScreenContentModel);
    *v16 = sub_269D98C70();
    v16[1] = v28;
    sub_269D47D34(v16, v10, type metadata accessor for LockScreenGreetingView);
    swift_storeEnumTagMultiPayload();
    sub_269D47BA4(&qword_2803511D0, type metadata accessor for LockScreenGreetingView);
    sub_269D47BEC();
    sub_269D992D0();
    sub_269D47D34(v13, v7, sub_269D47734);
    swift_storeEnumTagMultiPayload();
    sub_269D47AF4();
    sub_269D992D0();
    sub_269D47D9C(v13, sub_269D47734);
    v26 = v16;
    v27 = type metadata accessor for LockScreenGreetingView;
    goto LABEL_8;
  }

  swift_storeEnumTagMultiPayload();
  sub_269D47AF4();
  sub_269D992D0();
LABEL_9:
  sub_269D47C40(v19, v31);
}

void sub_269D47638()
{
  if (!qword_280351188)
  {
    sub_269D476C8(255, &qword_280351190, sub_269D47734, MEMORY[0x277CE1428], MEMORY[0x277CE0338]);
    v0 = sub_269D99D50();
    if (!v1)
    {
      atomic_store(v0, &qword_280351188);
    }
  }
}

void sub_269D476C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void sub_269D4778C(uint64_t a1@<X8>)
{
  sub_269D46FE4(*(v1 + 8), a1);
  v3 = sub_269D995E0();
  sub_269D98990();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  sub_269D475FC(0);
  v13 = a1 + *(v12 + 36);
  *v13 = v3;
  *(v13 + 8) = v5;
  *(v13 + 16) = v7;
  *(v13 + 24) = v9;
  *(v13 + 32) = v11;
  *(v13 + 40) = 0;
  v14 = sub_269D995F0();
  sub_269D98990();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  sub_269D476C8(0, &qword_2803511A0, sub_269D475FC, MEMORY[0x277CDF928], MEMORY[0x277CDFAB8]);
  v24 = a1 + *(v23 + 36);
  *v24 = v14;
  *(v24 + 8) = v16;
  *(v24 + 16) = v18;
  *(v24 + 24) = v20;
  *(v24 + 32) = v22;
  *(v24 + 40) = 0;
}

unint64_t sub_269D4788C()
{
  result = qword_2803511A8;
  if (!qword_2803511A8)
  {
    sub_269D476C8(255, &qword_2803511A0, sub_269D475FC, MEMORY[0x277CDF928], MEMORY[0x277CDFAB8]);
    sub_269D47944();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803511A8);
  }

  return result;
}

unint64_t sub_269D47944()
{
  result = qword_2803511B0;
  if (!qword_2803511B0)
  {
    sub_269D475FC(255);
    sub_269D479C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803511B0);
  }

  return result;
}

unint64_t sub_269D479C4()
{
  result = qword_2803511B8;
  if (!qword_2803511B8)
  {
    sub_269D47638();
    sub_269D47A3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803511B8);
  }

  return result;
}

unint64_t sub_269D47A3C()
{
  result = qword_2803511C0;
  if (!qword_2803511C0)
  {
    sub_269D476C8(255, &qword_280351190, sub_269D47734, MEMORY[0x277CE1428], MEMORY[0x277CE0338]);
    sub_269D47AF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803511C0);
  }

  return result;
}

unint64_t sub_269D47AF4()
{
  result = qword_2803511C8;
  if (!qword_2803511C8)
  {
    sub_269D47734(255);
    sub_269D47BA4(&qword_2803511D0, type metadata accessor for LockScreenGreetingView);
    sub_269D47BEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803511C8);
  }

  return result;
}

uint64_t sub_269D47BA4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_269D47BEC()
{
  result = qword_2803511D8;
  if (!qword_2803511D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803511D8);
  }

  return result;
}

uint64_t sub_269D47C40(uint64_t a1, uint64_t a2)
{
  sub_269D476C8(0, &qword_280351190, sub_269D47734, MEMORY[0x277CE1428], MEMORY[0x277CE0338]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_269D47CDC()
{
  if (!qword_28034F8B8)
  {
    sub_269D98CA0();
    v0 = sub_269D98A00();
    if (!v1)
    {
      atomic_store(v0, &qword_28034F8B8);
    }
  }
}

uint64_t sub_269D47D34(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_269D47D9C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_269D47DFC()
{
  v0 = sub_269D977A0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269D976F0();
  v4 = objc_allocWithZone(MEMORY[0x277D12820]);
  v5 = sub_269D976E0();
  v6 = [v4 initWithCalendar_];

  result = (*(v1 + 8))(v3, v0);
  qword_280C0D998 = v6;
  return result;
}

uint64_t HKDateCache.occurrenceDescription(_:at:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v56 = a2;
  v57 = a1;
  v67 = a3;
  v4 = sub_269D97650();
  v60 = *(v4 - 8);
  v61 = v4;
  MEMORY[0x28223BE20](v4);
  v59 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_269D97580();
  v65 = *(v6 - 8);
  v66 = v6;
  MEMORY[0x28223BE20](v6);
  v52 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v63 = &v52 - v9;
  v64 = sub_269D97010();
  v62 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v55 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_269D97670();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v52 - v16;
  v18 = sub_269D977A0();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v52 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = v3;
  v23 = [v3 calendar];
  sub_269D97710();

  sub_269D97690();
  v24 = *(v19 + 8);
  v24(v22, v18);
  (*(v12 + 104))(v14, *MEMORY[0x277CC9830], v11);
  LOBYTE(v23) = sub_269D97660();
  v25 = *(v12 + 8);
  v25(v14, v11);
  result = (v25)(v17, v11);
  if (v23)
  {
    v27 = sub_269D974B0();
    v28 = v58;
    v29 = [v58 calendar];
    sub_269D97710();

    v30 = sub_269D976E0();
    v53 = v18;
    v54 = v24;
    v24(v22, v18);
    v31 = v57;
    v32 = [v57 nextDateIntervalWithWakeUpAfterDate:v27 gregorianCalendar:v30];

    v33 = v55;
    sub_269D96F90();

    if (sub_269D96FE0())
    {
      v34 = v63;
      v35 = v33;
      sub_269D96FA0();
    }

    else
    {
      v34 = v63;
      v35 = v33;
      sub_269D96FD0();
    }

    v36 = [v28 calendar];
    sub_269D97710();

    v37 = v59;
    sub_269D97630();
    v38 = Calendar.dayPeriod(for:in:)(v34);
    (*(v60 + 8))(v37, v61);
    v54(v22, v53);
    v39 = sub_269D974B0();
    v40 = [v28 isDateInToday_];

    if (v40)
    {
      v41 = 0;
      v43 = v65;
      v42 = v66;
    }

    else
    {
      v44 = sub_269D974B0();
      v45 = [v28 isDateInTomorrow_];

      v43 = v65;
      v42 = v66;
      if (v45)
      {
        BSDayPeriod.simplified.getter(v38, v68);
        v41 = 1;
        if (v68[0] == 2)
        {
          v46 = [v28 startOfTomorrowMidnight];
          v47 = v52;
          sub_269D97540();

          sub_269D97490();
          v49 = v48;
          (*(v43 + 8))(v47, v42);
          if (v49 < 43200.0)
          {
            v41 = 0;
          }
        }
      }

      else
      {
        v41 = 2;
      }
    }

    v50 = [v31 isSingleDayOverride];
    (*(v43 + 8))(v34, v42);
    result = (*(v62 + 8))(v35, v64);
    v51 = v67;
    *v67 = v41;
    *(v51 + 1) = v38;
    v51[16] = v50;
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL LockScreenContentState.showsAlarmAction.getter()
{
  if (*v0)
  {
    v1 = *v0 == 3;
  }

  else
  {
    v1 = 1;
  }

  return !v1;
}

uint64_t LockScreenContentState.heading.getter()
{
  v1 = sub_269D97650();
  v21 = *(v1 - 8);
  v22 = v1;
  MEMORY[0x28223BE20](v1);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_269D97580();
  v4 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_269D97670();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_269D977A0();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = 0;
  if (*v0 >= 3u)
  {
    (*(v8 + 104))(v10, *MEMORY[0x277CC9830], v7, v13);
    sub_269D97680();
    (*(v8 + 8))(v10, v7);
    sub_269D97570();
    sub_269D97630();
    v17 = Calendar.dayPeriod(for:in:)(v6);
    (*(v21 + 8))(v3, v22);
    (*(v4 + 8))(v6, v20);
    (*(v12 + 8))(v15, v11);
    v23 = 0;
    sub_269D71D6C(&v23, v17);
    if (qword_280C0AE70 != -1)
    {
      swift_once();
    }

    v18 = qword_280C0D990;
    v19 = sub_269D972C0();

    return v19;
  }

  return result;
}

uint64_t LockScreenContentState.isShortFormat.getter()
{
  v0 = [objc_opt_self() currentTraitCollection];
  v1 = [v0 preferredContentSizeCategory];

  LOBYTE(v0) = sub_269D9AD00();
  return v0 & 1;
}

uint64_t LockScreenContentState.hashValue.getter()
{
  v1 = *v0;
  sub_269D9B350();
  MEMORY[0x26D6515B0](v1);
  return sub_269D9B390();
}

uint64_t static LockScreenContentState.== infix(_:_:)(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  if (*a1 > 1u)
  {
    if (*a1 == 2)
    {
      if (v2 == 2)
      {
        return 1;
      }
    }

    else if (v2 == 3)
    {
      return 1;
    }
  }

  else if (*a1)
  {
    if (v2 == 1)
    {
      return 1;
    }
  }

  else if (!*a2)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_269D48A74(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  if (*a1 > 1u)
  {
    if (*a1 == 2)
    {
      if (v2 != 2)
      {
        return 0;
      }
    }

    else if (v2 != 3)
    {
      return 0;
    }
  }

  else if (*a1)
  {
    if (v2 != 1)
    {
      return 0;
    }
  }

  else if (*a2)
  {
    return 0;
  }

  return 1;
}

unint64_t sub_269D48AC8()
{
  result = qword_2803511F0;
  if (!qword_2803511F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803511F0);
  }

  return result;
}

uint64_t View.sizeReader(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v13[0] = a1;
  v13[1] = a4;
  sub_269D12C5C();
  v6 = sub_269D98D00();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v13 - v8;
  v13[4] = sub_269D48D78;
  v13[5] = 0;
  sub_269D9A180();
  sub_269D12CF0();
  sub_269D48FB0(&qword_280350A48, sub_269D12CF0);
  sub_269D99A70();
  v10 = swift_allocObject();
  *(v10 + 16) = v13[0];
  *(v10 + 24) = a2;
  v11 = sub_269D48FB0(&qword_2803511F8, sub_269D12C5C);
  v13[2] = a3;
  v13[3] = v11;

  swift_getWitnessTable();
  sub_269D12DD4();
  sub_269D48F08();
  sub_269D99B70();

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_269D48D78@<X0>(uint64_t a1@<X8>)
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = sub_269D99D10();
  sub_269D98AD0();
  v4 = v3;
  v6 = v5;

  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6;
  *(a1 + 24) = 0;
  return result;
}

uint64_t sub_269D48E3C(uint64_t a1, void (*a2)(uint64_t, double, double))
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  if ((v5 & 1) == 0)
  {
    a2(isCurrentExecutor, v3, v4);
  }
}

unint64_t sub_269D48F08()
{
  result = qword_280350A58;
  if (!qword_280350A58)
  {
    sub_269D12FA8(255);
    sub_269D48FB0(&qword_280350A68, type metadata accessor for CGSize);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280350A58);
  }

  return result;
}

uint64_t sub_269D48FB0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_269D49008(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
}

void *sub_269D49018(void *result, void *(*a2)(__int128 *__return_ptr))
{
  v2 = result;
  if (*(result + 16) == 1)
  {
    result = a2(&v5);
    v3 = v5;
    v4 = v6;
  }

  else
  {
    v4 = 0;
    v3 = *result;
  }

  *v2 = v3;
  *(v2 + 16) = v4;
  return result;
}

uint64_t sub_269D49254(uint64_t a1, uint64_t *a2)
{
  v3 = sub_269D98250();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  sub_269D9A6F0();
  sub_269D9A6F0();
  return sub_269D98240();
}

uint64_t sub_269D49304@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_269D98250();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t NSObject.sp_className.getter()
{
  swift_getObjectType();
  sub_269D493D8();
  return sub_269D9A660();
}

unint64_t sub_269D493D8()
{
  result = qword_280351298[0];
  if (!qword_280351298[0])
  {
    sub_269C87114();
    result = swift_getMetatypeMetadata();
    atomic_store(result, qword_280351298);
  }

  return result;
}

unint64_t sub_269D49420()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = sub_269CFD578();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_269D494A8(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))();
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_DWORD *sub_269D495E4(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 24) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 24) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v10 = a3 - v7 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
      result = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v9) = v14;
      }

      else
      {
        *(result + v9) = v14;
      }
    }

    else if (v13)
    {
      *(result + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(result + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(result + v9) = 0;
  }

  else if (v13)
  {
    *(result + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFF)
  {
    v18 = ((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      *v18 = a2 & 0x7FFFFFFF;
      v18[1] = 0;
    }

    else
    {
      *v18 = a2 - 1;
    }
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

uint64_t sub_269D497F8(uint64_t a1)
{
  v17 = MEMORY[0x277CE1428];
  v15[0] = *(a1 + 16);
  v3 = *(a1 + 40);
  v18 = *(&v15[0] + 1);
  v19 = MEMORY[0x277CE1410];
  v20 = v3;
  sub_269D98C60();
  sub_269D98D00();
  swift_getTupleTypeMetadata2();
  sub_269D9A1C0();
  swift_getWitnessTable();
  v4 = sub_269D99FE0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v15 - v9;
  *&v11 = *(a1 + 32);
  *(&v11 + 1) = v3;
  v15[2] = v15[0];
  v15[3] = v11;
  v16 = v1;
  sub_269D9A180();
  sub_269D99FD0();
  WitnessTable = swift_getWitnessTable();
  sub_269CE81C8(v7, v4, WitnessTable);
  v13 = *(v5 + 8);
  v13(v7, v4);
  sub_269CE81C8(v10, v4, WitnessTable);
  return (v13)(v10, v4);
}

uint64_t sub_269D49A34@<X0>(uint64_t a1@<X0>, char *a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v55 = a4;
  v48 = a1;
  v53 = a5;
  v46 = *(a3 - 1);
  MEMORY[0x28223BE20](a1);
  v45 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = MEMORY[0x277CE1428];
  v60 = v8;
  v61 = MEMORY[0x277CE1410];
  v62 = v9;
  v49 = v9;
  v10 = sub_269D98C60();
  v47 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v44 = &v39 - v11;
  v43 = sub_269D98D00();
  v51 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v52 = &v39 - v15;
  v16 = *(a2 - 1);
  MEMORY[0x28223BE20](v17);
  v19 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v54 = &v39 - v21;
  sub_269D9A8E0();
  v50 = sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v59 = a2;
  v60 = a3;
  v22 = v55;
  v61 = v55;
  v62 = v49;
  v23 = type metadata accessor for NavigationLinkWithoutChevron();
  v24 = v48;
  (*(v48 + *(v23 + 52)))();
  v40 = a2;
  sub_269CE81C8(v19, a2, v22);
  v25 = v16;
  v26 = *(v16 + 8);
  v41 = v16 + 8;
  v42 = v26;
  v26(v19, a2);
  (*(v46 + 16))(v45, v24, a3);
  v27 = v44;
  sub_269D98C50();
  WitnessTable = swift_getWitnessTable();
  sub_269D99C20();
  (*(v47 + 8))(v27, v10);
  v58[2] = WitnessTable;
  v58[3] = MEMORY[0x277CDF900];
  v29 = v43;
  v30 = swift_getWitnessTable();
  v31 = v52;
  sub_269CE81C8(v13, v29, v30);
  v32 = v51;
  v33 = *(v51 + 8);
  v33(v13, v29);
  v34 = *(v25 + 16);
  v35 = v54;
  v36 = v40;
  v34(v19, v54, v40);
  v59 = v19;
  (*(v32 + 16))(v13, v31, v29);
  v60 = v13;
  v58[0] = v36;
  v58[1] = v29;
  v56 = v55;
  v57 = v30;
  sub_269CE3874(&v59, 2uLL, v58);
  v33(v31, v29);
  v37 = v42;
  v42(v35, v36);
  v33(v13, v29);
  v37(v19, v36);
}

uint64_t sub_269D49FC8()
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }
}

uint64_t sub_269D4A0F0(uint64_t a1, uint64_t *a2)
{
  v3 = sub_269D98220();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  sub_269D9A6F0();
  sub_269D9A6F0();
  return sub_269D98210();
}

uint64_t sub_269D4A1A0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_269D98220();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

id static LocalizedStringTable.harmonia.getter@<X0>(void *a1@<X8>)
{
  if (qword_280C0AE70 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v2 = qword_280C0D990;
  *a1 = 0xD000000000000014;
  a1[1] = 0x8000000269DADB00;
  a1[2] = v2;

  return v2;
}

id static LocalizedStringTable.sleepStages.getter@<X0>(void *a1@<X8>)
{
  if (qword_280C0AE70 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v2 = qword_280C0D990;
  *a1 = 0xD000000000000012;
  a1[1] = 0x8000000269DB1030;
  a1[2] = v2;

  return v2;
}

uint64_t sub_269D4A384(uint64_t a1)
{
  v2 = sub_269D97650();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_269D9A5E0();
  v4 = MEMORY[0x28223BE20](v3);
  (*(v6 + 16))(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  sub_269D4A5A8();
  if (!sub_269D9ADB0())
  {
    v7 = [objc_opt_self() mainBundle];
  }

  sub_269D97630();
  return sub_269D9A650();
}

id sub_269D4A52C@<X0>(void *a1@<X0>, void **a2@<X1>, void *a3@<X8>)
{
  if (*a1 != -1)
  {
    v6 = a2;
    v7 = a3;
    swift_once();
    a2 = v6;
    a3 = v7;
  }

  v4 = *a2;
  *a3 = 0x617A696C61636F4CLL;
  a3[1] = 0xEB00000000656C62;
  a3[2] = v4;

  return v4;
}

unint64_t sub_269D4A5A8()
{
  result = qword_280351368;
  if (!qword_280351368)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280351368);
  }

  return result;
}

uint64_t AlarmPreviewPlayer.__allocating_init(model:)(uint64_t a1)
{
  v2 = swift_allocObject();
  AlarmPreviewPlayer.init(model:)(a1);
  return v2;
}

void sub_269D4A634()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = v0;
    v3 = qword_280C0B218;
    v12 = v1;
    if (v3 != -1)
    {
      swift_once();
    }

    v4 = sub_269D98250();
    __swift_project_value_buffer(v4, qword_280C0B220);
    v5 = sub_269D98230();
    v6 = sub_269D9AB80();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v13 = v8;
      *v7 = 136446210;
      v9 = sub_269D9B4D0();
      v11 = sub_269C2EACC(v9, v10, &v13);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_269C18000, v5, v6, "[%{public}s] Updating audio volume on actively playing alert preview", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v8);
      MEMORY[0x26D652460](v8, -1, -1);
      MEMORY[0x26D652460](v7, -1, -1);
    }

    [*(v2 + 16) audioVolume];
    [v12 _updateAudioVolumeDynamicallyToValue_];
  }
}

void sub_269D4A80C(void *a1)
{
  v2 = *v1;
  [a1 stop];
  v3 = v1[3];
  if (v3)
  {
    v4 = swift_allocObject();
    swift_weakInit();
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    *(v5 + 24) = v2;
    v8[4] = sub_269D4BBF0;
    v8[5] = v5;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 1107296256;
    v8[2] = sub_269D4ADD4;
    v8[3] = &block_descriptor_34_0;
    v6 = _Block_copy(v8);
    v7 = v3;

    [v7 playWithCompletionHandler_];
    _Block_release(v6);
  }
}

void sub_269D4A948(uint64_t a1, void *a2, uint64_t a3)
{
  sub_269C7FD00(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280C0B218 != -1)
  {
    swift_once();
  }

  v8 = sub_269D98250();
  __swift_project_value_buffer(v8, qword_280C0B220);
  v9 = a2;
  v10 = sub_269D98230();
  v11 = sub_269D9AB80();
  if (!os_log_type_enabled(v10, v11))
  {

LABEL_10:
    v28 = sub_269D9A900();
    (*(*(v28 - 8) + 56))(v7, 1, 1, v28);
    sub_269D9A8E0();

    v29 = sub_269D9A8D0();
    v30 = swift_allocObject();
    v31 = MEMORY[0x277D85700];
    v30[2] = v29;
    v30[3] = v31;
    v30[4] = a3;
    sub_269C7A29C(0, 0, v7, &unk_269DA9B90, v30);

    return;
  }

  v33 = a3;
  v12 = swift_slowAlloc();
  v13 = swift_slowAlloc();
  v35 = v13;
  *v12 = 136446722;
  v14 = sub_269D9B4D0();
  v16 = sub_269C2EACC(v14, v15, &v35);

  *(v12 + 4) = v16;
  *(v12 + 12) = 2082;
  v17 = NSStringFromTLAlertPlaybackCompletionType();
  if (v17)
  {
    v18 = v17;

    v19 = sub_269D9A630();
    v21 = v20;

    v22 = sub_269C2EACC(v19, v21, &v35);

    *(v12 + 14) = v22;
    *(v12 + 22) = 2082;
    if (a2)
    {
      v34 = a2;
      v23 = a2;
      sub_269C80B44();
      v24 = sub_269D9A660();
      v26 = v25;
    }

    else
    {
      v26 = 0xE300000000000000;
      v24 = 7104878;
    }

    a3 = v33;
    v27 = sub_269C2EACC(v24, v26, &v35);

    *(v12 + 24) = v27;
    _os_log_impl(&dword_269C18000, v10, v11, "[%{public}s] Alert finished playing for %{public}s with error: %{public}s", v12, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x26D652460](v13, -1, -1);
    MEMORY[0x26D652460](v12, -1, -1);

    goto LABEL_10;
  }

  __break(1u);
}

uint64_t sub_269D4AC8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  v4[6] = a4;
  sub_269D9A8E0();
  v4[7] = sub_269D9A8D0();
  v6 = sub_269D9A880();

  return MEMORY[0x2822009F8](sub_269D4AD24, v6, v5);
}

uint64_t sub_269D4AD24()
{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v2 = Strong;
  if (Strong)
  {
    v3 = *(Strong + 24);
    *(Strong + 24) = 0;
    sub_269D4A80C(v3);
  }

  **(v0 + 40) = v2 == 0;
  v4 = *(v0 + 8);

  return v4();
}

void sub_269D4ADD4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t AlarmPreviewPlayer.init(model:)(uint64_t a1)
{
  v2 = v1;
  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
  v3 = [*(a1 + OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_mutableOccurrence) alarmConfiguration];
  [v3 mutableCopy];

  sub_269D9AED0();
  swift_unknownObjectRelease();
  sub_269C1B0B8(0, &qword_28034D9C0);
  swift_dynamicCast();
  v4 = sub_269D4AFC8();

  *(v2 + 16) = v4;
  swift_allocObject();
  swift_weakInit();
  sub_269C2D3B8();
  sub_269D4B218();

  v5 = sub_269D98900();

  *(v2 + 32) = v5;

  return v2;
}

id sub_269D4AFC8()
{
  v1 = [objc_allocWithZone(MEMORY[0x277D71F58]) initWithType_];
  [v1 setTopic_];
  v2 = [v0 toneIdentifier];
  if (v2)
  {
    v3 = v2;
    [v1 setToneIdentifier_];
  }

  v4 = [v0 vibrationIdentifier];
  if (v4)
  {
    v5 = v4;
    [v1 setVibrationIdentifier_];
  }

  v6 = [v0 soundVolume];
  if (v6)
  {
    v7 = v6;
    [v6 floatValue];
    v9 = v8;

    LODWORD(v10) = v9;
    [v1 setAudioVolume_];
  }

  [v1 setShouldRepeat_];
  [v1 setForPreview_];
  return v1;
}

void sub_269D4B110()
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = sub_269D4AFC8();
    v3 = *(v1 + 16);
    *(v1 + 16) = v2;
    v4 = v2;

    sub_269D4A634();
  }

  else
  {
  }
}

unint64_t sub_269D4B218()
{
  result = qword_28034EF70;
  if (!qword_28034EF70)
  {
    sub_269C2D3B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034EF70);
  }

  return result;
}

void sub_269D4B270()
{
  v1 = *v0;
  if (v0[3])
  {
    if (qword_280C0B218 != -1)
    {
      swift_once();
    }

    v2 = sub_269D98250();
    __swift_project_value_buffer(v2, qword_280C0B220);
    oslog = sub_269D98230();
    v3 = sub_269D9AB80();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      aBlock[0] = v5;
      *v4 = 136446210;
      v6 = sub_269D9B4D0();
      v8 = sub_269C2EACC(v6, v7, aBlock);

      *(v4 + 4) = v8;
      _os_log_impl(&dword_269C18000, oslog, v3, "[%{public}s] Already playing alert", v4, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v5);
      MEMORY[0x26D652460](v5, -1, -1);
      MEMORY[0x26D652460](v4, -1, -1);

      return;
    }
  }

  else
  {
    v9 = v0;
    if (qword_280C0B218 != -1)
    {
      swift_once();
    }

    v10 = sub_269D98250();
    __swift_project_value_buffer(v10, qword_280C0B220);

    v11 = sub_269D98230();
    v12 = sub_269D9AB80();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      aBlock[0] = v14;
      *v13 = 136446466;
      v15 = sub_269D9B4D0();
      v17 = sub_269C2EACC(v15, v16, aBlock);

      *(v13 + 4) = v17;
      *(v13 + 12) = 2082;
      v18 = v9[2];
      v19 = [v18 description];
      v20 = sub_269D9A630();
      v22 = v21;

      v23 = sub_269C2EACC(v20, v22, aBlock);

      *(v13 + 14) = v23;
      _os_log_impl(&dword_269C18000, v11, v12, "[%{public}s] Playing new alert for %{public}s", v13, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D652460](v14, -1, -1);
      MEMORY[0x26D652460](v13, -1, -1);
    }

    v24 = [objc_opt_self() alertWithConfiguration_];
    oslog = v9[3];
    v9[3] = v24;
    v25 = v24;
    [oslog stop];
    v26 = v9[3];
    if (v26)
    {
      v27 = swift_allocObject();
      swift_weakInit();
      v28 = swift_allocObject();
      *(v28 + 16) = v27;
      *(v28 + 24) = v1;
      aBlock[4] = sub_269D4B6F4;
      aBlock[5] = v28;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_269D4ADD4;
      aBlock[3] = &block_descriptor_33;
      v29 = _Block_copy(aBlock);
      v30 = v26;

      [v30 playWithCompletionHandler_];
      _Block_release(v29);

      return;
    }
  }
}

uint64_t block_copy_helper_34(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_269D4B714()
{
  v1 = v0;
  v2 = *v0;
  if (qword_280C0B218 != -1)
  {
    swift_once();
  }

  v3 = sub_269D98250();
  __swift_project_value_buffer(v3, qword_280C0B220);

  v4 = sub_269D98230();
  v5 = sub_269D9AB80();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    aBlock[0] = v7;
    *v6 = 136446466;
    v8 = sub_269D9B4D0();
    v10 = sub_269C2EACC(v8, v9, aBlock);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2082;
    v11 = v1[3];
    if (v11)
    {
      sub_269C1B0B8(0, &unk_280351370);
      v12 = v11;
      v13 = sub_269D9A660();
      v15 = v14;
    }

    else
    {
      v15 = 0xE300000000000000;
      v13 = 7104878;
    }

    v16 = sub_269C2EACC(v13, v15, aBlock);

    *(v6 + 14) = v16;
    _os_log_impl(&dword_269C18000, v4, v5, "[%{public}s] Stopping alert: %{public}s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D652460](v7, -1, -1);
    MEMORY[0x26D652460](v6, -1, -1);
  }

  [v1[3] stop];
  v17 = v1[3];
  v1[3] = 0;
  [v17 stop];
  v18 = v1[3];
  if (v18)
  {
    v19 = swift_allocObject();
    swift_weakInit();
    v20 = swift_allocObject();
    *(v20 + 16) = v19;
    *(v20 + 24) = v2;
    aBlock[4] = sub_269D4BBF0;
    aBlock[5] = v20;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_269D4ADD4;
    aBlock[3] = &block_descriptor_12_3;
    v21 = _Block_copy(aBlock);
    v22 = v18;

    [v22 playWithCompletionHandler_];
    _Block_release(v21);

    v17 = v22;
  }
}

uint64_t AlarmPreviewPlayer.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_269D4BB34(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_269C71C08;

  return sub_269D4AC8C(a1, v4, v5, v6);
}

id sub_269D4BBFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = &v3[OBJC_IVAR____TtC13SleepHealthUI33ConfirmationFeaturesTableViewCell_item];
  *v7 = 0u;
  *(v7 + 1) = 0u;
  *(v7 + 4) = 0;
  v8 = *MEMORY[0x277D769D0];
  v9 = [objc_opt_self() hk_sleepKeyColor];
  v10 = *MEMORY[0x277D74420];
  v11 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v12 = v11;
  if (v9)
  {
    [v11 setTextColor_];
  }

  v13 = OBJC_IVAR____TtC13SleepHealthUI33ConfirmationFeaturesTableViewCell_titleLabel;
  sub_269C1B0B8(0, &qword_28034E5F0);
  v14 = static UIFont.preferredFont(for:traits:rounded:short:loose:smallCaps:monospaced:weight:)(v8, 0, 0, 0, 0, 0, 0, v10, 0);
  [v12 setFont_];

  [v12 setTranslatesAutoresizingMaskIntoConstraints_];
  [v12 setAdjustsFontForContentSizeCategory_];
  [v12 setLineBreakMode_];
  [v12 setNumberOfLines_];

  *&v4[v13] = v12;
  v15 = OBJC_IVAR____TtC13SleepHealthUI33ConfirmationFeaturesTableViewCell_sleepFocusModeView;
  v16 = type metadata accessor for ConfirmationFeatureView();
  *&v4[v15] = [objc_allocWithZone(v16) init];
  v17 = OBJC_IVAR____TtC13SleepHealthUI33ConfirmationFeaturesTableViewCell_sleepScreenView;
  *&v4[v17] = [objc_allocWithZone(v16) init];
  v18 = OBJC_IVAR____TtC13SleepHealthUI33ConfirmationFeaturesTableViewCell_windDownView;
  *&v4[v18] = [objc_allocWithZone(v16) init];
  v19 = OBJC_IVAR____TtC13SleepHealthUI33ConfirmationFeaturesTableViewCell_sleepTrackingView;
  *&v4[v19] = [objc_allocWithZone(v16) init];
  v20 = OBJC_IVAR____TtC13SleepHealthUI33ConfirmationFeaturesTableViewCell_healthStatusView;
  *&v4[v20] = [objc_allocWithZone(v16) init];
  *&v4[OBJC_IVAR____TtC13SleepHealthUI33ConfirmationFeaturesTableViewCell_currentConstraints] = MEMORY[0x277D84F90];
  if (a3)
  {
    v21 = sub_269D9A5F0();
  }

  else
  {
    v21 = 0;
  }

  v28.receiver = v4;
  v28.super_class = type metadata accessor for ConfirmationFeaturesTableViewCell();
  v22 = objc_msgSendSuper2(&v28, sel_initWithStyle_reuseIdentifier_, a1, v21);

  v23 = v22;
  [v23 setAccessoryType_];
  [v23 setSelectionStyle_];
  sub_269D4C288();
  sub_269D4C408();
  sub_269C57F8C();
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_269D9EBE0;
  v25 = sub_269D983D0();
  v26 = MEMORY[0x277D74DB8];
  *(v24 + 32) = v25;
  *(v24 + 40) = v26;
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_269C30054();
  sub_269D9AD50();

  swift_unknownObjectRelease();

  return v23;
}

void sub_269D4BF70(uint64_t a1, void *a2)
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (a2)
    {
      v5 = objc_opt_self();
      v6 = a2;
      v7 = [v5 currentTraitCollection];
      v8 = [v7 preferredContentSizeCategory];
      v9 = sub_269D9AD00();

      v10 = [v6 preferredContentSizeCategory];
      LODWORD(v8) = sub_269D9AD00();

      if ((v9 ^ v8))
      {
        sub_269D4C408();
      }
    }

    else
    {
      sub_269D4C408();
    }
  }

  else
  {
  }
}

uint64_t sub_269D4C288()
{
  v1 = v0;
  sub_269C4E764();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_269DA2A30;
  v3 = *&v0[OBJC_IVAR____TtC13SleepHealthUI33ConfirmationFeaturesTableViewCell_titleLabel];
  *(v2 + 32) = v3;
  v18._rawValue = v2;
  v4 = *&v0[OBJC_IVAR____TtC13SleepHealthUI33ConfirmationFeaturesTableViewCell_healthStatusView];
  v5 = v3;
  v6 = v4;
  MEMORY[0x26D650A10]();
  if (*((v18._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18._rawValue & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_269D9A7F0();
  }

  sub_269D9A820();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_269DA0E10;
  v8 = *&v1[OBJC_IVAR____TtC13SleepHealthUI33ConfirmationFeaturesTableViewCell_sleepScreenView];
  *(inited + 32) = v8;
  v9 = *&v1[OBJC_IVAR____TtC13SleepHealthUI33ConfirmationFeaturesTableViewCell_windDownView];
  *(inited + 40) = v9;
  v10 = *&v1[OBJC_IVAR____TtC13SleepHealthUI33ConfirmationFeaturesTableViewCell_sleepFocusModeView];
  *(inited + 48) = v10;
  v11 = *&v1[OBJC_IVAR____TtC13SleepHealthUI33ConfirmationFeaturesTableViewCell_sleepTrackingView];
  *(inited + 56) = v11;
  v12 = v8;
  v13 = v9;
  v14 = v10;
  v15 = v11;
  sub_269C49F54(inited);
  v16 = [v1 contentView];
  UIView.addSubviews(_:useAutoLayout:)(v18, 1);
}

id sub_269D4C408()
{
  v1 = v0;
  v2 = objc_opt_self();
  v3 = OBJC_IVAR____TtC13SleepHealthUI33ConfirmationFeaturesTableViewCell_currentConstraints;
  sub_269C1B0B8(0, &qword_28034E1C0);

  v4 = sub_269D9A7D0();

  [v2 deactivateConstraints_];

  v5 = [v1 contentView];
  v6 = [v1 contentView];
  v7 = [v6 subviews];

  sub_269C1B0B8(0, &qword_2803505E0);
  v8 = sub_269D9A7E0();

  v9 = [objc_opt_self() currentTraitCollection];
  v10 = [v9 preferredContentSizeCategory];
  v11 = sub_269D9AD00();

  v12 = 14.0;
  if (v11)
  {
    v12 = 16.0;
  }

  UIView.constraints(verticallyStackedViews:interitemSpacing:contentInsets:)(v8, v12, 16.0, 0.0, 16.0, 0.0);
  v14 = v13;

  v15 = sub_269D9A7D0();
  [v2 activateConstraints_];

  *&v1[v3] = v14;

  return [v1 setNeedsLayout];
}

uint64_t sub_269D4C60C()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC13SleepHealthUI33ConfirmationFeaturesTableViewCell_item;
  swift_beginAccess();
  sub_269C63264(&v1[v2], v39);
  if (!v40)
  {
    sub_269C8492C(v39, &qword_28034E548, &qword_28034E550);
    v36 = 0u;
    v37 = 0u;
    v38 = 0;
    return sub_269C8492C(&v36, &qword_2803513C8, &qword_2803513D0);
  }

  sub_269C3232C(0, &qword_28034E550);
  sub_269C3232C(0, &qword_2803513D0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v38 = 0;
    v36 = 0u;
    v37 = 0u;
    return sub_269C8492C(&v36, &qword_2803513C8, &qword_2803513D0);
  }

  if (!*(&v37 + 1))
  {
    return sub_269C8492C(&v36, &qword_2803513C8, &qword_2803513D0);
  }

  sub_269C25520(&v36, v39);
  *&v36 = MEMORY[0x277D84F90];
  v3 = *&v1[OBJC_IVAR____TtC13SleepHealthUI33ConfirmationFeaturesTableViewCell_healthStatusView];
  MEMORY[0x26D650A10]();
  if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_269D9A7F0();
  }

  v34 = v3;
  sub_269D9A820();
  sub_269C4E764();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_269DA0E10;
  v5 = *&v1[OBJC_IVAR____TtC13SleepHealthUI33ConfirmationFeaturesTableViewCell_sleepScreenView];
  *(inited + 32) = v5;
  v6 = *&v1[OBJC_IVAR____TtC13SleepHealthUI33ConfirmationFeaturesTableViewCell_windDownView];
  *(inited + 40) = v6;
  v7 = *&v1[OBJC_IVAR____TtC13SleepHealthUI33ConfirmationFeaturesTableViewCell_sleepFocusModeView];
  *(inited + 48) = v7;
  v8 = *&v1[OBJC_IVAR____TtC13SleepHealthUI33ConfirmationFeaturesTableViewCell_sleepTrackingView];
  *(inited + 56) = v8;
  v9 = v5;
  v10 = v6;
  v11 = v7;
  v33 = v8;
  sub_269C49E44(inited);
  result = __swift_project_boxed_opaque_existential_1Tm(v39, v40);
  v35 = *(result + 8);
  v13 = v36;
  if (v36 >> 62)
  {
    result = sub_269D9AF50();
    v14 = result;
    if (!result)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v14 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v14)
    {
      goto LABEL_24;
    }
  }

  if (v14 < 1)
  {
    __break(1u);
    return result;
  }

  for (i = 0; i != v14; ++i)
  {
    if ((v13 & 0xC000000000000001) != 0)
    {
      v16 = MEMORY[0x26D651260](i, v13);
    }

    else
    {
      v16 = *(v13 + 8 * i + 32);
    }

    v17 = v16;
    if (*&v16[OBJC_IVAR____TtC13SleepHealthUI23ConfirmationFeatureView_viewModel + 8])
    {
      v18 = v16[OBJC_IVAR____TtC13SleepHealthUI23ConfirmationFeatureView_viewModel + 32] & 1;
      v19 = [v1 contentView];
      sub_269C1B0B8(0, &qword_2803505E0);
      v20 = v17;
      v21 = sub_269D9ACB0();

      if (v35 == v18)
      {
        if ((v21 & 1) == 0)
        {
          v22 = [v1 contentView];
          [v22 addSubview_];
        }
      }

      else if (v21)
      {
        [v20 removeFromSuperview];
      }
    }
  }

LABEL_24:

  v23 = __swift_project_boxed_opaque_existential_1Tm(v39, v40);
  v24 = *(*v23 + 112);
  v25 = *(*v23 + 120);
  __swift_project_boxed_opaque_existential_1Tm((*v23 + 88), v24);
  if (((*(v25 + 96))(v24, v25) & 1) == 0)
  {
    v26 = [v1 contentView];
    sub_269C1B0B8(0, &qword_2803505E0);
    v27 = sub_269D9ACB0();

    if (v27)
    {
      [v33 removeFromSuperview];
    }
  }

  v28 = __swift_project_boxed_opaque_existential_1Tm(v39, v40);
  v29 = *(*v28 + 112);
  v30 = *(*v28 + 120);
  __swift_project_boxed_opaque_existential_1Tm((*v28 + 88), v29);
  if (((*(v30 + 136))(v29, v30) & 1) == 0)
  {
    v31 = [v1 contentView];
    sub_269C1B0B8(0, &qword_2803505E0);
    v32 = sub_269D9ACB0();

    if (v32)
    {
      [v34 removeFromSuperview];
    }
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v39);
}

uint64_t sub_269D4CAF0()
{
  v1 = OBJC_IVAR____TtC13SleepHealthUI33ConfirmationFeaturesTableViewCell_item;
  swift_beginAccess();
  sub_269C63264(&v0[v1], &v20);
  if (*(&v21 + 1))
  {
    sub_269C3232C(0, &qword_28034E550);
    sub_269C3232C(0, &qword_2803513D0);
    if (swift_dynamicCast())
    {
      if (*(&v28 + 1))
      {
        sub_269C25520(&v27, v30);
        v2 = *&v0[OBJC_IVAR____TtC13SleepHealthUI33ConfirmationFeaturesTableViewCell_titleLabel];
        v3 = __swift_project_boxed_opaque_existential_1Tm(v30, v31);
        sub_269C5E624(*(v3 + 8));
        v4 = sub_269D9A5F0();

        [v2 setText_];

        __swift_project_boxed_opaque_existential_1Tm(v30, v31);
        sub_269C5D4A4(&v20);
        sub_269C567E0(&v20);
        v12[4] = v24;
        v12[5] = v25;
        v13 = v26;
        v12[0] = v20;
        v12[1] = v21;
        v12[2] = v22;
        v12[3] = v23;
        sub_269C5E5D0(v12);
        v5 = __swift_project_boxed_opaque_existential_1Tm(v30, v31);
        sub_269C5D738(*v5, &v20);
        sub_269C567E0(&v20);
        v14[4] = v24;
        v14[5] = v25;
        v15 = v26;
        v14[0] = v20;
        v14[1] = v21;
        v14[2] = v22;
        v14[3] = v23;
        sub_269C5E5D0(v14);
        v6 = __swift_project_boxed_opaque_existential_1Tm(v30, v31);
        sub_269C5DC34(*v6, &v20);
        sub_269C567E0(&v20);
        v16[4] = v24;
        v16[5] = v25;
        v17 = v26;
        v16[0] = v20;
        v16[1] = v21;
        v16[2] = v22;
        v16[3] = v23;
        sub_269C5E5D0(v16);
        v7 = __swift_project_boxed_opaque_existential_1Tm(v30, v31);
        sub_269C5D9B8(*v7, &v20);
        sub_269C567E0(&v20);
        v18[4] = v24;
        v18[5] = v25;
        v19 = v26;
        v18[0] = v20;
        v18[1] = v21;
        v18[2] = v22;
        v18[3] = v23;
        sub_269C5E5D0(v18);
        v8 = __swift_project_boxed_opaque_existential_1Tm(v30, v31);
        sub_269C5DF7C(*v8, v10);
        sub_269C567E0(v10);
        v24 = v10[4];
        v25 = v10[5];
        v26 = v11;
        v20 = v10[0];
        v21 = v10[1];
        v22 = v10[2];
        v23 = v10[3];
        sub_269C5E5D0(&v20);
        sub_269D4C60C();
        sub_269D4C408();
        __swift_project_boxed_opaque_existential_1Tm(v30, v31);
        [v0 separatorInset];
        [v0 setSeparatorInset_];
        return __swift_destroy_boxed_opaque_existential_1Tm(v30);
      }
    }

    else
    {
      v29 = 0;
      v27 = 0u;
      v28 = 0u;
    }
  }

  else
  {
    sub_269C8492C(&v20, &qword_28034E548, &qword_28034E550);
    v27 = 0u;
    v28 = 0u;
    v29 = 0;
  }

  return sub_269C8492C(&v27, &qword_2803513C8, &qword_2803513D0);
}

id sub_269D4CEF4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ConfirmationFeaturesTableViewCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_269D4D010@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC13SleepHealthUI33ConfirmationFeaturesTableViewCell_item;
  swift_beginAccess();
  return sub_269C63264(v1 + v3, a1);
}

uint64_t sub_269D4D068(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13SleepHealthUI33ConfirmationFeaturesTableViewCell_item;
  swift_beginAccess();
  sub_269C6314C(a1, v1 + v3);
  swift_endAccess();
  sub_269D4CAF0();
  return sub_269C8492C(a1, &qword_28034E548, &qword_28034E550);
}

uint64_t (*sub_269D4D0EC(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_269D4D150;
}

uint64_t sub_269D4D150(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_269D4CAF0();
  }

  return result;
}

void sub_269D4D1F8()
{
  v1 = v0;
  v2 = v0 + OBJC_IVAR____TtC13SleepHealthUI33ConfirmationFeaturesTableViewCell_item;
  *v2 = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0;
  v3 = *MEMORY[0x277D769D0];
  v4 = [objc_opt_self() hk_sleepKeyColor];
  v5 = *MEMORY[0x277D74420];
  v6 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v7 = v6;
  if (v4)
  {
    [v6 setTextColor_];
  }

  v8 = OBJC_IVAR____TtC13SleepHealthUI33ConfirmationFeaturesTableViewCell_titleLabel;
  sub_269C1B0B8(0, &qword_28034E5F0);
  v9 = static UIFont.preferredFont(for:traits:rounded:short:loose:smallCaps:monospaced:weight:)(v3, 0, 0, 0, 0, 0, 0, v5, 0);
  [v7 setFont_];

  [v7 setTranslatesAutoresizingMaskIntoConstraints_];
  [v7 setAdjustsFontForContentSizeCategory_];
  [v7 setLineBreakMode_];
  [v7 setNumberOfLines_];

  *(v1 + v8) = v7;
  v10 = OBJC_IVAR____TtC13SleepHealthUI33ConfirmationFeaturesTableViewCell_sleepFocusModeView;
  v11 = type metadata accessor for ConfirmationFeatureView();
  *(v1 + v10) = [objc_allocWithZone(v11) init];
  v12 = OBJC_IVAR____TtC13SleepHealthUI33ConfirmationFeaturesTableViewCell_sleepScreenView;
  *(v1 + v12) = [objc_allocWithZone(v11) init];
  v13 = OBJC_IVAR____TtC13SleepHealthUI33ConfirmationFeaturesTableViewCell_windDownView;
  *(v1 + v13) = [objc_allocWithZone(v11) init];
  v14 = OBJC_IVAR____TtC13SleepHealthUI33ConfirmationFeaturesTableViewCell_sleepTrackingView;
  *(v1 + v14) = [objc_allocWithZone(v11) init];
  v15 = OBJC_IVAR____TtC13SleepHealthUI33ConfirmationFeaturesTableViewCell_healthStatusView;
  *(v1 + v15) = [objc_allocWithZone(v11) init];
  *(v1 + OBJC_IVAR____TtC13SleepHealthUI33ConfirmationFeaturesTableViewCell_currentConstraints) = MEMORY[0x277D84F90];
  sub_269D9B100();
  __break(1u);
}

void sub_269D4D464()
{
  v1 = [v0 contentView];
  [v1 addSubview_];

  v2 = [v0 contentView];
  [v2 addSubview_];

  v3 = [v0 contentView];
  [v3 addSubview_];
}

id sub_269D4D540()
{
  sub_269CF4400();
  v1 = *(v0 + OBJC_IVAR____TtC13SleepHealthUI60ScheduleOccurrenceComponentsAndDayAccessibilityTableViewCell_dayLabel);
  LODWORD(v2) = 1148813312;
  [v1 setContentHuggingPriority:1 forAxis:v2];
  LODWORD(v3) = 1148846080;
  [v1 setContentCompressionResistancePriority:1 forAxis:v3];

  return [v1 setTranslatesAutoresizingMaskIntoConstraints_];
}

void sub_269D4D5C8()
{
  sub_269CF4F24();
  v16 = objc_opt_self();
  sub_269C4E764();
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_269DA23C0;
  v2 = *&v0[OBJC_IVAR____TtC13SleepHealthUI60ScheduleOccurrenceComponentsAndDayAccessibilityTableViewCell_dayLabel];
  v3 = [v2 topAnchor];
  v4 = [*&v0[OBJC_IVAR____TtC13SleepHealthUI54ScheduleOccurrenceComponentsAccessibilityTableViewCell_datePicker] bottomAnchor];
  v5 = [v3 constraintEqualToAnchor_];

  *(v1 + 32) = v5;
  v6 = [v2 leadingAnchor];
  v7 = [v0 contentView];
  v8 = [v7 layoutMarginsGuide];

  v9 = [v8 leadingAnchor];
  v10 = [v6 constraintEqualToAnchor_];

  *(v1 + 40) = v10;
  v11 = [v0 contentView];
  v12 = [v11 layoutMarginsGuide];

  v13 = [v12 trailingAnchor];
  v14 = [v2 trailingAnchor];
  v15 = [v13 constraintEqualToAnchor_];

  *(v1 + 48) = v15;
  sub_269C1B0B8(0, &qword_28034E1C0);
  v17 = sub_269D9A7D0();

  [v16 activateConstraints_];
}

void sub_269D4D844()
{
  v1 = objc_opt_self();
  sub_269C4E764();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_269DA2A30;
  v3 = [v0 contentView];
  v4 = [v3 layoutMarginsGuide];

  v5 = [v4 bottomAnchor];
  v6 = [*&v0[OBJC_IVAR____TtC13SleepHealthUI60ScheduleOccurrenceComponentsAndDayAccessibilityTableViewCell_dayLabel] bottomAnchor];
  v7 = [v5 constraintEqualToAnchor_];

  *(v2 + 32) = v7;
  sub_269C1B0B8(0, &qword_28034E1C0);
  v8 = sub_269D9A7D0();

  [v1 activateConstraints_];
}

void sub_269D4D9B4(unsigned __int8 *a1)
{
  sub_269CF6324(a1);
  v3 = type metadata accessor for SleepScheduleComponentsViewModel();
  v4 = &a1[*(v3 + 68)];
  v5 = *v4;
  v6 = *(v4 + 1);
  v7 = v1 + OBJC_IVAR____TtC13SleepHealthUI54ScheduleOccurrenceComponentsAccessibilityTableViewCell_model;
  swift_beginAccess();
  v8 = (v7 + *(v3 + 68));
  v9 = v8[1];
  if (v6)
  {
    if (!v9)
    {
      goto LABEL_19;
    }

    v10 = v5 == *v8 && v6 == v9;
    if (!v10 && (sub_269D9B280() & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  else if (v9)
  {
    goto LABEL_19;
  }

  v11 = *(v3 + 64);
  v12 = &a1[v11];
  v13 = *&a1[v11 + 8];
  v14 = (v7 + v11);
  v15 = v14[1];
  if (!v13)
  {
    if (!v15)
    {
      return;
    }

    goto LABEL_19;
  }

  if (!v15 || (*v12 == *v14 ? (v16 = v13 == v15) : (v16 = 0), !v16 && (sub_269D9B280() & 1) == 0))
  {
LABEL_19:
    sub_269D4DAB4();
  }
}

void sub_269D4DAB4()
{
  v1 = *(v0 + OBJC_IVAR____TtC13SleepHealthUI54ScheduleOccurrenceComponentsAccessibilityTableViewCell_component);
  v2 = *(v0 + OBJC_IVAR____TtC13SleepHealthUI60ScheduleOccurrenceComponentsAndDayAccessibilityTableViewCell_dayLabel);
  v3 = v0 + OBJC_IVAR____TtC13SleepHealthUI54ScheduleOccurrenceComponentsAccessibilityTableViewCell_model;
  if (v1)
  {
    swift_beginAccess();
    v4 = *(type metadata accessor for SleepScheduleComponentsViewModel() + 68);
  }

  else
  {
    swift_beginAccess();
    v4 = *(type metadata accessor for SleepScheduleComponentsViewModel() + 64);
  }

  if (*(v3 + v4 + 8))
  {

    v5 = sub_269D9A5F0();
  }

  else
  {
    v5 = 0;
  }

  [v2 setText_];
}

id ScheduleOccurrenceComponentsAndDayAccessibilityTableViewCell.__allocating_init(style:reuseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a3)
  {
    v6 = sub_269D9A5F0();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithStyle:a1 reuseIdentifier:v6];

  return v7;
}

id ScheduleOccurrenceComponentsAndDayAccessibilityTableViewCell.init(style:reuseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = OBJC_IVAR____TtC13SleepHealthUI60ScheduleOccurrenceComponentsAndDayAccessibilityTableViewCell_dayLabel;
  v8 = [objc_opt_self() secondaryLabelColor];
  v9 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v9 setTextColor_];

  sub_269C1B0B8(0, &qword_28034E5F0);
  v10 = static UIFont.preferredFont(for:traits:rounded:short:loose:smallCaps:monospaced:weight:)(*MEMORY[0x277D76968], 0, 0, 1, 0, 0, 0, *MEMORY[0x277D74420], 0);
  [v9 setFont_];

  [v9 setAdjustsFontForContentSizeCategory_];
  [v9 setAdjustsFontSizeToFitWidth_];
  [v9 setNumberOfLines_];
  v11 = sub_269D9A5F0();
  [v9 setText_];

  *&v4[v7] = v9;
  if (a3)
  {
    v12 = sub_269D9A5F0();
  }

  else
  {
    v12 = 0;
  }

  v15.receiver = v4;
  v15.super_class = type metadata accessor for ScheduleOccurrenceComponentsAndDayAccessibilityTableViewCell();
  v13 = objc_msgSendSuper2(&v15, sel_initWithStyle_reuseIdentifier_, a1, v12);

  return v13;
}

id ScheduleOccurrenceComponentsAndDayAccessibilityTableViewCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ScheduleOccurrenceComponentsAndDayAccessibilityTableViewCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for ScheduleOccurrenceComponentsAndDayAccessibilityTableViewCell()
{
  result = qword_2803513D8;
  if (!qword_2803513D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_269D4DFC4(uint64_t a1)
{
  v2 = sub_269D9A200();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269CB2990();
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = v19 - v13;
  v19[1] = 0x3FF0000000000000;
  (*(v3 + 16))(v5, a1, v2, v12);
  v15 = MEMORY[0x277D839F8];
  sub_269D98C40();
  v16 = sub_269D4EAC8();
  MEMORY[0x26D64F6D0](v10, v15, v7, v16);
  v17 = *(v8 + 8);
  v17(v10, v7);
  MEMORY[0x26D64F6F0](v14, v15, v7, v16);
  return (v17)(v14, v7);
}

uint64_t sub_269D4E1E4@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v30 = a3;
  v31 = a4;
  v29 = a2;
  v27 = a1;
  v28 = sub_269D9A200();
  v26 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269CB2990();
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v25 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v25 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v25 - v18;
  v32 = 0.0;
  sub_269D9A1F0();
  v20 = MEMORY[0x277D839F8];
  sub_269D98C40();
  v21 = sub_269D4EAC8();
  MEMORY[0x26D64F6D0](v17, v20, v7, v21);
  v22 = *(v8 + 8);
  v22(v17, v7);
  v23 = v27;
  if (v29)
  {
    v23 = 0.0;
  }

  v32 = v23;
  (*(v26 + 16))(v5, v30, v28);
  sub_269D98C40();
  MEMORY[0x26D64F6D0](v11, v20, v7, v21);
  v22(v11, v7);
  MEMORY[0x26D64F6F0](v19, v20, v7, v21);
  sub_269D99490();
  v22(v17, v7);
  v22(v14, v7);
  return (v22)(v19, v7);
}

uint64_t sub_269D4E504@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D2>)
{
  v23 = a1;
  v24 = a2;
  v22 = sub_269D9A200();
  v4 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269CB2990();
  v8 = v7;
  v9 = *(v7 - 8);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v22 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v22 - v16;
  v25 = a3;
  sub_269D9A1F0();
  v18 = MEMORY[0x277D839F8];
  sub_269D98C40();
  v19 = sub_269D4EAC8();
  MEMORY[0x26D64F6D0](v15, v18, v8, v19);
  v20 = *(v9 + 8);
  v20(v15, v8);
  v25 = 1.0;
  (*(v4 + 16))(v6, v23, v22);
  sub_269D98C40();
  MEMORY[0x26D64F6D0](v12, v18, v8, v19);
  v20(v12, v8);
  MEMORY[0x26D64F6F0](v17, v18, v8, v19);
  sub_269D99490();
  v20(v12, v8);
  v20(v15, v8);
  return (v20)(v17, v8);
}

uint64_t sub_269D4E7E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D1>)
{
  v23 = a1;
  v24 = a2;
  v22 = sub_269D9A200();
  v4 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269CB2990();
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v22 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v22 - v16;
  v25 = 0.0;
  sub_269D9A1F0();
  v18 = MEMORY[0x277D839F8];
  sub_269D98C40();
  v19 = sub_269D4EAC8();
  MEMORY[0x26D64F6D0](v14, v18, v8, v19);
  v20 = *(v9 + 8);
  v20(v14, v8);
  v25 = a3;
  (*(v4 + 16))(v6, v23, v22);
  sub_269D98C40();
  MEMORY[0x26D64F6D0](v11, v18, v8, v19);
  v20(v11, v8);
  MEMORY[0x26D64F6F0](v17, v18, v8, v19);
  sub_269D99490();
  v20(v11, v8);
  v20(v14, v8);
  return (v20)(v17, v8);
}

unint64_t sub_269D4EAC8()
{
  result = qword_28034F508;
  if (!qword_28034F508)
  {
    sub_269CB2990();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034F508);
  }

  return result;
}

uint64_t sub_269D4EB20(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 88))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_269D4EB40(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
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

  *(result + 88) = v3;
  return result;
}

uint64_t sub_269D4EB98@<X0>(uint64_t a1@<X8>)
{
  sub_269D98C10();
  sub_269D4F258(&qword_2803513F0);
  sub_269D9A9C0();
  sub_269D9AA00();
  if (v9[4] == v9[0])
  {
    v2 = sub_269D98B30();
    return (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  }

  else
  {
    v4 = sub_269D9AA40();
    v6 = v5;
    v7 = sub_269D98B30();
    v8 = *(v7 - 8);
    (*(v8 + 16))(a1, v6, v7);
    v4(v9, 0);
    return (*(v8 + 56))(a1, 0, 1, v7);
  }
}

uint64_t ProportionalHStack.sizeThatFits(proposal:subviews:cache:)(uint64_t a1, int a2)
{
  sub_269D4F1A4();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_269D98B30();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v26 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v26 - v15;
  sub_269D4EB98(v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_269D4F1FC(v6);
  }

  v27 = a2;
  v28 = *(v8 + 32);
  v28(v16, v6, v7);
  sub_269D98C10();
  sub_269D4F258(&qword_2803513F0);
  if (sub_269D9A9E0())
  {
    return (*(v8 + 8))(v16, v7);
  }

  v26 = a1;
  sub_269D9AA00();
  sub_269D4F258(&qword_2803513F8);
  sub_269D9A510();
  v18 = v13;
  v19 = sub_269D9AA40();
  (*(v8 + 16))(v10);
  v19(v29, 0);
  v28(v18, v10, v7);
  sub_269D9A9C0();
  sub_269D9AA00();
  if (sub_269D9A9F0() == 2)
  {
    if (v27)
    {
      sub_269D98DA0();
      v29[0] = v20 & 1;
      v30 = v21 & 1;
      sub_269D98B10();
      sub_269D98DA0();
      v29[0] = v22 & 1;
      v30 = v23 & 1;
      sub_269D98B10();
    }

    v29[0] = 0;
    v30 = 1;
    sub_269D98B10();
    v29[0] = 0;
    v30 = 1;
    sub_269D98B10();
    v25 = *(v8 + 8);
    v25(v18, v7);
    return (v25)(v16, v7);
  }

  else
  {
    v24 = *(v8 + 8);
    v24(v18, v7);
    return (v24)(v16, v7);
  }
}

double static ProportionalHStack.idealWidth(forFirstSubviewWidth:secondSubviewWidth:ratio:spacing:)(double a1, double a2, double a3, double a4)
{
  result = ceil(a1 / a3);
  v5 = ceil((a2 + a4) / (1.0 - a3));
  if (result <= v5)
  {
    return v5;
  }

  return result;
}

void sub_269D4F1A4()
{
  if (!qword_2803513E8)
  {
    sub_269D98B30();
    v0 = sub_269D9AE60();
    if (!v1)
    {
      atomic_store(v0, &qword_2803513E8);
    }
  }
}

uint64_t sub_269D4F1FC(uint64_t a1)
{
  sub_269D4F1A4();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_269D4F258(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_269D98C10();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void (*sub_269D4F388(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_269D98940();
  return sub_269C3CF88;
}

uint64_t sub_269D4F414(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  sub_269D4F1A4();
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v30[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v12 = sub_269D98B30();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v30[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x28223BE20](v16);
  v18 = &v30[-v17 - 8];
  MEMORY[0x28223BE20](v19);
  v21 = &v30[-v20 - 8];
  v22 = *v4;
  sub_269D4EB98(v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    return sub_269D4F1FC(v11);
  }

  v24 = *(v13 + 32);
  v24(v21, v11, v12);
  sub_269D98C10();
  sub_269D4F258(&qword_2803513F0);
  if (sub_269D9A9E0())
  {
    return (*(v13 + 8))(v21, v12);
  }

  sub_269D9AA00();
  sub_269D4F258(&qword_2803513F8);
  sub_269D9A510();
  v25 = sub_269D9AA40();
  v29 = v24;
  v26 = v18;
  v27 = v25;
  (*(v13 + 16))(v15);
  v27(v30, 0);
  v29(v26, v15, v12);
  sub_269D9A9C0();
  sub_269D9AA00();
  if (sub_269D9A9F0() == 2)
  {
    v32.origin.x = a1;
    v32.origin.y = a2;
    v32.size.width = a3;
    v32.size.height = a4;
    ceil(v22 * CGRectGetWidth(v32));
    sub_269D9A210();
    v30[0] = 0;
    v31 = 1;
    sub_269D98B20();
    v33.origin.x = a1;
    v33.origin.y = a2;
    v33.size.width = a3;
    v33.size.height = a4;
    CGRectGetWidth(v33);
    sub_269D9A210();
    v30[0] = 0;
    v31 = 1;
    sub_269D98B20();
  }

  v28 = *(v13 + 8);
  v28(v26, v12);
  return (v28)(v21, v12);
}

unint64_t sub_269D4F820()
{
  result = qword_280351400;
  if (!qword_280351400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280351400);
  }

  return result;
}

uint64_t QuickScheduleManagementViewRepresentation.init(sleepStore:provenanceSource:isEditingSchedule:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  return result;
}

char *QuickScheduleManagementViewRepresentation.makeUIViewController(context:)()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = objc_allocWithZone(type metadata accessor for QuickScheduleManagementViewController());
  result = QuickScheduleManagementViewController.init(sleepStore:provenanceSource:)(v1, v2);
  if (result)
  {
    v5 = result;
    sub_269D504FC();
    sub_269D99570();
    swift_beginAccess();
    swift_unknownObjectWeakAssign();

    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id QuickScheduleManagementViewRepresentation.makeCoordinator()()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  v6 = type metadata accessor for QuickScheduleManagementViewRepresentation.Coordinator();
  v7 = objc_allocWithZone(v6);
  swift_unknownObjectWeakInit();
  v8 = &v7[OBJC_IVAR____TtCV13SleepHealthUI41QuickScheduleManagementViewRepresentation11Coordinator_parent];
  *v8 = v1;
  *(v8 + 1) = v2;
  *(v8 + 2) = v3;
  *(v8 + 3) = v4;
  v8[32] = v5;
  v12.receiver = v7;
  v12.super_class = v6;
  v9 = v1;
  v10 = v2;

  return objc_msgSendSuper2(&v12, sel_init);
}

id QuickScheduleManagementViewRepresentation.Coordinator.__allocating_init(_:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  swift_unknownObjectWeakInit();
  v7 = &v3[OBJC_IVAR____TtCV13SleepHealthUI41QuickScheduleManagementViewRepresentation11Coordinator_parent];
  *v7 = *a1;
  *(v7 + 2) = v4;
  *(v7 + 3) = v5;
  v7[32] = v6;
  v9.receiver = v3;
  v9.super_class = v1;
  return objc_msgSendSuper2(&v9, sel_init);
}

id sub_269D4FA90@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtCV13SleepHealthUI41QuickScheduleManagementViewRepresentation11Coordinator_parent;
  swift_beginAccess();
  v4 = *v3;
  v10 = *(v3 + 8);
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  v7 = *(v3 + 32);
  *a2 = *v3;
  *(a2 + 8) = v10;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  *(a2 + 32) = v7;

  v8 = v4;

  return v10;
}

uint64_t sub_269D4FB24(uint64_t a1, void *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *a2 + OBJC_IVAR____TtCV13SleepHealthUI41QuickScheduleManagementViewRepresentation11Coordinator_parent;
  swift_beginAccess();
  v8 = *v7;
  v9 = *(v7 + 8);
  *v7 = v2;
  *(v7 + 8) = v3;
  *(v7 + 16) = v4;
  *(v7 + 24) = v5;
  *(v7 + 32) = v6;

  v10 = v2;
  v11 = v3;
}

id sub_269D4FBDC@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtCV13SleepHealthUI41QuickScheduleManagementViewRepresentation11Coordinator_parent;
  swift_beginAccess();
  v4 = *v3;
  v10 = *(v3 + 8);
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  v7 = *(v3 + 32);
  *a1 = *v3;
  *(a1 + 8) = v10;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;

  v8 = v4;

  return v10;
}

uint64_t sub_269D4FC6C(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = v1 + OBJC_IVAR____TtCV13SleepHealthUI41QuickScheduleManagementViewRepresentation11Coordinator_parent;
  swift_beginAccess();
  v7 = *v6;
  v8 = *(v6 + 8);
  *v6 = *a1;
  *(v6 + 16) = v3;
  *(v6 + 24) = v4;
  *(v6 + 32) = v5;
}

id QuickScheduleManagementViewRepresentation.Coordinator.init(_:)(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  swift_unknownObjectWeakInit();
  v6 = &v1[OBJC_IVAR____TtCV13SleepHealthUI41QuickScheduleManagementViewRepresentation11Coordinator_parent];
  *v6 = *a1;
  *(v6 + 2) = v3;
  *(v6 + 3) = v4;
  v6[32] = v5;
  v8.receiver = v1;
  v8.super_class = type metadata accessor for QuickScheduleManagementViewRepresentation.Coordinator();
  return objc_msgSendSuper2(&v8, sel_init);
}

void sub_269D4FF38(void *a1, uint64_t a2, void *a3, uint64_t a4, const char *a5)
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = a3;
  v9 = a1;
  sub_269D507C0(a5);
}

id QuickScheduleManagementViewRepresentation.Coordinator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id QuickScheduleManagementViewRepresentation.Coordinator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for QuickScheduleManagementViewRepresentation.Coordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *sub_269D5029C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = objc_allocWithZone(type metadata accessor for QuickScheduleManagementViewController());
  result = QuickScheduleManagementViewController.init(sleepStore:provenanceSource:)(v1, v2);
  if (result)
  {
    v5 = result;
    sub_269D504FC();
    sub_269D99570();
    swift_beginAccess();
    swift_unknownObjectWeakAssign();

    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_269D50350@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = *(v1 + 32);
  v8 = type metadata accessor for QuickScheduleManagementViewRepresentation.Coordinator();
  v9 = objc_allocWithZone(v8);
  swift_unknownObjectWeakInit();
  v10 = &v9[OBJC_IVAR____TtCV13SleepHealthUI41QuickScheduleManagementViewRepresentation11Coordinator_parent];
  *v10 = v3;
  *(v10 + 1) = v4;
  *(v10 + 2) = v5;
  *(v10 + 3) = v6;
  v10[32] = v7;
  v14.receiver = v9;
  v14.super_class = v8;
  v11 = v3;
  v12 = v4;

  result = objc_msgSendSuper2(&v14, sel_init);
  *a1 = result;
  return result;
}

uint64_t sub_269D5040C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_269D50558();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_269D50470(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_269D50558();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_269D504D4()
{
  sub_269D50558();
  sub_269D99510();
  __break(1u);
}

void sub_269D504FC()
{
  if (!qword_280351408)
  {
    sub_269D50558();
    v0 = sub_269D99580();
    if (!v1)
    {
      atomic_store(v0, &qword_280351408);
    }
  }
}

unint64_t sub_269D50558()
{
  result = qword_280351410;
  if (!qword_280351410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280351410);
  }

  return result;
}

void sub_269D505D0(void *a1)
{
  swift_getObjectType();
  if (qword_28034D640 != -1)
  {
    swift_once();
  }

  v2 = sub_269D98250();
  __swift_project_value_buffer(v2, qword_28035E4B8);
  v3 = a1;
  oslog = sub_269D98230();
  v4 = sub_269D9AB80();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v15 = v6;
    *v5 = 136446466;
    v7 = sub_269D9B4D0();
    v9 = sub_269C2EACC(v7, v8, &v15);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2082;
    sub_269D50E40();
    v10 = v3;
    v11 = sub_269D9A660();
    v13 = sub_269C2EACC(v11, v12, &v15);

    *(v5 + 14) = v13;
    _os_log_impl(&dword_269C18000, oslog, v4, "[%{public}s] Did save schedule %{public}s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D652460](v6, -1, -1);
    MEMORY[0x26D652460](v5, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_269D507C0(const char *a1)
{
  swift_getObjectType();
  if (qword_28034D640 != -1)
  {
    swift_once();
  }

  v2 = sub_269D98250();
  __swift_project_value_buffer(v2, qword_28035E4B8);
  v3 = sub_269D98230();
  v4 = sub_269D9AB80();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11[0] = v6;
    *v5 = 136446210;
    v7 = sub_269D9B4D0();
    v9 = sub_269C2EACC(v7, v8, v11);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_269C18000, v3, v4, a1, v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x26D652460](v6, -1, -1);
    MEMORY[0x26D652460](v5, -1, -1);
  }

  swift_beginAccess();
  sub_269D22020();
  return sub_269D9A010();
}

void sub_269D50968(void *a1)
{
  swift_getObjectType();
  v2 = [a1 title];
  if (v2)
  {
    v3 = v2;
    v4 = sub_269D9A630();
    v6 = v5;
  }

  else
  {
    v4 = 0xD00000000000001BLL;
    v6 = 0x8000000269DB40E0;
  }

  v7 = [a1 message];
  if (v7)
  {
    v8 = v7;
    v9 = sub_269D9A630();
    v11 = v10;
  }

  else
  {
    v11 = 0x8000000269DB4100;
    v9 = 0xD00000000000002FLL;
  }

  v22[0] = v4;
  v22[1] = v6;
  MEMORY[0x26D650930](8250, 0xE200000000000000);
  MEMORY[0x26D650930](v9, v11);

  v12 = v4;
  if (qword_28034D640 != -1)
  {
    swift_once();
  }

  v13 = sub_269D98250();
  __swift_project_value_buffer(v13, qword_28035E4B8);

  oslog = sub_269D98230();
  v14 = sub_269D9AB60();

  if (os_log_type_enabled(oslog, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v22[0] = v16;
    *v15 = 136446466;
    v17 = sub_269D9B4D0();
    v19 = sub_269C2EACC(v17, v18, v22);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2082;
    v20 = sub_269C2EACC(v12, v6, v22);

    *(v15 + 14) = v20;
    _os_log_impl(&dword_269C18000, oslog, v14, "[%{public}s] %{public}s", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D652460](v16, -1, -1);
    MEMORY[0x26D652460](v15, -1, -1);
  }

  else
  {
  }
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_269D50C0C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_269D50C54(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_269D50E40()
{
  if (!qword_280C0AEE0)
  {
    sub_269D50E98();
    v0 = sub_269D9AE60();
    if (!v1)
    {
      atomic_store(v0, &qword_280C0AEE0);
    }
  }
}

unint64_t sub_269D50E98()
{
  result = qword_280C0AEF0;
  if (!qword_280C0AEF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280C0AEF0);
  }

  return result;
}

id static Font.chartUnit.getter()
{
  result = [objc_opt_self() sharedBehavior];
  if (result)
  {
    v1 = result;
    v2 = [result isAppleWatch];

    if (v2)
    {

      return sub_269D997C0();
    }

    else
    {
      if (qword_28034D798 != -1)
      {
        swift_once();
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t Font.short.getter()
{
  v0 = sub_269D997A0();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, *MEMORY[0x277CE0A10], v0, v2);
  v5 = sub_269D997E0();
  (*(v1 + 8))(v4, v0);
  return v5;
}

uint64_t sub_269D510EC(uint64_t a1, unsigned int *a2, uint64_t *a3)
{
  sub_269C424A0(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_269D99810();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 104))(v11, *a2, v8);
  v12 = *MEMORY[0x277CE09A0];
  v13 = sub_269D996F0();
  v14 = *(v13 - 8);
  (*(v14 + 104))(v7, v12, v13);
  (*(v14 + 56))(v7, 0, 1, v13);
  v15 = sub_269D99750();
  sub_269D51A04(v7);
  result = (*(v9 + 8))(v11, v8);
  *a3 = v15;
  return result;
}

uint64_t sub_269D51334()
{
  sub_269C424A0(0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v12 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_269D99690();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269D99680();
  v7 = *MEMORY[0x277CE09A0];
  v8 = sub_269D996F0();
  v9 = *(v8 - 8);
  (*(v9 + 104))(v2, v7, v8);
  (*(v9 + 56))(v2, 0, 1, v8);
  v10 = sub_269D99740();
  sub_269D51A04(v2);
  result = (*(v4 + 8))(v6, v3);
  qword_280351440 = v10;
  return result;
}

uint64_t sub_269D51560()
{
  if (qword_28034D7B0 != -1)
  {
    swift_once();
  }

  v0 = sub_269D996A0();

  qword_280351450 = v0;
  return result;
}

uint64_t sub_269D5166C(uint64_t a1, void (*a2)(uint64_t), unsigned int *a3, uint64_t *a4)
{
  v7 = sub_269D997A0();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  a2(v9);
  (*(v8 + 104))(v11, *a3, v7);
  v12 = sub_269D997E0();

  result = (*(v8 + 8))(v11, v7);
  *a4 = v12;
  return result;
}

void static UIFont.footnote2TightLeading.getter()
{
  v0 = [objc_opt_self() preferredFontDescriptorWithTextStyle_];
  v1 = [v0 fontDescriptorWithSymbolicTraits_];

  if (v1)
  {
    [objc_opt_self() fontWithDescriptor:v1 size:0.0];
  }

  else
  {
    __break(1u);
  }
}

void static UIFont.footnote2TightLeadingSmallCaps.getter()
{
  v0 = [objc_opt_self() preferredFontDescriptorWithTextStyle_];
  v1 = [v0 fontDescriptorWithSymbolicTraits_];

  if (v1)
  {
    isa = UIFontDescriptor.addingLowercaseSmallCapsAttributes()().super.isa;

    [objc_opt_self() fontWithDescriptor:isa size:0.0];
  }

  else
  {
    __break(1u);
  }
}

id static UIFont.chartUnit.getter()
{
  result = [objc_opt_self() sharedBehavior];
  if (result)
  {
    v1 = result;
    v2 = [result isAppleWatch];

    sub_269D519B8();
    v3 = MEMORY[0x277D76938];
    if (!v2)
    {
      v3 = MEMORY[0x277D76968];
    }

    return static UIFont.preferredFont(for:traits:rounded:short:loose:smallCaps:monospaced:weight:)(*v3, 0, v2 ^ 1, 0, 0, 0, 0, 0, 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_269D519B8()
{
  result = qword_28034E5F0;
  if (!qword_28034E5F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28034E5F0);
  }

  return result;
}

uint64_t sub_269D51A04(uint64_t a1)
{
  sub_269C424A0(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_269D51A60(void (*a1)(uint64_t *__return_ptr, char *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = *(a3 + 16);
  result = MEMORY[0x277D84F90];
  if (v6)
  {
    v13 = MEMORY[0x277D84F90];
    sub_269D9B080();
    v9 = (a3 + 32);
    while (1)
    {
      v10 = *v9++;
      v11 = v10;
      a1(&v12, &v11);
      if (v4)
      {
        break;
      }

      v4 = 0;
      sub_269D9B050();
      sub_269D9B090();
      sub_269D9B0A0();
      sub_269D9B060();
      if (!--v6)
      {
        return v13;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_269D51B4C(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v19 = a1;
  v20 = a2;
  v6 = type metadata accessor for SleepScoreComponentModel(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a3 + 16);
  v11 = MEMORY[0x277D84F90];
  if (!v10)
  {
    return v11;
  }

  v21 = MEMORY[0x277D84F90];
  sub_269C75588(0, v10, 0);
  v11 = v21;
  v12 = *(sub_269D97AC0() - 8);
  v13 = a3 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
  v18 = *(v12 + 72);
  while (1)
  {
    v19(v13);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v21 = v11;
    v15 = *(v11 + 16);
    v14 = *(v11 + 24);
    if (v15 >= v14 >> 1)
    {
      sub_269C75588(v14 > 1, v15 + 1, 1);
      v11 = v21;
    }

    *(v11 + 16) = v15 + 1;
    sub_269D57710(v9, v11 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v15, type metadata accessor for SleepScoreComponentModel);
    v13 += v18;
    if (!--v10)
    {
      return v11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_269D51D48(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a4 - a3;
  if (__OFSUB__(a4, a3))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v6 = v4;
  result = MEMORY[0x277D84F90];
  if (!v5)
  {
    return result;
  }

  v17 = MEMORY[0x277D84F90];
  sub_269D9B080();
  if ((v5 & 0x8000000000000000) == 0)
  {
    v9 = 0;
    v10 = a4;
    if (a4 <= a3)
    {
      v10 = a3;
    }

    v11 = v10 - a3 + 1;
    while (v9 < v5)
    {
      v12 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_16;
      }

      v15 = a3 + v9;
      a1(&v16, &v15);
      if (v6)
      {
        goto LABEL_21;
      }

      v6 = 0;
      sub_269D9B050();
      sub_269D9B090();
      sub_269D9B0A0();
      sub_269D9B060();
      if (a4 < a3)
      {
        goto LABEL_17;
      }

      if (v11 == ++v9)
      {
        goto LABEL_18;
      }

      if (v12 == v5)
      {
        return v17;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_20:
  __break(1u);
LABEL_21:

  __break(1u);
  return result;
}

uint64_t SleepScoreModel.visualizationModel.getter()
{
  type metadata accessor for SleepScoreModel(0);

  return sub_269D97C40();
}

uint64_t SleepScoreComponentModel.title.getter()
{
  v1 = *(v0 + *(type metadata accessor for SleepScoreComponentModel(0) + 20));

  return v1;
}

uint64_t SleepScoreComponentModel.title.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for SleepScoreComponentModel(0) + 20));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t SleepScoreComponentModel.detail.getter()
{
  v1 = *(v0 + *(type metadata accessor for SleepScoreComponentModel(0) + 24));

  return v1;
}

uint64_t SleepScoreComponentModel.detail.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for SleepScoreComponentModel(0) + 24));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t SleepScoreComponentModel.points.setter(uint64_t a1)
{
  result = type metadata accessor for SleepScoreComponentModel(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t SleepScoreComponentModel.maxPoints.setter(uint64_t a1)
{
  result = type metadata accessor for SleepScoreComponentModel(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t SleepScoreComponentModel.formattedPointFraction.getter()
{
  v1 = sub_269D9A5E0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_269D9A5C0();
  MEMORY[0x28223BE20](v5 - 8);
  sub_269D9A5B0();
  sub_269D9A5A0();
  v6 = type metadata accessor for SleepScoreComponentModel(0);
  v10 = *(v0 + *(v6 + 28));
  sub_269D9A580();
  sub_269D9A5A0();
  v10 = *(v0 + *(v6 + 32));
  sub_269D9A580();
  sub_269D9A5A0();
  sub_269D9A5D0();
  v7 = sub_269D4A384(v4);
  (*(v2 + 8))(v4, v1);
  return v7;
}

uint64_t SleepScoreComponentModel.spelledOutPointFraction.getter()
{
  v1 = sub_269D9A5E0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_269D9A5C0();
  MEMORY[0x28223BE20](v5 - 8);
  sub_269D9A5B0();
  sub_269D9A5A0();
  v6 = type metadata accessor for SleepScoreComponentModel(0);
  v10 = *(v0 + *(v6 + 28));
  sub_269D9A580();
  sub_269D9A5A0();
  v10 = *(v0 + *(v6 + 32));
  sub_269D9A580();
  sub_269D9A5A0();
  sub_269D9A5D0();
  v7 = sub_269D4A384(v4);
  (*(v2 + 8))(v4, v1);
  return v7;
}

uint64_t SleepScoreComponentModel.hash(into:)()
{
  sub_269D97AC0();
  sub_269D570AC(&qword_280351468, MEMORY[0x277D62598]);
  sub_269D9A4E0();
  v1 = type metadata accessor for SleepScoreComponentModel(0);
  sub_269D9A6A0();
  sub_269D9A6A0();
  MEMORY[0x26D6515B0](*(v0 + *(v1 + 28)));
  return MEMORY[0x26D6515B0](*(v0 + *(v1 + 32)));
}

uint64_t SleepScoreComponentModel.hashValue.getter()
{
  sub_269D9B350();
  sub_269D97AC0();
  sub_269D570AC(&qword_280351468, MEMORY[0x277D62598]);
  sub_269D9A4E0();
  v1 = type metadata accessor for SleepScoreComponentModel(0);
  sub_269D9A6A0();
  sub_269D9A6A0();
  MEMORY[0x26D6515B0](*(v0 + *(v1 + 28)));
  MEMORY[0x26D6515B0](*(v0 + *(v1 + 32)));
  return sub_269D9B390();
}

uint64_t sub_269D527EC(uint64_t a1)
{
  sub_269D9B350();
  sub_269D97AC0();
  sub_269D570AC(&qword_280351468, MEMORY[0x277D62598]);
  sub_269D9A4E0();
  sub_269D9A6A0();
  sub_269D9A6A0();
  MEMORY[0x26D6515B0](*(v1 + *(a1 + 28)));
  MEMORY[0x26D6515B0](*(v1 + *(a1 + 32)));
  return sub_269D9B390();
}

uint64_t sub_269D528CC(uint64_t a1, uint64_t a2)
{
  sub_269D97AC0();
  sub_269D570AC(&qword_280351468, MEMORY[0x277D62598]);
  sub_269D9A4E0();
  sub_269D9A6A0();
  sub_269D9A6A0();
  MEMORY[0x26D6515B0](*(v2 + *(a2 + 28)));
  return MEMORY[0x26D6515B0](*(v2 + *(a2 + 32)));
}

uint64_t sub_269D52998(uint64_t a1, uint64_t a2)
{
  sub_269D9B350();
  sub_269D97AC0();
  sub_269D570AC(&qword_280351468, MEMORY[0x277D62598]);
  sub_269D9A4E0();
  sub_269D9A6A0();
  sub_269D9A6A0();
  MEMORY[0x26D6515B0](*(v2 + *(a2 + 28)));
  MEMORY[0x26D6515B0](*(v2 + *(a2 + 32)));
  return sub_269D9B390();
}

uint64_t sub_269D52A90@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = a1(0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, v2, v4);
}

uint64_t sub_269D52B18(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = a2(0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v2, a1, v4);
}

uint64_t SleepScoreModel.gregorianCalendar.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SleepScoreModel(0) + 20);
  v4 = sub_269D977A0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SleepScoreModel.gregorianCalendar.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SleepScoreModel(0) + 20);
  v4 = sub_269D977A0();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SleepScoreModel.algorithmVersion.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SleepScoreModel(0) + 24);
  v4 = sub_269D97B80();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SleepScoreModel.algorithmVersion.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SleepScoreModel(0) + 24);
  v4 = sub_269D97B80();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SleepScoreModel.totalPoints.setter(uint64_t a1)
{
  result = type metadata accessor for SleepScoreModel(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t SleepScoreModel.level.getter()
{
  v1 = sub_269D97B80();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_269D97B70();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SleepScoreModel(0);
  (*(v2 + 16))(v4, v0 + *(v9 + 24), v1);
  sub_269D97B50();
  sub_269D97B60();
  return (*(v6 + 8))(v8, v5);
}

__n128 SleepScoreModel.sleepDuration.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SleepScoreModel(0) + 32);
  v4 = *(v3 + 48);
  *(a1 + 32) = *(v3 + 32);
  *(a1 + 48) = v4;
  *(a1 + 64) = *(v3 + 64);
  result = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = result;
  return result;
}

__n128 SleepScoreModel.sleepDuration.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for SleepScoreModel(0) + 32);
  v4 = *(a1 + 48);
  *(v3 + 32) = *(a1 + 32);
  *(v3 + 48) = v4;
  *(v3 + 64) = *(a1 + 64);
  result = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = result;
  return result;
}

uint64_t SleepScoreModel.bedtime.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SleepScoreModel(0) + 36);

  return sub_269D56F98(v3, a1);
}

uint64_t SleepScoreModel.bedtime.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for SleepScoreModel(0) + 36);

  return sub_269D5701C(a1, v3);
}

__n128 SleepScoreModel.interruptions.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SleepScoreModel(0) + 40);
  v4 = *(v3 + 32);
  result = *v3;
  v6 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v6;
  *(a1 + 32) = v4;
  return result;
}

__n128 SleepScoreModel.interruptions.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = v1 + *(type metadata accessor for SleepScoreModel(0) + 40);
  result = *a1;
  v6 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 16) = v6;
  *(v4 + 32) = v3;
  return result;
}

uint64_t SleepScoreModel.componentModels.getter()
{
  v1 = sub_269D97AB0();
  v5 = v0;
  v2 = sub_269D51B4C(sub_269D57080, &v4, v1);

  return v2;
}

int *SleepScoreModel.componentModel(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v95 = a2;
  v3 = sub_269D9A5E0();
  v92 = *(v3 - 8);
  v93 = v3;
  MEMORY[0x28223BE20](v3);
  v91 = &v83[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_269D9A5C0();
  MEMORY[0x28223BE20](v5 - 8);
  v88 = &v83[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v89 = &v83[-v8];
  MEMORY[0x28223BE20](v9);
  v90 = &v83[-v10];
  v11 = sub_269D97BA0();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v83[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = sub_269D9B450();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v83[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = sub_269D97AC0();
  v20 = *(v19 - 8);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v83[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v20 + 16))(v23, a1, v19, v21);
  v24 = v23;
  v25 = v19;
  v26 = (*(v20 + 88))(v24, v19);
  if (v26 == *MEMORY[0x277D62590])
  {
    v27 = v95;
    (*(v20 + 104))(v95, v26, v19);
    v28 = sub_269D97A90();
    v30 = v29;
    v31 = (v94 + *(type metadata accessor for SleepScoreModel(0) + 32));
    sub_269D547D0(v18);
    sub_269D570AC(&qword_280C0AD58, MEMORY[0x277CC9FF0]);
    sub_269D9B460();
    (*(v16 + 8))(v18, v15);
    v32 = v96;
    v33 = v97;
    v35 = *v31;
    v34 = v31[1];
    result = type metadata accessor for SleepScoreComponentModel(0);
    v37 = (v27 + result[5]);
    *v37 = v28;
    v37[1] = v30;
    v38 = (v27 + result[6]);
    *v38 = v32;
    v38[1] = v33;
    *(v27 + result[7]) = v35;
    *(v27 + result[8]) = v34;
    return result;
  }

  v39 = v94;
  v85 = v18;
  v86 = v16;
  v40 = v20;
  v87 = a1;
  if (v26 == *MEMORY[0x277D62588])
  {
    v84 = v26;
    v41 = (v39 + *(type metadata accessor for SleepScoreModel(0) + 36));
    v42 = type metadata accessor for SleepScoreModel.Bedtime(0);
    v43 = *(v42 + 28);
    v44 = *(v12 + 16);
    v94 = v41;
    v44(v14, v41 + v43, v11);
    v45 = (*(v12 + 88))(v14, v11);
    if (v45 == *MEMORY[0x277D625D8])
    {
      (*(v12 + 8))(v14, v11);
      v46 = v95;
      v47 = v15;
      v48 = v40;
      goto LABEL_10;
    }

    v46 = v95;
    v47 = v15;
    v48 = v40;
    if (v45 == *MEMORY[0x277D625D0])
    {
LABEL_10:
      v55 = v94;
      v56 = (v94 + *(v42 + 32));
      if (v56[1])
      {
LABEL_11:
        v57 = v25;
        sub_269D9A5B0();
        sub_269D9A5A0();
        sub_269D550C8();
        sub_269D9A590();

LABEL_23:
        sub_269D9A5A0();
        goto LABEL_24;
      }

      v58 = *v56;
      if (*v56 <= -18000.0)
      {
        v57 = v25;
      }

      else
      {
        if (v58 <= -60.0)
        {
          v57 = v25;
          sub_269D9A5B0();
          sub_269D9A5A0();
          sub_269D9B4A0();
          sub_269D9B470();
          v82 = v85;
          sub_269D547D0(v85);
          sub_269D570AC(&qword_280C0AD58, MEMORY[0x277CC9FF0]);
          sub_269D9B460();
          (*(v86 + 8))(v82, v47);
          sub_269D9A590();

          goto LABEL_26;
        }

        v55 = v94;
        if (v58 <= 60.0)
        {
          goto LABEL_11;
        }

        v57 = v25;
        if (v58 < 18000.0)
        {
          sub_269D9A5B0();
          sub_269D9A5A0();
          sub_269D9B4A0();
          sub_269D9B470();
          v59 = v85;
          sub_269D547D0(v85);
          sub_269D570AC(&qword_280C0AD58, MEMORY[0x277CC9FF0]);
          sub_269D9B460();
          (*(v86 + 8))(v59, v47);
          sub_269D9A590();

LABEL_26:
          sub_269D9A5A0();
          v55 = v94;
          goto LABEL_24;
        }
      }

      sub_269D9A5B0();
      sub_269D9A5A0();
      v55 = v94;
      sub_269D54B10();
      sub_269D9A590();

      goto LABEL_23;
    }

    v57 = v25;
    if (v45 == *MEMORY[0x277D625E0])
    {
      sub_269D9A5B0();
      sub_269D9A5A0();
      v55 = v94;
      sub_269D550C8();
      sub_269D9A590();

      sub_269D9A5A0();
LABEL_24:
      v71 = v91;
      sub_269D9A5D0();
      v72 = sub_269D4A384(v71);
      v74 = v73;
      (*(v92 + 8))(v71, v93);
      (*(v48 + 104))(v46, v84, v57);
      v75 = sub_269D97A90();
      v77 = v76;
      v78 = *v55;
      v79 = v55[1];
      result = type metadata accessor for SleepScoreComponentModel(0);
      v80 = (v46 + result[5]);
      *v80 = v75;
      v80[1] = v77;
      v81 = (v46 + result[6]);
      *v81 = v72;
      v81[1] = v74;
      *(v46 + result[7]) = v78;
      *(v46 + result[8]) = v79;
      return result;
    }

    goto LABEL_28;
  }

  if (v26 != *MEMORY[0x277D62580])
  {
    v96 = 0;
    v97 = 0xE000000000000000;
    sub_269D9B000();
    MEMORY[0x26D650930](0xD000000000000014, 0x8000000269DB41A0);
    sub_269D9B0E0();
LABEL_28:
    result = sub_269D9B100();
    __break(1u);
    return result;
  }

  v49 = v26;
  v50 = (v39 + *(type metadata accessor for SleepScoreModel(0) + 40));
  v51 = v50[2];
  v52 = v25;
  if (v51 <= 0)
  {
    v54 = v91;
    sub_269D9A570();
  }

  else
  {
    sub_269D9A5B0();
    sub_269D9A5A0();
    v96 = v51;
    sub_269D9A580();
    sub_269D9A5A0();
    v53 = v85;
    sub_269D547D0(v85);
    sub_269D570AC(&qword_280C0AD58, MEMORY[0x277CC9FF0]);
    sub_269D9B460();
    (*(v86 + 8))(v53, v15);
    sub_269D9A590();

    sub_269D9A5A0();
    v54 = v91;
    sub_269D9A5D0();
  }

  v60 = sub_269D4A384(v54);
  v62 = v61;
  (*(v92 + 8))(v54, v93);
  v63 = v95;
  (*(v40 + 104))(v95, v49, v52);
  v64 = sub_269D97A90();
  v66 = v65;
  v67 = *v50;
  v68 = v50[1];
  result = type metadata accessor for SleepScoreComponentModel(0);
  v69 = (v63 + result[5]);
  *v69 = v64;
  v69[1] = v66;
  v70 = (v63 + result[6]);
  *v70 = v60;
  v70[1] = v62;
  *(v63 + result[7]) = v67;
  *(v63 + result[8]) = v68;
  return result;
}

uint64_t SleepScoreModel.SleepDuration.totalDuration.setter(uint64_t result, uint64_t a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2;
  return result;
}

uint64_t SleepScoreModel.SleepDuration.remSleepDuration.setter(uint64_t result, uint64_t a2)
{
  *(v2 + 32) = result;
  *(v2 + 40) = a2;
  return result;
}

uint64_t SleepScoreModel.SleepDuration.deepSleepDuration.setter(uint64_t result, uint64_t a2)
{
  *(v2 + 48) = result;
  *(v2 + 56) = a2;
  return result;
}

uint64_t SleepScoreModel.SleepDuration.REMAndDeepSleepDurationCoaching.hashValue.getter()
{
  v1 = *v0;
  sub_269D9B350();
  MEMORY[0x26D6515B0](v1);
  return sub_269D9B390();
}

void SleepScoreModel.SleepDuration.remAndDeepSleepDurationCoaching.getter(char *a1@<X8>)
{
  v2 = *(v1 + 72);
  v3 = v2 < 3;
  if (v2 > 2)
  {
    v4 = 1;
  }

  else
  {
    v4 = 3;
  }

  v5 = 2 * v3;
  if (*(v1 + 64) <= 2)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  *a1 = v6;
}

uint64_t SleepScoreModel.SleepDuration.hash(into:)()
{
  v1 = v0[1];
  v2 = v0[8];
  v4 = v0[9];
  MEMORY[0x26D6515B0](*v0);
  MEMORY[0x26D6515B0](v1);
  sub_269D9B490();
  sub_269D9B490();
  sub_269D9B490();
  MEMORY[0x26D6515B0](v2);
  return MEMORY[0x26D6515B0](v4);
}

uint64_t SleepScoreModel.SleepDuration.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[8];
  v5 = v0[9];
  sub_269D9B350();
  MEMORY[0x26D6515B0](v1);
  MEMORY[0x26D6515B0](v2);
  sub_269D9B490();
  sub_269D9B490();
  sub_269D9B490();
  MEMORY[0x26D6515B0](v3);
  MEMORY[0x26D6515B0](v5);
  return sub_269D9B390();
}

uint64_t sub_269D54310()
{
  v1 = v0[1];
  v2 = v0[8];
  v4 = v0[9];
  MEMORY[0x26D6515B0](*v0);
  MEMORY[0x26D6515B0](v1);
  sub_269D9B490();
  sub_269D9B490();
  sub_269D9B490();
  MEMORY[0x26D6515B0](v2);
  return MEMORY[0x26D6515B0](v4);
}

uint64_t sub_269D543C0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[8];
  v5 = v0[9];
  sub_269D9B350();
  MEMORY[0x26D6515B0](v1);
  MEMORY[0x26D6515B0](v2);
  sub_269D9B490();
  sub_269D9B490();
  sub_269D9B490();
  MEMORY[0x26D6515B0](v3);
  MEMORY[0x26D6515B0](v5);
  return sub_269D9B390();
}

uint64_t SleepScoreModel.Bedtime.sleepStart.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SleepScoreModel.Bedtime(0) + 24);

  return sub_269D0CAE0(v3, a1);
}

uint64_t SleepScoreModel.Bedtime.sleepStart.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for SleepScoreModel.Bedtime(0) + 24);

  return sub_269CB9F30(a1, v3);
}

uint64_t SleepScoreModel.Bedtime.usualSleepStart.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SleepScoreModel.Bedtime(0) + 28);
  v4 = sub_269D97BA0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SleepScoreModel.Bedtime.usualSleepStart.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SleepScoreModel.Bedtime(0) + 28);
  v4 = sub_269D97BA0();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SleepScoreModel.Bedtime.proximity.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for SleepScoreModel.Bedtime(0);
  v6 = v2 + *(result + 32);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t sub_269D547D0@<X0>(uint64_t a1@<X8>)
{
  v14 = a1;
  v15 = sub_269D9B3F0();
  v1 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_269D9B3D0();
  v4 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_269D9B440();
  v7 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269D57CEC(0, &qword_280C0AD78, MEMORY[0x277CC9FC8], MEMORY[0x277D84560]);
  sub_269D9B420();
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_269D9EBF0;
  sub_269D9B400();
  sub_269D9B410();
  sub_269CF7698(v10);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_269D9B430();
  sub_269D9B3C0();
  sub_269D9B3E0();
  sub_269D96EF0();

  (*(v1 + 8))(v3, v15);
  (*(v4 + 8))(v6, v13);
  return (*(v7 + 8))(v9, v12);
}

uint64_t sub_269D54B10()
{
  v1 = sub_269D97460();
  v50 = *(v1 - 8);
  v51 = v1;
  MEMORY[0x28223BE20](v1);
  v49 = &v38 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_269D97430();
  v45 = *(v3 - 8);
  v46 = v3;
  MEMORY[0x28223BE20](v3);
  v42 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_269D97440();
  v43 = *(v5 - 8);
  v44 = v5;
  MEMORY[0x28223BE20](v5);
  v41 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_269D97480();
  v47 = *(v7 - 8);
  v48 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v38 - v11;
  MEMORY[0x28223BE20](v13);
  v40 = &v38 - v14;
  v15 = sub_269D97BA0();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_269D97580();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v38 - v24;
  v26 = type metadata accessor for SleepScoreModel.Bedtime(0);
  (*(v16 + 16))(v18, v0 + *(v26 + 28), v15);
  if ((*(v16 + 88))(v18, v15) == *MEMORY[0x277D625D8])
  {
    (*(v16 + 96))(v18, v15);
    v27 = *(v20 + 32);
    v39 = v19;
    v27(v25, v18, v19);
    sub_269D973F0();
    v28 = sub_269D973E0();
    MEMORY[0x26D64D130](v28);
    v29 = v42;
    sub_269D97420();
    v30 = v41;
    sub_269D97410();
    (*(v45 + 8))(v29, v46);
    sub_269D97400();
    (*(v43 + 8))(v30, v44);
    v31 = v48;
    v32 = *(v47 + 8);
    v32(v9, v48);
    v33 = v49;
    sub_269D97450();
    v34 = v40;
    sub_269D97470();
    (*(v50 + 8))(v33, v51);
    v32(v12, v31);
    sub_269D570AC(&qword_2803514E0, MEMORY[0x277CC9428]);
    sub_269D97560();
    v32(v34, v31);
    v35 = *(v20 + 8);
    v36 = v39;
    v35(v22, v39);
    v35(v25, v36);
    return v52;
  }

  else
  {
    (*(v16 + 8))(v18, v15);
    return 0;
  }
}

uint64_t sub_269D550C8()
{
  v0 = sub_269D97460();
  v36 = *(v0 - 8);
  v37 = v0;
  MEMORY[0x28223BE20](v0);
  v35 = &v29 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_269D97430();
  v32 = *(v2 - 8);
  v33 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_269D97440();
  v30 = *(v5 - 8);
  v31 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_269D97480();
  v34 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v29 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v29 - v15;
  sub_269D57CEC(0, &qword_280C0BB60, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v29 - v18;
  v20 = sub_269D97580();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v29 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for SleepScoreModel.Bedtime(0);
  sub_269D0CAE0(v38 + *(v24 + 24), v19);
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    sub_269D576A0(v19, &qword_280C0BB60, MEMORY[0x277CC9578]);
    return 0;
  }

  else
  {
    v26 = (*(v21 + 32))(v23, v19, v20);
    MEMORY[0x26D64D130](v26);
    sub_269D97420();
    sub_269D97410();
    (*(v32 + 8))(v4, v33);
    sub_269D97400();
    (*(v30 + 8))(v7, v31);
    v27 = *(v34 + 8);
    v27(v10, v8);
    v28 = v35;
    sub_269D97450();
    sub_269D97470();
    (*(v36 + 8))(v28, v37);
    v27(v13, v8);
    sub_269D570AC(&qword_2803514E0, MEMORY[0x277CC9428]);
    sub_269D97560();
    v27(v16, v8);
    (*(v21 + 8))(v23, v20);
    return v39;
  }
}

uint64_t SleepScoreModel.Bedtime.hash(into:)()
{
  v1 = sub_269D97580();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269D57CEC(0, &qword_280C0BB60, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v14 - v7;
  MEMORY[0x26D6515B0](*v0, v6);
  MEMORY[0x26D6515B0](v0[1]);
  v9 = type metadata accessor for SleepScoreModel.Bedtime(0);
  sub_269D0CAE0(v0 + *(v9 + 24), v8);
  if ((*(v2 + 48))(v8, 1, v1) == 1)
  {
    sub_269D9B370();
  }

  else
  {
    (*(v2 + 32))(v4, v8, v1);
    sub_269D9B370();
    sub_269D570AC(&qword_280351078, MEMORY[0x277CC9578]);
    sub_269D9A4E0();
    (*(v2 + 8))(v4, v1);
  }

  sub_269D97BA0();
  sub_269D570AC(&qword_280351470, MEMORY[0x277D625E8]);
  sub_269D9A4E0();
  v10 = v0 + *(v9 + 32);
  if (v10[8] == 1)
  {
    return sub_269D9B370();
  }

  v12 = *v10;
  sub_269D9B370();
  if ((v12 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  return MEMORY[0x26D6515D0](v13);
}

uint64_t SleepScoreModel.Interruptions.duration.setter(uint64_t result, uint64_t a2)
{
  *(v2 + 24) = result;
  *(v2 + 32) = a2;
  return result;
}

uint64_t SleepScoreModel.Interruptions.hash(into:)()
{
  v1 = v0[1];
  v2 = v0[2];
  MEMORY[0x26D6515B0](*v0);
  MEMORY[0x26D6515B0](v1);
  MEMORY[0x26D6515B0](v2);

  return sub_269D9B490();
}

uint64_t SleepScoreModel.Interruptions.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_269D9B350();
  MEMORY[0x26D6515B0](v1);
  MEMORY[0x26D6515B0](v2);
  MEMORY[0x26D6515B0](v3);
  sub_269D9B490();
  return sub_269D9B390();
}

uint64_t sub_269D55AD4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_269D9B350();
  MEMORY[0x26D6515B0](v1);
  MEMORY[0x26D6515B0](v2);
  MEMORY[0x26D6515B0](v3);
  sub_269D9B490();
  return sub_269D9B390();
}

uint64_t sub_269D55B5C()
{
  v1 = v0[1];
  v2 = v0[2];
  MEMORY[0x26D6515B0](*v0);
  MEMORY[0x26D6515B0](v1);
  MEMORY[0x26D6515B0](v2);

  return sub_269D9B490();
}

uint64_t sub_269D55BCC()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_269D9B350();
  MEMORY[0x26D6515B0](v1);
  MEMORY[0x26D6515B0](v2);
  MEMORY[0x26D6515B0](v3);
  sub_269D9B490();
  return sub_269D9B390();
}

uint64_t SleepScoreModel.hash(into:)()
{
  v1 = sub_269D97580();
  v32 = *(v1 - 8);
  v33 = v1;
  MEMORY[0x28223BE20](v1);
  v27 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269D57CEC(0, &qword_280C0BB60, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v31 = &v26 - v4;
  sub_269D9A330();
  sub_269D570AC(&qword_280351478, MEMORY[0x277CCB6A8]);
  sub_269D9A4E0();
  v5 = type metadata accessor for SleepScoreModel(0);
  sub_269D977A0();
  sub_269D570AC(&qword_280351480, MEMORY[0x277CC99E8]);
  sub_269D9A4E0();
  sub_269D97B80();
  sub_269D570AC(&qword_280351488, MEMORY[0x277D625B8]);
  sub_269D9A4E0();
  MEMORY[0x26D6515B0](*(v0 + *(v5 + 28)));
  v6 = (v0 + *(v5 + 32));
  v7 = *v6;
  v8 = v6[1];
  v10 = v6[8];
  v9 = v6[9];
  v28 = v10;
  v29 = v9;
  MEMORY[0x26D6515B0](v7);
  MEMORY[0x26D6515B0](v8);
  sub_269D9B490();
  v11 = v5;
  sub_269D9B490();
  v13 = v32;
  v12 = v33;
  sub_269D9B490();
  v14 = v30;
  MEMORY[0x26D6515B0](v28);
  MEMORY[0x26D6515B0](v29);
  v15 = (v14 + *(v11 + 36));
  MEMORY[0x26D6515B0](*v15);
  MEMORY[0x26D6515B0](v15[1]);
  v16 = v31;
  v17 = type metadata accessor for SleepScoreModel.Bedtime(0);
  sub_269D0CAE0(v15 + *(v17 + 24), v16);
  if ((*(v13 + 48))(v16, 1, v12) == 1)
  {
    sub_269D9B370();
  }

  else
  {
    v18 = v27;
    (*(v13 + 32))(v27, v16, v12);
    sub_269D9B370();
    sub_269D570AC(&qword_280351078, MEMORY[0x277CC9578]);
    sub_269D9A4E0();
    (*(v13 + 8))(v18, v12);
  }

  sub_269D97BA0();
  sub_269D570AC(&qword_280351470, MEMORY[0x277D625E8]);
  sub_269D9A4E0();
  v19 = v15 + *(v17 + 32);
  if (v19[8] == 1)
  {
    sub_269D9B370();
  }

  else
  {
    v20 = *v19;
    sub_269D9B370();
    if ((v20 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v21 = v20;
    }

    else
    {
      v21 = 0;
    }

    MEMORY[0x26D6515D0](v21);
  }

  v22 = (v14 + *(v11 + 40));
  v23 = v22[1];
  v24 = v22[2];
  MEMORY[0x26D6515B0](*v22);
  MEMORY[0x26D6515B0](v23);
  MEMORY[0x26D6515B0](v24);
  return sub_269D9B490();
}

uint64_t sub_269D56114(void (*a1)(_BYTE *))
{
  sub_269D9B350();
  a1(v3);
  return sub_269D9B390();
}

uint64_t sub_269D56174(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *))
{
  sub_269D9B350();
  a3(v5);
  return sub_269D9B390();
}

uint64_t sub_269D561D8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_269D9B350();
  a4(v6);
  return sub_269D9B390();
}

uint64_t SleepScoreModel.init(daySummary:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v119 = a2;
  v3 = MEMORY[0x277D83D88];
  sub_269D57CEC(0, &qword_280C0BB60, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v107 = &v81 - v5;
  v106 = type metadata accessor for SleepScoreModel.Bedtime(0);
  MEMORY[0x28223BE20](v106);
  v112 = (&v81 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v115 = sub_269D97AC0();
  v118 = *(v115 - 8);
  MEMORY[0x28223BE20](v115);
  v114 = &v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_269D97B80();
  v110 = *(v8 - 8);
  v111 = v8;
  MEMORY[0x28223BE20](v8);
  v117 = &v81 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_269D977A0();
  v108 = *(v10 - 8);
  v109 = v10;
  MEMORY[0x28223BE20](v10);
  v116 = &v81 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_269D9A330();
  v104 = *(v12 - 8);
  v105 = v12;
  MEMORY[0x28223BE20](v12);
  v113 = &v81 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269D57CEC(0, &qword_280C0B3D8, MEMORY[0x277D625F8], v3);
  MEMORY[0x28223BE20](v14 - 8);
  v103 = &v81 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v81 - v17;
  v19 = sub_269D97C10();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v81 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269D57CEC(0, &qword_280C0B3D0, MEMORY[0x277D62610], v3);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = &v81 - v24;
  v26 = sub_269D97CF0();
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = &v81 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269D97B20();
  if ((*(v27 + 48))(v25, 1, v26) == 1)
  {
    v30 = sub_269D97B40();
    (*(*(v30 - 8) + 8))(a1, v30);
    v31 = &qword_280C0B3D0;
    v32 = MEMORY[0x277D62610];
    v33 = v25;
LABEL_5:
    sub_269D576A0(v33, v31, v32);
    v36 = type metadata accessor for SleepScoreModel(0);
    return (*(*(v36 - 8) + 56))(v119, 1, 1, v36);
  }

  (*(v27 + 32))(v29, v25, v26);
  sub_269D97B30();
  v34 = *(v20 + 48);
  if (v34(v18, 1, v19) == 1)
  {
    v35 = sub_269D97B40();
    (*(*(v35 - 8) + 8))(a1, v35);
    (*(v27 + 8))(v29, v26);
    v31 = &qword_280C0B3D8;
    v32 = MEMORY[0x277D625F8];
    v33 = v18;
    goto LABEL_5;
  }

  v85 = v26;
  (*(v20 + 32))(v22, v18, v19);
  v100 = v20;
  v101 = v19;
  v84 = v34;
  sub_269D97AF0();
  sub_269D97B10();
  sub_269D97B00();
  v99 = sub_269D97CA0();
  v38 = *MEMORY[0x277D62590];
  v39 = v118;
  v87 = a1;
  v40 = v118 + 104;
  v102 = *(v118 + 104);
  v42 = v114;
  v41 = v115;
  v102(v114, v38, v115);
  v98 = sub_269D97CE0();
  v43 = *(v39 + 8);
  v43(v42, v41);
  v97 = sub_269D97CC0();
  sub_269D97BC0();
  v96 = sub_269D9B4A0();
  v95 = v44;
  sub_269D97BF0();
  v94 = sub_269D9B4A0();
  v93 = v45;
  v86 = v22;
  v46 = v43;
  sub_269D97BB0();
  v92 = sub_269D9B4A0();
  v91 = v47;
  v90 = sub_269D97C80();
  v89 = sub_269D97C90();
  v48 = *MEMORY[0x277D62588];
  v88 = v40;
  v102(v42, v48, v41);
  v49 = v87;
  v83 = sub_269D97CE0();
  v118 = v39 + 8;
  v43(v42, v41);
  v50 = v101;
  v82 = sub_269D97CD0();
  v51 = v103;
  sub_269D97B30();
  v52 = v49;
  if (v84(v51, 1, v50) == 1)
  {
    sub_269D576A0(v51, &qword_280C0B3D8, MEMORY[0x277D625F8]);
    v53 = 1;
    v54 = v107;
  }

  else
  {
    v54 = v107;
    sub_269D97BD0();
    (*(v100 + 8))(v51, v50);
    v53 = 0;
  }

  v55 = v85;
  v56 = sub_269D97580();
  (*(*(v56 - 8) + 56))(v54, v53, 1, v56);
  v57 = v106;
  v58 = v112;
  sub_269D97AE0();
  v59 = sub_269D97AD0();
  v61 = v60;
  v62 = v82;
  *v58 = v83;
  v58[1] = v62;
  sub_269D10F90(v54, v58 + *(v57 + 24));
  v63 = v58 + *(v57 + 32);
  *v63 = v59;
  v63[8] = v61 & 1;
  v64 = v114;
  v65 = v115;
  v102(v114, *MEMORY[0x277D62580], v115);
  v107 = sub_269D97CE0();
  v46(v64, v65);
  v118 = sub_269D97CB0();
  v66 = v86;
  v115 = sub_269D97BE0();
  sub_269D97C00();
  v67 = sub_269D9B4A0();
  v69 = v68;
  v70 = sub_269D97B40();
  (*(*(v70 - 8) + 8))(v52, v70);
  (*(v100 + 8))(v66, v101);
  (*(v27 + 8))(v29, v55);
  v71 = v119;
  (*(v104 + 32))(v119, v113, v105);
  v72 = type metadata accessor for SleepScoreModel(0);
  (*(v108 + 32))(v71 + v72[5], v116, v109);
  (*(v110 + 32))(v71 + v72[6], v117, v111);
  *(v71 + v72[7]) = v99;
  v73 = (v71 + v72[8]);
  v74 = v97;
  *v73 = v98;
  v73[1] = v74;
  v75 = v95;
  v73[2] = v96;
  v73[3] = v75;
  v76 = v93;
  v73[4] = v94;
  v73[5] = v76;
  v77 = v91;
  v73[6] = v92;
  v73[7] = v77;
  v78 = v89;
  v73[8] = v90;
  v73[9] = v78;
  sub_269D57710(v58, v71 + v72[9], type metadata accessor for SleepScoreModel.Bedtime);
  v79 = (v71 + v72[10]);
  v80 = v118;
  *v79 = v107;
  v79[1] = v80;
  v79[2] = v115;
  v79[3] = v67;
  v79[4] = v69;
  return (*(*(v72 - 1) + 56))(v71, 0, 1, v72);
}

uint64_t _s13SleepHealthUI0A10ScoreModelV0A8DurationV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v2 = 0;
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    v6 = a1[8];
    v7 = a1[9];
    v4 = a2[8];
    v3 = a2[9];
    if (sub_269D9B480() & 1) != 0 && (sub_269D9B480())
    {
      LODWORD(v2) = sub_269D9B480() & (v6 == v4);
      if (v7 == v3)
      {
        return v2;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

uint64_t _s13SleepHealthUI0A10ScoreModelV13InterruptionsV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1] && a1[2] == a2[2])
  {
    return sub_269D9B480();
  }

  else
  {
    return 0;
  }
}

BOOL _s13SleepHealthUI0A19ScoreComponentModelV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (sub_269D97AA0() & 1) != 0 && ((v4 = type metadata accessor for SleepScoreComponentModel(0), v5 = v4[5], v6 = *(a1 + v5), v7 = *(a1 + v5 + 8), v8 = (a2 + v5), v6 == *v8) ? (v9 = v7 == v8[1]) : (v9 = 0), (v9 || (sub_269D9B280()) && ((v10 = v4[6], v11 = *(a1 + v10), v12 = *(a1 + v10 + 8), v13 = (a2 + v10), v11 == *v13) ? (v14 = v12 == v13[1]) : (v14 = 0), (v14 || (sub_269D9B280()) && *(a1 + v4[7]) == *(a2 + v4[7]))))
  {
    return *(a1 + v4[8]) == *(a2 + v4[8]);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_269D56F98(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SleepScoreModel.Bedtime(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_269D5701C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SleepScoreModel.Bedtime(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_269D570AC(unint64_t *a1, void (*a2)(uint64_t))
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

BOOL _s13SleepHealthUI0A10ScoreModelV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  sub_269D9A330();
  sub_269D570AC(&qword_2803514D0, MEMORY[0x277CCB6A8]);
  result = 0;
  if (sub_269D9A560())
  {
    v4 = type metadata accessor for SleepScoreModel(0);
    if (MEMORY[0x26D64D950](a1 + v4[5], a2 + v4[5]))
    {
      sub_269D97B80();
      sub_269D570AC(&qword_2803514D8, MEMORY[0x277D625B8]);
      sub_269D9A790();
      sub_269D9A790();
      if (*&v17[0] == *&v16[0] && *(a1 + v4[7]) == *(a2 + v4[7]))
      {
        v5 = (a1 + v4[8]);
        v6 = v5[3];
        v17[2] = v5[2];
        v17[3] = v6;
        v17[4] = v5[4];
        v7 = v5[1];
        v17[0] = *v5;
        v17[1] = v7;
        v8 = (a2 + v4[8]);
        v9 = v8[3];
        v16[2] = v8[2];
        v16[3] = v9;
        v16[4] = v8[4];
        v10 = v8[1];
        v16[0] = *v8;
        v16[1] = v10;
        if (_s13SleepHealthUI0A10ScoreModelV0A8DurationV2eeoiySbAE_AEtFZ_0(v17, v16) & 1) != 0 && (_s13SleepHealthUI0A10ScoreModelV7BedtimeV2eeoiySbAE_AEtFZ_0((a1 + v4[9]), (a2 + v4[9])))
        {
          v11 = v4[10];
          v12 = a1 + v11;
          v13 = *(a1 + v11);
          v14 = (a2 + v11);
          if (v13 == *v14 && *(v12 + 8) == v14[1] && *(v12 + 16) == v14[2] && (sub_269D9B480() & 1) != 0)
          {
            return 1;
          }
        }
      }
    }
  }

  return result;
}

uint64_t _s13SleepHealthUI0A10ScoreModelV7BedtimeV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v4 = sub_269D97580();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269D57CEC(0, &qword_280C0BB60, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v28 - v9;
  sub_269D10DD0();
  MEMORY[0x28223BE20](v11);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  v15 = v12;
  v29 = type metadata accessor for SleepScoreModel.Bedtime(0);
  v16 = *(v29 + 24);
  v17 = *(v15 + 48);
  sub_269D0CAE0(a1 + v16, v14);
  sub_269D0CAE0(a2 + v16, &v14[v17]);
  v18 = *(v5 + 48);
  if (v18(v14, 1, v4) != 1)
  {
    sub_269D0CAE0(v14, v10);
    if (v18(&v14[v17], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v14[v17], v4);
      sub_269D570AC(&qword_2803509D8, MEMORY[0x277CC9578]);
      v19 = sub_269D9A560();
      v20 = *(v5 + 8);
      v20(v7, v4);
      v20(v10, v4);
      sub_269D576A0(v14, &qword_280C0BB60, MEMORY[0x277CC9578]);
      if ((v19 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_10;
    }

    (*(v5 + 8))(v10, v4);
LABEL_8:
    sub_269D10E50(v14);
    return 0;
  }

  if (v18(&v14[v17], 1, v4) != 1)
  {
    goto LABEL_8;
  }

  sub_269D576A0(v14, &qword_280C0BB60, MEMORY[0x277CC9578]);
LABEL_10:
  v21 = v29;
  if (MEMORY[0x26D64DDE0](a1 + *(v29 + 28), a2 + *(v29 + 28)))
  {
    v22 = *(v21 + 32);
    v23 = (a1 + v22);
    v24 = *(a1 + v22 + 8);
    v25 = (a2 + v22);
    v26 = *(a2 + v22 + 8);
    if (v24)
    {
      if (v26)
      {
        return 1;
      }
    }

    else
    {
      if (*v23 != *v25)
      {
        v26 = 1;
      }

      if ((v26 & 1) == 0)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_269D576A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_269D57CEC(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_269D57710(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_269D577C4()
{
  result = qword_280351498;
  if (!qword_280351498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280351498);
  }

  return result;
}

unint64_t sub_269D5781C()
{
  result = qword_2803514A0;
  if (!qword_2803514A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803514A0);
  }

  return result;
}

unint64_t sub_269D578BC()
{
  result = qword_2803514B0;
  if (!qword_2803514B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803514B0);
  }

  return result;
}

uint64_t sub_269D57980()
{
  result = sub_269D97AC0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_269D57A30()
{
  result = sub_269D9A330();
  if (v1 <= 0x3F)
  {
    result = sub_269D977A0();
    if (v2 <= 0x3F)
    {
      result = sub_269D97B80();
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for SleepScoreModel.Bedtime(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_269D57B04(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 80))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_269D57B24(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
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

  *(result + 80) = v3;
  return result;
}

void sub_269D57BAC()
{
  sub_269D57CEC(319, &qword_280C0BB60, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_269D97BA0();
    if (v1 <= 0x3F)
    {
      sub_269CBA0F8();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_269D57C88(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_269D57CA8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
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

  *(result + 40) = v3;
  return result;
}

void sub_269D57CEC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t SleepNotificationManager.__allocating_init(notificationCenter:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t SleepNotificationManager.AuthorizationStatus.hashValue.getter(unsigned __int8 a1)
{
  sub_269D9B350();
  MEMORY[0x26D6515B0](a1);
  return sub_269D9B390();
}

uint64_t sub_269D57E10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  sub_269C7FD00(0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_269D9A900();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  sub_269D9A8E0();

  v18 = sub_269D9A8D0();
  v19 = swift_allocObject();
  v20 = MEMORY[0x277D85700];
  v19[2] = v18;
  v19[3] = v20;
  v19[4] = v7;
  v19[5] = a1;
  v19[6] = a2;
  v19[7] = a3;
  v19[8] = a4;
  v19[9] = a5;
  v19[10] = a6;
  sub_269C79F94(0, 0, v16, &unk_269DA86B8, v19);
}

uint64_t sub_269D57F80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = v12;
  v8[8] = v13;
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  v8[9] = sub_269D9A8E0();
  v8[10] = sub_269D9A8D0();
  v9 = swift_task_alloc();
  v8[11] = v9;
  *v9 = v8;
  v9[1] = sub_269D58044;

  return sub_269D584A8();
}

uint64_t sub_269D58044(char a1)
{
  v2 = *v1;
  *(v2 + 120) = a1;

  v4 = sub_269D9A880();
  *(v2 + 96) = v4;
  *(v2 + 104) = v3;

  return MEMORY[0x2822009F8](sub_269D58190, v4, v3);
}

uint64_t sub_269D58190()
{
  if (*(v0 + 120))
  {
    v1 = 24;
    if (*(v0 + 120) != 1)
    {
      v1 = 40;
    }

    v2 = *(v0 + v1);

    v2(v3);
    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = swift_task_alloc();
    *(v0 + 112) = v6;
    *v6 = v0;
    v6[1] = sub_269D5828C;

    return sub_269D58B60();
  }
}

uint64_t sub_269D5828C(char a1)
{
  v4 = *v2;

  if (v1)
  {

    v5 = *(v4 + 96);
    v6 = *(v4 + 104);
    v7 = sub_269D58438;
  }

  else
  {
    *(v4 + 121) = a1 & 1;
    v5 = *(v4 + 96);
    v6 = *(v4 + 104);
    v7 = sub_269D583BC;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_269D583BC()
{
  v1 = *(v0 + 121);
  v2 = *(v0 + 56);

  v2(v1);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_269D58438()
{
  v1 = *(v0 + 56);

  v1(0);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_269D584A8()
{
  v1[20] = v0;
  v1[21] = *v0;
  sub_269D59614();
  v1[22] = v2;
  v1[23] = *(v2 - 8);
  v1[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_269D58590, 0, 0);
}

uint64_t sub_269D58590()
{
  v16 = v0;
  if (qword_28034D750 != -1)
  {
    swift_once();
  }

  v1 = sub_269D98250();
  v0[25] = __swift_project_value_buffer(v1, qword_280351238);
  v2 = sub_269D98230();
  v3 = sub_269D9AB80();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v15 = v5;
    *v4 = 136315138;
    v6 = sub_269D9B4D0();
    v8 = sub_269C2EACC(v6, v7, &v15);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_269C18000, v2, v3, "%s [TCC] requestAuthorizationStatus initiating", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x26D652460](v5, -1, -1);
    MEMORY[0x26D652460](v4, -1, -1);
  }

  v10 = v0[23];
  v9 = v0[24];
  v11 = v0[22];
  v12 = *(v0[20] + 16);
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_269D58850;
  swift_continuation_init();
  v0[17] = v11;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 14);
  sub_269D5967C();
  sub_269D9A890();
  (*(v10 + 32))(boxed_opaque_existential_1, v9, v11);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_269D58B00;
  v0[13] = &block_descriptor_11_0;
  [v12 getNotificationSettingsWithCompletionHandler_];
  (*(v10 + 8))(boxed_opaque_existential_1, v11);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_269D58850()
{

  return MEMORY[0x2822009F8](sub_269D58930, 0, 0);
}

uint64_t sub_269D58930()
{
  v17 = v0;
  v1 = v0[18];
  v2 = [v1 authorizationStatus];
  v3 = sub_269D98230();
  v4 = sub_269D9AB80();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v16 = v6;
    *v5 = 136315394;
    v7 = sub_269D9B4D0();
    v9 = sub_269C2EACC(v7, v8, &v16);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2080;
    v0[19] = v2;
    type metadata accessor for UNAuthorizationStatus(0);
    v10 = sub_269D9A660();
    v12 = sub_269C2EACC(v10, v11, &v16);

    *(v5 + 14) = v12;
    _os_log_impl(&dword_269C18000, v3, v4, "%s [TCC] requestAuthorizationStatus status: %s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D652460](v6, -1, -1);
    MEMORY[0x26D652460](v5, -1, -1);
  }

  v13 = sub_269D596C8(v2);

  v14 = v0[1];

  return v14(v13);
}

uint64_t sub_269D58B00(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1Tm((a1 + 32), *(a1 + 56));
  sub_269D59614();
  v3 = a2;
  return sub_269D9A8B0();
}

uint64_t sub_269D58B60()
{
  v1[22] = v0;
  v1[23] = *v0;
  sub_269D59594();
  v1[24] = v2;
  v1[25] = *(v2 - 8);
  v1[26] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_269D58C48, 0, 0);
}

uint64_t sub_269D58C48()
{
  v16 = v0;
  if (qword_28034D750 != -1)
  {
    swift_once();
  }

  v1 = sub_269D98250();
  v0[27] = __swift_project_value_buffer(v1, qword_280351238);
  v2 = sub_269D98230();
  v3 = sub_269D9AB80();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v15 = v5;
    *v4 = 136315138;
    v6 = sub_269D9B4D0();
    v8 = sub_269C2EACC(v6, v7, &v15);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_269C18000, v2, v3, "%s [TCC] requestAuthorization initiating", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x26D652460](v5, -1, -1);
    MEMORY[0x26D652460](v4, -1, -1);
  }

  v10 = v0[25];
  v9 = v0[26];
  v11 = v0[24];
  v12 = *(v0[22] + 16);
  v0[2] = v0;
  v0[7] = v0 + 29;
  v0[3] = sub_269D58F0C;
  swift_continuation_init();
  v0[17] = v11;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 14);
  sub_269C80B44();
  sub_269D9A890();
  (*(v10 + 32))(boxed_opaque_existential_1, v9, v11);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_269D593D0;
  v0[13] = &block_descriptor_34;
  [v12 requestAuthorizationWithOptions:39 completionHandler:v0 + 10];
  (*(v10 + 8))(boxed_opaque_existential_1, v11);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_269D58F0C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 224) = v1;
  if (v1)
  {
    v2 = sub_269D5917C;
  }

  else
  {
    v2 = sub_269D5901C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_269D5901C()
{
  v12 = v0;
  v1 = *(v0 + 232);
  v2 = sub_269D98230();
  v3 = sub_269D9AB80();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136315394;
    v6 = sub_269D9B4D0();
    v8 = sub_269C2EACC(v6, v7, &v11);

    *(v4 + 4) = v8;
    *(v4 + 12) = 1024;
    *(v4 + 14) = v1;
    _os_log_impl(&dword_269C18000, v2, v3, "%s [TCC] requestAuthorization granted: %{BOOL}d", v4, 0x12u);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x26D652460](v5, -1, -1);
    MEMORY[0x26D652460](v4, -1, -1);
  }

  v9 = *(v0 + 8);

  return v9(v1);
}

uint64_t sub_269D5917C()
{
  v19 = v0;
  v1 = v0[28];
  swift_willThrow();
  v2 = v1;
  v3 = sub_269D98230();
  v4 = sub_269D9AB60();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v18[0] = v6;
    *v5 = 136315394;
    v7 = sub_269D9B4D0();
    v9 = sub_269C2EACC(v7, v8, v18);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2080;
    swift_getErrorValue();
    v10 = *(v0[19] - 8);
    v11 = swift_task_alloc();
    (*(v10 + 16))(v11);
    v12 = sub_269D9A660();
    v14 = v13;

    v15 = sub_269C2EACC(v12, v14, v18);

    *(v5 + 14) = v15;
    _os_log_impl(&dword_269C18000, v3, v4, "%s [TCC] requestAuthorization error: %s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D652460](v6, -1, -1);
    MEMORY[0x26D652460](v5, -1, -1);
  }

  swift_willThrow();

  v16 = v0[1];

  return v16(0);
}

void sub_269D593D0(uint64_t a1, uint64_t a2, void *a3)
{
  __swift_project_boxed_opaque_existential_1Tm((a1 + 32), *(a1 + 56));
  sub_269D59594();
  if (a3)
  {
    v4 = a3;
    sub_269D9A8A0();
  }

  else
  {
    sub_269D9A8B0();
  }
}

uint64_t SleepNotificationManager.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

unint64_t sub_269D594BC()
{
  result = qword_2803514E8;
  if (!qword_2803514E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803514E8);
  }

  return result;
}

void sub_269D59594()
{
  if (!qword_2803514F0)
  {
    sub_269C80B44();
    v0 = sub_269D9A8C0();
    if (!v1)
    {
      atomic_store(v0, &qword_2803514F0);
    }
  }
}

void sub_269D59614()
{
  if (!qword_2803514F8)
  {
    sub_269D5967C();
    v0 = sub_269D9A8C0();
    if (!v1)
    {
      atomic_store(v0, &qword_2803514F8);
    }
  }
}

unint64_t sub_269D5967C()
{
  result = qword_280351500;
  if (!qword_280351500)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280351500);
  }

  return result;
}

unint64_t sub_269D596C8(unint64_t a1)
{
  if (a1 < 5)
  {
    return 0x101010200uLL >> (8 * a1);
  }

  if (qword_28034D750 != -1)
  {
    swift_once();
  }

  v2 = sub_269D98250();
  __swift_project_value_buffer(v2, qword_280351238);
  v3 = sub_269D98230();
  v4 = sub_269D9AB70();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315394;
    *(v5 + 4) = sub_269C2EACC(0xD000000000000013, 0x8000000269DAA400, &v11);
    *(v5 + 12) = 2080;
    type metadata accessor for UNAuthorizationStatus(0);
    v7 = sub_269D9A660();
    v9 = sub_269C2EACC(v7, v8, &v11);

    *(v5 + 14) = v9;
    _os_log_impl(&dword_269C18000, v3, v4, "%s [TCC] authorizationStatus unknown: %s", v5, 0x16u);
    v1 = 2;
    swift_arrayDestroy();
    MEMORY[0x26D652460](v6, -1, -1);
    MEMORY[0x26D652460](v5, -1, -1);
  }

  else
  {

    return 2;
  }

  return v1;
}

uint64_t sub_269D59894()
{
  sub_269D9B350();
  sub_269D9A6A0();

  return sub_269D9B390();
}

uint64_t sub_269D59980()
{
  sub_269D9B350();
  sub_269D9A6A0();

  return sub_269D9B390();
}

SleepHealthUI::ArticleIdentifier_optional __swiftcall ArticleIdentifier.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_269D9B1C0();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t ArticleIdentifier.rawValue.getter()
{
  v1 = *v0;
  v2 = 0xD00000000000002DLL;
  if (v1 != 4)
  {
    v2 = 0xD000000000000021;
  }

  if (v1 == 3)
  {
    v3 = 0xD000000000000021;
  }

  else
  {
    v3 = v2;
  }

  if (v1 == 1)
  {
    v4 = 0xD000000000000026;
  }

  else
  {
    v4 = 0xD000000000000022;
  }

  if (!*v0)
  {
    v4 = 0xD000000000000023;
  }

  if (*v0 <= 2u)
  {
    return v4;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_269D59B84()
{
  result = qword_280351508;
  if (!qword_280351508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280351508);
  }

  return result;
}

uint64_t sub_269D59BE0()
{
  sub_269D9A6A0();
}

void sub_269D59CC8(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = ".Sleep.sleepStages";
  v4 = ".Sleep.sleepApnea";
  v5 = 0xD00000000000002DLL;
  if (v2 != 4)
  {
    v5 = 0xD000000000000021;
    v4 = ".Sleep.sleepApneaNotification";
  }

  if (v2 == 3)
  {
    v6 = 0xD000000000000021;
  }

  else
  {
    v6 = v5;
  }

  if (v2 != 3)
  {
    v3 = v4;
  }

  v7 = ".Sleep.sleepHygiene";
  if (v2 == 1)
  {
    v8 = 0xD000000000000026;
  }

  else
  {
    v8 = 0xD000000000000022;
  }

  if (v2 != 1)
  {
    v7 = ".Sleep.sleepImportance";
  }

  if (*v1)
  {
    v9 = v7;
  }

  else
  {
    v8 = 0xD000000000000023;
    v9 = "oarding";
  }

  if (*v1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v8 = v6;
    v10 = v3;
  }

  *a1 = v8;
  a1[1] = v10 | 0x8000000000000000;
}

unint64_t sub_269D59D74()
{
  result = qword_280351510;
  if (!qword_280351510)
  {
    sub_269D59DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280351510);
  }

  return result;
}

void sub_269D59DCC()
{
  if (!qword_280351518)
  {
    v0 = sub_269D9A840();
    if (!v1)
    {
      atomic_store(v0, &qword_280351518);
    }
  }
}

id ScheduleOccurrenceHeaderView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id sub_269D59EA0()
{
  v1 = OBJC_IVAR____TtC13SleepHealthUI28ScheduleOccurrenceHeaderView____lazy_storage___titleLabel;
  v2 = *(v0 + OBJC_IVAR____TtC13SleepHealthUI28ScheduleOccurrenceHeaderView____lazy_storage___titleLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC13SleepHealthUI28ScheduleOccurrenceHeaderView____lazy_storage___titleLabel);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
    [v4 setNumberOfLines_];
    v5 = [objc_opt_self() labelColor];
    [v4 setTextColor_];

    v6 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

char *ScheduleOccurrenceHeaderView.init(frame:)(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC13SleepHealthUI28ScheduleOccurrenceHeaderView____lazy_storage___titleLabel] = 0;
  v19.receiver = v4;
  v19.super_class = type metadata accessor for ScheduleOccurrenceHeaderView();
  v9 = objc_msgSendSuper2(&v19, sel_initWithFrame_, a1, a2, a3, a4);
  v10 = sub_269D59EA0();
  [v9 addSubview_];

  sub_269D5A460();
  v11 = *&v9[OBJC_IVAR____TtC13SleepHealthUI28ScheduleOccurrenceHeaderView____lazy_storage___titleLabel];
  sub_269C1B0B8(0, &qword_28034E5F0);
  v12 = *MEMORY[0x277D76A20];
  v13 = v11;
  v14 = static UIFont.preferredFont(for:traits:rounded:short:loose:smallCaps:monospaced:weight:)(v12, 32770, 0, 0, 0, 0, 0, 0, 1);
  [v13 setFont_];

  sub_269C57F8C();
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_269D9EBE0;
  v16 = sub_269D983D0();
  v17 = MEMORY[0x277D74DB8];
  *(v15 + 32) = v16;
  *(v15 + 40) = v17;
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_269C30054();
  sub_269D9AD50();

  swift_unknownObjectRelease();

  return v9;
}

void sub_269D5A184()
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = sub_269D59EA0();
    sub_269C1B0B8(0, &qword_28034E5F0);
    v3 = static UIFont.preferredFont(for:traits:rounded:short:loose:smallCaps:monospaced:weight:)(*MEMORY[0x277D76A20], 32770, 0, 0, 0, 0, 0, 0, 1);
    [v2 setFont_];
  }

  else
  {
  }
}

void sub_269D5A460()
{
  v1 = sub_269D59EA0();
  [v1 setTranslatesAutoresizingMaskIntoConstraints_];

  v2 = objc_opt_self();
  sub_269C4E764();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_269DA0E10;
  v4 = OBJC_IVAR____TtC13SleepHealthUI28ScheduleOccurrenceHeaderView____lazy_storage___titleLabel;
  v5 = [*&v0[OBJC_IVAR____TtC13SleepHealthUI28ScheduleOccurrenceHeaderView____lazy_storage___titleLabel] topAnchor];
  v6 = [v0 topAnchor];
  v7 = [v5 constraintEqualToAnchor:v6 constant:12.0];

  *(v3 + 32) = v7;
  v8 = [v0 bottomAnchor];
  v9 = [*&v0[v4] lastBaselineAnchor];
  v10 = [v8 constraintEqualToAnchor:v9 constant:12.0];

  *(v3 + 40) = v10;
  v11 = [*&v0[v4] leadingAnchor];
  v12 = [v0 leadingAnchor];
  v13 = [v11 constraintEqualToAnchor:v12 constant:2.0];

  *(v3 + 48) = v13;
  v14 = [v0 trailingAnchor];
  v15 = [*&v0[v4] trailingAnchor];
  v16 = [v14 constraintEqualToAnchor:v15 constant:2.0];

  *(v3 + 56) = v16;
  sub_269C1B0B8(0, &qword_28034E1C0);
  v17 = sub_269D9A7D0();

  [v2 activateConstraints_];
}

id ScheduleOccurrenceHeaderView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ScheduleOccurrenceHeaderView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_269D5A744()
{
  v1 = v0;
  v42 = *v0;
  v2 = type metadata accessor for Alarm();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v38 - v7;
  sub_269D5C1E0(0, &qword_28034EA50, type metadata accessor for Alarm);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v38 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v38 - v16;
  if (qword_28034D738 != -1)
  {
    swift_once();
  }

  v18 = sub_269D98250();
  __swift_project_value_buffer(v18, qword_280351208);

  v19 = sub_269D98230();
  v20 = sub_269D9AB80();

  v43 = v20;
  v21 = os_log_type_enabled(v19, v20);
  v22 = &unk_28035E000;
  if (v21)
  {
    v39 = v5;
    v40 = v8;
    v23 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v44[0] = v41;
    *v23 = 136446466;
    v24 = sub_269D9B4D0();
    v25 = v2;
    v27 = sub_269C2EACC(v24, v26, v44);

    *(v23 + 4) = v27;
    *(v23 + 12) = 2082;
    v28 = OBJC_IVAR____TtC13SleepHealthUI13AlarmProvider_alarm;
    swift_beginAccess();
    sub_269C5A9AC(v1 + v28, v17);
    sub_269C5A9AC(v17, v14);
    if ((*(v3 + 48))(v14, 1, v25) == 1)
    {
      v29 = 0xE300000000000000;
      v30 = 7104878;
    }

    else
    {
      v31 = v40;
      sub_269C80C90(v14, v40);
      sub_269D5C300(v31, v39);
      v30 = sub_269D9A660();
      v29 = v32;
      sub_269D5C364(v31);
    }

    sub_269C5AA40(v17);
    v33 = sub_269C2EACC(v30, v29, v44);

    *(v23 + 14) = v33;
    _os_log_impl(&dword_269C18000, v19, v43, "[%{public}s] upcoming alarm did change: %{public}s", v23, 0x16u);
    v34 = v41;
    swift_arrayDestroy();
    MEMORY[0x26D652460](v34, -1, -1);
    MEMORY[0x26D652460](v23, -1, -1);

    v22 = &unk_28035E000;
  }

  else
  {
  }

  v35 = v1[2];
  v36 = v22[265];
  swift_beginAccess();
  sub_269C5A9AC(v1 + v36, v11);
  v35(v11);
  return sub_269C5AA40(v11);
}

void sub_269D5AB54(uint64_t a1)
{
  v2 = sub_269D97050();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28034D738 != -1)
  {
    swift_once();
  }

  v6 = sub_269D98250();
  __swift_project_value_buffer(v6, qword_280351208);
  (*(v3 + 16))(v5, a1, v2);
  v7 = sub_269D98230();
  v8 = sub_269D9AB80();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v19 = v10;
    *v9 = 136446466;
    v11 = sub_269D9B4D0();
    v13 = sub_269C2EACC(v11, v12, &v19);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2080;
    sub_269D5C094();
    v14 = sub_269D9B230();
    v16 = v15;
    (*(v3 + 8))(v5, v2);
    v17 = sub_269C2EACC(v14, v16, &v19);

    *(v9 + 14) = v17;
    _os_log_impl(&dword_269C18000, v7, v8, "[%{public}s] received alarm notification: %s, privacy: .public)", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D652460](v10, -1, -1);
    MEMORY[0x26D652460](v9, -1, -1);
  }

  else
  {

    (*(v3 + 8))(v5, v2);
  }

  sub_269D5B5D8();
}

void sub_269D5AF64(uint64_t a1)
{
  if (qword_28034D738 != -1)
  {
    swift_once();
  }

  v2 = sub_269D98250();
  __swift_project_value_buffer(v2, qword_280351208);
  v3 = sub_269D98230();
  v4 = sub_269D9AB80();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136446210;
    v7 = sub_269D9B4D0();
    v9 = sub_269C2EACC(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_269C18000, v3, v4, "[%{public}s] dismissing active alarm", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x26D652460](v6, -1, -1);
    MEMORY[0x26D652460](v5, -1, -1);
  }

  v10 = type metadata accessor for Alarm();
  sub_269C86828(*(a1 + *(v10 + 20)));
}

uint64_t sub_269D5B100()
{
  v1 = v0;
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_28034D738 != -1)
  {
    swift_once();
  }

  v2 = sub_269D98250();
  __swift_project_value_buffer(v2, qword_280351208);
  v3 = sub_269D98230();
  v4 = sub_269D9AB80();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v16 = v6;
    *v5 = 136446210;
    v7 = sub_269D9B4D0();
    v9 = sub_269C2EACC(v7, v8, &v16);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_269C18000, v3, v4, "[%{public}s] deinit", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x26D652460](v6, -1, -1);
    MEMORY[0x26D652460](v5, -1, -1);
  }

  v10 = objc_opt_self();
  v11 = [v10 defaultCenter];
  v12 = OBJC_IVAR____TtC13SleepHealthUI13AlarmProvider_alarmManager;
  [v11 removeObserver:v1 name:*MEMORY[0x277D29598] object:*(v1 + OBJC_IVAR____TtC13SleepHealthUI13AlarmProvider_alarmManager)];

  v13 = [v10 defaultCenter];
  [v13 removeObserver:v1 name:*MEMORY[0x277D295C8] object:*(v1 + v12)];

  v14 = [v10 defaultCenter];
  [v14 removeObserver:v1 name:*MEMORY[0x277D295D8] object:*(v1 + v12)];

  sub_269C5AA40(v1 + OBJC_IVAR____TtC13SleepHealthUI13AlarmProvider_alarm);

  return v1;
}

uint64_t sub_269D5B3C4()
{
  sub_269D5B100();

  return swift_deallocClassInstance();
}

uint64_t sub_269D5B428()
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  v1 = sub_269D9A880();
  v3 = v2;

  return MEMORY[0x2822009B0](v0, sub_269D5B3C4, v1, v3, 0);
}

uint64_t type metadata accessor for AlarmProvider()
{
  result = qword_280351530;
  if (!qword_280351530)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_269D5B510()
{
  sub_269D5C1E0(319, &qword_28034EA50, type metadata accessor for Alarm);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_269D5B5D8()
{
  v1 = v0;
  v2 = *v0;
  if (qword_28034D738 != -1)
  {
    swift_once();
  }

  v3 = sub_269D98250();
  __swift_project_value_buffer(v3, qword_280351208);
  v4 = sub_269D98230();
  v5 = sub_269D9AB80();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v16[0] = v7;
    *v6 = 136446210;
    v8 = sub_269D9B4D0();
    v10 = sub_269C2EACC(v8, v9, v16);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_269C18000, v4, v5, "[%{public}s] update", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x26D652460](v7, -1, -1);
    MEMORY[0x26D652460](v6, -1, -1);
  }

  v11 = [*(v1 + OBJC_IVAR____TtC13SleepHealthUI13AlarmProvider_alarmManager) nextAlarm];
  if (v11)
  {
    v12 = v11;
    v13 = swift_allocObject();
    *(v13 + 16) = v1;
    *(v13 + 24) = v2;
    v16[4] = sub_269D5C0EC;
    v16[5] = v13;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 1107296256;
    v16[2] = sub_269C4D5F0;
    v16[3] = &block_descriptor_35;
    v14 = _Block_copy(v16);

    v15 = [v12 addCompletionBlock_];
    _Block_release(v14);
  }
}

uint64_t sub_269D5B838(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  sub_269D5C1E0(0, &unk_280351880, MEMORY[0x277D85720]);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v36 - v9;
  if (qword_28034D738 != -1)
  {
    swift_once();
  }

  v11 = sub_269D98250();
  __swift_project_value_buffer(v11, qword_280351208);
  v12 = a1;
  v13 = sub_269D98230();
  v14 = sub_269D9AB80();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v37 = a1;
    v16 = v15;
    v17 = swift_slowAlloc();
    v39 = v17;
    *v16 = 136446466;
    v18 = sub_269D9B4D0();
    v20 = sub_269C2EACC(v18, v19, &v39);
    v36 = a3;
    v21 = a2;
    v22 = a4;
    v23 = v20;

    *(v16 + 4) = v23;
    *(v16 + 12) = 2082;
    v38 = v37;
    sub_269D5C1E0(0, &qword_280351548, sub_269D5C234);
    v24 = v12;
    v25 = sub_269D9A660();
    v27 = sub_269C2EACC(v25, v26, &v39);

    *(v16 + 14) = v27;
    a4 = v22;
    a2 = v21;
    a3 = v36;
    _os_log_impl(&dword_269C18000, v13, v14, "[%{public}s] next alarm: %{public}s", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D652460](v17, -1, -1);
    v28 = v16;
    a1 = v37;
    MEMORY[0x26D652460](v28, -1, -1);
  }

  v29 = sub_269D9A900();
  (*(*(v29 - 8) + 56))(v10, 1, 1, v29);
  sub_269D9A8E0();
  v30 = v12;

  v31 = a2;
  v32 = sub_269D9A8D0();
  v33 = swift_allocObject();
  v34 = MEMORY[0x277D85700];
  v33[2] = v32;
  v33[3] = v34;
  v33[4] = a1;
  v33[5] = a3;
  v33[6] = a2;
  v33[7] = a4;
  sub_269C79F94(0, 0, v10, &unk_269DAA5A8, v33);
}